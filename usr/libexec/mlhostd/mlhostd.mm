int main(int argc, const char **argv, const char **envp)
{
  if (qword_1000850C8 != -1)
  {
    swift_once();
  }

  sub_100027CB8();

  dispatch_main();
}

uint64_t sub_100001894(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100001910(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001994@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_1000019DC()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100001A1C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100001A74(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100001AF4(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_100001B8C(uint64_t a1)
{
  v2 = sub_10000238C(&qword_100085180, type metadata accessor for BGSystemTaskSchedulerError, &unk_100068D78);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100001BF8(uint64_t a1)
{
  v2 = sub_10000238C(&qword_100085180, type metadata accessor for BGSystemTaskSchedulerError, &unk_100068D78);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100001C64(void *a1, uint64_t a2)
{
  v4 = sub_10000238C(&qword_100085180, type metadata accessor for BGSystemTaskSchedulerError, &unk_100068D78);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100001D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000238C(&qword_100085180, type metadata accessor for BGSystemTaskSchedulerError, &unk_100068D78);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100001D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_100001DF4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100001E10(uint64_t a1)
{
  v2 = sub_10000238C(&qword_1000851F8, type metadata accessor for FileAttributeKey, &unk_100068D34);
  v3 = sub_10000238C(&unk_100085200, type metadata accessor for FileAttributeKey, &unk_100068B30);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100001ED0@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100001F18@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100001F68(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001F88(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_100002028(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100002074(uint64_t a1)
{
  v2 = sub_10000238C(&qword_1000851E8, type metadata accessor for URLResourceKey, &unk_100068CA4);
  v3 = sub_10000238C(&qword_1000851F0, type metadata accessor for URLResourceKey, &unk_100068C44);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002130(uint64_t a1)
{
  v2 = sub_10000238C(&qword_1000851B8, type metadata accessor for BGSystemTaskSchedulerError, &unk_1000689E4);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000219C(uint64_t a1)
{
  v2 = sub_10000238C(&qword_1000851B8, type metadata accessor for BGSystemTaskSchedulerError, &unk_1000689E4);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000220C(uint64_t a1)
{
  v2 = sub_10000238C(&qword_100085180, type metadata accessor for BGSystemTaskSchedulerError, &unk_100068D78);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100002278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000238C(&qword_100085180, type metadata accessor for BGSystemTaskSchedulerError, &unk_100068D78);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000238C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100002794()
{
  result = qword_1000851E0;
  if (!qword_1000851E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000851E0);
  }

  return result;
}

uint64_t sub_100002814(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696665446B736174 && a2 == 0xEE006E6F6974696ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100072A40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617261506B736174 && a2 == 0xEE0073726574656DLL)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

Swift::Int sub_100002A18(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_100002A60(unsigned __int8 a1)
{
  v1 = 0x6E6F6973726576;
  v2 = 0x696665446B736174;
  v3 = 0xD000000000000010;
  if (a1 != 3)
  {
    v3 = 0x617261506B736174;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6E6F697461657263;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_100002B58(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000029F0(v3, *v1);
  return Hasher._finalize()();
}

uint64_t sub_100002BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100002814(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100002BF4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_100009178();
  *a2 = result;
  return result;
}

uint64_t sub_100002C28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100002C7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100002CD0(void *a1, int *a2)
{
  v11[2] = a2;
  v4 = *(a2 + 2);
  v3 = *(a2 + 3);
  v11[0] = *(a2 + 4);
  v11[1] = v4;
  type metadata accessor for MLHostPushMessage.CodingKeys(255, v4, v3, v11[0]);
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  sub_100009BA0(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  v9 = v11[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v9)
  {
    v15 = 1;
    type metadata accessor for Date();
    sub_100009A90(&qword_100085480, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = 2;
    type metadata accessor for TaskDefinition();
    sub_100009A90(&qword_100085488, &type metadata accessor for TaskDefinition, &protocol conformance descriptor for TaskDefinition);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = 3;
    type metadata accessor for MLHostSystemParameters();
    sub_100009A90(&qword_100085490, &type metadata accessor for MLHostSystemParameters, &protocol conformance descriptor for MLHostSystemParameters);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10000300C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a5;
  v9 = type metadata accessor for Optional();
  v37 = *(v9 - 8);
  v38 = v9;
  __chkstk_darwin(v9);
  v40 = &v34 - v10;
  v11 = sub_1000089AC(&qword_100085460, &qword_100068F38);
  __chkstk_darwin(v11 - 8);
  v43 = &v34 - v12;
  v50 = type metadata accessor for TaskDefinition();
  v44 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for Date();
  v48 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MLHostPushMessage.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v52 = type metadata accessor for KeyedDecodingContainer();
  v46 = *(v52 - 8);
  __chkstk_darwin(v52);
  v16 = &v34 - v15;
  v41 = a3;
  v42 = a2;
  v17 = type metadata accessor for MLHostPushMessage(0, a2, a3, a4);
  v36 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = (&v34 - v18);
  sub_100009BA0(a1, a1[3]);
  v51 = v16;
  v20 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    return sub_100009914(a1);
  }

  v21 = v46;
  v22 = v47;
  v24 = v48;
  v23 = v49;
  v53 = v19;
  v35 = v17;
  v25 = v50;
  v58 = 0;
  *v53 = KeyedDecodingContainer.decode(_:forKey:)();
  v57 = 1;
  sub_100009A90(&qword_100085468, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v26 = v22;
  v27 = v45;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v24 + 32))(v53 + *(v35 + 44), v26, v27);
  v56 = 2;
  sub_100009A90(&qword_100085470, &type metadata accessor for TaskDefinition, &protocol conformance descriptor for TaskDefinition);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v35;
  (*(v44 + 32))(v53 + *(v35 + 48), v23, v25);
  type metadata accessor for MLHostSystemParameters();
  v55 = 3;
  sub_100009A90(&qword_100085478, &type metadata accessor for MLHostSystemParameters, &protocol conformance descriptor for MLHostSystemParameters);
  v29 = v43;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100009CF4(v29, v53 + *(v28 + 52), &qword_100085460, &qword_100068F38);
  v54 = 4;
  v30 = v40;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v21 + 8))(v51, v52);
  v31 = v53;
  (*(v37 + 32))(v53 + *(v28 + 56), v30, v38);
  v32 = v36;
  (*(v36 + 16))(v39, v31, v28);
  sub_100009914(a1);
  return (*(v32 + 8))(v31, v28);
}

void (*sub_100003778(uint64_t a1, uint64_t a2, void *a3))(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v102 = a3;
  v94 = a1;
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v99 = *(v5 - 8);
  v100 = v5;
  __chkstk_darwin(v5);
  v98 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v96);
  v97 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000089AC(&qword_1000854B0, &qword_100068F50);
  __chkstk_darwin(v9 - 8);
  v11 = &v89 - v10;
  v12 = type metadata accessor for MLHostEnvironment();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004F634(_swiftEmptyArrayStorage);
  v91 = v3;
  v3[3] = v16;
  v17 = sub_10004F648(_swiftEmptyArrayStorage);
  v101 = v3 + 3;
  v3[9] = v17;
  v90 = a2;
  sub_100009C2C(a2, v11, &qword_1000854B0, &qword_100068F50);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100009C94(v11, &qword_1000854B0, &qword_100068F50);
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v18 = MLHostEnvironment.rawValue.getter();
    v20 = v21;
    (*(v13 + 8))(v15, v12);
  }

  v22 = v91;
  v91[5] = v18;
  v22[6] = v20;
  v23 = v94;
  v24 = v102;
  if (v102)
  {
    v25 = v102;
  }

  else
  {
    sub_100009A48(0, &qword_1000854B8, OS_dispatch_queue_ptr);
    static DispatchQoS.unspecified.getter();
    v104 = _swiftEmptyArrayStorage;
    sub_100009A90(&qword_1000854C0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_1000089AC(&qword_1000854C8, &qword_100068F58);
    sub_100009BE4(&unk_1000854D0, &qword_1000854C8, &qword_100068F58, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v99 + 104))(v98, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v100);
    v23 = v94;
    v25 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  }

  v91[4] = v25;
  v26 = v23 + 64;
  v27 = 1 << *(v23 + 32);
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & *(v23 + 64);
  v30 = (v27 + 63) >> 6;
  v89 = v24;

  v31 = 0;
  v32 = 0;
  v92 = v30;
  v93 = v23 + 64;
LABEL_12:
  if (v29)
  {
    v33 = v32;
LABEL_17:
    v95 = v33;
    v96 = (v29 - 1) & v29;
    v34 = __clz(__rbit64(v29)) | (v33 << 6);
    v35 = (*(v23 + 48) + 16 * v34);
    v37 = *v35;
    v38 = v35[1];
    v36 = *(*(v23 + 56) + 8 * v34);
    v39 = v36 + 64;
    v40 = 1 << *(v36 + 32);
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v42 = v41 & *(v36 + 64);
    v43 = (v40 + 63) >> 6;

    v99 = v36;

    v44 = 0;
    v97 = v43;
    v98 = v37;
    while (v42)
    {
LABEL_28:
      LODWORD(v102) = *(*(v99 + 48) + (__clz(__rbit64(v42)) | (v44 << 6)));

      v100 = sub_10004F764(v46);

      v47 = v101;
      swift_beginAccess();
      sub_100009B20(v31, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v103 = *v47;
      v49 = v103;
      *v47 = 0x8000000000000000;
      v51 = sub_100010DF4(v37, v38);
      v52 = v49[2];
      v53 = (v50 & 1) == 0;
      v54 = v52 + v53;
      if (__OFADD__(v52, v53))
      {
        goto LABEL_49;
      }

      v55 = v50;
      if (v49[3] >= v54)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100013368();
          v49 = v103;
        }
      }

      else
      {
        sub_10001190C(v54, isUniquelyReferenced_nonNull_native);
        v49 = v103;
        v56 = sub_100010DF4(v37, v38);
        if ((v55 & 1) != (v57 & 1))
        {
          goto LABEL_54;
        }

        v51 = v56;
      }

      *v101 = v49;
      if ((v55 & 1) == 0)
      {
        v58 = sub_100052488(_swiftEmptyArrayStorage);
        v49[(v51 >> 6) + 8] |= 1 << v51;
        v59 = (v49[6] + 16 * v51);
        *v59 = v37;
        v59[1] = v38;
        *(v49[7] + 8 * v51) = v58;
        v60 = v49[2];
        v61 = __OFADD__(v60, 1);
        v62 = v60 + 1;
        if (v61)
        {
          goto LABEL_51;
        }

        v49[2] = v62;
      }

      v63 = v39;
      v64 = v38;
      v65 = v49[7];
      v66 = swift_isUniquelyReferenced_nonNull_native();
      v103 = *(v65 + 8 * v51);
      v67 = v103;
      *(v65 + 8 * v51) = 0x8000000000000000;
      v69 = sub_100010E6C(v102);
      v70 = v67[2];
      v71 = (v68 & 1) == 0;
      v72 = v70 + v71;
      if (__OFADD__(v70, v71))
      {
        goto LABEL_50;
      }

      v73 = v68;
      if (v67[3] >= v72)
      {
        if ((v66 & 1) == 0)
        {
          sub_10001320C();
        }
      }

      else
      {
        sub_10001164C(v72, v66);
        v74 = sub_100010E6C(v102);
        if ((v73 & 1) != (v75 & 1))
        {
          goto LABEL_53;
        }

        v69 = v74;
      }

      v38 = v64;
      v76 = v103;
      v39 = v63;
      if (v73)
      {
        *(v103[7] + 8 * v69) = v100;
      }

      else
      {
        sub_100012E14(v69, v102, v100, v103);
      }

      v43 = v97;
      v42 &= v42 - 1;
      *(v65 + 8 * v51) = v76;
      swift_endAccess();
      v31 = sub_100004100;
      v37 = v98;
    }

    while (1)
    {
      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v45 >= v43)
      {

        v23 = v94;
        v32 = v95;
        v30 = v92;
        v26 = v93;
        v29 = v96;
        goto LABEL_12;
      }

      v42 = *(v39 + 8 * v45);
      ++v44;
      if (v42)
      {
        v44 = v45;
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v30)
      {

        sub_1000089AC(&qword_100085A40, &unk_100068F60);
        v77 = swift_allocObject();
        *(v77 + 16) = 0;
        v78 = v91;
        v91[2] = v77;
        *(v78 + 8) = [objc_allocWithZone(type metadata accessor for MLHostAPSListener()) init];
        v79 = *(v78 + 4);
        v80 = objc_allocWithZone(APSConnection);

        v81 = v79;
        v82 = String._bridgeToObjectiveC()();

        v83 = String._bridgeToObjectiveC()();
        v84 = [v80 initWithEnvironmentName:v82 namedDelegatePort:v83 queue:v81];

        if (!v84)
        {
          goto LABEL_52;
        }

        *(v78 + 7) = v84;
        [v84 setDelegate:*(v78 + 8)];

        sub_100009C94(v90, &qword_1000854B0, &qword_100068F50);
        v85 = *(v78 + 8);
        v86 = &v85[OBJC_IVAR____TtC7mlhostd17MLHostAPSListener_handleMessage];
        *v86 = sub_100009B30;
        v86[1] = v78;
        v87 = v85;

        sub_100009B20(v31, 0);
        return v78;
      }

      v29 = *(v26 + 8 * v33);
      ++v32;
      if (v29)
      {
        goto LABEL_17;
      }
    }
  }

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
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_54:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100004100@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100052488(_swiftEmptyArrayStorage);
  *a1 = result;
  return result;
}

void sub_100004130(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v99 = a8;
  v98 = a7;
  v97 = a6;
  v96 = a5;
  v104 = a3;
  v14 = sub_1000089AC(&qword_1000854E0, &qword_1000694C0);
  v100 = *(v14 - 8);
  __chkstk_darwin(v14);
  v102 = &v84 - v15;
  v101 = sub_1000089AC(&qword_1000854E8, &qword_100068F70);
  __chkstk_darwin(v101);
  v103 = &v84 - v16;
  v17 = *(v9 + 16);
  os_unfair_lock_lock(v17 + 4);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_1000098DC(v18, qword_100087610);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v95 = v19;
    *&v110 = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_100008A0C(a1, a2, &v110);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_100008A0C(v104, a4, &v110);
    _os_log_impl(&_mh_execute_header, v20, v21, "Processing push message: topic: %s channel: %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v24 = *(v10 + 72);
  if (!*(v24 + 16) || (v25 = sub_100010DF4(a1, a2), (v26 & 1) == 0))
  {
    swift_endAccess();

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *&v110 = v61;
      *v60 = 136315138;
      *(v60 + 4) = sub_100008A0C(a1, a2, &v110);
      _os_log_impl(&_mh_execute_header, v58, v59, "No handler registered for topic: %s", v60, 0xCu);
      sub_100009914(v61);
    }

    goto LABEL_38;
  }

  v95 = v17;
  v27 = (*(v24 + 56) + 16 * v25);
  v28 = v27[1];
  v91 = *v27;
  swift_endAccess();
  strcpy(v109, "messageBundle");
  HIWORD(v109[0]) = -4864;

  AnyHashable.init<A>(_:)();
  if (!*(a9 + 16) || (v29 = sub_1000110B0(&v110), (v30 & 1) == 0))
  {
    sub_100009B3C(&v110);

LABEL_35:
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    v64 = os_log_type_enabled(v62, v63);
    v17 = v95;
    if (v64)
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v110 = v66;
      *v65 = 136315138;
      *(v65 + 4) = sub_100008A0C(0x426567617373656DLL, 0xED0000656C646E75, &v110);
      _os_log_impl(&_mh_execute_header, v62, v63, "The push message body must be a JSON dictionary with key: %s.", v65, 0xCu);
      sub_100009914(v66);
    }

    goto LABEL_38;
  }

  v87 = v28;
  sub_100009960(*(a9 + 56) + 32 * v29, v109);
  sub_100009B3C(&v110);
  sub_100009B90(v109, &v112);
  v31 = objc_opt_self();
  sub_100009BA0(&v112, v113);
  v32 = _bridgeAnythingToObjectiveC<A>(_:)();
  v88 = v31;
  LOBYTE(v31) = [v31 isValidJSONObject:v32];
  swift_unknownObjectRelease();
  if ((v31 & 1) == 0 || (sub_100009960(&v112, &v110), sub_1000089AC(&qword_1000854F0, &qword_100068F78), (swift_dynamicCast() & 1) == 0))
  {

    sub_100009914(&v112);
    goto LABEL_35;
  }

  v33 = *&v109[0];
  v85 = *(*&v109[0] + 16);
  if (v85)
  {
    v34 = 0;
    v94 = 0;
    v92 = 0x8000000100072A40;
    v35 = _swiftEmptyArrayStorage;
    v86 = *&v109[0];
    while (1)
    {
      v93 = v35;
      if (v34 >= *(v33 + 16))
      {
        __break(1u);
      }

      v36 = *(v33 + 8 * v34 + 32);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      *&v110 = 0;
      v38 = [v88 dataWithJSONObject:isa options:0 error:&v110];

      v39 = v110;
      if (!v38)
      {
        v77 = v39;

        _convertNSErrorToError(_:)();

        swift_willThrow();
        goto LABEL_45;
      }

      v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_100009BE4(&qword_1000854F8, &qword_1000854E8, &qword_100068F70, &unk_100068EE0);
      v89 = v40;
      v90 = v42;
      v43 = v94;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v94 = v43;
      if (v43)
      {
        break;
      }

      v44 = sub_100052588(_swiftEmptyArrayStorage);
      v107 = 0xD000000000000010;
      v108 = v92;
      AnyHashable.init<A>(_:)();
      if (*(v36 + 16) && (v45 = sub_1000110B0(&v110), (v46 & 1) != 0))
      {
        sub_100009960(*(v36 + 56) + 32 * v45, v109);
        sub_100009B3C(&v110);
        sub_100009960(v109, &v110);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v107 = v44;
        sub_10004BCDC(&v110, 0xD000000000000010, v92, isUniquelyReferenced_nonNull_native);
        sub_100009914(v109);
      }

      else
      {
        sub_100009B3C(&v110);
        v48 = sub_1000526B8(_swiftEmptyArrayStorage);
        v111 = sub_1000089AC(qword_100085500, &qword_100068F80);
        *&v110 = v48;
        sub_100009B90(&v110, v109);
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v107 = v44;
        sub_10004BCDC(v109, 0xD000000000000010, v92, v49);
      }

      v50 = v107;
      strcpy(v109, "taskParameters");
      HIBYTE(v109[0]) = -18;
      AnyHashable.init<A>(_:)();
      if (*(v36 + 16) && (v51 = sub_1000110B0(&v110), (v52 & 1) != 0))
      {
        sub_100009960(*(v36 + 56) + 32 * v51, v109);
        sub_100009B3C(&v110);

        sub_100009960(v109, &v110);
        v53 = swift_isUniquelyReferenced_nonNull_native();
        v107 = v50;
        sub_10004BCDC(&v110, 0x617261506B736174, 0xEE0073726574656DLL, v53);
        sub_100009914(v109);
        v50 = v107;
      }

      else
      {

        sub_100009B3C(&v110);
      }

      v54 = *(v14 + 48);
      v55 = v102;
      sub_100009C2C(v103, v102, &qword_1000854E8, &qword_100068F70);
      *(v55 + v54) = v50;
      v35 = v93;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1000244C4(0, v35[2] + 1, 1, v35);
      }

      v57 = v35[2];
      v56 = v35[3];
      if (v57 >= v56 >> 1)
      {
        v35 = sub_1000244C4((v56 > 1), v57 + 1, 1, v35);
      }

      ++v34;
      sub_1000099D4(v89, v90);
      sub_100009C94(v103, &qword_1000854E8, &qword_100068F70);
      v35[2] = v57 + 1;
      sub_100009CF4(v102, v35 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v57, &qword_1000854E0, &qword_1000694C0);
      v33 = v86;
      if (v85 == v34)
      {
        goto LABEL_40;
      }
    }

    sub_1000099D4(v89, v90);

LABEL_45:
    swift_errorRetain();
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();

    v80 = os_log_type_enabled(v78, v79);
    v17 = v95;
    if (v80)
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412290;
      swift_errorRetain();
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v81 + 4) = v83;
      *v82 = v83;
      _os_log_impl(&_mh_execute_header, v78, v79, "Received invalid push message, error: %@. Skipping callback.", v81, 0xCu);
      sub_100009C94(v82, &qword_100085970, &qword_100068F48);
    }

    else
    {
    }

    sub_100009914(&v112);
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
LABEL_40:
    v67 = v35;

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v110 = v71;
      *v70 = 136315138;

      v72 = Array.description.getter();
      v74 = v73;

      v75 = sub_100008A0C(v72, v74, &v110);

      *(v70 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v68, v69, "Decoded pushed message bundle: %s", v70, 0xCu);
      sub_100009914(v71);
    }

    v76 = v91;
    *&v110 = a1;
    *(&v110 + 1) = a2;
    *&v109[0] = v104;
    *(&v109[0] + 1) = a4;
    v107 = v96;
    v108 = v97;
    v106[0] = v98;
    v106[1] = v99;
    v105 = v67;

    v76(&v110, v109, &v107, v106, &v105);

    sub_100009914(&v112);

    v17 = v95;
  }

LABEL_38:
  os_unfair_lock_unlock(v17 + 4);
}

uint64_t sub_100004F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000850B8 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v3 = type metadata accessor for Logger();
    sub_1000098DC(v3, qword_100087610);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Subscribing to all topics and groups with a random channel.", v6, 2u);
    }

    swift_beginAccess();
    v7 = *(v32 + 24);
    v8 = v7 + 64;
    v9 = 1 << *(v7 + 32);
    v10 = v9 < 64 ? ~(-1 << v9) : -1;
    v11 = v10 & *(v7 + 64);
    v12 = (v9 + 63) >> 6;
    v31 = *(v32 + 24);

    v13 = 0;
    v29 = v12;
    v30 = v8;
LABEL_9:
    if (!v11)
    {
      break;
    }

    v14 = v13;
LABEL_14:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(v31 + 48) + 16 * v16;
    v18 = *(*(v31 + 56) + 8 * v16);
    v20 = *v17;
    v19 = *(v17 + 8);
    v21 = 1 << *(v18 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v18 + 64);
    v24 = (v21 + 63) >> 6;

    v25 = 0;
    while (v23)
    {
      v26 = v25;
LABEL_23:
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      sub_1000051D0(v20, v19, *(*(v18 + 48) + (v27 | (v26 << 6))));
    }

    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        v13 = v14;
        v12 = v29;
        v8 = v30;
        goto LABEL_9;
      }

      v23 = *(v18 + 64 + 8 * v26);
      ++v25;
      if (v23)
      {
        v25 = v26;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_27;
    }

    if (v14 >= v12)
    {
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      goto LABEL_14;
    }
  }
}

void sub_1000051D0(id a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(v3 + 16);
  os_unfair_lock_lock(v7 + 4);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000098DC(v8, qword_100087610);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100008A0C(a1, a2, &v118);
    *(v11 + 12) = 2080;
    if (a3)
    {
      v12 = 7104112;
    }

    else
    {
      v12 = 0x74736F686C6DLL;
    }

    if (a3)
    {
      v13 = 0xE300000000000000;
    }

    else
    {
      v13 = 0xE600000000000000;
    }

    v14 = a2;
    v15 = v7;
    v16 = v4;
    v17 = a1;
    v18 = sub_100008A0C(v12, v13, &v118);

    *(v11 + 14) = v18;
    a1 = v17;
    v4 = v16;
    v7 = v15;
    a2 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "Subscribing to a random channel on topic %s and group: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v19 = *(v4 + 24);
  if (!*(v19 + 16) || (v20 = sub_100010DF4(a1, a2), (v21 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_37;
  }

  v22 = *(*(v19 + 56) + 8 * v20);
  swift_endAccess();
  if (!*(v22 + 16))
  {
LABEL_37:

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v43, v44))
    {
LABEL_41:

LABEL_42:
      os_unfair_lock_unlock(v7 + 4);
      return;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v118 = v46;
    *v45 = 136315138;
    *(v45 + 4) = sub_100008A0C(a1, a2, &v118);
    v47 = "There are no channels for topic: %s";
    goto LABEL_39;
  }

  v23 = sub_100010E6C(a3 & 1);
  if ((v24 & 1) == 0)
  {

    goto LABEL_37;
  }

  v25 = 0x74736F686C6DLL;
  v26 = *(*(v22 + 56) + 8 * v23);

  v27 = sub_100005FA8(v4, a1, a2, v26);

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  v111 = v29;
  v30 = os_log_type_enabled(v28, v29);
  v31 = v27 >> 62;
  v116 = v7;
  if (v30)
  {
    v32 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v107 = v32;
    *v32 = 136315650;
    v25 = v27 & 0xFFFFFFFFFFFFFF8;
    if (v31)
    {
      v33 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v33 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    log = v28;
    v109 = v26;
    v112 = a1;
    if (v33)
    {
      v26 = 0;
      v7 = (v27 & 0xC000000000000001);
      v114 = &_swiftEmptyArrayStorage;
      do
      {
        v34 = v26;
        while (1)
        {
          if (v7)
          {
            v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v26 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              goto LABEL_62;
            }
          }

          else
          {
            if (v34 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_63;
            }

            v35 = *(v27 + 8 * v34 + 32);
            v26 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
              goto LABEL_64;
            }
          }

          a1 = v35;
          v36 = [a1 channelID];
          if (v36)
          {
            break;
          }

          ++v34;
          if (v26 == v33)
          {
            goto LABEL_45;
          }
        }

        v37 = v36;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v106 = v39;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = sub_1000243B8(0, *(v114 + 2) + 1, 1, v114);
        }

        v41 = *(v114 + 2);
        v40 = *(v114 + 3);
        a1 = (v41 + 1);
        if (v41 >= v40 >> 1)
        {
          v114 = sub_1000243B8((v40 > 1), v41 + 1, 1, v114);
        }

        *(v114 + 2) = a1;
        v42 = &v114[16 * v41];
        *(v42 + 4) = v38;
        *(v42 + 5) = v106;
      }

      while (v26 != v33);
    }

LABEL_45:
    v48 = Array.description.getter();
    v50 = v49;

    v51 = sub_100008A0C(v48, v50, &v118);

    *(v107 + 1) = v51;
    *(v107 + 6) = 2080;
    a1 = v112;
    *(v107 + 14) = sub_100008A0C(v112, a2, &v118);
    *(v107 + 11) = 2080;
    v25 = 0x74736F686C6DLL;
    if (a3)
    {
      v52 = 7104112;
    }

    else
    {
      v52 = 0x74736F686C6DLL;
    }

    if (a3)
    {
      v53 = 0xE300000000000000;
    }

    else
    {
      v53 = 0xE600000000000000;
    }

    v54 = sub_100008A0C(v52, v53, &v118);

    *(v107 + 3) = v54;
    _os_log_impl(&_mh_execute_header, log, v111, "Currently subscribed to channels: %s for topic: %s and group: %s.", v107, 0x20u);
    swift_arrayDestroy();

    v7 = v116;
    v26 = v109;
    v31 = v27 >> 62;
  }

  else
  {
  }

  if (v31)
  {
LABEL_64:
    if (_CocoaArrayWrapper.endIndex.getter() == 1)
    {
      goto LABEL_54;
    }
  }

  else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
LABEL_54:

    v43 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v43, v55))
    {
      goto LABEL_41;
    }

    v56 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *v56 = 136315394;
    *(v56 + 4) = sub_100008A0C(a1, a2, &v118);
    *(v56 + 12) = 2080;
    if (a3)
    {
      v57 = 7104112;
    }

    else
    {
      v57 = v25;
    }

    if (a3)
    {
      v58 = 0xE300000000000000;
    }

    else
    {
      v58 = 0xE600000000000000;
    }

    v59 = v7;
    v60 = sub_100008A0C(v57, v58, &v118);

    *(v56 + 14) = v60;
    v7 = v59;
    _os_log_impl(&_mh_execute_header, v43, v55, "There is already one valid channel subscription for topic: %s and group: %s. Skipping new subscription.", v56, 0x16u);
    swift_arrayDestroy();
    goto LABEL_40;
  }

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *v63 = 136315650;
    sub_100009A48(0, &unk_1000854A0, PKPublicChannel_ptr);
    v64 = Array.description.getter();
    v110 = v26;
    v66 = a1;
    v67 = sub_100008A0C(v64, v65, &v118);

    *(v63 + 4) = v67;
    *(v63 + 12) = 2080;
    *(v63 + 14) = sub_100008A0C(v66, a2, &v118);
    *(v63 + 22) = 2080;
    if (a3)
    {
      v68 = 7104112;
    }

    else
    {
      v68 = 0x74736F686C6DLL;
    }

    if (a3)
    {
      v69 = 0xE300000000000000;
    }

    else
    {
      v69 = 0xE600000000000000;
    }

    v70 = sub_100008A0C(v68, v69, &v118);

    *(v63 + 24) = v70;
    a1 = v66;
    v26 = v110;
    _os_log_impl(&_mh_execute_header, v61, v62, "Unsubscribing from existing channels: %s for topic: %s and group: %s.", v63, 0x20u);
    swift_arrayDestroy();
  }

  v71 = *(v4 + 56);
  sub_100009A48(0, &unk_1000854A0, PKPublicChannel_ptr);
  v72 = v71;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v74 = String._bridgeToObjectiveC()();
  [v72 unsubscribeFromChannels:isa forTopic:v74];

  v75 = sub_10000644C(v26);
  v77 = v76;

  if (!v77)
  {

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    v7 = v116;
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_41;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v118 = v46;
    *v45 = 136315138;
    *(v45 + 4) = sub_100008A0C(a1, a2, &v118);
    v47 = "No channel options are provided for topic %s. Failed to register new random channel.";
LABEL_39:
    _os_log_impl(&_mh_execute_header, v43, v44, v47, v45, 0xCu);
    sub_100009914(v46);
LABEL_40:

    goto LABEL_41;
  }

  v78 = [*(v4 + 56) opportunisticTopics];
  v79 = v75;
  if (v78)
  {
    v80 = v78;
    v81 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v81 = &_swiftEmptyArrayStorage;
  }

  v82 = sub_10004F764(v81);

  v119 = v82;

  v113 = a1;
  sub_10004A918(&v118, a1, a2);

  v83 = *(v4 + 56);
  v84 = v119;
  v85 = *(v119 + 16);
  if (!v85)
  {
    v89 = v77;
    v90 = v83;

    goto LABEL_83;
  }

  v86 = sub_100024920(*(v119 + 16), 0);
  v115 = sub_100025710(&v118, v86 + 4, v85, v84);
  v87 = v118;
  v88 = v83;
  sub_100009A28(v87);
  if (v115 == v85)
  {
    v89 = v77;
LABEL_83:
    v91 = v79;
    v92 = Array._bridgeToObjectiveC()().super.isa;

    [v83 _setOpportunisticTopics:v92];

    v93 = *(v4 + 56);
    v94 = objc_allocWithZone(PKPublicChannel);
    v95 = v93;
    v96 = String._bridgeToObjectiveC()();
    v97 = [v94 initWithChannelID:v96];

    v98 = String._bridgeToObjectiveC()();
    [v95 subscribeToChannel:v97 forTopic:v98];

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *v101 = 136315650;
      v102 = sub_100008A0C(v91, v89, &v118);

      *(v101 + 4) = v102;
      *(v101 + 12) = 2080;
      *(v101 + 14) = sub_100008A0C(v113, a2, &v118);
      *(v101 + 22) = 2080;
      if (a3)
      {
        v103 = 7104112;
      }

      else
      {
        v103 = 0x74736F686C6DLL;
      }

      if (a3)
      {
        v104 = 0xE300000000000000;
      }

      else
      {
        v104 = 0xE600000000000000;
      }

      v105 = sub_100008A0C(v103, v104, &v118);

      *(v101 + 24) = v105;
      _os_log_impl(&_mh_execute_header, v99, v100, "Subscribed to random channel: %s for topic: %s and group: %s.", v101, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v7 = v116;
    goto LABEL_42;
  }

  __break(1u);
}

void *sub_100005FA8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 56);
  v8 = String._bridgeToObjectiveC()();
  v43[0] = 0;
  v9 = [v7 registeredChannelsForTopic:v8 error:v43];

  v10 = v43[0];
  if (v9)
  {
    sub_100009A48(0, &unk_1000854A0, PKPublicChannel_ptr);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v10;

    v13 = 0;
  }

  else
  {
    v14 = v43[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000098DC(v15, qword_100087610);

    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v43[0] = v20;
      *v18 = 136315394;
      *(v18 + 4) = sub_100008A0C(a2, a3, v43);
      *(v18 + 12) = 2112;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v21;
      *v19 = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed at querying registered channes for topic: %s -- %@", v18, 0x16u);
      sub_100009C94(v19, &qword_100085970, &qword_100068F48);

      sub_100009914(v20);
    }

    else
    {
    }

    v13 = 0;
    v11 = &_swiftEmptyArrayStorage;
  }

  v42 = &_swiftEmptyArrayStorage;
  if (v11 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v39 = v13;
    v23 = 0;
    v40 = v11 & 0xFFFFFFFFFFFFFF8;
    v41 = v11 & 0xC000000000000001;
    v11 += 32;
    v24 = a4 + 56;
    while (1)
    {
      if (v41)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *(v40 + 16))
        {
          goto LABEL_33;
        }

        v25 = *(v11 + 8 * v23);
      }

      v26 = v25;
      if (__OFADD__(v23++, 1))
      {
        break;
      }

      v28 = [v25 channelID];
      if (!v28)
      {
        __break(1u);
      }

      v13 = v28;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      if (*(a4 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v32 = Hasher._finalize()(), v33 = -1 << *(a4 + 32), v13 = v32 & ~v33, ((*(v24 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
      {
        v34 = ~v33;
        while (1)
        {
          v35 = (*(a4 + 48) + 16 * v13);
          v36 = *v35 == v29 && v35[1] == v31;
          if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v13 = (v13 + 1) & v34;
          if (((*(v24 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v13 = &v42;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
LABEL_12:
      }

      if (v23 == i)
      {
        v37 = v42;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v37 = &_swiftEmptyArrayStorage;
LABEL_36:

  return v37;
}

uint64_t sub_10000644C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_100008FB4(v2);
  v4 = _HashTable.startBucket.getter();
  v5 = sub_100009040(v4, *(a1 + 36), 0, v3, a1);
  v7 = v6;
  v9 = v8;
  v10 = sub_100050344(v5, v6, v8 & 1, a1);

  sub_100009A30(v5, v7, v9 & 1);
  return v10;
}

void sub_100006504()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  if (qword_1000850B8 != -1)
  {
LABEL_42:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000098DC(v2, qword_100087610);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unsubscribing all topics and channels", v5, 2u);
  }

  v6 = sub_100006C70(v67);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v60 = v6;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v68 = v10;
    *v9 = 136315138;
    v11 = Array.description.getter();
    v13 = sub_100008A0C(v11, v12, &v68);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "unregistering channels from topics: %s", v9, 0xCu);
    sub_100009914(v10);
  }

  v14 = *&v6[4]._os_unfair_lock_opaque;
  if (v14)
  {
    v56 = v1;
    v15 = 0;
    v1 = v6 + 8;
    v58 = *&v6[4]._os_unfair_lock_opaque;
    v57 = v6 + 8;
    while (1)
    {
      if (v15 >= *&v6[4]._os_unfair_lock_opaque)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v17 = &v1[4 * v15];
      v19 = *&v17->_os_unfair_lock_opaque;
      v18 = *&v17[2]._os_unfair_lock_opaque;
      v20 = *(v67 + 56);

      v21 = v20;
      v66 = v19;
      v22 = String._bridgeToObjectiveC()();
      v68 = 0;
      v23 = [v21 registeredChannelsForTopic:v22 error:&v68];

      v24 = v68;
      if (v23)
      {
        break;
      }

      v16 = v68;

      _convertNSErrorToError(_:)();

      swift_willThrow();

LABEL_9:
      if (++v15 == v14)
      {

        v1 = v56;
        goto LABEL_38;
      }
    }

    sub_100009A48(0, &unk_1000854A0, PKPublicChannel_ptr);
    v65 = v23;
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = v24;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();

    v63 = v28;
    if (!os_log_type_enabled(v27, v28))
    {

      v41 = v67;
LABEL_35:
      v46 = *(v41 + 56);
      v47 = String._bridgeToObjectiveC()();

      [v46 unsubscribeFromChannels:v65 forTopic:v47];

      goto LABEL_9;
    }

    log = v27;
    v61 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v61 = 136315394;
    if (v25 >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
      if (v29)
      {
LABEL_15:
        v30 = 0;
        v1 = (v25 & 0xC000000000000001);
        v64 = _swiftEmptyArrayStorage;
        do
        {
          v31 = v30;
          while (1)
          {
            if (v1)
            {
              v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v30 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
                goto LABEL_39;
              }
            }

            else
            {
              if (v31 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_40;
              }

              v32 = *(v25 + 8 * v31 + 32);
              v30 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
LABEL_39:
                __break(1u);
LABEL_40:
                __break(1u);
                goto LABEL_41;
              }
            }

            v33 = v32;
            v34 = [v33 channelID];
            if (v34)
            {
              break;
            }

            ++v31;
            if (v30 == v29)
            {
              goto LABEL_34;
            }
          }

          v35 = v34;
          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v59 = v37;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_1000243B8(0, *(v64 + 2) + 1, 1, v64);
          }

          v39 = *(v64 + 2);
          v38 = *(v64 + 3);
          if (v39 >= v38 >> 1)
          {
            v64 = sub_1000243B8((v38 > 1), v39 + 1, 1, v64);
          }

          *(v64 + 2) = v39 + 1;
          v40 = &v64[16 * v39];
          *(v40 + 4) = v36;
          *(v40 + 5) = v59;
        }

        while (v30 != v29);
      }
    }

    else
    {
      v29 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        goto LABEL_15;
      }
    }

LABEL_34:

    v42 = Array.description.getter();
    v44 = v43;

    v45 = sub_100008A0C(v42, v44, &v68);

    *(v61 + 4) = v45;
    *(v61 + 12) = 2080;
    *(v61 + 14) = sub_100008A0C(v66, v18, &v68);
    _os_log_impl(&_mh_execute_header, log, v63, "Unsubscribed channels: %s for topic: %s", v61, 0x16u);
    swift_arrayDestroy();

    v41 = v67;
    v14 = v58;
    v6 = v60;
    v1 = v57;
    goto LABEL_35;
  }

LABEL_38:
  v48 = *(v67 + 56);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v48 _setEnabledTopics:isa];

  v50 = *(v67 + 56);
  v51 = Array._bridgeToObjectiveC()().super.isa;
  [v50 _setOpportunisticTopics:v51];

  v52 = *(v67 + 56);
  v53 = Array._bridgeToObjectiveC()().super.isa;
  [v52 _setIgnoredTopics:v53];

  v54 = *(v67 + 56);
  v55 = Array._bridgeToObjectiveC()().super.isa;
  [v54 _setNonWakingTopics:v55];

  os_unfair_lock_unlock(v1 + 4);
}

void *sub_100006C70(uint64_t a1)
{
  v20 = &_swiftEmptySetSingleton;
  v2 = [*(a1 + 56) enabledTopics];
  if (v2)
  {
    v3 = v2;
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_1000500E8(v4);

  v5 = [*(a1 + 56) opportunisticTopics];
  if (v5)
  {
    v6 = v5;
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  sub_1000500E8(v7);

  v8 = [*(a1 + 56) ignoredTopics];
  if (v8)
  {
    v9 = v8;
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  sub_1000500E8(v10);

  v11 = [*(a1 + 56) nonWakingTopics];
  if (v11)
  {
    v12 = v11;
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  sub_1000500E8(v13);

  swift_beginAccess();

  sub_1000295C0(v14);
  v15 = v20[2];
  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = sub_100024920(v20[2], 0);
  v17 = sub_100025710(&v19, v16 + 4, v15, v20);
  sub_100009A28(v19);
  if (v17 != v15)
  {
    __break(1u);
LABEL_16:

    return _swiftEmptyArrayStorage;
  }

  return v16;
}

uint64_t sub_100006E80()
{
  v1 = v0[2];
  os_unfair_lock_lock(v1 + 4);
  _StringGuts.grow(_:)(49);
  v2 = _typeName(_:qualified:)();

  v13 = v2;
  v3._object = 0x80000001000729C0;
  v3._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v3);
  v4 = v0[5];
  v5 = v0[6];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0xD00000000000001ALL;
  v7._object = 0x80000001000729E0;
  String.append(_:)(v7);
  swift_beginAccess();

  sub_1000089AC(&qword_100085458, &qword_100068F30);
  v8 = Dictionary.description.getter();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  os_unfair_lock_unlock(v1 + 4);
  return v13;
}

unint64_t sub_100007018()
{
  v19 = *(v0 + 16);
  os_unfair_lock_lock(v19 + 4);
  v1 = sub_1000527F4(_swiftEmptyArrayStorage);
  swift_beginAccess();
  v2 = *(v0 + 24);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v0 + 24) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v20 = *(v0 + 24);

  for (i = 0; v8; result = )
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = (*(v20 + 48) + 16 * (v13 | (v12 << 6)));
    v15 = *v14;
    v16 = v14[1];

    sub_10000756C(v17);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10004BE2C(_swiftEmptyArrayStorage, v15, v16, isUniquelyReferenced_nonNull_native);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      os_unfair_lock_unlock(v19 + 4);
      return v1;
    }

    v8 = *(v4 + 8 * v12);
    ++i;
    if (v8)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000071BC(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1000243B8(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_100025710(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (result[6] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_1000243B8((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (result[6] + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_100009A28(result);
  *v1 = v4;
  return result;
}

uint64_t sub_100007478(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000243B8(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10000756C(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      do
      {
LABEL_9:
        v4 &= v4 - 1;

        result = sub_1000071BC(v9);
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
  return result;
}

id sub_100007650()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  v44 = v0;
  v2 = sub_100007B74(v0);
  v3 = sub_1000527F4(_swiftEmptyArrayStorage);
  v43 = v2[2];
  if (!v43)
  {

    goto LABEL_36;
  }

  v39 = v1;
  v4 = 0;
  v42 = v2 + 4;
  v40 = v2;
  do
  {
    if (v4 >= v2[2])
    {
      goto LABEL_39;
    }

    v7 = &v42[2 * v4];
    v8 = *v7;
    v9 = v7[1];
    v10 = *(v44 + 56);

    v11 = v10;
    v46 = v8;
    v12 = String._bridgeToObjectiveC()();
    v47 = 0;
    v13 = [v11 registeredChannelsForTopic:v12 error:&v47];

    v14 = v47;
    if (v13)
    {
      sub_100009A48(0, &unk_1000854A0, PKPublicChannel_ptr);
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v14;

      if (v15 >> 62)
      {
        v17 = _CocoaArrayWrapper.endIndex.getter();
        v45 = v3;
        if (v17)
        {
LABEL_10:
          v18 = 0;
          v5 = _swiftEmptyArrayStorage;
          do
          {
            v19 = v18;
            while (1)
            {
              if ((v15 & 0xC000000000000001) != 0)
              {
                v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v18 = v19 + 1;
                if (__OFADD__(v19, 1))
                {
                  goto LABEL_37;
                }
              }

              else
              {
                if (v19 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_38;
                }

                v20 = *(v15 + 8 * v19 + 32);
                v18 = v19 + 1;
                if (__OFADD__(v19, 1))
                {
LABEL_37:
                  __break(1u);
LABEL_38:
                  __break(1u);
LABEL_39:
                  __break(1u);
                }
              }

              v21 = v20;
              v22 = [v21 channelID];
              if (v22)
              {
                break;
              }

              ++v19;
              if (v18 == v17)
              {
                goto LABEL_4;
              }
            }

            v23 = v22;
            v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v41 = v25;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_1000243B8(0, *(v5 + 2) + 1, 1, v5);
            }

            v27 = *(v5 + 2);
            v26 = *(v5 + 3);
            if (v27 >= v26 >> 1)
            {
              v5 = sub_1000243B8((v26 > 1), v27 + 1, 1, v5);
            }

            *(v5 + 2) = v27 + 1;
            v28 = &v5[16 * v27];
            *(v28 + 4) = v24;
            *(v28 + 5) = v41;
          }

          while (v18 != v17);
          goto LABEL_4;
        }
      }

      else
      {
        v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v45 = v3;
        if (v17)
        {
          goto LABEL_10;
        }
      }

      v5 = _swiftEmptyArrayStorage;
LABEL_4:

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v45;
      sub_10004BE2C(v5, v46, v9, isUniquelyReferenced_nonNull_native);

      v3 = v47;
      v2 = v40;
      goto LABEL_5;
    }

    v29 = v47;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000098DC(v30, qword_100087610);

    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v47 = v35;
      *v33 = 136315394;
      v36 = sub_100008A0C(v46, v9, &v47);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2112;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v37;
      *v34 = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed at fetching registered channels for topic: %s - %@", v33, 0x16u);
      sub_100009C94(v34, &qword_100085970, &qword_100068F48);

      sub_100009914(v35);
    }

    else
    {
    }

LABEL_5:
    ++v4;
  }

  while (v4 != v43);

  v1 = v39;
LABEL_36:
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void *sub_100007B74(uint64_t a1)
{
  result = [*(a1 + 56) enabledTopics];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100007478(v4);
  result = [*(a1 + 56) opportunisticTopics];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100007478(v6);
  result = [*(a1 + 56) ignoredTopics];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100007478(v8);
  result = [*(a1 + 56) nonWakingTopics];
  if (result)
  {
    v9 = result;
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100007478(v10);
    return _swiftEmptyArrayStorage;
  }

LABEL_9:
  __break(1u);
  return result;
}

id *sub_100007CC4()
{

  return v0;
}

uint64_t sub_100007D14()
{
  sub_100007CC4();

  return _swift_deallocClassInstance(v0, 80, 7);
}

id sub_100007F0C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100007F84(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TaskDefinition();
    if (v2 <= 0x3F)
    {
      sub_100008954(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Optional();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10000804C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v48 = type metadata accessor for Date();
  v6 = *(v48 - 8);
  v7 = *(v6 + 84);
  v47 = type metadata accessor for TaskDefinition();
  v8 = *(v47 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for MLHostSystemParameters() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(*(a3 + 16) - 8);
  v17 = v16;
  v18 = *(v16 + 84);
  v19 = v18 - 1;
  if (!v18)
  {
    v19 = 0;
  }

  if (v19 > v15)
  {
    v15 = v19;
  }

  v20 = *(v11 + 64);
  if (v13)
  {
    v21 = v20;
  }

  else
  {
    v21 = v20 + 1;
  }

  v22 = *(v6 + 80);
  v23 = *(v6 + 64);
  v24 = *(v8 + 80);
  v25 = *(v12 + 80);
  v26 = *(v16 + 80);
  v27 = *(v16 + 64);
  if (v18)
  {
    v28 = v27;
  }

  else
  {
    v28 = v27 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v29 = *(v8 + 64) + v25;
  v30 = v21 + v26;
  if (a2 > v15)
  {
    v31 = v28 + ((v30 + ((v29 + ((v23 + v24 + ((v22 + 8) & ~v22)) & ~v24)) & ~v25)) & ~v26);
    v32 = 8 * v31;
    if (v31 <= 3)
    {
      v34 = ((a2 - v15 + ~(-1 << v32)) >> v32) + 1;
      if (HIWORD(v34))
      {
        v33 = *(a1 + v31);
        if (!v33)
        {
          goto LABEL_43;
        }

        goto LABEL_30;
      }

      if (v34 > 0xFF)
      {
        v33 = *(a1 + v31);
        if (!*(a1 + v31))
        {
          goto LABEL_43;
        }

        goto LABEL_30;
      }

      if (v34 < 2)
      {
LABEL_43:
        if (v15)
        {
          goto LABEL_44;
        }

        return 0;
      }
    }

    v33 = *(a1 + v31);
    if (!*(a1 + v31))
    {
      goto LABEL_43;
    }

LABEL_30:
    v35 = (v33 - 1) << v32;
    if (v31 > 3)
    {
      v35 = 0;
    }

    if (v31)
    {
      if (v31 <= 3)
      {
        v36 = v31;
      }

      else
      {
        v36 = 4;
      }

      if (v36 > 2)
      {
        if (v36 == 3)
        {
          v37 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v37 = *a1;
        }
      }

      else if (v36 == 1)
      {
        v37 = *a1;
      }

      else
      {
        v37 = *a1;
      }
    }

    else
    {
      v37 = 0;
    }

    return v15 + (v37 | v35) + 1;
  }

LABEL_44:
  v38 = (a1 + v22 + 8) & ~v22;
  if (v7 == v15)
  {
    v39 = *(v6 + 48);
    v40 = v38;
    v41 = v7;
    v42 = v48;
LABEL_49:

    return v39(v40, v41, v42);
  }

  v44 = (v38 + v23 + v24) & ~v24;
  if (v9 == v15)
  {
    v39 = *(v8 + 48);
    v40 = v44;
    v41 = v9;
    v42 = v47;
    goto LABEL_49;
  }

  v45 = (v29 + v44) & ~v25;
  if (v14 == v15)
  {
    v46 = (*(v12 + 48))(v45);
  }

  else
  {
    v46 = (*(v17 + 48))((v30 + v45) & ~v26, v18);
  }

  if (v46 >= 2)
  {
    return v46 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_100008434(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v52 = type metadata accessor for Date();
  v6 = *(v52 - 8);
  v55 = v6;
  v7 = *(v6 + 84);
  v51 = type metadata accessor for TaskDefinition();
  v8 = *(v51 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = 0;
  v12 = *(type metadata accessor for MLHostSystemParameters() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(a4 + 16);
  v18 = *(v17 - 8);
  v19 = *(v18 + 84);
  v20 = *(v12 + 64);
  v21 = *(v6 + 80);
  v22 = *(v6 + 64);
  v23 = *(v8 + 80);
  v24 = *(v8 + 64);
  v25 = *(v13 + 80);
  v26 = *(v18 + 80);
  v27 = v19 - 1;
  if (!v19)
  {
    v27 = 0;
  }

  if (v27 <= v16)
  {
    v28 = v16;
  }

  else
  {
    v28 = v27;
  }

  if (v14)
  {
    v29 = v20;
  }

  else
  {
    v29 = v20 + 1;
  }

  v30 = v24 + v25;
  v31 = v29 + v26;
  if (v19)
  {
    v32 = *(v18 + 64);
  }

  else
  {
    v32 = *(v18 + 64) + 1;
  }

  v33 = ((v31 + ((v24 + v25 + ((v22 + v23 + ((v21 + 8) & ~v21)) & ~v23)) & ~v25)) & ~v26) + v32;
  if (a3 > v28)
  {
    if (v33 <= 3)
    {
      v34 = ((a3 - v28 + ~(-1 << (8 * v33))) >> (8 * v33)) + 1;
      if (HIWORD(v34))
      {
        v11 = 4;
      }

      else
      {
        if (v34 < 0x100)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        if (v34 >= 2)
        {
          v11 = v35;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v28 < a2)
  {
    v36 = ~v28 + a2;
    if (v33 < 4)
    {
      v37 = (v36 >> (8 * v33)) + 1;
      if (v33)
      {
        v38 = v36 & ~(-1 << (8 * v33));
        bzero(a1, v33);
        if (v33 != 3)
        {
          if (v33 == 2)
          {
            *a1 = v38;
            if (v11 > 1)
            {
LABEL_66:
              if (v11 == 2)
              {
                *&a1[v33] = v37;
              }

              else
              {
                *&a1[v33] = v37;
              }

              return;
            }
          }

          else
          {
            *a1 = v36;
            if (v11 > 1)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_63;
        }

        *a1 = v38;
        a1[2] = BYTE2(v38);
      }

      if (v11 > 1)
      {
        goto LABEL_66;
      }
    }

    else
    {
      bzero(a1, v33);
      *a1 = v36;
      v37 = 1;
      if (v11 > 1)
      {
        goto LABEL_66;
      }
    }

LABEL_63:
    if (v11)
    {
      a1[v33] = v37;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v33] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *&a1[v33] = 0;
  }

  else if (v11)
  {
    a1[v33] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!a2)
  {
    return;
  }

LABEL_48:
  v39 = &a1[v21 + 8] & ~v21;
  if (v7 == v28)
  {
    v40 = *(v55 + 56);
    v41 = v39;
    v42 = a2;
    v43 = v7;
    v17 = v52;
LABEL_52:

    v40(v41, v42, v43, v17);
    return;
  }

  v44 = (v39 + v22 + v23) & ~v23;
  if (v9 == v28)
  {
    v40 = *(v8 + 56);
    v41 = v44;
    v42 = a2;
    v43 = v9;
    v17 = v51;
    goto LABEL_52;
  }

  v45 = (v30 + v44) & ~v25;
  if (v15 == v28)
  {
    v46 = *(v13 + 56);

    v46(v45, a2 + 1);
  }

  else
  {
    v47 = ((v31 + v45) & ~v26);
    if (v27 >= a2)
    {
      v40 = *(v18 + 56);
      v42 = a2 + 1;
      v41 = (v31 + v45) & ~v26;
      v43 = v19;
      goto LABEL_52;
    }

    if (v32 <= 3)
    {
      v48 = ~(-1 << (8 * v32));
    }

    else
    {
      v48 = -1;
    }

    if (v32)
    {
      v49 = v48 & (~v27 + a2);
      if (v32 <= 3)
      {
        v50 = v32;
      }

      else
      {
        v50 = 4;
      }

      bzero(v47, v32);
      if (v50 > 2)
      {
        if (v50 == 3)
        {
          *v47 = v49;
          v47[2] = BYTE2(v49);
        }

        else
        {
          *v47 = v49;
        }
      }

      else if (v50 == 1)
      {
        *v47 = v49;
      }

      else
      {
        *v47 = v49;
      }
    }
  }
}

void sub_100008954(uint64_t a1)
{
  if (!qword_100085450)
  {
    type metadata accessor for MLHostSystemParameters();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100085450);
    }
  }
}

uint64_t sub_1000089AC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100008A0C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100008AD8(v11, 0, 0, 1, a1, a2);
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
    sub_100009960(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009914(v11);
  return v7;
}

unint64_t sub_100008AD8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100008BE4(a5, a6);
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

char *sub_100008BE4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100008C30(a1, a2);
  sub_100008D60(&off_10007DFA0);
  return v3;
}

char *sub_100008C30(uint64_t a1, unint64_t a2)
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

  v6 = sub_100008E4C(v5, 0);
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
        v7 = sub_100008E4C(v10, 0);
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

uint64_t sub_100008D60(uint64_t result)
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

  result = sub_100008EC0(result, v11, 1, v3);
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

void *sub_100008E4C(uint64_t a1, uint64_t a2)
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

  sub_1000089AC(&qword_100085498, &qword_100068F40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100008EC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000089AC(&qword_100085498, &qword_100068F40);
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

unint64_t sub_100008FB4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100009040(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
LABEL_22:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v16 = result;
      sub_100009A3C(result, a2, a3 & 1);
      return v16;
    }

    v5 = 0;
    while ((a3 & 1) == 0)
    {
      if (result < 0 || (v7 = 1 << *(a5 + 32), result >= v7))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v8 = result >> 6;
      v9 = *(a5 + 56 + 8 * (result >> 6));
      if (((v9 >> result) & 1) == 0)
      {
        goto LABEL_20;
      }

      if (*(a5 + 36) != a2)
      {
        goto LABEL_21;
      }

      v10 = v9 & (-2 << (result & 0x3F));
      if (v10)
      {
        result = __clz(__rbit64(v10)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = v8 << 6;
        v12 = v8 + 1;
        v13 = (a5 + 64 + 8 * v8);
        while (v12 < (v7 + 63) >> 6)
        {
          v15 = *v13++;
          v14 = v15;
          v11 += 64;
          ++v12;
          if (v15)
          {
            result = __clz(__rbit64(v14)) + v11;
            goto LABEL_5;
          }
        }

        result = 1 << *(a5 + 32);
      }

LABEL_5:
      a3 = 0;
      if (v5++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_100009180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000098DC(v3, qword_100087610);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Received public push token", v5, 2u);
  }
}

void sub_100009268(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000098DC(v6, qword_100087610);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received relay push", v9, 2u);
  }

  if (a1)
  {
    v51 = a1;
    v10 = [v51 topic];
    if (v10)
    {
      v11 = v10;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = [v51 channelID];
      if (v14)
      {
        v15 = v14;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = [v51 pushType];
        if (v19 == 1024)
        {
          v20 = 0xEC00000079746976;
          v21 = 0x697463416576696CLL;
        }

        else if (v19 == 8)
        {
          v20 = 0xE500000000000000;
          v21 = 0x7472656C61;
        }

        else if (v19 == 4)
        {
          v20 = 0xEA0000000000646ELL;
          v21 = 0x756F72676B636162;
        }

        else
        {
          v52 = v19;
          type metadata accessor for APSIncomingMessagePushType(0);
          v21 = String.init<A>(describing:)();
          v20 = v27;
        }

        v28 = [v51 priority];
        if (v28 == 1)
        {
          v29 = 0xE300000000000000;
          v30 = 7827308;
        }

        else if (v28 == 10)
        {
          v29 = 0xE400000000000000;
          v30 = 1751607656;
        }

        else if (v28 == 5)
        {
          v29 = 0xE600000000000000;
          v30 = 0x6D756964656DLL;
        }

        else
        {
          v52 = v28;
          type metadata accessor for APSIncomingMessagePriority(0);
          v30 = String.init<A>(describing:)();
          v29 = v31;
        }

        v32 = [v51 userInfo];

        if (v32)
        {
          v47 = v30;
          v48 = v29;
          v49 = v21;
          v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v34, v35))
          {
            v46 = v20;
            v36 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            *v36 = 136315650;
            *(v36 + 4) = sub_100008A0C(v50, v13, &v52);
            *(v36 + 12) = 2080;
            *(v36 + 14) = sub_100008A0C(v16, v18, &v52);
            *(v36 + 22) = 2080;
            v37 = Dictionary.description.getter();
            v39 = v18;
            v40 = v16;
            v41 = sub_100008A0C(v37, v38, &v52);

            *(v36 + 24) = v41;
            v16 = v40;
            v18 = v39;
            _os_log_impl(&_mh_execute_header, v34, v35, "Received push message for topic %s on channel %s: %s", v36, 0x20u);
            swift_arrayDestroy();

            v20 = v46;
          }

          v42 = *(v4 + OBJC_IVAR____TtC7mlhostd17MLHostAPSListener_handleMessage);

          v42(v50, v13, v16, v18, v49, v20, v47, v48, v33);
        }

        else
        {

          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            *v45 = 0;
            _os_log_impl(&_mh_execute_header, v43, v44, "Push message has nil userInfo.", v45, 2u);
          }
        }

        return;
      }
    }

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Push message has nil topic / channel.", v26, 2u);
    }
  }

  else
  {
    v51 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v51, v22, "Push message has nil message.", v23, 2u);
    }
  }
}

uint64_t sub_1000098DC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100009914(void *a1)
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

uint64_t sub_100009960(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000099C0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000099D4(result, a2);
  }

  return result;
}

uint64_t sub_1000099D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100009A30(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100009A3C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100009A48(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100009A90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009AD8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100009B20(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

_OWORD *sub_100009B90(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_100009BA0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100009BE4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100009AD8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100009C2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000089AC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100009C94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000089AC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100009CF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000089AC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100009DA0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_100009E30(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100009F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (!*(*(v3 + 40) + 16) || (, sub_100010F08(a1), v8 = v7, , (v8 & 1) == 0))
  {
    if (!a3)
    {
      return 1;
    }

    swift_beginAccess();
    v9 = *(v3 + 24);
    if (*(v9 + 16) && (v10 = sub_100010DF4(a2, a3), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_endAccess();

      v13 = sub_1000293A8(a1, v12);

      if (v13)
      {
        return 1;
      }
    }

    else
    {
      swift_endAccess();
    }
  }

  return 0;
}

void *sub_10000A044()
{
  v37 = *(v0 + 16);
  os_unfair_lock_lock(v37 + 4);
  v1 = sub_100052808(&_swiftEmptyArrayStorage);
  swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v38 = v6;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      os_unfair_lock_unlock(v37 + 4);
      return v1;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v5)) | (v9 << 6);
        v11 = (*(v2 + 48) + 16 * v10);
        v12 = v11[1];
        v42 = *v11;
        v13 = *(*(v2 + 56) + 8 * v10);
        v14 = *(v13 + 16);
        if (v14)
        {
          v40 = v11[1];
          sub_1000089AC(&qword_100085650, &qword_1000690E8);
          v15 = *(type metadata accessor for UUID() - 8);
          v16 = *(v15 + 72);
          v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
          v18 = swift_allocObject();
          v19 = j__malloc_size(v18);
          if (!v16)
          {
            goto LABEL_32;
          }

          if (v19 - v17 == 0x8000000000000000 && v16 == -1)
          {
            goto LABEL_35;
          }

          v18[2] = v14;
          v18[3] = 2 * ((v19 - v17) / v16);
          v41 = v18;
          v21 = sub_100025868(&v43, v18 + v17, v14, v13);
          v22 = v43;
          v39 = v21;

          sub_100009A28(v22);
          if (v39 != v14)
          {
            goto LABEL_33;
          }

          v6 = v38;
          v12 = v40;
        }

        else
        {

          v41 = &_swiftEmptyArrayStorage;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v1;
        v24 = sub_100010DF4(v42, v12);
        v26 = v1[2];
        v27 = (v25 & 1) == 0;
        v28 = __OFADD__(v26, v27);
        v29 = v26 + v27;
        if (v28)
        {
          goto LABEL_31;
        }

        v30 = v25;
        if (v1[3] >= v29)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v35 = v24;
            sub_100013984();
            v24 = v35;
          }
        }

        else
        {
          sub_1000122D0(v29, isUniquelyReferenced_nonNull_native);
          v24 = sub_100010DF4(v42, v12);
          if ((v30 & 1) != (v31 & 1))
          {
            goto LABEL_36;
          }
        }

        v5 &= v5 - 1;
        if (v30)
        {
          v8 = v24;

          v1 = v43;
          *(v43[7] + 8 * v8) = v41;

          v7 = v9;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v1 = v43;
          v43[(v24 >> 6) + 8] |= 1 << v24;
          v32 = (v1[6] + 16 * v24);
          *v32 = v42;
          v32[1] = v12;
          *(v1[7] + 8 * v24) = v41;
          v33 = v1[2];
          v28 = __OFADD__(v33, 1);
          v34 = v33 + 1;
          if (v28)
          {
            goto LABEL_34;
          }

          v1[2] = v34;
          v7 = v9;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v9 = v7;
      }
    }
  }

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
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10000A3D4()
{
  v37 = *(v0 + 16);
  os_unfair_lock_lock(v37 + 4);
  v1 = sub_100052808(&_swiftEmptyArrayStorage);
  swift_beginAccess();
  v2 = *(v0 + 32);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v38 = v6;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      os_unfair_lock_unlock(v37 + 4);
      return v1;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v5)) | (v9 << 6);
        v11 = (*(v2 + 48) + 16 * v10);
        v12 = v11[1];
        v42 = *v11;
        v13 = *(*(v2 + 56) + 8 * v10);
        v14 = *(v13 + 16);
        if (v14)
        {
          v40 = v11[1];
          sub_1000089AC(&qword_100085650, &qword_1000690E8);
          v15 = *(type metadata accessor for UUID() - 8);
          v16 = *(v15 + 72);
          v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
          v18 = swift_allocObject();
          v19 = j__malloc_size(v18);
          if (!v16)
          {
            goto LABEL_32;
          }

          if (v19 - v17 == 0x8000000000000000 && v16 == -1)
          {
            goto LABEL_35;
          }

          v18[2] = v14;
          v18[3] = 2 * ((v19 - v17) / v16);
          v41 = v18;
          v21 = sub_100025868(&v43, v18 + v17, v14, v13);
          v22 = v43;
          v39 = v21;

          sub_100009A28(v22);
          if (v39 != v14)
          {
            goto LABEL_33;
          }

          v6 = v38;
          v12 = v40;
        }

        else
        {

          v41 = &_swiftEmptyArrayStorage;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v1;
        v24 = sub_100010DF4(v42, v12);
        v26 = v1[2];
        v27 = (v25 & 1) == 0;
        v28 = __OFADD__(v26, v27);
        v29 = v26 + v27;
        if (v28)
        {
          goto LABEL_31;
        }

        v30 = v25;
        if (v1[3] >= v29)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v35 = v24;
            sub_100013984();
            v24 = v35;
          }
        }

        else
        {
          sub_1000122D0(v29, isUniquelyReferenced_nonNull_native);
          v24 = sub_100010DF4(v42, v12);
          if ((v30 & 1) != (v31 & 1))
          {
            goto LABEL_36;
          }
        }

        v5 &= v5 - 1;
        if (v30)
        {
          v8 = v24;

          v1 = v43;
          *(v43[7] + 8 * v8) = v41;

          v7 = v9;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v1 = v43;
          v43[(v24 >> 6) + 8] |= 1 << v24;
          v32 = (v1[6] + 16 * v24);
          *v32 = v42;
          v32[1] = v12;
          *(v1[7] + 8 * v24) = v41;
          v33 = v1[2];
          v28 = __OFADD__(v33, 1);
          v34 = v33 + 1;
          if (v28)
          {
            goto LABEL_34;
          }

          v1[2] = v34;
          v7 = v9;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v9 = v7;
      }
    }
  }

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
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10000A764(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000089AC(&qword_100085A00, &unk_100069670);
  v68 = *(v8 - 8);
  v69 = v8;
  __chkstk_darwin(v8);
  v70 = &v65 - v9;
  v72 = type metadata accessor for RemoteHandler();
  v74 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000089AC(&qword_100085FA0, &qword_1000690F8);
  __chkstk_darwin(v11 - 8);
  v13 = &v65 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v80 = &v65 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v65 - v22;
  __chkstk_darwin(v21);
  v25 = &v65 - v24;
  v75 = *(v4 + 16);
  os_unfair_lock_lock(v75 + 4);
  sub_10000E18C(a3, v13);
  v26 = (*(v15 + 48))(v13, 1, v14);
  v81 = v15;
  if (v26 == 1)
  {
    sub_100009C94(v13, &qword_100085FA0, &qword_1000690F8);
    goto LABEL_8;
  }

  (*(v15 + 32))(v25, v13, v14);
  if ((sub_100009F44(v25, a1, a2) & 1) == 0)
  {
    (*(v15 + 8))(v25, v14);
LABEL_8:
    swift_beginAccess();
    v38 = *(v4 + 32);
    v39 = *(v38 + 16);
    v78 = v4;
    v82 = v14;
    if (v39 && (v40 = sub_100010DF4(a1, a2), (v41 & 1) != 0))
    {
      v42 = *(*(v38 + 56) + 8 * v40);
    }

    else
    {
      v42 = &_swiftEmptySetSingleton;
    }

    swift_endAccess();
    v23 = 0;
    v43 = v42 + 56;
    v44 = 1 << v42[32];
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v45 & *(v42 + 7);
    v25 = ((v44 + 63) >> 6);
    v79 = v81 + 16;
    v76 = (v81 + 8);
    v77 = v81 + 32;
    v66 = (v74 + 8);
    v67 = v74 + 16;
    v73 = &_swiftEmptyArrayStorage;
    if (v46)
    {
      while (1)
      {
        v47 = v18;
LABEL_20:
        v49 = __clz(__rbit64(v46));
        v46 &= v46 - 1;
        v14 = v42;
        v50 = *(v42 + 6);
        v51 = v80;
        a2 = v81;
        a1 = *(v81 + 16);
        v52 = v82;
        (a1)(v80, v50 + *(v81 + 72) * (v49 | (v23 << 6)), v82);
        v53 = v52;
        v18 = v47;
        (*(a2 + 32))(v47, v51, v53);
        v54 = v78;
        swift_beginAccess();
        v55 = *(v54 + 48);
        if (*(v55 + 16) && (v56 = sub_100010F08(v47), (v57 & 1) != 0))
        {
          v58 = *(v74 + 16);
          a2 = v67;
          v58(v71, *(v55 + 56) + *(v74 + 72) * v56, v72);
          swift_endAccess();
          v59 = v70;
          v65 = *(v69 + 48);
          (a1)(v70, v18, v82);
          v58((v59 + v65), v71, v72);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v73 = sub_1000244E8(0, v73[2] + 1, 1, v73);
          }

          a1 = v73[2];
          v60 = v73[3];
          if (a1 >= v60 >> 1)
          {
            v73 = sub_1000244E8((v60 > 1), a1 + 1, 1, v73);
          }

          (*v66)(v71, v72);
          (*v76)(v18, v82);
          v61 = v73;
          v73[2] = a1 + 1;
          sub_10000E1FC(v70, v61 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * a1);
          v42 = v14;
          if (!v46)
          {
            break;
          }
        }

        else
        {
          swift_endAccess();
          (*v76)(v47, v82);
          v42 = v14;
          if (!v46)
          {
            break;
          }
        }
      }
    }

    while (1)
    {
      v48 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v48 >= v25)
      {

        v62 = v75;
        v63 = v73;
        goto LABEL_33;
      }

      v46 = *&v43[8 * v48];
      ++v23;
      if (v46)
      {
        v47 = v18;
        v23 = v48;
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  if (qword_1000850B8 != -1)
  {
LABEL_35:
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_1000098DC(v27, qword_100087610);
  v28 = v81;
  (*(v81 + 16))(v23, v25, v14);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v80 = a1;
    v32 = v31;
    v82 = swift_slowAlloc();
    v83[0] = v82;
    *v32 = 136315394;
    sub_10000E26C(&qword_100085660, &protocol conformance descriptor for UUID);
    LODWORD(v79) = v30;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v36 = *(v28 + 8);
    v36(v23, v14);
    v37 = sub_100008A0C(v33, v35, v83);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_100008A0C(v80, a2, v83);
    _os_log_impl(&_mh_execute_header, v29, v79, "Invalid publisher %s for topic %s.", v32, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v36 = *(v28 + 8);
    v36(v23, v14);
  }

  v62 = v75;
  v36(v25, v14);
  v63 = &_swiftEmptyArrayStorage;
LABEL_33:
  os_unfair_lock_unlock(v62 + 4);
  return v63;
}

void sub_10000AFC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = a2;
  v5 = sub_1000089AC(&qword_100085658, &qword_1000690F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v38 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v38 - v13;
  v51 = type metadata accessor for RemoteHandler();
  v14 = *(v51 - 8);
  __chkstk_darwin(v51);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + 16);
  os_unfair_lock_lock(v17 + 4);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000098DC(v18, qword_100087610);
  v47 = *(v14 + 16);
  v48 = v14 + 16;
  v47(v16, v52, v51);
  v50 = v14;
  v46 = *(v9 + 16);
  v46(v49, a1, v8);
  v19 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v45))
  {
    v20 = swift_slowAlloc();
    v43 = v7;
    v21 = v20;
    v40 = swift_slowAlloc();
    v53[0] = v40;
    *v21 = 136315394;
    v39 = v19;
    RemoteHandler.sessionId.getter();
    sub_10000E26C(&qword_100085660, &protocol conformance descriptor for UUID);
    v44 = v3;
    v41 = v17;
    v22 = v8;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v42 = a1;
    v26 = *(v9 + 8);
    v26(v12, v22);
    v27 = v16;
    v28 = v51;
    (*(v50 + 8))(v27, v51);
    v29 = sub_100008A0C(v23, v25, v53);

    *(v21 + 4) = v29;
    *(v21 + 12) = 2080;
    v30 = v49;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v26(v30, v22);
    a1 = v42;
    v34 = sub_100008A0C(v31, v33, v53);

    *(v21 + 14) = v34;
    v35 = v39;
    _os_log_impl(&_mh_execute_header, v39, v45, "Registering connection %s for publisher %s", v21, 0x16u);
    swift_arrayDestroy();

    v7 = v43;

    v36 = v22;
    v17 = v41;
  }

  else
  {

    (*(v9 + 8))(v49, v8);
    v37 = v16;
    v28 = v51;
    (*(v50 + 8))(v37, v51);
    v36 = v8;
  }

  v46(v12, a1, v36);
  v47(v7, v52, v28);
  (*(v50 + 56))(v7, 0, 1, v28);
  swift_beginAccess();
  sub_100028BBC(v7, v12);
  swift_endAccess();
  os_unfair_lock_unlock(v17 + 4);
}

uint64_t sub_10000B4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_100010F08(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100013998();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for RemoteHandler();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_10004B168(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for RemoteHandler();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_10000B660(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = a2;
  v5 = sub_1000089AC(&qword_100085658, &qword_1000690F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v38 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v38 - v13;
  v51 = type metadata accessor for RemoteHandler();
  v14 = *(v51 - 8);
  __chkstk_darwin(v51);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + 16);
  os_unfair_lock_lock(v17 + 4);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000098DC(v18, qword_100087610);
  v47 = *(v14 + 16);
  v48 = v14 + 16;
  v47(v16, v52, v51);
  v50 = v14;
  v46 = *(v9 + 16);
  v46(v49, a1, v8);
  v19 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v45))
  {
    v20 = swift_slowAlloc();
    v43 = v7;
    v21 = v20;
    v40 = swift_slowAlloc();
    v53[0] = v40;
    *v21 = 136315394;
    v39 = v19;
    RemoteHandler.sessionId.getter();
    sub_10000E26C(&qword_100085660, &protocol conformance descriptor for UUID);
    v44 = v3;
    v41 = v17;
    v22 = v8;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v42 = a1;
    v26 = *(v9 + 8);
    v26(v12, v22);
    v27 = v16;
    v28 = v51;
    (*(v50 + 8))(v27, v51);
    v29 = sub_100008A0C(v23, v25, v53);

    *(v21 + 4) = v29;
    *(v21 + 12) = 2080;
    v30 = v49;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v26(v30, v22);
    a1 = v42;
    v34 = sub_100008A0C(v31, v33, v53);

    *(v21 + 14) = v34;
    v35 = v39;
    _os_log_impl(&_mh_execute_header, v39, v45, "Registering connection %s for subscriber %s", v21, 0x16u);
    swift_arrayDestroy();

    v7 = v43;

    v36 = v22;
    v17 = v41;
  }

  else
  {

    (*(v9 + 8))(v49, v8);
    v37 = v16;
    v28 = v51;
    (*(v50 + 8))(v37, v51);
    v36 = v8;
  }

  v46(v12, a1, v36);
  v47(v7, v52, v28);
  (*(v50 + 56))(v7, 0, 1, v28);
  swift_beginAccess();
  sub_100028BBC(v7, v12);
  swift_endAccess();
  os_unfair_lock_unlock(v17 + 4);
}

uint64_t sub_10000BB60(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v48 = a2;
  v6 = type metadata accessor for UUID();
  v49 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v44 = &v40 - v10;
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v45 = v3;
  v43 = *(v3 + 16);
  os_unfair_lock_lock(v43 + 4);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000098DC(v13, qword_100087610);
  v46 = *(v49 + 16);
  v46(v12, a1, v6);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v42 = a1;
    v17 = v16;
    v41 = swift_slowAlloc();
    v51[0] = v41;
    *v17 = 136315394;
    sub_10000E26C(&qword_100085660, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = a3;
    v21 = v20;
    v22 = *(v49 + 8);
    v22(v12, v6);
    v23 = sub_100008A0C(v18, v21, v51);
    a3 = v19;

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    v24 = v48;
    *(v17 + 14) = sub_100008A0C(v48, a3, v51);
    _os_log_impl(&_mh_execute_header, v14, v15, "Adding publisher %s to topic %s", v17, 0x16u);
    swift_arrayDestroy();

    a1 = v42;

    v25 = v22;
  }

  else
  {

    v25 = *(v49 + 8);
    v25(v12, v6);
    v24 = v48;
  }

  v26 = v47;
  v46(v47, a1, v6);
  v27 = v45;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(v27 + 24);
  v29 = v50;
  *(v27 + 24) = 0x8000000000000000;
  sub_100010DF4(v24, a3);
  v31 = *(v29 + 16);
  v32 = (v30 & 1) == 0;
  v33 = __OFADD__(v31, v32);
  v34 = v31 + v32;
  if (v33)
  {
    __break(1u);
LABEL_15:
    sub_100013CEC();
    v29 = v50;
    goto LABEL_11;
  }

  LOBYTE(a1) = v30;
  if (*(v29 + 24) < v34)
  {
    sub_10001278C(v34, isUniquelyReferenced_nonNull_native);
    v29 = v50;
    sub_100010DF4(v24, a3);
    if ((a1 & 1) == (v35 & 1))
    {
      goto LABEL_11;
    }

    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v37 = v43;
  v36 = v44;
  *(v27 + 24) = v29;
  if ((a1 & 1) == 0)
  {
    sub_1000157D8();
  }

  v38 = sub_10004AA68(v36, v26);
  swift_endAccess();
  v25(v36, v6);
  os_unfair_lock_unlock(v37 + 4);
  return v38 & 1;
}

uint64_t sub_10000BFE0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v48 = a2;
  v6 = type metadata accessor for UUID();
  v49 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v44 = &v40 - v10;
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v45 = v3;
  v43 = *(v3 + 16);
  os_unfair_lock_lock(v43 + 4);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000098DC(v13, qword_100087610);
  v46 = *(v49 + 16);
  v46(v12, a1, v6);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v42 = a1;
    v17 = v16;
    v41 = swift_slowAlloc();
    v51[0] = v41;
    *v17 = 136315394;
    sub_10000E26C(&qword_100085660, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = a3;
    v21 = v20;
    v22 = *(v49 + 8);
    v22(v12, v6);
    v23 = sub_100008A0C(v18, v21, v51);
    a3 = v19;

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    v24 = v48;
    *(v17 + 14) = sub_100008A0C(v48, a3, v51);
    _os_log_impl(&_mh_execute_header, v14, v15, "Adding subscriber %s to topic %s", v17, 0x16u);
    swift_arrayDestroy();

    a1 = v42;

    v25 = v22;
  }

  else
  {

    v25 = *(v49 + 8);
    v25(v12, v6);
    v24 = v48;
  }

  v26 = v47;
  v46(v47, a1, v6);
  v27 = v45;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(v27 + 32);
  v29 = v50;
  *(v27 + 32) = 0x8000000000000000;
  sub_100010DF4(v24, a3);
  v31 = *(v29 + 16);
  v32 = (v30 & 1) == 0;
  v33 = __OFADD__(v31, v32);
  v34 = v31 + v32;
  if (v33)
  {
    __break(1u);
LABEL_15:
    sub_100013CEC();
    v29 = v50;
    goto LABEL_11;
  }

  LOBYTE(a1) = v30;
  if (*(v29 + 24) < v34)
  {
    sub_10001278C(v34, isUniquelyReferenced_nonNull_native);
    v29 = v50;
    sub_100010DF4(v24, a3);
    if ((a1 & 1) == (v35 & 1))
    {
      goto LABEL_11;
    }

    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v37 = v43;
  v36 = v44;
  *(v27 + 32) = v29;
  if ((a1 & 1) == 0)
  {
    sub_1000157D8();
  }

  v38 = sub_10004AA68(v36, v26);
  swift_endAccess();
  v25(v36, v6);
  os_unfair_lock_unlock(v37 + 4);
  return v38 & 1;
}

BOOL sub_10000C460(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v44 = a2;
  v7 = sub_1000089AC(&qword_100085FA0, &qword_1000690F8);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(v3 + 16);
  os_unfair_lock_lock(v42 + 4);
  if (qword_1000850B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000098DC(v14, qword_100087610);
  (*(v11 + 16))(v13, a1, v10);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  v17 = os_log_type_enabled(v15, v16);
  v43 = v11;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v41 = v9;
    v19 = v18;
    v40 = swift_slowAlloc();
    v46[0] = v40;
    *v19 = 136315394;
    sub_10000E26C(&qword_100085660, &protocol conformance descriptor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v11;
    v22 = a3;
    v23 = a1;
    v25 = v24;
    (*(v21 + 8))(v13, v10);
    v26 = sub_100008A0C(v20, v25, v46);
    a1 = v23;
    a3 = v22;

    *(v19 + 4) = v26;
    *(v19 + 12) = 2080;
    v27 = v44;
    *(v19 + 14) = sub_100008A0C(v44, v22, v46);
    _os_log_impl(&_mh_execute_header, v15, v16, "Removing subscriber %s from topic %s", v19, 0x16u);
    swift_arrayDestroy();

    v9 = v41;
  }

  else
  {

    (*(v11 + 8))(v13, v10);
    v27 = v44;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v4 + 32);
  v29 = v45;
  *(v4 + 32) = 0x8000000000000000;
  sub_100010DF4(v27, a3);
  v31 = *(v29 + 16);
  v32 = (v30 & 1) == 0;
  v33 = __OFADD__(v31, v32);
  v34 = v31 + v32;
  if (v33)
  {
    __break(1u);
LABEL_15:
    sub_100013CEC();
    v29 = v45;
    goto LABEL_11;
  }

  v16 = v30;
  if (*(v29 + 24) < v34)
  {
    sub_10001278C(v34, isUniquelyReferenced_nonNull_native);
    v29 = v45;
    sub_100010DF4(v27, a3);
    if ((v16 & 1) == (v35 & 1))
    {
      goto LABEL_11;
    }

    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v36 = v43;
  *(v4 + 32) = v29;
  if ((v16 & 1) == 0)
  {
    sub_1000157D8();
  }

  sub_10004DF7C(a1, v9);
  swift_endAccess();
  v37 = (*(v36 + 48))(v9, 1, v10) != 1;
  sub_100009C94(v9, &qword_100085FA0, &qword_1000690F8);
  os_unfair_lock_unlock(v42 + 4);
  return v37;
}

void sub_10000C900(uint64_t a1)
{
  v2 = v1;
  v113 = a1;
  v3 = sub_1000089AC(&qword_100085658, &qword_1000690F0);
  __chkstk_darwin(v3 - 8);
  v99 = &v91[-v4];
  v5 = sub_1000089AC(&qword_100085FA0, &qword_1000690F8);
  __chkstk_darwin(v5 - 8);
  v96 = &v91[-v6];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v97 = &v91[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v95 = &v91[-v12];
  __chkstk_darwin(v11);
  v108 = &v91[-v13];
  v98 = *(v2 + 16);
  os_unfair_lock_lock(v98 + 4);
  v116 = &_swiftEmptySetSingleton;
  swift_beginAccess();
  v14 = *(v2 + 24);
  v15 = *(v14 + 64);
  v102 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v101 = (v16 + 63) >> 6;
  v110 = (v8 + 16);
  v111 = (v8 + 8);
  v100 = v8;
  v93 = (v8 + 56);

  v19 = 0;
  *&v20 = 136315394;
  v94 = v20;
  v112 = v7;
  v107 = v2;
  v104 = v14;
  while (v18)
  {
LABEL_11:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = v22 | (v19 << 6);
    v24 = *(*(v14 + 56) + 8 * v23);
    if (*(v24 + 16))
    {
      v106 = v18;
      v25 = (*(v14 + 48) + 16 * v23);
      v26 = v25[1];
      v103 = *v25;
      sub_10000E26C(&qword_100085F70, &protocol conformance descriptor for UUID);
      v105 = v26;

      v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v24 + 32);
      v29 = v27 & ~v28;
      if ((*(v24 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        v31 = *(v100 + 72);
        *&v109 = *(v100 + 16);
        while (1)
        {
          v32 = v108;
          v33 = v112;
          (v109)(v108, *(v24 + 48) + v31 * v29, v112);
          sub_10000E26C(&qword_100085F80, &protocol conformance descriptor for UUID);
          v34 = dispatch thunk of static Equatable.== infix(_:_:)();
          v35 = *v111;
          (*v111)(v32, v33);
          if (v34)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v24 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        if (qword_1000850B8 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_1000098DC(v36, qword_100087610);
        v37 = v95;
        v38 = v112;
        (v109)(v95, v113, v112);
        v39 = v105;

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.debug.getter();

        v42 = os_log_type_enabled(v40, v41);
        v2 = v107;
        v43 = v103;
        if (v42)
        {
          v44 = swift_slowAlloc();
          *&v109 = swift_slowAlloc();
          v114 = v109;
          *v44 = v94;
          sub_10000E26C(&qword_100085660, &protocol conformance descriptor for UUID);
          v92 = v41;
          v45 = dispatch thunk of CustomStringConvertible.description.getter();
          v46 = v37;
          v48 = v47;
          v35(v46, v38);
          v49 = sub_100008A0C(v45, v48, &v114);

          *(v44 + 4) = v49;
          *(v44 + 12) = 2080;
          *(v44 + 14) = sub_100008A0C(v43, v39, &v114);
          _os_log_impl(&_mh_execute_header, v40, v92, "Removing publisher %s from topic %s", v44, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v35(v37, v38);
        }

        swift_beginAccess();
        v50 = sub_10000FD98(&v114, v43, v39);
        if (*v51)
        {
          v52 = v96;
          sub_10004DF7C(v113, v96);
          (v50)(&v114, 0);
          v53 = v52;
          swift_endAccess();
        }

        else
        {
          (v50)(&v114, 0);
          swift_endAccess();
          v53 = v96;
          (*v93)(v96, 1, 1, v38);
        }

        v14 = v104;
        v18 = v106;
        sub_100009C94(v53, &qword_100085FA0, &qword_1000690F8);
        swift_beginAccess();
        v54 = *(v2 + 24);
        if (*(v54 + 16) && (v55 = sub_100010DF4(v43, v39), (v56 & 1) != 0))
        {
          v57 = *(*(v54 + 56) + 8 * v55);
          swift_endAccess();
          if (*(v57 + 16))
          {
            goto LABEL_30;
          }

          sub_10004A918(&v114, v43, v39);
        }

        else
        {
          swift_endAccess();
LABEL_30:
        }
      }

      else
      {
LABEL_5:

        v18 = v106;
        v2 = v107;
        v14 = v104;
      }
    }
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v21 >= v101)
    {
      break;
    }

    v18 = *(v102 + 8 * v21);
    ++v19;
    if (v18)
    {
      v19 = v21;
      goto LABEL_11;
    }
  }

  v59 = 0;
  v60 = v116;
  v61 = v116 + 56;
  v62 = 1 << v116[32];
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v116 + 7);
  v65 = (v62 + 63) >> 6;
  *&v58 = 136315138;
  v109 = v58;
  v108 = v116;
  while (v64)
  {
LABEL_41:
    v67 = (*(v60 + 6) + ((v59 << 10) | (16 * __clz(__rbit64(v64)))));
    v68 = *v67;
    v69 = v67[1];
    v70 = qword_1000850B8;

    if (v70 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_1000098DC(v71, qword_100087610);

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v114 = v75;
      *v74 = v109;
      *(v74 + 4) = sub_100008A0C(v68, v69, &v114);
      _os_log_impl(&_mh_execute_header, v72, v73, "Removing topic: %s", v74, 0xCu);
      sub_100009914(v75);

      v2 = v107;
      v60 = v108;
    }

    swift_beginAccess();
    sub_100010DF4(v68, v69);
    if (v76)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = *(v2 + 24);
      v115 = v78;
      *(v2 + 24) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100013CEC();
        v78 = v115;
      }

      sub_100065974();
      *(v2 + 24) = v78;
    }

    v64 &= v64 - 1;
    swift_endAccess();
  }

  while (1)
  {
    v66 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    if (v66 >= v65)
    {

      if (qword_1000850B8 != -1)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    }

    v64 = *&v61[8 * v66];
    ++v59;
    if (v64)
    {
      v59 = v66;
      goto LABEL_41;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  swift_once();
LABEL_49:
  v79 = type metadata accessor for Logger();
  sub_1000098DC(v79, qword_100087610);
  v80 = v97;
  v81 = v112;
  (*v110)(v97, v113, v112);
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v114 = v85;
    *v84 = v109;
    sub_10000E26C(&qword_100085660, &protocol conformance descriptor for UUID);
    v86 = dispatch thunk of CustomStringConvertible.description.getter();
    v88 = v87;
    (*v111)(v80, v81);
    v89 = sub_100008A0C(v86, v88, &v114);

    *(v84 + 4) = v89;
    _os_log_impl(&_mh_execute_header, v82, v83, "Removing publisher %s from connections list", v84, 0xCu);
    sub_100009914(v85);
  }

  else
  {

    (*v111)(v80, v81);
  }

  swift_beginAccess();
  v90 = v99;
  sub_10000B4C0(v113, v99);
  swift_endAccess();
  sub_100009C94(v90, &qword_100085658, &qword_1000690F0);
  os_unfair_lock_unlock(v98 + 4);
}

void sub_10000D508(uint64_t a1)
{
  v2 = v1;
  v113 = a1;
  v3 = sub_1000089AC(&qword_100085658, &qword_1000690F0);
  __chkstk_darwin(v3 - 8);
  v99 = &v91[-v4];
  v5 = sub_1000089AC(&qword_100085FA0, &qword_1000690F8);
  __chkstk_darwin(v5 - 8);
  v96 = &v91[-v6];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v97 = &v91[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v95 = &v91[-v12];
  __chkstk_darwin(v11);
  v108 = &v91[-v13];
  v98 = *(v2 + 16);
  os_unfair_lock_lock(v98 + 4);
  v116 = &_swiftEmptySetSingleton;
  swift_beginAccess();
  v14 = *(v2 + 32);
  v15 = *(v14 + 64);
  v102 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v101 = (v16 + 63) >> 6;
  v110 = (v8 + 16);
  v111 = (v8 + 8);
  v100 = v8;
  v93 = (v8 + 56);

  v19 = 0;
  *&v20 = 136315394;
  v94 = v20;
  v112 = v7;
  v107 = v2;
  v104 = v14;
  while (v18)
  {
LABEL_11:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = v22 | (v19 << 6);
    v24 = *(*(v14 + 56) + 8 * v23);
    if (*(v24 + 16))
    {
      v106 = v18;
      v25 = (*(v14 + 48) + 16 * v23);
      v26 = v25[1];
      v103 = *v25;
      sub_10000E26C(&qword_100085F70, &protocol conformance descriptor for UUID);
      v105 = v26;

      v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v24 + 32);
      v29 = v27 & ~v28;
      if ((*(v24 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        v31 = *(v100 + 72);
        *&v109 = *(v100 + 16);
        while (1)
        {
          v32 = v108;
          v33 = v112;
          (v109)(v108, *(v24 + 48) + v31 * v29, v112);
          sub_10000E26C(&qword_100085F80, &protocol conformance descriptor for UUID);
          v34 = dispatch thunk of static Equatable.== infix(_:_:)();
          v35 = *v111;
          (*v111)(v32, v33);
          if (v34)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v24 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        if (qword_1000850B8 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_1000098DC(v36, qword_100087610);
        v37 = v95;
        v38 = v112;
        (v109)(v95, v113, v112);
        v39 = v105;

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.debug.getter();

        v42 = os_log_type_enabled(v40, v41);
        v2 = v107;
        v43 = v103;
        if (v42)
        {
          v44 = swift_slowAlloc();
          *&v109 = swift_slowAlloc();
          v114 = v109;
          *v44 = v94;
          sub_10000E26C(&qword_100085660, &protocol conformance descriptor for UUID);
          v92 = v41;
          v45 = dispatch thunk of CustomStringConvertible.description.getter();
          v46 = v37;
          v48 = v47;
          v35(v46, v38);
          v49 = sub_100008A0C(v45, v48, &v114);

          *(v44 + 4) = v49;
          *(v44 + 12) = 2080;
          *(v44 + 14) = sub_100008A0C(v43, v39, &v114);
          _os_log_impl(&_mh_execute_header, v40, v92, "Removing subscriber %s from topic %s", v44, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v35(v37, v38);
        }

        swift_beginAccess();
        v50 = sub_10000FD98(&v114, v43, v39);
        if (*v51)
        {
          v52 = v96;
          sub_10004DF7C(v113, v96);
          (v50)(&v114, 0);
          v53 = v52;
          swift_endAccess();
        }

        else
        {
          (v50)(&v114, 0);
          swift_endAccess();
          v53 = v96;
          (*v93)(v96, 1, 1, v38);
        }

        v14 = v104;
        v18 = v106;
        sub_100009C94(v53, &qword_100085FA0, &qword_1000690F8);
        swift_beginAccess();
        v54 = *(v2 + 32);
        if (*(v54 + 16) && (v55 = sub_100010DF4(v43, v39), (v56 & 1) != 0))
        {
          v57 = *(*(v54 + 56) + 8 * v55);
          swift_endAccess();
          if (*(v57 + 16))
          {
            goto LABEL_30;
          }

          sub_10004A918(&v114, v43, v39);
        }

        else
        {
          swift_endAccess();
LABEL_30:
        }
      }

      else
      {
LABEL_5:

        v18 = v106;
        v2 = v107;
        v14 = v104;
      }
    }
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v21 >= v101)
    {
      break;
    }

    v18 = *(v102 + 8 * v21);
    ++v19;
    if (v18)
    {
      v19 = v21;
      goto LABEL_11;
    }
  }

  v59 = 0;
  v60 = v116;
  v61 = v116 + 56;
  v62 = 1 << v116[32];
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v116 + 7);
  v65 = (v62 + 63) >> 6;
  *&v58 = 136315138;
  v109 = v58;
  v108 = v116;
  while (v64)
  {
LABEL_41:
    v67 = (*(v60 + 6) + ((v59 << 10) | (16 * __clz(__rbit64(v64)))));
    v68 = *v67;
    v69 = v67[1];
    v70 = qword_1000850B8;

    if (v70 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_1000098DC(v71, qword_100087610);

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v114 = v75;
      *v74 = v109;
      *(v74 + 4) = sub_100008A0C(v68, v69, &v114);
      _os_log_impl(&_mh_execute_header, v72, v73, "Removing topic: %s", v74, 0xCu);
      sub_100009914(v75);

      v2 = v107;
      v60 = v108;
    }

    swift_beginAccess();
    sub_100010DF4(v68, v69);
    if (v76)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = *(v2 + 32);
      v115 = v78;
      *(v2 + 32) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100013CEC();
        v78 = v115;
      }

      sub_100065974();
      *(v2 + 32) = v78;
    }

    v64 &= v64 - 1;
    swift_endAccess();
  }

  while (1)
  {
    v66 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    if (v66 >= v65)
    {

      if (qword_1000850B8 != -1)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    }

    v64 = *&v61[8 * v66];
    ++v59;
    if (v64)
    {
      v59 = v66;
      goto LABEL_41;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  swift_once();
LABEL_49:
  v79 = type metadata accessor for Logger();
  sub_1000098DC(v79, qword_100087610);
  v80 = v97;
  v81 = v112;
  (*v110)(v97, v113, v112);
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v114 = v85;
    *v84 = v109;
    sub_10000E26C(&qword_100085660, &protocol conformance descriptor for UUID);
    v86 = dispatch thunk of CustomStringConvertible.description.getter();
    v88 = v87;
    (*v111)(v80, v81);
    v89 = sub_100008A0C(v86, v88, &v114);

    *(v84 + 4) = v89;
    _os_log_impl(&_mh_execute_header, v82, v83, "Removing subscriber %s from connections list", v84, 0xCu);
    sub_100009914(v85);
  }

  else
  {

    (*v111)(v80, v81);
  }

  swift_beginAccess();
  v90 = v99;
  sub_10000B4C0(v113, v99);
  swift_endAccess();
  sub_100009C94(v90, &qword_100085658, &qword_1000690F0);
  os_unfair_lock_unlock(v98 + 4);
}

uint64_t sub_10000E110()
{

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_10000E18C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000089AC(&qword_100085FA0, &qword_1000690F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E1FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000089AC(&qword_100085A00, &unk_100069670);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E26C(unint64_t *a1, uint64_t a2)
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

void sub_10000E2B0(uint64_t a1)
{
  v58 = type metadata accessor for URL();
  v2 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000089AC(&qword_100085728, &qword_100069140);
  __chkstk_darwin(v4 - 8);
  v6 = &v44 - v5;
  v59 = type metadata accessor for ExtensionRecord();
  v7 = *(v59 - 8);
  v8 = __chkstk_darwin(v59);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v45 = &v44 - v10;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10000FCE4();
    sub_10000FD30(&qword_100085720, sub_10000FCE4, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    a1 = v65;
    v11 = v66;
    v13 = v67;
    v12 = v68;
    v14 = v69;
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v11 = a1 + 56;
    v13 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(a1 + 56);

    v12 = 0;
  }

  v49 = v13;
  v18 = (v13 + 64) >> 6;
  v54 = (v7 + 56);
  v55 = (v2 + 8);
  v53 = (v7 + 48);
  v46 = v7;
  v47 = (v7 + 32);
  v50 = &_swiftEmptyArrayStorage;
  v51 = v11;
  v56 = v18;
  v52 = a1;
LABEL_8:
  v19 = v12;
  if (a1 < 0)
  {
    do
    {
      v24 = __CocoaSet.Iterator.next()();
      if (!v24)
      {
        goto LABEL_25;
      }

      v64 = v24;
      sub_10000FCE4();
      swift_dynamicCast();
      v23 = v70;
      v12 = v19;
      v22 = v14;
      if (!v70)
      {
        goto LABEL_25;
      }

LABEL_17:
      v63 = v22;
      v25 = v23;
      v26 = [v25 localizedName];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v28;
      v62 = v27;

      v29 = [v25 bundleIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v30;

      v31 = [v25 url];
      v32 = v57;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL.absoluteString.getter();
      (*v55)(v32, v58);
      v33 = v6;
      v34 = [v25 extensionPointIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v6 = v33;
      ExtensionRecord.init(name:bundleIdentifier:url:extensionPointIdentifier:)();

      v35 = v59;
      (*v54)(v33, 0, 1, v59);

      if ((*v53)(v33, 1, v35) != 1)
      {
        v36 = *v47;
        v37 = v45;
        v38 = v59;
        (*v47)(v45, v6, v59);
        v36(v48, v37, v38);
        v39 = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_1000246F4(0, v39[2] + 1, 1, v39);
        }

        v11 = v51;
        a1 = v52;
        v40 = v46;
        v42 = v39[2];
        v41 = v39[3];
        if (v42 >= v41 >> 1)
        {
          v39 = sub_1000246F4((v41 > 1), v42 + 1, 1, v39);
        }

        v39[2] = v42 + 1;
        v43 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v50 = v39;
        v36(v39 + v43 + *(v40 + 72) * v42, v48, v59);
        v18 = v56;
        v14 = v63;
        goto LABEL_8;
      }

      sub_100009C94(v33, &qword_100085728, &qword_100069140);
      v19 = v12;
      v14 = v63;
      v11 = v51;
      a1 = v52;
      v18 = v56;
    }

    while (v52 < 0);
  }

  v20 = v19;
  v21 = v14;
  v12 = v19;
  if (v14)
  {
LABEL_13:
    v22 = (v21 - 1) & v21;
    v23 = *(*(a1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v21)))));
    if (v23)
    {
      goto LABEL_17;
    }

LABEL_25:
    sub_100009A28(a1);
    return;
  }

  while (1)
  {
    v12 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v12 >= v18)
    {
      goto LABEL_25;
    }

    v21 = *(v11 + 8 * v12);
    ++v20;
    if (v21)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_10000E8DC(uint64_t a1)
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10004EE3C(_swiftEmptyArrayStorage);
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  v1[3] = v3;
  sub_1000089AC(&qword_100085A40, &unk_100068F60);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v1[2] = v4;
  v1[4] = a1;
  return v1;
}

void sub_10000E968()
{
  v1 = &_swiftEmptyArrayStorage;
  if (&_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_31;
  }

LABEL_2:
  v2 = &_swiftEmptySetSingleton;
LABEL_3:
  v32 = v2;
  v3 = v0[4];
  v27 = v3[2];
  if (v27)
  {
    v4 = 0;
    v25 = v3 + 4;
    v26 = objc_opt_self();
    v24 = v3;
    while (1)
    {
      if (v4 >= v3[2])
      {
        goto LABEL_30;
      }

      v7 = &v25[2 * v4];
      v9 = *v7;
      v8 = v7[1];
      v10 = objc_allocWithZone(_EXQuery);

      v30 = v8;
      v11 = String._bridgeToObjectiveC()();
      v6 = [v10 initWithExtensionPointIdentifier:v11];

      v12 = [v26 executeQuery:v6];
      sub_10000FCE4();
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = v1;
      if (v13 >> 62)
      {
        break;
      }

      v0 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v0)
      {
        goto LABEL_10;
      }

LABEL_26:
      v5 = v1;
LABEL_6:
      ++v4;

      v0 = &v32;
      sub_10004FDF0(v5);

      if (v4 == v27)
      {
        return;
      }
    }

    v0 = _CocoaArrayWrapper.endIndex.getter();
    if (!v0)
    {
      goto LABEL_26;
    }

LABEL_10:
    v28 = v6;
    v29 = v4;
    v14 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v15 = *(v13 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_2;
        }

        sub_10004EE3C(&_swiftEmptyArrayStorage);
        goto LABEL_3;
      }

      v18 = v0;
      v19 = [v15 extensionPointIdentifier];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      if (v20 == v9 && v22 == v30)
      {
      }

      else
      {
        v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v1 & 1) == 0)
        {

          goto LABEL_13;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v1 = *(v31 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_13:
      ++v14;
      v0 = v18;
      if (v17 == v18)
      {
        v5 = v31;
        v1 = &_swiftEmptyArrayStorage;
        v3 = v24;
        v6 = v28;
        v4 = v29;
        goto LABEL_6;
      }
    }
  }
}

void sub_10000EC54(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v6 = type metadata accessor for ExtensionRecord();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 16);
  os_unfair_lock_lock(v10 + 4);

  sub_1000297C8(v11);
  v13 = v12;

  v29[0] = a1;
  v29[1] = a2;
  v26 = a2;
  v28 = v29;
  v14 = sub_100029F60(sub_10000FD78, v27, v13);

  os_unfair_lock_unlock(v10 + 4);
  if ((v14 & 1) == 0)
  {
    goto LABEL_10;
  }

  os_unfair_lock_lock(v10 + 4);

  sub_10000E2B0(v15);
  v17 = v16;

  os_unfair_lock_unlock(v10 + 4);
  v18 = *(v17 + 16);
  if (!v18)
  {
LABEL_9:

LABEL_10:
    (*(v7 + 56))(v24, 1, 1, v6);
    return;
  }

  v19 = 0;
  v25 = v7 + 16;
  while (v19 < *(v17 + 16))
  {
    (*(v7 + 16))(v9, v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v6);
    if (ExtensionRecord.bundleIdentifier.getter() == a1 && v20 == v26)
    {

LABEL_12:

      v22 = v24;
      (*(v7 + 32))(v24, v9, v6);
      (*(v7 + 56))(v22, 0, 1, v6);
      return;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_12;
    }

    ++v19;
    (*(v7 + 8))(v9, v6);
    if (v18 == v19)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_10000EEF4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v103 = a4;
  v115 = a1;
  v116 = a2;
  v113 = a5;
  v7 = sub_1000089AC(&qword_100085C80, &unk_100069450);
  __chkstk_darwin(v7 - 8);
  v9 = &v90 - v8;
  v93 = type metadata accessor for UUID();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AppExtensionProcess._InstanceIdentifier();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v95 = &v90 - v17;
  __chkstk_darwin(v16);
  v19 = &v90 - v18;
  v20 = type metadata accessor for AppExtensionProcess.Configuration();
  v105 = *(v20 - 8);
  v106 = v20;
  v21 = __chkstk_darwin(v20);
  v101 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v90 - v23;
  v25 = type metadata accessor for AppExtensionIdentity();
  v108 = *(v25 - 8);
  v109 = v25;
  v26 = __chkstk_darwin(v25);
  v100 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v107 = &v90 - v28;
  v112 = *(v5 + 16);
  os_unfair_lock_lock(v112 + 4);
  v29 = *(v5 + 24);
  v104 = v24;
  v99 = v11;
  v97 = v12;
  v94 = a3;
  v111 = v29;
  if ((v29 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10000FCE4();
    sub_10000FD30(&qword_100085720, sub_10000FCE4, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v31 = v118[1];
    v30 = v118[2];
    v33 = v118[3];
    v32 = v118[4];
    v34 = v118[5];
  }

  else
  {
    v35 = -1 << *(v29 + 32);
    v31 = v29;
    v30 = v29 + 56;
    v33 = ~v35;
    v36 = -v35;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v34 = (v37 & *(v29 + 56));
    swift_bridgeObjectRetain_n();
    v32 = 0;
  }

  v98 = v19;
  v102 = v9;
  v110 = v33;
  v96 = v15;
  v38 = v32;
  if (v31 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v39 = v38;
  v40 = v34;
  v41 = v38;
  if (!v34)
  {
    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v41 >= ((v33 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v40 = *(v30 + 8 * v41);
      ++v39;
      if (v40)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

LABEL_12:
  v42 = (v40 - 1) & v40;
  v43 = *(*(v31 + 48) + ((v41 << 9) | (8 * __clz(__rbit64(v40)))));
  if (!v43)
  {
LABEL_23:
    sub_100009A28(v31);

    if (qword_1000850B8 == -1)
    {
LABEL_24:
      v52 = type metadata accessor for Logger();
      sub_1000098DC(v52, qword_100087610);
      v53 = v116;

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v118[0] = v57;
        *v56 = 136315138;
        *(v56 + 4) = sub_100008A0C(v115, v53, v118);
        _os_log_impl(&_mh_execute_header, v54, v55, "No extension identifier available in registry: %s", v56, 0xCu);
        sub_100009914(v57);
      }

      v58 = type metadata accessor for AppExtensionProcess();
      (*(*(v58 - 8) + 56))(v113, 1, 1, v58);
      goto LABEL_27;
    }

LABEL_38:
    swift_once();
    goto LABEL_24;
  }

  while (1)
  {
    v114 = v34;
    v45 = v43;
    v46 = [v43 bundleIdentifier];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    if (v47 == v115 && v49 == v116)
    {
      break;
    }

    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v51)
    {
      goto LABEL_29;
    }

    v38 = v41;
    v34 = v42;
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v44 = __CocoaSet.Iterator.next()();
    if (v44)
    {
      v117 = v44;
      sub_10000FCE4();
      swift_dynamicCast();
      v43 = v118[0];
      v41 = v38;
      v42 = v34;
      if (v118[0])
      {
        continue;
      }
    }

    goto LABEL_23;
  }

LABEL_29:
  sub_100009A28(v31);

  v59 = v45;
  v60 = v107;
  v114 = v59;
  AppExtensionIdentity.init(_:)();
  (*(v108 + 16))(v100, v60, v109);
  v61 = v104;
  AppExtensionProcess.Configuration.init(appExtension:onInterruption:)();
  v63 = v105;
  v62 = v106;
  if (v103)
  {
    v64 = v98;
    AppExtensionProcess._InstanceIdentifier.init()();
    v65 = v97;
    v66 = *(v97 + 16);
    v67 = v99;
    v66(v95, v64, v99);
    AppExtensionProcess.Configuration._instanceIdentifier.setter();
    if (qword_1000850B8 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_1000098DC(v68, qword_100087610);
    v69 = v96;
    v66(v96, v64, v67);

    v70 = v116;

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = v65;
      v74 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v118[0] = v111;
      *v74 = 136315650;
      v75 = v91;
      LODWORD(v110) = v72;
      AppExtensionProcess._InstanceIdentifier.id.getter();
      sub_10000FD30(&qword_100085660, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v76 = v93;
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      v78 = v61;
      v80 = v79;
      (*(v92 + 8))(v75, v76);
      v81 = *(v73 + 8);
      v82 = v99;
      v81(v69, v99);
      v83 = sub_100008A0C(v77, v80, v118);
      v61 = v78;

      *(v74 + 4) = v83;
      *(v74 + 12) = 2080;
      *(v74 + 14) = sub_100008A0C(v94, v103, v118);
      *(v74 + 22) = 2080;
      *(v74 + 24) = sub_100008A0C(v115, v70, v118);
      _os_log_impl(&_mh_execute_header, v71, v110, "Requesting instanceIdentifier %s for taskName %s and bundleId %s", v74, 0x20u);
      swift_arrayDestroy();

      v81(v98, v82);
    }

    else
    {

      v84 = *(v65 + 8);
      v84(v69, v67);
      v84(v64, v67);
    }

    v63 = v105;
    v62 = v106;
  }

  (*(v63 + 16))(v101, v61, v62);
  v85 = v102;
  AppExtensionProcess.init(configuration:)();

  (*(v63 + 8))(v61, v62);
  (*(v108 + 8))(v107, v109);
  v86 = type metadata accessor for AppExtensionProcess();
  v87 = *(v86 - 8);
  v88 = *(v87 + 56);
  v88(v85, 0, 1, v86);
  v89 = v113;
  (*(v87 + 32))(v113, v85, v86);
  v88(v89, 0, 1, v86);
LABEL_27:
  os_unfair_lock_unlock(v112 + 4);
}

uint64_t sub_10000FC78()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

unint64_t sub_10000FCE4()
{
  result = qword_100085718;
  if (!qword_100085718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100085718);
  }

  return result;
}

uint64_t sub_10000FD30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t (*sub_10000FD98(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_100014138(v6, a2, a3);
  return sub_10000FE20;
}

uint64_t (*sub_10000FE24(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1000141E8(v6, a2, a3);
  return sub_1000157DC;
}

void sub_10000FEAC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t (*sub_10000FEF8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for DatastoreKey();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_1000142F4(v3, v8);
  return sub_100010010;
}

void sub_100010010(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_100010088(Swift::Int a1, Swift::Int a2, uint64_t a3)
{
  v4 = v3;
  v33 = *(v4 + 16);
  os_unfair_lock_lock(v33 + 4);
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v36 = a3;

  v11 = 0;
  v12 = 0;
  v13 = 0;
  while (v9)
  {
LABEL_10:
    v15 = (*(v36 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));
    v17 = *v15;
    v16 = v15[1];
    swift_beginAccess();

    sub_100009B20(v11, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v4 + 24);
    v19 = v37;
    *(v4 + 24) = 0x8000000000000000;
    v20 = sub_100010DF4(v17, v16);
    v22 = v19[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_23;
    }

    v26 = v21;
    if (v19[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v20;
        sub_100013D00(&qword_1000857E8, &qword_100069178);
        v20 = v31;
        v19 = v37;
        *(v4 + 24) = v37;
        if (v26)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_1000127A0(v25, isUniquelyReferenced_nonNull_native, &qword_1000857E8, &qword_100069178);
      v19 = v37;
      v20 = sub_100010DF4(v17, v16);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_25;
      }
    }

    *(v4 + 24) = v19;
    if (v26)
    {
      goto LABEL_4;
    }

LABEL_16:
    v19[(v20 >> 6) + 8] |= 1 << v20;
    v28 = (v19[6] + 16 * v20);
    *v28 = v17;
    v28[1] = v16;
    *(v19[7] + 8 * v20) = &_swiftEmptySetSingleton;
    v29 = v19[2];
    v24 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v24)
    {
      goto LABEL_24;
    }

    v19[2] = v30;

LABEL_4:
    v9 &= v9 - 1;

    v12 = sub_10004A918(&v37, a1, a2);
    swift_endAccess();

    v11 = sub_100010364;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      os_unfair_lock_unlock(v33 + 4);
      sub_100009B20(v11, 0);
      return v12 & 1;
    }

    v9 = *(v6 + 8 * v14);
    ++v13;
    if (v9)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100010374(uint64_t a1, Swift::Int a2, uint64_t a3)
{
  v5 = v3;
  v26 = a1;
  v25 = type metadata accessor for DatastoreKey();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 16);
  os_unfair_lock_lock(v11 + 4);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v3 + 32);
  v27 = v13;
  *(v5 + 32) = 0x8000000000000000;
  v15 = sub_100010FDC(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v14;
  if (v13[3] >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_10001354C();
    v13 = v27;
    goto LABEL_6;
  }

  sub_100011C28(v18, isUniquelyReferenced_nonNull_native);
  v13 = v27;
  v19 = sub_100010FDC(a3);
  if ((v4 & 1) != (v20 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v19;
LABEL_6:
  v21 = v26;
  *(v5 + 32) = v13;
  if ((v4 & 1) == 0)
  {
    (*(v8 + 16))(v10, a3, v25);
    sub_100012EC4(v15, v10, &_swiftEmptySetSingleton, v13);
  }

  v22 = sub_10004A918(&v27, v21, a2);
  swift_endAccess();

  os_unfair_lock_unlock(v11 + 4);
  return v22 & 1;
}

void sub_100010580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *(v3 + 16);
  os_unfair_lock_lock(v17 + 4);
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
LABEL_11:
    v12 = (*(a3 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v8)))));
    v14 = *v12;
    v13 = v12[1];
    swift_beginAccess();

    v15 = sub_10000FE24(v19, v14, v13);
    if (*v16)
    {
      sub_10004E224(a1, a2);
      (v15)(v19, 0);
      swift_endAccess();
    }

    else
    {
      (v15)(v19, 0);
      swift_endAccess();
    }

    v8 &= v8 - 1;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      os_unfair_lock_unlock(v17 + 4);
      return;
    }

    v8 = *(a3 + 56 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_100010728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DatastoreKey();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 16);
  os_unfair_lock_lock(v11 + 4);
  (*(v8 + 16))(v10, a3, v7);
  swift_beginAccess();
  v12 = sub_10000FEF8(v15);
  if (*v13)
  {
    sub_10004E224(a1, a2);
    (v12)(v15, 0);
    swift_endAccess();
  }

  else
  {
    (v12)(v15, 0);
    swift_endAccess();
  }

  (*(v8 + 8))(v10, v7);
  os_unfair_lock_unlock(v11 + 4);
}

void *sub_1000108C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000089AC(&qword_100085C20, &qword_1000693C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v28[-v9];
  v11 = type metadata accessor for DatastoreKey();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v3 + 16);
  os_unfair_lock_lock(v15 + 4);
  v29 = &_swiftEmptySetSingleton;
  if (a2)
  {
    swift_beginAccess();
    v16 = *(v3 + 24);
    if (*(v16 + 16) && (v17 = sub_100010DF4(a1, a2), (v18 & 1) != 0))
    {
      v19 = *(*(v16 + 56) + 8 * v17);
    }

    else
    {
      v19 = &_swiftEmptySetSingleton;
    }

    swift_endAccess();
    sub_1000296C4(v19);
  }

  sub_100014C8C(a3, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100014CFC(v10);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    swift_beginAccess();
    v20 = *(v4 + 32);
    if (*(v20 + 16) && (v21 = sub_100010FDC(v14), (v22 & 1) != 0))
    {
      v23 = *(*(v20 + 56) + 8 * v21);
    }

    else
    {
      v23 = &_swiftEmptySetSingleton;
    }

    swift_endAccess();
    sub_1000296C4(v23);
    (*(v12 + 8))(v14, v11);
  }

  v24 = v29;
  swift_beginAccess();

  v26 = sub_100014D64(v25, v24);

  os_unfair_lock_unlock(v15 + 4);
  return v26;
}

void sub_100010B74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v3 + 40);
  if (*(v8 + 16) && (v9 = sub_100010DF4(a1, a2), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v8 + 56);
    v13 = type metadata accessor for ContinuousClock.Instant();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a3, v12 + *(v14 + 72) * v11, v13);
    (*(v14 + 56))(a3, 0, 1, v13);
  }

  else
  {
    v15 = type metadata accessor for ContinuousClock.Instant();
    (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }

  swift_endAccess();
  os_unfair_lock_unlock(v7 + 4);
}

uint64_t sub_100010CEC()
{

  return _swift_deallocClassInstance(v0, 48, 7);
}

unint64_t sub_100010D60(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000110F4(a1, v2);
}

unint64_t sub_100010DF4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000111F8(a1, a2, v4);
}

unint64_t sub_100010E6C(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1000112B0(a1 & 1, v2);
}

unint64_t sub_100010F08(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100015730(&qword_100085F70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1000113E4(a1, v2, &type metadata accessor for UUID, &qword_100085F80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_100010FDC(uint64_t a1)
{
  type metadata accessor for DatastoreKey();
  sub_100015730(&qword_100085D20, &type metadata accessor for DatastoreKey, &protocol conformance descriptor for DatastoreKey);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_1000113E4(a1, v2, &type metadata accessor for DatastoreKey, &qword_1000857F0, &type metadata accessor for DatastoreKey, &protocol conformance descriptor for DatastoreKey);
}

unint64_t sub_1000110B0(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100011584(a1, v4);
}

unint64_t sub_1000110F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000111F8(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1000112B0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 7104112;
    }

    else
    {
      v6 = 0x74736F686C6DLL;
    }

    if (a1)
    {
      v7 = 0xE300000000000000;
    }

    else
    {
      v7 = 0xE600000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 7104112 : 0x74736F686C6DLL;
      v9 = *(*(v2 + 48) + v4) ? 0xE300000000000000 : 0xE600000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1000113E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_100015730(v23, v24, v25);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_100011584(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100015778(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100009B3C(v8);
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

Swift::Int sub_10001164C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000089AC(&qword_100085818, &qword_100069198);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100011970(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000089AC(&unk_1000860C0, &unk_100069770);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100011C28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for DatastoreKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000089AC(&unk_100086070, &unk_100069720);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_100015730(&qword_100085D20, &type metadata accessor for DatastoreKey, &protocol conformance descriptor for DatastoreKey);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100012004(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000089AC(&qword_100085808, &qword_100069188);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100009B90(v24, v34);
      }

      else
      {
        sub_100009960(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100009B90(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000122E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = type metadata accessor for RemoteHandler();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000089AC(&qword_100085800, &qword_100069180);
  v47 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_100015730(&qword_100085F70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

Swift::Int sub_1000127A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1000089AC(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

Swift::Int sub_100012A90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v50 = a3(0);
  v10 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v42 - v11;
  v12 = *v5;
  sub_1000089AC(a4, a5);
  v47 = v9;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v43 = v5;
    v44 = (v10 + 16);
    v45 = v12;
    v46 = v10;
    v48 = (v10 + 32);
    v21 = result + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v46 + 72);
      v33 = v28 + v32 * v27;
      if (v47)
      {
        (*v48)(v49, v33, v50);
      }

      else
      {
        (*v44)(v49, v33, v50);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      result = (*v48)(*(v14 + 56) + v32 * v22, v49, v50);
      ++*(v14 + 16);
      v12 = v45;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v8 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v8 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
  return result;
}

unint64_t sub_100012E14(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_100012E74(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_100012EC4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for DatastoreKey();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_100012F7C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100009B90(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_100012FEC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for RemoteHandler();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_1000130E0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_100013158(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

void sub_10001320C()
{
  v1 = v0;
  sub_1000089AC(&qword_100085818, &qword_100069198);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
}

void *sub_1000133CC()
{
  v1 = v0;
  sub_1000089AC(&unk_1000860C0, &unk_100069770);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

void sub_10001354C()
{
  v1 = v0;
  v33 = type metadata accessor for DatastoreKey();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089AC(&unk_100086070, &unk_100069720);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_1000137CC()
{
  v1 = v0;
  sub_1000089AC(&qword_100085808, &qword_100069188);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100009960(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100009B90(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

char *sub_100013998()
{
  v1 = v0;
  v41 = type metadata accessor for RemoteHandler();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for UUID();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089AC(&qword_100085800, &qword_100069180);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}