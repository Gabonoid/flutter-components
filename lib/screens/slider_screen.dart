import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders && Check'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 500,
              activeColor: AppThemes.primary,
              value: _sliderValue,
              onChanged: _sliderEnabled
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null,
            ),
            Checkbox(
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value ?? true;
                setState(() {});
              },
            ),
            CheckboxListTile(
              activeColor: AppThemes.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value ?? true;
                setState(() {});
              },
            ),
            Switch(
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value;
                setState(() {});
              },
            ),
            SwitchListTile(
              activeColor: AppThemes.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value;
                setState(() {});
              },
            ),
            const AboutListTile(),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://static.wikia.nocookie.net/evangelion/images/1/1f/Evangelion_Unit_01_%28Rebuild%29.png/revision/latest?cb=20120319155127'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            ),
          ],
        ));
  }
}
