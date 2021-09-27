import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({@required this.onTab, @required this.buttonTitle});

  final Function onTab;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        child: Center(
          child: Text(buttonTitle, style: KLargeButtonTextStyle),
        ),
        color: kColorOfButtonContainer,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: kButtonContainerHeight,
      ),
    );
  }
}
