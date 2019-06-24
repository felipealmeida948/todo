import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TileTask extends StatelessWidget {
  final DocumentSnapshot snapshot;
  // final String title_task;
  // final String subtitle_task;
  // final int start_time_task;
  // final int end_time_task;
  // final Icon icon_task;

  TileTask(
    this.snapshot,
    // this.title_task,
    // this.subtitle_task,
    // this.icon_task,
    // this.start_time_task,
    // this.end_time_task
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListTile(
        leading: Icon(Icons.timer),
        title: Text(
          snapshot.data["title_task"],
        ),
        subtitle: Text("Tentanto para ver se dar certo"),
        onTap: () {
          print("Abrir atividade");
        },
      ),
    );
  }
}
