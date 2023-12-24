# hw4

How to run project:
1. Open FlutLab.io: Visit FlutLab.io in your web browser.
2. Create a New Project: Create a new Flutter project in FlutLab.io.
3. Import Code: Replace the default project code with the code from the cloned repository.
4. Run the Project: Click on the "Run" button in FlutLab.io to launch the project in the emulator or web preview.


Welcome Screen:
  Functionality: Displays a welcome screen with a tutorial.
  Implementation: Utilizes shared preferences to track the first launch and determine whether to display the tutorial.

Second Screen:
  Functionality: Retrieves user information from an API, displays a list, and allows fetching more users and storing selected users into a local SQLite database.
  Implementation: Uses HTTP package to fetch user data, integrates SQLite for local storage, and provides navigation to the Third Screen.

Third Screen:
  Functionality: Displays a list of users fetched from the local SQLite database.
  Implementation: Utilizes the DatabaseHelper class to retrieve user data stored in SQLite and displays it in a list.

DatabaseHelper:
  Functionality: Manages SQLite database operations.
  Implementation: Initializes the database, provides methods for inserting and retrieving data.

User Model:
  Functionality: Represents a user object with specific attributes.
  Implementation: Defines the structure of user data retrieved from the API and stored in the database.
