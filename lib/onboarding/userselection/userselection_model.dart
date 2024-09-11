import '/flutter_flow/flutter_flow_util.dart';
import 'userselection_widget.dart' show UserselectionWidget;
import 'package:flutter/material.dart';

class UserselectionModel extends FlutterFlowModel<UserselectionWidget> {
  ///  Local state fields for this page.

  bool sellerChecked = false;

  bool buyerChecked = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for buyer widget.
  bool? buyerValue;
  // State field(s) for seller widget.
  bool? sellerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
