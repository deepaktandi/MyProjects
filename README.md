Inventory Management System for College Stationery Products (Flutter App)
Project Overview
This project is an Inventory Management System built as a Flutter mobile app to manage requisitions of stationery products by faculty members at a college. Faculties can request stationery items (like pens, notebooks, and other office supplies) through a requisition form. The app interacts with Firebase for real-time data storage, authentication, and notifications.

Admins can manage inventory, approve or reject faculty requisitions, and track stock levels directly through the app.

Features
Faculty Requisition Form: Faculty members can fill out a form to request stationary items (e.g., pens, notebooks, markers).
Inventory Management: Admins can manage inventory (add, update, or remove items).
Request Approval: Admins can approve or reject requisition requests based on available stock.
Real-Time Database: Firebase Firestore is used for real-time updates of the requisition requests and inventory.
Authentication: Firebase Authentication allows faculty members and admins to log in securely.
Push Notifications: Faculty members receive notifications about the status of their requisitions (approved/rejected).
Admin Dashboard: Admins can view all requisitions, current inventory, and generate reports for stock management.
Technologies Used
Flutter: For building a cross-platform mobile application for both iOS and Android.
Firebase:
Firebase Authentication for secure login and user management.
Firebase Firestore for real-time database to store requisitions, products, and inventory details.
Firebase Cloud Messaging (FCM) for push notifications.
Provider: State management for the app (optional).
Flutter Local Notifications: For in-app notifications.
System Requirements
Flutter SDK: To build the mobile application.
Android Studio or Visual Studio Code: For code editing and app development.
Firebase Project: Set up a Firebase project for authentication, Firestore, and notifications.
Device or Emulator: An Android or iOS device or emulator to run the app.
Installation Guide
Prerequisites
Install Flutter SDK:

Download and install the Flutter SDK from the official website: Flutter Installation Guide.
Install Android Studio or Visual Studio Code for development and running the app.

Set up a Firebase Project:

Create a Firebase project on the Firebase Console.
Enable Firebase Authentication and set up Firestore Database.
Add your Android and/or iOS app to the Firebase project.

Configure Firebase
In the Firebase Console, navigate to your project.
Add your Android and iOS app to Firebase:
For Android: Download the google-services.json file and place it in the android/app directory.
For iOS: Download the GoogleService-Info.plist file and place it in the ios/Runner directory.
Ensure Firebase Authentication is enabled for email/password login.
Set up Firestore with the following collections:
inventory: Contains information about available stationery products (name, quantity, price, etc.).
requisitions: Stores requisition requests from faculties (requested items, quantities, status).
users: Stores user information (faculty/admin).



Firebase Firestore Structure
Here’s an example of how your Firestore database might be structured:

Users Collection

Document: user_id
name: "John Doe"
role: "faculty" (or "admin")
email: "johndoe@example.com"
requisitions: [list of requisition document IDs]
Inventory Collection

Document: product_id
name: "Pen"
quantity: 100
price: 1.5
Requisitions Collection

Document: requisition_id
faculty_id: "user_id"
product: "Pen"
quantity: 5
status: "pending" (or "approved"/"rejected")
Usage
Faculty Features
Login: Faculty members can log in using their email and password.
Requisition Form: Faculty can fill out a requisition form to request specific stationery products.
Request Status: Faculty can check the status of their requests (approved or rejected).
Admin Features
Admin Login: Admin users can log in to manage requisitions and inventory.
Approve/Reject Requisitions: Admins can view pending requisition requests and approve or reject them.
Manage Inventory: Admins can add, update, or delete stationery products in the inventory.
Generate Reports: Admins can generate reports on inventory usage and requisition history.
Push Notifications
Faculty members will receive push notifications when their requisition status is updated.

Contribution
If you would like to contribute to this project, please follow these steps:

Fork the repository.
Clone your fork to your local machine.
Create a new branch for your feature or fix.
Make changes and commit them.
Push your changes to your forked repository.
Submit a pull request for review.
