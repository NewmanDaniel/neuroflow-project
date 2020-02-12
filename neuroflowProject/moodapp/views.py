from django.shortcuts import render
from datetime import date
from collections import OrderedDict

from django.contrib.auth.models import User, Group
from rest_framework import viewsets
from moodapp.models import Mood
from moodapp.serializers import MoodSerializer, UserSerializer, GroupSerializer
from rest_framework.response import Response


class MoodViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows a logged in user to view their moods
    """
    serializer_class = MoodSerializer

    def get_queryset(self):
        user = self.request.user
        return Mood.objects.filter(mood_owner=user.id)

    def list(self, request):
        user = self.request.user
        queryset = Mood.objects.filter(mood_owner=user.id).order_by('-log_date')
        if not queryset:
            return Response([])

        serializer_context = {
            'request':request
        }
        serializer = MoodSerializer(queryset, many=True, context=serializer_context)

        # Inject  current streak and streak percentile into the data
        streak_dict = {
            'current-streak':Mood.get_streak_from_date(user.id, date.today()),
        }
        streak_percentile = Mood.calculate_streak_percentile(user.id)
        if streak_percentile >= 50:
            streak_dict['streak-percentile'] = streak_percentile

        streak_dict = OrderedDict(streak_dict)

        serialized_data = serializer.data
        serialized_data.insert(0, streak_dict)

        return Response(serialized_data)

class UserViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = User.objects.all().order_by('-date_joined')
    serializer_class = UserSerializer

class GroupViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = Group.objects.all()
    serializer_class = GroupSerializer

# Create your views here.
