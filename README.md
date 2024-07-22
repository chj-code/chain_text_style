<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Flutter ChainTextStyle
Chain writing simplifies code by allowing you to chain multiple methods on the same line.
This package provides a simple way to chain methods in Dart.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage


Default TextStyle
```dart
Text(
  'text',
  style: TextStyle(
    fontSize: 14,
    color: Colors.red,
    fontWeight: FontWeight.w500,
    height: 1.5,
    wordSpacing: 1.5,
  ),
),
```

Recommend Example1：Colors.xx.fs(xx).xx.xx.st
```dart
Text('text1', style: Colors.orange.fs14.st),
Text('text1', style: Colors.black.fs14.fw5.st),
Text('text1', style: Colors.red.fs14.fw5.fh(1.5).fws(1.5).st),
```

/// Example2：ChainTS.c(xx).xx.xx.st
```dart
Text(
  'text2',
  style: ChainTS.c(Colors.red).fs(14).fw5.fh(1.5).fws(1.5).st,
),
```

/// Example3: ChainTS.s(xx).xx.xx.st
```dart
Text(
  'text3',
  style: ChainTS.s(14).fc(Colors.red).fw5.fh(1.5).fws(1.5).st,
),
```

/// Example4：ChainTS().xx.xx.st
```dart
Text(
  'text3',
  style: ChainTS().fs(14).fw5.fws(1.5).fh(1.5).fc(Colors.red).st,
),
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
