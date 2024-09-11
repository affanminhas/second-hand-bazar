import '/app_component/na_v_b_a_r/na_v_b_a_r_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'buyer_home_widget.dart' show BuyerHomeWidget;
import 'package:flutter/material.dart';

class BuyerHomeModel extends FlutterFlowModel<BuyerHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
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
