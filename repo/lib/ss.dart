 Slider(
                value: _currentSliderValue,
                min: 0,
                max: 100,
                divisions: 7,
                label: "%" + _currentSliderValue.round().toString(),
                activeColor: Colors.amber,
                inactiveColor: Colors.white10,
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),