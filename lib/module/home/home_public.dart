library home;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:daily_history/widget/widget.dart';
import 'package:timeline_tile/timeline_tile.dart';

part 'home_view.dart';
part 'home_model.dart';
part 'home_state.dart';

ChangeNotifierProvider<_HomeModel> createHome() {
  return ChangeNotifierProvider<_HomeModel>(
    create: (_) => _HomeModel(),
    child: _HomeView(),
  );
}
