void *sub_10005E328(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_100068B04(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = sub_100064A10(v5, v6, &qword_10033C1D0, &qword_1002729A8, type metadata accessor for HandoffDevice, &OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id);
LABEL_10:

  return sub_1000690B4(a1, v2);
}

uint64_t sub_10005E46C(uint64_t a1, uint64_t a2)
{
  result = sub_10005E4C4(&qword_10033C1C0, a2, type metadata accessor for LockscreenControlsFeatureModel, &unk_100272950);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10005E4C4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005E50C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_100035D04(&unk_1003436D0, &qword_1002702F0);
    swift_allocObject();
    v1 = CurrentValueSubject.init(_:)();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10005E5E4(uint64_t *a1, uint64_t *a2)
{
  if (*(v2 + 16))
  {
    v3 = *(v2 + 16);
  }

  else
  {
    sub_100035D04(a1, a2);
    swift_allocObject();

    v3 = CurrentValueSubject.init(_:)();
    *(v2 + 16) = v3;
  }

  return v3;
}

uint64_t sub_10005E680()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_100035D04(&qword_10033C358, &qword_100272B70);
    swift_allocObject();
    v1 = CurrentValueSubject.init(_:)();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10005E744()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_100035D04(&qword_10033BA70, &qword_1002722F0);
    swift_allocObject();

    v1 = CurrentValueSubject.init(_:)();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10005E7E8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_100035D04(&qword_10033BA90, &unk_100272350);
    swift_allocObject();

    v1 = CurrentValueSubject.init(_:)();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10005E8B4(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (v3[2])
  {
    v4 = v3[2];
  }

  else
  {
    v6 = v3[3];
    v7 = v3[4];
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    v11 = v3[8];
    v12 = v3[9];
    sub_100035D04(a1, a2);
    swift_allocObject();
    a3(v6, v7, v8, v9, v10, v11, v12);
    v4 = CurrentValueSubject.init(_:)();
    v3[2] = v4;
  }

  return v4;
}

uint64_t sub_10005E99C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_100035D04(&qword_10033C2C8, &qword_100272AC0);
    swift_allocObject();
    v1 = CurrentValueSubject.init(_:)();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10005EA38()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_100035D04(&qword_10033C2E0, &qword_100272AD8);
    swift_allocObject();
    v1 = CurrentValueSubject.init(_:)();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10005EAD4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_100035D04(&qword_10033C2F0, &qword_100272AF0);
    swift_allocObject();

    v1 = CurrentValueSubject.init(_:)();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10005EB78()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    return *(v0 + *(v1 + 96));
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
    return *(v0 + *(v1 + 96));
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v36, v35);
  sub_100035D04(&qword_10033C300, &unk_100272B00);
  if (swift_dynamicCast())
  {
    sub_10000903C(v36);

    return v34;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [v6 stringForKey:v10];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    v16 = _findStringSwitchCase(cases:string:)(&off_100300020, v15);

    swift_bridgeObjectRelease_n();
    if (!v16)
    {
      v17 = 0;
      goto LABEL_16;
    }

    if (v16 == 1)
    {
      v17 = 1;
LABEL_16:
      sub_10000903C(v36);
      return v17;
    }

    sub_10000903C(v36);
    return 2;
  }

  else
  {
    v18 = String._bridgeToObjectiveC()();
    v19 = [v6 dataForKey:v18];

    if (v19)
    {
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = v0;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v33 = v22;
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v35[0] = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_100017494(v5, v4, v35);
        _os_log_impl(&_mh_execute_header, v24, v25, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v26, 0xCu);
        sub_10000903C(v27);

        sub_100010708(v20, v33);
      }

      else
      {

        sub_100010708(v20, v22);
      }

      sub_10000903C(v36);
      return *(v23 + *((swift_isaMask & *v23) + 0x60));
    }

    else
    {
      v28 = v0;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v35[0] = v32;
        *v31 = 136315138;
        *(v31 + 4) = sub_100017494(v5, v4, v35);
        _os_log_impl(&_mh_execute_header, v29, v30, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v31, 0xCu);
        sub_10000903C(v32);
      }

      sub_10000903C(v36);
      return *(v28 + *((swift_isaMask & *v28) + 0x60));
    }
  }
}

uint64_t sub_10005F048()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
LABEL_6:
    v10 = (v0 + *(v1 + 96));
LABEL_7:
    v9 = *v10;

    return v9;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v32, v31);
  sub_100035D04(&qword_10033A238, &qword_10027D3E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = String._bridgeToObjectiveC()();
    v13 = [v6 stringForKey:v12];

    if (v13)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000903C(v32);
      return v9;
    }

    v14 = String._bridgeToObjectiveC()();
    v15 = [v6 dataForKey:v14];

    if (v15)
    {
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = v0;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v29 = v18;
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v31[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_100017494(v5, v4, v31);
        _os_log_impl(&_mh_execute_header, v20, v21, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v22, 0xCu);
        sub_10000903C(v23);

        sub_100010708(v16, v29);
      }

      else
      {

        sub_100010708(v16, v18);
      }

      sub_10000903C(v32);
      v28 = *((swift_isaMask & *v19) + 0x60);
    }

    else
    {
      v19 = v0;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v31[0] = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_100017494(v5, v4, v31);
        _os_log_impl(&_mh_execute_header, v24, v25, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v26, 0xCu);
        sub_10000903C(v27);
      }

      sub_10000903C(v32);
      v28 = *((swift_isaMask & *v19) + 0x60);
    }

    v10 = (v19 + v28);
    goto LABEL_7;
  }

  sub_10000903C(v32);

  return v30;
}

uint64_t sub_10005F504(uint64_t a1, Swift::OpaquePointer a2)
{
  v3 = swift_isaMask & *v2;
  v4 = *(v2 + *(v3 + 0x70));
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = (v2 + *((swift_isaMask & *v2) + 0x68));
  v8 = *v6;
  v7 = v6[1];
  v9 = v4;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 objectForKey:v10];

  if (!v11)
  {

    v3 = swift_isaMask & *v2;
LABEL_6:
    v12 = *(v2 + *(v3 + 96));
    return v12 & 1;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v40, v39);
  if (swift_dynamicCast())
  {
    sub_10000903C(v40);

    v12 = v38;
    return v12 & 1;
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = [v9 stringForKey:v14];

  if (v15)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    v20 = _findStringSwitchCase(cases:string:)(a2, v19);

    if (!v20)
    {
      v12 = 0;
      goto LABEL_16;
    }

    if (v20 == 1)
    {
      v12 = 1;
LABEL_16:
      sub_10000903C(v40);

      return v12 & 1;
    }

    v31 = v2;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_100017494(v8, v7, v39);
      v36 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v32, v33, v36, v34, 0xCu);
      sub_10000903C(v35);

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v21 = String._bridgeToObjectiveC()();
  v22 = [v9 dataForKey:v21];

  if (!v22)
  {
    v31 = v2;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_100017494(v8, v7, v39);
      v36 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
      goto LABEL_21;
    }

LABEL_22:

    sub_10000903C(v40);
    v12 = *(v31 + *((swift_isaMask & *v31) + 0x60));
    return v12 & 1;
  }

  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = v2;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v37 = v25;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_100017494(v8, v7, v39);
    _os_log_impl(&_mh_execute_header, v27, v28, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v29, 0xCu);
    sub_10000903C(v30);

    sub_100010708(v23, v37);
  }

  else
  {

    sub_100010708(v23, v25);
  }

  sub_10000903C(v40);
  v12 = *(v26 + *((swift_isaMask & *v26) + 0x60));
  return v12 & 1;
}

void sub_10005FA50()
{
  v1 = *(v0 + *((swift_isaMask & *v0) + 0x70));
  if (v1)
  {
    v2 = (v0 + *((swift_isaMask & *v0) + 0x68));
    v4 = *v2;
    v3 = v2[1];
    v5 = v1;
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 objectForKey:v6];

    if (v7)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10001766C(v33, v32);
      if (swift_dynamicCast())
      {
        sub_10000903C(v33);

        return;
      }

      v8 = String._bridgeToObjectiveC()();
      v9 = [v5 stringForKey:v8];

      if (v9)
      {
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        LODWORD(v32[0]) = 0;
        v13 = sub_10006B384(v10, v12, v32, &_swift_stdlib_strtof_clocale, sub_10006C42C);

        if (v13)
        {

          sub_10000903C(v33);
          return;
        }

        v24 = v0;
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v25, v26))
        {
          goto LABEL_18;
        }

        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v32[0] = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_100017494(v4, v3, v32);
        v29 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
        goto LABEL_17;
      }

      v14 = String._bridgeToObjectiveC()();
      v15 = [v5 dataForKey:v14];

      if (!v15)
      {
        v30 = v0;
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v25, v26))
        {
LABEL_18:

          sub_10000903C(v33);
          return;
        }

        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v32[0] = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_100017494(v4, v3, v32);
        v29 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v25, v26, v29, v27, 0xCu);
        sub_10000903C(v28);

        goto LABEL_18;
      }

      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = v0;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v31 = v18;
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v32[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_100017494(v4, v3, v32);
        _os_log_impl(&_mh_execute_header, v20, v21, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v22, 0xCu);
        sub_10000903C(v23);

        sub_100010708(v16, v31);
      }

      else
      {

        sub_100010708(v16, v18);
      }

      sub_10000903C(v33);
    }

    else
    {
    }
  }
}

unint64_t sub_10005FFC0()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
LABEL_6:
    v10 = v0 + *(v1 + 96);
    return *v10;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v35, v34);
  sub_100035D04(&unk_10034B520, &qword_1002702E0);
  if (swift_dynamicCast())
  {
    sub_10000903C(v35);

    return v33;
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = [v6 stringForKey:v11];

  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100165238(v13, v15);
    sub_10000903C(v35);
    return v16;
  }

  v17 = String._bridgeToObjectiveC()();
  v18 = [v6 dataForKey:v17];

  if (v18)
  {
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = v0;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v32 = v21;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_100017494(v5, v4, v34);
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v25, 0xCu);
      sub_10000903C(v26);

      sub_100010708(v19, v32);
    }

    else
    {

      sub_100010708(v19, v21);
    }

    sub_10000903C(v35);
    v31 = *((swift_isaMask & *v22) + 0x60);
  }

  else
  {
    v22 = v0;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_100017494(v5, v4, v34);
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v29, 0xCu);
      sub_10000903C(v30);
    }

    sub_10000903C(v35);
    v31 = *((swift_isaMask & *v22) + 0x60);
  }

  v10 = v22 + v31;
  return *v10;
}

unint64_t sub_10006045C()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    return *(v0 + *(v1 + 96));
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
    return *(v0 + *(v1 + 96));
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v37, v36);
  if (swift_dynamicCast())
  {
    sub_10000903C(v37);

    return v35;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [v6 stringForKey:v10];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100165238(v12, v14);
    if ((v16 & 1) == 0)
    {
      v33 = v15;
      sub_10000903C(v37);

      return v33;
    }

    v17 = v0;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_19;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100017494(v5, v4, v36);
    v22 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
    goto LABEL_18;
  }

  v23 = String._bridgeToObjectiveC()();
  v24 = [v6 dataForKey:v23];

  if (!v24)
  {
    v17 = v0;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v18, v19))
    {
LABEL_19:

      sub_10000903C(v37);
      return *(v17 + *((swift_isaMask & *v17) + 0x60));
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100017494(v5, v4, v36);
    v22 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v18, v19, v22, v20, 0xCu);
    sub_10000903C(v21);

    goto LABEL_19;
  }

  v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = v0;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v34 = v27;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_100017494(v5, v4, v36);
    _os_log_impl(&_mh_execute_header, v29, v30, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v31, 0xCu);
    sub_10000903C(v32);

    sub_100010708(v25, v34);
  }

  else
  {

    sub_100010708(v25, v27);
  }

  sub_10000903C(v37);
  return *(v28 + *((swift_isaMask & *v28) + 0x60));
}

uint64_t sub_100060984@<X0>(void *a1@<X8>)
{
  v3 = sub_100035D04(&qword_10033C278, &qword_100272A78);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v47 - v7;
  v9 = swift_isaMask & *v1;
  v10 = *(v1 + *(v9 + 0x70));
  if (!v10)
  {
LABEL_6:
    v20 = v1 + *(v9 + 96);
    v21 = a1;

    return sub_10006C4AC(v20, v21);
  }

  v11 = (v1 + *((swift_isaMask & *v1) + 0x68));
  v13 = *v11;
  v12 = v11[1];
  v14 = v10;
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 objectForKey:v15];

  if (!v16)
  {

    v9 = swift_isaMask & *v1;
    goto LABEL_6;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v50, v49);
  v17 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  if (swift_dynamicCast())
  {
    sub_10000903C(v50);

    (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
    v18 = v8;
    v19 = a1;
    return sub_10006C51C(v18, v19);
  }

  v22 = *(v17 - 8);
  (*(v22 + 56))(v8, 1, 1, v17);
  sub_1000097E8(v8, &qword_10033C278, &qword_100272A78);
  v23 = String._bridgeToObjectiveC()();
  v24 = [v14 stringForKey:v23];

  if (v24)
  {
    v48 = a1;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    sub_100063878(v25, v27, v6);
    if ((*(v22 + 48))(v6, 1, v17) != 1)
    {
      sub_10000903C(v50);

      v18 = v6;
      v19 = v48;
      return sub_10006C51C(v18, v19);
    }

    sub_1000097E8(v6, &qword_10033C278, &qword_100272A78);
    v28 = v1;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_21;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v49[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_100017494(v13, v12, v49);
    v33 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
    goto LABEL_20;
  }

  v34 = String._bridgeToObjectiveC()();
  v35 = [v14 dataForKey:v34];

  if (v35)
  {
    v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = v1;
    v48 = v1;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = a1;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v47 = v38;
      v45 = v44;
      v49[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_100017494(v13, v12, v49);
      _os_log_impl(&_mh_execute_header, v40, v41, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v43, 0xCu);
      sub_10000903C(v45);

      a1 = v42;

      sub_100010708(v36, v47);
    }

    else
    {

      sub_100010708(v36, v38);
    }

    sub_10000903C(v50);
    v20 = v39 + *((swift_isaMask & *v39) + 0x60);
    v21 = a1;
    return sub_10006C4AC(v20, v21);
  }

  v48 = a1;
  v28 = v1;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v49[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_100017494(v13, v12, v49);
    v33 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v29, v30, v33, v31, 0xCu);
    sub_10000903C(v32);
  }

LABEL_21:

  sub_10000903C(v50);
  v20 = v28 + *((swift_isaMask & *v28) + 0x60);
  v21 = v48;
  return sub_10006C4AC(v20, v21);
}

void sub_1000610B4(uint64_t *a1@<X8>)
{
  v3 = swift_isaMask & *v1;
  v4 = *(v1 + *(v3 + 0x70));
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = (v1 + *((swift_isaMask & *v1) + 0x68));
  v7 = *v5;
  v6 = v5[1];
  v8 = v4;
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 objectForKey:v9];

  if (!v10)
  {

    v3 = swift_isaMask & *v1;
LABEL_6:
    v12 = (v1 + *(v3 + 96));
    v13 = *v12;
    v14 = v12[1];
    *a1 = *v12;
    a1[1] = v14;

    sub_10006DADC(v13, v14);
    return;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v37, v36);
  sub_100035D04(&qword_10033C330, &qword_100272B48);
  if (swift_dynamicCast())
  {
    sub_10000903C(v37);

    v11 = v35;
LABEL_11:
    *a1 = v11;
    return;
  }

  sub_10006DAF0(0, 0xB000000000000000);
  v15 = String._bridgeToObjectiveC()();
  v16 = [v8 stringForKey:v15];

  if (v16)
  {

    sub_10000903C(v37);
    v11 = xmmword_100272810;
    goto LABEL_11;
  }

  v17 = String._bridgeToObjectiveC()();
  v18 = [v8 dataForKey:v17];

  if (v18)
  {
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = v1;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v33 = v20;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100017494(v7, v6, v36);
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v24, 0xCu);
      sub_10000903C(v25);

      sub_100010708(v34, v33);
    }

    else
    {

      sub_100010708(v34, v20);
    }
  }

  else
  {
    v21 = v1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_100017494(v7, v6, v36);
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v28, 0xCu);
      sub_10000903C(v29);
    }
  }

  sub_10000903C(v37);
  v30 = (v21 + *((swift_isaMask & *v21) + 0x60));
  v31 = *v30;
  v32 = v30[1];
  *a1 = *v30;
  a1[1] = v32;
  sub_10006DADC(v31, v32);
}

uint64_t sub_100061554()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
LABEL_6:
    v9 = *(v0 + *(v1 + 96));
LABEL_7:

    return v9;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v26, v25);
  sub_100035D04(&qword_10033C320, &qword_100272B40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = String._bridgeToObjectiveC()();
    v12 = [v6 stringForKey:v11];

    if (v12)
    {

      v13 = v0;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v14, v15))
      {
LABEL_13:

        sub_10000903C(v26);
        v9 = *(v13 + *((swift_isaMask & *v13) + 0x60));
        goto LABEL_7;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_100017494(v5, v4, v25);
      v18 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
    }

    else
    {
      v19 = String._bridgeToObjectiveC()();
      v20 = [v6 dataForKey:v19];

      if (v20)
      {
        v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        type metadata accessor for JSONDecoder();
        swift_allocObject();
        sub_10006DA04(v21, v23);
        JSONDecoder.init()();
        sub_10006DA58();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        sub_100010708(v21, v23);

        sub_100010708(v21, v23);
        v9 = v25[0];
        sub_10000903C(v26);
        return v9;
      }

      v13 = v0;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_13;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_100017494(v5, v4, v25);
      v18 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
    }

    _os_log_impl(&_mh_execute_header, v14, v15, v18, v16, 0xCu);
    sub_10000903C(v17);

    goto LABEL_13;
  }

  sub_10000903C(v26);

  return v24;
}

NSString sub_100061B10()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
LABEL_6:
    v9 = *(v0 + *(v1 + 96));
LABEL_7:
    v10 = v9;
    return v9;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v32, v31);
  sub_100035D04(&qword_10033C380, &qword_100272B98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = String._bridgeToObjectiveC()();
    v13 = [v6 stringForKey:v12];

    if (v13)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = String._bridgeToObjectiveC()();

      sub_10000903C(v32);
      return v9;
    }

    v14 = String._bridgeToObjectiveC()();
    v15 = [v6 dataForKey:v14];

    if (v15)
    {
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = v0;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v29 = v18;
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v31[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_100017494(v5, v4, v31);
        _os_log_impl(&_mh_execute_header, v20, v21, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v22, 0xCu);
        sub_10000903C(v23);

        sub_100010708(v16, v29);
      }

      else
      {

        sub_100010708(v16, v18);
      }

      sub_10000903C(v32);
      v28 = *((swift_isaMask & *v19) + 0x60);
    }

    else
    {
      v19 = v0;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v31[0] = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_100017494(v5, v4, v31);
        _os_log_impl(&_mh_execute_header, v24, v25, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v26, 0xCu);
        sub_10000903C(v27);
      }

      sub_10000903C(v32);
      v28 = *((swift_isaMask & *v19) + 0x60);
    }

    v9 = *(v19 + v28);
    goto LABEL_7;
  }

  sub_10000903C(v32);

  return v30;
}

unint64_t sub_100061FA4()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    return *(v0 + *(v1 + 96));
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
    return *(v0 + *(v1 + 96));
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v36, v35);
  if (swift_dynamicCast())
  {
    sub_10000903C(v36);

    return v34;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [v6 stringForKey:v10];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v37._countAndFlagsBits = v12;
    v37._object = v14;
    v15 = sub_1000C7FEC(v37);
    if (v15 != 5)
    {
      v32 = v15;
      sub_10000903C(v36);

      return v32;
    }

    v16 = v0;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_19;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_100017494(v5, v4, v35);
    v21 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
    goto LABEL_18;
  }

  v22 = String._bridgeToObjectiveC()();
  v23 = [v6 dataForKey:v22];

  if (!v23)
  {
    v16 = v0;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v17, v18))
    {
LABEL_19:

      sub_10000903C(v36);
      return *(v16 + *((swift_isaMask & *v16) + 0x60));
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_100017494(v5, v4, v35);
    v21 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v17, v18, v21, v19, 0xCu);
    sub_10000903C(v20);

    goto LABEL_19;
  }

  v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = v0;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v33 = v26;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_100017494(v5, v4, v35);
    _os_log_impl(&_mh_execute_header, v28, v29, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v30, 0xCu);
    sub_10000903C(v31);

    sub_100010708(v24, v33);
  }

  else
  {

    sub_100010708(v24, v26);
  }

  sub_10000903C(v36);
  return *(v27 + *((swift_isaMask & *v27) + 0x60));
}

void sub_1000624E0(uint64_t a1)
{
  v2 = *(v1 + *((swift_isaMask & *v1) + 0x70));
  if (v2)
  {
    v3 = (v1 + *((swift_isaMask & *v1) + 0x68));
    v5 = *v3;
    v4 = v3[1];
    v6 = v2;
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 objectForKey:v7];

    if (v8)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10001766C(v34, v33);
      if (swift_dynamicCast())
      {
        sub_10000903C(v34);

        return;
      }

      v9 = String._bridgeToObjectiveC()();
      v10 = [v6 stringForKey:v9];

      if (v10)
      {
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v33[0] = 0;
        v14 = sub_10006B384(v11, v13, v33, &_swift_stdlib_strtod_clocale, sub_10006CC1C);

        if (v14)
        {

          sub_10000903C(v34);
          return;
        }

        v25 = v1;
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v26, v27))
        {
          goto LABEL_18;
        }

        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v33[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_100017494(v5, v4, v33);
        v30 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
        goto LABEL_17;
      }

      v15 = String._bridgeToObjectiveC()();
      v16 = [v6 dataForKey:v15];

      if (!v16)
      {
        v31 = v1;
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v26, v27))
        {
LABEL_18:

          sub_10000903C(v34);
          return;
        }

        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v33[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_100017494(v5, v4, v33);
        v30 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v26, v27, v30, v28, 0xCu);
        sub_10000903C(v29);

        goto LABEL_18;
      }

      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = v1;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v32 = v19;
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v33[0] = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_100017494(v5, v4, v33);
        _os_log_impl(&_mh_execute_header, v21, v22, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v23, 0xCu);
        sub_10000903C(v24);

        sub_100010708(v17, v32);
      }

      else
      {

        sub_100010708(v17, v19);
      }

      sub_10000903C(v34);
    }

    else
    {
    }
  }
}

unint64_t sub_100062A50()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    return *(v0 + *(v1 + 96));
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
    return *(v0 + *(v1 + 96));
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v37, v36);
  sub_100035D04(&qword_100339988, &qword_100272B60);
  if (swift_dynamicCast())
  {
    sub_10000903C(v37);

    return v35;
  }

  else
  {
    v10 = String._bridgeToObjectiveC()();
    v11 = [v6 stringForKey:v10];

    if (v11)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_100165238(v12, v14);
      LOBYTE(v14) = v16;

      if ((v14 & 1) != 0 || (v17 = sub_1000CB020(v15), v17 == 5))
      {
        sub_10000903C(v37);
        return 5;
      }

      else
      {
        v28 = v17;
        sub_10000903C(v37);
        return v28;
      }
    }

    else
    {
      v18 = String._bridgeToObjectiveC()();
      v19 = [v6 dataForKey:v18];

      if (v19)
      {
        v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        v23 = v0;
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v24, v25))
        {
          v34 = v22;
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v36[0] = v27;
          *v26 = 136315138;
          *(v26 + 4) = sub_100017494(v5, v4, v36);
          _os_log_impl(&_mh_execute_header, v24, v25, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v26, 0xCu);
          sub_10000903C(v27);

          sub_100010708(v20, v34);
        }

        else
        {

          sub_100010708(v20, v22);
        }

        sub_10000903C(v37);
        return *(v23 + *((swift_isaMask & *v23) + 0x60));
      }

      else
      {
        v29 = v0;
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v36[0] = v33;
          *v32 = 136315138;
          *(v32 + 4) = sub_100017494(v5, v4, v36);
          _os_log_impl(&_mh_execute_header, v30, v31, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v32, 0xCu);
          sub_10000903C(v33);
        }

        sub_10000903C(v37);
        return *(v29 + *((swift_isaMask & *v29) + 0x60));
      }
    }
  }
}

uint64_t sub_100062F0C()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
LABEL_6:
    v10 = v0 + *(v1 + 96);
    return *v10;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v35, v34);
  sub_100035D04(&qword_10033C348, &qword_100272B68);
  if (swift_dynamicCast())
  {
    sub_10000903C(v35);

    return v33;
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = [v6 stringForKey:v11];

  if (!v12)
  {
    v17 = String._bridgeToObjectiveC()();
    v18 = [v6 dataForKey:v17];

    if (v18)
    {
      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = v0;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v32 = v21;
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v34[0] = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_100017494(v5, v4, v34);
        _os_log_impl(&_mh_execute_header, v23, v24, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v25, 0xCu);
        sub_10000903C(v26);

        sub_100010708(v19, v32);
      }

      else
      {

        sub_100010708(v19, v21);
      }

      sub_10000903C(v35);
      v31 = *((swift_isaMask & *v22) + 0x60);
    }

    else
    {
      v22 = v0;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v34[0] = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_100017494(v5, v4, v34);
        _os_log_impl(&_mh_execute_header, v27, v28, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v29, 0xCu);
        sub_10000903C(v30);
      }

      sub_10000903C(v35);
      v31 = *((swift_isaMask & *v22) + 0x60);
    }

    v10 = v22 + v31;
    return *v10;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v34[0] = 0;
  LOBYTE(v13) = sub_10006B384(v13, v15, v34, &_swift_stdlib_strtod_clocale, sub_10006CC1C);

  if (v13)
  {
    v16 = v34[0];
    sub_10000903C(v35);
    return v16;
  }

  else
  {
    sub_10000903C(v35);
    return 0;
  }
}

uint64_t sub_100063400()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
LABEL_6:
    v10 = (v0 + *(v1 + 96));
LABEL_7:
    v9 = *v10;

    return v9;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v32, v31);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = String._bridgeToObjectiveC()();
    v13 = [v6 stringForKey:v12];

    if (v13)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000903C(v32);
      return v9;
    }

    v14 = String._bridgeToObjectiveC()();
    v15 = [v6 dataForKey:v14];

    if (v15)
    {
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = v0;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v29 = v18;
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v31[0] = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_100017494(v5, v4, v31);
        _os_log_impl(&_mh_execute_header, v20, v21, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v22, 0xCu);
        sub_10000903C(v23);

        sub_100010708(v16, v29);
      }

      else
      {

        sub_100010708(v16, v18);
      }

      sub_10000903C(v32);
      v28 = *((swift_isaMask & *v19) + 0x60);
    }

    else
    {
      v19 = v0;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v31[0] = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_100017494(v5, v4, v31);
        _os_log_impl(&_mh_execute_header, v24, v25, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v26, 0xCu);
        sub_10000903C(v27);
      }

      sub_10000903C(v32);
      v28 = *((swift_isaMask & *v19) + 0x60);
    }

    v10 = (v19 + v28);
    goto LABEL_7;
  }

  sub_10000903C(v32);

  return v30;
}

uint64_t sub_100063878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v21 = a3;
  v4 = type metadata accessor for Date.ISO8601FormatStyle();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19 - v14;
  v22 = a1;
  v23 = v20;
  static ParseStrategy<>.iso8601.getter();
  sub_10005E4C4(&qword_10033C288, 255, &type metadata accessor for Date.ISO8601FormatStyle, &protocol conformance descriptor for Date.ISO8601FormatStyle);
  Date.init<A>(_:strategy:)();
  v16 = *(v6 + 32);
  v16(v11, v9, v5);
  v16(v15, v11, v5);
  (*(v6 + 56))(v15, 0, 1, v5);
  v17 = v21;
  sub_10006C51C(v15, v21);
  return (*(v13 + 56))(v17, 0, 1, v12);
}

uint64_t sub_100063B28(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for HandoffDevice(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_100064A10(v7, result + 1, &qword_10033C1D0, &qword_1002729A8, type metadata accessor for HandoffDevice, &OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id);
        v18 = *(v17 + 16);
        if (*(v17 + 24) <= v18)
        {
          sub_100065728(v18 + 1, &qword_10033C1D0, &qword_1002729A8);
        }

        sub_100065AB8(v19, v17);

        *v3 = v17;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v10 = Hasher._finalize()();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      while (1)
      {

        v14 = static UUID.== infix(_:_:)();

        if (v14)
        {
          break;
        }

        v12 = (v12 + 1) & v13;
        if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v12);

      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v2;

      sub_1000661B8(v16, v12, isUniquelyReferenced_nonNull_native, &qword_10033C1D0, &qword_1002729A8, &OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id, type metadata accessor for HandoffDevice);
      *v2 = v22;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_100063E3C(Swift::UInt *a1, Swift::UInt a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100065BB0(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100063F34(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
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
      sub_10005E4C4(&qword_10034B5A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
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
    sub_100065D0C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10006421C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for AnyCancellable();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1000647D8(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_100065490(v17 + 1);
    }

    sub_1000659CC(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for AnyCancellable();
  sub_10005E4C4(&qword_10033B5E8, 255, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_100065FB8(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_10005E4C4(&unk_10034B600, 255, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_1000644C4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for TimedTaskStorage(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_100064A10(v7, result + 1, &qword_10033C308, &unk_100272B18, type metadata accessor for TimedTaskStorage, &OBJC_IVAR____TtC17proximitycontrold16TimedTaskStorage_identifier);
        v18 = *(v17 + 16);
        if (*(v17 + 24) <= v18)
        {
          sub_100065728(v18 + 1, &qword_10033C308, &unk_100272B18);
        }

        sub_100065AB8(v19, v17);

        *v3 = v17;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v10 = Hasher._finalize()();
    v11 = -1 << *(v6 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      v13 = ~v11;
      while (1)
      {

        v14 = static UUID.== infix(_:_:)();

        if (v14)
        {
          break;
        }

        v12 = (v12 + 1) & v13;
        if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *a1 = *(*(v6 + 48) + 8 * v12);

      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v2;

      sub_1000661B8(v16, v12, isUniquelyReferenced_nonNull_native, &qword_10033C308, &unk_100272B18, &OBJC_IVAR____TtC17proximitycontrold16TimedTaskStorage_identifier, type metadata accessor for TimedTaskStorage);
      *v2 = v22;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1000647D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100035D04(&unk_10034B5F0, &qword_100272B10);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for AnyCancellable();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100065490(v9 + 1);
        }

        v2 = v15;
        sub_10005E4C4(&qword_10033B5E8, 255, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100064A10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t a6)
{
  if (a2)
  {
    sub_100035D04(a3, a4);
    v9 = static _SetStorage.convert(_:capacity:)();
    v22 = v9;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v16 = *(v9 + 16);
        if (*(v9 + 24) <= v16)
        {
          sub_100065728(v16 + 1, a3, a4);
        }

        v9 = v22;
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        result = Hasher._finalize()();
        v11 = v22 + 56;
        v12 = -1 << *(v22 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v14 == v18;
            if (v14 == v18)
            {
              v14 = 0;
            }

            v17 |= v19;
            v20 = *(v11 + 8 * v14);
          }

          while (v20 == -1);
          v15 = __clz(__rbit64(~v20)) + (v14 << 6);
        }

        *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        *(*(v22 + 48) + 8 * v15) = v21;
        ++*(v22 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v9;
}

void sub_100064C80(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100035D04(&qword_10033C2E8, &unk_100272AE0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100064ED0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100035D04(&qword_10033C2D0, &qword_100272AC8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100065130(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100035D04(&qword_10033C310, &qword_100272B28);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_100065490(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100035D04(&unk_10034B5F0, &qword_100272B10);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for AnyCancellable();
      sub_10005E4C4(&qword_10033B5E8, 255, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v27;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100065728(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_100035D04(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
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
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
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
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

unint64_t sub_1000659CC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyCancellable();
  sub_10005E4C4(&qword_10033B5E8, 255, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_100065AB8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_100065BB0(Swift::UInt a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100064C80(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1000663C0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1000669D4(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for PCActivityAssetType(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100065D0C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
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
    sub_100065130(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_10006665C();
      goto LABEL_12;
    }

    sub_100066E2C(v10 + 1);
  }

  v12 = *v3;
  sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
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
      sub_10005E4C4(&qword_10034B5A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
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

void sub_100065FB8(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100065490(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100066894(&unk_10034B5F0, &qword_100272B10);
      goto LABEL_12;
    }

    sub_10006714C(v6 + 1);
  }

  v8 = *v3;
  type metadata accessor for AnyCancellable();
  sub_10005E4C4(&qword_10033B5E8, 255, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10005E4C4(&unk_10034B600, 255, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000661B8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, void (*a7)(void))
{
  v8 = v7;
  v11 = *(*v7 + 16);
  v12 = *(*v7 + 24);
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v13 = a7;
    sub_100065728(v11 + 1, a4, a5);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100066894(a4, a5);
      goto LABEL_12;
    }

    v13 = a7;
    sub_1000673C8(v11 + 1, a4, a5);
  }

  v14 = *v7;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v15 = Hasher._finalize()();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v13(0);
    do
    {

      v18 = static UUID.== infix(_:_:)();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v8;
  *(*v8 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000663C0()
{
  v1 = v0;
  sub_100035D04(&qword_10033C2E8, &unk_100272AE0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_100066500()
{
  v1 = v0;
  sub_100035D04(&qword_10033C2D0, &qword_100272AC8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
}

void sub_10006665C()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035D04(&qword_10033C310, &qword_100272B28);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
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
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
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
}

void sub_100066894(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100035D04(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1000669D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100035D04(&qword_10033C2E8, &unk_100272AE0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
    *v2 = v5;
  }
}

void sub_100066BF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100035D04(&qword_10033C2D0, &qword_100272AC8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }
}

void sub_100066E2C(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for UUID();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100035D04(&qword_10033C310, &qword_100272B28);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
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
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
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

        v2 = v29;
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
}

void sub_10006714C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100035D04(&unk_10034B5F0, &qword_100272B10);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v27 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for AnyCancellable();
      sub_10005E4C4(&qword_10033B5E8, 255, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);

      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
      v10 = v27;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v27 = (v16 - 1) & v16;
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
    *v2 = v5;
  }
}

void sub_1000673C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_100035D04(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v28 = v5;
    v8 = 0;
    v9 = v5 + 56;
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
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

      dispatch thunk of Hashable.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
      v5 = v28;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v7;
  }
}

Swift::Int sub_10006764C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100035D04(&qword_10033C1D0, &qword_1002729A8);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v26 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v27 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + 8 * v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v26;
    v10 = v27;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v27 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000678C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for UUID();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100035D04(&qword_10033C310, &qword_100272B28);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100067BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_10005E4C4(&qword_10034B5A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10006665C();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_100068414(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_100067ED4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v10 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v10 < 0)
    {
      v12 = *v5;
    }

    else
    {
      v12 = v10 & 0xFFFFFFFFFFFFFF8;
    }

    v13 = __CocoaSet.contains(_:)();

    if (v13)
    {
      v14 = sub_100068230(v12, a1, a3, a4, a5, a2);

      return v14;
    }

    return 0;
  }

  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v16 = Hasher._finalize()();
  v17 = -1 << *(v10 + 32);
  v18 = v16 & ~v17;
  if (((*(v10 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
    return 0;
  }

  v24 = a4;
  v19 = ~v17;
  while (1)
  {

    v20 = static UUID.== infix(_:_:)();

    if (v20)
    {
      break;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v10 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v5;
  v25 = *v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100066894(a3, v24);
    v22 = v25;
  }

  v23 = *(*(v22 + 48) + 8 * v18);
  sub_100068720(v18);
  result = v23;
  *v5 = v25;
  return result;
}

uint64_t sub_1000680F4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100066500();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_100068940(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_100068230(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t *a6)
{

  v11 = __CocoaSet.count.getter();
  v12 = swift_unknownObjectRetain();
  v13 = sub_100064A10(v12, v11, a3, a4, a5, a6);
  v21 = v13;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  dispatch thunk of Hashable.hash(into:)();
  v14 = Hasher._finalize()();
  v15 = -1 << *(v13 + 32);
  v16 = v14 & ~v15;
  if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    while (1)
    {

      v18 = static UUID.== infix(_:_:)();

      if (v18)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v19 = *(*(v13 + 48) + 8 * v16);
  sub_100068720(v16);
  result = static UUID.== infix(_:_:)();
  if (result)
  {
    *v6 = v21;
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100068414(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

void sub_100068720(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

        dispatch thunk of Hashable.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_100068940(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_100068B04(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for HandoffDevice(0);
    sub_10005E4C4(&qword_10033C1C8, 255, type metadata accessor for HandoffDevice, &unk_10028C528);
    Set.Iterator.init(_cocoa:)();
    a1 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v13 = (v11 - 1) & v11;
    v14 = *(*(a1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
LABEL_22:
      sub_100004F98(a1);
      return;
    }

    while (1)
    {
      sub_100067ED4(v14, &OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id, &qword_10033C1D0, &qword_1002729A8, type metadata accessor for HandoffDevice);

      v5 = v12;
      v6 = v13;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for HandoffDevice(0);
        swift_dynamicCast();
        v14 = v15;
        v12 = v5;
        v13 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_100068D6C(uint64_t a1)
{
  v3 = sub_100035D04(&unk_100348F30, &unk_100272540);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_100067BF4(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_1000097E8(v5, &unk_100348F30, &unk_100272540);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_100068F88(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1000680F4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void *sub_1000690B4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v5 = a1;
  v65 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    v2 = __CocoaSet.makeIterator()();
    v3 = type metadata accessor for HandoffDevice(0);
    sub_10005E4C4(&qword_10033C1C8, 255, type metadata accessor for HandoffDevice, &unk_10028C528);
    Set.Iterator.init(_cocoa:)();
    v5 = v74;
    v7 = v75;
    v8 = v76;
    v9 = v77;
    v10 = v78;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v10 = v14 & *(a1 + 56);

    v9 = 0;
  }

  v69 = v5;
  v70 = v7;
  v71 = v8;
  v72 = v9;
  v58 = v8;
  v15 = (v8 + 64) >> 6;
  v66 = (v65 + 56);
  v73 = v10;
  v61 = v15;
  v63 = v5;
  v62 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = __CocoaSet.Iterator.next()();
      if (!v22)
      {
        goto LABEL_64;
      }

      v67 = v22;
      type metadata accessor for HandoffDevice(0);
      swift_dynamicCast();
      v21 = v68;
      v19 = v9;
      v3 = v10;
      if (!v68)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v16 = v10;
      v17 = v9;
      if (v10)
      {
LABEL_20:
        v3 = (v16 - 1) & v16;
        v21 = *(*(v5 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

        v19 = v17;
      }

      else
      {
        if (v15 <= (v9 + 1))
        {
          v18 = v9 + 1;
        }

        else
        {
          v18 = v15;
        }

        v19 = v18 - 1;
        v20 = v9;
        while (1)
        {
          v17 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_66;
          }

          if (v17 >= v15)
          {
            break;
          }

          v16 = *(v7 + 8 * v17);
          ++v20;
          if (v16)
          {
            goto LABEL_20;
          }
        }

        v21 = 0;
        v3 = 0;
      }

      v69 = v5;
      v70 = v7;
      v71 = v58;
      v72 = v19;
      v73 = v3;
      if (!v21)
      {
LABEL_64:
        sub_100004F98(v5);
        return v65;
      }
    }

    Hasher.init(_seed:)();
    v64 = v21;
    v60 = type metadata accessor for UUID();
    v59 = sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v65 + 32);
    v2 = v23 & ~v24;
    v5 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v66[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v19;
    v10 = v3;
    v5 = v63;
    v7 = v62;
    v15 = v61;
  }

  v25 = ~v24;

  v26 = static UUID.== infix(_:_:)();

  if ((v26 & 1) == 0)
  {
    do
    {
      v2 = (v2 + 1) & v25;
      v5 = v2 >> 6;
      v4 = 1 << v2;
      if (((1 << v2) & v66[v2 >> 6]) == 0)
      {
        goto LABEL_10;
      }

      v27 = static UUID.== infix(_:_:)();
    }

    while ((v27 & 1) == 0);
  }

  v10 = v65;

  v29 = *(v65 + 32);
  v9 = ((1 << v29) + 63) >> 6;
  v6 = 8 * v9;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v55 = v9;
    v56 = &v54;
    __chkstk_darwin(v28);
    v31 = &v54 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v31, v66, v30);
    v32 = *&v31[8 * v5] & ~v4;
    v33 = *(v10 + 16);
    v57 = v31;
    *&v31[8 * v5] = v32;
    v34 = v33 - 1;
    v2 = v63;
    v5 = v62;
    v35 = v61;
    while (2)
    {
      v64 = v34;
LABEL_35:
      if ((v2 & 0x8000000000000000) != 0)
      {
        v37 = __CocoaSet.Iterator.next()();
        if (!v37)
        {
          goto LABEL_61;
        }

        v67 = v37;
        type metadata accessor for HandoffDevice(0);
        swift_dynamicCast();
        v9 = v68;
        if (!v68)
        {
          goto LABEL_61;
        }

        goto LABEL_50;
      }

      if (v3)
      {
        v36 = v19;
LABEL_48:
        v40 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
        v9 = *(*(v2 + 48) + ((v36 << 9) | (8 * v40)));

        v39 = v36;
LABEL_49:
        v69 = v2;
        v70 = v5;
        v71 = v58;
        v72 = v39;
        v19 = v39;
        v73 = v3;
        if (!v9)
        {
LABEL_61:
          v11 = sub_10006764C(v57, v55, v34, v10);
          goto LABEL_62;
        }

LABEL_50:
        Hasher.init(_seed:)();
        dispatch thunk of Hashable.hash(into:)();
        v41 = Hasher._finalize()();
        v42 = -1 << *(v10 + 32);
        v43 = v41 & ~v42;
        v4 = v43 >> 6;
        v44 = 1 << v43;
        if (((1 << v43) & v66[v43 >> 6]) != 0)
        {
          v45 = ~v42;
          while (1)
          {

            v46 = static UUID.== infix(_:_:)();

            if (v46)
            {
              break;
            }

            v43 = (v43 + 1) & v45;
            v4 = v43 >> 6;
            v44 = 1 << v43;
            v10 = v65;
            if (((1 << v43) & v66[v43 >> 6]) == 0)
            {
              goto LABEL_34;
            }
          }

          v34 = v64;

          v47 = v57[v4];
          v57[v4] = v47 & ~v44;
          v10 = v65;
          v2 = v63;
          v5 = v62;
          v35 = v61;
          if ((v47 & v44) != 0)
          {
            if (__OFSUB__(v34--, 1))
            {
              __break(1u);
            }

            if (!v34)
            {

              v11 = &_swiftEmptySetSingleton;
              goto LABEL_62;
            }

            continue;
          }
        }

        else
        {
LABEL_34:

          v2 = v63;
          v5 = v62;
          v35 = v61;
          v34 = v64;
        }

        goto LABEL_35;
      }

      break;
    }

    if (v35 <= (v19 + 1))
    {
      v38 = v19 + 1;
    }

    else
    {
      v38 = v35;
    }

    v39 = v38 - 1;
    while (1)
    {
      v36 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v36 >= v35)
      {
        v9 = 0;
        v3 = 0;
        goto LABEL_49;
      }

      v3 = *(v5 + 8 * v36);
      ++v19;
      if (v3)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v50 = v10;
    v51 = v6;

    if (swift_stdlib_isStackAllocationSafe())
    {

      v10 = v50;
      continue;
    }

    break;
  }

  v52 = swift_slowAlloc();
  memcpy(v52, v66, v51);
  sub_10006A8FC(v52, v9, v50, v2, &v69);
  v11 = v53;

LABEL_62:
  sub_100004F98(v69);
  return v11;
}

void *sub_100069920(uint64_t a1, void *a2)
{
  v5 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v65 - v9);
  v11 = type metadata accessor for UUID();
  v12 = __chkstk_darwin(v11);
  v85 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = (&v65 - v15);
  __chkstk_darwin(v14);
  v80 = (&v65 - v18);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v66 = v10;
  v68 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = a2 + 7;
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_1000097E8(v30, &unk_100348F30, &unk_100272540);
      v59 = a1;
      goto LABEL_53;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v32 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v16, a2[6] + v84 * v24, v11);
    v35 = sub_10005E4C4(&qword_10034B5A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    v87 = *v88;
    v87(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v66 = &v65;
    __chkstk_darwin(v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_1000097E8(v24, &unk_100348F30, &unk_100272540);
        a2 = sub_1000678C8(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v16, v52[6] + v54 * v84, v11);
        v55 = dispatch thunk of static Equatable.== infix(_:_:)();
        v87(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v16, v52[6] + v54 * v84, v11);
            v57 = dispatch thunk of static Equatable.== infix(_:_:)();
            v87(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v80 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v80;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v82, v62);
  a2 = sub_10006ABDC(v64, v65, v80, v24, &v89);

LABEL_52:
  v59 = v89;
LABEL_53:
  sub_100004F98(v59);
  return a2;
}

void *sub_10006A38C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = v5[2];
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_100008BC0(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v41 = Hasher._finalize()();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (v5[6] + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (v5[6] + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_10006B0B8(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_100004F98(v13);
    return v5;
  }

  __break(1u);
  return result;
}

void sub_10006A8FC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v29 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_29;
          }

          type metadata accessor for HandoffDevice(0);
          swift_dynamicCast();
          if (!v30)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v12 = (v5[2] + 64) >> 6;
            if (v12 <= v9 + 1)
            {
              v13 = v9 + 1;
            }

            else
            {
              v13 = (v5[2] + 64) >> 6;
            }

            v14 = v13 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v12)
              {
                v5[3] = v14;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v15 = (v10 - 1) & v10;
          v16 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));

          v5[3] = v11;
          v5[4] = v15;
          if (!v16)
          {
LABEL_29:

            sub_10006764C(a1, a2, v26, a3);
            return;
          }
        }

        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        v17 = Hasher._finalize()();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v29 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a5;
      }

      v22 = ~v18;
      while (1)
      {

        v23 = static UUID.== infix(_:_:)();

        if (v23)
        {
          break;
        }

        v19 = (v19 + 1) & v22;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v29 + 8 * (v19 >> 6))) == 0)
        {
          goto LABEL_3;
        }
      }

      v5 = a5;
      v24 = a1[v20];
      a1[v20] = v24 & ~v21;
    }

    while ((v24 & v21) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v26 != 1)
    {
      continue;
    }

    break;
  }
}

void *sub_10006ABDC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_100035D04(&unk_100348F30, &unk_100272540);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for UUID();
  v13 = __chkstk_darwin(v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_1000097E8(v11, &unk_100348F30, &unk_100272540);
          v45 = v61;

          return sub_1000678C8(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_10005E4C4(&qword_100339848, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_10005E4C4(&qword_10034B5A0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

unint64_t *sub_10006B0B8(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_100008BC0(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

BOOL sub_10006B384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11[0] = a1;
      v11[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        v6 = v11;
LABEL_11:
        v9 = a4(v6, a3);
        return v9 && *v9 == 0;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v7 >= 0x21 || ((0x100003E01uLL >> v7) & 1) == 0)
      {
        goto LABEL_11;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v5)
  {
    return v12;
  }

  return v8;
}

uint64_t *sub_10006B474(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v17) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  sub_100035D04(&qword_10033B400, &qword_100271F70);
  swift_allocObject();
  v10 = PassthroughSubject.init()();
  sub_100035D04(&qword_10033C270, &unk_100272A68);
  swift_allocObject();
  v11 = PassthroughSubject.init()();
  swift_allocObject();
  v12 = PassthroughSubject.init()();
  v2[4] = v10;
  v2[5] = v11;
  v2[6] = v12;
  v13 = v2 + qword_100346AF8;
  v14 = sub_10024CBF0(_swiftEmptyArrayStorage);
  *v13 = 0;
  *(v13 + 8) = v14;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v17);
  v18 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v15;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v9, v6);
  return v3;
}

uint64_t *sub_10006B6A4(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v17) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  sub_100035D04(&qword_10033C258, &qword_100272A58);
  swift_allocObject();
  v10 = PassthroughSubject.init()();
  sub_100035D04(&qword_10033C260, &qword_100272A60);
  swift_allocObject();
  v11 = PassthroughSubject.init()();
  swift_allocObject();
  v12 = PassthroughSubject.init()();
  v2[4] = v10;
  v2[5] = v11;
  v2[6] = v12;
  v13 = v2 + qword_100346AF8;
  v14 = sub_10024CD10(_swiftEmptyArrayStorage);
  *v13 = 0;
  *(v13 + 8) = v14;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v17);
  v18 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v15;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v9, v6);
  return v3;
}

uint64_t *sub_10006B8D4(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v17) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  sub_100035D04(&qword_10033C248, &qword_100272A40);
  swift_allocObject();
  v10 = PassthroughSubject.init()();
  sub_100035D04(&qword_10033C250, &unk_100272A48);
  swift_allocObject();
  v11 = PassthroughSubject.init()();
  swift_allocObject();
  v12 = PassthroughSubject.init()();
  v2[4] = v10;
  v2[5] = v11;
  v2[6] = v12;
  v13 = v2 + qword_100346AF8;
  v14 = sub_10024D038(_swiftEmptyArrayStorage);
  *v13 = 0;
  *(v13 + 8) = v14;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v17);
  v18 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v15;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v9, v6);
  return v3;
}

uint64_t *sub_10006BB04(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v17) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  sub_100035D04(&qword_100339828, &unk_100270300);
  swift_allocObject();
  v10 = PassthroughSubject.init()();
  sub_100035D04(&qword_10033C240, &qword_100272A38);
  swift_allocObject();
  v11 = PassthroughSubject.init()();
  swift_allocObject();
  v12 = PassthroughSubject.init()();
  v2[4] = v10;
  v2[5] = v11;
  v2[6] = v12;
  v13 = v2 + qword_100346AF8;
  v14 = sub_10024D04C(_swiftEmptyArrayStorage);
  *v13 = 0;
  *(v13 + 8) = v14;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v17);
  v18 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v15;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v9, v6);
  return v3;
}

uint64_t *sub_10006BD34(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v17) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  sub_100035D04(&qword_1003452D0, &qword_10027C230);
  swift_allocObject();
  v10 = PassthroughSubject.init()();
  sub_100035D04(&qword_10033C238, &qword_100272A30);
  swift_allocObject();
  v11 = PassthroughSubject.init()();
  swift_allocObject();
  v12 = PassthroughSubject.init()();
  v2[4] = v10;
  v2[5] = v11;
  v2[6] = v12;
  v13 = v2 + qword_100346AF8;
  v14 = sub_10024D060(_swiftEmptyArrayStorage);
  *v13 = 0;
  *(v13 + 8) = v14;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v17);
  v18 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v15;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v9, v6);
  return v3;
}

uint64_t *sub_10006BF64(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v17) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  sub_100035D04(&qword_10033C228, &qword_10027E240);
  swift_allocObject();
  v10 = PassthroughSubject.init()();
  sub_100035D04(&qword_10033C230, &unk_100272A20);
  swift_allocObject();
  v11 = PassthroughSubject.init()();
  swift_allocObject();
  v12 = PassthroughSubject.init()();
  v2[4] = v10;
  v2[5] = v11;
  v2[6] = v12;
  v13 = v2 + qword_100346AF8;
  v14 = sub_10024D264(_swiftEmptyArrayStorage);
  *v13 = 0;
  *(v13 + 8) = v14;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v17);
  v18 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v15;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v9, v6);
  return v3;
}

uint64_t *sub_10006C194(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v17) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  sub_100035D04(&qword_10033C218, &qword_100272A08);
  swift_allocObject();
  v10 = PassthroughSubject.init()();
  sub_100035D04(&qword_10033C220, &unk_100272A10);
  swift_allocObject();
  v11 = PassthroughSubject.init()();
  swift_allocObject();
  v12 = PassthroughSubject.init()();
  v2[4] = v10;
  v2[5] = v11;
  v2[6] = v12;
  v13 = v2 + qword_100346AF8;
  v14 = sub_10024D278(_swiftEmptyArrayStorage);
  *v13 = 0;
  *(v13 + 8) = v14;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v17);
  v18 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v15;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v9, v6);
  return v3;
}

void sub_10006C458(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 >= 3)
  {
  }
}

uint64_t sub_10006C4AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C51C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_10006C58C(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v17) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  sub_100035D04(&qword_10033C2B8, &qword_100272AB0);
  swift_allocObject();
  v10 = PassthroughSubject.init()();
  sub_100035D04(&qword_10033C2C0, &qword_100272AB8);
  swift_allocObject();
  v11 = PassthroughSubject.init()();
  swift_allocObject();
  v12 = PassthroughSubject.init()();
  v2[4] = v10;
  v2[5] = v11;
  v2[6] = v12;
  v13 = v2 + qword_100346AF8;
  v14 = sub_10024D4F8(_swiftEmptyArrayStorage);
  *v13 = 0;
  *(v13 + 8) = v14;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v17);
  v18 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v15;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v9, v6);
  return v3;
}

uint64_t *sub_10006C7BC(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v17) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  sub_100035D04(&qword_10033C2A8, &qword_100272AA0);
  swift_allocObject();
  v10 = PassthroughSubject.init()();
  sub_100035D04(&qword_10033C2B0, &qword_100272AA8);
  swift_allocObject();
  v11 = PassthroughSubject.init()();
  swift_allocObject();
  v12 = PassthroughSubject.init()();
  v2[4] = v10;
  v2[5] = v11;
  v2[6] = v12;
  v13 = v2 + qword_100346AF8;
  v14 = sub_10024D4E4(_swiftEmptyArrayStorage);
  *v13 = 0;
  *(v13 + 8) = v14;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v17);
  v18 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v15;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v9, v6);
  return v3;
}

uint64_t *sub_10006C9EC(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v17) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  sub_100035D04(&qword_10033C298, &qword_100272A90);
  swift_allocObject();
  v10 = PassthroughSubject.init()();
  sub_100035D04(&qword_10033C2A0, &qword_100272A98);
  swift_allocObject();
  v11 = PassthroughSubject.init()();
  swift_allocObject();
  v12 = PassthroughSubject.init()();
  v2[4] = v10;
  v2[5] = v11;
  v2[6] = v12;
  v13 = v2 + qword_100346AF8;
  v14 = sub_10024D4D0(_swiftEmptyArrayStorage);
  *v13 = 0;
  *(v13 + 8) = v14;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v17);
  v18 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v15;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v9, v6);
  return v3;
}

_BYTE *sub_10006CC48@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X1>, BOOL *a3@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    result = a2();
    if (result)
    {
      v8 = *result == 0;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void sub_10006CCD4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 != 3)
  {
    sub_10006C458(a1, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t *sub_10006CCE4(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v17) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  sub_100035D04(&qword_10033C388, &qword_100272BA0);
  swift_allocObject();
  v10 = PassthroughSubject.init()();
  sub_100035D04(&qword_10033C390, &qword_100272BA8);
  swift_allocObject();
  v11 = PassthroughSubject.init()();
  swift_allocObject();
  v12 = PassthroughSubject.init()();
  v2[4] = v10;
  v2[5] = v11;
  v2[6] = v12;
  v13 = v2 + qword_100346AF8;
  v14 = sub_10024D71C(_swiftEmptyArrayStorage);
  *v13 = 0;
  *(v13 + 8) = v14;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v17);
  v18 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v15;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v9, v6);
  return v3;
}

uint64_t *sub_10006CF14(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v17) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  sub_100035D04(&qword_100339828, &unk_100270300);
  swift_allocObject();
  v10 = PassthroughSubject.init()();
  sub_100035D04(&qword_10033C240, &qword_100272A38);
  swift_allocObject();
  v11 = PassthroughSubject.init()();
  swift_allocObject();
  v12 = PassthroughSubject.init()();
  v2[4] = v10;
  v2[5] = v11;
  v2[6] = v12;
  v13 = v2 + qword_100346AF8;
  v14 = sub_10024D394(_swiftEmptyArrayStorage);
  *v13 = 0;
  *(v13 + 8) = v14;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v17);
  v18 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v15;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v9, v6);
  return v3;
}

uint64_t *sub_10006D144(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v17) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  sub_100035D04(&qword_10033C370, &qword_10027E1D0);
  swift_allocObject();
  v10 = PassthroughSubject.init()();
  sub_100035D04(&qword_10033C378, &qword_100272B90);
  swift_allocObject();
  v11 = PassthroughSubject.init()();
  swift_allocObject();
  v12 = PassthroughSubject.init()();
  v2[4] = v10;
  v2[5] = v11;
  v2[6] = v12;
  v13 = v2 + qword_100346AF8;
  v14 = sub_10024DE08(_swiftEmptyArrayStorage);
  *v13 = 0;
  *(v13 + 8) = v14;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v17);
  v18 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v15;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v9, v6);
  return v3;
}

uint64_t *sub_10006D374(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v17) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  sub_100035D04(&qword_10033C360, &qword_100272B78);
  swift_allocObject();
  v10 = PassthroughSubject.init()();
  sub_100035D04(&qword_10033C368, &unk_100272B80);
  swift_allocObject();
  v11 = PassthroughSubject.init()();
  swift_allocObject();
  v12 = PassthroughSubject.init()();
  v2[4] = v10;
  v2[5] = v11;
  v2[6] = v12;
  v13 = v2 + qword_100346AF8;
  v14 = sub_10024DF18(_swiftEmptyArrayStorage);
  *v13 = 0;
  *(v13 + 8) = v14;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v17);
  v18 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v15;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v9, v6);
  return v3;
}

uint64_t *sub_10006D5A4(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v17) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  sub_100035D04(&qword_10033C338, &qword_100272B50);
  swift_allocObject();
  v10 = PassthroughSubject.init()();
  sub_100035D04(&qword_10033C340, &qword_100272B58);
  swift_allocObject();
  v11 = PassthroughSubject.init()();
  swift_allocObject();
  v12 = PassthroughSubject.init()();
  v2[4] = v10;
  v2[5] = v11;
  v2[6] = v12;
  v13 = v2 + qword_100346AF8;
  v14 = sub_10024E038(_swiftEmptyArrayStorage);
  *v13 = 0;
  *(v13 + 8) = v14;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v17);
  v18 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v15;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v9, v6);
  return v3;
}

uint64_t *sub_10006D7D4(uint64_t a1, int a2)
{
  v3 = v2;
  HIDWORD(v17) = a2;
  v5 = *v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  sub_100035D04(&unk_100348F50, &qword_100272B30);
  swift_allocObject();
  v10 = PassthroughSubject.init()();
  sub_100035D04(&qword_10033C318, &qword_100272B38);
  swift_allocObject();
  v11 = PassthroughSubject.init()();
  swift_allocObject();
  v12 = PassthroughSubject.init()();
  v2[4] = v10;
  v2[5] = v11;
  v2[6] = v12;
  v13 = v2 + qword_100346AF8;
  v14 = sub_10024E6AC(_swiftEmptyArrayStorage);
  *v13 = 0;
  *(v13 + 8) = v14;
  *(v3 + qword_100346B00) = 0;
  v3[2] = a1;
  *(v3 + 24) = BYTE4(v17);
  v18 = v5;
  swift_getMetatypeMetadata();

  v3[7] = String.init<A>(describing:)();
  v3[8] = v15;

  Logger.init(subsystem:category:)();
  (*(v7 + 32))(v3 + qword_100346AF0, v9, v6);
  return v3;
}

uint64_t sub_10006DA04(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_10006DA58()
{
  result = qword_10033C328;
  if (!qword_10033C328)
  {
    sub_100035D4C(&qword_10033C320, &qword_100272B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033C328);
  }

  return result;
}

uint64_t sub_10006DADC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10006DA04(result, a2);
  }

  return result;
}

uint64_t sub_10006DAF0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_10006DB04(a1, a2);
  }

  return a1;
}

uint64_t sub_10006DB04(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100010708(result, a2);
  }

  return result;
}

uint64_t sub_10006DB20()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006DB70()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10006DC00()
{
  result = qword_10033C408;
  if (!qword_10033C408)
  {
    sub_100035D4C(&qword_10033C410, qword_100272CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033C408);
  }

  return result;
}

unint64_t sub_10006DC68()
{
  result = qword_10033C418;
  if (!qword_10033C418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033C418);
  }

  return result;
}

uint64_t sub_10006DCCC(__n128 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC17proximitycontrold18DebugHandoffDevice_timer);
  if (*(v2 + 40) == 1)
  {
    *(v2 + 40) = 0;

    sub_1001787F4();
    swift_getObjectType();
    OS_dispatch_source.suspend()();
    swift_unknownObjectRelease();
  }

  sub_10006DED8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugHandoffDevice(uint64_t a1)
{
  result = qword_10033C450;
  if (!qword_10033C450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_10006DE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000104F8();
  v6 = v5;
  v7 = (*(*(a3 + 8) + 8))(a2);
  v8 = sub_1000089FC(v7, v6);

  v9 = *(v8 + 16);

  return v9 != 0;
}

uint64_t sub_10006DED8()
{
  v1 = v0;
  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033CBC8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_100072F14();

  v6 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  v8 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__identity;
  v9 = sub_100035D04(&qword_10033C3C8, &unk_100272C80);
  (*(*(v9 - 8) + 8))(v1 + v8, v9);

  sub_1000268AC(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_legacyDelegate);

  v10 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__legacyEvent;
  v11 = sub_100035D04(&qword_1003398E8, &qword_1002703C8);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);

  sub_1000268AC(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_proximityDelegate);
  swift_weakDestroy();

  sub_1000268AC(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_discoveryTokenSyncDelegate);

  sub_1000097E8(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_lastTokenSyncAttempt, &qword_10033C280, &qword_100272A80);

  return v1;
}

uint64_t sub_10006E2CC()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    sub_100035D04(&qword_10033D400, &unk_100274950);
    sub_10000E244(&qword_10033D780, &qword_10033D400, &unk_100274950, &unk_10027C688);
    v1 = Publisher.eraseToAnyPublisher()();
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t sub_10006E390(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_10006E404()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100035D04(&qword_10033D738, &qword_100273480);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  v9 = sub_100035D04(&qword_10033D740, &unk_100273488);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___regionPublisher))
  {
    v13 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___regionPublisher);
  }

  else
  {
    v23 = v10;
    v24 = v6;
    v25 = v5;
    v26 = v0;
    v27 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___regionPublisher;
    v28 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__region);
    sub_100035D04(&qword_10033D408, &qword_100273060);
    sub_10000E244(&qword_10033D748, &qword_10033D408, &qword_100273060, &unk_10027C688);
    sub_1000773C0(&qword_10033D750, &qword_100339988, &qword_100272B60, sub_10007743C);
    Publisher<>.removeDuplicates()();
    if (qword_100338E88 != -1)
    {
      swift_once();
    }

    v14 = sub_100003078(v1, qword_10033CBC8);
    v15 = static os_log_type_t.info.getter();
    (*(v2 + 16))(&v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v1);
    v16 = (*(v2 + 80) + 64) & ~*(v2 + 80);
    v17 = v16 + v3;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100073CBC;
    *(v18 + 24) = xmmword_100272E80;
    *(v18 + 40) = 0xEC000000203A6E6FLL;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0xE000000000000000;
    (*(v2 + 32))(v18 + v16, v4, v1);
    *(v18 + v17) = v15;
    sub_100035D04(&qword_100339988, &qword_100272B60);
    sub_10000E244(&qword_10033D760, &qword_10033D740, &unk_100273488, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033D768, &qword_10033D738, &qword_100273480, &protocol conformance descriptor for Publishers.Map<A, B>);
    v19 = v25;
    v20 = Publisher.eraseToAnyPublisher()();
    (*(v24 + 8))(v8, v19);
    (*(v23 + 8))(v12, v9);
    v28 = v20;
    sub_100035D04(&qword_1003398B0, &qword_100273280);
    sub_10000E244(&qword_1003398B8, &qword_1003398B0, &qword_100273280, &protocol conformance descriptor for AnyPublisher<A, B>);
    v21 = Publisher.share()();

    v28 = v21;
    sub_100035D04(&qword_10033D770, qword_100273498);
    sub_10000E244(&qword_10033D778, &qword_10033D770, qword_100273498, &protocol conformance descriptor for Publishers.Share<A>);
    v13 = Publisher.eraseToAnyPublisher()();

    *(v26 + v27) = v13;
  }

  return v13;
}

uint64_t sub_10006E96C()
{
  v1 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v64 = *(v1 - 8);
  __chkstk_darwin(v1);
  v63 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100035D04(&qword_10033D6E8, &qword_100273458);
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v60 = &v42 - v4;
  v5 = sub_100035D04(&qword_10033D6F0, &unk_100273460);
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v56 = &v42 - v6;
  v7 = sub_100035D04(&qword_10033D6B0, &unk_100274510);
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v9 = &v42 - v8;
  v10 = sub_100035D04(&qword_10034D8F0, &unk_100273380);
  v53 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  v13 = sub_100035D04(&qword_10033D6F8, &unk_100274940);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v59 = &v42 - v15;
  v16 = sub_100035D04(&qword_10033D700, &qword_100273470);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - v18;
  v20 = sub_100035D04(&qword_10033D708, &qword_100273478);
  __chkstk_darwin(v20);
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___activityDisplayContextPublisher))
  {
    v24 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___activityDisplayContextPublisher);
  }

  else
  {
    v42 = v14;
    v43 = v13;
    v44 = v19;
    v45 = &v42 - v21;
    v46 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___activityDisplayContextPublisher;
    v47 = v17;
    v48 = v23;
    v49 = v16;
    v50 = v22;
    v51 = v1;
    v52 = v0;
    v66 = sub_1001EF664();
    sub_100035D04(&unk_10034D910, &unk_100273390);
    sub_100035D04(&qword_10034B4F0, &unk_10027C100);
    sub_10000E244(&unk_10034D920, &unk_10034D910, &unk_100273390, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033D6B8, &qword_10034D8F0, &unk_100273380, &protocol conformance descriptor for Publishers.Map<A, B>);
    Publisher.removeDuplicates(by:)();
    sub_10000E244(&unk_10034D930, &qword_10033D6B0, &unk_100274510, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    v25 = v55;
    v26 = Publisher.eraseToAnyPublisher()();
    (*(v54 + 8))(v9, v25);
    (*(v53 + 8))(v12, v10);
    v66 = v26;
    sub_100035D04(&qword_10033D6C8, &unk_1002733A0);
    sub_10000E244(&unk_10034D940, &qword_10033D6C8, &unk_1002733A0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v27 = v56;
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_10033D710, &qword_10033D6F0, &unk_100273460, &protocol conformance descriptor for Publishers.Map<A, B>);
    v28 = v58;
    v29 = Publisher.eraseToAnyPublisher()();
    v30 = v52;

    (*(v57 + 8))(v27, v28);
    v66 = v29;
    v65 = sub_10006FD08();
    sub_100035D04(&qword_10033D4E0, &qword_10028EA40);
    sub_10000E244(&qword_10033D4E8, &qword_10033D4E0, &qword_10028EA40, &protocol conformance descriptor for AnyPublisher<A, B>);
    v31 = v63;
    v32 = v60;
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_10033D718, &qword_10033D6E8, &qword_100273458, &protocol conformance descriptor for Publishers.Map<A, B>);
    v33 = v62;
    v34 = Publisher.eraseToAnyPublisher()();

    (*(v61 + 8))(v32, v33);
    v65 = v34;
    sub_100035D04(&qword_10033D630, &unk_100274960);
    sub_10000E244(&qword_10034A3F0, &qword_10033D630, &unk_100274960, &protocol conformance descriptor for AnyPublisher<A, B>);
    v35 = v59;
    Publishers.Merge.init(_:_:)();
    static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v66 = qword_10038B5B8;
    sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    sub_10000E244(&qword_10033D720, &qword_10033D6F8, &unk_100274940, &protocol conformance descriptor for Publishers.Merge<A, B>);
    sub_100076FC4(&qword_10034B420, &qword_100339320, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v36 = v44;
    v37 = v43;
    Publisher.throttle<A>(for:scheduler:latest:)();
    (*(v64 + 8))(v31, v51);
    (*(v42 + 8))(v35, v37);
    swift_allocObject();
    swift_weakInit();
    type metadata accessor for ActivityDisplayContext(0);
    sub_10000E244(&qword_10033D728, &qword_10033D700, &qword_100273470, &protocol conformance descriptor for Publishers.Throttle<A, B>);
    v38 = v45;
    v39 = v49;
    Publisher.compactMap<A>(_:)();

    (*(v47 + 8))(v36, v39);
    sub_10000E244(&qword_10033D730, &qword_10033D708, &qword_100273478, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    v40 = v50;
    v24 = Publisher.eraseToAnyPublisher()();
    (*(v48 + 8))(v38, v40);
    *(v30 + v46) = v24;
  }

  return v24;
}

uint64_t sub_10006F430@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v33 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  sub_1000704E8(v7);
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    v5 = v7;
  }

  else
  {
    v33 = a1;
    v16 = v7;
    v17 = *(v9 + 32);
    v17(v14, v16, v8);
    sub_10007037C(v5);
    if (v15(v5, 1, v8) != 1)
    {
      v17(v12, v5, v8);
      v31 = *(sub_100035D04(&qword_10033D6E0, &qword_100273450) + 48);
      v32 = v33;
      v17(v33, v14, v8);
      v17(v32 + v31, v12, v8);
      v26 = _s8CardInfoOMa(0);
      swift_storeEnumTagMultiPayload();
      v27 = *(*(v26 - 8) + 56);
      v28 = v32;
      return v27(v28, 0, 1, v26);
    }

    (*(v9 + 8))(v14, v8);
    a1 = v33;
  }

  sub_1000097E8(v5, &unk_100348F30, &unk_100272540);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = sub_10000DF0C(v18, v19);
  v22 = v21;

  if (!v22)
  {
    v29 = _s8CardInfoOMa(0);
    return (*(*(v29 - 8) + 56))(a1, 1, 1, v29);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v23 = sub_10000C868();
  v25 = v24;

  *a1 = v20;
  a1[1] = v22;
  a1[2] = v23;
  a1[3] = v25;
  v26 = _s8CardInfoOMa(0);
  swift_storeEnumTagMultiPayload();
  v27 = *(*(v26 - 8) + 56);
  v28 = a1;
  return v27(v28, 0, 1, v26);
}

uint64_t sub_10006F838()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___educationFlowPolicy;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___educationFlowPolicy))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___educationFlowPolicy);
  }

  else
  {
    v3 = v0;
    type metadata accessor for HandoffEducationFlowPolicy();
    swift_allocObject();

    v2 = sub_1001DFCD4(v4);

    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10006F8C8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = v16;
  if (v16)
  {
    if (([v16 nearbyActionFlags]& 0x10) != 0)
    {
      if (qword_100338E88 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100003078(v9, qword_10033CBC8);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "isHandoffReady: isAdvertisingDeviceClose", v12, 2u);
      }

      goto LABEL_20;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = *(&v16->isa + OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID);
  v4 = v3;

  if (v3)
  {

    if (qword_100338E88 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003078(v5, qword_10033CBC8);
    v2 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v2, v6))
    {
      goto LABEL_20;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "isHandoffReady: nearbyID exists";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v2, v6, v8, v7, 2u);

LABEL_20:

    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = *(&v16->isa + OBJC_IVAR____TtC17proximitycontrold8Identity_enableModelBasedRangingCapabilities);

  if (v13 == 1)
  {
    if (qword_100338E88 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003078(v14, qword_10033CBC8);
    v2 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v2, v6))
    {
      goto LABEL_20;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "isHandoffReady: enableModelBasedRangingCapabilities";
    goto LABEL_19;
  }

  return 0;
}

double sub_10006FC84@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_10006FD08()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___mediaRemoteDisplayContextPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___mediaRemoteDisplayContextPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___mediaRemoteDisplayContextPublisher);
  }

  else
  {

    sub_10001D430();
    sub_100035D04(&qword_10033C398, &unk_100272BB0);
    sub_10000E244(&qword_10033D518, &qword_10033C398, &unk_100272BB0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    Publisher.eraseToAnyPublisher()();

    sub_100035D04(&qword_10033D4E0, &qword_10028EA40);
    sub_10000E244(&qword_10033D4E8, &qword_10033D4E0, &qword_10028EA40, &protocol conformance descriptor for AnyPublisher<A, B>);
    v2 = Publisher.eraseToAnyPublisher()();

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10006FE7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  LODWORD(v2) = *(v2 + 16);
  if (v2 != 7)
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = sub_10000A0B4(v4, v5);
  v7 = v6;

  if (v7)
  {
    LOBYTE(v2) = sub_100011F00(v2, v7);
  }

  else
  {
    LOBYTE(v2) = 7;
  }

  if ((*(v3 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_isMock) & 1) == 0)
  {
    *(v3 + 16) = v2;
  }

  if (v2 == 7)
  {
    v8 = 0;
  }

  else
  {
LABEL_9:
    if (v2 >= 3u)
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v8 = 1;
    }
  }

  return v8 & 1;
}

double sub_10006FFBC(uint64_t a1)
{
  *(*(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__transfer) + 24) = a1;

  sub_10005E5A8(v2);

  CurrentValueSubject.send(_:)();

  return result;
}

uint64_t sub_10007005C()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___transferPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___transferPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___transferPublisher);
  }

  else
  {

    sub_10005E5A8(v3);
    sub_100035D04(&qword_10033C3A0, &qword_1002733B0);
    sub_10000E244(&qword_10033D6D8, &qword_10033C3A0, &qword_1002733B0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    v2 = Publisher.eraseToAnyPublisher()();

    *(v0 + v1) = v2;
  }

  return v2;
}

char *sub_100070168()
{
  v1 = sub_10009F1DC(v0, &off_100300700);
  v3 = v2;
  v5 = v4;
  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10033CBC8);
  sub_10007732C(v1, v3, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  sub_100077374(v1, v3, v5);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100017494(0xD000000000000015, 0x8000000100299590, &v16);
    *(v9 + 12) = 2080;
    if (v5 == 1)
    {
      v10 = 0xE300000000000000;
      v11 = 7104878;
    }

    else
    {

      v12 = v1;
      v11 = String.init<A>(describing:)();
      v10 = v13;
    }

    v14 = sub_100017494(v11, v10, &v16);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  return v1;
}

uint64_t sub_10007037C@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8 && (v3 = [v8 home], v8, v3))
  {
    v4 = [v3 uniqueIdentifier];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();
  return (*(*(v6 - 8) + 56))(a2, v5, 1, v6);
}

uint64_t sub_1000704E8@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7)
  {
    v3 = [v7 uniqueIdentifier];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for UUID();
  return (*(*(v5 - 8) + 56))(a2, v4, 1, v5);
}

uint64_t sub_100070630()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = sub_100035D04(&qword_10033D6A8, &qword_100273378);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  v8 = sub_100035D04(&qword_10034D8F0, &unk_100273380);
  v43 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_100035D04(&qword_10033D6B0, &unk_100274510);
  __chkstk_darwin(v11);
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___localActivityPublisher))
  {
    v15 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___localActivityPublisher);
  }

  else
  {
    v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = v14;
    v36 = v13;
    v37 = v2;
    v38 = v1;
    v39 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___localActivityPublisher;
    v40 = v7;
    v41 = v5;
    v42 = v4;
    v33 = v0;
    v16 = &v31 - v12;
    v44 = sub_1001EF03C();
    swift_allocObject();
    swift_weakInit();
    sub_100035D04(&unk_10034D910, &unk_100273390);
    v17 = sub_100035D04(&qword_10034B4F0, &unk_10027C100);
    sub_10000E244(&unk_10034D920, &unk_10034D910, &unk_100273390, &protocol conformance descriptor for AnyPublisher<A, B>);
    v31 = v17;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033D6B8, &qword_10034D8F0, &unk_100273380, &protocol conformance descriptor for Publishers.Map<A, B>);
    v32 = v16;
    Publisher.removeDuplicates(by:)();
    (*(v43 + 8))(v10, v8);
    if (qword_100338E88 != -1)
    {
      swift_once();
    }

    v18 = v38;
    v19 = sub_100003078(v38, qword_10033CBC8);
    v20 = static os_log_type_t.info.getter();
    v21 = v37;
    v22 = v34;
    (*(v37 + 16))(v34, v19, v18);
    v23 = (*(v21 + 80) + 64) & ~*(v21 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = sub_100073E5C;
    *(v24 + 24) = xmmword_100272E90;
    *(v24 + 40) = 0x8000000100299570;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0xE000000000000000;
    (*(v21 + 32))(v24 + v23, v22, v18);
    *(v24 + v23 + v3) = v20;
    sub_10000E244(&unk_10034D930, &qword_10033D6B0, &unk_100274510, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    v25 = v40;
    v26 = v36;
    v27 = v32;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033D6C0, &qword_10033D6A8, &qword_100273378, &protocol conformance descriptor for Publishers.Map<A, B>);
    v28 = v42;
    v29 = Publisher.eraseToAnyPublisher()();
    (*(v41 + 8))(v25, v28);
    (*(v35 + 8))(v27, v26);
    v44 = v29;
    sub_100035D04(&qword_10033D6C8, &unk_1002733A0);
    sub_10000E244(&unk_10034D940, &qword_10033D6C8, &unk_1002733A0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v15 = Publisher.eraseToAnyPublisher()();

    *(v33 + v39) = v15;
  }

  return v15;
}

uint64_t sub_100070C80(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v5)
  {
    return 0;
  }

  v2 = [v5 firmwareVersion];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100070D94(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v3;
  if (!v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return 0;
  }

  return result;
}

unint64_t sub_100070EF4()
{

  CurrentValueSubject.value.getter();
  v0 = v2;
  if (v2 == 6)
  {
    CurrentValueSubject.value.getter();

    v0 = v3;
  }

  else
  {
  }

  return 0x40302010000uLL >> (8 * v0);
}

uint64_t sub_100070F78()
{
  v1 = type metadata accessor for Logger();
  v40 = *(v1 - 8);
  v2 = *(v40 + 64);
  __chkstk_darwin(v1);
  v3 = sub_100035D04(&qword_10033D640, &qword_100273268);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v31 - v5;
  v7 = sub_100035D04(&qword_10033D648, &qword_100273270);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v31 - v9;
  v11 = sub_100035D04(&qword_10033D650, &qword_100273278);
  __chkstk_darwin(v11);
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___uxRegionPublisher))
  {
    v15 = *(v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___uxRegionPublisher);
  }

  else
  {
    v32 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = v14;
    v34 = v13;
    v35 = v6;
    v31[0] = v1;
    v37 = v4;
    v38 = v3;
    v39 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice____lazy_storage___uxRegionPublisher;
    v36 = v0;
    v16 = v31 - v12;
    v41 = sub_10006E404();
    sub_100035D04(&qword_1003398B0, &qword_100273280);
    v17 = sub_100035D04(&qword_10034B640, &qword_100273288);
    sub_10000E244(&qword_1003398B8, &qword_1003398B0, &qword_100273280, &protocol conformance descriptor for AnyPublisher<A, B>);
    v31[1] = v17;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033D658, &qword_10033D648, &qword_100273270, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_1000773C0(&qword_10033D660, &qword_10034B640, &qword_100273288, sub_1000771B0);
    Publisher<>.removeDuplicates()();
    (*(v8 + 8))(v10, v7);
    if (qword_100338E88 != -1)
    {
      swift_once();
    }

    v18 = v31[0];
    v19 = sub_100003078(v31[0], qword_10033CBC8);
    v20 = static os_log_type_t.info.getter();
    v21 = v40;
    v22 = v32;
    (*(v40 + 16))(v32, v19, v18);
    v23 = (*(v21 + 80) + 64) & ~*(v21 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    strcpy((v24 + 32), "New UXRegion: ");
    *(v24 + 47) = -18;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0xE000000000000000;
    (*(v21 + 32))(v24 + v23, v22, v18);
    *(v24 + v23 + v2) = v20;
    sub_10000E244(&qword_10033D670, &qword_10033D650, &qword_100273278, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    v26 = v34;
    v25 = v35;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033D678, &qword_10033D640, &qword_100273268, &protocol conformance descriptor for Publishers.Map<A, B>);
    v27 = v38;
    v28 = Publisher.eraseToAnyPublisher()();
    (*(v37 + 8))(v25, v27);
    (*(v33 + 8))(v16, v26);
    v41 = v28;
    sub_100035D04(&qword_10033D680, &qword_100273290);
    sub_10000E244(&qword_10033D688, &qword_10033D680, &qword_100273290, &protocol conformance descriptor for AnyPublisher<A, B>);
    v29 = Publisher.share()();

    v41 = v29;
    sub_100035D04(&qword_10033D690, &qword_100273298);
    sub_10000E244(&qword_10033D698, &qword_10033D690, &qword_100273298, &protocol conformance descriptor for Publishers.Share<A>);
    v15 = Publisher.eraseToAnyPublisher()();

    *(v36 + v39) = v15;
  }

  return v15;
}

double sub_1000715FC()
{
  v1 = sub_100035D04(&qword_10033D448, &qword_100273110);
  v110 = *(v1 - 8);
  v111 = v1;
  __chkstk_darwin(v1);
  v109 = v77 - v2;
  v3 = sub_100035D04(&qword_10033D450, &qword_100273118);
  v107 = *(v3 - 8);
  v108 = v3;
  __chkstk_darwin(v3);
  v106 = v77 - v4;
  v115 = sub_100035D04(&qword_10033D458, &qword_100273120);
  v113 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = v77 - v5;
  v6 = sub_100035D04(&qword_10033D460, &qword_100273128);
  v116 = *(v6 - 8);
  v117 = v6;
  __chkstk_darwin(v6);
  v114 = v77 - v7;
  v99 = sub_100035D04(&qword_10033D468, &qword_100273130);
  v98 = *(v99 - 1);
  __chkstk_darwin(v99);
  v97 = v77 - v8;
  v102 = sub_100035D04(&qword_10033D470, &qword_100273138);
  v101 = *(v102 - 1);
  __chkstk_darwin(v102);
  v100 = v77 - v9;
  v105 = sub_100035D04(&qword_10033D478, &unk_100273140);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = v77 - v10;
  v93 = sub_100035D04(&qword_100339868, &qword_100270370);
  v92 = *(v93 - 1);
  __chkstk_darwin(v93);
  v91 = v77 - v11;
  v96 = sub_100035D04(&qword_10033D480, &qword_100273150);
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = v77 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v120 = v13;
  v121 = v14;
  __chkstk_darwin(v13);
  v87 = v15;
  v119 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_100035D04(&qword_10033D488, &qword_100273158);
  v82 = *(v86 - 1);
  __chkstk_darwin(v86);
  v81 = v77 - v16;
  v80 = sub_100035D04(&qword_10033D490, &unk_100273160);
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77[0] = v77 - v17;
  v83 = sub_100035D04(&qword_10033C3B0, &qword_100272C68);
  v18 = *(v83 - 8);
  __chkstk_darwin(v83);
  v20 = v77 - v19;
  v84 = sub_100035D04(&qword_10033D498, &qword_100273170);
  v85 = *(v84 - 1);
  __chkstk_darwin(v84);
  v22 = v77 - v21;
  v89 = sub_100035D04(&qword_10033D4A0, &qword_100273178);
  v90 = *(v89 - 8);
  __chkstk_darwin(v89);
  v24 = v77 - v23;
  v25 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_discoveryTokenStateMachine;
  swift_beginAccess();
  v122 = *(*(v0 + v25) + 40);
  sub_100035D04(&qword_10033AAE0, &qword_100273180);
  sub_10000E244(&qword_10033D4A8, &qword_10033AAE0, &qword_100273180, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v122 = Publisher.eraseToAnyPublisher()();
  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&qword_10033D4B0, &qword_100273188);
  v88 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000E244(&qword_10033D4B8, &qword_10033D4B0, &qword_100273188, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  v26 = v0 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_tasks;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();
  sub_100035D04(&qword_10033C3C8, &unk_100272C80);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100035D04(&qword_10033D4C0, &unk_100273190);
  sub_10000E244(&qword_10033C3D0, &qword_10033C3B0, &qword_100272C68, &protocol conformance descriptor for Published<A>.Publisher);
  v27 = v83;
  Publisher.map<A>(_:)();
  (*(v18 + 8))(v20, v27);
  sub_10000E244(&qword_10033D4C8, &qword_10033D498, &qword_100273170, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_10000E244(&qword_10033D4D0, &qword_10033D4C0, &unk_100273190, &protocol conformance descriptor for Publishers.Merge3<A, B, C>);
  v28 = v84;
  Publisher<>.switchToLatest()();
  (*(v85 + 8))(v22, v28);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_100007458;
  *(v30 + 24) = v29;
  sub_10000E244(&qword_10033D4D8, &qword_10033D4A0, &qword_100273178, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
  v31 = v89;
  Publisher<>.sink(receiveValue:)();

  v32 = v24;
  v33 = v77[0];
  v90[1](v32, v31);
  swift_beginAccess();
  v118 = v26;
  AnyCancellable.store(in:)();
  swift_endAccess();

  v122 = sub_10006FD08();
  v34 = sub_100035D04(&qword_10033D4E0, &qword_10028EA40);
  sub_100035D04(&qword_1003396B0, &qword_1002731A0);
  v35 = sub_10000E244(&qword_10033D4E8, &qword_10033D4E0, &qword_10028EA40, v88);
  v77[2] = v34;
  v77[1] = v35;
  Publisher.map<A>(_:)();

  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v36 = v120;
  v37 = sub_100003078(v120, qword_10033CBC8);
  v89 = v37;
  v38 = static os_log_type_t.info.getter();
  v39 = v121;
  v40 = *(v121 + 16);
  v88 = (v121 + 16);
  v90 = v40;
  v41 = v119;
  (v40)(v119, v37, v36);
  v42 = v39;
  v85 = *(v39 + 80);
  v43 = (v85 + 64) & ~v85;
  v83 = v43;
  v44 = &v87[v43];
  v79 = &v87[v43];
  v45 = swift_allocObject();
  *(v45 + 16) = sub_10001D60C;
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 40) = 0xE000000000000000;
  *(v45 + 48) = 0;
  *(v45 + 56) = 0xE000000000000000;
  v46 = *(v42 + 32);
  v121 = v42 + 32;
  v84 = v46;
  (v46)(v45 + v43, v41, v36);
  v44[v45] = v38;
  v87 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000E244(&qword_10033D4F0, &qword_10033D490, &unk_100273160, &protocol conformance descriptor for Publishers.Map<A, B>);
  v47 = v81;
  v48 = v80;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033D4F8, &qword_10033D488, &qword_100273158, &protocol conformance descriptor for Publishers.Map<A, B>);
  v49 = v86;
  v50 = Publisher.eraseToAnyPublisher()();
  (*(v82 + 8))(v47, v49);
  (*(v78 + 8))(v33, v48);
  v122 = v50;
  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&qword_10033D500, &qword_1002731A8);
  v86 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000E244(&qword_10033D508, &qword_10033D500, &qword_1002731A8, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();
  sub_100035D04(&qword_1003398E8, &qword_1002703C8);
  v51 = v91;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10000E244(&qword_1003398F0, &qword_100339868, &qword_100270370, &protocol conformance descriptor for Published<A>.Publisher);
  v52 = v94;
  v53 = v93;
  Publisher.dropFirst(_:)();
  (*(v92 + 8))(v51, v53);
  swift_allocObject();
  swift_weakInit();
  v93 = &protocol conformance descriptor for Publishers.Drop<A>;
  sub_10000E244(&qword_10033D510, &qword_10033D480, &qword_100273150, &protocol conformance descriptor for Publishers.Drop<A>);
  v54 = v96;
  Publisher<>.sink(receiveValue:)();

  (*(v95 + 8))(v52, v54);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v122 = sub_10001D430();
  sub_100035D04(&qword_10033C398, &unk_100272BB0);
  sub_10000E244(&qword_10033D518, &qword_10033C398, &unk_100272BB0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v55 = Publisher.eraseToAnyPublisher()();

  v122 = v55;
  v56 = v97;
  Publisher.dropFirst(_:)();

  sub_100003118(0, &qword_10033D520, PCMediaRemoteDisplayContext_ptr);
  sub_10000E244(&qword_10033D528, &qword_10033D468, &qword_100273130, &protocol conformance descriptor for Publishers.Drop<A>);
  v57 = v100;
  v58 = v99;
  Publisher.compactMap<A>(_:)();
  (*(v98 + 8))(v56, v58);
  swift_allocObject();
  swift_weakInit();
  v99 = &protocol conformance descriptor for Publishers.CompactMap<A, B>;
  sub_10000E244(&qword_10033D530, &qword_10033D470, &qword_100273138, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v59 = v103;
  v60 = v102;
  Publisher.filter(_:)();

  (*(v101 + 8))(v57, v60);
  swift_allocObject();
  swift_weakInit();
  v102 = &protocol conformance descriptor for Publishers.Filter<A>;
  sub_10000E244(&qword_10033D538, &qword_10033D478, &unk_100273140, &protocol conformance descriptor for Publishers.Filter<A>);
  v61 = v105;
  Publisher<>.sink(receiveValue:)();

  (*(v104 + 8))(v59, v61);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v122 = sub_10005E88C();
  sub_100035D04(&qword_10033C2D8, &qword_100272AD0);
  sub_10000E244(&qword_10033D540, &qword_10033C2D8, &qword_100272AD0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v62 = Publisher.eraseToAnyPublisher()();

  v122 = v62;
  sub_100035D04(&qword_10033D548, &unk_1002731B0);
  sub_10000E244(&qword_10033D550, &qword_10033D548, &unk_1002731B0, v86);
  v63 = v106;
  Publisher.dropFirst(_:)();

  LOBYTE(v53) = static os_log_type_t.info.getter();
  v64 = v119;
  v65 = v120;
  (v90)(v119, v89, v120);
  v66 = v79;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_100075360;
  *(v67 + 24) = xmmword_100272EA0;
  *(v67 + 40) = 0x8000000100299440;
  *(v67 + 48) = 0;
  *(v67 + 56) = 0xE000000000000000;
  (v84)(v67 + v83, v64, v65);
  v66[v67] = v53;
  sub_100035D04(&qword_10033D558, qword_100289880);
  sub_10000E244(&qword_10033D560, &qword_10033D450, &qword_100273118, v93);
  v68 = v108;
  v69 = v109;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033D568, &qword_10033D448, &qword_100273110, v87);
  v70 = v111;
  v71 = Publisher.eraseToAnyPublisher()();
  (*(v110 + 8))(v69, v70);
  (*(v107 + 8))(v63, v68);
  v122 = v71;
  v72 = v112;
  Publisher.compactMap<A>(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_10033D570, &qword_10033D458, &qword_100273120, v99);
  v74 = v114;
  v73 = v115;
  Publisher.filter(_:)();

  (*(v113 + 8))(v72, v73);
  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_10033D578, &qword_10033D460, &qword_100273128, v102);
  v75 = v117;
  Publisher<>.sink(receiveValue:)();

  (*(v116 + 8))(v74, v75);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return result;
}

double sub_100072F14()
{
  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10033CBC8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100017494(0x6164696C61766E69, 0xEC00000029286574, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000903C(v4);
  }

  return sub_10007306C();
}

double sub_10007306C()
{
  v1 = v0;
  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033CBC8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0xD000000000000017, 0x8000000100299420, &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnection;
  [*(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnection) invalidate];
  v8 = *(v1 + v7);
  *(v1 + v7) = 0;

  *(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionFuture) = 0;

  v9 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionTask;
  if (*(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionTask))
  {

    AnyCancellable.cancel()();
  }

  *(v1 + v9) = 0;

  return result;
}

uint64_t sub_10007322C(uint64_t a1, unint64_t a2)
{
  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10033CBC8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100017494(0xD000000000000028, 0x80000001002993F0, &v10);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100017494(a1, a2, &v10);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: mediaRouteIdentifier=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = (v10 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredMediaRouteID);
  *v8 = a1;
  v8[1] = a2;
}

double sub_100073434(uint64_t a1, unint64_t a2)
{
  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10033CBC8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100017494(0xD00000000000001DLL, 0x80000001002993D0, &v12);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100017494(a1, a2, &v12);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: colorCode=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = v12;
  v9 = (v12 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredColorCode);
  *v9 = a1;
  v9[1] = a2;

  v10 = v8 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset;
  *v10 = 0;
  *(v10 + 8) = 1;

  sub_1000BDC5C();

  return result;
}

double sub_100073658()
{
  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10033CBC8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100017494(0xD000000000000016, 0x80000001002993B0, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000903C(v4);
  }

  v7 = 1;
  sub_10000D8F4(0x100000000uLL);

  return result;
}

void sub_1000737D0()
{
  v0 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  __chkstk_darwin(v0);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100035D04(&qword_10033AAF8, &qword_100271808);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = sub_10000E120();

  if (!v6)
  {
    if (qword_100338E88 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003078(v7, qword_10033CBC8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Needs to restart ranging session as guest", v10, 2u);
    }

    *v2 = 1;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1000114E0(v2, v5);
    sub_100010B48(v2);
    sub_1000097E8(v5, &qword_10033AAF8, &qword_100271808);
    swift_endAccess();
  }
}

uint64_t sub_100073B30()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10038AEE8);
  sub_100003078(v0, qword_10038AEE8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100073BB4()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033CBC8);
  v1 = sub_100003078(v0, qword_10033CBC8);
  if (qword_100338E80 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038AEE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100073C7C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for HandoffDevice(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100073CBC(unsigned __int8 *a1)
{
  if (*a1 == 5)
  {
    return 7104878;
  }

  else
  {
    return String.init<A>(describing:)();
  }
}

uint64_t sub_100073D0C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1001F00B0();
    sub_100249BE4(v4, v5, a2);

    swift_unknownObjectRelease();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for ActivityDisplayContext(0);
  return (*(*(v7 - 8) + 56))(a2, v6, 1, v7);
}

void *sub_100073DE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001F00B0();
  *a1 = result;
  return result;
}

id sub_100073E10(void **a1, void *a2)
{
  v4 = *a1;
  v5 = (v4 | *a2) == 0;
  if (v4)
  {
    v6 = *a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    return [v4 isEqual:{v2, v3}];
  }

  return v5;
}

uint64_t sub_100073E5C(uint64_t *a1)
{
  if (!*a1)
  {
    return 7104878;
  }

  swift_unknownObjectRetain();
  sub_100035D04(&qword_10033D6D0, &unk_10027C120);
  return String.init<A>(describing:)();
}

uint64_t sub_100073ED8()
{
  sub_10006DED8();

  return swift_deallocClassInstance();
}

void sub_100073F38(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1000741F0(319, &qword_10033CCA8, type metadata accessor for Identity, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      sub_10007418C(319);
      if (v3 <= 0x3F)
      {
        sub_1000741F0(319, &qword_10033CCC0, &type metadata accessor for Date, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10007418C(uint64_t a1)
{
  if (!qword_10033CCB0)
  {
    sub_100035D4C(&qword_10033CCB8, &qword_100272F78);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_10033CCB0);
    }
  }
}

void sub_1000741F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double sub_100074254(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000742AC();
  }

  return result;
}

void sub_1000742AC()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  __chkstk_darwin(v2 - 8);
  v4 = &v19[-1] - v3;
  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10033CBC8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_100017494(0xD00000000000002ALL, 0x8000000100299540, v19);
    *(v8 + 12) = 2080;
    v9 = String.init<A>(describing:)();
    v11 = sub_100017494(v9, v10, v19);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: output=%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    Date.init()();
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
    v13 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_lastTokenSyncAttempt;
    swift_beginAccess();
    sub_1000770B8(v4, v1 + v13);
    swift_endAccess();
    v14 = swift_allocObject();
    swift_weakInit();

    sub_10016A04C(v1, sub_100077128, v14);
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v18, v15, "### Trying to request ranging token without a delegate?", v16, 2u);
    }

    v17 = v18;
  }
}

uint64_t sub_10007461C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v48 = sub_100035D04(&qword_10033D588, &qword_100273208);
  v53 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = v38 - v3;
  v4 = sub_100035D04(&qword_10033D590, &qword_100273210);
  v5 = *(v4 - 8);
  v50 = v4;
  v51 = v5;
  __chkstk_darwin(v4);
  v45 = v38 - v6;
  v46 = sub_100035D04(&qword_10033D598, &qword_100273218);
  v52 = *(v46 - 8);
  __chkstk_darwin(v46);
  v44 = v38 - v7;
  v8 = sub_100035D04(&qword_10033D5A0, &qword_100273220);
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  __chkstk_darwin(v8);
  v11 = v38 - v10;
  v12 = sub_100035D04(&qword_10033D5A8, &qword_100273228);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v38 - v14;
  v16 = sub_100035D04(&qword_10033D5B0, &unk_100273230);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v38 - v18;
  v20 = *a1;
  swift_beginAccess();
  sub_100035D04(&qword_10033D5B8, &unk_10027A860);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10000E244(&qword_10033D5C0, &qword_10033D5A8, &qword_100273228, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100076F14();
  Publisher<>.removeDuplicates()();
  (*(v13 + 8))(v15, v12);
  sub_10000E244(&qword_10033D5E0, &qword_10033D5B0, &unk_100273230, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_10033D5E8, &qword_10033D5A0, &qword_100273220, &protocol conformance descriptor for Publishers.Map<A, B>);
  v21 = v42;
  v22 = Publisher.eraseToAnyPublisher()();
  (*(v43 + 8))(v11, v21);
  (*(v17 + 8))(v19, v16);
  v55 = v22;
  v41 = v20;
  swift_beginAccess();
  v43 = sub_100035D04(&qword_10033D5F0, &unk_10027A850);
  v23 = v45;
  Published.projectedValue.getter();
  swift_endAccess();
  v42 = sub_10000E244(&qword_10033D5F8, &qword_10033D590, &qword_100273210, &protocol conformance descriptor for Published<A>.Publisher);
  v40 = sub_100077008();
  v24 = v44;
  v25 = v50;
  Publisher<>.removeDuplicates()();
  v26 = *(v51 + 8);
  v51 += 8;
  v39 = v26;
  v26(v23, v25);
  v38[2] = sub_10000E244(&qword_10033D620, &qword_10033D598, &qword_100273218, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v38[1] = nullsub_1;
  v28 = v46;
  v27 = v47;
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_10033D628, &qword_10033D588, &qword_100273208, &protocol conformance descriptor for Publishers.Map<A, B>);
  v29 = v48;
  v30 = Publisher.eraseToAnyPublisher()();
  v31 = *(v53 + 8);
  v53 += 8;
  v31(v27, v29);
  v32 = *(v52 + 8);
  v52 += 8;
  v32(v24, v28);
  v54 = v30;
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  v33 = v24;
  v34 = v50;
  Publisher<>.removeDuplicates()();
  v39(v23, v34);
  v35 = v33;
  Publisher.map<A>(_:)();
  v36 = Publisher.eraseToAnyPublisher()();
  v31(v27, v29);
  v32(v35, v28);
  v56 = v36;
  sub_100035D04(&qword_10033D630, &unk_100274960);
  sub_10000E244(&qword_10034A3F0, &qword_10033D630, &unk_100274960, &protocol conformance descriptor for AnyPublisher<A, B>);
  return Publishers.Merge3.init(_:_:_:)();
}

double sub_100074E20(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100074E80(v2);
  }

  return result;
}

void sub_100074E80(void *a1)
{
  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033CBC8);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31[0] = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_100017494(0xD000000000000031, 0x8000000100299490, v31);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v3;
    *v7 = v3;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: displayContext=%@", v6, 0x16u);
    sub_1000097E8(v7, &qword_100339940, &unk_100272C50);

    sub_10000903C(v8);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v12 = sub_10000DF0C(v10, v11);
    v14 = v13;

    if (v14)
    {
      v15 = v3;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        *(v18 + 4) = v15;
        *v19 = v15;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v16, v17, "Forwarding context from MR to legacy %@", v18, 0xCu);
        sub_1000097E8(v19, &qword_100339940, &unk_100272C50);
      }

      swift_beginAccess();
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v23 = sub_1000176C8(v21, v22);
      sub_1000AD744(v15, v12, v14, v30, v23);

      swift_beginAccess();
      sub_1001682D4(2);
      swift_endAccess();
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "### No mediaRouteID?", v28, 2u);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v24, "### No legacyDelegate?", v25, 2u);
    }
  }
}

uint64_t sub_100075360(uint64_t *a1)
{
  v1 = a1[2];
  if (v1 == 3)
  {
    return 7104878;
  }

  sub_10006C458(*a1, a1[1], v1, a1[3], a1[4], a1[5], a1[6]);
  return String.init<A>(describing:)();
}

void sub_1000753CC(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v7;
  a2[6] = v8;
  sub_10006CCD4(v3, v2, v4, v5, v6, v7, v8);
}

double sub_1000753F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100075468(v4);
  }

  return result;
}

void sub_100075468(__int128 *a1)
{
  if (qword_100338E88 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033CBC8);
  sub_100076E64(a1, &v35);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  sub_100076EC0(a1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_100017494(0xD000000000000025, 0x8000000100299460, &v34);
    *(v5 + 12) = 2080;
    v6 = a1[1];
    v35 = *a1;
    v36 = v6;
    v37 = a1[2];
    v38 = *(a1 + 6);
    sub_100076E64(a1, v33);
    v7 = String.init<A>(describing:)();
    v9 = sub_100017494(v7, v8, &v34);

    *(v5 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: transferState=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "### No legacyDelegate?", v29, 2u);
    }

    goto LABEL_17;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = sub_10000DF0C(v10, v11);
  v14 = v13;

  if (!v14)
  {
    v27 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v27, v30, "### No mediaRouteID?", v31, 2u);
    }

    swift_unknownObjectRelease();
LABEL_17:

    return;
  }

  sub_100076E64(a1, &v35);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  sub_100076EC0(a1);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = v12;
    v18 = swift_slowAlloc();
    v34 = v18;
    *v17 = 136315138;
    v19 = a1[1];
    v35 = *a1;
    v36 = v19;
    v37 = a1[2];
    v38 = *(a1 + 6);
    sub_100076E64(a1, v33);
    v20 = String.init<A>(describing:)();
    v22 = sub_100017494(v20, v21, &v34);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Forwarding transfer state from MR to legacy %s", v17, 0xCu);
    sub_10000903C(v18);
    v12 = v32;
  }

  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v24 = v33[0];
  v26 = sub_1000176C8(v23, v25);
  sub_1000AE12C(a1, v12, v14, v24, v26);

  if (*(a1 + 2) > 2uLL)
  {
    swift_beginAccess();
    sub_1001682D4(2);
    swift_endAccess();
  }

  swift_unknownObjectRelease();
}