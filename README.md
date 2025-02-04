# 21daychallange
# ✨ Day 2 ✨
# Animated Cross Fade Widget in Flutter  

This project demonstrates the use of the **AnimatedCrossFade** widget in Flutter to create smooth transitions between two widgets with a fading effect.  

---

## Features  

- Smooth animations between two widgets.  
- Dynamic state management using `setState`.  
- Interactive transitions triggered by a Floating Action Button (FAB).  

---

## Code Example  

```dart
AnimatedCrossFade(
  firstChild: Container(
    height: 200,
    width: 200,
    color: Colors.blue,
    child: Center(child: Text("First Widget")),
  ),
  secondChild: Container(
    height: 200,
    width: 200,
    color: Colors.green,
    child: Center(child: Text("Second Widget")),
  ),
  crossFadeState: _showFirst
      ? CrossFadeState.showFirst
      : CrossFadeState.showSecond,
  duration: Duration(seconds: 1),
);
```
# ScreenShots:
<div>
   <img src="https://github.com/user-attachments/assets/076c5991-2047-4e3e-8983-a650a676684b"height=500px>
  <img src="https://github.com/user-attachments/assets/1ba0980b-5431-47e5-8d5d-41c7c6d8b9fd"height=500px>
  
</div>


https://github.com/user-attachments/assets/3412aa42-f3aa-4e5d-ab7b-8a8af96c4889


