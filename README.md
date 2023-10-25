# to_do_flutter_02
 To Do List

This Flutter application is designed to manage a to-do list, allowing users to add, check/uncheck, and delete tasks. The application employs Hive, a lightweight NoSQL database, to store and retrieve to-do list data efficiently.

1. **Main Dart File**:
   - The main Dart file initializes Hive and opens a Hive box named 'mybox' to store to-do list data.
   - It sets up the app's basic structure using the `MainApp` widget.

2. **MainApp Widget**:
   - `MainApp` is the root widget of the application.
   - It configures the app's theme and design with a pink primary color and a title of "To Do List."
   - The home page of the app is set to the `HomePage` widget.

3. **HomePage Widget**:
   - `HomePage` is a stateful widget representing the home page of the app, where the to-do list is managed.
   - It initializes the Hive box and a `ToDoDataBase` instance to manage to-do list data.
   - In the `initState` method, it checks whether this is the first time the app is opened. If so, it creates initial data; otherwise, it loads existing data from the database.
   - The `build` method creates the app's user interface, which includes an app bar, a button for adding new tasks, and a list view for displaying to-do list items.
   - The to-do list items are constructed using the `ToDoList` widget.

4. **ToDoList Widget**:
   - `ToDoList` is a stateless widget used to represent individual to-do list items.
   - It displays the task name, a checkbox for task completion, and a sliding action to delete the task.
   - Users can mark tasks as complete, and tasks with completed status are displayed with a strikethrough text style.
   - The widget is designed to be responsive to different screen sizes.

5. **DialogBox Widget**:
   - `DialogBox` is a stateless widget used to create a dialog box for adding new tasks.
   - It includes a text input field for entering a new task and "Save" and "Cancel" buttons for user interaction.
   - Callback functions, `onSave` and `onCancel`, allow users to save or cancel the addition of a new task.

6. **Button Widget**:
   - `Button` is a customizable stateless widget used to create buttons throughout the app's user interface.
   - It accepts parameters for button text and an `onPressed` callback function.
   - Buttons are styled based on the app's theme, with the text displayed in white.

7. **ToDoDataBase Class**:
   - The `ToDoDataBase` class manages the to-do list data and its interaction with the Hive database.
   - It contains a to-do list represented as a list of tasks, with each task consisting of a name and a completion status.
   - Methods are provided for creating initial data, loading data from the database, and updating the database with changes made to the to-do list.

In summary, this Flutter application uses Hive for efficient data storage and management of a to-do list. Users can add, mark as complete, and delete tasks, and the app offers a user-friendly interface with responsive design for different screen sizes.
