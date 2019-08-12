/*
 * Copyright 2019 LogArt.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

verbose(String tag, String msg) => Log.v(tag, msg);

debug(String tag, String msg) => Log.d(tag, msg);

info(String tag, String msg) => Log.i(tag, msg);

warning(String tag, String msg) => Log.w(tag, msg);

error(String tag, String msg) => Log.e(tag, msg);

wtf(String tag, String msg) => Log.wtf(tag, msg);

final _LogImpl _logImpl = _LogImpl();

abstract class Log {
  call(_Level level, String tag, String msg);

  factory Log.v(String tag, String msg) => _logImpl(_Level.verbose, tag, msg);

  factory Log.d(String tag, String msg) => _logImpl(_Level.debug, tag, msg);

  factory Log.i(String tag, String msg) => _logImpl(_Level.info, tag, msg);

  factory Log.w(String tag, String msg) => _logImpl(_Level.warning, tag, msg);

  factory Log.e(String tag, String msg) => _logImpl(_Level.error, tag, msg);

  factory Log.wtf(String tag, String msg) => _logImpl(_Level.wtf, tag, msg);
}

/// Private default log implementation
class _LogImpl implements Log {
  String describeEnum(Object o) => o.toString().split('.').last;

  call(_Level level, String tag, String msg) {
    final log =
        "${DateTime.now()}: ${describeEnum(level).toUpperCase()}/$tag: $msg";

    switch (level) {
      case _Level.verbose:
        print(log);
        break;
      case _Level.debug:
        print("\x1B[94m$log\x1B[0m");
        break;
      case _Level.info:
        print("\x1B[32m$log\x1B[0m");
        break;
      case _Level.warning:
        print("\x1B[33m$log\x1B[0m");
        break;
      case _Level.error:
        print("\x1B[31m$log\x1B[0m");
        break;
      case _Level.wtf:
        print("\x1B[35m$log\x1B[0m");
        break;
    }
  }
}

enum _Level { verbose, debug, info, warning, error, wtf }
