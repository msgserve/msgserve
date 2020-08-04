import 'package:meta/meta.dart';
import 'package:package_info/package_info.dart';

class MsgServOpts {
  MsgServOpts({this.endpointUrl});

  /// base path to the API endpoint.
  /// Must not end in '/'
  final String endpointUrl;
}

class MsgServPackageInfo {
  const MsgServPackageInfo({
    @required this.appName,
    @required this.packageName,
    @required this.version,
    @required this.buildNumber,
  })  : assert(appName != null),
        assert(packageName != null),
        assert(version != null),
        assert(buildNumber != null);

  MsgServPackageInfo.fromPackageInfo(PackageInfo pi)
      : this(
          appName: pi.appName,
          packageName: pi.packageName,
          version: pi.version,
          buildNumber: pi.buildNumber,
        );

  final String appName;
  final String packageName;
  final String version;
  final String buildNumber;
}
