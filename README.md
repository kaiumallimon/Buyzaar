# buyzaar

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

```bash
lib/
├── core/
│   ├── error/                   # Custom exceptions, failure types
│   ├── network/                 # Connectivity checker, Dio config
│   ├── theme/                   # ThemeData, colors, text styles
│   ├── utils/                   # Constants, helpers, extensions
│   └── widgets/                 # Shared/reusable UI widgets (buttons, inputs)
│
├── features/
│   ├── splash/
│   │   └── presentation/
│   │       └── pages/
│   │           └── splash_page.dart
│
│   ├── onboarding/
│   │   ├── domain/
│   │   │   └── entities/
│   │   ├── application/
│   │   └── presentation/
│   │       └── pages/
│   │           └── onboarding_page.dart
│
│   ├── auth/
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   └── repositories/
│   │   ├── application/
│   │   │   └── usecases/
│   │   └── presentation/
│   │       ├── bloc/
│   │       └── pages/
│   │           ├── login_page.dart
│   │           └── register_page.dart
│
│   ├── home/
│   │   ├── application/
│   │   └── presentation/
│   │       ├── bloc/
│   │       └── pages/
│   │           └── home_page.dart
│
│   ├── product/
│   │   ├── data/
│   │   ├── domain/
│   │   ├── application/
│   │   └── presentation/
│   │       ├── bloc/
│   │       └── pages/
│   │           ├── product_list_page.dart
│   │           └── product_detail_page.dart
│
│   ├── cart/
│   │   ├── data/
│   │   ├── domain/
│   │   ├── application/
│   │   └── presentation/
│   │       ├── bloc/
│   │       └── pages/
│   │           └── cart_page.dart
│
│   ├── wishlist/
│   │   ├── data/
│   │   ├── domain/
│   │   ├── application/
│   │   └── presentation/
│   │       ├── bloc/
│   │       └── pages/
│   │           └── wishlist_page.dart
│
│   ├── search/
│   │   ├── application/
│   │   └── presentation/
│   │       ├── bloc/
│   │       └── pages/
│   │           └── search_page.dart
│
│   └── account/
│       ├── application/
│       └── presentation/
│           ├── bloc/
│           └── pages/
│               └── account_page.dart
│
├── injection/
│   └── injection_container.dart   # GetIt setup for all features
│
├── routes/
│   └── app_router.dart            # GoRouter or Navigator 2.0 setup
│
└── main.dart

```