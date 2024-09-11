import '/app_component/na_v_b_a_r/na_v_b_a_r_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'processing_packages_widget.dart' show ProcessingPackagesWidget;
import 'package:flutter/material.dart';

class ProcessingPackagesModel
    extends FlutterFlowModel<ProcessingPackagesWidget> {
  ///  State fields for stateful widgets in this page.

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
