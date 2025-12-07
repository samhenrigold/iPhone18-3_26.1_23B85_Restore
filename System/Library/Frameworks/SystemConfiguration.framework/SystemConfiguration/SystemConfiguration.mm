uint64_t sub_100001078()
{
  v61 = type metadata accessor for CharacterSet();
  v52 = *(v61 - 8);
  __chkstk_darwin(v61);
  v51 = &v44 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for FilePath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GetNetworkInfo(0);
  sub_100002A20(&qword_1000184A0, &qword_10000E218);
  Argument.wrappedValue.getter();
  sub_100002A20(&qword_100018498, &qword_10000E210);
  Flag.wrappedValue.getter();
  v50 = v55;
  Flag.wrappedValue.getter();
  v49 = v55;
  Flag.wrappedValue.getter();
  v48 = v55;
  Flag.wrappedValue.getter();
  v47 = v55;
  type metadata accessor for GNICollector(0);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC16get_network_info12GNICollector_gniDirectory;

  FilePath.init(_:)();
  v45 = v2;
  v46 = v1;
  (*(v2 + 16))(v4, v5 + v6, v1);
  type metadata accessor for GNISubprocessRunner(0);
  swift_allocObject();
  v7 = sub_10000C4D8(v4);
  if (!v7)
  {
LABEL_18:
    sub_100002A20(&qword_100018568, &qword_10000E950);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10000E200;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 32) = 0xD000000000000036;
    *(v33 + 40) = 0x800000010000F8A0;
    print(_:separator:terminator:)();
    goto LABEL_24;
  }

  v8 = v7;
  *(v5 + OBJC_IVAR____TtC16get_network_info12GNICollector_gnisr) = v7;

  sub_100009C0C(0xD000000000000011, 0x800000010000F8E0, 0, 0, 0, 0);
  if (!v10)
  {
    v34 = static os_log_type_t.error.getter();
    sub_10000B344(0xD00000000000001BLL, 0x800000010000F900, v34);
    exit(1);
  }

  v11 = v9;
  v12 = v10;

  v44 = v8;

  v55 = v11;
  v56 = v12;
  v13 = v51;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_100002D38();
  v14 = StringProtocol.components(separatedBy:)();
  (*(v52 + 8))(v13, v61);

  v15 = 0;
  v16 = *(v14 + 16);
  v17 = v14 + 40;
  v18 = _swiftEmptyArrayStorage;
LABEL_4:
  v19 = (v17 + 16 * v15);
  while (v16 != v15)
  {
    if (v15 >= *(v14 + 16))
    {
      __break(1u);
      goto LABEL_18;
    }

    ++v15;
    v20 = *(v19 - 1);
    v21 = *v19;
    v19 += 2;
    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v18;
      v61 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100003288(0, v18[2] + 1, 1);
        v18 = v55;
      }

      v25 = v18[2];
      v24 = v18[3];
      if (v25 >= v24 >> 1)
      {
        sub_100003288((v24 > 1), v25 + 1, 1);
        v18 = v55;
      }

      v18[2] = v25 + 1;
      v26 = &v18[2 * v25];
      v26[4] = v20;
      v26[5] = v21;
      v17 = v61;
      goto LABEL_4;
    }
  }

  *(v5 + OBJC_IVAR____TtC16get_network_info12GNICollector_interfaceList) = v18;
  v27 = v49;
  *(v5 + OBJC_IVAR____TtC16get_network_info12GNICollector__collectSystemConfigurationFiles) = v50;
  *(v5 + OBJC_IVAR____TtC16get_network_info12GNICollector__collectNDFInformation) = v27;
  v28 = v47;
  *(v5 + OBJC_IVAR____TtC16get_network_info12GNICollector__collectSensitiveInformation) = v48;
  *(v5 + OBJC_IVAR____TtC16get_network_info12GNICollector__disablePacketCapture) = v28;
  v29 = [objc_opt_self() standardUserDefaults];
  v30 = String._bridgeToObjectiveC()();
  v31 = [v29 BOOLForKey:v30];

  if ((v31 & 1) == 0)
  {
    sub_100003F00();
    swift_setDeallocating();
    (*(v45 + 8))(v5 + OBJC_IVAR____TtC16get_network_info12GNICollector_gniDirectory, v46);

    return swift_deallocClassInstance();
  }

  v59 = 32;
  v60 = 0xE100000000000000;
  result = static CommandLine.arguments.getter();
  v35 = *(result + 16);
  if (v35)
  {
    v55 = result;
    v56 = result + 32;
    v57 = 1;
    v58 = (2 * v35) | 1;
    sub_100002A20(&qword_100018578, &qword_10000E2F0);
    sub_100003798(&qword_100018580, &qword_100018578, &qword_10000E2F0, &protocol conformance descriptor for ArraySlice<A>);
    v36 = BidirectionalCollection<>.joined(separator:)();
    v38 = v37;

    v39._countAndFlagsBits = v36;
    v39._object = v38;
    String.append(_:)(v39);

    v55 = v59;
    v56 = v60;
    v53 = 0xD000000000000054;
    v54 = 0x800000010000F940;

    v53 = String.init<A>(_:)();
    v54 = v40;
    String.append<A>(contentsOf:)();

    v42 = v53;
    v41 = v54;

    LOBYTE(v41) = sub_1000096A4(v42, v41);

    if (v41)
    {
      exit(0);
    }

    sub_100002A20(&qword_100018568, &qword_10000E950);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_10000E200;
    *(v43 + 56) = &type metadata for String;
    *(v43 + 32) = 0xD00000000000006FLL;
    *(v43 + 40) = 0x800000010000F9A0;
    print(_:separator:terminator:)();
LABEL_24:

    exit(1);
  }

  __break(1u);
  return result;
}

Swift::Int sub_10000184C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000018C0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_100001904()
{
  v1 = *v0;
  v2 = 0x657269446F666E69;
  if (v1 == 3)
  {
    v2 = 0xD000000000000014;
  }

  if (v1 == 2)
  {
    v2 = 0xD00000000000001BLL;
  }

  v3 = 0xD00000000000001FLL;
  if (*v0)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000019BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100003D10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000019FC(uint64_t a1)
{
  v2 = sub_10000369C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001A38(uint64_t a1)
{
  v2 = sub_10000369C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001A74()
{
  v0 = sub_100002A20(&qword_1000185B0, &qword_10000E320);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_100002A20(&qword_1000185B8, &qword_10000E328);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v6 - 8);
  static NameSpecification.customShort(_:allowingJoined:)();
  ArgumentHelp.init(stringLiteral:)();
  v7 = type metadata accessor for ArgumentHelp();
  v8 = *(*(v7 - 8) + 56);
  v8(v5, 0, 1, v7);
  Flag<A>.init(wrappedValue:name:help:)();
  type metadata accessor for GetNetworkInfo(0);
  static NameSpecification.customShort(_:allowingJoined:)();
  ArgumentHelp.init(stringLiteral:)();
  v8(v5, 0, 1, v7);
  Flag<A>.init(wrappedValue:name:help:)();
  static NameSpecification.customShort(_:allowingJoined:)();
  ArgumentHelp.init(stringLiteral:)();
  v8(v5, 0, 1, v7);
  Flag<A>.init(wrappedValue:name:help:)();
  static NameSpecification.customShort(_:allowingJoined:)();
  ArgumentHelp.init(stringLiteral:)();
  v8(v5, 0, 1, v7);
  Flag<A>.init(wrappedValue:name:help:)();
  ArgumentHelp.init(stringLiteral:)();
  v8(v5, 0, 1, v7);
  v9 = type metadata accessor for CompletionKind();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return Argument<A>.init(help:completion:)();
}

uint64_t sub_100001E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v41 = a2;
  v43 = sub_100002A20(&qword_1000184A0, &qword_10000E218);
  v40 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v40 - v2;
  v52 = sub_100002A20(&qword_100018498, &qword_10000E210);
  v49 = *(v52 - 8);
  v3 = __chkstk_darwin(v52);
  v45 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v47 = &v40 - v6;
  v7 = __chkstk_darwin(v5);
  v48 = &v40 - v8;
  __chkstk_darwin(v7);
  v51 = &v40 - v9;
  v53 = sub_100002A20(&qword_1000185C0, &qword_10000E330);
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v57 = &v40 - v10;
  v11 = sub_100002A20(&qword_1000185B0, &qword_10000E320);
  __chkstk_darwin(v11 - 8);
  v54 = &v40 - v12;
  v13 = sub_100002A20(&qword_1000185B8, &qword_10000E328);
  __chkstk_darwin(v13 - 8);
  v15 = &v40 - v14;
  v16 = type metadata accessor for NameSpecification();
  __chkstk_darwin(v16 - 8);
  NetworkInfo = type metadata accessor for GetNetworkInfo(0);
  v18 = (NetworkInfo - 8);
  __chkstk_darwin(NetworkInfo);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static NameSpecification.customShort(_:allowingJoined:)();
  ArgumentHelp.init(stringLiteral:)();
  v21 = type metadata accessor for ArgumentHelp();
  v22 = *(*(v21 - 8) + 56);
  v22(v15, 0, 1, v21);
  Flag<A>.init(wrappedValue:name:help:)();
  v23 = v18[7];
  static NameSpecification.customShort(_:allowingJoined:)();
  ArgumentHelp.init(stringLiteral:)();
  v22(v15, 0, 1, v21);
  v46 = v23;
  Flag<A>.init(wrappedValue:name:help:)();
  v24 = v18[8];
  static NameSpecification.customShort(_:allowingJoined:)();
  ArgumentHelp.init(stringLiteral:)();
  v22(v15, 0, 1, v21);
  v44 = v24;
  Flag<A>.init(wrappedValue:name:help:)();
  v25 = v18[9];
  static NameSpecification.customShort(_:allowingJoined:)();
  ArgumentHelp.init(stringLiteral:)();
  v22(v15, 0, 1, v21);
  Flag<A>.init(wrappedValue:name:help:)();
  v26 = v18[10];
  v27 = v55;
  ArgumentHelp.init(stringLiteral:)();
  v22(v15, 0, 1, v21);
  v28 = type metadata accessor for CompletionKind();
  (*(*(v28 - 8) + 56))(v54, 1, 1, v28);
  Argument<A>.init(help:completion:)();
  sub_100003658(v27, v27[3]);
  sub_10000369C();
  v29 = v56;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v29)
  {
    v54 = v26;
    v56 = v25;
    v30 = v49;
    v62 = 0;
    sub_100003798(&qword_1000185D0, &qword_100018498, &qword_10000E210, &protocol conformance descriptor for Flag<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31 = *(v30 + 40);
    v31(v20, v51, v52);
    v61 = 1;
    v32 = v48;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31(v20 + v46, v32, v52);
    v60 = 2;
    v33 = v47;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31(v20 + v44, v33, v52);
    v59 = 3;
    v34 = v45;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31(v20 + v56, v34, v52);
    v58 = 4;
    sub_100003798(&qword_1000185D8, &qword_1000184A0, &qword_10000E218, &protocol conformance descriptor for Argument<A>);
    v37 = v42;
    v36 = v43;
    v38 = v53;
    v39 = v57;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v50 + 8))(v39, v38);
    (*(v40 + 40))(&v54[v20], v37, v36);
    sub_1000037E0(v20, v41);
  }

  sub_1000036F0(v27);
  return sub_10000373C(v20);
}

uint64_t sub_1000026C4()
{
  v0 = sub_100002A20(&qword_1000185A8, &qword_10000E318);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for NameSpecification();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for GetNetworkInfo(0);
  sub_100002CA8(&qword_100018490, type metadata accessor for GetNetworkInfo, &unk_10000E2A8);
  static ParsableCommand.main()();
  return 0;
}

uint64_t type metadata accessor for GetNetworkInfo(uint64_t a1)
{
  result = qword_100018500;
  if (!qword_100018500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002A20(&qword_100018498, &qword_10000E210);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100002A20(&qword_1000184A0, &qword_10000E218);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100002A20(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002A7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002A20(&qword_100018498, &qword_10000E210);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100002A20(&qword_1000184A0, &qword_10000E218);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 32);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100002B90(uint64_t a1)
{
  sub_100003A08(319, &qword_100018510, &type metadata for Bool, &type metadata accessor for Flag);
  if (v1 <= 0x3F)
  {
    sub_100003A08(319, &unk_100018518, &type metadata for String, &type metadata accessor for Argument);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100002CA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100002D38()
{
  result = qword_100018570;
  if (!qword_100018570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018570);
  }

  return result;
}

uint64_t sub_100002DAC(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100002E24(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002EA4@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100002EEC(void *a1, uint64_t *a2)
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

uint64_t sub_100002F78@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100002FC0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002FEC(uint64_t a1)
{
  v2 = sub_100002CA8(&qword_100018648, type metadata accessor for FileAttributeKey, &unk_10000E748);
  v3 = sub_100002CA8(&qword_100018650, type metadata accessor for FileAttributeKey, &unk_10000E43C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000030A8(uint64_t a1)
{
  v2 = sub_100002CA8(&qword_100018638, type metadata accessor for FileAttributeType, &unk_10000E5B0);
  v3 = sub_100002CA8(&qword_100018640, type metadata accessor for FileAttributeType, &unk_10000E550);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003164()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000031A0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000031F4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

char *sub_100003268(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100003310(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100003288(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100003418(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1000032A8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_1000032F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100003524(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100003310(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002A20(&qword_100018588, &qword_10000E2F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100003418(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002A20(&qword_1000185A0, &qword_10000E310);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100003524(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_100002A20(&qword_100018590, &qword_10000E300);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100002A20(&qword_100018598, &qword_10000E308);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100003658(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000369C()
{
  result = qword_1000185C8;
  if (!qword_1000185C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000185C8);
  }

  return result;
}

uint64_t sub_1000036F0(void *a1)
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

uint64_t sub_10000373C(uint64_t a1)
{
  NetworkInfo = type metadata accessor for GetNetworkInfo(0);
  (*(*(NetworkInfo - 8) + 8))(a1, NetworkInfo);
  return a1;
}

uint64_t sub_100003798(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000032A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000037E0(uint64_t a1, uint64_t a2)
{
  NetworkInfo = type metadata accessor for GetNetworkInfo(0);
  (*(*(NetworkInfo - 8) + 16))(a2, a1, NetworkInfo);
  return a2;
}

uint64_t getEnumTagSinglePayload for GetNetworkInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GetNetworkInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_100003A08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_100003BC4()
{
  result = qword_100018618;
  if (!qword_100018618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018618);
  }

  return result;
}

unint64_t sub_100003C1C()
{
  result = qword_100018620;
  if (!qword_100018620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018620);
  }

  return result;
}

unint64_t sub_100003C74()
{
  result = qword_100018628;
  if (!qword_100018628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018628);
  }

  return result;
}

uint64_t sub_100003D10(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001FLL && 0x800000010000FB70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010000FB90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010000FBB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010000FBD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657269446F666E69 && a2 == 0xED000079726F7463)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100003F00()
{
  sub_100008168();
  sub_100004F8C();
  if (*(v0 + OBJC_IVAR____TtC16get_network_info12GNICollector__collectNDFInformation) == 1)
  {
    sub_100003FA4(&off_100015340, _swiftEmptyArrayStorage);
  }

  if (*(v0 + OBJC_IVAR____TtC16get_network_info12GNICollector__collectSystemConfigurationFiles) == 1)
  {
    sub_100004334(&off_1000153B0);
  }

  result = sub_1000085BC();
  if (*(v0 + OBJC_IVAR____TtC16get_network_info12GNICollector__collectSensitiveInformation) == 1)
  {

    return sub_100003FA4(&off_100015590, _swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_100003FA4(uint64_t result, uint64_t a2)
{
  v3 = a2;
  if (!*(a2 + 16))
  {
    v3 = *(v2 + OBJC_IVAR____TtC16get_network_info12GNICollector_interfaceList);
  }

  v4 = *(result + 16);
  if (v4)
  {
    v5 = OBJC_IVAR____TtC16get_network_info12GNICollector_gnisr;
    v6 = result + 32;

    v7 = 0;
    v29 = (v3 + 40);
    v30 = v3;
    v31 = v6;
    v32 = v4;
    while (1)
    {
      v8 = v6 + 40 * v7;
      v10 = *v8;
      v9 = *(v8 + 8);
      v11 = *(v8 + 16);
      if (*(v8 + 32) == 1)
      {
        v12 = *(v3 + 16);
        if (!v12)
        {
          goto LABEL_7;
        }

        v34 = *(v8 + 24);
        v33 = v7;

        v13 = v29;
        do
        {
          v15 = *(v13 - 1);
          v14 = *v13;
          v16 = v5;
          sub_100002A20(&qword_100018778, &qword_10000E7D8);
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_10000E200;
          *(v17 + 56) = &type metadata for String;
          *(v17 + 64) = sub_1000092A4();
          *(v17 + 32) = v15;
          *(v17 + 40) = v14;
          sub_100002D38();

          v18 = StringProtocol.appendingFormat<A>(_:_:)();
          v20 = v19;

          LOBYTE(v18) = sub_100009C0C(v18, v20, v11, v34, 0, 0);

          if ((v18 & 1) == 0)
          {

            v21._countAndFlagsBits = v10;
            v21._object = v9;
            String.append(_:)(v21);
            v22._countAndFlagsBits = 39;
            v22._object = 0xE100000000000000;
            String.append(_:)(v22);
            v23 = static os_log_type_t.error.getter();
            sub_10000B344(0x203A44454C494146, 0xE900000000000027, v23);
          }

          v13 += 2;
          --v12;
          v5 = v16;
        }

        while (v12);

        v3 = v30;
      }

      else
      {
        v33 = v7;
        v24 = *(v8 + 24);

        v25 = sub_100009C0C(v10, v9, v11, v24, 0, 0);

        if (!v25)
        {

          v26._countAndFlagsBits = v10;
          v26._object = v9;
          String.append(_:)(v26);

          v27._countAndFlagsBits = 39;
          v27._object = 0xE100000000000000;
          String.append(_:)(v27);
          v28 = static os_log_type_t.error.getter();
          sub_10000B344(0x203A44454C494146, 0xE900000000000027, v28);
        }
      }

      v6 = v31;
      v4 = v32;

      v7 = v33;
LABEL_7:
      if (++v7 == v4)
      {
      }
    }
  }

  return result;
}

uint64_t sub_100004334(uint64_t a1)
{
  v2 = sub_100002A20(&qword_100018768, &qword_10000E7C8);
  __chkstk_darwin(v2 - 8);
  v107 = v104 - v3;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v104 - v9;
  v11 = sub_100002A20(&qword_100018770, &qword_10000E7D0);
  __chkstk_darwin(v11 - 8);
  v116 = v104 - v12;
  v124 = type metadata accessor for FilePath();
  v13 = *(v124 - 8);
  v14 = __chkstk_darwin(v124);
  v118 = v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v117 = v104 - v17;
  v18 = __chkstk_darwin(v16);
  v115 = v104 - v19;
  v20 = __chkstk_darwin(v18);
  v114 = v104 - v21;
  result = __chkstk_darwin(v20);
  v113 = v104 - v23;
  v24 = *(a1 + 16);
  if (v24)
  {
    v129 = objc_opt_self();
    v125 = OBJC_IVAR____TtC16get_network_info12GNICollector_gnisr;
    v122 = "_disablePacketCapture";
    v123 = OBJC_IVAR____TtC16get_network_info12GNICollector_gniDirectory;
    v120 = (v13 + 8);
    v121 = (v13 + 16);
    v112 = NSFileType;
    v106 = (v5 + 56);
    v105 = (v5 + 8);
    v111 = NSFileTypeSymbolicLink;
    v25 = (a1 + 56);
    v119 = xmmword_10000E200;
    v110 = v4;
    v109 = v8;
    v108 = v10;
    do
    {
      v32 = *(v25 - 3);
      v31 = *(v25 - 2);
      v33 = *v25;

      v34 = [v129 defaultManager];
      v35 = String._bridgeToObjectiveC()();
      v36 = [v34 fileExistsAtPath:v35];

      if (v36)
      {
        v127 = v32;
        v128 = v31;
        v37 = *v121;
        if (v33)
        {
          v38 = v124;
          v37(v118, v126 + v123, v124);
          v39 = v117;
          FilePath.appending(_:)();
          v40 = FilePath.description.getter();
          v42 = v41;
          (*v120)(v39, v38);
        }

        else
        {
          v43 = v124;
          v37(v114, v126 + v123, v124);

          v44 = v115;
          FilePath.init(_:)();
          v45 = v116;
          FilePath.lastComponent.getter();
          v46 = *v120;
          (*v120)(v44, v43);
          v47 = type metadata accessor for FilePath.Component();
          if ((*(*(v47 - 8) + 48))(v45, 1, v47) == 1)
          {
            __break(1u);
          }

          v48 = v113;
          FilePath.appending(_:)();
          v49 = FilePath.description.getter();
          v42 = v50;
          v51 = v48;
          v40 = v49;
          v46(v51, v43);
        }

        v52 = [v129 defaultManager];
        v53 = v127;
        v54 = String._bridgeToObjectiveC()();
        v131 = 0;
        v55 = [v52 attributesOfItemAtPath:v54 error:&v131];

        v56 = v131;
        if (v55)
        {
          type metadata accessor for FileAttributeKey(0);
          sub_10000965C(&qword_100018648, type metadata accessor for FileAttributeKey, &unk_10000E748);
          v57 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
          v58 = v56;

          if (*(v57 + 16) && (v59 = sub_1000092F8(v112), (v60 & 1) != 0))
          {
            sub_10000938C(*(v57 + 56) + 32 * v59, &v131);

            type metadata accessor for FileAttributeType(0);
            if (swift_dynamicCast())
            {
              v61 = v130;
              v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v64 = v63;
              if (v62 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v64 == v65)
              {

LABEL_26:
                v83 = [v129 defaultManager];
                v84 = String._bridgeToObjectiveC()();
                v131 = 0;
                v85 = [v83 destinationOfSymbolicLinkAtPath:v84 error:&v131];

                v86 = v131;
                if (!v85)
                {
                  v100 = v131;

                  _convertNSErrorToError(_:)();

                  swift_willThrow();

                  goto LABEL_5;
                }

                v104[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v87 = v86;

                v88 = v107;
                URL.init(fileURLWithPath:)();
                (*v106)(v88, 0, 1, v110);
                URL.init(fileURLWithPath:relativeTo:)();

                sub_1000095C8(v88, &qword_100018768, &qword_10000E7C8);
                URL.init(fileURLWithPath:)();
                v89 = [v129 defaultManager];
                URL._bridgeToObjectiveC()(v90);
                v92 = v91;
                URL._bridgeToObjectiveC()(v93);
                v95 = v94;
                v131 = 0;
                v96 = [v89 copyItemAtURL:v92 toURL:v94 error:&v131];

                if (v96)
                {
                  v97 = v131;

                  v98 = *v105;
                  v99 = v110;
                  (*v105)(v109, v110);
                  result = (v98)(v108, v99);
                  goto LABEL_5;
                }

                v101 = v131;
                _convertNSErrorToError(_:)();

                swift_willThrow();
                v102 = *v105;
                v103 = v110;
                (*v105)(v109, v110);
                v102(v108, v103);
LABEL_24:
                v131 = 0;
                v132 = 0xE000000000000000;

                _StringGuts.grow(_:)(34);
                v73._countAndFlagsBits = 0x203A44454C494146;
                v73._object = 0xEC00000020706327;
                String.append(_:)(v73);
                v74._countAndFlagsBits = v53;
                v74._object = v128;
                String.append(_:)(v74);

                v75._countAndFlagsBits = 32;
                v75._object = 0xE100000000000000;
                String.append(_:)(v75);
                v76._countAndFlagsBits = v40;
                v76._object = v42;
                String.append(_:)(v76);

                v77._countAndFlagsBits = 0x6520687469772027;
                v77._object = 0xEE002720726F7272;
                String.append(_:)(v77);
                swift_getErrorValue();
                DefaultStringInterpolation.appendInterpolation<A>(_:)();
                v78._countAndFlagsBits = 39;
                v78._object = 0xE100000000000000;
                String.append(_:)(v78);
                v79 = v131;
                v80 = v132;
                v81 = static os_log_type_t.error.getter();
                sub_10000B344(v79, v80, v81);

                goto LABEL_5;
              }

              v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v82)
              {
                goto LABEL_26;
              }
            }
          }

          else
          {
          }
        }

        else
        {
          v66 = v131;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }

        v67 = [v129 defaultManager];
        v68 = String._bridgeToObjectiveC()();
        v69 = String._bridgeToObjectiveC()();
        v131 = 0;
        v70 = [v67 copyItemAtPath:v68 toPath:v69 error:&v131];

        if (!v70)
        {
          v72 = v131;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v53 = v127;
          goto LABEL_24;
        }

        v71 = v131;
      }

      else
      {

        sub_100002A20(&qword_100018778, &qword_10000E7D8);
        v26 = swift_allocObject();
        *(v26 + 16) = v119;
        *(v26 + 56) = &type metadata for String;
        *(v26 + 64) = sub_1000092A4();
        *(v26 + 32) = v32;
        *(v26 + 40) = v31;

        v27 = String.init(format:_:)();
        v29 = v28;
        v30 = static os_log_type_t.info.getter();
        sub_10000B344(v27, v29, v30);
      }

LABEL_5:
      v25 += 4;
      --v24;
    }

    while (v24);
  }

  return result;
}

uint64_t sub_100004F8C()
{
  v1 = v0;
  v114 = sub_100002A20(&qword_100018788, &qword_10000E7E0);
  v108 = *(v114 - 8);
  __chkstk_darwin(v114);
  v113 = &v105 - v2;
  v3 = type metadata accessor for String.Encoding();
  v110 = *(v3 - 8);
  v111 = v3;
  v4 = __chkstk_darwin(v3);
  v109 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v115 = &v105 - v6;
  v7 = type metadata accessor for FilePath();
  v118 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v116 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v117 = &v105 - v10;
  v11 = type metadata accessor for CharacterSet();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v122 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003FA4(&off_1000149E8, _swiftEmptyArrayStorage);
  v14 = *(v0 + OBJC_IVAR____TtC16get_network_info12GNICollector_interfaceList);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = (v14 + 40);
    while (v16 < *(v14 + 16))
    {
      ++v16;
      v18 = *v17;
      v124 = *(v17 - 1);
      v125 = v18;

      sub_100005DB4(&v124, v1);

      v17 += 2;
      if (v15 == v16)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }

LABEL_5:
  v123 = v7;
  v19 = OBJC_IVAR____TtC16get_network_info12GNICollector_gnisr;

  sub_100009C0C(0xD00000000000001CLL, 0x800000010000FE70, 0, 0, 0, 0);
  v21 = v20;
  v23 = v22;

  v119 = v12;
  v120 = v11;
  v121 = v19;
  if (v23)
  {
    v124 = v21;
    v125 = v23;
    v24 = v122;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_100002D38();
    v25 = StringProtocol.components(separatedBy:)();
    (*(v12 + 8))(v24, v11);

    v26 = 0;
    v27 = *(v25 + 16);
    v28 = (v25 + 40);
    v29 = _swiftEmptyArrayStorage;
LABEL_7:
    v30 = &v28[16 * v26];
    while (v27 != v26)
    {
      if (v26 >= *(v25 + 16))
      {
        goto LABEL_55;
      }

      ++v26;
      v31 = *(v30 - 1);
      v32 = *v30;
      v30 += 16;
      v33 = HIBYTE(v32) & 0xF;
      if ((v32 & 0x2000000000000000) == 0)
      {
        v33 = v31 & 0xFFFFFFFFFFFFLL;
      }

      if (v33)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v124 = v29;
        v112 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100003288(0, v29[2] + 1, 1);
          v29 = v124;
        }

        v36 = v29[2];
        v35 = v29[3];
        v37 = v36 + 1;
        if (v36 >= v35 >> 1)
        {
          sub_100003288((v35 > 1), v36 + 1, 1);
          v37 = v36 + 1;
          v29 = v124;
        }

        v29[2] = v37;
        v38 = &v29[2 * v36];
        v38[4] = v31;
        v38[5] = v32;
        v28 = v112;
        goto LABEL_7;
      }
    }

    sub_100003FA4(&off_100015250, v29);

    sub_1000095C8(&unk_100015270, &qword_1000187C0, &qword_10000E800);
    v12 = v119;
    v11 = v120;
  }

  else
  {

    v39 = static os_log_type_t.error.getter();
    sub_10000B344(0xD000000000000029, 0x800000010000FE90, v39);
  }

  sub_100009C0C(0xD000000000000019, 0x800000010000FEC0, 0, 0, 0x6C756E2F7665642FLL, 0xE90000000000006CLL);
  v41 = v40;
  v43 = v42;

  if (v43)
  {
    v124 = v41;
    v125 = v43;
    v44 = v122;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_100002D38();
    v45 = StringProtocol.components(separatedBy:)();
    (*(v12 + 8))(v44, v11);

    v46 = 0;
    v47 = *(v45 + 16);
    v48 = (v45 + 40);
    v49 = _swiftEmptyArrayStorage;
LABEL_22:
    v50 = v123;
    v51 = &v48[16 * v46];
    while (v47 != v46)
    {
      if (v46 >= *(v45 + 16))
      {
        goto LABEL_56;
      }

      ++v46;
      v52 = *(v51 - 1);
      v53 = *v51;
      v51 += 16;
      v54 = HIBYTE(v53) & 0xF;
      if ((v53 & 0x2000000000000000) == 0)
      {
        v54 = v52 & 0xFFFFFFFFFFFFLL;
      }

      if (v54)
      {

        v55 = swift_isUniquelyReferenced_nonNull_native();
        v124 = v49;
        if ((v55 & 1) == 0)
        {
          sub_100003288(0, v49[2] + 1, 1);
          v49 = v124;
        }

        v57 = v49[2];
        v56 = v49[3];
        v58 = v57 + 1;
        if (v57 >= v56 >> 1)
        {
          v112 = v48;
          sub_100003288((v56 > 1), v57 + 1, 1);
          v58 = v57 + 1;
          v48 = v112;
          v49 = v124;
        }

        v49[2] = v58;
        v59 = &v49[2 * v57];
        v59[4] = v52;
        v59[5] = v53;
        goto LABEL_22;
      }
    }

    sub_100003FA4(&off_100015298, v49);

    sub_1000095C8(&unk_1000152B8, &qword_1000187C0, &qword_10000E800);
  }

  else
  {

    v60 = static os_log_type_t.error.getter();
    sub_10000B344(0xD000000000000026, 0x800000010000FEE0, v60);

    v50 = v123;
  }

  v61 = sub_100009C0C(0xD000000000000013, 0x800000010000FF30, 0xD000000000000017, 0x800000010000FF10, 0, 0);

  v62 = &GNICollector;
  if (v61)
  {
    v63 = v118;
    v64 = *(v118 + 16);
    v107 = OBJC_IVAR____TtC16get_network_info12GNICollector_gniDirectory;
    v65 = v50;
    v66 = v116;
    v112 = v64;
    (v64)(v116, v1 + OBJC_IVAR____TtC16get_network_info12GNICollector_gniDirectory, v65);
    v67 = v117;
    FilePath.appending(_:)();
    v68 = FilePath.description.getter();
    v70 = v69;
    v106 = *(v63 + 8);
    v106(v67, v65);
    static String.Encoding.utf8.getter();
    v118 = v68;
    v121 = v70;
    v71 = String.init(contentsOfFile:encoding:)();
    v73 = v72;
    (v112)(v66, v1 + v107, v65);
    FilePath.appending(_:)();
    FilePath.description.getter();
    v106(v67, v65);
    v74 = String._bridgeToObjectiveC()();
    v75 = [objc_opt_self() fileHandleForUpdatingAtPath:v74];

    if (v75)
    {
      [v75 seekToEndOfFile];
      sub_100002A20(&qword_100018798, &qword_10000E7F0);
      sub_100003798(&qword_1000187A0, &qword_100018788, &qword_10000E7E0, &protocol conformance descriptor for Regex<A>);
      v76 = v113;
      Regex.init<A>(_:)();
      v124 = v71;
      v125 = v73;
      v77 = v122;
      static CharacterSet.newlines.getter();
      sub_100002D38();
      v78 = StringProtocol.components(separatedBy:)();
      v79 = (*(v119 + 8))(v77, v120);
      __chkstk_darwin(v79);
      *(&v105 - 2) = v76;
      v80 = sub_100006B00(sub_1000094EC, (&v105 - 4), v78);

      v124 = v80;
      sub_100002A20(&qword_1000187A8, &qword_10000E7F8);
      sub_100003798(&qword_1000187B0, &qword_1000187A8, &qword_10000E7F8, &protocol conformance descriptor for [A]);
      BidirectionalCollection<>.joined(separator:)();
      v81 = v109;
      static String.Encoding.utf8.getter();
      v82 = String.data(using:allowLossyConversion:)();
      v84 = v83;

      result = (*(v110 + 8))(v81, v111);
      if (v84 >> 60 == 15)
      {
        __break(1u);
        return result;
      }

      v124 = v82;
      v125 = v84;
      sub_100009520();
      NSFileHandle.write<A>(contentsOf:)();
      v62 = &GNICollector;
      sub_100009574(v124, v125);
      v124 = 0;
      if ([v75 closeAndReturnError:&v124])
      {
        v86 = v124;
      }

      else
      {
        v87 = v124;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      (*(v108 + 8))(v113, v114);
    }

    else
    {

      v62 = &GNICollector;
    }

    v88 = [objc_opt_self() *&v62[11].ivar_base_size];
    v89 = String._bridgeToObjectiveC()();

    v124 = 0;
    v90 = [v88 removeItemAtPath:v89 error:&v124];

    if (v90)
    {
      v91 = v124;
    }

    else
    {
      v92 = v124;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  v93 = [objc_opt_self() *&v62[11].ivar_base_size];
  v94 = String._bridgeToObjectiveC()();
  v124 = 0;
  v95 = [v93 contentsOfDirectoryAtPath:v94 error:&v124];

  v96 = v124;
  if (v95)
  {
    v97 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v96;

    v99 = *(v97 + 16);
    if (v99)
    {
      v100 = 0;
      v101 = (v97 + 40);
      while (v100 < *(v97 + 16))
      {
        ++v100;
        v102 = *v101;
        v124 = *(v101 - 1);
        v125 = v102;

        sub_100006C28(&v124, v1);

        v101 += 2;
        if (v99 == v100)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_57;
    }

LABEL_51:
  }

  else
  {
    v103 = v124;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v104 = sub_10000801C(&off_1000152E0);
  sub_100002A20(&qword_100018790, &qword_10000E7E8);
  swift_arrayDestroy();
  sub_100004334(v104);
}

uint64_t sub_100005DB4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  sub_100002A20(&qword_100018778, &qword_10000E7D8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10000E200;
  *(v4 + 56) = &type metadata for String;
  v21 = sub_1000092A4();
  *(v4 + 64) = v21;
  v22 = v2;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;

  v5 = String.init(format:_:)();
  v7 = v6;

  sub_100009C0C(v5, v7, 0, 0, 0, 0);
  v9 = v8;

  if (v9)
  {

    sub_100002D38();
    if (StringProtocol.contains<A>(_:)())
    {
      sub_100002A20(&qword_100018828, &qword_10000E890);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10000E200;
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_10000E200;
      *(v11 + 56) = &type metadata for String;
      *(v11 + 64) = v21;
      *(v11 + 32) = v22;
      *(v11 + 40) = v3;

      *(inited + 32) = String.init(format:_:)();
      *(inited + 40) = v12;
      *(inited + 48) = xmmword_10000E790;
      *(inited + 64) = 0;
      sub_100003FA4(inited, &_swiftEmptyArrayStorage);
      swift_setDeallocating();
      sub_1000095C8(inited + 32, &qword_1000187C0, &qword_10000E800);
    }

    v13 = StringProtocol.contains<A>(_:)();

    if (v13)
    {
      sub_100002A20(&qword_100018828, &qword_10000E890);
      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_10000E200;
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10000E200;
      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = v21;
      *(v16 + 32) = v22;
      *(v16 + 40) = v3;

      *(v15 + 32) = String.init(format:_:)();
      *(v15 + 40) = v17;
      *(v15 + 48) = xmmword_10000E790;
      *(v15 + 64) = 0;
      sub_100003FA4(v15, &_swiftEmptyArrayStorage);
      swift_setDeallocating();
      return sub_1000095C8(v15 + 32, &qword_1000187C0, &qword_10000E800);
    }
  }

  else
  {

    v18._countAndFlagsBits = v5;
    v18._object = v7;
    String.append(_:)(v18);

    v19._countAndFlagsBits = 39;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20 = static os_log_type_t.error.getter();
    sub_10000B344(0x203A44454C494146, 0xE900000000000027, v20);
  }

  return result;
}

uint64_t sub_100006194(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 40;
    do
    {
      swift_bridgeObjectRetain_n();
      v4._countAndFlagsBits = String.init<A>(_:)();
      v4._object = v3;
      String.append<A>(contentsOf:)();
      String.append(_:)(v4);

      v2 += 16;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_10000627C@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v56 = sub_100002A20(&qword_1000187D8, &qword_10000E858);
  v58 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = v46 - v1;
  v2 = sub_100002A20(&qword_1000187E0, &qword_10000E860);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v46 - v8;
  __chkstk_darwin(v7);
  v60 = v46 - v10;
  v63 = sub_100002A20(&qword_1000187E8, &qword_10000E868);
  v68 = *(v63 - 8);
  v11 = __chkstk_darwin(v63);
  v53 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v46 - v13;
  v15 = type metadata accessor for _RegexFactory();
  v50 = v15;
  v65 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100002A20(&qword_1000187F0, &qword_10000E870);
  v69 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v54 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v66 = v46 - v22;
  __chkstk_darwin(v21);
  v67 = v46 - v23;
  makeFactory()();
  v49 = v6;
  Regex.init(_regexString:version:)();
  v64 = &protocol conformance descriptor for Regex<A>;
  sub_100003798(&qword_1000187F8, &qword_1000187E0, &qword_10000E860, &protocol conformance descriptor for Regex<A>);
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v24 = v3 + 8;
  v25 = *(v3 + 8);
  v25(v6, v2);
  v26 = v60;
  v48 = v9;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  v25(v9, v2);
  v46[1] = v24;
  sub_100002A20(&qword_100018800, &qword_10000E878);
  _RegexFactory.capture<A, B>(_:)();
  v25(v26, v2);
  v27 = *(v65 + 8);
  v65 += 8;
  v51 = v27;
  v27(v17, v15);
  v28 = v66;
  v61 = v14;
  Capture.init(_:)();
  v59 = sub_100003798(&qword_100018808, &qword_1000187F0, &qword_10000E870, &protocol conformance descriptor for Capture<A>);
  v47 = v18;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v29 = *(v69 + 8);
  v69 += 8;
  v62 = v29;
  v29(v28, v18);
  v30 = v53;
  Regex.init(_regexString:version:)();
  sub_100003798(&qword_100018810, &qword_1000187E8, &qword_10000E868, v64);
  v31 = v63;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v52 = *(v68 + 8);
  v68 += 8;
  v52(v30, v31);
  makeFactory()();
  v32 = v49;
  Regex.init(_regexString:version:)();
  v33 = v48;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v25(v32, v2);
  v34 = v60;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  v25(v33, v2);
  _RegexFactory.capture<A, B>(_:)();
  v25(v34, v2);
  v35 = v50;
  v36 = v51;
  v51(v17, v50);
  v37 = v54;
  Capture.init(_:)();
  v38 = v47;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v62(v37, v38);
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  makeFactory()();
  sub_100002A20(&qword_100018818, &unk_10000E880);
  v39 = v55;
  v40 = v63;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v36(v17, v35);
  makeFactory()();
  sub_100002A20(&qword_100018798, &qword_10000E7F0);
  sub_100003798(&qword_100018820, &qword_1000187D8, &qword_10000E858, v64);
  v41 = v66;
  v42 = v56;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v36(v17, v35);
  (*(v58 + 8))(v39, v42);
  v43 = v52;
  v52(v30, v40);
  v44 = v62;
  v62(v41, v38);
  v43(v61, v40);
  return v44(v67, v38);
}

unint64_t *sub_100006B00(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = &_swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v19 = &_swiftEmptyArrayStorage;
  sub_100003288(0, v5, 0);
  v6 = &_swiftEmptyArrayStorage;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v17[0] = *(i - 1);
    v17[1] = v9;

    a1(v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v18[0];
    v10 = v18[1];
    v19 = v6;
    v13 = v6[2];
    v12 = v6[3];
    if (v13 >= v12 >> 1)
    {
      sub_100003288((v12 > 1), v13 + 1, 1);
      v6 = v19;
    }

    v6[2] = v13 + 1;
    v14 = &v6[2 * v13];
    v14[4] = v11;
    v14[5] = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100006C28(uint64_t *a1, uint64_t (*a2)(char *, uint64_t))
{
  v48 = a2;
  v3 = type metadata accessor for CharacterSet();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100002A20(&qword_100018788, &qword_10000E7E0);
  v43 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = v40 - v5;
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v40 - v11;
  v51 = type metadata accessor for String.Encoding();
  v47 = *(v51 - 8);
  v13 = __chkstk_darwin(v51);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16._countAndFlagsBits = 0x666E6F632ELL;
  v16._object = 0xE500000000000000;
  result = String.hasSuffix(_:)(v16);
  if ((result & 1) == 0)
  {
    return result;
  }

  static String.Encoding.utf8.getter();
  v18 = String.init(contentsOfFile:encoding:)();
  if (v2)
  {
  }

  v42 = v18;
  v20 = v19;
  (*(v7 + 16))(v10, v48 + OBJC_IVAR____TtC16get_network_info12GNICollector_gniDirectory, v6);
  FilePath.appending(_:)();
  FilePath.description.getter();
  v22 = v21;
  (*(v7 + 8))(v12, v6);
  v23 = String._bridgeToObjectiveC()();
  v24 = [objc_opt_self() fileHandleForUpdatingAtPath:v23];

  if (!v24)
  {
  }

  [v24 seekToEndOfFile];
  static String.Encoding.utf8.getter();
  v25 = String.data(using:allowLossyConversion:)();
  v27 = v26;
  v28 = *(v47 + 8);
  result = v28(v15, v51);
  if (v27 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v52 = v25;
  v53 = v27;
  v47 = sub_100009520();
  NSFileHandle.write<A>(contentsOf:)();
  v40[1] = v22;
  v41 = v24;
  v48 = v28;
  sub_100009574(v52, v53);
  sub_100002A20(&qword_100018798, &qword_10000E7F0);
  sub_100003798(&qword_1000187A0, &qword_100018788, &qword_10000E7E0, &protocol conformance descriptor for Regex<A>);
  v29 = v49;
  Regex.init<A>(_:)();
  v52 = v42;
  v53 = v20;
  v30 = v44;
  static CharacterSet.newlines.getter();
  sub_100002D38();
  v31 = StringProtocol.components(separatedBy:)();
  v32 = (*(v45 + 8))(v30, v46);
  __chkstk_darwin(v32);
  v40[-2] = v29;
  v33 = sub_100006B00(sub_100009628, &v40[-4], v31);

  v52 = v33;
  sub_100002A20(&qword_1000187A8, &qword_10000E7F8);
  sub_100003798(&qword_1000187B0, &qword_1000187A8, &qword_10000E7F8, &protocol conformance descriptor for [A]);
  BidirectionalCollection<>.joined(separator:)();
  static String.Encoding.utf8.getter();
  v34 = String.data(using:allowLossyConversion:)();
  v36 = v35;

  result = v48(v15, v51);
  if (v36 >> 60 == 15)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v52 = v34;
  v53 = v36;
  v37 = v41;
  NSFileHandle.write<A>(contentsOf:)();
  sub_100009574(v52, v53);
  v52 = 0;
  if ([v37 closeAndReturnError:&v52])
  {
    v38 = v52;
  }

  else
  {
    v39 = v52;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return (*(v43 + 8))(v49, v50);
}

uint64_t sub_10000736C@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v56 = sub_100002A20(&qword_1000187D8, &qword_10000E858);
  v58 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = v46 - v1;
  v2 = sub_100002A20(&qword_1000187E0, &qword_10000E860);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v46 - v8;
  __chkstk_darwin(v7);
  v60 = v46 - v10;
  v63 = sub_100002A20(&qword_1000187E8, &qword_10000E868);
  v68 = *(v63 - 8);
  v11 = __chkstk_darwin(v63);
  v53 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v46 - v13;
  v15 = type metadata accessor for _RegexFactory();
  v50 = v15;
  v65 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100002A20(&qword_1000187F0, &qword_10000E870);
  v69 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v54 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v66 = v46 - v22;
  __chkstk_darwin(v21);
  v67 = v46 - v23;
  makeFactory()();
  v49 = v6;
  Regex.init(_regexString:version:)();
  v64 = &protocol conformance descriptor for Regex<A>;
  sub_100003798(&qword_1000187F8, &qword_1000187E0, &qword_10000E860, &protocol conformance descriptor for Regex<A>);
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v24 = v3 + 8;
  v25 = *(v3 + 8);
  v25(v6, v2);
  v26 = v60;
  v48 = v9;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  v25(v9, v2);
  v46[1] = v24;
  sub_100002A20(&qword_100018800, &qword_10000E878);
  _RegexFactory.capture<A, B>(_:)();
  v25(v26, v2);
  v27 = *(v65 + 8);
  v65 += 8;
  v51 = v27;
  v27(v17, v15);
  v28 = v66;
  v61 = v14;
  Capture.init(_:)();
  v59 = sub_100003798(&qword_100018808, &qword_1000187F0, &qword_10000E870, &protocol conformance descriptor for Capture<A>);
  v47 = v18;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v29 = *(v69 + 8);
  v69 += 8;
  v62 = v29;
  v29(v28, v18);
  v30 = v53;
  Regex.init(_regexString:version:)();
  sub_100003798(&qword_100018810, &qword_1000187E8, &qword_10000E868, v64);
  v31 = v63;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v52 = *(v68 + 8);
  v68 += 8;
  v52(v30, v31);
  makeFactory()();
  v32 = v49;
  Regex.init(_regexString:version:)();
  v33 = v48;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v25(v32, v2);
  v34 = v60;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  v25(v33, v2);
  _RegexFactory.capture<A, B>(_:)();
  v25(v34, v2);
  v35 = v50;
  v36 = v51;
  v51(v17, v50);
  v37 = v54;
  Capture.init(_:)();
  v38 = v47;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v62(v37, v38);
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  makeFactory()();
  sub_100002A20(&qword_100018818, &unk_10000E880);
  v39 = v55;
  v40 = v63;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v36(v17, v35);
  makeFactory()();
  sub_100002A20(&qword_100018798, &qword_10000E7F0);
  sub_100003798(&qword_100018820, &qword_1000187D8, &qword_10000E858, v64);
  v41 = v66;
  v42 = v56;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v36(v17, v35);
  (*(v58 + 8))(v39, v42);
  v43 = v52;
  v52(v30, v40);
  v44 = v62;
  v62(v41, v38);
  v43(v61, v40);
  return v44(v67, v38);
}

uint64_t sub_100007BF4@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v34 = a2;
  v39 = a3;
  v4 = sub_100002A20(&qword_100018788, &qword_10000E7E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  v8 = sub_100002A20(&qword_1000187C8, &qword_10000E808);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - v9;
  v11 = sub_100002A20(&qword_1000187D0, &qword_10000E810);
  v35 = *(v11 - 8);
  v36 = v11;
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v15 = *a1;
  v14 = a1[1];
  sub_100003798(&qword_1000187A0, &qword_100018788, &qword_10000E7E0, &protocol conformance descriptor for Regex<A>);
  dispatch thunk of RegexComponent.regex.getter();
  v16 = String.subscript.getter();
  v17 = v33;
  v34(v16);
  if (v17)
  {

    (*(v5 + 8))(v7, v4);
    (*(v35 + 56))(v10, 1, 1, v36);
LABEL_4:
    sub_1000095C8(v10, &qword_1000187C8, &qword_10000E808);
    v20 = v39;
    *v39 = v15;
    v20[1] = v14;
  }

  (*(v5 + 8))(v7, v4);

  v19 = v35;
  v18 = v36;
  if ((*(v35 + 48))(v10, 1, v36) == 1)
  {
    goto LABEL_4;
  }

  (*(v19 + 32))(v13, v10, v18);
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v22 = static String._fromSubstring(_:)();
  v24 = v23;

  v37 = v22;
  v38 = v24;
  v25._countAndFlagsBits = 0x657463616465725BLL;
  v25._object = 0xEA00000000005D64;
  String.append(_:)(v25);
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v26 = static String._fromSubstring(_:)();
  v28 = v27;

  v29._countAndFlagsBits = v26;
  v29._object = v28;
  String.append(_:)(v29);

  v30 = v37;
  v31 = v38;
  result = (*(v19 + 8))(v13, v18);
  v32 = v39;
  *v39 = v30;
  v32[1] = v31;
  return result;
}

unint64_t *sub_10000801C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000032F0(0, v1, 0);
    v3 = a1 + 56;
    do
    {

      sub_100002A20(&qword_100018790, &qword_10000E7E8);
      sub_100002A20(&qword_100018598, &qword_10000E308);
      swift_dynamicCast();
      v4 = v11;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000032F0((v5 > 1), v6 + 1, 1);
        v4 = v11;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      v7 = &_swiftEmptyArrayStorage[4 * v6];
      *(v7 + 4) = v9;
      *(v7 + 5) = v10;
      *(v7 + 3) = v4;
      v3 += 32;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100008168()
{
  v1 = v0;
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC16get_network_info12GNICollector__collectSensitiveInformation) == 1 && (*(v0 + OBJC_IVAR____TtC16get_network_info12GNICollector__disablePacketCapture) & 1) == 0)
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v7._countAndFlagsBits = 0xD00000000000001ELL;
    v34 = "/usr/sbin/netstat -qq -I %@";
    v7._object = 0x8000000100010040;
    String.append(_:)(v7);
    v8 = *(v3 + 16);
    v31 = OBJC_IVAR____TtC16get_network_info12GNICollector_gniDirectory;
    v32 = v8;
    v33 = v3 + 16;
    v8(v6, v0 + OBJC_IVAR____TtC16get_network_info12GNICollector_gniDirectory, v2);
    v30[1] = sub_10000965C(&qword_100018830, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v30[0] = *(v3 + 8);
    (v30[0])(v6, v2);
    v10._object = 0x8000000100010060;
    v10._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v10);
    v12 = v35;
    v11 = v36;

    v13 = sub_100009C0C(v12, v11, 0x6C756E2F7665642FLL, 0xE90000000000006CLL, 0, 0);

    if (!v13)
    {
      v35 = 0x203A44454C494146;
      v36 = 0xE900000000000027;

      v14._countAndFlagsBits = v12;
      v14._object = v11;
      String.append(_:)(v14);

      v15._countAndFlagsBits = 39;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      v16 = v35;
      v17 = v36;
      v18 = static os_log_type_t.error.getter();
      sub_10000B344(v16, v17, v18);
    }

    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v19._countAndFlagsBits = 0xD00000000000001ELL;
    v19._object = (v34 | 0x8000000000000000);
    String.append(_:)(v19);
    v32(v6, v1 + v31, v2);
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    (v30[0])(v6, v2);
    v21._object = 0x8000000100010080;
    v21._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v21);
    v23 = v35;
    v22 = v36;

    v24 = sub_100009C0C(v23, v22, 0x6C756E2F7665642FLL, 0xE90000000000006CLL, 0, 0);

    if (!v24)
    {
      v35 = 0x203A44454C494146;
      v36 = 0xE900000000000027;

      v25._countAndFlagsBits = v23;
      v25._object = v22;
      String.append(_:)(v25);

      v26._countAndFlagsBits = 39;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      v27 = v35;
      v28 = v36;
      v29 = static os_log_type_t.error.getter();
      sub_10000B344(v27, v28, v29);
    }
  }

  return result;
}

uint64_t sub_1000085BC()
{
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 fileExistsAtPath:v2];

  if (v3)
  {
    strcpy(v48, "/etc/resolver");
    HIWORD(v48[1]) = -4864;
    v46 = String.init<A>(_:)();
    v47 = v4;
    String.append<A>(contentsOf:)();
    v6 = v46;
    v5 = v47;
    v7 = "LPS-resolver.tar";
  }

  else
  {
    v8 = [v0 defaultManager];
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 fileExistsAtPath:v9];

    if (!v10)
    {
      goto LABEL_8;
    }

    v48[0] = 0xD000000000000031;
    v48[1] = 0x800000010000FD20;
    v46 = String.init<A>(_:)();
    v47 = v11;
    String.append<A>(contentsOf:)();
    v6 = v46;
    v5 = v47;
    v7 = "/usr/bin/tar -c -H";
  }

  v12 = sub_100009C0C(v6, v5, 0xD000000000000010, v7 | 0x8000000000000000, 0x6C756E2F7665642FLL, 0xE90000000000006CLL);

  if (!v12)
  {
    strcpy(v48, "FAILED: ");
    BYTE1(v48[1]) = 0;
    WORD1(v48[1]) = 0;
    HIDWORD(v48[1]) = -402653184;

    v13._countAndFlagsBits = v6;
    v13._object = v5;
    String.append(_:)(v13);

    v14 = static os_log_type_t.error.getter();
    sub_10000B344(v48[0], v48[1], v14);
  }

LABEL_8:
  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  v15 = [v0 defaultManager];
  v16 = String._bridgeToObjectiveC()();
  v46 = 0;
  v17 = [v15 contentsOfDirectoryAtPath:v16 error:&v46];

  v18 = v46;
  if (v17)
  {
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v18;

    v21 = *(v19 + 16);
    if (v21)
    {
      v22 = 0;
      v23 = (v19 + 40);
      do
      {
        if (v22 >= *(v19 + 16))
        {
          __break(1u);
        }

        v24 = *(v23 - 1);
        v25 = *v23;
        v46 = v24;
        v47 = v25;

        if (sub_100008C70(&v46))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100003288(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v27 = _swiftEmptyArrayStorage[2];
          v26 = _swiftEmptyArrayStorage[3];
          if (v27 >= v26 >> 1)
          {
            sub_100003288((v26 > 1), v27 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v27 + 1;
          v28 = &_swiftEmptyArrayStorage[2 * v27];
          v28[4] = v24;
          v28[5] = v25;
        }

        else
        {
        }

        ++v22;
        v23 += 2;
      }

      while (v21 != v22);
    }

    sub_100006194(_swiftEmptyArrayStorage);

    v31 = v48[1];
    v30 = v48[0] & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v29 = v46;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v30 = 0;
    v31 = 0xE000000000000000;
  }

  if ((v31 & 0x2000000000000000) != 0)
  {
    v30 = HIBYTE(v31) & 0xF;
  }

  if (v30)
  {
    v32._countAndFlagsBits = 0xD00000000000003BLL;
    v32._object = 0x800000010000FD90;
    String.append(_:)(v32);
    v33._countAndFlagsBits = 0xD000000000000040;
    v33._object = 0x800000010000F5A0;
    String.append(_:)(v33);
    v46 = 0xD000000000000012;
    v47 = 0x800000010000FDD0;
    sub_100002A20(&qword_100018778, &qword_10000E7D8);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_10000E200;
    v35 = v48[0];
    v36 = v48[1];
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = sub_1000092A4();
    *(v34 + 32) = v35;
    *(v34 + 40) = v36;
    sub_100002D38();

    v37 = StringProtocol.appendingFormat<A>(_:_:)();
    v39 = v38;

    v40 = sub_100009C0C(v37, v39, 0x6F6974617267696DLL, 0xED00007261742E6ELL, 0x6C756E2F7665642FLL, 0xE90000000000006CLL);

    if (v40)
    {
    }

    else
    {
      v46 = 0x203A44454C494146;
      v47 = 0xE800000000000000;

      v41._countAndFlagsBits = v37;
      v41._object = v39;
      String.append(_:)(v41);

      v42 = v46;
      v43 = v47;
      v44 = static os_log_type_t.error.getter();
      sub_10000B344(v42, v43, v44);
    }
  }
}

uint64_t sub_100008C70(uint64_t *a1)
{
  v2 = sub_100002A20(&qword_100018770, &qword_10000E7D0);
  v3 = __chkstk_darwin(v2 - 8);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v35 = &v35 - v6;
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  v9 = type metadata accessor for FilePath();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v36 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v35 - v14;
  __chkstk_darwin(v13);
  v17 = &v35 - v16;
  v18 = *a1;

  v42 = v18;
  FilePath.init(_:)();
  FilePath.lastComponent.getter();
  v19 = *(v10 + 8);
  v38 = v9;
  v41 = v19;
  v19(v17, v9);
  v20 = type metadata accessor for FilePath.Component();
  v21 = *(v20 - 8);
  v40 = *(v21 + 48);
  result = v40(v8, 1, v20);
  if (result == 1)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  FilePath.Component.stem.getter();
  v39 = *(v21 + 8);
  v39(v8, v20);
  v23._object = 0x800000010000FE30;
  v23._countAndFlagsBits = 0xD000000000000010;
  v24 = String.hasPrefix(_:)(v23);

  v25 = v38;
  if (v24)
  {
LABEL_5:

    v29 = v36;
    FilePath.init(_:)();
    v30 = v37;
    FilePath.lastComponent.getter();
    v41(v29, v25);
    result = v40(v30, 1, v20);
    if (result != 1)
    {
      v31 = FilePath.Component.extension.getter();
      v33 = v32;
      v39(v30, v20);
      if (v33)
      {
        if (v31 == 0x7473696C70 && v33 == 0xE500000000000000)
        {
          v34 = 1;
        }

        else
        {
          v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        return v34 & 1;
      }

LABEL_10:
      v34 = 0;
      return v34 & 1;
    }

    goto LABEL_15;
  }

  FilePath.init(_:)();
  v26 = v35;
  FilePath.lastComponent.getter();
  v41(v15, v25);
  result = v40(v26, 1, v20);
  if (result != 1)
  {
    FilePath.Component.stem.getter();
    v39(v26, v20);
    v27._countAndFlagsBits = 0xD000000000000016;
    v27._object = 0x800000010000FE50;
    v28 = String.hasPrefix(_:)(v27);

    if (!v28)
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1000090D8()
{
  v1 = OBJC_IVAR____TtC16get_network_info12GNICollector_gniDirectory;
  v2 = type metadata accessor for FilePath();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GNICollector(uint64_t a1)
{
  result = qword_1000186B0;
  if (!qword_1000186B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000091E8(uint64_t a1)
{
  result = type metadata accessor for FilePath();
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

unint64_t sub_1000092A4()
{
  result = qword_100018780;
  if (!qword_100018780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018780);
  }

  return result;
}

unint64_t sub_1000092F8(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000093E8(a1, v2);
}

uint64_t sub_10000938C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1000093E8(uint64_t a1, uint64_t a2)
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

unint64_t sub_100009520()
{
  result = qword_1000187B8;
  if (!qword_1000187B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000187B8);
  }

  return result;
}

uint64_t sub_100009574(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000095C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002A20(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000965C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000096A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *__s1 = a1;
  v57 = a2;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_100002D38();
  v8 = StringProtocol.components(separatedBy:)();
  (*(v5 + 8))(v7, v4);
  v9 = 0;
  v52 = 0;
  v10 = *(v8 + 16);
  v11 = _swiftEmptyArrayStorage;
LABEL_2:
  v12 = (v8 + 40 + 16 * v9);
  while (v10 != v9)
  {
    if (v9 >= *(v8 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    ++v9;
    v14 = *(v12 - 1);
    v13 = *v12;
    v12 += 2;
    v15 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v15 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *__s1 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100003288(0, v11[2] + 1, 1);
        v11 = *__s1;
      }

      v18 = v11[2];
      v17 = v11[3];
      if (v18 >= v17 >> 1)
      {
        sub_100003288((v17 > 1), v18 + 1, 1);
        v11 = *__s1;
      }

      v11[2] = v18 + 1;
      v19 = &v11[2 * v18];
      v19[4] = v14;
      v19[5] = v13;
      goto LABEL_2;
    }
  }

  v20 = v11[2];
  if (v20)
  {
    v55 = _swiftEmptyArrayStorage;
    sub_100003268(0, v20, 0);
    v21 = v55;
    v22 = v11 + 5;
    while (1)
    {
      v23 = *v22;
      if ((*v22 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v23 & 0x2000000000000000) != 0)
      {
        *__s1 = *(v22 - 1);
        v57 = v23 & 0xFFFFFFFFFFFFFFLL;

        v24 = __s1;
      }

      else
      {
        if ((*(v22 - 1) & 0x1000000000000000) == 0)
        {
          break;
        }

        v24 = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      *v58 = strdup(v24);
LABEL_21:

      v25 = *v58;
      v55 = v21;
      v27 = v21[2];
      v26 = v21[3];
      if (v27 >= v26 >> 1)
      {
        sub_100003268((v26 > 1), v27 + 1, 1);
        v21 = v55;
      }

      v21[2] = v27 + 1;
      v21[v27 + 4] = v25;
      v22 += 2;
      if (!--v20)
      {

        goto LABEL_27;
      }
    }

    sub_100002A20(&qword_100018A28, &unk_10000E940);
    v28 = v52;
    _StringGuts._slowWithCString<A>(_:)();
    v52 = v28;
    goto LABEL_21;
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_27:
  v55 = v21;
  sub_10000D420(&off_100015768);
  v58[0] = -1;
  v29 = v55;
  if (!v55[2])
  {
LABEL_41:
    __break(1u);
  }

  v31 = (v55 + 4);
  v30 = v55[4];
  v32 = environ.getter();
  v33 = posix_spawn(v58, v30, 0, 0, v29 + 4, v32);
  v54[0] = v33;
  if (v33)
  {
    v34 = v33;
    *__s1 = 0;
    v57 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    *__s1 = 0xD00000000000001FLL;
    v57 = 0x80000001000101E0;
    v53 = v34;
    v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v35);

    v36._countAndFlagsBits = 39;
    v36._object = 0xE100000000000000;
    String.append(_:)(v36);
    v37 = *__s1;
    v38 = v57;
    v39 = static os_log_type_t.error.getter();
    sub_10000B344(v37, v38, v39);

    for (i = *(v29 + 2); i; --i)
    {
      v41 = *v31++;
      free(v41);
    }
  }

  else
  {
    waitpid(v58[0], v54, 0);
    if (v54[0])
    {
      *__s1 = 0;
      v57 = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      *__s1 = 0xD00000000000001BLL;
      v57 = 0x8000000100010200;
      v53 = v54[0];
      v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v42);

      v43._countAndFlagsBits = 39;
      v43._object = 0xE100000000000000;
      String.append(_:)(v43);
      v44 = *__s1;
      v45 = v57;
      v46 = static os_log_type_t.error.getter();
      sub_10000B344(v44, v45, v46);

      for (i = *(v29 + 2); i; --i)
      {
        v47 = *v31++;
        free(v47);
      }
    }

    else
    {
      for (j = *(v29 + 2); j; --j)
      {
        v49 = *v31++;
        free(v49);
      }

      i = 1;
    }
  }

  return i;
}

BOOL sub_100009C0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v208 = a4;
  v200 = a6;
  v202 = a5;
  v204 = a3;
  v9 = sub_100002A20(&qword_100018A40, qword_10000E960);
  __chkstk_darwin(v9 - 8);
  v196 = &v187 - v10;
  v195 = type metadata accessor for URL.DirectoryHint();
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v191 = &v187 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for URL();
  v193 = *(v198 - 8);
  v12 = __chkstk_darwin(v198);
  v192 = &v187 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v197 = &v187 - v14;
  v203 = type metadata accessor for FilePath();
  v206 = *(v203 - 8);
  v15 = __chkstk_darwin(v203);
  v199 = &v187 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v189 = &v187 - v18;
  v19 = __chkstk_darwin(v17);
  v201 = &v187 - v20;
  __chkstk_darwin(v19);
  v205 = &v187 - v21;
  v22 = type metadata accessor for CharacterSet();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v187 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = 0;
  v207._countAndFlagsBits = a1;
  v207._object = a2;
  *__s1 = a1;
  *&__s1[8] = a2;
  static CharacterSet.whitespacesAndNewlines.getter();
  v190 = sub_100002D38();
  v26 = StringProtocol.components(separatedBy:)();
  (*(v23 + 8))(v25, v22);
  v27 = 0;
  v188 = 0;
  v28 = *(v26 + 16);
  v29 = &_swiftEmptyArrayStorage;
LABEL_2:
  v30 = (v26 + 40 + 16 * v27);
  while (v28 != v27)
  {
    if (v27 >= *(v26 + 16))
    {
      __break(1u);
      goto LABEL_79;
    }

    ++v27;
    v31 = *(v30 - 1);
    v6 = *v30;
    v30 += 2;
    v32 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v32 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *__s1 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100003288(0, *(v29 + 2) + 1, 1);
        v29 = *__s1;
      }

      v22 = *(v29 + 2);
      v34 = *(v29 + 3);
      if (v22 >= v34 >> 1)
      {
        sub_100003288((v34 > 1), v22 + 1, 1);
        v29 = *__s1;
      }

      *(v29 + 2) = v22 + 1;
      v35 = &v29[16 * v22];
      *(v35 + 4) = v31;
      *(v35 + 5) = v6;
      goto LABEL_2;
    }
  }

  v36 = *(v29 + 2);
  if (!v36)
  {

    v53 = static os_log_type_t.error.getter();
    sub_10000B344(0xD00000000000001ALL, 0x8000000100010340, v53);
    return 0;
  }

  v215 = &_swiftEmptyArrayStorage;
  sub_100003268(0, v36, 0);
  v37 = v215;
  v38 = (v29 + 40);
  v39 = v36;
  v40 = v208;
  do
  {
    v41 = *v38;
    if ((*v38 & 0x1000000000000000) == 0)
    {
      if ((v41 & 0x2000000000000000) != 0)
      {
        *__s1 = *(v38 - 1);
        *&__s1[8] = v41 & 0xFFFFFFFFFFFFFFLL;

        v42 = __s1;
        goto LABEL_20;
      }

      if ((*(v38 - 1) & 0x1000000000000000) != 0)
      {

        v42 = ((v41 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_20:
        *v214 = strdup(v42);
        goto LABEL_21;
      }
    }

    sub_100002A20(&qword_100018A28, &unk_10000E940);
    v47 = v188;
    _StringGuts._slowWithCString<A>(_:)();
    v188 = v47;
LABEL_21:

    v43 = *v214;
    v215 = v37;
    v45 = v37[2];
    v44 = v37[3];
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      sub_100003268((v44 > 1), v45 + 1, 1);
      v37 = v215;
    }

    v37[2] = v46;
    v37[v45 + 4] = v43;
    v38 += 2;
    --v39;
  }

  while (v39);
  v211 = v37;
  if (v46 != v36)
  {

    *__s1 = 0;
    *&__s1[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(59);
    v54._countAndFlagsBits = 0xD000000000000038;
    v54._object = 0x8000000100010220;
    String.append(_:)(v54);
    String.append(_:)(v207);
    v55._countAndFlagsBits = 39;
    v55._object = 0xE100000000000000;
    String.append(_:)(v55);
    v56 = *__s1;
    v57 = *&__s1[8];
    v58 = static os_log_type_t.error.getter();
    sub_10000B344(v56, v57, v58);

    goto LABEL_83;
  }

  sub_10000D420(&off_1000149C0);
  v48 = v209;
  if (!*(v29 + 2))
  {
    __break(1u);
    goto LABEL_103;
  }

  v49._countAndFlagsBits = 7496052;
  v49._object = 0xE300000000000000;
  v50 = String.hasSuffix(_:)(v49);

  if (v50)
  {
    goto LABEL_31;
  }

  if (v40)
  {
    v51._countAndFlagsBits = 1918989358;
    v51._object = 0xE400000000000000;
    if (String.hasSuffix(_:)(v51))
    {
LABEL_31:
      v52 = 1;
    }

    else
    {
      v59._countAndFlagsBits = 0x7473696C702ELL;
      v59._object = 0xE600000000000000;
      v52 = String.hasSuffix(_:)(v59);
    }
  }

  else
  {
    v52 = 0;
  }

  v22 = objc_opt_self();
  v27 = &GNICollector;
  v60 = [v22 defaultManager];

  v61 = String._bridgeToObjectiveC()();

  v62 = [v60 fileExistsAtPath:v61];

  if (!v62)
  {
    *__s1 = 0;
    *&__s1[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    strcpy(__s1, "command '");
    *&__s1[10] = 0;
    *&__s1[12] = -385875968;
    v68 = *(v29 + 4);
    v69 = *(v29 + 5);

    v70._countAndFlagsBits = v68;
    v70._object = v69;
    String.append(_:)(v70);

    v71._countAndFlagsBits = 0x276E73656F642027;
    v71._object = 0xEF74736978652074;
    String.append(_:)(v71);
    v72 = *__s1;
    v73 = *&__s1[8];
    v74 = static os_log_type_t.error.getter();
    sub_10000B344(v72, v73, v74);

    v75 = v211[2];
    if (v75)
    {
      v76 = (v211 + 4);
      do
      {
        v77 = *v76++;
        free(v77);
        --v75;
      }

      while (v75);
    }

    goto LABEL_83;
  }

  LODWORD(v188) = v52;
  object = v207._object;

  v64 = static os_log_type_t.default.getter();
  sub_10000B344(v207._countAndFlagsBits, object, v64);

  if (!v40)
  {
    v78 = [v22 defaultManager];
    v79 = [v78 temporaryDirectory];

    v80 = v192;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    *__s1 = FilePath.string.getter();
    *&__s1[8] = v81;
    v82 = v194;
    v83 = v191;
    v84 = v195;
    (*(v194 + 104))(v191, enum case for URL.DirectoryHint.inferFromPath(_:), v195);
    v85 = v197;
    URL.appending<A>(component:directoryHint:)();
    (*(v82 + 8))(v83, v84);

    v86 = v193;
    v87 = *(v193 + 8);
    v88 = v198;
    v87(v80, v198);
    (*(v86 + 16))(v80, v85, v88);
    v89 = v196;
    FilePath.init(_:)();
    v90 = v203;
    if ((*(v206 + 48))(v89, 1, v203) == 1)
    {

      sub_10000D50C(v89);
      *__s1 = 0;
      *&__s1[8] = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      *__s1 = 0xD00000000000002DLL;
      *&__s1[8] = 0x8000000100010260;
      sub_10000D574(&qword_100018A48, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v91._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v91);

      v92._countAndFlagsBits = 39;
      v92._object = 0xE100000000000000;
      String.append(_:)(v92);
      v93 = *__s1;
      v94 = *&__s1[8];
      v95 = static os_log_type_t.error.getter();
      sub_10000B344(v93, v94, v95);

      v87(v85, v88);
      v96 = v211[2];
      if (v96)
      {
        v97 = (v211 + 4);
        do
        {
          v98 = *v97++;
          free(v98);
          --v96;
        }

        while (v96);
      }

      goto LABEL_83;
    }

    v87(v85, v88);
    (*(v206 + 32))(v205, v89, v90);
    v65 = v90;
    v48 = v209;
    v27 = 0x100018000;
    v66 = v200;
    if (!v200)
    {
      goto LABEL_56;
    }

LABEL_42:
    if (v202 == 0x6C756E2F7665642FLL && v66 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v6 = v201;
      FilePath.init(stringLiteral:)();
      v67 = *(v206 + 16);
    }

    else
    {
      v67 = *(v206 + 16);
      (v67)(v189, v48 + OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_pathRoot, v65);

      v6 = v201;
      FilePath.appending(_:)();
    }

    v99 = v205;
    goto LABEL_61;
  }

  if ((v204 != 0x6C756E2F7665642FLL || v40 != 0xE90000000000006CLL) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v65 = v203;
    (*(v206 + 16))(v189, v48 + OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_pathRoot, v203);

    FilePath.appending(_:)();
    v66 = v200;
    if (!v200)
    {
      goto LABEL_56;
    }

    goto LABEL_42;
  }

  FilePath.init(stringLiteral:)();
  v65 = v203;
  v66 = v200;
  if (v200)
  {
    goto LABEL_42;
  }

LABEL_56:

  v99 = v205;
  v67 = *(v206 + 16);
  v6 = v201;
  v67();
LABEL_61:
  v100 = v199;
  (v67)(v199, v99, v65);
  type metadata accessor for GNISubprocessRunner.GNIOutputTargetFile(0);
  swift_allocObject();
  if (!sub_10000B638(v100))
  {
    *__s1 = 0;
    *&__s1[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    *__s1 = 0xD00000000000001ELL;
    *&__s1[8] = 0x8000000100010290;
    sub_10000D574(&qword_100018830, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v113._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v113);

    v114._countAndFlagsBits = 39;
    v114._object = 0xE100000000000000;
    String.append(_:)(v114);
    v115 = *__s1;
    v116 = *&__s1[8];
    v117 = static os_log_type_t.error.getter();
    sub_10000B344(v115, v116, v117);

    v118 = *(v206 + 8);
    v118(v6, v65);
    v118(v99, v65);
    v119 = v211[2];
    if (v119)
    {
      v120 = (v211 + 4);
      do
      {
        v121 = *v120++;
        free(v121);
        --v119;
      }

      while (v119);
    }

LABEL_83:

    return 0;
  }

  v29 = v99;
  if (!((v40 == 0) | v188 & 1))
  {
    sub_10000BE00(2595, 0xE200000000000000);
    *__s1 = 8227;
    *&__s1[8] = 0xE200000000000000;
    String.append(_:)(v207);
    v101._countAndFlagsBits = 10;
    v101._object = 0xE100000000000000;
    String.append(_:)(v101);
    sub_10000BE00(*__s1, *&__s1[8]);

    sub_10000BE00(2595, 0xE200000000000000);
  }

  v215 = 0;
  v102 = posix_spawn_file_actions_init(&v215);
  v213 = v102;
  if (v102)
  {
    v103 = v102;
    *__s1 = 0;
    *&__s1[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    v104._countAndFlagsBits = 0xD000000000000031;
    v104._object = 0x80000001000102B0;
    String.append(_:)(v104);
    v214[0] = v103;
    v105._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v105);

    v106 = *__s1;
    v107 = *&__s1[8];
    v108 = static os_log_type_t.error.getter();
    sub_10000B344(v106, v107, v108);

    posix_spawn_file_actions_destroy(&v215);

    v109 = *(v206 + 8);
    v109(v6, v65);
    v109(v29, v65);
    v110 = v211[2];
    if (v110)
    {
      v111 = (v211 + 4);
      do
      {
        v112 = *v111++;
        free(v112);
        --v110;
      }

      while (v110);
    }

    goto LABEL_83;
  }

  FilePath.description.getter();
  v122 = String.utf8CString.getter();

  v123 = posix_spawn_file_actions_addopen(&v215, 1, (v122 + 32), 10, 0x1A4u);

  v213 = v123;
  if (v123)
  {
    *__s1 = 0;
    *&__s1[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v124._countAndFlagsBits = 0xD000000000000022;
    v124._object = 0x80000001000102F0;
    String.append(_:)(v124);
    v214[0] = 1;
    v125._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v125);

    v126._object = 0x8000000100010320;
    v126._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v126);
    v214[0] = v213;
    v127._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v127);

    v128._countAndFlagsBits = 39;
    v128._object = 0xE100000000000000;
    String.append(_:)(v128);
    v129 = *__s1;
    v130 = *&__s1[8];
    v131 = static os_log_type_t.error.getter();
    sub_10000B344(v129, v130, v131);

    posix_spawn_file_actions_destroy(&v215);

    v132 = *(v206 + 8);
    v133 = v203;
    v132(v6, v203);
    v132(v29, v133);
    v134 = v211[2];
    if (v134)
    {
      v135 = (v211 + 4);
      do
      {
        v136 = *v135++;
        free(v136);
        --v134;
      }

      while (v134);
    }

    goto LABEL_83;
  }

LABEL_79:
  FilePath.description.getter();
  v137 = String.utf8CString.getter();

  v138 = posix_spawn_file_actions_addopen(&v215, 2, (v137 + 32), 10, 0x1A4u);

  v213 = v138;
  if (v138)
  {
    *__s1 = 0;
    *&__s1[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v139._countAndFlagsBits = 0xD000000000000022;
    v139._object = 0x80000001000102F0;
    String.append(_:)(v139);
    v214[0] = 2;
    v140._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v140);

    v141._object = 0x8000000100010320;
    v141._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v141);
    v214[0] = v213;
    v142._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v142);

    v143._countAndFlagsBits = 39;
    v143._object = 0xE100000000000000;
    String.append(_:)(v143);
    v144 = *__s1;
    v145 = *&__s1[8];
    v146 = static os_log_type_t.error.getter();
    sub_10000B344(v144, v145, v146);

    posix_spawn_file_actions_destroy(&v215);

    v147 = *(v206 + 8);
    v148 = v203;
    v147(v6, v203);
    v147(v29, v148);
    v149 = v211[2];
    if (v149)
    {
      v150 = (v211 + 4);
      do
      {
        v151 = *v150++;
        free(v151);
        --v149;
      }

      while (v149);
    }

    goto LABEL_83;
  }

  v214[0] = -1;
  v153 = v211;
  if (!v211[2])
  {
LABEL_103:
    __break(1u);
  }

  v155 = (v211 + 4);
  v154 = v211[4];
  v156 = environ.getter();
  v157 = posix_spawn(v214, v154, &v215, 0, v153 + 4, v156);
  v213 = v157;
  if (v157)
  {
    v158 = v157;
    *__s1 = 0;
    *&__s1[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    *__s1 = 0xD00000000000001FLL;
    *&__s1[8] = 0x80000001000101E0;
    v210 = v158;
    v159._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v159);

    v160._countAndFlagsBits = 39;
    v160._object = 0xE100000000000000;
    String.append(_:)(v160);
    v161 = *__s1;
    v162 = *&__s1[8];
    v163 = static os_log_type_t.error.getter();
    sub_10000B344(v161, v162, v163);

    posix_spawn_file_actions_destroy(&v215);

    v164 = *(v206 + 8);
    v165 = v203;
    v164(v6, v203);
    v164(v29, v165);
    for (i = *(v153 + 2); i; --i)
    {
      v167 = *v155++;
      free(v167);
    }

    goto LABEL_83;
  }

  waitpid(v214[0], &v213, 0);
  if (v213)
  {
    *__s1 = 0;
    *&__s1[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    *__s1 = 0xD00000000000001BLL;
    *&__s1[8] = 0x8000000100010200;
    v210 = v213;
    v168._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v168);

    v169._countAndFlagsBits = 39;
    v169._object = 0xE100000000000000;
    String.append(_:)(v169);
    v170 = *__s1;
    v171 = *&__s1[8];
    v172 = static os_log_type_t.error.getter();
    sub_10000B344(v170, v171, v172);

    posix_spawn_file_actions_destroy(&v215);

    v173 = *(v206 + 8);
    v174 = v203;
    v173(v6, v203);
    v173(v29, v174);
    for (j = *(v153 + 2); j; --j)
    {
      v176 = *v155++;
      free(v176);
    }

    goto LABEL_83;
  }

  if (v208)
  {
    sub_10000BA88();
  }

  else
  {
    sub_10000C0B4();
    sub_10000BA88();
    v177 = [v22 *(v27 + 800)];
    FilePath.description.getter();
    v178 = String._bridgeToObjectiveC()();

    *__s1 = 0;
    v179 = [v177 removeItemAtPath:v178 error:__s1];

    v180 = *__s1;
    if (!v179)
    {
      v181 = v180;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v29 = v205;
  }

  v182 = v213;
  posix_spawn_file_actions_destroy(&v215);

  v183 = *(v206 + 8);
  v184 = v203;
  v183(v201, v203);
  v183(v29, v184);
  for (k = *(v153 + 2); k; --k)
  {
    v186 = *v155++;
    free(v186);
  }

  return v182 == 0;
}

void sub_10000B344(uint64_t a1, void *a2, os_log_type_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002A20(&qword_100018568, &qword_10000E950);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10000E200;
  v13 = *(v4 + OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_dateFormatter);
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v11, v8);
  v15 = [v13 stringFromDate:isa];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v27 = v16;
  v28 = v18;
  v19._countAndFlagsBits = 8250;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = a1;
  v20._object = a2;
  String.append(_:)(v20);
  v21 = v27;
  v22 = v28;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 32) = v21;
  *(v12 + 40) = v22;
  swift_beginAccess();
  type metadata accessor for GNISubprocessRunner.GNIOutputTargetFile(0);
  sub_10000D574(&qword_100018A30, type metadata accessor for GNISubprocessRunner.GNIOutputTargetFile, &unk_10000E900);
  print<A>(_:separator:terminator:to:)();
  swift_endAccess();

  v23 = Logger.logObject.getter();

  if (os_log_type_enabled(v23, a3))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_10000CE78(a1, a2, &v27);
    _os_log_impl(&_mh_execute_header, v23, a3, "%s", v24, 0xCu);
    sub_1000036F0(v25);
  }
}

uint64_t sub_10000B638(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v2 + OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_closed) = 0;
  v8 = OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_filePath;
  v9 = *(v5 + 16);
  v9(v2 + OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_filePath, a1, v4);
  v9(v7, (v2 + v8), v4);
  v19 = 0x20800000002;
  v20 = 16777636;
  FilePath.withCString<A>(_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  *(v2 + OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_fileDescriptor) = v21;
  FilePath.string.getter();
  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() fileHandleForWritingAtPath:v11];

  if (!v12)
  {
    sub_100002A20(&qword_100018568, &qword_10000E950);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10000E200;
    v21 = 0;
    v22 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v21 = 0xD000000000000020;
    v22 = 0x80000001000103E0;
    sub_10000D574(&qword_100018830, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    v17 = v21;
    v16 = v22;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 32) = v17;
    *(v14 + 40) = v16;

    print(_:separator:terminator:)();

    exit(1);
  }

  v10(a1, v4);
  *(v2 + OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_fileHandle) = v12;
  return v2;
}

void sub_10000BA88()
{
  v1 = OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_closed;
  if (*(v0 + OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_closed))
  {
    return;
  }

  v2 = FileDescriptor._close()();
  if ((v2 & 0x100000000) != 0)
  {
    LODWORD(v14) = v2;
    v4 = v2;
    sub_10000D5BC();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v5 = v4;
    goto LABEL_9;
  }

  v3 = *(v0 + OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_fileHandle);
  v14 = 0;
  if (([v3 closeAndReturnError:&v14] & 1) == 0)
  {
    v6 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_9:
    sub_100002A20(&qword_100018568, &qword_10000E950);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10000E200;
    v14 = 0;
    v15 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);
    v8._object = 0x8000000100010380;
    v8._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v8);
    type metadata accessor for FilePath();
    sub_10000D574(&qword_100018830, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 0x6520687469772027;
    v10._object = 0xEE002720726F7272;
    String.append(_:)(v10);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v11._countAndFlagsBits = 39;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v12 = v14;
    v13 = v15;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 32) = v12;
    *(v7 + 40) = v13;
    print(_:separator:terminator:)();

    exit(1);
  }

  *(v0 + v1) = 1;

  _objc_retain_x1();
}

uint64_t sub_10000BD50()
{
  sub_10000BA88();
  v1 = OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_filePath;
  v2 = type metadata accessor for FilePath();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10000BE00(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v2 + OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_fileHandle) seekToEndOfFile];
  static String.Encoding.utf8.getter();
  v7 = String.data(using:allowLossyConversion:)();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  if (v9 >> 60 == 15)
  {
    __break(1u);
    sub_100009574(v19, v20);
    sub_100002A20(&qword_100018568, &qword_10000E950);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10000E200;
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    v12._object = 0x8000000100010360;
    v12._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v12);
    type metadata accessor for FilePath();
    sub_10000D574(&qword_100018830, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 0x6520687469772027;
    v14._object = 0xEE002720726F7272;
    String.append(_:)(v14);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v15._countAndFlagsBits = 39;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16 = v19;
    v17 = v20;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 32) = v16;
    *(v11 + 40) = v17;
    print(_:separator:terminator:)();

    exit(1);
  }

  v19 = v7;
  v20 = v9;
  sub_100009520();
  NSFileHandle.write<A>(contentsOf:)();
  return sub_100009574(v19, v20);
}

uint64_t sub_10000C0B4()
{
  v1 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002A20(&qword_100018768, &qword_10000E7C8);
  __chkstk_darwin(v6 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = OBJC_IVAR____TtCC16get_network_info19GNISubprocessRunnerP33_3186E59FE02BFB660D06ACCD2EEE6E6019GNIOutputTargetFile_filePath;
  v16 = v0;
  FilePath.description.getter();
  (*(v10 + 56))(v8, 1, 1, v9);
  (*(v3 + 104))(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
  URL.init(filePath:directoryHint:relativeTo:)();
  static String.Encoding.utf8.getter();
  v13 = String.init(contentsOf:encoding:)();
  (*(v10 + 8))(v12, v9);
  return v13;
}

char *sub_10000C4D8(char *a1)
{
  v2 = v1;
  v32 = a1;
  v29 = *v1;
  v3 = type metadata accessor for FilePath();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v31 = &v23 - v9;
  __chkstk_darwin(v8);
  v30 = &v23 - v10;
  v28 = OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_logger;
  Logger.init(subsystem:category:)();
  v11 = OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_dateFormatter;
  v12 = [objc_allocWithZone(NSDateFormatter) init];
  v13 = String._bridgeToObjectiveC()();
  [v12 setDateFormat:v13];

  *&v2[v11] = v12;
  v26 = OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_runnerTmpStdoutFilename;
  v27 = v11;
  FilePath.init(stringLiteral:)();
  v14 = OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_runnerStdoutFilename;
  FilePath.init(stringLiteral:)();
  v15 = OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_pathRoot;
  v16 = *(v4 + 16);
  v16(&v2[OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_pathRoot], v32, v3);
  v24 = v15;
  v16(v31, &v2[v15], v3);
  v25 = v14;
  v16(v7, &v2[v14], v3);
  sub_10000D574(&qword_100018830, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
  dispatch thunk of CustomStringConvertible.description.getter();
  v17 = *(v4 + 8);
  v17(v7, v3);
  v18 = v30;
  v19 = v31;
  FilePath.appending(_:)();
  v16(v19, v18, v3);
  type metadata accessor for GNISubprocessRunner.GNIOutputTargetFile(0);
  swift_allocObject();
  v20 = sub_10000B638(v19);
  v17(v32, v3);
  v17(v18, v3);
  if (v20)
  {
    *&v2[OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_runnerStdoutTarget] = v20;
  }

  else
  {
    v21 = type metadata accessor for Logger();
    (*(*(v21 - 8) + 8))(&v2[v28], v21);

    v17(&v2[v24], v3);
    v17(&v2[v26], v3);
    v17(&v2[v25], v3);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t sub_10000C924()
{
  v1 = v0;
  swift_beginAccess();

  sub_10000BA88();

  v2 = OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  v4 = OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_pathRoot;
  v5 = type metadata accessor for FilePath();
  v6 = *(*(v5 - 8) + 8);
  v6(v1 + v4, v5);
  v6(v1 + OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_runnerTmpStdoutFilename, v5);
  v6(v1 + OBJC_IVAR____TtC16get_network_info19GNISubprocessRunner_runnerStdoutFilename, v5);

  return swift_deallocClassInstance();
}

uint64_t sub_10000CAC0(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FilePath();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10000CBD0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000CC08(uint64_t a1)
{
  result = type metadata accessor for FilePath();
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

char *sub_10000CCBC@<X0>(const char *a1@<X0>, char **a2@<X8>)
{
  result = strdup(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000CCEC@<X0>(_DWORD *a5@<X8>)
{
  result = static FileDescriptor._open(_:_:options:permissions:retryOnInterrupt:)();
  if ((result & 0x100000000) != 0)
  {
    v7 = result;
    sub_10000D5BC();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v8 = v7;
  }

  else
  {
    *a5 = result;
  }

  return result;
}

char *sub_10000CD74(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002A20(&qword_100018588, &qword_10000E2F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_10000CE78(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000CF44(v11, 0, 0, 1, a1, a2);
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
    sub_10000938C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000036F0(v11);
  return v7;
}

unint64_t sub_10000CF44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000D050(a5, a6);
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

char *sub_10000D050(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000D09C(a1, a2);
  sub_10000D1CC(&off_100014998);
  return v3;
}

char *sub_10000D09C(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000D2B8(v5, 0);
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
        v7 = sub_10000D2B8(v10, 0);
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

uint64_t sub_10000D1CC(uint64_t result)
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

  result = sub_10000D32C(result, v11, 1, v3);
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

void *sub_10000D2B8(uint64_t a1, uint64_t a2)
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

  sub_100002A20(&qword_100018A38, &qword_10000E958);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000D32C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002A20(&qword_100018A38, &qword_10000E958);
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

char *sub_10000D420(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_10000CD74(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v7 + 32], v6 + 32, 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10000D50C(uint64_t a1)
{
  v2 = sub_100002A20(&qword_100018A40, qword_10000E960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000D574(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000D5BC()
{
  result = qword_100018A50;
  if (!qword_100018A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018A50);
  }

  return result;
}

uint64_t FilePath.init(_:)()
{
  return FilePath.init(_:)();
}

{
  return FilePath.init(_:)();
}

uint64_t FilePath.appending(_:)()
{
  return FilePath.appending(_:)();
}

{
  return FilePath.appending(_:)();
}