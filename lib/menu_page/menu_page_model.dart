import '/components/body_content_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'menu_page_widget.dart' show MenuPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenuPageModel extends FlutterFlowModel<MenuPageWidget> {
  ///  Local state fields for this page.

  bool? showMenu;

  List<int> listField = [];
  void addToListField(int item) => listField.add(item);
  void removeFromListField(int item) => listField.remove(item);
  void removeAtIndexFromListField(int index) => listField.removeAt(index);
  void insertAtIndexInListField(int index, int item) =>
      listField.insert(index, item);
  void updateListFieldAtIndex(int index, Function(int) updateFn) =>
      listField[index] = updateFn(listField[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for bodyContent component.
  late BodyContentModel bodyContentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bodyContentModel = createModel(context, () => BodyContentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    bodyContentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
