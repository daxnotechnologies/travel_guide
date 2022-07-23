import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/Constants/constants.dart';


class dropDownSignup extends StatefulWidget {
  String? selectedItem = "Traveller";


  dropDownSignup({Key? key, this.selectedItem}) : super(key: key);

  @override
  State<dropDownSignup> createState() => _dropDownSignupState();
}

class _dropDownSignupState extends State<dropDownSignup> {
  List signupDropDownList=[
    "Traveller",
    "Guider"
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        // hint: const Text("Select Bus"),
        icon: const Icon(Icons.keyboard_arrow_down),
        // value: selectedItemBus.isEmpty ? selectedItem : selectedItemBus,
        value: widget.selectedItem,
        isExpanded: true,
        elevation: 0,
        underline: Container(color: Colors.transparent),
        items: signupDropDownList
            .map(
              (title) => DropdownMenuItem(
            child: Text(title,textAlign: TextAlign.center, style:  GoogleFonts.poppins(
            ),),
            value: title,
          ),
        )
            .toList(),
        onChanged: (value) {
          setState(() {
            widget.selectedItem = value.toString();
            finalChoosenSignup = widget.selectedItem!;
            print(widget.selectedItem);
          });
        },

      );}}