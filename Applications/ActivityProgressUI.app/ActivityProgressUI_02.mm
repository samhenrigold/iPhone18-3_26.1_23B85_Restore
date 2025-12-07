uint64_t sub_100034494()
{
  v0 = type metadata accessor for APKDeviceLockState();
  v10 = *(v0 - 8);
  v11 = v0;
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BackgroundActivitySession(0);
  sub_100039A08(&qword_10005B378, type metadata accessor for BackgroundActivitySession, &unk_10003F078);
  StateObject.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v4 = [Strong systemApertureElementViewControllerProvider];

    if (v4)
    {
      v5 = [v4 systemApertureElementViewController];
      swift_unknownObjectRelease();
      v6 = [v5 systemApertureElementContext];

      [v6 requestTransitionToPreferredLayoutMode];
      swift_unknownObjectRelease();
    }
  }

  type metadata accessor for BackgroundActivitySessionTask(0);
  sub_100039A08(&qword_10005B410, type metadata accessor for BackgroundActivitySessionTask, &unk_10003F0B0);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = v12;
  v8 = v13;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10002D3EC(v7, v8);

  return (*(v10 + 8))(v2, v11);
}

uint64_t sub_1000347A4(uint64_t a1)
{
  type metadata accessor for BackgroundActivitySessionTask(0);
  sub_100039A08(&qword_10005B410, type metadata accessor for BackgroundActivitySessionTask, &unk_10003F0B0);

  return StateObject.wrappedValue.getter();
}

uint64_t sub_100034834(uint64_t *a1)
{
  type metadata accessor for BackgroundActivitySession(0);
  sub_100039A08(&qword_10005B378, type metadata accessor for BackgroundActivitySession, &unk_10003F078);

  return StateObject.wrappedValue.getter();
}

void sub_1000348C4(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v7 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BackgroundActivitySessionTask(0);
  sub_100039A08(&qword_10005B410, type metadata accessor for BackgroundActivitySessionTask, &unk_10003F0B0);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8 == 1)
  {
    if (*(a1 + 48))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (v10)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        if (v9 == 4)
        {
          swift_getKeyPath();
          swift_getKeyPath();

          static Published.subscript.getter();

          if (v8 != 4)
          {
            if (qword_10005A1A0 != -1)
            {
              swift_once();
            }

            StateObject.wrappedValue.getter();
            swift_getKeyPath();
            swift_getKeyPath();
            v4 = v6;
            static Published.subscript.getter();

            sub_10001B02C(v4, 1);
            (*(v7 + 8))(v4, v2);
          }
        }
      }
    }

    else
    {
      type metadata accessor for APUISystemApertureLayoutState(0);
      sub_100039A08(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState, &unk_100040278);
      EnvironmentObject.error()();
      __break(1u);
    }
  }
}

void *sub_100034C90@<X0>(void *a1@<X8>)
{
  v81 = a1;
  v79 = sub_100005D3C(&qword_10005C068, &qword_1000411A8);
  __chkstk_darwin(v79);
  v80 = &v56 - v2;
  v71 = sub_100005D3C(&qword_10005C070, &qword_1000411B0);
  v60 = *(v71 - 8);
  __chkstk_darwin(v71);
  v59 = &v56 - v3;
  v75 = sub_100005D3C(&qword_10005C078, &qword_1000411B8);
  __chkstk_darwin(v75);
  v76 = &v56 - v4;
  v68 = sub_100005D3C(&qword_10005C080, &qword_1000411C0);
  __chkstk_darwin(v68);
  v69 = &v56 - v5;
  v74 = sub_100005D3C(&qword_10005C088, &qword_1000411C8);
  __chkstk_darwin(v74);
  v70 = &v56 - v6;
  v63 = type metadata accessor for Image.ResizingMode();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100005D3C(&qword_10005C090, &qword_1000411D0);
  __chkstk_darwin(v65);
  v64 = &v56 - v8;
  v67 = sub_100005D3C(&qword_10005C098, &qword_1000411D8);
  __chkstk_darwin(v67);
  v66 = &v56 - v9;
  v78 = sub_100005D3C(&qword_10005C0A0, &qword_1000411E0);
  __chkstk_darwin(v78);
  v73 = &v56 - v10;
  v11 = type metadata accessor for UUID();
  v77 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v56 - v15;
  v72 = v1;
  type metadata accessor for BackgroundActivitySession(0);
  sub_100039A08(&qword_10005B378, type metadata accessor for BackgroundActivitySession, &unk_10003F078);
  v17 = StateObject.wrappedValue.getter();
  v18 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v19 = *(v17 + v18);

  if (!*(v19 + 16))
  {

    goto LABEL_8;
  }

  v20 = v77;
  (*(v77 + 16))(v14, v19 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v11);

  (*(v20 + 32))(v16, v14, v11);
  v21 = StateObject.wrappedValue.getter();
  v22 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  swift_beginAccess();
  v23 = *(v21 + v22);

  v24 = v20;
  if (!*(v23 + 16) || (v25 = sub_100029BB8(v16), (v26 & 1) == 0))
  {

    (*(v20 + 8))(v16, v11);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    sub_100037E68();
    return _ConditionalContent<>.init(storage:)();
  }

  v58 = *(*(v23 + 56) + 8 * v25);

  v27 = v72;
  if (*(v72 + 64))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
  }

  else
  {
    type metadata accessor for BackgroundActivitySessionTask(0);
    sub_100039A08(&qword_10005B410, type metadata accessor for BackgroundActivitySessionTask, &unk_10003F0B0);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();
  }

  v57 = v16;
  if (*&v84[0])
  {
    v60 = *&v84[0];
    Image.init(uiImage:)();
    v29 = v62;
    v30 = v61;
    v31 = v63;
    (*(v62 + 104))(v61, enum case for Image.ResizingMode.stretch(_:), v63);
    v59 = Image.resizable(capInsets:resizingMode:)();

    (*(v29 + 8))(v30, v31);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v83 = 1;
    *&v82[6] = v84[0];
    *&v82[22] = v84[1];
    *&v82[38] = v84[2];
    v32 = *(v27 + 56);
    v33 = sub_100005D3C(&qword_10005C0D0, &qword_1000411E8);
    v34 = v64;
    v35 = &v64[*(v33 + 36)];
    v36 = type metadata accessor for RoundedRectangle();
    v37 = *(v36 + 20);
    v38 = enum case for RoundedCornerStyle.continuous(_:);
    v39 = type metadata accessor for RoundedCornerStyle();
    v40 = v11;
    v41 = *(*(v39 - 8) + 104);
    v41(&v35[v37], v38, v39);
    *v35 = v32;
    *(v35 + 1) = v32;
    v42 = sub_100005D3C(&qword_10005C100, &qword_100041200);
    *&v35[*(v42 + 36)] = 256;
    v43 = *&v82[16];
    *(v34 + 18) = *v82;
    *v34 = v59;
    *(v34 + 8) = 0;
    *(v34 + 16) = 1;
    *(v34 + 34) = v43;
    *(v34 + 50) = *&v82[32];
    *(v34 + 64) = *&v82[46];
    v44 = (v34 + *(v65 + 36));
    v41(&v44[*(v36 + 20)], v38, v39);
    v24 = v77;
    *v44 = v32;
    *(v44 + 1) = v32;
    *&v44[*(v42 + 36)] = 256;
    v11 = v40;
    sub_100038068();
    v45 = v66;
    View.accessibilityHidden(_:)();
    sub_10000619C(v34, &qword_10005C090, &qword_1000411D0);
    sub_1000064B0(v45, v69, &qword_10005C098, &qword_1000411D8);
    swift_storeEnumTagMultiPayload();
    sub_100037FAC();
    sub_100006260(&qword_10005C110, &qword_10005C070, &qword_1000411B0, &protocol conformance descriptor for AsyncIconImage<A>);
    v46 = v70;
    _ConditionalContent<>.init(storage:)();
    sub_1000064B0(v46, v76, &qword_10005C088, &qword_1000411C8);
    swift_storeEnumTagMultiPayload();
    sub_100037EF4();
    v47 = v73;
    _ConditionalContent<>.init(storage:)();

    sub_10000619C(v46, &qword_10005C088, &qword_1000411C8);
    sub_10000619C(v45, &qword_10005C098, &qword_1000411D8);
  }

  else
  {
    type metadata accessor for BackgroundActivitySessionTask(0);
    sub_100039A08(&qword_10005B410, type metadata accessor for BackgroundActivitySessionTask, &unk_10003F0B0);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v48 = *&v84[0];
    if (*&v84[0])
    {
      v49 = swift_allocObject();
      v50 = *(v27 + 48);
      *(v49 + 48) = *(v27 + 32);
      *(v49 + 64) = v50;
      *(v49 + 80) = *(v27 + 64);
      v51 = *(v27 + 16);
      *(v49 + 16) = *v27;
      *(v49 + 32) = v51;
      v66 = v48;
      sub_100038348(v27, v84);
      sub_100005D3C(&qword_10005C118, &qword_100041298);
      sub_100038380();
      v52 = v59;
      AsyncIconImage.init(icon:descriptor:transaction:content:)();
      v53 = v60;
      v54 = v71;
      (*(v60 + 2))(v69, v52, v71);
      swift_storeEnumTagMultiPayload();
      sub_100037FAC();
      sub_100006260(&qword_10005C110, &qword_10005C070, &qword_1000411B0, &protocol conformance descriptor for AsyncIconImage<A>);
      v55 = v70;
      _ConditionalContent<>.init(storage:)();
      sub_1000064B0(v55, v76, &qword_10005C088, &qword_1000411C8);
      swift_storeEnumTagMultiPayload();
      sub_100037EF4();
      v47 = v73;
      _ConditionalContent<>.init(storage:)();

      sub_10000619C(v55, &qword_10005C088, &qword_1000411C8);
      (v53)[1](v52, v54);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_100037EF4();
      v47 = v73;
      _ConditionalContent<>.init(storage:)();
    }
  }

  sub_1000064B0(v47, v80, &qword_10005C0A0, &qword_1000411E0);
  swift_storeEnumTagMultiPayload();
  sub_100037E68();
  _ConditionalContent<>.init(storage:)();

  sub_10000619C(v47, &qword_10005C0A0, &qword_1000411E0);
  return (*(v24 + 8))(v57, v11);
}

void *sub_100035BA0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005D3C(&qword_10005C090, &qword_1000411D0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = sub_100005D3C(&qword_10005C098, &qword_1000411D8);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = sub_100005D3C(&qword_10005C128, &qword_1000412A0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  v15 = AsyncIconImagePhase.image.getter();
  if (v15)
  {
    v16 = v15;
    (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
    v35 = Image.resizable(capInsets:resizingMode:)();
    (*(v3 + 8))(v5, v2);
    v17 = v37;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v40 = 1;
    *&v39[6] = v41;
    *&v39[22] = v42;
    *&v39[38] = v43;
    v18 = *(v17 + 56);
    v19 = *(sub_100005D3C(&qword_10005C0D0, &qword_1000411E8) + 36);
    v33 = v11;
    v20 = &v8[v19];
    v21 = type metadata accessor for RoundedRectangle();
    v37 = v16;
    v22 = *(v21 + 20);
    v23 = enum case for RoundedCornerStyle.continuous(_:);
    v24 = type metadata accessor for RoundedCornerStyle();
    v25 = *(v24 - 8);
    v36 = v9;
    v26 = *(v25 + 104);
    v34 = v12;
    v26(&v20[v22], v23, v24);
    *v20 = v18;
    *(v20 + 1) = v18;
    v27 = sub_100005D3C(&qword_10005C100, &qword_100041200);
    *&v20[*(v27 + 36)] = 256;
    v28 = *&v39[16];
    *(v8 + 18) = *v39;
    *v8 = v35;
    *(v8 + 1) = 0;
    *(v8 + 8) = 1;
    *(v8 + 34) = v28;
    *(v8 + 50) = *&v39[32];
    *(v8 + 8) = *&v39[46];
    v29 = &v8[*(v6 + 36)];
    v26(&v29[*(v21 + 20)], v23, v24);
    *v29 = v18;
    *(v29 + 1) = v18;
    *&v29[*(v27 + 36)] = 256;
    sub_100038068();
    v30 = v33;
    View.accessibilityHidden(_:)();
    sub_10000619C(v8, &qword_10005C090, &qword_1000411D0);
    sub_1000064B0(v30, v14, &qword_10005C098, &qword_1000411D8);
    swift_storeEnumTagMultiPayload();
    sub_100037FAC();
    _ConditionalContent<>.init(storage:)();

    return sub_10000619C(v30, &qword_10005C098, &qword_1000411D8);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100037FAC();
    return _ConditionalContent<>.init(storage:)();
  }
}

void *sub_10003606C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v93 = a4;
  v83 = type metadata accessor for UUID();
  v91 = *(v83 - 8);
  v7 = __chkstk_darwin(v83);
  v81 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = &v80 - v9;
  v95 = sub_100005D3C(&qword_10005C130, &qword_1000412A8);
  __chkstk_darwin(v95);
  v92 = &v80 - v10;
  v88 = sub_100005D3C(&qword_10005C138, &qword_1000412B0);
  __chkstk_darwin(v88);
  v89 = &v80 - v11;
  v94 = sub_100005D3C(&qword_10005C140, &qword_1000412B8);
  __chkstk_darwin(v94);
  v90 = &v80 - v12;
  v13 = type metadata accessor for Font.Leading();
  v84 = *(v13 - 8);
  v85 = v13;
  __chkstk_darwin(v13);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v16 - 8);
  v87 = sub_100005D3C(&qword_10005BBD0, &unk_1000412C0);
  __chkstk_darwin(v87);
  v86 = &v80 - v17;
  type metadata accessor for BackgroundActivitySession(0);
  sub_100039A08(&qword_10005B378, type metadata accessor for BackgroundActivitySession, &unk_10003F078);
  v18 = a3;
  v19 = a1;
  v20 = a2;
  v21 = StateObject.wrappedValue.getter();
  v22 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v23 = *(v21 + v22);

  v24 = *(v23 + 16);

  if (v24 >= 2)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v25._countAndFlagsBits = 43;
    v25._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v25);
    v26 = StateObject.wrappedValue.getter();
    v27 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
    swift_beginAccess();
    v28 = *(v26 + v27);

    v29 = *(v28 + 16);

    v96[0] = v29 - 1;
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v30);
    LocalizedStringKey.init(stringInterpolation:)();
    v31 = Text.init(_:tableName:bundle:comment:)();
    v33 = v32;
    v35 = v34;
    static Font.subheadline.getter();
    v37 = v84;
    v36 = v85;
    (*(v84 + 104))(v15, enum case for Font.Leading.tight(_:), v85);
    Font.leading(_:)();

    (*(v37 + 8))(v15, v36);
    v38 = Text.font(_:)();
    v40 = v39;
    LOBYTE(v36) = v41;

    sub_10002B5F8(v31, v33, v35 & 1);

    LODWORD(v96[0]) = static HierarchicalShapeStyle.primary.getter();
    v42 = Text.foregroundStyle<A>(_:)();
    v44 = v43;
    LOBYTE(v31) = v45;
    v47 = v46;
    sub_10002B5F8(v38, v40, v36 & 1);

    KeyPath = swift_getKeyPath();
    v49 = sub_100005D3C(&qword_10005BBE8, &qword_100040828);
    v50 = v86;
    v51 = &v86[*(v49 + 36)];
    v52 = *(sub_100005D3C(&qword_10005BBF0, &qword_100040830) + 28);
    v53 = enum case for Text.TruncationMode.tail(_:);
    v54 = type metadata accessor for Text.TruncationMode();
    (*(*(v54 - 8) + 104))(v51 + v52, v53, v54);
    *v51 = swift_getKeyPath();
    *v50 = v42;
    *(v50 + 8) = v44;
    *(v50 + 16) = v31 & 1;
    *(v50 + 24) = v47;
    *(v50 + 32) = KeyPath;
    *(v50 + 40) = 1;
    *(v50 + 48) = 0;
    *(v50 + *(v87 + 36)) = 0x3FE0000000000000;
    sub_1000064B0(v50, v89, &qword_10005BBD0, &unk_1000412C0);
    swift_storeEnumTagMultiPayload();
    sub_100005D3C(&qword_10005C158, &qword_1000412D8);
    sub_10002B6A4();
    sub_100038498();
    v55 = v90;
    _ConditionalContent<>.init(storage:)();
    sub_1000064B0(v55, v92, &qword_10005C140, &qword_1000412B8);
    swift_storeEnumTagMultiPayload();
    sub_10003840C();
    _ConditionalContent<>.init(storage:)();
    sub_10000619C(v55, &qword_10005C140, &qword_1000412B8);
    return sub_10000619C(v50, &qword_10005BBD0, &unk_1000412C0);
  }

  v57 = StateObject.wrappedValue.getter();
  v58 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v59 = *(v57 + v58);

  if (!*(v59 + 16))
  {

    goto LABEL_10;
  }

  v60 = v18;
  v61 = v91;
  v62 = v81;
  v63 = v83;
  (*(v91 + 16))(v81, v59 + ((*(v61 + 80) + 32) & ~*(v61 + 80)), v83);

  v64 = v82;
  (*(v61 + 32))(v82, v62, v63);
  LODWORD(v84) = v60;
  v85 = v19;
  v86 = v20;
  v65 = StateObject.wrappedValue.getter();
  v66 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  swift_beginAccess();
  v67 = *(v65 + v66);

  v68 = v92;
  if (!*(v67 + 16) || (v69 = sub_100029BB8(v64), (v70 & 1) == 0))
  {

    (*(v91 + 8))(v64, v63);
LABEL_10:
    swift_storeEnumTagMultiPayload();
    sub_10003840C();
    return _ConditionalContent<>.init(storage:)();
  }

  v71 = *(*(v67 + 56) + 8 * v69);

  v81 = v71;

  v72 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);

  if (v72 == 1)
  {
    v73 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isGroupedSession);
  }

  else
  {
    v73 = 0;
  }

  v74 = v89;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v100 = 0;
  *&v99[5] = v101;
  *&v99[37] = v103;
  *&v99[21] = v102;
  *&v97 = sub_100006250;
  *(&v97 + 1) = v81;
  *v98 = 0;
  v98[2] = v73;
  *&v98[3] = *v99;
  *&v98[48] = *(&v103 + 1);
  *&v98[35] = *&v99[32];
  *&v98[19] = *&v99[16];
  v75 = v97;
  v76 = *v98;
  v77 = *&v98[16];
  v78 = *&v98[32];
  *(v74 + 64) = *&v98[48];
  *(v74 + 32) = v77;
  *(v74 + 48) = v78;
  *v74 = v75;
  *(v74 + 16) = v76;
  swift_storeEnumTagMultiPayload();
  sub_1000064B0(&v97, v96, &qword_10005C158, &qword_1000412D8);
  sub_100005D3C(&qword_10005C158, &qword_1000412D8);
  sub_10002B6A4();
  sub_100038498();
  v79 = v90;
  _ConditionalContent<>.init(storage:)();
  sub_1000064B0(v79, v68, &qword_10005C140, &qword_1000412B8);
  swift_storeEnumTagMultiPayload();
  sub_10003840C();
  _ConditionalContent<>.init(storage:)();

  sub_10000619C(&v97, &qword_10005C158, &qword_1000412D8);
  sub_10000619C(v79, &qword_10005C140, &qword_1000412B8);
  return (*(v91 + 8))(v82, v83);
}

uint64_t sub_100036C2C@<X0>(uint64_t *a2@<X8>)
{
  result = UUID.uuidString.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_100036C68()
{
  result = qword_10005C048;
  if (!qword_10005C048)
  {
    sub_100005F90(&qword_10005C038, &qword_100041160);
    sub_100039A08(&qword_10005C050, type metadata accessor for BackgroundActivityTaskView, &unk_100041388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C048);
  }

  return result;
}

uint64_t type metadata accessor for BackgroundActivityTaskView(uint64_t a1)
{
  result = qword_10005C1C0;
  if (!qword_10005C1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100036D68@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v78 = a1;
  v82 = a3;
  v81 = sub_100005D3C(&qword_10005C388, &qword_100041810);
  __chkstk_darwin(v81);
  v5 = v63 - v4;
  v71 = sub_100005D3C(&qword_10005C390, &qword_100041818);
  v6 = __chkstk_darwin(v71);
  v70 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v67 = v63 - v8;
  v9 = type metadata accessor for DynamicTypeSize();
  v75 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v74 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = v63 - v12;
  v69 = sub_100005D3C(&qword_10005C398, &qword_100041820);
  __chkstk_darwin(v69);
  v68 = v63 - v13;
  v77 = sub_100005D3C(&qword_10005C3A0, &qword_100041828);
  __chkstk_darwin(v77);
  v72 = v63 - v14;
  v79 = sub_100005D3C(&qword_10005C3A8, &qword_100041830);
  __chkstk_darwin(v79);
  v16 = v63 - v15;
  v76 = sub_100005D3C(&qword_10005C3B0, &qword_100041838);
  __chkstk_darwin(v76);
  v18 = v63 - v17;
  v80 = sub_100005D3C(&qword_10005C3B8, &qword_100041840);
  __chkstk_darwin(v80);
  v20 = v63 - v19;
  v21 = sub_100005D3C(&qword_10005C3C0, &qword_100041848);
  __chkstk_darwin(v21);
  v23 = v63 - v22;
  v24 = sub_100005D3C(&qword_10005C3C8, &qword_100041850);
  v25 = __chkstk_darwin(v24);
  v27 = v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v30 = v63 - v29;
  if ((a2 & 0x100) != 0)
  {
    v36 = v28;
    v37 = [objc_opt_self() mainScreen];
    [v37 bounds];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v86.origin.x = v39;
    v86.origin.y = v41;
    v86.size.width = v43;
    v86.size.height = v45;
    CGRectGetWidth(v86);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v46 = sub_100005D3C(&qword_10005C3D0, &qword_100041858);
    (*(*(v46 - 8) + 16))(v23, v78, v46);
    v47 = &v23[*(v21 + 36)];
    v48 = v84;
    *v47 = v83;
    *(v47 + 1) = v48;
    *(v47 + 2) = v85;
    sub_10002B908(v23, v27, &qword_10005C3C0, &qword_100041848);
    *&v27[*(v36 + 36)] = 256;
    sub_10002B908(v27, v30, &qword_10005C3C8, &qword_100041850);
    sub_1000064B0(v30, v18, &qword_10005C3C8, &qword_100041850);
    swift_storeEnumTagMultiPayload();
    sub_10003975C();
    sub_1000398AC();
    _ConditionalContent<>.init(storage:)();
    sub_1000064B0(v20, v16, &qword_10005C3B8, &qword_100041840);
    swift_storeEnumTagMultiPayload();
    sub_1000396D0();
    sub_100039808(&qword_10005C408, &qword_10005C388, &qword_100041810);
    _ConditionalContent<>.init(storage:)();
    sub_10000619C(v20, &qword_10005C3B8, &qword_100041840);
    v33 = v30;
    v34 = &qword_10005C3C8;
    v35 = &qword_100041850;
    return sub_10000619C(v33, v34, v35);
  }

  v64 = v18;
  v65 = v20;
  v66 = v16;
  v31 = v81;
  if ((a2 & 0x1000000) == 0)
  {
    v32 = sub_100005D3C(&qword_10005C3D0, &qword_100041858);
    (*(*(v32 - 8) + 16))(v5, v78, v32);
    *&v5[*(v31 + 36)] = 256;
    sub_1000064B0(v5, v66, &qword_10005C388, &qword_100041810);
    swift_storeEnumTagMultiPayload();
    sub_1000396D0();
    sub_100039808(&qword_10005C408, &qword_10005C388, &qword_100041810);
    _ConditionalContent<>.init(storage:)();
    v33 = v5;
    v34 = &qword_10005C388;
    v35 = &qword_100041810;
    return sub_10000619C(v33, v34, v35);
  }

  v63[1] = v28;
  v50 = v75;
  v51 = *(v75 + 104);
  v52 = v73;
  v51(v73, enum case for DynamicTypeSize.xSmall(_:), v9);
  v53 = v74;
  v51(v74, enum case for DynamicTypeSize.large(_:), v9);
  sub_100039A08(&qword_10005C410, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v54 = *(v50 + 32);
    v55 = v67;
    v54(v67, v52, v9);
    v56 = v71;
    v54((v55 + *(v71 + 48)), v53, v9);
    v57 = v70;
    sub_1000064B0(v55, v70, &qword_10005C390, &qword_100041818);
    v58 = *(v56 + 48);
    v59 = v68;
    v54(v68, v57, v9);
    v60 = *(v50 + 8);
    v60(v57 + v58, v9);
    sub_10002B908(v55, v57, &qword_10005C390, &qword_100041818);
    v54((v59 + *(v69 + 36)), (v57 + *(v56 + 48)), v9);
    v60(v57, v9);
    sub_100005D3C(&qword_10005C3D0, &qword_100041858);
    sub_100006260(&qword_10005C3F0, &qword_10005C3D0, &qword_100041858, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100006260(&qword_10005C400, &qword_10005C398, &qword_100041820, &protocol conformance descriptor for ClosedRange<A>);
    v61 = v72;
    View.dynamicTypeSize<A>(_:)();
    sub_10000619C(v59, &qword_10005C398, &qword_100041820);
    *(v61 + *(v77 + 36)) = 256;
    sub_1000064B0(v61, v64, &qword_10005C3A0, &qword_100041828);
    swift_storeEnumTagMultiPayload();
    sub_10003975C();
    sub_1000398AC();
    v62 = v65;
    _ConditionalContent<>.init(storage:)();
    sub_1000064B0(v62, v66, &qword_10005C3B8, &qword_100041840);
    swift_storeEnumTagMultiPayload();
    sub_1000396D0();
    sub_100039808(&qword_10005C408, &qword_10005C388, &qword_100041810);
    _ConditionalContent<>.init(storage:)();
    sub_10000619C(v62, &qword_10005C3B8, &qword_100041840);
    return sub_10000619C(v61, &qword_10005C3A0, &qword_100041828);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000378C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (v2[3])
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  if (v2[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (v2[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_100036D68(a1, v5 | *v2 | v4 | v3, a2);
}

void *sub_100037904@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100005D3C(&qword_10005C360, &qword_1000417F8);
  __chkstk_darwin(v5);
  v7 = v23 - v6;
  v8 = sub_100005D3C(&qword_10005C368, &qword_100041800);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - v10;
  if (*v2)
  {
    v23[1] = a1;
    v23[2] = v5;
    v23[3] = a2;
    if (*(v2 + 8))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v12 = sub_100005D3C(&qword_10005C370, &qword_100041808);
      type metadata accessor for SBUISystemApertureLayoutMode(0);
      v14 = v13;
      v15 = sub_100006260(&qword_10005C378, &qword_10005C370, &qword_100041808, &protocol conformance descriptor for _ViewModifier_Content<A>);
      v16 = sub_100039A08(&qword_10005C380, type metadata accessor for SBUISystemApertureLayoutMode, &unk_10003E224);
      View.onChange<A>(of:initial:_:)();
      (*(v9 + 16))(v7, v11, v8);
      swift_storeEnumTagMultiPayload();
      v24 = v12;
      v25 = v14;
      v26 = v15;
      v27 = v16;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      return (*(v9 + 8))(v11, v8);
    }

    else
    {
      type metadata accessor for APUISystemApertureLayoutState(0);
      sub_100039A08(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState, &unk_100040278);
      result = EnvironmentObject.error()();
      __break(1u);
    }
  }

  else
  {
    v18 = sub_100005D3C(&qword_10005C370, &qword_100041808);
    (*(*(v18 - 8) + 16))(v7, a1, v18);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for SBUISystemApertureLayoutMode(255);
    v20 = v19;
    v21 = sub_100006260(&qword_10005C378, &qword_10005C370, &qword_100041808, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v22 = sub_100039A08(&qword_10005C380, type metadata accessor for SBUISystemApertureLayoutMode, &unk_10003E224);
    v24 = v18;
    v25 = v20;
    v26 = v21;
    v27 = v22;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }

  return result;
}

uint64_t sub_100037D58()
{
  sub_1000062A8(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100037E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundActivityTaskView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100037E68()
{
  result = qword_10005C0A8;
  if (!qword_10005C0A8)
  {
    sub_100005F90(&qword_10005C0A0, &qword_1000411E0);
    sub_100037EF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C0A8);
  }

  return result;
}

unint64_t sub_100037EF4()
{
  result = qword_10005C0B0;
  if (!qword_10005C0B0)
  {
    sub_100005F90(&qword_10005C088, &qword_1000411C8);
    sub_100037FAC();
    sub_100006260(&qword_10005C110, &qword_10005C070, &qword_1000411B0, &protocol conformance descriptor for AsyncIconImage<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C0B0);
  }

  return result;
}

unint64_t sub_100037FAC()
{
  result = qword_10005C0B8;
  if (!qword_10005C0B8)
  {
    sub_100005F90(&qword_10005C098, &qword_1000411D8);
    sub_100038068();
    sub_100039A08(&qword_10005C108, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C0B8);
  }

  return result;
}

unint64_t sub_100038068()
{
  result = qword_10005C0C0;
  if (!qword_10005C0C0)
  {
    sub_100005F90(&qword_10005C090, &qword_1000411D0);
    sub_100038120();
    sub_100006260(&qword_10005C0F8, &qword_10005C100, &qword_100041200, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C0C0);
  }

  return result;
}

unint64_t sub_100038120()
{
  result = qword_10005C0C8;
  if (!qword_10005C0C8)
  {
    sub_100005F90(&qword_10005C0D0, &qword_1000411E8);
    sub_1000381D8();
    sub_100006260(&qword_10005C0F8, &qword_10005C100, &qword_100041200, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C0C8);
  }

  return result;
}

unint64_t sub_1000381D8()
{
  result = qword_10005C0D8;
  if (!qword_10005C0D8)
  {
    sub_100005F90(&qword_10005C0E0, &qword_1000411F0);
    sub_100038264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C0D8);
  }

  return result;
}

unint64_t sub_100038264()
{
  result = qword_10005C0E8;
  if (!qword_10005C0E8)
  {
    sub_100005F90(&qword_10005C0F0, &qword_1000411F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C0E8);
  }

  return result;
}

uint64_t sub_1000382F8()
{
  sub_1000062A8(v0[2], v0[3]);
  sub_1000062A8(v0[5], v0[6]);

  return _swift_deallocObject(v0, 81, 7);
}

unint64_t sub_100038380()
{
  result = qword_10005C120;
  if (!qword_10005C120)
  {
    sub_100005F90(&qword_10005C118, &qword_100041298);
    sub_100037FAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C120);
  }

  return result;
}

unint64_t sub_10003840C()
{
  result = qword_10005C148;
  if (!qword_10005C148)
  {
    sub_100005F90(&qword_10005C140, &qword_1000412B8);
    sub_10002B6A4();
    sub_100038498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C148);
  }

  return result;
}

unint64_t sub_100038498()
{
  result = qword_10005C150;
  if (!qword_10005C150)
  {
    sub_100005F90(&qword_10005C158, &qword_1000412D8);
    sub_100017EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C150);
  }

  return result;
}

uint64_t sub_100038524@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100038558@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100038660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_100038784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100005D3C(&qword_10005C160, &unk_100041340);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100038860(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 48) = a2;
  }

  else
  {
    v7 = sub_100005D3C(&qword_10005C160, &unk_100041340);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100038910(uint64_t a1)
{
  sub_1000389C4(319);
  if (v1 <= 0x3F)
  {
    sub_100038A58(319);
    if (v2 <= 0x3F)
    {
      sub_100038AEC(319);
      if (v3 <= 0x3F)
      {
        sub_100038B80(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000389C4(uint64_t a1)
{
  if (!qword_10005C1D0)
  {
    type metadata accessor for BackgroundActivitySession(255);
    sub_100039A08(&qword_10005B378, type metadata accessor for BackgroundActivitySession, &unk_10003F078);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_10005C1D0);
    }
  }
}

void sub_100038A58(uint64_t a1)
{
  if (!qword_10005C1D8)
  {
    type metadata accessor for BackgroundActivitySessionTask(255);
    sub_100039A08(&qword_10005B410, type metadata accessor for BackgroundActivitySessionTask, &unk_10003F0B0);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_10005C1D8);
    }
  }
}

void sub_100038AEC(uint64_t a1)
{
  if (!qword_10005C1E0)
  {
    type metadata accessor for APUISystemApertureLayoutState(255);
    sub_100039A08(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState, &unk_100040278);
    v1 = type metadata accessor for EnvironmentObject();
    if (!v2)
    {
      atomic_store(v1, &qword_10005C1E0);
    }
  }
}

void sub_100038B80(uint64_t a1)
{
  if (!qword_10005C1E8)
  {
    type metadata accessor for ColorScheme();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10005C1E8);
    }
  }
}

unint64_t sub_100038BDC()
{
  result = qword_10005C220;
  if (!qword_10005C220)
  {
    sub_100005F90(&qword_10005C058, &qword_100041168);
    sub_100038C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C220);
  }

  return result;
}

unint64_t sub_100038C68()
{
  result = qword_10005C228;
  if (!qword_10005C228)
  {
    sub_100005F90(&qword_10005C020, &qword_100041110);
    sub_100006260(&qword_10005C230, &qword_10005C018, &qword_100041108, &protocol conformance descriptor for VStack<A>);
    sub_100006260(&qword_10005C238, &qword_10005C240, "~|", &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C228);
  }

  return result;
}

unint64_t sub_100038D50()
{
  result = qword_10005C248;
  if (!qword_10005C248)
  {
    sub_100005F90(&qword_10005C250, &qword_100041378);
    sub_100037E68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C248);
  }

  return result;
}

unint64_t sub_100038DE0()
{
  result = qword_10005C258;
  if (!qword_10005C258)
  {
    sub_100005F90(&qword_10005C260, &qword_100041380);
    sub_10003840C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C258);
  }

  return result;
}

uint64_t sub_100038E90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BackgroundActivityTaskView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100038FB8()
{
  result = qword_10005C2C0;
  if (!qword_10005C2C0)
  {
    sub_100005F90(&qword_10005C2B8, &qword_100041470);
    sub_100006260(&qword_10005C2C8, &qword_10005C2D0, &qword_100041478, &protocol conformance descriptor for VStack<A>);
    sub_100006260(&qword_10005C2D8, &qword_10005C2E0, &qword_100041480, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C2C0);
  }

  return result;
}

void sub_1000390A4()
{
  v1 = *(type metadata accessor for BackgroundActivityTaskView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1000348C4(v2);
}

uint64_t sub_100039114()
{
  v1 = (type metadata accessor for BackgroundActivityTaskView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1000062A8(*(v0 + v4), *(v0 + v4 + 8));
  sub_1000062A8(*(v5 + 24), *(v5 + 32));

  v6 = v1[9];
  sub_100005D3C(&qword_10005C060, &qword_1000411A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_1000392CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100039314(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlatterEnvironmentModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatterEnvironmentModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100039420()
{
  result = qword_10005C328;
  if (!qword_10005C328)
  {
    sub_100005F90(&qword_10005C320, &qword_100041508);
    sub_1000394AC();
    sub_100039644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C328);
  }

  return result;
}

unint64_t sub_1000394AC()
{
  result = qword_10005C330;
  if (!qword_10005C330)
  {
    sub_100005F90(&qword_10005C318, &qword_100041500);
    sub_100039538();
    sub_1000395F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C330);
  }

  return result;
}

unint64_t sub_100039538()
{
  result = qword_10005C338;
  if (!qword_10005C338)
  {
    sub_100005F90(&qword_10005C310, &qword_1000414F8);
    sub_100006260(&qword_10005C340, &qword_10005C348, &qword_100041750, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C338);
  }

  return result;
}

unint64_t sub_1000395F0()
{
  result = qword_10005C350;
  if (!qword_10005C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C350);
  }

  return result;
}

unint64_t sub_100039644()
{
  result = qword_10005C358;
  if (!qword_10005C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C358);
  }

  return result;
}

unint64_t sub_1000396D0()
{
  result = qword_10005C3D8;
  if (!qword_10005C3D8)
  {
    sub_100005F90(&qword_10005C3B8, &qword_100041840);
    sub_10003975C();
    sub_1000398AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C3D8);
  }

  return result;
}

unint64_t sub_10003975C()
{
  result = qword_10005C3E0;
  if (!qword_10005C3E0)
  {
    sub_100005F90(&qword_10005C3C8, &qword_100041850);
    sub_100039808(&qword_10005C3E8, &qword_10005C3C0, &qword_100041848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C3E0);
  }

  return result;
}

uint64_t sub_100039808(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005F90(a2, a3);
    sub_100006260(&qword_10005C3F0, &qword_10005C3D0, &qword_100041858, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000398AC()
{
  result = qword_10005C3F8;
  if (!qword_10005C3F8)
  {
    sub_100005F90(&qword_10005C3A0, &qword_100041828);
    sub_100005F90(&qword_10005C3D0, &qword_100041858);
    sub_100005F90(&qword_10005C398, &qword_100041820);
    sub_100006260(&qword_10005C3F0, &qword_10005C3D0, &qword_100041858, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100006260(&qword_10005C400, &qword_10005C398, &qword_100041820, &protocol conformance descriptor for ClosedRange<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C3F8);
  }

  return result;
}

uint64_t sub_100039A08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100039A54()
{
  result = qword_10005C418;
  if (!qword_10005C418)
  {
    sub_100005F90(&qword_10005C420, &qword_100041860);
    sub_100005F90(&qword_10005C370, &qword_100041808);
    type metadata accessor for SBUISystemApertureLayoutMode(255);
    sub_100006260(&qword_10005C378, &qword_10005C370, &qword_100041808, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100039A08(&qword_10005C380, type metadata accessor for SBUISystemApertureLayoutMode, &unk_10003E224);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C418);
  }

  return result;
}

unint64_t sub_100039B9C()
{
  result = qword_10005C428;
  if (!qword_10005C428)
  {
    sub_100005F90(&qword_10005C430, qword_100041868);
    sub_1000396D0();
    sub_100039808(&qword_10005C408, &qword_10005C388, &qword_100041810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C428);
  }

  return result;
}

uint64_t APUILiveActivitiesHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  sub_10003AB74(a1);
  v6 = v5;
  (*(*(*(v2 + 19) - 8) + 8))(a1);
  return v6;
}

id APUISecureWindow.__allocating_init(windowScene:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithWindowScene:a1];

  return v3;
}

uint64_t APUISecureHostingController.__allocating_init(rootView:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10003AB2C(a1, a2, a3, a4);
  (*(*(*(v4 + class metadata base offset for APUISecureHostingController) - 8) + 8))(a1);
  return v6;
}

uint64_t sub_100039DB0()
{
  v0 = type metadata accessor for Logger();
  sub_100005DBC(v0, qword_10005C438);
  v1 = sub_100005D84(v0, qword_10005C438);
  if (qword_10005A230 != -1)
  {
    swift_once();
  }

  v2 = sub_100005D84(v0, qword_10005C708);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t APUISecureHostingController.init(rootView:)(uint64_t a1)
{
  v3 = swift_isaMask & *v1;
  v4 = sub_10003AA44(a1);
  (*(*(*(v3 + class metadata base offset for APUISecureHostingController) - 8) + 8))(a1);
  return v4;
}

void *APUISecureHostingController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + class metadata base offset for APUISecureHostingController);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v11 - v6);
  v7 = UIHostingController.init(coder:rootView:)();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id APUISecureHostingController.init(coder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for APUISecureHostingController(0, *((swift_isaMask & *v4) + class metadata base offset for APUISecureHostingController), *((swift_isaMask & *v4) + class metadata base offset for APUISecureHostingController + 8), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id APUISecureHostingController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for APUISecureHostingController(0, *((swift_isaMask & *v4) + class metadata base offset for APUISecureHostingController), *((swift_isaMask & *v4) + class metadata base offset for APUISecureHostingController + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

id APUISecureWindow.init(windowScene:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for APUISecureWindow();
  v3 = objc_msgSendSuper2(&v5, "initWithWindowScene:", a1);

  return v3;
}

id APUISecureWindow.init(frame:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11.receiver = v5;
  v11.super_class = type metadata accessor for APUISecureWindow();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a2, a3, a4, a5);
}

id APUISecureWindow.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for APUISecureWindow();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id APUISecureWindow.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for APUISecureWindow();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_10003A47C(void *a1)
{
  v1 = a1;
  APUILiveActivitiesHostingController.preferredContentSize.getter();
  v3 = v2;

  return v3;
}

void sub_10003A4D8(void *a1, double a2, double a3)
{
  v3 = a1;
  APUILiveActivitiesHostingController.preferredContentSize.setter();
}

uint64_t APUILiveActivitiesHostingController.init(rootView:)(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  sub_10003AB74(a1);
  v6 = v5;
  (*(*(*((v4 & v3) + 0x98) - 8) + 8))(a1);
  return v6;
}

Swift::Void __swiftcall APUILiveActivitiesHostingController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v4 = type metadata accessor for APUILiveActivitiesHostingController(0, *((swift_isaMask & *v2) + 0x98), *((swift_isaMask & *v2) + 0xA0), v1);
  v5.receiver = v2;
  v5.super_class = v4;
  objc_msgSendSuper2(&v5, "viewIsAppearing:", a1);
  _s18ActivityProgressUI35APUILiveActivitiesHostingControllerC29preferredContentSizeDidChange08forChildI9ContainerySo09UIContentO0_p_tF_0_0();
}

void sub_10003A668(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  APUILiveActivitiesHostingController.viewIsAppearing(_:)(a3);
}

void sub_10003A6C0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  _s18ActivityProgressUI35APUILiveActivitiesHostingControllerC29preferredContentSizeDidChange08forChildI9ContainerySo09UIContentO0_p_tF_0();
  swift_unknownObjectRelease();
}

void _s18ActivityProgressUI35APUILiveActivitiesHostingControllerC29preferredContentSizeDidChange08forChildI9ContainerySo09UIContentO0_p_tF_0_0()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 window];

  if (v3)
  {
    v4 = [v3 windowScene];
    if (v4)
    {
      v10 = v4;
      type metadata accessor for ActivityScene();
      if (swift_dynamicCastClass())
      {
        [v0 preferredContentSize];
        v5 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
        ActivitySceneMetrics.init(size:cornerRadius:)();
        dispatch thunk of ActivityScene.resolvedMetrics.setter();
        v6 = v3;
LABEL_13:

        return;
      }
    }

    if (qword_10005A248 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100005D84(v7, qword_10005C438);
    v6 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, v8, "LiveActivitiesHostingController used in a scene that's not an ActivityScene", v9, 2u);
    }

    v10 = v3;
    goto LABEL_13;
  }
}

void sub_10003A944(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_10003B260();
}

id APUILiveActivitiesHostingController.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for APUILiveActivitiesHostingController(0, *((swift_isaMask & *v4) + 0x98), *((swift_isaMask & *v4) + 0xA0), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_10003AA44(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v4 - v1);
  return UIHostingController.init(rootView:)();
}

void sub_10003AB74(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v6);
  v7 = *((v5 & v4) + 0x98);
  v8 = *((v5 & v4) + 0xA0);
  v10 = type metadata accessor for APUISecureHostingController(0, v7, v8, v9);
  v13 = sub_10003AB2C(a1, v10, v11, v12);
  sub_100005D3C(&qword_10005A648, &unk_10003E520);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10003DD60;
  v15 = v13;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  v64 = v14;
  sub_10003B31C();
  sub_100005D3C(&qword_10005A658, qword_10003ED60);
  sub_10003B374();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  *(v2 + qword_10005C450) = v15;
  v63.receiver = v2;
  v63.super_class = type metadata accessor for APUILiveActivitiesHostingController(0, v7, v8, v16);
  v17 = v15;
  v18 = objc_msgSendSuper2(&v63, "initWithNibName:bundle:", 0, 0);
  v19 = [v18 view];
  if (!v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v20 = v19;
  v21 = qword_10005C450;
  v22 = [*&v18[qword_10005C450] view];
  if (!v22)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = v22;
  [v20 addSubview:v22];

  [v18 addChildViewController:*&v18[v21]];
  v24 = [v18 view];
  if (!v24)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25 = v24;
  v26 = objc_opt_self();
  v27 = [v26 clearColor];
  [v25 setBackgroundColor:v27];

  v28 = v17;
  v29 = [v28 view];
  if (!v29)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v30 = v29;
  v31 = [v26 clearColor];
  [v30 setBackgroundColor:v31];

  v32 = [v28 view];
  if (!v32)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v33 = v32;
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_100005D3C(&qword_10005BFE0, &qword_10003E530);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10003DD70;
  v35 = [v28 view];
  if (!v35)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v36 = v35;
  v37 = [v35 topAnchor];

  v38 = [v18 view];
  if (!v38)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v39 = v38;
  v40 = [v38 topAnchor];

  v41 = [v37 constraintEqualToAnchor:v40];
  *(v34 + 32) = v41;
  v42 = [v28 view];
  if (!v42)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v43 = v42;
  v44 = [v42 leadingAnchor];

  v45 = [v18 view];
  if (!v45)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v46 = v45;
  v47 = [v45 leadingAnchor];

  v48 = [v44 constraintEqualToAnchor:v47];
  *(v34 + 40) = v48;
  v49 = [v28 view];
  if (!v49)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v50 = v49;
  v51 = [v49 trailingAnchor];

  v52 = [v18 view];
  if (!v52)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v53 = v52;
  v54 = [v52 trailingAnchor];

  v55 = [v51 constraintEqualToAnchor:v54];
  *(v34 + 48) = v55;
  v56 = [v28 view];

  if (!v56)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v57 = [v56 bottomAnchor];

  v58 = [v18 view];
  if (v58)
  {
    v59 = objc_opt_self();
    v60 = [v58 bottomAnchor];

    v61 = [v57 constraintEqualToAnchor:v60];
    *(v34 + 56) = v61;
    sub_1000062B0();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v59 activateConstraints:isa];

    return;
  }

LABEL_27:
  __break(1u);
}

unint64_t sub_10003B31C()
{
  result = qword_10005A650;
  if (!qword_10005A650)
  {
    type metadata accessor for UIHostingControllerSizingOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A650);
  }

  return result;
}

unint64_t sub_10003B374()
{
  result = qword_10005A660;
  if (!qword_10005A660)
  {
    sub_100005F90(&qword_10005A658, qword_10003ED60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A660);
  }

  return result;
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}