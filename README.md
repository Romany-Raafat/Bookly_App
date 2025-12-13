# 📚 Bookly App

## 👨‍💻 Professional Summary

Bookly App is a **Flutter portfolio project** that demonstrates strong understanding of **clean architecture**, **MVVM pattern**, and **BLoC (Cubit)** for scalable state management.

The project reflects real-world Flutter development practices, focusing on maintainability, separation of concerns, and clean UI-to-business logic flow.

## 🚀 About the Project

**Bookly App** is a Flutter application built as a learning project.
The main goal of this project was to understand and apply **MVVM architecture** and **BLoC (Cubit)** for state management in a real app.

The app displays books data and focuses on clean code, separation of concerns, and scalable project structure.

## 🧠 What I Learned

* MVVM (Model - View - ViewModel) architecture
* Using **BLoC / Cubit** for state management
* Clean project structure
* Handling API states (loading, success, error)
* Better separation between UI and business logic

## 🏗️ Architecture Overview

* **Architecture Pattern:** MVVM (Model - View - ViewModel)
* **State Management:** BLoC (Cubit)
* **UI Layer:** Flutter Widgets
* **Business Logic:** Cubits & Use Cases
* **Data Layer:** Repositories & Data Sources

The app follows a feature-based structure to ensure scalability and clean separation between layers.

## 📦 Key Packages Used

* flutter_bloc → State management using Cubit
* dio → REST API handling and networking
* dartz → Functional programming (Either) for error handling
* equatable → Simplifying state comparisons
* get_it → Dependency injection
* go_router → App navigation and routing
* cached_network_image → Efficient image caching
* shimmer_animation → Loading placeholders (Shimmer effect)

> UI-only packages like `cupertino_icons`, `google_fonts`, and icon libraries are intentionally omitted as they do not reflect architectural decisions.

## ✨ Features

* Splash Screen
* Home Module

  * Home View (Books listing)
  * Book Details View
* Clean navigation between views
* State management using BLoC (Cubit)
* MVVM-based architecture for better scalability
* Error and loading state handling

## 📂 Project Structure

```
lib/
│── core/
│── features/
│   ├── home/
│   ├── search/
│── main.dart
```

## ▶️ How to Run

1. Clone the repository

```bash
git clone https://github.com/your-username/bookly-app.git
```

2. Open the project in your IDE
3. Run the app

```bash
flutter pub get
flutter run
```

## 🎯 Purpose

This project is created for **learning purposes**, focusing on Flutter architecture and state management.

## 🤝 Contributing

Contributions are welcome. Feel free to fork the repository and submit a pull request.

## 📬 Contact

* GitHub: https://github.com/Romany-Raafat
