void *sub_1000FE8A8()
{
  sub_100015B9C();
  if (v1)
  {
    sub_100046184(&qword_100216690, &qword_1001A0410);
    v5 = sub_100006FC4();
  }

  else
  {
    v5 = _swiftEmptyDictionarySingleton;
  }

  sub_100003AAC();
  sub_10000F274();

  v7 = 0;
  while (v4)
  {
    v8 = v7;
LABEL_10:
    sub_10001BEA4();
    v10 = (*(v0 + 48) + ((v8 << 10) | (16 * v9)));
    v12 = *v10;
    v11 = v10[1];

    swift_dynamicCast();
    sub_100028734(&v23, v25);
    sub_100028734(v25, v26);
    sub_100028734(v26, &v24);
    result = sub_100005B74(v12, v11);
    v13 = result;
    if (v14)
    {
      sub_10000999C();
      *v15 = v12;
      v15[1] = v11;

      v16 = (v5[7] + 32 * v13);
      sub_100007378(v16);
      result = sub_100028734(&v24, v16);
      v7 = v8;
    }

    else
    {
      if (v5[2] >= v5[3])
      {
        goto LABEL_17;
      }

      sub_10000DEBC();
      *(v5 + v17 + 64) |= v18;
      sub_10000999C();
      *v19 = v12;
      v19[1] = v11;
      result = sub_100028734(&v24, (v5[7] + 32 * v13));
      v20 = v5[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_18;
      }

      v5[2] = v22;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v3)
    {

      return v5;
    }

    v4 = *(v2 + 8 * v8);
    ++v7;
    if (v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000FEA9C()
{
  sub_100015B9C();
  if (v1)
  {
    sub_100046184(&qword_100216690, &qword_1001A0410);
    v5 = sub_100006FC4();
  }

  else
  {
    v5 = _swiftEmptyDictionarySingleton;
  }

  sub_100003AAC();
  sub_10000F274();

  v7 = 0;
  while (v4)
  {
    v8 = v7;
LABEL_10:
    sub_10001BEA4();
    v10 = (*(v0 + 48) + 16 * (v9 | (v8 << 6)));
    v12 = *v10;
    v11 = v10[1];

    swift_dynamicCast();
    sub_100028734(&v23, v25);
    sub_100028734(v25, v26);
    sub_100028734(v26, &v24);
    result = sub_100005B74(v12, v11);
    v13 = result;
    if (v14)
    {
      sub_10000999C();
      *v15 = v12;
      v15[1] = v11;

      v16 = (v5[7] + 32 * v13);
      sub_100007378(v16);
      result = sub_100028734(&v24, v16);
      v7 = v8;
    }

    else
    {
      if (v5[2] >= v5[3])
      {
        goto LABEL_17;
      }

      sub_10000DEBC();
      *(v5 + v17 + 64) |= v18;
      sub_10000999C();
      *v19 = v12;
      v19[1] = v11;
      result = sub_100028734(&v24, (v5[7] + 32 * v13));
      v20 = v5[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_18;
      }

      v5[2] = v22;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v3)
    {

      return v5;
    }

    v4 = *(v2 + 8 * v8);
    ++v7;
    if (v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_1000FEC80()
{
  sub_100006788();
  sub_1000036C8();
  v3 = *(v2 + 96);
  sub_1000135FC(v4);
  type metadata accessor for Client();
  sub_10000690C();
  (*(v5 + 24))(v0 + v3, v1);
  swift_endAccess();
  Lock.unlock()();
}

void sub_1000FED08()
{
  sub_100006788();
  sub_10000F5D4(v2);
  v3 = *(v0 + 24);
  *(v0 + 24) = v1;
  v4 = v1;

  Lock.unlock()();
}

void sub_1000FED50()
{
  sub_100006788();
  sub_1000036C8();
  v3 = *(v2 + 96);
  sub_1000135FC(v4);
  sub_10010265C(v1, v0 + v3);
  swift_endAccess();
  Lock.unlock()();
}

void sub_1000FEDAC(char a1)
{
  Lock.lock()();
  sub_10000F5D4(v3);
  *(v1 + 24) = a1;
  Lock.unlock()();
}

void sub_1000FEDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100046184(&unk_10021A820, &qword_1001992D0);
  sub_100005490(v9);
  sub_100003760();
  __chkstk_darwin(v10);
  sub_10000BEFC();
  sub_100023F84(a3);
  v11 = type metadata accessor for TaskPriority();
  v12 = sub_10001497C();
  v14 = sub_100008D0C(v12, v13, v11);

  if (v14 == 1)
  {
    sub_100015C0C(v5, &unk_10021A820, &qword_1001992D0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_10000690C();
    (*(v15 + 8))(v5, v11);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = v17;
    dispatch thunk of Actor.unownedExecutor.getter();
    sub_100012F58();
    if (a2)
    {
LABEL_6:
      String.utf8CString.getter();

      if (v16 | v18)
      {
        sub_10000AF08();
      }

      sub_100017CC0();
      sub_10000835C();

      goto LABEL_13;
    }
  }

  else
  {
    v18 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v16 | v18)
  {
    sub_10000E1F4();
  }

  sub_100017CC0();
LABEL_13:
  sub_100007CB4();
}

id sub_1000FEFDC(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10000835C();
  v3 = _convertErrorToNSError(_:)();
  v4 = [v1 initWithError:v3];

  return v4;
}

uint64_t sub_1000FF044()
{
  if (qword_100214090 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000964C(v0, qword_100232A20);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "bag refresh notification", v3, 2u);
  }

  v4 = Notification.userInfo.getter();
  if (!v4)
  {
    v10 = 0u;
    v11 = 0u;
    return sub_100015C0C(&v10, &qword_1002181D0, &qword_100198E00);
  }

  v5 = v4;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  sub_100034150(v5, &v10);

  sub_10003430C(&v9);
  if (!*(&v11 + 1))
  {
    return sub_100015C0C(&v10, &qword_1002181D0, &qword_100198E00);
  }

  type metadata accessor for BagContext();
  result = swift_dynamicCast();
  if (result)
  {
    v7 = v9;
    v8 = sub_1000165AC();
    if (v8)
    {
      if (sub_1000357C4(v7, v8))
      {
        sub_100015914(0, 0);
      }
    }
  }

  return result;
}

void *sub_1000FF32C()
{
  sub_10000B218(v0 + 16);

  return v0;
}

uint64_t sub_1000FF364()
{
  v0 = sub_1000FF32C();

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_1000FF3B4()
{
  sub_100006EE0();
  v1 = *(v0[2] + 32);
  v0[3] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_1000FF4C0;

    return ConfigurationManager.configuration(for:forceFetch:)(8);
  }

  else
  {
    sub_100102608();
    sub_10001AC40();
    swift_allocError();
    swift_willThrow();
    sub_1000098BC();

    return v3();
  }
}

uint64_t sub_1000FF4C0()
{
  sub_100007B50();
  sub_10000A9A4();
  v3 = v2;
  sub_100007F20();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 40) = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    v6 = sub_1000FF6B4;
  }

  else
  {

    v6 = sub_1000FF5D0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000FF5D0()
{
  sub_100006EE0();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_100102608();
    sub_10001AC40();
    swift_allocError();
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1000098BC();

    return v3();
  }
}

uint64_t sub_1000FF6B4()
{
  sub_100007B50();

  sub_1000098BC();

  return v0();
}

uint64_t sub_1000FF710()
{
  sub_100007B50();

  sub_1000098BC();

  return v0();
}

void sub_1000FF76C(char a1, void (*a2)(id), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100046184(&unk_10021A820, &qword_1001992D0);
  sub_100005490(v10);
  sub_100003760();
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  v14 = sub_100016D34();
  if (!v14)
  {
    goto LABEL_5;
  }

  v15 = v14;
  v23 = v14;
  if ((a1 & 1) == 0)
  {
    sub_100005180(0, &qword_100218240, PARBag_ptr);
    v16 = Config.isDefault.getter();
    v15 = v23;
    if (v16)
    {

LABEL_5:
      v17 = type metadata accessor for TaskPriority();
      sub_1000051C0(v13, 1, 1, v17);
      v18 = swift_allocObject();
      swift_weakInit();
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = v18;
      v19[5] = a2;
      v19[6] = a3;
      v19[7] = a4;
      v19[8] = a5;

      sub_1000FE178(0, 0, v13, &unk_10019F468, v19);

      sub_100015C0C(v13, &unk_10021A820, &qword_1001992D0);
      sub_100007CB4();
      return;
    }
  }

  a2(v15);
  sub_100007CB4();
}

uint64_t sub_1000FF938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return _swift_task_switch(sub_1000FF960, 0, 0);
}

uint64_t sub_1000FF960()
{
  sub_100006EE0();
  sub_100014C90();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v3 = sub_100007740(v2);

    return ConfigurationManager.configuration(for:forceFetch:)(v3);
  }

  else
  {
    if (qword_100214090 != -1)
    {
      sub_1000042B0(&qword_100214090);
    }

    v4 = type metadata accessor for Logger();
    sub_10000964C(v4, qword_100232A20);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "config is not type PARBag", v7, 2u);
      sub_1000036D4(v7);
    }

    sub_100102608();
    sub_10001AC40();
    v8 = swift_allocError();
    swift_willThrow();
    (*(v0 + 64))(v8);

    sub_1000098BC();

    return v9();
  }
}

uint64_t sub_1000FFB14()
{
  sub_100007B50();
  sub_10000A9A4();
  v3 = v2;
  sub_100007F20();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 96) = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    v6 = sub_1000FFDB8;
  }

  else
  {

    v6 = sub_1000FFC24;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000FFC24()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 48);
    swift_unknownObjectRetain();
    v3(v2);
    swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_100214090 != -1)
    {
      sub_1000042B0(&qword_100214090);
    }

    v4 = type metadata accessor for Logger();
    sub_10000964C(v4, qword_100232A20);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "config is not type PARBag", v7, 2u);
      sub_1000036D4(v7);
    }

    sub_100102608();
    sub_10001AC40();
    v8 = swift_allocError();
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v0 + 64))(v8);
  }

  sub_1000098BC();

  return v9();
}

uint64_t sub_1000FFDB8()
{
  sub_100007B50();

  (*(v0 + 64))(*(v0 + 104));

  sub_1000098BC();

  return v1();
}

uint64_t sub_1000FFE2C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UserAgent();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (sub_1000165AC())
    {
      type metadata accessor for PARNetworkRequestFactory();
      inited = swift_initStackObject();
      v7 = swift_unknownObjectRetain();
      sub_100017594(v7, inited);
      parsecdUserAgent.getter();
      sub_10008CB88();
      swift_unknownObjectRelease();

      (*(v3 + 8))(v5, v2);
      v9 = type metadata accessor for URLRequest();
      return sub_1000051C0(a1, 0, 1, v9);
    }

    swift_unknownObjectRelease();
  }

  v8 = type metadata accessor for URLRequest();

  return sub_1000051C0(a1, 1, 1, v8);
}

uint64_t sub_100100054()
{
  v0 = sub_100046184(&qword_100218230, &unk_100199A00);
  __chkstk_darwin(v0 - 8);
  v2 = &v14[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v14[-1] - v4;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100086710();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
  }

  sub_10000F038(v17, v14, &unk_10021A840, &qword_10019F458);
  v6 = v15;
  if (v15)
  {
    v7 = v16;
    sub_100007534(v14, v15);
    (*(v7 + 8))(v6, v7);
    sub_100007378(v14);
  }

  else
  {
    sub_100015C0C(v14, &unk_10021A840, &qword_10019F458);
    v8 = type metadata accessor for URL();
    sub_1000051C0(v5, 1, 1, v8);
  }

  sub_10000F038(v17, v14, &unk_10021A840, &qword_10019F458);
  v9 = v15;
  if (v15)
  {
    v10 = v16;
    sub_100007534(v14, v15);
    (*(v10 + 16))(v9, v10);
    sub_100007378(v14);
  }

  else
  {
    sub_100015C0C(v14, &unk_10021A840, &qword_10019F458);
    v11 = type metadata accessor for URL();
    sub_1000051C0(v2, 1, 1, v11);
  }

  LocalCachePaths.init(standard:legacy:)();
  return sub_100015C0C(v17, &unk_10021A840, &qword_10019F458);
}

void sub_100100284(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = qword_100214090;
        swift_unknownObjectRetain();
        if (v6 != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        sub_10000964C(v7, qword_100232A20);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v8, v9, "New bag loaded", v10, 2u);
        }

        v11 = [objc_opt_self() defaultCenter];
        sub_100046184(&unk_100217020, &unk_10019B4C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100197F20;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        AnyHashable.init<A>(_:)();
        *(inited + 96) = sub_100005180(0, &qword_100218240, PARBag_ptr);
        *(inited + 72) = v5;
        swift_unknownObjectRetain();
        v13 = Dictionary.init(dictionaryLiteral:)();
        sub_100033AC0(@"PARBagChangeNotification", 0, v13, v11);

        if ((Config.isDefault.getter() & 1) == 0)
        {
          v14 = Logger.logObject.getter();
          v15 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            _os_log_impl(&_mh_execute_header, v14, v15, "Broadcasting distributed notification on bag change", v16, 2u);
          }

          v17 = [objc_opt_self() defaultCenter];
          if (qword_100214040 != -1)
          {
            swift_once();
          }

          [v17 postNotificationName:qword_100232950 object:0];
        }

        v18 = sub_1001006AC(v5);
        v19 = *(v3 + 40);
        *(v3 + 40) = v18 & 1;
        if (v19 != (v18 & 1))
        {

          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 134217984;
            *(v22 + 4) = *(v3 + 40);

            _os_log_impl(&_mh_execute_header, v20, v21, "setting Parsec News Available status to %lu", v22, 0xCu);
          }

          else
          {
          }

          v23 = &kPARNotifyDisabled;
          if (v18)
          {
            v23 = &kPARNotifyEnabled;
          }

          notify_post(*v23);
        }

        notify_post(kPARNotifyBagChange);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }
  }
}

id sub_1001006AC(void *a1)
{
  sub_100005180(0, &qword_100218240, PARBag_ptr);
  if (Config.isDefault.getter())
  {
    return 0;
  }

  v3 = objc_allocWithZone(PARBag);
  v4 = sub_100015C68(a1, 0x312F7377656ELL, 0xE600000000000000);
  v2 = [v4 isEnabled];

  return v2;
}

BOOL sub_10010073C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

uint64_t sub_100100778@<X0>(void *a1@<X8>)
{
  v2 = sub_100046184(&qword_100218230, &unk_100199A00);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for UserAgent();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v26 = v5;
    parsecdUserAgent.getter();
    v10 = sub_1000844F0();
    v24 = v11;
    v25 = v10;
    URLRequest.url.getter();
    v12 = type metadata accessor for URL();
    if (sub_100008D0C(v4, 1, v12) == 1)
    {
      sub_100015C0C(v4, &qword_100218230, &unk_100199A00);
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v13 = URL.absoluteString.getter();
      v14 = v15;
      (*(*(v12 - 8) + 8))(v4, v12);
    }

    if (URLRequest.allHTTPHeaderFields.getter())
    {
      sub_1000284C8();
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = objc_allocWithZone(SFStartNetworkSearchFeedback);
    v19 = sub_100101DF4(0, 0xE000000000000000, v13, v14, v17, 16, 10);
    sub_100005180(0, &qword_100218220, _CPFeedbackPayload_ptr);
    v20 = v19;
    v21 = sub_1000E4D94(v20, 0);
    v22 = v25;
    sub_100014D74();

    a1[3] = &type metadata for ConfigurationController.FeedbackContext;
    swift_unknownObjectRelease();
    *a1 = v20;
    a1[1] = v22;
    a1[2] = v24;
    return (*(v6 + 8))(v8, v26);
  }

  else
  {
    *a1 = 0u;
    *(a1 + 1) = 0u;
  }

  return result;
}

void sub_100100A2C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UserAgent();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F038(a2, v45, &qword_1002181D0, &qword_100198E00);
  if (!v45[3])
  {
    sub_100015C0C(v45, &qword_1002181D0, &qword_100198E00);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v7 = v44[0];
  v8 = v44[1];
  v9 = URLDataSourceOutput.response.getter();
  if (!v9)
  {
    swift_unknownObjectRelease();

    return;
  }

  v10 = v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    swift_unknownObjectRelease();

    return;
  }

  v43 = [v11 statusCode];

  v12 = URLDataSourceOutput.response.getter();
  if (!v12)
  {
    v14 = 0;
LABEL_15:
    v20 = 0;
    goto LABEL_16;
  }

  v13 = v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {

    goto LABEL_15;
  }

  v15 = v7;
  v16 = String._bridgeToObjectiveC()();
  v14 = [v14 valueForHTTPHeaderField:v16];

  if (!v14)
  {
    v7 = v15;
    goto LABEL_15;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v14 = v17;
  v7 = v15;
  v20 = v19;
LABEL_16:
  if (qword_100214090 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000964C(v21, qword_100232A20);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  v24 = os_log_type_enabled(v22, v23);
  v41 = v20;
  v42 = v14;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v40[1] = v8;
    v26 = v25;
    v40[0] = swift_slowAlloc();
    v44[0] = v40[0];
    *v26 = 136315138;
    v45[0] = v14;
    v45[1] = v20;

    sub_100046184(&qword_1002181F0, &qword_10019C610);
    v27 = String.init<A>(describing:)();
    v29 = sub_100009684(v27, v28, v44);

    *(v26 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "x-edge value for config fetch: %s", v26, 0xCu);
    sub_100007378(v40[0]);
  }

  v30 = v7;
  v31 = URLDataSourceOutput.data.getter();
  v33 = v32;
  v34 = Data.count.getter();
  sub_100014A40(v31, v33);
  v35 = URLDataSourceOutput.timingInfo.getter();
  v36 = objc_allocWithZone(SFEndNetworkSearchFeedback);
  v37 = sub_100101EF8(v30, v34, v43, v35, v42, v41);
  sub_100005180(0, &qword_100218220, _CPFeedbackPayload_ptr);
  v38 = v37;
  v39 = sub_1000E4D94(v38, 0);
  parsecdUserAgent.getter();
  sub_100014D74();

  swift_unknownObjectRelease();
  (*(v4 + 8))(v6, v3);
}

uint64_t sub_100100EA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserAgent();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F038(a2, v14, &qword_1002181D0, &qword_100198E00);
  if (!v15)
  {
    return sub_100015C0C(v14, &qword_1002181D0, &qword_100198E00);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v9 = v13[1];
    sub_100005180(0, &unk_100217460, SFErrorFeedback_ptr);
    swift_errorRetain();
    v10 = sub_1000FEFDC(a1);
    sub_100005180(0, &qword_100218220, _CPFeedbackPayload_ptr);
    v11 = v10;
    v12 = sub_1000E4D94(v11, 0);
    parsecdUserAgent.getter();
    sub_100014D74();

    swift_unknownObjectRelease();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

BOOL PARBag.isExpired.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v7 = v6;
  (*(v3 + 8))(v5, v2);
  [v1 expirationDate];
  return v8 < v7;
}

uint64_t PARBag.searchURLString.getter()
{
  v1 = v0;
  v2 = sub_100046184(&qword_100218230, &unk_100199A00);
  v3 = sub_100005490(v2);
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v19 - v8;
  v10 = [v1 searchURL];
  if (v10)
  {
    v11 = v10;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = type metadata accessor for URL();
    v13 = 0;
  }

  else
  {
    v12 = type metadata accessor for URL();
    v13 = 1;
  }

  sub_1000051C0(v5, v13, 1, v12);
  sub_100095E04(v5, v9);
  type metadata accessor for URL();
  v14 = sub_10001497C();
  if (sub_100008D0C(v14, v15, v12) == 1)
  {
    sub_100015C0C(v9, &qword_100218230, &unk_100199A00);
    return 0;
  }

  else
  {
    v16 = URL.absoluteString.getter();
    sub_10000690C();
    (*(v17 + 8))(v9, v12);
  }

  return v16;
}

Swift::OpaquePointer_optional __swiftcall PARBag.rawConfig()()
{
  v1 = sub_100102254(v0);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

double PARBag.value(forKey:ofType:)@<D0>(uint64_t a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 valueForKey:v4 override:1];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100046184(&unk_10021A728, &unk_10019F320);
  if (swift_dynamicCast())
  {
    ObjectType = swift_getObjectType();
    if ([v8 isKindOfClass:swift_getObjCClassFromMetadata()])
    {
      *(a2 + 24) = ObjectType;
      *a2 = v8;
      return result;
    }

    swift_unknownObjectRelease();
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t PARBag.value(forKey:shouldConsiderOverrides:)(void x0_0, void x1_0, char a1)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 valueForKey:v4 override:a1 & 1];

  _bridgeAnyObjectToAny(_:)();

  return swift_unknownObjectRelease();
}

Swift::Bool __swiftcall PARBag.configBool(forKey:)(Swift::String forKey)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 valueForKey:v2 shouldConsiderOverrides:1];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    v4 = swift_dynamicCast();
    if (v4)
    {
      LOBYTE(v4) = v6 > 0;
    }
  }

  else
  {
    sub_100015C0C(v9, &qword_1002181D0, &qword_100198E00);
    LOBYTE(v4) = 0;
  }

  return v4;
}

id sub_1001019D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for URL();
  v8 = __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1, v8);
  objc_allocWithZone(PARBag);
  v12 = a4;

  return sub_100101FE0(v10, a3, a4, v13);
}

id sub_100101C2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = objc_allocWithZone(PARBag);

  sub_100014924(a1, a2);
  v11 = a5;
  return sub_1001020B4(a1, a2, a3, a4, a5);
}

id sub_100101D98()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100101DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  if (a2)
  {
    v13 = String._bridgeToObjectiveC()();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15.super.isa = 0;
    goto LABEL_8;
  }

  v13 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v14 = String._bridgeToObjectiveC()();

  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v15.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_8:
  v16 = [v8 initWithInput:v13 url:v14 headers:v15.super.isa triggerEvent:a6 endpoint:a7];

  return v16;
}

id sub_100101EF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (!a4)
  {
    v12.super.isa = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = String._bridgeToObjectiveC()();

LABEL_6:
  v14 = [v7 initWithStartSearch:a1 responseSize:a2 statusCode:a3 networkTimingData:v12.super.isa edge:v13];

  return v14;
}

id sub_100101FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, NSURL *a4@<X8>)
{
  v5 = v4;
  URL._bridgeToObjectiveC()(a4);
  v10 = v9;
  if (a2)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v12 = [v5 initWithURL:v10 userAgent:v11 userDefaults:a3];

  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 8))(a1, v13);
  return v12;
}

id sub_1001020B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v11.super.isa = Data._bridgeToObjectiveC()().super.isa;
  if (a4)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v6 initWithData:v11.super.isa userAgent:v12 userDefaults:a5];

  sub_100014A40(a1, a2);
  return v13;
}

uint64_t sub_100102168()
{
  sub_100006EE0();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = sub_100004054(v3);
  *v4 = v5;
  v4[1] = sub_1000A417C;

  return v7(v1);
}

uint64_t sub_100102254(void *a1)
{
  v1 = [a1 rawBag];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100102308(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1001023FC;

  return v5(v2 + 32);
}

uint64_t sub_1001023FC()
{
  sub_100007B50();
  sub_10000A9A4();
  v2 = v1;
  sub_100007F20();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  sub_100005898();
  *v7 = v6;

  *v5 = *(v2 + 32);
  sub_1000098BC();

  return v8();
}

unint64_t sub_1001024F8()
{
  result = qword_10021A838;
  if (!qword_10021A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A838);
  }

  return result;
}

uint64_t sub_10010254C()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v5 = sub_100004054(v4);
  *v5 = v6;
  v7 = sub_10000B0EC(v5);

  return sub_1000FF938(v7, v8, v9, v10, v11, v1, v2, v3);
}

unint64_t sub_100102608()
{
  result = qword_10021A850;
  if (!qword_10021A850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A850);
  }

  return result;
}

uint64_t sub_10010265C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_100217480, &unk_100198F70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001026CC()
{
  sub_100006EE0();
  sub_1000A5324();
  v0 = swift_task_alloc();
  v1 = sub_100004054(v0);
  *v1 = v2;
  v3 = sub_100005EEC(v1);

  return v4(v3);
}

_BYTE *sub_10010276C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_10010282C()
{
  result = qword_10021A860;
  if (!qword_10021A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A860);
  }

  return result;
}

unint64_t sub_100102884()
{
  result = qword_10021A868;
  if (!qword_10021A868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021A868);
  }

  return result;
}

uint64_t sub_100102910(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1001029B0()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  return v0;
}

uint64_t sub_100102A4C()
{
  sub_1001029B0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100102ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Dictionary.values.getter();
  type metadata accessor for Dictionary.Values();
  swift_getWitnessTable();
  v5 = Array.init<A>(_:)();
  LOBYTE(a3) = sub_100102D5C(v5, a3);

  return a3 & 1;
}

uint64_t sub_100102B60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      sub_100009848(v2, v14);
      sub_100009848(v14, v10);
      sub_100046184(&qword_10021A9B0, &qword_10019F6E8);
      if (swift_dynamicCast())
      {
        sub_100008C84(v8, &v11);
        v3 = *(&v12 + 1);
        v4 = v13;
        sub_100007534(&v11, *(&v12 + 1));
        v5 = (*(v4 + 8))(v3, v4);
        sub_100007378(&v11);
        if ((v5 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v9 = 0;
        memset(v8, 0, sizeof(v8));
        sub_10000F94C(v8, &qword_10021A9B8, &unk_10019F6F0);
        sub_100009848(v14, &v11);
        sub_100005180(0, &qword_10021A9C0, NSString_ptr);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_100009848(v14, &v11);
          sub_100005180(0, &qword_100216EF0, NSNumber_ptr);
          if (!swift_dynamicCast())
          {
LABEL_11:
            sub_100028734(v14, &v11);
            v6 = 0;
            goto LABEL_12;
          }
        }
      }

      sub_100007378(v14);
      v2 += 32;
      --v1;
    }

    while (v1);
  }

  v11 = 0u;
  v12 = 0u;
  v6 = 1;
LABEL_12:
  sub_10000F94C(&v11, &qword_1002181D0, &qword_100198E00);
  return v6;
}

BOOL sub_100102D5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6];
  v12 = a1;
  v11 = a2;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.first(where:)();
  v8 = sub_100008D0C(v7, 1, a2) == 1;
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_100102EB8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  __chkstk_darwin(a1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v19 - v8;
  v11 = __chkstk_darwin(v10);
  v12 = *(v4 + 16);
  v12(v19 - v13, a1, a2, v11);
  sub_100046184(&qword_10021A9B0, &qword_10019F6E8);
  if (swift_dynamicCast())
  {
    sub_100008C84(v19, v21);
    v14 = v22;
    v15 = v23;
    sub_100007534(v21, v22);
    v16 = (*(v15 + 8))(v14, v15) ^ 1;
    sub_100007378(v21);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_10000F94C(v19, &qword_10021A9B8, &unk_10019F6F0);
    (v12)(v9, a1, a2);
    sub_100005180(0, &qword_10021A9C0, NSString_ptr);
    if (swift_dynamicCast())
    {

      v16 = 0;
    }

    else
    {
      (v12)(v6, a1, a2);
      sub_100005180(0, &qword_100216EF0, NSNumber_ptr);
      v17 = swift_dynamicCast();
      if (v17)
      {
      }

      v16 = v17 ^ 1;
    }
  }

  return v16 & 1;
}

uint64_t sub_100103158(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1001031F8(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t sub_100103208@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001031F8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100103234()
{
  v0 = qword_10021A9C8;

  return v0;
}

uint64_t sub_10010326C()
{
  v0 = aDiskwrite[0];

  return v0;
}

uint64_t sub_1001032C8(uint64_t a1, uint64_t a2)
{
  sub_100046184(&qword_100219540, &unk_1001A8690);
  inited = swift_initStackObject();
  sub_10000441C(inited, xmmword_100198F10);
  inited[3].n128_u64[0] = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  strcpy(&inited[3].n128_i8[8], "feedbackType");
  inited[4].n128_u8[5] = 0;
  inited[4].n128_u16[3] = -5120;
  inited[4].n128_u64[1] = [objc_allocWithZone(NSNumber) initWithInt:a2];
  sub_10000EA9C();
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1001033B4()
{
  v1 = *v0;

  v2 = *(*(*(v1 + 448) - 8) + 8);
  v3 = v0 + *(*v0 + 472);

  return v2(v3);
}

unint64_t sub_100103474(uint64_t a1)
{
  *(a1 + 8) = sub_1001034A4();
  result = sub_1001034F8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001034A4()
{
  result = qword_10021AA70;
  if (!qword_10021AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021AA70);
  }

  return result;
}

unint64_t sub_1001034F8()
{
  result = qword_10021AA78;
  if (!qword_10021AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021AA78);
  }

  return result;
}

unint64_t sub_100103550()
{
  result = qword_10021AA80;
  if (!qword_10021AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021AA80);
  }

  return result;
}

uint64_t sub_1001035A4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1001035B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001035D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

uint64_t sub_100103610(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_100103698(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100103774()
{
  result = qword_10021AA88;
  if (!qword_10021AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021AA88);
  }

  return result;
}

id sub_1001037D0(uint64_t a1, uint64_t a2)
{
  v16 = xmmword_10019BC20;
  v17 = 0;
  v4 = swift_allocObject();
  v4[2] = &v16;
  v4[3] = a1;
  v4[4] = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1001069E4;
  *(v5 + 24) = v4;
  v15[4] = sub_100028274;
  v15[5] = v5;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1000282A4;
  v15[3] = &unk_1001FDC78;
  v6 = _Block_copy(v15);

  v7 = v6[2];
  isEscapingClosureAtFileLocation = v6;
  v7();
  v9 = 0;
  while (1)
  {

    v10 = v9;
    _Block_release(isEscapingClosureAtFileLocation);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (v10)
    {
      v12 = v10;
      Incident.reportTelemetry()();
      sub_1000572E8();
      swift_allocError();
      *v13 = v10;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      swift_willThrow();

      sub_10003AA6C(v16, *(&v16 + 1));

      return v10;
    }

    if (*(&v16 + 1) != 1)
    {
      break;
    }

LABEL_9:
    __break(1u);
    v9 = objc_begin_catch(v11);
    objc_end_catch();
  }

  v10 = v16;

  return v10;
}

uint64_t sub_100103A0C(uint64_t a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v7);
  v3 = v8;
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = v7;
  *(a1 + 16) = v3;

  return sub_10003AA6C(v4, v5);
}

uint64_t sub_100103A6C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  if (qword_1002140D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000964C(v4, qword_100232AE0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    if (*(v2 + 40))
    {
      v9 = *(v2 + 32);
      v10 = *(v2 + 40);
    }

    else
    {
      v10 = 0xE300000000000000;
      v9 = 7104878;
    }

    v11 = sub_100009684(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "updating storefrontIdentifier: %s", v7, 0xCu);
    sub_100007378(v8);
  }

  v12 = *(v2 + 40);
  *a1 = *(v2 + 32);
  a1[1] = v12;
  type metadata accessor for ContextUpdate(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_100103C20(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100103C9C(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100103C9C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  sub_100003650();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100003664();
  v14 = v13 - v12;
  v27 = type metadata accessor for DispatchQoS();
  sub_100003650();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100003664();
  v20 = v19 - v18;
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  *(v21 + 24) = a1;
  *(v21 + 32) = a2;
  *(v21 + 40) = a3;
  v31 = sub_100106B8C;
  v32 = v21;
  sub_100003784();
  sub_1000040A8(COERCE_DOUBLE(1107296256));
  v29 = v22;
  v30 = &unk_1001FDEF8;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_10000F4D8();
  sub_1000152E8(v24, v25, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_100038314(&qword_1002147E0, &unk_100217030, &unk_1001989C0);
  sub_10000DD54();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008A7C();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v10 + 8))(v14, v8);
  (*(v16 + 8))(v20, v27);
}

unint64_t sub_100103EF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1002141C8 != -1)
  {
    swift_once();
  }

  v6 = sub_1000423A0(*(off_10021AA90 + 2), 1uLL);
  v7 = &v2[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_registrations];

  os_unfair_lock_lock(v7);
  sub_10010684C(sub_10006C78C);
  v8 = *(*&v7[2]._os_unfair_lock_opaque + 16);
  sub_100110714(v8);
  v9 = *&v7[2]._os_unfair_lock_opaque;
  *(v9 + 16) = v8 + 1;
  v10 = (v9 + 24 * v8);
  v10[4] = v6;
  v10[5] = a1;
  v10[6] = a2;

  os_unfair_lock_unlock(v7);
  v11 = *&v2[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_queue];
  v12 = swift_allocObject();
  v12[2] = v3;
  v12[3] = v6;
  v12[4] = a1;
  v12[5] = a2;
  sub_100006634();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100106B5C;
  *(v13 + 24) = v12;
  v20[4] = sub_100106BC8;
  v20[5] = v13;
  sub_100003AF0();
  sub_1000060BC();
  v20[2] = v14;
  v20[3] = &unk_1001FDE58;
  v15 = _Block_copy(v20);

  v16 = v11;
  v17 = v3;

  dispatch_sync(v16, v15);

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_100104114()
{
  v1 = v0;
  if ((*(v0 + 80) & 1) == 0)
  {
    v2 = *(v0 + 72);
    v3 = *(v1 + 88);
    sub_100104190(v2);
  }

  sub_10000B218(v1 + 16);

  sub_10000B218(v1 + 48);

  return v1;
}

void sub_100104190(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_registrations;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_registrations));
  v4 = 0;
  v5 = 0;
  v6 = (v3 + 8);
  v7 = *(v3 + 8);
  v8 = *(v7 + 16);
  while (1)
  {
    if (v8 == v5)
    {
      v5 = *(v7 + 16);
LABEL_19:
      sub_1001068CC(v5, v8);

      os_unfair_lock_unlock(v3);
      return;
    }

    if (*(v7 + v4 + 32) == a1)
    {
      break;
    }

    ++v5;
    v4 += 24;
  }

  v18 = v3;
  v9 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    while (v9 != v8)
    {
      if (v9 >= v8)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v10 = *(v7 + v4 + 56);
      if (v10 != a1)
      {
        if (v9 != v5)
        {
          if (v5 >= v8)
          {
            goto LABEL_23;
          }

          v11 = (v7 + 32 + 24 * v5);
          v19 = v11[1];
          v20 = *v11;
          v12 = v11[2];
          v13 = *(v7 + v4 + 72);
          v21 = *(v7 + v4 + 64);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v6 = v7;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1001107AC(v7);
            v7 = v17;
            *v6 = v17;
          }

          v15 = (v7 + 24 * v5);
          v15[4] = v10;
          v15[5] = v21;
          v15[6] = v13;

          *v6 = v7;
          if (v9 >= *(v7 + 16))
          {
            goto LABEL_24;
          }

          v16 = (v7 + v4);
          v16[7] = v20;
          v16[8] = v19;
          v16[9] = v12;

          *v6 = v7;
          v8 = *(v7 + 16);
        }

        ++v5;
      }

      ++v9;
      v4 += 24;
    }

    v3 = v18;
    if (v8 >= v5)
    {
      goto LABEL_19;
    }

LABEL_25:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10010435C()
{
  sub_100104114();

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_100104390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (!v6 || ((result = *(a1 + 32), result == a2) ? (v8 = v6 == a3) : (v8 = 0), !v8 && (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0)))
  {
    *(a1 + 32) = a2;
    *(a1 + 40) = a3;

    return sub_10010E3B4();
  }

  return result;
}

uint64_t sub_100104408(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = a1 == a4 && a2 == a5;
  if (v8 || (v9 = _stringCompareWithSmolCheck(_:_:expecting:)(), v10 = 0, (v9 & 1) != 0))
  {
    v10 = a3 ^ a6 ^ 1;
  }

  return v10 & 1;
}

id sub_100104478()
{
  v3 = 0;
  result = [v0 registerSynchronouslyWithError:&v3];
  v2 = v3;
  if (v3)
  {
    swift_willThrow();
    return v2;
  }

  return result;
}

id sub_10010451C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100104544(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001045D4()
{
  v1 = [v0 monitoredAccounts];
  sub_100005180(0, &qword_10021AC58, ACAccount_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void *sub_100104698()
{
  sub_100046184(&qword_10021AC50, &qword_10019FB80);
  v0 = swift_allocObject();
  result = sub_100042350(0);
  *(v0 + 16) = result;
  off_10021AA90 = v0;
  return result;
}

id sub_1001046EC()
{
  result = [objc_allocWithZone(type metadata accessor for AppleAccountMonitor()) init];
  qword_100232D40 = result;
  return result;
}

char *sub_10010471C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100005180(0, &qword_10021AC28, ACMonitoredAccountStore_ptr);
  v2 = objc_allocWithZone(ObjectType);
  v3 = sub_1001047D0(v1, &off_1001FDA08);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

char *sub_1001047D0(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v37 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v37);
  sub_100003664();
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  sub_100003664();
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100003650();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100003664();
  v11 = v10 - v9;
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100003650();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100003664();
  v18 = v17 - v16;
  v19 = &v3[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_monitoredAccountStore];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  v36 = OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_queue;
  sub_100005180(0, &qword_1002147C0, OS_dispatch_queue_ptr);
  (*(v14 + 104))(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v12);
  (*(v7 + 104))(v11, enum case for DispatchQoS.QoSClass.utility(_:), v5);
  static OS_dispatch_queue.global(qos:)();
  (*(v7 + 8))(v11, v5);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000152E8(&qword_1002157A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100046184(&unk_100217550, &unk_1001999F0);
  sub_100038314(&qword_1002157A8, &unk_100217550, &unk_1001999F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v3[v36] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v20 = &v3[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_registrations];
  *v20 = 0;
  *(v20 + 1) = _swiftEmptyArrayStorage;
  v21 = &v3[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_lastAccount];
  v21[16] = 0;
  *v21 = 0;
  *(v21 + 1) = 0;
  v3[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_didRegister] = 0;
  v45.receiver = v3;
  v45.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v45, "init");
  sub_100046184(&qword_10021AC30, &qword_10019FB60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100197F20;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v24;
  v25 = v22;
  v26 = sub_1000ECD9C(inited);
  v27 = *(a2 + 8);
  v42 = a1;
  v43 = a2;
  sub_1000205C4(aBlock);
  v28 = v25;
  v27(v26, v25, a1, a2);
  v29 = OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_monitoredAccountStore;
  swift_beginAccess();
  sub_100106A7C(aBlock, &v28[v29]);
  swift_endAccess();
  v30 = *&v28[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_queue];
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  sub_100006634();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_100106BE4;
  *(v32 + 24) = v31;
  v43 = sub_100106BC8;
  v44 = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000282A4;
  v42 = &unk_1001FDDE0;
  v33 = _Block_copy(aBlock);
  v34 = v30;

  dispatch_sync(v34, v33);

  _Block_release(v33);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if ((v33 & 1) == 0)
  {
    return v28;
  }

  __break(1u);
  return result;
}

void sub_100104D68()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = (v1 + OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_monitoredAccountStore);
    swift_beginAccess();
    sub_100106AEC(v9, v31);
    v10 = v32;
    if (!v32)
    {
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v11 = v33;
    sub_100007534(v31, v32);
    (*(v11 + 16))(v10, v11);
    sub_100007378(v31);
    *(v1 + OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_didRegister) = 1;
    v20 = v9[3];
    if (!v20)
    {
      goto LABEL_19;
    }

    v21 = v9[4];
    v22 = sub_100007534(v9, v9[3]);
    v23 = *(v20 - 8);
    v24 = __chkstk_darwin(v22);
    v26 = v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    v27 = (*(v21 + 24))(v20, v21);
    (*(v23 + 8))(v26, v20);
    if (sub_10000D57C(v27))
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_11;
      }

      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v28 = *(v27 + 32);
LABEL_11:
        v29 = v28;

        sub_1001051C4(v29);

        return;
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v12 = type metadata accessor for Logger();
    sub_10000964C(v12, qword_100232AE0);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31[0] = v16;
      *v15 = 136315138;
      v30[0] = v6;
      swift_errorRetain();
      sub_100046184(&qword_100216900, &unk_10019AE20);
      v17 = String.init<A>(describing:)();
      v19 = sub_100009684(v17, v18, v31);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to register for account updates: %s", v15, 0xCu);
      sub_100007378(v16);
    }

    else
    {
    }
  }
}

void sub_1001051C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v94 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v93 = *(v7 - 8);
  __chkstk_darwin(v7);
  v83 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (&v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_queue;
  v14 = *&v2[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_queue];
  *v13 = v14;
  (*(v10 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v9, v11);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  v17 = (*(v10 + 8))(v13, v9);
  if (v16)
  {
    v18 = v7;
    __chkstk_darwin(v17);
    *(&v79 - 2) = a1;
    v19 = sub_1001037D0(sub_10010679C, (&v79 - 4));
    v30 = v20;
    if (v20)
    {
      v31 = v19;
      v32 = v21;
      v82 = v6;
      v33 = &v2[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_lastAccount];
      v34 = *&v2[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_lastAccount + 8];
      if (v34)
      {
        v35 = v33[16];
        if (v19 == *v33 && v20 == v34)
        {
          if ((v21 & 1) == (v35 & 1))
          {
LABEL_14:

            if (qword_1002140D0 != -1)
            {
              swift_once();
            }

            v37 = type metadata accessor for Logger();
            sub_10000964C(v37, qword_100232AE0);
            v23 = Logger.logObject.getter();
            v38 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v23, v38))
            {
              v39 = swift_slowAlloc();
              *v39 = 0;
              _os_log_impl(&_mh_execute_header, v23, v38, "storefront account properties unchanged", v39, 2u);
            }

            goto LABEL_5;
          }
        }

        else if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && ((v32 ^ v35) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v40 = qword_1002140D0;

      if (v40 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_10000964C(v41, qword_100232AE0);

      v42 = v2;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.info.getter();

      v45 = os_log_type_enabled(v43, v44);
      v81 = v4;
      v91 = v2;
      v87 = v42;
      v90 = v31;
      if (v45)
      {
        v46 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v46 = 136315394;
        v47 = *(v33 + 1);
        v48 = v33[16];
        aBlock = *v33;
        v97 = v47;
        LOBYTE(v98[0]) = v48;

        sub_100046184(&qword_10021AC18, &unk_10019FB50);
        v49 = String.init<A>(describing:)();
        v51 = sub_100009684(v49, v50, &v95);

        *(v46 + 4) = v51;
        *(v46 + 12) = 2080;
        aBlock = v90;
        v97 = v30;
        v52 = v32 & 1;
        LOBYTE(v98[0]) = v52;

        v53 = String.init<A>(describing:)();
        v55 = sub_100009684(v53, v54, &v95);

        *(v46 + 14) = v55;
        LODWORD(v55) = v52;
        _os_log_impl(&_mh_execute_header, v43, v44, "storefront account properties changed: %s -> %s", v46, 0x16u);
        swift_arrayDestroy();

        v31 = v90;
      }

      else
      {

        LODWORD(v55) = v32 & 1;
      }

      *v33 = v31;
      *(v33 + 1) = v30;
      v33[16] = v55;

      v56 = [objc_opt_self() defaultCenter];
      if (qword_100214020 != -1)
      {
        swift_once();
      }

      v57 = qword_1002328E0;
      sub_100046184(&unk_100217020, &unk_10019B4C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100197F20;
      aBlock = 0x756F636341524150;
      v97 = 0xEA0000000000746ELL;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for StorefrontAccount;
      *(inited + 72) = v31;
      *(inited + 80) = v30;
      *(inited + 88) = v55;

      v59 = Dictionary.init(dictionaryLiteral:)();
      sub_100033AC0(v57, 0, v59, v56);

      v60 = (v87 + OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_registrations);
      os_unfair_lock_lock((v87 + OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_registrations));
      v80 = v60;
      v61 = *&v60[2]._os_unfair_lock_opaque;
      v62 = v30;
      v63 = *(v61 + 16);
      v64 = v91;
      v65 = v81;
      v66 = v82;
      v67 = v83;
      v68 = v92;
      if (v63)
      {
        v87 = v98;
        v86 = (v94 + 8);
        v85 = (v93 + 8);
        v69 = (v61 + 48);
        v89 = v62;
        v88 = v18;
        v84 = v55;
        do
        {
          v94 = v63;
          v70 = v65;
          v71 = *(v69 - 2);
          v72 = *(v69 - 1);
          v73 = *v69;
          v74 = *&v64[v68];
          v75 = swift_allocObject();
          *(v75 + 16) = v71;
          *(v75 + 24) = v72;
          v93 = v73;
          v76 = v90;
          *(v75 + 32) = v73;
          *(v75 + 40) = v76;
          *(v75 + 48) = v62;
          *(v75 + 56) = v55;
          v98[2] = sub_1001069B0;
          v98[3] = v75;
          aBlock = _NSConcreteStackBlock;
          v97 = 1107296256;
          v98[0] = sub_10000D50C;
          v98[1] = &unk_1001FDC00;
          v77 = _Block_copy(&aBlock);
          swift_retain_n();

          v55 = v74;
          static DispatchQoS.unspecified.getter();
          v95 = _swiftEmptyArrayStorage;
          sub_1000152E8(&qword_1002147D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_100046184(&unk_100217030, &unk_1001989C0);
          sub_100038314(&qword_1002147E0, &unk_100217030, &unk_1001989C0);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          v65 = v70;
          v78 = v88;
          _Block_release(v77);

          LOBYTE(v55) = v84;
          v62 = v89;
          (*v86)(v66, v65);
          (*v85)(v67, v78);

          v68 = v92;
          v64 = v91;
          v69 += 3;
          v63 = v94 - 1;
        }

        while (v94 != 1);
      }

      os_unfair_lock_unlock(v80);
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v22 = type metadata accessor for Logger();
    sub_10000964C(v22, qword_100232AE0);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock = v26;
      *v25 = 136315138;
      swift_getErrorValue();
      v27 = Error.localizedDescription.getter();
      v29 = sub_100009684(v27, v28, &aBlock);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to retrieve ams storefront due to error: %s", v25, 0xCu);
      sub_100007378(v26);

LABEL_5:

      return;
    }
  }
}

id sub_100105D28()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_monitoredAccountStore;
  swift_beginAccess();
  result = sub_100106AEC(v0 + v2, v8);
  if (v9)
  {
    v4 = v10;
    sub_100007534(v8, v9);
    v5 = *(v4 + 32);
    v6 = v0;
    v5();

    sub_100007378(v8);
    v7.receiver = v6;
    v7.super_class = ObjectType;
    return objc_msgSendSuper2(&v7, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100105EBC(char *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void))
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_didRegister])
  {
    v14 = &a1[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_lastAccount];
    v15 = *&a1[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_lastAccount + 8];
    if (v15)
    {
      v16 = *v14;
      v17 = v14[16];

      a3(v16, v15, v17 & 1);
    }
  }

  else
  {
    v18 = *&a1[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_queue];
    v24 = v11;
    v25 = v10;
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    aBlock[4] = sub_100106B68;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000D50C;
    aBlock[3] = &unk_1001FDEA8;
    v20 = _Block_copy(aBlock);
    v21 = v18;
    v22 = a1;
    static DispatchQoS.unspecified.getter();
    v26 = _swiftEmptyArrayStorage;
    sub_1000152E8(&qword_1002147D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100046184(&unk_100217030, &unk_1001989C0);
    sub_100038314(&qword_1002147E0, &unk_100217030, &unk_1001989C0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v6 + 8))(v8, v5);
    (*(v24 + 8))(v13, v25);
  }
}

uint64_t sub_100106298(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  sub_100003650();
  v31 = v9;
  __chkstk_darwin(v10);
  sub_100003664();
  v13 = v12 - v11;
  v30 = type metadata accessor for DispatchQoS();
  sub_100003650();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100003664();
  v19 = v18 - v17;
  v20 = *&v4[OBJC_IVAR____TtC7parsecd19AppleAccountMonitor_queue];
  sub_100006634();
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  *(v21 + 24) = a1;
  v35 = a3;
  v36 = v21;
  sub_100003784();
  sub_1000040A8(COERCE_DOUBLE(1107296256));
  v33 = v22;
  v34 = a4;
  v23 = _Block_copy(aBlock);
  v24 = v20;
  v25 = v4;
  v26 = a1;
  static DispatchQoS.unspecified.getter();
  sub_10000F4D8();
  sub_1000152E8(v27, v28, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_100038314(&qword_1002147E0, &unk_100217030, &unk_1001989C0);
  sub_10000DD54();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008A7C();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v31 + 8))(v13, v8);
  (*(v15 + 8))(v19, v30);
}

uint64_t sub_10010669C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001066DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_10010674C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001069F0(a1);
  v6 = v5;
  result = [a1 aa_isManagedAppleID];
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = result;
  return result;
}

id sub_1001067A4(uint64_t a1, uint64_t a2)
{
  isa = Set._bridgeToObjectiveC()().super.isa;

  v5 = [v2 initWithAccountTypes:isa delegate:a2];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_10010684C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

unint64_t sub_1001068A8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001068CC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000BC340(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 24 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1001159A0((v9 + 24 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1001069F0(void *a1)
{
  v1 = [a1 ams_storefront];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100106A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&unk_10021AC38, &unk_10019FB68);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100106AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&unk_10021AC38, &unk_10019FB68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

parsecd::SessionFilename::SessionFileState_optional __swiftcall SessionFilename.SessionFileState.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001F5BE8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t SessionFilename.SessionFileState.rawValue.getter(char a1)
{
  result = 1852141679;
  switch(a1)
  {
    case 1:
      result = 0x6465736F6C63;
      break;
    case 2:
      result = 0x69737365636F7270;
      break;
    case 3:
      result = 0x646564616F6C7075;
      break;
    default:
      return result;
  }

  return result;
}

parsecd::SessionFilename::SessionFileState_optional sub_100106D34@<W0>(Swift::String *a1@<X0>, parsecd::SessionFilename::SessionFileState_optional *a2@<X8>)
{
  result.value = SessionFilename.SessionFileState.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100106D64@<X0>(uint64_t *a1@<X8>)
{
  result = SessionFilename.SessionFileState.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SessionFilename.sessionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7parsecd15SessionFilename_sessionID;
  sub_1000089E4(v1 + OBJC_IVAR____TtC7parsecd15SessionFilename_sessionID, v6);
  type metadata accessor for UUID();
  sub_1000036B8();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t SessionFilename.sessionID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7parsecd15SessionFilename_sessionID;
  swift_beginAccess();
  type metadata accessor for UUID();
  sub_1000036B8();
  (*(v4 + 40))(v1 + v3, a1);
  return swift_endAccess();
}

uint64_t SessionFilename.processID.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7parsecd15SessionFilename_processID;
  sub_100006B88(a1);
  return *(v1 + v2);
}

uint64_t SessionFilename.processID.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC7parsecd15SessionFilename_processID;
  result = sub_100011A48(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t SessionFilename.state.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7parsecd15SessionFilename_state;
  sub_100006B88(a1);
  return *(v1 + v2);
}

uint64_t SessionFilename.state.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC7parsecd15SessionFilename_state;
  result = sub_100011A48(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t SessionFilename.uploadPending.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7parsecd15SessionFilename_uploadPending;
  sub_100006B88(a1);
  return *(v1 + v2);
}

uint64_t SessionFilename.uploadPending.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC7parsecd15SessionFilename_uploadPending;
  result = sub_100011A48(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t SessionFilename.__allocating_init()()
{
  v0 = swift_allocObject();
  SessionFilename.init()(v0);
  return v0;
}

uint64_t SessionFilename.init()(uint64_t a1)
{
  UUID.init()();
  v2 = OBJC_IVAR____TtC7parsecd15SessionFilename_processID;
  v3 = [objc_opt_self() processInfo];
  v4 = [v3 processIdentifier];

  *(v1 + v2) = v4;
  *(v1 + OBJC_IVAR____TtC7parsecd15SessionFilename_state) = 0;
  *(v1 + OBJC_IVAR____TtC7parsecd15SessionFilename_uploadPending) = 0;
  return v1;
}

uint64_t SessionFilename.init(fromString:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100046184(&unk_100219B70, &qword_10019DFE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v63 - v7;
  v9 = type metadata accessor for UUID();
  sub_100003650();
  v70 = v10;
  __chkstk_darwin(v11);
  sub_100003664();
  v69 = v13 - v12;
  v65 = OBJC_IVAR____TtC7parsecd15SessionFilename_sessionID;
  UUID.init()();
  v14 = OBJC_IVAR____TtC7parsecd15SessionFilename_processID;
  v15 = [objc_opt_self() processInfo];
  v16 = [v15 processIdentifier];

  v67 = v14;
  *(v3 + v14) = v16;
  v64 = OBJC_IVAR____TtC7parsecd15SessionFilename_state;
  *(v3 + OBJC_IVAR____TtC7parsecd15SessionFilename_state) = 0;
  v66 = OBJC_IVAR____TtC7parsecd15SessionFilename_uploadPending;
  *(v3 + OBJC_IVAR____TtC7parsecd15SessionFilename_uploadPending) = 0;
  v77 = 46;
  v78 = 0xE100000000000000;
  v74 = &v77;

  v68 = a1;
  v17 = sub_100018BC0(0x7FFFFFFFFFFFFFFFLL, 1, sub_10003377C, v73, a1, a2);
  v18 = v17[2];
  if (v18)
  {
    v71 = v8;
    v72 = v3;
    v77 = _swiftEmptyArrayStorage;
    sub_1000EC984();
    v19 = v77;
    v20 = v17 + 7;
    do
    {

      v21 = static String._fromSubstring(_:)();
      v23 = v22;

      v77 = v19;
      v24 = v19[2];
      if (v24 >= v19[3] >> 1)
      {
        sub_1000EC984();
        v19 = v77;
      }

      v19[2] = v24 + 1;
      v25 = &v19[2 * v24];
      v25[4] = v21;
      v25[5] = v23;
      v20 += 4;
      --v18;
    }

    while (v18);

    v8 = v71;
    v3 = v72;
  }

  else
  {

    v19 = _swiftEmptyArrayStorage;
  }

  if (v19[2] < 4uLL || ((result = v19[4], result == 0x6E6F6973736573) ? (v27 = v19[5] == 0xE700000000000000) : (v27 = 0), !v27 && (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0)))
  {

    goto LABEL_85;
  }

  v28 = v19[6];
  v29 = v19[7];
  v30 = HIBYTE(v29) & 0xF;
  v31 = v28 & 0xFFFFFFFFFFFFLL;
  if ((v29 & 0x2000000000000000) != 0)
  {
    v32 = HIBYTE(v29) & 0xF;
  }

  else
  {
    v32 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {
LABEL_84:

LABEL_85:

    return 0;
  }

  if ((v29 & 0x1000000000000000) != 0)
  {

    v34 = sub_100107A5C(v28, v29, 10);

    if ((v34 & 0x100000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_84;
  }

  if ((v29 & 0x2000000000000000) != 0)
  {
    v77 = v19[6];
    v78 = v29 & 0xFFFFFFFFFFFFFFLL;
    if (v28 == 43)
    {
      if (v30)
      {
        if (v30 != 1)
        {
          sub_100005660();
          while (1)
          {
            sub_1000060D4();
            if (!v27 & v35)
            {
              break;
            }

            sub_100007D40();
            if (!v27)
            {
              break;
            }

            LODWORD(v34) = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            sub_1000080F4();
            if (v27)
            {
              goto LABEL_83;
            }
          }
        }

        goto LABEL_82;
      }
    }

    else
    {
      if (v28 != 45)
      {
        if (v30)
        {
          while (1)
          {
            sub_1000060D4();
            if (!v27 & v35)
            {
              break;
            }

            sub_100007D40();
            if (!v27)
            {
              break;
            }

            LODWORD(v34) = v48 + v47;
            if (__OFADD__(v48, v47))
            {
              break;
            }

            sub_1000080F4();
            if (v27)
            {
              goto LABEL_83;
            }
          }
        }

        goto LABEL_82;
      }

      if (v30)
      {
        if (v30 != 1)
        {
          sub_100005660();
          while (1)
          {
            sub_1000060D4();
            if (!v27 & v35)
            {
              break;
            }

            sub_100007D40();
            if (!v27)
            {
              break;
            }

            LODWORD(v34) = v40 - v39;
            if (__OFSUB__(v40, v39))
            {
              break;
            }

            sub_1000080F4();
            if (v27)
            {
              goto LABEL_83;
            }
          }
        }

        goto LABEL_82;
      }

LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  if ((v28 & 0x1000000000000000) == 0)
  {
    goto LABEL_97;
  }

  for (result = (v29 & 0xFFFFFFFFFFFFFFFLL) + 32; ; result = _StringObject.sharedUTF8.getter())
  {
    v33 = *result;
    if (v33 == 43)
    {
      if (v31 < 1)
      {
        goto LABEL_101;
      }

      if (v31 != 1)
      {
        LODWORD(v34) = 0;
        if (!result)
        {
          goto LABEL_73;
        }

        while (1)
        {
          sub_1000060D4();
          if (!v27 & v35)
          {
            break;
          }

          sub_100007D40();
          if (!v27)
          {
            break;
          }

          LODWORD(v34) = v42 + v41;
          if (__OFADD__(v42, v41))
          {
            break;
          }

          sub_1000080F4();
          if (v27)
          {
            goto LABEL_83;
          }
        }
      }
    }

    else if (v33 == 45)
    {
      if (v31 < 1)
      {
        goto LABEL_99;
      }

      if (v31 != 1)
      {
        LODWORD(v34) = 0;
        if (!result)
        {
          goto LABEL_73;
        }

        while (1)
        {
          sub_1000060D4();
          if (!v27 & v35)
          {
            break;
          }

          sub_100007D40();
          if (!v27)
          {
            break;
          }

          LODWORD(v34) = v37 - v36;
          if (__OFSUB__(v37, v36))
          {
            break;
          }

          sub_1000080F4();
          if (v27)
          {
            goto LABEL_83;
          }
        }
      }
    }

    else if (v31)
    {
      LODWORD(v34) = 0;
      if (!result)
      {
LABEL_73:
        v38 = 0;
        goto LABEL_83;
      }

      while (1)
      {
        v45 = *result - 48;
        if (v45 > 9)
        {
          break;
        }

        v46 = 10 * v34;
        if (v46 != v46)
        {
          break;
        }

        LODWORD(v34) = v46 + v45;
        if (__OFADD__(v46, v45))
        {
          break;
        }

        ++result;
        if (!--v31)
        {
          goto LABEL_73;
        }
      }
    }

LABEL_82:
    LODWORD(v34) = 0;
    v38 = 1;
LABEL_83:
    v76[0] = v38;
    if (v38)
    {
      goto LABEL_84;
    }

LABEL_89:
    if (v19[2] >= 3uLL)
    {
      break;
    }

    __break(1u);
LABEL_97:
    ;
  }

  UUID.init(uuidString:)();

  if (sub_100008D0C(v8, 1, v9) == 1)
  {

    sub_1000BF9D0(v8);
    return 0;
  }

  result = (*(v70 + 32))(v69, v8, v9);
  if (v19[2] < 4uLL)
  {
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v49 = v19[10];
  v50 = v19[11];

  v51._countAndFlagsBits = v49;
  v51._object = v50;
  v52.value = SessionFilename.SessionFileState.init(rawValue:)(v51).value;
  if (v52.value == parsecd_SessionFilename_SessionFileState_unknownDefault)
  {
    (*(v70 + 8))(v69, v9);

    goto LABEL_85;
  }

  value = v52.value;
  v54 = v65;
  swift_beginAccess();
  v55 = v70;
  v56 = v3 + v54;
  v57 = v69;
  (*(v70 + 24))(v56, v69, v9);
  swift_endAccess();
  v58 = v67;
  sub_100004064(v3 + v67, &v77);
  *(v3 + v58) = v34;
  v59 = v64;
  sub_100004064(v3 + v64, v76);
  *(v3 + v59) = value;
  v60._countAndFlagsBits = 0x5064616F6C70752ELL;
  v60._object = 0xEE00676E69646E65;
  v61 = String.hasSuffix(_:)(v60);

  (*(v55 + 8))(v57, v9);
  v62 = v66;
  sub_100004064(v3 + v66, v75);
  *(v3 + v62) = v61;
  return v3;
}

uint64_t SessionFilename.deinit()
{
  v1 = OBJC_IVAR____TtC7parsecd15SessionFilename_sessionID;
  type metadata accessor for UUID();
  sub_1000036B8();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

void *sub_1001079EC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100046184(&qword_100216160, &qword_10019A598);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_100107A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100107FD4(result, v5);
    v41 = v40;

    v7 = v41;
    if ((v41 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v23 = v8 - 1;
        if (v8 != 1)
        {
          v24 = a3 + 48;
          v25 = a3 + 55;
          v26 = a3 + 87;
          if (a3 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v14 = 0;
            v27 = result + 1;
            v16 = 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_127;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v14 * a3;
              if (v30 != v30)
              {
                goto LABEL_126;
              }

              v31 = v28 + v29;
              v22 = __OFADD__(v30, v31);
              v14 = v30 + v31;
              if (v22)
              {
                goto LABEL_126;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_46:
            v16 = 0;
            v19 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        v16 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v35 = 0;
          v16 = 1;
          do
          {
            v36 = *result;
            if (v36 < 0x30 || v36 >= v32)
            {
              if (v36 < 0x41 || v36 >= v33)
              {
                v19 = 0;
                if (v36 < 0x61 || v36 >= v34)
                {
                  goto LABEL_127;
                }

                v37 = -87;
              }

              else
              {
                v37 = -55;
              }
            }

            else
            {
              v37 = -48;
            }

            v38 = v35 * a3;
            if (v38 != v38)
            {
              goto LABEL_126;
            }

            v39 = v36 + v37;
            v22 = __OFADD__(v38, v39);
            v35 = v38 + v39;
            if (v22)
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v16 = 0;
          v19 = v35;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          v16 = 1;
          while (1)
          {
            v17 = *v15;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v14 * a3;
            if (v20 != v20)
            {
              goto LABEL_126;
            }

            v21 = v17 + v18;
            v22 = __OFSUB__(v20, v21);
            v14 = v20 - v21;
            if (v22)
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
        v16 = 0;
LABEL_127:

        LOBYTE(v70) = v16;
        return (v19 | (v16 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v42 = HIBYTE(v7) & 0xF;
  v70 = v6;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v42)
      {
        v44 = 0;
        v62 = a3 + 48;
        v63 = a3 + 55;
        v64 = a3 + 87;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v64 = 97;
          v63 = 65;
        }

        v65 = &v70;
        v16 = 1;
        while (1)
        {
          v66 = *v65;
          if (v66 < 0x30 || v66 >= v62)
          {
            if (v66 < 0x41 || v66 >= v63)
            {
              v19 = 0;
              if (v66 < 0x61 || v66 >= v64)
              {
                goto LABEL_127;
              }

              v67 = -87;
            }

            else
            {
              v67 = -55;
            }
          }

          else
          {
            v67 = -48;
          }

          v68 = v44 * a3;
          if (v68 != v68)
          {
            goto LABEL_126;
          }

          v69 = v66 + v67;
          v22 = __OFADD__(v68, v69);
          v44 = v68 + v69;
          if (v22)
          {
            goto LABEL_126;
          }

          v65 = (v65 + 1);
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v42)
    {
      v43 = v42 - 1;
      if (v43)
      {
        v44 = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v70 + 1;
        v16 = 1;
        while (1)
        {
          v49 = *v48;
          if (v49 < 0x30 || v49 >= v45)
          {
            if (v49 < 0x41 || v49 >= v46)
            {
              v19 = 0;
              if (v49 < 0x61 || v49 >= v47)
              {
                goto LABEL_127;
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          v51 = v44 * a3;
          if (v51 != v51)
          {
            goto LABEL_126;
          }

          v52 = v49 + v50;
          v22 = __OFSUB__(v51, v52);
          v44 = v51 - v52;
          if (v22)
          {
            goto LABEL_126;
          }

          ++v48;
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v42)
  {
    v53 = v42 - 1;
    if (v53)
    {
      v44 = 0;
      v54 = a3 + 48;
      v55 = a3 + 55;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v54 = 58;
      }

      else
      {
        v56 = 97;
        v55 = 65;
      }

      v57 = &v70 + 1;
      v16 = 1;
      do
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            v19 = 0;
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_127;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }
        }

        else
        {
          v59 = -48;
        }

        v60 = v44 * a3;
        if (v60 != v60)
        {
          goto LABEL_126;
        }

        v61 = v58 + v59;
        v22 = __OFADD__(v60, v61);
        v44 = v60 + v61;
        if (v22)
        {
          goto LABEL_126;
        }

        ++v57;
        --v53;
      }

      while (v53);
LABEL_125:
      v16 = 0;
      v19 = v44;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100107FD4(uint64_t a1, unint64_t a2)
{
  v2 = sub_100108040(sub_10010803C, 0, a1, a2);
  v6 = sub_100108074(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100108074(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_1001079EC(v9, 0), v12 = sub_1001081D4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1001081D4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1000F8AF4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1000F8AF4(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1001083E8()
{
  result = qword_10021AC60;
  if (!qword_10021AC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021AC60);
  }

  return result;
}

uint64_t sub_100108444(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionFilename.SessionFileState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1001085D4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7parsecd10NullStream__bytesWritten);
  v4 = __OFADD__(v3, a2);
  v5 = v3 + a2;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC7parsecd10NullStream__bytesWritten) = v5;
    return a2;
  }

  return result;
}

id sub_100108648()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7parsecd10NullStream__bytesWritten] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "initToMemory");
}

id sub_1001086B0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC7parsecd10NullStream__bytesWritten] = 0;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "initToBuffer:capacity:", a1, a2);
}

id sub_100108740(uint64_t a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC7parsecd10NullStream__bytesWritten;
  *&v3[OBJC_IVAR____TtC7parsecd10NullStream__bytesWritten] = 0;
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v15, "initWithURL:append:", v8, a2 & 1);

  v11 = type metadata accessor for URL();
  v12 = *(*(v11 - 8) + 8);
  v13 = v10;
  v12(a1, v11);
  if (v13)
  {
  }

  return v13;
}

void sub_1001088CC()
{
  v0 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v0);
  sub_100003760();
  __chkstk_darwin(v1);
  v3 = &v31 - v2;
  v4 = type metadata accessor for URL();
  sub_100003650();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100003664();
  v10 = v9 - v8;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100048780();
    sub_1000484C8(v10);
    v11 = URL.lastPathComponent.getter();
    v13 = v12;
    (*(v6 + 8))(v10, v4);
    type metadata accessor for SessionFilename(0);
    swift_allocObject();
    sub_1000054F4();

    v14 = SessionFilename.init(fromString:)(v11, v13);
    if (v14)
    {
      v15 = v14;
      v16 = OBJC_IVAR____TtC7parsecd15SessionFilename_state;
      swift_beginAccess();
      switch(*(v15 + v16))
      {
        case 1:
        case 2:
        case 3:
          v23 = 1852141679;
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v24)
          {
            goto LABEL_10;
          }

          if (qword_1002140B0 != -1)
          {
            sub_100003B30();
            swift_once();
          }

          v25 = type metadata accessor for Logger();
          sub_10000964C(v25, qword_100232A80);
          sub_1000054F4();

          v18 = Logger.logObject.getter();
          v26 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v18, v26))
          {

            goto LABEL_17;
          }

          v27 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          *v27 = 136315394;
          v28 = sub_100009684(v11, v13, &v32);

          *(v27 + 4) = v28;
          *(v27 + 12) = 2080;
          v29 = 0xE400000000000000;
          switch(*(v15 + v16))
          {
            case 1:
              v29 = 0xE600000000000000;
              v23 = 0x6465736F6C63;
              break;
            case 2:
              v23 = 0x69737365636F7270;
              v29 = 0xEA0000000000676ELL;
              break;
            case 3:
              v29 = 0xE800000000000000;
              v23 = 0x646564616F6C7075;
              break;
            default:
              break;
          }

          v30 = sub_100009684(v23, v29, &v32);

          *(v27 + 14) = v30;
          _os_log_impl(&_mh_execute_header, v18, v26, "At close time, file %s had unexpected state %s", v27, 0x16u);
          swift_arrayDestroy();
          sub_1000037A4();

          sub_1000037A4();

          goto LABEL_21;
        default:

LABEL_10:

          v18 = [objc_opt_self() defaultManager];
          NSFileManager.parsec_renameForStateChange(sessionFile:toState:)(v15, 1, v3);
          sub_100015C0C(v3, &qword_100218230, &unk_100199A00);
          swift_unknownObjectRelease();

          break;
      }
    }

    else
    {
      if (qword_1002140B0 != -1)
      {
        sub_100003B30();
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000964C(v17, qword_100232A80);
      sub_1000054F4();

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        sub_1000083D0();
        v21 = swift_slowAlloc();
        v33[0] = v21;
        *v20 = 136315138;
        v22 = sub_100009684(v11, v13, v33);

        *(v20 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v18, v19, "Session file had unexpected name: %s", v20, 0xCu);
        sub_100007378(v21);
        sub_1000037A4();

        sub_1000037A4();
      }

      else
      {
LABEL_17:
      }

LABEL_21:
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100108F94()
{
  sub_10000B218(v0 + 16);

  return _swift_deallocClassInstance(v0, 41, 7);
}

uint64_t sub_100108FF0(void *a1)
{
  v1 = [a1 feedbacks];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100005180(0, &qword_100218220, _CPFeedbackPayload_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_100109060(uint64_t a1)
{
  sub_1001090FC();
  if (v1 <= 0x3F)
  {
    sub_100109124(319);
    if (v2 <= 0x3F)
    {
      sub_1001091A4();
      if (v3 <= 0x3F)
      {
        sub_100109208();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void *sub_1001090FC()
{
  result = qword_10021AF58;
  if (!qword_10021AF58)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_10021AF58);
  }

  return result;
}

void sub_100109124(uint64_t a1)
{
  if (!qword_10021AF60)
  {
    sub_1000461CC(&qword_100216900, &unk_10019AE20);
    type metadata accessor for URL();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10021AF60);
    }
  }
}

void sub_1001091A4()
{
  if (!qword_10021AF68)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10021AF68);
    }
  }
}

unint64_t sub_100109208()
{
  result = qword_10021AF70;
  if (!qword_10021AF70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10021AF70);
  }

  return result;
}

uint64_t sub_100109264()
{
  sub_10000B218(v0 + 16);
  sub_100007378((v0 + 32));

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_1001092C8()
{
  v1 = v0 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result;
  v2 = (v1 + *(type metadata accessor for CachedResultSet.Result(0) + 40));
  v3 = *v2;
  v4 = v2[1];
  result = 0;
  switch(v4 >> 62)
  {
    case 1uLL:
      v6 = __OFSUB__(HIDWORD(v3), v3);
      v7 = HIDWORD(v3) - v3;
      if (v6)
      {
        goto LABEL_9;
      }

      result = v7;
      goto LABEL_6;
    case 2uLL:
      v10 = v3 + 16;
      v8 = *(v3 + 16);
      v9 = *(v10 + 8);
      result = v9 - v8;
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_10;
      }

LABEL_6:
      if (result < 0)
      {
        __break(1u);
LABEL_9:
        __break(1u);
LABEL_10:
        __break(1u);
      }

      return result;
    case 3uLL:
      return result;
    default:
      return BYTE6(v4);
  }
}

uint64_t sub_1001093F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void), void (*a10)(uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v38 = a7;
  v39 = a8;
  v36 = a5;
  v37 = a6;
  v33 = a1;
  v34 = a2;
  v35 = a10;
  v12 = a9(0);
  sub_100003650();
  v14 = v13;
  sub_100003760();
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v18 = type metadata accessor for URLRequest();
  sub_100003650();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_100003664();
  v24 = v23 - v22;
  v25 = type metadata accessor for CachedResultSet.Result(0);
  v26 = sub_100005490(v25);
  __chkstk_darwin(v26);
  sub_100003664();
  v29 = v28 - v27;
  (*(v20 + 16))(v24, a3, v18);
  (*(v14 + 16))(v17, a4, v12);
  v35(v33, v34, v24, v17, v36, v37, v38, v39);
  (*(v14 + 8))(a4, v12);
  (*(v20 + 8))(a3, v18);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  sub_10007DCBC(v29, v30 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result);
  return v30;
}

BOOL sub_10010961C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    _StringGuts._slowWithCString<A>(_:)();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtof_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

unint64_t sub_100109714(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v2 = sub_10010961C(a1, a2, &v5);

  v3 = v5;
  if (!v2)
  {
    v3 = 0;
  }

  return v3 | (!v2 << 32);
}

uint64_t sub_100109780@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, Swift::String *a7@<X8>)
{
  v99 = a5;
  v100 = a6;
  v98 = a1;
  v96 = type metadata accessor for URLComponents();
  sub_100003650();
  v94 = v11;
  __chkstk_darwin(v12);
  sub_100003838();
  v93 = v13;
  __chkstk_darwin(v14);
  v95 = &v92 - v15;
  v16 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v16);
  sub_100003760();
  __chkstk_darwin(v17);
  v19 = &v92 - v18;
  v20 = type metadata accessor for URL();
  sub_100003650();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_100003664();
  v97 = v25 - v24;
  v26 = String.lowercased()();

  *a7 = v26;
  Apple_Parsec_Search_V2_SearchResponse.query.getter();
  v27 = String.lowercased()();

  a7[1] = v27;
  v101 = a2;
  Apple_Parsec_Search_V2_SearchResponse.completionScore.getter();
  v29 = v28;
  v30 = type metadata accessor for CachedResultSet.Result(0);
  *(&a7->_countAndFlagsBits + v30[9]) = v29;
  v31 = (&a7->_countAndFlagsBits + v30[7]);
  *v31 = a3;
  v31[1] = a4;
  v32 = (&a7->_countAndFlagsBits + v30[10]);
  v33 = v100;
  *v32 = v99;
  v32[1] = v33;
  v34 = v98;
  v35 = URLRequest.allHTTPHeaderFields.getter();
  v36 = 0.0;
  if (v35 && (v37 = v35, v38 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v40 = sub_1000BCE30(v38, v39, v37), v42 = v41, , , v42))
  {
    v43 = sub_100109714(v40, v42);
    v44 = v101;
    if ((v43 & 0x100000000) == 0)
    {
      v36 = *&v43;
    }
  }

  else
  {
    v44 = v101;
  }

  *(&a7->_countAndFlagsBits + v30[8]) = v36;
  v45 = Apple_Parsec_Search_V2_SearchResponse.maxAgeSeconds.getter();
  v46 = v30[6];
  if (v45 < 1)
  {
    v47 = 1;
  }

  else
  {
    Apple_Parsec_Search_V2_SearchResponse.maxAgeSeconds.getter();
    Date.init(timeIntervalSinceNow:)();
    v47 = 0;
  }

  v48 = type metadata accessor for Date();
  sub_1000051C0(a7 + v46, v47, 1, v48);
  URLRequest.url.getter();
  if (sub_100008D0C(v19, 1, v20) == 1)
  {
    type metadata accessor for Apple_Parsec_Search_V2_SearchResponse();
    sub_10000374C();
    (*(v49 + 8))(v44);
    type metadata accessor for URLRequest();
    sub_10000374C();
    (*(v50 + 8))(v34);
    result = sub_10000B298(v19, &qword_100218230, &unk_100199A00);
  }

  else
  {
    v52 = v97;
    (*(v22 + 32))();
    v53 = objc_opt_self();
    URL._bridgeToObjectiveC()(v54);
    v56 = v55;
    v57 = [v53 parsec_componentsWithURL:v55 resolvingAgainstBaseURL:0];

    if (v57)
    {
      v58 = v93;
      static URLComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v59 = v94;
      v60 = v95;
      v61 = v58;
      v62 = v96;
      (*(v94 + 32))(v95, v61, v96);
      if (URLComponents.queryItems.getter())
      {
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v59;
        sub_10000ABE8(v63, v65, v63);
        v67 = v66;
        v69 = v68;

        v70 = (&a7->_countAndFlagsBits + v30[11]);
        *v70 = v67;
        v70[1] = v69;
        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10000ABE8(v71, v72, v71);
        v74 = v73;
        v76 = v75;

        v77 = (&a7->_countAndFlagsBits + v30[12]);
        *v77 = v74;
        v77[1] = v76;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000F190C();
        v79 = v78;
        v81 = v80;

        type metadata accessor for Apple_Parsec_Search_V2_SearchResponse();
        sub_10000374C();
        (*(v82 + 8))(v101);
        type metadata accessor for URLRequest();
        sub_10000374C();
        (*(v83 + 8))(v34);
        (*(v64 + 8))(v95, v96);
        result = (*(v22 + 8))(v97, v20);
        v84 = (&a7->_countAndFlagsBits + v30[13]);
        *v84 = v79;
        v84[1] = v81;
        return result;
      }

      type metadata accessor for Apple_Parsec_Search_V2_SearchResponse();
      sub_10000374C();
      (*(v87 + 8))(v101);
      type metadata accessor for URLRequest();
      sub_10000374C();
      (*(v88 + 8))(v34);
      (*(v59 + 8))(v60, v62);
    }

    else
    {
      type metadata accessor for Apple_Parsec_Search_V2_SearchResponse();
      sub_10000374C();
      (*(v85 + 8))(v44);
      type metadata accessor for URLRequest();
      sub_10000374C();
      (*(v86 + 8))(v34);
    }

    result = (*(v22 + 8))(v52, v20);
  }

  v89 = (&a7->_countAndFlagsBits + v30[11]);
  *v89 = 0;
  v89[1] = 0;
  v90 = (&a7->_countAndFlagsBits + v30[12]);
  *v90 = 0;
  v90[1] = 0;
  v91 = (&a7->_countAndFlagsBits + v30[13]);
  *v91 = 0;
  v91[1] = 0;
  return result;
}

uint64_t sub_100109E04@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, Swift::String *a7@<X8>)
{
  v113 = a5;
  v114 = a6;
  v111 = a3;
  v112 = a4;
  v110 = a1;
  v107 = type metadata accessor for URLComponents();
  sub_100003650();
  v105 = v9;
  __chkstk_darwin(v10);
  sub_100003838();
  v104 = v11;
  __chkstk_darwin(v12);
  v106 = &v104 - v13;
  v14 = sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100005490(v14);
  sub_100003760();
  __chkstk_darwin(v15);
  v115 = &v104 - v16;
  type metadata accessor for URL();
  sub_100003650();
  v117 = v18;
  v118 = v17;
  __chkstk_darwin(v17);
  sub_100003664();
  v119 = v20 - v19;
  type metadata accessor for Google_Protobuf_DoubleValue();
  sub_100003650();
  v108 = v22;
  v109 = v21;
  __chkstk_darwin(v21);
  sub_100003664();
  v25 = v24 - v23;
  v26 = type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResults();
  sub_100003650();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_100003664();
  v32 = v31 - v30;
  v33 = String.lowercased()();

  *a7 = v33;
  Apple_Parsec_Safari_V1alpha_SafariSearchResponse.searchResults.getter();
  Apple_Parsec_Safari_V1alpha_SafariSearchResults.query.getter();
  v34 = *(v28 + 8);
  v34(v32, v26);
  v35 = String.lowercased()();

  a7[1] = v35;
  v116 = a2;
  Apple_Parsec_Safari_V1alpha_SafariSearchResponse.searchResults.getter();
  Apple_Parsec_Safari_V1alpha_SafariSearchResults.completionScore.getter();
  v36 = v32;
  v37 = a7;
  v38 = v26;
  v39 = v110;
  v34(v36, v38);
  Google_Protobuf_DoubleValue.value.getter();
  v41 = v40;
  (*(v108 + 8))(v25, v109);
  v42 = type metadata accessor for CachedResultSet.Result(0);
  *&v41 = v41;
  *(&a7->_countAndFlagsBits + v42[9]) = LODWORD(v41);
  v43 = (&a7->_countAndFlagsBits + v42[7]);
  v44 = v112;
  *v43 = v111;
  v43[1] = v44;
  v45 = (&a7->_countAndFlagsBits + v42[10]);
  v46 = v114;
  *v45 = v113;
  v45[1] = v46;
  v47 = URLRequest.allHTTPHeaderFields.getter();
  v48 = 0.0;
  if (v47 && (v49 = v47, v50 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v52 = sub_1000BCE30(v50, v51, v49), v54 = v53, , , v54))
  {
    v55 = sub_100109714(v52, v54);
    v56 = v117;
    v57 = v119;
    if ((v55 & 0x100000000) == 0)
    {
      v48 = *&v55;
    }
  }

  else
  {
    v56 = v117;
    v57 = v119;
  }

  *(&v37->_countAndFlagsBits + v42[8]) = v48;
  v58 = v42[6];
  v59 = type metadata accessor for Date();
  sub_1000051C0(v37 + v58, 1, 1, v59);
  v60 = v115;
  URLRequest.url.getter();
  v61 = v118;
  if (sub_100008D0C(v60, 1, v118) == 1)
  {
    type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse();
    sub_10000374C();
    (*(v62 + 8))(v116);
    type metadata accessor for URLRequest();
    sub_10000374C();
    (*(v63 + 8))(v39);
    result = sub_10000B298(v60, &qword_100218230, &unk_100199A00);
  }

  else
  {
    (*(v56 + 32))(v57, v60, v61);
    v65 = objc_opt_self();
    URL._bridgeToObjectiveC()(v66);
    v68 = v67;
    v69 = [v65 parsec_componentsWithURL:v67 resolvingAgainstBaseURL:0];

    if (v69)
    {
      v70 = v104;
      static URLComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v71 = v105;
      v72 = v106;
      v73 = v70;
      v74 = v107;
      (*(v105 + 32))(v106, v73, v107);
      if (URLComponents.queryItems.getter())
      {
        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v71;
        sub_10000ABE8(v75, v77, v75);
        v79 = v78;
        v81 = v80;

        v82 = (&v37->_countAndFlagsBits + v42[11]);
        *v82 = v79;
        v82[1] = v81;
        v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10000ABE8(v83, v84, v83);
        v86 = v85;
        v88 = v87;

        v89 = (&v37->_countAndFlagsBits + v42[12]);
        *v89 = v86;
        v89[1] = v88;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000F190C();
        v91 = v90;
        v93 = v92;

        type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse();
        sub_10000374C();
        (*(v94 + 8))(v116);
        type metadata accessor for URLRequest();
        sub_10000374C();
        (*(v95 + 8))(v39);
        (*(v76 + 8))(v106, v107);
        result = (*(v56 + 8))(v119, v61);
        v96 = (&v37->_countAndFlagsBits + v42[13]);
        *v96 = v91;
        v96[1] = v93;
        return result;
      }

      type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse();
      sub_10000374C();
      (*(v99 + 8))(v116);
      type metadata accessor for URLRequest();
      sub_10000374C();
      (*(v100 + 8))(v39);
      (*(v71 + 8))(v72, v74);
    }

    else
    {
      type metadata accessor for Apple_Parsec_Safari_V1alpha_SafariSearchResponse();
      sub_10000374C();
      (*(v97 + 8))(v116);
      type metadata accessor for URLRequest();
      sub_10000374C();
      (*(v98 + 8))(v39);
    }

    result = (*(v56 + 8))(v57, v61);
  }

  v101 = (&v37->_countAndFlagsBits + v42[11]);
  *v101 = 0;
  v101[1] = 0;
  v102 = (&v37->_countAndFlagsBits + v42[12]);
  *v102 = 0;
  v102[1] = 0;
  v103 = (&v37->_countAndFlagsBits + v42[13]);
  *v103 = 0;
  v103[1] = 0;
  return result;
}

uint64_t sub_10010A5A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6954657269707865 && a2 == 0xEA0000000000656DLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1684632949 && a2 == 0xE400000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C6163536975 && a2 == 0xE700000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6974656C706D6F63 && a2 == 0xEF65726F63536E6FLL;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1635017060 && a2 == 0xE400000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6570797471 && a2 == 0xE500000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x5F74736567677573 && a2 == 0xEF73656972657571;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x6D6F436C61636F6CLL && a2 == 0xEF6E6F6974656C70)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10010A8D0(char a1)
{
  result = 0x7475706E69;
  switch(a1)
  {
    case 1:
      result = 0x7972657571;
      break;
    case 2:
      result = 0x6954657269707865;
      break;
    case 3:
      result = 1684632949;
      break;
    case 4:
      result = 0x656C6163536975;
      break;
    case 5:
      result = 0x6974656C706D6F63;
      break;
    case 6:
      result = 1635017060;
      break;
    case 7:
      result = 0x6570797471;
      break;
    case 8:
      result = 0x5F74736567677573;
      break;
    case 9:
      result = 0x6D6F436C61636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10010A9E8(void *a1)
{
  v3 = v1;
  v5 = sub_100046184(&qword_10021B1F0, &qword_10019FE70);
  sub_100003650();
  v7 = v6;
  sub_100003760();
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100007534(a1, a1[3]);
  sub_10010B79C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  sub_100006F18();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    sub_100008594(1);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = type metadata accessor for CachedResultSet.Result(0);
    LOBYTE(v15) = 2;
    type metadata accessor for Date();
    sub_10010B88C(&qword_100215EF8, &protocol conformance descriptor for Date);
    sub_100006F18();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10000668C(v11[7]);
    sub_100008594(3);
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + v11[8]);
    v17 = 4;
    sub_10010B8D0();
    sub_100006F18();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = 5;
    sub_100006F18();
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = sub_10000668C(v11[10]);
    v16 = v12;
    v17 = 6;
    sub_100014924(v15, v12);
    sub_100069E5C();
    sub_100006F18();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100014A40(v15, v16);
    sub_10000668C(v11[11]);
    sub_100008594(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10000668C(v11[12]);
    sub_100008594(8);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10000668C(v11[13]);
    sub_100008594(9);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_10010ACB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100046184(&qword_100217050, &qword_100199180);
  sub_100005490(v5);
  sub_100003760();
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  v38 = sub_100046184(&qword_10021B1C8, &qword_10019FE68);
  sub_100003650();
  v10 = v9;
  sub_100003760();
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v40 = type metadata accessor for CachedResultSet.Result(0);
  __chkstk_darwin(v40);
  sub_100003664();
  v39 = (v15 - v14);
  sub_100007534(a1, a1[3]);
  sub_10010B79C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007378(a1);
  }

  v37 = a2;
  LOBYTE(v41) = 0;
  sub_10000F614();
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v39;
  *v39 = v16;
  v17[1] = v18;
  sub_100004438(1);
  v17[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17[3] = v19;
  type metadata accessor for Date();
  LOBYTE(v41) = 2;
  sub_10010B88C(&qword_10021B1D8, &protocol conformance descriptor for Date);
  sub_10000F614();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = v40;
  sub_100082D80(v8, v17 + v40[6]);
  sub_100004438(3);
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = (v17 + v20[7]);
  *v22 = v21;
  v22[1] = v23;
  v42 = 4;
  sub_10010B7F0();
  sub_10000F614();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v17 + v20[8]) = v41;
  sub_100004438(5);
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v17 + v20[9]) = v24;
  v42 = 6;
  sub_10010B838();
  sub_10000F614();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v17 + v40[10]) = v41;
  sub_100004438(7);
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = (v17 + v40[11]);
  *v26 = v25;
  v26[1] = v27;
  sub_100004438(8);
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = (v17 + v40[12]);
  *v29 = v28;
  v29[1] = v30;
  sub_100004438(9);
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = v32;
  (*(v10 + 8))(v13, v38);
  v34 = v39;
  v35 = (v39 + v40[13]);
  *v35 = v31;
  v35[1] = v33;
  sub_10007DBFC(v34, v37);
  sub_100007378(a1);
  return sub_10007DC60(v34);
}

uint64_t sub_10010B27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10010A5A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10010B2A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10010A8C8();
  *a1 = result;
  return result;
}

uint64_t sub_10010B2CC(uint64_t a1)
{
  v2 = sub_10010B79C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10010B308(uint64_t a1)
{
  v2 = sub_10010B79C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10010B374(uint64_t a1, uint64_t a2)
{
  v2 = a1 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result;
  v3 = a2 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result;
  v4 = *(a1 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result) == *(a2 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result) && *(a1 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result + 8) == *(a2 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2 + 24);
  v6 = *(v3 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(v2 + 16) == *(v3 + 16) && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = type metadata accessor for CachedResultSet.Result(0);
  if (*(v2 + *(v8 + 32)) != *(v3 + *(v8 + 32)))
  {
    return 0;
  }

  sub_10000DED0();
  if (v11)
  {
    if (!v9)
    {
      return 0;
    }

    sub_100008A90(v10);
    v14 = v4 && v12 == v13;
    if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  sub_10000DED0();
  if (!v17)
  {
    if (!v15)
    {
      goto LABEL_32;
    }

    return 0;
  }

  if (!v15)
  {
    return 0;
  }

  sub_100008A90(v16);
  v20 = v4 && v18 == v19;
  if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_32:
  sub_10000DED0();
  result = (v23 | v21) == 0;
  if (v23 && v21)
  {
    sub_100008A90(v22);
    if (v4 && v25 == v26)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_10010B4D8()
{

  sub_10007DC60(v0 + OBJC_IVAR____TtC7parsecd15CachedResultSet_result);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10010B56C(uint64_t a1)
{
  result = type metadata accessor for CachedResultSet.Result(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10010B650(uint64_t a1)
{
  sub_10010B728();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1000504A0(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_10010B728()
{
  if (!qword_100215DA8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100215DA8);
    }
  }
}

unint64_t sub_10010B79C()
{
  result = qword_10021B1D0;
  if (!qword_10021B1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B1D0);
  }

  return result;
}

unint64_t sub_10010B7F0()
{
  result = qword_10021B1E0;
  if (!qword_10021B1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B1E0);
  }

  return result;
}

unint64_t sub_10010B838()
{
  result = qword_10021B1E8;
  if (!qword_10021B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B1E8);
  }

  return result;
}

uint64_t sub_10010B88C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10010B8D0()
{
  result = qword_10021B1F8;
  if (!qword_10021B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B1F8);
  }

  return result;
}

_BYTE *sub_10010B918@<X0>(_BYTE *result@<X0>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  v7 = v5 || v6 == 0;
  v8 = v7 && (result = _swift_stdlib_strtof_clocale()) != 0 && *result == 0;
  *a3 = v8;
  return result;
}

uint64_t getEnumTagSinglePayload for CachedResultSet.Result.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CachedResultSet.Result.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10010BB08()
{
  result = qword_10021B200;
  if (!qword_10021B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B200);
  }

  return result;
}

unint64_t sub_10010BB60()
{
  result = qword_10021B208;
  if (!qword_10021B208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B208);
  }

  return result;
}

unint64_t sub_10010BBB8()
{
  result = qword_10021B210;
  if (!qword_10021B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B210);
  }

  return result;
}

void sub_10010BC0C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 integerForKey:@"PARSessionSoftLimitOverride"];
  if ((v3 - 1) > 0x382)
  {
    *a2 = 0x4082C00000000000;
    if (qword_1002140A8 != -1)
    {
      sub_10000372C(&qword_1002140A8);
    }

    v5 = type metadata accessor for Logger();
    sub_10000964C(v5, qword_100232A68);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = 600;
      sub_100003B44(&_mh_execute_header, v9, v10, "Soft limit override must be between 0 and %lld, defaulting to that value");
    }

    v4 = 600.0;
  }

  else
  {
    v4 = v3;
    *a2 = v3;
  }

  v11 = [a1 integerForKey:@"PARSessionIdleTimeOverride"];
  if (v11 < 1)
  {
    *(a2 + 8) = 0x4066800000000000;
    if (qword_1002140A8 != -1)
    {
      sub_10000372C(&qword_1002140A8);
    }

    v12 = type metadata accessor for Logger();
    sub_10000964C(v12, qword_100232A68);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = 180;
      sub_100003B44(&_mh_execute_header, v16, v17, "Idle limit override value must be between 0 and %lld, defaulting to that value.");
    }
  }

  else
  {
    *(a2 + 8) = v11;
  }

  if (qword_1002141D8 != -1)
  {
    swift_once();
  }

  *(a2 + 16) = *&qword_10021B218 - v4;
  type metadata accessor for ClientSessionTimekeeper(0);
  static Date.distantFuture.getter();
  sub_10010BE98();
}

void sub_10010BE98()
{
  v1 = type metadata accessor for ClientSessionTimekeeper(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = (&v17 - v5);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  if (qword_1002140A8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000964C(v10, qword_100232A68);
  sub_10010C094(v0, v9);
  sub_10010C094(v0, v6);
  sub_10010C094(v0, v3);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218496;
    v14 = *(v9 + 1);
    sub_10010C0F8(v9);
    *(v13 + 4) = v14;
    *(v13 + 12) = 2048;
    v15 = *v6;
    sub_10010C0F8(v6);
    *(v13 + 14) = v15;
    *(v13 + 22) = 2048;
    v16 = *(v3 + 2);
    sub_10010C0F8(v3);
    *(v13 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "Idle Time %f Soft Limit Time %f Max Time %f.", v13, 0x20u);
  }

  else
  {

    sub_10010C0F8(v3);
    sub_10010C0F8(v6);
    sub_10010C0F8(v9);
  }
}

uint64_t sub_10010C094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientSessionTimekeeper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010C0F8(uint64_t a1)
{
  v2 = type metadata accessor for ClientSessionTimekeeper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10010C17C(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10010C218(double a1)
{
  *(v1 + 16) = a1;
  v2 = sub_100004450();
  return sub_100003B64(v2);
}

uint64_t sub_10010C238(int a1)
{
  *(v1 + 16) = a1;
  v2 = sub_100004450();
  return sub_100003B64(v2);
}

uint64_t sub_10010C258(uint64_t a1)
{
  sub_1000037B0();
  v4 = *(v3 + 88);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1 + v4, a1, v5);
  sub_100004450();
  sub_1000037B0();
  *(v1 + *(v7 + 96)) = v8;
  *v8 = 0;
  (*(v6 + 8))(a1, v5);
  return v1;
}

void *sub_10010C33C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_100004450();
  v2[4] = v3;
  *v3 = 0;
  return v2;
}

uint64_t sub_10010C37C(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1000037B0();
  sub_10010CF40(v6, v2 + *(v5 + 88), a2);
  sub_100004450();
  sub_1000037B0();
  *(v2 + *(v7 + 96)) = v8;
  *v8 = 0;
  sub_10001C2F8(a1, a2);
  return v2;
}

uint64_t sub_10010C3F0()
{

  v0 = sub_100086500();

  return v0;
}

uint64_t sub_10010C42C()
{

  sub_100087E8C();

  return sub_10010E278();
}

void *sub_10010C488(void *a1, uint64_t a2)
{
  v3 = v2;
  v2[3] = 0;
  swift_unknownObjectWeakInit();
  sub_100046184(&qword_10021B3C8, &qword_1001A0088);
  swift_allocObject();
  v2[5] = sub_10003F814(0);
  v2[6] = 0;
  v2[4] = a1;
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10010CF38;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D50C;
  aBlock[3] = &unk_1001FE278;
  v7 = _Block_copy(aBlock);
  v8 = a1;

  aBlock[0] = 0;
  v9 = [v5 initWithDispatchQueue:v8 didUpdate:v7 error:aBlock];
  _Block_release(v7);
  v10 = aBlock[0];
  if (v9)
  {
    v3[6] = v9;
    v11 = v10;
    swift_unknownObjectRelease();
    sub_10010C934();
  }

  else
  {
    v12 = aBlock[0];

    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100214118 != -1)
    {
      sub_1000060FC(&qword_100214118);
    }

    v13 = type metadata accessor for Logger();
    sub_10000964C(v13, qword_100232B68);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136315138;
      swift_errorRetain();
      sub_100046184(&qword_100216900, &unk_10019AE20);
      v18 = String.init<A>(describing:)();
      v20 = sub_100009684(v18, v19, aBlock);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to create privacy proxy %s", v16, 0xCu);
      sub_100007378(v17);
      sub_1000036D4(v17);
      sub_1000036D4(v16);
    }

    else
    {
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10010C7DC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10010C934();
  }

  return result;
}

uint64_t sub_10010C834@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1002140D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000964C(v2, qword_100232AE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    sub_100006768(&_mh_execute_header, v6, v7, "effective tier");
    sub_1000036D4(v5);
  }

  *a1 = sub_10010C3F0();
  type metadata accessor for ContextUpdate(0);

  return swift_storeEnumTagMultiPayload();
}

void sub_10010C934()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = qword_100214118;
    swift_unknownObjectRetain();
    if (v2 != -1)
    {
      sub_1000060FC(&qword_100214118);
    }

    v3 = type metadata accessor for Logger();
    sub_10000964C(v3, qword_100232B68);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      sub_100006768(&_mh_execute_header, v7, v8, "Updating effective tier");
      sub_1000036D4(v6);
    }

    v9 = swift_allocObject();
    swift_weakInit();
    v11[4] = sub_10010CF30;
    v11[5] = v9;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_10010CE28;
    v11[3] = &unk_1001FE250;
    v10 = _Block_copy(v11);

    [v1 getEffectiveTierWithCompletion:v10];
    _Block_release(v10);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10010CABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      swift_errorRetain();
      if (qword_100214118 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000964C(v6, qword_100232B68);
      swift_errorRetain();
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v22 = v10;
        *v9 = 136315138;
        swift_errorRetain();
        sub_100046184(&qword_100216900, &unk_10019AE20);
        v11 = String.init<A>(describing:)();
        v13 = sub_100009684(v11, v12, &v22);

        *(v9 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v7, v8, "Failed to get privacy proxy tier: %s", v9, 0xCu);
        sub_100007378(v10);
      }

      else
      {
      }

      a1 = 0;
    }

    else
    {
      if (qword_100214118 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000964C(v14, qword_100232B68);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134217984;
        *(v17 + 4) = a1;
        _os_log_impl(&_mh_execute_header, v15, v16, "Updated effective tier is %lu", v17, 0xCu);
      }
    }

    if (sub_10010C3F0() != a1)
    {
      if (qword_100214118 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000964C(v18, qword_100232B68);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Notifying about tier change", v21, 2u);
      }

      sub_10010C42C();
    }
  }

  return result;
}

void sub_10010CE28(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10010CEA0()
{
  sub_100106BC0(v0 + 16);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_10010CED8()
{
  sub_10010CEA0();

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_10010CF40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10010CFB4()
{
  result = qword_10021B3D0;
  if (!qword_10021B3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B3D0);
  }

  return result;
}

void *sub_10010D008(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 + v12;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = a3(&v15, v8, v14);
  if (!v3)
  {
    return v15;
  }

  return result;
}

uint64_t sub_10010D0B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10010D108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_10010D160(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10010D178(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

void sub_10010D1AC()
{
  sub_100006A3C();
  v39 = v0;
  v2 = v1;
  sub_100046184(&qword_100217480, &unk_100198F70);
  sub_100003760();
  __chkstk_darwin(v3);
  v5 = &v33 - v4;
  v42 = type metadata accessor for UserAgent();
  sub_100003650();
  v7 = v6;
  __chkstk_darwin(v8);
  v38 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100046184(&qword_10021B480, &qword_1001A0148);
  sub_1000036B8();
  sub_100003760();
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = *v2;
  v14 = *v2 + 64;
  sub_100004154();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;
  v36 = (v7 + 8);
  v37 = (v7 + 32);

  v20 = 0;
  v40 = _swiftEmptyArrayStorage;
  v35 = xmmword_100198F10;
  while (1)
  {
    v21 = v20;
    if (!v17)
    {
      break;
    }

LABEL_6:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = v22 | (v20 << 6);
    v24 = *(v13 + 48);
    type metadata accessor for SessionType();
    sub_1000036B8();
    (*(v25 + 16))(v12, v24 + *(v25 + 72) * v23);
    *&v12[*(v41 + 48)] = *(*(v13 + 56) + 8 * v23);

    sub_10001184C();
    if (sub_100008D0C(v5, 1, v42) == 1)
    {
      sub_10000B240(v5, &qword_100217480, &unk_100198F70);
      sub_10000B240(v12, &qword_10021B480, &qword_1001A0148);
    }

    else
    {
      (*v37)(v38, v5, v42);
      sub_100046184(&qword_100214E48, &unk_1001995C0);
      inited = swift_initStackObject();
      *(inited + 16) = v35;
      *(inited + 32) = 0x696669746E656469;
      *(inited + 40) = 0xEA00000000007265;
      *(inited + 48) = SessionType.description.getter();
      *(inited + 56) = v27;
      *(inited + 64) = 0x746E656761;
      *(inited + 72) = 0xE500000000000000;
      *(inited + 80) = UserAgent.fullString.getter();
      *(inited + 88) = v28;
      v34 = Dictionary.init(dictionaryLiteral:)();
      (*v36)(v38, v42);
      sub_10000B240(v12, &qword_10021B480, &qword_1001A0148);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10006D184();
        v40 = v31;
      }

      v29 = v40[2];
      if (v29 >= v40[3] >> 1)
      {
        sub_10006D184();
        v40 = v32;
      }

      v30 = v40;
      v40[2] = v29 + 1;
      v30[v29 + 4] = v34;
    }
  }

  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      *v39 = v40;
      sub_100007FD4();
      return;
    }

    v17 = *(v14 + 8 * v20);
    ++v21;
    if (v17)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

void sub_10010D5A4()
{
  sub_100046184(&qword_10021B480, &qword_1001A0148);
  sub_1000036B8();
  sub_100003760();
  __chkstk_darwin(v4);
  sub_100011A68();
  v5 = *(v2 + 16);
  sub_100004154();
  sub_10000AC08();
  v6 = 0;
  if (v0)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v3)
    {

      os_unfair_lock_unlock((v2 + 24));
      return;
    }

    v0 = *(v5 + 64 + 8 * v7);
    ++v6;
    if (v0)
    {
      v6 = v7;
      do
      {
LABEL_6:
        v8 = *(v5 + 48);
        type metadata accessor for SessionType();
        sub_1000036B8();
        (*(v9 + 16))(v1, v8 + *(v9 + 72) * (__clz(__rbit64(v0)) | (v6 << 6)));
        if (*(*(sub_10000F620() + 64) + 32))
        {

          sub_1000F0A9C();
        }

        else
        {
        }

        v0 &= v0 - 1;
        sub_10000B240(v1, &qword_10021B480, &qword_1001A0148);
      }

      while (v0);
    }
  }

  __break(1u);
}

void sub_10010D718()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_10010E240((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_10010D76C(uint64_t *a1, uint64_t a2)
{
  v33 = a1;
  v3 = type metadata accessor for SessionType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v35 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v32 = &v27 - v7;
  v8 = a2 + 56;
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 56);
  v12 = (v9 + 63) >> 6;
  v30 = v4 + 32;
  v31 = v4 + 16;
  v29 = (v4 + 8);
  v34 = a2;

  v14 = 0;
  v28 = v3;
  while (v11)
  {
    v15 = v35;
LABEL_11:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = v32;
    (*(v4 + 16))(v32, *(v34 + 48) + *(v4 + 72) * (v17 | (v14 << 6)), v3);
    (*(v4 + 32))(v15, v18, v3);
    v19 = v15;
    v20 = *v33;
    if (*(*v33 + 16))
    {
      v21 = sub_10000F794();
      v22 = *v29;
      if ((v23 & 1) == 0)
      {
        goto LABEL_16;
      }

      v24 = *(*(v20 + 56) + 8 * v21);

      v22(v19, v3);
      v25 = *(v24 + 64);
      swift_unknownObjectRetain();

      v26 = *(v25 + 32);

      v3 = v28;
      result = swift_unknownObjectRelease();
      if (v26)
      {
        sub_1000F0A9C();
      }
    }

    else
    {
      v22 = *v29;
LABEL_16:
      result = (v22)(v35, v3);
    }
  }

  v15 = v35;
  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
    }

    v11 = *(v8 + 8 * v16);
    ++v14;
    if (v11)
    {
      v14 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_10010DA04()
{
  sub_100006A3C();
  v32 = v0;
  v2 = v1;
  v35 = sub_100046184(&qword_10021B480, &qword_1001A0148);
  sub_1000036B8();
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v34 = &v31 - v7;
  __chkstk_darwin(v8);
  v31 = &v31 - v9;
  v10 = *v2 + 64;
  sub_100004154();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  v36 = v16;

  v17 = 0;
  v33 = v5;
  if (v13)
  {
    while (1)
    {
      v18 = v17;
LABEL_6:
      v19 = __clz(__rbit64(v13)) | (v18 << 6);
      v20 = *(v36 + 48);
      v21 = type metadata accessor for SessionType();
      sub_100003650();
      v23 = v22;
      v25 = v20 + *(v24 + 72) * v19;
      v26 = v34;
      (*(v24 + 16))(v34, v25, v21);
      v27 = v35;
      *&v26[*(v35 + 48)] = *(*(v36 + 56) + 8 * v19);
      v28 = v26;
      v29 = v33;
      sub_10010E1D0(v28, v33);
      if (!*(*(*(v29 + *(v27 + 48)) + 64) + 88))
      {
        break;
      }

      v13 &= v13 - 1;

      sub_10000B240(v29, &qword_10021B480, &qword_1001A0148);
      v17 = v18;
      if (!v13)
      {
        goto LABEL_3;
      }
    }

    v30 = v31;
    sub_10010E1D0(v29, v31);
    *v32 = *(v30 + *(v35 + 48));
    (*(v23 + 8))(v30, v21);
LABEL_10:
    sub_100007FD4();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        *v32 = 0;
        goto LABEL_10;
      }

      v13 = *(v10 + 8 * v18);
      ++v17;
      if (v13)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

void sub_10010DC90()
{
  sub_100046184(&qword_10021B480, &qword_1001A0148);
  sub_1000036B8();
  sub_100003760();
  __chkstk_darwin(v4);
  sub_100011A68();
  v5 = *(v2 + 16);
  sub_100004154();
  sub_10000AC08();
  v6 = 0;
  while (v0)
  {
    v7 = v6;
LABEL_7:
    v8 = __clz(__rbit64(v0));
    v0 &= v0 - 1;
    v9 = v8 | (v7 << 6);
    v10 = *(v5 + 48);
    type metadata accessor for SessionType();
    sub_1000036B8();
    (*(v11 + 16))(v1, v10 + *(v11 + 72) * v9);
    sub_10000F620();

    swift_unknownObjectRetain();
    sub_1000E5F2C(0, 0);
    swift_unknownObjectRelease();
    sub_10000B240(v1, &qword_10021B480, &qword_1001A0148);
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v3)
    {

      os_unfair_lock_unlock((v2 + 24));
      return;
    }

    v0 = *(v5 + 64 + 8 * v7);
    ++v6;
    if (v0)
    {
      v6 = v7;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_10010DE04()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock(v1 + 6);
  sub_10010E25C(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

unint64_t sub_10010DE58(unint64_t result)
{
  if (*(*result + 16))
  {
    result = sub_10000F794();
    if (v1)
    {

      swift_unknownObjectRetain();
      sub_1000E5F2C(0, 0);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10010DED4()
{
  sub_100006A3C();
  v34 = v1;
  v35 = v0;
  v38 = v3;
  v39 = v2;
  v5 = v4;
  v40 = sub_100046184(&qword_10021B480, &qword_1001A0148);
  sub_1000036B8();
  __chkstk_darwin(v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v37 = &v33 - v10;
  __chkstk_darwin(v11);
  v33 = &v33 - v12;
  v13 = *v5 + 64;
  sub_100004154();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  v41 = v19;

  v20 = 0;
  if (v16)
  {
    while (1)
    {
      v21 = v8;
      v22 = v20;
LABEL_7:
      v23 = __clz(__rbit64(v16)) | (v22 << 6);
      v24 = *(v41 + 48);
      v25 = type metadata accessor for SessionType();
      sub_100003650();
      v36 = v26;
      v28 = v24 + *(v27 + 72) * v23;
      v29 = v37;
      (*(v27 + 16))(v37, v28, v25);
      v30 = v40;
      *(v29 + *(v40 + 48)) = *(*(v41 + 56) + 8 * v23);
      sub_10010E1D0(v29, v21);
      v8 = v21;
      v31 = *(v21 + *(v30 + 48));

      if (v39(v31))
      {
        break;
      }

      v16 &= v16 - 1;
      sub_10000B240(v21, &qword_10021B480, &qword_1001A0148);
      v20 = v22;
      if (!v16)
      {
        goto LABEL_3;
      }
    }

    v32 = v33;
    sub_10010E1D0(v21, v33);
    *v34 = *(v32 + *(v40 + 48));
    (*(v36 + 8))(v32, v25);
LABEL_11:
    sub_100007FD4();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v18)
      {

        *v34 = 0;
        goto LABEL_11;
      }

      v16 = *(v13 + 8 * v22);
      ++v20;
      if (v16)
      {
        v21 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10010E16C()
{
  sub_10000B218(v0 + 16);

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10010E1D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_10021B480, &qword_1001A0148);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010E278()
{
  v3 = type metadata accessor for ContextUpdate(0);
  __chkstk_darwin(v3 - 8);
  sub_100003664();
  sub_100011A8C();
  sub_100003650();
  __chkstk_darwin(v4);
  sub_100003664();
  sub_1000068C0();
  v5 = *(v1 + 32);
  *v2 = v5;
  v6 = sub_1000085AC();
  v7(v6);
  v8 = v5;
  _dispatchPreconditionTest(_:)();
  v9 = sub_100004468();
  result = v10(v9);
  if (v5)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10010C834(v0);
      sub_100034428();
      swift_unknownObjectRelease();
      return sub_100069C50(v0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010E3B4()
{
  v3 = type metadata accessor for ContextUpdate(0);
  __chkstk_darwin(v3 - 8);
  sub_100003664();
  sub_100011A8C();
  sub_100003650();
  __chkstk_darwin(v4);
  sub_100003664();
  sub_1000068C0();
  v5 = *(v1 + 64);
  *v2 = v5;
  v6 = sub_1000085AC();
  v7(v6);
  v8 = v5;
  _dispatchPreconditionTest(_:)();
  v9 = sub_100004468();
  result = v10(v9);
  if (v5)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100103A6C(v0);
      sub_100034428();
      swift_unknownObjectRelease();
      return sub_100069C50(v0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010E4F0()
{
  v3 = type metadata accessor for ContextUpdate(0);
  __chkstk_darwin(v3 - 8);
  sub_100003664();
  sub_100011A8C();
  sub_100003650();
  __chkstk_darwin(v4);
  sub_100003664();
  sub_1000068C0();
  v5 = *(v1 + 40);
  *v2 = v5;
  v6 = sub_1000085AC();
  v7(v6);
  v8 = v5;
  _dispatchPreconditionTest(_:)();
  v9 = sub_100004468();
  result = v10(v9);
  if (v5)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10010EBC0(v0);
      sub_100034428();
      swift_unknownObjectRelease();
      return sub_100069C50(v0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010E62C()
{
  result = sub_10010E650();
  qword_100232D70 = result;
  *algn_100232D78 = v1;
  return result;
}

uint64_t sub_10010E650()
{
  v0 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v0 - 8);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100046184(&qword_10021B6B0, &qword_1001A01E0);
  sub_10010F4DC();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;

  static String.Encoding.utf8.getter();
  v5 = String.init(data:encoding:)();
  if (v6)
  {
    v1 = v5;
    sub_100014A40(v2, v4);
  }

  else
  {
    sub_100014A2C(v2, v4);

    return 23899;
  }

  return v1;
}

uint64_t sub_10010E7AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7475626972747461 && a2 == 0xE900000000000065;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x657669746361 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_10010E8C8(char a1)
{
  if (!a1)
  {
    return 0x72656469766F7270;
  }

  if (a1 == 1)
  {
    return 0x7475626972747461;
  }

  return 0x657669746361;
}

uint64_t sub_10010E920(void *a1)
{
  v4 = sub_100046184(&qword_10021B6C8, &qword_1001A0250);
  sub_100003650();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000068C0();
  sub_100007534(a1, a1[3]);
  sub_10010F65C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    KeyedEncodingContainer.encode(_:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_10010EAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10010E7AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10010EACC@<X0>(_BYTE *a1@<X8>)
{
  result = static AvroPrimitiveSchema.long.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10010EAF4(uint64_t a1)
{
  v2 = sub_10010F65C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10010EB30(uint64_t a1)
{
  v2 = sub_10010F65C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10010EB84(uint64_t a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  return v1;
}

uint64_t sub_10010EBC0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  if (qword_1002140D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000964C(v4, qword_100232AE0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "updating subscriptions", v7, 2u);
  }

  if (*(v2 + 32) == 1)
  {
    if (qword_1002141E0 != -1)
    {
      swift_once();
    }

    v8 = qword_100232D70;
  }

  else
  {
    v9 = 0xE200000000000000;
    v8 = 23899;
  }

  *a1 = v8;
  a1[1] = v9;
  type metadata accessor for ContextUpdate(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10010ED28(uint64_t a1, char a2)
{
  v4 = v2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  sub_100003650();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100003664();
  sub_1000068C0();
  v23 = type metadata accessor for DispatchQoS();
  sub_100003650();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100003664();
  v16 = v15 - v14;
  v17 = *(v4 + 40);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a1;
  *(v19 + 32) = a2 & 1;
  aBlock[4] = sub_10010F4D0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D50C;
  aBlock[3] = &unk_1001FE400;
  v20 = _Block_copy(aBlock);
  v21 = v17;

  static DispatchQoS.unspecified.getter();
  sub_100024990();
  sub_100046184(&unk_100217030, &unk_1001989C0);
  sub_10000CB0C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v9 + 8))(v3, v7);
  (*(v12 + 8))(v16, v23);
}

void sub_10010EFB8(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_1002140D0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000964C(v7, qword_100232AE0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "updating subscriptions", v10, 2u);
    }

    if (a3)
    {
      v11 = *(v6 + 32);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      v14 = os_log_type_enabled(v12, v13);
      if (v11)
      {
        if (v14)
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v12, v13, "Subscription status went nil", v15, 2u);
        }

        *(v6 + 32) = 0;
LABEL_21:
        sub_10010E4F0();

        return;
      }

      if (!v14)
      {
        goto LABEL_27;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Subscription status is nil";
    }

    else
    {
      v16 = *(v6 + 32);
      v12 = Logger.logObject.getter();
      if ((a2 == 1) != v16)
      {
        v17 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v12, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v25 = v19;
          *v18 = 136315138;
          if (a2 == 1)
          {
            v20 = 0x64656C62616E65;
          }

          else
          {
            v20 = 0x64656C6261736964;
          }

          if (a2 == 1)
          {
            v21 = 0xE700000000000000;
          }

          else
          {
            v21 = 0xE800000000000000;
          }

          v22 = sub_100009684(v20, v21, &v25);

          *(v18 + 4) = v22;
          _os_log_impl(&_mh_execute_header, v12, v17, "Subscriptions are %s", v18, 0xCu);
          sub_100007378(v19);
        }

        *(v6 + 32) = a2 == 1;
        goto LABEL_21;
      }

      v13 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_27;
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Subscription status did not change";
    }

    _os_log_impl(&_mh_execute_header, v12, v13, v24, v23, 2u);

LABEL_27:
  }
}

uint64_t sub_10010F314()
{
  sub_100106BC0(v0 + 16);

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_10010F378(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v5 = [a2 statusType];
    }

    else
    {
      v5 = 0;
    }

    sub_10010ED28(v5, a2 == 0);
  }

  return result;
}

uint64_t sub_10010F3F8()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_10010F428()
{
  if (*(v0 + 56))
  {
    [*(v0 + 48) endObservingSubscriptionStatusWithToken:?];
  }

  sub_100106BC0(v0 + 16);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_10010F478()
{
  sub_10010F428();

  return _swift_deallocClassInstance(v0, 64, 7);
}

unint64_t sub_10010F4DC()
{
  result = qword_10021B6B8;
  if (!qword_10021B6B8)
  {
    sub_1000461CC(&qword_10021B6B0, &qword_1001A01E0);
    sub_10010F560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B6B8);
  }

  return result;
}

unint64_t sub_10010F560()
{
  result = qword_10021B6C0;
  if (!qword_10021B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B6C0);
  }

  return result;
}

__n128 sub_10010F5B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10010F5C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10010F608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10010F65C()
{
  result = qword_10021B6D0;
  if (!qword_10021B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B6D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubscriptionProvider.SubscriptionState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10010F790()
{
  result = qword_10021B6D8;
  if (!qword_10021B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B6D8);
  }

  return result;
}

unint64_t sub_10010F7E8()
{
  result = qword_10021B6E0;
  if (!qword_10021B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B6E0);
  }

  return result;
}

unint64_t sub_10010F840()
{
  result = qword_10021B6E8;
  if (!qword_10021B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B6E8);
  }

  return result;
}

void sub_10010F894(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1001107D4(v3);
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    sub_1001159A0((v3 + 24 * a1 + 56), v4 - 1 - a1, (v3 + 24 * a1 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

unint64_t sub_10010F928(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1001107E8(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v9 = *(v8 + 0x20);
    sub_100115B50((v8 + 40), v7, (v8 + 32));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

uint64_t sub_10010F9B4()
{
  v1 = dispatch_group_create();
  dispatch_group_enter(v1);
  sub_100046184(&qword_10021B7F8, &qword_1001A0390);
  v2 = swift_allocObject();
  *(v2 + 36) = 0;
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_10010FA10(uint64_t a1)
{
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  v2 = *a1;
  v1 = *(a1 + 8);

  v2(&v5, v3);
  sub_100046214(v2, v1, 1);
  return v5;
}

uint64_t sub_10010FA88()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC7parsecd13ParsecService__assembly) + 16);

  os_unfair_lock_lock(v1 + 9);
  v2 = sub_10010FA10(&v1[4]);
  os_unfair_lock_unlock(v1 + 9);

  return v2;
}

void sub_10010FB00(uint64_t a1, int a2)
{
  v3 = _convertErrorToNSError(_:)();
  if (qword_1002140C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000964C(v4, qword_100232AB0);
  v5 = v3;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 67109378;
    *(v7 + 4) = a2;
    *(v7 + 8) = 2112;
    *(v7 + 10) = v5;
    *v8 = v5;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v6, "new connection from %d (%@)", v7, 0x12u);
    sub_10008C86C(v8);

    v5 = oslog;
    oslog = v9;
  }
}

void sub_10010FC6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v32 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v31 = a5;
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v29 = v11;
      if (qword_1002140C0 != -1)
      {
        swift_once();
      }

      v28 = v12;
      v30 = v8;
      v19 = type metadata accessor for Logger();
      sub_10000964C(v19, qword_100232AB0);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        aBlock[0] = v23;
        *v22 = 136446466;
        *(v22 + 4) = sub_100009684(v32, a4, aBlock);
        *(v22 + 12) = 1024;
        *(v22 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v20, v21, "connection from %{public}s (%d) invalidated", v22, 0x12u);
        sub_100007378(v23);
      }

      v24 = swift_allocObject();
      *(v24 + 16) = v16;
      *(v24 + 24) = v18;
      aBlock[4] = sub_1001107A4;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000D50C;
      aBlock[3] = &unk_1001FE6A8;
      v25 = _Block_copy(aBlock);
      v26 = v16;
      v27 = v18;
      static DispatchQoS.unspecified.getter();
      v33 = _swiftEmptyArrayStorage;
      sub_10000D23C(&qword_1002147D0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100046184(&unk_100217030, &unk_1001989C0);
      sub_10000CB0C();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v25);

      (*(v30 + 8))(v10, v7);
      (*(v28 + 8))(v14, v29);
    }

    else
    {
    }
  }
}

uint64_t sub_1001100B4(uint64_t a1, uint64_t a2)
{
  sub_10009BF60();
  v4 = OBJC_IVAR____TtC7parsecd13ParsecService_connections;
  swift_beginAccess();
  v5 = *(a2 + v4);

  sub_100110174(a1, v5);
  v7 = v6;
  LOBYTE(a1) = v8;

  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    v9 = sub_10010F928(v7);
    swift_endAccess();
  }

  return sub_100110250();
}

void sub_100110174(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000D57C(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    type metadata accessor for ClientConnection(0);
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

uint64_t sub_100110250()
{
  v1 = OBJC_IVAR____TtC7parsecd13ParsecService_connections;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      return result;
    }
  }

  result = sub_10010FA88();
  if (result)
  {
    v4 = sub_10008596C();
    v5 = [v4 configuration];

    v6 = [v5 URLCache];
    if (v6)
    {
      if (qword_1002140D8 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000964C(v7, qword_100232AF8);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "purging url cache", v10, 2u);
      }

      [v6 _CFURLCache];
      _CFURLCachePurgeMemoryCache();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_100110404()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100003650();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100003664();
  v7 = v6 - v5;
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  sub_100003664();
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  sub_100003664();
  *&v0[OBJC_IVAR____TtC7parsecd13ParsecService_connections] = _swiftEmptyArrayStorage;
  v10 = OBJC_IVAR____TtC7parsecd13ParsecService_queue;
  sub_1000382D0();
  static DispatchQoS.default.getter();
  v15 = 0;
  sub_10000D23C(&qword_100216910, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  dispatch thunk of OptionSet.init(rawValue:)();
  (*(v3 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v1);
  *&v0[v10] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = OBJC_IVAR____TtC7parsecd13ParsecService__assembly;
  sub_100046184(&qword_10021B7F0, &qword_1001A0388);
  sub_1000068B4();
  swift_allocObject();
  *&v0[v11] = sub_10010F9B4();
  v14.receiver = v0;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_10011075C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1001107E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

id sub_10011085C()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  sub_100003664();
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  sub_100003664();
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  sub_100003664();
  v7 = v6 - v5;
  sub_1000382D0();
  (*(v4 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  sub_100111F2C(&qword_1002157A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100046184(&unk_100217550, &unk_1001999F0);
  sub_1000389CC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 32) = 0;
  *(v0 + 40) = v8;
  result = xpc_event_publisher_create();
  if (result)
  {
    *(v0 + 24) = result;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100110ACC()
{
  if (qword_100214130 != -1)
  {
    sub_10000611C();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000964C(v0, qword_100232BB0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "setting up xpc event subscription", v3, 2u);
    sub_1000037A4();
  }

  v4 = swift_allocObject();
  swift_weakInit();
  v12 = sub_100111EB4;
  v13 = v4;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100111388;
  v11 = &unk_1001FE710;
  v5 = _Block_copy(&v8);

  xpc_event_publisher_set_handler();
  _Block_release(v5);
  v12 = sub_100111408;
  v13 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1000303B8;
  v11 = &unk_1001FE738;
  v6 = _Block_copy(&v8);
  xpc_event_publisher_set_error_handler();
  _Block_release(v6);
  return xpc_event_publisher_activate();
}

void sub_100110CC0(int a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {
      if (a1 == 1)
      {
        if (qword_100214130 != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        sub_10000964C(v18, qword_100232BB0);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v10, v11))
        {
          goto LABEL_31;
        }

        v12 = swift_slowAlloc();
        *v12 = 0;
        v13 = "got a remove event";
      }

      else
      {
        if (a1 != 2)
        {
          if (qword_100214130 != -1)
          {
            swift_once();
          }

          v22 = type metadata accessor for Logger();
          sub_10000964C(v22, qword_100232BB0);
          v10 = Logger.logObject.getter();
          v23 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v10, v23))
          {
            goto LABEL_31;
          }

          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v43 = v25;
          *v24 = 136315138;
          type metadata accessor for xpc_event_publisher_action_t(0);
          v26 = String.init<A>(describing:)();
          v28 = sub_100009684(v26, v27, &v43);

          *(v24 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v10, v23, "Unexpected XPC event publisher action: %s", v24, 0xCu);
          sub_100007378(v25);

          goto LABEL_30;
        }

        if (qword_100214130 != -1)
        {
          swift_once();
        }

        v9 = type metadata accessor for Logger();
        sub_10000964C(v9, qword_100232BB0);
        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v10, v11))
        {
          goto LABEL_31;
        }

        v12 = swift_slowAlloc();
        *v12 = 0;
        v13 = "Initial XPC event subscribers all registered.";
      }

LABEL_25:
      _os_log_impl(&_mh_execute_header, v10, v11, v13, v12, 2u);
LABEL_30:

LABEL_31:

      return;
    }

    if (!a3)
    {
LABEL_21:
      if (qword_100214130 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000964C(v21, qword_100232BB0);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v10, v11))
      {
        goto LABEL_31;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Event subscriber provided no descriptor.";
      goto LABEL_25;
    }

    v19 = swift_unknownObjectRetain();
    type = xpc_get_type(v19);
    if (type != XPC_TYPE_DICTIONARY.getter())
    {
      swift_unknownObjectRelease();
      goto LABEL_21;
    }

    v29 = String.utf8CString.getter();
    string = xpc_dictionary_get_string(a3, (v29 + 32));

    if (string)
    {
      v31 = String.init(cString:)();
      v33 = v32;
      if (qword_100214130 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_10000964C(v34, qword_100232BB0);

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v43 = v38;
        *v37 = 136315395;
        *(v37 + 4) = sub_100009684(v31, v33, &v43);
        *(v37 + 12) = 2053;
        *(v37 + 14) = a2;
        _os_log_impl(&_mh_execute_header, v35, v36, "got subscription name - %s token: %{sensitive}llu", v37, 0x16u);
        sub_100007378(v38);
      }

      os_unfair_lock_lock((v8 + 32));
      swift_isUniquelyReferenced_nonNull_native();
      v43 = *(v8 + 40);
      sub_1000BE078();
      *(v8 + 40) = v43;

      os_unfair_lock_unlock((v8 + 32));
    }

    else
    {
      if (qword_100214130 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_10000964C(v39, qword_100232BB0);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Subscription name missing in descriptor", v42, 2u);
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100214130 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000964C(v14, qword_100232BB0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Self is nil in xpc_event_publisher_set_handler", v17, 2u);
    }
  }
}

uint64_t sub_100111388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

void sub_100111408(uint64_t a1)
{
  v1 = type metadata accessor for POSIXError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = POSIXErrorCode.init(rawValue:)();
  if ((v5 & 0x100000000) != 0)
  {
    if (xpc_strerror())
    {
      v12 = String.init(cString:)();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    if (qword_100214130 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000964C(v15, qword_100232BB0);

    v23 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      if (v14)
      {
        v19 = v12;
      }

      else
      {
        v19 = 0x206E776F6E6B6E75;
      }

      if (!v14)
      {
        v14 = 0xED0000726F727265;
      }

      v20 = sub_100009684(v19, v14, &v25);

      *(v17 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v23, v16, "Got unknown POSIXError - %s", v17, 0xCu);
      sub_100007378(v18);
      goto LABEL_18;
    }
  }

  else
  {
    v6 = v5;
    if (qword_100214130 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000964C(v7, qword_100232BB0);
    v23 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v24 = v6;
      sub_100111D28(_swiftEmptyArrayStorage);
      sub_100111F2C(&qword_10021B8D8, &type metadata accessor for POSIXError, &protocol conformance descriptor for POSIXError);
      _BridgedStoredNSError.init(_:userInfo:)();
      POSIXError._nsError.getter();
      (*(v2 + 8))(v4, v1);
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v23, v8, "Got known POSIXError - %@", v9, 0xCu);
      sub_10000F94C(v10, &unk_100214C70, &qword_10019B4D0);
LABEL_18:

      return;
    }
  }

  v21 = v23;
}

uint64_t sub_1001117E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  os_unfair_lock_lock((v2 + 32));
  v6 = *(v2 + 40);
  if (*(v6 + 16) && (v7 = sub_100005B74(0x5073746867696C66, 0xEB00000000687375), (v8 & 1) != 0))
  {
    v9 = 0;
    v10 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  os_unfair_lock_unlock(v3 + 8);
  if (v9)
  {
    if (qword_100214130 != -1)
    {
      sub_10000611C();
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000964C(v11, qword_100232BB0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      *swift_slowAlloc() = 0;
      sub_1000085C0(&_mh_execute_header, v14, v15, "no flights push token found");
      sub_1000037A4();
    }

    sub_100111E60();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  sub_100046184(&qword_100214E48, &unk_1001995C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100197F20;
  *(inited + 32) = 0x496C656E6E616863;
  *(inited + 40) = 0xE900000000000064;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = _CFXPCCreateXPCObjectFromCFObject();

  if (!v19)
  {
    if (qword_100214130 != -1)
    {
      sub_10000611C();
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000964C(v34, qword_100232BB0);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      *swift_slowAlloc() = 0;
      sub_1000085C0(&_mh_execute_header, v37, v38, "Unable to bridge xpc event dictionary");
      sub_1000037A4();
    }

    sub_100111E60();
    swift_allocError();
    *v39 = 1;
    return swift_willThrow();
  }

  v20 = xpc_event_publisher_fire();
  if (qword_100214130 != -1)
  {
    sub_10000611C();
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000964C(v21, qword_100232BB0);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134545665;
    *(v24 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v22, v23, "XPC Event fired for token: %{sensitive}llu", v24, 0xCu);
    sub_1000037A4();
  }

  if (!v20)
  {
    return swift_unknownObjectRelease();
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v25, v26))
  {
LABEL_20:

    sub_100111E60();
    swift_allocError();
    *v33 = 1;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v40 = v28;
  *v27 = 134218242;
  *(v27 + 4) = v10;
  *(v27 + 12) = 2080;
  result = xpc_strerror();
  if (result)
  {
    v30 = String.init(cString:)();
    v32 = sub_100009684(v30, v31, &v40);

    *(v27 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v25, v26, "failed to send XPC event for token: %llu, error: %s", v27, 0x16u);
    sub_100007378(v28);
    sub_1000037A4();

    sub_1000037A4();

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_100111CD0()
{
  sub_100111C90();

  return _swift_deallocClassInstance(v0, 48, 7);
}

unint64_t sub_100111D28(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = _swiftEmptyDictionarySingleton;
LABEL_9:

    return v3;
  }

  sub_100046184(&qword_100216690, &qword_1001A0410);
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_100111EBC(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_100005B74(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_100028734(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_100111E60()
{
  result = qword_10021B8D0;
  if (!qword_10021B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B8D0);
  }

  return result;
}

uint64_t sub_100111EBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_10021B8E0, &qword_1001A0418);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100111F2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCEventsError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100112054()
{
  result = qword_10021B8F0;
  if (!qword_10021B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021B8F0);
  }

  return result;
}

uint64_t sub_1001120A8()
{
  sub_1000037B0();
  v2 = *(*(v0 + *(v1 + 152)) + 16);

  os_unfair_lock_lock(v2);
  v36 = *(v0 + 32);
  HIDWORD(v35) = *(v0 + 40);
  v37 = *(v0 + 41);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 64);
  swift_unknownObjectRetain();

  v39 = v5;

  os_unfair_lock_unlock(v2);

  v6 = *(v0 + 96);
  v7 = static os_log_type_t.error.getter();
  os_log(_:dso:log:type:_:)("LEAKED SPAN: {{{", 16, 2, &_mh_execute_header, v6, v7, _swiftEmptyArrayStorage);
  static os_log_type_t.error.getter();
  v8 = sub_100046184(&unk_100217040, &qword_1001989F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100197F30;
  sub_100008D34(*(v0 + 80));
  v10 = StaticString.description.getter();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_10000512C();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 64) = v13;
  strcpy((v9 + 72), "resourceAccess");
  *(v9 + 87) = -18;
  *(v9 + 136) = &type metadata for String;
  *(v9 + 144) = v13;
  v38 = v13;
  *(v9 + 112) = 0xD000000000000010;
  *(v9 + 120) = 0x80000001001AA3A0;
  os_log(_:dso:log:type:_:)("Name: %s, Category: %s, Subsystem: %s", v33, v35, v36);

  if ((v37 & 1) == 0)
  {
    static os_log_type_t.error.getter();
    v14 = sub_100005A6C();
    *(v14 + 16) = xmmword_100197F20;
    v15 = StaticString.description.getter();
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = v38;
    *(v14 + 32) = v15;
    *(v14 + 40) = v16;
    sub_100007D4C("Format string: %s", 17, v17, &_mh_execute_header);

    if (v3)
    {

      static os_log_type_t.error.getter();
      v18 = sub_100005A6C();
      *(v18 + 16) = xmmword_100197F20;
      *(v18 + 56) = sub_100046184(&unk_10021BC50, &qword_1001A0680);
      *(v18 + 64) = sub_100095D74(&unk_10021A4B0, &unk_10021BC50, &qword_1001A0680, &protocol conformance descriptor for [A]);
      *(v18 + 32) = v3;
      sub_100007D4C("Arguments: %@", 13, v19, &_mh_execute_header);
    }
  }

  if (v4)
  {

    static os_log_type_t.error.getter();
    v20 = sub_100005A6C();
    *(v20 + 16) = xmmword_100197F20;
    *(v20 + 56) = sub_100046184(&unk_10021BC40, &qword_10019F288);
    *(v20 + 64) = sub_100095D74(&unk_10021A4A0, &unk_10021BC40, &qword_10019F288, &protocol conformance descriptor for [A : B]);
    *(v20 + 32) = v4;
    sub_100007D4C("Analytics: %@", 13, v21, &_mh_execute_header);
  }

  result = sub_10000D57C(v39);
  if (result)
  {
    v23 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v24 = 0;
    do
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v24;
      static os_log_type_t.error.getter();
      v25 = sub_10000AB40(v8);
      *(v25 + 16) = xmmword_100197F20;
      swift_unknownObjectRetain();
      v26 = String.init<A>(describing:)();
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = v38;
      *(v25 + 32) = v26;
      *(v25 + 40) = v27;
      os_log(_:dso:log:type:_:)("Leaked cancellables: %s", v34);
      swift_unknownObjectRelease();
    }

    while (v23 != v24);
  }

  v28 = static os_log_type_t.error.getter();
  os_log(_:dso:log:type:_:)("}}}", 3, 2, &_mh_execute_header, v6, v28, _swiftEmptyArrayStorage);
  sub_100006BA8();
  if (sub_100112B44(v29, v30, v31))
  {
    v32 = static os_log_type_t.fault.getter();
    os_log(_:dso:log:type:_:)("Some objects remain retained at the moment when all activities must be finalized. This could indicate deadlock, memory leak or not cancelled asynchronous procedures, such as networking or XPC calls.", 198, 2, &_mh_execute_header, v6, v32, _swiftEmptyArrayStorage);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1001125B8()
{
  v1 = *(*(v0 + *(*v0 + 152)) + 16);

  os_unfair_lock_lock(v1);
  v30 = *(v0 + 32);
  HIDWORD(v29) = *(v0 + 40);
  v31 = *(v0 + 41);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 64);
  swift_unknownObjectRetain();

  v33 = v4;

  os_unfair_lock_unlock(v1);

  v5 = *(v0 + 96);
  v6 = static os_log_type_t.error.getter();
  os_log(_:dso:log:type:_:)("LEAKED SPAN: {{{", 16, 2, &_mh_execute_header, v5, v6, _swiftEmptyArrayStorage);
  static os_log_type_t.error.getter();
  sub_100046184(&unk_100217040, &qword_1001989F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100197F30;
  sub_100008D34(*(v0 + 80));
  v8 = StaticString.description.getter();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_10000512C();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v11;
  *(v7 + 64) = v11;
  strcpy((v7 + 72), "networkRequest");
  *(v7 + 87) = -18;
  *(v7 + 136) = &type metadata for String;
  *(v7 + 144) = v11;
  v32 = v11;
  *(v7 + 112) = 0xD000000000000010;
  *(v7 + 120) = 0x80000001001AA3A0;
  os_log(_:dso:log:type:_:)("Name: %s, Category: %s, Subsystem: %s", v27, v29, v30);

  if ((v31 & 1) == 0)
  {
    static os_log_type_t.error.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100197F20;
    v13 = StaticString.description.getter();
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = v32;
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    os_log(_:dso:log:type:_:)("Format string: %s", v28);

    if (v2)
    {

      v15 = static os_log_type_t.error.getter();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100197F20;
      *(v16 + 56) = sub_100046184(&unk_10021BC50, &qword_1001A0680);
      *(v16 + 64) = sub_100095D74(&unk_10021A4B0, &unk_10021BC50, &qword_1001A0680, &protocol conformance descriptor for [A]);
      *(v16 + 32) = v2;
      os_log(_:dso:log:type:_:)("Arguments: %@", 13, 2, &_mh_execute_header, v5, v15, v16);
    }
  }

  if (v3)
  {

    v17 = static os_log_type_t.error.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100197F20;
    *(v18 + 56) = sub_100046184(&unk_10021BC40, &qword_10019F288);
    *(v18 + 64) = sub_100095D74(&unk_10021A4A0, &unk_10021BC40, &qword_10019F288, &protocol conformance descriptor for [A : B]);
    *(v18 + 32) = v3;
    os_log(_:dso:log:type:_:)("Analytics: %@", 13, 2, &_mh_execute_header, v5, v17, v18);
  }

  result = sub_10000D57C(v33);
  if (result)
  {
    v20 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v21 = 0;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v21;
      static os_log_type_t.error.getter();
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_100197F20;
      swift_unknownObjectRetain();
      v23 = String.init<A>(describing:)();
      *(v22 + 56) = &type metadata for String;
      *(v22 + 64) = v32;
      *(v22 + 32) = v23;
      *(v22 + 40) = v24;
      os_log(_:dso:log:type:_:)("Leaked cancellables: %s", v28);
      swift_unknownObjectRelease();
    }

    while (v20 != v21);
  }

  v25 = static os_log_type_t.error.getter();
  os_log(_:dso:log:type:_:)("}}}", 3, 2, &_mh_execute_header, v5, v25, _swiftEmptyArrayStorage);
  if (sub_100112B44(&type metadata for ResourceNetworkActivity, &off_1001FE818, sub_1000E53A0))
  {
    v26 = static os_log_type_t.fault.getter();
    os_log(_:dso:log:type:_:)("Some objects remain retained at the moment when all activities must be finalized. This could indicate deadlock, memory leak or not cancelled asynchronous procedures, such as networking or XPC calls.", 198, 2, &_mh_execute_header, v5, v26, _swiftEmptyArrayStorage);
  }

  swift_unknownObjectRelease();
}