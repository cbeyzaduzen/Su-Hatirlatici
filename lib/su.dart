import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

// ignore: must_be_immutable
class SuPage extends StatelessWidget {
  var myController;

  // receive data from the FirstScreen as a parameter
  SuPage({this.myController});

  get mainAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    double deger = double.parse(myController);
    double yenideger = deger * (0.033);
    String fix = yenideger.toStringAsFixed(1);
    double maxDeger = yenideger * (1000);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
      ),
      backgroundColor: Colors.blue[50],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          RichText(
            text: TextSpan(children: [
              WidgetSpan(
                  child: Icon(
                Icons.local_drink,
                size: 30,
              )),
              TextSpan(
                  text: 'GÜNLÜK İÇMENİZ GEREKEN SU MİKTARI: ',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  )),
              TextSpan(
                  text: '$fix' + 'L',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                    fontSize: 30,
                  )),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: TextField(
                keyboardType: TextInputType.number,
                cursorColor: Colors.blue,
                textAlign: TextAlign.center,
                // ignore: deprecated_member_use
                inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                    hintText:
                        'ml cinsinden bugün tükettiğiniz su miktarını giriniz ',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))))),
          ),
          Text('1 Su Bardağı : 200ml'),
          Text('1 Şişe Su : 500ml'),
          Text('1 Büyük Şişe Su : 1500ml'),
          Center(
            child: SfRadialGauge(axes: <RadialAxis>[
              RadialAxis(
                ticksPosition: ElementsPosition.outside,
                labelsPosition: ElementsPosition.outside,
                minorTicksPerInterval: 5,
                axisLineStyle: AxisLineStyle(
                  thicknessUnit: GaugeSizeUnit.factor,
                  thickness: 0.1,
                ),
                axisLabelStyle:
                    GaugeTextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                radiusFactor: 0.97,
                majorTickStyle: MajorTickStyle(
                    length: 0.05,
                    thickness: 2,
                    lengthUnit: GaugeSizeUnit.factor),
                minorTickStyle: MinorTickStyle(
                    length: 0.03,
                    thickness: 1.5,
                    lengthUnit: GaugeSizeUnit.factor),
                minimum: 0,
                maximum: maxDeger + 100,
                interval: 100,
                startAngle: 80,
                endAngle: 70,
                ranges: <GaugeRange>[
                  GaugeRange(
                      startValue: 0,
                      endValue: maxDeger + 100,
                      startWidth: 0.1,
                      sizeUnit: GaugeSizeUnit.factor,
                      endWidth: 0.1,
                      gradient: SweepGradient(stops: <double>[
                        0.2,
                        0.5,
                        0.75
                      ], colors: <Color>[
                        Colors.blue[100],
                        Colors.blue[200],
                        Colors.blue[300],
                      ]))
                ],
                pointers: <GaugePointer>[
                  NeedlePointer(
                      value: 100.0,
                      enableAnimation: true,
                      needleColor: Colors.black,
                      tailStyle: TailStyle(
                          length: 0.18,
                          width: 8,
                          color: Colors.black,
                          lengthUnit: GaugeSizeUnit.factor),
                      needleLength: 0.68,
                      needleStartWidth: 1,
                      needleEndWidth: 8,
                      knobStyle: KnobStyle(
                          knobRadius: 0.07,
                          color: Colors.blue[100],
                          borderWidth: 0.03,
                          borderColor: Colors.black),
                      lengthUnit: GaugeSizeUnit.factor)
                ],
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
