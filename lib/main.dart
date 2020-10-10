import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'data',
      home: HomeScreen(),
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(textTheme: TextTheme(title: AppBarTextStyle()))),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hello',
          style: GoogleFonts.getFont('Roboto'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(
              "https://images.pexels.com/photos/1066116/pexels-photo-1066116.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
          TextSection("Summary 1", "Something 1"),
          TextSection("Summary 2", "Something 2"),
          TextSection("Summary 3", "Something 3"),
        ],
      ),
    );
  }
}

class ImageBanner extends StatelessWidget {
  final String _urlpath;

  ImageBanner(this._urlpath);
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(
        height: 200.0,
      ),
      decoration: BoxDecoration(color: Colors.grey),
      child: Image.network(
        _urlpath,
        fit: BoxFit.cover,
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  final String _body;
  final String _title;
  static const double _hpad = 16.0;
  TextSection(this._title, this._body);
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 32.0, _hpad, 4.0),
            child: Text(
              _title,
              style: GoogleFonts.getFont('Roboto'),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 10.0, _hpad, _hpad),
            child: Text(
              _body,
              style: GoogleFonts.getFont('Roboto'),
            ),
          )
        ]);
  }
}
