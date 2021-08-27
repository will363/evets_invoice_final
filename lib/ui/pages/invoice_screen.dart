import 'package:evets_invoice_final/ui/drawers/drawers.dart';
import 'package:flutter/material.dart';

class InvoiceScreen extends StatefulWidget {
  static String routeName;

  InvoiceScreen({required Key key}) : super(key: key);

  @override
  _InvoiceScreenState createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Invoice',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w300, color: Colors.grey),
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      drawer: createDrawer(context),
    );
  }
}
