uint64_t sub_100191640()
{
  *(v0 + 16) = *(*(v0 + 40) + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  *(v0 + 72) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100020C40;

  return sub_1000B6880(0);
}

uint64_t sub_100191704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001935AC();
  v6 = v5;
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = v4;
  *(a2 + 16) = v6 & 1;
  v7 = sub_10000341C(&qword_100266748, &qword_1001E0D18);
  return sub_100191770(a1, a2 + *(v7 + 44));
}

uint64_t sub_100191770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for IconOnlyLabelStyle();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000341C(&qword_100266750, &qword_1001E0D20);
  __chkstk_darwin(v6);
  v8 = v36 - v7;
  v9 = sub_10000341C(&qword_100266758, &qword_1001E0D28);
  v41 = *(v9 - 8);
  v42 = v9;
  __chkstk_darwin(v9);
  v11 = v36 - v10;
  v45 = *(a1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v12 = v44;
  swift_getKeyPath();
  *&v45 = v12;
  sub_10019A648(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v12 + 96))
  {

LABEL_3:
    v13 = 1;
    v15 = v42;
    v14 = v43;
    return (*(v41 + 56))(v14, v13, 1, v15);
  }

  v36[0] = v8;
  v36[1] = v6;
  v16 = a1;
  v37 = v11;
  v38 = v5;
  v17 = v40;
  v18 = *(v12 + 72);

  if ((v18 - 2) >= 4 && v18)
  {
    goto LABEL_3;
  }

  v45 = *(a1 + 16);
  State.wrappedValue.getter();
  v19 = v44;
  swift_getKeyPath();
  *&v45 = v19;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v19 + 112);

  if (v20)
  {
    v21 = 1;
  }

  else
  {
    v45 = *(v16 + 16);
    State.wrappedValue.getter();
    v22 = v44;
    swift_getKeyPath();
    *&v45 = v22;
    sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = *(v22 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal);
  }

  v23 = v16;
  v24 = v17;
  v26 = v38;
  v25 = v39;
  v27 = v36[0];
  *v27 = static VerticalAlignment.center.getter();
  *(v27 + 8) = 0x4030000000000000;
  *(v27 + 16) = 0;
  v28 = sub_10000341C(&qword_100266760, &qword_1001E0D58);
  sub_100191C94(v23, v21, v27 + *(v28 + 44));
  IconOnlyLabelStyle.init()();
  sub_100007120(&qword_100266768, &qword_100266750, &qword_1001E0D20, &protocol conformance descriptor for HStack<A>);
  sub_10019A648(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  v29 = v37;
  View.labelStyle<A>(_:)();
  (*(v25 + 8))(v26, v24);
  sub_10000F500(v27, &qword_100266750, &qword_1001E0D20);
  KeyPath = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = v21;
  v32 = v42;
  v33 = (v29 + *(v42 + 36));
  *v33 = KeyPath;
  v33[1] = sub_100035DEC;
  v33[2] = v31;
  v34 = v43;
  sub_10002A894(v29, v43, &qword_100266758, &qword_1001E0D28);
  v15 = v32;
  v14 = v34;
  v13 = 0;
  return (*(v41 + 56))(v14, v13, 1, v15);
}

uint64_t sub_100191C94@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v5 = sub_10000341C(&qword_100266770, &qword_1001E0D60);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v28[-v9];
  v11 = sub_10000341C(&qword_100266778, &qword_1001E0D68);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28[-v13];
  v15 = sub_10000341C(&qword_100266780, &qword_1001E0D70);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v28[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v20 = &v28[-v19];
  v30[0] = *(a1 + 32);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  if (v31 == 1)
  {
    *v14 = static VerticalAlignment.center.getter();
    *(v14 + 1) = 0x4020000000000000;
    v14[16] = 0;
    v21 = sub_10000341C(&qword_100266790, &qword_1001E0D80);
    sub_100192084(v29 & 1, a1, &v14[*(v21 + 44)]);
    sub_10002A894(v14, v20, &qword_100266778, &qword_1001E0D68);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  (*(v12 + 56))(v20, v22, 1, v11);
  v23 = swift_allocObject();
  v24 = *(a1 + 48);
  *(v23 + 48) = *(a1 + 32);
  *(v23 + 64) = v24;
  *(v23 + 80) = *(a1 + 64);
  v25 = *(a1 + 16);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v25;
  sub_1000AE0F0(a1, v30);
  sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  sub_1000081F8(v20, v18, &qword_100266780, &qword_1001E0D70);
  sub_1000081F8(v10, v8, &qword_100266770, &qword_1001E0D60);
  sub_1000081F8(v18, a3, &qword_100266780, &qword_1001E0D70);
  v26 = sub_10000341C(&qword_100266788, &qword_1001E0D78);
  sub_1000081F8(v8, a3 + *(v26 + 48), &qword_100266770, &qword_1001E0D60);
  sub_10000F500(v10, &qword_100266770, &qword_1001E0D60);
  sub_10000F500(v20, &qword_100266780, &qword_1001E0D70);
  sub_10000F500(v8, &qword_100266770, &qword_1001E0D60);
  return sub_10000F500(v18, &qword_100266780, &qword_1001E0D70);
}

uint64_t sub_100192084@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = sub_10000341C(&qword_100266798, &qword_1001E0D88);
  v6 = __chkstk_darwin(v5 - 8);
  v41 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v10 = &v38[-v9];
  v11 = __chkstk_darwin(v8);
  v13 = &v38[-v12];
  __chkstk_darwin(v11);
  v15 = &v38[-v14];
  if (a1)
  {
    v39 = 1;
    v16 = 1;
  }

  else
  {
    v44 = *(a2 + 16);
    v42[0] = *(a2 + 16);
    sub_10000341C(&qword_100261898, &qword_1001D7C40);
    State.wrappedValue.getter();
    v17 = v43;
    swift_getKeyPath();
    *&v42[0] = v17;
    sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = *(v17 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount);

    v16 = v18 == 0;
    v42[0] = v44;
    State.wrappedValue.getter();
    v19 = v43;
    swift_getKeyPath();
    *&v42[0] = v19;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = *(v19 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount);

    v39 = v20 == 0;
  }

  v21 = swift_allocObject();
  v22 = *(a2 + 48);
  *(v21 + 48) = *(a2 + 32);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(a2 + 64);
  v23 = *(a2 + 16);
  *(v21 + 16) = *a2;
  *(v21 + 32) = v23;
  sub_1000AE0F0(a2, v42);
  sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  KeyPath = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 16) = v16;
  v26 = sub_10000341C(&qword_100264608, &qword_1001DCD40);
  v27 = &v15[*(v26 + 36)];
  *v27 = KeyPath;
  v27[1] = sub_100035DEC;
  v27[2] = v25;
  v28 = swift_allocObject();
  v29 = *(a2 + 48);
  *(v28 + 48) = *(a2 + 32);
  *(v28 + 64) = v29;
  *(v28 + 80) = *(a2 + 64);
  v30 = *(a2 + 16);
  *(v28 + 16) = *a2;
  *(v28 + 32) = v30;
  sub_1000AE0F0(a2, v42);
  Button.init(action:label:)();
  v31 = swift_getKeyPath();
  v32 = swift_allocObject();
  *(v32 + 16) = v39;
  v33 = &v13[*(v26 + 36)];
  *v33 = v31;
  v33[1] = sub_100035DEC;
  v33[2] = v32;
  sub_1000081F8(v15, v10, &qword_100266798, &qword_1001E0D88);
  v34 = v41;
  sub_1000081F8(v13, v41, &qword_100266798, &qword_1001E0D88);
  v35 = v40;
  sub_1000081F8(v10, v40, &qword_100266798, &qword_1001E0D88);
  v36 = sub_10000341C(&qword_1002667A0, &unk_1001E0DE8);
  sub_1000081F8(v34, v35 + *(v36 + 48), &qword_100266798, &qword_1001E0D88);
  sub_10000F500(v13, &qword_100266798, &qword_1001E0D88);
  sub_10000F500(v15, &qword_100266798, &qword_1001E0D88);
  sub_10000F500(v34, &qword_100266798, &qword_1001E0D88);
  return sub_10000F500(v10, &qword_100266798, &qword_1001E0D88);
}

uint64_t sub_100192584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_10019261C, v6, v5);
}

uint64_t sub_10019261C()
{
  *(v0 + 16) = *(*(v0 + 40) + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  *(v0 + 72) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100011F4C;

  return sub_1000B6880(0);
}

uint64_t sub_1001926E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a3;
  type metadata accessor for MainActor();
  v3[14] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[15] = v5;
  v3[16] = v4;

  return _swift_task_switch(sub_100192778, v5, v4);
}

uint64_t sub_100192778()
{
  v1 = *(v0 + 104);
  *(v0 + 16) = *(v1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v2 = *(v0 + 64);
  swift_getKeyPath();
  *(v0 + 72) = v2;
  sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session))
  {

LABEL_4:

    v5 = *(v0 + 8);

    return v5();
  }

  *(v0 + 32) = *(v1 + 16);
  State.wrappedValue.getter();
  v3 = *(v0 + 80);
  swift_getKeyPath();
  *(v0 + 88) = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState);

  if (v4 == 1)
  {
    goto LABEL_4;
  }

  *(v0 + 48) = *(v1 + 16);
  State.wrappedValue.getter();
  *(v0 + 136) = *(v0 + 96);
  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = sub_100030018;

  return sub_1000B6880(1);
}

void sub_1001929C4(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000F34C(v2, qword_100276F08);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Handoff state changed, request alert presentation", v5, 2u);
    }

    sub_100192AB8();
  }
}

void sub_100192AB8()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x2065736F706D6F43;
  v5._object = 0xED00002068746977;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v5);
  v6._countAndFlagsBits = sub_1000971C0();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v6);

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v7);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  sub_100149E4C(v8);
  v9 = [objc_opt_self() mainBundle];
  v29._object = 0x80000001001E3AF0;
  v10._countAndFlagsBits = 0x402520657355;
  v10._object = 0xE600000000000000;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0xD000000000000069;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v29);

  sub_10000341C(&qword_10025BA50, &qword_1001D0860);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001CF9D0;
  v13 = sub_1000971C0();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_10002D7B0();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  static String.localizedStringWithFormat(_:_:)();

  aBlock = *(v1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong respondsToSelector:{"showAlertWithTitle:message:buttonTitle:buttonAction:", aBlock}])
    {
      v17 = swift_allocObject();
      v18 = *(v1 + 48);
      *(v17 + 48) = *(v1 + 32);
      *(v17 + 64) = v18;
      *(v17 + 80) = *(v1 + 64);
      v19 = *(v1 + 16);
      *(v17 + 16) = *v1;
      *(v17 + 32) = v19;
      sub_1000AE0F0(v1, &aBlock);
      v20 = String._bridgeToObjectiveC()();

      v21 = String._bridgeToObjectiveC()();

      v22 = String._bridgeToObjectiveC()();

      v27 = sub_10019A3D0;
      v28 = v17;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v25 = sub_1001256BC;
      v26 = &unk_1002522B8;
      v23 = _Block_copy(&aBlock);
      [Strong showAlertWithTitle:v20 message:v21 buttonTitle:v22 buttonAction:v23];
      swift_unknownObjectRelease();
      _Block_release(v23);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

void sub_100192F2C(uint64_t a1)
{
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F34C(v2, qword_100276F08);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Handoff approved, proceeding...", v5, 2u);
  }

  v23 = *(a1 + 16);
  v21 = *(a1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  swift_getKeyPath();
  *&v21 = v20[0];
  sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v20[0] + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task))
  {

    Task.cancel()();
  }

  sub_1000B2528(0);

  v21 = *(a1 + 16);
  State.wrappedValue.getter();
  swift_getKeyPath();
  *&v21 = v20[0];
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v20[0] + v6, &v21, &unk_10025B1C0, &unk_1001CFA90);

  if (v22)
  {
    sub_100028458(&v21, v20);
    sub_10000F500(&v21, &unk_10025B1C0, &unk_1001CFA90);
    sub_100027874(v20, v20[3]);
    sub_10000ECC4();
    sub_10000F4B4(v20);
  }

  else
  {
    sub_10000F500(&v21, &unk_10025B1C0, &unk_1001CFA90);
  }

  v21 = *(a1 + 16);
  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if (([Strong respondsToSelector:"handoffFromUCBFromTool:withPrompt:"] & 1) == 0)
    {
      swift_unknownObjectRelease();
      return;
    }

    v21 = *(a1 + 16);
    State.wrappedValue.getter();
    v8 = v20[0];
    swift_getKeyPath();
    *&v21 = v8;
    sub_10019A648(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v8 + 72);
    v10 = *(v8 + 80);
    v11 = *(v8 + 88);
    v12 = *(v8 + 96);
    sub_10002879C(v9, v10, v11, *(v8 + 96));

    if (v12 == 255)
    {
      swift_unknownObjectRelease();
      __break(1u);
    }

    else
    {
      v13 = sub_100106D00(v9, v10, v11, v12);
      sub_1000278C0(v9, v10, v11, v12);
      v21 = v23;
      State.wrappedValue.getter();
      v14 = v20[0];
      swift_getKeyPath();
      *&v21 = v14;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v15 = *(v14 + 96);
      if (v15 != 255)
      {
        v17 = *(v14 + 72);
        v16 = *(v14 + 80);
        v18 = *(v14 + 88);
        sub_10000F3F4(v17, v16, v18, *(v14 + 96));

        if (v15)
        {
          sub_1000278C0(v17, v16, v18, v15);
          v19 = 0;
        }

        else if (v18)
        {
          v19 = String._bridgeToObjectiveC()();
        }

        else
        {
          v19 = 0;
        }

        [Strong handoffFromUCBFromTool:v13 withPrompt:v19];

        swift_unknownObjectRelease();

        return;
      }
    }

    swift_unknownObjectRelease();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_1001934A4@<X0>(void (**a1)()@<X8>)
{
  v3 = *(v1 + 48);
  v14[2] = *(v1 + 32);
  v14[3] = v3;
  v15 = *(v1 + 64);
  v4 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v4;
  v5 = swift_allocObject();
  v6 = *(v1 + 48);
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(v1 + 64);
  v7 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v7;
  v8 = swift_allocObject();
  v9 = *(v1 + 48);
  *(v8 + 48) = *(v1 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(v1 + 64);
  v10 = *(v1 + 16);
  *(v8 + 16) = *v1;
  *(v8 + 32) = v10;
  *a1 = sub_10019A13C;
  a1[1] = v5;
  a1[2] = sub_10019A15C;
  a1[3] = v8;
  v11 = *(sub_10000341C(&qword_1002666C0, &qword_1001E0B40) + 40);
  sub_1000AE0F0(v14, v13);
  sub_1000AE0F0(v14, v13);
  return sub_10018E7F4(v14, a1 + v11);
}

uint64_t sub_1001935AC()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 8);
  v5 = *v0;
  v11 = *v0;
  v6 = v12;

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v11, &qword_10025BAA0, &qword_1001D0808);
    (*(v2 + 8))(v4, v1);
    v5 = v10;
  }

  if (v5)
  {
    swift_getKeyPath();
    v10 = v5;
    sub_10019A648(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();
  }

  return 0;
}

uint64_t sub_100193784()
{
  v1 = v0;
  v2 = sub_10000341C(&qword_1002667D8, &qword_1001E1030);
  __chkstk_darwin(v2);
  v51 = &v40 - v3;
  v50 = sub_10000341C(&qword_1002667E0, &qword_1001E1038);
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v40 - v4;
  v5 = sub_10000341C(&qword_10025A9A8, &qword_1001E1040);
  __chkstk_darwin(v5 - 8);
  v7 = &v40 - v6;
  *(&v40 - v6) = 0x4010000000000000;
  v8 = sub_10000341C(&qword_1002667E8, &qword_1001E1048);
  sub_100193F14(v0, &v7[*(v8 + 44)]);
  type metadata accessor for MainActor();
  sub_10019A9EC(v0, v54);
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  v11 = *(v0 + 48);
  *(v10 + 64) = *(v0 + 32);
  *(v10 + 80) = v11;
  *(v10 + 96) = *(v0 + 64);
  v12 = *(v0 + 16);
  *(v10 + 32) = *v0;
  *(v10 + 48) = v12;
  v47 = type metadata accessor for TaskPriority();
  v13 = *(v47 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v47);
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v40 - v15;
  static TaskPriority.userInitiated.getter();
  if (sub_1001C7274(2, 26, 4, 0))
  {
    v45 = type metadata accessor for _TaskModifier2();
    v46 = &v40;
    v44 = *(v45 - 8);
    __chkstk_darwin(v45);
    v42 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v54[0] = 0;
    *(&v54[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    *&v54[0] = 0xD000000000000044;
    *(&v54[0] + 1) = 0x80000001001EA9C0;
    *&v52[0] = 377;
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v7;
    v43 = v2;
    String.append(_:)(v18);

    v40 = &v40;
    __chkstk_darwin(v19);
    v20 = &v40 - v15;
    v21 = &v40 - v15;
    v22 = v47;
    (*(v13 + 16))(v20, v21, v47);
    v23 = v42;
    v2 = v43;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v13 + 8))(v16, v22);
    v24 = v48;
    sub_10002A894(v41, v48, &qword_10025A9A8, &qword_1001E1040);
    v25 = sub_10000341C(&qword_10025A9B0, &unk_1001CE190);
    (*(v44 + 32))(v24 + *(v25 + 36), v23, v45);
  }

  else
  {
    v26 = sub_10000341C(&qword_10025A9B8, &unk_1001E1070);
    v24 = v48;
    v27 = (v48 + *(v26 + 36));
    v28 = type metadata accessor for _TaskModifier();
    (*(v13 + 32))(&v27[*(v28 + 20)], &v40 - v15, v47);
    *v27 = &unk_1001E1058;
    *(v27 + 1) = v10;
    sub_10002A894(v7, v24, &qword_10025A9A8, &qword_1001E1040);
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v29 = v51;
  (*(v49 + 32))(v51, v24, v50);
  v30 = (v29 + *(v2 + 36));
  v31 = v54[5];
  v30[4] = v54[4];
  v30[5] = v31;
  v30[6] = v54[6];
  v32 = v54[1];
  *v30 = v54[0];
  v30[1] = v32;
  v33 = v54[3];
  v30[2] = v54[2];
  v30[3] = v33;
  v52[0] = *(v1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v34 = v53;
  swift_getKeyPath();
  *&v52[0] = v34;
  sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v35 = *(v34 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState);

  LOBYTE(v53) = v35;
  v36 = swift_allocObject();
  v37 = *(v1 + 48);
  *(v36 + 48) = *(v1 + 32);
  *(v36 + 64) = v37;
  *(v36 + 80) = *(v1 + 64);
  v38 = *(v1 + 16);
  *(v36 + 16) = *v1;
  *(v36 + 32) = v38;
  sub_10019A9EC(v1, v52);
  sub_10019AAD0();
  sub_100035198();
  View.onChange<A>(of:initial:_:)();

  return sub_10000F500(v29, &qword_1002667D8, &qword_1001E1030);
}

void sub_100193F14(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = sub_10000341C(&qword_1002620E8, &qword_1001D8800);
  __chkstk_darwin(v3 - 8);
  v5 = &v76[-v4];
  v80 = sub_10000341C(&qword_100266818, &unk_1001E1080);
  v6 = __chkstk_darwin(v80);
  v84 = &v76[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v83 = &v76[-v8];
  v9 = sub_10000341C(&qword_1002620F8, &qword_1001D8810);
  __chkstk_darwin(v9 - 8);
  v11 = &v76[-v10];
  v12 = sub_10000341C(&qword_100266820, &qword_1001E1090);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v16 = &v76[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v76[-v17];
  v19 = sub_1001935AC();
  v21 = v20;
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = v19;
  v11[16] = v21 & 1;
  v22 = sub_10000341C(&qword_100266828, &qword_1001E1098);
  sub_1001946CC(a1, &v11[*(v22 + 44)]);
  v23 = static Color.blue.getter();
  sub_1000E4920(v23, v18);

  sub_10000F500(v11, &qword_1002620F8, &qword_1001D8810);
  v24 = *(v13 + 44);
  v81 = a1;
  v82 = v18;
  *&v18[v24] = 0x3FF0000000000000;
  v96[0] = *(a1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v25 = *&v86[0];
  swift_getKeyPath();
  *&v96[0] = v25;
  sub_10019A648(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = *(v25 + 72);
  v26 = *(v25 + 80);
  v28 = *(v25 + 88);
  v29 = *(v25 + 96);
  sub_10002879C(v27, v26, v28, *(v25 + 96));

  if (v29 != 255)
  {
    v79 = v16;
    if (!v29 && v27 == 5)
    {
      if (v28)
      {
        v30 = v28;
LABEL_8:
        *&v96[0] = v26;
        *(&v96[0] + 1) = v30;
        sub_10002AC34();
        v33 = Text.init<A>(_:)();
        v35 = v34;
        v37 = v36;
        v39 = v38;
        type metadata accessor for PresentationModel(0);
        sub_10019A648(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
        v40 = Environment.init<A>(_:)();
        v123 = v33;
        v124 = v35;
        v125 = v37 & 1;
        v126 = v39;
        v127 = v40;
        v42 = v41 & 1;
        v128 = v41 & 1;
        v43 = static Color.blue.getter();
        sub_1000E4714(v43, &v110);

        sub_10002A984(v33, v35, v37 & 1);

        j__swift_release(v40, v42);
        KeyPath = swift_getKeyPath();
        v78 = KeyPath;
        v118 = 0;
        v45 = static Edge.Set.horizontal.getter();
        LOBYTE(v40) = v45;
        v77 = v45;
        EdgeInsets.init(_all:)();
        v47 = v46;
        v49 = v48;
        v51 = v50;
        v53 = v52;
        v119 = 0;
        v54 = v81;
        v55 = sub_1001935AC();
        LOBYTE(v33) = v56;
        *v5 = static VerticalAlignment.center.getter();
        *(v5 + 1) = v55;
        v5[16] = v33 & 1;
        v57 = sub_10000341C(&qword_100266830, &qword_1001E10A0);
        sub_1001978A0(v54, &v5[*(v57 + 44)]);
        v58 = static Color.blue.getter();
        v59 = v83;
        sub_1000E4944(v58, v83);

        sub_10000F500(v5, &qword_1002620E8, &qword_1001D8800);
        v60 = v79;
        *&v59[*(v80 + 36)] = 0x3FF0000000000000;
        v61 = v82;
        sub_1000081F8(v82, v60, &qword_100266820, &qword_1001E1090);
        v62 = v84;
        sub_1000081F8(v59, v84, &qword_100266818, &unk_1001E1080);
        v63 = v85;
        sub_1000081F8(v60, v85, &qword_100266820, &qword_1001E1090);
        v64 = sub_10000341C(&qword_100266838, &qword_1001E10A8);
        v65 = (v63 + *(v64 + 48));
        v87 = v114;
        v88 = v115;
        v89 = v116;
        v90 = v117;
        v86[0] = v110;
        v86[1] = v111;
        v86[2] = v112;
        v86[3] = v113;
        *&v91 = KeyPath;
        *(&v91 + 1) = 1;
        LOBYTE(v92) = 0;
        DWORD1(v92) = *&v121[3];
        *(&v92 + 1) = *v121;
        BYTE8(v92) = v40;
        *(&v92 + 9) = *v120;
        HIDWORD(v92) = *&v120[3];
        *&v93 = v47;
        *(&v93 + 1) = v49;
        *&v94 = v51;
        *(&v94 + 1) = v53;
        LOBYTE(v95) = 0;
        *(&v95 + 1) = *v122;
        DWORD1(v95) = *&v122[3];
        *(&v95 + 1) = 0x3FE0000000000000;
        v66 = v110;
        v67 = v111;
        v68 = v113;
        v65[2] = v112;
        v65[3] = v68;
        *v65 = v66;
        v65[1] = v67;
        v69 = v87;
        v70 = v88;
        v71 = v90;
        v65[6] = v89;
        v65[7] = v71;
        v65[4] = v69;
        v65[5] = v70;
        v72 = v91;
        v73 = v92;
        v74 = v95;
        v65[11] = v94;
        v65[12] = v74;
        v75 = v93;
        v65[9] = v73;
        v65[10] = v75;
        v65[8] = v72;
        sub_1000081F8(v62, v63 + *(v64 + 64), &qword_100266818, &unk_1001E1080);
        sub_1000081F8(v86, v96, &qword_100266740, &qword_1001E0D10);
        sub_10000F500(v59, &qword_100266818, &unk_1001E1080);
        sub_10000F500(v61, &qword_100266820, &qword_1001E1090);
        sub_10000F500(v62, &qword_100266818, &unk_1001E1080);
        v96[4] = v114;
        v96[5] = v115;
        v96[6] = v116;
        v96[7] = v117;
        v96[0] = v110;
        v96[1] = v111;
        v96[2] = v112;
        v96[3] = v113;
        v97 = v78;
        v98 = 1;
        v99 = 0;
        *&v100[3] = *&v121[3];
        *v100 = *v121;
        v101 = v77;
        *&v102[3] = *&v120[3];
        *v102 = *v120;
        v103 = v47;
        v104 = v49;
        v105 = v51;
        v106 = v53;
        v107 = 0;
        *&v108[3] = *&v122[3];
        *v108 = *v122;
        v109 = 0x3FE0000000000000;
        sub_10000F500(v96, &qword_100266740, &qword_1001E0D10);
        sub_10000F500(v60, &qword_100266820, &qword_1001E1090);
        return;
      }

      sub_10000F3F4(v27, v26, 0, 0);
    }

    v31 = sub_100106A3C(v27, v26, v28, v29);
    v30 = v32;
    sub_1000278C0(v27, v26, v28, v29);
    v26 = v31;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1001946CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v57 = sub_10000341C(&qword_1002668A0, &qword_1001E1140);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v50 = &v50 - v3;
  v55 = sub_10000341C(&qword_1002668A8, &qword_1001E1148);
  v4 = __chkstk_darwin(v55);
  v60 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v53 = &v50 - v7;
  __chkstk_darwin(v6);
  v58 = &v50 - v8;
  v52 = sub_10000341C(&qword_10025D700, &unk_1001DE550) - 8;
  v9 = __chkstk_darwin(v52);
  v59 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v51 = &v50 - v11;
  v12 = sub_10000341C(&qword_10025BCC8, &qword_1001E1150);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = sub_10000341C(&qword_10025BCD0, &qword_1001D0C60);
  v17 = v16 - 8;
  v18 = __chkstk_darwin(v16);
  v54 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v50 - v20;
  v22 = swift_allocObject();
  v23 = *(a1 + 48);
  *(v22 + 48) = *(a1 + 32);
  *(v22 + 64) = v23;
  *(v22 + 80) = *(a1 + 64);
  v24 = *(a1 + 16);
  *(v22 + 16) = *a1;
  *(v22 + 32) = v24;
  sub_10019A9EC(a1, v65);
  sub_10000341C(&qword_10025BCE0, &qword_1001D0C70);
  v25 = v50;
  sub_10019AE38(&qword_10025BCE8, &qword_10025BCE0, &qword_1001D0C70, sub_100035B10);
  Button.init(action:label:)();
  sub_100007120(&qword_10025BCF8, &qword_10025BCC8, &qword_1001E1150, &protocol conformance descriptor for Button<A>);
  sub_100035980();
  LODWORD(v65[0]) = 0;
  View.buttonStyle<A>(_:)();
  (*(v13 + 8))(v15, v12);
  type metadata accessor for PresentationModel(0);
  sub_10019A648(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  v26 = Environment.init<A>(_:)();
  v27 = &v21[*(v17 + 44)];
  *v27 = v26;
  v27[8] = v28 & 1;
  v29 = v51;
  Divider.init()();
  static Alignment.center.getter();
  v30 = 1;
  _FrameLayout.init(width:height:alignment:)(v65);
  v31 = v29;
  v32 = &v29[*(v52 + 44)];
  v33 = v65[1];
  *v32 = v65[0];
  *(v32 + 1) = v33;
  *(v32 + 2) = v65[2];
  v62 = a1;
  sub_10000341C(&qword_1002668B0, &qword_1001E1158);
  sub_100007120(&qword_1002668B8, &qword_1002668B0, &qword_1001E1158, &protocol conformance descriptor for TupleView<A>);
  Section<>.init(content:)();
  v66 = *(a1 + 16);
  v64 = *(a1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v34 = v63;
  swift_getKeyPath();
  *&v64 = v34;
  sub_10019A648(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v29) = *(v34 + 112);

  if ((v29 & 1) == 0)
  {
    v64 = v66;
    State.wrappedValue.getter();
    v35 = v63;
    swift_getKeyPath();
    *&v64 = v35;
    sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v30 = *(v35 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session) == 0;
  }

  KeyPath = swift_getKeyPath();
  v37 = swift_allocObject();
  *(v37 + 16) = v30;
  v38 = v53;
  (*(v56 + 32))(v53, v25, v57);
  v39 = (v38 + *(v55 + 36));
  *v39 = KeyPath;
  v39[1] = sub_100035DEC;
  v39[2] = v37;
  v40 = v58;
  sub_10002A894(v38, v58, &qword_1002668A8, &qword_1001E1148);
  v41 = v21;
  v42 = v54;
  sub_1000081F8(v21, v54, &qword_10025BCD0, &qword_1001D0C60);
  v43 = v31;
  v44 = v31;
  v45 = v59;
  sub_1000081F8(v44, v59, &qword_10025D700, &unk_1001DE550);
  v46 = v60;
  sub_1000081F8(v40, v60, &qword_1002668A8, &qword_1001E1148);
  v47 = v61;
  sub_1000081F8(v42, v61, &qword_10025BCD0, &qword_1001D0C60);
  v48 = sub_10000341C(&qword_1002668C0, &unk_1001E1160);
  sub_1000081F8(v45, v47 + *(v48 + 48), &qword_10025D700, &unk_1001DE550);
  sub_1000081F8(v46, v47 + *(v48 + 64), &qword_1002668A8, &qword_1001E1148);
  sub_10000F500(v40, &qword_1002668A8, &qword_1001E1148);
  sub_10000F500(v43, &qword_10025D700, &unk_1001DE550);
  sub_10000F500(v41, &qword_10025BCD0, &qword_1001D0C60);
  sub_10000F500(v46, &qword_1002668A8, &qword_1001E1148);
  sub_10000F500(v45, &qword_10025D700, &unk_1001DE550);
  return sub_10000F500(v42, &qword_10025BCD0, &qword_1001D0C60);
}

uint64_t sub_100194FC0@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for PresentationModel(0);
  sub_10019A648(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  result = Environment.init<A>(_:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = result;
  *(a1 + 40) = v10 & 1;
  return result;
}

uint64_t sub_1001950A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v162 = a2;
  v147 = type metadata accessor for FeedbackView(0);
  __chkstk_darwin(v147);
  v146 = v129 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000341C(&qword_10025BD18, &unk_1001D0C90);
  v5 = __chkstk_darwin(v4 - 8);
  v161 = v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v163 = v129 - v7;
  v149 = type metadata accessor for PopoverAttachmentAnchor();
  v145 = *(v149 - 8);
  __chkstk_darwin(v149);
  v144 = (v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135 = type metadata accessor for IconOnlyLabelStyle();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_10000341C(&qword_10025AAA8, &unk_1001CE240);
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v130 = v129 - v10;
  v140 = sub_10000341C(&qword_1002667A8, &qword_1001E0E38);
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v137 = v129 - v11;
  v136 = sub_10000341C(&qword_10025AAA0, &unk_1001E0E40);
  __chkstk_darwin(v136);
  v138 = v129 - v12;
  v148 = sub_10000341C(&qword_10025AA80, &qword_1001CE228);
  __chkstk_darwin(v148);
  v142 = v129 - v13;
  v156 = sub_10000341C(&qword_1002667B0, &qword_1001E0E50);
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v141 = v129 - v14;
  v15 = sub_10000341C(&qword_1002667B8, &qword_1001E0E58);
  v16 = __chkstk_darwin(v15 - 8);
  v160 = v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v165 = v129 - v18;
  v153 = type metadata accessor for ButtonToggleStyle();
  v154 = *(v153 - 8);
  __chkstk_darwin(v153);
  v20 = v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_10000341C(&qword_10025BD20, &unk_1001E1170);
  v152 = *(v151 - 8);
  __chkstk_darwin(v151);
  v22 = v129 - v21;
  v159 = sub_10000341C(&qword_10025BD28, &unk_1001D0CA0);
  v158 = *(v159 - 8);
  v23 = __chkstk_darwin(v159);
  v157 = v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = v129 - v25;
  v174 = *(a1 + 16);
  v143 = a1;
  v168 = *(a1 + 16);
  v27 = sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.projectedValue.getter();
  v28 = v170;
  v29 = v171;
  swift_getKeyPath();
  v170 = v28;
  v171 = v29;
  v129[1] = sub_10000341C(&qword_1002667C0, &unk_1001E0E70);
  Binding.subscript.getter();

  sub_10000341C(&qword_10025BD30, &unk_1001E1180);
  sub_100035B64();
  v150 = v27;
  Toggle.init(isOn:label:)();
  ButtonToggleStyle.init()();
  sub_100007120(&qword_10025BD40, &qword_10025BD20, &unk_1001E1170, &protocol conformance descriptor for Toggle<A>);
  sub_10019A648(&qword_10025BB88, &type metadata accessor for ButtonToggleStyle, &protocol conformance descriptor for ButtonToggleStyle);
  v164 = v26;
  v30 = v151;
  v31 = v153;
  View.toggleStyle<A>(_:)();
  (*(v154 + 8))(v20, v31);
  (*(v152 + 8))(v22, v30);
  v170 = v174;
  State.wrappedValue.getter();
  v32 = v168;
  swift_getKeyPath();
  *&v170 = v32;
  v33 = sub_10019A648(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v32 + 96) && *(v32 + 72) != 5)
  {

    goto LABEL_7;
  }

  v172 = &type metadata for WritingTools;
  v173 = sub_10002AC88();
  LOBYTE(v170) = 3;
  v34 = isFeatureEnabled(_:)();
  sub_10000F4B4(&v170);

  if ((v34 & 1) == 0)
  {
LABEL_7:
    v47 = 1;
    v48 = v165;
    v49 = v156;
    v50 = v155;
    goto LABEL_10;
  }

  v35 = swift_allocObject();
  v36 = v143;
  v37 = *(v143 + 48);
  *(v35 + 48) = *(v143 + 32);
  *(v35 + 64) = v37;
  *(v35 + 80) = *(v36 + 64);
  v38 = *(v36 + 16);
  *(v35 + 16) = *v36;
  *(v35 + 32) = v38;
  __chkstk_darwin(v35);
  sub_10019A9EC(v36, &v170);
  sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  v39 = v130;
  Button.init(action:label:)();
  v40 = v133;
  IconOnlyLabelStyle.init()();
  sub_100007120(&unk_10025AAB0, &qword_10025AAA8, &unk_1001CE240, &protocol conformance descriptor for Button<A>);
  sub_10019A648(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  v41 = v137;
  v42 = v132;
  v43 = v135;
  View.labelStyle<A>(_:)();
  (*(v134 + 8))(v40, v43);
  (*(v131 + 8))(v39, v42);
  v170 = v174;
  State.wrappedValue.getter();
  v44 = v168;
  swift_getKeyPath();
  *&v170 = v44;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v45 = *(v44 + 112);
  v154 = v33;
  if (v45)
  {
    v46 = 1;
  }

  else
  {
    swift_getKeyPath();
    *&v170 = v44;
    sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v46 = *(v44 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session) == 0;
  }

  KeyPath = swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = v46;
  v53 = v138;
  (*(v139 + 32))(v138, v41, v140);
  v54 = (v53 + *(v136 + 36));
  *v54 = KeyPath;
  v54[1] = sub_100035DEC;
  v54[2] = v52;
  LOBYTE(KeyPath) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v142;
  sub_10002A894(v53, v142, &qword_10025AAA0, &unk_1001E0E40);
  v64 = v63 + *(v148 + 36);
  *v64 = KeyPath;
  *(v64 + 8) = v56;
  *(v64 + 16) = v58;
  *(v64 + 24) = v60;
  *(v64 + 32) = v62;
  *(v64 + 40) = 0;
  v168 = v174;
  State.projectedValue.getter();
  v66 = *(&v170 + 1);
  v65 = v170;
  v67 = v171;
  swift_getKeyPath();
  v168 = __PAIR128__(v66, v65);
  v169 = v67;
  Binding.subscript.getter();

  v152 = v166;
  LODWORD(v153) = v167;

  static UnitPoint.top.getter();
  v68 = v144;
  *v144 = v69;
  v68[1] = v70;
  v71 = v145;
  (*(v145 + 104))(v68, enum case for PopoverAttachmentAnchor.point(_:), v149);
  v72 = swift_allocObject();
  v73 = *(v36 + 48);
  *(v72 + 48) = *(v36 + 32);
  *(v72 + 64) = v73;
  *(v72 + 80) = *(v36 + 64);
  v74 = *(v36 + 16);
  *(v72 + 16) = *v36;
  *(v72 + 32) = v74;
  sub_10019A9EC(v36, &v170);
  Edge.Set.init(_:)();
  sub_10000341C(&qword_10025AA88, &unk_1001CE230);
  sub_10019A788();
  v75 = sub_100003E34(&qword_10025AAD0, &qword_1001CE250);
  v76 = sub_100003E34(&qword_10025AAD8, &qword_1001CE258);
  v77 = sub_10019A814();
  *&v170 = v76;
  *(&v170 + 1) = v77;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v170 = v75;
  *(&v170 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v79 = v141;
  View.popoverCore<A>(isPresented:attachmentAnchor:arrowEdges:isDetachable:content:)();

  (*(v71 + 8))(v68, v149);
  sub_10000F500(v63, &qword_10025AA80, &qword_1001CE228);
  v50 = v155;
  v48 = v165;
  v49 = v156;
  (*(v155 + 32))(v165, v79, v156);
  v47 = 0;
  v33 = v154;
LABEL_10:
  v80 = 1;
  (*(v50 + 56))(v48, v47, 1, v49);
  v81 = type metadata accessor for FeedbackFeatureFlags();
  v172 = v81;
  v173 = sub_10019A648(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags, &protocol conformance descriptor for FeedbackFeatureFlags);
  v82 = sub_10002DB6C(&v170);
  (*(*(v81 - 8) + 104))(v82, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v81);
  LOBYTE(v81) = isFeatureEnabled(_:)();
  sub_10000F4B4(&v170);
  if (v81)
  {
    v170 = v174;
    State.wrappedValue.getter();
    v83 = v168;
    swift_getKeyPath();
    *&v170 = v83;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v84 = *(v83 + 80);
    v85 = *(v83 + 88);
    v86 = *(v83 + 96);
    v156 = *(v83 + 72);
    v155 = v84;
    v153 = v85;
    LODWORD(v152) = v86;
    sub_10002879C(v156, v84, v85, v86);

    v170 = v174;
    State.wrappedValue.getter();
    v87 = v168;
    swift_getKeyPath();
    *&v170 = v87;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v88 = *(v87 + 40);
    v149 = *(v87 + 32);
    v151 = v88;

    v170 = v174;
    State.wrappedValue.getter();
    v89 = v168;
    swift_getKeyPath();
    *&v170 = v89;
    v154 = v33;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v90 = *(v89 + 56);
    v145 = *(v89 + 48);
    v148 = v90;

    v170 = v174;
    State.wrappedValue.getter();
    v91 = v168;
    swift_getKeyPath();
    *&v170 = v91;
    sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v92 = *(v91 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback + 8);
    v144 = *(v91 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback);

    v170 = v174;
    State.wrappedValue.getter();
    v93 = v168;
    swift_getKeyPath();
    *&v170 = v93;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v94 = *(v93 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
    if (v94)
    {
      v95 = v94;
      v96 = [v95 string];
      v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v142 = v97;
    }

    else
    {

      v143 = 0;
      v142 = 0xE000000000000000;
    }

    v170 = v174;
    State.wrappedValue.getter();
    v98 = v168;
    swift_getKeyPath();
    *&v170 = v98;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v99 = *(v98 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString);
    v100 = *(v98 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString + 8);

    v170 = v174;
    State.wrappedValue.getter();
    v101 = v168;
    swift_getKeyPath();
    *&v170 = v101;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v102 = *(v101 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session);

    if (v102)
    {
      v170 = v174;
      State.wrappedValue.getter();
      v103 = v168;
      swift_getKeyPath();
      *&v170 = v103;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v104 = *(v103 + 112);
    }

    else
    {
      v104 = 1;
    }

    v170 = v174;
    State.wrappedValue.getter();
    v105 = v168;
    swift_getKeyPath();
    *&v170 = v105;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v107 = *(v105 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);
    v106 = *(v105 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage + 8);

    v108 = v146;
    *(v146 + 25) = 0;
    v109 = *(v147 + 92);
    *(v108 + v109) = swift_getKeyPath();
    sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
    swift_storeEnumTagMultiPayload();
    v110 = v155;
    *(v108 + 128) = v156;
    *(v108 + 136) = v110;
    *(v108 + 144) = v153;
    *(v108 + 152) = v152;
    *&v111 = v149;
    *(&v111 + 1) = v151;
    *&v112 = v145;
    *(&v112 + 1) = v148;
    *(v108 + 24) = v112;
    *(v108 + 8) = v111;
    *(v108 + 40) = v144;
    *(v108 + 48) = v92;
    *(v108 + 56) = 0;
    *(v108 + 64) = 0;
    v113 = v142;
    *(v108 + 72) = v143;
    *(v108 + 80) = v113;
    *(v108 + 88) = v99;
    *(v108 + 96) = v100;
    *v108 = 0;
    *(v108 + 153) = v104;
    *(v108 + 154) = 0;
    *(v108 + 156) = 0;
    *&v168 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v114 = v170;
    *(v108 + 104) = _swiftEmptyArrayStorage;
    *(v108 + 112) = _swiftEmptyArrayStorage;
    *(v108 + 120) = _swiftEmptyArrayStorage;
    v115 = *(&v170 + 1);
    *(v108 + 208) = v114;
    *(v108 + 160) = 0u;
    *(v108 + 176) = 0u;
    *(v108 + 192) = 0;
    *(v108 + 216) = v115;
    *(v108 + 224) = v107;
    *(v108 + 232) = v106;
    LODWORD(v170) = 0x1000000;
    sub_10019A648(&qword_10025BBA0, type metadata accessor for FeedbackView, &unk_1001D8444);
    sub_100035980();
    View.buttonStyle<A>(_:)();
    sub_10003553C(v108);
    v80 = 0;
  }

  v116 = sub_10000341C(&qword_10025BD10, &unk_1001DE680);
  v117 = v163;
  (*(*(v116 - 8) + 56))(v163, v80, 1, v116);
  v118 = v158;
  v119 = *(v158 + 16);
  v120 = v157;
  v121 = v159;
  v119(v157, v164, v159);
  v122 = v165;
  v123 = v160;
  sub_1000081F8(v165, v160, &qword_1002667B8, &qword_1001E0E58);
  v124 = v161;
  sub_1000081F8(v117, v161, &qword_10025BD18, &unk_1001D0C90);
  v125 = v162;
  v119(v162, v120, v121);
  v126 = sub_10000341C(&qword_1002668C8, &qword_1001E1190);
  sub_1000081F8(v123, &v125[*(v126 + 48)], &qword_1002667B8, &qword_1001E0E58);
  sub_1000081F8(v124, &v125[*(v126 + 64)], &qword_10025BD18, &unk_1001D0C90);
  sub_10000F500(v117, &qword_10025BD18, &unk_1001D0C90);
  sub_10000F500(v122, &qword_1002667B8, &qword_1001E0E58);
  v127 = *(v118 + 8);
  v127(v164, v121);
  sub_10000F500(v124, &qword_10025BD18, &unk_1001D0C90);
  sub_10000F500(v123, &qword_1002667B8, &qword_1001E0E58);
  return (v127)(v120, v121);
}

uint64_t sub_100196A34@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IconOnlyLabelStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  Label.init(title:icon:)();
  IconOnlyLabelStyle.init()();
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  sub_10019A648(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  View.labelStyle<A>(_:)();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  LOBYTE(v9) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  result = sub_10000341C(&qword_10025BD30, &unk_1001E1180);
  v19 = a1 + *(result + 36);
  *v19 = v9;
  *(v19 + 8) = v11;
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  *(v19 + 32) = v17;
  *(v19 + 40) = 0;
  return result;
}

double sub_100196CE0(uint64_t a1)
{
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  *(v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingFollowUpAdjust) = (*(v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingFollowUpAdjust) & 1) == 0;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return result;
}

uint64_t sub_100196E2C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100196EA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10000341C(&qword_1002667D0, &qword_1001E1028);
  __chkstk_darwin(v4 - 8);
  v6 = v12 - v5;
  sub_100125454(0);
  Image.init(_internalSystemName:)();
  v13 = *(a1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v7 = v12[1];
  swift_getKeyPath();
  *&v13 = v7;
  sub_10019A648(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v7 + 112) == 1)
  {

LABEL_5:
    static SymbolRenderingMode.monochrome.getter();
    goto LABEL_6;
  }

  swift_getKeyPath();
  *&v13 = v7;
  sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v7 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session);

  if (!v8)
  {
    goto LABEL_5;
  }

  static SymbolRenderingMode.multicolor.getter();
LABEL_6:
  v9 = type metadata accessor for SymbolRenderingMode();
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  v10 = Image.symbolRenderingMode(_:)();

  result = sub_10000F500(v6, &qword_1002667D0, &qword_1001E1028);
  *a2 = v10;
  return result;
}

uint64_t sub_1001970F8@<X0>(uint64_t a1@<X0>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a4;
  v48 = a5;
  v7 = type metadata accessor for PresentationKind();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PresentationBackgroundInteraction();
  v44 = *(v9 - 8);
  v45 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10000341C(&qword_10025AAD0, &qword_1001CE250);
  v43 = *(v41 - 8);
  __chkstk_darwin(v41);
  v13 = &v38 - v12;
  v49 = *(a1 + 48);
  v50 = *(a1 + 64);
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.projectedValue.getter();
  v14 = *(&v76 + 1);
  v39 = v76;
  v15 = v77;
  v16 = swift_allocObject();
  v17 = *(a1 + 48);
  *(v16 + 48) = *(a1 + 32);
  *(v16 + 64) = v17;
  *(v16 + 80) = *(a1 + 64);
  v18 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v18;
  v76 = v18;
  a3(a1, &v49);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v19 = v49;
  swift_getKeyPath();
  *&v49 = v19;
  sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v19 + v20, v54, &unk_10025B1C0, &unk_1001CFA90);

  *&v49 = v39;
  *(&v49 + 1) = v14;
  v50 = v15;
  v51 = 1;
  v52 = v40;
  v53 = v16;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(&v76);
  *&v54[40] = v76;
  v55 = v77;
  v56 = v78;
  v57 = 1;
  LOBYTE(v20) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v58 = v20;
  v59 = v21;
  v60 = v22;
  v61 = v23;
  v62 = v24;
  v63 = 0;
  LOBYTE(v20) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v64 = v20;
  v65 = v25;
  v66 = v26;
  v67 = v27;
  v68 = v28;
  v69 = 0;
  LOBYTE(v20) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v70 = v20;
  v71 = v29;
  v72 = v30;
  v73 = v31;
  v74 = v32;
  v75 = 0;
  v33 = sub_10000341C(&qword_10025AAD8, &qword_1001CE258);
  v34 = sub_10019A814();
  View.interactiveDismissDisabled(_:)();
  sub_10000F500(&v49, &qword_10025AAD8, &qword_1001CE258);
  static PresentationBackgroundInteraction.enabled.getter();
  v35 = v42;
  static PresentationKind.popover.getter();
  *&v49 = v33;
  *(&v49 + 1) = v34;
  swift_getOpaqueTypeConformance2();
  v36 = v41;
  View.presentationBackgroundInteraction(_:for:)();
  (*(v46 + 8))(v35, v47);
  (*(v44 + 8))(v11, v45);
  return (*(v43 + 8))(v13, v36);
}

double sub_1001975C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, _OWORD *), uint64_t a6, uint64_t a7)
{
  v26 = a4;
  v12 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v12 - 8);
  v14 = v23 - v13;
  v29 = *(a3 + 16);
  v27[0] = *(a3 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v15 = v28;
  if (*(v28 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingFollowUpAdjust))
  {
    KeyPath = swift_getKeyPath();
    v25 = a7;
    v23[1] = v23;
    __chkstk_darwin(KeyPath);
    v24 = a1;
    v23[-2] = v15;
    LOBYTE(v23[-1]) = 0;
    *&v27[0] = v15;
    sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    a1 = v24;

    a7 = v25;
  }

  else
  {
    *(v28 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingFollowUpAdjust) = 0;
  }

  v27[0] = v29;
  State.wrappedValue.getter();

  sub_100036534(5, a1, a2, 0);

  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  type metadata accessor for MainActor();
  a5(a3, v27);
  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = &protocol witness table for MainActor;
  v20 = *(a3 + 48);
  *(v19 + 64) = *(a3 + 32);
  *(v19 + 80) = v20;
  *(v19 + 96) = *(a3 + 64);
  v21 = *(a3 + 16);
  *(v19 + 32) = *a3;
  *(v19 + 48) = v21;
  sub_10015C9C8(0, 0, v14, a7, v19);

  return result;
}

uint64_t sub_1001978A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a2;
  v83 = sub_10000341C(&qword_10025BC58, &unk_1001E10B0);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = v77 - v3;
  v84 = sub_10000341C(&qword_10025BC60, &unk_1001D0C10);
  __chkstk_darwin(v84);
  v88 = v77 - v4;
  v87 = sub_10000341C(&qword_10025BC68, &unk_1001E10C0);
  v5 = __chkstk_darwin(v87);
  v91 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v86 = v77 - v8;
  __chkstk_darwin(v7);
  v89 = v77 - v9;
  v80 = sub_10000341C(&qword_10025D700, &unk_1001DE550);
  v10 = __chkstk_darwin(v80);
  v90 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v95 = v77 - v12;
  v13 = type metadata accessor for IconOnlyLabelStyle();
  v78 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000341C(&qword_100266840, &qword_1001E10D0);
  __chkstk_darwin(v16);
  v18 = v77 - v17;
  v79 = sub_10000341C(&qword_100266848, &qword_1001E10D8);
  v19 = *(v79 - 8);
  __chkstk_darwin(v79);
  v21 = v77 - v20;
  v22 = sub_10000341C(&qword_100266850, &unk_1001E10E0);
  v23 = __chkstk_darwin(v22 - 8);
  v85 = v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v96 = v77 - v25;
  v100 = *(a1 + 16);
  v98 = *(a1 + 16);
  v94 = sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v26 = *&v99[0];
  swift_getKeyPath();
  *&v98 = v26;
  v93 = sub_10019A648(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v26 + 96))
  {
  }

  else
  {
    v77[0] = v21;
    v77[1] = v16;
    v30 = *(v26 + 72);

    if ((v30 - 2) < 4 || !v30)
    {
      v98 = v100;
      State.wrappedValue.getter();
      v31 = *&v99[0];
      swift_getKeyPath();
      *&v98 = v31;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v32 = *(v31 + 112);

      if (v32)
      {
        v33 = 1;
      }

      else
      {
        v98 = v100;
        State.wrappedValue.getter();
        v34 = *&v99[0];
        swift_getKeyPath();
        *&v98 = v34;
        sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v33 = *(v34 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal);
      }

      v35 = v15;
      *v18 = static VerticalAlignment.center.getter();
      *(v18 + 1) = 0x4030000000000000;
      v18[16] = 0;
      v36 = sub_10000341C(&qword_100266860, &qword_1001E10F8);
      sub_100198670(a1, v33, &v18[*(v36 + 44)]);
      IconOnlyLabelStyle.init()();
      sub_100007120(&qword_100266868, &qword_100266840, &qword_1001E10D0, &protocol conformance descriptor for HStack<A>);
      sub_10019A648(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
      v37 = v77[0];
      View.labelStyle<A>(_:)();
      (*(v78 + 8))(v35, v13);
      sub_10000F500(v18, &qword_100266840, &qword_1001E10D0);
      KeyPath = swift_getKeyPath();
      v39 = swift_allocObject();
      *(v39 + 16) = v33;
      v40 = (v37 + *(sub_10000341C(&qword_100266870, &qword_1001E1100) + 36));
      *v40 = KeyPath;
      v40[1] = sub_100035DEC;
      v40[2] = v39;
      LOBYTE(KeyPath) = static Edge.Set.trailing.getter();
      EdgeInsets.init(_all:)();
      v41 = v79;
      v42 = v37 + *(v79 + 36);
      *v42 = KeyPath;
      *(v42 + 8) = v43;
      *(v42 + 16) = v44;
      *(v42 + 24) = v45;
      *(v42 + 32) = v46;
      *(v42 + 40) = 0;
      v47 = v96;
      sub_10002A894(v37, v96, &qword_100266848, &qword_1001E10D8);
      v29 = v41;
      v28 = v47;
      v27 = 0;
      goto LABEL_10;
    }
  }

  v27 = 1;
  v28 = v96;
  v29 = v79;
LABEL_10:
  (*(v19 + 56))(v28, v27, 1, v29);
  v48 = v95;
  Divider.init()();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(v99);
  v49 = (v48 + *(v80 + 36));
  v50 = v99[1];
  *v49 = v99[0];
  v49[1] = v50;
  v49[2] = v99[2];
  v51 = swift_allocObject();
  v52 = *(a1 + 48);
  *(v51 + 48) = *(a1 + 32);
  *(v51 + 64) = v52;
  *(v51 + 80) = *(a1 + 64);
  v53 = *(a1 + 16);
  *(v51 + 16) = *a1;
  *(v51 + 32) = v53;
  sub_10019A9EC(a1, &v98);
  sub_10000341C(&qword_10025BC98, &qword_1001D0C40);
  sub_10019AE38(&qword_10025BCA0, &qword_10025BC98, &qword_1001D0C40, sub_100035A58);
  v54 = v81;
  Button.init(action:label:)();
  v98 = v100;
  State.wrappedValue.getter();
  v55 = v97;
  swift_getKeyPath();
  *&v98 = v55;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v56 = *(v55 + 112);

  LOBYTE(v98) = v56;
  *(&v98 + 1) = 0;
  BYTE3(v98) = 0;
  sub_100007120(&qword_10025BCB0, &qword_10025BC58, &unk_1001E10B0, &protocol conformance descriptor for Button<A>);
  sub_100035980();
  v57 = v88;
  v58 = v83;
  View.buttonStyle<A>(_:)();
  (*(v82 + 8))(v54, v58);
  type metadata accessor for PresentationModel(0);
  sub_10019A648(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  v59 = Environment.init<A>(_:)();
  v60 = &v57[*(v84 + 36)];
  *v60 = v59;
  v60[8] = v61 & 1;
  v98 = v100;
  State.wrappedValue.getter();
  v62 = v97;
  swift_getKeyPath();
  v63 = 1;
  *&v98 = v62;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v62 + 112) & 1) == 0)
  {
    swift_getKeyPath();
    *&v98 = v62;
    sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v63 = *(v62 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session) == 0;
  }

  v64 = swift_getKeyPath();
  v65 = swift_allocObject();
  *(v65 + 16) = v63;
  v66 = v57;
  v67 = v86;
  sub_10002A894(v66, v86, &qword_10025BC60, &unk_1001D0C10);
  v68 = (v67 + *(v87 + 36));
  *v68 = v64;
  v68[1] = sub_100035DEC;
  v68[2] = v65;
  v69 = v89;
  sub_10002A894(v67, v89, &qword_10025BC68, &unk_1001E10C0);
  v70 = v85;
  sub_1000081F8(v96, v85, &qword_100266850, &unk_1001E10E0);
  v71 = v95;
  v72 = v90;
  sub_1000081F8(v95, v90, &qword_10025D700, &unk_1001DE550);
  v73 = v91;
  sub_1000081F8(v69, v91, &qword_10025BC68, &unk_1001E10C0);
  v74 = v92;
  sub_1000081F8(v70, v92, &qword_100266850, &unk_1001E10E0);
  v75 = sub_10000341C(&qword_100266858, &qword_1001E10F0);
  sub_1000081F8(v72, v74 + *(v75 + 48), &qword_10025D700, &unk_1001DE550);
  sub_1000081F8(v73, v74 + *(v75 + 64), &qword_10025BC68, &unk_1001E10C0);
  sub_10000F500(v69, &qword_10025BC68, &unk_1001E10C0);
  sub_10000F500(v71, &qword_10025D700, &unk_1001DE550);
  sub_10000F500(v96, &qword_100266850, &unk_1001E10E0);
  sub_10000F500(v73, &qword_10025BC68, &unk_1001E10C0);
  sub_10000F500(v72, &qword_10025D700, &unk_1001DE550);
  return sub_10000F500(v70, &qword_100266850, &unk_1001E10E0);
}

uint64_t sub_100198670@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v35 = a3;
  v34 = sub_10000341C(&qword_10025AAA8, &unk_1001CE240);
  v4 = *(v34 - 8);
  v5 = __chkstk_darwin(v34);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v31[-v8];
  v10 = sub_10000341C(&qword_100266878, &qword_1001E1108);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31[-v12];
  v14 = sub_10000341C(&qword_100266880, &qword_1001E1110);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v31[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v31[-v18];
  v36[0] = *(a1 + 32);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  if (v37 == 1)
  {
    *v13 = static VerticalAlignment.center.getter();
    *(v13 + 1) = 0x4020000000000000;
    v13[16] = 0;
    v20 = sub_10000341C(&qword_100266890, &qword_1001E1120);
    sub_100198AB8(v32 & 1, a1, &v13[*(v20 + 44)]);
    sub_10002A894(v13, v19, &qword_100266878, &qword_1001E1108);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v11 + 56))(v19, v21, 1, v10);
  v22 = swift_allocObject();
  v33 = v19;
  v23 = *(a1 + 48);
  *(v22 + 48) = *(a1 + 32);
  *(v22 + 64) = v23;
  *(v22 + 80) = *(a1 + 64);
  v24 = *(a1 + 16);
  *(v22 + 16) = *a1;
  *(v22 + 32) = v24;
  sub_10019A9EC(a1, v36);
  sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  sub_1000081F8(v19, v17, &qword_100266880, &qword_1001E1110);
  v25 = *(v4 + 16);
  v26 = v34;
  v25(v7, v9, v34);
  v27 = v35;
  sub_1000081F8(v17, v35, &qword_100266880, &qword_1001E1110);
  v28 = sub_10000341C(&qword_100266888, &qword_1001E1118);
  v25(v27 + *(v28 + 48), v7, v26);
  v29 = *(v4 + 8);
  v29(v9, v26);
  sub_10000F500(v33, &qword_100266880, &qword_1001E1110);
  v29(v7, v26);
  return sub_10000F500(v17, &qword_100266880, &qword_1001E1110);
}

uint64_t sub_100198AB8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v39 = sub_10000341C(&qword_100264608, &qword_1001DCD40);
  v5 = __chkstk_darwin(v39);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v36 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v36 - v12;
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  if (a1)
  {
    v37 = 1;
    v38 = 1;
  }

  else
  {
    v43 = *(a2 + 16);
    v41[0] = *(a2 + 16);
    sub_10000341C(&qword_100261898, &qword_1001D7C40);
    State.wrappedValue.getter();
    v16 = v42;
    swift_getKeyPath();
    *&v41[0] = v16;
    sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = *(v16 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount);

    v37 = v17 == 0;
    v41[0] = v43;
    State.wrappedValue.getter();
    v18 = v42;
    swift_getKeyPath();
    *&v41[0] = v18;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = *(v18 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount);

    v38 = v19 == 0;
  }

  v20 = swift_allocObject();
  v21 = *(a2 + 48);
  *(v20 + 48) = *(a2 + 32);
  *(v20 + 64) = v21;
  *(v20 + 80) = *(a2 + 64);
  v22 = *(a2 + 16);
  *(v20 + 16) = *a2;
  *(v20 + 32) = v22;
  sub_10019A9EC(a2, v41);
  sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v37;
  v25 = v39;
  v26 = &v15[*(v39 + 36)];
  *v26 = KeyPath;
  v26[1] = sub_100035DEC;
  v26[2] = v24;
  v27 = swift_allocObject();
  v28 = *(a2 + 48);
  *(v27 + 48) = *(a2 + 32);
  *(v27 + 64) = v28;
  *(v27 + 80) = *(a2 + 64);
  v29 = *(a2 + 16);
  *(v27 + 16) = *a2;
  *(v27 + 32) = v29;
  sub_10019A9EC(a2, v41);
  Button.init(action:label:)();
  v30 = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = v38;
  v32 = &v13[*(v25 + 36)];
  *v32 = v30;
  v32[1] = sub_100035DEC;
  v32[2] = v31;
  sub_1000081F8(v15, v10, &qword_100264608, &qword_1001DCD40);
  sub_1000081F8(v13, v7, &qword_100264608, &qword_1001DCD40);
  v33 = v40;
  sub_1000081F8(v10, v40, &qword_100264608, &qword_1001DCD40);
  v34 = sub_10000341C(&qword_100266898, &qword_1001E1128);
  sub_1000081F8(v7, v33 + *(v34 + 48), &qword_100264608, &qword_1001DCD40);
  sub_10000F500(v13, &qword_100264608, &qword_1001DCD40);
  sub_10000F500(v15, &qword_100264608, &qword_1001DCD40);
  sub_10000F500(v7, &qword_100264608, &qword_1001DCD40);
  return sub_10000F500(v10, &qword_100264608, &qword_1001DCD40);
}

double sub_100198FA8(uint64_t a1, void (*a2)(void *))
{
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  v3 = State.wrappedValue.getter();
  a2(v3);

  return result;
}

double sub_10019900C(uint64_t a1, uint64_t (*a2)(uint64_t, _OWORD *), uint64_t a3, uint64_t a4)
{
  v7 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v7 - 8);
  v9 = v16 - v8;
  v16[0] = *(a1 + 32);
  v17 = 1;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.setter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for MainActor();
  a2(a1, v16);
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  v13 = *(a1 + 48);
  *(v12 + 64) = *(a1 + 32);
  *(v12 + 80) = v13;
  *(v12 + 96) = *(a1 + 64);
  v14 = *(a1 + 16);
  *(v12 + 32) = *a1;
  *(v12 + 48) = v14;
  sub_10015C9C8(0, 0, v9, a4, v12);

  return result;
}

void sub_100199184(uint64_t a1, char a2)
{
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  sub_1000C2BCC(a2, 0, 0);

  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong endWritingTools];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100199250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a3;
  type metadata accessor for MainActor();
  v3[14] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[15] = v5;
  v3[16] = v4;

  return _swift_task_switch(sub_1001992E8, v5, v4);
}

uint64_t sub_1001992E8()
{
  v1 = *(v0 + 104);
  *(v0 + 16) = *(v1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  v2 = *(v0 + 64);
  swift_getKeyPath();
  *(v0 + 72) = v2;
  sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session))
  {

LABEL_4:

    v5 = *(v0 + 8);

    return v5();
  }

  *(v0 + 32) = *(v1 + 16);
  State.wrappedValue.getter();
  v3 = *(v0 + 80);
  swift_getKeyPath();
  *(v0 + 88) = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState);

  if (v4 == 1)
  {
    goto LABEL_4;
  }

  *(v0 + 48) = *(v1 + 16);
  State.wrappedValue.getter();
  *(v0 + 136) = *(v0 + 96);
  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = sub_100034594;

  return sub_1000B6880(1);
}

void sub_100199534(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  if (*a2 == 1)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v8._countAndFlagsBits = 0x2065736F706D6F43;
    v8._object = 0xED00002068746977;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
    v9._countAndFlagsBits = sub_1000971C0();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v9);

    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    v11 = String.init(localized:table:bundle:locale:comment:)();
    sub_100149E4C(v11);
    v12 = [objc_opt_self() mainBundle];
    v32._object = 0x80000001001E3AF0;
    v13._countAndFlagsBits = 0x402520657355;
    v13._object = 0xE600000000000000;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v32._countAndFlagsBits = 0xD000000000000069;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v32);

    sub_10000341C(&qword_10025BA50, &qword_1001D0860);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1001CF9D0;
    v16 = sub_1000971C0();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_10002D7B0();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    static String.localizedStringWithFormat(_:_:)();

    aBlock = *(a3 + 16);
    sub_10000341C(&qword_100261898, &qword_1001D7C40);
    State.wrappedValue.getter();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      if ([Strong respondsToSelector:{"showAlertWithTitle:message:buttonTitle:buttonAction:", aBlock}])
      {
        v20 = swift_allocObject();
        v21 = *(a3 + 48);
        *(v20 + 48) = *(a3 + 32);
        *(v20 + 64) = v21;
        *(v20 + 80) = *(a3 + 64);
        v22 = *(a3 + 16);
        *(v20 + 16) = *a3;
        *(v20 + 32) = v22;
        sub_10019A9EC(a3, &aBlock);
        v23 = String._bridgeToObjectiveC()();

        v24 = String._bridgeToObjectiveC()();

        v25 = String._bridgeToObjectiveC()();

        v30 = sub_10019AD34;
        v31 = v20;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v28 = sub_1001256BC;
        v29 = &unk_100252560;
        v26 = _Block_copy(&aBlock);
        [Strong showAlertWithTitle:v23 message:v24 buttonTitle:v25 buttonAction:v26];
        swift_unknownObjectRelease();
        _Block_release(v26);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

void sub_1001999B8(uint64_t a1)
{
  v19 = *(a1 + 16);
  v17 = *(a1 + 16);
  sub_10000341C(&qword_100261898, &qword_1001D7C40);
  State.wrappedValue.getter();
  swift_getKeyPath();
  *&v17 = v16[0];
  sub_10019A648(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v16[0] + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__task))
  {

    Task.cancel()();
  }

  sub_1000B2528(0);

  v17 = *(a1 + 16);
  State.wrappedValue.getter();
  swift_getKeyPath();
  *&v17 = v16[0];
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v16[0] + v2, &v17, &unk_10025B1C0, &unk_1001CFA90);

  if (v18)
  {
    sub_100028458(&v17, v16);
    sub_10000F500(&v17, &unk_10025B1C0, &unk_1001CFA90);
    sub_100027874(v16, v16[3]);
    sub_10000ECC4();
    sub_10000F4B4(v16);
  }

  else
  {
    sub_10000F500(&v17, &unk_10025B1C0, &unk_1001CFA90);
  }

  v17 = *(a1 + 16);
  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if (([Strong respondsToSelector:"handoffFromUCBFromTool:withPrompt:"] & 1) == 0)
    {
      swift_unknownObjectRelease();
      return;
    }

    v17 = *(a1 + 16);
    State.wrappedValue.getter();
    v4 = v16[0];
    swift_getKeyPath();
    *&v17 = v4;
    sub_10019A648(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = *(v4 + 72);
    v6 = *(v4 + 80);
    v7 = *(v4 + 88);
    v8 = *(v4 + 96);
    sub_10002879C(v5, v6, v7, *(v4 + 96));

    if (v8 == 255)
    {
      swift_unknownObjectRelease();
      __break(1u);
    }

    else
    {
      v9 = sub_100106D00(v5, v6, v7, v8);
      sub_1000278C0(v5, v6, v7, v8);
      v17 = v19;
      State.wrappedValue.getter();
      v10 = v16[0];
      swift_getKeyPath();
      *&v17 = v10;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v11 = *(v10 + 96);
      if (v11 != 255)
      {
        v13 = *(v10 + 72);
        v12 = *(v10 + 80);
        v14 = *(v10 + 88);
        sub_10000F3F4(v13, v12, v14, *(v10 + 96));

        if (v11)
        {
          sub_1000278C0(v13, v12, v14, v11);
          v15 = 0;
        }

        else if (v14)
        {
          v15 = String._bridgeToObjectiveC()();
        }

        else
        {
          v15 = 0;
        }

        [Strong handoffFromUCBFromTool:v9 withPrompt:v15];

        swift_unknownObjectRelease();

        return;
      }
    }

    swift_unknownObjectRelease();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_100199EC0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100199F28@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for PresentationModel(0);
  sub_10019A648(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  v3 = Environment.init<A>(_:)();
  v14 = v4 & 1;
  State.init(wrappedValue:)();
  v5 = FocusState.init<>()();
  v7 = v6;
  v8 = v5 & 1;
  v10 = v9 & 1;
  type metadata accessor for RewritingModel(0);
  result = State.init(wrappedValue:)();
  *a2 = v3;
  *(a2 + 8) = v14;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v8;
  *(a2 + 56) = v7;
  *(a2 + 64) = v10;
  return result;
}

uint64_t sub_10019A050(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10019A09C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_10019A180()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002B2A0;

  return sub_1001926E0(v2, v3, v0 + 32);
}

unint64_t sub_10019A234()
{
  result = qword_1002666E0;
  if (!qword_1002666E0)
  {
    sub_100003E34(&qword_10025A990, &qword_1001CE170);
    sub_10019ABCC(&qword_1002666E8, &qword_1002666D0, &qword_1001E0B58, sub_10019A2EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002666E0);
  }

  return result;
}

unint64_t sub_10019A2EC()
{
  result = qword_1002666F0;
  if (!qword_1002666F0)
  {
    sub_100003E34(&qword_1002666D8, &qword_1001E0B60);
    sub_100007120(&qword_10025BBF0, &qword_10025BBF8, &qword_1001D0B90, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_100007120(&qword_1002666F8, &qword_100266700, &qword_1001E0BA8, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002666F0);
  }

  return result;
}

uint64_t sub_10019A3D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10019A420@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10019A550(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100028688;

  return sub_100192584(a1, v4, v5, v1 + 32);
}

uint64_t sub_10019A648(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10019A788()
{
  result = qword_10025AA90;
  if (!qword_10025AA90)
  {
    sub_100003E34(&qword_10025AA80, &qword_1001CE228);
    sub_100006FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AA90);
  }

  return result;
}

unint64_t sub_10019A814()
{
  result = qword_10025AAE0;
  if (!qword_10025AAE0)
  {
    sub_100003E34(&qword_10025AAD8, &qword_1001CE258);
    sub_100007168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025AAE0);
  }

  return result;
}

uint64_t sub_10019A900(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B2A0;

  return sub_1001915A8(a1, v4, v5, v1 + 32);
}

uint64_t sub_10019AA24()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002B2A0;

  return sub_100199250(v2, v3, v0 + 32);
}

unint64_t sub_10019AAD0()
{
  result = qword_1002667F0;
  if (!qword_1002667F0)
  {
    sub_100003E34(&qword_1002667D8, &qword_1001E1030);
    sub_100003E34(&qword_10025A9A8, &qword_1001E1040);
    sub_10019ABCC(&qword_1002667F8, &qword_10025A9A8, &qword_1001E1040, sub_10019AC50);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002667F0);
  }

  return result;
}

uint64_t sub_10019ABCC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    sub_100035924();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10019AC50()
{
  result = qword_100266800;
  if (!qword_100266800)
  {
    sub_100003E34(&qword_1002667E8, &qword_1001E1048);
    sub_100007120(&qword_10025BBF0, &qword_10025BBF8, &qword_1001D0B90, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_100007120(&qword_100266808, &qword_100266810, &qword_1001E1068, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266800);
  }

  return result;
}

uint64_t sub_10019AD88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B2A0;

  return sub_1001915A8(a1, v4, v5, v1 + 32);
}

uint64_t sub_10019AE38(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10019AF88()
{
  j__swift_release(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_10019B044()
{
  swift_unknownObjectRelease();
  j__swift_release(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_10019B0A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B2A0;

  return sub_1001915A8(a1, v4, v5, v1 + 32);
}

uint64_t sub_10019B19C()
{
  sub_100003E34(&qword_1002667D8, &qword_1001E1030);
  sub_10019AAD0();
  sub_100035198();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10019B2F0(unsigned __int8 a1)
{
  v12 = sub_10017FA90(a1);

  v2._countAndFlagsBits = 2570;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);

  v11._countAndFlagsBits = sub_100182E74();
  v11._object = v3;

  v4._countAndFlagsBits = 2570;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);

  String.append(_:)(v11);

  v5 = sub_10017FE98(a1);
  v6 = sub_10019BA24(v5);
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  return v12;
}

uint64_t sub_10019B3D4()
{
  v1 = v0;
  v2 = type metadata accessor for JSONEncoder.OutputFormatting();
  __chkstk_darwin(v2);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_10000341C(&qword_10025CC18, &qword_1001D1FB8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001CF9E0;
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  *&v17 = v3;
  sub_10004DBA0();
  sub_10000341C(&qword_10025CC28, &unk_1001D1FC0);
  sub_100007120(&qword_10025CC30, &qword_10025CC28, &unk_1001D1FC0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v4 = v1[1];
  v17 = *v1;
  v18 = v4;
  v19 = v1[2];
  sub_10009A85C();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;
  sub_10004DC4C(v5, v6);
  v8 = sub_100097014(v5, v7);
  if (v9)
  {
    v10 = v8;
    sub_10004DD08(v5, v7);
LABEL_9:

    sub_10004DD08(v5, v7);
    return v10;
  }

  v15 = v5;
  v16 = v7;
  sub_10004DC4C(v5, v7);
  sub_10000341C(&qword_10025F350, &unk_1001D40F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10004DD08(v5, v7);
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_10004DCA0(v13);
LABEL_8:
    v10 = sub_100095E84(v5, v7);
    goto LABEL_9;
  }

  sub_100008198(v13, &v17);
  sub_100027874(&v17, *(&v18 + 1));
  HasContiguous = dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter();
  sub_10004DD08(v5, v7);
  if ((HasContiguous & 1) == 0)
  {
    sub_10000F4B4(&v17);
    goto LABEL_8;
  }

  sub_100027874(&v17, *(&v18 + 1));
  dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();

  sub_10004DD08(v5, v7);
  v10 = *&v13[0];
  sub_10000F4B4(&v17);
  return v10;
}

uint64_t sub_10019B75C(void *a1)
{
  v3 = sub_10000341C(&qword_1002668D8, &qword_1001E1268);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100027874(a1, a1[3]);
  sub_10019BBA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10019B8FC()
{
  v1 = 0x6C616E696769726FLL;
  if (*v0 != 1)
  {
    v1 = 0x646E756F72727573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74706D6F7270;
  }
}

uint64_t sub_10019B968@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10019BD24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10019B990(uint64_t a1)
{
  v2 = sub_10019BBA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10019B9CC(uint64_t a1)
{
  v2 = sub_10019BBA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10019BA24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100163C20(0, v1, 0);
    v3 = (a1 + 32);
    v4 = 1;
    do
    {
      v5 = *v3;

      v6 = sub_10004D750(v4, v5);
      v8 = v7;

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_100163C20((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[2 * v10];
      v11[4] = v6;
      v11[5] = v8;
      ++v4;
      ++v3;
      --v1;
    }

    while (v1);
  }

  sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
  sub_100007120(&qword_10025F3D0, &qword_10025CC10, &qword_1001D1FB0, &protocol conformance descriptor for [A]);
  v12 = BidirectionalCollection<>.joined(separator:)();

  return v12;
}

unint64_t sub_10019BBA8()
{
  result = qword_1002668E0;
  if (!qword_1002668E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002668E0);
  }

  return result;
}

unint64_t sub_10019BC20()
{
  result = qword_1002668E8;
  if (!qword_1002668E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002668E8);
  }

  return result;
}

unint64_t sub_10019BC78()
{
  result = qword_1002668F0;
  if (!qword_1002668F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002668F0);
  }

  return result;
}

unint64_t sub_10019BCD0()
{
  result = qword_1002668F8;
  if (!qword_1002668F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002668F8);
  }

  return result;
}

uint64_t sub_10019BD24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xEC00000074786554 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E756F72727573 && a2 == 0xEF74786554676E69)
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

unint64_t sub_10019BE48()
{
  result = qword_100266900;
  if (!qword_100266900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100266900);
  }

  return result;
}

uint64_t sub_10019BEEC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
  v6 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10019CEB4(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_10019C068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_10019C0C4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10019CEB4(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_10019C18C@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_10019CEB4(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = (v6 + *a3);
  v8 = v7[1];
  *a4 = *v7;
  a4[1] = v8;
}

uint64_t sub_10019C260(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_10019C2A8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer);
  v6 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v5 = a1;
    v5[1] = a2;

    swift_getKeyPath();
    sub_10019CEB4(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = *v5;
    v9 = v5[1];

    return sub_10019BEEC(v8, v9);
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10019CEB4(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10019C490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer);
  *v3 = a2;
  v3[1] = a3;

  swift_getKeyPath();
  sub_10019CEB4(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *v3;
  v4 = v3[1];

  return sub_10019BEEC(v5, v4);
}

uint64_t sub_10019C574()
{
  swift_getKeyPath();
  sub_10019CEB4(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex);
}

void sub_10019C624(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10019CEB4(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex);
  *(a2 + 8) = v4;
}

double sub_10019C714(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex;
  if ((*(v2 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v3 != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v3 = a1;
    *(v3 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10019CEB4(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry, &unk_1001E1468);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_10019C854(uint64_t result, uint64_t a2, char a3)
{
  v3 = result + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex;
  *v3 = a2;
  *(v3 + 8) = a3 & 1;
  return result;
}

uint64_t sub_10019C870()
{
  v1 = type metadata accessor for NSFastEnumerationIterator();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry);
  result = [v5 answerOptions];
  if (!result)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = result;
  v8 = [result count];

  if (!v8)
  {
    return 2;
  }

  result = [v5 answerOptions];
  if (!result)
  {
    goto LABEL_21;
  }

  v9 = result;
  v10 = [result count];

  if (v10 > 3)
  {
    return 1;
  }

  result = [v5 answerOptions];
  if (result)
  {
    v11 = result;
    NSOrderedSet.makeIterator()();

    while (1)
    {
      NSFastEnumerationIterator.next()();
      if (!v20)
      {
        (*(v2 + 8))(v4, v1);
        return 0;
      }

      sub_100008150(&v19, &v18);
      if (!swift_dynamicCast())
      {
        break;
      }

      v12 = String.count.getter();

      if (v12 >= 11)
      {
        goto LABEL_18;
      }
    }

    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000F34C(v13, qword_100276F20);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unexpected answer format", v16, 2u);
    }

LABEL_18:
    (*(v2 + 8))(v4, v1);
    return 1;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_10019CB38()
{
  v1 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for QuestionnaireEntry(uint64_t a1)
{
  result = qword_100266950;
  if (!qword_100266950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10019CCA0(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10019CDE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_10019CE94()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t sub_10019CEB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10019CF9C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_10019CFE4()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_10019D0D8(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void), void (*a5)(uint64_t, char *, uint64_t, uint64_t), void (*a6)(void))
{
  v7 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v6;
    sub_1001A9F58(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    v14 = type metadata accessor for UUID();
    result = (*(*(v14 - 8) + 8))(a2, v14);
    *v6 = v28;
  }

  else
  {
    v17 = sub_100005044(a2);
    if (v18)
    {
      v19 = v17;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v6;
      v29 = *v7;
      if (!v20)
      {
        a6();
        v21 = v29;
      }

      v22 = *(v21 + 48);
      v23 = type metadata accessor for UUID();
      v24 = *(v23 - 8);
      v25 = *(v24 + 8);
      v25(v22 + *(v24 + 72) * v19, v23);

      sub_1001A9604(v19, v21);
      result = (v25)(a2, v23);
      *v7 = v21;
    }

    else
    {
      v26 = type metadata accessor for UUID();
      v27 = *(*(v26 - 8) + 8);

      return v27(a2, v26);
    }
  }

  return result;
}

uint64_t sub_10019D2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100008198(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1001A9C28(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_10000F500(a1, &qword_100267368, &qword_1001E19E0);
    sub_1001A939C(a2, a3, v9);

    return sub_10000F500(v9, &qword_100267368, &qword_1001E19E0);
  }

  return result;
}

uint64_t sub_10019D3DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1001AA4B4(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_100005044(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1000F30AC();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1001A9604(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

id sub_10019D5D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_10019D690(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100035E70(v1);
}

uint64_t sub_10019D6C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = *(v3 + 96);
  *(a2 + 24) = v7;
  return sub_10002879C(v4, v5, v6, v7);
}

uint64_t sub_10019D77C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_10002879C(*a1, v2, v3, v4);
  return sub_100036534(v1, v2, v3, v4);
}

uint64_t sub_10019D7E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 104);
}

uint64_t sub_10019D8B8(uint64_t a1, uint64_t a2)
{
  v2 = *sub_100027874((a1 + 32), *(a1 + 56));
  sub_1000081B0(0, &unk_100262480, WTContext_ptr);
  **(*(v2 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v2);
}

uint64_t sub_10019D93C(uint64_t a1)
{
  v2 = v1;
  v3 = _convertErrorToNSError(_:)();
  v4 = sub_10019E79C(v3, v2);
  if ((v4 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F34C(v5, qword_100276F08);
  v6 = v3;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error occurred: %@, but handoff to Montara", v9, 0xCu);
    sub_10000F500(v10, &unk_10025D580, &qword_1001CFA60);
  }

  type metadata accessor for RewritingModel(0);
  if (sub_1000B46A0())
  {
    v12 = v6;
    v3 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v12;
      *v15 = v12;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v3, v13, "%@ occurred while in handoff, this is not expected", v14, 0xCu);
      sub_10000F500(v15, &unk_10025D580, &qword_1001CFA60);

      return v4 & 1;
    }

LABEL_12:
    return v4 & 1;
  }

  v17 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState;
  if (*(v2 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState) == 1)
  {

    *(v2 + v17) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001A930C(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return v4 & 1;
}

uint64_t sub_10019DCA8(uint64_t a1)
{
  v2 = v1;
  v3 = _convertErrorToNSError(_:)();
  v4 = sub_10019E79C(v3, v2);
  if ((v4 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F34C(v5, qword_100276F08);
  v6 = v3;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error occurred: %@, but handoff to Montara", v9, 0xCu);
    sub_10000F500(v10, &unk_10025D580, &qword_1001CFA60);
  }

  type metadata accessor for ProofreadingModel(0);
  if (sub_10019E9DC())
  {
    v12 = v6;
    v3 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v12;
      *v15 = v12;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v3, v13, "%@ occurred while in handoff, this is not expected", v14, 0xCu);
      sub_10000F500(v15, &unk_10025D580, &qword_1001CFA60);

      return v4 & 1;
    }

LABEL_12:
    return v4 & 1;
  }

  v17 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__handoffState;
  if (*(v2 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__handoffState) == 1)
  {

    *(v2 + v17) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return v4 & 1;
}

uint64_t sub_10019E000()
{
  sub_1000081B0(0, &qword_10025B1A8, NSError_ptr);
  sub_1001ADE78();
  v1 = v0;
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
  }

  else
  {
    swift_allocError();
    *v2 = v1;
  }

  v3 = _convertErrorToNSError(_:)();

  v4 = [v3 domain];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v10 & 1) == 0)
    {
      return result;
    }
  }

  v12 = v1;
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
  }

  else
  {
    swift_allocError();
    *v13 = v12;
  }

  v14 = _convertErrorToNSError(_:)();

  v15 = [v14 code];

  v16 = vdupq_n_s64(v15);
  return vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_100249F50, v16), vceqq_s64(unk_100249F60, v16)), vuzp1q_s32(vceqq_s64(xmmword_100249F70, v16), vceqq_s64(unk_100249F80, v16))))) & 1;
}

uint64_t sub_10019E204()
{
  sub_1000081B0(0, &qword_10025B1A8, NSError_ptr);
  sub_1001ADE78();
  v1 = v0;
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
  }

  else
  {
    swift_allocError();
    *v2 = v1;
  }

  v3 = _convertErrorToNSError(_:)();

  v4 = [v3 domain];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      type metadata accessor for SummarizationClientError(0);
      v11 = v1;
      if (swift_dynamicCast())
      {
        v12 = related decl 'e' for SummarizationClientError.isSensitiveContentError.getter();
      }

      else
      {
        v12 = 0;
      }

      return v12 & 1;
    }
  }

  v13 = v1;
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
  }

  else
  {
    swift_allocError();
    *v14 = v13;
  }

  v15 = _convertErrorToNSError(_:)();

  v16 = [v15 code];

  v12 = v16 == 35;
  return v12 & 1;
}

uint64_t sub_10019E41C(uint64_t result)
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

  result = sub_10017DB24(result, v10, 1, v3);
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

uint64_t sub_10019E568(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10019E6AC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1001AA680(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1001AB278(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10019E79C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GenerativeAssistantRestrictionManager();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_100138554() & 1) == 0)
  {
    goto LABEL_14;
  }

  static GenerativeAssistantRestrictionManager.instance.getter();
  v7 = GenerativeAssistantRestrictions.isMontaraAllowed.getter();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  swift_getKeyPath();
  v13[0] = a2;
  sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(a2 + 96))
  {
    v9 = *(a2 + 72);
    if (v9 != 9)
    {
      if (v9 == 5)
      {
        v8 = sub_10019E000();
        return v8 & 1;
      }

LABEL_11:
      v8 = sub_10019E204();
      return v8 & 1;
    }

    if (sub_10019E204())
    {
      v13[3] = &type metadata for WritingTools;
      v13[4] = sub_10002AC88();
      LOBYTE(v13[0]) = 15;
      v10 = isFeatureEnabled(_:)();
      sub_10000F4B4(v13);
      v8 = v10;
      return v8 & 1;
    }

LABEL_14:
    v8 = 0;
    return v8 & 1;
  }

  swift_getKeyPath();
  v13[0] = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a2 + 96) != 2)
  {
    goto LABEL_14;
  }

  v8 = 0;
  if (*(a2 + 72) == 1 && *(a2 + 80) == 0)
  {
    goto LABEL_11;
  }

  return v8 & 1;
}

uint64_t sub_10019E9DC()
{
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__handoffState);
}

void sub_10019EA98(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
}

void sub_10019EB74(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__handoffState) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__handoffState) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

unint64_t sub_10019EC8C()
{
  result = sub_100005770(_swiftEmptyArrayStorage);
  qword_100277358 = result;
  return result;
}

void sub_10019ECB4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v27 = v1;
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session;
  v8 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session);
  if (v8)
  {
    if (a1)
    {
      sub_1000081B0(0, &unk_10025D5F0, WTSession_ptr);
      v9 = v8;
      v10 = a1;
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  swift_getKeyPath();
  v27 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + v7))
  {
    if (*(v2 + 104))
    {
      KeyPath = swift_getKeyPath();
      v24 = &v23;
      __chkstk_darwin(KeyPath);
      *(&v23 - 2) = v2;
      *(&v23 - 1) = 0;
      v27 = v2;
      sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    sub_10019F988(_swiftEmptyArrayStorage);
    v14 = sub_100005EF4(_swiftEmptyArrayStorage);
    sub_10019FE70(v14);
    if (*(v2 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__expandedSuggestion))
    {
      v15 = swift_getKeyPath();
      __chkstk_darwin(v15);
      *(&v23 - 2) = v2;
      *(&v23 - 1) = 0;
      v27 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v24 = v4;
    v16 = sub_100005F18(_swiftEmptyArrayStorage);
    sub_1001A035C(v16);
    sub_100036BF0(0);
    if (*(v2 + 136))
    {
      v17 = swift_getKeyPath();
      __chkstk_darwin(v17);
      *(&v23 - 2) = v2;
      *(&v23 - 1) = 0;
      v27 = v2;
      sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    if (*(v2 + 144))
    {
      v18 = swift_getKeyPath();
      __chkstk_darwin(v18);
      *(&v23 - 2) = v2;
      *(&v23 - 8) = 0;
      v27 = v2;
      sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v2 + 144) = 0;
      sub_1000374BC(0);
    }

    v19 = v24;
    if (qword_10025A890 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    v27 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = *(v2 + v7);
    if (!v20)
    {
      __break(1u);
      return;
    }

    v21 = [v20 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = qword_100277358;
    qword_100277358 = 0x8000000000000000;
    sub_1001A9F58(v2, v6, isUniquelyReferenced_nonNull_native, sub_1000F2494, sub_1000F028C, sub_1000F4AD4);
    (*(v25 + 8))(v6, v19);
    qword_100277358 = v26;
  }

  else
  {
    if (!a1)
    {
      return;
    }

    if (qword_10025A890 != -1)
    {
      swift_once();
    }

    v13 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_10019D0D8(0, v6, sub_1000F2494, sub_1000F028C, sub_1000F4AD4, sub_1000F2494);
  }

  swift_endAccess();
}

void sub_10019F41C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10019F44C(v1);
}

void sub_10019F44C(void *a1)
{
  v3 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session;
  v4 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session);
  if (!v4)
  {
    if (!a1)
    {
      v10 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000081B0(0, &unk_10025D5F0, WTSession_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v9 = v6;
  sub_10019ECB4(v10);
}

uint64_t sub_10019F618()
{
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10019F6C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__task);
}

double sub_10019F7A4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__task;
  if (!*(v2 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__task))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v5 = static Task.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v2 + v4) = a1;

  return result;
}

void *sub_10019F9C4()
{
  v1 = v0;
  v40 = type metadata accessor for UUID();
  v2 = *(v40 - 8);
  v3 = __chkstk_darwin(v40);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v31 - v6;
  swift_getKeyPath();
  v8 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel___observationRegistrar;
  v43 = v1;
  v9 = sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  v33 = v8;
  v39 = v9;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions;
  swift_beginAccess();
  v11 = *(v1 + v10);
  v42 = _swiftEmptyArrayStorage;
  if (v11 >> 62)
  {
    goto LABEL_29;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v13 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionStates;

  v38 = v13;
  swift_beginAccess();
  if (v12)
  {
    v31 = v5;
    v32 = v7;
    v14 = 0;
    v35 = v11 & 0xFFFFFFFFFFFFFF8;
    v36 = v11 & 0xC000000000000001;
    v37 = v2 + 1;
    v5 = v33;
    while (1)
    {
      if (v36)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v35 + 16))
        {
          goto LABEL_28;
        }

        v15 = *(v11 + 8 * v14 + 32);
      }

      v2 = v15;
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v12 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v17 = v11;
      v18 = [v15 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_getKeyPath();
      v41 = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v19 = *(v1 + v38);
      if (!*(v19 + 16))
      {
        goto LABEL_6;
      }

      v20 = sub_100005044(v7);
      if ((v21 & 1) == 0)
      {
        break;
      }

      v22 = *(*(v19 + 56) + 8 * v20);
      v34 = *v37;
      v34(v7, v40);

      if (v22)
      {
        v23 = [v2 uuid];
        v24 = v31;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        swift_getKeyPath();
        v41 = v1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v25 = *(v1 + v38);
        if (!*(v25 + 16))
        {
          goto LABEL_21;
        }

        v26 = sub_100005044(v24);
        if ((v27 & 1) == 0)
        {

LABEL_21:
          v34(v24, v40);
          v7 = v32;
          v5 = v33;
LABEL_22:

          goto LABEL_8;
        }

        v28 = *(*(v25 + 56) + 8 * v26);
        v34(v24, v40);

        v7 = v32;
        v5 = v33;
        if (v28 != 1)
        {
          goto LABEL_22;
        }
      }

LABEL_7:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_8:
      v11 = v17;
      ++v14;
      if (v16 == v12)
      {
        v29 = v42;
        goto LABEL_26;
      }
    }

LABEL_6:
    (*v37)(v7, v40);
    goto LABEL_7;
  }

  v29 = _swiftEmptyArrayStorage;
LABEL_26:

  return v29;
}

void *sub_10019FEC0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

id sub_10019FF68@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

void sub_1001A002C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__expandedSuggestion;
  v5 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__expandedSuggestion);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1001A01D8(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1001A0290@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

uint64_t sub_1001A0398(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  swift_beginAccess();

  LOBYTE(a3) = a3(v9, a1);

  if (a3)
  {
    *(v5 + v8) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1001A0564(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_1001A062C@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = (v6 + *a3);
  v8 = v7[1];
  *a4 = *v7;
  a4[1] = v8;
}

uint64_t sub_1001A0700(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1001A0770(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = (v5 + *a3);
  v9 = *v8 == a1 && v8[1] == a2;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v8 = a1;
    v8[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1001A08D8()
{
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage);

  return v1;
}

uint64_t sub_1001A0994@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage);
  a2[1] = v4;
}

uint64_t sub_1001A0A4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1001A0A8C(v1, v2);
}

uint64_t sub_1001A0A8C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage);
  v6 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1001A0C08@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance;
  swift_beginAccess();
  return sub_1000081F8(v5 + v3, a1, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_1001A0CE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance;
  swift_beginAccess();
  return sub_1000081F8(v3 + v4, a2, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_1001A0DB8(uint64_t a1, uint64_t *a2)
{
  sub_1000081F8(a1, v3, &unk_10025B1C0, &unk_1001CFA90);
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10000F500(v3, &unk_10025B1C0, &unk_1001CFA90);
}

uint64_t sub_1001A0EC0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance;
  swift_beginAccess();
  sub_10009AB44(a2, a1 + v4, &unk_10025B1C0, &unk_1001CFA90);
  return swift_endAccess();
}

void sub_1001A0F3C(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal;
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal) = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getKeyPath();
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session);
    if (v6)
    {
      swift_getKeyPath();
      v7 = v6;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v2 + v3))
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      [v5 writingToolsSession:v7 didReceiveAction:v8];

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1001A1084()
{
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal);
}

void sub_1001A112C(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal) == (a1 & 1))
  {
    v3 = a1 & 1;

    sub_1001A0F3C(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1001A1268(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal;
  *(a1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal) = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getKeyPath();
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session);
    if (v6)
    {
      swift_getKeyPath();
      v7 = v6;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(a1 + v3))
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      [v5 writingToolsSession:v7 didReceiveAction:v8];

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1001A13B8()
{
  swift_getKeyPath();
  sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 112))
  {
    return 1;
  }

  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal))
  {
    return 1;
  }

  v1 = sub_10019F9C4();
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v2)
    {
      goto LABEL_5;
    }

    return 1;
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();

  if (!v11)
  {
    return 1;
  }

LABEL_5:
  v3 = sub_10019F9C4();
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 != 1)
  {
    return 0;
  }

  v5 = sub_10019F9C4();
  v6 = v5;
  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_20:

    __break(1u);
    goto LABEL_21;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_21:
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_13;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);
LABEL_13:
    v9 = v8;

    v10 = sub_1001A6F98(v9);

    return v10 == 1;
  }

  __break(1u);
  return result;
}

void *sub_1001A1610()
{
  v1 = v0;
  v26 = type metadata accessor for UUID();
  KeyPath = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v28 = v0;
  sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = 0;
  if ((*(v0 + 112) & 1) == 0)
  {
    swift_getKeyPath();
    v6 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel___observationRegistrar;
    v28 = v1;
    v24 = sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    v25 = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions;
    swift_beginAccess();
    v8 = *(v1 + v7);
    if (v8 >> 62)
    {
      goto LABEL_22;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v10 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionStates;

    v23 = v10;
    swift_beginAccess();
    if (v9)
    {
      v11 = 0;
      v21 = v8 & 0xFFFFFFFFFFFFFF8;
      v22 = v8 & 0xC000000000000001;
      v12 = (KeyPath + 8);
      while (1)
      {
        if (v22)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v21 + 16))
          {
            goto LABEL_21;
          }

          v13 = *(v8 + 8 * v11 + 32);
        }

        v5 = v13;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          v9 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_4;
        }

        v15 = [v13 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        KeyPath = swift_getKeyPath();
        v27 = v1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v16 = *(v1 + v23);
        if (!*(v16 + 16))
        {
          goto LABEL_7;
        }

        v17 = sub_100005044(v4);
        if ((v18 & 1) == 0)
        {
          break;
        }

        KeyPath = *(*(v16 + 56) + 8 * v17);
        (*v12)(v4, v26);

        if (KeyPath == 1)
        {

          return v5;
        }

LABEL_8:

        ++v11;
        if (v14 == v9)
        {
          goto LABEL_18;
        }
      }

LABEL_7:
      (*v12)(v4, v26);
      goto LABEL_8;
    }

LABEL_18:

    return 0;
  }

  return v5;
}

uint64_t sub_1001A1988@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__mostRecentlyReviewedSuggestionUUID;
  swift_beginAccess();
  return sub_1000081F8(v5 + v3, a1, &unk_100262450, &qword_1001CFAA0);
}

uint64_t sub_1001A1A60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__mostRecentlyReviewedSuggestionUUID;
  swift_beginAccess();
  return sub_1000081F8(v3 + v4, a2, &unk_100262450, &qword_1001CFAA0);
}

uint64_t sub_1001A1B38(uint64_t a1)
{
  v2 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1000081F8(a1, &v6 - v3, &unk_100262450, &qword_1001CFAA0);
  return sub_1001A1BE4(v4);
}

uint64_t sub_1001A1BE4(uint64_t a1)
{
  v3 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__mostRecentlyReviewedSuggestionUUID;
  swift_beginAccess();
  sub_1000081F8(v1 + v6, v5, &unk_100262450, &qword_1001CFAA0);
  v7 = sub_1001AD438(v5, a1);
  sub_10000F500(v5, &unk_100262450, &qword_1001CFAA0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000081F8(a1, v5, &unk_100262450, &qword_1001CFAA0);
    swift_beginAccess();
    sub_1001AE04C(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_10000F500(a1, &unk_100262450, &qword_1001CFAA0);
}

uint64_t sub_1001A1DEC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__mostRecentlyReviewedSuggestionUUID;
  swift_beginAccess();
  sub_10009AB44(a2, a1 + v4, &unk_100262450, &qword_1001CFAA0);
  return swift_endAccess();
}

unint64_t sub_1001A1E68()
{
  v1 = v0;
  v48 = type metadata accessor for UUID();
  v2 = *(v48 - 8);
  __chkstk_darwin(v48);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10000341C(&qword_10025F358, &qword_1001D4140);
  __chkstk_darwin(v51);
  v5 = &v35 - v4;
  v6 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v35 - v10;
  swift_getKeyPath();
  v12 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel___observationRegistrar;
  v54 = v1;
  v13 = sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  v49 = v12;
  v50 = v13;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions;
  swift_beginAccess();
  v52 = v1;
  v15 = *(v1 + v14);
  if (v15 >> 62)
  {
    goto LABEL_23;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16)
  {
    do
    {
      v41 = v9;
      v17 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__mostRecentlyReviewedSuggestionUUID;
      v47 = v15 & 0xC000000000000001;
      v18 = v15;

      v45 = v17;
      swift_beginAccess();
      v19 = v18;
      v20 = 0;
      v37 = v18 & 0xFFFFFFFFFFFFFF8;
      v43 = (v2 + 48);
      v44 = (v2 + 56);
      v15 = &v55;
      v35 = (v2 + 32);
      v39 = v11;
      v40 = (v2 + 8);
      v42 = v18;
      v46 = v16;
      while (1)
      {
        if (v47)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v20 >= *(v37 + 16))
          {
            goto LABEL_22;
          }

          v21 = *(v19 + 8 * v20 + 32);
        }

        v22 = v21;
        v23 = [v21 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v9 = v48;
        (*v44)(v11, 0, 1, v48);
        swift_getKeyPath();
        v24 = v52;
        v53 = v52;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v25 = *(v51 + 48);
        sub_1000081F8(v11, v5, &unk_100262450, &qword_1001CFAA0);
        sub_1000081F8(v24 + v45, &v5[v25], &unk_100262450, &qword_1001CFAA0);
        v26 = *v43;
        if ((*v43)(v5, 1, v9) == 1)
        {

          sub_10000F500(v11, &unk_100262450, &qword_1001CFAA0);
          v27 = v26(&v5[v25], 1, v9);
          v2 = v46;
          if (v27 == 1)
          {

            sub_10000F500(v5, &unk_100262450, &qword_1001CFAA0);
            return v20;
          }

          goto LABEL_13;
        }

        v28 = v41;
        sub_1000081F8(v5, v41, &unk_100262450, &qword_1001CFAA0);
        if (v26(&v5[v25], 1, v9) == 1)
        {

          v11 = v39;
          sub_10000F500(v39, &unk_100262450, &qword_1001CFAA0);
          (*v40)(v28, v9);
          v2 = v46;
LABEL_13:
          sub_10000F500(v5, &qword_10025F358, &qword_1001D4140);
          goto LABEL_15;
        }

        v29 = v36;
        (*v35)(v36, &v5[v25], v9);
        sub_1001A930C(&unk_10025F360, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v38 = dispatch thunk of static Equatable.== infix(_:_:)();

        v30 = *v40;
        (*v40)(v29, v9);
        v11 = v39;
        sub_10000F500(v39, &unk_100262450, &qword_1001CFAA0);
        v30(v28, v9);
        sub_10000F500(v5, &unk_100262450, &qword_1001CFAA0);
        v2 = v46;
        if (v38)
        {

          return v20;
        }

LABEL_15:
        v31 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        ++v20;
        v19 = v42;
        if (v31 == v2)
        {

          return 0;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v33 = v15;
      v34 = _CocoaArrayWrapper.endIndex.getter();
      v15 = v33;
      v16 = v34;
    }

    while (v34);
  }

  return 0;
}

uint64_t sub_1001A2480()
{
  swift_getKeyPath();
  v39 = v0;
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions;
  swift_beginAccess();
  v2 = *(v39 + v1);
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (i)
    {
      v5 = 0;
      v6 = _swiftEmptyArrayStorage;
      do
      {
        v7 = v5;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v5 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              goto LABEL_32;
            }
          }

          else
          {
            if (v7 >= *(v3 + 16))
            {
              goto LABEL_33;
            }

            v8 = v2[v7 + 4];
            v5 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }
          }

          v9 = v8;
          v10 = [v9 suggestionDescription];
          if (v10)
          {
            break;
          }

          ++v7;
          if (v5 == i)
          {
            goto LABEL_22;
          }
        }

        v11 = v10;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_10017DD84(0, *(v6 + 2) + 1, 1, v6);
        }

        v15 = *(v6 + 2);
        v14 = *(v6 + 3);
        if (v15 >= v14 >> 1)
        {
          v6 = sub_10017DD84((v14 > 1), v15 + 1, 1, v6);
        }

        *(v6 + 2) = v15 + 1;
        v16 = &v6[16 * v15];
        *(v16 + 4) = v12;
        *(v16 + 5) = v34;
      }

      while (v5 != i);
    }

    else
    {
      v6 = _swiftEmptyArrayStorage;
    }

LABEL_22:

    v17 = *(v6 + 2);
    if (!v17)
    {
      break;
    }

    v38 = _swiftEmptyArrayStorage;
    v2 = &v38;
    sub_100163C20(0, v17, 0);
    v18 = 0;
    v35 = *(v6 + 2);
    v19 = v38;
    v20 = (v6 + 40);
    while (v35 != v18)
    {
      if (v18 >= *(v6 + 2))
      {
        goto LABEL_35;
      }

      v21 = v6;
      ++v18;
      v22 = *(v20 - 1);
      v23 = *v20;

      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v24;
      v25._countAndFlagsBits = 8250;
      v25._object = 0xE200000000000000;
      String.append(_:)(v25);
      v26._countAndFlagsBits = v22;
      v26._object = v23;
      String.append(_:)(v26);
      v2 = &v36;
      v27._countAndFlagsBits = 10;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);

      v3 = v36;
      v28 = v37;
      v38 = v19;
      v30 = v19[2];
      v29 = v19[3];
      if (v30 >= v29 >> 1)
      {
        v2 = &v38;
        sub_100163C20((v29 > 1), v30 + 1, 1);
        v19 = v38;
      }

      v19[2] = v30 + 1;
      v31 = &v19[2 * v30];
      v31[4] = v3;
      v31[5] = v28;
      v20 += 2;
      v6 = v21;
      if (v17 == v18)
      {

        goto LABEL_31;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_31:
  v36 = v19;
  sub_10000341C(&qword_10025CC10, &qword_1001D1FB0);
  sub_100007120(&qword_10025F3D0, &qword_10025CC10, &qword_1001D1FB0, &protocol conformance descriptor for [A]);
  v32 = BidirectionalCollection<>.joined(separator:)();

  return v32;
}

void sub_1001A2874(char a1)
{
  v2 = v1;
  swift_getKeyPath();
  v18 = v1;
  sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 112) & 1) == 0 && (a1)
  {
    _StringGuts.grow(_:)(38);

    v18 = 0xD000000000000024;
    v19 = 0x80000001001EABB0;
    swift_getKeyPath();
    v17[0] = v1;
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions;
    swift_beginAccess();
    v5 = *(v2 + v4);
    if (v5 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17[0] = v6;
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    v9 = v18;
    v8 = v19;
    swift_getKeyPath();
    v18 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = *(v2 + 120);
    if (v10)
    {
      swift_errorRetain();

      swift_getErrorValue();
      v11._countAndFlagsBits = Error.localizedDescription.getter();
      v18 = 0xD000000000000011;
      v19 = 0x80000001001E5A30;
      String.append(_:)(v11);

      v9 = 0xD000000000000011;
      v8 = 0x80000001001E5A30;
      swift_getKeyPath();
      v17[0] = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v12 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance;
      swift_beginAccess();
      sub_1000081F8(v2 + v12, &v18, &unk_10025B1C0, &unk_1001CFA90);
      if (v20)
      {
        sub_100028458(&v18, v17);
        sub_10000F500(&v18, &unk_10025B1C0, &unk_1001CFA90);
        sub_100027874(v17, v17[3]);
        swift_getKeyPath();
        swift_errorRetain();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v13 = *(v2 + 96);
        if (v13 == 255)
        {
          __break(1u);
          return;
        }

        v15 = *(v2 + 80);
        v14 = *(v2 + 88);
        v16 = *(v2 + 72);
        sub_10000F3F4(v16, v15, v14, v13);
        sub_10000DB64(v10, v16, v15, v14, v13);

        sub_1000278C0(v16, v15, v14, v13);

        sub_10000F4B4(v17);
      }

      else
      {

        sub_10000F500(&v18, &unk_10025B1C0, &unk_1001CFA90);
      }
    }

    sub_10006CC20("ProofreadGeneration", 19, 2, v9, v8);
  }
}

uint64_t sub_1001A2C88()
{
  v1[77] = v0;
  sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v1[78] = swift_task_alloc();
  sub_10000341C(&qword_100260BD0, &qword_1001D5DA0);
  v1[79] = swift_task_alloc();
  v1[80] = type metadata accessor for MainActor();
  v1[81] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[82] = v3;
  v1[83] = v2;

  return _swift_task_switch(sub_1001A2D98, v3, v2);
}

uint64_t sub_1001A2D98()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[84] = Strong;
  if (!Strong)
  {

    if (qword_10025A720 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000F34C(v9, qword_100276FC8);
    v6 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, v10, "Unexpected proofread missing writingToolsDelegate", v11, 2u);
    }

    goto LABEL_12;
  }

  v2 = Strong;
  v3 = v0[77];
  swift_getKeyPath();
  v0[85] = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel___observationRegistrar;
  v0[64] = v3;
  v0[86] = sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session;
  v0[87] = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session;
  if (*(v3 + v4))
  {

    if (qword_10025A720 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000F34C(v5, qword_100276FC8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unexpected proofread already in flight", v8, 2u);
    }

    swift_unknownObjectRelease();
LABEL_12:

    v12 = v0[1];

    return v12();
  }

  v14 = v0[77];
  sub_10019F44C([objc_allocWithZone(WTSession) initWithType:1 textViewDelegate:0]);
  swift_getKeyPath();
  v0[66] = v14;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v3 + v4);
  v0[88] = v16;
  if (v16)
  {
    v0[2] = v0;
    v0[7] = v0 + 65;
    v0[3] = sub_1001A31A4;
    v17 = swift_continuation_init();
    v0[37] = sub_10000341C(&unk_10025D5C0, &qword_1001D2620);
    v0[30] = _NSConcreteStackBlock;
    v0[31] = 1107296256;
    v0[32] = sub_10019D8B8;
    v0[33] = &unk_100252A10;
    v0[34] = v17;
    [v2 willBeginWritingToolsSession:v16 requestContexts:v0 + 30];
    v15 = (v0 + 2);
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v15);
}

uint64_t sub_1001A31A4()
{
  v1 = *(*v0 + 664);
  v2 = *(*v0 + 656);

  return _swift_task_switch(sub_1001A32AC, v2, v1);
}

void sub_1001A32AC()
{
  v1 = v0;
  v2 = v0[88];
  v3 = v0[77];
  sub_100036728(v0[65]);

  swift_getKeyPath();
  v0[67] = v3;
  sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 104);
  if (!v4)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v4 >> 62)
  {
LABEL_26:
    v71 = v1;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_4:
      v5 = v1[77];
      swift_getKeyPath();
      v1[68] = v5;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v6 = *(v3 + 104);
      if (v6)
      {
        if (v6 >> 62)
        {
          v7 = _CocoaArrayWrapper.endIndex.getter();
          if (v7)
          {
LABEL_7:
            v65 = v6 & 0xFFFFFFFFFFFFFF8;
            v66 = v1[77];
            v68 = v6 & 0xC000000000000001;

            v8 = 0;
            v67 = v6;
            while (1)
            {
              if (v68)
              {
                v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v8 >= *(v65 + 16))
                {
                  goto LABEL_25;
                }

                v9 = *(v6 + 8 * v8 + 32);
              }

              v10 = v9;
              if (__OFADD__(v8, 1))
              {
                __break(1u);
LABEL_25:
                __break(1u);
                goto LABEL_26;
              }

              v11 = v1[77];
              swift_getKeyPath();
              v1[69] = v11;

              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v12 = *(v3 + 104);
              if (!v12)
              {
                break;
              }

              v13 = sub_10017BCDC(v6, v12);

              if ((v13 & 1) == 0)
              {
                goto LABEL_19;
              }

              v69 = v8 + 1;
              v14 = v1[79];
              v15 = v71[77];
              type metadata accessor for TextComposerClient();
              swift_allocObject();
              TextComposerClient.init()();
              v16 = [v10 attributedText];
              v70 = v10;
              [v10 range];
              v17 = type metadata accessor for RewriteType();
              (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
              sub_1000057A8(_swiftEmptyArrayStorage);

              sub_10000341C(&qword_10025D598, &qword_1001E1780);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1001CF9D0;
              *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
              *(inited + 40) = v19;
              swift_getKeyPath();
              v71[70] = v15;
              v1 = v71;
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v20 = *(v66 + 24);
              if (!v20)
              {
                __break(1u);
                goto LABEL_49;
              }

              v21 = [v20 pid];
              *(inited + 72) = &type metadata for Int32;
              *(inited + 48) = v21;
              sub_1000057A8(inited);
              swift_setDeallocating();
              sub_10000F500(inited + 32, &qword_10025D5A0, &qword_1001D45E0);
              v22 = dispatch thunk of TextComposerClient.actualRangeForRewritingOrReview(of:range:rewriteType:options:)();
              v24 = v23;
              sub_10000F500(v71[79], &qword_100260BD0, &qword_1001D5DA0);

              [v70 setRange:{v22, v24}];

              ++v8;
              v6 = v67;
              if (v69 == v7)
              {
                goto LABEL_37;
              }
            }

LABEL_19:

            if (qword_10025A720 != -1)
            {
              swift_once();
            }

            v25 = type metadata accessor for Logger();
            sub_10000F34C(v25, qword_100276FC8);
            v26 = Logger.logObject.getter();
            v27 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v26, v27))
            {
              v28 = swift_slowAlloc();
              *v28 = 0;
              _os_log_impl(&_mh_execute_header, v26, v27, "contexts changed while getting actual context range for proofread - stopping", v28, 2u);
            }

            goto LABEL_44;
          }
        }

        else
        {
          v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7)
          {
            goto LABEL_7;
          }
        }

LABEL_37:
        v48 = v1[87];
        v49 = v1[77];

        swift_getKeyPath();
        v1[73] = v49;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v50 = *(v49 + v48);
        if (v50)
        {
          v51 = v1[84];
          sub_1000081B0(0, &unk_100262480, WTContext_ptr);
          v52 = v50;
          v53.super.isa = Array._bridgeToObjectiveC()().super.isa;
          [v51 didBeginWritingToolsSession:v52 contexts:v53.super.isa];
        }

        else
        {
          if (qword_10025A720 != -1)
          {
            swift_once();
          }

          v54 = type metadata accessor for Logger();
          sub_10000F34C(v54, qword_100276FC8);
          v53.super.isa = Logger.logObject.getter();
          v55 = static os_log_type_t.error.getter();
          v1 = v71;
          if (os_log_type_enabled(v53.super.isa, v55))
          {
            v56 = swift_slowAlloc();
            *v56 = 0;
            _os_log_impl(&_mh_execute_header, v53.super.isa, v55, "Unexpected missing session for didBeginWritingToolsSession", v56, 2u);
          }
        }

        v57 = v1[78];
        v58 = v1[77];

        v59 = type metadata accessor for TaskPriority();
        (*(*(v59 - 8) + 56))(v57, 1, 1, v59);

        v60 = static MainActor.shared.getter();
        v61 = swift_allocObject();
        v61[2] = v60;
        v61[3] = &protocol witness table for MainActor;
        v61[4] = v6;
        v61[5] = v58;
        v62 = sub_10015C9C8(0, 0, v57, &unk_1001E1858, v61);
        sub_10019F7A4(v62, v63);
LABEL_44:
        swift_unknownObjectRelease();
        goto LABEL_45;
      }

      goto LABEL_50;
    }
  }

  else
  {
    v71 = v0;
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }

  if (qword_10025A720 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000F34C(v29, qword_100276FC8);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Error in proofreading: Unable to retrieve text from selection", v32, 2u);
  }

  v33 = v71[77];

  sub_10000341C(&qword_10025D598, &qword_1001E1780);
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_1001CF9D0;
  *(v34 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v34 + 72) = &type metadata for String;
  *(v34 + 40) = v35;
  *(v34 + 48) = 0xD000000000000026;
  *(v34 + 56) = 0x80000001001E5B50;
  sub_1000057A8(v34);
  swift_setDeallocating();
  sub_10000F500(v34 + 32, &qword_10025D5A0, &qword_1001D45E0);
  v36 = objc_allocWithZone(NSError);
  v37 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v39 = [v36 initWithDomain:v37 code:1 userInfo:isa];

  sub_100036BF0(v39);
  swift_getKeyPath();
  v71[74] = v33;
  v1 = v71;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v40 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v33 + v40, (v71 + 48), &unk_10025B1C0, &unk_1001CFA90);
  if (v71[51])
  {
    v41 = v71[77];
    sub_100028458((v71 + 48), (v71 + 53));
    sub_10000F500((v71 + 48), &unk_10025B1C0, &unk_1001CFA90);
    sub_100027874(v71 + 53, v71[56]);
    swift_getKeyPath();
    v71[75] = v41;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v42 = *(v41 + 120);
    swift_getKeyPath();
    v71[76] = v41;
    swift_errorRetain();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v43 = *(v41 + 96);
    if (v43 == 255)
    {
LABEL_51:
      __break(1u);
      __break(1u);
      return;
    }

    v44 = v71[77];
    v46 = v44[10];
    v45 = v44[11];
    v47 = v44[9];
    sub_10000F3F4(v47, v46, v45, *(v41 + 96));

    sub_10000DB64(v42, v47, v46, v45, v43);
    swift_unknownObjectRelease();
    sub_1000278C0(v47, v46, v45, v43);

    sub_10000F4B4(v71 + 53);
    v1 = v71;
  }

  else
  {

    swift_unknownObjectRelease();
    sub_10000F500((v71 + 48), &unk_10025B1C0, &unk_1001CFA90);
  }

LABEL_45:

  v64 = v1[1];

  v64();
}

uint64_t sub_1001A41D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_1001A4268, v7, v6);
}

uint64_t sub_1001A4268()
{
  v1 = v0[7];
  swift_getKeyPath();
  v0[2] = v1;
  v0[11] = OBJC_IVAR____TtC21WritingToolsUIService9ToolModel___observationRegistrar;
  v0[12] = sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 104);
  if (v2 && (v3 = v0[6], , LOBYTE(v3) = sub_10017BCDC(v3, v2), , (v3 & 1) != 0))
  {
    v4 = v0[7];
    if (*(v4 + 112) == 1)
    {
      sub_10003689C(1u);
    }

    else
    {
      swift_getKeyPath();
      v11 = swift_task_alloc();
      *(v11 + 16) = v4;
      *(v11 + 24) = 1;
      v0[3] = v4;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v0[13] = 0;
    v12 = v0[6];
    v13 = v12 & 0xFFFFFFFFFFFFFF8;
    if (v12 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v12 = v0[6];
    }

    else
    {
      result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v0[14] = v13;
    v0[15] = result;
    v14 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session;
    v0[16] = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel___observationRegistrar;
    v0[17] = v14;
    if (result)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v14 = v0[17];
      }

      else
      {
        if (!*(v13 + 16))
        {
          __break(1u);
          return result;
        }

        v15 = *(v12 + 32);
      }

      v0[18] = v15;
      v0[19] = 1;
      v16 = v0[7];
      swift_getKeyPath();
      v0[4] = v16;
      sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v16 + v14))
      {
        v17 = swift_task_alloc();
        v0[20] = v17;
        *v17 = v0;
        v17[1] = sub_1001A46F4;

        return sub_1001A4A94(v15);
      }
    }

    v18 = v0[7];
    if (*(v18 + 112))
    {
      swift_getKeyPath();
      v19 = swift_task_alloc();
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      v0[5] = v18;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      sub_10003689C(0);
    }
  }

  else
  {

    if (qword_10025A720 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000F34C(v5, qword_100276FC8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "contexts changed while attemping to run proofread in contexts - stopping", v8, 2u);
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001A46F4()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_1001A4814, v3, v2);
}

void sub_1001A4814(uint64_t a1)
{
  v2 = v1[18];
  v3 = static Task<>.isCancelled.getter();

  if (v3)
  {

    goto LABEL_16;
  }

  v4 = v1[19];
  if (v4 == v1[15])
  {
LABEL_13:

    v11 = v1[7];
    if (*(v11 + 112))
    {
      swift_getKeyPath();
      v12 = swift_task_alloc();
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      v1[5] = v11;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      sub_10003689C(0);
    }

LABEL_16:
    v13 = v1[1];

    v13();
    return;
  }

  v5 = v1[6];
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v4 >= *(v1[14] + 16))
    {
LABEL_21:
      __break(1u);
      return;
    }

    v6 = *(v5 + 8 * v4 + 32);
  }

  v7 = v6;
  v1[18] = v6;
  v1[19] = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = v1[17];
  v9 = v1[7];
  swift_getKeyPath();
  v1[4] = v9;
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v9 + v8))
  {

    goto LABEL_13;
  }

  v10 = swift_task_alloc();
  v1[20] = v10;
  *v10 = v1;
  v10[1] = sub_1001A46F4;

  sub_1001A4A94(v7);
}

uint64_t sub_1001A4A94(uint64_t a1)
{
  v2[133] = v1;
  v2[132] = a1;
  v3 = type metadata accessor for UUID();
  v2[134] = v3;
  v2[135] = *(v3 - 8);
  v2[136] = swift_task_alloc();
  v4 = sub_10000341C(&qword_1002672E8, &qword_1001E1768);
  v2[137] = v4;
  v2[138] = *(v4 - 8);
  v2[139] = swift_task_alloc();
  v5 = sub_10000341C(&qword_1002672F0, &unk_1001E1770);
  v2[140] = v5;
  v2[141] = *(v5 - 8);
  v2[142] = swift_task_alloc();
  v2[143] = type metadata accessor for MainActor();
  v2[144] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[145] = v7;
  v2[146] = v6;

  return _swift_task_switch(sub_1001A4C64, v7, v6);
}

uint64_t sub_1001A4C64()
{
  sub_100038160();
  v1 = v0[133];
  swift_getKeyPath();
  v0[147] = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel___observationRegistrar;
  v0[125] = v1;
  v0[148] = sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance;
  v0[149] = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v1 + v2, (v0 + 42), &unk_10025B1C0, &unk_1001CFA90);
  if (v0[45])
  {
    v3 = v0[133];
    sub_100028458((v0 + 42), (v0 + 27));
    sub_10000F500((v0 + 42), &unk_10025B1C0, &unk_1001CFA90);
    sub_100027874(v0 + 27, v0[30]);
    swift_getKeyPath();
    v0[120] = v3;
    sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v3 + 96);
    if (v9 == 255)
    {
LABEL_10:
      __break(1u);
      __break(1u);
      __break(1u);
      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v4, v5, v6, v7, v8);
    }

    v10 = v0[133];
    v12 = v10[10];
    v11 = v10[11];
    v13 = v10[9];
    sub_10000F3F4(v13, v12, v11, v9);
    sub_10000C1CC(v13, v12, v11, v9, 0, 0, 0, 0, 2);
    sub_1000278C0(v13, v12, v11, v9);
    sub_10000F4B4(v0 + 27);
  }

  else
  {
    sub_10000F500((v0 + 42), &unk_10025B1C0, &unk_1001CFA90);
  }

  v14 = v0[133];
  v15 = v0[132];
  v0[150] = type metadata accessor for TextComposerClient();
  swift_allocObject();
  TextComposerClient.init()();
  v16 = [v15 attributedText];
  [v15 range];
  sub_1000057A8(_swiftEmptyArrayStorage);

  sub_10000341C(&qword_10025D598, &qword_1001E1780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9D0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v18;
  swift_getKeyPath();
  v0[151] = OBJC_IVAR____TtC21WritingToolsUIService9ToolModel___observationRegistrar;
  v0[122] = v14;
  v0[152] = sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v14 + 24);
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = v0[139];
  v20 = v0[138];
  v21 = v0[137];
  v22 = [v4 pid];
  *(inited + 72) = &type metadata for Int32;
  *(inited + 48) = v22;
  sub_1000057A8(inited);
  swift_setDeallocating();
  sub_10000F500(inited + 32, &qword_10025D5A0, &qword_1001D45E0);
  dispatch thunk of TextComposerClient.streamForReview(of:range:options:)();

  AsyncThrowingStream.makeAsyncIterator()();
  (*(v20 + 8))(v19, v21);
  v0[153] = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session;
  v0[154] = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionContextMapping;
  v0[155] = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions;
  v0[156] = TCTextCompositionAssistantOptionKeyContentWarning;
  v23 = static MainActor.shared.getter();
  v0[157] = v23;
  v24 = swift_task_alloc();
  v0[158] = v24;
  *v24 = v0;
  v24[1] = sub_1001A5724;
  v7 = v0[140];
  v6 = &protocol witness table for MainActor;
  v4 = v0 + 60;
  v8 = v0 + 121;
  v5 = v23;

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v4, v5, v6, v7, v8);
}

uint64_t sub_1001A5724()
{
  v2 = *v1;
  *(*v1 + 1272) = v0;

  v3 = *(v2 + 1168);
  v4 = *(v2 + 1160);
  if (v0)
  {
    v5 = sub_1001A6900;
  }

  else
  {
    v5 = sub_1001A5850;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001A5850(uint64_t a1)
{
  v2 = v1[60];
  if (!v2)
  {
    (*(v1[141] + 8))(v1[142], v1[140]);

    goto LABEL_5;
  }

  v3 = v1[61];
  v4 = v1[62];
  v5 = v1[63];
  if (static Task<>.isCancelled.getter())
  {
    (*(v1[141] + 8))(v1[142], v1[140]);

LABEL_5:

    v6 = v1[1];

    return v6();
  }

  v132 = v2;

  v8 = static TextComposerClient.textCompositionClientFinishedKey.getter();
  KeyPath = v9;
  if (!*(v5 + 16))
  {

    __break(1u);
    goto LABEL_135;
  }

  v11 = sub_10000511C(v8, v9);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    goto LABEL_119;
  }

  sub_10002B0D0(*(v5 + 56) + 32 * v11, (v1 + 72));
  sub_100008150(v1 + 36, v1 + 34);
  swift_dynamicCast();
  v124 = *(v1 + 1280);
  v1[118] = _swiftEmptyArrayStorage;
  v14 = sub_10009D1E0(v5);
  sub_1001A0528(v14, v15);
  v16 = sub_10009D68C(v5);
  sub_1001A0748(v16, v17);
  v18 = sub_10009D508(v5);
  sub_1001A0A8C(v18, v19);
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v126 = v3;
  v127 = v5;
  v125 = v4;
  if (*(v5 + 16))
  {
    v22 = sub_10000511C(v20, v21);
    v24 = v23;

    if (v24)
    {
      v25 = v1 + 130;
      sub_10002B0D0(*(v5 + 56) + 32 * v22, (v1 + 80));
      if (swift_dynamicCast())
      {
        if (*v25 == 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2 * (*v25 == 2);
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
  }

  v26 = 0;
LABEL_18:
  v27 = v1[133];
  swift_getKeyPath();
  v1[113] = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1[108] = v27;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v28 = *(v27 + 136);
  v29 = v28 | v26;
  sub_100037118(v28 | v26);
  *(v27 + 136) = v29;
  v1[107] = v27;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  KeyPath = v132;
  v131 = v132 & 0xFFFFFFFFFFFFFF8;
  if (v132 >> 62)
  {
    goto LABEL_120;
  }

  v30 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_20:
  v135 = v1 + 118;
  v137 = v1;
  if (v30)
  {
    v31 = 0;
    v32 = v1 + 124;
    v138 = (v1 + 129);
    v140 = v1 + 128;
    v33 = KeyPath & 0xC000000000000001;
    v130 = KeyPath + 32;
    v128 = KeyPath & 0xC000000000000001;
    v129 = v30;
    v134 = v1 + 124;
    do
    {
      if (v33)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v36 = __OFADD__(v31++, 1);
        if (v36)
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (v31 >= *(v131 + 16))
        {
          goto LABEL_116;
        }

        v35 = *(v130 + 8 * v31);
        v36 = __OFADD__(v31++, 1);
        if (v36)
        {
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
          v30 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_20;
        }
      }

      v34 = v35;
      if ([v35 resultType] == 4)
      {
        v37 = [v34 grammarDetails];
        if (v37)
        {
          v38 = v37;
          v136 = v34;
          v133 = v31;
          sub_10000341C(&qword_1002672F8, &qword_1001E17E0);
          v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v40 = *(v39 + 16);
          if (v40)
          {
            v41 = v39 + 32;
            do
            {
              v42 = *v41;
              v43 = *(*v41 + 16);

              if (v43 && (v44 = sub_10000511C(0x616D6D617247534ELL, 0xEE0065676E615272), (v45 & 1) != 0))
              {
                sub_10002B0D0(*(v42 + 56) + 32 * v44, (v1 + 76));
                sub_1000081B0(0, &qword_100267308, NSValue_ptr);
                v46 = swift_dynamicCast();
                v47 = *v138;
                if (!v46)
                {
                  v47 = 0;
                }

                v147 = v47;
                if (!*(v42 + 16))
                {
LABEL_50:
                  KeyPath = 0;
                  if (!*(v42 + 16))
                  {
                    goto LABEL_57;
                  }

                  goto LABEL_51;
                }
              }

              else
              {
                v147 = 0;
                if (!*(v42 + 16))
                {
                  goto LABEL_50;
                }
              }

              v48 = sub_10000511C(0xD000000000000014, 0x80000001001EABE0);
              if ((v49 & 1) == 0)
              {
                goto LABEL_50;
              }

              sub_10002B0D0(*(v42 + 56) + 32 * v48, (v1 + 64));
              sub_10000341C(&qword_100267300, &qword_1001E17E8);
              if (swift_dynamicCast())
              {
                KeyPath = *v140;
              }

              else
              {
                KeyPath = 0;
              }

              if (!*(v42 + 16))
              {
LABEL_57:
                v52 = 0;
                if (!*(v42 + 16))
                {
                  goto LABEL_64;
                }

                goto LABEL_58;
              }

LABEL_51:
              v50 = sub_10000511C(0xD000000000000015, 0x80000001001EAC00);
              if ((v51 & 1) == 0)
              {
                goto LABEL_57;
              }

              sub_10002B0D0(*(v42 + 56) + 32 * v50, (v1 + 56));
              if (swift_dynamicCast())
              {
                v52 = v1[100];
              }

              else
              {
                v52 = 0;
              }

              if (!*(v42 + 16))
              {
LABEL_64:

                v55 = 0;
                v56 = v147;
                if (!v147)
                {
                  goto LABEL_34;
                }

                goto LABEL_65;
              }

LABEL_58:
              v53 = sub_10000511C(0xD000000000000018, 0x80000001001EAC20);
              if ((v54 & 1) == 0)
              {
                goto LABEL_64;
              }

              sub_10002B0D0(*(v42 + 56) + 32 * v53, (v1 + 52));

              if (swift_dynamicCast())
              {
                v55 = v1[102];
              }

              else
              {
                v55 = 0;
              }

              v56 = v147;
              if (!v147)
              {
LABEL_34:

LABEL_35:

                goto LABEL_36;
              }

LABEL_65:
              if (!KeyPath)
              {

                goto LABEL_35;
              }

              if (KeyPath >> 62)
              {
                if (!_CocoaArrayWrapper.endIndex.getter())
                {
LABEL_84:

LABEL_85:

                  goto LABEL_36;
                }
              }

              else if (!*((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_84;
              }

              if ((KeyPath & 0xC000000000000001) != 0)
              {
                v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (!*((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_112;
                }

                v57 = *(KeyPath + 32);
                swift_unknownObjectRetain();
              }

              *v32 = v57;
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_85;
              }

              v58 = [v56 rangeValue];
              KeyPath = v59;
              v60 = [v136 range];
              v36 = __OFADD__(v58, v60);
              v61 = &v60[v58];
              if (v36)
              {
                goto LABEL_113;
              }

              v62 = String._bridgeToObjectiveC()();

              if (v52)
              {
                v63 = String._bridgeToObjectiveC()();
              }

              else
              {
                v63 = 0;
              }

              if (v55)
              {
                v64 = String._bridgeToObjectiveC()();
              }

              else
              {
                v64 = 0;
              }

              [objc_allocWithZone(WTTextSuggestion) initWithOriginalRange:v61 replacement:KeyPath suggestionCategory:v62 suggestionDescription:{v63, v64}];

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((*v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v1 = v137;
              v32 = v134;
LABEL_36:
              v41 += 8;
              --v40;
            }

            while (v40);
          }

          KeyPath = v132;
          v31 = v133;
          v33 = v128;
          v30 = v129;
          v34 = v136;
        }
      }
    }

    while (v31 != v30);
  }

  v65 = v1[153];
  v66 = v1[133];
  sub_1001A6F20(v135);
  swift_getKeyPath();
  v1[131] = v66;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v67 = *(v66 + v65);
  if (!v67)
  {
    goto LABEL_127;
  }

  v68 = *v135;
  if (*v135 >> 62)
  {
    KeyPath = _CocoaArrayWrapper.endIndex.getter();
    v139 = v67;
    if (KeyPath)
    {
      goto LABEL_90;
    }

    goto LABEL_122;
  }

  KeyPath = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v139 = *(v66 + v65);
  if (!KeyPath)
  {
LABEL_122:
    v103 = v67;

LABEL_123:
    v104 = v1[133];
    swift_getKeyPath();
    v1[116] = v104;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v1[117] = v104;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    sub_10019E6AC(v68);
    swift_endAccess();
    v1[119] = v104;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v106 = Strong;
      v107 = v1[132];
      sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
      v108.super.isa = Array._bridgeToObjectiveC()().super.isa;
      [v106 proofreadingSession:v139 didReceiveSuggestions:v108.super.isa processedRange:v126 inContext:v125 finished:{v107, v124}];
      swift_unknownObjectRelease();
    }

    else
    {
      v108.super.isa = v139;
    }

LABEL_127:
    v109 = v1[149];
    v110 = v1[133];
    swift_getKeyPath();
    v1[105] = v110;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_1000081F8(v110 + v109, (v1 + 17), &unk_10025B1C0, &unk_1001CFA90);
    if (!v1[20])
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      sub_10000F500((v1 + 17), &unk_10025B1C0, &unk_1001CFA90);
LABEL_131:
      v122 = static MainActor.shared.getter();
      v1[157] = v122;
      v123 = swift_task_alloc();
      v1[158] = v123;
      *v123 = v1;
      v123[1] = sub_1001A5724;
      v115 = v1[140];
      v114 = &protocol witness table for MainActor;
      v112 = (v1 + 60);
      v116 = v1 + 121;
      v113 = v122;

      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v112, v113, v114, v115, v116);
    }

    v111 = v1[133];
    sub_100028458((v1 + 17), (v1 + 47));
    sub_10000F500((v1 + 17), &unk_10025B1C0, &unk_1001CFA90);
    sub_100027874(v1 + 47, v1[50]);
    swift_getKeyPath();
    v1[109] = v111;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v117 = *(v111 + 96);
    if (v117 != 255)
    {
      v118 = v1[133];
      v120 = v118[10];
      v119 = v118[11];
      v121 = v118[9];
      sub_10000F3F4(v121, v120, v119, v117);
      swift_bridgeObjectRelease_n();

      swift_getKeyPath();
      v1[110] = v118;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_10000D118(v127, v121, v120, v119, v117, v118[17]);

      sub_1000278C0(v121, v120, v119, v117);
      sub_10000F4B4(v1 + 47);
      goto LABEL_131;
    }

LABEL_135:
    __break(1u);
    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v112, v113, v114, v115, v116);
  }

LABEL_90:
  v144 = v68 & 0xC000000000000001;
  v141 = v68 & 0xFFFFFFFFFFFFFF8;
  v69 = v67;

  v70 = 0;
  v143 = v68;
  v142 = KeyPath;
  while (1)
  {
    if (v144)
    {
      v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v75 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        goto LABEL_114;
      }
    }

    else
    {
      if (v70 >= *(v141 + 16))
      {
        goto LABEL_118;
      }

      v74 = *(v68 + 8 * v70 + 32);
      v75 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        goto LABEL_114;
      }
    }

    v145 = v75;
    v146 = v74;
    v148 = v70;
    v76 = v1[154];
    v77 = v1[136];
    v78 = v1[133];
    v79 = v1[132];
    v80 = [v74 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_getKeyPath();
    v1[111] = v78;
    v81 = v79;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v1[112] = v78;
    KeyPath = swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = *(v78 + v76);
    v1[114] = v83;
    *(v78 + v76) = 0x8000000000000000;
    v84 = sub_100005044(v77);
    v86 = *(v83 + 16);
    v87 = (v85 & 1) == 0;
    v36 = __OFADD__(v86, v87);
    v88 = v86 + v87;
    if (v36)
    {
      goto LABEL_115;
    }

    v89 = v85;
    if (*(v83 + 24) < v88)
    {
      break;
    }

    v1 = v137;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v102 = v84;
      sub_1000F333C();
      v84 = v102;
    }

LABEL_105:
    v92 = v1[114];
    v93 = v1[136];
    v94 = v1[135];
    v95 = v1[134];
    v96 = v1[132];
    KeyPath = v94 + 8;
    if (v89)
    {
      v71 = v92[7];
      v72 = *(v71 + 8 * v84);
      *(v71 + 8 * v84) = v96;

      (*KeyPath)(v93, v95);
    }

    else
    {
      v92[(v84 >> 6) + 8] |= 1 << v84;
      v98 = *(v94 + 16);
      v97 = v94 + 16;
      v99 = v84;
      v98(v92[6] + *(v97 + 56) * v84, v93, v95);
      *(v92[7] + 8 * v99) = v96;
      (*(v97 - 8))(v93, v95);
      v100 = v92[2];
      v36 = __OFADD__(v100, 1);
      v101 = v100 + 1;
      if (v36)
      {
        goto LABEL_117;
      }

      v92[2] = v101;
    }

    v1 = v137;
    v73 = v137[133];
    *(v73 + v137[154]) = v92;

    swift_endAccess();
    v137[115] = v73;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v70 = v148 + 1;
    KeyPath = v142;
    v68 = v143;
    if (v145 == v142)
    {
      goto LABEL_123;
    }
  }

  v1 = v137;
  v90 = v137[136];
  sub_1000F1A10(v88, isUniquelyReferenced_nonNull_native);
  v84 = sub_100005044(v90);
  if ((v89 & 1) == (v91 & 1))
  {
    goto LABEL_105;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

void sub_1001A6900()
{
  (*(v0[141] + 8))(v0[142], v0[140]);
  v1 = v0[121];
  if ((sub_10019DCA8(v1) & 1) == 0)
  {
    swift_errorRetain();
    swift_errorRetain();
    sub_100036BF0(v1);
    if (qword_10025A720 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000F34C(v14, qword_100276FC8);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error occurred in proofreading: %@", v17, 0xCu);
      sub_10000F500(v18, &unk_10025D580, &qword_1001CFA60);
    }

    v20 = v0[133];

    swift_getKeyPath();
    v0[123] = v20;
    sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance;
    swift_beginAccess();
    sub_1000081F8(v20 + v21, (v0 + 12), &unk_10025B1C0, &unk_1001CFA90);
    if (v0[15])
    {
      v22 = v0[133];
      sub_100028458((v0 + 12), (v0 + 22));
      sub_10000F500((v0 + 12), &unk_10025B1C0, &unk_1001CFA90);
      sub_100027874(v0 + 22, v0[25]);
      swift_getKeyPath();
      v0[106] = v22;
      sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v23 = *(v22 + 96);
      if (v23 != 255)
      {
        v24 = v0[133];
        v26 = v24[10];
        v25 = v24[11];
        v27 = v24[9];
        sub_10000F3F4(v27, v26, v25, v23);

        sub_10000DB64(v1, v27, v26, v25, v23);

        sub_1000278C0(v27, v26, v25, v23);

        v13 = v0 + 22;
        goto LABEL_12;
      }

LABEL_20:
      __break(1u);
      return;
    }

    v28 = (v0 + 12);
LABEL_15:
    sub_10000F500(v28, &unk_10025B1C0, &unk_1001CFA90);
    goto LABEL_16;
  }

  v2 = v0[133];
  swift_getKeyPath();
  v0[127] = v2;
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v2 + v3, (v0 + 32), &unk_10025B1C0, &unk_1001CFA90);
  if (!v0[35])
  {

    v28 = (v0 + 32);
    goto LABEL_15;
  }

  v4 = v0[133];
  sub_100028458((v0 + 32), (v0 + 37));
  sub_10000F500((v0 + 32), &unk_10025B1C0, &unk_1001CFA90);
  sub_100027874(v0 + 37, v0[40]);
  v5 = sub_1000971C0();
  v7 = v6;
  swift_getKeyPath();
  v0[126] = v4;
  sub_1001A930C(&qword_10025C140, type metadata accessor for ToolModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v4 + 96);
  if (v8 == 255)
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = v0[133];
  v11 = v9[10];
  v10 = v9[11];
  v12 = v9[9];
  sub_10000F3F4(v12, v11, v10, v8);

  sub_10000E808(v5, v7, v12, v11, v10, v8);

  sub_1000278C0(v12, v11, v10, v8);

  v13 = v0 + 37;
LABEL_12:
  sub_10000F4B4(v13);
LABEL_16:

  v29 = v0[1];

  v29();
}

void sub_1001A6F20(uint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v2 < 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_10017FA8C();
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_1001AA720(v4);
  *a1 = v2;
}

uint64_t sub_1001A6F98(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  v15[1] = v2;
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionStates;
  swift_beginAccess();
  v10 = *(v2 + v9);
  if (*(v10 + 16))
  {

    v11 = sub_100005044(v7);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      (*(v5 + 8))(v7, v4);

      return v13;
    }
  }

  (*(v5 + 8))(v7, v4);
  return 0;
}

void sub_1001A7170(uint64_t a1, uint64_t a2)
{
  v5 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  __chkstk_darwin(v5 - 8);
  v7 = v74 - v6;
  v92 = type metadata accessor for UUID();
  v90 = *(v92 - 8);
  v8 = __chkstk_darwin(v92);
  v10 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = v74 - v11;
  v12 = sub_10000341C(&qword_1002672D8, &qword_1001E1730);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v74 - v16;
  swift_getKeyPath();
  v18 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel___observationRegistrar;
  v95 = v2;
  v79 = sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionStates;
  swift_beginAccess();
  v88 = v2;
  v78 = v19;
  v20 = *(v2 + v19);
  if (*(v20 + 16))
  {

    v21 = sub_100005044(a2);
    if ((v22 & 1) == 0)
    {

      if (a1 != 1)
      {
        goto LABEL_27;
      }

LABEL_7:
      v75 = v7;
      v76 = a2;
      v77 = a1;
      swift_getKeyPath();
      v24 = v88;
      v94 = v88;
      v74[1] = v18;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v25 = *(v24 + v78);
      v26 = v25 + 64;
      v27 = 1 << *(v25 + 32);
      v28 = -1;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      v29 = v28 & *(v25 + 64);
      v80 = (v27 + 63) >> 6;
      v83 = v90 + 16;
      v30 = (v90 + 32);
      v91 = (v90 + 8);
      v87 = v25;

      v31 = 0;
      v32 = &qword_1002672E0;
      v85 = v15;
      v86 = v10;
      v84 = v17;
      v81 = v26;
      v82 = v30;
      while (v29)
      {
        v33 = v31;
LABEL_21:
        v36 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v37 = v36 | (v33 << 6);
        v38 = v87;
        v39 = v89;
        v40 = v90;
        v41 = v92;
        (*(v90 + 16))(v89, *(v87 + 48) + *(v90 + 72) * v37, v92);
        v42 = *(*(v38 + 56) + 8 * v37);
        v43 = sub_10000341C(v32, &qword_1001E1760);
        v44 = v32;
        v45 = *(v43 + 48);
        v46 = *(v40 + 32);
        v15 = v85;
        v47 = v39;
        v30 = v82;
        v46(v85, v47, v41);
        *&v15[v45] = v42;
        v32 = v44;
        (*(*(v43 - 8) + 56))(v15, 0, 1, v43);
        v10 = v86;
        v17 = v84;
        v26 = v81;
LABEL_22:
        sub_10002A894(v15, v17, &qword_1002672D8, &qword_1001E1730);
        v48 = sub_10000341C(v32, &qword_1001E1760);
        if ((*(*(v48 - 8) + 48))(v17, 1, v48) == 1)
        {

          a1 = v77;
          a2 = v76;
          v7 = v75;
          goto LABEL_27;
        }

        v49 = *&v17[*(v48 + 48)];
        (*v30)(v10, v17, v92);
        if (v49 == 1)
        {
          sub_1001A7170(0, v10);
        }

        (*v91)(v10, v92);
      }

      if (v80 <= v31 + 1)
      {
        v34 = v31 + 1;
      }

      else
      {
        v34 = v80;
      }

      v35 = v34 - 1;
      while (1)
      {
        v33 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v33 >= v80)
        {
          v50 = sub_10000341C(v32, &qword_1001E1760);
          (*(*(v50 - 8) + 56))(v15, 1, 1, v50);
          v29 = 0;
          v31 = v35;
          goto LABEL_22;
        }

        v29 = *(v26 + 8 * v33);
        ++v31;
        if (v29)
        {
          v31 = v33;
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    v23 = *(*(v20 + 56) + 8 * v21);

    if (v23 == a1)
    {
      return;
    }
  }

  if (a1 == 1)
  {
    goto LABEL_7;
  }

LABEL_27:
  swift_getKeyPath();
  v51 = v88;
  v94 = v88;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = *(v51 + v78);
  if (!*(v52 + 16))
  {
LABEL_31:
    v56 = 1;
    goto LABEL_32;
  }

  v53 = sub_100005044(a2);
  if ((v54 & 1) == 0)
  {

    goto LABEL_31;
  }

  v55 = *(*(v52 + 56) + 8 * v53);

  v56 = v55 != 1;
LABEL_32:
  swift_getKeyPath();
  v57 = v88;
  v94 = v88;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v94 = v57;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v58 = v78;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v93 = *(v57 + v58);
  *(v57 + v58) = 0x8000000000000000;
  sub_1001A9D7C(a1, a2, isUniquelyReferenced_nonNull_native);
  *(v57 + v58) = v93;
  swift_endAccess();
  v94 = v57;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (!v56 && (a1 == 3 || !a1))
  {
    v60 = v90;
    v61 = v92;
    (*(v90 + 16))(v7, a2, v92);
    (*(v60 + 56))(v7, 0, 1, v61);
    sub_1001A1BE4(v7);
  }

  swift_getKeyPath();
  v62 = v88;
  v94 = v88;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v63 = *(v62 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session);
  if (v63)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v65 = Strong;
      v66 = v63;
      v67.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      swift_getKeyPath();
      v68 = v88;
      v94 = v88;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v69 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionContextMapping;
      swift_beginAccess();
      v70 = *(v68 + v69);
      if (*(v70 + 16))
      {

        v71 = sub_100005044(a2);
        if (v72)
        {
          v73 = *(*(v70 + 56) + 8 * v71);

          [v65 proofreadingSession:v66 didUpdateState:a1 forSuggestionWithUUID:v67.super.isa inContext:v73];

          swift_unknownObjectRelease();
          return;
        }

LABEL_44:
        __break(1u);
        return;
      }

LABEL_43:
      __break(1u);
      goto LABEL_44;
    }
  }
}

void sub_1001A7A44(char a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = v3;
  swift_getKeyPath();
  sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session);
  if (v9 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v10 = Strong;
    swift_getKeyPath();
    v13 = v9;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v4 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__task))
    {

      Task.cancel()();
    }

    if (a2)
    {
      swift_errorRetain();
      v11 = _convertErrorToNSError(_:)();
      [v10 endWritingToolsWithError:v11];

      v12 = v13;
    }

    else
    {
      v12 = v13;
      [v10 didEndWritingToolsSession:v13 accepted:(a1 == 2) | (a1 & 1)];
    }

    sub_10019F44C(0);
    if (a3)
    {
      (a3)();
    }

    swift_unknownObjectRelease();
  }

  else if (a3)
  {
    a3(Strong);
  }
}

uint64_t sub_1001A7C4C()
{
  v2 = v0;
  v63 = type metadata accessor for UUID();
  v3 = *(v63 - 8);
  v4 = __chkstk_darwin(v63);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v56 - v7;
  result = sub_1001A13B8();
  if (result)
  {
    return result;
  }

  v60 = v6;
  v10 = sub_1001A1610();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001A7170(0, v8);
    (*(v3 + 8))(v8, v63);
  }

  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel___observationRegistrar;
  v64 = v2;
  v61 = sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  v62 = v13;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions;
  swift_beginAccess();
  v15 = *(v2 + v14);
  v16 = (v15 >> 62);
  if (v15 >> 62)
  {
LABEL_66:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 0)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v17 = result;
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 0)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < v17)
    {
      __break(1u);
      goto LABEL_70;
    }
  }

  else
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = v8;
  if ((v15 & 0xC000000000000001) == 0 || v17 == 0)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
    swift_bridgeObjectRetain_n();
    v19 = 0;
    do
    {
      v8 = (v19 + 1);
      _ArrayBuffer._typeCheckSlowPath(_:)(v19);
      v19 = v8;
    }

    while (v17 != v8);
  }

  v58 = v3;

  if (v16)
  {
    v3 = _CocoaArrayWrapper.subscript.getter();
    v20 = v22;
    v1 = v23;
    v21 = v24;
  }

  else
  {
    v1 = 0;
    v3 = v15 & 0xFFFFFFFFFFFFFF8;
    v20 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = (2 * v17) | 1;
  }

  v25 = sub_1001A1E68();
  if (v26)
  {
    v27 = v58;
    v15 = v3;
    goto LABEL_48;
  }

  v17 = v25;
  swift_getKeyPath();
  v64 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v2 + v14);
  v16 = (v15 >> 62);
  if (!(v15 >> 62))
  {
    v28 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28 >= v17)
    {
      goto LABEL_20;
    }

LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_70:
  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v17)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v28 = result;
  if (_CocoaArrayWrapper.endIndex.getter() < v17)
  {
    __break(1u);
    goto LABEL_73;
  }

LABEL_20:
  if (v17 < 0)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v16)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v28)
  {
    goto LABEL_75;
  }

  if (v28 < 0)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if ((v15 & 0xC000000000000001) == 0 || v17 == v28)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    if (v17 >= v28)
    {
LABEL_80:
      __break(1u);
      __break(1u);
      goto LABEL_81;
    }

    sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
    swift_bridgeObjectRetain_n();
    v29 = v17;
    do
    {
      v30 = v29 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v29);
      v29 = v30;
    }

    while (v28 != v30);
  }

  if (v16)
  {
    v8 = _CocoaArrayWrapper.subscript.getter();
    v1 = v31;
    v56 = v32;
    v28 = v33;
  }

  else
  {
    v8 = (v15 & 0xFFFFFFFFFFFFFF8);
    v1 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
    v28 = (2 * v28) | 1;
    v56 = v17;
  }

  swift_getKeyPath();
  v64 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v2 + v14);
  v16 = (v15 >> 62);
  if (!(v15 >> 62))
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= v17)
    {
      goto LABEL_38;
    }

LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_77:
  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < 0)
  {
LABEL_84:
    __break(1u);
    return result;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v17)
  {
    goto LABEL_79;
  }

LABEL_38:
  v14 = v8;
  v59 = v3;
  if ((v15 & 0xC000000000000001) != 0 && v17)
  {
    sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
    swift_bridgeObjectRetain_n();
    v34 = 0;
    do
    {
      v35 = v34 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v34);
      v34 = v35;
    }

    while (v17 != v35);
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  v36 = v28;
  v37 = v1;

  if (v16)
  {
    v39 = _CocoaArrayWrapper.subscript.getter();
    v40 = v42;
    v38 = v43;
    v45 = v44;

    v41 = v45;
  }

  else
  {
    v38 = 0;
    v39 = v15 & 0xFFFFFFFFFFFFFF8;
    v40 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
    v41 = (2 * v17) | 1;
  }

  v27 = v58;
  v64 = v14;
  v65 = v37;
  v66 = v56;
  v67 = v36;
  sub_1001ADAE0(v39, v40, v38, v41);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v15 = v64;
  v20 = v65;
  v1 = v66;
  v21 = v67;
LABEL_48:
  v64 = v15;
  v65 = v20;
  v66 = v1;
  v67 = v21;
  v3 = v21 >> 1;
  v8 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionStates;

  v59 = v15;
  swift_unknownObjectRetain();
  swift_beginAccess();
  v16 = (v27 + 8);
  v46 = v60;
  while (1)
  {
    if (v1 == v3)
    {

      v52 = 0;
      goto LABEL_60;
    }

    if (__OFSUB__(v3--, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (v3 < v1)
    {
      goto LABEL_65;
    }

    v48 = *(v20 + 8 * v3);
    v49 = [v48 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    swift_getKeyPath();
    v69 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = *&v8[v2];
    if (!*(v15 + 16))
    {
      break;
    }

    v50 = sub_100005044(v46);
    if ((v51 & 1) == 0)
    {

      break;
    }

    v14 = *(*(v15 + 56) + 8 * v50);
    (*v16)(v46, v63);

    if (!v14)
    {
      goto LABEL_59;
    }
  }

  (*v16)(v46, v63);

LABEL_59:

  __chkstk_darwin(v53);
  *(&v56 - 2) = &v64;
  v68 = v3;
  sub_1001ADD40(&v68, &v69);
  v52 = v69;
LABEL_60:
  swift_unknownObjectRelease();
  if (!v52)
  {
    return swift_unknownObjectRelease();
  }

  v54 = [v52 uuid];
  v55 = v57;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001A7170(1, v55);
  swift_unknownObjectRelease();

  return (*v16)(v55, v63);
}

uint64_t sub_1001A8490()
{
  v2 = v0;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v68 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v59 - v7;
  result = sub_1001A13B8();
  if (result)
  {
    return result;
  }

  v10 = sub_1001A1610();
  if (v10)
  {
    v1 = v10;
    v11 = [v10 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001A7170(0, v8);
    (*(v4 + 8))(v8, v3);
  }

  v63 = v8;
  swift_getKeyPath();
  v12 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel___observationRegistrar;
  v69 = v2;
  v66 = sub_1001A930C(&qword_10025BAB0, type metadata accessor for ProofreadingModel, &protocol conformance descriptor for ToolModel);
  v67 = v12;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions;
  swift_beginAccess();
  v14 = *(v2 + v13);
  v15 = v14 >> 62;
  if (!(v14 >> 62))
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_6;
  }

  while (1)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 0)
    {
      break;
    }

    v16 = result;
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 0)
    {
      goto LABEL_87;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < v16)
    {
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

LABEL_6:
    if ((v14 & 0xC000000000000001) == 0 || v16 == 0)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
      swift_bridgeObjectRetain_n();
      v18 = 0;
      do
      {
        v19 = v18 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v18);
        v18 = v19;
      }

      while (v16 != v19);
    }

    if (v15)
    {
      v15 = _CocoaArrayWrapper.subscript.getter();
      v20 = v22;
      v1 = v23;
      v21 = v24;
    }

    else
    {
      v1 = 0;
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
      v20 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v21 = 2 * v16;
    }

    v65 = v3;
    v25 = sub_1001A1E68();
    if (v26)
    {
      v3 = v68;
      v27 = v20;
      goto LABEL_49;
    }

    v28 = v25;
    v62 = v4;
    swift_getKeyPath();
    v69 = v2;
    v14 = v2 + v67;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = v28 + 1;
    v3 = v68;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_71;
    }

    v14 = *(v2 + v13);
    v29 = v14 & 0xFFFFFFFFFFFFFF8;
    v1 = v14 >> 62;
    if (!(v14 >> 62))
    {
      v30 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30 < v4)
      {
        goto LABEL_78;
      }

      goto LABEL_21;
    }

LABEL_72:
    if ((v14 & 0x8000000000000000) != 0)
    {
      v28 = v14;
    }

    else
    {
      v28 = v29;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < v4)
    {
      goto LABEL_88;
    }

    v30 = result;
    if (_CocoaArrayWrapper.endIndex.getter() < v4)
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < 0)
      {
        goto LABEL_89;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < v4)
      {
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        break;
      }

      goto LABEL_39;
    }

LABEL_21:
    if (v4 < 0)
    {
      goto LABEL_79;
    }

    if (v1)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result < v30)
    {
      goto LABEL_80;
    }

    if (v30 < 0)
    {
      goto LABEL_81;
    }

    v64 = v15;
    if ((v14 & 0xC000000000000001) == 0 || v4 == v30)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      if (v4 >= v30)
      {
        goto LABEL_85;
      }

      sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
      swift_bridgeObjectRetain_n();
      v31 = v4;
      do
      {
        v32 = v31 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v31);
        v31 = v32;
      }

      while (v30 != v32);
    }

    if (v1)
    {
      v1 = _CocoaArrayWrapper.subscript.getter();
      v28 = v33;
      v60 = v34;
      v61 = v35;
    }

    else
    {
      v1 = v14 & 0xFFFFFFFFFFFFFF8;
      v28 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v60 = v4;
      v61 = (2 * v30) | 1;
    }

    swift_getKeyPath();
    v69 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = *(v2 + v13);
    v15 = v14 >> 62;
    if (v14 >> 62)
    {
      goto LABEL_82;
    }

    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < v4)
    {
      goto LABEL_84;
    }

LABEL_39:
    if ((v14 & 0xC000000000000001) != 0 && v4)
    {
      sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
      swift_bridgeObjectRetain_n();
      v36 = 0;
      do
      {
        v37 = v36 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v36);
        v36 = v37;
      }

      while (v4 != v37);
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    v38 = v28;

    if (v15)
    {
      v40 = _CocoaArrayWrapper.subscript.getter();
      v41 = v43;
      v39 = v44;
      v46 = v45;

      v42 = v46;
    }

    else
    {
      v39 = 0;
      v40 = v14 & 0xFFFFFFFFFFFFFF8;
      v41 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v42 = (2 * v4) | 1;
    }

    v69 = v1;
    v70 = v38;
    v71 = v60;
    v72 = v61;
    sub_1001ADAE0(v40, v41, v39, v42);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v15 = v69;
    v27 = v70;
    v1 = v71;
    v21 = v72;
    v4 = v62;
LABEL_49:
    v14 = v21 >> 1;
    v47 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionStates;
    v64 = v15;
    swift_unknownObjectRetain();
    swift_beginAccess();
    v15 = (v21 >> 1) - v1;
    if (v21 >> 1 == v1)
    {
      return swift_unknownObjectRelease_n();
    }

    v13 = v4 + 8;
    if (v1 <= v14)
    {
      v48 = v21 >> 1;
    }

    else
    {
      v48 = v1;
    }

    v4 = v48 - v1;
    v1 = v27 + 8 * v1;
    v62 = v13 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (v4)
    {
      v49 = *v1;
      v50 = [v49 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_getKeyPath();
      v73 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v14 = *(v2 + v47);
      if (!*(v14 + 16))
      {
        goto LABEL_62;
      }

      v51 = sub_100005044(v3);
      if ((v52 & 1) == 0)
      {

LABEL_62:
        v55 = *v13;
        v56 = v65;
        (*v13)(v3, v65);
LABEL_64:
        swift_unknownObjectRelease();
        v57 = [v49 uuid];
        v58 = v63;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1001A7170(1, v58);
        swift_unknownObjectRelease();

        return v55(v58, v56);
      }

      v53 = v3;
      v54 = *(*(v14 + 56) + 8 * v51);
      v55 = *v13;
      (*v13)(v53, v65);

      if (!v54)
      {
        v56 = v65;
        goto LABEL_64;
      }

      --v4;
      v1 += 8;
      --v15;
      v3 = v68;
      if (!v15)
      {
        return swift_unknownObjectRelease_n();
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
  return result;
}

uint64_t sub_1001A8C78()
{
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__handoffState) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__session) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__task) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestions) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionContextMapping) = sub_100005EF4(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__expandedSuggestion) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__suggestionStates) = sub_100005F18(_swiftEmptyArrayStorage);
  v1 = (v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__modelInfoString);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__inputStringForFeedback);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__detectedModelLanguage);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__showingOriginal) = 0;
  v5 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__mostRecentlyReviewedSuggestionUUID;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);
  v7(v0 + v5, 1, 1, v6);
  v7(v0 + v5, 1, 1, v6);
  ObservationRegistrar.init()();
  swift_unknownObjectWeakInit();
  *(v0 + 49) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 24) = 0u;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0;
  *(v0 + 96) = -1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t sub_1001A8E38()
{

  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance, &unk_10025B1C0, &unk_1001CFA90);
  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__mostRecentlyReviewedSuggestionUUID, &unk_100262450, &qword_1001CFAA0);
  v1 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t ProofreadingModel.deinit()
{
  v0 = ToolModel.deinit();

  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__analyticsInstance, &unk_10025B1C0, &unk_1001CFA90);
  sub_10000F500(v0 + OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel__mostRecentlyReviewedSuggestionUUID, &unk_100262450, &qword_1001CFAA0);
  v1 = OBJC_IVAR____TtC21WritingToolsUIService17ProofreadingModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ProofreadingModel.__deallocating_deinit()
{
  ProofreadingModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProofreadingModel(uint64_t a1)
{
  result = qword_100266B78;
  if (!qword_100266B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001A9168(uint64_t a1)
{
  sub_10000F11C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001A92A4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10019F44C(v1);
}

uint64_t sub_1001A930C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1001A939C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_10000511C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000F24A8();
      v10 = v12;
    }

    sub_100008198((*(v10 + 56) + 40 * v8), a3);
    sub_1001A9448(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1001A9448(uint64_t result, uint64_t a2)
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1001A9604(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1001A930C(&unk_10025AC80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

id sub_1001A9924(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100005118();
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1000F2168();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1000EF90C(v13, a3 & 1);
    v8 = sub_100005118();
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for IAPayloadKey(0);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return _objc_release_x1();
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return _objc_release_x1();
  }

  sub_1000F1E00(v8, a2, a1, v18);

  return a2;
}

_OWORD *sub_1001A9A58(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000511C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000F22C8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000EFBD0(v16, a4 & 1);
    v11 = sub_10000511C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000F4B4(v22);

    return sub_100008150(a1, v22);
  }

  else
  {
    sub_1000F1E44(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1001A9C28(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000511C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1000F24A8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000F02A0(v16, a4 & 1);
    v11 = sub_10000511C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    sub_10000F4B4(v22);

    return sub_100008198(a1, v22);
  }

  else
  {
    sub_1000F1EB4(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1001A9D7C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100005044(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_1000F2650();
    goto LABEL_7;
  }

  sub_1000F0564(result, a3 & 1);
  result = sub_100005044(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1000F1F24(v14, v11, a1, v20);
}

void sub_1001A9F58(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), void (*a6)(uint64_t, char *, uint64_t, uint64_t))
{
  v29 = a5;
  v30 = a6;
  v28 = a4;
  v7 = v6;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_100005044(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v28();
      goto LABEL_9;
    }

    v29();
    v23 = sub_100005044(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_9;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_9:
  v25 = a1;
  v26 = *v7;
  if (v21)
  {
    *(*(v26 + 56) + 8 * v17) = v25;
  }

  else
  {
    (*(v12 + 16))(v14, a2, v11);
    v30(v17, v14, v25, v26);
  }
}

uint64_t sub_1001AA148(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100005044(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1000F2E14();
      goto LABEL_7;
    }

    sub_1000F0E84(v17, a3 & 1);
    v22 = sub_100005044(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1000F1FDC(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_1001AA314(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100005044(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + v14) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_1000F2E3C();
    goto LABEL_7;
  }

  sub_1000F1260(result, a3 & 1);
  result = sub_100005044(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1000F1FF4(v14, v11, a1 & 1, v20);
}

void sub_1001AA4B4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100005044(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1000F30AC();
      goto LABEL_7;
    }

    sub_1000F1620(v17, a3 & 1);
    v23 = sub_100005044(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1000F4AD4();
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = *(v20 + 56);
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_1001AA680(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

void sub_1001AA720(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000081B0(0, &qword_10025C4E8, WTTextSuggestion_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1001AA92C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1001AA834(0, v2, 1, a1);
  }
}

void sub_1001AA834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 originalRange];
      v13 = [v11 originalRange];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1001AA92C(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_10009FA94(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_1001AAF94((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_10009FA94(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_10009FA08(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v7 = (v7 + 1);
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 originalRange];
      v104 = [v14 originalRange];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 originalRange];
        v7 = [v18 originalRange];

        v21 = v20 < v7;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v106 < v104) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v106 < v104)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10009FBA4(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_10009FBA4((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_1001AAF94((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10009FA94(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_10009FA08(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 originalRange];
    v41 = [v39 originalRange];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = (v107 + 1);
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

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
}