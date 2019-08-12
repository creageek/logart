## Initializing

A simplest lightweight logger ever possible. Inspired by Android's logger.

Unlike other solutions, LogArt doesn't require any additional initialization. All you need - is to import logger into your class.

```dart
import 'package:logart/logart.dart';
```

Everything else is already implemented for you.

## Logging messages

In order to log message you don't need to create any logger instance.

Here is an example of logging all kind of messages:

```dart
verbose("Widget", "Message");
debug("CheckoutScreen", "Message");
info("Scope", "Message");
warning("Tag", "Message");
error("Test", "Message");
wtf("UnexpectedStuff", "Message");
```

Or you can log messages using old way:

```dart
Log.v("Widget", "msg");
Log.d("CheckoutScreen", "msg");
Log.i("Scope", "msg");
Log.w("Tag", "msg");
Log.e("Test", "test");
Log.wtf("UnexpectedStuff", "test");
```

That's it :D

## The art of simplicity

As the headline says: LogArt - is the simplest logger ever possible, so it probably won't be as powerful as any other logger. But it doesn't mean LogArt is bad (at least I hope :D).

Anyway, if you have any suggestions on how to improve it - you're welcome to open an issue on GitHub :)