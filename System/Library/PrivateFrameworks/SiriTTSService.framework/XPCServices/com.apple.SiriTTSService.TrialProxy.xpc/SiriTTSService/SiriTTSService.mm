uint64_t sub_100000D60()
{
  v1 = *(v0 + 24);
  reply = xpc_dictionary_create_reply(*(v0 + 16));
  if (!reply)
  {
    reply = xpc_dictionary_create_empty();
  }

  sub_100001680();
  sub_100001670();
  xpc_connection_send_message(v1, reply);

  return swift_unknownObjectRelease();
}

uint64_t sub_100000DDC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100000E2C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100000E74()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100000EAC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100000E2C(0, &qword_1000081A0, OS_os_log_ptr);
  qword_100008290 = sub_100001740();
  xpc_main(sub_100000F60);
}

uint64_t sub_100000F60(_xpc_connection_s *a1)
{
  swift_unknownObjectRetain();
  sub_100001710();
  sub_100001690();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v5[4] = sub_1000014A8;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1000014B0;
  v5[3] = &unk_1000041C8;
  v3 = _Block_copy(v5);
  swift_unknownObjectRetain();

  xpc_connection_set_event_handler(a1, v3);
  _Block_release(v3);
  xpc_connection_resume(a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_100001078(void *a1, uint64_t a2)
{
  v24 = a2;
  v3 = sub_1000016D0();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001700();
  v25 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000016E0();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type = xpc_get_type(a1);
  if (type == sub_1000016A0())
  {
    v21 = sub_1000016B0();
    swift_unknownObjectRelease();
    if (v21 == a1 || (v22 = sub_1000016C0(), result = swift_unknownObjectRelease(), v22 == a1))
    {
      sub_100001710();

      return sub_100001690();
    }
  }

  else
  {
    sub_100000E2C(0, &qword_100008208, OS_dispatch_queue_ptr);
    (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.userInitiated(_:), v10);
    v15 = sub_100001730();
    v23 = v7;
    v16 = v15;
    (*(v11 + 8))(v13, v10);
    v17 = swift_allocObject();
    v18 = v24;
    *(v17 + 16) = a1;
    *(v17 + 24) = v18;
    aBlock[4] = sub_100000D60;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100000DDC;
    aBlock[3] = &unk_100004218;
    v19 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1000016F0();
    v26 = &_swiftEmptyArrayStorage;
    sub_100001520();
    sub_100001578(&qword_100008218, &unk_1000019C8);
    sub_1000015C0();
    sub_100001750();
    sub_100001720();
    _Block_release(v19);

    (*(v4 + 8))(v6, v3);
    (*(v25 + 8))(v9, v23);
  }

  return result;
}

uint64_t sub_1000014B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100001510(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100001520()
{
  result = qword_100008210;
  if (!qword_100008210)
  {
    sub_1000016D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008210);
  }

  return result;
}

uint64_t sub_100001578(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000015C0()
{
  result = qword_100008220;
  if (!qword_100008220)
  {
    sub_100001624(&qword_100008218, &unk_1000019C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008220);
  }

  return result;
}

uint64_t sub_100001624(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}