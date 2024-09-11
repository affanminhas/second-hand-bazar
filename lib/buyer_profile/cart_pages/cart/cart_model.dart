import '/app_component/na_v_b_a_r/na_v_b_a_r_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart_widget.dart' show CartWidget;
import 'package:flutter/material.dart';

class CartModel extends FlutterFlowModel<CartWidget> {
  ///  Local state fields for this page.

  double? productPrice;

  double cartTotal = 0.0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Cart widget.
  List<CartRecord>? cartQuery;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<CartRecord>? deleteCartQuery;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<CartRecord>? deleteQuery;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<CartRecord>? updateQuery;
  // Model for NaVBAR component.
  late NaVBARModel naVBARModel;

  @override
  void initState(BuildContext context) {
    naVBARModel = createModel(context, () => NaVBARModel());
  }

  @override
  void dispose() {
    naVBARModel.dispose();
  }
}
