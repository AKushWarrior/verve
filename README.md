# Verve

A Flutter theming solution, building on modern Material and Scandinavian
 principles. This package contains prebuilt theme swatches, as well as 
 opinionated Widgets designed to work with provided themes.

### Swatches

To access Verve's inbuilt swatches, use the method 
`verveSwatch({@required VerveTheme theme, ThemeData base})`. See 
**Working Example** to see how to do this correctly.

This returns a ThemeData, which you can use as the `theme` attribute of MaterialApp.

The available `VerveTheme`s are detailed in **Themes** below.

When you call `verveSwatch()`, verveSwatch returns a modified version of 
`base` with modified fonts, colors, Widget styling, and brightness attributes. 
If `base` is null, it will return a ThemeData with just these attributes.

Verve uses the [Metropolis](https://github.com/chrismsimpson/Metropolis) 
font, due to its clean, geometric nature. This font is free of licenses
and is included in this package. Verve also updates the Flutter font
defaults to the Material Design 2018 specification, as Flutter uses
the 2014 version currently.

verveSwatch also edits some components (Buttons, Cards, FABs) slightly
to look nicer stylistically. These are somewhat opinionated, but you can
always override them.

### Themes
Verve has 11 Swatches, which can be used to auto-style your Flutter apps.
Each cherry-picks 3 colors from a popular (Adobe Color) palette and 
transports it to Flutter. You can see each of them below in their
Adobe palette form, and the specific `Color`s used are included.

For some swatches, you may have to manually edit text colors. I am looking
for a workaround to this...

##### Material (`VerveTheme.material`)
* Adobe Color: N/A, it's Material colors.
* Ships with Flutter, only typography changes made.
* Widgets and Colors are **not** styled automatically.
##### Dark Mode (`VerveTheme.darkMode`)
* Adobe Color: N/A, it's Material Dark colors.
* Ships with Flutter, only typography changes made.
* Widgets and Colors are **not** styled automatically.
* May look somewhat strange, since this is experimental. Use Twilight if you are having issues.
##### Navy (`VerveTheme.navy`)
* Adobe Color: [KnotJustNautical](https://color.adobe.com/KnotJustNautical-color-theme-2565165)
* `Color`s:
    - Main: `Color(0xff2C3E50)`
    - Accent: `Color(0xffFC4349)`
    - Background: `Color(0xffffffff)`
##### Blue (`VerveTheme.blue`)
* Adobe Color: [Water](https://color.adobe.com/water-color-theme-13663112)
* `Color`s:
    - Main: `Color(0xff2787B7)`
    - Accent: `Color(0xff024669)`
    - Background: `Color(0xffffffff)`
##### Purple (`VerveTheme.purple`)
* Adobe Color: [Tema de Cores](https://color.adobe.com/Tema-de-cores-75-color-theme-13709296)
* `Color`s:
    - Main: `Color(0xff73305B)`
    - Accent: `Color(0xff272640)`
    - Background: `Color(0xffffffff)`
##### Beach (`VerveTheme.beach`)
* Adobe Color: [Sandy Stone](https://color.adobe.com/sandy-stone-beach-ocean-diver-color-theme-15325)
* `Color`s:
    - Main: `Color(0xff046380)`
    - Accent: `Color(0xffE6E2AF)`
    - Background: `Color(0xffffffff)`
##### Garden (`VerveTheme.garden`)
* Adobe Color: [Summer Garden](https://color.adobe.com/Copy-of-summer-garden-color-theme-11113033)
* `Color`s:
    - Main: `Color(0xff4BB5C1)`
    - Accent: `Color(0xffB5E655)`
    - Background: `Color(0xffffffff)` 
##### Sepia (`VerveTheme.sepia`)
* Adobe Color: [Aviator](https://color.adobe.com/en/Aviator-color-theme-1126690)
* `Color`s:
    - Main: `Color(0xff1A9481)`
    - Accent: `Color(0xff9BCC93)`
    - Background: `Color(0xffffffff)` 
##### Twilight (`VerveTheme.twilight`)
* Adobe Color: [Quail Vista Night](https://color.adobe.com/Quail-Vista-Night-color-theme-13484149/)
* `Color`s:
    - Main: `Color(0xff192853)`
    - Accent: `Color(0xffC9D2D9)`
    - Background: `Color(0xff0C1A3D)` 
##### Amati (`VerveTheme.amati`)
* Adobe Color: [Madame Amati](https://color.adobe.com/Madam-Amati-color-theme-13663575)
* `Color`s:
    - Main: `Color(0xff45757D)`
    - Accent: `Color(0xff27455C)`
    - Background: `Color(0xffffffff)` 
##### Venice (`VerveTheme.venice`)
* Adobe Color: [Sleep Sense](https://color.adobe.com/Sleep-Sense-color-theme-color-theme-13839732)
* `Color`s:
    - Main: `Color(0xff0396A6)`
    - Accent: `Color(0xffF25E5E)`
    - Background: `Color(0xffffffff)` 
    
### Working example
```dart
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
      //Garden verveSwatch
      theme: verveSwatch(theme: VerveTheme.garden),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Verve!'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              //Generator for String based ListView
              //Uses rounded, auto-styled card.
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
                            //Title theme in styled card
                            style: Theme.of(context)
                                .textTheme
                                .title
                                .copyWith(color: Colors.black),
                          )),
                      Container(
                          padding: EdgeInsets.fromLTRB(0.0, 2.5, 0.0, 5.0),
                          child: Text(
                            subtitles[i],
                            //Subtitle theme in styled card
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
                  //Random callback to make sure the button theming is enabled
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

```

---
###### Verve, a Flutter design library.

###### ©2019 Aditya Kishore

###### Licensed under the Mozilla Public License 2.0
