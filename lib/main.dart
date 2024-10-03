// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const WidgetDemoHomePage(),
    );
  }
}

class WidgetDemoHomePage extends StatelessWidget {
  const WidgetDemoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widget Demo'),
      ),
      body: ListView(
        children: [
          _buildListItem(context, 'Text Widget', const TextWidgetDemo()),
          _buildListItem(context, 'Image Widget', const ImageWidgetDemo()),
          _buildListItem(
              context, 'Container Widget', const ContainerWidgetDemo()),
          _buildListItem(
              context, 'Row and Column', const RowColumnWidgetDemo()),
          _buildListItem(context, 'Stack Widget', const StackWidgetDemo()),
          _buildListItem(context, 'ListView Widget', ListViewWidgetDemo()),
          _buildListItem(context, 'Buttons', const ButtonWidgetDemo()),
          _buildListItem(
              context, 'SizedBox Widget', const SizedBoxWidgetDemo()),
          _buildListItem(
              context, 'Switch & Slider', const SwitchSliderWidgetDemo()),
          _buildListItem(
              context, 'TextField Widget', const TextFieldWidgetDemo()),
          _buildListItem(
              context, 'Checkbox Widget', const CheckboxWidgetDemo()),
          _buildListItem(context, 'Card Widget', const CardWidgetDemo()),
          _buildListItem(context, 'Progress Indicators',
              const ProgressIndicatorWidgetDemo()),
          _buildListItem(
              context, 'ExpansionTile Widget', const ExpansionTileWidgetDemo()),
          _buildListItem(
              context, 'AlertDialog Widget', const AlertDialogWidgetDemo()),
          _buildListItem(
              context, 'GridView Widget', const GridViewWidgetDemo()),
          _buildListItem(context, 'AnimatedContainer',
              const AnimatedContainerWidgetDemo()),
          _buildListItem(context, 'Tooltip Widget', const TooltipWidgetDemo()),
          _buildListItem(
              context, 'RichText Widget', const RichTextWidgetDemo()),
          _buildListItem(
              context, 'Draggable & DragTarget', const DraggableWidgetDemo()),
          _buildListItem(
              context, 'ClipRRect Widget', const ClipRRectWidgetDemo()),
          _buildListItem(context, 'Hero Animation', const HeroWidgetDemo()),
          _buildListItem(context, 'Stepper Widget', const StepperWidgetDemo()),
          _buildListItem(
              context, 'Snackbar Widget', const SnackbarWidgetDemo()),
        ],
      ),
    );
  }

  Widget _buildListItem(BuildContext context, String title, Widget demoPage) {
    return Card(
      child: ListTile(
        title: Text(title),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => demoPage),
          );
        },
      ),
    );
  }
}

class TextWidgetDemo extends StatelessWidget {
  const TextWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text Widget')),
      body: const Center(
        child: Text(
          'Hello, Flutter!',
          style: TextStyle(fontSize: 24, color: Colors.blue),
        ),
      ),
    );
  }
}

class ImageWidgetDemo extends StatelessWidget {
  const ImageWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Widget')),
      body: Center(
        child: Image.network('https://picsum.photos/200'),
      ),
    );
  }
}

class ContainerWidgetDemo extends StatelessWidget {
  const ContainerWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Container Widget')),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.red,
          alignment: Alignment.center,
          child: const Text(
            'Container',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class RowColumnWidgetDemo extends StatelessWidget {
  const RowColumnWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row and Column')),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Row Example'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.star, color: Colors.blue),
              Icon(Icons.star, color: Colors.blue),
              Icon(Icons.star, color: Colors.blue),
            ],
          ),
          SizedBox(height: 20),
          Text('Column Example'),
          Column(
            children: [
              Icon(Icons.star, color: Colors.green),
              Icon(Icons.star, color: Colors.green),
              Icon(Icons.star, color: Colors.green),
            ],
          ),
        ],
      ),
    );
  }
}

class StackWidgetDemo extends StatelessWidget {
  const StackWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack Widget')),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(height: 200, width: 200, color: Colors.blue),
            Container(height: 100, width: 100, color: Colors.red),
            const Text('Stack',
                style: TextStyle(color: Colors.white, fontSize: 24)),
          ],
        ),
      ),
    );
  }
}

class ListViewWidgetDemo extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => 'Item $index');

  ListViewWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView Widget')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}

class ButtonWidgetDemo extends StatelessWidget {
  const ButtonWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            ),
            IconButton(
              icon: const Icon(Icons.thumb_up),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class SizedBoxWidgetDemo extends StatelessWidget {
  const SizedBoxWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SizedBox Widget')),
      body: Center(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                SizedBox(
                  height: 20,
                  width: double.infinity,
                  child: Container(color: Colors.green),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 20,
                  height: 100,
                  child: Container(color: Colors.green),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SwitchSliderWidgetDemo extends StatefulWidget {
  const SwitchSliderWidgetDemo({super.key});

  @override
  _SwitchSliderWidgetDemoState createState() => _SwitchSliderWidgetDemoState();
}

class _SwitchSliderWidgetDemoState extends State<SwitchSliderWidgetDemo> {
  bool isSwitched = false;
  double sliderValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Switch & Slider')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
          Text('Switch is ${isSwitched ? "ON" : "OFF"}'),
          Slider(
            value: sliderValue,
            min: 0,
            max: 1,
            divisions: 10,
            label: sliderValue.toString(),
            onChanged: (value) {
              setState(() {
                sliderValue = value;
              });
            },
          ),
          Text('Slider value: ${sliderValue.toStringAsFixed(2)}'),
        ],
      ),
    );
  }
}

class TextFieldWidgetDemo extends StatefulWidget {
  const TextFieldWidgetDemo({super.key});

  @override
  _TextFieldWidgetDemoState createState() => _TextFieldWidgetDemoState();
}

class _TextFieldWidgetDemoState extends State<TextFieldWidgetDemo> {
  String inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextField Widget')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (text) {
                setState(() {
                  inputText = text;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Enter some text',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Text('You entered: $inputText'),
          ],
        ),
      ),
    );
  }
}

class CheckboxWidgetDemo extends StatefulWidget {
  const CheckboxWidgetDemo({super.key});

  @override
  _CheckboxWidgetDemoState createState() => _CheckboxWidgetDemoState();
}

class _CheckboxWidgetDemoState extends State<CheckboxWidgetDemo> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkbox Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            Text('Checkbox is ${isChecked ? "Checked" : "Unchecked"}'),
          ],
        ),
      ),
    );
  }
}

class CardWidgetDemo extends StatelessWidget {
  const CardWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Widget')),
      body: const Center(
        child: Card(
          elevation: 4,
          margin: EdgeInsets.all(16),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('This is a Card', style: TextStyle(fontSize: 24)),
                SizedBox(height: 10),
                Text('Cards are great for grouping information in a clean UI.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProgressIndicatorWidgetDemo extends StatelessWidget {
  const ProgressIndicatorWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Progress Indicators')),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircularProgressIndicator(),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: LinearProgressIndicator(),
          ),
        ],
      ),
    );
  }
}

class ExpansionTileWidgetDemo extends StatelessWidget {
  const ExpansionTileWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ExpansionTile Widget')),
      body: ListView(
        children: [
          const ExpansionTile(
            title: Text('Tap to Expand'),
            children: [
              ListTile(title: Text('Item 1')),
              ListTile(title: Text('Item 2')),
            ],
          ),
        ],
      ),
    );
  }
}

class AlertDialogWidgetDemo extends StatelessWidget {
  const AlertDialogWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AlertDialog Widget')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Dialog Title'),
                  content: const Text('This is a simple alert dialog.'),
                  actions: [
                    TextButton(
                      child: const Text('Cancel'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    TextButton(
                      child: const Text('OK'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
          child: const Text('Show AlertDialog'),
        ),
      ),
    );
  }
}

class GridViewWidgetDemo extends StatelessWidget {
  const GridViewWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GridView Widget')),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blue,
            child: Center(
              child: Text(
                'Item $index',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}

class AnimatedContainerWidgetDemo extends StatefulWidget {
  const AnimatedContainerWidgetDemo({super.key});

  @override
  _AnimatedContainerWidgetDemoState createState() =>
      _AnimatedContainerWidgetDemoState();
}

class _AnimatedContainerWidgetDemoState
    extends State<AnimatedContainerWidgetDemo> {
  bool _isBig = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedContainer')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isBig = !_isBig;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: _isBig ? 200 : 100,
            height: _isBig ? 200 : 100,
            color: _isBig ? Colors.blue : Colors.green,
            alignment: Alignment.center,
            child: const Text('Tap Me!', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}

class TooltipWidgetDemo extends StatelessWidget {
  const TooltipWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tooltip Widget')),
      body: const Center(
        child: Tooltip(
          message: 'This is a Tooltip',
          child: Icon(Icons.info, size: 50, color: Colors.blue),
        ),
      ),
    );
  }
}

class RichTextWidgetDemo extends StatelessWidget {
  const RichTextWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RichText Widget')),
      body: Center(
        child: RichText(
          text: const TextSpan(
            style: TextStyle(fontSize: 24, color: Colors.black),
            children: [
              TextSpan(text: 'This is '),
              TextSpan(
                  text: 'rich ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue)),
              TextSpan(
                  text: 'text ',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, color: Colors.red)),
              TextSpan(text: 'with multiple styles.'),
            ],
          ),
        ),
      ),
    );
  }
}

class DraggableWidgetDemo extends StatefulWidget {
  const DraggableWidgetDemo({super.key});

  @override
  _DraggableWidgetDemoState createState() => _DraggableWidgetDemoState();
}

class _DraggableWidgetDemoState extends State<DraggableWidgetDemo> {
  Color _targetColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Draggable & DragTarget')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Draggable<Color>(
            data: Colors.blue,
            child: Container(width: 100, height: 100, color: Colors.blue),
            feedback: Container(
                width: 100, height: 100, color: Colors.blue.withOpacity(0.5)),
            childWhenDragging:
                Container(width: 100, height: 100, color: Colors.grey),
          ),
          const SizedBox(height: 50),
          DragTarget<Color>(
            onAccept: (color) {
              setState(() {
                _targetColor = color;
              });
            },
            builder: (context, candidates, rejects) {
              return Container(
                width: 100,
                height: 100,
                color: _targetColor,
                alignment: Alignment.center,
                child: const Text('Drop Here'),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ClipRRectWidgetDemo extends StatelessWidget {
  const ClipRRectWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ClipRRect Widget')),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            'https://picsum.photos/200',
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}

class HeroWidgetDemo extends StatelessWidget {
  const HeroWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hero Animation')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HeroDetailPage()),
            );
          },
          child: Hero(
            tag: 'hero-demo',
            child: Image.network('https://picsum.photos/200', width: 100),
          ),
        ),
      ),
    );
  }
}

class HeroDetailPage extends StatelessWidget {
  const HeroDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hero Detail')),
      body: Center(
        child: Hero(
          tag: 'hero-demo',
          child: Image.network('https://picsum.photos/200', width: 300),
        ),
      ),
    );
  }
}

class StepperWidgetDemo extends StatefulWidget {
  const StepperWidgetDemo({super.key});

  @override
  _StepperWidgetDemoState createState() => _StepperWidgetDemoState();
}

class _StepperWidgetDemoState extends State<StepperWidgetDemo> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stepper Widget')),
      body: Stepper(
        currentStep: _currentStep,
        onStepContinue: () {
          setState(() {
            if (_currentStep < 2) _currentStep++;
          });
        },
        onStepCancel: () {
          setState(() {
            if (_currentStep > 0) _currentStep--;
          });
        },
        steps: const [
          Step(title: Text('Step 1'), content: Text('Do something here.')),
          Step(
              title: Text('Step 2'),
              content: Text('Continue doing something.')),
          Step(title: Text('Step 3'), content: Text('Finish your task.')),
        ],
      ),
    );
  }
}

class SnackbarWidgetDemo extends StatelessWidget {
  const SnackbarWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbar Widget')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              content: const Text('This is a Snackbar'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  // Handle undo action
                },
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text('Show Snackbar'),
        ),
      ),
    );
  }
}
