# time_tracker

A new Flutter project.
The application you're describing requires several features to be implemented in order to follow the clean architecture principles. Let's break it down:

## Calendar Screen Feature

This is the first screen the user sees, where they can select a date.

1. **Display Calendar UseCase**
   
    This feature retrieves the calendar data and displays it to the user. It might fetch data such as which dates have records, and handle the visual display of the calendar itself.

2. **Select Date UseCase**
   
    When a user taps on a date, this feature is responsible for capturing that selection and triggering the transition to the Day screen for the selected date.

## Day Screen Feature

This screen shows the user the hours of the selected date.

1. **Display Day UseCase**
   
    This feature retrieves the data for the selected date and displays it in an hourly format. This might include data such as which hours already have records.

2. **Select Hour UseCase**

    This feature captures the user's selection of an hour and triggers the transition to the Hour screen for the selected hour.

## Hour Screen Feature

On this screen, the user can set a title and category for the selected hour.

1. **Display Hour UseCase**
   
    This feature displays the current data for the selected hour, if any. This might include an existing title or category.

2. **Update Hour UseCase**

    This feature captures the user's input to set a title and category for the selected hour and updates the record accordingly.

3. **Save Hour UseCase**
   
    This feature is responsible for persisting the user's input. This might involve validating the input, updating the local data source, and possibly syncing with a remote data source.

So in total, you would have seven features for these three screens according to clean architecture. Of course, the exact number might vary depending on your specific requirements and how you choose to divide the responsibilities among your features. For instance, you might choose to combine the display and selection features for the Calendar and Day screens, which would reduce the total number of features.