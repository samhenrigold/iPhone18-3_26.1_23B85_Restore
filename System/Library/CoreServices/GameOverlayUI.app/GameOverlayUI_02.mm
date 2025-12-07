uint64_t sub_100042084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v31 = a2;
  v2 = sub_100002B38(&qword_10012E288, &qword_1000EA690);
  __chkstk_darwin(v2 - 8);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002B38(&qword_10012E290, &qword_1000EA698);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  Image.init(_internalSystemName:)();
  (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
  v18 = Image.resizable(capInsets:resizingMode:)();

  (*(v8 + 8))(v10, v7);
  v19 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  *&v32 = v18;
  *(&v32 + 1) = KeyPath;
  *&v33 = v19;
  static Font.Weight.semibold.getter();
  sub_100002B38(&qword_10012E298, &unk_1000EA6D0);
  sub_10004558C();
  View.fontWeight(_:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v21 = &v17[*(v12 + 44)];
  v22 = v33;
  *v21 = v32;
  *(v21 + 1) = v22;
  *(v21 + 2) = v34;
  *v6 = static HorizontalAlignment.leading.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v23 = sub_100002B38(&qword_10012E2A8, &qword_1000EA6E0);
  sub_10004246C(v30, &v6[*(v23 + 44)]);
  sub_1000035B4(v17, v14, &qword_10012E290, &qword_1000EA698);
  v24 = v29;
  sub_1000035B4(v6, v29, &qword_10012E288, &qword_1000EA690);
  v25 = v31;
  sub_1000035B4(v14, v31, &qword_10012E290, &qword_1000EA698);
  v26 = sub_100002B38(&qword_10012E2B0, &qword_1000EA6E8);
  sub_1000035B4(v24, v25 + *(v26 + 48), &qword_10012E288, &qword_1000EA690);
  sub_100005688(v6, &qword_10012E288, &qword_1000EA690);
  sub_100005688(v17, &qword_10012E290, &qword_1000EA698);
  sub_100005688(v24, &qword_10012E288, &qword_1000EA690);
  return sub_100005688(v14, &qword_10012E290, &qword_1000EA698);
}

uint64_t sub_10004246C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v83 = a2;
  v79 = sub_100002B38(&qword_10012E2B8, &qword_1000EA6F0);
  __chkstk_darwin(v79);
  v4 = v73 - v3;
  v80 = sub_100002B38(&qword_10012E2C0, &qword_1000EA6F8);
  __chkstk_darwin(v80);
  v73[0] = v73 - v5;
  v6 = sub_100002B38(&qword_10012E2C8, &qword_1000EA700);
  __chkstk_darwin(v6 - 8);
  v82 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = v73 - v10;
  v78 = a1;
  v74 = *(a1 + 8);
  v12 = [v74 enabled];
  v81 = v11;
  if (v12)
  {
    if (qword_10012CBD8 != -1)
    {
      swift_once();
    }

    v13 = &qword_100135C00;
  }

  else
  {
    if (qword_10012CBE0 != -1)
    {
      swift_once();
    }

    v13 = &qword_100135C10;
  }

  v14 = *v13;

  v85 = v14;
  v86 = v15;
  v73[1] = sub_10000548C(v15, v16, v17);
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  static Font.subheadline.getter();
  v23 = Text.font(_:)();
  v25 = v24;
  v27 = v26;

  sub_1000054E0(v18, v20, v22 & 1);

  static Font.Weight.semibold.getter();
  v28 = Text.fontWeight(_:)();
  v30 = v29;
  LOBYTE(v20) = v31;
  sub_1000054E0(v23, v25, v27 & 1);

  v85 = static Color.primary.getter();
  v32 = Text.foregroundStyle<A>(_:)();
  v76 = v33;
  v77 = v32;
  v75 = v34;
  v36 = v35;
  sub_1000054E0(v28, v30, v20 & 1);

  v37 = [v74 actionSymbols];
  if (v37)
  {
    v38 = v37;
    v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v39 + 16))
    {
      v40 = v73[0];
      sub_100042B64(v39, v73[0]);

      sub_1000035B4(v40, v4, &qword_10012E2C0, &qword_1000EA6F8);
      swift_storeEnumTagMultiPayload();
      sub_100002B38(&qword_10012E2D0, &qword_1000EA768);
      sub_1000456FC();
      sub_1000457B4();
      v41 = v81;
      _ConditionalContent<>.init(storage:)();
      sub_100005688(v40, &qword_10012E2C0, &qword_1000EA6F8);
      goto LABEL_15;
    }
  }

  v74 = v36;
  if (qword_10012CBF0 != -1)
  {
    swift_once();
  }

  v85 = qword_100135C30;
  v86 = *algn_100135C38;

  v42 = Text.init<A>(_:)();
  v44 = v43;
  v46 = v45;
  static Font.footnote.getter();
  v47 = Text.font(_:)();
  v49 = v48;
  v51 = v50;

  sub_1000054E0(v42, v44, v46 & 1);

  static Font.Weight.medium.getter();
  v52 = Text.fontWeight(_:)();
  v54 = v53;
  v56 = v55;
  sub_1000054E0(v47, v49, v51 & 1);

  v85 = static Color.secondary.getter();
  v57 = Text.foregroundStyle<A>(_:)();
  v59 = v58;
  LOBYTE(v47) = v60;
  v62 = v61;
  sub_1000054E0(v52, v54, v56 & 1);

  KeyPath = swift_getKeyPath();
  v64 = sub_100040918();
  v65 = swift_getKeyPath();
  LOBYTE(v85) = v47 & 1;
  v84 = 0;
  *v4 = v57;
  *(v4 + 1) = v59;
  v4[16] = v47 & 1;
  *(v4 + 3) = v62;
  *(v4 + 4) = KeyPath;
  *(v4 + 5) = 2;
  v4[48] = 0;
  *(v4 + 7) = v65;
  *(v4 + 8) = v64;
  swift_storeEnumTagMultiPayload();
  sub_100002B38(&qword_10012E2D0, &qword_1000EA768);
  sub_1000456FC();
  sub_1000457B4();
  v41 = v81;
  _ConditionalContent<>.init(storage:)();
  v36 = v74;
LABEL_15:
  v66 = v82;
  sub_1000035B4(v41, v82, &qword_10012E2C8, &qword_1000EA700);
  v67 = v83;
  v69 = v76;
  v68 = v77;
  *v83 = v77;
  v67[1] = v69;
  v70 = v75 & 1;
  *(v67 + 16) = v75 & 1;
  v67[3] = v36;
  v71 = sub_100002B38(&qword_10012E328, &qword_1000EA790);
  sub_1000035B4(v66, v67 + *(v71 + 48), &qword_10012E2C8, &qword_1000EA700);
  sub_1000054F0(v68, v69, v70);

  sub_100005688(v41, &qword_10012E2C8, &qword_1000EA700);
  sub_100005688(v66, &qword_10012E2C8, &qword_1000EA700);
  sub_1000054E0(v68, v69, v70);
}

void sub_100042B64(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  if (qword_10012CBE8 != -1)
  {
    v4 = swift_once();
  }

  sub_10000548C(v4, v5, v6);
  v7 = StringProtocol.components<A>(separatedBy:)();
  v8 = v7 + 2;
  v9 = v7[2];
  if (v9)
  {
    v11 = v7[4];
    v10 = v7[5];

    if (v9 == 1)
    {
      v12 = 0;
      v13 = 0xE000000000000000;
    }

    else
    {
      v14 = &v8[2 * v9];
      v12 = *v14;
      v13 = v14[1];
    }
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v10 = 0xE000000000000000;
    v13 = 0xE000000000000000;
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = a1 + 40;
    do
    {

      Image.init(_internalSystemName:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v16 += 16;
      --v15;
    }

    while (v15);
  }

  v17 = _swiftEmptyArrayStorage[2];
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v34);
      v35._countAndFlagsBits = v11;
      v35._object = v10;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v35);

      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v36);
      if (_swiftEmptyArrayStorage[2])
      {

        LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

        v37._countAndFlagsBits = 0;
        v37._object = 0xE000000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v37);
        if (_swiftEmptyArrayStorage[2] >= 2uLL)
        {
LABEL_32:

          LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

          goto LABEL_33;
        }

        goto LABEL_40;
      }

      goto LABEL_37;
    }

    if (v17 == 3)
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v21);
      v22._countAndFlagsBits = v11;
      v22._object = v10;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v22);

      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v23);
      if (_swiftEmptyArrayStorage[2])
      {

        LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

        v24._countAndFlagsBits = 0;
        v24._object = 0xE000000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v24);
        if (_swiftEmptyArrayStorage[2] >= 2uLL)
        {

          LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

          v25._countAndFlagsBits = 0;
          v25._object = 0xE000000000000000;
          LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v25);
          if (_swiftEmptyArrayStorage[2] >= 3uLL)
          {
            goto LABEL_32;
          }

          goto LABEL_42;
        }

        goto LABEL_39;
      }

      goto LABEL_36;
    }
  }

  else
  {
    if (!v17)
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v32);
      v33._countAndFlagsBits = v11;
      v33._object = v10;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v33);

LABEL_33:
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v38);
      v39._countAndFlagsBits = v12;
      v39._object = v13;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v39);

      v40._countAndFlagsBits = 0;
      v40._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v40);
      LocalizedStringKey.init(stringInterpolation:)();
      v41 = Text.init(_:tableName:bundle:comment:)();
      v43 = v42;
      v45 = v44;
      sub_1000054F0(v41, v42, v44 & 1);

      static Font.footnote.getter();
      v46 = v45;
      v70 = v45;
      v47 = Text.font(_:)();
      v49 = v48;
      v51 = v50;

      sub_1000054E0(v41, v43, v46 & 1);

      static Font.Weight.medium.getter();
      v52 = Text.fontWeight(_:)();
      v54 = v53;
      v56 = v55;
      sub_1000054E0(v47, v49, v51 & 1);

      static Color.secondary.getter();
      v57 = Text.foregroundStyle<A>(_:)();
      v59 = v58;
      LOBYTE(v47) = v60;
      v71 = v61;
      sub_1000054E0(v52, v54, v56 & 1);

      KeyPath = swift_getKeyPath();
      v63 = sub_100040918();
      sub_1000054E0(v41, v43, v70 & 1);

      v64 = swift_getKeyPath();
      v65 = (a2 + *(sub_100002B38(&qword_10012E2C0, &qword_1000EA6F8) + 36));
      v66 = *(sub_100002B38(&qword_10012E320, &qword_1000EA788) + 28);
      v67 = enum case for Image.Scale.small(_:);
      v68 = type metadata accessor for Image.Scale();
      (*(*(v68 - 8) + 104))(v65 + v66, v67, v68);
      v69 = swift_getKeyPath();

      *v65 = v69;
      *a2 = v57;
      *(a2 + 8) = v59;
      *(a2 + 16) = v47 & 1;
      *(a2 + 24) = v71;
      *(a2 + 32) = KeyPath;
      *(a2 + 40) = 2;
      *(a2 + 48) = 0;
      *(a2 + 56) = v64;
      *(a2 + 64) = v63;
      return;
    }

    if (v17 == 1)
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v18);
      v19._countAndFlagsBits = v11;
      v19._object = v10;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v19);

      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v20);
      if (_swiftEmptyArrayStorage[2])
      {
        goto LABEL_32;
      }

      goto LABEL_35;
    }
  }

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v26);
  v27._countAndFlagsBits = v11;
  v27._object = v10;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v27);

  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v28);
  if (!_swiftEmptyArrayStorage[2])
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v29);
  if (_swiftEmptyArrayStorage[2] < 2uLL)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v30);
  if (_swiftEmptyArrayStorage[2] < 3uLL)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v31);
  if (_swiftEmptyArrayStorage[2] >= 4uLL)
  {
    goto LABEL_32;
  }

LABEL_43:
  __break(1u);
}

void *sub_100043308(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for AnimationCompletionCriteria();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GameModeBannerView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = *(v1 + 24);
  v26 = *(v1 + 16);
  v27 = v11;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  result = State.wrappedValue.getter();
  if ((v25 & 1) == 0)
  {
    v23 = v9;
    v24 = v4;
    if (a1)
    {
      if (qword_10012CC18 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100011F80(v13, qword_100135C88);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        v17 = "Preparing to dismiss game mode banner and launch dashboard.";
LABEL_11:
        _os_log_impl(&_mh_execute_header, v14, v15, v17, v16, 2u);
        v19 = a1;

LABEL_13:

        v20 = static Animation.easeOut(duration:)();
        __chkstk_darwin(v20);
        *(&v23 - 2) = v2;
        sub_1000447B0(v2, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
        v21 = (*(v23 + 80) + 16) & ~*(v23 + 80);
        v22 = swift_allocObject();
        sub_100044818(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
        *(v22 + v21 + v10) = v19 & 1;
        static AnimationCompletionCriteria.logicallyComplete.getter();
        withAnimation<A>(_:completionCriteria:_:completion:)();

        return (*(v5 + 8))(v7, v24);
      }
    }

    else
    {
      if (qword_10012CC18 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100011F80(v18, qword_100135C88);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        v17 = "Preparing to dismiss game mode banner.";
        goto LABEL_11;
      }
    }

    v19 = a1;
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1000436C4(uint64_t a1)
{
  v2 = type metadata accessor for AnimationCompletionCriteria();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for GameModeBannerView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  static Animation.easeOut(duration:)();
  v13 = a1;
  sub_1000447B0(a1, &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_100044818(&v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v3 + 8))(v5, v2);
}

double sub_1000438B8(uint64_t a1)
{
  v2 = type metadata accessor for GameModeBannerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1000447B0(a1, v5);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_100044818(v5, v12 + v11);
  sub_100014BBC(0, 0, v8, &unk_1000EA670, v12);

  return result;
}

uint64_t sub_100043A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100043B08, v6, v5);
}

uint64_t sub_100043B08()
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v1 = 9.0;
  }

  else
  {
    v1 = 4.0;
  }

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100043BB0;
  v3.n128_f64[0] = v1;

  return static Task<>.sleep(seconds:)(v3);
}

uint64_t sub_100043BB0()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_100043D54;
  }

  else
  {
    v5 = sub_100043CEC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100043CEC()
{

  sub_100043308(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100043D54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100043DC0(uint64_t a1, char a2)
{
  v4 = type metadata accessor for GameModeBannerView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1000447B0(a1, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  sub_100044818(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  *(v12 + v11 + v6) = a2;
  sub_1000947BC(0, 0, v9, &unk_1000EA688, v12);

  return sub_100005688(v9, &unk_100130F10, &qword_1000EA660);
}

uint64_t sub_100043F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 16) = a4;
  return _swift_task_switch(sub_100043FAC, 0, 0);
}

uint64_t sub_100043FAC()
{
  if (qword_10012CC38 != -1)
  {
    swift_once();
  }

  v0[3] = qword_100135CD8;
  v0[4] = type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100044080, v2, v1);
}

uint64_t sub_100044080()
{
  v1 = v0[2];
  v2 = v0[3];

  v0[6] = *v1;

  return _swift_task_switch(sub_1000440F4, v2, 0);
}

uint64_t sub_1000440F4()
{
  v1 = *(v0 + 24);
  sub_10002D9A8(*(v0 + 48), 1, v1);

  return _swift_task_switch(sub_100044168, v1, 0);
}

uint64_t sub_100044168()
{
  sub_1000C75A8();

  return _swift_task_switch(sub_1000441D0, 0, 0);
}

uint64_t sub_1000441D0()
{
  if (*(v0 + 80) == 1)
  {
    v1 = [objc_opt_self() proxyForLocalPlayer];
    *(v0 + 56) = [v1 utilityService];

    *(v0 + 64) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1000442D8, v3, v2);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1000442D8()
{
  v1 = *(v0 + 16);

  *(v0 + 72) = *(v1 + 8);

  return _swift_task_switch(sub_10004434C, 0, 0);
}

uint64_t sub_10004434C()
{
  v1 = [*(v0 + 72) bundleIdentifier];
  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();
  }

  [*(v0 + 56) launchOverlaySystemSettingsForGameBundleId:v1];

  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100044400@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_100002B38(&qword_10012E198, &unk_1000EA5A0);
  return sub_100040C44(v2, a2 + *(v4 + 44));
}

unint64_t sub_100044454()
{
  result = qword_10012E238;
  if (!qword_10012E238)
  {
    sub_100005144(&qword_10012E1D8, &qword_1000EA5D8);
    sub_10004450C();
    sub_1000057D8(&qword_10012E258, &qword_10012E230, &qword_1000EA630, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E238);
  }

  return result;
}

unint64_t sub_10004450C()
{
  result = qword_10012E240;
  if (!qword_10012E240)
  {
    sub_100005144(&qword_10012E228, &qword_1000EA628);
    sub_1000057D8(&qword_10012E248, &qword_10012E250, &qword_1000EA638, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E240);
  }

  return result;
}

uint64_t sub_1000445C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10004460C()
{
  result = qword_10012E268;
  if (!qword_10012E268)
  {
    sub_100005144(&qword_10012E1F0, &qword_1000EA5F0);
    sub_100044698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E268);
  }

  return result;
}

unint64_t sub_100044698()
{
  result = qword_10012E270;
  if (!qword_10012E270)
  {
    sub_100005144(&qword_10012E1E8, &qword_1000EA5E8);
    sub_100005144(&qword_10012E1D8, &qword_1000EA5D8);
    type metadata accessor for DefaultGlassEffectShape();
    sub_100044454();
    sub_1000445C4(&qword_10012DF58, &type metadata accessor for DefaultGlassEffectShape, &protocol conformance descriptor for DefaultGlassEffectShape);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E270);
  }

  return result;
}

uint64_t sub_1000447B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameModeBannerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100044818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameModeBannerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100044910()
{
  v1 = type metadata accessor for GameModeBannerView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 32);
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for UserInterfaceSizeClass();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  v6 = *(v1 + 36);
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100044B30(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for GameModeBannerView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100044BA4()
{
  v1 = type metadata accessor for GameModeBannerView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = *(v1 + 32);
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for UserInterfaceSizeClass();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  v7 = *(v1 + 36);
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DynamicTypeSize();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100044DB4(uint64_t a1)
{
  v4 = *(type metadata accessor for GameModeBannerView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_100043A70(a1, v6, v7, v1 + v5);
}

uint64_t sub_100044F24()
{
  v1 = type metadata accessor for GameModeBannerView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 32);
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for UserInterfaceSizeClass();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  v6 = *(v1 + 36);
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DynamicTypeSize();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100045130()
{
  v1 = *(type metadata accessor for GameModeBannerView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_100043DC0(v2, v3);
}

uint64_t sub_1000451B0()
{
  v1 = type metadata accessor for GameModeBannerView(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = *(v1 + 32);
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for UserInterfaceSizeClass();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  v7 = *(v1 + 36);
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DynamicTypeSize();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000453C4(uint64_t a1)
{
  v4 = *(type metadata accessor for GameModeBannerView(0) - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100011720;

  return sub_100043F88(a1, v5, v6, v7, v8);
}

uint64_t sub_1000454DC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100045534@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10004558C()
{
  result = qword_10012E2A0;
  if (!qword_10012E2A0)
  {
    sub_100005144(&qword_10012E298, &unk_1000EA6D0);
    sub_1000057D8(&qword_10012CDB8, &qword_10012CDC0, &qword_1000E90C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E2A0);
  }

  return result;
}

uint64_t sub_100045644@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1000456FC()
{
  result = qword_10012E2D8;
  if (!qword_10012E2D8)
  {
    sub_100005144(&qword_10012E2C0, &qword_1000EA6F8);
    sub_1000457B4();
    sub_1000057D8(&qword_10012E318, &qword_10012E320, &qword_1000EA788, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E2D8);
  }

  return result;
}

unint64_t sub_1000457B4()
{
  result = qword_10012E2E0;
  if (!qword_10012E2E0)
  {
    sub_100005144(&qword_10012E2D0, &qword_1000EA768);
    sub_10004586C();
    sub_1000057D8(&qword_10012E308, &qword_10012E310, &qword_1000EA780, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E2E0);
  }

  return result;
}

unint64_t sub_10004586C()
{
  result = qword_10012E2E8;
  if (!qword_10012E2E8)
  {
    sub_100005144(&qword_10012E2F0, &qword_1000EA770);
    sub_1000057D8(&qword_10012E2F8, &qword_10012E300, &qword_1000EA778, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E2E8);
  }

  return result;
}

uint64_t sub_10004598C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AccessPointUseCase();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100045AD0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AccessPointUseCase();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for InGameBannerView(uint64_t a1)
{
  result = qword_10012E398;
  if (!qword_10012E398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100045C4C(uint64_t a1)
{
  sub_100045E64(319, &qword_10012E3A8, &type metadata accessor for GameDashboardLaunchContext, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_100045E64(319, &qword_10012E3B0, &type metadata accessor for ImpedimentFlowDestinationStates, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_100045E64(319, &unk_10012CF00, &type metadata accessor for Game, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AccessPointUseCase();
        if (v4 <= 0x3F)
        {
          sub_100045EC8(319, &qword_10012E3B8, &type metadata for String);
          if (v5 <= 0x3F)
          {
            sub_100045EC8(319, &qword_10012E3C0, &type metadata for Data);
            if (v6 <= 0x3F)
            {
              sub_100045F14(319, &qword_10012E3C8, &qword_10012E3D0, &qword_1000EA818);
              if (v7 <= 0x3F)
              {
                sub_100045F14(319, &qword_10012E3D8, &qword_10012E0C0, &qword_1000EA820);
                if (v8 <= 0x3F)
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
}

void sub_100045E64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100045EC8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_100045F14(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100005144(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100045F84@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)@<X8>)
{
  v30 = sub_100002B38(&qword_10012E440, &qword_1000EA890);
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v29 = &v28 - v5;
  v6 = type metadata accessor for InGameBannerView(0);
  v7 = v6 - 8;
  v28 = *(v6 - 8);
  v8 = *(v28 + 64);
  __chkstk_darwin(v6);
  v9 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  sub_1000035B4(v1 + *(v7 + 32), &v28 - v10, &qword_100132410, &unk_1000E9F30);
  v12 = type metadata accessor for Game();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100005688(v11, &qword_100132410, &unk_1000E9F30);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = Game.bundleID.getter();
    v15 = v16;
    (*(v13 + 8))(v11, v12);
  }

  sub_100048304(v1, &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v18 = swift_allocObject();
  sub_1000485AC(&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.registerGamesDefaults()();

  v20 = sub_100002B38(&qword_10012E448, &qword_1000EA898);
  v21 = (a1 + *(v20 + 56));
  *v21 = v14;
  v21[1] = v15;
  *a1 = sub_100048610;
  a1[1] = v18;
  a1[2] = sub_100049778;
  a1[3] = 0;
  a1[4] = sub_100049778;
  a1[5] = 0;
  if (qword_10012CC40 != -1)
  {
    swift_once();
  }

  type metadata accessor for OverlayBootstrap(0);
  sub_1000496C8(&qword_10012E450, type metadata accessor for OverlayBootstrap, &protocol conformance descriptor for OverlayBootstrap);

  v22 = v29;
  Bindable<A>.init(wrappedValue:)();
  v23 = v30;
  Bindable.wrappedValue.getter();
  v24 = *(v33 + 16);

  *(a1 + *(v20 + 52)) = v24;
  v25 = v31;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v26 = *(v32 + 8);
  v26(v25, v23);
  Bindable.wrappedValue.getter();
  sub_1000BB51C();

  return (v26)(v22, v23);
}

uint64_t sub_100046438@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a2;
  v41 = a4;
  v31[0] = a1;
  v5 = type metadata accessor for BootstrapResult();
  v37 = *(v5 - 8);
  v38 = v5;
  v39 = *(v37 + 64);
  __chkstk_darwin(v5);
  v36 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InGameBannerView(0);
  v35 = *(v7 - 8);
  v34 = *(v35 + 64);
  __chkstk_darwin(v7);
  v33 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for ImpedimentFlowConfig.UseCase();
  v9 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ImpedimentFlowConfig();
  __chkstk_darwin(v12 - 8);
  v31[1] = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Dependency();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  BootstrapResult.objectGraph.getter();
  type metadata accessor for ImpedimentFlowDestinationStates();
  v18 = *(a3 + 24);
  v42 = *(a3 + 16);
  v43 = v18;
  sub_100002B38(&qword_10012E460, &qword_1000EA8D0);
  State.wrappedValue.getter();
  Dependency.init<A>(satisfying:with:)();
  v31[2] = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  (*(v15 + 8))(v17, v14);
  swift_unknownObjectWeakLoadStrong();
  (*(v9 + 104))(v11, enum case for ImpedimentFlowConfig.UseCase.inGame(_:), v32);
  ImpedimentFlowConfig.init(useCase:suppressImpediments:)();
  v19 = v33;
  sub_100048304(a3, v33);
  v21 = v36;
  v20 = v37;
  v22 = v38;
  (*(v37 + 16))(v36, v31[0], v38);
  v23 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v24 = v20;
  v25 = (v34 + *(v20 + 80) + v23) & ~*(v20 + 80);
  v26 = (v39 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_1000485AC(v19, v27 + v23);
  (*(v24 + 32))(v27 + v25, v21, v22);
  v28 = v40;
  *(v27 + v26) = v40;
  v29 = v28;
  sub_100002B38(&qword_10012E468, &qword_1000EA8D8);
  sub_1000057D8(&qword_10012E470, &qword_10012E468, &qword_1000EA8D8, &unk_1000EE138);
  return ImpedimentFlowView.init<>(objectGraph:window:config:content:)();
}

id sub_1000468BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v97 = a5;
  v94 = a4;
  v100 = a3;
  v101 = a1;
  v104 = a2;
  v92 = a6;
  v6 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  __chkstk_darwin(v6 - 8);
  v88 = v75 - v7;
  v87 = type metadata accessor for AccessPointUseCase();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v102 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for InGameBannerRequiredData();
  v93 = *(v96 - 8);
  v95 = *(v93 + 64);
  __chkstk_darwin(v96);
  v91 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v89 = v75 - v11;
  v99 = type metadata accessor for CommonOnboardingStatus();
  v12 = *(v99 - 8);
  v86 = *(v12 + 64);
  __chkstk_darwin(v99);
  v14 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for InGameBannerView(0);
  v16 = (v15 - 8);
  v82 = *(v15 - 8);
  v103 = *(v82 + 64);
  __chkstk_darwin(v15);
  v98 = v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  v79 = *(v18 - 8);
  v19 = *(v79 + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v75 - v20;
  v22 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  __chkstk_darwin(v22 - 8);
  v24 = v75 - v23;
  v25 = type metadata accessor for StoreTab.Identifier();
  __chkstk_darwin(v25 - 8);
  sub_100002B38(&qword_10012E480, &qword_1000EA8F0);
  v84 = type metadata accessor for StoreTab();
  v83 = *(v84 - 8);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1000EA7D0;
  v90 = v26;
  static StoreTab.Identifier.overlayNowPlayingPage.getter();
  v27 = type metadata accessor for URL();
  (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
  sub_1000D9414(_swiftEmptyArrayStorage);
  StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  v28 = v101;
  sub_1000035B4(v101, v21, &qword_10012E478, &unk_1000EA8E0);
  v29 = v98;
  sub_100048304(v100, v98);
  v30 = *(v12 + 16);
  v80 = v12 + 16;
  v81 = v30;
  v31 = v14;
  v32 = v14;
  v33 = v99;
  v30(v32, v104, v99);
  v34 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v82 = *(v82 + 80);
  v35 = (v19 + v82 + v34) & ~v82;
  v36 = v12;
  v37 = (v103 + *(v12 + 80) + v35) & ~*(v12 + 80);
  v38 = swift_allocObject();
  v39 = v38 + v34;
  v40 = v38;
  v86 = v38;
  v78 = v21;
  sub_1000490F8(v21, v39);
  sub_1000485AC(v29, v40 + v35);
  (*(v36 + 32))(v40 + v37, v31, v33);
  v41 = v100;
  (*(v85 + 16))(v102, v100 + v16[9], v87);
  sub_1000035B4(v28, v21, &qword_10012E478, &unk_1000EA8E0);
  v42 = v16[11];
  v87 = *(v41 + v16[10]);
  v43 = *(v41 + v42 + 8);
  v85 = *(v41 + v42);
  v77 = v43;
  v44 = (v41 + v16[12]);
  v45 = *v44;
  v76 = v44[1];
  v79 = *(v41 + v16[15]);
  sub_1000035B4(v41 + v16[8], v88, &qword_100132410, &unk_1000E9F30);
  v46 = v16[14];
  v47 = (v41 + v16[13]);
  v48 = *v47;
  v49 = v47[1];
  v75[2] = *(v41 + v46);

  sub_1000304CC(v45, v76);

  sub_1000304CC(v48, v49);

  v50 = v89;
  InGameBannerRequiredData.init(useCase:player:title:message:image:identifier:game:playerIDs:clipThumbnailData:imageSymbolName:)();
  v51 = type metadata accessor for BootstrapResult();
  v52 = v92;
  (*(*(v51 - 8) + 16))(v92, v94, v51);
  v53 = sub_100002B38(&qword_10012E468, &qword_1000EA8D8);
  sub_1000035B4(v101, v52 + v53[10], &qword_10012E478, &unk_1000EA8E0);
  (*(v83 + 56))(v52 + v53[12], 1, 1, v84);
  v54 = v41[1];
  v106 = *v41;
  v107 = v54;
  sub_100002B38(&qword_10012E488, &qword_1000EA8F8);
  State.wrappedValue.getter();
  v102 = v105;
  v81(v52 + v53[14], v104, v99);
  v55 = v93;
  v56 = v91;
  v57 = v50;
  v58 = v96;
  (*(v93 + 16))(v91, v50, v96);
  v59 = v41;
  v60 = v98;
  sub_100048304(v59, v98);
  v61 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v62 = (v95 + v82 + v61) & ~v82;
  v63 = swift_allocObject();
  v64 = v56;
  v65 = v58;
  (*(v55 + 32))(v63 + v61, v64, v58);
  sub_1000485AC(v60, v63 + v62);
  v66 = (v52 + v53[18]);
  sub_100002B38(&qword_10012E490, &qword_1000EA900);
  swift_allocObject();
  v105 = LRUMultiCache.init(keyLimit:valueLimit:)();
  State.init(wrappedValue:)();
  (*(v55 + 8))(v57, v65);
  v67 = v107;
  *v66 = v106;
  v66[1] = v67;
  v68 = v52 + v53[19];
  *v68 = swift_getKeyPath();
  *(v68 + 8) = 0;
  v69 = v97;
  *(v52 + v53[9]) = v97;
  *(v52 + v53[13]) = v102;
  v70 = (v52 + v53[11]);
  *v70 = v90;
  v70[1] = sub_100049168;
  v70[2] = v86;
  v71 = (v52 + v53[15]);
  *v71 = sub_10004958C;
  v71[1] = v63;
  v72 = (v52 + v53[16]);
  *v72 = sub_100049778;
  v72[1] = 0;
  v73 = (v52 + v53[17]);
  *v73 = sub_100049778;
  v73[1] = 0;

  return v69;
}

id sub_100047358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v58 = a4;
  v73 = a3;
  v57 = a2;
  v70 = a1;
  v69 = a5;
  v5 = type metadata accessor for FlowOrigin();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v68 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for FlowAnimationBehavior();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v65 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for FlowPresentationContext();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v9 - 8);
  v61 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  __chkstk_darwin(v11 - 8);
  v72 = &v51 - v12;
  v13 = sub_100002B38(&qword_10012E4A0, &unk_1000EA940);
  __chkstk_darwin(v13 - 8);
  v55 = &v51 - v14;
  v15 = sub_100002B38(&qword_10012CCD0, &unk_1000E8ED0);
  __chkstk_darwin(v15 - 8);
  v76 = &v51 - v16;
  v17 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  __chkstk_darwin(v17 - 8);
  v19 = &v51 - v18;
  v71 = type metadata accessor for FlowPage();
  v20 = *(v71 - 8);
  __chkstk_darwin(v71);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for StoreTab.Identifier();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v51 - v28;
  StoreTab.identifier.getter();
  v30 = StoreTab.Identifier.rawValue.getter();
  v32 = v31;
  v33 = *(v24 + 8);
  v34 = v29;
  v35 = v72;
  v54 = v23;
  v53 = v24 + 8;
  v52 = v33;
  v33(v34, v23);
  v36 = v26;
  *&v74 = v30;
  *(&v74 + 1) = v32;
  AnyHashable.init<A>(_:)();
  v37 = *(v20 + 104);
  v56 = v22;
  v37(v22, enum case for FlowPage.games(_:), v71);
  v38 = type metadata accessor for URL();
  v39 = *(*(v38 - 8) + 56);
  v71 = v19;
  v39(v19, 1, 1, v38);
  v40 = type metadata accessor for ReferrerData();
  (*(*(v40 - 8) + 56))(v76, 1, 1, v40);
  StoreTab.identifier.getter();
  v41 = type metadata accessor for InGameBannerView(0);
  sub_1000035B4(v73 + *(v41 + 24), v35, &qword_100132410, &unk_1000E9F30);
  v42 = type metadata accessor for Game();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v35, 1, v42) == 1)
  {
    sub_100005688(v35, &qword_100132410, &unk_1000E9F30);
  }

  else
  {
    Game.bundleID.getter();
    (*(v43 + 8))(v35, v42);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v45 = result;
    v46 = String._bridgeToObjectiveC()();
    [v45 applicationIsInstalled:v46];

    v47 = v55;
    StoreTab.Identifier.overlayTabDestination(player:bundleID:commonOnboardingStatus:isGamesAppInstalled:)();

    v52(v36, v54);
    v48 = type metadata accessor for FlowDestination();
    v49 = *(v48 - 8);
    if ((*(v49 + 48))(v47, 1, v48) == 1)
    {
      sub_100005688(v47, &qword_10012E4A0, &unk_1000EA940);
      v74 = 0u;
      v75 = 0u;
    }

    else
    {
      *(&v75 + 1) = v48;
      v50 = sub_100012854(&v74);
      (*(v49 + 32))(v50, v47, v48);
    }

    static ActionMetrics.notInstrumented.getter();
    static FlowActionPresentation.tabSelect.getter();
    (*(v59 + 104))(v64, enum case for FlowPresentationContext.infer(_:), v60);
    (*(v62 + 104))(v65, enum case for FlowAnimationBehavior.infer(_:), v63);
    (*(v66 + 104))(v68, enum case for FlowOrigin.inapp(_:), v67);
    type metadata accessor for FlowAction();
    swift_allocObject();
    result = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    *v69 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100047C68(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  if (v6)
  {
    v11[2] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = *(type metadata accessor for StoreTab() - 8);
    v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    while (1)
    {
      a1(v11, v9);
      if (v4)
      {
        break;
      }

      v4 = 0;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 += v10;
      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100047DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a1;
  v7 = type metadata accessor for AccessPointAnchoring();
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MetricsPipeline();
  v52 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Bag();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for InGameBannerRequiredData();
  v17 = __chkstk_darwin(v16);
  (*(v19 + 16))(&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v17);
  v57[3] = type metadata accessor for InGameBannerPageIntent();
  v57[4] = sub_1000496C8(&qword_10012E498, &type metadata accessor for InGameBannerPageIntent, &protocol conformance descriptor for InGameBannerPageIntent);
  sub_100012854(v57);
  InGameBannerPageIntent.init(requiredData:)();
  BaseObjectGraph.inject<A>(_:)();
  v20 = Bag.metricsPageRenderTopic.getter();
  v48 = v21;
  v49 = v20;
  (*(v13 + 8))(v15, v12);
  v46 = v10;
  BaseObjectGraph.inject<A>(_:)();
  v22 = v51;
  v23 = v50;
  (*(v50 + 104))(v9, enum case for AccessPointAnchoring.topCentered(_:), v51);
  v24 = a3[1];
  v55 = *a3;
  v56 = v24;
  sub_100002B38(&qword_10012E488, &qword_1000EA8F8);
  State.wrappedValue.getter();
  v25 = v54;
  v26 = type metadata accessor for InGameBannerView(0);
  v27 = v26[16];
  v44 = *(a3 + v26[15]);
  v28 = type metadata accessor for AccessPointPageView(0);
  sub_1000035B4(a3 + v27, a4 + v28[10], &unk_100131120, &unk_1000EAAF0);
  v29 = (a3 + v26[17]);
  v30 = v29[1];
  v45 = *v29;
  v43 = v30;
  type metadata accessor for RemoteAlertAccessPointContext(0);
  sub_1000496C8(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext, &unk_1000EE6AC);

  *a4 = Environment.init<A>(_:)();
  *(a4 + 8) = v31 & 1;
  v32 = (a4 + v28[12]);
  sub_10002E8A8(v57, a4 + 16);
  v33 = v23;
  v34 = v22;
  (*(v23 + 16))(a4 + v28[8], v9, v22);
  v35 = v48;
  *(a4 + 56) = v49;
  *(a4 + 64) = v35;
  v36 = v52;
  v38 = v46;
  v37 = v47;
  (*(v52 + 16))(a4 + v28[7], v47, v46);
  *(a4 + v28[11]) = v25;
  v39 = a4 + v28[9];
  LOBYTE(v54) = v44;
  State.init(wrappedValue:)();
  (*(v33 + 8))(v9, v34);
  (*(v36 + 8))(v37, v38);
  sub_10002E6CC(v57);
  v40 = v56;
  *v39 = v55;
  *(v39 + 8) = v40;
  v41 = v43;
  *v32 = v45;
  v32[1] = v41;
  *(a4 + v28[13]) = v53;
}

uint64_t sub_1000482C4@<X0>(uint64_t *a2@<X8>)
{
  result = static Color.clear.getter();
  a2[3] = &type metadata for Color;
  a2[4] = &protocol witness table for Color;
  *a2 = result;
  return result;
}

uint64_t sub_100048304(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InGameBannerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100048368()
{
  v1 = type metadata accessor for InGameBannerView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[6];
  v4 = type metadata accessor for Game();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = v1[7];
  v7 = type metadata accessor for AccessPointUseCase();
  (*(*(v7 - 8) + 8))(v2 + v6, v7);

  v8 = (v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100030784(*v8, v9);
  }

  v10 = (v2 + v1[11]);
  v11 = v10[1];
  if (v11 >> 60 != 15)
  {
    sub_100030784(*v10, v11);
  }

  v12 = (v2 + v1[16]);
  if (v12[3])
  {
    sub_10002E6CC(v12);
  }

  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000485AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InGameBannerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100048610@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for InGameBannerView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_100046438(a1, a2, v8, a3);
}

uint64_t sub_100048698@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.shouldPresentOfflineOverlay.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000486F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000496C8(&qword_10012E450, type metadata accessor for OverlayBootstrap, &protocol conformance descriptor for OverlayBootstrap);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC13GameOverlayUI16OverlayBootstrap__cachedBootstrapResult;
  swift_beginAccess();
  return sub_1000035B4(v3 + v4, a2, &qword_10012E458, qword_1000ECF80);
}

uint64_t sub_1000487C8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100002B38(&qword_10012E458, qword_1000ECF80);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_1000035B4(a1, &v9[-v5], &qword_10012E458, qword_1000ECF80);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1000496C8(&qword_10012E450, type metadata accessor for OverlayBootstrap, &protocol conformance descriptor for OverlayBootstrap);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100005688(v6, &qword_10012E458, qword_1000ECF80);
}

uint64_t sub_10004893C()
{
  v1 = type metadata accessor for InGameBannerView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v19 = *(*(v1 - 1) + 64);
  v20 = type metadata accessor for BootstrapResult();
  v3 = *(v20 - 8);
  v4 = *(v3 + 80);
  v18 = *(v3 + 64);
  v5 = v0 + v2;

  v6 = v1[6];
  v7 = type metadata accessor for Game();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v1[7];
  v10 = type metadata accessor for AccessPointUseCase();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  v11 = (v5 + v1[10]);
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_100030784(*v11, v12);
  }

  v13 = (v5 + v1[11]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100030784(*v13, v14);
  }

  v15 = (v5 + v1[16]);
  if (v15[3])
  {
    sub_10002E6CC(v15);
  }

  v16 = (v2 + v19 + v4) & ~v4;

  swift_unknownObjectWeakDestroy();
  (*(v3 + 8))(v0 + v16, v20);

  return swift_deallocObject();
}

id sub_100048C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for InGameBannerView(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for BootstrapResult() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v3 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000468BC(a1, a2, (v3 + v8), v3 + v11, v12, a3);
}

uint64_t sub_100048D40()
{
  v1 = *(sub_100002B38(&qword_10012E478, &unk_1000EA8E0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for InGameBannerView(0);
  v5 = (v2 + v3 + *(*(v4 - 1) + 80)) & ~*(*(v4 - 1) + 80);
  v22 = *(*(v4 - 1) + 64);
  v24 = type metadata accessor for CommonOnboardingStatus();
  v6 = *(v24 - 8);
  v7 = *(v6 + 80);
  v8 = type metadata accessor for Player();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v2, 1, v8))
  {
    (*(v9 + 8))(v0 + v2, v8);
  }

  v23 = v5;
  v10 = v0 + v5;

  v11 = v4[6];
  v12 = type metadata accessor for Game();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v10 + v11, 1, v12))
  {
    (*(v13 + 8))(v10 + v11, v12);
  }

  v14 = v4[7];
  v15 = type metadata accessor for AccessPointUseCase();
  (*(*(v15 - 8) + 8))(v10 + v14, v15);

  v16 = (v10 + v4[10]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100030784(*v16, v17);
  }

  v18 = (v10 + v4[11]);
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_100030784(*v18, v19);
  }

  v20 = (v10 + v4[16]);
  if (v20[3])
  {
    sub_10002E6CC(v20);
  }

  swift_unknownObjectWeakDestroy();
  (*(v6 + 8))(v0 + ((v23 + v22 + v7) & ~v7), v24);

  return swift_deallocObject();
}

uint64_t sub_1000490F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100049168(uint64_t a1)
{
  v3 = *(sub_100002B38(&qword_10012E478, &unk_1000EA8E0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for InGameBannerView(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for CommonOnboardingStatus() - 8);
  v10 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));
  v11[2] = v1 + v4;
  v11[3] = v1 + v7;
  v11[4] = v10;
  sub_100047C68(sub_100049710, v11, a1);
}

uint64_t sub_1000492CC()
{
  v1 = type metadata accessor for InGameBannerRequiredData();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for InGameBannerView(0);
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;

  v8 = v5[6];
  v9 = type metadata accessor for Game();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  v11 = v5[7];
  v12 = type metadata accessor for AccessPointUseCase();
  (*(*(v12 - 8) + 8))(v7 + v11, v12);

  v13 = (v7 + v5[10]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_100030784(*v13, v14);
  }

  v15 = (v7 + v5[11]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_100030784(*v15, v16);
  }

  v17 = (v7 + v5[16]);
  if (v17[3])
  {
    sub_10002E6CC(v17);
  }

  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10004958C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for InGameBannerRequiredData() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for InGameBannerView(0) - 8);
  v9 = (v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));

  return sub_100047DAC(a1, v2 + v6, v9, a2);
}

uint64_t sub_100049670@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.shouldPresentOfflineOverlay.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000496C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100049790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002B38(&qword_10012E4B0, qword_1000EA960);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100049870(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002B38(&qword_10012E4B0, qword_1000EA960);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_100049958(uint64_t a1)
{
  sub_100049AF0();
  if (v1 <= 0x3F)
  {
    sub_10004DF60(319, &qword_10012E520, &type metadata accessor for GameDashboardDestination, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100045F14(319, &qword_10012E528, &qword_10012E530, &unk_1000EA9A0);
      if (v3 <= 0x3F)
      {
        sub_10004DF60(319, &qword_10012E538, &type metadata accessor for StoreTab, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_100045F14(319, &qword_10012E3D8, &qword_10012E0C0, &qword_1000EA820);
          if (v5 <= 0x3F)
          {
            sub_100045F14(319, &qword_10012E540, &unk_10012E548, &qword_1000EA9B0);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100049AF0()
{
  if (!qword_10012E3B8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10012E3B8);
    }
  }
}

uint64_t sub_100049B5C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = type metadata accessor for FallbackDashboardOverlayView(0);
  v2 = *(v1 - 8);
  Strong = v1;
  v36 = v2;
  __chkstk_darwin(v1);
  v37 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v3;
  v4 = type metadata accessor for ImpedimentFlowConfig.UseCase();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImpedimentFlowConfig();
  __chkstk_darwin(v6 - 8);
  v41 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002B38(&qword_10012E458, qword_1000ECF80);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for BootstrapResult();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  if (qword_10012CC40 != -1)
  {
    swift_once();
  }

  v18 = *(qword_100135CF0 + 24);
  swift_getKeyPath();
  v42 = v18;
  sub_10004D8DC(&qword_10012E450, type metadata accessor for OverlayBootstrap, &protocol conformance descriptor for OverlayBootstrap);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = OBJC_IVAR____TtC13GameOverlayUI16OverlayBootstrap__cachedBootstrapResult;
  swift_beginAccess();
  sub_1000035B4(v18 + v19, v10, &qword_10012E458, qword_1000ECF80);
  v20 = *(v12 + 48);
  if (v20(v10, 1, v11) == 1)
  {
    sub_10004A0E8(v17);
    v21 = v11;
    if (v20(v10, 1, v11) != 1)
    {
      sub_100005688(v10, &qword_10012E458, qword_1000ECF80);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    v21 = v11;
  }

  v31 = BootstrapResult.objectGraph.getter();
  v22 = v40;
  Strong = swift_unknownObjectWeakLoadStrong();
  (*(v33 + 104))(v32, enum case for ImpedimentFlowConfig.UseCase.inGame(_:), v34);
  ImpedimentFlowConfig.init(useCase:suppressImpediments:)();
  (*(v12 + 16))(v14, v17, v21);
  v23 = v22;
  v24 = v37;
  sub_10004DA44(v23, v37, type metadata accessor for FallbackDashboardOverlayView);
  v25 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v26 = (v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v36 + 80) + v26 + 8) & ~*(v36 + 80);
  v28 = v21;
  v29 = swift_allocObject();
  (*(v12 + 32))(v29 + v25, v14, v28);
  *(v29 + v26) = v18;
  sub_10004D994(v24, v29 + v27, type metadata accessor for FallbackDashboardOverlayView);
  sub_100002B38(&qword_10012E628, &qword_1000EAAC8);
  sub_10004D7F4();
  ImpedimentFlowView.init<>(objectGraph:window:config:content:)();
  return (*(v12 + 8))(v17, v28);
}

uint64_t sub_10004A0E8@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v1 = sub_100002B38(&qword_10012E660, &unk_1000ED030);
  __chkstk_darwin(v1 - 8);
  v81 = &v60 - v2;
  v3 = sub_100002B38(&qword_10012E668, &qword_1000EAB40);
  __chkstk_darwin(v3 - 8);
  v79 = &v60 - v4;
  v90 = type metadata accessor for MetricsPipeline.Configuration();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v93 = &v60 - v7;
  v92 = type metadata accessor for Bag();
  v94 = *(v92 - 8);
  __chkstk_darwin(v92);
  v78 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for MetricsFieldsAggregator();
  v82 = *(v88 - 8);
  __chkstk_darwin(v88);
  v80 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v60 - v11;
  v13 = type metadata accessor for NativeIntentDispatcher();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v60 - v18;
  v20 = type metadata accessor for Bag.Stubs();
  __chkstk_darwin(v20 - 8);
  v21 = type metadata accessor for Bag.Profile();
  __chkstk_darwin(v21 - 8);
  v22 = type metadata accessor for FallbackDashboardOverlayView.OfflineBagContract(0);
  __chkstk_darwin(v22);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  Bag.Profile.init(name:version:)();
  Bag.Stubs.init()();
  Bag.init(mockProfile:stubs:)();
  v24[v22[5]] = 0;
  v25 = v22[6];
  v26 = type metadata accessor for BagOfflinePolicy();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v74 = v26;
  v73 = v28;
  v72 = v27 + 56;
  (v28)(&v24[v25], 1, 1);
  v24[v22[7]] = 0;
  *&v24[v22[8]] = 0x40BC200000000000;
  *&v24[v22[9]] = 0x407E000000000000;
  makeNetworkInquiry()();
  sub_10002E8A8(&v99, &v96);
  v95[3] = v22;
  v95[4] = sub_10004D8DC(&qword_10012E670, type metadata accessor for FallbackDashboardOverlayView.OfflineBagContract, &unk_1000EABD8);
  v29 = sub_100012854(v95);
  v30 = v24;
  sub_10004DA44(v24, v29, type metadata accessor for FallbackDashboardOverlayView.OfflineBagContract);
  type metadata accessor for JSFreshnessWatchdog();
  swift_allocObject();
  v77 = JSFreshnessWatchdog.init(bagContract:networkInquiry:process:)();
  NativeIntentDispatcher.init()();
  *(&v97 + 1) = v13;
  v98 = &protocol witness table for NativeIntentDispatcher;
  sub_100012854(&v96);
  static GameObjectGraphBuilder.nativeIntentDispatcher()();
  v31 = *(v14 + 16);
  v67 = v14 + 16;
  v69 = v31;
  v31(v19, v16, v13);
  sub_1000035B4(&v96, v95, &qword_10012E678, &qword_1000EAB48);
  NativeIntentDispatcher.next.setter();
  v32 = *(v14 + 8);
  v75 = v14 + 8;
  v76 = v32;
  v32(v16, v13);
  sub_100005688(&v96, &qword_10012E678, &qword_1000EAB48);
  v33 = v94 + 16;
  v34 = *(v94 + 16);
  v35 = v78;
  v36 = v92;
  v34(v78, v30);
  v37 = v33;
  v68 = objc_opt_self();
  v38 = [v68 ams_sharedAccountStore];
  v66 = sub_10004DAFC();
  *(&v97 + 1) = v66;
  v98 = &protocol witness table for ACAccountStore;
  *&v96 = v38;
  v65 = objc_opt_self();
  v39 = [v65 mainBundle];
  MetricsFieldsAggregator.init(bag:accountProvider:bundle:)();
  v64 = type metadata accessor for AMSMetricsEventRecorder();
  v94 = v37;
  v84 = v34;
  (v34)(v35, v30, v36);
  v91 = v30;
  Bag.metricsTopic.getter();
  v85 = AMSMetricsEventRecorder.__allocating_init(bag:defaultTopic:)();
  v40 = (v34)(v35, v30, v36);
  *(&v97 + 1) = &type metadata for FallbackDashboardOverlayView.OfflineMetricsEventLinter;
  v98 = sub_10004DB48(v40, v41, v42);
  MetricsPipeline.Configuration.init(bag:linter:anonymousTopics:)();
  v62 = type metadata accessor for ArtworkLoaderURLSession();
  v61 = [swift_getObjCClassFromMetadata() minimalSession];
  type metadata accessor for BaseObjectGraph();
  sub_100002B38(&qword_10012E690, &qword_1000EAB50);
  v43 = *(type metadata accessor for Dependency() - 8);
  v71 = v13;
  v44 = *(v43 + 72);
  v86 = v12;
  v70 = v19;
  *(swift_allocObject() + 16) = xmmword_1000EA7D0;
  sub_100002B38(&qword_10012E698, &qword_1000EAB58);
  *(&v97 + 1) = v13;
  v98 = &protocol witness table for NativeIntentDispatcher;
  v45 = sub_100012854(&v96);
  v69(v45, v19, v13);
  Dependency.init<A>(satisfying:with:)();
  v69 = BaseObjectGraph.__allocating_init(name:_:)();
  v63 = 8 * v44;
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1000EA950;
  v46 = v91;
  v47 = v92;
  v48 = v84;
  (v84)(v35, v91, v92);
  Dependency.init<A>(satisfying:with:)();
  v48(v35, v46, v47);
  v49 = [v68 ams_sharedAccountStore];
  *(&v97 + 1) = v66;
  v98 = &protocol witness table for ACAccountStore;
  *&v96 = v49;
  v50 = [v65 mainBundle];
  v51 = v80;
  MetricsFieldsAggregator.init(bag:accountProvider:bundle:)();
  Dependency.init<A>(satisfying:with:)();
  *&v96 = v85;

  Dependency.init<A>(satisfying:with:)();
  *&v96 = v61;
  v52 = v61;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for ArtworkLoader();
  v68 = v52;
  *&v96 = ArtworkLoader.__allocating_init(cacheLimit:renderIntent:urlSession:)();
  Dependency.init<A>(satisfying:with:)();
  v66 = *(v89 + 16);
  v66(v87, v93, v90);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for ImpedimentFlowDestinationStates();
  v53 = sub_100002B38(&qword_10012E6A0, &qword_1000EAB60);
  (*(*(v53 - 8) + 56))(v79, 1, 1, v53);
  swift_allocObject();
  *&v96 = ImpedimentFlowDestinationStates.init(completedWelcome:completedCrossUse:completedProfileCreation:lastRecordedSignedInPlayer:lastRecordedSignedInAppStoreDSID:)();
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for ASKBagContract();
  (v84)(v35, v91, v92);
  v73(v81, 1, 1, v74);
  swift_allocObject();
  *&v96 = ASKBagContract.init(_:isOfflineBag:bagOfflinePolicy:)();
  Dependency.init<A>(satisfying:with:)();
  *&v96 = v67;
  sub_100002B38(&qword_10012E6A8, &qword_1000EAB68);
  sub_1000057D8(&qword_10012E6B0, &qword_10012E6A8, &qword_1000EAB68, &protocol conformance descriptor for [A]);
  dispatch thunk of BaseObjectGraph.adding<A>(allDependencies:)();

  v54 = v82;
  v55 = v88;
  (*(v82 + 16))(v51, v86, v88);
  v56 = v93;
  v57 = v90;
  v66(v87, v93, v90);
  type metadata accessor for MetricsPipelineTransformer();
  swift_allocObject();

  v58 = MetricsPipelineTransformer.init(aggregator:recorder:configuration:additionalRecorders:decorators:)();
  sub_10004CA0C(v58);
  dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  BootstrapResult.init(objectGraph:freshnessWatchdog:metricsPipelineTransformer:)();

  (*(v89 + 8))(v56, v57);
  (*(v54 + 8))(v86, v55);
  v76(v70, v71);
  sub_10002E6CC(&v99);
  return sub_10004DB9C(v91);
}

int *sub_10004AFC0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v168 = a4;
  v169 = a3;
  v172 = a2;
  v170 = a1;
  v152 = a6;
  v7 = sub_100002B38(&qword_10012E650, &qword_1000EDA30);
  __chkstk_darwin(v7 - 8);
  v145 = &v139 - v8;
  v9 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  __chkstk_darwin(v9 - 8);
  v162 = &v139 - v10;
  v165 = type metadata accessor for StoreTab();
  v163 = *(v165 - 8);
  __chkstk_darwin(v165);
  v141 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v146 = &v139 - v13;
  __chkstk_darwin(v14);
  v143 = &v139 - v15;
  __chkstk_darwin(v16);
  v149 = &v139 - v17;
  __chkstk_darwin(v18);
  v150 = &v139 - v19;
  v173 = type metadata accessor for StoreTab.Identifier();
  v166 = *(v173 - 8);
  __chkstk_darwin(v173);
  v144 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v161 = &v139 - v22;
  __chkstk_darwin(v23);
  v164 = &v139 - v24;
  __chkstk_darwin(v25);
  v174 = &v139 - v26;
  v27 = sub_100002B38(&qword_10012E4B0, qword_1000EA960);
  __chkstk_darwin(v27 - 8);
  v140 = &v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v142 = &v139 - v30;
  __chkstk_darwin(v31);
  v171 = &v139 - v32;
  v33 = type metadata accessor for CommonOnboardingStatus();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100002B38(&qword_10012E478, &unk_1000EA8E0);
  __chkstk_darwin(v37 - 8);
  v39 = &v139 - v38;
  v40 = type metadata accessor for BootstrapResult();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v139 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DashboardOverlayView.OverlayContentView(0);
  __chkstk_darwin(v44);
  v46 = &v139 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v47);
  v147 = &v139 - v49;
  v148 = v41;
  v50 = *(v41 + 16);
  v167 = v43;
  v51 = v169;
  v169 = v40;
  v158 = v50;
  (v50)(v43, v51, v40, v48);
  v52 = *(v168 + 2);
  v53 = a5[1];
  v156 = *a5;
  v168 = v39;
  sub_1000035B4(v170, v39, &qword_10012E478, &unk_1000EA8E0);
  v151 = v34;
  v54 = *(v34 + 16);
  v170 = v36;
  v55 = v172;
  v172 = v33;
  v160 = (v34 + 16);
  v159 = v54;
  (v54)(v36, v55, v33);
  v56 = objc_opt_self();
  v157 = v53;

  v155 = v52;
  result = [v56 defaultWorkspace];
  if (!result)
  {
    goto LABEL_23;
  }

  v58 = result;
  v59 = String._bridgeToObjectiveC()();
  v154 = [v58 applicationIsInstalled:v59];

  v60 = type metadata accessor for FallbackDashboardOverlayView(0);
  v61 = v171;
  sub_1000035B4(a5 + v60[5], v171, &qword_10012E4B0, qword_1000EA960);
  static StoreTab.Identifier.overlayNowPlayingPage.getter();
  v62 = v60[8];
  v153 = *(a5 + v60[7]);
  sub_1000035B4(a5 + v62, v178, &unk_100131120, &unk_1000EAAF0);
  v63 = (a5 + v60[6]);
  v64 = *v63;
  v65 = v63[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  v67 = &v46[v44[11]];
  *(v67 + 4) = 0;
  *v67 = 0u;
  *(v67 + 1) = 0u;
  v68 = &v46[v44[12]];
  swift_unknownObjectWeakInit();
  v158(v46, v167, v169);
  *&v46[v44[5]] = v155;
  v69 = &v46[v44[6]];
  v70 = v157;
  *v69 = v156;
  *(v69 + 1) = v70;
  sub_1000035B4(v168, &v46[v44[7]], &qword_10012E478, &unk_1000EA8E0);
  (v159)(&v46[v44[8]], v170, v172);
  v46[v44[9]] = v154;
  sub_1000035B4(v61, &v46[v44[10]], &qword_10012E4B0, qword_1000EA960);
  sub_10000519C(v64, v65);
  v71 = v67;
  v72 = v153;
  sub_10004D924(v178, v71);
  *v68 = v64;
  v68[1] = v65;
  v160 = Strong;
  swift_unknownObjectWeakAssign();
  v73 = v165;
  if ((Array.isNotEmpty.getter() & 1) == 0)
  {
    static StoreTab.Identifier.overlaySystemSettingsPage.getter();
    v87 = type metadata accessor for URL();
    (*(*(v87 - 8) + 56))(v162, 1, 1, v87);
    sub_1000D9414(_swiftEmptyArrayStorage);
    v88 = v150;
    StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
    sub_100002B38(&qword_10012E480, &qword_1000EA8F0);
    v89 = v163;
    v90 = (*(v163 + 80) + 32) & ~*(v163 + 80);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_1000EA7D0;
    v92 = v44;
    v93 = *(v89 + 16);
    v93(v91 + v90, v88, v73);
    v94 = &v46[v44[15]];
    v175 = v91;
    sub_100002B38(&qword_10012E658, &qword_1000EAB00);
    State.init(wrappedValue:)();
    v95 = v177;
    *v94 = v176;
    *(v94 + 1) = v95;
    v96 = v149;
    v93(v149, v88, v73);
    v93(v143, v96, v73);
    v97 = v170;
    v98 = v172;
    State.init(wrappedValue:)();
    v99 = *(v89 + 8);
    v99(v96, v73);
    v99(v88, v73);
    v100 = v173;
    v101 = v166;
LABEL_20:
    v132 = v168;
    v131 = v169;
    v133 = v167;
    BootstrapResult.objectGraph.getter();
    type metadata accessor for DismissDashboardNotifier();
    BaseObjectGraph.inject<A>(_:)();

    sub_100005688(v178, &unk_100131120, &unk_1000EAAF0);
    (*(v101 + 8))(v174, v100);
    sub_100005688(v171, &qword_10012E4B0, qword_1000EA960);
    (*(v151 + 8))(v97, v98);
    sub_100005688(v132, &qword_10012E478, &unk_1000EA8E0);
    (*(v148 + 8))(v133, v131);
    *&v46[v92[14]] = v176;
    v134 = v147;
    sub_10004D994(v46, v147, type metadata accessor for DashboardOverlayView.OverlayContentView);
    KeyPath = swift_getKeyPath();
    v136 = v134;
    v137 = v152;
    sub_10004D994(v136, v152, type metadata accessor for DashboardOverlayView.OverlayContentView);
    result = sub_100002B38(&qword_10012E628, &qword_1000EAAC8);
    v138 = v137 + result[9];
    *v138 = KeyPath;
    *(v138 + 8) = 1;
    return result;
  }

  v74 = v44[15];
  v159 = v46;
  v75 = &v46[v74];
  v175 = v72;

  sub_100002B38(&qword_10012E658, &qword_1000EAB00);
  State.init(wrappedValue:)();
  v76 = v177;
  *v75 = v176;
  *(v75 + 1) = v76;
  v77 = v142;
  sub_1000035B4(v61, v142, &qword_10012E4B0, qword_1000EA960);
  v78 = type metadata accessor for GameDashboardDestination();
  v79 = *(v78 - 8);
  v80 = (*(v79 + 48))(v77, 1, v78);
  v81 = v173;
  v82 = v166;
  v83 = v164;
  v84 = v144;
  if (v80 != 1)
  {
    v85 = v173;
    v102 = v140;
    sub_1000035B4(v77, v140, &qword_10012E4B0, qword_1000EA960);
    v103 = (*(v79 + 88))(v102, v78);
    if (v103 == enum case for GameDashboardDestination.friendInvites(_:))
    {
      v86 = v83;
      static StoreTab.Identifier.overlaySocialPage.getter();
      goto LABEL_10;
    }

    if (v103 == enum case for GameDashboardDestination.systemSettings(_:))
    {
      v86 = v83;
      static StoreTab.Identifier.overlaySystemSettingsPage.getter();
      goto LABEL_10;
    }

    (*(v79 + 8))(v102, v78);
    v81 = v85;
  }

  v85 = v81;
  (*(v82 + 16))(v83, v174);
  v86 = v83;
LABEL_10:
  sub_100005688(v77, &qword_10012E4B0, qword_1000EA960);
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v104 = type metadata accessor for Logger();
  sub_100011F80(v104, qword_100135C88);
  v105 = v82;
  v106 = *(v82 + 16);
  v106(v84, v86, v85);
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.info.getter();
  v109 = os_log_type_enabled(v107, v108);
  v139 = v44;
  if (v109)
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v176 = v111;
    *v110 = 136315138;
    v112 = StoreTab.Identifier.rawValue.getter();
    v113 = v84;
    v115 = v114;
    v158 = *(v166 + 8);
    (v158)(v113, v173);
    v116 = sub_1000BA5C8(v112, v115, &v176);
    v117 = v165;

    *(v110 + 4) = v116;
    _os_log_impl(&_mh_execute_header, v107, v108, "OverlayContentView: initial tab set to %s", v110, 0xCu);
    sub_10002E6CC(v111);
    v85 = v173;
  }

  else
  {

    v158 = *(v105 + 8);
    (v158)(v84, v85);
    v117 = v165;
  }

  v106(v161, v164, v85);
  v118 = type metadata accessor for URL();
  (*(*(v118 - 8) + 56))(v162, 1, 1, v118);
  sub_1000D9414(_swiftEmptyArrayStorage);
  v119 = StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  __chkstk_darwin(v119);
  v120 = v145;
  sub_1000979E8(sub_10004DA04, v72, v145);
  v121 = v163;
  v122 = (*(v163 + 48))(v120, 1, v117);
  v46 = v159;
  if (v122 != 1)
  {
    v126 = v141;
    (*(v121 + 32))(v141, v120, v117);
    v127 = *(v121 + 16);
    v128 = v150;
    v127(v150, v126, v117);
    v129 = v139;
    v127(v149, v128, v117);
    State.init(wrappedValue:)();
    v125 = *(v121 + 8);
    v125(v128, v117);
    v130 = v126;
    v92 = v129;
    v125(v130, v117);
    goto LABEL_19;
  }

  result = sub_100005688(v120, &qword_10012E650, &qword_1000EDA30);
  if (*(v72 + 16))
  {
    v123 = *(v121 + 16);
    v124 = v150;
    v123(v150, v72 + ((*(v121 + 80) + 32) & ~*(v121 + 80)), v117);
    v92 = v139;
    v123(v149, v124, v117);
    State.init(wrappedValue:)();
    v125 = *(v121 + 8);
    v125(v124, v117);
LABEL_19:
    v101 = v166;
    v100 = v173;
    (v158)(v164, v173);
    v125(v146, v117);
    v98 = v172;
    v97 = v170;
    goto LABEL_20;
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10004C1A4@<X0>(void *a1@<X8>)
{
  v44 = a1;
  v39 = sub_100002B38(&qword_10012E600, &qword_1000EAA70);
  v1 = *(v39 - 8);
  __chkstk_darwin(v39);
  v3 = &v38 - v2;
  v4 = sub_100002B38(&qword_10012E608, &qword_1000EAA78);
  __chkstk_darwin(v4);
  v6 = &v38 - v5;
  v40 = sub_100002B38(&qword_10012E610, &qword_1000EAA80);
  __chkstk_darwin(v40);
  v8 = &v38 - v7;
  v42 = sub_100002B38(&qword_10012E618, &qword_1000EAA88);
  __chkstk_darwin(v42);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v38 - v11;
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  type metadata accessor for ZoomCoordinator();
  v41 = static ZoomCoordinator.isPhone.getter();
  sub_100049B5C(v3);
  if ((static ZoomCoordinator.isPhone.getter() & 1) == 0)
  {
    static ZoomCoordinator.overlayContentWidth.getter();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  (*(v1 + 32))(v6, v3, v39);
  v16 = &v6[*(v4 + 36)];
  v17 = v46;
  *v16 = v45;
  *(v16 + 1) = v17;
  *(v16 + 2) = v47;
  static ZoomCoordinator.isPhone.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100014830(v6, v8, &qword_10012E608, &qword_1000EAA78);
  v18 = &v8[*(v40 + 36)];
  v19 = v53;
  *(v18 + 4) = v52;
  *(v18 + 5) = v19;
  *(v18 + 6) = v54;
  v20 = v49;
  *v18 = v48;
  *(v18 + 1) = v20;
  v21 = v51;
  *(v18 + 2) = v50;
  *(v18 + 3) = v21;
  v22 = static Edge.Set.trailing.getter();
  if ((static ZoomCoordinator.isPhone.getter() & 1) == 0)
  {
    static ZoomCoordinator.iPadTrailingPadding.getter();
  }

  v23 = v41;
  v24 = (v41 & 1) == 0;
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_100014830(v8, v12, &qword_10012E610, &qword_1000EAA80);
  v33 = &v12[*(v42 + 36)];
  *v33 = v22;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  sub_100014830(v12, v15, &qword_10012E618, &qword_1000EAA88);
  v34 = v43;
  sub_1000035B4(v15, v43, &qword_10012E618, &qword_1000EAA88);
  v35 = v44;
  *v44 = 0;
  *(v35 + 8) = v24;
  *(v35 + 9) = v23 & 1;
  v36 = sub_100002B38(&qword_10012E620, &unk_1000EAA90);
  sub_1000035B4(v34, v35 + *(v36 + 48), &qword_10012E618, &qword_1000EAA88);
  sub_100005688(v15, &qword_10012E618, &qword_1000EAA88);
  return sub_100005688(v34, &qword_10012E618, &qword_1000EAA88);
}

uint64_t sub_10004C660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FallbackDashboardOverlayView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = static Color.clear.getter();
  sub_10004DA44(a1, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FallbackDashboardOverlayView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_10004D994(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for FallbackDashboardOverlayView);
  v10 = static Alignment.center.getter();
  v12 = v11;
  v13 = static SafeAreaRegions.all.getter();
  result = static Edge.Set.all.getter();
  *a2 = v7;
  *(a2 + 8) = sub_10004E0B0;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_10004C7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = type metadata accessor for FallbackDashboardOverlayView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_100002B38(&qword_10012E5D8, &qword_1000EAA50);
  __chkstk_darwin(v6);
  v8 = (v18 - v7);
  v9 = static Color.clear.getter();
  v10 = v8 + *(sub_100002B38(&qword_10012E5F0, &unk_1000EAA58) + 36);
  static Material.ultraThin.getter();
  v11 = static Edge.Set.all.getter();
  v10[*(sub_100002B38(&qword_10012CD40, &qword_1000E9070) + 36)] = v11;
  *v8 = v9;
  v12 = static SafeAreaRegions.all.getter();
  v13 = static Edge.Set.all.getter();
  v14 = v8 + *(v6 + 36);
  *v14 = v12;
  v14[8] = v13;
  sub_10004DA44(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FallbackDashboardOverlayView);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_10004D994(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for FallbackDashboardOverlayView);
  sub_10004D1A0(&qword_10012E5E0, &qword_10012E5D8, &qword_1000EAA50, sub_10004D224);
  View.onTapGesture(count:perform:)();

  return sub_100005688(v8, &qword_10012E5D8, &qword_1000EAA50);
}

uint64_t sub_10004CA0C(uint64_t a1)
{
  v1 = type metadata accessor for Dependency();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v11 - v6;
  static GameObjectGraphBuilder.frameworkObjects(metricsPipelineTransformer:)();
  sub_100002B38(&qword_10012E698, &qword_1000EAB58);

  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for DismissDashboardNotifier();
  swift_allocObject();
  v11[1] = DismissDashboardNotifier.init()();
  Dependency.init<A>(satisfying:with:)();

  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v8 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  return v8;
}

uint64_t sub_10004CBEC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NativeIntentDispatcher();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  NativeIntentDispatcher.init()();
  v9 = v2;
  v10 = &protocol witness table for NativeIntentDispatcher;
  sub_100012854(&v8);
  static GameObjectGraphBuilder.nativeIntentDispatcher()();
  a1[3] = v2;
  a1[4] = &protocol witness table for NativeIntentDispatcher;
  sub_100012854(a1);
  (*(v3 + 16))();
  sub_1000035B4(&v8, v7, &qword_10012E678, &qword_1000EAB48);
  NativeIntentDispatcher.next.setter();
  (*(v3 + 8))(v5, v2);
  return sub_100005688(&v8, &qword_10012E678, &qword_1000EAB48);
}

uint64_t sub_10004CD64@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Bag();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10004CE30(uint64_t a1)
{
  v1 = type metadata accessor for LintedMetricsEvent();
  __chkstk_darwin(v1 - 8);
  sub_100002B38(&qword_10012E780, &qword_1000EAC28);

  LintedMetricsEvent.init(fields:issues:)();
  return Promise.__allocating_init(value:)();
}

uint64_t sub_10004CEDC@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = sub_100002B38(&qword_10012E590, &qword_1000EAA20);
  sub_10004C1A4((a2 + *(v3 + 44)));
  v4 = static Alignment.center.getter();
  v6 = v5;
  v7 = a2 + *(sub_100002B38(&qword_10012E598, &qword_1000EAA28) + 36);
  Solarium.init()();
  sub_100002B38(&qword_10012E5A0, &qword_1000EAA30);
  sub_100002B38(&qword_10012E5A8, &qword_1000EAA38);
  sub_10004D1A0(&qword_10012E5B0, &qword_10012E5A0, &qword_1000EAA30, sub_10004D0E8);
  sub_100005144(&qword_10012E5D8, &qword_1000EAA50);
  sub_10004D1A0(&qword_10012E5E0, &qword_10012E5D8, &qword_1000EAA50, sub_10004D224);
  swift_getOpaqueTypeConformance2();
  StaticIf<>.init(_:then:else:)();
  result = sub_100002B38(&qword_10012E5F8, &qword_1000EAA68);
  v9 = (v7 + *(result + 36));
  *v9 = v4;
  v9[1] = v6;
  return result;
}

unint64_t sub_10004D0E8()
{
  result = qword_10012E5B8;
  if (!qword_10012E5B8)
  {
    sub_100005144(&qword_10012E5C0, &qword_1000EAA40);
    sub_1000057D8(&qword_10012E5C8, &qword_10012E5D0, &qword_1000EAA48, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E5B8);
  }

  return result;
}

uint64_t sub_10004D1A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005144(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004D224()
{
  result = qword_10012E5E8;
  if (!qword_10012E5E8)
  {
    sub_100005144(&qword_10012E5F0, &unk_1000EAA58);
    sub_1000057D8(&qword_10012CE58, &qword_10012CD40, &qword_1000E9070, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E5E8);
  }

  return result;
}

uint64_t sub_10004D2E4()
{
  v1 = type metadata accessor for FallbackDashboardOverlayView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  v4 = type metadata accessor for GameDashboardDestination();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  if (*(v2 + v1[6]))
  {
  }

  v6 = (v2 + v1[8]);
  if (v6[3])
  {
    sub_10002E6CC(v6);
  }

  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10004D468()
{
  v1 = type metadata accessor for FallbackDashboardOverlayView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 32) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_10004D4E4()
{
  v1 = type metadata accessor for BootstrapResult();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for FallbackDashboardOverlayView(0);
  v6 = (v4 + *(*(v5 - 1) + 80) + 8) & ~*(*(v5 - 1) + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = v0 + v6;

  v8 = v5[5];
  v9 = type metadata accessor for GameDashboardDestination();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  if (*(v7 + v5[6]))
  {
  }

  v11 = (v7 + v5[8]);
  if (v11[3])
  {
    sub_10002E6CC(v11);
  }

  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

int *sub_10004D6F8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for BootstrapResult() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for FallbackDashboardOverlayView(0) - 8);
  v11 = *(v3 + v9);
  v12 = (v3 + ((v9 + *(v10 + 80) + 8) & ~*(v10 + 80)));

  return sub_10004AFC0(a1, a2, v3 + v8, v11, v12, a3);
}

unint64_t sub_10004D7F4()
{
  result = qword_10012E630;
  if (!qword_10012E630)
  {
    sub_100005144(&qword_10012E628, &qword_1000EAAC8);
    sub_10004D8DC(&qword_10012E638, type metadata accessor for DashboardOverlayView.OverlayContentView, &unk_1000EDB40);
    sub_1000057D8(&qword_10012E640, &qword_10012E648, &unk_1000EAAD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E630);
  }

  return result;
}

uint64_t sub_10004D8DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004D924(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002B38(&unk_100131120, &unk_1000EAAF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004D994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004DA44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_10004DAAC(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

unint64_t sub_10004DAFC()
{
  result = qword_10012E680;
  if (!qword_10012E680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10012E680);
  }

  return result;
}

unint64_t sub_10004DB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10012E688;
  if (!qword_10012E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E688);
  }

  return result;
}

uint64_t sub_10004DB9C(uint64_t a1)
{
  v2 = type metadata accessor for FallbackDashboardOverlayView.OfflineBagContract(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004DC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Bag();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_100002B38(&qword_10012E660, &unk_1000ED030);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10004DD6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Bag();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_100002B38(&qword_10012E660, &unk_1000ED030);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10004DE98(uint64_t a1)
{
  type metadata accessor for Bag();
  if (v1 <= 0x3F)
  {
    sub_10004DF60(319, &unk_10012E720, &type metadata accessor for BagOfflinePolicy, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10004DF60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10004DFC8()
{
  result = qword_10012E760;
  if (!qword_10012E760)
  {
    sub_100005144(&qword_10012E598, &qword_1000EAA28);
    sub_1000057D8(&qword_10012E768, &qword_10012E770, &qword_1000EABA8, &protocol conformance descriptor for HStack<A>);
    sub_1000057D8(&qword_10012E778, &qword_10012E5F8, &qword_1000EAA68, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012E760);
  }

  return result;
}

void *sub_10004E0BC(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = v4;
  return result;
}

void sub_10004E104(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for _NavigationStackStyleConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OverlayFlowAuthorityProvider(0);

  v28 = a2;
  BaseObjectGraph.inject<A>(_:)();
  v10 = v31;
  (*(v7 + 16))(v9, a1, v6);
  swift_getKeyPath();
  *&v31 = v10;
  sub_10006778C(&qword_10012EA00, type metadata accessor for OverlayFlowAuthorityProvider, &protocol conformance descriptor for OverlayFlowAuthorityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100067644(v10 + 16, &v31);
  if (swift_dynamicCast())
  {
    v12 = v29;
    v11 = v30;
  }

  else
  {
    v12 = 0;
    v11 = 0xE000000000000000;
  }

  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  v14 = type metadata accessor for OverlayStack(0);
  *(a3 + v14[12]) = v13;
  sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  swift_storeEnumTagMultiPayload();
  (*(v7 + 32))(a3, v9, v6);
  *(a3 + v14[5]) = v28;
  v15 = a3 + v14[6];
  v29 = v12;
  v30 = v11;
  State.init(wrappedValue:)();
  v16 = v32;
  *v15 = v31;
  *(v15 + 16) = v16;
  v17 = a3 + v14[7];
  v29 = 2;
  LOBYTE(v30) = 1;
  State.init(wrappedValue:)();
  v18 = BYTE8(v31);
  v19 = v32;
  *v17 = v31;
  *(v17 + 8) = v18;
  *(v17 + 16) = v19;
  v20 = (a3 + v14[8]);
  v29 = 0;
  State.init(wrappedValue:)();
  v21 = *(&v31 + 1);
  *v20 = v31;
  v20[1] = v21;
  v22 = a3 + v14[9];
  LOBYTE(v29) = 1;
  State.init(wrappedValue:)();
  v23 = *(&v31 + 1);
  *v22 = v31;
  *(v22 + 8) = v23;
  v24 = (a3 + v14[10]);
  type metadata accessor for AppFocusState();
  swift_allocObject();
  v29 = AppFocusState.init()();

  State.init(wrappedValue:)();

  v25 = *(&v31 + 1);
  *v24 = v31;
  v24[1] = v25;
  v26 = a3 + v14[11];
  *v26 = KeyPath;
  *(v26 + 8) = 0;
}

uint64_t sub_10004E4A8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for OverlayStack(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v8 = sub_1000682AC(v6, 0);
    (*(v2 + 8))(v4, v1, v8);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_10004E600@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002B38(&qword_10012EA08, &unk_1000ED3B0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for OverlayStack(0);
  sub_1000035B4(v1 + *(v10 + 48), v9, &qword_10012EA08, &unk_1000ED3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for LayoutDirection();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10004E808@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = type metadata accessor for OverlayStack(0);
  v4 = v3 - 8;
  v56 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v5;
  v7 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002B38(&qword_10012EB08, &qword_1000EAFA0);
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  v57 = sub_100002B38(&qword_10012EB10, &qword_1000EAFA8);
  __chkstk_darwin(v57);
  v12 = &v50 - v11;
  v60 = sub_100002B38(&qword_10012EB18, &qword_1000EAFB0);
  __chkstk_darwin(v60);
  v58 = &v50 - v13;
  v14 = *(_NavigationStackStyleConfiguration.items.getter() + 16);

  *v10 = static Alignment.top.getter();
  *(v10 + 1) = v15;
  v16 = sub_100002B38(&qword_10012EB20, &qword_1000EAFB8);
  sub_10004EE7C(v2, v14, &v10[*(v16 + 44)]);
  v10[*(sub_100002B38(&qword_10012EB28, &qword_1000EAFC0) + 36)] = v14 > 1;
  v17 = v2 + *(v4 + 36);
  v18 = *v17;
  v19 = *(v17 + 8);
  v20 = *(v17 + 16);
  v61 = v18;
  LOBYTE(v62) = v19;
  v63 = v20;
  sub_100002B38(&qword_10012EB30, &qword_1000EAFC8);
  State.wrappedValue.getter();
  v21 = v64;
  v22 = v65;
  v23 = &v10[*(v8 + 36)];
  *v23 = v14 > 1;
  v23[1] = v14 == 2;
  *(v23 + 1) = v21;
  v23[16] = v22;
  sub_100002B38(&qword_10012EB38, &qword_1000EAFD0);
  v24 = sub_100067F70();
  sub_100068134(v24, v25, v26);
  sub_100068188();
  v27 = v12;
  View.staticIf<A, B>(_:then:)();
  sub_100005688(v10, &qword_10012EB08, &qword_1000EAFA0);
  sub_100068240(v2, v7, type metadata accessor for OverlayStack);
  v28 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v29 = *(v56 + 80);
  v30 = swift_allocObject();
  sub_10006B690(v7, v30 + v28, type metadata accessor for OverlayStack);
  v31 = *(sub_100002B38(&qword_10012EB98, &qword_1000EAFF0) + 36);
  v55 = v27;
  v32 = &v27[v31];
  *v32 = sub_1000682B8;
  v32[1] = v30;
  v53 = v2;
  v51 = type metadata accessor for OverlayStack;
  sub_100068240(v2, v7, type metadata accessor for OverlayStack);
  v52 = v6;
  v33 = swift_allocObject();
  v54 = type metadata accessor for OverlayStack;
  sub_10006B690(v7, v33 + v28, type metadata accessor for OverlayStack);
  v34 = &v27[*(v57 + 36)];
  *v34 = sub_1000684B8;
  v34[1] = v33;
  v56 = type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.sourceID.getter();

  sub_100068240(v2, v7, type metadata accessor for OverlayStack);
  v50 = v29;
  v35 = swift_allocObject();
  sub_10006B690(v7, v35 + v28, type metadata accessor for OverlayStack);
  sub_100002B38(&qword_10012EBA0, &qword_1000EAFF8);
  sub_100068598();
  sub_10006878C();
  v36 = v58;
  v37 = v55;
  View.onChange<A>(of:initial:_:)();

  sub_100005688(&v61, &qword_10012EBA0, &qword_1000EAFF8);
  sub_100005688(v37, &qword_10012EB10, &qword_1000EAFA8);
  v38 = v53;
  v39 = v7;
  v40 = v7;
  v41 = v51;
  sub_100068240(v53, v40, v51);
  v42 = swift_allocObject();
  v43 = v54;
  sub_10006B690(v39, v42 + v28, v54);
  v44 = (v36 + *(v60 + 36));
  *v44 = sub_100068808;
  v44[1] = v42;
  v44[2] = 0;
  v44[3] = 0;
  static ZoomCoordinator.shared.getter();
  v45 = dispatch thunk of ZoomCoordinator.activeTabIdentifier.getter();
  v47 = v46;

  v61 = v45;
  v62 = v47;
  sub_100068240(v38, v39, v41);
  v48 = swift_allocObject();
  sub_10006B690(v39, v48 + v28, v43);
  sub_100068860();
  View.onChange<A>(of:initial:_:)();

  return sub_100005688(v36, &qword_10012EB18, &qword_1000EAFB0);
}

uint64_t sub_10004EE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v62 = a3;
  v59 = sub_100002B38(&qword_10012EC20, &qword_1000EB050);
  __chkstk_darwin(v59);
  v63 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v69 = &v56 - v7;
  v8 = type metadata accessor for OverlayStack(0);
  v9 = (v8 - 8);
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v12 = sub_100002B38(&qword_10012EC28, &qword_1000EB058);
  v60 = *(v12 - 8);
  v61 = v12;
  __chkstk_darwin(v12);
  v58 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  *&v67 = a1;
  v17 = _NavigationStackStyleConfiguration.items.getter();
  sub_100068954(v17);
  v19 = v18;

  *&v77 = v19;
  swift_getKeyPath();
  sub_100068240(a1, &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OverlayStack);
  v20 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  sub_10006B690(&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for OverlayStack);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_100068E70;
  *(v22 + 24) = v21;
  sub_100002B38(&qword_10012EC30, &qword_1000EB080);
  sub_100002B38(&qword_10012EC38, &qword_1000EB088);
  sub_1000057D8(&qword_10012EC40, &qword_10012EC30, &qword_1000EB080, &protocol conformance descriptor for [A]);
  sub_100068F64();
  v57 = v16;
  ForEach<>.init(_:id:content:)();
  v68 = a2;
  v65 = a2 == 2;
  v66 = a2 > 1;
  v23 = *(v67 + v9[7]);
  v24 = (v67 + v9[11]);
  v25 = v67;
  v26 = *v24;
  v27 = *(v24 + 1);
  LOBYTE(v70) = v26;
  *(&v70 + 1) = v27;

  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.projectedValue.getter();
  v28 = v77;
  v64 = v78;
  v29 = (v25 + v9[9]);
  v30 = *v29;
  v31 = *(v29 + 8);
  v32 = v29[2];
  *&v70 = v30;
  BYTE8(v70) = v31;
  *&v71 = v32;
  sub_100002B38(&qword_10012EB30, &qword_1000EAFC8);
  State.projectedValue.getter();
  v67 = v77;
  v33 = v78;
  LOBYTE(v9) = BYTE8(v78);
  LOBYTE(v70) = 0;
  State.init(wrappedValue:)();
  LOBYTE(v21) = v77;
  v34 = *(&v77 + 1);
  LOBYTE(v70) = 0;
  State.init(wrappedValue:)();
  v35 = v77;
  v36 = *(&v77 + 1);
  *&v70 = 0;
  State.init(wrappedValue:)();
  v76 = v9;
  LOBYTE(v70) = v66;
  BYTE1(v70) = v65;
  *(&v70 + 1) = v23;
  v71 = v28;
  LOBYTE(v72[0]) = v64;
  *(v72 + 8) = v67;
  *(&v72[1] + 1) = v33;
  LOBYTE(v73) = v9;
  BYTE8(v73) = v21;
  *&v74 = v34;
  BYTE8(v74) = v35;
  *v75 = v36;
  v37 = v69;
  *&v75[8] = v77;
  v38 = sub_100002B38(&qword_10012ED58, &qword_1000EB118);
  v41 = sub_1000699FC(v38, v39, v40);
  sub_100068134(v41, v42, v43);
  sub_100069A50();
  View.staticIf<A, B>(_:then:)();
  v81 = v73;
  v82 = v74;
  v83 = *v75;
  v84 = *&v75[16];
  v77 = v70;
  v78 = v71;
  v79 = v72[0];
  v80 = v72[1];
  result = sub_100069ADC(&v77);
  if ((v68 * 10) >> 64 == (10 * v68) >> 63)
  {
    v45 = v60;
    v46 = v37;
    *&v37[*(v59 + 36)] = (10 * v68);
    v47 = *(v45 + 16);
    v48 = v57;
    v49 = v58;
    v50 = v61;
    v47(v58, v57, v61);
    v51 = v37;
    v52 = v63;
    sub_1000035B4(v51, v63, &qword_10012EC20, &qword_1000EB050);
    v53 = v62;
    v47(v62, v49, v50);
    v54 = sub_100002B38(&qword_10012ED70, &qword_1000EB120);
    sub_1000035B4(v52, &v53[*(v54 + 48)], &qword_10012EC20, &qword_1000EB050);
    sub_100005688(v46, &qword_10012EC20, &qword_1000EB050);
    v55 = *(v45 + 8);
    v55(v48, v50);
    sub_100005688(v52, &qword_10012EC20, &qword_1000EB050);
    return (v55)(v49, v50);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10004F520(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v191 = a2;
  v166 = a5;
  v183 = sub_100002B38(&qword_10012ECE0, &qword_1000EB0D8);
  v182 = *(v183 - 8);
  __chkstk_darwin(v183);
  v181 = &v141 - v8;
  v9 = type metadata accessor for OverlayStack(0);
  v184 = *(v9 - 8);
  v10 = *(v184 + 64);
  __chkstk_darwin(v9);
  v11 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for _NavigationStackStyleConfiguration.Item();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for OverlayNavigationStackItem(0);
  __chkstk_darwin(v179);
  v17 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_100002B38(&qword_10012ED80, &qword_1000EB130);
  v171 = *(v175 - 8);
  __chkstk_darwin(v175);
  v180 = &v141 - v18;
  v170 = sub_100002B38(&qword_10012ECD8, &qword_1000EB0D0);
  __chkstk_darwin(v170);
  v173 = &v141 - v19;
  v174 = sub_100002B38(&qword_10012ECC0, &qword_1000EB0C8);
  __chkstk_darwin(v174);
  v172 = &v141 - v20;
  v153 = sub_100002B38(&qword_10012ED88, &qword_1000EB138);
  v152 = *(v153 - 8);
  __chkstk_darwin(v153);
  v176 = &v141 - v21;
  v149 = sub_100002B38(&qword_10012ECB8, &qword_1000EB0C0);
  __chkstk_darwin(v149);
  v151 = &v141 - v22;
  v150 = sub_100002B38(&qword_10012ECA8, &qword_1000EB0B8);
  __chkstk_darwin(v150);
  v177 = &v141 - v23;
  v154 = sub_100002B38(&qword_10012EC98, &qword_1000EB0B0);
  __chkstk_darwin(v154);
  v178 = &v141 - v24;
  v155 = sub_100002B38(&qword_10012EC88, &qword_1000EB0A8);
  __chkstk_darwin(v155);
  v158 = &v141 - v25;
  v156 = sub_100002B38(&qword_10012EC78, &qword_1000EB0A0);
  __chkstk_darwin(v156);
  v157 = &v141 - v26;
  v160 = sub_100002B38(&qword_10012EC60, &qword_1000EB098);
  __chkstk_darwin(v160);
  v161 = &v141 - v27;
  v163 = sub_100002B38(&qword_10012ED90, &qword_1000EB140);
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v159 = &v141 - v28;
  v164 = sub_100002B38(&qword_10012EC50, &qword_1000EB090);
  __chkstk_darwin(v164);
  v165 = &v141 - v29;
  v30 = sub_100002B38(&qword_10012ED98, &qword_1000EB148);
  v33 = __chkstk_darwin(v30);
  v35 = &v141 - v34;
  v192 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v141 = v35;
  v142 = v32;
  v143 = v31;
  v190 = v13;
  v36 = *(v13 + 16);
  v169 = v15;
  v37 = v12;
  v36(v15, v191, v12, v33);
  v38 = a4 + *(v9 + 28);
  v39 = *v38;
  v40 = *(v38 + 8);
  v41 = *(v38 + 16);
  v188 = v39;
  v195 = v39;
  v148 = v40;
  LOBYTE(v196) = v40;
  v189 = v41;
  v197 = v41;
  v187 = sub_100002B38(&qword_10012EB30, &qword_1000EAFC8);
  State.wrappedValue.getter();
  if (v194)
  {
    v42 = 0.0;
  }

  else
  {
    v42 = v193;
  }

  v146 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = v10;
  v186 = a3;
  if (a1)
  {
    sub_100068240(a4, &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OverlayStack);
    v43 = (*(v184 + 80) + 16) & ~*(v184 + 80);
    v44 = swift_allocObject();
    sub_10006B690(v11, v44 + v43, type metadata accessor for OverlayStack);
    v168 = sub_100069B44;
  }

  else
  {
    v168 = 0;
    v44 = 0;
  }

  v167 = a1 == 1;
  LODWORD(v191) = a1 == 0;
  v147 = a1;
  v45 = v192 == a1;
  v46 = v9;
  v47 = *(a4 + *(v9 + 20));
  v144 = v46;
  v48 = a4 + *(v46 + 36);
  LOBYTE(v46) = *v48;
  v49 = *(v48 + 8);
  LOBYTE(v193) = v46;
  v194 = v49;

  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.projectedValue.getter();
  v50 = v195;
  v51 = v196;
  v185 = a4;
  v52 = v197;
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.initialFrame.getter();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;

  v198.origin.x = v54;
  v198.origin.y = v56;
  v198.size.width = v58;
  v198.size.height = v60;
  Width = CGRectGetWidth(v198);
  static ZoomCoordinator.overlayContentWidth.getter();
  v63 = fmax(Width / v62, 0.25);
  (*(v190 + 32))(v17, v169, v37);
  v64 = v179;
  v65 = *(v179 + 20);
  LODWORD(v190) = v45;
  v17[v65] = v45;
  v17[v64[6]] = v167;
  *&v17[v64[7]] = v42;
  v66 = &v17[v64[8]];
  *v66 = v168;
  v66[1] = v44;
  *&v17[v64[9]] = v47;
  v67 = &v17[v64[10]];
  *v67 = v50;
  *(v67 + 1) = v51;
  v67[16] = v52;
  v68 = &v17[v64[11]];
  v193 = 0.0;
  State.init(wrappedValue:)();
  v69 = v196;
  *v68 = v195;
  v68[1] = v69;
  v70 = &v17[v64[12]];
  v193 = v63;
  State.init(wrappedValue:)();
  v71 = v196;
  *v70 = v195;
  v70[1] = v71;
  v72 = &v17[v64[13]];
  v193 = 0.0;
  v73 = State.init(wrappedValue:)();
  v74 = v196;
  *v72 = v195;
  v72[1] = v74;
  v77 = sub_100069844(v73, v75, v76);
  v78 = v181;
  v79 = static ViewInputPredicate.! prefix(_:)();
  __chkstk_darwin(v79);
  sub_100002B38(&qword_10012ECE8, &qword_1000EB0E0);
  sub_10006778C(&qword_10012ECF0, type metadata accessor for OverlayNavigationStackItem, &unk_1000EB808);
  v195 = &type metadata for GameOverlayOnPhonePredicate;
  v196 = v77;
  swift_getOpaqueTypeConformance2();
  v80 = sub_100005144(&qword_10012ED00, &qword_1000EB0E8);
  v81 = sub_100069898();
  v195 = v80;
  v196 = v81;
  swift_getOpaqueTypeConformance2();
  v82 = v180;
  v83 = v183;
  View.staticIf<A, B>(_:then:)();
  (*(v182 + 8))(v78, v83);
  sub_100069B78(v17, type metadata accessor for OverlayNavigationStackItem);
  if (__OFSUB__(v186, 2))
  {
    goto LABEL_33;
  }

  v84 = v147;
  v85 = v192 == v147;
  if (v186 - 2 <= v147)
  {
    v86 = 1.0;
  }

  else
  {
    v86 = 0.0;
  }

  v87 = v173;
  (*(v171 + 32))(v173, v82, v175);
  *(v87 + *(v170 + 36)) = v86;
  v88 = static Alignment.leading.getter();
  v90 = v89;
  v91 = v172;
  v92 = &v172[*(v174 + 36)];
  v93 = v185;
  sub_100050A68(v85, v84 == 0, v185, v92);
  v94 = (v92 + *(sub_100002B38(&qword_10012ED18, &unk_1000EB0F0) + 36));
  *v94 = v88;
  v94[1] = v90;
  sub_100014830(v87, v91, &qword_10012ECD8, &qword_1000EB0D0);
  sub_1000695B8();
  v95 = v176;
  View.tapToDismiss(enabled:)();
  sub_100005688(v91, &qword_10012ECC0, &qword_1000EB0C8);
  v96 = v93;
  if (!v84)
  {
    v100 = 1000.0;
    v97 = v178;
    v98 = v177;
    v99 = v148;
    goto LABEL_16;
  }

  v97 = v178;
  v98 = v177;
  v99 = v148;
  if ((v84 * 10) >> 64 != (10 * v84) >> 63)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v100 = (10 * v84);
LABEL_16:
  v101 = v151;
  (*(v152 + 32))(v151, v95, v153);
  *(v101 + *(v149 + 36)) = v100;
  v102 = sub_10004E4A8();
  v195 = v188;
  LOBYTE(v196) = v99;
  v197 = v189;
  State.wrappedValue.getter();
  v103 = v193;
  v104 = v194;
  sub_100014830(v101, v98, &qword_10012ECB8, &qword_1000EB0C0);
  v107 = v98 + *(v150 + 36);
  *v107 = v190;
  *(v107 + 1) = v191;
  *(v107 + 2) = v102 & 1;
  *(v107 + 8) = v103;
  *(v107 + 16) = v104;
  v108 = v186;
  if (v84 == 1)
  {
    v109 = &type metadata for ChildZoomTransition;
    v110 = sub_100069EEC;
  }

  else
  {
    v109 = &type metadata for ChildSlideTransition;
    v110 = sub_100069F40;
  }

  v111 = sub_100051324(v110, v109, v105, v106);
  v112 = v154;
  v113 = v192;
  sub_100014830(v98, v97, &qword_10012ECA8, &qword_1000EB0B8);
  *(v97 + *(v112 + 36)) = v111;
  v114 = 0.0;
  if (v108 >= 3)
  {
    if (v113 == v84)
    {
      v195 = v188;
      LOBYTE(v196) = v99;
      v197 = v189;
      State.wrappedValue.getter();
      if (v194)
      {
        v114 = 0.0;
      }

      else
      {
        v114 = v193;
      }
    }

    else
    {
      v114 = sub_10005140C();
    }
  }

  v115 = v97;
  v116 = v158;
  sub_100014830(v115, v158, &qword_10012EC98, &qword_1000EB0B0);
  *(v116 + *(v155 + 36)) = v114;
  v117 = v188;
  v118 = v189;
  v195 = v188;
  LOBYTE(v196) = v99;
  v197 = v189;
  State.wrappedValue.getter();
  v195 = v117;
  if (v113 == v84)
  {
    v119 = (v108 == 2) & ~v194;
  }

  else
  {
    v119 = 0;
  }

  LOBYTE(v196) = v99;
  v197 = v118;
  State.wrappedValue.getter();
  if (v194)
  {
    v120 = 0.0;
  }

  else
  {
    v120 = v193;
  }

  v121 = v157;
  sub_100014830(v116, v157, &qword_10012EC88, &qword_1000EB0A8);
  v122 = v121 + *(v156 + 36);
  *v122 = v119;
  *(v122 + 8) = v120;
  KeyPath = swift_getKeyPath();
  v124 = v161;
  sub_100014830(v121, v161, &qword_10012EC78, &qword_1000EB0A0);
  v125 = v124 + *(v160 + 36);
  *v125 = KeyPath;
  *(v125 + 8) = v191;
  v126 = (v96 + *(v144 + 40));
  v128 = *v126;
  v127 = v126[1];
  v195 = v128;
  v196 = v127;
  sub_100002B38(&qword_10012EDA0, &qword_1000EB180);
  State.wrappedValue.getter();
  type metadata accessor for AppFocusState();
  sub_100069184();
  sub_10006778C(&qword_10012ED50, &type metadata accessor for AppFocusState, &protocol conformance descriptor for AppFocusState);
  v129 = v159;
  View.environment<A>(_:)();

  sub_100005688(v124, &qword_10012EC60, &qword_1000EB098);
  v130 = swift_getKeyPath();
  v131 = v165;
  (*(v162 + 32))(v165, v129, v163);
  v132 = v131 + *(v164 + 36);
  *v132 = v130;
  *(v132 + 8) = v190;
  v133 = *(_NavigationStackStyleConfiguration.items.getter() + 16);

  v195 = v133;
  v134 = v146;
  sub_100068240(v96, v146, type metadata accessor for OverlayStack);
  v135 = *(v184 + 80);
  v136 = swift_allocObject();
  sub_10006B690(v134, v136 + ((v135 + 16) & ~v135), type metadata accessor for OverlayStack);
  sub_100069040();
  v137 = v141;
  View.onChange<A>(of:initial:_:)();

  sub_100005688(v131, &qword_10012EC50, &qword_1000EB090);
  sub_100068240(v185, v134, type metadata accessor for OverlayStack);
  v138 = swift_allocObject();
  *(v138 + 16) = v190;
  sub_10006B690(v134, v138 + ((v135 + 17) & ~v135), type metadata accessor for OverlayStack);
  v139 = v166;
  (*(v142 + 32))(v166, v137, v143);
  v140 = (v139 + *(sub_100002B38(&qword_10012EC38, &qword_1000EB088) + 36));
  *v140 = sub_100069E88;
  v140[1] = v138;
  v140[2] = 0;
  v140[3] = 0;
}

uint64_t sub_100050920(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002B38(&qword_10012ED00, &qword_1000EB0E8);
  __chkstk_darwin(v3);
  v5 = &v17 - v4;
  v6 = static Edge.Set.top.getter();
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.iPadTopPadding.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_100068240(a1, v5, type metadata accessor for OverlayNavigationStackItem);
  v15 = &v5[*(v3 + 36)];
  *v15 = v6;
  *(v15 + 1) = v8;
  *(v15 + 2) = v10;
  *(v15 + 3) = v12;
  *(v15 + 4) = v14;
  v15[40] = 0;
  sub_100069898();
  View.scrollClipDisabled(_:)();
  return sub_100005688(v5, &qword_10012ED00, &qword_1000EB0E8);
}

uint64_t sub_100050A68@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v27 = a4;
  v25 = a1;
  v5 = sub_100002B38(&qword_10012EDB8, &qword_1000EB1B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24[-v7];
  v9 = sub_100002B38(&qword_10012EDC0, &qword_1000EB1C0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v24[-v11];
  v13 = sub_100002B38(&qword_10012EDC8, &qword_1000EB1C8);
  __chkstk_darwin(v13);
  v15 = &v24[-v14];
  v16 = static Color.clear.getter();
  v17 = v12 + *(sub_100002B38(&qword_10012EDD0, &qword_1000EB1D0) + 36);
  sub_100002B38(&qword_10012EDD8, &qword_1000EB1D8);
  static ContentShapeKinds.interaction.getter();
  *v17 = 0;
  *v12 = v16;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = (v12 + *(sub_100002B38(&qword_10012EDE0, &qword_1000EB1E0) + 36));
  v19 = v29;
  *v18 = v28;
  v18[1] = v19;
  v18[2] = v30;
  v20 = static SafeAreaRegions.all.getter();
  v21 = static Edge.Set.all.getter();
  v22 = v12 + *(v10 + 44);
  *v22 = v20;
  v22[8] = v21;
  LOBYTE(v17) = v25 & (a2 ^ 1);
  sub_100014830(v12, v15, &qword_10012EDC0, &qword_1000EB1C0);
  v15[*(v13 + 36)] = v17;
  sub_100050D64(v8);
  static GestureMask.all.getter();
  sub_100069F94();
  sub_1000057D8(&qword_10012EE10, &qword_10012EDB8, &qword_1000EB1B8, &protocol conformance descriptor for _EndedGesture<A>);
  View.gesture<A>(_:including:)();
  (*(v6 + 8))(v8, v5);
  return sub_100005688(v15, &qword_10012EDC8, &qword_1000EB1C8);
}

uint64_t sub_100050D64@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for OverlayStack(0);
  v35 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v38 = v3;
  v39 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LayoutDirection();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for _EventDirections();
  __chkstk_darwin(v11 - 8);
  v31 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v31);
  v12 = type metadata accessor for DragGesture();
  v33 = *(v12 - 8);
  v34 = v12;
  __chkstk_darwin(v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002B38(&qword_10012EE18, &qword_1000EB1E8);
  v36 = *(v15 - 8);
  v37 = v15;
  __chkstk_darwin(v15);
  v32 = &v29 - v16;
  static CoordinateSpaceProtocol<>.local.getter();
  v17 = v1;
  sub_10004E600(v10);
  (*(v5 + 104))(v7, enum case for LayoutDirection.rightToLeft(_:), v4);
  v18 = static LayoutDirection.== infix(_:_:)();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  if (v18)
  {
    static _EventDirections.right.getter();
  }

  else
  {
    static _EventDirections.left.getter();
  }

  DragGesture.init<A>(minimumDistance:coordinateSpace:allowedDirections:)();
  v30 = v17;
  v31 = type metadata accessor for OverlayStack;
  v20 = v17;
  v21 = v39;
  sub_100068240(v20, v39, type metadata accessor for OverlayStack);
  v22 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v23 = swift_allocObject();
  sub_10006B690(v21, v23 + v22, type metadata accessor for OverlayStack);
  sub_10006778C(&qword_10012EE20, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
  sub_10006778C(&qword_10012EE28, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
  v24 = v32;
  v25 = v34;
  Gesture<>.onChanged(_:)();

  (*(v33 + 8))(v14, v25);
  sub_100068240(v30, v21, v31);
  v26 = swift_allocObject();
  sub_10006B690(v21, v26 + v22, type metadata accessor for OverlayStack);
  sub_1000057D8(&qword_10012EE30, &qword_10012EE18, &qword_1000EB1E8, &protocol conformance descriptor for _ChangedGesture<A>);
  v27 = v37;
  Gesture.onEnded(_:)();

  return (*(v36 + 8))(v24, v27);
}

uint64_t sub_100051324(uint64_t (*a1)(void, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1(a1, a2, a3, a4);
  static AnyTransition.modifier<A>(active:identity:)();
  static AnyTransition.modifier<A>(active:identity:)();
  static AnyTransition.asymmetric(insertion:removal:)();

  static Animation.easeOut(duration:)();
  v4 = AnyTransition.animation(_:)();

  return v4;
}

double sub_10005140C()
{
  type metadata accessor for OverlayStack(0);
  sub_100002B38(&qword_10012EB30, &qword_1000EAFC8);
  State.wrappedValue.getter();
  v0 = 0.0;
  if (v8 != 1 || v7 <= 1)
  {
    State.wrappedValue.getter();
    if (v8 != 1 || v7 != 1)
    {
      type metadata accessor for ZoomCoordinator();
      static ZoomCoordinator.overlayContentWidth.getter();
      v3 = v2 * 0.3;
      State.wrappedValue.getter();
      if (v8)
      {
        v4 = 0.0;
      }

      else
      {
        v4 = *&v7;
      }

      static ZoomCoordinator.overlayContentWidth.getter();
      return v3 * (v4 / v5) - v3;
    }
  }

  return v0;
}

double sub_10005154C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 >= *a2)
  {
    if (*a2 >= *a1)
    {
      return result;
    }

    type metadata accessor for OverlayStack(0);
    sub_100002B38(&qword_10012EDA0, &qword_1000EB180);
    State.wrappedValue.getter();
    dispatch thunk of AppFocusState.popFocus()();
  }

  else
  {
    type metadata accessor for OverlayStack(0);
    sub_100002B38(&qword_10012EDA0, &qword_1000EB180);
    State.wrappedValue.getter();
    dispatch thunk of AppFocusState.pushFocus()();
  }

  return result;
}

uint64_t sub_100051618(uint64_t result, uint64_t a2)
{
  if (result)
  {
    type metadata accessor for OverlayStack(0);
    sub_100002B38(&qword_10012EB30, &qword_1000EAFC8);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1000516A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  v4 = *(a1 + 96);
  v12 = *(a1 + 80);
  v3 = v12;
  v13 = v4;
  v14 = *(a1 + 112);
  v5 = v14;
  v6 = *(a1 + 16);
  v11[0] = *a1;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a2 = v11[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v2;
  *(a2 + 80) = v3;
  *(a2 + 96) = v4;
  *(a2 + 112) = v5;
  *(a2 + 120) = xmmword_1000EAC30;
  return sub_100069B0C(v11, v10);
}

void *sub_100051720(unsigned __int8 *a1, uint64_t a2)
{
  type metadata accessor for OverlayStack(0);
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  result = State.wrappedValue.getter();
  if (v3 == 1)
  {
    sub_100002B38(&qword_10012EC18, &qword_1000EB048);
    return State.wrappedValue.setter();
  }

  return result;
}

double sub_1000517F0(unsigned __int8 *a1, uint64_t a2)
{
  type metadata accessor for OverlayStack(0);
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  if (v3 == 1)
  {
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.presentingOverlay.setter();
  }

  return result;
}

uint64_t sub_10005188C(uint64_t a1)
{
  v63 = a1;
  v1 = sub_100002B38(&qword_10012EBF0, &unk_1000EB020);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v54 - v3;
  v5 = sub_100002B38(&qword_10012EBF8, &qword_1000EC620);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v60 = &v54 - v7;
  v8 = sub_100002B38(&qword_10012EC00, &qword_1000EB030);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v11 = type metadata accessor for CompoundAction();
  v59 = *(v11 - 8);
  __chkstk_darwin(v11);
  v58 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  v13 = dispatch thunk of ZoomCoordinator.actions.getter();

  v14 = *(v13 + 16);
  v62 = v4;
  v61 = v6;
  if (v14)
  {
    sub_10002E8A8(v13 + 32, v68);
  }

  else
  {

    v69 = 0;
    memset(v68, 0, sizeof(v68));
  }

  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.actions.setter();

  v15 = v63 + *(type metadata accessor for OverlayStack(0) + 36);
  v16 = *v15;
  v17 = *(v15 + 8);
  LOBYTE(v67[0]) = v16;
  v67[1] = v17;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  if (v65 != 1)
  {
    goto LABEL_39;
  }

  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.sourceID.getter();

  if (v67[3])
  {
    sub_100005688(v67, &qword_10012EBA0, &qword_1000EAFF8);
    sub_1000035B4(v68, &v65, &qword_10012EC08, &qword_1000EB038);
    if (v66)
    {
      v56 = v2;
      sub_10003FB38(&v65, v67);
      sub_10002E8A8(v67, &v65);
      sub_100002B38(&qword_10012EC10, &qword_1000EB040);
      v18 = type metadata accessor for FlowAction();
      v19 = swift_dynamicCast();
      v57 = v18;
      if (v19)
      {
        v20 = FlowAction.presentation.getter();
        v22 = v21;
        if (v20 == static FlowActionPresentation.sheetPresent.getter() && v22 == v23)
        {
          goto LABEL_10;
        }

        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v27)
        {
          goto LABEL_14;
        }

        v28 = FlowAction.presentation.getter();
        v30 = v29;
        if (v28 == static FlowActionPresentation.sheetPopover.getter() && v30 == v31)
        {
LABEL_10:

LABEL_14:
          static FlowActionPresentation.stackPush.getter();
          FlowAction.presentation.setter();

LABEL_38:
          v50 = v56;
          v51 = v60;
          BaseObjectGraph.inject<A>(_:)();
          v52 = v62;
          (*(v50 + 104))(v62, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v1);
          ActionDispatcher.perform(_:withMetrics:asPartOf:)();

          (*(v50 + 8))(v52, v1);
          (*(v61 + 8))(v51, v5);
          sub_10002E6CC(v67);
LABEL_39:
          v24 = &qword_10012EC08;
          v25 = &qword_1000EB038;
          v26 = v68;
          return sub_100005688(v26, v24, v25);
        }

        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v32)
        {
          goto LABEL_14;
        }
      }

      sub_10002E8A8(v67, &v65);
      v33 = swift_dynamicCast();
      v34 = *(v59 + 56);
      if ((v33 & 1) == 0)
      {
        v34(v10, 1, 1, v11);
        sub_100005688(v10, &qword_10012EC00, &qword_1000EB030);
        goto LABEL_38;
      }

      v55 = v1;
      v35 = v59;
      v34(v10, 0, 1, v11);
      (*(v35 + 32))(v58, v10, v11);
      v36 = CompoundAction.subactions.getter();
      v37 = *(v36 + 16);
      if (!v37)
      {
LABEL_37:

        (*(v59 + 8))(v58, v11);
        v1 = v55;
        goto LABEL_38;
      }

      v54 = v36;
      v38 = v36 + 32;
      while (1)
      {
        sub_10002E8A8(v38, &v65);
        sub_10002E8A8(&v65, v64);
        if (swift_dynamicCast())
        {
          break;
        }

        sub_10002E6CC(&v65);
LABEL_23:
        v38 += 40;
        if (!--v37)
        {
          goto LABEL_37;
        }
      }

      v39 = FlowAction.presentation.getter();
      v41 = v40;
      if (v39 != static FlowActionPresentation.sheetPresent.getter() || v41 != v42)
      {
        v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v44)
        {
LABEL_33:
          static FlowActionPresentation.stackPush.getter();
          FlowAction.presentation.setter();

          sub_10002E6CC(&v65);
          goto LABEL_23;
        }

        v45 = FlowAction.presentation.getter();
        v47 = v46;
        if (v45 != static FlowActionPresentation.sheetPopover.getter() || v47 != v48)
        {
          v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v49 & 1) == 0)
          {
            sub_10002E6CC(&v65);

            goto LABEL_23;
          }

          goto LABEL_33;
        }
      }

      goto LABEL_33;
    }

    sub_100005688(v68, &qword_10012EC08, &qword_1000EB038);
    v26 = &v65;
    v24 = &qword_10012EC08;
    v25 = &qword_1000EB038;
  }

  else
  {
    sub_100005688(v68, &qword_10012EC08, &qword_1000EB038);
    v24 = &qword_10012EBA0;
    v25 = &qword_1000EAFF8;
    v26 = v67;
  }

  return sub_100005688(v26, v24, v25);
}

uint64_t sub_1000520C4(uint64_t a1)
{
  type metadata accessor for OverlayStack(0);
  sub_100002B38(&qword_10012EBE8, &unk_1000EB010);
  State.wrappedValue.getter();
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  v1 = dispatch thunk of ZoomCoordinator.activeTabIdentifier.getter();
  v3 = v2;

  if (v5 != v1 || v6 != v3)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  return State.wrappedValue.setter();
}

double sub_100052200()
{
  v0 = type metadata accessor for TransientToolbarItem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(_NavigationStackStyleConfiguration.items.getter() + 16);

  _NavigationStackStyleConfiguration.pop()();
  if (v4 == 2)
  {
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.shared.getter();
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    dispatch thunk of ZoomCoordinator.sourceID.setter();

    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.presentingOverlay.setter();

    static ZoomCoordinator.shared.getter();
    *v3 = 0;
    v3[1] = 0xE000000000000000;
    v6 = enum case for TransientToolbarItem.title(_:);
    v7 = *(v1 + 104);
    v7(v3, enum case for TransientToolbarItem.title(_:), v0);
    dispatch thunk of ZoomCoordinator.principalNavBarItem.setter();

    static ZoomCoordinator.shared.getter();
    *v3 = 0;
    v3[1] = 0xE000000000000000;
    v7(v3, v6, v0);
    dispatch thunk of ZoomCoordinator.topTrailingTransientNavBarItem.setter();

    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.topTrailingNavBarItems.setter();
  }

  return result;
}

uint64_t sub_1000523C4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LayoutDirection();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v19 - v8;
  DragGesture.Value.translation.getter();
  v11 = v10;
  sub_10004E600(v9);
  (*(v4 + 104))(v6, enum case for LayoutDirection.rightToLeft(_:), v3);
  v12 = static LayoutDirection.== infix(_:_:)();
  v13 = *(v4 + 8);
  v13(v6, v3);
  v13(v9, v3);
  if (v12)
  {
    v11 = -v11;
  }

  v14 = (a2 + *(type metadata accessor for OverlayStack(0) + 28));
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = v14[2];
  v21 = v15;
  v22 = v16;
  v23 = v17;
  *&v19[1] = v11;
  v20 = 0;
  sub_100002B38(&qword_10012EB30, &qword_1000EAFC8);
  return State.wrappedValue.setter();
}

uint64_t sub_100052580()
{
  v0 = type metadata accessor for LayoutDirection();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  DragGesture.Value.predictedEndTranslation.getter();
  v8 = v7;
  sub_10004E600(v6);
  (*(v1 + 104))(v3, enum case for LayoutDirection.rightToLeft(_:), v0);
  v9 = static LayoutDirection.== infix(_:_:)();
  v10 = *(v1 + 8);
  v10(v3, v0);
  v10(v6, v0);
  v11 = -v8;
  if ((v9 & 1) == 0)
  {
    v11 = v8;
  }

  return sub_1000526EC(v11);
}

uint64_t sub_1000526EC(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for OverlayStack(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for AnimationCompletionCriteria();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.overlayContentWidth.getter();
  if (v12 * 0.25 <= a1)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100011F80(v20, qword_100135C88);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "handleInteractiveDismiss - completing interactive dismiss: popping the stack", v23, 2u);
    }

    static Animation.easeIn(duration:)();
    v24 = static AnimationCompletionCriteria.logicallyComplete.getter();
    __chkstk_darwin(v24);
    *&v28[-16] = v2;
    sub_100068240(v2, &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for OverlayStack);
    v25 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v26 = swift_allocObject();
    sub_10006B690(v7, v26 + v25, type metadata accessor for OverlayStack);
  }

  else
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100011F80(v13, qword_100135C88);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "handleInteractiveDismiss - canceling interactive dismiss", v16, 2u);
    }

    static Animation.easeOut(duration:)();
    v17 = static AnimationCompletionCriteria.logicallyComplete.getter();
    __chkstk_darwin(v17);
    *&v28[-16] = v2;
    sub_100068240(v2, &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for OverlayStack);
    v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v19 = swift_allocObject();
    sub_10006B690(v7, v19 + v18, type metadata accessor for OverlayStack);
  }

  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100052B98(uint64_t a1)
{
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.overlayContentWidth.getter();
  type metadata accessor for OverlayStack(0);
  sub_100002B38(&qword_10012EB30, &qword_1000EAFC8);
  return State.wrappedValue.setter();
}

double sub_100052C40(uint64_t a1)
{
  type metadata accessor for OverlayStack(0);
  sub_100002B38(&qword_10012EB30, &qword_1000EAFC8);
  State.wrappedValue.setter();
  return sub_100052200();
}

uint64_t sub_100052CC8(uint64_t a1)
{
  type metadata accessor for OverlayStack(0);
  sub_100002B38(&qword_10012EB30, &qword_1000EAFC8);
  return State.wrappedValue.setter();
}

uint64_t sub_100052D50(uint64_t a1)
{
  type metadata accessor for OverlayStack(0);
  sub_100002B38(&qword_10012EB30, &qword_1000EAFC8);
  return State.wrappedValue.setter();
}

uint64_t sub_100052DD8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_100002B38(&qword_10012EF28, &qword_1000EB8F0);
  __chkstk_darwin(v4);
  v6 = (v17 - v5);
  v7 = sub_100002B38(&qword_10012EF30, &qword_1000EB8F8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = v17 - v10;
  if (a1)
  {
    v17[3] = v17;
    __chkstk_darwin(v9);
    v17[2] = &v17[-6];
    __chkstk_darwin(v12);
    sub_100002B38(&qword_10012EF48, &qword_1000EB900);
    v13 = sub_100002B38(&qword_10012EF90, &qword_1000EB920);
    sub_100069844(v13, v14, v15);
    sub_10006AC70();
    v17[1] = a2;
    sub_10006AF60();
    StaticIf<>.init(_:then:else:)();
    (*(v8 + 16))(v6, v11, v7);
    swift_storeEnumTagMultiPayload();
    sub_10006ABD0();
    _ConditionalContent<>.init(storage:)();
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    *v6 = static Color.clear.getter();
    swift_storeEnumTagMultiPayload();
    sub_10006ABD0();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1000530D8@<X0>(unsigned int a1@<W0>, double a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v45 = a2;
  v48 = a4;
  v46 = (a1 >> 8) & 1;
  v47 = a3;
  v44 = type metadata accessor for Material._GlassVariant();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Material();
  v6 = *(v41 - 8);
  __chkstk_darwin(v41);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for _Glass();
  v40 = *(v43 - 8);
  __chkstk_darwin(v43);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002B38(&qword_10012EF68, &qword_1000EB910);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v39 - v13;
  v15 = sub_100002B38(&qword_10012EF58, &qword_1000EB908);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v39 - v17;
  static Color.black.getter();
  v19 = Color.opacity(_:)();

  v49 = v19;
  static Material._GlassVariant.controlCenter.getter();
  static Material._glass(_:)();
  (*(v42 + 8))(v5, v44);
  static _Glass.explicit(_:)();
  v20 = (*(v6 + 8))(v8, v41);
  sub_10006AF0C(v20, v21, v22);
  View._glassEffect<A>(_:in:)();
  (*(v40 + 8))(v10, v43);

  static UnitPoint.center.getter();
  v24 = v23;
  v26 = v25;
  v27 = &v14[*(sub_100002B38(&qword_10012EF78, &qword_1000EB918) + 36)];
  *v27 = vdupq_n_s64(0x3FF051EB851EB852uLL);
  v27[1].i64[0] = v24;
  v27[1].i64[1] = v26;
  v28 = static SafeAreaRegions.all.getter();
  v29 = static Edge.Set.all.getter();
  v30 = &v14[*(v12 + 44)];
  *v30 = v28;
  v30[8] = v29;
  if (v47)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = v45;
  }

  v32 = v46 & ~v47;
  sub_100014830(v14, v18, &qword_10012EF68, &qword_1000EB910);
  v33 = &v18[*(v16 + 44)];
  *v33 = v32;
  *(v33 + 1) = v31;
  v36 = sub_100051324(sub_100069EEC, &type metadata for ChildZoomTransition, v34, v35);
  v37 = v48;
  sub_100014830(v18, v48, &qword_10012EF58, &qword_1000EB908);
  result = sub_100002B38(&qword_10012EF48, &qword_1000EB900);
  *(v37 + *(result + 36)) = v36;
  return result;
}

uint64_t sub_100053508@<X0>(unsigned int a1@<W0>, double a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v61 = a2;
  v64 = a4;
  v62 = (a1 >> 8) & 1;
  v63 = a3;
  v4 = type metadata accessor for RoundedRectangle();
  v46 = v4;
  __chkstk_darwin(v4);
  v60 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Material._GlassVariant();
  v54 = *(v57 - 8);
  __chkstk_darwin(v57);
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for Material();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _Glass();
  v58 = *(v9 - 8);
  v59 = v9;
  __chkstk_darwin(v9);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002B38(&qword_10012EFB8, &qword_1000EB938);
  v47 = v11;
  __chkstk_darwin(v11);
  v13 = (&v45 - v12);
  v56 = sub_100002B38(&qword_10012EFB0, &qword_1000EB930) - 8;
  __chkstk_darwin(v56);
  v49 = &v45 - v14;
  v55 = sub_100002B38(&qword_10012EFA0, &qword_1000EB928) - 8;
  __chkstk_darwin(v55);
  v52 = &v45 - v15;
  static Color.black.getter();
  v16 = Color.opacity(_:)();

  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.cornerRadius.getter();
  v18 = v17;
  v19 = v13 + *(v11 + 36);
  v20 = *(v4 + 20);
  v21 = enum case for RoundedCornerStyle.continuous(_:);
  v22 = type metadata accessor for RoundedCornerStyle();
  v23 = *(*(v22 - 8) + 104);
  v23(&v19[v20], v21, v22);
  *v19 = v18;
  *(v19 + 1) = v18;
  *v13 = v16;
  v24 = v50;
  static Material._GlassVariant.controlCenter.getter();
  static Material._glass(_:)();
  (*(v54 + 8))(v24, v57);
  v25 = v48;
  static _Glass.explicit(_:)();
  (*(v51 + 8))(v8, v53);
  static ZoomCoordinator.cornerRadius.getter();
  v27 = v26;
  v28 = v60;
  v23(&v60[*(v46 + 20)], v21, v22);
  *v28 = v27;
  v28[1] = v27;
  sub_10006B1BC();
  sub_10006778C(&qword_10012EFD8, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  v29 = v49;
  View._glassEffect<A>(_:in:)();
  sub_100069B78(v28, &type metadata accessor for RoundedRectangle);
  (*(v58 + 8))(v25, v59);
  sub_100005688(v13, &qword_10012EFB8, &qword_1000EB938);
  LOBYTE(v22) = static Edge.Set.top.getter();
  static ZoomCoordinator.iPadTopPadding.getter();
  EdgeInsets.init(_all:)();
  v30 = v29 + *(v56 + 44);
  *v30 = v22;
  *(v30 + 8) = v31;
  *(v30 + 16) = v32;
  *(v30 + 24) = v33;
  *(v30 + 32) = v34;
  *(v30 + 40) = 0;
  if (v63)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v61;
  }

  v36 = v62 & ~v63;
  v37 = v52;
  sub_100014830(v29, v52, &qword_10012EFB0, &qword_1000EB930);
  v38 = v37 + *(v55 + 44);
  *v38 = v36;
  *(v38 + 8) = v35;
  v41 = sub_100051324(sub_100069EEC, &type metadata for ChildZoomTransition, v39, v40);
  v42 = v37;
  v43 = v64;
  sub_100014830(v42, v64, &qword_10012EFA0, &qword_1000EB928);
  result = sub_100002B38(&qword_10012EF90, &qword_1000EB920);
  *(v43 + *(result + 36)) = v41;
  return result;
}

uint64_t sub_100053ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = static Alignment.center.getter();
  v8 = v7;
  v9 = a2 + *(sub_100002B38(&qword_10012EF10, &qword_1000EB8D8) + 36);
  sub_100052DD8(v5, v9);
  v10 = (v9 + *(sub_100002B38(&qword_10012EF18, &qword_1000EB8E0) + 36));
  *v10 = v6;
  v10[1] = v8;
  v11 = sub_100002B38(&qword_10012EF20, &qword_1000EB8E8);
  v12 = *(*(v11 - 8) + 16);

  return v12(a2, a1, v11);
}

BOOL sub_100053BF4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == *a2;
    }

    return 0;
  }

  if (v2 == 0.0)
  {
    v4 = *&v3 == 0;
  }

  else
  {
    if (*&v2 != 1)
    {
      if (*&v3 > 1uLL)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = *&v3 == 1;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

CGFloat sub_100053C68@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = 1.0;
  v8.tx = 0.0;
  v8.ty = 0.0;
  CGAffineTransformTranslate(&v7, &v8, v3, 0.0);
  result = v7.a;
  v5 = *&v7.c;
  v6 = *&v7.tx;
  *a1 = *&v7.a;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = v6;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

double sub_100053CD8@<D0>(double *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v5 = sub_10006CE68(a2, a3, a4);
  sub_10006A9F8(v5, v6, v7);
  Animatable<>.animatableData.getter();
  result = v9;
  *a1 = v9;
  return result;
}

uint64_t sub_100053D40(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_10006CE68(a1, a2, a3);
  sub_10006A9F8(v3, v4, v5);
  return Animatable<>.animatableData.setter();
}

uint64_t (*sub_100053D90(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v6 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  *(v3 + 8) = *v1;
  v7 = sub_10006CE68(v3, v4, v5);
  *(v6 + 24) = v7;
  *(v6 + 32) = sub_10006A9F8(v7, v8, v9);
  Animatable<>.animatableData.getter();
  return sub_100053E38;
}

void sub_100053E38(void **a1)
{
  v1 = *a1;
  (*a1)[1] = **a1;
  Animatable<>.animatableData.setter();

  free(v1);
}

uint64_t sub_100053E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10006DAAC(a1, a2, a3);

  return static GeometryEffect._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v10);
}

uint64_t sub_100053F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10006DAAC(a1, a2, a3);

  return static GeometryEffect._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v10);
}

uint64_t sub_100053FF4@<X0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D1>)
{
  v6 = sub_100002B38(&qword_10012F3B8, &qword_1000EBC58);
  __chkstk_darwin(v6);
  v8 = v88 - v7;
  v9 = sub_100002B38(&qword_10012F3C0, &qword_1000EBC60);
  __chkstk_darwin(v9);
  v11 = v88 - v10;
  v12 = sub_100002B38(&qword_10012F3C8, &qword_1000EBC68);
  __chkstk_darwin(v12);
  v14 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v88 - v16;
  if (a1)
  {
    v88[1] = a2;
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.cornerRadius.getter();
    v19 = v18;
    v20 = *(type metadata accessor for RoundedRectangle() + 20);
    v21 = enum case for RoundedCornerStyle.continuous(_:);
    v22 = type metadata accessor for RoundedCornerStyle();
    (*(*(v22 - 8) + 104))(&v11[v20], v21, v22);
    *v11 = v19;
    *(v11 + 1) = v19;
    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.initialFrame.getter();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v92.origin.x = v24;
    v92.origin.y = v26;
    v92.size.width = v28;
    v92.size.height = v30;
    CGRectGetWidth(v92);
    static ZoomCoordinator.overlayContentWidth.getter();
    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.initialFrame.getter();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v93.origin.x = v32;
    v93.origin.y = v34;
    v93.size.width = v36;
    v93.size.height = v38;
    CGRectGetWidth(v93);
    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.initialFrame.getter();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v94.origin.x = v40;
    v94.origin.y = v42;
    v94.size.width = v44;
    v94.size.height = v46;
    CGRectGetHeight(v94);
    static ZoomCoordinator.containerSize.getter();
    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.initialFrame.getter();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;

    v95.origin.x = v48;
    v95.origin.y = v50;
    v95.size.width = v52;
    v95.size.height = v54;
    CGRectGetHeight(v95);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v55 = &v11[*(sub_100002B38(&qword_10012F3F0, &qword_1000EBC78) + 36)];
    v56 = v90;
    *v55 = v89;
    *(v55 + 1) = v56;
    *(v55 + 2) = v91;
    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.initialFrame.getter();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;

    v96.origin.x = v58;
    v96.origin.y = v60;
    v96.size.width = v62;
    v96.size.height = v64;
    v65 = 1.0 - a3;
    v66 = (1.0 - a3) * CGRectGetMinX(v96);
    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.initialFrame.getter();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;

    v97.origin.x = v68;
    v97.origin.y = v70;
    v97.size.width = v72;
    v97.size.height = v74;
    MinY = CGRectGetMinY(v97);
    v76 = &v11[*(v9 + 36)];
    *v76 = v66;
    v76[1] = v65 * MinY;
    v77 = static Edge.Set.all.getter();
    v78 = [objc_opt_self() currentDevice];
    v79 = [v78 userInterfaceIdiom];

    if (v79)
    {
      v77 = Edge.Set.init(rawValue:)();
    }

    v80 = static SafeAreaRegions.all.getter();
    sub_100014830(v11, v14, &qword_10012F3C0, &qword_1000EBC60);
    v81 = &v14[*(v12 + 36)];
    *v81 = v80;
    v81[8] = v77;
    sub_100014830(v14, v17, &qword_10012F3C8, &qword_1000EBC68);
    sub_1000035B4(v17, v8, &qword_10012F3C8, &qword_1000EBC68);
    swift_storeEnumTagMultiPayload();
    sub_100002B38(&qword_10012F3D0, &qword_1000EBC70);
    sub_10006CEC4();
    sub_10006D098(&qword_10012F400, &qword_10012F3D0, &qword_1000EBC70, &protocol witness table for _SafeAreaRegionsIgnoringLayout);
    _ConditionalContent<>.init(storage:)();
    return sub_100005688(v17, &qword_10012F3C8, &qword_1000EBC68);
  }

  else
  {
    v83 = static Color.black.getter();
    v84 = static Edge.Set.all.getter();
    v85 = [objc_opt_self() currentDevice];
    v86 = [v85 userInterfaceIdiom];

    if (v86)
    {
      v84 = Edge.Set.init(rawValue:)();
    }

    v87 = static SafeAreaRegions.all.getter();
    *v8 = v83;
    *(v8 + 1) = v87;
    v8[16] = v84;
    swift_storeEnumTagMultiPayload();
    sub_100002B38(&qword_10012F3D0, &qword_1000EBC70);
    sub_10006CEC4();
    sub_10006D098(&qword_10012F400, &qword_10012F3D0, &qword_1000EBC70, &protocol witness table for _SafeAreaRegionsIgnoringLayout);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100054620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10006D108(a1, a2, a3);

  return static ViewModifier<>._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_1000546A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10006D108(a1, a2, a3);

  return static ViewModifier<>._makeViewList(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t sub_100054728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.overlayContentWidth.getter();
  v8 = fmin(1.0 - v6 / (v7 + -10.0), 1.0);
  if (v8 < 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v8;
  }

  v10 = static Alignment.topLeading.getter();
  v12 = v11;
  v13 = (a2 + *(sub_100002B38(&qword_10012F3A0, &qword_1000EBC40) + 36));
  v14 = sub_100002B38(&qword_10012F3A8, &qword_1000EBC48);
  sub_100053FF4(v5, v13 + *(v14 + 36), v9);
  *v13 = v10;
  v13[1] = v12;
  v15 = sub_100002B38(&qword_10012F3B0, &qword_1000EBC50);
  v16 = *(*(v15 - 8) + 16);

  return v16(a2, a1, v15);
}

double sub_10005484C@<D0>(double *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  v5 = sub_10006CE68(a2, a3, a4);
  sub_10006A9F8(v5, v6, v7);
  Animatable<>.animatableData.getter();
  result = v9;
  *a1 = v9;
  return result;
}

uint64_t sub_1000548B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_10006CE68(a1, a2, a3);
  sub_10006A9F8(v3, v4, v5);
  return Animatable<>.animatableData.setter();
}

uint64_t (*sub_100054908(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v6 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  *(v3 + 8) = *(v1 + 8);
  v7 = sub_10006CE68(v3, v4, v5);
  *(v6 + 24) = v7;
  *(v6 + 32) = sub_10006A9F8(v7, v8, v9);
  Animatable<>.animatableData.getter();
  return sub_1000549B0;
}

void sub_1000549B0(void **a1)
{
  v1 = *a1;
  (*a1)[1] = **a1;
  Animatable<>.animatableData.setter();

  free(v1);
}

uint64_t sub_100054A0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v198 = a1;
  v3 = type metadata accessor for _NavigationStackStyleConfiguration.Item();
  v166 = *(v3 - 8);
  v167 = v3;
  __chkstk_darwin(v3);
  v165 = &v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_100002B38(&qword_10012EFE0, &qword_1000EB948);
  __chkstk_darwin(v168);
  v170 = &v164 - v5;
  v169 = sub_100002B38(&qword_10012EFE8, &qword_1000EB950);
  __chkstk_darwin(v169);
  v171 = &v164 - v6;
  v172 = sub_100002B38(&qword_10012EFF0, &qword_1000EB958);
  __chkstk_darwin(v172);
  v8 = (&v164 - v7);
  v9 = sub_100002B38(&qword_10012EFF8, &qword_1000EB960);
  v173 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v164 - v10;
  v200 = sub_100002B38(&qword_10012F000, &qword_1000EB968);
  __chkstk_darwin(v200);
  v13 = &v164 - v12;
  v196 = sub_100002B38(&qword_10012F008, &qword_1000EB970);
  v174 = *(v196 - 8);
  __chkstk_darwin(v196);
  v15 = &v164 - v14;
  v197 = sub_100002B38(&qword_10012F010, &qword_1000EB978);
  v175 = *(v197 - 8);
  __chkstk_darwin(v197);
  v17 = &v164 - v16;
  v194 = sub_100002B38(&qword_10012F018, &qword_1000EB980);
  __chkstk_darwin(v194);
  v195 = &v164 - v18;
  v19 = sub_100002B38(&qword_10012ECE0, &qword_1000EB0D8);
  v187 = *(v19 - 8);
  v188 = v19;
  __chkstk_darwin(v19);
  v186 = &v164 - v20;
  v21 = type metadata accessor for OverlayNavigationStackItem(0);
  v191 = *(v21 - 1);
  __chkstk_darwin(v21);
  v199 = v22;
  v23 = &v164 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_100002B38(&qword_10012F020, &qword_1000EB988);
  v180 = *(v183 - 8);
  __chkstk_darwin(v183);
  v176 = &v164 - v24;
  v25 = sub_100002B38(&qword_10012F028, &qword_1000EB990);
  v184 = *(v25 - 1);
  v185 = v25;
  __chkstk_darwin(v25);
  v181 = &v164 - v26;
  v178 = sub_100002B38(&qword_10012F030, &qword_1000EB998);
  __chkstk_darwin(v178);
  v179 = &v164 - v27;
  v177 = sub_100002B38(&qword_10012F038, &qword_1000EB9A0);
  __chkstk_darwin(v177);
  v182 = &v164 - v28;
  v201 = sub_100002B38(&qword_10012F040, &qword_1000EB9A8);
  __chkstk_darwin(v201);
  v189 = &v164 - v29;
  v193 = sub_100002B38(&qword_10012F048, &qword_1000EB9B0);
  v31 = __chkstk_darwin(v193);
  v33 = (&v164 - v32);
  v34 = (v2 + v21[8]);
  v35 = *v34;
  v192 = v23;
  v202 = v2;
  if (v35)
  {
    v190 = v35;
    v174 = v33;
    v175 = v30;
    v36 = *(v2 + v21[6]);
    v173 = v34[1];
    if (v36 == 1 && *(v2 + v21[5]) == 1)
    {
      v37 = *(v2 + v21[7]);
      type metadata accessor for ZoomCoordinator();

      static ZoomCoordinator.overlayContentWidth.getter();
      v39 = 1.0 - v37 / v38;
    }

    else
    {

      v39 = 1.0;
    }

    v40 = (v2 + v21[11]);
    v41 = *v40;
    v42 = v40[1];
    *&v213 = v41;
    *(&v213 + 1) = v42;
    sub_100002B38(&qword_10012DD98, &qword_1000EA650);
    State.wrappedValue.getter();
    if (*&v203 >= v39)
    {
      v43 = v39;
    }

    else
    {
      v43 = *&v203;
    }

    v44 = type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.initialFrame.getter();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;

    v225.origin.x = v46;
    v225.origin.y = v48;
    v225.size.width = v50;
    v225.size.height = v52;
    Width = CGRectGetWidth(v225);
    static ZoomCoordinator.overlayContentWidth.getter();
    v55 = v54;
    v56 = *(v2 + v21[7]);
    v171 = v44;
    static ZoomCoordinator.overlayContentWidth.getter();
    v58 = v57;
    v59 = (v2 + v21[12]);
    v60 = *v59;
    v61 = v59[1];
    *&v213 = v60;
    *(&v213 + 1) = v61;
    State.wrappedValue.getter();
    v62 = 1.0;
    LODWORD(v172) = v36;
    if (v36 && *(v2 + v21[5]) == 1)
    {
      v62 = 1.0 - v56 * (1.0 - fmax(Width / v55, 0.25)) / v58;
    }

    if (v62 >= *&v203)
    {
      v63 = *&v203;
    }

    else
    {
      v63 = v62;
    }

    sub_100068240(v2, v23, type metadata accessor for OverlayNavigationStackItem);
    v64 = (*(v191 + 80) + 16) & ~*(v191 + 80);
    v191 = *(v191 + 80);
    v170 = (v64 + v199);
    v65 = swift_allocObject();
    v199 = v64;
    sub_10006B690(v23, v65 + v64, type metadata accessor for OverlayNavigationStackItem);
    v66 = 1;
    if (*(v2 + v21[5]) == 1)
    {
      v67 = v2 + v21[10];
      v68 = *v67;
      v69 = *(v67 + 8);
      LOBYTE(v67) = *(v67 + 16);
      *&v213 = v68;
      *(&v213 + 1) = v69;
      LOBYTE(v214) = v67;
      sub_100002B38(&qword_10012F160, &qword_1000EBA58);
      Binding.wrappedValue.getter();
      v66 = v203 ^ 1;
    }

    KeyPath = swift_getKeyPath();
    v71 = swift_allocObject();
    *(v71 + 16) = v66 & 1;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v203 = sub_10006C238;
    *(&v203 + 1) = v65;
    *&v204 = KeyPath;
    *(&v204 + 1) = sub_100070378;
    *&v205 = v71;
    static HorizontalAlignment.leading.getter();
    v72 = sub_100002B38(&qword_10012F108, &qword_1000EBA28);
    v73 = sub_100002B38(&qword_10012F0B0, &qword_1000EBA10);
    v74 = sub_10006BE68();
    v75 = sub_10006D098(&qword_10012F0A8, &qword_10012F0B0, &qword_1000EBA10, &protocol witness table for _FrameLayout);
    v76 = v176;
    View.topToolbarSafeAreaInset<A>(alignment:spacing:content:)();
    v219 = v209;
    v220 = v210;
    v221 = v211;
    v222 = v212;
    v215 = v205;
    v216 = v206;
    v217 = v207;
    v218 = v208;
    v213 = v203;
    v214 = v204;
    v77 = sub_100005688(&v213, &qword_10012F108, &qword_1000EBA28);
    v80 = sub_100069844(v77, v78, v79);
    v81 = v186;
    static ViewInputPredicate.! prefix(_:)();
    sub_100002B38(&qword_10012F100, &qword_1000EBA20);
    *&v203 = v72;
    *(&v203 + 1) = v73;
    *&v204 = v74;
    *(&v204 + 1) = v75;
    swift_getOpaqueTypeConformance2();
    *&v203 = &type metadata for GameOverlayOnPhonePredicate;
    *(&v203 + 1) = v80;
    swift_getOpaqueTypeConformance2();
    sub_10006C064();
    v82 = v181;
    v83 = v183;
    v84 = v188;
    View.staticIf<A, B>(_:then:)();
    (*(v187 + 1))(v81, v84);
    (*(v180 + 8))(v76, v83);
    v85 = v192;
    sub_100068240(v202, v192, type metadata accessor for OverlayNavigationStackItem);
    v86 = v170;
    v87 = swift_allocObject();
    v88 = v199;
    sub_10006B690(v85, v87 + v199, type metadata accessor for OverlayNavigationStackItem);
    v89 = v179;
    (*(v184 + 32))(v179, v82, v185);
    v90 = &v89[*(v178 + 36)];
    *v90 = sub_10006C2B8;
    v90[1] = v87;
    v90[2] = 0;
    v90[3] = 0;
    v91 = v89;
    v92 = v182;
    sub_100014830(v91, v182, &qword_10012F030, &qword_1000EB998);
    v93 = v172 == 0;
    if (v172)
    {
      v94 = v43;
    }

    else
    {
      v94 = 1.0;
    }

    *(v92 + *(v177 + 36)) = v94;
    if (v93)
    {
      v95 = 1.0;
    }

    else
    {
      v95 = v63;
    }

    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.currentAnchor.getter();
    v97 = v96;
    v99 = v98;

    v100 = v189;
    sub_100014830(v92, v189, &qword_10012F038, &qword_1000EB9A0);
    v101 = v100 + *(v201 + 36);
    *v101 = v95;
    *(v101 + 8) = v95;
    *(v101 + 16) = v97;
    *(v101 + 24) = v99;
    if (qword_10012CBB8 != -1)
    {
      swift_once();
    }

    v102 = qword_100135BC0;
    swift_getKeyPath();
    *&v203 = v102;
    sub_10006778C(&qword_10012EA10, type metadata accessor for NavigationPopEventCoordinator, &unk_1000EADB0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v103 = *(v102 + 24);
    *&v203 = *(v102 + 16);
    *(&v203 + 1) = v103;
    sub_100068240(v202, v85, type metadata accessor for OverlayNavigationStackItem);
    v104 = swift_allocObject();
    sub_10006B690(v85, v104 + v88, type metadata accessor for OverlayNavigationStackItem);
    v105 = (v104 + ((v86 + 7) & 0xFFFFFFFFFFFFFFF8));
    v106 = v190;
    v107 = v173;
    *v105 = v190;
    v105[1] = v107;
    sub_10000519C(v106, v107);
    v108 = sub_10006BB74();

    v109 = v174;
    v110 = v201;
    View.onChange<A>(of:initial:_:)();

    sub_100005688(v100, &qword_10012F040, &qword_1000EB9A8);
    v111 = v175;
    v112 = v193;
    (*(v175 + 16))(v195, v109, v193);
    swift_storeEnumTagMultiPayload();
    *&v203 = v110;
    *(&v203 + 1) = &type metadata for String;
    *&v204 = v108;
    *(&v204 + 1) = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    v113 = sub_10006B93C();
    v116 = sub_10006BAF4(v113, v114, v115);
    *&v203 = v200;
    *(&v203 + 1) = &type metadata for CGFloat;
    *&v204 = v113;
    *(&v204 + 1) = v116;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v203 = v196;
    *(&v203 + 1) = &type metadata for String;
    *&v204 = OpaqueTypeConformance2;
    *(&v204 + 1) = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    v118 = sub_10006C574(v190, v107);
    return (*(v111 + 8))(v109, v112, v118);
  }

  else
  {
    v185 = v8;
    v186 = v9;
    v189 = v17;
    v190 = v11;
    v187 = v13;
    v188 = v15;
    v120 = v166;
    v121 = v165;
    v122 = v167;
    (*(v166 + 16))(v31);
    v123 = 1;
    if (*(v2 + v21[5]) == 1)
    {
      v124 = v2 + v21[10];
      v125 = *v124;
      v126 = *(v124 + 8);
      LOBYTE(v124) = *(v124 + 16);
      *&v213 = v125;
      *(&v213 + 1) = v126;
      LOBYTE(v214) = v124;
      sub_100002B38(&qword_10012F160, &qword_1000EBA58);
      Binding.wrappedValue.getter();
      v123 = v203 ^ 1;
    }

    v127 = swift_getKeyPath();
    v128 = swift_allocObject();
    *(v128 + 16) = v123 & 1;
    v129 = v170;
    (*(v120 + 32))(v170, v121, v122);
    v130 = (v129 + *(v168 + 36));
    *v130 = v127;
    v130[1] = sub_10006B2F0;
    v130[2] = v128;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v131 = v171;
    sub_100014830(v129, v171, &qword_10012EFE0, &qword_1000EB948);
    v132 = (v131 + *(v169 + 36));
    v133 = v218;
    v132[4] = v217;
    v132[5] = v133;
    v132[6] = v219;
    v134 = v214;
    *v132 = v213;
    v132[1] = v134;
    v135 = v216;
    v132[2] = v215;
    v132[3] = v135;
    v136 = v185;
    sub_100014830(v131, v185, &qword_10012EFE8, &qword_1000EB950);
    Solarium.init()();
    sub_100002B38(&qword_10012F050, &qword_1000EB9E8);
    sub_100002B38(&qword_10012F058, &qword_1000EB9F0);
    v137 = sub_10006B2F8();
    v138 = sub_100005144(&qword_10012F090, &qword_1000EBA00);
    v139 = sub_100005144(&qword_10012F098, &qword_1000EBA08);
    v140 = sub_10006B4F8();
    *&v203 = v139;
    *(&v203 + 1) = v140;
    v141 = swift_getOpaqueTypeConformance2();
    *&v203 = v172;
    *(&v203 + 1) = v138;
    *&v204 = v137;
    *(&v204 + 1) = v141;
    swift_getOpaqueTypeConformance2();
    sub_10006B5D0();
    View.staticIf<A, B, C>(_:then:else:)();
    sub_100005688(v136, &qword_10012EFF0, &qword_1000EB958);
    v142 = v202;
    v143 = v192;
    v185 = type metadata accessor for OverlayNavigationStackItem;
    sub_100068240(v202, v192, type metadata accessor for OverlayNavigationStackItem);
    v144 = (*(v191 + 80) + 16) & ~*(v191 + 80);
    v184 = *(v191 + 80);
    v145 = swift_allocObject();
    v191 = type metadata accessor for OverlayNavigationStackItem;
    sub_10006B690(v143, v145 + v144, type metadata accessor for OverlayNavigationStackItem);
    v146 = v187;
    (*(v173 + 32))(v187, v190, v186);
    v147 = (v146 + *(v200 + 36));
    *v147 = sub_10006B6F8;
    v147[1] = v145;
    v147[2] = 0;
    v147[3] = 0;
    sub_100068240(v142, v143, type metadata accessor for OverlayNavigationStackItem);
    v148 = swift_allocObject();
    sub_10006B690(v143, v148 + v144, type metadata accessor for OverlayNavigationStackItem);
    v149 = sub_10006B93C();
    v190 = sub_10006BAF4(v149, v150, v151);
    v152 = v188;
    v153 = v200;
    View.onScrollGeometryChange<A>(for:of:action:)();

    sub_100005688(v146, &qword_10012F000, &qword_1000EB968);
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.shared.getter();
    v154 = dispatch thunk of ZoomCoordinator.navigationCancelCommandNotificationId.getter();
    v156 = v155;

    v223 = v154;
    v224 = v156;
    sub_100068240(v202, v143, v185);
    v157 = swift_allocObject();
    sub_10006B690(v143, v157 + v144, v191);
    *&v203 = v153;
    *(&v203 + 1) = &type metadata for CGFloat;
    *&v204 = v149;
    *(&v204 + 1) = v190;
    v158 = swift_getOpaqueTypeConformance2();
    v159 = v189;
    v160 = v196;
    View.onChange<A>(of:initial:_:)();

    v174[1](v152, v160);
    v161 = v175;
    v162 = v197;
    (*(v175 + 16))(v195, v159, v197);
    swift_storeEnumTagMultiPayload();
    v163 = sub_10006BB74();
    *&v203 = v201;
    *(&v203 + 1) = &type metadata for String;
    *&v204 = v163;
    *(&v204 + 1) = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    *&v203 = v160;
    *(&v203 + 1) = &type metadata for String;
    *&v204 = v158;
    *(&v204 + 1) = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v161 + 8))(v159, v162);
  }
}

uint64_t sub_1000561BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ScrollViewProxy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  type metadata accessor for ZoomCoordinator.ScrollGeometry();
  type metadata accessor for _NavigationStackStyleConfiguration.Item();
  sub_10006778C(&qword_10012F078, &type metadata accessor for _NavigationStackStyleConfiguration.Item, &protocol conformance descriptor for _NavigationStackStyleConfiguration.Item);
  sub_10006778C(&qword_10012F168, &type metadata accessor for ZoomCoordinator.ScrollGeometry, &protocol conformance descriptor for ZoomCoordinator.ScrollGeometry);
  View.onScrollGeometryChange<A>(for:of:action:)();
  (*(v5 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  (*(v5 + 32))(v8 + v7, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  result = sub_100002B38(&qword_10012F170, &qword_1000EBA70);
  v10 = (a2 + *(result + 36));
  *v10 = sub_10006C7F8;
  v10[1] = v8;
  return result;
}

uint64_t sub_1000563E4()
{
  ScrollGeometry.contentOffset.getter();
  v1 = v0;
  ScrollGeometry.contentInsets.getter();
  v3 = v2;
  v4 = ScrollGeometry.contentSize.getter();
  v5.n128_u64[0] = v7.n128_u64[0];
  v6.n128_u64[0] = v1;
  v7.n128_u64[0] = v3;

  return ZoomCoordinator.ScrollGeometry.init(contentOffsetY:contentInsetTop:contentHeight:)(v4, v6, v7, v5);
}

double sub_100056444(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ZoomCoordinator.ScrollGeometry();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  (*(v4 + 16))(v6, a2, v3);
  dispatch thunk of ZoomCoordinator.scrollGeometry.setter();

  return result;
}

double sub_100056530(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v2 = static Animation.spring(response:dampingFraction:blendDuration:)();
    __chkstk_darwin(v2);
    withAnimation<A>(_:_:)();
  }

  return result;
}

double sub_1000565F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolbarProxy_V1();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for MainActor();
  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v14 + v13, v7, v4);
  sub_100014BBC(0, 0, v10, &unk_1000EBA68, v14);

  v15 = static Color.clear.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v16 = v21;
  v17 = v22;
  v18 = v23;
  v19 = v24;
  *a2 = v15;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v19;
  result = *&v25;
  *(a2 + 40) = v25;
  return result;
}

uint64_t sub_100056838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000568D0, v6, v5);
}

uint64_t sub_1000568D0()
{

  if (qword_10012CBB8 != -1)
  {
    swift_once();
  }

  sub_100066F50(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100056970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.cornerRadius.getter();
  v5 = v4;
  v6 = (a2 + *(sub_100002B38(&qword_10012F158, &unk_1000EBA48) + 36));
  v7 = *(type metadata accessor for RoundedRectangle() + 20);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  *v6 = v5;
  *(v6 + 1) = v5;
  *&v6[*(sub_100002B38(&qword_10012CDE0, &qword_1000E90D0) + 36)] = 256;
  v10 = sub_100002B38(&qword_10012F020, &qword_1000EB988);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  LOBYTE(v8) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = sub_100002B38(&qword_10012F100, &qword_1000EBA20);
  v20 = a2 + *(result + 36);
  *v20 = v8;
  *(v20 + 8) = v12;
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
  return result;
}

double sub_100056AF0(uint64_t a1)
{
  static Animation.easeOut(duration:)();
  withAnimation<A>(_:_:)();

  return result;
}

uint64_t sub_100056B68(uint64_t a1)
{
  type metadata accessor for OverlayNavigationStackItem(0);
  sub_100002B38(&qword_10012DD98, &qword_1000EA650);
  State.wrappedValue.setter();
  return State.wrappedValue.setter();
}

uint64_t sub_100056C28(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for OverlayNavigationStackItem(0);
  if (*(a3 + *(result + 20)) == 1)
  {
    v8 = a2[1];
    if ((v8 & 0x2000000000000000) != 0 ? HIBYTE(v8) & 0xF : *a2 & 0xFFFFFFFFFFFFLL)
    {
      if (*(a3 + *(result + 24)) == 1)
      {
        v10 = static Animation.easeIn(duration:)();
        __chkstk_darwin(v10);
        withAnimation<A>(_:_:)();
      }

      return a4(result);
    }
  }

  return result;
}

uint64_t sub_100056D20(uint64_t a1)
{
  type metadata accessor for OverlayNavigationStackItem(0);
  sub_100002B38(&qword_10012DD98, &qword_1000EA650);
  State.wrappedValue.setter();
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.initialFrame.getter();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  CGRectGetWidth(v10);
  static ZoomCoordinator.overlayContentWidth.getter();
  return State.wrappedValue.setter();
}

uint64_t sub_100056E48(uint64_t a1)
{
  static HorizontalAlignment.center.getter();
  sub_100002B38(&qword_10012EFF0, &qword_1000EB958);
  sub_100002B38(&qword_10012F090, &qword_1000EBA00);
  sub_10006B2F8();
  sub_100005144(&qword_10012F098, &qword_1000EBA08);
  sub_10006B4F8();
  swift_getOpaqueTypeConformance2();
  return View.safeAreaBar<A>(edge:alignment:spacing:content:)();
}

uint64_t sub_100056F48()
{
  v0 = type metadata accessor for BarMagicPocketStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = static Color.clear.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v14 = v4;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  static Color.black.getter();
  v5 = Color.opacity(_:)();

  sub_10005713C(v5, v7);

  static BarMagicPocketStyle.automatic.getter();
  sub_100002B38(&qword_10012F098, &qword_1000EBA08);
  sub_10006B4F8();
  View.scrollPocketTag_v1(style:)();
  (*(v1 + 8))(v3, v0);
  v20[6] = v7[6];
  v20[7] = v7[7];
  v21 = v8;
  v20[2] = v7[2];
  v20[3] = v7[3];
  v20[4] = v7[4];
  v20[5] = v7[5];
  v20[0] = v7[0];
  v20[1] = v7[1];
  return sub_100005688(v20, &qword_10012F098, &qword_1000EBA08);
}

uint64_t sub_10005713C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v6 = v32;
  v7 = v32 * 0.5;
  v8 = v33;
  v9 = DWORD1(v33);
  v10 = *(&v33 + 1);
  v11 = v34;

  v12 = static Alignment.center.getter();
  *v35 = v32 * 0.5;
  *(v35 + 1) = v32;
  v35[1] = v33;
  *v36 = v34;
  *&v36[16] = a1;
  *&v36[24] = 256;
  v30 = v33;
  *v31 = v34;
  *&v31[10] = *&v36[10];
  v29 = v35[0];
  v13 = *v31;
  v14 = *&v31[16];
  v39 = *v31;
  v40 = *&v31[16];
  v37 = v35[0];
  v38 = v33;
  *&v41 = v12;
  *(&v41 + 1) = v15;
  v16 = *v3;
  v17 = *(v3 + 32);
  *(a2 + 16) = *(v3 + 16);
  *(a2 + 32) = v17;
  *a2 = v16;
  v18 = v38;
  *(a2 + 56) = v37;
  v19 = v40;
  *(a2 + 120) = v41;
  v20 = v39;
  *(a2 + 104) = v19;
  *(a2 + 48) = *(v3 + 48);
  *(a2 + 88) = v20;
  *(a2 + 72) = v18;
  v42[2] = v13;
  v42[3] = v14;
  v42[0] = v29;
  v42[1] = v30;
  v43 = v12;
  v44 = v15;
  sub_1000035B4(v35, v22, &qword_10012F178, &qword_1000EBA88);
  sub_1000035B4(v3, v22, &qword_10012F0B0, &qword_1000EBA10);
  sub_1000035B4(&v37, v22, &qword_10012F0C0, &qword_1000EBA18);
  sub_100005688(v42, &qword_10012F0C0, &qword_1000EBA18);
  *v22 = v7;
  *&v22[1] = v6;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = a1;
  v28 = 256;
  return sub_100005688(v22, &qword_10012F178, &qword_1000EBA88);
}

uint64_t sub_100057314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  sub_100002B38(&qword_10012F058, &qword_1000EB9F0);
  SafeAreaPaddingModifier.init(edges:insets:)();
  return sub_1000035B4(a1, a2, &qword_10012EFF0, &qword_1000EB958);
}

double sub_1000573AC(uint64_t a1)
{
  type metadata accessor for OverlayNavigationStackItem(0);
  sub_100002B38(&qword_10012F160, &qword_1000EBA58);
  Binding.wrappedValue.getter();
  if (v2 == 1)
  {
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.shared.getter();
    sub_100002B38(&qword_10012EC18, &qword_1000EB048);
    State.wrappedValue.getter();
    dispatch thunk of ZoomCoordinator.visibleRootContentHeight.setter();
  }

  return result;
}

double sub_10005748C@<D0>(double *a1@<X8>)
{
  ScrollGeometry.contentSize.getter();
  v3 = v2;
  ScrollGeometry.contentOffset.getter();
  v5 = v3 - v4;
  ScrollGeometry.contentInsets.getter();
  result = v5 + v6 + -70.0;
  *a1 = result;
  return result;
}

void sub_1000574E4(uint64_t a1, double *a2)
{
  v2 = *a2;
  type metadata accessor for OverlayNavigationStackItem(0);
  sub_100002B38(&qword_10012EC18, &qword_1000EB048);
  State.wrappedValue.setter();
  sub_100002B38(&qword_10012F160, &qword_1000EBA58);
  Binding.wrappedValue.getter();
  if (v2 == 1)
  {
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.visibleRootContentHeight.setter();
  }
}

double sub_1000575D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-v5];
  v7 = type metadata accessor for OverlayNavigationStackItem(0);
  if (*(a3 + *(v7 + 20)) == 1)
  {
    v9 = (a3 + *(v7 + 40));
    v10 = *v9;
    v11 = v9[1];
    LOBYTE(v9) = *(v9 + 16);
    v16 = v10;
    v17 = v11;
    v18 = v9;
    sub_100002B38(&qword_10012F160, &qword_1000EBA58);
    Binding.wrappedValue.getter();
    if (v15[7] == 1)
    {
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
      type metadata accessor for MainActor();
      v13 = static MainActor.shared.getter();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = &protocol witness table for MainActor;
      sub_100014BBC(0, 0, v6, &unk_1000EBA80, v14);
    }
  }

  return result;
}

uint64_t sub_100057744()
{
  v1 = type metadata accessor for ZoomCoordinator.DashboardVisibilityState();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100057834, v3, v2);
}

uint64_t sub_100057834()
{

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100011F80(v1, qword_100135C88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Dismissing dashboard overlay due to controller back button press.", v4, 2u);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  (*(v6 + 104))(v5, enum case for ZoomCoordinator.DashboardVisibilityState.closed(_:), v7);
  dispatch thunk of ZoomCoordinator.dashboardVisibility.setter();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000579AC@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v62 = type metadata accessor for NavigationPopEventCoordinator.Container(0);
  __chkstk_darwin(v62);
  v63 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OverlayNavigationBar(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v52 = type metadata accessor for ZoomCoordinator.ScrollGeometry();
  v53 = *(v52 - 8);
  __chkstk_darwin(v52);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002B38(&qword_10012F700, &qword_1000EBEF8);
  v49 = v8;
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  v55 = sub_100002B38(&qword_10012F708, &qword_1000EBF00);
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v66 = &v47 - v11;
  v56 = sub_100002B38(&qword_10012F710, &qword_1000EBF08);
  v58 = *(v56 - 8);
  __chkstk_darwin(v56);
  v51 = &v47 - v12;
  v13 = sub_100002B38(&qword_10012F718, &qword_1000EBF10);
  v59 = *(v13 - 8);
  v60 = v13;
  __chkstk_darwin(v13);
  v54 = &v47 - v14;
  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0x4024000000000000;
  v10[16] = 0;
  v15 = &v10[*(sub_100002B38(&qword_10012F720, &qword_1000EBF18) + 44)];
  v68 = v1;
  sub_100058390(v1, v15);
  sub_100002B38(&qword_10012F728, &qword_1000EBF20);
  static ShapeStyle<>.componentForeground.getter();
  v16 = *(v8 + 36);
  *&v10[v16] = swift_getKeyPath();
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  swift_storeEnumTagMultiPayload();
  v50 = type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.scrollGeometry.getter();

  v65 = type metadata accessor for OverlayNavigationBar;
  v17 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068240(v1, v17, type metadata accessor for OverlayNavigationBar);
  v18 = *(v4 + 80);
  v19 = ((v18 + 16) & ~v18);
  v67 = v5;
  v20 = swift_allocObject();
  v64 = type metadata accessor for OverlayNavigationBar;
  sub_10006B690(v17, v19 + v20, type metadata accessor for OverlayNavigationBar);
  v48 = sub_10006E974();
  v47 = sub_10006778C(&qword_10012F168, &type metadata accessor for ZoomCoordinator.ScrollGeometry, &protocol conformance descriptor for ZoomCoordinator.ScrollGeometry);
  v21 = v7;
  v22 = v49;
  v23 = v52;
  View.onChange<A>(of:initial:_:)();

  (*(v53 + 8))(v21, v23);
  sub_100005688(v10, &qword_10012F700, &qword_1000EBEF8);
  v24 = v68;
  LOBYTE(v69) = sub_10005ADB4(&dispatch thunk of ZoomCoordinator.principalNavBarItem.getter);
  sub_100068240(v24, v17, v65);
  v25 = swift_allocObject();
  sub_10006B690(v17, v19 + v25, v64);
  v71 = v22;
  v72 = v23;
  v73 = v48;
  v74 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v51;
  v28 = v55;
  v29 = v66;
  View.onChange<A>(of:initial:_:)();

  (*(v57 + 8))(v29, v28);
  static ZoomCoordinator.shared.getter();
  v30 = dispatch thunk of ZoomCoordinator.navigationCancelCommandNotificationId.getter();
  v32 = v31;

  v69 = v30;
  v70 = v32;
  sub_100068240(v68, v17, v65);
  v57 = v18;
  v33 = swift_allocObject();
  v65 = v19;
  v66 = v17;
  v34 = v54;
  sub_10006B690(v17, v19 + v33, v64);
  v71 = v28;
  v72 = &type metadata for Bool;
  v73 = OpaqueTypeConformance2;
  v35 = v56;
  v74 = &protocol witness table for Bool;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v34;
  View.onChange<A>(of:initial:_:)();

  (*(v58 + 8))(v27, v35);
  if (qword_10012CBB8 != -1)
  {
    swift_once();
  }

  v38 = qword_100135BC0;
  swift_getKeyPath();
  v71 = v38;
  sub_10006778C(&qword_10012EA10, type metadata accessor for NavigationPopEventCoordinator, &unk_1000EADB0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = OBJC_IVAR____TtC13GameOverlayUI29NavigationPopEventCoordinator__toolbarProxyContainer;
  swift_beginAccess();
  v40 = v38 + v39;
  v41 = v63;
  sub_100068240(v40, v63, type metadata accessor for NavigationPopEventCoordinator.Container);
  v42 = v66;
  sub_100068240(v68, v66, type metadata accessor for OverlayNavigationBar);
  v43 = v65;
  v44 = swift_allocObject();
  sub_10006B690(v42, v43 + v44, type metadata accessor for OverlayNavigationBar);
  v71 = v35;
  v72 = &type metadata for String;
  v73 = v36;
  v74 = &protocol witness table for String;
  swift_getOpaqueTypeConformance2();
  sub_10006778C(&qword_10012F768, type metadata accessor for NavigationPopEventCoordinator.Container, &unk_1000EAD88);
  v45 = v60;
  View.onChange<A>(of:initial:_:)();

  sub_100069B78(v41, type metadata accessor for NavigationPopEventCoordinator.Container);
  return (*(v59 + 8))(v37, v45);
}

uint64_t sub_100058390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_100002B38(&qword_10012F788, &qword_1000EBF98);
  __chkstk_darwin(v3 - 8);
  v64 = &v61 - v4;
  v65 = type metadata accessor for Font.TextStyle();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002B38(&qword_10012F790, &qword_1000EBFA0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v61 - v8;
  v10 = sub_100002B38(&qword_10012F798, &qword_1000EBFA8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v61 - v12;
  v14 = sub_100002B38(&qword_10012F7A0, &qword_1000EBFB0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v66 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = (&v61 - v18);
  *v19 = static Alignment.center.getter();
  v19[1] = v20;
  v21 = sub_100002B38(&qword_10012F7A8, &qword_1000EBFB8);
  sub_100058A64(a1, v19 + *(v21 + 44));
  v22 = static Alignment.top.getter();
  v71 = v23;
  v77 = static Color.clear.getter();
  v24 = 1.0;
  View.magicPocketBackdrop(backDropHeight:cornerRadius:opacity:)();

  *&v9[*(v7 + 44)] = xmmword_1000EAC40;
  if (*(a1 + 1))
  {
    v24 = 0.0;
  }

  v25 = v19 + *(v15 + 44);
  sub_100014830(v9, v13, &qword_10012F790, &qword_1000EBFA0);
  *&v13[*(v11 + 44)] = v24;
  sub_100014830(v13, v25, &qword_10012F798, &qword_1000EBFA8);
  v26 = (v25 + *(sub_100002B38(&qword_10012F7B0, &qword_1000EBFC0) + 36));
  v27 = v71;
  *v26 = v22;
  v26[1] = v27;
  v28 = (a1 + *(type metadata accessor for OverlayNavigationBar(0) + 68));
  v29 = *v28;
  v30 = *(v28 + 1);
  LOBYTE(v77) = v29;
  v78 = v30;
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  v31 = 0;
  v69 = 0;
  v68 = 0;
  v71 = 0;
  KeyPath = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v70 = 0;
  if (v72 == 1)
  {
    sub_10005B220(a1, &v77);
    v36 = v77;
    v69 = v78;
    v68 = v79;
    v71 = v80;
    v70 = v81;
    v37 = v63;
    v38 = v62;
    v39 = v65;
    (*(v63 + 104))(v62, enum case for Font.TextStyle.largeTitle(_:), v65);
    v40 = type metadata accessor for Font.Design();
    v41 = v64;
    (*(*(v40 - 8) + 56))(v64, 1, 1, v40);
    static Font.Weight.bold.getter();
    v33 = static Font.system(_:design:weight:)();
    v42 = v41;
    v31 = v36;
    sub_100005688(v42, &qword_10012F788, &qword_1000EBF98);
    (*(v37 + 8))(v38, v39);
    KeyPath = swift_getKeyPath();
    v43 = *(a1 + 64);
    LOBYTE(v77) = *(a1 + 56);
    v78 = v43;
    State.wrappedValue.getter();
    v44 = v72;
    v45 = *(a1 + 112);
    v77 = *(a1 + 104);
    v78 = v45;
    sub_100002B38(&qword_10012EC18, &qword_1000EB048);
    State.wrappedValue.getter();
    v35 = v72;
    if (v44)
    {
      v34 = 0;
    }

    else
    {
      v34 = 0x3FF0000000000000;
    }
  }

  v65 = KeyPath;
  v46 = v66;
  v47 = v34;
  sub_1000035B4(v19, v66, &qword_10012F7A0, &qword_1000EBFB0);
  v48 = v67;
  sub_1000035B4(v46, v67, &qword_10012F7A0, &qword_1000EBFB0);
  v49 = (v48 + *(sub_100002B38(&qword_10012F7B8, &qword_1000EBFC8) + 48));
  *&v72 = v31;
  v50 = v69;
  v51 = v68;
  *(&v72 + 1) = v69;
  *&v73 = v68;
  v52 = v71;
  v53 = v70;
  *(&v73 + 1) = v71;
  *&v74 = v70;
  *(&v74 + 1) = KeyPath;
  *&v75 = v33;
  v54 = v33;
  *(&v75 + 1) = v47;
  *&v76 = 0;
  *(&v76 + 1) = v35;
  v55 = v35;
  v56 = v73;
  *v49 = v72;
  v49[1] = v56;
  v57 = v75;
  v49[2] = v74;
  v49[3] = v57;
  v49[4] = v76;
  v58 = v50;
  v59 = v51;
  sub_1000035B4(&v72, &v77, &qword_10012F7C0, &qword_1000EBFD0);
  sub_100005688(v19, &qword_10012F7A0, &qword_1000EBFB0);
  v77 = v31;
  v78 = v58;
  v79 = v59;
  v80 = v52;
  v81 = v53;
  v82 = v65;
  v83 = v54;
  v84 = v47;
  v85 = 0;
  v86 = v55;
  sub_100005688(&v77, &qword_10012F7C0, &qword_1000EBFD0);
  return sub_100005688(v46, &qword_10012F7A0, &qword_1000EBFB0);
}

uint64_t sub_100058A64@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v3 = type metadata accessor for TransientToolbarItem();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_100002B38(&qword_10012F7C8, &qword_1000EC008);
  __chkstk_darwin(v56);
  v7 = &v49 - v6;
  v51 = sub_100002B38(&qword_10012F7D0, &qword_1000EC010);
  __chkstk_darwin(v51);
  v9 = (&v49 - v8);
  v10 = sub_100002B38(&qword_10012F7D8, &qword_1000EC018);
  __chkstk_darwin(v10 - 8);
  v57 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v49 - v13;
  v15 = sub_100002B38(&qword_10012F7E0, &qword_1000EC020);
  __chkstk_darwin(v15);
  v17 = &v49 - v16;
  v55 = sub_100002B38(&qword_10012F7E8, &qword_1000EC028);
  v52 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v49 - v20;
  *v17 = static VerticalAlignment.center.getter();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v22 = sub_100002B38(&qword_10012F7F0, &qword_1000EC030);
  sub_10005922C(a1, &v17[*(v22 + 44)]);
  sub_1000057D8(&qword_10012F7F8, &qword_10012F7E0, &qword_1000EC020, &protocol conformance descriptor for HStack<A>);
  v53 = v21;
  View._platformFocusSection()();
  sub_100005688(v17, &qword_10012F7E0, &qword_1000EC020);
  if (sub_10005ADB4(&dispatch thunk of ZoomCoordinator.principalNavBarItem.getter))
  {
    v50 = v14;
    v23 = *(a1 + 9);
    v24 = *(a1 + 10);
    v59 = v23;
    v60 = v24;
    sub_100002B38(&qword_10012DD98, &qword_1000EA650);
    State.wrappedValue.getter();
    if (v64 <= 0.0 && (v25 = &a1[*(type metadata accessor for OverlayNavigationBar(0) + 68)], v26 = *v25, v27 = *(v25 + 1), LOBYTE(v59) = v26, v60 = v27, sub_100002B38(&qword_10012CFF0, &qword_1000ED780), State.wrappedValue.getter(), (LOBYTE(v64) & 1) != 0))
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 254;
    }

    else
    {
      sub_10005AF14(a1, &v59);
      v28 = v59;
      v29 = v60;
      v30 = v61;
      v31 = v62;
      v33 = v63;
      v35 = &a1[*(type metadata accessor for OverlayNavigationBar(0) + 68)];
      v36 = *v35;
      v37 = *(v35 + 1);
      LOBYTE(v59) = v36;
      v60 = v37;
      sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
      State.wrappedValue.getter();
      if (LOBYTE(v64) == 1)
      {
        v59 = v23;
        v60 = v24;
        State.wrappedValue.getter();
        v32 = *&v64;
      }

      else
      {
        v32 = 0x3FF0000000000000;
      }

      sub_10006F3EC(v28, v29, v30, v31, v33);
    }

    *v9 = v28;
    v9[1] = v29;
    v9[2] = v30;
    v9[3] = v31;
    v9[4] = v33;
    v9[5] = v32;
    swift_storeEnumTagMultiPayload();
    v38 = v28;
    sub_100002B38(&qword_10012F800, &qword_1000EC038);
    sub_10006F248(&qword_10012F808, &qword_10012F800, &qword_1000EC038, sub_10006F10C);
    sub_10006F348();
    v14 = v50;
    _ConditionalContent<>.init(storage:)();
    sub_10006F454(v38, v29, v30, v31, v33);
  }

  else
  {
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.shared.getter();
    dispatch thunk of ZoomCoordinator.principalNavBarItem.getter();

    type metadata accessor for ASKBagContract();
    BaseObjectGraph.inject<A>(_:)();
    TransientToolbarItem.content(bagContract:)();

    (*(v49 + 8))(v5, v50);
    v34 = *(a1 + 12);
    v59 = *(a1 + 11);
    v60 = v34;
    sub_100002B38(&qword_10012DD98, &qword_1000EA650);
    State.wrappedValue.getter();
    *&v7[*(v56 + 36)] = v64;
    sub_1000035B4(v7, v9, &qword_10012F7C8, &qword_1000EC008);
    swift_storeEnumTagMultiPayload();
    sub_100002B38(&qword_10012F800, &qword_1000EC038);
    sub_10006F248(&qword_10012F808, &qword_10012F800, &qword_1000EC038, sub_10006F10C);
    sub_10006F348();
    _ConditionalContent<>.init(storage:)();
    sub_100005688(v7, &qword_10012F7C8, &qword_1000EC008);
  }

  v39 = v52;
  v40 = v53;
  v41 = *(v52 + 16);
  v43 = v54;
  v42 = v55;
  v41(v54, v53, v55);
  v44 = v57;
  sub_1000035B4(v14, v57, &qword_10012F7D8, &qword_1000EC018);
  v45 = v58;
  v41(v58, v43, v42);
  v46 = sub_100002B38(&qword_10012F858, &qword_1000EC060);
  sub_1000035B4(v44, &v45[*(v46 + 48)], &qword_10012F7D8, &qword_1000EC018);
  sub_100005688(v14, &qword_10012F7D8, &qword_1000EC018);
  v47 = *(v39 + 8);
  v47(v40, v42);
  sub_100005688(v44, &qword_10012F7D8, &qword_1000EC018);
  return (v47)(v43, v42);
}

uint64_t sub_10005922C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v133 = sub_100002B38(&qword_10012F860, &qword_1000EC068);
  __chkstk_darwin(v133);
  v127 = &v102 - v3;
  v120 = type metadata accessor for TransientToolbarItem();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_100002B38(&qword_10012F868, &qword_1000EC070);
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v117 = &v102 - v5;
  v6 = sub_100002B38(&qword_10012F870, &qword_1000EC078);
  __chkstk_darwin(v6 - 8);
  v124 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v130 = &v102 - v9;
  v126 = sub_100002B38(&qword_10012F878, &qword_1000EC080);
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v121 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v138 = &v102 - v12;
  v129 = sub_100002B38(&qword_10012F880, &qword_1000EC088);
  __chkstk_darwin(v129);
  v131 = (&v102 - v13);
  v14 = sub_100002B38(&qword_10012F888, &qword_1000EC090);
  __chkstk_darwin(v14 - 8);
  v132 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v136 = &v102 - v17;
  v116 = sub_100002B38(&qword_10012F890, &qword_1000EC098);
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v102 - v18;
  v19 = type metadata accessor for PlainButtonStyle();
  v110 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100002B38(&qword_10012F898, &qword_1000EC0A0);
  __chkstk_darwin(v22);
  v24 = &v102 - v23;
  v25 = sub_100002B38(&qword_10012F8A0, &qword_1000EC0A8);
  v111 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v102 - v26;
  v112 = sub_100002B38(&qword_10012F8A8, &qword_1000EC0B0);
  __chkstk_darwin(v112);
  v113 = &v102 - v28;
  v29 = sub_100002B38(&qword_10012F8B0, &qword_1000EC0B8);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v102 - v31;
  v33 = sub_100002B38(&qword_10012F8B8, &qword_1000EC0C0);
  __chkstk_darwin(v33 - 8);
  v128 = &v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v137 = &v102 - v36;
  v37 = *a1;
  v135 = a1;
  if ((v37 & 1) != 0 || (v38 = *(a1 + 1)) == 0)
  {
    (*(v30 + 56))(v137, 1, 1, v29);
  }

  else
  {
    v105 = v25;
    v39 = *(a1 + 2);
    v104 = v19;
    v40 = v38;
    v41 = swift_allocObject();
    v103 = v27;
    v109 = v40;
    *(v41 + 16) = v40;
    *(v41 + 24) = v39;
    v108 = v39;
    sub_10000519C(v40, v39);

    sub_100002B38(&qword_10012F8F8, &qword_1000EC0E0);
    v107 = v29;
    v42 = sub_100005144(&qword_10012F900, &qword_1000EC0E8);
    v106 = v32;
    v43 = v42;
    v44 = sub_10006F508();
    v142 = v43;
    v143 = v44;
    swift_getOpaqueTypeConformance2();
    Button.init(action:label:)();
    v45 = a1[2];
    KeyPath = swift_getKeyPath();
    v47 = swift_allocObject();
    *(v47 + 16) = (v45 & 1) == 0;
    v48 = &v24[*(v22 + 36)];
    *v48 = KeyPath;
    v48[1] = sub_100070378;
    v48[2] = v47;
    PlainButtonStyle.init()();
    v49 = sub_10006F9A8();
    v50 = sub_10006778C(&qword_10012CE30, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v51 = v103;
    v52 = v104;
    View.buttonStyle<A>(_:)();
    (*(v110 + 8))(v21, v52);
    v53 = sub_100005688(v24, &qword_10012F898, &qword_1000EC0A0);
    v145 = &type metadata for Circle;
    v146 = sub_10006FA8C(v53, v54, v55);
    *&v139 = v22;
    *(&v139 + 1) = v52;
    v140 = v49;
    v141 = v50;
    swift_getOpaqueTypeConformance2();
    v56 = v114;
    v57 = v105;
    StrokeFocusEffect.init(shape:)();
    sub_1000057D8(&qword_10012F998, &qword_10012F890, &qword_1000EC098, &protocol conformance descriptor for StrokeFocusEffect<A>);
    v58 = v113;
    v59 = v116;
    View.focusEffect<A>(_:)();
    (*(v115 + 8))(v56, v59);
    (*(v111 + 8))(v51, v57);
    LOBYTE(v59) = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v60 = v58 + *(v112 + 36);
    *v60 = v59;
    *(v60 + 8) = v61;
    *(v60 + 16) = v62;
    *(v60 + 24) = v63;
    *(v60 + 32) = v64;
    *(v60 + 40) = 0;
    v65 = &v135[*(type metadata accessor for OverlayNavigationBar(0) + 84)];
    LODWORD(v116) = *v65;
    v66 = *(v65 + 1);
    v67 = v65[16];
    LOBYTE(v142) = v116;
    v143 = v66;
    v144 = v67;
    sub_100002B38(&qword_10012F9A0, &qword_1000EC140);
    FocusState.projectedValue.getter();
    sub_10006FAE0();
    v68 = v106;
    View.focused(_:)();

    sub_100005688(v58, &qword_10012F8A8, &qword_1000EC0B0);
    LOBYTE(v142) = v116;
    v143 = v66;
    v144 = v67;
    FocusState.wrappedValue.getter();
    sub_10006C574(v109, v108);
    v69 = v107;
    *(v68 + *(v107 + 36)) = v139;
    v70 = v137;
    sub_100014830(v68, v137, &qword_10012F8B0, &qword_1000EC0B8);
    (*(v30 + 56))(v70, 0, 1, v69);
  }

  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  v71 = dispatch thunk of ZoomCoordinator.topTrailingNavBarItems.getter();

  v72 = *(v71 + 16);

  v73 = v136;
  v74 = v130;
  if (!v72 && sub_10005ADB4(&dispatch thunk of ZoomCoordinator.topTrailingTransientNavBarItem.getter))
  {
    type metadata accessor for OverlayNavigationBar(0);
    sub_100002B38(&qword_10012F780, &qword_1000EBF80);
    State.wrappedValue.getter();
    if (v141)
    {
      sub_10003FB38(&v139, &v142);
      v75 = sub_10002D754(&v142, v145);
      v76 = __chkstk_darwin(v75);
      (*(v78 + 16))(&v102 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0), v76);
      *v131 = AnyView.init<A>(_:)();
      swift_storeEnumTagMultiPayload();
      sub_1000057D8(&qword_10012F8E8, &qword_10012F860, &qword_1000EC068, &protocol conformance descriptor for TupleView<A>);
      _ConditionalContent<>.init(storage:)();
      sub_10002E6CC(&v142);
      v79 = v73;
      goto LABEL_14;
    }

    sub_100005688(&v139, &qword_10012F438, &qword_1000EBCA8);
  }

  static ZoomCoordinator.shared.getter();
  v80 = dispatch thunk of ZoomCoordinator.topTrailingNavBarItems.getter();

  v142 = v80;
  sub_100002B38(&qword_10012F8C0, &qword_1000EC0C8);
  type metadata accessor for OverlayPageToolbarItemView();
  sub_1000057D8(&qword_10012F8C8, &qword_10012F8C0, &qword_1000EC0C8, &protocol conformance descriptor for [A]);
  sub_10006778C(&qword_10012F8D0, &type metadata accessor for OverlayPageToolbarItemView, &protocol conformance descriptor for OverlayPageToolbarItemView);
  sub_10006778C(&qword_10012F8D8, &type metadata accessor for PageToolbarItem, &protocol conformance descriptor for PageToolbarItem);
  ForEach<>.init(_:content:)();
  if (sub_10005ADB4(&dispatch thunk of ZoomCoordinator.topTrailingTransientNavBarItem.getter))
  {
    v81 = 1;
    v82 = v123;
    v83 = v122;
  }

  else
  {
    static ZoomCoordinator.shared.getter();
    v84 = v118;
    dispatch thunk of ZoomCoordinator.topTrailingTransientNavBarItem.getter();

    type metadata accessor for ASKBagContract();
    BaseObjectGraph.inject<A>(_:)();
    v85 = v117;
    TransientToolbarItem.content(bagContract:)();

    (*(v119 + 8))(v84, v120);
    v83 = v122;
    v82 = v123;
    (*(v122 + 32))(v74, v85, v123);
    v81 = 0;
  }

  (*(v83 + 56))(v74, v81, 1, v82);
  v86 = v74;
  v87 = v125;
  v88 = *(v125 + 16);
  v89 = v121;
  v90 = v126;
  v88(v121, v138, v126);
  v91 = v124;
  sub_1000035B4(v86, v124, &qword_10012F870, &qword_1000EC078);
  v92 = v127;
  v88(v127, v89, v90);
  v93 = sub_100002B38(&qword_10012F8E0, &qword_1000EC0D0);
  sub_1000035B4(v91, v92 + *(v93 + 48), &qword_10012F870, &qword_1000EC078);
  sub_100005688(v91, &qword_10012F870, &qword_1000EC078);
  v94 = *(v87 + 8);
  v94(v89, v90);
  sub_1000035B4(v92, v131, &qword_10012F860, &qword_1000EC068);
  swift_storeEnumTagMultiPayload();
  sub_1000057D8(&qword_10012F8E8, &qword_10012F860, &qword_1000EC068, &protocol conformance descriptor for TupleView<A>);
  v79 = v136;
  _ConditionalContent<>.init(storage:)();
  sub_100005688(v92, &qword_10012F860, &qword_1000EC068);
  sub_100005688(v86, &qword_10012F870, &qword_1000EC078);
  v94(v138, v90);
LABEL_14:
  v95 = v137;
  v96 = v128;
  sub_1000035B4(v137, v128, &qword_10012F8B8, &qword_1000EC0C0);
  v97 = v132;
  sub_1000035B4(v79, v132, &qword_10012F888, &qword_1000EC090);
  v98 = v134;
  sub_1000035B4(v96, v134, &qword_10012F8B8, &qword_1000EC0C0);
  v99 = sub_100002B38(&qword_10012F8F0, &qword_1000EC0D8);
  v100 = v98 + *(v99 + 48);
  *v100 = 0;
  *(v100 + 8) = 1;
  sub_1000035B4(v97, v98 + *(v99 + 64), &qword_10012F888, &qword_1000EC090);
  sub_100005688(v79, &qword_10012F888, &qword_1000EC090);
  sub_100005688(v95, &qword_10012F8B8, &qword_1000EC0C0);
  sub_100005688(v97, &qword_10012F888, &qword_1000EC090);
  return sub_100005688(v96, &qword_10012F8B8, &qword_1000EC0C0);
}

uint64_t sub_10005A478@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v19 = type metadata accessor for FocusInteractions();
  v17 = *(v19 - 8);
  __chkstk_darwin(v19);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002B38(&qword_10012F900, &qword_1000EC0E8);
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = Image.init(systemName:)();
  v7 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v9 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v25 = 0;
  *&v20 = v6;
  *(&v20 + 1) = KeyPath;
  *&v21 = v7;
  BYTE8(v21) = v9;
  *&v22 = v10;
  *(&v22 + 1) = v11;
  *&v23 = v12;
  *(&v23 + 1) = v13;
  v24 = 0;
  Solarium.init()();
  sub_100002B38(&qword_10012F910, &qword_1000EC0F0);
  sub_100002B38(&qword_10012F918, &qword_1000EC0F8);
  sub_100002B38(&qword_10012F920, &unk_1000EC100);
  sub_10006F668();
  sub_10006F6F4();
  sub_10006F838();
  View.staticIf<A, B, C>(_:then:else:)();
  v26[2] = v22;
  v26[3] = v23;
  v27 = v24;
  v26[0] = v20;
  v26[1] = v21;
  sub_100005688(v26, &qword_10012F910, &qword_1000EC0F0);
  v14 = &v5[*(v3 + 36)];
  sub_100002B38(&qword_10012F970, &qword_1000EC130);
  static ContentShapeKinds.interaction.getter();
  *v14 = 0;
  static FocusInteractions.automatic.getter();
  sub_10006F508();
  View.componentFocusable(_:interactions:)();
  (*(v17 + 8))(v2, v19);
  return sub_100005688(v5, &qword_10012F900, &qword_1000EC0E8);
}

uint64_t sub_10005A778(__int128 *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v23 = a1[2];
  v24 = v2;
  v3 = a1[1];
  v22[0] = *a1;
  v22[1] = v3;
  v4 = *a1;
  v19 = a1[2];
  v20 = a1[3];
  v17 = *a1;
  v18 = a1[1];
  v16 = v23;
  v25 = *(a1 + 64);
  v21 = *(a1 + 64);
  v14 = v4;
  v15 = v1;
  sub_1000035B4(v22, &v28, &qword_10012F910, &qword_1000EC0F0);
  sub_1000035B4(v22, &v28, &qword_10012F910, &qword_1000EC0F0);
  sub_100002B38(&qword_10012F9B0, &qword_1000EC148);
  v5 = sub_100002B38(&qword_10012F920, &unk_1000EC100);
  sub_100069844(v5, v6, v7);
  v8 = sub_100005144(&qword_10012F910, &qword_1000EC0F0);
  v9 = sub_10006F668();
  v12 = sub_10006F7E4(v9, v10, v11);
  *&v28 = v8;
  *(&v28 + 1) = &type metadata for Circle;
  *&v29 = v9;
  *(&v29 + 1) = v12;
  swift_getOpaqueTypeConformance2();
  sub_10006F838();
  StaticIf<>.init(_:then:else:)();
  v26[2] = v16;
  v26[3] = v20;
  v27 = v21;
  v26[0] = v14;
  v26[1] = v15;
  sub_100005688(v26, &qword_10012F910, &qword_1000EC0F0);
  v30 = v19;
  v31 = v20;
  v32 = v21;
  v28 = v17;
  v29 = v18;
  return sub_100005688(&v28, &qword_10012F910, &qword_1000EC0F0);
}

uint64_t sub_10005A980@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = type metadata accessor for Material._GlassVariant();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Material();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _Glass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v24 = a1[2];
  v25 = v15;
  v26 = *(a1 + 64);
  v16 = a1[1];
  v22 = *a1;
  v23 = v16;
  static Material._GlassVariant.controlCenter.getter();
  static Material._glass(_:)();
  (*(v4 + 8))(v6, v3);
  static _Glass.explicit(_:)();
  (*(v8 + 8))(v10, v7);
  sub_100002B38(&qword_10012F910, &qword_1000EC0F0);
  v17 = sub_10006F668();
  sub_10006F7E4(v17, v18, v19);
  View._glassEffect<A>(_:in:)();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_10005AC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v13 = *(a1 + 64);
  v5 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v5;
  v6 = a2 + *(sub_100002B38(&qword_10012F950, &unk_1000EC118) + 36);
  static Material.ultraThin.getter();
  v7 = static Edge.Set.all.getter();
  *(v6 + *(sub_100002B38(&qword_10012CD40, &qword_1000E9070) + 36)) = v7;
  *(a2 + 64) = *(a1 + 64);
  v8 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v8;
  v9 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v9;
  *(a2 + *(sub_100002B38(&qword_10012F920, &unk_1000EC100) + 36)) = 256;
  return sub_1000035B4(v12, v11, &qword_10012F910, &qword_1000EC0F0);
}

uint64_t sub_10005ACE8(uint64_t a1)
{
  v2 = type metadata accessor for PageToolbarItem();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return OverlayPageToolbarItemView.init(item:)();
}

BOOL sub_10005ADB4(void (*a1)(void))
{
  v2 = type metadata accessor for TransientToolbarItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  a1();

  if ((*(v3 + 88))(v5, v2) == enum case for TransientToolbarItem.title(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;
    v6 = v5[1];

    v8 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v8 = v7 & 0xFFFFFFFFFFFFLL;
    }

    return v8 == 0;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

void sub_10005AF14(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for OverlayNavigationBar(0) + 64));
  v4 = *(v3 + 4);
  v5 = v3[1];
  v21 = *v3;
  v22 = v5;
  v23 = v4;
  sub_100002B38(&qword_10012F770, &qword_1000EBF70);
  State.wrappedValue.getter();
  if (v19)
  {
    v6 = v17;
    static Font.headline.getter();
    LOBYTE(v21) = v18 & 1;
    v7 = Text.font(_:)();
    v9 = v8;
    v11 = v10;
    v13 = v12;

    *&v17 = v7;
    *(&v17 + 1) = v9;
    v18 = v11 & 1;
    v19 = v13;
    v20 = 0;
    sub_1000054F0(v7, v9, v11 & 1);

    sub_1000054F0(v7, v9, v11 & 1);

    _ConditionalContent<>.init(storage:)();
    sub_1000054E0(v6, *(&v6 + 1), v21);

    sub_1000054E0(v7, v9, v11 & 1);

    sub_1000054E0(v7, v9, v11 & 1);

    v14 = v21;
    v15 = v22;
    v16 = v23;
  }

  else
  {
    sub_100002B38(&qword_10012F780, &qword_1000EBF80);
    State.wrappedValue.getter();
    sub_100005688(&v17, &qword_10012F438, &qword_1000EBCA8);
    v14 = 0uLL;
    v16 = -1;
    v15 = 0uLL;
  }

  *a2 = v14;
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;
}

void sub_10005B220(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for OverlayNavigationBar(0) + 64));
  v4 = *(v3 + 4);
  v5 = v3[1];
  v13 = *v3;
  v14 = v5;
  v15 = v4;
  sub_100002B38(&qword_10012F770, &qword_1000EBF70);
  State.wrappedValue.getter();
  if (v11)
  {
    v10 &= 1u;
    v12 = 0;
    _ConditionalContent<>.init(storage:)();
    v6 = v13;
    v7 = v14;
    v8 = v15;
  }

  else
  {
    sub_100002B38(&qword_10012F780, &qword_1000EBF80);
    State.wrappedValue.getter();
    sub_100005688(&v9, &qword_10012F438, &qword_1000EBCA8);
    v6 = 0uLL;
    v8 = -1;
    v7 = 0uLL;
  }

  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
}

void sub_10005B464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002B38(&qword_10012F160, &qword_1000EBA58);
  Binding.wrappedValue.getter();
  if (LOBYTE(v9) == 1)
  {
    type metadata accessor for OverlayNavigationBar(0);
    sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
    State.wrappedValue.getter();
    ZoomCoordinator.ScrollGeometry.contentInsetTop.getter();
    if (v3 > 0.0)
    {
      ZoomCoordinator.ScrollGeometry.contentOffsetY.getter();
      v5 = v4;
      ZoomCoordinator.ScrollGeometry.contentInsetTop.getter();
      v7 = v5 + v6;
      if (v7 < 0.0)
      {
        v9 = -v7;
        sub_100002B38(&qword_10012EC18, &qword_1000EB048);
        State.wrappedValue.setter();
      }

      State.wrappedValue.getter();
      if (v7 <= 54.0 && (LOBYTE(v9) & 1) != 0 || (State.wrappedValue.getter(), v7 >= 56.0) && (LOBYTE(v9) & 1) == 0)
      {

        State.wrappedValue.getter();
        State.wrappedValue.setter();

        __chkstk_darwin(v8);
        static Animation.default.getter();
        withAnimation<A>(_:_:)();
      }
    }
  }
}

uint64_t sub_10005B6B0()
{
  sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
  State.wrappedValue.getter();
  sub_100002B38(&qword_10012DD98, &qword_1000EA650);
  return State.wrappedValue.setter();
}

double sub_10005B764(uint64_t a1, char *a2, uint64_t a3)
{
  sub_100002B38(&qword_10012F160, &qword_1000EBA58);
  v3 = Binding.wrappedValue.getter();
  if (v5 == 1)
  {
    __chkstk_darwin(v3);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

double sub_10005B840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-v5];
  v7 = *(a3 + 40);
  v8 = *(a3 + 48);
  v16 = *(a3 + 32);
  v17 = v7;
  v18 = v8;
  sub_100002B38(&qword_10012F160, &qword_1000EBA58);
  Binding.wrappedValue.getter();
  if (v15[7] == 1 && *(a3 + 2) == 1)
  {
    v10 = *(a3 + 8);
    if (v10)
    {
      v11 = *(a3 + 16);
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
      type metadata accessor for MainActor();
      sub_10000519C(v10, v11);

      v13 = static MainActor.shared.getter();
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = &protocol witness table for MainActor;
      v14[4] = v10;
      v14[5] = v11;
      sub_100014BBC(0, 0, v6, &unk_1000EBF90, v14);
      sub_10006C574(v10, v11);
    }
  }

  return result;
}

uint64_t sub_10005B9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005BA74, v7, v6);
}

uint64_t sub_10005BA74()
{

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100011F80(v1, qword_100135C88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "OverlayNavigationBar: popping current view due to controller back button press.", v4, 2u);
  }

  v5 = *(v0 + 16);

  v5();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10005BB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = type metadata accessor for ToolbarItemPlacement();
  v57 = *(v60 - 8);
  __chkstk_darwin(v60);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ToolbarTitleDisplayMode();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v52 = &v51 - v9;
  v10 = type metadata accessor for ToolbarProxy_V1();
  v61 = *(v10 - 8);
  __chkstk_darwin(v10);
  v59 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002B38(&qword_10012E960, &qword_1000EAD08);
  __chkstk_darwin(v12 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  __chkstk_darwin(v18);
  v20 = &v51 - v19;
  v21 = type metadata accessor for NavigationPopEventCoordinator.Container(0);
  sub_1000035B4(a2 + *(v21 + 20), v20, &qword_10012E960, &qword_1000EAD08);
  v58 = type metadata accessor for OverlayNavigationBar(0);
  sub_1000035B4(v20, v17, &qword_10012E960, &qword_1000EAD08);
  sub_100002B38(&qword_10012F598, &qword_1000EBE28);
  State.wrappedValue.setter();
  sub_100005688(v20, &qword_10012E960, &qword_1000EAD08);
  State.wrappedValue.getter();
  v22 = v61;
  if ((*(v61 + 48))(v14, 1, v10) == 1)
  {
    v23 = &qword_10012E960;
    v24 = &qword_1000EAD08;
    v25 = v14;
  }

  else
  {
    v26 = *(v22 + 32);
    v51 = v10;
    v26(v59, v14, v10);
    v27 = ToolbarProxy_V1.title.getter();
    v28 = v58;
    v29 = (a3 + *(v58 + 64));
    v30 = *(v29 + 4);
    v31 = v29[1];
    v63 = *v29;
    v64 = v31;
    v65 = v30;
    v62[0] = v27;
    v62[1] = v32;
    v62[2] = v33;
    v62[3] = v34;
    sub_100002B38(&qword_10012F770, &qword_1000EBF70);
    State.wrappedValue.setter();
    v35 = v52;
    ToolbarProxy_V1.titleDisplayMode.getter();
    v36 = v53;
    static ToolbarTitleDisplayMode.large.getter();
    v37 = static ToolbarTitleDisplayMode.== infix(_:_:)();
    v38 = *(v54 + 8);
    v39 = v36;
    v40 = v55;
    v38(v39, v55);
    v38(v35, v40);
    v41 = (a3 + *(v28 + 68));
    v42 = *v41;
    v43 = *(v41 + 1);
    LOBYTE(v63) = v42;
    *(&v63 + 1) = v43;
    LOBYTE(v62[0]) = v37 & 1;
    sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
    State.wrappedValue.setter();
    v44 = v56;
    static ToolbarItemPlacement.topBarTrailing.getter();
    v55 = sub_100002B38(&qword_10012F778, &qword_1000EBF78);
    *(&v64 + 1) = v55;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v65 = OpaqueTypeConformance2;
    v54 = OpaqueTypeConformance2;
    sub_100012854(&v63);
    ToolbarProxy_V1.subscript.getter();
    v46 = *(v57 + 8);
    v47 = v60;
    v46(v44, v60);
    sub_1000035B4(&v63, v62, &qword_10012F438, &qword_1000EBCA8);
    v57 = sub_100002B38(&qword_10012F780, &qword_1000EBF80);
    State.wrappedValue.setter();
    sub_100005688(&v63, &qword_10012F438, &qword_1000EBCA8);
    static ToolbarItemPlacement.largeTitle.getter();
    v48 = v55;
    *(&v64 + 1) = v55;
    v65 = OpaqueTypeConformance2;
    sub_100012854(&v63);
    v49 = v59;
    ToolbarProxy_V1.subscript.getter();
    v46(v44, v47);
    sub_1000035B4(&v63, v62, &qword_10012F438, &qword_1000EBCA8);
    State.wrappedValue.setter();
    sub_100005688(&v63, &qword_10012F438, &qword_1000EBCA8);
    static ToolbarItemPlacement.principal.getter();
    *(&v64 + 1) = v48;
    v65 = v54;
    sub_100012854(&v63);
    ToolbarProxy_V1.subscript.getter();
    v46(v44, v60);
    sub_1000035B4(&v63, v62, &qword_10012F438, &qword_1000EBCA8);
    State.wrappedValue.setter();
    (*(v61 + 8))(v49, v51);
    v25 = &v63;
    v23 = &qword_10012F438;
    v24 = &qword_1000EBCA8;
  }

  return sub_100005688(v25, v23, v24);
}

uint64_t sub_10005C210@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v92 = sub_100002B38(&qword_10012E960, &qword_1000EAD08);
  __chkstk_darwin(v92);
  v91 = &v81[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v81[-v6];
  v93 = sub_100002B38(&qword_10012F410, &qword_1000EBC80);
  __chkstk_darwin(v93);
  v9 = &v81[-v8];
  v10 = sub_100002B38(&qword_10012F418, &qword_1000EBC88);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v81[-v12];
  v14 = sub_100002B38(&qword_10012F420, &qword_1000EBC90);
  __chkstk_darwin(v14);
  v16 = &v81[-v15];
  v17 = sub_100002B38(&qword_10012F428, &qword_1000EBC98);
  v21.n128_f64[0] = __chkstk_darwin(v17);
  if (*v2)
  {
    v83 = v13;
    v84 = v11;
    v85 = v10;
    v86 = &v81[-v20];
    v87 = v14;
    v88 = v16;
    v94 = v19;
    v89 = v18;
    v90 = a1;
    v95[0] = *(v2 + 72);
    sub_100002B38(&qword_10012CFF0, &qword_1000ED780);
    State.wrappedValue.getter();
    v82 = LOBYTE(v103[0]);
    v95[0] = *(v2 + 88);
    State.wrappedValue.getter();
    v22 = v103[0];
    v23 = *(v2 + 8);
    v95[0] = *(v2 + 16);
    LOBYTE(v95[1]) = *(v2 + 32);

    sub_100002B38(&qword_10012F160, &qword_1000EBA58);
    Binding.projectedValue.getter();
    v24 = v103[0];
    v25 = v103[1];
    v26 = type metadata accessor for ToolbarProxy_V1();
    (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
    v96 = 0;
    memset(v95, 0, sizeof(v95));
    v104 = 0;
    memset(v103, 0, sizeof(v103));
    v102 = 0;
    memset(v101, 0, sizeof(v101));
    *v9 = v82;
    v9[1] = v22;
    v9[2] = 1;
    *(v9 + 1) = sub_10005CDF0;
    *(v9 + 2) = 0;
    *(v9 + 3) = v23;
    *(v9 + 2) = v24;
    v9[48] = v25;
    LOBYTE(v97) = 0;
    State.init(wrappedValue:)();
    v27 = *(&v99[0] + 1);
    v9[56] = v99[0];
    *(v9 + 8) = v27;
    *&v97 = 0;
    State.init(wrappedValue:)();
    v28 = *(&v99[0] + 1);
    *(v9 + 9) = *&v99[0];
    *(v9 + 10) = v28;
    *&v97 = 0;
    State.init(wrappedValue:)();
    v29 = *(&v99[0] + 1);
    *(v9 + 11) = *&v99[0];
    *(v9 + 12) = v29;
    *&v97 = 0;
    State.init(wrappedValue:)();
    v30 = *(&v99[0] + 1);
    *(v9 + 13) = *&v99[0];
    *(v9 + 14) = v30;
    *&v97 = 0;
    State.init(wrappedValue:)();
    v31 = *(&v99[0] + 1);
    *(v9 + 15) = *&v99[0];
    *(v9 + 16) = v31;
    v32 = type metadata accessor for OverlayNavigationBar(0);
    sub_1000035B4(v7, v91, &qword_10012E960, &qword_1000EAD08);
    State.init(wrappedValue:)();
    sub_100005688(v7, &qword_10012E960, &qword_1000EAD08);
    v33 = &v9[v32[16]];
    v97 = 0u;
    v98 = 0u;
    sub_100002B38(&qword_10012F430, &qword_1000EBCA0);
    State.init(wrappedValue:)();
    v34 = v100;
    v35 = v99[1];
    *v33 = v99[0];
    *(v33 + 1) = v35;
    *(v33 + 4) = v34;
    v36 = &v9[v32[17]];
    LOBYTE(v97) = 0;
    State.init(wrappedValue:)();
    v37 = *(&v99[0] + 1);
    *v36 = v99[0];
    *(v36 + 1) = v37;
    sub_1000035B4(v95, v99, &qword_10012F438, &qword_1000EBCA8);
    sub_100002B38(&qword_10012F438, &qword_1000EBCA8);
    State.init(wrappedValue:)();
    sub_100005688(v95, &qword_10012F438, &qword_1000EBCA8);
    sub_1000035B4(v103, v99, &qword_10012F438, &qword_1000EBCA8);
    State.init(wrappedValue:)();
    sub_100005688(v103, &qword_10012F438, &qword_1000EBCA8);
    sub_1000035B4(v101, v99, &qword_10012F438, &qword_1000EBCA8);
    State.init(wrappedValue:)();
    sub_100005688(v101, &qword_10012F438, &qword_1000EBCA8);
    v38 = &v9[v32[21]];
    *v38 = FocusState.init<>()() & 1;
    *(v38 + 1) = v39;
    v38[16] = v40 & 1;
    v42 = sub_100051324(sub_100069EEC, &type metadata for ChildZoomTransition, v40, v41);
    *&v9[*(sub_100002B38(&qword_10012F440, &qword_1000EBCB0) + 36)] = v42;
    v43 = swift_allocObject();
    v44 = *(v2 + 80);
    *(v43 + 80) = *(v2 + 64);
    *(v43 + 96) = v44;
    *(v43 + 112) = *(v2 + 96);
    *(v43 + 128) = *(v2 + 112);
    v45 = *(v2 + 16);
    *(v43 + 16) = *v2;
    *(v43 + 32) = v45;
    v46 = *(v2 + 48);
    *(v43 + 48) = *(v2 + 32);
    *(v43 + 64) = v46;
    v47 = &v9[*(sub_100002B38(&qword_10012F448, &qword_1000EBCB8) + 36)];
    *v47 = sub_10006D180;
    v47[1] = v43;
    v48 = swift_allocObject();
    v49 = *(v2 + 80);
    *(v48 + 80) = *(v2 + 64);
    *(v48 + 96) = v49;
    *(v48 + 112) = *(v2 + 96);
    *(v48 + 128) = *(v2 + 112);
    v50 = *(v2 + 16);
    *(v48 + 16) = *v2;
    *(v48 + 32) = v50;
    v51 = *(v2 + 48);
    *(v48 + 48) = *(v2 + 32);
    *(v48 + 64) = v51;
    v52 = &v9[*(sub_100002B38(&qword_10012F450, &qword_1000EBCC0) + 36)];
    *v52 = sub_10006D1D8;
    v52[1] = v48;
    v53 = swift_allocObject();
    v54 = *(v2 + 80);
    *(v53 + 80) = *(v2 + 64);
    *(v53 + 96) = v54;
    *(v53 + 112) = *(v2 + 96);
    *(v53 + 128) = *(v2 + 112);
    v55 = *(v2 + 16);
    *(v53 + 16) = *v2;
    *(v53 + 32) = v55;
    v56 = *(v2 + 48);
    *(v53 + 48) = *(v2 + 32);
    *(v53 + 64) = v56;
    v57 = &v9[*(sub_100002B38(&qword_10012F458, &qword_1000EBCC8) + 36)];
    *v57 = sub_10006D230;
    v57[1] = v53;
    v57[2] = 0;
    v57[3] = 0;
    v103[0] = *(v2 + 104);
    sub_100069B0C(v2, v95);
    sub_100069B0C(v2, v95);
    sub_100069B0C(v2, v95);
    sub_100002B38(&qword_10012DD98, &qword_1000EA650);
    State.wrappedValue.getter();
    *&v9[*(v93 + 36)] = *&v95[0];
    if (qword_10012CBB8 != -1)
    {
      swift_once();
    }

    v58 = qword_100135BC0;
    swift_getKeyPath();
    *&v95[0] = v58;
    sub_10006778C(&qword_10012EA10, type metadata accessor for NavigationPopEventCoordinator, &unk_1000EADB0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v59 = *(v58 + 24);
    *&v103[0] = *(v58 + 16);
    *(&v103[0] + 1) = v59;
    v60 = swift_allocObject();
    v61 = *(v2 + 80);
    *(v60 + 80) = *(v2 + 64);
    *(v60 + 96) = v61;
    *(v60 + 112) = *(v2 + 96);
    *(v60 + 128) = *(v2 + 112);
    v62 = *(v2 + 16);
    *(v60 + 16) = *v2;
    *(v60 + 32) = v62;
    v63 = *(v2 + 48);
    *(v60 + 48) = *(v2 + 32);
    *(v60 + 64) = v63;
    sub_100069B0C(v2, v95);
    sub_10006D240();

    v64 = v83;
    View.onChange<A>(of:initial:_:)();

    sub_100005688(v9, &qword_10012F410, &qword_1000EBC80);
    v103[0] = *(v2 + 40);
    *(v103 + 9) = *(v2 + 49);
    v95[0] = *(v2 + 40);
    *(v95 + 9) = *(v2 + 49);
    sub_100002B38(&qword_10012F4B0, &qword_1000EBCE0);
    Binding.wrappedValue.getter();
    v65 = *(v2 + 1) & ~BYTE8(v101[0]);
    v95[0] = v103[0];
    *(v95 + 9) = *(v103 + 9);
    Binding.wrappedValue.getter();
    if (BYTE8(v101[0]))
    {
      v66 = 0.0;
    }

    else
    {
      v66 = *v101;
    }

    v67 = v88;
    (*(v84 + 32))(v88, v64, v85);
    v68 = v67 + *(v87 + 36);
    *v68 = v65 & 1;
    *(v68 + 8) = v66;
    v95[0] = v103[0];
    *(v95 + 9) = *(v103 + 9);
    Binding.wrappedValue.getter();
    v69 = swift_allocObject();
    v70 = *(v2 + 80);
    *(v69 + 80) = *(v2 + 64);
    *(v69 + 96) = v70;
    *(v69 + 112) = *(v2 + 96);
    *(v69 + 128) = *(v2 + 112);
    v71 = *(v2 + 16);
    *(v69 + 16) = *v2;
    *(v69 + 32) = v71;
    v72 = *(v2 + 48);
    *(v69 + 48) = *(v2 + 32);
    *(v69 + 64) = v72;
    sub_100069B0C(v2, v95);
    v73 = sub_10006D628();
    sub_10006D704(v73, v74, v75);
    v76 = v86;
    View.onChange<A>(of:initial:_:)();

    sub_100005688(v67, &qword_10012F420, &qword_1000EBC90);
    v78 = v89;
    v77 = v90;
    (*(v94 + 32))(v90, v76, v89);
    return (*(v94 + 56))(v77, 0, 1, v78);
  }

  else
  {
    v80 = *(v19 + 56);

    return v80(a1, 1, 1, v21);
  }
}

uint64_t sub_10005CDF0()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10012CBB8 != -1)
  {
    swift_once();
  }

  UUID.init()();
  v4 = UUID.uuidString.getter();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return sub_100066618(v4, v6);
}

double sub_10005CF0C(uint64_t a1)
{
  static Animation.easeOut(duration:)();
  withAnimation<A>(_:_:)();

  return result;
}

double sub_10005CF88(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 1))
  {
    v3 = a2[1];
    if ((v3 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(v3) & 0xF;
    }

    else
    {
      v4 = *a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      v5 = static Animation.easeIn(duration:)();
      __chkstk_darwin(v5);
      withAnimation<A>(_:_:)();
    }
  }

  return result;
}

double sub_10005D048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 1))
  {
    sub_100002B38(&qword_10012F4B0, &qword_1000EBCE0);
    Binding.wrappedValue.getter();
    if ((v6 & 1) == 0 || (Binding.wrappedValue.getter(), v6 == 1) && !v5)
    {
      v4 = static Animation.easeIn(duration:)();
      __chkstk_darwin(v4);
      withAnimation<A>(_:_:)();
    }
  }

  return result;
}

void sub_10005D214()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1)
  {
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.cornerRadius.getter();
  }

  else
  {
    v2 = 0;
  }

  qword_10012E788 = v2;
}

uint64_t sub_10005D28C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v45 = a1;
  v49 = a5;
  v8 = sub_100002B38(&qword_10012F180, &qword_1000EBA90);
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin(v8);
  v41 = &v32 - v9;
  v44 = sub_100002B38(&qword_10012F188, &qword_1000EBA98);
  __chkstk_darwin(v44);
  v43 = &v32 - v10;
  v11 = a2 & 1;
  v12 = 0.0;
  if (a2)
  {
    v12 = 1.0;
  }

  v56 = v12;
  v57 = 0;
  v58 = 0;
  v55 = a2 & 1;
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = a2;
  v42 = a2;
  v15 = (a2 >> 8) & 1;
  *(v13 + 17) = v15;
  v16 = HIWORD(v14) & 1;
  *(v13 + 18) = BYTE2(v14) & 1;
  *(v13 + 24) = a3;
  v34 = a4;
  v17 = a4 & 1;
  *(v13 + 32) = v17;
  v18 = swift_allocObject();
  v46 = v11;
  *(v18 + 16) = v11;
  *(v18 + 17) = v15;
  *(v18 + 18) = v16;
  v33 = a3;
  *(v18 + 24) = a3;
  *(v18 + 32) = v17;
  v40 = sub_100002B38(&qword_10012F190, &qword_1000EBAA0);
  v39 = sub_100002B38(&qword_10012F198, &qword_1000EBAA8);
  v38 = sub_100002B38(&qword_10012F1A0, &qword_1000EBAB0);
  v37 = sub_1000057D8(&qword_10012F1A8, &qword_10012F190, &qword_1000EBAA0, &protocol conformance descriptor for _ViewModifier_Content<A>);
  v36 = sub_10006C9CC();
  v35 = sub_100005144(&qword_10012F218, &qword_1000EBAE8);
  v19 = sub_100005144(&qword_10012F220, &qword_1000EBAF0);
  v20 = sub_100005144(&qword_10012F228, &qword_1000EBAF8);
  v21 = sub_100005144(&qword_10012F230, &qword_1000EBB00);
  v22 = sub_1000057D8(&qword_10012F238, &qword_10012F228, &qword_1000EBAF8, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v23 = sub_1000057D8(&qword_10012F240, &qword_10012F230, &qword_1000EBB00, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v50 = &type metadata for ParentPushPopAnimator.Track;
  v51 = v20;
  v52 = v21;
  v53 = v22;
  v54 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_1000057D8(&qword_10012F248, &qword_10012F220, &qword_1000EBAF0, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v50 = &type metadata for ParentPushPopAnimator.Track;
  v51 = v35;
  v52 = v19;
  v53 = OpaqueTypeConformance2;
  v26 = v41;
  v54 = v25;
  swift_getOpaqueTypeConformance2();
  View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)();

  if (v42)
  {
    v27 = (v33 == 1) & v34;
  }

  else
  {
    v27 = 0;
  }

  v28 = v43;
  (*(v47 + 32))(v43, v26, v48);
  v29 = v28 + *(v44 + 36);
  *v29 = 0;
  *(v29 + 8) = v27;
  v30 = v49;
  sub_100014830(v28, v49, &qword_10012F188, &qword_1000EBA98);
  result = sub_100002B38(&qword_10012F250, &qword_1000EBB08);
  *(v30 + *(result + 36)) = v46;
  return result;
}

uint64_t sub_10005D764@<X0>(uint64_t a1@<X0>, double *a2@<X1>, __int16 a3@<W2>, double a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v60 = a1;
  v66 = a6;
  v62 = sub_100002B38(&qword_10012F1E8, &qword_1000EBAD0);
  __chkstk_darwin(v62);
  v11 = &v59 - v10;
  v65 = sub_100002B38(&qword_10012F390, &qword_1000EBC30);
  v12 = *(v65 - 8);
  __chkstk_darwin(v65);
  v14 = &v59 - v13;
  v61 = sub_100002B38(&qword_10012F398, &qword_1000EBC38);
  __chkstk_darwin(v61);
  v64 = &v59 - v15;
  v63 = sub_100002B38(&qword_10012F1C0, &qword_1000EBAB8);
  __chkstk_darwin(v63);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v59 - v19;
  v21 = sub_100002B38(&qword_10012F1D0, &qword_1000EBAC0);
  __chkstk_darwin(v21);
  v67 = &v59 - v22;
  v24 = *a2;
  v23 = a2[1];
  v25 = a2[2];
  if ((a3 & 1) == 0)
  {
    v26 = 0.0;
    if (a5)
    {
      goto LABEL_7;
    }

LABEL_6:
    v26 = a4;
    goto LABEL_7;
  }

  if ((a5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v26 = 0.0;
  v27 = 1.0;
  if (*&a4 != 1)
  {
LABEL_7:
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.overlayContentWidth.getter();
    v27 = v24 + (1.0 - v24) * (v26 / v28);
  }

  v29 = sub_100002B38(&qword_10012F1E0, &qword_1000EBAC8);
  v30 = v67;
  (*(*(v29 - 8) + 16))(v67, v60, v29);
  *(v30 + *(v21 + 36)) = v27;
  if ((a3 & 0x100) != 0)
  {
    if (a3)
    {
      if (a5)
      {
        v34 = 0.0;
        if (*&a4 == 1)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v34 = 0.0;
      if (a5)
      {
LABEL_25:
        type metadata accessor for ZoomCoordinator();
        static ZoomCoordinator.overlayContentWidth.getter();
        v34 = v23 * (1.0 - v34 / v49);
LABEL_26:
        sub_1000035B4(v30, v17, &qword_10012F1D0, &qword_1000EBAC0);
        v50 = &v17[*(v63 + 36)];
        *v50 = v34;
        v50[8] = 0;
        sub_100014830(v17, v20, &qword_10012F1C0, &qword_1000EBAB8);
        sub_1000035B4(v20, v64, &qword_10012F1C0, &qword_1000EBAB8);
        swift_storeEnumTagMultiPayload();
        sub_10006CADC();
        v48 = v30;
        v51 = sub_100005144(&qword_10012F1F0, &qword_1000EBAD8);
        v52 = sub_10006CC20();
        v55 = sub_100068134(v52, v53, v54);
        v56 = sub_10006CCAC();
        v68 = v62;
        v69 = &type metadata for IsPadIdiomPredicate;
        v70 = v51;
        v71 = v52;
        v72 = v55;
        v73 = v56;
        swift_getOpaqueTypeConformance2();
        _ConditionalContent<>.init(storage:)();
        sub_100005688(v20, &qword_10012F1C0, &qword_1000EBAB8);
        return sub_100005688(v48, &qword_10012F1D0, &qword_1000EBAC0);
      }
    }

    v34 = a4;
    goto LABEL_25;
  }

  v60 = v12;
  if ((a3 & 1) == 0)
  {
    v32 = 0.0;
    v31 = v62;
    if (a5)
    {
      goto LABEL_19;
    }

LABEL_18:
    v32 = a4;
    goto LABEL_19;
  }

  v31 = v62;
  if ((a5 & 1) == 0)
  {
    goto LABEL_18;
  }

  v32 = 0.0;
  if (*&a4 != 1)
  {
LABEL_19:
    type metadata accessor for ZoomCoordinator();
    static ZoomCoordinator.overlayContentWidth.getter();
    v33 = v25 * (1.0 - v32 / v35) * -0.3;
    goto LABEL_20;
  }

  v33 = -0.0;
LABEL_20:
  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.overlayContentWidth.getter();
  v37 = v33 * v36;
  v38 = sub_1000035B4(v30, v11, &qword_10012F1D0, &qword_1000EBAC0);
  v39 = &v11[*(v31 + 36)];
  *v39 = v37;
  *(v39 + 1) = 0;
  v40 = v31;
  if (qword_10012CB80 != -1)
  {
    v38 = swift_once();
  }

  __chkstk_darwin(v38);
  v41 = sub_100002B38(&qword_10012F1F0, &qword_1000EBAD8);
  v42 = sub_10006CC20();
  v45 = sub_100068134(v42, v43, v44);
  v58 = sub_10006CCAC();
  View.staticIf<A, B>(_:then:)();
  sub_100005688(v11, &qword_10012F1E8, &qword_1000EBAD0);
  v46 = v60;
  v47 = v65;
  (*(v60 + 16))(v64, v14, v65);
  swift_storeEnumTagMultiPayload();
  sub_10006CADC();
  v68 = v40;
  v69 = &type metadata for IsPadIdiomPredicate;
  v70 = v41;
  v71 = v42;
  v72 = v45;
  v73 = v58;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  (*(v46 + 8))(v14, v47);
  v48 = v67;
  return sub_100005688(v48, &qword_10012F1D0, &qword_1000EBAC0);
}

uint64_t sub_10005DE48@<X0>(unsigned int a1@<W1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v50 = a2;
  v68 = a4;
  v66 = sub_100002B38(&qword_10012F1A0, &qword_1000EBAB0);
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v46[-v7];
  v63 = sub_100002B38(&qword_10012F218, &qword_1000EBAE8);
  v65 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v46[-v8];
  v61 = sub_100002B38(&qword_10012F220, &qword_1000EBAF0);
  v75 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v60 = &v46[-v11];
  v73 = sub_100002B38(&qword_10012F230, &qword_1000EBB00);
  v74 = *(v73 - 8);
  __chkstk_darwin(v73);
  v54 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v71 = &v46[-v14];
  v15 = sub_100002B38(&qword_10012F228, &qword_1000EBAF8);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v46[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v72 = &v46[-v20];
  swift_getKeyPath();
  v51 = a1 & 1;
  v86 = a1 & 0x101;
  v21 = (a1 >> 8) & 1;
  v49 = HIWORD(a1) & 1;
  v87 = BYTE2(a1) & 1;
  v88 = a2;
  v89 = a3 & 1;
  v47 = a3 & 1;
  sub_100002B38(&qword_10012F258, &qword_1000EBB30);
  v69 = &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>;
  sub_1000057D8(&qword_10012F260, &qword_10012F258, &qword_1000EBB30, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
  KeyframeTrack.init(_:content:)();
  v48 = &protocol conformance descriptor for KeyframeTrack<A, B, C>;
  v55 = sub_1000057D8(&qword_10012F238, &qword_10012F228, &qword_1000EBAF8, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v70 = v18;
  v53 = v15;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v22 = *(v16 + 8);
  v57 = v16 + 8;
  v58 = v22;
  v22(v18, v15);
  swift_getKeyPath();
  v23 = v51;
  v81 = v51;
  v82 = BYTE1(a1) & 1;
  LOBYTE(a1) = v49;
  v83 = v49;
  v24 = v50;
  v84 = v50;
  v85 = a3 & 1;
  sub_100002B38(&qword_10012F268, &qword_1000EBB58);
  sub_1000057D8(&qword_10012F270, &qword_10012F268, &qword_1000EBB58, v69);
  v25 = v54;
  KeyframeTrack.init(_:content:)();
  v26 = v48;
  v52 = sub_1000057D8(&qword_10012F240, &qword_10012F230, &qword_1000EBB00, v48);
  v27 = v73;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v28 = *(v74 + 8);
  v74 += 8;
  v56 = v28;
  v28(v25, v27);
  swift_getKeyPath();
  v76 = v23;
  v77 = v21;
  v78 = a1;
  v79 = v24;
  v80 = v47;
  sub_100002B38(&qword_10012F278, &qword_1000EBB80);
  sub_1000057D8(&qword_10012F280, &qword_10012F278, &qword_1000EBB80, v69);
  v29 = v59;
  KeyframeTrack.init(_:content:)();
  v30 = sub_1000057D8(&qword_10012F248, &qword_10012F220, &qword_1000EBAF0, v26);
  v31 = v60;
  v32 = v61;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v33 = *(v75 + 8);
  v75 += 8;
  v69 = v33;
  v33(v29, v32);
  v34 = v53;
  v35 = v55;
  static KeyframesBuilder.buildPartialBlock<A>(first:)();
  v36 = v62;
  v37 = v73;
  v38 = v52;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v90 = &type metadata for ParentPushPopAnimator.Track;
  v91 = v34;
  v92 = v37;
  v93 = v35;
  v94 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v64;
  v41 = v36;
  v42 = v63;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v90 = &type metadata for ParentPushPopAnimator.Track;
  v91 = v42;
  v92 = v32;
  v93 = OpaqueTypeConformance2;
  v94 = v30;
  swift_getOpaqueTypeConformance2();
  v43 = v66;
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  (*(v67 + 8))(v40, v43);
  (*(v65 + 8))(v41, v42);
  v44 = v58;
  v58(v70, v34);
  v69(v31, v32);
  v56(v71, v73);
  return v44(v72, v34);
}

uint64_t sub_10005E78C(int a1, uint64_t a2, char a3)
{
  v4 = sub_100002B38(&qword_10012F258, &qword_1000EBB30);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v13[-v9];
  sub_10005E938(a1 & 0x10101, v7);
  sub_1000057D8(&qword_10012F260, &qword_10012F258, &qword_1000EBB30, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v11 = *(v5 + 8);
  v11(v7, v4);
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  return (v11)(v10, v4);
}

uint64_t sub_10005E938@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v188 = a2;
  v187 = sub_100002B38(&qword_10012F2F0, &qword_1000EBBC8);
  v173 = *(v187 - 8);
  __chkstk_darwin(v187);
  v156 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v155 = &v148 - v5;
  v172 = sub_100002B38(&qword_10012F2F8, &qword_1000EBBD0);
  v162 = *(v172 - 8);
  __chkstk_darwin(v172);
  v160 = &v148 - v6;
  v171 = sub_100002B38(&qword_10012F300, &qword_1000EBBD8);
  v161 = *(v171 - 8);
  __chkstk_darwin(v171);
  v175 = &v148 - v7;
  v154 = sub_100002B38(&qword_10012F308, &qword_1000EBBE0);
  v152 = *(v154 - 8);
  __chkstk_darwin(v154);
  v151 = &v148 - v8;
  v153 = sub_100002B38(&qword_10012F310, &qword_1000EBBE8);
  v150 = *(v153 - 8);
  __chkstk_darwin(v153);
  v149 = &v148 - v9;
  v10 = type metadata accessor for Spring();
  __chkstk_darwin(v10 - 8);
  v169 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_100002B38(&qword_10012F318, &qword_1000EBBF0);
  v193 = *(v182 - 1);
  __chkstk_darwin(v182);
  v170 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v189 = &v148 - v14;
  v15 = sub_100002B38(&qword_10012F320, &qword_1000EBBF8);
  v159 = *(v15 - 8);
  __chkstk_darwin(v15);
  v158 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v157 = &v148 - v18;
  v19 = sub_100002B38(&qword_10012F328, &qword_1000EBC00);
  v180 = *(v19 - 8);
  __chkstk_darwin(v19);
  v179 = &v148 - v20;
  v168 = sub_100002B38(&qword_10012F330, &qword_1000EBC08);
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v165 = &v148 - v21;
  v181 = sub_100002B38(&qword_10012F338, &qword_1000EBC10);
  v174 = *(v181 - 1);
  __chkstk_darwin(v181);
  v176 = &v148 - v22;
  v23 = type metadata accessor for UnitCurve();
  __chkstk_darwin(v23 - 8);
  v24 = sub_100002B38(&qword_10012F340, &qword_1000EBC18);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v191 = &v148 - v29;
  v30 = sub_100002B38(&qword_10012F348, &qword_1000EBC20);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v190 = &v148 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v148 - v34;
  __chkstk_darwin(v36);
  v194 = &v148 - v37;
  v178 = sub_100002B38(&qword_10012F350, &qword_1000EBC28);
  v166 = *(v178 - 8);
  __chkstk_darwin(v178);
  v164 = &v148 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v163 = &v148 - v40;
  v41 = sub_100002B38(&qword_10012F258, &qword_1000EBB30);
  v184 = *(v41 - 8);
  v185 = v41;
  __chkstk_darwin(v41);
  v183 = &v148 - v42;
  v186 = v19;
  v192 = v35;
  if ((a1 & 0x10000) != 0)
  {
    v173 = v15;
    v57 = (v31 + 8);
    v193 = (v25 + 8);
    v177 = v24;
    v189 = (v31 + 8);
    if (a1)
    {
      v195 = 0;
      MoveKeyframe.init(_:)();
      v58 = sub_1000057D8(&qword_10012F358, &qword_10012F348, &qword_1000EBC20, &protocol conformance descriptor for MoveKeyframe<A>);
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v182 = *v57;
      v182(v35, v30);
      v195 = 0x3FF0000000000000;
      static UnitCurve.linear.getter();
      LinearKeyframe.init(_:duration:timingCurve:)();
      v59 = sub_1000057D8(&qword_10012F378, &qword_10012F340, &qword_1000EBC18, &protocol conformance descriptor for LinearKeyframe<A>);
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v175 = *v193;
      (v175)(v27, v24);
      v195 = 0x3FF0000000000000;
      v60 = v190;
      MoveKeyframe.init(_:)();
      v61 = v192;
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v182(v60, v30);
      static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
      v62 = v176;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v195 = &type metadata for Double;
      v196 = v30;
      v197 = v24;
      v198 = v58;
      v199 = v59;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v64 = v165;
      v65 = v181;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v195 = &type metadata for Double;
      v196 = v65;
      v197 = v30;
      v198 = OpaqueTypeConformance2;
      v199 = v58;
      swift_getOpaqueTypeConformance2();
      v66 = v163;
      v67 = v168;
      static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
      v167[1](v64, v67);
      (*(v174 + 8))(v62, v65);
    }

    else
    {
      v195 = 0x3FF0000000000000;
      MoveKeyframe.init(_:)();
      v97 = sub_1000057D8(&qword_10012F358, &qword_10012F348, &qword_1000EBC20, &protocol conformance descriptor for MoveKeyframe<A>);
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v182 = *v57;
      v182(v35, v30);
      v195 = 0;
      static UnitCurve.linear.getter();
      LinearKeyframe.init(_:duration:timingCurve:)();
      v98 = sub_1000057D8(&qword_10012F378, &qword_10012F340, &qword_1000EBC18, &protocol conformance descriptor for LinearKeyframe<A>);
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v175 = *v193;
      (v175)(v27, v24);
      v195 = 0;
      v60 = v190;
      MoveKeyframe.init(_:)();
      v61 = v192;
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v182(v60, v30);
      static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
      v99 = v176;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v195 = &type metadata for Double;
      v196 = v30;
      v197 = v24;
      v198 = v97;
      v199 = v98;
      v100 = swift_getOpaqueTypeConformance2();
      v101 = v165;
      v102 = v181;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v195 = &type metadata for Double;
      v196 = v102;
      v197 = v30;
      v198 = v100;
      v199 = v97;
      swift_getOpaqueTypeConformance2();
      v66 = v163;
      v103 = v168;
      static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
      v167[1](v101, v103);
      (*(v174 + 8))(v99, v102);
    }

    v68 = v182;
    v182(v60, v30);
    v68(v61, v30);
    (v175)(v191, v177);
    v68(v194, v30);
    sub_1000057D8(&qword_10012F388, &qword_10012F350, &qword_1000EBC28, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
    v104 = v164;
    v105 = v66;
    v106 = v178;
    static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
    sub_1000057D8(&qword_10012F380, &qword_10012F320, &qword_1000EBBF8, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
    v107 = v179;
    static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
    sub_1000057D8(&qword_10012F370, &qword_10012F328, &qword_1000EBC00, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
    sub_1000057D8(&qword_10012F368, &qword_10012F2F0, &qword_1000EBBC8, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
    v108 = v183;
    v109 = v186;
    static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
    (*(v180 + 8))(v107, v109);
    v110 = *(v166 + 8);
    v110(v104, v106);
    v110(v105, v106);
  }

  else
  {
    v43 = (v31 + 8);
    v168 = v43;
    if ((a1 & 0x100) != 0)
    {
      v177 = v24;
      v173 = v15;
      if (a1)
      {
        v195 = 0;
        v69 = v35;
        MoveKeyframe.init(_:)();
        v70 = sub_1000057D8(&qword_10012F358, &qword_10012F348, &qword_1000EBC20, &protocol conformance descriptor for MoveKeyframe<A>);
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        v71 = *v43;
        (*v43)(v69, v30);
        v165 = v71;
        v195 = 0;
        static UnitCurve.linear.getter();
        LinearKeyframe.init(_:duration:timingCurve:)();
        v72 = sub_1000057D8(&qword_10012F378, &qword_10012F340, &qword_1000EBC18, &protocol conformance descriptor for LinearKeyframe<A>);
        v73 = v177;
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        v74 = *(v25 + 8);
        v166 = v25 + 8;
        v167 = v74;
        (v74)(v27, v73);
        v200 = 0x3FF0000000000000;
        Spring.init(duration:bounce:)();
        v195 = 0;
        LOBYTE(v196) = 1;
        v75 = v170;
        SpringKeyframe.init(_:duration:spring:startVelocity:)();
        v175 = sub_1000057D8(&qword_10012F360, &qword_10012F318, &qword_1000EBBF0, &protocol conformance descriptor for SpringKeyframe<A>);
        v76 = v182;
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        v77 = v193[1];
        ++v193;
        v169 = v77;
        (v77)(v75, v76);
        v195 = 0x3FF0000000000000;
        v78 = v190;
        MoveKeyframe.init(_:)();
        v79 = v192;
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        (v71)(v78, v30);
        static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
        v80 = v177;
        static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
        v195 = &type metadata for Double;
        v196 = v30;
        v197 = v80;
        v198 = v70;
        v81 = v70;
        v199 = v72;
        v82 = swift_getOpaqueTypeConformance2();
        v83 = v149;
        v84 = v181;
        v85 = v175;
        static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
        v195 = &type metadata for Double;
        v196 = v84;
        v197 = v76;
        v198 = v82;
        v199 = v85;
        v86 = swift_getOpaqueTypeConformance2();
        v87 = v151;
        v88 = v83;
        v89 = v79;
        v90 = v153;
        static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
        v195 = &type metadata for Double;
        v196 = v90;
        v197 = v30;
        v198 = v86;
        v199 = v81;
        swift_getOpaqueTypeConformance2();
        v195 = &type metadata for Double;
        v196 = v30;
        v197 = v76;
        v198 = v81;
        v199 = v175;
        v91 = swift_getOpaqueTypeConformance2();
        v195 = &type metadata for Double;
        v196 = v171;
        v197 = v30;
        v198 = v91;
        v199 = v81;
        swift_getOpaqueTypeConformance2();
        v92 = v157;
        v93 = v154;
        static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
        v94 = v87;
        v95 = v186;
        (*(v152 + 8))(v94, v93);
        (*(v150 + 8))(v88, v90);
        (*(v174 + 8))(v176, v181);
        v96 = v165;
        (v165)(v190, v30);
        v96(v89, v30);
        (v169)(v189, v76);
        (v167)(v191, v177);
        v96(v194, v30);
      }

      else
      {
        v195 = 0x3FF0000000000000;
        MoveKeyframe.init(_:)();
        v126 = sub_1000057D8(&qword_10012F358, &qword_10012F348, &qword_1000EBC20, &protocol conformance descriptor for MoveKeyframe<A>);
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        v127 = *v43;
        (*v43)(v35, v30);
        v176 = v127;
        v200 = 0;
        Spring.init(duration:bounce:)();
        v195 = 0;
        LOBYTE(v196) = 1;
        v128 = v170;
        SpringKeyframe.init(_:duration:spring:startVelocity:)();
        v129 = sub_1000057D8(&qword_10012F360, &qword_10012F318, &qword_1000EBBF0, &protocol conformance descriptor for SpringKeyframe<A>);
        v130 = v182;
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        v131 = v193[1];
        ++v193;
        v191 = v131;
        (v131)(v128, v130);
        v195 = 0;
        v132 = v190;
        MoveKeyframe.init(_:)();
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        (v127)(v132, v30);
        static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
        static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
        v195 = &type metadata for Double;
        v196 = v30;
        v197 = v130;
        v198 = v126;
        v199 = v129;
        v174 = swift_getOpaqueTypeConformance2();
        v133 = v160;
        v134 = v171;
        static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
        v135 = sub_1000057D8(&qword_10012F378, &qword_10012F340, &qword_1000EBC18, &protocol conformance descriptor for LinearKeyframe<A>);
        v195 = &type metadata for Double;
        v196 = v30;
        v197 = v177;
        v198 = v126;
        v199 = v135;
        v136 = swift_getOpaqueTypeConformance2();
        v137 = v182;
        v195 = &type metadata for Double;
        v196 = v181;
        v197 = v182;
        v198 = v136;
        v199 = v129;
        v138 = swift_getOpaqueTypeConformance2();
        v195 = &type metadata for Double;
        v196 = v153;
        v197 = v30;
        v198 = v138;
        v199 = v126;
        swift_getOpaqueTypeConformance2();
        v195 = &type metadata for Double;
        v196 = v134;
        v197 = v30;
        v198 = v174;
        v199 = v126;
        swift_getOpaqueTypeConformance2();
        v92 = v157;
        v139 = v172;
        static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
        (*(v162 + 8))(v133, v139);
        (*(v161 + 8))(v175, v134);
        v140 = v176;
        (v176)(v132, v30);
        (v140)(v192, v30);
        (v191)(v189, v137);
        (v140)(v194, v30);
        v95 = v186;
      }

      sub_1000057D8(&qword_10012F380, &qword_10012F320, &qword_1000EBBF8, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
      v141 = v158;
      v142 = v92;
      v143 = v173;
      static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
      sub_1000057D8(&qword_10012F388, &qword_10012F350, &qword_1000EBC28, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
      v144 = v179;
      static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
      sub_1000057D8(&qword_10012F370, &qword_10012F328, &qword_1000EBC00, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
      sub_1000057D8(&qword_10012F368, &qword_10012F2F0, &qword_1000EBBC8, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
      v108 = v183;
      static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
      (*(v180 + 8))(v144, v95);
      v145 = *(v159 + 8);
      v145(v141, v143);
      v145(v142, v143);
    }

    else
    {
      if (a1)
      {
        v195 = 0;
        MoveKeyframe.init(_:)();
        v44 = sub_1000057D8(&qword_10012F358, &qword_10012F348, &qword_1000EBC20, &protocol conformance descriptor for MoveKeyframe<A>);
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        v191 = *v43;
        (v191)(v35, v30);
        v200 = 0x3FF0000000000000;
        Spring.init(duration:bounce:)();
        v195 = 0;
        LOBYTE(v196) = 1;
        v45 = v170;
        SpringKeyframe.init(_:duration:spring:startVelocity:)();
        v46 = sub_1000057D8(&qword_10012F360, &qword_10012F318, &qword_1000EBBF0, &protocol conformance descriptor for SpringKeyframe<A>);
        v47 = v182;
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        v48 = v193[1];
        ++v193;
        v181 = v48;
        (v48)(v45, v47);
        v195 = 0x3FF0000000000000;
        v49 = v187;
        v50 = v190;
        MoveKeyframe.init(_:)();
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        (v191)(v50, v30);
        static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
        static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
        v195 = &type metadata for Double;
        v196 = v30;
        v197 = v47;
        v198 = v44;
        v199 = v46;
        v51 = swift_getOpaqueTypeConformance2();
        v52 = v160;
        v53 = v171;
        static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
        v195 = &type metadata for Double;
        v196 = v53;
        v197 = v30;
        v198 = v51;
        v199 = v44;
        swift_getOpaqueTypeConformance2();
        v54 = v155;
        v55 = v172;
        static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
        (*(v162 + 8))(v52, v55);
        (*(v161 + 8))(v175, v53);
        v56 = v191;
        (v191)(v50, v30);
        v56(v192, v30);
        (v181)(v189, v182);
        v56(v194, v30);
      }

      else
      {
        v195 = 0x3FF0000000000000;
        MoveKeyframe.init(_:)();
        v111 = sub_1000057D8(&qword_10012F358, &qword_10012F348, &qword_1000EBC20, &protocol conformance descriptor for MoveKeyframe<A>);
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        v112 = *v43;
        (*v43)(v35, v30);
        v181 = v112;
        v200 = 0;
        Spring.init(duration:bounce:)();
        v195 = 0;
        LOBYTE(v196) = 1;
        v113 = v170;
        SpringKeyframe.init(_:duration:spring:startVelocity:)();
        v114 = sub_1000057D8(&qword_10012F360, &qword_10012F318, &qword_1000EBBF0, &protocol conformance descriptor for SpringKeyframe<A>);
        v115 = v182;
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        v116 = v193[1];
        ++v193;
        v191 = v116;
        (v116)(v113, v115);
        v195 = 0;
        v117 = v190;
        MoveKeyframe.init(_:)();
        static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
        v112(v117, v30);
        static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
        v118 = v175;
        static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
        v195 = &type metadata for Double;
        v196 = v30;
        v197 = v115;
        v198 = v111;
        v199 = v114;
        v119 = swift_getOpaqueTypeConformance2();
        v120 = v160;
        v121 = v171;
        static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
        v195 = &type metadata for Double;
        v196 = v121;
        v197 = v30;
        v198 = v119;
        v199 = v111;
        swift_getOpaqueTypeConformance2();
        v54 = v155;
        v122 = v172;
        static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
        (*(v162 + 8))(v120, v122);
        (*(v161 + 8))(v118, v121);
        v123 = v181;
        (v181)(v117, v30);
        v123(v192, v30);
        (v191)(v189, v182);
        v123(v194, v30);
        v49 = v187;
      }

      sub_1000057D8(&qword_10012F368, &qword_10012F2F0, &qword_1000EBBC8, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
      v124 = v156;
      static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
      sub_1000057D8(&qword_10012F370, &qword_10012F328, &qword_1000EBC00, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
      v108 = v183;
      static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
      v125 = *(v173 + 8);
      v125(v124, v49);
      v125(v54, v49);
    }
  }

  sub_1000057D8(&qword_10012F260, &qword_10012F258, &qword_1000EBB30, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
  v146 = v185;
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  return (*(v184 + 8))(v108, v146);
}

uint64_t sub_100060DB0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v3 = sub_100002B38(&qword_10012F288, &qword_1000EBB88);
  v99 = *(v3 - 8);
  v100 = v3;
  __chkstk_darwin(v3);
  v94 = &v80 - v4;
  v98 = sub_100002B38(&qword_10012F290, &qword_1000EBB90);
  v95 = *(v98 - 8);
  __chkstk_darwin(v98);
  v92 = &v80 - v5;
  v6 = type metadata accessor for Spring();
  __chkstk_darwin(v6 - 8);
  v80 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_100002B38(&qword_10012F298, &qword_1000EBB98);
  v110 = *(v93 - 8);
  __chkstk_darwin(v93);
  v81 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v102 = &v80 - v10;
  v107 = sub_100002B38(&qword_10012F278, &qword_1000EBB80);
  v11 = *(v107 - 8);
  __chkstk_darwin(v107);
  v97 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v96 = &v80 - v14;
  v91 = sub_100002B38(&qword_10012F2C0, &qword_1000EBBA8);
  v90 = *(v91 - 1);
  __chkstk_darwin(v91);
  v87 = &v80 - v15;
  v89 = sub_100002B38(&qword_10012F2C8, &qword_1000EBBB0);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v85 = &v80 - v16;
  v17 = type metadata accessor for UnitCurve();
  __chkstk_darwin(v17 - 8);
  v86 = sub_100002B38(&qword_10012F2D0, &qword_1000EBBB8);
  v18 = *(v86 - 8);
  __chkstk_darwin(v86);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v101 = &v80 - v22;
  v23 = sub_100002B38(&qword_10012F2A0, &qword_1000EBBA0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v80 - v28;
  __chkstk_darwin(v30);
  v32 = &v80 - v31;
  v104 = sub_100002B38(&qword_10012F2D8, &qword_1000EBBC0);
  v84 = *(v104 - 8);
  __chkstk_darwin(v104);
  v83 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v82 = &v80 - v35;
  v36 = sub_100002B38(&qword_10012F268, &qword_1000EBB58);
  v105 = *(v36 - 8);
  v106 = v36;
  __chkstk_darwin(v36);
  v103 = &v80 - v40;
  v41 = (v24 + 8);
  v111 = v29;
  v112 = v32;
  v109 = v41;
  if ((a1 & 0x10000) != 0)
  {
    v110 = (v18 + 8);
    if (a1)
    {
      v113 = 0x4008000000000000;
      sub_10006CE68(v37, v38, v39);
      MoveKeyframe.init(_:)();
      v53 = sub_1000057D8(&qword_10012F2B0, &qword_10012F2A0, &qword_1000EBBA0, &protocol conformance descriptor for MoveKeyframe<A>);
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v102 = *v41;
      (v102)(v29, v23);
      v113 = 0;
      static UnitCurve.linear.getter();
      LinearKeyframe.init(_:duration:timingCurve:)();
      v54 = sub_1000057D8(&qword_10012F2E8, &qword_10012F2D0, &qword_1000EBBB8, &protocol conformance descriptor for LinearKeyframe<A>);
      v55 = v86;
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v100 = *v110;
      v100(v20, v55);
      v113 = 0;
      MoveKeyframe.init(_:)();
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      (v102)(v26, v23);
      static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
      v56 = v85;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v113 = &type metadata for CGFloat;
      v114 = v23;
      v115 = v55;
      v116 = v53;
      v117 = v54;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v58 = v87;
      v59 = v89;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v113 = &type metadata for CGFloat;
      v114 = v59;
      v115 = v23;
      v116 = OpaqueTypeConformance2;
      v117 = v53;
      swift_getOpaqueTypeConformance2();
      v60 = v82;
      v61 = v91;
      static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
    }

    else
    {
      v113 = 0;
      sub_10006CE68(v37, v38, v39);
      MoveKeyframe.init(_:)();
      v73 = sub_1000057D8(&qword_10012F2B0, &qword_10012F2A0, &qword_1000EBBA0, &protocol conformance descriptor for MoveKeyframe<A>);
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v102 = *v41;
      (v102)(v29, v23);
      v113 = 0x4008000000000000;
      static UnitCurve.linear.getter();
      LinearKeyframe.init(_:duration:timingCurve:)();
      v74 = sub_1000057D8(&qword_10012F2E8, &qword_10012F2D0, &qword_1000EBBB8, &protocol conformance descriptor for LinearKeyframe<A>);
      v55 = v86;
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v100 = *v110;
      v100(v20, v55);
      v113 = 0x4008000000000000;
      MoveKeyframe.init(_:)();
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      (v102)(v26, v23);
      static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
      v56 = v85;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v113 = &type metadata for CGFloat;
      v114 = v23;
      v115 = v55;
      v116 = v73;
      v117 = v74;
      v75 = swift_getOpaqueTypeConformance2();
      v58 = v87;
      v59 = v89;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v113 = &type metadata for CGFloat;
      v114 = v59;
      v115 = v23;
      v116 = v75;
      v117 = v73;
      swift_getOpaqueTypeConformance2();
      v60 = v82;
      v61 = v91;
      static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
    }

    (*(v90 + 1))(v58, v61);
    (*(v88 + 8))(v56, v59);
    v76 = v102;
    (v102)(v26, v23);
    v76(v111, v23);
    v100(v101, v55);
    v76(v112, v23);
    sub_1000057D8(&qword_10012F2E0, &qword_10012F2D8, &qword_1000EBBC0, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
    v68 = v83;
    v69 = v60;
    v70 = v104;
    static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
    sub_1000057D8(&qword_10012F280, &qword_10012F278, &qword_1000EBB80, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
    v71 = v103;
    static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
    v72 = v84;
  }

  else
  {
    v101 = v11;
    if (a1)
    {
      v113 = 0x4024000000000000;
      sub_10006CE68(v37, v38, v39);
      MoveKeyframe.init(_:)();
      v42 = sub_1000057D8(&qword_10012F2B0, &qword_10012F2A0, &qword_1000EBBA0, &protocol conformance descriptor for MoveKeyframe<A>);
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v91 = *v41;
      (v91)(v29, v23);
      v118 = 0;
      Spring.init(duration:bounce:)();
      v113 = 0;
      LOBYTE(v114) = 1;
      v43 = v81;
      SpringKeyframe.init(_:duration:spring:startVelocity:)();
      v44 = sub_1000057D8(&qword_10012F2B8, &qword_10012F298, &qword_1000EBB98, &protocol conformance descriptor for SpringKeyframe<A>);
      v45 = v93;
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v46 = v110[1];
      ++v110;
      v90 = v46;
      v46(v43, v45);
      v113 = 0;
      MoveKeyframe.init(_:)();
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      (v91)(v26, v23);
      static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
      v47 = v92;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v113 = &type metadata for CGFloat;
      v114 = v23;
      v115 = v45;
      v116 = v42;
      v117 = v44;
      v48 = swift_getOpaqueTypeConformance2();
      v49 = v94;
      v50 = v98;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v113 = &type metadata for CGFloat;
      v114 = v50;
      v115 = v23;
      v116 = v48;
      v117 = v42;
      swift_getOpaqueTypeConformance2();
      v51 = v96;
      v52 = v100;
      static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
    }

    else
    {
      v113 = 0;
      sub_10006CE68(v37, v38, v39);
      MoveKeyframe.init(_:)();
      v62 = sub_1000057D8(&qword_10012F2B0, &qword_10012F2A0, &qword_1000EBBA0, &protocol conformance descriptor for MoveKeyframe<A>);
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v91 = *v41;
      (v91)(v29, v23);
      v118 = 0x4024000000000000;
      Spring.init(duration:bounce:)();
      v113 = 0;
      LOBYTE(v114) = 1;
      v63 = v81;
      SpringKeyframe.init(_:duration:spring:startVelocity:)();
      v64 = sub_1000057D8(&qword_10012F2B8, &qword_10012F298, &qword_1000EBB98, &protocol conformance descriptor for SpringKeyframe<A>);
      v45 = v93;
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      v65 = v110[1];
      ++v110;
      v90 = v65;
      v65(v63, v45);
      v113 = 0x4024000000000000;
      MoveKeyframe.init(_:)();
      static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
      (v91)(v26, v23);
      static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
      v47 = v92;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v113 = &type metadata for CGFloat;
      v114 = v23;
      v115 = v45;
      v116 = v62;
      v117 = v64;
      v66 = swift_getOpaqueTypeConformance2();
      v49 = v94;
      v50 = v98;
      static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
      v113 = &type metadata for CGFloat;
      v114 = v50;
      v115 = v23;
      v116 = v66;
      v117 = v62;
      swift_getOpaqueTypeConformance2();
      v51 = v96;
      v52 = v100;
      static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
    }

    (*(v99 + 8))(v49, v52);
    (*(v95 + 8))(v47, v50);
    v67 = v91;
    (v91)(v26, v23);
    (v67)(v111, v23);
    v90(v102, v45);
    (v67)(v112, v23);
    sub_1000057D8(&qword_10012F280, &qword_10012F278, &qword_1000EBB80, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
    v68 = v97;
    v69 = v51;
    v70 = v107;
    static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
    sub_1000057D8(&qword_10012F2E0, &qword_10012F2D8, &qword_1000EBBC0, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
    v71 = v103;
    static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
    v72 = v101;
  }

  v77 = *(v72 + 1);
  v77(v68, v70);
  v77(v69, v70);
  sub_1000057D8(&qword_10012F270, &qword_10012F268, &qword_1000EBB58, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
  v78 = v106;
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  return (*(v105 + 8))(v71, v78);
}

uint64_t sub_1000622E4@<X0>(int a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, void (*a6)(void, uint64_t, void, double)@<X5>, unint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v25 = a7;
  v26 = a8;
  v14 = sub_100002B38(a4, a5);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v24 - v20;
  a6(a1 & 0x10101, a2, a3 & 1, v19);
  sub_1000057D8(v25, a4, a5, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v22 = *(v15 + 8);
  v22(v17, v14);
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  return (v22)(v21, v14);
}

uint64_t sub_10006248C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_100002B38(&qword_10012F288, &qword_1000EBB88);
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin(v3);
  v55 = &v46 - v4;
  v5 = sub_100002B38(&qword_10012F290, &qword_1000EBB90);
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v54 = &v46 - v6;
  v7 = type metadata accessor for Spring();
  __chkstk_darwin(v7 - 8);
  v50 = sub_100002B38(&qword_10012F298, &qword_1000EBB98);
  v64 = *(v50 - 8);
  __chkstk_darwin(v50);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v13 = sub_100002B38(&qword_10012F2A0, &qword_1000EBBA0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v49 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v46 - v17;
  __chkstk_darwin(v19);
  v21 = &v46 - v20;
  v22 = sub_100002B38(&qword_10012F278, &qword_1000EBB80);
  v52 = *(v22 - 8);
  v53 = v22;
  __chkstk_darwin(v22);
  v51 = &v46 - v26;
  v27 = (v14 + 8);
  v62 = v14 + 8;
  v63 = v21;
  v48 = v12;
  v61 = v18;
  if (a1)
  {
    v65 = 0x3FF0000000000000;
    sub_10006CE68(v23, v24, v25);
    MoveKeyframe.init(_:)();
    v28 = sub_1000057D8(&qword_10012F2B0, &qword_10012F2A0, &qword_1000EBBA0, &protocol conformance descriptor for MoveKeyframe<A>);
    static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
    v47 = *v27;
    v47(v18, v13);
    v70 = 0;
    Spring.init(duration:bounce:)();
    v65 = 0;
    LOBYTE(v66) = 1;
    SpringKeyframe.init(_:duration:spring:startVelocity:)();
    v29 = sub_1000057D8(&qword_10012F2B8, &qword_10012F298, &qword_1000EBB98, &protocol conformance descriptor for SpringKeyframe<A>);
    v30 = v50;
    static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
    v31 = *(v64 + 8);
    v64 += 8;
    v46 = v31;
    v31(v9, v30);
    v65 = 0;
    v32 = v49;
    MoveKeyframe.init(_:)();
    static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
    v47(v32, v13);
    static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
    v33 = v54;
    static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
    v65 = &type metadata for CGFloat;
    v66 = v13;
    v67 = v30;
    v68 = v28;
    v69 = v29;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v35 = v55;
    v36 = v57;
    static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
    v65 = &type metadata for CGFloat;
    v66 = v36;
    v67 = v13;
    v68 = OpaqueTypeConformance2;
    v69 = v28;
    swift_getOpaqueTypeConformance2();
    v37 = v51;
    v38 = v59;
    static KeyframeTrackContentBuilder.buildEither<A, B>(first:)();
  }

  else
  {
    v65 = 0;
    sub_10006CE68(v23, v24, v25);
    MoveKeyframe.init(_:)();
    v39 = sub_1000057D8(&qword_10012F2B0, &qword_10012F2A0, &qword_1000EBBA0, &protocol conformance descriptor for MoveKeyframe<A>);
    static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
    v47 = *v27;
    v47(v18, v13);
    v70 = 0x3FF0000000000000;
    Spring.init(duration:bounce:)();
    v65 = 0;
    LOBYTE(v66) = 1;
    SpringKeyframe.init(_:duration:spring:startVelocity:)();
    v40 = sub_1000057D8(&qword_10012F2B8, &qword_10012F298, &qword_1000EBB98, &protocol conformance descriptor for SpringKeyframe<A>);
    v30 = v50;
    static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
    v41 = *(v64 + 8);
    v64 += 8;
    v46 = v41;
    v41(v9, v30);
    v65 = 0x3FF0000000000000;
    v32 = v49;
    MoveKeyframe.init(_:)();
    static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
    v47(v32, v13);
    static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
    v33 = v54;
    static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
    v65 = &type metadata for CGFloat;
    v66 = v13;
    v67 = v30;
    v68 = v39;
    v69 = v40;
    v42 = swift_getOpaqueTypeConformance2();
    v35 = v55;
    v36 = v57;
    static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
    v65 = &type metadata for CGFloat;
    v66 = v36;
    v67 = v13;
    v68 = v42;
    v69 = v39;
    swift_getOpaqueTypeConformance2();
    v37 = v51;
    v38 = v59;
    static KeyframeTrackContentBuilder.buildEither<A, B>(second:)();
  }

  (*(v58 + 8))(v35, v38);
  (*(v56 + 8))(v33, v36);
  v43 = v47;
  v47(v32, v13);
  v43(v61, v13);
  v46(v48, v30);
  v43(v63, v13);
  sub_1000057D8(&qword_10012F280, &qword_10012F278, &qword_1000EBB80, &protocol conformance descriptor for KeyframeTrackContentBuilder<A>.Conditional<A1, B1, C1>);
  v44 = v53;
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  return (*(v52 + 8))(v37, v44);
}

uint64_t sub_100062E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *v2;
  if (v2[2])
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  return sub_10005D28C(a1, v4 | v5, *(v2 + 1), v2[16], a2);
}

uint64_t sub_100062ECC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v52 = a1;
  v57 = a2;
  v56 = sub_100002B38(&qword_10012FA50, &qword_1000EC1D0);
  __chkstk_darwin(v56);
  v50 = &v48 - v2;
  v53 = sub_100002B38(&qword_10012FA88, &qword_1000EC1E8);
  __chkstk_darwin(v53);
  v55 = &v48 - v3;
  v54 = sub_100002B38(&qword_10012FA68, &qword_1000EC1D8);
  __chkstk_darwin(v54);
  v49 = &v48 - v4;
  v5 = type metadata accessor for UserInterfaceSizeClass();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v48 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002B38(&qword_10012E1A0, &qword_1000EC1F0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v48 - v10;
  v12 = sub_100002B38(&qword_100132550, &qword_1000EC170);
  __chkstk_darwin(v12 - 8);
  v51 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v48 - v15;
  __chkstk_darwin(v17);
  v19 = &v48 - v18;
  sub_10007A224((&v48 - v18));
  (*(v6 + 104))(v16, enum case for UserInterfaceSizeClass.compact(_:), v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v20 = *(v9 + 56);
  sub_1000035B4(v19, v11, &qword_100132550, &qword_1000EC170);
  sub_1000035B4(v16, &v11[v20], &qword_100132550, &qword_1000EC170);
  v21 = *(v6 + 48);
  if (v21(v11, 1, v5) == 1)
  {
    sub_100005688(v16, &qword_100132550, &qword_1000EC170);
    sub_100005688(v19, &qword_100132550, &qword_1000EC170);
    if (v21(&v11[v20], 1, v5) == 1)
    {
      sub_100005688(v11, &qword_100132550, &qword_1000EC170);
LABEL_9:
      v39 = static Edge.Set.all.getter();
      v40 = sub_100002B38(&qword_10012FA80, &qword_1000EC1E0);
      v41 = v49;
      (*(*(v40 - 8) + 16))(v49, v52, v40);
      v42 = v41 + *(v56 + 36);
      *v42 = v39;
      *(v42 + 8) = xmmword_1000EAC60;
      *(v42 + 24) = xmmword_1000EAC70;
      *(v42 + 40) = 0;
      v43 = static Edge.Set.horizontal.getter();
      v44 = static SafeAreaRegions.all.getter();
      v45 = v55;
      v46 = v41 + *(v54 + 36);
      *v46 = v44;
      *(v46 + 8) = v43;
      v32 = &qword_10012FA68;
      v33 = &qword_1000EC1D8;
      sub_1000035B4(v41, v45, &qword_10012FA68, &qword_1000EC1D8);
      swift_storeEnumTagMultiPayload();
      sub_1000700B0();
      sub_10007013C();
      _ConditionalContent<>.init(storage:)();
      v34 = v41;
      return sub_100005688(v34, v32, v33);
    }

    goto LABEL_6;
  }

  sub_1000035B4(v11, v51, &qword_100132550, &qword_1000EC170);
  if (v21(&v11[v20], 1, v5) == 1)
  {
    sub_100005688(v16, &qword_100132550, &qword_1000EC170);
    sub_100005688(v19, &qword_100132550, &qword_1000EC170);
    (*(v6 + 8))(v51, v5);
LABEL_6:
    sub_100005688(v11, &qword_10012E1A0, &qword_1000EC1F0);
    goto LABEL_7;
  }

  v35 = v48;
  (*(v6 + 32))(v48, &v11[v20], v5);
  sub_10006778C(&qword_10012E1C8, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
  v36 = v51;
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();
  v38 = *(v6 + 8);
  v38(v35, v5);
  sub_100005688(v16, &qword_100132550, &qword_1000EC170);
  sub_100005688(v19, &qword_100132550, &qword_1000EC170);
  v38(v36, v5);
  sub_100005688(v11, &qword_100132550, &qword_1000EC170);
  if (v37)
  {
    goto LABEL_9;
  }

LABEL_7:
  v22 = static Edge.Set.all.getter();
  v23 = sub_100002B38(&qword_10012FA80, &qword_1000EC1E0);
  v24 = v50;
  (*(*(v23 - 8) + 16))(v50, v52, v23);
  v25 = v55;
  v26 = v24 + *(v56 + 36);
  *v26 = v22;
  *(v26 + 8) = xmmword_1000EAC50;
  __asm { FMOV            V0.2D, #16.0 }

  *(v26 + 24) = _Q0;
  *(v26 + 40) = 0;
  v32 = &qword_10012FA50;
  v33 = &qword_1000EC1D0;
  sub_1000035B4(v24, v25, &qword_10012FA50, &qword_1000EC1D0);
  swift_storeEnumTagMultiPayload();
  sub_1000700B0();
  sub_10007013C();
  _ConditionalContent<>.init(storage:)();
  v34 = v24;
  return sub_100005688(v34, v32, v33);
}

__n128 sub_100063610@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.all.getter();
  v5 = sub_100002B38(&qword_10012FA80, &qword_1000EC1E0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  v6 = a2 + *(sub_100002B38(&qword_10012FA50, &qword_1000EC1D0) + 36);
  *v6 = v4;
  __asm { FMOV            V0.2D, #16.0 }

  *(v6 + 8) = result;
  *(v6 + 24) = result;
  *(v6 + 40) = 0;
  return result;
}

uint64_t sub_1000636BC(uint64_t a1)
{
  sub_100002B38(&qword_10012FA48, &qword_1000EC1C8);
  v1 = sub_100002B38(&qword_10012FA50, &qword_1000EC1D0);
  sub_100069844(v1, v2, v3);
  sub_100070024();
  sub_10007013C();
  return StaticIf<>.init(_:then:else:)();
}

uint64_t sub_10006381C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_100002B38(&qword_10012F528, &qword_1000EBD38);
  sub_10006D8E0(v4, a2);
  sub_100011F80(v4, a2);
  sub_100002B38(&qword_10012F560, &qword_1000EBD58);
  sub_100005144(&qword_10012F568, &qword_1000EBD60);
  sub_100005144(&qword_10012F570, &qword_1000EBD68);
  sub_1000057D8(&qword_10012F578, &qword_10012F568, &qword_1000EBD60, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  sub_1000057D8(&qword_10012F580, &qword_10012F570, &qword_1000EBD68, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  swift_getOpaqueTypeConformance2();
  return KeyframeTimeline.init<A>(initialValue:content:)();
}

uint64_t sub_1000639C4@<X0>(uint64_t (*a1)(char *, uint64_t)@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v47 = a1;
  v56 = a3;
  v3 = sub_100002B38(&qword_10012F560, &qword_1000EBD58);
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  __chkstk_darwin(v3);
  v53 = &v41 - v5;
  v6 = sub_100002B38(&qword_10012F570, &qword_1000EBD68);
  v7 = *(v6 - 8);
  v50 = v6;
  v51 = v7;
  __chkstk_darwin(v6);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = &v41 - v10;
  v11 = sub_100002B38(&qword_10012F568, &qword_1000EBD60);
  v58 = *(v11 - 8);
  __chkstk_darwin(v11);
  v57 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v46 = &v41 - v14;
  KeyPath = swift_getKeyPath();
  v41 = sub_100002B38(&qword_10012F2F8, &qword_1000EBBD0);
  v15 = sub_100005144(&qword_10012F300, &qword_1000EBBD8);
  v16 = sub_100005144(&qword_10012F348, &qword_1000EBC20);
  v17 = sub_100005144(&qword_10012F318, &qword_1000EBBF0);
  v44 = &protocol conformance descriptor for MoveKeyframe<A>;
  v18 = sub_1000057D8(&qword_10012F358, &qword_10012F348, &qword_1000EBC20, &protocol conformance descriptor for MoveKeyframe<A>);
  v43 = &protocol conformance descriptor for SpringKeyframe<A>;
  v19 = sub_1000057D8(&qword_10012F360, &qword_10012F318, &qword_1000EBBF0, &protocol conformance descriptor for SpringKeyframe<A>);
  v59 = &type metadata for Double;
  v60 = v16;
  v61 = v17;
  v62 = v18;
  v63 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = &type metadata for Double;
  v60 = v15;
  v61 = v16;
  v62 = OpaqueTypeConformance2;
  v63 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v57;
  KeyframeTrack.init(_:content:)();
  KeyPath = sub_1000057D8(&qword_10012F578, &qword_10012F568, &qword_1000EBD60, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v42 = v11;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v22 = *(v58 + 8);
  v58 += 8;
  v47 = v22;
  v22(v21, v11);
  swift_getKeyPath();
  v41 = sub_100002B38(&qword_10012F288, &qword_1000EBB88);
  v23 = sub_100005144(&qword_10012F290, &qword_1000EBB90);
  v24 = sub_100005144(&qword_10012F2A0, &qword_1000EBBA0);
  v25 = sub_100005144(&qword_10012F298, &qword_1000EBB98);
  v26 = sub_1000057D8(&qword_10012F2B0, &qword_10012F2A0, &qword_1000EBBA0, v44);
  v27 = sub_1000057D8(&qword_10012F2B8, &qword_10012F298, &qword_1000EBB98, v43);
  v59 = &type metadata for CGFloat;
  v60 = v24;
  v61 = v25;
  v62 = v26;
  v63 = v27;
  v28 = swift_getOpaqueTypeConformance2();
  v59 = &type metadata for CGFloat;
  v60 = v23;
  v61 = v24;
  v62 = v28;
  v63 = v26;
  swift_getOpaqueTypeConformance2();
  v29 = v48;
  KeyframeTrack.init(_:content:)();
  v30 = sub_1000057D8(&qword_10012F580, &qword_10012F570, &qword_1000EBD68, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v32 = v49;
  v31 = v50;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v52 = *(v51 + 8);
  v52(v29, v31);
  v33 = v57;
  v34 = KeyPath;
  v35 = v46;
  v36 = v42;
  static KeyframesBuilder.buildPartialBlock<A>(first:)();
  v37 = v53;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v59 = &type metadata for ChildSlideTransition.Track;
  v60 = v36;
  v61 = v31;
  v62 = v34;
  v63 = v30;
  swift_getOpaqueTypeConformance2();
  v38 = v54;
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  (*(v55 + 8))(v37, v38);
  v39 = v47;
  v47(v33, v36);
  v52(v32, v31);
  return v39(v35, v36);
}