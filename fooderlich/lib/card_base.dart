import 'package:flutter/material.dart';

abstract class CardBase extends StatelessWidget {
  final double constraintsWidth;
  final double constraintsHeight;
  final String decorationImage;
  final double decorationRadius;
  final EdgeInsetsGeometry padding;

  const CardBase(
      {Key? key,
      this.constraintsWidth = 350,
      this.constraintsHeight = 450,
      required this.decorationImage,
      this.decorationRadius = 10,
      this.padding = const EdgeInsets.all(16.0)})
      : super(key: key);

  BoxConstraints _buildConstraints() {
    return BoxConstraints.expand(
      width: constraintsWidth,
      height: constraintsHeight,
    );
  }

  BoxDecoration _buildDecoration() {
    return BoxDecoration(
      image: DecorationImage(
        image: AssetImage(decorationImage),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(decorationRadius),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: padding,
        constraints: _buildConstraints(),
        decoration: _buildDecoration(),
        child: buildContent(context),
      ),
    );
  }

  /// Represents card content
  @protected
  Widget buildContent(BuildContext context);
}
