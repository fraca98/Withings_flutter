import 'package:flutter/material.dart';
import 'package:withings_flutter/withings_flutter.dart';

class Measures extends StatelessWidget {
  const Measures({super.key});

  final String? accessToken = ''; //put here the accessToken from WithingsCredentials

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () async {
              WithingsMeasureGetMeasDataManager
                  withingsMeasureGetMeasDataManager =
                  WithingsMeasureGetMeasDataManager();
              WithingsMeasureAPIURL withingsMeasureAPIURLGetMeasRange =
                  WithingsMeasureAPIURL.getMeasRange(
                startdate: 1662857663,
                enddate: 1662882863,
                //meastypes: '11', //seems not necessary and useful
                //category: 1,
                accessToken: accessToken!,
              );
              WithingsMeasureGetMeasData getmeasrange =
                  await withingsMeasureGetMeasDataManager
                      .fetch(withingsMeasureAPIURLGetMeasRange); //Working
              print(getmeasrange);
            },
            child: const Text('GetMeasRange')),
        const SizedBox(
          width: 5,
        ),
        ElevatedButton(
            onPressed: () async {
              WithingsMeasureGetMeasDataManager
                  withingsMeasureGetMeasDataManager =
                  WithingsMeasureGetMeasDataManager();
              WithingsMeasureAPIURL withingsMeasureAPIURLGetMeasLastupdate =
                  WithingsMeasureAPIURL.getMeasLastupdate(
                lastupdate: 1662920834,
                //meastypes: '11, 54', //seems not necessary and useful
                //category: 1,
                accessToken: accessToken!,
              );
              WithingsMeasureGetMeasData getmeasupdate =
                  await withingsMeasureGetMeasDataManager
                      .fetch(withingsMeasureAPIURLGetMeasLastupdate); //Working
              print(getmeasupdate);
            },
            child: const Text('GetMeasUpdate')),
        ElevatedButton(
            onPressed: () async {
              WithingsMeasureGetActivityDataManager
                  withingsMeasureGetActivityDataManager =
                  WithingsMeasureGetActivityDataManager();
              WithingsMeasureAPIURL withingsMeasureAPIURLGetActivityRange =
                  WithingsMeasureAPIURL.getActivityRange(
                      startdateymd: '2022-09-08',
                      enddateymd: '2022-09-09',
                      //dataFields: 'hr_average,hr_zone_0', //seems not necessary, same results
                      //offset: ,
                      accessToken: accessToken!);
              WithingsMeasureGetActivityData getactivityrange =
                  await withingsMeasureGetActivityDataManager
                      .fetch(withingsMeasureAPIURLGetActivityRange); //Working
              print(getactivityrange);
            },
            child: const Text('GetRange activity')),
        const SizedBox(
          width: 5,
        ),
        ElevatedButton(
            onPressed: () async {
              WithingsMeasureGetActivityDataManager
                  withingsMeasureGetActivityDataManager =
                  WithingsMeasureGetActivityDataManager();
              WithingsMeasureAPIURL withingsMeasureAPIURLGetActivityLastupdate =
                  WithingsMeasureAPIURL.getActivityLastupdate(
                      lastupdate: 1662335635,
                      //dataFields: 'hr_average,hr_zone_0', //seems not necessary, same results
                      //offset: ,
                      accessToken: accessToken!);
              WithingsMeasureGetActivityData getactivityupate =
                  await withingsMeasureGetActivityDataManager.fetch(
                      withingsMeasureAPIURLGetActivityLastupdate); //Working
              print(getactivityupate);
            },
            child: const Text('GetUpdate activity')),
        ElevatedButton(
            onPressed: () async {
              WithingsMeasureGetIntradayactivityDataManager
                  withingsMeasureGetIntradayactivityDataManager =
                  WithingsMeasureGetIntradayactivityDataManager();

              WithingsMeasureAPIURL withingsMeasureAPIURLGetIntradayactivity =
                  WithingsMeasureAPIURL.getIntradayactivity(
                accessToken: accessToken!,
                startdate: 1662738923,
                enddate: 1662746123,
                //dataFields:
                //'heart_rate', // Gives only these value and not all in the response
              );
              WithingsMeasureGetIntradayactivityData getintradayactivity =
                  await withingsMeasureGetIntradayactivityDataManager.fetch(
                      withingsMeasureAPIURLGetIntradayactivity); //Working
              print(getintradayactivity);
            },
            child: const Text('GetIntradayActivity')),
        ElevatedButton(
            onPressed: () async {
              WithingsMeasureGetWorkoutsDataManager
                  withingsMeasureGetWorkoutsDataManager =
                  WithingsMeasureGetWorkoutsDataManager();
              WithingsMeasureAPIURL withingsMeasureAPIURLGetWorkoutsRange =
                  WithingsMeasureAPIURL.getWorkoutsRange(
                accessToken: accessToken!,
                startdateymd: '2022-09-09',
                enddateymd: '2022-09-14',
                //offset: , //Not necessary: use it if in the previous response more = true and insert here the value of offset
                //dataFields: 'calories, intensity', //Not necessary
              );
              WithingsMeasureGetWorkoutsData getworkoutrange =
                  await withingsMeasureGetWorkoutsDataManager
                      .fetch(withingsMeasureAPIURLGetWorkoutsRange);
              print(getworkoutrange);
            },
            child: const Text('GetWorkoutRange')),
        const SizedBox(
          width: 10,
        ),
        ElevatedButton(
            onPressed: () async {
              WithingsMeasureGetWorkoutsDataManager
                  withingsMeasureGetWorkoutsDataManager =
                  WithingsMeasureGetWorkoutsDataManager();
              WithingsMeasureAPIURL withingsMeasureAPIURLGetWorkoutsLastupdate =
                  WithingsMeasureAPIURL.getWorkoutsLastupdate(
                accessToken: accessToken!,
                lastupdate: 1662608537,
                //offset: , //Not necessary: use it if in the previous response more = true and insert here the value of offset
                //dataFields: 'calories, intensity', //Not necessary
              );
              WithingsMeasureGetWorkoutsData getworkoutupdate =
                  await withingsMeasureGetWorkoutsDataManager
                      .fetch(withingsMeasureAPIURLGetWorkoutsLastupdate);
              print(getworkoutupdate);
            },
            child: const Text('GetWorkoutUpdate')),
      ],
    );
  }
}