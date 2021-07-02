import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chatScreen extends StatefulWidget {
  const chatScreen({Key? key}) : super(key: key);

  @override
  _chatScreenState createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {
  int _selectedIndex = 0;
  int index = 0;
  List<Widget> _widgetOptions = <Widget>[
    ListView(),
    Text('Contact'),
    Text('Work'),
    Text('Message'),
  ];
  void _onItemTap(int index) {
    setState(() {});
    _selectedIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                Icons.arrow_back,
                color: Colors.blueGrey,
              ),
            ),
            Container(
              height: 35,
              width: 250,
              padding: EdgeInsets.only(top: 8, left: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Search',
                ),
              ),
            ),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: GestureDetector(
                onTap: () {
                  print('pressed');
                },
                child: Icon(
                  Icons.add,
                  color: Colors.blueGrey,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black12),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 30,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      child: Text(
                        'HI',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.blueGrey,
                    thickness: 2,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Text(
                        'HI',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blueGrey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('Chat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_page_outlined),
            title: Text('Contact'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            title: Text('Work'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.doorbell),
            title: Text('Notification'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}