Widget that switches Padding for a given width for Responsive support.

## Getting started

In your library add the following import:

```dart
import 'package:switchable_padding/switchable_padding.dart';
```

Place the Widget for which you wish to adjust the Padding to be given as a child element of SwitchablePadding.

```dart
SwitchablePadding(
  padding: (width) {
    if (width < 600) {
      return const EdgeInsets.all(0);
    } else {
      return const EdgetInsets.all(16);
    }
  },
  child: Text('Hello World'),
),
```
