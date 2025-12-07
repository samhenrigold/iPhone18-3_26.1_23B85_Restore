uint64_t sub_1001CFD54(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v6 = v4;
  v10 = type metadata accessor for JPKIInternalTypes.InternalError();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v27 - v15;
  v28 = xmmword_1004098E0;
  sub_10007A474(a2, a3, &off_1004C4858, a1, &v28);
  if (!v4)
  {
    v17 = *(&v28 + 1);
    if (*(&v28 + 1) >> 60 != 15)
    {
      v10 = v28;
      sub_100069E2C(v28, *(&v28 + 1));
      sub_10006A2D0(v10, v17);
      return v10;
    }

    sub_1001D07D8();
    v6 = swift_allocError();
    *v18 = 0xD000000000000013;
    v18[1] = 0x8000000100466630;
    (*(v11 + 104))(v18, enum case for JPKIInternalTypes.InternalError.internalError(_:), v10);
    swift_willThrow();
  }

  sub_10006A2D0(v28, *(&v28 + 1));
  *&v28 = v6;
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {

    (*(v11 + 32))(v13, v16, v10);
    (*(v11 + 16))(a4, v13, v10);
    sub_1001D07D8();
    swift_willThrowTypedImpl();
    (*(v11 + 8))(v13, v10);
  }

  else
  {

    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    *&v28 = 0xD000000000000021;
    *(&v28 + 1) = 0x8000000100466600;
    v29 = sub_100288788(a2, a3);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v19 = BidirectionalCollection<>.joined(separator:)();
    v21 = v20;

    v22._countAndFlagsBits = v19;
    v22._object = v21;
    String.append(_:)(v22);

    v23._countAndFlagsBits = 2112032;
    v23._object = 0xE300000000000000;
    String.append(_:)(v23);
    swift_getErrorValue();
    v24._countAndFlagsBits = Error.localizedDescription.getter();
    String.append(_:)(v24);

    v25 = *(&v28 + 1);
    *a4 = v28;
    a4[1] = v25;
    (*(v11 + 104))(a4, enum case for JPKIInternalTypes.InternalError.internalError(_:), v10);
    sub_1001D07D8();
    swift_willThrowTypedImpl();
  }

  return v10;
}

uint64_t sub_1001D014C(uint64_t a1)
{
  v2 = SESKeyGetDesignatedKeys();
  if (!v2)
  {
    goto LABEL_24;
  }

  v3 = v2;
  sub_10009393C(0, &qword_100504178, SESDesignatedKey_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

LABEL_22:
  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
LABEL_23:

LABEL_24:
    notify_post("com.apple.private.seservice.designatedkeynotfound");
    v29 = enum case for JPKIInternalTypes.InternalError.designatedKeyNotFound(_:);
    v30 = type metadata accessor for JPKIInternalTypes.InternalError();
    (*(*(v30 - 8) + 104))(a1, v29, v30);
    sub_1001D07D8();
    swift_willThrowTypedImpl();
    return a1;
  }

LABEL_4:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if ([v7 designation] == 2)
    {
      break;
    }

    ++v6;
    if (v9 == v5)
    {
      goto LABEL_23;
    }
  }

  v10 = objc_opt_self();
  v11 = [v8 assetACL];
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v12, v14);
  v32 = 0;
  v16 = [v10 getACLfromAssetACL:isa error:&v32];

  v17 = v32;
  if (v16)
  {
    a1 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v18 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100501A60 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000958E4(v19, qword_1005064B8);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v24 = Error.localizedDescription.getter();
      v26 = sub_1002FFA0C(v24, v25, &v32);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to decode assetACL? %s", v22, 0xCu);
      sub_1000752F4(v23);
    }

    v27 = enum case for JPKIInternalTypes.InternalError.designatedKeyCorrupt(_:);
    v28 = type metadata accessor for JPKIInternalTypes.InternalError();
    (*(*(v28 - 8) + 104))(a1, v27, v28);
    sub_1001D07D8();
    swift_willThrowTypedImpl();
  }

  return a1;
}

uint64_t sub_1001D059C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  result = sub_1001AD500(a1, a2, 227);
  if (!v3)
  {
    v7 = result;
    v8 = v6;
    v9 = sub_1001AD500(result, v6, 218);
    v11 = v10;
    sub_10006A178(v7, v8);
    v12 = *a3;
    v13 = a3[1];
    *a3 = v9;
    a3[1] = v11;
    return sub_10006A2D0(v12, v13);
  }

  return result;
}

Swift::Int sub_1001D0648()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_10040E59E[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1001D06D0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_10040E59E[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1001D071C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001D095C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001D0760(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_1005064B8);
  sub_1000958E4(v2, qword_1005064B8);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

unint64_t sub_1001D07D8()
{
  result = qword_100506530;
  if (!qword_100506530)
  {
    type metadata accessor for JPKIInternalTypes.InternalError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506530);
  }

  return result;
}

RAPDU *sub_1001D0830()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = 0;
  v2 = sub_1000596F0(ObjCClassFromMetadata, isa, &v6);

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

unint64_t sub_1001D0908()
{
  result = qword_100506540;
  if (!qword_100506540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506540);
  }

  return result;
}

uint64_t sub_1001D095C(unsigned __int8 a1)
{
  if (a1 <= 0xAu)
  {
    if (a1 > 7u)
    {
      if (a1 == 8)
      {
        return 8;
      }

      if (a1 == 10)
      {
        return 0;
      }
    }

    else
    {
      if (a1 == 1)
      {
        return 2;
      }

      if (a1 == 2)
      {
        return 3;
      }
    }
  }

  else if (a1 <= 0x17u)
  {
    if (a1 == 11)
    {
      return 1;
    }

    if (a1 == 23)
    {
      return 6;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x18u:
        return 4;
      case 0x1Au:
        return 7;
      case 0x1Bu:
        return 5;
    }
  }

  return 9;
}

BOOL sub_1001D0A10()
{
  v0 = [objc_opt_self() sharedHardwareManagerWithNoUI];
  if ([v0 getHwSupport]!= 2)
  {
LABEL_8:

    return 0;
  }

  v12 = 0;
  v1 = [v0 getRadioEnabledState:&v12];
  if (v1)
  {
    v2 = v1;
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000958E4(v3, qword_10051B2C8);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v4;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&_mh_execute_header, v5, v6, "NF Domain error %@ encountered while getting radio enabled state", v7, 0xCu);
      sub_1000C2998(v8);

      v4 = v5;
      v5 = v0;
      v0 = v9;
    }

    goto LABEL_8;
  }

  return v12 == 1;
}

id sub_1001D0C0C(id result, unint64_t a2, uint64_t a3, void (*a4)(id *, id *, uint64_t))
{
  v14 = result;
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v11)
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        result = *(a2 + 8 * j + 32);
      }

      v9 = result;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = result;
      a4(&v14, &v13, a3);

      if (v4)
      {
      }

      if (v10 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v11 = result;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  return result;
}

void *sub_1001D0D38(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = a1;
  sub_10019F3C0(0, v3, 0);
  v5 = v4 + 56;
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v27 = v4 + 64;
  v28 = v3;
  v29 = v4;
  v30 = v4 + 56;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v31 = v8;
    v33 = *(v4 + 36);
    v11 = (*(v4 + 48) + 16 * v7);
    v12 = *v11;
    v13 = v11[1];
    sub_100069E2C(*v11, v13);
    sub_100069E2C(v12, v13);
    v32 = v2;
    sub_100288788(v12, v13);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v14 = BidirectionalCollection<>.joined(separator:)();
    v16 = v15;

    sub_10006A178(v12, v13);
    result = sub_10006A178(v12, v13);
    v18 = _swiftEmptyArrayStorage[2];
    v17 = _swiftEmptyArrayStorage[3];
    if (v18 >= v17 >> 1)
    {
      result = sub_10019F3C0((v17 > 1), v18 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v18 + 1;
    v19 = &_swiftEmptyArrayStorage[2 * v18];
    v19[4] = v14;
    v19[5] = v16;
    v4 = v29;
    v5 = v30;
    v9 = 1 << *(v29 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v20 = *(v30 + 8 * v10);
    if ((v20 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v33 != *(v29 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v7 & 0x3F));
    if (v21)
    {
      v9 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v2 = v32;
    }

    else
    {
      v22 = v10 << 6;
      v23 = v10 + 1;
      v24 = (v27 + 8 * v10);
      v2 = v32;
      while (v23 < (v9 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_1000937D4(v7, v33, 0);
          v9 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_1000937D4(v7, v33, 0);
    }

LABEL_4:
    v8 = v31 + 1;
    v7 = v9;
    if (v31 + 1 == v28)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1001D1000(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_10019F4A4(0, v1, 0);
    v3 = v2 + 64;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v22 = v2 + 72;
    v23 = v1;
    v24 = v2 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v25 = v5;
      v26 = *(v2 + 36);
      v8 = *(*(v2 + 56) + 8 * v4);
      v9 = v2;
      v10 = *(v8 + 16);
      v11 = *(v8 + 24);
      sub_100069E2C(v10, v11);
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_10019F4A4((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v10;
      v14[5] = v11;
      v6 = 1 << *(v9 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v2 = v9;
      v3 = v24;
      v15 = *(v24 + 8 * v7);
      if ((v15 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v26 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v16 = v15 & (-2 << (v4 & 0x3F));
      if (v16)
      {
        v6 = __clz(__rbit64(v16)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v7 << 6;
        v18 = v7 + 1;
        v19 = (v22 + 8 * v7);
        while (v18 < (v6 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_1000937D4(v4, v26, 0);
            v6 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        sub_1000937D4(v4, v26, 0);
      }

LABEL_4:
      v5 = v25 + 1;
      v4 = v6;
      if (v25 + 1 == v23)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_1001D1228()
{
  v1 = v0;
  v70 = 0;
  v71 = 0xE000000000000000;
  _StringGuts.grow(_:)(117);
  v2._countAndFlagsBits = 0xD000000000000019;
  v2._object = 0x8000000100466820;
  String.append(_:)(v2);
  v70 = sub_100288788(*(v1 + 16), *(v1 + 24));
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  v3 = BidirectionalCollection<>.joined(separator:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x647373202020200ALL;
  v7._object = 0xEA0000000000203ALL;
  String.append(_:)(v7);
  v70 = sub_100288788(*(v1 + 32), *(v1 + 40));
  v8 = BidirectionalCollection<>.joined(separator:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._object = 0x8000000100466840;
  v12._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v12);
  v13 = *(v0 + 48);
  v14 = *(v13 + 16);
  v15 = _swiftEmptyArrayStorage;
  if (!v14)
  {
    goto LABEL_46;
  }

  v63 = v0;
  sub_10019F3C0(0, v14, 0);
  v16 = 0;
  v17 = _swiftEmptyArrayStorage;
  v65 = v13 + 32;
  v64 = v14;
  do
  {
    v18 = (v65 + 16 * v16);
    v20 = *v18;
    v19 = v18[1];
    v21 = v19 >> 62;
    v68 = HIDWORD(*v18);
    v67 = v16;
    if ((v19 >> 62) > 1)
    {
      if (v21 != 2)
      {
        goto LABEL_42;
      }

      v66 = v17;
      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      v22 = v23 - v24;
      if (__OFSUB__(v23, v24))
      {
        goto LABEL_62;
      }
    }

    else
    {
      v66 = v17;
      if (!v21)
      {
        v22 = BYTE6(v19);
        if (BYTE6(v19))
        {
          goto LABEL_14;
        }

        goto LABEL_41;
      }

      if (__OFSUB__(v68, v20))
      {
        goto LABEL_61;
      }

      v22 = v68 - v20;
    }

    sub_100069E2C(v20, v19);
    sub_100069E2C(v20, v19);
    if (v22)
    {
LABEL_14:
      v25 = v22 & ~(v22 >> 63);
      sub_10019F3C0(0, v25, 0);
      v15 = _swiftEmptyArrayStorage;
      if (v21 == 2)
      {
        v26 = *(v20 + 16);
LABEL_18:
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_60;
      }

      if (v21 == 1)
      {
        v26 = v20;
        goto LABEL_18;
      }

      if (v22 < 0)
      {
        goto LABEL_63;
      }

      v26 = 0;
      do
      {
LABEL_22:
        if (!v25)
        {
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
        }

        if (v21 == 2)
        {
          if (v26 < *(v20 + 16))
          {
            goto LABEL_54;
          }

          if (v26 >= *(v20 + 24))
          {
            goto LABEL_57;
          }

          v31 = __DataStorage._bytes.getter();
          if (!v31)
          {
            goto LABEL_65;
          }

          v28 = v31;
          v32 = __DataStorage._offset.getter();
          v30 = v26 - v32;
          if (__OFSUB__(v26, v32))
          {
            goto LABEL_59;
          }
        }

        else
        {
          if (v21 != 1)
          {
            if (v26 >= BYTE6(v19))
            {
              goto LABEL_55;
            }

            LOWORD(v70) = v20;
            BYTE2(v70) = BYTE2(v20);
            BYTE3(v70) = BYTE3(v20);
            BYTE4(v70) = v68;
            BYTE5(v70) = BYTE5(v20);
            BYTE6(v70) = BYTE6(v20);
            HIBYTE(v70) = HIBYTE(v20);
            LOWORD(v71) = v19;
            BYTE2(v71) = BYTE2(v19);
            BYTE3(v71) = BYTE3(v19);
            BYTE4(v71) = BYTE4(v19);
            BYTE5(v71) = BYTE5(v19);
            v33 = *(&v70 + v26);
            goto LABEL_38;
          }

          if (v26 < v20 || v26 >= v20 >> 32)
          {
            goto LABEL_56;
          }

          v27 = __DataStorage._bytes.getter();
          if (!v27)
          {
            goto LABEL_64;
          }

          v28 = v27;
          v29 = __DataStorage._offset.getter();
          v30 = v26 - v29;
          if (__OFSUB__(v26, v29))
          {
            goto LABEL_58;
          }
        }

        v33 = *(v28 + v30);
LABEL_38:
        sub_100068FC4(&qword_100502440, &unk_10040B240);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1004098F0;
        *(v34 + 56) = &type metadata for UInt8;
        *(v34 + 64) = &protocol witness table for UInt8;
        *(v34 + 32) = v33;
        v35 = String.init(format:_:)();
        v69 = v15;
        v38 = v15[2];
        v37 = v15[3];
        if (v38 >= v37 >> 1)
        {
          v62 = v35;
          v40 = v36;
          sub_10019F3C0((v37 > 1), v38 + 1, 1);
          v36 = v40;
          v35 = v62;
          v15 = v69;
        }

        v15[2] = v38 + 1;
        v39 = &v15[2 * v38];
        v39[4] = v35;
        v39[5] = v36;
        ++v26;
        --v25;
        --v22;
      }

      while (v22);
    }

LABEL_41:
    v14 = v64;
    v17 = v66;
LABEL_42:
    v70 = v15;
    v41 = BidirectionalCollection<>.joined(separator:)();
    v43 = v42;

    sub_10006A178(v20, v19);
    sub_10006A178(v20, v19);
    v45 = v17[2];
    v44 = v17[3];
    if (v45 >= v44 >> 1)
    {
      sub_10019F3C0((v44 > 1), v45 + 1, 1);
    }

    v16 = v67 + 1;
    v17[2] = v45 + 1;
    v46 = &v17[2 * v45];
    v46[4] = v41;
    v46[5] = v43;
    v15 = _swiftEmptyArrayStorage;
  }

  while (v67 + 1 != v14);
  v1 = v63;
LABEL_46:
  v47 = Array.description.getter();
  v49 = v48;

  v50._countAndFlagsBits = v47;
  v50._object = v49;
  String.append(_:)(v50);

  v51._countAndFlagsBits = 0xD000000000000016;
  v51._object = 0x8000000100466860;
  String.append(_:)(v51);
  swift_beginAccess();

  v52 = Array.description.getter();
  v54 = v53;

  v55._countAndFlagsBits = v52;
  v55._object = v54;
  String.append(_:)(v55);

  v56._countAndFlagsBits = 0x617473202020200ALL;
  v56._object = 0xED0000203A737574;
  String.append(_:)(v56);
  _print_unlocked<A, B>(_:_:)();
  v57._countAndFlagsBits = 0xD000000000000012;
  v57._object = 0x8000000100466880;
  String.append(_:)(v57);
  if (*(v1 + 72))
  {
    v58 = 1702195828;
  }

  else
  {
    v58 = 0x65736C6166;
  }

  if (*(v1 + 72))
  {
    v59 = 0xE400000000000000;
  }

  else
  {
    v59 = 0xE500000000000000;
  }

  v60 = v59;
  String.append(_:)(*&v58);

  return 0;
}

unint64_t sub_1001D193C()
{
  v1 = *v0;
  v2 = 0x416567616B636170;
  v3 = 0x6E49656C75646F6DLL;
  if (v1 != 5)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x657A696D6F527369;
  if (v1 != 3)
  {
    v4 = 0x737574617473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746169636F737361;
  if (v1 != 1)
  {
    v5 = 0x4941656C75646F6DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001D1A3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001DA928(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001D1A70(uint64_t a1)
{
  v2 = sub_1001D8304();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D1AAC(uint64_t a1)
{
  v2 = sub_1001D8304();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D1AE8()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));
  sub_10006A178(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1001D1B5C(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_1005069A0, &qword_10040E930);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  sub_1000752B0(a1, a1[3]);
  sub_1001D8304();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 24);
  v14 = *(v3 + 16);
  v15 = v9;
  LOBYTE(v13) = 0;
  sub_100069E2C(v14, v9);
  sub_1000B8890();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_10006A178(v14, v15);
  }

  else
  {
    sub_10006A178(v14, v15);
    v10 = *(v3 + 40);
    v14 = *(v3 + 32);
    v15 = v10;
    LOBYTE(v13) = 1;
    sub_100069E2C(v14, v10);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v14, v15);
    v14 = *(v3 + 48);
    LOBYTE(v13) = 2;
    sub_100068FC4(&qword_100502458, &qword_10040C1F0);
    sub_1001DB63C(&qword_100506988, sub_1000B8890, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = *(v3 + 57);
    LOBYTE(v13) = 4;
    sub_1001DB708();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_beginAccess();
    v13 = *(v3 + 64);
    v12[15] = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001D1E78(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_100506858, &unk_10040E8A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  *(v3 + 64) = _swiftEmptyArrayStorage;
  *(v3 + 72) = 0;
  v9 = a1[3];
  v16 = a1;
  sub_1000752B0(a1, v9);
  sub_1001D8304();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {

    type metadata accessor for SECleanup.Module();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v6;
    LOBYTE(v18) = 0;
    sub_1000B87D4();
    v11 = v5;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v3 + 16) = v17;
    LOBYTE(v18) = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v3 + 32) = v17;
    sub_100068FC4(&qword_100502458, &qword_10040C1F0);
    LOBYTE(v18) = 2;
    v12 = sub_1001DB63C(&qword_100506868, sub_1000B87D4, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v12;
    *(v3 + 48) = v17;
    LOBYTE(v17) = 3;
    *(v3 + 56) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v18) = 4;
    sub_1001D8358();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v3 + 57) = v17;
    LOBYTE(v17) = 5;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v18;
    swift_beginAccess();
    *(v3 + 64) = v14;

    LOBYTE(v18) = 6;
    LOBYTE(v14) = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v10 + 8))(v8, v11);
    *(v3 + 72) = v14 & 1;
  }

  sub_1000752F4(v16);
  return v3;
}

uint64_t sub_1001D235C()
{
  v1 = v0;
  *&v78 = 0;
  *(&v78 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(130);
  v77 = v78;
  v2._countAndFlagsBits = 0xD000000000000014;
  v2._object = 0x80000001004667A0;
  String.append(_:)(v2);
  *&v78 = sub_100288788(*(v1 + 16), *(v1 + 24));
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  v3 = BidirectionalCollection<>.joined(separator:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x64696D202020200ALL;
  v7._object = 0xEA0000000000203ALL;
  String.append(_:)(v7);
  *&v78 = sub_100288788(*(v1 + 32), *(v1 + 40));
  v8 = BidirectionalCollection<>.joined(separator:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x647373202020200ALL;
  v12._object = 0xEA0000000000203ALL;
  String.append(_:)(v12);
  *&v78 = sub_100288788(*(v1 + 48), *(v1 + 56));
  v13 = BidirectionalCollection<>.joined(separator:)();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._object = 0x80000001004667C0;
  v17._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v17);
  *&v78 = *(v0 + 128);
  _print_unlocked<A, B>(_:_:)();
  v18._countAndFlagsBits = 0xD000000000000018;
  v18._object = 0x80000001004667E0;
  String.append(_:)(v18);
  v19 = *(v0 + 80);
  v78 = *(v0 + 64);
  v79 = v19;
  v80 = *(v0 + 96);
  v81 = *(v0 + 112);
  v20._countAndFlagsBits = sub_1000B6CD0();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0xD000000000000017;
  v21._object = 0x8000000100466800;
  String.append(_:)(v21);
  v22 = *(v0 + 120);
  v23 = *(v22 + 16);
  v24 = _swiftEmptyArrayStorage;
  if (v23)
  {
    v63 = v0;
    v76 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v23, 0);
    v25 = 0;
    v26 = _swiftEmptyArrayStorage;
    v65 = v22 + 32;
    v64 = v23;
    while (1)
    {
      v27 = (v65 + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = v28 >> 62;
      v68 = HIDWORD(*v27);
      v67 = v25;
      if ((v28 >> 62) <= 1)
      {
        break;
      }

      if (v30 == 2)
      {
        v66 = v26;
        v33 = *(v29 + 16);
        v32 = *(v29 + 24);
        v31 = v32 - v33;
        if (__OFSUB__(v32, v33))
        {
          goto LABEL_56;
        }

        goto LABEL_13;
      }

LABEL_42:
      v69 = v24;
      v50 = BidirectionalCollection<>.joined(separator:)();
      v52 = v51;

      sub_10006A178(v29, v28);
      sub_10006A178(v29, v28);
      v76 = v26;
      v54 = v26[2];
      v53 = v26[3];
      if (v54 >= v53 >> 1)
      {
        sub_10019F3C0((v53 > 1), v54 + 1, 1);
        v26 = v76;
      }

      v25 = v67 + 1;
      v26[2] = v54 + 1;
      v55 = &v26[2 * v54];
      v55[4] = v50;
      v55[5] = v52;
      v24 = _swiftEmptyArrayStorage;
      if (v67 + 1 == v23)
      {
        v1 = v63;
        goto LABEL_46;
      }
    }

    v66 = v26;
    if (v30)
    {
      if (__OFSUB__(v68, v29))
      {
        goto LABEL_55;
      }

      v31 = v68 - v29;
LABEL_13:
      sub_100069E2C(v29, v28);
      sub_100069E2C(v29, v28);
      if (v31)
      {
LABEL_14:
        v75 = _swiftEmptyArrayStorage;
        v34 = v31 & ~(v31 >> 63);
        sub_10019F3C0(0, v34, 0);
        v24 = v75;
        if (v30 == 2)
        {
          v35 = *(v29 + 16);
LABEL_18:
          if ((v31 & 0x8000000000000000) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_54;
        }

        if (v30 == 1)
        {
          v35 = v29;
          goto LABEL_18;
        }

        if (v31 < 0)
        {
          goto LABEL_57;
        }

        v35 = 0;
LABEL_22:
        while (2)
        {
          if (!v34)
          {
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
          }

          if (v30 == 2)
          {
            if (v35 < *(v29 + 16))
            {
              goto LABEL_48;
            }

            if (v35 >= *(v29 + 24))
            {
              goto LABEL_51;
            }

            v40 = __DataStorage._bytes.getter();
            if (!v40)
            {
              goto LABEL_59;
            }

            v37 = v40;
            v41 = __DataStorage._offset.getter();
            v39 = v35 - v41;
            if (__OFSUB__(v35, v41))
            {
              goto LABEL_53;
            }

LABEL_35:
            v42 = *(v37 + v39);
          }

          else
          {
            if (v30 == 1)
            {
              if (v35 < v29 || v35 >= v29 >> 32)
              {
                goto LABEL_50;
              }

              v36 = __DataStorage._bytes.getter();
              if (!v36)
              {
                goto LABEL_58;
              }

              v37 = v36;
              v38 = __DataStorage._offset.getter();
              v39 = v35 - v38;
              if (__OFSUB__(v35, v38))
              {
                goto LABEL_52;
              }

              goto LABEL_35;
            }

            if (v35 >= BYTE6(v28))
            {
              goto LABEL_49;
            }

            LOWORD(v69) = v29;
            BYTE2(v69) = BYTE2(v29);
            BYTE3(v69) = BYTE3(v29);
            BYTE4(v69) = v68;
            BYTE5(v69) = BYTE5(v29);
            BYTE6(v69) = BYTE6(v29);
            HIBYTE(v69) = HIBYTE(v29);
            v70 = v28;
            v71 = BYTE2(v28);
            v72 = BYTE3(v28);
            v73 = BYTE4(v28);
            v74 = BYTE5(v28);
            v42 = *(&v69 + v35);
          }

          sub_100068FC4(&qword_100502440, &unk_10040B240);
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_1004098F0;
          *(v43 + 56) = &type metadata for UInt8;
          *(v43 + 64) = &protocol witness table for UInt8;
          *(v43 + 32) = v42;
          v44 = String.init(format:_:)();
          v75 = v24;
          v47 = v24[2];
          v46 = v24[3];
          if (v47 >= v46 >> 1)
          {
            v62 = v44;
            v49 = v45;
            sub_10019F3C0((v46 > 1), v47 + 1, 1);
            v45 = v49;
            v44 = v62;
            v24 = v75;
          }

          v24[2] = v47 + 1;
          v48 = &v24[2 * v47];
          v48[4] = v44;
          v48[5] = v45;
          ++v35;
          --v34;
          if (!--v31)
          {
            break;
          }

          continue;
        }
      }
    }

    else
    {
      v31 = BYTE6(v28);
      if (BYTE6(v28))
      {
        goto LABEL_14;
      }
    }

    v23 = v64;
    v26 = v66;
    goto LABEL_42;
  }

LABEL_46:
  v56 = Array.description.getter();
  v58 = v57;

  v59._countAndFlagsBits = v56;
  v59._object = v58;
  String.append(_:)(v59);

  v60._countAndFlagsBits = 0x617473202020200ALL;
  v60._object = 0xED0000203A737574;
  String.append(_:)(v60);
  LOBYTE(v69) = *(v1 + 136);
  _print_unlocked<A, B>(_:_:)();
  return v77;
}

uint64_t sub_1001D2AA4()
{
  v1 = 6580577;
  v2 = *v0;
  v3 = 0x6C6379636566696CLL;
  if (v2 != 5)
  {
    v3 = 0x737574617473;
  }

  v4 = 0xD000000000000011;
  if (v2 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 6580589;
  if (v2 != 1)
  {
    v5 = 0x746169636F737361;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001D2B84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001DAB9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001D2BAC(uint64_t a1)
{
  v2 = sub_1001D9FD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D2BE8(uint64_t a1)
{
  v2 = sub_1001D9FD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D2C24()
{
  sub_10006A178(v0[2], v0[3]);
  sub_10006A178(v0[4], v0[5]);
  sub_10006A178(v0[6], v0[7]);
  v1 = v0[13];
  v2 = v0[14];
  sub_10006A2D0(v0[9], v0[10]);
  sub_10006A2D0(v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1001D2CC0(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_100506978, &qword_10040E928);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_1000752B0(a1, a1[3]);
  sub_1001D9FD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 24);
  *&v25[0] = *(v3 + 16);
  *(&v25[0] + 1) = v9;
  LOBYTE(v21) = 0;
  sub_100069E2C(*&v25[0], v9);
  sub_1000B8890();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_10006A178(*&v25[0], *(&v25[0] + 1));
  if (!v2)
  {
    v10 = *(v3 + 40);
    *&v25[0] = *(v3 + 32);
    *(&v25[0] + 1) = v10;
    LOBYTE(v21) = 1;
    sub_100069E2C(*&v25[0], v10);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(*&v25[0], *(&v25[0] + 1));
    v12 = *(v3 + 56);
    v28 = *(v3 + 48);
    v29 = v12;
    v27 = 2;
    sub_100069E2C(v28, v12);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10006A178(v28, v29);
    v13 = *(v3 + 80);
    v25[0] = *(v3 + 64);
    v25[1] = v13;
    v15 = *(v3 + 64);
    v14 = *(v3 + 80);
    v25[2] = *(v3 + 96);
    v26 = *(v3 + 112);
    v21 = v15;
    v22 = v14;
    v23 = *(v3 + 96);
    v24 = *(v3 + 112);
    v20 = 3;
    sub_1000B8828(v25, v18);
    sub_1001DB5E8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18[0] = v21;
    v18[1] = v22;
    v18[2] = v23;
    v19 = v24;
    sub_1000B8860(v18);
    v17 = *(v3 + 120);
    HIBYTE(v16) = 4;
    sub_100068FC4(&qword_100502458, &qword_10040C1F0);
    sub_1001DB63C(&qword_100506988, sub_1000B8890, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = *(v3 + 128);
    HIBYTE(v16) = 5;
    sub_1001DB6B4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17) = *(v3 + 136);
    HIBYTE(v16) = 6;
    sub_1001DB708();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001D30DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SEType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001D31AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SEType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for SECleanup(uint64_t a1)
{
  result = qword_100506800;
  if (!qword_100506800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001D32B0(uint64_t a1)
{
  type metadata accessor for SEType();
  if (v1 <= 0x3F)
  {
    sub_1001D338C(319, &qword_100506810, type metadata accessor for SECleanup.Module);
    if (v2 <= 0x3F)
    {
      sub_1001D338C(319, &unk_100506818, type metadata accessor for SECleanup.Instance);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001D338C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    a3();
    sub_1000E1E80();
    v4 = type metadata accessor for Dictionary();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001D3408(void *a1)
{
  v4 = sub_100068FC4(&qword_100506878, &qword_10040E8B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  *(v1 + 136) = 2;
  sub_1000752B0(a1, a1[3]);
  sub_1001D9FD4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for SECleanup.Instance();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v11) = 0;
    sub_1000B87D4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + 16) = v12;
    LOBYTE(v11) = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + 32) = v12;
    LOBYTE(v11) = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + 48) = v12;
    v17 = 3;
    sub_1001DA028();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v13;
    *(v1 + 64) = v12;
    *(v1 + 80) = v8;
    *(v1 + 96) = v14;
    *(v1 + 112) = v15;
    sub_100068FC4(&qword_100502458, &qword_10040C1F0);
    v16 = 4;
    sub_1001DB63C(&qword_100506868, sub_1000B87D4, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + 120) = v11;
    v16 = 5;
    sub_1001DA07C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + 128) = v11;
    v16 = 6;
    sub_1001D8358();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    *(v1 + 136) = v11;
  }

  sub_1000752F4(a1);
  return v1;
}

uint64_t sub_1001D38C4(void *a1, int a2)
{
  v25 = a2;
  v3 = sub_100068FC4(&qword_100506958, &qword_10040E908);
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v18 - v4;
  v5 = sub_100068FC4(&qword_100506960, &qword_10040E910);
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_100068FC4(&qword_100506968, &qword_10040E918);
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_100068FC4(&qword_100506970, &qword_10040E920);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_1000752B0(a1, a1[3]);
  sub_1001DB498();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1001DB540();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1001DB4EC();
      v16 = v22;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1001DB594();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_1001D3CAC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  a2();
  v9 = swift_allocObject();
  result = a4(a1);
  if (!v5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t sub_1001D3D4C(uint64_t a1)
{
  v2 = sub_1001DB594();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D3D88(uint64_t a1)
{
  v2 = sub_1001DB594();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D3DC4()
{
  v1 = 1684104548;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6576696C61;
  }
}

uint64_t sub_1001D3E14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001DADF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001D3E48(uint64_t a1)
{
  v2 = sub_1001DB498();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D3E84(uint64_t a1)
{
  v2 = sub_1001DB498();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D3EC0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1001D3EFC(uint64_t a1)
{
  v2 = sub_1001DB540();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D3F38(uint64_t a1)
{
  v2 = sub_1001DB540();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D3F74(uint64_t a1)
{
  v2 = sub_1001DB4EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D3FB0(uint64_t a1)
{
  v2 = sub_1001DB4EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001D3FEC@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1001DAF08(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1001D4038()
{
  result = qword_100506850;
  if (!qword_100506850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506850);
  }

  return result;
}

uint64_t sub_1001D408C(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(30);

  strcpy(v103, "\n\tInstances: ");
  HIWORD(v103[1]) = -4864;
  v4 = _swiftEmptyArrayStorage;
  v5 = *(a1 + 16);
  if (v5)
  {
    v83 = a2;
    v102 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v5, 0);
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    v87 = a1 + 32;
    v8 = v5;
    v85 = v5;
    while (1)
    {
      v9 = (v87 + 16 * v6);
      v11 = *v9;
      v10 = v9[1];
      v12 = v10 >> 62;
      v93 = HIDWORD(*v9);
      if ((v10 >> 62) > 1)
      {
        if (v12 == 2)
        {
          v89 = v6;
          v91 = v7;
          v15 = *(v11 + 16);
          v14 = *(v11 + 24);
          v13 = v14 - v15;
          if (__OFSUB__(v14, v15))
          {
            goto LABEL_109;
          }

          goto LABEL_13;
        }
      }

      else
      {
        v89 = v6;
        v91 = v7;
        if (v12)
        {
          if (__OFSUB__(v93, v11))
          {
            goto LABEL_108;
          }

          v13 = v93 - v11;
LABEL_13:
          sub_100069E2C(v11, v10);
          sub_100069E2C(v11, v10);
          if (!v13)
          {
            goto LABEL_42;
          }

LABEL_14:
          v101 = _swiftEmptyArrayStorage;
          v16 = v13 & ~(v13 >> 63);
          sub_10019F3C0(0, v16, 0);
          v4 = v101;
          if (v12 == 2)
          {
            v17 = *(v11 + 16);
LABEL_18:
            if ((v13 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

            goto LABEL_107;
          }

          if (v12 == 1)
          {
            v17 = v11;
            goto LABEL_18;
          }

          if (v13 < 0)
          {
            goto LABEL_113;
          }

          v17 = 0;
LABEL_22:
          while (2)
          {
            if (!v16)
            {
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
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
LABEL_104:
              __break(1u);
LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
LABEL_107:
              __break(1u);
LABEL_108:
              __break(1u);
LABEL_109:
              __break(1u);
              goto LABEL_110;
            }

            if (v12 != 2)
            {
              if (v12 == 1)
              {
                if (v17 < v11 || v17 >= v11 >> 32)
                {
                  goto LABEL_97;
                }

                v18 = __DataStorage._bytes.getter();
                if (!v18)
                {
                  goto LABEL_115;
                }

                v19 = v18;
                v20 = __DataStorage._offset.getter();
                v21 = v17 - v20;
                if (__OFSUB__(v17, v20))
                {
                  goto LABEL_99;
                }

LABEL_35:
                v24 = *(v19 + v21);
              }

              else
              {
                if (v17 >= BYTE6(v10))
                {
                  goto LABEL_96;
                }

                LOWORD(v95) = v11;
                BYTE2(v95) = BYTE2(v11);
                BYTE3(v95) = BYTE3(v11);
                BYTE4(v95) = v93;
                BYTE5(v95) = BYTE5(v11);
                BYTE6(v95) = BYTE6(v11);
                HIBYTE(v95) = HIBYTE(v11);
                v96 = v10;
                v97 = BYTE2(v10);
                v98 = BYTE3(v10);
                v99 = BYTE4(v10);
                v100 = BYTE5(v10);
                v24 = *(&v95 + v17);
              }

              sub_100068FC4(&qword_100502440, &unk_10040B240);
              v25 = swift_allocObject();
              *(v25 + 16) = xmmword_1004098F0;
              *(v25 + 56) = &type metadata for UInt8;
              *(v25 + 64) = &protocol witness table for UInt8;
              *(v25 + 32) = v24;
              v26 = String.init(format:_:)();
              v101 = v4;
              v29 = v4[2];
              v28 = v4[3];
              if (v29 >= v28 >> 1)
              {
                v82 = v26;
                v31 = v27;
                sub_10019F3C0((v28 > 1), v29 + 1, 1);
                v27 = v31;
                v26 = v82;
                v4 = v101;
              }

              v4[2] = v29 + 1;
              v30 = &v4[2 * v29];
              v30[4] = v26;
              v30[5] = v27;
              ++v17;
              --v16;
              if (!--v13)
              {
                v8 = v85;
                goto LABEL_42;
              }

              continue;
            }

            break;
          }

          if (v17 < *(v11 + 16))
          {
            goto LABEL_95;
          }

          if (v17 >= *(v11 + 24))
          {
            goto LABEL_98;
          }

          v22 = __DataStorage._bytes.getter();
          if (!v22)
          {
            goto LABEL_116;
          }

          v19 = v22;
          v23 = __DataStorage._offset.getter();
          v21 = v17 - v23;
          if (__OFSUB__(v17, v23))
          {
            goto LABEL_100;
          }

          goto LABEL_35;
        }

        v13 = BYTE6(v10);
        if (BYTE6(v10))
        {
          goto LABEL_14;
        }

LABEL_42:
        v6 = v89;
        v7 = v91;
      }

      v95 = v4;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v32 = BidirectionalCollection<>.joined(separator:)();
      v34 = v33;

      sub_10006A178(v11, v10);
      sub_10006A178(v11, v10);
      v102 = v7;
      v36 = v7[2];
      v35 = v7[3];
      if (v36 >= v35 >> 1)
      {
        sub_10019F3C0((v35 > 1), v36 + 1, 1);
        v7 = v102;
      }

      ++v6;
      v7[2] = v36 + 1;
      v37 = &v7[2 * v36];
      v37[4] = v32;
      v37[5] = v34;
      v4 = _swiftEmptyArrayStorage;
      if (v6 == v8)
      {
        a2 = v83;
        break;
      }
    }
  }

  v38 = Array.description.getter();
  v40 = v39;

  v41._countAndFlagsBits = v38;
  v41._object = v40;
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0x656C75646F4D090ALL;
  v42._object = 0xEB00000000203A73;
  String.append(_:)(v42);
  v43 = *(a2 + 16);
  v44 = _swiftEmptyArrayStorage;
  if (v43)
  {
    v102 = _swiftEmptyArrayStorage;
    sub_10019F3C0(0, v43, 0);
    v45 = 0;
    v90 = a2 + 32;
    v46 = v102;
    v86 = v43;
    do
    {
      v47 = (v90 + 16 * v45);
      v48 = *v47;
      v49 = v47[1];
      v50 = v49 >> 62;
      v94 = HIDWORD(*v47);
      if ((v49 >> 62) > 1)
      {
        if (v50 == 2)
        {
          v92 = v45;
          v53 = *(v48 + 16);
          v52 = *(v48 + 24);
          v51 = v52 - v53;
          if (__OFSUB__(v52, v53))
          {
            goto LABEL_112;
          }

LABEL_59:
          sub_100069E2C(v48, v49);
          sub_100069E2C(v48, v49);
          if (!v51)
          {
            goto LABEL_88;
          }

LABEL_60:
          v101 = _swiftEmptyArrayStorage;
          v54 = v51 & ~(v51 >> 63);
          sub_10019F3C0(0, v54, 0);
          v44 = v101;
          v88 = v46;
          if (v50 == 2)
          {
            v55 = *(v48 + 16);
            goto LABEL_64;
          }

          if (v50 == 1)
          {
            v55 = v48;
LABEL_64:
            if ((v51 & 0x8000000000000000) == 0)
            {
              goto LABEL_68;
            }

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
          }

          if (v51 < 0)
          {
            goto LABEL_114;
          }

          v55 = 0;
LABEL_68:
          while (2)
          {
            if (!v54)
            {
              goto LABEL_94;
            }

            if (v50 == 2)
            {
              if (v55 < *(v48 + 16))
              {
                goto LABEL_101;
              }

              if (v55 >= *(v48 + 24))
              {
                goto LABEL_104;
              }

              v60 = __DataStorage._bytes.getter();
              if (!v60)
              {
                goto LABEL_118;
              }

              v57 = v60;
              v61 = __DataStorage._offset.getter();
              v59 = v55 - v61;
              if (__OFSUB__(v55, v61))
              {
                goto LABEL_106;
              }

LABEL_81:
              v62 = *(v57 + v59);
            }

            else
            {
              if (v50 == 1)
              {
                if (v55 < v48 || v55 >= v48 >> 32)
                {
                  goto LABEL_103;
                }

                v56 = __DataStorage._bytes.getter();
                if (!v56)
                {
                  goto LABEL_117;
                }

                v57 = v56;
                v58 = __DataStorage._offset.getter();
                v59 = v55 - v58;
                if (__OFSUB__(v55, v58))
                {
                  goto LABEL_105;
                }

                goto LABEL_81;
              }

              if (v55 >= BYTE6(v49))
              {
                goto LABEL_102;
              }

              LOWORD(v95) = v48;
              BYTE2(v95) = BYTE2(v48);
              BYTE3(v95) = BYTE3(v48);
              BYTE4(v95) = v94;
              BYTE5(v95) = BYTE5(v48);
              BYTE6(v95) = BYTE6(v48);
              HIBYTE(v95) = HIBYTE(v48);
              v96 = v49;
              v97 = BYTE2(v49);
              v98 = BYTE3(v49);
              v99 = BYTE4(v49);
              v100 = BYTE5(v49);
              v62 = *(&v95 + v55);
            }

            sub_100068FC4(&qword_100502440, &unk_10040B240);
            v63 = swift_allocObject();
            *(v63 + 16) = xmmword_1004098F0;
            *(v63 + 56) = &type metadata for UInt8;
            *(v63 + 64) = &protocol witness table for UInt8;
            *(v63 + 32) = v62;
            v64 = String.init(format:_:)();
            v101 = v44;
            v67 = v44[2];
            v66 = v44[3];
            if (v67 >= v66 >> 1)
            {
              v84 = v64;
              v69 = v65;
              sub_10019F3C0((v66 > 1), v67 + 1, 1);
              v65 = v69;
              v64 = v84;
              v44 = v101;
            }

            v44[2] = v67 + 1;
            v68 = &v44[2 * v67];
            v68[4] = v64;
            v68[5] = v65;
            ++v55;
            --v54;
            if (!--v51)
            {
              v43 = v86;
              v46 = v88;
              goto LABEL_88;
            }

            continue;
          }
        }
      }

      else
      {
        v92 = v45;
        if (v50)
        {
          if (!__OFSUB__(v94, v48))
          {
            v51 = v94 - v48;
            goto LABEL_59;
          }

          goto LABEL_111;
        }

        v51 = BYTE6(v49);
        if (BYTE6(v49))
        {
          goto LABEL_60;
        }

LABEL_88:
        v45 = v92;
      }

      v95 = v44;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v70 = BidirectionalCollection<>.joined(separator:)();
      v72 = v71;

      sub_10006A178(v48, v49);
      sub_10006A178(v48, v49);
      v102 = v46;
      v74 = v46[2];
      v73 = v46[3];
      if (v74 >= v73 >> 1)
      {
        sub_10019F3C0((v73 > 1), v74 + 1, 1);
        v46 = v102;
      }

      ++v45;
      v46[2] = v74 + 1;
      v75 = &v46[2 * v74];
      v75[4] = v70;
      v75[5] = v72;
      v44 = _swiftEmptyArrayStorage;
    }

    while (v45 != v43);
  }

  v76 = Array.description.getter();
  v78 = v77;

  v79._countAndFlagsBits = v76;
  v79._object = v78;
  String.append(_:)(v79);

  v80._countAndFlagsBits = 2314;
  v80._object = 0xE200000000000000;
  String.append(_:)(v80);
  return v103[0];
}

void sub_1001D49D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SEType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SECleanup(0);
  v40 = v8[6];
  *(a2 + v40) = _swiftEmptyDictionarySingleton;
  v39 = v8[7];
  *(a2 + v39) = _swiftEmptyDictionarySingleton;
  v9 = sub_1001DB7D4(a1);
  v11 = v10;
  v13 = v12;
  v41 = v14;
  v42 = a1;
  v15 = sub_1003AF3C4(a1, v10);
  v16 = [v15 type];

  if ((v16 - 1) > 5)
  {
    v17 = &enum case for SEType.EOSAdv(_:);
  }

  else
  {
    v17 = *(&off_1004CB1B8 + (v16 - 1));
  }

  (*(v5 + 104))(v7, *v17, v4);
  (*(v5 + 32))(a2, v7, v4);
  v19 = sub_1003AF3C4(v42, v18);
  v20 = [v19 csn];

  *(a2 + v8[5]) = v20;
  v21 = objc_opt_self();
  sub_100069E2C(v9, v11);
  v22 = v41;
  sub_100069E2C(v13, v41);
  sub_10006A178(v13, v22);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v9, v11);
  v24 = [v21 TLVsWithData:isa];

  if (!v24)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1000754A4();
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = sub_1001D0C0C(_swiftEmptyDictionarySingleton, v25, a2, sub_1001D4F00);

  *(a2 + v40) = v26;
  sub_100069E2C(v9, v11);
  sub_100069E2C(v13, v22);
  sub_10006A178(v9, v11);
  v27 = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v13, v22);
  v28 = [v21 TLVsWithData:v27];

  if (!v28)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = sub_1001D0C0C(_swiftEmptyDictionarySingleton, v29, a2, sub_1001D540C);

  *(a2 + v39) = v30;
  if (qword_100501A80 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_1000958E4(v31, qword_100506560);
  sub_100069E2C(v9, v11);
  sub_100069E2C(v13, v22);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  sub_10006A178(v9, v11);
  sub_10006A178(v13, v22);
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v34 = 136315394;
    v35 = Data.base64EncodedString(options:)(0);
    v36 = sub_1002FFA0C(v35._countAndFlagsBits, v35._object, v43);

    *(v34 + 4) = v36;
    *(v34 + 12) = 2080;
    v37 = Data.base64EncodedString(options:)(0);
    v38 = sub_1002FFA0C(v37._countAndFlagsBits, v37._object, v43);

    *(v34 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "SECleanup init with: \n%s\n%s", v34, 0x16u);
    swift_arrayDestroy();

    sub_10006A178(v9, v11);
    sub_10006A178(v13, v22);
  }

  else
  {

    sub_10006A178(v9, v11);
    sub_10006A178(v13, v22);
  }
}

uint64_t sub_1001D4F00(void *a1, void **a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for SECleanup(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = *a2;
  sub_1001DA29C(a3, &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_1001DBB70(&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_1001DA51C(v11, sub_1001DBBD4);
  v15 = v14;

  if (!v15)
  {
    return result;
  }

  v51 = a1;
  v52 = v15;
  v17 = *(v15 + 48);
  v18 = (v17 + 40);
  v19 = -*(v17 + 16);
  v20 = -1;
  while (1)
  {
    if (v19 + v20 == -1)
    {
      v26 = *(v52 + 48);
      v50 = *(v26 + 16);
      if (!v50)
      {
      }

      v27 = 0;
      v28 = (v26 + 40);
      v29 = v51;
      while (1)
      {
        if (v27 >= *(v26 + 16))
        {
          goto LABEL_28;
        }

        v54 = v4;
        v31 = v26;
        v33 = *(v28 - 1);
        v32 = *v28;
        sub_100069E2C(v33, *v28);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53[0] = *v29;
        v35 = v53[0];
        v36 = sub_10008C8DC(v33, v32);
        v38 = *(v35 + 16);
        v39 = (v37 & 1) == 0;
        v40 = __OFADD__(v38, v39);
        v41 = v38 + v39;
        if (v40)
        {
          goto LABEL_29;
        }

        v42 = v37;
        if (*(v35 + 24) < v41)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_19;
        }

        v48 = v36;
        sub_1003131A4();
        v36 = v48;
        v44 = v53[0];
        if ((v42 & 1) == 0)
        {
LABEL_20:
          v44[(v36 >> 6) + 8] |= 1 << v36;
          v45 = (v44[6] + 16 * v36);
          *v45 = v33;
          v45[1] = v32;
          *(v44[7] + 8 * v36) = v52;
          v46 = v44[2];
          v40 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (v40)
          {
            goto LABEL_30;
          }

          v44[2] = v47;
          goto LABEL_12;
        }

LABEL_11:
        *(v44[7] + 8 * v36) = v52;

        sub_10006A178(v33, v32);
LABEL_12:
        ++v27;
        v30 = v50;
        v29 = v51;
        *v51 = v44;
        v28 += 2;
        v26 = v31;
        v4 = v54;
        if (v30 == v27)
        {
        }
      }

      sub_10030E060(v41, isUniquelyReferenced_nonNull_native);
      v36 = sub_10008C8DC(v33, v32);
      if ((v42 & 1) != (v43 & 1))
      {
        goto LABEL_31;
      }

LABEL_19:
      v44 = v53[0];
      if ((v42 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_11;
    }

    if (++v20 >= *(v17 + 16))
    {
      break;
    }

    v21 = *(v18 - 1);
    v22 = *v18;
    sub_100069E2C(v21, *v18);
    if (qword_100501A68 != -1)
    {
      v23 = swift_once();
    }

    v18 += 2;
    v53[0] = v21;
    v53[1] = v22;
    __chkstk_darwin(v23);
    *(&v49 - 2) = v53;
    v25 = sub_1002F78F8(sub_100093990, (&v49 - 4), v24);
    sub_10006A178(v21, v22);
    if (v25)
    {
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

BOOL sub_1001D52EC(uint64_t a1, unint64_t a2)
{
  if (qword_100501AC8 != -1)
  {
    swift_once();
  }

  if (sub_10008FB4C(qword_10051B478, qword_10051B480, a1, a2))
  {
    return 1;
  }

  if (qword_100501AE0 != -1)
  {
    swift_once();
  }

  if (sub_10008FB4C(qword_10051B4A8, unk_10051B4B0, a1, a2))
  {
    return 1;
  }

  if (qword_100501AE8 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B4B8;
  v6 = qword_10051B4C0;

  return sub_10008FB4C(v5, v6, a1, a2);
}

void sub_1001D540C(uint64_t a1, id *a2, void *a3)
{
  v125 = a3;
  v124 = a1;
  v4 = *a2;
  v5 = [*a2 childWithTag:79];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 value];
    if (v7)
    {
      v8 = v7;
      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      goto LABEL_6;
    }
  }

  v9 = 0;
  v11 = 0xF000000000000000;
LABEL_6:
  v12 = [v4 childWithTag:204];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 value];
    if (v14)
    {
      v15 = v14;
      v127 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      goto LABEL_11;
    }
  }

  v127 = 0;
  v17 = 0xF000000000000000;
LABEL_11:
  v18 = [v4 childWithTag:132];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 value];
    if (v20)
    {
      v21 = v20;
      v128 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v131 = v22;

      goto LABEL_16;
    }
  }

  v128 = 0;
  v131 = 0xF000000000000000;
LABEL_16:
  v23 = [v4 childWithTag:40816];
  if (!v23)
  {
LABEL_20:
    v27 = 0;
    v130 = 0xF000000000000000;
    goto LABEL_21;
  }

  v24 = v23;
  v25 = [v23 value];
  if (!v25)
  {

    goto LABEL_20;
  }

  v26 = v25;
  v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v130 = v28;

LABEL_21:
  v29 = v4;
  v30 = [v29 childWithTag:165];

  sub_1000B7D0C(v30, v133);
  v126 = v17;
  if (v11 >> 60 == 15 || v17 >> 60 == 15 || v131 >> 60 == 15 || v130 >> 60 == 15 || (sub_10006A2BC(v9, v11), sub_10006A2BC(v127, v17), sub_10006A2BC(v128, v131), v129 = v27, sub_10006A2BC(v27, v130), Data._Representation.subscript.getter(), v121 = AppletState.init(rawValue:)(), v32 = v31, sub_10006A2D0(v27, v130), v33 = v3, sub_10006A2D0(v128, v131), sub_10006A2D0(v127, v126), sub_10006A2D0(v9, v11), (v32 & 1) != 0))
  {
    if (qword_100501A80 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000958E4(v34, qword_100506560);
    v35 = v29;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v36, v37))
    {
      sub_10006A2D0(v9, v11);
      sub_10006A2D0(v127, v126);
      sub_10006A2D0(v128, v131);
      sub_10006A2D0(v27, v130);
      sub_1000B8860(v133);

      goto LABEL_32;
    }

    v129 = v27;
    v122 = v9;
    v123 = v11;
    v38 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v132[0] = v125;
    *v38 = 136315138;
    v39 = [v35 value];

    if (v39)
    {
      v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v135 = sub_100288788(v40, v42);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v43 = BidirectionalCollection<>.joined(separator:)();
      v45 = v44;
      sub_10006A178(v40, v42);

      v46 = sub_1002FFA0C(v43, v45, v132);

      *(v38 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v36, v37, "Skipping Instance: %s", v38, 0xCu);
      sub_1000752F4(v125);

      sub_10006A2D0(v122, v123);
      sub_10006A2D0(v127, v126);
      sub_10006A2D0(v128, v131);
      sub_10006A2D0(v129, v130);
      sub_1000B8860(v133);
LABEL_32:

      return;
    }

    __break(1u);
    goto LABEL_125;
  }

  v47 = *(v125 + *(type metadata accessor for SECleanup(0) + 24));
  if (!*(v47 + 16) || (v48 = sub_10008C8DC(v128, v131), (v49 & 1) == 0))
  {
    sub_10006A2D0(v27, v130);
    sub_1000B8860(v133);
    sub_10006A2D0(v127, v126);
    sub_10006A2D0(v128, v131);
    sub_10006A2D0(v9, v11);
    return;
  }

  v50 = *(*(v47 + 56) + 8 * v48);
  if ((BYTE2(v133[0]) & 1) == 0 && (v133[0] & 4) != 0)
  {

    sub_10006A2D0(v9, v11);
    sub_10006A2D0(v127, v126);
    sub_10006A2D0(v128, v131);
    sub_10006A2D0(v27, v130);
    sub_1000B8860(v133);
    *(v50 + 72) = 1;

    return;
  }

  v116 = BYTE2(v133[0]);
  v115 = LOWORD(v133[0]);
  v51 = v29;
  v119 = v50;

  v52 = [v51 childWithTag:164];

  v53 = _swiftEmptyArrayStorage;
  v123 = v11;
  v122 = v9;
  if (v52)
  {
    v118 = v52;
    v54 = [v52 children];
    if (!v54)
    {
LABEL_125:
      __break(1u);
      return;
    }

    v55 = v54;
    sub_1000754A4();
    v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v56 >> 62)
    {
      v57 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v117 = v51;
    if (v57)
    {
      v132[0] = _swiftEmptyArrayStorage;
      v58 = v132;
      sub_10019F4A4(0, v57 & ~(v57 >> 63), 0);
      if ((v57 & 0x8000000000000000) == 0)
      {
        v59 = 0;
        v60 = v132[0];
        v125 = (v56 & 0xC000000000000001);
        v120 = v3;
        while (1)
        {
          v61 = v9;
          v62 = v125 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v56 + 8 * v59 + 32);
          v63 = v57;
          v64 = v56;
          v65 = v62;
          v66 = [v65 value];
          if (!v66)
          {
            break;
          }

          v67 = v66;
          v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v57 = v68;

          if (v57 >> 60 == 15)
          {
            goto LABEL_122;
          }

          v132[0] = v60;
          v70 = v60[2];
          v69 = v60[3];
          if (v70 >= v69 >> 1)
          {
            sub_10019F4A4((v69 > 1), v70 + 1, 1);
            v60 = v132[0];
          }

          ++v59;
          v60[2] = v70 + 1;
          v71 = &v60[2 * v70];
          v71[4] = v56;
          v71[5] = v57;
          v57 = v63;
          v33 = v120;
          v9 = v61;
          v56 = v64;
          if (v63 == v59)
          {

            goto LABEL_56;
          }
        }

LABEL_122:
        __break(1u);
LABEL_123:
        swift_once();
LABEL_106:
        if (sub_10008FB4C(qword_10051B4B8, qword_10051B4C0, v63, v65))
        {
          v104 = 0;
        }

        else
        {
          v104 = 2;
        }

        goto LABEL_112;
      }

      __break(1u);
      goto LABEL_120;
    }

    v60 = _swiftEmptyArrayStorage;
LABEL_56:
    v73 = v60[2];
    if (v73)
    {
      v74 = v60 + 4;
      v53 = _swiftEmptyArrayStorage;
      do
      {
        *v132 = *v74;
        *&v76 = __chkstk_darwin(v72);
        v114 = v132;
        sub_100069E2C(v76, v77);
        v78 = v33;
        if ((sub_1002F78F8(sub_1001DC608, v113, v53) & 1) == 0)
        {
          v79 = v132[0];
          v80 = v132[1];
          sub_100069E2C(v132[0], v132[1]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_10012E5A4(0, *(v53 + 2) + 1, 1, v53);
          }

          v82 = *(v53 + 2);
          v81 = *(v53 + 3);
          if (v82 >= v81 >> 1)
          {
            v53 = sub_10012E5A4((v81 > 1), v82 + 1, 1, v53);
          }

          *(v53 + 2) = v82 + 1;
          v75 = &v53[16 * v82];
          *(v75 + 4) = v79;
          *(v75 + 5) = v80;
          v33 = v78;
        }

        v72 = sub_10006A178(v132[0], v132[1]);
        ++v74;
        --v73;
      }

      while (v73);
    }

    else
    {
      v53 = _swiftEmptyArrayStorage;
    }
  }

  v83 = sub_1002EA6BC(5);
  if (*(v83 + 2))
  {
    v58 = *(v83 + 4);
    v57 = *(v83 + 5);
    sub_100069E2C(v58, v57);

    v132[0] = v58;
    v132[1] = v57;
    __chkstk_darwin(v84);
    v114 = v132;
    if (sub_1002F78F8(sub_1001DC608, v113, v53))
    {
LABEL_73:
      sub_10006A178(v58, v57);
      goto LABEL_75;
    }

    v56 = v132[0];
    v11 = v132[1];
    sub_100069E2C(v132[0], v132[1]);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_70:
      v86 = *(v53 + 2);
      v85 = *(v53 + 3);
      if (v86 >= v85 >> 1)
      {
        v53 = sub_10012E5A4((v85 > 1), v86 + 1, 1, v53);
      }

      *(v53 + 2) = v86 + 1;
      v87 = &v53[16 * v86];
      *(v87 + 4) = v56;
      *(v87 + 5) = v11;
      goto LABEL_73;
    }

LABEL_120:
    v53 = sub_10012E5A4(0, *(v53 + 2) + 1, 1, v53);
    goto LABEL_70;
  }

LABEL_75:
  sub_1000B7028();
  v89 = v88[2];
  v125 = v88;
  if (v89)
  {
    v90 = v88 + 4;
    do
    {
      *v132 = *v90;
      *&v92 = __chkstk_darwin(v88);
      v114 = v132;
      sub_100069E2C(v92, v93);
      v94 = v33;
      if ((sub_1002F78F8(sub_1001DBA28, v113, v53) & 1) == 0)
      {
        v95 = v132[0];
        v96 = v132[1];
        sub_100069E2C(v132[0], v132[1]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_10012E5A4(0, *(v53 + 2) + 1, 1, v53);
        }

        v98 = *(v53 + 2);
        v97 = *(v53 + 3);
        if (v98 >= v97 >> 1)
        {
          v53 = sub_10012E5A4((v97 > 1), v98 + 1, 1, v53);
        }

        *(v53 + 2) = v98 + 1;
        v91 = &v53[16 * v98];
        *(v91 + 4) = v95;
        *(v91 + 5) = v96;
        v33 = v94;
      }

      v88 = sub_10006A178(v132[0], v132[1]);
      ++v90;
      --v89;
    }

    while (v89);
  }

  type metadata accessor for SECleanup.Instance();
  v99 = swift_allocObject();
  v60 = v99;
  *(v99 + 136) = 2;
  v57 = v122;
  v64 = v123;
  *(v99 + 16) = v122;
  *(v99 + 24) = v64;
  v100 = v127;
  v63 = v128;
  v65 = v131;
  *(v99 + 32) = v128;
  *(v99 + 40) = v65;
  v101 = v126;
  *(v99 + 48) = v100;
  *(v99 + 56) = v101;
  v102 = v133[1];
  *(v99 + 64) = v133[0];
  *(v99 + 80) = v102;
  *(v99 + 96) = v133[2];
  *(v99 + 112) = v134;
  *(v99 + 120) = v53;
  v103 = v121;
  *(v99 + 128) = v121;
  if (v103 > 128)
  {
    v56 = v124;
    if (v103 <= 134)
    {
      if (v103 == 129)
      {
        sub_10006A2BC(v57, v64);
        sub_10006A2BC(v127, v101);
        sub_10006A2BC(v63, v65);
        sub_1000B8828(v133, v132);
        v104 = 1;
        goto LABEL_112;
      }

      if (v103 != 130)
      {
        goto LABEL_95;
      }

      goto LABEL_109;
    }

    if (v103 == 135)
    {
      goto LABEL_96;
    }

    if (v103 == 143)
    {
      goto LABEL_109;
    }
  }

  else
  {
    v56 = v124;
    if (v103 <= 0x27)
    {
      if (((1 << v103) & 0x8080808000) != 0)
      {
        goto LABEL_109;
      }

      if (((1 << v103) & 0x8A) == 0)
      {
        goto LABEL_95;
      }

LABEL_96:
      if (*(v99 + 80) >> 60 == 15)
      {
        sub_10006A2BC(v57, v64);
        sub_10006A2BC(v127, v101);
        sub_10006A2BC(v63, v65);
        if ((v116 & 1) != 0 || (v115 & 8) == 0)
        {
          sub_1000B8828(v133, v132);
          if (qword_100501AC8 != -1)
          {
            swift_once();
          }

          if (!sub_10008FB4C(qword_10051B478, qword_10051B480, v63, v65))
          {
            if (qword_100501AE0 != -1)
            {
              swift_once();
            }

            if (!sub_10008FB4C(qword_10051B4A8, unk_10051B4B0, v63, v65))
            {
              if (qword_100501AE8 == -1)
              {
                goto LABEL_106;
              }

              goto LABEL_123;
            }
          }

          goto LABEL_111;
        }

LABEL_110:
        sub_1000B8828(v133, v132);
LABEL_111:
        v104 = 0;
        goto LABEL_112;
      }

LABEL_109:
      sub_10006A2BC(v57, v64);
      sub_10006A2BC(v127, v101);
      sub_10006A2BC(v63, v65);
      goto LABEL_110;
    }
  }

LABEL_95:
  sub_10006A2BC(v57, v64);
  sub_10006A2BC(v127, v101);
  sub_10006A2BC(v63, v65);
  sub_1000B8828(v133, v132);
  v104 = 2;
LABEL_112:
  *(v60 + 136) = v104;
  sub_10006A2BC(v57, v64);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v132[0] = *v56;
  sub_100316830(v60, v57, v64, isUniquelyReferenced_nonNull_native);
  sub_10006A2D0(v57, v64);
  *v56 = v132[0];
  v106 = v119;
  swift_beginAccess();
  v107 = *(v106 + 64);
  sub_10006A2BC(v57, v64);
  v108 = swift_isUniquelyReferenced_nonNull_native();
  *(v106 + 64) = v107;
  v109 = v64;
  if ((v108 & 1) == 0)
  {
    v107 = sub_10012E5A4(0, *(v107 + 2) + 1, 1, v107);
    *(v119 + 64) = v107;
  }

  v111 = *(v107 + 2);
  v110 = *(v107 + 3);
  if (v111 >= v110 >> 1)
  {
    v107 = sub_10012E5A4((v110 > 1), v111 + 1, 1, v107);
  }

  *(v107 + 2) = v111 + 1;
  v112 = &v107[16 * v111];
  *(v112 + 4) = v57;
  *(v112 + 5) = v109;
  *(v119 + 64) = v107;
  swift_endAccess();
  sub_10006A2D0(v57, v109);
  sub_10006A2D0(v127, v126);
  sub_10006A2D0(v63, v65);
  sub_10006A2D0(v129, v130);
  sub_1000B8860(v133);
}

uint64_t sub_1001D6458()
{
  v1 = 0;
  v2 = type metadata accessor for SECleanup(0);
  v3 = *(v0 + *(v2 + 28));
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v105 = *(v0 + *(v2 + 28));
  v106 = v0;

  v102 = 0;
  v104 = _swiftEmptyArrayStorage;
LABEL_6:
  if (v7)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v10 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      v19 = v105;

      v1 = _swiftEmptyArrayStorage;
      v110 = _swiftEmptyArrayStorage;
      v20 = *(v106 + *(v2 + 24));
      v21 = v20 + 64;
      v22 = 1 << *(v20 + 32);
      v23 = -1;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      v24 = v23 & *(v20 + 64);
      v25 = (v22 + 63) >> 6;

      v26 = 0;
      while (1)
      {
        do
        {
LABEL_20:
          if (!v24)
          {
            while (1)
            {
              v27 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                goto LABEL_106;
              }

              if (v27 >= v25)
              {

                if (qword_100501A70 != -1)
                {
                  goto LABEL_110;
                }

                goto LABEL_52;
              }

              v24 = *(v21 + 8 * v27);
              ++v26;
              if (v24)
              {
                v26 = v27;
                break;
              }
            }
          }

          v28 = __clz(__rbit64(v24));
          v24 &= v24 - 1;
          v29 = *(*(v20 + 56) + ((v26 << 9) | (8 * v28)));
        }

        while (!*(v29 + 57));
        if (*(v29 + 57) == 2)
        {
          if (*(v29 + 56))
          {
            *(v29 + 57) = 0;

LABEL_41:

            goto LABEL_20;
          }

          *(v29 + 57) = 1;
          swift_beginAccess();
          v30 = *(v29 + 64);
          v103 = *(v30 + 16);
          if (v103)
          {
            v100 = v29;
            v101 = v25;
            v97 = v21;
            v98 = v20;
            v99 = v1;

            v31 = 0;
            v32 = (v30 + 40);
            v33 = v103;
            while (v31 < *(v30 + 16))
            {
              if (*(v19 + 16))
              {
                v1 = *(v32 - 1);
                v34 = *v32;
                sub_100069E2C(v1, *v32);
                v35 = sub_10008C8DC(v1, v34);
                if (v36)
                {
                  v107 = *(*(v19 + 56) + 8 * v35);

                  sub_1001D6E98(&v107);
                  v38 = v37;
                  sub_10006A178(v1, v34);
                  v33 = v103;
                  v19 = v105;

                  if (v38)
                  {

                    v1 = v99;
                    *(v100 + 57) = 0;
                    v21 = v97;
                    v20 = v98;
                    v25 = v101;
                    goto LABEL_41;
                  }
                }

                else
                {
                  sub_10006A178(v1, v34);
                }
              }

              v31 = (v31 + 1);
              v32 += 2;
              if (v33 == v31)
              {

                v20 = v98;
                v1 = v99;
                v21 = v97;
                v29 = v100;
                v25 = v101;
                if (!*(v100 + 57))
                {
                  goto LABEL_41;
                }

                goto LABEL_43;
              }
            }

            goto LABEL_107;
          }

          if (!*(v29 + 57))
          {
            goto LABEL_41;
          }
        }

        else
        {
        }

LABEL_43:
        v101 = v25;
        v103 = &v96;
        v40 = *(v29 + 24);
        v42 = v29;
        v107 = *(v29 + 16);
        v41 = v107;
        v108 = v40;
        __chkstk_darwin(v39);
        v95 = &v107;
        sub_100069E2C(v41, v40);
        v43 = v102;
        v44 = sub_1002F78F8(sub_1001DC608, v94, v1);
        v102 = v43;
        if (v44)
        {

          sub_10006A178(v41, v40);
        }

        else
        {
          v103 = v40;
          v45 = v1;
          v46 = v107;
          v99 = v108;
          v100 = v42;
          sub_100069E2C(v107, v108);
          v47 = v45;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_10012E5A4(0, *(v45 + 16) + 1, 1, v45);
          }

          v48 = v41;
          v50 = *(v47 + 2);
          v49 = *(v47 + 3);
          v51 = v103;
          if (v50 >= v49 >> 1)
          {
            v47 = sub_10012E5A4((v49 > 1), v50 + 1, 1, v47);
          }

          *(v47 + 2) = v50 + 1;
          v52 = &v47[16 * v50];
          *(v52 + 4) = v46;
          v1 = v47;
          *(v52 + 5) = v99;
          sub_10006A178(v48, v51);
          v110 = v47;
        }

        v19 = v105;
        v25 = v101;
      }
    }

    v7 = *(v4 + 8 * v10);
    ++v1;
    if (v7)
    {
      v1 = v10;
LABEL_11:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(*(v105 + 56) + ((v1 << 9) | (8 * v11)));
      v109[0] = v12;

      sub_1001D6E98(v109);
      if ((v13 & 1) == 0)
      {
        v14 = *(v12 + 16);
        v15 = *(v12 + 24);
        sub_100069E2C(v14, v15);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v16 = v104;
        }

        else
        {
          v16 = sub_10012E5A4(0, *(v104 + 2) + 1, 1, v104);
        }

        v18 = *(v16 + 2);
        v17 = *(v16 + 3);
        if (v18 >= v17 >> 1)
        {
          v16 = sub_10012E5A4((v17 > 1), v18 + 1, 1, v16);
        }

        *(v16 + 2) = v18 + 1;
        v104 = v16;
        v9 = &v16[16 * v18];
        *(v9 + 4) = v14;
        *(v9 + 5) = v15;
      }

      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  v53 = swift_once();
LABEL_52:
  __chkstk_darwin(v53);
  v95 = v106;
  v55 = sub_1001FAF64(sub_1001DC5D8, v94, v54);
  v56 = v55;
  v57 = v55 & 0xFFFFFFFFFFFFFF8;
  if (v55 >> 62)
  {
    v58 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v58 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v59 = 0;
  while (1)
  {
    if (v58 == v59)
    {
      goto LABEL_64;
    }

    if ((v56 & 0xC000000000000001) != 0)
    {
      v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v59, 1))
      {
        break;
      }

      goto LABEL_59;
    }

    if (v59 >= *(v57 + 16))
    {
      goto LABEL_108;
    }

    if (__OFADD__(v59, 1))
    {
      break;
    }

LABEL_59:
    v61 = *(v60 + 57);

    ++v59;
    if (!v61)
    {

      __chkstk_darwin(v63);
      v95 = v106;
      result = sub_1002B02E8(sub_1001DB75C, v94);
      v1 = v110;
      v65 = v110[2];
      if (result > v65)
      {
        __break(1u);
      }

      else
      {
        v66 = result;
        if ((result & 0x8000000000000000) == 0)
        {
          v67 = result;
          if (!__OFADD__(v65, result - v65))
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || v67 > *(v1 + 24) >> 1)
            {
              if (v65 <= v67)
              {
                v69 = v67;
              }

              else
              {
                v69 = v65;
              }

              v1 = sub_10012E5A4(isUniquelyReferenced_nonNull_native, v69, 1, v1);
              v110 = v1;
            }

            v62 = sub_1001A17E0(v66, v65, 0);
            v110 = v1;
            goto LABEL_75;
          }

LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }
      }

      __break(1u);
      goto LABEL_115;
    }
  }

  __break(1u);
LABEL_64:

LABEL_75:
  if (qword_100501A78 != -1)
  {
    v62 = swift_once();
  }

  __chkstk_darwin(v62);
  v95 = v106;
  v71 = sub_1001FAF64(sub_1001DB77C, v94, v70);
  v72 = v71;
  v73 = v71 & 0xFFFFFFFFFFFFFF8;
  if (v71 >> 62)
  {
    v74 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v74 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v75 = 0;
  do
  {
    if (v74 == v75)
    {
      goto LABEL_89;
    }

    if ((v72 & 0xC000000000000001) != 0)
    {
      v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v75, 1))
      {
        goto LABEL_88;
      }
    }

    else
    {
      if (v75 >= *(v73 + 16))
      {
        goto LABEL_109;
      }

      if (__OFADD__(v75, 1))
      {
LABEL_88:
        __break(1u);
LABEL_89:

LABEL_100:
        if (qword_100501A80 != -1)
        {
          swift_once();
        }

        v84 = type metadata accessor for Logger();
        sub_1000958E4(v84, qword_100506560);
        v85 = v104;

        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v107 = v89;
          *v88 = 136315138;

          v90 = sub_1001D408C(v85, v1);
          v92 = v91;

          v93 = sub_1002FFA0C(v90, v92, &v107);

          *(v88 + 4) = v93;
          _os_log_impl(&_mh_execute_header, v86, v87, "Preflight Result: %s", v88, 0xCu);
          sub_1000752F4(v89);
        }

        return v85;
      }
    }

    v77 = *(v76 + 57);

    ++v75;
  }

  while (v77);

  __chkstk_darwin(v78);
  v95 = v106;
  result = sub_1002B02E8(sub_1001DB798, v94);
  v1 = v110;
  v79 = v110[2];
  if (result > v79)
  {
    goto LABEL_116;
  }

  v80 = result;
  if (result < 0)
  {
    goto LABEL_117;
  }

  v81 = result;
  if (!__OFADD__(v79, result - v79))
  {
    v82 = swift_isUniquelyReferenced_nonNull_native();
    if (!v82 || v81 > *(v1 + 24) >> 1)
    {
      if (v79 <= v81)
      {
        v83 = v81;
      }

      else
      {
        v83 = v79;
      }

      v1 = sub_10012E5A4(v82, v83, 1, v1);
      v110 = v1;
    }

    sub_1001A17E0(v80, v79, 0);
    goto LABEL_100;
  }

LABEL_118:
  __break(1u);
  return result;
}

void sub_1001D6E98(uint64_t *a1)
{
  v2 = *a1;
  if (*(*a1 + 136) && *(*a1 + 136) != 1)
  {
    v3 = *(v2 + 120);
    v4 = *(v3 + 16);
    if (v4)
    {
      v15 = *a1;
      v5 = *(v1 + *(type metadata accessor for SECleanup(0) + 28));

      v6 = 0;
      v7 = (v3 + 40);
      while (v6 < *(v3 + 16))
      {
        if (*(v5 + 16))
        {
          v8 = *(v7 - 1);
          v9 = *v7;
          sub_100069E2C(v8, *v7);
          v10 = sub_10008C8DC(v8, v9);
          if (v11)
          {
            v12 = *(*(v5 + 56) + 8 * v10);
            v16 = v12;

            sub_1001D6E98(&v16);
            v14 = v13;
            sub_10006A178(v8, v9);
            if (v14)
            {

              *(v12 + 136) = 0;

              return;
            }
          }

          else
          {
            sub_10006A178(v8, v9);
          }
        }

        ++v6;
        v7 += 2;
        if (v4 == v6)
        {

          v2 = v15;
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_15:
      *(v2 + 136) = 1;
    }
  }
}

uint64_t sub_1001D7004(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (qword_100501A70 != -1)
  {
    a1 = swift_once();
  }

  __chkstk_darwin(a1);
  v9 = v3;
  v5 = sub_1001FB084(sub_1001DB7B8, v8, v4);
  v10[0] = v1;
  v10[1] = v2;
  __chkstk_darwin(v5);
  v9 = v10;
  v6 = sub_1002F78F8(sub_100093990, v8, v5);

  return v6 & 1;
}

uint64_t sub_1001D7130@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(*(a2 + *(type metadata accessor for SECleanup(0) + 24)) + 16) && (sub_10008C8DC(*a1, a1[1]), (v5 & 1) != 0))
  {
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t sub_1001D71A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (qword_100501A78 != -1)
  {
    a1 = swift_once();
  }

  __chkstk_darwin(a1);
  v9 = v3;
  v5 = sub_1001FB084(sub_1001DC5F0, v8, v4);
  v10[0] = v1;
  v10[1] = v2;
  __chkstk_darwin(v5);
  v9 = v10;
  v6 = sub_1002F78F8(sub_100093834, v8, v5);

  return v6 & 1;
}

double sub_1001D72D0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + *(type metadata accessor for SECleanup(0) + 24));
  if (*(v5 + 16) && (v6 = sub_10008C8DC(*a1, a1[1]), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    *a3 = v9;
    a3[1] = v10;
    sub_100069E2C(v9, v10);
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_1004098E0;
  }

  return result;
}

void sub_1001D737C()
{
  sub_100068FC4(&qword_1005025E0, &unk_10040F430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10040E5B0;
  if (qword_100501A88 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B3F8;
  v2 = unk_10051B400;
  *(v0 + 32) = qword_10051B3F8;
  *(v0 + 40) = v2;
  sub_100069E2C(v1, v2);
  if (qword_100501A90 != -1)
  {
    swift_once();
  }

  v3 = qword_10051B408;
  v4 = unk_10051B410;
  *(v0 + 48) = qword_10051B408;
  *(v0 + 56) = v4;
  sub_100069E2C(v3, v4);
  if (qword_100501A98 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B418;
  v6 = unk_10051B420;
  *(v0 + 64) = qword_10051B418;
  *(v0 + 72) = v6;
  sub_100069E2C(v5, v6);
  if (qword_100501AA0 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B428;
  v8 = unk_10051B430;
  *(v0 + 80) = qword_10051B428;
  *(v0 + 88) = v8;
  sub_100069E2C(v7, v8);
  if (qword_100501AA8 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B438;
  v10 = unk_10051B440;
  *(v0 + 96) = qword_10051B438;
  *(v0 + 104) = v10;
  sub_100069E2C(v9, v10);
  if (qword_100501AB0 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B448;
  v12 = unk_10051B450;
  *(v0 + 112) = qword_10051B448;
  *(v0 + 120) = v12;
  sub_100069E2C(v11, v12);
  if (qword_100501AD0 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B488;
  v14 = unk_10051B490;
  *(v0 + 128) = qword_10051B488;
  *(v0 + 136) = v14;
  sub_100069E2C(v13, v14);
  if (qword_100501AB8 != -1)
  {
    swift_once();
  }

  v15 = qword_10051B458;
  v16 = unk_10051B460;
  *(v0 + 144) = qword_10051B458;
  *(v0 + 152) = v16;
  sub_100069E2C(v15, v16);
  if (qword_100501AC0 != -1)
  {
    swift_once();
  }

  v17 = qword_10051B468;
  v18 = unk_10051B470;
  *(v0 + 160) = qword_10051B468;
  *(v0 + 168) = v18;
  sub_100069E2C(v17, v18);
  if (qword_100501AD8 != -1)
  {
    swift_once();
  }

  v19 = qword_10051B498;
  v20 = unk_10051B4A0;
  *(v0 + 176) = qword_10051B498;
  *(v0 + 184) = v20;
  qword_100506548 = v0;

  sub_100069E2C(v19, v20);
}

uint64_t sub_1001D7684()
{
  sub_100068FC4(&qword_1005025E0, &unk_10040F430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100409A40;
  result = sub_10013044C(0xD000000000000020, 0x80000001004668E0);
  if (v2 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v0 + 32) = result;
  *(v0 + 40) = v2;
  result = sub_10013044C(0xD000000000000020, 0x8000000100466910);
  if (v3 >> 60 == 15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v0 + 48) = result;
  *(v0 + 56) = v3;
  result = sub_10013044C(0xD000000000000020, 0x8000000100466940);
  if (v4 >> 60 != 15)
  {
    *(v0 + 64) = result;
    *(v0 + 72) = v4;
    qword_100506550 = v0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1001D7768()
{
  sub_100068FC4(&qword_1005025E0, &unk_10040F430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100409900;
  result = sub_10013044C(0xD000000000000014, 0x80000001004668A0);
  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 32) = result;
    *(v0 + 40) = v2;
    result = sub_10013044C(0xD000000000000014, 0x80000001004668C0);
    if (v3 >> 60 != 15)
    {
      *(v0 + 48) = result;
      *(v0 + 56) = v3;
      qword_100506558 = v0;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D781C(uint64_t a1, uint64_t a2)
{

  v3 = sub_1000E0074(v2);

  type metadata accessor for SECleanup(0);

  v4 = sub_1000E39D0();
  v5 = sub_1001D8890(v4, v3);

  v7 = sub_1000E0074(v6);

  sub_1001D1000(v8);
  v10 = v9;

  v11 = sub_1000E0074(v10);

  v12 = sub_1001D8890(v11, v7);

  if (*(v12 + 16) || *(v5 + 16))
  {
    if (qword_100501A80 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000958E4(v13, qword_100506560);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v26[0] = swift_slowAlloc();
      *v16 = 136315394;
      sub_1001D0D38(v5);

      v17 = Array.description.getter();
      v19 = v18;

      v20 = sub_1002FFA0C(v17, v19, v26);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      sub_1001D0D38(v12);

      v21 = Array.description.getter();
      v23 = v22;

      v24 = sub_1002FFA0C(v21, v23, v26);

      *(v16 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v14, v15, "Missed deletions:\nInstances: %s\nModules: %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_1001D7B20(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_1005068E0, &qword_10040E8D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000752B0(a1, a1[3]);
  sub_1001DA0D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  type metadata accessor for SEType();
  sub_1001DA4D4(&qword_1005068E8, 255, &type metadata accessor for SEType, &protocol conformance descriptor for SEType);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for SECleanup(0);
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + *(v9 + 24));
    HIBYTE(v11) = 2;
    sub_100068FC4(&qword_1005068B0, &qword_10040E8C8);
    sub_1001DA35C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + *(v9 + 28));
    HIBYTE(v11) = 3;
    sub_100068FC4(&qword_1005068C8, &qword_10040E8D0);
    sub_1001DA418();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001D7D90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for SEType();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100068FC4(&qword_100506898, &qword_10040E8C0);
  v7 = *(v6 - 8);
  v23 = v6;
  v24 = v7;
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  v10 = type metadata accessor for SECleanup(0);
  __chkstk_darwin(v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000752B0(a1, a1[3]);
  sub_1001DA0D0();
  v25 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000752F4(a1);
  }

  v13 = v12;
  v14 = v21;
  LOBYTE(v27) = 0;
  sub_1001DA4D4(&qword_1005068A8, 255, &type metadata accessor for SEType, &protocol conformance descriptor for SEType);
  v16 = v22;
  v15 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 32))(v13, v16, v4);
  LOBYTE(v27) = 1;
  *(v13 + v10[5]) = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100068FC4(&qword_1005068B0, &qword_10040E8C8);
  v26 = 2;
  sub_1001DA124();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v13 + v10[6]) = v27;
  sub_100068FC4(&qword_1005068C8, &qword_10040E8D0);
  v26 = 3;
  sub_1001DA1E0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v10[7];
  (*(v24 + 8))(v25, v15);
  *(v13 + v17) = v27;
  sub_1001DA29C(v13, v20);
  sub_1000752F4(a1);
  return sub_1001DA300(v13);
}

unint64_t sub_1001D81B4()
{
  v1 = 0x657079546573;
  v2 = 0x73656C75646F6DLL;
  if (*v0 != 2)
  {
    v2 = 0x65636E6174736E69;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_1001D8234@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001DC444(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001D825C(uint64_t a1)
{
  v2 = sub_1001DA0D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D8298(uint64_t a1)
{
  v2 = sub_1001DA0D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001D8304()
{
  result = qword_100506860;
  if (!qword_100506860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506860);
  }

  return result;
}

unint64_t sub_1001D8358()
{
  result = qword_100506870;
  if (!qword_100506870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506870);
  }

  return result;
}

uint64_t sub_1001D83AC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_100506560);
  sub_1000958E4(v2, qword_100506560);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001D8424()
{
  result = sub_10013044C(0xD000000000000012, 0x8000000100466AB0);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B3F8 = result;
    unk_10051B400 = v1;
  }

  return result;
}

uint64_t sub_1001D8470()
{
  result = sub_10013044C(0xD00000000000001CLL, 0x8000000100466A90);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B408 = result;
    unk_10051B410 = v1;
  }

  return result;
}

uint64_t sub_1001D84BC()
{
  result = sub_10013044C(0xD000000000000018, 0x8000000100466A70);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B418 = result;
    unk_10051B420 = v1;
  }

  return result;
}

uint64_t sub_1001D8508()
{
  result = sub_10013044C(0xD000000000000018, 0x8000000100466A50);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B428 = result;
    unk_10051B430 = v1;
  }

  return result;
}

uint64_t sub_1001D8554()
{
  result = sub_10013044C(0xD000000000000010, 0x8000000100466A30);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B438 = result;
    unk_10051B440 = v1;
  }

  return result;
}

uint64_t sub_1001D85A0()
{
  result = sub_10013044C(0xD000000000000020, 0x8000000100466A00);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B448 = result;
    unk_10051B450 = v1;
  }

  return result;
}

uint64_t sub_1001D85EC()
{
  result = sub_10013044C(0xD00000000000001ALL, 0x80000001004669E0);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B458 = result;
    unk_10051B460 = v1;
  }

  return result;
}

uint64_t sub_1001D8638()
{
  result = sub_10013044C(0xD000000000000014, 0x80000001004669C0);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B468 = result;
    unk_10051B470 = v1;
  }

  return result;
}

uint64_t sub_1001D86B0()
{
  result = sub_10013044C(0xD000000000000014, 0x8000000100465660);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B488 = result;
    unk_10051B490 = v1;
  }

  return result;
}

uint64_t sub_1001D86FC()
{
  result = sub_10013044C(0xD00000000000001ALL, 0x80000001004669A0);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B498 = result;
    unk_10051B4A0 = v1;
  }

  return result;
}

uint64_t sub_1001D8748()
{
  result = sub_10013044C(0xD000000000000020, 0x8000000100466970);
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_10051B4A8 = result;
    unk_10051B4B0 = v1;
  }

  return result;
}

uint64_t sub_1001D87B8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, unint64_t *a5)
{
  result = sub_10013044C(a2, a3);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *a4 = result;
    *a5 = v8;
  }

  return result;
}

void *sub_1001D8800(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1001D8A54(result, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int sub_1001D8890(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1001D8A54((&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1001D8800(v11, v6, a2, a1);
  }

  return v9;
}

Swift::Int sub_1001D8A54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) < *(a3 + 16))
  {
    v212 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v227 = a3 + 56;
    v187 = v11;
    v193 = a4 + 56;
    while (1)
    {
      if (v10)
      {
        v12 = __clz(__rbit64(v10));
        v210 = (v10 - 1) & v10;
      }

      else
      {
        v13 = v6;
        do
        {
          v6 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_325;
          }

          if (v6 >= v11)
          {
LABEL_323:

            return sub_10024B29C(a1, a2, v212, v5);
          }

          v14 = *(v7 + 8 * v6);
          ++v13;
        }

        while (!v14);
        v12 = __clz(__rbit64(v14));
        v210 = (v14 - 1) & v14;
      }

      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      Hasher.init(_seed:)();
      sub_100069E2C(v17, v16);
      v223 = v17;
      v225 = v16;
      Data.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v227 + 8 * (v20 >> 6))) == 0)
      {
LABEL_6:
        sub_10006A178(v223, v225);
        v4 = a4;
        v11 = v187;
        v7 = v193;
        v10 = v210;
        continue;
      }

      v23 = ~v19;
      v24 = v16 >> 62;
      if (v17)
      {
        v25 = 0;
      }

      else
      {
        v25 = v16 == 0xC000000000000000;
      }

      v26 = !v25;
      v220 = v26;
      v204 = HIDWORD(v17);
      v27 = __OFSUB__(HIDWORD(v17), v17);
      v214 = v27;
      v200 = (v17 >> 32) - v17;
      v202 = v17 >> 32;
      v215 = v23;
      v216 = v16 >> 62;
      while (1)
      {
        v28 = (*(v5 + 48) + 16 * v20);
        v30 = *v28;
        v29 = v28[1];
        v31 = v29 >> 62;
        if (v29 >> 62 == 3)
        {
          if (v30)
          {
            v32 = 0;
          }

          else
          {
            v32 = v29 == 0xC000000000000000;
          }

          v34 = !v32 || v24 < 3;
          if (((v34 | v220) & 1) == 0)
          {
            v87 = 0;
            v88 = 0xC000000000000000;
            goto LABEL_162;
          }

LABEL_49:
          v35 = 0;
          if (v24 <= 1)
          {
            goto LABEL_46;
          }

          goto LABEL_50;
        }

        if (v31 > 1)
        {
          if (v31 != 2)
          {
            goto LABEL_49;
          }

          v37 = *(v30 + 16);
          v36 = *(v30 + 24);
          v38 = __OFSUB__(v36, v37);
          v35 = v36 - v37;
          if (v38)
          {
            goto LABEL_332;
          }

          if (v24 <= 1)
          {
            goto LABEL_46;
          }
        }

        else if (v31)
        {
          LODWORD(v35) = HIDWORD(v30) - v30;
          if (__OFSUB__(HIDWORD(v30), v30))
          {
            goto LABEL_333;
          }

          v35 = v35;
          if (v24 <= 1)
          {
LABEL_46:
            v39 = BYTE6(v225);
            if (v24)
            {
              v39 = HIDWORD(v223) - v223;
              if (v214)
              {
                goto LABEL_329;
              }
            }

            goto LABEL_52;
          }
        }

        else
        {
          v35 = BYTE6(v29);
          if (v24 <= 1)
          {
            goto LABEL_46;
          }
        }

LABEL_50:
        if (v24 != 2)
        {
          if (!v35)
          {
            goto LABEL_161;
          }

          goto LABEL_26;
        }

        v41 = *(v223 + 16);
        v40 = *(v223 + 24);
        v38 = __OFSUB__(v40, v41);
        v39 = v40 - v41;
        if (v38)
        {
          goto LABEL_328;
        }

LABEL_52:
        if (v35 != v39)
        {
          goto LABEL_26;
        }

        if (v35 < 1)
        {
          goto LABEL_161;
        }

        if (v31 > 1)
        {
          break;
        }

        if (v31)
        {
          if (v30 > v30 >> 32)
          {
            goto LABEL_335;
          }

          sub_100069E2C(v30, v29);
          v51 = __DataStorage._bytes.getter();
          if (v51)
          {
            v52 = v51;
            v53 = __DataStorage._offset.getter();
            if (__OFSUB__(v30, v53))
            {
              goto LABEL_339;
            }

            v196 = (v30 - v53 + v52);
          }

          else
          {
            v196 = 0;
          }

          __DataStorage._length.getter();
          v24 = v216;
          v5 = a3;
          if (v216 == 2)
          {
            v177 = *(v223 + 24);
            v183 = *(v223 + 16);
            v60 = __DataStorage._bytes.getter();
            if (v60)
            {
              v73 = __DataStorage._offset.getter();
              v74 = v183;
              if (__OFSUB__(v183, v73))
              {
                goto LABEL_368;
              }

              v60 += v183 - v73;
            }

            else
            {
              v74 = v183;
            }

            v84 = v177 - v74;
            if (__OFSUB__(v177, v74))
            {
              goto LABEL_358;
            }

            v85 = __DataStorage._length.getter();
            if (v85 >= v84)
            {
              v81 = v84;
            }

            else
            {
              v81 = v85;
            }

            v82 = v196;
            if (!v196)
            {
              goto LABEL_393;
            }

            v5 = a3;
            if (!v60)
            {
              goto LABEL_395;
            }
          }

          else
          {
            if (v216 != 1)
            {
              v72 = v196;
              *__s1 = v223;
              __s1[4] = v204;
              *&__s1[5] = *(&v223 + 5);
              __s1[7] = HIBYTE(v223);
              *&__s1[8] = v225;
              *&__s1[12] = WORD2(v225);
              if (!v196)
              {
                goto LABEL_378;
              }

LABEL_115:
              v69 = memcmp(v72, __s1, BYTE6(v225));
              sub_10006A178(v30, v29);
              v23 = v215;
              goto LABEL_116;
            }

            if (v202 < v223)
            {
              goto LABEL_357;
            }

            v61 = __DataStorage._bytes.getter();
            if (v61)
            {
              v180 = v61;
              v62 = __DataStorage._offset.getter();
              if (__OFSUB__(v223, v62))
              {
                goto LABEL_369;
              }

              v60 = (v223 - v62 + v180);
            }

            else
            {
              v60 = 0;
            }

            v86 = __DataStorage._length.getter();
            v81 = (v223 >> 32) - v223;
            if (v86 < v200)
            {
              v81 = v86;
            }

            v82 = v196;
            if (!v196)
            {
              goto LABEL_396;
            }

            if (!v60)
            {
              goto LABEL_394;
            }
          }

          goto LABEL_156;
        }

        *__s1 = v30;
        *&__s1[8] = v29;
        __s1[10] = BYTE2(v29);
        __s1[11] = BYTE3(v29);
        __s1[12] = BYTE4(v29);
        __s1[13] = BYTE5(v29);
        if (!v24)
        {
          goto LABEL_79;
        }

        if (v24 == 1)
        {
          if (v202 < v223)
          {
            goto LABEL_350;
          }

          sub_100069E2C(v30, v29);
          v42 = __DataStorage._bytes.getter();
          if (!v42)
          {
            goto LABEL_388;
          }

          v43 = v42;
          v44 = __DataStorage._offset.getter();
          if (__OFSUB__(v223, v44))
          {
            goto LABEL_354;
          }

          v45 = (v223 - v44 + v43);
          v46 = __DataStorage._length.getter();
          if (!v45)
          {
            goto LABEL_381;
          }

          goto LABEL_102;
        }

        v198 = *(v223 + 16);
        v181 = *(v223 + 24);
        sub_100069E2C(v30, v29);
        v54 = __DataStorage._bytes.getter();
        if (v54)
        {
          v63 = __DataStorage._offset.getter();
          v64 = v198;
          if (__OFSUB__(v198, v63))
          {
            goto LABEL_364;
          }

          v54 = &v198[v54 - v63];
        }

        else
        {
          v64 = v198;
        }

        v75 = v181 - v64;
        if (__OFSUB__(v181, v64))
        {
          goto LABEL_351;
        }

        v76 = __DataStorage._length.getter();
        if (!v54)
        {
          goto LABEL_380;
        }

LABEL_125:
        if (v76 >= v75)
        {
          v77 = v75;
        }

        else
        {
          v77 = v76;
        }

        v78 = memcmp(__s1, v54, v77);
        sub_10006A178(v30, v29);
        v5 = a3;
LABEL_158:
        v23 = v215;
        v24 = v216;
        if (!v78)
        {
          goto LABEL_161;
        }

LABEL_26:
        v20 = (v20 + 1) & v23;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if ((*(v227 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
        {
          goto LABEL_6;
        }
      }

      if (v31 != 2)
      {
        *&__s1[6] = 0;
        *__s1 = 0;
        if (!v24)
        {
LABEL_79:
          __s2 = v223;
          v230 = v204;
          v231 = *(&v223 + 5);
          v232 = HIBYTE(v223);
          v233 = v225;
          v234 = WORD2(v225);
          v57 = memcmp(__s1, &__s2, BYTE6(v225));
          v23 = v215;
          if (!v57)
          {
            goto LABEL_161;
          }

          goto LABEL_26;
        }

        if (v24 != 2)
        {
          if (v202 < v223)
          {
            goto LABEL_349;
          }

          sub_100069E2C(v30, v29);
          v65 = __DataStorage._bytes.getter();
          if (!v65)
          {
            goto LABEL_382;
          }

          v66 = v65;
          v67 = __DataStorage._offset.getter();
          if (__OFSUB__(v223, v67))
          {
            goto LABEL_355;
          }

          v45 = (v223 - v67 + v66);
          v46 = __DataStorage._length.getter();
          if (!v45)
          {
            goto LABEL_383;
          }

LABEL_102:
          if (v46 >= v200)
          {
            v68 = (v223 >> 32) - v223;
          }

          else
          {
            v68 = v46;
          }

          v69 = memcmp(__s1, v45, v68);
          sub_10006A178(v30, v29);
          v5 = a3;
          v23 = v215;
          v24 = v216;
LABEL_116:
          if (!v69)
          {
            goto LABEL_161;
          }

          goto LABEL_26;
        }

        v197 = *(v223 + 16);
        v178 = *(v223 + 24);
        sub_100069E2C(v30, v29);
        v54 = __DataStorage._bytes.getter();
        if (v54)
        {
          v55 = __DataStorage._offset.getter();
          v56 = v197;
          if (__OFSUB__(v197, v55))
          {
            goto LABEL_365;
          }

          v54 = &v197[v54 - v55];
        }

        else
        {
          v56 = v197;
        }

        v75 = v178 - v56;
        if (__OFSUB__(v178, v56))
        {
          goto LABEL_352;
        }

        v76 = __DataStorage._length.getter();
        if (!v54)
        {
          goto LABEL_377;
        }

        goto LABEL_125;
      }

      v47 = *(v30 + 16);
      sub_100069E2C(v30, v29);
      v48 = __DataStorage._bytes.getter();
      if (v48)
      {
        v49 = v48;
        v50 = __DataStorage._offset.getter();
        if (__OFSUB__(v47, v50))
        {
          goto LABEL_338;
        }

        v195 = (v47 - v50 + v49);
      }

      else
      {
        v195 = 0;
      }

      __DataStorage._length.getter();
      v24 = v216;
      v5 = a3;
      if (v216 == 2)
      {
        v176 = *(v223 + 24);
        v182 = *(v223 + 16);
        v60 = __DataStorage._bytes.getter();
        if (v60)
        {
          v70 = __DataStorage._offset.getter();
          v71 = v182;
          if (__OFSUB__(v182, v70))
          {
            goto LABEL_366;
          }

          v60 += v182 - v70;
        }

        else
        {
          v71 = v182;
        }

        v79 = v176 - v71;
        if (__OFSUB__(v176, v71))
        {
          goto LABEL_356;
        }

        v80 = __DataStorage._length.getter();
        if (v80 >= v79)
        {
          v81 = v79;
        }

        else
        {
          v81 = v80;
        }

        v82 = v195;
        if (!v195)
        {
          goto LABEL_398;
        }

        v5 = a3;
        if (!v60)
        {
          goto LABEL_397;
        }
      }

      else
      {
        if (v216 != 1)
        {
          v72 = v195;
          *__s1 = v223;
          __s1[4] = v204;
          *&__s1[5] = *(&v223 + 5);
          __s1[7] = HIBYTE(v223);
          *&__s1[8] = v225;
          *&__s1[12] = WORD2(v225);
          if (!v195)
          {
            goto LABEL_379;
          }

          goto LABEL_115;
        }

        if (v202 < v223)
        {
          goto LABEL_353;
        }

        v58 = __DataStorage._bytes.getter();
        if (v58)
        {
          v179 = v58;
          v59 = __DataStorage._offset.getter();
          if (__OFSUB__(v223, v59))
          {
            goto LABEL_367;
          }

          v60 = (v223 - v59 + v179);
        }

        else
        {
          v60 = 0;
        }

        v83 = __DataStorage._length.getter();
        v81 = (v223 >> 32) - v223;
        if (v83 < v200)
        {
          v81 = v83;
        }

        v82 = v195;
        if (!v195)
        {
          goto LABEL_392;
        }

        if (!v60)
        {
          goto LABEL_391;
        }
      }

LABEL_156:
      if (v82 != v60)
      {
        v78 = memcmp(v82, v60, v81);
        sub_10006A178(v30, v29);
        goto LABEL_158;
      }

      sub_10006A178(v30, v29);
LABEL_161:
      v87 = v223;
      v88 = v225;
LABEL_162:
      sub_10006A178(v87, v88);
      a1[v21] |= v22;
      v38 = __OFADD__(v212++, 1);
      v4 = a4;
      v11 = v187;
      v7 = v193;
      v10 = v210;
      if (v38)
      {
        __break(1u);
        break;
      }
    }
  }

  v212 = 0;
  v89 = 0;
  v194 = v5 + 56;
  v90 = 1 << *(v5 + 32);
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  else
  {
    v91 = -1;
  }

  v92 = v91 & *(v5 + 56);
  v93 = (v90 + 63) >> 6;
  v201 = v93;
  v94 = v4 + 56;
  v221 = v4 + 56;
  while (1)
  {
LABEL_170:
    if (v92)
    {
      v95 = __clz(__rbit64(v92));
      v96 = (v92 - 1) & v92;
      goto LABEL_177;
    }

    v97 = v89;
    do
    {
      v89 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
LABEL_353:
        __break(1u);
LABEL_354:
        __break(1u);
LABEL_355:
        __break(1u);
LABEL_356:
        __break(1u);
LABEL_357:
        __break(1u);
LABEL_358:
        __break(1u);
LABEL_359:
        __break(1u);
LABEL_360:
        __break(1u);
LABEL_361:
        __break(1u);
LABEL_362:
        __break(1u);
LABEL_363:
        __break(1u);
LABEL_364:
        __break(1u);
LABEL_365:
        __break(1u);
LABEL_366:
        __break(1u);
LABEL_367:
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        __break(1u);
      }

      if (v89 >= v93)
      {
        goto LABEL_323;
      }

      v98 = *(v194 + 8 * v89);
      ++v97;
    }

    while (!v98);
    v95 = __clz(__rbit64(v98));
    v96 = (v98 - 1) & v98;
LABEL_177:
    v99 = v95 | (v89 << 6);
    v213 = v96;
    v100 = (*(v5 + 48) + 16 * v99);
    v102 = *v100;
    v101 = v100[1];
    Hasher.init(_seed:)();
    sub_100069E2C(v102, v101);
    Data.hash(into:)();
    v103 = Hasher._finalize()();
    v104 = -1 << *(v4 + 32);
    v105 = v103 & ~v104;
    v106 = v94;
    v228 = v101;
    if ((*(v94 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105))
    {
      break;
    }

LABEL_169:
    v94 = v106;
    sub_10006A178(v102, v228);
    v5 = a3;
    v93 = v201;
    v92 = v213;
  }

  v199 = v99;
  v107 = ~v104;
  v108 = v101 >> 62;
  if (v102)
  {
    v109 = 0;
  }

  else
  {
    v109 = v101 == 0xC000000000000000;
  }

  v110 = !v109;
  v224 = v110;
  v111 = __OFSUB__(HIDWORD(v102), v102);
  v217 = v111;
  v226 = BYTE6(v101);
  v211 = v102 >> 32;
  v203 = (v102 >> 32) - v102;
  __n = v107;
  while (1)
  {
    v112 = (*(v4 + 48) + 16 * v105);
    v113 = *v112;
    v114 = v112[1];
    v115 = v114 >> 62;
    if (v114 >> 62 == 3)
    {
      if (v113)
      {
        v116 = 0;
      }

      else
      {
        v116 = v114 == 0xC000000000000000;
      }

      v118 = !v116 || v108 < 3;
      if (((v118 | v224) & 1) == 0)
      {
        v94 = v106;
        v172 = 0;
        v173 = 0xC000000000000000;
LABEL_318:
        sub_10006A178(v172, v173);
        v174 = v212;
        goto LABEL_319;
      }

LABEL_212:
      v119 = 0;
      if (v108 <= 1)
      {
        goto LABEL_209;
      }

      goto LABEL_213;
    }

    if (v115 > 1)
    {
      if (v115 != 2)
      {
        goto LABEL_212;
      }

      v121 = *(v113 + 16);
      v120 = *(v113 + 24);
      v38 = __OFSUB__(v120, v121);
      v119 = v120 - v121;
      if (v38)
      {
        goto LABEL_330;
      }

      if (v108 <= 1)
      {
        goto LABEL_209;
      }
    }

    else if (v115)
    {
      LODWORD(v119) = HIDWORD(v113) - v113;
      if (__OFSUB__(HIDWORD(v113), v113))
      {
        goto LABEL_331;
      }

      v119 = v119;
      if (v108 <= 1)
      {
LABEL_209:
        v122 = v226;
        if (v108)
        {
          v122 = HIDWORD(v102) - v102;
          if (v217)
          {
            goto LABEL_326;
          }
        }

        goto LABEL_215;
      }
    }

    else
    {
      v119 = BYTE6(v114);
      if (v108 <= 1)
      {
        goto LABEL_209;
      }
    }

LABEL_213:
    if (v108 != 2)
    {
      if (!v119)
      {
        goto LABEL_317;
      }

      goto LABEL_189;
    }

    v124 = *(v102 + 16);
    v123 = *(v102 + 24);
    v38 = __OFSUB__(v123, v124);
    v122 = v123 - v124;
    if (v38)
    {
      goto LABEL_327;
    }

LABEL_215:
    if (v119 != v122)
    {
      goto LABEL_189;
    }

    if (v119 < 1)
    {
      goto LABEL_317;
    }

    if (v115 > 1)
    {
      break;
    }

    if (v115)
    {
      if (v113 > v113 >> 32)
      {
        goto LABEL_334;
      }

      sub_100069E2C(v113, v114);
      v131 = __DataStorage._bytes.getter();
      if (v131)
      {
        v132 = v131;
        v133 = __DataStorage._offset.getter();
        if (__OFSUB__(v113, v133))
        {
          goto LABEL_337;
        }

        v206 = (v113 - v133 + v132);
      }

      else
      {
        v206 = 0;
      }

      __DataStorage._length.getter();
      v4 = a4;
      v107 = __n;
      if (v108 == 2)
      {
        v192 = *(v102 + 16);
        v185 = *(v102 + 24);
        v141 = __DataStorage._bytes.getter();
        if (v141)
        {
          v157 = __DataStorage._offset.getter();
          v158 = v192;
          if (__OFSUB__(v192, v157))
          {
            goto LABEL_362;
          }

          v141 += v192 - v157;
        }

        else
        {
          v158 = v192;
        }

        v168 = v185 - v158;
        if (__OFSUB__(v185, v158))
        {
          goto LABEL_348;
        }

        v169 = __DataStorage._length.getter();
        if (v169 >= v168)
        {
          v165 = v168;
        }

        else
        {
          v165 = v169;
        }

        v166 = v206;
        if (!v206)
        {
          goto LABEL_390;
        }

        v4 = a4;
        if (!v141)
        {
          goto LABEL_389;
        }

        goto LABEL_315;
      }

      if (v108 == 1)
      {
        if (v211 < v102)
        {
          goto LABEL_347;
        }

        v142 = __DataStorage._bytes.getter();
        if (v142)
        {
          v190 = v142;
          v143 = __DataStorage._offset.getter();
          if (__OFSUB__(v102, v143))
          {
            goto LABEL_363;
          }

          v141 = (v102 - v143 + v190);
        }

        else
        {
          v141 = 0;
        }

        v170 = __DataStorage._length.getter();
        v165 = (v102 >> 32) - v102;
        if (v170 < v203)
        {
          v165 = v170;
        }

        v166 = v206;
        if (!v206)
        {
          goto LABEL_385;
        }

        if (!v141)
        {
          goto LABEL_384;
        }

        goto LABEL_315;
      }

      v156 = v206;
      *__s1 = v102;
      *&__s1[8] = v228;
      *&__s1[12] = WORD2(v228);
      if (!v206)
      {
        goto LABEL_371;
      }

      goto LABEL_277;
    }

    *__s1 = v113;
    *&__s1[8] = v114;
    __s1[10] = BYTE2(v114);
    __s1[11] = BYTE3(v114);
    __s1[12] = BYTE4(v114);
    __s1[13] = BYTE5(v114);
    if (!v108)
    {
      goto LABEL_240;
    }

    if (v108 == 1)
    {
      if (v211 < v102)
      {
        goto LABEL_342;
      }

      sub_100069E2C(v113, v114);
      v125 = sub_100189FB8(v102, v211, v228 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (v209)
      {
        goto LABEL_399;
      }

      v126 = v125;
      sub_10006A178(v113, v114);
    }

    else
    {
      v144 = *(v102 + 16);
      v145 = *(v102 + 24);
      sub_100069E2C(v113, v114);
      v146 = sub_100189FB8(v144, v145, v228 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (v209)
      {
        goto LABEL_399;
      }

      v126 = v146;
      sub_10006A178(v113, v114);
      v4 = a4;
    }

    v106 = v221;
    if (v126)
    {
      goto LABEL_317;
    }

LABEL_189:
    v105 = (v105 + 1) & v107;
    if (((*(v106 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105) & 1) == 0)
    {
      goto LABEL_169;
    }
  }

  if (v115 == 2)
  {
    v127 = *(v113 + 16);
    sub_100069E2C(v113, v114);
    v128 = __DataStorage._bytes.getter();
    if (v128)
    {
      v129 = v128;
      v130 = __DataStorage._offset.getter();
      if (__OFSUB__(v127, v130))
      {
        goto LABEL_336;
      }

      v205 = (v127 - v130 + v129);
    }

    else
    {
      v205 = 0;
    }

    __DataStorage._length.getter();
    v4 = a4;
    v107 = __n;
    if (v108 == 2)
    {
      v191 = *(v102 + 16);
      v184 = *(v102 + 24);
      v141 = __DataStorage._bytes.getter();
      if (v141)
      {
        v154 = __DataStorage._offset.getter();
        v155 = v191;
        if (__OFSUB__(v191, v154))
        {
          goto LABEL_360;
        }

        v141 += v191 - v154;
      }

      else
      {
        v155 = v191;
      }

      v163 = v184 - v155;
      if (__OFSUB__(v184, v155))
      {
        goto LABEL_346;
      }

      v164 = __DataStorage._length.getter();
      if (v164 >= v163)
      {
        v165 = v163;
      }

      else
      {
        v165 = v164;
      }

      v166 = v205;
      if (!v205)
      {
        goto LABEL_376;
      }

      v4 = a4;
      if (!v141)
      {
        goto LABEL_375;
      }

      goto LABEL_315;
    }

    if (v108 == 1)
    {
      if (v211 < v102)
      {
        goto LABEL_344;
      }

      v139 = __DataStorage._bytes.getter();
      if (v139)
      {
        v189 = v139;
        v140 = __DataStorage._offset.getter();
        if (__OFSUB__(v102, v140))
        {
          goto LABEL_361;
        }

        v141 = (v102 - v140 + v189);
      }

      else
      {
        v141 = 0;
      }

      v167 = __DataStorage._length.getter();
      v165 = (v102 >> 32) - v102;
      if (v167 < v203)
      {
        v165 = v167;
      }

      v166 = v205;
      if (!v205)
      {
        goto LABEL_387;
      }

      if (!v141)
      {
        goto LABEL_386;
      }

LABEL_315:
      if (v166 == v141)
      {
        sub_10006A178(v113, v114);
        sub_10006A178(v102, v228);
        v174 = v212;
        v94 = v221;
LABEL_319:
        v92 = v213;
        *(a1 + ((v199 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v199;
        v212 = v174 + 1;
        v5 = a3;
        v93 = v201;
        if (__OFADD__(v174, 1))
        {
          goto LABEL_340;
        }

        goto LABEL_170;
      }

      v171 = memcmp(v166, v141, v165);
      sub_10006A178(v113, v114);
      v106 = v221;
      v107 = __n;
      if (!v171)
      {
        goto LABEL_317;
      }

      goto LABEL_189;
    }

    v156 = v205;
    *__s1 = v102;
    *&__s1[8] = v228;
    *&__s1[12] = WORD2(v228);
    if (!v205)
    {
      goto LABEL_374;
    }

LABEL_277:
    v153 = memcmp(v156, __s1, v226);
    sub_10006A178(v113, v114);
LABEL_278:
    v106 = v221;
    if (!v153)
    {
      goto LABEL_317;
    }

    goto LABEL_189;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v108)
  {
LABEL_240:
    LOWORD(__s2) = v102;
    BYTE2(__s2) = BYTE2(v102);
    HIBYTE(__s2) = BYTE3(v102);
    v230 = BYTE4(v102);
    LOBYTE(v231) = BYTE5(v102);
    HIBYTE(v231) = BYTE6(v102);
    v232 = HIBYTE(v102);
    v233 = v228;
    v234 = WORD2(v228);
    v137 = v106;
    v138 = memcmp(__s1, &__s2, v226);
    v106 = v137;
    if (!v138)
    {
      goto LABEL_317;
    }

    goto LABEL_189;
  }

  if (v108 != 2)
  {
    if (v211 < v102)
    {
      goto LABEL_341;
    }

    sub_100069E2C(v113, v114);
    v147 = __DataStorage._bytes.getter();
    if (!v147)
    {
      goto LABEL_372;
    }

    v148 = v147;
    v149 = __DataStorage._offset.getter();
    if (__OFSUB__(v102, v149))
    {
      goto LABEL_345;
    }

    v150 = (v102 - v149 + v148);
    v151 = __DataStorage._length.getter();
    if (!v150)
    {
      goto LABEL_373;
    }

    if (v151 >= v203)
    {
      v152 = (v102 >> 32) - v102;
    }

    else
    {
      v152 = v151;
    }

    v153 = memcmp(__s1, v150, v152);
    sub_10006A178(v113, v114);
    v4 = a4;
    v107 = __n;
    goto LABEL_278;
  }

  v207 = *(v102 + 16);
  v188 = *(v102 + 24);
  sub_100069E2C(v113, v114);
  v134 = __DataStorage._bytes.getter();
  if (v134)
  {
    v135 = __DataStorage._offset.getter();
    v136 = v207;
    if (__OFSUB__(v207, v135))
    {
      goto LABEL_359;
    }

    v134 = &v207[v134 - v135];
  }

  else
  {
    v136 = v207;
  }

  v159 = v188 - v136;
  if (__OFSUB__(v188, v136))
  {
    goto LABEL_343;
  }

  v160 = __DataStorage._length.getter();
  if (v134)
  {
    if (v160 >= v159)
    {
      v161 = v159;
    }

    else
    {
      v161 = v160;
    }

    v162 = memcmp(__s1, v134, v161);
    sub_10006A178(v113, v114);
    v4 = a4;
    v106 = v221;
    v107 = __n;
    if (!v162)
    {
LABEL_317:
      v94 = v106;
      v172 = v102;
      v173 = v228;
      goto LABEL_318;
    }

    goto LABEL_189;
  }

  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __DataStorage._length.getter();
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);
LABEL_382:
  __DataStorage._length.getter();
LABEL_383:
  __break(1u);
LABEL_384:
  __break(1u);
LABEL_385:
  __break(1u);
LABEL_386:
  __break(1u);
LABEL_387:
  __break(1u);
LABEL_388:
  __DataStorage._length.getter();
  __break(1u);
LABEL_389:
  __break(1u);
LABEL_390:
  __break(1u);
LABEL_391:
  __break(1u);
LABEL_392:
  __break(1u);
LABEL_393:
  __break(1u);
LABEL_394:
  __break(1u);
LABEL_395:
  __break(1u);
LABEL_396:
  __break(1u);
LABEL_397:
  __break(1u);
LABEL_398:
  __break(1u);
LABEL_399:

  __break(1u);
  return result;
}

unint64_t sub_1001D9FD4()
{
  result = qword_100506880;
  if (!qword_100506880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506880);
  }

  return result;
}

unint64_t sub_1001DA028()
{
  result = qword_100506888;
  if (!qword_100506888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506888);
  }

  return result;
}

unint64_t sub_1001DA07C()
{
  result = qword_100506890;
  if (!qword_100506890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506890);
  }

  return result;
}

unint64_t sub_1001DA0D0()
{
  result = qword_1005068A0;
  if (!qword_1005068A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005068A0);
  }

  return result;
}

unint64_t sub_1001DA124()
{
  result = qword_1005068B8;
  if (!qword_1005068B8)
  {
    sub_1000692D8(&qword_1005068B0, &qword_10040E8C8);
    sub_1000B87D4();
    sub_1001DA4D4(&qword_1005068C0, v1, type metadata accessor for SECleanup.Module, &unk_10040E858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005068B8);
  }

  return result;
}

unint64_t sub_1001DA1E0()
{
  result = qword_1005068D0;
  if (!qword_1005068D0)
  {
    sub_1000692D8(&qword_1005068C8, &qword_10040E8D0);
    sub_1000B87D4();
    sub_1001DA4D4(&qword_1005068D8, v1, type metadata accessor for SECleanup.Instance, &unk_10040E7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005068D0);
  }

  return result;
}

uint64_t sub_1001DA29C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SECleanup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DA300(uint64_t a1)
{
  v2 = type metadata accessor for SECleanup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001DA35C()
{
  result = qword_1005068F0;
  if (!qword_1005068F0)
  {
    sub_1000692D8(&qword_1005068B0, &qword_10040E8C8);
    sub_1000B8890();
    sub_1001DA4D4(&qword_1005068F8, v1, type metadata accessor for SECleanup.Module, &unk_10040E830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005068F0);
  }

  return result;
}

unint64_t sub_1001DA418()
{
  result = qword_100506900;
  if (!qword_100506900)
  {
    sub_1000692D8(&qword_1005068C8, &qword_10040E8D0);
    sub_1000B8890();
    sub_1001DA4D4(&qword_100506908, v1, type metadata accessor for SECleanup.Instance, &unk_10040E790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506900);
  }

  return result;
}

uint64_t sub_1001DA4D4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1001DA51C(void *a1, uint64_t (*a2)(uint64_t, unint64_t))
{
  v4 = sub_1002EA4AC(0);
  if (*(v4 + 2))
  {
    v5 = *(v4 + 4);
    v6 = *(v4 + 5);
    sub_100069E2C(v5, v6);
  }

  else
  {
    v5 = 0;
    v6 = 0xF000000000000000;
  }

  v7 = sub_1002EA4AC(2);
  if (!*(v7 + 2))
  {

    sub_1002EA4AC(1);
    v8 = 0;
    v10 = 0xF000000000000000;
    goto LABEL_10;
  }

  v8 = *(v7 + 4);
  v9 = *(v7 + 5);
  v10 = v7;
  sub_100069E2C(v8, v9);

  v11 = sub_1002EA4AC(1);
  v12 = v11;
  if (v6 >> 60 == 15)
  {
    v10 = v9;
LABEL_10:

    goto LABEL_11;
  }

  v40 = v9;
  if (v9 >> 60 == 15)
  {
    v10 = v9;
    goto LABEL_10;
  }

  v27 = *(v11 + 2);
  if (!v27)
  {

    v10 = v9;
LABEL_11:
    if (qword_100501A80 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

  v35 = v8;
  v37 = v6;
  v39 = v5;
  v28 = (v11 + 40);
  v6 = -v27;
  v8 = -1;
  while (1)
  {
    v5 = v6 + v8;
    if (v6 + v8 == -1)
    {
      v32 = 2;
      goto LABEL_24;
    }

    if (++v8 >= *(v12 + 2))
    {
      break;
    }

    v29 = v28 + 2;
    v30 = *(v28 - 1);
    v10 = *v28;
    sub_100069E2C(v30, *v28);
    v31 = a2(v30, v10);
    sub_10006A178(v30, v10);
    v28 = v29;
    if (v31)
    {
      v32 = 0;
LABEL_24:

      type metadata accessor for SECleanup.Module();
      v33 = swift_allocObject();
      *(v33 + 64) = _swiftEmptyArrayStorage;
      *(v33 + 72) = 0;
      *(v33 + 16) = v39;
      *(v33 + 24) = v37;
      *(v33 + 32) = v35;
      *(v33 + 40) = v40;
      *(v33 + 48) = v12;
      *(v33 + 56) = v5 != -1;
      *(v33 + 57) = v32;
      return;
    }
  }

  __break(1u);
LABEL_26:
  swift_once();
LABEL_12:
  v13 = type metadata accessor for Logger();
  sub_1000958E4(v13, qword_100506560);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v38 = v5;
    v41 = v10;
    v34 = v8;
    v36 = v6;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v42 = v18;
    *v17 = 136315138;
    v19 = [v14 value];

    if (v19)
    {
      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      sub_100288788(v20, v22);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v23 = BidirectionalCollection<>.joined(separator:)();
      v25 = v24;
      sub_10006A178(v20, v22);

      v26 = sub_1002FFA0C(v23, v25, &v42);

      *(v17 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v15, v16, "Skipping Module: %s", v17, 0xCu);
      sub_1000752F4(v18);

      sub_10006A2D0(v38, v36);
      sub_10006A2D0(v34, v41);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_10006A2D0(v5, v6);
    sub_10006A2D0(v8, v10);
  }
}

uint64_t sub_1001DA928(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x416567616B636170 && a2 == 0xEA00000000004449;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xED00004453536465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4941656C75646F6DLL && a2 == 0xEA00000000007344 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A696D6F527369 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E49656C75646F6DLL && a2 == 0xEF7365636E617473 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100466700 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1001DAB9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580577 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6580589 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746169636F737361 && a2 == 0xED00004453536465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100464D80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100466750 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6379636566696CLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1001DADF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6576696C61 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684104548 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1001DAF08(void *a1)
{
  v29 = sub_100068FC4(&qword_100506910, &qword_10040E8E0);
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v33 = &v26 - v2;
  v3 = sub_100068FC4(&qword_100506918, &qword_10040E8E8);
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v26 - v4;
  v6 = sub_100068FC4(&qword_100506920, &qword_10040E8F0);
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_100068FC4(&qword_100506928, &qword_10040E8F8);
  v34 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  sub_1000752B0(a1, a1[3]);
  sub_1001DB498();
  v12 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    goto LABEL_14;
  }

  v27 = v6;
  v13 = v33;
  v35 = a1;
  v14 = v11;
  v15 = KeyedDecodingContainer.allKeys.getter();
  v16 = *(v15 + 16);
  if (!v16 || ((v17 = *(v15 + 32), v16 == 1) ? (v18 = v17 == 3) : (v18 = 1), v18))
  {
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    sub_100068FC4(&qword_100506938, &qword_10040E900);
    *v21 = &type metadata for SECleanup.Status;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.typeMismatch(_:), v19);
    swift_willThrow();
    (*(v34 + 8))(v14, v9);
    swift_unknownObjectRelease();
    a1 = v35;
LABEL_14:
    sub_1000752F4(a1);
    return 0;
  }

  v36 = *(v15 + 32);
  if (!v17)
  {
    v37 = 0;
    sub_1001DB594();
    v22 = v11;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v28 + 8))(v8, v27);
    v23 = v34;
    goto LABEL_15;
  }

  if (v17 == 1)
  {
    v38 = 1;
    sub_1001DB540();
    v22 = v11;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v23 = v34;
    (*(v30 + 8))(v5, v31);
LABEL_15:
    (*(v23 + 8))(v22, v9);
    goto LABEL_16;
  }

  v39 = 2;
  sub_1001DB4EC();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v24 = v34;
  (*(v32 + 8))(v13, v29);
  (*(v24 + 8))(v14, v9);
LABEL_16:
  swift_unknownObjectRelease();
  sub_1000752F4(v35);
  return v36;
}

unint64_t sub_1001DB498()
{
  result = qword_100506930;
  if (!qword_100506930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506930);
  }

  return result;
}

unint64_t sub_1001DB4EC()
{
  result = qword_100506940;
  if (!qword_100506940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506940);
  }

  return result;
}

unint64_t sub_1001DB540()
{
  result = qword_100506948;
  if (!qword_100506948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506948);
  }

  return result;
}

unint64_t sub_1001DB594()
{
  result = qword_100506950;
  if (!qword_100506950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506950);
  }

  return result;
}

unint64_t sub_1001DB5E8()
{
  result = qword_100506980;
  if (!qword_100506980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506980);
  }

  return result;
}

uint64_t sub_1001DB63C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(&qword_100502458, &qword_10040C1F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001DB6B4()
{
  result = qword_100506990;
  if (!qword_100506990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506990);
  }

  return result;
}

unint64_t sub_1001DB708()
{
  result = qword_100506998;
  if (!qword_100506998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506998);
  }

  return result;
}

uint64_t sub_1001DB7D4(uint64_t a1)
{
  v5 = xmmword_1004098D0;
  v6 = xmmword_1004098D0;
  sub_10007ED68(0, 0xF000000000000000, &off_1004C48A8, a1, &v6);
  sub_10007A4D4(0, 0xF000000000000000, &off_1004C48D0, a1, &v5);
  v2 = v6;
  v3 = v5;
  sub_100069E2C(v6, *(&v6 + 1));
  sub_100069E2C(v3, *(&v3 + 1));
  sub_10006A178(v3, *(&v3 + 1));
  sub_10006A178(v2, *(&v2 + 1));
  return v2;
}

uint64_t sub_1001DBA7C()
{
  v1 = *(type metadata accessor for SECleanup(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for SEType();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001DBB70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SECleanup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_1001DBBD4(uint64_t a1, unint64_t a2)
{
  type metadata accessor for SECleanup(0);

  return sub_1001D52EC(a1, a2);
}

uint64_t _s19SECSessionAnalyticsC10CountEventOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s19SECSessionAnalyticsC10CountEventOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001DBE18()
{
  result = qword_1005069A8;
  if (!qword_1005069A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005069A8);
  }

  return result;
}

unint64_t sub_1001DBE70()
{
  result = qword_1005069B0;
  if (!qword_1005069B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005069B0);
  }

  return result;
}

unint64_t sub_1001DBEC8()
{
  result = qword_1005069B8;
  if (!qword_1005069B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005069B8);
  }

  return result;
}

unint64_t sub_1001DBF20()
{
  result = qword_1005069C0;
  if (!qword_1005069C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005069C0);
  }

  return result;
}

unint64_t sub_1001DBF78()
{
  result = qword_1005069C8;
  if (!qword_1005069C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005069C8);
  }

  return result;
}

unint64_t sub_1001DBFD0()
{
  result = qword_1005069D0;
  if (!qword_1005069D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005069D0);
  }

  return result;
}

unint64_t sub_1001DC028()
{
  result = qword_1005069D8;
  if (!qword_1005069D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005069D8);
  }

  return result;
}

unint64_t sub_1001DC080()
{
  result = qword_1005069E0;
  if (!qword_1005069E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005069E0);
  }

  return result;
}

unint64_t sub_1001DC0D8()
{
  result = qword_1005069E8;
  if (!qword_1005069E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005069E8);
  }

  return result;
}

unint64_t sub_1001DC130()
{
  result = qword_1005069F0;
  if (!qword_1005069F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005069F0);
  }

  return result;
}

unint64_t sub_1001DC188()
{
  result = qword_1005069F8;
  if (!qword_1005069F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005069F8);
  }

  return result;
}

unint64_t sub_1001DC1E0()
{
  result = qword_100506A00;
  if (!qword_100506A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506A00);
  }

  return result;
}

unint64_t sub_1001DC238()
{
  result = qword_100506A08;
  if (!qword_100506A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506A08);
  }

  return result;
}

unint64_t sub_1001DC290()
{
  result = qword_100506A10;
  if (!qword_100506A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506A10);
  }

  return result;
}

unint64_t sub_1001DC2E8()
{
  result = qword_100506A18;
  if (!qword_100506A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506A18);
  }

  return result;
}

unint64_t sub_1001DC340()
{
  result = qword_100506A20;
  if (!qword_100506A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506A20);
  }

  return result;
}

unint64_t sub_1001DC398()
{
  result = qword_100506A28;
  if (!qword_100506A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506A28);
  }

  return result;
}

unint64_t sub_1001DC3F0()
{
  result = qword_100506A30;
  if (!qword_100506A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506A30);
  }

  return result;
}

uint64_t sub_1001DC444(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657079546573 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100466AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656C75646F6DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636E6174736E69 && a2 == 0xE900000000000073)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

char *sub_1001DC638()
{
  v0 = objc_allocWithZone(type metadata accessor for PassSelectionObserver());
  result = sub_1001DC66C();
  qword_10051B4C8 = result;
  return result;
}

char *sub_1001DC66C()
{
  *(v0 + OBJC_IVAR____TtC10seserviced21PassSelectionObserver_passSelectionExceptionDurationInSeconds) = 0x404E000000000000;
  v1 = sub_1002A37B4(0, 1.0, 60.0);
  v2 = qword_100501AF8;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_100506A38);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Started", v7, 2u);
  }

  return v3;
}

void sub_1001DC774(char a1, uint64_t a2)
{
  if (qword_100501AF8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100506A38);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received %{BOOL}d status", v6, 8u);
  }

  if (a1)
  {

    sub_1002A3A30();
  }

  else
  {

    sub_1002A3E00();
  }
}

id sub_1001DC8A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassSelectionObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001DC900(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_100506A38);
  sub_1000958E4(v2, qword_100506A38);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

char *sub_1001DC978()
{
  v0 = objc_allocWithZone(type metadata accessor for LyonGeofenceException());
  result = sub_1001DC9AC();
  qword_10051B4D0 = result;
  return result;
}

char *sub_1001DC9AC()
{
  v1 = v0;
  v2 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-v4];
  *(v1 + OBJC_IVAR____TtC10seserviced21LyonGeofenceException_geofenceExceptionDurationInSeconds) = 0x4082C00000000000;
  *(v1 + OBJC_IVAR____TtC10seserviced21LyonGeofenceException_hasLoadedHomes) = 0;
  *(v1 + OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeDelegates) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC10seserviced21LyonGeofenceException_forceNotOutOfHome;
  v21[15] = 0;
  v21[14] = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  v7 = (*(v3 + 8))(v5, v2);
  *(v1 + v6) = v21[13];
  sub_1003F6FF4(v7);
  v9 = [objc_allocWithZone(*(v8 + 1384)) initWithOptions:8 cachePolicy:0];
  [v9 setInactiveUpdatingLevel:1];
  sub_1003F6FD0(v10);
  v12 = [objc_allocWithZone(*(v11 + 1376)) initWithConfiguration:v9];
  *(v1 + OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeManager) = v12;
  v13 = sub_1002A37B4(0, 1.0, 600.0);
  v14 = qword_100501B08;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000958E4(v16, qword_100506A80);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Started geofence exception", v19, 2u);
  }

  return v15;
}

void sub_1001DCC60()
{
  v1 = *(v0 + OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeManager);
  v2 = [v1 homes];
  sub_1001E06F8(0, v3, v4);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:

    [v1 setDelegate:0];
    *(v0 + OBJC_IVAR____TtC10seserviced21LyonGeofenceException_hasLoadedHomes) = 0;
    return;
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      [v8 setDelegate:0];
    }

    goto LABEL_10;
  }

  __break(1u);
}

char *sub_1001DCD88(uint64_t a1)
{
  v58 = type metadata accessor for UUID();
  v2 = *(v58 - 8);
  __chkstk_darwin(v58);
  v47 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v4);
  v56 = &v46 - v6;
  *(a1 + OBJC_IVAR____TtC10seserviced21LyonGeofenceException_hasLoadedHomes) = 1;
  v54 = a1;
  v7 = [*(a1 + OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeManager) homes];
  sub_1001E06F8(0, v8, v9);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v52 = OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeDelegates;
    v53 = v10 & 0xC000000000000001;
    swift_beginAccess();
    v12 = 0;
    v48 = v10 + 32;
    v49 = v10 & 0xFFFFFFFFFFFFFF8;
    v57 = (v2 + 8);
    *&v13 = 136315138;
    v46 = v13;
    v50 = v10;
    v51 = i;
    while (1)
    {
      if (v53)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v49 + 16))
        {
          goto LABEL_49;
        }

        v14 = *(v48 + 8 * v12);
      }

      v61 = v14;
      if (__OFADD__(v12++, 1))
      {
        goto LABEL_47;
      }

      v16 = *(v54 + v52);
      v62 = _swiftEmptyArrayStorage;
      v17 = v16 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v17)
      {
        break;
      }

      v2 = _swiftEmptyArrayStorage;
LABEL_30:

      if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_33;
        }

LABEL_40:
        v32 = v12;

        if (qword_100501B08 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        v2 = sub_1000958E4(v33, qword_100506A80);
        v34 = v61;
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v62 = v38;
          *v37 = v46;
          v39 = [v34 uniqueIdentifier];
          v40 = v47;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v41 = UUID.uuidString.getter();
          v2 = v42;
          v43 = v40;
          v10 = v50;
          (*v57)(v43, v58);
          v44 = sub_1002FFA0C(v41, v2, &v62);

          *(v37 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v35, v36, "No homeDelegate registered for UUID %s", v37, 0xCu);
          sub_1000752F4(v38);
        }

        i = v51;
        v12 = v32;
        if (v32 == v51)
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (!*(v2 + 16))
        {
          goto LABEL_40;
        }

LABEL_33:
        if ((v2 & 0xC000000000000001) != 0)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(v2 + 16))
          {
            goto LABEL_48;
          }

          v30 = *(v2 + 32);
        }

        v31 = v30;

        v2 = v61;
        sub_1001E0150(v31, v61);

        if (v12 == i)
        {
          goto LABEL_51;
        }
      }
    }

    v55 = v12;
    v18 = 0;
    v59 = v16 & 0xFFFFFFFFFFFFFF8;
    v60 = v16 & 0xC000000000000001;
    while (1)
    {
      if (v60)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *(v59 + 16))
        {
          goto LABEL_46;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v10 = v17;
      v22 = *&v19[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID];
      v23 = *&v19[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID + 8];
      v24 = [v61 uniqueIdentifier];
      v2 = v56;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = UUID.uuidString.getter();
      v27 = v26;
      (*v57)(v2, v58);
      if (v22 == v25 && v23 == v27)
      {

        v17 = v10;
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v17 = v10;
        if ((v29 & 1) == 0)
        {

          goto LABEL_16;
        }
      }

      v2 = &v62;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_16:
      ++v18;
      if (v21 == v17)
      {
        v2 = v62;
        v10 = v50;
        i = v51;
        v12 = v55;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

LABEL_51:

  return sub_1001DD3DC();
}

char *sub_1001DD3DC()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v6 = qword_10051B7F0;
    *v5 = qword_10051B7F0;
    (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
    v7 = v6;
    LOBYTE(v6) = _dispatchPreconditionTest(_:)();
    (*(v3 + 8))(v5, v2);
    if (v6)
    {
      v2 = OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeDelegates;
      swift_beginAccess();
      v1 = *(v0 + v2);
      v34 = v0;
      if (!(v1 >> 62))
      {
        v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    v5 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:

    v0 = &off_100506000;
    if (v5)
    {
      v8 = 0;
      v3 = v1 & 0xC000000000000001;
      do
      {
        if (v3)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v8 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v9 = *(v1 + 8 * v8 + 32);
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_17:
            __break(1u);
            break;
          }
        }

        if (v9[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isExpress] == 1)
        {
          v11 = v9[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_location];

          if (!v11)
          {

            v17 = v34;
            sub_1002A3A30();
            goto LABEL_23;
          }
        }

        else
        {
        }

        ++v8;
      }

      while (v10 != v5);
    }

    if (qword_100501B08 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000958E4(v12, qword_100506A80);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v34;
    if (v15)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "No endpoint in home currently", v16, 2u);
    }

    sub_1002A3E00();
LABEL_23:
    v5 = *(v17 + v2);
    v37 = _swiftEmptyArrayStorage;
    v18 = v5 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0 = &off_100506000;
    v35 = OBJC_IVAR____TtC10seserviced21LyonGeofenceException_forceNotOutOfHome;

    if (!v18)
    {
      break;
    }

    v2 = 0;
    v3 = v5 & 0xC000000000000001;
    while (v3)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v1 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        v20 = v37;
        goto LABEL_42;
      }

LABEL_32:
      if (*(v19 + OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isExpress) != 1 || *(v0[364] + v19) == 2 && (*(v17 + v35) & 1) == 0 || *(v19 + OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isUserRestricted) == 1)
      {
      }

      else
      {
        v36 = v19;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v17 = v34;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v0 = &off_100506000;
      }

      ++v2;
      if (v1 == v18)
      {
        goto LABEL_40;
      }
    }

    if (v2 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v19 = *(v5 + 8 * v2 + 32);
      v1 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_42:

  if ((v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (!v21)
    {
      goto LABEL_61;
    }

LABEL_45:
    v37 = _swiftEmptyArrayStorage;
    result = sub_10019F4A4(0, v21 & ~(v21 >> 63), 0);
    if ((v21 & 0x8000000000000000) == 0)
    {
      v23 = 0;
      v24 = v37;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v25 = *(v20 + 8 * v23 + 32);
        }

        v26 = v25;
        v27 = *&v25[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_keyIdentifier];
        v28 = *&v25[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_keyIdentifier + 8];
        sub_100069E2C(v27, v28);

        v37 = v24;
        v30 = v24[2];
        v29 = v24[3];
        if (v30 >= v29 >> 1)
        {
          sub_10019F4A4((v29 > 1), v30 + 1, 1);
          v24 = v37;
        }

        ++v23;
        v24[2] = v30 + 1;
        v31 = &v24[2 * v30];
        v31[4] = v27;
        v31[5] = v28;
      }

      while (v21 != v23);

      goto LABEL_62;
    }

    __break(1u);
  }

  else
  {
    v21 = *(v20 + 16);
    if (v21)
    {
      goto LABEL_45;
    }

LABEL_61:

    v24 = _swiftEmptyArrayStorage;
LABEL_62:
    v32 = sub_1000E0074(v24);

    if (qword_100501BF0 != -1)
    {
      swift_once();
    }

    sub_1002A24A4(2, 2, 2, 2, v32, 2);
  }

  return result;
}

void sub_1001DD9DC(void *a1)
{
  v3 = v1;
  v77 = type metadata accessor for UUID();
  v5 = *(v77 - 8);
  __chkstk_darwin(v77);
  v76 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = (v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
LABEL_34:
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v13 = *(v8 + 8);
  v8 += 8;
  v13(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_5;
  }

  v14 = [a1 homeUUIDString];
  if (!v14)
  {
    if (qword_100501B08 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000958E4(v46, qword_100506A80);
    v47 = a1;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v79[0] = v51;
      *v50 = 136315138;
      v52 = [v47 publicKeyIdentifier];
      v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v81 = sub_100288788(v53, v55);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v56 = BidirectionalCollection<>.joined(separator:)();
      v58 = v57;
      sub_10006A178(v53, v55);

      v59 = sub_1002FFA0C(v56, v58, v79);

      *(v50 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v48, v49, "No home uuid found for %s, invalid endpoint", v50, 0xCu);
      sub_1000752F4(v51);
    }

    return;
  }

  v15 = v14;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v16;

  v17 = [a1 publicKeyIdentifier];
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = type metadata accessor for LyonHomeDelegate();
  v22 = objc_allocWithZone(v21);
  v23 = &v22[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID];
  v78 = v8;
  *v23 = v8;
  v23[1] = v7;
  v22[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_location] = 3;
  v22[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isUserRestricted] = 0;
  v22[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isExpress] = 0;
  v24 = &v22[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_keyIdentifier];
  *v24 = v18;
  v24[1] = v20;
  v80.receiver = v22;
  v80.super_class = v21;
  v2 = objc_msgSendSuper2(&v80, "init");
  if (qword_100501B08 != -1)
  {
    goto LABEL_36;
  }

LABEL_5:
  v25 = type metadata accessor for Logger();
  v10 = sub_1000958E4(v25, qword_100506A80);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v79[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_1002FFA0C(v78, v7, v79);
    _os_log_impl(&_mh_execute_header, v26, v27, "Home with %s added to list", v28, 0xCu);
    sub_1000752F4(v29);
  }

  v30 = OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeDelegates;
  swift_beginAccess();
  v31 = v2;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v3[v30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v8 = v7;
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v32 = OBJC_IVAR____TtC10seserviced21LyonGeofenceException_hasLoadedHomes;
  if (v3[OBJC_IVAR____TtC10seserviced21LyonGeofenceException_hasLoadedHomes] != 1)
  {
    goto LABEL_47;
  }

  v73 = v3;
  v33 = [*&v3[OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeManager] homes];
  sub_1001E06F8(0, v34, v35);
  v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = v36;
  v79[0] = _swiftEmptyArrayStorage;
  if (v36 >> 62)
  {
    v61 = v36;
    a1 = _CocoaArrayWrapper.endIndex.getter();
    v37 = v61;
    if (a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    a1 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a1)
    {
LABEL_12:
      v71[0] = v32;
      v71[1] = v10;
      v72 = v31;
      v3 = v7;
      v38 = 0;
      v74 = v37 & 0xFFFFFFFFFFFFFF8;
      v75 = v37 & 0xC000000000000001;
      v7 = (v5 + 8);
      while (1)
      {
        if (v75)
        {
          v8 = v37;
          v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v38 >= *(v74 + 16))
          {
            goto LABEL_33;
          }

          v8 = v37;
          v39 = *(v37 + 8 * v38 + 32);
        }

        v2 = v39;
        v5 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v10 = a1;
        v40 = [v39 uniqueIdentifier];
        v41 = v76;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = UUID.uuidString.getter();
        v44 = v43;
        (*v7)(v41, v77);
        if (v42 == v78 && v44 == v3)
        {
        }

        else
        {
          v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v45 & 1) == 0)
          {

            goto LABEL_15;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_15:
        ++v38;
        a1 = v10;
        v37 = v8;
        if (v5 == v10)
        {
          v60 = v79[0];
          v7 = v3;
          v31 = v72;
          v32 = v71[0];

          if ((v60 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_45;
        }
      }
    }
  }

  v60 = _swiftEmptyArrayStorage;

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_45;
  }

LABEL_39:
  if ((v60 & 0x4000000000000000) != 0)
  {
LABEL_45:
    v64 = _CocoaArrayWrapper.endIndex.getter();
    v3 = v73;
    if (v64)
    {
      goto LABEL_41;
    }

    goto LABEL_46;
  }

  v3 = v73;
  if (!*(v60 + 16))
  {
LABEL_46:

LABEL_47:

    v65 = v3;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v79[0] = v69;
      *v68 = 67109378;
      *(v68 + 4) = v3[v32];

      *(v68 + 8) = 2080;
      v70 = sub_1002FFA0C(v78, v7, v79);

      *(v68 + 10) = v70;
      _os_log_impl(&_mh_execute_header, v66, v67, "hasLoadedHomes: %{BOOL}d Could not find home for UUID %s, treating endpoing as having unknown location", v68, 0x12u);
      sub_1000752F4(v69);
    }

    else
    {
    }

    sub_1001DD3DC();

    return;
  }

LABEL_41:

  if ((v60 & 0xC000000000000001) != 0)
  {
    v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_44;
  }

  if (*(v60 + 16))
  {
    v62 = *(v60 + 32);
LABEL_44:
    v63 = v62;

    sub_1001E0150(v31, v63);
    sub_1001DD3DC();

    return;
  }

  __break(1u);
}

void sub_1001DE3A4(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v40[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_11;
  }

  v9 = [a1 homeUUIDString];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeDelegates;
    swift_beginAccess();
    v15 = *(v1 + v14);

    sub_1001E0298(v15, v11, v13);
    v17 = v16;

    if (v17)
    {
      swift_endAccess();
      if (qword_100501B08 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1000958E4(v18, qword_100506A80);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v40[0] = v22;
        *v21 = 136315138;
        v23 = sub_1002FFA0C(v11, v13, v40);

        *(v21 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v19, v20, "%s did not exist, nothing to remove", v21, 0xCu);
        sub_1000752F4(v22);
      }

      else
      {
      }
    }

    else
    {
      v38 = sub_100196704();
      swift_endAccess();

      sub_1001DD3DC();
    }

    return;
  }

  if (qword_100501B08 != -1)
  {
    goto LABEL_18;
  }

LABEL_11:
  v24 = type metadata accessor for Logger();
  sub_1000958E4(v24, qword_100506A80);
  v25 = a1;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v40[0] = v29;
    *v28 = 136315138;
    v30 = [v25 publicKeyIdentifier];
    v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v40[3] = sub_100288788(v31, v33);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v34 = BidirectionalCollection<>.joined(separator:)();
    v36 = v35;
    sub_10006A178(v31, v33);

    v37 = sub_1002FFA0C(v34, v36, v40);

    *(v28 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v26, v27, "No home uuid found for %s, invalid endpoint", v28, 0xCu);
    sub_1000752F4(v29);
  }
}

uint64_t sub_1001DE8B0(uint64_t a1, unint64_t a2)
{
  v34 = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v8 = qword_10051B7F0;
    *v7 = qword_10051B7F0;
    (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
    v9 = v8;
    v10 = _dispatchPreconditionTest(_:)();
    v11 = *(v5 + 8);
    v5 += 8;
    v11(v7, v4);
    if (v10)
    {
      if (*(v2 + OBJC_IVAR____TtC10seserviced21LyonGeofenceException_forceNotOutOfHome))
      {
        return 3;
      }

      v5 = OBJC_IVAR____TtC10seserviced21LyonGeofenceException_homeDelegates;
      swift_beginAccess();
      v4 = *(v2 + v5);
      v36 = _swiftEmptyArrayStorage;
      if (!(v4 >> 62))
      {
        v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    v7 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:

    if (!v7)
    {
      break;
    }

    v12 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v13 = *(v4 + 8 * v12 + 32);
      }

      v14 = v13;
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v15 = *&v13[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID] == v34 && *&v13[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID + 8] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v2 = &v36;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v12;
      if (v5 == v7)
      {
        v16 = v36;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_23:

  if ((v16 & 0x8000000000000000) == 0 && (v16 & 0x4000000000000000) == 0)
  {
    if (*(v16 + 16))
    {
      goto LABEL_26;
    }

LABEL_40:

    if (qword_100501B08 == -1)
    {
LABEL_41:
      v29 = type metadata accessor for Logger();
      sub_1000958E4(v29, qword_100506A80);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v36 = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_1002FFA0C(v34, a2, &v36);
        _os_log_impl(&_mh_execute_header, v30, v31, "Could not find homeDelegate for UUID %s, defaulting to unknown location", v32, 0xCu);
        sub_1000752F4(v33);
      }

      return 3;
    }

LABEL_47:
    swift_once();
    goto LABEL_41;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_40;
  }

LABEL_26:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v16 + 16))
    {
      __break(1u);
      goto LABEL_47;
    }

    v17 = *(v16 + 32);
  }

  v18 = v17;

  if (qword_100501B08 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000958E4(v19, qword_100506A80);
  v20 = v18;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v23 = 136315394;
    v35 = v20[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_location];
    v24 = String.init<A>(describing:)();
    v26 = sub_1002FFA0C(v24, v25, &v36);

    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1002FFA0C(v34, a2, &v36);
    _os_log_impl(&_mh_execute_header, v21, v22, "Found location %s for home %s", v23, 0x16u);
    swift_arrayDestroy();
  }

  v27 = v20[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_location];
  return v27;
}

uint64_t sub_1001DEE48()
{
}

void sub_1001DEF50(uint64_t a1, uint64_t a2)
{
  if (qword_100501B08 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100506A80);
  v4 = v2;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = String.init<A>(describing:)();
    v9 = sub_1002FFA0C(v7, v8, &v11);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1002FFA0C(*&v4[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID], *&v4[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID + 8], &v11);
    _os_log_impl(&_mh_execute_header, oslog, v5, "Set location to %s for %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_1001DF11C(uint64_t a1, uint64_t a2)
{
  if (qword_100501B08 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_100506A80);
  v8 = v2;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 67109378;
    *(v5 + 4) = *(&v8->isa + OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isUserRestricted);

    *(v5 + 8) = 2080;
    *(v5 + 10) = sub_1002FFA0C(*(&v8->isa + OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID), *(&v8[1].isa + OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID), &v10);
    _os_log_impl(&_mh_execute_header, oslog, v4, "Set isUserRestricted state to %{BOOL}d for %s", v5, 0x12u);
    sub_1000752F4(v6);

    v7 = oslog;
  }

  else
  {

    v7 = v8;
  }
}

uint64_t sub_1001DF2A0(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15[1] = qword_10051B7F0;
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1001E0148;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CB320;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  v13 = a1;
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16);
}

void sub_1001DF574(uint64_t a1, id a2)
{
  v3 = [a2 homeLocationStatus];
  v5 = 0x1020003u >> (8 * v3);
  if (v3 >= 4)
  {
    LOBYTE(v5) = 3;
  }

  *(a1 + OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_location) = v5;
  sub_1001DEF50(v3, v4);
  if (*(a1 + OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isExpress) == 1)
  {
    if (qword_100501B00 != -1)
    {
      swift_once();
    }

    sub_1001DD3DC();
  }
}

uint64_t sub_1001DF68C(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v15[1] = qword_10051B7F0;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = sub_1001E0128;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004CB2D0;
  v11 = _Block_copy(aBlock);
  v12 = a1;
  v13 = v1;
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16);
}

void sub_1001DF960(void *a1, _BYTE *a2)
{
  v4 = [a1 currentUser];
  v15 = [a1 homeAccessControlForUser:v4];

  if ([v15 isRestrictedGuest])
  {
    v6 = [v15 isRestrictedGuestInAllowedPeriod] ^ 1;
    v7 = &a2[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isUserRestricted];
    v8 = v15;
    if (a2[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isUserRestricted] == v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = &a2[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isUserRestricted];
    v8 = v15;
    if ((a2[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isUserRestricted] & 1) == 0)
    {
      goto LABEL_15;
    }

    LOBYTE(v6) = 0;
  }

  *v7 = v6;
  sub_1001DF11C(v8, v5);
  if (qword_100501B08 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000958E4(v9, qword_100506A80);
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1002FFA0C(*&v10[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID], *&v10[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID + 8], &v16);
    *(v13 + 12) = 1024;
    *(v13 + 14) = *v7;

    _os_log_impl(&_mh_execute_header, v11, v12, "homeDidUpdateAccessControl for %s, isUserRestricted updated to %{BOOL}d", v13, 0x12u);
    sub_1000752F4(v14);
  }

  else
  {
  }

  v8 = v15;
  if (v10[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isExpress] == 1)
  {
    if (qword_100501B00 != -1)
    {
      swift_once();
    }

    sub_1001DD3DC();
    v8 = v15;
  }

LABEL_15:
}

void sub_1001DFCCC(void *a1, const char *a2, char a3)
{
  if (qword_100501B08 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000958E4(v6, qword_100506A80);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1002FFA0C(*&v7[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID], *&v7[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID + 8], &v14);
    _os_log_impl(&_mh_execute_header, v8, v9, a2, v10, 0xCu);
    sub_1000752F4(v11);
  }

  v7[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isUserRestricted] = a3;
  sub_1001DF11C(v12, v13);
  if (v7[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isExpress] == 1)
  {
    if (qword_100501B00 != -1)
    {
      swift_once();
    }

    sub_1001DD3DC();
  }
}

id sub_1001DFF58(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1001E001C()
{
  result = qword_100506C58;
  if (!qword_100506C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506C58);
  }

  return result;
}

uint64_t sub_1001E0070(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_100506A80);
  sub_1000958E4(v2, qword_100506A80);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001E00E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001E0130(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1001E0150(uint64_t a1, id a2)
{
  v4 = [a2 homeLocationStatus];
  v6 = 0x1020003u >> (8 * v4);
  if (v4 >= 4)
  {
    LOBYTE(v6) = 3;
  }

  *(a1 + OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_location) = v6;
  sub_1001DEF50(v4, v5);
  v7 = [a2 currentUser];
  v8 = [a2 homeAccessControlForUser:v7];

  v9 = [v8 isRestrictedGuest];
  if (v9)
  {
    v9 = [v8 isRestrictedGuestInAllowedPeriod];
    v11 = v9 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_isUserRestricted) = v11;
  sub_1001DF11C(v9, v10);
  [a2 setDelegate:a1];
  v12 = [a2 currentUser];
  [v12 setDelegate:a1];
}

unint64_t sub_1001E0298(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = *(a1 + 8 * v8 + 32);
    }

    v10 = v9;
    if (*&v9[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID] == a2 && *&v9[OBJC_IVAR____TtC10seserviced16LyonHomeDelegate_homeUUID + 8] == a3)
    {
      break;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      return v8;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_21;
    }
  }

  return v8;
}

uint64_t sub_1001E03B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v17[1] = qword_10051B7F0;
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

uint64_t sub_1001E0670()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1001E06F8(uint64_t a1, uint64_t a2, double a3)
{
  result = qword_100506C60;
  if (!qword_100506C60)
  {
    sub_1003F6FAC(a3);
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100506C60);
  }

  return result;
}

uint64_t sub_1001E0778@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v5)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v5 != 2)
    {
      if (v5 != 1)
      {
        v11 = a1;
LABEL_23:
        UUID.init(uuid:)();
        v16 = 0;
        a1 = v11;
        goto LABEL_24;
      }

      v10 = a1;
      if (a1 > a1 >> 32)
      {
        goto LABEL_29;
      }

      v11 = a1;
      v12 = __DataStorage._bytes.getter();
      if (!v12)
      {
        goto LABEL_34;
      }

      v13 = v12;
      v14 = __DataStorage._offset.getter();
      if (__OFSUB__(v10, v14))
      {
        goto LABEL_31;
      }

      v15 = v10 - v14 + v13;
      a1 = __DataStorage._length.getter();
      if (v15)
      {
        goto LABEL_23;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_28;
      }

      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_17;
      }
    }

    v11 = a1;
    v17 = *(a1 + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
      goto LABEL_32;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(v17, v20))
    {
      v21 = v17 - v20 + v19;
      __DataStorage._length.getter();
      if (!v21)
      {
        goto LABEL_33;
      }

      goto LABEL_23;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __DataStorage._length.getter();
LABEL_33:
    __break(1u);
LABEL_34:
    result = __DataStorage._length.getter();
    __break(1u);
    return result;
  }

  if (v5 != 2)
  {
    goto LABEL_17;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = __OFSUB__(v6, v7);
  v9 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v9 == 16)
  {
    goto LABEL_8;
  }

LABEL_17:
  v16 = 1;
LABEL_24:
  sub_10006A178(a1, a2);
  v22 = type metadata accessor for UUID();
  v23 = *(*(v22 - 8) + 56);

  return v23(a3, v16, 1, v22);
}

unint64_t UUID.data()()
{
  v9 = UUID.uuid.getter();
  v10 = v0;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  UUID.uuid.getter();
  return sub_1001E0BBC(&v9, 0x10uLL);
}

uint64_t UUID.utf8Data(stringCase:)(char a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.uuidString.getter();
  if (a1)
  {
    String.uppercased()();
  }

  else
  {
    String.lowercased()();
  }

  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();

  (*(v3 + 8))(v5, v2);
  return v6;
}

unint64_t sub_1001E0BBC(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_10008FCD4(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_1001E0C70()
{
  result = qword_100506CD0;
  if (!qword_100506CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100506CD0);
  }

  return result;
}

uint64_t sub_1001E0CD4()
{
  v1 = v0;
  v14 = *(v0 + 32);
  v2 = v14;
  sub_100068FC4(&unk_100507060, &unk_10040F340);
  v3 = String.init<A>(describing:)();
  v5 = v4;
  if (qword_100501938 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000958E4(v6, qword_10051B240);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1002FFA0C(v3, v5, &v14);
    _os_log_impl(&_mh_execute_header, v7, v8, "SharedUIClient: Client %s disconnected", v9, 0xCu);
    sub_1000752F4(v10);
  }

  v11 = *(v1 + 32);
  if (v11)
  {

    v12 = v11;
    sub_1001F0EA0(v12, v3, v5);
  }
}

char *sub_1001E0E8C(uint64_t a1)
{
  v2 = v1;
  v13 = a1;
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v12 - 8);
  __chkstk_darwin(v12);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v1[2] = [objc_allocWithZone(SESUIServiceConnection) init];
  sub_10009393C(0, &qword_100501E50, OS_dispatch_queue_ptr);
  v1[3] = 0;
  v1[4] = 0;
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_1001F33F0(&qword_1005064A0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_1001A1FB4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  v1[5] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = OBJC_IVAR____TtC10seserviced27SEStorageManagementUIClient_clientIdentifier;
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v2 + v8, v13, v9);
  return v2;
}

void sub_1001E1140(void *a1)
{
  if ([*(v1 + 16) isConnected])
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000958E4(v3, qword_10051B240);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_20;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Connection already established";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);

LABEL_20:

    return;
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() endpointForMachName:v8 service:v9 instance:0];

  if (!v10)
  {
LABEL_15:
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000958E4(v25, qword_10051B240);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_20;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Unable to create connection";
    goto LABEL_19;
  }

  v11 = [objc_opt_self() connectionWithEndpoint:v10];
  if (!v11)
  {

    goto LABEL_15;
  }

  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1001F1D34;
  *(v14 + 24) = v13;
  v32[4] = sub_1001F1D4C;
  v33 = v14;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 1107296256;
  v32[2] = sub_1001E20FC;
  v32[3] = &unk_1004CB620;
  v15 = _Block_copy(v32);
  v16 = v33;

  v17 = a1;

  [v12 configureConnection:v15];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_11;
  }

  [v12 activate];
  v34 = &OBJC_PROTOCOL___BSServiceConnectionClient;
  v19 = swift_dynamicCastObjCProtocolConditional();
  v20 = qword_100501938;
  if (!v19)
  {
    if (qword_100501938 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000958E4(v26, qword_10051B240);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Unable to cast connection to client", v29, 2u);
    }

    v30 = type metadata accessor for SEStorageManagementInternal.Types.ErrorCode();
    sub_1001F33F0(&qword_100506F20, &type metadata accessor for SEStorageManagementInternal.Types.ErrorCode, &protocol conformance descriptor for SEStorageManagementInternal.Types.ErrorCode);
    swift_allocError();
    *v31 = 0xD00000000000001CLL;
    v31[1] = 0x8000000100467180;
    (*(*(v30 - 8) + 104))(v31, enum case for SEStorageManagementInternal.Types.ErrorCode.internal(_:), v30);
    swift_willThrow();

    goto LABEL_26;
  }

  isEscapingClosureAtFileLocation = v19;
  v16 = v1;
  v12 = v12;
  if (v20 != -1)
  {
    goto LABEL_28;
  }

LABEL_11:
  v21 = type metadata accessor for Logger();
  sub_1000958E4(v21, qword_10051B240);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Activating SEStorageServer connection", v24, 2u);
  }

  [*(v16 + 16) setConnection:isEscapingClosureAtFileLocation];

LABEL_26:
}