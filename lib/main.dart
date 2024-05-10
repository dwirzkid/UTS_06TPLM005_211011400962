import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  final List<String> titles = [
   'Nike SB Zoom Blazer Mid Premium',
    'Nike Air Zoom Pegasus',
    'Nike ZoomX Vaporfly',
    'Nike Air Force 1 S50',
    'Nike Waffie One'

  ];

  final List<String> subtitles = [
     'Idr 8,795',
    'Idr 9,995',
    'Idr 110,34',
    'Idr 3,345',
    'Idr 8,392'

  ];

  final List<String> imageUrls = [
    'https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png',
    'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?q=80&w=1898&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png',
    'https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png'
  ];

  final List<Color> cardColors = [
    Color.fromARGB(255, 223, 182, 237),
    Colors.orange,
    Color.fromARGB(255, 202, 182, 206),
    Color.fromARGB(255, 215, 192, 215),
    Color.fromARGB(255, 227, 223, 176)
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shoes'),
          actions: [
            CircleAvatar(
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1594922731196-24eda2b9194a?q=80&w=1890&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            ),
            SizedBox(width: 16),
          ],
        ),
        body: ListView.builder(
          padding: EdgeInsets.all(8.0), 
          itemCount: 5, 
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Card(
                elevation: 4, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), 
                ),
                color: cardColors[index],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              titles[index], 
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black, 
                              ),
                            ),
                            SizedBox(height: 40.0),
                            Text(
                              subtitles[index],
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black, 
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Image.network(
                        imageUrls[index],
                        width: 100, 
                        height: 100, 
                        fit: BoxFit.cover, 
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
