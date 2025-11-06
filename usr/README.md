# Agri Tus

An agricultural commodity trading platform for cocoa, coffee, and copra.

## About

Agri Tus is a Flutter-based mobile and web application designed to facilitate the buying and selling of agricultural commodities, specifically:
- **Cocoa** - Premium quality cocoa beans
- **Coffee** - Fresh coffee beans
- **Copra** - Dried coconut kernel

## Features

- Browse available commodities
- View detailed information about each commodity including current market prices
- Buy and sell functionality for each commodity
- Cross-platform support (iOS, Android, Web)

## Getting Started

This project is built with Flutter. To run this application:

1. Ensure you have Flutter installed on your system
2. Clone this repository
3. Run `flutter pub get` to install dependencies
4. Run `flutter run` to start the application

### Prerequisites

- Flutter SDK (3.7.2 or higher)
- Dart SDK
- An IDE (VS Code, Android Studio, or IntelliJ)

## Project Structure

```
lib/
  ├── main.dart                 # Application entry point
  ├── models/
  │   └── commodity_model.dart  # Commodity data model
  └── screens/
      ├── home_screen.dart              # Main screen with commodity grid
      └── commodity_detail_screen.dart  # Detailed view for each commodity
```

## Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

## Future Enhancements

- User authentication and profiles
- Real-time price updates
- Transaction history
- Payment integration
- Market analytics and trends
