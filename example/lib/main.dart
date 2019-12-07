import 'package:flutter/material.dart';
import 'package:verve/verve.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List titles = [
      'This is a list',
      'Verve adds some flair',
      'Verve can make you happy',
      'Verve has more sane theming',
      'The Metropolis font is used',
    ];
    List subtitles = [
      'made with a Verve theme.',
      'to boring old ListView.builder.',
      'if you choose to use it.',
      'defaults than other solutions.',
      'because it is nice aesthetically.',
    ];
    return MaterialApp(
      title: 'Verve Example',
      //Navy verveSwatch
      theme: verveSwatch(theme: VerveTheme.garden),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Verve!'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              //Generator for String based ListView
              //Uses rounded verveCards.
              ListView.builder(
                shrinkWrap: true,
                itemCount: titles.length,
                itemBuilder: (BuildContext context, int i) {
                  return Card(
                      child: Column(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                          child: Text(
                            titles[i],
                            style: Theme.of(context)
                                .textTheme
                                .title
                                .copyWith(color: Colors.black),
                          )),
                      Container(
                          padding: EdgeInsets.fromLTRB(0.0, 2.5, 0.0, 5.0),
                          child: Text(
                            subtitles[i],
                            style: Theme.of(context)
                                .textTheme
                                .subtitle
                                .copyWith(color: Colors.black),
                          )),
                    ],
                  ));
                },
              ),
              //Rounded-flat button.
              RaisedButton(
                  onPressed: () {
                    titles = ["x", "x"];
                  },
                  child: Text('CLICK')),
            ],
          ),
        ),
      ),
    );
  }
}
