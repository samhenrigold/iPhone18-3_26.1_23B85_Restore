uint64_t sub_10007BE70()
{
  sub_1000657D4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_100077560(v1);

  return sub_10007B948();
}

uint64_t sub_10007BEF4()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;
  *(v6 + 24) = v5;

  v7 = sub_100065864();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10007BFD4()
{
  v0 = type metadata accessor for Locale();
  sub_10004EAE0();
  v2 = v1;
  __chkstk_darwin(v3, v4, v5);
  sub_10004EAF4();
  v8 = v7 - v6;
  v9 = sub_1000443DC(&unk_1006CA940);
  __chkstk_darwin(v9 - 8, v10, v11);
  sub_10004EAF4();
  v14 = v13 - v12;
  static Locale.current.getter();
  Locale.region.getter();
  (*(v2 + 8))(v8, v0);
  v15 = type metadata accessor for Locale.Region();
  if (sub_100046EA4(v14, 1, v15) == 1)
  {
    sub_10007C9CC(v14, &unk_1006CA940);
    return 0;
  }

  else
  {
    v16 = Locale.Region.identifier.getter();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  return v16;
}

void *sub_10007C150()
{
  v0 = type metadata accessor for Locale();
  sub_10004EAE0();
  v2 = v1;
  __chkstk_darwin(v3, v4, v5);
  sub_10004EAF4();
  v8 = v7 - v6;
  v9 = sub_1000443DC(&unk_1006CA940);
  __chkstk_darwin(v9 - 8, v10, v11);
  sub_10004EAF4();
  v14 = v13 - v12;
  v15 = type metadata accessor for Locale.Region();
  sub_10004EAE0();
  v17 = v16;
  __chkstk_darwin(v18, v19, v20);
  sub_10004EAF4();
  v23 = v22 - v21;
  static Locale.current.getter();
  Locale.region.getter();
  (*(v2 + 8))(v8, v0);
  if (sub_100046EA4(v14, 1, v15) == 1)
  {
    sub_10007C9CC(v14, &unk_1006CA940);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v17 + 32))(v23, v14, v15);
    v24 = sub_10007C33C(v23);
    (*(v17 + 8))(v23, v15);
  }

  return v24;
}

uint64_t sub_10007C33C(uint64_t a1)
{
  v36 = Locale.Region.identifier.getter();
  v3 = v2;
  sub_100044728((v1 + 56), *(v1 + 80));
  sub_1000B05E4(v43);
  if (v44 == 1 || (v46[0] = v45, sub_10007C8B4(v46, &v39), result = sub_10007C9CC(v43, &qword_1006CAC08), (v7 = v46[0]) == 0))
  {

    return _swiftEmptyArrayStorage;
  }

  else
  {
    v8 = 0;
    v9 = *(v46[0] + 16);
    v10 = v46[0] + 32;
    v32 = _swiftEmptyArrayStorage;
    v34 = v46[0] + 32;
LABEL_4:
    v11 = (v10 + (v8 << 6));
    while (v9 != v8)
    {
      if (v8 >= *(v7 + 16))
      {
        __break(1u);
        return result;
      }

      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      *(v41 + 9) = *(v11 + 41);
      v40 = v13;
      v41[0] = v14;
      v39 = v12;
      v38[8] = v36;
      v38[9] = v3;
      __chkstk_darwin(result, v5, v6);
      sub_10007C91C(&v39, v38);
      v15 = sub_100098534();
      if (BYTE8(v41[1]) == 2)
      {
        if (v15)
        {
          goto LABEL_12;
        }
      }

      else if ((v15 ^ BYTE8(v41[1])))
      {
LABEL_12:
        v16 = v32;
        result = swift_isUniquelyReferenced_nonNull_native();
        v42 = v32;
        if ((result & 1) == 0)
        {
          result = sub_1000BDFA4(0, v32[2] + 1, 1);
          v16 = v42;
        }

        v18 = v16[2];
        v17 = v16[3];
        if (v18 >= v17 >> 1)
        {
          result = sub_1000BDFA4((v17 > 1), v18 + 1, 1);
          v16 = v42;
        }

        ++v8;
        v16[2] = v18 + 1;
        v32 = v16;
        v19 = &v16[8 * v18];
        v20 = v39;
        v21 = v40;
        v22 = v41[0];
        *(v19 + 73) = *(v41 + 9);
        v19[3] = v21;
        v19[4] = v22;
        v19[2] = v20;
        v10 = v34;
        goto LABEL_4;
      }

      result = sub_10007C978(&v39);
      v11 += 4;
      ++v8;
    }

    sub_10007C9CC(v46, &qword_1006CAEE0);
    v24 = v32[2];
    if (!v24)
    {

      return _swiftEmptyArrayStorage;
    }

    *&v39 = _swiftEmptyArrayStorage;
    sub_1000BDF84(0, v24, 0);
    v23 = v39;
    v25 = v32 + 9;
    do
    {
      v26 = *(v25 - 4);
      v27 = *(v25 - 2);
      v35 = *(v25 - 3);
      v37 = *(v25 - 5);
      v28 = *v25;
      v33 = *(v25 - 1);
      *&v39 = v23;
      v29 = *(v23 + 16);
      v30 = *(v23 + 24);

      if (v29 >= v30 >> 1)
      {
        sub_1000BDF84((v30 > 1), v29 + 1, 1);
        v23 = v39;
      }

      v25 += 8;
      *(v23 + 16) = v29 + 1;
      v31 = (v23 + 48 * v29);
      v31[4] = v37;
      v31[5] = v26;
      v31[6] = v35;
      v31[7] = v27;
      v31[8] = v33;
      v31[9] = v28;
      --v24;
    }

    while (v24);
  }

  return v23;
}

BOOL sub_10007C674()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  sub_1000455B0(v1);

  v2 = [v0 standardUserDefaults];
  sub_10004F534();
  v4 = v3;

  return v4 < 10.0;
}

uint64_t sub_10007C708()
{
  sub_100044850((v0 + 16));
  sub_100044850((v0 + 56));
  v1 = OBJC_IVAR____TtC3asd21DeviceContextProvider_logger;
  type metadata accessor for Logger();
  sub_10007CB0C();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_10007C76C()
{
  sub_10007C708();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for DeviceContextProvider(uint64_t a1)
{
  result = qword_1006CADF8;
  if (!qword_1006CADF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007C818(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10007C8B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006CAEE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007C9CC(uint64_t a1, uint64_t *a2)
{
  sub_1000443DC(a2);
  sub_10007CB0C();
  (*(v3 + 8))(a1);
  return a1;
}

__n128 sub_10007CA1C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10007CA30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10007CA70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10007CAF0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void sub_10007CB34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_10007CB54()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CAEE8);
  sub_100046E6C(v0, qword_1006CAEE8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10007CBE4()
{
  v0 = type metadata accessor for DistributedNotificationsAsyncSequence();
  __chkstk_darwin(v0, v1, v2);
  DistributedNotificationsAsyncSequence.init()();
  sub_10007D2C4();

  return AsyncCompactMapSequence.init(_:transform:)();
}

uint64_t sub_10007CCB4(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = *a2;
  return _swift_task_switch(sub_10007CCDC, a3, 0);
}

uint64_t sub_10007CCDC()
{
  *(v0 + 40) = sub_10007CD74(*(v0 + 32));

  return _swift_task_switch(sub_10007CD4C, 0, 0);
}

BOOL sub_10007CD74(void *a1)
{
  sub_1000443DC(&qword_1006CA620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005CB870;
  *(inited + 32) = 0xD000000000000023;
  *(inited + 40) = 0x80000001005A4880;
  if (xpc_dictionary_get_string(a1, "XPCEventName"))
  {
    v23 = String.init(cString:)();
    __chkstk_darwin(v23, v3, v4);
    v5 = sub_100098534();
    swift_setDeallocating();
    sub_1000CEE7C();

    if (v5)
    {
      v6 = xpc_dictionary_get_dictionary(a1, "UserInfo");
      if (v6)
      {
        if (xpc_dictionary_get_string(v6, "PKPassLibraryUniqueIDUserInfo"))
        {
          v7 = String.init(cString:)();
          v9 = v8;
          v10 = [objc_allocWithZone(PKPassLibrary) init];
          v11 = sub_10007D1C8(v7, v9, v10);

          if (v11)
          {
            v12 = [v11 passType];

            v13 = v12 == 1;
          }

          else
          {
            v13 = 0;
          }

          if (qword_1006C97B8 != -1)
          {
            sub_10007D31C(&qword_1006C97B8);
          }

          v19 = type metadata accessor for Logger();
          sub_100046E6C(v19, qword_1006CAEE8);
          v20 = Logger.logObject.getter();
          v21 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 67109120;
            *(v22 + 4) = v13;
            _os_log_impl(&_mh_execute_header, v20, v21, "Tomato in notification is Fruit: %{BOOL}d", v22, 8u);
          }

          swift_unknownObjectRelease();
          return v13;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    swift_setDeallocating();
    sub_1000CEE7C();
  }

  if (qword_1006C97B8 != -1)
  {
    sub_10007D31C(&qword_1006C97B8);
  }

  v14 = type metadata accessor for Logger();
  sub_100046E6C(v14, qword_1006CAEE8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Notification not recognised as calzone event", v17, 2u);
  }

  return 0;
}

uint64_t sub_10007D09C()
{
  v1 = v0;
  swift_defaultActor_initialize();
  if (qword_1006C97B8 != -1)
  {
    sub_10007D31C(&qword_1006C97B8);
  }

  v2 = type metadata accessor for Logger();
  sub_100046E6C(v2, qword_1006CAEE8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "CalzoneMonitor.init", v5, 2u);
  }

  return v1;
}

uint64_t sub_10007D174()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

id sub_10007D1C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a3 passWithUniqueID:v4];

  return v5;
}

uint64_t sub_10007D218(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10004876C;

  return sub_10007CCB4(a1, a2, v2);
}

unint64_t sub_10007D2C4()
{
  result = qword_1006CAFB0;
  if (!qword_1006CAFB0)
  {
    type metadata accessor for DistributedNotificationsAsyncSequence();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CAFB0);
  }

  return result;
}

uint64_t sub_10007D31C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10007D33C()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v34 = *(v0 - 8);
  v35 = v0;
  __chkstk_darwin(v0, v1, v2);
  v33 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[0] = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v32[0], v4, v5);
  v32[1] = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8, v8, v9);
  v10 = type metadata accessor for XPCStreamListener(0);
  v13 = __chkstk_darwin(v10, v11, v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16, v17);
  v19 = (v32 - v18);
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20, v22, v23);
  v25 = v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006C97C8 != -1)
  {
    swift_once();
  }

  v26 = sub_100046E6C(v20, qword_1006CAFB8);
  v27 = *(v21 + 16);
  v27(v25, v26, v20);
  v28 = [objc_allocWithZone(CNContactStore) init];
  type metadata accessor for ContactsManager(0);
  swift_allocObject();
  v29 = sub_1000A89DC(v28, v25);
  v27(v19 + *(v10 + 20), v26, v20);
  sub_10007DD5C();
  static DispatchQoS.unspecified.getter();
  v36 = _swiftEmptyArrayStorage;
  sub_10007DDA0();
  sub_1000443DC(&qword_1006CB010);
  sub_10007DDF8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v34 + 104))(v33, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v35);
  *v19 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_10007DE54(v19, v15);
  v30 = sub_10007DF90(v29, v15);
  result = sub_10007E168(v19);
  static BindingsChangeObserver.shared = v30;
  return result;
}

uint64_t *BindingsChangeObserver.shared.unsafeMutableAddressor()
{
  if (qword_1006C97C0 != -1)
  {
    sub_10007E280(&qword_1006C97C0);
  }

  return &static BindingsChangeObserver.shared;
}

id static BindingsChangeObserver.shared.getter()
{
  if (qword_1006C97C0 != -1)
  {
    sub_10007E280(&qword_1006C97C0);
  }

  v1 = static BindingsChangeObserver.shared;

  return v1;
}

uint64_t sub_10007D7CC()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CAFB8);
  sub_100046E6C(v0, qword_1006CAFB8);
  return Logger.init(subsystem:category:)();
}

Swift::Void __swiftcall BindingsChangeObserver.registerObservers()()
{
  v1 = &v0[OBJC_IVAR____TtC3asd22BindingsChangeObserver_xpcStreamListener];
  sub_100044728(&v0[OBJC_IVAR____TtC3asd22BindingsChangeObserver_contactsManager], *&v0[OBJC_IVAR____TtC3asd22BindingsChangeObserver_contactsManager + 24]);
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = v0;
  sub_1000A8CC4(sub_10007E27C, v2);

  sub_100044728(v1, *(v1 + 3));
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = v3;
  sub_1000D96B4(sub_10007DC30, v4);
}

uint64_t sub_10007D954()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007D98C()
{
  v0 = sub_1000443DC(&qword_1006C9E20);
  __chkstk_darwin(v0 - 8, v1, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TaskPriority();
  sub_1000485F8(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_10006F27C(0, 0, v4, &unk_1005CD070, v6);
}

uint64_t sub_10007DAB8()
{
  if (qword_1006C97B0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10004876C;

  return sub_100074254();
}

uint64_t sub_10007DC78()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007DCB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10004876C;

  return sub_10007DA9C();
}

unint64_t sub_10007DD5C()
{
  result = qword_1006CC440;
  if (!qword_1006CC440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006CC440);
  }

  return result;
}

unint64_t sub_10007DDA0()
{
  result = qword_1006CB008;
  if (!qword_1006CB008)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CB008);
  }

  return result;
}

unint64_t sub_10007DDF8()
{
  result = qword_1006CB018;
  if (!qword_1006CB018)
  {
    sub_1000471A4(&qword_1006CB010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CB018);
  }

  return result;
}

uint64_t sub_10007DE54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCStreamListener(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10007DEB8(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v12[3] = type metadata accessor for ContactsManager(0);
  v12[4] = &off_1006941E8;
  v12[0] = a1;
  v11[3] = type metadata accessor for XPCStreamListener(0);
  v11[4] = &off_100695428;
  v7 = sub_10005351C(v11);
  sub_10007E1C4(a2, v7);
  sub_1000446C4(v12, a3 + OBJC_IVAR____TtC3asd22BindingsChangeObserver_contactsManager);
  sub_1000446C4(v11, a3 + OBJC_IVAR____TtC3asd22BindingsChangeObserver_xpcStreamListener);
  v10.receiver = a3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "init");
  sub_100044850(v11);
  sub_100044850(v12);
  return v8;
}

id sub_10007DF90(uint64_t a1, uint64_t a2)
{
  v22 = type metadata accessor for ContactsManager(0);
  v23 = &off_1006941E8;
  v21[0] = a1;
  v19 = type metadata accessor for XPCStreamListener(0);
  v20 = &off_100695428;
  v4 = sub_10005351C(v18);
  sub_10007E1C4(a2, v4);
  v5 = objc_allocWithZone(type metadata accessor for BindingsChangeObserver());
  v6 = sub_10007E228(v21, v22);
  __chkstk_darwin(v6, v6, v7);
  v9 = (v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_10007E228(v18, v19);
  __chkstk_darwin(v11, v11, v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = sub_10007DEB8(*v9, v14, v5);
  sub_100044850(v18);
  sub_100044850(v21);
  return v16;
}

uint64_t sub_10007E168(uint64_t a1)
{
  v2 = type metadata accessor for XPCStreamListener(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007E1C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCStreamListener(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007E228(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_10007E280(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10007E2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for URLRequest();
  v4[6] = v5;
  sub_1000474C0(v5);
  v4[7] = v6;
  v4[8] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v4[9] = v7;
  sub_1000474C0(v7);
  v4[10] = v8;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_10007E3BC, 0, 0);
}

uint64_t sub_10007E3BC()
{
  v1 = v0[5];
  v2 = *(v0[10] + 16);
  v2(v0[12], v1, v0[9]);
  v3 = type metadata accessor for RavioliRequestFactory(0);
  v0[13] = v3;
  if (*(v1 + *(v3 + 28) + 8))
  {
    sub_1000443DC(&qword_1006CA618);
    v4 = type metadata accessor for URLQueryItem();
    sub_1000474C0(v4);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1005CB870;
    URLQueryItem.init(name:value:)();
    URL.append(queryItems:)(v5);
  }

  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];
  v2(v0[11], v0[12], v0[9]);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v9._countAndFlagsBits = 0x692D656C646E7562;
  v10._countAndFlagsBits = v8;
  v10._object = v6;
  v9._object = 0xE900000000000064;
  URLRequest.addValue(_:forHTTPHeaderField:)(v10, v9);
  v11 = (v7 + *(v3 + 20));
  v12 = v11[3];
  v13 = v11[4];
  sub_100044728(v11, v12);
  v14 = swift_task_alloc();
  v0[14] = v14;
  *v14 = v0;
  v14[1] = sub_10007E5E8;

  return dispatch thunk of DeviceInformationProvider.clientInfoHeader()(v12, v13);
}

uint64_t sub_10007E5E8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;

  return _swift_task_switch(sub_10007E6E8, 0, 0);
}

uint64_t sub_10007E6E8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 40);
  v3._object = 0x80000001005A49C0;
  v3._countAndFlagsBits = 0xD000000000000013;
  URLRequest.addValue(_:forHTTPHeaderField:)(*(v0 + 120), v3);

  v4 = *(v2 + *(v1 + 32) + 26);
  if (v4 == 2 || (v4 & 1) != 0)
  {
    v5 = (*(v0 + 40) + *(*(v0 + 104) + 24));
    v6 = v5[3];
    v7 = v5[4];
    sub_100044728(v5, v6);
    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    *v8 = v0;
    v8[1] = sub_10007E898;
    v9 = *(v0 + 64);
    v10 = *(v0 + 16);

    return dispatch thunk of AccountRequestHeaderProvider.applyAuthorisationHeaders(toRequest:)(v10, v9, v6, v7);
  }

  else
  {
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = *(v0 + 48);
    v14 = *(v0 + 16);
    (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
    (*(v12 + 32))(v14, v11, v13);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_10007E898()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10007EA64;
  }

  else
  {
    v2 = sub_10007E9AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007E9AC()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10007EA64()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t type metadata accessor for RavioliRequestFactory(uint64_t a1)
{
  result = qword_1006CB078;
  if (!qword_1006CB078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007EB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100046EA4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10007EC48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1000485F8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_10007ECF4(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_10007EDD0(319, &qword_1006CB088, &protocol descriptor for DeviceInformationProvider);
    if (v2 <= 0x3F)
    {
      sub_10007EDD0(319, &unk_1006CB090, &protocol descriptor for AccountRequestHeaderProvider);
      if (v3 <= 0x3F)
      {
        sub_10007EE24();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10007EDD0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_10007EE24()
{
  if (!qword_1006CACB0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006CACB0);
    }
  }
}

uint64_t sub_10007EEC4()
{
  type metadata accessor for ASAnalyticsManager();
  swift_allocObject();

  v1 = sub_10007FBD8(v0);

  static ASXPCActivityManager.shared = v1;
  return result;
}

uint64_t *ASXPCActivityManager.shared.unsafeMutableAddressor()
{
  if (qword_1006C97D0 != -1)
  {
    sub_10007FD34(&qword_1006C97D0);
  }

  return &static ASXPCActivityManager.shared;
}

id static ASXPCActivityManager.shared.getter()
{
  if (qword_1006C97D0 != -1)
  {
    sub_10007FD34(&qword_1006C97D0);
  }

  v1 = static ASXPCActivityManager.shared;

  return v1;
}

uint64_t sub_10007EFC8()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CB168);
  sub_100046E6C(v0, qword_1006CB168);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10007F058(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ASXPCActivityManager();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10007FD30;

  return sub_10007F108(a1, a2);
}

uint64_t sub_10007F108(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for ASAnalyticsEvent(0);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_10007F19C, 0, 0);
}

uint64_t sub_10007F19C()
{
  if (qword_1006C97D0 != -1)
  {
    sub_10007FD34(&qword_1006C97D0);
  }

  v1 = *(v0 + 40);
  swift_storeEnumTagMultiPayload();
  sub_1000C4148(v1);
  sub_10007700C(v1);
  if (qword_1006C97D8 != -1)
  {
    sub_10007FD54(&qword_1006C97D8);
  }

  v2 = type metadata accessor for Logger();
  sub_100046E6C(v2, qword_1006CB168);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    sub_10007FD74(&_mh_execute_header, v5, v6, "Triggering due pregenerate tasks");
  }

  if (qword_1006C97B0 != -1)
  {
    sub_1000775D8(&qword_1006C97B0);
  }

  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_10007F33C;

  return PrecomputationManager.triggerDuePrecomputations(dataProtectionClass:shouldDefer:)();
}

uint64_t sub_10007F33C()
{
  sub_1000657D4();
  v2 = v1;
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t sub_10007F450(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ASXPCActivityManager();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10007F500;

  return sub_10007F5F8(a1, a2);
}

uint64_t sub_10007F500()
{
  sub_1000657D4();
  v2 = v1;
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t sub_10007F5F8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for ASAnalyticsEvent(0);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_10007F68C, 0, 0);
}

uint64_t sub_10007F68C()
{
  if (qword_1006C97D0 != -1)
  {
    sub_10007FD34(&qword_1006C97D0);
  }

  v1 = *(v0 + 40);
  swift_storeEnumTagMultiPayload();
  sub_1000C4148(v1);
  sub_10007700C(v1);
  if (qword_1006C97D8 != -1)
  {
    sub_10007FD54(&qword_1006C97D8);
  }

  v2 = type metadata accessor for Logger();
  sub_100046E6C(v2, qword_1006CB168);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    sub_10007FD74(&_mh_execute_header, v5, v6, "Triggering due precomputation tasks");
  }

  if (qword_1006C97B0 != -1)
  {
    sub_1000775D8(&qword_1006C97B0);
  }

  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_10007F82C;

  return PrecomputationManager.triggerDuePrecomputations(dataProtectionClass:shouldDefer:)();
}

uint64_t sub_10007F82C()
{
  sub_1000657D4();
  *(*v0 + 56) = v1;

  return _swift_task_switch(sub_10007F928, 0, 0);
}

uint64_t sub_10007F928()
{
  sub_1000657D4();
  if (*(v0 + 56))
  {
    v1 = [objc_allocWithZone(Vr3QrKl7Yn9l4CTz) init];
    [v1 m2fzkz0hfx3YgwiD:0];
  }

  v2 = *(v0 + 8);
  v3 = *(v0 + 56);

  return v2(v3);
}

uint64_t ASXPCActivityManager.register(activity:)(uint64_t a1)
{
  v2 = 0xD000000000000011;
  v3 = [objc_allocWithZone(type metadata accessor for ASBackgroundActivityManager()) init];
  v4 = &unk_1005CD108;
  if (a1)
  {
    if (a1 != 1)
    {
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
    }

    v5 = "_TtC3asd18ASAnalyticsManager";
    v4 = &unk_1005CD100;
  }

  else
  {
    v5 = "com.apple.asd.odp";
    v2 = 0xD000000000000013;
  }

  ASBackgroundActivityManager.registerActivity(identifier:activity:)(v2, v5 | 0x8000000000000000, v4, 0);
}

unint64_t sub_10007FB40()
{
  result = qword_1006CB180;
  if (!qword_1006CB180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CB180);
  }

  return result;
}

uint64_t *sub_10007FBD8(uint64_t *a1)
{
  v1 = *a1;
  v14[3] = v1;
  v14[4] = &off_1006935C8;
  v14[0] = a1;
  v2 = type metadata accessor for ASXPCActivityManager();
  v3 = objc_allocWithZone(v2);
  v4 = sub_10007E228(v14, v1);
  __chkstk_darwin(v4, v4, v5);
  v7 = (&v12 - v6);
  (*(v8 + 16))(&v12 - v6);
  v9 = *v7;
  v13[3] = v1;
  v13[4] = &off_1006935C8;
  v13[0] = v9;
  sub_1000446C4(v13, v3 + OBJC_IVAR____TtC3asd20ASXPCActivityManager_analyticsManager);
  v12.receiver = v3;
  v12.super_class = v2;
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_100044850(v13);
  sub_100044850(v14);
  return v10;
}

uint64_t sub_10007FD34(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10007FD54(uint64_t a1)
{

  return swift_once();
}

void sub_10007FD74(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_10007FD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = type metadata accessor for ContextualProfile();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = sub_100065948();
  sub_1000443DC(&qword_1006CB1B8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  sub_1000443DC(&qword_1006CB1C0);
  v3[27] = sub_100065948();
  v5 = type metadata accessor for AssessmentConfig();
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = sub_100065948();
  v3[31] = type metadata accessor for ProfileContent(0);
  v3[32] = sub_100065948();

  return _swift_task_switch(sub_10007FF30, 0, 0);
}

uint64_t sub_10007FF30()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v4 = *(v0 + 160);
  sub_100044728(v4, v4[3]);
  *(v1 + 8) = dispatch thunk of EncapsulatingProfile.resolvedProfileInfo.getter();
  *(v1 + 16) = v5;
  v6 = v4[4];
  sub_100044728(v4, v4[3]);
  dispatch thunk of EncapsulatingProfile.config.getter();
  v7 = sub_100046EA4(v3, 1, v2);
  *(v0 + 288) = v7;
  if (v7 == 1)
  {
    v8 = *(v0 + 168);
    sub_10007C9CC(*(v0 + 216), &qword_1006CB1C0);
    sub_100080D18();
    swift_allocError();
    *v9 = 3;
    swift_willThrow();
    type metadata accessor for ProfileContext();
    sub_10007CB0C();
    (*(v10 + 8))(v8);
    goto LABEL_18;
  }

  v11 = *(v0 + 256);
  v12 = *(v0 + 208);
  (*(*(v0 + 232) + 32))(*(v0 + 240), *(v0 + 216), *(v0 + 224));
  v11[3] = AssessmentConfig.bindingsToCompare.getter();
  v11[4] = AssessmentConfig.refreshTtl.getter();
  v11[5] = AssessmentConfig.bindingsDictSource.getter();
  AssessmentConfig.primaryDSID.getter();
  AssessmentConfig.destinations.getter();
  v13 = type metadata accessor for AssessmentServerDestinations();
  v14 = sub_100046EA4(v12, 1, v13);
  v15 = *(v0 + 208);
  if (v14 == 1)
  {
    sub_10007C9CC(*(v0 + 208), &qword_1006CB1B8);
    v6 = 0;
    v12 = 0;
  }

  else
  {
    AssessmentServerDestinations.tsidEncryptionCert.getter();
    sub_100081208();
    (*(v16 + 8))(v15, v13);
  }

  v18 = *(v0 + 248);
  v17 = *(v0 + 256);
  v19 = *(v0 + 200);
  v20 = (v17 + *(v18 + 40));
  *v20 = v6;
  v20[1] = v12;
  *(v17 + *(v18 + 44)) = AssessmentConfig.useSendOTD.getter() & 1;
  AssessmentConfig.destinations.getter();
  v21 = sub_100046EA4(v19, 1, v13);
  v22 = *(v0 + 200);
  if (v21 == 1)
  {
    sub_10007C9CC(*(v0 + 200), &qword_1006CB1B8);
    v6 = 0;
    v12 = 0;
  }

  else
  {
    AssessmentServerDestinations.otd.getter();
    sub_100081208();
    (*(v23 + 8))(v22, v13);
  }

  v24 = *(v0 + 248);
  v25 = *(v0 + 256);
  v26 = *(v0 + 184);
  v75 = *(v0 + 192);
  v76 = *(v0 + 176);
  v27 = *(v0 + 160);
  v28 = (v25 + v24[12]);
  *v28 = v6;
  v28[1] = v12;
  *(v25 + v24[14]) = AssessmentConfig.deviceFields()();
  *(v25 + v24[15]) = AssessmentConfig.bindingsFields()();
  sub_100044728(v27, v4[3]);
  dispatch thunk of EncapsulatingProfile.profileIdentifiers(for:)();
  sub_100044728(v27, v4[3]);
  dispatch thunk of EncapsulatingProfile.profile(for:)();
  v29 = (*(v26 + 88))(v75, v76);
  if (v29 == enum case for ContextualProfile.monoProfile(_:))
  {
    (*(*(v0 + 184) + 96))(*(v0 + 192), *(v0 + 176));
    sub_100080E58();
    v30 = sub_100081220();
    sub_100046D38(v30, v31);
    v32 = sub_100081220();
    v34 = sub_100080B08(v32, v33);
    if (v34)
    {
      v35 = v34;
      v36 = *(v0 + 256);
      v38 = *(v0 + 232);
      v37 = *(v0 + 240);
      v39 = *(v0 + 224);
      v40 = *(v0 + 168);
      sub_1000443DC(&qword_1006CBEB0);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1005CC350;
      *(v41 + 32) = v35;
      v42 = sub_100081220();
      sub_1000448B0(v42, v43);
      type metadata accessor for ProfileContext();
      sub_10007CB0C();
      (*(v44 + 8))(v40);
      (*(v38 + 8))(v37, v39);
      *v36 = v41;
      v45 = *(v0 + 256);
      sub_1000811F8();
      v46 = *(v0 + 160);
      sub_100080D98(v45, *(v0 + 152));
      sub_100044850(v46);
      sub_100080DFC(v45);

      sub_10006574C();
LABEL_21:

      return v47();
    }

    v61 = *(v0 + 232);
    v60 = *(v0 + 240);
    v62 = *(v0 + 224);
    v63 = *(v0 + 168);
    sub_100080D18();
    swift_allocError();
    *v64 = 2;
    swift_willThrow();
    v65 = sub_100081220();
    sub_1000448B0(v65, v66);
    type metadata accessor for ProfileContext();
    sub_10007CB0C();
    (*(v67 + 8))(v63);
    (*(v61 + 8))(v60, v62);
LABEL_18:
    v68 = *(v0 + 288);
    v69 = *(v0 + 256);
    sub_100044850(*(v0 + 160));
    sub_1000448B0(*(v69 + 8), *(v69 + 16));
    if (v68 != 1)
    {
      v71 = *(v0 + 248);
      v70 = *(v0 + 256);

      v72 = *(v71 + 36);
      type metadata accessor for DsidType();
      sub_10007CB0C();
      (*(v73 + 8))(v70 + v72);
      sub_10007B410();
      sub_10007B410();
      sub_100044850((v70 + *(v71 + 52)));
    }

    sub_1000811F8();

    sub_10006574C();
    goto LABEL_21;
  }

  v49 = *(v0 + 184);
  v48 = *(v0 + 192);
  v50 = *(v0 + 176);
  if (v29 != enum case for ContextualProfile.multiProfile(_:))
  {
    v55 = *(v0 + 232);
    v54 = *(v0 + 240);
    v56 = *(v0 + 224);
    v57 = *(v0 + 168);
    sub_100080D18();
    swift_allocError();
    *v58 = 4;
    swift_willThrow();
    type metadata accessor for ProfileContext();
    sub_10007CB0C();
    (*(v59 + 8))(v57);
    (*(v55 + 8))(v54, v56);
    (*(v49 + 8))(v48, v50);
    goto LABEL_18;
  }

  (*(v49 + 96))(*(v0 + 192), *(v0 + 176));
  v51 = [objc_opt_self() sharedInstance];
  *(v0 + 264) = v51;
  type metadata accessor for UUID();
  isa = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 272) = isa;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_10008072C;
  v53 = swift_continuation_init();
  *(v0 + 136) = sub_1000443DC(&qword_1006CB1D0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100080B80;
  *(v0 + 104) = &unk_1006935F8;
  *(v0 + 112) = v53;
  [v51 quVb0ErcaaAyQJnG:isa completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10008072C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_100080968;
  }

  else
  {
    v2 = sub_10008083C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008083C()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  v7 = v0[21];
  type metadata accessor for ProfileContext();
  sub_10007CB0C();
  (*(v8 + 8))(v7);
  (*(v5 + 8))(v4, v6);
  *v3 = v0[18];

  v9 = v0[32];
  sub_1000811F8();
  v10 = v0[20];
  sub_100080D98(v9, v0[19]);
  sub_100044850(v10);
  sub_100080DFC(v9);

  sub_10006574C();

  return v11();
}

uint64_t sub_100080968()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 264);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = *(v0 + 224);
  v6 = *(v0 + 168);
  swift_willThrow();
  type metadata accessor for ProfileContext();
  sub_10007CB0C();
  (*(v7 + 8))(v6);
  (*(v4 + 8))(v3, v5);

  LODWORD(v5) = *(v0 + 288);
  v8 = *(v0 + 256);
  sub_100044850(*(v0 + 160));
  sub_1000448B0(*(v8 + 8), *(v8 + 16));
  if (v5 != 1)
  {
    v10 = *(v0 + 248);
    v9 = *(v0 + 256);

    v11 = *(v10 + 36);
    type metadata accessor for DsidType();
    sub_10007CB0C();
    (*(v12 + 8))(v9 + v11);
    sub_10007B410();
    sub_10007B410();
    sub_100044850((v9 + *(v10 + 52)));
  }

  sub_1000811F8();

  sub_10006574C();

  return v13();
}

id sub_100080B08(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData:isa];

  sub_1000448B0(a1, a2);
  return v6;
}

uint64_t sub_100080B80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100044728((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1000C4464();
  }

  else
  {
    sub_100080E58();
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return sub_1000C4460(v4, v7);
  }
}

void sub_100080C18()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      v5 = v4;
      [v4 makeUnreleaseable];
    }
  }
}

uint64_t type metadata accessor for ProfileContent(uint64_t a1)
{
  result = qword_1006CB238;
  if (!qword_1006CB238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100080D18()
{
  result = qword_1006CB1C8;
  if (!qword_1006CB1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CB1C8);
  }

  return result;
}

uint64_t sub_100080D98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProfileContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100080DFC(uint64_t a1)
{
  v2 = type metadata accessor for ProfileContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100080E58()
{
  result = qword_1006CB1D8;
  if (!qword_1006CB1D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006CB1D8);
  }

  return result;
}

uint64_t sub_100080EB0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DsidType();
    v9 = a1 + *(a3 + 36);

    return sub_100046EA4(v9, a2, v8);
  }
}

void *sub_100080F4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DsidType();
    v8 = v5 + *(a4 + 36);

    return sub_1000485F8(v8, a2, a2, v7);
  }

  return result;
}

void sub_100080FCC(uint64_t a1)
{
  sub_100081140(319);
  if (v1 <= 0x3F)
  {
    sub_100077CA4(319, &qword_1006CACA8, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_100081198(319, &qword_1006CB250, &qword_1006CB258);
      if (v3 <= 0x3F)
      {
        type metadata accessor for DsidType();
        if (v4 <= 0x3F)
        {
          sub_100077CA4(319, &qword_1006CACB0, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_100077CF8();
            if (v6 <= 0x3F)
            {
              sub_100081198(319, &qword_1006CB260, &unk_1006CB268);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100081140(uint64_t a1)
{
  if (!qword_1006CB248)
  {
    sub_100080E58();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1006CB248);
    }
  }
}

void sub_100081198(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_1000471A4(a3);
    v4 = type metadata accessor for Dictionary();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_10008122C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v5 = type metadata accessor for BindingsStore.Binding(0);
  v6 = *(v5 - 8);
  v9 = __chkstk_darwin(v5 - 8, v7, v8);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9, v11, v12);
  v15 = &v27 - v14;
  v16 = 0;
  v17 = *(a3 + 16);
  v30 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v17 == v16)
    {

      return v30;
    }

    if (v16 >= *(a3 + 16))
    {
      break;
    }

    v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v19 = *(v6 + 72);
    sub_100085758(a3 + v18 + v19 * v16, v15);
    v20 = v31(v15);
    if (v3)
    {
      sub_10008587C(v15);
      v26 = v30;

      return v26;
    }

    if (v20)
    {
      sub_100085818(v15, v29);
      v21 = v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000BDEE4(0, v21[2] + 1, 1);
        v21 = v33;
      }

      v24 = v21[2];
      v23 = v21[3];
      v25 = (v24 + 1);
      if (v24 >= v23 >> 1)
      {
        v30 = (v24 + 1);
        v28 = v24;
        sub_1000BDEE4(v23 > 1, v24 + 1, 1);
        v25 = v30;
        v24 = v28;
        v21 = v33;
      }

      ++v16;
      v21[2] = v25;
      v30 = v21;
      result = sub_100085818(v29, v21 + v18 + v24 * v19);
    }

    else
    {
      result = sub_10008587C(v15);
      ++v16;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_10008145C(uint64_t *a1)
{
  v2 = type metadata accessor for BindingsStore.Binding(0);
  sub_100077674(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000875A8(v5);
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v9[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9[1] = v7;
  result = sub_100086284(v9);
  *a1 = v5;
  return result;
}

void *sub_100081500()
{
  if (qword_1006C9818 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    sub_1000879B4(&static ASDConfigurationManager.shared, v46);
    v3 = static ASDConfigurationManager.shared;
    sub_1000B05E4(v47);

    v4 = 0;
    if (v48 == 1 || (v5 = v49, v4 = v50, v6 = sub_100087908(), sub_100076F78(v6, v7), sub_100076FB8(v47, &qword_1006CAC08), !v5))
    {
      v0 = &unk_100691DC8;
      v8 = sub_10008785C();
      sub_10008785C();

      sub_1000875BC(0, v4);
    }

    else
    {
      v8 = v4;
    }

    v9 = sub_100047510();
    v11 = sub_100049208(v9, v10);

    if (!v11[2])
    {
      break;
    }

    sub_100087990();
    v12 = v45;
    sub_1000CF374(v11);
    sub_10008787C();
    while ((v0 & 0x8000000000000000) == 0 && v0 < (v1 << *(v11 + 32)))
    {
      sub_1000879E0();
      if (v14)
      {
        goto LABEL_30;
      }

      if (*(v11 + 9) != v13)
      {
        goto LABEL_31;
      }

      sub_1000879CC();
      v16 = v15[1];
      v44 = *v15;
      v45 = v12;
      v18 = *(v17 + 16 * v0 + 8);
      v19 = v12[2];
      v1 = v12[3];
      v20 = v19 + 1;

      if (v19 >= v1 >> 1)
      {
        sub_100087A90();
      }

      v12[2] = v20;
      v21 = &v12[3 * v19];
      v21[4] = v44;
      v21[5] = v16;
      v21[6] = v18;
      sub_1000879F4();
      if (v22 == v23)
      {
        goto LABEL_32;
      }

      if ((*(v41 + 8 * v8) & v2) == 0)
      {
        goto LABEL_33;
      }

      if (*(v11 + 9) != v43)
      {
        goto LABEL_34;
      }

      sub_100087A3C();
      if (v14)
      {
        sub_10008794C();
        do
        {
          if (v33 >= v32)
          {
            break;
          }

          v35 = *v34++;
          v20 += 64;
          ++v33;
        }

        while (!v35);
        sub_100087930(v24, v25, v26, v27, v28, v29, v30, v31, v37, v38, v39, v40, v41, *v42, v42[4]);
      }

      else
      {
        sub_100087A28();
      }

      sub_100087914();
      if (v14)
      {

        return sub_100081774(v12);
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    sub_1000878A4(&qword_1006C9818);
  }

  v12 = _swiftEmptyArrayStorage;
  return sub_100081774(v12);
}

void *sub_100081774(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000443DC(&qword_1006CB540);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = _swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  sub_100085994(v2, 1, &v4);

  return v4;
}

void *sub_100081820()
{
  if (qword_1006C9818 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    sub_1000879B4(&static ASDConfigurationManager.shared, v46);
    v3 = static ASDConfigurationManager.shared;
    sub_1000B05E4(v47);

    v4 = 0;
    if (v48 == 1 || (v5 = v49, v4 = v50, v6 = sub_100087908(), sub_100076F78(v6, v7), sub_100076FB8(v47, &qword_1006CAC08), !v5))
    {
      v0 = &unk_100691DC8;
      v8 = sub_10008785C();
      sub_10008785C();

      sub_1000875BC(0, v4);
    }

    else
    {
      v8 = v4;
    }

    v9 = sub_100047510();
    v11 = sub_100049208(v9, v10);

    if (!v11[2])
    {
      break;
    }

    sub_100087990();
    v12 = v45;
    sub_1000CF374(v11);
    sub_10008787C();
    while ((v0 & 0x8000000000000000) == 0 && v0 < v1 << *(v11 + 32))
    {
      sub_1000879E0();
      if (v14)
      {
        goto LABEL_30;
      }

      if (*(v11 + 9) != v13)
      {
        goto LABEL_31;
      }

      sub_1000879CC();
      v1 = *v15;
      v16 = v15[1];
      v44 = *(v17 + 16 * v0);
      v45 = v12;
      v19 = v12[2];
      v18 = v12[3];
      v20 = v19 + 1;

      if (v19 >= v18 >> 1)
      {
        sub_100087A90();
      }

      v12[2] = v20;
      v21 = &v12[3 * v19];
      v21[4] = v1;
      v21[5] = v16;
      v21[6] = v44;
      sub_1000879F4();
      if (v22 == v23)
      {
        goto LABEL_32;
      }

      if ((*(v41 + 8 * v8) & v2) == 0)
      {
        goto LABEL_33;
      }

      if (*(v11 + 9) != v43)
      {
        goto LABEL_34;
      }

      sub_100087A3C();
      if (v14)
      {
        sub_10008794C();
        do
        {
          if (v33 >= v32)
          {
            break;
          }

          v35 = *v34++;
          v20 += 64;
          ++v33;
        }

        while (!v35);
        sub_100087930(v24, v25, v26, v27, v28, v29, v30, v31, v37, v38, v39, v40, v41, *v42, v42[4]);
      }

      else
      {
        sub_100087A28();
      }

      sub_100087914();
      if (v14)
      {

        return sub_100081774(v12);
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    sub_1000878A4(&qword_1006C9818);
  }

  v12 = _swiftEmptyArrayStorage;
  return sub_100081774(v12);
}

uint64_t sub_100081A94(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = *v1;
  return _swift_task_switch(sub_100081ADC, 0, 0);
}

uint64_t sub_100081ADC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  swift_defaultActor_initialize();
  Logger.init(subsystem:category:)();
  v3 = OBJC_IVAR____TtC3asd13BindingsStore_persister;
  *(v2 + v3) = [objc_opt_self() sharedInstance];
  sub_100087764(v1, v0 + 56, &qword_1006CB5E0);
  if (*(v0 + 80))
  {
    sub_100046D90((v0 + 56), v0 + 16);
  }

  else
  {
    *(v0 + 40) = &type metadata for BindingsConfigResolver;
    *(v0 + 48) = &off_100693668;
  }

  v4 = *(v0 + 104);
  sub_100046D90((v0 + 16), v4 + 120);
  v5 = [*(v4 + OBJC_IVAR____TtC3asd13BindingsStore_persister) fetchAllBindings];
  sub_1000591B0(0, &qword_1006CB580, off_10068D788);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100081CF4();
  v7 = v6;

  *(v4 + 112) = v7;

  return _swift_task_switch(sub_100081C80, v4, 0);
}

uint64_t sub_100081C80()
{
  v1 = v0[12];
  sub_10008478C();
  sub_100076FB8(v1, &qword_1006CB5E0);
  v2 = v0[1];
  v3 = v0[13];

  return v2(v3);
}

void sub_100081CF4()
{
  sub_1000541C0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Logger();
  sub_10004EAE0();
  v6 = v5;
  __chkstk_darwin(v7, v8, v9);
  sub_10004EAF4();
  isUniquelyReferenced_nonNull_native = v11 - v10;
  type metadata accessor for BindingsStore.Binding(0);
  sub_10004EAE0();
  v96 = v14;
  v97 = v13;
  __chkstk_darwin(v13, v15, v16);
  sub_1000878C4();
  v92 = v17 - v18;
  sub_1000474F8();
  __chkstk_darwin(v19, v20, v21);
  v105 = (&v91 - v22);
  v23 = sub_1000443DC(&qword_1006CB5E8);
  v24 = sub_100077674(v23);
  __chkstk_darwin(v24, v25, v26);
  sub_10004EAF4();
  v98 = v4;
  v99 = v28 - v27;
  sub_1000485F8(v28 - v27, 1, 1, v4);
  if (v3 >> 62)
  {
    goto LABEL_36;
  }

  v29 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
LABEL_37:
    sub_100076FB8(v99, &qword_1006CB5E8);
    sub_100054088();
    return;
  }

LABEL_3:
  if (v29 >= 1)
  {
    v30 = 0;
    v104 = v3 & 0xC000000000000001;
    v95 = (v6 + 1);
    v31 = _swiftEmptyDictionarySingleton;
    *(&v32 + 1) = 2;
    v93 = xmmword_1005CB870;
    *&v32 = 136315394;
    v91 = v32;
    v100 = v3;
    v101 = v1;
    v102 = isUniquelyReferenced_nonNull_native;
    v103 = v29;
    while (1)
    {
      if (v104)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v33 = *(v3 + 8 * v30 + 32);
      }

      v34 = v33;
      v35 = [v33 value];
      v36 = sub_1000591B0(0, &qword_1006CB578, NSObject_ptr);
      v106[3] = v36;
      v106[0] = v35;
      v37 = v35;
      v38 = sub_1000825E8(v106);
      sub_100044850(v106);
      if ((v38 & 1) == 0)
      {
        sub_100082414(v99, isUniquelyReferenced_nonNull_native);
        v54 = v37;
        v55 = v34;
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v106[0] = v94;
          *v58 = v91;
          v59 = [v55 key];
          v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          v61 = sub_100052F7C(v60);

          *(v58 + 4) = v61;
          *(v58 + 12) = 2080;
          v62 = [swift_getObjCClassFromObject() description];
          v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          v64 = v63;
          v1 = v101;
          v65 = sub_100052F7C(v64);
          isUniquelyReferenced_nonNull_native = v102;

          *(v58 + 14) = v65;
          _os_log_impl(&_mh_execute_header, v56, v57, "Skipping binding due to value of unexpected type. key: %s type: %s", v58, 0x16u);
          v66 = v94;
          swift_arrayDestroy();
          sub_1000488AC(v66);
          v67 = v58;
          v3 = v100;
          sub_1000488AC(v67);
        }

        else
        {
        }

        (*v95)(isUniquelyReferenced_nonNull_native, v98);
        goto LABEL_32;
      }

      v39 = v105;
      v105[3] = v36;
      v39[4] = sub_1000876FC();
      *v39 = v37;
      v40 = [v34 updated];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v41 = [v34 key];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      if (v31[2])
      {
        v42 = sub_100087908();
        v44 = sub_1000BFB60(v42, v43);
        v46 = v45;

        if (v46)
        {
          v47 = *(v31[7] + 8 * v44);
          sub_100085758(v105, v92);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v84 = sub_100087968();
            sub_100062C3C(v84, v85, v86, v47, v87, v88);
            v47 = v89;
          }

          v51 = *(v47 + 16);
          v50 = *(v47 + 24);
          if (v51 >= v50 >> 1)
          {
            sub_100062C3C(v50 > 1, v51 + 1, 1, v47, v48, v49);
            v47 = v90;
          }

          *(v47 + 16) = v51 + 1;
          sub_1000658C0();
          sub_100085818(v92, v47 + v52 + *(v53 + 72) * v51);
          goto LABEL_22;
        }
      }

      else
      {
      }

      sub_1000443DC(&qword_1006CA650);
      v68 = (*(v96 + 80) + 32) & ~*(v96 + 80);
      v47 = swift_allocObject();
      *(v47 + 16) = v93;
      sub_100085758(v105, v47 + v68);
LABEL_22:
      v69 = [v34 key];
      v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v71;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v106[0] = v31;
      v6 = v31;
      v73 = sub_1000BFB60(v70, v72);
      v75 = v31[2];
      v76 = (v74 & 1) == 0;
      v77 = v75 + v76;
      if (__OFADD__(v75, v76))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v29 = _CocoaArrayWrapper.endIndex.getter();
        if (!v29)
        {
          goto LABEL_37;
        }

        goto LABEL_3;
      }

      v3 = v73;
      v1 = v74;
      sub_1000443DC(&qword_1006CA8E8);
      v6 = v106;
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v77))
      {
        v6 = v106[0];
        v78 = sub_1000BFB60(v70, v72);
        isUniquelyReferenced_nonNull_native = v102;
        if ((v1 & 1) != (v79 & 1))
        {
          goto LABEL_39;
        }

        v3 = v78;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = v102;
      }

      v31 = v106[0];
      if (v1)
      {
        *(*(v106[0] + 56) + 8 * v3) = v47;
      }

      else
      {
        *(v106[0] + 8 * (v3 >> 6) + 64) |= 1 << v3;
        v80 = (v31[6] + 16 * v3);
        *v80 = v70;
        v80[1] = v72;
        *(v31[7] + 8 * v3) = v47;
        v81 = v31[2];
        v82 = __OFADD__(v81, 1);
        v83 = v81 + 1;
        if (v82)
        {
          goto LABEL_35;
        }

        v31[2] = v83;
      }

      sub_10008587C(v105);
      v3 = v100;
      v1 = v101;
LABEL_32:
      if (v103 == ++v30)
      {
        goto LABEL_37;
      }
    }
  }

  __break(1u);
LABEL_39:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100082414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000443DC(&qword_1006CB5E8);
  v7 = __chkstk_darwin(v4 - 8, v5, v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10, v11);
  v13 = &v16 - v12;
  sub_100087764(a1, &v16 - v12, &qword_1006CB5E8);
  v14 = type metadata accessor for Logger();
  if (sub_100046EA4(v13, 1, v14) != 1)
  {
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  sub_100076FB8(v13, &qword_1006CB5E8);
  Logger.init(subsystem:category:)();
  (*(*(v14 - 8) + 16))(v9, a2, v14);
  sub_1000485F8(v9, 0, 1, v14);
  swift_beginAccess();
  return sub_1000877C0(v9, a1);
}

uint64_t sub_1000825E8(uint64_t a1)
{
  sub_10005346C(a1, v3);
  if (swift_dynamicCast())
  {
  }

  else
  {
    sub_10005346C(a1, v3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_10005346C(a1, v3);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_10005346C(a1, v3);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10005346C(a1, v3);
          return swift_dynamicCast();
        }
      }
    }
  }

  return 1;
}

void sub_100082700()
{
  sub_1000541C0();
  v2 = v1;
  v56 = type metadata accessor for ODIBindingsDict();
  sub_10004EAE0();
  v53 = v3;
  __chkstk_darwin(v4, v5, v6);
  sub_1000878C4();
  v52 = v7 - v8;
  sub_1000474F8();
  __chkstk_darwin(v9, v10, v11);
  v57 = v51 - v12;
  v55 = type metadata accessor for Date();
  sub_10004EAE0();
  v54 = v13;
  __chkstk_darwin(v14, v15, v16);
  sub_10004EAF4();
  v19 = v18 - v17;
  sub_100044728((v0 + 120), *(v0 + 144));
  v51[1] = sub_100081820();
  v20 = *(v0 + 144);
  v60 = v0;
  sub_100044728((v0 + 120), v20);
  v58 = sub_100081500();
  v59 = v19;
  static Date.now.getter();
  sub_100087840();
  v23 = v22 & v21;
  v25 = (v24 + 63) >> 6;

  v26 = 0;
  if (!v23)
  {
    goto LABEL_3;
  }

  do
  {
    v27 = v26;
LABEL_7:
    v28 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v29 = v28 | (v27 << 6);
    v30 = (*(v2 + 48) + 16 * v29);
    v32 = *v30;
    v31 = v30[1];
    sub_1000446C4(*(v2 + 56) + 40 * v29, &v61);
    *&v63 = v32;
    *(&v63 + 1) = v31;
    sub_100046D90(&v61, &v64);

LABEL_8:
    v67 = v63;
    v68[0] = v64;
    v68[1] = v65;
    v69 = v66;
    v33 = *(&v63 + 1);
    if (!*(&v63 + 1))
    {

      v38 = v57;
      sub_100084FA0();
      v39 = OBJC_IVAR____TtC3asd13BindingsStore_logger;
      v40 = v56;
      (*(v53 + 16))(v52, v38, v56);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&v67 = v58;
        *v43 = 136315138;
        ODIBindingsDict.keys.getter();
        sub_1000443DC(&qword_1006CAD30);
        v44 = Dictionary.Keys.description.getter();

        v45 = sub_100087978();
        v39(v45);
        v46 = sub_100052F7C(v44);

        *(v43 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v41, v42, "InVal keys for BS: %s", v43, 0xCu);
        v47 = v58;
        sub_100044850(v58);
        sub_1000488AC(v47);
        v38 = v57;
        sub_1000488AC(v43);
      }

      else
      {

        v48 = sub_100087978();
        v39(v48);
      }

      v49 = v55;
      v50 = v54;
      sub_100083AB8();
      (v39)(v38, v40);
      (*(v50 + 8))(v59, v49);
      sub_100054088();
      return;
    }

    v34 = v67;
    sub_100046D90(v68, &v63);
    v35 = *(&v64 + 1);
    v36 = sub_100044728(&v63, *(&v64 + 1));
    v62 = v35;
    v37 = sub_10005351C(&v61);
    (*(*(v35 - 8) + 16))(v37, v36, v35);
    LOBYTE(v35) = sub_1000825E8(&v61);
    sub_100044850(&v61);
    if ((v35 & 1) != 0 && sub_100082C38(v34, v33))
    {
      sub_100083F44();
    }

    sub_100044850(&v63);
  }

  while (v23);
LABEL_3:
  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v25)
    {
      v23 = 0;
      v66 = 0;
      v64 = 0u;
      v65 = 0u;
      v63 = 0u;
      goto LABEL_8;
    }

    v23 = *(v2 + 64 + 8 * v27);
    ++v26;
    if (v23)
    {
      v26 = v27;
      goto LABEL_7;
    }
  }

  __break(1u);
}

BOOL sub_100082C38(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006CB588);
  v5 = sub_100077674(v4);
  __chkstk_darwin(v5, v6, v7);
  sub_10004EAF4();
  v10 = v9 - v8;
  v11 = sub_1000443DC(&qword_1006CB590);
  sub_10004EAE0();
  v13 = v12;
  __chkstk_darwin(v14, v15, v16);
  sub_10004EAF4();
  v19 = v18 - v17;
  sub_1000472E0(&qword_1006CB598, &qword_1006CB590, &protocol conformance descriptor for Regex<A>);
  Regex.init<A>(_:)();
  sub_100083874(v19, a1, a2);
  (*(v13 + 8))(v19, v11);
  v20 = sub_1000443DC(&qword_1006CB5A0);
  v21 = sub_100046EA4(v10, 1, v20) == 1;
  v22 = sub_100087908();
  sub_100076FB8(v22, v23);
  return v21;
}

uint64_t sub_100082DD4@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v1 = type metadata accessor for Anchor();
  v2 = *(v1 - 8);
  v65 = v1;
  v66 = v2;
  v5 = __chkstk_darwin(v1, v3, v4);
  v62 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v7, v8);
  v63 = &v60 - v9;
  v10 = sub_1000443DC(&qword_1006CB590);
  v67 = *(v10 - 8);
  v68 = v10;
  v13 = __chkstk_darwin(v10, v11, v12);
  v64 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v15, v16);
  v18 = &v60 - v17;
  v61 = type metadata accessor for _RegexFactory();
  v19 = *(v61 - 8);
  __chkstk_darwin(v61, v20, v21);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000443DC(&qword_1006CB5A8);
  __chkstk_darwin(v24 - 8, v25, v26);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for CharacterClass();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29, v31, v32);
  v34 = &v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000443DC(&qword_1006CB5B0);
  v36 = *(v35 - 8);
  v70 = v35;
  v71 = v36;
  v39 = __chkstk_darwin(v35, v37, v38);
  v41 = &v60 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39, v42, v43);
  v45 = &v60 - v44;
  v72 = 35;
  v73 = 0xE100000000000000;
  v60 = sub_100087660();
  static RegexComponentBuilder.buildExpression<A>(_:)();
  static RegexComponent<>.digit.getter();
  v46 = type metadata accessor for RegexRepetitionBehavior();
  sub_1000485F8(v28, 1, 1, v46);
  makeFactory()();
  sub_1000876B4(&qword_1006CB5C0, &type metadata accessor for CharacterClass, &protocol conformance descriptor for CharacterClass);
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  (*(v19 + 8))(v23, v61);
  sub_100076FB8(v28, &qword_1006CB5A8);
  (*(v30 + 8))(v34, v29);
  OneOrMore.init(_:)();
  sub_1000472E0(&qword_1006CB5C8, &qword_1006CB5B0, &protocol conformance descriptor for OneOrMore<A>);
  v47 = v70;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v48 = *(v71 + 8);
  v71 += 8;
  v48(v41, v47);
  v49 = v62;
  static Anchor.endOfLine.getter();
  sub_1000876B4(&unk_1006CB5D0, &type metadata accessor for Anchor, &protocol conformance descriptor for Anchor);
  v50 = v63;
  v51 = v65;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v52 = *(v66 + 8);
  v53 = v49;
  v54 = v51;
  v52(v53, v51);
  v72 = v74;
  v73 = v75;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();

  v55 = v64;
  sub_1000833A8(v45, v64);
  sub_100083608(v69);
  v56 = *(v67 + 8);
  v57 = v55;
  v58 = v68;
  v56(v57, v68);
  v56(v18, v58);
  v52(v50, v54);
  return (v48)(v45, v70);
}

uint64_t sub_1000833A8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[0] = a2;
  v22[1] = a3;
  v3 = sub_1000443DC(&qword_1006CB590);
  v4 = *(v3 - 8);
  v7 = __chkstk_darwin(v3, v5, v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10, v11);
  v13 = v22 - v12;
  v14 = type metadata accessor for _RegexFactory();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16, v17);
  v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  makeFactory()();
  sub_1000472E0(&qword_1006CB598, &qword_1006CB590, &protocol conformance descriptor for Regex<A>);
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  sub_1000443DC(&qword_1006CB5B0);
  sub_1000472E0(&qword_1006CB5C8, &qword_1006CB5B0, &protocol conformance descriptor for OneOrMore<A>);
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v20 = *(v4 + 8);
  v20(v9, v3);
  v20(v13, v3);
  return (*(v15 + 8))(v19, v14);
}

uint64_t sub_100083608@<X0>(uint64_t a3@<X8>)
{
  v22[1] = a3;
  v3 = sub_1000443DC(&qword_1006CB590);
  v4 = *(v3 - 8);
  v7 = __chkstk_darwin(v3, v5, v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10, v11);
  v13 = v22 - v12;
  v14 = type metadata accessor for _RegexFactory();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16, v17);
  v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  makeFactory()();
  sub_1000472E0(&qword_1006CB598, &qword_1006CB590, &protocol conformance descriptor for Regex<A>);
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  type metadata accessor for Anchor();
  sub_1000876B4(&unk_1006CB5D0, &type metadata accessor for Anchor, &protocol conformance descriptor for Anchor);
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v20 = *(v4 + 8);
  v20(v9, v3);
  v20(v13, v3);
  return (*(v15 + 8))(v19, v14);
}

uint64_t sub_100083874(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_1000443DC(&qword_1006CB590);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008740C(sub_100087408, 0, a2, a3);
  sub_1000472E0(&qword_1006CB598, &qword_1006CB590, &protocol conformance descriptor for Regex<A>);
  dispatch thunk of RegexComponent.regex.getter();
  Regex.firstMatch(in:)();
  (*(v6 + 8))(v10, v5);
}

void sub_100083A44()
{
  sub_1000443DC(&unk_1006CB520);
  v1 = Dictionary.init(dictionaryLiteral:)();
  sub_100087A1C();
  swift_beginAccess();
  *(v0 + 112) = v1;

  sub_100083AB8();
}

void sub_100083AB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC3asd13BindingsStore_persister);
  v2 = sub_100087A1C();
  sub_1000879B4(v2, v3);

  sub_100083B8C();

  sub_1000591B0(0, &qword_1006CB580, off_10068D788);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 commitWithBindings:isa clearingExistingBindings:1];
}

void sub_100083B8C()
{
  sub_1000541C0();
  v1 = v0;
  v41 = type metadata accessor for Date();
  sub_10004EAE0();
  v3 = v2;
  __chkstk_darwin(v4, v5, v6);
  sub_10004EAF4();
  v40 = v8 - v7;
  v39 = type metadata accessor for BindingsStore.Binding(0);
  sub_10004EAE0();
  v10 = v9;
  __chkstk_darwin(v11, v12, v13);
  sub_10004EAF4();
  v42 = v15 - v14;
  v16 = v1 + 64;
  sub_100087840();
  v19 = v18 & v17;
  v21 = (v20 + 63) >> 6;
  v38 = (v3 + 16);

  v22 = 0;
  while (v19)
  {
LABEL_7:
    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v25 = v24 | (v22 << 6);
    v26 = *(*(v1 + 56) + 8 * v25);
    v27 = *(v26 + 16);
    if (v27)
    {
      v35 = v1;
      v36 = *(*(v1 + 48) + 16 * v25);
      sub_1000658C0();
      v29 = v26 + v28;
      v37 = v30;

      v43 = *(v10 + 72);
      v31 = v42;
      do
      {
        sub_100085758(v29, v31);
        v32 = sub_100083E80(v31);
        if (v32)
        {
          v33 = v32;
          (*v38)(v40, v31 + *(v39 + 20), v41);
          objc_allocWithZone(BindingRecord);

          v34 = v33;
          sub_1000858D8(v36, v37, v40, v34);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v31 = v42;
          sub_10008587C(v42);
        }

        else
        {
          sub_10008587C(v31);
        }

        v29 += v43;
        --v27;
      }

      while (v27);

      v1 = v35;
    }
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      sub_100054088();
      return;
    }

    v19 = *(v16 + 8 * v23);
    ++v22;
    if (v19)
    {
      v22 = v23;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_100083E80(uint64_t a1)
{
  sub_1000446C4(a1, v4);
  sub_1000443DC(&qword_1006CAD30);
  sub_1000591B0(0, &qword_1006CA338, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    return v3;
  }

  sub_1000446C4(a1, v4);
  sub_1000591B0(0, &qword_1006CB560, NSString_ptr);
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void sub_100083F44()
{
  sub_1000541C0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *v1;
  v13 = type metadata accessor for BindingsStore.Binding(0);
  sub_10004EAE0();
  v15 = v14;
  __chkstk_darwin(v16, v17, v18);
  sub_10004EAF4();
  v21 = v20 - v19;
  if (!*(v3 + 16))
  {
    goto LABEL_20;
  }

  v22 = sub_100065A64();
  v24 = sub_1000BFB60(v22, v23);
  if ((v25 & 1) == 0)
  {
    goto LABEL_20;
  }

  v26 = *(*(v3 + 56) + 8 * v24);
  if (v26 < 1)
  {
    goto LABEL_20;
  }

  v71 = *(*(v3 + 56) + 8 * v24);
  v72 = v5;
  if (v26 == 1 || (sub_1000879B4((v1 + 14), &v73), v27 = v1[14], , v28 = sub_100065A64(), v30 = sub_10005548C(v28, v29, v27), v31 = , !v30))
  {
    sub_1000443DC(&qword_1006CA650);
    v44 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1005CB870;
    v46 = v45 + v44;
    sub_1000446C4(v11, v46);
    v47 = *(v13 + 20);
    type metadata accessor for Date();
    sub_1000774D8();
    (*(v48 + 16))(v46 + v47, v72);
    sub_100087AB0();
    swift_isUniquelyReferenced_nonNull_native();
    v74 = v1[14];
    sub_10006AF94(v45, v9, v7);
    v1[14] = v74;
LABEL_19:
    swift_endAccess();
    v60 = sub_100065A64();
    sub_100084480(v60, v61, v71);
LABEL_20:
    sub_100054088();
    return;
  }

  v70[1] = v70;
  __chkstk_darwin(v31, v32, v33);
  v70[-2] = v11;
  v70[-1] = v12;

  v34 = sub_1000464A8(sub_100087630, &v70[-4], v30);
  v36 = v35;

  if (v36)
  {
    sub_1000446C4(v11, v21);
    v37 = *(v13 + 20);
    type metadata accessor for Date();
    sub_1000774D8();
    (*(v38 + 16))(v21 + v37, v72);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_100087968();
      sub_100062C3C(v62, v63, v64, v30, v65, v66);
      v30 = v67;
    }

    v42 = *(v30 + 16);
    v41 = *(v30 + 24);
    if (v42 >= v41 >> 1)
    {
      sub_100062C3C(v41 > 1, v42 + 1, 1, v30, v39, v40);
      v30 = v68;
    }

    *(v30 + 16) = v42 + 1;
    sub_1000658C0();
    sub_100085818(v21, v30 + v43 + *(v15 + 72) * v42);
    goto LABEL_18;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000638E8(v30, v49, v50, v51, v52, v53, v54);
    v30 = v69;
  }

  v55 = v72;
  if ((v34 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v34 < *(v30 + 16))
  {
    sub_1000658C0();
    v57 = v30 + v56 + *(v15 + 72) * v34;
    v58 = *(v13 + 20);
    type metadata accessor for Date();
    sub_1000774D8();
    (*(v59 + 24))(v57 + v58, v55);
LABEL_18:
    sub_100087AB0();
    swift_isUniquelyReferenced_nonNull_native();
    v74 = v1[14];
    sub_10006AF94(v30, v9, v7);
    v1[14] = v74;
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_100084334(uint64_t a1, uint64_t a2)
{
  sub_1000446C4(a1, v9);
  sub_1000446C4(a2, v10);
  sub_1000443DC(&qword_1006CAD30);
  sub_1000591B0(0, &qword_1006CB560, NSString_ptr);
  if (!sub_1000878EC(&v8, v9))
  {
LABEL_4:
    sub_1000591B0(0, &qword_1006CA338, NSNumber_ptr);
    if (sub_1000878EC(&v8, v9))
    {
      v3 = v8;
      if (sub_1000878EC(&v7, v10))
      {
        goto LABEL_6;
      }
    }

    sub_100076FB8(v9, &qword_1006CB570);
    v5 = 0;
    return v5 & 1;
  }

  v3 = v8;
  if (!sub_1000878EC(&v7, v10))
  {

    goto LABEL_4;
  }

LABEL_6:
  v4 = v7;
  sub_1000591B0(0, &qword_1006CB578, NSObject_ptr);
  v5 = static NSObject.== infix(_:_:)();

  sub_100044850(v10);
  sub_100044850(v9);
  return v5 & 1;
}

uint64_t sub_100084480(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  result = sub_1000879B4(v3 + 112, v27);
  v9 = *(v3 + 112);
  if (*(v9 + 16))
  {

    v10 = sub_100065A64();
    v12 = sub_1000BFB60(v10, v11);
    if ((v13 & 1) == 0)
    {
    }

    v14 = *(*(v9 + 56) + 8 * v12);

    v26[0] = v14;

    sub_10008145C(v26);

    sub_100084668(a3, v26[0]);
    v16 = v15;
    v18 = v17;
    if (v17)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v23 = swift_dynamicCastClass();
      if (!v23)
      {
        swift_unknownObjectRelease();
        v23 = _swiftEmptyArrayStorage;
      }

      v24 = v23[2];

      if (__OFSUB__(v18 >> 1, v16))
      {
        __break(1u);
      }

      else if (v24 == (v18 >> 1) - v16)
      {
        v22 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v22)
        {
LABEL_13:
          swift_beginAccess();
          swift_isUniquelyReferenced_nonNull_native();
          v25 = *(v4 + 112);
          sub_10006AF94(v22, a1, a2);
          *(v4 + 112) = v25;
          return swift_endAccess();
        }

        v22 = _swiftEmptyArrayStorage;
LABEL_12:
        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      swift_unknownObjectRelease();
    }

    v19 = sub_100047510();
    sub_100086184(v19, v20, v16, v18);
    v22 = v21;
    goto LABEL_12;
  }

  return result;
}

unint64_t sub_100084668(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_10008755C(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_100087444(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000846FC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_10008755C(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      sub_1000874EC(0, v5, a2);

      return sub_100047510();
    }
  }

  __break(1u);
  return result;
}

void sub_10008478C()
{
  sub_100087A1C();
  swift_beginAccess();
  sub_100044728(v0 + 15, v0[18]);

  sub_100081820();
  sub_100044728(v0 + 15, v0[18]);
  sub_100081500();
  sub_100084840();
  v2 = v1;

  v0[14] = v2;

  sub_100083AB8();
}

void sub_100084840()
{
  sub_1000541C0();
  v91 = v0;
  v94 = v1;
  v3 = v2;
  v89 = type metadata accessor for Date();
  sub_10004EAE0();
  __chkstk_darwin(v4, v5, v6);
  sub_10004EAF4();
  v90 = v8 - v7;
  v9 = v3 + 8;
  sub_100087840();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v88 = (v15 + 8);
  swift_bridgeObjectRetain_n();
  v16 = 0;
  v93 = v3;
LABEL_2:
  while (2)
  {
    v92 = v3;
    while (1)
    {
      if (!v12)
      {
        while (1)
        {
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v17 >= v14)
          {

            sub_100054088();
            return;
          }

          v12 = v9[v17];
          ++v16;
          if (v12)
          {
            v16 = v17;
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_59;
      }

LABEL_8:
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v19 = (v93[6] + ((v16 << 10) | (16 * v18)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v94 + 16);

      if (v22)
      {
        v23 = sub_1000878E0();
        v25 = sub_1000BFB60(v23, v24);
        if (v26)
        {
          if (*(v91 + 16))
          {
            v27 = *(*(v94 + 56) + 8 * v25);
            v28 = sub_1000878E0();
            v30 = sub_1000BFB60(v28, v29);
            if (v31)
            {
              v32 = *(*(v91 + 56) + 8 * v30);
              if (v32 >= 1)
              {
                break;
              }
            }
          }
        }
      }

      v33 = sub_1000878E0();
      v3 = v92;
      sub_1000BFB60(v33, v34);
      v36 = v35;

      if (v36)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v95 = v3;
        sub_1000443DC(&qword_1006CA8E8);
        sub_100087A70();
        sub_100087A50();

        sub_1000443DC(&unk_1006CB520);
        _NativeDictionary._delete(at:)();
        goto LABEL_2;
      }
    }

    if (__OFSUB__(0, v27))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    Date.init(timeIntervalSinceNow:)();
    v3 = v92;
    if (!v92[2])
    {
      goto LABEL_20;
    }

    v37 = sub_1000878E0();
    v39 = sub_1000BFB60(v37, v38);
    if ((v40 & 1) == 0)
    {
      goto LABEL_20;
    }

    v87 = v84;
    v42 = *(v3[7] + 8 * v39);
    __chkstk_darwin(v39, v40, v41);
    v84[-2] = v90;

    v95 = sub_10008122C(sub_100086264, &v84[-4], v42);

    sub_10008145C(&v95);

    v43 = sub_100084668(v32, v95);
    if (v45 == v46 >> 1)
    {
      v3 = v92;
LABEL_20:
      v47 = sub_1000878E0();
      sub_1000BFB60(v47, v48);
      v50 = v49;

      if (v50)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v95 = v3;
        sub_1000443DC(&qword_1006CA8E8);
        sub_100087A70();
        sub_100087A50();

        sub_1000443DC(&unk_1006CB520);
        _NativeDictionary._delete(at:)();
      }

      swift_unknownObjectRelease();
LABEL_23:
      (*v88)(v90, v89);
      continue;
    }

    break;
  }

  v84[1] = v44;
  v85 = v45;
  v87 = v43;
  v51 = v46 >> 1;
  v52 = v92;
  if ((v46 & 1) == 0)
  {
    v53 = v51 - v45;
    v54 = __OFSUB__(v51, v45);
    swift_unknownObjectRetain();
    if (!v54)
    {
      if (v53)
      {
        goto LABEL_30;
      }

LABEL_42:
      v63 = _swiftEmptyArrayStorage;
LABEL_45:
      swift_unknownObjectRelease();
LABEL_46:
      v86 = v63;
      LODWORD(v85) = swift_isUniquelyReferenced_nonNull_native();
      v95 = v52;
      v66 = sub_1000878E0();
      v68 = sub_1000BFB60(v66, v67);
      v69 = v52[2];
      LODWORD(v92) = v70;
      v71 = (v70 & 1) == 0;
      v72 = v69 + v71;
      if (!__OFADD__(v69, v71))
      {
        v73 = v68;
        sub_1000443DC(&qword_1006CA8E8);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v85, v72))
        {
          v74 = sub_1000878E0();
          v76 = sub_1000BFB60(v74, v75);
          v78 = v92;
          if ((v92 & 1) != (v77 & 1))
          {
            goto LABEL_66;
          }

          v79 = v76;
        }

        else
        {
          v79 = v73;
          v78 = v92;
        }

        if (v78)
        {

          v3 = v95;
          *(v95[7] + 8 * v79) = v86;
          swift_unknownObjectRelease();

          goto LABEL_23;
        }

        v3 = v95;
        v95[(v79 >> 6) + 8] |= 1 << v79;
        v80 = (v3[6] + 16 * v79);
        *v80 = v20;
        v80[1] = v21;
        *(v3[7] + 8 * v79) = v86;
        swift_unknownObjectRelease();
        v81 = v3[2];
        v82 = __OFADD__(v81, 1);
        v83 = v81 + 1;
        if (!v82)
        {
          v3[2] = v83;
          goto LABEL_23;
        }

LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

LABEL_60:
      __break(1u);
    }

    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v64 = swift_dynamicCastClass();
  if (!v64)
  {
    swift_unknownObjectRelease();
    v64 = _swiftEmptyArrayStorage;
  }

  v65 = v64[2];

  if (__OFSUB__(v51, v85))
  {
    goto LABEL_62;
  }

  if (v65 == v51 - v85)
  {
    v63 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v52 = v92;
    if (!v63)
    {
      goto LABEL_42;
    }

    goto LABEL_46;
  }

  v53 = v51 - v85;
  swift_unknownObjectRelease();
  v52 = v92;
  if (!v53)
  {
    goto LABEL_42;
  }

LABEL_30:
  if (v53 < 1)
  {
    v63 = _swiftEmptyArrayStorage;
    goto LABEL_44;
  }

  v86 = sub_1000443DC(&qword_1006CA650);
  v55 = *(type metadata accessor for BindingsStore.Binding(0) - 8);
  v56 = *(v55 + 72);
  v57 = v53;
  v58 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v59 = v57;
  v86 = swift_allocObject();
  v60 = j__malloc_size(v86);
  if (!v56)
  {
    goto LABEL_64;
  }

  if (v60 - v58 != 0x8000000000000000 || v56 != -1)
  {
    v62 = 2 * ((v60 - v58) / v56);
    v63 = v86;
    *(v86 + 2) = v59;
    v63[3] = v62;
    v52 = v92;
LABEL_44:
    type metadata accessor for BindingsStore.Binding(0);
    swift_arrayInitWithCopy();
    goto LABEL_45;
  }

LABEL_65:
  __break(1u);

  __break(1u);
LABEL_66:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100084FA0()
{
  v0 = sub_100087A1C();
  sub_1000879B4(v0, v1);

  sub_100084FEC();
}

void sub_100084FEC()
{
  sub_1000541C0();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for BindingsStore.Binding(0);
  v61 = *(v4 - 8);
  __chkstk_darwin(v4 - 8, v5, v6);
  sub_10004EAF4();
  v9 = v8 - v7;
  v10 = sub_1000443DC(&qword_1006CB508);
  sub_1000774D8();
  __chkstk_darwin(v11, v12, v13);
  sub_10004EAF4();
  v60 = (v15 - v14);
  v16 = sub_1000443DC(&unk_1006CB510);
  v17 = sub_100077674(v16);
  __chkstk_darwin(v17, v18, v19);
  sub_1000878C4();
  v22 = v20 - v21;
  __chkstk_darwin(v23, v24, v25);
  v27 = (&v55 - v26);
  v63 = v3;
  ODIBindingsDict.init(dictionaryLiteral:)();
  v28 = v1 + 64;
  sub_100087840();
  v31 = v30 & v29;
  v33 = (v32 + 63) >> 6;
  v57 = v1;

  v34 = 0;
  v55 = v33;
  v56 = v1 + 64;
  if (v31)
  {
LABEL_2:
    v35 = v34;
  }

  else
  {
    do
    {
LABEL_3:
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_24;
      }

      if (v35 >= v33)
      {

        sub_100054088();
        return;
      }

      v31 = *(v28 + 8 * v35);
      ++v34;
    }

    while (!v31);
  }

  v58 = v35;
  v59 = (v31 - 1) & v31;
  v36 = __clz(__rbit64(v31)) | (v35 << 6);
  v37 = *(v57 + 56);
  v38 = (*(v57 + 48) + 16 * v36);
  v39 = v38[1];
  v64 = *v38;
  v40 = *(v37 + 8 * v36);
  v41 = *(v40 + 16);

  v62 = v40;

  v42 = 0;
  while (1)
  {
    if (v42 == v41)
    {
      v43 = 1;
      v42 = v41;
    }

    else
    {
      if ((v42 & 0x8000000000000000) != 0)
      {
        goto LABEL_22;
      }

      if (v42 >= *(v62 + 16))
      {
        goto LABEL_23;
      }

      v44 = v60;
      sub_1000658C0();
      v48 = v46 + v45 + *(v47 + 72) * v42;
      v49 = *(v10 + 48);
      *v44 = v42;
      sub_100085758(v48, v44 + v49);
      sub_1000857BC(v44, v22, &qword_1006CB508);
      v43 = 0;
      ++v42;
    }

    sub_1000485F8(v22, v43, 1, v10);
    sub_1000857BC(v22, v27, &unk_1006CB510);
    if (sub_100046EA4(v27, 1, v10) == 1)
    {

      v34 = v58;
      v31 = v59;
      v33 = v55;
      v28 = v56;
      if (!v59)
      {
        goto LABEL_3;
      }

      goto LABEL_2;
    }

    v50 = *v27;
    sub_100085818(v27 + *(v10 + 48), v9);
    if (v50)
    {
      break;
    }

LABEL_17:
    sub_1000446C4(v9, &v65);
    ODIBindingsDict.subscript.setter();
    sub_10008587C(v9);
  }

  v65 = 35;
  v66 = 0xE100000000000000;
  if (!__OFADD__(v50, 1))
  {
    v67 = v50 + 1;
    v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v51);

    v53 = v65;
    v52 = v66;
    v65 = v64;
    v66 = v39;

    v54._countAndFlagsBits = v53;
    v54._object = v52;
    String.append(_:)(v54);

    goto LABEL_17;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_100085398()
{

  sub_100044850((v0 + 120));
  v1 = OBJC_IVAR____TtC3asd13BindingsStore_logger;
  type metadata accessor for Logger();
  sub_1000774D8();
  (*(v2 + 8))(&v1[v0]);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100085418()
{
  sub_100085398();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10008546C(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10008553C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 20);

    return sub_100046EA4(v9, a2, v8);
  }
}

uint64_t sub_1000855D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 20);

    return sub_1000485F8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100085678(uint64_t a1)
{
  result = sub_1000856FC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000856FC()
{
  result = qword_1006CB4D8;
  if (!qword_1006CB4D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1006CB4D8);
  }

  return result;
}

uint64_t sub_100085758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BindingsStore.Binding(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000857BC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1000443DC(a3);
  sub_1000774D8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100085818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BindingsStore.Binding(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008587C(uint64_t a1)
{
  v2 = type metadata accessor for BindingsStore.Binding(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000858D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v8 = String._bridgeToObjectiveC()();

  isa = Date._bridgeToObjectiveC()().super.isa;
  v10 = [v5 initWithKey:v8 updatedDate:isa value:a4];

  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 8))(a3, v11);
  return v10;
}

uint64_t sub_100085994(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_1000BFB60(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1000443DC(&qword_1006CB548);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v7;
    v19[1] = v6;
    *(v18[7] + 8 * v11) = v8;
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v18[2] = v22;
    ++v4;
    a2 = 1;
  }

  sub_100085EF0(v14, a2 & 1);
  v16 = sub_1000BFB60(v7, v6);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_1000443DC(&unk_1006CB550);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v24._object = 0x80000001005A4B50;
  v24._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v24);
  _print_unlocked<A, B>(_:_:)();
  v25._countAndFlagsBits = 39;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int sub_100085C58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000443DC(&qword_1006C9F48);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v34 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      sub_10009F228(0, (v33 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v35 & 1) == 0)
    {

      v23 = v22;
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    *(*(v7 + 56) + 8 * v27) = v22;
    ++*(v7 + 16);
    v5 = v34;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

Swift::Int sub_100085EF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000443DC(&qword_1006CB540);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_10009F228(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_100086184(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_1000633D0((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      type metadata accessor for BindingsStore.Binding(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

Swift::Int sub_100086284(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for BindingsStore.Binding(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = type metadata accessor for BindingsStore.Binding(0);
      sub_100077674(v7);
      sub_1000658C0();
      v9[0] = v6 + v8;
      v9[1] = v5;
      sub_1000865A4(v9, v10, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000863AC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000863AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for BindingsStore.Binding(0);
  v11 = __chkstk_darwin(v8, v9, v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v11, v14, v15);
  v18 = &v33 - v17;
  result = __chkstk_darwin(v16, v19, v20);
  v24 = &v33 - v23;
  v35 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v26 = *(v22 + 72);
    v27 = *a4 + v26 * (a3 - 1);
    v28 = -v26;
    v29 = a1 - a3;
    v40 = v25;
    v34 = v26;
    v30 = v25 + v26 * a3;
    while (2)
    {
      v38 = v27;
      v39 = a3;
      v36 = v30;
      v37 = v29;
      do
      {
        sub_100085758(v30, v24);
        sub_100085758(v27, v18);
        v31 = static Date.> infix(_:_:)();
        sub_10008587C(v18);
        result = sub_10008587C(v24);
        if ((v31 & 1) == 0)
        {
          break;
        }

        if (!v40)
        {
          __break(1u);
          return result;
        }

        sub_100085818(v30, v13);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_100085818(v13, v27);
        v27 += v28;
        v30 += v28;
      }

      while (!__CFADD__(v29++, 1));
      a3 = v39 + 1;
      v27 = v38 + v34;
      v29 = v37 - 1;
      v30 = v36 + v34;
      if (v39 + 1 != v35)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1000865A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v109 = a1;
  v123 = type metadata accessor for BindingsStore.Binding(0);
  sub_10004EAE0();
  v117 = v8;
  __chkstk_darwin(v9, v10, v11);
  sub_1000878C4();
  v113 = v12 - v13;
  sub_1000474F8();
  __chkstk_darwin(v14, v15, v16);
  v122 = &v107 - v17;
  sub_1000474F8();
  v21 = __chkstk_darwin(v18, v19, v20);
  v23 = &v107 - v22;
  __chkstk_darwin(v21, v24, v25);
  v27 = &v107 - v26;
  v119 = a3;
  v28 = *(a3 + 8);
  if (v28 < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_98:
    a3 = *v109;
    if (!*v109)
    {
      goto LABEL_139;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_100:
      v101 = (v30 + 16);
      v102 = *(v30 + 16);
      for (i = v30; v102 >= 2; v30 = i)
      {
        if (!*v119)
        {
          goto LABEL_136;
        }

        v103 = (v30 + 16 * v102);
        v30 = *v103;
        v104 = &v101[2 * v102];
        v105 = v104[1];
        sub_100086DC8(*v119 + *(v117 + 72) * *v103, *v119 + *(v117 + 72) * *v104, *v119 + *(v117 + 72) * v105, a3);
        if (v5)
        {
          break;
        }

        if (v105 < v30)
        {
          goto LABEL_124;
        }

        if (v102 - 2 >= *v101)
        {
          goto LABEL_125;
        }

        *v103 = v30;
        v103[1] = v105;
        v106 = *v101 - v102;
        if (*v101 < v102)
        {
          goto LABEL_126;
        }

        v102 = *v101 - 1;
        memmove(v104, v104 + 2, 16 * v106);
        *v101 = v102;
      }

LABEL_108:

      return;
    }

LABEL_133:
    v30 = sub_1000871E4(v30);
    goto LABEL_100;
  }

  v108 = a4;
  v29 = 0;
  v30 = _swiftEmptyArrayStorage;
  v114 = &v107 - v26;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v110 = v29;
    if (v29 + 1 < v28)
    {
      v33 = *v119;
      v34 = *(v117 + 72);
      i = v28;
      v121 = v29 + 1;
      a3 = v29;
      v35 = v33 + v34 * v32;
      v36 = v33;
      v116 = v33;
      sub_100085758(v35, v27);
      sub_100085758(v36 + v34 * a3, v23);
      v37 = static Date.> infix(_:_:)();
      sub_10008587C(v23);
      sub_10008587C(v27);
      v38 = i;
      v39 = a3 + 2;
      v118 = v34;
      v40 = v116 + v34 * (a3 + 2);
      while (1)
      {
        v41 = v39;
        if (++v121 >= v38)
        {
          break;
        }

        sub_100085758(v40, v27);
        sub_100085758(v35, v23);
        a3 = static Date.> infix(_:_:)() & 1;
        sub_10008587C(v23);
        sub_10008587C(v27);
        v40 += v118;
        v35 += v118;
        v39 = v41 + 1;
        v38 = i;
        if ((v37 & 1) != a3)
        {
          if (v37)
          {
            goto LABEL_8;
          }

LABEL_28:
          v32 = v121;
          v31 = v110;
          goto LABEL_29;
        }
      }

      v121 = v38;
      if ((v37 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_8:
      v32 = v121;
      v31 = v110;
      if (v121 < v110)
      {
        goto LABEL_130;
      }

      if (v110 < v121)
      {
        i = v30;
        v107 = v5;
        if (v38 >= v41)
        {
          v42 = v41;
        }

        else
        {
          v42 = v38;
        }

        v43 = v110;
        v44 = v118 * (v42 - 1);
        v45 = v118 * v42;
        v46 = v110 * v118;
        do
        {
          if (v43 != --v32)
          {
            a3 = *v119;
            if (!*v119)
            {
              goto LABEL_137;
            }

            sub_100085818(a3 + v46, v113);
            v47 = v46 < v44 || a3 + v46 >= a3 + v45;
            if (v47)
            {
              sub_100087A08();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v46 != v44)
            {
              sub_100087A08();
              swift_arrayInitWithTakeBackToFront();
            }

            sub_100085818(v113, a3 + v44);
          }

          ++v43;
          v44 -= v118;
          v45 -= v118;
          v46 += v118;
        }

        while (v43 < v32);
        v5 = v107;
        v30 = i;
        goto LABEL_28;
      }
    }

LABEL_29:
    v48 = v119[1];
    if (v32 < v48)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_129;
      }

      if (v32 - v31 < v108)
      {
        break;
      }
    }

LABEL_45:
    if (v32 < v31)
    {
      goto LABEL_128;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100087968();
      sub_1000629B8();
      v30 = v99;
    }

    a3 = *(v30 + 16);
    v59 = a3 + 1;
    if (a3 >= *(v30 + 24) >> 1)
    {
      sub_1000629B8();
      v30 = v100;
    }

    *(v30 + 16) = v59;
    v60 = v30 + 32;
    v61 = (v30 + 32 + 16 * a3);
    v62 = v121;
    *v61 = v110;
    v61[1] = v62;
    v118 = *v109;
    if (!v118)
    {
      goto LABEL_138;
    }

    if (a3)
    {
      i = v30;
      while (1)
      {
        v63 = v59 - 1;
        v64 = (v60 + 16 * (v59 - 1));
        v65 = (v30 + 16 * v59);
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v66 = *(v30 + 32);
          v67 = *(v30 + 40);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_66:
          if (v69)
          {
            goto LABEL_115;
          }

          v81 = *v65;
          v80 = v65[1];
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_118;
          }

          v85 = v64[1];
          v86 = v85 - *v64;
          if (__OFSUB__(v85, *v64))
          {
            goto LABEL_121;
          }

          if (__OFADD__(v83, v86))
          {
            goto LABEL_123;
          }

          if (v83 + v86 >= v68)
          {
            if (v68 < v86)
            {
              v63 = v59 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        if (v59 < 2)
        {
          goto LABEL_117;
        }

        v88 = *v65;
        v87 = v65[1];
        v76 = __OFSUB__(v87, v88);
        v83 = v87 - v88;
        v84 = v76;
LABEL_81:
        if (v84)
        {
          goto LABEL_120;
        }

        v90 = *v64;
        v89 = v64[1];
        v76 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v76)
        {
          goto LABEL_122;
        }

        if (v91 < v83)
        {
          goto LABEL_95;
        }

LABEL_88:
        if (v63 - 1 >= v59)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*v119)
        {
          goto LABEL_135;
        }

        v95 = (v60 + 16 * (v63 - 1));
        v96 = *v95;
        a3 = v63;
        v97 = (v60 + 16 * v63);
        v30 = v97[1];
        sub_100086DC8(*v119 + *(v117 + 72) * *v95, *v119 + *(v117 + 72) * *v97, *v119 + *(v117 + 72) * v30, v118);
        if (v5)
        {
          goto LABEL_108;
        }

        if (v30 < v96)
        {
          goto LABEL_110;
        }

        v5 = *(i + 16);
        if (a3 > v5)
        {
          goto LABEL_111;
        }

        *v95 = v96;
        v95[1] = v30;
        if (a3 >= v5)
        {
          goto LABEL_112;
        }

        v59 = v5 - 1;
        memmove(v97, v97 + 2, 16 * (v5 - 1 - a3));
        v30 = i;
        *(i + 16) = v5 - 1;
        v98 = v5 > 2;
        v5 = 0;
        v27 = v114;
        if (!v98)
        {
          goto LABEL_95;
        }
      }

      v70 = v60 + 16 * v59;
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_113;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_114;
      }

      v77 = v65[1];
      v78 = v77 - *v65;
      if (__OFSUB__(v77, *v65))
      {
        goto LABEL_116;
      }

      v76 = __OFADD__(v68, v78);
      v79 = v68 + v78;
      if (v76)
      {
        goto LABEL_119;
      }

      if (v79 >= v73)
      {
        v93 = *v64;
        v92 = v64[1];
        v76 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v76)
        {
          goto LABEL_127;
        }

        if (v68 < v94)
        {
          v63 = v59 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_66;
    }

LABEL_95:
    v28 = v119[1];
    v29 = v121;
    if (v121 >= v28)
    {
      goto LABEL_98;
    }
  }

  v49 = v31 + v108;
  if (__OFADD__(v31, v108))
  {
    goto LABEL_131;
  }

  if (v49 >= v48)
  {
    v49 = v119[1];
  }

  if (v49 < v31)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v32 == v49)
  {
    goto LABEL_45;
  }

  i = v30;
  v107 = v5;
  a3 = *v119;
  v50 = *(v117 + 72);
  v51 = *v119 + v50 * (v32 - 1);
  v52 = -v50;
  v53 = v31 - v32;
  v111 = v50;
  v112 = v49;
  v54 = a3 + v32 * v50;
LABEL_38:
  v121 = v32;
  v115 = v54;
  v116 = v53;
  v118 = v51;
  v55 = v51;
  while (1)
  {
    sub_100085758(v54, v27);
    sub_100085758(v55, v23);
    v56 = static Date.> infix(_:_:)();
    sub_10008587C(v23);
    sub_10008587C(v27);
    if ((v56 & 1) == 0)
    {
LABEL_43:
      v32 = v121 + 1;
      v51 = v118 + v111;
      v53 = v116 - 1;
      v54 = v115 + v111;
      if (v121 + 1 == v112)
      {
        v32 = v112;
        v5 = v107;
        v30 = i;
        v31 = v110;
        goto LABEL_45;
      }

      goto LABEL_38;
    }

    if (!a3)
    {
      break;
    }

    v57 = v122;
    sub_100085818(v54, v122);
    swift_arrayInitWithTakeFrontToBack();
    sub_100085818(v57, v55);
    v55 += v52;
    v54 += v52;
    v47 = __CFADD__(v53++, 1);
    if (v47)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

uint64_t sub_100086DC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v55 = type metadata accessor for BindingsStore.Binding(0);
  v11 = __chkstk_darwin(v55, v9, v10);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11, v14, v15);
  v18 = v49 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v21 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v21)
  {
    goto LABEL_61;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_62;
  }

  v58 = a1;
  v57 = a4;
  v24 = v22 / v20;
  v49[1] = v4;
  if ((a2 - a1) / v20 >= v22 / v20)
  {
    sub_100063638(a2, v22 / v20, a4);
    v30 = a4 + v24 * v20;
    v31 = -v20;
    v32 = v30;
    v33 = a3;
    v52 = v31;
    v53 = a4;
    v51 = a1;
LABEL_37:
    v34 = a2 + v31;
    v35 = v33;
    v49[0] = v32;
    v36 = v31;
    v54 = a2 + v31;
    while (1)
    {
      if (v30 <= a4)
      {
        v58 = a2;
        v56 = v32;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v50 = v32;
      v37 = v35 + v36;
      v38 = v30 + v36;
      v39 = v34;
      v40 = v30;
      sub_100085758(v30 + v36, v18);
      sub_100085758(v39, v13);
      v41 = sub_100087AD0();
      v42 = v13;
      v43 = v41;
      v44 = v42;
      sub_10008587C(v42);
      sub_10008587C(v18);
      if (v43)
      {
        v49[0] = v40;
        v46 = v35 < a2 || v37 >= a2;
        v33 = v35 + v36;
        if (v46)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v32 = v50;
          a1 = v51;
          v13 = v44;
          v31 = v52;
          a4 = v53;
          v30 = v49[0];
        }

        else
        {
          a1 = v51;
          v32 = v50;
          v21 = v35 == a2;
          a2 = v54;
          v13 = v44;
          v31 = v52;
          a4 = v53;
          v30 = v49[0];
          if (!v21)
          {
            a2 = v54;
            sub_1000878D4();
            v48 = v47;
            swift_arrayInitWithTakeBackToFront();
            v30 = v49[0];
            v32 = v48;
          }
        }

        goto LABEL_37;
      }

      if (v35 < v40 || v37 >= v40)
      {
        sub_1000878D4();
        swift_arrayInitWithTakeFrontToBack();
        v35 += v36;
        v30 = v38;
        v32 = v38;
        v13 = v44;
        v36 = v52;
        a4 = v53;
        v34 = v54;
        a1 = v51;
      }

      else
      {
        v32 = v38;
        v21 = v40 == v35;
        v35 += v36;
        v30 = v38;
        v13 = v44;
        v36 = v52;
        a4 = v53;
        v34 = v54;
        a1 = v51;
        if (!v21)
        {
          sub_1000878D4();
          swift_arrayInitWithTakeBackToFront();
          v34 = v54;
          v35 = v37;
          v30 = v38;
          v32 = v38;
        }
      }
    }

    v58 = a2;
    v56 = v49[0];
  }

  else
  {
    sub_100063638(a1, (a2 - a1) / v20, a4);
    v25 = a4 + (a2 - a1) / v20 * v20;
    v56 = v25;
    while (a4 < v25 && a2 < a3)
    {
      sub_100085758(a2, v18);
      sub_100085758(a4, v13);
      v27 = sub_100087AD0();
      sub_10008587C(v13);
      sub_10008587C(v18);
      if (v27)
      {
        if (a1 < a2 || a1 >= a2 + v20)
        {
          sub_1000878D4();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          sub_1000878D4();
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v20;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v20)
        {
          sub_1000878D4();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          sub_1000878D4();
          swift_arrayInitWithTakeBackToFront();
        }

        v57 = a4 + v20;
        a4 += v20;
      }

      a1 += v20;
      v58 = a1;
    }
  }

LABEL_59:
  sub_100087210(&v58, &v57, &v56, type metadata accessor for BindingsStore.Binding);
  return 1;
}

void sub_100087210(unint64_t *a1, unint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  sub_1000774D8();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  v10 = v5 + (v6 - v5) / v8 * v8;
  if (v4 < v5 || v4 >= v10)
  {
    sub_100087908();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    sub_100087908();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_1000872E4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_100087310(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000443DC(&unk_1006CB530);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

unint64_t sub_100087444(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    type metadata accessor for BindingsStore.Binding(0);
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1000874EC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10008755C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1000875BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100087624(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_100087660()
{
  result = qword_1006CB5B8;
  if (!qword_1006CB5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CB5B8);
  }

  return result;
}

uint64_t sub_1000876B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000876FC()
{
  result = qword_1006CB5F0;
  if (!qword_1006CB5F0)
  {
    sub_1000591B0(255, &qword_1006CB578, NSObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CB5F0);
  }

  return result;
}

uint64_t sub_100087764(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1000443DC(a3);
  sub_1000774D8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000877C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006CB5E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008785C()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1000878A4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000878EC(uint64_t a1, uint64_t a2)
{

  return swift_dynamicCast();
}

uint64_t sub_100087930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15)
{

  return sub_100087624(v15, a2, a15 & 1);
}

char *sub_100087990()
{

  return sub_1000BDEC4(0, v0, 0);
}

uint64_t sub_1000879B4(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_100087A50()
{
}

BOOL sub_100087A70()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

char *sub_100087A90()
{
  if (!v1 & v0)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return sub_1000BDEC4(v4, v2, 1);
}

uint64_t sub_100087AB0()
{

  return swift_beginAccess();
}

uint64_t sub_100087AD0()
{

  return static Date.> infix(_:_:)();
}

BOOL sub_100087AF0(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_100076FB8(v5, &qword_1006CA130);
  return v3 != 0;
}

BOOL sub_100087B9C(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  sub_100076FB8(v5, &qword_1006CA130);
  return v3 != 0;
}

uint64_t sub_100087C48()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CB600);
  sub_100046E6C(v0, qword_1006CB600);
  return Logger.init(subsystem:category:)();
}

id sub_100087CD8()
{
  result = [objc_allocWithZone(type metadata accessor for RavioliManagerObjC()) init];
  static RavioliManagerObjC.shared = result;
  return result;
}

uint64_t *RavioliManagerObjC.shared.unsafeMutableAddressor()
{
  if (qword_1006C97E8 != -1)
  {
    sub_100097EE4(&qword_1006C97E8);
  }

  return &static RavioliManagerObjC.shared;
}

id static RavioliManagerObjC.shared.getter()
{
  if (qword_1006C97E8 != -1)
  {
    sub_100097EE4(&qword_1006C97E8);
  }

  v1 = static RavioliManagerObjC.shared;

  return v1;
}

id sub_100087DBC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1000443DC(&qword_1006C9E20);
  __chkstk_darwin(v3 - 8, v4, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000443DC(&qword_1006CB720);
  __chkstk_darwin(v8 - 8, v9, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WalletMonitor();
  swift_allocObject();
  sub_10007D09C();
  sub_10007CBE4();

  sub_1000443DC(&qword_1006CB700);
  v13 = swift_allocObject();
  v14 = sub_100096B60(v12, 10000000000, v13);
  *&v1[OBJC_IVAR____TtC3asd18RavioliManagerObjC_manager] = v14;
  v19.receiver = v1;
  v19.super_class = ObjectType;

  v15 = objc_msgSendSuper2(&v19, "init");
  v16 = type metadata accessor for TaskPriority();
  sub_1000485F8(v7, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v14;
  sub_10006F27C(0, 0, v7, &unk_1005CD508, v17);

  return v15;
}

uint64_t RavioliManager.__allocating_init(trigger:updateCoalesceTimeNanoSeconds:fetcher:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  RavioliManager.init(trigger:updateCoalesceTimeNanoSeconds:fetcher:)(a1, a2, a3);
  return v6;
}

uint64_t sub_100087FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_100088074;

  return sub_100091AC0();
}

uint64_t sub_100088074()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  return _swift_task_switch(sub_100088174, v2, 0);
}

uint64_t sub_100088174()
{
  sub_1000657D4();
  sub_10008A5DC();
  sub_10006574C();

  return v0();
}

void RavioliManagerObjC.fetchRavioliDataFromStore(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000541C0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for UUID();
  sub_10004EAE0();
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v31, v32, v33);
  v34 = sub_1000443DC(&qword_1006C9E20);
  v35 = sub_100077674(v34);
  __chkstk_darwin(v35, v36, v37);
  sub_10004EAF4();
  v40 = v39 - v38;
  type metadata accessor for TaskPriority();
  sub_100097CFC();
  sub_1000485F8(v41, v42, v43, v44);
  v45 = sub_100097AFC();
  v46(v45);
  v47 = (*(v28 + 80) + 40) & ~*(v28 + 80);
  v48 = swift_allocObject();
  v49 = sub_100098218(v48);
  (*(v28 + 32))(&v49[v47], &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  v50 = (v48 + ((v30 + v47 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v50 = v25;
  v50[1] = v23;

  v51 = sub_100097A18();
  sub_10006F27C(v51, v52, v40, v53, v48);

  sub_100054088();
}

uint64_t sub_10008839C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1000883C0, a4, 0);
}

uint64_t sub_1000883C0()
{
  sub_1000657D4();
  *(v0 + 48) = sub_10008CDA4();
  *(v0 + 56) = v1;
  sub_1000658F8();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100088424()
{
  sub_1000657EC();
  v0 = sub_1000488FC();
  v1(v0);
  v2 = sub_1000488FC();
  sub_10004489C(v2, v3);
  sub_10006574C();

  return v4();
}

void sub_1000885CC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v5 = isa;
  (*(a3 + 16))(a3);
}

uint64_t sub_100088638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_1000772D0(sub_100088658, 0);
}

uint64_t sub_100088658()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC3asd18RavioliManagerObjC_manager);
  *(v0 + 48) = v1;
  return sub_1000772D0(sub_100088680, v1);
}

uint64_t sub_100088680()
{
  sub_1000657D4();
  sub_10008F314(v0[2], v0[3], v0[4]);
  sub_10006574C();

  return v1();
}

void RavioliManagerObjC.requestRavioliFetchWithProbabiliticThrottle(bagID:notificationId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000541C0();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for UUID();
  sub_10004EAE0();
  v31 = v30;
  v33 = *(v32 + 64);
  __chkstk_darwin(v34, v35, v36);
  v37 = sub_1000443DC(&qword_1006C9E20);
  v38 = sub_100077674(v37);
  __chkstk_darwin(v38, v39, v40);
  sub_10004EAF4();
  v43 = v42 - v41;
  type metadata accessor for TaskPriority();
  sub_100097CFC();
  sub_1000485F8(v44, v45, v46, v47);
  (*(v31 + 16))(&a9 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v29);
  v48 = (*(v31 + 80) + 40) & ~*(v31 + 80);
  v49 = swift_allocObject();
  v50 = sub_100098218(v49);
  (*(v31 + 32))(&v50[v48], &a9 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
  v51 = (v49 + ((v33 + v48 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v51 = v26;
  v51[1] = v24;
  v52 = v20;

  v53 = sub_100097A18();
  sub_10006F27C(v53, v54, v43, v55, v49);

  sub_100054088();
}

uint64_t sub_100088884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  return _swift_task_switch(sub_1000888A8, 0, 0);
}

uint64_t sub_1000888A8()
{
  sub_1000657EC();
  if (qword_1006C9818 != -1)
  {
    v1 = sub_1000878A4(&qword_1006C9818);
  }

  sub_100097F28(v1, v0 + 112);
  v2 = static ASDConfigurationManager.shared;
  sub_10009851C();

  sub_1000981C8();
  if (v3 || (v4 = *(v0 + 44), v5 = *(v0 + 48), sub_100076FB8(v0 + 16, &qword_1006CAC08), (v5 & 1) != 0) || (sub_10009CFC4(), v4 >= v6))
  {
    v19 = swift_task_alloc();
    *(v0 + 168) = v19;
    *v19 = v0;
    v19[1] = sub_100088A74;
    v20 = sub_100097E58(*(v0 + 144));

    return sub_100088638(v20, v21, v22);
  }

  else
  {
    if (qword_1006C97E0 != -1)
    {
      sub_1000978B8();
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100097D98(v7, qword_1006CB600);
    v8 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    v9 = sub_100097B0C();
    if (os_log_type_enabled(v9, v10))
    {
      sub_100097B40();
      v11 = swift_slowAlloc();
      sub_100077908(v11);
      sub_100077394();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      sub_100097AB8();
    }

    sub_10006574C();

    return v17();
  }
}

uint64_t sub_100088A74()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  sub_10006574C();

  return v3();
}

void RavioliManagerObjC.triggerRavioliFetch(bagID:notificationId:completion:)()
{
  sub_1000541C0();
  v38 = v1;
  v39 = v2;
  v4 = v3;
  v37 = v5;
  v7 = v6;
  v8 = type metadata accessor for UUID();
  sub_10004EAE0();
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v13, v14, v15);
  v16 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000443DC(&qword_1006C9E20);
  v18 = sub_100077674(v17);
  __chkstk_darwin(v18, v19, v20);
  sub_10004EAF4();
  sub_10004ED04();
  type metadata accessor for TaskPriority();
  sub_100097CFC();
  sub_1000485F8(v21, v22, v23, v24);
  (*(v10 + 16))(v16, v7, v8);
  v25 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v26 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = sub_100098218(v27);
  (*(v10 + 32))(&v28[v25], v16, v8);
  v29 = (v27 + v26);
  v30 = v38;
  *v29 = v37;
  v29[1] = v4;
  v31 = (v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8));
  v32 = v39;
  *v31 = v30;
  v31[1] = v32;

  v33 = sub_100097A18();
  sub_10006F27C(v33, v34, v0, v35, v27);

  sub_100054088();
}

uint64_t sub_100088E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return _swift_task_switch(sub_100088E70, a4, 0);
}

uint64_t sub_100088E70()
{
  sub_1000657D4();
  sub_10008F55C(v0[3], v0[4], v0[5], 1);
  sub_1000658F8();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100088ED8()
{
  sub_1000657D4();
  (*(v0 + 48))();
  sub_10006574C();

  return v1();
}

uint64_t sub_100089200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v15;
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_1000892C0;

  return sub_10008DA84(a5, a6, a7);
}

uint64_t sub_1000892C0()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *v1;
  sub_1000655F4();
  *v3 = v2;
  *(v4 + 40) = v0;

  sub_1000658F8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000893C0()
{
  sub_1000657D4();
  (*(v0 + 16))(0);
  sub_10006574C();

  return v1();
}

uint64_t sub_100089420()
{
  sub_1000657EC();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  swift_errorRetain();
  v2(v1);

  sub_10006574C();

  return v3();
}

void sub_1000894D8()
{
  sub_1000541C0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for UUID();
  sub_10004EAE0();
  v10 = v9;
  __chkstk_darwin(v11, v12, v13);
  sub_10004EAF4();
  v16 = v15 - v14;
  v17 = _Block_copy(v5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  sub_100098238();
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  v22 = v7;
  v1(v16, v18, v20, v3, v21);

  (*(v10 + 8))(v16, v8);
  sub_100054088();
}

void sub_100089618(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_100089690()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1006C97E0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100046E6C(v3, qword_1006CB600);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "DefinedRavioliNotificationIds should not be initialised", v6, 2u);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_1000898C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return sub_1000772D0(sub_1000898E0, 0);
}

uint64_t sub_1000898E0()
{
  sub_1000657EC();
  v1 = v0[4];
  v2 = [objc_opt_self() ephemeralSessionConfiguration];
  v0[5] = v2;
  v3 = [objc_allocWithZone(AKAppleIDSession) init];
  [v2 set_appleIDContext:v3];

  v4 = [objc_opt_self() sessionWithConfiguration:v2];
  v0[6] = v4;
  type metadata accessor for RavioliFetcher(0);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_100089A38;
  v6 = sub_100097E58(v0[2]);

  return sub_1000D2B68(v6, v4, v7, v8, v9, v1);
}

uint64_t sub_100089A38()
{
  sub_100068324();
  v3 = v2;
  v5 = v4;
  sub_1000657F8();
  v7 = v6;
  sub_10006564C();
  *v8 = v7;
  v9 = *v1;
  sub_1000655F4();
  *v10 = v9;
  v7[8] = v0;

  if (!v0)
  {
    v7[9] = v3;
    v7[10] = v5;
  }

  sub_1000658F8();
  sub_10006ED0C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100089B4C()
{
  sub_1000657D4();
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);

  return v2(v3, v4);
}

uint64_t sub_100089BB4()
{
  sub_1000657D4();
  v1 = *(v0 + 40);

  sub_10006574C();

  return v2();
}

uint64_t sub_100089C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100089CC0;

  return sub_1000898C0(a1, a2, a3);
}

uint64_t sub_100089CC0()
{
  sub_1000657EC();
  sub_1000657F8();
  v2 = *v1;
  sub_1000655F4();
  *v3 = v2;

  v5 = *(v2 + 8);
  if (!v0)
  {
    v4 = sub_1000488FC();
  }

  return v5(v4);
}

char *RavioliManager.init(trigger:updateCoalesceTimeNanoSeconds:fetcher:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *v3;
  swift_defaultActor_initialize();
  sub_100097C48();
  v9 = *(v8 + 112);
  type metadata accessor for UUID();
  sub_1000443DC(&qword_1006C9870);
  sub_1000978CC();
  sub_100097640(v10, v11, &protocol conformance descriptor for UUID);
  *&v3[v9] = sub_10009832C();
  sub_100097C48();
  *&v3[*(v12 + 128)] = 0;
  sub_100097C48();
  v14 = *(v13 + 136);
  *&v3[v14] = sub_10009832C();
  sub_100097C48();
  *&v3[*(v15 + 144)] = a2;
  sub_100097C48();
  v17 = *(v7 + 80);
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v3[*(v16 + 104)], a1, v17);
  sub_100097C48();
  sub_1000446C4(a3, &v3[*(v19 + 152)]);
  v23 = type metadata accessor for ASAnalyticsManager();
  v24 = &off_1006935C8;
  *&v22 = swift_allocObject();
  sub_100044850(a3);
  (*(v18 + 8))(a1, v17);
  sub_100097C48();
  sub_100046D90(&v22, &v3[*(v20 + 160)]);
  return v3;
}

uint64_t sub_100089FC8(uint64_t a1)
{
  sub_100098070();
  sub_10006ECA0();
  v1 = sub_100097F44();
  sub_1000474C0(v1);
  sub_100097CB4();
  sub_100097AA4();
  v2 = swift_task_alloc();
  v3 = sub_100097AC4(v2);
  *v3 = v4;
  v3[1] = sub_100065570;
  sub_1000978E4();
  sub_1000980C8();

  return sub_10008839C(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10008A0AC()
{
  type metadata accessor for UUID();
  sub_10004EAE0();
  sub_100097C94();
  swift_unknownObjectRelease();

  v1 = sub_100097C84();
  v2(v1);

  v3 = sub_1000980BC();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10008A170(uint64_t a1)
{
  sub_100098070();
  sub_10006ECA0();
  v1 = sub_100097F44();
  sub_1000474C0(v1);
  sub_100097CB4();
  sub_100097AA4();
  v2 = swift_task_alloc();
  v3 = sub_100097AC4(v2);
  *v3 = v4;
  v3[1] = sub_100065570;
  sub_1000978E4();
  sub_1000980C8();

  return sub_100088884(v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10008A254()
{
  sub_100097F98();
  v0 = type metadata accessor for UUID();
  sub_1000474C0(v0);
  sub_100097AA4();
  v1 = swift_task_alloc();
  v2 = sub_100097AC4(v1);
  *v2 = v3;
  v2[1] = sub_100065570;
  sub_1000978E4();
  sub_100097DB0();

  return sub_100088E40(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10008A378()
{
  type metadata accessor for UUID();
  sub_10004EAE0();
  sub_100097C94();
  swift_unknownObjectRelease();

  v0 = sub_100097C84();
  v1(v0);

  v2 = sub_1000980BC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10008A458()
{
  sub_100097F98();
  v0 = type metadata accessor for UUID();
  sub_1000474C0(v0);
  sub_100097AA4();
  v1 = swift_task_alloc();
  v2 = sub_100097AC4(v1);
  *v2 = v3;
  v2[1] = sub_100065570;
  sub_1000978E4();
  sub_100097DB0();

  return sub_100089200(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10008A578()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10008A5DC()
{
  v1 = v0;
  v2 = sub_1000443DC(&qword_1006CB720);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5, v6);
  v7 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000443DC(&qword_1006C9E20);
  __chkstk_darwin(v8 - 8, v9, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006C97E0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100046E6C(v13, qword_1006CB600);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "start Calzone Monitor", v16, 2u);
  }

  v17 = *(*v0 + 128);
  if (*(v0 + v17))
  {
    v28 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v28, v18, "Tried to start already running Calzone monitor - ignored", v19, 2u);
    }

    v20 = v28;
  }

  else
  {
    v21 = *(*v0 + 104);
    v22 = type metadata accessor for TaskPriority();
    sub_1000485F8(v12, 1, 1, v22);
    v23 = swift_allocObject();
    swift_weakInit();
    (*(v3 + 16))(&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + v21, v2);
    v24 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v25 = (v4 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    (*(v3 + 32))(v26 + v24, v7, v2);
    *(v26 + v25) = v23;
    *(v1 + v17) = sub_10006F27C(0, 0, v12, &unk_1005CD520, v26);
  }
}

Swift::Void __swiftcall RavioliManager.startWalletMonitor()()
{
  sub_1000541C0();
  v2 = v0;
  v39 = *v0;
  isa = v39[10].isa;
  sub_100097900();
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v8, v9, v10);
  v12 = &v38 - v11;
  v13 = sub_1000443DC(&qword_1006C9E20);
  v14 = sub_100077674(v13);
  __chkstk_darwin(v14, v15, v16);
  sub_10004EAF4();
  sub_10004ED04();
  if (qword_1006C97E0 != -1)
  {
    sub_1000978B8();
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100097D98(v17, qword_1006CB600);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    sub_100097B40();
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "start Calzone Monitor", v20, 2u);
    sub_100097AB8();
  }

  v21 = *(*v0 + 128);
  if (*(v0 + v21))
  {
    v39 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v22))
    {
      sub_100097B40();
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v39, v22, "Tried to start already running Calzone monitor - ignored", v23, 2u);
      sub_100097AB8();
    }

    sub_100054088();
  }

  else
  {
    v26 = *(*v0 + 104);
    type metadata accessor for TaskPriority();
    sub_100097CFC();
    sub_1000485F8(v27, v28, v29, v30);
    sub_100098238();
    v31 = swift_allocObject();
    swift_weakInit();
    (*(v5 + 16))(v12, v2 + v26, isa);
    v32 = (*(v5 + 80) + 48) & ~*(v5 + 80);
    v33 = (v7 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    v34[2].isa = 0;
    v34[3].isa = 0;
    v34[4].isa = isa;
    v34[5].isa = v39[11].isa;
    (*(v5 + 32))(v34 + v32, v12, isa);
    *(&v34->isa + v33) = v31;
    v35 = sub_100097A18();
    *(v2 + v21) = sub_10006F27C(v35, v36, v1, v37, v34);

    sub_100054088();
  }
}

uint64_t sub_10008ACE4()
{
  swift_weakDestroy();
  sub_100098238();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10008AD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  sub_1000443DC(&qword_1006CA4A0);
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  v7 = sub_1000443DC(&qword_1006CB720);
  v5[32] = v7;
  v5[33] = *(v7 - 8);
  v5[34] = swift_task_alloc();
  v8 = sub_1000443DC(&qword_1006CB728);
  v5[35] = v8;
  v5[36] = *(v8 - 8);
  v5[37] = swift_task_alloc();

  return _swift_task_switch(sub_10008AEC8, 0, 0);
}

uint64_t sub_10008AEC8()
{
  sub_1000657EC();
  v1 = v0[27];
  (*(v0[33] + 16))(v0[34], v0[26], v0[32]);
  sub_1000472E0(&qword_1006CB730, &qword_1006CB720, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  sub_1000879B4(v1 + 16, (v0 + 14));
  sub_100097A28(&qword_1006CB738, &qword_1006CB728);
  swift_task_alloc();
  sub_10007743C();
  v0[38] = v2;
  *v2 = v3;
  v4 = sub_100097950(v2);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4);
}

uint64_t sub_10008AFC8()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  sub_1000658F8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10008B654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100098024();
  sub_100097F98();
  if (!_getErrorEmbeddedNSError<A>(_:)())
  {
    swift_allocError();
  }

  (*(v12[36] + 8))(v12[37], v12[35]);
  sub_100098288();
  if (!v13)
  {
    sub_1000978B8();
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100097D98(v14, qword_1006CB600);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    sub_100097B58();
    v17 = swift_slowAlloc();
    sub_100097B4C();
    a9 = swift_slowAlloc();
    sub_1000983AC(4.8149e-34);
    v18 = Error.localizedDescription.getter();
    v19 = sub_100052F7C(v18);

    *(v17 + 4) = v19;
    sub_10009838C(&_mh_execute_header, v20, v21, "Error in Calzone monitoring: %s");
    sub_100044850(a9);
    sub_100097AB8();

    sub_100097AB8();
  }

  else
  {
  }

  sub_100098288();
  if (!v13)
  {
    sub_1000978B8();
    swift_once();
  }

  sub_100097D98(v14, qword_1006CB600);
  v22 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  v23 = sub_100097B0C();
  if (os_log_type_enabled(v23, v24))
  {
    sub_100097B40();
    v25 = swift_slowAlloc();
    sub_100077908(v25);
    sub_100077394();
    _os_log_impl(v26, v27, v28, v29, v30, 2u);
    sub_100097AB8();
  }

  sub_1000983EC();

  sub_10006574C();
  sub_100097DB0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_10008B8A0()
{
  sub_1000657D4();
  sub_1000980EC();
  sub_10008F55C(v0, v1, v2, v3);
  sub_1000658F8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10008BBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[28] = a6;
  v7[29] = a7;
  v7[26] = a4;
  v7[27] = a5;
  sub_1000443DC(&qword_1006CA4A0);
  v7[30] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v7[31] = v9;
  v7[32] = *(v9 - 8);
  v7[33] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[34] = AssociatedTypeWitness;
  v7[35] = *(AssociatedTypeWitness - 8);
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = *(a6 - 8);
  v7[39] = swift_task_alloc();
  v11 = swift_getAssociatedTypeWitness();
  v7[40] = v11;
  v7[41] = *(v11 - 8);
  v7[42] = swift_task_alloc();

  return _swift_task_switch(sub_10008BDF0, 0, 0);
}

uint64_t sub_10008BDF0()
{
  sub_100068324();
  v1 = v0[27];
  (*(v0[38] + 16))(v0[39], v0[26], v0[28]);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  sub_1000879B4(v1 + 16, (v0 + 14));
  v0[43] = swift_getAssociatedConformanceWitness();
  swift_task_alloc();
  sub_10007743C();
  v0[44] = v2;
  *v2 = v3;
  sub_100097910(v2);
  sub_10006ED0C();

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4);
}

uint64_t sub_10008BED8()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  sub_1000658F8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10008C584()
{
  sub_1000657D4();
  sub_1000980EC();
  sub_10008FA20();
  sub_1000658F8();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_10008C894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100098024();
  sub_100097F98();
  v13 = *(v12[35] + 32);
  v13(v12[36], v12[37], v12[34]);
  sub_100087908();
  swift_getAssociatedConformanceWitness();
  sub_100097AFC();
  v14 = _getErrorEmbeddedNSError<A>(_:)();
  v15 = v12[36];
  if (v14)
  {
    (*(v12[35] + 8))(v12[36], v12[34]);
  }

  else
  {
    v16 = v12[34];
    swift_allocError();
    v13(v17, v15, v16);
  }

  (*(v12[41] + 8))(v12[42], v12[40]);
  sub_100098288();
  if (!v18)
  {
    sub_1000978B8();
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100097D98(v19, qword_1006CB600);
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    sub_100097B58();
    v22 = swift_slowAlloc();
    sub_100097B4C();
    a9 = swift_slowAlloc();
    sub_1000983AC(4.8149e-34);
    v23 = Error.localizedDescription.getter();
    v24 = sub_100052F7C(v23);

    *(v22 + 4) = v24;
    sub_10009838C(&_mh_execute_header, v25, v26, "Error in Calzone monitoring: %s");
    sub_100044850(a9);
    sub_100097AB8();

    sub_100097AB8();
  }

  else
  {
  }

  sub_100098288();
  if (!v18)
  {
    sub_1000978B8();
    swift_once();
  }

  sub_100097D98(v19, qword_1006CB600);
  v27 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  v28 = sub_100097B0C();
  if (os_log_type_enabled(v28, v29))
  {
    sub_100097B40();
    v30 = swift_slowAlloc();
    sub_100077908(v30);
    sub_100077394();
    _os_log_impl(v31, v32, v33, v34, v35, 2u);
    sub_100097AB8();
  }

  sub_100098104();

  sub_10006574C();
  sub_100097DB0();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

uint64_t sub_10008CB64()
{
  sub_100097900();
  sub_100097C94();
  swift_unknownObjectRelease();
  v0 = sub_100097C84();
  v1(v0);

  v2 = sub_1000980BC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10008CC18(uint64_t a1)
{
  sub_100098070();
  sub_10006ECA0();
  sub_100097900();
  sub_100097CB4();
  v1 = swift_task_alloc();
  v2 = sub_10006EB38(v1);
  *v2 = v3;
  v2[1] = sub_100065570;
  sub_1000980C8();

  return sub_10008BBA4(v4, v5, v6, v7, v8, v9, v10);
}

Swift::Void __swiftcall RavioliManager.stopWalletMonitor()()
{
  sub_100097C48();
  v2 = *(v1 + 128);
  if (*(v0 + v2))
  {

    Task.cancel()();
  }

  *(v0 + v2) = 0;
}

uint64_t sub_10008CDA4()
{
  v0 = sub_10008D1A8();
  v2 = v1;
  if (v1 >> 60 != 15)
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_10005CB58();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    if (v22 == 1 && (, v3 = Data.init(base64Encoded:options:)(), v5 = v4, , v5 >> 60 != 15))
    {

      v20 = Data.init(base64Encoded:options:)();
      v15 = v14;

      if (v15 >> 60 == 15)
      {
      }

      else
      {
        v19 = Data.init(base64Encoded:options:)();
        v17 = v16;

        if (v17 >> 60 != 15)
        {
          v18 = sub_10005CC00(v19, v17, v3, v5, v20, v15);
          sub_10004489C(v19, v17);
          sub_10004489C(v20, v15);
          sub_10004489C(v3, v5);
          sub_10004489C(v0, v2);
          return v18;
        }

        sub_10004489C(v20, v15);
      }

      sub_10004489C(v3, v5);
    }

    else
    {
    }

    sub_10005CBAC();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
    if (qword_1006C97E0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100046E6C(v7, qword_1006CB600);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v10 = 136315138;
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v12 = sub_100052F7C(v11);

      *(v10 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error verifying stored Ravioli: %s", v10, 0xCu);
      sub_100044850(v21);

      sub_10004489C(v0, v2);
    }

    else
    {
      sub_10004489C(v0, v2);
    }

    return 0;
  }

  return v0;
}

uint64_t sub_10008D1A8()
{
  v0 = [objc_opt_self() sharedInstance];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v2 = [v0 f55HW2T4cquHq2nn:isa];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10008D250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10008D274, v3, 0);
}

uint64_t sub_10008D274()
{
  sub_100068324();
  v1 = v0[5];
  v0[6] = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = 0;
  sub_100097C48();
  sub_100044728((v1 + *(v3 + 152)), *(v1 + *(v3 + 152) + 24));
  sub_100097FA4();
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_10008D3C4;
  v6 = sub_100097E58(v0[2]);

  return v8(v6);
}

uint64_t sub_10008D3C4()
{
  sub_100068324();
  sub_1000981D4();
  sub_1000655F4();
  *v5 = v4;
  *v5 = *v2;
  v4[9] = v1;

  v6 = v4[5];
  if (v1)
  {
    v7 = sub_1000978B0;
  }

  else
  {
    v4[10] = v0;
    v4[11] = v3;
    v7 = sub_100097894;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10008D4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_1000772D0(sub_10008D50C, v3);
}

uint64_t sub_10008D50C()
{
  sub_100068324();
  v1 = v0[5];
  v0[6] = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = 0;
  sub_100097C48();
  sub_100044728((v1 + *(v3 + 152)), *(v1 + *(v3 + 152) + 24));
  sub_100097FA4();
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_10008D65C;
  v6 = sub_100097E58(v0[2]);

  return v8(v6);
}

uint64_t sub_10008D65C()
{
  sub_100068324();
  sub_1000981D4();
  sub_1000655F4();
  *v5 = v4;
  *v5 = *v2;
  v4[9] = v1;

  v6 = v4[5];
  if (v1)
  {
    v7 = sub_10008D800;
  }

  else
  {
    v4[10] = v0;
    v4[11] = v3;
    v7 = sub_10008D784;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10008D784()
{
  sub_1000657D4();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  *(v2 + 16) = 1;
  sub_10008D86C(v1, v3, v2);

  v4 = v0[1];
  v6 = v0[10];
  v5 = v0[11];

  return v4(v5, v6);
}

uint64_t sub_10008D800()
{
  sub_1000657D4();
  sub_10008D86C(*(v0 + 48), *(v0 + 40), *(v0 + 56));

  sub_10006574C();

  return v1();
}

void sub_10008D86C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ASAnalyticsEvent(0);
  sub_1000774D8();
  __chkstk_darwin(v6, v7, v8);
  sub_10004EAF4();
  v11 = v10 - v9;
  v12 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (v12 < a1)
  {
    __break(1u);
  }

  else
  {
    v3 = (v12 - a1) / 1000000000.0;
    sub_1000879B4(a3 + 16, v22);
    *v11 = *(a3 + 16);
    *(v11 + 8) = v3;
    sub_1000981E8();
    swift_storeEnumTagMultiPayload();
    sub_1000C4148(v11);
    sub_100097E64();
    if (qword_1006C97E0 == -1)
    {
      goto LABEL_3;
    }
  }

  sub_1000978B8();
  swift_once();
LABEL_3:
  v13 = type metadata accessor for Logger();
  sub_100097D98(v13, qword_1006CB600);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    sub_100097B4C();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315394;
    sub_1000879B4(a3 + 16, v20);
    if (*(a3 + 16))
    {
      v18 = 0x6564656563637573;
    }

    else
    {
      v18 = 0x44454C494146;
    }

    v19 = sub_100052F7C(v18);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v14, v15, "Ravioli request %s taking %f seconds", v16, 0x16u);
    sub_100044850(v17);
    sub_1000979A4();

    sub_100097AB8();
  }
}

uint64_t sub_10008DA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10008DAA8, v3, 0);
}

uint64_t sub_10008DAA8()
{
  sub_1000657EC();
  if (qword_1006C97E0 != -1)
  {
    sub_1000978B8();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100097D98(v1, qword_1006CB600);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = sub_100097B0C();
  if (os_log_type_enabled(v3, v4))
  {
    sub_100097B40();
    v5 = swift_slowAlloc();
    sub_100077908(v5);
    sub_100077394();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    sub_100097AB8();
  }

  v11 = swift_task_alloc();
  *(v0 + 48) = v11;
  *v11 = v0;
  v11[1] = sub_10008DBCC;
  v12 = sub_100097E58(*(v0 + 16));

  return sub_10008D250(v12, v13, v14);
}

uint64_t sub_10008DBCC()
{
  sub_100068324();
  v3 = v2;
  v5 = v4;
  sub_1000657F8();
  v7 = v6;
  sub_10006564C();
  *v8 = v7;
  v9 = *v1;
  sub_1000655F4();
  *v10 = v9;
  v7[7] = v0;

  if (v0)
  {
    sub_10006ED0C();

    __asm { BRAA            X1, X16 }
  }

  v7[8] = v3;
  v7[9] = v5;
  sub_10006ED0C();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_10008DD0C()
{
  sub_100068324();
  v2 = v0[8];
  v1 = v0[9];
  sub_10008E0AC(v1, v2, v0[2]);
  sub_1000448B0(v1, v2);
  sub_10006574C();

  return v3();
}

uint64_t sub_10008DDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_1000772D0(sub_10008DDC4, v3);
}

uint64_t sub_10008DDC4()
{
  sub_1000657EC();
  if (qword_1006C97E0 != -1)
  {
    sub_1000978B8();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100097D98(v1, qword_1006CB600);
  v2 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v3 = sub_100097B0C();
  if (os_log_type_enabled(v3, v4))
  {
    sub_100097B40();
    v5 = swift_slowAlloc();
    sub_100077908(v5);
    sub_100077394();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    sub_100097AB8();
  }

  v11 = swift_task_alloc();
  *(v0 + 48) = v11;
  *v11 = v0;
  v11[1] = sub_10008DEE8;
  v12 = sub_100097E58(*(v0 + 16));

  return sub_10008D4EC(v12, v13, v14);
}

uint64_t sub_10008DEE8()
{
  sub_100068324();
  v3 = v2;
  v5 = v4;
  sub_1000657F8();
  v7 = v6;
  sub_10006564C();
  *v8 = v7;
  v9 = *v1;
  sub_1000655F4();
  *v10 = v9;
  v7[7] = v0;

  if (v0)
  {
    sub_10006ED0C();

    __asm { BRAA            X1, X16 }
  }

  v7[8] = v3;
  v7[9] = v5;
  sub_10006ED0C();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_10008E028()
{
  sub_1000657EC();
  v0 = sub_100087908();
  sub_10008EA5C(v0, v1, v2);
  v3 = sub_100087908();
  sub_1000448B0(v3, v4);
  sub_10006574C();

  return v5();
}

void sub_10008E0AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v7 - 8, v8, v9);
  v79 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11, v13, v14);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10005CB58();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {

LABEL_14:
    if (qword_1006C97E0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100046E6C(v25, qword_1006CB600);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v78 = a1;
      v30 = a2;
      v31 = v29;
      v80[0] = v29;
      *v28 = 136315138;
      swift_getErrorValue();
      v32 = Error.localizedDescription.getter();
      v33 = sub_100052F7C(v32);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Error verifying or storing Ravioli: %s", v28, 0xCu);
      sub_100044850(v31);
      a2 = v30;
      a1 = v78;
    }

    sub_100046D38(a1, a2);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    sub_1000448B0(a1, a2);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v80[0] = v37;
      *v36 = 136315138;
      static String.Encoding.utf8.getter();
      v38 = String.init(data:encoding:)();
      if (!v39)
      {
        v38 = 0x3866747520746F4ELL;
      }

      v40 = sub_100052F7C(v38);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Ravioli data was: %s", v36, 0xCu);
      sub_100044850(v37);
    }

    swift_willThrow();
    return;
  }

  v78 = a3;

  if (v80[6] != 1)
  {

LABEL_13:
    sub_10005CBAC();
    swift_allocError();
    *v24 = 3;
    swift_willThrow();
    goto LABEL_14;
  }

  v77 = a2;
  v73 = v12;
  v74 = v80[0];

  v75 = Data.init(base64Encoded:options:)();
  v18 = v17;

  v76 = v18;
  if (v18 >> 60 == 15)
  {

LABEL_12:
    a2 = v77;
    goto LABEL_13;
  }

  v19 = Data.init(base64Encoded:options:)();
  v21 = v20;

  if (v21 >> 60 == 15)
  {

LABEL_11:
    sub_10004489C(v75, v76);
    goto LABEL_12;
  }

  v72 = v19;
  v74 = Data.init(base64Encoded:options:)();
  v23 = v22;

  if (v23 >> 60 == 15)
  {
    sub_10004489C(v72, v21);
    goto LABEL_11;
  }

  v41 = v75;
  v42 = v21;
  v43 = v76;
  v44 = v72;
  v45 = sub_10005CC00(v74, v23, v75, v76, v72, v42);
  sub_1000448B0(v45, v46);
  sub_10004489C(v74, v23);
  sub_10004489C(v44, v42);
  sub_10004489C(v41, v43);
  if (qword_1006C97E0 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  v79 = sub_100046E6C(v47, qword_1006CB600);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  v50 = os_log_type_enabled(v48, v49);
  v51 = v73;
  if (v50)
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "Verified response", v52, 2u);
  }

  v53 = [objc_opt_self() sharedInstance];
  v54 = v78;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v56 = Data._bridgeToObjectiveC()().super.isa;
  v80[0] = 0;
  [v53 c94QZ147F1UWY71l:isa jkjlhN0UgO78kW6q:v56 error:v80];

  v57 = v80[0];
  if (v80[0])
  {
    (*(v51 + 16))(v16, v54, v11);
    v58 = v57;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v76 = v58;
      v62 = v61;
      v78 = swift_slowAlloc();
      v80[0] = v78;
      *v62 = 136315394;
      sub_100097640(&qword_1006CB708, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v77) = v60;
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      (*(v51 + 8))(v16, v11);
      v64 = sub_100052F7C(v63);

      *(v62 + 4) = v64;
      *(v62 + 12) = 2080;
      v65 = v76;
      v66 = [v76 localizedDescription];
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      v68 = sub_100052F7C(v67);

      *(v62 + 14) = v68;
      _os_log_impl(&_mh_execute_header, v59, v77, "Error storing Ravioli data for bag: %s. Error: %s ", v62, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v51 + 8))(v16, v11);
    }
  }

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&_mh_execute_header, v69, v70, "Stored Ravioli", v71, 2u);
  }
}

void sub_10008EA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for String.Encoding();
  v6 = sub_100077674(v5);
  __chkstk_darwin(v6, v7, v8);
  sub_10004EAF4();
  v9 = type metadata accessor for UUID();
  sub_10004EAE0();
  v11 = v10;
  __chkstk_darwin(v12, v13, v14);
  sub_10004EAF4();
  v17 = v16 - v15;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10005CB58();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {

LABEL_13:
    if (qword_1006C97E0 != -1)
    {
      sub_1000978B8();
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100046E6C(v26, qword_1006CB600);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      sub_100097B58();
      v29 = swift_slowAlloc();
      sub_100097B4C();
      v30 = swift_slowAlloc();
      v95[0] = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v31 = Error.localizedDescription.getter();
      v32 = sub_100052F7C(v31);

      *(v29 + 4) = v32;
      sub_100098058();
      _os_log_impl(v33, v34, v35, v36, v37, v38);
      sub_100044850(v30);
      sub_100097AB8();

      sub_100097AB8();
    }

    v39 = sub_1000657E0();
    sub_100046D38(v39, v40);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    v43 = sub_1000657E0();
    sub_1000448B0(v43, v44);
    if (os_log_type_enabled(v41, v42))
    {
      sub_100097B58();
      v45 = swift_slowAlloc();
      sub_100097B4C();
      v46 = swift_slowAlloc();
      v95[0] = v46;
      *v45 = 136315138;
      static String.Encoding.utf8.getter();
      sub_1000657E0();
      v47 = String.init(data:encoding:)();
      if (!v48)
      {
        v47 = 0x3866747520746F4ELL;
      }

      v49 = sub_100052F7C(v47);

      *(v45 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v41, v42, "Ravioli data was: %s", v45, 0xCu);
      sub_100044850(v46);
      sub_100097AB8();

      sub_100097AB8();
    }

    swift_willThrow();
    return;
  }

  v94 = a3;

  if (v95[6] != 1 || (v88 = v11, , sub_1000981E8(), v90 = Data.init(base64Encoded:options:)(), v19 = v18, , v91 = v19, v19 >> 60 == 15))
  {

LABEL_12:
    sub_10005CBAC();
    swift_allocError();
    *v25 = 3;
    swift_willThrow();
    goto LABEL_13;
  }

  v20 = Data.init(base64Encoded:options:)();
  v22 = v21;

  if (v22 >> 60 == 15)
  {

LABEL_11:
    sub_10004489C(v90, v91);
    goto LABEL_12;
  }

  v87 = v20;
  v89 = Data.init(base64Encoded:options:)();
  v24 = v23;

  if (v24 >> 60 == 15)
  {
    sub_10004489C(v87, v22);
    goto LABEL_11;
  }

  v50 = sub_10005CC00(v89, v24, v90, v91, v87, v22);
  sub_1000448B0(v50, v51);
  sub_100098140();
  if (qword_1006C97E0 != -1)
  {
    sub_1000978B8();
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_100046E6C(v52, qword_1006CB600);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  v55 = sub_100097B0C();
  if (os_log_type_enabled(v55, v56))
  {
    sub_100097B40();
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "Verified response", v57, 2u);
    sub_100097AB8();
  }

  v58 = [objc_opt_self() sharedInstance];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  sub_1000657E0();
  v60 = Data._bridgeToObjectiveC()().super.isa;
  v95[0] = 0;
  [v58 c94QZ147F1UWY71l:isa jkjlhN0UgO78kW6q:v60 error:v95];

  v61 = v95[0];
  if (v95[0])
  {
    (*(v88 + 16))(v17, v94, v9);
    v62 = v61;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v92 = v62;
      v65 = swift_slowAlloc();
      v95[0] = swift_slowAlloc();
      *v65 = 136315394;
      sub_1000978CC();
      sub_100097640(v66, v67, &protocol conformance descriptor for UUID);
      v93 = v64;
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = sub_100053FF8();
      v70(v69);
      v71 = sub_100052F7C(v68);

      *(v65 + 4) = v71;
      *(v65 + 12) = 2080;
      v72 = [v92 localizedDescription];
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      v74 = sub_100052F7C(v73);

      *(v65 + 14) = v74;
      _os_log_impl(&_mh_execute_header, v63, v93, "Error storing Ravioli data for bag: %s. Error: %s ", v65, 0x16u);
      swift_arrayDestroy();
      sub_100097AB8();

      sub_100097AB8();
    }

    else
    {

      v75 = sub_100053FF8();
      v76(v75);
    }
  }

  v77 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v78 = sub_100097B0C();
  if (os_log_type_enabled(v78, v79))
  {
    sub_100097B40();
    v80 = swift_slowAlloc();
    sub_100077640(v80);
    sub_100097C74();
    _os_log_impl(v81, v82, v83, v84, v85, v86);
    sub_1000979A4();
  }
}

void sub_10008F314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2 == 0xD000000000000011 && 0x80000001005A4B70 == a3;
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (qword_1006C9818 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static ASDConfigurationManager.shared;
  sub_1000B05E4(v20);

  if (v21 != 1 && (v23 = v22, sub_1000961E8(&v23, v19), sub_100076FB8(v20, &qword_1006CAC08), (v8 = v23) != 0) && (v9 = UUID.uuidString.getter(), sub_1000555DC(v9, v10, v8), v12 = v11, v14 = v13, sub_100076FB8(&v23, &qword_1006CB6F0), , v12) && (, (v14 & 0xFF00) != 0x200) && (v14 & 0x100) == 0)
  {
    if (qword_1006C97E0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100046E6C(v15, qword_1006CB600);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Lazy fetch is disabled.", v18, 2u);
    }
  }

  else
  {
LABEL_18:
    sub_10008F55C(a1, a2, a3, 1);
  }
}

uint64_t sub_10008F55C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v39 = a4;
  v41 = a2;
  v40 = type metadata accessor for UUID();
  v8 = *(v40 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v40, v10, v11);
  v12 = sub_1000443DC(&qword_1006C9E20);
  __chkstk_darwin(v12 - 8, v13, v14);
  v16 = &v38[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(*v4 + 112);
  swift_beginAccess();
  v42 = v17;
  v18 = *(v5 + v17);

  v19 = a1;
  v20 = sub_1000554DC(a1, v18);

  v43 = a3;
  if (v20)
  {
    if (qword_1006C97E0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100046E6C(v21, qword_1006CB600);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Cancelling running Ravioli fetch", v24, 2u);
    }

    Task.cancel()();
    swift_beginAccess();
    sub_100096374(a1);
    swift_endAccess();

    a3 = v43;
  }

  if (v39)
  {
    sub_100092C54(a1, v41, a3);
  }

  v25 = *(*v5 + 136);
  swift_beginAccess();
  v26 = *(v5 + v25);

  v27 = sub_1000554DC(v19, v26);

  if (v27)
  {
    Task.cancel()();
  }

  swift_beginAccess();
  sub_100096374(v19);
  swift_endAccess();

  v28 = type metadata accessor for TaskPriority();
  sub_1000485F8(v16, 1, 1, v28);
  v29 = v19;
  v30 = v40;
  (*(v8 + 16))(&v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v29, v40);
  v31 = sub_1000472E0(&qword_1006CB6F8, &qword_1006CB700, &protocol conformance descriptor for RavioliManager<A>);
  v32 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v33 = swift_allocObject();
  *(v33 + 2) = v5;
  *(v33 + 3) = v31;
  *(v33 + 4) = v5;
  (*(v8 + 32))(&v33[v32], &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v30);
  v34 = &v33[(v9 + v32 + 7) & 0xFFFFFFFFFFFFFFF8];
  v35 = v43;
  *v34 = v41;
  *(v34 + 1) = v35;
  swift_retain_n();

  sub_10006F27C(0, 0, v16, &unk_1005CD4B8, v33);
  v36 = v42;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v44 = *(v5 + v36);
  sub_10006B2D4();
  *(v5 + v36) = v44;
  return swift_endAccess();
}

void sub_10008FA20()
{
  sub_1000541C0();
  v2 = v0;
  LODWORD(v59) = v3;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v60 = v8;
  v61 = v9;
  v10 = type metadata accessor for UUID();
  sub_10004EAE0();
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v15, v16, v17);
  v18 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000443DC(&qword_1006C9E20);
  v20 = sub_100077674(v19);
  __chkstk_darwin(v20, v21, v22);
  sub_10004EAF4();
  v25 = v24 - v23;
  v26 = *(v8 + 112);
  sub_1000879B4(v2 + v26, &v67);
  v62 = v26;

  v27 = sub_1000981E8();
  sub_1000554DC(v27, v28);
  sub_100098198();
  v63 = v5;
  if (v1)
  {
    if (qword_1006C97E0 != -1)
    {
      sub_1000978B8();
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100097D98(v29, qword_1006CB600);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    v32 = sub_100097B0C();
    if (os_log_type_enabled(v32, v33))
    {
      sub_100097B40();
      v34 = swift_slowAlloc();
      v58 = v14;
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Cancelling running Ravioli fetch", v34, 2u);
      v18 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = v58;
      sub_100097AB8();
    }

    Task.cancel()();
    sub_10006BED4(v2 + v62, v66);
    sub_100096374(v7);
    swift_endAccess();
  }

  if (v59)
  {
    sub_100092DC4();
  }

  v35 = *(*v2 + 136);
  sub_1000879B4(v2 + v35, v66);
  v36 = *(v2 + v35);

  v37 = sub_1000554DC(v7, v36);

  if (v37)
  {
    Task.cancel()();
  }

  sub_10006BED4(v2 + v35, v65);
  sub_100096374(v7);
  swift_endAccess();

  type metadata accessor for TaskPriority();
  sub_100097CFC();
  sub_1000485F8(v38, v39, v40, v41);
  (*(v12 + 16))(v18, v7, v10);
  v42 = *(v60 + 80);
  v43 = *(v60 + 88);
  v45 = type metadata accessor for RavioliManager(255, v42, v43, v44);
  v46 = sub_100097E8C(v45);
  v47 = *(v12 + 80);
  v59 = v25;
  v60 = v7;
  v48 = v10;
  v49 = (v47 + 56) & ~v47;
  v50 = (v14 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 2) = v2;
  *(v51 + 3) = v46;
  *(v51 + 4) = v42;
  *(v51 + 5) = v43;
  *(v51 + 6) = v2;
  (*(v12 + 32))(&v51[v49], v18, v48);
  v52 = &v51[v50];
  v53 = v63;
  *v52 = v61;
  *(v52 + 1) = v53;
  swift_retain_n();

  v54 = sub_100097A18();
  sub_10006F27C(v54, v55, v59, v56, v51);
  v57 = v62;
  sub_10006BED4(v2 + v62, v65);
  swift_isUniquelyReferenced_nonNull_native();
  v64 = *(v2 + v57);
  sub_10006B2D4();
  *(v2 + v57) = v64;
  swift_endAccess();
  sub_100054088();
}

uint64_t sub_10008FE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v9 = type metadata accessor for UUID();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v10 = type metadata accessor for CancellationError();
  v7[15] = v10;
  v7[16] = *(v10 - 8);
  v7[17] = swift_task_alloc();

  return _swift_task_switch(sub_10008FFC8, a4, 0);
}

uint64_t sub_10008FFC8()
{
  sub_1000657EC();
  if (qword_1006C97E0 != -1)
  {
    sub_1000978B8();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[18] = sub_100097D98(v1, qword_1006CB600);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[7];
    sub_100097B58();
    *swift_slowAlloc() = 134217984;
    sub_100098294();
    *(v6 + 4) = *(v4 + *(v5 + 144)) / 1000000000.0;
    sub_100077394();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    sub_100097AB8();
  }

  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v13 = sub_100097CA4(v12);

  return static Task<>.sleep(nanoseconds:)(v13);
}

uint64_t sub_100090154()
{
  sub_1000657D4();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v5 = *v1;
  sub_1000655F4();
  *v6 = v5;
  v3[20] = v0;

  if (v0)
  {
    v7 = v3[7];

    return _swift_task_switch(sub_1000903C0, v7, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v3[21] = v8;
    *v8 = v5;
    v8[1] = sub_1000902AC;
    v9 = sub_100097E58(v3[8]);

    return sub_10008DA84(v9, v10, v11);
  }
}

uint64_t sub_1000902AC()
{
  sub_1000657EC();
  sub_100098064();
  sub_10006564C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v0;

  sub_1000980B0();
  sub_1000980A4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100090654()
{
  sub_1000657D4();
  sub_100092F30(*(v0 + 64));
  sub_100098128();

  sub_10006574C();

  return v1();
}

uint64_t sub_100090954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v9 = type metadata accessor for UUID();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v10 = type metadata accessor for CancellationError();
  v7[15] = v10;
  v7[16] = *(v10 - 8);
  v7[17] = swift_task_alloc();

  return _swift_task_switch(sub_100090A84, a4, 0);
}

uint64_t sub_100090A84()
{
  sub_1000657EC();
  if (qword_1006C97E0 != -1)
  {
    sub_1000978B8();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[18] = sub_100097D98(v1, qword_1006CB600);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[7];
    sub_100097B58();
    *swift_slowAlloc() = 134217984;
    sub_100098294();
    *(v6 + 4) = *(v4 + *(v5 + 144)) / 1000000000.0;
    sub_100077394();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    sub_100097AB8();
  }

  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v13 = sub_100097CA4(v12);

  return static Task<>.sleep(nanoseconds:)(v13);
}

uint64_t sub_100090C10()
{
  sub_1000657D4();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v5 = *v1;
  sub_1000655F4();
  *v6 = v5;
  v3[20] = v0;

  if (v0)
  {
    v7 = v3[7];

    return _swift_task_switch(sub_100090EE8, v7, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v3[21] = v8;
    *v8 = v5;
    v8[1] = sub_100090D68;
    v9 = sub_100097E58(v3[8]);

    return sub_10008DDA4(v9, v10, v11);
  }
}

uint64_t sub_100090D68()
{
  sub_1000657EC();
  sub_100098064();
  sub_10006564C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v0;

  sub_1000980B0();
  sub_1000980A4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100090E7C()
{
  sub_1000657D4();
  sub_100093384();
  sub_100098128();

  sub_10006574C();

  return v0();
}

void sub_10009192C()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  [v1 removeObjectForKey:v2];

  v3 = [v0 standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  [v3 removeObjectForKey:v4];

  v5 = [v0 standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  [v5 removeObjectForKey:v6];

  v7 = [v0 standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  [v7 removeObjectForKey:v8];
}

uint64_t sub_100091AC0()
{
  v1[2] = v0;
  v1[3] = *(type metadata accessor for ServerJSONFetchRetryState(0) - 8);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  sub_1000443DC(&qword_1006CB740);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100091C14, v0, 0);
}

uint64_t sub_100091C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100098024();
  sub_100097F98();
  sub_100091410(v14);
  v15 = [objc_opt_self() standardUserDefaults];
  v16 = sub_1000518E0();
  *(v12 + 80) = v16;

  v17 = *(v16 + 32);
  *(v12 + 112) = v17;
  v18 = -1;
  if (-(-1 << v17) < 64)
  {
    v18 = ~(-1 << -(-1 << v17));
  }

  if ((v18 & *(v16 + 64)) != 0)
  {
    v19 = 0;
LABEL_8:
    v23 = sub_100097C04();
    v24(v23);
    sub_1000982EC();
    v25 = sub_1000443DC(&qword_1006CB748);
    v26 = *(v25 + 48);
    v27 = sub_100087908();
    v28(v27);
    sub_10006B82C(v13, v15 + v26);
    sub_10009820C();
    sub_1000485F8(v29, v30, v31, v25);
    v32 = a9;
    v21 = v19;
  }

  else
  {
    v20 = 0;
    v21 = ((63 - (-1 << v17)) >> 6) - 1;
    while (v21 != v20)
    {
      v19 = v20 + 1;
      if (*(*(v12 + 80) + 8 * v20++ + 72))
      {
        goto LABEL_8;
      }
    }

    sub_1000443DC(&qword_1006CB748);
    sub_100097CFC();
    sub_1000485F8(v52, v53, v54, v55);
    v32 = 0;
  }

  *(v12 + 88) = v32;
  *(v12 + 96) = v21;
  v33 = *(v12 + 72);
  sub_100097044(*(v12 + 64), v33);
  v34 = sub_1000443DC(&qword_1006CB748);
  sub_100097DF8(v33);
  if (v35)
  {

    sub_10006574C();
    sub_100097DB0();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
  }

  else
  {
    v45 = *(v12 + 72);
    v46 = *(v12 + 32);
    v47 = *(v34 + 48);
    (*(*(v12 + 48) + 32))(*(v12 + 56), v45, *(v12 + 40));
    sub_10006B82C(v45 + v47, v46);
    v48 = swift_task_alloc();
    *(v12 + 104) = v48;
    *v48 = v12;
    sub_100097BD0(v48);
    sub_100097DB0();

    return sub_1000921AC(v49, v50);
  }
}

uint64_t sub_100091E78()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  return _swift_task_switch(sub_100091F78, v2, 0);
}

uint64_t sub_100091F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100098024();
  sub_100097F98();
  v14 = *(v12 + 56);
  sub_100097D38();
  sub_1000970AC(v15, v16);
  v17 = sub_100087908();
  result = v18(v17);
  v20 = *(v12 + 96);
  if (*(v12 + 88))
  {
LABEL_6:
    v22 = sub_100097C04();
    v23(v22);
    sub_1000982EC();
    v24 = sub_1000443DC(&qword_1006CB748);
    v25 = *(v24 + 48);
    v26 = sub_100087908();
    v27(v26);
    sub_10006B82C(v13, v14 + v25);
    sub_10009820C();
    sub_1000485F8(v28, v29, v30, v24);
    v31 = a9;
LABEL_7:
    *(v12 + 88) = v31;
    *(v12 + 96) = v20;
    v32 = *(v12 + 72);
    sub_100097044(*(v12 + 64), v32);
    v33 = sub_1000443DC(&qword_1006CB748);
    v34 = sub_100046EA4(v32, 1, v33);
    v35 = *(v12 + 32);
    if (v34 == 1)
    {

      sub_10006574C();
      sub_100097DB0();

      return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
    }

    else
    {
      v44 = *(v12 + 72);
      v45 = *(v33 + 48);
      (*(*(v12 + 48) + 32))(*(v12 + 56), v44, *(v12 + 40));
      sub_10006B82C(v44 + v45, v35);
      v46 = swift_task_alloc();
      *(v12 + 104) = v46;
      *v46 = v12;
      sub_100097BD0(v46);
      sub_100097DB0();

      return sub_1000921AC(v47, v48);
    }
  }

  else
  {
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= (((1 << *(v12 + 112)) + 63) >> 6))
      {
        sub_1000443DC(&qword_1006CB748);
        sub_100097CFC();
        sub_1000485F8(v50, v51, v52, v53);
        v31 = 0;
        goto LABEL_7;
      }

      ++v20;
      if (*(*(v12 + 80) + 8 * v21 + 64))
      {
        v20 = v21;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000921AC(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = type metadata accessor for ServerJSONFetchRetryState(0);
  v3[23] = v4;
  v5 = *(v4 - 8);
  v3[24] = v5;
  v3[25] = *(v5 + 64);
  v3[26] = swift_task_alloc();
  sub_1000443DC(&qword_1006C9E20);
  v3[27] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[28] = v6;
  v7 = *(v6 - 8);
  v3[29] = v7;
  v3[30] = *(v7 + 64);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v3[33] = v8;
  v3[34] = *(v8 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();

  return _swift_task_switch(sub_100092380, v2, 0);
}

uint64_t sub_100092380(uint64_t a1)
{
  if (qword_1006C9818 != -1)
  {
    a1 = sub_1000878A4(&qword_1006C9818);
  }

  sub_100097F28(a1, v1 + 112);
  v3 = static ASDConfigurationManager.shared;
  sub_10009851C();

  sub_1000981C8();
  if (v4 || (v5 = *(v1 + 16), v6 = *(v1 + 40), v7 = *(v1 + 24), sub_100076FB8(v1 + 16, &qword_1006CAC08), (v7 & 1) != 0) || (v6 & 1) != 0)
  {
    if (qword_1006C97E0 != -1)
    {
      sub_1000978B8();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100097D98(v8, qword_1006CB600);
    v9 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v10 = sub_100097B0C();
    if (os_log_type_enabled(v10, v11))
    {
      sub_100097B40();
      v12 = swift_slowAlloc();
      sub_100077908(v12);
      sub_100077394();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      sub_100097AB8();
    }

    goto LABEL_11;
  }

  v20 = *(v1 + 168);
  v21 = *v20;
  (*(*(v1 + 272) + 16))(*(v1 + 288), &v20[*(*(v1 + 184) + 20)], *(v1 + 264));
  if (v21 >= v5)
  {
    if (qword_1006C97E0 == -1)
    {
LABEL_21:
      v50 = *(v1 + 256);
      v51 = *(v1 + 224);
      v52 = *(v1 + 232);
      v53 = *(v1 + 160);
      v54 = type metadata accessor for Logger();
      sub_100046E6C(v54, qword_1006CB600);
      (*(v52 + 16))(v50, v53, v51);
      v55 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      sub_100097DCC();
      v57 = os_log_type_enabled(v55, v56);
      v58 = *(v1 + 256);
      if (v57)
      {
        sub_100097B58();
        v59 = swift_slowAlloc();
        sub_100097B4C();
        swift_slowAlloc();
        *v59 = 136315138;
        sub_1000978CC();
        v62 = sub_100097640(v60, v61, &protocol conformance descriptor for UUID);
        sub_100098180(v62);
        v63 = sub_10009798C();
        v64(v63);
        sub_100052F7C(v2);
        sub_1000981B0();
        *(v59 + 4) = v58;
        sub_100097C54(&_mh_execute_header, v65, v66, "Ravioli retry limit reached for %s");
        sub_1000979D4();
        sub_1000979A4();
      }

      else
      {

        v67 = sub_1000979C4();
        v68(v67);
      }

      sub_100092F30(*(v1 + 160));
      v69 = sub_100065A4C();
      v70(v69);
      goto LABEL_11;
    }

LABEL_26:
    sub_1000978B8();
    swift_once();
    goto LABEL_21;
  }

  v22 = *(v1 + 272);
  Date.addingTimeInterval(_:)();
  Date.timeIntervalSinceNow.getter();
  v24 = v23;
  v25 = v23;
  v26 = *(v22 + 8);
  v27 = sub_100065A4C();
  result = v26(v27);
  v28 = 0.0;
  if (v24 > 0.0)
  {
    v28 = v24;
    if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_26;
    }
  }

  if (v28 <= -1.0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v76 = v26;
  if (v28 >= 1.84467441e19)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v74 = *(v1 + 264);
  v75 = *(v1 + 288);
  v29 = *(v1 + 248);
  v31 = *(v1 + 224);
  v30 = *(v1 + 232);
  v32 = *(v1 + 208);
  v33 = *(v1 + 192);
  v71 = *(v1 + 240);
  v35 = *(v1 + 168);
  v34 = *(v1 + 176);
  v36 = *(v1 + 160);
  v73 = *(v1 + 216);
  v72 = v28;
  type metadata accessor for TaskPriority();
  sub_100097CFC();
  sub_1000485F8(v37, v38, v39, v40);
  (*(v30 + 16))(v29, v36, v31);
  sub_10005909C(v35, v32);
  v41 = sub_1000472E0(&qword_1006CB6F8, &qword_1006CB700, &protocol conformance descriptor for RavioliManager<A>);
  v42 = (*(v30 + 80) + 48) & ~*(v30 + 80);
  v43 = (v71 + *(v33 + 80) + v42) & ~*(v33 + 80);
  v44 = swift_allocObject();
  *(v44 + 2) = v34;
  *(v44 + 3) = v41;
  *(v44 + 4) = v72;
  *(v44 + 5) = v34;
  (*(v30 + 32))(&v44[v42], v29, v31);
  sub_10006B82C(v32, &v44[v43]);
  swift_retain_n();
  v45 = sub_100097A18();
  sub_10006F27C(v45, v46, v73, v47, v44);
  sub_100098294();
  v49 = *(v48 + 136);
  sub_10006BED4(v34 + v49, v1 + 136);
  swift_isUniquelyReferenced_nonNull_native();
  v77 = *(v34 + v49);
  sub_10006B2D4();
  *(v34 + v49) = v77;
  swift_endAccess();
  v76(v75, v74);
LABEL_11:

  sub_10006574C();

  return v18();
}

uint64_t sub_100092908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_10009292C, a5, 0);
}

uint64_t sub_10009292C(uint64_t a1)
{
  if (is_mul_ok(*(v1 + 16), 0x3B9ACA00uLL))
  {
    sub_1000657D4();
    v3 = swift_task_alloc();
    *(v1 + 48) = v3;
    *v3 = v1;
    a1 = sub_100097CA4(v3);
  }

  else
  {
    __break(1u);
  }

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_1000929D4()
{
  sub_1000657EC();
  sub_100098064();
  sub_10006564C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 56) = v0;

  sub_1000980B0();
  sub_1000980A4();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100092AE8()
{
  sub_1000657EC();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = type metadata accessor for ServerJSONFetchRetryState(0);
  sub_10008F55C(v1, *(v2 + *(v3 + 24)), *(v2 + *(v3 + 24) + 8), 0);
  sub_10006574C();

  return v4();
}

uint64_t sub_100092B68()
{
  sub_1000657EC();
  if (qword_1006C97E0 != -1)
  {
    sub_1000978B8();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100097D98(v0, qword_1006CB600);
  v1 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v2 = sub_100097B0C();
  if (os_log_type_enabled(v2, v3))
  {
    sub_100097B40();
    v4 = swift_slowAlloc();
    sub_100077640(v4);
    sub_100097C74();
    _os_log_impl(v5, v6, v7, v8, v9, v10);
    sub_1000979A4();
  }

  sub_10006574C();

  return v11();
}

void sub_100092C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ServerJSONFetchRetryState(0);
  v7 = v6 - 8;
  v10 = __chkstk_darwin(v6, v8, v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13, v14);
  v16 = (v32 - v15);
  v17 = objc_opt_self();
  v18 = [v17 standardUserDefaults];
  v19 = sub_1000518E0();

  static Date.now.getter();
  *v16 = 0;
  v20 = (v16 + *(v7 + 32));
  *v20 = a2;
  v20[1] = a3;
  sub_10006B82C(v16, v12);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10006B17C(v12, a1, isUniquelyReferenced_nonNull_native, v22, v23, v24, v25, v26, v32[0], v19, v32[2], v32[3]);
  v27 = v32[1];
  v28 = [v17 standardUserDefaults];
  sub_100050F48(v27, v28, v29, v30, v31);
}

void sub_100092DC4()
{
  sub_1000541C0();
  v1 = v0;
  v3 = v2;
  v32 = v4;
  v5 = type metadata accessor for ServerJSONFetchRetryState(0);
  v6 = v5 - 8;
  v9 = __chkstk_darwin(v5, v7, v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12, v13);
  v15 = (&v31 - v14);
  v16 = sub_100053A30();
  v17 = sub_10005394C();
  v18 = sub_100098224();
  static CodableUserDefaultsKey<>.value.getter(v18, v19, v20, v21, v22);
  static Date.now.getter();
  *v15 = 0;
  v23 = (v15 + *(v6 + 32));
  *v23 = v3;
  v23[1] = v1;
  sub_10006B82C(v15, v11);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10006B17C(v11, v32, isUniquelyReferenced_nonNull_native, v25, v26, v27, v28, v29, v31, v32, v34, v34);
  sub_100098224();
  v30 = sub_100052144();
  static CodableUserDefaultsKey<>.set(value:to:)(&v33, v30, &unk_100691750, &off_100691898, v16, v17);

  sub_100054088();
}

void sub_100092F30(uint64_t a1)
{
  v2 = sub_1000443DC(&qword_1006CB710);
  __chkstk_darwin(v2 - 8, v3, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006C97E0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100046E6C(v13, qword_1006CB600);
  (*(v8 + 16))(v12, a1, v7);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v41 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v42 = v6;
    v43 = v18;
    v19 = v18;
    *v17 = 136315138;
    sub_100097640(&qword_1006CB708, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = *(v8 + 8);
    v21(v12, v7);
    v22 = sub_100052F7C(v20);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "Clearing Ravioli Retry for %s", v17, 0xCu);
    sub_100044850(v19);
    v6 = v42;

    a1 = v41;
  }

  else
  {

    v21 = *(v8 + 8);
    v21(v12, v7);
  }

  v23 = objc_opt_self();
  v24 = [v23 standardUserDefaults];
  v25 = sub_1000518E0();

  v26 = sub_1000BFCF8(a1);
  if (v27)
  {
    v28 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v25;
    v30 = *(v25 + 24);
    sub_1000443DC(&qword_1006CA8D8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v30);
    v25 = v43;
    v21((*(v43 + 48) + *(v8 + 72) * v28), v7);
    v31 = *(v25 + 56);
    v32 = type metadata accessor for ServerJSONFetchRetryState(0);
    sub_10006B82C(v31 + *(*(v32 - 8) + 72) * v28, v6);
    sub_100097640(&qword_1006C9878, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    _NativeDictionary._delete(at:)();
    v33 = v6;
    v34 = 0;
    v35 = v32;
  }

  else
  {
    v35 = type metadata accessor for ServerJSONFetchRetryState(0);
    v33 = v6;
    v34 = 1;
  }

  sub_1000485F8(v33, v34, 1, v35);
  sub_100076FB8(v6, &qword_1006CB710);
  v36 = [v23 standardUserDefaults];
  sub_100050F48(v25, v36, v37, v38, v39);
}

void sub_100093384()
{
  sub_1000541C0();
  v2 = v1;
  v3 = sub_1000443DC(&qword_1006CB710);
  v4 = sub_100077674(v3);
  __chkstk_darwin(v4, v5, v6);
  sub_10004EAF4();
  v9 = v8 - v7;
  v10 = type metadata accessor for UUID();
  sub_10004EAE0();
  v12 = v11;
  __chkstk_darwin(v13, v14, v15);
  sub_10004EAF4();
  sub_10004ED04();
  if (qword_1006C97E0 != -1)
  {
    sub_1000978B8();
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100097D98(v16, qword_1006CB600);
  (*(v12 + 16))(v0, v2, v10);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    sub_100097B58();
    v19 = swift_slowAlloc();
    sub_100097B4C();
    v46 = swift_slowAlloc();
    *v19 = 136315138;
    sub_1000978CC();
    sub_100097640(v20, v21, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = sub_100098250();
    (v12)(v23);
    v24 = sub_100052F7C(v22);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "Clearing Ravioli Retry for %s", v19, 0xCu);
    sub_100098088();
    sub_100097AB8();

    sub_100097AB8();
  }

  else
  {

    v25 = sub_100098250();
    (v12)(v25);
  }

  v26 = sub_100053A30();
  v27 = sub_10005394C();
  static CodableUserDefaultsKey<>.value.getter(&unk_100691750, &off_100691898, v26, v27, v28);
  v29 = v46;
  v30 = sub_1000BFCF8(v2);
  if (v31)
  {
    v32 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v46;
    v34 = v46[3];
    sub_1000443DC(&qword_1006CA8D8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v34);
    v29 = v46;
    (v12)(v46[6] + *(v12 + 72) * v32, v10);
    v35 = v46[7];
    v36 = type metadata accessor for ServerJSONFetchRetryState(0);
    sub_1000774D8();
    sub_10006B82C(v35 + *(v37 + 72) * v32, v9);
    sub_1000978CC();
    sub_100097640(v38, v39, &protocol conformance descriptor for UUID);
    _NativeDictionary._delete(at:)();
    sub_10009820C();
    v43 = v36;
  }

  else
  {
    type metadata accessor for ServerJSONFetchRetryState(0);
    sub_100097CFC();
  }

  sub_1000485F8(v40, v41, v42, v43);
  sub_100076FB8(v9, &qword_1006CB710);
  v45 = v29;
  sub_100087908();
  v44 = sub_100052144();
  static CodableUserDefaultsKey<>.set(value:to:)(&v45, v44, &unk_100691750, &off_100691898, v26, v27);

  sub_100054088();
}

void sub_100093760(uint64_t a1)
{
  v2 = sub_1000443DC(&qword_1006C9E20);
  __chkstk_darwin(v2 - 8, v3, v4);
  v107 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServerJSONFetchRetryState(0);
  __chkstk_darwin(v6, v7, v8);
  v106 = (&v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = type metadata accessor for Date();
  v104 = *(v105 - 1);
  __chkstk_darwin(v105, v10, v11);
  v101 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for ASAnalyticsEvent(0);
  __chkstk_darwin(v103, v13, v14);
  v102 = (&v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v110 = type metadata accessor for UUID();
  v16 = *(v110 - 8);
  v19 = __chkstk_darwin(v110, v17, v18);
  v21 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v19, v22, v23);
  v26 = &v99 - v25;
  __chkstk_darwin(v24, v27, v28);
  v30 = &v99 - v29;
  v31 = sub_1000443DC(&qword_1006CB710);
  __chkstk_darwin(v31 - 8, v32, v33);
  v35 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = objc_opt_self();
  v36 = [v100 standardUserDefaults];
  v37 = sub_1000518E0();

  v38 = swift_allocBox();
  v40 = v39;
  v109 = v37;
  sub_10005552C(v37, v35, a1);
  if (sub_100046EA4(v35, 1, v6) != 1)
  {
    sub_10006B82C(v35, v40);
    if (qword_1006C9818 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v41 = static ASDConfigurationManager.shared;
    sub_1000B05E4(&v114);

    if (v117 == 1 || (v99 = v40, v42 = v38, v43 = v114, v44 = v115, v45 = v116, v46 = BYTE8(v114), sub_100076FB8(&v114, &qword_1006CAC08), (v46 & 1) != 0) || (v45 & 1) != 0)
    {

      goto LABEL_9;
    }

    v55 = *v99 + 1;
    if (__OFADD__(*v99, 1))
    {
      __break(1u);
    }

    else
    {
      v46 = a1;
      *v99 = v55;
      if (v55 >= v43)
      {
        v107 = v43;
        if (qword_1006C97E0 != -1)
        {
          swift_once();
        }

        v66 = type metadata accessor for Logger();
        sub_100046E6C(v66, qword_1006CB600);
        v67 = *(v16 + 16);
        v68 = v110;
        (v67)(v30, a1, v110);
        swift_retain_n();
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v106 = v67;
          v72 = v71;
          v105 = swift_slowAlloc();
          v113 = v105;
          *v72 = 136315650;
          sub_100097640(&qword_1006CB708, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v73 = dispatch thunk of CustomStringConvertible.description.getter();
          (*(v16 + 8))(v30, v110);
          v74 = sub_100052F7C(v73);
          v68 = v110;

          *(v72 + 4) = v74;
          *(v72 + 12) = 2048;
          v75 = v99;
          swift_beginAccess();
          v76 = *v75;

          *(v72 + 14) = v76;

          *(v72 + 22) = 2048;
          *(v72 + 24) = v107;
          _os_log_impl(&_mh_execute_header, v69, v70, "Reached ravioli retry limit for %s - Tried %ld times limit %ld", v72, 0x20u);
          sub_100044850(v105);

          v67 = v106;
        }

        else
        {

          (*(v16 + 8))(v30, v68);
          v75 = v99;
        }

        sub_100092F30(v46);
        v97 = *(sub_1000443DC(&qword_1006CB718) + 48);
        swift_beginAccess();
        v98 = v102;
        *v102 = *v75;
        (v67)(v98 + v97, v46, v68);
        swift_storeEnumTagMultiPayload();
        sub_1000C4148(v98);
        sub_1000970AC(v98, type metadata accessor for ASAnalyticsEvent);

        goto LABEL_27;
      }

      if (qword_1006C97E0 == -1)
      {
LABEL_17:
        v56 = type metadata accessor for Logger();
        sub_100046E6C(v56, qword_1006CB600);
        v57 = v46;
        v58 = v110;
        (*(v16 + 16))(v26, v57, v110);
        swift_retain_n();
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v113 = v103;
          *v61 = 136315394;
          sub_100097640(&qword_1006CB708, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          LODWORD(v102) = v60;
          v62 = dispatch thunk of CustomStringConvertible.description.getter();
          (*(v16 + 8))(v26, v58);
          v63 = sub_100052F7C(v62);

          *(v61 + 4) = v63;
          *(v61 + 12) = 2048;
          v64 = v99;
          swift_beginAccess();
          v65 = *v64;

          *(v61 + 14) = v65;

          _os_log_impl(&_mh_execute_header, v59, v102, "Ravioli request failed for %s. Attempts made: %ld", v61, 0x16u);
          sub_100044850(v103);
        }

        else
        {

          (*(v16 + 8))(v26, v58);
          v64 = v99;
        }

        v77 = v101;
        static Date.now.getter();
        swift_beginAccess();
        (*(v104 + 40))(&v64[*(v6 + 20)], v77, v105);
        v78 = v106;
        sub_10005909C(v64, v106);
        v79 = v109;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v112[0] = v79;
        sub_10006B17C(v78, a1, isUniquelyReferenced_nonNull_native, v81, v82, v83, v84, v85, v99, v100, v101, v102);
        v86 = v112[0];
        v87 = [v100 standardUserDefaults];
        sub_100050F48(v86, v87, v88, v89, v90);

        v91 = type metadata accessor for TaskPriority();
        v92 = v107;
        sub_1000485F8(v107, 1, 1, v91);
        v93 = sub_1000472E0(&qword_1006CB6F8, &qword_1006CB700, &protocol conformance descriptor for RavioliManager<A>);
        v94 = swift_allocObject();
        v95 = v108;
        v94[2] = v108;
        v94[3] = v93;
        v94[4] = v44;
        v94[5] = v95;
        v94[6] = v42;
        swift_retain_n();

        sub_10006F27C(0, 0, v92, &unk_1005CD4D8, v94);
        v96 = *(*v95 + 136);
        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v111 = *(v95 + v96);
        sub_10006B2D4();
        *(v95 + v96) = v111;
        swift_endAccess();

LABEL_27:

        return;
      }
    }

    swift_once();
    goto LABEL_17;
  }

  sub_100076FB8(v35, &qword_1006CB710);
  swift_deallocBox();
LABEL_9:
  v47 = v110;
  if (qword_1006C97E0 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_100046E6C(v48, qword_1006CB600);
  (*(v16 + 16))(v21, a1, v47);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v113 = v52;
    *v51 = 136315138;
    sub_100097640(&qword_1006CB708, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v16 + 8))(v21, v47);
    v54 = sub_100052F7C(v53);

    *(v51 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v49, v50, "No retry state or no max retries for %s", v51, 0xCu);
    sub_100044850(v52);
  }

  else
  {

    (*(v16 + 8))(v21, v47);
  }
}

void sub_1000944A8(uint64_t a1)
{
  v133 = *v1;
  v3 = sub_1000443DC(&qword_1006C9E20);
  v4 = sub_100077674(v3);
  __chkstk_darwin(v4, v5, v6);
  sub_10004EAF4();
  v9 = sub_100097EB4(v8 - v7);
  v10 = type metadata accessor for ServerJSONFetchRetryState(v9);
  sub_1000774D8();
  __chkstk_darwin(v11, v12, v13);
  sub_10004EAF4();
  sub_100097EB4(v15 - v14);
  v131 = type metadata accessor for Date();
  sub_10004EAE0();
  v130 = v16;
  __chkstk_darwin(v17, v18, v19);
  sub_10004EAF4();
  v22 = sub_100097EB4(v21 - v20);
  v128 = type metadata accessor for ASAnalyticsEvent(v22);
  sub_1000774D8();
  __chkstk_darwin(v23, v24, v25);
  sub_10004EAF4();
  sub_100097EB4(v27 - v26);
  v28 = type metadata accessor for UUID();
  sub_10004EAE0();
  v30 = v29;
  v34 = __chkstk_darwin(v31, v32, v33);
  v36 = &v123 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v34, v37, v38);
  v41 = &v123 - v40;
  __chkstk_darwin(v39, v42, v43);
  v45 = &v123 - v44;
  v46 = sub_1000443DC(&qword_1006CB710);
  v47 = sub_100077674(v46);
  __chkstk_darwin(v47, v48, v49);
  sub_10004EAF4();
  v52 = v51 - v50;
  v53 = sub_100053A30();
  v54 = sub_10005394C();
  v126 = v53;
  v125 = v54;
  static CodableUserDefaultsKey<>.value.getter(&unk_100691750, &off_100691898, v53, v54, v55);
  v56 = swift_allocBox();
  v58 = v57;
  v137 = a1;
  v136 = v143;
  sub_10005552C(v143, v52, a1);
  if (sub_100046EA4(v52, 1, v10) != 1)
  {
    v59 = v56;
    v60 = sub_10006B82C(v52, v58);
    if (qword_1006C9818 != -1)
    {
      v60 = sub_1000878A4(&qword_1006C9818);
    }

    sub_100097F28(v60, v142);
    v61 = static ASDConfigurationManager.shared;
    sub_1000B05E4(&v144);

    if (v147 == 1 || (v124 = v144, v62 = v145, v63 = v146, v64 = BYTE8(v144), sub_100076FB8(&v144, &qword_1006CAC08), (v64 & 1) != 0) || (v63 & 1) != 0)
    {

      goto LABEL_9;
    }

    v74 = *v58 + 1;
    if (__OFADD__(*v58, 1))
    {
      __break(1u);
    }

    else
    {
      v64 = v58;
      *v58 = v74;
      if (v74 >= v124)
      {
        if (qword_1006C97E0 != -1)
        {
          sub_1000978B8();
          swift_once();
        }

        v85 = type metadata accessor for Logger();
        sub_100097D98(v85, qword_1006CB600);
        v135 = *(v30 + 16);
        v135(v45, v137, v28);
        swift_retain_n();
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v86, v87))
        {
          sub_100097B4C();
          v88 = swift_slowAlloc();
          sub_100097B4C();
          v134 = swift_slowAlloc();
          v141 = v134;
          *v88 = 136315650;
          sub_1000978CC();
          sub_100097640(v89, v90, &protocol conformance descriptor for UUID);
          LODWORD(v133) = v87;
          v91 = dispatch thunk of CustomStringConvertible.description.getter();
          v132 = v86;
          (*(v30 + 8))(v45, v28);
          sub_100052F7C(v91);
          sub_1000980E0();

          *(v88 + 4) = v91;
          *(v88 + 12) = 2048;
          sub_1000879B4(v58, v140);
          v92 = *v58;

          *(v88 + 14) = v92;
          v64 = v58;

          *(v88 + 22) = 2048;
          *(v88 + 24) = v124;
          v93 = v132;
          _os_log_impl(&_mh_execute_header, v132, v133, "Reached ravioli retry limit for %s - Tried %ld times limit %ld", v88, 0x20u);
          sub_100044850(v134);
          sub_100097AB8();

          sub_100097AB8();
        }

        else
        {

          (*(v30 + 8))(v45, v28);
        }

        v120 = v137;
        sub_100093384();
        v121 = *(sub_1000443DC(&qword_1006CB718) + 48);
        sub_1000879B4(v64, &v141);
        v122 = v127;
        *v127 = *v64;
        v135((v122 + v121), v120, v28);
        swift_storeEnumTagMultiPayload();
        sub_1000C4148(v122);
        sub_100097E64();

        goto LABEL_27;
      }

      if (qword_1006C97E0 == -1)
      {
LABEL_17:
        v75 = type metadata accessor for Logger();
        sub_100097D98(v75, qword_1006CB600);
        (*(v30 + 16))(v41, v137, v28);
        v136 = v59;
        swift_retain_n();
        v76 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        sub_100097DCC();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          sub_100097B4C();
          v128 = swift_slowAlloc();
          v141 = v128;
          *v78 = 136315394;
          sub_1000978CC();
          sub_100097640(v79, v80, &protocol conformance descriptor for UUID);
          v81 = dispatch thunk of CustomStringConvertible.description.getter();
          (*(v30 + 8))(v41, v28);
          v82 = sub_100052F7C(v81);
          v64 = v58;

          *(v78 + 4) = v82;
          *(v78 + 12) = 2048;
          sub_1000879B4(v58, v138);
          v83 = *v58;
          v84 = v136;

          *(v78 + 14) = v83;

          _os_log_impl(&_mh_execute_header, v76, v59, "Ravioli request failed for %s. Attempts made: %ld", v78, 0x16u);
          sub_100044850(v128);
          sub_100097AB8();

          sub_100097AB8();
        }

        else
        {

          v84 = v136;

          (*(v30 + 8))(v41, v28);
        }

        v94 = v129;
        static Date.now.getter();
        swift_beginAccess();
        (*(v130 + 40))(v64 + *(v10 + 20), v94, v131);
        v95 = v132;
        sub_10005909C(v64, v132);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v140[0] = v143;
        sub_10006B17C(v95, v137, isUniquelyReferenced_nonNull_native, v97, v98, v99, v100, v101, v123, v124, v125, v126);

        v102 = v126;
        v103 = v125;
        v104 = sub_100052144();
        static CodableUserDefaultsKey<>.set(value:to:)(v140, v104, &unk_100691750, &off_100691898, v102, v103);

        type metadata accessor for TaskPriority();
        v105 = v134;
        sub_100097CFC();
        sub_1000485F8(v106, v107, v108, v109);
        v111 = type metadata accessor for RavioliManager(255, *(v133 + 80), *(v133 + 88), v110);
        v112 = sub_100097E8C(v111);
        v113 = swift_allocObject();
        v114 = v135;
        v113[2] = v135;
        v113[3] = v112;
        v113[4] = v62;
        v113[5] = v114;
        v113[6] = v84;
        swift_retain_n();

        v115 = sub_100097A18();
        sub_10006F27C(v115, v116, v105, v117, v113);
        sub_100098294();
        v119 = *(v118 + 136);
        sub_10006BED4(v114 + v119, v140);
        swift_isUniquelyReferenced_nonNull_native();
        v139 = *(v114 + v119);
        sub_10006B2D4();
        *(v114 + v119) = v139;
        swift_endAccess();

LABEL_27:

        return;
      }
    }

    sub_1000978B8();
    swift_once();
    goto LABEL_17;
  }

  sub_100076FB8(v52, &qword_1006CB710);
  swift_deallocBox();
LABEL_9:
  if (qword_1006C97E0 != -1)
  {
    sub_1000978B8();
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  sub_100097D98(v65, qword_1006CB600);
  (*(v30 + 16))(v36, v137, v28);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v66, v67))
  {
    sub_100097B58();
    v68 = swift_slowAlloc();
    sub_100097B4C();
    v69 = swift_slowAlloc();
    v141 = v69;
    *v68 = 136315138;
    sub_1000978CC();
    sub_100097640(v70, v71, &protocol conformance descriptor for UUID);
    v72 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v30 + 8))(v36, v28);
    v73 = sub_100052F7C(v72);

    *(v68 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v66, v67, "No retry state or no max retries for %s", v68, 0xCu);
    sub_100044850(v69);
    sub_100097AB8();

    sub_1000979A4();
  }

  else
  {

    (*(v30 + 8))(v36, v28);
  }
}