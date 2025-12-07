id HAENotificationsLog(uint64_t a1)
{
  if (qword_100008608 != -1)
  {
    sub_1000016AC();
  }

  v2 = qword_100008610;

  return v2;
}

void sub_100000D8C(id a1)
{
  qword_100008610 = os_log_create("HAENotificationContentExtension", "ADAM");

  _objc_release_x1();
}

id HAENLocalizationUtilityGetBundle(uint64_t a1)
{
  if (qword_100008620 != -1)
  {
    sub_1000016C0();
  }

  v2 = qword_100008618;

  return v2;
}

void sub_100000E14(id a1)
{
  qword_100008618 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/HAENotifications.framework"];

  _objc_release_x1();
}