Swift::Int sub_1001D20B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE900000000000044;
  }

  String.hash(into:)();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

double sub_1001D2138(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE900000000000044;
  }

  String.hash(into:)();

  v2, v3, v4, v5, v6, v7, v8, v9;
  return result;
}

Swift::Int sub_1001D21AC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v3 = 0xE900000000000044;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_1001D223C(uint64_t *a1@<X8>)
{
  v2 = 0x49746E756F636361;
  if (*v1)
  {
    v2 = 0x44496D72616C61;
  }

  v3 = 0xE900000000000044;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1001D229C()
{
  if (*v0)
  {
    return 0x44496D72616C61;
  }

  else
  {
    return 0x49746E756F636361;
  }
}

uint64_t sub_1001D22DC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001D2340(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0x65746E49656D6974;
  }

  else
  {
    v9 = 0x44497463656A626FLL;
  }

  if (v8)
  {
    v10 = 0xE800000000000000;
  }

  else
  {
    v10 = 0xEC0000006C617672;
  }

  if (*a2)
  {
    v11 = 0x65746E49656D6974;
  }

  else
  {
    v11 = 0x44497463656A626FLL;
  }

  if (*a2)
  {
    v12 = 0xEC0000006C617672;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

Swift::Int sub_1001D23F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 0xEC0000006C617672;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  String.hash(into:)();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

double sub_1001D247C(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xEC0000006C617672;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  String.hash(into:)();

  v2, v3, v4, v5, v6, v7, v8, v9;
  return result;
}

Swift::Int sub_1001D24F4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 0xEC0000006C617672;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_1001D2588(uint64_t *a1@<X8>)
{
  v2 = 0x44497463656A626FLL;
  if (*v1)
  {
    v2 = 0x65746E49656D6974;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEC0000006C617672;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1001D25EC()
{
  if (*v0)
  {
    return 0x65746E49656D6974;
  }

  else
  {
    return 0x44497463656A626FLL;
  }
}

id sub_1001D270C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for REMAlarmDateTriggerCDIngestor_ObjC();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1001D2764(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0x706D6F4365746164;
  }

  else
  {
    v9 = 0x44497463656A626FLL;
  }

  if (v8)
  {
    v10 = 0xE800000000000000;
  }

  else
  {
    v10 = 0xEE0073746E656E6FLL;
  }

  if (*a2)
  {
    v11 = 0x706D6F4365746164;
  }

  else
  {
    v11 = 0x44497463656A626FLL;
  }

  if (*a2)
  {
    v12 = 0xEE0073746E656E6FLL;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

Swift::Int sub_1001D2818()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 0xEE0073746E656E6FLL;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  String.hash(into:)();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

double sub_1001D28A8(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xEE0073746E656E6FLL;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  String.hash(into:)();

  v2, v3, v4, v5, v6, v7, v8, v9;
  return result;
}

Swift::Int sub_1001D2924(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 0xEE0073746E656E6FLL;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_1001D29BC(uint64_t *a1@<X8>)
{
  v2 = 0x44497463656A626FLL;
  if (*v1)
  {
    v2 = 0x706D6F4365746164;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEE0073746E656E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1001D2A24()
{
  if (*v0)
  {
    return 0x706D6F4365746164;
  }

  else
  {
    return 0x44497463656A626FLL;
  }
}

uint64_t sub_1001D2A90(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1;
  v9 = 0xD000000000000012;
  v10 = 0x80000001007EA8C0;
  if (v8 == 1)
  {
    v11 = 0x80000001007EA8C0;
  }

  else
  {
    v9 = 0x74696D69786F7270;
    v11 = 0xE900000000000079;
  }

  if (*a1)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0x44497463656A626FLL;
  }

  if (v8)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE800000000000000;
  }

  v14 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v14 = 0x74696D69786F7270;
    v10 = 0xE900000000000079;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x44497463656A626FLL;
  }

  if (*a2)
  {
    v16 = v10;
  }

  else
  {
    v16 = 0xE800000000000000;
  }

  if (v12 == v15 && v13 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v13, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

Swift::Int sub_1001D2B94()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0x80000001007EA8C0;
  if (v1 != 1)
  {
    v2 = 0xE900000000000079;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

double sub_1001D2C40(uint64_t a1)
{
  v2 = 0x80000001007EA8C0;
  if (*v1 != 1)
  {
    v2 = 0xE900000000000079;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
  return result;
}

Swift::Int sub_1001D2CD8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 0x80000001007EA8C0;
  if (v2 != 1)
  {
    v3 = 0xE900000000000079;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_1001D2D80@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001D3DEC(*a1);
  *a2 = result;
  return result;
}

void sub_1001D2DB0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x80000001007EA8C0;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0x74696D69786F7270;
    v4 = 0xE900000000000079;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x44497463656A626FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1001D2E28@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001D3DEC(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1001D2E50()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x74696D69786F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44497463656A626FLL;
  }
}

uint64_t sub_1001D2ED8(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0x746E657665;
  }

  else
  {
    v9 = 0x44497463656A626FLL;
  }

  if (v8)
  {
    v10 = 0xE800000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (*a2)
  {
    v11 = 0x746E657665;
  }

  else
  {
    v11 = 0x44497463656A626FLL;
  }

  if (*a2)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

Swift::Int sub_1001D2F7C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 0xE500000000000000;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  String.hash(into:)();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

double sub_1001D2FFC(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE500000000000000;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  String.hash(into:)();

  v2, v3, v4, v5, v6, v7, v8, v9;
  return result;
}

Swift::Int sub_1001D3068(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_1001D30F0(Swift::OpaquePointer cases@<0:X3>, uint64_t *a2@<X0>, char *a3@<X8>)
{
  v4._countAndFlagsBits = *a2;
  v5 = a2[1];
  v4._object = v5;
  v6 = _findStringSwitchCase(cases:string:)(cases, v4);
  v5, v7, v8, v9, v10, v11, v12, v13;
  if (v6 == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  if (!v6)
  {
    v14 = 0;
  }

  *a3 = v14;
}

void sub_1001D314C(uint64_t *a1@<X8>)
{
  v2 = 0x44497463656A626FLL;
  if (*v1)
  {
    v2 = 0x746E657665;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_1001D31A4(Swift::String string@<0:X0, 8:X1>, Swift::OpaquePointer cases@<0:X4>, char *a3@<X8>)
{
  object = string._object;
  v4._countAndFlagsBits = string._countAndFlagsBits;
  v4._object = object;
  v6 = _findStringSwitchCase(cases:string:)(cases, v4);
  object, v7, v8, v9, v10, v11, v12, v13;
  if (v6 == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  if (!v6)
  {
    v14 = 0;
  }

  *a3 = v14;
}

uint64_t sub_1001D3204()
{
  if (*v0)
  {
    return 0x746E657665;
  }

  else
  {
    return 0x44497463656A626FLL;
  }
}

uint64_t sub_1001D329C(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v5 = swift_allocObject();
  v6 = v5;
  *(v5 + 16) = xmmword_1007953F0;
  v7 = 16;
  if (v3)
  {
    v7 = 24;
  }

  v8 = *(v4 + v7);
  *(v5 + 32) = v8;
  v9 = v8;
  return v6;
}

id sub_1001D333C(id ObjCClassFromMetadata)
{
  v3 = sub_1000F5104(&qword_10093B790, &qword_100798D88);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v36 - v5;
  v7 = type metadata accessor for DateComponents();
  v8 = *(v7 - 8);
  *&v10 = __chkstk_darwin(v7, v9).n128_u64[0];
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 0;
  v13 = [ObjCClassFromMetadata remObjectIDWithError:{&v38, v10}];
  if (v13)
  {
    v14 = v13;
    v15 = v38;
    v16 = [ObjCClassFromMetadata dateComponentsData];
    if (v16)
    {
      v17 = v16;
      v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_1001D4528();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (v1)
      {

        (*(v8 + 56))(v6, 1, 1, v7);
        sub_1000050A4(v6, &qword_10093B790, &qword_100798D88);
        ObjCClassFromMetadata = objc_opt_self();
        v21 = String._bridgeToObjectiveC()();
        [ObjCClassFromMetadata internalErrorWithDebugDescription:v21];

        swift_willThrow();
        sub_10001BBA0(v18, v20);
      }

      else
      {

        (*(v8 + 56))(v6, 0, 1, v7);
        (*(v8 + 32))(v12, v6, v7);
        v32 = objc_allocWithZone(REMAlarmDateTrigger);
        v33.super.isa = DateComponents._bridgeToObjectiveC()().super.isa;
        v37 = v20;
        isa = v33.super.isa;
        ObjCClassFromMetadata = [v32 initWithObjectID:v14 dateComponents:v33.super.isa];

        sub_10001BBA0(v18, v37);
        (*(v8 + 8))(v12, v7);
      }
    }

    else
    {
      if (qword_100935B90 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_10093BB68);
      v24 = v14;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        *(v27 + 4) = v24;
        *v28 = v14;
        v29 = v24;
        _os_log_impl(&_mh_execute_header, v25, v26, "REMAlarmDateTriggerCDIngestor: cdAlarmDateTrigger.dateComponentsData is nil {cdAlarmDateTrigger.remObjectID: %@}", v27, 0xCu);
        sub_1000050A4(v28, &unk_100938E70, &unk_100797230);
      }

      v30 = objc_opt_self();
      sub_1001D44DC();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v31 = String._bridgeToObjectiveC()();
      [v30 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v31];

      swift_willThrow();
    }
  }

  else
  {
    v22 = v38;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return ObjCClassFromMetadata;
}

id sub_1001D3844(void *a1)
{
  v2 = [a1 event];
  v10 = 0;
  v3 = [a1 remObjectIDWithError:&v10];
  v4 = v10;
  if (v3)
  {
    v5 = v3;
    v6 = objc_allocWithZone(REMAlarmVehicleTrigger);
    v7 = v4;
    v2 = [v6 initWithObjectID:v5 event:v2];
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

id sub_1001D394C(void *a1)
{
  v2 = [a1 proximity];
  v3 = [a1 title];
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [a1 locationUID];
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (v6)
    {
      goto LABEL_6;
    }

LABEL_9:
    v11 = 0;
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v10 = 0;
  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_6:
  v11 = String._bridgeToObjectiveC()();
  v6, v12, v13, v14, v15, v16, v17, v18;
  if (v10)
  {
LABEL_7:
    v19 = String._bridgeToObjectiveC()();
    v10, v20, v21, v22, v23, v24, v25, v26;
    goto LABEL_11;
  }

LABEL_10:
  v19 = 0;
LABEL_11:
  v27 = [objc_allocWithZone(REMStructuredLocation) initWithTitle:v11 locationUID:v19];

  [a1 latitude];
  [v27 setLatitude:?];
  [a1 longitude];
  [v27 setLongitude:?];
  [a1 radius];
  [v27 setRadius:?];
  v28 = [a1 address];
  [v27 setAddress:v28];

  v29 = [a1 routing];
  [v27 setRouting:v29];

  v30 = [a1 referenceFrameString];
  [v27 setReferenceFrameString:v30];

  v31 = [a1 contactLabel];
  [v27 setContactLabel:v31];

  v32 = [a1 mapKitHandle];
  if (v32)
  {
    v33 = v32;
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10001BBA0(v34, v36);
  }

  else
  {
    v37.super.isa = 0;
  }

  [v27 setMapKitHandle:v37.super.isa];

  v45 = 0;
  v38 = [a1 remObjectIDWithError:&v45];
  v39 = v45;
  if (v38)
  {
    v40 = v38;
    v41 = objc_allocWithZone(REMAlarmLocationTrigger);
    v42 = v39;
    v43 = [v41 initWithObjectID:v40 structuredLocation:v27 proximity:v2];
  }

  else
  {
    v43 = v45;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v43;
}

id sub_1001D3CF0(void *a1)
{
  v1 = a1;
  v8 = 0;
  v2 = [a1 remObjectIDWithError:&v8];
  if (v2)
  {
    v3 = v2;
    v4 = v8;
    [v1 timeInterval];
    v1 = [objc_allocWithZone(REMAlarmTimeIntervalTrigger) initWithObjectID:v3 timeInterval:v5];
  }

  else
  {
    v6 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

unint64_t sub_1001D3DEC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E10E0, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

id sub_1001D3E38(void *a1, void *a2, void *a3)
{
  type metadata accessor for REMAlarmDateTriggerCDIngestor();
  inited = swift_initStackObject();
  *(inited + 16) = a2;
  *(inited + 24) = a3;
  v7 = a2;
  v8 = a3;
  v9 = sub_1001D333C(a1);

  return v9;
}

void sub_1001D4010(void *a1, void *a2, uint64_t a3)
{
  v46 = type metadata accessor for UUID();
  *&v8 = __chkstk_darwin(v46, v6).n128_u64[0];
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  if (!v11)
  {
    return;
  }

  v12 = (a3 + 32);
  v45 = (v7 + 8);
  while (1)
  {
    while (1)
    {
      v17 = *v12++;
      v16 = v17;
      if (v17)
      {
        break;
      }

      v13 = [a1 remObjectID];
      v14 = [v13 uuid];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v15.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      (*v45)(v10, v46);
      [a2 setIdentifier:v15.super.isa];
LABEL_4:

      if (!--v11)
      {
        return;
      }
    }

    if (v16 == 1)
    {
      v18 = [a1 structuredLocation];
      v19 = [v18 locationUID];

      [a2 setLocationUID:v19];
      v20 = [a1 structuredLocation];
      v21 = [v20 title];

      [a2 setTitle:v21];
      v22 = [a1 structuredLocation];
      [v22 latitude];
      v24 = v23;

      [a2 setLatitude:v24];
      v25 = [a1 structuredLocation];
      [v25 longitude];
      v27 = v26;

      [a2 setLongitude:v27];
      v28 = [a1 structuredLocation];
      [v28 radius];
      v30 = v29;

      [a2 setRadius:v30];
      v31 = [a1 structuredLocation];
      v32 = [v31 address];

      [a2 setAddress:v32];
      v33 = [a1 structuredLocation];
      v34 = [v33 routing];

      [a2 setRouting:v34];
      v35 = [a1 structuredLocation];
      v36 = [v35 referenceFrameString];

      [a2 setReferenceFrameString:v36];
      v37 = [a1 structuredLocation];
      v38 = [v37 contactLabel];

      [a2 setContactLabel:v38];
      v39 = [a1 structuredLocation];
      v15.super.isa = [v39 mapKitHandle];

      if (v15.super.isa)
      {
        v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        v15.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_10001BBA0(v40, v42);
      }

      [a2 setMapKitHandle:v15.super.isa];
      goto LABEL_4;
    }

    v43 = [a1 proximity];
    if (v43 < -32768)
    {
      break;
    }

    if (v43 >= 0x8000)
    {
      goto LABEL_15;
    }

    [a2 setProximity:v43];
    if (!--v11)
    {
      return;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

unint64_t sub_1001D44DC()
{
  result = qword_100940350;
  if (!qword_100940350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100940350);
  }

  return result;
}

unint64_t sub_1001D4528()
{
  result = qword_10093B928;
  if (!qword_10093B928)
  {
    type metadata accessor for DateComponents();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093B928);
  }

  return result;
}

unint64_t sub_1001D4604()
{
  result = qword_10093C408;
  if (!qword_10093C408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C408);
  }

  return result;
}

unint64_t sub_1001D468C()
{
  result = qword_10093C420;
  if (!qword_10093C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C420);
  }

  return result;
}

unint64_t sub_1001D4714()
{
  result = qword_10093C438;
  if (!qword_10093C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C438);
  }

  return result;
}

unint64_t sub_1001D479C()
{
  result = qword_10093C450;
  if (!qword_10093C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C450);
  }

  return result;
}

unint64_t sub_1001D4824()
{
  result = qword_10093C468;
  if (!qword_10093C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C468);
  }

  return result;
}

uint64_t sub_1001D488C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093C470);
  v1 = sub_100006654(v0, qword_10093C470);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_1001D4954(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v5 = [v2 secondaryGroceryLocalesInfoChecksum];
  if (!v5)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = v5;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (!a2)
  {
    v10, v11, v12, v13, v14, v15, v16, v17;
    goto LABEL_12;
  }

  if (v8 != a1 || v10 != a2)
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v10, v20, v21, v22, v23, v24, v25, v26;
    if (v19)
    {
      return result;
    }

LABEL_10:
    a2 = String._bridgeToObjectiveC()();
LABEL_12:
    [v2 setSecondaryGroceryLocalesInfoChecksum:a2];

    v27 = [v2 createResolutionTokenMapIfNecessary];
    v28 = String._bridgeToObjectiveC()();
    [v27 updateForKey:v28];

    return result;
  }

  v10, v11, v12, v13, v14, v15, v16, v17;
  return result;
}

uint64_t assignWithCopy for RDClientIdentity(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 44);
  v9 = *(a2 + 40);
  sub_10000C71C(*a2, v4, v5, v6, v7, v9 | (v8 << 32));
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40) | (*(a1 + 44) << 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v9;
  *(a1 + 44) = v8;
  sub_10000CC4C(v10, v11, v12, v13, v14, v15, v16, v17);
  return a1;
}

__n128 initializeWithTake for RDClientIdentity.XPCClientIdentity(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for RDClientIdentity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v9 = *(a2 + 32);
  v10 = *(a2 + 44);
  v11 = *(a2 + 40);
  v12 = *a1;
  v14 = *(a1 + 8);
  v13 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40) | (*(a1 + 44) << 32);
  v18 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v18;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 44) = v10;
  sub_10000CC4C(v12, v14, v13, v15, v16, v17, a7, a8);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDClientIdentity(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFD && *(a1 + 46))
  {
    return (*a1 + 16381);
  }

  v3 = ((*(a1 + 44) >> 14) | (4 * ((*(a1 + 44) >> 2) & 0xF80 | (*(a1 + 44) >> 1)))) ^ 0x3FFF;
  if (v3 >> 2 >= 0xFFF)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for RDClientIdentity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 16381;
    if (a3 >= 0x3FFD)
    {
      *(result + 46) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFD)
    {
      *(result + 46) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 0;
      *(result + 44) = ((v3 << 34) & 0xFE0000000000 | ((v3 & 0x7F) << 33)) >> 32;
    }
  }

  return result;
}

uint64_t sub_1001D4D10(uint64_t a1)
{
  v1 = *(a1 + 44) >> 14;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001D4D2C(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = a1 + 40;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = WORD2(v3) & 0x3FFF;
  return result;
}

uint64_t sub_1001D4D48(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 40);
    result += 40;
    v3 = (v2 | (*(result + 4) << 32)) & 0x101FFFFFFFFLL | (a2 << 46);
    *result = v2;
    *(result + 4) = WORD2(v3);
  }

  else
  {
    *result = (a2 - 3);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 44) = -16384;
  }

  return result;
}

uint64_t assignWithCopy for RDClientIdentity.XPCClientIdentity(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v4, v5, v6, v7, v8, v9, v10, v11;
  *(a1 + 24) = *(a2 + 24);
  v12 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  v12, v13, v14, v15, v16, v17, v18, v19;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 45) = *(a2 + 45);
  return a1;
}

uint64_t assignWithTake for RDClientIdentity.XPCClientIdentity(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *a1 = *a2;
  v10 = *(a2 + 16);
  v11 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v10;
  v11, a2, a3, a4, a5, a6, a7, a8;
  v12 = *(a2 + 32);
  v13 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v12;
  v13, v14, v15, v16, v17, v18, v19, v20;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 45) = *(a2 + 45);
  return a1;
}

uint64_t getEnumTagSinglePayload for RDClientIdentity.XPCClientIdentity(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 46))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RDClientIdentity.XPCClientIdentity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 46) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 46) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

id static REMCDSavedReminder.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

unint64_t sub_1001D5034(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000027;
    if (a1 == 10)
    {
      v6 = 0xD000000000000019;
    }

    if (a1 == 9)
    {
      v6 = 0xD00000000000001CLL;
    }

    v7 = 0xD000000000000017;
    v8 = 0x53676E6974726F73;
    if (a1 != 7)
    {
      v8 = 0xD000000000000015;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x44497463656A626FLL;
    v2 = 1701667182;
    v3 = 0x726F6C6F63;
    if (a1 != 4)
    {
      v3 = 0x626D456567646162;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000017;
    if (a1 != 1)
    {
      v4 = 0x72756769666E6F63;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1001D51D0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1001D5034(*a1);
  v5 = v4;
  v6 = sub_1001D5034(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

Swift::Int sub_1001D5258()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1001D5034(v1);
  v3 = v2;
  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

double sub_1001D52BC(uint64_t a1)
{
  sub_1001D5034(*v1);
  v3 = v2;
  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
  return result;
}

Swift::Int sub_1001D5310(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1001D5034(v2);
  v4 = v3;
  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_1001D5370@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001DA3AC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1001D53A0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1001D5034(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1001D53CC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001DA3AC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001D540C(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1;
  v9 = 0x6341746E65726170;
  v10 = 0xEF4449746E756F63;
  v11 = 0x80000001007E9FD0;
  if (v8 != 1)
  {
    v9 = 0xD000000000000014;
    v10 = 0x80000001007E9FD0;
  }

  if (*a1)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0x49746E756F636361;
  }

  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE900000000000044;
  }

  v14 = 0x6341746E65726170;
  if (*a2 == 1)
  {
    v11 = 0xEF4449746E756F63;
  }

  else
  {
    v14 = 0xD000000000000014;
  }

  if (*a2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x49746E756F636361;
  }

  if (*a2)
  {
    v16 = v11;
  }

  else
  {
    v16 = 0xE900000000000044;
  }

  if (v12 == v15 && v13 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v13, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

Swift::Int sub_1001D5520()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xEF4449746E756F63;
  if (v1 != 1)
  {
    v2 = 0x80000001007E9FD0;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE900000000000044;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

double sub_1001D55D8(uint64_t a1)
{
  v2 = 0xEF4449746E756F63;
  if (*v1 != 1)
  {
    v2 = 0x80000001007E9FD0;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE900000000000044;
  }

  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
  return result;
}

Swift::Int sub_1001D567C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 0xEF4449746E756F63;
  if (v2 != 1)
  {
    v3 = 0x80000001007E9FD0;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE900000000000044;
  }

  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_1001D5730@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001DA3F8(*a1);
  *a2 = result;
  return result;
}

void sub_1001D5760(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000044;
  v4 = 0xEF4449746E756F63;
  v5 = 0x6341746E65726170;
  if (v2 != 1)
  {
    v5 = 0xD000000000000014;
    v4 = 0x80000001007E9FD0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x49746E756F636361;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1001D57D4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001DA3F8(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1001D57FC()
{
  v1 = 0x6341746E65726170;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49746E756F636361;
  }
}

Swift::Int sub_1001D587C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001D58E8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1001D5960(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1850, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  *a2 = v5 != 0;
}

Swift::Int sub_1001D59E0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001D5A54(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1001D5AB4(Swift::OpaquePointer cases@<0:X3>, uint64_t *a2@<X0>, BOOL *a3@<X8>)
{
  v4._countAndFlagsBits = *a2;
  v5 = a2[1];
  v4._object = v5;
  v6 = _findStringSwitchCase(cases:string:)(cases, v4);
  v5, v7, v8, v9, v10, v11, v12, v13;
  *a3 = v6 != 0;
}

void sub_1001D5B24(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1888, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  *a2 = v5 != 0;
}

void *sub_1001D5BA8()
{
  result = sub_1001D5BC8();
  qword_100974C38 = result;
  return result;
}

void *sub_1001D5BC8()
{
  v0 = 0;
  while (1)
  {
    v11 = *(&off_1008E2050 + v0 + 32);
    if (v11 > 5)
    {
      if (*(&off_1008E2050 + v0 + 32) > 8u)
      {
        goto LABEL_3;
      }

      if (v11 == 7)
      {
        v18 = 0x53676E6974726F73;
      }

      else
      {
        v18 = 0xD000000000000015;
      }

      v19 = 0x80000001007EA6E0;
      if (v11 == 7)
      {
        v19 = 0xEC000000656C7974;
      }

      v16 = v11 == 6 ? 0xD000000000000017 : v18;
      v17 = (v11 == 6 ? 0x80000001007E8D40 : v19);
    }

    else
    {
      v12 = 0x726F6C6F63;
      if (v11 != 4)
      {
        v12 = 0x626D456567646162;
      }

      v13 = 0xE500000000000000;
      if (v11 != 4)
      {
        v13 = 0xEB000000006D656CLL;
      }

      if (v11 == 3)
      {
        v12 = 1701667182;
        v13 = 0xE400000000000000;
      }

      v14 = 0xD000000000000017;
      if (v11 != 1)
      {
        v14 = 0x72756769666E6F63;
      }

      v15 = 0xED00006E6F697461;
      if (v11 == 1)
      {
        v15 = 0x80000001007E8C60;
      }

      if (!*(&off_1008E2050 + v0 + 32))
      {
        v14 = 0x44497463656A626FLL;
        v15 = 0xE800000000000000;
      }

      v16 = *(&off_1008E2050 + v0 + 32) <= 2u ? v14 : v12;
      v17 = (*(&off_1008E2050 + v0 + 32) <= 2u ? v15 : v13);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_100005F4C(v16, v17);
    v29 = _swiftEmptyDictionarySingleton[2];
    v30 = (v22 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      break;
    }

    v33 = v22;
    if (_swiftEmptyDictionarySingleton[3] >= v32)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = v21;
        sub_100373664();
        v21 = v38;
        if ((v33 & 1) == 0)
        {
LABEL_41:
          _swiftEmptyDictionarySingleton[(v21 >> 6) + 8] |= 1 << v21;
          v34 = (_swiftEmptyDictionarySingleton[6] + 16 * v21);
          *v34 = v16;
          v34[1] = v17;
          v35 = (_swiftEmptyDictionarySingleton[7] + 16 * v21);
          *v35 = v16;
          v35[1] = v17;
          v36 = _swiftEmptyDictionarySingleton[2];
          v31 = __OFADD__(v36, 1);
          v37 = v36 + 1;
          if (v31)
          {
            goto LABEL_80;
          }

          _swiftEmptyDictionarySingleton[2] = v37;
          goto LABEL_3;
        }

        goto LABEL_2;
      }
    }

    else
    {
      sub_10036A8F0(v32, isUniquelyReferenced_nonNull_native);
      v21 = sub_100005F4C(v16, v17);
      if ((v33 & 1) != (v22 & 1))
      {
        goto LABEL_81;
      }
    }

    if ((v33 & 1) == 0)
    {
      goto LABEL_41;
    }

LABEL_2:
    v1 = v21;
    v17, v22, v23, v24, v25, v26, v27, v28;
    v2 = (_swiftEmptyDictionarySingleton[7] + 16 * v1);
    v3 = v2[1];
    *v2 = v16;
    v2[1] = v17;
    v3, v4, v5, v6, v7, v8, v9, v10;
LABEL_3:
    if (++v0 == 12)
    {
      v39 = 0;
      while (1)
      {
        v50 = &off_1008E2080 + v39++;
        v51 = v50[32];
        v52 = 0x6341746E65726170;
        if (v51 != 1)
        {
          v52 = 0xD000000000000014;
        }

        v53 = 0xEF4449746E756F63;
        if (v51 != 1)
        {
          v53 = 0x80000001007E9FD0;
        }

        v54 = 0xED0000746E756F63;
        if (v51 != 1)
        {
          v54 = 0x80000001007E9FD0;
        }

        if (v51)
        {
          v55 = v52;
        }

        else
        {
          v55 = 0x49746E756F636361;
        }

        if (v51)
        {
          v56 = v53;
        }

        else
        {
          v56 = 0xE900000000000044;
        }

        if (v51)
        {
          v57 = v52;
        }

        else
        {
          v57 = 0x746E756F636361;
        }

        if (v51)
        {
          v58 = v54;
        }

        else
        {
          v58 = 0xE700000000000000;
        }

        v59 = swift_isUniquelyReferenced_nonNull_native();
        v60 = sub_100005F4C(v55, v56);
        v68 = _swiftEmptyDictionarySingleton[2];
        v69 = (v61 & 1) == 0;
        v31 = __OFADD__(v68, v69);
        v70 = v68 + v69;
        if (v31)
        {
          __break(1u);
          goto LABEL_78;
        }

        v71 = v61;
        if (_swiftEmptyDictionarySingleton[3] >= v70)
        {
          if (v59)
          {
            goto LABEL_70;
          }

          v76 = v60;
          sub_100373664();
          v60 = v76;
          if ((v71 & 1) == 0)
          {
            goto LABEL_71;
          }

LABEL_46:
          v40 = v60;
          v56, v61, v62, v63, v64, v65, v66, v67;
          v41 = (_swiftEmptyDictionarySingleton[7] + 16 * v40);
          v42 = v41[1];
          *v41 = v57;
          v41[1] = v58;
          v42, v43, v44, v45, v46, v47, v48, v49;
          if (v39 == 3)
          {
            return _swiftEmptyDictionarySingleton;
          }
        }

        else
        {
          sub_10036A8F0(v70, v59);
          v60 = sub_100005F4C(v55, v56);
          if ((v71 & 1) != (v61 & 1))
          {
            goto LABEL_81;
          }

LABEL_70:
          if (v71)
          {
            goto LABEL_46;
          }

LABEL_71:
          _swiftEmptyDictionarySingleton[(v60 >> 6) + 8] |= 1 << v60;
          v72 = (_swiftEmptyDictionarySingleton[6] + 16 * v60);
          *v72 = v55;
          v72[1] = v56;
          v73 = (_swiftEmptyDictionarySingleton[7] + 16 * v60);
          *v73 = v57;
          v73[1] = v58;
          v74 = _swiftEmptyDictionarySingleton[2];
          v31 = __OFADD__(v74, 1);
          v75 = v74 + 1;
          if (v31)
          {
            goto LABEL_79;
          }

          _swiftEmptyDictionarySingleton[2] = v75;
          if (v39 == 3)
          {
            return _swiftEmptyDictionarySingleton;
          }
        }
      }
    }
  }

LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1001D6074(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v501 = a4;
  v500 = *v7;
  v11 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v11 - 8, v12);
  v14 = v494 - v13;
  v15 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v15 - 8, v16);
  v503 = v494 - v17;
  v525 = type metadata accessor for UUID();
  v18 = *(v525 - 8);
  *&v20 = __chkstk_darwin(v525, v19).n128_u64[0];
  v524 = v494 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v515 = a2;
  v508 = [a2 createResolutionTokenMapIfNecessary];
  v22 = [a1 resolutionTokenMap];
  if (!v22)
  {
    if (qword_100935BA0 != -1)
    {
      swift_once();
    }

    v290 = type metadata accessor for Logger();
    sub_100006654(v290, qword_10093C488);
    v291 = a1;

    v292 = Logger.logObject.getter();
    v293 = static os_log_type_t.fault.getter();
    a3, v294, v295, v296, v297, v298, v299, v300;

    if (os_log_type_enabled(v292, v293))
    {
      v301 = swift_slowAlloc();
      v302 = swift_slowAlloc();
      v303 = swift_slowAlloc();
      v526 = v303;
      *v301 = 138543618;
      v304 = [v291 objectID];
      *(v301 + 4) = v304;
      v523 = v302;
      *v302 = v304;
      *(v301 + 6) = 2082;
      v305 = *(a3 + 16);
      v306 = &_swiftEmptyArrayStorage;
      if (v305)
      {
        v519 = v303;
        LODWORD(v520) = v293;
        v521 = v301;
        v522 = v292;
        v528 = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, v305, 0);
        v307 = (a3 + 32);
        v306 = v528;
        v308 = 0x80000001007EA260;
        v309 = 0x80000001007EA240;
        v310 = 0x80000001007EA010;
        v524 = 0x80000001007E8D40;
        v525 = 0x80000001007EA6E0;
        do
        {
          v312 = *v307++;
          v311 = v312;
          v313 = 0xD00000000000001CLL;
          v314 = 0xD000000000000019;
          if (v312 == 10)
          {
            v315 = v309;
          }

          else
          {
            v314 = 0xD000000000000027;
            v315 = v308;
          }

          if (v311 == 9)
          {
            v316 = v310;
          }

          else
          {
            v313 = v314;
            v316 = v315;
          }

          if (v311 == 7)
          {
            v317 = 0x53676E6974726F73;
          }

          else
          {
            v317 = 0xD000000000000015;
          }

          v318 = v525;
          if (v311 == 7)
          {
            v318 = 0xEC000000656C7974;
          }

          if (v311 == 6)
          {
            v317 = 0xD000000000000017;
            v318 = v524;
          }

          if (v311 <= 8)
          {
            v313 = v317;
            v316 = v318;
          }

          if (v311 == 4)
          {
            v319 = 0x726F6C6F63;
          }

          else
          {
            v319 = 0x626D456567646162;
          }

          v320 = 0xE500000000000000;
          if (v311 != 4)
          {
            v320 = 0xEB000000006D656CLL;
          }

          if (v311 == 3)
          {
            v319 = 1701667182;
            v320 = 0xE400000000000000;
          }

          if (v311 == 1)
          {
            v321 = 0xD000000000000017;
          }

          else
          {
            v321 = 0x72756769666E6F63;
          }

          if (v311 == 1)
          {
            v322 = 0x80000001007E8C60;
          }

          else
          {
            v322 = 0xED00006E6F697461;
          }

          if (!v311)
          {
            v321 = 0x44497463656A626FLL;
            v322 = 0xE800000000000000;
          }

          if (v311 <= 2)
          {
            v319 = v321;
            v320 = v322;
          }

          if (v311 <= 5)
          {
            v323 = v319;
          }

          else
          {
            v323 = v313;
          }

          if (v311 <= 5)
          {
            v324 = v320;
          }

          else
          {
            v324 = v316;
          }

          v528 = v306;
          v326 = *v306->clientIdentity;
          v325 = *&v306->clientIdentity[8];
          if (v326 >= v325 >> 1)
          {
            v517 = v309;
            v518 = v308;
            v516 = v310;
            sub_100026EF4((v325 > 1), v326 + 1, 1);
            v310 = v516;
            v309 = v517;
            v308 = v518;
            v306 = v528;
          }

          *v306->clientIdentity = v326 + 1;
          v327 = v306 + 16 * v326;
          *(v327 + 4) = v323;
          *(v327 + 5) = v324;
          --v305;
        }

        while (v305);
        v301 = v521;
        v292 = v522;
        LOBYTE(v293) = v520;
        v303 = v519;
      }

      v328 = Array.description.getter();
      v330 = v329;
      v306, v329, v331, v332, v333, v334, v335, v336;
      v337 = sub_10000668C(v328, v330, &v526);
      v330, v338, v339, v340, v341, v342, v343, v344;
      *(v301 + 14) = v337;
      _os_log_impl(&_mh_execute_header, v292, v293, "REMTemplateStorageCDIngestor: merge(storage:into cdTemplate:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, keys: %{public}s}", v301, 0x16u);
      sub_1000050A4(v523, &unk_100938E70, &unk_100797230);

      sub_10000607C(v303);
    }

    v345 = objc_opt_self();
    sub_1000060C8(0, &qword_10093C668, REMTemplateStorage_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v347 = String._bridgeToObjectiveC()();
    [v345 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v347];

    swift_willThrow();
    v348 = &v530;
    goto LABEL_273;
  }

  v23 = v22;
  v507 = sub_100694A1C(v22, a3);
  v25 = *(a3 + 16);
  v26 = a3;
  v27 = &selRef_hack_willSaveHandled;
  if (!v25)
  {
    goto LABEL_302;
  }

  v504 = v14;
  v517 = v5;
  v499 = v23;
  v28 = 0;
  v23 = 0;
  v506 = 0;
  v518 = (v26 + 32);
  v523 = (v18 + 8);
  v494[1] = "TemplateIdentifier";
  v514 = 0x80000001007EA260;
  v513 = 0x80000001007EA240;
  v512 = 0x80000001007EA010;
  v511 = 0x80000001007EA6E0;
  v510 = 0x80000001007E8D40;
  v516 = 0x80000001007E8C60;
  v498 = v26;
  v497 = v26 + 33;
  *&v24 = 136315138;
  v502 = v24;
  *&v24 = 138543618;
  v495 = v24;
  *&v24 = 136446722;
  v496 = v24;
  v521 = v25;
  v522 = a1;
  while (1)
  {
    v29 = (v28 + 1);
    if (__OFADD__(v28, 1))
    {
LABEL_315:
      __break(1u);
      goto LABEL_316;
    }

    v30 = *(v28 + v518);
    if (v30 > 5)
    {
      if (*(v28 + v518) <= 8u)
      {
        v27 = &selRef_hack_willSaveHandled;
        if (v30 == 6)
        {
          v28 = (v28 + 1);
LABEL_56:
          v67 = [a1 showingLargeAttachments];
          [v515 setShowingLargeAttachments:v67];
        }

        else
        {
          if (v30 != 7)
          {
            v28 = (v28 + 1);
            sub_1001DA444(a1);
            v25 = v521;
            if (v28 == v521)
            {
              goto LABEL_278;
            }

            goto LABEL_5;
          }

          v28 = (v28 + 1);
LABEL_22:
          if (qword_100935BB0 != -1)
          {
            swift_once();
          }

          v34 = qword_100974C38;
          if (*(qword_100974C38 + 16) && (v35 = sub_100005F4C(0x53676E6974726F73, 0xEC000000656C7974), (v36 & 1) != 0))
          {
            v6 = *(*(v34 + 56) + 16 * v35 + 8);
          }

          else
          {
            if (qword_100936128 != -1)
            {
              swift_once();
            }

            v93 = type metadata accessor for Logger();
            sub_100006654(v93, qword_100946C50);
            v94 = Logger.logObject.getter();
            v95 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              v526 = v97;
              *v96 = v502;
              v6 = 0xEC000000656C7974;
              *(v96 + 4) = sub_10000668C(0x53676E6974726F73, 0xEC000000656C7974, &v526);
              _os_log_impl(&_mh_execute_header, v94, v95, "Unknown ingestable key {key: %s}", v96, 0xCu);
              sub_10000607C(v97);
            }

            else
            {

              v6 = 0xEC000000656C7974;
            }
          }

          a2 = String._bridgeToObjectiveC()();
          v6, v170, v171, v172, v173, v174, v175, v176;
          v18 = [v508 mergeWithMap:v507 forKey:a2];

          if (v18)
          {
            v18 = [a1 sortingStyle];
            [v515 setSortingStyle:v18];
LABEL_160:

            goto LABEL_161;
          }
        }

        goto LABEL_220;
      }

      v27 = v517;
      if (v30 == 9)
      {
        v28 = (v28 + 1);
        v27 = &selRef_hack_willSaveHandled;
        if (v29 == v25)
        {
          goto LABEL_269;
        }

        goto LABEL_6;
      }

      v509 = (v28 + 1);
      if (v30 != 10)
      {
LABEL_195:
        v203 = [a1 unsavedMembershipsOfRemindersInSections];
        if (v203)
        {
          v204 = v203;
          a2 = v515;
          sub_1005EB1B0(v203);
          if (v27)
          {
            if (qword_100935BA0 != -1)
            {
              swift_once();
            }

            v205 = type metadata accessor for Logger();
            a2 = sub_100006654(v205, qword_10093C488);
            v6 = a1;
            swift_errorRetain();
            v18 = Logger.logObject.getter();
            v206 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v18, v206))
            {
              v207 = swift_slowAlloc();
              v505 = v23;
              v208 = v207;
              v519 = swift_slowAlloc();
              v520 = swift_slowAlloc();
              v528 = v520;
              *v208 = v496;
              v526 = v500;
              swift_getMetatypeMetadata();
              v209 = String.init<A>(describing:)();
              v211 = v210;
              v212 = sub_10000668C(v209, v210, &v528);
              v211, v213, v214, v215, v216, v217, v218, v219;
              *(v208 + 4) = v212;
              *(v208 + 12) = 2114;
              v220 = [v6 objectID];
              *(v208 + 14) = v220;
              v6 = v519;
              *v519 = v220;
              *(v208 + 22) = 2082;
              swift_getErrorValue();
              v221 = Error.rem_errorDescription.getter();
              v223 = v222;
              v224 = sub_10000668C(v221, v222, &v528);
              v223, v225, v226, v227, v228, v229, v230, v231;
              *(v208 + 24) = v224;
              _os_log_impl(&_mh_execute_header, v18, v206, "%{public}s#merge(storage:into:changedValueKeys:coordinator:): Failed to merge 'storage.unsavedMembershipsOfRemindersInSections' into 'cdTemplate' {storage.objectID: %{public}@, error: %{public}s}", v208, 0x20u);
              sub_1000050A4(v6, &unk_100938E70, &unk_100797230);

              a2 = v520;
              swift_arrayDestroy();

              v23 = v505;
            }

            else
            {
            }

            v517 = 0;
          }

          else
          {
            v517 = 0;
          }
        }

        else
        {
          v517 = v27;
        }

LABEL_205:
        v28 = v509;
        v27 = &selRef_hack_willSaveHandled;
        goto LABEL_220;
      }

LABEL_36:
      v42 = [a1 unsavedSectionIDsOrdering];
      v517 = v27;
      if (!v42)
      {
        goto LABEL_205;
      }

      v43 = v42;
      v505 = v23;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v44 >> 62)
      {
        a2 = _CocoaArrayWrapper.endIndex.getter();
        if (a2)
        {
LABEL_39:
          v45 = 0;
          v519 = (v44 & 0xFFFFFFFFFFFFFF8);
          v520 = (v44 & 0xC000000000000001);
          v18 = &_swiftEmptyArrayStorage;
          while (1)
          {
            if (v520)
            {
              v46 = v44;
              v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v45 >= v519[2])
              {
                goto LABEL_318;
              }

              v46 = v44;
              v47 = *(v44 + 8 * v45 + 32);
            }

            v6 = v47;
            v48 = (v45 + 1);
            if (__OFADD__(v45, 1))
            {
              goto LABEL_317;
            }

            v27 = a2;
            v49 = [v47 uuid];
            v50 = v524;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v51 = UUID.uuidString.getter();
            v23 = v52;

            (*v523)(v50, v525);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_100365788(0, *(v18 + 16) + 1, 1, v18, v53, v54, v55, v56);
            }

            v58 = *(v18 + 16);
            v57 = *(v18 + 24);
            v6 = v58 + 1;
            if (v58 >= v57 >> 1)
            {
              v18 = sub_100365788((v57 > 1), v58 + 1, 1, v18, v53, v54, v55, v56);
            }

            *(v18 + 16) = v6;
            v59 = v18 + 16 * v58;
            *(v59 + 32) = v51;
            *(v59 + 40) = v23;
            ++v45;
            a2 = v27;
            v118 = v48 == v27;
            a1 = v522;
            v44 = v46;
            if (v118)
            {
              goto LABEL_209;
            }
          }
        }
      }

      else
      {
        a2 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a2)
        {
          goto LABEL_39;
        }
      }

      v18 = &_swiftEmptyArrayStorage;
LABEL_209:
      v232 = objc_allocWithZone(REMOrderedIdentifierMap);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v234 = [v232 initWithOrderedIdentifiers:isa];
      v18, v235, v236, v237, v238, v239, v240, v241;

      v526 = v234;
      sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
      v18 = v234;
      v242 = v517;
      v243 = REMJSONRepresentable.toJSONData()();
      if (v242)
      {
        v44, v244, v245, v246, v247, v248, v249, v250;

        if (qword_100935BA0 != -1)
        {
          swift_once();
        }

        v251 = type metadata accessor for Logger();
        a2 = sub_100006654(v251, qword_10093C488);
        v6 = a1;
        swift_errorRetain();
        v18 = Logger.logObject.getter();
        v252 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v18, v252))
        {
          v253 = swift_slowAlloc();
          v254 = swift_slowAlloc();
          v520 = swift_slowAlloc();
          v528 = v520;
          *v253 = v496;
          v526 = v500;
          swift_getMetatypeMetadata();
          v255 = String.init<A>(describing:)();
          v257 = v256;
          v258 = sub_10000668C(v255, v256, &v528);
          v257, v259, v260, v261, v262, v263, v264, v265;
          *(v253 + 4) = v258;
          *(v253 + 12) = 2114;
          v266 = [v6 objectID];
          *(v253 + 14) = v266;
          *v254 = v266;
          *(v253 + 22) = 2082;
          swift_getErrorValue();
          v267 = Error.rem_errorDescription.getter();
          v269 = v268;
          v270 = sub_10000668C(v267, v268, &v528);
          v269, v271, v272, v273, v274, v275, v276, v277;
          *(v253 + 24) = v270;
          _os_log_impl(&_mh_execute_header, v18, v252, "%{public}s#merge(storage:into:changedValueKeys:coordinator:): Failed to merge 'storage.unsavedSectionIDsOrdering' into 'cdTemplate' {storage.objectID: %{public}@, error: %{public}s}", v253, 0x20u);
          sub_1000050A4(v254, &unk_100938E70, &unk_100797230);

          a2 = v520;
          swift_arrayDestroy();
        }

        else
        {
        }

        v517 = 0;
      }

      else
      {
        v517 = 0;
        a2 = v243;
        v278 = v244;
        sub_100029344(v243, v244);
        v279 = Data._bridgeToObjectiveC()().super.isa;
        sub_10001BBA0(a2, v278);
        v280 = v515;
        [v515 setSectionIDsOrderingAsData:v279];

        v281 = [v280 createResolutionTokenMapIfNecessary];
        v282 = String._bridgeToObjectiveC()();
        [v281 updateForKey:v282];

        v44, v283, v284, v285, v286, v287, v288, v289;
        sub_10001BBA0(a2, v278);
      }

      v28 = v509;
      goto LABEL_218;
    }

    v27 = &selRef_hack_willSaveHandled;
    if (*(v28 + v518) > 2u)
    {
      if (v30 == 3)
      {
        v28 = (v28 + 1);
LABEL_58:
        if (qword_100935BB0 != -1)
        {
          swift_once();
        }

        v68 = qword_100974C38;
        if (*(qword_100974C38 + 16) && (v69 = sub_100005F4C(1701667182, 0xE400000000000000), (v70 & 1) != 0))
        {
          v71 = *(*(v68 + 56) + 16 * v69 + 8);
        }

        else
        {
          if (qword_100936128 != -1)
          {
            swift_once();
          }

          v77 = type metadata accessor for Logger();
          sub_100006654(v77, qword_100946C50);
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v78, v79))
          {
            v6 = v23;
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v526 = v81;
            *v80 = v502;
            v71 = 0xE400000000000000;
            *(v80 + 4) = sub_10000668C(1701667182, 0xE400000000000000, &v526);
            _os_log_impl(&_mh_execute_header, v78, v79, "Unknown ingestable key {key: %s}", v80, 0xCu);
            sub_10000607C(v81);

            v23 = v6;
          }

          else
          {

            v71 = 0xE400000000000000;
          }
        }

        v18 = String._bridgeToObjectiveC()();
        v71, v140, v141, v142, v143, v144, v145, v146;
        a2 = [v508 mergeWithMap:v507 forKey:v18];

        if (a2)
        {
          v18 = [a1 v27[373]];
          if (!v18)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            a2 = v147;
            v18 = String._bridgeToObjectiveC()();
            a2, v148, v149, v150, v151, v152, v153, v154;
          }

          [v515 setName:v18];
          goto LABEL_160;
        }
      }

      else
      {
        v509 = (v28 + 1);
        if (v30 == 4)
        {
LABEL_29:
          v37 = v517;
          if (qword_100935BB0 != -1)
          {
            swift_once();
          }

          v38 = qword_100974C38;
          if (*(qword_100974C38 + 16) && (v39 = sub_100005F4C(0x726F6C6F63, 0xE500000000000000), (v40 & 1) != 0))
          {
            v41 = *(*(v38 + 56) + 16 * v39 + 8);
          }

          else
          {
            if (qword_100936128 != -1)
            {
              swift_once();
            }

            v82 = type metadata accessor for Logger();
            sub_100006654(v82, qword_100946C50);
            v83 = Logger.logObject.getter();
            v84 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v83, v84))
            {
              v85 = v23;
              LOBYTE(v6) = v37;
              v86 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              v526 = v87;
              *v86 = v502;
              v41 = 0xE500000000000000;
              *(v86 + 4) = sub_10000668C(0x726F6C6F63, 0xE500000000000000, &v526);
              _os_log_impl(&_mh_execute_header, v83, v84, "Unknown ingestable key {key: %s}", v86, 0xCu);
              sub_10000607C(v87);

              v23 = v85;
              v27 = &selRef_hack_willSaveHandled;
            }

            else
            {

              v41 = 0xE500000000000000;
            }
          }

          v18 = String._bridgeToObjectiveC()();
          v41, v155, v156, v157, v158, v159, v160, v161;
          a2 = [v508 mergeWithMap:v507 forKey:v18];

          if (a2)
          {
            v18 = [a1 color];
            [v515 setColor:v18];
            goto LABEL_189;
          }
        }

        else
        {
LABEL_177:
          if (qword_100935BB0 != -1)
          {
            swift_once();
          }

          v187 = qword_100974C38;
          if (*(qword_100974C38 + 16) && (v188 = sub_100005F4C(0x626D456567646162, 0xEB000000006D656CLL), (v189 & 1) != 0))
          {
            v6 = *(*(v187 + 56) + 16 * v188 + 8);
          }

          else
          {
            if (qword_100936128 != -1)
            {
              swift_once();
            }

            v190 = type metadata accessor for Logger();
            sub_100006654(v190, qword_100946C50);
            v191 = Logger.logObject.getter();
            v192 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v191, v192))
            {
              v193 = swift_slowAlloc();
              v194 = swift_slowAlloc();
              v505 = v23;
              v195 = v194;
              v526 = v194;
              *v193 = v502;
              v6 = 0xEB000000006D656CLL;
              *(v193 + 4) = sub_10000668C(0x626D456567646162, 0xEB000000006D656CLL, &v526);
              _os_log_impl(&_mh_execute_header, v191, v192, "Unknown ingestable key {key: %s}", v193, 0xCu);
              sub_10000607C(v195);
              v23 = v505;
            }

            else
            {

              v6 = 0xEB000000006D656CLL;
            }
          }

          a2 = String._bridgeToObjectiveC()();
          v6, v196, v197, v198, v199, v200, v201, v202;
          v18 = [v508 mergeWithMap:v507 forKey:a2];

          if (v18)
          {
            v18 = [a1 badgeEmblem];
            [v515 setBadgeEmblem:v18];
LABEL_189:

            v25 = v521;
            v28 = v509;
            if (v509 == v521)
            {
LABEL_278:
              if (v23)
              {
                goto LABEL_279;
              }

              v23 = v499;
              goto LABEL_301;
            }

            goto LABEL_5;
          }
        }

        v28 = v509;
      }

      goto LABEL_220;
    }

    if (!*(v28 + v518))
    {
      break;
    }

    if (v30 == 1)
    {
      v28 = (v28 + 1);
LABEL_13:
      if (qword_100935BB0 != -1)
      {
        swift_once();
      }

      v31 = qword_100974C38;
      if (*(qword_100974C38 + 16) && (v32 = sub_100005F4C(0xD000000000000017, v516), (v33 & 1) != 0))
      {
        v6 = *(*(v31 + 56) + 16 * v32 + 8);
      }

      else
      {
        if (qword_100936128 != -1)
        {
          swift_once();
        }

        v88 = type metadata accessor for Logger();
        sub_100006654(v88, qword_100946C50);
        v89 = Logger.logObject.getter();
        v90 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v526 = v92;
          *v91 = v502;
          v6 = v516;
          *(v91 + 4) = sub_10000668C(0xD000000000000017, v516, &v526);
          _os_log_impl(&_mh_execute_header, v89, v90, "Unknown ingestable key {key: %s}", v91, 0xCu);
          sub_10000607C(v92);
        }

        else
        {

          v6 = v516;
        }
      }

      a2 = String._bridgeToObjectiveC()();
      v6, v162, v163, v164, v165, v166, v167, v168;
      v18 = [v508 mergeWithMap:v507 forKey:a2];

      if (v18)
      {
        v169 = [a1 minimumSupportedVersion];
        [v515 setMinimumSupportedVersion:v169];
LABEL_161:
        v25 = v521;
        if (v28 == v521)
        {
          goto LABEL_276;
        }

LABEL_5:
        v506 = 1;
        goto LABEL_6;
      }

      goto LABEL_220;
    }

    v72 = [a1 configuration];
    v505 = v23;
    if (v72)
    {
      v73 = v72;
      v74 = [v72 sourceListID];

      v75 = [v74 urlRepresentation];
      v6 = v504;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v76 = 0;
    }

    else
    {
      v76 = 1;
      v6 = v504;
    }

    v18 = type metadata accessor for URL();
    v23 = *(v18 - 8) + 56;
    v520 = *v23;
    (v520)(v6, v76, 1, v18);
    KeyPath = swift_getKeyPath();
    a2 = v515;
    sub_100136640(KeyPath, v6);

    sub_1000050A4(v6, &unk_1009441F0, &qword_100795760);
    if (([a1 isPersisted]& 1) == 0)
    {
      v25 = v521;
      if ((v28 + 1) != v521)
      {
        v132 = v28 + 1;
        v27 = (v28 + v497);
        while (v132 < v25)
        {
          v28 = v132 + 1;
          if (__OFADD__(v132, 1))
          {
            goto LABEL_315;
          }

          v133 = *v27;
          if (v133 != 2)
          {
            if (*v27 <= 5u)
            {
              v27 = &selRef_hack_willSaveHandled;
              v23 = 1;
              if (v133 > 2)
              {
                if (v133 == 3)
                {
                  goto LABEL_58;
                }

                if (v133 == 4)
                {
                  v509 = v132 + 1;
                  goto LABEL_29;
                }

                v509 = v132 + 1;
                goto LABEL_177;
              }

              if (v133)
              {
                goto LABEL_13;
              }

              goto LABEL_53;
            }

            v27 = &selRef_hack_willSaveHandled;
            if (v133 > 8)
            {
              if (v133 != 9)
              {
                v23 = 1;
                if (v133 == 10)
                {
                  v509 = v132 + 1;
                  v27 = v517;
                  goto LABEL_36;
                }

                v509 = v132 + 1;
                v27 = v517;
                goto LABEL_195;
              }

              if (v28 == v25)
              {
                goto LABEL_270;
              }

              v23 = 1;
              goto LABEL_6;
            }

            if (v133 == 6)
            {
              v23 = 1;
              goto LABEL_56;
            }

            if (v133 == 7)
            {
              v23 = 1;
              goto LABEL_22;
            }

            sub_1001DA444(a1);
            v25 = v521;
            v23 = 1;
            v506 = 1;
            if (v28 != v521)
            {
              goto LABEL_6;
            }

            goto LABEL_280;
          }

          v134 = [a1 configuration];
          if (v134)
          {
            v135 = v134;
            v136 = [v134 sourceListID];

            v137 = [v136 urlRepresentation];
            v6 = v504;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v138 = 0;
          }

          else
          {
            v138 = 1;
            v6 = v504;
          }

          (v520)(v6, v138, 1, v18);
          v139 = swift_getKeyPath();
          a2 = v515;
          sub_100136640(v139, v6);

          sub_1000050A4(v6, &unk_1009441F0, &qword_100795760);
          if ([a1 isPersisted])
          {
            v505 = 1;
            v27 = &selRef_hack_willSaveHandled;
            goto LABEL_86;
          }

          ++v132;
          v27 = (v27 + 1);
          v25 = v521;
          if (v28 == v521)
          {
            goto LABEL_270;
          }
        }

LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
LABEL_318:
        __break(1u);
        goto LABEL_319;
      }

LABEL_270:
      LOBYTE(v23) = v506;
      goto LABEL_280;
    }

    v28 = (v28 + 1);
    v27 = &selRef_hack_willSaveHandled;
LABEL_86:
    if (qword_100935BA0 != -1)
    {
      swift_once();
    }

    v99 = type metadata accessor for Logger();
    sub_100006654(v99, qword_10093C488);
    v100 = a1;
    v18 = v498;

    a2 = Logger.logObject.getter();
    v101 = static os_log_type_t.fault.getter();
    v18, v102, v103, v104, v105, v106, v107, v108;

    if (os_log_type_enabled(a2, v101))
    {
      LODWORD(v519) = v101;
      v520 = a2;
      v18 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v509 = swift_slowAlloc();
      v526 = v509;
      *v18 = v495;
      v110 = [v100 objectID];
      *(v18 + 4) = v110;
      v494[0] = v109;
      *v109 = v110;
      *(v18 + 12) = 2082;
      v528 = &_swiftEmptyArrayStorage;
      v111 = v521;
      sub_100026EF4(0, v521, 0);
      v112 = v528;
      v113 = v518;
      do
      {
        v115 = *v113++;
        v114 = v115;
        v116 = 0xD000000000000017;
        v117 = 0xD00000000000001CLL;
        v118 = v115 == 10;
        v119 = 0xD000000000000019;
        if (v115 != 10)
        {
          v119 = 0xD000000000000027;
        }

        v120 = v514;
        if (v118)
        {
          v120 = v513;
        }

        if (v114 != 9)
        {
          v117 = v119;
        }

        v121 = v512;
        if (v114 != 9)
        {
          v121 = v120;
        }

        v122 = 0xD000000000000015;
        if (v114 == 7)
        {
          v122 = 0x53676E6974726F73;
        }

        v123 = 0xEC000000656C7974;
        if (v114 != 7)
        {
          v123 = v511;
        }

        if (v114 == 6)
        {
          v122 = 0xD000000000000017;
          v123 = v510;
        }

        if (v114 <= 8)
        {
          v117 = v122;
          v121 = v123;
        }

        v124 = 0x626D456567646162;
        if (v114 == 4)
        {
          v124 = 0x726F6C6F63;
        }

        v125 = 0xEB000000006D656CLL;
        if (v114 == 4)
        {
          v125 = 0xE500000000000000;
        }

        if (v114 == 3)
        {
          v124 = 1701667182;
          v125 = 0xE400000000000000;
        }

        if (v114 != 1)
        {
          v116 = 0x72756769666E6F63;
        }

        v126 = v516;
        if (v114 != 1)
        {
          v126 = 0xED00006E6F697461;
        }

        if (!v114)
        {
          v116 = 0x44497463656A626FLL;
          v126 = 0xE800000000000000;
        }

        if (v114 <= 2)
        {
          v124 = v116;
          v125 = v126;
        }

        if (v114 <= 5)
        {
          v127 = v124;
        }

        else
        {
          v127 = v117;
        }

        if (v114 <= 5)
        {
          v128 = v125;
        }

        else
        {
          v128 = v121;
        }

        v528 = v112;
        v130 = *v112->clientIdentity;
        v129 = *&v112->clientIdentity[8];
        if (v130 >= v129 >> 1)
        {
          sub_100026EF4((v129 > 1), v130 + 1, 1);
          v112 = v528;
        }

        *v112->clientIdentity = v130 + 1;
        v131 = v112 + 16 * v130;
        *(v131 + 4) = v127;
        *(v131 + 5) = v128;
        v111 = (v111 - 1);
      }

      while (v111);
      v177 = Array.description.getter();
      v6 = v178;

      v179 = sub_10000668C(v177, v6, &v526);
      v6, v180, v181, v182, v183, v184, v185, v186;
      *(v18 + 14) = v179;
      a2 = v520;
      _os_log_impl(&_mh_execute_header, &v520->super, v519, "REMTemplateStorageCDIngestor: changedValueKeys should not include 'configuration' because storage.isPersisted is true {objectID: %{public}@, keys: %{public}s}", v18, 0x16u);
      sub_1000050A4(v494[0], &unk_100938E70, &unk_100797230);

      sub_10000607C(v509);

      a1 = v522;
LABEL_218:
      v27 = &selRef_hack_willSaveHandled;
      goto LABEL_219;
    }

LABEL_219:
    v23 = v505;
LABEL_220:
    v25 = v521;
    if (v28 == v521)
    {
LABEL_269:
      if (v23)
      {
        goto LABEL_270;
      }

      v23 = v499;
      if ((v506 & 1) == 0)
      {
        goto LABEL_302;
      }

LABEL_301:
      v418 = v503;
      static Date.now.getter();
      v419 = type metadata accessor for Date();
      (*(*(v419 - 8) + 56))(v418, 0, 1, v419);
      v420 = swift_getKeyPath();
      sub_10013206C(v420, v418);

      sub_1000050A4(v418, &unk_100938850, qword_100795AE0);
      goto LABEL_302;
    }

LABEL_6:
    if (v28 >= v25)
    {
      goto LABEL_316;
    }
  }

  v28 = (v28 + 1);
LABEL_53:
  v60 = [a1 objectID];
  v61 = [v60 uuid];

  v62 = v524;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v63 = UUID._bridgeToObjectiveC()().super.isa;
  (*v523)(v62, v525);
  a2 = v515;
  [v515 setIdentifier:v63];

  v64 = v503;
  static Date.now.getter();
  v65 = type metadata accessor for Date();
  v66 = *(*(v65 - 8) + 56);
  v506 = 1;
  v66(v64, 0, 1, v65);
  v18 = swift_getKeyPath();
  sub_10013206C(v18, v64);

  sub_1000050A4(v64, &unk_100938850, qword_100795AE0);
  v25 = v521;
  if (v28 != v521)
  {
    goto LABEL_6;
  }

LABEL_276:
  if ((v23 & 1) == 0)
  {
    v23 = v499;
    goto LABEL_301;
  }

LABEL_279:
  LOBYTE(v23) = 1;
LABEL_280:
  v349 = [v515 account];
  if (!v349)
  {
LABEL_290:
    v354 = [v515 storeControllerManagedObjectContext];
    if (v354)
    {
      v355 = v354;
      LOBYTE(v6) = v23;
      v356 = objc_opt_self();
      v357 = [a1 accountID];
      v358 = [v357 uuid];

      v359 = v524;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.uuidString.getter();
      v361 = v360;
      (*v523)(v359, v525);
      v362 = String._bridgeToObjectiveC()();
      v361, v363, v364, v365, v366, v367, v368, v369;
      v18 = [v356 cloudKitAccountWithCKIdentifier:v362 context:v355];

      if (v18)
      {
        goto LABEL_292;
      }
    }

    else
    {
      v18 = 0;
    }

LABEL_299:
    v379 = objc_opt_self();
    v526 = 0;
    v527 = 0xE000000000000000;
    _StringGuts.grow(_:)(156);
    v380._countAndFlagsBits = 0xD000000000000082;
    v380._object = 0x80000001007F0170;
    String.append(_:)(v380);
    v381 = a1;
    v382 = [a1 objectID];
    v383 = [v382 description];
    v384 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v386 = v385;

    v387._countAndFlagsBits = v384;
    v387._object = v386;
    String.append(_:)(v387);
    v386, v388, v389, v390, v391, v392, v393, v394;

    v395._countAndFlagsBits = 0xD000000000000016;
    v395._object = 0x80000001007F0200;
    String.append(_:)(v395);
    v396 = [v381 accountID];
    v397 = [v396 description];
    v398 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v400 = v399;

    v401._countAndFlagsBits = v398;
    v401._object = v400;
    String.append(_:)(v401);
    v400, v402, v403, v404, v405, v406, v407, v408;

    v409 = v527;
    v410 = String._bridgeToObjectiveC()();
    v409, v411, v412, v413, v414, v415, v416, v417;
    [v379 invalidParameterErrorWithDescription:v410];

    swift_willThrow();
    goto LABEL_304;
  }

  v18 = v349;
  v350 = [v349 remObjectID];
  v351 = [a1 accountID];
  v352 = v351;
  if (!v350)
  {
    if (!v351)
    {
      goto LABEL_286;
    }

LABEL_288:

    goto LABEL_289;
  }

  if (!v351)
  {
    v352 = v350;
    goto LABEL_288;
  }

  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v353 = static NSObject.== infix(_:_:)();

  if ((v353 & 1) == 0)
  {
LABEL_289:

    goto LABEL_290;
  }

LABEL_286:
  LOBYTE(v6) = v23;
LABEL_292:
  v18 = v18;
  v370 = [v18 accountTypeHost];
  v371 = [v370 isCloudKit];

  if (!v371)
  {

    goto LABEL_299;
  }

  v372 = [a1 configuration];
  if (!v372)
  {
    v452 = objc_opt_self();
    v526 = 0;
    v527 = 0xE000000000000000;
    _StringGuts.grow(_:)(166);
    v453._countAndFlagsBits = 0xD00000000000008CLL;
    v453._object = 0x80000001007F0220;
    String.append(_:)(v453);
    v454 = a1;
    v455 = [a1 objectID];
    v456 = [v455 description];
    v457 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v459 = v458;

    v460._countAndFlagsBits = v457;
    v460._object = v459;
    String.append(_:)(v460);
    v459, v461, v462, v463, v464, v465, v466, v467;

    v468._countAndFlagsBits = 0xD000000000000016;
    v468._object = 0x80000001007F0200;
    String.append(_:)(v468);
    v469 = [v454 accountID];
    v470 = [v469 description];
    v471 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v473 = v472;

    v474._countAndFlagsBits = v471;
    v474._object = v473;
    String.append(_:)(v474);
    v473, v475, v476, v477, v478, v479, v480, v481;

    v482 = v527;
    v483 = String._bridgeToObjectiveC()();
    v482, v484, v485, v486, v487, v488, v489, v490;
    [v452 invalidParameterErrorWithDescription:v483];

    swift_willThrow();
LABEL_314:

    goto LABEL_305;
  }

  a2 = v372;
  v373 = [v515 storeControllerManagedObjectContext];
  if (!v373)
  {
    v491 = objc_opt_self();
    type metadata accessor for REMCDTemplate();
    v492 = swift_getObjCClassFromMetadata();
    v493 = String._bridgeToObjectiveC()();
    [v491 unexpectedNilPropertyWithClass:v492 property:v493];

    swift_willThrow();
    goto LABEL_314;
  }

  v374 = v373;
  v375 = a1;
  v376 = [a2 sourceListID];
  v377 = [v375 objectID];
  v378 = v517;
  sub_1001DA860(v376, v374, v377);
  v23 = v499;
  if (v378)
  {

    return;
  }

  v27 = [v375 objectID];
  sub_1001DAF9C(v18, v27, a2);
  a1 = v375;
LABEL_319:

  v27 = &selRef_hack_willSaveHandled;
  if (v6)
  {
    goto LABEL_301;
  }

LABEL_302:
  v421 = [v515 v27[373]];
  if (!v421)
  {
    if (qword_100935BA0 != -1)
    {
      swift_once();
    }

    v422 = type metadata accessor for Logger();
    sub_100006654(v422, qword_10093C488);
    v423 = a1;
    v424 = Logger.logObject.getter();
    v425 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v424, v425))
    {

      return;
    }

    v426 = swift_slowAlloc();
    v427 = swift_slowAlloc();
    v528 = swift_slowAlloc();
    *v426 = 136446722;
    v526 = v500;
    swift_getMetatypeMetadata();
    v428 = String.init<A>(describing:)();
    v499 = v23;
    v430 = v429;
    v431 = sub_10000668C(v428, v429, &v528);
    v430, v432, v433, v434, v435, v436, v437, v438;
    *(v426 + 4) = v431;
    *(v426 + 12) = 2114;
    v439 = [v423 objectID];
    *(v426 + 14) = v439;
    *v427 = v439;
    *(v426 + 22) = 2080;
    v440 = [v423 name];
    v441 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v443 = v442;

    v444 = sub_10000668C(v441, v443, &v528);
    v443, v445, v446, v447, v448, v449, v450, v451;
    *(v426 + 24) = v444;
    _os_log_impl(&_mh_execute_header, v424, v425, "%{public}s: '\\REMCDTemplate.name' should not be nil at the end of 'merge(storage:into:changedValueKeys:optionalCoordinator:)' {storage.objectID: %{public}@, storage.name: %s}", v426, 0x20u);
    sub_1000050A4(v427, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();

    v348 = &v529;
LABEL_273:

    return;
  }

  v18 = v421;

LABEL_304:
LABEL_305:
}

uint64_t sub_1001D8F44(void *a1, uint64_t a2)
{
  v5 = *v2;
  v134 = type metadata accessor for UUID();
  v6 = *(v134 - 8);
  __chkstk_darwin(v134, v7);
  v9 = &v130[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10, v11);
  v13 = &v130[-v12];
  __chkstk_darwin(v14, v15);
  v17 = &v130[-v16];
  *&v20 = __chkstk_darwin(v18, v19).n128_u64[0];
  v22 = &v130[-v21];
  v23 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = sub_1001DB89C(v22);
  if (v3)
  {
    return (*(v6 + 8))(v22, v134);
  }

  if (v24)
  {
    if (qword_100935BA0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100006654(v26, qword_10093C488);
    v27 = v6;
    v28 = *(v6 + 16);
    v29 = v22;
    v30 = v22;
    v31 = v134;
    v28(v9, v30, v134);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v133 = v29;
      v35 = v27;
      v36 = v34;
      v132 = swift_slowAlloc();
      v135 = v132;
      *v36 = 136446466;
      v136 = v5;
      swift_getMetatypeMetadata();
      v37 = String.init<A>(describing:)();
      v38 = v33;
      v40 = v39;
      v41 = sub_10000668C(v37, v39, &v135);
      v40, v42, v43, v44, v45, v46, v47, v48;
      *(v36 + 4) = v41;
      *(v36 + 12) = 2082;
      v49 = UUID.uuidString.getter();
      v51 = v50;
      v52 = *(v35 + 8);
      v53 = v9;
      v54 = v134;
      v52(v53, v134);
      v55 = sub_10000668C(v49, v51, &v135);
      v51, v56, v57, v58, v59, v60, v61, v62;
      *(v36 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v32, v38, "%{public}s: Did reset '\\REMCDList.mostRecentTargetTemplateIdentifier' to nil {mostRecentTargetTemplateIdentifier: %{public}s}", v36, 0x16u);
      swift_arrayDestroy();

      return v52(v133, v54);
    }

    else
    {

      v95 = *(v27 + 8);
      v95(v9, v31);
      return (v95)(v29, v31);
    }
  }

  else
  {
    v63 = v5;
    if (sub_1001DBC18(v22) < 1)
    {
      if (qword_100935BA0 != -1)
      {
        swift_once();
      }

      v96 = type metadata accessor for Logger();
      sub_100006654(v96, qword_10093C488);
      v97 = v22;
      v98 = v22;
      v99 = v134;
      (*(v6 + 16))(v13, v98, v134);
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v136 = v133;
        *v102 = 136446466;
        v103 = sub_1001424F8(v63);
        LODWORD(v132) = v101;
        v105 = v104;
        v106 = sub_10000668C(v103, v104, &v136);
        v105, v107, v108, v109, v110, v111, v112, v113;
        *(v102 + 4) = v106;
        *(v102 + 12) = 2082;
        v114 = UUID.uuidString.getter();
        v116 = v115;
        v117 = *(v6 + 8);
        v118 = v13;
        v119 = v134;
        v117(v118, v134);
        v120 = sub_10000668C(v114, v116, &v136);
        v116, v121, v122, v123, v124, v125, v126, v127;
        *(v102 + 14) = v120;
        _os_log_impl(&_mh_execute_header, v100, v132, "%{public}s: Did not find REMCDList and REMCDSmartList with matching 'mostRecentTargetTemplateIdentifier' {mostRecentTargetTemplateIdentifier: %{public}s}", v102, 0x16u);
        swift_arrayDestroy();

        return (v117)(v97, v119);
      }

      else
      {

        v129 = *(v6 + 8);
        v129(v13, v99);
        return (v129)(v97, v99);
      }
    }

    else
    {
      if (qword_100935BA0 != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      sub_100006654(v64, qword_10093C488);
      v65 = v22;
      v66 = v22;
      v67 = v134;
      (*(v6 + 16))(v17, v66, v134);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v133 = v65;
        v71 = v70;
        v132 = swift_slowAlloc();
        v136 = v132;
        *v71 = 136446466;
        v72 = sub_1001424F8(v5);
        v131 = v69;
        v74 = v73;
        v75 = sub_10000668C(v72, v73, &v136);
        v74, v76, v77, v78, v79, v80, v81, v82;
        *(v71 + 4) = v75;
        *(v71 + 12) = 2082;
        v83 = UUID.uuidString.getter();
        v85 = v84;
        v86 = *(v6 + 8);
        v86(v17, v67);
        v87 = sub_10000668C(v83, v85, &v136);
        v85, v88, v89, v90, v91, v92, v93, v94;
        *(v71 + 14) = v87;
        _os_log_impl(&_mh_execute_header, v68, v131, "%{public}s: Did reset '\\REMCDSmartList.mostRecentTargetTemplateIdentifier' to nil {mostRecentTargetTemplateIdentifier: %{public}s}", v71, 0x16u);
        swift_arrayDestroy();

        return v86(v133, v67);
      }

      else
      {

        v128 = *(v6 + 8);
        v128(v17, v67);
        return (v128)(v65, v67);
      }
    }
  }
}

uint64_t sub_1001D9790@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

void sub_1001D983C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v16 - v10;
  sub_10012F78C(a1, &v16 - v10);
  v12 = *a2;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  isa = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

NSString sub_1001D9968(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3, v5).n128_u64[0];
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = 0;
  v9 = [a1 remObjectIDWithError:{&v62, v6}];
  if (v9)
  {
    v10 = v9;
    v11 = v62;
    v12 = [a1 account];
    if (v12 && (v13 = v12, v14 = [v12 remObjectID], v13, v14))
    {
      v15 = [a1 name];
      if (v15)
      {
        v16 = v15;
        v17 = v14;
        v18 = objc_allocWithZone(REMTemplateStorage);
        v19 = v10;
        v20 = v17;
        v21 = v18;
        v22 = v19;
        v1 = [v21 initWithObjectID:v19 accountID:v20 name:v16];

        v23 = [a1 color];
        [v1 setColor:v23];

        v24 = [a1 badgeEmblem];
        [v1 setBadgeEmblem:v24];

        [v1 setShowingLargeAttachments:{objc_msgSend(a1, "showingLargeAttachments")}];
        v25 = [a1 mostRecentPublicLinkUpdateRequestDate];
        if (v25)
        {
          v26 = v25;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v27.super.isa = Date._bridgeToObjectiveC()().super.isa;
          (*(v4 + 8))(v8, v3);
        }

        else
        {
          v27.super.isa = 0;
        }

        [v1 setMostRecentPublicLinkUpdateRequestDate:v27.super.isa];

        v48 = REMCDTemplate.publicLink.getter();
        [v1 setPublicLink:v48];

        [v1 setIsPersisted:1];
        v49 = [a1 sortingStyle];
        if (v49)
        {
          v50 = v49;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v51 = REMSortingStyle.init(stringValue:)();
          if (!v51)
          {
            v51 = REMSortingStyleDefault;
          }

          v52 = v51;
          [v1 setSortingStyle:v51];
        }

        else
        {
          [v1 setSortingStyle:REMSortingStyleDefault];
        }

        [v1 setShouldUpdateSectionsOrdering:0];
        [v1 setUnsavedSectionIDsOrdering:0];
        [v1 setUnsavedMembershipsOfRemindersInSections:0];
        [v1 setResolutionTokenMap:0];
        v53 = [a1 resolutionTokenMapData];
        if (v53)
        {
          v54 = v53;
          v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v56;

          v58.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_10001BBA0(v55, v57);
        }

        else
        {
          v58.super.isa = 0;
        }

        [v1 setResolutionTokenMapData:v58.super.isa];

        v59 = [a1 parentAccount];
        if (v59)
        {
          v60 = v59;
          v61 = [v59 remObjectID];
        }

        else
        {
          v61 = 0;
        }

        [v1 setParentAccountID:v61];

        [v1 setMinimumSupportedVersion:{objc_msgSend(a1, "minimumSupportedVersion")}];
        [v1 setEffectiveMinimumSupportedVersion:{objc_msgSend(a1, "effectiveMinimumSupportedVersion")}];
      }

      else
      {
        if (qword_100935BA8 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        sub_100006654(v39, qword_10093C4A0);
        v40 = v10;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138543362;
          *(v43 + 4) = v40;
          *v44 = v10;
          v45 = v40;
          _os_log_impl(&_mh_execute_header, v41, v42, "REMTemplateStorageCDIngestor: cdTemplate.name is nil {cdTemplate.remObjectID: %{public}@}", v43, 0xCu);
          sub_1000050A4(v44, &unk_100938E70, &unk_100797230);
        }

        v46 = objc_opt_self();
        type metadata accessor for REMCDTemplate();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v1 = String._bridgeToObjectiveC()();
        [v46 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v1];

        swift_willThrow();
      }
    }

    else
    {
      if (qword_100935BA8 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100006654(v28, qword_10093C4A0);
      v29 = v10;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138543362;
        *(v32 + 4) = v29;
        *v33 = v10;
        v34 = v29;
        _os_log_impl(&_mh_execute_header, v30, v31, "REMTemplateStorageCDIngestor: cdTemplate.account is nil {cdTemplate.remObjectID: %{public}@}", v32, 0xCu);
        sub_1000050A4(v33, &unk_100938E70, &unk_100797230);
      }

      v35 = objc_opt_self();
      type metadata accessor for REMCDTemplate();
      v36 = swift_getObjCClassFromMetadata();
      v1 = String._bridgeToObjectiveC()();
      [v35 unexpectedNilPropertyWithClass:v36 property:v1];

      swift_willThrow();
    }
  }

  else
  {
    v37 = v62;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

id sub_1001DA188(void *a1)
{
  v3 = sub_1001D9968(a1);
  if (!v2)
  {
    v4 = v3;
    v5 = [v3 objectID];
    v6 = [v4 accountID];
    v7 = [v4 name];
    if (!v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      v7 = String._bridgeToObjectiveC()();
      v9, v10, v11, v12, v13, v14, v15, v16;
    }

    v1 = [objc_allocWithZone(REMListStorage) initWithObjectID:v5 accountID:v6 name:v7];

    v17 = [v4 color];
    [v1 setColor:v17];

    v18 = [v4 badgeEmblem];
    [v1 setBadgeEmblem:v18];

    [v1 setShowingLargeAttachments:{objc_msgSend(v4, "showingLargeAttachments")}];
    v19 = [v4 sortingStyle];
    [v1 setSortingStyle:v19];

    v20 = [v4 parentAccountID];
    [v1 setParentAccountID:v20];

    [v1 setMinimumSupportedVersion:{objc_msgSend(v4, "minimumSupportedVersion")}];
    [v1 setEffectiveMinimumSupportedVersion:{objc_msgSend(v4, "effectiveMinimumSupportedVersion")}];
  }

  return v1;
}

unint64_t sub_1001DA3AC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008DFE98, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001DA3F8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E17E8, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void sub_1001DA444(void *a1)
{
  v2 = [a1 remObjectID];
  v3 = [a1 unsavedManualOrdering];
  if (v3)
  {
    v4 = v3;
    if (qword_100935BA0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006654(v5, qword_10093C488);
    v39 = v2;
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543618;
      *(v9 + 4) = v39;
      *v10 = v39;
      *(v9 + 12) = 2048;
      v11 = v39;
      v12 = [v6 topLevelElementIDs];
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v13 >> 62)
      {
        v21 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13, v14, v15, v16, v17, v18, v19, v20;
      *(v9 + 14) = v21;

      _os_log_impl(&_mh_execute_header, v7, v8, "REMTemplateStorageCDIngestor: ingesting manual ordering {templateObjectID: %{public}@, top-level elements count: %ld}", v9, 0x16u);
      sub_1000050A4(v10, &unk_100938E70, &unk_100797230);
    }

    else
    {

      v7 = v6;
    }

    v28 = [a1 accountID];
    v29 = [objc_opt_self() defaultCenter];
    type metadata accessor for REMManualOrderingCDIngestor();
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = v29;
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1007953F0;
    *(v31 + 32) = v6;
    v23 = v6;
    sub_1005F9E88(v31, v30);

    v31, v32, v33, v34, v35, v36, v37, v38;
  }

  else
  {
    if (qword_100935BA0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_10093C488);
    v23 = v2;
    v39 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      *(v25 + 4) = v23;
      *v26 = v23;
      v27 = v23;
      sub_1000050A4(v26, &unk_100938E70, &unk_100797230);

      v23 = v39;
      v39 = v27;
    }
  }
}

void sub_1001DA860(void *a1, uint64_t a2, void *a3)
{
  v171 = a3;
  v174 = a2;
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v5 - 8, v6);
  v168 = &v168 - v7;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v169 = v8;
  v170 = v9;
  *&v11 = __chkstk_darwin(v8, v10).n128_u64[0];
  v13 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 entityName];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = [objc_opt_self() cdEntityName];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v19 == v15 && v21 == v17)
  {
    v17, v22, v23, v24, v25, v26, v27, v28;
    goto LABEL_6;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v21, v37, v38, v39, v40, v41, v42, v43;
  if (v36)
  {
    v21 = v17;
LABEL_6:
    v21, v29, v30, v31, v32, v33, v34, v35;
    v44 = a1;
    v45 = sub_1005E37C0(v44);
    if (v3)
    {
      return;
    }

    v46 = v45;
    sub_1000F5104(&unk_1009438F0, &qword_1007A41B0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_100791300;
    *(v47 + 32) = v46;
    v48 = v46;
    sub_1005EC5F0(v47, 0, 1, 0, 0);
    v101 = v49;
    v47, v50, v51, v52, v53, v54, v55, v56;
    if (v101 >> 62)
    {
      v167 = _CocoaArrayWrapper.endIndex.getter();
      v109 = v171;
      if (v167)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v109 = v171;
      if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_16:
        if ((v101 & 0xC000000000000001) != 0)
        {
          v110 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_19;
        }

        if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v110 = *(v101 + 32);
LABEL_19:
          v118 = v110;
          v101, v111, v112, v113, v114, v115, v116, v117;
          v119 = [v109 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          isa = UUID._bridgeToObjectiveC()().super.isa;
          v121 = v169;
          v122 = v170;
          (*(v170 + 8))(v13, v169);
          [v118 setMostRecentTargetTemplateIdentifierByCurrentUser:isa];

          if ([v118 sharingStatus] > 1)
          {
LABEL_30:

            return;
          }

          v123 = [v109 uuid];
          v124 = v168;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v122 + 56))(v124, 0, 1, v121);
          sub_10047CC28(v124);
          v13 = v118;
LABEL_29:
          sub_1000050A4(v124, &unk_100939D90, "8\n\r");
          [v118 updateChangeCount];
          v118 = v13;
          goto LABEL_30;
        }

        __break(1u);
        goto LABEL_37;
      }
    }

    v101, v102, v103, v104, v105, v106, v107, v108;
    [objc_opt_self() noSuchObjectErrorWithObjectID:v44];
    swift_willThrow();

    return;
  }

  v57 = [objc_opt_self() cdEntityName];
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  if (v58 == v15 && v60 == v17)
  {
    v17, v61, v62, v63, v64, v65, v66, v67;
    v60, v68, v69, v70, v71, v72, v73, v74;
  }

  else
  {
    v75 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v17, v76, v77, v78, v79, v80, v81, v82;
    v60, v83, v84, v85, v86, v87, v88, v89;
    if ((v75 & 1) == 0)
    {
      v125 = objc_opt_self();
      v172 = 0;
      v173 = 0xE000000000000000;
      _StringGuts.grow(_:)(160);
      v126._object = 0x80000001007F03E0;
      v126._countAndFlagsBits = 0xD00000000000009DLL;
      String.append(_:)(v126);
      v127 = [a1 description];
      v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v130 = v129;

      v131._countAndFlagsBits = v128;
      v131._object = v130;
      String.append(_:)(v131);
      v130, v132, v133, v134, v135, v136, v137, v138;
      v139._countAndFlagsBits = 125;
      v139._object = 0xE100000000000000;
      String.append(_:)(v139);
      v140 = v173;
      v141 = String._bridgeToObjectiveC()();
      v140, v142, v143, v144, v145, v146, v147, v148;
      [v125 invalidParameterErrorWithDescription:v141];

      swift_willThrow();
      return;
    }
  }

  v48 = a1;
  v90 = sub_1005E60C8(v48);
  if (!v3)
  {
    v91 = v90;
    sub_1000F5104(&unk_1009435B0, &unk_100799980);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_100791300;
    *(v92 + 32) = v91;
    v13 = v91;
    sub_1005EE3B8(v92, 0, 1, 0, 0);
    v101 = v93;
    v92, v94, v95, v96, v97, v98, v99, v100;
    if (!(v101 >> 62))
    {
      v156 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_24:
      v124 = v168;
      v157 = v171;
      if (!v156)
      {
        v101, v149, v150, v151, v152, v153, v154, v155;
        [objc_opt_self() noSuchObjectErrorWithObjectID:v48];
        swift_willThrow();

        return;
      }

      if ((v101 & 0xC000000000000001) != 0)
      {
        v118 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v158 = v170;
      }

      else
      {
        v158 = v170;
        if (!*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v118 = *(v101 + 32);
      }

      v101, v159, v160, v161, v162, v163, v164, v165;
      v166 = [v157 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v158 + 56))(v124, 0, 1, v169);
      sub_1004473A4(v124);
      v48 = v118;
      goto LABEL_29;
    }

LABEL_37:
    v156 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_24;
  }
}

void sub_1001DAF9C(void *a1, void *a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v154 = *(v12 - 8);
  v155 = v12;
  *&v14 = __chkstk_darwin(v12, v13).n128_u64[0];
  v16 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 storeControllerManagedObjectContext];
  if (v17)
  {
    v156 = v3;
    v149 = a1;
    v150 = a2;
    v151 = v11;
    v152 = v8;
    v153 = v7;
    v160 = v17;
    v157 = [a3 sourceListID];
    v18 = [v157 entityName];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = [objc_opt_self() cdEntityName];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (v19 == v23 && v21 == v25)
    {
      v33 = 3;
    }

    else
    {
      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v21, v50, v51, v52, v53, v54, v55, v56;
      v25, v57, v58, v59, v60, v61, v62, v63;
      if (v49)
      {
        v33 = 3;
        v34 = v156;
LABEL_10:
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        v64 = REMTemplateConfiguration.codable.getter();
        v158 = v64;
        type metadata accessor for REMTemplateConfiguration_Codable();
        sub_1001DD678();
        v65 = v34;
        v66 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v68 = v67;

        if (v65)
        {
        }

        else
        {

          type metadata accessor for REMCDTemplateOperationQueueItem();
          v69 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v70 = [v69 initWithContext:v160];
          [v70 setAccount:v149];
          [v70 setOperationTypeRawValue:v33];
          [v70 setPriorityRawValue:10];
          Date.init()();
          v156 = v66;
          isa = Date._bridgeToObjectiveC()().super.isa;
          (*(v154 + 8))(v16, v155);
          [v70 setCreationDate:isa];

          v72 = v150;
          v73 = [v72 uuid];
          v74 = v151;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v75 = UUID._bridgeToObjectiveC()().super.isa;
          v76 = v153;
          v77 = *(v152 + 8);
          v77(v74, v153);
          [v70 setTemplateIdentifier:v75];

          v78 = v157;
          v79 = [v78 uuid];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v80 = UUID._bridgeToObjectiveC()().super.isa;
          v77(v74, v76);
          [v70 setListIdentifier:v80];

          v81 = v156;
          v82 = Data._bridgeToObjectiveC()().super.isa;
          [v70 setConfigurationData:v82];

          sub_10001BBA0(v81, v68);
        }

        return;
      }

      v83 = [v157 entityName];
      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v85;

      v86 = [objc_opt_self() cdEntityName];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v88;

      if (v84 != v87 || v21 != v25)
      {
        v108 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v21, v109, v110, v111, v112, v113, v114, v115;
        v25, v116, v117, v118, v119, v120, v121, v122;
        v34 = v156;
        if ((v108 & 1) == 0)
        {
          v123 = objc_opt_self();
          v158 = 0;
          v159 = 0xE000000000000000;
          _StringGuts.grow(_:)(172);
          v124._countAndFlagsBits = 0xD0000000000000A9;
          v124._object = 0x80000001007F0330;
          String.append(_:)(v124);
          v125 = v157;
          v126 = [v157 description];
          v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v129 = v128;

          v130._countAndFlagsBits = v127;
          v130._object = v129;
          String.append(_:)(v130);
          v129, v131, v132, v133, v134, v135, v136, v137;
          v138._countAndFlagsBits = 125;
          v138._object = 0xE100000000000000;
          String.append(_:)(v138);
          v139 = v159;
          v140 = String._bridgeToObjectiveC()();
          v139, v141, v142, v143, v144, v145, v146, v147;
          [v123 invalidParameterErrorWithDescription:v140];

          swift_willThrow();
          return;
        }

        v33 = 4;
        goto LABEL_10;
      }

      v33 = 4;
    }

    v34 = v156;
    v21, v26, v27, v28, v29, v30, v31, v32;
    v25, v35, v36, v37, v38, v39, v40, v41;
    goto LABEL_10;
  }

  v158 = 0;
  v159 = 0xE000000000000000;
  _StringGuts.grow(_:)(127);
  v42._object = 0x80000001007F02B0;
  v42._countAndFlagsBits = 0xD00000000000007CLL;
  String.append(_:)(v42);
  v43 = [a1 remObjectID];
  if (v43)
  {
    v44 = v43;
    v45 = [v43 description];

    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;
  }

  else
  {
    v48 = 0xE300000000000000;
    v46 = 7104878;
  }

  v89 = objc_opt_self();
  v90._countAndFlagsBits = v46;
  v90._object = v48;
  String.append(_:)(v90);
  v48, v91, v92, v93, v94, v95, v96, v97;
  v98._countAndFlagsBits = 125;
  v98._object = 0xE100000000000000;
  String.append(_:)(v98);
  v99 = v159;
  v100 = String._bridgeToObjectiveC()();
  v99, v101, v102, v103, v104, v105, v106, v107;
  [v89 invalidParameterErrorWithDescription:v100];

  swift_willThrow();
}

_TtC7remindd19RDXPCStorePerformer *sub_1001DB6FC(void *a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v2 = [a1 parentAccountID];
      v16 = v2;
      v3 = &_swiftEmptyArrayStorage;
      if (v2)
      {
        v4 = v2;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v3 = &_swiftEmptyArrayStorage;
      }

      sub_1000050A4(&v16, &unk_10093AF40, &unk_100795790);
    }

    else
    {
      v6 = [a1 sectionIDsToUndelete];
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      sub_10018BA8C();
      v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v3 = sub_100277EBC(v7);
      v7, v8, v9, v10, v11, v12, v13, v14;
    }
  }

  else
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v3 = swift_allocObject();
    *v3->clientIdentity = xmmword_1007953F0;
    *&v3->clientIdentity[16] = [a1 accountID];
  }

  return v3;
}

unint64_t sub_1001DB89C(uint64_t a1)
{
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v30 - v5;
  v7 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v7, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  swift_storeEnumTagMultiPayload();
  v13 = sub_10001F6F4();
  sub_1001DD5F4(v10, _s10PredicatesOMa_1);
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v14 = [objc_allocWithZone(NSFetchRequest) init];
  v15 = [swift_getObjCClassFromMetadata() entity];
  [v14 setEntity:v15];

  [v14 setAffectedStores:0];
  [v14 setPredicate:v13];

  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {

    return v6;
  }

  v17 = result;
  v31 = result >> 62;
  v32 = 0;
  v34 = v11;
  v33 = v14;
  if (!(result >> 62))
  {
    v18 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_14:
    if (v31)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17, v23, v24, v25, v26, v27, v28, v29;
    return v6;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v18 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = (v12 + 56);
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(v17 + 8 * v19 + 32);
      }

      v22 = v21;
      [v21 setMostRecentTargetTemplateIdentifierByCurrentUser:0];
      if ([v22 sharingStatus] <= 1)
      {
        (*v20)(v6, 1, 1, v34);
        sub_10047CC28(v6);
        sub_1000050A4(v6, &unk_100939D90, "8\n\r");
        [v22 updateChangeCount];
      }

      ++v19;
    }

    while (v18 != v19);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

unint64_t sub_1001DBC18(uint64_t a1)
{
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v3 - 8, v4);
  v6 = v29 - v5;
  v7 = _s10PredicatesOMa_3(0);
  __chkstk_darwin(v7, v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  swift_storeEnumTagMultiPayload();
  v13 = sub_10002DDAC();
  sub_1001DD5F4(v10, _s10PredicatesOMa_3);
  sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
  v14 = [objc_allocWithZone(NSFetchRequest) init];
  v15 = [swift_getObjCClassFromMetadata() entity];
  [v14 setEntity:v15];

  [v14 setAffectedStores:0];
  [v14 setPredicate:v13];

  result = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {

    return v6;
  }

  v17 = result;
  v29[0] = result >> 62;
  v29[1] = 0;
  v30 = v14;
  if (!(result >> 62))
  {
    v18 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (v29[0])
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17, v22, v23, v24, v25, v26, v27, v28;
    return v6;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v18 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v18 >= 1)
  {
    v19 = 0;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      ++v19;
      (*(v12 + 56))(v6, 1, 1, v11);
      sub_1004473A4(v6);
      sub_1000050A4(v6, &unk_100939D90, "8\n\r");
      [v21 updateChangeCount];
    }

    while (v18 != v19);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_1001DBF70(id a1, id a2, char a3, uint64_t a4)
{
  v5 = v4;
  v6 = a2;
  v7 = a1;
  if (!a3)
  {
    v34 = [a1 accountID];
    sub_100684B84(0, v34, a4);
    if (v4)
    {
    }

    else
    {
      v52 = v6;
      v53 = qword_100935BA0;
      v54 = v35;
      if (v53 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_100006654(v55, qword_10093C488);
      v56 = v54;
      v57 = v52;
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        *v60 = 136446466;
        v61 = [v57 remObjectID];
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v62 = Optional.descriptionOrNil.getter();
        v163 = v59;
        v63 = v57;
        v65 = v64;

        v66 = sub_10000668C(v62, v65, &v175);
        v65, v67, v68, v69, v70, v71, v72, v73;
        *(v60 + 4) = v66;
        *(v60 + 12) = 2082;
        v168 = [v56 remObjectID];
        v74 = Optional.descriptionOrNil.getter();
        v76 = v75;

        v57 = v63;
        v77 = sub_10000668C(v74, v76, &v175);
        v76, v78, v79, v80, v81, v82, v83, v84;
        *(v60 + 14) = v77;
        _os_log_impl(&_mh_execute_header, v58, v163, "Updating cdTemplate.account {cdTemplate: %{public}s, account: %{public}s}", v60, 0x16u);
        swift_arrayDestroy();
      }

      [v57 setAccount:v56];
    }

    return;
  }

  if (a3 == 1)
  {
    v8 = [a2 createResolutionTokenMapIfNecessary];
    v9 = [v7 resolutionTokenMap];
    if (!v9)
    {
      if (qword_100935BA0 != -1)
      {
        goto LABEL_70;
      }

      goto LABEL_13;
    }

    v10 = v9;
    sub_1000F5104(&unk_100943500, qword_1007998C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = 1;
    v12 = sub_100694D60(v10, inited);
    swift_setDeallocating();
    sub_100692E54(1, v13, v14, v15, v16, v17, v18, v19);
    v21 = v20;
    v22 = String._bridgeToObjectiveC()();
    v21, v23, v24, v25, v26, v27, v28, v29;
    LODWORD(v21) = [v8 mergeWithMap:v12 forKey:v22];

    if (!v21)
    {

      return;
    }

    v30 = [v7 parentAccountID];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
      sub_100684B84(1, v32, a4);
      if (v4)
      {

        goto LABEL_63;
      }

      v114 = v33;
    }

    else
    {
      v114 = 0;
    }

    v164 = v12;
    if (qword_100935BA0 != -1)
    {
      swift_once();
    }

    v115 = type metadata accessor for Logger();
    sub_100006654(v115, qword_10093C488);
    v160 = v114;
    v116 = v114;
    v117 = v6;
    v118 = v116;
    v119 = v117;
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v120, v121))
    {
      log = v120;
      v156 = v31;
      v166 = v118;
      v158 = v8;
      v122 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      *v122 = 136446466;
      v169 = [v119 remObjectID];
      sub_1000F5104(&unk_10093AF40, &unk_100795790);
      v123 = Optional.descriptionOrNil.getter();
      v125 = v124;

      v126 = sub_10000668C(v123, v125, &v175);
      v125, v127, v128, v129, v130, v131, v132, v133;
      *(v122 + 4) = v126;
      *(v122 + 12) = 2082;
      if (v160)
      {
        v134 = [v166 remObjectID];
      }

      else
      {
        v134 = 0;
      }

      v135 = Optional.descriptionOrNil.getter();
      v137 = v136;

      v138 = sub_10000668C(v135, v137, &v175);
      v137, v139, v140, v141, v142, v143, v144, v145;
      *(v122 + 14) = v138;
      _os_log_impl(&_mh_execute_header, log, v121, "Updating cdTemplate.parentAccount {cdTemplate: %{public}s, parentAccount: %{public}s}", v122, 0x16u);
      swift_arrayDestroy();

      v31 = v156;
      v8 = v158;
      v118 = v166;
    }

    else
    {
    }

    [v119 setParentAccount:v118];
    v146 = [v119 parentAccount];
    if (!v146)
    {
      v167 = v118;
      v147 = v31;
      v148 = [v119 storeControllerManagedObjectContext];
      if (v148)
      {
        v149 = v148;
        v150 = [v7 objectID];
        sub_1001D8F44(v150, v149);
        if (v4)
        {
        }

        else
        {
        }
      }

      else
      {
        v151 = objc_opt_self();
        type metadata accessor for REMCDTemplate();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v153 = String._bridgeToObjectiveC()();
        [v151 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v153];

        swift_willThrow();
      }

      return;
    }

    v32 = v146;

LABEL_63:
    return;
  }

  v36 = [a1 sectionIDsToUndelete];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10018BA8C();
  v37 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v37 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v37 = v170;
    v8 = v171;
    v38 = v172;
    v39 = v173;
    v40 = v174;
  }

  else
  {
    v39 = 0;
    v85 = -1 << *(v37 + 32);
    v8 = (v37 + 56);
    v86 = ~v85;
    v87 = -v85;
    if (v87 < 64)
    {
      v88 = ~(-1 << v87);
    }

    else
    {
      v88 = -1;
    }

    v40 = v88 & *(v37 + 56);
    v38 = v86;
  }

  v89 = (v38 + 64) >> 6;
  v159 = v8;
  v161 = v37;
  v155 = v6;
  v157 = v89;
  while (v37 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v7 = v175, v101 = v39, v102 = v40, !v175))
    {
LABEL_48:
      sub_10001B860(v37);
      return;
    }

LABEL_38:
    sub_10068533C(2, v7, a4);
    if (v5)
    {
      sub_10001B860(v37);

      return;
    }

    v165 = v102;
    v104 = v103;
    [v104 setTemplate:v6];
    v105 = [v104 createResolutionTokenMapIfNecessary];
    if (qword_100936278 != -1)
    {
      swift_once();
    }

    v106 = qword_100974EA8;
    if (*(qword_100974EA8 + 16) && (v107 = sub_100005F4C(0x4449746E65726170, 0xE800000000000000), (v108 & 1) != 0))
    {
      v90 = *(*(v106 + 56) + 16 * v107 + 8);
    }

    else
    {
      if (qword_100936128 != -1)
      {
        swift_once();
      }

      v109 = type metadata accessor for Logger();
      sub_100006654(v109, qword_100946C50);
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v175 = v113;
        *v112 = 136315138;
        v90 = 0xE800000000000000;
        *(v112 + 4) = sub_10000668C(0x4449746E65726170, 0xE800000000000000, &v175);
        _os_log_impl(&_mh_execute_header, v110, v111, "Unknown ingestable key {key: %s}", v112, 0xCu);
        sub_10000607C(v113);
        v5 = 0;
      }

      else
      {

        v90 = 0xE800000000000000;
      }

      v6 = v155;
    }

    v91 = String._bridgeToObjectiveC()();
    v90, v92, v93, v94, v95, v96, v97, v98;
    [v105 updateForKey:v91];

    v39 = v101;
    v40 = v165;
    v8 = v159;
    v37 = v161;
    v89 = v157;
  }

  v99 = v39;
  v100 = v40;
  v101 = v39;
  if (v40)
  {
LABEL_34:
    v102 = (v100 - 1) & v100;
    v7 = *(*(v37 + 48) + ((v101 << 9) | (8 * __clz(__rbit64(v100)))));
    if (!v7)
    {
      goto LABEL_48;
    }

    goto LABEL_38;
  }

  while (1)
  {
    v101 = v99 + 1;
    if (__OFADD__(v99, 1))
    {
      break;
    }

    if (v101 >= v89)
    {
      goto LABEL_48;
    }

    v100 = *(v8 + v101);
    ++v99;
    if (v100)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_70:
  swift_once();
LABEL_13:
  v41 = type metadata accessor for Logger();
  sub_100006654(v41, qword_10093C488);
  v42 = v7;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v175 = v47;
    *v45 = 138543618;
    v48 = [v42 objectID];
    *(v45 + 4) = v48;
    *v46 = v48;
    *(v45 + 12) = 2082;
    *(v45 + 14) = sub_10000668C(0x6341746E65726170, 0xEF4449746E756F63, &v175);
    _os_log_impl(&_mh_execute_header, v43, v44, "REMTemplateStorageCDIngestor: establishRelationship(onStorage:into cdTemplate:...) cannot proceed because storage.resolutionTokenMap is nil {objectID: %{public}@, key: %{public}s}", v45, 0x16u);
    sub_1000050A4(v46, &unk_100938E70, &unk_100797230);

    sub_10000607C(v47);
  }

  v49 = objc_opt_self();
  sub_1000060C8(0, &qword_10093C668, REMTemplateStorage_ptr);
  v50 = swift_getObjCClassFromMetadata();
  v51 = String._bridgeToObjectiveC()();
  [v49 unexpectedNilPropertyWithClass:v50 property:v51];

  swift_willThrow();
}

void sub_1001DCD64(void *a1, void *a2)
{
  v5 = type metadata accessor for REMJSONDeserializationError();
  if ([a2 shouldUpdateSectionsOrdering])
  {
    v7 = [a1 storeControllerManagedObjectContext];
    if (v7)
    {
      v51 = v7;
      v50 = a1;
      v8 = [a2 objectID];
      if (qword_1009360E8 != -1)
      {
        swift_once();
      }

      v9 = sub_100425A50(v8, 0);
      type metadata accessor for REMCDTemplateSection();
      v10 = [objc_allocWithZone(NSFetchRequest) init];
      v11 = [swift_getObjCClassFromMetadata() entity];
      [v10 setEntity:v11];

      [v10 setAffectedStores:0];
      [v10 setPredicate:v9];

      [v10 setPropertiesToFetch:0];
      [v10 setRelationshipKeyPathsForPrefetching:0];
      sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v10 setSortDescriptors:isa];

      v13 = NSManagedObjectContext.fetch<A>(_:)();
      if (v2)
      {
      }

      else
      {
        v14 = v13;
        v49 = v8;

        v15 = v50;
        v16 = [v50 sectionIDsOrderingAsData];
        if (v16)
        {
          v17 = v14;
          v18 = v16;
          v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;

          sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
          static REMJSONRepresentable.fromJSONData(_:)();
          sub_10001BBA0(v19, v21);
          v22 = REMOrderedIdentifierMap.reorder<A>(objects:)();
          v17, v23, v24, v25, v26, v27, v28, v29;

          v14 = v22;
          v15 = v50;
        }

        v30 = sub_100270E10(v14);
        v31 = v14;
        v32 = v30;
        v31, v31, v33, v34, v35, v36, v37, v38;
        v39 = objc_allocWithZone(NSMutableOrderedSet);
        v40 = Array._bridgeToObjectiveC()().super.isa;
        v32, v41, v42, v43, v44, v45, v46, v47;
        v48 = [v39 initWithArray:v40];

        [v15 setSections:v48];
      }
    }
  }
}

uint64_t sub_1001DD5F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001DD678()
{
  result = qword_10093C670;
  if (!qword_10093C670)
  {
    type metadata accessor for REMTemplateConfiguration_Codable();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C670);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMTemplateStorageCDIngestor.ValueKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for REMTemplateStorageCDIngestor.ValueKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001DD884()
{
  result = qword_10093C688;
  if (!qword_10093C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C688);
  }

  return result;
}

unint64_t sub_1001DD90C()
{
  result = qword_10093C6A0;
  if (!qword_10093C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C6A0);
  }

  return result;
}

unint64_t sub_1001DD994()
{
  result = qword_10093C6B8;
  if (!qword_10093C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C6B8);
  }

  return result;
}

unint64_t sub_1001DDA1C()
{
  result = qword_10093C6D0;
  if (!qword_10093C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093C6D0);
  }

  return result;
}

uint64_t sub_1001DDA70()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093C6D8);
  v1 = sub_100006654(v0, qword_10093C6D8);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1001DDB60(void *a1, uint64_t a2)
{
  v5 = _s10PredicatesOMa_1(0);
  *&v7 = __chkstk_darwin(v5, v6).n128_u64[0];
  v9 = (v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = [v2 accountObjectID];
  swift_storeEnumTagMultiPayload();
  v10 = [v2 accountObjectID];
  v11 = [a1 persistentStoreOfAccountWithAccountID:v10];

  if (v11)
  {
    sub_1000F5104(&unk_100939D60, &unk_1007959E0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1007953F0;
    *(v12 + 32) = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v14 = [objc_allocWithZone(NSFetchRequest) init];
  v15 = [swift_getObjCClassFromMetadata() entity];
  [v14 setEntity:v15];

  if (v12)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    v16.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v16.super.isa = 0;
  }

  [v14 setAffectedStores:v16.super.isa];

  [v14 setPredicate:v13];
  v12, v17, v18, v19, v20, v21, v22, v23;
  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v14 setSortDescriptors:isa];

  v25 = a1;
  v26 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
    sub_100025254(v9, _s10PredicatesOMa_1);
  }

  else
  {
    v44[1] = v26;
    v27 = v26;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v28 = Sequence.elements<A>(ofType:)();
    v27, v29, v30, v31, v32, v33, v34, v35;

    v25 = sub_1001E0B24(v28);
    sub_100025254(v9, _s10PredicatesOMa_1);
    v28, v36, v37, v38, v39, v40, v41, v42;
  }

  return v25;
}

id sub_1001DDF0C(void *a1)
{
  v4 = _s10PredicatesOMa_1(0);
  *&v6 = __chkstk_darwin(v4, v5).n128_u64[0];
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = [v1 groupObjectID];
  v8[8] = 1;
  swift_storeEnumTagMultiPayload();
  v9 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v10 = [objc_allocWithZone(NSFetchRequest) init];
  v11 = [swift_getObjCClassFromMetadata() entity];
  [v10 setEntity:v11];

  [v10 setAffectedStores:0];
  [v10 setPredicate:v9];

  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v10 setSortDescriptors:isa];

  v13 = a1;
  v14 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    sub_100025254(v8, _s10PredicatesOMa_1);
  }

  else
  {
    v32[1] = v14;
    v15 = v14;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v16 = Sequence.elements<A>(ofType:)();
    v15, v17, v18, v19, v20, v21, v22, v23;

    v13 = sub_1001E0B24(v16);
    sub_100025254(v8, _s10PredicatesOMa_1);
    v16, v24, v25, v26, v27, v28, v29, v30;
  }

  return v13;
}

id sub_1001DE240(void *a1)
{
  v3 = v1;
  v5 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v5, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v8 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v9 = [objc_allocWithZone(NSFetchRequest) init];
  v10 = [swift_getObjCClassFromMetadata() entity];
  [v9 setEntity:v10];

  [v9 setAffectedStores:0];
  [v9 setPredicate:v8];

  if (qword_100936520 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v9 setSortDescriptors:isa];

    v12 = a1;
    v13 = NSManagedObjectContext.fetch<A>(_:)();
    if (v2)
    {
      sub_100025254(v7, _s10PredicatesOMa_1);

      return v12;
    }

    v44 = a1;
    v46 = v13;
    v14 = v13;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    a1 = v3;
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v15 = Sequence.elements<A>(ofType:)();
    v14, v16, v17, v18, v19, v20, v21, v22;

    if (([v3 requiringOneOrMoreIncompleteReminders] & 1) == 0)
    {
      break;
    }

    v46 = &_swiftEmptyArrayStorage;
    if (v15 >> 62)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v3 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = v7;
    if (!v3)
    {
      v33 = &_swiftEmptyArrayStorage;
LABEL_20:
      v15, v23, v24, v25, v26, v27, v28, v29;
      v15 = v33;
      v7 = v42;
      break;
    }

    v9 = 0;
    v30 = v15 & 0xC000000000000001;
    v7 = (v15 & 0xFFFFFFFFFFFFFF8);
    v43 = v15;
    while (1)
    {
      if (v30)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v7 + 2))
        {
          goto LABEL_24;
        }

        v31 = *(v15 + 8 * v9 + 32);
      }

      v32 = v31;
      a1 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v45 = v31;
      if (sub_1001DE698(&v45))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v15 = v43;
      }

      else
      {
      }

      ++v9;
      if (a1 == v3)
      {
        v33 = v46;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  v12 = sub_1001E0B24(v15);
  sub_100025254(v7, _s10PredicatesOMa_1);
  v15, v35, v36, v37, v38, v39, v40, v41;
  return v12;
}

BOOL sub_1001DE698(void **a1)
{
  v3 = _s10PredicatesOMa(0);
  *&v5 = __chkstk_darwin(v3, v4).n128_u64[0];
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  v9 = [v8 remObjectID];
  if (v9)
  {
    v10 = v9;
    sub_1000F5104(&qword_10093B980, qword_10079A3D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    v12 = *(sub_1000F5104(&qword_10093C920, qword_1007AC750) + 64);
    *v7 = v10;
    v7[8] = 1;
    v13 = enum case for REMRemindersListDataView.ShowCompleted.on(_:);
    v14 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
    (*(*(v14 - 8) + 104))(&v7[v12], v13, v14);
    swift_storeEnumTagMultiPayload();
    v15 = v10;
    v16 = sub_100043AA8();
    sub_100025254(v7, _s10PredicatesOMa);
    *(inited + 32) = v16;
    KeyPath = swift_getKeyPath();
    v18 = sub_1003EAA24(KeyPath);

    *(inited + 40) = v18;
    v19 = sub_10000C2B0();
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v20 = [objc_allocWithZone(NSFetchRequest) init];
    v21 = [swift_getObjCClassFromMetadata() entity];
    [v20 setEntity:v21];

    [v20 setAffectedStores:0];
    [v20 setPredicate:v19];
    [v20 setFetchLimit:1];
    v22 = NSManagedObjectContext.count<A>(for:)();
    if (v1)
    {
    }

    else
    {
      v31 = v22;

      return v31 > 0;
    }
  }

  else
  {
    if (qword_100935BB8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100006654(v24, qword_10093C6D8);
    v25 = v8;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = [v25 objectID];
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "fetchGroceryListsWithRequiringOneOrMoreIncompleteReminders: nil list remObjectID: %@", v28, 0xCu);
      sub_1000050A4(v29, &unk_100938E70, &unk_100797230);
    }

    return 0;
  }

  return v23;
}

id sub_1001DEAB8(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v4 = *v1;
  v5 = [v4 accountObjectID];
  sub_100031BC0(a1, v5, [v4 debug_useInMemoryPreferredDefaultListStorage], 0);
  v7 = v6;
  v8 = v2;

  if (!v2)
  {
    v8 = sub_1001E0B24(v7);
    v7, v9, v10, v11, v12, v13, v14, v15;
  }

  return v8;
}

id sub_1001DEB80(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  sub_100031BC0(a1, a4, [*v4 debug_useInMemoryPreferredDefaultListStorage], 0);
  if (!v5)
  {
    v8 = v7;
    v6 = sub_1001E0B24(v7);
    v8, v9, v10, v11, v12, v13, v14, v15;
  }

  return v6;
}

id sub_1001DEC00(void *a1)
{
  v4 = _s10PredicatesOMa_1(0);
  *&v6 = __chkstk_darwin(v4, v5).n128_u64[0];
  v8 = (v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = [v1 accountObjectID];
  swift_storeEnumTagMultiPayload();
  v9 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v10 = [objc_allocWithZone(NSFetchRequest) init];
  v11 = [swift_getObjCClassFromMetadata() entity];
  [v10 setEntity:v11];

  [v10 setAffectedStores:0];
  [v10 setPredicate:v9];

  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v10 setSortDescriptors:isa];

  v13 = a1;
  v14 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    sub_100025254(v8, _s10PredicatesOMa_1);
  }

  else
  {
    v32[1] = v14;
    v15 = v14;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v16 = Sequence.elements<A>(ofType:)();
    v15, v17, v18, v19, v20, v21, v22, v23;

    v13 = sub_1001E0B24(v16);
    sub_100025254(v8, _s10PredicatesOMa_1);
    v16, v24, v25, v26, v27, v28, v29, v30;
  }

  return v13;
}

id sub_1001DEEE8(void *a1, uint64_t a2)
{
  v5 = _s10PredicatesOMa_1(0);
  *&v7 = __chkstk_darwin(v5, v6).n128_u64[0];
  v9 = (v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [v2 objectIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *v9 = v11;
  swift_storeEnumTagMultiPayload();
  v12 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v13 = [objc_allocWithZone(NSFetchRequest) init];
  v14 = [swift_getObjCClassFromMetadata() entity];
  [v13 setEntity:v14];

  [v13 setAffectedStores:0];
  [v13 setPredicate:v12];

  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v13 setSortDescriptors:isa];

  v16 = a1;
  v17 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
    sub_100025254(v9, _s10PredicatesOMa_1);
  }

  else
  {
    v35[1] = v17;
    v18 = v17;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v19 = Sequence.elements<A>(ofType:)();
    v18, v20, v21, v22, v23, v24, v25, v26;

    v16 = sub_1001E0B24(v19);
    sub_100025254(v9, _s10PredicatesOMa_1);
    v19, v27, v28, v29, v30, v31, v32, v33;
  }

  return v16;
}

id sub_1001DF208(void *a1)
{
  v4 = _s10PredicatesOMa_1(0);
  *&v6 = __chkstk_darwin(v4, v5).n128_u64[0];
  v8 = (v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [v1 accountObjectID];
  v10 = [v1 externalIdentifiers];
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *v8 = v9;
  v8[1] = v11;
  swift_storeEnumTagMultiPayload();
  v12 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v13 = [objc_allocWithZone(NSFetchRequest) init];
  v14 = [swift_getObjCClassFromMetadata() entity];
  [v13 setEntity:v14];

  [v13 setAffectedStores:0];
  [v13 setPredicate:v12];

  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v13 setSortDescriptors:isa];

  v16 = a1;
  v17 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    sub_100025254(v8, _s10PredicatesOMa_1);
  }

  else
  {
    v35[1] = v17;
    v18 = v17;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v19 = Sequence.elements<A>(ofType:)();
    v18, v20, v21, v22, v23, v24, v25, v26;

    v16 = sub_1001E0B24(v19);
    sub_100025254(v8, _s10PredicatesOMa_1);
    v19, v27, v28, v29, v30, v31, v32, v33;
  }

  return v16;
}

id sub_1001DF54C(void *a1)
{
  v4 = _s10PredicatesOMa_1(0);
  *&v6 = __chkstk_darwin(v4, v5).n128_u64[0];
  v8 = (v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [v1 externalIdentifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = [v1 accountObjectID];
  *v8 = v10;
  v8[1] = v12;
  v8[2] = v13;
  swift_storeEnumTagMultiPayload();
  v14 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v15 = [objc_allocWithZone(NSFetchRequest) init];
  v16 = [swift_getObjCClassFromMetadata() entity];
  [v15 setEntity:v16];

  [v15 setAffectedStores:0];
  [v15 setPredicate:v14];

  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v15 setSortDescriptors:isa];

  v18 = a1;
  v19 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    sub_100025254(v8, _s10PredicatesOMa_1);
  }

  else
  {
    v37[1] = v19;
    v20 = v19;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v21 = Sequence.elements<A>(ofType:)();
    v20, v22, v23, v24, v25, v26, v27, v28;

    v18 = sub_1001E0B24(v21);
    sub_100025254(v8, _s10PredicatesOMa_1);
    v21, v29, v30, v31, v32, v33, v34, v35;
  }

  return v18;
}

void sub_1001DF87C(uint64_t a1)
{
  v3 = v1;
  v5 = [v3 templateObjectID];
  v6 = sub_10034AE0C(v5, a1, 0, 0);

  if (!v2)
  {
    v7 = [v6 account];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_opt_self() sharedConfiguration];
      [v9 templatePublicLinkTTL];

      v39 = sub_1001DA188(v6);
      v40 = sub_100019990(v8);
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1007953F0;
      *(v41 + 32) = v40;
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_1007953F0;
      *(v70 + 32) = v39;
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1007953F0;
      v69 = v40;
      v43 = v39;
      *(v42 + 32) = [v3 templateObjectID];
      v44 = objc_allocWithZone(REMListsDataViewInvocationResult);
      sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v41, v46, v47, v48, v49, v50, v51, v52;
      sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
      v53 = Array._bridgeToObjectiveC()().super.isa;
      v70, v54, v55, v56, v57, v58, v59, v60;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v61 = Array._bridgeToObjectiveC()().super.isa;
      v42, v62, v63, v64, v65, v66, v67, v68;
      [v44 initWithAccountStorages:isa listStorages:v53 objectIDs:v61];
    }

    else
    {
      v10 = objc_opt_self();
      _StringGuts.grow(_:)(36);
      0xE000000000000000, v11, v12, v13, v14, v15, v16, v17;
      v18 = [v6 description];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22._countAndFlagsBits = v19;
      v22._object = v21;
      String.append(_:)(v22);
      v21, v23, v24, v25, v26, v27, v28, v29;
      v30._countAndFlagsBits = 125;
      v30._object = 0xE100000000000000;
      String.append(_:)(v30);
      v31 = String._bridgeToObjectiveC()();
      0x80000001007F0570, v32, v33, v34, v35, v36, v37, v38;
      [v10 internalErrorWithDebugDescription:v31];

      swift_willThrow();
    }
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_1001DFC3C(void *a1, char a2, unint64_t a3)
{
  if (a2)
  {
    if (a3 >> 62)
    {
      goto LABEL_59;
    }

    v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_4;
  }

  v40 = &_swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = a1;
  if (v17)
  {
    v18 = 0;
    v35 = v17;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v19 = *(a3 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v22 = [v19 account];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 accountTypeHost];
        v25 = [v24 isCloudKit];

        if (!v25)
        {

          goto LABEL_28;
        }

        if (!a1)
        {

LABEL_41:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_28;
        }

        v26 = v37;
        v27 = [v23 remObjectID];
        if (!v27)
        {

          v17 = v35;
          goto LABEL_28;
        }

        v28 = v27;
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v29 = static NSObject.== infix(_:_:)();

        v17 = v35;
        if (v29)
        {
          goto LABEL_41;
        }
      }

LABEL_28:
      ++v18;
      if (v21 == v17)
      {
        v30 = v40;
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v4 = _CocoaArrayWrapper.endIndex.getter();
LABEL_4:
    v34 = a1;
    if (v4)
    {
      v5 = 0;
      v36 = v4;
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }

          v7 = *(a3 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_57;
        }

        v10 = [v7 account];
        if (v10)
        {
          break;
        }

        v6 = v8;
LABEL_7:

        ++v5;
        if (v9 == v4)
        {
          goto LABEL_44;
        }
      }

      v6 = v10;
      v11 = [v10 accountTypeHost];
      v12 = [v11 isCloudKit];

      if (v12)
      {
        if (!a1)
        {

LABEL_51:
          v39 = v8;
          v30 = &_swiftEmptyArrayStorage;
          v40 = &_swiftEmptyArrayStorage;
          if (v8)
          {
            v33 = v8;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v30 = v40;
          }

          goto LABEL_45;
        }

        v13 = v34;
        v14 = [v6 remObjectID];
        if (v14)
        {
          v15 = v14;
          sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
          v16 = static NSObject.== infix(_:_:)();

          if (v16)
          {
            goto LABEL_51;
          }

          v6 = v8;
          goto LABEL_21;
        }
      }

      else
      {
        v13 = v8;
      }

LABEL_21:
      v4 = v36;
      goto LABEL_7;
    }

LABEL_44:
    v39 = 0;
    v30 = &_swiftEmptyArrayStorage;
LABEL_45:
    sub_1000050A4(&v39, &unk_100943240, &qword_10079A3B8);
    v31 = v34;
  }

  else
  {
    v30 = &_swiftEmptyArrayStorage;
LABEL_48:
    v31 = v37;
  }

  return v30;
}

uint64_t sub_1001E00C0()
{
  v0 = [objc_opt_self() daemonUserDefaults];
  type metadata accessor for REMDaemonUserDefaultsPreferredListStorageAdapter();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_100974C40 = result;
  return result;
}

uint64_t sub_1001E011C(uint64_t a1)
{
  v3 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = *(*v1 + 16);
  sub_1001E0978(a1, &v14 - v5);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v11 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v11 = v12;
    (*(v9 + 8))(v6, v8);
  }

  [v7 setPreferredDefaultListObjectIDUrl:v11];

  return sub_1000050A4(a1, &unk_1009441F0, &qword_100795760);
}

id sub_1001E026C()
{
  v1 = [*(*v0 + 16) preferredDefaultListID];

  return v1;
}

void sub_1001E02A8(void *a1)
{
  [*(*v1 + 16) setPreferredDefaultListID:a1];
}

uint64_t sub_1001E02F4()
{
  v0 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v0, v1);
  type metadata accessor for MockInMemoryPreferredDefaultListStorage(0);
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_l_preferredDefaultListObjectIDUrl;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  *(v2 + OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_l_preferredDefaultListID) = 0;
  sub_1001E11C8();
  sub_1000F5104(&qword_100936E68, &unk_100791AB0);
  sub_10000CB90(&qword_100936E70, &qword_100936E68, &unk_100791AB0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  result = UnfairLock.init(options:)();
  *(v2 + OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_lock) = result;
  qword_100974C48 = v2;
  return result;
}

uint64_t sub_1001E0480(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_l_preferredDefaultListObjectIDUrl;
  swift_beginAccess();
  sub_1001E0A50(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1001E04E4()
{
  sub_1000050A4(v0 + OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_l_preferredDefaultListObjectIDUrl, &unk_1009441F0, &qword_100795760);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockInMemoryPreferredDefaultListStorage(uint64_t a1)
{
  result = qword_10093C800;
  if (!qword_10093C800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001E05CC(uint64_t a1)
{
  sub_1001E0674(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001E0674(uint64_t a1)
{
  if (!qword_10093C810)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10093C810);
    }
  }
}

uint64_t sub_1001E06CC()
{
  type metadata accessor for UnfairLock();

  sub_1000F5104(&unk_1009441F0, &qword_100795760);
  Lock.sync<A>(_:)();
}

uint64_t sub_1001E077C(uint64_t a1)
{
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();

  return sub_1000050A4(a1, &unk_1009441F0, &qword_100795760);
}

uint64_t sub_1001E0830()
{
  type metadata accessor for UnfairLock();

  sub_1000F5104(&unk_10093AF40, &unk_100795790);
  Lock.sync<A>(_:)();

  return v1;
}

void sub_1001E08D8(void *a1)
{
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();
}

uint64_t sub_1001E0978(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001E09E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_l_preferredDefaultListID);
  *(v1 + OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_l_preferredDefaultListID) = v2;
  v3 = v2;
}

id sub_1001E0A34@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_l_preferredDefaultListID);
  *a1 = v2;
  return v2;
}

uint64_t sub_1001E0A50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&unk_1009441F0, &qword_100795760);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E0AC0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7remindd39MockInMemoryPreferredDefaultListStorage_l_preferredDefaultListObjectIDUrl;
  swift_beginAccess();
  return sub_1001E0978(v1 + v3, a1);
}

id sub_1001E0B24(_TtC7remindd19RDXPCStorePerformer *a1)
{
  if (qword_100935BB8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v4 = sub_100006654(v3, qword_10093C6D8);
  v61 = a1;
  __chkstk_darwin(v4, v5);
  sub_1000F5104(&qword_10093F6F0, qword_10079A300);
  sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
  sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
  v6 = Sequence.map<A>(skippingError:_:)();
  if (v1)
  {

    v7 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = &_swiftEmptyArrayStorage;
  if (!v8)
  {
    goto LABEL_16;
  }

  v61 = &_swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(v7 + 8 * v11 + 32);
      }

      v13 = v12;
      ++v11;
      v14 = [v12 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v8 != v11);
    v9 = v61;
LABEL_16:
    v61 = _swiftEmptyDictionarySingleton;
    sub_10002B31C(&_swiftEmptyArrayStorage, a1, &v61, sub_10002B448);
    v16 = v15;
    v60 = _swiftEmptyDictionarySingleton;
    sub_10002B31C(&_swiftEmptyArrayStorage, a1, &v60, sub_10002BE58);
    v18 = v17;
    v60, v19, v20, v21, v22, v23, v24, v25;
    v61, v26, v27, v28, v29, v30, v31, v32;
    v61 = v18;
    sub_100271FB4(v7);
    v33 = v61;
    v34 = objc_allocWithZone(REMListsDataViewInvocationResult);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v16, v36, v37, v38, v39, v40, v41, v42;
    v43 = Array._bridgeToObjectiveC()().super.isa;
    v33, v44, v45, v46, v47, v48, v49, v50;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v51 = Array._bridgeToObjectiveC()().super.isa;
    v9, v52, v53, v54, v55, v56, v57, v58;
    v59 = [v34 initWithAccountStorages:isa listStorages:v43 objectIDs:v51];

    return v59;
  }

  __break(1u);
  return result;
}

id sub_1001E0F18(void *a1)
{
  v3 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v3, v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v6 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v7 = [objc_allocWithZone(NSFetchRequest) init];
  v8 = [swift_getObjCClassFromMetadata() entity];
  [v7 setEntity:v8];

  [v7 setAffectedStores:0];
  [v7 setPredicate:v6];

  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v7 setSortDescriptors:isa];

  v10 = a1;
  v11 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
    sub_100025254(v5, _s10PredicatesOMa_1);
  }

  else
  {
    v29[1] = v11;
    v12 = v11;
    sub_1000F5104(&qword_10093F6F0, qword_10079A300);
    sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
    v13 = Sequence.elements<A>(ofType:)();
    v12, v14, v15, v16, v17, v18, v19, v20;

    v10 = sub_1001E0B24(v13);
    sub_100025254(v5, _s10PredicatesOMa_1);
    v13, v21, v22, v23, v24, v25, v26, v27;
  }

  return v10;
}

unint64_t sub_1001E11C8()
{
  result = qword_100936E60;
  if (!qword_100936E60)
  {
    type metadata accessor for UnfairLock.Options();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936E60);
  }

  return result;
}

uint64_t sub_1001E1220()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093C928);
  v1 = sub_100006654(v0, qword_10093C928);
  if (qword_100936460 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975068);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

_TtC7remindd19RDXPCStorePerformer *sub_1001E12E8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for REMGroceryModelError();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v150 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = _swiftEmptySetSingleton;
  v15 = *(a1 + 16);
  if (!v15)
  {
    v155 = &_swiftEmptyArrayStorage;
    _swiftEmptySetSingleton, v7, v8, v9, v10, v11, v12, v13;
    return v155;
  }

  v16 = type metadata accessor for REMGroceryDummyModel();
  v17 = 0;
  v156 = a1 + 32;
  v157 = v16;
  v153 = (v5 + 88);
  v152 = enum case for REMGroceryModelError.unsupportedLanguage(_:);
  v154 = (v5 + 8);
  v155 = &_swiftEmptyArrayStorage;
  *&v18 = 136315138;
  v149 = v18;
  v19 = v150;
  v151 = v15;
  v148 = v4;
  while (1)
  {
    v27 = (v156 + 16 * v17);
    v28 = *v27;
    v29 = v27[1];

    v158 = v28;
    v30 = static REMGroceryDummyModel.modelBaseLocale(for:)();
    if (!v2)
    {
      v80 = v31;
      if (v31)
      {
        v81 = v30;
        v82 = v161;
        if (*v161->clientIdentity && (Hasher.init(_seed:)(), String.hash(into:)(), v83 = Hasher._finalize()(), v90 = -1 << v82->clientIdentity[16], v91 = v83 & ~v90, ((*&v82->clientIdentity[((v91 >> 3) & 0xFFFFFFFFFFFFFF8) + 40] >> v91) & 1) != 0))
        {
          v92 = ~v90;
          while (1)
          {
            v93 = (*&v82->clientIdentity[32] + 16 * v91);
            v94 = v93[1];
            v95 = *v93 == v81 && v80 == v94;
            if (v95 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v91 = (v91 + 1) & v92;
            if (((*&v82->clientIdentity[((v91 >> 3) & 0xFFFFFFFFFFFFFF8) + 40] >> v91) & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          v80, v94, v84, v85, v86, v87, v88, v89;
          v29, v111, v112, v113, v114, v115, v116, v117;
          v4 = v148;
          v19 = v150;
          v15 = v151;
        }

        else
        {
LABEL_23:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v155 = sub_100365788(0, *v155->clientIdentity + 1, 1, v155, v96, v97, v98, v99);
          }

          v19 = v150;
          v15 = v151;
          v101 = *v155->clientIdentity;
          v100 = *&v155->clientIdentity[8];
          if (v101 >= v100 >> 1)
          {
            v155 = sub_100365788((v100 > 1), v101 + 1, 1, v155, v96, v97, v98, v99);
          }

          v102 = v155;
          *v155->clientIdentity = v101 + 1;
          v103 = v102 + 16 * v101;
          *(v103 + 4) = v158;
          *(v103 + 5) = v29;
          sub_100378434(v159, v81, v80);
          v159[1], v104, v105, v106, v107, v108, v109, v110;
          v4 = v148;
        }
      }

      else
      {
        v29, 0, v32, v33, v34, v35, v36, v37;
      }

      goto LABEL_5;
    }

    v159[0] = v2;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v155, v38, v39, v40, v41, v42, v43, v44;
      v29, v118, v119, v120, v121, v122, v123, v124;
      v161, v125, v126, v127, v128, v129, v130, v131;
      goto LABEL_34;
    }

    v45 = (*v153)(v19, v4);
    if (v45 != v152)
    {
      break;
    }

    (*v154)(v19, v4);
    if (qword_100935BD0 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100006654(v53, qword_10093C928);

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    v29, v56, v57, v58, v59, v60, v61, v62;
    if (os_log_type_enabled(v54, v55))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v160 = v71;
      *v70 = v149;
      v72 = sub_10000668C(v158, v29, &v160);
      v29, v73, v74, v75, v76, v77, v78, v79;
      *(v70 + 4) = v72;
      v15 = v151;
      _os_log_impl(&_mh_execute_header, v54, v55, "remRemovingThoseWithTheSameBaseLocaleIDAndDroppingGroceryUnsupportedLocaleID, unsupportedLanguage: %s", v70, 0xCu);
      sub_10000607C(v71);
    }

    else
    {
      v29, v63, v64, v65, v66, v67, v68, v69;
    }

    v2 = 0;
LABEL_5:
    if (++v17 == v15)
    {
      v161, v20, v21, v22, v23, v24, v25, v26;
      return v155;
    }
  }

  v155, v46, v47, v48, v49, v50, v51, v52;
  v29, v132, v133, v134, v135, v136, v137, v138;
  v161, v139, v140, v141, v142, v143, v144, v145;
  (*v154)(v19, v4);
LABEL_34:

  return v155;
}

uint64_t sub_1001E1818()
{

  return sub_1001E18E8(&qword_100938CA0, REMColor_ptr);
}

uint64_t sub_1001E1880()
{

  return sub_1001E18E8(&unk_10093C970, REMContactRepresentation_ptr);
}

uint64_t sub_1001E18E8(unint64_t *a1, void *a2)
{
  v5 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v5 - 8, v6);
  v7 = [objc_allocWithZone(type metadata accessor for RDJSONCoder()) init];
  [v2 encodeWithCoder:v7];
  v8 = objc_opt_self();
  v9 = OBJC_IVAR____TtC7reminddP33_673FACCCF2F505342EF4BC86AF8BFBA711RDJSONCoder_dicts;
  swift_beginAccess();
  v10 = *&v7[v9];
  if (!*(v10 + 16))
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  v11 = *(v10 + 32);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v11, v13, v14, v15, v16, v17, v18, v19;
  v60 = 0;
  v20 = [v8 dataWithJSONObject:isa options:0 error:&v60];

  v21 = v60;
  if (v20)
  {
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    static String.Encoding.utf8.getter();
    v25 = String.init(data:encoding:)();
    if (v26)
    {
      v27 = v25;
      sub_10001BBA0(v22, v24);

      return v27;
    }

    v30 = objc_opt_self();
    v31 = String._bridgeToObjectiveC()();
    [v30 internalErrorWithDebugDescription:v31];

    swift_willThrow();
    sub_10001BBA0(v22, v24);
  }

  else
  {
    v29 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_100935BE8 != -1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v32 = type metadata accessor for Logger();
  sub_100006654(v32, qword_10093CAE0);
  v33 = v2;
  swift_errorRetain();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v36 = 136315394;
    sub_1000060C8(0, a1, a2);
    v37 = v33;
    v38 = String.init<A>(describing:)();
    v40 = v39;
    v41 = sub_10000668C(v38, v39, &v60);
    v40, v42, v43, v44, v45, v46, v47, v48;
    *(v36 + 4) = v41;
    *(v36 + 12) = 2080;
    swift_getErrorValue();
    v49 = Error.localizedDescription.getter();
    v51 = v50;
    v52 = sub_10000668C(v49, v50, &v60);
    v51, v53, v54, v55, v56, v57, v58, v59;
    *(v36 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v34, v35, "RDJSONCoder failed to encode object as JSON {class: %s, error: %s}", v36, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1001E1D20()
{

  return sub_1001E18E8(&qword_10093C968, REMResolutionTokenMap_ptr);
}

uint64_t sub_1001E1D88()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093C940);
  v1 = sub_100006654(v0, qword_10093C940);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1001E1E58(char a1)
{
  result = 0x626D456567646162;
  switch(a1)
  {
    case 1:
      result = 0x726F6C6F63;
      break;
    case 2:
      result = 0x61447265746C6966;
      break;
    case 3:
      result = 0xD000000000000026;
      break;
    case 4:
      result = 0xD000000000000028;
      break;
    case 5:
      result = 0xD000000000000022;
      break;
    case 6:
      result = 1701667182;
      break;
    case 7:
      result = 0x6341746E65726170;
      break;
    case 8:
      result = 0x694C746E65726170;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x73694C7472616D73;
      break;
    case 12:
      result = 0x53676E6974726F73;
      break;
    case 13:
      result = 0x614464656E6E6970;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001E201C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1001E1E58(*a1);
  v5 = v4;
  v6 = sub_1001E1E58(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

Swift::Int sub_1001E20A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1001E1E58(v1);
  v3 = v2;
  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

double sub_1001E2108(uint64_t a1)
{
  sub_1001E1E58(*v1);
  v3 = v2;
  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
  return result;
}

Swift::Int sub_1001E215C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1001E1E58(v2);
  v4 = v3;
  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_1001E21BC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001E6A64(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1001E21EC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1001E1E58(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void _sSo14REMCDSmartListC7reminddE19sortChildrenObjectsyyF_0()
{
  v1 = v0;
  if ((sub_1001E2B1C() & 1) == 0)
  {
    v2 = [v0 remObjectID];
    if (v2)
    {
      v63 = v2;
      v3 = [v0 storeControllerManagedObjectContext];
      if (v3)
      {
        v4 = v3;
        v5 = qword_100935D68;
        v6 = v63;
        if (v5 != -1)
        {
          swift_once();
        }

        v7 = sub_10024B964(v63, 0);
        type metadata accessor for REMCDSmartListSection();
        v8 = [objc_allocWithZone(NSFetchRequest) init];
        v9 = [swift_getObjCClassFromMetadata() entity];
        [v8 setEntity:v9];

        [v8 setAffectedStores:0];
        [v8 setPredicate:v7];

        [v8 setPropertiesToFetch:0];
        [v8 setRelationshipKeyPathsForPrefetching:0];
        sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v8 setSortDescriptors:isa];

        v11 = NSManagedObjectContext.fetch<A>(_:)();
        v12 = [v1 sectionIDsOrderingAsData];
        if (v12)
        {
          v13 = v12;
          v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
          static REMJSONRepresentable.fromJSONData(_:)();
          sub_10001BBA0(v14, v16);
          v17 = REMOrderedIdentifierMap.reorder<A>(objects:)();
          v64 = v65;
          v11, v18, v19, v20, v21, v22, v23, v24;
          if (qword_100935BD8 != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for Logger();
          sub_100006654(v25, qword_10093C940);
          v26 = v1;
          v27 = Logger.logObject.getter();
          v28 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v65 = v62;
            *v29 = 136315138;
            v30 = [v26 remObjectID];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 description];

              v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v35 = v34;
            }

            else
            {
              v33 = 7104878;
              v35 = 0xE300000000000000;
            }

            v54 = sub_10000668C(v33, v35, &v65);
            v35, v55, v56, v57, v58, v59, v60, v61;
            *(v29 + 4) = v54;
            _os_log_impl(&_mh_execute_header, v27, v28, "REMCDSmartList+CloudKit#sortChildSections(): Sorted child sections {cdSmartList: %s}", v29, 0xCu);
            sub_10000607C(v62);
          }
        }

        else
        {
          v17 = v11;
        }

        v36 = sub_100271000(v17);
        v17, v37, v38, v39, v40, v41, v42, v43;
        v44 = objc_allocWithZone(NSMutableOrderedSet);
        v45 = Array._bridgeToObjectiveC()().super.isa;
        v36, v46, v47, v48, v49, v50, v51, v52;
        v53 = [v44 initWithArray:v45];

        [v1 setSections:v53];
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1001E2B1C()
{
  v1 = [v0 managedObjectContext];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3 && (v4 = v3, (v5 = [v0 recordID]) != 0))
  {
    v6 = v5;
    if ([v4 containerShouldSortChildrenAfterFetchingWithRecordID:v5])
    {
      if (qword_100935BD8 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100006654(v7, qword_10093C940);
      v8 = v6;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138543362;
        *(v11 + 4) = v8;
        *v12 = v6;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v9, v10, "Sorting children (reminders and/or sections) deferred {smartListRecordID: %{public}@}", v11, 0xCu);
        sub_1000050A4(v12, &unk_100938E70, &unk_100797230);

        v8 = v9;
        v9 = v13;
      }

      v14 = 1;
      v6 = v9;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t static REMCDSmartList.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id static REMCDSmartList.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordID];
  v9 = [v8 recordName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v9 = String._bridgeToObjectiveC()();
    v11, v12, v13, v14, v15, v16, v17, v18;
  }

  v19 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v9 context:a3 account:a2];

  if (v19)
  {
    v20 = [a2 ckIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = v19;
      [v22 setAccount:a2];
      [v22 mergeDataFromRecord:a1 accountID:v21];

      [v22 setCkServerRecord:a1];
      [v22 setInCloud:1];

      [v22 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_100935BD8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_10093C940);
      v24 = a2;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v55 = v4;
        *v27 = 136446466;
        swift_getMetatypeMetadata();
        v28 = String.init<A>(describing:)();
        v30 = v29;
        v31 = sub_10000668C(v28, v29, &v54);
        v30, v32, v33, v34, v35, v36, v37, v38;
        *(v27 + 4) = v31;
        *(v27 + 12) = 2082;
        v39 = [v24 remObjectID];
        if (v39)
        {
          v40 = v39;
          v41 = [v39 description];

          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;
        }

        else
        {
          v44 = 0xE300000000000000;
          v42 = 7104878;
        }

        v45 = sub_10000668C(v42, v44, &v54);
        v44, v46, v47, v48, v49, v50, v51, v52;
        *(v27 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v25, v26, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v27, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v19;
}

Swift::String __swiftcall REMCDSmartList.recordType()()
{
  v0 = 0x73694C7472616D53;
  v1 = 0xE900000000000074;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::Void __swiftcall REMCDSmartList.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v3 = v2;
  swift_getObjectType();
  v5 = String._bridgeToObjectiveC()();
  v31.receiver = v3;
  v31.super_class = REMCDSmartList;
  objc_msgSendSuper2(&v31, "mergeDataFromRecord:accountID:", from.super.isa, v5);

  v6 = [(objc_class *)from.super.isa recordID];
  v7 = [v6 recordName];

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    v7 = String._bridgeToObjectiveC()();
    v9, v10, v11, v12, v13, v14, v15, v16;
  }

  v17 = [v3 ckIdentifierFromRecordName:v7];

  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    v17 = String._bridgeToObjectiveC()();
    v19, v20, v21, v22, v23, v24, v25, v26;
  }

  [v3 setCkIdentifier:v17];

  v27 = [v3 mergeDataRevertedLocallyMarkedForDeletion];
  v28 = [v3 mergeDataRefusedToMergeMarkedForDeletion];
  v29 = v3;
  v30 = from.super.isa;
  sub_1004D6DAC(v30, v27, v28, v29, v29, v30);
}

void sub_1001E34CC(_BYTE *a1, void *a2, void *a3, _BYTE *a4, uint64_t a5)
{
  v397 = a5;
  v400 = 0;
  v401 = a4;
  v404 = a3;
  v405 = a2;
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v395 - v8;
  v398 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v398, v10);
  v399 = &v395 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v395 = &v395 - v14;
  v15 = type metadata accessor for UUID();
  v402 = *(v15 - 1);
  v403 = v15;
  __chkstk_darwin(v15, v16);
  v396 = &v395 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v21 = &v395 - v20;
  v22 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v22 - 8, v23);
  __chkstk_darwin(v24, v25);
  v27 = &v395 - v26;
  __chkstk_darwin(v28, v29);
  v31 = &v395 - v30;
  __chkstk_darwin(v32, v33);
  v35 = &v395 - v34;
  __chkstk_darwin(v36, v37);
  __chkstk_darwin(v38, v39);
  v41 = &v395 - v40;
  __chkstk_darwin(v42, v43);
  __chkstk_darwin(&v395 - v44, v45);
  v47 = &v395 - v46;
  __chkstk_darwin(v48, v49);
  __chkstk_darwin(v50, v51);
  v53 = &v395 - v52;
  *&v60 = __chkstk_darwin(v54, v55).n128_u64[0];
  v62 = &v395 - v61;
  switch(*a1)
  {
    case 1:
      v108 = CKRecord.subscript.getter();
      v109 = v405;
      if (v108)
      {
        v408 = v108;
        sub_1000F5104(&qword_100938860, &unk_1007A4830);
        if (swift_dynamicCast())
        {
          v110 = v407;
          isa = sub_10013E558(v406, v407);
          v110, v111, v112, v113, v114, v115, v116, v117;
          if (isa)
          {
            [v109 setColor:isa];
            goto LABEL_131;
          }
        }
      }

      [v109 setColor:0];
      return;
    case 2:
      v118 = [v404 encryptedValues];
      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.getter();
      swift_unknownObjectRelease();
      v119 = v407;
      if (v407 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        v192 = v406;
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v192, v119);
      }

      [v405 setFilterData:isa];
      goto LABEL_131;
    case 3:
      return;
    case 4:
      v83 = [v404 encryptedValues];
      v84 = String._bridgeToObjectiveC()();
      v85 = [v83 objectForKeyedSubscript:v84];
      swift_unknownObjectRelease();

      if (v85)
      {
        v408 = v85;
        sub_1000F5104(&qword_100938860, &unk_1007A4830);
        v86 = swift_dynamicCast();
        if (v86)
        {
          v87 = v406;
        }

        else
        {
          v87 = 0;
        }

        if (v86)
        {
          v85 = v407;
        }

        else
        {
          v85 = 0;
        }
      }

      else
      {
        v87 = 0;
      }

      v193 = [v405 membershipsOfRemindersInSectionsChecksum];
      if (v193)
      {
        v194 = v193;
        v195 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v197 = v196;

        if (v85)
        {
          if (v195 == v87 && v85 == v197)
          {
            v85, v198, v199, v200, v201, v202, v203, v204;
            v197, v205, v206, v207, v208, v209, v210, v211;
            return;
          }

          v227 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v197, v228, v229, v230, v231, v232, v233, v234;
          if (v227)
          {
            v85, v235, v236, v237, v238, v239, v240, v241;
            return;
          }
        }

        else
        {
          v197, v198, v199, v200, v201, v202, v203, v204;
        }
      }

      else if (!v85)
      {
        return;
      }

      v242 = v405;
      v403 = [v405 membershipsOfRemindersInSectionsChecksum];
      v243 = [v242 membershipsOfRemindersInSectionsAsData];
      if (v243)
      {
        v244 = v243;
        v245 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v247 = v246;
      }

      else
      {
        v245 = 0;
        v247 = 0xF000000000000000;
      }

      v248 = v400;
      v249 = [v242 membershipsOfRemindersInSectionsAsData];
      v250 = &selRef_setPublicLinkLastModifiedDate_;
      if (v249)
      {
        v251 = v249;
        v252 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v254 = v253;

        sub_1000060C8(0, &qword_1009440A0, REMMemberships_ptr);
        static REMJSONRepresentable.fromJSONData(_:)();
        if (v248)
        {
          sub_10001BBA0(v252, v254);
          v85, v255, v256, v257, v258, v259, v260, v261;
          v242 = v405;
          goto LABEL_120;
        }

        sub_10001BBA0(v252, v254);
        v262 = v406;
        v242 = v405;
        v250 = &selRef_setPublicLinkLastModifiedDate_;
      }

      else
      {
        v262 = 0;
      }

      if (v85)
      {
        v286 = String._bridgeToObjectiveC()();
        v85, v287, v288, v289, v290, v291, v292, v293;
      }

      else
      {
        v286 = 0;
      }

      [v242 v250[215]];

      v294 = sub_1004E183C(v404, 0xD000000000000026, 0x80000001007F0660);
      if (v295 >> 60 == 15)
      {
        v296 = 0;
      }

      else
      {
        v297 = v294;
        v298 = v295;
        v296 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v297, v298);
      }

      [v242 setMembershipsOfRemindersInSectionsAsData:v296];

      if (!v262)
      {

        sub_100031A14(v245, v247);
        return;
      }

      v299 = v262;
      sub_1005EB85C(v299);
      if (!v248)
      {

        sub_100031A14(v245, v247);
        return;
      }

LABEL_120:
      if (qword_100935BD8 != -1)
      {
        swift_once();
      }

      v300 = type metadata accessor for Logger();
      sub_100006654(v300, qword_10093C940);
      v301 = v242;
      swift_errorRetain();
      v302 = Logger.logObject.getter();
      v303 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v302, v303))
      {
        v400 = v248;
        v304 = swift_slowAlloc();
        v406 = swift_slowAlloc();
        *v304 = 136446722;
        v305 = sub_1001424F8(v397);
        v307 = v306;
        v308 = sub_10000668C(v305, v306, &v406);
        v307, v309, v310, v311, v312, v313, v314, v315;
        *(v304 + 4) = v308;
        *(v304 + 12) = 2082;
        v316 = [v301 remObjectID];
        if (v316)
        {
          v317 = v316;
          v318 = [v316 description];

          v319 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v321 = v320;
        }

        else
        {
          v319 = 7104878;
          v321 = 0xE300000000000000;
        }

        v360 = sub_10000668C(v319, v321, &v406);
        v321, v361, v362, v363, v364, v365, v366, v367;
        *(v304 + 14) = v360;
        *(v304 + 22) = 2082;
        swift_getErrorValue();
        v368 = Error.rem_errorDescription.getter();
        v370 = v369;
        v371 = sub_10000668C(v368, v369, &v406);
        v370, v372, v373, v374, v375, v376, v377, v378;
        *(v304 + 24) = v371;
        _os_log_impl(&_mh_execute_header, v302, v303, "%{public}s#mergeData(from record: CKRecord, accountID:): Failed to update 'membershipsOfRemindersInSections'. {objectID: %{public}s, error: %{public}s}", v304, 0x20u);
        swift_arrayDestroy();
      }

      v379 = v403;
      [v301 setMembershipsOfRemindersInSectionsChecksum:v403];

      if (v247 >> 60 == 15)
      {
        v380 = 0;
      }

      else
      {
        sub_100029344(v245, v247);
        v380 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v245, v247);
      }

      [v301 setMembershipsOfRemindersInSectionsAsData:v380];
      sub_100031A14(v245, v247);

      return;
    case 5:
      v145 = [v404 encryptedValues];
      v146 = String._bridgeToObjectiveC()();
      v147 = [v145 objectForKeyedSubscript:v146];
      swift_unknownObjectRelease();

      v148 = v405;
      if (!v147)
      {
        goto LABEL_34;
      }

      v408 = v147;
      sub_1000F5104(&qword_100938860, &unk_1007A4830);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_34;
      }

      v149 = v407;
      UUID.init(uuidString:)();
      v149, v150, v151, v152, v153, v154, v155, v156;
      v158 = v402;
      v157 = v403;
      if ((*(v402 + 48))(v53, 1, v403) == 1)
      {
        sub_1000050A4(v53, &unk_100939D90, "8\n\r");
LABEL_34:
        [v148 setMostRecentTargetTemplateIdentifier:0];
      }

      else
      {
        (*(v158 + 32))(v21, v53, v157);
        v285 = UUID._bridgeToObjectiveC()().super.isa;
        [v148 setMostRecentTargetTemplateIdentifier:v285];

        (*(v158 + 8))(v21, v157);
      }

      return;
    case 6:
      v161 = [v404 encryptedValues];
      swift_getObjectType();
      CKRecordKeyValueSetting.subscript.getter();
      swift_unknownObjectRelease();
      v162 = v407;
      if (v407)
      {
        isa = String._bridgeToObjectiveC()();
        v162, v163, v164, v165, v166, v167, v168, v169;
      }

      else
      {
        isa = 0;
      }

      [v405 setName:isa];
      goto LABEL_131;
    case 7:
      v399 = v57;
      v400 = v56;
      v120 = v59;
      v121 = v405;
      v122 = [v405 smartListType];
      if (!v122)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v135 = v128;
        goto LABEL_69;
      }

      v123 = v122;
      v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v126 = v125;

      v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v135 = v128;
      if (!v126)
      {
LABEL_69:
        v135, v128, v129, v130, v131, v132, v133, v134;
        goto LABEL_70;
      }

      if (v124 == v127 && v126 == v128)
      {
        v126, v128, v127, v130, v131, v132, v133, v134;
        v135, v136, v137, v138, v139, v140, v141, v142;
        v144 = v401;
        v143 = v402;
        goto LABEL_105;
      }

      v263 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v126, v264, v265, v266, v267, v268, v269, v270;
      v135, v271, v272, v273, v274, v275, v276, v277;
      v144 = v401;
      v143 = v402;
      if (v263)
      {
LABEL_105:
        v278 = [v121 parentAccount];
        if (v278)
        {
          v279 = v143;
          v280 = v278;
          v281 = [v278 identifier];

          if (v281)
          {
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v143 = v279;
            v282 = *(v279 + 56);
            v282(v47, 0, 1, v403);
          }

          else
          {
            v143 = v279;
            v282 = *(v279 + 56);
            v282(v47, 1, 1, v403);
          }

          sub_100031B58(v47, v120, &unk_100939D90, "8\n\r");
        }

        else
        {
          v282 = *(v143 + 56);
          v282(v120, 1, 1, v403);
        }

        sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
        CKRecordKeyValueSetting.subscript.getter();
        v350 = v143;
        if (v406 == 2 || (v406 & 1) == 0)
        {
          v351 = 0;
        }

        else
        {
          v351 = [v121 account];
        }

        [v121 setParentAccount:v351];

        if (*v144 == 1)
        {
          v352 = &unk_100939D90;
          v353 = "8\n\r";
          v354 = v120;
        }

        else
        {
          v355 = [v121 parentAccount];
          if (v355)
          {
            v356 = v355;
            v357 = [v355 identifier];

            v358 = v395;
            if (v357)
            {
              static UUID._unconditionallyBridgeFromObjectiveC(_:)();

              v359 = 0;
            }

            else
            {
              v359 = 1;
            }

            v384 = v398;
            v381 = v350;
            v383 = v403;
            v282(v41, v359, 1, v403);
            v382 = v400;
            sub_100031B58(v41, v400, &unk_100939D90, "8\n\r");
          }

          else
          {
            v381 = v350;
            v382 = v400;
            v383 = v403;
            v282(v400, 1, 1, v403);
            v384 = v398;
            v358 = v395;
          }

          v385 = *(v384 + 48);
          sub_10018E470(v382, v358);
          sub_10018E470(v120, v358 + v385);
          v386 = *(v381 + 48);
          if (v386(v358, 1, v383) == 1)
          {
            sub_1000050A4(v382, &unk_100939D90, "8\n\r");
            sub_1000050A4(v120, &unk_100939D90, "8\n\r");
            v387 = v386(v358 + v385, 1, v383);
            v144 = v401;
            if (v387 == 1)
            {
              sub_1000050A4(v358, &unk_100939D90, "8\n\r");
              v388 = 0;
LABEL_172:
              *v144 = v388 & 1;
              return;
            }
          }

          else
          {
            v389 = v399;
            sub_10018E470(v358, v399);
            v390 = v386(v358 + v385, 1, v383);
            v144 = v401;
            if (v390 != 1)
            {
              v391 = v358 + v385;
              v392 = v396;
              (*(v381 + 32))(v396, v391, v383);
              sub_10018E4E0();
              v393 = dispatch thunk of static Equatable.== infix(_:_:)();
              v394 = *(v381 + 8);
              v394(v392, v383);
              sub_1000050A4(v400, &unk_100939D90, "8\n\r");
              sub_1000050A4(v120, &unk_100939D90, "8\n\r");
              v394(v389, v383);
              sub_1000050A4(v358, &unk_100939D90, "8\n\r");
              v388 = v393 ^ 1;
              goto LABEL_172;
            }

            sub_1000050A4(v400, &unk_100939D90, "8\n\r");
            sub_1000050A4(v120, &unk_100939D90, "8\n\r");
            (*(v381 + 8))(v389, v383);
          }

          v352 = &unk_10093A3D0;
          v353 = &qword_100795770;
          v354 = v358;
        }

        sub_1000050A4(v354, v352, v353);
        v388 = 1;
        goto LABEL_172;
      }

LABEL_70:
      v212 = [v121 parentAccount];
      if (!v212)
      {
        v404 = [v121 account];
        [v121 setParentAccount:v404];
        v212 = v404;
      }

      return;
    case 8:
      v400 = v58;
      v170 = [v405 parentList];
      if (v170)
      {
        v171 = v170;
        v172 = [v170 identifier];

        v173 = v403;
        if (v172)
        {
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v174 = *(v402 + 56);
          v174(v35, 0, 1, v173);
        }

        else
        {
          v174 = *(v402 + 56);
          v174(v35, 1, 1, v403);
        }

        sub_100031B58(v35, v62, &unk_100939D90, "8\n\r");
      }

      else
      {
        v174 = *(v402 + 56);
        v174(v62, 1, 1, v403);
      }

      v213 = v404;
      v214 = [v404 ic_isOwnedByCurrentUser];
      v215 = v405;
      v216 = v401;
      if ((v214 & 1) != 0 || (v217 = [v213 share]) == 0)
      {
        if (CKRecord.subscript.getter())
        {
          objc_opt_self();
          v218 = swift_dynamicCastObjCClass();
          if (!v218)
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v218 = 0;
        }

        v217 = sub_1004D6EF0(v218, v215);

        [v215 setParentList:v217];
      }

      if (*v216 == 1)
      {
        v219 = &unk_100939D90;
        v220 = "8\n\r";
        v221 = v62;
      }

      else
      {
        v222 = [v215 parentList];
        if (v222)
        {
          v223 = v222;
          v224 = [v222 identifier];

          v225 = v403;
          if (v224)
          {
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v226 = 0;
          }

          else
          {
            v226 = 1;
          }

          v284 = v399;
          v339 = v402;
          v174(v27, v226, 1, v225);
          v340 = v27;
          v283 = v339;
          sub_100031B58(v340, v31, &unk_100939D90, "8\n\r");
        }

        else
        {
          v283 = v402;
          v225 = v403;
          v174(v31, 1, 1, v403);
          v284 = v399;
        }

        v341 = *(v398 + 48);
        sub_10018E470(v31, v284);
        sub_10018E470(v62, v284 + v341);
        v342 = *(v283 + 48);
        if (v342(v284, 1, v225) == 1)
        {
          sub_1000050A4(v31, &unk_100939D90, "8\n\r");
          v343 = v399;
          sub_1000050A4(v62, &unk_100939D90, "8\n\r");
          if (v342(v343 + v341, 1, v225) == 1)
          {
            sub_1000050A4(v343, &unk_100939D90, "8\n\r");
            v344 = 0;
            goto LABEL_141;
          }
        }

        else
        {
          v345 = v400;
          sub_10018E470(v284, v400);
          if (v342(v284 + v341, 1, v225) != 1)
          {
            v346 = v284 + v341;
            v347 = v396;
            (*(v283 + 32))(v396, v346, v225);
            sub_10018E4E0();
            v348 = dispatch thunk of static Equatable.== infix(_:_:)();
            v349 = *(v283 + 8);
            v349(v347, v225);
            sub_1000050A4(v31, &unk_100939D90, "8\n\r");
            sub_1000050A4(v62, &unk_100939D90, "8\n\r");
            v349(v345, v225);
            sub_1000050A4(v284, &unk_100939D90, "8\n\r");
            v344 = v348 ^ 1;
            v216 = v401;
LABEL_141:
            *v216 = v344 & 1;
            return;
          }

          sub_1000050A4(v31, &unk_100939D90, "8\n\r");
          v343 = v399;
          sub_1000050A4(v62, &unk_100939D90, "8\n\r");
          (*(v283 + 8))(v345, v225);
          v216 = v401;
        }

        v219 = &unk_10093A3D0;
        v220 = &qword_100795770;
        v221 = v343;
      }

      sub_1000050A4(v221, v219, v220);
      v344 = 1;
      goto LABEL_141;
    case 9:
      v98 = sub_1004E183C(v404, 0xD000000000000018, 0x80000001007F05C0);
      v100 = v99;
      0x80000001007F05C0, v99, v101, v102, v103, v104, v105, v106;
      if (v100 >> 60 == 15)
      {
        v107 = 0;
      }

      else
      {
        v107 = Data._bridgeToObjectiveC()().super.isa;
        sub_100031A14(v98, v100);
      }

      [v405 setSectionIDsOrderingAsData:v107];

      _sSo14REMCDSmartListC7reminddE19sortChildrenObjectsyyF_0();
      return;
    case 0xA:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();
      [v405 setShowingLargeAttachments:v406 & 1];
      return;
    case 0xB:
      v72 = CKRecord.subscript.getter();
      v73 = v405;
      if (v72)
      {
        v408 = v72;
        sub_1000F5104(&qword_100938860, &unk_1007A4830);
        if (swift_dynamicCast())
        {
          v74 = v407;
          v75 = String._bridgeToObjectiveC()();
          v74, v76, v77, v78, v79, v80, v81, v82;
          [v73 setSmartListType:v75];
          goto LABEL_38;
        }
      }

      if (qword_100935BD8 != -1)
      {
        swift_once();
      }

      v175 = type metadata accessor for Logger();
      sub_100006654(v175, qword_10093C940);
      v176 = v73;
      isa = Logger.logObject.getter();
      v177 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(isa, v177))
      {
        goto LABEL_131;
      }

      v178 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      v406 = v179;
      *v178 = 136446210;
      v180 = [v176 ckIdentifier];
      if (v180)
      {
        v181 = v180;
        v182 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v184 = v183;
      }

      else
      {
        v182 = 7104878;
        v184 = 0xE300000000000000;
      }

      v322 = sub_10000668C(v182, v184, &v406);
      v184, v323, v324, v325, v326, v327, v328, v329;
      *(v178 + 4) = v322;
      v330 = "SmartList (ckIdentifier: %{public}s) does not have smart list type";
      goto LABEL_130;
    case 0xC:
      v88 = CKRecord.subscript.getter();
      v89 = v405;
      if (v88 && (v408 = v88, sub_1000F5104(&qword_100938860, &unk_1007A4830), (swift_dynamicCast() & 1) != 0))
      {
        v90 = v407;
        v75 = String._bridgeToObjectiveC()();
        v90, v91, v92, v93, v94, v95, v96, v97;
        [v89 setSortingStyle:v75];
LABEL_38:
      }

      else
      {
        if (qword_100935BD8 != -1)
        {
          swift_once();
        }

        v185 = type metadata accessor for Logger();
        sub_100006654(v185, qword_10093C940);
        v186 = v89;
        isa = Logger.logObject.getter();
        v177 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(isa, v177))
        {
          v178 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          v406 = v179;
          *v178 = 136446210;
          v187 = [v186 ckIdentifier];
          if (v187)
          {
            v188 = v187;
            v189 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v191 = v190;
          }

          else
          {
            v189 = 7104878;
            v191 = 0xE300000000000000;
          }

          v331 = sub_10000668C(v189, v191, &v406);
          v191, v332, v333, v334, v335, v336, v337, v338;
          *(v178 + 4) = v331;
          v330 = "SmartList (ckIdentifier: %{public}s) does not have a sorting style";
LABEL_130:
          _os_log_impl(&_mh_execute_header, isa, v177, v330, v178, 0xCu);
          sub_10000607C(v179);
        }

LABEL_131:
      }

      return;
    case 0xD:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      v159 = type metadata accessor for Date();
      CKRecordKeyValueSetting.subscript.getter();
      v160 = *(v159 - 8);
      v75 = 0;
      if ((*(v160 + 48))(v9, 1, v159) != 1)
      {
        v75 = Date._bridgeToObjectiveC()().super.isa;
        (*(v160 + 8))(v9, v159);
      }

      [v405 setPinnedDate:v75];
      goto LABEL_38;
    default:
      sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
      CKRecordKeyValueSetting.subscript.getter();
      v63 = v407;
      if (v407)
      {
        isa = String._bridgeToObjectiveC()();
        v63, v65, v66, v67, v68, v69, v70, v71;
      }

      else
      {
        isa = 0;
      }

      [v405 setBadgeEmblem:isa];
      goto LABEL_131;
  }
}

CKRecord_optional __swiftcall REMCDSmartList.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v2 - 8, v3);
  v157 = &v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v8 = &v141 - v7;
  v156 = type metadata accessor for UUID();
  v9 = *(v156 - 8);
  __chkstk_darwin(v156, v10);
  v145 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v16, v17).n128_u64[0];
  v20 = &v141 - v19;
  v162.receiver = v1;
  v162.super_class = REMCDSmartList;
  v21 = objc_msgSendSuper2(&v162, "newlyCreatedRecord", v18);
  v24 = v21;
  if (v21)
  {
    v153 = v20;
    v154 = v15;
    v25 = 0;
    v151 = "ShowingLargeAttachments";
    v152 = " account {error: ";
    v144 = "SectionIDsOrderingAsData";
    v149 = (v9 + 56);
    v150 = "IsLinkedToAccount";
    v148 = (v9 + 48);
    v142 = (v9 + 16);
    v141 = (v9 + 8);
    v146 = "indersInSectionsChecksum";
    v147 = "TemplateIdentifier";
    *&v23 = 136446210;
    v143 = v23;
    v26 = &selRef_persistentStoreForIdentifier_;
    v155 = v8;
    v158 = v21;
    while (2)
    {
      v28 = *(&off_1008DDB48 + v25++ + 32);
      switch(v28)
      {
        case 1:
          v61 = [v1 color];
          if (v61)
          {
            v62 = v61;
            v63 = sub_1001E18E8(&qword_100938CA0, REMColor_ptr);
            if (v64)
            {
              *(&v160 + 1) = &type metadata for String;
              v161 = &protocol witness table for String;
              *&v159 = v63;
              *(&v159 + 1) = v64;
            }

            else
            {
              v161 = 0;
              v159 = 0u;
              v160 = 0u;
            }

            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
            CKRecordKeyValueSetting.subscript.setter();
          }

          else
          {
            CKRecord.subscript.setter();
          }

          goto LABEL_82;
        case 2:
          v65 = [v24 encryptedValues];
          v66 = [v1 filterData];
          if (v66)
          {
            v67 = v66;
            v68 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v70 = v69;

            v26 = &selRef_persistentStoreForIdentifier_;
            *(&v160 + 1) = &type metadata for Data;
            v161 = &protocol witness table for Data;
            *&v159 = v68;
            *(&v159 + 1) = v70;
            v24 = v158;
          }

          else
          {
            v161 = 0;
            v159 = 0u;
            v160 = 0u;
          }

          goto LABEL_72;
        case 3:
          goto LABEL_5;
        case 4:
          v39 = [v1 membershipsOfRemindersInSectionsAsData];
          if (v39)
          {
            v40 = v39;
            v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v43 = v42;

            v44 = objc_opt_self();
            sub_100029344(v41, v43);
            isa = Data._bridgeToObjectiveC()().super.isa;
            v46 = [v44 assetForData:isa];

            v24 = v158;
            CKRecord.subscript.setter();
            sub_10001BBA0(v41, v43);
            sub_10001BBA0(v41, v43);
          }

          else
          {
            CKRecord.subscript.setter();
          }

          v114 = [v24 encryptedValues];
          v115 = [v1 membershipsOfRemindersInSectionsChecksum];
          if (v115)
          {
            v116 = v115;
            v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v119 = v118;

            *(&v160 + 1) = &type metadata for String;
            v161 = &protocol witness table for String;
            *&v159 = v117;
            *(&v159 + 1) = v119;
            v24 = v158;
          }

          else
          {
            v161 = 0;
            v159 = 0u;
            v160 = 0u;
          }

          v26 = &selRef_persistentStoreForIdentifier_;
          swift_getObjectType();
          goto LABEL_73;
        case 5:
          [v24 encryptedValues];
          v73 = [v1 mostRecentTargetTemplateIdentifier];
          if (v73)
          {
            v74 = v154;
            v75 = v73;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v76 = 0;
          }

          else
          {
            v76 = 1;
            v74 = v154;
          }

          v120 = v156;
          (*v149)(v74, v76, 1, v156);
          v121 = v74;
          v122 = v153;
          sub_100031B58(v121, v153, &unk_100939D90, "8\n\r");
          if ((*v148)(v122, 1, v120))
          {
            sub_1000050A4(v122, &unk_100939D90, "8\n\r");
            v159 = 0u;
            v160 = 0u;
            v161 = 0;
          }

          else
          {
            v123 = v145;
            (*v142)(v145, v122, v120);
            sub_1000050A4(v122, &unk_100939D90, "8\n\r");
            v124 = v120;
            v125 = UUID.uuidString.getter();
            v127 = v126;
            (*v141)(v123, v124);
            *(&v160 + 1) = &type metadata for String;
            v161 = &protocol witness table for String;
            *&v159 = v125;
            *(&v159 + 1) = v127;
          }

          swift_getObjectType();
          CKRecordKeyValueSetting.subscript.setter();
          swift_unknownObjectRelease();
          goto LABEL_82;
        case 6:
          v80 = [v24 encryptedValues];
          v81 = [v1 name];
          if (v81)
          {
            v82 = v81;
            v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v85 = v84;

            v26 = &selRef_persistentStoreForIdentifier_;
            *(&v160 + 1) = &type metadata for String;
            v161 = &protocol witness table for String;
            *&v159 = v83;
            *(&v159 + 1) = v85;
            v24 = v158;
          }

          else
          {
            v161 = 0;
            v159 = 0u;
            v160 = 0u;
          }

LABEL_72:
          swift_getObjectType();
LABEL_73:
          CKRecordKeyValueSetting.subscript.setter();
          swift_unknownObjectRelease();
          goto LABEL_5;
        case 7:
          if ([v1 isOwnedByCurrentUser])
          {
            v71 = [v1 parentAccount];
            v72 = v71;
            if (v71)
            {
            }

            *(&v160 + 1) = &type metadata for Bool;
            v161 = &protocol witness table for Bool;
            LOBYTE(v159) = v72 != 0;
            sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
LABEL_4:
            CKRecordKeyValueSetting.subscript.setter();
            goto LABEL_5;
          }

          if (qword_100935BD8 != -1)
          {
            swift_once();
          }

          v96 = type metadata accessor for Logger();
          sub_100006654(v96, qword_10093C940);
          v97 = v1;
          v98 = Logger.logObject.getter();
          v99 = static os_log_type_t.fault.getter();

          if (!os_log_type_enabled(v98, v99))
          {
            goto LABEL_48;
          }

          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          *&v159 = v101;
          *v100 = v143;
          v102 = [v97 remObjectID];
          if (!v102)
          {
            goto LABEL_76;
          }

          v103 = v102;
          v104 = [v102 description];

          v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v107 = v106;

          goto LABEL_77;
        case 8:
          if ([v1 isOwnedByCurrentUser])
          {
            v86 = [v1 parentList];
            if (!v86)
            {
LABEL_56:
              CKRecord.subscript.setter();
              goto LABEL_5;
            }

            v87 = v86;
            v88 = [v86 v26[78]];
            if (v88)
            {
              v89 = v88;
              v90 = [v24 v26[78]];
              v91 = [v90 zoneID];

              v92 = [v89 zoneID];
              v93 = [v91 isEqual:v92];

              if (v93)
              {
                v94 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v89];

                if (v94)
                {
                  v95 = v94;
                }
              }

              else
              {

                v94 = 0;
              }
            }

            else
            {
              v94 = 0;
            }

            CKRecord.subscript.setter();
          }

          else
          {
            if (qword_100935BD8 != -1)
            {
              swift_once();
            }

            v108 = type metadata accessor for Logger();
            sub_100006654(v108, qword_10093C940);
            v109 = v1;
            v98 = Logger.logObject.getter();
            v99 = static os_log_type_t.fault.getter();

            if (!os_log_type_enabled(v98, v99))
            {
LABEL_48:

              v8 = v155;
              goto LABEL_5;
            }

            v100 = swift_slowAlloc();
            v101 = swift_slowAlloc();
            *&v159 = v101;
            *v100 = v143;
            v110 = [v109 remObjectID];
            if (v110)
            {
              v111 = v110;
              v112 = [v110 description];

              v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v107 = v113;
            }

            else
            {
LABEL_76:
              v107 = 0xE300000000000000;
              v105 = 7104878;
            }

LABEL_77:
            v132 = sub_10000668C(v105, v107, &v159);
            v107, v133, v134, v135, v136, v137, v138, v139;
            *(v100 + 4) = v132;
            _os_log_impl(&_mh_execute_header, v98, v99, "REMCDSmartList is not expected to be shared, we shouldn't upload it for non-owner (smartListID: %{public}s)", v100, 0xCu);
            sub_10000607C(v101);

            v8 = v155;
            v24 = v158;
          }

LABEL_82:
          v26 = &selRef_persistentStoreForIdentifier_;
LABEL_5:
          if (v25 != 14)
          {
            continue;
          }

          goto LABEL_83;
        case 9:
          v52 = [v1 sectionIDsOrderingAsData];
          if (!v52)
          {
            goto LABEL_56;
          }

          v53 = v52;
          v54 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v56 = v55;

          v57 = objc_opt_self();
          sub_100029344(v54, v56);
          v58 = Data._bridgeToObjectiveC()().super.isa;
          v59 = [v57 assetForData:v58];

          CKRecord.subscript.setter();
          sub_10001BBA0(v54, v56);
          v60 = v54;
          v26 = &selRef_persistentStoreForIdentifier_;
          sub_10001BBA0(v60, v56);
          goto LABEL_5;
        case 10:
          v27 = [v1 showingLargeAttachments];
          *(&v160 + 1) = &type metadata for Bool;
          v161 = &protocol witness table for Bool;
          LOBYTE(v159) = v27;
          sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
          goto LABEL_4;
        case 11:
          v34 = [v1 smartListType];
          if (v34)
          {
            v35 = v34;
            v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v38 = v37;

            *(&v160 + 1) = &type metadata for String;
            v161 = &protocol witness table for String;
            *&v159 = v36;
            *(&v159 + 1) = v38;
            v26 = &selRef_persistentStoreForIdentifier_;
          }

          else
          {
            v161 = 0;
            v159 = 0u;
            v160 = 0u;
          }

          goto LABEL_60;
        case 12:
          v47 = [v1 sortingStyle];
          if (v47)
          {
            v48 = v47;
            v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v51 = v50;

            *(&v160 + 1) = &type metadata for String;
            v161 = &protocol witness table for String;
            *&v159 = v49;
            *(&v159 + 1) = v51;
            v26 = &selRef_persistentStoreForIdentifier_;
          }

          else
          {
            v161 = 0;
            v159 = 0u;
            v160 = 0u;
          }

          goto LABEL_60;
        case 13:
          v77 = [v1 pinnedDate];
          if (v77)
          {
            v78 = v77;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v79 = 0;
          }

          else
          {
            v79 = 1;
          }

          v128 = type metadata accessor for Date();
          v129 = *(v128 - 8);
          v130 = v157;
          (*(v129 + 56))(v157, v79, 1, v128);
          sub_100031B58(v130, v8, &unk_100938850, qword_100795AE0);
          if ((*(v129 + 48))(v8, 1, v128) == 1)
          {
            sub_1000050A4(v8, &unk_100938850, qword_100795AE0);
            v159 = 0u;
            v160 = 0u;
            v161 = 0;
          }

          else
          {
            *(&v160 + 1) = v128;
            v161 = &protocol witness table for Date;
            v131 = sub_1000103CC(&v159);
            (*(v129 + 32))(v131, v8, v128);
          }

          v26 = &selRef_persistentStoreForIdentifier_;
          sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
          goto LABEL_4;
        default:
          v29 = [v1 badgeEmblem];
          if (v29)
          {
            v30 = v29;
            v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v33 = v32;

            *(&v160 + 1) = &type metadata for String;
            v161 = &protocol witness table for String;
            *&v159 = v31;
            *(&v159 + 1) = v33;
            v26 = &selRef_persistentStoreForIdentifier_;
          }

          else
          {
            v161 = 0;
            v159 = 0u;
            v160 = 0u;
          }

LABEL_60:
          sub_1000060C8(0, &qword_10093A360, CKRecord_ptr);
          goto LABEL_4;
      }
    }
  }

LABEL_83:
  v140 = v24;
  result.value.super.isa = v140;
  result.is_nil = v22;
  return result;
}

void __swiftcall REMCDSmartList.parentCloud()(REMCDObject_optional *__return_ptr retstr)
{
  v2 = [v1 smartListType];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7._countAndFlagsBits = v4;
    v7._object = v6;
    v8 = REMSmartListType.init(stringValue:)(v7);
    if (v8)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v10;
      v21 = v13;
      if (v20 != v14 || v12 != v13)
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v12, v24, v25, v26, v27, v28, v29, v30;
        v21, v31, v32, v33, v34, v35, v36, v37;
        if (v23)
        {
LABEL_11:
          [v1 account];

          return;
        }

        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v39;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v38;
        v21 = v13;
        if (v40 != v14 || v12 != v13)
        {
          v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v12, v49, v50, v51, v52, v53, v54, v55;
          v21, v56, v57, v58, v59, v60, v61, v62;
          if (v48)
          {
            goto LABEL_11;
          }

          v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v12 = v64;
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v65 = v63;
          v21 = v13;
          if (v65 != v14 || v12 != v13)
          {
            v66 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v12, v67, v68, v69, v70, v71, v72, v73;
            v21, v74, v75, v76, v77, v78, v79, v80;
            if (v66)
            {
              goto LABEL_11;
            }

            v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v12 = v82;
            v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v83 = v81;
            v21 = v13;
            if (v83 != v14 || v12 != v13)
            {
              v84 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v12, v85, v86, v87, v88, v89, v90, v91;
              v21, v92, v93, v94, v95, v96, v97, v98;
              if (v84)
              {
                goto LABEL_11;
              }

              v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v12 = v100;
              v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v101 = v99;
              v21 = v13;
              if (v101 != v14 || v12 != v13)
              {
                v102 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v12, v103, v104, v105, v106, v107, v108, v109;
                v21, v110, v111, v112, v113, v114, v115, v116;
                if (v102)
                {
                  goto LABEL_11;
                }

                v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v12 = v118;
                v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v119 = v117;
                v21 = v13;
                if (v119 != v14 || v12 != v13)
                {
                  v120 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v12, v121, v122, v123, v124, v125, v126, v127;
                  v21, v128, v129, v130, v131, v132, v133, v134;
                  if ((v120 & 1) == 0)
                  {

                    return;
                  }

                  goto LABEL_11;
                }
              }
            }
          }
        }
      }

      v12, v13, v14, v15, v16, v17, v18, v19;
      v21, v41, v42, v43, v44, v45, v46, v47;
      goto LABEL_11;
    }
  }
}

Swift::Void __swiftcall REMCDSmartList.cleanUpAfterLocalObjectMerge()()
{
  if (qword_100935BD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093C940);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_10093C960, &unk_10079A418);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    v9 = sub_10000668C(v6, v7, &v18);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v3, "MERGE.LOCAL: Perhaps you should not try to call cleanUpAfterLocalObjectMerge() for %s.", v4, 0xCu);
    sub_10000607C(v5);
  }

  else
  {
  }
}

unint64_t sub_1001E6A64(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008DDB78, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

uint64_t _sSo14REMCDSmartListC7reminddE26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_100935BD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093C940);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_10093C960, &unk_10079A418);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _sSo14REMCDSmartListC7reminddE5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_100935BD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10093C940);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_10093C960, &unk_10079A418);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _s6FieldsOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}