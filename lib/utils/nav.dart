import 'package:flutter/material.dart';
import 'package:flutter_page_transition/flutter_page_transition.dart';

push(BuildContext context, Widget page, {bool replace = false}) {
  if (replace==true) {
    return Navigator.of(context).pushReplacement(PageTransition(
                    type: PageTransitionType.rippleRightUp,
                    child: page));
  }
  return Navigator.of(context).push(
      PageTransition(type: PageTransitionType.rippleRightUp, child: page));
}
