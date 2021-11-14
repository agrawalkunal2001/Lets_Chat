import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

import 'channel_page.dart';

class ChannelListPage extends StatelessWidget {
  const ChannelListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Let's Chat"),
      ),
      body: ChannelsBloc(
        child: ChannelListView(
          channelWidget: const ChannelPage(),
        ),
      ),
    );
  }
}
