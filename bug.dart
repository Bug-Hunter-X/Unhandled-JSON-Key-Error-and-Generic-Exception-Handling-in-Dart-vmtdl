```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Here's where the error might happen. Assuming JSON response
      final Map<String, dynamic> data = jsonDecode(response.body);

      // Accessing a non-existent key might throw an exception
      final String name = data['name']; // potential error here if 'name' is missing

      print('Name: $name');
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    //This catch block is too generic, it needs to handle specific errors
    print('Error: $e');
  }
}
```