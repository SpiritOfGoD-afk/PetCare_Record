import '/flutter_flow/flutter_flow_util.dart';
import 'notes_widget.dart' show NotesWidget;
import 'package:flutter/material.dart';

class NotesModel extends FlutterFlowModel<NotesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
