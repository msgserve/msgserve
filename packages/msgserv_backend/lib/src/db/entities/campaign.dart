import 'package:meta/meta.dart';
import 'package:openapi_base/openapi_base.dart';

class Project {
  Project({
    @required this.uuid,
    @required this.apiKey,
    @required this.jwtConfig,
  });

  final ApiUuid uuid;
  final String apiKey;
  final List<ProjectJwt> jwtConfig;
}

class ProjectJwt {
  ProjectJwt({
    @required this.property,
    @required this.publicKey,
  });

  final String property;
  final String publicKey;
}

class Campaign {
  Campaign({
    @required this.voucherMaxCount,
    @required this.voucherPerSubject,
    @required this.redemptionExpression,
    @required this.subjectExpression,
  });

  final int voucherMaxCount;
  final int voucherPerSubject;
  final String redemptionExpression;
  final String subjectExpression;
}

class Message {
  Message({
    @required this.key,
    @required this.title,
    @required this.body,
    @required this.expression,
  });

  final String key;
  final String title;
  final String body;
  final String expression;
}
