# Pet Store

The Pet Store project is a comprehensive example of how to use the Dogs ecosystem to create data
models, forms, and database integration in a Flutter application. This project is written in Dart
and uses the Pub package manager.

## Features

- **Data Models**: The project uses `dogs_core` library to define data models for `Pet` and `Order`
  entities. These models are used to represent the data in the application and interact with the
  database.

- **JSON Serialization**: The `dogs_core` library is used to serialize and deserialize the `Pet`
  and `Order` entities to and from JSON to simulate network requests.

- **Forms**: The `dogs_forms` library is used to create forms for creating and editing `Pet`
  and `Order` entities. The forms are automatically generated from the data models and include
  validation and error handling.

- **Database Integration**: The `dogs_odm` library is used to simulate a database. This
  includes creating, reading, updating, and deleting `Pet` and `Order` entities. In production,
  this would be replaced with the mongodb driver classes, without many changes to the code.

- **State Management**: The project uses the Flutter Bloc library for state management. This
  includes managing the state of the list of pets and orders, as well as the loading and error
  states.

## Running the project locally

To run the Pet Store project locally, just clone the repository and run the following commands
at the root of the project:

```bash
flutter pub get
flutter pub run build_runner build
flutter run
```

## Contributing

Contributions to the Pet Store project are welcome. Please submit a pull request or create an issue
to discuss any changes you would like to make. This project currently just serves as a simple rough
example of how to use the dogs ecosystem, and there are many ways it could be improved.