unint64_t sub_1004A72D0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 16 * result + 16 * a3;
  v10 = (v6 + 32 + 16 * a2);
  if (result != v10 || result >= v10 + 16 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 16 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1004A7394()
{
  result = qword_100987418;
  if (!qword_100987418)
  {
    type metadata accessor for CreateCalendarEventAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987418);
  }

  return result;
}

uint64_t sub_1004A73EC(uint64_t a1, uint64_t a2)
{
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v4 = Promise.__allocating_init()();
  type metadata accessor for EventStoreManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v5 = v10[0];
  sub_1005AA400();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v4;
  v6[5] = v5;
  v7 = sub_1000076C0();
  swift_retain_n();

  v8 = v5;
  v10[3] = v7;
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = static OS_dispatch_queue.main.getter();
  Promise.then(perform:orCatchError:on:)();

  sub_100007000(v10);
  return v4;
}

void sub_1004A7554(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ActionOutcome();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v11 = v8;
    v12 = sub_1005AA56C();
    if (!v12)
    {
      (*(v7 + 104))(v10, enum case for ActionOutcome.unsupported(_:), v11);
      Promise.resolve(_:)();
      (*(v7 + 8))(v10, v11);
      return;
    }

    sub_1005D01FC(v12, 1, a3);
  }

  else
  {
    CalendarEvent = CreateCalendarEventAction.notAuthorizedAction.getter();
    if (!CalendarEvent)
    {
      return;
    }

    sub_1005D0214(CalendarEvent, 1, a3);
  }

  Promise.pipe(to:)();
}

uint64_t sub_1004A76F0(uint64_t a1)
{
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSLogger();
  sub_1000056A8(v1, qword_1009CE218);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_1000056E0(v5);
  (*(*(v4 - 8) + 16))(v2);
  static LogMessage.sensitive(_:)();
  sub_10003D444(v5);
  Logger.error(_:)();

  return Promise.reject(_:)();
}

void sub_1004A799C()
{
  v1 = v0;
  v40.receiver = v0;
  v40.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v40, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC8AppStore30LocalizationTestViewController_objectGraph];
  v3 = qword_10096E520;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_100987420;

  sub_1004AA77C(v2, v41 + 8);
  *&v41[0] = v2;
  *(&v42 + 1) = v4;
  v39[7] = v41[2];
  v39[8] = v41[3];
  v39[9] = v42;
  v39[5] = v41[0];
  v39[6] = v41[1];
  v5 = objc_allocWithZone(sub_10002849C(&qword_100987458, &unk_1007D00D0));
  sub_1004AAB00(v41, v39);
  v6 = UIHostingController.init(rootView:)();
  [v1 addChildViewController:v6];
  v7 = [v6 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [v1 view];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v6 view];

  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v10 addSubview:v11];

  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1007BB060;
  v13 = [v6 view];

  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = [v13 topAnchor];

  v15 = [v1 view];
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v15;
  v17 = [v15 topAnchor];

  v18 = [v14 constraintEqualToAnchor:v17];
  *(v12 + 32) = v18;
  v19 = [v6 view];

  if (!v19)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = [v19 leadingAnchor];

  v21 = [v1 view];
  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = v21;
  v23 = [v21 leadingAnchor];

  v24 = [v20 constraintEqualToAnchor:v23];
  *(v12 + 40) = v24;
  v25 = [v6 view];

  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = [v25 bottomAnchor];

  v27 = [v1 view];
  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v26 constraintEqualToAnchor:v29];
  *(v12 + 48) = v30;
  v31 = [v6 view];

  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v32 = [v31 trailingAnchor];

  v33 = [v1 view];
  if (v33)
  {
    v34 = v33;
    v35 = objc_opt_self();
    v36 = [v34 trailingAnchor];

    v37 = [v32 constraintEqualToAnchor:v36];
    *(v12 + 56) = v37;
    sub_100005744(0, &qword_1009766E0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v35 activateConstraints:isa];

    [v6 didMoveToParentViewController:v1];
    sub_1004AAB38(v41);
    return;
  }

LABEL_25:
  __break(1u);
}

double sub_1004A7F6C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v65 = a2;
  v64 = sub_10002849C(&qword_1009874A8, &qword_1007D0270);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v55 - v3;
  v76 = sub_10002849C(&qword_1009874B0, &qword_1007D0278);
  v66 = *(v76 - 8);
  __chkstk_darwin(v76);
  v82 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v75 = &v55 - v6;
  v61 = type metadata accessor for Prominence();
  v7 = *(v61 - 1);
  __chkstk_darwin(v61);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10002849C(&qword_1009874B8, &qword_1007D0280);
  v59 = *(v58 - 8);
  __chkstk_darwin(v58);
  v11 = &v55 - v10;
  v74 = sub_10002849C(&qword_1009874C0, &qword_1007D0288);
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v77 = &v55 - v14;
  v15 = *(a1 + 24);
  v87 = *(a1 + 8);
  v88 = v15;
  *v89 = *(a1 + 40);
  *&v89[9] = *(a1 + 49);
  sub_1004A8A04();
  static Font.footnote.getter();
  v72 = Text.font(_:)();
  v71 = v16;
  v60 = v17;
  v81 = v18;

  if (v88)
  {
    *&v84 = 0;
    *(&v84 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    *&v84 = 0x100000000000002ELL;
    *(&v84 + 1) = 0x80000001008165B0;
    String.append(_:)(v87);
  }

  static Font.footnote.getter();
  v79 = Text.font(_:)();
  v78 = v19;
  v57 = v20;
  v80 = v21;

  static Font.footnote.getter();
  v68 = Text.font(_:)();
  v67 = v22;
  v56 = v23;
  v69 = v24;

  *&v84 = 0xD000000000000017;
  *(&v84 + 1) = 0x8000000100816550;
  v85 = 0;
  v86 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v25);
  *(&v55 - 2) = a1;
  sub_10002849C(&qword_1009874C8, &qword_1007D0290);
  sub_1004AB200();
  Section<>.init(header:content:)();
  v26 = enum case for Prominence.increased(_:);
  v27 = *(v7 + 104);
  v28 = v9;
  v29 = v9;
  v30 = v61;
  v27(v29, enum case for Prominence.increased(_:), v61);
  sub_1004AB398(&qword_1009874E0, &qword_1009874B8, &qword_1007D0280, sub_1004AB200);
  v31 = v58;
  View.headerProminence(_:)();
  v55 = *(v7 + 8);
  v55(v28, v30);
  v32 = (*(v59 + 8))(v11, v31);
  v84 = xmmword_1007D0080;
  v85 = 0;
  v86 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v32);
  *(&v55 - 2) = a1;
  sub_10002849C(&qword_1009874E8, &qword_1007D0298);
  sub_1004AB2E0();
  v33 = v62;
  Section<>.init(header:content:)();
  v27(v28, v26, v30);
  sub_1004AB398(&qword_100987508, &qword_1009874A8, &qword_1007D0270, sub_1004AB2E0);
  v34 = v75;
  v35 = v64;
  View.headerProminence(_:)();
  v55(v28, v30);
  (*(v63 + 8))(v33, v35);
  v36 = v60 & 1;
  LOBYTE(v84) = v60 & 1;
  v83 = v57 & 1;
  LOBYTE(v28) = v57 & 1;
  LODWORD(v63) = v57 & 1;
  v62 = *(v73 + 16);
  v37 = v70;
  v38 = v74;
  (v62)(v70, v77, v74);
  v39 = v66;
  v61 = *(v66 + 16);
  (v61)(v82, v34, v76);
  v40 = v65;
  v41 = v72;
  v42 = v71;
  *v65 = v72;
  v40[1] = v42;
  *(v40 + 16) = v36;
  v43 = v79;
  v40[3] = v81;
  v40[4] = v43;
  v40[5] = v78;
  *(v40 + 48) = v28;
  v44 = v68;
  v40[7] = v80;
  v40[8] = v44;
  v40[9] = v67;
  LODWORD(v64) = v56 & 1;
  *(v40 + 80) = v56 & 1;
  v40[11] = v69;
  v45 = sub_10002849C(&qword_100987510, &qword_1007D02A8);
  (v62)(v40 + *(v45 + 80), v37, v38);
  v46 = v40 + *(v45 + 96);
  v47 = v76;
  (v61)(v46, v82, v76);
  sub_100170840(v41, v42, v36);

  sub_100170840(v79, v78, v63);

  v48 = v68;
  v49 = v67;
  LOBYTE(v45) = v64;
  sub_100170840(v68, v67, v64);
  v50 = *(v39 + 8);

  v51 = v47;
  v50(v75, v47);
  v52 = *(v73 + 8);
  v53 = v74;
  v52(v77, v74);
  v50(v82, v51);
  v52(v70, v53);
  sub_100170894(v48, v49, v45);

  sub_100170894(v79, v78, v83);

  sub_100170894(v72, v71, v84);

  return result;
}

uint64_t sub_1004A8A04()
{
  if (*(v0 + 18))
  {
    _StringGuts.grow(_:)(20);

    v2 = 0x1000000000000012;
  }

  else
  {
    _StringGuts.grow(_:)(41);

    v2 = 0x1000000000000027;
  }

  String.append(_:)(*(v0 + 24));
  return v2;
}

uint64_t sub_1004A8AC0(uint64_t a1)
{

  sub_10002849C(&qword_100987548, &qword_1007D02E8);
  sub_100097060(&qword_100987550, &qword_100987548, &qword_1007D02E8, &protocol conformance descriptor for [A]);
  sub_1004AB284();
  sub_1004AB47C();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1004A8B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10002849C(&qword_100987518, &unk_1007D02B0);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = type metadata accessor for IntentViewConfiguration();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10002849C(&qword_100987500, &qword_1007D02A0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - v10;
  if (*(a1 + 64))
  {
    v20[6] = 0xD000000000000016;
    v20[7] = 0x80000001007D02A0;
    v21 = 1;
    v20[3] = static Transaction._loading.getter();
    IntentViewConfiguration.init()();
    v20[2] = sub_10002849C(&qword_1009874C8, &qword_1007D0290);
    v20[4] = v4;
    v20[5] = a2;
    v20[1] = sub_10002849C(&qword_100987520, &qword_1007D02D8);
    sub_10002849C(&qword_100987528, &qword_1007D02E0);
    sub_1004AB428();
    sub_1004AB200();
    sub_100097060(&qword_100987538, &qword_100987520, &qword_1007D02D8, &protocol conformance descriptor for LoadingView<A>);
    sub_100097060(&qword_100987540, &qword_100987528, &qword_1007D02E0, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
    IntentView.init(what:transaction:configuration:working:failed:content:)();
    (*(v9 + 16))(v6, v11, v8);
    swift_storeEnumTagMultiPayload();
    sub_100097060(&qword_1009874F8, &qword_100987500, &qword_1007D02A0, &protocol conformance descriptor for IntentView<A, B, C, D>);
    _ConditionalContent<>.init(storage:)();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {

    static Font.footnote.getter();
    v13 = Text.font(_:)();
    v15 = v14;
    v17 = v16;
    v19 = v18;

    *v6 = v13;
    *(v6 + 1) = v15;
    v6[16] = v17 & 1;
    *(v6 + 3) = v19;
    swift_storeEnumTagMultiPayload();
    sub_100097060(&qword_1009874F8, &qword_100987500, &qword_1007D02A0, &protocol conformance descriptor for IntentView<A, B, C, D>);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1004A8FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_errorRetain();

  return ContentUnavailableView.init<>(error:retry:)(a1, a2, a3, v6);
}

uint64_t sub_1004A9044(uint64_t *a1)
{

  sub_10002849C(&qword_100987548, &qword_1007D02E8);
  sub_100097060(&qword_100987550, &qword_100987548, &qword_1007D02E8, &protocol conformance descriptor for [A]);
  sub_1004AB284();
  sub_1004AB47C();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1004A911C()
{
  v1 = sub_10002849C(&qword_100987480, &qword_1007D0260);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-v3];
  v5 = v0[3];
  v11[2] = v0[2];
  v11[3] = v5;
  v11[4] = v0[4];
  v6 = v0[1];
  v11[0] = *v0;
  v11[1] = v6;
  v9 = v11;
  sub_10002849C(&qword_100987488, &qword_1007D0268);
  sub_100097060(&qword_100987490, &qword_100987488, &qword_1007D0268, &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  v10[3] = type metadata accessor for JSIntentDispatcher();
  v10[4] = sub_1004AB1B0(&qword_100987498, &type metadata accessor for JSIntentDispatcher, &protocol conformance descriptor for JSIntentDispatcher);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  sub_100097060(&qword_1009874A0, &qword_100987480, &qword_1007D0260, &protocol conformance descriptor for List<A, B>);
  View.intentDispatcher(_:with:)();
  (*(v2 + 8))(v4, v1);
  return sub_100007000(v10);
}

double sub_1004A934C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[6] != a1[4] || a1[7] != a1[5])
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  static Font.title3.getter();
  v5 = Text.font(_:)();
  v7 = v6;
  v25 = v8;
  v10 = v9;

  v11 = static HorizontalAlignment.leading.getter();
  v26[0] = 0;
  sub_1004A9614(a1, &v39);
  v32 = *&v40[48];
  v33 = *&v40[64];
  v34 = *&v40[80];
  v35 = *&v40[96];
  v28 = v39;
  v29 = *v40;
  v30 = *&v40[16];
  v31 = *&v40[32];
  v36[0] = v39;
  v36[1] = *v40;
  v36[2] = *&v40[16];
  v36[3] = *&v40[32];
  v36[4] = *&v40[48];
  v36[5] = *&v40[64];
  v36[6] = *&v40[80];
  v36[7] = *&v40[96];
  sub_100031660(&v28, &v37, &qword_100987578, &qword_1007D0510);
  sub_10002B894(v36, &qword_100987578, &qword_1007D0510);
  *&v27[71] = v32;
  *&v27[87] = v33;
  *&v27[103] = v34;
  *&v27[119] = v35;
  *&v27[7] = v28;
  *&v27[23] = v29;
  *&v27[39] = v30;
  *&v27[55] = v31;
  *&v37 = v11;
  *(&v37 + 1) = 0x4020000000000000;
  v38[0] = 0;
  *&v38[65] = *&v27[64];
  v13 = *&v27[48];
  v12 = *&v27[64];
  *&v38[49] = *&v27[48];
  *&v38[33] = *&v27[32];
  v15 = *&v27[16];
  v14 = *&v27[32];
  *&v38[17] = *&v27[16];
  *&v38[128] = *(&v35 + 1);
  *&v38[113] = *&v27[112];
  v17 = *&v27[96];
  v16 = *&v27[112];
  *&v38[97] = *&v27[96];
  v18 = *&v27[80];
  *&v38[81] = *&v27[80];
  v19 = *v27;
  *&v38[1] = *v27;
  v20 = *&v38[96];
  *(a2 + 128) = *&v38[80];
  *(a2 + 144) = v20;
  *(a2 + 160) = *&v38[112];
  v21 = *&v38[32];
  *(a2 + 64) = *&v38[16];
  *(a2 + 80) = v21;
  v22 = *&v38[64];
  *(a2 + 96) = *&v38[48];
  *(a2 + 112) = v22;
  v23 = *v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v23;
  *&v40[81] = v18;
  *&v40[97] = v17;
  *v41 = v16;
  *&v40[17] = v15;
  *&v40[33] = v14;
  *&v40[49] = v13;
  *&v40[65] = v12;
  v26[152] = v25 & 1;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v10;
  *(a2 + 176) = *&v38[128];
  *&v39 = v11;
  *(&v39 + 1) = 0x4020000000000000;
  v40[0] = 0;
  *&v41[15] = *&v27[127];
  *&v40[1] = v19;
  sub_100170840(v5, v7, v25 & 1);

  sub_100031660(&v37, v26, &qword_100987580, &qword_1007D0518);
  sub_10002B894(&v39, &qword_100987580, &qword_1007D0518);
  sub_100170894(v5, v7, v25 & 1);

  return result;
}

double sub_1004A9614@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v39 = a1[8];
  v42 = a1[9];

  static Font.title3.getter();
  v41 = Text.font(_:)();
  v45 = v6;
  v46 = v7;
  v44 = v8;

  v9 = v4 == v2 && v5 == v3;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v21._countAndFlagsBits = v2;
    v21._object = v3;
    String.append(_:)(v21);
    static Font.footnote.getter();
    v22 = Text.font(_:)();
    v24 = v23;
    v38 = v25;
    v27 = v26;

    v28._countAndFlagsBits = v4;
    v28._object = v5;
    String.append(_:)(v28);
    static Font.footnote.getter();
    v29 = Text.font(_:)();
    v31 = v30;
    v33 = v32;
    v35 = v34;

    LOBYTE(v56[0]) = v38 & 1;
    sub_100170840(v22, v24, v38 & 1);

    sub_100170840(v29, v31, v33 & 1);

    sub_100170894(v29, v31, v33 & 1);

    sub_100170894(v22, v24, v38 & 1);

    sub_100170840(v22, v24, v38 & 1);

    sub_100170840(v29, v31, v33 & 1);
    *&v57 = v22;
    *(&v57 + 1) = v24;
    LOBYTE(v58) = v38 & 1;
    *(&v58 + 1) = v27;
    *&v59 = v29;
    *(&v59 + 1) = v31;
    LOBYTE(v60) = v33 & 1;
    *(&v60 + 1) = v35;

    v10 = v42;
    if (v42)
    {
      goto LABEL_7;
    }

LABEL_9:
    v20 = 0;
    v43 = 0;
    v19 = 0;
    v18 = 0;
    goto LABEL_10;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v10 = v42;
  if (!v42)
  {
    goto LABEL_9;
  }

LABEL_7:
  *&v56[0] = 0x203A65746F4ELL;
  *(&v56[0] + 1) = 0xE600000000000000;
  v11 = v39;
  String.append(_:)(*(&v10 - 1));
  static Font.caption2.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v16 & 1;
  v20 = v12;
  v43 = v14;
  sub_100170840(v12, v14, v16 & 1);

LABEL_10:
  v51 = v57;
  v52 = v58;
  v53 = v59;
  v55[0] = v57;
  v55[1] = v58;
  v54 = v60;
  v55[2] = v59;
  v55[3] = v60;
  v49 = v59;
  v50 = v60;
  v47 = v57;
  v48 = v58;
  sub_100170840(v41, v45, v44 & 1);

  sub_100170840(v41, v45, v44 & 1);

  sub_100031660(v55, v56, &qword_100987588, &qword_1007D0520);
  sub_1001707FC(v20, v43, v19, v18, v36);
  sub_10002B894(&v57, &qword_100987588, &qword_1007D0520);
  sub_100170850(v20, v43, v19, v18);
  sub_100170894(v41, v45, v44 & 1);

  *a2 = v41;
  *(a2 + 8) = v45;
  *(a2 + 16) = v44 & 1;
  *(a2 + 24) = v46;
  *(a2 + 32) = v47;
  *(a2 + 48) = v48;
  *(a2 + 64) = v49;
  *(a2 + 80) = v50;
  *(a2 + 96) = v20;
  *(a2 + 104) = v43;
  *(a2 + 112) = v19;
  *(a2 + 120) = v18;
  sub_100170850(v20, v43, v19, v18);
  v56[0] = v51;
  v56[1] = v52;
  v56[2] = v53;
  v56[3] = v54;
  sub_10002B894(v56, &qword_100987588, &qword_1007D0520);
  sub_100170894(v41, v45, v44 & 1);

  return result;
}

double sub_1004A9AC0@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v28[1] = v1[1];
  v4 = v1[3];
  v28[2] = v1[2];
  v28[3] = v4;
  v28[4] = v1[4];
  v28[0] = v3;
  v5 = static VerticalAlignment.top.getter();
  v27 = 0;
  sub_1004A934C(v28, &v14);
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v41[8] = v22;
  v41[9] = v23;
  v41[10] = v24;
  v41[4] = v18;
  v41[5] = v19;
  v41[6] = v20;
  v41[7] = v21;
  v41[0] = v14;
  v41[1] = v15;
  v40 = v25;
  v42 = v25;
  v41[2] = v16;
  v41[3] = v17;
  sub_100031660(&v29, v13, &qword_100987570, &qword_1007D0508);
  sub_10002B894(v41, &qword_100987570, &qword_1007D0508);
  *(&v26[8] + 7) = v37;
  *(&v26[9] + 7) = v38;
  *(&v26[10] + 7) = v39;
  *(&v26[11] + 7) = v40;
  *(&v26[4] + 7) = v33;
  *(&v26[5] + 7) = v34;
  *(&v26[6] + 7) = v35;
  *(&v26[7] + 7) = v36;
  *(v26 + 7) = v29;
  *(&v26[1] + 7) = v30;
  *(&v26[2] + 7) = v31;
  *(&v26[3] + 7) = v32;
  v6 = v26[9];
  *(a1 + 145) = v26[8];
  *(a1 + 161) = v6;
  *(a1 + 177) = v26[10];
  *(a1 + 192) = *(&v26[10] + 15);
  v7 = v26[5];
  *(a1 + 81) = v26[4];
  *(a1 + 97) = v7;
  v8 = v26[7];
  *(a1 + 113) = v26[6];
  *(a1 + 129) = v8;
  v9 = v26[1];
  *(a1 + 17) = v26[0];
  *(a1 + 33) = v9;
  result = *&v26[2];
  v11 = v26[3];
  *(a1 + 49) = v26[2];
  v12 = v27;
  *a1 = v5;
  *(a1 + 8) = 0x4038000000000000;
  *(a1 + 16) = v12;
  *(a1 + 65) = v11;
  return result;
}

uint64_t sub_1004A9CD0()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];
  v2 = v1;
  if (!v1)
  {
    v3 = [v0 ams_fetchLocaliTunesAccount];
    v11 = 0;
    v4 = [v3 resultWithError:&v11];

    if (!v4)
    {
      v9 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v2 = 0;
      goto LABEL_7;
    }

    v5 = v11;
    v2 = v4;
    v1 = 0;
  }

  v6 = v1;
  v7 = [v2 ams_storefront];

  if (!v7)
  {
LABEL_7:

    return 0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

__n128 sub_1004A9E58@<Q0>(uint64_t a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  sub_1004AACF4(a2, a3, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v6;
    *(a1 + 64) = v7[4];
    result = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = result;
  }

  return result;
}

double sub_1004A9EA8@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t sub_1004A9EB4()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100987470, &qword_1007D00E8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007D0090;
  v73 = 0x8000000100816090;
  v5._countAndFlagsBits = 0xD000000000000016;
  v5._object = 0x80000001008160C0;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v7 = localizedString(_:comment:)(v5, v6);
  UUID.init()();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v3, v0);
  v75 = v1 + 8;
  *(v4 + 32) = v8;
  *(v4 + 40) = v10;
  v12 = v73;
  *(v4 + 48) = 0xD000000000000025;
  *(v4 + 56) = v12;
  *(v4 + 64) = 1852141647;
  *(v4 + 72) = 0xE400000000000000;
  *(v4 + 80) = v7;
  v73 = 0x80000001008160E0;
  *(v4 + 96) = 0u;
  v13._countAndFlagsBits = 0x525F5245544F4F46;
  v13._object = 0xED00004D45454445;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v15 = localizedString(_:comment:)(v13, v14);
  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  v11(v3, v0);
  *(v4 + 112) = v16;
  *(v4 + 120) = v18;
  v19 = v73;
  *(v4 + 128) = 0xD000000000000025;
  *(v4 + 136) = v19;
  *(v4 + 144) = 0x6D6565646552;
  *(v4 + 152) = 0xE600000000000000;
  *(v4 + 160) = v15;
  v73 = 0x8000000100816110;
  *(v4 + 176) = 0u;
  v20._object = 0x80000001007FBBD0;
  v20._countAndFlagsBits = 0xD000000000000013;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v22 = localizedStringWithCount(_:count:comment:)(v20, 2, v21);
  countAndFlagsBits = v22._countAndFlagsBits;
  UUID.init()();
  v23 = UUID.uuidString.getter();
  v25 = v24;
  v74 = v0;
  v11(v3, v0);
  *(v4 + 192) = v23;
  *(v4 + 200) = v25;
  v26 = v73;
  *(v4 + 208) = 0xD000000000000041;
  *(v4 + 216) = v26;
  *(v4 + 224) = 0x676E697461522032;
  *(v4 + 232) = 0xE900000000000073;
  *(v4 + 240) = countAndFlagsBits;
  *(v4 + 248) = v22._object;
  v73 = 0x8000000100816160;
  *(v4 + 256) = 0u;
  v27._object = 0x80000001007FBBD0;
  v27._countAndFlagsBits = 0xD000000000000013;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v29 = localizedStringWithCount(_:count:comment:)(v27, 1, v28);
  UUID.init()();
  v30 = UUID.uuidString.getter();
  v32 = v31;
  v11(v3, v0);
  *(v4 + 272) = v30;
  *(v4 + 280) = v32;
  v33 = v73;
  *(v4 + 288) = 0xD000000000000041;
  *(v4 + 296) = v33;
  *(v4 + 304) = 0x676E697461522031;
  *(v4 + 312) = 0xE800000000000000;
  *(v4 + 320) = v29;
  v73 = 0x80000001008161F0;
  v34._countAndFlagsBits = 0xD000000000000028;
  *(v4 + 336) = 0u;
  v34._object = 0x8000000100816210;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v36 = localizedStringWithCount(_:count:comment:)(v34, 3, v35);
  UUID.init()();
  v37 = UUID.uuidString.getter();
  v39 = v38;
  v40 = v74;
  v72 = v11;
  v11(v3, v74);
  *(v4 + 352) = v37;
  *(v4 + 360) = v39;
  *(v4 + 368) = 0xD000000000000036;
  *(v4 + 376) = 0x80000001008161B0;
  v41 = v73;
  *(v4 + 384) = 0xD000000000000017;
  *(v4 + 392) = v41;
  *(v4 + 400) = v36;
  v73 = 0x8000000100816240;
  countAndFlagsBits = 0x8000000100816290;
  *(v4 + 416) = 0u;
  v42._object = 0x80000001008162B0;
  v42._countAndFlagsBits = 0xD00000000000002FLL;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  v44 = localizedStringWithCount(_:count:comment:)(v42, 1, v43);
  UUID.init()();
  v45 = UUID.uuidString.getter();
  v47 = v46;
  v11(v3, v40);
  *(v4 + 432) = v45;
  *(v4 + 440) = v47;
  v48 = v73;
  *(v4 + 448) = 0xD000000000000045;
  *(v4 + 456) = v48;
  v49 = countAndFlagsBits;
  *(v4 + 464) = 0xD000000000000014;
  *(v4 + 472) = v49;
  *(v4 + 480) = v44;
  v73 = 0x8000000100816330;
  *(v4 + 496) = 0u;
  v50._object = 0x80000001008162B0;
  v50._countAndFlagsBits = 0xD00000000000002FLL;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  v52 = localizedStringWithCount(_:count:comment:)(v50, 2, v51);
  countAndFlagsBits = v52._countAndFlagsBits;
  UUID.init()();
  v53 = UUID.uuidString.getter();
  v55 = v54;
  v56 = v72;
  v72(v3, v40);
  *(v4 + 512) = v53;
  *(v4 + 520) = v55;
  *(v4 + 528) = 0xD000000000000045;
  *(v4 + 536) = 0x80000001008162E0;
  *(v4 + 544) = 0xD000000000000015;
  *(v4 + 552) = 0x8000000100816330;
  *(v4 + 560) = countAndFlagsBits;
  *(v4 + 568) = v52._object;
  countAndFlagsBits = 0x8000000100816350;
  v57._countAndFlagsBits = 0xD00000000000002CLL;
  *(v4 + 576) = 0u;
  v57._object = 0x80000001008163B0;
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  v59 = localizedStringWithCount(_:count:comment:)(v57, 2, v58);
  UUID.init()();
  v60 = UUID.uuidString.getter();
  v62 = v61;
  v63 = v74;
  v56(v3, v74);
  *(v4 + 592) = v60;
  *(v4 + 600) = v62;
  *(v4 + 608) = 0xD000000000000050;
  *(v4 + 616) = countAndFlagsBits;
  *(v4 + 624) = 0xD000000000000015;
  *(v4 + 632) = v73;
  *(v4 + 640) = v59;
  v64._countAndFlagsBits = 0xD000000000000011;
  *(v4 + 656) = 0u;
  v64._object = 0x8000000100816410;
  v65 = localizedStringForAdsLanguage(_:)(v64);
  UUID.init()();
  v66 = UUID.uuidString.getter();
  v68 = v67;
  result = (v56)(v3, v63);
  *(v4 + 672) = v66;
  *(v4 + 680) = v68;
  *(v4 + 688) = 0xD000000000000023;
  *(v4 + 696) = 0x80000001008163E0;
  *(v4 + 704) = 0xB9B4E88D85E5;
  *(v4 + 712) = 0xA600000000000000;
  *(v4 + 720) = v65;
  *(v4 + 736) = 0xD00000000000002FLL;
  *(v4 + 744) = 0x8000000100816430;
  qword_100987420 = v4;
  return result;
}

void sub_1004AA5B0(uint64_t a1@<X0>, void *a3@<X8>)
{
  v5 = objc_opt_self();
  v6 = [v5 valueWithNewObjectInContext:a1];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 valueWithObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() inContext:a1];
    swift_unknownObjectRelease();
    if (v8)
    {
      JSValue.subscript.setter();
      a3[3] = sub_100005744(0, &qword_1009875A0, JSValue_ptr);
      a3[4] = &protocol witness table for JSValue;

      *a3 = v7;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1004AA6E0()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1004AA750@<X0>(uint64_t *a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1004AB7E0(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

void sub_1004AA77C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = sub_1004A9CD0();
  v31 = v9;
  v32 = v8;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;

  _StringGuts.grow(_:)(64);
  v10._object = 0x8000000100816030;
  v10._countAndFlagsBits = 0x1000000000000032;
  String.append(_:)(v10);
  v11._object = 0x8000000100816070;
  v11._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x206562206F742022;
  v12._object = 0xEC00000065757274;
  String.append(_:)(v12);
  object = v36._object;
  countAndFlagsBits = v36._countAndFlagsBits;
  PreferenceKey.init(_:)();
  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  Preferences.subscript.getter();

  (*(v5 + 8))(v7, v4);
  v13 = v36._countAndFlagsBits;
  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  v33 = a1;
  inject<A, B>(_:from:)();
  v28 = v36._countAndFlagsBits;
  v14 = ASKBagContract.adsOverrideLanguage.getter();
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  if (v16 == 0x2D736E61482D687ALL && v17 == 0xEA00000000004E43)
  {
    v18 = 1;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v26 = v18 & 1;
  v27 = v13 & 1;
  v19 = [objc_opt_self() mainBundle];
  v20 = NSBundle.preferredLocalization(fromLanguageCodes:)(&off_1008B00F8);

  v36 = v20;
  v34 = 26746;
  v35 = 0xE200000000000000;
  sub_1004AAB68();
  sub_1004AABBC();
  LOBYTE(v19) = BidirectionalCollection<>.starts<A>(with:)();

  v21 = v19 & 1;
  v23 = v31;
  v22 = v32;
  v36._countAndFlagsBits = v32;
  v36._object = v31;
  v34 = 0x312D313434333431;
  v35 = 0xE800000000000000;
  LOBYTE(v19) = BidirectionalCollection<>.starts<A>(with:)();

  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v26;
  *(a2 + 17) = v21;
  *(a2 + 18) = v19 & 1;
  *(a2 + 24) = v22;
  *(a2 + 32) = v23;
  v24 = object;
  *(a2 + 40) = countAndFlagsBits;
  *(a2 + 48) = v24;
  *(a2 + 56) = v27;
}

unint64_t sub_1004AAB68()
{
  result = qword_100987460;
  if (!qword_100987460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987460);
  }

  return result;
}

unint64_t sub_1004AABBC()
{
  result = qword_100987468;
  if (!qword_100987468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987468);
  }

  return result;
}

uint64_t sub_1004AAC20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1004AAC68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004AACF4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a3;
  v59 = a2;
  v4 = type metadata accessor for UUID();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v54 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JSONObject();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v48 - v10;
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  v18 = 0xE400000000000000;
  JSONObject.subscript.getter();
  v53 = JSONObject.string.getter();
  v20 = v19;
  v21 = *(v7 + 8);
  v21(v17, v6);
  if (v20)
  {
    v58 = v20;
    v22 = 0x6465746365707865;
    v18 = 0xE800000000000000;
    JSONObject.subscript.getter();
    v51 = JSONObject.string.getter();
    v24 = v23;
    v21(v14, v6);
    v25 = a1;
    if (v24)
    {
      v50 = v24;
      v22 = 0x6C6175746361;
      JSONObject.subscript.getter();
      v26 = JSONObject.string.getter();
      v28 = v27;
      v21(v11, v6);
      if (v28)
      {
        v48 = v26;
        v49 = v28;
        v29 = v52;
        JSONObject.subscript.getter();
        v30 = v21;
        v31 = JSONObject.string.getter();
        v33 = v32;
        v30(v29, v6);
        v34 = v54;
        UUID.init()();
        v35 = UUID.uuidString.getter();
        v37 = v36;
        v38 = type metadata accessor for JSONContext();
        (*(*(v38 - 8) + 8))(v59, v38);
        v30(v25, v6);
        result = (*(v55 + 8))(v34, v56);
        v40 = v57;
        *v57 = v35;
        v40[1] = v37;
        v41 = v58;
        v40[2] = v53;
        v40[3] = v41;
        v42 = v50;
        v40[4] = v51;
        v40[5] = v42;
        v43 = v49;
        v40[6] = v48;
        v40[7] = v43;
        v40[8] = v31;
        v40[9] = v33;
        return result;
      }

      v44 = v21;

      v18 = 0xE600000000000000;
    }

    else
    {
      v44 = v21;
    }
  }

  else
  {
    v44 = v21;
    v25 = a1;
    v22 = 1701667182;
  }

  v45 = type metadata accessor for JSONError();
  sub_1004AB1B0(&qword_100987478, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
  swift_allocError();
  *v46 = v22;
  v46[1] = v18;
  v46[2] = &type metadata for LocalizationTestCase;
  (*(*(v45 - 8) + 104))(v46, enum case for JSONError.missingProperty(_:), v45);
  swift_willThrow();
  v47 = type metadata accessor for JSONContext();
  (*(*(v47 - 8) + 8))(v59, v47);
  return v44(v25, v6);
}

uint64_t sub_1004AB1B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1004AB200()
{
  result = qword_1009874D0;
  if (!qword_1009874D0)
  {
    sub_10002D1A8(&qword_1009874C8, &qword_1007D0290);
    sub_1004AB284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009874D0);
  }

  return result;
}

unint64_t sub_1004AB284()
{
  result = qword_1009874D8;
  if (!qword_1009874D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009874D8);
  }

  return result;
}

unint64_t sub_1004AB2E0()
{
  result = qword_1009874F0;
  if (!qword_1009874F0)
  {
    sub_10002D1A8(&qword_1009874E8, &qword_1007D0298);
    sub_100097060(&qword_1009874F8, &qword_100987500, &qword_1007D02A0, &protocol conformance descriptor for IntentView<A, B, C, D>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009874F0);
  }

  return result;
}

uint64_t sub_1004AB398(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10002D1A8(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004AB428()
{
  result = qword_100987530;
  if (!qword_100987530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987530);
  }

  return result;
}

unint64_t sub_1004AB47C()
{
  result = qword_100987558;
  if (!qword_100987558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987558);
  }

  return result;
}

uint64_t sub_1004AB508(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004AB550(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004AB5A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004AB5E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1004AB64C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1004AB668(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004AB6B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1004AB714()
{
  result = qword_100987560;
  if (!qword_100987560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987560);
  }

  return result;
}

unint64_t sub_1004AB770()
{
  result = qword_100987568;
  if (!qword_100987568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987568);
  }

  return result;
}

uint64_t sub_1004AB7E0(char *a1, uint64_t a2)
{
  v32 = a2;
  v31 = type metadata accessor for JSONContext();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100987590, &qword_1007D0528);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for JSONObject();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for JSONArray();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  v33 = a1;
  JSONObject.subscript.getter();
  JSONObject.array.getter();
  v18 = *(v8 + 8);
  v30 = v7;
  v18(v10, v7);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_10002B894(v6, &qword_100987590, &qword_1007D0528);
    v19 = type metadata accessor for JSONError();
    sub_1004AB1B0(&qword_100987478, &type metadata accessor for JSONError, &protocol conformance descriptor for JSONError);
    swift_allocError();
    *v20 = 0x6573614374736574;
    v20[1] = 0xE900000000000073;
    v20[2] = &type metadata for LocalizationTestResponse;
    (*(*(v19 - 8) + 104))(v20, enum case for JSONError.missingProperty(_:), v19);
    swift_willThrow();
    (*(v29 + 8))(v32, v31);
    v18(v33, v30);
  }

  else
  {
    (*(v12 + 32))(v17, v6, v11);
    v21 = *(v12 + 16);
    v27 = v18;
    v21(v14, v17, v11);
    v22 = v29;
    v24 = v31;
    v23 = v32;
    (*(v29 + 16))(v28, v32, v31);
    sub_1004ABC78();
    v19 = Array<A>.init(tryDeserializing:using:)();
    (*(v22 + 8))(v23, v24);
    v27(v33, v30);
    (*(v12 + 8))(v17, v11);
  }

  return v19;
}

unint64_t sub_1004ABC78()
{
  result = qword_100987598;
  if (!qword_100987598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987598);
  }

  return result;
}

void sub_1004ABCF0()
{
  sub_1004ACDC0();
  v1 = *&v0[OBJC_IVAR____TtC8AppStore14NotifyMeButton_backgroundBlurView];
  v2 = OBJC_IVAR____TtC8AppStore14NotifyMeButton_style;
  [v1 setHidden:v0[OBJC_IVAR____TtC8AppStore14NotifyMeButton_style] != 0];
  v3 = [v1 layer];
  v4 = v3;
  if (v0[v2])
  {
    v5 = 4.0;
  }

  else
  {
    v5 = 17.0;
  }

  [v3 setCornerRadius:v5];

  v6 = *&v0[OBJC_IVAR____TtC8AppStore14NotifyMeButton_backgroundTintView];
  v7 = [v6 layer];
  v8 = v7;
  if (v0[v2])
  {
    v9 = 4.0;
  }

  else
  {
    v9 = 17.0;
  }

  [v7 setCornerRadius:v9];

  v10 = v0[v2];
  v11 = [v0 traitCollection];
  v12 = sub_1004ABEBC(v11, v10);

  [v6 setBackgroundColor:v12];
  v13 = *&v0[OBJC_IVAR____TtC8AppStore14NotifyMeButton_titleLabel];
  LOBYTE(v12) = v0[v2];
  v14 = [v0 traitCollection];
  v15 = sub_1004ABFD0(v14, v12);

  [v13 setTextColor:v15];
  LOBYTE(v13) = v0[v2];
  v16 = [v0 traitCollection];
  v17 = sub_1004ABFD0(v16, v13);

  sub_1004AD1B4(v17);
}

id sub_1004ABEBC(void *a1, char a2)
{
  if (!a2)
  {
    v2 = [objc_opt_self() systemBackgroundColor];
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v2 = static UIColor.primaryText.getter();
LABEL_5:
    v3 = v2;
    v4 = [v2 colorWithAlphaComponent:0.4];
    goto LABEL_6;
  }

  v7 = [a1 userInterfaceStyle];
  v8 = objc_opt_self();
  if (v7 == 2)
  {
    v3 = [v8 whiteColor];
    v4 = [v3 colorWithAlphaComponent:0.13];
  }

  else
  {
    v3 = [v8 systemBlueColor];
    v4 = [v3 colorWithAlphaComponent:0.1];
  }

LABEL_6:
  v5 = v4;

  return v5;
}

id sub_1004ABFD0(void *a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v2 = objc_opt_self();
      v3 = &selRef_whiteColor;
      goto LABEL_8;
    }

    v4 = [a1 userInterfaceStyle];
    v2 = objc_opt_self();
    v3 = &selRef_systemBlueColor;
  }

  else
  {
    v4 = [a1 userInterfaceStyle];
    v2 = objc_opt_self();
    v3 = &selRef_blackColor;
  }

  if (v4 == 2)
  {
    v3 = &selRef_whiteColor;
  }

LABEL_8:
  v5 = [v2 *v3];

  return v5;
}

uint64_t sub_1004AC08C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x54646E416E6F6369;
  v4 = 0xEC000000656C7469;
  v5 = 0x80000001007FA460;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x80000001007FA460;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x796C6E4F6E6F6369;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x54646E416E6F6369;
  if (*a2 == 1)
  {
    v5 = 0xEC000000656C7469;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x796C6E4F6E6F6369;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1004AC198()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1004AC248(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1004AC2E4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1004AC390@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004ADF50(*a1);
  *a2 = result;
  return result;
}

void sub_1004AC3C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEC000000656C7469;
  v5 = 0x54646E416E6F6369;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x80000001007FA460;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x796C6E4F6E6F6369;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_1004AC43C()
{
  result = [objc_opt_self() effectWithBlurRadius:30.0];
  qword_1009875D0 = result;
  return result;
}

uint64_t sub_1004AC4AC(double a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v8 = type metadata accessor for FontSource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E3C0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v13 = sub_1000056A8(v12, qword_1009D1AC0);
  (*(*(v12 - 8) + 16))(v11, v13, v12);
  (*(v9 + 104))(v11, enum case for FontSource.useCase(_:), v8);
  *a3 = type metadata accessor for StaticDimension();
  *a4 = &protocol witness table for StaticDimension;
  sub_1000056E0(a5);
  v17[3] = v8;
  v17[4] = &protocol witness table for FontSource;
  v14 = sub_1000056E0(v17);
  (*(v9 + 16))(v14, v11, v8);
  StaticDimension.init(_:scaledLike:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1004AC6C8(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticDimension();
  sub_100005644(v8, a3);
  sub_1000056A8(v8, a3);
  if (qword_10096E298 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D1748);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v14);
  (*(v5 + 16))(v11, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  return (*(v5 + 8))(v7, v4);
}

char *sub_1004AC8A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DirectionalTextAlignment();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v1[OBJC_IVAR____TtC8AppStore14NotifyMeButton_style] = 0;
  v1[OBJC_IVAR____TtC8AppStore14NotifyMeButton_isActive] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellMicaPlayer] = 0;
  if (qword_10096E530 != -1)
  {
    swift_once();
  }

  v10 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_1009875D0];
  *&v1[OBJC_IVAR____TtC8AppStore14NotifyMeButton_backgroundBlurView] = v10;
  v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC8AppStore14NotifyMeButton_backgroundTintView] = v11;
  if (qword_10096E3C0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v13 = sub_1000056A8(v12, qword_1009D1AC0);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v9, v13, v12);
  (*(v14 + 56))(v9, 0, 1, v12);
  (*(v4 + 104))(v6, enum case for DirectionalTextAlignment.leading(_:), v3);
  v15 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v1[OBJC_IVAR____TtC8AppStore14NotifyMeButton_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v16 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellView] = v16;
  v37.receiver = v1;
  v37.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v37, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v21 = v17;
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v22 = OBJC_IVAR____TtC8AppStore14NotifyMeButton_backgroundBlurView;
  [*&v21[OBJC_IVAR____TtC8AppStore14NotifyMeButton_backgroundBlurView] setClipsToBounds:1];
  v23 = [*&v21[v22] layer];
  v24 = v23;
  v25 = OBJC_IVAR____TtC8AppStore14NotifyMeButton_style;
  if (v21[OBJC_IVAR____TtC8AppStore14NotifyMeButton_style])
  {
    v26 = 4.0;
  }

  else
  {
    v26 = 17.0;
  }

  [v23 setCornerRadius:v26];

  [*&v21[v22] setUserInteractionEnabled:0];
  [v21 addSubview:*&v21[v22]];
  v27 = OBJC_IVAR____TtC8AppStore14NotifyMeButton_backgroundTintView;
  v28 = v21[v25];
  v29 = *&v21[OBJC_IVAR____TtC8AppStore14NotifyMeButton_backgroundTintView];
  v30 = [v21 traitCollection];

  v31 = sub_1004ABEBC(v30, v28);
  [v29 setBackgroundColor:v31];

  v32 = [*&v21[v27] layer];
  v33 = v32;
  if (v21[v25])
  {
    v34 = 4.0;
  }

  else
  {
    v34 = 17.0;
  }

  [v32 setCornerRadius:v34];

  [*&v21[v27] setUserInteractionEnabled:0];
  [v21 addSubview:*&v21[v27]];
  sub_1004ACDC0();
  [v21 addSubview:*&v21[OBJC_IVAR____TtC8AppStore14NotifyMeButton_titleLabel]];
  sub_1004ACEC4(0);
  v35 = OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellView;
  [*&v21[OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellView] setUserInteractionEnabled:0];
  [v21 addSubview:*&v21[v35]];
  sub_1004ABCF0();

  return v21;
}

void sub_1004ACDC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_titleLabel);
  if (*(v0 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_style))
  {
    [*(v0 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_titleLabel) setHidden:0];
    if (*(v0 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_isActive))
    {
      v2 = "APP_EVENTS_BUTTON_NOTIFY_ME";
    }

    else
    {
      v2 = "e";
    }

    if (*(v0 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_isActive))
    {
      v3 = 0xD000000000000021;
    }

    else
    {
      v3 = 0xD00000000000001BLL;
    }

    v4 = v2 | 0x8000000000000000;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    localizedString(_:comment:)(*&v3, v5);
    v7 = String._bridgeToObjectiveC()();

    [v1 setText:v7];
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_titleLabel);

    [v6 setHidden:1];
  }
}

void sub_1004ACEC4(char a1)
{
  v2 = (a1 & 1) != 0 && !UIAccessibilityIsReduceMotionEnabled();
  v3 = objc_allocWithZone(AppStoreMicaPlayer);
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 initWithFileName:v4 retinaScale:1.0];

  sub_1004AD090(v5);
  if (v2)
  {
    v6 = *(v1 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellMicaPlayer);
    if (v6)
    {

      [v6 play];
    }
  }
}

void sub_1004AD090(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellMicaPlayer;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellMicaPlayer];
  if (v4)
  {
    [v4 removeFromSuperlayer];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v7 = v1[OBJC_IVAR____TtC8AppStore14NotifyMeButton_style];
    v8 = [v1 traitCollection];
    v9 = sub_1004ABFD0(v8, v7);

    sub_1004AD1B4(v9);
    v10 = [*&v1[OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellView] layer];
    [v6 addToLayer:v10 onTop:1 gravity:kCAGravityResizeAspect];
  }
}

void sub_1004AD1B4(void *a1)
{
  v3 = type metadata accessor for NSFastEnumerationIterator();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellMicaPlayer);
  if (v8)
  {
    v9 = [v8 rootLayer];
    if (v9)
    {
      v10 = v9;
      sub_100005744(0, &qword_1009876D8, CAShapeLayer_ptr);
      v11 = [v10 mp_allLayersWithKindOfClass:swift_getObjCClassFromMetadata()];

      if (v11)
      {
        v14[0] = v4;
        NSArray.makeIterator()();
        NSFastEnumerationIterator.next()();
        while (v17)
        {
          sub_100056164(&v16, &v15);
          if (swift_dynamicCast())
          {
            v12 = v14[1];
            v13 = [a1 CGColor];
            [v12 setFillColor:v13];
          }

          NSFastEnumerationIterator.next()();
        }

        (*(v14[0] + 8))(v7, v3);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1004AD3B8()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v0;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC8AppStore14NotifyMeButton_backgroundBlurView];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v7 setFrame:?];
  v8 = *&v0[OBJC_IVAR____TtC8AppStore14NotifyMeButton_backgroundTintView];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v8 setFrame:?];
  if (v0[OBJC_IVAR____TtC8AppStore14NotifyMeButton_style])
  {
    if (qword_10096E558 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for StaticDimension();
    sub_1000056A8(v9, qword_100987658);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v10 = *(v3 + 8);
    v10(v6, v2);
    if (qword_10096E548 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v9, qword_100987628);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v12 = v11;
    v10(v6, v2);
    if (qword_10096E550 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v9, qword_100987640);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v14 = v13;
    v10(v6, v2);
    if (qword_10096E528 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v9, qword_1009875B8);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v16 = v15;
    v10(v6, v2);
    LayoutMarginsAware<>.layoutFrame.getter();
    v17 = CGRectGetWidth(v31) - v12 - v14 - v16;
    LayoutMarginsAware<>.layoutFrame.getter();
    Height = CGRectGetHeight(v32);
    v19 = *&v0[OBJC_IVAR____TtC8AppStore14NotifyMeButton_titleLabel];
    [v19 measurementsWithFitting:v0 in:{v17, Height}];
    if (qword_10096E538 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_1009875D8, qword_1009875F0);
    AnyDimension.topMargin(from:in:)();
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMinX(v33);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMinY(v34);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v19 setFrame:?];
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMinX(v35);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMidY(v36);
    v20 = *&v0[OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellView];
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
  }

  else
  {
    LayoutMarginsAware<>.layoutFrame.getter();
    v25 = CGRectGetMidX(v37) + -17.0;
    LayoutMarginsAware<>.layoutFrame.getter();
    MidY = CGRectGetMidY(v38);
    v21 = v25;
    v22 = MidY + -17.0;
    v20 = *&v0[OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellView];
    v23 = 34.0;
    v24 = 34.0;
  }

  [v20 setFrame:{v21, v22, v23, v24}];
  v27 = *&v0[OBJC_IVAR____TtC8AppStore14NotifyMeButton_bellMicaPlayer];
  if (v27)
  {
    v28 = v27;
    v29 = [v20 layer];
    [v28 moveAndResizeWithinParentLayer:v29 usingGravity:kCAGravityResizeAspect animate:0];
  }
}

void sub_1004AD984(double a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_style))
  {
    if (qword_10096E548 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for StaticDimension();
    sub_1000056A8(v7, qword_100987628);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v9 = v8;
    v10 = *(v4 + 8);
    v10(v6, v3);
    if (qword_10096E550 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v7, qword_100987640);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v12 = v11;
    v10(v6, v3);
    if (qword_10096E528 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v7, qword_1009875B8);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v14 = v13;
    v10(v6, v3);
    LayoutMarginsAware<>.layoutFrame.getter();
    [*(v1 + OBJC_IVAR____TtC8AppStore14NotifyMeButton_titleLabel) measurementsWithFitting:v1 in:{a1 - v9 - v12 - v14, CGRectGetHeight(v16)}];
    if (qword_10096E538 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_1009875D8, qword_1009875F0);
    AnyDimension.topMargin(from:in:)();
    if (qword_10096E540 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_100987600, qword_100987618);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v10(v6, v3);
  }
}

unint64_t sub_1004ADEFC()
{
  result = qword_1009876D0;
  if (!qword_1009876D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009876D0);
  }

  return result;
}

unint64_t sub_1004ADF50(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008B0128, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

id sub_1004AE2A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArtworkCollectionViewCell(uint64_t a1)
{
  result = qword_100987710;
  if (!qword_100987710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004AE3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1002A4764(a1, a2, a3, WitnessTable);
}

void sub_1004AE424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1002A4A1C(a1, a2, a3, WitnessTable);
}

unint64_t sub_1004AE490(uint64_t a1)
{
  result = sub_1004AE4B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004AE4B8()
{
  result = qword_100987720;
  if (!qword_100987720)
  {
    type metadata accessor for ArtworkCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100987720);
  }

  return result;
}

double sub_1004AE510(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = ProductCapability.title.getter();
  v13 = v12;
  v14 = ProductCapability.caption.getter();
  v15 = ProductCapability.artwork.getter();
  swift_getObjectType();
  v16.n128_f64[0] = a2;
  v17 = sub_1004F2388(v11, v13, v14, v15, a8, v16, a3);

  return v17;
}

id sub_1004AE664(uint64_t a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_titleLabel];
  ProductCapability.title.getter();
  v4 = String._bridgeToObjectiveC()();

  [v3 setText:v4];

  ProductCapability.caption.getter();
  v5 = ProductCapability.captionTrailingArtwork.getter();
  v6 = LinkableText.linkedSubstrings.getter();
  sub_1000D6F24(v6, sub_1000C17B0);
  v8 = v7;

  v9 = LinkableText.styledText.getter();
  sub_1002F6004(v9, v5, v8);

  v10 = *&v1[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconImageView];
  v11 = ProductCapability.artworkTintColor.getter();
  [v10 setTintColor:v11];

  *&v2[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_icon] = ProductCapability.artwork.getter();

  return [v2 setNeedsLayout];
}

double sub_1004AE7FC(double result)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_icon);
  if (v2)
  {

    if (dispatch thunk of Artwork.isLocalImage.getter())
    {
      v3 = *(v1 + OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconImageView);
      if (dispatch thunk of Artwork.isSystemImage.getter())
      {
        v4 = static SystemImage.load(artwork:with:includePrivateImages:)();
      }

      else if (dispatch thunk of Artwork.isBundleImage.getter())
      {
        v4 = sub_100330100(v2, 0);
      }

      else
      {
        v4 = 0;
      }

      [v3 setImage:v4];
    }

    else
    {
      v5 = qword_10096E680;

      if (v5 != -1)
      {
        swift_once();
      }

      v6 = static SystemImage.load(artwork:with:includePrivateImages:)();
      if (v6)
      {
        v7 = v6;
        [v6 size];
      }

      Artwork.config(using:)();
      sub_10019FDD0();
      sub_1004AEA14(&qword_100973A60, sub_10019FDD0, &protocol conformance descriptor for UIImageView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }
  }

  return v8;
}

uint64_t sub_1004AEA14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004AEB20(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v8 - 8);
  v49 = &v48 - v9;
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspectRatio();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = FramedMedia.isFullWidth.getter();
  v48 = v11;
  if ((v18 & 1) == 0)
  {
    [a6 pageMarginInsets];
  }

  if (FramedArtwork.artwork.getter())
  {
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    AspectRatio.height(fromWidth:)();
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v17, v14);
    FramedMedia.isFullWidth.getter();
    if ((FramedMedia.isFullWidth.getter() & 1) != 0 || v20 <= a2)
    {
    }

    else
    {
      Artwork.size.getter();
      AspectRatio.init(_:_:)();
      AspectRatio.width(fromHeight:)();
      v21(v17, v14);
    }
  }

  v22 = FramedMedia.caption.getter();
  v23 = [v22 length];

  if (v23 >= 1)
  {
    FramedMedia.ordinal.getter();
    if (v24)
    {
      if (qword_10096E228 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for FontUseCase();
      sub_1000056A8(v25, qword_1009D15F8);
      v26 = type metadata accessor for Feature();
      v51 = v26;
      v52 = sub_1004AFA28(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v27 = sub_1000056E0(aBlock);
      (*(*(v26 - 8) + 104))(v27, enum case for Feature.measurement_with_labelplaceholder(_:), v26);
      isFeatureEnabled(_:)();
      sub_100007000(aBlock);
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

      if (qword_10096E690 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for StaticDimension();
      sub_1000056A8(v28, qword_1009D2368);
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();
      v29 = *(v48 + 8);
      v29(v13, v10);
      if (qword_10096E6A0 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v28, qword_1009D2398);
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();
      v29(v13, v10);
      if (qword_10096E698 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v28, qword_1009D2380);
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();
      v29(v13, v10);
    }

    v30 = FramedMedia.caption.getter();
    v31 = [a6 traitCollection];
    v32 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v30];
    v33 = [v30 length];
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = v31;
    *(v34 + 32) = v32;
    *(v34 + 40) = 1;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_100126854;
    *(v35 + 24) = v34;
    v52 = sub_100126848;
    v53 = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006606C4;
    v51 = &unk_1008C5338;
    v36 = _Block_copy(aBlock);
    v37 = v31;
    v38 = v32;

    [v30 enumerateAttributesInRange:0 options:v33 usingBlock:{0x100000, v36}];

    _Block_release(v36);
    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

    if (v37)
    {
      __break(1u);
    }

    else
    {
      v39 = qword_10096E220;
      v30 = v38;
      if (v39 == -1)
      {
LABEL_21:
        v40 = type metadata accessor for FontUseCase();
        v41 = sub_1000056A8(v40, qword_1009D15E0);
        v42 = *(v40 - 8);
        v43 = v49;
        (*(v42 + 16))(v49, v41, v40);
        (*(v42 + 56))(v43, 0, 1, v40);
        v44 = type metadata accessor for Feature();
        v51 = v44;
        v52 = sub_1004AFA28(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v45 = sub_1000056E0(aBlock);
        (*(*(v44 - 8) + 104))(v45, enum case for Feature.measurement_with_labelplaceholder(_:), v44);
        isFeatureEnabled(_:)();
        sub_100007000(aBlock);
        static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

        sub_10025BAF0(v43);
        if (qword_10096E690 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for StaticDimension();
        sub_1000056A8(v46, qword_1009D2368);
        AnyDimension.topMargin(from:in:)();
        if (qword_10096E698 != -1)
        {
          swift_once();
        }

        sub_1000056A8(v46, qword_1009D2380);
        AnyDimension.bottomMargin(from:in:)();

        return CGSize.integral.getter();
      }
    }

    swift_once();
    goto LABEL_21;
  }

  return CGSize.integral.getter();
}

void sub_1004AF53C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v9 = FramedMedia.caption.getter();
  v10 = [v9 length];

  v11 = &selRef_setRequiresColorStatistics_;
  if (v10 >= 1)
  {
    v12 = FramedMedia.caption.getter();
    v13 = [a6 traitCollection];
    v14 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v12];
    v34 = [v12 length];
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = v13;
    *(v15 + 32) = v14;
    *(v15 + 40) = 1;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_10010279C;
    *(v16 + 24) = v15;
    aBlock[4] = sub_1001027AC;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006606C4;
    aBlock[3] = &unk_1008C52C0;
    v17 = _Block_copy(aBlock);
    v18 = v13;
    v19 = v14;

    [v12 enumerateAttributesInRange:0 options:v34 usingBlock:{0x100000, v17}];

    _Block_release(v17);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      isEscapingClosureAtFileLocation = *&v7[qword_100989278];
      [isEscapingClosureAtFileLocation setAttributedText:v19];
      if (qword_10096E6A8 == -1)
      {
LABEL_4:
        [isEscapingClosureAtFileLocation setTextColor:qword_1009D23B0];
        v7[qword_1009D23C8] = 1;
        v21 = *&v7[qword_100989268];
        [v21 setHidden:0];

        v11 = &selRef_setRequiresColorStatistics_;
        goto LABEL_6;
      }
    }

    swift_once();
    goto LABEL_4;
  }

  [*&v7[qword_100989278] setText:0];
  v7[qword_1009D23C8] = 0;
  v21 = *&v7[qword_100989268];
  [v21 setHidden:1];
LABEL_6:
  v22 = *&v7[qword_100989270];
  FramedMedia.ordinal.getter();
  if (v23)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  [v22 v11[11]];

  v7[qword_1009D23C0] = (FramedMedia.isFullWidth.getter() & 1) == 0;
  sub_10012684C();
  if ((FramedMedia.isFullWidth.getter() & 1) == 0 && v7[qword_1009D23C8] != 1)
  {
    type metadata accessor for ArtworkView();
    static ArtworkView.iconBorderWidth.getter();
  }

  dispatch thunk of RoundedCornerView.borderWidth.setter();
  if (FramedMedia.isFullWidth.getter())
  {
    [v21 setBackgroundColor:0];
  }

  else
  {
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v25 = static UIColor.placeholderBackground.getter();
    [v21 setBackgroundColor:v25];
  }

  if (FramedArtwork.artwork.getter())
  {
    v26 = [v7 contentView];
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    LayoutMarginsAware<>.layoutFrame.getter();
    v28 = v27;

    Artwork.size.getter();
    v30 = v29;
    Artwork.size.getter();
    v32 = v31;

    v33 = &v7[qword_1009CFF30];
    *v33 = v28;
    v33[1] = v28 * (v30 / v32);
  }
}

uint64_t sub_1004AFA28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004AFA70(double a1, double a2, uint64_t a3, void *a4, uint64_t a5)
{
  v15 = a5;
  v12 = a4;
  v14 = type metadata accessor for AspectRatio();
  v5 = *(v14 - 8);
  __chkstk_darwin(v14);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Shelf.items.getter();
  v9 = *(v8 + 16);
  v16 = v8 + 32;
  v13 = (v5 + 8);
  v17 = v8;

  v10 = 0;
  while (1)
  {
    if (v10 == v9)
    {
      v25 = 0;
      v10 = v9;
      v23 = 0u;
      v24 = 0u;
      goto LABEL_8;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *(v17 + 16))
    {
      goto LABEL_18;
    }

    sub_10002C0AC(v16 + 40 * v10++, &v23);
LABEL_8:
    v21[0] = v23;
    v21[1] = v24;
    v22 = v25;
    if (!*(&v24 + 1))
    {
      swift_bridgeObjectRelease_n();
      return;
    }

    sub_100005A38(v21, v20);
    sub_10002C0AC(v20, v18);
    sub_10002849C(&qword_100973D50, &unk_1007B3840);
    type metadata accessor for FramedArtwork();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v19 = 0;
    }

    sub_100007000(v20);
    if (v19)
    {
      if (FramedArtwork.artwork.getter())
      {

        if ((FramedMedia.isFullWidth.getter() & 1) == 0)
        {
          [v12 pageMarginInsets];
        }

        Artwork.size.getter();
        AspectRatio.init(_:_:)();
        AspectRatio.height(fromWidth:)();
        FramedMedia.isFullWidth.getter();

        AspectRatio.width(fromHeight:)();
        Artwork.config(_:mode:prefersLayeredImage:)();
        ArtworkLoader.prefetchArtwork(using:)();

        (*v13)(v7, v14);
      }

      else
      {
      }
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_1004AFDA4(uint64_t a1)
{
  switch(a1)
  {
    case 0:
    case 1:
    case 8:
      v1 = type metadata accessor for StoryCardCollectionViewCell(0);
      v2 = &unk_100979D48;
      v3 = type metadata accessor for StoryCardCollectionViewCell;
      goto LABEL_12;
    case 2:
      v1 = type metadata accessor for ListTodayCardCollectionViewCell(0);
      v2 = &unk_100980BB8;
      v3 = type metadata accessor for ListTodayCardCollectionViewCell;
      goto LABEL_12;
    case 3:
    case 6:
      v1 = type metadata accessor for MultiAppFallbackCardCollectionViewCell(0);
      v2 = &unk_1009877E0;
      v3 = type metadata accessor for MultiAppFallbackCardCollectionViewCell;
      goto LABEL_12;
    case 4:
      v1 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell(0);
      v2 = &unk_1009877F8;
      v3 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell;
      goto LABEL_12;
    case 5:
      v1 = type metadata accessor for RiverTodayCardCollectionViewCell(0);
      v2 = &unk_1009877F0;
      v3 = type metadata accessor for RiverTodayCardCollectionViewCell;
      goto LABEL_12;
    case 7:
      v1 = type metadata accessor for GridTodayCardCollectionViewCell(0);
      v2 = &unk_1009877E8;
      v3 = type metadata accessor for GridTodayCardCollectionViewCell;
      goto LABEL_12;
    case 10:
      v1 = type metadata accessor for AppEventTodayCardCollectionViewCell(0);
      v2 = &unk_1009877D8;
      v3 = type metadata accessor for AppEventTodayCardCollectionViewCell;
      goto LABEL_12;
    case 11:
      v1 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell(0);
      v2 = &unk_1009877D0;
      v3 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell;
      goto LABEL_12;
    case 12:
      v1 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell(0);
      v2 = &unk_1009877C8;
      v3 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell;
      goto LABEL_12;
    case 13:
      v1 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell(0);
      v2 = &unk_1009877C0;
      v3 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell;
LABEL_12:
      sub_1004AFFD8(v2, v3);
      result = v1;
      break;
    default:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1004AFFD8(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_1004B002C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[23] = &type metadata for Double;
  v28[24] = &protocol witness table for Double;
  v28[19] = &protocol witness table for Double;
  v28[20] = 0x4049000000000000;
  v28[18] = &type metadata for Double;
  v28[14] = &protocol witness table for Double;
  v28[15] = 0x4024000000000000;
  v28[13] = &type metadata for Double;
  v28[10] = 0x4030000000000000;
  v28[8] = &type metadata for Double;
  v28[9] = &protocol witness table for Double;
  v28[5] = 0x402C000000000000;
  if (qword_10096DD40 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v18 = sub_1000056A8(v6, qword_1009D0758);
  v7 = *(v6 - 8);
  v17 = *(v7 + 16);
  v19 = v7 + 16;
  v17(v5, v18, v6);
  v16 = enum case for FontSource.useCase(_:);
  v15 = v3[13];
  v15(v5);
  v8 = type metadata accessor for StaticDimension();
  v28[3] = v8;
  v28[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v28);
  v26 = v2;
  v27 = &protocol witness table for FontSource;
  v9 = sub_1000056E0(v25);
  v10 = v3[2];
  v10(v9, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v11 = v3[1];
  v11(v5, v2);
  v17(v5, v18, v6);
  (v15)(v5, v16, v2);
  v26 = v8;
  v27 = &protocol witness table for StaticDimension;
  sub_1000056E0(v25);
  v23 = v2;
  v24 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v22);
  v10(v12, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v11(v5, v2);
  if (v20)
  {
    UITraitCollection.isRegularPad.getter();
  }

  v24 = &protocol witness table for Double;
  v23 = &type metadata for Double;
  v22[0] = 0x4020000000000000;
  return ArcadeLockupLayout.Metrics.init(minimumHeight:offerButtonMargin:wordmarkMargin:wordmarkTopSpace:wordmarkSpace:subtitleLeadingSpace:bottomSpace:numberOfLinesForSubtitle:shouldHorizontallyCenterSubtitleLayout:expandToFillWidth:subtitleIsHorizontallyAligned:)();
}

char *sub_1004B037C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for ArcadeLockupLayout.Metrics();
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FontUseCase();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v18 = &v5[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView__contentOffset];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v5[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_cachedIntrinsicContentSize];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = &v5[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  if (qword_10096DD38 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v14, qword_1009D0740);
  (*(v15 + 16))(v17, v21, v14);
  v22 = [objc_opt_self() currentTraitCollection];
  sub_1004B002C(v22, v13);

  v23 = objc_allocWithZone(type metadata accessor for ArcadeLockupView(0));
  *&v5[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_lockupView] = sub_1001C6E04(v17, v13, 1, 0.0, 0.0, 0.0, 0.0);
  v27.receiver = v5;
  v27.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(in:)();
  [v24 setLayoutMargins:?];
  [v24 setHideStandardTitle:1];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_lockupView]];
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007B1890;
  *(v25 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v25 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v25 + 48) = type metadata accessor for UITraitVerticalSizeClass();
  *(v25 + 56) = &protocol witness table for UITraitVerticalSizeClass;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v24;
}

void sub_1004B07B0()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100996820, qword_1007C7450);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = type metadata accessor for UIView.LayoutRegion();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 floatingTabBarHeight];
  if (v10 == 0.0)
  {
    v11 = [v0 traitCollection];
    v12 = UITraitCollection.isSizeClassRegular.getter();

    if (v12)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        v15 = &v1[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView__contentOffset];
        if (v1[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView__contentOffset + 8])
        {
          v16 = [Strong view];
          if (v16)
          {
            v17 = v16;
            [v16 safeAreaInsets];
            v19 = v18;

            v20 = [v14 navigationController];
            if (v20)
            {
              v21 = v20;
              sub_10006CAB8();
              v23 = v22;
            }

            else
            {

              v23 = 0.0;
            }

            *v15 = v19 - v23;
            *(v15 + 8) = 0;
          }

          else
          {
            __break(1u);
          }
        }

        else
        {
        }
      }
    }

    else
    {
      v24 = &v1[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView__contentOffset];
      if (v1[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView__contentOffset + 8])
      {
        v25 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
        v26 = type metadata accessor for UIView.LayoutRegion.AdaptivityAxis();
        v27 = *(v26 - 8);
        (*(v27 + 104))(v4, v25, v26);
        (*(v27 + 56))(v4, 0, 1, v26);
        static UIView.LayoutRegion.safeArea(cornerAdaptation:)();
        sub_1004B1184(v4);
        UIView.edgeInsets(for:)();
        v29 = v28;
        (*(v6 + 8))(v9, v5);
        *v24 = v29;
        v24[8] = 0;
      }
    }
  }

  else
  {

    [v0 floatingTabBarHeight];
  }
}

void sub_1004B0B04()
{
  sub_1004B07B0();
  v1 = &OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_cachedIntrinsicContentSize;
  if (v2 != 0.0)
  {
    v1 = &OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar;
  }

  v3 = &v0[*v1];
  if ((v3[2] & 1) != 0 || (v4 = *v3, [v0 bounds], v4 != CGRectGetWidth(v12)))
  {
    [v0 bounds];
    CGRectGetWidth(v13);
    v5 = *&v0[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_lockupView];
    [v0 layoutMargins];
    CGSize.subtracting(insets:)();
    [v5 sizeThatFits:?];
    v7 = v6;
    sub_1004B07B0();
    v9 = v7 + v8;
    [v0 bounds];
    Width = CGRectGetWidth(v14);
    v11 = &v0[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_cachedIntrinsicContentSize];
    *v11 = Width;
    v11[1] = v9;
    *(v11 + 16) = 0;
  }
}

id sub_1004B0E30(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for ArcadeLockupLayout.Metrics();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.receiver = v2;
  v23.super_class = ObjectType;
  v21 = ObjectType;
  objc_msgSendSuper2(&v23, "traitCollectionDidChange:", a1, v7);
  if (a1)
  {
    v10 = [a1 layoutDirection];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v2 traitCollection];
  v12 = [v11 layoutDirection];

  if (!a1 || v10 != v12)
  {
    v13 = [v2 traitCollection];
    [v13 layoutDirection];

    NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
    [v2 setLayoutMargins:?];
  }

  v14 = *&v2[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_lockupView];
  v15 = [v2 traitCollection];
  v16 = v21;
  sub_1004B002C(v15, v9);

  v17 = OBJC_IVAR____TtC8AppStore16ArcadeLockupView_metrics;
  swift_beginAccess();
  (*(v6 + 24))(&v14[v17], v9, v5);
  swift_endAccess();
  [v14 setNeedsLayout];
  (*(v6 + 8))(v9, v5);
  v18 = &v2[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_cachedIntrinsicContentSize];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = &v2[OBJC_IVAR____TtC8AppStore19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v22.receiver = v2;
  v22.super_class = v16;
  return objc_msgSendSuper2(&v22, "invalidateIntrinsicContentSize");
}

uint64_t sub_1004B1184(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100996820, qword_1007C7450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004B11EC(uint64_t result)
{
  v1 = result + OBJC_IVAR____TtC8AppStore19ArcadePageTitleView__contentOffset;
  *v1 = 0;
  *(v1 + 8) = 1;
  return result;
}

BOOL sub_1004B1208(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2 == 0.0)
    {
      if (v3 == 0.0)
      {
        v6 = *(a2 + 8);
      }

      else
      {
        LOBYTE(v6) = 0;
      }

      if (v6)
      {
        return 1;
      }
    }

    else if (*&v2 == 1)
    {
      if (*&v3 == 1)
      {
        v4 = *(a2 + 8);
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (*&v3 > 1uLL)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    return v2 == v3;
  }

  return 0;
}

void sub_1004B1288()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore19InstallProgressView_state);
  if (*(v0 + OBJC_IVAR____TtC8AppStore19InstallProgressView_state + 8) == 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = [objc_allocWithZone(type metadata accessor for InstallProgressLayer()) init];
        sub_1004B14A4(v2);
        v3 = *(v0 + OBJC_IVAR____TtC8AppStore19InstallProgressView_progressLayer);
        if (!v3)
        {
          return;
        }

        v4 = v3;
        v5 = String._bridgeToObjectiveC()();
        v6 = [v4 animationForKey:v5];

        if (v6)
        {

          v7 = String._bridgeToObjectiveC()();
          [v4 removeAnimationForKey:v7];
        }

        v8 = sub_10015F058();
        v14 = String._bridgeToObjectiveC()();
        [v4 addAnimation:v8 forKey:v14];
      }

      else
      {
        v13 = *(v0 + OBJC_IVAR____TtC8AppStore19InstallProgressView_progressLayer);
        if (!v13)
        {
          return;
        }

        v14 = v13;
        sub_10015DE1C();
      }

      v12 = v14;
    }

    else
    {
      v11 = OBJC_IVAR____TtC8AppStore19InstallProgressView_progressLayer;
      v12 = *(v0 + OBJC_IVAR____TtC8AppStore19InstallProgressView_progressLayer);
      if (v12)
      {
        [v12 removeFromSuperlayer];
        v12 = *(v0 + v11);
      }

      *(v0 + v11) = 0;
    }
  }

  else
  {
    v9 = *(v0 + OBJC_IVAR____TtC8AppStore19InstallProgressView_progressLayer);
    v10 = *(v0 + OBJC_IVAR____TtC8AppStore19InstallProgressView_state);

    [v9 setProgress:v10];
  }
}

void sub_1004B14A4(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore19InstallProgressView_progressLayer;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore19InstallProgressView_progressLayer];
  if (v4)
  {
    [v4 removeFromSuperlayer];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 mainScreen];
    [v9 scale];
    v11 = v10;

    [v8 setContentsScale:v11];
    v12 = [v1 layer];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [v8 setFrame:{v14, v16, v18, v20}];
    v21 = [v1 layer];
    [v21 addSublayer:v8];
  }
}

id sub_1004B1638(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = &v5[OBJC_IVAR____TtC8AppStore19InstallProgressView_state];
  *v10 = 0;
  v10[8] = 1;
  *&v5[OBJC_IVAR____TtC8AppStore19InstallProgressView_progressLayer] = 0;
  v11 = &v5[OBJC_IVAR____TtC8AppStore19InstallProgressView_completionHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v5[OBJC_IVAR____TtC8AppStore19InstallProgressView_progress] = 0;
  v17.receiver = v5;
  v17.super_class = type metadata accessor for InstallProgressView();
  v12 = objc_msgSendSuper2(&v17, "initWithFrame:", a2, a3, a4, a5);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor:v15];

  return v14;
}

void sub_1004B18E8(double a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  __chkstk_darwin(v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  v19 = &v1[OBJC_IVAR____TtC8AppStore19InstallProgressView_state];
  v20 = *&v1[OBJC_IVAR____TtC8AppStore19InstallProgressView_state];
  if (v1[OBJC_IVAR____TtC8AppStore19InstallProgressView_state + 8] == 1 && v20 > 1)
  {
    return;
  }

  if (a1 == 0.0)
  {
    v22 = *&v1[OBJC_IVAR____TtC8AppStore19InstallProgressView_progress];
    if (v22 == 1.0)
    {
      v23 = *&v1[OBJC_IVAR____TtC8AppStore19InstallProgressView_completionHandler];
      if (v23)
      {
        v24 = *&v1[OBJC_IVAR____TtC8AppStore19InstallProgressView_completionHandler + 8];

        v23(v25);

        sub_10001F63C(v23, v24);
      }

      return;
    }

    if (v22 > 0.0)
    {
      v26 = objc_opt_self();
      [v26 begin];
      v27 = swift_allocObject();
      *(v27 + 16) = v1;
      v50 = sub_1004B21BC;
      v51 = v27;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_100007A08;
      v49 = &unk_1008C5490;
      v28 = _Block_copy(&aBlock);
      v29 = v1;

      [v26 setCompletionBlock:v28];
      _Block_release(v28);
      *v19 = 1;
      v19[8] = 1;
      sub_1004B1288();
      [v26 commit];
      return;
    }
  }

  if (v20 == 1)
  {
    v30 = v1[OBJC_IVAR____TtC8AppStore19InstallProgressView_state + 8];
  }

  else
  {
    v30 = 0;
  }

  if ((v30 & 1) == 0)
  {
    v44 = v8;
    v45 = v4;
    v31 = OBJC_IVAR____TtC8AppStore19InstallProgressView_progress;
    *v19 = *&v1[OBJC_IVAR____TtC8AppStore19InstallProgressView_progress];
    v19[8] = 0;
    v32 = v15;
    v33 = v16;
    sub_1004B1288();
    v34 = v32;
    v35 = v45;
    if (*&v1[v31] >= 1.0)
    {
      v36 = v34;
      v43 = v34;
      sub_1000076C0();
      v40 = v1;
      v42 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v41 = *(v33 + 8);
      v41(v13, v36);
      v37 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v50 = sub_1004B21B4;
      v51 = v37;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_100007A08;
      v49 = &unk_1008C5440;
      v38 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_10002D150();
      sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
      sub_1000079A4();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v39 = v42;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v38);

      (*(v35 + 8))(v6, v3);
      (*(v44 + 8))(v10, v7);
      v41(v18, v43);
    }
  }
}

id sub_1004B1E4C(uint64_t a1)
{
  v1 = objc_opt_self();
  [v1 begin];
  v2 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_1004B21F4;
  aBlock[5] = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C54B8;
  v4 = _Block_copy(aBlock);

  [v1 setCompletionBlock:v4];
  _Block_release(v4);
  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = v5 + OBJC_IVAR____TtC8AppStore19InstallProgressView_state;
    *v7 = 2;
    *(v7 + 8) = 1;
    sub_1004B1288();
  }

  return [v1 commit];
}

void sub_1004B1FC0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC8AppStore19InstallProgressView_completionHandler);
    v2 = *(Strong + OBJC_IVAR____TtC8AppStore19InstallProgressView_completionHandler + 8);
    v4 = Strong;
    sub_10000827C(v3, v2);

    if (v3)
    {
      v3();
      sub_10001F63C(v3, v2);
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = v5 + OBJC_IVAR____TtC8AppStore19InstallProgressView_state;
    *v7 = 0;
    *(v7 + 8) = 1;
    sub_1004B1288();
  }
}

id sub_1004B2090(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for InstallProgressView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t storeEnumTagSinglePayload for InstallProgressView.ProgressState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1004B2168(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004B2184(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_1004B21BC()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC8AppStore19InstallProgressView_state;
  *v1 = 0;
  *(v1 + 8) = 0;
  sub_1004B1288();
}

void *sub_1004B220C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v11 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

char *sub_1004B23B8(char *result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = result;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = type metadata accessor for PageFacets.Facet.Option();
      v12 = *(v10 - 8);
      result = (v10 - 8);
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = (v6)(&v19, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v20;
      if (v20)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v14 = v19;
    result = swift_isUniquelyReferenced_nonNull_native();
    v21 = v14;
    if ((result & 1) == 0)
    {
      result = sub_100033E38(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v16 = *(v8 + 2);
    v15 = *(v8 + 3);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_100033E38((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    *(v8 + 2) = v17;
    v18 = &v8[16 * v16];
    *(v18 + 4) = v21;
    *(v18 + 5) = v13;
  }

  while (v7 != v4);
  return v8;
}

uint64_t sub_1004B2554()
{
  sub_10002849C(&qword_100985F38, &unk_1007CDAE0);
  v0 = type metadata accessor for Shelf.ContentType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007B1E00;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for Shelf.ContentType.productTopLockup(_:), v0);
  v6(v5 + v2, enum case for Shelf.ContentType.preorderDisclaimer(_:), v0);
  v6(v5 + 2 * v2, enum case for Shelf.ContentType.productBadge(_:), v0);
  v7 = sub_1000833C4(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1009D1F68 = v7;
  return result;
}

void *sub_1004B26C8(void *a1, int *a2)
{
  v5 = sub_10026CF10(a1, a2);
  v6 = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage;
  v7 = sub_1004B6E84(a1, a2);
  if (v7)
  {
    v8 = v7;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v6 = v19;
  }

  v9 = sub_1004B4D30(a1);
  if (v9)
  {
    v10 = v9;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v6 = v19;
  }

  v11 = sub_1004B828C(a1);
  if (v11)
  {
    v12 = v11;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v6 = v19;
  }

  sub_100005744(0, &qword_10097F460, NSCollectionLayoutBoundarySupplementaryItem_ptr);

  v13 = Array<A>.totalTopSupplementaryHeight.getter();
  v17[2] = v2;
  v17[3] = a1;
  v17[4] = __chkstk_darwin(v13).n128_u64[0];
  v14 = sub_1004B220C(sub_1004B87BC, v17, v5);

  v18 = v14;
  sub_1003945AC(v6, v15);
  return v18;
}

void sub_1004B28FC(void **a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>, double a4@<D0>)
{
  v6 = *a1;
  if (sub_1004B87DC(*a1, a2))
  {
    if ([v6 alignment] == 1 && a4 > 0.0)
    {
      v7 = [v6 layoutSize];
      v8 = [v6 elementKind];
      if (!v8)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = String._bridgeToObjectiveC()();
      }

      v9 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v7 elementKind:v8 alignment:objc_msgSend(v6 absoluteOffset:{"alignment"), 0.0, -a4}];

      *a3 = v9;
    }

    else
    {
      *a3 = v6;
      v10 = v6;
    }
  }

  else
  {
    *a3 = 0;
  }
}

double sub_1004B2A3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v35 = a4;
  v9 = type metadata accessor for ShelfLayoutContext();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeparatorSupplementaryView(0);
  if (static UICollectionReusableView.elementKind.getter() == a1 && v13 == a2)
  {

LABEL_5:
    a5[3] = sub_10002849C(&qword_1009751D0, qword_1007B7350);
    a5[4] = sub_100097060(&qword_10098FFA0, &qword_1009751D0, qword_1007B7350, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    sub_1000056E0(a5);

    static UICollectionReusableView.defaultReuseIdentifier.getter();
LABEL_13:
    ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
    return result;
  }

  v34 = a3;
  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_5;
  }

  if (a1 == 0xD000000000000023 && 0x80000001008169A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000026 && 0x80000001008169D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a5[3] = sub_10002849C(&qword_100987A88, &unk_1007D0840);
    a5[4] = sub_100097060(&unk_100987A90, &qword_100987A88, &unk_1007D0840, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    v36 = sub_1000056E0(a5);
    type metadata accessor for PlatformSelectorView();

    static UICollectionReusableView.defaultReuseIdentifier.getter();
    (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
    v15 = v9;
    v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v17 = swift_allocObject();
    (*(v10 + 32))(v17 + v16, v12, v15);
    goto LABEL_13;
  }

  type metadata accessor for InteractiveProductReviewsShelfHeaderView();
  if (static UICollectionReusableView.elementKind.getter() == a1 && v19 == a2)
  {

LABEL_18:
    a5[3] = sub_10002849C(&qword_100987A78, &qword_1007D0838);
    a5[4] = sub_100097060(&qword_100987A80, &qword_100987A78, &qword_1007D0838, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    v36 = sub_1000056E0(a5);

    static UICollectionReusableView.defaultReuseIdentifier.getter();
    (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
    v21 = v9;
    v22 = v10;
    v23 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v24 = swift_allocObject();
    (*(v22 + 32))(v24 + v23, v12, v21);
    goto LABEL_13;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_18;
  }

  type metadata accessor for ProductReviewsShelfHeaderView();
  if (static UICollectionReusableView.elementKind.getter() == a1 && v25 == a2)
  {

LABEL_23:
    a5[3] = sub_10002849C(&qword_100987A70, &qword_1007D0830);
    a5[4] = sub_100097060(&unk_10098FF90, &qword_100987A70, &qword_1007D0830, &protocol conformance descriptor for ReusableSupplementaryRegistration<A>);
    v36 = sub_1000056E0(a5);

    static UICollectionReusableView.defaultReuseIdentifier.getter();
    (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v9);
    v27 = v9;
    v28 = v10;
    v29 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v30 = swift_allocObject();
    (*(v28 + 32))(v30 + v29, v12, v27);
    goto LABEL_13;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    goto LABEL_23;
  }

  v31 = v34;
  v32 = v35;

  return sub_100268C44(a1, a2, v31, v32, a5);
}

void *sub_1004B3038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v5 = type metadata accessor for ShelfLayoutContext();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Shelf.ContentsMetadata();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  v15 = type metadata accessor for ProductReviewsMetadata();
  v35 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2;
  v36 = sub_10026E03C(a1, a2, v37);
  v30 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v12 + 8))(v14, v11);
  if ((*(v8 + 88))(v10, v7) != enum case for Shelf.ContentsMetadata.productReviews(_:))
  {
    (*(v8 + 8))(v10, v7);
    return v36;
  }

  (*(v8 + 96))(v10, v7);
  v18 = v35;
  (*(v35 + 32))(v17, v10, v15);
  if ((ProductReviewsMetadata.hasReviewSummary.getter() & 1) == 0)
  {
    (*(v18 + 8))(v17, v15);
    return v36;
  }

  v20 = v31;
  v19 = v32;
  v21 = v33;
  (*(v32 + 16))(v31, v30, v33);
  type metadata accessor for InteractiveProductReviewsShelfScrollObserver(0);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = v22 + OBJC_IVAR____TtC8AppStore44InteractiveProductReviewsShelfScrollObserver_currentState;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  *(v23 + 40) = 1;
  (*(v19 + 32))(v22 + OBJC_IVAR____TtC8AppStore44InteractiveProductReviewsShelfScrollObserver_shelfLayoutContext, v20, v21);
  swift_unknownObjectWeakAssign();
  *(v22 + OBJC_IVAR____TtC8AppStore44InteractiveProductReviewsShelfScrollObserver_objectGraph) = v37;

  v24 = v36;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_100034BBC(0, v24[2] + 1, 1, v24);
  }

  v26 = v24[2];
  v25 = v24[3];
  if (v26 >= v25 >> 1)
  {
    v24 = sub_100034BBC((v25 > 1), v26 + 1, 1, v24);
  }

  (*(v18 + 8))(v17, v15);
  v27 = sub_1004B8D78(&qword_100987A68, type metadata accessor for InteractiveProductReviewsShelfScrollObserver, &unk_1007C3430);
  v24[2] = v26 + 1;
  v28 = &v24[2 * v26];
  v28[4] = v22;
  v28[5] = v27;
  return v24;
}

uint64_t sub_1004B3504(uint64_t a1)
{
  v2 = type metadata accessor for ComponentSeparator.Position();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ComponentSeparator();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - v12;
  (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.top(_:), v2, v11);
  ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
  (*(v7 + 16))(v9, v13, v6);
  v14 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v7 + 24))(a1 + v14, v9, v6);
  swift_endAccess();
  sub_100503F40();
  v15 = *(v7 + 8);
  v15(v9, v6);
  return (v15)(v13, v6);
}

uint64_t sub_1004B3724(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v161 = a1;
  v145 = type metadata accessor for AutomationSemantics();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v141 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v142 = &v127 - v8;
  __chkstk_darwin(v9);
  v143 = &v127 - v10;
  v148 = type metadata accessor for PageGrid();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v146 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for Shelf.ContentType();
  v160 = *(v153 - 8);
  __chkstk_darwin(v153);
  v137 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_10002849C(&qword_100975F10, &unk_1007CE130);
  __chkstk_darwin(v152);
  v156 = &v127 - v13;
  v14 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v14 - 8);
  v151 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v149 = &v127 - v17;
  __chkstk_darwin(v18);
  v158 = &v127 - v19;
  v20 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v20 - 8);
  v139 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v154 = &v127 - v23;
  __chkstk_darwin(v24);
  v155 = &v127 - v25;
  v26 = type metadata accessor for Shelf.ContentsMetadata();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v150 = &v127 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v127 - v34;
  v36 = type metadata accessor for ProductMediaMetadata();
  v157 = *(v36 - 8);
  __chkstk_darwin(v36);
  v38 = &v127 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = a5;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v39 = *(v31 + 8);
  v39(v35, v30);
  if ((*(v27 + 88))(v29, v26) != enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    return (*(v27 + 8))(v29, v26);
  }

  v138 = v39;
  (*(v27 + 96))(v29, v26);
  (*(v157 + 32))(v38, v29, v36);
  v40 = ProductMediaMetadata.platform.getter();
  v41 = ProductMediaMetadata.allPlatforms.getter();
  v42 = ProductMediaMetadata.platformDescription.getter();
  v44 = v43;
  v133 = ProductMediaMetadata.allPlatformsDescription.getter();
  v132 = v45;
  v128 = sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v46 = swift_allocObject();
  v127 = xmmword_1007B0B70;
  *(v46 + 16) = xmmword_1007B0B70;
  *(v46 + 32) = v40;
  v140 = v40;

  v136 = v41;
  v129 = sub_1006E1F58(v41, v46);

  v47 = v149;
  v48 = v151;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v47, &unk_10098FFB0, qword_1007B3890);
  v49 = v48;
  v50 = v158;
  sub_100094E74(v49, v158);
  v51 = (*(v31 + 48))(v50, 1, v30);
  v131 = v36;
  v130 = v38;
  v135 = v42;
  v134 = v44;
  if (v51 == 1)
  {
    sub_10002B894(v158, &unk_10098FFB0, qword_1007B3890);
    v52 = 1;
    v53 = v155;
  }

  else
  {
    swift_getKeyPath();
    v53 = v155;
    v55 = v158;
    ReadOnlyLens.subscript.getter();

    v138(v55, v30);
    v52 = 0;
  }

  v56 = *(v160 + 7);
  v57 = v153;
  v56(v53, v52, 1, v153);
  v58 = v150;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v59 = v154;
  ReadOnlyLens.subscript.getter();
  v60 = v59;

  v61 = v30;
  v62 = v57;
  v138(v58, v61);
  v56(v59, 0, 1, v57);
  v63 = *(v152 + 48);
  v64 = v156;
  sub_100094EE4(v53, v156);
  sub_100094EE4(v59, v64 + v63);
  v65 = *(v160 + 6);
  v66 = v65(v64, 1, v62);
  v67 = v136;
  v68 = v136 >> 62;
  if (v66 == 1)
  {
    sub_10002B894(v60, &unk_100992460, &qword_1007B6BF0);
    v69 = v156;
    sub_10002B894(v53, &unk_100992460, &qword_1007B6BF0);
    v70 = v65(v69 + v63, 1, v62);
    v71 = v140;
    if (v70 == 1)
    {
      sub_10002B894(v69, &unk_100992460, &qword_1007B6BF0);
LABEL_22:
      LODWORD(v77) = 0;
      v76 = v148;
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  v72 = v139;
  sub_100094EE4(v64, v139);
  if (v65(v64 + v63, 1, v62) == 1)
  {
    sub_10002B894(v154, &unk_100992460, &qword_1007B6BF0);
    v69 = v156;
    sub_10002B894(v155, &unk_100992460, &qword_1007B6BF0);
    (*(v160 + 1))(v72, v62);
    v71 = v140;
LABEL_11:
    sub_10002B894(v69, &qword_100975F10, &unk_1007CE130);
    goto LABEL_12;
  }

  v78 = v160;
  v79 = v64 + v63;
  v80 = v137;
  (*(v160 + 4))(v137, v79, v62);
  sub_1004B8D78(&qword_100972720, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v81 = v64;
  v82 = dispatch thunk of static Equatable.== infix(_:_:)();
  v83 = *(v78 + 1);
  v83(v80, v62);
  sub_10002B894(v154, &unk_100992460, &qword_1007B6BF0);
  sub_10002B894(v155, &unk_100992460, &qword_1007B6BF0);
  v83(v72, v62);
  sub_10002B894(v81, &unk_100992460, &qword_1007B6BF0);
  v71 = v140;
  if (v82)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (!v68)
  {
    result = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_14;
    }

LABEL_24:

    goto LABEL_25;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_14:
  v73 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if ((v67 & 0xC000000000000001) == 0)
  {
    if ((v73 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v73 < *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v74 = *(v67 + 8 * v73 + 32);

      *&v163 = v71;
      if (v74)
      {
        goto LABEL_19;
      }

LABEL_25:

      v76 = v148;
      goto LABEL_26;
    }

    __break(1u);
    return result;
  }

  v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  *&v163 = v71;
  if (!v74)
  {
    goto LABEL_25;
  }

LABEL_19:
  *&v162[0] = v74;
  type metadata accessor for MediaPlatform();
  sub_1004B8D78(&qword_100975F18, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
  v75 = dispatch thunk of static Equatable.== infix(_:_:)();

  v76 = v148;
  if ((v75 & 1) == 0)
  {
LABEL_26:
    LODWORD(v77) = v129 ^ 1;
    goto LABEL_27;
  }

  LODWORD(v77) = 0;
LABEL_27:
  v84 = v146;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v86 = v85;
  (*(v147 + 8))(v84, v76);
  v87 = ShelfLayoutContext.traitCollection.getter();
  v88 = type metadata accessor for SnapshotPageTraitEnvironment();
  v89 = objc_allocWithZone(v88);
  v90 = &v89[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v90 = v86;
  *(v90 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v89[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v87;
  v165.receiver = v89;
  v165.super_class = v88;
  v91 = objc_msgSendSuper2(&v165, "init");
  if (v77)
  {
    v92 = 0;
    v93 = v135;
    v94 = v134;
  }

  else
  {
    v94 = v134;
    if (v68)
    {
      v95 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v95 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v93 = v135;
    if (v95 <= 1)
    {
      v92 = 0;
    }

    else
    {

      v67 = swift_allocObject();
      *(v67 + 16) = v127;
      *(v67 + 32) = v71;

      v92 = 1;
    }
  }

  v96 = sub_1000CAB9C(v67);

  v97 = v92 == 0;
  if (v92)
  {
    v98 = v93;
  }

  else
  {
    v98 = v133;
  }

  if (v97)
  {
    v99 = v132;
  }

  else
  {
    v99 = v94;
  }

  v100 = &v161[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_text];
  *v100 = v98;
  *(v100 + 1) = v99;

  *&v163 = _swiftEmptyArrayStorage;
  v101 = *(v96 + 2);
  if (v101)
  {
    v102 = 0;
    v103 = (v96 + 56);
    v155 = v101 - 1;
    v159 = v91;
    v160 = _swiftEmptyArrayStorage;
    LODWORD(v158) = v77;
    v156 = v96 + 56;
    while (1)
    {
      v91 = (v103 + 32 * v102);
      v77 = v102;
      while (1)
      {
        if (v77 >= *(v96 + 2))
        {
          __break(1u);
          goto LABEL_68;
        }

        v104 = String._bridgeToObjectiveC()();
        v105 = [objc_opt_self() _systemImageNamed:v104];

        if (v105)
        {
          break;
        }

LABEL_44:
        ++v77;
        v91 += 32;
        if (v101 == v77)
        {
          v91 = v159;
          LOBYTE(v77) = v158;
          goto LABEL_57;
        }
      }

      if (qword_10096CFC0 != -1)
      {
        swift_once();
      }

      v106 = [v105 imageWithTintColor:qword_1009CDD58];

      if (!v106)
      {
        goto LABEL_44;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v102 = v77 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v160 = v163;
      v103 = v156;
      v97 = v155 == v77;
      v91 = v159;
      LOBYTE(v77) = v158;
      if (v97)
      {
        goto LABEL_57;
      }
    }
  }

  v160 = _swiftEmptyArrayStorage;
LABEL_57:
  v107 = OBJC_IVAR____TtC8AppStore20PlatformSelectorView_images;
  v108 = v161;
  *&v161[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_images] = v160;

  v109 = *&v108[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_accessoryImageView];
  if (v77)
  {
    if (qword_10096CFC8 != -1)
    {
      swift_once();
    }

    v110 = qword_1009738D0;
  }

  else
  {
    v110 = 0;
  }

  [v109 setImage:v110];

  v111 = *&v161[v107];
  if (v111)
  {
    if (v111 >> 62)
    {
LABEL_68:
      v112 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v112 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v112 = 0;
  }

  v113 = v161;
  *&v161[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_numberOfBadges] = v112;
  *&v113[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_pageTraits] = v91;
  swift_unknownObjectRelease();
  v160 = v91;
  sub_1000C9724(v160, v114);
  [v113 setNeedsLayout];
  v163 = 0u;
  v164 = 0u;
  memset(v162, 0, sizeof(v162));
  v115 = v141;
  static AutomationSemantics.productPage(elementName:id:parentId:)();
  sub_10002B894(v162, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v163, &unk_1009711D0, &unk_1007B1A10);
  *&v163 = v96;
  *(&v163 + 1) = sub_1000CA47C;
  *&v164 = 0;

  sub_10002849C(&qword_1009872F0, qword_1007CFF28);
  sub_10049FB60();
  v116 = BidirectionalCollection<>.joined(separator:)();
  v118 = v117;

  *(&v164 + 1) = &type metadata for String;
  *&v163 = v116;
  *(&v163 + 1) = v118;
  v119 = v142;
  AutomationSemantics.attribute(key:value:)();
  v120 = *(v144 + 8);
  v121 = v115;
  v122 = v145;
  v120(v121, v145);
  sub_10002B894(&v163, &unk_1009711D0, &unk_1007B1A10);
  *&v163 = v96;
  *(&v163 + 1) = sub_1000CA488;
  *&v164 = 0;
  v123 = BidirectionalCollection<>.joined(separator:)();
  v125 = v124;

  *(&v164 + 1) = &type metadata for String;
  *&v163 = v123;
  *(&v163 + 1) = v125;
  v126 = v143;
  AutomationSemantics.attribute(key:value:)();
  v120(v119, v122);
  sub_10002B894(&v163, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v120(v126, v122);
  return (*(v157 + 8))(v130, v131);
}

uint64_t sub_1004B4A34(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096DE48 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  sub_1000056A8(v8, qword_1009D0A58);
  v9 = [a2 traitCollection];
  v10 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v17[1] = sub_100005744(0, &unk_100984040, NSAttributedString_ptr);

  v17[0] = [a2 traitCollection];
  if (qword_10096CFD0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for PlatformSelectorViewLayout.Metrics();
  sub_1000056A8(v11, qword_1009738D8);
  PlatformSelectorViewLayout.Metrics.badgeHorizontalPadding.getter();
  sub_10002A400(v18, v18[3]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  (*(v4 + 8))(v6, v3);
  sub_10002849C(&unk_100973960, &unk_1007B4930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = v7;
  *(inited + 40) = v10;
  v13 = NSFontAttributeName;
  v14 = v10;
  sub_100397150(inited);
  swift_setDeallocating();
  sub_10002B894(inited + 32, &unk_100970EC0, &unk_1007B2BF0);
  v15 = NSAttributedString.init(images:for:adjustsImageSizeForAccessibilityContentSizeCategory:interItemSpacing:defaultAttributes:imagesShouldRenderAsTemplates:)();

  sub_100007000(v18);
  return v15;
}

id sub_1004B4D30(void *a1)
{
  v216 = type metadata accessor for PlatformSelectorViewLayout.Metrics();
  v188 = *(v216 - 8);
  __chkstk_darwin(v216);
  v201 = v173 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for PlatformSelectorViewLayout();
  v205 = *(v206 - 8);
  __chkstk_darwin(v206);
  v204 = v173 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for DirectionalTextAlignment();
  v199 = *(v186 - 8);
  __chkstk_darwin(v186);
  v187 = v173 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v5 - 8);
  v198 = v173 - v6;
  v203 = type metadata accessor for BadgeDisplayStyle();
  v202 = *(v203 - 8);
  __chkstk_darwin(v203);
  v197 = v173 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v200 = v173 - v9;
  __chkstk_darwin(v10);
  v196 = v173 - v11;
  v195 = type metadata accessor for FloatingPointRoundingRule();
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v193 = v173 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for PageGrid();
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v190 = v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for ProductMedia.DescriptionPlacement();
  v217 = *(v219 - 8);
  __chkstk_darwin(v219);
  v189 = v173 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v218 = v173 - v16;
  v215 = type metadata accessor for Shelf.ContentType();
  v223 = *(v215 - 1);
  __chkstk_darwin(v215);
  v179 = v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_10002849C(&qword_100975F10, &unk_1007CE130);
  __chkstk_darwin(v211);
  v214 = v173 - v18;
  v19 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v19 - 8);
  v209 = v173 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v207 = v173 - v22;
  __chkstk_darwin(v23);
  v210 = v173 - v24;
  v25 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v25 - 8);
  v181 = v173 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v212 = v173 - v28;
  __chkstk_darwin(v29);
  v213 = v173 - v30;
  v31 = type metadata accessor for Shelf.ContentsMetadata();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = v173 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v208 = v173 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = v173 - v39;
  v221 = type metadata accessor for ProductMediaMetadata();
  v220 = *(v221 - 8);
  __chkstk_darwin(v221);
  v42 = v173 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v43 = *(v36 + 8);
  v43(v40, v35);
  if ((*(v32 + 88))(v34, v31) != enum case for Shelf.ContentsMetadata.productMedia(_:))
  {
    (*(v32 + 8))(v34, v31);
    return 0;
  }

  v180 = v43;
  (*(v32 + 96))(v34, v31);
  (*(v220 + 32))(v42, v34, v221);
  v44 = ProductMediaMetadata.platform.getter();
  v45 = ProductMediaMetadata.allPlatforms.getter();
  v183 = v45;
  v175 = ProductMediaMetadata.platformDescription.getter();
  v178 = v46;
  v185 = v42;
  v177 = ProductMediaMetadata.allPlatformsDescription.getter();
  v182 = v47;
  v173[1] = sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v48 = swift_allocObject();
  v174 = xmmword_1007B0B70;
  *(v48 + 16) = xmmword_1007B0B70;
  *(v48 + 32) = v44;
  v184 = v44;

  v176 = sub_1006E1F58(v45, v48);

  v49 = v207;
  v50 = v209;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v49, &unk_10098FFB0, qword_1007B3890);
  v51 = v210;
  sub_100094E74(v50, v210);
  if ((*(v36 + 48))(v51, 1, v35) == 1)
  {
    sub_10002B894(v51, &unk_10098FFB0, qword_1007B3890);
    v52 = 1;
    v53 = v213;
  }

  else
  {
    swift_getKeyPath();
    v53 = v213;
    ReadOnlyLens.subscript.getter();

    v180(v51, v35);
    v52 = 0;
  }

  v55 = v223[7];
  v56 = v215;
  v55(v53, v52, 1, v215);
  v57 = v208;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v58 = v212;
  ReadOnlyLens.subscript.getter();

  v59 = v35;
  v60 = v58;
  v180(v57, v59);
  v55(v58, 0, 1, v56);
  v61 = *(v211 + 48);
  v62 = v214;
  sub_100094EE4(v53, v214);
  sub_100094EE4(v58, v62 + v61);
  v63 = v223[6];
  if (v63(v62, 1, v56) == 1)
  {
    sub_10002B894(v60, &unk_100992460, &qword_1007B6BF0);
    sub_10002B894(v53, &unk_100992460, &qword_1007B6BF0);
    if (v63(v62 + v61, 1, v56) == 1)
    {
      sub_10002B894(v62, &unk_100992460, &qword_1007B6BF0);
LABEL_23:
      v76 = 0;
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  v64 = v181;
  sub_100094EE4(v62, v181);
  if (v63(v62 + v61, 1, v56) == 1)
  {
    sub_10002B894(v60, &unk_100992460, &qword_1007B6BF0);
    sub_10002B894(v53, &unk_100992460, &qword_1007B6BF0);
    (v223[1])(v64, v56);
LABEL_11:
    sub_10002B894(v62, &qword_100975F10, &unk_1007CE130);
    v65 = v183;
    goto LABEL_12;
  }

  v71 = v223;
  v72 = v62 + v61;
  v73 = v179;
  (v223[4])(v179, v72, v56);
  sub_1004B8D78(&qword_100972720, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v74 = dispatch thunk of static Equatable.== infix(_:_:)();
  v75 = v71[1];
  v75(v73, v56);
  sub_10002B894(v60, &unk_100992460, &qword_1007B6BF0);
  sub_10002B894(v53, &unk_100992460, &qword_1007B6BF0);
  v75(v64, v56);
  sub_10002B894(v62, &unk_100992460, &qword_1007B6BF0);
  v65 = v183;
  if (v74)
  {
    goto LABEL_23;
  }

LABEL_12:
  if (v65 >> 62)
  {
    v66 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v67 = v184;
  if (!v66)
  {

    v228[0] = v67;
    goto LABEL_25;
  }

  v68 = v66 - 1;
  if (__OFSUB__(v66, 1))
  {
    __break(1u);
  }

  else if ((v65 & 0xC000000000000001) == 0)
  {
    if ((v68 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v68 < *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v69 = *(v65 + 8 * v68 + 32);

      v228[0] = v67;
      if (v69)
      {
        goto LABEL_20;
      }

LABEL_25:

      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_71;
  }

  v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v228[0] = v67;
  if (!v69)
  {
    goto LABEL_25;
  }

LABEL_20:
  v225 = v69;
  type metadata accessor for MediaPlatform();
  sub_1004B8D78(&qword_100975F18, &type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
  v70 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v70)
  {
    goto LABEL_23;
  }

LABEL_26:
  v76 = v176 ^ 1;
LABEL_27:
  v77 = v218;
  ProductMediaMetadata.descriptionPlacement(when:)();
  v78 = v217;
  v79 = v189;
  v80 = v77;
  v81 = v219;
  (*(v217 + 16))(v189, v80, v219);
  v82 = (*(v78 + 88))(v79, v81);
  if (v82 == enum case for ProductMedia.DescriptionPlacement.top(_:))
  {
    v83 = v190;
    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.containerWidth.getter();
    v85 = v84;
    v86 = *(v191 + 8);
    v87 = v192;
    v86(v83, v192);
    v88 = ShelfLayoutContext.traitCollection.getter();
    v89 = type metadata accessor for SnapshotPageTraitEnvironment();
    v90 = objc_allocWithZone(v89);
    v91 = &v90[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
    *v91 = v85;
    *(v91 + 1) = 0x7FEFFFFFFFFFFFFFLL;
    *&v90[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v88;
    v224.receiver = v90;
    v224.super_class = v89;
    v223 = objc_msgSendSuper2(&v224, "init");
    ShelfLayoutContext.supplementaryPageGrid.getter();
    static CGFloat.allColumns.getter();
    PageGrid.componentMeasuringSize(spanning:)();
    v86(v83, v87);
    if ((v76 & 1) == 0)
    {
      v68 = v187;
      if (v183 >> 62)
      {
        v103 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v103 = *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v103 > 1)
      {

        type metadata accessor for MediaPlatform();
        v104 = swift_allocObject();
        *(v104 + 16) = v174;
        *(v104 + 32) = v184;

        v105 = static MediaPlatform.systemImages(platforms:)();
        v177 = v175;
LABEL_41:

        if (qword_10096CFD0 != -1)
        {
          swift_once();
        }

        v106 = sub_1000056A8(v216, qword_1009738D8);
        PlatformSelectorViewLayout.Metrics.badgeHorizontalPadding.getter();
        sub_10002A400(v228, v229);
        v107 = v193;
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v109 = v108;
        (*(v194 + 8))(v107, v195);
        sub_1000CAA9C(v105, v109);
        sub_100007000(v228);
        if (v105 >> 62)
        {
          _CocoaArrayWrapper.endIndex.getter();
        }

        v110 = v188;
        v111 = v186;

        v112 = v223;
        static BadgeDisplayStyle.style(forBadgeCount:pageTraits:indentForBadges:)();
        v113 = sub_1004B4A34(v105, v112);

        v222 = v113;
        v114 = static PlatformSelectorViewLayout.makeFullPlatformString(descriptiveText:badgeString:metrics:style:in:)();
        if (qword_10096DE48 != -1)
        {
          swift_once();
        }

        v115 = type metadata accessor for FontUseCase();
        v116 = sub_1000056A8(v115, qword_1009D0A58);
        v117 = *(v115 - 8);
        v118 = v198;
        (*(v117 + 16))(v198, v116, v115);
        (*(v117 + 56))(v118, 0, 1, v115);
        (*(v199 + 104))(v68, enum case for DirectionalTextAlignment.none(_:), v111);
        v119 = type metadata accessor for DynamicTypeLabel();
        v120 = objc_allocWithZone(v119);
        v121 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
        [v121 setAttributedText:v114];
        v215 = v114;
        if (qword_10096CFC8 != -1)
        {
          swift_once();
        }

        [qword_1009738D0 size];
        v122 = type metadata accessor for LayoutViewPlaceholder();
        swift_allocObject();
        v123 = LayoutViewPlaceholder.init(representing:)();
        (*(v110 + 16))(v201, v106, v216);
        v124 = v202;
        v125 = v196;
        v126 = v203;
        (*(v202 + 16))(v200, v196, v203);
        v229 = v119;
        v230 = &protocol witness table for UILabel;
        v228[0] = v121;
        v226 = v122;
        v227 = &protocol witness table for LayoutViewPlaceholder;
        v225 = v123;
        v127 = v121;

        v128 = v204;
        PlatformSelectorViewLayout.init(metrics:style:descriptionLabel:accessoryImageView:)();
        v129 = v223;
        [v223 pageMarginInsets];
        CGSize.subtracting(insets:)();
        sub_1004B8D78(&qword_100975F28, &type metadata accessor for PlatformSelectorViewLayout, &protocol conformance descriptor for PlatformSelectorViewLayout);
        v130 = v206;
        dispatch thunk of Measurable.measurements(fitting:in:)();
        CGSize.adding(outsets:)();
        v132 = v131;

        (*(v205 + 8))(v128, v130);
        (*(v124 + 8))(v125, v126);

        v133 = objc_opt_self();
        v134 = [v133 fractionalWidthDimension:1.0];
        v135 = [v133 absoluteDimension:v132];
        v136 = [objc_opt_self() sizeWithWidthDimension:v134 heightDimension:v135];

        v137 = String._bridgeToObjectiveC()();
        v138 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v136 elementKind:v137 alignment:1];
LABEL_64:
        v170 = v138;

        (*(v217 + 8))(v218, v219);
        (*(v220 + 8))(v185, v221);
        return v170;
      }

LABEL_40:
      type metadata accessor for MediaPlatform();
      v105 = static MediaPlatform.systemImages(platforms:)();
      goto LABEL_41;
    }

    v68 = v187;
    if (qword_10096CFC8 == -1)
    {
LABEL_30:
      [qword_1009738D0 size];
      goto LABEL_40;
    }

LABEL_71:
    swift_once();
    goto LABEL_30;
  }

  if (v82 == enum case for ProductMedia.DescriptionPlacement.bottom(_:))
  {
    v92 = v190;
    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.containerWidth.getter();
    v94 = v93;
    v95 = *(v191 + 8);
    v96 = v192;
    v95(v92, v192);
    v97 = ShelfLayoutContext.traitCollection.getter();
    v98 = type metadata accessor for SnapshotPageTraitEnvironment();
    v99 = objc_allocWithZone(v98);
    v100 = &v99[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
    *v100 = v94;
    *(v100 + 1) = 0x7FEFFFFFFFFFFFFFLL;
    *&v99[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v97;
    v231.receiver = v99;
    v231.super_class = v98;
    v101 = objc_msgSendSuper2(&v231, "init");
    ShelfLayoutContext.supplementaryPageGrid.getter();
    static CGFloat.allColumns.getter();
    PageGrid.componentMeasuringSize(spanning:)();
    v95(v92, v96);
    if (v76)
    {
      v102 = v187;
      if (qword_10096CFC8 != -1)
      {
        swift_once();
      }

      [qword_1009738D0 size];
    }

    else
    {
      v102 = v187;
      if (v183 >> 62)
      {
        v139 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v139 = *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v139 > 1)
      {

        type metadata accessor for MediaPlatform();
        v140 = swift_allocObject();
        *(v140 + 16) = v174;
        *(v140 + 32) = v184;

        v141 = static MediaPlatform.systemImages(platforms:)();
        v177 = v175;
LABEL_55:

        if (qword_10096CFD0 != -1)
        {
          swift_once();
        }

        v142 = sub_1000056A8(v216, qword_1009738D8);
        PlatformSelectorViewLayout.Metrics.badgeHorizontalPadding.getter();
        sub_10002A400(v228, v229);
        v143 = v193;
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v145 = v144;
        (*(v194 + 8))(v143, v195);
        sub_1000CAA9C(v141, v145);
        sub_100007000(v228);
        if (v141 >> 62)
        {
          _CocoaArrayWrapper.endIndex.getter();
        }

        v146 = v188;
        v147 = v186;

        static BadgeDisplayStyle.style(forBadgeCount:pageTraits:indentForBadges:)();
        v148 = sub_1004B4A34(v141, v101);

        v215 = v148;
        v223 = static PlatformSelectorViewLayout.makeFullPlatformString(descriptiveText:badgeString:metrics:style:in:)();
        if (qword_10096DE48 != -1)
        {
          swift_once();
        }

        v222 = v101;
        v149 = type metadata accessor for FontUseCase();
        v150 = sub_1000056A8(v149, qword_1009D0A58);
        v151 = *(v149 - 8);
        v152 = v198;
        (*(v151 + 16))(v198, v150, v149);
        (*(v151 + 56))(v152, 0, 1, v149);
        (*(v199 + 104))(v102, enum case for DirectionalTextAlignment.none(_:), v147);
        v153 = type metadata accessor for DynamicTypeLabel();
        v154 = objc_allocWithZone(v153);
        v155 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
        [v155 setAttributedText:v223];
        if (qword_10096CFC8 != -1)
        {
          swift_once();
        }

        [qword_1009738D0 size];
        v156 = type metadata accessor for LayoutViewPlaceholder();
        swift_allocObject();
        v157 = LayoutViewPlaceholder.init(representing:)();
        (*(v146 + 16))(v201, v142, v216);
        v158 = v202;
        v159 = v197;
        v160 = v203;
        (*(v202 + 16))(v200, v197, v203);
        v229 = v153;
        v230 = &protocol witness table for UILabel;
        v228[0] = v155;
        v226 = v156;
        v227 = &protocol witness table for LayoutViewPlaceholder;
        v225 = v157;
        v161 = v155;

        v162 = v204;
        PlatformSelectorViewLayout.init(metrics:style:descriptionLabel:accessoryImageView:)();
        v163 = v222;
        [v222 pageMarginInsets];
        CGSize.subtracting(insets:)();
        sub_1004B8D78(&qword_100975F28, &type metadata accessor for PlatformSelectorViewLayout, &protocol conformance descriptor for PlatformSelectorViewLayout);
        v164 = v206;
        dispatch thunk of Measurable.measurements(fitting:in:)();
        CGSize.adding(outsets:)();
        v166 = v165;

        (*(v205 + 8))(v162, v164);
        (*(v158 + 8))(v159, v160);

        v167 = objc_opt_self();
        v168 = [v167 fractionalWidthDimension:1.0];
        v169 = [v167 absoluteDimension:v166];
        v136 = [objc_opt_self() sizeWithWidthDimension:v168 heightDimension:v169];

        v137 = String._bridgeToObjectiveC()();
        v138 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v136 elementKind:v137 alignment:5];
        goto LABEL_64;
      }
    }

    type metadata accessor for MediaPlatform();
    v141 = static MediaPlatform.systemImages(platforms:)();
    goto LABEL_55;
  }

  v228[0] = 0;
  v228[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(25);
  v171._object = 0x8000000100816A40;
  v171._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v171);
  _print_unlocked<A, B>(_:_:)();
  v172._countAndFlagsBits = 46;
  v172._object = 0xE100000000000000;
  String.append(_:)(v172);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_1004B6E84(void *a1, void *a2)
{
  v107 = a2;
  v3 = type metadata accessor for ShelfBackground();
  v113 = *(v3 - 8);
  v114 = v3;
  __chkstk_darwin(v3);
  v112 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v111 = &v106 - v6;
  v119 = sub_10002849C(&qword_100972A48, &unk_1007BF080);
  __chkstk_darwin(v119);
  v122 = &v106 - v7;
  v8 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v8 - 8);
  v116 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v115 = &v106 - v11;
  __chkstk_darwin(v12);
  v14 = &v106 - v13;
  v15 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v15 - 8);
  v110 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v109 = &v106 - v18;
  __chkstk_darwin(v19);
  v126 = &v106 - v20;
  v21 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v117 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v106 - v25;
  v27 = type metadata accessor for Shelf.ContentType();
  v124 = *(v27 - 8);
  v125 = v27;
  __chkstk_darwin(v27);
  v118 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v108 = &v106 - v30;
  __chkstk_darwin(v31);
  v33 = &v106 - v32;
  v34 = objc_opt_self();
  v35 = [v34 fractionalWidthDimension:1.0];
  v36 = ShelfLayoutContext.traitCollection.getter();
  static ComponentSeparator.thickness(compatibleWith:)();
  v38 = v37;

  v39 = [v34 absoluteDimension:v38];
  v120 = [objc_opt_self() sizeWithWidthDimension:v35 heightDimension:v39];

  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v123 = v33;
  ReadOnlyLens.subscript.getter();

  v40 = *(v22 + 8);
  v40(v26, v21);
  v42 = v115;
  v41 = v116;
  v121 = a1;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v41, &unk_10098FFB0, qword_1007B3890);
  sub_100094E74(v42, v14);
  if ((*(v22 + 48))(v14, 1, v21) == 1)
  {
    sub_10002B894(v14, &unk_10098FFB0, qword_1007B3890);
    v43 = 1;
    v44 = v126;
  }

  else
  {
    swift_getKeyPath();
    v45 = v126;
    ReadOnlyLens.subscript.getter();

    v40(v14, v21);
    v43 = 0;
    v44 = v45;
  }

  v46 = v124;
  (*(v124 + 56))(v44, v43, 1, v125);
  v47 = v117;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v40(v47, v21);
  v48 = v128;
  v49 = v118;
  if (v128)
  {
    v50 = v127;

    v51 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v51 = v50 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v117) = v51 != 0;
  }

  else
  {
    LODWORD(v117) = 0;
  }

  v52 = *(v119 + 48);
  v53 = v122;
  v54 = v125;
  (*(v46 + 16))(v122, v123, v125);
  sub_100094EE4(v126, v53 + v52);
  v55 = *(v46 + 88);
  v56 = v55(v53, v54);
  if (v56 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    v57 = v52;
    v58 = v111;
    ReadOnlyLens.subscript.getter();
    v53 = v122;

    v40(v26, v21);
    v60 = v112;
    v59 = v113;
    v61 = v114;
    (*(v113 + 104))(v112, enum case for ShelfBackground.editorsChoice(_:), v114);
    v62 = static ShelfBackground.== infix(_:_:)();
    v63 = *(v59 + 8);
    v63(v60, v61);
    v64 = v58;
    v52 = v57;
    v63(v64, v61);
    if (v62)
    {

      sub_10002B894(v126, &unk_100992460, &qword_1007B6BF0);
      v65 = *(v124 + 8);
      v66 = v125;
      v65(v123, v125);
      sub_10002B894(v53 + v57, &unk_100992460, &qword_1007B6BF0);
      v65(v53, v66);
      return 0;
    }

LABEL_15:
    v73 = v124;
    v74 = v125;
    if ((*(v124 + 48))(v53 + v52, 1, v125) == 1)
    {

      sub_10002B894(v126, &unk_100992460, &qword_1007B6BF0);
      (*(v73 + 8))(v123, v74);
    }

    else
    {
      v75 = v110;
      sub_100094EE4(v53 + v52, v110);
      if (v55(v75, v74) == enum case for Shelf.ContentType.productMediaItem(_:))
      {
        v76 = v124;
        if ((v117 & 1) == 0)
        {
          type metadata accessor for SeparatorSupplementaryView(0);
          static UICollectionReusableView.elementKind.getter();
          sub_10002A400(v107, v107[3]);
          ShelfLayoutSpacingProvider.topPaddingValue(in:)();
          v82 = v81 * 0.5;
          v83 = String._bridgeToObjectiveC()();

          v84 = objc_opt_self();
          v85 = v120;
          v86 = [v84 boundarySupplementaryItemWithLayoutSize:v120 elementKind:v83 alignment:1 absoluteOffset:{0.0, v82}];

          sub_10002B894(v126, &unk_100992460, &qword_1007B6BF0);
          v87 = *(v76 + 8);
          v87(v123, v74);
          sub_10002B894(v53 + v52, &unk_100992460, &qword_1007B6BF0);
          v87(v53, v74);
          return v86;
        }

        sub_10002B894(v126, &unk_100992460, &qword_1007B6BF0);
        (*(v76 + 8))(v123, v74);
      }

      else
      {

        sub_10002B894(v126, &unk_100992460, &qword_1007B6BF0);
        v80 = *(v124 + 8);
        v80(v123, v74);
        v80(v75, v74);
      }
    }

    sub_10002B894(v53, &qword_100972A48, &unk_1007BF080);
    return 0;
  }

  if (v56 != enum case for Shelf.ContentType.productMediaItem(_:))
  {
    goto LABEL_15;
  }

  v67 = v56;
  v68 = v126;
  v69 = v109;
  sub_100094EE4(v126, v109);
  v71 = v124;
  v70 = v125;
  if ((*(v124 + 48))(v69, 1, v125) == 1)
  {

    sub_10002B894(v68, &unk_100992460, &qword_1007B6BF0);
    v72 = *(v71 + 8);
    v72(v123, v70);
    sub_10002B894(v69, &unk_100992460, &qword_1007B6BF0);
LABEL_27:
    sub_10002B894(v53 + v52, &unk_100992460, &qword_1007B6BF0);
    v72(v53, v70);
    return 0;
  }

  v77 = v70;
  v78 = v108;
  (*(v71 + 32))(v108, v69, v77);
  v119 = *(v71 + 104);
  (v119)(v49, v67, v77);
  sub_1004B8D78(&qword_100972720, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v79 = dispatch thunk of static Equatable.== infix(_:_:)();
  v72 = *(v71 + 8);
  v72(v49, v77);
  if (v79 & 1) != 0 || ((v119)(v49, enum case for Shelf.ContentType.productBadge(_:), v77), v89 = dispatch thunk of static Equatable.== infix(_:_:)(), v72(v49, v77), v90 = v78, (v89))
  {

    v72(v78, v77);
    sub_10002B894(v126, &unk_100992460, &qword_1007B6BF0);
    v72(v123, v77);
    v53 = v122;
    v70 = v77;
    goto LABEL_27;
  }

  v53 = v122;
  if (qword_10096E560 != -1)
  {
    swift_once();
  }

  v91 = sub_100295E2C(v78, qword_1009D1F68);
  v70 = v77;
  if ((v91 & 1) == 0)
  {

    v72(v90, v77);
    sub_10002B894(v126, &unk_100992460, &qword_1007B6BF0);
    v72(v123, v77);
    goto LABEL_27;
  }

  v92 = v107;
  v93 = sub_1004B4D30(v121);
  if (v93)
  {
    v94 = v93;
    v95 = 0.0;
    if ([v93 alignment] == 1)
    {
      v96 = [v94 layoutSize];
      v97 = [v96 heightDimension];

      [v97 dimension];
      v95 = v98;
    }
  }

  else
  {
    v95 = 0.0;
  }

  type metadata accessor for SeparatorSupplementaryView(0);
  static UICollectionReusableView.elementKind.getter();
  sub_10002A400(v92, v92[3]);
  ShelfLayoutSpacingProvider.topPaddingValue(in:)();
  v100 = -(v95 + v99);
  v101 = String._bridgeToObjectiveC()();

  v102 = objc_opt_self();
  v103 = v120;
  v104 = [v102 boundarySupplementaryItemWithLayoutSize:v120 elementKind:v101 alignment:1 absoluteOffset:{0.0, v100}];

  v72(v90, v70);
  sub_10002B894(v126, &unk_100992460, &qword_1007B6BF0);
  v72(v123, v70);
  v105 = v122;
  sub_10002B894(&v122[v52], &unk_100992460, &qword_1007B6BF0);
  v72(v105, v70);
  return v104;
}

uint64_t sub_1004B7D60(uint64_t a1)
{
  v30 = type metadata accessor for ProductReview.ReviewSource();
  v32 = *(v30 - 8);
  __chkstk_darwin(v30);
  v31 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Shelf.ContentType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v29 - v8;
  v10 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v33 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  v36 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v34 = *(v11 + 8);
  v35 = v11 + 8;
  v34(v18, v10);
  (*(v4 + 104))(v6, enum case for Shelf.ContentType.productReview(_:), v3);
  sub_1004B8D78(&qword_100971EE8, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v37 == v38)
  {
    v19 = *(v4 + 8);
    v19(v6, v3);
    v19(v9, v3);
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v21 = *(v4 + 8);
    v21(v6, v3);
    v21(v9, v3);

    result = 0;
    if ((v20 & 1) == 0)
    {
      return result;
    }
  }

  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v23 = v34;
  v34(v15, v10);
  result = *(&v37 + 1);
  if (*(&v37 + 1))
  {

    v24 = v33;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v23(v24, v10);
    if (*(v38 + 16))
    {
      sub_10002C0AC(v38 + 32, &v37);

      sub_10002849C(&qword_100973D50, &unk_1007B3840);
      type metadata accessor for ProductReview();
      if (swift_dynamicCast())
      {
        v25 = v31;
        ProductReview.source.getter();

        v26 = v32;
        v27 = v30;
        v28 = (*(v32 + 88))(v25, v30) != enum case for ProductReview.ReviewSource.editorsChoice(_:);
        (*(v26 + 8))(v25, v27);
        return v28;
      }
    }

    else
    {
    }

    return 1;
  }

  return result;
}

id sub_1004B828C(uint64_t a1)
{
  v2 = type metadata accessor for Shelf.ContentsMetadata();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for ProductReviewsMetadata();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1004B7D60(a1);
  result = 0;
  if (v14)
  {
    v23 = v11;
    v24 = v10;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v7 + 8))(v9, v6);
    if ((*(v3 + 88))(v5, v2) == enum case for Shelf.ContentsMetadata.productReviews(_:))
    {
      (*(v3 + 96))(v5, v2);
      v17 = v23;
      v16 = v24;
      (*(v23 + 32))(v13, v5, v24);
      if (ProductReviewsMetadata.hasReviewSummary.getter())
      {
        type metadata accessor for InteractiveProductReviewsShelfHeaderView();
        v18 = sub_1002CB2A8(v13);
        static UICollectionReusableView.elementKind.getter();
        v19 = String._bridgeToObjectiveC()();

        v20 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v18 elementKind:v19 alignment:1];

        (*(v17 + 8))(v13, v16);
        return v20;
      }

      (*(v17 + 8))(v13, v16);
    }

    else
    {
      (*(v3 + 8))(v5, v2);
    }

    type metadata accessor for ProductReviewsShelfHeaderView();
    v21 = sub_1005B2950(a1, 0, 0);
    static UICollectionReusableView.elementKind.getter();
    v22 = String._bridgeToObjectiveC()();

    v20 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v21 elementKind:v22 alignment:1];

    return v20;
  }

  return result;
}

uint64_t sub_1004B8724(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for ShelfLayoutContext() - 8);
  v10 = (v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80)));

  return sub_1004B3724(a1, a2, a3, a4, v10);
}

uint64_t sub_1004B87DC(void *a1, uint64_t a2)
{
  v55 = a1;
  v3 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v3 - 8);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v53 = &v45 - v6;
  __chkstk_darwin(v7);
  v9 = &v45 - v8;
  v10 = type metadata accessor for Shelf.ContentType();
  v56 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  v22 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v45 - v24;
  if (sub_1004B7D60(a2))
  {
    v26 = 0;
    return v26 & 1;
  }

  v48 = v12;
  v49 = v15;
  v52 = v9;
  v50 = a2;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v27 = *(v23 + 8);
  v51 = v22;
  v47 = v27;
  v27(v25, v22);
  v28 = v56;
  (*(v56 + 104))(v18, enum case for Shelf.ContentType.productMediaItem(_:), v10);
  sub_1004B8D78(&qword_100971EE8, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v59 == v57 && v60 == v58)
  {
    v29 = 1;
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v30 = *(v28 + 8);
  v30(v18, v10);
  v46 = v30;
  v30(v21, v10);

  if ((v29 & 1) == 0)
  {
    goto LABEL_14;
  }

  v31 = [v55 elementKind];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
  {

    v37 = v51;
    v36 = v52;
    goto LABEL_12;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v37 = v51;
  v36 = v52;
  if ((v38 & 1) == 0)
  {
LABEL_14:
    v26 = 1;
    return v26 & 1;
  }

LABEL_12:
  v40 = v53;
  v39 = v54;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v39, &unk_10098FFB0, qword_1007B3890);
  sub_100094E74(v40, v36);
  if ((*(v23 + 48))(v36, 1, v37) == 1)
  {
    sub_10002B894(v36, &unk_10098FFB0, qword_1007B3890);
    goto LABEL_14;
  }

  swift_getKeyPath();
  v42 = v48;
  ReadOnlyLens.subscript.getter();

  v47(v36, v37);
  v43 = v49;
  (*(v56 + 32))(v49, v42, v10);
  if (qword_10096E560 != -1)
  {
    swift_once();
  }

  v44 = sub_100295E2C(v43, qword_1009D1F68);
  v46(v43, v10);
  v26 = v44 ^ 1;
  return v26 & 1;
}

uint64_t sub_1004B8D78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1004B8DC4()
{
  result = qword_100974870;
  if (!qword_100974870)
  {
    type metadata accessor for SmallLockupCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974870);
  }

  return result;
}

double sub_1004B8E1C()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmallLockupView(0);
  v4 = ShelfLayoutContext.traitEnvironment.getter();
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v6 = v5;
  v8 = v7;
  (*(v1 + 8))(v3, v0);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for SmallLockupLayout.Metrics();
  v10 = sub_1000056A8(v9, qword_1009D3798);
  swift_getObjectType();
  sub_10070B598(v10, v4, v6, v8);
  v12 = v11;
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_1004B8FB4@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10002849C(&unk_100970EA0, &unk_1007B2210);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - v6;
  v8 = type metadata accessor for MediumLockupLayout.Metrics();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  sub_100631334(v12);

  MediumLockupLayout.Metrics.artworkSize.getter();
  (*(v9 + 8))(v12, v8);
  v16[1] = a1;
  Conditional.evaluate(with:)();
  (*(v5 + 8))(v7, v4);
  ComponentPrefetchSizing.init(size:contentMode:)();
  v14 = type metadata accessor for ComponentPrefetchSizing();
  return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
}

uint64_t sub_1004B91C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v166 = a6;
  v161 = a3;
  ObjectType = swift_getObjectType();
  v10 = sub_10002849C(&unk_100987AF0, &unk_1007C6DA8);
  __chkstk_darwin(v10 - 8);
  v163 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v140 - v13;
  v15 = type metadata accessor for AdamId();
  __chkstk_darwin(v15 - 8);
  v144 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for OfferLabelStyle();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v146 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v145 = &v140 - v19;
  v20 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v20 - 8);
  v160 = &v140 - v21;
  v158 = type metadata accessor for OfferButtonSubtitlePosition();
  v154 = *(v158 - 8);
  __chkstk_darwin(v158);
  v155 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v157 = *(v159 - 8);
  __chkstk_darwin(v159);
  v156 = &v140 - v23;
  v24 = sub_10002849C(&unk_100970170, &unk_1007BDDF0);
  __chkstk_darwin(v24 - 8);
  v152 = &v140 - v25;
  v151 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v149 = *(v151 - 8);
  __chkstk_darwin(v151);
  v150 = &v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v27 - 8);
  v153 = &v140 - v28;
  v143 = type metadata accessor for FloatingPointRoundingRule();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = &v140 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10002849C(&unk_100970E10, &qword_1007B46A0);
  __chkstk_darwin(v30 - 8);
  v32 = &v140 - v31;
  v33 = type metadata accessor for ComponentLayoutOptions();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v140 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Separator();
  v164 = *(v37 - 8);
  v165 = v37;
  __chkstk_darwin(v37);
  v167 = &v140 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = a1;
  v39 = Lockup.heading.getter();
  v162 = v14;
  if (v40)
  {
    v41 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v41 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v41)
    {
      v140 = a4;
      sub_100028BB8();
      v42 = static UIColor.primaryText.getter();
      sub_100632200(1, v42);

      v43 = *&v7[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_headingLabel];
      if (v43)
      {
        v44 = v43;
        v45 = String._bridgeToObjectiveC()();

        [v44 setText:v45];
      }

      else
      {
      }

      v47 = v167;
      goto LABEL_12;
    }
  }

  v46 = *&v7[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_headingLabel];
  v47 = v167;
  if (v46)
  {
    [v46 setHidden:1];
  }

LABEL_12:
  sub_100631DB4(v166, v47);
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_1004BABB8(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v48 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v49 = *(v34 + 8);
  v49(v36, v33);
  ObjectType = v7;
  if (v48)
  {
    (*(v164 + 56))(v32, 1, 1, v165);
    v50 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_separator;
    swift_beginAccess();
    sub_10005A354(v32, &v7[v50]);
    swift_endAccess();
    sub_1006330C8();
    sub_10002B894(v32, &unk_100970E10, &qword_1007B46A0);
    static ComponentLayoutOptions.fixedHeightContainer.getter();
    LOBYTE(v50) = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v49(v36, v33);
    v51 = [v7 contentView];
    v52 = v51;
    if (v50)
    {
      [v51 layoutMargins];
      [v52 setLayoutMargins:?];
    }

    else
    {
      Separator.verticalOutset.getter();
      sub_10002A400(&v170, *(&v171 + 1));
      v59 = v141;
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      (*(v142 + 8))(v59, v143);
      [v52 layoutMargins];
      [v52 setLayoutMargins:?];

      sub_100007000(&v170);
    }

    v58 = v161;
    v57 = ObjectType;
  }

  else
  {
    v54 = v164;
    v53 = v165;
    (*(v164 + 16))(v32, v47, v165);
    (*(v54 + 56))(v32, 0, 1, v53);
    v55 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_separator;
    swift_beginAccess();
    sub_10005A354(v32, &v7[v55]);
    swift_endAccess();
    sub_1006330C8();
    sub_10002B894(v32, &unk_100970E10, &qword_1007B46A0);
    v56 = [v7 contentView];
    [v56 layoutMargins];
    [v56 setLayoutMargins:?];

    v57 = v7;
    v58 = v161;
  }

  v60 = *&v57[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_titleLabel];
  Lockup.title.getter();
  if (v61)
  {
    v62 = String._bridgeToObjectiveC()();
  }

  else
  {
    v62 = 0;
  }

  [v60 setText:v62];

  v63 = Lockup.offerDisplayProperties.getter();
  v64 = Lockup.buttonAction.getter();
  v65 = v149;
  v66 = v151;
  (*(v149 + 104))(v150, enum case for OfferButtonPresenterViewAlignment.left(_:), v151);
  (*(v65 + 56))(v152, 1, 1, v66);
  sub_1004BABB8(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  v67 = v153;
  AccessibilityConditional.init(value:axValue:)();
  v68 = sub_10002849C(&unk_100973240, qword_1007B2220);
  (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
  v69 = v154;
  v70 = v158;
  (*(v154 + 104))(v155, enum case for OfferButtonSubtitlePosition.right(_:), v158);
  (*(v69 + 56))(v160, 1, 1, v70);
  sub_1004BABB8(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v71 = v156;
  AccessibilityConditional.init(value:axValue:)();
  sub_10064AFA4(v63, v64, 0, v67, v71, v58, 0, 0);

  (*(v157 + 8))(v71, v159);
  sub_10002B894(v67, &unk_100973230, &unk_1007B17E0);
  if (Lockup.offerDisplayProperties.getter())
  {
    v72 = v145;
    OfferDisplayProperties.offerLabelStyle.getter();
    v73 = v147;
    v74 = v146;
    v75 = v148;
    (*(v147 + 104))(v146, enum case for OfferLabelStyle.none(_:), v148);
    sub_1004BABB8(&unk_100987B00, &type metadata accessor for OfferLabelStyle, &protocol conformance descriptor for OfferLabelStyle);
    v76 = dispatch thunk of static Equatable.== infix(_:_:)();
    v77 = *(v73 + 8);
    v77(v74, v75);
    v77(v72, v75);
    if ((v76 & 1) == 0)
    {

      OfferDisplayProperties.adamId.getter();
      sub_10002849C(&unk_100973AF0, &qword_1007B3960);
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      type metadata accessor for ASKBagContract();
      inject<A, B>(_:from:)();
      ASKBagContract.arePreordersCancellable.getter();

      v81 = type metadata accessor for OfferLabelPresenter();
      swift_allocObject();
      v82 = OfferLabelPresenter.init(offerDisplayProperties:adamId:appStateController:arePreordersCancellable:)();
      *(&v171 + 1) = v81;
      *&v170 = v82;
      v83 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabelPresenter;
      v79 = ObjectType;
      swift_beginAccess();

      sub_100283DDC(&v170, &v79[v83]);
      swift_endAccess();
      [*&v79[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabel] frame];
      v173.origin.x = 0.0;
      v173.origin.y = 0.0;
      v173.size.width = 0.0;
      v173.size.height = 0.0;
      if (CGRectEqualToRect(v172, v173))
      {
        v84 = objc_opt_self();
        v85 = [v84 areAnimationsEnabled];
        [v84 setAnimationsEnabled:0];
        sub_1004BABB8(&unk_100987B10, type metadata accessor for MediumLockupCollectionViewCell, &unk_1007D0978);
        swift_unknownObjectRetain();
        OfferLabelPresenter.view.setter();
        [v79 layoutIfNeeded];
        [v84 setAnimationsEnabled:v85];
      }

      else
      {
        sub_1004BABB8(&unk_100987B10, type metadata accessor for MediumLockupCollectionViewCell, &unk_1007D0978);
        swift_unknownObjectRetain();
        OfferLabelPresenter.view.setter();
      }

      goto LABEL_29;
    }
  }

  v170 = 0u;
  v171 = 0u;
  v78 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabelPresenter;
  v79 = ObjectType;
  swift_beginAccess();
  sub_100283DDC(&v170, &v79[v78]);
  swift_endAccess();
  v80 = sub_1004BA7CC(0, 0);
LABEL_29:
  v86 = v166;
  v87 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_headingLabel;
  v88 = *&v79[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_headingLabel];
  if (v88 && ([v88 isHidden] & 1) == 0 && (v89 = *&v79[v87]) != 0)
  {
    v90 = [v89 hasContent];
  }

  else
  {
    v90 = 0;
  }

  v91 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabelPresenter;
  swift_beginAccess();
  sub_10006C234(&v79[v91], &v170);
  v92 = *(&v171 + 1);
  sub_10002B894(&v170, &unk_1009711D0, &unk_1007B1A10);
  v93 = [v86 traitCollection];
  v94 = UITraitCollection.isSizeClassCompact.getter();

  if (v94)
  {
    v95 = [v86 traitCollection];
    v96 = UITraitCollection.prefersAccessibilityLayouts.getter();

    Lockup.tertiaryTitle.getter();
    if (!v97)
    {
      v99 = v96 ^ 1;
      goto LABEL_51;
    }

    if ((v96 & 1) == 0)
    {
      if (v92)
      {
        v98 = 1;
      }

      else
      {
        v98 = v90;
      }

      v99 = 1;
      if ((v98 & 1) == 0)
      {
LABEL_41:
        sub_1006324B0();
        v100 = *&v79[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_tertiaryTitleLabel];
        if (v100)
        {
          v101 = v100;
          v102 = String._bridgeToObjectiveC()();

          [v101 setText:v102];
        }

        else
        {
        }

        goto LABEL_55;
      }

      goto LABEL_48;
    }
  }

  else
  {
    Lockup.tertiaryTitle.getter();
    if (!v103)
    {
      v99 = 0;
      goto LABEL_51;
    }
  }

  v99 = 0;
  if (v92)
  {
    v104 = v90;
  }

  else
  {
    v104 = 0;
  }

  if ((v104 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_48:

LABEL_51:
  v105 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_tertiaryTitleLabel;
  v106 = *&v79[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_tertiaryTitleLabel];
  if (v106)
  {
    [v106 setHidden:1];
    v107 = *&v79[v105];
    if (v107)
    {
      [v107 setText:0];
    }
  }

LABEL_55:
  v108 = *&v79[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_subtitleLabel];
  Lockup.subtitle.getter();
  if (v109)
  {
    v110 = String._bridgeToObjectiveC()();
  }

  else
  {
    v110 = 0;
  }

  [v108 setText:v110];

  v111 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_tertiaryTitleLabel;
  v112 = *&v79[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_tertiaryTitleLabel];
  if (!v112 || ([v112 isHidden] & 1) != 0 || (v113 = *&v79[v111]) == 0)
  {
    if (v90)
    {
      if (v92)
      {
        goto LABEL_67;
      }
    }

    else if (!v92)
    {
      v115 = 0;
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  v114 = [v113 hasContent];
  if ((v90 & 1) == 0)
  {
    if (!v92)
    {
      v115 = 0;
      if (v114)
      {
        goto LABEL_92;
      }

LABEL_71:
      v116 = 0;
      goto LABEL_72;
    }

    if (v114)
    {
      v116 = 1;
      v115 = 1;
      goto LABEL_72;
    }

LABEL_69:
    v115 = 1;
    goto LABEL_71;
  }

  if (!v92)
  {
    v115 = 1;
    v116 = 1;
    if (v114)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if ((v114 & 1) == 0)
  {
LABEL_67:
    v115 = 2;
    goto LABEL_71;
  }

  v115 = 2;
LABEL_92:
  v116 = 1;
LABEL_72:
  v117 = [v108 hasContent];
  v118 = v162;
  if (!v117)
  {
LABEL_75:
    v120 = 1;
    goto LABEL_81;
  }

  v119 = v115 + v116;
  if (v99)
  {
    if (v119)
    {
      goto LABEL_75;
    }

    v120 = 0;
  }

  else
  {
    v120 = v119 > 1;
  }

LABEL_81:
  [v108 setHidden:v120];
  v121 = Lockup.subtitleTextColor.getter();
  if (!v121)
  {
    sub_100028BB8();
    v121 = static UIColor.secondaryText.getter();
  }

  v122 = v121;
  [v108 setTextColor:v121];

  v123 = &StringUserDefaultsDebugSetting;
  v124 = [v108 layer];
  Lockup.subtitleTextFilter.getter();
  v125 = type metadata accessor for TitleEffectFilterType();
  v126 = *(v125 - 8);
  v127 = *(v126 + 48);
  if (v127(v118, 1, v125) == 1)
  {
    sub_10002B894(v118, &unk_100987AF0, &unk_1007C6DA8);
LABEL_87:
    v134 = 0;
    goto LABEL_88;
  }

  TitleEffectFilterType.compositingFilter.getter();
  (*(v126 + 8))(v118, v125);
  v128 = *(&v171 + 1);
  if (!*(&v171 + 1))
  {
    goto LABEL_87;
  }

  v129 = sub_10002A400(&v170, *(&v171 + 1));
  v130 = *(v128 - 8);
  v131 = __chkstk_darwin(v129);
  v133 = &v140 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v130 + 16))(v133, v131);
  v134 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v130 + 8))(v133, v128);
  v123 = &StringUserDefaultsDebugSetting;
  sub_100007000(&v170);
LABEL_88:
  [v124 setCompositingFilter:v134];

  swift_unknownObjectRelease();
  v135 = [v79 contentView];
  v136 = [v135 v123[43].base_prots];

  v137 = v163;
  Lockup.subtitleTextFilter.getter();
  v138 = v127(v137, 1, v125) == 1;
  sub_10002B894(v137, &unk_100987AF0, &unk_1007C6DA8);
  [v136 setAllowsGroupBlending:v138];

  [v79 setNeedsLayout];
  return (*(v164 + 8))(v167, v165);
}

double sub_1004BA7CC(uint64_t a1, NSString a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_offerLabel];
  v6 = [v5 text];
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = v6;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (!a2)
  {

    goto LABEL_12;
  }

  if (v9 != a1 || v11 != a2)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return result;
    }

LABEL_10:
    a2 = String._bridgeToObjectiveC()();
LABEL_12:
    [v5 setText:a2];

    v14 = [v5 text];
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v16 = static String.isNilOrEmpty(_:)();

    [v5 setHidden:v16 & 1];

    [v2 setNeedsLayout];
    return result;
  }

  return result;
}

uint64_t sub_1004BA998(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = type metadata accessor for Separator();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_100631DB4(a7, v12);
  Separator.height(in:)();
  (*(v10 + 8))(v12, v9);
  PageTraitEnvironment.pageColumnWidth.getter();
  sub_100633FAC(a7, v13, a2);
  v14 = objc_opt_self();
  PageTraitEnvironment.pageColumnWidth.getter();
  v15 = [v14 absoluteDimension:?];
  v16 = static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

  return v16;
}

uint64_t sub_1004BABB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1004BAC00(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v26 = a4;
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ComponentLayoutOptions();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Separator();
  v15 = *(v27 - 8);
  __chkstk_darwin(v27);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_100631DB4(a5, v17);
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_1004BABB8(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v18 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v12 + 8))(v14, v11);
  v19 = sub_100633FAC(a5, a1, a2);
  if (v18)
  {
    v20 = v19;
    Separator.verticalOutset.getter();
    sub_10002A400(v28, v28[3]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v24 + 8))(v10, v25);
    (*(v15 + 8))(v17, v27);
    sub_100007000(v28);
  }

  else
  {
    CGSize.adding(separator:in:)();
    v20 = v21;
    (*(v15 + 8))(v17, v27);
  }

  return v20;
}

double sub_1004BAF44(char a1, char a2)
{
  swift_getObjectType();
  v5 = qword_100987B20;
  *(v2 + qword_100987B20) = a1 & 1;
  *(v2 + qword_100987B28) = a2 & 1;
  sub_1004BB478(&qword_1009880D0, type metadata accessor for TopChartDiffableSegmentViewController, &unk_1007C67E0);
  ShelfBasedCollectionViewController.pageGridProvider.getter();
  sub_10002849C(&qword_10097AB20, &qword_1007C2218);
  type metadata accessor for TopChartsSegmentPageGridProvider();
  if (swift_dynamicCast())
  {
    *(v7 + 16) = *(v2 + v5);
    *(v7 + 17) = a2 & 1;
    sub_1004BB478(&qword_1009880D8, type metadata accessor for TopChartsSegmentPageGridProvider, &unk_1007E19A4);
    PageGridCaching.invalidateCache()();
  }

  return result;
}

uint64_t sub_1004BB090@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + qword_100987B20);
  v4 = *(v1 + qword_100987B28);
  v5 = type metadata accessor for TopChartsSegmentPageGridProvider();
  v6 = swift_allocObject();
  type metadata accessor for PageGridCache();
  swift_allocObject();
  *(v6 + 24) = PageGridCache.init()();
  *(v6 + 16) = v3;
  *(v6 + 17) = v4;
  a1[3] = v5;
  result = sub_1004BB478(&qword_1009880C8, type metadata accessor for TopChartsSegmentPageGridProvider, &unk_1007E19E4);
  a1[4] = result;
  *a1 = v6;
  return result;
}

unint64_t sub_1004BB15C@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  a1[3] = &type metadata for TopChartSegmentPageShelfLayoutSpacingProvider;
  result = sub_1004BB424();
  a1[4] = result;
  *a1 = sub_1004BB404;
  a1[1] = v2;
  return result;
}

void *sub_1004BB1D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for TopChartSegmentShelfSupplementaryProvider();
  v3 = swift_allocObject();
  v3[2] = v1;
  v3[3] = sub_1004BB4C0;
  v3[4] = v2;
  sub_1004BB478(&qword_1009880B8, type metadata accessor for TopChartSegmentShelfSupplementaryProvider, &unk_1007C178C);

  return v3;
}

uint64_t sub_1004BB2A0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong[qword_100987B20];

  return v2;
}

uint64_t type metadata accessor for TopChartDiffableSegmentViewController(uint64_t a1)
{
  result = qword_100987B58;
  if (!qword_100987B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1004BB3B0()
{
  result = qword_1009880B0;
  if (!qword_1009880B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009880B0);
  }

  return result;
}

unint64_t sub_1004BB424()
{
  result = qword_1009880C0;
  if (!qword_1009880C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009880C0);
  }

  return result;
}

uint64_t sub_1004BB478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004BB4C4(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 sharedInstance];
  v6 = [v5 categoryOptions];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 sharedInstance];
    v15[0] = 0;
    v8 = [v7 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:1 error:v15];

    if (v8)
    {
      v9 = v15[0];
    }

    else
    {
      v10 = v15[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_10096D110 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for OSLogger();
      sub_1000056A8(v11, qword_1009CE1E8);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B1890;
      LogMessage.init(stringLiteral:)();
      swift_getErrorValue();
      v15[3] = v14;
      v12 = sub_1000056E0(v15);
      (*(*(v14 - 1) + 16))(v12);
      static LogMessage.sensitive(_:)();
      sub_10003D444(v15);
      Logger.error(_:)();
    }
  }

  return sub_100007FAC(a1, a2, &unk_1008C5728, sub_1000089D4, &unk_1008C5740);
}

double sub_1004BB7B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E568 != -1)
  {
    swift_once();
  }

  v14[1] = qword_1009880E0;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_1004BBAAC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C56F0;
  v12 = _Block_copy(aBlock);
  sub_10000827C(a1, a2);
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_10000779C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_10000794C(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);

  return result;
}

char *sub_1004BBAC4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  v11 = type metadata accessor for ItemLayoutContext();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView;
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_isAnimationEnabled] = 1;
  *&v4[OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator] = 0;
  v13 = &v4[OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock];
  *v13 = 0;
  v13[1] = 0;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setClipsToBounds:1];

  v16 = OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView;
  [*&v14[OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView] setClipsToBounds:1];
  v17 = [v14 contentView];

  [v17 addSubview:*&v14[v16]];
  return v14;
}

void sub_1004BBDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10002C0AC(a3, v14);
      sub_10002849C(&qword_100973D50, &unk_1007B3840);
      type metadata accessor for MediumAdLockupWithScreenshotsBackground();
      if (swift_dynamicCast())
      {
        MediumAdLockupWithScreenshotsBackground.lockup.getter();

        Lockup.impressionMetrics.getter();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10002B894(v6, &qword_100973D30, &unk_1007B1DC0);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          ImpressionsCalculator.addElement(_:at:)();

          (*(v8 + 8))(v10, v7);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell(uint64_t a1)
{
  result = qword_100988120;
  if (!qword_100988120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004BC124(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1004BC1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1004BC80C(&qword_100974798, type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell, &unk_1007D0BD0);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1004BC278@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_1004BC2D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

double sub_1004BC390()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *&v0[v1] = 0;

  return result;
}

double sub_1004BC3F8(__n128 a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MediumAdLockupWithScreenshotsBackground();
  sub_1004BC80C(&qword_1009787F0, &type metadata accessor for MediumAdLockupWithScreenshotsBackground, &protocol conformance descriptor for MediumAdLockupWithScreenshotsBackground);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v6)
  {
    sub_1001B49C8(v6, a3);
    [v3 setNeedsLayout];
  }

  return result;
}

double sub_1004BC4BC()
{
  swift_beginAccess();

  return result;
}

double sub_1004BC504(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1004BC5BC()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1, v1[1]);
  return v2;
}

uint64_t sub_1004BC618(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6, v7);
}

void (*sub_1004BC6D8(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_10002C0AC(a1, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_100005A38(v7, v5 + 32);
  return sub_1004BC854;
}

uint64_t sub_1004BC80C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004BC860()
{
  v1 = OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  v2 = type metadata accessor for ItemLayoutContext();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView;
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_isAnimationEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator) = 0;
  v4 = (v0 + OBJC_IVAR____TtC8AppStore57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1004BC960(uint64_t a1, void *a2, uint64_t (*a3)(char *, char *, uint64_t), char *a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v256 = a4;
  v245 = a3;
  v244 = a2;
  v17 = sub_10002849C(&qword_10097AE68, &qword_1007C2A38);
  __chkstk_darwin(v17 - 8);
  v215 = &v208 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v223 = &v208 - v20;
  v21 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v21 - 8);
  v233 = &v208 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v234 = &v208 - v24;
  v25 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v25 - 8);
  v232 = &v208 - v26;
  v27 = type metadata accessor for VideoControls();
  __chkstk_darwin(v27 - 8);
  v221 = &v208 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v220 = &v208 - v30;
  __chkstk_darwin(v31);
  v227 = &v208 - v32;
  __chkstk_darwin(v33);
  v226 = &v208 - v34;
  v231 = type metadata accessor for VideoFillMode();
  v230 = *(v231 - 8);
  __chkstk_darwin(v231);
  v219 = &v208 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v225 = &v208 - v37;
  v236 = type metadata accessor for VideoConfiguration();
  v235 = *(v236 - 8);
  __chkstk_darwin(v236);
  v222 = &v208 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v248 = &v208 - v40;
  v214 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v213 = *(v214 - 8);
  __chkstk_darwin(v214);
  v243 = &v208 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10002849C(&unk_100973C90, qword_1007B55A0);
  __chkstk_darwin(v42 - 8);
  v216 = &v208 - v43;
  v229 = type metadata accessor for AspectRatio();
  v228 = *(v229 - 8);
  __chkstk_darwin(v229);
  v249 = &v208 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = type metadata accessor for LockupMediaLayout.Metrics();
  v241 = *(v242 - 8);
  __chkstk_darwin(v242);
  v240 = &v208 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for LockupMediaLayout.DisplayType();
  v253 = *(v255 - 8);
  __chkstk_darwin(v255);
  v212 = &v208 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v217 = (&v208 - v48);
  __chkstk_darwin(v49);
  v252 = &v208 - v50;
  __chkstk_darwin(v51);
  v224 = &v208 - v52;
  __chkstk_darwin(v53);
  v254 = &v208 - v54;
  v55 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v55 - 8);
  v218 = &v208 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v250 = &v208 - v58;
  __chkstk_darwin(v59);
  v257 = &v208 - v60;
  v61 = type metadata accessor for ScreenshotsDisplayStyle();
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v64 = &v208 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v67 = &v208 - v66;
  v68 = sub_10002849C(&unk_1009731E0, &unk_1007B0B60);
  *&v69 = __chkstk_darwin(v68 - 8).n128_u64[0];
  v71 = &v208 - v70;
  v72 = [v9 contentView];
  [v72 setLayoutMargins:{a6, a7, a8, a9}];

  v73 = *&v10[OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_lockupView];
  *&v73[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_regularWidthColumnSpacing] = a5;
  [v73 setNeedsLayout];
  v74 = type metadata accessor for ItemLayoutContext();
  (*(*(v74 - 8) + 56))(v71, 1, 1, v74);
  sub_100279F24(a1, v71, v256);
  sub_10002B894(v71, &unk_1009731E0, &unk_1007B0B60);
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v75 = static UIColor.defaultBackground.getter();
  [v10 setBackgroundColor:v75];

  MixedMediaLockup.screenshotsDisplayStyle.getter();
  (v62[1].base_meths)(v64, enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v61);
  sub_1004C0ED0(&qword_100978100, &type metadata accessor for ScreenshotsDisplayStyle, &protocol conformance descriptor for ScreenshotsDisplayStyle);
  v259 = v67;
  v76 = dispatch thunk of static Equatable.== infix(_:_:)();
  p_ivar_base_size = &v62->ivar_base_size;
  v77 = *&v62->ivar_base_size;
  v258 = v61;
  (v77)(v64, v61);
  if (v76)
  {
    [*&v10[OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_screenshots] setHidden:1];
    v62 = &StringUserDefaultsDebugSetting;
LABEL_148:
    [v10 v62[41].base_meths];
    return (v77)(v259, v258);
  }

  v79 = MixedMediaLockup.screenshots.getter();
  if (v79 >> 62)
  {
    v76 = v79;
    v80 = _CocoaArrayWrapper.endIndex.getter();
    v79 = v76;
  }

  else
  {
    v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v239 = v77;
  if (v80)
  {
    if ((v79 & 0xC000000000000001) != 0)
    {
      v76 = v79;
      v247 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_48;
      }

      v76 = v79;
      v247 = *(v79 + 32);
    }
  }

  else
  {

    v247 = 0;
  }

  v211 = v10;
  v67 = *&v10[OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_screenshots];
  v238 = MixedMediaLockup.alignedRegionArtwork.getter();
  v251 = MixedMediaLockup.alignedRegionVideo.getter();
  v81 = MixedMediaLockup.trailers.getter();
  if (v81 >> 62)
  {
    v76 = v81;
    v82 = _CocoaArrayWrapper.endIndex.getter();
    v81 = v76;
  }

  else
  {
    v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v247;
  if (v82)
  {
    if ((v81 & 0xC000000000000001) != 0)
    {
      v246 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_50;
      }

      v246 = *(v81 + 32);
    }
  }

  else
  {

    v246 = 0;
  }

  v83 = [v244 traitCollection];
  sub_1004BF564(v257);

  v77 = MixedMediaLockup.alignedRegionArtwork.getter();
  v76 = MixedMediaLockup.alignedRegionVideo.getter();
  v84 = MixedMediaLockup.screenshots.getter();
  if (v84 >> 62)
  {
    v88 = v84;
    v85 = _CocoaArrayWrapper.endIndex.getter();
    v84 = v88;
  }

  else
  {
    v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v237 = &v62->ivar_base_size;
  if (v85)
  {
    if ((v84 & 0xC000000000000001) == 0)
    {
      if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_52;
      }

      p_ivar_base_size = *(v84 + 32);

      goto LABEL_25;
    }

LABEL_48:
    p_ivar_base_size = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_25:

    goto LABEL_27;
  }

  p_ivar_base_size = 0;
LABEL_27:
  v86 = MixedMediaLockup.trailers.getter();
  if (v86 >> 62)
  {
    v89 = v86;
    v90 = _CocoaArrayWrapper.endIndex.getter();
    v86 = v89;
    if (v90)
    {
LABEL_29:
      if ((v86 & 0xC000000000000001) == 0)
      {
        if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v87 = *(v86 + 32);

LABEL_32:

          goto LABEL_38;
        }

LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

LABEL_50:
      v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_32;
    }
  }

  else if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  v87 = 0;
LABEL_38:
  if ((ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0)
  {

    v94 = v253;
    v95 = v254;
    v96 = v255;
    (*(v253 + 104))(v254, enum case for LockupMediaLayout.DisplayType.none(_:), v255);
    goto LABEL_76;
  }

  if (v76 | v77)
  {
    v97 = v224;
    AspectRatio.init(_:_:)();

    v94 = v253;
    v96 = v255;
    (*(v253 + 104))(v97, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v255);
    v95 = v254;
    (*(v94 + 32))(v254, v97, v96);
    goto LABEL_76;
  }

  v92 = sub_1001B9B24(p_ivar_base_size, v87, 0, 1, v91);
  v77 = v92;
  v10 = (v92 >> 62);
  if (v92 >> 62)
  {
LABEL_53:
    v210 = _CocoaArrayWrapper.endIndex.getter();
    if (p_ivar_base_size)
    {
      goto LABEL_42;
    }

    goto LABEL_54;
  }

  v210 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (p_ivar_base_size)
  {
LABEL_42:
    v93 = Screenshots.mediaPlatform.getter();
    goto LABEL_55;
  }

LABEL_54:
  v93 = 0;
LABEL_55:
  v208 = sub_1001B9E6C(v93);

  v245 = p_ivar_base_size;
  if (p_ivar_base_size)
  {
    v98 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v98 = 0;
  }

  v96 = v255;
  v99 = v216;
  v100 = v258;
  (v62->ivar_lyt)(v216, v259, v258);
  (v62->weak_ivar_lyt)(v99, 0, 1, v100);
  v209 = sub_1001BA394(v98, v99);

  sub_10002B894(v99, &unk_100973C90, qword_1007B55A0);
  if (v10)
  {
    v101 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v101 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v102 = v217;
  v103 = v245;
  if (!v101)
  {

LABEL_68:
    v106 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v107 = v253;
    v108 = *(v253 + 104);
    v244 = (v253 + 104);
    v217 = v108;
    (v108)(v102, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v96);
    v109 = LockupMediaLayout.DisplayType.numberOfViews.getter();
    v110 = *(v107 + 8);
    (v110)(v102, v96);
    v111 = v210;
    if (((v210 >= v109) & v209) != 0 || (v106 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v216 = v110, v112 = v255, (v217)(v102, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v255), v113 = LockupMediaLayout.DisplayType.numberOfViews.getter(), (v216)(v102, v112), ((v111 >= v113) & v208) != 0) || (v106 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v114 = v255, (v217)(v102, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v255), v115 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v116 = v114, v117 = v216, (v216)(v102, v116), v111 >= v115))
    {

      v105 = v224;
      v121 = v224;
      v122 = v106;
    }

    else
    {
      v209 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      v118 = v117;
      v119 = v255;
      v217(v102);
      v120 = LockupMediaLayout.DisplayType.numberOfViews.getter();

      (v118)(v102, v119);
      if (v111 == v120)
      {
        v105 = v224;
        v121 = v224;
        v122 = v209;
      }

      else
      {
        v122 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v105 = v224;
        v121 = v224;
      }
    }

    v96 = v255;
    (v217)(v121, v122, v255);
    v94 = v253;
    goto LABEL_75;
  }

  if ((v77 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_151;
    }
  }

  v104 = dispatch thunk of Artwork.isLandscape.getter();

  if ((v104 & 1) == 0)
  {
    goto LABEL_68;
  }

  v94 = v253;
  v105 = v224;
  (*(v253 + 104))(v224, enum case for LockupMediaLayout.DisplayType.landscape(_:), v96);
LABEL_75:
  v95 = v254;
  (*(v94 + 32))(v254, v105, v96);
  v10 = v247;
LABEL_76:
  v261[3] = &type metadata for CGFloat;
  v261[4] = &protocol witness table for CGFloat;
  v261[0] = 0x4021000000000000;
  sub_10002C0AC(v261, v260);
  v103 = *(v94 + 16);
  v103(v252, v95, v96);
  if (v251 | v238)
  {
    goto LABEL_87;
  }

  result = sub_1001B9B24(v10, v246, 0, 1, v123);
  if (result >> 62)
  {
    v125 = result;
    v126 = _CocoaArrayWrapper.endIndex.getter();
    result = v125;
    if (v126)
    {
      goto LABEL_79;
    }

    goto LABEL_86;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_86:

LABEL_87:
    AspectRatio.init(_:_:)();
    goto LABEL_88;
  }

LABEL_79:
  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_132;
    }
  }

  Artwork.size.getter();
  AspectRatio.init(_:_:)();

LABEL_88:
  sub_100031660(v257, v250, &unk_1009732A0, &unk_1007B4FE0);
  v127 = v240;
  LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)();
  sub_100007000(v261);
  v128 = OBJC_IVAR____TtC8AppStore15LockupMediaView_metrics;
  swift_beginAccess();
  v129 = v241;
  v130 = &v67[v128];
  v131 = v242;
  (*(v241 + 24))(v130, v127, v242);
  swift_endAccess();
  [v67 setNeedsLayout];
  (*(v129 + 8))(v127, v131);
  if (v10)
  {
    v132 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v132 = 0;
  }

  type metadata accessor for Screenshots();
  v133 = v243;
  sub_10061B788(v132, v243);

  v134 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_1001BAB64(v133, &v67[v134], v135);
  swift_endAccess();
  sub_1001B7B88(v136);
  sub_1001BABC8(v133, v137);
  if (v10)
  {
    v10 = Screenshots.mediaPlatform.getter();
  }

  *&v67[OBJC_IVAR____TtC8AppStore15LockupMediaView_platform] = v10;

  sub_1001B7D8C(v138);

  v139 = v258;
  (v62->ivar_lyt)(v64, v259, v258);
  v140 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (v62->name)(&v67[v140], v64, v139);
  swift_endAccess();
  v62 = &StringUserDefaultsDebugSetting;
  [v67 setNeedsLayout];
  v239(v64, v139);
  if (v251)
  {
    (*(v230 + 104))(v225, enum case for VideoFillMode.scaleAspectFill(_:), v231);

    Video.preview.getter();
    Artwork.size.getter();
    v141 = v250;
    AspectRatio.init(_:_:)();

    (*(v228 + 56))(v141, 0, 1, v229);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    Video.playbackId.getter();
    v142 = v232;
    Video.videoUrl.getter();
    v143 = type metadata accessor for URL();
    (*(*(v143 - 8) + 56))(v142, 0, 1, v143);
    v144 = v234;
    Video.templateMediaEvent.getter();
    v145 = v233;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView(0);
    sub_1004C0ED0(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v146 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v145, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v144, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v142, &qword_100982460, &unk_1007B5C90);
    sub_10002B894(v261, &qword_10096FB90, &qword_1007B2A50);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v148 = Strong;
      v149 = [Strong superview];
      if (v149)
      {
        v150 = v149;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v151 = v67;
        v152 = static NSObject.== infix(_:_:)();

        if ((v152 & 1) == 0)
        {
          goto LABEL_108;
        }

        v153 = swift_unknownObjectWeakLoadStrong();
        if (!v153)
        {
          goto LABEL_108;
        }

        v148 = v153;
        [v153 removeFromSuperview];
      }
    }

LABEL_108:
    swift_unknownObjectWeakAssign();
    v162 = swift_unknownObjectWeakLoadStrong();
    v62 = &StringUserDefaultsDebugSetting;
    if (v162)
    {
      v164 = v162;
      [v67 addSubview:v162];
    }

    sub_1001B8790(v163);
    [v67 setNeedsLayout];

    v165 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    v166 = *&v67[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
    v157 = v253;
    if (v166)
    {
      [v166 removeFromSuperview];
      v167 = *&v67[v165];
    }

    else
    {
      v167 = 0;
    }

    v168 = v254;
    *&v67[v165] = 0;

    [v67 setNeedsLayout];

    (*(v235 + 8))(v248, v236);
LABEL_147:
    [v67 v62[41].base_meths];

    (*(v157 + 8))(v168, v255);
    sub_10002B894(v257, &unk_1009732A0, &unk_1007B4FE0);
    [v67 setHidden:0];

    v10 = v211;
    v77 = v239;
    goto LABEL_148;
  }

  if (!v246)
  {
LABEL_134:
    v195 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    v196 = *&v67[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
    if (v196)
    {
      [v196 removeFromSuperview];
      v197 = *&v67[v195];
    }

    else
    {
      v197 = 0;
    }

    v157 = v253;
    v168 = v254;
    *&v67[v195] = 0;

    [v67 v62[41].base_meths];
    v198 = swift_unknownObjectWeakLoadStrong();
    if (!v198)
    {
      goto LABEL_144;
    }

    v199 = v198;
    sub_1004C0ED0(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v200 = [v199 superview];
    if (v200)
    {
      v201 = v200;
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v202 = v67;
      v203 = static NSObject.== infix(_:_:)();

      v168 = v254;
      if ((v203 & 1) == 0)
      {
        goto LABEL_144;
      }

      v204 = swift_unknownObjectWeakLoadStrong();
      if (!v204)
      {
        goto LABEL_144;
      }

      v199 = v204;
      [v204 removeFromSuperview];
    }

    else
    {
      v168 = v254;
    }

LABEL_144:
    swift_unknownObjectWeakAssign();
    v205 = swift_unknownObjectWeakLoadStrong();
    if (v205)
    {
      v207 = v205;
      [v67 addSubview:v205];
    }

    sub_1001B8790(v206);
    [v67 v62[41].base_meths];
    goto LABEL_147;
  }

  result = Trailers.videos.getter();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_102;
    }

    goto LABEL_133;
  }

LABEL_132:
  v193 = result;
  v194 = _CocoaArrayWrapper.endIndex.getter();
  result = v193;
  if (!v194)
  {
LABEL_133:

    goto LABEL_134;
  }

LABEL_102:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_151:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    v154 = v215;
LABEL_105:

    v155 = v212;
    v156 = v255;
    v103(v212, v254, v255);
    v157 = v253;
    v158 = (*(v253 + 88))(v155, v156);
    v159 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    (*(v157 + 8))(v155, v156);
    if (v158 == v159)
    {
      v160 = 1;
      v161 = v223;
    }

    else
    {
      v169 = Trailers.mediaPlatform.getter();
      v161 = v223;
      sub_10061B788(v169, v223);

      v160 = 0;
    }

    v170 = v213;
    v171 = v214;
    (*(v213 + 56))(v161, v160, 1, v214);
    (*(v230 + 104))(v219, enum case for VideoFillMode.scaleAspectFill(_:), v231);
    Video.preview.getter();
    Artwork.size.getter();
    v172 = v218;
    AspectRatio.init(_:_:)();

    (*(v228 + 56))(v172, 0, 1, v229);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    sub_100031660(v161, v154, &qword_10097AE68, &qword_1007C2A38);
    if ((*(v170 + 48))(v154, 1, v171) == 1)
    {
      sub_10002B894(v154, &qword_10097AE68, &qword_1007C2A38);
    }

    else
    {
      sub_1001BABC8(v154, v173);
    }

    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    Video.playbackId.getter();
    v174 = v232;
    Video.videoUrl.getter();
    v175 = type metadata accessor for URL();
    (*(*(v175 - 8) + 56))(v174, 0, 1, v175);
    v176 = v234;
    Video.templateMediaEvent.getter();
    v177 = v233;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView(0);
    sub_1004C0ED0(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v178 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v177, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v176, &unk_100973A50, &unk_1007B4FD0);
    sub_10002B894(v174, &qword_100982460, &unk_1007B5C90);
    sub_10002B894(v261, &qword_10096FB90, &qword_1007B2A50);
    v179 = swift_unknownObjectWeakLoadStrong();
    if (!v179)
    {
      goto LABEL_124;
    }

    v180 = v179;
    v181 = [v179 superview];
    if (v181)
    {
      v182 = v181;
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v183 = v67;
      v184 = static NSObject.== infix(_:_:)();

      v157 = v253;
      if ((v184 & 1) == 0)
      {
        goto LABEL_124;
      }

      v185 = swift_unknownObjectWeakLoadStrong();
      if (!v185)
      {
        goto LABEL_124;
      }

      v180 = v185;
      [v185 removeFromSuperview];
    }

LABEL_124:
    swift_unknownObjectWeakAssign();
    v186 = swift_unknownObjectWeakLoadStrong();
    if (v186)
    {
      v188 = v186;
      [v67 addSubview:v186];
    }

    sub_1001B8790(v187);
    v62 = &StringUserDefaultsDebugSetting;
    [v67 setNeedsLayout];

    v189 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    v190 = *&v67[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
    v191 = v223;
    if (v190)
    {
      [v190 removeFromSuperview];
      v192 = *&v67[v189];
    }

    else
    {
      v192 = 0;
    }

    *&v67[v189] = 0;

    [v67 setNeedsLayout];

    (*(v235 + 8))(v222, v236);
    sub_10002B894(v191, &qword_10097AE68, &qword_1007C2A38);
    v168 = v254;
    goto LABEL_147;
  }

  v154 = v215;
  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_105;
  }

  __break(1u);
  return result;
}

void sub_1004BEC78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = type metadata accessor for ScreenshotsDisplayStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v75 - v14);
  v16 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v16 - 8);
  if ((*(a2 + 32) & 1) == 0)
  {
    v77 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v78 = a4;
    v79 = v12;
    v83 = a1;
    v18 = *(a2 + 16);
    v19 = *(a2 + 24);
    v84 = v4;
    v20 = *(v4 + OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_screenshots);
    v21 = OBJC_IVAR____TtC8AppStore15LockupMediaView_imageViews;
    swift_beginAccess();
    v81 = v20;
    v22 = *(v20 + v21);
    if (v22 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v82 = v15;
    v24 = v84;
    if (v23)
    {
      if (v23 < 1)
      {
        __break(1u);
        goto LABEL_41;
      }

      v25 = a3;
      v80 = v10;
      v76 = v9;

      v26 = 0;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v27 = *(v22 + v26 + 4);
        }

        v28 = v27;
        ++v26;
        v85 = v27;
        type metadata accessor for BorderedScreenshotView(0);
        sub_1004C0ED0(&qword_100973D78, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
        v29 = v28;
        AnyHashable.init<A>(_:)();
        ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
        sub_10003D614(v86);
        v30 = *&v29[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
        v87.value.super.isa = 0;
        v87.is_nil = 0;
        ArtworkView.setImage(image:animated:)(v87, v31);
      }

      while (v23 != v26);

      v9 = v76;
      v10 = v80;
      a3 = v25;
      v15 = v82;
      v24 = v84;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v33 = Strong;
      [*(Strong + qword_100988CC0) setImage:0];
      v85 = v33;
      type metadata accessor for VideoView(0);
      sub_1004C0ED0(&qword_100992450, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
      v34 = v33;
      AnyHashable.init<A>(_:)();
      ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
      v24 = v84;

      sub_10003D614(v86);
    }

    v24 = *(v24 + OBJC_IVAR____TtC8AppStore37ContentSearchResultCollectionViewCell_lockupView);
    a2 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v35 = *(v24 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    v88.value.super.isa = 0;
    v88.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v88, v36);

    v37 = *(v24 + a2);
    v38 = type metadata accessor for ArtworkView();
    sub_1004C0ED0(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v39 = v37;
    v84 = a3;
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

    if (!Lockup.icon.getter())
    {
LABEL_19:
      MixedMediaLockup.screenshotsDisplayStyle.getter();
      v43 = v79;
      (*(v10 + 104))(v79, enum case for ScreenshotsDisplayStyle.noScreenshots(_:), v9);
      sub_1004C0ED0(&qword_100978100, &type metadata accessor for ScreenshotsDisplayStyle, &protocol conformance descriptor for ScreenshotsDisplayStyle);
      v44 = dispatch thunk of static Equatable.== infix(_:_:)();
      v47 = *(v10 + 8);
      v45 = v10 + 8;
      v46 = v47;
      v47(v43, v9);
      if (v44)
      {
LABEL_46:
        v46(v15, v9);
        return;
      }

      v80 = v45;
      v48 = Lockup.title.getter();
      v50 = v49;
      v51 = Lockup.subtitle.getter();
      v53 = v52;
      v54 = Lockup.searchAdOpportunity.getter();
      if (v54)
      {
        v55 = SearchAdOpportunity.searchAd.getter();

        if (v55)
        {
          v56 = SearchAd.advertisingText.getter();
          v54 = v57;
        }

        else
        {
          v56 = 0;
          v54 = 0;
        }
      }

      else
      {
        v56 = 0;
      }

      v58 = [v78 traitCollection];
      v59 = sub_100349130(v48, v50, v51, v53, v56, v54, v58, v18, v19);
      v61 = v60;

      v62 = MixedMediaLockup.alignedRegionArtwork.getter();
      v63 = MixedMediaLockup.alignedRegionVideo.getter();
      v64 = MixedMediaLockup.screenshots.getter();
      if (v64 >> 62)
      {
        v70 = v64;
        v65 = _CocoaArrayWrapper.endIndex.getter();
        v64 = v70;
      }

      else
      {
        v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v66 = v84;
      v15 = v82;
      if (v65)
      {
        if ((v64 & 0xC000000000000001) != 0)
        {
          v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_51;
          }

          v67 = *(v64 + 32);
        }
      }

      else
      {

        v67 = 0;
      }

      v68 = MixedMediaLockup.trailers.getter();
      if (v68 >> 62)
      {
        v71 = v68;
        v72 = _CocoaArrayWrapper.endIndex.getter();
        v68 = v71;
        if (v72)
        {
          goto LABEL_35;
        }
      }

      else if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_35:
        if ((v68 & 0xC000000000000001) != 0)
        {
          v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_38;
        }

        if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v69 = *(v68 + 32);

LABEL_38:

LABEL_45:
          v73 = [v78 traitCollection];
          v74.n128_f64[0] = v59;
          sub_1005B6FA0(v62, v63, v67, v69, v73, v66, v15, v74, v61);

          goto LABEL_46;
        }

LABEL_51:
        __break(1u);
        return;
      }

      v69 = 0;
      goto LABEL_45;
    }

    v80 = v38;
    v40 = qword_10096EE80;
    v22 = *(v24 + a2);
    if (v40 == -1)
    {
LABEL_16:
      v41 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v41, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      [v22 contentMode];
      Artwork.config(_:mode:prefersLayeredImage:)();
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v22 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      v42 = *(v24 + a2);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

      v15 = v82;
      goto LABEL_19;
    }

LABEL_41:
    swift_once();
    goto LABEL_16;
  }
}

uint64_t sub_1004BF564@<X0>(uint64_t a2@<X8>)
{
  if (UITraitCollection.isSizeClassCompact.getter())
  {
    v3 = type metadata accessor for AspectRatio();
    v4 = *(*(v3 - 8) + 56);
    v5 = v3;
    v6 = a2;
    v7 = 1;
    goto LABEL_19;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {

    goto LABEL_15;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
LABEL_15:
    if (qword_10096E570 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for AspectRatio();
    v22 = v21;
    v23 = qword_1009D1F88;
    goto LABEL_18;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      static AspectRatio.square.getter();
      v20 = type metadata accessor for AspectRatio();
      v4 = *(*(v20 - 8) + 56);
      v5 = v20;
      v6 = a2;
      v7 = 0;
      goto LABEL_19;
    }
  }

  if (qword_10096E578 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for AspectRatio();
  v22 = v21;
  v23 = qword_1009D1FA0;
LABEL_18:
  v24 = sub_1000056A8(v21, v23);
  v26 = *(v22 - 8);
  (*(v26 + 16))(a2, v24, v22);
  v4 = *(v26 + 56);
  v6 = a2;
  v7 = 0;
  v5 = v22;
LABEL_19:

  return v4(v6, v7, 1, v5);
}

void sub_1004BF828(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for AspectRatio();
  sub_100005644(v3, a2);
  sub_1000056A8(v3, a2);
  AspectRatio.init(_:_:)();
}

uint64_t sub_1004BF884(unint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11)
{
  v148 = a11;
  v149 = a3;
  v181 = a2;
  v12 = sub_10002849C(&unk_100973C90, qword_1007B55A0);
  __chkstk_darwin(v12 - 8);
  v144 = &v143 - v13;
  v146 = type metadata accessor for LockupMediaLayout.DisplayType();
  v153 = *(v146 - 8);
  __chkstk_darwin(v146);
  v15 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v143 - v17;
  __chkstk_darwin(v19);
  v147 = &v143 - v20;
  v21 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v21 - 8);
  v154 = &v143 - v22;
  v23 = type metadata accessor for FloatingPointRoundingRule();
  v151 = *(v23 - 8);
  v152 = v23;
  __chkstk_darwin(v23);
  v150 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ScreenshotsDisplayStyle();
  v177 = *(v25 - 8);
  v178 = v25;
  __chkstk_darwin(v25);
  v27 = &v143 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SmallSearchLockupLayout();
  v175 = *(v28 - 8);
  v176 = v28;
  __chkstk_darwin(v28);
  v174 = &v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for LabelPlaceholderCompatibility();
  v171 = *(v30 - 8);
  v172 = v30;
  __chkstk_darwin(v30);
  v170 = &v143 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for OfferButtonMetrics();
  v186 = *(v32 - 8);
  __chkstk_darwin(v32);
  v34 = &v143 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v184 = &v143 - v36;
  v187 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v185 = *(v187 - 1);
  __chkstk_darwin(v187);
  v173 = &v143 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v143 - v39;
  CGSize.subtracting(insets:)();
  v42 = v41;
  v44 = v43;
  v45 = Lockup.title.getter();
  v160 = v46;
  v161 = v45;
  v47 = Lockup.subtitle.getter();
  v162 = v48;
  v163 = v47;
  if (Lockup.searchAdOpportunity.getter() && (v49 = SearchAdOpportunity.searchAd.getter(), , v49))
  {
    v50 = SearchAd.advertisingText.getter();
    v167 = v51;
    v168 = v50;
  }

  else
  {
    v167 = 0;
    v168 = 0;
  }

  MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
  v52 = [v181 traitCollection];
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v53 = v187;
  v54 = sub_1000056A8(v187, qword_1009CDC00);
  v164 = *(v185 + 16);
  v165 = v185 + 16;
  v164(v40, v54, v53);
  v55 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v179 = v27;
  v180 = a1;
  v145 = v18;
  v143 = v15;
  if (v55)
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v56 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v56 = qword_100991028;
  }

  v57 = sub_1000056A8(v32, v56);
  v58 = v186;
  (*(v186 + 16))(v34, v57, v32);
  (*(v58 + 32))();
  v59 = [v52 preferredContentSizeCategory];
  UIContentSizeCategory.isAccessibilityCategory.getter();
  v169 = v52;

  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  v183 = v40;
  SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
  SmallSearchLockupLayout.Metrics.artworkSize.getter();
  v60 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v159 = LayoutViewPlaceholder.init(representing:)();
  v61 = objc_opt_self();
  v157 = v61;
  v62 = [v61 preferredFontForTextStyle:UIFontTextStyleBody];
  v63 = type metadata accessor for Feature();
  v224[3] = v63;
  v182 = sub_1004C0ED0(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v224[4] = v182;
  v64 = sub_1000056E0(v224);
  v65 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v66 = *(v63 - 8);
  v166 = v32;
  v158 = *(v66 + 104);
  v67 = v66 + 104;
  v155 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v158(v64, enum case for Feature.measurement_with_labelplaceholder(_:), v63);
  v156 = v67;
  isFeatureEnabled(_:)();
  sub_100007000(v224);
  v68 = v170;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v69 = v172;
  v171 = *(v171 + 8);
  (v171)(v68, v172);
  v70 = [v61 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v223[3] = v63;
  v223[4] = v182;
  v71 = sub_1000056E0(v223);
  v72 = v65;
  v73 = v158;
  v158(v71, v72, v63);
  isFeatureEnabled(_:)();
  sub_100007000(v223);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v74 = v171;
  (v171)(v68, v69);
  v75 = [v157 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v222[3] = v63;
  v222[4] = v182;
  v76 = sub_1000056E0(v222);
  v73(v76, v155, v63);
  isFeatureEnabled(_:)();
  sub_100007000(v222);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v74(v68, v69);
  sub_1000AE138();
  swift_allocObject();
  v77 = LayoutViewPlaceholder.init(representing:)();

  sub_1000AE138();
  swift_allocObject();
  v78 = LayoutViewPlaceholder.init(representing:)();
  v164(v173, v183, v187);
  v221 = &protocol witness table for LayoutViewPlaceholder;
  v220 = v60;
  v79 = v159;
  v219 = v159;
  v218 = 0;
  *&v216[40] = 0u;
  v217 = 0u;
  sub_10002C0AC(v224, v216);
  sub_10002C0AC(v223, &v215);
  v214 = 0;
  v212 = 0u;
  v213 = 0u;
  v211 = 0;
  v209 = 0u;
  v210 = 0u;

  v80 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
  v208 = &protocol witness table for LayoutViewPlaceholder;
  v207 = v60;
  v206 = v80;
  v205 = 0;
  v203 = 0u;
  v204 = 0u;
  v202 = 0;
  v200 = 0u;
  v201 = 0u;
  v199 = 0;
  v197 = 0u;
  v198 = 0u;
  v196 = 0;
  v195 = 0u;
  *&v194[40] = 0u;
  sub_10002C0AC(v222, v194);
  v192 = v60;
  v193 = &protocol witness table for LayoutViewPlaceholder;
  v190 = &protocol witness table for LayoutViewPlaceholder;
  v191 = v77;
  v189 = v60;
  v188 = v78;
  v81 = v174;
  SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1007B0B70;
  v83 = v169;
  *(v82 + 32) = v169;
  v84 = v83;
  v85 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_1004C0ED0(&unk_100972E60, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v86 = v176;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v175 + 8))(v81, v86);
  sub_100007000(v222);
  sub_100007000(v223);
  sub_100007000(v224);
  (*(v186 + 8))(v184, v166);
  (*(v185 + 8))(v183, v187);
  v88 = v179;
  v87 = v180;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  if ((ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0 || (sub_1001A41FC() & 1) == 0)
  {
    return (*(v177 + 8))(v88, v178);
  }

  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v89 = type metadata accessor for StaticDimension();
  sub_1000056A8(v89, qword_1009D2430);
  v90 = v150;
  static Dimensions.defaultRoundingRule.getter();
  v91 = v181;
  AnyDimension.value(in:rounded:)();
  (*(v151 + 8))(v90, v152);
  v92 = MixedMediaLockup.alignedRegionArtwork.getter();
  v93 = MixedMediaLockup.alignedRegionVideo.getter();
  v94 = MixedMediaLockup.screenshots.getter();
  if (v94 >> 62)
  {
    v96 = v94;
    v97 = _CocoaArrayWrapper.endIndex.getter();
    v94 = v96;
    if (v97)
    {
      goto LABEL_20;
    }

LABEL_26:

    v79 = 0;
    goto LABEL_27;
  }

  if (!*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

LABEL_20:
  if ((v94 & 0xC000000000000001) != 0)
  {
    v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_61;
    }

    v79 = *(v94 + 32);
  }

LABEL_27:
  v98 = MixedMediaLockup.trailers.getter();
  if (v98 >> 62)
  {
    v100 = v98;
    v101 = _CocoaArrayWrapper.endIndex.getter();
    v98 = v100;
    if (v101)
    {
      goto LABEL_29;
    }

LABEL_34:

    v187 = 0;
    goto LABEL_35;
  }

  if (!*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v98 & 0xC000000000000001) != 0)
  {
    v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_63;
    }
  }

  v187 = v99;

LABEL_35:
  v102 = [v91 traitCollection];
  sub_1004BF564(v154);

  v77 = MixedMediaLockup.alignedRegionArtwork.getter();
  v78 = MixedMediaLockup.alignedRegionVideo.getter();
  v103 = MixedMediaLockup.screenshots.getter();
  if (v103 >> 62)
  {
    v104 = v103;
    v105 = _CocoaArrayWrapper.endIndex.getter();
    v103 = v104;
    if (v105)
    {
LABEL_37:
      if ((v103 & 0xC000000000000001) == 0)
      {
        if (!*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_65;
        }

        v87 = *(v103 + 32);

        goto LABEL_40;
      }

LABEL_61:
      v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_40:

      goto LABEL_43;
    }
  }

  else if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  v87 = 0;
LABEL_43:
  v106 = MixedMediaLockup.trailers.getter();
  if (v106 >> 62)
  {
    v109 = v106;
    v110 = _CocoaArrayWrapper.endIndex.getter();
    v106 = v109;
    v186 = v79;
    if (v110)
    {
LABEL_45:
      if ((v106 & 0xC000000000000001) == 0)
      {
        if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v108 = *(v106 + 32);

LABEL_48:

          goto LABEL_51;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        v183 = _CocoaArrayWrapper.endIndex.getter();
        if (v87)
        {
          goto LABEL_55;
        }

        goto LABEL_67;
      }

LABEL_63:
      v108 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_48;
    }
  }

  else
  {
    v107 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v186 = v79;
    if (v107)
    {
      goto LABEL_45;
    }
  }

  v108 = 0;
LABEL_51:
  v111 = ScreenshotsDisplayStyle.shouldShowScreenshots.getter();
  v185 = v93;
  if ((v111 & 1) == 0)
  {

    v115 = v153;
    v117 = v146;
    v116 = v147;
    (*(v153 + 104))(v147, enum case for LockupMediaLayout.DisplayType.none(_:), v146);
LABEL_88:
    v139 = v187;
    type metadata accessor for LockupMediaView(0);
    v140 = v154;
    v141 = v91;
    v142 = v179;
    sub_1005B8730(v92, v185, v186, v139, v154, v116, v141, v179, v42, v44);

    (*(v115 + 8))(v116, v117);
    sub_10002B894(v140, &unk_1009732A0, &unk_1007B4FE0);
    return (*(v177 + 8))(v142, v178);
  }

  if (v78 | v77)
  {
    v118 = v145;
    AspectRatio.init(_:_:)();

    v115 = v153;
    v117 = v146;
    (*(v153 + 104))(v118, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v146);
    v116 = v147;
    (*(v115 + 32))(v147, v118, v117);
    goto LABEL_88;
  }

  v113 = sub_1001B9B24(v87, v108, 0, 1, v112);
  v78 = v113;
  v93 = v113 >> 62;
  if (v113 >> 62)
  {
    goto LABEL_66;
  }

  v183 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v87)
  {
LABEL_55:
    v114 = Screenshots.mediaPlatform.getter();
    goto LABEL_68;
  }

LABEL_67:
  v114 = 0;
LABEL_68:
  LODWORD(v180) = sub_1001B9E6C(v114);

  v184 = v92;
  if (v87)
  {
    v119 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v119 = 0;
  }

  v120 = v177;
  v121 = v144;
  v122 = v88;
  v123 = v178;
  (*(v177 + 16))(v144, v122, v178);
  (*(v120 + 56))(v121, 0, 1, v123);
  v124 = sub_1001BA394(v119, v121);

  sub_10002B894(v121, &unk_100973C90, qword_1007B55A0);
  if (!v93)
  {
    result = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v92 = v184;
    if (result)
    {
      goto LABEL_73;
    }

LABEL_79:

    goto LABEL_80;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v92 = v184;
  if (!result)
  {
    goto LABEL_79;
  }

LABEL_73:
  if ((v78 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_76:

    v125 = dispatch thunk of Artwork.isLandscape.getter();

    if (v125)
    {

      v115 = v153;
      v126 = v145;
      v117 = v146;
      (*(v153 + 104))(v145, enum case for LockupMediaLayout.DisplayType.landscape(_:), v146);
      v116 = v147;
LABEL_87:
      (*(v115 + 32))(v116, v126, v117);
      goto LABEL_88;
    }

LABEL_80:
    v127 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v128 = v153;
    v129 = v143;
    v130 = v146;
    v182 = *(v153 + 104);
    v182(v143, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v146);
    v131 = LockupMediaLayout.DisplayType.numberOfViews.getter();
    v176 = *(v128 + 8);
    v176(v129, v130);
    if (((v183 >= v131) & v124) != 0 || (v127 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v182(v129, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v130), v132 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v133 = v176, v176(v129, v130), ((v183 >= v132) & v180) != 0) || (v127 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v182(v129, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v130), v134 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v133(v129, v130), v183 >= v134))
    {

      v126 = v145;
      v182(v145, v127, v130);
      v91 = v181;
      v117 = v130;
    }

    else
    {
      v135 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      v182(v129, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v130);
      v136 = LockupMediaLayout.DisplayType.numberOfViews.getter();

      v133(v129, v130);
      v117 = v130;
      if (v183 == v136)
      {
        v126 = v145;
        v137 = v145;
        v138 = v135;
      }

      else
      {
        v138 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v126 = v145;
        v137 = v145;
      }

      v182(v137, v138, v130);
      v91 = v181;
    }

    v115 = v153;
    v116 = v147;
    v92 = v184;
    goto LABEL_87;
  }

  if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_76;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004C0ED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1004C0F18(void *a1)
{
  sub_1004C1750();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&v1[qword_100988130];
    if (v4)
    {
      v5 = *&v1[qword_100988130];
    }

    else
    {
      v5 = [v1 contentView];
      v4 = 0;
    }

    v6 = v4;
    [v5 addSubview:v3];
    [v1 setNeedsLayout];
  }
}

uint64_t sub_1004C0FEC(void *a1)
{
  v3 = *&v1[qword_100988130];
  if (v3)
  {
    v4 = *&v1[qword_100988130];
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = v3;
    goto LABEL_7;
  }

  v4 = [v1 contentView];
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = v3;
  v6 = [a1 superview];
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = v6;
  sub_100028004();
  v8 = static NSObject.== infix(_:_:)();

  v4 = v7;
LABEL_8:

  return v8 & 1;
}

void sub_1004C10A8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_1004C0F18(0);
}

void sub_1004C1104(double *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setFrame:{*a1, a1[1], a1[2], a1[3]}];
  }
}

void sub_1004C117C(void *a1)
{
  v3 = *(v1 + qword_100988130);
  *(v1 + qword_100988130) = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = a1;
  if (Strong)
  {
    [v4 addSubview:Strong];
  }
}

id sub_1004C120C(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v11 = &a1[qword_1009D1FC0];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&a1[qword_100988130] = 0;
  v13.receiver = a1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "initWithFrame:", a2, a3, a4, a5);
}

void sub_1004C12B0()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + qword_100988130);
}

void sub_1004C12F0(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();
  v2 = *(a1 + qword_100988130);
}

uint64_t type metadata accessor for FramedVideoCollectionViewCell(uint64_t a1)
{
  result = qword_100988160;
  if (!qword_100988160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_1004C13FC(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1004C1450;
}

void sub_1004C1450(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1004C0F18(v2);
  }

  else
  {
    sub_1004C0F18(*a1);
  }
}

uint64_t sub_1004C14B8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1004C18B8(&qword_100988300, type metadata accessor for FramedVideoCollectionViewCell, &unk_1007D0D58);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1004C152C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1004C18B8(&qword_100988300, type metadata accessor for FramedVideoCollectionViewCell, &unk_1007D0D58);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

void (*sub_1004C15B8(uint64_t *a1))(void *a1)
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1004C18B8(&qword_100988300, type metadata accessor for FramedVideoCollectionViewCell, &unk_1007D0D58);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000BD370;
}

void sub_1004C1750()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = *&v0[qword_100988130];
  if (v2)
  {
    v9 = *&v0[qword_100988130];
    if (Strong)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = v2;
    goto LABEL_11;
  }

  v9 = [v0 contentView];
  if (!Strong)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1004C18B8(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
  v3 = v2;
  v4 = [Strong superview];
  if (v4)
  {
    v5 = v4;
    sub_100028004();
    v6 = static NSObject.== infix(_:_:)();

    if ((v6 & 1) == 0)
    {
      return;
    }

    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      return;
    }

    v9 = v7;
    [v7 removeFromSuperview];
  }

  else
  {
  }

LABEL_11:
}

uint64_t sub_1004C18B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1004C1900(uint64_t *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = *a1;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v14 = v13;
  v15 = type metadata accessor for AppEventView(0);

  return sub_10016862C(v14, a3, v11, a8, a6, v15, ObjectType);
}

id sub_1004C1984(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_100168944(*a1, a3);

  return [v3 setNeedsLayout];
}

uint64_t sub_1004C19DC(void *a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8AppStore26AppEventCollectionViewCell_appEventView];
  [v2 bounds];
  v7 = v6;
  v8 = a1[3];
  v9 = a1[4];
  v10 = sub_10002A400(a1, v8);

  return sub_100168C50(v10, a2, v5, v8, v9, v7);
}

uint64_t sub_1004C1B4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004C1B94(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v12 = v11;
  v13 = [a6 traitCollection];
  v14 = [v13 preferredContentSizeCategory];
  v15 = static UIContentSizeCategory.>= infix(_:_:)();

  if ((v15 & 1) == 0)
  {
    if (qword_10096D5D8 != -1)
    {
      swift_once();
    }

    sub_100438080(&unk_1009CEDC8, a6, v12, a2);
    if (qword_10096EB98 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for AppEventCardLayout.Metrics(0);
    v20 = sub_1000056A8(v19, qword_1009D3058);
    sub_100153D2C(v20, a1, a5, a6, ObjectType, v12, a2);
    goto LABEL_28;
  }

  v16 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = a1 + 32;
    do
    {
      sub_10002C0AC(v18, v34);
      sub_100005A38(v34, v32);
      sub_10002849C(&qword_100973D50, &unk_1007B3840);
      type metadata accessor for AppEvent();
      if ((swift_dynamicCast() & 1) != 0 && v33)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v16 = v35;
      }

      v18 += 40;
      --v17;
    }

    while (v17);
  }

  if (!(v16 >> 62))
  {
    v21 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_17;
    }

LABEL_27:

LABEL_28:
    v29 = objc_opt_self();
    PageTraitEnvironment.pageColumnWidth.getter();
    v30 = [v29 absoluteDimension:?];
    v31 = static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

    return v31;
  }

  v21 = _CocoaArrayWrapper.endIndex.getter();
  if (!v21)
  {
    goto LABEL_27;
  }

LABEL_17:
  result = type metadata accessor for AppEventView(0);
  if (v21 >= 1)
  {
    v23 = result;
    v24 = 0;
    v25 = 0.0;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v16 + 8 * v24 + 32);
      }

      ++v24;
      sub_10016862C(v12, a2, v26, a6, a5, v23, ObjectType);
      v28 = v27;

      if (v25 <= v28)
      {
        v25 = v28;
      }
    }

    while (v21 != v24);
    goto LABEL_27;
  }

  __break(1u);
  return result;
}