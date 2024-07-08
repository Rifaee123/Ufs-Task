import 'package:flutter/material.dart';
import 'package:flutter_scatter/flutter_scatter.dart';

class ArchiSpiral extends StatefulWidget {
  @override
  _ArchiSpiralState createState() => _ArchiSpiralState();
}

class _ArchiSpiralState extends State<ArchiSpiral> {
  final ValueNotifier<List<String>> imagesNotifier = ValueNotifier(
    List.generate(36, (index) => "assets/image ${index + 1}.png"),
  );

  @override
  Widget build(BuildContext context) {
    final int count = imagesNotifier.value.length;

    List<Widget> widgets =
        List.generate(count, (index) => ScatterItem(index, imagesNotifier));

    return Center(
      child: FittedBox(
        child: Scatter(
          delegate: ArchimedeanSpiralScatterDelegate(
            a: 30.0,
            step: 0.01,
          ),
          children: widgets,
        ),
      ),
    );
  }

  @override
  void dispose() {
    imagesNotifier.dispose();
    super.dispose();
  }
}

class ScatterItem extends StatelessWidget {
  final int index;
  final ValueNotifier<List<String>> imagesNotifier;

  ScatterItem(this.index, this.imagesNotifier);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<String>>(
      valueListenable: imagesNotifier,
      builder: (context, images, _) {
        return Container(
          height: 35,
          width: 35,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(images[index]),
          ),
        );
      },
    );
  }
}
