
class UserData {
  static final List<Map<String, String>> users = [
    {'email': 'admin@gmail.com', 'password': 'admin123'},
  ];

  static void addUser(String email, String password) {
    users.add({'email': email, 'password': password});
  }

  static bool login(String email, String password) {
    return users.any((user) =>
        user['email'] == email.trim() && user['password'] == password);
  }

  static String? getLastUserEmail() {
    if (users.isNotEmpty) {
      return users.last['email'];
    }
    return null;
  }
}
