import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> Names = <String>[
    'mohamad',
    'ali',
    'abas',
    'huseen',
    'fais',
    'flah',
    'khalid',
  ];
  final List<String> wishes = <String>[
    'thanx for the care of my patient',
    'thnx for the services of the hospital ',
    'i give this hospital AAA',
    'doctor hohn is one of the best thanks for him ',
    'the dinning roon in the hospital looks very good',
    'the hospital have excellance care for the patient',
    'the hospital have magnifecent facilities thanks for the extra care of my father ',
  ];
  final List<String> times = <String>[
    'jan/10 -2020',
    'Feb / 12 / 20202',
    'Jul / 30 / 20202',
    'Des / 14 / 2020',
    'March / 20 /2020',
    'Nov / 22 / 2020',
    'Jul / 24 / 2020',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          title: Center(
            child: Text(
              'Wish',
              style: TextStyle(color: Colors.black),
            ),
          ),
          elevation: 50,
          backgroundColor: Colors.grey,
        ),
      ),
      backgroundColor: Colors.grey,
      body: ListView.builder(
          padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
          itemCount: Names.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                // height: 150,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Card(
                      color: Colors.white,
                      child: ListTile(
                        leading: Image.asset(
                          'assets/logo.jpg',
                          height: 70,
                          width: 70,
                        ),
                        title: Text(
                          Names[index],
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(times[index]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 20, 0, 30),
                      child: Text(
                        wishes[index],
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          FlatButton.icon(
                            onPressed: () {
                              Fluttertoast.showToast(
                                msg: "element is deleted!!",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0,
                              );
                            },
                            icon: Icon(Icons.delete),
                            label: Text("Delete"),
                          ),
                          FlatButton.icon(
                            onPressed: () {
                              Fluttertoast.showToast(
                                msg: "Update!",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                backgroundColor: Colors.green,
                                textColor: Colors.white,
                                fontSize: 16.0,
                              );
                            },
                            icon: Icon(Icons.update),
                            label: Text("Update"),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          FlatButton.icon(
                            onPressed: () {
                              Fluttertoast.showToast(
                                msg: "More!!",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                backgroundColor: Colors.grey,
                                textColor: Colors.white,
                                fontSize: 16.0,
                              );
                            },
                            icon: Icon(Icons.more_vert),
                            label: Text("More"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Fluttertoast.showToast(
            msg: "Add Wish!!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.pink,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        },
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
