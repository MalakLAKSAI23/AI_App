import 'package:chatapp/constants/constants.dart';
import 'package:chatapp/services/assets_manager.dart';
import 'package:chatapp/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key, required this.msg, required this.chatIndex});
  final String msg;
  final int chatIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: chatIndex==0 ? myColor2:myColor3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  chatIndex==0 ?AssetsManager.userImage:AssetsManager.botImage,
                  width: 30,
                  height: 30,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: TextWidget(
                    label:msg
                    ),
                    ),
                    chatIndex ==0? const SizedBox.shrink():const Row(
                      mainAxisAlignment:MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children:[
                        Icon(
                          Icons.thumb_up_alt_outlined,
                          color:Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.thumb_down_alt_outlined,
                          color:Colors.white,
                        )
                      ],
                    )


              ],
            ),
          ),
        )
      ],
    );
  }
}
