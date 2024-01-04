import 'package:flutter/material.dart';

import 'package:irregular_verbs/models/verb.dart';
import 'package:irregular_verbs/services/verb_service.dart';
import 'package:irregular_verbs/widgets/verb_cell.dart';

class VerbsList extends StatelessWidget {
  VerbsList({super.key});

  Future<List<String>> loadVerbForms() async {
    List<Verb> verbs = await loadVerbs();
    List<String> verbForms = [];
    for (var verb in verbs) {
      verbForms.add(verb.base);
      verbForms.add(verb.past);
      verbForms.add(verb.participle);
    }
    return verbForms;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<String>>(
      future: loadVerbForms(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (snapshot.hasData) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return VerbCell(verbForm: snapshot.data![index]);
            },
          );
        } else {
          return Text('No data found');
        }
      },
    );
  }
}
