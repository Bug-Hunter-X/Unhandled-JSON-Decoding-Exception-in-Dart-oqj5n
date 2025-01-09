```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonResponse = jsonDecode(response.body);
      //Use the data
      print(jsonResponse);
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle error
    print('Error: $e');
    rethrow; // Re-throw the exception to be handled further up the call stack
  }
}

void main() async {
  try{
    await fetchData();
  } catch (e){
    print("Error in main function: $e");
  }
}
```