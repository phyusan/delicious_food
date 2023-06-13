import 'package:delicious_menu/homepage/service/menu_model.dart';
import 'package:delicious_menu/homepage/service/menu_services.dart';
import 'package:flutter/material.dart';

class Testing extends StatefulWidget {
  const Testing({super.key});

  @override
  State<Testing> createState() => _TestingState();
}

final SqliteService databasesqliteservice = SqliteService();

@override
// void initState() {
//   initState();
//   _sqliteService = SqliteService();
//   _sqliteService.reateItem(Note(id: 0, description: 'Start'));
//   _sqliteService.initializeDB();
//   print('click click');
//   // Add listeners to this class
// }

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade400,
          elevation: 0,
          leading: InkWell(
              onTap: () {
                //  Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back)),
          title: const Text('Create Note'),
        ),
        body: Column(
          children: [
            TextFormField(
              controller: nameController,
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () async {
                //print(_sqliteService);
                await databasesqliteservice
                    .reateItem(Note(id: 1, description: 'Deloy'));
                print(Note);

                setState(() {});
              },
              child: Container(
                  width: 200,
                  height: 50,
                  color: Colors.yellow,
                  child: const Center(child: Text('Add'))),
            ),
            const SizedBox(width: 200, height: 100, child: Text('TT')),
          ],
        ));
  }
}
