import 'dart:io';

import 'package:global_configuration/global_configuration.dart';
import 'dart:io' show Platform;

/**
 *
 */
class PetClinic {
  /**
   *
   */
  late String _username;

  /**
   *
   */
  late String _password;

  /**
   *
   */
  late String _address;

  /**
   *
   */
  PetClinic() {
    _username = GlobalConfiguration().getString("username");
    _password = GlobalConfiguration().getString("password");

    String address = GlobalConfiguration().getString("address");

    String localhost_from_ios = 'localhost';
    String localhost_from_android = '10.0.2.2';

    if (address.contains(localhost_from_ios)) { //localhost
      if (Platform.isAndroid) { //android emulator uses 10.0.2.2 as localhost
        _address = address.replaceAll(localhost_from_ios, localhost_from_android);
      } else { //ios, macos use 127.0.0.1
        _address = address;
      }
    } else { //production env
      _address = address;
    }
  }

  String get address => _address;

  String get password => _password;

  String get username => _username;
}
