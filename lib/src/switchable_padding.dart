import 'package:flutter/widgets.dart';

/// Function to calculate EdgeInsetsGeometry from width
typedef PaddingFunction = EdgeInsetsGeometry Function(double width);

/// A widget that adds calculated padding to the child according to the given width.
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
