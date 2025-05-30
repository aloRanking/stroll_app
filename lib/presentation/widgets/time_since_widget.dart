import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeSinceWidget extends StatelessWidget {
  final String since;

  const TimeSinceWidget({super.key, required this.since});

  String formatTimeSinceCreation() {
    try {
      final dateFormat = DateFormat("yyyy-MM-ddTHH:mm:ss.SSSZ");
      final createdDate = dateFormat.parse(since);
      final difference = DateTime.now().difference(createdDate);

      final hours = difference.inHours;
      final minutes = difference.inMinutes.remainder(60);

      return '${hours}h ${minutes.toString().padLeft(2, '0')}m';
    } catch (e) {
      return 'Invalid date';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      formatTimeSinceCreation(),
      style: TextStyle(fontSize: 14, color: Colors.white),
    );
  }
}


