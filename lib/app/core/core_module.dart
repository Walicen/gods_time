import 'package:flutter_modular/flutter_modular.dart';

import '../resources/resources.dart';
import 'core.dart';

class CoreModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => CustomDio(Urls.baseUrl)),
    Bind.singleton((i) => HttpClient(i.get<CustomDio>())),
  ];

  @override
  final List<ModularRoute> routes = [];
}
