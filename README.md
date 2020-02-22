# Flutter Firebase Login Example

In this app, I have implemented Firebase Authantication login and sign up for both Android and iOS.

## Step by Step Flutter Firebase Login

### Step 1: Firebase Setup

Create a project in Firebase Console and complete the Firebase setup for both Android and IOS. You will get two files for each platform when finish the setup. 
* **For Android:** 
- - Place the "*google-service.json*" file in the app module root directory. 
- - Add classpath project level build.gradle
- - Add this lines app level  build.gradle
``    apply plugin: 'com.android.application'``
`apply plugin: 'com.google.gms.google-services'`
* **For IOS:** 
- - Place the "*google-service.json*" file in the app module root directory.
- - Follow this step for IOS integration [google_sign_in.](https://pub.dev/packages/google_sign_in#ios-integration "google_sign_in")

### Step 2: Install Plugins

Install a few plugins before you start. Add the plugins to your package's pubspec.yaml file.
* **Firebase Authentication:**
- - [firebase_auth](https://pub.dev/packages/firebase_auth "firebase_auth")
- - [google_sign_in](https://pub.dev/packages/google_sign_in "google_sign_in")
* **Other Plugins:**
- - The [google_fonts](https://pub.dev/packages/google_fonts "google_fonts") package for Flutter allows you to easily use any of the 977 fonts (and their variants) from fonts.google.com in your Flutter app.
- - With [provider](https://pub.dev/packages/provider "provider") plugin we can listen user authantication changes. 
- - For loading animation [flutter_spinkit](https://pub.dev/packages/flutter_spinkit "flutter_spinkit").

### Step 3: Create UI
- [Login Page View](https://github.com/azizoglu/FirebaseLoginExample/blob/master/lib/ui/views/login_page.dart"Login Page View")
- [Home Page View](https://github.com/azizoglu/FirebaseLoginExample/blob/master/lib/ui/views/home_page.dart "Home Page View")
- [Sign Up Page View](https://github.com/azizoglu/FirebaseLoginExample/blob/master/lib/ui/views/signup_page.dart "Sign Up Page View")
- [Loading](https://github.com/azizoglu/FirebaseLoginExample/blob/master/lib/ui/shared/loading.dart "Loading")

### Step 3: Create Authentication Class
Create a new dart file [auth.dart](https://github.com/azizoglu/FirebaseLoginExample/blob/master/lib/core/services/auth.dart "auth.dart")  where we will set up the firebase authentication and google sign in.

### Step 4: Create User Model Class
Create a new dart file [user.dart](https://github.com/azizoglu/FirebaseLoginExample/blob/master/lib/data/models/user.dart")  for user data. 

## Screenshots
![FLE](https://{https://github.com/azizoglu/FirebaseLoginExample/blob/master/screenshot/screenshot.jpg) 

