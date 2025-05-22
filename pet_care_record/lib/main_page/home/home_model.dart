import '/components/card_component/card_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for cardComponent component.
  late CardComponentModel cardComponentModel1;
  // Model for cardComponent component.
  late CardComponentModel cardComponentModel2;
  // Model for cardComponent component.
  late CardComponentModel cardComponentModel3;
  // Model for cardComponent component.
  late CardComponentModel cardComponentModel4;

  @override
  void initState(BuildContext context) {
    cardComponentModel1 = createModel(context, () => CardComponentModel());
    cardComponentModel2 = createModel(context, () => CardComponentModel());
    cardComponentModel3 = createModel(context, () => CardComponentModel());
    cardComponentModel4 = createModel(context, () => CardComponentModel());
  }

  @override
  void dispose() {
    cardComponentModel1.dispose();
    cardComponentModel2.dispose();
    cardComponentModel3.dispose();
    cardComponentModel4.dispose();
  }
}
