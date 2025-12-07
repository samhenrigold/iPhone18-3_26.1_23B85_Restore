char *sub_1002E1B30(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005814(&unk_1003E8270, qword_10034A0D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

id sub_1002E1C48()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

id sub_1002E1D08(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      return 0;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    goto LABEL_8;
  }

  if (v4)
  {
    v5 = a1;
    v6 = a1 >> 32;
LABEL_8:
    if (v5 == v6)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if ((a2 & 0xFF000000000000) == 0)
  {
    return 0;
  }

LABEL_9:
  v7 = objc_allocWithZone(NSKeyedUnarchiver);
  sub_100015D6C(a1, a2);
  v8 = sub_1002E1C48();
  sub_100012324(a1, a2);
  v9 = [objc_allocWithZone(CKRecord) initWithCoder:v8];
  if (v9)
  {
    v10 = v9;

    return v10;
  }

  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAA58);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Unable to extract CKRecord from cloudKitMetadata", v15, 2u);
  }

  return 0;
}

uint64_t sub_1002E2014(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for Status(0);
  sub_1002E2358(&qword_1003D8440, type metadata accessor for Status, &unk_10033D870);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1002FABF8(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1002E20C0(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_1002E2358(&qword_1003DB0B8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
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
      sub_1002FB030(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_1002E225C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1002FAEE0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1002E22F4()
{
  result = qword_1003E81E0;
  if (!qword_1003E81E0)
  {
    sub_100008CBC(&qword_1003E81D8, &qword_10034A048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E81E0);
  }

  return result;
}

uint64_t sub_1002E2358(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1002E263C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CloudKitAPSBridge();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1002E26A4(unint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAA58);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Cloudkit received invalid public token from APS", v4, 2u);
    }
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100015D6C(a1, a2);
    sub_1003012C0(a1, a2);
    swift_unknownObjectRelease();

    sub_100015D58(a1, a2);
  }
}

void sub_1002E2820(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2 >> 60 == 15 || a4 == 0 || a6 == 0)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAA58);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Cloudkit received invalid topic token from APS", v10, 2u);
    }
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100015D6C(a1, a2);
    sub_1003014A8(a1, a2, a3, a4, a5, a6);
    sub_100015D58(a1, a2);

    swift_unknownObjectRelease();
  }
}

void sub_1002E29E4(void *a1)
{
  if (a1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = a1;
      sub_100300890(v2);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAA58);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Cloudkit received invalid APS message", v5, 2u);
    }
  }
}

unint64_t sub_1002E2B58()
{
  type metadata accessor for CloudKitContainerStore();
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *v1 = 0;
  v0[2] = v1;
  v0[3] = sub_100308644(_swiftEmptyArrayStorage);
  result = sub_100308658(_swiftEmptyArrayStorage);
  v0[4] = result;
  qword_1003FA9B8 = v0;
  return result;
}

id sub_1002E2BC4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  os_unfair_lock_lock(v6);
  swift_beginAccess();
  v7 = *(v2 + 24);
  if (*(v7 + 16))
  {

    v8 = sub_1003084DC(a1, a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      v11 = v10;
      goto LABEL_10;
    }
  }

  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAA58);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_10021145C(a1, a2, v27);
    _os_log_impl(&_mh_execute_header, v13, v14, "Creating CloudKit container named: %s", v15, 0xCu);
    sub_10000839C(v16);
  }

  v17 = [objc_allocWithZone(CKContainerOptions) init];
  [v17 setUseZoneWidePCS:1];
  v18 = String._bridgeToObjectiveC()();
  [v17 setApplicationBundleIdentifierOverrideForPushTopicGeneration:v18];

  [v17 setUseAnonymousToServerShareParticipants:1];
  v19 = objc_allocWithZone(CKContainerID);
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 initWithContainerIdentifier:v20 environment:1];

  v22 = [objc_allocWithZone(CKContainer) initWithContainerID:v21 options:v17];
  swift_beginAccess();
  v23 = v22;

  v11 = v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  sub_1002CEE00(v11, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v3 + 24) = v26;
  swift_endAccess();

LABEL_10:
  os_unfair_lock_unlock(v6);

  return v11;
}

objc_class *sub_1002E2EE0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  os_unfair_lock_lock(v6);
  swift_beginAccess();
  v7 = *(v2 + 32);
  if (*(v7 + 16))
  {

    v8 = sub_1003084DC(a1, a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      v11 = v10;
      goto LABEL_10;
    }
  }

  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAA58);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_10021145C(a1, a2, v27);
    _os_log_impl(&_mh_execute_header, v13, v14, "Creating CloudKit zone named: %s", v15, 0xCu);
    sub_10000839C(v16);
  }

  sub_1002E3E24();
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20._countAndFlagsBits = a1;
  v20._object = a2;
  v21._countAndFlagsBits = v17;
  v21._object = v19;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v20, v21).super.isa;
  swift_beginAccess();
  v23 = isa;

  v11 = v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v3 + 32);
  *(v3 + 32) = 0x8000000000000000;
  sub_1002CEE14(v11, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v3 + 32) = v26;
  swift_endAccess();
LABEL_10:
  os_unfair_lock_unlock(v6);

  return v11;
}

uint64_t sub_1002E316C()
{
  v0 = sub_100005814(&qword_1003E83B0, &qword_10034A1A8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - v2;
  sub_100005814(&qword_1003DF6A8, qword_10034A1B0);
  Dependency.init(dependencyId:config:)();
  Dependency.wrappedValue.getter();
  v4 = sub_1000080F8(v10, v10[3]);
  v5 = sub_10031A264(0xD000000000000014, 0x80000001003343F0, *v4);
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  result = sub_10000839C(v10);
  qword_1003FA9C0 = v5;
  *algn_1003FA9C8 = v7;
  return result;
}

uint64_t sub_1002E32B8()
{
  v0 = sub_100005814(&qword_1003E83B0, &qword_10034A1A8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - v2;
  sub_100005814(&qword_1003DF6A8, qword_10034A1B0);
  Dependency.init(dependencyId:config:)();
  Dependency.wrappedValue.getter();
  v4 = sub_1000080F8(v10, v10[3]);
  v5 = sub_10031A264(0xD00000000000001BLL, 0x80000001003343D0, *v4);
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  result = sub_10000839C(v10);
  qword_1003FA9D0 = v5;
  qword_1003FA9D8 = v7;
  return result;
}

uint64_t sub_1002E3404()
{
  v0 = sub_100005814(&qword_1003E83B0, &qword_10034A1A8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - v2;
  sub_100005814(&qword_1003DF6A8, qword_10034A1B0);
  Dependency.init(dependencyId:config:)();
  Dependency.wrappedValue.getter();
  v4 = sub_1000080F8(v10, v10[3]);
  v5 = sub_10031A264(0xD000000000000018, 0x8000000100334450, *v4);
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  result = sub_10000839C(v10);
  qword_1003FA9E0 = v5;
  *algn_1003FA9E8 = v7;
  return result;
}

uint64_t sub_1002E3550()
{
  v0 = sub_100005814(&qword_1003E83B0, &qword_10034A1A8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - v2;
  sub_100005814(&qword_1003DF6A8, qword_10034A1B0);
  Dependency.init(dependencyId:config:)();
  Dependency.wrappedValue.getter();
  v4 = sub_1000080F8(v10, v10[3]);
  v5 = sub_10031A264(0xD000000000000016, 0x8000000100334430, *v4);
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  result = sub_10000839C(v10);
  qword_1003FA9F0 = v5;
  *algn_1003FA9F8 = v7;
  return result;
}

uint64_t sub_1002E369C()
{
  v0 = sub_100005814(&qword_1003E83B0, &qword_10034A1A8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - v2;
  sub_100005814(&qword_1003DF6A8, qword_10034A1B0);
  Dependency.init(dependencyId:config:)();
  Dependency.wrappedValue.getter();
  v4 = sub_1000080F8(v10, v10[3]);
  v5 = sub_10031A264(0xD00000000000001DLL, 0x8000000100334410, *v4);
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  result = sub_10000839C(v10);
  qword_1003FAA00 = v5;
  qword_1003FAA08 = v7;
  return result;
}

uint64_t sub_1002E37E8()
{
  sub_100005814(&qword_1003E3908, &qword_100346C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10033E5C0;
  if (qword_1003D7EB8 != -1)
  {
    swift_once();
  }

  v1 = *algn_1003FA9C8;
  *(v0 + 32) = qword_1003FA9C0;
  *(v0 + 40) = v1;
  v2 = qword_1003D7EC0;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1003FA9D8;
  *(v0 + 48) = qword_1003FA9D0;
  *(v0 + 56) = v3;
  qword_1003FAA10 = v0;
}

uint64_t sub_1002E38D0()
{
  sub_100005814(&qword_1003E3908, &qword_100346C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10033E5C0;
  if (qword_1003D7ED0 != -1)
  {
    swift_once();
  }

  v1 = *algn_1003FA9F8;
  *(v0 + 32) = qword_1003FA9F0;
  *(v0 + 40) = v1;
  v2 = qword_1003D7ED8;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1003FAA08;
  *(v0 + 48) = qword_1003FAA00;
  *(v0 + 56) = v3;
  qword_1003FAA18 = v0;
}

uint64_t sub_1002E39B8()
{
  if (qword_1003D7EE0 != -1)
  {
    swift_once();
  }

  sub_10028BBC0(v0);
  if (qword_1003D7EE8 != -1)
  {
    swift_once();
  }

  result = sub_10028BBC0(v1);
  qword_1003FAA20 = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1002E3A7C()
{
  sub_100005814(&qword_1003E3908, &qword_100346C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10033E5C0;
  if (qword_1003D7EC0 != -1)
  {
    swift_once();
  }

  v1 = qword_1003FA9D8;
  *(v0 + 32) = qword_1003FA9D0;
  *(v0 + 40) = v1;
  v2 = qword_1003D7ED8;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1003FAA08;
  *(v0 + 48) = qword_1003FAA00;
  *(v0 + 56) = v3;
  qword_1003FAA28 = v0;
}

uint64_t sub_1002E3B64()
{
  result = sub_1002E3B84();
  qword_1003FAA30 = result;
  return result;
}

uint64_t sub_1002E3B84()
{
  v0 = sub_100308864(_swiftEmptyArrayStorage);
  if (qword_1003D7EF0 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v1 = qword_1003FAA20;
    v25 = *(qword_1003FAA20 + 16);
    if (!v25)
    {
      return v0;
    }

    v2 = 0;
    v24 = qword_1003FAA20;
    v3 = (qword_1003FAA20 + 40);
    while (v2 < *(v1 + 16))
    {
      v7 = *(v3 - 1);
      v6 = *v3;

      v8._countAndFlagsBits = v7;
      v8._object = v6;
      String.append(_:)(v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v0;
      v10 = sub_1003084DC(0xD00000000000001BLL, 0x8000000100334470);
      v12 = *(v0 + 16);
      v13 = (v11 & 1) == 0;
      v14 = __OFADD__(v12, v13);
      v15 = v12 + v13;
      if (v14)
      {
        goto LABEL_19;
      }

      v16 = v11;
      if (*(v0 + 24) < v15)
      {
        sub_1002CD910(v15, isUniquelyReferenced_nonNull_native);
        v10 = sub_1003084DC(0xD00000000000001BLL, 0x8000000100334470);
        if ((v16 & 1) != (v17 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_12:
        if (v16)
        {
          goto LABEL_4;
        }

        goto LABEL_13;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      v22 = v10;
      sub_1002D0AB8();
      v10 = v22;
      if (v16)
      {
LABEL_4:
        v4 = v10;

        v0 = v26;
        v5 = (v26[7] + 16 * v4);
        *v5 = v7;
        v5[1] = v6;

        goto LABEL_5;
      }

LABEL_13:
      v0 = v26;
      v26[(v10 >> 6) + 8] |= 1 << v10;
      v18 = (v26[6] + 16 * v10);
      *v18 = 0xD00000000000001BLL;
      v18[1] = 0x8000000100334470;
      v19 = (v26[7] + 16 * v10);
      *v19 = v7;
      v19[1] = v6;
      v20 = v26[2];
      v14 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v14)
      {
        goto LABEL_20;
      }

      v26[2] = v21;
LABEL_5:
      ++v2;
      v3 += 2;
      v1 = v24;
      if (v25 == v2)
      {
        return v0;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t sub_1002E3DC0()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1002E3E24()
{
  result = qword_1003DEBF0;
  if (!qword_1003DEBF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003DEBF0);
  }

  return result;
}

uint64_t sub_1002E3E70()
{
  v1 = v0;
  v2 = sub_100005814(&qword_1003E0410, qword_1003441B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - v4;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_100005814(&qword_1003D9A40, &unk_10033F180);
    Dependency.init(dependencyId:config:)();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAA40);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Sync delegate found nil. Obtaining delegate from dependency registry.", v9, 2u);
    }

    if ([objc_opt_self() isInternalBuild])
    {
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v36[0] = v34;
        *v12 = 136315394;
        HIDWORD(v33) = v11;
        Dependency.wrappedValue.getter();
        v13 = String.init<A>(describing:)();
        v15 = sub_10021145C(v13, v14, v36);
        v35 = v3;
        v16 = v15;

        *(v12 + 4) = v16;
        *(v12 + 12) = 2080;
        v17 = [objc_opt_self() callStackSymbols];
        static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v18 = Array.description.getter();
        v20 = v19;

        v21 = sub_10021145C(v18, v20, v36);
        v3 = v35;

        *(v12 + 14) = v21;
        _os_log_impl(&_mh_execute_header, v10, BYTE4(v33), "Sync delegate found nil - %s, call stack - %s", v12, 0x16u);
        swift_arrayDestroy();
      }
    }

    Dependency.wrappedValue.getter();
    sub_100005814(&qword_1003E84E0, &qword_10034A250);
    if (swift_dynamicCast())
    {
      v22 = v36[1];
    }

    else
    {
      v22 = 0;
    }

    *(v1 + 24) = v22;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36[0] = v26;
      *v25 = 136315138;
      Strong = swift_unknownObjectWeakLoadStrong();
      v28 = *(v1 + 24);
      v36[2] = Strong;
      v36[3] = v28;
      sub_100005814(&qword_1003E84E8, qword_10034A258);
      v29 = String.init<A>(describing:)();
      v31 = sub_10021145C(v29, v30, v36);

      *(v25 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "New sync delegete set: %s", v25, 0xCu);
      sub_10000839C(v26);
    }

    (*(v3 + 8))(v5, v2);
  }

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1002E4358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a3)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAA58);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003E1090, &qword_100344600);
      v11 = String.init<A>(describing:)();
      v13 = sub_10021145C(v11, v12, &v20);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error updating zone - %s", v9, 0xCu);
      sub_10000839C(v10);
    }

    v14 = a3;
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAA58);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Record zone is created.", v18, 2u);
    }

    v14 = 0;
  }

  return a4(v14);
}

void sub_1002E45AC(void *a1, NSObject *a2)
{
  v2 = sub_1002DF3E4(a1);
  v4 = v3;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA58);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136315138;
    v11 = v6;
    sub_100005814(&qword_1003E84D8, &qword_10034A248);
    v12 = String.init<A>(describing:)();
    v14 = sub_10021145C(v12, v13, &v27);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Client record is - %s", v9, 0xCu);
    sub_10000839C(v10);
  }

  v15 = v4;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136315138;
    v20 = v15;
    sub_100005814(&qword_1003E84D8, &qword_10034A248);
    v21 = String.init<A>(describing:)();
    v23 = sub_10021145C(v21, v22, &v27);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Server record is - %s", v18, 0xCu);
    sub_10000839C(v19);
  }

  if (v4)
  {
    if (sub_1002E3E70())
    {
      sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1003431D0;
      *(v24 + 32) = v15;
      v25 = v15;
      sub_1002EBDD8(a2, v24);

      swift_unknownObjectRelease();
    }
  }
}

void sub_1002E488C(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAA88);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = _convertErrorToNSError(_:)();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "CK accountInfo call returned an error %@. This will result in storing CK Records in non manatee container.", v8, 0xCu);
      sub_100083380(v9);
    }

    swift_errorRetain();
    a3(a2, 1);
  }

  else if (a1)
  {
    v24 = a1;
    if (([v24 supportsDeviceToDeviceEncryption] & 1) != 0 && objc_msgSend(v24, "hasValidCredentials"))
    {
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100008D04(v11, qword_1003FAA88);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Account and device are valid.", v14, 2u);
      }

      v15 = 1;
    }

    else
    {
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100008D04(v16, qword_1003FAA88);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Account and device are invalid.", v19, 2u);
      }

      v15 = 0;
    }

    a3(v15, 0);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA88);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "CK accountInfo call returned no error nor any account info.", v23, 2u);
    }

    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    a3(v25, 1);
  }
}

uint64_t sub_1002E4D2C()
{
  sub_1002E2B30(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1002E4D88(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = objc_allocWithZone(CKDatabaseSubscription);

  v8 = [v7 init];
  v9 = [objc_allocWithZone(CKNotificationInfo) init];
  [v9 setShouldSendContentAvailable:1];
  v10 = v8;
  [v10 setNotificationInfo:v9];
  sub_1002E52A8();
  sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
  v15.value._rawValue = swift_allocObject();
  *(v15.value._rawValue + 1) = xmmword_1003431D0;
  *(v15.value._rawValue + 4) = v10;
  v15.is_nil = 0;
  isa = CKModifySubscriptionsOperation.init(subscriptionsToSave:subscriptionIDsToDelete:)(v15, v16).super.super.super.super.isa;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = sub_1002E5268;
  v11[4] = v6;
  v12 = a3;
  CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.setter();
  sub_1002DE8D4();
  [v12 addOperation:isa];
}

uint64_t sub_1002E4F28(uint64_t a1, char a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a2)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAA58);
    v8 = a3;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32 = v12;
      *v11 = 136315138;
      [v8 scope];
      v13 = CKDatabaseScopeString();
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = sub_10021145C(v14, v16, &v32);

      *(v11 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to create CKSubscription for database: %s", v11, 0xCu);
      sub_10000839C(v12);
    }

    v18 = a1;
    v19 = 1;
  }

  else
  {
    if (qword_1003D7F30 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA70);
    v21 = a3;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136315138;
      [v21 scope];
      v26 = CKDatabaseScopeString();
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_10021145C(v27, v29, &v32);

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "Created CKSubscription for database: %s", v24, 0xCu);
      sub_10000839C(v25);
    }

    v18 = 1;
    v19 = 0;
  }

  return a4(v18, v19);
}

uint64_t sub_1002E5230()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002E5268(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

unint64_t sub_1002E52A8()
{
  result = qword_1003E84D0;
  if (!qword_1003E84D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E84D0);
  }

  return result;
}

uint64_t sub_1002E52F4()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1002E5344(uint64_t a1)
{
  if (a1)
  {
    swift_getErrorValue();
    swift_errorRetain();
    sub_1002DEA80(v4, v5);
    swift_getErrorValue();
    sub_100255F6C(-7085, v2, v3);

    sub_100005814(&qword_1003DABC0, &unk_100342840);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1002E542C(void *a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v73 = a5;
  v78 = a1;
  v79 = a2;
  v11 = a4 & 0x100;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v72 = a4;
  if (a4)
  {
    sub_1002DD4BC(v79, a3);
    v16 = sub_1002DE5D0(v15);
    (*(v13 + 8))(v15, v12);
  }

  v75 = v11;
  if (v11)
  {
    if (qword_1003D7F30 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAA70);
    v18 = v78;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = a6;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v18;
      *v23 = v18;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v19, v20, "shouldStartCloudSubscription is true. Creating subscriptions. Database: %@", v22, 0xCu);
      sub_100083380(v23);

      a6 = v21;
    }

    *(swift_allocObject() + 16) = v18;
    sub_100005814(&qword_1003E84F0, qword_10034A298);
    swift_allocObject();
    v25 = v18;
    Future.init(_:)();
  }

  v77 = swift_allocObject();
  *(v77 + 16) = _swiftEmptyArrayStorage;
  v76 = swift_allocObject();
  *(v76 + 16) = _swiftEmptyArrayStorage;
  v26 = [objc_allocWithZone(CKFetchDatabaseChangesOperation) initWithPreviousServerChangeToken:v16];
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = sub_100008D04(v27, qword_1003FAA70);

  v29 = v16;
  v70 = v28;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  v32 = os_log_type_enabled(v30, v31);
  v74 = a6;
  v71 = v29;
  if (v32)
  {
    v69 = v7;
    v33 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v33 = 136315394;
    *(v33 + 4) = sub_10021145C(v79, a3, &aBlock);
    *(v33 + 12) = 2080;
    if (v16)
    {
      v34 = [v29 data];
      v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = a3;
      v36 = v35;
      v38 = v37;

      v80 = sub_100166018(v36, v38);
      sub_100005814(&qword_1003DA1E0, &qword_100345E50);
      sub_10005A668();
      v39 = BidirectionalCollection<>.joined(separator:)();
      v41 = v40;
      v42 = v36;
      a3 = v68;
      sub_100012324(v42, v38);
    }

    else
    {
      v41 = 0xE300000000000000;
      v39 = 7104878;
    }

    v43 = sub_10021145C(v39, v41, &aBlock);

    *(v33 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v30, v31, "Old database (%s) change token: %s", v33, 0x16u);
    swift_arrayDestroy();

    v7 = v69;
  }

  else
  {
  }

  [v26 setFetchAllChanges:1];
  v44 = v26;
  v45 = [v44 configuration];
  v46 = BYTE1(v75);
  if (!v45)
  {
    __break(1u);
    goto LABEL_23;
  }

  v47 = v45;
  v48 = v7;
  [v45 setAutomaticallyRetryNetworkFailures:0];

  v49 = [v44 configuration];
  if (!v49)
  {
LABEL_23:
    __break(1u);
    return;
  }

  [v49 setDiscretionaryNetworkBehavior:0];

  v50 = v77;
  v85 = sub_1002E8E08;
  v86 = v77;
  aBlock = _NSConcreteStackBlock;
  v82 = 1107296256;
  v83 = sub_1002E8E04;
  v84 = &unk_1003B3BC8;
  v51 = _Block_copy(&aBlock);

  [v44 setRecordZoneWithIDChangedBlock:v51];
  _Block_release(v51);
  v85 = sub_1002E8AD0;
  v86 = v76;
  aBlock = _NSConcreteStackBlock;
  v82 = 1107296256;
  v83 = sub_1002E8E04;
  v84 = &unk_1003B3BF0;
  v52 = _Block_copy(&aBlock);

  [v44 setRecordZoneWithIDWasDeletedBlock:v52];
  _Block_release(v52);
  v53 = swift_allocObject();
  v55 = v78;
  v54 = v79;
  *(v53 + 16) = v78;
  *(v53 + 24) = v54;
  *(v53 + 32) = a3;
  *(v53 + 40) = v48;
  *(v53 + 48) = v72 & 1;
  *(v53 + 49) = v46;
  v56 = v74;
  *(v53 + 56) = v73;
  *(v53 + 64) = v56;
  *(v53 + 72) = v50;
  v85 = sub_1002E8B44;
  v86 = v53;
  aBlock = _NSConcreteStackBlock;
  v82 = 1107296256;
  v83 = sub_1002E7528;
  v84 = &unk_1003B3C40;
  v57 = _Block_copy(&aBlock);
  v58 = v55;

  [v44 setFetchDatabaseChangesCompletionBlock:v57];
  _Block_release(v57);

  v59 = v44;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    aBlock = v64;
    *v62 = 136315394;
    *(v62 + 4) = sub_10021145C(v79, a3, &aBlock);
    *(v62 + 12) = 2112;
    *(v62 + 14) = v59;
    *v63 = v59;
    v65 = v59;
    _os_log_impl(&_mh_execute_header, v60, v61, "Fetching database (%s) changes with operation: %@", v62, 0x16u);
    sub_100083380(v63);

    sub_10000839C(v64);
  }

  v66 = v71;
  [v58 addOperation:v59];
}

uint64_t sub_1002E5D24(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_1002E5DCC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, __int16 a8, void (*a9)(void), uint64_t a10, uint64_t a11)
{
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v13 = a9;
  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAA70);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v45 = v15;
  if (os_log_type_enabled(v16, v17))
  {
    v44 = v14;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v51[0] = v19;
    *v18 = 136315138;
    if (a1)
    {
      v20 = [v15 data];
      v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v50 = sub_100166018(v21, v23);
      sub_100005814(&qword_1003DA1E0, &qword_100345E50);
      sub_10005A668();
      v24 = BidirectionalCollection<>.joined(separator:)();
      v26 = v25;
      sub_100012324(v21, v23);
    }

    else
    {
      v26 = 0xE300000000000000;
      v24 = 7104878;
    }

    v36 = sub_10021145C(v24, v26, v51);

    *(v18 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v16, v17, "CK fetch database changes complete. token: %s", v18, 0xCu);
    sub_10000839C(v19);

    v14 = v44;
    v13 = a9;
    v27 = a10;
    if (!a3)
    {
      goto LABEL_16;
    }

LABEL_7:
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    sub_100008D04(v14, qword_1003FAA58);
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v51[0] = v31;
      *v30 = 136315138;
      v50 = a3;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v32 = String.init<A>(describing:)();
      v34 = v13;
      v35 = sub_10021145C(v32, v33, v51);

      *(v30 + 4) = v35;
      v13 = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Error during fetch database changes operation: %s", v30, 0xCu);
      sub_10000839C(v31);
    }

    v51[0] = a3;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v51[0] = v50;
      sub_1002DF38C();
      _BridgedStoredNSError.code.getter();
      if (v50 == 21)
      {
        sub_1002DD180(a5, a6, 0);
        sub_1002E542C(a4, a5, a6, a8 & 0x101, v13, v27);
      }
    }

    swift_errorRetain();
    v13(a3);
  }

  v27 = a10;
  if (a3)
  {
    goto LABEL_7;
  }

LABEL_16:
  swift_beginAccess();
  v37 = *(a11 + 16);
  if (v37 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_18;
    }
  }

  else if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    swift_beginAccess();
    v38 = a1;
    v39 = *(a11 + 16);
    v40 = swift_allocObject();
    v40[2] = a4;
    v40[3] = a5;
    v40[4] = a6;
    v40[5] = v38;
    v40[6] = v13;
    v40[7] = v27;
    v41 = v45;

    v42 = a4;

    sub_1002E6374(v42, v39, a8 & 0x101, sub_1002E8C24, v40);
  }

  sub_1002DD180(a5, a6, a1);
  return (v13)(0);
}

void sub_1002E6374(void *a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v139 = a5;
  v138 = a4;
  v155 = a3;
  v147 = a1;
  v146 = type metadata accessor for URL();
  v6 = *(v146 - 8);
  v7 = __chkstk_darwin(v146);
  v145 = v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v144 = v137 - v9;
  if (qword_1003D7F30 != -1)
  {
    goto LABEL_101;
  }

LABEL_2:
  v10 = type metadata accessor for Logger();
  v11 = sub_100008D04(v10, qword_1003FAA70);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  v14 = os_log_type_enabled(v12, v13);
  v156 = v11;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock._countAndFlagsBits = v16;
    *v15 = 136315138;
    sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
    v17 = Array.description.getter();
    v19 = sub_10021145C(v17, v18, &aBlock._countAndFlagsBits);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "CK ZoneIDs changed: %s", v15, 0xCu);
    sub_10000839C(v16);
  }

  if (a2 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (!v21)
    {
      return;
    }
  }

  else
  {
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      return;
    }
  }

  v22 = 0;
  v154 = a2 & 0xC000000000000001;
  v141 = a2 & 0xFFFFFFFFFFFFFF8;
  v140 = a2 + 32;
  v143 = (v6 + 8);
  v23 = &_swiftEmptyDictionarySingleton;
  *&v20 = 136315394;
  v142 = v20;
  v167 = xmmword_10033EB30;
  v153 = v21;
  v148 = a2;
  do
  {
    if (v154)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v22 >= *(v141 + 16))
      {
        goto LABEL_97;
      }

      v24 = *(v140 + 8 * v22);
    }

    v6 = v24;
    v25 = __OFADD__(v22, 1);
    v26 = v22 + 1;
    if (v25)
    {
      goto LABEL_93;
    }

    v27 = [objc_allocWithZone(CKFetchRecordZoneChangesConfiguration) init];
    v164 = v26;
    v165 = v27;
    if (v155)
    {
      type metadata accessor for LocalCache();
      v28 = v145;
      v29 = v23;
      sub_100307F40();
      v30 = v144;
      URL.appendingPathComponent(_:isDirectory:)();
      v31 = *v143;
      v32 = v146;
      (*v143)(v28, v146);
      sub_1002DDBBC();
      v33 = [v6 ownerName];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37._countAndFlagsBits = v34;
      v37._object = v36;
      URL.appendPathComponent(_:)(v37);

      v38 = [v6 zoneName];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      aBlock._countAndFlagsBits = v39;
      aBlock._object = v41;
      v42._countAndFlagsBits = 0x6E656B6F742ELL;
      v42._object = 0xE600000000000000;
      String.append(_:)(v42);
      URL.appendPathComponent(_:)(aBlock);
      v23 = v29;

      v43 = sub_1002DE5D0(v30);
      v44 = v30;
      a2 = v148;
      v21 = v153;
      v31(v44, v32);
      v45 = v165;
    }

    else
    {
      v45 = v27;
      v43 = 0;
    }

    [v45 setPreviousServerChangeToken:v43];
    if ((v23 & 0xC000000000000001) != 0)
    {
      if (v23 >= 0)
      {
        v23 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v46 = v6;
      v47 = v45;
      v48 = __CocoaDictionary.count.getter();
      if (__OFADD__(v48, 1))
      {
        goto LABEL_95;
      }

      v23 = sub_1002E8834(v23, v48 + 1);
    }

    else
    {
      v49 = v6;
      v50 = v45;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock._countAndFlagsBits = v23;
    v52 = sub_10031B1C8(v6);
    v54 = *(v23 + 16);
    v55 = (v53 & 1) == 0;
    v25 = __OFADD__(v54, v55);
    v56 = v54 + v55;
    if (v25)
    {
      goto LABEL_94;
    }

    v57 = v53;
    if (*(v23 + 24) >= v56)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v105 = v52;
        sub_1002D15AC();
        v52 = v105;
      }
    }

    else
    {
      sub_1002CEB98(v56, isUniquelyReferenced_nonNull_native);
      v52 = sub_10031B1C8(v6);
      if ((v57 & 1) != (v58 & 1))
      {
        goto LABEL_108;
      }
    }

    countAndFlagsBits = aBlock._countAndFlagsBits;
    v166 = aBlock._countAndFlagsBits;
    if (v57)
    {
      v60 = *(aBlock._countAndFlagsBits + 56);
      v61 = *(v60 + 8 * v52);
      *(v60 + 8 * v52) = v45;
    }

    else
    {
      *(aBlock._countAndFlagsBits + 8 * (v52 >> 6) + 64) |= 1 << v52;
      *(countAndFlagsBits[6] + 8 * v52) = v6;
      *(countAndFlagsBits[7] + 8 * v52) = v45;
      v62 = countAndFlagsBits[2];
      v25 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v25)
      {
        goto LABEL_96;
      }

      countAndFlagsBits[2] = v63;
    }

    v6 = v6;
    v64 = v43;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();

    v158 = v66;
    if (os_log_type_enabled(v65, v66))
    {
      v151 = v65;
      v157 = v64;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v172 = v68;
      *v67 = v142;
      v152 = v6;
      v69 = [v6 zoneName];
      v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v71;

      v73 = sub_10021145C(v70, v72, &v172);

      *(v67 + 4) = v73;
      *(v67 + 12) = 2080;
      v150 = v67;
      v149 = v68;
      if (v43)
      {
        v74 = [v157 data];
        v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v75;

        v77 = v76 >> 62;
        v163 = HIDWORD(v6);
        if ((v76 >> 62) > 1)
        {
          if (v77 == 2)
          {
            v83 = *(v6 + 16);
            v82 = *(v6 + 24);
            v78 = v82 - v83;
            if (__OFSUB__(v82, v83))
            {
              goto LABEL_99;
            }

            if (v78)
            {
              goto LABEL_43;
            }
          }
        }

        else if (v77)
        {
          v85 = v163 - v6;
          if (__OFSUB__(v163, v6))
          {
            goto LABEL_100;
          }

          v78 = v85;
          if (v85)
          {
LABEL_43:
            v171 = _swiftEmptyArrayStorage;
            sub_1002E0224(0, v78 & ~(v78 >> 63), 0);
            v162 = v6;
            if (v77)
            {
              if (v77 == 2)
              {
                v84 = *(v6 + 16);
              }

              else
              {
                v84 = v162;
              }
            }

            else
            {
              v84 = 0;
            }

            v170 = v84;
            if (v78 < 0)
            {
              goto LABEL_98;
            }

            a2 = 0;
            v160 = v6 >> 32;
            v161 = BYTE6(v76);
            v86 = v171;
            v159 = &aBlock + v170;
            v168 = v78;
            v169 = v76 >> 62;
            while (2)
            {
              if (a2 < v78)
              {
                v87 = a2 + 1;
                if (__OFADD__(a2, 1))
                {
                  goto LABEL_86;
                }

                v88 = v170 + a2;
                if (v77 != 2)
                {
                  if (v77 == 1)
                  {
                    if (v88 < v162 || v88 >= v160)
                    {
                      goto LABEL_89;
                    }

                    v89 = __DataStorage._bytes.getter();
                    if (!v89)
                    {
                      __break(1u);
LABEL_105:
                      __break(1u);
                    }

                    v90 = v89;
                    v91 = __DataStorage._offset.getter();
                    v92 = v88 - v91;
                    if (__OFSUB__(v88, v91))
                    {
                      goto LABEL_91;
                    }

LABEL_67:
                    v95 = *(v90 + v92);
                  }

                  else
                  {
                    if (v88 >= v161)
                    {
                      goto LABEL_88;
                    }

                    LOWORD(aBlock._countAndFlagsBits) = v6;
                    BYTE2(aBlock._countAndFlagsBits) = BYTE2(v6);
                    BYTE3(aBlock._countAndFlagsBits) = BYTE3(v6);
                    BYTE4(aBlock._countAndFlagsBits) = v163;
                    BYTE5(aBlock._countAndFlagsBits) = BYTE5(v6);
                    BYTE6(aBlock._countAndFlagsBits) = BYTE6(v6);
                    HIBYTE(aBlock._countAndFlagsBits) = HIBYTE(v6);
                    LOWORD(aBlock._object) = v76;
                    BYTE2(aBlock._object) = BYTE2(v76);
                    BYTE3(aBlock._object) = BYTE3(v76);
                    BYTE4(aBlock._object) = BYTE4(v76);
                    BYTE5(aBlock._object) = BYTE5(v76);
                    v95 = v159[a2];
                  }

                  sub_100005814(&unk_1003E7720, &qword_100346B60);
                  v96 = swift_allocObject();
                  *(v96 + 16) = v167;
                  *(v96 + 56) = &type metadata for UInt8;
                  *(v96 + 64) = &protocol witness table for UInt8;
                  *(v96 + 32) = v95;
                  v97 = String.init(format:_:)();
                  v99 = v98;
                  v171 = v86;
                  v77 = v86[2];
                  v100 = v86[3];
                  if (v77 >= v100 >> 1)
                  {
                    sub_1002E0224((v100 > 1), v77 + 1, 1);
                    v86 = v171;
                  }

                  v86[2] = v77 + 1;
                  v101 = &v86[2 * v77];
                  v101[4] = v97;
                  v101[5] = v99;
                  ++a2;
                  v78 = v168;
                  LODWORD(v77) = v169;
                  if (v87 == v168)
                  {
                    a2 = v148;
                    goto LABEL_74;
                  }

                  continue;
                }

                if (v88 < *(v6 + 16))
                {
                  goto LABEL_87;
                }

                if (v88 >= *(v6 + 24))
                {
                  goto LABEL_90;
                }

                v93 = __DataStorage._bytes.getter();
                if (!v93)
                {
                  goto LABEL_105;
                }

                v90 = v93;
                v94 = __DataStorage._offset.getter();
                v92 = v88 - v94;
                if (__OFSUB__(v88, v94))
                {
                  goto LABEL_92;
                }

                goto LABEL_67;
              }

              break;
            }

            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            swift_once();
            goto LABEL_2;
          }
        }

        else
        {
          v78 = BYTE6(v76);
          if (BYTE6(v76))
          {
            goto LABEL_43;
          }
        }

        v86 = _swiftEmptyArrayStorage;
LABEL_74:
        v81 = v158;
        aBlock._countAndFlagsBits = v86;
        sub_100005814(&qword_1003DA1E0, &qword_100345E50);
        sub_10005A668();
        v80 = BidirectionalCollection<>.joined(separator:)();
        v79 = v102;
        sub_100012324(v6, v76);

        v22 = v164;
      }

      else
      {
        v79 = 0xE300000000000000;
        v80 = 7104878;
        v22 = v164;
        v81 = v158;
      }

      v103 = sub_10021145C(v80, v79, &v172);

      v104 = v150;
      *(v150 + 14) = v103;
      v6 = v151;
      _os_log_impl(&_mh_execute_header, v151, v81, "Old change token for %s: %s", v104, 0x16u);
      swift_arrayDestroy();

      v21 = v153;
    }

    else
    {

      v22 = v164;
    }

    v23 = v166;
  }

  while (v22 != v21);
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    aBlock._countAndFlagsBits = v109;
    *v108 = 136315138;
    sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
    sub_100016034(0, &qword_1003E8500, CKFetchRecordZoneChangesConfiguration_ptr);
    sub_1002E8D60();
    v110 = v166;

    v111 = Dictionary.description.getter();
    v113 = v112;

    v114 = sub_10021145C(v111, v113, &aBlock._countAndFlagsBits);

    *(v108 + 4) = v114;
    _os_log_impl(&_mh_execute_header, v106, v107, "Fetching zones with optionsByRecordZoneID: %s", v108, 0xCu);
    sub_10000839C(v109);
  }

  else
  {

    v110 = v166;
  }

  v115 = swift_allocObject();
  *(v115 + 16) = _swiftEmptyArrayStorage;
  v116 = swift_allocObject();
  *(v116 + 16) = _swiftEmptyArrayStorage;
  sub_100016034(0, &qword_1003E84F8, CKFetchRecordZoneChangesOperation_ptr);

  v178.value._rawValue = a2;
  v178.is_nil = v110;
  v117 = CKFetchRecordZoneChangesOperation.init(recordZoneIDs:configurationsByRecordZoneID:)(v178, v179).super.super.super.super.isa;
  v118 = [(objc_class *)v117 configuration];
  if (!v118)
  {
    __break(1u);
    goto LABEL_107;
  }

  v119 = v118;
  [v118 setAutomaticallyRetryNetworkFailures:0];

  v120 = [(objc_class *)v117 configuration];
  if (!v120)
  {
LABEL_107:
    __break(1u);
LABEL_108:
    sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  [v120 setDiscretionaryNetworkBehavior:0];

  [(objc_class *)v117 setFetchAllChanges:1];
  v176 = sub_1002E8C6C;
  v177 = v116;
  aBlock._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock._object = 1107296256;
  v174 = sub_1002E8E04;
  v175 = &unk_1003B3D08;
  v121 = _Block_copy(&aBlock);

  [(objc_class *)v117 setRecordChangedBlock:v121];
  _Block_release(v121);

  CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.setter();
  v122 = swift_allocObject();
  *(v122 + 16) = v116;
  *(v122 + 24) = v115;
  v123 = v147;
  v124 = v137[1];
  *(v122 + 32) = v147;
  *(v122 + 40) = v124;
  v125 = BYTE1(v155);
  *(v122 + 48) = v155 & 1;
  *(v122 + 49) = v125 & 1;
  v176 = sub_1002E8CCC;
  v177 = v122;
  aBlock._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock._object = 1107296256;
  v174 = sub_1002E8484;
  v175 = &unk_1003B3D58;
  v126 = _Block_copy(&aBlock);

  v127 = v123;

  [(objc_class *)v117 setRecordZoneFetchCompletionBlock:v126];
  _Block_release(v126);
  v128 = swift_allocObject();
  v129 = v138;
  v128[2] = a2;
  v128[3] = v129;
  v128[4] = v139;
  v176 = sub_1002E8D54;
  v177 = v128;
  aBlock._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock._object = 1107296256;
  v174 = sub_10020E828;
  v175 = &unk_1003B3DA8;
  v130 = _Block_copy(&aBlock);

  [(objc_class *)v117 setFetchRecordZoneChangesCompletionBlock:v130];
  _Block_release(v130);
  v131 = v117;
  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    *v134 = 138412290;
    *(v134 + 4) = v131;
    *v135 = v131;
    v136 = v131;
    _os_log_impl(&_mh_execute_header, v132, v133, "Fetching record zone changes with operation: %@", v134, 0xCu);
    sub_100083380(v135);
  }

  [v127 addOperation:v131];
}

void sub_1002E7528(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_1002E75BC(void *a1, uint64_t a2)
{
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAA58);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v8 = 136315394;
    v9 = CKRecord.recordType.getter();
    v11 = sub_10021145C(v9, v10, v19);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = [v5 debugDescription];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10021145C(v13, v15, v19);

    *(v8 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Record changed: %s %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v17 = v5;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

void sub_1002E77FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1002E7864(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA58);

  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23[0] = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_10021145C(a2, a3, v23);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v9;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Record deleted: %s %@", v12, 0x16u);
    sub_100083380(v13);

    sub_10000839C(v14);
  }

  swift_beginAccess();
  v16 = *(a4 + 16);

  v17 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1003067A0(0, v16[2] + 1, 1, v16);
    *(a4 + 16) = v16;
  }

  v20 = v16[2];
  v19 = v16[3];
  if (v20 >= v19 >> 1)
  {
    v16 = sub_1003067A0((v19 > 1), v20 + 1, 1, v16);
  }

  v16[2] = v20 + 1;
  v21 = &v16[3 * v20];
  v21[4] = v17;
  v21[5] = a2;
  v21[6] = a3;
  *(a4 + 16) = v16;
  return swift_endAccess();
}

void sub_1002E7ABC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, NSObject *a9, uint64_t a10, __int16 a11)
{
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v16 = a9;
  v64 = type metadata accessor for Logger();
  sub_100008D04(v64, qword_1003FAA70);
  v17 = a2;
  swift_retain_n();
  swift_retain_n();
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  v63 = a2;
  if (os_log_type_enabled(v19, v20))
  {
    v61 = v20;
    v62 = a6;
    v21 = swift_slowAlloc();
    v66[0] = swift_slowAlloc();
    *v21 = 136315906;
    v22 = [v18 zoneName];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = sub_10021145C(v23, v25, v66);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    if (a2)
    {
      v27 = [v17 data];
      v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v65 = sub_100166018(v28, v30);
      sub_100005814(&qword_1003DA1E0, &qword_100345E50);
      sub_10005A668();
      v31 = BidirectionalCollection<>.joined(separator:)();
      v33 = v32;
      sub_100012324(v28, v30);
    }

    else
    {
      v33 = 0xE300000000000000;
      v31 = 7104878;
    }

    v49 = sub_10021145C(v31, v33, v66);

    *(v21 + 14) = v49;
    *(v21 + 22) = 2048;
    swift_beginAccess();
    v50 = *(a7 + 16);
    a6 = v62;
    if (v50 >> 62)
    {
      v51 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v21 + 24) = v51;

    *(v21 + 32) = 2048;
    swift_beginAccess();
    v52 = *(*(a8 + 16) + 16);

    *(v21 + 34) = v52;

    _os_log_impl(&_mh_execute_header, v19, v61, "record zone fetch complete. Zone: %s, Token: %s, Changed: %ld, Deleted: %ld", v21, 0x2Au);
    swift_arrayDestroy();

    v16 = a9;
    if (!v62)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (!a6)
    {
LABEL_21:
      if (([objc_opt_self() shouldSkipRecoveryInfoRecordStorage] & 1) == 0)
      {
        if (sub_1002E3E70())
        {
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            _os_log_impl(&_mh_execute_header, v53, v54, "Sync delegate is not nil. Saving/deleting records on disk.", v55, 2u);
          }

          swift_beginAccess();
          v56 = *(a7 + 16);

          sub_1002EBDD8(v16, v56);

          swift_beginAccess();
          v57 = *(a8 + 16);

          sub_1002ED6CC(v16, v57);

          sub_1002DD65C(v18, v63);
          swift_unknownObjectRelease();
        }

        else
        {
          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            *v60 = 0;
            _os_log_impl(&_mh_execute_header, v58, v59, "Sync delegate is nil", v60, 2u);
          }
        }
      }

      swift_beginAccess();
      *(a7 + 16) = _swiftEmptyArrayStorage;

      swift_beginAccess();
      *(a8 + 16) = _swiftEmptyArrayStorage;

      return;
    }
  }

  swift_errorRetain();
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  sub_100008D04(v64, qword_1003FAA58);
  swift_errorRetain();
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = v18;
    v38 = swift_slowAlloc();
    *v36 = 138412290;
    v39 = _convertErrorToNSError(_:)();
    *(v36 + 4) = v39;
    *v38 = v39;
    _os_log_impl(&_mh_execute_header, v34, v35, "Error fetching record zone: %@", v36, 0xCu);
    sub_100083380(v38);
    v18 = v37;
  }

  v66[0] = a6;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v66[0] = v65;
    sub_1002DF38C();
    _BridgedStoredNSError.code.getter();
    if (v65 == 21)
    {
      v40 = v18;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        *(v43 + 4) = v40;
        *v44 = v40;
        v45 = v40;
        _os_log_impl(&_mh_execute_header, v41, v42, "Clearing change token for zone %@ due to error, and pulling again", v43, 0xCu);
        sub_100083380(v44);
      }

      sub_1002DD65C(v40, 0);
      sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1003431D0;
      *(v46 + 32) = v40;
      v47 = swift_allocObject();
      *(v47 + 16) = v40;
      v48 = v40;
      sub_1002E6374(v16, v46, a11 & 0x101, sub_1002E8DC8, v47);
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_1002E8348(uint64_t a1, void *a2)
{
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAA70);
  v4 = a2;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v4;
    *v7 = v4;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Completed zone pull of %@ with nil change token", v6, 0xCu);
    sub_100083380(v7);
  }
}

uint64_t sub_1002E8484(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v8 = a4;
  v11 = *(a1 + 32);
  if (a4)
  {

    v12 = a2;
    v13 = a3;
    v14 = v8;
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {

    v17 = a2;
    v18 = a3;
    v16 = 0xF000000000000000;
  }

  v19 = a6;
  v11(a2, a3, v8, v16, a5, a6);

  sub_100015D58(v8, v16);
}

uint64_t sub_1002E8570(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA70);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
    v10 = Array.description.getter();
    v12 = sub_10021145C(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetch record zone changes complete. ZoneIDs: %s", v8, 0xCu);
    sub_10000839C(v9);
  }

  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    sub_100008D04(v5, qword_1003FAA58);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = _convertErrorToNSError(_:)();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "Error fetching record zone changes: %@", v15, 0xCu);
      sub_100083380(v16);
    }

    else
    {
    }
  }

  return a3(a1);
}

Swift::Int sub_1002E8834(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100005814(&qword_1003E7788, &qword_100349928);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100016034(0, &qword_1003DEBF0, CKRecordZoneID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100016034(0, &qword_1003E8500, CKFetchRecordZoneChangesConfiguration_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1002CEB98(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_1002E8A80()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002E8AB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002E8AEC()
{

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_1002E8B44(void *a1, uint64_t a2, void *a3)
{
  if (*(v3 + 49))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_1002E5DCC(a1, a2, a3, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), v4 | *(v3 + 48), *(v3 + 56), *(v3 + 64), *(v3 + 72));
}

uint64_t sub_1002E8B94()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1002E8BD4()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1002E8C24(uint64_t a1)
{
  v2 = *(v1 + 48);
  if (!a1)
  {
    sub_1002DD180(*(v1 + 24), *(v1 + 32), *(v1 + 40));
  }

  return v2(0);
}

uint64_t sub_1002E8C7C()
{

  return _swift_deallocObject(v0, 50);
}

void sub_1002E8CCC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(v6 + 49))
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  sub_1002E7ABC(a1, a2, a3, a4, a5, a6, *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7 | *(v6 + 48));
}

uint64_t sub_1002E8D14()
{

  return _swift_deallocObject(v0, 40);
}

unint64_t sub_1002E8D60()
{
  result = qword_1003E8508;
  if (!qword_1003E8508)
  {
    sub_100016034(255, &qword_1003DEBF0, CKRecordZoneID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E8508);
  }

  return result;
}

uint64_t sub_1002E8E0C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v43 = a3;
  v44 = a4;
  v38 = a1;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v42 = *(v7 - 8);
  __chkstk_darwin(v7);
  v41 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v39);
  v40 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v37 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012D04(v5 + 16, v48, &qword_1003DF6C8, qword_1003436E0);
  if (v48[3])
  {
    sub_100005814(&qword_1003E86F0, &unk_10034A430);
    type metadata accessor for CloudKitStore();
    if (swift_dynamicCast())
    {
      *(v47 + 24) = &off_1003B3DF8;
      swift_unknownObjectWeakAssign();
    }
  }

  else
  {
    sub_100008D3C(v48, &qword_1003DF6C8, qword_1003436E0);
  }

  if (qword_1003D7F00 != -1)
  {
    swift_once();
  }

  v12 = qword_1003FAA30;
  v13 = *(qword_1003FAA30 + 16);
  v45 = a2;
  if (v13)
  {
    v36 = v7;
    v46 = sub_100306D64(v13, 0);
    v14 = sub_1002FD4E0(v48, v46 + 4, v13, v12);
    v15 = v48[0];

    result = sub_10005A1DC(v15);
    if (v14 != v13)
    {
      __break(1u);
      return result;
    }

    v7 = v36;
  }

  else
  {
    v46 = _swiftEmptyArrayStorage;
  }

  sub_100071C74();
  static DispatchQoS.unspecified.getter();
  v48[0] = _swiftEmptyArrayStorage;
  sub_1002FF768(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v42 + 104))(v41, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v18 = objc_allocWithZone(APSConnection);

  v19 = String._bridgeToObjectiveC()();

  v20 = String._bridgeToObjectiveC()();
  v21 = [v18 initWithEnvironmentName:v19 namedDelegatePort:v20 queue:v17];

  v22 = *(v5 + 128);
  *(v5 + 128) = v21;
  v23 = v21;

  v24 = v46;
  if (v23)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v23 _setEnabledTopics:isa];
  }

  v26 = *(v5 + 128);
  v27 = v45;
  if (v26)
  {
    [v26 setDelegate:*(v5 + 104)];
  }

  v28 = v24[2];
  if (v28)
  {
    v29 = v24 + 5;
    do
    {
      v30 = *(v5 + 128);
      if (v30)
      {

        v31 = v30;
        v32 = String._bridgeToObjectiveC()();

        [v31 requestTokenForTopic:v32 identifier:0];
      }

      v29 += 2;
      --v28;
    }

    while (v28);
  }

  v33 = swift_allocObject();
  *(v33 + 16) = v43;
  *(v33 + 24) = v44;

  if (v27)
  {
    v34 = 257;
  }

  else
  {
    v34 = 1;
  }

  sub_1002E93B4(v38, v34, sub_1002FF724, v33);
}

uint64_t sub_1002E93B4(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v23 = a1;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;

  Date.init()();
  v24 = *(v5 + 168);
  (*(v10 + 16))(v13, v15, v9);
  v17 = (*(v10 + 80) + 50) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  *(v18 + 24) = sub_1002FF0DC;
  v19 = v23;
  *(v18 + 32) = v16;
  *(v18 + 40) = v19;
  *(v18 + 48) = a2 & 1;
  *(v18 + 49) = HIBYTE(a2) & 1;
  (*(v10 + 32))(v18 + v17, v13, v9);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1002FF1EC;
  *(v20 + 24) = v18;
  aBlock[4] = sub_100071DCC;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10030F718;
  aBlock[3] = &unk_1003B4530;
  v21 = _Block_copy(aBlock);

  dispatch_sync(v24, v21);
  _Block_release(v21);

  (*(v10 + 8))(v15, v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002E9690(char a1, uint64_t (*a2)(void), uint64_t a3, void *a4, uint64_t a5, const char *a6, uint64_t a7)
{
  if (*a4 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, a5);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, a6, v14, 8u);
  }

  return a2(a1 & 1);
}

void sub_1002E9790(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6)
{
  v59 = a6;
  LODWORD(v56) = a5;
  v55 = a4;
  v54 = type metadata accessor for Date();
  v9 = *(v54 - 8);
  __chkstk_darwin(v54);
  v57 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v10;
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_100008D04(v11, qword_1003FAA70);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "🎒 pullCloudUpdates: Queuing completion", v15, 2u);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  swift_beginAccess();
  v17 = a1[17];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a1[17] = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_1003068E8(0, v17[2] + 1, 1, v17);
    a1[17] = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_1003068E8((v19 > 1), v20 + 1, 1, v17);
  }

  v17[2] = v20 + 1;
  v21 = &v17[2 * v20];
  v21[4] = sub_1002FF27C;
  v21[5] = v16;
  a1[17] = v17;
  swift_endAccess();
  v22 = a1[19];
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  v25 = os_log_type_enabled(v23, v24);
  if (v22)
  {
    if (v25)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "😎 pullCloudUpdates: Pull underway. NOT Configuring Operations. Returning.", v26, 2u);
    }
  }

  else
  {
    v53 = v12;
    if (v25)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "🎒 pullCloudUpdates: Configuring Operations", v27, 2u);
    }

    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    v52 = *(v9 + 16);
    v29 = v57;
    v30 = v54;
    v52(v57, v59, v54);
    v31 = *(v9 + 80);
    v32 = swift_allocObject();
    v33 = v55;
    *(v32 + 16) = a1;
    *(v32 + 24) = v33;
    v34 = BYTE1(v56);
    *(v32 + 32) = v56 & 1;
    *(v32 + 33) = v34 & 1;
    *(v32 + 40) = v28;
    v56 = *(v9 + 32);
    v35 = v29;
    v56(v32 + ((v31 + 48) & ~v31), v29, v30);
    v36 = type metadata accessor for AsyncOperation();
    v37 = objc_allocWithZone(v36);
    v37[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
    v38 = &v37[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
    *v38 = sub_1002FF2BC;
    v38[1] = v32;
    v61.receiver = v37;
    v61.super_class = v36;

    v55 = objc_msgSendSuper2(&v61, "init");
    v52(v35, v59, v30);
    v39 = swift_allocObject();
    *(v39 + 16) = a1;
    *(v39 + 24) = v28;
    v56(v39 + ((v31 + 32) & ~v31), v35, v30);
    v40 = objc_allocWithZone(v36);
    v40[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
    v41 = &v40[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
    *v41 = sub_1002FF428;
    v41[1] = v39;
    v60.receiver = v40;
    v60.super_class = v36;

    v42 = objc_msgSendSuper2(&v60, "init");
    v43 = v55;
    [v42 addDependency:v55];
    v44 = a1[20];
    a1[20] = v42;
    v23 = v42;

    v45 = a1[19];
    a1[19] = v43;
    v46 = v43;

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "🟢 pullCloudUpdates: Starting Pull & Comp Ops", v49, 2u);
    }

    v50 = a1[18];
    [v50 addOperation:v23];
    [v50 addOperation:v46];
  }
}

uint64_t sub_1002E9D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  v18[0] = a4;
  v18[1] = a3;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  (*(v13 + 16))(v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v12);
  v15 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a6;
  *(v16 + 3) = a1;
  *(v16 + 4) = a2;
  (*(v13 + 32))(&v16[v15], v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);

  sub_1002EA698(v18[0], a5 & 0x101, sub_1002FF6AC, v16);
}

void sub_1002E9EEC(char a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = swift_beginAccess();
  *(a2 + 16) = a1;
  a3(v16);
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAA70);
  (*(v10 + 16))(v15, a5, v9);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v22 = v21;
    v23 = *(v10 + 8);
    v23(v13, v9);
    v23(v15, v9);
    *(v20 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v18, v19, "✅ pullCloudUpdates: PullOp Complete ⏰ %f", v20, 0xCu);
  }

  else
  {

    (*(v10 + 8))(v15, v9);
  }
}

uint64_t sub_1002EA148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = a4 + 16;
  v20 = *(a3 + 168);
  (*(v11 + 16))(&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v10);
  v14 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a3;
  *(v15 + 3) = v13;
  *(v15 + 4) = a1;
  *(v15 + 5) = a2;
  (*(v11 + 32))(&v15[v14], &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1002FF578;
  *(v16 + 24) = v15;
  aBlock[4] = sub_1002ACED0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10030F718;
  aBlock[3] = &unk_1003B4648;
  v17 = _Block_copy(aBlock);

  dispatch_sync(v20, v17);
  _Block_release(v17);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void sub_1002EA390(void *a1, char *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v30 = a3;
  v31 = a5;
  v29[1] = a4;
  v32 = type metadata accessor for Date();
  v7 = *(v32 - 8);
  v8 = __chkstk_darwin(v32);
  v29[0] = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v29 - v10;
  swift_beginAccess();
  v12 = a1[17];
  v13 = *(v12 + 16);

  swift_beginAccess();
  if (v13)
  {
    v14 = 0;
    v15 = v12 + 40;
    while (v14 < *(v12 + 16))
    {
      ++v14;
      v16 = *(v15 - 8);
      v33 = *a2;

      v16(&v33);

      v15 += 16;
      if (v13 == v14)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    a1[17] = _swiftEmptyArrayStorage;

    v30(v17);
    v18 = a1[20];
    a1[20] = 0;

    v19 = a1[19];
    a1[19] = 0;

    if (qword_1003D7F30 == -1)
    {
      goto LABEL_6;
    }
  }

  swift_once();
LABEL_6:
  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAA70);
  v21 = v32;
  (*(v7 + 16))(v11, v31, v32);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    v25 = v29[0];
    Date.init()();
    Date.timeIntervalSince(_:)();
    v27 = v26;
    v28 = *(v7 + 8);
    v28(v25, v21);
    v28(v11, v21);
    *(v24 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "✅ pullCloudUpdates: CompOp Complete ⏰ %f", v24, 0xCu);
  }

  else
  {

    (*(v7 + 8))(v11, v21);
  }
}

uint64_t sub_1002EA698(char a1, int a2, uint64_t (*a3)(void), uint64_t a4)
{
  v80 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v77 = *(v11 - 8);
  v78 = v11;
  __chkstk_darwin(v11);
  v76 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v84);
  v81 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v79 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v73 = *(v17 - 8);
  v74 = v17;
  __chkstk_darwin(v17);
  v75 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = _swiftEmptyArrayStorage;
  if (a1)
  {
    if (qword_1003D7EE0 != -1)
    {
      swift_once();
    }

    sub_10028BBC0(v19);
  }

  if ((a1 & 2) != 0)
  {
    if (qword_1003D7EE8 != -1)
    {
      swift_once();
    }

    sub_10028BBC0(v20);
  }

  v21 = *(aBlock[0] + 16);
  if (v21)
  {
    v66 = a3;
    v67 = v15;
    v68 = a4;
    v69 = v14;
    v70 = v10;
    v71 = v8;
    v72 = v7;
    v82 = aBlock[0];
    v22 = (aBlock[0] + 40);
    v23 = _swiftEmptyArrayStorage;
    do
    {
      v25 = *(v22 - 1);
      v24 = *v22;
      v26 = qword_1003D7EB0;
      swift_bridgeObjectRetain_n();
      if (v26 != -1)
      {
        swift_once();
      }

      v27 = sub_1002E2BC4(v25, v24);
      v28 = [v27 privateCloudDatabase];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_100306A40(0, v23[2] + 1, 1, v23);
      }

      v30 = v23[2];
      v29 = v23[3];
      if (v30 >= v29 >> 1)
      {
        v23 = sub_100306A40((v29 > 1), v30 + 1, 1, v23);
      }

      v23[2] = v30 + 1;
      v31 = &v23[3 * v30];
      v31[4] = v25;
      v31[5] = v24;
      v31[6] = v28;
      v32 = sub_1002E2BC4(v25, v24);
      v33 = [v32 sharedCloudDatabase];

      v35 = v23[2];
      v34 = v23[3];
      if (v35 >= v34 >> 1)
      {
        v23 = sub_100306A40((v34 > 1), v35 + 1, 1, v23);
      }

      v23[2] = v35 + 1;
      v36 = &v23[3 * v35];
      v36[4] = v25;
      v36[5] = v24;
      v36[6] = v33;
      v22 += 2;
      --v21;
    }

    while (v21);

    v37 = dispatch_group_create();
    v82 = swift_allocObject();
    *(v82 + 16) = &_swiftEmptyDictionarySingleton;
    v38 = sub_100071C74();
    (*(v73 + 104))(v75, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v74);
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1002FF768(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_100005814(&unk_1003E6290, &qword_10033F570);
    sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v75 = v38;
    v81 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v39 = v23[2];
    if (v39)
    {
      v40 = (v23 + 6);
      v41 = v81;
      do
      {
        v47 = *(v40 - 2);
        v48 = *(v40 - 1);
        v49 = *v40;

        v50 = v49;
        dispatch_group_enter(v37);
        sub_100012D04(v83 + 16, aBlock, &qword_1003DF6C8, qword_1003436E0);
        if (v87)
        {
          sub_1000080F8(aBlock, v87);
          v42 = swift_allocObject();
          v42[2] = v47;
          v42[3] = v48;
          v84 = v47;
          v43 = v37;
          v44 = v82;
          v42[4] = v41;
          v42[5] = v44;
          v42[6] = v43;

          v45 = v41;
          v37 = v43;

          v46 = v43;
          sub_1002E542C(v50, v84, v48, v80 & 0x101, sub_1002FEFF4, v42);

          sub_10000839C(aBlock);
        }

        else
        {

          sub_100008D3C(aBlock, &qword_1003DF6C8, qword_1003436E0);
        }

        v40 += 3;
        --v39;
      }

      while (v39);
    }

    v52 = v76;
    v51 = v77;
    v53 = v78;
    (*(v77 + 104))(v76, enum case for DispatchQoS.QoSClass.default(_:), v78);
    v84 = static OS_dispatch_queue.global(qos:)();
    (*(v51 + 8))(v52, v53);
    v54 = swift_allocObject();
    v55 = v81;
    v56 = v82;
    v54[2] = v81;
    v54[3] = v56;
    v57 = v68;
    v54[4] = v66;
    v54[5] = v57;
    v88 = sub_1002FEF98;
    v89 = v54;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    v87 = &unk_1003B43C8;
    v58 = _Block_copy(aBlock);
    v59 = v55;

    v60 = v79;
    static DispatchQoS.unspecified.getter();
    v85 = _swiftEmptyArrayStorage;
    sub_1002FF768(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
    v61 = v70;
    v62 = v72;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v63 = v84;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v58);

    (*(v71 + 8))(v61, v62);
    (*(v67 + 8))(v60, v69);
  }

  else
  {

    return a3(0);
  }
}

void sub_1002EB054(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v48 = a6;
  v46 = a5;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v18 = __chkstk_darwin(v17);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v42 = v19;
    v43 = v18;
    v44 = v14;
    v45 = a4;
    v22 = a2;
    swift_errorRetain();
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAA58);
    swift_errorRetain();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v26 = 136315394;
      *(v26 + 4) = sub_10021145C(v22, a3, aBlock);
      *(v26 + 12) = 2112;
      v29 = _convertErrorToNSError(_:)();
      *(v26 + 14) = v29;
      *v27 = v29;
      _os_log_impl(&_mh_execute_header, v24, v25, "Error fetching ckDatabase (%s) changes: %@", v26, 0x16u);
      sub_100008D3C(v27, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v28);
    }

    v30 = swift_allocObject();
    v30[2] = v46;
    v30[3] = v22;
    v30[4] = a3;
    v30[5] = a1;
    aBlock[4] = sub_1002FF04C;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    aBlock[3] = &unk_1003B4440;
    v31 = _Block_copy(aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    v49 = _swiftEmptyArrayStorage;
    sub_1002FF768(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
    v32 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v31);

    (*(v47 + 8))(v16, v32);
    (*(v42 + 8))(v21, v43);
  }

  else
  {
    v33 = a2;
    if (qword_1003D7F30 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100008D04(v34, qword_1003FAA70);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_10021145C(v33, a3, aBlock);
      _os_log_impl(&_mh_execute_header, v35, v36, "Successfully fetched ckDatabase (%s) changes", v37, 0xCu);
      sub_10000839C(v38);
    }

    v39 = [objc_opt_self() standardUserDefaults];
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v13, v10);
    v41 = String._bridgeToObjectiveC()();
    [v39 setObject:isa forKey:v41];
  }

  dispatch_group_leave(v48);
}

uint64_t sub_1002EB6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1002CEFC4(a4, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_1002EB79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v11 = *(v18 - 8);
  __chkstk_darwin(v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  aBlock[4] = sub_1002FF098;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003B4490;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1002FF768(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v18);
}

uint64_t sub_1002EBA68(uint64_t a1, uint64_t (*a2)(BOOL))
{
  swift_beginAccess();
  v4 = *(*(a1 + 16) + 16);
  if (v4)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAA58);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      swift_beginAccess();

      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v10 = Dictionary.description.getter();
      v12 = v11;

      v13 = sub_10021145C(v10, v12, &v18);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed syncing (pulling) cloudkit changes from server: %s", v8, 0xCu);
      sub_10000839C(v9);

LABEL_10:
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA58);
    v6 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v6, v15, "Successfully synced (pulled) cloudkit changes from server", v16, 2u);
      goto LABEL_10;
    }
  }

  return a2(v4 == 0);
}

uint64_t sub_1002EBD00()
{
  sub_100008D3C(v0 + 16, &qword_1003DF6C8, qword_1003436E0);
  sub_10000839C((v0 + 56));

  return v0;
}

uint64_t sub_1002EBD80()
{
  sub_1002EBD00();

  return swift_deallocClassInstance();
}

void sub_1002EBDD8(NSObject *a1, unint64_t a2)
{
  v3 = a1;
  v4 = [a1 container];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 containerID];

    v7 = [v6 containerIdentifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1003D7EF8 != -1)
    {
      v11 = swift_once();
    }

    v39[0] = v8;
    v39[1] = v10;
    __chkstk_darwin(v11);
    v36[2] = v39;
    v13 = sub_1002D9820(sub_1002FF8C0, v36, v12);

    if (qword_1003D7F30 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA70);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    v17 = a2 >> 62;
    if (os_log_type_enabled(v15, v16))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      if (v17)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v18 + 4) = v19;

      _os_log_impl(&_mh_execute_header, v15, v16, "CloudKitSyncManager processing [%ld] changed", v18, 0xCu);
    }

    else
    {
    }

    v3 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_10021145C(5457241, 0xE300000000000000, v39);
      _os_log_impl(&_mh_execute_header, v3, v27, "Records in manatee?: %s", v28, 0xCu);
      sub_10000839C(v29);
    }

    v38 = &_swiftEmptySetSingleton;
    if (v17)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
      if (v30)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v30 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
LABEL_21:
        if (v30 >= 1)
        {
          for (i = 0; i != v30; ++i)
          {
            if ((a2 & 0xC000000000000001) != 0)
            {
              v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v32 = *(a2 + 8 * i + 32);
            }

            v33 = v32;
            if (sub_1002EC2F0(v32, v13 & 1))
            {
            }

            else
            {
              v34 = CKRecord.recordType.getter();
              sub_1002FAEE0(v39, v34, v35);
            }
          }

          goto LABEL_32;
        }

        __break(1u);
        goto LABEL_34;
      }
    }

LABEL_32:

    return;
  }

  if (qword_1003D7F28 != -1)
  {
LABEL_34:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAA58);
  v21 = v3;
  v37 = Logger.logObject.getter();
  v22 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v37, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v21;
    *v24 = v21;
    v25 = v21;
    _os_log_impl(&_mh_execute_header, v37, v22, "Failed to obtain containerID from database: %@", v23, 0xCu);
    sub_100008D3C(v24, &unk_1003D9140, &qword_10033E640);
  }

  v26 = v37;
}

uint64_t sub_1002EC2F0(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for InheritanceHealthRecord(0);
  v116 = *(v6 - 8);
  v7 = __chkstk_darwin(v6 - 8);
  v118 = v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v8;
  __chkstk_darwin(v7);
  v119 = v115 - v9;
  v10 = type metadata accessor for BenefactorInfoRecord(0);
  v120 = *(v10 - 8);
  v11 = __chkstk_darwin(v10 - 8);
  v122 = v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v12;
  __chkstk_darwin(v11);
  v123 = v115 - v13;
  v14 = type metadata accessor for BeneficiaryManifestRecord(0);
  v124 = *(v14 - 8);
  v15 = __chkstk_darwin(v14 - 8);
  v126 = v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v16;
  __chkstk_darwin(v15);
  v18 = v115 - v17;
  v19 = type metadata accessor for BeneficiaryInfoRecord(0);
  v127 = *(v19 - 8);
  v20 = __chkstk_darwin(v19 - 8);
  v129 = v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v21;
  __chkstk_darwin(v20);
  v130 = v115 - v22;
  v23 = type metadata accessor for InheritanceInvitationRecord(0);
  v131 = *(v23 - 8);
  v24 = __chkstk_darwin(v23 - 8);
  v132 = v25;
  v133 = v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v134 = v115 - v26;
  v27 = type metadata accessor for CustodianHealthRecord(0);
  v135 = *(v27 - 8);
  v28 = __chkstk_darwin(v27 - 8);
  v136 = v29;
  v137 = v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v138 = v115 - v30;
  v31 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v139 = *(v31 - 8);
  v32 = __chkstk_darwin(v31 - 8);
  v140 = v33;
  v141 = v115 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v142 = v115 - v34;
  v35 = type metadata accessor for CustodianRecord(0);
  v143 = *(v35 - 8);
  v36 = __chkstk_darwin(v35 - 8);
  v144 = v37;
  v145 = v115 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v146 = v115 - v38;
  v39 = type metadata accessor for CustodianshipInfoRecord(0);
  v147 = *(v39 - 8);
  v40 = __chkstk_darwin(v39 - 8);
  v148 = v41;
  v149 = v115 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v150 = v115 - v42;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  v44 = sub_100008D04(v43, qword_1003FAA58);
  v45 = a1;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v115[1] = v44;
    v49 = v48;
    v115[0] = swift_slowAlloc();
    v151 = v115[0];
    *v49 = 136315394;
    v50 = [v45 recordID];
    v51 = v18;
    v52 = v45;
    v53 = a2;
    v54 = v3;
    v55 = [v50 recordName];

    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    v3 = v54;
    a2 = v53;
    v45 = v52;
    v18 = v51;
    v59 = sub_10021145C(v56, v58, &v151);

    *(v49 + 4) = v59;
    *(v49 + 12) = 2080;
    v60 = CKRecord.recordType.getter();
    v62 = sub_10021145C(v60, v61, &v151);

    *(v49 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v46, v47, "Updating record %s of type %s", v49, 0x16u);
    swift_arrayDestroy();
  }

  v64 = CKRecord.recordType.getter();
  v65 = v63;
  if (v64 == 0xD000000000000017 && 0x800000010032CE50 == v63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v66 = v45;
    v18 = v150;
    sub_1000F80E0(v66, a2 & 1, v150);
    sub_1000080F8((v3 + 56), *(v3 + 80));
    v67 = type metadata accessor for CustodianshipInfoRecord;
    v68 = v149;
    sub_1002FDED4(v18, v149, type metadata accessor for CustodianshipInfoRecord);
    v69 = (*(v147 + 80) + 16) & ~*(v147 + 80);
    v70 = swift_allocObject();
    sub_1002FE0A0(v68, v70 + v69, type metadata accessor for CustodianshipInfoRecord);
    sub_10017EB20(v18, 0, 2, sub_1002FEE64, v70);
LABEL_9:

    sub_1002FE134(v18, v67);
    return 0;
  }

  if (v64 == 0x6169646F74737543 && v65 == 0xEF64726F6365526ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v72 = v45;
    v18 = v146;
    sub_1000EF6D0(v72, a2 & 1, v146);
    sub_1000080F8((v3 + 56), *(v3 + 80));
    v67 = type metadata accessor for CustodianRecord;
    v73 = v145;
    sub_1002FDED4(v18, v145, type metadata accessor for CustodianRecord);
    v74 = (*(v143 + 80) + 16) & ~*(v143 + 80);
    v75 = swift_allocObject();
    sub_1002FE0A0(v73, v75 + v74, type metadata accessor for CustodianRecord);
    sub_10017DF74(v18, 0, 2, sub_1002FED10, v75);
    goto LABEL_9;
  }

  if (v64 == 0xD00000000000001BLL && 0x800000010032CEE0 == v65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v76 = v45;
    v18 = v142;
    sub_1000F3020(v76, a2 & 1, v142);
    sub_1000080F8((v3 + 56), *(v3 + 80));
    v67 = type metadata accessor for CustodianRecoveryInfoRecord;
    v77 = v141;
    sub_1002FDED4(v18, v141, type metadata accessor for CustodianRecoveryInfoRecord);
    v78 = (*(v139 + 80) + 16) & ~*(v139 + 80);
    v79 = swift_allocObject();
    sub_1002FE0A0(v77, v79 + v78, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10017E358(v18, 0, 2, sub_1002FEB0C, v79);
    goto LABEL_9;
  }

  if (v64 == 0xD000000000000015 && 0x800000010032CDD0 == v65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v80 = v45;
    v18 = v138;
    sub_1000EC0A4(v80, a2 & 1, v138);
    sub_1000080F8((v3 + 56), *(v3 + 80));
    v67 = type metadata accessor for CustodianHealthRecord;
    v81 = v137;
    sub_1002FDED4(v18, v137, type metadata accessor for CustodianHealthRecord);
    v82 = (*(v135 + 80) + 16) & ~*(v135 + 80);
    v83 = swift_allocObject();
    sub_1002FE0A0(v81, v83 + v82, type metadata accessor for CustodianHealthRecord);
    sub_10017E73C(v18, 0, 2, sub_1002FE918, v83);
    goto LABEL_9;
  }

  if (v64 == 0xD00000000000001BLL && 0x8000000100330380 == v65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v84 = v45;
    v18 = v134;
    sub_1001EDB14(v84, a2 & 1, v134);
    sub_1000080F8((v3 + 56), *(v3 + 80));
    v67 = type metadata accessor for InheritanceInvitationRecord;
    v85 = v133;
    sub_1002FDED4(v18, v133, type metadata accessor for InheritanceInvitationRecord);
    v86 = (*(v131 + 80) + 16) & ~*(v131 + 80);
    v87 = swift_allocObject();
    sub_1002FE0A0(v85, v87 + v86, type metadata accessor for InheritanceInvitationRecord);
    sub_10017FAB0(v18, 0, 2, sub_1002FE774, v87);
    goto LABEL_9;
  }

  if (v64 == 0xD000000000000020 && 0x8000000100330350 == v65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v88 = v45;
    v18 = v130;
    sub_1001E4CD8(v88, a2 & 1, v130);
    sub_1000080F8((v3 + 56), *(v3 + 80));
    v67 = type metadata accessor for BeneficiaryInfoRecord;
    v89 = v129;
    sub_1002FDED4(v18, v129, type metadata accessor for BeneficiaryInfoRecord);
    v90 = (*(v127 + 80) + 16) & ~*(v127 + 80);
    v91 = swift_allocObject();
    sub_1002FE0A0(v89, v91 + v90, type metadata accessor for BeneficiaryInfoRecord);
    sub_10017F6CC(v18, 0, 2, sub_1002FE600, v91);
    goto LABEL_9;
  }

  if (v64 == 0xD000000000000024 && 0x80000001003303A0 == v65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1001E7CF0(v45, a2 & 1, v18);
    sub_1000080F8((v3 + 56), *(v3 + 80));
    v67 = type metadata accessor for BeneficiaryManifestRecord;
    v92 = v126;
    sub_1002FDED4(v18, v126, type metadata accessor for BeneficiaryManifestRecord);
    v93 = (*(v124 + 80) + 16) & ~*(v124 + 80);
    v94 = swift_allocObject();
    sub_1002FE0A0(v92, v94 + v93, type metadata accessor for BeneficiaryManifestRecord);
    sub_100180278(v18, 0, 2, sub_1002FE40C, v94);
    goto LABEL_9;
  }

  if (v64 == 0xD00000000000001FLL && 0x80000001003303D0 == v65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v95 = v45;
    sub_1001E17B0(v95, a2 & 1, v123);
    sub_1000080F8((v3 + 56), *(v3 + 80));
    v67 = type metadata accessor for BenefactorInfoRecord;
    v18 = v123;
    v96 = v122;
    sub_1002FDED4(v123, v122, type metadata accessor for BenefactorInfoRecord);
    v97 = (*(v120 + 80) + 16) & ~*(v120 + 80);
    v98 = swift_allocObject();
    sub_1002FE0A0(v96, v98 + v97, type metadata accessor for BenefactorInfoRecord);
    sub_10017FE94(v18, 0, 2, sub_1002FE2BC, v98);
    goto LABEL_9;
  }

  if (v64 == 0xD000000000000017 && 0x8000000100330300 == v65)
  {

LABEL_43:
    v100 = v45;
    sub_1001EA130(v100, a2 & 1, v119);
    sub_1000080F8((v3 + 56), *(v3 + 80));
    v67 = type metadata accessor for InheritanceHealthRecord;
    v18 = v119;
    v101 = v118;
    sub_1002FDED4(v119, v118, type metadata accessor for InheritanceHealthRecord);
    v102 = (*(v116 + 80) + 16) & ~*(v116 + 80);
    v103 = swift_allocObject();
    sub_1002FE0A0(v101, v103 + v102, type metadata accessor for InheritanceHealthRecord);
    sub_10017F2E8(v18, 0, 2, sub_1002FE108, v103);
    goto LABEL_9;
  }

  v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v99)
  {
    goto LABEL_43;
  }

  v104 = v45;
  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v105, v106))
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v151 = v108;
    *v107 = 136315138;
    v109 = v104;
    v110 = [v109 description];
    v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v113 = v112;

    v114 = sub_10021145C(v111, v113, &v151);

    *(v107 + 4) = v114;
    _os_log_impl(&_mh_execute_header, v105, v106, "Unrecognized record type cannot be processed: %s", v107, 0xCu);
    sub_10000839C(v108);
  }

  return 0;
}

void sub_1002ED6CC(void *a1, uint64_t a2)
{
  v4 = [a1 container];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 containerID];

    v7 = [v6 containerIdentifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1003D7EF8 != -1)
    {
      v11 = swift_once();
    }

    v32[0] = v8;
    v32[1] = v10;
    __chkstk_darwin(v11);
    v29[2] = v32;
    v13 = sub_1002D9820(sub_1002FD690, v29, v12);

    if (qword_1003D7F30 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA70);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = *(a2 + 16);

      _os_log_impl(&_mh_execute_header, v15, v16, "CloudKitSyncManager processing %ld deleted records", v17, 0xCu);
    }

    else
    {
    }

    v31 = &_swiftEmptySetSingleton;
    v24 = *(a2 + 16);
    if (v24)
    {
      v25 = (a2 + 48);
      do
      {
        v26 = *(v25 - 1);
        v27 = *v25;
        v28 = *(v25 - 2);

        if (sub_1002EDACC(v28, v26, v27, v13 & 1))
        {
        }

        else
        {
          sub_1002FAEE0(v32, v26, v27);
        }

        v25 += 3;
        --v24;
      }

      while (v24);
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAA58);
    v19 = a1;
    v30 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v30, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v19;
      *v22 = v19;
      v23 = v19;
      _os_log_impl(&_mh_execute_header, v30, v20, "Failed to obtain containerID from database for recordsDeleted: %@", v21, 0xCu);
      sub_100008D3C(v22, &unk_1003D9140, &qword_10033E640);
    }
  }
}

void *sub_1002EDACC(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  if (qword_1003D7F30 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100008D04(v27, qword_1003FAA70);

  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_10021145C(a2, a3, &v28);
    *(v11 + 12) = 2080;
    v12 = [v8 recordName];
    v13 = a4;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = v14;
    a4 = v13;
    v18 = sub_10021145C(v17, v16, &v28);

    *(v11 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Deleting record %s %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = v8;
  if (a2 == 0xD000000000000017 && 0x800000010032CE50 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1002F12F4(v8, a4 & 1, sub_1002FD6EC, v19);
LABEL_9:

    return 0;
  }

  if (a2 == 0x6169646F74737543 && a3 == 0xEF64726F6365526ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1002F15D0(v8, a4 & 1, sub_1002FD6EC, v19);
    goto LABEL_9;
  }

  if (a2 == 0xD00000000000001BLL && 0x800000010032CEE0 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1002F18B4(v8, a4 & 1, sub_1002FD6EC, v19);
    goto LABEL_9;
  }

  if (a2 == 0xD000000000000015 && 0x800000010032CDD0 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1002F1B90(v8, a4 & 1, sub_1002FD6EC, v19);
    goto LABEL_9;
  }

  if (a2 == 0xD00000000000001BLL && 0x8000000100330380 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1002F1E6C(v8, a4 & 1, sub_1002FD6EC, v19);
    goto LABEL_9;
  }

  if (a2 == 0xD000000000000020 && 0x8000000100330350 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1002F2148(v8, a4 & 1, sub_1002FD6EC, v19);
    goto LABEL_9;
  }

  if (a2 == 0xD000000000000024 && 0x80000001003303A0 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1002F2424(v8, a4 & 1, sub_1002FD6EC, v19);
    goto LABEL_9;
  }

  if (a2 == 0xD00000000000001FLL && 0x80000001003303D0 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1002F2700(v8, a4 & 1, sub_1002FD6EC, v19);
    goto LABEL_9;
  }

  v21 = qword_1003D7F28;

  v22 = v8;
  if (v21 != -1)
  {
    swift_once();
  }

  sub_100008D04(v27, qword_1003FAA58);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_10021145C(a2, a3, &v28);
    _os_log_impl(&_mh_execute_header, v23, v24, "Unrecognized record type cannot be deleted: %s)", v25, 0xCu);
    sub_10000839C(v26);
  }

  type metadata accessor for AACustodianError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1002FF768(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
  _BridgedStoredNSError.init(_:userInfo:)();

  return v28;
}

void sub_1002EE204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InheritanceHealthRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  sub_100012D04(a1, &v32 - v11, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA58);
    sub_1002FDED4(a2, v9, type metadata accessor for InheritanceHealthRecord);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v16 = 136315394;
      v19 = UUID.uuidString.getter();
      v21 = v20;
      sub_1002FE134(v9, type metadata accessor for InheritanceHealthRecord);
      v22 = sub_10021145C(v19, v21, &v33);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2112;
      v23 = _convertErrorToNSError(_:)();
      *(v16 + 14) = v23;
      *v17 = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to save record %s with error: %@", v16, 0x16u);
      sub_100008D3C(v17, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v18);
    }

    else
    {

      sub_1002FE134(v9, type metadata accessor for InheritanceHealthRecord);
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA58);
    sub_1002FDED4(a2, v7, type metadata accessor for InheritanceHealthRecord);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_10021145C(0xD000000000000017, 0x8000000100330300, &v33);
      *(v27 + 12) = 2080;
      v28 = UUID.uuidString.getter();
      v30 = v29;
      sub_1002FE134(v7, type metadata accessor for InheritanceHealthRecord);
      v31 = sub_10021145C(v28, v30, &v33);

      *(v27 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully saved %s %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002FE134(v7, type metadata accessor for InheritanceHealthRecord);
    }

    sub_100008D3C(v12, &unk_1003E10C0, &qword_100346A70);
  }
}

void sub_1002EE70C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BenefactorInfoRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  sub_100012D04(a1, &v32 - v11, &unk_1003E1DD0, &qword_1003444D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA58);
    sub_1002FDED4(a2, v9, type metadata accessor for BenefactorInfoRecord);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v16 = 136315394;
      v19 = UUID.uuidString.getter();
      v21 = v20;
      sub_1002FE134(v9, type metadata accessor for BenefactorInfoRecord);
      v22 = sub_10021145C(v19, v21, &v33);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2112;
      v23 = _convertErrorToNSError(_:)();
      *(v16 + 14) = v23;
      *v17 = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to save record %s with error: %@", v16, 0x16u);
      sub_100008D3C(v17, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v18);
    }

    else
    {

      sub_1002FE134(v9, type metadata accessor for BenefactorInfoRecord);
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA58);
    sub_1002FDED4(a2, v7, type metadata accessor for BenefactorInfoRecord);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, &v33);
      *(v27 + 12) = 2080;
      v28 = UUID.uuidString.getter();
      v30 = v29;
      sub_1002FE134(v7, type metadata accessor for BenefactorInfoRecord);
      v31 = sub_10021145C(v28, v30, &v33);

      *(v27 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully saved %s %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002FE134(v7, type metadata accessor for BenefactorInfoRecord);
    }

    sub_100008D3C(v12, &unk_1003E1DD0, &qword_1003444D0);
  }
}

void sub_1002EEC14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeneficiaryManifestRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = sub_100005814(&qword_1003E0E70, &unk_10034A420);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  sub_100012D04(a1, &v32 - v11, &qword_1003E0E70, &unk_10034A420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA58);
    sub_1002FDED4(a2, v9, type metadata accessor for BeneficiaryManifestRecord);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v16 = 136315394;
      v19 = UUID.uuidString.getter();
      v21 = v20;
      sub_1002FE134(v9, type metadata accessor for BeneficiaryManifestRecord);
      v22 = sub_10021145C(v19, v21, &v33);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2112;
      v23 = _convertErrorToNSError(_:)();
      *(v16 + 14) = v23;
      *v17 = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to save record %s with error: %@", v16, 0x16u);
      sub_100008D3C(v17, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v18);
    }

    else
    {

      sub_1002FE134(v9, type metadata accessor for BeneficiaryManifestRecord);
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA58);
    sub_1002FDED4(a2, v7, type metadata accessor for BeneficiaryManifestRecord);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_10021145C(0xD000000000000019, 0x8000000100334670, &v33);
      *(v27 + 12) = 2080;
      v28 = UUID.uuidString.getter();
      v30 = v29;
      sub_1002FE134(v7, type metadata accessor for BeneficiaryManifestRecord);
      v31 = sub_10021145C(v28, v30, &v33);

      *(v27 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully saved %s %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002FE134(v7, type metadata accessor for BeneficiaryManifestRecord);
    }

    sub_100008D3C(v12, &qword_1003E0E70, &unk_10034A420);
  }
}

void sub_1002EF11C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeneficiaryInfoRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  sub_100012D04(a1, &v32 - v11, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA58);
    sub_1002FDED4(a2, v9, type metadata accessor for BeneficiaryInfoRecord);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v16 = 136315394;
      v19 = UUID.uuidString.getter();
      v21 = v20;
      sub_1002FE134(v9, type metadata accessor for BeneficiaryInfoRecord);
      v22 = sub_10021145C(v19, v21, &v33);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2112;
      v23 = _convertErrorToNSError(_:)();
      *(v16 + 14) = v23;
      *v17 = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to save record %s with error: %@", v16, 0x16u);
      sub_100008D3C(v17, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v18);
    }

    else
    {

      sub_1002FE134(v9, type metadata accessor for BeneficiaryInfoRecord);
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA58);
    sub_1002FDED4(a2, v7, type metadata accessor for BeneficiaryInfoRecord);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_10021145C(0xD000000000000015, 0x8000000100330410, &v33);
      *(v27 + 12) = 2080;
      v28 = UUID.uuidString.getter();
      v30 = v29;
      sub_1002FE134(v7, type metadata accessor for BeneficiaryInfoRecord);
      v31 = sub_10021145C(v28, v30, &v33);

      *(v27 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully saved %s %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002FE134(v7, type metadata accessor for BeneficiaryInfoRecord);
    }

    sub_100008D3C(v12, &unk_1003E10A0, &unk_100344480);
  }
}

void sub_1002EF624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InheritanceInvitationRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  sub_100012D04(a1, &v32 - v11, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA58);
    sub_1002FDED4(a2, v9, type metadata accessor for InheritanceInvitationRecord);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v16 = 136315394;
      v19 = UUID.uuidString.getter();
      v21 = v20;
      sub_1002FE134(v9, type metadata accessor for InheritanceInvitationRecord);
      v22 = sub_10021145C(v19, v21, &v33);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2112;
      v23 = _convertErrorToNSError(_:)();
      *(v16 + 14) = v23;
      *v17 = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to save record %s with error: %@", v16, 0x16u);
      sub_100008D3C(v17, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v18);
    }

    else
    {

      sub_1002FE134(v9, type metadata accessor for InheritanceInvitationRecord);
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA58);
    sub_1002FDED4(a2, v7, type metadata accessor for InheritanceInvitationRecord);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, &v33);
      *(v27 + 12) = 2080;
      v28 = UUID.uuidString.getter();
      v30 = v29;
      sub_1002FE134(v7, type metadata accessor for InheritanceInvitationRecord);
      v31 = sub_10021145C(v28, v30, &v33);

      *(v27 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully saved %s %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002FE134(v7, type metadata accessor for InheritanceInvitationRecord);
    }

    sub_100008D3C(v12, &qword_1003E1290, &unk_1003444C0);
  }
}

void sub_1002EFB2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianHealthRecord(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = sub_100005814(&qword_1003D91E8, &qword_100346AC0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  sub_100012D04(a1, &v32 - v11, &qword_1003D91E8, &qword_100346AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA58);
    sub_1002FDED4(a2, v9, type metadata accessor for CustodianHealthRecord);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v16 = 136315394;
      v19 = UUID.uuidString.getter();
      v21 = v20;
      sub_1002FE134(v9, type metadata accessor for CustodianHealthRecord);
      v22 = sub_10021145C(v19, v21, &v33);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2112;
      v23 = _convertErrorToNSError(_:)();
      *(v16 + 14) = v23;
      *v17 = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to save record %s with error: %@", v16, 0x16u);
      sub_100008D3C(v17, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v18);
    }

    else
    {

      sub_1002FE134(v9, type metadata accessor for CustodianHealthRecord);
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA58);
    sub_1002FDED4(a2, v7, type metadata accessor for CustodianHealthRecord);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, &v33);
      *(v27 + 12) = 2080;
      v28 = UUID.uuidString.getter();
      v30 = v29;
      sub_1002FE134(v7, type metadata accessor for CustodianHealthRecord);
      v31 = sub_10021145C(v28, v30, &v33);

      *(v27 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully saved %s %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002FE134(v7, type metadata accessor for CustodianHealthRecord);
    }

    sub_100008D3C(v12, &qword_1003D91E8, &qword_100346AC0);
  }
}

void sub_1002F0024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = sub_100005814(&unk_1003DB610, &unk_10033FA90);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  sub_100012D04(a1, &v32 - v11, &unk_1003DB610, &unk_10033FA90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA58);
    sub_1002FDED4(a2, v9, type metadata accessor for CustodianRecoveryInfoRecord);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v16 = 136315394;
      v19 = UUID.uuidString.getter();
      v21 = v20;
      sub_1002FE134(v9, type metadata accessor for CustodianRecoveryInfoRecord);
      v22 = sub_10021145C(v19, v21, &v33);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2112;
      v23 = _convertErrorToNSError(_:)();
      *(v16 + 14) = v23;
      *v17 = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to save record %s with error: %@", v16, 0x16u);
      sub_100008D3C(v17, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v18);
    }

    else
    {

      sub_1002FE134(v9, type metadata accessor for CustodianRecoveryInfoRecord);
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA58);
    sub_1002FDED4(a2, v7, type metadata accessor for CustodianRecoveryInfoRecord);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_10021145C(0xD00000000000001BLL, 0x800000010032CEE0, &v33);
      *(v27 + 12) = 2080;
      v28 = UUID.uuidString.getter();
      v30 = v29;
      sub_1002FE134(v7, type metadata accessor for CustodianRecoveryInfoRecord);
      v31 = sub_10021145C(v28, v30, &v33);

      *(v27 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully saved %s %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002FE134(v7, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    sub_100008D3C(v12, &unk_1003DB610, &unk_10033FA90);
  }
}

void sub_1002F051C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecord(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  sub_100012D04(a1, &v32 - v11, &unk_1003DA200, &unk_10033FA80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA58);
    sub_1002FDED4(a2, v9, type metadata accessor for CustodianRecord);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v16 = 136315394;
      v19 = UUID.uuidString.getter();
      v21 = v20;
      sub_1002FE134(v9, type metadata accessor for CustodianRecord);
      v22 = sub_10021145C(v19, v21, &v33);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2112;
      v23 = _convertErrorToNSError(_:)();
      *(v16 + 14) = v23;
      *v17 = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to save record %s with error: %@", v16, 0x16u);
      sub_100008D3C(v17, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v18);
    }

    else
    {

      sub_1002FE134(v9, type metadata accessor for CustodianRecord);
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA58);
    sub_1002FDED4(a2, v7, type metadata accessor for CustodianRecord);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, &v33);
      *(v27 + 12) = 2080;
      v28 = UUID.uuidString.getter();
      v30 = v29;
      sub_1002FE134(v7, type metadata accessor for CustodianRecord);
      v31 = sub_10021145C(v28, v30, &v33);

      *(v27 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully saved %s %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002FE134(v7, type metadata accessor for CustodianRecord);
    }

    sub_100008D3C(v12, &unk_1003DA200, &unk_10033FA80);
  }
}

void sub_1002F0A1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianshipInfoRecord(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  sub_100012D04(a1, &v32 - v11, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA58);
    sub_1002FDED4(a2, v9, type metadata accessor for CustodianshipInfoRecord);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v16 = 136315394;
      v19 = UUID.uuidString.getter();
      v21 = v20;
      sub_1002FE134(v9, type metadata accessor for CustodianshipInfoRecord);
      v22 = sub_10021145C(v19, v21, &v33);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2112;
      v23 = _convertErrorToNSError(_:)();
      *(v16 + 14) = v23;
      *v17 = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to save record %s with error: %@", v16, 0x16u);
      sub_100008D3C(v17, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v18);
    }

    else
    {

      sub_1002FE134(v9, type metadata accessor for CustodianshipInfoRecord);
    }
  }

  else
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA58);
    sub_1002FDED4(a2, v7, type metadata accessor for CustodianshipInfoRecord);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, &v33);
      *(v27 + 12) = 2080;
      v28 = UUID.uuidString.getter();
      v30 = v29;
      sub_1002FE134(v7, type metadata accessor for CustodianshipInfoRecord);
      v31 = sub_10021145C(v28, v30, &v33);

      *(v27 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully saved %s %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1002FE134(v7, type metadata accessor for CustodianshipInfoRecord);
    }

    sub_100008D3C(v12, &unk_1003DA0E0, &unk_10033F1D0);
  }
}

void sub_1002F0F14(uint64_t a1, char a2, uint64_t a3, unint64_t a4, void *a5)
{
  if (a2)
  {
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAA58);

    v10 = a5;
    sub_10020E61C(a1, 1);
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v12 = 136315650;
      *(v12 + 4) = sub_10021145C(a3, a4, &v30);
      *(v12 + 12) = 2080;
      v14 = [v10 recordName];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = sub_10021145C(v15, v17, &v30);

      *(v12 + 14) = v18;
      *(v12 + 22) = 2112;
      v19 = _convertErrorToNSError(_:)();
      *(v12 + 24) = v19;
      *v13 = v19;
      _os_log_impl(&_mh_execute_header, oslog, v11, "Failed to delete record %s %s with error: %@", v12, 0x20u);
      sub_100008D3C(v13, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();

LABEL_10:

      return;
    }
  }

  else
  {
    if (qword_1003D7F30 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA70);

    v21 = a5;
    oslog = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v23 = 136315394;
      *(v23 + 4) = sub_10021145C(a3, a4, &v30);
      *(v23 + 12) = 2080;
      v24 = [v21 recordName];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = sub_10021145C(v25, v27, &v30);

      *(v23 + 14) = v28;
      _os_log_impl(&_mh_execute_header, oslog, v22, "Successfully deleted record  %s %s", v23, 0x16u);
      swift_arrayDestroy();

      goto LABEL_10;
    }
  }
}

uint64_t sub_1002F12F4(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = __chkstk_darwin(v8);
  v11 = &v24 - v10;
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v14 = *(v6 + 8);
  v14(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v25 = v14;
  v15 = [a1 recordName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.appendingPathComponent(_:)();

  v16 = v5;
  v14(v11, v5);
  v17 = v26;
  sub_1000080F8((v26 + 56), *(v26 + 80));
  v18 = v16;
  (*(v6 + 16))(v11, v13, v16);
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v27;
  *(v20 + 24) = v17;
  (*(v6 + 32))(v20 + v19, v11, v18);
  v21 = (v20 + ((v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;

  sub_1002F639C(v13, sub_1002FD700, v20, &unk_1003B3E88, sub_1002FD71C, &unk_1003B3EA0);

  return v25(v13, v18);
}

uint64_t sub_1002F15D0(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = __chkstk_darwin(v8);
  v11 = &v24 - v10;
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v14 = *(v6 + 8);
  v14(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v25 = v14;
  v15 = [a1 recordName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.appendingPathComponent(_:)();

  v16 = v5;
  v14(v11, v5);
  v17 = v26;
  sub_1000080F8((v26 + 56), *(v26 + 80));
  v18 = v16;
  (*(v6 + 16))(v11, v13, v16);
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v27;
  *(v20 + 24) = v17;
  (*(v6 + 32))(v20 + v19, v11, v18);
  v21 = (v20 + ((v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;

  sub_1002F639C(v13, sub_1002FD818, v20, &unk_1003B3F00, sub_1002FD8EC, &unk_1003B3F18);

  return v25(v13, v18);
}

uint64_t sub_1002F18B4(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = __chkstk_darwin(v8);
  v11 = &v24 - v10;
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v14 = *(v6 + 8);
  v14(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v25 = v14;
  v15 = [a1 recordName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.appendingPathComponent(_:)();

  v16 = v5;
  v14(v11, v5);
  v17 = v26;
  sub_1000080F8((v26 + 56), *(v26 + 80));
  v18 = v16;
  (*(v6 + 16))(v11, v13, v16);
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v27;
  *(v20 + 24) = v17;
  (*(v6 + 32))(v20 + v19, v11, v18);
  v21 = (v20 + ((v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;

  sub_1002F639C(v13, sub_1002FD9D0, v20, &unk_1003B3F78, sub_1002FD9E8, &unk_1003B3F90);

  return v25(v13, v18);
}

uint64_t sub_1002F1B90(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = __chkstk_darwin(v8);
  v11 = &v24 - v10;
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v14 = *(v6 + 8);
  v14(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v25 = v14;
  v15 = [a1 recordName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.appendingPathComponent(_:)();

  v16 = v5;
  v14(v11, v5);
  v17 = v26;
  sub_1000080F8((v26 + 56), *(v26 + 80));
  v18 = v16;
  (*(v6 + 16))(v11, v13, v16);
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v27;
  *(v20 + 24) = v17;
  (*(v6 + 32))(v20 + v19, v11, v18);
  v21 = (v20 + ((v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;

  sub_1002F639C(v13, sub_1002FDACC, v20, &unk_1003B3FF0, sub_1002FDAE4, &unk_1003B4008);

  return v25(v13, v18);
}

uint64_t sub_1002F1E6C(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = __chkstk_darwin(v8);
  v11 = &v24 - v10;
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v14 = *(v6 + 8);
  v14(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v25 = v14;
  v15 = [a1 recordName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.appendingPathComponent(_:)();

  v16 = v5;
  v14(v11, v5);
  v17 = v26;
  sub_1000080F8((v26 + 56), *(v26 + 80));
  v18 = v16;
  (*(v6 + 16))(v11, v13, v16);
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v27;
  *(v20 + 24) = v17;
  (*(v6 + 32))(v20 + v19, v11, v18);
  v21 = (v20 + ((v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;

  sub_1002F639C(v13, sub_1002FDBC8, v20, &unk_1003B4068, sub_1002FDBE0, &unk_1003B4080);

  return v25(v13, v18);
}

uint64_t sub_1002F2148(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = __chkstk_darwin(v8);
  v11 = &v24 - v10;
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v14 = *(v6 + 8);
  v14(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v25 = v14;
  v15 = [a1 recordName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.appendingPathComponent(_:)();

  v16 = v5;
  v14(v11, v5);
  v17 = v26;
  sub_1000080F8((v26 + 56), *(v26 + 80));
  v18 = v16;
  (*(v6 + 16))(v11, v13, v16);
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v27;
  *(v20 + 24) = v17;
  (*(v6 + 32))(v20 + v19, v11, v18);
  v21 = (v20 + ((v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;

  sub_1002F639C(v13, sub_1002FDBF8, v20, &unk_1003B40E0, sub_1002FDC10, &unk_1003B40F8);

  return v25(v13, v18);
}

uint64_t sub_1002F2424(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = __chkstk_darwin(v8);
  v11 = &v24 - v10;
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v14 = *(v6 + 8);
  v14(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v25 = v14;
  v15 = [a1 recordName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.appendingPathComponent(_:)();

  v16 = v5;
  v14(v11, v5);
  v17 = v26;
  sub_1000080F8((v26 + 56), *(v26 + 80));
  v18 = v16;
  (*(v6 + 16))(v11, v13, v16);
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v27;
  *(v20 + 24) = v17;
  (*(v6 + 32))(v20 + v19, v11, v18);
  v21 = (v20 + ((v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;

  sub_1002F639C(v13, sub_1002FDC28, v20, &unk_1003B4158, sub_1002FDC40, &unk_1003B4170);

  return v25(v13, v18);
}

uint64_t sub_1002F2700(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = __chkstk_darwin(v8);
  v11 = &v24 - v10;
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v14 = *(v6 + 8);
  v14(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v25 = v14;
  v15 = [a1 recordName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.appendingPathComponent(_:)();

  v16 = v5;
  v14(v11, v5);
  v17 = v26;
  sub_1000080F8((v26 + 56), *(v26 + 80));
  v18 = v16;
  (*(v6 + 16))(v11, v13, v16);
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v27;
  *(v20 + 24) = v17;
  (*(v6 + 32))(v20 + v19, v11, v18);
  v21 = (v20 + ((v7 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;

  sub_1002F639C(v13, sub_1002FDD34, v20, &unk_1003B41D0, sub_1002FDD4C, &unk_1003B41E8);

  return v25(v13, v18);
}

uint64_t sub_1002F29DC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v47 = a6;
  v48 = a5;
  v43 = a3;
  v44 = a4;
  v45 = a2;
  v7 = type metadata accessor for BenefactorInfoRecord(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = &v43 - v12;
  v13 = sub_100005814(&unk_1003E1DE0, &qword_1003444D8);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v43 - v17;
  v19 = sub_100005814(&qword_1003E86E8, &unk_10034A410);
  __chkstk_darwin(v19);
  v21 = (&v43 - v20);
  sub_100012D04(a1, &v43 - v20, &qword_1003E86E8, &unk_10034A410);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAA58);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = _convertErrorToNSError(_:)();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "processZoneRecordDelete failed to find existing local record with error: %@", v26, 0xCu);
      sub_100008D3C(v27, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    v48(v22, 1);
  }

  else
  {
    sub_1002FDE14(v21, v18, &unk_1003E1DE0, &qword_1003444D8);
    sub_100012D04(v18, v16, &unk_1003E1DE0, &qword_1003444D8);
    if ((*(v8 + 48))(v16, 1, v7) == 1)
    {
      sub_100008D3C(v16, &unk_1003E1DE0, &qword_1003444D8);
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100008D04(v30, qword_1003FAA58);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "processZoneRecordDelete did not find existing local record", v33, 2u);
      }

      type metadata accessor for AACustodianError(0);
      v49 = -7003;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1002FF768(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      v34 = v50;
      v48(v50, 1);
    }

    else
    {
      v35 = v46;
      sub_1002FE0A0(v16, v46, type metadata accessor for BenefactorInfoRecord);
      v36 = v45;
      if (*(v35 + *(v7 + 36)) == (v45 & 1))
      {
        sub_1000080F8((v43 + 56), *(v43 + 80));
        sub_100307274(v44, v48, v47);
      }

      else
      {
        if (qword_1003D7F28 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_100008D04(v37, qword_1003FAA58);
        sub_1002FDED4(v35, v11, type metadata accessor for BenefactorInfoRecord);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 67109376;
          v41 = v11[*(v7 + 36)];
          sub_1002FE134(v11, type metadata accessor for BenefactorInfoRecord);
          *(v40 + 4) = v41;
          *(v40 + 8) = 1024;
          *(v40 + 10) = v36 & 1;
          _os_log_impl(&_mh_execute_header, v38, v39, "processZoneRecordDelete not deleting record because currentRecord is in manatee %{BOOL}d and request was for %{BOOL}d", v40, 0xEu);
        }

        else
        {
          sub_1002FE134(v11, type metadata accessor for BenefactorInfoRecord);
        }

        type metadata accessor for AACustodianError(0);
        v49 = -7003;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_1002FF768(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
        _BridgedStoredNSError.init(_:userInfo:)();
        v42 = v50;
        v48(v50, 1);
      }

      sub_1002FE134(v35, type metadata accessor for BenefactorInfoRecord);
    }

    return sub_100008D3C(v18, &unk_1003E1DE0, &qword_1003444D8);
  }
}

uint64_t sub_1002F3114(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v47 = a6;
  v48 = a5;
  v43 = a3;
  v44 = a4;
  v45 = a2;
  v7 = type metadata accessor for BeneficiaryManifestRecord(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = &v43 - v12;
  v13 = sub_100005814(&qword_1003E86E0, &qword_10034A408);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v43 - v17;
  v19 = sub_100005814(&qword_1003E86D8, &qword_10034A400);
  __chkstk_darwin(v19);
  v21 = (&v43 - v20);
  sub_100012D04(a1, &v43 - v20, &qword_1003E86D8, &qword_10034A400);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAA58);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = _convertErrorToNSError(_:)();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "processZoneRecordDelete failed to find existing local record with error: %@", v26, 0xCu);
      sub_100008D3C(v27, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    v48(v22, 1);
  }

  else
  {
    sub_1002FDE14(v21, v18, &qword_1003E86E0, &qword_10034A408);
    sub_100012D04(v18, v16, &qword_1003E86E0, &qword_10034A408);
    if ((*(v8 + 48))(v16, 1, v7) == 1)
    {
      sub_100008D3C(v16, &qword_1003E86E0, &qword_10034A408);
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100008D04(v30, qword_1003FAA58);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "processZoneRecordDelete did not find existing local record", v33, 2u);
      }

      type metadata accessor for AACustodianError(0);
      v49 = -7003;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1002FF768(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      v34 = v50;
      v48(v50, 1);
    }

    else
    {
      v35 = v46;
      sub_1002FE0A0(v16, v46, type metadata accessor for BeneficiaryManifestRecord);
      v36 = v45;
      if (*(v35 + *(v7 + 32)) == (v45 & 1))
      {
        sub_1000080F8((v43 + 56), *(v43 + 80));
        sub_100307274(v44, v48, v47);
      }

      else
      {
        if (qword_1003D7F28 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_100008D04(v37, qword_1003FAA58);
        sub_1002FDED4(v35, v11, type metadata accessor for BeneficiaryManifestRecord);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 67109376;
          v41 = v11[*(v7 + 32)];
          sub_1002FE134(v11, type metadata accessor for BeneficiaryManifestRecord);
          *(v40 + 4) = v41;
          *(v40 + 8) = 1024;
          *(v40 + 10) = v36 & 1;
          _os_log_impl(&_mh_execute_header, v38, v39, "processZoneRecordDelete not deleting record because currentRecord is in manatee %{BOOL}d and request was for %{BOOL}d", v40, 0xEu);
        }

        else
        {
          sub_1002FE134(v11, type metadata accessor for BeneficiaryManifestRecord);
        }

        type metadata accessor for AACustodianError(0);
        v49 = -7003;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_1002FF768(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
        _BridgedStoredNSError.init(_:userInfo:)();
        v42 = v50;
        v48(v50, 1);
      }

      sub_1002FE134(v35, type metadata accessor for BeneficiaryManifestRecord);
    }

    return sub_100008D3C(v18, &qword_1003E86E0, &qword_10034A408);
  }
}

uint64_t sub_1002F384C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v47 = a6;
  v48 = a5;
  v43 = a3;
  v44 = a4;
  v45 = a2;
  v7 = type metadata accessor for BeneficiaryInfoRecord(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = &v43 - v12;
  v13 = sub_100005814(&unk_1003E4F30, &unk_1003444E0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v43 - v17;
  v19 = sub_100005814(&qword_1003E86D0, &unk_10034A3F0);
  __chkstk_darwin(v19);
  v21 = (&v43 - v20);
  sub_100012D04(a1, &v43 - v20, &qword_1003E86D0, &unk_10034A3F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAA58);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = _convertErrorToNSError(_:)();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "processZoneRecordDelete failed to find existing local record with error: %@", v26, 0xCu);
      sub_100008D3C(v27, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    v48(v22, 1);
  }

  else
  {
    sub_1002FDE14(v21, v18, &unk_1003E4F30, &unk_1003444E0);
    sub_100012D04(v18, v16, &unk_1003E4F30, &unk_1003444E0);
    if ((*(v8 + 48))(v16, 1, v7) == 1)
    {
      sub_100008D3C(v16, &unk_1003E4F30, &unk_1003444E0);
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100008D04(v30, qword_1003FAA58);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "processZoneRecordDelete did not find existing local record", v33, 2u);
      }

      type metadata accessor for AACustodianError(0);
      v49 = -7003;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1002FF768(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      v34 = v50;
      v48(v50, 1);
    }

    else
    {
      v35 = v46;
      sub_1002FE0A0(v16, v46, type metadata accessor for BeneficiaryInfoRecord);
      v36 = v45;
      if (*(v35 + *(v7 + 40)) == (v45 & 1))
      {
        sub_1000080F8((v43 + 56), *(v43 + 80));
        sub_100307274(v44, v48, v47);
      }

      else
      {
        if (qword_1003D7F28 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_100008D04(v37, qword_1003FAA58);
        sub_1002FDED4(v35, v11, type metadata accessor for BeneficiaryInfoRecord);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 67109376;
          v41 = v11[*(v7 + 40)];
          sub_1002FE134(v11, type metadata accessor for BeneficiaryInfoRecord);
          *(v40 + 4) = v41;
          *(v40 + 8) = 1024;
          *(v40 + 10) = v36 & 1;
          _os_log_impl(&_mh_execute_header, v38, v39, "processZoneRecordDelete not deleting record because currentRecord is in manatee %{BOOL}d and request was for %{BOOL}d", v40, 0xEu);
        }

        else
        {
          sub_1002FE134(v11, type metadata accessor for BeneficiaryInfoRecord);
        }

        type metadata accessor for AACustodianError(0);
        v49 = -7003;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_1002FF768(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
        _BridgedStoredNSError.init(_:userInfo:)();
        v42 = v50;
        v48(v50, 1);
      }

      sub_1002FE134(v35, type metadata accessor for BeneficiaryInfoRecord);
    }

    return sub_100008D3C(v18, &unk_1003E4F30, &unk_1003444E0);
  }
}

uint64_t sub_1002F3F84(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v47 = a6;
  v48 = a5;
  v43 = a3;
  v44 = a4;
  v45 = a2;
  v7 = type metadata accessor for InheritanceInvitationRecord(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = &v43 - v12;
  v13 = sub_100005814(&qword_1003E4F40, &unk_1003446D0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v43 - v17;
  v19 = sub_100005814(&qword_1003E1288, &unk_10034A3E0);
  __chkstk_darwin(v19);
  v21 = (&v43 - v20);
  sub_100012D04(a1, &v43 - v20, &qword_1003E1288, &unk_10034A3E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAA58);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = _convertErrorToNSError(_:)();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "processZoneRecordDelete failed to find existing local record with error: %@", v26, 0xCu);
      sub_100008D3C(v27, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    v48(v22, 1);
  }

  else
  {
    sub_1002FDE14(v21, v18, &qword_1003E4F40, &unk_1003446D0);
    sub_100012D04(v18, v16, &qword_1003E4F40, &unk_1003446D0);
    if ((*(v8 + 48))(v16, 1, v7) == 1)
    {
      sub_100008D3C(v16, &qword_1003E4F40, &unk_1003446D0);
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100008D04(v30, qword_1003FAA58);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "processZoneRecordDelete did not find existing local record", v33, 2u);
      }

      type metadata accessor for AACustodianError(0);
      v49 = -7003;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1002FF768(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      v34 = v50;
      v48(v50, 1);
    }

    else
    {
      v35 = v46;
      sub_1002FE0A0(v16, v46, type metadata accessor for InheritanceInvitationRecord);
      v36 = v45;
      if (*(v35 + *(v7 + 44)) == (v45 & 1))
      {
        sub_1000080F8((v43 + 56), *(v43 + 80));
        sub_100307274(v44, v48, v47);
      }

      else
      {
        if (qword_1003D7F28 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_100008D04(v37, qword_1003FAA58);
        sub_1002FDED4(v35, v11, type metadata accessor for InheritanceInvitationRecord);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 67109376;
          v41 = v11[*(v7 + 44)];
          sub_1002FE134(v11, type metadata accessor for InheritanceInvitationRecord);
          *(v40 + 4) = v41;
          *(v40 + 8) = 1024;
          *(v40 + 10) = v36 & 1;
          _os_log_impl(&_mh_execute_header, v38, v39, "processZoneRecordDelete not deleting record because currentRecord is in manatee %{BOOL}d and request was for %{BOOL}d", v40, 0xEu);
        }

        else
        {
          sub_1002FE134(v11, type metadata accessor for InheritanceInvitationRecord);
        }

        type metadata accessor for AACustodianError(0);
        v49 = -7003;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_1002FF768(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
        _BridgedStoredNSError.init(_:userInfo:)();
        v42 = v50;
        v48(v50, 1);
      }

      sub_1002FE134(v35, type metadata accessor for InheritanceInvitationRecord);
    }

    return sub_100008D3C(v18, &qword_1003E4F40, &unk_1003446D0);
  }
}

uint64_t sub_1002F46BC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v47 = a6;
  v48 = a5;
  v43 = a3;
  v44 = a4;
  v45 = a2;
  v7 = type metadata accessor for CustodianHealthRecord(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = &v43 - v12;
  v13 = sub_100005814(&qword_1003D91A8, &unk_10033EC40);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v43 - v17;
  v19 = sub_100005814(&qword_1003E86C8, &unk_10034A3D0);
  __chkstk_darwin(v19);
  v21 = (&v43 - v20);
  sub_100012D04(a1, &v43 - v20, &qword_1003E86C8, &unk_10034A3D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAA58);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = _convertErrorToNSError(_:)();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "processZoneRecordDelete failed to find existing local record with error: %@", v26, 0xCu);
      sub_100008D3C(v27, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    v48(v22, 1);
  }

  else
  {
    sub_1002FDE14(v21, v18, &qword_1003D91A8, &unk_10033EC40);
    sub_100012D04(v18, v16, &qword_1003D91A8, &unk_10033EC40);
    if ((*(v8 + 48))(v16, 1, v7) == 1)
    {
      sub_100008D3C(v16, &qword_1003D91A8, &unk_10033EC40);
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100008D04(v30, qword_1003FAA58);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "processZoneRecordDelete did not find existing local record", v33, 2u);
      }

      type metadata accessor for AACustodianError(0);
      v49 = -7003;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1002FF768(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      v34 = v50;
      v48(v50, 1);
    }

    else
    {
      v35 = v46;
      sub_1002FE0A0(v16, v46, type metadata accessor for CustodianHealthRecord);
      v36 = v45;
      if (*(v35 + *(v7 + 36)) == (v45 & 1))
      {
        sub_1000080F8((v43 + 56), *(v43 + 80));
        sub_100307274(v44, v48, v47);
      }

      else
      {
        if (qword_1003D7F28 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_100008D04(v37, qword_1003FAA58);
        sub_1002FDED4(v35, v11, type metadata accessor for CustodianHealthRecord);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 67109376;
          v41 = v11[*(v7 + 36)];
          sub_1002FE134(v11, type metadata accessor for CustodianHealthRecord);
          *(v40 + 4) = v41;
          *(v40 + 8) = 1024;
          *(v40 + 10) = v36 & 1;
          _os_log_impl(&_mh_execute_header, v38, v39, "processZoneRecordDelete not deleting record because currentRecord is in manatee %{BOOL}d and request was for %{BOOL}d", v40, 0xEu);
        }

        else
        {
          sub_1002FE134(v11, type metadata accessor for CustodianHealthRecord);
        }

        type metadata accessor for AACustodianError(0);
        v49 = -7003;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_1002FF768(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
        _BridgedStoredNSError.init(_:userInfo:)();
        v42 = v50;
        v48(v50, 1);
      }

      sub_1002FE134(v35, type metadata accessor for CustodianHealthRecord);
    }

    return sub_100008D3C(v18, &qword_1003D91A8, &unk_10033EC40);
  }
}

uint64_t sub_1002F4DF4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v47 = a6;
  v48 = a5;
  v43 = a3;
  v44 = a4;
  v45 = a2;
  v7 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = &v43 - v12;
  v13 = sub_100005814(&unk_1003D91B0, qword_1003444F0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v43 - v17;
  v19 = sub_100005814(&qword_1003E86C0, &unk_10034A3C0);
  __chkstk_darwin(v19);
  v21 = (&v43 - v20);
  sub_100012D04(a1, &v43 - v20, &qword_1003E86C0, &unk_10034A3C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAA58);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = _convertErrorToNSError(_:)();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "processZoneRecordDelete failed to find existing local record with error: %@", v26, 0xCu);
      sub_100008D3C(v27, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    v48(v22, 1);
  }

  else
  {
    sub_1002FDE14(v21, v18, &unk_1003D91B0, qword_1003444F0);
    sub_100012D04(v18, v16, &unk_1003D91B0, qword_1003444F0);
    if ((*(v8 + 48))(v16, 1, v7) == 1)
    {
      sub_100008D3C(v16, &unk_1003D91B0, qword_1003444F0);
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100008D04(v30, qword_1003FAA58);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "processZoneRecordDelete did not find existing local record", v33, 2u);
      }

      type metadata accessor for AACustodianError(0);
      v49 = -7003;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1002FF768(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      v34 = v50;
      v48(v50, 1);
    }

    else
    {
      v35 = v46;
      sub_1002FE0A0(v16, v46, type metadata accessor for CustodianRecoveryInfoRecord);
      v36 = v45;
      if (*(v35 + *(v7 + 40)) == (v45 & 1))
      {
        sub_1000080F8((v43 + 56), *(v43 + 80));
        sub_100307274(v44, v48, v47);
      }

      else
      {
        if (qword_1003D7F28 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_100008D04(v37, qword_1003FAA58);
        sub_1002FDED4(v35, v11, type metadata accessor for CustodianRecoveryInfoRecord);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 67109376;
          v41 = v11[*(v7 + 40)];
          sub_1002FE134(v11, type metadata accessor for CustodianRecoveryInfoRecord);
          *(v40 + 4) = v41;
          *(v40 + 8) = 1024;
          *(v40 + 10) = v36 & 1;
          _os_log_impl(&_mh_execute_header, v38, v39, "processZoneRecordDelete not deleting record because currentRecord is in manatee %{BOOL}d and request was for %{BOOL}d", v40, 0xEu);
        }

        else
        {
          sub_1002FE134(v11, type metadata accessor for CustodianRecoveryInfoRecord);
        }

        type metadata accessor for AACustodianError(0);
        v49 = -7003;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_1002FF768(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
        _BridgedStoredNSError.init(_:userInfo:)();
        v42 = v50;
        v48(v50, 1);
      }

      sub_1002FE134(v35, type metadata accessor for CustodianRecoveryInfoRecord);
    }

    return sub_100008D3C(v18, &unk_1003D91B0, qword_1003444F0);
  }
}

uint64_t sub_1002F552C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v47 = a6;
  v48 = a5;
  v43 = a3;
  v44 = a4;
  v45 = a2;
  v7 = type metadata accessor for CustodianRecord(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = &v43 - v12;
  v13 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v43 - v17;
  v19 = sub_100005814(&qword_1003E86B8, &unk_10034A3B0);
  __chkstk_darwin(v19);
  v21 = (&v43 - v20);
  sub_100012D04(a1, &v43 - v20, &qword_1003E86B8, &unk_10034A3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAA58);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = _convertErrorToNSError(_:)();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "processZoneRecordDelete failed to find existing local record with error: %@", v26, 0xCu);
      sub_100008D3C(v27, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    v48(v22, 1);
  }

  else
  {
    sub_1002FDE14(v21, v18, &unk_1003DF000, &unk_10033EC50);
    sub_100012D04(v18, v16, &unk_1003DF000, &unk_10033EC50);
    if ((*(v8 + 48))(v16, 1, v7) == 1)
    {
      sub_100008D3C(v16, &unk_1003DF000, &unk_10033EC50);
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100008D04(v30, qword_1003FAA58);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "processZoneRecordDelete did not find existing local record", v33, 2u);
      }

      type metadata accessor for AACustodianError(0);
      v49 = -7003;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1002FF768(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      v34 = v50;
      v48(v50, 1);
    }

    else
    {
      v35 = v46;
      sub_1002FE0A0(v16, v46, type metadata accessor for CustodianRecord);
      v36 = v45;
      if (*(v35 + *(v7 + 48)) == (v45 & 1))
      {
        sub_1000080F8((v43 + 56), *(v43 + 80));
        sub_100307274(v44, v48, v47);
      }

      else
      {
        if (qword_1003D7F28 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_100008D04(v37, qword_1003FAA58);
        sub_1002FDED4(v35, v11, type metadata accessor for CustodianRecord);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 67109376;
          v41 = v11[*(v7 + 48)];
          sub_1002FE134(v11, type metadata accessor for CustodianRecord);
          *(v40 + 4) = v41;
          *(v40 + 8) = 1024;
          *(v40 + 10) = v36 & 1;
          _os_log_impl(&_mh_execute_header, v38, v39, "processZoneRecordDelete not deleting record because currentRecord is in manatee %{BOOL}d and request was for %{BOOL}d", v40, 0xEu);
        }

        else
        {
          sub_1002FE134(v11, type metadata accessor for CustodianRecord);
        }

        type metadata accessor for AACustodianError(0);
        v49 = -7003;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_1002FF768(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
        _BridgedStoredNSError.init(_:userInfo:)();
        v42 = v50;
        v48(v50, 1);
      }

      sub_1002FE134(v35, type metadata accessor for CustodianRecord);
    }

    return sub_100008D3C(v18, &unk_1003DF000, &unk_10033EC50);
  }
}

uint64_t sub_1002F5C64(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v47 = a6;
  v48 = a5;
  v43 = a3;
  v44 = a4;
  v45 = a2;
  v7 = type metadata accessor for CustodianshipInfoRecord(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = &v43 - v12;
  v13 = sub_100005814(&qword_1003D9270, &qword_10033ECF0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v43 - v17;
  v19 = sub_100005814(&qword_1003E86B0, &unk_10034A3A0);
  __chkstk_darwin(v19);
  v21 = (&v43 - v20);
  sub_100012D04(a1, &v43 - v20, &qword_1003E86B0, &unk_10034A3A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    if (qword_1003D7F28 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAA58);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      v28 = _convertErrorToNSError(_:)();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "processZoneRecordDelete failed to find existing local record with error: %@", v26, 0xCu);
      sub_100008D3C(v27, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    v48(v22, 1);
  }

  else
  {
    sub_1002FDE14(v21, v18, &qword_1003D9270, &qword_10033ECF0);
    sub_100012D04(v18, v16, &qword_1003D9270, &qword_10033ECF0);
    if ((*(v8 + 48))(v16, 1, v7) == 1)
    {
      sub_100008D3C(v16, &qword_1003D9270, &qword_10033ECF0);
      if (qword_1003D7F28 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100008D04(v30, qword_1003FAA58);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "processZoneRecordDelete did not find existing local record", v33, 2u);
      }

      type metadata accessor for AACustodianError(0);
      v49 = -7003;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1002FF768(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
      _BridgedStoredNSError.init(_:userInfo:)();
      v34 = v50;
      v48(v50, 1);
    }

    else
    {
      v35 = v46;
      sub_1002FE0A0(v16, v46, type metadata accessor for CustodianshipInfoRecord);
      v36 = v45;
      if (*(v35 + *(v7 + 36)) == (v45 & 1))
      {
        sub_1000080F8((v43 + 56), *(v43 + 80));
        sub_100307274(v44, v48, v47);
      }

      else
      {
        if (qword_1003D7F28 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_100008D04(v37, qword_1003FAA58);
        sub_1002FDED4(v35, v11, type metadata accessor for CustodianshipInfoRecord);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 67109376;
          v41 = v11[*(v7 + 36)];
          sub_1002FE134(v11, type metadata accessor for CustodianshipInfoRecord);
          *(v40 + 4) = v41;
          *(v40 + 8) = 1024;
          *(v40 + 10) = v36 & 1;
          _os_log_impl(&_mh_execute_header, v38, v39, "processZoneRecordDelete not deleting record because currentRecord is in manatee %{BOOL}d and request was for %{BOOL}d", v40, 0xEu);
        }

        else
        {
          sub_1002FE134(v11, type metadata accessor for CustodianshipInfoRecord);
        }

        type metadata accessor for AACustodianError(0);
        v49 = -7003;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_1002FF768(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
        _BridgedStoredNSError.init(_:userInfo:)();
        v42 = v50;
        v48(v50, 1);
      }

      sub_1002FE134(v35, type metadata accessor for CustodianshipInfoRecord);
    }

    return sub_100008D3C(v18, &qword_1003D9270, &qword_10033ECF0);
  }
}

uint64_t sub_1002F639C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a6;
  v27 = a3;
  v28 = a5;
  v25[1] = a4;
  v26 = a2;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v6 + 32);
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v16, v15, v12);
  v20 = (v19 + v17);
  v21 = v27;
  *v20 = v26;
  v20[1] = v21;
  *(v19 + v18) = v6;
  aBlock[4] = v28;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = v30;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v35 = _swiftEmptyArrayStorage;
  sub_1002FF768(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  v23 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v34 + 8))(v9, v23);
  (*(v31 + 8))(v11, v33);
}

uint64_t sub_1002F6748(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v88 = a4;
  v95 = a3;
  v97 = a2;
  v94 = sub_100005814(&qword_1003E86E8, &unk_10034A410);
  __chkstk_darwin(v94);
  v96 = &v81 - v5;
  v6 = type metadata accessor for UUID();
  v83 = *(v6 - 8);
  v84 = v6;
  __chkstk_darwin(v6);
  v82 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BenefactorInfoRecord(0);
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = __chkstk_darwin(v8);
  v89 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v90 = &v81 - v11;
  v12 = type metadata accessor for URL();
  v101 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v86 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v81 - v16;
  v18 = __chkstk_darwin(v15);
  v93 = &v81 - v19;
  v20 = __chkstk_darwin(v18);
  v87 = &v81 - v21;
  __chkstk_darwin(v20);
  v23 = &v81 - v22;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_100008D04(v24, qword_1003FAAE8);
  v98 = *(v101 + 16);
  v99 = (v101 + 16);
  v98(v23, a1, v12);
  v100 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v85 = v17;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v81 = a1;
    v31 = v30;
    v102[0] = v30;
    *v29 = 136315138;
    sub_1002FF768(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v35 = *(v101 + 8);
    v35(v23, v12);
    v36 = sub_10021145C(v32, v34, v102);

    *(v29 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v26, v27, "Local Cache: Fetching record at path: %s", v29, 0xCu);
    sub_10000839C(v31);
    a1 = v81;
  }

  else
  {

    v35 = *(v101 + 8);
    v35(v23, v12);
  }

  v37 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v38 = String._bridgeToObjectiveC()();

  v39 = [v37 fileExistsAtPath:v38];

  v40 = v93;
  if (v39)
  {
    v41 = v87;
    v98(v87, a1, v12);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v102[0] = v45;
      *v44 = 136315138;
      sub_1002FF768(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = a1;
      v49 = v48;
      v35(v41, v12);
      v50 = sub_10021145C(v46, v49, v102);
      a1 = v47;

      *(v44 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "Local Cache: Decoding file record at path: %s", v44, 0xCu);
      sub_10000839C(v45);
    }

    else
    {

      v35(v41, v12);
    }

    v59 = v90;
    sub_100032368(a1);
    v60 = v89;
    sub_1002FDED4(v59, v89, type metadata accessor for BenefactorInfoRecord);
    v62 = v85;
    v98(v85, a1, v12);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v99 = v35;
      v100 = v66;
      v102[0] = v66;
      *v65 = 136315394;
      v67 = v83;
      v68 = v84;
      v69 = v82;
      (*(v83 + 16))(v82, v60 + *(v92 + 28), v84);
      sub_1002FE134(v60, type metadata accessor for BenefactorInfoRecord);
      sub_1002FF768(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      (*(v67 + 8))(v69, v68);
      v73 = sub_10021145C(v70, v72, v102);

      *(v65 + 4) = v73;
      *(v65 + 12) = 2080;
      sub_1002FF768(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      v99(v62, v12);
      v77 = sub_10021145C(v74, v76, v102);
      v78 = v92;

      *(v65 + 14) = v77;
      _os_log_impl(&_mh_execute_header, v63, v64, "Local Cache: Decoding record successfully: %s, path %s", v65, 0x16u);
      swift_arrayDestroy();

      v59 = v90;
    }

    else
    {
      sub_1002FE134(v60, type metadata accessor for BenefactorInfoRecord);

      v35(v62, v12);
      v78 = v92;
    }

    v80 = v96;
    sub_1002FDED4(v59, v96, type metadata accessor for BenefactorInfoRecord);
    (*(v91 + 56))(v80, 0, 1, v78);
    swift_storeEnumTagMultiPayload();
    v97(v80);
    sub_100008D3C(v80, &qword_1003E86E8, &unk_10034A410);
    return sub_1002FE134(v59, type metadata accessor for BenefactorInfoRecord);
  }

  else
  {
    v98(v93, a1, v12);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v102[0] = v54;
      *v53 = 136315138;
      sub_1002FF768(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      v35(v40, v12);
      v58 = sub_10021145C(v55, v57, v102);

      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v51, v52, "Record %s not found.", v53, 0xCu);
      sub_10000839C(v54);
    }

    else
    {

      v35(v40, v12);
    }

    v61 = v96;
    (*(v91 + 56))(v96, 1, 1, v92);
    swift_storeEnumTagMultiPayload();
    v97(v61);
    return sub_100008D3C(v61, &qword_1003E86E8, &unk_10034A410);
  }
}

uint64_t sub_1002F750C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v88 = a4;
  v95 = a3;
  v97 = a2;
  v94 = sub_100005814(&qword_1003E86D8, &qword_10034A400);
  __chkstk_darwin(v94);
  v96 = &v81 - v5;
  v6 = type metadata accessor for UUID();
  v83 = *(v6 - 8);
  v84 = v6;
  __chkstk_darwin(v6);
  v82 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BeneficiaryManifestRecord(0);
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = __chkstk_darwin(v8);
  v89 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v90 = &v81 - v11;
  v12 = type metadata accessor for URL();
  v101 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v86 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v81 - v16;
  v18 = __chkstk_darwin(v15);
  v93 = &v81 - v19;
  v20 = __chkstk_darwin(v18);
  v87 = &v81 - v21;
  __chkstk_darwin(v20);
  v23 = &v81 - v22;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_100008D04(v24, qword_1003FAAE8);
  v98 = *(v101 + 16);
  v99 = (v101 + 16);
  v98(v23, a1, v12);
  v100 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v85 = v17;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v81 = a1;
    v31 = v30;
    v102[0] = v30;
    *v29 = 136315138;
    sub_1002FF768(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v35 = *(v101 + 8);
    v35(v23, v12);
    v36 = sub_10021145C(v32, v34, v102);

    *(v29 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v26, v27, "Local Cache: Fetching record at path: %s", v29, 0xCu);
    sub_10000839C(v31);
    a1 = v81;
  }

  else
  {

    v35 = *(v101 + 8);
    v35(v23, v12);
  }

  v37 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v38 = String._bridgeToObjectiveC()();

  v39 = [v37 fileExistsAtPath:v38];

  v40 = v93;
  if (v39)
  {
    v41 = v87;
    v98(v87, a1, v12);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v102[0] = v45;
      *v44 = 136315138;
      sub_1002FF768(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = a1;
      v49 = v48;
      v35(v41, v12);
      v50 = sub_10021145C(v46, v49, v102);
      a1 = v47;

      *(v44 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "Local Cache: Decoding file record at path: %s", v44, 0xCu);
      sub_10000839C(v45);
    }

    else
    {

      v35(v41, v12);
    }

    v59 = v90;
    sub_10003247C(a1);
    v60 = v89;
    sub_1002FDED4(v59, v89, type metadata accessor for BeneficiaryManifestRecord);
    v62 = v85;
    v98(v85, a1, v12);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v99 = v35;
      v100 = v66;
      v102[0] = v66;
      *v65 = 136315394;
      v67 = v83;
      v68 = v84;
      v69 = v82;
      (*(v83 + 16))(v82, v60 + *(v92 + 24), v84);
      sub_1002FE134(v60, type metadata accessor for BeneficiaryManifestRecord);
      sub_1002FF768(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      (*(v67 + 8))(v69, v68);
      v73 = sub_10021145C(v70, v72, v102);

      *(v65 + 4) = v73;
      *(v65 + 12) = 2080;
      sub_1002FF768(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      v99(v62, v12);
      v77 = sub_10021145C(v74, v76, v102);
      v78 = v92;

      *(v65 + 14) = v77;
      _os_log_impl(&_mh_execute_header, v63, v64, "Local Cache: Decoding record successfully: %s, path %s", v65, 0x16u);
      swift_arrayDestroy();

      v59 = v90;
    }

    else
    {
      sub_1002FE134(v60, type metadata accessor for BeneficiaryManifestRecord);

      v35(v62, v12);
      v78 = v92;
    }

    v80 = v96;
    sub_1002FDED4(v59, v96, type metadata accessor for BeneficiaryManifestRecord);
    (*(v91 + 56))(v80, 0, 1, v78);
    swift_storeEnumTagMultiPayload();
    v97(v80);
    sub_100008D3C(v80, &qword_1003E86D8, &qword_10034A400);
    return sub_1002FE134(v59, type metadata accessor for BeneficiaryManifestRecord);
  }

  else
  {
    v98(v93, a1, v12);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v102[0] = v54;
      *v53 = 136315138;
      sub_1002FF768(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      v35(v40, v12);
      v58 = sub_10021145C(v55, v57, v102);

      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v51, v52, "Record %s not found.", v53, 0xCu);
      sub_10000839C(v54);
    }

    else
    {

      v35(v40, v12);
    }

    v61 = v96;
    (*(v91 + 56))(v96, 1, 1, v92);
    swift_storeEnumTagMultiPayload();
    v97(v61);
    return sub_100008D3C(v61, &qword_1003E86D8, &qword_10034A400);
  }
}

uint64_t sub_1002F82D0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v88 = a4;
  v95 = a3;
  v97 = a2;
  v94 = sub_100005814(&qword_1003E86D0, &unk_10034A3F0);
  __chkstk_darwin(v94);
  v96 = &v81 - v5;
  v6 = type metadata accessor for UUID();
  v83 = *(v6 - 8);
  v84 = v6;
  __chkstk_darwin(v6);
  v82 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BeneficiaryInfoRecord(0);
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = __chkstk_darwin(v8);
  v89 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v90 = &v81 - v11;
  v12 = type metadata accessor for URL();
  v101 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v86 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v81 - v16;
  v18 = __chkstk_darwin(v15);
  v93 = &v81 - v19;
  v20 = __chkstk_darwin(v18);
  v87 = &v81 - v21;
  __chkstk_darwin(v20);
  v23 = &v81 - v22;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_100008D04(v24, qword_1003FAAE8);
  v98 = *(v101 + 16);
  v99 = (v101 + 16);
  v98(v23, a1, v12);
  v100 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v85 = v17;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v81 = a1;
    v31 = v30;
    v102[0] = v30;
    *v29 = 136315138;
    sub_1002FF768(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v35 = *(v101 + 8);
    v35(v23, v12);
    v36 = sub_10021145C(v32, v34, v102);

    *(v29 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v26, v27, "Local Cache: Fetching record at path: %s", v29, 0xCu);
    sub_10000839C(v31);
    a1 = v81;
  }

  else
  {

    v35 = *(v101 + 8);
    v35(v23, v12);
  }

  v37 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v38 = String._bridgeToObjectiveC()();

  v39 = [v37 fileExistsAtPath:v38];

  v40 = v93;
  if (v39)
  {
    v41 = v87;
    v98(v87, a1, v12);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v102[0] = v45;
      *v44 = 136315138;
      sub_1002FF768(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = a1;
      v49 = v48;
      v35(v41, v12);
      v50 = sub_10021145C(v46, v49, v102);
      a1 = v47;

      *(v44 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "Local Cache: Decoding file record at path: %s", v44, 0xCu);
      sub_10000839C(v45);
    }

    else
    {

      v35(v41, v12);
    }

    v59 = v90;
    sub_1000323C4(a1);
    v60 = v89;
    sub_1002FDED4(v59, v89, type metadata accessor for BeneficiaryInfoRecord);
    v62 = v85;
    v98(v85, a1, v12);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v99 = v35;
      v100 = v66;
      v102[0] = v66;
      *v65 = 136315394;
      v67 = v83;
      v68 = v84;
      v69 = v82;
      (*(v83 + 16))(v82, v60 + *(v92 + 32), v84);
      sub_1002FE134(v60, type metadata accessor for BeneficiaryInfoRecord);
      sub_1002FF768(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      (*(v67 + 8))(v69, v68);
      v73 = sub_10021145C(v70, v72, v102);

      *(v65 + 4) = v73;
      *(v65 + 12) = 2080;
      sub_1002FF768(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      v99(v62, v12);
      v77 = sub_10021145C(v74, v76, v102);
      v78 = v92;

      *(v65 + 14) = v77;
      _os_log_impl(&_mh_execute_header, v63, v64, "Local Cache: Decoding record successfully: %s, path %s", v65, 0x16u);
      swift_arrayDestroy();

      v59 = v90;
    }

    else
    {
      sub_1002FE134(v60, type metadata accessor for BeneficiaryInfoRecord);

      v35(v62, v12);
      v78 = v92;
    }

    v80 = v96;
    sub_1002FDED4(v59, v96, type metadata accessor for BeneficiaryInfoRecord);
    (*(v91 + 56))(v80, 0, 1, v78);
    swift_storeEnumTagMultiPayload();
    v97(v80);
    sub_100008D3C(v80, &qword_1003E86D0, &unk_10034A3F0);
    return sub_1002FE134(v59, type metadata accessor for BeneficiaryInfoRecord);
  }

  else
  {
    v98(v93, a1, v12);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v102[0] = v54;
      *v53 = 136315138;
      sub_1002FF768(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      v35(v40, v12);
      v58 = sub_10021145C(v55, v57, v102);

      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v51, v52, "Record %s not found.", v53, 0xCu);
      sub_10000839C(v54);
    }

    else
    {

      v35(v40, v12);
    }

    v61 = v96;
    (*(v91 + 56))(v96, 1, 1, v92);
    swift_storeEnumTagMultiPayload();
    v97(v61);
    return sub_100008D3C(v61, &qword_1003E86D0, &unk_10034A3F0);
  }
}

uint64_t sub_1002F9094(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v88 = a4;
  v95 = a3;
  v97 = a2;
  v94 = sub_100005814(&qword_1003E1288, &unk_10034A3E0);
  __chkstk_darwin(v94);
  v96 = &v81 - v5;
  v6 = type metadata accessor for UUID();
  v83 = *(v6 - 8);
  v84 = v6;
  __chkstk_darwin(v6);
  v82 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InheritanceInvitationRecord(0);
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = __chkstk_darwin(v8);
  v89 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v90 = &v81 - v11;
  v12 = type metadata accessor for URL();
  v101 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v86 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v81 - v16;
  v18 = __chkstk_darwin(v15);
  v93 = &v81 - v19;
  v20 = __chkstk_darwin(v18);
  v87 = &v81 - v21;
  __chkstk_darwin(v20);
  v23 = &v81 - v22;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_100008D04(v24, qword_1003FAAE8);
  v98 = *(v101 + 16);
  v99 = (v101 + 16);
  v98(v23, a1, v12);
  v100 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v85 = v17;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v81 = a1;
    v31 = v30;
    v102[0] = v30;
    *v29 = 136315138;
    sub_1002FF768(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v35 = *(v101 + 8);
    v35(v23, v12);
    v36 = sub_10021145C(v32, v34, v102);

    *(v29 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v26, v27, "Local Cache: Fetching record at path: %s", v29, 0xCu);
    sub_10000839C(v31);
    a1 = v81;
  }

  else
  {

    v35 = *(v101 + 8);
    v35(v23, v12);
  }

  v37 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v38 = String._bridgeToObjectiveC()();

  v39 = [v37 fileExistsAtPath:v38];

  v40 = v93;
  if (v39)
  {
    v41 = v87;
    v98(v87, a1, v12);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v102[0] = v45;
      *v44 = 136315138;
      sub_1002FF768(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = a1;
      v49 = v48;
      v35(v41, v12);
      v50 = sub_10021145C(v46, v49, v102);
      a1 = v47;

      *(v44 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v42, v43, "Local Cache: Decoding file record at path: %s", v44, 0xCu);
      sub_10000839C(v45);
    }

    else
    {

      v35(v41, v12);
    }

    v59 = v90;
    sub_100032420(a1);
    v60 = v89;
    sub_1002FDED4(v59, v89, type metadata accessor for InheritanceInvitationRecord);
    v62 = v85;
    v98(v85, a1, v12);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v99 = v35;
      v100 = v66;
      v102[0] = v66;
      *v65 = 136315394;
      v67 = v83;
      v68 = v84;
      v69 = v82;
      (*(v83 + 16))(v82, v60 + *(v92 + 36), v84);
      sub_1002FE134(v60, type metadata accessor for InheritanceInvitationRecord);
      sub_1002FF768(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      (*(v67 + 8))(v69, v68);
      v73 = sub_10021145C(v70, v72, v102);

      *(v65 + 4) = v73;
      *(v65 + 12) = 2080;
      sub_1002FF768(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v74 = dispatch thunk of CustomStringConvertible.description.getter();
      v76 = v75;
      v99(v62, v12);
      v77 = sub_10021145C(v74, v76, v102);
      v78 = v92;

      *(v65 + 14) = v77;
      _os_log_impl(&_mh_execute_header, v63, v64, "Local Cache: Decoding record successfully: %s, path %s", v65, 0x16u);
      swift_arrayDestroy();

      v59 = v90;
    }

    else
    {
      sub_1002FE134(v60, type metadata accessor for InheritanceInvitationRecord);

      v35(v62, v12);
      v78 = v92;
    }

    v80 = v96;
    sub_1002FDED4(v59, v96, type metadata accessor for InheritanceInvitationRecord);
    (*(v91 + 56))(v80, 0, 1, v78);
    swift_storeEnumTagMultiPayload();
    v97(v80);
    sub_100008D3C(v80, &qword_1003E1288, &unk_10034A3E0);
    return sub_1002FE134(v59, type metadata accessor for InheritanceInvitationRecord);
  }

  else
  {
    v98(v93, a1, v12);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v102[0] = v54;
      *v53 = 136315138;
      sub_1002FF768(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      v35(v40, v12);
      v58 = sub_10021145C(v55, v57, v102);

      *(v53 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v51, v52, "Record %s not found.", v53, 0xCu);
      sub_10000839C(v54);
    }

    else
    {

      v35(v40, v12);
    }

    v61 = v96;
    (*(v91 + 56))(v96, 1, 1, v92);
    swift_storeEnumTagMultiPayload();
    v97(v61);
    return sub_100008D3C(v61, &qword_1003E1288, &unk_10034A3E0);
  }
}

uint64_t sub_1002F9E58(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(uint64_t), uint64_t (*a9)(void))
{
  v99 = a4;
  v100 = a8;
  v10 = a5;
  v110 = a3;
  v111 = a2;
  v107 = a6;
  v108 = sub_100005814(a5, a6);
  __chkstk_darwin(v108);
  v109 = &v93 - v12;
  v95 = type metadata accessor for UUID();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a7(0);
  v103 = *(v14 - 8);
  v104 = v14;
  v15 = __chkstk_darwin(v14);
  v96 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v102 = &v93 - v17;
  v18 = type metadata accessor for URL();
  v115 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v97 = &v93 - v23;
  v24 = __chkstk_darwin(v22);
  v98 = &v93 - v25;
  v26 = __chkstk_darwin(v24);
  v105 = &v93 - v27;
  __chkstk_darwin(v26);
  v29 = &v93 - v28;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_100008D04(v30, qword_1003FAAE8);
  v113 = *(v115 + 16);
  v113(v29, a1, v18);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v112 = v10;
  v101 = v21;
  v106 = v31;
  if (v34)
  {
    v35 = a1;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v116[0] = v37;
    *v36 = 136315138;
    sub_1002FF768(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v114 = *(v115 + 8);
    v114(v29, v18);
    v41 = sub_10021145C(v38, v40, v116);

    *(v36 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v32, v33, "Local Cache: Fetching record at path: %s", v36, 0xCu);
    sub_10000839C(v37);
    v10 = v112;

    a1 = v35;
  }

  else
  {

    v114 = *(v115 + 8);
    v114(v29, v18);
  }

  v42 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v43 = String._bridgeToObjectiveC()();

  v44 = [v42 fileExistsAtPath:v43];

  v45 = v105;
  if (v44)
  {
    v113(v105, a1, v18);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v116[0] = v49;
      *v48 = 136315138;
      sub_1002FF768(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = a1;
      v53 = v52;
      v54 = v45;
      v55 = v18;
      v114(v54, v18);
      v56 = sub_10021145C(v50, v53, v116);
      a1 = v51;

      *(v48 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v46, v47, "Local Cache: Decoding file record at path: %s", v48, 0xCu);
      sub_10000839C(v49);
    }

    else
    {

      v66 = v45;
      v55 = v18;
      v114(v66, v18);
    }

    v67 = v102;
    v100(a1);
    v69 = v96;
    sub_1002FDED4(v67, v96, a9);
    v70 = a1;
    v71 = v97;
    v72 = v55;
    v113(v97, v70, v55);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v116[0] = v113;
      *v75 = 136315394;
      v76 = v94;
      v77 = v69;
      v78 = v93;
      v79 = v95;
      (*(v94 + 16))(v93, v77, v95);
      sub_1002FE134(v77, a9);
      sub_1002FF768(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v80 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v81;
      (*(v76 + 8))(v78, v79);
      v83 = sub_10021145C(v80, v82, v116);

      *(v75 + 4) = v83;
      *(v75 + 12) = 2080;
      sub_1002FF768(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v84 = v97;
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v86;
      v114(v84, v72);
      v88 = sub_10021145C(v85, v87, v116);

      *(v75 + 14) = v88;
      v67 = v102;
      _os_log_impl(&_mh_execute_header, v73, v74, "Local Cache: Decoding record successfully: %s, path %s", v75, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1002FE134(v69, a9);

      v114(v71, v55);
    }

    v90 = v67;
    v91 = v67;
    v92 = v109;
    sub_1002FDED4(v90, v109, a9);
    (*(v103 + 56))(v92, 0, 1, v104);
    swift_storeEnumTagMultiPayload();
    v111(v92);
    sub_100008D3C(v92, v112, v107);
    return sub_1002FE134(v91, a9);
  }

  else
  {
    v57 = v98;
    v113(v98, a1, v18);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v116[0] = v61;
      *v60 = 136315138;
      sub_1002FF768(&qword_1003DD590, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v114(v57, v18);
      v65 = sub_10021145C(v62, v64, v116);

      *(v60 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v58, v59, "Record %s not found.", v60, 0xCu);
      sub_10000839C(v61);
    }

    else
    {

      v114(v57, v18);
    }

    v68 = v109;
    (*(v103 + 56))(v109, 1, 1, v104);
    swift_storeEnumTagMultiPayload();
    v111(v68);
    return sub_100008D3C(v68, v10, v107);
  }
}

uint64_t sub_1002FABF8(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
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
    sub_1002FBD44(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1002FACD8(void *a1, uint64_t a2)
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

      type metadata accessor for CustodianRecoverySession(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v20;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v17 = sub_100117654(v7, result + 1);
    v18 = *(v17 + 16);
    if (*(v17 + 24) <= v18)
    {
      sub_1002FB534(v18 + 1);
    }

    sub_100117858(v19, v17);

    *v3 = v17;
    goto LABEL_16;
  }

  Hasher.init(_seed:)();
  v10 = ObjectIdentifier.hashValue.getter();
  Hasher._combine(_:)(v10);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;

    sub_1002FBE74(v16, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v21;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (*(*(v6 + 48) + 8 * v13) != a2)
  {
    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_1002FAEE0(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1002FBFD4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1002FB030(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1002FF768(&qword_1003DB0B8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
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
      sub_1002FF768(&qword_1003DB088, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
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
    sub_1002FC154(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1002FB310(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100005814(&qword_1003E8700, qword_10034A448);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = static Hasher._hash(seed:_:)();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_1002FB534(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100005814(&qword_1003DE4C0, &qword_100342EA0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      v18 = ObjectIdentifier.hashValue.getter();
      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
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
        return result;
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
  return result;
}

Swift::Int sub_1002FB788(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100005814(&unk_1003DC2C0, &unk_10034A390);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v12 = result + 56;
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
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1002FB9E8(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100005814(&qword_1003E86F8, &qword_10034A440);
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
      sub_1002FF768(&qword_1003DB0B8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
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

void sub_1002FBD44(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1002FB310(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1002FC3F8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1002FCA1C(v5 + 1);
  }

  v8 = *v3;
  v9 = static Hasher._hash(seed:_:)();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for Status(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
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
  *(*(v13 + 48) + 8 * a2) = result;
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

Swift::Int sub_1002FBE74(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1002FB534(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1002FC538();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1002FCC0C(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  v9 = ObjectIdentifier.hashValue.getter();
  Hasher._combine(_:)(v9);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = result & ~v10;
    result = type metadata accessor for CustodianRecoverySession(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != v4)
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
  *(*(v13 + 48) + 8 * a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1002FBFD4(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1002FB788(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1002FC688();
      goto LABEL_16;
    }

    sub_1002FCE34(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002FC154(uint64_t a1, unint64_t a2, char a3)
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
    sub_1002FB9E8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1002FC7E4();
      goto LABEL_12;
    }

    sub_1002FD06C(v10 + 1);
  }

  v12 = *v3;
  sub_1002FF768(&qword_1003DB0B8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
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
      sub_1002FF768(&qword_1003DB088, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
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

void *sub_1002FC3F8()
{
  v1 = v0;
  sub_100005814(&qword_1003E8700, qword_10034A448);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

void *sub_1002FC538()
{
  v1 = v0;
  sub_100005814(&qword_1003DE4C0, &qword_100342EA0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

  return result;
}

void *sub_1002FC688()
{
  v1 = v0;
  sub_100005814(&unk_1003DC2C0, &unk_10034A390);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

void *sub_1002FC7E4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005814(&qword_1003E86F8, &qword_10034A440);
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

uint64_t sub_1002FCA1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100005814(&qword_1003E8700, qword_10034A448);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = static Hasher._hash(seed:_:)();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

Swift::Int sub_1002FCC0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100005814(&qword_1003DE4C0, &qword_100342EA0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
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
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();

      v17 = ObjectIdentifier.hashValue.getter();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
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

  return result;
}