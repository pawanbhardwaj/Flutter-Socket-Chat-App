import 'package:flutter/foundation.dart';

import '../models/message.dart';

final List<Message> _messages = [];

class MessagesProvider with ChangeNotifier {
  List<Message> get allMessages => [..._messages];

  void addMessage(Message message) {
    _messages.insert(0, message);
    notifyListeners();
  }
}


// final List<Message> _messages = [];

// class MessagesProvider with ChangeNotifier {
//   List<Message> get allMessages => _messages;
//   getMessages() async {
//     var response = await Dio().get(
//         'https://softawork2.xyz/fandlApi/chat/get_chat_messages?user_id=64&friend_user_id=66&page_no=1');
//     for (int i = 0;
//         i < response.data["chatMessageList"].length;
//         i++) {
//       List msgs = (response.data)["chatMessageList"];
//       _messages.add(Message(msgs[i]["sender_user_id"], msgs[i]['message'],
//           DateTime.now()));
//     }
//     print(_messages);
//     notifyListeners();
//   }

//   void addMessage(Message message) async {
//     var response =
//         await Dio().post('https://softawork2.xyz/fandlApi/chat/add_message',
//             data: FormData.fromMap({
//               "sender_user_id": 64,
//               "receiver_user_id": 66,
//               "message": message.content,
//               "message_status": 1
//             }));
//     print(response.data);

//     // _messages.insert(0, message);
//     notifyListeners();
//   }
// }
