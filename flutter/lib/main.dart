// Copyright (c) 2020, the Flutter PetClinicApp project authors.  Please see
// the AUTHORS file for details. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file

import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';

import 'petclinic_app.dart';

/**
 *
 */
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GlobalConfiguration().loadFromPath("assets/cfg/app_settings.json");
  runApp(PetClinicApp());
}
