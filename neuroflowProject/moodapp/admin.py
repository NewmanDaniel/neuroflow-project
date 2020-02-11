from django.contrib import admin
from moodapp.models import Mood

# Register your models here.
@admin.register(Mood)
class MoodAdmin(admin.ModelAdmin):
    ordering = ['-log_date']
