
# Links
Link to deployed site:
Link to the API repository:
Link to the deployed API:

# Application Description
Tech. PathLab app is a single-page application which allows users  (Technicians & Technologists) to search for Patients Pathology tests and  review them. Once signed up and authenticated, users can view Patients and create new patient entries.
My initial idea for this project come from the software we use in Pathology Labaoratory and thinking about how to make it better for users and specifically for Patients safety.
Users can search Patients from the database. The backend was built using Express.js and MongoDB. The front-end was built using React.js and Axios for http requests (the requests communicate with the back end and third-party API).

# Technologies Used

Frontend     | Backend    |
| ------------- |------------|
| Javascript    | Node.js    |
| HTML          | Express.js |
| jQuery        | MongoDB    |
| CSS3/SCSS     | Heroku     |
| React         | Material UI|
|  Git/GitHub   |      API   |


#### Catalog of routes
| HTTP   | Paths          |
| ------ |----------------|
| GET    | /patients      |
| POST   | /patients/:id  |
| PATCH  | /patients/:id  |
| DELETE | /patients/:id  |


# Setup and Installation (Express Api)

1-Download the express api template.
2-Move the .zip file to your sei/projects/ directory and Unzip it ( use the mv command line to move it to the sei/projects/ directory.)
3-Rename the directory from express-api-template -> capstone-project-api.
4-Empty README.md and fill with my own content.
5-Move into the new project and git init.
5-Replace all instances of 'express-api-template' with my app name.
6-Install dependencies with npm install.
7-Ensure that you have nodemon installed by running npm install -g nodemon.
8-Ensure the API is functioning properly by running npm run server.
9-Once everything is working, make an initial commit.
10- Make at least one commit every day as part of the project requirements
11-Follow the steps in express-api-deployment-guide when it is time to deploy

I set up an Express.js/MongoDB back-end , connected to each other via a one-to-many relationship. I also ensured that each user is able to view and edit only patients they work on their tests by adding an "editable" parameter to Patients.
The front end includes respective components for the main page, header with navigation, patient search, edit/create forms, and pages allowing to view collections/individual patient entries.

'The most important file for understanding the structure of the template is server.js. This is where the actual Express app object is created, where the middlewares and routes are registered, and more. To register a routefile, follow the pattern established here with exampleRoutes and userRoutes. If you want to add any middlewares to your app, do that here.

The app directory contains models and route files. Models are simply Mongoose models. To create your own, follow the patterns established in app/models/example.js. Route files are somewhat similar to controllers in Rails, but they cover more functionality, including serialization and deciding which HTTP verbs to accept and what to do with them.

The config directory holds just db.js, which is where you specify the name and URL of your database.

The lib directory is for code that will be used in other places in the application. The token authentication code is stored in lib/auth.js. The other files in lib deal with error handling. custom_errors.js is where all the different custom classes of errors are created. If you need some other kind of error message, you can add it here. There are also some functions defined here that are used elsewhere to check for errors. lib/error_handler.js is a function that will be used in all your .catches. It catches errors, and sets the response status code based on what type of error got thrown. ' From GA website structure of the express api.

I only need to interact with files in app/models, app/routes, and server.js. I edit db/config.js just once, to change the name of your app.


# Wireframes
Link to Wireframe: https://imgur.com/a/zk4t48w
 ![https://imgur.com/a/zk4t48w]

# ERD

Link to ERD: https://imgur.com/a/QI6kVaZ
 ![https://imgur.com/a/QI6kVaZ]

 #  Screenshot Of The App


# User Stories
As an unregistered user, I would like to sign up with my user Name, email and password.
As a registered user, I would like to sign in with my email and password.
As an authenticated user, I would like to be able to change password.
As an authenticated user, I would like to be able to sign out.
As an authenticated user, I would like to be able to search for patients.
As an authenticated user, I would like to add search test(s) of my patient processed in Pathology Laboratory.
As an authenticated user, I would like to be able to edit edit/delete entries in only patients I work on .


## The Development
 Tech. PathLab is a single page application that allows a user to sign up, sign in, change password and sign out.
I first work on the Wireframe, the ERD and make sure the authentication works  before moving forward.
I plan accordingly  my daily goal so that every day I could  commit my work, and finish the project before the due date.

# Unsolved Problems / Future Iterations
Though the UI is fully functional, it is currently still lacking in attractiveness.
I am planning to further work on styling my components  and ensuring that they are rendered smoothly.
This app is specifically designated for Technicians and Technologists, I wish to extend it the the Fellow and Pathology Doctor so they could add the results of the Diagnostic.
I would like in the Future add the option of selecting the test available at Path Lab, to avoid same mistakes.
