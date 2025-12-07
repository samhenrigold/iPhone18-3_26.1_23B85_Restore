id PHDefaultLog(uint64_t a1)
{
  if (qword_85E0 != -1)
  {
    sub_187C();
  }

  v2 = qword_85D8;

  return v2;
}

void sub_CAC(id a1)
{
  qword_85D8 = os_log_create("com.apple.calls.mobilephone", "Default");

  _objc_release_x1();
}

id PHOversizedLog(uint64_t a1)
{
  if (qword_85F0 != -1)
  {
    sub_1890();
  }

  v2 = qword_85E8;

  return v2;
}

void sub_D34(id a1)
{
  qword_85E8 = os_log_create("com.apple.calls.mobilephone", "Oversized");

  _objc_release_x1();
}

id PHOversizedLogQueue(uint64_t a1)
{
  if (qword_8600 != -1)
  {
    sub_18A4();
  }

  v2 = qword_85F8;

  return v2;
}

void sub_DBC(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
  v1 = dispatch_queue_create("com.apple.calls.mobilephone.logging", v3);
  v2 = qword_85F8;
  qword_85F8 = v1;
}