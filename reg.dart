import 'dart:io';

void main() {
  List<Map<String, dynamic>> users = [];

  while (true) {
    stdout.write('Enter your name (or type "quit" to exit): ');
    String name = stdin.readLineSync()!.trim();

    if (name.toLowerCase() == 'quit') {
      break;
    }

    stdout.write('Enter your age: ');
    int age = int.parse(stdin.readLineSync()!);

    if (age >= 18) {
      users.add({'name': name, 'age': age});
      print('User registered successfully.');
    } else {
      print('Sorry, you must be 18 or older to register.');
    }
  }

  print('\nRegistered Users:');
  users.forEach((user) {
    print('Name: ${user['name']}, Age: ${user['age']}');
  });
}

