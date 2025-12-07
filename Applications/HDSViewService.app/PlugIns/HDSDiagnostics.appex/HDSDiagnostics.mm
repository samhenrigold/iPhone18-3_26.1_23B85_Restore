id sub_100001164(uint64_t a1)
{
  if (qword_1000081D0 != -1)
  {
    sub_100001780();
  }

  v2 = qword_1000081C8;

  return v2;
}

void sub_10000173C(id a1)
{
  qword_1000081C8 = os_log_create("com.apple.HomeDeviceSetup", "iOS-DiagnosticExtension");

  _objc_release_x1();
}