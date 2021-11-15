import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

import 'channel_list_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.client, required this.channel})
      : super(key: key);

  final StreamChatClient client;
  final Channel channel;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeData = ThemeData(primarySwatch: Colors.blue);

    final defaultTheme = StreamChatThemeData.fromTheme(themeData);

    // final colorTheme = defaultTheme.colorTheme;

    final customTheme = defaultTheme.merge(StreamChatThemeData(
      channelPreviewTheme: ChannelPreviewThemeData(
          avatarTheme: AvatarThemeData(
        borderRadius: BorderRadius.circular(8),
      )),
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lets Chat',
      theme: themeData,
      builder: (context, child) {
        return StreamChat(
          child: child,
          client: client,
          streamChatThemeData: customTheme,
        );
      },
      home: StreamChannel(
        channel: channel,
        child: ChannelListPage(),
      ),
    );
  }
}
