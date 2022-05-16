import 'dart:math' as math;
import 'dart:ui' show lerpDouble;

import 'package:flutter/material.dart';

class KitButton extends ElevatedButton {
  ButtonStyle? style;

  KitButton({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget? child,
  }) : super(
    key: key,
    onPressed: onPressed,
    onLongPress: onLongPress,
    onHover: onHover,
    onFocusChange: onFocusChange,
    style: style,
    focusNode: focusNode,
    autofocus: autofocus,
    clipBehavior: clipBehavior,
    child: child,
  );

  // Button OutLine
  KitButton.customOutLine({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget? child,
    Color kitForegroundColor = Colors.black,
    Color kitBorderColor = Colors.black,
    Color kitOverlayColor = Colors.black45,
    Color kitBackgroundColor = Colors.white,
    Color kitShadowColor = Colors.black,
    double kitRadius = 0.0,
  })  : style = ButtonStyle(
      foregroundColor:
      MaterialStateProperty.all<Color?>(kitForegroundColor),
      backgroundColor:
      MaterialStateProperty.all<Color?>(kitBackgroundColor),
      overlayColor: MaterialStateProperty.all<Color?>(kitOverlayColor),
      shadowColor: MaterialStateProperty.all<Color?>(kitShadowColor),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: BorderSide(color: kitBorderColor)))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
      );

  // Button Default
  KitButton.primaryDefault({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget? child,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      backgroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff007bff)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff007bff))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
      );
  KitButton.secondaryDefault({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget? child,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      backgroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff6c757d)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff6c757d))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
      );

  KitButton.successDefault({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget? child,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      backgroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff28a745)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff28a745))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
      );

  KitButton.warningDefault({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget? child,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      backgroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xffffc107)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xffffc107))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
      );

  KitButton.dangerDefault({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget? child,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      backgroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xffdc3545)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xffdc3545))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
      );

  KitButton.infoDefault({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget? child,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      backgroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff17a2b8)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff17a2b8))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
      );

  KitButton.lightDefault({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget? child,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color?>(Colors.black),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Colors.white)))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
      );
  KitButton.darkDefault({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget? child,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      backgroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff343a40)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff343a40))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
      );
  KitButton.linkDefault({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget? child,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff007bff)),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff007bff))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
      );

  // Button Default With Icon
  KitButton.primaryDefaultIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget icon,
    required Widget label,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      backgroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff007bff)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff007bff))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: _KitElevatedButtonWithIconChild(icon: icon, label: label),
      );
  KitButton.secondaryDefaultIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget icon,
    required Widget label,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      backgroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff6c757d)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff6c757d))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: _KitElevatedButtonWithIconChild(icon: icon, label: label),
      );

  KitButton.successDefaultIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget icon,
    required Widget label,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      backgroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff28a745)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff28a745))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: _KitElevatedButtonWithIconChild(icon: icon, label: label),
      );

  KitButton.warningDefaultIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget icon,
    required Widget label,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      backgroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xffffc107)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xffffc107))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: _KitElevatedButtonWithIconChild(icon: icon, label: label),
      );

  KitButton.dangerDefaultIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget icon,
    required Widget label,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      backgroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xffdc3545)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xffdc3545))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: _KitElevatedButtonWithIconChild(icon: icon, label: label),
      );

  KitButton.infoDefaultIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget icon,
    required Widget label,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      backgroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff17a2b8)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff17a2b8))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: _KitElevatedButtonWithIconChild(icon: icon, label: label),
      );

  KitButton.lightDefaultIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget icon,
    required Widget label,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color?>(Colors.black),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Colors.white)))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: _KitElevatedButtonWithIconChild(icon: icon, label: label),
      );
  KitButton.darkDefaultIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget icon,
    required Widget label,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      backgroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff343a40)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff343a40))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: _KitElevatedButtonWithIconChild(icon: icon, label: label),
      );
  KitButton.linkDefaultIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget icon,
    required Widget label,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff007bff)),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff007bff))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: _KitElevatedButtonWithIconChild(icon: icon, label: label),
      );

  // Button Outline
  KitButton.primaryOutline({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget? child,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff007bff)),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      overlayColor: MaterialStateProperty.all<Color?>(
          const Color(0xff007bff).withOpacity(0.2)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff007bff))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
      );
  KitButton.secondaryOutline({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget? child,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff6c757d)),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      overlayColor: MaterialStateProperty.all<Color?>(
          const Color(0xff6c757d).withOpacity(0.2)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff6c757d))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
      );

  KitButton.successOutline({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget? child,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff28a745)),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      overlayColor: MaterialStateProperty.all<Color?>(
          const Color(0xff28a745).withOpacity(0.2)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff28a745))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
      );

  KitButton.warningOutline({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget? child,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xffffc107)),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      overlayColor: MaterialStateProperty.all<Color?>(
          const Color(0xffffc107).withOpacity(0.2)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xffffc107))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
      );

  KitButton.dangerOutline({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget? child,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xffdc3545)),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      overlayColor: MaterialStateProperty.all<Color?>(
          const Color(0xffdc3545).withOpacity(0.2)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xffdc3545))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
      );

  KitButton.infoOutline({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget? child,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff17a2b8)),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      overlayColor: MaterialStateProperty.all<Color?>(
          const Color(0xff17a2b8).withOpacity(0.2)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff17a2b8))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
      );

  KitButton.lightOutline({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget? child,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color?>(Colors.black),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      overlayColor: MaterialStateProperty.all<Color?>(
          Colors.black.withOpacity(0.2)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Colors.white)))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
      );
  KitButton.darkOutline({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget? child,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff343a40)),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      overlayColor: MaterialStateProperty.all<Color?>(
          const Color(0xff343a40).withOpacity(0.2)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff343a40))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
      );
  KitButton.linkOutline({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget? child,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff007bff)),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      overlayColor: MaterialStateProperty.all<Color?>(
          const Color(0xff007bff).withOpacity(0.2)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff007bff))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
      );

  // Button Outline With Icon
  KitButton.primaryOutlineIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget icon,
    required Widget label,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff007bff)),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      overlayColor: MaterialStateProperty.all<Color?>(
          const Color(0xff007bff).withOpacity(0.2)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff007bff))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: _KitElevatedButtonWithIconChild(icon: icon, label: label),
      );
  KitButton.secondaryOutlineIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget icon,
    required Widget label,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff6c757d)),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      overlayColor: MaterialStateProperty.all<Color?>(
          const Color(0xff6c757d).withOpacity(0.2)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff6c757d))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: _KitElevatedButtonWithIconChild(icon: icon, label: label),
      );

  KitButton.successOutlineIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget icon,
    required Widget label,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff28a745)),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      overlayColor: MaterialStateProperty.all<Color?>(
          const Color(0xff28a745).withOpacity(0.2)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff28a745))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: _KitElevatedButtonWithIconChild(icon: icon, label: label),
      );

  KitButton.warningOutlineIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget icon,
    required Widget label,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xffffc107)),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      overlayColor: MaterialStateProperty.all<Color?>(
          const Color(0xffffc107).withOpacity(0.2)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xffffc107))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: _KitElevatedButtonWithIconChild(icon: icon, label: label),
      );

  KitButton.dangerOutlineIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget icon,
    required Widget label,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xffdc3545)),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      overlayColor: MaterialStateProperty.all<Color?>(
          const Color(0xffdc3545).withOpacity(0.2)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xffdc3545))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: _KitElevatedButtonWithIconChild(icon: icon, label: label),
      );

  KitButton.infoOutlineIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget icon,
    required Widget label,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff17a2b8)),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      overlayColor: MaterialStateProperty.all<Color?>(
          const Color(0xff17a2b8).withOpacity(0.2)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff17a2b8))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: _KitElevatedButtonWithIconChild(icon: icon, label: label),
      );

  KitButton.lightOutlineIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget icon,
    required Widget label,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color?>(Colors.black),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      overlayColor: MaterialStateProperty.all<Color?>(
          Colors.black.withOpacity(0.2)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Colors.white)))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: _KitElevatedButtonWithIconChild(icon: icon, label: label),
      );
  KitButton.darkOutlineIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget icon,
    required Widget label,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff343a40)),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      overlayColor: MaterialStateProperty.all<Color?>(
          const Color(0xff343a40).withOpacity(0.2)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff343a40))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: _KitElevatedButtonWithIconChild(icon: icon, label: label),
      );
  KitButton.linkOutlineIcon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget icon,
    required Widget label,
    double kitRadius = 4.0,
  })  : style = ButtonStyle(
      foregroundColor:
      MaterialStateProperty.all<Color?>(const Color(0xff007bff)),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      overlayColor: MaterialStateProperty.all<Color?>(
          const Color(0xff007bff).withOpacity(0.2)),
      shadowColor: MaterialStateProperty.all<Color?>(Colors.black),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: const BorderSide(color: Color(0xff007bff))))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: _KitElevatedButtonWithIconChild(icon: icon, label: label),
      );

  // Button Custom Size
  KitButton.customSize({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    Clip clipBehavior = Clip.none,
    required Widget? child,
    Color kitForegroundColor = Colors.black,
    Color kitBorderColor = Colors.black,
    Color kitOverlayColor = Colors.black45,
    Color kitBackgroundColor = Colors.white,
    Color kitShadowColor = Colors.black,
    double kitRadius = 0.0,
    EdgeInsets? padding,
    double? kitWidth,
    double? kitHeight,
  })  : style = ButtonStyle(
    foregroundColor:
    MaterialStateProperty.all<Color?>(kitForegroundColor),
    backgroundColor:
    MaterialStateProperty.all<Color?>(kitBackgroundColor),
    overlayColor: MaterialStateProperty.all<Color?>(kitOverlayColor),
    shadowColor: MaterialStateProperty.all<Color?>(kitShadowColor),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
          side: BorderSide(color: kitBorderColor),
        )),
    padding: MaterialStateProperty.all<EdgeInsets>(padding as EdgeInsets),
    minimumSize: MaterialStateProperty.all<Size?>(
        Size(kitWidth as double, kitHeight as double)),
  ),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: child,
      );

  KitButton.icon({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    Color kitForegroundColor = Colors.black,
    Color kitBorderColor = Colors.black,
    Color kitOverlayColor = Colors.black45,
    Color kitBackgroundColor = Colors.white,
    Color kitShadowColor = Colors.black,
    double kitRadius = 0.0,
    required Widget icon,
    required Widget label,
  })  : style = ButtonStyle(
      foregroundColor:
      MaterialStateProperty.all<Color?>(kitForegroundColor),
      backgroundColor: MaterialStateProperty.all<Color?>(Colors.white),
      overlayColor: MaterialStateProperty.all<Color?>(kitOverlayColor),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(kitRadius)),
              side: BorderSide(color: kitBorderColor)))),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus ?? false,
        clipBehavior: clipBehavior ?? Clip.none,
        child: _KitElevatedButtonWithIconChild(icon: icon, label: label),
      );

  KitButton.gradientColor(
      {Key? key,
        required VoidCallback? onPressed,
        VoidCallback? onLongPress,
        ValueChanged<bool>? onHover,
        ValueChanged<bool>? onFocusChange,
        ButtonStyle? style,
        FocusNode? focusNode,
        bool autofocus = false,
        Clip clipBehavior = Clip.none,
        required Widget? child,
        double kitRadius = 4.0,
        EdgeInsets? kitPadding = const EdgeInsets.all(5.0),
        double? kitWidth = 200.0,
        double? kitHeight = 50.0,

        // gradient color properties
        required List<Color> kitBackgroundColors,
        required AlignmentGeometry? kitBegin,
        required AlignmentGeometry? kitEnd})
      : style = ButtonStyle(
    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(0.0)),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(kitRadius))),
    ),
  ),
        super(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        onHover: onHover,
        onFocusChange: onFocusChange,
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: kitBackgroundColors,
                  begin: kitBegin as AlignmentGeometry,
                  end: kitEnd as AlignmentGeometry),
              borderRadius: BorderRadius.circular(kitRadius)),
          child: Container(
            padding: kitPadding,
            width: kitWidth,
            height: kitHeight,
            alignment: Alignment.center,
            child: Center(
              child: child,
            ),
          ),
        ),
      );
}

class _KitElevatedButtonWithIconChild extends StatelessWidget {
  const _KitElevatedButtonWithIconChild(
      {Key? key, required this.label, required this.icon})
      : super(key: key);

  final Widget label;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    final double scale = MediaQuery.maybeOf(context)?.textScaleFactor ?? 1;
    final double gap =
    scale <= 1 ? 8 : lerpDouble(8, 4, math.min(scale - 1, 1))!;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[icon, SizedBox(width: gap), Flexible(child: label)],
    );
  }
}