id PHDefaultLog(uint64_t a1)
{
  if (qword_8610 != -1)
  {
    sub_19D8();
  }

  v2 = qword_8608;

  return v2;
}

void sub_1860(id a1)
{
  qword_8608 = os_log_create("com.apple.calls.mobilephone", "Default");

  _objc_release_x1();
}

id PHOversizedLog(uint64_t a1)
{
  if (qword_8620 != -1)
  {
    sub_19EC();
  }

  v2 = qword_8618;

  return v2;
}

void sub_18E8(id a1)
{
  qword_8618 = os_log_create("com.apple.calls.mobilephone", "Oversized");

  _objc_release_x1();
}

id PHOversizedLogQueue(uint64_t a1)
{
  if (qword_8630 != -1)
  {
    sub_1A00();
  }

  v2 = qword_8628;

  return v2;
}

void sub_1970(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
  v1 = dispatch_queue_create("com.apple.calls.mobilephone.logging", v3);
  v2 = qword_8628;
  qword_8628 = v1;
}