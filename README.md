# SwiftUI Radial Menu

A modern, customizable Radial Menu built with SwiftUI. Inspired by emergency UX patterns, this component uses a donut-style segmented layout to trigger quick actions from a central point.

<img src="https://github.com/user-attachments/assets/a78951f7-1bb0-4e62-9fb5-1beac978054b" width="200" />


## ✨ Features

- 📐 Fully circular donut-style layout
- 🧲 Center "panic" button and 4 radial segments
- 🎨 Customizable icons, labels, colors, and actions
- ⚡️ Animated interactions with feedback
- 📱 Designed for mobile touch interfaces (iOS)

## 🛠 Use Cases

- Emergency apps (e.g., Panic/Check-in/Record)
- Action launchers or floating command menus
- Smart home or productivity toolkits
- Gamepad-style UI controls

## 📦 Installation

You can copy the source files directly into your SwiftUI project.

## 🚀 Getting Started

```swift
ArcButton(
  iconName: String,
  label: String,
  startDegrees: Double,
  endDegrees: Double,
  arcWidth: CGFloat,
  gapWidth: CGFloat,
  action: () -> Void
) {
  action()
}
