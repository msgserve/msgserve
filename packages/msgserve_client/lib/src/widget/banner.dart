import 'package:flutter/widgets.dart';
import 'package:msgserve_client/src/msgserv_bloc.dart';

class MsgServBanner extends StatelessWidget {
  const MsgServBanner({
    Key? key,
    required this.msgServBloc,
    required this.instanceKey,
    this.context = const <String, Object>{},
  }) : super(key: key);
  final MsgServBloc msgServBloc;
  final String instanceKey;
  final Map<String, Object> context;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
