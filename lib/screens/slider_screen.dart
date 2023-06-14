import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders and Checks'),
      ),
      body: Column(
        children: [
          Slider(
            value: _sliderValue,
            min: 50,
            max: 400,
            activeColor: colors.primary,
            //divisions: 8,
            onChanged: _sliderEnable
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),
          const SizedBox(
            height: 200,
          ),
          // Checkbox(
          //   value: _sliderEnable,
          //   onChanged: (value) {
          //     _sliderEnable = value ?? true;
          //     setState(() {});
          //   },
          // ),
          // Switch(
          //   value: _sliderEnable,
          //   onChanged: (value) => setState(() {
          //     _sliderEnable = value;
          //   }),
          // ),
          CheckboxListTile(
            title: const Text('Habilitar Slider'),
            activeColor: colors.primary,
            value: _sliderEnable,
            onChanged: (value) => setState(() {
              _sliderEnable = value ?? true;
            }),
          ),
          SwitchListTile(
            title: const Text('Habilitar Slider'),
            activeColor: colors.primary,
            value: _sliderEnable,
            onChanged: (value) => setState(() {
              _sliderEnable = value;
            }),
          ),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                width: _sliderValue,
                image: const NetworkImage(
                    'https://w.wallpaperkiss.com/wimg/s/109-1097666_small.jpg'),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
