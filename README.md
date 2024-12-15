# REST API Quotes Fetch

This project is a trial implementation of a REST API integration in a Flutter app. The goal was to successfully fetch and display quotes from an external API, demonstrating proficiency in handling HTTP requests and managing JSON data in Flutter.

## Features

- Fetches Quotes such as name of author, quote, and along with its id, more from a REST API.
- Parses JSON data into Dart objects for easy manipulation.
- Successfully displays all the retrieved data within the app.

## Screenshots

https://github.com/user-attachments/assets/b9615c77-78e1-453e-a10a-67ebeace87ee

## Tech Stack

- **Flutter**: Frontend framework for building the mobile app.
- **Dart**: Programming language used for app development.
- **REST API**: Source of user data.

## Key Implementation Highlights

1. **HTTP Request**:
   - Used the `http` package to make a GET request to fetch data.
   - API Endpoint: [Random User API]((https://dummyjson.com/quotes)).

2. **Data Parsing**:
   - Converted the JSON response into Dart objects using custom data models.
   - Managed complex nested JSON structures for fields like name, id, and quote.

3. **Error Handling**:
   - Included exception handling to manage API failures or invalid data formats.



## Folder Structure

```
lib/
├── models/         # Contains data model classes
├── screens/        # UI screens displaying fetched data
├── services/       # API-related logic (e.g., HTTP requests)
└── main.dart       # App entry point
```

## How to Run

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/Siddiqui145/quotes_app.git
   cd quotes_app
   ```

2. **Install Dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the App**:
   ```bash
   flutter run
   ```

   Ensure you have an emulator or a connected device ready.

## Lessons Learned

- Gained hands-on experience with REST API integration in Flutter.
- Learned how to parse complex JSON data structures.
- Improved understanding of handling date formats and converting them to Dart `DateTime`.

## Future Improvements

- Enhance UI to make the displayed data more visually appealing.
- Add functionality to filter and search the fetched user data.
- Implement caching for offline access.

## Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [Random User API Documentation](https://randomuser.me/)
- [Dart DateTime Class](https://api.dart.dev/stable/2.19.0/dart-core/DateTime-class.html)

## License

This project is for educational purposes and does not include a specific license. Feel free to fork and modify for your own learning.
