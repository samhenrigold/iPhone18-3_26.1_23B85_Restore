id PHDefaultLog(uint64_t a1)
{
  if (qword_CAE0 != -1)
  {
    sub_2D38();
  }

  v2 = qword_CAD8;

  return v2;
}

void sub_2BC0(id a1)
{
  qword_CAD8 = os_log_create("com.apple.calls.mobilephone", "Default");

  _objc_release_x1();
}

id PHOversizedLog(uint64_t a1)
{
  if (qword_CAF0 != -1)
  {
    sub_2D4C();
  }

  v2 = qword_CAE8;

  return v2;
}

void sub_2C48(id a1)
{
  qword_CAE8 = os_log_create("com.apple.calls.mobilephone", "Oversized");

  _objc_release_x1();
}

id PHOversizedLogQueue(uint64_t a1)
{
  if (qword_CB00 != -1)
  {
    sub_2D60();
  }

  v2 = qword_CAF8;

  return v2;
}

void sub_2CD0(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
  v1 = dispatch_queue_create("com.apple.calls.mobilephone.logging", v3);
  v2 = qword_CAF8;
  qword_CAF8 = v1;
}