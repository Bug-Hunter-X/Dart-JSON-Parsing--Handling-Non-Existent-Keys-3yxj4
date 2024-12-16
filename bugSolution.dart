```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);

      // Safer way to access keys
      final value = jsonResponse['key'] ?? 'default value'; //Null aware operator
      print(value);
      //Alternative using a map
      final Map<String, dynamic>? data = jsonResponse as Map<String, dynamic>?; 
      if(data != null && data.containsKey('key')){
        final value = data['key'];
        print(value);
      }


    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```