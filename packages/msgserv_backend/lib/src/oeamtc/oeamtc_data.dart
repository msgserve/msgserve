import 'package:msgserv_backend/src/db/entities/campaign.dart' as c;
import 'package:msgserv_shared/msgserv_shared.dart';
import 'package:msgserv_shared/msgserv_shared.dart';
import 'package:msgserv_shared/msgserv_shared.dart';
import 'package:openapi_base/openapi_base.dart';

/// Configuration which only apply for oeamtc voucher.
/// In the future this should be in the database.

void createConfig() {
  final p = c.Project(
    uuid: ApiUuid.parse('382aa309-0c8d-4767-9003-2fe2a2a7255c'),
    apiKey: 'todo',
    jwtConfig: [
      c.ProjectJwt(
        property: 'jwt',
        publicKey: 'TODO',
      ),
    ],
  );
  final eniCampaign = c.Campaign(
    voucherMaxCount: 1000,
    voucherPerSubject: 1,
    redemptionExpression: '',
    subjectExpression: '',
  );
  final dialogs = [
    MessageBanner(
      uuid: null,
      body: null,
      expression: null,
      actions: [],
      key: null,
    ),
  ];
  final messages = [
    c.Message(
      key: 'teaser',
      title: 'Gewinne ENI Gutscheine im September',
      body: 'TODO',
      expression: r'''
        context.instanceKey = 'teaser' &&
          now() < date('2020-09-01+00:00+2:00') &&
          now() > date('2020-08-15+00:00+2:00') &&
          (context.jwt.age != null && context.jwt.age < 20)
      ''',
    ),
    c.Message(
      key: 'gratulation',
      title: 'Gratulation!',
      body:
          'Sie haben einen ENI Gutschein gewonnen. Sie erhalten ihn per Post.',
      expression: r'''
        context.instanceKey = 'teaser' &&
          state.voucherReceivedCount > 0
      ''',
    ),
  ];
}
