import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'cards/donation_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: null,
      body: createHomePageBody(),
    );
  }

  createHomePageBody() {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder:
            (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 500.0,
              floating: true,
              pinned: false,
              backgroundColor:  Color.fromARGB(255, 215, 245, 248),
              flexibleSpace: FlexibleSpaceBar(
                  background: Hero(
                    tag: 'content',
                    child: Image(
                      image: AssetImage(
                        'assets/images/persons.png'
                        ),
                        fit: BoxFit.fill,
                      ),
                  )
                ),
              ),
          ];
        },
        body: Container(
          color: Color.fromARGB(255, 215, 245, 248),
          child: Column(
            children: <Widget>[
              createContentArea()
            ],
          ),
        )
      ),
    );
  }

  createContentArea() {
    return Expanded(
      flex: 1,
      child: Container(
        margin: const EdgeInsets.fromLTRB(6, 0, 6, 0),
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
            topRight: const Radius.circular(15.0),
            topLeft: const Radius.circular(15.0)
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
        ),
        child: StreamBuilder(
          stream: Firestore.instance
            .collection('donations/eAe3kTi5orO6udLubHA8/donation')
            .snapshots(),    
          builder: (ctx, streamSnapshot){
            if(streamSnapshot.connectionState == ConnectionState.waiting){
              return Center(child: CircularProgressIndicator());
            }
            final documents = streamSnapshot.data.documents;
            return ListView.builder(
              itemCount: documents.length,
              itemBuilder: (ctx, index) => DonationCard(
                documents[index]['group_name'],
                documents[index]['description']
              )
            );
          },
        )
      )
    );
  }

}
