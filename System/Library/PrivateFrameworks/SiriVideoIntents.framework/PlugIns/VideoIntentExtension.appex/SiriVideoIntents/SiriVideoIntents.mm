uint64_t sub_100001308()
{
  v0 = sub_100001C24();
  sub_100001394(v0, qword_100008170);
  sub_1000013F8(v0, qword_100008170);
  if (qword_100008138 != -1)
  {
    swift_once();
  }

  v1 = qword_1000081A0;
  return sub_100001C34();
}

uint64_t *sub_100001394(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000013F8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001430()
{
  sub_100001B64();
  result = sub_100001B54();
  qword_100008188 = result;
  return result;
}

uint64_t sub_100001464()
{
  sub_100001BB4();
  result = sub_100001BA4();
  qword_100008190 = result;
  return result;
}

uint64_t sub_100001498()
{
  sub_100001BD4();
  result = sub_100001BC4();
  qword_100008198 = result;
  return result;
}

uint64_t sub_1000014CC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100001C24();
  sub_100001A98();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001C04();
  sub_100001A98();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001C54();
  if (qword_100008138 != -1)
  {
    swift_once();
  }

  sub_100001BF4();
  sub_100001BE4();
  (*(v11 + 8))(v14, v9);
  if (qword_100008118 != -1)
  {
    swift_once();
  }

  v15 = sub_1000013F8(v3, qword_100008170);
  (*(v5 + 16))(v8, v15, v3);
  v16 = sub_100001C14();
  v17 = sub_100001C44();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Returning handler for intent", v18, 2u);
  }

  (*(v5 + 8))(v8, v3);
  sub_100001B74();
  if (swift_dynamicCastClass())
  {
    if (qword_100008120 != -1)
    {
      swift_once();
    }

    v19 = sub_100001B64();
    v20 = &qword_100008188;
  }

  else
  {
    sub_100001B84();
    if (swift_dynamicCastClass())
    {
      if (qword_100008128 != -1)
      {
        swift_once();
      }

      v19 = sub_100001BB4();
      v20 = &qword_100008190;
    }

    else
    {
      sub_100001B94();
      if (!swift_dynamicCastClass())
      {
        sub_100001C74();
        __break(1u);
        return _objc_retain_x1();
      }

      if (qword_100008130 != -1)
      {
        swift_once();
      }

      v19 = sub_100001BD4();
      v20 = &qword_100008198;
    }
  }

  v21 = *v20;
  a2[3] = v19;
  *a2 = v21;

  return _objc_retain_x1();
}

id sub_100001954()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000019AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100001A08(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100001A4C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100001AAC()
{
  sub_100001B10();
  result = sub_100001C64();
  qword_1000081A0 = result;
  return result;
}

unint64_t sub_100001B10()
{
  result = qword_100008168;
  if (!qword_100008168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100008168);
  }

  return result;
}