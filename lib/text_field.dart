import 'package:flutter/material.dart';
import 'package:untitled/check_boxes.dart';

enum Gender { male, female }

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  Gender _selectedGender = Gender.male;
  final TextEditingController _nameController = TextEditingController();

@override
  void dispose() {
  _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            // Responsive breakpoints
            final bool isTablet = constraints.maxWidth >= 600;
            final double containerWidth =
            isTablet ? 500 : constraints.maxWidth * 0.9;

            return Center(
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: containerWidth,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: _buildContent(isTablet),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildContent(bool isTablet) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildTextField(),
        const SizedBox(height: 16),
        _buildSubmitButton(),
        const SizedBox(height: 16),
        const checkboxes(),
        const SizedBox(height: 16),
        _buildGenderSelector(isTablet),
      ],
    );
  }

  Widget _buildTextField() {
    return TextField(
      controller: _nameController,
      decoration: const InputDecoration(
        labelText: 'Enter anything',
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      width: double.infinity, // ✅ responsive button
      child: ElevatedButton(
        onPressed: () {
        },
        child: const Text('Click'),
      ),
    );
  }

  Widget _buildGenderSelector(bool isTablet) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: isTablet ? 32 : 16,
      children: [
        _buildRadioButton(Gender.male, 'Male'),
        _buildRadioButton(Gender.female, 'Female'),
      ],
    );
  }

  Widget _buildRadioButton(Gender value, String label) {
    return Container(
      color: Colors.black,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Radio<Gender>(
            value: value,
            groupValue: _selectedGender,
            onChanged: (value) {
              if (value == null) return;
              setState(() => _selectedGender = value);
            },
          ),
          Text(label),
        ],
      ),
    );
  }
}
