import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String name;

  HomeScreen({ Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /* appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                BlocProvider.of<AuthenticationBloc>(context).add(LoggedOut());
              },
            )
          ],
        ), */
        body: Container(
      child: Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.white,
          title: Text('Company Detail'),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.verified),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width / 2,
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            TextButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.add_a_photo),
                              label: Text('logo'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width / 2,
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            TextButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.add_circle),
                              label: Text('signature'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 60.0,
                            width: MediaQuery.of(context).size.width,
                            child: TextFormField(
                              decoration: InputDecoration(hintText: 'Name'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 60.0,
                            width: MediaQuery.of(context).size.width,
                            child: TextFormField(
                              decoration: InputDecoration(hintText: 'Email'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 60.0,
                            width: MediaQuery.of(context).size.width,
                            child: TextFormField(
                              decoration:
                                  InputDecoration(hintText: 'Phone Number'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 60.0,
                            width: MediaQuery.of(context).size.width,
                            child: TextFormField(
                              decoration: InputDecoration(hintText: 'Address'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50.0,
                            width: MediaQuery.of(context).size.width,
                            child: DropdownButton<dynamic>(
                              items: <DropdownMenuItem>[
                                DropdownMenuItem(
                                  value: 'choix 1',
                                  child: Text('Cameroun (XAF)'),
                                ),
                                DropdownMenuItem(
                                  value: 'choix 2',
                                  child: Text('Europe (EURO)'),
                                ),
                              ],
                              onChanged: (value) => {},
                            ),

                            /* TextFormField(
                              decoration: InputDecoration(hintText: 'Currency'),
                              
                            ) */
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 60.0,
                            width: MediaQuery.of(context).size.width,
                            child: TextFormField(
                              decoration:
                                  InputDecoration(hintText: 'Date Format'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 60.0,
                            width: MediaQuery.of(context).size.width,
                            child: TextFormField(
                              decoration:
                                  InputDecoration(hintText: 'Invoice Number'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    )
        /* MaterialApp(
        home: InvoiceScreen(),
        routes: {
          Routes.invoice: (context) => InvoiceScreen(),
          Routes.Customer: (context) => CustomerScreen(),
          Routes.Item: (context) => ItemScreen(),
        },
        debugShowCheckedModeBanner: false,
      ), */
        /* Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: Text('Bienvenue $name!'),
          )
        ],
      ), */
        );
  }
}
