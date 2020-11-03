# bali

dependency flutter

## Getting Started

#### install

```yaml
bali:
    git:
      url: https://github.com/malikkurosaki/bali.git
      ref: master
```


import

```dart
import 'package:bali/bali.dart';
```

example

```dart
class Halaman1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          color: Colors.green,
          height: 100,
          child: Bali.garisPutusPutus(
            dotColor: Colors.white,
          )
        ),
      ),
    );
  }
}
```


![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Logo Title Text 1")


