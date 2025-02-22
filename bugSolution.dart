```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);

      // Check if the key exists before accessing it
      final String? name = data['name'];
      if (name != null) {
        print('Name: $name');
      } else {
        print('Name key not found in JSON');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    print('Invalid JSON format: $e');
  } on http.ClientException catch (e) {
    print('HTTP request failed: $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
```