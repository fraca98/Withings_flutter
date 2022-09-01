import 'package:flutter/material.dart';
import 'package:withings_flutter/withings_flutter.dart';
import '../utils/strings.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  static const route = '/';
  static const routename = 'HomePage';

  @override
  Widget build(BuildContext context) {
    print('${HomePage.routename} built');
    return Scaffold(
      appBar: AppBar(
        title: Text(HomePage.routename),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                // Authorize the app
                List<String?> tokens = await WithingsConnector.authorize(
                    context: context,
                    clientID: Strings.withingsClientID,
                    clientSecret: Strings.withingsClientSecret,
                    state: 'state',
                    scope: 'user.activity,user.metrics,user.sleepevents',
                    redirectUri: Strings.withingsRedirectUri,
                    callbackUrlScheme: Strings.withingsCallbackScheme);
                print(tokens);
              },
              child: Text('Tap to authorize'),
            ),
            ElevatedButton(
              onPressed: () async {
                List<String?> refTokens = await WithingsConnector.refreshToken(
                    clientID: Strings.withingsClientID,
                    clientSecret: Strings.withingsClientSecret,
                    WithingsRefreshToken: '...');
                print(refTokens);
              },
              child: Text('Refresh token'),
            ),

            ElevatedButton(
              onPressed: () async {
                //Instantiate a proper data manager
                WithingsHeartGetDataManager
                    withingsHeartDataGetManager =
                    WithingsHeartGetDataManager(
                      accessToken: 'fb256e150bdf0d4059f1f7b89cfbb5aa9688b16d',
                );

                /*final getheartdata = await withingsHeartDataGetManager
                    .fetch(WithingsHeartAPIURL.get(
                      accessToken: withingsHeartDataGetManager.accessToken, 
                      signalId: 157847052,

                )) as WithingsHeartGetData; //working*/

                
              },
              child: Text('Test heart'),
            ),
          ],
        ),
      ),
    );
  } //build

} //HomePage