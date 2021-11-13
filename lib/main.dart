import 'package:flutter/material.dart';
import 'package:stream_chat/stream_chat.dart';
import 'my_app.dart';

const apiKey = "mvtbvgnhvfxb";
const userToken =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiYWdyYXdhbGt1bmFsMjAwMSJ9.AotqCK41S26CAseSEcTY5pmCuN6j7ObudPE2AlyjyTw";

void main() async {
  //StreamChatClient
  final client = StreamChatClient(apiKey);

  // Current user
  await client.connectUser(User(id: "user"), userToken);

  // Get channel
  final channel = client.channel("messaging", id: "new-user");

  await channel.watch();

  runApp(MyApp(client: client, channel: channel));
}
