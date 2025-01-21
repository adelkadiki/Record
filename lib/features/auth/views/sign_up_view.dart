import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: SizedBox(
                height: 35,
              ),
            ),
            SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Welcome to Sign Up",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 50,
              ),
            ),
            SliverToBoxAdapter(child: CustomTextField(text: "First Name")),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 35,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomTextField(text: "Last Name"),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 35,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomCheckbox(),
            )
          ],
        ),
      ),
    );
  }
}

// Widget which implemented above for first name and last name
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: text,
          filled: true,
          fillColor: Colors.white,
          border: const OutlineInputBorder(),
          enabledBorder: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder()),
    );
  }
}

// Checkbox statefull class
class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key});

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (bool? updatedIsChecked) {
        setState(() {
          isChecked = updatedIsChecked;
        });
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
    );
  }
}
