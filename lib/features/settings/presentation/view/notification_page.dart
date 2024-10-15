import 'package:flutter/material.dart';
import 'package:shaghf/features/settings/presentation/view/widget/notification/notification_body.dart';
class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationsBody(),
    );
  }
}
