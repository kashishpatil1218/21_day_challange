import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _radicalValue = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radical Slide'),
      ),
      body: Center(
        child: SfRadialGauge(
          axes: <RadialAxis>[
            RadialAxis(
              minimum: 0,
              maximum: 120,
              startAngle: 125,
              endAngle: 410,
              showLabels: true,
              labelsPosition: ElementsPosition.inside,
              showTicks: true,
              radiusFactor: 0.9,
              interval: 20,
              showFirstLabel: false,
              labelFormat: "{value} KM/H",
              axisLineStyle:
                  const AxisLineStyle(cornerStyle: CornerStyle.bothCurve),
              pointers: <GaugePointer>[
                RangePointer(
                  value: _radicalValue,
                  cornerStyle: CornerStyle.bothCurve,
                  width: 12,
                  sizeUnit: GaugeSizeUnit.logicalPixel,
                  color: Colors.purple,
                ),
                MarkerPointer(
                  value: _radicalValue,
                  enableDragging: true,
                  onValueChanged: (value) {
                    setState(() {
                      _radicalValue = value;
                    });
                  },
                  markerHeight: 30,
                  markerWidth: 30,
                  markerType: MarkerType.circle,
                  borderColor: Colors.purpleAccent,
                ),
              ],
              annotations: [
                GaugeAnnotation(
                  angle: 90,
                  axisValue: 5,
                  positionFactor: 0.1,
                  widget: Text(
                  "${  _radicalValue.ceil().toString()} Km/H",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
