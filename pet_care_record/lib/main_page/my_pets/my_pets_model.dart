import '/components/card_component/card_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'my_pets_widget.dart' show MyPetsWidget;
import 'package:flutter/material.dart';

class MyPetsModel extends FlutterFlowModel<MyPetsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for cardComponent component.
  late CardComponentModel cardComponentModel1;
  // Model for cardComponent component.
  late CardComponentModel cardComponentModel2;
  // Model for cardComponent component.
  late CardComponentModel cardComponentModel3;
  // Model for cardComponent component.
  late CardComponentModel cardComponentModel4;
  // Model for cardComponent component.
  late CardComponentModel cardComponentModel5;
  // Model for cardComponent component.
  late CardComponentModel cardComponentModel6;

  @override
  void initState(BuildContext context) {
    cardComponentModel1 = createModel(context, () => CardComponentModel());
    cardComponentModel2 = createModel(context, () => CardComponentModel());
    cardComponentModel3 = createModel(context, () => CardComponentModel());
    cardComponentModel4 = createModel(context, () => CardComponentModel());
    cardComponentModel5 = createModel(context, () => CardComponentModel());
    cardComponentModel6 = createModel(context, () => CardComponentModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    cardComponentModel1.dispose();
    cardComponentModel2.dispose();
    cardComponentModel3.dispose();
    cardComponentModel4.dispose();
    cardComponentModel5.dispose();
    cardComponentModel6.dispose();
  }
}
