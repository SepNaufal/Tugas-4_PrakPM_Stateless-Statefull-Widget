import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(
        name: "Teknik Informatika",
        year: 2026,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final String name;
  final int year;

  // constructor
  MyApp({required this.name, required this.year});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Pertemuan 4"),
      ),
      body: NumberScreen(),
      );
  }
}

class NumberScreen extends StatefulWidget{
  //state
  @override
  _NumberScreenState createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen>{
  String name = "Jalmi Hideung";
  String harga = "Harga :";
  String ttl = "Total :";
  String photo = "https://fastly.picsum.photos/id/22/367/267.jpg?hmac=YbcBwpRX0XOz9EWoQod59ulBNUEf18kkyqFq0Mikv6c";
  int qyt = 0;
  int price = 2000000;
  int total = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          Card(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    flex: 20,
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(name, style :TextStyle(fontWeight: .bold
                        ),
                        ),
                        Image.network(
                          photo,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        Text(harga, style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(price.toString()),
                        Text(ttl, style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(total.toString())
                      ]
                  )
                  ),
                  Expanded(
                    flex: 6,
                    child: Row(
                      children: [
                        Text(qyt.toString()),
                        IconButton(icon: Icon(Icons.add), onPressed: () {
                          setState(() {
                            qyt++;
                            total=price * qyt;
                          });
                        }),
                        IconButton(icon: Icon(Icons.remove), onPressed: () {
                          setState(() {
                            if (qyt > 0) qyt--;
                            total=price * qyt;
                          });
                        }),
                      ]

                    )
                  )
                ]
              )
            )
          )
        ]
      )
    );
  }
}