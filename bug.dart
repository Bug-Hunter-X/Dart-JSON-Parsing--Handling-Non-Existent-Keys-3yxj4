```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonResponse = jsonDecode(response.body);
      // Accessing a non-existent key
      final value = jsonResponse['nonExistentKey']; 
      print(value);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```