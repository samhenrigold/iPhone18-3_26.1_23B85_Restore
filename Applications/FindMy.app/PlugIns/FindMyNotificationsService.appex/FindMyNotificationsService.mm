uint64_t sub_100001880()
{
  v1 = [v0 type];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    goto LABEL_14;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_6:

    return 1;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {
    goto LABEL_14;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_6;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
LABEL_14:

    return 1;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v19 & 1;
}

uint64_t sub_100001A0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001A9C;

  return sub_100001E80();
}

uint64_t sub_100001A9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100001B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000078C0(&qword_100020D38, &qword_100017000);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000079FC(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100009E48(v11, &qword_100020D38, &qword_100017000);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100009E48(a3, &qword_100020D38, &qword_100017000);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100009E48(a3, &qword_100020D38, &qword_100017000);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100001E80()
{
  v1[95] = v0;
  sub_1000078C0(&qword_100020DA0, &qword_100017070);
  v1[96] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[97] = v2;
  v1[98] = *(v2 - 8);
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();

  return _swift_task_switch(sub_100001F9C, 0, 0);
}

uint64_t sub_100001F9C()
{
  v100 = v0;
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 824) = sub_100008A68(v1, qword_100021CC8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "NotifyWhenFoundNotificationService: Handling new Notify When Found notification", v4, 2u);
  }

  v5 = *(v0 + 760);

  v6 = [*(v5 + 104) content];
  [v6 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100009CB4(0, &qword_100021050, UNMutableNotificationContent_ptr);
  if (!swift_dynamicCast())
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "NotifyWhenFoundNotificationService: No UNMutableNotificationContent", v24, 2u);
    }

    v25 = *(v0 + 760);

    v26 = [objc_allocWithZone(UNMutableNotificationContent) init];
    v27 = String._bridgeToObjectiveC()();
    [v26 setBody:v27];

    (*(v25 + 112))(v26);
    goto LABEL_13;
  }

  v7 = *(v0 + 752);
  *(v0 + 832) = v7;
  v8 = v7;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v97 = v8;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v99[0] = v12;
    *v11 = 136315138;
    v13 = [v8 userInfo];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = Dictionary.description.getter();
    v16 = v15;

    v17 = sub_1000141AC(v14, v16, v99);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "NotifyWhenFoundNotificationService: Extracting payload dictionary from: %s", v11, 0xCu);
    sub_100008A1C(v12);
  }

  v18 = *(v0 + 760);
  v19 = [*(v18 + 96) userInfo];
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = sub_100004790(v20);

  if (!v21)
  {
    v28 = v97;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v99[0] = v98;
      *v31 = 136315138;
      v32 = [v28 userInfo];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = Dictionary.description.getter();
      v35 = v34;

      v36 = sub_1000141AC(v33, v35, v99);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "NotifyWhenFoundNotificationService: Could not get payload dictionary from: %s", v31, 0xCu);
      sub_100008A1C(v98);
    }

    v37 = *(*(v0 + 760) + 112);
    v38 = *(v18 + 96);
    v37();

    goto LABEL_17;
  }

  sub_100004A6C(v0 + 80);
  v96 = v18;

  v41 = *(v0 + 160);
  *(v0 + 312) = *(v0 + 144);
  *(v0 + 328) = v41;
  v42 = *(v0 + 128);
  *(v0 + 280) = *(v0 + 112);
  *(v0 + 296) = v42;
  *(v0 + 408) = *(v0 + 240);
  v43 = *(v0 + 224);
  *(v0 + 376) = *(v0 + 208);
  *(v0 + 392) = v43;
  v44 = *(v0 + 192);
  *(v0 + 344) = *(v0 + 176);
  *(v0 + 360) = v44;
  v45 = *(v0 + 96);
  *(v0 + 248) = *(v0 + 80);
  *(v0 + 264) = v45;
  if (*(v0 + 304) && (v46 = *(v0 + 288)) != 0 && v46[2])
  {
    countAndFlagsBits = v46[4];
    object = v46[5];
  }

  else
  {
    v49 = *(v0 + 760);
    v50 = *(v49 + 64);
    v51 = *(v49 + 72);
    v52 = [objc_opt_self() mainBundle];
    v102._object = 0x8000000100017C50;
    v53._countAndFlagsBits = v50;
    v53._object = v51;
    v54.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v54.value._object = 0xEB00000000656C62;
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    v102._countAndFlagsBits = 0xD000000000000018;
    v56 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, v54, v52, v55, v102);
    countAndFlagsBits = v56._countAndFlagsBits;
    object = v56._object;
  }

  *(v0 + 856) = object;
  *(v0 + 848) = countAndFlagsBits;
  *(v0 + 840) = 0x8000000100017C50;
  v57 = *(v0 + 760);
  v58 = *(v57 + 48);
  *(v0 + 864) = v58;
  v59 = *(v57 + 56);
  *(v0 + 872) = v59;
  v60 = objc_opt_self();
  *(v0 + 880) = v60;
  v61 = [v60 mainBundle];
  v103._object = 0x8000000100017C50;
  v62._countAndFlagsBits = v58;
  v62._object = v59;
  v63.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v63.value._object = 0xEB00000000656C62;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  v103._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v62, v63, v61, v64, v103);

  *(v0 + 888) = sub_1000078C0(&qword_100020DA8, &qword_100017078);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_100016F10;
  *(v65 + 56) = &type metadata for String;
  v66 = sub_100008D38();
  *(v0 + 896) = v66;
  *(v65 + 64) = v66;
  *(v65 + 32) = countAndFlagsBits;
  *(v65 + 40) = object;

  String.init(format:_:)();

  v67 = String._bridgeToObjectiveC()();

  [v97 setBody:v67];

  v68 = v97;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v71 = 138412290;
    *(v71 + 4) = v68;
    *v72 = v68;
    v73 = v68;
    _os_log_impl(&_mh_execute_header, v69, v70, "NotifyWhenFoundNotificationService: Content after updating with fallback data: %@.", v71, 0xCu);
    sub_100009E48(v72, &qword_100020D60, &qword_100017050);
  }

  v74 = v96;
  v75 = *(v96 + 96);
  *(v96 + 96) = v68;
  v26 = v68;

  if (!*(v0 + 408))
  {

    sub_100008D8C(v0 + 248);
    goto LABEL_31;
  }

  v76 = *(v0 + 784);
  v77 = *(v0 + 776);
  v78 = *(v0 + 768);

  sub_100008D8C(v0 + 248);
  UUID.init(uuidString:)();

  if ((*(v76 + 48))(v78, 1, v77) == 1)
  {
    v79 = *(v0 + 768);

    sub_100009E48(v79, &qword_100020DA0, &qword_100017070);
    v74 = v96;
LABEL_31:
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "NotifyWhenFoundNotificationService: No subscription identifier. Nothing else to do.", v82, 2u);
    }

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v99[0] = v86;
      *v85 = 136315138;
      v87 = [*(v74 + 96) body];
      v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v89;

      v91 = sub_1000141AC(v88, v90, v99);

      *(v85 + 4) = v91;
      _os_log_impl(&_mh_execute_header, v83, v84, "NotifyWhenFoundNotificationService: Completing with fallback data from server %s", v85, 0xCu);
      sub_100008A1C(v86);
    }

    v92 = *(*(v0 + 760) + 112);
    v93 = *(v74 + 96);
    v92();

LABEL_13:
LABEL_17:

    v39 = *(v0 + 8);

    return v39();
  }

  (*(*(v0 + 784) + 32))(*(v0 + 816), *(v0 + 768), *(v0 + 776));
  v94 = swift_task_alloc();
  *(v0 + 904) = v94;
  *v94 = v0;
  v94[1] = sub_100002C28;
  v95 = *(v0 + 816);

  return sub_1000056C8(v95);
}

uint64_t sub_100002C28(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 912) = a1;
  *(v3 + 920) = a2;

  return _swift_task_switch(sub_100002D2C, 0, 0);
}

uint64_t sub_100002D2C()
{
  v1 = *(v0 + 912);
  if (v1)
  {
    *(v0 + 928) = swift_allocObject();
    swift_weakInit();
    if (sub_100001880())
    {
      v2 = *(v0 + 808);
      v3 = *(v0 + 784);
      v4 = *(v0 + 776);
      v5 = *(*(v0 + 760) + 88);
      *(v0 + 936) = v5;
      v6 = v5;
      v7 = [v1 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      *(v0 + 944) = isa;
      v9 = *(v3 + 8);
      *(v0 + 952) = v9;
      *(v0 + 960) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v9(v2, v4);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 1032;
      *(v0 + 24) = sub_10000363C;
      v10 = swift_continuation_init();
      *(v0 + 472) = sub_1000078C0(&qword_100020DB8, &qword_100017088);
      *(v0 + 416) = _NSConcreteStackBlock;
      *(v0 + 424) = 1107296256;
      *(v0 + 432) = sub_10000566C;
      *(v0 + 440) = &unk_10001CE18;
      *(v0 + 448) = v10;
      [v6 postedLocalNotifyWhenFoundNotificationForUUID:isa completion:v0 + 416];

      return _swift_continuation_await(v0 + 16);
    }

    else
    {
      v77 = *(v0 + 920);
      v19 = *(v0 + 912);
      v20 = *(v0 + 832);
      v21 = *(v0 + 808);
      v22 = *(v0 + 800);
      v23 = *(v0 + 784);
      v24 = *(v0 + 776);
      v25 = [v19 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.uuidString.getter();
      v26 = *(v23 + 8);
      *(v0 + 968) = v26;
      *(v0 + 976) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v26(v21, v24);
      v27 = String._bridgeToObjectiveC()();

      [v20 setTargetContentIdentifier:v27];

      *(v0 + 720) = 0xD000000000000010;
      *(v0 + 728) = 0x8000000100017950;
      AnyHashable.init<A>(_:)();
      v28 = [v19 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = UUID.uuidString.getter();
      v31 = v30;
      v26(v22, v24);
      *(v0 + 616) = &type metadata for String;
      *(v0 + 592) = v29;
      *(v0 + 600) = v31;
      v32 = [v20 userInfo];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100009CA4((v0 + 592), (v0 + 688));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10000FDF8((v0 + 688), v0 + 480, isUniquelyReferenced_nonNull_native);
      sub_100008E18(v0 + 480);
      v34 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v20 setUserInfo:v34];

      if (v77)
      {
        v35 = *(v0 + 920);
        v36 = *(v0 + 832);
        v37 = *(v0 + 792);
        v38 = *(v0 + 776);
        *(v0 + 736) = 0x65644970756F7267;
        *(v0 + 744) = 0xEF7265696669746ELL;
        v39 = v35;
        AnyHashable.init<A>(_:)();
        v40 = [v39 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v41 = UUID.uuidString.getter();
        v43 = v42;
        v26(v37, v38);
        *(v0 + 648) = &type metadata for String;
        *(v0 + 624) = v41;
        *(v0 + 632) = v43;
        v44 = [v36 userInfo];
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100009CA4((v0 + 624), (v0 + 656));
        v45 = swift_isUniquelyReferenced_nonNull_native();
        sub_10000FDF8((v0 + 656), v0 + 520, v45);
        sub_100008E18(v0 + 520);
        v46 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v36 setUserInfo:v46];
      }

      v47 = sub_100008E6C(*(v0 + 912), *(v0 + 920), *(v0 + 848), *(v0 + 856));
      v49 = v48;

      *(v0 + 984) = v47;
      *(v0 + 992) = v49;
      if (sub_100001880())
      {
        v50 = *(v0 + 832);
        v51 = String._bridgeToObjectiveC()();
        [v50 setTitle:v51];
      }

      v52 = *(v0 + 896);
      v53 = *(v0 + 872);
      v54 = *(v0 + 864);
      v55 = *(v0 + 840);
      v56 = *(v0 + 832);
      v57 = [*(v0 + 880) mainBundle];
      v79._object = v55;
      v58.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v58.value._object = 0xEB00000000656C62;
      v79._countAndFlagsBits = 0xD000000000000018;
      v59._countAndFlagsBits = v54;
      v59._object = v53;
      v60._countAndFlagsBits = 0;
      v60._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v59, v58, v57, v60, v79);

      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_100016F10;
      *(v61 + 56) = &type metadata for String;
      *(v61 + 64) = v52;
      *(v61 + 32) = v47;
      *(v61 + 40) = v49;

      String.init(format:_:)();

      v62 = String._bridgeToObjectiveC()();

      [v56 setBody:v62];

      v63 = v56;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = *(v0 + 832);
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v67 = 138412290;
        *(v67 + 4) = v66;
        *v68 = v66;
        v69 = v66;
        _os_log_impl(&_mh_execute_header, v64, v65, "NotifyWhenFoundNotificationService: Content after updating with beacon data: %@.", v67, 0xCu);
        sub_100009E48(v68, &qword_100020D60, &qword_100017050);
      }

      v70 = *(v0 + 912);
      v71 = *(v0 + 832);
      v72 = *(v0 + 760);

      v73 = *(v72 + 96);
      *(v72 + 96) = v71;
      v74 = v71;

      v75 = swift_task_alloc();
      *(v0 + 1000) = v75;
      *v75 = v0;
      v75[1] = sub_100003F2C;

      return sub_1000062E8(v70);
    }
  }

  else
  {
    v11 = *(v0 + 832);
    v12 = *(v0 + 816);
    v13 = *(v0 + 784);
    v14 = *(v0 + 776);
    v15 = *(v0 + 760);

    v16 = *(v15 + 112);
    v17 = *(v15 + 96);
    v16();

    (*(v13 + 8))(v12, v14);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_10000363C()
{

  return _swift_task_switch(sub_10000371C, 0, 0);
}

uint64_t sub_10000371C()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 1032);

  if (v2 == 1)
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "NotifyWhenFoundNotificationService: Local notification was already posted, returning empty content.", v5, 2u);
    }

    v6 = *(v0 + 952);
    v7 = *(v0 + 928);
    v8 = *(v0 + 920);
    v9 = *(v0 + 912);
    v10 = *(v0 + 832);
    v11 = *(v0 + 816);
    v12 = *(v0 + 776);

    v13 = [objc_allocWithZone(UNMutableNotificationContent) init];
    sub_100004ED8(v13, v9, v7);

    v6(v11, v12);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v73 = *(v0 + 920);
    v16 = *(v0 + 912);
    v17 = *(v0 + 832);
    v18 = *(v0 + 808);
    v19 = *(v0 + 800);
    v20 = *(v0 + 784);
    v21 = *(v0 + 776);
    v22 = [v16 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.uuidString.getter();
    v23 = *(v20 + 8);
    *(v0 + 968) = v23;
    *(v0 + 976) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v18, v21);
    v24 = String._bridgeToObjectiveC()();

    [v17 setTargetContentIdentifier:v24];

    *(v0 + 720) = 0xD000000000000010;
    *(v0 + 728) = 0x8000000100017950;
    AnyHashable.init<A>(_:)();
    v25 = [v16 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = UUID.uuidString.getter();
    v28 = v27;
    v23(v19, v21);
    *(v0 + 616) = &type metadata for String;
    *(v0 + 592) = v26;
    *(v0 + 600) = v28;
    v29 = [v17 userInfo];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100009CA4((v0 + 592), (v0 + 688));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000FDF8((v0 + 688), v0 + 480, isUniquelyReferenced_nonNull_native);
    sub_100008E18(v0 + 480);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v17 setUserInfo:isa];

    if (v73)
    {
      v32 = *(v0 + 920);
      v33 = *(v0 + 832);
      v34 = *(v0 + 792);
      v35 = *(v0 + 776);
      *(v0 + 736) = 0x65644970756F7267;
      *(v0 + 744) = 0xEF7265696669746ELL;
      v36 = v32;
      AnyHashable.init<A>(_:)();
      v37 = [v36 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = UUID.uuidString.getter();
      v40 = v39;
      v23(v34, v35);
      *(v0 + 648) = &type metadata for String;
      *(v0 + 624) = v38;
      *(v0 + 632) = v40;
      v41 = [v33 userInfo];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100009CA4((v0 + 624), (v0 + 656));
      v42 = swift_isUniquelyReferenced_nonNull_native();
      sub_10000FDF8((v0 + 656), v0 + 520, v42);
      sub_100008E18(v0 + 520);
      v43 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v33 setUserInfo:v43];
    }

    v44 = sub_100008E6C(*(v0 + 912), *(v0 + 920), *(v0 + 848), *(v0 + 856));
    v46 = v45;

    *(v0 + 984) = v44;
    *(v0 + 992) = v46;
    if (sub_100001880())
    {
      v47 = *(v0 + 832);
      v48 = String._bridgeToObjectiveC()();
      [v47 setTitle:v48];
    }

    v49 = *(v0 + 896);
    v50 = *(v0 + 872);
    v51 = *(v0 + 864);
    v52 = *(v0 + 840);
    v53 = *(v0 + 832);
    v54 = [*(v0 + 880) mainBundle];
    v75._object = v52;
    v55.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v55.value._object = 0xEB00000000656C62;
    v75._countAndFlagsBits = 0xD000000000000018;
    v56._countAndFlagsBits = v51;
    v56._object = v50;
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v56, v55, v54, v57, v75);

    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_100016F10;
    *(v58 + 56) = &type metadata for String;
    *(v58 + 64) = v49;
    *(v58 + 32) = v44;
    *(v58 + 40) = v46;

    String.init(format:_:)();

    v59 = String._bridgeToObjectiveC()();

    [v53 setBody:v59];

    v60 = v53;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = *(v0 + 832);
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v64 = 138412290;
      *(v64 + 4) = v63;
      *v65 = v63;
      v66 = v63;
      _os_log_impl(&_mh_execute_header, v61, v62, "NotifyWhenFoundNotificationService: Content after updating with beacon data: %@.", v64, 0xCu);
      sub_100009E48(v65, &qword_100020D60, &qword_100017050);
    }

    v67 = *(v0 + 912);
    v68 = *(v0 + 832);
    v69 = *(v0 + 760);

    v70 = *(v69 + 96);
    *(v69 + 96) = v68;
    v71 = v68;

    v72 = swift_task_alloc();
    *(v0 + 1000) = v72;
    *v72 = v0;
    v72[1] = sub_100003F2C;

    return sub_1000062E8(v67);
  }
}

uint64_t sub_100003F2C(uint64_t a1)
{
  *(*v1 + 1008) = a1;

  return _swift_task_switch(sub_10000402C, 0, 0);
}

uint64_t sub_10000402C()
{
  v1 = v0[126];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[127] = v2;
    *v2 = v0;
    v2[1] = sub_1000041D4;

    return sub_100009438(v1);
  }

  else
  {
    v4 = v0[121];
    v5 = v0[116];
    v6 = v0[115];
    v7 = v0[114];
    v8 = v0[104];
    v9 = v0[102];
    v10 = v0[97];
    v11 = v0[95];

    v12 = *(v11 + 96);
    sub_100004ED8(v12, v7, v5);

    v4(v9, v10);

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1000041D4(uint64_t a1)
{
  *(*v1 + 1024) = a1;

  return _swift_task_switch(sub_1000042D4, 0, 0);
}

uint64_t sub_1000042D4()
{
  v1 = *(v0 + 1024);
  if (!v1)
  {
    v1 = *(v0 + 1008);
LABEL_7:

    v19 = *(v0 + 968);
    v20 = *(v0 + 928);
    v21 = *(v0 + 920);
    v22 = *(v0 + 912);
    v23 = *(v0 + 832);
    v24 = *(v0 + 816);
    v25 = *(v0 + 776);
    v26 = *(v0 + 760);

    v27 = *(v26 + 96);
    sub_100004ED8(v27, v22, v20);

    v19(v24, v25);
    goto LABEL_12;
  }

  v2 = [*(v0 + 1024) name];
  if (!v2)
  {

    goto LABEL_7;
  }

  v62 = v1;
  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = sub_100001880();
  v8 = *(v0 + 992);
  if (v7)
  {
    v60 = *(v0 + 896);
    v9 = *(v0 + 880);
    v10 = *(v0 + 840);
    v11 = *(v0 + 760);

    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    v14 = [v9 mainBundle];
    v64._object = v10;
    v15._countAndFlagsBits = v12;
    v15._object = v13;
    v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v16.value._object = 0xEB00000000656C62;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v64._countAndFlagsBits = 0xD000000000000018;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v64);

    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100016F10;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = v60;
    *(v18 + 32) = v4;
    *(v18 + 40) = v6;
  }

  else
  {
    v61 = *(v0 + 984);
    v28 = *(v0 + 896);
    v29 = *(v0 + 840);
    v30 = *(v0 + 760);
    v31 = *(v30 + 32);
    v32 = *(v30 + 40);
    v33 = [*(v0 + 880) mainBundle];
    v65._object = v29;
    v34._countAndFlagsBits = v31;
    v34._object = v32;
    v35.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v35.value._object = 0xEB00000000656C62;
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    v65._countAndFlagsBits = 0xD000000000000018;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v35, v33, v36, v65);

    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_100016F20;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = v28;
    *(v37 + 32) = v61;
    *(v37 + 40) = v8;
    *(v37 + 96) = &type metadata for String;
    *(v37 + 104) = v28;
    *(v37 + 72) = v4;
    *(v37 + 80) = v6;
  }

  String.init(format:_:)();
  v38 = *(v0 + 832);

  v39 = String._bridgeToObjectiveC()();

  [v38 setBody:v39];

  v40 = v38;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = *(v0 + 832);
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412290;
    *(v44 + 4) = v43;
    *v45 = v43;
    v46 = v43;
    _os_log_impl(&_mh_execute_header, v41, v42, "NotifyWhenFoundNotificationService: Content after updating with location data: %@.", v44, 0xCu);
    sub_100009E48(v45, &qword_100020D60, &qword_100017050);
  }

  v47 = *(v0 + 1008);
  v59 = *(v0 + 968);
  v48 = *(v0 + 928);
  v58 = *(v0 + 920);
  v49 = *(v0 + 912);
  v50 = *(v0 + 832);
  v51 = *(v0 + 816);
  v52 = *(v0 + 776);
  v53 = *(v0 + 760);

  v54 = *(v53 + 96);
  *(v53 + 96) = v50;
  v55 = v50;

  sub_100004ED8(v55, v49, v48);

  v59(v51, v52);
LABEL_12:

  v56 = *(v0 + 8);

  return v56();
}

unint64_t sub_100004790(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000078C0(&qword_100020DF0, &qword_1000170A0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_100009DEC(*(a1 + 48) + 40 * v12, v27);
        sub_1000089B8(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_100009DEC(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1000089B8(v25 + 8, v20);
        sub_100009E48(v24, &qword_100020DF8, qword_1000170A8);
        v21 = v18;
        sub_100009CA4(v20, v22);
        v13 = v21;
        sub_100009CA4(v22, v23);
        sub_100009CA4(v23, &v21);
        result = sub_1000148B4(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_100008A1C(v10);
          result = sub_100009CA4(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_100009CA4(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_100009E48(v24, &qword_100020DF8, qword_1000170A8);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100004A6C@<X0>(uint64_t a1@<X8>)
{
  v3 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *&v34[0] = 0;
  v5 = [v3 dataWithJSONObject:isa options:0 error:v34];

  v6 = *&v34[0];
  v7 = &NotifyWhenFoundNotificationService;
  if (v5)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100009D44();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (!v1)
    {
      sub_100009D98(v8, v10);

      v29 = v34[9];
      *(a1 + 128) = v34[8];
      *(a1 + 144) = v29;
      *(a1 + 160) = v35;
      v30 = v34[5];
      *(a1 + 64) = v34[4];
      *(a1 + 80) = v30;
      v31 = v34[7];
      *(a1 + 96) = v34[6];
      *(a1 + 112) = v31;
      v32 = v34[1];
      *a1 = v34[0];
      *(a1 + 16) = v32;
      v33 = v34[3];
      *(a1 + 32) = v34[2];
      *(a1 + 48) = v33;
      return result;
    }

    if (qword_100020BC8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008A68(v11, qword_100021CC8);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v34[0] = v15;
      *v14 = 136315138;
      swift_errorRetain();
      sub_1000078C0(&qword_100020DC8, &qword_100017098);
      v16 = String.init<A>(describing:)();
      v18 = sub_1000141AC(v16, v17, v34);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Excption decoding data - %s", v14, 0xCu);
      sub_100008A1C(v15);

      v7 = &NotifyWhenFoundNotificationService;
    }

    swift_willThrow();
    sub_100009D98(v8, v10);
  }

  else
  {
    v19 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (v7[41].base_props != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008A68(v20, qword_100021CC8);
  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v34[0] = v24;
    *v23 = 136315138;
    swift_errorRetain();
    sub_1000078C0(&qword_100020DC8, &qword_100017098);
    v25 = String.init<A>(describing:)();
    v27 = sub_1000141AC(v25, v26, v34);

    *(v23 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Excption serializing data - %s", v23, 0xCu);
    sub_100008A1C(v24);
  }

  return swift_willThrow();
}

void sub_100004ED8(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008A68(v10, qword_100021CC8);
  v11 = a2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v34 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v33 = a1;
    v17 = v16;
    aBlock[0] = v16;
    *v15 = 136315138;
    v18 = [v11 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100008CF4(&qword_100020D98, &protocol conformance descriptor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v7 + 8))(v9, v6);
    v22 = sub_1000141AC(v19, v21, aBlock);

    *(v15 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "NotifyWhenFoundNotificationService: Disabling NWF on beacon: %s", v15, 0xCu);
    sub_100008A1C(v17);
    a1 = v33;

    a3 = v34;
  }

  v23 = objc_opt_self();
  v24 = [v11 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v9, v6);
  v26 = [v23 disableNotifyWhenFound:isa];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v28 = *(Strong + 80);

    v29 = swift_allocObject();
    *(v29 + 16) = a1;
    *(v29 + 24) = a3;
    aBlock[4] = sub_100009D3C;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100009EDC;
    aBlock[3] = &unk_10001CE90;
    v30 = _Block_copy(aBlock);
    v31 = a1;

    [v28 executeCommand:v26 completion:v30];

    _Block_release(v30);
    v26 = v28;
  }
}

uint64_t sub_1000052BC(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    if (qword_100020BC8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008A68(v12, qword_100021CC8);
    v5 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v5, v13, "NotifyWhenFoundNotificationService: Disabling NWF completed successfully", v14, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008A68(v4, qword_100021CC8);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24[0] = v8;
    *v7 = 136315138;
    swift_errorRetain();
    sub_1000078C0(&qword_100020DC8, &qword_100017098);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000141AC(v9, v10, v24);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "NotifyWhenFoundNotificationService: Disabling NWF completed with error - %s", v7, 0xCu);
    sub_100008A1C(v8);

LABEL_10:

    goto LABEL_12;
  }

LABEL_12:
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008A68(v15, qword_100021CC8);
  v16 = a2;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v21 = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "NotifyWhenFoundNotificationService: Showing final alert: %@", v19, 0xCu);
    sub_100009E48(v20, &qword_100020D60, &qword_100017050);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = *(result + 112);

    v23(v16);
  }

  return result;
}

uint64_t sub_10000566C(uint64_t a1, char a2)
{
  v3 = *sub_100008CB0((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t sub_1000056C8(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = type metadata accessor for UUID();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_1000057B8, 0, 0);
}

uint64_t sub_1000057B8()
{
  v26 = v0;
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[20];
  v5 = type metadata accessor for Logger();
  v0[29] = sub_100008A68(v5, qword_100021CC8);
  v6 = *(v3 + 16);
  v0[30] = v6;
  v0[31] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[28];
  v12 = v0[22];
  v11 = v0[23];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v13 = 136315138;
    sub_100008CF4(&qword_100020D98, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_1000141AC(v14, v16, &v25);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "NotifyWhenFoundNotificationService: Looking for beacon matching subscription: %s", v13, 0xCu);
    sub_100008A1C(v24);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v0[32] = v17;
  v19 = *(v0[21] + 88);
  v0[33] = v19;
  v20 = v19;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v0[34] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100005AC4;
  v22 = swift_continuation_init();
  v0[17] = sub_1000078C0(&qword_100020D90, &qword_100017068);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100006274;
  v0[13] = &unk_10001CDC8;
  v0[14] = v22;
  [v20 notificationBeaconForSubscriptionId:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100005AC4()
{

  return _swift_task_switch(sub_100005BA4, 0, 0);
}

uint64_t sub_100005BA4()
{
  v79 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  v4 = *(v0 + 240);
  v5 = *(v0 + 176);
  v6 = *(v0 + 160);
  if (!v2)
  {
    v4(*(v0 + 192), v6, v5);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 256);
    v34 = *(v0 + 192);
    v35 = *(v0 + 176);
    if (v32)
    {
      v36 = swift_slowAlloc();
      v72 = v33;
      v37 = swift_slowAlloc();
      v78 = v37;
      *v36 = 136315138;
      sub_100008CF4(&qword_100020D98, &protocol conformance descriptor for UUID);
      v77 = v3;
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      v72(v34, v35);
      v41 = sub_1000141AC(v38, v40, &v78);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "NotifyWhenFoundNotificationService: No beacon found for subscription uuid - %s.", v36, 0xCu);
      sub_100008A1C(v37);

      v2 = 0;
    }

    else
    {

      v33(v34, v35);
    }

    v3 = 0;
    goto LABEL_13;
  }

  v4(*(v0 + 216), v6, v5);
  v7 = v2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 256);
  v12 = *(v0 + 216);
  if (v10)
  {
    v71 = v9;
    v13 = *(v0 + 208);
    v14 = *(v0 + 176);
    v68 = *(v0 + 216);
    v15 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v15 = 136315650;
    log = v8;
    v16 = [v7 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100008CF4(&qword_100020D98, &protocol conformance descriptor for UUID);
    v74 = v2;
    v76 = v3;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v11(v13, v14);
    v20 = sub_1000141AC(v17, v19, &v78);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = [v7 type];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = sub_1000141AC(v22, v24, &v78);
    v2 = v74;

    *(v15 + 14) = v25;
    *(v15 + 22) = 2080;
    v3 = v76;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v11(v68, v14);
    v29 = sub_1000141AC(v26, v28, &v78);

    *(v15 + 24) = v29;
    _os_log_impl(&_mh_execute_header, log, v71, "NotifyWhenFoundNotificationService: Found beacon %s of type %s for subscription: %s", v15, 0x20u);
    swift_arrayDestroy();

    if (!v76)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v42 = *(v0 + 176);

    v11(v12, v42);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  (*(v0 + 240))(*(v0 + 200), *(v0 + 160), *(v0 + 176));
  v43 = v3;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  v46 = os_log_type_enabled(v44, v45);
  v47 = *(v0 + 256);
  if (v46)
  {
    v73 = v45;
    v48 = *(v0 + 208);
    v49 = *(v0 + 176);
    loga = *(v0 + 200);
    v50 = v43;
    v75 = v43;
    v51 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v51 = 136315394;
    v52 = [v50 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100008CF4(&qword_100020D98, &protocol conformance descriptor for UUID);
    v67 = v44;
    v53 = v2;
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    v47(v48, v49);
    v57 = v54;
    v2 = v53;
    v58 = sub_1000141AC(v57, v56, &v78);

    *(v51 + 4) = v58;
    *(v51 + 12) = 2080;
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    v47(loga, v49);
    v62 = sub_1000141AC(v59, v61, &v78);

    *(v51 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v67, v73, "NotifyWhenFoundNotificationService: Found beacon group %s for subscription: %s", v51, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v63 = *(v0 + 200);
    v64 = *(v0 + 176);

    v47(v63, v64);
  }

LABEL_13:

  v65 = *(v0 + 8);

  return v65(v2, v3);
}

uint64_t sub_100006274(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100008CB0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  v7 = *(*(*v5 + 64) + 40);
  *v7 = a2;
  v7[1] = a3;
  v8 = a2;
  v9 = a3;

  return _swift_continuation_resume(v6);
}

uint64_t sub_1000062E8(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = type metadata accessor for Date();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_100006404, 0, 0);
}

uint64_t sub_100006404()
{
  v1 = v0[20];
  v2 = *(v0[21] + 80);
  v0[28] = v2;
  sub_1000078C0(&qword_100020D40, &qword_100017030);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100016F30;
  *(v3 + 32) = v1;
  sub_100009CB4(0, &qword_100020D48, SPBeacon_ptr);
  v4 = v2;
  v5 = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[29] = isa;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000065B4;
  v7 = swift_continuation_init();
  v0[17] = sub_1000078C0(&qword_100020D50, &qword_100017038);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100006FA8;
  v0[13] = &unk_10001CD00;
  v0[14] = v7;
  [v4 locationsForBeacons:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000065B4()
{

  return _swift_task_switch(sub_100006694, 0, 0);
}

uint64_t sub_100006694()
{
  v68 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);

  v4 = [v2 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v3 + 16) && (v5 = sub_1000147D8(*(v0 + 216)), (v6 & 1) != 0))
  {
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);
    v9 = *(v0 + 192);
    v10 = *(v0 + 200);
    v11 = *(v0 + 176);
    v12 = *(v0 + 184);
    v13 = *(*(v3 + 56) + 8 * v5);
    *(v0 + 240) = v13;
    v14 = *(v8 + 8);
    v15 = v13;
    v14(v7, v10);

    v16 = v15;
    [v16 latitude];
    v18 = v17;
    [v16 longitude];
    v20 = v19;
    v21 = objc_allocWithZone(CLLocation);
    [v16 horizontalAccuracy];
    v23 = v22;
    v24 = [v16 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v9, v11);
    v26 = [v21 initWithCoordinate:isa altitude:v18 horizontalAccuracy:v20 verticalAccuracy:-1.0 timestamp:{v23, -1.0}];
    *(v0 + 248) = v26;

    if (qword_100020BC8 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 160);
    v28 = type metadata accessor for Logger();
    *(v0 + 256) = sub_100008A68(v28, qword_100021CC8);
    v29 = v27;
    v30 = v26;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = *(v0 + 160);
      v34 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v34 = 136315394;
      v35 = v33;
      v36 = [v35 description];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v40 = sub_1000141AC(v37, v39, &v67);

      *(v34 + 4) = v40;
      *(v34 + 12) = 2080;
      v41 = v30;
      v42 = [v41 description];
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v46 = sub_1000141AC(v43, v45, &v67);

      *(v34 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v31, v32, "NotifyWhenFoundNotificationService: Latest unshifted location for %s is %s.", v34, 0x16u);
      swift_arrayDestroy();
    }

    v47 = swift_task_alloc();
    *(v0 + 264) = v47;
    *v47 = v0;
    v47[1] = sub_100006C64;

    return sub_10000706C();
  }

  else
  {
    v50 = *(v0 + 208);
    v49 = *(v0 + 216);
    v51 = *(v0 + 200);

    (*(v50 + 8))(v49, v51);
    if (qword_100020BC8 != -1)
    {
      swift_once();
    }

    v52 = *(v0 + 160);
    v53 = type metadata accessor for Logger();
    sub_100008A68(v53, qword_100021CC8);
    v54 = v52;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = *(v0 + 160);
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v67 = v59;
      *v58 = 136315138;
      v60 = v57;
      v61 = [v60 description];
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v65 = sub_1000141AC(v62, v64, &v67);

      *(v58 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v55, v56, "NotifyWhenFoundNotificationService: Unable to fetch latest location for %s.", v58, 0xCu);
      sub_100008A1C(v59);
    }

    v66 = *(v0 + 8);

    return v66(0);
  }
}

uint64_t sub_100006C64(uint64_t a1)
{
  *(*v1 + 272) = a1;

  return _swift_task_switch(sub_100006D64, 0, 0);
}

uint64_t sub_100006D64()
{
  v26 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 272);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v24 = *(v0 + 248);
    v22 = *(v0 + 272);
    v23 = *(v0 + 240);
    v6 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = v6;
    v9 = [v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_1000141AC(v10, v12, &v25);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2080;
    *(v0 + 152) = v22;
    v14 = v2;
    sub_1000078C0(&qword_100020D58, &qword_100017048);
    v15 = String.init<A>(describing:)();
    v17 = sub_1000141AC(v15, v16, &v25);

    *(v7 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "NotifyWhenFoundNotificationService: Latest shifted location for %s is %s.", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v18 = *(v0 + 248);
  }

  v19 = *(v0 + 272);

  v20 = *(v0 + 8);

  return v20(v19);
}

uint64_t sub_100006FA8(uint64_t a1, uint64_t a2)
{
  v2 = *sub_100008CB0((a1 + 32), *(a1 + 56));
  type metadata accessor for UUID();
  sub_100009CB4(0, &qword_100020D80, SPBeaconLocation_ptr);
  sub_100008CF4(&qword_100020D88, &protocol conformance descriptor for UUID);
  **(*(v2 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v2);
}

uint64_t sub_10000708C()
{
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  sub_100008A68(v2, qword_100021CC8);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "NotifyWhenFoundNotificationService: Shifting Location: %@", v7, 0xCu);
    sub_100009E48(v8, &qword_100020D60, &qword_100017050);
  }

  v10 = *(v0 + 24);

  [v10 coordinate];
  v12 = v11;
  [v10 coordinate];
  v14 = v13;
  v15 = [objc_opt_self() isLocationShiftRequiredForCoordinate:{v12, v13}];
  v16 = v10;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  if (v15)
  {
    if (v19)
    {
      v20 = *(v0 + 24);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v20;
      *v22 = v20;
      v23 = v20;
      _os_log_impl(&_mh_execute_header, v17, v18, "NotifyWhenFoundNotificationService: Location shifting is required for %@.", v21, 0xCu);
      sub_100009E48(v22, &qword_100020D60, &qword_100017050);
    }

    v24 = *(v0 + 24);

    v25 = swift_task_alloc();
    *(v0 + 32) = v25;
    v25[2] = v12;
    v25[3] = v14;
    *(v25 + 4) = v24;
    v26 = swift_task_alloc();
    *(v0 + 40) = v26;
    v27 = sub_1000078C0(&qword_100020D58, &qword_100017048);
    *v26 = v0;
    v26[1] = sub_1000074D0;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000014, 0x8000000100017B80, sub_100008AA0, v25, v27);
  }

  else
  {
    v28 = *(v0 + 24);
    if (v19)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v28;
      *v30 = v28;
      v31 = v28;
      _os_log_impl(&_mh_execute_header, v17, v18, "NotifyWhenFoundNotificationService: Location shifting not required for %@.", v29, 0xCu);
      sub_100009E48(v30, &qword_100020D60, &qword_100017050);
    }

    v34 = *(v0 + 8);
    v32 = *(v0 + 24);

    return v34(v28);
  }
}

uint64_t sub_1000074D0()
{

  return _swift_task_switch(sub_1000075E8, 0, 0);
}

uint64_t sub_100007600(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100008CB0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000078C0(&qword_100020DC8, &qword_100017098);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100009CB4(0, &qword_100020DD0, CLPlacemark_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

id *sub_1000076F0()
{

  return v0;
}

uint64_t sub_100007750()
{
  sub_1000076F0();

  return _swift_deallocClassInstance(v0, 128, 7);
}

uint64_t sub_1000077B4()
{
  v1 = sub_1000078C0(&qword_100020D38, &qword_100017000);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = *v0;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_100001B90(0, 0, v3, &unk_100017010, v6);
}

uint64_t sub_1000078C0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100007908()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007948()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001A9C;

  return sub_100001A0C();
}

uint64_t sub_1000079FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000078C0(&qword_100020D38, &qword_100017000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100007A6C(uint64_t a1, void *a2, double a3, double a4)
{
  v30 = a1;
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v33 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000078C0(&qword_100020D68, &qword_100017058);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  v32 = [objc_allocWithZone(GEOLocationShifter) init];
  [a2 horizontalAccuracy];
  v15 = v14;
  v29 = *(v11 + 16);
  v29(v13, a1, v10);
  v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  v28 = *(v11 + 32);
  v28(v17 + v16, v13, v10);
  v40 = sub_100008AB0;
  v41 = v17;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_1000081FC;
  v39 = &unk_10001CD50;
  v31 = _Block_copy(&aBlock);
  v18 = a2;

  v29(v13, v30, v10);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v28(v19 + v16, v13, v10);
  v40 = sub_100008C30;
  v41 = v19;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_100009EDC;
  v39 = &unk_10001CDA0;
  v20 = _Block_copy(&aBlock);
  v21 = v18;

  sub_100009CB4(0, &qword_100020D70, OS_dispatch_queue_ptr);
  v23 = v33;
  v22 = v34;
  v24 = v35;
  (*(v34 + 104))(v33, enum case for DispatchQoS.QoSClass.default(_:), v35);
  v25 = static OS_dispatch_queue.global(qos:)();
  (*(v22 + 8))(v23, v24);
  v27 = v31;
  v26 = v32;
  [v32 shiftCoordinate:v31 accuracy:0 withCompletionHandler:v20 mustGoToNetworkCallback:v25 errorHandler:a3 callbackQueue:{a4, v15}];

  _Block_release(v20);
  _Block_release(v27);
}

uint64_t sub_100007E58(void *a1, double a2, double a3, double a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 altitude];
  v13 = v12;
  [a1 verticalAccuracy];
  v15 = v14;
  [a1 course];
  v17 = v16;
  [a1 speed];
  v19 = v18;
  v20 = [a1 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = objc_allocWithZone(CLLocation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v23 = [v21 initWithCoordinate:isa altitude:a2 horizontalAccuracy:a3 verticalAccuracy:v13 course:a4 speed:v15 timestamp:{v17, v19}];

  (*(v9 + 8))(v11, v8);
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100008A68(v24, qword_100021CC8);
  v25 = a1;
  v26 = v23;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v29 = 136315394;
    v30 = [v25 description];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = sub_1000141AC(v31, v33, &v42);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v35 = [v26 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = sub_1000141AC(v36, v38, &v42);

    *(v29 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v27, v28, "NotifyWhenFoundNotificationService: Shifted Location from %s to %s", v29, 0x16u);
    swift_arrayDestroy();
  }

  v42 = v26;
  sub_1000078C0(&qword_100020D68, &qword_100017058);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1000081FC(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);

  v7(v8, a2, a3, a4);
}

uint64_t sub_100008268(uint64_t a1, void *a2)
{
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100008A68(v3, qword_100021CC8);
  v4 = a2;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 138412546;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    v10 = v4;
    swift_errorRetain();
    sub_1000078C0(&qword_100020D78, &qword_100017060);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000141AC(v11, v12, &v15);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "NotifyWhenFoundNotificationService: Failed to shift location %@ - Error: %s", v7, 0x16u);
    sub_100009E48(v8, &qword_100020D60, &qword_100017050);

    sub_100008A1C(v9);
  }

  v15 = 0;
  sub_1000078C0(&qword_100020D68, &qword_100017058);
  return CheckedContinuation.resume(returning:)();
}

void sub_100008474(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100008528(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100008620;

  return v6(a1);
}

uint64_t sub_100008620()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100008718()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008750(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009ED0;

  return sub_100008528(a1, v4);
}

uint64_t sub_100008808(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100001A9C;

  return sub_100008528(a1, v4);
}

void *sub_1000088C0(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = 0xD000000000000016;
  v3[3] = 0x8000000100017AC0;
  v3[4] = 0xD000000000000018;
  v3[5] = 0x8000000100017AE0;
  v3[6] = 0xD000000000000021;
  v3[7] = 0x8000000100017B00;
  v3[8] = 0xD000000000000026;
  v3[9] = 0x8000000100017B30;
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;

  v3[12] = [a1 content];
  v3[11] = [objc_allocWithZone(SPBeaconManager) init];
  v3[10] = [objc_allocWithZone(SPOwnerSession) init];
  return v3;
}

uint64_t sub_1000089B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100008A1C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100008A68(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100008AB0(double a1, double a2, double a3)
{
  sub_1000078C0(&qword_100020D68, &qword_100017058);
  v7 = *(v3 + 16);

  return sub_100007E58(v7, a1, a2, a3);
}

double sub_100008B48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100008B60()
{
  v1 = sub_1000078C0(&qword_100020D68, &qword_100017058);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100008C30(uint64_t a1)
{
  sub_1000078C0(&qword_100020D68, &qword_100017058);
  v3 = *(v1 + 16);

  return sub_100008268(a1, v3);
}

void *sub_100008CB0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100008CF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100008D38()
{
  result = qword_100020DB0;
  if (!qword_100020DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020DB0);
  }

  return result;
}

uint64_t sub_100008DE0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008E6C(__objc2_class_ro *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v59 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = a1;
    v11 = a2;
    v12 = [v11 beaconMap];
    sub_100009CB4(0, &qword_100020DD8, SPPairingState_ptr);
    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = *(v13 + 16);

    if (v14 == 1)
    {
      v15 = [v11 name];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      a1 = v10;
      if ((v18 & 0x2000000000000000) != 0)
      {
        goto LABEL_4;
      }

LABEL_7:
      if ((v16 & 0xFFFFFFFFFFFFLL) != 0)
      {
        return v16;
      }

      goto LABEL_8;
    }

    a1 = v10;
    v34 = [(__objc2_class_ro *)v10 accessoryProductInfo];
    if (v34)
    {
      v35 = v34;
      v36 = [v34 layoutTemplate];

      if (v36)
      {
        sub_100009CB4(0, &qword_100020DE0, SPAccessoryLayoutTemplate_ptr);
        v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v57 = a3;
        v58 = a4;
        v56 = v11;
        if (v37 >> 62)
        {
          v38 = _CocoaArrayWrapper.endIndex.getter();
          if (v38)
          {
LABEL_17:
            v39 = 0;
            a4 = v37 & 0xC000000000000001;
            a3 = v37 & 0xFFFFFFFFFFFFFF8;
            a1 = &NotifyWhenFoundNotificationService;
            while (1)
            {
              if (a4)
              {
                v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_28;
                }

                v40 = *(v37 + 8 * v39 + 32);
              }

              v41 = v40;
              v42 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                break;
              }

              v43 = [v40 partIdentifier];
              if ([(__objc2_class_ro *)v10 partIdentifier]== v43)
              {

                v44 = [v41 partName];
                v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v47 = v46;

                a3 = v57;
                a4 = v58;
                a1 = v10;
                v11 = v56;
                v48 = &NotifyWhenFoundNotificationService;
                goto LABEL_33;
              }

              ++v39;
              if (v42 == v38)
              {
                goto LABEL_31;
              }
            }

            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }
        }

        else
        {
          v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v38)
          {
            goto LABEL_17;
          }
        }

LABEL_31:

        a3 = v57;
        a4 = v58;
        a1 = v10;
        v11 = v56;
      }
    }

    v48 = &NotifyWhenFoundNotificationService;
    v44 = [(__objc2_class_ro *)a1 name:v56];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v49;
LABEL_33:

    v50 = [v11 v48[26].ivar_lyt];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    v62 = v51;
    v63 = v53;
    v54._countAndFlagsBits = 2108704;
    v54._object = 0xE300000000000000;
    String.append(_:)(v54);
    v55._countAndFlagsBits = v45;
    v55._object = v47;
    String.append(_:)(v55);

    v16 = v62;
    v18 = v63;
    if ((v63 & 0x2000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v19 = [(__objc2_class_ro *)a1 name];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v20;

    if ((v18 & 0x2000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

LABEL_4:
  if ((v18 & 0xF00000000000000) != 0)
  {
    return v16;
  }

LABEL_8:

  if (qword_100020BC8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100008A68(v21, qword_100021CC8);
  v22 = a1;

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v25 = 136315394;
    v26 = [(__objc2_class_ro *)v22 identifier];
    v27 = v59;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100008CF4(&qword_100020D98, &protocol conformance descriptor for UUID);
    v28 = v61;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v60 + 8))(v27, v28);
    v32 = sub_1000141AC(v29, v31, &v62);

    *(v25 + 4) = v32;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_1000141AC(a3, a4, &v62);
    _os_log_impl(&_mh_execute_header, v23, v24, "NotifyWhenFoundNotificationService: Beacon name for %s is empty, using fallback name %s.", v25, 0x16u);
    swift_arrayDestroy();
  }

  return a3;
}

uint64_t sub_100009458()
{
  v1 = v0[19];
  v2 = [objc_allocWithZone(CLGeocoder) init];
  v0[20] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000095A0;
  v3 = swift_continuation_init();
  v0[17] = sub_1000078C0(&qword_100020DC0, &qword_100017090);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100007600;
  v0[13] = &unk_10001CE40;
  v0[14] = v3;
  [v2 reverseGeocodeLocation:v1 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000095A0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_100009AB8;
  }

  else
  {
    v2 = sub_1000096B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000096B0()
{
  v43 = v0;
  v1 = v0[18];
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_6;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = *(v1 + 32);
LABEL_6:
      v3 = v2;

      if (qword_100020BC8 != -1)
      {
        swift_once();
      }

      v4 = v0[19];
      v5 = type metadata accessor for Logger();
      sub_100008A68(v5, qword_100021CC8);
      v6 = v4;
      v7 = v3;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      v10 = os_log_type_enabled(v8, v9);
      v11 = v0[20];
      if (v10)
      {
        v12 = v0[19];
        v41 = v0[20];
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v42 = v40;
        *v13 = 136315394;
        v15 = v12;
        v16 = [v15 description];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = sub_1000141AC(v17, v19, &v42);

        *(v13 + 4) = v20;
        *(v13 + 12) = 2112;
        *(v13 + 14) = v7;
        *v14 = v7;
        v21 = v7;
        _os_log_impl(&_mh_execute_header, v8, v9, "NotifyWhenFoundNotificationService: Reverse-geocoding result for %s is %@.", v13, 0x16u);
        sub_100009E48(v14, &qword_100020D60, &qword_100017050);

        sub_100008A1C(v40);

        v11 = v41;
      }

      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (qword_100020BC8 != -1)
  {
LABEL_21:
    swift_once();
  }

  v22 = v0[19];
  v23 = type metadata accessor for Logger();
  sub_100008A68(v23, qword_100021CC8);
  v24 = v22;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v0[20];
  if (v27)
  {
    v29 = v0[19];
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42 = v31;
    *v30 = 136315138;
    v32 = v29;
    v33 = [v32 description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = sub_1000141AC(v34, v36, &v42);

    *(v30 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v25, v26, "NotifyWhenFoundNotificationService: No reverse-geocoding results found for %s.", v30, 0xCu);
    sub_100008A1C(v31);
  }

  v7 = 0;
LABEL_16:
  v38 = v0[1];

  return v38(v7);
}

uint64_t sub_100009AB8()
{
  v15 = v0;
  swift_willThrow();
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008A68(v1, qword_100021CC8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[20];
  v5 = v0[21];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v0[10] = v5;
    swift_errorRetain();
    sub_1000078C0(&qword_100020DC8, &qword_100017098);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000141AC(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "NotifyWhenFoundNotificationService: Reverse-geocoding failed with error %s.", v7, 0xCu);
    sub_100008A1C(v8);
  }

  else
  {
  }

  v12 = v0[1];

  return v12(0);
}

_OWORD *sub_100009CA4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100009CB4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100009CFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100009D44()
{
  result = qword_100020DE8;
  if (!qword_100020DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020DE8);
  }

  return result;
}

uint64_t sub_100009D98(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100009E48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000078C0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100009EE0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 7565409;
    v7 = 0x7472656C61;
    v8 = 0x736772612D636F6CLL;
    if (a1 != 3)
    {
      v8 = 0x6469646E65697266;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (!a1)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 1684632949;
    v2 = 0x49555570756F7267;
    if (a1 != 9)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6553646E65697266;
    v4 = 0x6E6F697461636F6CLL;
    if (a1 != 6)
    {
      v4 = 0x6552646E65697266;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10000A070(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x79656B2D636F6CLL;
    }

    else
    {
      v3 = 2036625250;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x736772612D636F6CLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000011;
    v4 = 0x80000001000179C0;
  }

  else
  {
    v3 = 0x2D7972616D6D7573;
    v4 = 0xEB00000000677261;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x79656B2D636F6CLL;
    }

    else
    {
      v6 = 2036625250;
    }

    if (a2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x736772612D636F6CLL)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001000179C0;
    if (v3 != 0xD000000000000011)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEB00000000677261;
    if (v3 != 0x2D7972616D6D7573)
    {
LABEL_31:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_10000A21C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6F4C796150666D66;
    }

    else
    {
      v4 = 7565409;
    }

    if (v2)
    {
      v3 = 0xEA00000000006461;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x70416E49776F6873;
    v3 = 0xEE007472656C4170;
  }

  else if (a1 == 3)
  {
    v3 = 0xE300000000000000;
    v4 = 7107189;
  }

  else
  {
    v4 = 0x696669746E656469;
    v3 = 0xEA00000000007265;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6F4C796150666D66;
    }

    else
    {
      v9 = 7565409;
    }

    if (a2)
    {
      v8 = 0xEA00000000006461;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v6 = 7107189;
    if (a2 != 3)
    {
      v6 = 0x696669746E656469;
      v5 = 0xEA00000000007265;
    }

    if (a2 == 2)
    {
      v7 = 0x70416E49776F6873;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xEE007472656C4170;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_10000A3C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7472656C61;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x79726F6765746163;
    }

    else
    {
      v4 = 0x646E756F73;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6567646162;
    }

    else
    {
      v4 = 0x7472656C61;
    }

    v5 = 0xE500000000000000;
  }

  v6 = 0xE800000000000000;
  v7 = 0x79726F6765746163;
  if (a2 != 2)
  {
    v7 = 0x646E756F73;
    v6 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6567646162;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t PushPayload.payload.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t PushPayload.url.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t PushPayload.identifier.getter()
{
  v1 = *(v0 + 152);

  return v1;
}

Swift::Int sub_10000A604()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000A6F0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10000A7C8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10000A8B0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000B594(*a1);
  *a2 = result;
  return result;
}

void sub_10000A8E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7565409;
  v5 = 0xEE007472656C4170;
  v6 = 0x70416E49776F6873;
  v7 = 0xE300000000000000;
  v8 = 7107189;
  if (v2 != 3)
  {
    v8 = 0x696669746E656469;
    v7 = 0xEA00000000007265;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6F4C796150666D66;
    v3 = 0xEA00000000006461;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_10000A988()
{
  v1 = *v0;
  v2 = 7565409;
  v3 = 0x70416E49776F6873;
  v4 = 7107189;
  if (v1 != 3)
  {
    v4 = 0x696669746E656469;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F4C796150666D66;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10000AA2C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10000B594(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000AA6C(uint64_t a1)
{
  v2 = sub_10000C748();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000AAA8(uint64_t a1)
{
  v2 = sub_10000C748();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 PushPayload.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10000B5E0(a2, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v5;
    *(a1 + 160) = v10;
    v6 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v6;
    v7 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v7;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
    result = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t PushAPSData.category.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t PushAPSData.sound.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

Swift::Int sub_10000ABE0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000AC94(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10000AD34(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10000ADE4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000BA24(*a1);
  *a2 = result;
  return result;
}

void sub_10000AE14(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7472656C61;
  v4 = 0xE800000000000000;
  v5 = 0x79726F6765746163;
  if (*v1 != 2)
  {
    v5 = 0x646E756F73;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6567646162;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10000AE84()
{
  v1 = 0x7472656C61;
  v2 = 0x79726F6765746163;
  if (*v0 != 2)
  {
    v2 = 0x646E756F73;
  }

  if (*v0)
  {
    v1 = 0x6567646162;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10000AEF0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10000BA24(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000AF24(uint64_t a1)
{
  v2 = sub_10000C608();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000AF60(uint64_t a1)
{
  v2 = sub_10000C608();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 PushAPSData.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10000BA70(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v7[6];
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t PushAlert.body.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PushAlert.locKey.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PushAlert.summaryArg.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

Swift::Int sub_10000B09C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000B184(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10000B258(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10000B33C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000BDBC(*a1);
  *a2 = result;
  return result;
}

void sub_10000B36C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 2036625250;
  v5 = 0xE800000000000000;
  v6 = 0x736772612D636F6CLL;
  v7 = 0x80000001000179C0;
  v8 = 0xD000000000000011;
  if (v2 != 3)
  {
    v8 = 0x2D7972616D6D7573;
    v7 = 0xEB00000000677261;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x79656B2D636F6CLL;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_10000B410()
{
  v1 = *v0;
  v2 = 2036625250;
  v3 = 0x736772612D636F6CLL;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x2D7972616D6D7573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x79656B2D636F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10000B4B0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10000BDBC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000B4D8(uint64_t a1)
{
  v2 = sub_10000C488();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000B514(uint64_t a1)
{
  v2 = sub_10000C488();

  return CodingKey.debugDescription.getter(a1, v2);
}

double PushAlert.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10000BE08(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

unint64_t sub_10000B594(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10001CAB0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10000B5E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000078C0(&qword_100020E40, &qword_100017330);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v9 = a1[3];
  v31 = a1;
  sub_100008CB0(a1, v9);
  sub_10000C748();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100008A1C(v31);
  }

  v10 = v6;
  v65 = 0;
  sub_10000C79C();
  v11 = v5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v60 = v53;
  v61 = v54;
  v62 = v55;
  v56 = v49;
  v57 = v50;
  v58 = v51;
  v59 = v52;
  LOBYTE(v43[0]) = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v30 + 1) = v13;
  v14 = v12;
  LOBYTE(v43[0]) = 2;
  v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *&v30 = v14;
  LOBYTE(v43[0]) = 3;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  v29 = v15;
  v64 = 4;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = v19;
  (*(v10 + 8))(v8, v11);
  v36 = v60;
  v37 = v61;
  v38 = v62;
  v32 = v56;
  v33 = v57;
  v34 = v58;
  v35 = v59;
  v21 = v30;
  v39 = v30;
  v22 = v63;
  LOBYTE(v40) = v63;
  *(&v40 + 1) = v29;
  *&v41 = v17;
  *(&v41 + 1) = v18;
  v42 = v20;
  sub_10000C7F0(&v32, v43);
  sub_100008A1C(v31);
  v43[4] = v60;
  v43[5] = v61;
  v43[6] = v62;
  v43[0] = v56;
  v43[1] = v57;
  v43[2] = v58;
  v43[3] = v59;
  v43[7] = v21;
  v44 = v22;
  v45 = v29;
  v46 = v17;
  v47 = v18;
  v48 = v20;
  result = sub_100008D8C(v43);
  v24 = v41;
  *(a2 + 128) = v40;
  *(a2 + 144) = v24;
  *(a2 + 160) = v42;
  v25 = v37;
  *(a2 + 64) = v36;
  *(a2 + 80) = v25;
  v26 = v39;
  *(a2 + 96) = v38;
  *(a2 + 112) = v26;
  v27 = v33;
  *a2 = v32;
  *(a2 + 16) = v27;
  v28 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v28;
  return result;
}

uint64_t sub_10000B9B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000078C0(&qword_100020E00, &qword_100017110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000BA24(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10001CB48, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10000BA70@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v51 = sub_1000078C0(&qword_100020E28, &qword_100017328);
  v5 = *(v51 - 8);
  __chkstk_darwin(v51);
  v7 = &v25 - v6;
  sub_100008CB0(a1, a1[3]);
  sub_10000C608();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100008A1C(a1);
  }

  v8 = v5;
  v44 = 0;
  sub_10000C65C();
  v9 = v51;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v47 = v45[0];
  v48 = v45[1];
  v49 = v45[2];
  v50 = v45[3];
  LOBYTE(v36[0]) = 1;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v46 = v10 & 1;
  LOBYTE(v36[0]) = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v27 = v11;
  v43 = 3;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = *(v8 + 8);
  v26 = v14;
  v17 = v16;
  v15(v7, v9);
  v29 = v47;
  v30 = v48;
  v31 = v49;
  v32 = v50;
  v18 = v27;
  v19 = v28;
  *&v33 = v28;
  v20 = v46;
  BYTE8(v33) = v46;
  *&v34 = v27;
  *(&v34 + 1) = v13;
  *&v35 = v26;
  *(&v35 + 1) = v17;
  sub_10000A528(&v29, v36);
  sub_100008A1C(a1);
  v36[0] = v47;
  v36[1] = v48;
  v36[2] = v49;
  v36[3] = v50;
  v37 = v19;
  v38 = v20;
  v39 = v18;
  v40 = v13;
  v41 = v26;
  v42 = v17;
  result = sub_10000C718(v36);
  v22 = v34;
  a2[4] = v33;
  a2[5] = v22;
  a2[6] = v35;
  v23 = v30;
  *a2 = v29;
  a2[1] = v23;
  v24 = v32;
  a2[2] = v31;
  a2[3] = v24;
  return result;
}

unint64_t sub_10000BDBC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10001CBC8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10000BE08@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000078C0(&qword_100020E08, &qword_100017318);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  sub_100008CB0(a1, a1[3]);
  sub_10000C488();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100008A1C(a1);
  }

  LOBYTE(v36[0]) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v30 = v9;
  LOBYTE(v36[0]) = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = v13;
  v27 = v12;
  v29 = v11;
  sub_1000078C0(&qword_100020E18, &qword_100017320);
  LOBYTE(v32) = 2;
  v28 = sub_10000C4DC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v26 = v36[0];
  LOBYTE(v32) = 3;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v28 = v36[0];
  v37 = 4;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v29;
  v16 = v14;
  v18 = v17;
  (*(v6 + 8))(v8, v5);
  v19 = v30;
  *&v32 = v30;
  *(&v32 + 1) = v15;
  v20 = v27;
  *&v33 = v27;
  *(&v33 + 1) = v31;
  v21 = v26;
  *&v34 = v26;
  *(&v34 + 1) = v28;
  *&v35 = v16;
  *(&v35 + 1) = v18;
  sub_10000C5A0(&v32, v36);
  sub_100008A1C(a1);
  v36[0] = v19;
  v36[1] = v15;
  v36[2] = v20;
  v36[3] = v31;
  v36[4] = v21;
  v36[5] = v28;
  v36[6] = v16;
  v36[7] = v18;
  result = sub_10000C5D8(v36);
  v23 = v33;
  *a2 = v32;
  a2[1] = v23;
  v24 = v35;
  a2[2] = v34;
  a2[3] = v24;
  return result;
}

uint64_t sub_10000C1E0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10000C1F8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_10000C234(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000C27C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10000C2F4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_10000C318(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000C360(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10000C3CC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000C3E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000C428(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000C488()
{
  result = qword_100020E10;
  if (!qword_100020E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E10);
  }

  return result;
}

unint64_t sub_10000C4DC()
{
  result = qword_100020E20;
  if (!qword_100020E20)
  {
    sub_10000C558(&qword_100020E18, &qword_100017320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E20);
  }

  return result;
}

uint64_t sub_10000C558(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000C608()
{
  result = qword_100020E30;
  if (!qword_100020E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E30);
  }

  return result;
}

unint64_t sub_10000C65C()
{
  result = qword_100020E38;
  if (!qword_100020E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E38);
  }

  return result;
}

uint64_t sub_10000C6B0(uint64_t a1)
{
  v2 = sub_1000078C0(&qword_100020E00, &qword_100017110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000C748()
{
  result = qword_100020E48;
  if (!qword_100020E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E48);
  }

  return result;
}

unint64_t sub_10000C79C()
{
  result = qword_100020E50;
  if (!qword_100020E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PushAPSData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PushAPSData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000C9B4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10000CA44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000CB08()
{
  result = qword_100020E58;
  if (!qword_100020E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E58);
  }

  return result;
}

unint64_t sub_10000CB60()
{
  result = qword_100020E60;
  if (!qword_100020E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E60);
  }

  return result;
}

unint64_t sub_10000CBB8()
{
  result = qword_100020E68;
  if (!qword_100020E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E68);
  }

  return result;
}

unint64_t sub_10000CC10()
{
  result = qword_100020E70;
  if (!qword_100020E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E70);
  }

  return result;
}

unint64_t sub_10000CC68()
{
  result = qword_100020E78;
  if (!qword_100020E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E78);
  }

  return result;
}

unint64_t sub_10000CCC0()
{
  result = qword_100020E80;
  if (!qword_100020E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E80);
  }

  return result;
}

unint64_t sub_10000CD18()
{
  result = qword_100020E88;
  if (!qword_100020E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E88);
  }

  return result;
}

unint64_t sub_10000CD70()
{
  result = qword_100020E90;
  if (!qword_100020E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E90);
  }

  return result;
}

unint64_t sub_10000CDC8()
{
  result = qword_100020E98;
  if (!qword_100020E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020E98);
  }

  return result;
}

uint64_t sub_10000CE30()
{
  sub_10000D61C();
  sub_1000078C0(&qword_100020DA8, &qword_100017078);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100016F10;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_100008D38();
  *(v0 + 32) = 0xD000000000000029;
  *(v0 + 40) = 0x8000000100017CC0;
  result = NSPredicate.init(format:_:)();
  static String.emailPredicate = result;
  return result;
}

uint64_t *String.emailPredicate.unsafeMutableAddressor()
{
  if (qword_100020BC0 != -1)
  {
    swift_once();
  }

  return &static String.emailPredicate;
}

id static String.emailPredicate.getter()
{
  if (qword_100020BC0 != -1)
  {
    swift_once();
  }

  v1 = static String.emailPredicate;

  return v1;
}

BOOL String.isPhoneNumber.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v20 - v10;
  __chkstk_darwin(v9);
  v13 = v20 - v12;
  CharacterSet.init(charactersIn:)();
  static CharacterSet.decimalDigits.getter();
  CharacterSet.formUnion(_:)();
  static CharacterSet.controlCharacters.getter();
  CharacterSet.formUnion(_:)();
  v14 = *(v5 + 8);
  v14(v8, v4);
  static CharacterSet.whitespacesAndNewlines.getter();
  CharacterSet.formUnion(_:)();
  v14(v8, v4);
  v20[0] = a1;
  v20[1] = a2;
  sub_10000D1C4();
  v20[0] = StringProtocol.components(separatedBy:)();
  sub_1000078C0(&qword_100020E18, &qword_100017320);
  sub_10000D218();
  v15 = BidirectionalCollection<>.joined(separator:)();
  v17 = v16;

  v14(v11, v4);
  v14(v13, v4);

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  return v18 != 0;
}

unint64_t sub_10000D1C4()
{
  result = qword_100020EA0;
  if (!qword_100020EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020EA0);
  }

  return result;
}

unint64_t sub_10000D218()
{
  result = qword_100020EA8;
  if (!qword_100020EA8)
  {
    sub_10000C558(&qword_100020E18, &qword_100017320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020EA8);
  }

  return result;
}

id String.isEmail.getter()
{
  if (qword_100020BC0 != -1)
  {
    swift_once();
  }

  v0 = static String.emailPredicate;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 evaluateWithObject:v1];

  return v2;
}

uint64_t String.sanitized.getter(uint64_t a1, unint64_t a2)
{
  v4._countAndFlagsBits = 0x3A6F746C69616DLL;
  v4._object = 0xE700000000000000;
  v5 = String.hasPrefix(_:)(v4);

  if (v5)
  {
    v6 = String.count.getter();
    sub_10000D56C(v6, a1, a2);

    a1 = static String._fromSubstring(_:)();
    a2 = v7;
  }

  v8._countAndFlagsBits = 980182388;
  v8._object = 0xE400000000000000;
  if (String.hasPrefix(_:)(v8))
  {
    v9 = String.count.getter();
    sub_10000D56C(v9, a1, a2);

    a1 = static String._fromSubstring(_:)();
  }

  return a1;
}

Swift::String __swiftcall String.deletingPrefix(_:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  v5 = String.hasPrefix(_:)(a1);

  if (v5)
  {
    v6 = String.count.getter();
    sub_10000D56C(v6, v4, v3);

    v4 = static String._fromSubstring(_:)();
    v3 = v7;
  }

  v8 = v4;
  v9 = v3;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_10000D56C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return String.subscript.getter();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = String.index(_:offsetBy:limitedBy:)();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

unint64_t sub_10000D61C()
{
  result = qword_100020EB0;
  if (!qword_100020EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100020EB0);
  }

  return result;
}

BOOL sub_10000D668(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return 0;
  }

  static CharacterSet.decimalDigits.getter();
  CharacterSet.insert(_:)();
  v9 = sub_10000DB90(a1, a2, v7);
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

    return 1;
  }

  if (v9 != a1 || v11 != a2)
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v14 & 1) == 0;
  }

  return 0;
}

id sub_10000D824(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a4(v5);

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

id FMPhoneNumberUtil.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FMPhoneNumberUtil.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPhoneNumberUtil();
  return objc_msgSendSuper2(&v2, "init");
}

id FMPhoneNumberUtil.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPhoneNumberUtil();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000DB90(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v25 = a3;
  v6 = type metadata accessor for CharacterSet();
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  v10 = HIBYTE(a2) & 0xF;
  v29 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v24 = v10;
  if (v10)
  {
    v11 = 0;
    v23 = a2 & 0xFFFFFFFFFFFFFFLL;
    v21[1] = v3;
    v22 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v12 = (v7 + 16);
    v13 = (v7 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v17 = v16;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v26[0] = v29;
          v26[1] = v23;
          v15 = v26 + v11;
        }

        else
        {
          v14 = v22;
          if ((v29 & 0x1000000000000000) == 0)
          {
            v14 = _StringObject.sharedUTF8.getter();
          }

          v15 = (v14 + v11);
        }

        if ((*v15 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v19 = (__clz(*v15 ^ 0xFF) - 24);
        if (v19 <= 2)
        {
          if (v19 != 1)
          {
            v17 = 2;
            goto LABEL_15;
          }

LABEL_14:
          v17 = 1;
          goto LABEL_15;
        }

        if (v19 == 3)
        {
          v17 = 3;
        }

        else
        {
          v17 = 4;
        }
      }

LABEL_15:
      (*v12)(v9, v25, v6);
      v18 = CharacterSet.contains(_:)();
      (*v13)(v9, v6);
      if (v18)
      {
        String.UnicodeScalarView.append(_:)();
      }

      v11 += v17;
      if (v11 >= v24)
      {
        return v27;
      }
    }
  }

  return 0;
}

uint64_t sub_10000DE14()
{
  result = CPPhoneNumberCopyHomeCountryCode();
  if (!result)
  {
    __break(1u);
    goto LABEL_27;
  }

  v1 = result;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = v4 & 0x2000000000000000;
  v6 = HIBYTE(v4) & 0xF;
  v7 = v2 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v8 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    result = CPPhoneNumberCopyActiveCountryCode();
    if (result)
    {
      v9 = result;

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v5 = v11 & 0x2000000000000000;
      v6 = HIBYTE(v11) & 0xF;
      v7 = v2 & 0xFFFFFFFFFFFFLL;
      goto LABEL_8;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_8:
  if (v5)
  {
    v12 = v6;
  }

  else
  {
    v12 = v7;
  }

  if (!v12)
  {
    result = CPPhoneNumberCopyNetworkCountryCode();
    if (result)
    {
      v13 = result;

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v5 = v15 & 0x2000000000000000;
      v6 = HIBYTE(v15) & 0xF;
      v7 = v2 & 0xFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_14:
  if (v5)
  {
    v16 = v6;
  }

  else
  {
    v16 = v7;
  }

  if (v16)
  {
    goto LABEL_20;
  }

  result = CPPhoneNumberCopyLastKnownNetworkCountryCode();
  if (!result)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v17 = result;

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v5 = v19 & 0x2000000000000000;
  v6 = HIBYTE(v19) & 0xF;
  v7 = v2 & 0xFFFFFFFFFFFFLL;
LABEL_20:
  if (v5)
  {
    v20 = v6;
  }

  else
  {
    v20 = v7;
  }

  if (!v20)
  {

    return 29557;
  }

  return v2;
}

uint64_t sub_10000DF50(uint64_t a1, uint64_t a2)
{
  sub_10000DE14();
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();

  v5 = CFPhoneNumberCreate();

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  String = CFPhoneNumberCreateString();
  if (!String)
  {

LABEL_5:

    return a1;
  }

  v8 = String;
  a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return a1;
}

uint64_t sub_10000E040(uint64_t a1, uint64_t a2)
{
  if (qword_100020BC0 != -1)
  {
    swift_once();
  }

  v4 = static String.emailPredicate;
  v5 = String._bridgeToObjectiveC()();
  LOBYTE(v4) = [v4 evaluateWithObject:v5];

  if (v4)
  {
  }

  else
  {
    a1 = sub_10000DF50(a1, a2);
    v7 = v6;

    v8._countAndFlagsBits = 43;
    v8._object = 0xE100000000000000;
    v9 = String.hasPrefix(_:)(v8);

    if (!v9 && String.count.getter() >= 2)
    {
      v10._countAndFlagsBits = a1;
      v10._object = v7;
      String.append(_:)(v10);

      return 43;
    }
  }

  return a1;
}

uint64_t sub_10000E170(uint64_t a1, unint64_t a2, char a3)
{
  v5 = type metadata accessor for CharacterSet();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CharacterSet.decimalDigits.getter();
  v9._countAndFlagsBits = 0x2D232A29282BLL;
  v9._object = 0xE600000000000000;
  CharacterSet.insert(charactersIn:)(v9);
  v29 = a1;
  v30 = a2;
  sub_10000D1C4();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  if (v10)
  {

    v11 = a1;
    v12 = a2;
  }

  else
  {
    v29 = a1;
    v30 = a2;
    v13 = String.Index.utf16Offset<A>(in:)();
    result = String.count.getter();
    v15 = result - v13;
    if (__OFSUB__(result, v13))
    {
      __break(1u);
      return result;
    }

    v16 = String._bridgeToObjectiveC()();
    v17 = [v16 substringWithRange:{v13, v15}];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v18;
  }

  v19 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v19 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v28 = v5;
    sub_10000DE14();
    v20 = String._bridgeToObjectiveC()();
    v21 = String._bridgeToObjectiveC()();

    v22 = CFPhoneNumberCreate();

    if (v22)
    {
      v23 = v22;
      String = CFPhoneNumberCreateString();
      v25 = v28;
      if (String)
      {
        v26 = String;

        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v6 + 8))(v8, v25);
      }

      else
      {
        (*(v6 + 8))(v8, v28);
      }
    }

    else
    {
      (*(v6 + 8))(v8, v28);
    }
  }

  else
  {
    (*(v6 + 8))(v8, v5);
  }

  return v11;
}

void sub_10000E458()
{
  v1 = v0;
  v2 = sub_1000078C0(&qword_100020D38, &qword_100017000);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = [*(v0 + 16) userInfo];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = 0x6F4C796150666D66;
  v30 = 0xEA00000000006461;
  AnyHashable.init<A>(_:)();
  if (*(v6 + 16) && (v7 = sub_100014870(v31), (v8 & 1) != 0))
  {
    sub_1000089B8(*(v6 + 56) + 32 * v7, v32);
    sub_100008E18(v31);

    if (swift_dynamicCast())
    {
      v9 = v29;
      v10 = v30;
      v11 = type metadata accessor for TaskPriority();
      (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v1;
      v12[5] = v9;
      v12[6] = v10;

      sub_100001B90(0, 0, v4, &unk_100017820, v12);

      return;
    }
  }

  else
  {

    sub_100008E18(v31);
  }

  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008A68(v13, qword_100021CC8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "FenceNotificationContentService: No subscription identifier. Nothing else to do.", v16, 2u);
  }

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31[0] = v20;
    *v19 = 136315138;
    v21 = [*(v1 + 16) body];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = sub_1000141AC(v22, v24, v31);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "FenceNotificationContentService: Completing with best attempt %s", v19, 0xCu);
    sub_100008A1C(v20);
  }

  v26 = *(v1 + 32);
  v27 = *(v1 + 16);
  v26();
}

uint64_t sub_10000E830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100001A9C;

  return sub_10000E8DC(a5, a6);
}

uint64_t sub_10000E8DC(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  sub_1000078C0(&unk_100021040, &unk_1000177F0);
  v3[36] = swift_task_alloc();
  v4 = type metadata accessor for Handle();
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v5 = type metadata accessor for DecodedLocationNotification();
  v3[41] = v5;
  v3[42] = *(v5 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();

  return _swift_task_switch(sub_10000EA78, 0, 0);
}

uint64_t sub_10000EA78()
{
  v1 = v0;
  v2 = swift_task_alloc();
  v1[45] = v2;
  *v2 = v1;
  v2[1] = sub_10000EB50;
  v3 = v1[44];
  v4 = v1[33];
  v5 = v1[34];

  return Session.decryptNotification(encryptedPayload:)(v3, v4, v5);
}

uint64_t sub_10000EB50()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_10000F4CC;
  }

  else
  {
    v2 = sub_10000EC90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000EC90()
{
  v82 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 288);
  DecodedLocationNotification.handle.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100009E48(*(v0 + 288), &unk_100021040, &unk_1000177F0);
LABEL_9:
    v20 = objc_opt_self();
    v21 = DecodedLocationNotification.location.getter();
    *(v0 + 232) = v21;
    sub_1000078C0(&qword_100020D58, &qword_100017048);
    v22 = Optional._bridgeToObjectiveC()();

    *(v0 + 240) = 0;
    v23 = [v20 archivedDataWithRootObject:v22 requiringSecureCoding:1 error:v0 + 240];
    swift_unknownObjectRelease();
    v24 = *(v0 + 240);
    if (v23)
    {
      v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v26;
      v80 = v25;
    }

    else
    {
      v27 = v24;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v78 = 0xF000000000000000;
      v80 = 0;
    }

    if (qword_100020BC8 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 344);
    v28 = *(v0 + 352);
    v31 = *(v0 + 328);
    v30 = *(v0 + 336);
    v32 = type metadata accessor for Logger();
    sub_100008A68(v32, qword_100021CC8);
    (*(v30 + 16))(v29, v28, v31);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    v35 = os_log_type_enabled(v33, v34);
    v37 = *(v0 + 336);
    v36 = *(v0 + 344);
    v38 = *(v0 + 328);
    if (v35)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v81 = v40;
      *v39 = 136315138;
      *(v0 + 256) = DecodedLocationNotification.location.getter();
      v41 = String.init<A>(describing:)();
      v43 = v42;
      v76 = *(v37 + 8);
      v76(v36, v38);
      v44 = sub_1000141AC(v41, v43, &v81);

      *(v39 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v33, v34, "FenceNotificationContentService: Successfully replaced payload with location: %s.", v39, 0xCu);
      sub_100008A1C(v40);
    }

    else
    {

      v76 = *(v37 + 8);
      v76(v36, v38);
    }

    v45 = *(v0 + 280);
    [*(v45 + 16) mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000F830();
    if (swift_dynamicCast())
    {
      v46 = *(v0 + 248);
      *(v0 + 208) = 0x6E6F697461636F6CLL;
      *(v0 + 216) = 0xE800000000000000;
      AnyHashable.init<A>(_:)();
      if (v78 >> 60 == 15)
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(v0 + 104) = 0;
        v50 = v80;
      }

      else
      {
        v49 = &type metadata for Data;
        v50 = v80;
        v47 = v80;
        v48 = v78;
      }

      *(v0 + 88) = v47;
      *(v0 + 96) = v48;
      *(v0 + 112) = v49;
      v58 = [v46 userInfo];
      v59 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (v78 >> 60 == 15)
      {
        sub_100009E48(v0 + 88, &qword_100021058, &qword_100017800);
        sub_10000F8F8(v0 + 16, (v0 + 120));
        sub_100009E48(v0 + 120, &qword_100021058, &qword_100017800);
      }

      else
      {
        sub_100009CA4((v0 + 88), (v0 + 152));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81 = v59;
        sub_10000FDF8((v0 + 152), v0 + 16, isUniquelyReferenced_nonNull_native);
      }

      sub_100008E18(v0 + 16);
      v61 = *(v0 + 352);
      v62 = *(v0 + 328);
      v63 = *(v0 + 280);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v46 setUserInfo:isa];
      sub_10000F87C(v80, v78);

      v65 = *(v45 + 16);
      *(v45 + 16) = v46;
      v66 = v46;

      (*(v63 + 32))(v66);
      v56 = v61;
      v57 = v62;
    }

    else
    {
      v51 = *(v0 + 352);
      v52 = *(v0 + 328);
      v53 = *(v0 + 280);
      sub_10000F87C(v80, v78);
      v54 = *(v53 + 32);
      v55 = *(v45 + 16);
      v54();

      v56 = v51;
      v57 = v52;
    }

    v76(v56, v57);
    goto LABEL_29;
  }

  (*(*(v0 + 304) + 32))(*(v0 + 320), *(v0 + 288), *(v0 + 296));
  if ((sub_100010274() & 1) == 0)
  {
    (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));
    goto LABEL_9;
  }

  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 312);
  v5 = *(v0 + 320);
  v6 = *(v0 + 296);
  v7 = *(v0 + 304);
  v8 = type metadata accessor for Logger();
  sub_100008A68(v8, qword_100021CC8);
  (*(v7 + 16))(v4, v5, v6);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 304);
  v12 = *(v0 + 312);
  v14 = *(v0 + 296);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v81 = v16;
    *v15 = 136315138;
    v77 = Handle.identifier.getter();
    v18 = v17;
    v79 = *(v13 + 8);
    v79(v12, v14);
    v19 = sub_1000141AC(v77, v18, &v81);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "FenceNotificationContentService: Handle %s is on block list, ignoring!", v15, 0xCu);
    sub_100008A1C(v16);
  }

  else
  {

    v79 = *(v13 + 8);
    v79(v12, v14);
  }

  v67 = *(v0 + 352);
  v68 = *(v0 + 328);
  v69 = *(v0 + 336);
  v70 = *(v0 + 320);
  v71 = *(v0 + 296);
  v72 = *(*(v0 + 280) + 32);
  v73 = [objc_allocWithZone(UNNotificationContent) init];
  v72();

  v79(v70, v71);
  (*(v69 + 8))(v67, v68);
LABEL_29:

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_10000F4CC()
{
  v15 = v0;
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008A68(v1, qword_100021CC8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_1000141AC(v6, v7, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "FenceNotificationContentService: Failed to fetch data for payload, error: %s.", v4, 0xCu);
    sub_100008A1C(v5);
  }

  v9 = *(v0 + 280);
  v10 = *(v9 + 32);
  v11 = *(v9 + 16);
  v10(v11);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10000F6FC()
{

  return _swift_deallocClassInstance(v0, 48, 7);
}

id sub_10000F7D8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FMFSessionDelegateTrampoline();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10000F830()
{
  result = qword_100021050;
  if (!qword_100021050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100021050);
  }

  return result;
}

uint64_t sub_10000F87C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100009D98(result, a2);
  }

  return result;
}

double sub_10000F890(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F8A4(a1, a2);
  }

  return result;
}

double sub_10000F8A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

double sub_10000F8F8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_100014870(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10000FFC0();
      v9 = v11;
    }

    sub_100008E18(*(v9 + 48) + 40 * v7);
    sub_100009CA4((*(v9 + 56) + 32 * v7), a2);
    sub_10000FC54(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_10000F99C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000078C0(&unk_100021060, &unk_100017808);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_100009CA4((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_100009DEC(v23, &v36);
        sub_1000089B8(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_100009CA4(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_10000FC54(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      sub_100009DEC(*(a2 + 48) + 40 * v6, v25);
      v10 = AnyHashable._rawHashValue(seed:)(*(a2 + 40));
      result = sub_100008E18(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_10000FDF8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100014870(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10000FFC0();
      goto LABEL_7;
    }

    sub_10000F99C(v13, a3 & 1);
    v19 = sub_100014870(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100009DEC(a2, v21);
      return sub_10000FF44(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100008A1C(v17);

  return sub_100009CA4(a1, v17);
}

_OWORD *sub_10000FF44(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100009CA4(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_10000FFC0()
{
  v1 = v0;
  sub_1000078C0(&unk_100021060, &unk_100017808);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_100009DEC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1000089B8(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100009CA4(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100010164()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000101AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100001A9C;

  return sub_10000E830(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100010274()
{
  v1 = type metadata accessor for Handle();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v46 - v6;
  Handle.identifier.getter();
  if (qword_100020BC0 != -1)
  {
    swift_once();
  }

  v8 = static String.emailPredicate;
  v9 = String._bridgeToObjectiveC()();

  LODWORD(v8) = [v8 evaluateWithObject:v9];

  v10 = Handle.identifier.getter();
  if (v8)
  {
    v12 = String._bridgeToObjectiveC()();

    result = CMFItemCreateWithEmailAddress();
    if (result)
    {
      v14 = result;
      v15 = qword_100020BC8;
      swift_unknownObjectRetain_n();
      if (v15 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100008A68(v16, qword_100021CC8);
      (*(v2 + 16))(v7, v0, v1);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v19 = 136315394;
        v20 = Handle.identifier.getter();
        v21 = v1;
        v23 = v22;
        (*(v2 + 8))(v7, v21);
        v24 = sub_1000141AC(v20, v23, &v49);

        *(v19 + 4) = v24;
        *(v19 + 12) = 2080;
        v48 = v14;
        swift_unknownObjectRetain();
        v25 = String.init<A>(describing:)();
        v27 = sub_1000141AC(v25, v26, &v49);

        *(v19 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v17, v18, "FMFHandle+Blocklist: Handle %s is an email: %s", v19, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v2 + 8))(v7, v1);
      }

LABEL_16:
      IsItemBlocked = CMFBlockListIsItemBlocked();
      swift_unknownObjectRelease_n();
      return IsItemBlocked != 0;
    }

    __break(1u);
  }

  else
  {
    sub_10000E170(v10, v11, 0);

    v28 = String._bridgeToObjectiveC()();

    v29 = CFPhoneNumberCreate();
    result = CMFItemCreateWithPhoneNumber();
    if (result)
    {
      v30 = result;
      v31 = qword_100020BC8;
      swift_unknownObjectRetain_n();
      if (v31 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_100008A68(v32, qword_100021CC8);
      (*(v2 + 16))(v5, v0, v1);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v47 = v28;
        v36 = v35;
        v37 = swift_slowAlloc();
        v46 = v29;
        v49 = v37;
        *v36 = 136315394;
        v38 = Handle.identifier.getter();
        v40 = v39;
        (*(v2 + 8))(v5, v1);
        v41 = sub_1000141AC(v38, v40, &v49);

        *(v36 + 4) = v41;
        *(v36 + 12) = 2080;
        v48 = v30;
        swift_unknownObjectRetain();
        v42 = String.init<A>(describing:)();
        v44 = sub_1000141AC(v42, v43, &v49);

        *(v36 + 14) = v44;
        _os_log_impl(&_mh_execute_header, v33, v34, "FMFHandle+Blocklist: Handle %s is a phone number: %s", v36, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v2 + 8))(v5, v1);
      }

      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001084C()
{
  v0 = type metadata accessor for Logger();
  sub_100010898(v0, qword_100021CC8);
  sub_100008A68(v0, qword_100021CC8);
  return Logger.init()();
}

uint64_t *sub_100010898(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_100010988()
{
  v1 = v0;
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008A68(v2, qword_100021CC8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "NotificationService: serviceExtensionTimeWillExpire", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC26FindMyNotificationsService19NotificationService_contentHandler);
  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR____TtC26FindMyNotificationsService19NotificationService_contentHandler + 8);
    v8 = OBJC_IVAR____TtC26FindMyNotificationsService19NotificationService_currentContentService;
    swift_beginAccess();
    sub_100010ED4(v1 + v8, &v17);
    v9 = *(&v18 + 1);
    if (*(&v18 + 1))
    {
      v10 = v19;
      v11 = sub_100008CB0(&v17, *(&v18 + 1));
      v12 = *(v9 - 8);
      __chkstk_darwin(v11);
      v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v12 + 16))(v14);

      sub_100009E48(&v17, &qword_100021108, &qword_1000178A8);
      v15 = (*(v10 + 8))(v9, v10);
      (*(v12 + 8))(v14, v9);
      v6(v15);
      sub_100010F44(v6, v7);

      v19 = 0;
      v17 = 0u;
      v18 = 0u;
      swift_beginAccess();
      sub_100010E64(&v17, v1 + v8);
      swift_endAccess();
    }

    else
    {
      sub_100009E48(&v17, &qword_100021108, &qword_1000178A8);
    }
  }
}

id sub_100010C80()
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v1 = OBJC_IVAR____TtC26FindMyNotificationsService19NotificationService_currentContentService;
  swift_beginAccess();
  sub_100010E64(v4, v0 + v1);
  swift_endAccess();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for NotificationService();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100010E64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000078C0(&qword_100021108, &qword_1000178A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000078C0(&qword_100021108, &qword_1000178A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010F44(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_100010F7C(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v55 = a2;
  v5 = type metadata accessor for ClientOrigin();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RequestOrigin();
  __chkstk_darwin(v9 - 8);
  v56 = swift_allocObject();
  v56[2] = a3;
  _Block_copy(a3);
  v10 = [a1 content];
  v11 = [v10 categoryIdentifier];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = v12 == 0x45434E45464F4547 && v14 == 0xE800000000000000;
  if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v16 = type metadata accessor for FenceNotificationContentService();
    v17 = swift_allocObject();
    (*(v6 + 104))(v8, enum case for ClientOrigin.findMyApp(_:), v5);
    RequestOrigin.init(_:)();
    type metadata accessor for Session();
    swift_allocObject();
    v17[3] = Session.init(_:)();
    v17[4] = sub_100011A64;
    v17[5] = v56;

    v17[2] = [a1 content];
    v61 = v16;
    v62 = &off_10001D220;
    v60[0] = v17;
LABEL_7:
    if (qword_100020BC8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008A68(v18, qword_100021CC8);
    sub_1000119FC(v60, v59);
    v19 = a1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v58 = v24;
      *v22 = 138412546;
      *(v22 + 4) = v19;
      *v23 = v19;
      *(v22 + 12) = 2080;
      sub_1000119FC(v59, v57);
      v25 = v19;
      sub_1000078C0(&qword_100021110, &qword_1000178B0);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      sub_100008A1C(v59);
      v29 = sub_1000141AC(v26, v28, &v58);

      *(v22 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "NotificationService: Handling request: %@ using %s", v22, 0x16u);
      sub_100009E48(v23, &qword_100020D60, &qword_100017050);

      sub_100008A1C(v24);
    }

    else
    {

      sub_100008A1C(v59);
    }

    v30 = v61;
    v31 = v62;
    sub_100008CB0(v60, v61);
    (v31[4])(v30, v31);
    sub_1000119FC(v60, v59);
    v32 = OBJC_IVAR____TtC26FindMyNotificationsService19NotificationService_currentContentService;
    v33 = v55;
    swift_beginAccess();
    sub_100010E64(v59, v33 + v32);
    swift_endAccess();
    sub_100008A1C(v60);

    return;
  }

  if (v12 == 0x465F594649544F4ELL && v14 == 0xEC000000444E554FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    found = type metadata accessor for NotifyWhenFoundNotificationService();
    swift_allocObject();
    v35 = v56;

    v36 = a1;
    v37 = sub_1000088C0(v36, sub_100011A64, v35);

    v61 = found;
    v62 = &off_10001CC60;
    v60[0] = v37;
    goto LABEL_7;
  }

  if (v12 == 0x4F4C5F524546464FLL && v14 == 0xEE004E4F49544143 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v12 == 0x525F455449564E49 && v14 == 0xEF45534E4F505345)
  {

LABEL_23:
    v38 = type metadata accessor for LocationSharingContentService();
    v39 = swift_allocObject();
    type metadata accessor for Session();
    (*(v6 + 104))(v8, enum case for ClientOrigin.findMyApp(_:), v5);
    v40 = static Session.sharedSession(origin:)();
    (*(v6 + 8))(v8, v5);
    v39[3] = v40;
    v39[4] = sub_100011A64;
    v39[5] = v56;

    v39[2] = [a1 content];
    v61 = v38;
    v62 = &off_10001D2C0;
    v60[0] = v39;
    goto LABEL_7;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {
    goto LABEL_23;
  }

  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_100008A68(v42, qword_100021CC8);
  v43 = a1;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v60[0] = v47;
    *v46 = 136315138;
    v48 = [v43 content];
    v49 = [v48 categoryIdentifier];

    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = sub_1000141AC(v50, v52, v60);

    *(v46 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v44, v45, "NotificationService: Unknown category: %s, using provided content.", v46, 0xCu);
    sub_100008A1C(v47);
  }

  v56 = [v43 content];
  (a3)[2](a3, v56);

  v54 = v56;
}

uint64_t sub_10001182C(void *a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  if (qword_100020BC8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008A68(v7, qword_100021CC8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "NotificationService: didReceiveNotification", v10, 2u);
  }

  v11 = (a2 + OBJC_IVAR____TtC26FindMyNotificationsService19NotificationService_contentHandler);
  v12 = *(a2 + OBJC_IVAR____TtC26FindMyNotificationsService19NotificationService_contentHandler);
  v13 = *(a2 + OBJC_IVAR____TtC26FindMyNotificationsService19NotificationService_contentHandler + 8);
  *v11 = sub_1000119E8;
  v11[1] = v6;

  sub_100010F44(v12, v13);
  _Block_copy(a3);
  sub_100010F7C(a1, a2, a3);
  _Block_release(a3);
}

uint64_t sub_1000119B0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000119FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100011A68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001A9C;

  return sub_100011AF8();
}

uint64_t sub_100011AF8()
{
  v1[31] = v0;
  sub_1000078C0(&unk_100021040, &unk_1000177F0);
  v1[32] = swift_task_alloc();
  v2 = type metadata accessor for Friend();
  v1[33] = v2;
  v1[34] = *(v2 - 8);
  v1[35] = swift_task_alloc();
  v3 = type metadata accessor for Handle();
  v1[36] = v3;
  v1[37] = *(v3 - 8);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();

  return _swift_task_switch(sub_100011CAC, 0, 0);
}

uint64_t sub_100011CAC()
{
  v22 = v0;
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100015E38(&qword_1000211F8, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v2 = sub_100014148(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.fencesMigration(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100008A1C(v0 + 2);
  if (My)
  {
    if (qword_100020BC8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    v0[47] = sub_100008A68(v3, qword_100021CC8);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[31];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315138;
      v9 = [*(v6 + 16) userInfo];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = Dictionary.description.getter();
      v12 = v11;

      v13 = sub_1000141AC(v10, v12, &v21);

      *(v7 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "LocationSharingContentService: Handling: %s", v7, 0xCu);
      sub_100008A1C(v8);
    }

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "LocationSharingContentService: Requesting force refresh", v16, 2u);
    }

    v17 = v0[31];

    v0[48] = *(v17 + 24);
    v18 = swift_task_alloc();
    v0[49] = v18;
    *v18 = v0;
    v18[1] = sub_1000120BC;

    return Session.forceRefreshClient()();
  }

  else
  {

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1000120BC()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_100013634;
  }

  else
  {
    v2 = sub_1000121D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000121D0(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LocationSharingContentService: Force refresh completed", v4, 2u);
  }

  v5 = v1[31];

  v6 = [*(v5 + 16) userInfo];
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v1[24] = 7565409;
  v1[25] = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v7 + 16) || (v8 = sub_100014870((v1 + 7)), (v9 & 1) == 0))
  {

    sub_100008E18((v1 + 7));
    goto LABEL_12;
  }

  sub_1000089B8(*(v7 + 56) + 32 * v8, (v1 + 12));
  sub_100008E18((v1 + 7));

  sub_1000078C0(&qword_100021200, &qword_100017950);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v16, v17))
    {
LABEL_15:
      v20 = v1[31];

      v21 = *(v20 + 32);
      v22 = *(v5 + 16);
      v21();

      v23 = v1[1];

      return v23();
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "LocationSharingContentService: No aps dict detected, returning default content.";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v16, v17, v19, v18, 2u);

    goto LABEL_15;
  }

  v10 = v1[30];
  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_19:
    v15 = 0;
    goto LABEL_20;
  }

  v12 = sub_1000148B4(0x6469646E65697266, 0xE800000000000000);
  if ((v13 & 1) == 0)
  {
    v11 = 0;
    goto LABEL_19;
  }

  sub_1000089B8(*(v10 + 56) + 32 * v12, (v1 + 16));
  v14 = swift_dynamicCast();
  v11 = v1[28];
  if (v14)
  {
    v15 = v1[29];
  }

  else
  {
    v11 = 0;
    v15 = 0;
  }

LABEL_20:
  v1[51] = v11;
  v1[52] = v15;
  if (*(v10 + 16) && (v25 = sub_1000148B4(0x6552646E65697266, 0xEF64497473657571), (v26 & 1) != 0))
  {
    sub_1000089B8(*(v10 + 56) + 32 * v25, (v1 + 20));

    v27 = swift_dynamicCast();
    v28 = v1[26];
    v29 = v1[27];
    if (!v27)
    {
      v28 = 0;
      v29 = 0;
    }
  }

  else
  {

    v28 = 0;
    v29 = 0;
  }

  v1[53] = v28;
  v1[54] = v29;
  if (!(v15 | v29))
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_15;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "LocationSharingContentService: No friend identifier detected, returning default content.";
    goto LABEL_14;
  }

  v30 = swift_task_alloc();
  v1[55] = v30;
  *v30 = v1;
  v30[1] = sub_100012674;

  return Session.friendsWithPendingOffers()();
}

uint64_t sub_100012674(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  if (v1)
  {
    v4 = sub_100013824;
  }

  else
  {
    v4 = sub_100012788;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100012788()
{
  v1 = v0[56];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[37];
    v4 = v0[34];
    sub_100015AA0(0, v2, 0);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v16 = *(v4 + 56);
    v17 = v5;
    v7 = (v4 - 8);
    do
    {
      v8 = v0[35];
      v9 = v0[33];
      v17(v8, v6, v9);
      Friend.handle.getter();
      (*v7)(v8, v9);
      v11 = *(&_swiftEmptyArrayStorage + 2);
      v10 = *(&_swiftEmptyArrayStorage + 3);
      if (v11 >= v10 >> 1)
      {
        sub_100015AA0((v10 > 1), v11 + 1, 1);
      }

      v12 = v0[46];
      v13 = v0[36];
      *(&_swiftEmptyArrayStorage + 2) = v11 + 1;
      (*(v3 + 32))(&_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v12, v13);
      v6 += v16;
      --v2;
    }

    while (v2);
  }

  v0[58] = sub_100015C98(&_swiftEmptyArrayStorage);

  v14 = swift_task_alloc();
  v0[59] = v14;
  *v14 = v0;
  v14[1] = sub_100012994;

  return Session.friendsSharingLocationsWithMe()();
}

uint64_t sub_100012994(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 480) = a1;
  *(v3 + 488) = v1;

  if (v1)
  {
    v4 = sub_100013A28;
  }

  else
  {
    v4 = sub_100012AA8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100012AA8()
{
  v124 = v0;
  v1 = v0[60];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[37];
    v4 = v0[34];
    v123 = &_swiftEmptyArrayStorage;
    sub_100015AA0(0, v2, 0);
    v5 = &_swiftEmptyArrayStorage;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v116 = *(v4 + 56);
    v118 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = v0[35];
      v10 = v0[33];
      v118(v9, v7, v10);
      Friend.handle.getter();
      (*v8)(v9, v10);
      v123 = v5;
      v12 = v5[2];
      v11 = v5[3];
      if (v12 >= v11 >> 1)
      {
        sub_100015AA0((v11 > 1), v12 + 1, 1);
        v5 = v123;
      }

      v13 = v0[45];
      v14 = v0[36];
      v5[2] = v12 + 1;
      (*(v3 + 32))(v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v13, v14);
      v7 += v116;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = &_swiftEmptyArrayStorage;
  }

  v15 = v0[58];
  v16 = sub_100015C98(v5);

  v17 = sub_100013C38(v16, v15);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v123 = v21;
    *v20 = 136315138;
    sub_100015E38(&qword_100021208, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
    v22 = Set.description.getter();
    v24 = sub_1000141AC(v22, v23, &v123);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "LocationSharingContentService: Found handles: %s", v20, 0xCu);
    sub_100008A1C(v21);
  }

  v25 = v0[37];
  v26 = v17 + 56;
  v27 = -1;
  v28 = -1 << *(v17 + 32);
  if (-v28 < 64)
  {
    v27 = ~(-1 << -v28);
  }

  v29 = v27 & *(v17 + 56);
  v30 = (63 - v28) >> 6;
  v31 = (v25 + 16);
  v117 = (v25 + 8);
  v119 = (v25 + 32);
  v121 = v17;

  v33 = 0;
  while (v29)
  {
LABEL_20:
    v36 = v0[42];
    v35 = v0[43];
    v37 = v0[36];
    (*(v25 + 16))(v35, *(v121 + 48) + *(v25 + 72) * (__clz(__rbit64(v29)) | (v33 << 6)), v37);
    v38 = *(v25 + 32);
    v38(v36, v35, v37);
    v39 = Handle.serverID.getter();
    v41 = v0[52];
    if (v40)
    {
      if (v41)
      {
        if (v40 == v41 && v39 == v0[51])
        {
LABEL_39:

LABEL_40:

LABEL_41:

          v38(v0[32], v0[42], v0[36]);
          v48 = 0;
          v31 = (v25 + 16);
LABEL_42:
          v49 = v0;
          v50 = v0[37];
          v51 = v49[36];
          v52 = v49[32];
          (*(v50 + 56))(v52, v48, 1, v51);

          if ((*(v50 + 48))(v52, 1, v51) == 1)
          {
            v53 = v49[31];
            sub_100009E48(v49[32], &unk_100021040, &unk_1000177F0);
            v54 = *(v53 + 32);
            v55 = *(v53 + 16);
            v54();
          }

          else
          {
            (*v119)(v49[44], v49[32], v49[36]);
            v56 = sub_100010274();
            v57 = *v31;
            v58 = v49[44];
            v59 = v49[36];
            v60 = v49;
            if (v56)
            {
              v57(v49[41], v58, v59);
              v61 = Logger.logObject.getter();
              v62 = static os_log_type_t.default.getter();
              v63 = os_log_type_enabled(v61, v62);
              v64 = v49[41];
              v65 = v49[36];
              if (v63)
              {
                v66 = swift_slowAlloc();
                v67 = swift_slowAlloc();
                v123 = v67;
                *v66 = 136315138;
                v68 = Handle.identifier.getter();
                v70 = v69;
                v71 = v65;
                v72 = *v117;
                (*v117)(v64, v71);
                v73 = sub_1000141AC(v68, v70, &v123);

                *(v66 + 4) = v73;
                _os_log_impl(&_mh_execute_header, v61, v62, "LocationSharingContentService: Handle %s is on block list, ignoring!", v66, 0xCu);
                sub_100008A1C(v67);
              }

              else
              {

                v84 = v65;
                v72 = *v117;
                (*v117)(v64, v84);
              }

              v85 = v60[44];
              v86 = v60[36];
              v49 = v60;
              v87 = *(v60[31] + 32);
              v88 = [objc_allocWithZone(UNNotificationContent) init];
              v87();

              v72(v85, v86);
            }

            else
            {
              v57(v49[40], v58, v59);
              v74 = Logger.logObject.getter();
              v75 = static os_log_type_t.default.getter();
              v76 = os_log_type_enabled(v74, v75);
              v77 = v49[40];
              v78 = v49[36];
              if (v76)
              {
                v79 = swift_slowAlloc();
                v80 = swift_slowAlloc();
                v123 = v80;
                *v79 = 136315138;
                v120 = Handle.identifier.getter();
                v82 = v81;
                v122 = *v117;
                (*v117)(v77, v78);
                v83 = sub_1000141AC(v120, v82, &v123);

                *(v79 + 4) = v83;
                _os_log_impl(&_mh_execute_header, v74, v75, "LocationSharingContentService: Handle %s is **not** on block list, proceeding with alert.", v79, 0xCu);
                sub_100008A1C(v80);
              }

              else
              {

                v122 = *v117;
                (*v117)(v77, v78);
              }

              v89 = v49[44];
              v90 = v49[38];
              v91 = v49[36];
              v57(v49[39], v89, v91);
              v57(v90, v89, v91);
              v92 = Logger.logObject.getter();
              v93 = static os_log_type_t.default.getter();
              v94 = os_log_type_enabled(v92, v93);
              v96 = v49[38];
              v95 = v49[39];
              v97 = v49[36];
              if (v94)
              {
                v115 = v93;
                v98 = swift_slowAlloc();
                v123 = swift_slowAlloc();
                *v98 = 136315394;
                v99 = Handle.identifier.getter();
                v101 = v100;
                v102 = v122;
                v122(v95, v97);
                v103 = sub_1000141AC(v99, v101, &v123);

                *(v98 + 4) = v103;
                *(v98 + 12) = 2080;
                v104 = Handle.serverID.getter();
                if (v105)
                {
                  v106 = v104;
                }

                else
                {
                  v106 = 0x3E6C696E3CLL;
                }

                if (v105)
                {
                  v107 = v105;
                }

                else
                {
                  v107 = 0xE500000000000000;
                }

                v122(v96, v97);
                v108 = sub_1000141AC(v106, v107, &v123);

                *(v98 + 14) = v108;
                _os_log_impl(&_mh_execute_header, v92, v115, "LocationSharingContentService: Found friend with handle %s aka %s", v98, 0x16u);
                swift_arrayDestroy();
              }

              else
              {

                v102 = v122;
                v122(v96, v97);
                v122(v95, v97);
              }

              v109 = v60[44];
              v110 = v60[36];
              v111 = v60[31];
              v49 = v60;
              v112 = *(v111 + 32);
              v113 = *(v111 + 16);
              v112();

              v102(v109, v110);
            }
          }

          v114 = v49[1];

          return v114();
        }

        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v43)
        {
          goto LABEL_40;
        }
      }

      else
      {
      }
    }

    else if (!v41)
    {
LABEL_29:

      goto LABEL_41;
    }

    v44 = Handle.serverID.getter();
    v46 = v0[54];
    if (v45)
    {
      if (v46)
      {
        if (v45 == v46 && v44 == v0[53])
        {
          goto LABEL_39;
        }

        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v47)
        {
          goto LABEL_40;
        }
      }

      else
      {
      }
    }

    else if (!v46)
    {
      goto LABEL_29;
    }

    v29 &= v29 - 1;
    result = (*v117)(v0[42], v0[36]);
    v31 = (v25 + 16);
  }

  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v34 >= v30)
    {

      v48 = 1;
      goto LABEL_42;
    }

    v29 = *(v26 + 8 * v34);
    ++v33;
    if (v29)
    {
      v33 = v34;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100013634()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "LocationSharingContentService: Failed to force refresh FML due to: %{public}@", v3, 0xCu);
    sub_100009E48(v4, &qword_100020D60, &qword_100017050);
  }

  v6 = *(v0 + 248);

  v7 = *(v6 + 32);
  v8 = *(v6 + 16);
  v7();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100013824()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "LocationSharingContentService: Failed to force refresh FML due to: %{public}@", v3, 0xCu);
    sub_100009E48(v4, &qword_100020D60, &qword_100017050);
  }

  v6 = *(v0 + 248);

  v7 = *(v6 + 32);
  v8 = *(v6 + 16);
  v7();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100013A28()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "LocationSharingContentService: Failed to force refresh FML due to: %{public}@", v3, 0xCu);
    sub_100009E48(v4, &qword_100020D60, &qword_100017050);
  }

  v6 = *(v0 + 248);

  v7 = *(v6 + 32);
  v8 = *(v6 + 16);
  v7();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100013C38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Handle();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v25 - v10;
  result = __chkstk_darwin(v9);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      sub_100014C6C(v11, v8);
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100013E78()
{
  v1 = sub_1000078C0(&qword_100020D38, &qword_100017000);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = *v0;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;

  sub_100001B90(0, 0, v3, &unk_100017948, v6);
}

uint64_t sub_100013F84()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100013FC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100001A9C;

  return sub_100011A68();
}

uint64_t sub_100014078(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000140EC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1000141AC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t *sub_100014148(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1000141AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100014278(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000089B8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008A1C(v11);
  return v7;
}

unint64_t sub_100014278(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100014384(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100014384(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000143D0(a1, a2);
  sub_100014500(&off_10001CA88);
  return v3;
}

char *sub_1000143D0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000145EC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000145EC(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100014500(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100014660(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000145EC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000078C0(&qword_100021210, &qword_100017958);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100014660(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000078C0(&qword_100021210, &qword_100017958);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_100014754(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100014764(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_1000147D8(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100015E38(&qword_100020D88, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10001492C(a1, v2);
}

unint64_t sub_100014870(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100014AEC(a1, v4);
}

unint64_t sub_1000148B4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100014BB4(a1, a2, v4);
}

unint64_t sub_10001492C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_100015E38(&unk_100021230, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_100014AEC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100009DEC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100008E18(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100014BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100014C6C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Handle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100015E38(&qword_100021208, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_100015E38(&qword_100021218, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1000152A8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100014F4C(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for Handle();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1000078C0(&qword_100021220, &qword_100017960);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_100015E38(&qword_100021208, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1000152A8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for Handle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100014F4C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10001554C();
      goto LABEL_12;
    }

    sub_100015784(v10 + 1);
  }

  v12 = *v3;
  sub_100015E38(&qword_100021208, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100015E38(&qword_100021218, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10001554C()
{
  v1 = v0;
  v2 = type metadata accessor for Handle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000078C0(&qword_100021220, &qword_100017960);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_100015784(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for Handle();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1000078C0(&qword_100021220, &qword_100017960);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_100015E38(&qword_100021208, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

void *sub_100015AA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100015AC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100015AC0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000078C0(&qword_100021228, &qword_100017968);
  v10 = *(type metadata accessor for Handle() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Handle() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100015C98(uint64_t a1)
{
  v2 = type metadata accessor for Handle();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100015E38(&qword_100021208, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_100014C6C(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100015E38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}