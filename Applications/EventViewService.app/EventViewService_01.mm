uint64_t sub_10001EF6C(uint64_t *a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_task_alloc();
  v1[4] = v5;
  *v5 = v1;
  v5[1] = sub_1000096E8;

  return sub_1000ABD58(v3, v4);
}

uint64_t sub_10001F02C(uint64_t *a1)
{
  v1 = a1[3];
  if (v1)
  {
    v2 = *a1;
    v3 = a1[1];

    sub_10015B530(v2, v3, 6, v1);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10001FAEC(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10001F0EC(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = type metadata accessor for Sport();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1 + v2, 1, 1, v3);
  v5 = (v1 + *(*v1 + 104));
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(v1 + *(*v1 + 112)) = 1;
  *(v1 + *(*v1 + 120)) = _swiftEmptyArrayStorage;
  v6 = *(*v1 + 128);
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + *(*v1 + 136)) = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  memset(v35, 0, 64);
  sub_10002089C(&v31, v30);
  sub_100006C2C(v35);
  v8 = (v1 + *(*v1 + 152));
  v9 = v34;
  v8[2] = v33;
  v8[3] = v9;
  v10 = v32;
  *v8 = v31;
  v8[1] = v10;
  v11 = (v1 + *(*v1 + 160));
  *v11 = 0;
  v11[1] = 0;
  v12 = (v1 + *(*v1 + 168));
  v13 = objc_opt_self();
  v14 = [v13 mainBundle];
  v36._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD00000000000002ALL;
  v15._object = 0x80000001001C4970;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v36);

  *v12 = v17;
  v18 = (v1 + *(*v1 + 176));
  v19 = [v13 mainBundle];
  v37._object = 0xE000000000000000;
  v20._object = 0x80000001001C49C0;
  v20._countAndFlagsBits = 0xD000000000000029;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v37);

  *v18 = v22;
  v23 = (v1 + *(*v1 + 184));
  v24 = [v13 mainBundle];
  v38._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0xD000000000000037;
  v25._object = 0x80000001001C49F0;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v38._countAndFlagsBits = 0;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v38);

  *v23 = v27;
  ObservationRegistrar.init()();
  (*(v4 + 32))(v1 + *(*v1 + 144), a1, v3);
  return v1;
}

uint64_t sub_10001F4CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10001FAEC(&qword_100221E20, type metadata accessor for EventController, &unk_1001BA890);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC16EventViewService15EventController__state;
  swift_beginAccess();
  return sub_10001F74C(v3 + v4, a2, type metadata accessor for EventController.State);
}

uint64_t sub_10001F5AC(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for EventController.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10001F74C(a1, v6, type metadata accessor for EventController.State);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_10001FAEC(&qword_100221E20, type metadata accessor for EventController, &unk_1001BA890);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000206F8(v6, type metadata accessor for EventController.State);
}

uint64_t sub_10001F74C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10001F7B4()
{
  result = qword_100221E50;
  if (!qword_100221E50)
  {
    sub_10000460C(&qword_100221DF8, &qword_1001B5340);
    sub_10001F840();
    sub_10001F920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E50);
  }

  return result;
}

unint64_t sub_10001F840()
{
  result = qword_100221E58;
  if (!qword_100221E58)
  {
    sub_10000460C(&qword_100221DF0, &qword_1001B5338);
    sub_10000BFFC(&qword_100221E60, &qword_100221E00, &qword_1001B5348, &unk_1001BC878);
    sub_10000BFFC(&qword_100221E68, &qword_100221DD0, &qword_1001B5318, &unk_1001BC878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E58);
  }

  return result;
}

unint64_t sub_10001F920()
{
  result = qword_100221E70;
  if (!qword_100221E70)
  {
    sub_10000460C(&qword_100221DC0, &unk_1001B5300);
    sub_10000BFFC(&qword_100221E78, &qword_100221DC8, &qword_1001B5310, &unk_1001C2700);
    sub_10000BFFC(&qword_100221E80, &qword_100221DB0, &qword_1001B52F0, &unk_1001B8F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E70);
  }

  return result;
}

unint64_t sub_10001FA04()
{
  result = qword_100221E88;
  if (!qword_100221E88)
  {
    sub_10000460C(&qword_100221DA0, &qword_1001B52E0);
    sub_10000BFFC(&qword_100221E48, &qword_100221DA8, &qword_1001B52E8, &unk_1001BC878);
    sub_10001FAEC(&qword_1002216F8, type metadata accessor for ErrorView, &unk_1001BFEAC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E88);
  }

  return result;
}

uint64_t sub_10001FAEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001FB34()
{
  result = qword_100221E90;
  if (!qword_100221E90)
  {
    sub_10000460C(&qword_100221E08, &unk_1001B5350);
    sub_10001F7B4();
    sub_10001FA04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221E90);
  }

  return result;
}

uint64_t sub_10001FBC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(*v2 + 96);
  v4 = a2(0);
  v5 = *(v4 - 8);
  (*(v5 + 56))(v2 + v3, 1, 1, v4);
  *(v2 + *(*v2 + 104)) = 1;
  v6 = (v2 + *(*v2 + 112));
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(v2 + *(*v2 + 120)) = _swiftEmptyArrayStorage;
  *(v2 + *(*v2 + 128)) = 0;
  v7 = (v2 + *(*v2 + 144));
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v26._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD00000000000002ALL;
  v10._object = 0x80000001001C4970;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v26);

  *v7 = v12;
  v13 = (v2 + *(*v2 + 152));
  *v13 = 0xD000000000000011;
  v13[1] = 0x80000001001C49A0;
  v14 = (v2 + *(*v2 + 160));
  v15 = [v8 mainBundle];
  v27._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0xD000000000000029;
  v16._object = 0x80000001001C49C0;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v27);

  *v14 = v18;
  v19 = (v2 + *(*v2 + 168));
  v20 = [v8 mainBundle];
  v28._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0xD000000000000037;
  v21._object = 0x80000001001C49F0;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v28);

  *v19 = v23;
  ObservationRegistrar.init()();
  (*(v5 + 32))(v2 + *(*v2 + 136), a1, v4);
  return v2;
}

uint64_t sub_10001FEEC(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v59 = a1;
  v3 = sub_1000024C4(&qword_100221710, &unk_1001B4470);
  __chkstk_darwin(v3 - 8);
  v63 = &v58 - v4;
  v5 = *(*v2 + 128);
  v6 = type metadata accessor for Music();
  v58 = *(v6 - 8);
  v7 = v58 + 56;
  v8 = *(v58 + 56);
  v8(v2 + v5, 1, 1, v6);
  v9 = v2 + *(*v2 + 136);
  v62 = v7;
  v61 = v8;
  v8(v9, 1, 1, v6);
  v10 = (v2 + *(*v2 + 144));
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  *(v2 + *(*v2 + 152)) = 1;
  *(v2 + *(*v2 + 160)) = _swiftEmptyArrayStorage;
  v11 = *(*v2 + 168);
  v12 = type metadata accessor for Artist();
  (*(*(v12 - 8) + 56))(v2 + v11, 1, 1, v12);
  v13 = *(*v2 + 176);
  v14 = type metadata accessor for Playlist();
  (*(*(v14 - 8) + 56))(v2 + v13, 1, 1, v14);
  v15 = *(*v2 + 184);
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 56))(v2 + v15, 1, 1, v16);
  *(v2 + *(*v2 + 192)) = 0;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  memset(v69, 0, 64);
  sub_10002089C(&v65, v64);
  sub_100006C2C(v69);
  v17 = (v2 + *(*v2 + 232));
  v18 = v68;
  v17[2] = v67;
  v17[3] = v18;
  v19 = v66;
  *v17 = v65;
  v17[1] = v19;
  v20 = (v2 + *(*v2 + 240));
  *v20 = 0;
  v20[1] = 0;
  v21 = v2 + *(*v2 + 248);
  *v21 = LocalizedStringKey.init(stringLiteral:)();
  *(v21 + 8) = v22;
  *(v21 + 16) = v23 & 1;
  *(v21 + 24) = v24;
  v25 = (v2 + *(*v2 + 256));
  v26 = objc_opt_self();
  v27 = [v26 mainBundle];
  v70._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD00000000000002ALL;
  v28._object = 0x80000001001C4970;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v70._countAndFlagsBits = 0;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v27, v29, v70);

  *v25 = v30;
  v31 = (v2 + *(*v2 + 264));
  v32 = [v26 mainBundle];
  v71._object = 0xE000000000000000;
  v33._countAndFlagsBits = 0xD00000000000002DLL;
  v33._object = 0x80000001001C4A60;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v71._countAndFlagsBits = 0;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, v71);

  *v31 = v35;
  v36 = (v2 + *(*v2 + 272));
  v37 = [v26 mainBundle];
  v72._object = 0xE000000000000000;
  v38._countAndFlagsBits = 0xD00000000000003ALL;
  v38._object = 0x80000001001C4A90;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  v72._countAndFlagsBits = 0;
  v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, 0, v37, v39, v72);

  *v36 = v40;
  v41 = (v2 + *(*v2 + 280));
  *v41 = 0xD000000000000010;
  v41[1] = 0x80000001001C4AD0;
  v42 = (v2 + *(*v2 + 288));
  v43 = [v26 mainBundle];
  v73._object = 0xE000000000000000;
  v44._countAndFlagsBits = 0xD000000000000029;
  v44._object = 0x80000001001C49C0;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v73._countAndFlagsBits = 0;
  v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, 0, v43, v45, v73);

  *v42 = v46;
  v47 = (v2 + *(*v2 + 296));
  v48 = [v26 mainBundle];
  v74._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0xD000000000000037;
  v49._object = 0x80000001001C49F0;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v74._countAndFlagsBits = 0;
  v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, 0, v48, v50, v74);

  *v47 = v51;
  v52 = v59;
  v53 = v58;
  v54 = v60;
  ObservationRegistrar.init()();
  (*(v53 + 16))(v2 + *(*v2 + 200), v52, v6);
  v55 = *(v53 + 48);
  if (v55(v54, 1, v6) == 1)
  {
    v56 = v63;
    (*(v53 + 32))(v63, v52, v6);
    if (v55(v54, 1, v6) != 1)
    {
      sub_1000050C4(v54, &qword_100221710, &unk_1001B4470);
    }
  }

  else
  {
    (*(v53 + 8))(v52, v6);
    v56 = v63;
    (*(v53 + 32))(v63, v54, v6);
  }

  v61(v56, 0, 1, v6);
  sub_10001AE00(v56, v2 + *(*v2 + 208), &qword_100221710, &unk_1001B4470);
  return v2;
}

uint64_t sub_100020698@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isPresented.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000206C8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isPresented.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000206F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000207C0()
{

  return swift_deallocObject();
}

uint64_t sub_100020808()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000BD00;

  return sub_10001EF6C((v0 + 16));
}

unint64_t sub_100020918()
{
  result = qword_100221EC0;
  if (!qword_100221EC0)
  {
    sub_10000460C(&qword_100221EC8, &unk_1001B54B0);
    sub_10000B9A0();
    sub_10001FB34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221EC0);
  }

  return result;
}

uint64_t sub_1000209A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a1;
  v5 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v55 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v51 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v47 = *(v9 - 8);
  v48 = v9;
  __chkstk_darwin(v9);
  v46 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Date.FormatStyle();
  v11 = *(v44 - 8);
  v12 = __chkstk_darwin(v44);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v41 = &v41 - v16;
  v17 = __chkstk_darwin(v15);
  v42 = &v41 - v18;
  v19 = __chkstk_darwin(v17);
  v43 = &v41 - v20;
  __chkstk_darwin(v19);
  v45 = &v41 - v21;
  v22 = type metadata accessor for Date();
  v49 = *(v22 - 8);
  v50 = v22;
  __chkstk_darwin(v22);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DateInterval();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 16))(a2, a3);
  DateInterval.start.getter();
  (*(v26 + 8))(v28, v25);
  sub_1000213BC(a2, a3);
  v29 = v41;
  Date.FormatStyle.weekday(_:)();
  v30 = *(v11 + 8);
  v31 = v14;
  v32 = v44;
  v30(v31, v44);
  v33 = v46;
  static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
  v34 = v42;
  Date.FormatStyle.day(_:)();
  (*(v47 + 8))(v33, v48);
  v35 = v32;
  v30(v29, v32);
  v36 = v51;
  static Date.FormatStyle.Symbol.Month.abbreviated.getter();
  v37 = v43;
  Date.FormatStyle.month(_:)();
  (*(v53 + 8))(v36, v54);
  v30(v34, v35);
  v38 = v55;
  static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  v39 = v45;
  Date.FormatStyle.year(_:)();
  (*(v56 + 8))(v38, v57);
  v30(v37, v35);
  sub_100023A90(&qword_100221EF8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v30(v39, v35);
  (*(v49 + 8))(v24, v50);
  return v58;
}

uint64_t sub_100020F44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v39 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.FormatStyle();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v30 - v12;
  __chkstk_darwin(v11);
  v31 = &v30 - v14;
  v38 = type metadata accessor for Date();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v30 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DateInterval();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  DateInterval.start.getter();
  (*(v17 + 8))(v19, v16);
  sub_1000213BC(a1, a2);
  v20 = v32;
  static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
  Date.FormatStyle.day(_:)();
  (*(v35 + 8))(v20, v37);
  v21 = v34;
  v22 = *(v33 + 8);
  v22(v10, v34);
  v23 = v39;
  static Date.FormatStyle.Symbol.Month.wide.getter();
  v24 = v31;
  Date.FormatStyle.month(_:)();
  (*(v40 + 8))(v23, v41);
  v25 = v21;
  v22(v13, v21);
  sub_100023A90(&qword_100221EF8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  v26 = v24;
  v27 = v25;
  v28 = v30;
  Date.formatted<A>(_:)();
  v22(v26, v27);
  (*(v36 + 8))(v28, v38);
  return v42;
}

uint64_t sub_1000213BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for Calendar();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for TimeZone();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000024C4(&qword_100221F00, &qword_1001B5500);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_1000024C4(&qword_100221F08, &qword_1001B5508);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  v14 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  (*(a2 + 24))(a1, a2);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  return Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
}

uint64_t sub_100021688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date.FormatStyle.Symbol.Minute();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.FormatStyle.Symbol.Hour.AMPMStyle();
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Date.FormatStyle.Symbol.Hour();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Date.FormatStyle();
  v31 = *(v33 - 8);
  v9 = __chkstk_darwin(v33);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v29 - v13;
  __chkstk_darwin(v12);
  v29 = &v29 - v15;
  v37 = type metadata accessor for Date();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DateInterval();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2);
  DateInterval.start.getter();
  (*(v19 + 8))(v21, v18);
  sub_1000213BC(a1, a2);
  v22 = v32;
  static Date.FormatStyle.Symbol.Hour.AMPMStyle.abbreviated.getter();
  v23 = v30;
  static Date.FormatStyle.Symbol.Hour.defaultDigits(amPM:)();
  (*(v38 + 8))(v22, v39);
  Date.FormatStyle.hour(_:)();
  (*(v34 + 8))(v23, v36);
  v24 = *(v31 + 8);
  v25 = v33;
  v24(v11, v33);
  v26 = v40;
  static Date.FormatStyle.Symbol.Minute.defaultDigits.getter();
  v27 = v29;
  Date.FormatStyle.minute(_:)();
  (*(v41 + 8))(v26, v42);
  v24(v14, v25);
  sub_100023A90(&qword_100221EF8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v24(v27, v25);
  (*(v35 + 8))(v17, v37);
  return v43;
}

uint64_t sub_100021B98(uint64_t a1, uint64_t a2)
{
  v46 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.FormatStyle();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v40 = &v35 - v11;
  v45 = type metadata accessor for Date();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DateInterval();
  v14 = *(v37 - 8);
  __chkstk_darwin(v37);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() mainBundle];
  v47._object = 0xE000000000000000;
  v18._object = 0x80000001001C49C0;
  v18._countAndFlagsBits = 0xD000000000000029;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v47._countAndFlagsBits = 0;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v47);
  object = v20._object;
  countAndFlagsBits = v20._countAndFlagsBits;

  sub_1000024C4(&qword_100221A38, &qword_1001BA820);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1001B3B50;
  v22 = a2;
  v23 = *(a2 + 16);
  v36 = v2;
  v23(a1, a2);
  DateInterval.start.getter();
  (*(v14 + 8))(v16, v37);
  sub_1000213BC(a1, a2);
  static Date.FormatStyle.Symbol.Weekday.abbreviated.getter();
  v24 = v40;
  Date.FormatStyle.weekday(_:)();
  (*(v44 + 8))(v6, v46);
  v25 = v42;
  v26 = *(v41 + 8);
  v27 = v26(v10, v42);
  *(v21 + 56) = &type metadata for String;
  v30 = sub_100017D20(v27, v28, v29);
  *(v21 + 64) = v30;
  sub_100023A90(&qword_100221EF8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v26(v24, v25);
  (*(v43 + 8))(v13, v45);
  v31 = sub_100021688(a1, v22);
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v30;
  *(v21 + 72) = v31;
  *(v21 + 80) = v32;
  v33 = String.init(format:_:)();

  return v33;
}

uint64_t sub_100022020(uint64_t a1, uint64_t a2)
{
  v46 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.FormatStyle();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v40 = &v35 - v11;
  v45 = type metadata accessor for Date();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DateInterval();
  v14 = *(v37 - 8);
  __chkstk_darwin(v37);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() mainBundle];
  v47._object = 0xE000000000000000;
  v18._object = 0x80000001001C49F0;
  v18._countAndFlagsBits = 0xD000000000000037;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v47._countAndFlagsBits = 0;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v47);
  object = v20._object;
  countAndFlagsBits = v20._countAndFlagsBits;

  sub_1000024C4(&qword_100221A38, &qword_1001BA820);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1001B3B50;
  v22 = a2;
  v23 = *(a2 + 16);
  v36 = v2;
  v23(a1, a2);
  DateInterval.start.getter();
  (*(v14 + 8))(v16, v37);
  sub_1000213BC(a1, a2);
  static Date.FormatStyle.Symbol.Weekday.wide.getter();
  v24 = v40;
  Date.FormatStyle.weekday(_:)();
  (*(v44 + 8))(v6, v46);
  v25 = v42;
  v26 = *(v41 + 8);
  v27 = v26(v10, v42);
  *(v21 + 56) = &type metadata for String;
  v30 = sub_100017D20(v27, v28, v29);
  *(v21 + 64) = v30;
  sub_100023A90(&qword_100221EF8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v26(v24, v25);
  (*(v43 + 8))(v13, v45);
  v31 = sub_100021688(a1, v22);
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v30;
  *(v21 + 72) = v31;
  *(v21 + 80) = v32;
  v33 = String.init(format:_:)();

  return v33;
}

uint64_t sub_1000224A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v68 = type metadata accessor for Calendar();
  v70 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TimeZone();
  v8 = *(v7 - 8);
  v71 = v7;
  v72 = v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v50 - v12;
  v14 = type metadata accessor for DateInterval();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Date();
  v69 = *(v65 - 8);
  v18 = __chkstk_darwin(v65);
  v64 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v50 - v21;
  __chkstk_darwin(v20);
  v63 = &v50 - v23;
  v24 = a2;
  v25 = a2 + 16;
  v26 = *(a2 + 16);
  v27 = a1;
  v28 = a1;
  v29 = v24;
  v55 = v26;
  v56 = v25;
  (v26)(v28);
  DateInterval.start.getter();
  v30 = *(v15 + 8);
  v57 = v15 + 8;
  v58 = v14;
  v54 = v30;
  v30(v17, v14);
  v31 = *(v29 + 24);
  v61 = v27;
  v62 = v3;
  v60 = v29;
  v53 = v31;
  v31(v27, v29);
  v66 = v13;
  v32 = TimeZone.secondsFromGMT(for:)();
  v33 = v67;
  static Calendar.current.getter();
  Calendar.timeZone.getter();
  v34 = *(v70 + 8);
  v35 = v70 + 8;
  v34(v33, v68);
  v36 = TimeZone.secondsFromGMT(for:)();
  v37 = *(v72 + 8);
  v59 = v11;
  v72 += 8;
  result = v37(v11, v71);
  if (__OFSUB__(v32, v36))
  {
    __break(1u);
  }

  else
  {
    Date.addingTimeInterval(_:)();
    v70 = v35;
    v37(v66, v71);
    v39 = *(v69 + 8);
    v69 += 8;
    v50 = v39;
    v39(v22, v65);
    v40 = v61;
    v51 = v34;
    v41 = v37;
    v42 = v60;
    v55(v61, v60);
    DateInterval.end.getter();
    v54(v17, v58);
    v43 = v42;
    v44 = v41;
    v53(v40, v43);
    v45 = TimeZone.secondsFromGMT(for:)();
    v46 = v67;
    static Calendar.current.getter();
    v47 = v59;
    Calendar.timeZone.getter();
    v51(v46, v68);
    v48 = TimeZone.secondsFromGMT(for:)();
    result = v44(v47, v71);
    if (!__OFSUB__(v45, v48))
    {
      v49 = v64;
      Date.addingTimeInterval(_:)();
      v44(v66, v71);
      v50(v49, v65);
      return DateInterval.init(start:end:)();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000229F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v39 = a3;
  v38 = sub_1000024C4(&qword_100221EE8, &qword_1001B54F8);
  v5 = __chkstk_darwin(v38);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v36 = &v34 - v7;
  v8 = type metadata accessor for Date();
  v37 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v41 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v34 - v11;
  v40 = type metadata accessor for DateInterval();
  v13 = *(v40 - 8);
  v14 = __chkstk_darwin(v40);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  sub_1000224A8(a1, a2, &v34 - v17);
  DateInterval.start.getter();
  v19 = *(v13 + 8);
  v20 = v18;
  v21 = v40;
  v19(v20, v40);
  sub_1000224A8(a1, a2, v16);
  v22 = v41;
  DateInterval.end.getter();
  v19(v16, v21);
  sub_100023A90(&qword_100221EF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v25 = v36;
    v24 = v37;
    v26 = *(v37 + 32);
    v26(v36, v12, v8);
    v27 = v38;
    v26((v25 + *(v38 + 48)), v22, v8);
    v28 = v35;
    sub_1000239B0(v25, v35);
    v29 = *(v27 + 48);
    v30 = v39;
    v26(v39, v28, v8);
    v31 = *(v24 + 8);
    v31(v28 + v29, v8);
    sub_100023A20(v25, v28);
    v32 = *(v27 + 48);
    v33 = sub_1000024C4(&qword_100221ED8, &qword_1001B54F0);
    v26(&v30[*(v33 + 36)], (v28 + v32), v8);
    return (v31)(v28, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100022D9C(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v22 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.IntervalFormatStyle();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v21 - v12;
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  v16 = sub_1000024C4(&qword_100221ED8, &qword_1001B54F0);
  __chkstk_darwin(v16 - 8);
  v18 = &v21 - v17;
  sub_1000229F0(a1, v21, &v21 - v17);
  static FormatStyle<>.interval.getter();
  Date.IntervalFormatStyle.day()();
  v19 = *(v7 + 8);
  v19(v10, v6);
  static Date.FormatStyle.Symbol.Month.abbreviated.getter();
  Date.IntervalFormatStyle.month(_:)();
  (*(v3 + 8))(v5, v22);
  v19(v13, v6);
  sub_100023A90(&qword_100221EE0, &type metadata accessor for Date.IntervalFormatStyle, &protocol conformance descriptor for Date.IntervalFormatStyle);
  Range<>.formatted<A>(_:)();
  v19(v15, v6);
  sub_100023948(v18);
  return v23;
}

uint64_t sub_100023058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date.FormatStyle.DateStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000024C4(&qword_100221ED8, &qword_1001B54F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v17 - v13;
  sub_1000229F0(a1, a2, &v17 - v13);
  static Date.FormatStyle.DateStyle.abbreviated.getter();
  static Date.FormatStyle.TimeStyle.omitted.getter();
  v15 = Range<>.formatted(date:time:)();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  sub_100023948(v14);
  return v15;
}

uint64_t sub_100023254(uint64_t a1, uint64_t a2)
{
  if (sub_1000232C8(a1, a2))
  {

    return sub_100022D9C(a1, a2);
  }

  else
  {

    return sub_100020F44(a1, a2);
  }
}

uint64_t sub_1000232C8(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = type metadata accessor for Date();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = __chkstk_darwin(v3);
  v42 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  v8 = type metadata accessor for DateInterval();
  v37 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v36 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v33 - v11;
  v13 = type metadata accessor for Calendar();
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13);
  v35 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DateComponents();
  v38 = *(v15 - 8);
  v39 = v15;
  __chkstk_darwin(v15);
  v34 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_1000024C4(&qword_100221F10, &unk_1001B5510);
  v17 = type metadata accessor for Calendar.Component();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1001B49B0;
  (*(v18 + 104))(v20 + v19, enum case for Calendar.Component.day(_:), v17);
  sub_1000B08B0(v20);
  swift_setDeallocating();
  (*(v18 + 8))(v20 + v19, v17);
  swift_deallocClassInstance();
  v21 = v43;
  sub_1000224A8(a1, v43, v12);
  v22 = v7;
  DateInterval.start.getter();
  v23 = *(v37 + 8);
  v23(v12, v8);
  v24 = v36;
  sub_1000224A8(a1, v21, v36);
  v25 = v42;
  DateInterval.end.getter();
  v23(v24, v8);
  v27 = v34;
  v26 = v35;
  Calendar.dateComponents(_:from:to:)();

  v28 = v45;
  v29 = *(v44 + 8);
  v29(v25, v45);
  v29(v22, v28);
  (*(v40 + 8))(v26, v41);
  v30 = DateComponents.day.getter();
  LODWORD(v28) = v31;
  (*(v38 + 8))(v27, v39);
  return (v30 > 0) & ~v28;
}

uint64_t sub_10002376C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000232C8(a1, a2))
  {

    return sub_100023058(a1, a2);
  }

  else
  {
    static Date.FormatStyle.Symbol.Weekday.wide.getter();
    v9 = sub_1000209A8(v7, a1, a2);
    (*(v5 + 8))(v7, v4);
    return v9;
  }
}

uint64_t sub_10002389C(uint64_t a1, uint64_t a2)
{
  if (sub_1000232C8(a1, a2))
  {
    return 0;
  }

  else
  {
    return sub_100021688(a1, a2);
  }
}

uint64_t sub_1000238F0(uint64_t a1)
{
  result = sub_100023A90(&qword_100221ED0, &type metadata accessor for Time, &protocol conformance descriptor for Time);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100023948(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100221ED8, &qword_1001B54F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000239B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100221EE8, &qword_1001B54F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100221EE8, &qword_1001B54F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023A90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100023AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
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

    return (v10 + 1);
  }
}

uint64_t sub_100023BBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ShareButton(uint64_t a1)
{
  result = qword_100221F90;
  if (!qword_100221F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100023CC0(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = sub_100023D44();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100023D44()
{
  result = qword_100221FA0;
  if (!qword_100221FA0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100221FA0);
  }

  return result;
}

uint64_t sub_100023DB0()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100221F18 = result;
  unk_100221F20 = v1;
  byte_100221F28 = v2 & 1;
  qword_100221F30 = v3;
  return result;
}

uint64_t sub_100023DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v18[1] = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000024C4(&qword_100221FD0, &qword_1001B5580);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v18 - v13;
  (*(v8 + 16))(v10, v3, v7);
  sub_1000240C4(v3, v6);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_100024214(v6, v16 + v15);
  ShareLink<>.init<>(item:subject:message:onPresentationChanged:)();
  if (qword_100220B40 != -1)
  {
    swift_once();
  }

  sub_1000242EC();
  View.accessibilityLabel(_:)();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1000240C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024128()
{
  v1 = *(type metadata accessor for ShareButton(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_100024214(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024278(char a1)
{
  result = type metadata accessor for ShareButton(0);
  if (a1)
  {
    return (*(v1 + *(result + 20) + ((*(*(result - 8) + 80) + 16) & ~*(*(result - 8) + 80))))();
  }

  return result;
}

unint64_t sub_1000242EC()
{
  result = qword_100221FD8;
  if (!qword_100221FD8)
  {
    sub_10000460C(&qword_100221FD0, &qword_1001B5580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221FD8);
  }

  return result;
}

unint64_t sub_100024354()
{
  result = qword_100221FE0;
  if (!qword_100221FE0)
  {
    sub_10000460C(qword_100221FE8, &qword_1001B5588);
    sub_1000242EC();
    sub_10001B9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221FE0);
  }

  return result;
}

void sub_1000243E0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_100026A1C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObservationRegistrar();
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_100024530()
{
  v0 = sub_100026AA4();

  return v0;
}

uint64_t sub_100024568(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = v3 + *(v6 + 152);
  v16 = *v7;
  v14 = a1;
  v15 = a2;
  sub_1000024C4(&qword_100222080, &unk_1001B56B8);
  v13 = *(v6 + 80);
  sub_100026B6C();
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v8)
  {
    *v7 = a1;
    *(v7 + 1) = a2;
  }

  else
  {
    __chkstk_darwin(v8);
    v12[5] = *(&v13 + 1);
    KeyPath = swift_getKeyPath();
    v11 = __chkstk_darwin(KeyPath);
    v12[2] = v3;
    v12[3] = a1;
    v12[4] = a2;
    sub_100024794(v11, sub_100026C44, v12, &type metadata for () + 8);
  }
}

uint64_t sub_10002486C()
{
  v1 = *(v0 + *(*v0 + 120));
  (*(*(*v0 + 88) + 104))(*(*v0 + 80), *(*v0 + 88));
  swift_getAssociatedTypeWitness();
  v2 = Array.count.getter();

  v3 = 4;
  if (v2 < 4)
  {
    v3 = v2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100024958@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1000246F4(KeyPath, v4, v5);

  v6 = *(*v1 + 176);
  swift_beginAccess();
  return sub_100026DBC(v1 + v6, a1);
}

uint64_t sub_100024A08(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100222078, &unk_1001B5670);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_100026DBC(a1, &v6 - v3);
  return sub_100024A9C(v4);
}

uint64_t sub_100024A9C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1000024C4(&qword_100222078, &unk_1001B5670);
  __chkstk_darwin(v5);
  v7 = v14 - v6;
  v8 = *(v4 + 176);
  swift_beginAccess();
  sub_100026DBC(v1 + v8, v7);
  v14[0] = *(v4 + 80);
  sub_100026E2C();
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = sub_1000050C4(v7, &qword_100222078, &unk_1001B5670);
  if (v9)
  {
    swift_beginAccess();
    sub_100026EE0(a1, v2 + v8);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v10);
    v14[-1] = v14[0];
    KeyPath = swift_getKeyPath();
    v12 = __chkstk_darwin(KeyPath);
    *&v14[-1] = v2;
    *(&v14[-1] + 1) = a1;
    sub_100024794(v12, sub_100026F84, &v14[-2], &type metadata for () + 8);
  }

  return sub_1000050C4(a1, &qword_100222078, &unk_1001B5670);
}

uint64_t sub_100024CC4(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 176);
  swift_beginAccess();
  sub_100026EE0(a2, a1 + v4);
  return swift_endAccess();
}

char *sub_100024D3C()
{
  v0 = type metadata accessor for GridItem.Size();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for GridItem();
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v3 = xmmword_1001B5590;
  (*(v1 + 104))(v3, enum case for GridItem.Size.flexible(_:), v0);
  GridItem.init(_:spacing:alignment:)();
  v7 = sub_10002486C();
  return sub_1000EF744(v6, v7);
}

BOOL sub_100024EFC()
{
  v1 = v0;
  v2 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  (*(*(*v0 + 88) + 96))(*(*v0 + 80));
  v5 = type metadata accessor for URL();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  sub_1000050C4(v4, &qword_1002214F8, &qword_1001B3D20);
  return v6 != 1 && *(v1 + 40) != 0;
}

BOOL sub_1000250C0()
{
  v1 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  (*(*(*v0 + 88) + 96))(*(*v0 + 80));
  v4 = type metadata accessor for URL();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_1000050C4(v3, &qword_1002214F8, &qword_1001B3D20);
  return v5;
}

uint64_t sub_1000251F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a2;
  v6 = *(*v3 + 88);
  v7 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  (*(v6 + 88))(v7, v6);
  v13 = *(AssociatedTypeWitness - 8);
  v14 = 1;
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    AssociatedTypeWitness = v9;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 40))(a1, v18, 1, AssociatedTypeWitness, AssociatedConformanceWitness);
    v14 = 0;
    v10 = v13;
  }

  (*(v10 + 8))(v12, AssociatedTypeWitness);
  v16 = type metadata accessor for URL();
  return (*(*(v16 - 8) + 56))(a3, v14, 1, v16);
}

uint64_t sub_100025464()
{
  v1 = *(v0 + *(*v0 + 168));
  v2 = v1[5];
  v3 = v1[6];
  sub_10001BED0(v1 + 2, v2);
  return (*(v3 + 16))(v2, v3);
}

uint64_t sub_1000254D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v12 = swift_allocObject();
  sub_100025558(a1, a2, a3, a4, a5, v6);
  return v12;
}

char *sub_100025558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v13 = *v6;
  v14 = &v6[*(*v6 + 128)];
  *v14 = LocalizedStringKey.init(stringLiteral:)();
  *(v14 + 1) = v15;
  v14[16] = v16 & 1;
  *(v14 + 3) = v17;
  v18 = &v6[*(*v6 + 136)];
  *v18 = LocalizedStringKey.init(stringLiteral:)();
  *(v18 + 1) = v19;
  v18[16] = v20 & 1;
  *(v18 + 3) = v21;
  v22 = &v6[*(*v6 + 144)];
  *v22 = LocalizedStringKey.init(stringLiteral:)();
  *(v22 + 1) = v23;
  v22[16] = v24 & 1;
  *(v22 + 3) = v25;
  v26 = &v6[*(*v6 + 152)];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v6[*(*v6 + 160)] = 0x4008000000000000;
  v27 = *(*v6 + 168);
  if (qword_100220C18 != -1)
  {
    swift_once();
  }

  *&v6[v27] = qword_100239130;
  v28 = *(*v6 + 176);
  v29 = type metadata accessor for AttributedString();
  (*(*(v29 - 8) + 56))(&v6[v28], 1, 1, v29);

  ObservationRegistrar.init()();
  *(v6 + 2) = a1;
  *(v6 + 3) = a2;
  *(v6 + 4) = a3;
  *(v6 + 5) = a4;
  (*(*(*(v13 + 80) - 8) + 32))(&v6[*(*v6 + 112)], a5);
  v6[*(*v6 + 120)] = a6 & 1;
  return v6;
}

uint64_t sub_100025818()
{
  sub_10008C108();
  v1 = *(v0 + *(*v0 + 168));
  v2 = v1[5];
  v3 = v1[6];
  sub_10001BED0(v1 + 2, v2);
  return (*(v3 + 72))(v2, v3);
}

uint64_t sub_100025888()
{
  v1 = *(v0 + *(*v0 + 168));
  v2 = v1[5];
  v3 = v1[6];
  sub_10001BED0(v1 + 2, v2);
  return (*(v3 + 80))(v2, v3);
}

void sub_1000258F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + *(*v3 + 168));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_10014002C(a1, v6, AssociatedTypeWitness, AssociatedConformanceWitness);
  v9 = v6[5];
  v10 = v6[6];
  sub_10001BED0(v6 + 2, v9);
  if ((*(v10 + 32))(v9, v10) == 2)
  {
    v11 = 19;
  }

  else
  {
    v12 = v6[5];
    v13 = v6[6];
    sub_10001BED0(v6 + 2, v12);
    if ((*(v13 + 32))(v12, v13) != 3)
    {
      return;
    }

    v11 = 20;
  }

  v14 = v3[2];
  v15 = v3[3];
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = 13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = 13;
  *(inited + 40) = v14;
  *(inited + 48) = v15;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = v11;
  *(inited + 160) = 0;
  *(inited + 168) = 3;
  if (*(a2 + 72))
  {
    v17 = *(a2 + 64);
    v18 = *(a2 + 72);
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v25 = v17;
  v26 = v18;

  sub_100006C80(v11, 0, 3u);

  v19 = sub_1001894F4(1, 5, 1, inited);
  v23 = v19;
  sub_100006C98(&aBlock, v30);
  sub_100118768(4, v30, &v23, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v20 = String._bridgeToObjectiveC()();
  v21 = swift_allocObject();
  v21[2] = 0xD00000000000001ELL;
  v21[3] = 0x80000001001C4640;
  v21[4] = v19;
  v28 = sub_100026FEC;
  v29 = v21;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_10015B4A4;
  v27 = &unk_100212D40;
  v22 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  sub_100026CDC(v11, 0, 3u);
  _Block_release(v22);
}

uint64_t sub_100025CA4(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v2[23] = *v1;
  type metadata accessor for AttributeContainer();
  v2[24] = swift_task_alloc();
  sub_1000024C4(&qword_100222078, &unk_1001B5670);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for AttributedString();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[29] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[30] = v5;
  v2[31] = v4;

  return _swift_task_switch(sub_100025E24, v5, v4);
}

uint64_t sub_100025E24()
{
  v0[32] = (*(*(v0[23] + 88) + 80))(*(v0[23] + 80));
  v0[33] = v1;
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = String._bridgeToObjectiveC()();
    v0[34] = v3;
    sub_1001A9D04(_swiftEmptyArrayStorage);
    type metadata accessor for DocumentReadingOptionKey(0);
    sub_100026FA0(&qword_100220EE8, type metadata accessor for DocumentReadingOptionKey, &unk_1001B37E4);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v0[35] = isa;

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_100026094;
    v5 = swift_continuation_init();
    v0[17] = sub_1000024C4(&qword_100222098, &qword_1001B56D0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100026430;
    v0[13] = &unk_100212D68;
    v0[14] = v5;
    [v2 loadFromHTMLWithString:v3 options:isa completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100026094()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = *(v1 + 240);
    v4 = *(v1 + 248);
    v5 = sub_100026318;
  }

  else
  {

    v3 = *(v1 + 240);
    v4 = *(v1 + 248);
    v5 = sub_1000261AC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000261AC()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[27];
  v6 = v0[25];
  v7 = v0[21];

  v8 = v0[18];

  v9 = v8;
  v10 = AttributedString.init(_:)();
  v0[20] = v7;
  sub_100026D68(v10, v11, v12);

  AttributedString.subscript.setter();
  (*(v5 + 16))(v6, v3, v4);
  (*(v5 + 56))(v6, 0, 1, v4);
  sub_100024A9C(v6);

  (*(v5 + 8))(v3, v4);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100026318()
{
  v1 = v0[35];
  v2 = v0[34];
  v3 = v0[27];
  v4 = v0[25];
  v7 = v0[26];

  swift_willThrow();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  (*(v3 + 56))(v4, 0, 1, v7);
  sub_100024A9C(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100026430(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = sub_10001BED0((a1 + 32), *(a1 + 56));
  v7 = *v6;
  if (a4)
  {
    sub_1000024C4(qword_1002220B8, &unk_1001B5710);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    if (a2)
    {
      type metadata accessor for DocumentAttributeKey(0);
      sub_100026FA0(&qword_100220ED8, type metadata accessor for DocumentAttributeKey, &unk_1001B37A4);
      v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = *(v7[8] + 40);
      *v12 = a2;
      v12[1] = v11;
      v13 = a2;
      v6 = v7;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v6);
  }
}

void sub_100026568(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v9 = *(v4 + 24);
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v10;
  *(inited + 48) = v9;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = 13;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = 14;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = a1;
  *(inited + 160) = a2;
  *(inited + 168) = a3;
  if (*(a4 + 72))
  {
    v12 = *(a4 + 64);
    v13 = *(a4 + 72);
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v20 = v12;
  v21 = v13;

  sub_100006C80(a1, a2, a3);

  v14 = sub_1001894F4(1, 5, 1, inited);
  v18 = v14;
  sub_100006C98(&aBlock, v25);
  sub_100118768(4, v25, &v18, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  v16[2] = 0xD00000000000001ELL;
  v16[3] = 0x80000001001C4640;
  v16[4] = v14;
  v23 = sub_100006D88;
  v24 = v16;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10015B4A4;
  v22 = &unk_100212CF0;
  v17 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

char *sub_1000267EC()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  sub_1000050C4(v0 + *(*v0 + 176), &qword_100222078, &unk_1001B5670);
  v2 = *(*v0 + 184);
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_1000269AC()
{
  sub_1000267EC();

  return swift_deallocClassInstance();
}

void sub_100026A1C(uint64_t a1)
{
  if (!qword_100222070)
  {
    type metadata accessor for AttributedString();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100222070);
    }
  }
}

uint64_t sub_100026AA4()
{
  KeyPath = swift_getKeyPath();
  sub_1000246F4(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 152));
}

uint64_t sub_100026B34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_100026B60(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_100026B6C()
{
  result = qword_100222088;
  if (!qword_100222088)
  {
    v1 = sub_10000460C(&qword_100222080, &unk_1001B56B8);
    sub_100026BF0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222088);
  }

  return result;
}

unint64_t sub_100026BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100222090;
  if (!qword_100222090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222090);
  }

  return result;
}

uint64_t sub_100026C44()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 152));
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_100026C9C()
{

  return swift_deallocObject();
}

uint64_t sub_100026CDC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_100026D04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100026D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002220A0;
  if (!qword_1002220A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002220A0);
  }

  return result;
}

uint64_t sub_100026DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100222078, &unk_1001B5670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100026E2C()
{
  result = qword_1002220A8;
  if (!qword_1002220A8)
  {
    sub_10000460C(&qword_100222078, &unk_1001B5670);
    sub_100026FA0(&qword_1002220B0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002220A8);
  }

  return result;
}

uint64_t sub_100026EE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100222078, &unk_1001B5670);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100026FA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_100026FFC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1000024C4(&qword_100222140, &qword_1001B57C8);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = static VerticalAlignment.center.getter();
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  *v8 = v9;
  *(v8 + 1) = 0x4028000000000000;
  v8[16] = 0;
  v12 = sub_1000024C4(&qword_100222148, &qword_1001B57D0);
  sub_10002715C(v3, v11, v10, &v8[*(v12 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100028D28(v8, a2);
  v13 = a2 + *(sub_1000024C4(&qword_100222150, &qword_1001B57D8) + 36);
  v14 = v17[5];
  *(v13 + 64) = v17[4];
  *(v13 + 80) = v14;
  *(v13 + 96) = v17[6];
  v15 = v17[1];
  *v13 = v17[0];
  *(v13 + 16) = v15;
  result = v17[3];
  *(v13 + 32) = v17[2];
  *(v13 + 48) = result;
  return result;
}

uint64_t sub_10002715C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v96 = a4;
  v7 = type metadata accessor for AccessibilityTraits();
  v100 = *(v7 - 8);
  v101 = v7;
  __chkstk_darwin(v7);
  v99 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for AccessibilityChildBehavior();
  v93 = *(v97 - 8);
  __chkstk_darwin(v97);
  v90 = v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1000024C4(&qword_100222158, &unk_1001B57E0);
  __chkstk_darwin(v91);
  v88 = (v83 - v10);
  v95 = sub_1000024C4(&qword_100222160, &unk_1001BBF50);
  v92 = *(v95 - 8);
  __chkstk_darwin(v95);
  v89 = v83 - v11;
  v12 = sub_1000024C4(&qword_100222168, &unk_1001B57F0);
  v13 = __chkstk_darwin(v12 - 8);
  v98 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v94 = v83 - v15;
  v103 = a3;
  v104 = a2;
  v17 = type metadata accessor for ArtistEventListHeader(0, a2, a3, v16);
  v18 = *(v17 - 8);
  v83[1] = *(v18 + 64);
  __chkstk_darwin(v17);
  v84 = v83 - v19;
  v20 = type metadata accessor for EnvironmentValues();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v24 - 8);
  v83[0] = v83 - v25;
  v85 = sub_1000024C4(&qword_100222170, &qword_1001B5800);
  v26 = __chkstk_darwin(v85);
  v87 = v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v26);
  v86 = v83 - v30;
  v31 = *(v17 + 36);
  v102 = a1;
  v32 = (a1 + v31);
  v33 = *v32;
  v34 = *(v32 + 8);
  if (v34 == 1)
  {
    v35 = *v32;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v33, 0);
    result = (*(v21 + 8))(v23, v20);
    v35 = v116;
  }

  v37 = v35 * 60.0;
  if (COERCE__INT64(fabs(v35 * 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v37 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v34)
  {
    v131 = *&v33;
    v38 = *&v33;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v39 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v33, 0);
    result = (*(v21 + 8))(v23, v20);
    v38 = v131;
  }

  v40 = v38 * 60.0;
  if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  if (v40 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v40 < 9.22337204e18)
  {
    v41 = v40;
    v42 = v104;
    v43 = v103;
    v44 = type metadata accessor for ArtistEventListHeaderViewModel(0, v104, v103, v29);
    v45 = v41;
    v46 = v102;
    sub_10010DA68(v37, v45, v44, v83[0]);
    static Animation.easeInOut.getter();
    Transaction.init(animation:)();
    v47 = v84;
    (*(v18 + 16))(v84, v46, v17);
    v48 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = v42;
    *(v49 + 24) = v43;
    (*(v18 + 32))(v49 + v48, v47, v17);
    sub_1000024C4(&qword_100222178, &qword_1001B5808);
    sub_100028F94();
    v50 = v86;
    AsyncImage.init(url:scale:transaction:content:)();
    v51 = static HierarchicalShapeStyle.primary.getter();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v52 = v132;
    v53 = v133;
    LODWORD(v43) = v134;
    v54 = v135;
    v55 = v136;
    v56 = v137;
    v57 = static Alignment.center.getter();
    v59 = v58;
    v60 = static Alignment.center.getter();
    v62 = v61;
    *&v110 = v52;
    *(&v110 + 1) = __PAIR64__(v43, v53);
    *&v111 = v54;
    *(&v111 + 1) = v55;
    *&v112 = v56;
    *(&v112 + 1) = v51 | 0x3DCCCCCD00000000;
    LOWORD(v113) = 256;
    *(&v113 + 2) = v108;
    WORD3(v113) = v109;
    *(&v113 + 1) = v57;
    *&v114 = v59;
    *(&v114 + 1) = v60;
    v115 = v61;
    v63 = &v50[*(sub_1000024C4(&qword_1002221F0, &unk_1001B5840) + 36)];
    v64 = v113;
    *(v63 + 2) = v112;
    *(v63 + 3) = v64;
    *(v63 + 4) = v114;
    *(v63 + 10) = v115;
    v65 = v111;
    *v63 = v110;
    *(v63 + 1) = v65;
    v116 = v52;
    v117 = v53;
    v118 = v43;
    v119 = v54;
    v120 = v55;
    v121 = v56;
    v122 = v51;
    v123 = 1036831949;
    v124 = 256;
    v126 = v109;
    v125 = v108;
    v127 = v57;
    v128 = v59;
    v129 = v60;
    v130 = v62;
    sub_10000BEB8(&v110, v107, &qword_100221D08, &qword_1001B51C8);
    sub_1000050C4(&v116, &qword_100221D08, &qword_1001B51C8);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v66 = &v50[*(sub_1000024C4(&qword_1002221F8, &qword_1001B5850) + 36)];
    v67 = v107[1];
    *v66 = v107[0];
    *(v66 + 1) = v67;
    *(v66 + 2) = v107[2];
    v50[*(v85 + 36)] = 1;
    v68 = v50;
    v69 = static HorizontalAlignment.leading.getter();
    v70 = v88;
    *v88 = v69;
    *(v70 + 8) = 0;
    *(v70 + 16) = 1;
    v71 = sub_1000024C4(&qword_100222200, &qword_1001B5858);
    sub_100028204(v102, v70 + *(v71 + 44));
    v72 = v90;
    static AccessibilityChildBehavior.combine.getter();
    v73 = sub_10000BFFC(&qword_100222208, &qword_100222158, &unk_1001B57E0, &protocol conformance descriptor for VStack<A>);
    v74 = v89;
    v75 = v91;
    View.accessibilityElement(children:)();
    (*(v93 + 8))(v72, v97);
    sub_1000050C4(v70, &qword_100222158, &unk_1001B57E0);
    v76 = v99;
    static AccessibilityTraits.isHeader.getter();
    v105 = v75;
    v106 = v73;
    swift_getOpaqueTypeConformance2();
    v78 = v94;
    v77 = v95;
    View.accessibility(addTraits:)();
    (*(v100 + 8))(v76, v101);
    (*(v92 + 8))(v74, v77);
    v79 = v87;
    sub_10000BEB8(v68, v87, &qword_100222170, &qword_1001B5800);
    v80 = v98;
    sub_1000292C0(v78, v98);
    v81 = v96;
    sub_10000BEB8(v79, v96, &qword_100222170, &qword_1001B5800);
    v82 = sub_1000024C4(&qword_100222210, &qword_1001B5860);
    sub_1000292C0(v80, v81 + *(v82 + 48));
    sub_100029330(v78);
    sub_1000050C4(v68, &qword_100222170, &qword_1001B5800);
    sub_100029330(v80);
    return sub_1000050C4(v79, &qword_100222170, &qword_1001B5800);
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_100027CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a3;
  v25 = a4;
  v26 = a2;
  v30 = a5;
  v29 = sub_1000024C4(&qword_1002221C0, &qword_1001B5828);
  __chkstk_darwin(v29);
  v7 = &v24 - v6;
  v27 = sub_1000024C4(&qword_100222288, &unk_1001B5950);
  __chkstk_darwin(v27);
  v9 = &v24 - v8;
  v10 = type metadata accessor for Image.ResizingMode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000024C4(&qword_100222190, &qword_1001B5810);
  __chkstk_darwin(v28);
  v15 = &v24 - v14;
  v16 = type metadata accessor for AsyncImagePhase();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, a1, v16);
  if ((*(v17 + 88))(v19, v16) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v17 + 96))(v19, v16);
    (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
    v21 = Image.resizable(capInsets:resizingMode:)();
    (*(v11 + 8))(v13, v10);
    v31 = v21;
    sub_1000024C4(&qword_1002221A0, &qword_1001B5818);
    sub_1000290FC();
    View.accessibilityIdentifier(_:)();

    sub_10000BEB8(v15, v9, &qword_100222190, &qword_1001B5810);
    swift_storeEnumTagMultiPayload();
    sub_100029078(&qword_100222188, &qword_100222190, &qword_1001B5810, sub_1000290FC);
    sub_100029078(&qword_1002221B8, &qword_1002221C0, &qword_1001B5828, sub_1000291B4);
    _ConditionalContent<>.init(storage:)();

    return sub_1000050C4(v15, &qword_100222190, &qword_1001B5810);
  }

  else
  {
    v23 = type metadata accessor for ArtistEventListHeaderViewModel(0, v24, v25, v20);
    v31 = sub_10010DC5C(v23);
    sub_1000024C4(&qword_1002221D0, &unk_1001B5830);
    sub_1000291B4();
    View.accessibilityIdentifier(_:)();

    sub_10000BEB8(v7, v9, &qword_1002221C0, &qword_1001B5828);
    swift_storeEnumTagMultiPayload();
    sub_100029078(&qword_100222188, &qword_100222190, &qword_1001B5810, sub_1000290FC);
    sub_100029078(&qword_1002221B8, &qword_1002221C0, &qword_1001B5828, sub_1000291B4);
    _ConditionalContent<>.init(storage:)();
    sub_1000050C4(v7, &qword_1002221C0, &qword_1001B5828);
    return (*(v17 + 8))(v19, v16);
  }
}

uint64_t sub_100028204@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_1000024C4(&qword_100222218, &qword_1001B5868);
  v4 = __chkstk_darwin(v3 - 8);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v40 = &v37 - v6;
  v38 = sub_1000024C4(&qword_100222220, &qword_1001B5870);
  __chkstk_darwin(v38);
  v8 = &v37 - v7;
  v9 = sub_1000024C4(&qword_100222228, &qword_1001B5878);
  v10 = __chkstk_darwin(v9 - 8);
  v39 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v37 = &v37 - v12;
  v14 = a1[2];
  v13 = a1[3];
  KeyPath = swift_getKeyPath();
  v16 = &v8[*(sub_1000024C4(&qword_100222230, &unk_1001B58B0) + 36)];
  v17 = *(sub_1000024C4(&qword_100221B70, &qword_1001B7140) + 28);
  v18 = enum case for Text.Case.uppercase(_:);
  v19 = type metadata accessor for Text.Case();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v16 + v17, v18, v19);
  (*(v20 + 56))(v16 + v17, 0, 1, v19);
  *v16 = swift_getKeyPath();
  *v8 = v14;
  *(v8 + 1) = v13;
  v8[16] = 0;
  *(v8 + 3) = _swiftEmptyArrayStorage;
  *(v8 + 4) = KeyPath;
  *(v8 + 5) = 1;
  v8[48] = 0;

  static Font.caption.getter();
  static Font.Weight.semibold.getter();
  v21 = Font.weight(_:)();

  v22 = swift_getKeyPath();
  v23 = &v8[*(sub_1000024C4(&qword_100222238, &unk_1001B5920) + 36)];
  *v23 = v22;
  v23[1] = v21;
  v24 = [objc_opt_self() secondaryLabelColor];
  *&v8[*(v38 + 36)] = Color.init(uiColor:)();
  sub_1000293B0();
  v25 = v37;
  View.accessibilityIdentifier(_:)();
  sub_1000050C4(v8, &qword_100222220, &qword_1001B5870);
  v27 = *a1;
  v26 = a1[1];
  v28 = swift_getKeyPath();

  static Font.title.getter();
  static Font.Weight.bold.getter();
  v29 = Font.weight(_:)();

  v30 = swift_getKeyPath();
  v49 = 0;
  v48 = 0;
  *&v43 = v27;
  *(&v43 + 1) = v26;
  LOBYTE(v44) = 0;
  *(&v44 + 1) = *v51;
  DWORD1(v44) = *&v51[3];
  *(&v44 + 1) = _swiftEmptyArrayStorage;
  *&v45 = v28;
  *(&v45 + 1) = 2;
  LOBYTE(v46) = 0;
  *(&v46 + 1) = *v50;
  DWORD1(v46) = *&v50[3];
  *(&v46 + 1) = v30;
  v47 = v29;
  sub_1000024C4(&qword_100222270, &unk_1001B5940);
  sub_1000295D8();
  v31 = v40;
  View.accessibilityIdentifier(_:)();
  v52[2] = v45;
  v52[3] = v46;
  v53 = v47;
  v52[0] = v43;
  v52[1] = v44;
  sub_1000050C4(v52, &qword_100222270, &unk_1001B5940);
  v32 = v39;
  sub_10000BEB8(v25, v39, &qword_100222228, &qword_1001B5878);
  v33 = v41;
  sub_10000BEB8(v31, v41, &qword_100222218, &qword_1001B5868);
  v34 = v42;
  sub_10000BEB8(v32, v42, &qword_100222228, &qword_1001B5878);
  v35 = sub_1000024C4(&qword_100222280, &qword_1001BC0F0);
  sub_10000BEB8(v33, v34 + *(v35 + 48), &qword_100222218, &qword_1001B5868);
  sub_1000050C4(v31, &qword_100222218, &qword_1001B5868);
  sub_1000050C4(v25, &qword_100222228, &qword_1001B5878);
  sub_1000050C4(v33, &qword_100222218, &qword_1001B5868);
  return sub_1000050C4(v32, &qword_100222228, &qword_1001B5878);
}

uint64_t sub_10002876C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v9 = type metadata accessor for ArtistEventListHeaderViewModel(0, a2, a3, a5);
  (*(*(v9 - 8) + 32))(a4, a1, v9);
  v11 = a4 + *(type metadata accessor for ArtistEventListHeader(0, a2, a3, v10) + 36);
  result = swift_getKeyPath();
  *v11 = result;
  *(v11 + 8) = 0;
  return result;
}

void sub_100028830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ArtistEventListHeaderViewModel(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    sub_10001B850();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000288B8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 32) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 9;
  v11 = (a2 - v7 + 255) >> 8;
  if (v10 <= 3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *&a1[v10];
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = a1[v10]) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8);
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
      v19 = *(a1 + 1);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v17 = (v15 - 1) << (8 * v10);
  if (v10 <= 3)
  {
    v18 = *a1;
  }

  else
  {
    v17 = 0;
    v18 = *a1;
  }

  return v7 + (v18 | v17) + 1;
}

void sub_100028A58(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v12 + ((v11 + 32) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 < a3)
  {
    v14 = (a3 - v10 + 255) >> 8;
    if (v13 <= 3)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v13] = 0;
    }

    else if (v6)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if ((v9 & 0x80000000) != 0)
      {
        v19 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11);
        if (v9 >= a2)
        {
          v23 = *(v7 + 56);
          v24 = a2 + 1;
          v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11;

          v23(v25, v24);
        }

        else
        {
          if (v12 <= 3)
          {
            v20 = ~(-1 << (8 * v12));
          }

          else
          {
            v20 = -1;
          }

          if (v12)
          {
            v21 = v20 & (~v9 + a2);
            if (v12 <= 3)
            {
              v22 = v12;
            }

            else
            {
              v22 = 4;
            }

            bzero(v19, v12);
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
        *(a1 + 1) = 0;
      }

      else
      {
        *(a1 + 1) = a2 - 1;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v17 = ~v10 + a2;
  bzero(a1, v13);
  if (v13 <= 3)
  {
    v18 = (v17 >> 8) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = v17;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v13] = v18;
      }

      else
      {
        *&a1[v13] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v13] = v18;
  }
}

uint64_t sub_100028D28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100222140, &qword_1001B57C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100028D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for ArtistEventListHeader(0, v5, v6, a4);
  v8 = v4 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));

  v10 = *(type metadata accessor for ArtistEventListHeaderViewModel(0, v5, v6, v9) + 40);
  v11 = *(v5 - 8);
  if (!(*(v11 + 48))(v8 + v10, 1, v5))
  {
    (*(v11 + 8))(v8 + v10, v5);
  }

  sub_10001BC5C(*(v8 + *(v7 + 36)), *(v8 + *(v7 + 36) + 8));

  return swift_deallocObject();
}

uint64_t sub_100028EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for ArtistEventListHeader(0, v6, v7, a2) - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_100027CA0(a1, v9, v6, v7, a3);
}

unint64_t sub_100028F94()
{
  result = qword_100222180;
  if (!qword_100222180)
  {
    sub_10000460C(&qword_100222178, &qword_1001B5808);
    sub_100029078(&qword_100222188, &qword_100222190, &qword_1001B5810, sub_1000290FC);
    sub_100029078(&qword_1002221B8, &qword_1002221C0, &qword_1001B5828, sub_1000291B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222180);
  }

  return result;
}

uint64_t sub_100029078(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2, a3);
    a4();
    sub_10001B9A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000290FC()
{
  result = qword_100222198;
  if (!qword_100222198)
  {
    sub_10000460C(&qword_1002221A0, &qword_1001B5818);
    sub_10000BFFC(&qword_1002221A8, &qword_1002221B0, &qword_1001B5820, &protocol conformance descriptor for _MaskEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222198);
  }

  return result;
}

unint64_t sub_1000291B4()
{
  result = qword_1002221C8;
  if (!qword_1002221C8)
  {
    v1 = sub_10000460C(&qword_1002221D0, &unk_1001B5830);
    sub_10002926C(v1, v2, v3);
    sub_10000BFFC(&qword_1002221E0, &qword_1002221E8, &qword_1001B6490, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002221C8);
  }

  return result;
}

unint64_t sub_10002926C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002221D8;
  if (!qword_1002221D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002221D8);
  }

  return result;
}

uint64_t sub_1000292C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100222168, &unk_1001B57F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100029330(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100222168, &unk_1001B57F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000293B0()
{
  result = qword_100222240;
  if (!qword_100222240)
  {
    sub_10000460C(&qword_100222220, &qword_1001B5870);
    sub_100029468();
    sub_10000BFFC(&qword_1002221E0, &qword_1002221E8, &qword_1001B6490, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222240);
  }

  return result;
}

unint64_t sub_100029468()
{
  result = qword_100222248;
  if (!qword_100222248)
  {
    sub_10000460C(&qword_100222238, &unk_1001B5920);
    sub_100029520();
    sub_10000BFFC(&qword_100222260, &qword_100222268, &unk_1001B6970, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222248);
  }

  return result;
}

unint64_t sub_100029520()
{
  result = qword_100222250;
  if (!qword_100222250)
  {
    sub_10000460C(&qword_100222230, &unk_1001B58B0);
    sub_10001B3F8();
    sub_10000BFFC(&qword_100222258, &qword_100221B70, &qword_1001B7140, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222250);
  }

  return result;
}

unint64_t sub_1000295D8()
{
  result = qword_100222278;
  if (!qword_100222278)
  {
    sub_10000460C(&qword_100222270, &unk_1001B5940);
    sub_10001B3F8();
    sub_10000BFFC(&qword_100222260, &qword_100222268, &unk_1001B6970, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222278);
  }

  return result;
}

unint64_t sub_100029694()
{
  result = qword_100222290;
  if (!qword_100222290)
  {
    sub_10000460C(&qword_100222150, &qword_1001B57D8);
    sub_10000BFFC(&qword_100222298, &qword_100222140, &qword_1001B57C8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222290);
  }

  return result;
}

uint64_t sub_100029760(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000024C4(&qword_1002222A0, &unk_1001B5960);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_100029830(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000024C4(&qword_1002222A0, &unk_1001B5960);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AppModule(uint64_t a1)
{
  result = qword_100222300;
  if (!qword_100222300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002992C(uint64_t a1)
{
  type metadata accessor for AppViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1000299F8(319);
    if (v2 <= 0x3F)
    {
      sub_100017044(319);
      if (v3 <= 0x3F)
      {
        sub_100029A5C(319);
        if (v4 <= 0x3F)
        {
          sub_100029AB4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000299F8(uint64_t a1)
{
  if (!qword_100222310)
  {
    sub_10000460C(&qword_10022AF10, &qword_1001B5980);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_100222310);
    }
  }
}

void sub_100029A5C(uint64_t a1)
{
  if (!qword_1002219C0)
  {
    type metadata accessor for OpenURLAction();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1002219C0);
    }
  }
}

void sub_100029AB4()
{
  if (!qword_100222318)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100222318);
    }
  }
}

uint64_t sub_100029B20()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 32);
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
      v9 = v0 + *(type metadata accessor for AppModule(0) + 32);
      v10 = *v9;
      if (*(v9 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v11 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_10001BC5C(v10, 0);
        (*(v2 + 8))(v4, v1);
        LOBYTE(v10) = v14[15];
      }

      v12 = v10 ^ 1;
      return v12 & 1;
    }

LABEL_11:
    v12 = 0;
    return v12 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10002CD8C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100029DA4@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = type metadata accessor for AppModule(0);
  v74 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v75 = v3;
  v76 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000024C4(&qword_100222358, &qword_1001B59D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v71 - v5;
  v7 = sub_1000024C4(&qword_100222360, &qword_1001B59E0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v71 - v9;
  v11 = sub_1000024C4(&qword_100222368, &qword_1001B59E8);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v71 - v13;
  v15 = sub_1000024C4(&qword_100222370, &qword_1001B59F0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v71 = &v71 - v17;
  v72 = sub_1000024C4(&qword_100222378, &qword_1001B59F8);
  __chkstk_darwin(v72);
  v73 = &v71 - v18;
  v19 = static HorizontalAlignment.leading.getter();
  v20 = 0x4024000000000000;
  if (*(*v1 + OBJC_IVAR____TtC16EventViewService12AppViewModel_shouldShowDiscoveryDetail))
  {
    v20 = 0;
  }

  *v6 = v19;
  *(v6 + 1) = v20;
  v6[16] = 0;
  v21 = sub_1000024C4(&qword_100222380, &unk_1001B5A00);
  sub_10002A32C(v1, &v6[*(v21 + 44)]);
  v22 = static Edge.Set.leading.getter();
  sub_100029B20();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_10001AE00(v6, v10, &qword_100222358, &qword_1001B59D8);
  v31 = &v10[*(v8 + 44)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10001AE00(v10, v14, &qword_100222360, &qword_1001B59E0);
  v41 = &v14[*(v12 + 44)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = static Edge.Set.bottom.getter();
  v43 = v71;
  EdgeInsets.init(_all:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_10001AE00(v14, v43, &qword_100222368, &qword_1001B59E8);
  v52 = v43 + *(v16 + 44);
  *v52 = v42;
  *(v52 + 8) = v45;
  *(v52 + 16) = v47;
  *(v52 + 24) = v49;
  *(v52 + 32) = v51;
  *(v52 + 40) = 0;
  v53 = static SafeAreaRegions.container.getter();
  sub_1000024C4(&qword_100222388, &qword_1001B73E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  v55 = static Edge.Set.horizontal.getter();
  *(inited + 32) = v55;
  v56 = static Edge.Set.bottom.getter();
  *(inited + 33) = v56;
  v57 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v55)
  {
    v57 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v56)
  {
    v57 = Edge.Set.init(rawValue:)();
  }

  v58 = static Alignment.center.getter();
  v60 = v59;
  v61 = v43;
  v62 = v73;
  sub_10001AE00(v61, v73, &qword_100222370, &qword_1001B59F0);
  v63 = v62 + *(v72 + 36);
  *v63 = v53;
  *(v63 + 8) = v57;
  *(v63 + 16) = v58;
  *(v63 + 24) = v60;
  v64 = v76;
  sub_10002C1F8(v1, v76);
  v65 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v66 = swift_allocObject();
  sub_10002C260(v64, v66 + v65);
  v67 = sub_1000024C4(&qword_100222390, &qword_1001B5A28);
  v68 = v77;
  v69 = (v77 + *(v67 + 36));
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  *v69 = &unk_1001B5A20;
  v69[1] = v66;
  return sub_10001AE00(v62, v68, &qword_100222378, &qword_1001B59F8);
}

uint64_t sub_10002A32C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v156 = a2;
  v3 = sub_1000024C4(&qword_1002223A0, &qword_1001B5A38);
  __chkstk_darwin(v3 - 8);
  v153 = &v144 - v4;
  v152 = sub_1000024C4(&qword_1002223A8, &qword_1001B5A40);
  v5 = __chkstk_darwin(v152);
  v172 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v151 = &v144 - v8;
  __chkstk_darwin(v7);
  v171 = &v144 - v9;
  v150 = sub_1000024C4(&qword_1002223B0, &unk_1001B5A48);
  v10 = __chkstk_darwin(v150);
  v155 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v170 = &v144 - v12;
  v157 = type metadata accessor for AccessibilityTraits();
  v147 = *(v157 - 8);
  __chkstk_darwin(v157);
  v145 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000024C4(&qword_100221B10, &qword_1001B4F50);
  __chkstk_darwin(v14 - 8);
  v148 = &v144 - v15;
  v146 = sub_1000024C4(&qword_1002223B8, &qword_1001B5A58);
  __chkstk_darwin(v146);
  v158 = &v144 - v16;
  v173 = sub_1000024C4(&qword_1002223C0, &qword_1001B5A60);
  __chkstk_darwin(v173);
  v159 = &v144 - v17;
  v18 = sub_1000024C4(&qword_1002223C8, &qword_1001B5A68);
  v19 = __chkstk_darwin(v18 - 8);
  v169 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v174 = &v144 - v21;
  v154 = a1;
  v22 = *a1;
  v160 = OBJC_IVAR____TtC16EventViewService12AppViewModel_shouldShowDiscoveryDetail;
  v161 = v22;
  if (*(v22 + OBJC_IVAR____TtC16EventViewService12AppViewModel_shouldShowDiscoveryDetail) == 1)
  {

    v23 = Text.init(_:tableName:bundle:comment:)();
    v25 = v24;
    v27 = v26;
    static Font.footnote.getter();
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    v28 = Text.font(_:)();
    v30 = v29;
    v32 = v31;

    sub_100017398(v23, v25, v27 & 1);

    if (qword_100220B98 != -1)
    {
      swift_once();
    }

    v189 = qword_1002390B8;

    *&v167 = Text.foregroundStyle<A>(_:)();
    *(&v167 + 1) = v33;
    v35 = v34;
    v168 = v36;
    sub_100017398(v28, v30, v32 & 1);

    KeyPath = swift_getKeyPath();
    v37 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v149 = v44;
    LOBYTE(v189) = v35 & 1;
    LOBYTE(v182) = 0;
    LOBYTE(v201) = 0;
    v164 = v35 & 1;
    v165 = 0;
    v162 = 1;
    v163 = v37;
  }

  else
  {
    v164 = 0;
    v165 = 0;
    v162 = 0;
    v163 = 0;
    KeyPath = 0;
    v167 = 0uLL;
    v168 = 0;
    v149 = 0;
    v43 = 0;
    v41 = 0;
    v39 = 0;
  }

  LocalizedStringKey.init(stringLiteral:)();
  v45 = Text.init(_:tableName:bundle:comment:)();
  v47 = v46;
  v49 = v48;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v50 = Text.font(_:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;

  sub_100017398(v45, v47, v49 & 1);

  v57 = swift_getKeyPath();
  v189 = v50;
  v190 = v52;
  v58 = v54 & 1;
  LOBYTE(v191) = v54 & 1;
  v192 = v56;
  v193 = v57;
  v194 = 2;
  LOBYTE(v195) = 0;
  v59 = v145;
  static AccessibilityTraits.isHeader.getter();
  sub_1000024C4(&qword_100221B38, &unk_1001B4FA0);
  sub_10001B3F8();
  v60 = v148;
  View.accessibility(addTraits:)();
  (*(v147 + 8))(v59, v157);
  sub_100017398(v50, v52, v58);

  LOBYTE(v45) = static Edge.Set.bottom.getter();
  v62 = v160;
  v61 = v161;
  EdgeInsets.init(_all:)();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v158;
  sub_10001AE00(v60, v158, &qword_100221B10, &qword_1001B4F50);
  v72 = v71 + *(v146 + 36);
  *v72 = v45;
  *(v72 + 8) = v64;
  *(v72 + 16) = v66;
  *(v72 + 24) = v68;
  *(v72 + 32) = v70;
  *(v72 + 40) = 0;
  LOBYTE(v45) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = v159;
  sub_10001AE00(v71, v159, &qword_1002223B8, &qword_1001B5A58);
  v82 = v81 + *(v173 + 36);
  *v82 = v45;
  *(v82 + 8) = v74;
  *(v82 + 16) = v76;
  *(v82 + 24) = v78;
  *(v82 + 32) = v80;
  *(v82 + 40) = 0;
  sub_10002CC50(&qword_1002223D0, &qword_1002223C0, &qword_1001B5A60, sub_10002C398);
  View.accessibilityIdentifier(_:)();
  sub_1000050C4(v81, &qword_1002223C0, &qword_1001B5A60);
  v173 = 0;
  v157 = 0;
  v158 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  if (*(v61 + v62) == 1)
  {

    v89 = Text.init(_:tableName:bundle:comment:)();
    v91 = v90;
    v93 = v92;
    static Font.subheadline.getter();
    static Font.Weight.regular.getter();
    Font.weight(_:)();

    v94 = Text.font(_:)();
    v96 = v95;
    v98 = v97;

    sub_100017398(v89, v91, v93 & 1);

    if (qword_100220B98 != -1)
    {
      swift_once();
    }

    v189 = qword_1002390B8;

    v173 = Text.foregroundStyle<A>(_:)();
    v157 = v100;
    v158 = v99;
    v102 = v101;
    sub_100017398(v94, v96, v98 & 1);

    v83 = swift_getKeyPath();
    v103 = static Edge.Set.bottom.getter();
    LOBYTE(v189) = v102 & 1;
    LOBYTE(v182) = 0;
    LOBYTE(v201) = 1;
    v88 = v102 & 1;
    v86 = 1;
    if (*(v161 + v160))
    {
      v85 = 0x3FF0000000000000;
    }

    else
    {
      v85 = 0;
    }

    v87 = v103;
    v84 = 4;
  }

  v159 = 0;
  v160 = v83;
  v147 = v87;
  v148 = v85;
  v161 = v86;
  v104 = v170;
  v105 = v88;
  v145 = v84;
  v146 = v88;
  v106 = v84;
  Divider.init()();
  v107 = static Edge.Set.bottom.getter();
  v108 = v104 + *(sub_1000024C4(&qword_1002223E8, &qword_1001B5AA0) + 36);
  *v108 = v107;
  *(v108 + 8) = 0u;
  *(v108 + 24) = 0u;
  *(v108 + 40) = 1;
  v109 = static SafeAreaRegions.container.getter();
  v110 = static Edge.Set.horizontal.getter();
  v111 = v104 + *(v150 + 36);
  *v111 = v109;
  *(v111 + 8) = v110;
  v112 = v153;
  sub_10002B210(v154, v153);
  v113 = static Edge.Set.trailing.getter();
  sub_100029B20();
  EdgeInsets.init(_all:)();
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v121 = v120;
  v122 = v151;
  sub_10001AE00(v112, v151, &qword_1002223A0, &qword_1001B5A38);
  v123 = v122 + *(v152 + 36);
  *v123 = v113;
  *(v123 + 8) = v115;
  *(v123 + 16) = v117;
  *(v123 + 24) = v119;
  *(v123 + 32) = v121;
  *(v123 + 40) = 0;
  v124 = v171;
  sub_10001AE00(v122, v171, &qword_1002223A8, &qword_1001B5A40);
  v125 = v169;
  sub_10000BEB8(v174, v169, &qword_1002223C8, &qword_1001B5A68);
  v126 = v155;
  sub_10000BEB8(v104, v155, &qword_1002223B0, &unk_1001B5A48);
  sub_10002C484(v124, v172);
  v175 = v167;
  *&v176 = v164;
  *(&v176 + 1) = v168;
  *&v177 = KeyPath;
  *(&v177 + 1) = v162;
  *&v178 = v165;
  *(&v178 + 1) = v163;
  *&v179 = v39;
  *(&v179 + 1) = v41;
  v127 = v149;
  *&v180 = v43;
  *(&v180 + 1) = v149;
  v181 = 0;
  v128 = v156;
  *(v156 + 96) = 0;
  v129 = v180;
  v128[4] = v179;
  v128[5] = v129;
  v130 = v176;
  *v128 = v175;
  v128[1] = v130;
  v131 = v178;
  v128[2] = v177;
  v128[3] = v131;
  v132 = sub_1000024C4(&qword_1002223F0, &qword_1001B5AA8);
  sub_10000BEB8(v125, v128 + v132[12], &qword_1002223C8, &qword_1001B5A68);
  v133 = (v128 + v132[16]);
  v134 = v158;
  *&v182 = v173;
  *(&v182 + 1) = v158;
  *&v183 = v105;
  v135 = v157;
  *(&v183 + 1) = v157;
  *&v184 = v160;
  *(&v184 + 1) = v106;
  *&v185 = v159;
  v136 = v147;
  v137 = v148;
  *(&v185 + 1) = v147;
  v186 = 0u;
  v187 = 0u;
  *&v188 = v161;
  *(&v188 + 1) = v148;
  v138 = v183;
  *v133 = v182;
  v133[1] = v138;
  v139 = v185;
  v133[2] = v184;
  v133[3] = v139;
  v140 = v187;
  v133[4] = v186;
  v133[5] = v140;
  v133[6] = v188;
  sub_10000BEB8(v126, v128 + v132[20], &qword_1002223B0, &unk_1001B5A48);
  v141 = v128 + v132[24];
  v142 = v172;
  sub_10002C484(v172, v141);
  sub_10000BEB8(&v175, &v189, &qword_1002223F8, &qword_1001B5AB0);
  sub_10000BEB8(&v182, &v189, &qword_100222400, &qword_1001B5AB8);
  sub_10002C4F4(v171);
  sub_1000050C4(v170, &qword_1002223B0, &unk_1001B5A48);
  sub_1000050C4(v174, &qword_1002223C8, &qword_1001B5A68);
  sub_10002C4F4(v142);
  sub_1000050C4(v126, &qword_1002223B0, &unk_1001B5A48);
  v189 = v173;
  v190 = v134;
  v191 = v146;
  v192 = v135;
  v193 = v160;
  v194 = v145;
  v195 = v159;
  v196 = v136;
  v197 = 0u;
  v198 = 0u;
  v199 = v161;
  v200 = v137;
  sub_1000050C4(&v189, &qword_100222400, &qword_1001B5AB8);
  sub_1000050C4(v169, &qword_1002223C8, &qword_1001B5A68);
  v201 = v167;
  v202 = v164;
  v203 = v168;
  v204 = KeyPath;
  v205 = v162;
  v206 = v165;
  v207 = v163;
  v208 = v39;
  v209 = v41;
  v210 = v43;
  v211 = v127;
  v212 = 0;
  return sub_1000050C4(&v201, &qword_1002223F8, &qword_1001B5AB0);
}

uint64_t sub_10002B210@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v72 = type metadata accessor for RedactionReasons();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1000024C4(&qword_100222408, &qword_1001B5AC0);
  __chkstk_darwin(v77);
  v5 = (v65 - v4);
  v6 = type metadata accessor for AppModule(0);
  v73 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v74 = v7;
  v75 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1000024C4(&qword_100222410, &unk_1001B5AC8);
  v70 = *(v78 - 8);
  __chkstk_darwin(v78);
  v9 = v65 - v8;
  v10 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v10 - 8);
  v12 = v65 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v68 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v65 - v17;
  v76 = a1;
  v19 = *a1;
  sub_10000BEB8(v19 + OBJC_IVAR____TtC16EventViewService12AppViewModel_eventURL, v12, &qword_1002214F8, &qword_1001B3D20);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000050C4(v12, &qword_1002214F8, &qword_1001B3D20);
    if (*(v19 + OBJC_IVAR____TtC16EventViewService12AppViewModel_queryAppID + 8))
    {
      v20 = *(v19 + OBJC_IVAR____TtC16EventViewService12AppViewModel_queryAppID);
      v21 = *(v19 + OBJC_IVAR____TtC16EventViewService12AppViewModel_queryAppID + 8);
      if ((*(v19 + 16) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if ((*(v19 + 16) & 1) == 0)
      {
        v20 = 0x3534333939343832;
        v21 = 0xE900000000000039;
LABEL_17:

        goto LABEL_18;
      }

      v20 = 0x3838383736343436;
      v21 = 0xEA00000000003932;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      v27 = 0;
      v28 = 0;
LABEL_19:
      *&v80 = v20;
      *(&v80 + 1) = v21;
      *&v81 = v27;
      *(&v81 + 1) = v28;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v31 = v69;
      v32 = static RedactionReasons.placeholder.getter();
      v35 = sub_10002C55C(v32, v33, v34);
      View.redacted(reason:)();
      (*(v71 + 8))(v31, v72);
      v88 = v82;
      v89 = v83;
      v90 = v84;
      v91 = v85;
      v86 = v80;
      v87 = v81;
      sub_10002C5B0(&v86);
      v36 = v70;
      v37 = v78;
      (*(v70 + 16))(v5, v9, v78);
      swift_storeEnumTagMultiPayload();
      *&v80 = &type metadata for AppStoreComponent;
      *(&v80 + 1) = v35;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      return (*(v36 + 8))(v9, v37);
    }

LABEL_18:
    v28 = 0x80000001001C4E00;
    v27 = 0xD000000000000024;
    goto LABEL_19;
  }

  v22 = *(v14 + 32);
  v65[1] = v14 + 32;
  v65[0] = v22;
  v22(v18, v12, v13);
  v23 = *(v19 + OBJC_IVAR____TtC16EventViewService12AppViewModel_queryAppID + 8);
  if (v23)
  {
    v72 = *(v19 + OBJC_IVAR____TtC16EventViewService12AppViewModel_queryAppID);
    v24 = *(v19 + 16);
    v71 = v23;
    v25 = v73;
    if ((v24 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v25 = v73;
    if ((*(v19 + 16) & 1) == 0)
    {
      v72 = 0x3534333939343832;
      v71 = 0xE900000000000039;
LABEL_21:

      goto LABEL_22;
    }

    v72 = 0x3838383736343436;
    v71 = 0xEA00000000003932;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
LABEL_22:
    v30 = v76;
    v73 = 0x80000001001C4E00;
    v70 = 0xD000000000000024;
    goto LABEL_23;
  }

  v70 = 0;
  v73 = 0;
  v30 = v76;
LABEL_23:
  v39 = *(v30 + 24);
  v86 = *(v30 + 8);
  *&v87 = v39;
  sub_1000024C4(&qword_100222398, &qword_1001B5A30);
  State.wrappedValue.getter();
  v67 = *(&v80 + 1);
  v69 = v80;
  if (sub_100005D04())
  {
    v66 = v18;
    sub_10002C1F8(v30, v75);
    v40 = v68;
    (*(v14 + 16))(v68, v66, v13);
    v41 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v42 = *(v14 + 80);
    v43 = v14;
    v44 = v25;
    v45 = (v74 + v42 + v41) & ~v42;
    v46 = swift_allocObject();
    v47 = v46 + v41;
    v48 = v75;
    v49 = v66;
    sub_10002C260(v75, v47);
    v50 = v40;
    v51 = v13;
    v52 = v13;
    v53 = v49;
    (v65[0])(v46 + v45, v50, v52);
    v54 = v76;
    v55 = sub_10002C9B0;
  }

  else
  {
    v54 = v30;
    v55 = 0;
    v46 = 0;
    v48 = v75;
    v51 = v13;
    v53 = v18;
    v43 = v14;
    v44 = v25;
  }

  sub_10002C1F8(v54, v48);
  v56 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v57 = swift_allocObject();
  sub_10002C260(v48, v57 + v56);
  v58 = v71;
  *v5 = v72;
  v5[1] = v58;
  v59 = v73;
  v5[2] = v70;
  v5[3] = v59;
  v5[4] = 0;
  v5[5] = 0;
  v60 = v67;
  v5[6] = v69;
  v5[7] = v60;
  v5[8] = v55;
  v5[9] = v46;
  v5[10] = sub_10002C758;
  v5[11] = v57;
  v61 = swift_storeEnumTagMultiPayload();
  v64 = sub_10002C55C(v61, v62, v63);
  *&v86 = &type metadata for AppStoreComponent;
  *(&v86 + 1) = v64;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  return (*(v43 + 8))(v53, v51);
}

uint64_t sub_10002BC18(uint64_t a1, uint64_t a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  v10 = *(a2 + 32);
  if (v10)
  {

    sub_10000644C(6, 0, 3, v10);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10002CD8C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002BD58(uint64_t a1)
{
  v1[7] = a1;
  type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v3;
  v1[10] = v2;

  return _swift_task_switch(sub_10002BDF0, v3, v2);
}

uint64_t sub_10002BDF0()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_10002BE84;

  return sub_100005E40();
}

uint64_t sub_10002BE84(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = a2;

  v5 = *(v3 + 80);
  v6 = *(v3 + 72);

  return _swift_task_switch(sub_10002BFAC, v6, v5);
}

uint64_t sub_10002BFAC()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 56);

  v4 = *(v3 + 24);
  *(v0 + 16) = *(v3 + 8);
  *(v0 + 32) = v4;
  *(v0 + 40) = v2;
  *(v0 + 48) = v1;
  sub_1000024C4(&qword_100222398, &qword_1001B5A30);
  State.wrappedValue.setter();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10002C058(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for OpenURLAction();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AppModule(0);
  sub_100039C90(v6);
  OpenURLAction.callAsFunction(_:)();
  (*(v4 + 8))(v6, v3);
  v7 = a1[4];
  if (v7)
  {
    if (*(*a1 + 16))
    {
      v8 = 10;
    }

    else
    {
      v8 = 8;
    }

    sub_10000644C(v8, 0, 3, v7);

    return sub_100026CDC(v8, 0, 3u);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10002CD8C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10002C1F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppModule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002C260(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppModule(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002C2C4()
{
  v2 = *(type metadata accessor for AppModule(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000BD00;

  return sub_10002BD58(v0 + v3);
}

unint64_t sub_10002C3C8()
{
  result = qword_1002223E0;
  if (!qword_1002223E0)
  {
    sub_10000460C(&qword_100221B10, &qword_1001B4F50);
    sub_10001B3F8();
    sub_10002CD8C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002223E0);
  }

  return result;
}

uint64_t sub_10002C484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002223A8, &qword_1001B5A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002C4F4(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_1002223A8, &qword_1001B5A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002C55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10022AEF0;
  if (!qword_10022AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AEF0);
  }

  return result;
}

uint64_t sub_10002C604()
{
  v1 = type metadata accessor for AppModule(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 28);
  sub_1000024C4(qword_100221928, &unk_1001B65E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for OpenURLAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_10001BC5C(*(v2 + *(v1 + 32)), *(v2 + *(v1 + 32) + 8));

  return swift_deallocObject();
}

uint64_t sub_10002C758(uint64_t a1)
{
  v3 = *(type metadata accessor for AppModule(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10002BC18(a1, v4);
}

uint64_t sub_10002C7C8()
{
  v1 = type metadata accessor for AppModule(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;

  v8 = *(v1 + 28);
  sub_1000024C4(qword_100221928, &unk_1001B65E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for OpenURLAction();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  sub_10001BC5C(*(v7 + *(v1 + 32)), *(v7 + *(v1 + 32) + 8));
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_10002C9B0()
{
  v1 = *(type metadata accessor for AppModule(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for URL() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_10002C058((v0 + v2), v5);
}

unint64_t sub_10002CA80()
{
  result = qword_100222418;
  if (!qword_100222418)
  {
    sub_10000460C(&qword_100222390, &qword_1001B5A28);
    sub_10002CB3C();
    sub_10002CD8C(&qword_100220CB0, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222418);
  }

  return result;
}

unint64_t sub_10002CB3C()
{
  result = qword_100222420;
  if (!qword_100222420)
  {
    sub_10000460C(&qword_100222378, &qword_1001B59F8);
    sub_10002CC50(&qword_100222428, &qword_100222370, &qword_1001B59F0, sub_10002CC20);
    sub_10000BFFC(&qword_100222448, qword_100222450, &qword_1001B5AD8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222420);
  }

  return result;
}

uint64_t sub_10002CC50(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
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

unint64_t sub_10002CCD4()
{
  result = qword_100222438;
  if (!qword_100222438)
  {
    sub_10000460C(&qword_100222360, &qword_1001B59E0);
    sub_10000BFFC(&qword_100222440, &qword_100222358, &qword_1001B59D8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222438);
  }

  return result;
}

uint64_t sub_10002CD8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002CDD8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10002CEF0()
{
  KeyPath = swift_getKeyPath();
  sub_10002D0A8(KeyPath, v2, v3);

  return *(v0 + 16);
}

uint64_t sub_10002CF64(char a1)
{
  v2 = *v1;
  v11 = *(v1 + 16);
  v3 = a1 & 1;
  v10 = a1;
  v9 = *(v2 + 80);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + 16) = v3;
  }

  else
  {
    __chkstk_darwin(result);
    v8 = *(&v9 + 1);
    KeyPath = swift_getKeyPath();
    v6 = __chkstk_darwin(KeyPath);
    v7[2] = v1;
    LOBYTE(v8) = v3;
    sub_10002D148(v6, sub_10002FAC0, v7, &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_10002D220()
{
  v0 = sub_10002FB3C();

  return v0;
}

uint64_t sub_10002D258(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = (v2 + *(*v2 + 112));
  v7 = v6[1];
  v16 = *v6;
  v17 = v7;
  v14 = a1;
  v15 = a2;
  v13 = *(v5 + 80);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v8)
  {
    *v6 = a1;
    v6[1] = a2;
  }

  else
  {
    __chkstk_darwin(v8);
    v12[5] = *(&v13 + 1);
    KeyPath = swift_getKeyPath();
    v11 = __chkstk_darwin(KeyPath);
    v12[2] = v2;
    v12[3] = a1;
    v12[4] = a2;
    sub_10002D148(v11, sub_10002FF10, v12, &type metadata for () + 8);
  }
}

uint64_t sub_10002D3D0()
{
  v0 = sub_10002FBC8();

  return v0;
}

uint64_t sub_10002D408(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = v3 + *(v6 + 120);
  v16 = *v7;
  v14 = a1;
  v15 = a2;
  sub_1000024C4(&qword_10022AF10, &qword_1001B5980);
  v13 = *(v6 + 80);
  sub_10002FC90();
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v8)
  {
    *v7 = a1;
    *(v7 + 1) = a2;
  }

  else
  {
    __chkstk_darwin(v8);
    v12[5] = *(&v13 + 1);
    KeyPath = swift_getKeyPath();
    v11 = __chkstk_darwin(KeyPath);
    v12[2] = v3;
    v12[3] = a1;
    v12[4] = a2;
    sub_10002D148(v11, sub_10002FD0C, v12, &type metadata for () + 8);
  }
}

uint64_t sub_10002D594()
{
  v0 = sub_10002FD64();

  return v0;
}

uint64_t sub_10002D5CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = v3 + *(v6 + 128);
  v16 = *v7;
  v14 = a1;
  v15 = a2;
  sub_1000024C4(&qword_10022AF10, &qword_1001B5980);
  v13 = *(v6 + 80);
  sub_10002FC90();
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v8)
  {
    *v7 = a1;
    *(v7 + 1) = a2;
  }

  else
  {
    __chkstk_darwin(v8);
    v12[5] = *(&v13 + 1);
    KeyPath = swift_getKeyPath();
    v11 = __chkstk_darwin(KeyPath);
    v12[2] = v3;
    v12[3] = a1;
    v12[4] = a2;
    sub_10002D148(v11, sub_10002FE2C, v12, &type metadata for () + 8);
  }
}

uint64_t sub_10002D758()
{
  v0 = sub_10003009C();

  return v0;
}

uint64_t sub_10002D790(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = v3 + *(v6 + 136);
  v16 = *v7;
  v14 = a1;
  v15 = a2;
  sub_1000024C4(&qword_10022AF10, &qword_1001B5980);
  v13 = *(v6 + 80);
  sub_10002FC90();
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v8)
  {
    *v7 = a1;
    *(v7 + 1) = a2;
  }

  else
  {
    __chkstk_darwin(v8);
    v12[5] = *(&v13 + 1);
    KeyPath = swift_getKeyPath();
    v11 = __chkstk_darwin(KeyPath);
    v12[2] = v3;
    v12[3] = a1;
    v12[4] = a2;
    sub_10002D148(v11, sub_100011258, v12, &type metadata for () + 8);
  }
}

uint64_t sub_10002D91C()
{
  KeyPath = swift_getKeyPath();
  sub_10002D0A8(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 144));
}

uint64_t sub_10002D9A4(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v12 = *(v1 + v3);
  v4 = a1 & 1;
  v11 = a1;
  v10 = *(v2 + 80);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + v3) = v4;
  }

  else
  {
    __chkstk_darwin(result);
    v9 = *(&v10 + 1);
    KeyPath = swift_getKeyPath();
    v7 = __chkstk_darwin(KeyPath);
    v8[2] = v1;
    LOBYTE(v9) = v4;
    sub_10002D148(v7, sub_100011098, v8, &type metadata for () + 8);
  }

  return result;
}

uint64_t sub_10002DB78()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = &v12 - v5;
  v7 = sub_10003009C();
  if (v8)
  {
    v9 = v7;
  }

  else
  {
    (*(v1 + 128))(v2, v1);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v9 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v4 + 8))(v6, AssociatedTypeWitness);
  }

  return v9;
}

uint64_t sub_10002DD28()
{
  sub_10002F9E0(v0 + *(*v0 + 152), v4);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    sub_10001BED0(v4, v5);
    v1 = (*(v2 + 48))(v1, v2);
    sub_100012A7C(v4);
  }

  else
  {
    sub_10002F978(v4);
  }

  return v1;
}

uint64_t sub_10002DE48()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  (*(v1 + 160))(v2, v1);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v3 = Collection.isEmpty.getter();

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_10008C468(v2, v1) ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_10002DF88(uint64_t a1)
{
  v2 = *(*v1 + 80);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v9[-1] - v5, v1 + *(v3 + 104), v2);
  sub_1000024C4(&qword_1002224E0, &qword_1001B5C18);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = result;
    sub_100012A7C(v9);
    return v7;
  }

  return result;
}

BOOL sub_10002E0A4()
{
  (*(*(*v0 + 88) + 160))(*(*v0 + 80), *(*v0 + 88));
  swift_getAssociatedTypeWitness();
  v1 = Array.count.getter();

  return v1 == 1;
}

BOOL sub_10002E1E0()
{
  sub_10002F9E0(v0 + *(*v0 + 152), v3);
  v1 = v4 != 0;
  sub_10002F978(v3);
  return v1;
}

uint64_t sub_10002E23C()
{
  v1 = *(v0 + *(*v0 + 160));
  v2 = v1[5];
  v3 = v1[6];
  sub_10001BED0(v1 + 2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v30 = v1;
    sub_100195844(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = v4 + 32;
    do
    {
      sub_10002FF80(v7, v33);
      sub_10001BED0(v33, v34);
      v8 = dispatch thunk of MusicItem.id.getter();
      v10 = v9;
      sub_100012A7C(v33);
      *&v31 = v6;
      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        sub_100195844((v11 > 1), v12 + 1, 1);
        v6 = v31;
      }

      v6[2] = v12 + 1;
      v13 = &v6[2 * v12];
      v13[4] = v8;
      v13[5] = v10;
      v7 += 40;
      --v5;
    }

    while (v5);

    v1 = v30;
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  sub_10002F9E0(v0 + *(*v0 + 152), &v31);
  if (v32)
  {
    sub_10002FF68(&v31, v33);
    v14 = v1[5];
    v15 = v1[6];
    sub_10001BED0(v1 + 2, v14);
    (*(v15 + 16))(&v31, v14, v15);
    v16 = v32;
    if (v32)
    {
      sub_10001BED0(&v31, v32);
      v17 = dispatch thunk of MusicItem.id.getter();
      v16 = v18;
      sub_100012A7C(&v31);
    }

    else
    {
      sub_10002F978(&v31);
      v17 = 0;
    }

    sub_10001BED0(v33, v34);
    v19 = dispatch thunk of MusicItem.id.getter();
    if (v16)
    {
      if (v17 == v19 && v16 == v20)
      {

        goto LABEL_23;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
LABEL_23:
        sub_1000024C4(&unk_1002224F0, &qword_1001B5CD8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1001B49B0;
        sub_10001BED0(v33, v34);
        *(inited + 32) = dispatch thunk of MusicItem.id.getter();
        *(inited + 40) = v24;
        v25 = sub_10004A8F4(v6, inited);

        swift_setDeallocating();
        sub_10002FFE4(inited + 32);
        if (v25)
        {
          v26 = v1[5];
          v27 = v1[6];
          sub_10001BED0(v1 + 2, v26);
          v28 = (*(v27 + 32))(v26, v27);
          sub_100012A7C(v33);
          return v28;
        }

        goto LABEL_25;
      }
    }

    else
    {
    }

LABEL_25:
    sub_100012A7C(v33);
    return 0;
  }

  sub_10002F978(&v31);
  return 0;
}

uint64_t sub_10002E5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11)
{
  v17 = swift_allocObject();
  sub_10002E694(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  return v17;
}

_BYTE *sub_10002E694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11)
{
  v12 = *v11;
  v41 = *v11;
  v11[16] = 0;
  v13 = &v11[*(v12 + 120)];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v11[*(*v11 + 128)];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v11[*(*v11 + 136)];
  *v15 = 0;
  v15[1] = 0;
  v16 = *(*v11 + 160);
  if (qword_100220C18 != -1)
  {
    swift_once();
  }

  *&v11[v16] = qword_100239130;
  v17 = &v11[*(*v11 + 168)];

  *v17 = LocalizedStringKey.init(stringLiteral:)();
  *(v17 + 1) = v18;
  v17[16] = v19 & 1;
  *(v17 + 3) = v20;
  v21 = &v11[*(*v11 + 176)];
  v22 = objc_opt_self();
  v23 = [v22 mainBundle];
  v50._object = 0xE000000000000000;
  v24._object = 0x80000001001C4F50;
  v24._countAndFlagsBits = 0xD000000000000024;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v50._countAndFlagsBits = 0;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v50);

  *v21 = v26;
  v27 = &v11[*(*v11 + 184)];
  v28 = [v22 mainBundle];
  v51._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0xD000000000000030;
  v29._object = 0x80000001001C4F80;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0;
  v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v51);

  *v27 = v31;
  v32 = &v11[*(*v11 + 192)];
  v33 = [v22 mainBundle];
  v52._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0xD00000000000002BLL;
  v34._object = 0x80000001001C4FC0;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v52._countAndFlagsBits = 0;
  v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v52);

  *v32 = v36;
  ObservationRegistrar.init()();
  (*(*(*(v41 + 80) - 8) + 32))(&v11[*(*v11 + 104)], a1);
  v37 = &v11[*(*v11 + 112)];
  *v37 = a2;
  v37[1] = a3;

  *v13 = a4;
  v13[1] = a5;

  *v14 = a6;
  v14[1] = a7;

  *v15 = a8;
  v15[1] = a9;
  v11[*(*v11 + 144)] = a10 & 1;
  v38 = &v11[*(*v11 + 152)];
  *(v38 + 4) = *(a11 + 32);
  v39 = *(a11 + 16);
  *v38 = *a11;
  *(v38 + 1) = v39;
  return v11;
}

uint64_t sub_10002EAB8()
{
  sub_10008C108();
  v1 = *(v0 + *(*v0 + 160));
  v2 = v1[5];
  v3 = v1[6];
  sub_10001BED0(v1 + 2, v2);
  return (*(v3 + 72))(v2, v3);
}

uint64_t sub_10002EB28()
{
  sub_10002F9E0(v0 + *(*v0 + 152), &v6);
  if (!v7)
  {
    return sub_10002F978(&v6);
  }

  sub_10002FF68(&v6, v8);
  v1 = *(v0 + *(*v0 + 160));
  v2 = v9;
  v3 = v10;
  v4 = sub_10001BED0(v8, v9);
  sub_10014002C(v4, v1, v2, v3);
  return sub_100012A7C(v8);
}

uint64_t sub_10002EBD4()
{
  v1 = *(v0 + *(*v0 + 160));
  v2 = v1[5];
  v3 = v1[6];
  sub_10001BED0(v1 + 2, v2);
  return (*(v3 + 80))(v2, v3);
}

void sub_10002EC88(uint64_t a1)
{
  v3 = *v1;
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001B3B60;
  v5 = (*(*(v3 + 88) + 120))(*(v3 + 80));
  *(v4 + 56) = &type metadata for AnalyticsString;
  *(v4 + 64) = &off_100228B70;
  *(v4 + 32) = 0;
  *(v4 + 40) = v5;
  *(v4 + 48) = v6;
  v7 = sub_10012BCC8(v1 + *(*v1 + 104), *(*v1 + 80), *(*v1 + 88));
  *(v4 + 96) = &type metadata for AnalyticsPageName;
  *(v4 + 104) = &off_100228B48;
  *(v4 + 72) = v7;
  *(v4 + 136) = &type metadata for AnalyticsModuleName;
  *(v4 + 144) = &off_100228BD0;
  *(v4 + 112) = 1;
  *(v4 + 176) = &type metadata for AnalyticsModuleAction;
  *(v4 + 184) = &off_100228BA8;
  *(v4 + 152) = xmmword_1001B5AE0;
  *(v4 + 168) = 3;
  if (*(a1 + 72))
  {
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  v22 = &type metadata for AnalyticsString;
  v23 = &off_100228B70;
  LOBYTE(aBlock) = 1;
  v20 = v8;
  v21 = v9;

  v10 = sub_1001894F4(1, 5, 1, v4);
  v25 = v10;
  v11 = sub_10002FAD0(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  sub_100118768(4, v13, &v25, &type metadata for AnalyticsString, &off_100228B70);
  sub_100012A7C(&aBlock);
  v15 = String._bridgeToObjectiveC()();
  v16 = swift_allocObject();
  v16[2] = 0xD00000000000001ELL;
  v16[3] = 0x80000001001C4640;
  v16[4] = v10;
  v23 = sub_100026FEC;
  v24 = v16;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10015B4A4;
  v22 = &unk_100212FB8;
  v17 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

void sub_10002EFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001B3B60;
  v9 = (*(*(v7 + 88) + 120))(*(v7 + 80));
  *(v8 + 56) = &type metadata for AnalyticsString;
  *(v8 + 64) = &off_100228B70;
  *(v8 + 32) = 0;
  *(v8 + 40) = v9;
  *(v8 + 48) = v10;
  v11 = sub_10012BCC8(v3 + *(*v3 + 104), *(*v3 + 80), *(*v3 + 88));
  *(v8 + 96) = &type metadata for AnalyticsPageName;
  *(v8 + 104) = &off_100228B48;
  *(v8 + 72) = v11;
  *(v8 + 136) = &type metadata for AnalyticsModuleName;
  *(v8 + 144) = &off_100228BD0;
  *(v8 + 112) = 1;
  *(v8 + 176) = &type metadata for AnalyticsModuleAction;
  *(v8 + 184) = &off_100228BA8;
  *(v8 + 152) = a1;
  *(v8 + 160) = a2;
  *(v8 + 168) = 1;
  if (*(a3 + 72))
  {
    v12 = *(a3 + 64);
    v13 = *(a3 + 72);
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  v26 = &type metadata for AnalyticsString;
  v27 = &off_100228B70;
  LOBYTE(aBlock) = 1;
  v24 = v12;
  v25 = v13;

  v14 = sub_1001894F4(1, 5, 1, v8);
  v29 = v14;
  v15 = sub_10002FAD0(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  sub_100118768(4, v17, &v29, &type metadata for AnalyticsString, &off_100228B70);
  sub_100012A7C(&aBlock);
  v19 = String._bridgeToObjectiveC()();
  v20 = swift_allocObject();
  v20[2] = 0xD00000000000001ELL;
  v20[3] = 0x80000001001C4640;
  v20[4] = v14;
  v27 = sub_100006D88;
  v28 = v20;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10015B4A4;
  v26 = &unk_100212F68;
  v21 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v21);
}

void sub_10002F350(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + *(*v1 + 160));
  v5 = v4[5];
  v6 = v4[6];
  sub_10001BED0(v4 + 2, v5);
  LODWORD(v6) = (*(v6 + 32))(v5, v6);
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001B3B60;
  v8 = (*(*(v3 + 88) + 120))(*(v3 + 80));
  *(v7 + 56) = &type metadata for AnalyticsString;
  *(v7 + 64) = &off_100228B70;
  *(v7 + 32) = 0;
  *(v7 + 40) = v8;
  *(v7 + 48) = v9;
  v10 = sub_10012BCC8(v1 + *(*v1 + 104), *(*v1 + 80), *(*v1 + 88));
  *(v7 + 96) = &type metadata for AnalyticsPageName;
  *(v7 + 104) = &off_100228B48;
  *(v7 + 72) = v10;
  *(v7 + 136) = &type metadata for AnalyticsModuleName;
  *(v7 + 144) = &off_100228BD0;
  *(v7 + 112) = 1;
  v11 = 19;
  if (v6 == 2)
  {
    v11 = 20;
  }

  *(v7 + 176) = &type metadata for AnalyticsModuleAction;
  *(v7 + 184) = &off_100228BA8;
  *(v7 + 152) = v11;
  *(v7 + 160) = 0;
  *(v7 + 168) = 3;
  if (*(a1 + 72))
  {
    v12 = *(a1 + 64);
    v13 = *(a1 + 72);
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  v26 = &type metadata for AnalyticsString;
  v27 = &off_100228B70;
  LOBYTE(aBlock) = 1;
  v24 = v12;
  v25 = v13;

  v14 = sub_1001894F4(1, 5, 1, v7);
  v29 = v14;
  v15 = sub_10002FAD0(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  sub_100118768(4, v17, &v29, &type metadata for AnalyticsString, &off_100228B70);
  sub_100012A7C(&aBlock);
  v19 = String._bridgeToObjectiveC()();
  v20 = swift_allocObject();
  v20[2] = 0xD00000000000001ELL;
  v20[3] = 0x80000001001C4640;
  v20[4] = v14;
  v27 = sub_100026FEC;
  v28 = v20;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10015B4A4;
  v26 = &unk_100213008;
  v21 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v21);
}

uint64_t sub_10002F700()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  sub_10002F978(v0 + *(*v0 + 152));

  v1 = *(*v0 + 200);
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10002F908()
{
  sub_10002F700();

  return swift_deallocClassInstance();
}

uint64_t sub_10002F978(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_1002224D8, &qword_1001B7440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002F9E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002224D8, &qword_1001B7440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002FA50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10002CEF0();
  *a1 = result & 1;
  return result;
}

__n128 sub_10002FAB4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_10002FAD0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_10002FB24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002FB3C()
{
  KeyPath = swift_getKeyPath();
  sub_10002D0A8(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 112));
}

uint64_t sub_10002FBC8()
{
  KeyPath = swift_getKeyPath();
  sub_10002D0A8(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 120));
}

unint64_t sub_10002FC90()
{
  result = qword_1002224E8;
  if (!qword_1002224E8)
  {
    sub_10000460C(&qword_10022AF10, &qword_1001B5980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002224E8);
  }

  return result;
}

uint64_t sub_10002FD0C()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 120));
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_10002FD64()
{
  KeyPath = swift_getKeyPath();
  sub_10002D0A8(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 128));
}

uint64_t sub_10002FE2C()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 128));
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_10002FE84@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_10002FB3C();
  a1[1] = v2;
}

uint64_t sub_10002FEC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_10002D258(v1, v2);
}

uint64_t sub_10002FF10()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 112));
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_10002FF68(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10002FF80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100030038@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10002D91C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10003009C()
{
  KeyPath = swift_getKeyPath();
  sub_10002D0A8(KeyPath, v2, v3);

  return *(v0 + *(*v0 + 136));
}

uint64_t sub_100030140@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  *a2 = a1();
  a2[1] = v3;
}

uint64_t sub_10003019C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

Swift::Int sub_100030224()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100030290()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000302E0()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v3;
  v1[9] = v2;

  return _swift_task_switch(sub_10003037C, v3, v2);
}

uint64_t sub_10003037C()
{
  v1 = static MainActor.shared.getter();
  v0[10] = v1;
  v2 = swift_allocObject();
  v0[11] = v2;
  swift_unknownObjectWeakInit();
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = sub_1000024C4(&qword_1002225D0, &qword_1001B5DA8);
  *v3 = v0;
  v3[1] = sub_1000304A8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v1, &protocol witness table for MainActor, 0xD000000000000011, 0x80000001001C5050, sub_100031440, v2, v4);
}

uint64_t sub_1000304A8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_100030638;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1000305CC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000305CC()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 8);

  return v4(v1, v2, v3);
}

uint64_t sub_100030638()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000306B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000024C4(&qword_1002225C8, &qword_1001B5D98);
  __chkstk_darwin(v3 - 8);
  v5 = &v12[-v4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_1000024C4(&qword_100222550, &qword_1001B5D78);
    v9 = *(v8 - 8);
    (*(v9 + 16))(v5, a1, v8);
    (*(v9 + 56))(v5, 0, 1, v8);
    v10 = OBJC_IVAR____TtC16EventViewService15LocationManager_checkedThrowingContinuation;
    swift_beginAccess();
    sub_100031330(v5, &v7[v10]);
    swift_endAccess();
    v11 = OBJC_IVAR____TtC16EventViewService15LocationManager_manager;
    [*&v7[OBJC_IVAR____TtC16EventViewService15LocationManager_manager] setDelegate:v7];
    [*&v7[v11] setDesiredAccuracy:kCLLocationAccuracyKilometer];
    [*&v7[v11] startUpdatingLocation];
  }
}

uint64_t sub_100030870()
{
  v1 = v0;
  v2 = sub_1000024C4(&qword_1002225C8, &qword_1001B5D98);
  __chkstk_darwin(v2 - 8);
  v4 = v14 - v3;
  v5 = sub_1000024C4(&qword_100222550, &qword_1001B5D78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - v7;
  [*(v1 + OBJC_IVAR____TtC16EventViewService15LocationManager_manager) stopUpdatingLocation];
  v9 = OBJC_IVAR____TtC16EventViewService15LocationManager_checkedThrowingContinuation;
  swift_beginAccess();
  if (!(*(v6 + 48))(v1 + v9, 1, v5))
  {
    v10 = (*(v6 + 16))(v8, v1 + v9, v5);
    sub_100031448(v10, v11, v12);
    v14[0] = swift_allocError();
    CheckedContinuation.resume(throwing:)();
    (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 56))(v4, 1, 1, v5);
  swift_beginAccess();
  sub_100031330(v4, v1 + v9);
  return swift_endAccess();
}

id sub_100030B3C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for LocationManager(uint64_t a1)
{
  result = qword_100222538;
  if (!qword_100222538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100030C14(uint64_t a1)
{
  sub_100030CB4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100030CB4(uint64_t a1)
{
  if (!qword_100222548)
  {
    sub_10000460C(&qword_100222550, &qword_1001B5D78);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100222548);
    }
  }
}

uint64_t sub_100030D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  sub_1000024C4(&qword_1002225C8, &qword_1001B5D98);
  v5[13] = swift_task_alloc();
  v6 = sub_1000024C4(&qword_100222550, &qword_1001B5D78);
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100030E50, v8, v7);
}

unint64_t sub_100030E50()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 88);

  v4 = OBJC_IVAR____TtC16EventViewService15LocationManager_checkedThrowingContinuation;
  swift_beginAccess();
  if (!(*(v1 + 48))(v3 + v4, 1, v2))
  {
    v5 = *(v0 + 96);
    (*(*(v0 + 120) + 16))(*(v0 + 128), v3 + v4, *(v0 + 112));
    if (v5 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (v6)
      {
LABEL_4:
        result = v6 - 1;
        if (__OFSUB__(v6, 1))
        {
          __break(1u);
        }

        else if ((v5 & 0xC000000000000001) == 0)
        {
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v8 = *(*(v0 + 96) + 8 * result + 32);
LABEL_9:
            v9 = v8;
            [v8 coordinate];
            v19 = v10;
            v20 = v11;

            *&v12 = v19;
            *(&v12 + 1) = v20;
LABEL_12:
            v13 = v6 == 0;
            v15 = *(v0 + 120);
            v14 = *(v0 + 128);
            v16 = *(v0 + 112);
            *(v0 + 64) = v12;
            *(v0 + 80) = v13;
            CheckedContinuation.resume(returning:)();
            (*(v15 + 8))(v14, v16);
            goto LABEL_13;
          }

          __break(1u);
          return result;
        }

        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_9;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v12 = 0uLL;
    goto LABEL_12;
  }

LABEL_13:
  v17 = *(v0 + 104);
  (*(*(v0 + 120) + 56))(v17, 1, 1, *(v0 + 112));
  swift_beginAccess();
  sub_100031330(v17, v3 + v4);
  swift_endAccess();

  v18 = *(v0 + 8);

  return v18();
}

unint64_t sub_1000311DC()
{
  result = qword_1002225C0;
  if (!qword_1002225C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002225C0);
  }

  return result;
}

uint64_t sub_100031228()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100031270(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000BD00;

  return sub_100030D18(a1, v4, v5, v7, v6);
}

uint64_t sub_100031330(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002225C8, &qword_1001B5D98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000313A0(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_1002225C8, &qword_1001B5D98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100031408()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

unint64_t sub_100031448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002225D8;
  if (!qword_1002225D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002225D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationManager.RequestError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for LocationManager.RequestError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100031588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002225E0[0];
  if (!qword_1002225E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002225E0);
  }

  return result;
}

void sub_1000315DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  type metadata accessor for FilterViewModel.FilterState(255, v4, v5, a4);
  type metadata accessor for Published();
  if (v6 <= 0x3F)
  {
    type metadata accessor for Array();
    type metadata accessor for Published();
    if (v7 <= 0x3F)
    {
      sub_100036238(319);
      if (v8 <= 0x3F)
      {
        sub_100036290(319);
        if (v9 <= 0x3F)
        {
          swift_getAssociatedTypeWitness();
          type metadata accessor for Array();
          type metadata accessor for Published();
          if (v10 <= 0x3F)
          {
            swift_getAssociatedConformanceWitness();
            type metadata accessor for Set();
            type metadata accessor for Published();
            if (v11 <= 0x3F)
            {
              sub_1000362F4(319, &qword_100222688, &type metadata for EdgeInsets);
              if (v12 <= 0x3F)
              {
                sub_1000362F4(319, qword_100222690, &type metadata for CGFloat);
                if (v14 <= 0x3F)
                {
                  type metadata accessor for FilterViewModel.FilterConfiguration(255, v4, v5, v13);
                  type metadata accessor for Binding();
                  if (v15 <= 0x3F)
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
}

uint64_t sub_100031950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  v15 = type metadata accessor for FilterViewModel.FilterConfiguration(0, a8, a10, a4);
  v16 = v15[11];
  v17 = type metadata accessor for DateInterval();
  (*(*(v17 - 8) + 32))(&a9[v16], a4, v17);
  result = sub_10001AE00(a5, &a9[v15[12]], &qword_100222680, &qword_1001B5EC0);
  *&a9[v15[13]] = a6;
  *&a9[v15[14]] = a7;
  return result;
}

Swift::Int sub_100031A60(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100031ADC()
{
  Hasher.init(_seed:)();
  sub_100031A38(v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_100031B24()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v26 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v28 = AssociatedTypeWitness;
  __chkstk_darwin(AssociatedTypeWitness);
  v5 = &v26 - v4;
  v7 = type metadata accessor for FilterViewModel.FilterConfiguration(0, v2, v1, v6);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v26 - v14;
  sub_100031EB8(v13, v16, v17, v18);
  v19 = *(v10 + 1);
  v20 = *(v8 + 8);

  v20(v10, v7);
  v29 = v19;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();

  v21 = *(v2 - 8);
  if ((*(v21 + 48))(v15, 1, v2) == 1)
  {
    (*(v12 + 8))(v15, v11);
    return ResourceID.init(stringLiteral:)();
  }

  else
  {
    (*(v26 + 176))(v2, v26);
    (*(v21 + 8))(v15, v2);
    v23 = v28;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = (*(AssociatedConformanceWitness + 40))(v23, AssociatedConformanceWitness);
    (*(v27 + 8))(v5, v23);
    return v25;
  }
}

uint64_t sub_100031EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  type metadata accessor for FilterViewModel.FilterConfiguration(255, *(*v4 + 80), *(*v4 + 88), a4);
  v6 = type metadata accessor for Binding();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  (*(v7 + 16))(&v11 - v8, v4 + *(v5 + 200), v6);
  Binding.wrappedValue.getter();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100031FF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000320D0(uint64_t a1)
{
  v2 = type metadata accessor for CompactDatePickerConfiguration(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_100037EAC(a1, &v9 - v6);
  sub_100037EAC(v7, v5);
  Published.init(initialValue:)();
  sub_100037F10(a1);
  return sub_100037F10(v7);
}

uint64_t sub_1000321C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = type metadata accessor for CompactDatePickerConfiguration(0);
  __chkstk_darwin(v6 - 8);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + 80);
  v9 = v13;
  v10 = *(v5 + 88);
  v14 = v10;
  swift_getKeyPath();
  v12[0] = v9;
  v12[1] = v10;
  swift_getKeyPath();
  sub_100037EAC(a1, v8);

  static Published.subscript.setter();
  return sub_100037F10(a1);
}

uint64_t sub_1000322D4(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100222680, &qword_1001B5EC0);
  v3 = __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_10000BEB8(a1, &v9 - v6, &qword_100222680, &qword_1001B5EC0);
  sub_10000BEB8(v7, v5, &qword_100222680, &qword_1001B5EC0);
  Published.init(initialValue:)();
  sub_1000050C4(a1, &qword_100222680, &qword_1001B5EC0);
  return sub_1000050C4(v7, &qword_100222680, &qword_1001B5EC0);
}

uint64_t sub_100032400()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1000324B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Array();
  return sub_100036C60(&v5, v3);
}

uint64_t sub_100032534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for Set();
  return sub_100036C60(&v5, v3);
}

uint64_t sub_1000325F0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_1000326A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_10003275C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100032814(double a1, double a2, double a3, double a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_100032920(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_1000329E8(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100032AA0()
{
  if (sub_100032B98())
  {
    sub_1000024C4(&qword_100221A38, &qword_1001BA820);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1001B49B0;
    sub_1000320A8();
    v2 = Array.count.getter();

    *(v1 + 56) = &type metadata for Int;
    *(v1 + 64) = &protocol witness table for Int;
    *(v1 + 32) = v2;
    return String.init(format:_:)();
  }

  else
  {
    if (sub_100032C34())
    {
      v4 = *(v0 + 32);
    }

    else
    {
      v4 = *(v0 + 16);
    }

    return v4;
  }
}

BOOL sub_100032B98()
{
  sub_1000320A8();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v0 = Collection.isEmpty.getter();

  return (v0 & 1) == 0;
}

uint64_t sub_100032C34()
{
  if (sub_100033ADC() && (sub_1000320A8(), type metadata accessor for Array(), swift_getWitnessTable(), v0 = Collection.isEmpty.getter(), , (v0 & 1) != 0))
  {
    v1 = 1;
  }

  else if (sub_100033ADC() && sub_100033C38())
  {
    sub_1000320A8();
    type metadata accessor for Array();
    swift_getWitnessTable();
    v1 = Collection.isEmpty.getter();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_100032D9C()
{
  if (sub_100032B98())
  {
    return 1;
  }

  return sub_100032C34();
}

uint64_t sub_100032DD4@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = *v1;
  v22 = type metadata accessor for Date();
  v3 = *(v22 - 8);
  v4 = __chkstk_darwin(v22);
  v23 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  v21 = &v21 - v6;
  v8 = sub_1000024C4(&qword_100222680, &qword_1001B5EC0);
  v9 = v8 - 8;
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v31 = *(v2 + 80);
  v15 = v31;
  v32 = *(v2 + 88);
  v16 = v32;
  swift_getKeyPath();
  v29 = v15;
  v30 = v16;
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = *(v3 + 16);
  v18 = v7;
  v19 = v22;
  v17(v18, v14, v22);
  sub_1000050C4(v14, &qword_100222680, &qword_1001B5EC0);
  v27 = v15;
  v28 = v16;
  swift_getKeyPath();
  v25 = v15;
  v26 = v16;
  swift_getKeyPath();
  static Published.subscript.getter();

  v17(v23, &v12[*(v9 + 44)], v19);
  sub_1000050C4(v12, &qword_100222680, &qword_1001B5EC0);
  return DateInterval.init(start:end:)();
}

uint64_t sub_10003308C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  v7 = type metadata accessor for CompactDatePickerConfiguration(0);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v16 - v12;
  sub_1000320BC();
  v14 = *(v1 + 16);
  v14(v6, &v13[*(v8 + 28)], v0);
  sub_100037F10(v13);
  sub_1000321AC();
  v14(v4, &v11[*(v8 + 28)], v0);
  sub_100037F10(v11);
  return DateInterval.init(start:end:)();
}

uint64_t sub_10003323C@<X0>(char *a1@<X8>)
{
  v21 = a1;
  v2 = *v1;
  v20 = type metadata accessor for CompactDatePickerConfiguration(0) - 8;
  __chkstk_darwin(v20);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = sub_1000024C4(&qword_100222680, &qword_1001B5EC0);
  __chkstk_darwin(v12 - 8);
  v14 = &v20 - v13;
  v24 = *(v2 + 80);
  v15 = v24;
  v25 = *(v2 + 88);
  v16 = v25;
  swift_getKeyPath();
  v22 = v15;
  v23 = v16;
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = *(v6 + 16);
  v17(v11, v14, v5);
  sub_1000050C4(v14, &qword_100222680, &qword_1001B5EC0);
  sub_1000321AC();
  v17(v9, &v4[*(v20 + 28)], v5);
  sub_100037F10(v4);
  sub_1000AFEEC(v11, v9, v21);
  v18 = *(v6 + 8);
  v18(v9, v5);
  return (v18)(v11, v5);
}

uint64_t sub_1000334D8@<X0>(char *a1@<X8>)
{
  v24 = a1;
  v2 = *v1;
  v23 = sub_1000024C4(&qword_100222680, &qword_1001B5EC0) - 8;
  __chkstk_darwin(v23);
  v22 = &v21 - v3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = type metadata accessor for CompactDatePickerConfiguration(0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000320BC();
  v15 = *(v5 + 16);
  v15(v10, &v14[*(v12 + 28)], v4);
  sub_100037F10(v14);
  v27 = *(v2 + 80);
  v16 = v27;
  v17 = *(v2 + 88);
  v28 = v17;
  swift_getKeyPath();
  v25 = v16;
  v26 = v17;
  swift_getKeyPath();
  v18 = v22;
  static Published.subscript.getter();

  v15(v8, (v18 + *(v23 + 44)), v4);
  sub_1000050C4(v18, &qword_100222680, &qword_1001B5EC0);
  sub_1000AFEEC(v10, v8, v24);
  v19 = *(v5 + 8);
  v19(v8, v4);
  return (v19)(v10, v4);
}

BOOL sub_1000337B4(void (*a1)(uint64_t))
{
  v2 = type metadata accessor for Date();
  v22 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v21 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  v14 = sub_10003308C();
  a1(v14);
  v15 = *(v8 + 8);
  v15(v13, v7);
  v16 = sub_100032DD4(v11);
  v17 = v21;
  a1(v16);
  v15(v11, v7);
  sub_1000385C8(&qword_1002227D8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v22 + 8);
  v19(v17, v2);
  v19(v6, v2);
  return (v18 & 1) == 0;
}

BOOL sub_100033A20()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return (v1 & 1) == 0;
}

BOOL sub_100033ADC()
{
  v0 = type metadata accessor for DateInterval();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  sub_10003308C();
  sub_100032DD4(v4);
  sub_1000385C8(&qword_1002227D0, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return (v7 & 1) == 0;
}

BOOL sub_100033C38()
{
  sub_1000325DC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v0 = Set.isEmpty.getter();

  return (v0 & 1) == 0;
}

uint64_t sub_100033D00()
{
  v0 = sub_1000337B4(&DateInterval.start.getter);
  v1 = sub_1000337B4(&DateInterval.end.getter);
  v2 = 1;
  if (v0)
  {
    v2 = 2;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = v0;
  }

  sub_1000325DC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = Set.count.getter();

  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
  }

  return result;
}

BOOL sub_100033E18()
{
  sub_100032520();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v0 = Collection.isEmpty.getter();

  return (v0 & 1) == 0;
}

double sub_100033EE4()
{
  v0 = type metadata accessor for CompactDatePickerConfiguration(0);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000320BC();
  LOBYTE(v1) = v3[*(v1 + 32)];
  sub_100037F10(v3);
  result = 0.0;
  if ((v1 & 1) == 0)
  {
    return sub_1000328E4() * -0.5;
  }

  return result;
}

void sub_100033F80()
{
  v0 = type metadata accessor for CompactDatePickerConfiguration(0);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000320BC();
  sub_100037F10(v3);
  sub_1000321AC();
  LOBYTE(v1) = v3[*(v1 + 32)];
  sub_100037F10(v3);
  if ((v1 & 1) == 0)
  {
    sub_10003290C();
  }
}

uint64_t sub_100034048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 80);
  v6 = *(*v4 + 88);
  v7 = type metadata accessor for FilterViewModel.FilterConfiguration(0, v5, v6, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - v9;
  v20[2] = v5;
  v20[3] = v6;
  swift_getKeyPath();
  v20[0] = v5;
  v20[1] = v6;
  swift_getKeyPath();
  LOBYTE(v21) = 0;

  static Published.subscript.setter();
  v11 = static Array._allocateUninitialized(_:)();
  v12 = sub_1000326A4(v11, &unk_1001B6088, &unk_1001B60C0);
  sub_100031EB8(v12, v13, v14, v15);
  v16 = *(v10 + 1);
  v17 = *(v8 + 8);

  v17(v10, v7);
  v21 = v16;
  type metadata accessor for Array();
  swift_getWitnessTable();
  v18 = _ArrayProtocol.filter(_:)();
  return sub_1000326A4(v18, &unk_1001B6088, &unk_1001B60C0);
}

uint64_t sub_10003424C(uint64_t a1, void *a2)
{
  v85 = a1;
  v3 = *a2;
  v81 = type metadata accessor for Calendar.Component();
  v86 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for CompactDatePickerConfiguration(0) - 8;
  __chkstk_darwin(v82);
  v77 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Date();
  v87 = *(v73 - 8);
  v6 = __chkstk_darwin(v73);
  v72 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v71 = v53 - v8;
  v9 = type metadata accessor for DateInterval();
  v62 = v9;
  v83 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(v3 + 88);
  v12 = *(v74 + 8);
  v13 = *(v3 + 80);
  v76 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v17 = v53 - v16;
  v80 = type metadata accessor for Calendar();
  v84 = *(v80 - 8);
  __chkstk_darwin(v80);
  v75 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v19 = *(v12 + 168);
  v68 = v12 + 168;
  v69 = v19;
  v78 = v13;
  v67 = v12;
  v19(v13, v12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v54 = v11;
  v59 = AssociatedTypeWitness;
  sub_1000224A8(AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v20 = *(v15 + 8);
  v64 = v15 + 8;
  v65 = v20;
  v20(v17, AssociatedTypeWitness);
  v21 = v71;
  DateInterval.start.getter();
  v22 = *(v83 + 8);
  v83 += 8;
  v63 = v22;
  v22(v11, v9);
  v23 = v77;
  sub_1000320BC();
  v24 = *(v82 + 28);
  v25 = *(v87 + 16);
  v60 = v87 + 16;
  v61 = v25;
  v27 = v72;
  v26 = v73;
  v25(v72, v23 + v24, v73);
  sub_100037F10(v23);
  v58 = enum case for Calendar.Component.day(_:);
  v28 = v86;
  v29 = *(v86 + 104);
  v53[1] = v86 + 104;
  v57 = v29;
  v30 = v79;
  v31 = v81;
  v29(v79);
  v32 = v27;
  v33 = v75;
  v70 = Calendar.compare(_:to:toGranularity:)();
  v34 = *(v28 + 8);
  v86 = v28 + 8;
  v56 = v34;
  v34(v30, v31);
  v35 = *(v87 + 8);
  v87 += 8;
  v35(v27, v26);
  v36 = v21;
  v37 = v26;
  v35(v21, v26);
  v38 = *(v84 + 8);
  v84 += 8;
  v55 = v38;
  v38(v33, v80);
  static Calendar.current.getter();
  v69(v78, v67);
  v39 = v54;
  v40 = v59;
  sub_1000224A8(v59, AssociatedConformanceWitness, v54);
  v65(v17, v40);
  v41 = v36;
  DateInterval.start.getter();
  v63(v39, v62);
  v42 = v77;
  sub_1000321AC();
  v61(v32, v42 + *(v82 + 28), v37);
  sub_100037F10(v42);
  v43 = v79;
  v44 = v81;
  v57(v79, v58, v81);
  v45 = v43;
  v46 = v75;
  v47 = Calendar.compare(_:to:toGranularity:)();
  v56(v45, v44);
  v35(v32, v37);
  v35(v41, v37);
  v55(v46, v80);
  v49 = v70 < 2 && (v47 + 1) < 2;
  v88 = (*(v74 + 96))(v78, v74);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  Set.init<A>(_:)();
  sub_1000325DC();
  Set.intersection(_:)();

  v50 = Set.isEmpty.getter();

  if (!sub_100033ADC() || (v51 = v49, sub_100033C38()))
  {
    v51 = v50 ^ 1;
    if (sub_100033ADC() || !sub_100033C38())
    {
      v51 &= v49;
    }
  }

  return v51 & 1;
}

uint64_t sub_100034AE8()
{
  v1 = *v0;
  v2 = sub_1000024C4(&qword_100222680, &qword_1001B5EC0);
  __chkstk_darwin(v2 - 8);
  v60 = &v52 - v3;
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v7 = type metadata accessor for FilterViewModel.FilterConfiguration(0, v4, v5, v6);
  v8 = *(v7 - 8);
  v55 = v7;
  v56 = v8;
  v9 = __chkstk_darwin(v7);
  v57 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v52 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v52 - v15;
  __chkstk_darwin(v14);
  v58 = &v52 - v17;
  v63 = type metadata accessor for DateInterval();
  v18 = *(v63 - 8);
  v19 = __chkstk_darwin(v63);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v52 - v22;
  if (sub_100033A20())
  {
    sub_10003308C();
    if (!sub_100033A20())
    {
      goto LABEL_3;
    }

LABEL_6:
    v54 = sub_100033D00();
    if (!sub_100033A20())
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_100032DD4(v23);
  if (sub_100033A20())
  {
    goto LABEL_6;
  }

LABEL_3:
  v54 = 0;
  if (!sub_100033A20())
  {
LABEL_4:
    v24 = static Array._allocateUninitialized(_:)();
    goto LABEL_8;
  }

LABEL_7:
  v24 = sub_1000320A8();
LABEL_8:
  v53 = v24;
  v62 = v23;
  v25 = sub_100033A20();
  v61 = v4;
  v59 = v5;
  if (v25)
  {
    v26 = sub_1000325DC();
    v52 = v26;
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v31 = static Array._allocateUninitialized(_:)();
    if (Array._getCount()())
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v52 = sub_1000381D8(v31, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8));
    }

    else
    {

      v52 = &_swiftEmptySetSingleton;
    }
  }

  sub_100031EB8(v26, v27, v28, v29);
  v33 = *(v16 + 1);
  v34 = *(v56 + 8);

  v35 = v55;
  v34(v16, v55);
  v36 = (*(v18 + 16))(v21, v62, v63);
  sub_100031EB8(v36, v37, v38, v39);
  v40 = v60;
  sub_10000BEB8(&v13[*(v35 + 48)], v60, &qword_100222680, &qword_1001B5EC0);
  v41 = (v34)(v13, v35);
  v42 = v57;
  sub_100031EB8(v41, v43, v44, v45);
  v46 = *&v42[*(v35 + 52)];

  v34(v42, v35);
  v47 = v58;
  sub_100031950(v54, v33, v53, v21, v40, v46, v52, v61, v58, v59);
  sub_100036F18(v47, v48, v49, v50);
  v34(v47, v35);
  return (*(v18 + 8))(v62, v63);
}

uint64_t sub_100034F58()
{
  v1 = *v0;
  v2 = type metadata accessor for Date();
  v33 = *(v2 - 8);
  v3 = v33;
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v5;
  v31 = sub_1000024C4(&qword_100222680, &qword_1001B5EC0) - 8;
  __chkstk_darwin(v31);
  v7 = &v26 - v6;
  v48 = *(v1 + 80);
  v8 = v48;
  v9 = *(v1 + 88);
  v49 = v9;
  swift_getKeyPath();
  v46 = v8;
  v47 = v9;
  swift_getKeyPath();
  static Published.subscript.getter();

  v29 = *(v3 + 16);
  v30 = v3 + 16;
  v10 = v5;
  v11 = v2;
  v29(v10, v7, v2);
  sub_1000050C4(v7, &qword_100222680, &qword_1001B5EC0);
  v44 = v8;
  v45 = v9;
  swift_getKeyPath();
  v42 = v8;
  v43 = v9;
  swift_getKeyPath();
  v12 = static Published.subscript.modify();
  v14 = v13;
  v28 = type metadata accessor for CompactDatePickerConfiguration(0);
  v15 = *(v28 + 20);
  v16 = *(v33 + 40);
  v33 += 40;
  v27 = v16;
  v16(v14 + v15, v32, v11);
  v12(v50, 0);

  v40 = v8;
  v41 = v9;
  swift_getKeyPath();
  v38 = v8;
  v39 = v9;
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = v32;
  v29(v32, &v7[*(v31 + 44)], v11);
  sub_1000050C4(v7, &qword_100222680, &qword_1001B5EC0);
  v36 = v8;
  v37 = v9;
  swift_getKeyPath();
  v34 = v8;
  v35 = v9;
  swift_getKeyPath();
  v18 = static Published.subscript.modify();
  v27(v19 + *(v28 + 20), v17, v11);
  v18(v50, 0);

  v20 = static Array._allocateUninitialized(_:)();
  sub_1000326A4(v20, &unk_1001B6088, &unk_1001B60C0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = static Array._allocateUninitialized(_:)();
  if (Array._getCount()())
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v24 = sub_1000381D8(v22, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8));
  }

  else
  {
    v24 = &_swiftEmptySetSingleton;
  }

  return sub_1000326A4(v24, &unk_1001B60E0, &unk_1001B6118);
}

void sub_100035414(char a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001B3B60;
  v11 = sub_100031B24();
  *(v10 + 56) = &type metadata for AnalyticsString;
  *(v10 + 64) = &off_100228B70;
  *(v10 + 32) = 0;
  *(v10 + 40) = v11;
  *(v10 + 48) = v12;
  *(v10 + 96) = &type metadata for AnalyticsPageName;
  *(v10 + 104) = &off_100228B48;
  *(v10 + 72) = 12;
  *(v10 + 136) = &type metadata for AnalyticsModuleName;
  *(v10 + 144) = &off_100228BD0;
  *(v10 + 112) = a1;
  *(v10 + 176) = &type metadata for AnalyticsModuleAction;
  *(v10 + 184) = &off_100228BA8;
  *(v10 + 152) = a2;
  *(v10 + 160) = a3;
  *(v10 + 168) = a4;
  if (*(a5 + 72))
  {
    v13 = *(a5 + 64);
    v14 = *(a5 + 72);
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  v28 = &type metadata for AnalyticsString;
  v29 = &off_100228B70;
  LOBYTE(aBlock) = 1;
  v26 = v13;
  v27 = v14;
  sub_100006C80(a2, a3, a4);
  v31 = v10;
  v15 = *(v10 + 16);
  v16 = *(v10 + 24);

  if (v15 >= v16 >> 1)
  {
    v10 = sub_1001894F4((v16 > 1), v15 + 1, 1, v10);
    v31 = v10;
  }

  v17 = sub_10002FAD0(&aBlock, &type metadata for AnalyticsString);
  __chkstk_darwin(v17);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  sub_100118768(v15, v19, &v31, &type metadata for AnalyticsString, &off_100228B70);
  sub_100012A7C(&aBlock);
  v21 = String._bridgeToObjectiveC()();
  v22 = swift_allocObject();
  v22[2] = 0xD00000000000001ELL;
  v22[3] = 0x80000001001C4640;
  v22[4] = v10;
  v29 = sub_100006D88;
  v30 = v22;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_10015B4A4;
  v28 = &unk_1002132B8;
  v23 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v23);
}

uint64_t sub_100035708(uint64_t a1)
{
  v2 = sub_100031B24();
  sub_10015B530(v2, v3, 12, a1);
}

uint64_t sub_100035750(uint64_t a1)
{
  sub_1000325DC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v1 = Set.contains(_:)();

  return v1 & 1;
}

uint64_t sub_10003581C(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v6 = __chkstk_darwin(AssociatedTypeWitness);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v27 = type metadata accessor for Optional();
  v11 = *(v27 - 8);
  __chkstk_darwin(v27);
  v13 = &v26 - v12;
  v14 = sub_100035750(a1);
  if (v14)
  {
    __chkstk_darwin(v14);
    *(&v26 - 2) = v4;
    *(&v26 - 1) = v3;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v26 - 2) = v4;
    *(&v26 - 1) = v3;
    swift_getKeyPath();
    v29 = KeyPath;
    v16 = static Published.subscript.modify();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Set();
    Set.remove(_:)();
    (*(v11 + 8))(v13, v27);
    v16(v30, 0);
  }

  else
  {
    v17 = v28;
    v18 = (*(v28 + 16))(v8, a1, AssociatedTypeWitness);
    __chkstk_darwin(v18);
    *(&v26 - 2) = v4;
    *(&v26 - 1) = v3;
    v19 = swift_getKeyPath();
    __chkstk_darwin(v19);
    *(&v26 - 2) = v4;
    *(&v26 - 1) = v3;
    swift_getKeyPath();
    v29 = v19;
    v20 = static Published.subscript.modify();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Set();
    Set.insert(_:)();
    (*(v17 + 8))(v10, AssociatedTypeWitness);
    v20(v30, 0);
  }

  return sub_100034048(v21, v22, v23, v24);
}

char *sub_100035C1C()
{
  v1 = *v0;

  v2 = *(*v0 + 120);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  type metadata accessor for FilterViewModel.FilterState(255, v3, v4, v5);
  v6 = type metadata accessor for Published();
  (*(*(v6 - 8) + 8))(&v0[v2], v6);
  v7 = *(*v0 + 128);
  type metadata accessor for Array();
  v8 = type metadata accessor for Published();
  (*(*(v8 - 8) + 8))(&v0[v7], v8);
  v9 = *(*v0 + 136);
  v10 = sub_1000024C4(&qword_1002227A0, &qword_1001B5FF8);
  v11 = *(*(v10 - 8) + 8);
  v11(&v0[v9], v10);
  v11(&v0[*(*v0 + 144)], v10);
  v12 = *(*v0 + 152);
  v13 = sub_1000024C4(&qword_1002227A8, &qword_1001B6000);
  (*(*(v13 - 8) + 8))(&v0[v12], v13);
  v14 = *(*v0 + 160);
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  v15 = type metadata accessor for Published();
  (*(*(v15 - 8) + 8))(&v0[v14], v15);
  v16 = *(*v0 + 168);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  v17 = type metadata accessor for Published();
  (*(*(v17 - 8) + 8))(&v0[v16], v17);
  v18 = *(*v0 + 176);
  v19 = sub_1000024C4(&qword_1002227B0, &qword_1001B6008);
  (*(*(v19 - 8) + 8))(&v0[v18], v19);
  v20 = *(*v0 + 184);
  v21 = sub_1000024C4(&qword_1002227B8, &qword_1001B6010);
  v22 = *(*(v21 - 8) + 8);
  v22(&v0[v20], v21);
  v22(&v0[*(*v0 + 192)], v21);
  v23 = *(*v0 + 200);
  type metadata accessor for FilterViewModel.FilterConfiguration(255, v3, v4, v24);
  v25 = type metadata accessor for Binding();
  (*(*(v25 - 8) + 8))(&v0[v23], v25);

  return v0;
}

uint64_t sub_1000361B0()
{
  sub_100035C1C();

  return swift_deallocClassInstance();
}

void sub_100036238(uint64_t a1)
{
  if (!qword_100222670)
  {
    type metadata accessor for CompactDatePickerConfiguration(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100222670);
    }
  }
}

void sub_100036290(uint64_t a1)
{
  if (!qword_100222678)
  {
    sub_10000460C(&qword_100222680, &qword_1001B5EC0);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100222678);
    }
  }
}

void sub_1000362F4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100036358(uint64_t a1)
{
  type metadata accessor for Array();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DateInterval();
    if (v2 <= 0x3F)
    {
      sub_100036720(319);
      if (v3 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        type metadata accessor for Array();
        if (v4 <= 0x3F)
        {
          swift_getAssociatedConformanceWitness();
          type metadata accessor for Set();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000364AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DateInterval();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000024C4(&qword_100222680, &qword_1001B5EC0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000365F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for DateInterval();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000024C4(&qword_100222680, &qword_1001B5EC0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100036720(uint64_t a1)
{
  if (!qword_100222718[0])
  {
    type metadata accessor for Date();
    sub_1000385C8(&qword_100221EF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v1 = type metadata accessor for ClosedRange();
    if (!v2)
    {
      atomic_store(v1, qword_100222718);
    }
  }
}

uint64_t sub_1000367E4@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000368A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for CompactDatePickerConfiguration(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100037EAC(a1, v11);
  return sub_1000321C0(v11, a5, a6);
}

uint64_t sub_100036948()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1000369E0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = sub_1000024C4(&qword_100222680, &qword_1001B5EC0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v14 - v11;
  sub_10000BEB8(a1, v14 - v11, &qword_100222680, &qword_1001B5EC0);
  v14[2] = v5;
  v14[3] = v6;
  swift_getKeyPath();
  v14[0] = v5;
  v14[1] = v6;
  swift_getKeyPath();
  sub_10000BEB8(v12, v10, &qword_100222680, &qword_1001B5EC0);

  static Published.subscript.setter();
  return sub_1000050C4(v12, &qword_100222680, &qword_1001B5EC0);
}

uint64_t sub_100036B2C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_100036BCC(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100036C60(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  Published.init(initialValue:)();
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_100036D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000024C4(&qword_1002227C0, &qword_1001B6018);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = (&v20 - v10);
  result = sub_10001AE00(v4, &v20 - v10, &qword_1002227C8, &unk_1001B6020);
  v13 = *(v9 + 44);
  *(v11 + v13) = 0;
  if (!a2)
  {
LABEL_11:
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    sub_10001AE00(v11, a1, &qword_1002227C0, &qword_1001B6018);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = a3;
    v21 = a1;
    v14 = 0;
    v15 = *v11;
    a1 = a3 - 1;
    while (1)
    {
      if (v15 == v14)
      {
        a3 = v15;
        a1 = v21;
        goto LABEL_14;
      }

      if (v14 >= v15)
      {
        break;
      }

      v16 = v14 + 1;
      v17 = *(sub_1000024C4(&qword_1002227C8, &unk_1001B6020) + 28);
      *(v11 + v13) = v14 + 1;
      v18 = type metadata accessor for GridItem();
      v19 = *(v18 - 8);
      result = (*(v19 + 16))(a2, v11 + v17, v18);
      if (a1 == v14)
      {
        a3 = v20;
        a1 = v21;
        goto LABEL_14;
      }

      a2 += *(v19 + 72);
      ++v14;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100036F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = type metadata accessor for FilterViewModel.FilterConfiguration(0, *(*v4 + 80), *(*v4 + 88), a4);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - v9;
  v11 = type metadata accessor for Binding();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - v13;
  (*(v12 + 16))(&v16 - v13, v4 + *(v6 + 200), v11);
  (*(v8 + 16))(v10, a1, v7);
  Binding.wrappedValue.setter();
  return (*(v12 + 8))(v14, v11);
}

Swift::String *sub_1000370EC(uint64_t a1)
{
  v2 = v1;
  v111 = a1;
  countAndFlagsBits = v1->_countAndFlagsBits;
  v4 = sub_1000024C4(&qword_100222680, &qword_1001B5EC0);
  __chkstk_darwin(v4 - 8);
  v114 = &v110 - v5;
  v112 = type metadata accessor for CompactDatePickerConfiguration(0);
  __chkstk_darwin(v112);
  v113 = (&v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(countAndFlagsBits + 80);
  v128 = *(countAndFlagsBits + 88);
  v129 = v7;
  v9 = type metadata accessor for FilterViewModel.FilterConfiguration(0, v7, v128, v8);
  v116 = *(v9 - 8);
  v117 = v9;
  __chkstk_darwin(v9);
  v115 = &v110 - v10;
  v11 = sub_1000024C4(&qword_1002227C0, &qword_1001B6018);
  __chkstk_darwin(v11 - 8);
  v127 = &v110 - v12;
  v13 = type metadata accessor for GridItem.Size();
  v124 = *(v13 - 8);
  v125 = v13;
  __chkstk_darwin(v13);
  v123 = (&v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v122 = sub_1000024C4(&qword_1002227C8, &unk_1001B6020) - 8;
  v15 = __chkstk_darwin(v122);
  v126 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v121 = &v110 - v17;
  v119 = sub_1000024C4(&qword_1002227B8, &qword_1001B6010);
  v18 = *(v119 - 8);
  __chkstk_darwin(v119);
  v20 = &v110 - v19;
  v118 = sub_1000024C4(&qword_1002227B0, &qword_1001B6008);
  v21 = *(v118 - 8);
  __chkstk_darwin(v118);
  v23 = &v110 - v22;
  v24 = objc_opt_self();
  v25 = [v24 mainBundle];
  v26._countAndFlagsBits = 0xD000000000000024;
  v120 = 0xD000000000000024;
  v133._object = 0xE000000000000000;
  v26._object = 0x80000001001C5290;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v133._countAndFlagsBits = 0;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v133);

  v2[1] = v28;
  v29 = [v24 mainBundle];
  v134._object = 0xE000000000000000;
  v30._object = 0x80000001001C52C0;
  v30._countAndFlagsBits = 0xD000000000000025;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v134._countAndFlagsBits = 0;
  v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v29, v31, v134);

  v2[2] = v32;
  v33 = [v24 mainBundle];
  v135._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0xD00000000000002CLL;
  v34._object = 0x80000001001C52F0;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v135._countAndFlagsBits = 0;
  v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v135);

  v2[3] = v36;
  v37 = *(v2->_countAndFlagsBits + 176);
  v130 = 0;
  v131 = 0u;
  Published.init(initialValue:)();
  (*(v21 + 32))(v2 + v37, v23, v118);
  v38 = *(v2->_countAndFlagsBits + 184);
  v130._countAndFlagsBits = 0;
  Published.init(initialValue:)();
  v39 = *(v18 + 32);
  v40 = v119;
  v39(v2 + v38, v20, v119);
  v41 = *(v2->_countAndFlagsBits + 192);
  v130._countAndFlagsBits = 0;
  Published.init(initialValue:)();
  v39(v2 + v41, v20, v40);
  v42 = v2 + *(v2->_countAndFlagsBits + 208);
  *v42 = LocalizedStringKey.init(stringLiteral:)();
  *(v42 + 1) = v43;
  v42[16] = v44 & 1;
  *(v42 + 3) = v45;
  v46 = (&v2->_countAndFlagsBits + *(v2->_countAndFlagsBits + 216));
  v47 = v24;
  v48 = [v24 mainBundle];
  v136._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0xD000000000000030;
  v49._object = 0x80000001001C5350;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v136._countAndFlagsBits = 0;
  v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, 0, v48, v50, v136);

  v130 = v51;
  sub_10001877C(v52, v53, v54);
  v55 = StringProtocol.localizedUppercase.getter();
  v57 = v56;

  *v46 = v55;
  v46[1] = v57;
  v58 = v2 + *(v2->_countAndFlagsBits + 224);
  *v58 = LocalizedStringKey.init(stringLiteral:)();
  *(v58 + 1) = v59;
  v58[16] = v60 & 1;
  *(v58 + 3) = v61;
  v62 = v2 + *(v2->_countAndFlagsBits + 232);
  *v62 = LocalizedStringKey.init(stringLiteral:)();
  *(v62 + 1) = v63;
  v62[16] = v64 & 1;
  *(v62 + 3) = v65;
  v66 = v2 + *(v2->_countAndFlagsBits + 240);
  *v66 = LocalizedStringKey.init(stringLiteral:)();
  *(v66 + 1) = v67;
  v66[16] = v68 & 1;
  *(v66 + 3) = v69;
  v70 = v2 + *(v2->_countAndFlagsBits + 248);
  *v70 = LocalizedStringKey.init(stringLiteral:)();
  *(v70 + 1) = v71;
  v70[16] = v72 & 1;
  *(v70 + 3) = v73;
  v74 = v2 + *(v2->_countAndFlagsBits + 256);
  *v74 = LocalizedStringKey.init(stringLiteral:)();
  *(v74 + 1) = v75;
  v74[16] = v76 & 1;
  *(v74 + 3) = v77;
  v79 = v123;
  v78 = v124;
  *v123 = xmmword_1001B5590;
  (*(v78 + 104))(v79, enum case for GridItem.Size.flexible(_:), v125);
  v80 = v121;
  GridItem.init(_:spacing:alignment:)();
  *v80 = 2;
  v81 = sub_100189CF4(2, 0);
  v82 = *(type metadata accessor for GridItem() - 8);
  v83 = (*(v82 + 80) + 32) & ~*(v82 + 80);
  sub_10000BEB8(v80, v126, &qword_1002227C8, &unk_1001B6020);
  v84 = v127;
  v85 = sub_100036D50(v127, v81 + v83, 2);
  sub_1000050C4(v84, &qword_1002227C0, &qword_1001B6018);
  result = sub_1000050C4(v80, &qword_1002227C8, &unk_1001B6020);
  if (v85 == 2)
  {
    *(&v2->_countAndFlagsBits + *(v2->_countAndFlagsBits + 264)) = v81;
    v87 = *(v2->_countAndFlagsBits + 200);
    v88 = v117;
    v89 = type metadata accessor for Binding();
    (*(*(v89 - 8) + 16))(v2 + v87, v111, v89);
    v90 = v115;
    Binding.wrappedValue.getter();
    LOBYTE(v89) = *v90 < 1;
    swift_beginAccess();
    LOBYTE(v132[0]) = v89;
    v92 = type metadata accessor for FilterViewModel.FilterState(0, v129, v128, v91);
    sub_100036C60(v132, v92);
    swift_endAccess();
    v93 = v90[2];
    swift_beginAccess();

    v132[0] = v93;
    v94 = type metadata accessor for Array();
    sub_100036C60(v132, v94);
    swift_endAccess();
    v95 = [v47 mainBundle];
    v137._object = 0xE000000000000000;
    v96._object = 0x80000001001C5490;
    v96._countAndFlagsBits = 0xD000000000000025;
    v97._countAndFlagsBits = 0;
    v97._object = 0xE000000000000000;
    v137._countAndFlagsBits = 0;
    v98 = NSLocalizedString(_:tableName:bundle:value:comment:)(v96, 0, v95, v97, v137);

    v99 = v112;
    v100 = v113;
    DateInterval.start.getter();
    *v100 = v98;
    *(&v100->_countAndFlagsBits + *(v99 + 24)) = 0;
    swift_beginAccess();
    sub_1000320D0(v100);
    swift_endAccess();
    v101 = [v47 mainBundle];
    v102._countAndFlagsBits = 0xD000000000000023;
    v138._object = 0xE000000000000000;
    v102._object = 0x80000001001C54C0;
    v103._countAndFlagsBits = 0;
    v103._object = 0xE000000000000000;
    v138._countAndFlagsBits = 0;
    v104 = NSLocalizedString(_:tableName:bundle:value:comment:)(v102, 0, v101, v103, v138);

    DateInterval.end.getter();
    *v100 = v104;
    *(&v100->_countAndFlagsBits + *(v99 + 24)) = 0;
    swift_beginAccess();
    sub_1000320D0(v100);
    swift_endAccess();
    v105 = v114;
    sub_10000BEB8(v90 + *(v88 + 48), v114, &qword_100222680, &qword_1001B5EC0);
    swift_beginAccess();
    sub_1000322D4(v105);
    swift_endAccess();
    swift_beginAccess();

    v108 = v128;
    v107 = v129;
    sub_1000324B4(v106, v129, v128);
    swift_endAccess();
    swift_beginAccess();

    sub_100032534(v109, v107, v108);
    swift_endAccess();
    (*(v116 + 8))(v90, v88);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100037EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompactDatePickerConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100037F10(uint64_t a1)
{
  v2 = type metadata accessor for CompactDatePickerConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100037F6C()
{

  return swift_deallocObject();
}

uint64_t sub_100037FAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100037FC4(uint64_t a1@<X8>)
{
  *a1 = sub_10003275C();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_10003802C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_100038038@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000320A8();
  *a1 = result;
  return result;
}

uint64_t sub_100038084@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000325DC();
  *a1 = result;
  return result;
}

_BYTE *sub_1000381D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v50 = &v38 - v11;
  v39 = v12;
  __chkstk_darwin(v10);
  v14 = &v38 - v13;
  if (Array.count.getter())
  {
    type metadata accessor for _SetStorage();
    v15 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v15 = &_swiftEmptySetSingleton;
  }

  v43 = Array._getCount()();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = _ArrayBuffer._getElementSlowPath(_:)();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v22 = v15;
    v23 = -1 << v15[32];
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *&v49[8 * (v24 >> 6)];
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (v22[6] + v28 * v24), a2);
        v30 = a3;
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *&v49[8 * (v24 >> 6)];
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *&v49[8 * v25] = v27 | v26;
    v34 = v22[6] + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = v22[2];
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    v22[2] = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1000385C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100038610@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100032520();
  *a1 = result;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for TourPhotosScrollBar(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000386BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100038704(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100038770()
{
  result = static Color.secondary.getter();
  qword_1002227E0 = result;
  return result;
}

uint64_t sub_100038790@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a2;
  v5 = a1;
  v49 = a4;
  v6 = sub_1000024C4(&qword_1002227F8, &qword_1001B6448);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v45 = &v44 - v8;
  v9 = sub_1000024C4(&qword_100222800, &qword_1001B6450);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v44 - v13;
  v15 = sub_1000024C4(&qword_100222808, &unk_1001B6458);
  v16 = __chkstk_darwin(v15 - 8);
  v48 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v44 - v18;
  v20 = sub_1000024C4(&qword_1002223E8, &qword_1001B5AA0);
  v21 = v20 - 8;
  v22 = __chkstk_darwin(v20);
  v47 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v44 - v24;
  Divider.init()();
  v26 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v27 = *(v21 + 44);
  v28 = v46;
  v29 = &v25[v27];
  *v29 = v26;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  *v19 = static VerticalAlignment.center.getter();
  *(v19 + 1) = 0x4018000000000000;
  v19[16] = 0;
  v34 = sub_1000024C4(&qword_100222810, &qword_1001B6468);
  sub_100038C64(v5, &v19[*(v34 + 44)]);
  if (v5)
  {
    v35 = 1;
  }

  else
  {
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = v28;
    *(v36 + 32) = a3;

    sub_1000024C4(&qword_100222818, &qword_1001B6470);
    sub_100039484();
    v37 = v45;
    Button.init(action:label:)();
    (*(v7 + 32))(v14, v37, v6);
    v35 = 0;
  }

  (*(v7 + 56))(v14, v35, 1, v6);
  v38 = v47;
  sub_10000BEB8(v25, v47, &qword_1002223E8, &qword_1001B5AA0);
  v39 = v48;
  v46 = v25;
  sub_10000BEB8(v19, v48, &qword_100222808, &unk_1001B6458);
  sub_10000BEB8(v14, v12, &qword_100222800, &qword_1001B6450);
  v40 = v12;
  v41 = v49;
  sub_10000BEB8(v38, v49, &qword_1002223E8, &qword_1001B5AA0);
  v42 = sub_1000024C4(&qword_100222868, &unk_1001B64A0);
  sub_10000BEB8(v39, v41 + *(v42 + 48), &qword_100222808, &unk_1001B6458);
  sub_10000BEB8(v40, v41 + *(v42 + 64), &qword_100222800, &qword_1001B6450);
  sub_1000050C4(v14, &qword_100222800, &qword_1001B6450);
  sub_1000050C4(v19, &qword_100222808, &unk_1001B6458);
  sub_1000050C4(v46, &qword_1002223E8, &qword_1001B5AA0);
  sub_1000050C4(v40, &qword_100222800, &qword_1001B6450);
  sub_1000050C4(v39, &qword_100222808, &unk_1001B6458);
  return sub_1000050C4(v38, &qword_1002223E8, &qword_1001B5AA0);
}

uint64_t sub_100038C64@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1000024C4(&qword_100222888, &qword_1001B64C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - v5;
  v7 = sub_1000024C4(&qword_100222890, &qword_1001B64C8);
  v8 = __chkstk_darwin(v7 - 8);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  if (a1)
  {
    ProgressView<>.init<>()();
    if (qword_100220B48 != -1)
    {
      swift_once();
    }

    v12 = qword_1002227E0;
    KeyPath = swift_getKeyPath();
    v35 = v12;

    v14 = AnyShapeStyle.init<A>(_:)();
    v15 = &v6[*(v3 + 36)];
    *v15 = KeyPath;
    v15[1] = v14;
    sub_100039874(v6, v11);
    (*(v4 + 56))(v11, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(&v32 - v10, 1, 1, v3);
  }

  LocalizedStringKey.init(_:)();
  v16 = Text.init(_:tableName:bundle:comment:)();
  v18 = v17;
  v20 = v19;
  if (qword_100220B48 != -1)
  {
    swift_once();
  }

  v35 = qword_1002227E0;

  v21 = Text.foregroundStyle<A>(_:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_100017398(v16, v18, v20 & 1);

  v28 = v33;
  sub_10000BEB8(v11, v33, &qword_100222890, &qword_1001B64C8);
  v29 = v34;
  sub_10000BEB8(v28, v34, &qword_100222890, &qword_1001B64C8);
  v30 = v29 + *(sub_1000024C4(&qword_100222898, &qword_1001B64D0) + 48);
  *v30 = v21;
  *(v30 + 8) = v23;
  v25 &= 1u;
  *(v30 + 16) = v25;
  *(v30 + 24) = v27;
  sub_1000187D8(v21, v23, v25);

  sub_1000050C4(v11, &qword_100222890, &qword_1001B64C8);
  sub_100017398(v21, v23, v25);

  return sub_1000050C4(v28, &qword_100222890, &qword_1001B64C8);
}

double sub_100039034@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(_:)();
  v5 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  v38 = v10;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = v9 & 1;
  LOBYTE(v47[0]) = v9 & 1;
  v12 = static Edge.Set.horizontal.getter();
  LOBYTE(v39) = 1;
  if (qword_100220B48 != -1)
  {
    swift_once();
  }

  v13 = qword_1002227E0;
  v14 = *(v2 + 20);
  v15 = enum case for RoundedCornerStyle.continuous(_:);
  v16 = type metadata accessor for RoundedCornerStyle();
  (*(*(v16 - 8) + 104))(&v4[v14], v15, v16);
  __asm { FMOV            V0.2D, #3.0 }

  *v4 = _Q0;

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v22 = a1 + *(sub_1000024C4(&qword_100222818, &qword_1001B6470) + 36);
  sub_100039704(v4, v22);
  v23 = v22 + *(sub_1000024C4(&qword_100222870, &unk_1001B8DB0) + 36);
  v24 = v40;
  *v23 = v39;
  *(v23 + 16) = v24;
  *(v23 + 32) = v41;
  v25 = sub_1000024C4(&qword_100222878, &unk_1001B64B0);
  *(v22 + *(v25 + 52)) = v13;
  *(v22 + *(v25 + 56)) = 256;

  v26 = static Alignment.center.getter();
  v28 = v27;
  sub_100039768(v4);
  v29 = (v22 + *(sub_1000024C4(&qword_100222880, &unk_1001B8DC0) + 36));
  *v29 = v26;
  v29[1] = v28;
  v30 = static Alignment.center.getter();
  v32 = v31;
  v33 = (v22 + *(sub_1000024C4(&qword_100222860, &qword_1001B6498) + 36));
  *v33 = v30;
  v33[1] = v32;
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v11;
  *(a1 + 20) = *(v47 + 3);
  v34 = *&v46[3];
  *(a1 + 17) = v47[0];
  *(a1 + 24) = v38;
  v35 = v44;
  v36 = v42;
  *(a1 + 48) = v43;
  *(a1 + 64) = v35;
  *(a1 + 32) = v36;
  *(a1 + 80) = v12;
  LODWORD(v33) = *v46;
  *(a1 + 84) = v34;
  *(a1 + 81) = v33;
  result = 0.0;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 1;
  LODWORD(v33) = *v45;
  *(a1 + 124) = *&v45[3];
  *(a1 + 121) = v33;
  *(a1 + 128) = v13;
  return result;
}

double sub_100039360@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v6 = *(v2 + 1);
  v5 = *(v2 + 2);
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0x4035000000000000;
  *(a2 + 16) = 0;
  v7 = sub_1000024C4(&qword_1002227E8, &qword_1001B6438);
  sub_100038790(v4, v6, v5, a2 + *(v7 + 44));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v8 = (a2 + *(sub_1000024C4(&qword_1002227F0, &qword_1001B6440) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

uint64_t sub_100039424()
{

  return swift_deallocObject();
}

unint64_t sub_100039484()
{
  result = qword_100222820;
  if (!qword_100222820)
  {
    sub_10000460C(&qword_100222818, &qword_1001B6470);
    sub_10003953C();
    sub_10000BFFC(&qword_100222858, &qword_100222860, &qword_1001B6498, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222820);
  }

  return result;
}

unint64_t sub_10003953C()
{
  result = qword_100222828;
  if (!qword_100222828)
  {
    sub_10000460C(&qword_100222830, &qword_1001B6478);
    sub_1000395F4();
    sub_10000BFFC(&qword_1002221E0, &qword_1002221E8, &qword_1001B6490, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222828);
  }

  return result;
}

unint64_t sub_1000395F4()
{
  result = qword_100222838;
  if (!qword_100222838)
  {
    sub_10000460C(&qword_100222840, &qword_1001B6480);
    sub_100039680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222838);
  }

  return result;
}

unint64_t sub_100039680()
{
  result = qword_100222848;
  if (!qword_100222848)
  {
    sub_10000460C(&qword_100222850, &qword_1001B6488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222848);
  }

  return result;
}

uint64_t sub_100039704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100039768(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000397C4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000397F0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100039874(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100222888, &qword_1001B64C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000398E8()
{
  result = qword_1002228A0;
  if (!qword_1002228A0)
  {
    sub_10000460C(&qword_1002227F0, &qword_1001B6440);
    sub_10000BFFC(&qword_1002228A8, &qword_1002228B0, &qword_1001B6508, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002228A0);
  }

  return result;
}

uint64_t sub_1000399B4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_1000024C4(&qword_1002228B8, &unk_1001B6510);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_100039A90(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1000024C4(&qword_1002228B8, &unk_1001B6510);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for EventRootView(uint64_t a1)
{
  result = qword_100222918;
  if (!qword_100222918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100039B8C(uint64_t a1)
{
  sub_100017044(319);
  if (v1 <= 0x3F)
  {
    sub_100039C10(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100039C10(uint64_t a1)
{
  if (!qword_100222928)
  {
    sub_10000460C(&qword_100221730, qword_1001B6530);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100222928);
    }
  }
}

uint64_t sub_100039CE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000024C4(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_10000BEB8(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_100039F08@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000024C4(&qword_1002216D0, &qword_1001B4410);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_10000BEB8(v2, &v13 - v9, &qword_1002216D0, &qword_1001B4410);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10003BBE0(v10, a1);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10003A128@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000024C4(&qword_100222958, &unk_1001B6FA0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  v9 = sub_1000024C4(&qword_100221730, qword_1001B6530);
  v10 = __chkstk_darwin(v9 - 8);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v32 - v13;
  __chkstk_darwin(v12);
  v16 = (&v32 - v15);
  v17 = sub_1000024C4(&qword_100222960, &qword_1001B6590);
  v37 = *(v17 - 8);
  v38 = v17;
  __chkstk_darwin(v17);
  v36 = &v32 - v18;
  v35 = sub_1000024C4(&qword_100222968, &qword_1001B6598);
  __chkstk_darwin(v35);
  v20 = &v32 - v19;
  sub_10003A770(v1, v43);
  type metadata accessor for EventRootView(0);
  sub_100039F08(v16);
  (*(v3 + 104))(v14, enum case for UserInterfaceSizeClass.compact(_:), v2);
  (*(v3 + 56))(v14, 0, 1, v2);
  v21 = *(v6 + 56);
  sub_10000BEB8(v16, v8, &qword_100221730, qword_1001B6530);
  sub_10000BEB8(v14, &v8[v21], &qword_100221730, qword_1001B6530);
  v22 = *(v3 + 48);
  if (v22(v8, 1, v2) != 1)
  {
    sub_10000BEB8(v8, v34, &qword_100221730, qword_1001B6530);
    if (v22(&v8[v21], 1, v2) != 1)
    {
      v23 = &v8[v21];
      v24 = v33;
      (*(v3 + 32))(v33, v23, v2);
      sub_10003BDD8(&qword_100221838, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      v25 = v34;
      dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v3 + 8);
      v26(v24, v2);
      sub_1000050C4(v14, &qword_100221730, qword_1001B6530);
      sub_1000050C4(v16, &qword_100221730, qword_1001B6530);
      v26(v25, v2);
      sub_1000050C4(v8, &qword_100221730, qword_1001B6530);
      goto LABEL_8;
    }

    sub_1000050C4(v14, &qword_100221730, qword_1001B6530);
    sub_1000050C4(v16, &qword_100221730, qword_1001B6530);
    (*(v3 + 8))(v34, v2);
    goto LABEL_6;
  }

  sub_1000050C4(v14, &qword_100221730, qword_1001B6530);
  sub_1000050C4(v16, &qword_100221730, qword_1001B6530);
  if (v22(&v8[v21], 1, v2) != 1)
  {
LABEL_6:
    sub_1000050C4(v8, &qword_100222958, &unk_1001B6FA0);
    goto LABEL_8;
  }

  sub_1000050C4(v8, &qword_100221730, qword_1001B6530);
LABEL_8:
  v40 = v43[0];
  v41 = v43[1];
  v42[0] = v44[0];
  *(v42 + 15) = *(v44 + 15);
  sub_1000024C4(&qword_100222970, &qword_1001B65A0);
  sub_10003B76C();
  v27 = v36;
  View.statusBar(hidden:)();
  sub_1000050C4(v43, &qword_100222988, &qword_1001B65A8);
  v28 = &v20[*(v35 + 36)];
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  *v28 = &unk_1001B65C8;
  *(v28 + 1) = 0;
  (*(v37 + 32))(v20, v27, v38);
  v29 = v39;
  sub_10003BB70(v20, v39);
  result = sub_1000024C4(&qword_1002229E0, &unk_1001B65D0);
  v31 = (v29 + *(result + 36));
  *v31 = 0;
  v31[1] = 0;
  v31[2] = sub_10003B700;
  v31[3] = 0;
  return result;
}

uint64_t sub_10003A770@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 + 32);
    if (v4 <= 1)
    {
      if (*(v3 + 32))
      {

        v49 = ResourceID.init(_:)();
        v51 = v50;
        type metadata accessor for ArtistController(0);
        v52 = swift_allocObject();
        type metadata accessor for ArtistController.State(0);
        swift_storeEnumTagMultiPayload();
        v53 = OBJC_IVAR____TtC16EventViewService16ArtistController_service;
        if (qword_100220BF8 != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for EventService();
        v55 = sub_10000BE10(v54, qword_100239108);
        (*(*(v54 - 8) + 16))(v52 + v53, v55, v54);
        ObservationRegistrar.init()();
        type metadata accessor for RemoteViewConfiguration();
        sub_10003BDD8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
        v25 = EnvironmentObject.init()();
        *&v62 = v49;
        *(&v62 + 1) = v51;
        *&v64 = v52;
        *(&v64 + 1) = v25;
        *v66 = v26;
        v66[8] = 1;
      }

      else
      {

        v18 = ResourceID.init(_:)();
        v20 = v19;
        type metadata accessor for EventController(0);
        v21 = swift_allocObject();
        type metadata accessor for EventController.State(0);
        swift_storeEnumTagMultiPayload();
        v22 = OBJC_IVAR____TtC16EventViewService15EventController_service;
        if (qword_100220BF8 != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for EventService();
        v24 = sub_10000BE10(v23, qword_100239108);
        (*(*(v23 - 8) + 16))(v21 + v22, v24, v23);
        ObservationRegistrar.init()();
        type metadata accessor for RemoteViewConfiguration();
        sub_10003BDD8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
        v25 = EnvironmentObject.init()();
        *&v62 = v18;
        *(&v62 + 1) = v20;
        *&v64 = v21;
        *(&v64 + 1) = v25;
        *v66 = v26;
        v66[8] = 0;
      }

      v56 = sub_10003B994(v25, v26, v27);
      sub_10003B9E8(v56, v57, v58);

      _ConditionalContent<>.init(storage:)();
      sub_1000024C4(&qword_1002229A8, &qword_1001B65B8);
      sub_1000024C4(&qword_1002229C8, &qword_1001B65C0);
      sub_10003B908();
      sub_10003BA3C();
      _ConditionalContent<>.init(storage:)();
      sub_1000024C4(&qword_100222998, &qword_1001B65B0);
      v59 = sub_10003B87C();
      sub_10003BB1C(v59, v60, v61);
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      if (v4 == 2)
      {

        v28 = ResourceID.init(_:)();
        v30 = v29;
        type metadata accessor for VenueController(0);
        v31 = swift_allocObject();
        v32 = OBJC_IVAR____TtC16EventViewService15VenueController_service;
        if (qword_100220BF8 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for EventService();
        v34 = sub_10000BE10(v33, qword_100239108);
        (*(*(v33 - 8) + 16))(v31 + v32, v34, v33);
        type metadata accessor for VenueController.Result(0);
        swift_storeEnumTagMultiPayload();
        ObservationRegistrar.init()();
        State.init(wrappedValue:)();
        type metadata accessor for RemoteViewConfiguration();
        sub_10003BDD8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
        *&v63 = v28;
        *(&v63 + 1) = v30;
        v65 = v67;
        *v66 = EnvironmentObject.init()();
        *&v66[8] = v35;
        v66[16] = 0;
        v37 = sub_10003BAC8(*v66, v35, v36);
        sub_10003BB1C(v37, v38, v39);

        _ConditionalContent<>.init(storage:)();
        sub_1000024C4(&qword_1002229A8, &qword_1001B65B8);
        sub_1000024C4(&qword_1002229C8, &qword_1001B65C0);
        sub_10003B908();
        sub_10003BA3C();
        _ConditionalContent<>.init(storage:)();
        sub_1000024C4(&qword_100222998, &qword_1001B65B0);
        sub_10003B87C();
        _ConditionalContent<>.init(storage:)();

        v67 = v63;
        v68 = v65;
        *v69 = *v66;
        *&v69[15] = *&v66[15];
        goto LABEL_23;
      }

      if (v4 != 3)
      {

        ResourceID.init(_:)();
        type metadata accessor for PromotionalAssetsFetcher(0);
        v41 = swift_allocObject();
        swift_defaultActor_initialize();
        v42 = OBJC_IVAR____TtC16EventViewService24PromotionalAssetsFetcher_service;
        if (qword_100220BF8 != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for EventService();
        v44 = sub_10000BE10(v43, qword_100239108);
        (*(*(v43 - 8) + 16))(v41 + v42, v44, v43);
        sub_1000024C4(&qword_1002216A8, &qword_1001B4360);
        v45 = swift_allocObject();
        sub_1000024C4(&qword_100221690, &qword_1001B4320);
        swift_storeEnumTagMultiPayload();
        ObservationRegistrar.init()();
        *(v45 + *(*v45 + 104)) = v41;
        type metadata accessor for RemoteViewConfiguration();
        sub_10003BDD8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
        EnvironmentObject.init()();
        sub_1000024C4(&qword_100222998, &qword_1001B65B0);
        v46 = sub_10003B87C();
        sub_10003BB1C(v46, v47, v48);
        result = _ConditionalContent<>.init(storage:)();
        goto LABEL_23;
      }

      v5 = ResourceID.init(_:)();
      v7 = v6;
      type metadata accessor for PromotionalAssetsFetcher(0);
      v8 = swift_allocObject();
      swift_defaultActor_initialize();
      v9 = OBJC_IVAR____TtC16EventViewService24PromotionalAssetsFetcher_service;
      if (qword_100220BF8 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for EventService();
      v11 = sub_10000BE10(v10, qword_100239108);
      (*(*(v10 - 8) + 16))(v8 + v9, v11, v10);
      sub_1000024C4(&qword_1002216A8, &qword_1001B4360);
      v12 = swift_allocObject();
      sub_1000024C4(&qword_100221690, &qword_1001B4320);
      swift_storeEnumTagMultiPayload();
      ObservationRegistrar.init()();
      *(v12 + *(*v12 + 104)) = v8;
      type metadata accessor for RemoteViewConfiguration();
      sub_10003BDD8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
      *&v62 = v5;
      *(&v62 + 1) = v7;
      *&v64 = 1;
      *(&v64 + 1) = v12;
      *v66 = EnvironmentObject.init()();
      *&v66[8] = v13;
      v66[16] = 1;
      v15 = sub_10003BAC8(*v66, v13, v14);
      sub_10003BB1C(v15, v16, v17);

      _ConditionalContent<>.init(storage:)();
      sub_1000024C4(&qword_1002229A8, &qword_1001B65B8);
      sub_1000024C4(&qword_1002229C8, &qword_1001B65C0);
      sub_10003B908();
      sub_10003BA3C();
      _ConditionalContent<>.init(storage:)();
      sub_1000024C4(&qword_100222998, &qword_1001B65B0);
      sub_10003B87C();
      _ConditionalContent<>.init(storage:)();
    }

    v67 = v62;
    v68 = v64;
    *v69 = *v66;
    *&v69[15] = *&v66[15];
LABEL_23:
    *a2 = v67;
    *(a2 + 16) = v68;
    *(a2 + 32) = *v69;
    *(a2 + 47) = *&v69[15];
    return result;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10003BDD8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10003B428()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_10003B4BC, v2, v1);
}

uint64_t sub_10003B4BC()
{
  if (qword_100220C20 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10003B580;

  return sub_1001553F8();
}

uint64_t sub_10003B580()
{
  v1 = *v0;

  v2 = *(v1 + 32);
  v3 = *(v1 + 24);

  return _swift_task_switch(sub_10003B6A0, v3, v2);
}

uint64_t sub_10003B6A0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10003B700()
{
  if (qword_100220BF8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for EventService();
  sub_10000BE10(v0, qword_100239108);
  EventService.invalidate()();
}

unint64_t sub_10003B76C()
{
  result = qword_100222978;
  if (!qword_100222978)
  {
    sub_10000460C(&qword_100222970, &qword_1001B65A0);
    sub_10003B7F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222978);
  }

  return result;
}

unint64_t sub_10003B7F0()
{
  result = qword_100222980;
  if (!qword_100222980)
  {
    sub_10000460C(&qword_100222988, &qword_1001B65A8);
    v3 = sub_10003B87C();
    sub_10003BB1C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222980);
  }

  return result;
}

unint64_t sub_10003B87C()
{
  result = qword_100222990;
  if (!qword_100222990)
  {
    sub_10000460C(&qword_100222998, &qword_1001B65B0);
    sub_10003B908();
    sub_10003BA3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222990);
  }

  return result;
}

unint64_t sub_10003B908()
{
  result = qword_1002229A0;
  if (!qword_1002229A0)
  {
    v1 = sub_10000460C(&qword_1002229A8, &qword_1001B65B8);
    v6 = sub_10003B994(v1, v2, v3);
    sub_10003B9E8(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002229A0);
  }

  return result;
}

unint64_t sub_10003B994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002229B0;
  if (!qword_1002229B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002229B0);
  }

  return result;
}

unint64_t sub_10003B9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002229B8;
  if (!qword_1002229B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002229B8);
  }

  return result;
}

unint64_t sub_10003BA3C()
{
  result = qword_1002229C0;
  if (!qword_1002229C0)
  {
    v1 = sub_10000460C(&qword_1002229C8, &qword_1001B65C0);
    v6 = sub_10003BAC8(v1, v2, v3);
    sub_10003BB1C(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002229C0);
  }

  return result;
}

unint64_t sub_10003BAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002229D0;
  if (!qword_1002229D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002229D0);
  }

  return result;
}

unint64_t sub_10003BB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002229D8;
  if (!qword_1002229D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002229D8);
  }

  return result;
}

uint64_t sub_10003BB70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100222968, &qword_1001B6598);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003BBE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100221730, qword_1001B6530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003BC54()
{
  result = qword_1002229E8;
  if (!qword_1002229E8)
  {
    sub_10000460C(&qword_1002229E0, &unk_1001B65D0);
    sub_10003BCE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002229E8);
  }

  return result;
}

unint64_t sub_10003BCE0()
{
  result = qword_1002229F0;
  if (!qword_1002229F0)
  {
    sub_10000460C(&qword_100222968, &qword_1001B6598);
    sub_10000460C(&qword_100222970, &qword_1001B65A0);
    sub_10003B76C();
    swift_getOpaqueTypeConformance2();
    sub_10003BDD8(&qword_100220CB0, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002229F0);
  }

  return result;
}

uint64_t sub_10003BDD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10003BE4C@<D0>(uint64_t a1@<X8>)
{
  sub_1000024C4(&qword_100221D18, &qword_1001BF6A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001B3B50;
  v3 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  *(v2 + 32) = Color.init(uiColor:)();
  *(v2 + 40) = static Color.clear.getter();
  Gradient.init(colors:)();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

unint64_t sub_10003BF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100222A08;
  if (!qword_100222A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222A08);
  }

  return result;
}

void sub_10003BFC8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v22 = v3;
  v23 = v4;
  __chkstk_darwin(v3);
  v21 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for DesignTimeImage(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000024C4(&qword_100221250, &unk_1001B3990);
  __chkstk_darwin(v13 - 8);
  v15 = &v20 - v14;
  String.hash(into:)();
  String.hash(into:)();
  v16 = type metadata accessor for DesignTimeMusicAlbum(0);
  sub_10000BEB8(v2 + *(v16 + 24), v15, &qword_100221250, &unk_1001B3990);
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    Hasher._combine(_:)(0);
    v17 = v22;
    v18 = v23;
  }

  else
  {
    sub_100005180(v15, v12);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    sub_10003CC40(&qword_100221260, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v17 = v22;
    dispatch thunk of Hashable.hash(into:)();
    if (*&v12[*(v9 + 24)])
    {
      Hasher._combine(_:)(1u);
      type metadata accessor for CGColor(0);
      sub_10003CC40(&qword_100221268, type metadata accessor for CGColor, &unk_1001B3470);
      _CFObject.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v18 = v23;
    Hasher._combine(_:)(v12[*(v9 + 28)]);
    sub_100005124(v12);
  }

  sub_10000BEB8(v2 + *(v16 + 28), v8, &qword_1002214F8, &qword_1001B3D20);
  if ((*(v18 + 48))(v8, 1, v17) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v19 = v21;
    (*(v18 + 32))(v21, v8, v17);
    Hasher._combine(_:)(1u);
    sub_10003CC40(&qword_100221260, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v18 + 8))(v19, v17);
  }
}

uint64_t sub_10003C474(uint64_t a1)
{
  *(a1 + 8) = sub_10003CC40(&qword_100222A58, type metadata accessor for DesignTimeMusicAlbum, &unk_1001B66C4);
  result = sub_10003CC40(&qword_100222A60, type metadata accessor for DesignTimeMusicAlbum, &unk_1001B668C);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeMusicAlbum(uint64_t a1)
{
  result = qword_100222AD8;
  if (!qword_100222AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_10003C598()
{
  Hasher.init(_seed:)();
  sub_10003BFC8(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10003C5DC()
{
  Hasher.init(_seed:)();
  sub_10003BFC8(v1);
  return Hasher._finalize()();
}

BOOL sub_10003C61C(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v8 - 8);
  v46 = &v43 - v9;
  v49 = sub_1000024C4(&qword_100222A70, &unk_1001B6CF0);
  __chkstk_darwin(v49);
  v50 = &v43 - v10;
  v11 = type metadata accessor for DesignTimeImage(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v48 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1000024C4(&qword_100221250, &unk_1001B3990);
  __chkstk_darwin(v14 - 8);
  v16 = (&v43 - v15);
  v17 = sub_1000024C4(&qword_100221258, &unk_1001B6D00);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v43 = v7;
  v47 = v5;
  v45 = v4;
  v44 = type metadata accessor for DesignTimeMusicAlbum(0);
  v20 = *(v44 + 24);
  v21 = *(v17 + 48);
  sub_10000BEB8(a1 + v20, v19, &qword_100221250, &unk_1001B3990);
  sub_10000BEB8(a2 + v20, &v19[v21], &qword_100221250, &unk_1001B3990);
  v22 = *(v12 + 48);
  if (v22(v19, 1, v11) == 1)
  {
    v23 = v22(&v19[v21], 1, v11);
    v24 = v47;
    if (v23 == 1)
    {
      sub_1000050C4(v19, &qword_100221250, &unk_1001B3990);
      goto LABEL_13;
    }

LABEL_11:
    v26 = &qword_100221258;
    v27 = &unk_1001B6D00;
    v28 = v19;
LABEL_19:
    sub_1000050C4(v28, v26, v27);
    return 0;
  }

  sub_10000BEB8(v19, v16, &qword_100221250, &unk_1001B3990);
  v25 = v22(&v19[v21], 1, v11);
  v24 = v47;
  if (v25 == 1)
  {
    sub_100005124(v16);
    goto LABEL_11;
  }

  v29 = v48;
  sub_100005180(&v19[v21], v48);
  v30 = sub_10005859C(v16, v29);
  sub_100005124(v29);
  sub_100005124(v16);
  sub_1000050C4(v19, &qword_100221250, &unk_1001B3990);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v31 = *(v44 + 28);
  v32 = *(v49 + 48);
  v33 = a1 + v31;
  v34 = v50;
  sub_10000BEB8(v33, v50, &qword_1002214F8, &qword_1001B3D20);
  sub_10000BEB8(a2 + v31, v34 + v32, &qword_1002214F8, &qword_1001B3D20);
  v35 = *(v24 + 48);
  v36 = v45;
  if (v35(v34, 1, v45) != 1)
  {
    v37 = v46;
    sub_10000BEB8(v34, v46, &qword_1002214F8, &qword_1001B3D20);
    if (v35(v34 + v32, 1, v36) == 1)
    {
      (*(v24 + 8))(v37, v36);
      goto LABEL_18;
    }

    v39 = v34 + v32;
    v40 = v43;
    (*(v24 + 32))(v43, v39, v36);
    sub_10003CC40(&qword_100222A78, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    v42 = *(v24 + 8);
    v42(v40, v36);
    v42(v37, v36);
    sub_1000050C4(v34, &qword_1002214F8, &qword_1001B3D20);
    return (v41 & 1) != 0;
  }

  if (v35(v34 + v32, 1, v36) != 1)
  {
LABEL_18:
    v26 = &qword_100222A70;
    v27 = &unk_1001B6CF0;
    v28 = v34;
    goto LABEL_19;
  }

  sub_1000050C4(v34, &qword_1002214F8, &qword_1001B3D20);
  return 1;
}

uint64_t sub_10003CC40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003CC9C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000024C4(&qword_100221250, &unk_1001B3990);
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
      v13 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10003CDEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000024C4(&qword_100221250, &unk_1001B3990);
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
      v13 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10003CF28(uint64_t a1)
{
  sub_10003CFF4(319, &qword_1002212D8, type metadata accessor for DesignTimeImage);
  if (v1 <= 0x3F)
  {
    sub_10003CFF4(319, &qword_100221420, &type metadata accessor for URL);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10003CFF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_10003D048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WatchFacesViewModel(255, *(a1 + 16), *(a1 + 24), a4);
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v5;
}

uint64_t sub_10003D088(uint64_t a1)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  (*(v5 + 16))(&v8 - v6, a1, v4);
  State.init(wrappedValue:)();
  return (*(v5 + 8))(a1, v4);
}

uint64_t sub_10003D17C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  type metadata accessor for Optional();
  v3 = type metadata accessor for State();
  return a2(v3);
}

uint64_t sub_10003D1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v44 = sub_10000460C(&qword_100222B98, &unk_1001B6800);
  v3 = *(a1 + 16);
  v45 = a1;
  type metadata accessor for Array();
  sub_10000460C(&qword_100222BA0, &unk_1001C3B70);
  swift_getWitnessTable();
  v4 = *(a1 + 24);
  v65 = *(v4 + 8);
  type metadata accessor for ForEach();
  v60 = sub_10004216C(&qword_100222BA8, &qword_100222BA0, &unk_1001C3B70, sub_10004202C);
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ViewAlignedScrollTargetBehavior();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = sub_10004527C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v43 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v5 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = v5;
  v64 = v65;
  v7 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v8 = type metadata accessor for ModifiedContent();
  v9 = type metadata accessor for Optional();
  v61 = OpaqueTypeMetadata2;
  v62 = v7;
  v56 = swift_getOpaqueTypeConformance2();
  v57 = &protocol witness table for _FrameLayout;
  WitnessTable = swift_getWitnessTable();
  v55 = *(v65 + 8);
  v61 = v8;
  v62 = v9;
  v63 = WitnessTable;
  v64 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100222BC8, &qword_1001B6818);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100222BD0, &unk_1001B6820);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PageControl(255, v3, v55, v11);
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  v12 = v4;
  type metadata accessor for SelectAssetButton(255, v3, v4, v13);
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v14 = type metadata accessor for VStack();
  v40 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v17 = type metadata accessor for ModifiedContent();
  v42 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v38 - v18;
  sub_10000460C(&qword_100222BD8, &unk_1001C3B90);
  v20 = type metadata accessor for ModifiedContent();
  v44 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v39 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v41 = &v38 - v23;
  v48 = v3;
  v49 = v12;
  v50 = v46;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  static Edge.Set.top.getter();
  v24 = v45;
  sub_10003D048(v45, v25, v26, v27);

  v28 = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v40 + 8))(v16, v14);
  LOBYTE(v3) = *(sub_10003D048(v24, v29, v30, v31) + 136);

  LOBYTE(v61) = (v3 & 1) == 0;
  static Alignment.center.getter();
  sub_1000024C4(&qword_100222BE0, &unk_1001B6830);
  v53 = v28;
  v54 = &protocol witness table for _PaddingLayout;
  v32 = swift_getWitnessTable();
  sub_10004216C(&qword_100222BE8, &qword_100222BE0, &unk_1001B6830, sub_1000421E8);
  v33 = v39;
  View.background<A>(_:alignment:)();
  (*(v42 + 8))(v19, v17);
  v34 = sub_10000BFFC(&qword_100222BF8, &qword_100222BD8, &unk_1001C3B90, &protocol conformance descriptor for _BackgroundModifier<A>);
  v51 = v32;
  v52 = v34;
  swift_getWitnessTable();
  v35 = v41;
  sub_1000EE87C();
  v36 = *(v44 + 8);
  v36(v33, v20);
  sub_1000EE87C();
  return (v36)(v35, v20);
}

uint64_t sub_10003DBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v143 = a1;
  v132 = a4;
  v7 = type metadata accessor for SelectAssetButton(0, a2, a3, a5);
  v128 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v117 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v116 = &v111 - v10;
  v11 = type metadata accessor for Optional();
  v114 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v126 = &v111 - v13;
  v127 = *(a2 - 8);
  v14 = __chkstk_darwin(v12);
  v113 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v112 = &v111 - v16;
  v140 = v7;
  v133 = type metadata accessor for Optional();
  v129 = *(v133 - 8);
  v17 = __chkstk_darwin(v133);
  v131 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v130 = &v111 - v19;
  v142 = type metadata accessor for WatchFacesView(0, a2, a3, v20);
  v124 = *(v142 - 8);
  v122 = v124[8];
  __chkstk_darwin(v142);
  v123 = &v111 - v21;
  v22 = type metadata accessor for Array();
  v23 = sub_10000460C(&qword_100222BA0, &unk_1001C3B70);
  WitnessTable = swift_getWitnessTable();
  v125 = a3;
  v25 = *(a3 + 8);
  v155 = v22;
  v156 = a2;
  v157 = v23;
  v158 = WitnessTable;
  v159 = v25;
  type metadata accessor for ForEach();
  v154 = sub_10004216C(&qword_100222BA8, &qword_100222BA0, &unk_1001C3B70, sub_10004202C);
  swift_getWitnessTable();
  v26 = type metadata accessor for HStack();
  v27 = swift_getWitnessTable();
  v155 = v26;
  v156 = v27;
  swift_getOpaqueTypeMetadata2();
  v155 = v26;
  v156 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = type metadata accessor for ScrollView();
  v29 = swift_getWitnessTable();
  v155 = v28;
  v156 = v29;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  v30 = type metadata accessor for ModifiedContent();
  v31 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v155 = v28;
  v156 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_10004527C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v152 = OpaqueTypeConformance2;
  v153 = v33;
  v34 = swift_getWitnessTable();
  v155 = v30;
  v156 = v31;
  v157 = v34;
  v158 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v155 = v30;
  v156 = v31;
  v157 = v34;
  v158 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v36 = swift_getOpaqueTypeConformance2();
  v155 = OpaqueTypeMetadata2;
  v156 = a2;
  v157 = v36;
  v158 = v25;
  v37 = swift_getOpaqueTypeMetadata2();
  v155 = OpaqueTypeMetadata2;
  v156 = a2;
  v157 = v36;
  v158 = v25;
  v38 = swift_getOpaqueTypeConformance2();
  v155 = v37;
  v156 = v38;
  swift_getOpaqueTypeMetadata2();
  v39 = type metadata accessor for ModifiedContent();
  v155 = v37;
  v156 = v38;
  v150 = swift_getOpaqueTypeConformance2();
  v151 = &protocol witness table for _FrameLayout;
  v40 = swift_getWitnessTable();
  v149 = v25[1];
  v41 = v149;
  v42 = swift_getWitnessTable();
  v155 = v39;
  v156 = v11;
  v115 = v11;
  v157 = v40;
  v158 = v42;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100222BC8, &qword_1001B6818);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100222BD0, &unk_1001B6820);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v134 = a2;
  type metadata accessor for PageControl(255, a2, v41, v43);
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v119 = swift_getWitnessTable();
  v44 = type metadata accessor for VStack();
  v120 = *(v44 - 8);
  __chkstk_darwin(v44);
  v118 = &v111 - v45;
  v139 = type metadata accessor for ModifiedContent();
  v135 = *(v139 - 8);
  v46 = __chkstk_darwin(v139);
  v138 = &v111 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v137 = &v111 - v48;
  v49 = sub_1000024C4(&qword_100222C00, &unk_1001C3BA0);
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v52 = &v111 - v51;
  v121 = sub_1000024C4(&qword_100222B98, &unk_1001B6800);
  v53 = __chkstk_darwin(v121);
  v136 = &v111 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v56 = &v111 - v55;
  LODWORD(v40) = *(sub_10003D048(v142, v57, v58, v59) + 136);

  v62 = 1;
  v141 = v56;
  if (v40 == 1)
  {
    v63 = sub_10003D048(v142, 1, v60, v61);
    v64 = *(v63 + 16);
    v65 = *(v63 + 24);
    v66 = *(v63 + 32);
    v67 = *(v63 + 40);

    v155 = v64;
    v156 = v65;
    LOBYTE(v157) = v66;
    v158 = v67;
    sub_100042328(v68, v69, v70);
    v56 = v141;
    View.accessibilityIdentifier(_:)();

    sub_10004237C(v52, v56);
    v62 = 0;
  }

  v71 = (*(v50 + 56))(v56, v62, 1, v49);
  __chkstk_darwin(v71);
  v72 = v134;
  v73 = v125;
  *(&v111 - 4) = v134;
  *(&v111 - 3) = v73;
  v74 = v143;
  *(&v111 - 2) = v143;
  static HorizontalAlignment.center.getter();
  v75 = v118;
  VStack.init(alignment:spacing:content:)();
  v76 = v124;
  v77 = v123;
  v78 = v142;
  (v124[2])(v123, v74, v142);
  v79 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = v72;
  *(v80 + 24) = v73;
  (v76[4])(v80 + v79, v77, v78);
  v81 = swift_getWitnessTable();
  v82 = v138;
  View.onAppear(perform:)();

  (*(v120 + 8))(v75, v44);
  v148[3] = v81;
  v148[4] = &protocol witness table for _AppearanceActionModifier;
  v83 = v139;
  v123 = swift_getWitnessTable();
  sub_1000EE87C();
  v84 = *(v135 + 8);
  v125 = v135 + 8;
  v124 = v84;
  (v84)(v82, v83);
  v85 = v126;
  sub_10003D17C(v78, &State.wrappedValue.getter);
  v86 = v127;
  if ((*(v127 + 48))(v85, 1, v72) == 1)
  {
    (*(v114 + 8))(v85, v115);
    v87 = v131;
    (*(v128 + 56))(v131, 1, 1, v140);
    swift_getWitnessTable();
  }

  else
  {
    v88 = v112;
    v89 = v134;
    (*(v86 + 32))(v112, v85, v134);
    v90 = v113;
    (*(v86 + 16))(v113, v88, v89);
    v94 = sub_10003D048(v142, v91, v92, v93);
    v95 = v117;
    sub_100041A38(v90, v94, v117);
    (*(v86 + 8))(v88, v89);
    v96 = v140;
    swift_getWitnessTable();
    v97 = v116;
    sub_1000EE87C();
    v98 = v128;
    v99 = *(v128 + 8);
    v99(v95, v96);
    sub_1000EE87C();
    v99(v97, v96);
    v87 = v131;
    (*(v98 + 32))(v131, v95, v96);
    (*(v98 + 56))(v87, 0, 1, v96);
  }

  v100 = v130;
  sub_1000E7690(v87, v130);
  v101 = v129;
  v102 = *(v129 + 8);
  v103 = v133;
  v102(v87, v133);
  v104 = v136;
  sub_10000BEB8(v141, v136, &qword_100222B98, &unk_1001B6800);
  v155 = v104;
  v105 = v138;
  v106 = v137;
  v107 = v139;
  (*(v135 + 16))(v138, v137, v139);
  v156 = v105;
  (*(v101 + 16))(v87, v100, v103);
  v157 = v87;
  v148[0] = v121;
  v148[1] = v107;
  v148[2] = v103;
  v145 = sub_100042278();
  v146 = v123;
  v144 = swift_getWitnessTable();
  v147 = swift_getWitnessTable();
  sub_1000E76FC(&v155, 3uLL, v148);
  v102(v100, v103);
  v108 = v106;
  v109 = v124;
  (v124)(v108, v107);
  sub_1000050C4(v141, &qword_100222B98, &unk_1001B6800);
  v102(v87, v103);
  v109(v105, v107);
  return sub_1000050C4(v136, &qword_100222B98, &unk_1001B6800);
}

uint64_t sub_10003ED30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v221 = a1;
  v210 = a4;
  v6 = *(a3 + 8);
  v218 = a3;
  v212 = v6[1];
  v7 = v6;
  v213 = v6;
  v9 = type metadata accessor for PageControl(0, a2, v212, a5);
  v204 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v148 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v147 = &v147 - v12;
  v208 = v13;
  v209 = type metadata accessor for Optional();
  v205 = *(v209 - 8);
  v14 = __chkstk_darwin(v209);
  v207 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v206 = &v147 - v16;
  v219 = type metadata accessor for WatchFacesView(0, a2, a3, v17);
  v201 = *(v219 - 8);
  v202 = *(v201 + 64);
  __chkstk_darwin(v219);
  v200 = &v147 - v18;
  v214 = type metadata accessor for Optional();
  v203 = *(v214 - 8);
  __chkstk_darwin(v214);
  v199 = &v147 - v19;
  v20 = type metadata accessor for Binding();
  v197 = *(v20 - 8);
  v198 = v20;
  __chkstk_darwin(v20);
  v211 = &v147 - v21;
  v22 = type metadata accessor for ViewAlignedScrollTargetBehavior.LimitBehavior();
  __chkstk_darwin(v22 - 8);
  v195 = &v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v196 = *(v24 - 8);
  __chkstk_darwin(v24);
  v194 = &v147 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ContentMarginPlacement();
  v192 = *(v26 - 8);
  v193 = v26;
  __chkstk_darwin(v26);
  v191 = &v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Array();
  v29 = sub_10000460C(&qword_100222BA0, &unk_1001C3B70);
  WitnessTable = swift_getWitnessTable();
  v236 = v28;
  v237 = a2;
  v238 = v29;
  v239 = WitnessTable;
  v240 = v7;
  type metadata accessor for ForEach();
  v235[13] = sub_10004216C(&qword_100222BA8, &qword_100222BA0, &unk_1001C3B70, sub_10004202C);
  swift_getWitnessTable();
  v31 = type metadata accessor for HStack();
  v32 = swift_getWitnessTable();
  v236 = v31;
  v237 = v32;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v236 = v31;
  v237 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = type metadata accessor for ScrollView();
  v186 = *(v33 - 8);
  __chkstk_darwin(v33);
  v169 = &v147 - v34;
  v35 = swift_getWitnessTable();
  v236 = v33;
  v237 = v35;
  v36 = v35;
  v160 = v35;
  v177 = swift_getOpaqueTypeMetadata2();
  v183 = *(v177 - 8);
  __chkstk_darwin(v177);
  v171 = &v147 - v37;
  type metadata accessor for AccessibilityAttachmentModifier();
  v38 = type metadata accessor for ModifiedContent();
  v184 = *(v38 - 8);
  __chkstk_darwin(v38);
  v172 = &v147 - v39;
  v236 = v33;
  v237 = v36;
  v40 = swift_getOpaqueTypeConformance2();
  v166 = v40;
  v41 = sub_10004527C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v235[11] = v40;
  v235[12] = v41;
  v190 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v42 = swift_getWitnessTable();
  v236 = v38;
  v237 = v24;
  v43 = v38;
  v157 = v24;
  v158 = v38;
  v238 = v42;
  v239 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v159 = v42;
  v44 = swift_getOpaqueTypeMetadata2();
  v175 = *(v44 - 8);
  __chkstk_darwin(v44);
  v156 = &v147 - v45;
  v236 = v43;
  v237 = v24;
  v238 = v42;
  v239 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v46 = swift_getOpaqueTypeConformance2();
  v154 = v44;
  v155 = v46;
  v236 = v44;
  v237 = a2;
  v47 = v46;
  v48 = v213;
  v238 = v46;
  v239 = v213;
  v49 = swift_getOpaqueTypeMetadata2();
  v170 = *(v49 - 8);
  __chkstk_darwin(v49);
  v152 = &v147 - v50;
  v236 = v44;
  v237 = a2;
  v220 = a2;
  v238 = v47;
  v239 = v48;
  v51 = swift_getOpaqueTypeConformance2();
  v236 = v49;
  v237 = v51;
  v149 = v49;
  v150 = v51;
  v52 = v51;
  v161 = swift_getOpaqueTypeMetadata2();
  v168 = *(v161 - 8);
  __chkstk_darwin(v161);
  v151 = &v147 - v53;
  v54 = type metadata accessor for ModifiedContent();
  v164 = v54;
  v181 = *(v54 - 8);
  __chkstk_darwin(v54);
  v215 = &v147 - v55;
  v236 = v49;
  v237 = v52;
  v153 = swift_getOpaqueTypeConformance2();
  v235[9] = v153;
  v235[10] = &protocol witness table for _FrameLayout;
  v56 = swift_getWitnessTable();
  v163 = v56;
  v235[8] = v212;
  v57 = v214;
  v162 = swift_getWitnessTable();
  v236 = v54;
  v237 = v57;
  v238 = v56;
  v239 = v162;
  v174 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v173 = swift_getOpaqueTypeMetadata2();
  v179 = *(v173 - 8);
  __chkstk_darwin(v173);
  v216 = &v147 - v58;
  sub_10000460C(&qword_100222BC8, &qword_1001B6818);
  v176 = type metadata accessor for ModifiedContent();
  v187 = *(v176 - 8);
  __chkstk_darwin(v176);
  v165 = &v147 - v59;
  sub_10000460C(&qword_100222BD0, &unk_1001B6820);
  v185 = type metadata accessor for ModifiedContent();
  v189 = *(v185 - 8);
  __chkstk_darwin(v185);
  v178 = &v147 - v60;
  v188 = type metadata accessor for ModifiedContent();
  v217 = *(v188 - 8);
  v61 = __chkstk_darwin(v188);
  v182 = &v147 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v222 = &v147 - v63;
  static Axis.Set.horizontal.getter();
  v229 = a2;
  v230 = v218;
  v64 = v221;
  v231 = v221;
  v65 = v169;
  ScrollView.init(_:showsIndicators:content:)();
  static Edge.Set.horizontal.getter();
  v66 = v219;
  sub_10003D048(v219, v67, v68, v69);
  sub_1000608D8();

  v70 = v191;
  j___s7SwiftUI22ContentMarginPlacementV9automaticACvgZ(v33, v160);
  v71 = v171;
  View.contentMargins(_:_:for:)();
  (*(v192 + 8))(v70, v193);
  (*(v186 + 8))(v65, v33);
  v72 = v172;
  v73 = v177;
  View.accessibilityIdentifier(_:)();
  (*(v183 + 8))(v71, v73);
  static ViewAlignedScrollTargetBehavior.LimitBehavior.automatic.getter();
  v74 = v194;
  ViewAlignedScrollTargetBehavior.init(limitBehavior:)();
  v76 = v156;
  v75 = v157;
  v77 = v158;
  View.scrollTargetBehavior<A>(_:)();
  (*(v196 + 8))(v74, v75);
  v78 = v211;
  (*(v184 + 8))(v72, v77);
  sub_10003D17C(v66, &State.projectedValue.getter);
  v79 = v152;
  v80 = v154;
  v81 = v220;
  View.scrollPosition<A>(id:anchor:)();
  (*(v197 + 8))(v78, v198);
  (*(v175 + 8))(v76, v80);
  sub_10003D048(v66, v82, v83, v84);
  sub_100060918();

  v85 = v151;
  v86 = v149;
  View.scrollDisabled(_:)();
  (*(v170 + 8))(v79, v86);
  sub_10003D048(v66, v87, v88, v89);
  sub_100060950();

  static Alignment.center.getter();
  v90 = v161;
  View.frame(width:height:alignment:)();
  (*(v168 + 8))(v85, v90);
  v91 = v199;
  sub_10003D17C(v66, &State.wrappedValue.getter);
  v93 = v200;
  v92 = v201;
  v94 = v64;
  v95 = v66;
  (*(v201 + 16))(v200, v94, v66);
  v96 = v92;
  v97 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v98 = swift_allocObject();
  v99 = v81;
  v100 = v218;
  *(v98 + 16) = v81;
  *(v98 + 24) = v100;
  (*(v96 + 32))(v98 + v97, v93, v95);
  v101 = v91;
  v103 = v163;
  v102 = v164;
  v104 = v214;
  v105 = v162;
  v106 = v215;
  View.onChange<A>(of:initial:_:)();

  (*(v203 + 8))(v101, v104);
  (*(v181 + 8))(v106, v102);
  v215 = static Alignment.center.getter();
  v213 = v107;
  v226 = v99;
  v227 = v100;
  v108 = v221;
  v228 = v221;
  sub_1000024C4(&qword_100222C20, &unk_1001B6840);
  v236 = v102;
  v237 = v104;
  v238 = v103;
  v239 = v105;
  v109 = swift_getOpaqueTypeConformance2();
  sub_1000439B4(&qword_100222C28, &qword_100222C20, &unk_1001B6840, sub_100043A68);
  v110 = v165;
  v111 = v173;
  v112 = v216;
  View.overlay<A>(alignment:content:)();
  (*(v179 + 8))(v112, v111);
  static Alignment.center.getter();
  v223 = v220;
  v224 = v100;
  v225 = v108;
  sub_1000024C4(&qword_100222C48, &qword_1001B6850);
  v113 = sub_10000BFFC(&qword_100222C50, &qword_100222BC8, &qword_1001B6818, &protocol conformance descriptor for _OverlayModifier<A>);
  v235[6] = v109;
  v235[7] = v113;
  v114 = v176;
  v115 = swift_getWitnessTable();
  sub_10000BFFC(&qword_100222C58, &qword_100222C48, &qword_1001B6850, &protocol conformance descriptor for TupleView<A>);
  v116 = v178;
  View.background<A>(alignment:content:)();
  (*(v187 + 8))(v110, v114);
  static Edge.Set.bottom.getter();
  v117 = sub_10000BFFC(&qword_100222C60, &qword_100222BD0, &unk_1001B6820, &protocol conformance descriptor for _BackgroundModifier<A>);
  v235[4] = v115;
  v235[5] = v117;
  v118 = v185;
  v119 = swift_getWitnessTable();
  v120 = v182;
  View.padding(_:_:)();
  (*(v189 + 8))(v116, v118);
  v235[2] = v119;
  v235[3] = &protocol witness table for _PaddingLayout;
  v121 = v219;
  v122 = v188;
  v215 = swift_getWitnessTable();
  sub_1000EE87C();
  v123 = *(v217 + 8);
  v124 = v120;
  v125 = v120;
  v126 = v122;
  v218 = v217 + 8;
  v216 = v123;
  (v123)(v125, v122);
  sub_10003D048(v121, v127, v128, v129);
  LOBYTE(v118) = sub_100060918();

  if (v118)
  {
    v133 = *(sub_10003D048(v121, v130, v131, v132) + 112);

    v134 = v211;
    sub_10003D17C(v121, &State.projectedValue.getter);
    v135 = v148;
    sub_100120434(v133, v134, v220, v212, v148);
    v136 = v208;
    swift_getWitnessTable();
    v137 = v147;
    sub_1000EE87C();
    v138 = v204;
    v139 = *(v204 + 8);
    v139(v135, v136);
    sub_1000EE87C();
    v139(v137, v136);
    v140 = v207;
    (*(v138 + 32))(v207, v135, v136);
    (*(v138 + 56))(v140, 0, 1, v136);
  }

  else
  {
    v140 = v207;
    (*(v204 + 56))(v207, 1, 1, v208);
    swift_getWitnessTable();
  }

  v141 = v206;
  sub_1000E7690(v140, v206);
  v142 = v205;
  v143 = *(v205 + 8);
  v144 = v209;
  v143(v140, v209);
  (*(v217 + 16))(v124, v222, v126);
  v236 = v124;
  (*(v142 + 16))(v140, v141, v144);
  v237 = v140;
  v235[0] = v126;
  v235[1] = v144;
  v233 = v215;
  v232 = swift_getWitnessTable();
  v234 = swift_getWitnessTable();
  sub_1000E76FC(&v236, 2uLL, v235);
  v143(v141, v144);
  v145 = v216;
  (v216)(v222, v126);
  v143(v140, v144);
  return v145(v124, v126);
}