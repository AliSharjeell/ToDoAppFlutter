import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDoTile extends StatelessWidget {
  final String taskname;
  final bool taskcomplete;
  Function(bool?)? onChanged;
  ToDoTile({
    super.key,
    required this.taskname,
    required this.taskcomplete,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 247, 247, 247),
            borderRadius: BorderRadius.circular(25)),
        child: Row(
          children: [
            Transform.scale(
              scale: 1.75,
              child: Checkbox(
                value: taskcomplete,
                onChanged: onChanged,
                activeColor: Color.fromARGB(255, 20, 20, 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                checkColor: Color.fromARGB(255, 255, 255, 255),
                visualDensity: VisualDensity(vertical: 3, horizontal: 3),
              ),
            ),
            Text(taskname,
                style: GoogleFonts.poppins(
                    fontSize: 20,
                    decoration: taskcomplete
                        ? TextDecoration.lineThrough
                        : TextDecoration.none)),
          ],
        ),
      ),
    );
  }
}
