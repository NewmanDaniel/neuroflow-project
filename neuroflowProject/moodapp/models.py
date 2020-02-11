from django.db import models
from django.contrib.auth.models import User
from datetime import date

# Create your models here.

class Mood(models.Model):
    """
    Represents a mood rating logged by the user on a given day.

    log_date: the date the user logged their mood rating.
    """
    def __str__(self):
        return str(self.mood_owner) + " " + str(self.log_date)  + ": " + str(self.mood_rating)


    log_date = models.DateField(null=False, blank=False)
    mood_rating = models.IntegerField(null=False, blank=False)
    mood_owner = models.ForeignKey(User, null=False, on_delete=models.CASCADE)

    def get_streak_from_date(mood_owner, log_date):
        """
        Gets the current streak for a mood_owner, based off the current date today.
        """
        if type(log_date).__name__ != 'date':
            raise Exception('The log_date parameter must be a date type')

        moods = Mood.objects.filter(mood_owner=mood_owner).order_by('-log_date')
        moods_length = len(moods)
        streak_counter = 0

        # Find the mood matching the date
        matching_mood = None
        starting_position = None
        for i, mood in enumerate(moods):
            if mood.log_date == log_date:
                matching_mood = mood
                starting_position = i

        # return a streak of 0 if the matching mood is not found
        if not matching_mood:
            return 0

        # Calculate the streak
        streak_counter = 1
        for i in range(starting_position + 1, moods_length):
            delta = moods[i-1].log_date - moods[i].log_date
            if delta.days == 1:
                streak_counter += 1
            else:
                break
        return streak_counter


