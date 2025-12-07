uint64_t sub_100156A24(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater__subscription;
  swift_beginAccess();
  sub_100157014(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_100156A90()
{
  sub_1000050C4(v0 + OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater__subscription, &qword_1002293B8, &qword_1001C06D0);

  v1 = OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_100156B84(uint64_t a1)
{
  sub_100156C5C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100156C5C(uint64_t a1)
{
  if (!qword_10022A020)
  {
    type metadata accessor for MusicSubscription();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10022A020);
    }
  }
}

uint64_t sub_100156CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002293B8, &qword_1001C06D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100156D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSubscription();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000024C4(&qword_1002293B8, &qword_1001C06D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1000024C4(&qword_10022A0B0, &unk_1001C1460);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_100156CB4(a1, &v21 - v13);
  sub_100156CB4(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_100156CB4(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1001570A8(&qword_10022A0B8, &type metadata accessor for MusicSubscription, &protocol conformance descriptor for MusicSubscription);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000050C4(v14, &qword_1002293B8, &qword_1001C06D0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000050C4(v14, &qword_10022A0B0, &unk_1001C1460);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000050C4(v14, &qword_1002293B8, &qword_1001C06D0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100157014(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002293B8, &qword_1001C06D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001570A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001570F0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100157130(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BD00;

  return sub_100155D5C(a1, v4, v5, v6);
}

uint64_t sub_100157218(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1001572E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7, double a8)
{
  v16 = swift_allocObject();
  ObservationRegistrar.init()();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  *(v16 + 56) = a7;
  *(v16 + 64) = a8;
  *(v16 + 72) = a6;
  return v16;
}

void sub_100157420(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = v3;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = 13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = 1;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = xmmword_1001C1490;
  *(inited + 168) = 3;
  if (*(a1 + 72))
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v14 = v6;
  v15 = v7;

  v8 = sub_1001894F4(1, 5, 1, inited);
  v12 = v8;
  sub_100006C98(&aBlock, v19);
  sub_100118768(4, v19, &v12, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  v10[2] = 0xD00000000000001ELL;
  v10[3] = 0x80000001001C4640;
  v10[4] = v8;
  v17 = sub_100006D88;
  v18 = v10;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10015B4A4;
  v16 = &unk_100219028;
  v11 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v11);
}

char *sub_100157684()
{

  v1 = qword_10022A0D0;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1001576FC()
{
  sub_100157684();

  return swift_deallocClassInstance();
}

uint64_t sub_10015776C()
{

  return swift_deallocObject();
}

double sub_1001577AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001578C8(void *a1)
{
  a1[1] = sub_100157CB8(&qword_10022A1D0, type metadata accessor for DesignTimeSong, &unk_1001C163C);
  a1[2] = sub_100157CB8(&qword_10022A1D8, type metadata accessor for DesignTimeSong, &unk_1001C15D4);
  result = sub_100157CB8(&qword_10022A1E0, type metadata accessor for DesignTimeSong, &unk_1001C159C);
  a1[3] = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeSong(uint64_t a1)
{
  result = qword_10022A258;
  if (!qword_10022A258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001579C4@<X0>(uint64_t *a1@<X8>)
{
  result = MusicItemID.init(stringLiteral:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int sub_100157A4C()
{
  Hasher.init(_seed:)();
  MusicItemID.init(stringLiteral:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100157AC0(uint64_t a1)
{
  MusicItemID.init(stringLiteral:)();
  String.hash(into:)();
}

Swift::Int sub_100157B28()
{
  Hasher.init(_seed:)();
  MusicItemID.init(stringLiteral:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100157BCC()
{
  v0 = MusicItemID.init(stringLiteral:)();
  v2 = v1;
  if (v0 == MusicItemID.init(stringLiteral:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100157CB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100157D30(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1000024C4(&qword_100221250, &unk_1001B3990);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = sub_1000024C4(&qword_10022A1F8, &qword_1001C1698);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_100157ED4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1000024C4(&qword_100221250, &unk_1001B3990);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = sub_1000024C4(&qword_10022A1F8, &qword_1001C1698);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

void sub_100158064(uint64_t a1)
{
  sub_100158214(319, qword_100226B30, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_1001581C0(319, &qword_1002212D8, type metadata accessor for DesignTimeImage);
    if (v2 <= 0x3F)
    {
      sub_1001581C0(319, &qword_100221420, &type metadata accessor for URL);
      if (v3 <= 0x3F)
      {
        sub_1001581C0(319, &qword_10022A268, &type metadata accessor for PlayParameters);
        if (v4 <= 0x3F)
        {
          sub_100158214(319, &unk_10022A270, &type metadata for Double);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001581C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100158214(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100158298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100158318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ScrollAsset(uint64_t a1)
{
  result = qword_10022A318;
  if (!qword_10022A318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001583D4(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100158478(uint64_t a5@<X8>)
{
  v31 = static HorizontalAlignment.leading.getter();

  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_100017398(v6, v8, v10 & 1);

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  LOBYTE(v8) = v15 & 1;
  LOBYTE(v6) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  *(a5 + 104) = v35;
  *(a5 + 120) = v36;
  *(a5 + 136) = v37;
  *(a5 + 152) = v38;
  *(a5 + 56) = v32;
  *(a5 + 72) = v33;
  *a5 = v31;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = v11;
  *(a5 + 32) = v13;
  *(a5 + 40) = v8;
  *(a5 + 48) = v17;
  *(a5 + 88) = v34;
  *(a5 + 168) = v6;
  *(a5 + 176) = v19;
  *(a5 + 184) = v21;
  *(a5 + 192) = v23;
  *(a5 + 200) = v25;
  *(a5 + 208) = 0;
  *(a5 + 216) = v26;
  *(a5 + 224) = v27;
  *(a5 + 232) = v28;
  *(a5 + 240) = v29;
  *(a5 + 248) = v30;
  *(a5 + 256) = 0;
}

uint64_t sub_1001586A0()
{
  v1 = v0;
  v2 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v2 - 8);
  v4 = v19 - v3;
  v5 = sub_1000024C4(&qword_10022A358, &qword_1001C18A0);
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v4, v1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  static Animation.easeInOut.getter();
  Transaction.init(animation:)();
  sub_1000024C4(&qword_10022A360, &qword_1001C18A8);
  sub_1001593A0();
  AsyncImage.init(url:scale:transaction:content:)();
  v10 = type metadata accessor for ScrollAsset(0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = &v7[*(sub_1000024C4(&qword_10022A3A0, &qword_1001C18C8) + 36)];
  v12 = v19[1];
  *v11 = v19[0];
  *(v11 + 1) = v12;
  *(v11 + 2) = v19[2];
  *&v7[*(sub_1000024C4(&qword_10022A3A8, &unk_1001C18D0) + 36)] = 0;
  v13 = *(v1 + *(v10 + 28));
  v14 = &v7[*(v5 + 36)];
  v15 = *(type metadata accessor for RoundedRectangle() + 20);
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  v17 = type metadata accessor for RoundedCornerStyle();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  *v14 = v13;
  *(v14 + 1) = v13;
  *&v14[*(sub_1000024C4(&qword_100221C80, &qword_1001B6990) + 36)] = 256;
  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  sub_1001595FC();
  View.containerRelativeFrame(_:alignment:)();
  return sub_1000050C4(v7, &qword_10022A358, &qword_1001C18A0);
}

uint64_t sub_1001589C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v30 = sub_1000024C4(&qword_10022A3D8, &qword_1001C18F0);
  __chkstk_darwin(v30);
  v31 = &v27 - v3;
  v29 = sub_1000024C4(&qword_10022A3E0, &qword_1001C18F8);
  __chkstk_darwin(v29);
  v5 = &v27 - v4;
  v33 = sub_1000024C4(&qword_10022A378, &qword_1001C18B0);
  __chkstk_darwin(v33);
  v28 = &v27 - v6;
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000024C4(&qword_10022A388, &qword_1001C18B8);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for AsyncImagePhase();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for AsyncImagePhase.success(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
    v19 = Image.resizable(capInsets:resizingMode:)();
    (*(v8 + 8))(v10, v7);
    v34 = v19;
    v35 = 0;
    v36 = 1;
    v37 = 257;
    sub_1000024C4(&qword_10022A398, &qword_1001C18C0);
    sub_100159570();
    View.accessibilityIdentifier(_:)();

    sub_10000BEB8(v13, v5, &qword_10022A388, &qword_1001C18B8);
    swift_storeEnumTagMultiPayload();
    sub_1000024C4(&qword_1002282F0, &qword_1001BEC90);
    sub_1001594E4();
    sub_10000BFFC(&qword_1002282F8, &qword_1002282F0, &qword_1001BEC90, &protocol conformance descriptor for _ShapeView<A, B>);
    v20 = v28;
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v20, v31, &qword_10022A378, &qword_1001C18B0);
    swift_storeEnumTagMultiPayload();
    sub_10015942C();
    _ConditionalContent<>.init(storage:)();

    sub_1000050C4(v20, &qword_10022A378, &qword_1001C18B0);
    v21 = v13;
    v22 = &qword_10022A388;
    v23 = &qword_1001C18B8;
    return sub_1000050C4(v21, v22, v23);
  }

  v27 = v11;
  v24 = v31;
  if (v18 == enum case for AsyncImagePhase.failure(_:))
  {
    (*(v15 + 8))(v17, v14);
LABEL_6:
    if (qword_100220BA0 != -1)
    {
      swift_once();
    }

    *v5 = qword_1002390C0;
    *(v5 + 4) = 256;
    swift_storeEnumTagMultiPayload();
    swift_retain_n();
    sub_1000024C4(&qword_1002282F0, &qword_1001BEC90);
    sub_1001594E4();
    sub_10000BFFC(&qword_1002282F8, &qword_1002282F0, &qword_1001BEC90, &protocol conformance descriptor for _ShapeView<A, B>);
    v25 = v28;
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v25, v24, &qword_10022A378, &qword_1001C18B0);
    swift_storeEnumTagMultiPayload();
    sub_10015942C();
    _ConditionalContent<>.init(storage:)();

    v21 = v25;
    v22 = &qword_10022A378;
    v23 = &qword_1001C18B0;
    return sub_1000050C4(v21, v22, v23);
  }

  if (v18 == enum case for AsyncImagePhase.empty(_:))
  {
    goto LABEL_6;
  }

  swift_storeEnumTagMultiPayload();
  sub_10015942C();
  _ConditionalContent<>.init(storage:)();
  return (*(v15 + 8))(v17, v14);
}

void sub_1001590A4(uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  Image.init(_:bundle:)();
  (*(v6 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v5);
  v9 = Image.resizable(capInsets:resizingMode:)();

  (*(v6 + 8))(v8, v5);
  LOBYTE(v5) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  *a3 = v9;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = v5;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  *(a3 + 48) = v12;
  *(a3 + 56) = v13;
  *(a3 + 64) = 0;
  *(a3 + 65) = 0;
  *(a3 + 67) = 1;
}

double sub_10015922C@<D0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for RoundedRectangle() + 20);
  v5 = enum case for RoundedCornerStyle.continuous(_:);
  v6 = type metadata accessor for RoundedCornerStyle();
  (*(*(v6 - 8) + 104))(&a1[v4], v5, v6);
  *a1 = v3;
  *(a1 + 1) = v3;
  v7 = static Color.black.getter();
  v8 = sub_1000024C4(&qword_1002259F8, &qword_1001C1900);
  *&a1[*(v8 + 52)] = v7;
  *&a1[*(v8 + 56)] = 256;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v9 = &a1[*(sub_1000024C4(&qword_10022A3E8, &qword_1001C1908) + 36)];
  *v9 = v11;
  *(v9 + 1) = v12;
  result = *&v13;
  *(v9 + 2) = v13;
  return result;
}

unint64_t sub_1001593A0()
{
  result = qword_10022A368;
  if (!qword_10022A368)
  {
    sub_10000460C(&qword_10022A360, &qword_1001C18A8);
    sub_10015942C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A368);
  }

  return result;
}

unint64_t sub_10015942C()
{
  result = qword_10022A370;
  if (!qword_10022A370)
  {
    sub_10000460C(&qword_10022A378, &qword_1001C18B0);
    sub_1001594E4();
    sub_10000BFFC(&qword_1002282F8, &qword_1002282F0, &qword_1001BEC90, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A370);
  }

  return result;
}

unint64_t sub_1001594E4()
{
  result = qword_10022A380;
  if (!qword_10022A380)
  {
    sub_10000460C(&qword_10022A388, &qword_1001C18B8);
    sub_100159570();
    sub_10001B9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A380);
  }

  return result;
}

unint64_t sub_100159570()
{
  result = qword_10022A390;
  if (!qword_10022A390)
  {
    sub_10000460C(&qword_10022A398, &qword_1001C18C0);
    v3 = sub_100069870();
    sub_10005DDFC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A390);
  }

  return result;
}

unint64_t sub_1001595FC()
{
  result = qword_10022A3B0;
  if (!qword_10022A3B0)
  {
    sub_10000460C(&qword_10022A358, &qword_1001C18A0);
    sub_1001596B4();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80, &qword_1001B6990, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A3B0);
  }

  return result;
}

unint64_t sub_1001596B4()
{
  result = qword_10022A3B8;
  if (!qword_10022A3B8)
  {
    sub_10000460C(&qword_10022A3A8, &unk_1001C18D0);
    sub_10015976C();
    sub_10000BFFC(&qword_100226320, &qword_100226328, &qword_1001BC028, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A3B8);
  }

  return result;
}

unint64_t sub_10015976C()
{
  result = qword_10022A3C0;
  if (!qword_10022A3C0)
  {
    sub_10000460C(&qword_10022A3A0, &qword_1001C18C8);
    sub_10000BFFC(&qword_10022A3C8, &qword_10022A3D0, &unk_1001C18E0, &protocol conformance descriptor for AsyncImage<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A3C0);
  }

  return result;
}

uint64_t sub_100159824()
{
  sub_10000460C(&qword_10022A358, &qword_1001C18A0);
  sub_1001595FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001598FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100159980()
{
  result = qword_10022A410;
  if (!qword_10022A410)
  {
    sub_10000460C(&qword_10022A418, &qword_1001C1920);
    sub_10000BFFC(&qword_10022A420, &qword_10022A428, &qword_1001C1928, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A410);
  }

  return result;
}

unint64_t sub_100159A3C()
{
  result = qword_10022A430;
  if (!qword_10022A430)
  {
    sub_10000460C(&qword_10022A438, &qword_1001C1930);
    v3 = sub_100159AC8();
    sub_10005DDFC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A430);
  }

  return result;
}

unint64_t sub_100159AC8()
{
  result = qword_10022A440;
  if (!qword_10022A440)
  {
    sub_10000460C(&qword_10022A448, &qword_1001C1938);
    sub_1001598FC(&qword_10022A450, &qword_10022A458, &unk_1001C1940, sub_100069870);
    sub_10000BFFC(&qword_100226320, &qword_100226328, &qword_1001BC028, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A440);
  }

  return result;
}

unint64_t sub_100159BB0()
{
  result = qword_10022A460;
  if (!qword_10022A460)
  {
    sub_10000460C(&qword_10022A3E8, &qword_1001C1908);
    sub_10000BFFC(qword_10022A468, &qword_1002259F8, &qword_1001C1900, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A460);
  }

  return result;
}

uint64_t sub_100159C68(uint64_t a1)
{
  type metadata accessor for Array();

  swift_getWitnessTable();
  return _ArrayProtocol.filter(_:)();
}

void sub_100159D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B49A0;
  v9 = *v3;
  v8 = v3[1];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v9;
  *(inited + 48) = v8;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = 11;
  *(inited + 136) = &type metadata for AnalyticsModuleAction;
  *(inited + 144) = &off_100228BA8;
  *(inited + 112) = a1;
  *(inited + 120) = a2;
  *(inited + 128) = 1;
  if (*(a3 + 72))
  {
    v10 = *(a3 + 64);
    v11 = *(a3 + 72);
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v18 = v10;
  v19 = v11;

  v12 = sub_1001894F4(1, 4, 1, inited);
  v16 = v12;
  sub_100006C98(&aBlock, v23);
  sub_100118768(3, v23, &v16, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v13 = String._bridgeToObjectiveC()();
  v14 = swift_allocObject();
  v14[2] = 0xD00000000000001ELL;
  v14[3] = 0x80000001001C4640;
  v14[4] = v12;
  v21 = sub_100026FEC;
  v22 = v14;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10015B4A4;
  v20 = &unk_1002192A8;
  v15 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v15);
}

void sub_100159F74(uint64_t a1)
{
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  v5 = *v1;
  v4 = v1[1];
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v5;
  *(inited + 48) = v4;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = 11;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = 0;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = xmmword_1001BB880;
  *(inited + 168) = 3;
  if (*(a1 + 72))
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v14 = v6;
  v15 = v7;

  v8 = sub_1001894F4(1, 5, 1, inited);
  v12 = v8;
  sub_100006C98(&aBlock, v19);
  sub_100118768(4, v19, &v12, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v9 = String._bridgeToObjectiveC()();
  v10 = swift_allocObject();
  v10[2] = 0xD00000000000001ELL;
  v10[3] = 0x80000001001C4640;
  v10[4] = v8;
  v17 = sub_100006D88;
  v18 = v10;
  aBlock = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10015B4A4;
  v16 = &unk_100219258;
  v11 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v11);
}

void sub_10015A1D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v32[0] = a5;
  v32[1] = a6;
  v32[2] = a7;
  v32[3] = a8;
  v12 = type metadata accessor for TicketViewModel(0, v32);
  v13 = v12[13];
  v14 = type metadata accessor for Optional();
  (*(*(v14 - 8) + 32))(&a9[v13], a3, v14);
  *&a9[v12[14]] = a4;
  v15 = &a9[v12[15]];
  *v15 = LocalizedStringKey.init(stringLiteral:)();
  *(v15 + 1) = v16;
  v15[16] = v17 & 1;
  *(v15 + 3) = v18;
  v19 = &a9[v12[16]];
  *v19 = LocalizedStringKey.init(stringLiteral:)();
  *(v19 + 1) = v20;
  v19[16] = v21 & 1;
  *(v19 + 3) = v22;
  v23 = &a9[v12[17]];
  *v23 = LocalizedStringKey.init(stringLiteral:)();
  *(v23 + 1) = v24;
  v23[16] = v25 & 1;
  *(v23 + 3) = v26;
  v27 = &a9[v12[18]];
  v28 = [objc_opt_self() mainBundle];
  v33._object = 0xE000000000000000;
  v29._object = 0x80000001001C84C0;
  v29._countAndFlagsBits = 0xD00000000000001DLL;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v33._countAndFlagsBits = 0;
  v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v33);

  *v27 = v31;
}

uint64_t sub_10015A3AC(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Array();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10015A464(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((((((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_10015A604(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

uint64_t sub_10015A888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - v13;
  (*(a6 + 32))(a4, a6);
  v22 = String.lowercased()();

  v23[0] = a3;
  v23[1] = a4;
  v23[2] = a5;
  v23[3] = a6;
  v15 = type metadata accessor for TicketViewModel(0, v23);
  (*(v12 + 16))(v14, a2 + *(v15 + 52), v11);
  v16 = *(a3 - 8);
  if ((*(v16 + 48))(v14, 1, a3) == 1)
  {
    (*(v12 + 8))(v14, v11);

    v17 = 1;
  }

  else
  {
    (*(a5 + 16))(a3, a5);
    (*(v16 + 8))(v14, a3);
    v18 = String.lowercased()();

    if (v22._countAndFlagsBits == v18._countAndFlagsBits && v22._object == v18._object)
    {

      v17 = 0;
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v17 = v20 ^ 1;
    }
  }

  return v17 & 1;
}

double sub_10015AAFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10015AB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10015AB84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10015ABCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10015AC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a3;
  v28 = a4;
  v26 = a2;
  v29 = a1;
  v30 = a7;
  v24 = a6;
  type metadata accessor for SafeAreaModifier(255, a5, a6, a4);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_10000460C(&qword_1002267C8, &unk_1001BC790);
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();
  v35 = sub_1000E6518();
  WitnessTable = swift_getWitnessTable();
  v25 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  v23[1] = swift_getWitnessTable();
  v23[2] = type metadata accessor for _BackgroundModifier();
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v23 - v13;
  v15 = swift_allocObject();
  v16 = v24;
  v15[2] = a5;
  v15[3] = v16;
  v17 = v27;
  v15[4] = v26;
  v15[5] = v17;
  v15[6] = v28;

  v33 = GeometryReader.init(content:)();
  v34 = v18;
  static Alignment.center.getter();
  v19 = swift_getWitnessTable();
  View.background<A>(_:alignment:)();

  v20 = swift_getWitnessTable();
  v31 = v19;
  v32 = v20;
  swift_getWitnessTable();
  sub_1000EE87C();
  v21 = *(v9 + 8);
  v21(v12, v8);
  sub_1000EE87C();
  return (v21)(v14, v8);
}

uint64_t sub_10015AFC4@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v23[4] = a3;
  v25 = a1;
  v26 = a6;
  v23[1] = a4;
  v23[2] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = v23 - v8;
  v23[0] = sub_10000460C(&qword_1002267C8, &unk_1001BC790);
  v23[3] = type metadata accessor for _PreferenceWritingModifier();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v23 - v15;
  v17 = static Color.clear.getter();
  KeyPath = swift_getKeyPath();
  v30 = v17;
  v18 = GeometryProxy.safeAreaInsets.getter();
  a2(v18);
  v19 = sub_1000E6518();
  View.preference<A>(key:value:)();
  (*(v7 + 8))(v9, AssociatedTypeWitness);

  WitnessTable = swift_getWitnessTable();
  v27 = v19;
  v28 = WitnessTable;
  swift_getWitnessTable();
  sub_1000EE87C();
  v21 = *(v11 + 8);
  v21(v14, v10);
  sub_1000EE87C();
  return (v21)(v16, v10);
}

uint64_t sub_10015B2AC()
{

  return swift_deallocObject();
}

uint64_t sub_10015B2FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SafeAreaModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_10000460C(&qword_1002267C8, &unk_1001BC790);
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();
  sub_1000E6518();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  swift_getWitnessTable();
  type metadata accessor for _BackgroundModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

Class sub_10015B4A4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100007C60();
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void sub_10015B530(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = a3;
  if (*(a4 + 72))
  {
    v9 = *(a4 + 64);
    v10 = *(a4 + 72);
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = sub_1001894F4(1, 3, 1, inited);
  v17 = &type metadata for AnalyticsString;
  v18 = &off_100228B70;
  LOBYTE(aBlock) = 1;
  *(&aBlock + 1) = v9;
  v16 = v10;
  v11[2] = 3;
  sub_10002FF68(&aBlock, (v11 + 14));
  v12 = String._bridgeToObjectiveC()();
  v13 = swift_allocObject();
  v13[2] = 0xD00000000000001CLL;
  v13[3] = 0x80000001001C84E0;
  v13[4] = v11;
  v18 = sub_10015B784;
  v19 = v13;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v16 = sub_10015B4A4;
  v17 = &unk_100219378;
  v14 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v14);
}

uint64_t sub_10015B744()
{

  return swift_deallocObject();
}

double sub_10015B7A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void *sub_10015B7BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v2 = a1 + 32;
  v3 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    sub_10002FF80(v2, v37);
    v7 = v38;
    v8 = v39;
    sub_10001BED0(v37, v38);
    v9 = (*(v8 + 16))(v7, v8);
    if (v9 <= 1)
    {
      if (v9)
      {
        v11 = 0xE800000000000000;
        v10 = 0x4449656C646E7562;
        if (!v3[2])
        {
LABEL_19:

          goto LABEL_20;
        }
      }

      else
      {
        v11 = 0xE200000000000000;
        v10 = 25705;
        if (!v3[2])
        {
          goto LABEL_19;
        }
      }
    }

    else if (v9 == 2)
    {
      v11 = 0xE800000000000000;
      v10 = 0x656D614E65676170;
      if (!v3[2])
      {
        goto LABEL_19;
      }
    }

    else if (v9 == 3)
    {
      v10 = 0x614E656C75646F6DLL;
      v11 = 0xEA0000000000656DLL;
      if (!v3[2])
      {
        goto LABEL_19;
      }
    }

    else
    {
      v10 = 0x6341656C75646F6DLL;
      v11 = 0xEC0000006E6F6974;
      if (!v3[2])
      {
        goto LABEL_19;
      }
    }

    sub_10005846C(v10, v11);
    v13 = v12;

    if (v13)
    {
      goto LABEL_4;
    }

LABEL_20:
    v14 = v38;
    v15 = v39;
    sub_10001BED0(v37, v38);
    v16 = (*(v15 + 16))(v14, v15);
    if (v16 <= 1)
    {
      v17 = v16 ? 0x4449656C646E7562 : 25705;
      v18 = v16 ? 0xE800000000000000 : 0xE200000000000000;
    }

    else if (v16 == 2)
    {
      v18 = 0xE800000000000000;
      v17 = 0x656D614E65676170;
    }

    else if (v16 == 3)
    {
      v17 = 0x614E656C75646F6DLL;
      v18 = 0xEA0000000000656DLL;
    }

    else
    {
      v17 = 0x6341656C75646F6DLL;
      v18 = 0xEC0000006E6F6974;
    }

    v19 = v38;
    v20 = v39;
    sub_10001BED0(v37, v38);
    v21 = (*(v20 + 32))(v19, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v3;
    v23 = sub_10005846C(v17, v18);
    v25 = v3[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      break;
    }

    v29 = v24;
    if (v3[3] < v28)
    {
      sub_1001A92DC(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_10005846C(v17, v18);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_46;
      }

LABEL_37:
      if (v29)
      {
        goto LABEL_3;
      }

      goto LABEL_38;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_37;
    }

    v34 = v23;
    sub_1001A99F4();
    v23 = v34;
    if (v29)
    {
LABEL_3:
      v4 = v23;

      v3 = v36;
      v5 = v36[7];
      v6 = *(v5 + 8 * v4);
      *(v5 + 8 * v4) = v21;

      goto LABEL_4;
    }

LABEL_38:
    v3 = v36;
    v36[(v23 >> 6) + 8] |= 1 << v23;
    v31 = (v36[6] + 16 * v23);
    *v31 = v17;
    v31[1] = v18;
    *(v36[7] + 8 * v23) = v21;
    v32 = v36[2];
    v27 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v27)
    {
      goto LABEL_45;
    }

    v36[2] = v33;
LABEL_4:
    sub_100012A7C(v37);
    v2 += 40;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

__n128 sub_10015BB5C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10015BB80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10015BBC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10015BC48()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 40);
  if (v5)
  {
    if (*(v5 + 88) && *(v5 + 80) == 1)
    {
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v6 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v7 = [objc_opt_self() currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if (v8 == 1)
    {
      v15 = *(v0 + 64);
      v9 = *(v0 + 56);
      v14 = v9;
      if (v15 != 1)
      {

        static os_log_type_t.fault.getter();
        v10 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000050C4(&v14, &qword_10022A5D8, &qword_1001C1C00);
        (*(v2 + 8))(v4, v1);
        LOBYTE(v9) = v13[15];
      }

      v11 = v9 ^ 1;
      return v11 & 1;
    }

LABEL_11:
    v11 = 0;
    return v11 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10015ED88(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10015BED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ScrollViewProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  static Axis.Set.horizontal.getter();
  v16 = a2;
  sub_1000024C4(&qword_10022A580, &qword_1001C1BB0);
  sub_10015C7E0();
  ScrollView.init(_:showsIndicators:content:)();
  (*(v7 + 16))(&v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v9 = (*(v7 + 80) + 81) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v11 = *(a2 + 48);
  *(v10 + 48) = *(a2 + 32);
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a2 + 64);
  v12 = *(a2 + 16);
  *(v10 + 16) = *a2;
  *(v10 + 32) = v12;
  (*(v7 + 32))(v10 + v9, &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v13 = (a3 + *(sub_1000024C4(&qword_10022A5A0, &qword_1001C1BC0) + 36));
  *v13 = sub_10015C988;
  v13[1] = v10;
  v13[2] = 0;
  v13[3] = 0;
  return sub_10010A470(a2, v17);
}

uint64_t sub_10015C0AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_1000024C4(&qword_10022A598, &qword_1001C1BB8);
  __chkstk_darwin(v3 - 8);
  v5 = v24 - v4;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0x4020000000000000;
  v5[16] = 0;
  v24[1] = *(sub_1000024C4(&qword_10022A5A8, &unk_1001C1BC8) + 44);
  v27 = *a1;
  v28 = v27;
  swift_getKeyPath();
  v6 = swift_allocObject();
  v7 = *(a1 + 3);
  *(v6 + 48) = *(a1 + 2);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(a1 + 64);
  v8 = *(a1 + 1);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  sub_10000BEB8(&v28, v26, &qword_10022A5B0, &qword_1001C1BF0);
  sub_10010A470(a1, v26);
  sub_1000024C4(&qword_10022A5B0, &qword_1001C1BF0);
  sub_1000024C4(&qword_10022A5B8, &qword_1001C1BF8);
  v9 = sub_10000BFFC(&qword_10022A5C0, &qword_10022A5B0, &qword_1001C1BF0, &protocol conformance descriptor for [A]);
  sub_10015E190(v9, v10, v11);
  sub_10000BFFC(&qword_10022A5D0, &qword_10022A5B8, &qword_1001C1BF8, &protocol conformance descriptor for IDView<A, B>);
  ForEach<>.init(_:id:content:)();
  v12 = static Edge.Set.horizontal.getter();
  sub_10015BC48();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v25;
  sub_10001AE00(v5, v25, &qword_10022A598, &qword_1001C1BB8);
  result = sub_1000024C4(&qword_10022A580, &qword_1001C1BB0);
  v23 = v21 + *(result + 36);
  *v23 = v12;
  *(v23 + 8) = v14;
  *(v23 + 16) = v16;
  *(v23 + 24) = v18;
  *(v23 + 32) = v20;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_10015C348@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TabButton(0);
  __chkstk_darwin(v6);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = sub_1000024C4(&qword_10022A5B8, &qword_1001C1BF8);
  __chkstk_darwin(v9);
  v11 = &v25[-v10 - 8];
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a2 + 16);
  if (v14 == 1)
  {
    if (v13 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (!v14)
  {
    if (!v13)
    {
LABEL_11:
      v15 = 1;
      goto LABEL_12;
    }

LABEL_8:
    v15 = 0;
    goto LABEL_12;
  }

  if (v13 < 2)
  {
    goto LABEL_8;
  }

  if (*(a2 + 8) == v12 && v14 == v13)
  {
    goto LABEL_11;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_12:
  v16 = swift_allocObject();
  v17 = *(a2 + 48);
  *(v16 + 48) = *(a2 + 32);
  *(v16 + 64) = v17;
  *(v16 + 80) = *(a2 + 64);
  v18 = *(a2 + 16);
  *(v16 + 16) = *a2;
  *(v16 + 32) = v18;
  *(v16 + 88) = v12;
  *(v16 + 96) = v13;
  *v8 = v12;
  *(v8 + 1) = v13;
  v8[16] = v15 & 1;
  *(v8 + 3) = sub_10015E2A4;
  *(v8 + 4) = v16;
  v19 = *(v6 + 28);
  *&v8[v19] = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C8, &qword_1001B6B60);
  swift_storeEnumTagMultiPayload();
  if (v13)
  {
    if (v13 == 1)
    {
      v20 = 0xEF6E6F697461636FLL;
      v21 = 0x4C746E6572727563;
    }

    else
    {
      v21 = v12;
      v20 = v13;
    }
  }

  else
  {
    v20 = 0xE300000000000000;
    v21 = 7105633;
  }

  sub_10015E2D8(v8, v11);
  v22 = &v11[*(v9 + 52)];
  *v22 = v21;
  v22[1] = v20;
  sub_10001AE00(v11, a3, &qword_10022A5B8, &qword_1001C1BF8);
  sub_1000088D0(v12, v13);
  sub_1000088D0(v12, v13);
  sub_1000088D0(v12, v13);
  return sub_10010A470(a2, v25);
}

void sub_10015C5D4(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *a1;

    v4 = sub_1001AC180(v3, v2);
    v6 = v5;

    if (v6 != 2)
    {
      (*(a1 + 24))(v4, v6);
      if (v6)
      {
        if (v6 == 1)
        {
          sub_10015E114(v4, 1uLL);
        }
      }

      else
      {
        sub_10015E114(v4, 0);
      }

      static UnitPoint.trailing.getter();
      ScrollViewProxy.scrollTo<A>(_:anchor:)();
    }
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10015ED88(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_10015C740@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v3;
  v11 = *(v1 + 64);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = swift_allocObject();
  v6 = *(v1 + 48);
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(v1 + 64);
  v7 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v7;
  *a1 = sub_10015C7D0;
  a1[1] = v5;
  return sub_10010A470(v10, v9);
}

unint64_t sub_10015C7E0()
{
  result = qword_10022A588;
  if (!qword_10022A588)
  {
    sub_10000460C(&qword_10022A580, &qword_1001C1BB0);
    sub_10000BFFC(&qword_10022A590, &qword_10022A598, &qword_1001C1BB8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A588);
  }

  return result;
}

uint64_t sub_10015C898()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  if (*(v0 + 32) >= 2uLL)
  {
  }

  sub_10001BC5C(*(v0 + 72), *(v0 + 80));
  (*(v2 + 8))(v0 + ((v3 + 81) & ~v3), v1);

  return swift_deallocObject();
}

void sub_10015C988()
{
  type metadata accessor for ScrollViewProxy();

  sub_10015C5D4(v0 + 16);
}

void sub_10015C9EC()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0xE000000000000000;
  v1._object = 0x80000001001C8580;
  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_10022A570 = v3;
}

uint64_t sub_10015CA90@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_1000024C4(&qword_10022A688, &qword_1001C1CA0);
  __chkstk_darwin(v2);
  v4 = &v22 - v3;
  v23 = sub_1000024C4(&qword_10022A690, &qword_1001C1CA8);
  __chkstk_darwin(v23);
  v22 = &v22 - v5;
  v26 = sub_1000024C4(&qword_10022A698, &qword_1001C1CB0);
  __chkstk_darwin(v26);
  v7 = &v22 - v6;
  v8 = sub_1000024C4(&qword_10022A6A0, &qword_1001C1CB8);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v25 = sub_1000024C4(&qword_10022A6A8, &qword_1001C1CC0);
  __chkstk_darwin(v25);
  v12 = &v22 - v11;
  v13 = sub_1000024C4(&qword_10022A6B0, &qword_1001C1CC8);
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  v24 = sub_1000024C4(&qword_10022A6B8, &qword_1001C1CD0);
  __chkstk_darwin(v24);
  v17 = &v22 - v16;
  v18 = v1[1];
  if (v18)
  {
    if (v18 == 1)
    {
      sub_10015D560(v4);
      sub_10015E98C();
      v19 = v22;
      View.accessibilityIdentifier(_:)();
      sub_1000050C4(v4, &qword_10022A688, &qword_1001C1CA0);
      sub_10000BEB8(v19, v10, &qword_10022A690, &qword_1001C1CA8);
      swift_storeEnumTagMultiPayload();
      sub_10015E8D8(&qword_10022A700, &qword_10022A6B8, &qword_1001C1CD0, sub_10015E5CC);
      sub_10015E8D8(&qword_10022A708, &qword_10022A690, &qword_1001C1CA8, sub_10015E98C);
      _ConditionalContent<>.init(storage:)();
      sub_10000BEB8(v12, v7, &qword_10022A6A8, &qword_1001C1CC0);
      swift_storeEnumTagMultiPayload();
      sub_10015E7F4();
      _ConditionalContent<>.init(storage:)();
      sub_1000050C4(v12, &qword_10022A6A8, &qword_1001C1CC0);
      return sub_1000050C4(v19, &qword_10022A690, &qword_1001C1CA8);
    }

    sub_10015D144(*v1, v18, v15);
    sub_10015E5CC();
    View.accessibilityIdentifier(_:)();
    sub_1000050C4(v15, &qword_10022A6B0, &qword_1001C1CC8);
    sub_10000BEB8(v17, v7, &qword_10022A6B8, &qword_1001C1CD0);
    swift_storeEnumTagMultiPayload();
    sub_10015E7F4();
    sub_10015E8D8(&qword_10022A700, &qword_10022A6B8, &qword_1001C1CD0, sub_10015E5CC);
    _ConditionalContent<>.init(storage:)();
    v21 = v17;
  }

  else
  {
    if (qword_100220C28 != -1)
    {
      swift_once();
    }

    sub_10015D144(xmmword_10022A570, *(&xmmword_10022A570 + 1), v15);
    sub_10015E5CC();
    View.accessibilityIdentifier(_:)();
    sub_1000050C4(v15, &qword_10022A6B0, &qword_1001C1CC8);
    sub_10000BEB8(v17, v10, &qword_10022A6B8, &qword_1001C1CD0);
    swift_storeEnumTagMultiPayload();
    sub_10015E8D8(&qword_10022A700, &qword_10022A6B8, &qword_1001C1CD0, sub_10015E5CC);
    sub_10015E8D8(&qword_10022A708, &qword_10022A690, &qword_1001C1CA8, sub_10015E98C);
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v12, v7, &qword_10022A6A8, &qword_1001C1CC0);
    swift_storeEnumTagMultiPayload();
    sub_10015E7F4();
    _ConditionalContent<>.init(storage:)();
    sub_1000050C4(v12, &qword_10022A6A8, &qword_1001C1CC0);
    v21 = v17;
  }

  return sub_1000050C4(v21, &qword_10022A6B8, &qword_1001C1CD0);
}

uint64_t sub_10015D144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v41 = type metadata accessor for ColorScheme();
  v6 = *(v41 - 8);
  v7 = __chkstk_darwin(v41);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v41 - v10;
  v12 = sub_1000024C4(&qword_10022A6E0, &qword_1001C1CE0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  v42 = sub_1000024C4(&qword_10022A6D0, &qword_1001C1CD8);
  __chkstk_darwin(v42);
  v43 = &v41 - v16;
  v45 = a1;
  v46 = a2;
  v47 = v3;

  sub_1000024C4(&qword_100223488, &unk_1001B73B0);
  sub_10005D968();
  Button.init(action:label:)();
  LOBYTE(a1) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v17 = &v15[*(v13 + 44)];
  *v17 = a1;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  if (*(v3 + 16) == 1)
  {
    v22 = static Color.primary.getter();
  }

  else
  {
    type metadata accessor for TabButton(0);
    sub_100039EE0(v11);
    v23 = v41;
    (*(v6 + 104))(v9, enum case for ColorScheme.light(_:), v41);
    v24 = static ColorScheme.== infix(_:_:)();
    v25 = *(v6 + 8);
    v25(v9, v23);
    v25(v11, v23);
    v26 = objc_opt_self();
    if (v24)
    {
      v27 = [v26 systemGray6Color];
    }

    else
    {
      v27 = [v26 systemGray5Color];
    }

    v28 = v27;
    v22 = Color.init(uiColor:)();
  }

  v29 = v22;
  v30 = v43;
  v31 = static Edge.Set.all.getter();
  sub_10001AE00(v15, v30, &qword_10022A6E0, &qword_1001C1CE0);
  v32 = v30 + *(v42 + 36);
  *v32 = v29;
  *(v32 + 8) = v31;
  if (qword_100220BC8 != -1)
  {
    swift_once();
  }

  v33 = qword_1002390E0;
  v34 = sub_1000024C4(&qword_10022A6B0, &qword_1001C1CC8);
  v35 = v44;
  v36 = (v44 + *(v34 + 36));
  v37 = *(type metadata accessor for RoundedRectangle() + 20);
  v38 = enum case for RoundedCornerStyle.continuous(_:);
  v39 = type metadata accessor for RoundedCornerStyle();
  (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
  *v36 = v33;
  v36[1] = v33;
  *(v36 + *(sub_1000024C4(&qword_100221C80, &qword_1001B6990) + 36)) = 256;
  return sub_10001AE00(v30, v35, &qword_10022A6D0, &qword_1001C1CD8);
}

uint64_t sub_10015D560@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v88 = type metadata accessor for AccessibilityTraits();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for ColorScheme();
  v68 = *(v69 - 8);
  v3 = __chkstk_darwin(v69);
  v67 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v66 = &v66 - v5;
  v6 = type metadata accessor for TitleAndIconLabelStyle();
  v7 = *(v6 - 8);
  v78 = v6;
  v79 = v7;
  __chkstk_darwin(v6);
  v76 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SymbolVariants();
  v74 = *(v9 - 8);
  v75 = v9;
  __chkstk_darwin(v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000024C4(&qword_10022A770, &qword_1001C1D20);
  __chkstk_darwin(v12 - 8);
  v14 = &v66 - v13;
  v15 = type metadata accessor for LocationButton();
  v71 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000024C4(&qword_10022A758, &unk_1001C1D10);
  v19 = *(v18 - 8);
  v72 = v18;
  v73 = v19;
  __chkstk_darwin(v18);
  v21 = &v66 - v20;
  v22 = sub_1000024C4(&qword_10022A750, &qword_1001C1D08);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v70 = &v66 - v24;
  v77 = sub_1000024C4(&qword_10022A740, &qword_1001C1D00);
  __chkstk_darwin(v77);
  v81 = &v66 - v25;
  v80 = sub_1000024C4(&qword_10022A730, &qword_1001C1CF8);
  __chkstk_darwin(v80);
  v82 = &v66 - v26;
  v83 = sub_1000024C4(&qword_10022A720, &qword_1001C1CF0);
  __chkstk_darwin(v83);
  v84 = &v66 - v27;
  static LocationButton.Title.currentLocation.getter();
  v28 = type metadata accessor for LocationButton.Title();
  (*(*(v28 - 8) + 56))(v14, 0, 1, v28);

  LocationButton.init(_:action:)();
  static SymbolVariants.fill.getter();
  v29 = sub_10015ED88(&qword_10022A760, &type metadata accessor for LocationButton, &protocol conformance descriptor for LocationButton);
  View.symbolVariant(_:)();
  (*(v74 + 8))(v11, v75);
  (*(v71 + 8))(v17, v15);
  v30 = v76;
  TitleAndIconLabelStyle.init()();
  v89 = v15;
  v90 = v29;
  swift_getOpaqueTypeConformance2();
  sub_10015ED88(&qword_10022A768, &type metadata accessor for TitleAndIconLabelStyle, &protocol conformance descriptor for TitleAndIconLabelStyle);
  v31 = v70;
  v32 = v72;
  v33 = v78;
  View.labelStyle<A>(_:)();
  (*(v79 + 8))(v30, v33);
  (*(v73 + 8))(v21, v32);
  v34 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  v36 = &v31[*(v23 + 44)];
  *v36 = KeyPath;
  v36[1] = v34;
  v37 = *(v1 + 16);
  if (v37 == 1)
  {
    if (qword_100220B88 != -1)
    {
      swift_once();
    }

    v38 = qword_1002390A8;
  }

  else
  {
    v38 = static Color.primary.getter();
  }

  v39 = v82;
  v40 = swift_getKeyPath();
  v41 = v31;
  v42 = v81;
  sub_10001AE00(v41, v81, &qword_10022A750, &qword_1001C1D08);
  v43 = (v42 + *(v77 + 36));
  *v43 = v40;
  v43[1] = v38;
  if (v37)
  {
    v44 = static Color.primary.getter();
  }

  else
  {
    type metadata accessor for TabButton(0);
    v45 = v66;
    sub_100039EE0(v66);
    v46 = v68;
    v47 = v67;
    v48 = v69;
    (*(v68 + 104))(v67, enum case for ColorScheme.light(_:), v69);
    v49 = static ColorScheme.== infix(_:_:)();
    v50 = *(v46 + 8);
    v50(v47, v48);
    v50(v45, v48);
    v51 = objc_opt_self();
    if (v49)
    {
      v52 = [v51 systemGray6Color];
    }

    else
    {
      v52 = [v51 systemGray5Color];
    }

    v53 = v52;
    v44 = Color.init(uiColor:)();
  }

  v54 = v44;
  v55 = swift_getKeyPath();
  v89 = v54;
  v56 = AnyShapeStyle.init<A>(_:)();
  sub_10001AE00(v42, v39, &qword_10022A740, &qword_1001C1D00);
  v57 = (v39 + *(v80 + 36));
  *v57 = v55;
  v57[1] = v56;
  if (qword_100220BC8 != -1)
  {
    swift_once();
  }

  v58 = qword_1002390E0;
  v59 = v84;
  v60 = &v84[*(v83 + 36)];
  v61 = *(type metadata accessor for RoundedRectangle() + 20);
  v62 = enum case for RoundedCornerStyle.continuous(_:);
  v63 = type metadata accessor for RoundedCornerStyle();
  (*(*(v63 - 8) + 104))(v60 + v61, v62, v63);
  *v60 = v58;
  v60[1] = v58;
  *(v60 + *(sub_1000024C4(&qword_100221C80, &qword_1001B6990) + 36)) = 256;
  sub_10001AE00(v39, v59, &qword_10022A730, &qword_1001C1CF8);
  v64 = v85;
  static AccessibilityTraits.isButton.getter();
  sub_10015E9BC();
  View.accessibility(addTraits:)();
  (*(v86 + 8))(v64, v88);
  return sub_1000050C4(v59, &qword_10022A720, &qword_1001C1CF0);
}

double sub_10015DF6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_10001877C(a1, a2, a3);

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Font.footnote.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  sub_100017398(v5, v7, v9 & 1);

  if (*(a3 + 16) == 1)
  {
    v15 = [objc_opt_self() systemBackgroundColor];
    Color.init(uiColor:)();
  }

  else
  {
    static Color.primary.getter();
  }

  v16 = Text.foregroundStyle<A>(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_100017398(v10, v12, v14 & 1);

  v23 = static Edge.Set.horizontal.getter();
  *a4 = v16;
  *(a4 + 8) = v18;
  *(a4 + 16) = v20 & 1;
  *(a4 + 24) = v22;
  *(a4 + 32) = v23;
  result = 0.0;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 1;
  return result;
}

uint64_t sub_10015E114(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_10004921C(a1, a2);
  }

  return a1;
}

uint64_t sub_10015E124()
{

  if (*(v0 + 32) >= 2uLL)
  {
  }

  sub_10001BC5C(*(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

unint64_t sub_10015E190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10022A5C8;
  if (!qword_10022A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A5C8);
  }

  return result;
}

uint64_t type metadata accessor for TabButton(uint64_t a1)
{
  result = qword_10022A638;
  if (!qword_10022A638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10015E230()
{

  if (*(v0 + 32) >= 2uLL)
  {
  }

  sub_10001BC5C(*(v0 + 72), *(v0 + 80));
  if (*(v0 + 96) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10015E2D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015E350(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000024C4(&qword_100221B80, &unk_1001B72D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10015E420(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000024C4(&qword_100221B80, &unk_1001B72D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10015E4D0(uint64_t a1)
{
  sub_100023D44();
  if (v1 <= 0x3F)
  {
    sub_10001B7F8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10015E5CC()
{
  result = qword_10022A6C0;
  if (!qword_10022A6C0)
  {
    sub_10000460C(&qword_10022A6B0, &qword_1001C1CC8);
    sub_10015E684();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80, &qword_1001B6990, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A6C0);
  }

  return result;
}

unint64_t sub_10015E684()
{
  result = qword_10022A6C8;
  if (!qword_10022A6C8)
  {
    sub_10000460C(&qword_10022A6D0, &qword_1001C1CD8);
    sub_10015E73C();
    sub_10000BFFC(&qword_100221D50, &qword_100221D58, &unk_1001B6980, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A6C8);
  }

  return result;
}

unint64_t sub_10015E73C()
{
  result = qword_10022A6D8;
  if (!qword_10022A6D8)
  {
    sub_10000460C(&qword_10022A6E0, &qword_1001C1CE0);
    sub_10000BFFC(&qword_10022A6E8, &qword_10022A6F0, &qword_1001C1CE8, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A6D8);
  }

  return result;
}

unint64_t sub_10015E7F4()
{
  result = qword_10022A6F8;
  if (!qword_10022A6F8)
  {
    sub_10000460C(&qword_10022A6A8, &qword_1001C1CC0);
    sub_10015E8D8(&qword_10022A700, &qword_10022A6B8, &qword_1001C1CD0, sub_10015E5CC);
    sub_10015E8D8(&qword_10022A708, &qword_10022A690, &qword_1001C1CA8, sub_10015E98C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A6F8);
  }

  return result;
}

uint64_t sub_10015E8D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2, a3);
    a4();
    sub_10015ED88(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10015E9BC()
{
  result = qword_10022A718;
  if (!qword_10022A718)
  {
    sub_10000460C(&qword_10022A720, &qword_1001C1CF0);
    sub_10015EA74();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80, &qword_1001B6990, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A718);
  }

  return result;
}

unint64_t sub_10015EA74()
{
  result = qword_10022A728;
  if (!qword_10022A728)
  {
    sub_10000460C(&qword_10022A730, &qword_1001C1CF8);
    sub_10015EB2C();
    sub_10000BFFC(&qword_100225800, &qword_100225808, &qword_1001BAEC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A728);
  }

  return result;
}

unint64_t sub_10015EB2C()
{
  result = qword_10022A738;
  if (!qword_10022A738)
  {
    sub_10000460C(&qword_10022A740, &qword_1001C1D00);
    sub_10015EBE4();
    sub_10000BFFC(&qword_1002238C0, &qword_1002238C8, &unk_1001BA4F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A738);
  }

  return result;
}

unint64_t sub_10015EBE4()
{
  result = qword_10022A748;
  if (!qword_10022A748)
  {
    sub_10000460C(&qword_10022A750, &qword_1001C1D08);
    sub_10000460C(&qword_10022A758, &unk_1001C1D10);
    type metadata accessor for TitleAndIconLabelStyle();
    type metadata accessor for LocationButton();
    sub_10015ED88(&qword_10022A760, &type metadata accessor for LocationButton, &protocol conformance descriptor for LocationButton);
    swift_getOpaqueTypeConformance2();
    sub_10015ED88(&qword_10022A768, &type metadata accessor for TitleAndIconLabelStyle, &protocol conformance descriptor for TitleAndIconLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_10000BFFC(&qword_100222260, &qword_100222268, &unk_1001B6970, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A748);
  }

  return result;
}

uint64_t sub_10015ED88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10015EDF8()
{
  result = qword_10022A778;
  if (!qword_10022A778)
  {
    sub_10000460C(&qword_10022A780, &unk_1001C1DC0);
    sub_10015E7F4();
    sub_10015E8D8(&qword_10022A700, &qword_10022A6B8, &qword_1001C1CD0, sub_10015E5CC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A778);
  }

  return result;
}

uint64_t sub_10015EEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000024C4(qword_100224528, &unk_1001B8F10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10015EFB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000024C4(qword_100224528, &unk_1001B8F10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for LoadingView(uint64_t a1)
{
  result = qword_10022A800;
  if (!qword_10022A800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10015F0C0(uint64_t a1)
{
  sub_100082DA0(319);
  if (v1 <= 0x3F)
  {
    sub_100017044(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10015F160()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_10022A788 = result;
  unk_10022A790 = v1;
  byte_10022A798 = v2 & 1;
  qword_10022A7A0 = v3;
  return result;
}

uint64_t sub_10015F1A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  v5 = sub_1000024C4(&qword_10022A858, &qword_1001C1E40);
  sub_10015F234(a1, (a2 + *(v5 + 44)));
  v6 = static SafeAreaRegions.all.getter();
  v7 = static Edge.Set.all.getter();
  result = sub_1000024C4(&qword_10022A838, &qword_1001C1E30);
  v9 = a2 + *(result + 36);
  *v9 = v6;
  v9[8] = v7;
  return result;
}

double sub_10015F234@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a1;
  v29 = a2;
  v2 = sub_1000024C4(&qword_10022A860, &qword_1001C1E48);
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v4 = &v24 - v3;
  v28 = sub_1000024C4(&qword_10022A868, &qword_1001C1E50);
  __chkstk_darwin(v28);
  v6 = &v24 - v5;
  v7 = sub_1000024C4(&qword_10022A870, &unk_1001C1E58);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = [objc_opt_self() systemGroupedBackgroundColor];
  v26 = Color.init(uiColor:)();
  if (qword_100220C30 != -1)
  {
    swift_once();
  }

  ProgressView<>.init<>(_:)();
  sub_10000BFFC(&qword_10022A878, &qword_10022A860, &qword_1001C1E48, &protocol conformance descriptor for ProgressView<A, B>);
  v15 = v25;
  View.accessibilityIdentifier(_:)();
  v16 = (*(v24 + 8))(v4, v15);
  __chkstk_darwin(v16);
  *(&v24 - 2) = v27;
  sub_1000024C4(&qword_100226950, &qword_1001BC8D0);
  sub_10015FF78();
  v17 = sub_10000460C(&qword_1002245F8, &unk_1001B90C0);
  v18 = sub_1000ED768();
  v30 = v17;
  v31 = v18;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  sub_100160060(v6);
  v19 = *(v8 + 16);
  v19(v11, v13, v7);
  v20 = v29;
  *v29 = v26;
  v21 = sub_1000024C4(&qword_10022A888, &qword_1001C1E68);
  v19(v20 + *(v21 + 48), v11, v7);
  v22 = *(v8 + 8);

  v22(v13, v7);
  v22(v11, v7);

  return result;
}

uint64_t sub_10015F668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_1000024C4(&qword_1002245E8, &unk_1001B90B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - v5;
  v7 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v7 - 8);
  v30 = sub_1000024C4(&qword_1002245F0, &qword_1001BBA70);
  v8 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v28 - v9;
  v31 = sub_1000024C4(&qword_1002245F8, &unk_1001B90C0);
  v11 = __chkstk_darwin(v31);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v16 = *(type metadata accessor for LoadingView(0) + 20);
  v29 = a1;
  v17 = *(a1 + v16);
  if (v17)
  {
    v33 = v15;
    if (*(v17 + 88) && (*(v17 + 80) & 1) != 0)
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        (*(v4 + 56))(v13, 1, 1, v3);
        v19 = sub_10000BFFC(&qword_100224628, &qword_1002245F0, &qword_1001BBA70, &protocol conformance descriptor for ToolbarItem<A, B>);
        v34 = v30;
        v35 = v19;
        swift_getOpaqueTypeConformance2();
        v20 = v33;
        static ToolbarContentBuilder.buildIf<A>(_:)();
        sub_1000EDDE4(v13);
LABEL_8:
        sub_1000ED768();
        static ToolbarContentBuilder.buildBlock<A>(_:)();
        return sub_1000EDDE4(v20);
      }
    }

    else
    {
    }

    v21 = static ToolbarItemPlacement.topBarTrailing.getter();
    v22 = v30;
    v23 = __chkstk_darwin(v21);
    *(&v28 - 2) = v29;
    sub_10008B1A4(v23, v24, v25);
    ToolbarItem<>.init(placement:content:)();
    v26 = sub_10000BFFC(&qword_100224628, &qword_1002245F0, &qword_1001BBA70, &protocol conformance descriptor for ToolbarItem<A, B>);
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v4 + 16))(v13, v6, v3);
    (*(v4 + 56))(v13, 0, 1, v3);
    v34 = v22;
    v35 = v26;
    swift_getOpaqueTypeConformance2();
    v20 = v33;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000EDDE4(v13);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v22);
    goto LABEL_8;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10009249C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10015FB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for DismissAction();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v22 - v15;
  sub_100134210(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v11 + 32);
    v17(v16, v9, v10);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v22 + 8))(v6, v23);
    v17 = *(v11 + 32);
  }

  v17(v14, v16, v10);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = swift_allocObject();
  result = (v17)(v20 + v19, v14, v10);
  *a2 = 0;
  *(a2 + 8) = sub_1000172FC;
  *(a2 + 16) = v20;
  return result;
}

uint64_t sub_10015FE40()
{
  sub_1000024C4(&qword_10022A838, &qword_1001C1E30);
  sub_10015FEB8();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_10015FEB8()
{
  result = qword_10022A840;
  if (!qword_10022A840)
  {
    sub_10000460C(&qword_10022A838, &qword_1001C1E30);
    sub_10000BFFC(&qword_10022A848, &qword_10022A850, &qword_1001C1E38, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A840);
  }

  return result;
}

unint64_t sub_10015FF78()
{
  result = qword_10022A880;
  if (!qword_10022A880)
  {
    sub_10000460C(&qword_10022A868, &qword_1001C1E50);
    sub_10000BFFC(&qword_10022A878, &qword_10022A860, &qword_1001C1E48, &protocol conformance descriptor for ProgressView<A, B>);
    sub_10009249C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A880);
  }

  return result;
}

uint64_t sub_100160060(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_10022A868, &qword_1001C1E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001600D0()
{
  v1 = type metadata accessor for DismissAction();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1001601B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100160270(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DesignTimeTicketAttribution(uint64_t a1)
{
  result = qword_10022A8F8;
  if (!qword_10022A8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_100160360()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for URL();
  sub_1001605D8(&qword_100221260, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100160408(uint64_t a1)
{
  String.hash(into:)();
  type metadata accessor for URL();
  sub_1001605D8(&qword_100221260, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100160494()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for URL();
  sub_1001605D8(&qword_100221260, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100160580(uint64_t a1)
{
  result = sub_1001605D8(qword_10022A938, type metadata accessor for DesignTimeTicketAttribution, &unk_1001C1EC4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001605D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100160620(void *a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      type metadata accessor for Optional();
      if (v3 <= 0x3F)
      {
        sub_10000693C(319);
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v6 <= 0x3F)
            {
              swift_checkMetadataState();
              if (v7 <= 0x3F)
              {
                type metadata accessor for ObservationRegistrar();
                if (v8 <= 0x3F)
                {
                  swift_initClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100160920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_100164500(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_100160988@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_100160A78(KeyPath, v4, v5);

  v6 = *(*v1 + 128);
  swift_beginAccess();
  v7 = type metadata accessor for Optional();
  return (*(*(v7 - 8) + 16))(a1, v1 + v6, v7);
}

uint64_t sub_100160B18(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 128);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(&a1[v4], a2, v5);
  return swift_endAccess();
}

uint64_t sub_100160CB8@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_100160A78(KeyPath, v4, v5);

  v6 = *(*v1 + 136);
  swift_beginAccess();
  v7 = type metadata accessor for Optional();
  return (*(*(v7 - 8) + 16))(a1, v1 + v6, v7);
}

uint64_t sub_100160DA8(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 136);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(&a1[v4], a2, v5);
  return swift_endAccess();
}

uint64_t sub_100160E70()
{
  v0 = sub_100168CB8();

  return v0;
}

uint64_t sub_100160EA8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = (v2 + *(*v2 + 144));
  v7 = v6[1];
  v23 = *v6;
  v24 = v7;
  v21 = a1;
  v22 = a2;
  v8 = v5[5];
  v19 = v5[6];
  v20 = v8;
  v18 = v5[7];
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v9)
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    __chkstk_darwin(v9);
    v13 = v20;
    v17 = *(&v18 + 1);
    KeyPath = swift_getKeyPath();
    v12 = __chkstk_darwin(KeyPath);
    v14 = v2;
    v15 = a1;
    v16 = a2;
    sub_100160BE0(v12, sub_100169C68, &v13, &type metadata for () + 8);
  }
}

uint64_t sub_100161030()
{
  KeyPath = swift_getKeyPath();
  sub_100160A78(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 152));
}

double sub_1001610C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *v3;
  v6 = *(*v3 + 152);
  v19 = *(v3 + v6);
  v18 = a1;
  v7 = v5[5];
  v16 = v5[6];
  v17 = v7;
  v15 = v5[7];
  sub_100011044(a1, a2, a3);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v8)
  {
    *(v3 + v6) = v4;
  }

  else
  {
    __chkstk_darwin(v8);
    v12 = v16;
    v14 = *(&v15 + 1);
    KeyPath = swift_getKeyPath();
    v11 = __chkstk_darwin(KeyPath);
    v13 = v3;
    LOBYTE(v14) = v4;
    sub_100160BE0(v11, sub_10000BFD8, &v12, &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_100161230()
{
  sub_100168D4C();
}

uint64_t sub_100161258(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  v5 = *(v1 + v4);
  v15 = a1;
  v16 = v5;
  v6 = *(v3 + 96);
  v13 = *(v3 + 80);
  type metadata accessor for Array();
  v12 = *(v3 + 104);
  v14 = *(*(*(v12 + 8) + 8) + 8);
  swift_getWitnessTable();
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v7)
  {
    *(v1 + v4) = a1;
  }

  else
  {
    __chkstk_darwin(v7);
    v11[0] = v6;
    v11[1] = v12;
    KeyPath = swift_getKeyPath();
    v10 = __chkstk_darwin(KeyPath);
    v11[2] = v1;
    v11[3] = a1;
    sub_100160BE0(v10, sub_1000AB618, v11, &type metadata for () + 8);
  }
}

uint64_t sub_100161440@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_100160A78(KeyPath, v4, v5);

  v6 = *(*v1 + 168);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  return (*(*(v7 - 8) + 16))(a1, v1 + v6, v7);
}

uint64_t sub_100161594(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 168);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(&a1[v4], a2, v5);
  return swift_endAccess();
}

uint64_t sub_10016168C@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_100160A78(KeyPath, v4, v5);

  v6 = *(*v1 + 176);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  return (*(*(v7 - 8) + 16))(a1, v1 + v6, v7);
}

uint64_t sub_1001617CC(char *a1, uint64_t a2)
{
  v4 = *(*a1 + 176);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(&a1[v4], a2, v5);
  return swift_endAccess();
}

uint64_t sub_1001618C4@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_100160A78(KeyPath, v4, v5);

  v6 = *(*v1 + 184);
  swift_beginAccess();
  return sub_100073F10(v1 + v6, a1);
}

uint64_t sub_10016197C(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_100073F10(a1, &v6 - v3);
  return sub_100161A10(v4);
}

uint64_t sub_100161A10(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v8 = *(v4 + 184);
  swift_beginAccess();
  sub_100073F10(v1 + v8, v7);
  v9 = *(v4 + 80);
  v17 = *(v4 + 96);
  v18 = v9;
  v16 = *(v4 + 112);
  sub_100074048();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = sub_1000050C4(v7, &qword_1002214F8, &qword_1001B3D20);
  if (v10)
  {
    swift_beginAccess();
    sub_1000740FC(a1, v2 + v8);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v11);
    v12 = v17;
    *(&v16 - 3) = v18;
    *(&v16 - 2) = v12;
    *(&v16 - 1) = v16;
    KeyPath = swift_getKeyPath();
    v14 = __chkstk_darwin(KeyPath);
    *(&v16 - 2) = v2;
    *(&v16 - 1) = a1;
    sub_100160BE0(v14, sub_10016964C, (&v16 - 2), &type metadata for () + 8);
  }

  return sub_1000050C4(a1, &qword_1002214F8, &qword_1001B3D20);
}

uint64_t sub_100161C48(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 184);
  swift_beginAccess();
  sub_1000740FC(a2, a1 + v4);
  return swift_endAccess();
}

void *sub_100161CC0()
{
  v0 = sub_100169404();
  v1 = v0;
  return v0;
}

void sub_100161CEC(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 192);
  v6 = *(v2 + v5);
  v18 = a1;
  v19 = v6;
  v17 = *(v4 + 80);
  sub_1000024C4(&qword_100223F78, &qword_1001C2F50);
  v7 = *(v4 + 96);
  v15 = *(v4 + 112);
  v16 = v7;
  sub_100074C20();
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v8)
  {
    v9 = *(v2 + v5);
    *(v2 + v5) = a1;
  }

  else
  {
    __chkstk_darwin(v8);
    v12 = v16;
    KeyPath = swift_getKeyPath();
    v11 = __chkstk_darwin(KeyPath);
    v13 = v2;
    v14 = a1;
    sub_100160BE0(v11, sub_100169AB4, &v12, &type metadata for () + 8);
  }
}

double sub_100161E74@<D0>(_OWORD *a1@<X8>)
{
  sub_100169494(v6);
  sub_10002089C(v6, &v5);
  v2 = v6[1];
  *a1 = v6[0];
  a1[1] = v2;
  result = *&v7;
  v4 = v8;
  a1[2] = v7;
  a1[3] = v4;
  return result;
}

double sub_100161EC0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v10 = *(*v1 + 80);
  v11 = v4;
  v12 = *(v3 + 112);
  KeyPath = swift_getKeyPath();
  v8 = v1;
  v9 = a1;
  sub_100160BE0(KeyPath, sub_1001695FC, &v7, &type metadata for () + 8);
  sub_100006C2C(a1);

  return result;
}

uint64_t sub_100161F78(uint64_t a1, _OWORD *a2)
{
  v2 = (a1 + *(*a1 + 232));
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  v4 = a2[3];
  v2[2] = a2[2];
  v2[3] = v4;
  sub_10002089C(a2, &v6);
}

uint64_t sub_10016201C()
{
  v0 = sub_100169830();

  return v0;
}

uint64_t sub_100162054(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = v3 + *(v6 + 240);
  v23 = *v7;
  v21 = a1;
  v22 = a2;
  v20 = *(v6 + 80);
  sub_1000024C4(&qword_10022AF10, &qword_1001B5980);
  v8 = *(v6 + 96);
  v18 = *(v6 + 112);
  v19 = v8;
  sub_10002FC90();
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v9)
  {
    *v7 = a1;
    *(v7 + 1) = a2;
  }

  else
  {
    __chkstk_darwin(v9);
    v13 = v20;
    v17 = *(&v18 + 1);
    KeyPath = swift_getKeyPath();
    v12 = __chkstk_darwin(KeyPath);
    v14 = v3;
    v15 = a1;
    v16 = a2;
    sub_100160BE0(v12, sub_1001697D8, &v13, &type metadata for () + 8);
  }
}

uint64_t sub_1001621F0()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  sub_100162450();
  v8 = *(AssociatedTypeWitness - 8);
  if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    (*(v5 + 8))(v7, v4);
    return (*(*(v1 + 8) + 136))(v2);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v8 + 8))(v7, AssociatedTypeWitness);
    return v11;
  }
}

uint64_t sub_100162450()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = v10 - v5;
  (*(v1 + 88))(v2, v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  v10[1] = v8;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();
}

uint64_t sub_100162674(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*v2 + 104) + 8);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = v27 - v8;
  v10 = sub_10016413C();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    sub_1000024C4(&qword_100221A38, &qword_1001BA820);
    v14 = swift_allocObject();
    v27[1] = a2;
    v15 = v14;
    *(v14 + 16) = xmmword_1001B3B50;
    (*(v4 + 168))(v5, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = sub_100023254(AssociatedTypeWitness, AssociatedConformanceWitness);
    v19 = v18;
    v20 = (*(v7 + 8))(v9, AssociatedTypeWitness);
    v15[7] = &type metadata for String;
    v23 = sub_100017D20(v20, v21, v22);
    v15[4] = v17;
    v15[5] = v19;
    v15[12] = &type metadata for String;
    v15[13] = v23;
    v15[8] = v23;
    v15[9] = v12;
    v15[10] = v13;
    return String.init(format:_:)();
  }

  else
  {
    (*(v4 + 168))(v5, v4);
    v25 = swift_getAssociatedConformanceWitness();
    v26 = sub_100023254(AssociatedTypeWitness, v25);
    (*(v7 + 8))(v9, AssociatedTypeWitness);
    return v26;
  }
}

uint64_t sub_10016292C()
{
  v1 = *(v0 + *(*v0 + 248));

  return v1;
}

uint64_t sub_100162A0C@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  sub_100162450();
  v7 = *(AssociatedTypeWitness - 8);
  if ((*(v7 + 48))(v6, 1, AssociatedTypeWitness) == 1)
  {
    (*(v4 + 8))(v6, v3);
    swift_getAssociatedConformanceWitness();
    v8 = swift_getAssociatedTypeWitness();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    return (*(v7 + 8))(v6, AssociatedTypeWitness);
  }
}

uint64_t sub_100162CA8@<X0>(uint64_t a1@<X8>)
{
  v18[0] = a1;
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = v18 - v7;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - v11;
  (*(v10 + 16))(v18 - v11, v1 + *(v2 + 208), v9);
  v13 = *(v4 - 8);
  if ((*(v13 + 48))(v12, 1, v4) == 1)
  {
    (*(v10 + 8))(v12, v9);
    swift_getAssociatedConformanceWitness();
    v14 = swift_getAssociatedTypeWitness();
    return (*(*(v14 - 8) + 56))(v18[0], 1, 1, v14);
  }

  else
  {
    (*(v3 + 104))(v4, v3);
    (*(v13 + 8))(v12, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v6 + 8))(v8, AssociatedTypeWitness);
    v18[1] = v17;
    swift_getAssociatedTypeWitness();
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
  }
}

uint64_t sub_100163044()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = type metadata accessor for Optional();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  sub_100162450();
  v5 = *(AssociatedTypeWitness - 8);
  if ((*(v5 + 48))(v4, 1, AssociatedTypeWitness) == 1)
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v4, AssociatedTypeWitness);
    return v8;
  }
}

void *sub_1001632E4()
{
  sub_100169494(v3);
  if (!v3[3] || !v3[1])
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000024C4(&qword_100221500, qword_1001B3D30);
  type metadata accessor for URLQueryItem();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001B3B50;
  sub_10002089C(v3, &v2);
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  sub_100006C2C(v3);
  return v0;
}

uint64_t sub_100163434()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v3 = &v11 - v2;
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  sub_100161440(&v11 - v6);
  if ((*(v1 + 48))(v7, 1, AssociatedTypeWitness))
  {
    (*(v5 + 8))(v7, v4);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    return static Array._allocateUninitialized(_:)();
  }

  else
  {
    (*(v1 + 16))(v3, v7, AssociatedTypeWitness);
    (*(v5 + 8))(v7, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v1 + 8))(v3, AssociatedTypeWitness);
    return v10;
  }
}

uint64_t sub_1001636D0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v3 = &v11 - v2;
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  sub_100161440(&v11 - v6);
  if ((*(v1 + 48))(v7, 1, AssociatedTypeWitness))
  {
    (*(v5 + 8))(v7, v4);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    return static Array._allocateUninitialized(_:)();
  }

  else
  {
    (*(v1 + 16))(v3, v7, AssociatedTypeWitness);
    (*(v5 + 8))(v7, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v1 + 8))(v3, AssociatedTypeWitness);
    return v10;
  }
}

uint64_t sub_10016396C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v3 = &v11 - v2;
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  sub_100161440(&v11 - v6);
  if ((*(v1 + 48))(v7, 1, AssociatedTypeWitness))
  {
    (*(v5 + 8))(v7, v4);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    return static Array._allocateUninitialized(_:)();
  }

  else
  {
    (*(v1 + 16))(v3, v7, AssociatedTypeWitness);
    (*(v5 + 8))(v7, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 80))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v1 + 8))(v3, AssociatedTypeWitness);
    return v10;
  }
}

uint64_t sub_100163C08@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  sub_100161440(&v13 - v8);
  if ((*(v3 + 48))(v9, 1, AssociatedTypeWitness))
  {
    (*(v7 + 8))(v9, v6);
    v10 = type metadata accessor for URL();
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  else
  {
    (*(v3 + 16))(v5, v9, AssociatedTypeWitness);
    (*(v7 + 8))(v9, v6);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 88))(AssociatedTypeWitness, AssociatedConformanceWitness);
    return (*(v3 + 8))(v5, AssociatedTypeWitness);
  }
}

uint64_t sub_100163E98()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  (*(v9 + 16))(&v16 - v10, v0 + *(v1 + 208), v8);
  v12 = *(v3 - 8);
  if ((*(v12 + 48))(v11, 1, v3) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v13 = 0;
  }

  else
  {
    (*(v2 + 104))(v3, v2);
    (*(v12 + 8))(v11, v3);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = sub_1000F57B8(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v7, AssociatedTypeWitness);
  }

  return v13 & 1;
}

id sub_10016413C()
{
  result = sub_100169404();
  if (result)
  {
    result = [result addressRepresentations];
    if (result)
    {
      v1 = result;
      v2 = [result cityName];

      if (v2)
      {
        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v3;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1001641CC()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - v5;
  v7 = *(v1 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v18 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  (*(v4 + 16))(v6, v0 + *(v1 + 208), v3);
  v12 = *(v2 - 8);
  if ((*(v12 + 48))(v6, 1, v2) == 1)
  {
    (*(v4 + 8))(v6, v3);
    return 0;
  }

  sub_100187A54(v2, v7, v11);
  (*(v12 + 8))(v6, v2);
  v13 = *(AssociatedTypeWitness - 8);
  if ((*(v13 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v18 + 8))(v11, v9);
    return 0;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v13 + 8))(v11, AssociatedTypeWitness);
  return v16;
}

uint64_t sub_100164500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v80 = a4;
  v79 = a3;
  v73 = a2;
  v72 = a1;
  v5 = *v4;
  v6 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v6 - 8);
  v8 = &v69 - v7;
  v9 = v5[10];
  v78 = type metadata accessor for Optional();
  v77 = *(v78 - 8);
  v10 = __chkstk_darwin(v78);
  v76 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v69 - v12;
  v14 = v5[16];
  v69 = *(v9 - 8);
  v15 = v69 + 56;
  v16 = *(v69 + 56);
  v16(v4 + v14, 1, 1, v9);
  v75 = v15;
  v74 = v16;
  v16(v13, 1, 1, v9);
  v17 = *(*v4 + 136);
  v18 = type metadata accessor for Optional();
  (*(*(v18 - 8) + 32))(v4 + v17, v13, v18);
  v19 = (v4 + *(*v4 + 144));
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  *(v4 + *(*v4 + 152)) = 1;
  *(v4 + *(*v4 + 160)) = static Array._allocateUninitialized(_:)();
  v20 = *(*v4 + 168);
  v71 = v5[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v4 + v20, 1, 1, AssociatedTypeWitness);
  v22 = *(*v4 + 176);
  v70 = v5[12];
  v23 = swift_getAssociatedTypeWitness();
  (*(*(v23 - 8) + 56))(v4 + v22, 1, 1, v23);
  v24 = type metadata accessor for URL();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  sub_100073EA0(v8, v4 + *(*v4 + 184));
  *(v4 + *(*v4 + 192)) = 0;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  memset(v86, 0, sizeof(v86));
  sub_10002089C(&v82, v81);
  sub_100006C2C(v86);
  v25 = (v4 + *(*v4 + 232));
  v26 = v85;
  v25[2] = v84;
  v25[3] = v26;
  v27 = v83;
  *v25 = v82;
  v25[1] = v27;
  v28 = (v4 + *(*v4 + 240));
  *v28 = 0;
  v28[1] = 0;
  v29 = v4 + *(*v4 + 248);
  *v29 = LocalizedStringKey.init(stringLiteral:)();
  *(v29 + 8) = v30;
  *(v29 + 16) = v31 & 1;
  *(v29 + 24) = v32;
  v33 = (v4 + *(*v4 + 256));
  v34 = objc_opt_self();
  v35 = [v34 mainBundle];
  v87._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0xD00000000000002ALL;
  v36._object = 0x80000001001C4970;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v87._countAndFlagsBits = 0;
  v38 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, v35, v37, v87);

  *v33 = v38;
  v39 = (v4 + *(*v4 + 264));
  v40 = [v34 mainBundle];
  v88._object = 0xE000000000000000;
  v41 = v69;
  v42._countAndFlagsBits = 0xD00000000000002DLL;
  v42._object = 0x80000001001C4A60;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  v88._countAndFlagsBits = 0;
  v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v40, v43, v88);

  *v39 = v44;
  v45 = (v4 + *(*v4 + 272));
  v46 = [v34 mainBundle];
  v89._object = 0xE000000000000000;
  v47._countAndFlagsBits = 0xD00000000000003ALL;
  v47._object = 0x80000001001C4A90;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v89._countAndFlagsBits = 0;
  v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, v46, v48, v89);

  *v45 = v49;
  v50 = (v4 + *(*v4 + 280));
  *v50 = 0xD000000000000010;
  v50[1] = 0x80000001001C4AD0;
  v51 = (v4 + *(*v4 + 288));
  v52 = [v34 mainBundle];
  v90._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0xD000000000000029;
  v53._object = 0x80000001001C49C0;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  v90._countAndFlagsBits = 0;
  v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v52, v54, v90);

  *v51 = v55;
  v56 = (v4 + *(*v4 + 296));
  v57 = [v34 mainBundle];
  v91._object = 0xE000000000000000;
  v58._countAndFlagsBits = 0xD000000000000037;
  v58._object = 0x80000001001C49F0;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  v91._countAndFlagsBits = 0;
  v60 = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, 0, v57, v59, v91);

  *v56 = v60;
  v61 = v72;
  v62 = v73;
  ObservationRegistrar.init()();
  (*(v41 + 16))(v4 + *(*v4 + 200), v61, v9);
  v63 = *(v41 + 48);
  if (v63(v62, 1, v9) == 1)
  {
    v64 = v76;
    (*(v41 + 32))(v76, v61, v9);
    v65 = v63(v62, 1, v9);
    v66 = v78;
    v67 = v77;
    if (v65 != 1)
    {
      (*(v77 + 8))(v62, v78);
    }
  }

  else
  {
    (*(v41 + 8))(v61, v9);
    v64 = v76;
    (*(v41 + 32))(v76, v62, v9);
    v66 = v78;
    v67 = v77;
  }

  v74(v64, 0, 1, v9);
  (*(v67 + 32))(v4 + *(*v4 + 208), v64, v66);
  (*(*(v71 - 8) + 32))(v4 + *(*v4 + 216), v79);
  (*(*(v70 - 8) + 32))(v4 + *(*v4 + 224), v80);
  return v4;
}

uint64_t sub_100164F24(uint64_t a1)
{
  sub_10007D594(a1);
  if (!v1)
  {
    sub_1001641CC();
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100164F60()
{
  v1[42] = v0;
  v1[43] = *v0;
  v2 = type metadata accessor for URLComponents();
  v1[44] = v2;
  v1[45] = *(v2 - 8);
  v1[46] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[47] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[48] = v4;
  v1[49] = v3;

  return _swift_task_switch(sub_10016507C, v4, v3);
}

uint64_t sub_10016507C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = swift_task_alloc();
  *(v0 + 400) = v7;
  *v7 = v0;
  v7[1] = sub_1001651A8;

  return sub_1001537FC(v0 + 144, v4, v6);
}

uint64_t sub_1001651A8()
{
  v1 = *v0;

  v2 = *(v1 + 392);
  v3 = *(v1 + 384);

  return _swift_task_switch(sub_1001652C8, v3, v2);
}

uint64_t sub_1001652C8()
{

  sub_100161EC0((v0 + 18));
  sub_100169494((v0 + 10));
  if (v0[13] && v0[17])
  {
    sub_1000024C4(&qword_100221500, qword_1001B3D30);
    type metadata accessor for URLQueryItem();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1001B3B50;
    sub_10002089C((v0 + 10), (v0 + 34));
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    sub_100006C2C((v0 + 10));
    v2 = v1;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v3 = v2[2];

  if (v3)
  {
    URLComponents.init()();
    sub_100169494((v0 + 2));
    if (v0[5] && v0[9])
    {
      sub_1000024C4(&qword_100221500, qword_1001B3D30);
      type metadata accessor for URLQueryItem();
      *(swift_allocObject() + 16) = xmmword_1001B3B50;
      sub_10002089C((v0 + 2), (v0 + 26));
      URLQueryItem.init(name:value:)();
      URLQueryItem.init(name:value:)();
      sub_100006C2C((v0 + 2));
    }

    v5 = v0[45];
    v4 = v0[46];
    v6 = v0[44];
    URLComponents.queryItems.setter();
    v7 = URLComponents.percentEncodedQuery.getter();
    sub_100162054(v7, v8);
    (*(v5 + 8))(v4, v6);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001655AC()
{
  v0 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v10 - v4;
  sub_100163C08(v3);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {
    sub_1000050C4(v3, &qword_1002214F8, &qword_1001B3D20);
    v8 = 1;
  }

  else
  {
    sub_1001632E4();
    URL.appending(queryItems:)();

    (*(v7 + 8))(v3, v6);
    v8 = 0;
  }

  (*(v7 + 56))(v5, v8, 1, v6);
  return sub_100161A10(v5);
}

uint64_t sub_100165744(char a1)
{
  if (a1)
  {
    v1 = sub_1001621F0();
  }

  else
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  return sub_100160EA8(v1, v2);
}

uint64_t sub_10016577C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v3[5] = *(*v2 + 112);
  v3[6] = *(v4 + 88);
  v3[7] = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[12] = v7;
  v3[13] = v6;

  return _swift_task_switch(sub_1001658C8, v7, v6);
}

uint64_t sub_1001658C8()
{
  v10 = v0[5];

  v1 = ResourceID.init(_:)();
  v3 = v2;
  v0[14] = v2;
  v9 = (*(v10 + 48) + **(v10 + 48));
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_100165A30;
  v5 = v0[10];
  v7 = v0[5];
  v6 = v0[6];

  return v9(v5, v1, v3, v6, v7);
}

uint64_t sub_100165A30()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_100165C28;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_100165B4C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100165B4C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = sub_100168DDC(v1);
  (*(v3 + 8))(v1, v2, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100165C28()
{
  v13 = v0;

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_100139F7C(v5, v4, &v12);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch music artist for artist: %s, error: %@", v6, 0x16u);
    sub_1000050C4(v7, &qword_100221718, &qword_1001B8890);

    sub_100012A7C(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100165E58(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v3[5] = *(*v2 + 120);
  v3[6] = *(v4 + 96);
  v3[7] = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[13] = v7;
  v3[14] = v6;

  return _swift_task_switch(sub_100165FB0, v7, v6);
}

uint64_t sub_100165FB0()
{
  v1 = v0[3];
  if (v1)
  {
    v21 = v0[5];
    v2 = sub_1001641CC();
    v4 = v3;
    v0[15] = v3;
    v20 = (*(v21 + 24) + **(v21 + 24));
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_100166218;
    v6 = v0[11];
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[2];

    return v20(v6, v9, v1, v2, v4, v7, v8);
  }

  else
  {
    v11 = sub_1001641CC();
    v0[18] = v12;
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v15 = swift_task_alloc();
      v0[19] = v15;
      *v15 = v0;
      v15[1] = sub_100166454;
      v16 = v0[10];
      v18 = v0[5];
      v17 = v0[6];

      return sub_10001219C(v16, v13, v14, v17, v18);
    }

    else
    {

      v19 = v0[1];

      return v19();
    }
  }
}

uint64_t sub_100166218()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_100166690;
  }

  else
  {
    v5 = sub_100166370;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100166370()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = sub_100169108(v1);
  (*(v3 + 8))(v1, v2, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100166454()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_100166948;
  }

  else
  {
    v5 = sub_1001665AC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001665AC()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = sub_100169108(v1);
  (*(v2 + 8))(v1, v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100166690()
{
  v19 = v0;

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10000BE10(v2, qword_100239158);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    if (v5)
    {
      v9 = v1;
    }

    else
    {
      v6 = 1701736270;
      v9 = 0xE400000000000000;
    }

    v10 = sub_100139F7C(v6, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_1001641CC();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 1701736270;
      v13 = 0xE400000000000000;
    }

    v14 = sub_100139F7C(v11, v13, &v18);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v15;
    *v8 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch promotional playlist. Configuration playlist ID: %s, event playlist ID: %s, error: %@", v7, 0x20u);
    sub_1000050C4(v8, &qword_100221718, &qword_1001B8890);

    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100166948()
{
  v19 = v0;

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10000BE10(v2, qword_100239158);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    if (v5)
    {
      v9 = v1;
    }

    else
    {
      v6 = 1701736270;
      v9 = 0xE400000000000000;
    }

    v10 = sub_100139F7C(v6, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_1001641CC();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 1701736270;
      v13 = 0xE400000000000000;
    }

    v14 = sub_100139F7C(v11, v13, &v18);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v15;
    *v8 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch promotional playlist. Configuration playlist ID: %s, event playlist ID: %s, error: %@", v7, 0x20u);
    sub_1000050C4(v8, &qword_100221718, &qword_1001B8890);

    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100166C00()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = *(*(v2 + 104) + 8);
  v4 = *(v2 + 80);
  v7 = (*(v3 + 184) + **(v3 + 184));
  v5 = swift_task_alloc();
  v1[5] = v5;
  *v5 = v1;
  v5[1] = sub_100166D80;

  return v7(v4, v3);
}

uint64_t sub_100166D80(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_100166F70;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_100166F00;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_100166F00()
{
  v1 = *(v0 + 56);

  sub_100161258(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100166F70()
{
  v15 = v0;

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v4 = 136315394;
    v7 = sub_100163044();
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v7 = 45;
      v9 = 0xE100000000000000;
    }

    v10 = sub_100139F7C(v7, v9, &v14);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch schedule for artist: %s, error: %@", v4, 0x16u);
    sub_1000050C4(v5, &qword_100221718, &qword_1001B8890);

    sub_100012A7C(v6);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1001671C8()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *(*(*v0 + 104) + 8);
  v1[4] = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[5] = AssociatedTypeWitness;
  v1[6] = *(AssociatedTypeWitness - 8);
  v1[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v5;
  v1[10] = v4;

  return _swift_task_switch(sub_100167304, v5, v4);
}

uint64_t sub_100167304()
{
  if (sub_100169404())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    (*(*(*(**(v0 + 16) + 104) + 8) + 176))(*(**(v0 + 16) + 80));
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *v3 = v0;
    v3[1] = sub_100167480;
    v5 = *(v0 + 56);
    v6 = *(v0 + 40);

    return sub_1000C5148(v5, v6, AssociatedConformanceWitness);
  }
}

uint64_t sub_100167480(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 48);

  v7 = (v6 + 8);
  v8 = v4[7];
  v9 = v4[5];
  if (v1)
  {

    (*v7)(v8, v9);
    v10 = v5[9];
    v11 = v5[10];
    v12 = sub_1001676A0;
  }

  else
  {
    v5[12] = a1;
    (*v7)(v8, v9);
    v10 = v5[9];
    v11 = v5[10];
    v12 = sub_100167628;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_100167628()
{
  v1 = *(v0 + 96);

  sub_100161CEC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001676A0()
{

  sub_100161CEC(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100167760(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*(*(*v1 + 104) + 8) + 120))(*(*v1 + 80));
  v6 = v5;
  v7 = sub_10012BCC8(v2 + *(*v2 + 200), *(*v2 + 80), *(*(*v2 + 104) + 8));
  sub_10015B530(v4, v6, v7, a1);
}

void sub_100167864(char a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v11 = (*(*(*(*v5 + 104) + 8) + 120))(*(*v5 + 80));
  v13 = v12;
  v14 = sub_10012BCC8(v5 + *(*v5 + 200), *(*v5 + 80), *(*(*v5 + 104) + 8));
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v11;
  *(inited + 48) = v13;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = v14;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = a1;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = a2;
  *(inited + 160) = a3;
  *(inited + 168) = a4;
  if (*(a5 + 72))
  {
    v16 = *(a5 + 64);
    v17 = *(a5 + 72);
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v24 = v16;
  v25 = v17;

  sub_100006C80(a2, a3, a4);

  v18 = sub_1001894F4(1, 5, 1, inited);
  v22 = v18;
  sub_100006C98(&aBlock, v29);
  sub_100118768(4, v29, &v22, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v19 = String._bridgeToObjectiveC()();
  v20 = swift_allocObject();
  v20[2] = 0xD00000000000001ELL;
  v20[3] = 0x80000001001C4640;
  v20[4] = v18;
  v27 = sub_100006D88;
  v28 = v20;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10015B4A4;
  v26 = &unk_1002195F0;
  v21 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();

  _Block_release(v21);
}

void sub_100167BA0(uint64_t a1)
{
  v42 = a1;
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Optional();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v6 = &v40 - v5;
  v7 = *(v2 + 104);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001B49A0;
  v14 = *(v7 + 8);
  v15 = sub_10012BCC8(v1 + *(v2 + 200), v3, v14);
  *(v13 + 56) = &type metadata for AnalyticsPageName;
  *(v13 + 64) = &off_100228B48;
  *(v13 + 32) = v15;
  *(v13 + 96) = &type metadata for AnalyticsModuleName;
  *(v13 + 104) = &off_100228BD0;
  *(v13 + 72) = 3;
  sub_100162CA8(v12);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    v16 = 12;
  }

  else
  {
    v16 = 11;
  }

  v17 = v12;
  v18 = v40;
  (*(v10 + 8))(v17, v9);
  *(v13 + 136) = &type metadata for AnalyticsModuleAction;
  *(v13 + 144) = &off_100228BA8;
  *(v13 + 112) = v16;
  *(v13 + 120) = 0;
  *(v13 + 128) = 3;
  v48 = v13;
  v19 = v1 + *(*v1 + 208);
  v20 = v41;
  (*(v18 + 16))(v6, v19, v41);
  v21 = *(v3 - 8);
  v22 = &type metadata for AnalyticsString;
  v23 = &off_100228B70;
  if ((*(v21 + 48))(v6, 1, v3) == 1)
  {
    (*(v18 + 8))(v6, v20);
  }

  else
  {
    v24 = (*(v14 + 120))(v3, v14);
    v26 = v25;
    (*(v21 + 8))(v6, v3);
    v28 = *(v13 + 16);
    v27 = *(v13 + 24);
    if (v28 >= v27 >> 1)
    {
      v13 = sub_1001894F4((v27 > 1), v28 + 1, 1, v13);
    }

    v45 = &type metadata for AnalyticsString;
    v46 = &off_100228B70;
    LOBYTE(aBlock) = 0;
    *(&aBlock + 1) = v24;
    v44 = v26;
    *(v13 + 16) = v28 + 1;
    sub_10002FF68(&aBlock, v13 + 40 * v28 + 32);
  }

  if (*(v42 + 72))
  {
    v29 = *(v42 + 64);
    v30 = *(v42 + 72);
  }

  else
  {
    v29 = 0;
    v30 = 0xE000000000000000;
  }

  v45 = &type metadata for AnalyticsString;
  v46 = &off_100228B70;
  LOBYTE(aBlock) = 1;
  *(&aBlock + 1) = v29;
  v44 = v30;
  v48 = v13;
  v31 = *(v13 + 16);
  v32 = *(v13 + 24);

  if (v31 >= v32 >> 1)
  {
    v13 = sub_1001894F4((v32 > 1), v31 + 1, 1, v13);
    v48 = v13;
    v22 = v45;
    v23 = v46;
  }

  v33 = sub_10002FAD0(&aBlock, v22);
  __chkstk_darwin(v33);
  v35 = &v40 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35);
  sub_100118768(v31, v35, &v48, v22, v23);
  sub_100012A7C(&aBlock);
  v37 = String._bridgeToObjectiveC()();
  v38 = swift_allocObject();
  v38[2] = 0xD00000000000001ELL;
  v38[3] = 0x80000001001C4640;
  v38[4] = v13;
  v46 = sub_100026FEC;
  v47 = v38;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v44 = sub_10015B4A4;
  v45 = &unk_100219640;
  v39 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v39);
}

char *sub_1001681B8()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 80);
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 8);
  v5(&v0[v2], v4);
  v5(&v0[*(*v0 + 136)], v4);

  v6 = *(*v0 + 168);
  v7 = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 8))(&v0[v6], v8);
  v9 = *(*v0 + 176);
  v10 = *(v1 + 96);
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  (*(*(v11 - 8) + 8))(&v0[v9], v11);
  sub_1000050C4(&v0[*(*v0 + 184)], &qword_1002214F8, &qword_1001B3D20);

  (*(*(v3 - 8) + 8))(&v0[*(*v0 + 200)], v3);
  v5(&v0[*(*v0 + 208)], v4);
  (*(*(v7 - 8) + 8))(&v0[*(*v0 + 216)], v7);
  (*(*(v10 - 8) + 8))(&v0[*(*v0 + 224)], v10);

  v12 = *(*v0 + 304);
  v13 = type metadata accessor for ObservationRegistrar();
  (*(*(v13 - 8) + 8))(&v0[v12], v13);
  return v0;
}

uint64_t sub_1001686C0()
{
  sub_1001681B8();

  return swift_deallocClassInstance();
}

double sub_100168730(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 80);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 128);
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v20 = *(v5 + 88);
  v12 = *(v5 + 104);
  v13 = *(v4 + 120);
  v19 = v12;
  v21 = *(*(*(v12 + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (v4)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, a1, v7);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    *(&v19 - 6) = v6;
    v16 = v19;
    *(&v19 - 40) = v20;
    *(&v19 - 24) = v16;
    *(&v19 - 1) = v13;
    KeyPath = swift_getKeyPath();
    v18 = __chkstk_darwin(KeyPath);
    *(&v19 - 2) = v2;
    *(&v19 - 1) = a1;
    sub_100160BE0(v18, sub_100169B44, (&v19 - 2), &type metadata for () + 8);
  }

  return result;
}

double sub_1001689F4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 80);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 136);
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v20 = *(v5 + 88);
  v12 = *(v5 + 104);
  v13 = *(v4 + 120);
  v19 = v12;
  v21 = *(*(*(v12 + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (v4)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, a1, v7);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    *(&v19 - 6) = v6;
    v16 = v19;
    *(&v19 - 40) = v20;
    *(&v19 - 24) = v16;
    *(&v19 - 1) = v13;
    KeyPath = swift_getKeyPath();
    v18 = __chkstk_darwin(KeyPath);
    *(&v19 - 2) = v2;
    *(&v19 - 1) = a1;
    sub_100160BE0(v18, sub_100169B14, (&v19 - 2), &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_100168CB8()
{
  KeyPath = swift_getKeyPath();
  sub_100160A78(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 144));
}

uint64_t sub_100168D4C()
{
  KeyPath = swift_getKeyPath();
  sub_100160A78(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 160));
}

double sub_100168DDC(uint64_t a1)
{
  v2 = v1;
  v21 = a1;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 88);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = v3[21];
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v19 = v3[10];
  v20 = *(v4 + 6);
  v12 = v3[15];
  v13 = v21;
  v22 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v3) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (v3)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, v13, v7);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    *(&v18 - 6) = v19;
    *(&v18 - 5) = v6;
    *(&v18 - 2) = v20;
    *(&v18 - 2) = v5;
    *(&v18 - 1) = v12;
    KeyPath = swift_getKeyPath();
    v17 = __chkstk_darwin(KeyPath);
    *(&v18 - 2) = v2;
    *(&v18 - 1) = v13;
    sub_100160BE0(v17, sub_1001696BC, (&v18 - 4), &type metadata for () + 8);
  }

  return result;
}

double sub_100169108(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 96);
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  v12 = *(v4 + 176);
  swift_beginAccess();
  (*(v9 + 16))(v11, v2 + v12, v8);
  v13 = *(v5 + 104);
  v19 = *(v5 + 80);
  v20 = v13;
  v21 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v5) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v9 + 8))(v11, v8);
  if (v5)
  {
    swift_beginAccess();
    (*(v9 + 24))(v2 + v12, a1, v8);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    v16 = v20;
    *(&v19 - 3) = v19;
    *(&v19 - 4) = v7;
    *(&v19 - 24) = v16;
    *(&v19 - 1) = v6;
    KeyPath = swift_getKeyPath();
    v18 = __chkstk_darwin(KeyPath);
    *(&v19 - 2) = v2;
    *(&v19 - 1) = a1;
    sub_100160BE0(v18, sub_100169918, (&v19 - 2), &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_100169404()
{
  KeyPath = swift_getKeyPath();
  sub_100160A78(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 192));
}

__n128 sub_100169494@<Q0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_100160A78(KeyPath, v4, v5);

  v6 = v1 + *(*v1 + 232);
  v7 = *(v6 + 16);
  *a1 = *v6;
  *(a1 + 16) = v7;
  result = *(v6 + 32);
  v9 = *(v6 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v9;
  return result;
}

uint64_t sub_100169540@<X0>(_OWORD *a1@<X8>)
{
  sub_100169494(v6);
  v2 = v6[1];
  *a1 = v6[0];
  a1[1] = v2;
  v3 = v6[3];
  a1[2] = v6[2];
  a1[3] = v3;
  return sub_10002089C(v6, &v5);
}

double sub_100169590(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  sub_10002089C(v5, &v4);
  return sub_100161EC0(v5);
}

__n128 sub_1001695E8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1001696D8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100168D4C();
}

uint64_t sub_10016974C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100169830();
  a1[1] = v2;
}

uint64_t sub_10016978C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100162054(v1, v2);
}

uint64_t sub_1001697D8()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 240));
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_100169830()
{
  KeyPath = swift_getKeyPath();
  sub_100160A78(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 240));
}

uint64_t sub_100169944(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (!v2 || !*(v2 + 16))
  {
    goto LABEL_7;
  }

  v4 = sub_1000FBDA8(a2);
  if ((v5 & 1) == 0)
  {

LABEL_7:
    v7 = 1;
    return v7 & 1;
  }

  v6 = *(*(v2 + 56) + v4);

  if (v6 <= 1 || v6 == 2)
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v9 ^ 1;
  }

  else
  {

    v7 = 0;
  }

  return v7 & 1;
}

id sub_100169A3C@<X0>(void *a1@<X8>)
{
  v2 = sub_100169404();
  *a1 = v2;

  return v2;
}

void sub_100169A78(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100161CEC(v1);
}

void sub_100169AB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*v1 + 192);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v5 = v2;
}

double sub_100169B64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100169B7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100161030();
  *a1 = result;
  return result;
}

uint64_t sub_100169BDC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100168CB8();
  a1[1] = v2;
}

uint64_t sub_100169C1C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100160EA8(v1, v2);
}

uint64_t sub_100169C68()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 144));
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_100169CC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = sub_10008C468(*(*v4 + 80), *(*(*v4 + 104) + 8));
  sub_1001641CC();
  v11 = v10;
  if (v10)
  {
  }

  v12 = sub_100163E98();
  v13 = [a4 isHidden];
  v14 = *(a1 + 72);
  if (!v14)
  {
    v15 = 0;
    v16 = 0;
    if ((v11 != 0 || (v9 & 1) == 0) | (v12 | v13) & 1)
    {
      return v16 & 1;
    }

    goto LABEL_13;
  }

  if (*(a1 + 64) == a2 && v14 == a3)
  {
    if (!((v11 != 0 || (v9 & 1) == 0) | (v12 | v13) & 1))
    {
      v15 = 1;
LABEL_13:
      v16 = v15 ^ 1;
      return v16 & 1;
    }
  }

  else
  {
    v17 = v11 != 0;
    v18 = v13;
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (!((v17 || (v9 & 1) == 0) | (v12 | v18) & 1))
    {
      v15 = v19;
      goto LABEL_13;
    }
  }

  v16 = 0;
  return v16 & 1;
}

uint64_t sub_100169E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for TimeZone();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100169F7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DateInterval();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for TimeZone();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for DesignTimeTime(uint64_t a1)
{
  result = qword_10022AA18;
  if (!qword_10022AA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10016A0C4(uint64_t a1)
{
  result = type metadata accessor for DateInterval();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TimeZone();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10016A148@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DateInterval();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10016A1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for TimeZone();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_10016A224()
{
  Hasher.init(_seed:)();
  type metadata accessor for DateInterval();
  sub_10016A5D4(&qword_10022AA60, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  sub_10016A5D4(&qword_10022AA68, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10016A310(uint64_t a1)
{
  type metadata accessor for DateInterval();
  sub_10016A5D4(&qword_10022AA60, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  sub_10016A5D4(&qword_10022AA68, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10016A3E4()
{
  Hasher.init(_seed:)();
  type metadata accessor for DateInterval();
  sub_10016A5D4(&qword_10022AA60, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  sub_10016A5D4(&qword_10022AA68, &type metadata accessor for TimeZone, &protocol conformance descriptor for TimeZone);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10016A4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static DateInterval.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return static TimeZone.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t sub_10016A57C(uint64_t a1)
{
  result = sub_10016A5D4(&qword_10022AA58, type metadata accessor for DesignTimeTime, &unk_1001C22F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016A5D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10016A66C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v12 = *(v11 + 88);
  v20[0] = *(v11 + 80);
  v20[1] = a4;
  v20[2] = v12;
  v20[3] = a5;
  v13 = type metadata accessor for HeaderModule(0, v20);
  v14 = (a6 + v13[13]);
  *v14 = a2;
  v14[1] = a3;
  v15 = v13[14];
  *(a6 + v15) = swift_getKeyPath();
  sub_1000024C4(qword_100221928, &unk_1001B65E0);
  swift_storeEnumTagMultiPayload();
  v16 = v13[15];
  *(a6 + v16) = swift_getKeyPath();
  sub_1000024C4(&qword_1002229F8, &qword_1001BBE60);
  swift_storeEnumTagMultiPayload();
  v17 = (a6 + v13[16]);
  type metadata accessor for RemoteViewConfiguration();
  sub_10017297C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  result = EnvironmentObject.init()();
  *v17 = result;
  v17[1] = v19;
  return result;
}

double sub_10016A880()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 281.0;
  if (v1 == 1)
  {
    return 380.0;
  }

  return result;
}

void sub_10016A9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HeaderViewModel(255, *(a1 + 16), *(a1 + 32), a4);
  type metadata accessor for Bindable();
  if (v4 <= 0x3F)
  {
    sub_100023D44();
    if (v5 <= 0x3F)
    {
      sub_10016AE54(319, &qword_1002219C0, &type metadata accessor for OpenURLAction);
      if (v6 <= 0x3F)
      {
        sub_10016AE54(319, &qword_100226230, &type metadata accessor for ContentSizeCategory);
        if (v7 <= 0x3F)
        {
          sub_100017044(319);
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10016AB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HeaderViewModel(255, *(a3 + 16), *(a3 + 32), a4);
  v7 = type metadata accessor for Bindable();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_3:

    return v10(v11, a2, v9);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v13 = *(a1 + *(a3 + 52));
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_1000024C4(&qword_1002222A0, &unk_1001B5960);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v10 = *(v15 + 48);
      v11 = a1 + *(a3 + 56);
      goto LABEL_3;
    }

    v16 = sub_1000024C4(qword_100228110, &qword_1001BEB48);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + *(a3 + 60);

    return v17(v18, a2, v16);
  }
}

uint64_t sub_10016ACB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for HeaderViewModel(255, *(a4 + 16), *(a4 + 32), a4);
  result = type metadata accessor for Bindable();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
    return result;
  }

  v13 = sub_1000024C4(&qword_1002222A0, &unk_1001B5960);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 56);
    goto LABEL_3;
  }

  v15 = sub_1000024C4(qword_100228110, &qword_1001BEB48);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + *(a4 + 60);

  return v16(v17, a2, a2, v15);
}

void sub_10016AE54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10016AEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HeaderViewModel(255, *(a1 + 16), *(a1 + 32), a4);
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v5;
}

uint64_t sub_10016AF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HeaderViewModel(255, *(a1 + 16), *(a1 + 32), a4);
  type metadata accessor for Bindable();

  return Bindable.projectedValue.getter();
}

uint64_t sub_10016AF80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v95 = type metadata accessor for TaskPriority();
  v94 = *(v95 - 8);
  v3 = __chkstk_darwin(v95);
  v93 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = *(a1 - 1);
  v99 = v91[8];
  __chkstk_darwin(v3);
  v101 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = "defaultHeroImageSymbolName";
  v6 = a1[2];
  v7 = a1[4];
  type metadata accessor for HeaderViewModel(255, v6, v7, v8);
  v97 = type metadata accessor for Bindable();
  v90 = *(v97 - 1);
  __chkstk_darwin(v97);
  v74 = &v68 - v9;
  v89 = a1;
  *&v103 = a1[3];
  v10 = a1[5];
  v111 = v103;
  v112 = v10;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_10022AAF8, &qword_1001C2440);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for ZStack();
  WitnessTable = swift_getWitnessTable();
  v111 = v11;
  v112 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_10022AB00, &qword_1001C2448);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  sub_10000460C(&qword_10022AB08, &qword_1001C2450);
  sub_10000460C(&qword_10022AB10, &qword_1001C2458);
  swift_getTupleTypeMetadata3();
  v76 = type metadata accessor for TupleView();
  v75 = swift_getWitnessTable();
  v13 = type metadata accessor for VStack();
  v88 = *(v13 - 8);
  __chkstk_darwin(v13);
  v69 = &v68 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v111 = AssociatedTypeWitness;
  v112 = v16;
  v113 = AssociatedConformanceWitness;
  v114 = v18;
  v19 = type metadata accessor for TicketView(255, &v111);
  v20 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v111 = v13;
  v112 = v19;
  v73 = v13;
  v70 = v19;
  v113 = v20;
  v114 = v21;
  v22 = v20;
  v72 = v20;
  v71 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = OpaqueTypeMetadata2;
  v84 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v98 = &v68 - v24;
  v111 = v13;
  v112 = v19;
  v113 = v22;
  v114 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v111 = OpaqueTypeMetadata2;
  v112 = OpaqueTypeConformance2;
  v83 = &unk_1001C94C8;
  v81 = swift_getOpaqueTypeMetadata2();
  v86 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v68 - v25;
  v85 = type metadata accessor for ModifiedContent();
  v87 = *(v85 - 8);
  v26 = __chkstk_darwin(v85);
  v80 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v82 = &v68 - v28;
  static HorizontalAlignment.center.getter();
  *&v29 = v6;
  *(&v29 + 1) = v103;
  *&v30 = v7;
  *(&v30 + 1) = v10;
  v102 = v30;
  v103 = v29;
  v106 = v29;
  v107 = v30;
  v31 = v100;
  v108 = v100;
  VStack.init(alignment:spacing:content:)();
  v32 = v74;
  v33 = v89;
  sub_10016AF30(v89, v34, v35, v36);
  v104 = v103;
  v105 = v102;
  swift_getKeyPath();
  v37 = v97;
  Bindable<A>.subscript.getter();

  (*(v90 + 8))(v32, v37);
  LODWORD(v76) = v113;
  v38 = v91;
  v97 = v91[2];
  v39 = v101;
  (v97)(v101, v31, v33);
  v40 = *(v38 + 80);
  v90 = (v40 + 48) & ~v40;
  v41 = swift_allocObject();
  v42 = v102;
  *(v41 + 16) = v103;
  *(v41 + 32) = v42;
  v43 = v38[4];
  v43(v41 + ((v40 + 48) & ~v40), v39, v33);
  v44 = v43;
  v91 = v43;
  swift_checkMetadataState();
  v45 = v73;
  v46 = v69;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v88 + 8))(v46, v45);
  v47 = v101;
  (v97)(v101, v100, v33);
  type metadata accessor for MainActor();
  v48 = static MainActor.shared.getter();
  v49 = swift_allocObject();
  *(v49 + 16) = v48;
  *(v49 + 24) = &protocol witness table for MainActor;
  v50 = v102;
  *(v49 + 32) = v103;
  *(v49 + 48) = v50;
  v44(v49 + ((v40 + 64) & ~v40), v47, v33);
  v51 = v93;
  v52 = v79;
  v53 = OpaqueTypeConformance2;
  j___sScP13userInitiatedScPvgZ();
  v54 = v77;
  v55 = v49;
  v56 = v98;
  sub_10000250C(0, v51, 0xD000000000000023, (v92 | 0x8000000000000000), 131, &unk_1001C24A0, v55, v77, v52, v53);
  (*(v94 + 8))(v51, v95);
  (*(v84 + 8))(v56, v52);
  v57 = v101;
  (v97)(v101, v100, v33);
  v58 = v90;
  v59 = swift_allocObject();
  v60 = v102;
  *(v59 + 16) = v103;
  *(v59 + 32) = v60;
  (v91)(v59 + v58, v57, v33);
  v111 = v52;
  v112 = v53;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = v80;
  v63 = v81;
  View.onDisappear(perform:)();

  (*(v86 + 8))(v54, v63);
  v109 = v61;
  v110 = &protocol witness table for _AppearanceActionModifier;
  v64 = v85;
  swift_getWitnessTable();
  v65 = v82;
  sub_1000EE87C();
  v66 = *(v87 + 8);
  v66(v62, v64);
  sub_1000EE87C();
  return (v66)(v65, v64);
}

uint64_t sub_10016BC64@<X0>(void (*a1)(void, void)@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v99 = a4;
  v126 = a1;
  v120 = a6;
  v90 = sub_1000024C4(&qword_10022AB18, &qword_1001C24A8);
  __chkstk_darwin(v90);
  v88 = (&v87 - v9);
  v93 = sub_1000024C4(&qword_10022AB20, &qword_1001C24B0);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v87 - v10;
  v124 = sub_1000024C4(&qword_10022AB28, &qword_1001C24B8);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v89 = &v87 - v11;
  v118 = sub_1000024C4(&qword_10022AB10, &qword_1001C2458);
  v12 = __chkstk_darwin(v118);
  v119 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v125 = &v87 - v14;
  v110 = type metadata accessor for AccessibilityTraits();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v106 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for AccessibilityChildBehavior();
  v130 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1000024C4(&qword_10022AB30, &qword_1001C24C0);
  __chkstk_darwin(v103);
  v100 = (&v87 - v17);
  v104 = sub_1000024C4(&qword_10022AB38, &qword_1001C24C8);
  v105 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = &v87 - v18;
  v129 = sub_1000024C4(&qword_10022AB40, &qword_1001C24D0);
  __chkstk_darwin(v129);
  v102 = &v87 - v19;
  v117 = sub_1000024C4(&qword_10022AB08, &qword_1001C2450);
  v116 = *(v117 - 8);
  v20 = __chkstk_darwin(v117);
  v115 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v128 = &v87 - v22;
  v146 = a3;
  v147 = a5;
  v94 = a5;
  v97 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_10022AAF8, &qword_1001C2440);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v98 = &protocol conformance descriptor for TupleView<A>;
  swift_getWitnessTable();
  v23 = type metadata accessor for ZStack();
  v114 = &protocol conformance descriptor for ZStack<A>;
  WitnessTable = swift_getWitnessTable();
  v146 = v23;
  v147 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_10022AB00, &qword_1001C2448);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v25 = type metadata accessor for ZStack();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v87 - v30;
  static Alignment.bottomTrailing.getter();
  v32 = a2;
  v95 = a2;
  v136 = a2;
  v137 = a3;
  v33 = a3;
  v96 = a3;
  v34 = v99;
  v138 = v99;
  v139 = a5;
  v35 = v126;
  v140 = v126;
  ZStack.init(alignment:content:)();
  v36 = swift_getWitnessTable();
  v113 = v31;
  v107 = v36;
  sub_1000EE87C();
  v108 = v26;
  v37 = *(v26 + 8);
  v127 = v29;
  v114 = v25;
  v112 = v26 + 8;
  v111 = v37;
  v37(v29, v25);
  v38 = static HorizontalAlignment.center.getter();
  v39 = v100;
  *v100 = v38;
  *(v39 + 8) = 0x4008000000000000;
  *(v39 + 16) = 0;
  v40 = sub_1000024C4(&qword_10022AB48, &qword_1001C24D8);
  v41 = v94;
  sub_10016E3A4(v35, v32, v33, v34, v94, v39 + *(v40 + 44));
  v42 = v121;
  static AccessibilityChildBehavior.combine.getter();
  v43 = sub_10000BFFC(&qword_10022AB50, &qword_10022AB30, &qword_1001C24C0, &protocol conformance descriptor for VStack<A>);
  v44 = v101;
  v45 = v103;
  View.accessibilityElement(children:)();
  v46 = v130[1];
  ++v130;
  v87 = v46;
  v46(v42, v122);
  sub_1000050C4(v39, &qword_10022AB30, &qword_1001C24C0);
  v47 = v106;
  static AccessibilityTraits.isHeader.getter();
  v146 = v45;
  v147 = v43;
  v48 = v41;
  swift_getOpaqueTypeConformance2();
  v49 = v102;
  v50 = v104;
  View.accessibilityAddTraits(_:)();
  (*(v109 + 8))(v47, v110);
  (*(v105 + 8))(v44, v50);
  v51 = v95;
  v131 = v95;
  v52 = v96;
  v132 = v96;
  v133 = v34;
  v134 = v48;
  v53 = v126;
  v135 = v126;
  v54 = sub_1000024C4(&qword_10022AB58, &qword_1001C24E0);
  v55 = sub_1001713B4();
  v56 = sub_10000BFFC(&qword_10022AB68, &qword_10022AB58, &qword_1001C24E0, v98);
  v110 = v54;
  v109 = v55;
  v106 = v56;
  View.accessibilityLabel<A>(content:)();
  sub_1000050C4(v49, &qword_10022AB40, &qword_1001C24D0);
  v57 = v51;
  v146 = v51;
  v147 = v52;
  v58 = v34;
  v148 = v34;
  v149 = v48;
  v59 = type metadata accessor for HeaderModule(0, &v146);
  v60 = v53;
  sub_10016AEEC(v59, v61, v62, v63);
  LOBYTE(v54) = sub_10002DE48();

  v64 = 1;
  if (v54)
  {
    v65 = static HorizontalAlignment.center.getter();
    v66 = v88;
    *v88 = v65;
    *(v66 + 8) = 0x4020000000000000;
    *(v66 + 16) = 0;
    v67 = sub_1000024C4(&qword_10022AB90, &qword_1001C24F0);
    sub_10016EDE8(v53, v51, v52, v34, v48, v66 + *(v67 + 44));
    v68 = v121;
    static AccessibilityChildBehavior.combine.getter();
    v69 = sub_10000BFFC(&qword_10022AB80, &qword_10022AB18, &qword_1001C24A8, &protocol conformance descriptor for VStack<A>);
    v70 = v91;
    v71 = v90;
    View.accessibilityElement(children:)();
    v87(v68, v122);
    v72 = sub_1000050C4(v66, &qword_10022AB18, &qword_1001C24A8);
    v130 = &v87;
    __chkstk_darwin(v72);
    *(&v87 - 6) = v57;
    *(&v87 - 5) = v52;
    *(&v87 - 4) = v58;
    *(&v87 - 3) = v48;
    *(&v87 - 2) = v60;
    sub_1000024C4(&qword_10022AB78, &qword_1001C24E8);
    v146 = v71;
    v147 = v69;
    swift_getOpaqueTypeConformance2();
    sub_10000BFFC(&qword_10022AB88, &qword_10022AB78, &qword_1001C24E8, &protocol conformance descriptor for TupleView<A>);
    v73 = v89;
    v74 = v93;
    View.accessibilityLabel<A>(content:)();
    (*(v92 + 8))(v70, v74);
    (*(v123 + 32))(v125, v73, v124);
    v64 = 0;
  }

  v75 = v125;
  (*(v123 + 56))(v125, v64, 1, v124);
  v76 = v127;
  v77 = v113;
  v78 = v114;
  (*(v108 + 16))(v127, v113, v114);
  v145[0] = v76;
  v79 = v116;
  v80 = v115;
  v81 = v128;
  v82 = v117;
  (*(v116 + 16))(v115, v128, v117);
  v145[1] = v80;
  v83 = v119;
  sub_10000BEB8(v75, v119, &qword_10022AB10, &qword_1001C2458);
  v144[0] = v78;
  v144[1] = v82;
  v144[2] = v118;
  v141 = v107;
  v145[2] = v83;
  v146 = v129;
  v147 = v110;
  v148 = v109;
  v149 = v106;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v143 = sub_1001714E0();
  sub_1000E76FC(v145, 3uLL, v144);
  sub_1000050C4(v75, &qword_10022AB10, &qword_1001C2458);
  v84 = *(v79 + 8);
  v84(v81, v82);
  v85 = v111;
  v111(v77, v78);
  sub_1000050C4(v83, &qword_10022AB10, &qword_1001C2458);
  v84(v80, v82);
  return v85(v127, v78);
}

uint64_t sub_10016CBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v138 = a4;
  v136 = a2;
  v125 = a1;
  v135 = a6;
  v151 = a2;
  v152 = a3;
  *&v137 = a3;
  v153 = a4;
  v154 = a5;
  v141 = type metadata accessor for HeaderModule(0, &v151);
  v119 = *(v141 - 8);
  v116[1] = *(v119 + 64);
  __chkstk_darwin(v141);
  v117 = v116 - v8;
  v118 = type metadata accessor for PlayButtonView(0);
  __chkstk_darwin(v118);
  v121 = v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1000024C4(&qword_10022AC28, &qword_1001C25C8);
  __chkstk_darwin(v131);
  v122 = v116 - v10;
  v140 = sub_1000024C4(&qword_10022AC30, &qword_1001C25D0);
  v133 = *(v140 - 8);
  v11 = __chkstk_darwin(v140);
  v124 = v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v123 = v116 - v13;
  v132 = sub_1000024C4(&qword_10022AB00, &qword_1001C2448);
  v14 = __chkstk_darwin(v132);
  v134 = v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v139 = v116 - v16;
  v130 = type metadata accessor for AccessibilityChildBehavior();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v18 = v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = a3;
  v152 = a5;
  v127 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_10022AAF8, &qword_1001C2440);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v19 = type metadata accessor for ZStack();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v116 - v21;
  v23 = swift_getWitnessTable();
  v151 = v19;
  v152 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v142 = *(OpaqueTypeMetadata2 - 8);
  v25 = __chkstk_darwin(OpaqueTypeMetadata2);
  v27 = (v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v29 = v116 - v28;
  static Alignment.topLeading.getter();
  v143 = v136;
  v144 = v137;
  v145 = v138;
  v146 = a5;
  v120 = a5;
  v30 = v125;
  v147 = v125;
  v31 = v140;
  ZStack.init(alignment:content:)();
  static AccessibilityChildBehavior.combine.getter();
  View.accessibilityElement(children:)();
  v129[1](v18, v130);
  (*(v20 + 8))(v22, v19);
  v151 = v19;
  v152 = v23;
  v32 = v139;
  v33 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = v29;
  v126 = OpaqueTypeConformance2;
  sub_1000EE87C();
  v36 = v142 + 8;
  v35 = *(v142 + 8);
  v129 = v27;
  v130 = OpaqueTypeMetadata2;
  v127 = v35;
  v35(v27, OpaqueTypeMetadata2);
  sub_10016AEEC(v141, v37, v38, v39);
  LOBYTE(v18) = sub_10002E1E0();

  if (v18)
  {
    v43 = v141;
    sub_10016AEEC(v141, v40, v41, v42);
    v44 = sub_10002E23C();

    v45 = v119;
    v46 = v117;
    (*(v119 + 16))(v117, v30, v43);
    v47 = (*(v45 + 80) + 48) & ~*(v45 + 80);
    v48 = swift_allocObject();
    v49 = v137;
    *(v48 + 2) = v136;
    *(v48 + 3) = v49;
    v50 = v120;
    *(v48 + 4) = v138;
    *(v48 + 5) = v50;
    (*(v45 + 32))(&v48[v47], v46, v43);
    v51 = v121;
    *v121 = v44;
    *(v51 + 8) = sub_100172BD0;
    *(v51 + 16) = v48;
    v52 = *(v118 + 20);
    *(v51 + v52) = swift_getKeyPath();
    sub_1000024C4(&qword_100222A00, &unk_1001B65F0);
    swift_storeEnumTagMultiPayload();
    sub_1000024C4(&qword_100222388, &qword_1001B73E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001B3B50;
    LOBYTE(v43) = static Edge.Set.bottom.getter();
    *(inited + 32) = v43;
    v54 = static Edge.Set.trailing.getter();
    *(inited + 33) = v54;
    v55 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v43)
    {
      v55 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    v56 = Edge.Set.init(rawValue:)();
    v116[0] = v36;
    if (v56 != v54)
    {
      v55 = Edge.Set.init(rawValue:)();
    }

    EdgeInsets.init(_all:)();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v65 = v122;
    sub_100172CFC(v51, v122, type metadata accessor for PlayButtonView);
    v66 = v65 + *(v131 + 36);
    *v66 = v55;
    *(v66 + 8) = v58;
    *(v66 + 16) = v60;
    *(v66 + 24) = v62;
    *(v66 + 32) = v64;
    *(v66 + 40) = 0;
    v67 = v141;
    sub_10016AEEC(v141, v68, v69, v70);

    v138 = sub_1000024C4(&qword_100221A38, &qword_1001BA820);
    v71 = swift_allocObject();
    v137 = xmmword_1001B49B0;
    *(v71 + 16) = xmmword_1001B49B0;
    sub_10016AEEC(v67, v72, v73, v74);
    v75 = sub_10002DD28();
    v77 = v76;

    *(v71 + 56) = &type metadata for String;
    v136 = sub_100017D20(v78, v79, v80);
    *(v71 + 64) = v136;
    *(v71 + 32) = v75;
    *(v71 + 40) = v77;
    v81 = String.init(format:_:)();
    v83 = v82;

    v151 = v81;
    v152 = v83;
    sub_10016AEEC(v67, v84, v85, v86);
    sub_10002E23C();

    v87 = sub_1001728C0();
    v121 = sub_10001877C(v87, v88, v89);
    v90 = v124;
    View.accessibilityLabel<A>(_:isEnabled:)();

    sub_1000050C4(v65, &qword_10022AC28, &qword_1001C25C8);
    sub_10016AEEC(v67, v91, v92, v93);

    v94 = swift_allocObject();
    *(v94 + 16) = v137;
    sub_10016AEEC(v67, v95, v96, v97);
    v98 = sub_10002DD28();
    v100 = v99;

    v101 = v136;
    *(v94 + 56) = &type metadata for String;
    *(v94 + 64) = v101;
    *(v94 + 32) = v98;
    *(v94 + 40) = v100;
    v102 = String.init(format:_:)();
    v104 = v103;

    v151 = v102;
    v152 = v104;
    sub_10016AEEC(v67, v105, v106, v107);
    sub_10002E23C();

    v108 = v123;
    v31 = v140;
    ModifiedContent<>.accessibilityLabel<A>(_:isEnabled:)();

    sub_1000050C4(v90, &qword_10022AC30, &qword_1001C25D0);
    v32 = v139;
    sub_10001AE00(v108, v139, &qword_10022AC30, &qword_1001C25D0);
    v33 = 0;
  }

  (*(v133 + 56))(v32, v33, 1, v31);
  v109 = v129;
  v110 = WitnessTable;
  v111 = v130;
  (*(v142 + 16))(v129, WitnessTable, v130);
  v151 = v109;
  v112 = v134;
  sub_10000BEB8(v32, v134, &qword_10022AB00, &qword_1001C2448);
  v152 = v112;
  v150[0] = v111;
  v150[1] = v132;
  v148 = v126;
  v149 = sub_10017275C();
  sub_1000E76FC(&v151, 2uLL, v150);
  sub_1000050C4(v32, &qword_10022AB00, &qword_1001C2448);
  v113 = v110;
  v114 = v127;
  v127(v113, v111);
  sub_1000050C4(v112, &qword_10022AB00, &qword_1001C2448);
  return v114(v109, v111);
}

uint64_t sub_10016D918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  WitnessTable = a4;
  v88 = a6;
  v85 = sub_1000024C4(&qword_10022AC58, &qword_1001C2610);
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v73 = &v71 - v10;
  v84 = sub_1000024C4(&qword_10022AAF8, &qword_1001C2440);
  v11 = __chkstk_darwin(v84);
  v87 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v86 = &v71 - v13;
  v82 = type metadata accessor for AccessibilityTraits();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for AccessibilityChildBehavior();
  v92 = *(v89 - 8);
  v15 = __chkstk_darwin(v89);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = *(a3 - 8);
  __chkstk_darwin(v15);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v96 = a3;
  *(&v96 + 1) = a5;
  v76 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v78 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v22 = &v71 - v21;
  type metadata accessor for AccessibilityAttachmentModifier();
  v75 = type metadata accessor for ModifiedContent();
  v90 = *(v75 - 8);
  v23 = __chkstk_darwin(v75);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v71 - v27;
  __chkstk_darwin(v26);
  v91 = &v71 - v29;
  *&v96 = a2;
  *(&v96 + 1) = a3;
  *&v97 = WitnessTable;
  *(&v97 + 1) = a5;
  v74 = type metadata accessor for HeaderModule(0, &v96);
  (*(a1 + *(v74 + 52)))();
  static AccessibilityChildBehavior.ignore.getter();
  View.accessibilityElement(children:)();
  v30 = *(v92 + 8);
  v72 = v17;
  v92 += 8;
  v71 = v30;
  v30(v17, v89);
  (*(v77 + 8))(v19, a3);
  v31 = v79;
  static AccessibilityTraits.isImage.getter();
  *&v96 = a3;
  *(&v96 + 1) = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.accessibilityAddTraits(_:)();
  (*(v80 + 8))(v31, v82);
  (*(v78 + 8))(v22, OpaqueTypeMetadata2);
  v33 = v75;
  v34 = v74;
  sub_10016AEEC(v74, v35, v36, v37);
  v38 = sub_10002DB78();
  v40 = v39;

  *&v96 = v38;
  *(&v96 + 1) = v40;
  sub_10001877C(v41, v42, v43);
  ModifiedContent<>.accessibilityLabel<A>(_:)();

  v44 = *(v90 + 8);
  v44(v25, v33);
  v45 = sub_10017297C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v101 = OpaqueTypeConformance2;
  v102 = v45;
  WitnessTable = swift_getWitnessTable();
  sub_1000EE87C();
  v82 = v28;
  v44(v28, v33);
  sub_10016AEEC(v34, v46, v47, v48);
  LOBYTE(v40) = sub_10002D91C();

  if (v40)
  {
    v52 = sub_10016AEEC(v34, v49, v50, v51);
    v53 = (v52 + *(*v52 + 176));
    v54 = *v53;
    v55 = v53[1];

    v56 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v99) = 0;
    *&v93 = v54;
    *(&v93 + 1) = v55;
    LOBYTE(v94) = v56;
    *(&v94 + 1) = v57;
    *v95 = v58;
    *&v95[8] = v59;
    *&v95[16] = v60;
    v95[24] = 0;
    v61 = v72;
    static AccessibilityChildBehavior.ignore.getter();
    sub_1000024C4(&qword_10022AC68, &qword_1001C2618);
    sub_100173378(&qword_10022AC70, &qword_10022AC68, &qword_1001C2618, sub_100172E58);
    v62 = v73;
    View.accessibilityElement(children:)();
    v71(v61, v89);
    v96 = v93;
    v97 = v94;
    *v98 = *v95;
    *&v98[9] = *&v95[9];
    sub_1000050C4(&v96, &qword_10022AC68, &qword_1001C2618);
    v63 = v83;
    v64 = v86;
    v65 = v62;
    v66 = v85;
    (*(v83 + 32))(v86, v65, v85);
    (*(v63 + 56))(v64, 0, 1, v66);
  }

  else
  {
    v64 = v86;
    (*(v83 + 56))(v86, 1, 1, v85);
  }

  v67 = v82;
  v68 = v91;
  (*(v90 + 16))(v82, v91, v33);
  *&v96 = v67;
  v69 = v87;
  sub_10000BEB8(v64, v87, &qword_10022AAF8, &qword_1001C2440);
  *(&v96 + 1) = v69;
  *&v93 = v33;
  *(&v93 + 1) = v84;
  v99 = WitnessTable;
  v100 = sub_100172D64();
  sub_1000E76FC(&v96, 2uLL, &v93);
  sub_1000050C4(v64, &qword_10022AAF8, &qword_1001C2440);
  v44(v68, v33);
  sub_1000050C4(v69, &qword_10022AAF8, &qword_1001C2440);
  return (v44)(v67, v33);
}

void sub_10016E2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v6 = type metadata accessor for HeaderModule(0, v14);
  sub_10016AEEC(v6, v7, v8, v9);
  sub_10002EB28();

  sub_10016AEEC(v6, v10, v11, v12);
  if (*(a1 + *(v6 + 64)))
  {

    sub_10002F350(v13);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10017297C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_10016E3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v96 = a6;
  v11 = sub_1000024C4(&qword_10022ABF0, &qword_1001C2540);
  v12 = __chkstk_darwin(v11 - 8);
  v95 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v94 = &v75 - v14;
  v15 = type metadata accessor for ContentSizeCategory();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = (&v75 - v20);
  v22 = sub_1000024C4(&qword_10022ABF8, &qword_1001C2548);
  v91 = *(v22 - 8);
  v92 = v22;
  v23 = __chkstk_darwin(v22);
  v93 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v85 = &v75 - v26;
  __chkstk_darwin(v25);
  v97 = &v75 - v27;
  *&v110 = a2;
  *(&v110 + 1) = a3;
  *&v111 = a4;
  *(&v111 + 1) = a5;
  v86 = type metadata accessor for HeaderModule(0, &v110);
  v90 = a1;
  sub_10016AEEC(v86, v28, v29, v30);
  sub_10002FB3C();

  static Font.title.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v31 = Text.font(_:)();
  v88 = v32;
  v89 = v31;
  v34 = v33;
  v87 = v35;

  KeyPath = swift_getKeyPath();
  v37 = v86;
  v80 = *(v86 + 60);
  sub_10003A100(v21);
  v38 = *(v16 + 104);
  v79 = enum case for ContentSizeCategory.accessibilityMedium(_:);
  v77 = v16 + 104;
  v78 = v38;
  v38(v19);
  LOBYTE(a5) = sub_100172140(v21, v19);
  v39 = *(v16 + 8);
  v82 = v19;
  v39(v19, v15);
  v81 = v21;
  v83 = v16 + 8;
  v84 = v15;
  v39(v21, v15);
  if (a5)
  {
    v40 = 3;
  }

  else
  {
    v40 = 2;
  }

  v41 = swift_getKeyPath();
  v116 = v34 & 1;
  v115 = 0;
  *&v105 = v89;
  *(&v105 + 1) = v88;
  LOBYTE(v106) = v34 & 1;
  *(&v106 + 1) = v87;
  *&v107 = KeyPath;
  BYTE8(v107) = 1;
  *&v108 = v41;
  *(&v108 + 1) = v40;
  v109 = 0;
  v42 = sub_1000024C4(&qword_10022AC00, &qword_1001C25B0);
  v43 = sub_1001725BC();
  View.accessibilityIdentifier(_:)();
  v112 = v107;
  v113 = v108;
  v114 = v109;
  v110 = v105;
  v111 = v106;
  sub_1000050C4(&v110, &qword_10022AC00, &qword_1001C25B0);
  sub_10016AEEC(v37, v44, v45, v46);
  sub_10002FBC8();
  v48 = v47;

  if (v48)
  {
    v87 = v43;
    v88 = v42;
    v89 = v39;
    static Font.subheadline.getter();
    v49 = Text.font(_:)();
    v51 = v50;
    v53 = v52;

    if (qword_100220B98 != -1)
    {
      swift_once();
    }

    *&v105 = qword_1002390B8;

    v86 = Text.foregroundStyle<A>(_:)();
    v76 = v54;
    v56 = v55;
    v58 = v57;
    sub_100017398(v49, v51, v53 & 1);

    v59 = swift_getKeyPath();
    v60 = v81;
    sub_10003A100(v81);
    v61 = v82;
    v62 = v84;
    v78(v82, v79, v84);
    v63 = sub_100172140(v60, v61);
    v64 = v89;
    v89(v61, v62);
    v64(v60, v62);
    if (v63)
    {
      v65 = 3;
    }

    else
    {
      v65 = 2;
    }

    v66 = swift_getKeyPath();
    v104 = v56 & 1;
    v103 = 0;
    *&v98 = v86;
    *(&v98 + 1) = v76;
    LOBYTE(v99) = v56 & 1;
    *(&v99 + 1) = v58;
    *&v100 = v59;
    BYTE8(v100) = 1;
    *&v101 = v66;
    *(&v101 + 1) = v65;
    v102 = 0;
    v67 = v85;
    View.accessibilityIdentifier(_:)();
    v107 = v100;
    v108 = v101;
    v109 = v102;
    v105 = v98;
    v106 = v99;
    sub_1000050C4(&v105, &qword_10022AC00, &qword_1001C25B0);
    v68 = v94;
    sub_10001AE00(v67, v94, &qword_10022ABF8, &qword_1001C2548);
    (*(v91 + 56))(v68, 0, 1, v92);
  }

  else
  {
    v68 = v94;
    (*(v91 + 56))(v94, 1, 1, v92);
  }

  v69 = v97;
  v70 = v93;
  sub_10000BEB8(v97, v93, &qword_10022ABF8, &qword_1001C2548);
  v71 = v95;
  sub_10000BEB8(v68, v95, &qword_10022ABF0, &qword_1001C2540);
  v72 = v96;
  sub_10000BEB8(v70, v96, &qword_10022ABF8, &qword_1001C2548);
  v73 = sub_1000024C4(&qword_10022AC20, &qword_1001C25C0);
  sub_10000BEB8(v71, v72 + *(v73 + 48), &qword_10022ABF0, &qword_1001C2540);
  sub_1000050C4(v68, &qword_10022ABF0, &qword_1001C2540);
  sub_1000050C4(v69, &qword_10022ABF8, &qword_1001C2548);
  sub_1000050C4(v71, &qword_10022ABF0, &qword_1001C2540);
  return sub_1000050C4(v70, &qword_10022ABF8, &qword_1001C2548);
}

uint64_t sub_10016EB78@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v37 = a1;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v6 = type metadata accessor for HeaderModule(0, &v37);
  sub_10016AEEC(v6, v7, v8, v9);
  v10 = sub_10002FB3C();
  v12 = v11;

  v37 = v10;
  v38 = v12;
  sub_10001877C(v13, v14, v15);
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v36 = v19;
  v21 = v20;
  sub_10016AEEC(v6, v17, v19, v20);
  v22 = sub_10002FD64();
  v24 = v23;

  if (v24)
  {
    v37 = v22;
    v38 = v24;
    Text.init<A>(_:)();
  }

  else
  {
    sub_10016AEEC(v6, v25, v26, v27);
    v28 = sub_10002FBC8();
    v30 = v29;

    if (!v30)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = -1;
      goto LABEL_6;
    }

    v37 = v28;
    v38 = v30;
    Text.init<A>(_:)();
  }

  _ConditionalContent<>.init(storage:)();
  v31 = v37;
  v30 = v38;
  v32 = v39;
  v33 = v40;
  v34 = v41;
  sub_10017205C(v37, v38, v39, v40);
LABEL_6:
  sub_1000187D8(v16, v18, v36 & 1);

  sub_100172044(v31, v30, v32, v33, v34);
  sub_100172098(v31, v30, v32, v33, v34);
  LOBYTE(v37) = v36 & 1;
  *a5 = v16;
  *(a5 + 8) = v18;
  *(a5 + 16) = v36 & 1;
  *(a5 + 24) = v21;
  *(a5 + 32) = v31;
  *(a5 + 40) = v30;
  *(a5 + 48) = v32;
  *(a5 + 56) = v33;
  *(a5 + 64) = v34;
  sub_100172098(v31, v30, v32, v33, v34);
  sub_100017398(v16, v18, v36 & 1);
}

uint64_t sub_10016EDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v119 = a6;
  v99 = type metadata accessor for AttributionModule(0);
  __chkstk_darwin(v99);
  v98 = (&v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1000024C4(&qword_10022ABA8, &qword_1001C2508);
  v117 = *(v12 - 8);
  v118 = v12;
  __chkstk_darwin(v12);
  v97 = &v93 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v94 = type metadata accessor for Optional();
  v93 = *(v94 - 8);
  v15 = __chkstk_darwin(v94);
  v100 = &v93 - v16;
  v115 = AssociatedTypeWitness;
  v114 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v15);
  v101 = &v93 - v17;
  v18 = sub_1000024C4(&qword_10022ABB0, &qword_1001C2510);
  v19 = __chkstk_darwin(v18 - 8);
  v116 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v120 = &v93 - v21;
  v111 = type metadata accessor for GlassProminentButtonStyle();
  v112 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v130 = a2;
  *(&v130 + 1) = a3;
  *&v131 = a4;
  *(&v131 + 1) = a5;
  v23 = type metadata accessor for HeaderModule(0, &v130);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v93 - v25;
  v107 = sub_1000024C4(&qword_10022ABB8, &qword_1001C2518);
  __chkstk_darwin(v107);
  v102 = &v93 - v27;
  v109 = sub_1000024C4(&qword_10022ABC0, &qword_1001C2520);
  v110 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = &v93 - v28;
  v29 = sub_1000024C4(&qword_10022ABC8, &qword_1001C2528);
  v30 = __chkstk_darwin(v29 - 8);
  v113 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v103 = &v93 - v32;
  v33 = *(v24 + 16);
  v104 = a1;
  v105 = v23;
  v33(v26, a1, v23);
  v34 = (*(v24 + 80) + 48) & ~*(v24 + 80);
  v35 = swift_allocObject();
  *(v35 + 2) = a2;
  *(v35 + 3) = a3;
  *(v35 + 4) = a4;
  *(v35 + 5) = a5;
  (*(v24 + 32))(&v35[v34], v26, v23);
  v121 = a2;
  v122 = a3;
  v123 = a4;
  v124 = a5;
  v125 = a1;
  sub_1000024C4(&qword_100225910, &qword_1001BAFC0);
  sub_1000C2318();
  v36 = v102;
  Button.init(action:label:)();
  v96 = a2;
  v95 = a4;
  sub_10016A880();
  static Alignment.center.getter();
  v37 = 1;
  _FrameLayout.init(width:height:alignment:)();
  v38 = v107;
  v39 = (v36 + *(v107 + 36));
  v40 = v131;
  *v39 = v130;
  v39[1] = v40;
  v39[2] = v132;
  v41 = v108;
  GlassProminentButtonStyle.init()();
  v42 = sub_10017172C();
  v43 = sub_10017297C(&qword_100225810, &type metadata accessor for GlassProminentButtonStyle, &protocol conformance descriptor for GlassProminentButtonStyle);
  v44 = v106;
  v45 = v111;
  View.buttonStyle<A>(_:)();
  v46 = v103;
  (*(v112 + 8))(v41, v45);
  sub_1000050C4(v36, &qword_10022ABB8, &qword_1001C2518);
  v126 = v38;
  v127 = v45;
  v47 = v120;
  v128 = v42;
  v129 = v43;
  swift_getOpaqueTypeConformance2();
  v48 = v109;
  View.accessibilityIdentifier(_:)();
  (*(v110 + 8))(v44, v48);
  v49 = v105;
  v53 = sub_10016AEEC(v105, v50, v51, v52);
  LOBYTE(v48) = sub_10002DF88(v53);

  if (v48)
  {
    sub_10016AEEC(v49, v54, v55, v56);
    v57 = v100;
    sub_10002E16C();

    if ((*(v114 + 48))(v57, 1, v115) == 1)
    {
      (*(v93 + 8))(v57, v94);
      v37 = 1;
    }

    else
    {
      v58 = v57;
      v59 = v115;
      (*(v114 + 32))(v101, v58, v115);
      sub_10016AEEC(v49, v60, v61, v62);
      v112 = sub_10002DB04();
      v111 = v63;

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v110 = (*(AssociatedConformanceWitness + 16))(v59, AssociatedConformanceWitness);
      v109 = v65;
      v66 = type metadata accessor for AttributionViewModel(0);
      v67 = *(v66 + 32);
      v68 = type metadata accessor for URL();
      v69 = v98;
      (*(*(v68 - 8) + 56))(v98 + v67, 1, 1, v68);
      sub_10016AEEC(v49, v70, v71, v72);
      LODWORD(v108) = sub_10002EC40();

      v73 = objc_opt_self();
      v74 = [v73 mainBundle];
      v133._object = 0xE000000000000000;
      v75._countAndFlagsBits = 0xD000000000000031;
      v75._object = 0x80000001001C63A0;
      v76._countAndFlagsBits = 0;
      v76._object = 0xE000000000000000;
      v133._countAndFlagsBits = 0;
      v77 = NSLocalizedString(_:tableName:bundle:value:comment:)(v75, 0, v74, v76, v133);

      *v69 = v77;
      v78 = [v73 mainBundle];
      v134._object = 0xE000000000000000;
      v79._countAndFlagsBits = 0xD00000000000002CLL;
      v79._object = 0x80000001001C63E0;
      v80._countAndFlagsBits = 0;
      v80._object = 0xE000000000000000;
      v134._countAndFlagsBits = 0;
      v81 = NSLocalizedString(_:tableName:bundle:value:comment:)(v79, 0, v78, v80, v134);

      v69[1] = v81;
      v82 = v111;
      v69[2]._countAndFlagsBits = v112;
      v69[2]._object = v82;
      v83 = v109;
      v69[3]._countAndFlagsBits = v110;
      v69[3]._object = v83;
      v84 = *(v66 + 36);
      v47 = v120;
      *(&v69->_countAndFlagsBits + v84) = v108;
      v85 = (&v69->_countAndFlagsBits + *(v99 + 20));
      type metadata accessor for RemoteViewConfiguration();
      sub_10017297C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
      *v85 = EnvironmentObject.init()();
      v85[1] = v86;
      sub_10017297C(&qword_100224A20, type metadata accessor for AttributionModule, &unk_1001C3514);
      v87 = v97;
      View.accessibilityIdentifier(_:)();
      sub_100096258(v69);
      (*(v114 + 8))(v101, v115);
      sub_10001AE00(v87, v47, &qword_10022ABA8, &qword_1001C2508);
      v37 = 0;
    }
  }

  (*(v117 + 56))(v47, v37, 1, v118);
  v88 = v113;
  sub_10000BEB8(v46, v113, &qword_10022ABC8, &qword_1001C2528);
  v89 = v116;
  sub_10000BEB8(v47, v116, &qword_10022ABB0, &qword_1001C2510);
  v90 = v119;
  sub_10000BEB8(v88, v119, &qword_10022ABC8, &qword_1001C2528);
  v91 = sub_1000024C4(&qword_10022ABE8, &qword_1001C2538);
  sub_10000BEB8(v89, v90 + *(v91 + 48), &qword_10022ABB0, &qword_1001C2510);
  sub_1000050C4(v47, &qword_10022ABB0, &qword_1001C2510);
  sub_1000050C4(v46, &qword_10022ABC8, &qword_1001C2528);
  sub_1000050C4(v89, &qword_10022ABB0, &qword_1001C2510);
  return sub_1000050C4(v88, &qword_10022ABC8, &qword_1001C2528);
}

void sub_10016FAFC(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v46 = *(v3 - 8);
  __chkstk_darwin(v3);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for OpenURLAction();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 32);
  v40 = *(a1 + 16);
  v41 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v39 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v38 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v9);
  v14 = &v38 - v13;
  sub_10016AEEC(a1, v15, v16, v17);
  v18 = sub_10002E0A4();

  sub_10016AEEC(a1, v19, v20, v21);
  if (v18)
  {
    v38 = v3;
    v22 = sub_10002DDD4();

    v47 = v22;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
    if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
    {
      (*(v39 + 8))(v11, v8);

      return;
    }

    (*(v12 + 32))(v14, v11, AssociatedTypeWitness);

    v27 = v42;
    sub_100039C90(v42);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v29 = v44;
    (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
    OpenURLAction.callAsFunction(_:)();
    (*(v46 + 8))(v29, v38);
    (*(v43 + 8))(v27, v45);
    sub_10016AEEC(a1, v30, v31, v32);
    v33 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v35 = *(v1 + *(a1 + 64));
    if (v35)
    {
      v36 = v33;
      v37 = v34;

      sub_10002EFE8(v36, v37, v35);

      (*(v12 + 8))(v14, AssociatedTypeWitness);
      return;
    }

LABEL_11:
    type metadata accessor for RemoteViewConfiguration();
    sub_10017297C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
    return;
  }

  sub_10002CF64(1);

  sub_10016AEEC(a1, v23, v24, v25);
  if (!*(v1 + *(a1 + 64)))
  {
    goto LABEL_11;
  }

  sub_10002EC88(v26);
}

__n128 sub_100170050@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *&v32 = a1;
  *(&v32 + 1) = a2;
  *&v33 = a3;
  *(&v33 + 1) = a4;
  v6 = type metadata accessor for HeaderModule(0, &v32);
  sub_10016AEEC(v6, v7, v8, v9);

  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13;
  static Font.body.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_100017398(v10, v12, v14 & 1);

  LOBYTE(v10) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v31[55] = v35;
  *&v31[71] = v36;
  *&v31[87] = v37;
  *&v31[103] = v38;
  *&v31[7] = v32;
  *&v31[23] = v33;
  *&v31[39] = v34;
  *a5 = v15;
  *(a5 + 8) = v17;
  *(a5 + 16) = v19 & 1;
  *(a5 + 24) = v21;
  *(a5 + 32) = v10;
  *(a5 + 40) = v23;
  *(a5 + 48) = v25;
  *(a5 + 56) = v27;
  *(a5 + 64) = v29;
  *(a5 + 72) = 0;
  *(a5 + 137) = *&v31[64];
  *(a5 + 153) = *&v31[80];
  *(a5 + 169) = *&v31[96];
  *(a5 + 184) = *&v31[111];
  *(a5 + 73) = *v31;
  *(a5 + 89) = *&v31[16];
  result = *&v31[32];
  *(a5 + 105) = *&v31[32];
  *(a5 + 121) = *&v31[48];
  return result;
}

uint64_t sub_1001702B0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v93 = a5;
  v9 = type metadata accessor for AttributionModule(0);
  v91 = *(v9 - 8);
  v92 = v9;
  __chkstk_darwin(v9);
  v83 = &v76[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v80 = *(v12 - 8);
  v81 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v76[-v14];
  v85 = AssociatedTypeWitness;
  v87 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v13);
  v84 = &v76[-v16];
  v17 = sub_1000024C4(&qword_10022AB98, &qword_1001C24F8);
  v18 = __chkstk_darwin(v17 - 8);
  v90 = &v76[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v21 = &v76[-v20];
  v94[0] = a1;
  v94[1] = a2;
  v82 = a3;
  v94[2] = a3;
  v94[3] = a4;
  v22 = type metadata accessor for HeaderModule(0, v94);
  sub_10016AEEC(v22, v23, v24, v25);

  v26 = Text.init(_:tableName:bundle:comment:)();
  v88 = v27;
  v89 = v26;
  v86 = v28;
  v30 = v29;
  v31 = sub_10016AEEC(v22, v27, v28, v29);
  LOBYTE(AssociatedTypeWitness) = sub_10002DF88(v31);

  if (AssociatedTypeWitness)
  {
    sub_10016AEEC(v22, v32, v33, v34);
    sub_10002E16C();

    if ((*(v87 + 48))(v15, 1, v85) != 1)
    {
      v37 = v15;
      v38 = v85;
      (*(v87 + 32))(v84, v37, v85);
      sub_10016AEEC(v22, v39, v40, v41);
      v42 = sub_10002DB04();
      v80 = v43;
      v81 = v42;

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v82 = (*(AssociatedConformanceWitness + 16))(v38, AssociatedConformanceWitness);
      v79 = v45;
      v78 = type metadata accessor for AttributionViewModel(0);
      v46 = *(v78 + 32);
      v47 = type metadata accessor for URL();
      v48 = v83;
      (*(*(v47 - 8) + 56))(v83 + v46, 1, 1, v47);
      sub_10016AEEC(v22, v49, v50, v51);
      v77 = sub_10002EC40();

      v52 = objc_opt_self();
      v53 = [v52 mainBundle];
      v95._object = 0xE000000000000000;
      v54._countAndFlagsBits = 0xD000000000000031;
      v54._object = 0x80000001001C63A0;
      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      v95._countAndFlagsBits = 0;
      v56 = NSLocalizedString(_:tableName:bundle:value:comment:)(v54, 0, v53, v55, v95);

      *v48 = v56;
      v57 = [v52 mainBundle];
      v96._object = 0xE000000000000000;
      v58._object = 0x80000001001C63E0;
      v58._countAndFlagsBits = 0xD00000000000002CLL;
      v59._countAndFlagsBits = 0;
      v59._object = 0xE000000000000000;
      v96._countAndFlagsBits = 0;
      v60 = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, 0, v57, v59, v96);

      v48[1] = v60;
      v61 = v80;
      v48[2]._countAndFlagsBits = v81;
      v48[2]._object = v61;
      v62 = v78;
      v63 = v79;
      v48[3]._countAndFlagsBits = v82;
      v48[3]._object = v63;
      *(&v48->_countAndFlagsBits + *(v62 + 36)) = v77;
      v64 = v92;
      v65 = (&v48->_countAndFlagsBits + *(v92 + 20));
      type metadata accessor for RemoteViewConfiguration();
      sub_10017297C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
      v66 = EnvironmentObject.init()();
      v68 = v67;
      (*(v87 + 8))(v84, v38);
      *v65 = v66;
      v65[1] = v68;
      sub_100172CFC(v48, v21, type metadata accessor for AttributionModule);
      v36 = v64;
      v35 = 0;
      goto LABEL_6;
    }

    v80[1](v15, v81);
  }

  v35 = 1;
  v36 = v92;
LABEL_6:
  (*(v91 + 56))(v21, v35, 1, v36);
  v69 = v90;
  sub_10000BEB8(v21, v90, &qword_10022AB98, &qword_1001C24F8);
  v70 = v93;
  v72 = v88;
  v71 = v89;
  *v93 = v89;
  v70[1] = v72;
  v73 = v86 & 1;
  *(v70 + 16) = v86 & 1;
  v70[3] = v30;
  v74 = sub_1000024C4(&qword_10022ABA0, &qword_1001C2500);
  sub_10000BEB8(v69, v70 + *(v74 + 48), &qword_10022AB98, &qword_1001C24F8);
  sub_1000187D8(v71, v72, v73);

  sub_1000050C4(v21, &qword_10022AB98, &qword_1001C24F8);
  sub_1000050C4(v69, &qword_10022AB98, &qword_1001C24F8);
  sub_100017398(v71, v72, v73);
}

uint64_t sub_1001709C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v50 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  __chkstk_darwin(v10 - 8);
  v49 = &v43 - v11;
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v51 = AssociatedTypeWitness;
  v52 = v12;
  v53 = AssociatedConformanceWitness;
  v54 = v14;
  v46 = v14;
  v47 = AssociatedConformanceWitness;
  v15 = v14;
  v16 = type metadata accessor for TicketViewModel(0, &v51);
  __chkstk_darwin(v16 - 8);
  v45 = &v43 - v17;
  v51 = AssociatedTypeWitness;
  v52 = v12;
  v53 = AssociatedConformanceWitness;
  v54 = v15;
  v18 = type metadata accessor for TicketView(0, &v51);
  v48 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v43 - v22;
  v51 = a1;
  v52 = a2;
  v53 = a3;
  v54 = a4;
  v24 = type metadata accessor for HeaderModule(0, &v51);
  sub_10016AEEC(v24, v25, v26, v27);
  v28 = sub_10002DB04();
  v43 = v29;
  v44 = v28;

  sub_10016AEEC(v24, v30, v31, v32);
  v33 = v49;
  sub_10002E16C();

  sub_10016AEEC(v24, v34, v35, v36);
  v37 = sub_10002DDD4();

  v38 = v45;
  v40 = v46;
  v39 = v47;
  sub_10015A1D0(v44, v43, v33, v37, AssociatedTypeWitness, v12, v47, v46, v45);
  sub_1000162A8(v38, AssociatedTypeWitness, v12, v39, v40, v21);
  swift_getWitnessTable();
  sub_1000EE87C();
  v41 = *(v48 + 8);
  v41(v21, v18);
  sub_1000EE87C();
  return (v41)(v23, v18);
}

uint64_t sub_100170D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[6] = a3;
  type metadata accessor for MainActor();
  v7[11] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100170DC4, v9, v8);
}

uint64_t sub_100170DC4()
{
  v11 = *(v0 + 72);
  v12 = *(v0 + 56);

  *(v0 + 16) = v12;
  *(v0 + 32) = v11;
  v1 = type metadata accessor for HeaderModule(0, v0 + 16);
  sub_10016AEEC(v1, v2, v3, v4);
  v5 = sub_10002E1E0();

  if (v5)
  {
    sub_10016AEEC(v1, v6, v7, v8);
    sub_10002EAB8();
  }

  v9 = *(v0 + 8);

  return v9();
}

double sub_100170E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  v5 = type metadata accessor for HeaderModule(0, v14);
  sub_10016AEEC(v5, v6, v7, v8);
  v9 = sub_10002E1E0();

  if (v9)
  {
    sub_10016AEEC(v5, v10, v11, v12);
    sub_10002EBD4();
  }

  return result;
}

uint64_t sub_100170F2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10002CEF0();
  *a1 = result & 1;
  return result;
}

__n128 sub_100170F90(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_100170FA0@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v8[0] = v1[2];
  v3 = v8[0];
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v6;
  type metadata accessor for HeaderModule(0, v8);

  return sub_1001709C8(v3, v4, v5, v6, a1);
}

uint64_t sub_10017104C()
{
  v11 = *(v0 + 48);
  v13[0] = *(v0 + 32);
  v12 = *&v13[0];
  v13[1] = v11;
  v1 = type metadata accessor for HeaderModule(0, v13);
  v2 = (*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  type metadata accessor for HeaderViewModel(255, v12, v11, v4);
  v5 = type metadata accessor for Bindable();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);

  v6 = *(v1 + 56);
  sub_1000024C4(qword_100221928, &unk_1001B65E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for OpenURLAction();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 60);
  sub_1000024C4(&qword_1002229F8, &qword_1001BBE60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ContentSizeCategory();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100171260()
{
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v1[2] = v3;
  v1[3] = v2;
  v1[4] = v4;
  v1[5] = v5;
  v6 = *(type metadata accessor for HeaderModule(0, (v1 + 2)) - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v0[2];
  v9 = v0[3];
  v10 = swift_task_alloc();
  v1[6] = v10;
  *v10 = v1;
  v10[1] = sub_1000D8A84;

  return sub_100170D24(v8, v9, v0 + v7, v3, v2, v4, v5);
}

unint64_t sub_1001713B4()
{
  result = qword_10022AB60;
  if (!qword_10022AB60)
  {
    sub_10000460C(&qword_10022AB40, &qword_1001C24D0);
    sub_10000460C(&qword_10022AB30, &qword_1001C24C0);
    sub_10000BFFC(&qword_10022AB50, &qword_10022AB30, &qword_1001C24C0, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_10017297C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AB60);
  }

  return result;
}

unint64_t sub_1001714E0()
{
  result = qword_10022AB70;
  if (!qword_10022AB70)
  {
    sub_10000460C(&qword_10022AB10, &qword_1001C2458);
    sub_10000460C(&qword_10022AB20, &qword_1001C24B0);
    sub_10000460C(&qword_10022AB78, &qword_1001C24E8);
    sub_10000460C(&qword_10022AB18, &qword_1001C24A8);
    sub_10000BFFC(&qword_10022AB80, &qword_10022AB18, &qword_1001C24A8, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_10000BFFC(&qword_10022AB88, &qword_10022AB78, &qword_1001C24E8, &protocol conformance descriptor for TupleView<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AB70);
  }

  return result;
}

void sub_100171680()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v1 = v6;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  type metadata accessor for HeaderModule(0, &v6);
  v6 = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v5 = type metadata accessor for HeaderModule(0, &v6);
  sub_10016FAFC(v5);
}

unint64_t sub_10017172C()
{
  result = qword_10022ABD0;
  if (!qword_10022ABD0)
  {
    sub_10000460C(&qword_10022ABB8, &qword_1001C2518);
    sub_10000BFFC(&qword_10022ABD8, &qword_10022ABE0, &qword_1001C2530, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022ABD0);
  }

  return result;
}

uint64_t sub_1001717E4()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  result = Color.init(_:red:green:blue:opacity:)();
  qword_10022AA70 = result;
  return result;
}

uint64_t sub_1001718CC@<X0>(uint64_t a3@<X8>)
{
  v47 = a3;
  v3 = sub_1000024C4(&qword_10022AC80, &qword_1001C26A0);
  __chkstk_darwin(v3);
  v5 = &v45 - v4;

  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v6 = Text.font(_:)();
  v8 = v7;
  v10 = v9;

  v48 = static Color.white.getter();
  v11 = Text.foregroundStyle<A>(_:)();
  v45 = v12;
  v46 = v11;
  v14 = v13;
  v16 = v15;
  sub_100017398(v6, v8, v10 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v6) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v14 &= 1u;
  v51 = v14;
  v50 = 0;
  v49 = 0;
  v26 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v52 = 0;
  v35 = static Alignment.center.getter();
  v36 = &v5[*(v3 + 36)];
  *v36 = v35;
  v36[1] = v37;
  v38 = sub_1000024C4(&qword_10022AC88, &qword_1001C26A8);
  sub_100171B98(v36 + *(v38 + 44));
  v39 = static Alignment.center.getter();
  v41 = v40;
  v42 = (v36 + *(sub_1000024C4(&qword_10022AC90, &qword_1001C26B0) + 36));
  *v42 = v39;
  v42[1] = v41;
  v43 = v45;
  *v5 = v46;
  *(v5 + 1) = v43;
  v5[16] = v14;
  *(v5 + 3) = v16;
  *(v5 + 4) = KeyPath;
  *(v5 + 5) = 1;
  v5[48] = 0;
  v5[56] = v6;
  *(v5 + 8) = v19;
  *(v5 + 9) = v21;
  *(v5 + 10) = v23;
  *(v5 + 11) = v25;
  v5[96] = 0;
  v5[104] = v26;
  *(v5 + 14) = v28;
  *(v5 + 15) = v30;
  *(v5 + 16) = v32;
  *(v5 + 17) = v34;
  v5[144] = 0;
  sub_100173294();
  View.accessibilityIdentifier(_:)();
  return sub_1000050C4(v5, &qword_10022AC80, &qword_1001C26A0);
}

uint64_t sub_100171B98@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v30 = sub_1000024C4(&qword_1002259F8, &qword_1001C1900);
  v1 = __chkstk_darwin(v30);
  v31 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v29 - v3;
  v5 = sub_1000024C4(&qword_10022ACA8, &unk_1001C26B8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = (&v29 - v10);
  v12 = &v29 + *(v9 + 44) - v10;
  v13 = type metadata accessor for RoundedRectangle();
  v14 = *(v13 + 20);
  v15 = enum case for RoundedCornerStyle.continuous(_:);
  v16 = type metadata accessor for RoundedCornerStyle();
  v17 = *(*(v16 - 8) + 104);
  v17(&v12[v14], v15, v16);
  __asm { FMOV            V0.2D, #12.0 }

  v29 = _Q0;
  *v12 = _Q0;
  *&v12[*(sub_1000024C4(&qword_100221C80, &qword_1001B6990) + 36)] = 256;
  *v11 = 11;
  v17(&v4[*(v13 + 20)], v15, v16);
  *v4 = v29;
  if (qword_100220C38 != -1)
  {
    swift_once();
  }

  v23 = Color.opacity(_:)();
  v24 = v30;
  *&v4[*(v30 + 52)] = v23;
  *&v4[*(v24 + 56)] = 256;
  sub_10000BEB8(v11, v8, &qword_10022ACA8, &unk_1001C26B8);
  v25 = v31;
  sub_10000BEB8(v4, v31, &qword_1002259F8, &qword_1001C1900);
  v26 = v32;
  sub_10000BEB8(v8, v32, &qword_10022ACA8, &unk_1001C26B8);
  v27 = sub_1000024C4(&qword_10022ACB0, &qword_1001C26C8);
  sub_10000BEB8(v25, v26 + *(v27 + 48), &qword_1002259F8, &qword_1001C1900);
  sub_1000050C4(v4, &qword_1002259F8, &qword_1001C1900);
  sub_1000050C4(v11, &qword_10022ACA8, &unk_1001C26B8);
  sub_1000050C4(v25, &qword_1002259F8, &qword_1001C1900);
  return sub_1000050C4(v8, &qword_10022ACA8, &unk_1001C26B8);
}

uint64_t sub_100171EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_100171F8C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100171FF0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100172044(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_10017205C(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_10017205C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1000187D8(a1, a2, a3 & 1);
}

uint64_t sub_100172098(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1001720B0(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1001720B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_100017398(a1, a2, a3 & 1);
}

uint64_t sub_1001720EC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

BOOL sub_100172140(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = type metadata accessor for ContentSizeCategory();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a1, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v12 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v12 == enum case for ContentSizeCategory.small(_:))
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.medium(_:))
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v12 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v13 = 4;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v13 = 5;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v13 = 6;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v13 = 7;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v13 = 8;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v13 = 9;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v13 = 10;
    }

    else
    {
      if (v12 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == enum case for ContentSizeCategory.small(_:))
  {
    v16 = 1;
  }

  else if (v15 == enum case for ContentSizeCategory.medium(_:))
  {
    v16 = 2;
  }

  else
  {
    if (v15 != enum case for ContentSizeCategory.large(_:))
    {
      if (v15 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v16 = 4;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v16 = 5;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v16 = 6;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v16 = 7;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v16 = 8;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v16 = 9;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v16 = 10;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v16 = 11;
        return v13 >= v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 >= v16;
}

uint64_t sub_100172558@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1001725BC()
{
  result = qword_10022AC08;
  if (!qword_10022AC08)
  {
    sub_10000460C(&qword_10022AC00, &qword_1001C25B0);
    sub_100172674();
    sub_10000BFFC(&qword_100221B48, &qword_100221B50, &unk_1001B5930, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AC08);
  }

  return result;
}

unint64_t sub_100172674()
{
  result = qword_10022AC10;
  if (!qword_10022AC10)
  {
    sub_10000460C(&qword_10022AC18, &qword_1001C25B8);
    sub_10000BFFC(&qword_100223108, &qword_100223110, &qword_1001B6E90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AC10);
  }

  return result;
}

unint64_t sub_10017275C()
{
  result = qword_10022AC38;
  if (!qword_10022AC38)
  {
    sub_10000460C(&qword_10022AB00, &qword_1001C2448);
    sub_10017280C(&qword_10022AC40, &qword_10022AC30, &qword_1001C25D0, sub_1001728C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AC38);
  }

  return result;
}

uint64_t sub_10017280C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2, a3);
    a4();
    sub_10017297C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001728C0()
{
  result = qword_10022AC48;
  if (!qword_10022AC48)
  {
    sub_10000460C(&qword_10022AC28, &qword_1001C25C8);
    sub_10017297C(&qword_10022AC50, type metadata accessor for PlayButtonView, &unk_1001B76E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AC48);
  }

  return result;
}

uint64_t sub_10017297C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001729C4()
{
  v10 = *(v0 + 32);
  v12[0] = *(v0 + 16);
  v11 = *&v12[0];
  v12[1] = v10;
  v1 = type metadata accessor for HeaderModule(0, v12);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80));
  type metadata accessor for HeaderViewModel(255, v11, v10, v3);
  v4 = type metadata accessor for Bindable();
  (*(*(v4 - 8) + 8))(v2, v4);

  v5 = *(v1 + 56);
  sub_1000024C4(qword_100221928, &unk_1001B65E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = *(v1 + 60);
  sub_1000024C4(&qword_1002229F8, &qword_1001BBE60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ContentSizeCategory();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100172BE8(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v10[0] = v1[2];
  v2 = v10[0];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v6 = *(type metadata accessor for HeaderModule(0, v10) - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_100172CFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100172D64()
{
  result = qword_10022AC60;
  if (!qword_10022AC60)
  {
    sub_10000460C(&qword_10022AAF8, &qword_1001C2440);
    sub_10000460C(&qword_10022AC68, &qword_1001C2618);
    sub_100173378(&qword_10022AC70, &qword_10022AC68, &qword_1001C2618, sub_100172E58);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AC60);
  }

  return result;
}

unint64_t sub_100172E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10022AC78;
  if (!qword_10022AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AC78);
  }

  return result;
}

uint64_t sub_100172EBC(uint64_t *a1)
{
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_10022AAF8, &qword_1001C2440);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_10022AB00, &qword_1001C2448);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  sub_10000460C(&qword_10022AB08, &qword_1001C2450);
  sub_10000460C(&qword_10022AB10, &qword_1001C2458);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v1 = type metadata accessor for VStack();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for TicketView(255, &AssociatedTypeWitness);
  WitnessTable = swift_getWitnessTable();
  v4 = swift_getWitnessTable();
  AssociatedTypeWitness = v1;
  v9 = v2;
  AssociatedConformanceWitness = WitnessTable;
  v11 = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  AssociatedTypeWitness = v1;
  v9 = v2;
  AssociatedConformanceWitness = WitnessTable;
  v11 = v4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  AssociatedTypeWitness = OpaqueTypeMetadata2;
  v9 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  AssociatedTypeWitness = OpaqueTypeMetadata2;
  v9 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

unint64_t sub_100173294()
{
  result = qword_10022AC98;
  if (!qword_10022AC98)
  {
    sub_10000460C(&qword_10022AC80, &qword_1001C26A0);
    sub_100173378(&qword_100229288, &qword_100229290, &unk_1001C0648, sub_1000F4924);
    sub_10000BFFC(&qword_10022ACA0, &qword_10022AC90, &qword_1001C26B0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AC98);
  }

  return result;
}

uint64_t sub_100173378(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100173454(_OWORD *a1)
{
  v1 = a1[2];
  v12 = a1[1];
  v13 = v1;
  v14 = a1[3];
  type metadata accessor for MusicEventViewModel(255, &v12);
  v2 = type metadata accessor for State();
  if (v3 <= 0x3F)
  {
    v15 = 0;
    *&v12 = v2;
    sub_100017044(319);
    if (v5 <= 0x3F)
    {
      v16 = 0;
      *(&v12 + 1) = v4;
      sub_1000CD2D0(319, &qword_1002219B8, &type metadata accessor for DismissAction);
      if (v7 <= 0x3F)
      {
        v17 = 0;
        *&v13 = v6;
        sub_1000CD2D0(319, &qword_100221C00, &type metadata accessor for ColorScheme);
        if (v9 <= 0x3F)
        {
          v18 = 0;
          *(&v13 + 1) = v8;
          sub_100029AB4();
          if (v11 <= 0x3F)
          {
            v19 = 0;
            *&v14 = v10;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10017358C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000024C4(qword_100224528, &unk_1001B8F10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 72);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000024C4(&qword_100221B80, &unk_1001B72D0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 76);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1001736DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1000024C4(qword_100224528, &unk_1001B8F10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 72);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000024C4(&qword_100221B80, &unk_1001B72D0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 76);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10017387C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100173974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100173A6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v7 = *a1;
  v17 = a1;
  State.init(wrappedValue:)();
  v8 = *(&v16[0] + 1);
  *a4 = *&v16[0];
  a4[1] = v8;
  type metadata accessor for RemoteViewConfiguration();
  sub_1001831E4(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  a4[2] = EnvironmentObject.init()();
  a4[3] = v9;
  v10 = v7[6];
  v16[0] = v7[5];
  v16[1] = v10;
  v16[2] = v7[7];
  v11 = type metadata accessor for MusicEventView(0, v16);
  v12 = v11[18];
  *(a4 + v12) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C0, &qword_1001B43A0);
  swift_storeEnumTagMultiPayload();
  v13 = v11[19];
  *(a4 + v13) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C8, &qword_1001B6B60);
  result = swift_storeEnumTagMultiPayload();
  v15 = a4 + v11[20];
  *v15 = a2;
  v15[8] = a3 & 1;
  return result;
}

uint64_t sub_100173C74(_OWORD *a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v3 = a1[2];
  v5[0] = a1[1];
  v5[1] = v3;
  v5[2] = a1[3];
  type metadata accessor for MusicEventViewModel(255, v5);
  type metadata accessor for State();
  State.wrappedValue.getter();
  return *&v5[0];
}

uint64_t sub_100173CD8(_OWORD *a1)
{
  v2 = v1[1];
  v6 = *v1;
  v7 = v2;
  v3 = a1[2];
  v5[0] = a1[1];
  v5[1] = v3;
  v5[2] = a1[3];
  type metadata accessor for MusicEventViewModel(255, v5);
  type metadata accessor for State();
  State.projectedValue.getter();
  return *&v5[0];
}

uint64_t sub_100173D40(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 16);
  if (v7)
  {
    if (*(v7 + 88) && *(v7 + 80) == 1)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 1)
    {
      v11 = v1 + *(a1 + 80);
      v12 = *v11;
      if (*(v11 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v13 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_10001BC5C(v12, 0);
        (*(v4 + 8))(v6, v3);
        LOBYTE(v12) = v16[15];
      }

      v14 = v12 ^ 1;
      return v14 & 1;
    }

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_1001831E4(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100173FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v196 = a2;
  v3 = type metadata accessor for TaskPriority();
  v194 = *(v3 - 8);
  v195 = v3;
  v4 = __chkstk_darwin(v3);
  v193 = &v164 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = *(a1 - 8);
  v210 = *(v211 + 64);
  __chkstk_darwin(v4);
  v203 = &v164 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = "r-Past-Event-Badge";
  v7 = *(a1 + 16);
  v207 = a1;
  type metadata accessor for Optional();
  v204 = type metadata accessor for Binding();
  v209 = *(v204 - 8);
  __chkstk_darwin(v204);
  v191 = &v164 - v8;
  v201 = type metadata accessor for NavigationPath();
  v9 = *(a1 + 40);
  swift_getAssociatedTypeWitness();
  v10 = v9;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedConformanceWitness();
  type metadata accessor for HeroImageView(255, v13, v14, v15);
  v16 = type metadata accessor for _ConditionalContent();
  v205 = *(v10 + 8);
  v17 = v205;
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1000ED714(WitnessTable, v19, v20);
  v241 = WitnessTable;
  v242 = v21;
  v22 = swift_getWitnessTable();
  *&v243 = v7;
  *(&v243 + 1) = v16;
  *&v244 = v17;
  *(&v244 + 1) = v22;
  type metadata accessor for HeaderModule(255, &v243);
  v23 = type metadata accessor for ModifiedContent();
  v239 = swift_getWitnessTable();
  v240 = &protocol witness table for _PaddingLayout;
  *&v213 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v24 = swift_getWitnessTable();
  *&v243 = v23;
  *(&v243 + 1) = v24;
  *&v243 = swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_10022AD48, &unk_1001C2750);
  sub_10000460C(&qword_100223418, &qword_1001B7350);
  *&v212 = v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v25 = swift_getAssociatedTypeWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v235 = AssociatedTypeWitness;
  v236 = v25;
  v237 = AssociatedConformanceWitness;
  v238 = v26;
  type metadata accessor for PromotionalAssetsEntryView(255, &v235);
  swift_getWitnessTable();
  v27 = type metadata accessor for Button();
  v28 = type metadata accessor for PlainButtonStyle();
  v29 = swift_getWitnessTable();
  v30 = sub_1001831E4(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v235 = v27;
  v236 = v28;
  v237 = v29;
  v238 = v30;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v199 = &protocol conformance descriptor for TupleView<A>;
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_10000460C(&qword_1002230D0, &unk_1001B6E00);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  sub_10000460C(&qword_100224648, &unk_1001B90F0);
  type metadata accessor for _ConditionalContent();
  *(&v243 + 1) = type metadata accessor for Optional();
  v31 = v205;
  type metadata accessor for DetailsModule(255, v7, v205, v32);
  *&v244 = type metadata accessor for ModifiedContent();
  v33 = swift_getAssociatedTypeWitness();
  v206 = v7;
  v34 = swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule(255, v33, v34, v35);
  *(&v244 + 1) = type metadata accessor for ModifiedContent();
  v36 = *(v207 + 3);
  v208 = *(v207 + 6);
  v190 = v36;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v37 = swift_getAssociatedTypeWitness();
  v38 = swift_getAssociatedConformanceWitness();
  type metadata accessor for MusicModule(255, v37, v38, v39);
  v40 = type metadata accessor for ModifiedContent();
  v233 = swift_getWitnessTable();
  v234 = &protocol witness table for _PaddingLayout;
  v41 = swift_getWitnessTable();
  v235 = v40;
  v236 = v41;
  swift_getOpaqueTypeMetadata2();
  v200 = type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  v245 = type metadata accessor for Optional();
  v42 = swift_getAssociatedTypeWitness();
  v43 = swift_getAssociatedTypeWitness();
  v44 = swift_getAssociatedConformanceWitness();
  v45 = swift_getAssociatedConformanceWitness();
  v235 = v42;
  v236 = v43;
  v237 = v44;
  v238 = v45;
  type metadata accessor for PlaylistModule(255, &v235);
  type metadata accessor for ModifiedContent();
  v246 = type metadata accessor for Optional();
  type metadata accessor for UpcomingModule(255, v7, v31, v46);
  v247 = type metadata accessor for Optional();
  v248 = sub_10000460C(&qword_1002245B8, &unk_1001BBA20);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v47 = type metadata accessor for ScrollView();
  v48 = swift_getWitnessTable();
  *&v243 = v47;
  *(&v243 + 1) = v48;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v243 = v47;
  *(&v243 + 1) = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v243 = OpaqueTypeMetadata2;
  *(&v243 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100221D58, &unk_1001B6980);
  v51 = type metadata accessor for ModifiedContent();
  *&v243 = OpaqueTypeMetadata2;
  *(&v243 + 1) = OpaqueTypeConformance2;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = sub_10000BFFC(&qword_100221D50, &qword_100221D58, &unk_1001B6980, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v231 = v52;
  v232 = v53;
  v54 = swift_getWitnessTable();
  *&v243 = v51;
  *(&v243 + 1) = v54;
  v55 = swift_getOpaqueTypeMetadata2();
  *&v243 = v51;
  *(&v243 + 1) = v54;
  v56 = swift_getOpaqueTypeConformance2();
  v59 = sub_10001877C(v56, v57, v58);
  *&v243 = v55;
  *(&v243 + 1) = &type metadata for String;
  *&v244 = v56;
  *(&v244 + 1) = v59;
  v60 = swift_getOpaqueTypeMetadata2();
  *&v243 = v55;
  *(&v243 + 1) = &type metadata for String;
  *&v244 = v56;
  *(&v244 + 1) = v59;
  v61 = swift_getOpaqueTypeConformance2();
  *&v243 = v60;
  *(&v243 + 1) = v61;
  v62 = swift_getOpaqueTypeMetadata2();
  *&v243 = v60;
  *(&v243 + 1) = v61;
  v63 = swift_getOpaqueTypeConformance2();
  *&v243 = v62;
  *(&v243 + 1) = &type metadata for Bool;
  *&v244 = v63;
  *(&v244 + 1) = &protocol witness table for Bool;
  v64 = swift_getOpaqueTypeMetadata2();
  v65 = sub_10000460C(&qword_1002245C0, &qword_1001C2760);
  *&v243 = v62;
  *(&v243 + 1) = &type metadata for Bool;
  *&v244 = v63;
  *(&v244 + 1) = &protocol witness table for Bool;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = sub_10000BFFC(&qword_1002245C8, &qword_1002245C0, &qword_1001C2760, &protocol conformance descriptor for TupleToolbarContent<A>);
  *&v243 = v64;
  *(&v243 + 1) = v65;
  *&v244 = v66;
  *(&v244 + 1) = v67;
  v174 = swift_getOpaqueTypeMetadata2();
  *&v243 = v64;
  *(&v243 + 1) = v65;
  *&v244 = v66;
  *(&v244 + 1) = v67;
  v173 = swift_getOpaqueTypeConformance2();
  v68 = type metadata accessor for NavigationStack();
  v176 = *(v68 - 8);
  __chkstk_darwin(v68);
  v170 = &v164 - v69;
  v165 = v68;
  v70 = type metadata accessor for ModifiedContent();
  v184 = *(v70 - 8);
  __chkstk_darwin(v70);
  v197 = &v164 - v71;
  v72 = type metadata accessor for AppleMusicFetcher();
  v73 = sub_1001831E4(&qword_100221760, type metadata accessor for AppleMusicFetcher, &unk_1001B9F10);
  v74 = v206;
  *&v243 = v206;
  *(&v243 + 1) = v72;
  *&v244 = v212;
  *(&v244 + 1) = v73;
  v75 = type metadata accessor for PromotionalAssetsView(255, &v243);
  v76 = swift_getWitnessTable();
  v164 = v76;
  v77 = sub_1001831E4(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v229 = v76;
  v230 = v77;
  v78 = swift_getWitnessTable();
  v79 = *(v205 + 16);
  v80 = swift_getWitnessTable();
  *&v243 = v70;
  *(&v243 + 1) = v74;
  v168 = v78;
  v169 = v70;
  v166 = v75;
  v167 = v80;
  *&v244 = v75;
  *(&v244 + 1) = v78;
  v81 = v78;
  v245 = v79;
  v246 = v80;
  v82 = swift_getOpaqueTypeMetadata2();
  v185 = *(v82 - 8);
  __chkstk_darwin(v82);
  v201 = &v164 - v83;
  *&v243 = v70;
  *(&v243 + 1) = v74;
  *&v244 = v75;
  *(&v244 + 1) = v81;
  v245 = v79;
  v246 = v80;
  v84 = swift_getOpaqueTypeConformance2();
  v85 = v207;
  v86 = swift_getWitnessTable();
  *&v243 = v82;
  *(&v243 + 1) = v74;
  v87 = v82;
  v175 = v82;
  *&v244 = v85;
  *(&v244 + 1) = v84;
  v171 = v86;
  v172 = v84;
  v245 = v79;
  v246 = v86;
  v198 = v79;
  v179 = swift_getOpaqueTypeMetadata2();
  v183 = *(v179 - 8);
  __chkstk_darwin(v179);
  v199 = &v164 - v88;
  v89 = type metadata accessor for ModifiedContent();
  v181 = v89;
  v189 = *(v89 - 8);
  __chkstk_darwin(v89);
  v200 = &v164 - v90;
  *&v243 = v87;
  *(&v243 + 1) = v74;
  *&v244 = v85;
  *(&v244 + 1) = v84;
  v245 = v79;
  v246 = v86;
  v177 = swift_getOpaqueTypeConformance2();
  v227 = v177;
  v228 = &protocol witness table for _AppearanceActionModifier;
  v180 = swift_getWitnessTable();
  *&v243 = v89;
  *(&v243 + 1) = v180;
  v186 = &unk_1001C94C8;
  v91 = swift_getOpaqueTypeMetadata2();
  v92 = *(v91 - 8);
  v187 = v91;
  v188 = v92;
  v93 = __chkstk_darwin(v91);
  v178 = &v164 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v93);
  v182 = &v164 - v95;
  *&v96 = *(v85 + 4);
  *(&v96 + 1) = v212;
  *&v97 = v74;
  *(&v97 + 1) = v190;
  v212 = v96;
  v213 = v97;
  v222 = v97;
  v223 = v96;
  v98 = *(v85 + 7);
  v99 = v208;
  v224 = v208;
  v225 = v98;
  v100 = v98;
  v226 = v202;
  v101 = v170;
  NavigationStack.init<>(root:)();
  v102 = v165;
  View.accessibilityIdentifier(_:)();
  (*(v176 + 8))(v101, v102);
  v103 = sub_100173CD8(v85);
  v105 = v104;
  v107 = v106;
  v218 = v213;
  v219 = v212;
  v220 = v99;
  v221 = v100;
  swift_getKeyPath();
  v235 = v103;
  v236 = v105;
  v237 = v107;
  v244 = v212;
  v243 = v213;
  v245 = v99;
  v246 = v100;
  type metadata accessor for MusicEventViewModel(255, &v243);
  v176 = type metadata accessor for Binding();
  v108 = v191;
  Binding.subscript.getter();

  v109 = swift_allocObject();
  v110 = v212;
  *(v109 + 16) = v213;
  *(v109 + 32) = v110;
  *(v109 + 48) = v99;
  *(v109 + 56) = v100;
  v111 = v100;
  v205 = v100;
  swift_checkMetadataState();
  v112 = v169;
  v113 = v197;
  View.sheet<A, B>(item:onDismiss:content:)();

  v114 = *(v209 + 8);
  v209 += 8;
  v190 = v114;
  v114(v108, v204);
  v184[1](v113, v112);
  v115 = v207;
  v116 = v202;
  v117 = sub_100173CD8(v207);
  v119 = v118;
  v121 = v120;
  v214 = v213;
  v215 = v212;
  v216 = v99;
  v217 = v111;
  swift_getKeyPath();
  *&v243 = v117;
  *(&v243 + 1) = v119;
  *&v244 = v121;
  Binding.subscript.getter();

  v122 = v211;
  v123 = *(v211 + 16);
  v176 = v211 + 16;
  v184 = v123;
  v124 = v203;
  v125 = v116;
  v126 = v116;
  v127 = v115;
  (v123)(v203, v125, v115);
  v128 = *(v122 + 80);
  v129 = (v128 + 64) & ~v128;
  v130 = swift_allocObject();
  v131 = v212;
  *(v130 + 16) = v213;
  *(v130 + 32) = v131;
  v132 = v208;
  v133 = v205;
  *(v130 + 48) = v208;
  *(v130 + 56) = v133;
  v197 = *(v122 + 32);
  v211 = v122 + 32;
  (v197)(v130 + v129, v124, v127);
  v134 = v175;
  v135 = v201;
  View.sheet<A, B>(item:onDismiss:content:)();

  v190(v108, v204);
  (*(v185 + 8))(v135, v134);
  v136 = v203;
  v137 = v184;
  (v184)(v203, v126, v127);
  v138 = swift_allocObject();
  v139 = v212;
  *(v138 + 16) = v213;
  *(v138 + 32) = v139;
  v140 = v205;
  *(v138 + 48) = v132;
  *(v138 + 56) = v140;
  v141 = v138 + v129;
  v142 = v136;
  (v197)(v141, v136, v127);
  v143 = v199;
  v144 = v179;
  View.onAppear(perform:)();

  (*(v183 + 8))(v143, v144);
  v137(v142, v126, v127);
  type metadata accessor for MainActor();
  v145 = static MainActor.shared.getter();
  v146 = swift_allocObject();
  *(v146 + 16) = v145;
  *(v146 + 24) = &protocol witness table for MainActor;
  v147 = v212;
  *(v146 + 32) = v213;
  *(v146 + 48) = v147;
  v148 = v205;
  *(v146 + 64) = v208;
  *(v146 + 72) = v148;
  (v197)(v146 + ((v128 + 80) & ~v128), v142, v127);
  v149 = v193;
  v151 = v180;
  v150 = v181;
  j___sScP13userInitiatedScPvgZ();
  v162 = v150;
  v163 = v151;
  v152 = v151;
  v153 = v150;
  v154 = v178;
  v155 = v149;
  v156 = v149;
  v157 = v200;
  sub_10000250C(0, v155, 0xD000000000000025, (v192 | 0x8000000000000000), 215, &unk_1001C27E0, v146, v178, v162, v163);
  (*(v194 + 8))(v156, v195);
  (*(v189 + 8))(v157, v153);
  *&v243 = v153;
  *(&v243 + 1) = v152;
  swift_getOpaqueTypeConformance2();
  v158 = v182;
  v159 = v187;
  sub_1000EE87C();
  v160 = *(v188 + 8);
  v160(v154, v159);
  sub_1000EE87C();
  return (v160)(v158, v159);
}

uint64_t sub_10017580C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v194 = a7;
  v195 = a6;
  v196 = a4;
  v197 = a1;
  v199 = a3;
  v191 = a8;
  OpaqueTypeMetadata2 = a2;
  v210 = a3;
  v211 = a4;
  v212 = a5;
  v213 = a6;
  v214 = a7;
  v10 = type metadata accessor for MusicEventView(0, &OpaqueTypeMetadata2);
  v189 = *(v10 - 1);
  v190 = v10;
  v187 = *(v189 + 64);
  __chkstk_darwin(v10);
  v188 = &v138 - v11;
  v12 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v185 = *(v12 - 8);
  v186 = v12;
  __chkstk_darwin(v12);
  v184 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContentMarginPlacement();
  v182 = *(v14 - 8);
  v183 = v14;
  __chkstk_darwin(v14);
  v181 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ScrollIndicatorVisibility();
  v179 = *(v16 - 8);
  v180 = v16;
  __chkstk_darwin(v16);
  v178 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedConformanceWitness();
  type metadata accessor for HeroImageView(255, v20, v21, v22);
  v23 = type metadata accessor for _ConditionalContent();
  v24 = a5[1];
  WitnessTable = swift_getWitnessTable();
  v28 = sub_1000ED714(WitnessTable, v26, v27);
  v207 = WitnessTable;
  v208 = v28;
  v29 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = a2;
  v210 = v23;
  v211 = v24;
  v212 = v29;
  type metadata accessor for HeaderModule(255, &OpaqueTypeMetadata2);
  v30 = type metadata accessor for ModifiedContent();
  v205 = swift_getWitnessTable();
  v206 = &protocol witness table for _PaddingLayout;
  v192 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v31 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v30;
  v210 = v31;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_10022AD48, &unk_1001C2750);
  sub_10000460C(&qword_100223418, &qword_1001B7350);
  v193 = a5;
  v198 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v32 = swift_getAssociatedTypeWitness();
  v33 = swift_getAssociatedConformanceWitness();
  v201 = AssociatedTypeWitness;
  v202 = v32;
  v203 = AssociatedConformanceWitness;
  v204 = v33;
  type metadata accessor for PromotionalAssetsEntryView(255, &v201);
  swift_getWitnessTable();
  v34 = type metadata accessor for Button();
  v35 = type metadata accessor for PlainButtonStyle();
  v36 = swift_getWitnessTable();
  v37 = sub_1001831E4(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v201 = v34;
  v202 = v35;
  v203 = v36;
  v204 = v37;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v177 = &protocol conformance descriptor for TupleView<A>;
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_10000460C(&qword_1002230D0, &unk_1001B6E00);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  sub_10000460C(&qword_100224648, &unk_1001B90F0);
  type metadata accessor for _ConditionalContent();
  v210 = type metadata accessor for Optional();
  v38 = v198;
  type metadata accessor for DetailsModule(255, v198, v24, v39);
  v211 = type metadata accessor for ModifiedContent();
  v40 = swift_getAssociatedTypeWitness();
  v41 = swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule(255, v40, v41, v42);
  v212 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v43 = swift_getAssociatedTypeWitness();
  v44 = swift_getAssociatedConformanceWitness();
  type metadata accessor for MusicModule(255, v43, v44, v45);
  v46 = type metadata accessor for ModifiedContent();
  v200[17] = swift_getWitnessTable();
  v200[18] = &protocol witness table for _PaddingLayout;
  v47 = swift_getWitnessTable();
  v201 = v46;
  v202 = v47;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  v213 = type metadata accessor for Optional();
  v48 = swift_getAssociatedTypeWitness();
  v49 = swift_getAssociatedTypeWitness();
  v50 = swift_getAssociatedConformanceWitness();
  v51 = swift_getAssociatedConformanceWitness();
  v201 = v48;
  v202 = v49;
  v203 = v50;
  v204 = v51;
  type metadata accessor for PlaylistModule(255, &v201);
  type metadata accessor for ModifiedContent();
  v214 = type metadata accessor for Optional();
  type metadata accessor for UpcomingModule(255, v38, v24, v52);
  v215 = type metadata accessor for Optional();
  v216 = sub_10000460C(&qword_1002245B8, &unk_1001BBA20);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v140 = type metadata accessor for VStack();
  v139 = swift_getWitnessTable();
  v53 = type metadata accessor for ScrollView();
  v157 = *(v53 - 8);
  __chkstk_darwin(v53);
  v138 = &v138 - v54;
  v55 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v53;
  v210 = v55;
  v56 = swift_getOpaqueTypeMetadata2();
  v156 = *(v56 - 8);
  __chkstk_darwin(v56);
  v150 = &v138 - v57;
  v152 = v53;
  OpaqueTypeMetadata2 = v53;
  v210 = v55;
  v146 = v55;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v56;
  v210 = OpaqueTypeConformance2;
  v59 = swift_getOpaqueTypeMetadata2();
  v163 = *(v59 - 8);
  __chkstk_darwin(v59);
  v155 = &v138 - v60;
  sub_10000460C(&qword_100221D58, &unk_1001B6980);
  v166 = v59;
  v61 = type metadata accessor for ModifiedContent();
  v162 = *(v61 - 8);
  __chkstk_darwin(v61);
  v154 = &v138 - v62;
  v160 = v56;
  OpaqueTypeMetadata2 = v56;
  v210 = OpaqueTypeConformance2;
  v145 = OpaqueTypeConformance2;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = sub_10000BFFC(&qword_100221D50, &qword_100221D58, &unk_1001B6980, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v141 = v63;
  v200[15] = v63;
  v200[16] = v64;
  v65 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v61;
  v210 = v65;
  v66 = swift_getOpaqueTypeMetadata2();
  v149 = *(v66 - 8);
  __chkstk_darwin(v66);
  v148 = &v138 - v67;
  v165 = v61;
  OpaqueTypeMetadata2 = v61;
  v210 = v65;
  v142 = v65;
  v68 = swift_getOpaqueTypeConformance2();
  v71 = sub_10001877C(v68, v69, v70);
  OpaqueTypeMetadata2 = v66;
  v210 = &type metadata for String;
  v211 = v68;
  v212 = v71;
  v72 = swift_getOpaqueTypeMetadata2();
  v164 = *(v72 - 8);
  __chkstk_darwin(v72);
  v158 = &v138 - v73;
  v151 = v66;
  OpaqueTypeMetadata2 = v66;
  v210 = &type metadata for String;
  v143 = v71;
  v144 = v68;
  v211 = v68;
  v212 = v71;
  v74 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v72;
  v210 = v74;
  v75 = swift_getOpaqueTypeMetadata2();
  v176 = *(v75 - 8);
  __chkstk_darwin(v75);
  v192 = &v138 - v76;
  v169 = v72;
  OpaqueTypeMetadata2 = v72;
  v210 = v74;
  v147 = v74;
  v77 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v75;
  v210 = &type metadata for Bool;
  v211 = v77;
  v212 = &protocol witness table for Bool;
  v78 = swift_getOpaqueTypeMetadata2();
  v174 = *(v78 - 8);
  __chkstk_darwin(v78);
  v173 = &v138 - v79;
  v80 = sub_10000460C(&qword_1002245C0, &qword_1001C2760);
  v177 = v75;
  OpaqueTypeMetadata2 = v75;
  v210 = &type metadata for Bool;
  v168 = v77;
  v211 = v77;
  v212 = &protocol witness table for Bool;
  v81 = swift_getOpaqueTypeConformance2();
  v82 = sub_10000BFFC(&qword_1002245C8, &qword_1002245C0, &qword_1001C2760, &protocol conformance descriptor for TupleToolbarContent<A>);
  v175 = v78;
  OpaqueTypeMetadata2 = v78;
  v210 = v80;
  v83 = v138;
  v172 = v80;
  v167 = v81;
  v211 = v81;
  v212 = v82;
  v161 = v82;
  v84 = swift_getOpaqueTypeMetadata2();
  v170 = *(v84 - 8);
  v171 = v84;
  v85 = __chkstk_darwin(v84);
  v153 = &v138 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v85);
  v159 = &v138 - v87;
  v200[2] = v198;
  v200[3] = v199;
  v200[4] = v196;
  v200[5] = v193;
  v200[6] = v195;
  v200[7] = v194;
  v200[8] = v197;
  v88 = static Axis.Set.vertical.getter();
  sub_1000E7A24(v88, sub_100182CFC, v200, v140, v139);
  v89 = v178;
  static ScrollIndicatorVisibility.never.getter();
  sub_1000024C4(&qword_1002245D0, &unk_1001BC9C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  LOBYTE(v50) = static Axis.Set.vertical.getter();
  *(inited + 32) = v50;
  v91 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v91;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v50)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v91)
  {
    Axis.Set.init(rawValue:)();
  }

  v92 = v150;
  v93 = v152;
  View.scrollIndicators(_:axes:)();
  (*(v179 + 8))(v89, v180);
  (*(v157 + 8))(v83, v93);
  static Edge.Set.top.getter();
  static Solarium.isEnabled.getter();
  v94 = v181;
  static ContentMarginPlacement.scrollContent.getter();
  v95 = v155;
  v96 = v160;
  View.contentMargins(_:_:for:)();
  (*(v182 + 8))(v94, v183);
  (*(v156 + 8))(v92, v96);
  v97 = [objc_opt_self() systemGroupedBackgroundColor];
  OpaqueTypeMetadata2 = Color.init(uiColor:)();
  static Edge.Set.all.getter();
  v98 = v154;
  v99 = v166;
  View.background<A>(_:ignoresSafeAreaEdges:)();

  (*(v163 + 8))(v95, v99);
  v101 = v184;
  v100 = v185;
  v102 = v186;
  (*(v185 + 104))(v184, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v186);
  v103 = v148;
  v104 = v165;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v100 + 8))(v101, v102);
  (*(v162 + 8))(v98, v104);
  v105 = v190;
  sub_100173C74(v190);
  v106 = sub_100168CB8();
  v108 = v107;

  OpaqueTypeMetadata2 = v106;
  v210 = v108;
  v109 = v158;
  v110 = v151;
  View.navigationTitle<A>(_:)();

  (*(v149 + 8))(v103, v110);
  sub_100173C74(v105);
  sub_100161030();

  sub_1000024C4(&qword_1002245D8, &unk_1001B90A0);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1001B49B0;
  static ToolbarPlacement.navigationBar.getter();
  v111 = v169;
  View.toolbarBackgroundVisibility(_:for:)();

  (*(v164 + 8))(v109, v111);
  v112 = swift_allocObject();
  v113 = v199;
  v112[2] = v198;
  v112[3] = v113;
  v114 = v195;
  v116 = v193;
  v115 = v194;
  v112[4] = v196;
  v112[5] = v116;
  v112[6] = v114;
  v112[7] = v115;
  v118 = v188;
  v117 = v189;
  (*(v189 + 16))(v188, v197, v105);
  v119 = (*(v117 + 80) + 64) & ~*(v117 + 80);
  v120 = swift_allocObject();
  v121 = v199;
  *(v120 + 2) = v198;
  *(v120 + 3) = v121;
  *(v120 + 4) = v196;
  *(v120 + 5) = v116;
  *(v120 + 6) = v114;
  *(v120 + 7) = v115;
  (*(v117 + 32))(&v120[v119], v118, v105);
  v137 = &protocol witness table for Bool;
  v122 = v173;
  v123 = v177;
  v124 = v192;
  View.onScrollGeometryChange<A>(for:of:action:)();

  v125 = (*(v176 + 8))(v124, v123);
  __chkstk_darwin(v125);
  v126 = v199;
  *(&v138 - 8) = v198;
  *(&v138 - 7) = v126;
  v127 = v197;
  *(&v138 - 6) = v196;
  *(&v138 - 5) = v116;
  *(&v138 - 4) = v114;
  *(&v138 - 3) = v115;
  v137 = v127;
  v128 = v153;
  v129 = v175;
  v130 = v172;
  v131 = v167;
  v132 = v161;
  View.toolbar<A>(content:)();
  (*(v174 + 8))(v122, v129);
  OpaqueTypeMetadata2 = v129;
  v210 = v130;
  v211 = v131;
  v212 = v132;
  swift_getOpaqueTypeConformance2();
  v133 = v159;
  v134 = v171;
  sub_1000EE87C();
  v135 = *(v170 + 8);
  v135(v128, v134);
  sub_1000EE87C();
  return (v135)(v133, v134);
}