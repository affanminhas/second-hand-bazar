import '/app_component/na_v_b_a_r/na_v_b_a_r_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'all_products_page_widget.dart' show AllProductsPageWidget;
import 'package:flutter/material.dart';

class AllProductsPageModel extends FlutterFlowModel<AllProductsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for NaVBAR component.
  late NaVBARModel naVBARModel;

  @override
  void initState(BuildContext context) {
    naVBARModel = createModel(context, () => NaVBARModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    naVBARModel.dispose();
  }
}
