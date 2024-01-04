import 'package:flutter/material.dart';

import 'package:irregular_verbs/widgets/verbs_list.dart';

class VerbList extends StatelessWidget {
  const VerbList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: VerbsList(),
    );
  }
}
