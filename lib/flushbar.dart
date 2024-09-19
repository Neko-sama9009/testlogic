import 'package:flutter/material.dart';
import 'colorpalette.dart';
import 'select.dart';
import 'type.dart';


class FlushBar {
  static Map<String, String> FlushBarWithTitle(String size, String type) {
    String messages = '';
    String titles = '';

    if (size == Select.small) {
      if (type == Type.success) {
        messages = 'Success Description Success Description Success Description';
        Select.selectColor = ColorPalette.successColor;
        Select.selectBorderColor = ColorPalette.successBorderColor;
        titles = 'Success Title';
        Select.iconTitleSelect = 'assets/Icon/success.png';
      } else if (type == Type.info) {
        messages = 'Write description here';
        Select.selectColor = ColorPalette.infoColor;
        Select.selectBorderColor = ColorPalette.infoBorderColor;
        titles = 'Info Description';
        Select.iconTitleSelect = 'assets/Icon/info.png';
      } else if (type == Type.warning) {
        messages = 'Warning Description Warning Description Warning Description';
        Select.selectColor = ColorPalette.warningColor;
        Select.selectBorderColor = ColorPalette.warningBorderColor;
        titles = 'Warning Title';
        Select.iconTitleSelect = 'assets/Icon/warning.png';
      } else if (type == Type.error) {
        messages = 'Error Description Error Description Error Description';
        Select.selectColor = ColorPalette.errorColor;
        Select.selectBorderColor = ColorPalette.errorBorderColor;
        titles = 'Error Title';
        Select.iconTitleSelect = 'assets/Icon/error.png';
      }
      Select.messageFontSize = 10;
      Select.messageFontWeight = FontWeight.w400;
      Select.titleFontSize = 12;
      Select.titleFontWeight = FontWeight.w700;
    } else if (size == Select.big) {
      if (type == Type.success) {
        messages = 'Write success description here';
        Select.selectColor = ColorPalette.successColor;
        Select.selectBorderColor = ColorPalette.successBorderColor;
        titles = 'Success Title';
        Select.iconTitleSelect = 'assets/Icon/success.png';
      } else if (type == Type.info) {
        messages = 'Info Description Info Description Info Description';
        Select.selectColor = ColorPalette.infoColor;
        Select.selectBorderColor = ColorPalette.infoBorderColor;
        titles = 'Info Description';
        Select.iconTitleSelect = 'assets/Icon/info.png';
      } else if (type == Type.warning) {
        messages = 'Warning Description Warning Description Warning Description';
        Select.selectColor = ColorPalette.warningColor;
        Select.selectBorderColor = ColorPalette.warningBorderColor;
        titles = 'Warning Title';
        Select.iconTitleSelect = 'assets/Icon/warning.png';
      } else if (type == Type.error) {
        messages = 'Error Description Error Description Error Description';
        Select.selectColor = ColorPalette.errorColor;
        Select.selectBorderColor = ColorPalette.errorBorderColor;
        titles = 'Error Title';
        Select.iconTitleSelect = 'assets/Icon/error.png';
      }
      Select.messageFontSize = 14;
      Select.messageFontWeight = FontWeight.w400;
      Select.titleFontSize = 16;
      Select.titleFontWeight = FontWeight.w700;
    }
    Select.iconMessageSelect = '';
    Select.withSizeBox = 28;

    return {'messages': messages, 'titles': titles};
  }

  static Map<String, String> FlushBarWithoutTitle(String size, String type) {
    String messages = '';
    String titles = '';

    if (size == Select.small) {
      if (type == Type.success) {
        messages = 'Write success description here';
        Select.selectColor = ColorPalette.successColor;
        Select.selectBorderColor = ColorPalette.successBorderColor;
        Select.iconMessageSelect = 'assets/Icon/success.png';
      } else if (type == Type.info) {
        messages = 'Write description here';
        Select.selectColor = ColorPalette.infoColor;
        Select.selectBorderColor = ColorPalette.infoBorderColor;
        Select.iconMessageSelect = 'assets/Icon/info.png';
      } else if (type == Type.warning) {
        messages = 'Write warning description here';
        Select.selectColor = ColorPalette.warningColor;
        Select.selectBorderColor = ColorPalette.warningBorderColor;
        Select.iconMessageSelect = 'assets/Icon/warning.png';
      } else if (type == Type.error) {
        messages = 'Write Error description here';
        Select.selectColor = ColorPalette.errorColor;
        Select.selectBorderColor = ColorPalette.errorBorderColor;
        Select.iconMessageSelect = 'assets/Icon/error.png';
      }
      Select.messageFontSize = 10;
      Select.messageFontWeight = FontWeight.w400;
    } else if (size == Select.big) {
      if (type == Type.success) {
        messages = 'Write success description here';
        Select.selectColor = ColorPalette.successColor;
        Select.selectBorderColor = ColorPalette.successBorderColor;
        Select.iconMessageSelect = 'assets/Icon/success.png';
      } else if (type == Type.info) {
        messages = 'Write description here';
        Select.selectColor = ColorPalette.infoColor;
        Select.selectBorderColor = ColorPalette.infoBorderColor;
        Select.iconMessageSelect = 'assets/Icon/info.png';
      } else if (type == Type.warning) {
        messages = 'Write warning description here';
        Select.selectColor = ColorPalette.warningColor;
        Select.selectBorderColor = ColorPalette.warningBorderColor;
        Select.iconMessageSelect = 'assets/Icon/warning.png';
      } else if (type == Type.error) {
        messages = 'Write error description here';
        Select.selectColor = ColorPalette.errorColor;
        Select.selectBorderColor = ColorPalette.errorBorderColor;
        Select.iconMessageSelect = 'assets/Icon/error.png';
      }
      Select.messageFontSize = 14;
      Select.messageFontWeight = FontWeight.w400;
    }
    Select.iconTitleSelect = '';
    titles = '';
    Select.withSizeBox = 0;

    return {'messages': messages, 'titles': titles};
  }
}