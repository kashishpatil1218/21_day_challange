
# Radial Slider 

A beautiful, customizable radial slider widget for Flutter. This widget allows users to slide around a circular arc, providing an intuitive and visually appealing way to select a value. Ideal for scenarios where a radial UI element is needed, such as adjusting volume, brightness, or any other parameter that benefits from a circular control.

## Features

- **Customizable Arc**: Set the range, thickness, and style of the circular slider.
- **Interactive Feedback**: Immediate feedback on user interaction, with value changes being shown dynamically.
- **Smooth Animation**: Smooth transitions for value changes and drag gestures.
- **Styling Options**: Configure colors, size, stroke width, and more.
- **Value Tracking**: Display and use the selected value from the slider for further actions.

## Installation

To use the Radial Slider in your Flutter project, follow these steps:

1. Add the dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  radial_slider: ^1.0.0
```

2. Install the package by running:

```bash
flutter pub get
```

3. Import the widget into your Dart code:

```dart
import 'package:radial_slider/radial_slider.dart';
```

## Usage

Here’s how to use the Radial Slider widget:

```dart
import 'package:flutter/material.dart';
import 'package:radial_slider/radial_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Radial Slider Example')),
        body: Center(
          child: RadialSlider(
            minValue: 0,
            maxValue: 100,
            onChanged: (value) {
              print('Selected Value: $value');
            },
            initialValue: 50,
            sliderColor: Colors.blue,
            backgroundColor: Colors.grey[200]!,
            size: 250.0,
            strokeWidth: 8.0,
          ),
        ),
      ),
    );
  }
}
```

## Parameters

- **minValue**: The minimum value the slider can take (e.g., 0).
- **maxValue**: The maximum value the slider can take (e.g., 100).
- **initialValue**: The starting value of the slider.
- **onChanged**: Callback that is triggered whenever the slider value changes.
- **sliderColor**: The color of the radial slider.
- **backgroundColor**: The background color of the slider.
- **size**: The size of the radial slider.
- **strokeWidth**: The thickness of the radial slider track.
- **activeStrokeWidth**: The thickness of the active portion of the radial slider track (optional).
- **trackColor**: Color of the slider track (optional).

## Example

Here is an example of a Radial Slider with a custom value range and callback:

```dart
RadialSlider(
  minValue: 0,
  maxValue: 100,
  initialValue: 50,
  onChanged: (value) {
    // Perform action based on selected value
    print('Selected Value: $value');
  },
  sliderColor: Colors.green,
  backgroundColor: Colors.black26,
  size: 300.0,
  strokeWidth: 12.0,
)
```





# Image
<div>
  <img src="https://github.com/user-attachments/assets/8bfe462e-c55e-4c03-9d3d-1f5b03e8ef5c"height=500px>
</div>


https://github.com/user-attachments/assets/c205cb50-be5b-4f09-bfa0-002963c8d9b6


