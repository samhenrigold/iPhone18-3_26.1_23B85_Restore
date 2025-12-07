void sub_1001D2F7C()
{
  *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___bottomLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___valueLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___activityIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC11FTMInternal13DashboardCell____lazy_storage___separatorView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1001D3030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC11FTMInternal10TickerCell_digit];
  *v6 = 48;
  *(v6 + 1) = 0xE100000000000000;
  *&v3[OBJC_IVAR____TtC11FTMInternal10TickerCell_fontSize] = 0x4044000000000000;
  v7 = OBJC_IVAR____TtC11FTMInternal10TickerCell_numberLabel;
  *&v3[v7] = [objc_allocWithZone(UILabel) init];
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for TickerCell();
  v9 = objc_msgSendSuper2(&v12, "initWithStyle:reuseIdentifier:", a1, v8);

  v10 = v9;
  sub_1001D3218();

  return v10;
}

void sub_1001D3218()
{
  v1 = *&v0[OBJC_IVAR____TtC11FTMInternal10TickerCell_numberLabel];

  v2 = String._bridgeToObjectiveC()();

  [v1 setText:v2];

  v3 = [objc_opt_self() systemFontOfSize:*&v0[OBJC_IVAR____TtC11FTMInternal10TickerCell_fontSize] weight:UIFontWeightRegular];
  [v1 setFont:v3];

  [v1 setTextAlignment:1];
  v4 = objc_opt_self();
  v5 = [v4 blackColor];
  [v1 setTextColor:v5];

  v6 = [v0 contentView];
  [v6 addSubview:v1];

  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v0 contentView];
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002EF930;
  v9 = [v0 contentView];
  v10 = objc_opt_self();
  v11 = v1;
  v12 = [v10 constraintWithItem:v11 attribute:5 relatedBy:0 toItem:v9 attribute:5 multiplier:1.0 constant:0.0];

  *(v8 + 32) = v12;
  v13 = [v0 contentView];
  v14 = v11;
  v15 = [v10 constraintWithItem:v14 attribute:6 relatedBy:0 toItem:v13 attribute:6 multiplier:1.0 constant:0.0];

  *(v8 + 40) = v15;
  v16 = [v0 contentView];
  v17 = v14;
  v18 = [v10 constraintWithItem:v17 attribute:3 relatedBy:0 toItem:v16 attribute:3 multiplier:1.0 constant:0.0];

  *(v8 + 48) = v18;
  v19 = [v0 contentView];
  v20 = v17;
  v21 = [v10 constraintWithItem:v20 attribute:4 relatedBy:0 toItem:v19 attribute:4 multiplier:1.0 constant:0.0];

  *(v8 + 56) = v21;
  sub_1001AD6F0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 addConstraints:isa];

  v23 = [v4 clearColor];
  [v0 setBackgroundColor:v23];

  v24 = [v0 contentView];
  v25 = [v4 clearColor];
  [v24 setBackgroundColor:v25];
}

id sub_1001D3640(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TickerCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001D36E8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001D3770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1001D3844(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AttributeDetailsCollection(uint64_t a1)
{
  result = qword_100376800;
  if (!qword_100376800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001D394C(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1001D39CC()
{
  result = qword_100375B30;
  if (!qword_100375B30)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100375B30);
  }

  return result;
}

uint64_t sub_1001D3A24@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AttributeDetailsViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

char *sub_1001D3A60()
{
  sub_1001C6E44(v2);
  v0 = objc_allocWithZone(type metadata accessor for SURLSessionViewModel(0));
  return sub_100284A04(v2);
}

uint64_t sub_1001D3AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v79 = sub_1001A551C(&qword_100376868, &qword_1002F1810);
  v80 = *(v79 - 8);
  __chkstk_darwin(v79);
  v61 = &v59 - v3;
  v4 = sub_1001A551C(&qword_100376870, &qword_1002F1818);
  __chkstk_darwin(v4 - 8);
  v75 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v59 - v7;
  v69 = sub_1001A551C(&qword_100376878, &qword_1002F1820);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v59 - v9;
  v72 = sub_1001A551C(&qword_100376880, &qword_1002F1828);
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v65 = &v59 - v12;
  v13 = sub_1001A551C(&qword_100376888, &qword_1002F1830);
  __chkstk_darwin(v13 - 8);
  v74 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v82 = &v59 - v16;
  v70 = sub_1001A551C(&qword_100376890, &qword_1002F1838);
  __chkstk_darwin(v70);
  v73 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v59 - v19;
  v21 = *a1;
  v59 = *(a1 + 8);
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v24 = *(a1 + 32);
  v25 = *(a1 + 48);
  v26 = swift_allocObject();
  v27 = *(a1 + 16);
  *(v26 + 16) = *a1;
  *(v26 + 32) = v27;
  *(v26 + 48) = *(a1 + 32);
  *(v26 + 64) = *(a1 + 48);
  v83[0].n128_u64[0] = 0;
  v62 = v21;
  v28 = v21;
  v64 = v22;
  v63 = v23;
  sub_1001D4A7C(v22, v23, v24);

  State.init(wrappedValue:)();
  v29 = v85;
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v30 = sub_10021AF50();
  v83[0].n128_u8[0] = 0;
  State.init(wrappedValue:)();
  v31 = v85.n128_u8[0];
  v32 = v85.n128_u64[1];
  v88 = 0;
  v85.n128_u64[0] = sub_1001D4A74;
  v85.n128_u64[1] = v26;
  v86[0] = 0;
  *&v86[8] = v29;
  *&v86[24] = v30;
  v87[0] = v31;
  *&v87[8] = v32;
  v33 = sub_1001A551C(&qword_1003752F8, &qword_1002EF790);
  sub_1001D4A8C();
  v34 = sub_1001AD0C8(&qword_100375310, &qword_1003752F8, &qword_1002EF790, &protocol conformance descriptor for Label<A, B>);
  v78 = v33;
  v77 = v34;
  View.tabItem<A>(_:)();
  v89[0] = v85;
  v89[1] = *v86;
  v89[2] = *&v86[16];
  v89[3] = *v87;
  sub_1001D4AE0(v89);
  v35 = &v20[*(v70 + 36)];
  *v35 = nullsub_1;
  v35[1] = 0;
  v35[2] = 0;
  v35[3] = 0;
  v36 = *(v25 + 24);
  v37 = *(v36 + 24);
  v81 = v20;
  if ((v37 & 1) != 0 || *(v36 + 25) == 1)
  {
    v70 = v25;
    v60 = v8;
    type metadata accessor for SURLSessionViewModel(0);
    sub_1001D4B88(&qword_1003751C8, type metadata accessor for SURLSessionViewModel, &unk_1002F62C8);
    StateObject.wrappedValue.getter();
    if (!v62)
    {
      type metadata accessor for SPCarrierBundleViewModel(0);
      sub_1001D4B88(&qword_100377D60, type metadata accessor for SPCarrierBundleViewModel, &unk_1002F317C);
      result = EnvironmentObject.error()();
      __break(1u);
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v38 = v28;
    static Published.subscript.getter();

    v39 = v85.n128_u8[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_1001ABEB8(v39, v85.n128_u8[0], v83);
    sub_1001D4BE0();
    v40 = v67;
    View.tabItem<A>(_:)();
    *&v86[16] = v83[2];
    *v87 = *v84;
    *&v87[10] = *&v84[10];
    v85 = v83[0];
    *v86 = v83[1];
    sub_1001D4C34(&v85);
    v41 = StateObject.wrappedValue.getter();
    v42 = static ObservableObject.environmentStore.getter();
    v43 = v66;
    (*(v68 + 32))(v66, v40, v69);
    v44 = v72;
    v45 = (v43 + *(v72 + 36));
    *v45 = v42;
    v45[1] = v41;
    v46 = v65;
    sub_1001D4C88(v43, v65);
    v47 = v46;
    v48 = v82;
    sub_1001D4C88(v47, v82);
    (*(v71 + 56))(v48, 0, 1, v44);
    v8 = v60;
    v20 = v81;
    v25 = v70;
  }

  else
  {
    (*(v71 + 56))(v82, 1, 1, v72);
  }

  if (*(*(v25 + 24) + 29) == 1)
  {
    sub_1001D4B34();
    v49 = v61;
    View.tabItem<A>(_:)();
    (*(v80 + 32))(v8, v49, v79);
    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  v51 = v8;
  (*(v80 + 56))(v8, v50, 1, v79);
  v52 = v73;
  sub_1001AC934(v20, v73, &qword_100376890, &qword_1002F1838);
  v53 = v82;
  v54 = v74;
  sub_1001AC934(v82, v74, &qword_100376888, &qword_1002F1830);
  v55 = v75;
  sub_1001AC934(v8, v75, &qword_100376870, &qword_1002F1818);
  v56 = v76;
  sub_1001AC934(v52, v76, &qword_100376890, &qword_1002F1838);
  v57 = sub_1001A551C(&qword_1003768A0, &qword_1002F1840);
  sub_1001AC934(v54, v56 + *(v57 + 48), &qword_100376888, &qword_1002F1830);
  sub_1001AC934(v55, v56 + *(v57 + 64), &qword_100376870, &qword_1002F1818);
  sub_1001AC99C(v51, &qword_100376870, &qword_1002F1818);
  sub_1001AC99C(v53, &qword_100376888, &qword_1002F1830);
  sub_1001AC99C(v81, &qword_100376890, &qword_1002F1838);
  sub_1001AC99C(v55, &qword_100376870, &qword_1002F1818);
  sub_1001AC99C(v54, &qword_100376888, &qword_1002F1830);
  return sub_1001AC99C(v52, &qword_100376890, &qword_1002F1838);
}

uint64_t sub_1001D4634(uint64_t a1, uint64_t a2)
{
  LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)();
}

uint64_t sub_1001D4688()
{
  LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)();
}

void sub_1001D46E8(id *a1)
{
  if (*a1)
  {
    v1 = *a1;
    sub_1002224F0();
  }

  else
  {
    type metadata accessor for SPCarrierBundleViewModel(0);
    sub_1001D4B88(&qword_100377D60, type metadata accessor for SPCarrierBundleViewModel, &unk_1002F317C);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_1001D4794@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v9 = *v1;
  v10 = v3;
  v11 = v1[2];
  v12 = *(v1 + 6);
  sub_1001A551C(&qword_100376840, &qword_1002F17F0);
  sub_1001AD0C8(&qword_100376848, &qword_100376840, &qword_1002F17F0, &protocol conformance descriptor for TupleView<A>);
  TabView<>.init(content:)();
  v13 = v9;
  v14 = v10;
  v15 = v11;
  v4 = swift_allocObject();
  v5 = v10;
  *(v4 + 16) = v9;
  *(v4 + 32) = v5;
  *(v4 + 48) = v11;
  *(v4 + 64) = v12;
  v6 = (a1 + *(sub_1001A551C(&qword_100376850, &qword_1002F17F8) + 36));
  *v6 = sub_1001D4A18;
  v6[1] = v4;
  v6[2] = 0;
  v6[3] = 0;
  sub_1001AC934(&v13, v8, &qword_100376858, &qword_1002F1800);
  sub_1001AC934(&v14, v8, &qword_100376860, &qword_1002F1808);
}

__n128 sub_1001D4920(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1001D493C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001D4984(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1001D4A08(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    _objc_release_x1(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1001D4A20()
{
  sub_1001D4A08(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1001D4A7C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _objc_retain_x1(a1, a2);
  }

  else
  {
  }
}

unint64_t sub_1001D4A8C()
{
  result = qword_100376898;
  if (!qword_100376898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376898);
  }

  return result;
}

unint64_t sub_1001D4B34()
{
  result = qword_1003768A8;
  if (!qword_1003768A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003768A8);
  }

  return result;
}

uint64_t sub_1001D4B88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001D4BE0()
{
  result = qword_1003768B0;
  if (!qword_1003768B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003768B0);
  }

  return result;
}

uint64_t sub_1001D4C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100376880, &qword_1002F1828);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001D4CFC()
{
  result = qword_1003768B8;
  if (!qword_1003768B8)
  {
    sub_1001A55C8(&qword_100376850, &qword_1002F17F8);
    sub_1001AD0C8(&qword_1003768C0, &qword_1003768C8, &qword_1002F18D8, &protocol conformance descriptor for TabView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003768B8);
  }

  return result;
}

uint64_t sub_1001D4DB8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSDateFormatter) init];
  v7 = String._bridgeToObjectiveC()();
  [v6 setDateFormat:v7];

  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  [v6 setLocale:isa];

  v9 = String._bridgeToObjectiveC()();
  v10 = [v6 dateFromString:v9];

  if (v10)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = 0;
    v6 = v10;
  }

  else
  {
    v11 = 1;
  }

  v12 = type metadata accessor for Date();
  return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
}

void sub_1001D4FA4()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() actionWithTitle:v4 style:0 handler:0];

  [v3 addAction:v5];
  [v0 presentViewController:v3 animated:1 completion:0];
}

uint64_t sub_1001D5114(uint64_t a1)
{
  v2 = type metadata accessor for TimeZone();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSDateFormatter) init];
  v7 = String._bridgeToObjectiveC()();
  [v6 setDateFormat:v7];

  static TimeZone.autoupdatingCurrent.getter();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  [v6 setTimeZone:isa];

  [v6 setDateStyle:a1];
  [v6 setTimeStyle:a1];
  v9 = Date._bridgeToObjectiveC()().super.isa;
  v10 = [v6 stringFromDate:v9];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v11;
}

id sub_1001D52D8()
{
  result = [objc_allocWithZone(NSDateFormatter) init];
  qword_100382470 = result;
  return result;
}

uint64_t sub_1001D530C()
{
  v0 = type metadata accessor for TimeZone();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100374F80 != -1)
  {
    swift_once();
  }

  v4 = qword_100382470;
  static TimeZone.current.getter();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setTimeZone:isa];

  v6 = String._bridgeToObjectiveC()();
  [v4 setDateFormat:v6];

  v7 = Date._bridgeToObjectiveC()().super.isa;
  v8 = [v4 stringFromDate:v7];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v9;
}

void sub_1001D54B4()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() animationWithKeyPath:v1];

  v3 = v2;
  [v3 setDuration:0.2];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  [v3 setFromValue:isa];

  v5 = Double._bridgeToObjectiveC()().super.super.isa;
  [v3 setToValue:v5];

  v6 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v3 setTimingFunction:v6];

  [v3 setAutoreverses:1];
  LODWORD(v7) = 2.0;
  [v3 setRepeatCount:v7];

  v8 = [v0 layer];
  [v8 addAnimation:v3 forKey:0];
}

void sub_1001D5650()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11FTMInternal16PersistanceStore_aBMWrapper);
  v2 = String._bridgeToObjectiveC()();
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  [v1 querySpecificMetric:? triggerRef:? triggerType:? triggerID:? profileID:? metricID:?];
}

uint64_t sub_1001D5768()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1001D57CC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MainWindowViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1001D5808(void *a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = qword_100374F98;
  v4 = a1;

  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_100382480;
  v6 = static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v7 = swift_allocObject();
  v8 = v7;
  *(v7 + 16) = xmmword_1002EED40;
  v9 = *&v4[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_hardwareManager];
  if (*(v9 + 28) == 1)
  {
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_1001A76E8();
    v10 = 17225;
LABEL_8:
    v12 = 0xE200000000000000;
    goto LABEL_9;
  }

  v11 = *(v9 + 153);
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_1001A76E8();
  if (v11 != 1)
  {
    v10 = 22093;
    goto LABEL_8;
  }

  v10 = 5262931;
  v12 = 0xE300000000000000;
LABEL_9:
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  os_log(_:dso:log:type:_:)("Device: %{public}s", 18, 2, &_mh_execute_header, v5, v6, v8);

  return v2;
}

__n128 sub_1001D5970(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001D5984(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001D59CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001D5A48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v45 = sub_1001A551C(&qword_1003769C0, &qword_1002F1A60);
  __chkstk_darwin(v45);
  v47 = (&v37 - v3);
  v41 = sub_1001A551C(&qword_1003769C8, &qword_1002F1A68);
  __chkstk_darwin(v41);
  v5 = (&v37 - v4);
  v46 = sub_1001A551C(&qword_1003769D0, &qword_1002F1A70);
  __chkstk_darwin(v46);
  v43 = &v37 - v6;
  v42 = type metadata accessor for StackNavigationViewStyle();
  v38 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1001A551C(&qword_1003769D8, &qword_1002F1A78);
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v10 = &v37 - v9;
  v44 = sub_1001A551C(&qword_1003769E0, &qword_1002F1A80);
  v39 = *(v44 - 8);
  __chkstk_darwin(v44);
  v12 = &v37 - v11;
  type metadata accessor for AllMetricsViewModel();
  sub_1001DD8A8(&qword_1003769E8, type metadata accessor for AllMetricsViewModel, &unk_1002F36D8);
  v13 = *(StateObject.wrappedValue.getter() + 56);

  if (v13 > 1)
  {
    v23 = static HorizontalAlignment.center.getter();
    LOBYTE(v49) = 1;
    sub_1002274C8(v72);
    v65 = *&v72[96];
    v66 = *&v72[112];
    v61 = *&v72[32];
    v62 = *&v72[48];
    v63 = *&v72[64];
    v64 = *&v72[80];
    v59 = *v72;
    v60 = *&v72[16];
    v68[6] = *&v72[96];
    v68[7] = *&v72[112];
    v68[2] = *&v72[32];
    v68[3] = *&v72[48];
    v68[4] = *&v72[64];
    v68[5] = *&v72[80];
    v67 = v72[128];
    v69 = v72[128];
    v68[0] = *v72;
    v68[1] = *&v72[16];
    sub_1001AC934(&v59, v58, &qword_1003769F0, &qword_1002F1A88);
    sub_1001AC99C(v68, &qword_1003769F0, &qword_1002F1A88);
    *&v72[39] = v61;
    *&v72[23] = v60;
    *&v72[103] = v65;
    *&v72[87] = v64;
    *&v72[119] = v66;
    *&v72[55] = v62;
    *&v72[71] = v63;
    *&v72[7] = v59;
    *(&v71[2] + 1) = *&v72[32];
    *(&v71[1] + 1) = *&v72[16];
    *(&v71[5] + 1) = *&v72[80];
    *(&v71[6] + 1) = *&v72[96];
    *(&v71[7] + 1) = *&v72[112];
    *(&v71[3] + 1) = *&v72[48];
    v72[135] = v67;
    v70 = v23;
    LOBYTE(v71[0]) = v49;
    *(&v71[8] + 1) = *&v72[128];
    *(&v71[4] + 1) = *&v72[64];
    *(v71 + 1) = *v72;
    *&v72[96] = v71[5];
    *&v72[112] = v71[6];
    *&v72[128] = v71[7];
    *&v72[137] = *(&v71[7] + 9);
    *&v72[32] = v71[1];
    *&v72[48] = v71[2];
    *&v72[64] = v71[3];
    *&v72[80] = v71[4];
    *v72 = v23;
    *&v72[16] = v71[0];
    if (v13 == 2)
    {
      sub_1001DB5AC(v72);
    }

    else
    {
      sub_1001DB378(v72);
    }

    v55 = *&v72[96];
    v56 = *&v72[112];
    v57[0] = *&v72[128];
    *(v57 + 10) = *&v72[138];
    v51 = *&v72[32];
    v52 = *&v72[48];
    v53 = *&v72[64];
    v54 = *&v72[80];
    v49 = *v72;
    v50 = *&v72[16];
    sub_1001AC934(&v70, v58, &qword_1003769F8, &qword_1002F1A90);
    sub_1001A551C(&qword_1003769F8, &qword_1002F1A90);
    sub_1001AD0C8(&qword_100376A00, &qword_1003769F8, &qword_1002F1A90, &protocol conformance descriptor for VStack<A>);
    _ConditionalContent<>.init(storage:)();
    v32 = *&v58[112];
    v33 = v47;
    v47[6] = *&v58[96];
    v33[7] = v32;
    v33[8] = *&v58[128];
    *(v33 + 138) = *&v58[138];
    v34 = *&v58[48];
    v33[2] = *&v58[32];
    v33[3] = v34;
    v35 = *&v58[80];
    v33[4] = *&v58[64];
    v33[5] = v35;
    v36 = *&v58[16];
    *v33 = *v58;
    v33[1] = v36;
    swift_storeEnumTagMultiPayload();
    sub_1001A551C(&qword_100376A08, &qword_1002F1A98);
    sub_1001DB384();
    sub_1001DB4FC();
    _ConditionalContent<>.init(storage:)();
    return sub_1001AC99C(&v70, &qword_1003769F8, &qword_1002F1A90);
  }

  else if (v13)
  {
    v24 = static HorizontalAlignment.center.getter();
    LOBYTE(v68[0]) = 1;
    sub_100227820(v72);
    v71[5] = *&v72[96];
    v71[6] = *&v72[112];
    v71[1] = *&v72[32];
    v71[2] = *&v72[48];
    v71[3] = *&v72[64];
    v71[4] = *&v72[80];
    v70 = *v72;
    v71[0] = *&v72[16];
    v55 = *&v72[96];
    v56 = *&v72[112];
    v51 = *&v72[32];
    v52 = *&v72[48];
    v53 = *&v72[64];
    v54 = *&v72[80];
    LOBYTE(v71[7]) = v72[128];
    LOBYTE(v57[0]) = v72[128];
    v49 = *v72;
    v50 = *&v72[16];
    sub_1001AC934(&v70, v58, &qword_1003769F0, &qword_1002F1A88);
    sub_1001AC99C(&v49, &qword_1003769F0, &qword_1002F1A88);
    *&v58[39] = v71[1];
    *&v58[23] = v71[0];
    *&v58[103] = v71[5];
    *&v58[87] = v71[4];
    *&v58[119] = v71[6];
    *&v58[55] = v71[2];
    *&v58[71] = v71[3];
    *&v58[7] = v70;
    *&v72[49] = *&v58[32];
    *&v72[33] = *&v58[16];
    *&v72[97] = *&v58[80];
    *&v72[113] = *&v58[96];
    *&v72[129] = *&v58[112];
    *&v72[65] = *&v58[48];
    v58[135] = v71[7];
    *v72 = v24;
    v72[16] = v68[0];
    *&v72[145] = *&v58[128];
    *&v72[81] = *&v58[64];
    *&v72[17] = *v58;
    v25 = *&v72[112];
    v5[6] = *&v72[96];
    v5[7] = v25;
    v5[8] = *&v72[128];
    *(v5 + 137) = *&v72[137];
    v26 = *&v72[48];
    v5[2] = *&v72[32];
    v5[3] = v26;
    v27 = *&v72[80];
    v5[4] = *&v72[64];
    v5[5] = v27;
    v28 = *&v72[16];
    *v5 = *v72;
    v5[1] = v28;
    swift_storeEnumTagMultiPayload();
    sub_1001AC934(v72, v58, &qword_1003769F8, &qword_1002F1A90);
    sub_1001A551C(&qword_1003769F8, &qword_1002F1A90);
    v29 = sub_1001AD0C8(&qword_100376A18, &qword_1003769D8, &qword_1002F1A78, &protocol conformance descriptor for NavigationView<A>);
    v30 = sub_1001DD8A8(&qword_100375280, &type metadata accessor for StackNavigationViewStyle, &protocol conformance descriptor for StackNavigationViewStyle);
    *v58 = v40;
    *&v58[8] = v42;
    *&v58[16] = v29;
    *&v58[24] = v30;
    swift_getOpaqueTypeConformance2();
    sub_1001AD0C8(&qword_100376A00, &qword_1003769F8, &qword_1002F1A90, &protocol conformance descriptor for VStack<A>);
    v31 = v43;
    _ConditionalContent<>.init(storage:)();
    sub_1001AC934(v31, v47, &qword_1003769D0, &qword_1002F1A70);
    swift_storeEnumTagMultiPayload();
    sub_1001A551C(&qword_100376A08, &qword_1002F1A98);
    sub_1001DB384();
    sub_1001DB4FC();
    _ConditionalContent<>.init(storage:)();
    sub_1001AC99C(v72, &qword_1003769F8, &qword_1002F1A90);
    return sub_1001AC99C(v31, &qword_1003769D0, &qword_1002F1A70);
  }

  else
  {
    __chkstk_darwin(v14);
    *(&v37 - 2) = a1;
    sub_1001A551C(&qword_100376A28, &qword_1002F1AA0);
    sub_1001DB5BC();
    NavigationView.init(content:)();
    StackNavigationViewStyle.init()();
    v15 = sub_1001AD0C8(&qword_100376A18, &qword_1003769D8, &qword_1002F1A78, &protocol conformance descriptor for NavigationView<A>);
    v16 = sub_1001DD8A8(&qword_100375280, &type metadata accessor for StackNavigationViewStyle, &protocol conformance descriptor for StackNavigationViewStyle);
    v17 = v40;
    v18 = v42;
    View.navigationViewStyle<A>(_:)();
    (*(v38 + 8))(v8, v18);
    (*(v37 + 8))(v10, v17);
    v19 = v39;
    (*(v39 + 16))(v5, v12, v44);
    swift_storeEnumTagMultiPayload();
    sub_1001A551C(&qword_1003769F8, &qword_1002F1A90);
    *v72 = v17;
    *&v72[8] = v18;
    *&v72[16] = v15;
    *&v72[24] = v16;
    swift_getOpaqueTypeConformance2();
    sub_1001AD0C8(&qword_100376A00, &qword_1003769F8, &qword_1002F1A90, &protocol conformance descriptor for VStack<A>);
    v20 = v43;
    v21 = v44;
    _ConditionalContent<>.init(storage:)();
    sub_1001AC934(v20, v47, &qword_1003769D0, &qword_1002F1A70);
    swift_storeEnumTagMultiPayload();
    sub_1001A551C(&qword_100376A08, &qword_1002F1A98);
    sub_1001DB384();
    sub_1001DB4FC();
    _ConditionalContent<>.init(storage:)();
    sub_1001AC99C(v20, &qword_1003769D0, &qword_1002F1A70);
    return (*(v19 + 8))(v12, v21);
  }
}

uint64_t sub_1001D6758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v45 = sub_1001A551C(&qword_100376A70, &qword_1002F1AD0);
  __chkstk_darwin(v45);
  v48 = &v41 - v3;
  v49 = sub_1001A551C(&qword_100376A78, &qword_1002F1AD8);
  v44 = *(v49 - 8);
  __chkstk_darwin(v49);
  v43 = &v41 - v4;
  v5 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001A551C(&qword_100376A48, &qword_1002F1AB8);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v12 = sub_1001A551C(&qword_100376A38, &qword_1002F1AA8);
  v46 = *(v12 - 8);
  v47 = v12;
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v15 = &v11[*(sub_1001A551C(&qword_100376A80, &qword_1002F1AE0) + 44)];
  v42 = a1;
  sub_1001D6EC8(a1, v15);
  LocalizedStringKey.init(stringLiteral:)();
  (*(v6 + 104))(v8, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v5);
  v16 = v14;
  v17 = v9;
  v18 = sub_1001AD0C8(&qword_100376A50, &qword_100376A48, &qword_1002F1AB8, &protocol conformance descriptor for VStack<A>);
  View.navigationBarTitle(_:displayMode:)();

  (*(v6 + 8))(v8, v5);
  sub_1001AC99C(v11, &qword_100376A48, &qword_1002F1AB8);
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  if (*(qword_100382500 + 32) == 1684099177 && *(qword_100382500 + 40) == 0xE400000000000000 || (v19 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v19 & 1) != 0))
  {
    v21 = v46;
    v20 = v47;
    (*(v46 + 16))(v48, v14, v47);
    swift_storeEnumTagMultiPayload();
    v22 = sub_1001A55C8(&qword_100376A40, &qword_1002F1AB0);
    v51 = v17;
    v52 = v18;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v24 = sub_1001A55C8(&qword_100376A58, &qword_1002F1AC0);
    v25 = sub_1001A55C8(&qword_100376A60, &qword_1002F1AC8);
    v26 = v14;
    v27 = sub_1001AD0C8(&qword_100376A68, &qword_100376A60, &qword_1002F1AC8, &protocol conformance descriptor for ToolbarItem<A, B>);
    v51 = v25;
    v52 = v27;
    v28 = swift_getOpaqueTypeConformance2();
    v51 = v24;
    v52 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    v51 = v20;
    v52 = v22;
    v53 = OpaqueTypeConformance2;
    v54 = v29;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    __chkstk_darwin(v19);
    *(&v41 - 2) = v42;
    v30 = sub_1001A551C(&qword_100376A40, &qword_1002F1AB0);
    v51 = v17;
    v52 = v18;
    v31 = swift_getOpaqueTypeConformance2();
    v32 = sub_1001A55C8(&qword_100376A58, &qword_1002F1AC0);
    v33 = sub_1001A55C8(&qword_100376A60, &qword_1002F1AC8);
    v34 = sub_1001AD0C8(&qword_100376A68, &qword_100376A60, &qword_1002F1AC8, &protocol conformance descriptor for ToolbarItem<A, B>);
    v51 = v33;
    v52 = v34;
    v35 = swift_getOpaqueTypeConformance2();
    v51 = v32;
    v52 = v35;
    v36 = swift_getOpaqueTypeConformance2();
    v37 = v43;
    v20 = v47;
    v26 = v16;
    View.toolbar<A>(content:)();
    v38 = v44;
    v39 = v49;
    (*(v44 + 16))(v48, v37, v49);
    swift_storeEnumTagMultiPayload();
    v51 = v20;
    v52 = v30;
    v53 = v31;
    v54 = v36;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    (*(v38 + 8))(v37, v39);
    v21 = v46;
  }

  return (*(v21 + 8))(v26, v20);
}

uint64_t sub_1001D6EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = sub_1001A551C(&qword_100376B50, &qword_1002F1B88);
  v82 = *(v3 - 8);
  v83 = v3;
  __chkstk_darwin(v3);
  v76 = (&v56 - v4);
  v5 = type metadata accessor for PageIndexViewStyle.BackgroundDisplayMode();
  v78 = *(v5 - 8);
  v79 = v5;
  __chkstk_darwin(v5);
  v77 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v72 = &v56 - v8;
  v9 = type metadata accessor for PageIndexViewStyle();
  v80 = *(v9 - 8);
  v81 = v9;
  __chkstk_darwin(v9);
  v71 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PageTabViewStyle.IndexDisplayMode();
  __chkstk_darwin(v11 - 8);
  v64 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for PageTabViewStyle();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v60 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1001A551C(&qword_100376B58, &qword_1002F1B90);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v15 = &v56 - v14;
  v70 = sub_1001A551C(&qword_100376B60, &qword_1002F1B98);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v17 = &v56 - v16;
  v18 = sub_1001A551C(&qword_100376B68, &qword_1002F1BA0);
  v74 = *(v18 - 8);
  v75 = v18;
  __chkstk_darwin(v18);
  v73 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v85 = &v56 - v21;
  v22 = a1;
  type metadata accessor for AllMetricsViewModel();
  sub_1001DD8A8(&qword_1003769E8, type metadata accessor for AllMetricsViewModel, &unk_1002F36D8);
  v67 = StateObject.wrappedValue.getter();
  sub_1001DC6D8();
  v24 = v23;
  type metadata accessor for FTMMetricDetailsClass(0);
  v25 = swift_allocObject();
  v86 = _swiftEmptyArrayStorage;
  sub_1001A551C(&qword_100376B70, &qword_1002F1BA8);
  Published.init(initialValue:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v86 = _swiftEmptyArrayStorage;

  static Published.subscript.setter();
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v26 = qword_100382508;
  v27 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricDetailsClassObject;
  swift_beginAccess();

  v28 = v26;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90 = *&v26[v27];
  *&v26[v27] = 0x8000000000000000;
  sub_1001F8DE8(v25, 5521746, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  *&v26[v27] = v90;
  swift_endAccess();

  sub_1001DD8A8(&qword_100376B78, type metadata accessor for FTMMetricDetailsClass, &unk_1002F2C30);
  v62 = EnvironmentObject.init()();
  v59 = v30;
  v61 = v25;
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  type metadata accessor for FTMCarrierInfoObjectChanged(0);
  sub_1001DD8A8(&qword_100376B80, type metadata accessor for FTMCarrierInfoObjectChanged, &unk_1002F21A4);

  v58 = ObservedObject.init(wrappedValue:)();
  v57 = v31;
  v56 = static ObservableObject.environmentStore.getter();
  __chkstk_darwin(v56);
  *(&v56 - 2) = v22;
  *(&v56 - 1) = v24;
  sub_1001A551C(&qword_100376B88, &qword_1002F1BF8);
  sub_1001DCD18();
  TabView<>.init(content:)();

  static PageTabViewStyle.IndexDisplayMode.automatic.getter();
  v32 = v60;
  PageTabViewStyle.init(indexDisplayMode:)();
  v33 = sub_1001AD0C8(&qword_100376C08, &qword_100376B58, &qword_1002F1B90, &protocol conformance descriptor for TabView<A, B>);
  v34 = v17;
  v35 = v65;
  v36 = v68;
  View.tabViewStyle<A>(_:)();
  (*(v66 + 8))(v32, v36);
  (*(v63 + 8))(v15, v35);
  v37 = v72;
  static PageIndexViewStyle.BackgroundDisplayMode.interactive.getter();
  v38 = v78;
  v39 = v79;
  (*(v78 + 16))(v77, v37, v79);
  v40 = v71;
  PageIndexViewStyle.init(backgroundDisplayMode:)();
  (*(v38 + 8))(v37, v39);
  v86 = v35;
  v87 = v36;
  v88 = v33;
  v89 = &protocol witness table for PageTabViewStyle;
  swift_getOpaqueTypeConformance2();
  sub_1001DD8A8(&qword_100376C10, &type metadata accessor for PageIndexViewStyle, &protocol conformance descriptor for PageIndexViewStyle);
  v41 = v85;
  v42 = v70;
  v43 = v81;
  View.indexViewStyle<A>(_:)();
  (*(v80 + 8))(v40, v43);
  (*(v69 + 8))(v34, v42);
  v45 = v73;
  v44 = v74;
  v46 = *(v74 + 16);
  v47 = v75;
  v46(v73, v41, v75);
  v48 = v76;
  v49 = v59;
  *v76 = v62;
  v48[1] = v49;
  v50 = v57;
  v48[2] = v58;
  v48[3] = v50;
  v51 = v61;
  v48[4] = v56;
  v48[5] = v51;
  v52 = sub_1001A551C(&qword_100376C18, &qword_1002F1C38);
  v46(v48 + *(v52 + 48), v45, v47);

  v53 = *(v44 + 8);
  v53(v85, v47);
  v53(v45, v47);

  v54 = v84;
  sub_1001B603C(v48, v84, &qword_100376B50, &qword_1002F1B88);
  return (*(v82 + 56))(v54, 0, 1, v83);
}

uint64_t sub_1001D79C4(uint64_t a1, uint64_t a2)
{
  v10 = *(a1 + 40);
  v9 = v10;
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + 16);
  *(v4 + 24) = *a1;
  *(v4 + 40) = v5;
  v6 = *(a1 + 48);
  *(v4 + 56) = *(a1 + 32);
  *(v4 + 72) = v6;
  sub_1001AC934(&v10, v8, &qword_100376C20, &qword_1002F1C58);

  sub_1001DBB88(a1, v8);
  sub_1001A551C(&qword_100376C20, &qword_1002F1C58);
  sub_1001A551C(&qword_100376BA0, &qword_1002F1C00);
  sub_1001AD0C8(&qword_100376C28, &qword_100376C20, &qword_1002F1C58, &protocol conformance descriptor for [A]);
  sub_1001DD0E0();
  sub_1001DCD9C();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1001D7B30@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a3;
  v99 = a4;
  v97 = sub_1001A551C(&qword_100376BF8, &qword_1002F1C30);
  v83 = *(v97 - 8);
  __chkstk_darwin(v97);
  KeyPath = &v79 - v5;
  v98 = sub_1001A551C(&qword_100376C38, &qword_1002F1C60);
  v87 = *(v98 - 8);
  __chkstk_darwin(v98);
  v86 = &v79 - v7;
  v8 = sub_1001A551C(&qword_100376C40, &qword_1002F1C68);
  v84 = *(v8 - 8);
  __chkstk_darwin(v8);
  v82 = &v79 - v9;
  v10 = type metadata accessor for FTMBandInfoDataModel(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v79 - v15;
  v17 = sub_1001A551C(&qword_100376BE0, &qword_1002F1C20);
  __chkstk_darwin(v17);
  v85 = &v79 - v18;
  v94 = sub_1001A551C(&qword_100376C48, &qword_1002F1C70);
  __chkstk_darwin(v94);
  v96 = &v79 - v19;
  v90 = sub_1001A551C(&qword_100376C50, &qword_1002F1C78);
  __chkstk_darwin(v90);
  v89 = &v79 - v20;
  v95 = sub_1001A551C(&qword_100376BC0, &qword_1002F1C10);
  __chkstk_darwin(v95);
  v93 = &v79 - v21;
  v22 = sub_1001A551C(&qword_100376BD0, &qword_1002F1C18);
  __chkstk_darwin(v22);
  v24 = (&v79 - v23);
  LODWORD(a1) = *a1;
  v92 = v17;
  v91 = v26;
  if (!a1)
  {

LABEL_5:
    *v24 = static Alignment.center.getter();
    v24[1] = v29;
    v30 = sub_1001A551C(&qword_100376C70, &unk_1002F1CF0);
    sub_1001D8DB4(a2, v88, v24 + *(v30 + 44));
    sub_1001AC934(v24, v89, &qword_100376BD0, &qword_1002F1C18);
    swift_storeEnumTagMultiPayload();
    sub_1001AD0C8(&qword_100376BC8, &qword_100376BD0, &qword_1002F1C18, &protocol conformance descriptor for ZStack<A>);
    sub_1001DCFDC();
    v31 = v93;
    _ConditionalContent<>.init(storage:)();
    sub_1001AC934(v31, v96, &qword_100376BC0, &qword_1002F1C10);
    swift_storeEnumTagMultiPayload();
    sub_1001DCF24();
    v32 = sub_1001AD0C8(&qword_100376C00, &qword_100376BF8, &qword_1002F1C30, &protocol conformance descriptor for List<A, B>);
    *v105 = v97;
    *&v105[8] = v32;
    swift_getOpaqueTypeConformance2();
    v33 = v99;
    _ConditionalContent<>.init(storage:)();
    sub_1001AC99C(v31, &qword_100376BC0, &qword_1002F1C10);
    sub_1001AC99C(v24, &qword_100376BD0, &qword_1002F1C18);
    v34 = sub_1001A551C(&qword_100376BB0, &qword_1002F1C08);
    return (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  }

  v81 = v13;
  v27 = v8;
  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    goto LABEL_5;
  }

  v36 = v27;
  if (qword_100375018 != -1)
  {
    goto LABEL_62;
  }

LABEL_7:
  v37 = qword_100382500;
  if (*(qword_100382500 + 26) != 1)
  {
LABEL_48:
    if (*(v37 + 24) == 1)
    {
      if (a1 == 2)
      {
        v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v50 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      else
      {
      }

      sub_1001A551C(&qword_100376C58, &qword_1002F1C80);
      sub_1001DD370(&qword_100376C60, &qword_100376C58, &qword_1002F1C80, sub_1001DD134);
      List<>.init(content:)();
      v55 = swift_allocObject();
      v56 = v88;
      v57 = v88[1];
      *(v55 + 16) = *v88;
      *(v55 + 32) = v57;
      v58 = v56[3];
      *(v55 + 48) = v56[2];
      *(v55 + 64) = v58;
      sub_1001DBB88(v56, v105);
      v59 = sub_1001AD0C8(&qword_100376C00, &qword_100376BF8, &qword_1002F1C30, &protocol conformance descriptor for List<A, B>);
      v60 = v86;
      v61 = v97;
      View.refreshable(action:)();

      (v83[1])(KeyPath, v61);
      v62 = v87;
      v63 = v98;
      (*(v87 + 16))(v96, v60, v98);
      swift_storeEnumTagMultiPayload();
      sub_1001DCF24();
      *v105 = v61;
      *&v105[8] = v59;
      swift_getOpaqueTypeConformance2();
      v64 = v99;
      _ConditionalContent<>.init(storage:)();
      (*(v62 + 8))(v60, v63);
      v65 = sub_1001A551C(&qword_100376BB0, &qword_1002F1C08);
      return (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
    }

LABEL_51:
    v51 = sub_1001A551C(&qword_100376BB0, &qword_1002F1C08);
    v52 = *(*(v51 - 8) + 56);
    v53 = v51;
    v54 = v99;

    return v52(v54, 1, 1, v53);
  }

  if (a1 == 2)
  {
  }

  else
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v38 & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  if (*(v37 + 160))
  {
    goto LABEL_59;
  }

  v87 = *(v37 + 156);
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v80 = v36;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v39 = *v105;
  v86 = *(*v105 + 16);
  if (v86)
  {
    v36 = 0;
    v83 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v36 >= *(v39 + 16))
      {
        __break(1u);
LABEL_62:
        swift_once();
        goto LABEL_7;
      }

      a1 = ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v40 = *(v11 + 72);
      sub_1001BB760(&a1[v39 + v40 * v36], v16);
      if (v16[8])
      {
        if (v87)
        {
          goto LABEL_40;
        }
      }

      else if (*v16 != v87)
      {
        goto LABEL_40;
      }

      v41 = v16[9];
      if (v41 > 1)
      {
        break;
      }

      if (v16[9])
      {
        goto LABEL_27;
      }

LABEL_28:
      KeyPath = v16[25];
      if (v16[25] > 3u)
      {
        if (v16[25] > 5u)
        {
          if (KeyPath != 6)
          {
            goto LABEL_43;
          }
        }

        else if (KeyPath != 4)
        {
LABEL_31:

          goto LABEL_40;
        }
      }

      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v43 & 1) == 0)
      {
        if (KeyPath == 3)
        {
          goto LABEL_31;
        }

        v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v44 & 1) == 0)
        {
LABEL_43:
          sub_1001BB4B8(v16, v81);
          v45 = v83;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v105 = v45;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            KeyPath = v105;
            sub_1001F5438(0, v45[2] + 1, 1);
            v45 = *v105;
          }

          v48 = v45[2];
          v47 = v45[3];
          v49 = v45;
          if (v48 >= v47 >> 1)
          {
            KeyPath = v105;
            sub_1001F5438((v47 > 1), v48 + 1, 1);
            v49 = *v105;
          }

          v49[2] = v48 + 1;
          v83 = v49;
          sub_1001BB4B8(v81, &a1[v49 + v48 * v40]);
          goto LABEL_41;
        }
      }

LABEL_40:
      sub_1001BB7C4(v16);
LABEL_41:
      if (v86 == ++v36)
      {
        goto LABEL_57;
      }
    }

    if (v41 != 2 && v41 != 3)
    {
      goto LABEL_40;
    }

LABEL_27:
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v42 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_28;
  }

  v83 = _swiftEmptyArrayStorage;
LABEL_57:

  v66 = v83[2];

  v36 = v80;
  if (v66)
  {
    v67 = static HorizontalAlignment.center.getter();
    v104 = 1;
    v68 = v88;
    sub_1001D9A10(v105);
    v100 = v67;
    LOBYTE(v101) = v104;
    *(&v101 + 1) = *v105;
    v102 = *&v105[8];
    v103[0] = v105[24];
    *&v103[8] = v106;
    *&v103[24] = v107;
    v69 = swift_allocObject();
    v70 = v68[1];
    v69[1] = *v68;
    v69[2] = v70;
    v71 = v68[3];
    v69[3] = v68[2];
    v69[4] = v71;
    sub_1001DBB88(v68, v105);
    sub_1001A551C(&qword_100376BE8, &qword_1002F1C28);
    sub_1001AD0C8(&qword_100376BF0, &qword_100376BE8, &qword_1002F1C28, &protocol conformance descriptor for VStack<A>);
    v72 = v82;
    View.refreshable(action:)();

    v107 = *v103;
    v108 = *&v103[16];
    *&v105[16] = v101;
    v106 = v102;
    *v105 = v100;
    sub_1001AC99C(v105, &qword_100376BE8, &qword_1002F1C28);
    v73 = v84;
    v74 = v85;
    (*(v84 + 32))(v85, v72, v36);
    (*(v73 + 56))(v74, 0, 1, v36);
  }

  else
  {
LABEL_59:
    v74 = v85;
    (*(v84 + 56))(v85, 1, 1, v36);
  }

  sub_1001AC934(v74, v89, &qword_100376BE0, &qword_1002F1C20);
  swift_storeEnumTagMultiPayload();
  sub_1001AD0C8(&qword_100376BC8, &qword_100376BD0, &qword_1002F1C18, &protocol conformance descriptor for ZStack<A>);
  sub_1001DCFDC();
  v75 = v93;
  _ConditionalContent<>.init(storage:)();
  sub_1001AC934(v75, v96, &qword_100376BC0, &qword_1002F1C10);
  swift_storeEnumTagMultiPayload();
  sub_1001DCF24();
  v76 = sub_1001AD0C8(&qword_100376C00, &qword_100376BF8, &qword_1002F1C30, &protocol conformance descriptor for List<A, B>);
  *v105 = v97;
  *&v105[8] = v76;
  swift_getOpaqueTypeConformance2();
  v77 = v99;
  _ConditionalContent<>.init(storage:)();
  sub_1001AC99C(v75, &qword_100376BC0, &qword_1002F1C10);
  sub_1001AC99C(v74, &qword_100376BE0, &qword_1002F1C20);
  v78 = sub_1001A551C(&qword_100376BB0, &qword_1002F1C08);
  return (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
}

uint64_t sub_1001D8DB4@<X0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v5 = type metadata accessor for CircularProgressViewStyle();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001A551C(&qword_1003755A0, &qword_1002EF750);
  v40 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v39 - v9;
  v47 = sub_1001A551C(&qword_100376C78, &qword_1002F1D00);
  __chkstk_darwin(v47);
  v12 = &v39 - v11;
  v44 = sub_1001A551C(&qword_100376C80, &qword_1002F1D08);
  __chkstk_darwin(v44);
  v46 = &v39 - v13;
  v43 = sub_1001A551C(&qword_100376C88, &qword_1002F1D10);
  v14 = *(v43 - 8);
  __chkstk_darwin(v43);
  v16 = &v39 - v15;
  v45 = sub_1001A551C(&qword_100376C90, &qword_1002F1D18);
  v17 = *(v45 - 8);
  __chkstk_darwin(v45);
  v20 = &v39 - v19;
  if (*(a1 + 16))
  {
    __chkstk_darwin(v18);
    *(&v39 - 2) = a1;
    *(&v39 - 1) = a2;
    sub_1001A551C(&qword_100376C98, &qword_1002F1D20);
    sub_1001DD2C0();
    List<>.init(content:)();
    v21 = swift_allocObject();
    v22 = a2[1];
    *(v21 + 16) = *a2;
    *(v21 + 32) = v22;
    v23 = a2[3];
    *(v21 + 48) = a2[2];
    *(v21 + 64) = v23;
    sub_1001DBB88(a2, &v49);
    v24 = sub_1001AD0C8(&qword_100376CE0, &qword_100376C88, &qword_1002F1D10, &protocol conformance descriptor for List<A, B>);
    v25 = v43;
    View.refreshable(action:)();

    (*(v14 + 8))(v16, v25);
    v26 = v45;
    (*(v17 + 16))(v46, v20, v45);
    swift_storeEnumTagMultiPayload();
    v49 = v25;
    v50 = v24;
    swift_getOpaqueTypeConformance2();
    sub_1001DD6E8();
    _ConditionalContent<>.init(storage:)();
    return (*(v17 + 8))(v20, v26);
  }

  else
  {
    ProgressView<>.init<>()();
    CircularProgressViewStyle.init()();
    sub_1001AD0C8(&qword_100375598, &qword_1003755A0, &qword_1002EF750, &protocol conformance descriptor for ProgressView<A, B>);
    sub_1001DD8A8(&qword_100376CF0, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
    v28 = v42;
    View.progressViewStyle<A>(_:)();
    (*(v41 + 8))(v7, v28);
    (*(v40 + 8))(v10, v8);
    static UnitPoint.center.getter();
    v29 = v46;
    v30 = &v12[*(v47 + 36)];
    __asm { FMOV            V2.2D, #2.0 }

    *v30 = _Q2;
    *(v30 + 2) = v36;
    *(v30 + 3) = v37;
    sub_1001AC934(v12, v29, &qword_100376C78, &qword_1002F1D00);
    swift_storeEnumTagMultiPayload();
    v38 = sub_1001AD0C8(&qword_100376CE0, &qword_100376C88, &qword_1002F1D10, &protocol conformance descriptor for List<A, B>);
    v49 = v43;
    v50 = v38;
    swift_getOpaqueTypeConformance2();
    sub_1001DD6E8();
    _ConditionalContent<>.init(storage:)();
    return sub_1001AC99C(v12, &qword_100376C78, &qword_1002F1D00);
  }
}

uint64_t sub_1001D9414(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 16);
  v10 = 0;
  v11 = v4;
  swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = a2[1];
  *(v5 + 24) = *a2;
  *(v5 + 40) = v6;
  v7 = a2[3];
  *(v5 + 56) = a2[2];
  *(v5 + 72) = v7;

  sub_1001DBB88(a2, v9);
  sub_1001A551C(&qword_100376B30, &qword_1002F1E50);
  sub_1001A551C(&qword_100376CB0, &qword_1002F1D28);
  sub_1001DBBC0();
  sub_1001DD370(&qword_100376CA8, &qword_100376CB0, &qword_1002F1D28, sub_1001DD400);
  return ForEach<>.init(_:id:content:)();
}

unint64_t *sub_1001D9564(unint64_t *result, uint64_t a2)
{
  v2 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 < *(a2 + 16))
  {
    __chkstk_darwin(*(a2 + 16 * v2 + 40));

    sub_1001A551C(&qword_100376CC0, &qword_1002F1D30);
    sub_1001DD400();
    sub_1001A56A0();
    return Section<>.init<A>(_:content:)();
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D9654@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = a3;
  if (*(a1 + 16) <= a2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = a1 + 16 * a2;
  v5 = *(v7 + 32);
  v4 = *(v7 + 40);
  type metadata accessor for FTMMetricDetailsClass(0);
  v6 = swift_allocObject();

  sub_1001A551C(&qword_100376B70, &qword_1002F1BA8);
  Published.init(initialValue:)();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  if (qword_100375020 != -1)
  {
LABEL_7:
    swift_once();
  }

  v8 = qword_100382508;
  v9 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricDetailsClassObject;
  swift_beginAccess();

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *&v8[v9];
  *&v8[v9] = 0x8000000000000000;
  sub_1001F8DE8(v6, v5, v4, isUniquelyReferenced_nonNull_native);

  *&v8[v9] = v16;
  swift_endAccess();

  sub_1001DD8A8(&qword_100376B78, type metadata accessor for FTMMetricDetailsClass, &unk_1002F2C30);

  v12 = EnvironmentObject.init()();
  v14 = v13;
  result = static ObservableObject.environmentStore.getter();
  *v3 = v12;
  v3[1] = v14;
  v3[2] = v5;
  v3[3] = v4;
  v3[4] = result;
  v3[5] = v6;
  return result;
}

uint64_t sub_1001D988C(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001D9924, v3, v2);
}

uint64_t sub_1001D9924()
{

  type metadata accessor for AllMetricsViewModel();
  sub_1001DD8A8(&qword_1003769E8, type metadata accessor for AllMetricsViewModel, &unk_1002F36D8);
  v1 = *(StateObject.wrappedValue.getter() + 16);

  sub_10025CF2C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D9A10@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for AllMetricsViewModel();
  sub_1001DD8A8(&qword_1003769E8, type metadata accessor for AllMetricsViewModel, &unk_1002F36D8);
  v3 = StateObject.wrappedValue.getter();
  State.init(wrappedValue:)();
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  type metadata accessor for FTMBandInfoDataChanged(0);
  sub_1001DD8A8(&qword_100376CF8, type metadata accessor for FTMBandInfoDataChanged, &unk_1002F4FD8);

  result = ObservedObject.init(wrappedValue:)();
  *a2 = 0x666E4920646E6142;
  *(a2 + 8) = 0xEA0000000000206FLL;
  *(a2 + 16) = v3;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = result;
  *(a2 + 48) = v5;
  return result;
}

uint64_t sub_1001D9BA0(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001D9C38, v3, v2);
}

uint64_t sub_1001D9C38()
{

  type metadata accessor for AllMetricsViewModel();
  sub_1001DD8A8(&qword_1003769E8, type metadata accessor for AllMetricsViewModel, &unk_1002F36D8);
  v1 = *(StateObject.wrappedValue.getter() + 16);

  sub_10025D620(0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001D9D28()
{
  v0 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v0 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v1);
  v2._countAndFlagsBits = 0x61746144205443;
  v2._object = 0xE700000000000000;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v2);
  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v4);
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
  LocalizedStringKey.init(stringInterpolation:)();
  sub_1001DD134();
  return Section<>.init(_:content:)();
}

uint64_t sub_1001D9E50@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  type metadata accessor for FTMPrimaryStateChanged(0);
  sub_1001DD8A8(&qword_100376D00, type metadata accessor for FTMPrimaryStateChanged, &unk_1002F1374);

  result = ObservedObject.init(wrappedValue:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1001D9F1C(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001DD93C, v3, v2);
}

uint64_t sub_1001D9FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v3 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1001A551C(&qword_100376A60, &qword_1002F1AC8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - v6;
  v8 = sub_1001A551C(&qword_100376A58, &qword_1002F1AC0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - v10;
  static ToolbarItemPlacement.principal.getter();
  v14[4] = a1;
  sub_1001A551C(&qword_100376A88, &qword_1002F1AE8);
  sub_1001AD0C8(&qword_100376A90, &qword_100376A88, &qword_1002F1AE8, &protocol conformance descriptor for HStack<A>);
  ToolbarItem<>.init(placement:content:)();
  v12 = sub_1001AD0C8(&qword_100376A68, &qword_100376A60, &qword_1002F1AC8, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  (*(v5 + 8))(v7, v4);
  v14[6] = v4;
  v14[7] = v12;
  swift_getOpaqueTypeConformance2();
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1001DA274@<X0>(_OWORD *a1@<X0>, uint64_t a9@<X8>)
{
  *a9 = static VerticalAlignment.center.getter();
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  v11 = sub_1001A551C(&qword_100376A98, &qword_1002F1AF0);
  return sub_1001DA2CC(a1, a9 + *(v11 + 44));
}

uint64_t sub_1001DA2CC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a1;
  v86 = a2;
  v2 = type metadata accessor for InlinePickerStyle();
  v78 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001A551C(&qword_100376AA0, &qword_1002F1AF8);
  v74 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v71 - v6;
  v8 = sub_1001A551C(&qword_100376AA8, &qword_1002F1B00);
  v76 = *(v8 - 8);
  v77 = v8;
  __chkstk_darwin(v8);
  v10 = &v71 - v9;
  v72 = sub_1001A551C(&qword_100376AB0, &qword_1002F1B08);
  __chkstk_darwin(v72);
  v75 = &v71 - v11;
  v83 = sub_1001A551C(&qword_100376AB8, &qword_1002F1B10);
  __chkstk_darwin(v83);
  v73 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v79 = &v71 - v14;
  v84 = sub_1001A551C(&qword_100376AC0, &qword_1002F1B18);
  __chkstk_darwin(v84);
  v16 = &v71 - v15;
  v17 = sub_1001A551C(&qword_100376AC8, &qword_1002F1B20);
  __chkstk_darwin(v17);
  v19 = (&v71 - v18);
  v85 = sub_1001A551C(&qword_100376AD0, &qword_1002F1B28);
  __chkstk_darwin(v85);
  v82 = &v71 - v20;
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v21 = qword_100382500;
  swift_beginAccess();
  v22 = *(*(v21 + 88) + 16);
  if (v22 == 1)
  {
    LocalizedStringKey.init(stringLiteral:)();
    v41 = Text.init(_:tableName:bundle:comment:)();
    v43 = v42;
    v45 = v44;
    static Font.headline.getter();
    v46 = Text.font(_:)();
    v48 = v47;
    v50 = v49;
    v83 = v51;

    sub_1001ACFEC(v41, v43, v45 & 1);

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    LOBYTE(v87[0]) = v50 & 1;
    *v16 = v46;
    *(v16 + 1) = v48;
    v16[16] = v50 & 1;
    *(v16 + 3) = v83;
    v52 = v93;
    *(v16 + 6) = v92;
    *(v16 + 7) = v52;
    *(v16 + 8) = v94;
    v53 = v89;
    *(v16 + 2) = v88;
    *(v16 + 3) = v53;
    v54 = v91;
    *(v16 + 4) = v90;
    *(v16 + 5) = v54;
    swift_storeEnumTagMultiPayload();
    sub_1001A551C(&qword_100376AD8, &qword_1002F1B30);
    sub_1001DB7C8();
    sub_1001DB854();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v80 = v17;
    if (v22)
    {
      v56 = v81;
      v98 = *(v81 + 24);
      v87[0] = *(v81 + 24);
      v71 = sub_1001A551C(&qword_100376B18, &qword_1002F1B40);
      State.projectedValue.getter();
      sub_1001A551C(&qword_100376B20, qword_1002F1B48);
      sub_1001DBAAC();
      Picker.init(selection:label:content:)();
      InlinePickerStyle.init()();
      sub_1001AD0C8(&qword_100376B00, &qword_100376AA0, &qword_1002F1AF8, &protocol conformance descriptor for Picker<A, B, C>);
      View.pickerStyle<A>(_:)();
      (*(v78 + 8))(v4, v2);
      (*(v74 + 8))(v7, v5);
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v57 = v75;
      (*(v76 + 32))(v75, v10, v77);
      v58 = &v57[*(v72 + 36)];
      v59 = v93;
      *(v58 + 4) = v92;
      *(v58 + 5) = v59;
      *(v58 + 6) = v94;
      v60 = v89;
      *v58 = v88;
      *(v58 + 1) = v60;
      v61 = v91;
      *(v58 + 2) = v90;
      *(v58 + 3) = v61;
      v87[0] = v98;
      State.wrappedValue.getter();
      v62 = v97;
      v63 = swift_allocObject();
      v64 = v56[1];
      v63[1] = *v56;
      v63[2] = v64;
      v65 = v56[3];
      v63[3] = v56[2];
      v63[4] = v65;
      v66 = v57;
      v67 = v73;
      sub_1001B603C(v66, v73, &qword_100376AB0, &qword_1002F1B08);
      v68 = (v67 + *(v83 + 36));
      *v68 = v62;
      v68[1] = sub_1001DBB80;
      v68[2] = v63;
      v69 = v79;
      sub_1001B603C(v67, v79, &qword_100376AB8, &qword_1002F1B10);
      sub_1001AC934(v69, v19, &qword_100376AB8, &qword_1002F1B10);
      swift_storeEnumTagMultiPayload();
      sub_1001DBB88(v56, v87);
      sub_1001A551C(&qword_100376AD8, &qword_1002F1B30);
      sub_1001DB854();
      sub_1001DB8D8();
      v70 = v82;
      _ConditionalContent<>.init(storage:)();
      sub_1001AC934(v70, v16, &qword_100376AD0, &qword_1002F1B28);
      swift_storeEnumTagMultiPayload();
      sub_1001DB7C8();
      _ConditionalContent<>.init(storage:)();
      sub_1001AC99C(v70, &qword_100376AD0, &qword_1002F1B28);
      v38 = v69;
      v39 = &qword_100376AB8;
      v40 = &qword_1002F1B10;
    }

    else
    {
      LocalizedStringKey.init(stringLiteral:)();
      v23 = Text.init(_:tableName:bundle:comment:)();
      v25 = v24;
      v27 = v26;
      static Font.headline.getter();
      v79 = Text.font(_:)();
      v29 = v28;
      v31 = v30;
      v81 = v32;

      sub_1001ACFEC(v23, v25, v27 & 1);

      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      LOBYTE(v97) = v31 & 1;
      *&v88 = v79;
      *(&v88 + 1) = v29;
      LOBYTE(v89) = v31 & 1;
      *(&v89 + 1) = v98;
      DWORD1(v89) = *(&v98 + 3);
      *(&v89 + 1) = v81;
      v33 = v95;
      v19[6] = v94;
      v19[7] = v33;
      v19[8] = v96;
      v34 = v91;
      v19[2] = v90;
      v19[3] = v34;
      v35 = v93;
      v19[4] = v92;
      v19[5] = v35;
      v36 = v89;
      *v19 = v88;
      v19[1] = v36;
      swift_storeEnumTagMultiPayload();
      sub_1001AC934(&v88, v87, &qword_100376AD8, &qword_1002F1B30);
      sub_1001A551C(&qword_100376AD8, &qword_1002F1B30);
      sub_1001DB854();
      sub_1001DB8D8();
      v37 = v82;
      _ConditionalContent<>.init(storage:)();
      sub_1001AC934(v37, v16, &qword_100376AD0, &qword_1002F1B28);
      swift_storeEnumTagMultiPayload();
      sub_1001DB7C8();
      _ConditionalContent<>.init(storage:)();
      sub_1001AC99C(&v88, &qword_100376AD8, &qword_1002F1B30);
      v38 = v37;
      v39 = &qword_100376AD0;
      v40 = &qword_1002F1B28;
    }

    return sub_1001AC99C(v38, v39, v40);
  }
}

uint64_t sub_1001DADEC()
{
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  swift_getKeyPath();
  sub_1001A551C(&qword_100376B30, &qword_1002F1E50);
  sub_1001A551C(&qword_100376B38, &qword_1002F1B80);
  sub_1001DBBC0();
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1001DAF48@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v4 = qword_100382500;
  result = swift_beginAccess();
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*(v4 + 88) + 16))
  {
    sub_1001A56A0();

    result = Text.init<A>(_:)();
    *a2 = result;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7 & 1;
    *(a2 + 24) = v8;
    *(a2 + 32) = v3;
    *(a2 + 40) = 1;
    return result;
  }

  __break(1u);
  return result;
}

double sub_1001DB030(uint64_t a1, uint64_t *a2)
{
  v25 = type metadata accessor for Date();
  v3 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  type metadata accessor for AllMetricsViewModel();
  sub_1001DD8A8(&qword_1003769E8, type metadata accessor for AllMetricsViewModel, &unk_1002F36D8);
  v22 = v7;
  v23 = v6;
  v21[1] = v8;
  v24 = StateObject.wrappedValue.getter();
  if (qword_100374F98 != -1)
  {
    swift_once();
  }

  v9 = qword_100382480;
  v10 = static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002EED40;
  v27 = *(a2 + 3);
  v28 = v27;
  sub_1001A551C(&qword_100376B18, &qword_1002F1B40);
  State.wrappedValue.getter();
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_1001A76E8();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  os_log(_:dso:log:type:_:)("carrier segment changed ~~ %{public}s", 37, 2, &_mh_execute_header, v9, v10, v11);

  v15 = *(StateObject.wrappedValue.getter() + 16);

  Date.init()();
  v16 = sub_1001D530C();
  v18 = v17;
  (*(v3 + 8))(v5, v25);
  v19 = &v15[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_recordedTime];
  *v19 = v16;
  v19[1] = v18;

  v27 = v28;
  State.wrappedValue.getter();
  sub_100231FF8(v26);

  return result;
}

uint64_t sub_1001DB314@<X0>(uint64_t *a2@<X8>)
{
  v4 = v2[1];
  v9[0] = *v2;
  v9[1] = v4;
  v5 = v2[3];
  v9[2] = v2[2];
  v9[3] = v5;
  *a2 = static Alignment.center.getter();
  a2[1] = v6;
  v7 = sub_1001A551C(&qword_1003769B8, &qword_1002F1A58);
  return sub_1001D5A48(v9, a2 + *(v7 + 44));
}

unint64_t sub_1001DB384()
{
  result = qword_100376A10;
  if (!qword_100376A10)
  {
    sub_1001A55C8(&qword_1003769D0, &qword_1002F1A70);
    sub_1001A55C8(&qword_1003769D8, &qword_1002F1A78);
    type metadata accessor for StackNavigationViewStyle();
    sub_1001AD0C8(&qword_100376A18, &qword_1003769D8, &qword_1002F1A78, &protocol conformance descriptor for NavigationView<A>);
    sub_1001DD8A8(&qword_100375280, &type metadata accessor for StackNavigationViewStyle, &protocol conformance descriptor for StackNavigationViewStyle);
    swift_getOpaqueTypeConformance2();
    sub_1001AD0C8(&qword_100376A00, &qword_1003769F8, &qword_1002F1A90, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376A10);
  }

  return result;
}

unint64_t sub_1001DB4FC()
{
  result = qword_100376A20;
  if (!qword_100376A20)
  {
    sub_1001A55C8(&qword_100376A08, &qword_1002F1A98);
    sub_1001AD0C8(&qword_100376A00, &qword_1003769F8, &qword_1002F1A90, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376A20);
  }

  return result;
}

unint64_t sub_1001DB5BC()
{
  result = qword_100376A30;
  if (!qword_100376A30)
  {
    sub_1001A55C8(&qword_100376A28, &qword_1002F1AA0);
    sub_1001A55C8(&qword_100376A38, &qword_1002F1AA8);
    sub_1001A55C8(&qword_100376A40, &qword_1002F1AB0);
    sub_1001A55C8(&qword_100376A48, &qword_1002F1AB8);
    sub_1001AD0C8(&qword_100376A50, &qword_100376A48, &qword_1002F1AB8, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_1001A55C8(&qword_100376A58, &qword_1002F1AC0);
    sub_1001A55C8(&qword_100376A60, &qword_1002F1AC8);
    sub_1001AD0C8(&qword_100376A68, &qword_100376A60, &qword_1002F1AC8, &protocol conformance descriptor for ToolbarItem<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376A30);
  }

  return result;
}

unint64_t sub_1001DB7C8()
{
  result = qword_100376AE0;
  if (!qword_100376AE0)
  {
    sub_1001A55C8(&qword_100376AD0, &qword_1002F1B28);
    sub_1001DB854();
    sub_1001DB8D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376AE0);
  }

  return result;
}

unint64_t sub_1001DB854()
{
  result = qword_100376AE8;
  if (!qword_100376AE8)
  {
    sub_1001A55C8(&qword_100376AD8, &qword_1002F1B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376AE8);
  }

  return result;
}

unint64_t sub_1001DB8D8()
{
  result = qword_100376AF0;
  if (!qword_100376AF0)
  {
    sub_1001A55C8(&qword_100376AB8, &qword_1002F1B10);
    sub_1001DB990();
    sub_1001AD0C8(&qword_100376B08, &qword_100376B10, &qword_1002F1B38, &protocol conformance descriptor for _ValueActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376AF0);
  }

  return result;
}

unint64_t sub_1001DB990()
{
  result = qword_100376AF8;
  if (!qword_100376AF8)
  {
    sub_1001A55C8(&qword_100376AB0, &qword_1002F1B08);
    sub_1001A55C8(&qword_100376AA0, &qword_1002F1AF8);
    type metadata accessor for InlinePickerStyle();
    sub_1001AD0C8(&qword_100376B00, &qword_100376AA0, &qword_1002F1AF8, &protocol conformance descriptor for Picker<A, B, C>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376AF8);
  }

  return result;
}

unint64_t sub_1001DBAAC()
{
  result = qword_100376B28;
  if (!qword_100376B28)
  {
    sub_1001A55C8(&qword_100376B20, qword_1002F1B48);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376B28);
  }

  return result;
}

unint64_t sub_1001DBBC0()
{
  result = qword_100376B40;
  if (!qword_100376B40)
  {
    sub_1001A55C8(&qword_100376B30, &qword_1002F1E50);
    sub_1001DBC4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376B40);
  }

  return result;
}

unint64_t sub_1001DBC4C()
{
  result = qword_100376B48;
  if (!qword_100376B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376B48);
  }

  return result;
}

Swift::Int sub_1001DBCA0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001FC840(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1001DBD0C(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1001DBD0C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1001DBED4(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1001DBE04(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1001DBE04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001DBED4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1001FA564(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1001DC4B0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1001FA578(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1001FA578((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1001DC4B0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001FA564(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1001FA4D8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1001DC4B0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void sub_1001DC6D8()
{
  if (qword_100375018 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v0 = qword_100382500;
    if (*(qword_100382500 + 160))
    {
      return;
    }

    v1 = *(qword_100382500 + 156);
    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v2 = *(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_currentSelectedSubsId);
    if (v2 != v1)
    {
      swift_beginAccess();
      if (*(*(v0 + 88) + 16) >= 2uLL)
      {
        if (v2 < 0xFFFFFFFF80000000)
        {
          __break(1u);
LABEL_80:
          __break(1u);

          __break(1u);
          return;
        }

        if (v2 > 0x7FFFFFFF)
        {
          goto LABEL_80;
        }

        *(v0 + 156) = v2;
        *(v0 + 160) = 0;
        sub_10020A870();
      }
    }

    if (*(v0 + 160))
    {
      return;
    }

    v3 = *(v0 + 156);
    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v4 = qword_100382508;
    v5 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    swift_beginAccess();
    v6 = *(v4 + v5);
    v45 = _swiftEmptyArrayStorage;
    v7 = v6 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v7)
    {
      break;
    }

    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    while (v9)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        v12 = v45;
        goto LABEL_30;
      }

LABEL_22:
      if (*(v10 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v3 && (*(v10 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible) & 1) != 0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v9 = v6 & 0xC000000000000001;
      }

      else
      {
      }

      ++v8;
      if (v11 == v7)
      {
        goto LABEL_28;
      }
    }

    if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v6 + 8 * v8 + 32);

      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_27;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_30:

  if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13)
    {
      goto LABEL_33;
    }

LABEL_78:

    return;
  }

  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_78;
  }

LABEL_33:
  v14 = 0;
  v15 = _swiftEmptyArrayStorage;
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_72;
      }
    }

    else
    {
      if (v14 >= *(v12 + 16))
      {
        goto LABEL_73;
      }

      v16 = *(v12 + 8 * v14 + 32);

      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_72;
      }
    }

    v19 = *(v16 + 32);
    v18 = *(v16 + 40);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_100224D30(0, *(v15 + 2) + 1, 1, v15);
    }

    v21 = *(v15 + 2);
    v20 = *(v15 + 3);
    if (v21 >= v20 >> 1)
    {
      v15 = sub_100224D30((v20 > 1), v21 + 1, 1, v15);
    }

    *(v15 + 2) = v21 + 1;
    v22 = &v15[16 * v21];
    *(v22 + 4) = v19;
    *(v22 + 5) = v18;
    ++v14;
  }

  while (v17 != v13);

  v23 = sub_1001C6F70(v15);

  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = sub_100225A48(*(v23 + 16), 0);
    v26 = sub_1001FC14C(&v45, v25 + 4, v24, v23);
    sub_1001DD8F0(v45);
    if (v26 != v24)
    {
      __break(1u);
      goto LABEL_49;
    }
  }

  else
  {
LABEL_49:

    v25 = _swiftEmptyArrayStorage;
  }

  v45 = v25;

  sub_1001DBCA0(&v45);

  v27 = v45;
  v28 = *(v45 + 2);
  if (v28)
  {
    v29 = 0;
    v30 = v45 + 40;
    v31 = _swiftEmptyArrayStorage;
    v44 = v45 + 40;
LABEL_52:
    v32 = &v30[16 * v29];
    v33 = v29;
    while (v33 < *(v27 + 2))
    {
      v34 = *(v32 - 1);
      v35 = *v32;
      v36 = v34 == 5521746 && v35 == 0xE300000000000000;
      if (!v36 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v34 != 1129531725 || v35 != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001F53D8(0, *(v31 + 2) + 1, 1);
          v31 = v45;
        }

        v39 = *(v31 + 2);
        v38 = *(v31 + 3);
        v40 = v39 + 1;
        if (v39 >= v38 >> 1)
        {
          v42 = v39 + 1;
          v43 = v39;
          sub_1001F53D8((v38 > 1), v39 + 1, 1);
          v39 = v43;
          v40 = v42;
          v31 = v45;
        }

        v29 = v33 + 1;
        *(v31 + 2) = v40;
        v41 = &v31[16 * v39];
        *(v41 + 4) = v34;
        *(v41 + 5) = v35;
        v30 = v44;
        if (v28 - 1 != v33)
        {
          goto LABEL_52;
        }

        goto LABEL_69;
      }

      ++v33;
      v32 += 16;
      if (v28 == v33)
      {
        goto LABEL_69;
      }
    }

    goto LABEL_74;
  }

LABEL_69:
}

unint64_t sub_1001DCD18()
{
  result = qword_100376B90;
  if (!qword_100376B90)
  {
    sub_1001A55C8(&qword_100376B88, &qword_1002F1BF8);
    sub_1001DCD9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376B90);
  }

  return result;
}

unint64_t sub_1001DCD9C()
{
  result = qword_100376B98;
  if (!qword_100376B98)
  {
    sub_1001A55C8(&qword_100376BA0, &qword_1002F1C00);
    sub_1001DCE20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376B98);
  }

  return result;
}

unint64_t sub_1001DCE20()
{
  result = qword_100376BA8;
  if (!qword_100376BA8)
  {
    sub_1001A55C8(&qword_100376BB0, &qword_1002F1C08);
    sub_1001DCF24();
    sub_1001A55C8(&qword_100376BF8, &qword_1002F1C30);
    sub_1001AD0C8(&qword_100376C00, &qword_100376BF8, &qword_1002F1C30, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376BA8);
  }

  return result;
}

unint64_t sub_1001DCF24()
{
  result = qword_100376BB8;
  if (!qword_100376BB8)
  {
    sub_1001A55C8(&qword_100376BC0, &qword_1002F1C10);
    sub_1001AD0C8(&qword_100376BC8, &qword_100376BD0, &qword_1002F1C18, &protocol conformance descriptor for ZStack<A>);
    sub_1001DCFDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376BB8);
  }

  return result;
}

unint64_t sub_1001DCFDC()
{
  result = qword_100376BD8;
  if (!qword_100376BD8)
  {
    sub_1001A55C8(&qword_100376BE0, &qword_1002F1C20);
    sub_1001A55C8(&qword_100376BE8, &qword_1002F1C28);
    sub_1001AD0C8(&qword_100376BF0, &qword_100376BE8, &qword_1002F1C28, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376BD8);
  }

  return result;
}

unint64_t sub_1001DD0E0()
{
  result = qword_100376C30;
  if (!qword_100376C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376C30);
  }

  return result;
}

unint64_t sub_1001DD134()
{
  result = qword_100376C68;
  if (!qword_100376C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376C68);
  }

  return result;
}

uint64_t sub_1001DD188()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1001DD950;

  return sub_1001D9F1C(v0 + 16);
}

uint64_t sub_1001DD224()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1001DD950;

  return sub_1001D9BA0(v0 + 16);
}

unint64_t sub_1001DD2C0()
{
  result = qword_100376CA0;
  if (!qword_100376CA0)
  {
    sub_1001A55C8(&qword_100376C98, &qword_1002F1D20);
    sub_1001DD370(&qword_100376CA8, &qword_100376CB0, &qword_1002F1D28, sub_1001DD400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376CA0);
  }

  return result;
}

uint64_t sub_1001DD370(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001A55C8(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001DD400()
{
  result = qword_100376CB8;
  if (!qword_100376CB8)
  {
    sub_1001A55C8(&qword_100376CC0, &qword_1002F1D30);
    sub_1001DD4B8();
    sub_1001AD0C8(&qword_100376CD0, &qword_100376CD8, &qword_1002F1D38, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376CB8);
  }

  return result;
}

unint64_t sub_1001DD4B8()
{
  result = qword_100376CC8;
  if (!qword_100376CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376CC8);
  }

  return result;
}

uint64_t sub_1001DD50C()
{
  sub_1001DBB78(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1001DD560()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1001DD5F4;

  return sub_1001D988C(v0 + 16);
}

uint64_t sub_1001DD5F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1001DD6E8()
{
  result = qword_100376CE8;
  if (!qword_100376CE8)
  {
    sub_1001A55C8(&qword_100376C78, &qword_1002F1D00);
    sub_1001A55C8(&qword_1003755A0, &qword_1002EF750);
    type metadata accessor for CircularProgressViewStyle();
    sub_1001AD0C8(&qword_100375598, &qword_1003755A0, &qword_1002EF750, &protocol conformance descriptor for ProgressView<A, B>);
    sub_1001DD8A8(&qword_100376CF0, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376CE8);
  }

  return result;
}

uint64_t sub_1001DD834()
{

  sub_1001DBB78(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1001DD8A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001DD954(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1001DD99C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001DDA04(uint64_t a1, uint64_t a2)
{
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v2 = qword_100382508;
  v3 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_primaryCell;
  swift_beginAccess();
  v4 = *(v2 + v3);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v5 = sub_1001DE178(v4, v7);

  if (v5 >> 62 && (result = _CocoaArrayWrapper.endIndex.getter(), result < 0))
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v5;
    sub_1001A551C(&qword_100376B30, &qword_1002F1E50);
    sub_1001A551C(&qword_100376D18, &qword_1002F1E58);
    sub_1001DBBC0();
    sub_1001DF8B8();
    return ForEach<>.init(_:id:content:)();
  }

  return result;
}

void sub_1001DDBD4(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a9@<X8>)
{
  v11 = *a1;
  *a9 = static VerticalAlignment.center.getter();
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  v12 = sub_1001A551C(&qword_100376D28, &qword_1002F1E60);
  sub_1001DDC3C(a2, v11, a9 + *(v12 + 44));
}

void sub_1001DDC3C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1001A551C(&qword_100376D30, &qword_1002F1E68);
  __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  v8 = a1 + 8 * a2;
  v73 = v10;
  v74 = v9;
  v71 = v11;
  v72 = a3;
  v70 = &v67 - v12;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v13 = *(v8 + 32);

LABEL_5:
  v14 = *(v13 + 64);
  v15 = *(v13 + 72);

  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v16 = *(v8 + 32);
  }

  v18 = *(v16 + 136);
  v68 = *(v16 + 128);
  v17 = v68;

  *&v92 = v14;
  *(&v92 + 1) = v15;
  sub_1001A56A0();
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  static Color.blue.getter();
  v24 = Text.foregroundColor(_:)();
  v77 = v25;
  v78 = v24;
  v27 = v26;
  v69 = v28;

  sub_1001ACFEC(v19, v21, v23 & 1);

  v76 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v75 = v27 & 1;
  LOBYTE(v88) = 0;
  *&v92 = v17;
  *(&v92 + 1) = v18;
  v67 = v18;

  v37 = Text.init<A>(_:)();
  v39 = v38;
  v41 = v40;
  static Color.gray.getter();
  v42 = Text.foregroundColor(_:)();
  v44 = v43;
  LOBYTE(v18) = v45;
  v47 = v46;

  sub_1001ACFEC(v37, v39, v41 & 1);

  LOBYTE(v37) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v81 = v18 & 1;
  v79 = 0;
  *&v84 = v42;
  *(&v84 + 1) = v44;
  LOBYTE(v85) = v18 & 1;
  *(&v85 + 1) = v88;
  DWORD1(v85) = *(&v88 + 3);
  *(&v85 + 1) = v47;
  LOBYTE(v86) = v37;
  *(&v86 + 1) = *v80;
  DWORD1(v86) = *&v80[3];
  *(&v86 + 1) = v48;
  *&v87[0] = v49;
  *(&v87[0] + 1) = v50;
  *&v87[1] = v51;
  BYTE8(v87[1]) = 0;
  v52 = swift_allocObject();
  v53 = v67;
  *(v52 + 16) = v68;
  *(v52 + 24) = v53;
  v94 = v86;
  *v95 = v87[0];
  *&v95[9] = *(v87 + 9);
  v92 = v84;
  v93 = v85;
  sub_1001A551C(&qword_1003755C0, &qword_1002F1E70);
  sub_1001DF954();
  v54 = v70;
  View.onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)();

  sub_1001DF9D8(&v84);
  v56 = v73;
  v55 = v74;
  v57 = *(v73 + 16);
  v58 = v71;
  v57(v71, v54, v74);
  *&v88 = v78;
  *(&v88 + 1) = v77;
  LOBYTE(v89) = v75;
  *(&v89 + 1) = *v83;
  DWORD1(v89) = *&v83[3];
  v59 = v69;
  *(&v89 + 1) = v69;
  LOBYTE(v90) = v76;
  *(&v90 + 1) = *v82;
  DWORD1(v90) = *&v82[3];
  *(&v90 + 1) = v30;
  *&v91[0] = v32;
  *(&v91[0] + 1) = v34;
  *&v91[1] = v36;
  BYTE8(v91[1]) = 0;
  v60 = v88;
  v61 = v89;
  v62 = v90;
  v63 = v72;
  *(v72 + 57) = *(v91 + 9);
  v64 = v91[0];
  *(v63 + 32) = v62;
  *(v63 + 48) = v64;
  *v63 = v60;
  *(v63 + 16) = v61;
  *(v63 + 80) = 0;
  *(v63 + 88) = 1;
  v65 = sub_1001A551C(&qword_100376D40, &qword_1002F1E78);
  v57((v63 + *(v65 + 64)), v58, v55);
  sub_1001DFA40(&v88, &v92);
  v66 = *(v56 + 8);
  v66(v54, v55);
  v66(v58, v55);
  *&v92 = v78;
  *(&v92 + 1) = v77;
  LOBYTE(v93) = v75;
  *(&v93 + 1) = *v83;
  DWORD1(v93) = *&v83[3];
  *(&v93 + 1) = v59;
  LOBYTE(v94) = v76;
  *(&v94 + 1) = *v82;
  DWORD1(v94) = *&v82[3];
  *(&v94 + 1) = v30;
  *v95 = v32;
  *&v95[8] = v34;
  *&v95[16] = v36;
  v95[24] = 0;
  sub_1001DF9D8(&v92);
}

void *sub_1001DE178(unint64_t *a1, char a2)
{
  v4 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  __chkstk_darwin(v4 - 8);
  v157 = &v149 - v5;
  sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002EED50;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x80000001002BB430;
  *(v6 + 88) = &type metadata for Bool;
  *(v6 + 64) = a2;
  print(_:separator:terminator:)();

  v162 = _swiftEmptyArrayStorage;
  if (qword_100375018 != -1)
  {
    goto LABEL_87;
  }

  while (1)
  {
    if (*(qword_100382500 + 160))
    {
      return _swiftEmptyArrayStorage;
    }

    v7 = a1[2];
    if (!v7)
    {
      break;
    }

    v8 = 0;
    v9 = *(qword_100382500 + 156);
    v10 = a1 + 4;
    v11 = _swiftEmptyArrayStorage;
LABEL_5:
    v12 = v11;
    a1 = &v10[37 * v8];
    v13 = v8;
    while (v13 < v7)
    {
      memcpy(v160, a1, 0x121uLL);
      v8 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_83;
      }

      if (LOBYTE(v160[3]) == 1)
      {
        if (!v9)
        {
          goto LABEL_12;
        }
      }

      else if (v160[2] == v9)
      {
LABEL_12:
        sub_1001DFAB0(v160, &v158);
        v11 = v12;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v161 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001F5544(0, v12[2] + 1, 1);
          v11 = v161;
        }

        v16 = v11[2];
        v15 = v11[3];
        if (v16 >= v15 >> 1)
        {
          sub_1001F5544((v15 > 1), v16 + 1, 1);
          v11 = v161;
        }

        v11[2] = v16 + 1;
        memcpy(&v11[37 * v16 + 4], v160, 0x121uLL);
        if (v8 == v7)
        {
LABEL_19:
          v17 = v11[2];
          if (v17)
          {
            goto LABEL_20;
          }

LABEL_79:

          return _swiftEmptyArrayStorage;
        }

        goto LABEL_5;
      }

      ++v13;
      a1 += 37;
      if (v8 == v7)
      {
        v11 = v12;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    swift_once();
  }

  v11 = _swiftEmptyArrayStorage;
  v17 = _swiftEmptyArrayStorage[2];
  if (!v17)
  {
    goto LABEL_79;
  }

LABEL_20:
  v151 = v17 - 1;
  v18 = 32;
  v149 = v11;
  while (1)
  {
    v150 = v18;
    memcpy(v160, v11 + v18, 0x121uLL);
    if (LOBYTE(v160[18]) == 1)
    {
      sub_1001DFAB0(v160, &v158);
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_1001DFAB0(v160, &v158);

      if ((v19 & 1) == 0)
      {
        v158 = 0;
        v159 = 0xE000000000000000;
        goto LABEL_26;
      }
    }

    v158 = 110;
    v159 = 0xE100000000000000;
LABEL_26:
    v20 = v160[4];
    if (LOBYTE(v160[5]))
    {
      v20 = 0;
    }

    v161 = v20;
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v22 = v159;
    v152 = v158;
    v23 = type metadata accessor for Date();
    v24 = *(v23 - 8);
    v25 = *(v24 + 56);
    v26 = v24 + 56;
    v27 = v157;
    v25(v157, 1, 1, v23);
    v153 = type metadata accessor for FTMAllMetricsModel(0);
    v28 = swift_allocObject();
    *(v28 + 2) = 0;
    *(v28 + 3) = 0xE000000000000000;
    *(v28 + 4) = 0;
    *(v28 + 5) = 0xE000000000000000;
    *(v28 + 6) = 0;
    *(v28 + 7) = 0xE000000000000000;
    *(v28 + 8) = 0;
    *(v28 + 9) = 0xE000000000000000;
    *(v28 + 10) = 0;
    *(v28 + 11) = 0xE000000000000000;
    *(v28 + 12) = 0;
    *(v28 + 13) = 0xE000000000000000;
    *(v28 + 14) = 0;
    *(v28 + 15) = 0xE000000000000000;
    *(v28 + 16) = 0;
    *(v28 + 17) = 0xE000000000000000;
    v29 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
    v155 = v25;
    v156 = v23;
    v154 = v26;
    v25(&v28[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v23);
    v30 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
    *&v28[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
    v31 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
    v28[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
    *(v28 + 2) = 0;
    *(v28 + 3) = 0xE000000000000000;
    *(v28 + 4) = 0;
    *(v28 + 5) = 0xE000000000000000;
    *(v28 + 8) = 1684955458;
    *(v28 + 9) = 0xE400000000000000;
    *(v28 + 6) = sub_100223914();
    *(v28 + 7) = v32;

    *(v28 + 16) = v152;
    *(v28 + 17) = v22;

    *(v28 + 12) = sub_100223AD4();
    *(v28 + 13) = v33;

    *(v28 + 10) = 0;
    *(v28 + 11) = 0xE000000000000000;

    swift_beginAccess();
    sub_1001CB2A0(v27, &v28[v29]);
    swift_endAccess();
    *&v28[v30] = 0;
    v28[v31] = 1;
    a1 = &v162;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if ((v160[7] & 1) == 0)
    {
      if (*&v160[6] == 1.4)
      {
        v158 = 0;
        v159 = 0xE000000000000000;
        Double.write<A>(to:)();
      }

      else
      {
        if ((~v160[6] & 0x7FF0000000000000) == 0)
        {
          goto LABEL_84;
        }

        if (*&v160[6] <= -9.22337204e18)
        {
          goto LABEL_85;
        }

        if (*&v160[6] >= 9.22337204e18)
        {
          goto LABEL_86;
        }

        v161 = *&v160[6];
        v158 = dispatch thunk of CustomStringConvertible.description.getter();
        v159 = v34;
      }

      v35._countAndFlagsBits = 2051558688;
      v35._object = 0xE400000000000000;
      String.append(_:)(v35);
      v36 = v158;
      v37 = v159;
      v38 = v156;
      v39 = v157;
      v40 = v155;
      v155(v157, 1, 1, v156);
      v41 = swift_allocObject();
      *(v41 + 2) = 0;
      *(v41 + 3) = 0xE000000000000000;
      *(v41 + 4) = 0;
      *(v41 + 5) = 0xE000000000000000;
      *(v41 + 6) = 0;
      *(v41 + 7) = 0xE000000000000000;
      *(v41 + 8) = 0;
      *(v41 + 9) = 0xE000000000000000;
      *(v41 + 10) = 0;
      *(v41 + 11) = 0xE000000000000000;
      *(v41 + 12) = 0;
      *(v41 + 13) = 0xE000000000000000;
      *(v41 + 14) = 0;
      *(v41 + 15) = 0xE000000000000000;
      *(v41 + 16) = 0;
      *(v41 + 17) = 0xE000000000000000;
      v42 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
      v40(&v41[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v38);
      v43 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
      *&v41[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
      v44 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
      v41[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
      *(v41 + 2) = 0;
      *(v41 + 3) = 0xE000000000000000;
      *(v41 + 4) = 0;
      *(v41 + 5) = 0xE000000000000000;
      *(v41 + 8) = 0x74646977646E6142;
      *(v41 + 9) = 0xE900000000000068;
      *(v41 + 6) = sub_100223914();
      *(v41 + 7) = v45;

      *(v41 + 16) = v36;
      *(v41 + 17) = v37;

      *(v41 + 12) = sub_100223AD4();
      *(v41 + 13) = v46;

      *(v41 + 10) = 0;
      *(v41 + 11) = 0xE000000000000000;

      swift_beginAccess();
      sub_1001CB2A0(v39, &v41[v42]);
      swift_endAccess();
      *&v41[v43] = 0;
      v41[v44] = 1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    if (v160[9])
    {
      if (v160[11])
      {
        goto LABEL_42;
      }
    }

    else
    {
      v158 = v160[8];
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      v61 = v156;
      v62 = v157;
      v63 = v155;
      v155(v157, 1, 1, v156);
      v64 = swift_allocObject();
      *(v64 + 2) = 0;
      *(v64 + 3) = 0xE000000000000000;
      *(v64 + 4) = 0;
      *(v64 + 5) = 0xE000000000000000;
      *(v64 + 6) = 0;
      *(v64 + 7) = 0xE000000000000000;
      *(v64 + 8) = 0;
      *(v64 + 9) = 0xE000000000000000;
      *(v64 + 10) = 0;
      *(v64 + 11) = 0xE000000000000000;
      *(v64 + 12) = 0;
      *(v64 + 13) = 0xE000000000000000;
      *(v64 + 14) = 0;
      *(v64 + 15) = 0xE000000000000000;
      *(v64 + 16) = 0;
      *(v64 + 17) = 0xE000000000000000;
      v65 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
      v63(&v64[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v61);
      v66 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
      *&v64[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
      v67 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
      v64[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
      *(v64 + 2) = 0;
      *(v64 + 3) = 0xE000000000000000;
      *(v64 + 4) = 0;
      *(v64 + 5) = 0xE000000000000000;
      *(v64 + 8) = 0x6449206C6C6543;
      *(v64 + 9) = 0xE700000000000000;
      *(v64 + 6) = sub_100223914();
      *(v64 + 7) = v68;

      *(v64 + 16) = v58;
      *(v64 + 17) = v60;

      *(v64 + 12) = sub_100223AD4();
      *(v64 + 13) = v69;

      *(v64 + 10) = 0;
      *(v64 + 11) = 0xE000000000000000;

      swift_beginAccess();
      sub_1001CB2A0(v62, &v64[v65]);
      swift_endAccess();
      *&v64[v66] = 0;
      v64[v67] = 1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v160[11])
      {
LABEL_42:
        if ((v160[22] & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_43;
      }
    }

    v158 = v160[10];
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    v72 = v71;
    v73 = v156;
    v74 = v157;
    v75 = v155;
    v155(v157, 1, 1, v156);
    v76 = swift_allocObject();
    *(v76 + 2) = 0;
    *(v76 + 3) = 0xE000000000000000;
    *(v76 + 4) = 0;
    *(v76 + 5) = 0xE000000000000000;
    *(v76 + 6) = 0;
    *(v76 + 7) = 0xE000000000000000;
    *(v76 + 8) = 0;
    *(v76 + 9) = 0xE000000000000000;
    *(v76 + 10) = 0;
    *(v76 + 11) = 0xE000000000000000;
    *(v76 + 12) = 0;
    *(v76 + 13) = 0xE000000000000000;
    *(v76 + 14) = 0;
    *(v76 + 15) = 0xE000000000000000;
    *(v76 + 16) = 0;
    *(v76 + 17) = 0xE000000000000000;
    v77 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
    v75(&v76[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v73);
    v78 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
    *&v76[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
    v79 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
    v76[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
    *(v76 + 2) = 0;
    *(v76 + 3) = 0xE000000000000000;
    *(v76 + 4) = 0;
    *(v76 + 5) = 0xE000000000000000;
    *(v76 + 8) = 4801360;
    *(v76 + 9) = 0xE300000000000000;
    *(v76 + 6) = sub_100223914();
    *(v76 + 7) = v80;

    *(v76 + 16) = v70;
    *(v76 + 17) = v72;

    *(v76 + 12) = sub_100223AD4();
    *(v76 + 13) = v81;

    *(v76 + 10) = 0;
    *(v76 + 11) = 0xE000000000000000;

    swift_beginAccess();
    sub_1001CB2A0(v74, &v76[v77]);
    swift_endAccess();
    *&v76[v78] = 0;
    v76[v79] = 1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if ((v160[22] & 1) == 0)
    {
LABEL_52:
      v158 = v160[21];
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v83;
      v85 = v156;
      v86 = v157;
      v87 = v155;
      v155(v157, 1, 1, v156);
      v53 = swift_allocObject();
      *(v53 + 2) = 0;
      *(v53 + 3) = 0xE000000000000000;
      *(v53 + 4) = 0;
      *(v53 + 5) = 0xE000000000000000;
      *(v53 + 6) = 0;
      *(v53 + 7) = 0xE000000000000000;
      *(v53 + 8) = 0;
      *(v53 + 9) = 0xE000000000000000;
      *(v53 + 10) = 0;
      *(v53 + 11) = 0xE000000000000000;
      *(v53 + 12) = 0;
      *(v53 + 13) = 0xE000000000000000;
      *(v53 + 14) = 0;
      *(v53 + 15) = 0xE000000000000000;
      *(v53 + 16) = 0;
      *(v53 + 17) = 0xE000000000000000;
      v88 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
      v87(&v53[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v85);
      v89 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
      *&v53[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
      v56 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
      v53[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
      *(v53 + 2) = 0;
      *(v53 + 3) = 0xE000000000000000;
      *(v53 + 4) = 0;
      *(v53 + 5) = 0xE000000000000000;
      *(v53 + 8) = 0x4E434652414ELL;
      *(v53 + 9) = 0xE600000000000000;
      *(v53 + 6) = sub_100223914();
      *(v53 + 7) = v90;

      *(v53 + 16) = v82;
      *(v53 + 17) = v84;

      *(v53 + 12) = sub_100223AD4();
      *(v53 + 13) = v91;

      *(v53 + 10) = 0;
      *(v53 + 11) = 0xE000000000000000;

      swift_beginAccess();
      sub_1001CB2A0(v86, &v53[v88]);
      swift_endAccess();
      *&v53[v89] = 0;
      goto LABEL_55;
    }

LABEL_43:
    if (v160[20])
    {
      if (v160[24])
      {
        goto LABEL_58;
      }

      v158 = v160[23];
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      v50 = v156;
      v51 = v157;
      v52 = v155;
      v155(v157, 1, 1, v156);
      v53 = swift_allocObject();
      *(v53 + 2) = 0;
      *(v53 + 3) = 0xE000000000000000;
      *(v53 + 4) = 0;
      *(v53 + 5) = 0xE000000000000000;
      *(v53 + 6) = 0;
      *(v53 + 7) = 0xE000000000000000;
      *(v53 + 8) = 0;
      *(v53 + 9) = 0xE000000000000000;
      *(v53 + 10) = 0;
      *(v53 + 11) = 0xE000000000000000;
      *(v53 + 12) = 0;
      *(v53 + 13) = 0xE000000000000000;
      *(v53 + 14) = 0;
      *(v53 + 15) = 0xE000000000000000;
      *(v53 + 16) = 0;
      *(v53 + 17) = 0xE000000000000000;
      v54 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
      v52(&v53[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v50);
      v55 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
      *&v53[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
      v56 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
      v53[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
      *(v53 + 2) = 0;
      *(v53 + 3) = 0xE000000000000000;
      *(v53 + 4) = 0;
      *(v53 + 5) = 0xE000000000000000;
      *(v53 + 8) = 0x4E43465241;
      v57 = 0xE500000000000000;
    }

    else
    {
      v158 = v160[19];
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v92;
      v93 = v156;
      v51 = v157;
      v94 = v155;
      v155(v157, 1, 1, v156);
      v53 = swift_allocObject();
      *(v53 + 2) = 0;
      *(v53 + 3) = 0xE000000000000000;
      *(v53 + 4) = 0;
      *(v53 + 5) = 0xE000000000000000;
      *(v53 + 6) = 0;
      *(v53 + 7) = 0xE000000000000000;
      *(v53 + 8) = 0;
      *(v53 + 9) = 0xE000000000000000;
      *(v53 + 10) = 0;
      *(v53 + 11) = 0xE000000000000000;
      *(v53 + 12) = 0;
      *(v53 + 13) = 0xE000000000000000;
      *(v53 + 14) = 0;
      *(v53 + 15) = 0xE000000000000000;
      *(v53 + 16) = 0;
      *(v53 + 17) = 0xE000000000000000;
      v54 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
      v94(&v53[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v93);
      v55 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
      *&v53[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
      v56 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
      v53[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
      *(v53 + 2) = 0;
      *(v53 + 3) = 0xE000000000000000;
      *(v53 + 4) = 0;
      *(v53 + 5) = 0xE000000000000000;
      *(v53 + 8) = 0x4E4346524145;
      v57 = 0xE600000000000000;
    }

    *(v53 + 9) = v57;
    *(v53 + 6) = sub_100223914();
    *(v53 + 7) = v95;

    *(v53 + 16) = v47;
    *(v53 + 17) = v49;

    *(v53 + 12) = sub_100223AD4();
    *(v53 + 13) = v96;

    *(v53 + 10) = 0;
    *(v53 + 11) = 0xE000000000000000;

    swift_beginAccess();
    sub_1001CB2A0(v51, &v53[v54]);
    swift_endAccess();
    *&v53[v55] = 0;
LABEL_55:
    v53[v56] = 1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_58:
    v97 = v162;
    if (v160[26])
    {
      if (v160[28])
      {
        goto LABEL_60;
      }
    }

    else
    {
      v161 = v160[25];
      v158 = dispatch thunk of CustomStringConvertible.description.getter();
      v159 = v98;
      v99._countAndFlagsBits = 1833067552;
      v99._object = 0xE400000000000000;
      String.append(_:)(v99);
      v100 = v158;
      v101 = v159;
      v102 = v156;
      v103 = v157;
      v104 = v155;
      v155(v157, 1, 1, v156);
      v105 = swift_allocObject();
      *(v105 + 2) = 0;
      *(v105 + 3) = 0xE000000000000000;
      *(v105 + 4) = 0;
      *(v105 + 5) = 0xE000000000000000;
      *(v105 + 6) = 0;
      *(v105 + 7) = 0xE000000000000000;
      *(v105 + 8) = 0;
      *(v105 + 9) = 0xE000000000000000;
      *(v105 + 10) = 0;
      *(v105 + 11) = 0xE000000000000000;
      *(v105 + 12) = 0;
      *(v105 + 13) = 0xE000000000000000;
      *(v105 + 14) = 0;
      *(v105 + 15) = 0xE000000000000000;
      *(v105 + 16) = 0;
      *(v105 + 17) = 0xE000000000000000;
      v106 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
      v104(&v105[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v102);
      v107 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
      *&v105[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
      v108 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
      v105[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
      *(v105 + 2) = 0;
      *(v105 + 3) = 0xE000000000000000;
      *(v105 + 4) = 0;
      *(v105 + 5) = 0xE000000000000000;
      *(v105 + 8) = 1347572562;
      *(v105 + 9) = 0xE400000000000000;
      *(v105 + 6) = sub_100223914();
      *(v105 + 7) = v109;

      *(v105 + 16) = v100;
      *(v105 + 17) = v101;

      *(v105 + 12) = sub_100223AD4();
      *(v105 + 13) = v110;

      *(v105 + 10) = 0;
      *(v105 + 11) = 0xE000000000000000;

      swift_beginAccess();
      sub_1001CB2A0(v103, &v105[v106]);
      swift_endAccess();
      *&v105[v107] = 0;
      v105[v108] = 1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v97 = v162;
      if (v160[28])
      {
LABEL_60:
        if (v160[30])
        {
          goto LABEL_71;
        }

LABEL_68:
        v161 = v160[29];
        v158 = dispatch thunk of CustomStringConvertible.description.getter();
        v159 = v124;
        v125._countAndFlagsBits = 1833067552;
        v125._object = 0xE400000000000000;
        String.append(_:)(v125);
        v126 = v158;
        v127 = v159;
        v128 = v156;
        v129 = v157;
        v130 = v155;
        v155(v157, 1, 1, v156);
        v131 = swift_allocObject();
        *(v131 + 2) = 0;
        *(v131 + 3) = 0xE000000000000000;
        *(v131 + 4) = 0;
        *(v131 + 5) = 0xE000000000000000;
        *(v131 + 6) = 0;
        *(v131 + 7) = 0xE000000000000000;
        *(v131 + 8) = 0;
        *(v131 + 9) = 0xE000000000000000;
        *(v131 + 10) = 0;
        *(v131 + 11) = 0xE000000000000000;
        *(v131 + 12) = 0;
        *(v131 + 13) = 0xE000000000000000;
        *(v131 + 14) = 0;
        *(v131 + 15) = 0xE000000000000000;
        *(v131 + 16) = 0;
        *(v131 + 17) = 0xE000000000000000;
        v132 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
        v130(&v131[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v128);
        v133 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
        *&v131[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
        v134 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
        v131[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
        *(v131 + 2) = 0;
        *(v131 + 3) = 0xE000000000000000;
        *(v131 + 4) = 0;
        *(v131 + 5) = 0xE000000000000000;
        *(v131 + 8) = 1230197586;
        *(v131 + 9) = 0xE400000000000000;
        *(v131 + 6) = sub_100223914();
        *(v131 + 7) = v135;

        *(v131 + 16) = v126;
        *(v131 + 17) = v127;

        *(v131 + 12) = sub_100223AD4();
        *(v131 + 13) = v136;

        *(v131 + 10) = 0;
        *(v131 + 11) = 0xE000000000000000;

        swift_beginAccess();
        sub_1001CB2A0(v129, &v131[v132]);
        swift_endAccess();
        *&v131[v133] = 0;
        v131[v134] = 1;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v97 = v162;
        goto LABEL_71;
      }
    }

    v161 = v160[27];
    v158 = dispatch thunk of CustomStringConvertible.description.getter();
    v159 = v111;
    v112._countAndFlagsBits = 4351008;
    v112._object = 0xE300000000000000;
    String.append(_:)(v112);
    v113 = v158;
    v114 = v159;
    v115 = v156;
    v116 = v157;
    v117 = v155;
    v155(v157, 1, 1, v156);
    v118 = swift_allocObject();
    *(v118 + 2) = 0;
    *(v118 + 3) = 0xE000000000000000;
    *(v118 + 4) = 0;
    *(v118 + 5) = 0xE000000000000000;
    *(v118 + 6) = 0;
    *(v118 + 7) = 0xE000000000000000;
    *(v118 + 8) = 0;
    *(v118 + 9) = 0xE000000000000000;
    *(v118 + 10) = 0;
    *(v118 + 11) = 0xE000000000000000;
    *(v118 + 12) = 0;
    *(v118 + 13) = 0xE000000000000000;
    *(v118 + 14) = 0;
    *(v118 + 15) = 0xE000000000000000;
    *(v118 + 16) = 0;
    *(v118 + 17) = 0xE000000000000000;
    v119 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
    v117(&v118[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v115);
    v120 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
    *&v118[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
    v121 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
    v118[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
    *(v118 + 2) = 0;
    *(v118 + 3) = 0xE000000000000000;
    *(v118 + 4) = 0;
    *(v118 + 5) = 0xE000000000000000;
    *(v118 + 8) = 1364349778;
    *(v118 + 9) = 0xE400000000000000;
    *(v118 + 6) = sub_100223914();
    *(v118 + 7) = v122;

    *(v118 + 16) = v113;
    *(v118 + 17) = v114;

    *(v118 + 12) = sub_100223AD4();
    *(v118 + 13) = v123;

    *(v118 + 10) = 0;
    *(v118 + 11) = 0xE000000000000000;

    swift_beginAccess();
    sub_1001CB2A0(v116, &v118[v119]);
    swift_endAccess();
    *&v118[v120] = 0;
    v118[v121] = 1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v97 = v162;
    if ((v160[30] & 1) == 0)
    {
      goto LABEL_68;
    }

LABEL_71:
    sub_1001DFB0C(v160);
    if ((v160[36] & 1) == 0)
    {
      v158 = 0;
      v159 = 0xE000000000000000;
      Double.write<A>(to:)();
      v137 = v158;
      v138 = v159;
      v139 = v156;
      v140 = v157;
      v141 = v155;
      v155(v157, 1, 1, v156);
      v142 = swift_allocObject();
      *(v142 + 2) = 0;
      *(v142 + 3) = 0xE000000000000000;
      *(v142 + 4) = 0;
      *(v142 + 5) = 0xE000000000000000;
      *(v142 + 6) = 0;
      *(v142 + 7) = 0xE000000000000000;
      *(v142 + 8) = 0;
      *(v142 + 9) = 0xE000000000000000;
      *(v142 + 10) = 0;
      *(v142 + 11) = 0xE000000000000000;
      *(v142 + 12) = 0;
      *(v142 + 13) = 0xE000000000000000;
      *(v142 + 14) = 0;
      *(v142 + 15) = 0xE000000000000000;
      *(v142 + 16) = 0;
      *(v142 + 17) = 0xE000000000000000;
      v143 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
      v141(&v142[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp], 1, 1, v139);
      v144 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
      *&v142[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId] = 0;
      v145 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible;
      v142[OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible] = 1;
      *(v142 + 2) = 0;
      *(v142 + 3) = 0xE000000000000000;
      *(v142 + 4) = 0;
      *(v142 + 5) = 0xE000000000000000;
      *(v142 + 8) = 5394003;
      *(v142 + 9) = 0xE300000000000000;
      *(v142 + 6) = sub_100223914();
      *(v142 + 7) = v146;

      *(v142 + 16) = v137;
      *(v142 + 17) = v138;

      *(v142 + 12) = sub_100223AD4();
      *(v142 + 13) = v147;

      *(v142 + 10) = 0;
      *(v142 + 11) = 0xE000000000000000;

      swift_beginAccess();
      sub_1001CB2A0(v140, &v142[v143]);
      swift_endAccess();
      *&v142[v144] = 0;
      v142[v145] = 1;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v97 = v162;
    }

    if (!v151)
    {
      break;
    }

    --v151;
    v11 = v149;
    v18 = v150 + 296;
  }

  return v97;
}

uint64_t sub_1001DF878()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1001DF8B8()
{
  result = qword_100376D20;
  if (!qword_100376D20)
  {
    sub_1001A55C8(&qword_100376D18, &qword_1002F1E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376D20);
  }

  return result;
}

uint64_t sub_1001DF91C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1001DF954()
{
  result = qword_100376D38;
  if (!qword_100376D38)
  {
    sub_1001A55C8(&qword_1003755C0, &qword_1002F1E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376D38);
  }

  return result;
}

uint64_t sub_1001DF9D8(uint64_t a1)
{
  v2 = sub_1001A551C(&qword_1003755C0, &qword_1002F1E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001DFA40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_1003755C0, &qword_1002F1E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001DFB64()
{
  result = qword_100376D48;
  if (!qword_100376D48)
  {
    sub_1001A55C8(&qword_100376D50, &unk_1002F1E80);
    sub_1001DF8B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376D48);
  }

  return result;
}

uint64_t sub_1001DFBE8()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TimeZone();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(NSDateFormatter) init];
  static TimeZone.autoupdatingCurrent.getter();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);
  [v8 setTimeZone:isa];

  v10 = [objc_opt_self() currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v8 setLocale:v11];

  sub_1001E1830();
  v12 = String._bridgeToObjectiveC()();

  [v8 setDateFormat:v12];

  v13 = Date._bridgeToObjectiveC()().super.isa;
  v14 = [v8 stringFromDate:v13];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v15;
}

void sub_1001DFEA8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    v2 = [objc_opt_self() processInfo];
    v1 = [v2 processName];
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_100376D58 = v3;
  unk_100376D60 = v5;
}

uint64_t sub_1001DFFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1001E1BB4(0, &qword_100376D88, OS_os_log_ptr);
  if (qword_100374F88 != -1)
  {
    swift_once();
  }

  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

uint64_t sub_1001E006C()
{
  sub_1001E1BB4(0, &qword_100376D88, OS_os_log_ptr);
  if (qword_100374F88 != -1)
  {
    swift_once();
  }

  result = OS_os_log.init(subsystem:category:)();
  qword_100382488 = result;
  return result;
}

uint64_t sub_1001E01F8()
{
  sub_1001E1BB4(0, &qword_100376D88, OS_os_log_ptr);
  if (qword_100374F88 != -1)
  {
    swift_once();
  }

  result = OS_os_log.init(subsystem:category:)();
  qword_1003824C0 = result;
  return result;
}

unint64_t AnalyticsInteractionTypes.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000021;
  }

  if (a1 == 1)
  {
    return 0xD000000000000027;
  }

  return 0xD00000000000001FLL;
}

uint64_t sub_1001E0304(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD00000000000001FLL;
  v3 = *a1;
  v4 = "estMenu.appLaunch";
  if (v3 == 1)
  {
    v5 = 0xD000000000000027;
  }

  else
  {
    v5 = 0xD00000000000001FLL;
  }

  if (v3 == 1)
  {
    v6 = "estMenu.appLaunch";
  }

  else
  {
    v6 = "estMenu.slicing.results";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000021;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "HEALTH_MONITOR_TYPE_DATA_";
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000027;
  }

  else
  {
    v4 = "estMenu.slicing.results";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000021;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "HEALTH_MONITOR_TYPE_DATA_";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1001E03DC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001E0478(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1001E0500(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001E0598@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11FTMInternal25AnalyticsInteractionTypesO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1001E05C8(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001FLL;
  v3 = "estMenu.appLaunch";
  if (*v1 == 1)
  {
    v2 = 0xD000000000000027;
  }

  else
  {
    v3 = "estMenu.slicing.results";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000021;
    v4 = "HEALTH_MONITOR_TYPE_DATA_";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

Swift::Void __swiftcall AnalyticsManager.sendAnalytics(interactionType:payload:)(FTMInternal::AnalyticsInteractionTypes interactionType, Swift::OpaquePointer payload)
{
  v2 = String._bridgeToObjectiveC()();

  sub_1001E1BB4(0, &qword_100376D68, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  AnalyticsSendEvent();
}

uint64_t sub_1001E0710()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TimeZone();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(NSDateFormatter) init];
  static TimeZone.autoupdatingCurrent.getter();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);
  [v8 setTimeZone:isa];

  v10 = [objc_opt_self() currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v8 setLocale:v11];

  sub_1001E1830();
  v12 = String._bridgeToObjectiveC()();

  [v8 setDateFormat:v12];

  v13 = Date._bridgeToObjectiveC()().super.isa;
  v14 = [v8 stringFromDate:v13];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v15;
}

Swift::String __swiftcall FTMDateFactory.configureDateFormat(for:)(FTMInternal::FormatType a1)
{
  v2 = sub_1001E1830();
  if (v2)
  {
    v3 = 0x6D3A4848202C4545;
    v4 = 0xEF7A7A2073733A6DLL;
    v5 = -1513209474788460000;
    if (a1 != FTMInternal_FormatType_withMinutesAndSecondsOnly)
    {
      v5 = 0xEA00000000006120;
    }

    if (a1 == FTMInternal_FormatType_withMonth)
    {
      v3 = 0xD000000000000015;
      v4 = 0x80000001002BB450;
    }

    if (a1 > FTMInternal_FormatType_withTimeOnly)
    {
      v3 = 0x73733A6D6D3A4848;
      v4 = v5;
    }

    v6 = 0x6D3A4848202C4545;
    v7 = 0xEF7A7A2073733A6DLL;
    v8 = -1513209474788460000;
    if (a1 != FTMInternal_FormatType_withMinutesAndSecondsOnly)
    {
      v8 = 0xEA00000000006120;
    }

    if (a1 == FTMInternal_FormatType_withMonth)
    {
      v6 = 0xD000000000000015;
      v7 = 0x80000001002BB450;
    }

    if (a1 <= FTMInternal_FormatType_withTimeOnly)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0x73733A6D6D3A4848;
    }

    if (a1 <= FTMInternal_FormatType_withTimeOnly)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    if (v2 == 1)
    {
      v11 = v3;
    }

    else
    {
      v11 = v9;
    }

    if (v2 == 1)
    {
      v12 = v4;
    }

    else
    {
      v12 = v10;
    }
  }

  else
  {
    v13 = 0xED00007A7A206120;
    if (a1 != FTMInternal_FormatType_withMinutesAndSecondsOnly)
    {
      v13 = 0xEA00000000006120;
    }

    v14 = 0x80000001002BB490;
    if (a1)
    {
      v15 = 0xD000000000000010;
    }

    else
    {
      v15 = 0xD000000000000016;
    }

    if (a1)
    {
      v14 = 0x80000001002BB470;
    }

    if (a1 <= FTMInternal_FormatType_withTimeOnly)
    {
      v11 = v15;
    }

    else
    {
      v11 = 0x73733A6D6D3A4848;
    }

    if (a1 <= FTMInternal_FormatType_withTimeOnly)
    {
      v12 = v14;
    }

    else
    {
      v12 = v13;
    }
  }

  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_1001E0B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  if (*(qword_100382500 + 24) == 1)
  {
    if (qword_100374F98 != -1)
    {
      swift_once();
    }

    v8 = qword_100382480;
    v9 = static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1002EED30;
    *(v10 + 56) = &type metadata for String;
    v11 = sub_1001A76E8();
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
    *(v10 + 96) = &type metadata for String;
    *(v10 + 104) = v11;
    *(v10 + 64) = v11;
    *(v10 + 72) = a3;
    *(v10 + 80) = a4;

    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v10 + 136) = &type metadata for String;
    *(v10 + 144) = v11;
    *(v10 + 112) = v12;
    *(v10 + 120) = v13;
    os_log(_:dso:log:type:_:)("marker: %{public}s, metricName: %{public}s, dictionaryCount: %{public}@", 71, 2, &_mh_execute_header, v8, v9, v10);
  }

  else
  {
    if (qword_100374F98 != -1)
    {
      swift_once();
    }

    v14 = qword_100382480;
    v15 = static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1002EED40;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_1001A76E8();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    os_log(_:dso:log:type:_:)("dCount: %{public}@", 18, 2, &_mh_execute_header, v14, v15, v16);
  }
}

Swift::Int _s11FTMInternal10FormatTypeO9hashValueSivg_0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

NSString sub_1001E0E78()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.NewABMMetric = result;
  return result;
}

uint64_t *NSNotificationName.NewABMMetric.unsafeMutableAddressor()
{
  if (qword_100374FE0 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.NewABMMetric;
}

NSString sub_1001E0F28()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.NewCTMetric = result;
  return result;
}

uint64_t *NSNotificationName.NewCTMetric.unsafeMutableAddressor()
{
  if (qword_100374FE8 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.NewCTMetric;
}

NSString sub_1001E0FD8()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.carrierUpdate = result;
  return result;
}

uint64_t *NSNotificationName.carrierUpdate.unsafeMutableAddressor()
{
  if (qword_100374FF0 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.carrierUpdate;
}

NSString sub_1001E108C()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.subsIdSelectionChange = result;
  return result;
}

uint64_t *NSNotificationName.subsIdSelectionChange.unsafeMutableAddressor()
{
  if (qword_100374FF8 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.subsIdSelectionChange;
}

NSString sub_1001E1138()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.numberOfSubsChanged = result;
  return result;
}

uint64_t *NSNotificationName.numberOfSubsChanged.unsafeMutableAddressor()
{
  if (qword_100375000 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.numberOfSubsChanged;
}

NSString sub_1001E11E4()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.dashboardMetricUpdate = result;
  return result;
}

uint64_t *NSNotificationName.dashboardMetricUpdate.unsafeMutableAddressor()
{
  if (qword_100375008 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.dashboardMetricUpdate;
}

NSString sub_1001E1290()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.isAirPlaneModeEnabled = result;
  return result;
}

uint64_t *NSNotificationName.isAirPlaneModeEnabled.unsafeMutableAddressor()
{
  if (qword_100375010 != -1)
  {
    swift_once();
  }

  return &static NSNotificationName.isAirPlaneModeEnabled;
}

id sub_1001E133C(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t sub_1001E139C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = type metadata accessor for Calendar();
  v31 = *(v1 - 8);
  v2 = v31;
  v32 = v1;
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  __chkstk_darwin(v5 - 8);
  v33 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = sub_1001A551C(&qword_100376D90, &qword_1002F2080);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  v13 = sub_1001A551C(&qword_100376D98, &qword_1002F2088);
  __chkstk_darwin(v13 - 8);
  v15 = &v28 - v14;
  v16 = type metadata accessor for DateComponents();
  v28 = *(v16 - 8);
  v29 = v16;
  __chkstk_darwin(v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v23 = *(v2 + 56);
  v24 = v32;
  v23(v15, 1, 1, v32);
  v25 = type metadata accessor for TimeZone();
  (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
  v26 = v33;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  DateComponents.day.setter();
  static Calendar.current.getter();
  Calendar.date(byAdding:to:wrappingComponents:)();
  (*(v31 + 8))(v4, v24);
  sub_1001C2E78(v9, v26);
  result = (*(v20 + 48))(v26, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1001C2EE8(v9);
    (*(v28 + 8))(v18, v29);
    (*(v20 + 8))(v22, v19);
    return (*(v20 + 32))(v30, v26, v19);
  }

  return result;
}

uint64_t sub_1001E1830()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  v7 = [v4 dateFormatFromTemplate:v5 options:0 locale:isa];

  if (!v7)
  {
    return 2;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v15 = v8;
  v16 = v10;
  v13 = 97;
  v14 = 0xE100000000000000;
  sub_1001A56A0();
  if (StringProtocol.contains<A>(_:)())
  {

    return 0;
  }

  v15 = v8;
  v16 = v10;
  v13 = 18504;
  v14 = 0xE200000000000000;
  v12 = StringProtocol.contains<A>(_:)();

  if (v12)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

unint64_t _s11FTMInternal25AnalyticsInteractionTypesO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10031A318, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001E1A58()
{
  result = qword_100376D70;
  if (!qword_100376D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376D70);
  }

  return result;
}

unint64_t sub_1001E1AB0()
{
  result = qword_100376D78;
  if (!qword_100376D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376D78);
  }

  return result;
}

unint64_t sub_1001E1B08()
{
  result = qword_100376D80;
  if (!qword_100376D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100376D80);
  }

  return result;
}

uint64_t sub_1001E1BB4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1001E1BFC(uint64_t a1, uint64_t a2)
{
  sub_1001A56A0();
  if (StringProtocol.contains<A>(_:)())
  {
    v2 = StringProtocol.components<A>(separatedBy:)();
    if (*(v2 + 16))
    {
      v3 = *(v2 + 32);

      return v3;
    }
  }

  return 0;
}

uint64_t sub_1001E1D00(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000534D53;
  v3 = 0x2026206563696F56;
  v4 = a1;
  v5 = 0xE300000000000000;
  v6 = 0xE300000000000000;
  v7 = 5456722;
  if (a1 != 4)
  {
    v7 = 0x6E776F6E6B6E55;
    v6 = 0xE700000000000000;
  }

  if (a1 == 3)
  {
    v7 = 5459283;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0xD000000000000010;
  v9 = 0x80000001002B92A0;
  v10 = 0xE500000000000000;
  v11 = 0x6563696F56;
  if (a1 == 1)
  {
    v11 = 0x2026206563696F56;
    v10 = 0xEB00000000534D53;
  }

  if (a1)
  {
    v8 = v11;
    v9 = v10;
  }

  if (a1 <= 2u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v7;
  }

  if (v4 <= 2)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v2 = 0xE300000000000000;
        if (v12 != 5456722)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v12 != 0x6E776F6E6B6E55)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_29;
    }

    v3 = 5459283;
    v2 = 0xE300000000000000;
  }

  else
  {
    if (!a2)
    {
      v2 = 0x80000001002B92A0;
      if (v12 != 0xD000000000000010)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (a2 != 1)
    {
      v2 = 0xE500000000000000;
      if (v12 != 0x6563696F56)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }
  }

  if (v12 != v3)
  {
LABEL_32:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

LABEL_29:
  if (v13 != v2)
  {
    goto LABEL_32;
  }

  v14 = 1;
LABEL_33:

  return v14 & 1;
}

uint64_t sub_1001E1EDC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 5067591;
  if (a1 != 5)
  {
    v5 = 0x6E776F6E6B6E55;
    v4 = 0xE700000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1398033749;
  if (a1 != 3)
  {
    v7 = 0x4E41525455;
    v6 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE200000000000000;
  v9 = 21070;
  if (a1 != 1)
  {
    v9 = 4543564;
    v8 = 0xE300000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x41534E20524ELL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE200000000000000;
        if (v10 != 21070)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE300000000000000;
        if (v10 != 4543564)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x41534E20524ELL)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE300000000000000;
      if (v10 != 5067591)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E55)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE400000000000000;
    if (v10 != 1398033749)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x4E41525455)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_1001E20B8(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v2 = 21328;
    }

    else
    {
      v2 = 21331;
    }

    v3 = 0xE200000000000000;
  }

  else
  {
    if (a1)
    {
      v2 = 83;
    }

    else
    {
      v2 = 80;
    }

    v3 = 0xE100000000000000;
  }

  v4 = 80;
  v5 = 21328;
  if (a2 != 2)
  {
    v5 = 21331;
  }

  if (a2)
  {
    v4 = 83;
  }

  if (a2 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (a2 <= 1u)
  {
    v7 = 0xE100000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v2 == v6 && v3 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

void *sub_1001E21AC(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
LABEL_18:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v5 = v14;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v3 = &v18;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_20:

  return v3;
}

double sub_1001E2368@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1001F66B8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1001A773C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_1001E23CC@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_1001F6774(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_1001A773C(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_1001E2430(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = sub_1001F6730(a1);
  if ((v5 & 1) == 0)
  {
    v2 = 0;
LABEL_5:
    v6 = 1;
    return v2 | (v6 << 32);
  }

  v6 = 0;
  v2 = *(*(a2 + 56) + 4 * v4);
  return v2 | (v6 << 32);
}

unint64_t sub_1001E248C(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1001A5A78(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1001E278C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001A551C(&qword_100377210, &qword_1002F1158);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for STransferMetrics(0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1001AC99C(a1, &qword_100377210, &qword_1002F1158);
    v14 = sub_1001F6730(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1001F95A0();
        v18 = v22;
      }

      sub_100204E18(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for STransferMetrics);
      sub_1001F8288(v16, v18, type metadata accessor for STransferMetrics);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1001AC99C(v8, &qword_100377210, &qword_1002F1158);
  }

  else
  {
    sub_100204E18(a1, v13, type metadata accessor for STransferMetrics);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1001F8B2C(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1001E29F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1001AC99C(a1, &qword_100375738, &qword_1002EF900);
    v14 = sub_1001F6730(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1001F97D8();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_1001F8288(v16, v18, &type metadata accessor for Date);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1001AC99C(v8, &qword_100375738, &qword_1002EF900);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1001F8C80(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1001E2C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100201570(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1001F90B0(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1001AC99C(a1, &qword_100375D68, &unk_1002F2370);
    sub_1001F6A48(a2, a3, v9);

    return sub_1001AC99C(v9, &qword_100375D68, &unk_1002F2370);
  }

  return result;
}

uint64_t sub_1001E2D28(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100201570(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_1001F8F64(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1002015DC(a2);
    *v2 = v6;
  }

  else
  {
    sub_1001AC99C(a1, &qword_100375D68, &unk_1002F2370);
    sub_1001F69A4(a2, v7);
    sub_1002015DC(a2);
    return sub_1001AC99C(v7, &qword_100375D68, &unk_1002F2370);
  }

  return result;
}

uint64_t sub_1001E2DE4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_1001F66B8(a3, a4);
    v10 = v9;

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v5;
      v16 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1001F9EF8();
        v13 = v16;
      }

      result = sub_1001F8790(v8, v13);
      *v5 = v13;
    }
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1001F9200(a1, a3, a4, v15);

    *v4 = v17;
  }

  return result;
}

uint64_t sub_1001E2ED0(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1001E2FA8(uint64_t result)
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

  result = sub_100224C0C(result, v10, 1, v3);
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

uint64_t sub_1001E30CC(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
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

uint64_t sub_1001E3210(uint64_t result)
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

  result = sub_100224E64(result, v10, 1, v3);
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

void sub_1001E3308(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = v4[3] >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1002255A4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = v4[3] >> 1;
  }

  v11 = v4[2];
  v12 = (v9 - v11);
  v13 = sub_1001FC3FC(&v56, &v4[6 * v11 + 4], v9 - v11, a1);
  if (v13 < v3)
  {
    goto LABEL_16;
  }

  if (v13)
  {
    v15 = v4[2];
    v16 = __OFADD__(v15, v13);
    v17 = v13 + v15;
    if (v16)
    {
      __break(1u);
      goto LABEL_20;
    }

    v4[2] = v17;
  }

  if (v13 != v12)
  {
    sub_1001DD8F0(v56);
LABEL_14:
    *v1 = v4;
    return;
  }

LABEL_17:
  v2 = v4[2];
  v14 = v57;
  v47 = v57;
  v48 = v56;
  v17 = v59;
  v46 = v58;
  v18 = v60;
  if (v60)
  {
    v19 = v59;
LABEL_27:
    v23 = (v18 - 1) & v18;
    v24 = __clz(__rbit64(v18)) | (v19 << 6);
    v25 = (*(v48 + 48) + 16 * v24);
    v27 = *v25;
    v26 = v25[1];
    sub_1001A773C(*(v48 + 56) + 32 * v24, &v50);
    *&v53 = v27;
    *(&v53 + 1) = v26;
    sub_100201570(&v50, &v54);

    v22 = v19;
    while (1)
    {
      sub_1001AC934(&v53, &v50, &qword_1003771F0, &qword_1002F2398);
      if (!*(&v50 + 1))
      {
        break;
      }

      v28 = (v46 + 64) >> 6;
      v29 = &qword_1003771F0;
      while (1)
      {
        sub_1001AC99C(&v50, v29, &qword_1002F2398);
        v30 = v4[3];
        v31 = v30 >> 1;
        if ((v30 >> 1) < v2 + 1)
        {
          v4 = sub_1002255A4((v30 > 1), v2 + 1, 1, v4);
          v31 = v4[3] >> 1;
        }

        sub_1001AC934(&v53, v49, v29, &qword_1002F2398);
        if (*(&v49[0] + 1))
        {
          break;
        }

        v40 = v22;
LABEL_52:
        sub_1001AC99C(v49, v29, &qword_1002F2398);
        v33 = v2;
        v22 = v40;
LABEL_31:
        v4[2] = v33;
        sub_1001AC934(&v53, &v50, v29, &qword_1002F2398);
        if (!*(&v50 + 1))
        {
          goto LABEL_53;
        }
      }

      if (v2 <= v31)
      {
        v32 = v31;
      }

      else
      {
        v32 = v2;
      }

      while (1)
      {
        v50 = v49[0];
        v51 = v49[1];
        v52 = v49[2];
        v33 = v32;
        if (v2 == v32)
        {
          sub_1001AC99C(&v50, &qword_1003771F8, &qword_1002F23A0);
          v2 = v33;
          goto LABEL_31;
        }

        v34 = v29;
        sub_1001AC99C(&v53, v29, &qword_1002F2398);
        v35 = &v4[6 * v2 + 4];
        v37 = v51;
        v36 = v52;
        *v35 = v50;
        v35[1] = v37;
        v35[2] = v36;
        if (!v23)
        {
          break;
        }

        v38 = v22;
LABEL_50:
        v41 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v42 = v41 | (v38 << 6);
        v43 = (*(v48 + 48) + 16 * v42);
        v44 = *v43;
        v45 = v43[1];
        sub_1001A773C(*(v48 + 56) + 32 * v42, v49);
        *&v53 = v44;
        *(&v53 + 1) = v45;
        sub_100201570(v49, &v54);

        v40 = v38;
LABEL_39:
        ++v2;
        v29 = v34;
        sub_1001AC934(&v53, v49, v34, &qword_1002F2398);
        v22 = v40;
        v32 = v33;
        if (!*(&v49[0] + 1))
        {
          goto LABEL_52;
        }
      }

      if (v28 <= (v22 + 1))
      {
        v39 = v22 + 1;
      }

      else
      {
        v39 = (v46 + 64) >> 6;
      }

      v40 = v39 - 1;
      while (1)
      {
        v38 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v38 >= v28)
        {
          v23 = 0;
          v54 = 0u;
          v55 = 0u;
          v53 = 0u;
          goto LABEL_39;
        }

        v23 = *(v47 + 8 * v38);
        ++v22;
        if (v23)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_55:
      v23 = 0;
      v54 = 0u;
      v55 = 0u;
      v53 = 0u;
    }

LABEL_53:
    sub_1001AC99C(&v53, &qword_1003771F0, &qword_1002F2398);
    sub_1001DD8F0(v48);
    sub_1001AC99C(&v50, &qword_1003771F0, &qword_1002F2398);
    goto LABEL_14;
  }

LABEL_20:
  v20 = (v46 + 64) >> 6;
  if (v20 <= (v17 + 1))
  {
    v21 = (v17 + 1);
  }

  else
  {
    v21 = (v46 + 64) >> 6;
  }

  v22 = v21 - 1;
  while (1)
  {
    v19 = (v17 + 1);
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v20)
    {
      goto LABEL_55;
    }

    v18 = *(v14 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

uint64_t sub_1001E3764(unint64_t a1)
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
  sub_1001FA438(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1001FBE08(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_1001E3854()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1001E38C8()
{
  v1 = OBJC_IVAR____TtC11FTMInternal27FTMCarrierInfoObjectChanged__stateChanged;
  v2 = sub_1001A551C(&qword_100376320, &qword_1002F4310);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FTMCarrierInfoObjectChanged(uint64_t a1)
{
  result = qword_100376DD0;
  if (!qword_100376DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E39C4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FTMCarrierInfoObjectChanged(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

char *sub_1001E3A04(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client;
  sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:v9];

  *&v2[v8] = v10;
  v11 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_hManager;
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  *&v2[v11] = qword_100382500;
  *&v2[OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray] = _swiftEmptyArrayStorage;
  v2[OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_isSimAdded] = 0;
  v12 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_updateNetworkValueTimer;
  v13 = objc_allocWithZone(NSTimer);

  *&v2[v12] = [v13 init];
  v14 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_updateNetworkValueTimerSaveValue;
  *&v2[v14] = sub_1001FCD30(_swiftEmptyArrayStorage);
  v2[OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_isApplicationForeground] = 0;
  v15 = &v2[OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_recordedTimeToClearRATMetricData];
  Date.init()();
  v16 = sub_1001D530C();
  v18 = v17;
  (*(v5 + 8))(v7, v4);
  *v15 = v16;
  v15[1] = v18;
  *&v2[OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_persistanceStore] = a1;
  v36.receiver = v2;
  v36.super_class = ObjectType;
  v19 = a1;
  v20 = objc_msgSendSuper2(&v36, "init");
  v21 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client;
  v22 = *&v20[OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client];
  v23 = v20;
  [v22 setDelegate:v23];
  if (qword_100374FD8 != -1)
  {
    swift_once();
  }

  v24 = qword_1003824C0;
  v25 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("CoreTelephonyService - init", 27, 2, &_mh_execute_header, v24, v25, _swiftEmptyArrayStorage);
  v26 = objc_opt_self();
  v27 = [v26 defaultCenter];
  [v27 addObserver:v23 selector:"applicationForeground" name:UIApplicationDidBecomeActiveNotification object:0];

  v28 = [v26 defaultCenter];
  [v28 addObserver:v23 selector:"applicationInBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

  v29 = *&v20[v21];
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100204D2C;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002050F8;
  aBlock[3] = &unk_10031ED10;
  v31 = _Block_copy(aBlock);

  [v29 getSubscriptionInfo:v31];
  _Block_release(v31);

  return v23;
}

id sub_1001E3E30()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:UIApplicationDidBecomeActiveNotification];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1001E3FF8()
{
  if (qword_100374FD8 != -1)
  {
    swift_once();
  }

  v1 = qword_1003824C0;
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("CoreTelephonyService - foreground", 33, 2, &_mh_execute_header, v1, v2, _swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_isApplicationForeground) = 1;
  v3 = *(v0 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_100205118;
  v6[5] = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1002050F8;
  v6[3] = &unk_10031EEC8;
  v5 = _Block_copy(v6);

  [v3 getSubscriptionInfo:v5];
  _Block_release(v5);
  sub_1001E4158();
}

void sub_1001E4158()
{
  if (qword_100375020 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v1 = sub_10021AF50();
    v2 = v1[2];
    if (!v2)
    {
      break;
    }

    v3 = 0;
    while (v3 < v1[2])
    {
      if (*(v1 + v3 + 32) && *(v1 + v3 + 32) != 1)
      {

LABEL_13:

        v5 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_updateNetworkValueTimer;
        [*&v0[OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_updateNetworkValueTimer] invalidate];
        v6 = objc_opt_self();
        v7 = swift_allocObject();
        *(v7 + 16) = v0;
        v12[4] = sub_1002035A4;
        v12[5] = v7;
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 1107296256;
        v12[2] = sub_10025BE04;
        v12[3] = &unk_10031EB30;
        v8 = _Block_copy(v12);
        v9 = v0;

        v10 = [v6 scheduledTimerWithTimeInterval:1 repeats:v8 block:3.0];
        _Block_release(v8);
        v11 = *&v0[v5];
        *&v0[v5] = v10;

        return;
      }

      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v4)
      {
        goto LABEL_13;
      }

      if (v2 == ++v3)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

LABEL_9:
}

void sub_1001E44CC()
{
  v1 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  __chkstk_darwin(v1 - 8);
  v54 = &v44 - v2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 1);
  __chkstk_darwin(v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v0;
  if (v0[OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_isApplicationForeground] == 1)
  {
    if (qword_100375020 != -1)
    {
      goto LABEL_49;
    }

    while (1)
    {
      v7 = sub_10021AF50();
      v8 = v7[2];
      if (!v8)
      {
        break;
      }

      v46 = v6;
      v47 = v4;
      v53 = v3;
      v3 = 0;
      v6 = 0x79636167654CLL;
      v4 = 0x61746144205443;
      while (1)
      {
        if (v3 >= v7[2])
        {
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        if (*(v3 + v7 + 32) && *(v3 + v7 + 32) != 1)
        {
          break;
        }

        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          goto LABEL_14;
        }

        v3 = (v3 + 1);
        if (v8 == v3)
        {
          goto LABEL_10;
        }
      }

LABEL_14:

      v10 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray;
      v11 = v55;
      swift_beginAccess();
      v12 = *&v11[v10];
      v13 = *(v12 + 16);

      if (v13)
      {
        v3 = 0;
        v6 = v12 + 48;
        v14 = _swiftEmptyArrayStorage;
        while (v3 < *(v12 + 16))
        {
          v4 = *v6;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_1002250D8(0, *(v14 + 2) + 1, 1, v14);
          }

          v16 = *(v14 + 2);
          v15 = *(v14 + 3);
          if (v16 >= v15 >> 1)
          {
            v14 = sub_1002250D8((v15 > 1), v16 + 1, 1, v14);
          }

          v3 = (v3 + 1);
          *(v14 + 2) = v16 + 1;
          *&v14[8 * v16 + 32] = v4;
          v6 += 224;
          if (v13 == v3)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_47;
      }

      v14 = _swiftEmptyArrayStorage;
LABEL_24:

      v17 = *(v14 + 2);
      if (!v17)
      {
LABEL_41:

        return;
      }

      v4 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_updateNetworkValueTimerSaveValue;
      v51 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client;
      if (qword_100375018 != -1)
      {
        swift_once();
      }

      v6 = 0;
      v18 = qword_100382500;
      v44 = v47 + 16;
      v45 = (v47 + 8);
      v48 = v57;
      v49 = (v47 + 56);
      v19 = v53;
      v52 = v17;
      v50 = qword_100382500;
      while (v6 < *(v14 + 2))
      {
        v32 = *&v14[8 * v6 + 32];
        if ((*(v18 + 160) & 1) == 0 && *(v18 + 156) == (v32 != 1))
        {
          v33 = objc_allocWithZone(CTXPCServiceSubscriptionContext);
          v34 = [v33 initWithSlot:{v32, v44}];
          v35 = v55;
          swift_beginAccess();
          v36 = *&v35[v4];
          if (*(v36 + 16) && (v32 == 1 ? (v37 = 1) : (v37 = 2), v38 = sub_1001F6730(v37), (v39 & 1) != 0))
          {
            v40 = v46;
            (*(v47 + 16))(v46, *(v36 + 56) + *(v47 + 72) * v38, v19);
            swift_endAccess();
            sub_1001D530C();
            v41 = sub_10020CACC();

            if (v41 <= 2)
            {

              if (qword_100374FA8 != -1)
              {
                swift_once();
              }

              v42 = qword_100382490;
              v43 = static os_log_type_t.default.getter();
              os_log(_:dso:log:type:_:)("Network strength data was not refreshed as it was too early", 59, 2, &_mh_execute_header, v42, v43, _swiftEmptyArrayStorage);

              (*v45)(v46, v19);
              return;
            }

            (*v45)(v40, v19);
          }

          else
          {
            swift_endAccess();
          }

          v20 = [v34 slotID];
          v21 = swift_allocObject();
          v22 = v55;
          *(v21 + 16) = v55;
          *(v21 + 24) = v34;
          v23 = v22;
          v24 = v34;
          v25 = v54;
          Date.init()();
          (*v49)(v25, 0, 1, v19);
          swift_beginAccess();
          sub_1001E29F4(v25, v20);
          swift_endAccess();
          v26 = [objc_allocWithZone(CTXPCServiceSubscriptionContext) initWithSlot:v20];
          v27 = [objc_opt_self() descriptorWithSubscriptionContext:v26];
          v28 = v4;
          v29 = *&v22[v51];
          v30 = swift_allocObject();
          *(v30 + 16) = sub_100203608;
          *(v30 + 24) = v21;
          v57[2] = sub_100205084;
          v57[3] = v30;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v57[0] = sub_1002050F8;
          v57[1] = &unk_10031EBA8;
          v3 = _Block_copy(aBlock);

          v31 = v29;
          v4 = v28;
          [v31 getSignalStrengthMeasurements:v27 completion:v3];
          v19 = v53;
          _Block_release(v3);

          v17 = v52;
          v18 = v50;
        }

        if (v17 == ++v6)
        {
          goto LABEL_41;
        }
      }

LABEL_48:
      __break(1u);
LABEL_49:
      swift_once();
    }

LABEL_10:
  }
}

void sub_1001E4C38(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    swift_getErrorValue();
    v3 = Error.localizedDescription.getter();
    v5 = v4;
    if (qword_100374FD8 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_3;
  }

  if (qword_100374FD8 != -1)
  {
    swift_once();
  }

  v10 = qword_1003824C0;
  v11 = static os_log_type_t.default.getter();
  v12 = os_log(_:dso:log:type:_:)("CoreTelephonyService - fetchCarrierSubscriptions ", 49, 2, &_mh_execute_header, v10, v11, _swiftEmptyArrayStorage);
  if (!a1)
  {
    return;
  }

  v13 = [a1 subscriptions];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  sub_1001E1BB4(0, &qword_100377180, CTXPCServiceSubscriptionContext_ptr);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v3 = Strong;
  v17 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray;
  swift_beginAccess();
  *(v3 + v17) = _swiftEmptyArrayStorage;

  if (v15 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
    v19 = &selRef_clearRlfCauses;
    if (v18)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = &selRef_clearRlfCauses;
    if (v18)
    {
LABEL_13:
      if (v18 < 1)
      {
        __break(1u);
        return;
      }

      v20 = 0;
      v21 = 0;
      v22 = v15 & 0xC000000000000001;
      v23 = &selRef_titleLabel;
      v78 = v18;
      v79 = v15;
      v77 = v15 & 0xC000000000000001;
      while (1)
      {
        if (v22)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v24 = *(v15 + 8 * v21 + 32);
        }

        v25 = v24;
        if ([v24 v23[63]])
        {
          v26 = [v25 v19[449]];
          v27 = "CarrierInfoArray ";
          if (v26 == 1)
          {
            v27 = "0000000100000002";
          }

          v81 = v27;
          v84 = [v25 v19[449]];
          v80 = [v25 v23[63]];
          v28 = [v25 phoneNumber];
          if (v28)
          {
            v29 = v28;
            v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v32 = v31;
          }

          else
          {
            v30 = 0;
            v32 = 0xE000000000000000;
          }

          swift_beginAccess();
          v5 = *(v3 + v17);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v3 + v17) = v5;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v5 = sub_100224E64(0, *(v5 + 2) + 1, 1, v5);
            *(v3 + v17) = v5;
          }

          v35 = *(v5 + 2);
          v34 = *(v5 + 3);
          if (v35 >= v34 >> 1)
          {
            v5 = sub_100224E64((v34 > 1), v35 + 1, 1, v5);
          }

          *(v5 + 2) = v35 + 1;
          v36 = &v5[224 * v35];
          *(v36 + 4) = 0;
          *(v36 + 5) = 0xE000000000000000;
          *(v36 + 6) = v84;
          v36[56] = v80;
          *(v36 + 57) = *v89;
          *(v36 + 15) = *&v89[3];
          *(v36 + 8) = 0xD000000000000010;
          *(v36 + 9) = v81 | 0x8000000000000000;
          *(v36 + 10) = v30;
          *(v36 + 11) = v32;
          *(v36 + 48) = 1541;
          *(v36 + 51) = v88;
          *(v36 + 98) = v87;
          *(v36 + 13) = 0x6E776F6E6B6E55;
          *(v36 + 14) = 0xE700000000000000;
          *(v36 + 15) = 0;
          *(v36 + 16) = 0xE000000000000000;
          *(v36 + 17) = 0;
          *(v36 + 18) = 0xE000000000000000;
          *(v36 + 19) = 0x2020202020202020;
          *(v36 + 20) = 0xEA00000000002020;
          *(v36 + 21) = 0x2020202020202020;
          *(v36 + 22) = 0xEA00000000002020;
          *(v36 + 23) = 0x2020202020202020;
          *(v36 + 24) = 0xEA00000000002020;
          *(v36 + 25) = 0x2020202020202020;
          *(v36 + 26) = 0xEA00000000002020;
          *(v36 + 27) = 0x2020202020202020;
          *(v36 + 28) = 0xEA00000000002020;
          *(v36 + 29) = _swiftEmptyArrayStorage;
          *(v36 + 30) = _swiftEmptyArrayStorage;
          *(v36 + 31) = _swiftEmptyArrayStorage;
          *(v3 + v17) = v5;
          swift_endAccess();

          if (__OFADD__(v20++, 1))
          {
            __break(1u);
LABEL_34:
            swift_once();
LABEL_3:
            v6 = qword_1003824C0;
            v7 = static os_log_type_t.default.getter();
            sub_1001A551C(&unk_100377020, &unk_1002EF770);
            v8 = swift_allocObject();
            *(v8 + 16) = xmmword_1002EED40;
            *(v8 + 56) = &type metadata for String;
            *(v8 + 64) = sub_1001A76E8();
            *(v8 + 32) = v3;
            *(v8 + 40) = v5;
            os_log(_:dso:log:type:_:)("CoreTelephonyService - fetchCarrierSubscriptions error: %{public}s ", 67, 2, &_mh_execute_header, v6, v7, v8);
LABEL_4:

            return;
          }

          v19 = &selRef_clearRlfCauses;
          v18 = v78;
          v15 = v79;
          v22 = v77;
          v23 = &selRef_titleLabel;
        }

        else
        {
        }

        if (v18 == ++v21)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v20 = 0;
LABEL_37:

  v38 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_hManager;
  if (*(*(v3 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_hManager) + 168) != v20)
  {
    *(v3 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_isSimAdded) = 1;
  }

  v39 = *(v3 + v17);
  v40 = *(v39 + 16);
  v85 = v38;
  if (v40)
  {

    v41 = 48;
    v42 = &qword_100375000;
    do
    {
      if (v20 == 1)
      {
        v43 = *(v39 + v41);
        if (v42[3] != -1)
        {
          v46 = v42;
          swift_once();
          v42 = v46;
        }

        v44 = qword_100382500;
        if ((*(qword_100382500 + 160) & 1) == 0 && (v43 != 1) != *(qword_100382500 + 156))
        {
          *(qword_100382500 + 156) = v43 != 1;
          *(v44 + 160) = 0;
          v45 = v42;
          sub_10020A870();
          v42 = v45;
        }
      }

      v41 += 224;
      --v40;
    }

    while (v40);

    v38 = v85;
  }

  *(*&v38[v3] + 168) = v20;
  v47 = objc_opt_self();

  v48 = [v47 defaultCenter];
  if (qword_100375000 != -1)
  {
LABEL_72:
    swift_once();
  }

  [v48 postNotificationName:static NSNotificationName.numberOfSubsChanged object:0 userInfo:0];

  sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1002EED50;
  *(v49 + 56) = &type metadata for String;
  *(v49 + 32) = 0xD000000000000011;
  *(v49 + 40) = 0x80000001002BBFF0;
  v50 = *(v3 + v17);
  *(v49 + 88) = sub_1001A551C(&qword_100377040, &qword_1002F21E8);
  *(v49 + 64) = v50;

  print(_:separator:terminator:)();

  v48 = *(v3 + v17);
  v51 = v48[2];
  if (v51)
  {

    v52 = 0;
    v53 = 0;
    v82 = v48;
    do
    {
      v54 = v48[v52 / 8 + 6];
      sub_1001E571C(v54);
      if (*(*&v38[v3] + 26) == 1)
      {
        v55 = sub_1001E5E58(v54);
        v57 = v56;
        swift_beginAccess();
        v38 = *(v3 + v17);

        v58 = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + v17) = v38;
        if ((v58 & 1) == 0)
        {
          v38 = sub_1001FA71C(v38);
          *(v3 + v17) = v38;
        }

        if (v53 >= *(v38 + 2))
        {
          goto LABEL_70;
        }

        *&v38[v52 + 240] = v55;
        *(v3 + v17) = v38;
        swift_endAccess();

        swift_beginAccess();
        v59 = *(v3 + v17);

        v60 = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + v17) = v59;
        if ((v60 & 1) == 0)
        {
          v59 = sub_1001FA71C(v59);
          *(v3 + v17) = v59;
        }

        v48 = v82;
        if (v53 >= *(v59 + 2))
        {
          goto LABEL_71;
        }

        *&v59[v52 + 248] = v57;
        *(v3 + v17) = v59;
        swift_endAccess();

        v38 = v85;
      }

      v61 = sub_1001E76C4(v54);
      swift_beginAccess();
      v62 = *(v3 + v17);
      v63 = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + v17) = v62;
      if ((v63 & 1) == 0)
      {
        v62 = sub_1001FA71C(v62);
      }

      if (v53 >= *(v62 + 2))
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      ++v53;
      v62[v52 + 96] = v61;
      *(v3 + v17) = v62;
      swift_endAccess();
      v52 += 224;
    }

    while (v51 != v53);

    v86 = *(v3 + v17);
    v64 = *(v86 + 16);
    if (!v64)
    {
      goto LABEL_68;
    }

    v83 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client;

    v65 = 48;
    do
    {
      v66 = [objc_allocWithZone(CTXPCServiceSubscriptionContext) initWithSlot:*(v86 + v65)];
      v67 = [v66 slotID];
      v68 = [v66 slotID];
      v69 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v70 = swift_allocObject();
      v70[2] = v69;
      v70[3] = v67;
      v70[4] = v66;
      v71 = objc_allocWithZone(CTXPCServiceSubscriptionContext);
      v72 = v66;

      v73 = [v71 initWithSlot:v68];
      v74 = *(v3 + v83);
      v75 = swift_allocObject();
      *(v75 + 16) = sub_1002050B8;
      *(v75 + 24) = v70;
      aBlock[4] = sub_100205088;
      aBlock[5] = v75;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001F2210;
      aBlock[3] = &unk_10031ED88;
      v76 = _Block_copy(aBlock);

      [v74 copyCellInfo:v73 completion:v76];
      _Block_release(v76);

      v65 += 224;
      --v64;
    }

    while (v64);

    goto LABEL_4;
  }

LABEL_68:
}

void sub_1001E571C(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(CTBundle) initWithBundleType:1];
  v5 = [objc_allocWithZone(CTXPCServiceSubscriptionContext) initWithSlot:a1];
  if (qword_100374FD8 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v6 = qword_1003824C0;
    v7 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("CoreTelephonyService - processCarrierInfo", 41, 2, &_mh_execute_header, v6, v7, _swiftEmptyArrayStorage);
    v8 = *(v2 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client);
    v9 = String._bridgeToObjectiveC()();
    v53[0] = 0;
    v10 = [v8 copyCarrierBundleValue:v5 key:v9 bundleType:v4 error:v53];

    v52 = v10;
    if (!v10)
    {
      v23 = v53[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      goto LABEL_48;
    }

    v11 = qword_100375018;
    v12 = v53[0];
    if (v11 != -1)
    {
      swift_once();
    }

    if (*(qword_100382500 + 24) == 1)
    {
      v53[0] = 0;
      v13 = [v8 copyCarrierBundleVersion:v5 error:v53];
      v14 = v53[0];
      if (v13)
      {
        v15 = v13;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
        v18 = v14;

        v53[0] = 0;
        v19 = [v8 copyBundleIdentifier:v5 bundleType:v4 error:v53];
        v20 = v53[0];
        if (v19)
        {
          v51 = v17;
          v50 = v4;
          v21 = v19;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v20;

          goto LABEL_11;
        }

        v45 = v53[0];

        _convertNSErrorToError(_:)();
      }

      else
      {
        v44 = v53[0];
        _convertNSErrorToError(_:)();
      }

      swift_willThrow();

LABEL_48:
      sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1002EED50;
      *(v46 + 56) = &type metadata for String;
      *(v46 + 32) = 0xD000000000000029;
      *(v46 + 40) = 0x80000001002BC170;
      swift_getErrorValue();
      v47 = Error.localizedDescription.getter();
      *(v46 + 88) = &type metadata for String;
      *(v46 + 64) = v47;
      *(v46 + 72) = v48;
      print(_:separator:terminator:)();

      return;
    }

    v50 = v4;
    v51 = 0xE000000000000000;
LABEL_11:
    v24 = [v5 slotID];
    v25 = "CarrierInfoArray ";
    if (v24 == 1)
    {
      v25 = "0000000100000002";
    }

    v26 = v25 | 0x8000000000000000;
    v27 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray;
    swift_beginAccess();
    v28 = *(*(v2 + v27) + 16);
    v5 = v51;
    v4 = v52;
    if (v28)
    {
      v29 = 0;
      v30 = 224;
      while (1)
      {
        v31 = *(v2 + v27);
        if (v29 >= *(v31 + 16))
        {
          break;
        }

        v32 = v31 + v30;
        v33 = *(v32 - 160) == 0xD000000000000010 && v26 == *(v32 - 152);
        if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v34 = v52;
            static String._conditionallyBridgeFromObjectiveC(_:result:)();
          }
        }

        ++v29;
        v30 += 224;
        if (v28 == v29)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

LABEL_24:

    v35 = *(v2 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_hManager);
    v36 = *(v35 + 72);
    v37 = *(v35 + 64) & 0xFFFFFFFFFFFFLL;
    if ((v36 & 0x2000000000000000) != 0)
    {
      v37 = HIBYTE(v36) & 0xF;
    }

    if (!v37 || *(v2 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_isSimAdded) != 1)
    {
      break;
    }

    v38 = *(*(v2 + v27) + 16);
    if (!v38)
    {
LABEL_49:

      return;
    }

    v4 = 0;
    v39 = 0;
    while (1)
    {
      v40 = *(v2 + v27);
      if (v39 >= *(v40 + 16))
      {
        break;
      }

      v5 = &v4[v40];
      v41 = *&v4[v40 + 32] == *(v35 + 64) && *&v4[v40 + 40] == *(v35 + 72);
      if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        *(v35 + 156) = *(v5 + 6) != 1;
        *(v35 + 160) = 0;
        sub_10020A870();
      }

      ++v39;
      v4 += 224;
      if (v38 == v39)
      {
        goto LABEL_49;
      }
    }

LABEL_51:
    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_52:
    swift_once();
  }

  v42 = *(v2 + v27);
  v43 = !*(v42 + 16) || *(v42 + 48) != 1;
  *(v35 + 156) = v43;
  *(v35 + 160) = 0;
  sub_10020A870();
}

void *sub_1001E5E58(uint64_t a1)
{
  v191 = type metadata accessor for UUID();
  v3 = *(v191 - 8);
  __chkstk_darwin(v191);
  v195 = &v159 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for Metric(0);
  v189 = *(v190 - 1);
  __chkstk_darwin(v190);
  v186 = &v159 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v185 = &v159 - v7;
  __chkstk_darwin(v8);
  v10 = &v159 - v9;
  __chkstk_darwin(v11);
  v192 = &v159 - v12;
  v193 = type metadata accessor for Date();
  v163 = *(v193 - 8);
  __chkstk_darwin(v193);
  v188 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v159 - v15;
  v187 = a1 != 1;
  v17 = [objc_allocWithZone(CTXPCServiceSubscriptionContext) initWithSlot:a1];
  v18 = *(v1 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client);
  v201 = 0;
  v19 = [v18 getBandInfo:v17 error:&v201];
  v20 = "NSInputStream>40";
  if (v19)
  {
    v21 = v19;
    v22 = v201;
    Date.init()();
    v162 = v21;
    v23 = [v21 activeBands];
    v24 = _swiftEmptyArrayStorage;
    v196 = v16;
    v161 = v17;
    v160 = v3;
    if (v23)
    {
      v25 = v23;
      sub_1001A551C(&qword_100377188, &qword_1002F2330);
      v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = 0;
      v20 = (v26 + 64);
      v28 = *(v26 + 64);
      v172 = v26;
      v29 = 1 << *(v26 + 32);
      v30 = -1;
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      v31 = v30 & v28;
      v32 = (v29 + 63) >> 6;
      i = (v163 + 16);
      v169 = (v3 + 16);
      v168 = (v163 + 8);
      v167 = (v3 + 8);
      v166 = xmmword_1002F2090;
      v159 = xmmword_1002EED40;
      v33 = _swiftEmptyArrayStorage;
      v164 = v32;
      v171 = v10;
      *&v165 = v20;
      if ((v30 & v28) != 0)
      {
        do
        {
LABEL_10:
          v183 = v31;
          v35 = __clz(__rbit64(v31)) | (v27 << 6);
          v36 = *(v172 + 56);
          v37 = (*(v172 + 48) + 16 * v35);
          v38 = v37[1];
          v181 = *v37;
          v39 = *(v36 + 8 * v35);
          v40 = v39;
          if (v39 >> 62)
          {
            v85 = _CocoaArrayWrapper.endIndex.getter();
            v39 = v40;
            v41 = v85;
          }

          else
          {
            v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v197 = v39;
          v194 = v33;
          v182 = v38;
          if (v41)
          {
            v201 = _swiftEmptyArrayStorage;

            sub_1001F53D8(0, v41 & ~(v41 >> 63), 0);
            if (v41 < 0)
            {
              goto LABEL_91;
            }

            v42 = 0;
            v24 = v201;
            v43 = v40;
            v44 = v40 & 0xC000000000000001;
            do
            {
              if (v44)
              {
                v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v45 = *(v43 + 8 * v42 + 32);
              }

              v46 = v45;
              v47 = [v45 stringValue];
              v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v50 = v49;

              v201 = v24;
              v52 = v24[2];
              v51 = v24[3];
              if (v52 >= v51 >> 1)
              {
                sub_1001F53D8((v51 > 1), v52 + 1, 1);
                v24 = v201;
              }

              ++v42;
              v24[2] = v52 + 1;
              v53 = &v24[2 * v52];
              v53[4] = v48;
              v53[5] = v50;
              v43 = v197;
            }

            while (v41 != v42);
          }

          else
          {
          }

          v201 = v24;
          sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
          sub_1001AD0C8(&qword_100377100, &qword_1003751B0, &unk_1002EED80, &protocol conformance descriptor for [A]);
          v54 = BidirectionalCollection<>.joined(separator:)();
          v56 = v55;

          v203 = &type metadata for String;
          v201 = v54;
          v202 = v56;
          sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
          v57 = NSString.init(stringLiteral:)("", 0, 2);
          v58 = NSString.init(stringLiteral:)("", 0, 2);
          sub_1001A773C(&v201, &v200);
          if (swift_dynamicCast())
          {
            v59 = NSString.init(stringLiteral:)("STRING", 6, 2);

            v60 = String._bridgeToObjectiveC()();

            v58 = v60;
            v57 = v59;
            p_superclass = (_TtC11FTMInternal7MenuBar + 8);
          }

          else if (swift_dynamicCast())
          {
            v62 = DynamicType;
            v63 = NSString.init(stringLiteral:)("INT", 3, 2);

            v198 = v62;
            dispatch thunk of CustomStringConvertible.description.getter();
            v64 = String._bridgeToObjectiveC()();

            v58 = v64;
            v57 = v63;
            p_superclass = (_TtC11FTMInternal7MenuBar + 8);
          }

          else
          {
            p_superclass = _TtC11FTMInternal7MenuBar.superclass;
            if (qword_100375018 != -1)
            {
              swift_once();
            }

            if (*(qword_100382500 + 26) == 1)
            {
              v184 = v57;
              if (qword_100374FD8 != -1)
              {
                swift_once();
              }

              v65 = qword_1003824C0;
              v66 = static os_log_type_t.default.getter();
              sub_1001A551C(&unk_100377020, &unk_1002EF770);
              v67 = swift_allocObject();
              *(v67 + 16) = v159;
              sub_1001A5610(&v201, v203);
              DynamicType = swift_getDynamicType();
              sub_1001A551C(&qword_100377190, &qword_1002F2338);
              v68 = String.init<A>(describing:)();
              v70 = v69;
              *(v67 + 56) = &type metadata for String;
              *(v67 + 64) = sub_1001A76E8();
              *(v67 + 32) = v68;
              *(v67 + 40) = v70;
              os_log(_:dso:log:type:_:)("unknown type  ---> %{public}s", 29, 2, &_mh_execute_header, v65, v66, v67);

              v57 = v184;
            }
          }

          v184 = v57;
          v181 = v58;
          sub_1001A5654(&v200);
          if (p_superclass[507] != -1)
          {
            swift_once();
          }

          v71 = qword_1003824C0;
          v72 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("CoreTelephonyService - cellInfoDBBuilder", 40, 2, &_mh_execute_header, v71, v72, _swiftEmptyArrayStorage);
          v73 = v195;
          UUID.init()();
          v179 = String._bridgeToObjectiveC()();
          v178 = String._bridgeToObjectiveC()();
          v177 = String._bridgeToObjectiveC()();
          v174 = String._bridgeToObjectiveC()();
          v74 = *i;
          v75 = v188;
          v76 = v193;
          (*i)(v188, v196, v193);
          v173 = String._bridgeToObjectiveC()();
          v77 = v190;
          v78 = v190[15];
          v176 = v190[14];
          v175 = v78;
          v180 = v190[16];
          v79 = v192;
          v80 = v191;
          (*v169)(v192, v73, v191);
          *(v79 + v77[5]) = v179;
          *(v79 + v77[6]) = v178;
          *(v79 + v77[7]) = v177;
          *(v79 + v77[8]) = v174;
          *(v79 + v77[9]) = v181;
          *(v79 + v77[10]) = v184;
          v74((v79 + v77[11]), v75, v76);
          *(v79 + v77[12]) = v173;
          *(v79 + v77[13]) = v187;
          *(v79 + v176) = 0;
          *(v79 + v175) = 0;

          (*v168)(v75, v76);
          (*v167)(v73, v80);
          *(v180 + v79) = v166;
          sub_1001A5654(&v201);
          v81 = v171;
          sub_100204DB0(v79, v171, type metadata accessor for Metric);
          v33 = v194;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_1002250B0(0, v33[2] + 1, 1, v33);
          }

          v20 = v165;
          v32 = v164;
          v82 = v183;
          v84 = v33[2];
          v83 = v33[3];
          v16 = v196;
          v24 = _swiftEmptyArrayStorage;
          if (v84 >= v83 >> 1)
          {
            v33 = sub_1002250B0((v83 > 1), v84 + 1, 1, v33);
          }

          v31 = (v82 - 1) & v82;
          sub_1002034BC(v192, type metadata accessor for Metric);
          v33[2] = v84 + 1;
          sub_100204E18(v81, v33 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v84, type metadata accessor for Metric);
        }

        while (v31);
      }

      while (1)
      {
        v34 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v34 >= v32)
        {

          v17 = v161;
          goto LABEL_46;
        }

        v31 = *&v20[8 * v34];
        ++v27;
        if (v31)
        {
          v27 = v34;
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
      v33 = _swiftEmptyArrayStorage;
LABEL_46:
      v93 = v162;
      v94 = [v162 supportedBands];
      if (!v94)
      {
        (*(v163 + 8))(v16, v193);

        return v33;
      }

      v95 = v94;
      sub_1001A551C(&qword_100377188, &qword_1002F2330);
      v96 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v97 = 0;
      v99 = v96 + 64;
      v98 = *(v96 + 64);
      v173 = v96;
      v100 = 1 << *(v96 + 32);
      v101 = -1;
      if (v100 < 64)
      {
        v101 = ~(-1 << v100);
      }

      v20 = (v101 & v98);
      v102 = (v100 + 63) >> 6;
      v169 = (v163 + 16);
      v168 = (v160 + 16);
      v172 = v163 + 8;
      v167 = (v160 + 8);
      v166 = xmmword_1002F2090;
      v165 = xmmword_1002EED40;
      v103 = _swiftEmptyArrayStorage;
      v194 = v33;
      v171 = (v96 + 64);
      for (i = v102; v20; v102 = i)
      {
LABEL_54:
        v184 = v103;
        v192 = v20;
        v105 = __clz(__rbit64(v20)) | (v97 << 6);
        v106 = v173[7];
        v107 = (v173[6] + 16 * v105);
        v108 = v107[1];
        v182 = *v107;
        v109 = *(v106 + 8 * v105);
        v110 = v109;
        if (v109 >> 62)
        {
          v156 = v108;
          v157 = _CocoaArrayWrapper.endIndex.getter();
          v109 = v110;
          v111 = v157;
          v108 = v156;
        }

        else
        {
          v111 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v197 = v109;
        v183 = v108;
        if (v111)
        {
          v201 = _swiftEmptyArrayStorage;

          sub_1001F53D8(0, v111 & ~(v111 >> 63), 0);
          if (v111 < 0)
          {
            goto LABEL_92;
          }

          v112 = 0;
          v24 = v201;
          v113 = v110;
          v114 = v110 & 0xC000000000000001;
          do
          {
            if (v114)
            {
              v115 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v115 = *(v113 + 8 * v112 + 32);
            }

            v116 = v115;
            v117 = [v115 stringValue];
            v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v120 = v119;

            v201 = v24;
            v122 = v24[2];
            v121 = v24[3];
            if (v122 >= v121 >> 1)
            {
              sub_1001F53D8((v121 > 1), v122 + 1, 1);
              v24 = v201;
            }

            ++v112;
            v24[2] = v122 + 1;
            v123 = &v24[2 * v122];
            v123[4] = v118;
            v123[5] = v120;
            v113 = v197;
          }

          while (v111 != v112);
          v16 = v196;
        }

        else
        {
        }

        v201 = v24;
        sub_1001A551C(&qword_1003751B0, &unk_1002EED80);
        sub_1001AD0C8(&qword_100377100, &qword_1003751B0, &unk_1002EED80, &protocol conformance descriptor for [A]);
        v124 = BidirectionalCollection<>.joined(separator:)();
        v126 = v125;

        v203 = &type metadata for String;
        v201 = v124;
        v202 = v126;
        sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
        v127 = NSString.init(stringLiteral:)("", 0, 2);
        v128 = NSString.init(stringLiteral:)("", 0, 2);
        sub_1001A773C(&v201, &v200);
        if (swift_dynamicCast())
        {
          v129 = NSString.init(stringLiteral:)("STRING", 6, 2);

          v130 = String._bridgeToObjectiveC()();

          v128 = v130;
          v127 = v129;
          v131 = (_TtC11FTMInternal7MenuBar + 8);
        }

        else if (swift_dynamicCast())
        {
          v132 = DynamicType;
          v133 = NSString.init(stringLiteral:)("INT", 3, 2);

          v198 = v132;
          dispatch thunk of CustomStringConvertible.description.getter();
          v134 = String._bridgeToObjectiveC()();

          v128 = v134;
          v127 = v133;
          v131 = (_TtC11FTMInternal7MenuBar + 8);
        }

        else
        {
          v131 = _TtC11FTMInternal7MenuBar.superclass;
          if (qword_100375018 != -1)
          {
            swift_once();
          }

          if (*(qword_100382500 + 26) == 1)
          {
            if (qword_100374FD8 != -1)
            {
              swift_once();
            }

            v135 = qword_1003824C0;
            v136 = static os_log_type_t.default.getter();
            sub_1001A551C(&unk_100377020, &unk_1002EF770);
            v137 = swift_allocObject();
            *(v137 + 16) = v165;
            sub_1001A5610(&v201, v203);
            DynamicType = swift_getDynamicType();
            sub_1001A551C(&qword_100377190, &qword_1002F2338);
            v138 = String.init<A>(describing:)();
            v140 = v139;
            *(v137 + 56) = &type metadata for String;
            *(v137 + 64) = sub_1001A76E8();
            *(v137 + 32) = v138;
            *(v137 + 40) = v140;
            os_log(_:dso:log:type:_:)("unknown type  ---> %{public}s", 29, 2, &_mh_execute_header, v135, v136, v137);

            v16 = v196;
          }
        }

        v180 = v127;
        v181 = v128;
        sub_1001A5654(&v200);
        if (v131[507] != -1)
        {
          swift_once();
        }

        v141 = qword_1003824C0;
        v142 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("CoreTelephonyService - cellInfoDBBuilder", 40, 2, &_mh_execute_header, v141, v142, _swiftEmptyArrayStorage);
        v143 = v195;
        UUID.init()();
        v179 = String._bridgeToObjectiveC()();
        v178 = String._bridgeToObjectiveC()();
        v177 = String._bridgeToObjectiveC()();
        v174 = String._bridgeToObjectiveC()();
        v144 = *v169;
        v145 = v188;
        v146 = v193;
        (*v169)(v188, v16, v193);
        v147 = String._bridgeToObjectiveC()();
        v148 = v190;
        v149 = v190[15];
        v176 = v190[14];
        v175 = v149;
        v182 = v190[16];
        v150 = v185;
        v151 = v143;
        v152 = v191;
        (*v168)(v185, v151, v191);
        *(v150 + v148[5]) = v179;
        *(v150 + v148[6]) = v178;
        *(v150 + v148[7]) = v177;
        *(v150 + v148[8]) = v174;
        *(v150 + v148[9]) = v181;
        *(v150 + v148[10]) = v180;
        v144((v150 + v148[11]), v145, v146);
        *(v150 + v148[12]) = v147;
        *(v150 + v148[13]) = v187;
        *(v150 + v176) = 0;
        *(v150 + v175) = 0;

        (*v172)(v145, v146);
        (*v167)(v195, v152);
        *(v150 + v182) = v166;
        sub_1001A5654(&v201);
        sub_100204DB0(v150, v186, type metadata accessor for Metric);
        v103 = v184;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1002250B0(0, v103[2] + 1, 1, v103);
        }

        v33 = v194;
        v153 = v192;
        v155 = v103[2];
        v154 = v103[3];
        v16 = v196;
        v24 = _swiftEmptyArrayStorage;
        if (v155 >= v154 >> 1)
        {
          v103 = sub_1002250B0((v154 > 1), v155 + 1, 1, v103);
        }

        v20 = ((v153 - 1) & v153);
        sub_1002034BC(v185, type metadata accessor for Metric);
        v103[2] = v155 + 1;
        sub_100204E18(v186, v103 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v155, type metadata accessor for Metric);
        v99 = v171;
      }

      while (1)
      {
        v104 = v97 + 1;
        if (__OFADD__(v97, 1))
        {
          break;
        }

        if (v104 >= v102)
        {
          (*v172)(v16, v193);

          return v33;
        }

        v20 = *(v99 + 8 * v104);
        ++v97;
        if (v20)
        {
          v97 = v104;
          goto LABEL_54;
        }
      }
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v86 = v201;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100374FD8 != -1)
  {
LABEL_93:
    swift_once();
  }

  v87 = qword_1003824C0;
  v88 = static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v89 = swift_allocObject();
  *(v89 + 16) = *(v20 + 212);
  swift_getErrorValue();
  v90 = Error.localizedDescription.getter();
  v92 = v91;
  *(v89 + 56) = &type metadata for String;
  *(v89 + 64) = sub_1001A76E8();
  *(v89 + 32) = v90;
  *(v89 + 40) = v92;
  os_log(_:dso:log:type:_:)("CoreTelephonyService - fetchBandInfo error: %{public}s ", 55, 2, &_mh_execute_header, v87, v88, v89);

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1001E76C4(uint64_t a1)
{
  v2 = [objc_allocWithZone(CTXPCServiceSubscriptionContext) initWithSlot:a1];
  v3 = *(v1 + OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client);
  v26 = 0;
  v4 = [v3 getIMSRegistrationStatus:v2 error:&v26];
  if (v4)
  {
    v5 = v4;
    v6 = v26;
    v7 = [v5 isRegisteredForVoice];
    v8 = [v5 isRegisteredForSMS];
    v26 = 0;
    v9 = [v3 getSystemConfiguration:v2 withError:&v26];
    if (v9)
    {
      v10 = v9;
      v11 = v26;
      v12 = [v10 operationStatus];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 registrationState];

        v15 = v14 == 1;
      }

      else
      {
        v15 = 0;
      }

      v24 = sub_1001FD670(v7, v8, v15);

      goto LABEL_12;
    }

    v17 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    v16 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v8 = 0;
    v7 = 0;
  }

  if (qword_100374FD8 != -1)
  {
    swift_once();
  }

  v18 = qword_1003824C0;
  v19 = static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1002EED40;
  swift_getErrorValue();
  v21 = Error.localizedDescription.getter();
  v23 = v22;
  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = sub_1001A76E8();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  os_log(_:dso:log:type:_:)("CoreTelephonyService - imsRegistrationStatus error: %{public}s ", 63, 2, &_mh_execute_header, v18, v19, v20);

  v24 = sub_1001FD670(v7, v8, 0);

  v10 = v2;
LABEL_12:

  return v24;
}

void sub_1001E79A8(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a1 slotID];
  v5 = v4;
  if (!a2)
  {
    v25 = [v3 slotID];
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = v5;
    v27[4] = v3;
    v28 = objc_allocWithZone(CTXPCServiceSubscriptionContext);
    v29 = v3;

    v30 = [v28 initWithSlot:v25];
    v31 = *&v197[OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_client];
    v32 = swift_allocObject();
    *(v32 + 16) = sub_10020372C;
    *(v32 + 24) = v27;
    *&aBlock[2] = sub_100203738;
    *(&aBlock[2] + 1) = v32;
    *&aBlock[0] = _NSConcreteStackBlock;
    *(&aBlock[0] + 1) = 1107296256;
    *&aBlock[1] = sub_1001F2210;
    *(&aBlock[1] + 1) = &unk_10031EC98;
    v33 = _Block_copy(aBlock);

    [v31 copyCellInfo:v30 completion:v33];
    _Block_release(v33);

    goto LABEL_123;
  }

  v196 = v4;
  v6 = qword_100374FD8;
  v7 = a2;
  if (v6 != -1)
  {
    goto LABEL_142;
  }

  while (1)
  {
    v8 = qword_1003824C0;
    static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1002EED50;
    v10 = v3;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    v169 = v10;

    *(v9 + 56) = &type metadata for String;
    v15 = sub_1001A76E8();
    *(v9 + 64) = v15;
    *(v9 + 32) = v12;
    *(v9 + 40) = v14;
    v16 = v7;
    v17 = [v16 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    *(v9 + 96) = &type metadata for String;
    *(v9 + 104) = v15;
    v187 = v15;
    *(v9 + 72) = v18;
    *(v9 + 80) = v20;
    v190 = v8;
    os_log(_:dso:log:type:_:)("RAT Information context  ---> %s ---> %s", v167, v168);

    v21 = sub_1001FD848(v16);
    v177 = sub_1001FDC20(v16);
    v195 = v22;
    v176 = sub_1001FDD84(v16, sub_100225FB8);
    v194 = v23;
    v175 = sub_1001FDD84(v16, sub_100225FC4);
    v193 = v24;
    v191 = v21;
    if (v21 > 4u && v21 == 5)
    {
      goto LABEL_9;
    }

    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v34)
    {
      goto LABEL_11;
    }

    if (v21 == 3)
    {
LABEL_9:

LABEL_11:
      v174 = sub_1001FDEAC(v16, sub_100225FD0);
      v37 = v36;
      v173 = sub_1001FDEAC(v16, sub_100225FDC);
      v192 = v38;
      goto LABEL_12;
    }

    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v35)
    {
      goto LABEL_11;
    }

    v173 = 0;
    v174 = 0;
    v192 = 0xE000000000000000;
    v37 = 0xE000000000000000;
LABEL_12:
    v39 = sub_1001FDFB8(v16);
    v7 = v40;
    sub_1001E92CC(v16, v196);
    v42 = v41;
    v171 = v16;
    v43 = v16;
    v44 = v196;
    v170 = sub_1001EB974(v43, v196);
    v188 = sub_1001E76C4(v196);
    v45 = OBJC_IVAR____TtC11FTMInternal20CoreTelephonyService_carrierInfoArray;
    swift_beginAccess();
    v46 = *(*&v197[v45] + 16);
    v189 = v42;
    if (v46)
    {
      if ((v195 & 0x2000000000000000) != 0)
      {
        v47 = HIBYTE(v195) & 0xF;
      }

      else
      {
        v47 = v177 & 0xFFFFFFFFFFFFLL;
      }

      v48 = HIBYTE(v194) & 0xF;
      if ((v194 & 0x2000000000000000) == 0)
      {
        v48 = v176 & 0xFFFFFFFFFFFFLL;
      }

      v185 = v48;
      v186 = v47;
      if ((v193 & 0x2000000000000000) != 0)
      {
        v49 = HIBYTE(v193) & 0xF;
      }

      else
      {
        v49 = v175 & 0xFFFFFFFFFFFFLL;
      }

      v50 = HIBYTE(v37) & 0xF;
      if ((v37 & 0x2000000000000000) == 0)
      {
        v50 = v174 & 0xFFFFFFFFFFFFLL;
      }

      v183 = v50;
      v184 = v49;
      if ((v192 & 0x2000000000000000) != 0)
      {
        v51 = HIBYTE(v192) & 0xF;
      }

      else
      {
        v51 = v173 & 0xFFFFFFFFFFFFLL;
      }

      v52 = HIBYTE(v7) & 0xF;
      v172 = v39;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v52 = v39 & 0xFFFFFFFFFFFFLL;
      }

      v181 = v52;
      v182 = v51;
      v168 = *&v197[v45];

      v53 = 0;
      v179 = v7;
      v180 = v37;
      v178 = v46;
      while (1)
      {
        v3 = *&v197[v45];
        if (v53 >= *(v3 + 16))
        {
          break;
        }

        if (*(v3 + 224 * v53 + 48) == v44)
        {
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v197[v45] = v3;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v3 = sub_1001FA71C(v3);
          }

          if (v53 >= *(v3 + 16))
          {
            goto LABEL_130;
          }

          v62 = v3 + 224 * v53;
          *(v62 + 97) = v191;
          *&v197[v45] = v3;
          if (v53 >= *(v3 + 16))
          {
            goto LABEL_131;
          }

          *(v62 + 96) = v188;
          *&v197[v45] = v3;
          swift_endAccess();
          if (v186)
          {
            swift_beginAccess();

            v63 = swift_isUniquelyReferenced_nonNull_native();
            *&v197[v45] = v3;
            if ((v63 & 1) == 0)
            {
              v3 = sub_1001FA71C(v3);
              *&v197[v45] = v3;
            }

            if (v53 >= *(v3 + 16))
            {
              goto LABEL_135;
            }

            v64 = v3 + 224 * v53;
            *(v64 + 184) = v177;
            *(v64 + 192) = v195;
            *&v197[v45] = v3;
            swift_endAccess();
          }

          if (v185)
          {
            swift_beginAccess();

            v65 = swift_isUniquelyReferenced_nonNull_native();
            *&v197[v45] = v3;
            if ((v65 & 1) == 0)
            {
              v3 = sub_1001FA71C(v3);
              *&v197[v45] = v3;
            }

            if (v53 >= *(v3 + 16))
            {
              goto LABEL_136;
            }

            v66 = v3 + 224 * v53;
            *(v66 + 168) = v176;
            *(v66 + 176) = v194;
            *&v197[v45] = v3;
            swift_endAccess();
          }

          if (v184)
          {
            swift_beginAccess();

            v67 = swift_isUniquelyReferenced_nonNull_native();
            *&v197[v45] = v3;
            if ((v67 & 1) == 0)
            {
              v3 = sub_1001FA71C(v3);
              *&v197[v45] = v3;
            }

            if (v53 >= *(v3 + 16))
            {
              goto LABEL_137;
            }

            v68 = v3 + 224 * v53;
            *(v68 + 104) = v175;
            *(v68 + 112) = v193;
            *&v197[v45] = v3;
            swift_endAccess();
          }

          if (v183)
          {
            swift_beginAccess();

            v69 = swift_isUniquelyReferenced_nonNull_native();
            *&v197[v45] = v3;
            if ((v69 & 1) == 0)
            {
              v3 = sub_1001FA71C(v3);
              *&v197[v45] = v3;
            }

            if (v53 >= *(v3 + 16))
            {
              goto LABEL_138;
            }

            v70 = v3 + 224 * v53;
            *(v70 + 120) = v174;
            *(v70 + 128) = v37;
            *&v197[v45] = v3;
            swift_endAccess();
          }

          if (v182)
          {
            swift_beginAccess();

            v71 = swift_isUniquelyReferenced_nonNull_native();
            *&v197[v45] = v3;
            if ((v71 & 1) == 0)
            {
              v3 = sub_1001FA71C(v3);
              *&v197[v45] = v3;
            }

            if (v53 >= *(v3 + 16))
            {
              goto LABEL_139;
            }

            v72 = v3 + 224 * v53;
            *(v72 + 136) = v173;
            *(v72 + 144) = v192;
            *&v197[v45] = v3;
            swift_endAccess();
          }

          if (v181)
          {
            swift_beginAccess();

            v73 = swift_isUniquelyReferenced_nonNull_native();
            *&v197[v45] = v3;
            if ((v73 & 1) == 0)
            {
              v3 = sub_1001FA71C(v3);
              *&v197[v45] = v3;
            }

            if (v53 >= *(v3 + 16))
            {
              goto LABEL_140;
            }

            v74 = v3 + 224 * v53;
            *(v74 + 152) = v172;
            *(v74 + 160) = v7;
            *&v197[v45] = v3;
            swift_endAccess();
          }

          static os_log_type_t.default.getter();
          v75 = swift_allocObject();
          *(v75 + 16) = xmmword_1002EED50;
          *(v75 + 56) = &type metadata for Int;
          *(v75 + 64) = &protocol witness table for Int;
          *(v75 + 32) = v196 != 1;
          v76 = Array.description.getter();
          *(v75 + 96) = &type metadata for String;
          *(v75 + 104) = v187;
          *(v75 + 72) = v76;
          *(v75 + 80) = v77;
          os_log(_:dso:log:type:_:)("SCell Info %d %s", v167, v168);

          if (qword_100375020 != -1)
          {
            swift_once();
          }

          v78 = qword_100382508;
          v7 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_secondaryCell;
          swift_beginAccess();
          v3 = *&v78[v7];
          v79 = *(v3 + 16);
          if (v79)
          {
            v80 = 0;
            v81 = 0;
            v82 = (v3 + 40);
            while ((*v82 & 1) != 0 || *(v82 - 1) != v44)
            {
              ++v81;
              v82 += 208;
              v80 += 208;
              if (v79 == v81)
              {
                goto LABEL_29;
              }
            }

            v55 = v81 + 1;
            if (__OFADD__(v81, 1))
            {
              goto LABEL_141;
            }

            v83 = v78;
            if (v55 != v79)
            {
              while (v55 < v79)
              {
                v84 = (v3 + v80 + 240);
                if ((*(v3 + v80 + 248) & 1) != 0 || *v84 != v196)
                {
                  if (v55 != v81)
                  {
                    if (v81 >= v79)
                    {
                      goto LABEL_127;
                    }

                    v85 = 208 * v81;
                    v86 = (v3 + 32 + 208 * v81);
                    __dst[0] = *v86;
                    v87 = v86[1];
                    v88 = v86[2];
                    v89 = v86[3];
                    __dst[4] = v86[4];
                    __dst[3] = v89;
                    __dst[2] = v88;
                    __dst[1] = v87;
                    v90 = v86[5];
                    v91 = v86[6];
                    v92 = v86[7];
                    __dst[8] = v86[8];
                    __dst[7] = v92;
                    __dst[6] = v91;
                    __dst[5] = v90;
                    v93 = v86[9];
                    v94 = v86[10];
                    v95 = v86[11];
                    *(&__dst[11] + 9) = *(v86 + 185);
                    __dst[11] = v95;
                    __dst[10] = v94;
                    __dst[9] = v93;
                    aBlock[0] = *v84;
                    v96 = *(v3 + v80 + 256);
                    v97 = *(v3 + v80 + 272);
                    v98 = *(v3 + v80 + 288);
                    aBlock[4] = *(v3 + v80 + 304);
                    aBlock[3] = v98;
                    aBlock[2] = v97;
                    aBlock[1] = v96;
                    v99 = *(v3 + v80 + 320);
                    v100 = *(v3 + v80 + 336);
                    v101 = *(v3 + v80 + 352);
                    aBlock[8] = *(v3 + v80 + 368);
                    aBlock[7] = v101;
                    aBlock[6] = v100;
                    aBlock[5] = v99;
                    v102 = *(v3 + v80 + 384);
                    v103 = *(v3 + v80 + 400);
                    v104 = *(v3 + v80 + 416);
                    *(&aBlock[11] + 9) = *(v3 + v80 + 425);
                    aBlock[11] = v104;
                    aBlock[10] = v103;
                    aBlock[9] = v102;
                    sub_100201470(__dst, __src);
                    sub_100201470(aBlock, __src);
                    v105 = swift_isUniquelyReferenced_nonNull_native();
                    *&v78[v7] = v3;
                    if ((v105 & 1) == 0)
                    {
                      v3 = sub_1001FA708(v3);
                      *&v78[v7] = v3;
                    }

                    if (v81 >= *(v3 + 16))
                    {
                      goto LABEL_128;
                    }

                    v106 = (v3 + v85);
                    v199[0] = *(v3 + v85 + 32);
                    v107 = *(v3 + v85 + 48);
                    v108 = *(v3 + v85 + 64);
                    v109 = *(v3 + v85 + 96);
                    v199[3] = *(v3 + v85 + 80);
                    v199[4] = v109;
                    v199[1] = v107;
                    v199[2] = v108;
                    v110 = *(v3 + v85 + 112);
                    v111 = *(v3 + v85 + 128);
                    v112 = *(v3 + v85 + 160);
                    v199[7] = *(v3 + v85 + 144);
                    v199[8] = v112;
                    v199[5] = v110;
                    v199[6] = v111;
                    v113 = *(v3 + v85 + 176);
                    v114 = *(v3 + v85 + 192);
                    v115 = *(v3 + v85 + 208);
                    *(v200 + 9) = *(v3 + v85 + 217);
                    v199[10] = v114;
                    v200[0] = v115;
                    v199[9] = v113;
                    v106[2] = aBlock[0];
                    v116 = aBlock[1];
                    v117 = aBlock[2];
                    v118 = aBlock[4];
                    v106[5] = aBlock[3];
                    v106[6] = v118;
                    v106[3] = v116;
                    v106[4] = v117;
                    v119 = aBlock[5];
                    v120 = aBlock[6];
                    v121 = aBlock[8];
                    v106[9] = aBlock[7];
                    v106[10] = v121;
                    v106[7] = v119;
                    v106[8] = v120;
                    v122 = aBlock[9];
                    v123 = aBlock[10];
                    v124 = aBlock[11];
                    *(v106 + 217) = *(&aBlock[11] + 9);
                    v106[12] = v123;
                    v106[13] = v124;
                    v106[11] = v122;
                    sub_1002014CC(v199);
                    *&v78[v7] = v3;
                    if (v55 >= *(v3 + 16))
                    {
                      goto LABEL_129;
                    }

                    v125 = (v3 + v80);
                    __src[0] = *(v3 + v80 + 240);
                    v126 = *(v3 + v80 + 256);
                    v127 = *(v3 + v80 + 272);
                    v128 = *(v3 + v80 + 304);
                    __src[3] = *(v3 + v80 + 288);
                    __src[4] = v128;
                    __src[1] = v126;
                    __src[2] = v127;
                    v129 = *(v3 + v80 + 320);
                    v130 = *(v3 + v80 + 336);
                    v131 = *(v3 + v80 + 352);
                    __src[8] = *(v3 + v80 + 368);
                    __src[7] = v131;
                    __src[5] = v129;
                    __src[6] = v130;
                    v132 = *(v3 + v80 + 384);
                    v133 = *(v3 + v80 + 400);
                    v134 = *(v3 + v80 + 416);
                    *(&__src[11] + 9) = *(v3 + v80 + 425);
                    __src[11] = v134;
                    __src[10] = v133;
                    __src[9] = v132;
                    v125[15] = __dst[0];
                    v135 = __dst[1];
                    v136 = __dst[2];
                    v137 = __dst[4];
                    v125[18] = __dst[3];
                    v125[19] = v137;
                    v125[16] = v135;
                    v125[17] = v136;
                    v138 = __dst[5];
                    v139 = __dst[6];
                    v140 = __dst[8];
                    v125[22] = __dst[7];
                    v125[23] = v140;
                    v125[20] = v138;
                    v125[21] = v139;
                    v141 = __dst[9];
                    v142 = __dst[10];
                    v143 = __dst[11];
                    *(v125 + 425) = *(&__dst[11] + 9);
                    v125[25] = v142;
                    v125[26] = v143;
                    v125[24] = v141;
                    sub_1002014CC(__src);
                    *&v78[v7] = v3;
                  }

                  ++v81;
                }

                ++v55;
                v79 = *(v3 + 16);
                v80 += 208;
                if (v55 == v79)
                {
                  goto LABEL_78;
                }
              }

              __break(1u);
              break;
            }

            v55 = v79;
LABEL_78:
            v79 = v81;
            if (v55 < v81)
            {
              goto LABEL_134;
            }
          }

          else
          {
LABEL_29:
            v54 = v78;
            v55 = v79;
          }

          sub_1001FCC58(v79, v55, sub_100224C0C, sub_1001FC954);
          swift_endAccess();
          sub_10020D3C0(1);
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v56 = aBlock[0];
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(aBlock[0]) = (v56 & 1) == 0;

          static Published.subscript.setter();

          v57 = qword_100382508;
          swift_beginAccess();
          v58 = v57;

          sub_1001E2FA8(v59);
          swift_endAccess();
          sub_10020D3C0(1);
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v60 = aBlock[0];
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(aBlock[0]) = (v60 & 1) == 0;

          static Published.subscript.setter();

          v44 = v196;
          v7 = v179;
          v37 = v180;
          v46 = v178;
        }

        if (++v53 == v46)
        {

          v39 = v172;
          goto LABEL_93;
        }
      }

      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

LABEL_93:

    sub_1001FE268(v44, v191, v39, v7);

    if (qword_100375020 != -1)
    {
      swift_once();
    }

    v3 = 0x666E4920646E6142;
    v144 = sub_10021AF50();
    v7 = v144[2];
    if (v7)
    {
      v145 = 0;
      while (1)
      {
        if (v145 >= v144[2])
        {
          goto LABEL_132;
        }

        if (*(v144 + v145 + 32) && *(v144 + v145 + 32) != 1)
        {
          break;
        }

        v146 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v146)
        {
          v44 = v196;
LABEL_106:

          sub_1001FFA94(v171, v191, v44, v199);
          v7 = v189;
          sub_100200658(v44, v199, v189, v170);

          sub_1001AC99C(v199, &unk_100377060, &qword_1002F2200);
          goto LABEL_107;
        }

        ++v145;
        v44 = v196;
        if (v7 == v145)
        {
          goto LABEL_102;
        }
      }

      goto LABEL_106;
    }

LABEL_102:

LABEL_107:
    v147 = sub_10021AF50();
    v148 = v147[2];
    if (!v148)
    {
      break;
    }

    v149 = 0;
    while (v149 < v147[2])
    {
      if (*(v147 + v149 + 32))
      {
        if (*(v147 + v149 + 32) != 2)
        {

LABEL_118:

          v151 = v171;
          sub_1001FFA94(v171, v191, v196, __src);
          memcpy(__dst, __src, 0x121uLL);
          if (sub_1002004E8(__dst) == 1)
          {
            goto LABEL_119;
          }

          sub_1001E4158();
          v152 = [v169 slotID];
          v153 = swift_allocObject();
          v153[2] = v171;
          memcpy(v153 + 3, __src, 0x121uLL);
          v153[40] = v197;
          v153[41] = v169;
          v165 = v171;
          v166 = v169;
          v197;
          goto LABEL_120;
        }

        v7 = 0xE90000000000006FLL;
      }

      else
      {
        v7 = 0xE600000000000000;
      }

      v150 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v150)
      {
        goto LABEL_118;
      }

      if (v148 == ++v149)
      {
        goto LABEL_116;
      }
    }

LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    swift_once();
  }

LABEL_116:

  v151 = v171;
LABEL_119:
  sub_1001FFA48(v198);
  memcpy(aBlock, v198, 0x121uLL);
  sub_1001E4158();
  v152 = [v169 slotID];
  v153 = swift_allocObject();
  v153[2] = v151;
  memcpy(v153 + 3, aBlock, 0x121uLL);
  v153[40] = v197;
  v153[41] = v169;
  v154 = v151;
  v155 = v169;
  v197;
LABEL_120:
  sub_1001F1774(v152, sub_1002050B0, v153);

  v156 = static os_log_type_t.default.getter();
  v157 = swift_allocObject();
  *(v157 + 16) = xmmword_1002EED40;
  v158 = *&v197[v45];
  v159 = sub_1001A551C(&qword_100377040, &qword_1002F21E8);
  *(v157 + 56) = v159;
  *(v157 + 64) = sub_1001AD0C8(&qword_100377048, &qword_100377040, &qword_1002F21E8, &protocol conformance descriptor for [A]);
  *(v157 + 32) = v158;

  os_log(_:dso:log:type:_:)("CarrierInfoArray RAT data1 %{private}@", 38, 2, &_mh_execute_header, v190, v156, v157);

  v160 = [objc_opt_self() defaultCenter];
  if (qword_100374FF0 != -1)
  {
    swift_once();
  }

  v161 = static NSNotificationName.carrierUpdate;
  sub_1001A551C(&qword_100377050, &qword_1002F21F0);
  v162 = swift_allocObject();
  *(v162 + 16) = xmmword_1002EED40;
  v198[0] = 0x7372656972726163;
  v198[1] = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  v163 = *&v197[v45];
  *(v162 + 96) = v159;
  *(v162 + 72) = v163;

  sub_1001FD020(v162);
  swift_setDeallocating();
  sub_1001AC99C(v162 + 32, &qword_100377058, &qword_1002F21F8);
  swift_deallocClassInstance();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v160 postNotificationName:v161 object:0 userInfo:isa];

  v30 = v171;
LABEL_123:
}