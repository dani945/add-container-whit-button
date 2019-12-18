import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.blue,
    ),
    debugShowCheckedModeBanner: false,
    home: ListData(),
  ));
}

class ListData extends StatefulWidget {
  @override
  _ListDataState createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  Divider _divider = Divider(height: 0.0, color: Colors.grey);
var tambah = <Container>[];
  
  @override
  void initState() {
    super.initState();
  setState(() {
      
        tambah = [];
      
    });
  }
  
  @override
  Widget build(BuildContext context) { 
      
    
       return DefaultTabController(
        // Added
        length: 5, // Added
        initialIndex: 0,
        child: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text('LEAD NAME / NEW LEAD'),
              ),
              // onTap: () => {showPopup(context, _popupBody())},

              actions: <Widget>[
                Icon(Icons.save),
                SizedBox(width: 18),
              ],
            ),
          floatingActionButton: FloatingActionButton(
            heroTag: 'add',
            onPressed: () {
              setState(() {
                _klik();
              });
            },
            child: Icon(Icons.add),
          ),
            body: _tes()));             
    
  }
  
  
  _klik(){
    tambah.add(
          Container()
    );
  }
  
  _tes(){
    return Column(
      children: <Widget>[        
      _divider,
          Padding(
            padding: EdgeInsets.only(top: 5.0, left: 10.0, bottom: 5.0),
            child: Text(
              'Phone',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          _divider,
        Column(
      children: tambah.map((coba){
        return Column(
          children: <Widget>[
          Container(
            color: Colors.white,
            child: ListTile(
              leading: Text('Work Phone', style: TextStyle(color:     Colors.black),),
              title: TextField(
                      style: TextStyle(
                          color: Colors.grey[400]),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Work Phone',
                        hintStyle: TextStyle(color: Colors.blue),
                      ),
                    )
            ),
          ),
          _divider,]);
      }).toList()),
          Container(
            color: Colors.white,
            child: ListTile(
              title: InkWell(
              child: Text('Add', style: TextStyle(color: Colors.blue),),
              onTap: (){                
                setState(() {
                _klik();
              });
              },
              )
            ),
          ),  
      
        ]);
  }
}
