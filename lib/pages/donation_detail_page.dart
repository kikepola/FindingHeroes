import 'package:flutter/material.dart';

class DonationDetailPage extends StatefulWidget {
  @override
  final String project_name;

  const DonationDetailPage(this.project_name);
  @override
  _DonationDetailPageState createState() => _DonationDetailPageState();
}

class _DonationDetailPageState extends State<DonationDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.project_name),
      )
    );
  }
}