import 'dart:io';

void main() {
  ///question "1"
  String age_input = stdin.readLineSync() ?? '18';
  int age = int.parse(age_input);
  if (age >= 18) {
    print("You are eligible to vote");
  } else {
    print("You are not eligible to vote yet");
  }

  ///question "2"
  for (int i = 1; i < 21; ++i) {
    print("Number: $i is ${i % 2 == 0 ? 'even' : 'odd'}");
  }

  ///question "3" Password Verification
  //as it is password must it as "admin123" no capital letters
  String input = stdin.readLineSync() ?? '';

  while (input != "admin123") {
    print("Please enter the correct password:");
    input = stdin.readLineSync() ?? '';
  }
  print("Access granted");

  ///question "4" – Grade Classification
  String gradeInput = stdin.readLineSync() ?? '0';
  int grade = int.parse(gradeInput);
  if (grade < 0 || grade > 100) {
    //(0–100) >> 100 max
    print("Please enter a valid grade between 0 and 100.");
    return;
  }

  if (grade < 70) {
    print("You need improvement. You got a D.");
  } else if (grade >= 70 && grade < 80) {
    print("Good! You got a C.");
  } else if (grade >= 80 && grade < 90) {
    print("Very Good! You got a B.");
  } else {
    print("Excellent! You got an A.");
  }
  // no need this
  //  else if(grade >=90 && grade < 100){//(0–100) >> 100 max
  //    print("Excellent! You got an A.");
  //  }

  ///question "5" – Day of the Week
  String dayOfWeek = stdin.readLineSync() ?? '1';
  int dow = int.parse(gradeInput);
  switch (dow) {
    case 1:
      print("Sunday");
    case 2:
      print("Monday");
    case 3:
      print("Tuesday");
    case 4:
      print("Wednesday");
    case 5:
      print("Thursday");
    case 6:
      print("Friday");
    case 7:
      print("Saturday");
    default:
      print("Invalid input.");
  }

  ///question "6" – Day of the Week
  /*
The user is asked to enter:
- A username
- A password
- A role (either "admin" or "user")
Based on the input:
- If the username is "manager" and the password is "admin@123" and the role is "admin" → print:
"Welcome Admin Manager! Full access granted."
- If the username is "manager" and the password is correct but the role is not "admin" → print:
"Access denied: Admin role required."
- If the username is "guest" and the password is "user@123" and role is "user" → print: "Welcome
Guest! Limited access granted."
- If the password is wrong → print: "Incorrect password. Try again."
- If the username is not recognized → print: "Unknown user."
Use: if, else if, and nested if
Bonus: Use logical operators (&&, ||) and nested blocks
  */
  String username = "", password = "", role = "user";

  print("Enter username:");
  username = stdin.readLineSync() ?? '';
  username = username.toLowerCase();
  print("Enter password:");
  password = stdin.readLineSync() ?? '';
  print("Enter role (admin/user):"); //admin
  role = stdin.readLineSync() ?? 'user';
  role = role.toLowerCase();
  if (role != "admin" && role != "user") {
    print("Invalid role. Please enter 'admin' or 'user'.");
    return;
  }
  if (username == "manager") {
    if (password == "admin@123") {
      if (role == "admin")
        print("Welcome Admin Manager! Full access granted.");
      else
        print("Access denied: Admin role required.");
    } else {
      print("Incorrect password. Try again.");
    }
  } else if (username == "guest") {
    if (password == "user@123") {
      if (role == "user")
        print("Welcome Guest! Limited access granted.");
      else
        print("Access denied: User role required.");
    } else {
      print("Incorrect password. Try again.");
    }
  } else {
    print("Unknown user.");
  }
}
