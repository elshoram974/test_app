# **Test App**

A simple Flutter application to visualize orders data using a line chart.

---

## **How to Run the App**
1. **Clone this repository**:
   ```bash
   git clone https://github.com/yourusername/test_app.git
   ```
2. **Navigate to the project directory**:
   ```bash
   cd test_app
   ```
3. **Install dependencies**:
   ```bash
   flutter pub get
   ```
4. **Run the app**:
   ```bash
   flutter run
   ```

---

## **Libraries/Packages Used**
- **`flutter_localizations`**: To support localization in the app.
- **`intl`**: For formatting dates and numbers.
- **`get`**: A simple state management library.
- **`device_preview`**: To preview the app on different devices.
- **`syncfusion_flutter_charts`**: To create charts for visualizing data.

---

## **Assumptions Made**
- The orders data is stored in a JSON file located at **`assets/others/orders.json`**.
- Each order in the JSON file contains a **`date`** field in ISO 8601 format.
- The app visualizes the number of orders grouped by date.

---

## **Project Structure**
- **`lib/`**: Contains the main application code.
- **`assets/`**: Contains the JSON data file.
- **`pubspec.yaml`**: Defines the dependencies and configurations.

##### In lib folder
```
lib/
├── main.dart
├── controller/
│   └── order_controller.dart
├── core/
│   ├── config/
│   │   ├── locale/
│   │   │   ├── generated/
│   │   │   │   ├── l10n.dart
│   │   │   │   └── intl/
│   │   │   │       ├── messages_all.dart
│   │   │   │       ├── messages_en.dart
│   │   │   │       └── ...
│   │   ├── routes/
│   │   │   └── app_routes.dart
│   ├── shared/
│   │   ├── filled_button.dart
│   │   └── responsive/
│   │       ├── constrained_box.dart
│   │       └── layout_builder_responsive.dart
│   └── utils/
│       ├── constants/
│       │   └── app_constants.dart
│       └── extensions/
│           └── responsive_ex.dart
├── model/
│   ├── chart_data.dart
│   └── order.dart
└── view/
    └── screens/
        ├── graph_screen.dart
        ├── home_screen.dart
        └── metrics_screen.dart
```

---

## **Notes**
- Ensure you have Flutter SDK version **`3.27.1`** or higher installed.
