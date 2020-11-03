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

#### example

garis putus putus

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


![alt text](https://github.com/malikkurosaki/bali/blob/master/assets/images/Screen%20Shot%202020-11-03%20at%2016.07.01.png?raw=true)


