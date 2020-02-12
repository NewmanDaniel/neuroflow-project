from django.db import models
from django.contrib.auth.models import User
from datetime import date
from scipy import stats

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

    def calculate_longest_streak(mood_owner):
        """
        Calculate the longest streak based off the mood_owner's moods
        """
        moods = Mood.objects.filter(mood_owner=mood_owner).order_by('-log_date')
        moods_length = len(moods)
        overall_streak_counter = 0
        local_streak_counter = 1
        starting_position = 1

        if moods_length > 1:
            for i in range(starting_position, moods_length):
                delta = moods[i-1].log_date - moods[i].log_date
                if delta.days == 1:
                    local_streak_counter += 1
                    if local_streak_counter > overall_streak_counter:
                        overall_streak_counter = local_streak_counter
                else:
                    if local_streak_counter > overall_streak_counter:
                        overall_streak_counter = local_streak_counter
                    local_streak_counter = 1

        return overall_streak_counter

    def get_streak_from_date(mood_owner, log_date):
        """
        Gets the current streak for a mood_owner, based off the given date.
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

    def calculate_streak_percentile(mood_owner):
        """
        Using the specified mood_owner's longest streak, compares the mood owner longest streak
        against other mood owners' longest streaks and places them in a percentile


        """
        # Get the mood owner's longest streaks
        if not User.objects.filter(id=mood_owner):
            raise Exception('mood_owner must match a user id in the database')

        mood_owner_longest_streak = Mood.calculate_longest_streak(mood_owner)

        # Get the other user's longest streaks to compare against
        other_users_longest_streaks = []
        other_users = User.objects.filter(is_staff=False).exclude(id=mood_owner)
        for user in other_users:
            other_users_longest_streaks.append(Mood.calculate_longest_streak(user.id))

        other_users_longest_streaks.sort()
        percentile = stats.percentileofscore(other_users_longest_streaks, mood_owner_longest_streak)

        return percentile
