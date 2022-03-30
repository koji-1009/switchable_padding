import 'package:flutter/widgets.dart';

typedef PaddingFunction = EdgeInsetsGeometry Function(double width);

class SwitchablePadding extends StatelessWidget {
  const SwitchablePadding({
    Key? key,
    required this.padding,
    required this.child,
  }) : super(key: key);

  final PaddingFunction padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Padding(
        padding: padding(constraints.maxWidth),
        child: child,
      ),
    );
  }
}
