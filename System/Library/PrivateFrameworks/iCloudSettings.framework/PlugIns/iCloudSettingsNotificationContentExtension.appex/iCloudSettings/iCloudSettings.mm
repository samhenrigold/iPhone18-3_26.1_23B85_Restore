uint64_t sub_100001578()
{
  v0 = sub_100001B94();
  sub_1000015FC(v0, qword_100008170);
  sub_100001660(v0, qword_100008170);
  return sub_100001B84();
}

uint64_t *sub_1000015FC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100001660(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_100001878(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for UserNotificationViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1000018D0(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 shouldHandleNotificationResponse:a1];
  if (qword_100008138 != -1)
  {
    swift_once();
  }

  v6 = sub_100001B94();
  sub_100001660(v6, qword_100008170);
  v7 = a1;
  v8 = sub_100001B74();
  v9 = sub_100001BC4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v5;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received UNNotificationResponse: %@ shouldAMSHandle: %{BOOL}d", v10, 0x12u);
    sub_100001AC4(v11);
  }

  if (v5)
  {
    v13 = [objc_opt_self() quotaBag];

    v14 = *(a2 + 16);

    v14(a2, 1);
  }
}

uint64_t sub_100001AC4(uint64_t a1)
{
  v2 = sub_100001B2C(&qword_100008168, &unk_100001E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100001B2C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}