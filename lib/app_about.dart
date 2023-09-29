import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppAbout extends StatefulWidget {
  const AppAbout({super.key});

  @override
  State<AppAbout> createState() => _AboutState();
}

class _AboutState extends State<AppAbout> {
  String _version = '';

  @override
  Widget build(BuildContext context) {
    // The reason for the package-info-plus dependency.  And yes... it requires
    // promises to look it up.
    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      setState(() {
        _version = packageInfo.version;
      });
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange.shade600,
        title: const Text("Keyman Browser"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Keyman for iPhone and iPad 16.0 Help : $_version\n',
               style: TextStyle(
              fontSize: 40.0,
              color:Colors.red
               )
            ),
            Text('About Keyman',
            style: TextStyle(
              fontSize: 20.0,
              color:Colors.red
            ),

            ),
            Text('-Welcome to Keyman \n'
                '- What is New \n'
                '- System Requirement \n'
                '- Versin History'), 
          ],
        ),
      ),
    );
  }
}