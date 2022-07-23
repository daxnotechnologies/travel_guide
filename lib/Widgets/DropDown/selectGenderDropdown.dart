import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/Constants/constants.dart';


class SelectGender extends StatefulWidget {
  String? selectedItem = "Male";


  SelectGender({Key? key, this.selectedItem}) : super(key: key);

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  List genderDropDownList=[
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
      items: genderDropDownList
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