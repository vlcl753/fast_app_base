import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';
import 'package:fast_app_base/screen/notification/w_notification_item.dart';
import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';
import 'package:nav/enum/enum_nav_ani.dart';

class NotificationDialog extends DialogWidget {
  final List<TtossNotification> notifications;

  NotificationDialog(this.notifications,
      {super.key, super.animation = NavAni.Bottom, super.barrierDismissible = false});//super.barrierDismissible = false외부 클릭시 안 닫히게 설정

  @override
  DialogState<NotificationDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends DialogState<NotificationDialog> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,//배경 투명 설정
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ...widget.notifications
              .map((element) => NotificationItemWidget(
              onTap: () {
                widget.hide();//다이어로그 숨기ㅌ
              },
              notification: element))
              .toList()
        ],
      ),
    );
  }
}
