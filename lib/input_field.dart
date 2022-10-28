import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String labelText;
  final String placeholder;
  final Color color;
  final double fontSize;
  final bool password;
  final String? Function(String?)? validator;

  InputField({
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.labelText = '',
    this.placeholder = '',
    this.color = Colors.white,
    this.fontSize = 14.0,
    this.password = false,
    this.validator,
  });
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   padding: const EdgeInsets.only(bottom: 5,left: 1),
    //   margin: const EdgeInsets.only(left: 24,right: 24),
    //   decoration: const BoxDecoration(
    //     border: Border(
    //       bottom: BorderSide(width: 1.0, color: Color(0xFFffffff)),
    //     ),
    //   ),
    //   child: Row(
    //     children: [
    //       Image.asset("assets/images/vector.png",width: 15,height: 16,),
    //       TextField()
    //     ],
    //   ),
    // );

    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.zero,
        prefixIcon: Container(padding:EdgeInsets.only(bottom: 22),child: Image.asset("assets/images/vector.png",width: 15,height: 16,),),
        fillColor: Colors.transparent,
        focusedBorder:  UnderlineInputBorder(
          borderSide: BorderSide(
            color: color,
          )
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: color,
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        hintText: placeholder,
        hintStyle: TextStyle(
          fontSize: fontSize,
          color: color,
        ),
        filled: true,
        isDense: true,
      ),
      controller: controller,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
      ),
      keyboardType: keyboardType,
      obscureText: password,
      autocorrect: false,
      validator: validator,
    );
  }
}
