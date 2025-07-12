import 'package:api_test_sesh9/user_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<User>> fetchUsers() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

  if (response.statusCode == 200) {
    final List<dynamic> data = json.decode(response.body);
    return data.map((json) => User.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load users');
  }
}

Future<void> main() async {
  try {
    final users = await fetchUsers();
    for (var user in users) {
      print(user); // Or print(user.name) if you want just the name
    }
  } catch (e) {
    print('Error: $e');
  }
}
