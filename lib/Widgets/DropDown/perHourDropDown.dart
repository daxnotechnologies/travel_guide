import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/Constants/constants.dart';


class PerHourdropDown extends StatefulWidget {
  String? selectedItem = "Per Hour";


  PerHourdropDown({Key? key, this.selectedItem}) : super(key: key);

  @override
  State<PerHourdropDown> createState() => _PerHourdropDownState();
}

class _PerHourdropDownState extends State<PerHourdropDown> {
  List perHourDropDownList=[
    "Per Hour",
    "100",
    "200",
    "300",
    "400",
    "500"
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      //
      
      icon: const Icon(Icons.keyboard_arrow_down),
      // value: selectedItemBus.isEmpty ? selectedItem : selectedItemBus,
      value: widget.selectedItem,
      isExpanded: true,
      elevation: 0,
      underline: Container(color: Colors.transparent),
      items:perHourDropDownList
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

    );

  }
}
