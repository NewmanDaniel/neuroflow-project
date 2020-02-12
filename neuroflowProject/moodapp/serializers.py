from django.contrib.auth.models import User, Group
from rest_framework import serializers
from moodapp.models import Mood

class MoodSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Mood
        fields = ['log_date', 'mood_rating']

    def create(self, validated_data):
        request = self.context.get("request")
        mood = Mood.objects.create(
            log_date=validated_data['log_date'],
            mood_rating=validated_data['mood_rating'],
            mood_owner=request.user
        )
        mood.save()
        return mood

class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = User
        fields = ['url', 'username', 'email', 'groups']

class GroupSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Group
        fields = ['url', 'name']
