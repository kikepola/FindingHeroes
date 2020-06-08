import 'package:flutter/material.dart';


class HomeReciversPage extends StatefulWidget {
  final String user_name;

  const HomeReciversPage(this.user_name);
  @override
  _HomeReciversPageState createState() => _HomeReciversPageState();
}

class _HomeReciversPageState extends State<HomeReciversPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _createUserArea(),
    );
  }
  
  _createUserArea() {
    return Container(
      color: Color.fromARGB(255, 112, 167, 169),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Center(
              child: Image(        
                width: 200,
                image: AssetImage("assets/images/logo.png"),              
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(        
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                )
              ),
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Column(
                children: <Widget>[
                  _createWelcomeUser(),
                  _createUsrProjectsArea()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
                                    
  _createWelcomeUser() {
    return Expanded(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
        height: 100,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: <Widget>[
            Text(
              widget.user_name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w800
              ),
            ),
            Text(
              ", seja bem vindo!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w800
              ),
            ),
          ],
        )
      ),
    );
  }
                  
  _createUsrProjectsArea() {
    return Expanded(
      flex: 7,
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 150, 0, 0),
        child: Column(
          children: <Widget>[
            Text(
              "Você não tem nenhum projeto para receber doações"
            ),             
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 112, 167, 169),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Container(               
                child: Text(
                  "Adicionar projeto",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}

 