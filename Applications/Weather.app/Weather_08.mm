uint64_t sub_1000E03B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

BOOL sub_1000E0408(uint64_t a1)
{
  v2 = type metadata accessor for SavedLocation();
  v47 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Location.Identifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v41 - v10;
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  __chkstk_darwin(active - 8);
  v45 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v44 = v41 - v15;
  __chkstk_darwin(v16);
  v18 = v41 - v17;
  v43 = OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState;
  sub_1000BC9D0();
  v19 = sub_1000E0924();
  v21 = v20;
  sub_1000E0040(v18, type metadata accessor for LocationViewerActiveLocationState);
  if (v19 == static Location.currentLocationID.getter() && v21 == v22)
  {

    return 1;
  }

  v41[1] = a1;
  v42 = v11;
  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    return 1;
  }

  sub_1000E0A64();
  v26 = v25;
  v27 = *(v25 + 16);
  if (v27)
  {
    v48 = _swiftEmptyArrayStorage;
    sub_10003DC90();
    v28 = v48;
    v29 = *(v47 + 80);
    v41[0] = v26;
    v30 = v26 + ((v29 + 32) & ~v29);
    v46 = *(v47 + 72);
    v47 = v6;
    do
    {
      v31 = v5;
      sub_1000BC9D0();
      SavedLocation.identifier.getter();
      sub_1000E0040(v4, &type metadata accessor for SavedLocation);
      v48 = v28;
      v32 = v28[2];
      if (v32 >= v28[3] >> 1)
      {
        sub_10003DC90();
        v28 = v48;
      }

      v28[2] = v32 + 1;
      v33 = v28 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v32;
      v5 = v31;
      (*(v47 + 32))(v33, v8, v31);
      v30 += v46;
      --v27;
    }

    while (v27);

    v6 = v47;
  }

  else
  {

    v28 = _swiftEmptyArrayStorage;
  }

  v35 = v44;
  sub_1000BC9D0();
  v36 = v45;
  sub_1000BC9D0();
  v37 = sub_100024D10(v36, 1, v5);
  v38 = v42;
  if (v37 == 1)
  {
    static CurrentLocation.placeholderIdentifier.getter();
    v39 = sub_1000E0040(v35, type metadata accessor for LocationViewerActiveLocationState);
  }

  else
  {
    sub_1000E0040(v35, type metadata accessor for LocationViewerActiveLocationState);
    v39 = (*(v6 + 32))(v38, v36, v5);
  }

  __chkstk_darwin(v39);
  v41[-2] = v38;
  v34 = sub_1000E0FA0(sub_1000E1030, &v41[-4], v28);

  (*(v6 + 8))(v38, v5);
  return v34;
}

uint64_t sub_1000E0924()
{
  v1 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_10001365C();
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  v6 = sub_100003810(active);
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_1000BB194(v0, v8 - v7);
  sub_10000554C(v9);
  if (v10)
  {
    return static Location.currentLocationID.getter();
  }

  (*(v3 + 32))(v0, v9, v1);
  v11 = Location.Identifier.id.getter();
  (*(v3 + 8))(v0, v1);
  return v11;
}

void sub_1000E0A64()
{
  sub_10000C778();
  v2 = type metadata accessor for SavedLocation();
  v3 = sub_100003AE8(v2);
  v70 = v4;
  __chkstk_darwin(v3);
  sub_100003848();
  v69 = v5;
  sub_10000386C();
  __chkstk_darwin(v6);
  v8 = &v56 - v7;
  __chkstk_darwin(v9);
  sub_100003878();
  v64 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_100003878();
  v63 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  v14 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = sub_100087E64();
  v57 = v0;
  v21 = *(v0 + *(v56 + 24));
  v22 = *(v21 + 16);
  if (v22)
  {
    v25 = *(v16 + 16);
    v23 = v16 + 16;
    v24 = v25;
    v26 = v21 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v27 = *(v23 + 56);
    v67 = (v23 + 16);
    v68 = v27;
    v66 = v23 + 72;
    v65 = enum case for LocationModel.saved(_:);
    v58 = v23 + 80;
    v59 = v23 - 8;
    v28 = _swiftEmptyArrayStorage;
    v61 = v1;
    v62 = v23;
    v60 = v25;
    do
    {
      v24(v1, v26, v14);
      (*v67)(v19, v1, v14);
      v29 = sub_1000B9A5C();
      v31 = v30(v29);
      if (v31 == v65)
      {
        v32 = sub_1000B9A5C();
        v33(v32);
        v34 = *(sub_10022C350(&qword_100CA38B8, &unk_100A66A90) + 48);
        sub_100030804();
        type metadata accessor for LocationModelData();
        sub_1000037E8();
        (*(v35 + 8))(&v19[v34]);
        sub_100030804();
        sub_100003B2C();
        sub_100030804();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000066AC();
          sub_10003D7C4();
          v28 = v40;
        }

        v37 = v28[2];
        v36 = v28[3];
        if (v37 >= v36 >> 1)
        {
          sub_100031C84(v36);
          sub_10003D7C4();
          v28 = v41;
        }

        v28[2] = v37 + 1;
        sub_10000C7B8();
        sub_100049C94();
        sub_100030804();
        v24 = v60;
        v1 = v61;
      }

      else
      {
        v38 = sub_1000B9A5C();
        v39(v38);
      }

      v26 += v68;
      --v22;
    }

    while (v22);
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v42 = 0;
  v43 = *(v57 + *(v56 + 20));
  v44 = *(v43 + 16);
  v45 = _swiftEmptyArrayStorage;
  while (1)
  {
LABEL_14:
    if (v42 == v44)
    {

      sub_10000536C();
      return;
    }

    if (v42 >= *(v43 + 16))
    {
      break;
    }

    v46 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v47 = *(v70 + 72);
    sub_10001CD6C();
    sub_1000312D4();
    ++v42;
    v48 = v28 + v46;
    v49 = v28[2] + 1;
    while (--v49)
    {
      v50 = &v48[v47];
      v51 = static SavedLocation.== infix(_:_:)();
      v48 = v50;
      if (v51)
      {
        sub_10001F7DC();
        sub_1000311F8(v8, v52);
        goto LABEL_14;
      }
    }

    sub_100049C94();
    sub_100030804();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = v45;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100037C8C();
      sub_1000328B0();
      v45 = v71;
    }

    v55 = v45[2];
    v54 = v45[3];
    if (v55 >= v54 >> 1)
    {
      sub_100031C84(v54);
      sub_1000328B0();
      v45 = v71;
    }

    v45[2] = v55 + 1;
    sub_100049C94();
    sub_100030804();
  }

  __break(1u);
}

void sub_1000E0F5C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

uint64_t sub_1000E1050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), const char *a6)
{
  a3(0);
  sub_10031EFA0(a4, a5, a6);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000E10DC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000E1124()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000E1190(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Location.Identifier();

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_1000E1200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location.Identifier();
  v5 = sub_100024D10(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E1248(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = a2;
  a3 &= 1u;
  *(v6 + 32) = a3;

  sub_1000E1328(a2, a3);
  asyncMain(block:)();
}

uint64_t sub_1000E12DC()
{

  sub_100186038(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1000E1328(uint64_t result, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return v2;
}

uint64_t sub_1000E1334(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1000E13C0()
{

  return sub_1003BD6E4(v1 - 96, v0);
}

uint64_t sub_1000E13E8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000E1404@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 120);
  *(v1 - 200) = a1;
  return v2 + a1;
}

uint64_t sub_1000E1420()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000E143C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000E146C(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

uint64_t sub_1000E1560()
{
}

uint64_t sub_1000E1588()
{
  result = v0;
  *(v2 - 112) = v1;
  return result;
}

uint64_t sub_1000E15B8(uint64_t a1, void (*a2)(void))
{
  v4 = *(v2 - 336);

  return sub_1001AEEB4(v4, a2);
}

uint64_t sub_1000E15D0(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_1000E15F4(uint64_t a1)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_1000E1628(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000E1670(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000E16B8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000E173C()
{
}

uint64_t sub_1000E1768()
{

  return type metadata accessor for UUID();
}

uint64_t sub_1000E17D8(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CD81B0, &unk_100A3B000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall SettingsMonitor.applicationWillEnterForeground()()
{
  sub_1000E1888();

  sub_1000E2D38();
}

uint64_t sub_1000E1888()
{
  v1 = v0;
  v2 = type metadata accessor for UnitConfiguration.WindSpeed();
  v3 = sub_100003E5C(v2, v270);
  v239 = v4;
  __chkstk_darwin(v3);
  sub_1000038E4();
  sub_100003990(v5);
  v250 = sub_10022C350(&qword_100CDA700, &qword_100A85760);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  sub_100003990(v7);
  v8 = sub_10022C350(qword_100CB61A0, &qword_100A64160);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_10000E70C();
  sub_100003918(v11);
  v12 = type metadata accessor for UnitConfiguration.Precipitation();
  v13 = sub_100003E5C(v12, v269);
  v237 = v14;
  __chkstk_darwin(v13);
  sub_1000038E4();
  sub_100003990(v15);
  v247 = sub_10022C350(&qword_100CDA708, &qword_100A85768);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000039BC();
  sub_100003990(v17);
  v18 = sub_10022C350(&qword_100CB6188, &unk_100A49BB0);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v20);
  sub_10000E70C();
  sub_100003918(v21);
  v22 = type metadata accessor for UnitConfiguration.Pressure();
  v23 = sub_100003E5C(v22, v268);
  v235 = v24;
  __chkstk_darwin(v23);
  sub_1000038E4();
  sub_100003990(v25);
  v244 = sub_10022C350(&qword_100CDA710, &qword_100A85770);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v26);
  sub_1000039BC();
  sub_100003990(v27);
  v28 = sub_10022C350(&qword_100CB6190, &unk_100A8B0B0);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_10000E70C();
  sub_100003918(v31);
  v32 = type metadata accessor for UnitConfiguration.Distance();
  v33 = sub_100003E5C(v32, v267);
  v233 = v34;
  __chkstk_darwin(v33);
  sub_1000038E4();
  sub_100003990(v35);
  v241 = sub_10022C350(&qword_100CDA718, &unk_100A85778);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v36);
  sub_1000039BC();
  sub_100003990(v37);
  v38 = sub_10022C350(&qword_100CB6180, &unk_100A8B0A0);
  v39 = sub_100003810(v38);
  __chkstk_darwin(v39);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_10000E70C();
  sub_100003918(v41);
  v42 = type metadata accessor for ConfiguredUnit();
  v43 = sub_100003E5C(v42, &v275);
  v259 = v44;
  __chkstk_darwin(v43);
  sub_1000038E4();
  v46 = sub_100003918(v45);
  v261 = type metadata accessor for MainAction(v46);
  sub_1000037E8();
  __chkstk_darwin(v47);
  sub_1000038E4();
  sub_100003918(v48);
  v49 = type metadata accessor for UnitConfiguration.Temperature();
  v231 = *(v49 - 8);
  __chkstk_darwin(v49);
  sub_1000038E4();
  sub_100003990(v50);
  v51 = sub_10022C350(&qword_100CBE7F8, &qword_100A8B0C0) - 8;
  sub_100003828();
  __chkstk_darwin(v52);
  v54 = &v225 - v53;
  v55 = sub_10022C350(&qword_100CB6198, &unk_100A49BC0);
  v56 = sub_100003810(v55);
  __chkstk_darwin(v56);
  v58 = &v225 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v61 = &v225 - v60;
  v62 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  UnitManager.refreshUnitsFromStorage()();

  v262 = v62;
  static UnitManager.standard.getter();
  UnitManager.preferredTemperatureUnit.getter();

  v63 = OBJC_IVAR____TtC7Weather15SettingsMonitor_lastTemperatureConfiguration;
  sub_10002401C(v0 + OBJC_IVAR____TtC7Weather15SettingsMonitor_lastTemperatureConfiguration, v269);
  v64 = *(v51 + 56);
  v254 = v61;
  sub_1000955E0(v61, v54, &qword_100CB6198, &unk_100A49BC0);
  sub_1000955E0(v1 + v63, &v54[v64], &qword_100CB6198, &unk_100A49BC0);
  sub_1000038B4(v54, 1, v49);
  if (v188)
  {
    sub_1000038B4(&v54[v64], 1, v49);
    v65 = v240;
    if (v188)
    {
      v66 = sub_1000180EC(v54, &qword_100CB6198, &unk_100A49BC0);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  sub_1000955E0(v54, v58, &qword_100CB6198, &unk_100A49BC0);
  v67 = sub_100024D10(&v54[v64], 1, v49);
  if (v67 == 1)
  {
    (*(v231 + 8))(v58, v49);
    v65 = v240;
LABEL_8:
    sub_1000180EC(v54, &qword_100CBE7F8, &qword_100A8B0C0);
LABEL_9:
    sub_10003C838(v1 + v63);
    v68 = sub_100013C74(&v271);
    sub_1007EE580(v68, v69, v70, &unk_100A49BC0);
    swift_endAccess();
    v71 = sub_100008F70();
    sub_1000955E0(v71, v72, v73, &unk_100A49BC0);
    v74 = sub_10001F87C();
    v75(v74);
    v76 = sub_100004B70();
    v77(v76);
    type metadata accessor for ConfiguredUnitsAction(0);
    sub_100016F78();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EnvironmentAction(0);
    sub_100016F78();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_100010C24();
    sub_100016AFC();
    sub_10004F034(v78, v79, v80, v81);
    sub_1000180EC(v267, &unk_100CD81B0, &unk_100A3B000);
    v66 = sub_1000547B8(v65);
    goto LABEL_10;
  }

  v205 = v231;
  v206 = v226;
  (*(v231 + 32))(v226, &v54[v64], v49);
  sub_100067564(qword_100CBE800, &type metadata accessor for UnitConfiguration.Temperature, &protocol conformance descriptor for UnitConfiguration.Temperature);
  v207 = dispatch thunk of static Equatable.== infix(_:_:)();
  v208 = *(v205 + 8);
  v208(v206, v49);
  v208(v58, v49);
  v66 = sub_1000180EC(v54, &qword_100CB6198, &unk_100A49BC0);
  v65 = v240;
  if ((v207 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_10003A364(v66);
  sub_100020250();
  UnitManager.preferredDistanceUnit.getter();

  v82 = OBJC_IVAR____TtC7Weather15SettingsMonitor_lastDistanceConfiguration;
  sub_10002401C(v1 + OBJC_IVAR____TtC7Weather15SettingsMonitor_lastDistanceConfiguration, v266);
  sub_100018768();
  v83 = v242;
  sub_100016AFC();
  sub_1000955E0(v84, v85, v86, v87);
  sub_100016AFC();
  sub_1000955E0(v88, v89, v90, v91);
  v92 = v243;
  sub_1000038B4(v83, 1, v243);
  if (v188)
  {
    sub_1000038B4(v83 + v63, 1, v92);
    if (v188)
    {
      v93 = sub_1000180EC(v83, &qword_100CB6180, &unk_100A8B0A0);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v94 = v232;
  sub_1000955E0(v83, v232, &qword_100CB6180, &unk_100A8B0A0);
  v95 = sub_100024D10(v83 + v63, 1, v92);
  if (v95 == 1)
  {
    v96 = sub_10000EDE8();
    v97(v96, v92);
LABEL_17:
    sub_1000180EC(v83, &qword_100CDA718, &unk_100A85778);
LABEL_18:
    sub_10003C838(v1 + v82);
    v98 = sub_100013C74(&v272);
    sub_1007EE580(v98, v99, v100, &unk_100A8B0A0);
    swift_endAccess();
    v101 = sub_100008F70();
    sub_1000955E0(v101, v102, v103, &unk_100A8B0A0);
    v104 = sub_10001F87C();
    v105(v104);
    v106 = sub_100004B70();
    v107(v106);
    type metadata accessor for ConfiguredUnitsAction(0);
    sub_100016F78();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EnvironmentAction(0);
    sub_100016F78();
    swift_storeEnumTagMultiPayload();
    sub_10004EAE8();
    sub_100010C24();
    sub_100016AFC();
    sub_10004F034(v108, v109, v110, v111);
    sub_1000180EC(v267, &unk_100CD81B0, &unk_100A3B000);
    v93 = sub_1000547B8(v65);
    goto LABEL_19;
  }

  v209 = v233;
  v210 = v83 + v63;
  v63 = v227;
  (*(v233 + 32))(v227, v210, v92);
  sub_100067564(&qword_100CD4608, &type metadata accessor for UnitConfiguration.Distance, &protocol conformance descriptor for UnitConfiguration.Distance);
  v211 = dispatch thunk of static Equatable.== infix(_:_:)();
  v212 = *(v209 + 8);
  v212(v63, v92);
  v212(v94, v92);
  v93 = sub_1000180EC(v83, &qword_100CB6180, &unk_100A8B0A0);
  if ((v211 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_19:
  sub_10003A364(v93);
  sub_100020250();
  UnitManager.preferredPressureUnit.getter();

  v112 = OBJC_IVAR____TtC7Weather15SettingsMonitor_lastPressureConfiguration;
  sub_10002401C(v1 + OBJC_IVAR____TtC7Weather15SettingsMonitor_lastPressureConfiguration, v265);
  sub_100018768();
  v113 = v245;
  sub_100016AFC();
  sub_1000955E0(v114, v115, v116, v117);
  sub_100016AFC();
  sub_1000955E0(v118, v119, v120, v121);
  v122 = v246;
  sub_1000038B4(v113, 1, v246);
  if (v188)
  {
    if (sub_100020B98() == 1)
    {
      v123 = sub_1000180EC(v113, &qword_100CB6190, &unk_100A8B0B0);
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v124 = v234;
  sub_1000955E0(v113, v234, &qword_100CB6190, &unk_100A8B0B0);
  v125 = sub_100020B98();
  if (v125 == 1)
  {
    v126 = sub_10000EDE8();
    v127(v126, v122);
LABEL_25:
    sub_1000180EC(v113, &qword_100CDA710, &qword_100A85770);
LABEL_26:
    sub_10003C838(v1 + v112);
    v128 = sub_100013C74(&v273);
    sub_1007EE580(v128, v129, v130, &unk_100A8B0B0);
    swift_endAccess();
    v131 = sub_100008F70();
    sub_1000955E0(v131, v132, v133, &unk_100A8B0B0);
    v134 = sub_10001F87C();
    v135(v134);
    v136 = sub_100004B70();
    v137(v136);
    type metadata accessor for ConfiguredUnitsAction(0);
    sub_100016F78();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EnvironmentAction(0);
    sub_100016F78();
    swift_storeEnumTagMultiPayload();
    sub_10004EAE8();
    sub_100010C24();
    sub_100016AFC();
    sub_10004F034(v138, v139, v140, v141);
    sub_1000180EC(v267, &unk_100CD81B0, &unk_100A3B000);
    v123 = sub_1000547B8(v65);
    goto LABEL_27;
  }

  sub_100020250();
  (*(v213 + 32))(v228, v113 + v63, v122);
  v214 = sub_100067564(&qword_100CD45F8, &type metadata accessor for UnitConfiguration.Pressure, &protocol conformance descriptor for UnitConfiguration.Pressure);
  sub_100037D80(v214);
  v215 = sub_100031834();
  (unk_100A8B0B0)(v215);
  (unk_100A8B0B0)(v124, v63);
  v123 = sub_1000180EC(v113, &qword_100CB6190, &unk_100A8B0B0);
  if ((v122 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_27:
  sub_10003A364(v123);
  sub_100020250();
  UnitManager.preferredPrecipitationUnit.getter();

  v142 = OBJC_IVAR____TtC7Weather15SettingsMonitor_lastPrecipitationConfiguration;
  sub_10002401C(v1 + OBJC_IVAR____TtC7Weather15SettingsMonitor_lastPrecipitationConfiguration, v264);
  sub_100018768();
  v143 = v248;
  sub_100016AFC();
  sub_1000955E0(v144, v145, v146, v147);
  sub_100016AFC();
  sub_1000955E0(v148, v149, v150, v151);
  v152 = v249;
  sub_1000038B4(v143, 1, v249);
  if (v188)
  {
    if (sub_100020B98() == 1)
    {
      v153 = sub_1000180EC(v143, &qword_100CB6188, &unk_100A49BB0);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v154 = v236;
  sub_1000955E0(v143, v236, &qword_100CB6188, &unk_100A49BB0);
  v155 = sub_100020B98();
  if (v155 == 1)
  {
    v156 = sub_10000EDE8();
    v157(v156, v152);
LABEL_33:
    sub_1000180EC(v143, &qword_100CDA708, &qword_100A85768);
LABEL_34:
    sub_10003C838(v1 + v142);
    v158 = sub_100013C74(&v274);
    sub_1007EE580(v158, v159, v160, &unk_100A49BB0);
    swift_endAccess();
    v161 = sub_100008F70();
    sub_1000955E0(v161, v162, v163, &unk_100A49BB0);
    v164 = sub_10001F87C();
    v165(v164);
    v166 = sub_100004B70();
    v167(v166);
    type metadata accessor for ConfiguredUnitsAction(0);
    sub_100016F78();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EnvironmentAction(0);
    sub_100016F78();
    swift_storeEnumTagMultiPayload();
    sub_10004EAE8();
    sub_100010C24();
    sub_100016AFC();
    sub_10004F034(v168, v169, v170, v171);
    sub_1000180EC(v267, &unk_100CD81B0, &unk_100A3B000);
    v153 = sub_1000547B8(v65);
    goto LABEL_35;
  }

  sub_100020250();
  (*(v216 + 32))(v229, v143 + v63, v152);
  v217 = sub_100067564(&qword_100CD4600, &type metadata accessor for UnitConfiguration.Precipitation, &protocol conformance descriptor for UnitConfiguration.Precipitation);
  sub_100037D80(v217);
  v218 = sub_100031834();
  (unk_100A49BB0)(v218);
  (unk_100A49BB0)(v154, v63);
  v153 = sub_1000180EC(v143, &qword_100CB6188, &unk_100A49BB0);
  if ((v152 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_35:
  sub_10003A364(v153);
  v172 = v252;
  UnitManager.preferredWindUnit.getter();

  v173 = OBJC_IVAR____TtC7Weather15SettingsMonitor_lastWindSpeedConfiguration;
  sub_10002401C(v1 + OBJC_IVAR____TtC7Weather15SettingsMonitor_lastWindSpeedConfiguration, v263);
  sub_100018768();
  v174 = v253;
  sub_100016AFC();
  sub_1000955E0(v175, v176, v177, v178);
  sub_100016AFC();
  v179 = v174;
  sub_1000955E0(v180, v181, v182, v183);
  v184 = v174;
  v185 = v251;
  sub_1000038B4(v184, 1, v251);
  if (v188)
  {
    v186 = v256;
    sub_1000038B4(v179 + v63, 1, v185);
    if (v188)
    {
      sub_1000180EC(v179, qword_100CB61A0, &qword_100A64160);
LABEL_54:
      v204 = v172;
      goto LABEL_55;
    }

    goto LABEL_43;
  }

  v187 = v238;
  sub_1000955E0(v179, v238, qword_100CB61A0, &qword_100A64160);
  sub_1000038B4(v179 + v63, 1, v185);
  if (v188)
  {
    v186 = v256;
    (*(v239 + 8))(v187, v185);
LABEL_43:
    sub_1000180EC(v179, &qword_100CDA700, &qword_100A85760);
    goto LABEL_44;
  }

  v219 = v239;
  v220 = v179 + v63;
  v221 = v230;
  (*(v239 + 32))(v230, v220, v185);
  sub_100067564(&qword_100CD45F0, &type metadata accessor for UnitConfiguration.WindSpeed, &protocol conformance descriptor for UnitConfiguration.WindSpeed);
  v222 = dispatch thunk of static Equatable.== infix(_:_:)();
  v223 = *(v219 + 8);
  v223(v221, v185);
  v223(v187, v185);
  v186 = v256;
  sub_1000180EC(v253, qword_100CB61A0, &qword_100A64160);
  if (v222)
  {
    goto LABEL_54;
  }

LABEL_44:
  sub_10003C838(v1 + v173);
  sub_100016AFC();
  sub_1007EE580(v189, v190, v191, v192);
  swift_endAccess();
  v194 = *(v1 + 16);
  v193 = *(v1 + 24);
  v195 = v258;
  sub_100016AFC();
  sub_1000955E0(v196, v197, v198, v199);
  v200 = v259;
  v201 = v260;
  (*(v259 + 104))(v195, enum case for ConfiguredUnit.windSpeed(_:), v260);
  (*(v200 + 32))(v65, v195, v201);
  type metadata accessor for ConfiguredUnitsAction(0);
  sub_100016F78();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EnvironmentAction(0);
  sub_100016F78();
  swift_storeEnumTagMultiPayload();
  sub_10004EAE8();
  v202 = sub_100010C24();
  sub_10004F034(v202, v203, v194, v193);
  sub_1000180EC(v267, &unk_100CD81B0, &unk_100A3B000);
  sub_1000547B8(v65);
  v204 = v172;
LABEL_55:
  sub_1000180EC(v204, qword_100CB61A0, &qword_100A64160);
  sub_1000180EC(v257, &qword_100CB6188, &unk_100A49BB0);
  sub_1000180EC(v186, &qword_100CB6190, &unk_100A8B0B0);
  sub_1000180EC(v255, &qword_100CB6180, &unk_100A8B0A0);
  return sub_1000180EC(v254, &qword_100CB6198, &unk_100A49BC0);
}

void sub_1000E2D38()
{
  v1 = OBJC_IVAR____TtC7Weather15SettingsMonitor_observer;
  if (!*(v0 + OBJC_IVAR____TtC7Weather15SettingsMonitor_observer))
  {
    v2 = v0;
    sub_10000C70C(0, &qword_100CDA6F8, NSUserDefaults_ptr);
    v3 = static NSUserDefaults.weatherShared.getter();

    v4 = NSUserDefaults.registerUnitsConfigurationChanges(_:)();

    v5 = *(v2 + v1);
    *(v2 + v1) = v4;
  }
}

Swift::Void __swiftcall SidebarVisibilityMonitor.applicationWillEnterForeground()()
{
  if (qword_100CA29A0 != -1)
  {
    swift_once();
  }

  sub_1000E3070();
  Configurable.setting<A>(_:)();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = v2;

  asyncMain(block:)();
}

uint64_t sub_1000E2EE4()
{

  return swift_deallocObject();
}

uint64_t sub_1000E2F20()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  v6 = sub_10022C350(&qword_100CAFFD8, &unk_100A63CC0);
  sub_100003B6C(v6);
  sub_100008300();
  result = sub_100019C40(27, v7, v8);
  qword_100D91260 = result;
  return result;
}

unint64_t sub_1000E3070()
{
  result = qword_100CB88E8;
  if (!qword_100CB88E8)
  {
    v3 = type metadata accessor for SidebarVisibilityMonitor();
    result = swift_getWitnessTable(protocol conformance descriptor for SidebarVisibilityMonitor, v3, v0, v1);
    atomic_store(result, &qword_100CB88E8);
  }

  return result;
}

uint64_t sub_1000E30C4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v4);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  *v6 = a2;
  type metadata accessor for ViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10004F034(v6, v10, v8, v7);
  sub_1000E17D8(v10);
  return sub_1000547B8(v6);
}

uint64_t sub_1000E31D4()
{
}

uint64_t sub_1000E3238()
{

  return sub_1000730E8();
}

uint64_t sub_1000E3268()
{

  return type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
}

void sub_1000E3284()
{
  swift_getObjectType();

  ApplicationStateMonitor.applicationWillEnterForeground()();
}

uint64_t sub_1000E32C0()
{
  v0 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  sub_100003810(v0);
  sub_100003828();
  __chkstk_darwin(v1);
  v2 = sub_100031DD4();
  sub_1000061CC(v2);
  sub_100018450();
  v3 = swift_allocObject();
  sub_10001854C(v3);
  sub_10000EB8C();
  sub_1006C0138();
}

uint64_t sub_1000E3390()
{
  sub_100013494();
  sub_100028784();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  sub_10000622C(v1);

  return sub_1000E341C();
}

uint64_t sub_1000E341C()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_10016DA18;

  return sub_1000E34AC();
}

uint64_t sub_1000E34AC()
{
  v1[11] = v0;
  v2 = type metadata accessor for Location();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = type metadata accessor for LocationCoordinate();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v4 = type metadata accessor for LocationOfInterestType();
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = type metadata accessor for LocationOfInterest();
  v1[23] = v5;
  v1[24] = *(v5 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_1000E36A4, v0, 0);
}

uint64_t sub_1000E36A4()
{
  sub_100008188();
  v1 = *(v0 + 88);
  if (*(v1 + 208))
  {
    sub_100006248();

    sub_100003B14();

    return v2();
  }

  else
  {
    *(v1 + 208) = 1;
    v4 = *(v1 + 368);
    v5 = *(v1 + 376);
    sub_1000161C0((v1 + 344), v4);
    v6 = swift_task_alloc();
    *(v0 + 216) = v6;
    *v6 = v0;
    v6[1] = sub_1000E37E0;

    return dispatch thunk of LocationsOfInterestDataSourceType.locationsOfInterest()(v4, v5);
  }
}

uint64_t sub_1000E37E0()
{
  sub_100013494();
  v2 = *v1;
  v3 = *v1;
  *(v3 + 224) = v4;
  *(v3 + 232) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_1005B0780;
  }

  else
  {
    v6 = sub_1000E3910;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000E3910()
{
  v150 = v0;
  v1 = *(v0 + 88);
  swift_beginAccess();
  sub_1000161C0((v1 + 128), *(v1 + 152));
  sub_100037034();
  v2 = dispatch thunk of LocationsOfInterestManagerType.locations.getter();
  swift_endAccess();
  if (qword_100CA26C0 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v3 = type metadata accessor for Logger();
    sub_10000703C(v3, qword_100D90AA8);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 224);
    v119 = v2;
    if (v6)
    {
      v2 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v149 = v8;
      *v2 = 134218499;
      *(v2 + 4) = *(v7 + 16);

      *(v2 + 6) = 2160;
      *(v2 + 14) = 1752392040;
      *(v2 + 11) = 2081;
      v9 = Array.description.getter();
      v11 = sub_100078694(v9, v10, &v149);

      *(v2 + 3) = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "Massaged data contains %ld location of interest with content %{private,mask.hash}s", v2, 0x20u);
      sub_100006F14(v8);

      sub_10000FC14();
    }

    else
    {
    }

    swift_beginAccess();
    v116 = v1;
    sub_1000161C0((v1 + 128), *(v1 + 152));
    sub_100037034();
    v12 = dispatch thunk of LocationsOfInterestManagerType.locations.getter();
    swift_endAccess();
    v148 = *(v12 + 16);
    if (v148)
    {
      v13 = 0;
      v14 = *(v0 + 160);
      v15 = *(v0 + 128);
      v146 = (*(v0 + 104) + 8);
      v126 = v15 + 32;
      v130 = v14 + 16;
      v134 = v14;
      v140 = *(v0 + 192) + 8;
      v142 = v14 + 8;
      v16 = &_swiftEmptyDictionarySingleton;
      v144 = v15;
      v122 = v15 + 40;
      v138 = v12;
      while (1)
      {
        if (v13 >= *(v12 + 16))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v2 = *(v0 + 112);
        v17 = *(v0 + 96);
        v18 = sub_1000208DC();
        v19(v18);
        LocationOfInterest.type.getter();
        LocationOfInterest.location.getter();
        Location.coordinate.getter();
        (*v146)(v2, v17);
        LocationCoordinate.init(_:)();
        swift_isUniquelyReferenced_nonNull_native();
        v149 = v16;
        sub_1000E41BC();
        if (__OFADD__(*(v16 + 2), (v21 & 1) == 0))
        {
          goto LABEL_40;
        }

        v1 = v20;
        v22 = v21;
        sub_10022C350(&qword_100CC75B8, &unk_100A63FD0);
        v23 = sub_10003169C();
        v31 = v149;
        if (v23)
        {
          sub_1000E41BC();
          if ((v22 & 1) != (v24 & 1))
          {
LABEL_32:

            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          }

          v1 = v23;
        }

        v32 = *(v0 + 144);
        v2 = *(v0 + 120);
        if (v22)
        {
          v33 = sub_100051F00(v23, v24, v25, v26, v27, v28, v29, v30, v110, v113, v116, v119, v122, v126, v130, v134, v138, v140, v142, v144);
          (*(v34 + 40))(v33, v32, v2);
          v35 = sub_10003C620();
          v36(v35);
          v37 = sub_10000EB9C();
          v38(v37);
          v16 = v31;
        }

        else
        {
          sub_100074C70(v31 + 8 * (v1 >> 6));
          v39 = sub_1000149D0(*(v31 + 48), v110, v113, v116, v119, v122, v126, v130, v134);
          v41 = v40(v39);
          v49 = sub_100051F00(v41, v42, v43, v44, v45, v46, v47, v48, v111, v114, v117, v120, v123, v127, v131, v135, v138, v140, v142, v144);
          (*(v50 + 32))(v49, v32, v2);
          v51 = sub_10003C620();
          v52(v51);
          v53 = sub_10000EB9C();
          v54(v53);
          v55 = *(v31 + 16);
          v56 = __OFADD__(v55, 1);
          v57 = v55 + 1;
          if (v56)
          {
            goto LABEL_43;
          }

          v16 = v31;
          *(v31 + 16) = v57;
        }

        ++v13;
        v12 = v138;
        if (v148 == v13)
        {
          goto LABEL_19;
        }
      }
    }

    v16 = &_swiftEmptyDictionarySingleton;
LABEL_19:
    v113 = v16;
    v58 = *(v0 + 224);

    v147 = *(v58 + 16);
    if (!v147)
    {
      break;
    }

    v59 = 0;
    v60 = *(v0 + 160);
    v61 = *(v0 + 128);
    v145 = (*(v0 + 104) + 8);
    v128 = v61 + 32;
    v132 = v60 + 16;
    v141 = v60 + 8;
    v136 = v60;
    v139 = *(v0 + 192) + 8;
    v2 = &_swiftEmptyDictionarySingleton;
    v143 = v61;
    v124 = v61 + 40;
    while (v59 < *(v58 + 16))
    {
      v62 = *(v0 + 112);
      v63 = *(v0 + 96);
      v64 = sub_1000208DC();
      v65(v64);
      LocationOfInterest.type.getter();
      LocationOfInterest.location.getter();
      Location.coordinate.getter();
      (*v145)(v62, v63);
      LocationCoordinate.init(_:)();
      swift_isUniquelyReferenced_nonNull_native();
      v149 = v2;
      sub_1000E41BC();
      if (__OFADD__(*(v2 + 2), (v67 & 1) == 0))
      {
        goto LABEL_42;
      }

      v1 = v66;
      v68 = v67;
      sub_10022C350(&qword_100CC75B8, &unk_100A63FD0);
      v69 = sub_10003169C();
      v2 = v149;
      if (v69)
      {
        sub_1000E41BC();
        if ((v68 & 1) != (v70 & 1))
        {
          goto LABEL_32;
        }

        v1 = v69;
      }

      v77 = *(v0 + 136);
      v78 = *(v0 + 120);
      if (v68)
      {
        v79 = sub_10002489C(v69, v70, v71, v72, v73, v74, v75, v76, v110, v113, v116, v119, v124, v128, v132, v136, v139, v141, v143);
        (*(v80 + 40))(v79, v77, v78);
        v81 = sub_10003C620();
        v82(v81);
        v83 = sub_100017B18();
        v84(v83);
      }

      else
      {
        sub_100074C70(&v2[8 * (v1 >> 6)]);
        v85 = sub_1000149D0(*(v2 + 6), v110, v113, v116, v119, v124, v128, v132, v136);
        v87 = v86(v85);
        v95 = sub_10002489C(v87, v88, v89, v90, v91, v92, v93, v94, v112, v115, v118, v121, v125, v129, v133, v137, v139, v141, v143);
        (*(v96 + 32))(v95, v77, v78);
        v97 = sub_10003C620();
        v98(v97);
        v99 = sub_100017B18();
        v100(v99);
        v101 = *(v2 + 2);
        v56 = __OFADD__(v101, 1);
        v102 = v101 + 1;
        if (v56)
        {
          goto LABEL_44;
        }

        *(v2 + 2) = v102;
      }

      if (v147 == ++v59)
      {
        goto LABEL_36;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    sub_10001F1B4(&qword_100CA26C0);
  }

  v2 = &_swiftEmptyDictionarySingleton;
LABEL_36:
  v104 = *(v0 + 224);
  swift_beginAccess();
  sub_10002D7F8(v116 + 128, *(v116 + 152));
  sub_100037034();

  dispatch thunk of LocationsOfInterestManagerType.locations.setter();
  swift_endAccess();
  sub_1000E426C();
  v105 = sub_1000E5AC0(v113, v2, v104, v119);
  v107 = v106;
  v109 = v108;

  *(v0 + 240) = v105;
  *(v0 + 248) = v107;
  *(v0 + 264) = v109;

  return _swift_task_switch(sub_1000E6848, 0, 0);
}

uint64_t sub_1000E4158()
{
  v0 = type metadata accessor for Logger();
  sub_100007074(v0, qword_100D90AA8);
  sub_100049CC4();
  sub_10001F80C();
  sub_1000067EC();
  return Logger.init(subsystem:category:)();
}

void sub_1000E41BC()
{
  sub_100019170();
  type metadata accessor for LocationOfInterestType();
  v0 = sub_10005B6CC(&qword_100CA3590, &type metadata accessor for LocationOfInterestType, &protocol conformance descriptor for LocationOfInterestType);
  v1 = sub_100031BB0(v0);
  sub_100011350(v1, v1, &type metadata accessor for LocationOfInterestType, &qword_100CA35B0);
}

uint64_t sub_1000E426C()
{
  v1 = v0;
  v2 = type metadata accessor for LocationOfInterest();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1000161C0(v0 + 16, v0[19]);
  v6 = dispatch thunk of LocationsOfInterestManagerType.locations.getter();
  swift_endAccess();
  v7 = sub_1000E443C(v0, v6);

  v8 = 0;
  v9 = v7[2];
  for (i = (v3 + 8); ; (*i)(v5, v2))
  {
    if (v9 == v8)
    {
    }

    if (v8 >= v7[2])
    {
      break;
    }

    (*(v3 + 16))(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8, v2);
    sub_1000E53CC(v5, v1);
    ++v8;
  }

  __break(1u);

  result = (*i)(v5, v2);
  __break(1u);
  return result;
}

void *sub_1000E443C(void *a1, uint64_t (*a2)(char *, uint64_t, uint64_t))
{
  v40 = a2;
  v3 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  __chkstk_darwin(v3 - 8);
  v5 = v33 - v4;
  v6 = type metadata accessor for LocationOfInterest();
  v38 = *(v6 - 8);
  __chkstk_darwin(v6);
  v42 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for LocationModel();
  v43 = *(v41 - 8);
  __chkstk_darwin(v41);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  __chkstk_darwin(v10 - 8);
  v12 = v33 - v11;
  v13 = type metadata accessor for WeatherCoalescedLocationResult();
  v35 = *(v13 - 8);
  v36 = v13;
  __chkstk_darwin(v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[25];
  v37 = a1[24];
  v39 = v16;
  v34 = sub_1000161C0(a1 + 21, v37);
  v17 = type metadata accessor for CurrentLocation();
  sub_10001B350(v12, 1, 1, v17);
  sub_1000161C0(a1 + 28, a1[31]);
  dispatch thunk of SavedLocationsManagerType.savedLocations.getter();
  sub_1000161C0(a1 + 38, a1[41]);
  dispatch thunk of LocationDisplayContextManagerType.fetchDisplayContextByLocation()();
  dispatch thunk of WeatherLocationCoalescenceManagerType.coalesceLocations(currentLocation:locationList:locationsOfInterest:displayContextByLocation:)();

  sub_10003FDF4(v12, &unk_100CE49F0, &unk_100A3AFA0);
  v34 = v15;
  v18 = WeatherCoalescedLocationResult.coalescedLocations.getter();
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = *(v43 + 16);
    v21 = *(v43 + 80);
    v33[1] = v18;
    v22 = v18 + ((v21 + 32) & ~v21);
    v39 = *(v43 + 72);
    v40 = v20;
    v43 += 16;
    v23 = (v43 - 8);
    v24 = (v38 + 32);
    v25 = _swiftEmptyArrayStorage;
    v37 = v6;
    do
    {
      v26 = v41;
      v40(v9, v22, v41);
      LocationModel.locationOfInterest.getter();
      (*v23)(v9, v26);
      if (sub_100024D10(v5, 1, v6) == 1)
      {
        sub_10003FDF4(v5, &qword_100CA3588, &unk_100A4F350);
      }

      else
      {
        v27 = *v24;
        (*v24)(v42, v5, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100032BC8();
          v25 = v30;
        }

        v28 = v25[2];
        if (v28 >= v25[3] >> 1)
        {
          sub_100032BC8();
          v25 = v31;
        }

        v25[2] = v28 + 1;
        v29 = v25 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v28;
        v6 = v37;
        v27(v29, v42, v37);
      }

      v22 += v39;
      --v19;
    }

    while (v19);
  }

  else
  {

    v25 = _swiftEmptyArrayStorage;
  }

  (*(v35 + 8))(v34, v36);
  return v25;
}

uint64_t sub_1000E4910(uint64_t a1, void (*a2)(double))
{
  v31 = a1;
  v3 = type metadata accessor for ColorScheme();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = sub_10022C350(&qword_100CE3738, &unk_100A96700);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = sub_10022C350(&qword_100CB3688, &unk_100A468C0);
  sub_1000037E8();
  __chkstk_darwin(v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v30 - v20;
  a2(v19);
  if (qword_100CA2A70 != -1)
  {
    swift_once();
  }

  v22 = sub_10000703C(v14, qword_100D91340);
  v23 = *(v10 + 48);
  sub_1000302D8(v21, v13, &qword_100CB3688, &unk_100A468C0);
  sub_1000302D8(v22, &v13[v23], &qword_100CB3688, &unk_100A468C0);
  if (sub_100017854(v13) != 1)
  {
    sub_1000302D8(v13, v17, &qword_100CB3688, &unk_100A468C0);
    if (sub_100017854(&v13[v23]) != 1)
    {
      (*(v5 + 32))(v9, &v13[v23], v3);
      sub_1008C8004(&qword_100CE3740, &type metadata accessor for ColorScheme, &protocol conformance descriptor for ColorScheme);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v5 + 8);
      v29(v9, v3);
      v29(v17, v3);
      sub_1000180EC(v13, &qword_100CB3688, &unk_100A468C0);
      if (v28)
      {
        return sub_1000180EC(v21, &qword_100CB3688, &unk_100A468C0);
      }

LABEL_9:
      v24 = v31;
      v25 = sub_100003940();
      sub_1000180EC(v25, v26, &unk_100A468C0);
      return sub_10011C0F0(v21, v24, &qword_100CB3688, &unk_100A468C0);
    }

    (*(v5 + 8))(v17, v3);
LABEL_8:
    sub_1000180EC(v13, &qword_100CE3738, &unk_100A96700);
    goto LABEL_9;
  }

  if (sub_100017854(&v13[v23]) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v13, &qword_100CB3688, &unk_100A468C0);
  return sub_1000180EC(v21, &qword_100CB3688, &unk_100A468C0);
}

void sub_1000E4CAC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1002E562C();
    sub_1000A403C();
    if (v5)
    {
      v6 = 0;
      sub_1002E4F88();
      sub_100030378();
      sub_1002E589C();
      v8 = v7 >> 6;
      while (v4)
      {
        sub_1002E4CD8();
LABEL_12:
        v13 = v9 | (v6 << 6);
        v14 = *(*(v3 + 48) + 8 * v13);
        sub_1001636A4(*(v3 + 56) + 48 * v13, &v19);
        if (!v20.n128_u64[0])
        {
          return;
        }

        v15 = sub_1000D5F5C(v14, v20);
        if ((v16 & 1) == 0)
        {
          sub_1001639B0(&v19);
          return;
        }

        sub_1001636A4(*(v2 + 56) + 48 * v15, v18);
        v17 = (v18[4])(&v19);
        sub_1001639B0(&v19);
        sub_1001639B0(v18);
        if ((v17 & 1) == 0)
        {
          return;
        }
      }

      v10 = v6;
      while (1)
      {
        v6 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v6 >= v8)
        {
          return;
        }

        ++v10;
        if (*(v3 + 64 + 8 * v6))
        {
          sub_1000C825C();
          v4 = v12 & v11;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1000E4DFC()
{
  v1 = type metadata accessor for MonitorAppLaunchStateViewModifier(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  sub_100006F14(v2);
  v3 = *(v1 + 20);
  sub_10022C350(&qword_100CE1060, &qword_100A4C4D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for FinishLaunchTestAction();
    sub_1000037E8();
    (*(v4 + 8))(&v2[v3]);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000E4F34()
{
  sub_100006F14(v0 + 2);
  sub_100006F14(v0 + 7);
  sub_100006F14(v0 + 12);
  sub_100006F14(v0 + 17);
  sub_100006F14(v0 + 22);

  return swift_deallocObject();
}

uint64_t sub_1000E4FA0(uint64_t a1)
{
  v3 = sub_10022C350(&qword_100CB3688, &unk_100A468C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for WeatherMapStatusBarColorSceneModifier(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_10022C350(&qword_100CB75B8, &qword_100A4B4D0);
  sub_1000037E8();
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  sub_1000E5304(v1, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_1000E5368(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_10022C350(&qword_100CB75C0, &qword_100A4B4D8);
  sub_1000037E8();
  (*(v15 + 16))(v12, a1);
  v16 = &v12[*(v9 + 36)];
  *v16 = sub_1000ECBE0;
  v16[1] = v14;
  sub_10022C350(&qword_100CB7518, &unk_100A4B440);
  State.wrappedValue.getter();
  sub_1000813FC();
  View.statusBarPreserving(preferredColorScheme:)();
  sub_1000180EC(v5, &qword_100CB3688, &unk_100A468C0);
  return sub_1000180EC(v12, &qword_100CB75B8, &qword_100A4B4D0);
}

uint64_t sub_1000E51F0()
{
  v1 = *(type metadata accessor for WeatherMapStatusBarColorSceneModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for ColorScheme();
  if (!sub_100024D10(v0 + v2, 1, v3))
  {
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  sub_10022C350(&qword_100CB7518, &unk_100A4B440);

  return swift_deallocObject();
}

uint64_t sub_1000E5304(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapStatusBarColorSceneModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E5368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapStatusBarColorSceneModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E53CC(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v4 = type metadata accessor for Location();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocationOfInterest();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA26C0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000703C(v11, qword_100D90AA8);
  v12 = *(v8 + 16);
  v36 = a1;
  v12(v10, a1, v7);
  v13 = v7;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    HIDWORD(v33) = v15;
    v17 = v16;
    v32 = swift_slowAlloc();
    v39[0] = v32;
    *v17 = 141558275;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    v31 = v13;
    LocationOfInterest.location.getter();
    sub_10006CADC(&qword_100CA6678, 255, &type metadata accessor for Location, &protocol conformance descriptor for Location);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v2;
    v20 = v19;
    v21 = v37;
    (*(v37 + 8))(v6, v4);
    (*(v8 + 8))(v10, v31);
    v22 = sub_100078694(v18, v20, v39);

    *(v17 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v14, BYTE4(v33), "Fetch weather for location of interest %{private,mask.hash}s", v17, 0x16u);
    sub_100006F14(v32);
  }

  else
  {

    (*(v8 + 8))(v10, v13);
    v21 = v37;
  }

  LocationOfInterest.location.getter();
  sub_100090A8C(v6, 0, v23, v24, v25, v26, v27, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39[0], v39[1], v39[2]);
  return (*(v21 + 8))(v6, v4);
}

uint64_t sub_1000E575C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = static Alignment.center.getter();
  v8 = v7;
  v9 = (a2 + *(sub_10022C350(&qword_100CB3B58, &qword_100A46920) + 36));
  sub_1000E5848(v3, v9);
  v10 = (v9 + *(sub_10022C350(&qword_100CB3B60, &qword_100A46928) + 36));
  *v10 = v6;
  v10[1] = v8;
  v11 = sub_10022C350(&qword_100CB3B68, &qword_100A46930);
  v12 = *(*(v11 - 8) + 16);

  return v12(a2, a1, v11);
}

uint64_t sub_1000E5848@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for SafariSheetModifier(0) + 20);
  v5 = type metadata accessor for SafariSheetModifier.SafariPresenter(0);
  sub_1000E594C(a1 + v4, a2 + *(v5 + 20));
  sub_10022C350(&unk_100CB3AA0, &unk_100A55B90);
  Binding.projectedValue.getter();
  *a2 = swift_getKeyPath();
  sub_10022C350(&qword_100CB3B70, qword_100A8C1C0);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + *(v5 + 24);
  *v6 = v8;
  *(v6 + 1) = v9;
  v6[16] = v10;
  result = sub_10022C350(&qword_100CB3B78, &unk_100A46970);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1000E594C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E59E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 272);

  return sub_10001B350(a1, a2, a3, v5);
}

uint64_t sub_1000E5A60()
{

  return type metadata accessor for MainState._Storage(0);
}

uint64_t sub_1000E5A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return firstly<A, B>(on:disposeOn:closure:)();
}

uint64_t sub_1000E5AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 16))
  {
    sub_1000E5EA4();
    if ((v6 & 1) == 0)
    {
      if (qword_100CA26C0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000703C(v14, qword_100D90AA8);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Locations of interest updated", v17, 2u);
      }

      a3 = a4;
      goto LABEL_19;
    }

    if (qword_100CA26C0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000703C(v7, qword_100D90AA8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Locations of interest are same as before", v10, 2u);
    }
  }

  else
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

    if (qword_100CA26C0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000703C(v11, qword_100D90AA8);
    v8 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v8, v12, "Locations of interest newly added", v13, 2u);
    }
  }

LABEL_19:

  return a3;
}

id sub_1000E5D78()
{
  v1 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for SafariSheetModifier.SafariPresenter(0);
  sub_1000E594C(v0 + *(v7 + 20), v6);
  v8 = v0 + *(v7 + 24);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);

  sub_1000E6490();
  v12 = objc_allocWithZone(type metadata accessor for SafariSheetModifier.SafariPresenter.Coordinator(0));
  return sub_1000E64C8(v6, v9, v10, v11, v3);
}

void sub_1000E5EA4()
{
  sub_10000C778();
  v3 = v2;
  sub_100017580();
  v4 = type metadata accessor for LocationCoordinate();
  sub_1000037C4();
  __chkstk_darwin(v5);
  sub_1000281F0();
  __chkstk_darwin(v6);
  sub_10000E70C();
  sub_1000038CC();
  type metadata accessor for LocationOfInterestType();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v8);
  sub_10000E70C();
  v9 = sub_10022C350(&qword_100CAAA18, &qword_100A353A8);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_100031BFC();
  __chkstk_darwin(v11);
  sub_10000E70C();
  v55 = v12;
  if (v0 != v3 && (sub_1002E5670(), v14))
  {
    v54 = v13;
    v15 = 0;
    sub_1002E539C();
    sub_100011430();
    sub_1002E4DA4();
    while (v1)
    {
      sub_100165168();
LABEL_12:
      v19 = sub_1002E52DC();
      v20(v19);
      v21 = sub_1002E540C();
      v22(v21);
      v23 = sub_10022C350(&qword_100CAAA20, &qword_100A353B0);
      v24 = *(v23 + 48);
      v25 = sub_10002FDB4();
      v26(v25);
      (*(v0 + 32))(v54 + v24, v1, v4);
      sub_10000E7B0();
      sub_10001B350(v27, v28, v29, v23);
      v1 = v56;
LABEL_13:
      sub_100051BBC();
      v30 = sub_10000C8E8();
      v32 = sub_10022C350(v30, v31);
      sub_1000BAEAC(v32);
      if (v14)
      {
        goto LABEL_20;
      }

      v33 = sub_100073CB4();
      v34(v33);
      v35 = sub_1002E5570();
      v36(v35);
      sub_1000E41BC();
      v0 = v37;
      v39 = v38;
      v40 = sub_100020E44();
      v41(v40);
      if ((v39 & 1) == 0)
      {
        sub_10003E21C();
        v50 = sub_100014268();
        v51(v50);
        goto LABEL_20;
      }

      v42 = sub_1002E5368();
      v43(v42);
      sub_1000E1628(&qword_100CAAA28, 255, &type metadata accessor for LocationCoordinate, &protocol conformance descriptor for LocationCoordinate);
      sub_1000370B0();
      dispatch thunk of static Equatable.== infix(_:_:)();
      v44 = sub_100033FE0();
      v39(v44);
      v45 = sub_100014268();
      v39(v45);
      v4 = &qword_100A353B0;
      if ((&qword_100A353B0 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v0 = v55;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v52)
      {
        sub_10022C350(&qword_100CAAA20, &qword_100A353B0);
        sub_100003934();
        sub_10001B350(v46, v47, v48, v49);
        v1 = 0;
        goto LABEL_13;
      }

      ++v15;
      if (*(v53 + 8 * v16))
      {
        sub_10003B93C();
        v56 = v17;
        v15 = v18;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    sub_10000536C();
  }
}

id sub_1000E62BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000E5D78();
  *a1 = result;
  return result;
}

void sub_1000E62E4()
{
  sub_10000C778();
  sub_1000A40D0();
  v5 = v4;
  type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  __chkstk_darwin(v6);
  sub_1000037D8();
  sub_100019530();
  sub_10022C350(v3, v2);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v7);
  sub_10001320C();
  sub_100192484();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v0(0);
    sub_1000037E8();
    (*(v8 + 32))(v5, v1);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    sub_1000869B4(v9, &_mh_execute_header, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    EnvironmentValues.init()();
    sub_10000C918();
    swift_getAtKeyPath();

    v11 = sub_100021CEC();
    v12(v11);
  }

  sub_10000536C();
}

id sub_1000E64C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_initialURL;
  v14 = type metadata accessor for URL();
  sub_10001B350(&v6[v13], 1, 1, v14);
  *&v6[OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_safariViewController] = 0;
  swift_beginAccess();
  sub_1000E6688(a1, &v6[v13]);
  swift_endAccess();
  v15 = &v6[OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_wantsPresentation];
  *v15 = a2;
  *(v15 + 1) = a3;
  v15[16] = a4;
  v16 = OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_colorScheme;
  v17 = type metadata accessor for ColorScheme();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v6[v16], a5, v17);
  v21.receiver = v6;
  v21.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0);
  (*(v18 + 8))(a5, v17);
  sub_1000E6774(a1);
  return v19;
}

uint64_t sub_1000E6634(uint64_t a1)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1000E6688(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E66F8()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1000E672C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t sub_1000E6774(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E680C(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return static EdgeInsets.== infix(_:_:)();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E6848()
{
  sub_100003B08();
  type metadata accessor for MainActor();
  *(v0 + 256) = static MainActor.shared.getter();
  sub_100037034();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100186318, v2, v1);
}

uint64_t sub_1000E68D4()
{

  sub_100006F14((v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1000E691C()
{
  sub_10022C350(&qword_100CB3C48, &qword_100A46A48);
  UIViewControllerRepresentableContext.coordinator.getter();
  return v1;
}

void sub_1000E69A8()
{
  v1 = v0;
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CB3C48, &qword_100A46A48);
  UIViewControllerRepresentableContext.coordinator.getter();
  v6 = v15[1];
  v7 = type metadata accessor for SafariSheetModifier.SafariPresenter(0);
  v8 = *(v7 + 20);
  v9 = OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_initialURL;
  swift_beginAccess();
  sub_1000E6688(v1 + v8, &v6[v9]);
  swift_endAccess();
  v10 = (v1 + *(v7 + 24));
  v11 = *v10;
  v12 = v10[1];
  LOBYTE(v10) = *(v10 + 16);
  v13 = &v6[OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_wantsPresentation];
  *v13 = v11;
  *(v13 + 1) = v12;
  v13[16] = v10;

  sub_1000E6490();
  v14 = OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_colorScheme;
  swift_beginAccess();
  (*(v3 + 40))(&v6[v14], v5, v2);
  swift_endAccess();
  sub_1000E6B64();
}

void sub_1000E6B64()
{
  v1 = v0;
  v2 = sub_10022C350(&qword_100CB3688, &unk_100A468C0);
  __chkstk_darwin(v2 - 8);
  v4 = &aBlock - v3;
  v5 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  __chkstk_darwin(v5 - 8);
  v7 = &aBlock - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &aBlock - v13;
  v15 = OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_safariViewController;
  v16 = *&v1[OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_safariViewController];
  v17 = OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_initialURL;
  swift_beginAccess();
  sub_1000E594C(&v1[v17], v7);
  if (sub_100024D10(v7, 1, v8) == 1)
  {
    sub_1000E6774(v7);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v18 = *&v1[OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_wantsPresentation + 8];
    v19 = v1[OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_wantsPresentation + 16];
    aBlock = *&v1[OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_wantsPresentation];
    v39 = v18;
    LOBYTE(v40) = v19;
    sub_10022C350(&unk_100CB3AA0, &unk_100A55B90);
    Binding.wrappedValue.getter();
    if (v44 == 1 && !v16)
    {
      v31 = [v1 viewIfLoaded];
      v32 = [v31 window];

      if (!v32)
      {
        (*(v9 + 8))(v14, v8);
        return;
      }

      sub_1003BF2FC();
      (*(v9 + 16))(v11, v14, v8);
      v33 = sub_1003BEFDC(v11);
      [v33 setDelegate:v1];
      v34 = v33;
      [v34 setModalPresentationStyle:2];
      v35 = [v34 presentationController];

      if (v35)
      {
        [v35 setDelegate:v1];
      }

      v36 = *&v1[v15];
      *&v1[v15] = v34;
      v37 = v34;

      [v1 presentViewController:v37 animated:1 completion:0];
      (*(v9 + 8))(v14, v8);
      goto LABEL_11;
    }

    (*(v9 + 8))(v14, v8);
  }

  v20 = *&v1[v15];
  if (!v20)
  {
    return;
  }

  v21 = *&v1[OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_wantsPresentation + 8];
  v22 = v1[OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_wantsPresentation + 16];
  aBlock = *&v1[OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_wantsPresentation];
  v39 = v21;
  LOBYTE(v40) = v22;
  v23 = v20;
  sub_10022C350(&unk_100CB3AA0, &unk_100A55B90);
  Binding.wrappedValue.getter();
  if ((v44 & 1) != 0 || !v16)
  {
  }

  else
  {
    [v23 setDelegate:0];
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = sub_1003BF2F4;
    v43 = v24;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_1000742F0;
    v41 = &unk_100C53888;
    v25 = _Block_copy(&aBlock);

    [v23 dismissViewControllerAnimated:1 completion:v25];

    _Block_release(v25);
    v26 = *&v1[v15];
    *&v1[v15] = 0;
  }

LABEL_11:
  v27 = *&v1[v15];
  if (v27)
  {
    v28 = OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_colorScheme;
    swift_beginAccess();
    v29 = type metadata accessor for ColorScheme();
    (*(*(v29 - 8) + 16))(v4, &v1[v28], v29);
    sub_10001B350(v4, 0, 1, v29);
    v30 = v27;
    [v30 setOverrideUserInterfaceStyle:UIUserInterfaceStyle.init(_:)()];
  }
}

uint64_t sub_1000E70CC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000E7148()
{
  v1 = type metadata accessor for MainViewScenePhaseObservationViewModifier(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = type metadata accessor for ScenePhase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E74DC();
  sub_100085E60(v0, &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MainViewScenePhaseObservationViewModifier);
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  sub_100085EBC(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for MainViewScenePhaseObservationViewModifier);
  sub_10022C350(&qword_100CE11C0, &qword_100A91B00);
  sub_10006768C(&qword_100CE11C8, &qword_100CE11C0, &qword_100A91B00);
  sub_100061520(&qword_100CE11D0, &type metadata accessor for ScenePhase);
  View.onChange<A>(of:initial:_:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000E73C4()
{
  v1 = (type metadata accessor for MainViewScenePhaseObservationViewModifier(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  sub_100006F14(v2);
  v3 = v1[7];
  sub_10022C350(&unk_100CE1000, &qword_100A447D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ScenePhase();
    sub_1000037E8();
    (*(v4 + 8))(&v2[v3]);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1000E7558()
{
  result = qword_100CBA9A8;
  if (!qword_100CBA9A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBA9B0, &qword_100A50368);
    v4[0] = sub_100006F64(&unk_100CE15D0, &qword_100CBA9B8, &qword_100A50370, byte_100A5F580);
    v4[1] = sub_1000E7610();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBA9A8);
  }

  return result;
}

unint64_t sub_1000E7610()
{
  result = qword_100CBA9C0;
  if (!qword_100CBA9C0)
  {
    result = swift_getWitnessTable(asc_100A45F00, &type metadata for MainViewFullscreenMapZoomTransitionModifier, v0, v1);
    atomic_store(result, &qword_100CBA9C0);
  }

  return result;
}

unint64_t sub_1000E7664()
{
  result = qword_100CBA9D0;
  if (!qword_100CBA9D0)
  {
    result = swift_getWitnessTable(byte_100A97110, &type metadata for L2sOnLocationViewerSheetViewModifier, v0, v1);
    atomic_store(result, &qword_100CBA9D0);
  }

  return result;
}

uint64_t sub_1000E76B8()
{
  sub_1000E7714();

  return swift_deallocClassInstance();
}

uint64_t sub_1000E7784(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void *sub_1000E77EC@<X0>(void *a1@<X8>)
{
  sub_1000E7A8C(v1, __dst);
  v3 = swift_allocObject();
  v4 = *&__dst[16];
  v3[1] = *__dst;
  v3[2] = v4;
  v5 = *&__dst[48];
  v3[3] = *&__dst[32];
  v3[4] = v5;
  __src[10] = sub_1000ED1D0;
  __src[11] = 0;
  LOBYTE(__src[12]) = 0;
  __src[0] = sub_10022C350(&qword_100CBA978, &unk_100A502D0);
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000E7AC4(&xmmword_100D8FB90, __dst);
  if (*&__dst[24])
  {
    sub_100013188(__dst, &__src[3]);
    __src[1] = sub_1000EF24C;
    __src[2] = v3;
    v7 = Dictionary.init(dictionaryLiteral:)();
    __src[8] = _swiftEmptyArrayStorage;
    __src[9] = v7;
    memcpy(__dst, __src, 0x61uLL);
    v8 = *v1;
    sub_100035B30((v1 + 1), &__src[14]);
    v9 = v1[6];
    __src[13] = v8;
    __src[19] = v9;
    memcpy(__src, __dst, 0x61uLL);
    v10 = v1[7];
    swift_retain_n();
    swift_retain_n();
    sub_10044A4B4(v10, &__dst[160]);
    memcpy(__dst, __src, 0xA0uLL);
    sub_100035B30((v1 + 1), (a1 + 27));
    sub_10022C350(&unk_100CE0F40, &unk_100A502E0);
    sub_100006F64(&qword_100CA4CD0, &unk_100CE0F40, &unk_100A502E0, asc_100AA1480);
    a1[25] = ObservedObject.init(wrappedValue:)();
    a1[26] = v11;
    a1[32] = v9;
    return memcpy(a1, __dst, 0xC8uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E7A40()
{

  sub_100006F14((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1000E7AC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&unk_100CAF270, &qword_100A31F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000E7B34()
{
  sub_10000C778();
  v1 = sub_1000753E4();
  active = type metadata accessor for ActiveLocationInput(v1);
  v3 = sub_100003810(active);
  __chkstk_darwin(v3);
  sub_1000106FC();
  sub_1000373B8();
  sub_100006C90();
  __chkstk_darwin(v4);
  sub_100008064();
  __chkstk_darwin(v5);
  sub_10001D3DC();
  sub_10004EE48();
  sub_1000171B0();
  v6 = sub_100030700();
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = sub_10022C350(&qword_100CA4B58, &unk_100A9DFE0);
      sub_100024C98(*(v7 + 48));
      sub_100041C64();
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_10000938C();
    v8();
    v9 = sub_100028ED4();
    v0(v9);

    sub_10022C350(&qword_100CA4B58, &unk_100A9DFE0);
    sub_10002CC38();
    sub_10000EF70();
    sub_100018074();
    v10 = sub_100049FC4();
    sub_1000217D8(v10, v11, &qword_100CA4B38, &qword_100A6D8F0);
    swift_endAccess();
  }

  sub_10000536C();
}

uint64_t sub_1000E7CF4(void (*a1)(uint64_t *, uint64_t), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  v5 = sub_10022C350(&qword_100CA4B50, &unk_100A2EE10);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  (a3)(v16, v6);
  a1(v16, 1);

  active = type metadata accessor for ActiveLocationInput(0);
  if (sub_100024D10(v8, 1, active) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v8, &qword_100CA4B50, &unk_100A2EE10);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v11._countAndFlagsBits = 0xD00000000000004BLL;
  v11._object = 0x8000000100ABBDF0;
  String.append(_:)(v11);
  v12._object = 0x8000000100ABC0A0;
  v12._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._object = 0x8000000100ABC0C0;
  v14._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E7F3C(uint64_t a1, void (*a2)(uint64_t))
{
  a2(a1);
  type metadata accessor for ActiveLocationInput(0);
  v2 = sub_10001C768();

  return sub_10001B350(v2, v3, v4, v5);
}

void sub_1000E7F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_1000037D8();
  v29 = (v28 - v27);
  v30 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v31);
  sub_1000037D8();
  v34 = v33 - v32;
  v35 = sub_10022C350(&qword_100CA65B8, &unk_100A313D0);
  sub_100003810(v35);
  sub_100003828();
  __chkstk_darwin(v36);
  v38 = &a9 - v37;
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v39);
  sub_1000037D8();
  v42 = v41 - v40;
  sub_1000E8294(v23 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v41 - v40, type metadata accessor for ModalViewState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1000E8348(v42, type metadata accessor for ModalViewState);
  sub_1000E8294(v23 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v34, type metadata accessor for ViewState);
  sub_1000E8294(v34 + v30[5], v29, type metadata accessor for ViewState.SecondaryViewState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v45 = *v29;
    if (*(v34 + v30[9] + 8) == 1)
    {
      v46 = [objc_opt_self() currentDevice];
      [v46 userInterfaceIdiom];

      v47 = *(v34 + v30[7]);
      sub_10001BE68();
      if ((v47 & 1) == 0)
      {

        goto LABEL_3;
      }
    }

    else
    {
      sub_10001BE68();
    }

    sub_100005858();
    sub_1000E8294(v45 + v48, v38, v49);

    v44 = 0;
    goto LABEL_9;
  }

  sub_10001BE68();
  sub_1000E8348(v29, type metadata accessor for ViewState.SecondaryViewState);
LABEL_3:
  v44 = 1;
LABEL_9:
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  sub_10001B350(v38, v44, 1, active);
  v51 = v23 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v52 = *(v51 + *(type metadata accessor for LocationsState(0) + 36));
  *v25 = EnumCaseMultiPayload == 0;
  v53 = type metadata accessor for ActiveLocationInput(0);
  sub_1000E83F4(v38, &v25[*(v53 + 20)]);
  *&v25[*(v53 + 24)] = v52;

  sub_10000536C();
}

uint64_t sub_1000E8294(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000E82F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_100003A9C();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_1000E8348(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000E83A0()
{
  v1 = sub_100017580();
  v2(v1);
  sub_1000037E8();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1000E83F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA65B8, &unk_100A313D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E8478(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10022C350(&qword_100CA65B8, &unk_100A313D0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_10001B350(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000E8544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CA65B8, &unk_100A313D0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_100024D10(v8, a2, v7);
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

uint64_t sub_1000E8600(uint64_t a1, void (*a2)(uint64_t, uint64_t, double))
{
  v4 = sub_10022C350(&qword_100CA4B40, &qword_100A2EE00);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v15 - v6;
  a2(a1, 1, v5);
  active = type metadata accessor for ActiveLocationModel(0);
  if (sub_100024D10(v7, 1, active) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v7, &qword_100CA4B40, &qword_100A2EE00);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v10._countAndFlagsBits = 0xD000000000000050;
  v10._object = 0x8000000100ABBD90;
  String.append(_:)(v10);
  v11._object = 0x8000000100ABC0A0;
  v11._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 8236;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  v13._object = 0x8000000100ABC0C0;
  v13._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 46;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1000E8804()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = sub_10022C350(&qword_100CA65B8, &unk_100A313D0);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  sub_100003CB4();
  v12 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v29[-v14];
  v16 = type metadata accessor for ActiveLocationInput(0);
  sub_100035AD0(v2 + *(v16 + 20), v0, &qword_100CA65B8, &unk_100A313D0);
  sub_1000038B4(v0, 1, active);
  if (v22)
  {
    sub_1000180EC(v0, &qword_100CA65B8, &unk_100A313D0);
    v17 = type metadata accessor for Location.Identifier();
    v18 = v15;
    v19 = 1;
  }

  else
  {
    sub_100005858();
    sub_1000E8294(v0, v9, v20);
    v21 = type metadata accessor for Location.Identifier();
    sub_1000038B4(v9, 1, v21);
    if (v22)
    {
      static CurrentLocation.placeholderIdentifier.getter();
    }

    else
    {
      (*(*(v21 - 8) + 32))(v15, v9, v21);
    }

    sub_10000822C();
    v18 = v15;
    v19 = 0;
    v17 = v21;
  }

  sub_10001B350(v18, v19, 1, v17);
  v23 = sub_100035AD0(v15, v4, &qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v23);
  *&v29[-16] = v15;
  v25 = sub_1000E8AF0(sub_1000E8F8C, &v29[-32], v24);
  v27 = v26;
  v28 = v4 + *(type metadata accessor for ActiveLocationModel(0) + 20);
  *v28 = v25;
  *(v28 + 8) = v27 & 1;
  sub_1000180EC(v15, &qword_100CADBA0, &qword_100A3D250);
  sub_10000536C();
}

uint64_t sub_1000E8AA0(uint64_t a1, void (*a2)(uint64_t))
{
  a2(a1);
  type metadata accessor for ActiveLocationModel(0);
  v2 = sub_10001C768();

  return sub_10001B350(v2, v3, v4, v5);
}

uint64_t sub_1000E8B1C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  while (1)
  {
    if (v9 == v8)
    {
      return 0;
    }

    v10 = (a4)(0, a2);
    sub_100003AE8(v10);
    result = a1(a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v12 + 72) * v8);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v8;
  }

  return v8;
}

uint64_t sub_1000E8C08(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = type metadata accessor for Location.Identifier();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v22 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CADD58, &unk_100A3E650);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - v15;
  (*(v4 + 16))(&v22 - v15, a1, v3, v14);
  sub_10001B350(v16, 0, 1, v3);
  v17 = *(v7 + 56);
  sub_100035AD0(v16, v9, &qword_100CADBA0, &qword_100A3D250);
  sub_100035AD0(v23, &v9[v17], &qword_100CADBA0, &qword_100A3D250);
  if (sub_100024D10(v9, 1, v3) != 1)
  {
    sub_100035AD0(v9, v12, &qword_100CADBA0, &qword_100A3D250);
    if (sub_100024D10(&v9[v17], 1, v3) != 1)
    {
      v19 = v22;
      (*(v4 + 32))(v22, &v9[v17], v3);
      sub_1000E8FAC();
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v4 + 8);
      v20(v19, v3);
      sub_1000180EC(v16, &qword_100CADBA0, &qword_100A3D250);
      v20(v12, v3);
      sub_1000180EC(v9, &qword_100CADBA0, &qword_100A3D250);
      return v18 & 1;
    }

    sub_1000180EC(v16, &qword_100CADBA0, &qword_100A3D250);
    (*(v4 + 8))(v12, v3);
    goto LABEL_6;
  }

  sub_1000180EC(v16, &qword_100CADBA0, &qword_100A3D250);
  if (sub_100024D10(&v9[v17], 1, v3) != 1)
  {
LABEL_6:
    sub_1000180EC(v9, &qword_100CADD58, &unk_100A3E650);
    v18 = 0;
    return v18 & 1;
  }

  sub_1000180EC(v9, &qword_100CADBA0, &qword_100A3D250);
  v18 = 1;
  return v18 & 1;
}

unint64_t sub_1000E8FAC()
{
  result = qword_100CA3A48;
  if (!qword_100CA3A48)
  {
    v3 = type metadata accessor for Location.Identifier();
    result = swift_getWitnessTable(&protocol conformance descriptor for Location.Identifier, v3, v0, v1);
    atomic_store(result, &qword_100CA3A48);
  }

  return result;
}

uint64_t sub_1000E9018(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_1000E9084(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_1000E90D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000E9170()
{
  result = qword_100CB7A80;
  if (!qword_100CB7A80)
  {
    result = swift_getWitnessTable(byte_100AA0374, &type metadata for ListLocationViewModel.ID, v0, v1);
    atomic_store(result, &qword_100CB7A80);
  }

  return result;
}

unint64_t sub_1000E91C8()
{
  result = qword_100CE71B0;
  if (!qword_100CE71B0)
  {
    result = swift_getWitnessTable(aM_84, &type metadata for ListLocationViewModel.ID, v0, v1);
    atomic_store(result, &qword_100CE71B0);
  }

  return result;
}

__n128 sub_1000E921C(uint64_t a1, uint64_t a2)
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

void sub_1000E9230()
{
  sub_10000C778();
  v27 = v3;
  v28 = v2;
  v4 = sub_10000C76C();
  type metadata accessor for MainViewModel(v4);
  sub_100028D80();
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_100004E28();
  v6 = v0 + *(sub_10022C350(&qword_100CE4720, &qword_100A973E8) + 36);
  sub_100095588();
  sub_10001FC4C();
  sub_100097D4C(v1, v7);
  v26 = sub_1000E948C(&unk_100C754A0, &unk_100C754C8, sub_1000E9760, sub_1008D8D08);
  v9 = v8;
  v10 = sub_1000E948C(&unk_100C75450, &unk_100C75478, sub_1000E9794, sub_1008D9080);
  v12 = v11;
  v14 = v13;
  static Binding.constant(_:)();
  v15 = type metadata accessor for ModalPresentationViewModifier(0);
  v16 = (v6 + *(v15 + 20));
  *v16 = v26;
  v16[1] = v9;
  sub_100075238(v16);
  *v17 = v10;
  *(v17 + 8) = v12;
  *(v17 + 16) = v14 & 1;
  v19 = v6 + *(v18 + 28);
  *v19 = v29;
  *(v19 + 8) = v30;
  *(v19 + 16) = v31;
  v20 = (v6 + *(v18 + 32));
  type metadata accessor for ObservableResolver();
  sub_100010F80();
  sub_100081574(v21, v22);
  sub_1000201F8();
  *v20 = EnvironmentObject.init()();
  v20[1] = v23;
  v24 = v6 + *(v15 + 36);
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  sub_10022C350(&qword_100CE4728, &qword_100A973F0);
  sub_1000037E8();
  (*(v25 + 16))(v27, v28);
  sub_10000536C();
}

uint64_t sub_1000E948C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000E9574(v4, &v27);
  type metadata accessor for MainActor();
  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = &protocol witness table for MainActor;
  sub_1000170C8(v6, v7, v8, v9, v10, v11, v12, v13, v14, v27, v28, v15, v29);
  sub_1000E9574(v4, &v27);
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = &protocol witness table for MainActor;
  sub_1000170C8(v17, v18, v19, v17, v20, v21, v22, v23, v24, v27, v28, v25, v29);
  Binding.init(get:set:)();
  return v27;
}

void sub_1000E95AC()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  v5 = sub_10022C350(&qword_100CCF2F8, &unk_100A8FDD0);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  v7 = sub_10000E9F4();
  v8 = type metadata accessor for MainViewModel(v7);
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = type metadata accessor for MainViewModel.ModalModule(0);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  sub_100095730();
  sub_100095588();
  sub_10001FC4C();
  sub_100097D4C(v11, v17);
  if (sub_100024D10(v0, 1, v12) == 1)
  {
    sub_1000180EC(v0, &qword_100CCF2F8, &unk_100A8FDD0);
    v18 = 0;
  }

  else
  {
    v19 = sub_10009A650();
    v20 = v2(v19);
    sub_100097D4C(v16, type metadata accessor for MainViewModel.ModalModule);
    v18 = v20 & 1;
  }

  *v4 = v18;
  sub_10000536C();
}

void sub_1000E97E8(uint64_t a1)
{
  sub_100007370(319);
  if (v1 <= 0x3F)
  {
    sub_10006126C();
    if (v2 <= 0x3F)
    {
      sub_100009994(319);
      if (v3 <= 0x3F)
      {
        sub_10009C160(319);
        if (v4 <= 0x3F)
        {
          sub_10009BE90(319, &qword_100CB24B8, &type metadata for WeatherMapPresentationStyle, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_10009BE90(319, &unk_100CB35A0, &type metadata for NamespaceWrapper, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              sub_100061960(319);
              if (v7 <= 0x3F)
              {
                sub_10009BE90(319, &unk_100CB32E8, &type metadata for WeatherMapPresentationIntent, &type metadata accessor for State);
                if (v8 <= 0x3F)
                {
                  sub_10009BE90(319, &qword_100CA6D40, &type metadata for Bool, &type metadata accessor for State);
                  if (v9 <= 0x3F)
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
}

unint64_t sub_1000E99D4()
{
  result = qword_100CB3638;
  if (!qword_100CB3638)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB3500, &qword_100A46078);
    v4[0] = sub_100006F64(&qword_100CB3640, &qword_100CB34F8, &qword_100A46070, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_100006F64(&qword_100CB3648, &qword_100CB3650, &unk_100A46120, &protocol conformance descriptor for _BackgroundPreferenceModifier<A, B>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB3638);
  }

  return result;
}

unint64_t sub_1000E9AEC()
{
  result = qword_100CCA008;
  if (!qword_100CCA008)
  {
    v4[5] = v0;
    v4[6] = v1;
    v3 = sub_10022E824(&qword_100CCA010, qword_100A682D0);
    v4[0] = &protocol witness table for Solarium;
    v4[1] = sub_1005F6F6C(&unk_100CC9A18);
    v4[2] = sub_1000E9BB0();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> StaticIf<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CCA008);
  }

  return result;
}

unint64_t sub_1000E9BB0()
{
  result = qword_100CC9A20;
  if (!qword_100CC9A20)
  {
    result = swift_getWitnessTable(byte_100A686D4, &type metadata for LocationViewerContent, v0, v1);
    atomic_store(result, &qword_100CC9A20);
  }

  return result;
}

void sub_1000E9C24(uint64_t a1)
{
  sub_1000E9E3C(319, &qword_100CC99A0, type metadata accessor for LocationViewerBindingWrapper, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1005F06A4(319, &qword_100CE0E10, &qword_100CA6028, &qword_100A40610, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_1000E9FDC(319);
      if (v3 <= 0x3F)
      {
        sub_1000EA080(319);
        if (v4 <= 0x3F)
        {
          sub_100081B54(319, &qword_100CC99B8, &protocol descriptor for LocationViewerInteractorType, 1);
          if (v5 <= 0x3F)
          {
            sub_100081B54(319, &qword_100CACC68, &protocol descriptor for WeatherConditionBackgroundManagerType, 0);
            if (v6 <= 0x3F)
            {
              sub_100081B54(319, &unk_100CACC70, &protocol descriptor for MicaLoaderType, 1);
              if (v7 <= 0x3F)
              {
                sub_100081B54(319, &qword_100CA5088, &protocol descriptor for ContentStatusBannerViewFactoryType, 1);
                if (v8 <= 0x3F)
                {
                  sub_10000C70C(319, &qword_100CA2E40, OS_os_log_ptr);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for WireframeLevelInterestManager();
                    if (v10 <= 0x3F)
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
  }
}

void sub_1000E9E3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000E9EC0(uint64_t a1)
{
  sub_1005F06A4(319, &unk_100CC97C0, &qword_100CC9118, &qword_100A67230, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000E9FDC(uint64_t a1)
{
  if (!qword_100CC99A8)
  {
    sub_10022E824(&qword_100CA4C18, &qword_100A2EEB0);
    sub_1005F6F6C(&qword_100CA4C20);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100CC99A8);
    }
  }
}

void sub_1000EA080(uint64_t a1)
{
  if (!qword_100CC99B0)
  {
    v4[0] = &type metadata for MainState;
    v4[1] = type metadata accessor for WeatherConditionBackgroundModelFactoryInput();
    v4[2] = type metadata accessor for WeatherConditionBackgroundModel();
    v4[3] = sub_1000EA178(&qword_100CA4BE8);
    v4[4] = sub_1000EA178(&qword_100CA4BD0);
    v2 = type metadata accessor for Selector(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_100CC99B0);
    }
  }
}

unint64_t sub_1000EA178(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3(255);
    result = swift_getWitnessTable(v5, v6);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1000EA1DC(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

void sub_1000EA2A4(uint64_t a1)
{
  sub_1005F63C8(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1005F06A4(319, &qword_100CE0E10, &qword_100CA6028, &qword_100A40610, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_1000E9E3C(319, &unk_100CCA3C0, type metadata accessor for PageControlDisplayState, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000EA3E0(uint64_t a1)
{
  sub_10009C020(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10008178C(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000EA4D0(uint64_t a1)
{
  sub_10009BE44(319, &qword_100CE0E20, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000EA584()
{
  v0 = sub_100003940();
  v2 = sub_10022E824(v0, v1);
  type metadata accessor for LocationViewerBindingWrapper(255);
  sub_1000116D0();
  sub_1005F6F6C(v3);
  sub_100024284();
  v13 = sub_1000EA178(v4);
  return sub_100017540(v13, v5, v6, v7, v8, v9, v10, v11, v2);
}

uint64_t sub_1000EA650(uint64_t a1)
{
  sub_10009BE44(319, &unk_100CA41F0, &type metadata for CGFloat);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1000817EC(319, &qword_100CA3C78, type metadata accessor for DisplayMetrics, &type metadata accessor for Environment);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1000612C8(319);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_10009BE44(319, &qword_100CE0E20, &type metadata for Bool);
        if (v9 > 0x3F)
        {
          return v8;
        }

        sub_10009BE44(319, &qword_100CB24B8, &type metadata for WeatherMapPresentationStyle);
        if (v10 > 0x3F)
        {
          return v8;
        }

        sub_1000817EC(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
        if (v11 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_1000EA8C4(319);
          v2 = v12;
          if (v13 <= 0x3F)
          {
            sub_1000817EC(319, &qword_100CDE3C8, type metadata accessor for GridGeometryCache, &type metadata accessor for State);
            v2 = v14;
            if (v15 <= 0x3F)
            {
              sub_10009BE44(319, &unk_100CDE3D0, &type metadata for SceneResizeReason);
              v2 = v16;
              if (v17 <= 0x3F)
              {
                sub_10009BE44(319, &qword_100CA3C88, &type metadata for SceneMetrics);
                v2 = v18;
                if (v19 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_1000EA8C4(uint64_t a1)
{
  if (!qword_100CDE3B8)
  {
    type metadata accessor for GridGeometryValidator();
    sub_1000EA958(&qword_100CDE3C0, type metadata accessor for GridGeometryValidator, byte_100A6F4D8);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100CDE3B8);
    }
  }
}

uint64_t sub_1000EA958(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000EAA00(uint64_t *a1)
{
  v2 = a1[1];
  sub_10022E824(&qword_100CDE300, &qword_100A8D0B8);
  sub_10022E824(&qword_100CDE308, &qword_100A8D0C0);
  sub_10000381C();
  v3 = type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CB0568, &unk_100A734B0);
  sub_10000381C();
  v4 = type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CE1580, &unk_100A408E0);
  v5 = type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CDE310, &qword_100A91B20);
  sub_10000381C();
  v6 = type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CCAF30, &unk_100A69770);
  sub_10000381C();
  v8 = type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CDE318, &qword_100A8D0C8);
  sub_10000381C();
  v9 = type metadata accessor for ModifiedContent();
  v25 = sub_1000EAD38();
  sub_1000090FC();
  v33[0] = v2;
  v33[1] = sub_100006F64(v10, &qword_100CDE308, &qword_100A8D0C0, v11);
  v32[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v33);
  v32[1] = sub_100006F64(&qword_100CB0560, &qword_100CB0568, &unk_100A734B0, v1);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v4, v32);
  v13 = sub_100006F64(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, v1);
  v31[0] = WitnessTable;
  v31[1] = v13;
  v30[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v31);
  v30[1] = sub_100006F64(&unk_100CE1210, &qword_100CDE310, &qword_100A91B20, v1);
  v29[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v30);
  v29[1] = v13;
  v14 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v29);
  sub_1000068B8();
  v28[0] = v14;
  v28[1] = sub_100006F64(v15, &qword_100CCAF30, &unk_100A69770, v16);
  v17 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v28);
  sub_100010D98();
  v27[0] = v17;
  v27[1] = sub_100006F64(v18, &qword_100CDE318, &qword_100A8D0C8, v19);
  v26[2] = &type metadata for ComputedGridGeometryPreferenceKey;
  v26[3] = v9;
  v26[4] = v25;
  v26[5] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v9, v27);
  v20 = type metadata accessor for _OverlayPreferenceModifier();
  v21 = type metadata accessor for ModifiedContent();
  v22 = sub_1000EAD8C();
  v23 = sub_100014FBC();
  v26[0] = v22;
  v26[1] = swift_getWitnessTable(v23, v20);
  return swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v21, v26);
}

unint64_t sub_1000EAD38()
{
  result = qword_100CDE320;
  if (!qword_100CDE320)
  {
    result = swift_getWitnessTable(byte_100A8D404, &type metadata for ComputedGridGeometryPreferenceKey, v0, v1);
    atomic_store(result, &qword_100CDE320);
  }

  return result;
}

unint64_t sub_1000EAD8C()
{
  result = qword_100CDE338;
  if (!qword_100CDE338)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDE300, &qword_100A8D0B8);
    v4[0] = &protocol witness table for Color;
    v4[1] = sub_1000EA958(&qword_100CDE340, type metadata accessor for GridGeometryComputerModifier, aU_25);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDE338);
  }

  return result;
}

uint64_t sub_1000EAE68(uint64_t a1)
{
  result = type metadata accessor for TargetWindowSizeClass();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherMapPresentationStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7D)
  {
    v6 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000EAFD8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherMapPresentationStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7E)
  {
    if (a2 + 130 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 130) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 131;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v5 >= 0x7D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

void sub_1000EB0D8(uint64_t a1)
{
  sub_10006126C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DisplayMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_10009BE90(319, &unk_100CB33E8, &type metadata for WeatherMapPresentationIntent, &type metadata accessor for Binding);
      if (v3 <= 0x3F)
      {
        sub_1000612C8(319);
        if (v4 <= 0x3F)
        {
          sub_10009BE90(319, &qword_100CA3C88, &type metadata for SceneMetrics, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t storeEnumTagSinglePayload for LocationHeaderViewBackgroundLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for TranslationAndGradientBackgroundViewModifier.ScrollAdjustments(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1000EB268()
{
  result = qword_100CB36B0;
  if (!qword_100CB36B0)
  {
    v5[10] = v0;
    v5[11] = v1;
    v3 = sub_10022E824(&qword_100CB3680, &unk_100A461A0);
    v4 = sub_10022E824(&qword_100CB3678, &unk_100A46190);
    sub_1000EB3AC();
    v5[2] = v4;
    v5[3] = &type metadata for Bool;
    v5[4] = swift_getOpaqueTypeConformance2();
    v5[5] = &protocol witness table for Bool;
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = sub_100006F64(&qword_100CB36B8, &qword_100CB36C0, &qword_100A461D0, byte_100A55B30);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
    atomic_store(result, &qword_100CB36B0);
  }

  return result;
}

unint64_t sub_1000EB3AC()
{
  result = qword_100CA6160;
  if (!qword_100CA6160)
  {
    result = swift_getWitnessTable(aI_11, &type metadata for WeatherMapPresentationStyle, v0, v1);
    atomic_store(result, &qword_100CA6160);
  }

  return result;
}

uint64_t sub_1000EB400()
{
  v3 = sub_100022A88();
  sub_1000EB594(v3, v4);
  v5 = swift_allocObject();
  sub_10000FE30(v5, v6, v7, v8, v9, v10, v11, v12, v13, v26, v27, v28, v14);
  *(v15 + 64) = v29;
  v16 = static Alignment.center.getter();
  v18 = v17;
  sub_10022C350(&qword_100CB34F8, &qword_100A46070);
  sub_1000037E8();
  (*(v19 + 16))(v0, v2);
  v20 = (v0 + *(sub_10022C350(&qword_100CB3500, &qword_100A46078) + 36));
  *v20 = sub_1000EB7A4;
  v20[1] = v1;
  v20[2] = v16;
  v20[3] = v18;
  v21 = *(sub_10022C350(&qword_100CB3508, &qword_100A46080) + 36);
  v22 = enum case for ColorScheme.dark(_:);
  v23 = type metadata accessor for ColorScheme();
  sub_1000037E8();
  (*(v24 + 104))(v0 + v21, v22, v23);
  return sub_10001B350(v0 + v21, 0, 1, v23);
}

uint64_t sub_1000EB54C()
{

  sub_100006F14((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1000EB5E8@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v7 = *(a1 + 1);
  v6 = *(a1 + 2);
  v8 = *a2;
  sub_100035B30((a2 + 1), a3 + 32);
  v9 = a2[6];
  v10 = type metadata accessor for MainViewFullscreenMapZoomTransitionModifier.TransitionContainer(0);
  v11 = v10[8];
  *(a3 + v11) = swift_getKeyPath();
  sub_10022C350(&qword_100CB3278, &qword_100A70D50);
  swift_storeEnumTagMultiPayload();
  v12 = a3 + v10[9];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a3 + v10[10];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = (a3 + v10[11]);
  type metadata accessor for ObservableResolver();
  sub_100007A54(&qword_100CB0468, &type metadata accessor for ObservableResolver, &protocol conformance descriptor for ObservableResolver);

  *v14 = EnvironmentObject.init()();
  v14[1] = v15;
  v16 = a3 + v10[12];
  State.init(wrappedValue:)();
  *v16 = v19;
  *(v16 + 8) = v20;
  *a3 = v5;
  *(a3 + 8) = v7;
  *(a3 + 16) = v6;
  *(a3 + 24) = v8;
  *(a3 + 72) = v9;
  v17 = a3 + v10[13];
  *v17 = v5;
  *(v17 + 8) = 0;
}

uint64_t sub_1000EB7C4()
{
  sub_10000FE4C();
  result = sub_1000A48C0();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1000EB7F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for MainViewFullscreenMapZoomTransitionModifier.TransitionContainer(0);
  v33 = *(v3 - 8);
  __chkstk_darwin(v3);
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CB3678, &unk_100A46190);
  v30 = *(v8 - 8);
  v31 = v8;
  __chkstk_darwin(v8);
  v10 = v27 - v9;
  v28 = static Color.clear.getter();
  v29 = v3;
  v42 = v28;
  v11 = v2 + *(v3 + 36);
  v12 = *v11;
  if (*(v11 + 8) == 1)
  {
    v41 = *v11;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v12, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(v12) = v41;
  }

  LOBYTE(v37) = v12;
  v34 = type metadata accessor for MainViewFullscreenMapZoomTransitionModifier.TransitionContainer;
  sub_1000A3CC8();
  swift_allocObject();
  v27[1] = type metadata accessor for MainViewFullscreenMapZoomTransitionModifier.TransitionContainer;
  sub_1000EBDC8();
  v14 = sub_1000EB3AC();
  View.onChange<A>(of:initial:_:)();

  v15 = *(v29 + 52);
  v27[2] = v2;
  v16 = (v2 + v15);
  LODWORD(v33) = *v16;
  v29 = *(v16 + 1);
  LOBYTE(v37) = v33;
  v38 = v29;
  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  sub_1000A3CC8();
  swift_allocObject();
  sub_1000EBDC8();
  v37 = &type metadata for Color;
  v38 = &type metadata for WeatherMapPresentationStyle;
  v39 = &protocol witness table for Color;
  v40 = v14;
  swift_getOpaqueTypeConformance2();
  v18 = v31;
  v17 = v32;
  View.onChange<A>(of:initial:_:)();

  (*(v30 + 8))(v10, v18);
  v35[0] = v33;
  v36 = v29;
  State.projectedValue.getter();
  v19 = v37;
  v20 = v38;
  v21 = v39;
  sub_1000A3CC8();
  v22 = swift_allocObject();
  sub_1000EBDC8();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1003BA5F0;
  *(v23 + 24) = v22;
  v35[0] = 0;
  State.init(wrappedValue:)();
  LOBYTE(v22) = v37;
  v24 = v38;
  result = sub_10022C350(&qword_100CB3680, &unk_100A461A0);
  v26 = v17 + *(result + 36);
  *v26 = v19;
  *(v26 + 8) = v20;
  *(v26 + 16) = v21;
  *(v26 + 17) = 0;
  *(v26 + 24) = sub_1000EBF30;
  *(v26 + 32) = v23;
  *(v26 + 40) = v22;
  *(v26 + 48) = v24;
  return result;
}

uint64_t sub_1000EBD74(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000EBD84()
{

  return swift_deallocObject();
}

uint64_t sub_1000EBDC8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000EBE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = swift_allocObject();
  v12[2] = a7;
  v12[3] = a8;
  v12[4] = a5;
  v12[5] = a6;

  sub_10022C350(&qword_100CE1850, &qword_100A924B8);
  sub_1000EBF38();
  View.fullScreenCover<A>(isPresented:onDismiss:content:)();
}

unint64_t sub_1000EBF38()
{
  result = qword_100CE1858;
  if (!qword_100CE1858)
  {
    v4[10] = v0;
    v4[11] = v1;
    v3 = sub_10022E824(&qword_100CE1850, &qword_100A924B8);
    v4[2] = sub_10022E824(&unk_100CE1860, &unk_100A461B0);
    v4[3] = type metadata accessor for ZoomNavigationTransition();
    v4[4] = sub_1000EC0DC();
    v4[5] = &protocol witness table for ZoomNavigationTransition;
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1858);
  }

  return result;
}

unint64_t sub_1000EC020()
{
  result = qword_100CE1870;
  if (!qword_100CE1870)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB3698, &unk_100A461C0);
    v4[0] = sub_1000EC168();
    v4[1] = sub_100007A54(&qword_100CE10A0, type metadata accessor for WeatherMapStatusBarColorSceneModifier, byte_100A4B480);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1870);
  }

  return result;
}

unint64_t sub_1000EC0DC()
{
  result = qword_100CB36A0;
  if (!qword_100CB36A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&unk_100CE1860, &unk_100A461B0);
    v4[0] = sub_1000EC020();
    v4[1] = sub_1000EC224();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB36A0);
  }

  return result;
}

unint64_t sub_1000EC168()
{
  result = qword_100CE1880;
  if (!qword_100CE1880)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB3690, &qword_100A924C0);
    v4[0] = sub_100007A54(&unk_100CE1890, type metadata accessor for FullscreenMapView, byte_100A45F50);
    v4[1] = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE1880);
  }

  return result;
}

unint64_t sub_1000EC224()
{
  result = qword_100CB36A8;
  if (!qword_100CB36A8)
  {
    result = swift_getWitnessTable(byte_100A97468, &type metadata for LocationPreviewOnMapSheetViewModifier, v0, v1);
    atomic_store(result, &qword_100CB36A8);
  }

  return result;
}

uint64_t sub_1000EC278()
{
  started = type metadata accessor for StartMethod();
  sub_1000037C4();
  v2 = v1;
  v15 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v4 = (*(v3 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = type metadata accessor for LocationAccessData();
  sub_1000037C4();
  v6 = v5;
  v7 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for CellularRadioAccessTechnology();
  sub_1000037C4();
  v12 = v11;
  v13 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);

  (*(v2 + 8))(v0 + v15, started);

  (*(v6 + 8))(v0 + v7, v16);
  (*(v12 + 8))(v0 + v13, v10);

  return swift_deallocObject();
}

uint64_t sub_1000EC47C()
{
  if (*(v0 + 40))
  {
    sub_10010CD64(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  if (*(v0 + 72))
  {
    sub_10010CD64(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  }

  return swift_deallocObject();
}

uint64_t sub_1000EC504(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v55 = a6;
  v56 = a8;
  v47 = a7;
  v53 = a4;
  v54 = a5;
  v50 = a2;
  v51 = a3;
  v52 = a9;
  v14 = sub_10022C350(&qword_100CB54A0, &qword_100A48D98);
  v58 = *(v14 - 8);
  v59 = v14;
  __chkstk_darwin(v14);
  v57 = &v47 - v15;
  v16 = sub_10022C350(&qword_100CB54A8, &qword_100A48DA0);
  __chkstk_darwin(v16 - 8);
  v18 = &v47 - v17;
  v19 = sub_10022C350(&qword_100CB54B0, &qword_100A48DA8);
  __chkstk_darwin(v19 - 8);
  v21 = &v47 - v20;
  v22 = sub_10022C350(&qword_100CB54B8, &qword_100A48DB0);
  __chkstk_darwin(v22 - 8);
  v24 = &v47 - v23;
  v25 = type metadata accessor for SessionData();
  v49 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v48 = &v47 - v29;
  v60 = a1;
  v30 = AccessSessionManager.isDiagnosticSubmissionAllowed.getter();
  started = type metadata accessor for StartMethod();
  v32 = started;
  if (v30)
  {
    (*(*(started - 8) + 16))(v24, v47, started);
    sub_10001B350(v24, 0, 1, v32);
    v33 = type metadata accessor for LocationAccessData();
    (*(*(v33 - 8) + 16))(v21, a10, v33);
    sub_10001B350(v21, 0, 1, v33);
    v34 = type metadata accessor for CellularRadioAccessTechnology();
    (*(*(v34 - 8) + 16))(v18, a11, v34);
    v35 = v18;
    v36 = 0;
    v37 = v34;
  }

  else
  {
    sub_10001B350(v24, 1, 1, started);
    v38 = type metadata accessor for LocationAccessData();
    sub_10001B350(v21, 1, 1, v38);
    v37 = type metadata accessor for CellularRadioAccessTechnology();
    v35 = v18;
    v36 = 1;
  }

  sub_10001B350(v35, v36, 1, v37);

  v39 = v48;
  SessionData.init(utcOffset:languageCode:countryCode:startMethod:productType:locationAccess:cellularRadioAccessTechnology:userSegmentationTreatmentIDs:userSegmentationSegmentSetIDs:)();
  v40 = v49;
  (*(v49 + 16))(v27, v39, v25);
  sub_100068374(&qword_100CB54C0, &type metadata accessor for SessionData, &protocol conformance descriptor for SessionData);
  v41 = v57;
  SessionData.init(key:data:)();
  sub_10022C350(&qword_100CAE2B0, &unk_100A418E0);
  v42 = type metadata accessor for DataEventTrait();
  v43 = *(v42 - 8);
  v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_100A2C3F0;
  (*(v43 + 104))(v45 + v44, enum case for DataEventTrait.unique(_:), v42);
  AccessSessionManager.push<A>(_:traits:file:line:)();

  (*(v58 + 8))(v41, v59);
  return (*(v40 + 8))(v39, v25);
}

uint64_t sub_1000ECB14(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TemperatureScaleData();
  sub_100068374(&qword_100CB3EE8, &type metadata accessor for TemperatureScaleData, &protocol conformance descriptor for TemperatureScaleData);
  return AccessTracker.push<A>(data:traits:file:line:)();
}

uint64_t sub_1000ECBE0(uint64_t a1)
{
  type metadata accessor for WeatherMapStatusBarColorSceneModifier(0);

  return sub_1000ECC50(a1);
}

uint64_t sub_1000ECC50(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB3688, &unk_100A468C0);
  __chkstk_darwin(v2 - 8);
  sub_1000ECFC4(a1, &v5 - v3);
  sub_10022C350(&qword_100CB7518, &unk_100A4B440);
  return State.wrappedValue.setter();
}

uint64_t sub_1000ECCF8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TemperatureScaleData();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CB53F8, &qword_100A48D48);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - v10;
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_100068374(&qword_100CB3EE8, &type metadata accessor for TemperatureScaleData, &protocol conformance descriptor for TemperatureScaleData);
  SessionData.init(key:data:)();
  sub_10022C350(&qword_100CAE2B0, &unk_100A418E0);
  v12 = type metadata accessor for DataEventTrait();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100A2C3F0;
  (*(v13 + 104))(v15 + v14, enum case for DataEventTrait.unique(_:), v12);
  AccessSessionManager.push<A>(_:traits:file:line:)();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000ECFC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB3688, &unk_100A468C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000ED060(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CAE2B0, &unk_100A418E0);
  v2 = type metadata accessor for DataEventTrait();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A2C3F0;
  (*(v3 + 104))(v5 + v4, enum case for DataEventTrait.unique(_:), v2);
  type metadata accessor for UserData();
  sub_100068374(&qword_100CB5490, &type metadata accessor for UserData, &protocol conformance descriptor for UserData);
  AccessTracker.push<A>(data:traits:file:line:)();
}

void *sub_1000ED1E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBE48, &qword_100A6B620);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v34)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4C18, &qword_100A2EEB0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4BD8, &qword_100A2EE80);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4460, &unk_100A6B650);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v7 = v31;
  if (!v31)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4468, &unk_100A4FE60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v30)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WireframeLevelInterestManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v24 = v32;
  v25 = v6;
  v26 = a2;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC5640, &unk_100A6B660);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v28)
  {
    v9 = type metadata accessor for LocationViewerModule();
    ObjectType = swift_getObjectType();
    v11 = sub_10002D7F8(v33, v34);
    v12 = __chkstk_darwin(v11);
    v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14, v12);
    v16 = sub_10002D7F8(v27, v28);
    v17 = __chkstk_darwin(v16);
    v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v19, v17);
    v21 = type metadata accessor for LocationViewerInteractor();
    v22 = sub_1000EEEB0(v14, v5, v25, v7, &v29, v8, v19, v9, v21, &type metadata for ContentStatusBannerViewFactory, ObjectType, &off_100C60970, &off_100C78818, v24);
    sub_100006F14(v27);
    result = sub_100006F14(v33);
    v23 = v26;
    v26[3] = v9;
    v23[4] = &off_100C6B700;
    *v23 = v22;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_1000ED634@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v24;
  if (v24)
  {
    v6 = v25;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CCBE40, &qword_100A6B618);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v23)
    {
      v7 = sub_10002D7F8(v22, v23);
      v8 = __chkstk_darwin(v7);
      v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v11 + 16))(v10, v8);
      v12 = *v10;
      v21[3] = &type metadata for LocationViewerTracker;
      v21[4] = &off_100C4F2E8;
      v21[0] = v12;
      v13 = type metadata accessor for LocationViewerInteractor();
      v14 = swift_allocObject();
      v15 = sub_10002D7F8(v21, &type metadata for LocationViewerTracker);
      v16 = __chkstk_darwin(v15);
      v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v14[7] = &type metadata for LocationViewerTracker;
      v14[8] = &off_100C4F2E8;
      v14[3] = v6;
      v14[4] = v20;
      v14[2] = v5;
      sub_100006F14(v21);
      result = sub_100006F14(v22);
      a2[3] = v13;
      a2[4] = &off_100C60970;
      *a2 = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000ED8B0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UserData();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CB5488, &qword_100A48D90);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - v10;
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_100068374(&qword_100CB5490, &type metadata accessor for UserData, &protocol conformance descriptor for UserData);
  SessionData.init(key:data:)();
  sub_10022C350(&qword_100CAE2B0, &unk_100A418E0);
  v12 = type metadata accessor for DataEventTrait();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100A2C3F0;
  (*(v13 + 104))(v15 + v14, enum case for DataEventTrait.unique(_:), v12);
  AccessSessionManager.push<A>(_:traits:file:line:)();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000EDB74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    a2[3] = &type metadata for LocationViewerTracker;
    a2[4] = &off_100C4F2E8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000EDBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PrivateUserData();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000161C0((a4 + OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_privacySampler), *(a4 + OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_privacySampler + 24));
  result = dispatch thunk of PrivacySamplerType.hashSum.getter();
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = result;
  }

  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v11 <= 0x7FFFFFFF)
  {

    v16[12] = 0;
    PrivateUserData.init(privateUserID:privateUserHashMod:)();
    sub_10022C350(&qword_100CAE2B0, &unk_100A418E0);
    v12 = type metadata accessor for DataEventTrait();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100A2C3F0;
    (*(v13 + 104))(v15 + v14, enum case for DataEventTrait.unique(_:), v12);
    sub_100068374(&qword_100CB12A0, &type metadata accessor for PrivateUserData, &protocol conformance descriptor for PrivateUserData);
    AccessTracker.push<A>(data:traits:file:line:)();

    return (*(v6 + 8))(v8, v5);
  }

  __break(1u);
  return result;
}

void *sub_1000EDE98(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v19;
  if (!v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v21;
  v4 = v22;
  v6 = v20;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBE50, &qword_100A6B628);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v17, v18);
  v15 = type metadata accessor for LocationViewerInputFactory();
  v16 = &off_100C46508;
  v14[0] = v7;
  sub_100035B30(v14, v13);
  v8 = swift_allocObject();
  sub_100013188(v13, v8 + 16);

  sub_100006F14(v14);
  sub_100006F14(v17);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100104BD8;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBE60, &qword_100A6B638);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v18)
  {
    v10 = *sub_1000161C0(v17, v18);
    v15 = type metadata accessor for LocationViewerViewModelFactory(0);
    v16 = &off_100C63E50;
    v14[0] = v10;
    sub_100035B30(v14, v13);
    v11 = swift_allocObject();
    sub_100013188(v13, v11 + 16);

    sub_100006F14(v14);
    sub_100006F14(v17);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_100107F08;
    *(v12 + 24) = v11;
    sub_10022C350(&qword_100CA4C18, &qword_100A2EEB0);
    swift_allocObject();
    return sub_1000EE59C(v3, v6, v5, v4, sub_1001717D8, 0, sub_100104B58, v9, sub_1000E87D0, v12);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000EE16C()
{
  sub_100006F14((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000EE1A4()
{

  return swift_deallocObject();
}

uint64_t sub_1000EE1EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LocationViewerInputFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_100C46508;
  *a1 = result;
  return result;
}

void *sub_1000EE258@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60, &unk_100A6B640);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    v4 = type metadata accessor for LocationViewerViewModelFactory(0);
    swift_allocObject();
    result = sub_1000EE448(&v5);
    a2[3] = v4;
    a2[4] = &off_100C63E50;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for LocationViewerViewModelFactory(uint64_t a1)
{
  result = qword_100CCD7A8;
  if (!qword_100CCD7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000EE34C(uint64_t a1)
{
  sub_1000EE3F0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000EE3F0(uint64_t a1)
{
  if (!qword_100CCD7B8)
  {
    type metadata accessor for LocationViewerViewModel(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100CCD7B8);
    }
  }
}

uint64_t sub_1000EE448(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC7Weather30LocationViewerViewModelFactory_lastViewModel;
  v4 = type metadata accessor for LocationViewerViewModel(0);
  sub_10001B350(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC7Weather30LocationViewerViewModelFactory____lazy_storage___conditionBackgroundOverridden) = 2;
  sub_10003E2A0(a1, v1 + OBJC_IVAR____TtC7Weather30LocationViewerViewModelFactory_appConfigurationManager);
  return v1;
}

uint64_t sub_1000EE4D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LocationModel();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for ConditionPickerMenuViewModel(0);
    v10 = a1 + *(a4 + 24);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

void *sub_1000EE758(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v19;
  if (!v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v21;
  v4 = v22;
  v6 = v20;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBE58, &qword_100A6B630);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v17, v18);
  v15 = type metadata accessor for WeatherConditionBackgroundModelInputFactory(0);
  v16 = &off_100C74B10;
  *&v14 = v7;
  sub_100035B30(&v14, v13);
  v8 = swift_allocObject();
  sub_100013188(v13, v8 + 16);

  sub_100006F14(&v14);
  sub_100006F14(v17);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100110E20;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA738, &qword_100A4FE40);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v18)
  {
    sub_100035B30(v17, &v14);
    v10 = swift_allocObject();
    sub_100013188(&v14, v10 + 16);
    sub_100006F14(v17);
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1001140B4;
    *(v11 + 24) = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1001141C0;
    *(v12 + 24) = v11;
    sub_10022C350(&qword_100CA4BD8, &qword_100A2EE80);
    swift_allocObject();
    return sub_1000EEA3C(v3, v6, v5, v4, sub_1001717D8, 0, sub_100104B5C, v9, sub_1000E87D0, v12);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000EEC2C()
{
  if (qword_100CA2940 != -1)
  {
    swift_once();
  }
}

void *sub_1000EEC88()
{
  type metadata accessor for WireframeLevelInterestManager();
  v0 = swift_allocObject();
  result = sub_1000EECC4();
  qword_100D911B0 = v0;
  return result;
}

void *sub_1000EECC4()
{
  v1 = type metadata accessor for WireframeInterestManager();
  swift_allocObject();
  v2 = sub_1000EED8C(0xD000000000000013, 0x8000000100AE1E60);
  v0[5] = v1;
  v0[6] = &off_100C77408;
  v0[2] = v2;
  type metadata accessor for WireframeContentInterestManager();
  v3 = swift_allocObject();

  v0[7] = sub_1000EEDF4(v4, v3);
  return v0;
}

void *sub_1000EED8C(uint64_t a1, uint64_t a2)
{
  v2[4] = dispatch_group_create();
  v2[5] = &_swiftEmptyDictionarySingleton;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t sub_1000EEDF4(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for WireframeInterestManager();
  v7 = &off_100C77408;
  *&v5 = a1;
  swift_allocObject();
  *(a2 + 56) = sub_1000EED8C(0x746E65746E6F43, 0xE700000000000000);
  sub_100013188(&v5, a2 + 16);
  return a2;
}

void *sub_1000EEEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v35 = a6;
  v46 = a9;
  v47 = a12;
  v20 = sub_100042FB0(v45);
  (*(*(a9 - 8) + 32))(v20, a1, a9);
  v43 = a10;
  v44 = a13;
  v21 = sub_100042FB0(v42);
  (*(*(a10 - 8) + 32))(v21, a7, a10);
  v22 = swift_allocObject();
  v23 = sub_10002D7F8(v45, v46);
  v24 = __chkstk_darwin(v23);
  v26 = (&v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26, v24);
  sub_10002D7F8(v42, v43);
  v28 = *v26;
  v29 = type metadata accessor for LocationViewerInteractor();
  v41 = &off_100C60970;
  v40 = v29;
  v38 = &off_100C78818;
  *&v39 = v28;
  v37 = &type metadata for ContentStatusBannerViewFactory;
  if (qword_100CA26B0 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_10000703C(v30, qword_100D90A78);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Initializing LocationViewer module", v33, 2u);
  }

  sub_100013188(&v39, (v22 + 2));
  v22[7] = a2;
  v22[8] = a3;
  v22[9] = a4;
  v22[10] = a14;
  sub_100013188(a5, (v22 + 11));
  v22[16] = v35;
  sub_100013188(&v36, (v22 + 17));
  sub_100006F14(v42);
  sub_100006F14(v45);
  return v22;
}

uint64_t sub_1000EF180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 56);
  sub_100035B30(v2 + 16, a2 + 16);
  v6 = *(v2 + 64);
  v10 = *(v2 + 72);
  sub_100035B30(v2 + 88, a2 + 80);
  v7 = *(v2 + 128);
  sub_100035B30(v2 + 136, a2 + 120);
  KeyPath = swift_getKeyPath();
  *(a2 + 176) = 0;
  *(a2 + 56) = a1;
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 64) = v10;
  *(a2 + 160) = v7;
  *(a2 + 168) = KeyPath;

  swift_unknownObjectRetain();
}

uint64_t sub_1000EF2B0()
{
  type metadata accessor for Locale.Language();
  sub_1000037C4();
  v44 = v1;
  v45 = v0;
  __chkstk_darwin(v0);
  sub_1000037D8();
  v4 = v3 - v2;
  v5 = type metadata accessor for Locale();
  sub_1000037C4();
  v43 = v6;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&qword_100CA3DD8, &qword_100A2DEB0);
  __chkstk_darwin(v11 - 8);
  v13 = &v43 - v12;
  v14 = type metadata accessor for ContentSizeCategory();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  sub_10009EB78();
  EnvironmentValues.subscript.getter();
  if (v47 != 1)
  {
    goto LABEL_54;
  }

  EnvironmentValues.sizeCategory.getter();
  (*(v16 + 32))(v19, v22, v14);
  v23 = (*(v16 + 88))(v19, v14);
  if (v23 != enum case for ContentSizeCategory.extraSmall(_:) && v23 != enum case for ContentSizeCategory.small(_:) && v23 != enum case for ContentSizeCategory.medium(_:) && v23 != enum case for ContentSizeCategory.large(_:) && v23 != enum case for ContentSizeCategory.extraLarge(_:) && v23 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v23 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    if (v23 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v23 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v23 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v23 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v23 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      goto LABEL_54;
    }

    (*(v16 + 8))(v19, v14);
  }

  if (EnvironmentValues.accessibilityVoiceOverEnabled.getter())
  {
LABEL_54:
    v41 = 0;
    return v41 & 1;
  }

  static Locale.current.getter();
  Locale.language.getter();
  (*(v43 + 8))(v10, v5);
  Locale.Language.languageCode.getter();
  (*(v44 + 8))(v4, v45);
  v34 = type metadata accessor for Locale.LanguageCode();
  if (sub_100024D10(v13, 1, v34) == 1)
  {
    sub_100283C38(v13, &qword_100CA3DD8);
    v35 = 0;
    v36 = 0;
  }

  else
  {
    v35 = Locale.LanguageCode.identifier.getter();
    v36 = v37;
    (*(*(v34 - 8) + 8))(v13, v34);
  }

  sub_100283BE4();
  EnvironmentValues.subscript.getter();
  if (v46 != 1)
  {

    goto LABEL_52;
  }

  if (!v36)
  {
LABEL_52:
    v41 = 1;
    return v41 & 1;
  }

  v38 = v35 == 29281 && v36 == 0xE200000000000000;
  if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v35 == 26984 ? (v39 = v36 == 0xE200000000000000) : (v39 = 0), v39))
  {

    goto LABEL_54;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v41 = v40 ^ 1;
  return v41 & 1;
}

uint64_t sub_1000EF78C()
{
  sub_10000FE4C();
  v0 = sub_1000EF2B0();
  return sub_100005F94(v0);
}

unint64_t sub_1000EF7D4()
{
  result = qword_100CA6098;
  if (!qword_100CA6098)
  {
    result = swift_getWitnessTable(byte_100A30CCC, &unk_100C49ED8, v0, v1);
    atomic_store(result, &qword_100CA6098);
  }

  return result;
}

void *sub_1000EF828@<X0>(void *a1@<X8>)
{
  if (qword_100CA1EA0 != -1)
  {
    swift_once();
  }

  return memcpy(a1, &qword_100D8F3D0, 0x48uLL);
}

double sub_1000EF898()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56) + *(v0 + 56);
  v3 = *(v0 + 8);
  if (*(v0 + 32))
  {
    sub_1000FDB68();
    sub_10001D07C();
    sub_1000FDE84();
    sub_10001A0E0();
    if (v6)
    {
      v3 = v5;
    }

    else
    {
      v3 = v4;
    }
  }

  v7 = sub_100004D34();
  return v1 * v7 + v2 + v3 * v8;
}

double sub_1000EF934()
{
  if (qword_100CA2C38 != -1)
  {
    swift_once();
  }

  result = *&qword_100D91578;
  qword_100D8F3D0 = 0;
  *algn_100D8F3D8 = 0x4062000000000000;
  qword_100D8F3E0 = 0;
  unk_100D8F3E8 = 0;
  byte_100D8F3F0 = 0;
  qword_100D8F3F8 = 0x4030000000000000;
  word_100D8F400 = 768;
  qword_100D8F408 = qword_100D91578;
  qword_100D8F410 = 0x4069000000000000;
  return result;
}

uint64_t sub_1000EF9CC(uint64_t a1)
{
  Solarium.init()();
  sub_10022C350(&qword_100CC9A10, &qword_100A67CB0);
  sub_1005F6F6C(&unk_100CC9A18);
  sub_1000E9BB0();
  return StaticIf<>.init(_:then:else:)();
}

uint64_t sub_1000EFB18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_10042F370((a1 + 2), a2 + 16);
  v5 = a1[7];
  v6 = a1[1];
  v10 = *(a1 + 4);
  sub_10042F370((a1 + 10), a2 + 80);
  v7 = a1[20];
  sub_10042F370((a1 + 15), a2 + 120);
  KeyPath = swift_getKeyPath();
  *(a2 + 176) = 0;
  *(a2 + 56) = v5;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 64) = v10;
  *(a2 + 160) = v7;
  *(a2 + 168) = KeyPath;

  swift_unknownObjectRetain();
}

uint64_t sub_1000EFC08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000EFC5C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 72))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1000EFCBC()
{
  result = qword_100CDA2C0;
  if (!qword_100CDA2C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDA2B8, &unk_100A85320);
    v4[0] = sub_100006F64(&qword_100CDA2C8, &qword_100CDA2B0, &qword_100A85318, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_100006F64(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDA2C0);
  }

  return result;
}

uint64_t sub_1000EFDBC()
{
  v0 = sub_10022E824(&qword_100CCAA48, &qword_100A691E8);
  type metadata accessor for PageControlDisplayState(255);
  v1 = sub_10022E824(&qword_100CCAA50, &qword_100A691F0);
  v2 = sub_1000439FC(&unk_100CCAA58);
  sub_100017540(v2, v3, v4, v5, v6, v7, v8, v9, v1);
  v18 = sub_1000EA178(&unk_100CCA1B8);
  return sub_100017540(v18, v10, v11, v12, v13, v14, v15, v16, v0);
}

uint64_t sub_1000EFEEC(uint64_t a1)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1000EFF20@<X0>(uint64_t a1@<X8>)
{
  sub_1000161C0((a1 + 216), *(a1 + 240));

  return Forecast.forecast.getter();
}

void sub_1000EFF5C()
{
  v1[16] = v0[582];
  v1[17] = v0[578];
  v1[18] = v0[576];
}

void sub_1000EFF94(uint64_t a1, uint64_t a2)
{
  *(v3 - 648) = a1;
  *(v3 - 656) = a2;
}

uint64_t sub_1000F0014(uint64_t a1)
{

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_1000F0060()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_1000F0098()
{

  return swift_getEnumCaseMultiPayload();
}

void sub_1000F00FC(uint64_t a1)
{
  sub_1000E9E3C(319, &qword_100CA5080, type metadata accessor for ContentStatusBanner, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100081B54(319, &qword_100CA5088, &protocol descriptor for ContentStatusBannerViewFactoryType, 1);
    if (v2 <= 0x3F)
    {
      sub_1005F63C8(319, &qword_100CA3C80, &type metadata for EdgeInsets, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1000E9E3C(319, &qword_100CA3C78, type metadata accessor for DisplayMetrics, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_1005F06A4(319, &qword_100CE0E10, &qword_100CA6028, &qword_100A40610, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_1000E9E3C(319, &unk_100CC9FC8, type metadata accessor for ContentStatusBanner, &type metadata accessor for State);
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

void sub_1000F0324(uint64_t a1)
{
  type metadata accessor for LocationModel();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ContentStatusBannerPresentationMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_1005F06A4(319, &qword_100CE0E10, &qword_100CA6028, &qword_100A40610, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1005F63C8(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_1000E9E3C(319, &unk_100CCA508, type metadata accessor for PageControlDisplayState, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000F048C(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_1000E9E3C(319, &qword_100CA5080, type metadata accessor for ContentStatusBanner, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1000F0568(void *a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    v1 = type metadata accessor for Binding();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for WireframeLevelInterestManager();
      if (v4 <= 0x3F)
      {
        v1 = sub_10013DB50();
        if (v5 <= 0x3F)
        {
          sub_10009BFD0(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
          v1 = v6;
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1000F06E8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for AppStateTransitionModifier(uint64_t a1)
{
  result = qword_100CE2250;
  if (!qword_100CE2250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F07F0(uint64_t a1)
{
  sub_1000E9E3C(319, &unk_100CC9090, &type metadata accessor for Location.Identifier, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    sub_1000E9E3C(319, &qword_100CBC8E8, &type metadata accessor for LocationModel, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_1005F06A4(319, &qword_100CE0E10, &qword_100CA6028, &qword_100A40610, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1000E9E3C(319, &unk_100CCA508, type metadata accessor for PageControlDisplayState, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for ConditionPickerMenuView(uint64_t a1)
{
  result = qword_100CB4220;
  if (!qword_100CB4220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F09AC(uint64_t a1)
{
  if (!qword_100CB4230)
  {
    sub_10022E824(&qword_100CA2CD8, &unk_100A2C420);
    v1 = type metadata accessor for Binding();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB4230);
    }
  }
}

void sub_1000F0A10(uint64_t a1)
{
  type metadata accessor for ConditionPickerMenuViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1000F09AC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000F0B04(uint64_t a1)
{
  sub_100081B54(319, &qword_100CC99B8, &protocol descriptor for LocationViewerInteractorType, 1);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Location.Identifier();
    if (v2 <= 0x3F)
    {
      sub_1000E9E3C(319, &qword_100CA3C78, type metadata accessor for DisplayMetrics, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1005F63C8(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_1005F63C8(319, &qword_100CB24B8, &type metadata for WeatherMapPresentationStyle, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_1005F63C8(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
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

void sub_1000F0CC0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1000E9E3C(319, &qword_100CCA670, type metadata accessor for ContentStatusBannerPresentationMetrics, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_1000E9E3C(319, &qword_100CA3C78, type metadata accessor for DisplayMetrics, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_1005F63C8(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_1005F63C8(319, &qword_100CA3C80, &type metadata for EdgeInsets, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              sub_1005F63C8(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
              if (v7 <= 0x3F)
              {
                sub_1000E9E3C(319, &qword_100CA3C68, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
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

void sub_1000F0F08(uint64_t a1)
{
  sub_1000F0FF4(319, &qword_100CBC8E8, &type metadata accessor for LocationModel, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_1000F0FF4(319, &unk_100CC9090, &type metadata accessor for Location.Identifier, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000F0FF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000F1070(uint64_t a1)
{
  sub_1000612C8(319);
  if (v1 <= 0x3F)
  {
    sub_1000F1120();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1000F1120()
{
  result = qword_100CC99B8;
  if (!qword_100CC99B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CC99B8);
  }

  return result;
}

uint64_t sub_1000F1200()
{
  v0 = sub_10022E824(&qword_100CC9A40, &qword_100A67CF8);
  sub_10022E824(&qword_100CC9AF0, &qword_100A67D68);
  v1 = sub_10022E824(&qword_100CC9A38, &qword_100A67CF0);
  v2 = sub_1005F0A1C();
  sub_100017540(v2, v3, v4, v5, v6, v7, v8, v9, v1);
  v18 = sub_1005F0C74();
  return sub_100017540(v18, v10, v11, v12, v13, v14, v15, v16, v0);
}

unint64_t sub_1000F12C8()
{
  result = qword_100CC9AE0;
  if (!qword_100CC9AE0)
  {
    result = swift_getWitnessTable(byte_100A68634, &type metadata for LocationViewerViewCollisionEnvironment, v0, v1);
    atomic_store(result, &qword_100CC9AE0);
  }

  return result;
}

unint64_t sub_1000F131C()
{
  result = qword_100CC9AE8;
  if (!qword_100CC9AE8)
  {
    result = swift_getWitnessTable(a5_10, &type metadata for LocationViewerViewVFXEnvironment, v0, v1);
    atomic_store(result, &qword_100CC9AE8);
  }

  return result;
}

unint64_t sub_1000F1390()
{
  result = qword_100CCA7E0;
  if (!qword_100CCA7E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA098, &unk_100A68810);
    v4[0] = sub_1005F6F6C(&unk_100CCA7E8);
    v4[1] = sub_1005F6F6C(&qword_100CB07C0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA7E0);
  }

  return result;
}

unint64_t sub_1000F1494()
{
  result = qword_100CCA7D0;
  if (!qword_100CCA7D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA088, &qword_100A68800);
    v4[0] = sub_1005F6F6C(&unk_100CCA7D8);
    v4[1] = sub_1005F6F6C(&qword_100CACCF8);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA7D0);
  }

  return result;
}

unint64_t sub_1000F15A8()
{
  result = qword_100CCA7B8;
  if (!qword_100CCA7B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCA078, &qword_100A687F0);
    v4[0] = sub_1005F6F6C(&unk_100CCA7C0);
    v4[1] = sub_1000F1660();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCA7B8);
  }

  return result;
}

unint64_t sub_1000F1660()
{
  result = qword_100CCA7C8;
  if (!qword_100CCA7C8)
  {
    result = swift_getWitnessTable(aY_34, &type metadata for FullscreenMapPresentationSourceViewModifier, v0, v1);
    atomic_store(result, &qword_100CCA7C8);
  }

  return result;
}

unint64_t sub_1000F16D4()
{
  result = qword_100CB3658;
  if (!qword_100CB3658)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB3518, &unk_100A460E0);
    v4[0] = sub_100006F64(&qword_100CB3660, &qword_100CB3510, &qword_100A460D8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_100006F64(&qword_100CB3668, &qword_100CB3670, qword_100A46130, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB3658);
  }

  return result;
}

uint64_t sub_1000F17FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = type metadata accessor for LocationViewerToolbarModifier(255, *a1, a1[1], a4);
  v7 = sub_10001CB48();
  swift_getWitnessTable(v7, v6);
  sub_10000381C();
  v8 = type metadata accessor for _ViewModifier_Content();
  v23 = &type metadata for MapToolbarButton;
  v24 = &type metadata for Spacer;
  v25 = v5;
  v26 = &type metadata for Spacer;
  v27 = &type metadata for ListToolbarButton;
  sub_100019D9C(v8, v9, &v23);
  sub_10000E9D0();
  v10 = type metadata accessor for TupleView();
  v11 = sub_1000065AC();
  swift_getWitnessTable(v11, v10);
  sub_10000381C();
  v12 = type metadata accessor for ToolbarItemGroup();
  v13 = sub_100008D0C(v12);
  v23 = v4;
  v24 = v13;
  swift_getOpaqueTypeMetadata2();
  sub_10000E9D0();
  v14 = type metadata accessor for Optional();
  v23 = v4;
  v24 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = sub_10001091C();
  WitnessTable = swift_getWitnessTable(v15, v14, &OpaqueTypeConformance2);
  v23 = v14;
  v24 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = sub_10001CB30();
  v19 = swift_getWitnessTable(v18, v8, OpaqueTypeConformance2);
  v23 = v14;
  v24 = WitnessTable;
  v20 = swift_getOpaqueTypeConformance2();
  v23 = v8;
  v24 = OpaqueTypeMetadata2;
  v25 = v19;
  v26 = v20;
  return swift_getOpaqueTypeConformance2();
}

uint64_t type metadata accessor for ContentStatusBannerView(uint64_t a1)
{
  result = qword_100CD5808;
  if (!qword_100CD5808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F19D0(uint64_t a1)
{
  sub_1000612C8(319);
  if (v1 <= 0x3F)
  {
    sub_1000F1A64();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000F1A64()
{
  if (!qword_100CD5818)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100CD5818);
    }
  }
}

void sub_1000F1AE4(uint64_t a1)
{
  sub_1005F63C8(319, &qword_100CA3C80, &type metadata for EdgeInsets, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1000E9E3C(319, &qword_100CADCC8, &type metadata accessor for ScenePhase, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_1000E9E3C(319, &unk_100CCA780, type metadata accessor for ContentStatusBannerPresentationMetrics, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1000F1C44()
{
  result = qword_100CCABD8;
  if (!qword_100CCABD8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCABB0, &qword_100A69370);
    v4[0] = sub_1005F6F6C(&unk_100CCABE0);
    v4[1] = sub_1005F6F6C(&unk_100CCABE8);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCABD8);
  }

  return result;
}

uint64_t sub_1000F1D64()
{
  sub_10022E824(&qword_100CD5858, &qword_100A7E090);
  sub_10022E824(&qword_100CA6028, &qword_100A40610);
  sub_1000F1DF4();
  sub_1000F1EAC();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000F1DF4()
{
  result = qword_100CD5868;
  if (!qword_100CD5868)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CD5858, &qword_100A7E090);
    v4[0] = sub_100006F64(&qword_100CD5870, &qword_100CD5850, &qword_100A7E088, &protocol conformance descriptor for VStack<A>);
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CD5868);
  }

  return result;
}

unint64_t sub_1000F1EAC()
{
  result = qword_100CA6080;
  if (!qword_100CA6080)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CA6028, &qword_100A40610);
    v4[0] = sub_1000F1F60(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CA6080);
  }

  return result;
}

uint64_t sub_1000F1F60(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F1FA8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F2010@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  v7 = sub_10000703C(v6, a2);
  return sub_1005F1770(v7, a4);
}

uint64_t sub_1000F20A0()
{
  v0 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  sub_100007074(v0, qword_100CC9748);
  v1 = sub_10000703C(v0, qword_100CC9748);
  if (qword_100CA2310 != -1)
  {
    swift_once();
  }

  v2 = sub_10000703C(v0, qword_100CC9730);
  return sub_1005F1770(v2, v1);
}

uint64_t sub_1000F2144(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  sub_100007074(v3, a2);
  v4 = sub_10000703C(v3, a2);
  v5 = *(v3 + 20);
  v6 = type metadata accessor for ContentStatusBanner(0);
  result = sub_10001B350(v4 + v5, 1, 1, v6);
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t sub_1000F21CC()
{
  sub_100003A00();
  sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  sub_1000178C4();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t sub_1000F2228(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v178 = a3;
  v175 = a2;
  v190 = a1;
  v176 = sub_10022C350(&qword_100CE29D0, &qword_100A95878);
  __chkstk_darwin(v176);
  v177 = (&v92 - v3);
  v4 = type metadata accessor for FetchedForecast(0);
  __chkstk_darwin(v4);
  v174 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CE29D8, &qword_100A95880);
  __chkstk_darwin(v6);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v92 - v10;
  __chkstk_darwin(v12);
  v172 = &v92 - v13;
  __chkstk_darwin(v14);
  v173 = &v92 - v15;
  __chkstk_darwin(v16);
  v184 = &v92 - v17;
  __chkstk_darwin(v18);
  v185 = &v92 - v19;
  __chkstk_darwin(v20);
  v186 = &v92 - v21;
  __chkstk_darwin(v22);
  v187 = &v92 - v23;
  __chkstk_darwin(v24);
  v188 = &v92 - v25;
  __chkstk_darwin(v26);
  v28 = &v92 - v27;
  __chkstk_darwin(v29);
  v31 = &v92 - v30;
  v32 = sub_10022C350(&qword_100CE29E0, &qword_100A95888);
  __chkstk_darwin(v32);
  v34 = (&v92 - v33);
  sub_1000302D8(v190, &v92 - v33, &qword_100CE29E0, &qword_100A95888);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = v177;
    *v177 = *v34;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v175(v35);

    v36 = &qword_100CE29D0;
    v37 = &qword_100A95878;
    v38 = v35;
  }

  else
  {
    sub_10011C0F0(v34, v31, &qword_100CE29D8, &qword_100A95880);
    v168 = v28;
    sub_1000302D8(v31, v28, &qword_100CE29D8, &qword_100A95880);
    v166 = v6[12];
    v165 = v6[16];
    v164 = v6[20];
    v163 = v6[24];
    v162 = v6[28];

    v161 = v6[36];
    v160 = v6[40];
    v159 = v6[44];
    sub_1000302D8(v31, v188, &qword_100CE29D8, &qword_100A95880);
    v189 = v6[12];
    v158 = v6[16];
    v157 = v6[20];
    v156 = v6[24];
    v155 = v6[28];

    v154 = v6[36];
    v153 = v6[40];
    v152 = v6[44];
    sub_1000302D8(v31, v187, &qword_100CE29D8, &qword_100A95880);
    v151 = v6[12];
    v190 = v6[16];
    v149 = v6[20];
    v148 = v6[24];
    v147 = v6[28];

    v146 = v6[36];
    v145 = v6[40];
    v144 = v6[44];
    sub_1000302D8(v31, v186, &qword_100CE29D8, &qword_100A95880);
    v143 = v6[12];
    v142 = v6[16];
    v181 = v6[20];
    v141 = v6[24];
    v140 = v6[28];

    v139 = v6[36];
    v138 = v6[40];
    v137 = v6[44];
    sub_1000302D8(v31, v185, &qword_100CE29D8, &qword_100A95880);
    v136 = v6[12];
    v135 = v6[16];
    v134 = v6[20];
    v179 = v6[24];
    v133 = v6[28];

    v132 = v6[36];
    v131 = v6[40];
    v130 = v6[44];
    sub_1000302D8(v31, v184, &qword_100CE29D8, &qword_100A95880);
    v129 = v6[12];
    v128 = v6[16];
    v127 = v6[20];
    v126 = v6[24];
    v171 = v6[28];

    v125 = v6[36];
    v124 = v6[40];
    v123 = v6[44];
    v39 = v173;
    sub_1000302D8(v31, v173, &qword_100CE29D8, &qword_100A95880);
    v122 = v6[12];
    v121 = v6[16];
    v120 = v6[20];
    v119 = v6[24];
    v118 = v6[28];
    v167 = *(v39 + v6[32]);
    v117 = v6[36];
    v116 = v6[40];
    v115 = v6[44];
    v40 = v172;
    sub_1000302D8(v31, v172, &qword_100CE29D8, &qword_100A95880);
    v114 = v6[12];
    v113 = v6[16];
    v112 = v6[20];
    v111 = v6[24];
    v110 = v6[28];

    v97 = v6[36];
    v109 = v6[40];
    v108 = v6[44];
    v150 = v31;
    v41 = v11;
    sub_1000302D8(v31, v11, &qword_100CE29D8, &qword_100A95880);
    v107 = v6[12];
    v106 = v6[16];
    v105 = v6[20];
    v104 = v6[24];
    v103 = v6[28];

    v102 = v6[36];
    v95 = v6[40];
    v101 = v6[44];
    sub_1000302D8(v31, v8, &qword_100CE29D8, &qword_100A95880);
    v100 = v6[12];
    v99 = v6[16];
    v170 = v6[20];
    v169 = v6[24];
    v98 = v6[28];

    v96 = v6[36];
    v94 = v6[40];
    v93 = v6[44];
    v42 = type metadata accessor for CurrentWeather();
    v43 = *(v42 - 8);
    v182 = v42;
    v183 = v43;
    v44 = v174;
    (*(v43 + 32))();
    v45 = v44;
    sub_10011C0F0(v188 + v189, v44 + v4[5], &qword_100CB0BA0, &unk_100A40F70);
    v46 = v4[6];
    v180 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
    v189 = *(v180 - 8);
    (*(v189 + 32))(v45 + v46, v187 + v190, v180);
    v47 = v4[7];
    v190 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
    v48 = *(v190 - 8);
    (*(v48 + 32))(v45 + v47, v181 + v186, v190);
    sub_10011C0F0(v185 + v179, v45 + v4[8], &qword_100CC62B8, &qword_100A61CA0);
    sub_10011C0F0(v171 + v184, v45 + v4[9], &qword_100CACDF8, &unk_100A3E410);
    *(v45 + v4[10]) = v167;
    v49 = v8;
    v50 = v45;
    v51 = v4[11];
    v52 = type metadata accessor for WeatherAvailability();
    v53 = *(v52 - 8);
    (*(v53 + 32))(v50 + v51, v40 + v97, v52);
    sub_10011C0F0(&v41[v95], v50 + v4[12], &qword_100CE29C8, &qword_100A9AC10);
    sub_10011C0F0(&v49[v93], v50 + v4[13], &qword_100CABD10, &qword_100A3ABB0);
    sub_100018144(&v49[v94], &qword_100CE29C8, &qword_100A9AC10);
    v54 = *(v53 + 8);
    v167 = v52;
    v54(&v49[v96], v52);
    v179 = v53 + 8;
    v171 = v54;
    sub_100018144(&v49[v98], &qword_100CACDF8, &unk_100A3E410);
    sub_100018144(&v49[v169], &qword_100CC62B8, &qword_100A61CA0);
    v55 = *(v48 + 8);
    v169 = v48 + 8;
    v181 = v55;
    v55(&v170[v49], v190);
    v56 = *(v189 + 8);
    v189 += 8;
    v170 = v56;
    v57 = v180;
    (v56)(&v49[v99], v180);
    v58 = v41;
    sub_100018144(&v49[v100], &qword_100CB0BA0, &unk_100A40F70);
    v59 = v182;
    v61 = v183 + 8;
    v60 = *(v183 + 8);
    v60(v49, v182);
    sub_100018144(&v58[v101], &qword_100CABD10, &qword_100A3ABB0);
    v54(&v58[v102], v52);
    sub_100018144(&v58[v103], &qword_100CACDF8, &unk_100A3E410);
    sub_100018144(&v58[v104], &qword_100CC62B8, &qword_100A61CA0);
    v62 = v190;
    v63 = v181;
    v181(&v58[v105], v190);
    v64 = v57;
    v65 = v170;
    (v170)(&v58[v106], v64);
    sub_100018144(&v58[v107], &qword_100CB0BA0, &unk_100A40F70);
    v183 = v61;
    v60(v58, v59);
    v66 = v172;
    sub_100018144(v172 + v108, &qword_100CABD10, &qword_100A3ABB0);
    sub_100018144(v66 + v109, &qword_100CE29C8, &qword_100A9AC10);
    sub_100018144(v66 + v110, &qword_100CACDF8, &unk_100A3E410);
    sub_100018144(v66 + v111, &qword_100CC62B8, &qword_100A61CA0);
    v63(v66 + v112, v62);
    v67 = v180;
    v65(v66 + v113, v180);
    sub_100018144(v66 + v114, &qword_100CB0BA0, &unk_100A40F70);
    v60(v66, v59);
    v68 = v173;
    sub_100018144(v173 + v115, &qword_100CABD10, &qword_100A3ABB0);
    sub_100018144(v68 + v116, &qword_100CE29C8, &qword_100A9AC10);
    v69 = v167;
    v70 = v171;
    v171(v68 + v117, v167);
    sub_100018144(v68 + v118, &qword_100CACDF8, &unk_100A3E410);
    sub_100018144(v68 + v119, &qword_100CC62B8, &qword_100A61CA0);
    v71 = v190;
    v72 = v181;
    v181(v68 + v120, v190);
    v65(v68 + v121, v67);
    sub_100018144(v68 + v122, &qword_100CB0BA0, &unk_100A40F70);
    v73 = v182;
    v60(v68, v182);
    v74 = v184;
    sub_100018144(v184 + v123, &qword_100CABD10, &qword_100A3ABB0);
    sub_100018144(v74 + v124, &qword_100CE29C8, &qword_100A9AC10);
    v70(v74 + v125, v69);
    sub_100018144(v74 + v126, &qword_100CC62B8, &qword_100A61CA0);
    v72(v74 + v127, v71);
    v75 = v180;
    v76 = v170;
    (v170)(v74 + v128, v180);
    sub_100018144(v74 + v129, &qword_100CB0BA0, &unk_100A40F70);
    v60(v74, v73);
    v77 = v185;
    sub_100018144(v185 + v130, &qword_100CABD10, &qword_100A3ABB0);
    sub_100018144(v77 + v131, &qword_100CE29C8, &qword_100A9AC10);
    v78 = v167;
    v171(v77 + v132, v167);
    sub_100018144(v77 + v133, &qword_100CACDF8, &unk_100A3E410);
    v181(v77 + v134, v190);
    v76(v77 + v135, v75);
    sub_100018144(v77 + v136, &qword_100CB0BA0, &unk_100A40F70);
    v79 = v182;
    v60(v77, v182);
    v80 = v60;
    v81 = v186;
    sub_100018144(v186 + v137, &qword_100CABD10, &qword_100A3ABB0);
    sub_100018144(v81 + v138, &qword_100CE29C8, &qword_100A9AC10);
    v82 = v171;
    v171(v81 + v139, v78);
    sub_100018144(v81 + v140, &qword_100CACDF8, &unk_100A3E410);
    sub_100018144(v81 + v141, &qword_100CC62B8, &qword_100A61CA0);
    v76(v81 + v142, v75);
    sub_100018144(v81 + v143, &qword_100CB0BA0, &unk_100A40F70);
    v60(v81, v79);
    v83 = v187;
    sub_100018144(v187 + v144, &qword_100CABD10, &qword_100A3ABB0);
    sub_100018144(v83 + v145, &qword_100CE29C8, &qword_100A9AC10);
    v82(v83 + v146, v78);
    sub_100018144(v83 + v147, &qword_100CACDF8, &unk_100A3E410);
    sub_100018144(v83 + v148, &qword_100CC62B8, &qword_100A61CA0);
    v84 = v190;
    v85 = v181;
    v181(v83 + v149, v190);
    sub_100018144(v83 + v151, &qword_100CB0BA0, &unk_100A40F70);
    v80(v83, v79);
    v86 = v188;
    sub_100018144(v188 + v152, &qword_100CABD10, &qword_100A3ABB0);
    sub_100018144(v86 + v153, &qword_100CE29C8, &qword_100A9AC10);
    v82(v86 + v154, v78);
    sub_100018144(v86 + v155, &qword_100CACDF8, &unk_100A3E410);
    sub_100018144(v86 + v156, &qword_100CC62B8, &qword_100A61CA0);
    v85(v86 + v157, v84);
    v87 = v180;
    v88 = v170;
    (v170)(v86 + v158, v180);
    v80(v86, v182);
    v89 = v168;
    sub_100018144(&v168[v159], &qword_100CABD10, &qword_100A3ABB0);
    sub_100018144(&v89[v160], &qword_100CE29C8, &qword_100A9AC10);
    v82(&v89[v161], v78);
    sub_100018144(&v89[v162], &qword_100CACDF8, &unk_100A3E410);
    sub_100018144(&v89[v163], &qword_100CC62B8, &qword_100A61CA0);
    v85(&v89[v164], v84);
    v88(&v89[v165], v87);
    sub_100018144(&v89[v166], &qword_100CB0BA0, &unk_100A40F70);
    v90 = v177;
    sub_1000863F8(v174, v177);
    swift_storeEnumTagMultiPayload();
    v175(v90);
    sub_100018144(v90, &qword_100CE29D0, &qword_100A95878);
    sub_100087544();
    v38 = v150;
    v36 = &qword_100CE29D8;
    v37 = &qword_100A95880;
  }

  return sub_100018144(v38, v36, v37);
}

uint64_t sub_1000F38A4()
{
  sub_100003A00();
  v3 = *(v2 + 20);
  v4 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);

  return sub_100024D10(v1 + v3, v0, v4);
}

uint64_t type metadata accessor for FetchedForecast(uint64_t a1)
{
  result = qword_100CE2A88;
  if (!qword_100CE2A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F3958(uint64_t a1)
{
  type metadata accessor for CurrentWeather();
  if (v1 <= 0x3F)
  {
    sub_1000F3D3C(319, &qword_100CB0C38, &qword_100CAE8F0, &qword_100A3E420);
    if (v2 <= 0x3F)
    {
      sub_1000F432C(319);
      if (v3 <= 0x3F)
      {
        sub_1000F4460(319);
        if (v4 <= 0x3F)
        {
          sub_1000F4694(319, &qword_100CE2A98, &type metadata accessor for AirQuality);
          if (v5 <= 0x3F)
          {
            sub_1000F4694(319, &qword_100CB0C70, &type metadata accessor for WeatherChanges);
            if (v6 <= 0x3F)
            {
              sub_1000F3D3C(319, &qword_100CE2AA0, &qword_100CB4738, &qword_100A47928);
              if (v7 <= 0x3F)
              {
                type metadata accessor for WeatherAvailability();
                if (v8 <= 0x3F)
                {
                  sub_1000F4694(319, &unk_100CE2AA8, &type metadata accessor for News);
                  if (v9 <= 0x3F)
                  {
                    sub_1000F4694(319, &qword_100CE1CA0, &type metadata accessor for HistoricalComparisons);
                    if (v10 <= 0x3F)
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
  }
}

uint64_t sub_1000F3B3C()
{
  v1 = sub_10022C350(&qword_100CCA048, &qword_100A68728);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v2);
  v4 = &v16[-1] - v3;
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  sub_1000F3D90(v0, &v4[*(v1 + 36)]);
  sub_10042F370((v0 + 2), v16);
  v5 = sub_10002D7F8(v16, v16[3]);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = (v7 - v6);
  (*(v9 + 16))(v7 - v6);
  v10 = *v8;

  sub_1000F4564(v11, v10);
  sub_100006F14(v16);
  type metadata accessor for LocationViewerBindingWrapper(0);
  sub_1000116D0();
  sub_1005F6F6C(v12);
  sub_100024284();
  sub_1000EA178(v13);
  View.environment<A>(_:)();

  return sub_100018198(v4, &qword_100CCA048);
}

void sub_1000F3D3C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10022E824(a3, a4);
    sub_1000201F8();
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000F3D90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10042F370((a1 + 2), v28);
  v24 = a1[7];
  v4 = a1[1];
  v25 = *(a1 + 4);
  sub_10042F370((a1 + 10), v27);
  v5 = a1[20];
  sub_10042F370((a1 + 15), v26);
  *a2 = 0;
  type metadata accessor for LocationViewerBindingWrapper(0);
  sub_1000EA178(&unk_100CC9B58);
  *(a2 + 8) = Environment.init<A>(_:)();
  *(a2 + 16) = v6 & 1;
  v7 = type metadata accessor for MeasuredLocationViewerView(0);
  v8 = v7[6];
  *(a2 + v8) = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  swift_storeEnumTagMultiPayload();
  v9 = v7[14];
  sub_10000C70C(0, &qword_100CA2E40, OS_os_log_ptr);
  *(a2 + v9) = OS_os_log.init(subsystem:category:)();
  v10 = (a2 + v7[7]);

  sub_10022C350(&qword_100CA4C18, &qword_100A2EEB0);
  sub_1005F6F6C(&qword_100CA4C20);
  *v10 = ObservedObject.init(wrappedValue:)();
  v10[1] = v11;
  sub_10042F370(v28, a2 + v7[9]);
  *(a2 + v7[10]) = v24;
  *(a2 + v7[8]) = v4;
  *(a2 + v7[11]) = v25;
  sub_10042F370(v27, a2 + v7[12]);
  *(a2 + v7[15]) = v5;
  sub_10042F370(v26, a2 + v7[13]);
  sub_10000C70C(0, &qword_100CCA058, UIToolbar_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  swift_unknownObjectRetain();

  v13 = [ObjCClassFromMetadata appearance];
  v14 = [objc_opt_self() whiteColor];
  [v13 setTintColor:v14];

  sub_100006F14(v26);
  sub_100006F14(v27);
  sub_100006F14(v28);
  v15 = a2 + *(sub_10022C350(&qword_100CCA060, &qword_100A68758) + 36);
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = type metadata accessor for PageControlDisplayStateModifier(0);
  v17 = *(v16 + 20);
  *(v15 + v17) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v18 = (v15 + *(v16 + 24));
  type metadata accessor for PageControlDisplayState(0);
  swift_allocObject();
  v27[0] = sub_1000F4430();
  State.init(wrappedValue:)();
  v19 = v28[1];
  *v18 = v28[0];
  v18[1] = v19;
  v20 = a2 + *(sub_10022C350(&qword_100CCA068, &qword_100A68788) + 36);
  KeyPath = swift_getKeyPath();
  LOBYTE(v28[0]) = 0;
  *v20 = KeyPath;
  *(v20 + 72) = 0;
  v22 = *(type metadata accessor for DetermineWhetherLocationContentWantsGridViewModifier(0) + 20);
  *(v20 + v22) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000F41B8()
{
  sub_10000FE4C();
  v0 = sub_100103418();
  return sub_100005F94(v0);
}

uint64_t sub_1000F420C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F4254(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F429C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F42E4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000F432C(uint64_t a1)
{
  if (!qword_100CB0C18)
  {
    type metadata accessor for HourWeather();
    sub_1000F420C(&qword_100CB0C20, &type metadata accessor for HourWeather, &protocol conformance descriptor for HourWeather);
    sub_1000F420C(&qword_100CB0C28, &type metadata accessor for HourWeather, &protocol conformance descriptor for HourWeather);
    sub_1000F420C(&qword_100CB0C30, &type metadata accessor for HourWeather, &protocol conformance descriptor for HourWeather);
    v1 = type metadata accessor for Forecast();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB0C18);
    }
  }
}

uint64_t sub_1000F4430()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  ObservationRegistrar.init()();
  return v0;
}

void sub_1000F4460(uint64_t a1)
{
  if (!qword_100CB0C48)
  {
    type metadata accessor for DayWeather();
    sub_1000F420C(&qword_100CB0C50, &type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
    sub_1000F420C(&qword_100CB0C58, &type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
    sub_1000F420C(&qword_100CB0C60, &type metadata accessor for DayWeather, &protocol conformance descriptor for DayWeather);
    v1 = type metadata accessor for Forecast();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB0C48);
    }
  }
}

uint64_t sub_1000F4564(uint64_t a1, uint64_t *a2)
{
  v13 = *a2;
  v14 = &off_100C60970;
  v12[0] = a2;
  type metadata accessor for LocationViewerBindingWrapper(0);
  v3 = swift_allocObject();
  v4 = sub_10002D7F8(v12, v13);
  v5 = __chkstk_darwin(v4);
  v7 = (&v12[-1] - v6);
  (*(v8 + 16))(&v12[-1] - v6, v5);
  v9 = sub_1000F46E4(a1, *v7, v3);
  sub_100006F14(v12);
  return v9;
}

void sub_1000F4694(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1000201F8();
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000F46E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = type metadata accessor for LocationViewerInteractor();
  v11 = &off_100C60970;
  *&v9 = a2;
  sub_10000C70C(0, &qword_100CA2E40, OS_os_log_ptr);
  *(a3 + 64) = OS_os_log.init(subsystem:category:)();
  v6 = OBJC_IVAR____TtC7WeatherP33_971182080BE1A8931C9C36EF48C83CFF28LocationViewerBindingWrapper____lazy_storage___bindableActiveLocationID;
  v7 = sub_10022C350(&qword_100CC9118, &qword_100A67230);
  sub_10001B350(a3 + v6, 1, 1, v7);
  ObservationRegistrar.init()();
  *(a3 + 16) = a1;
  sub_100013188(&v9, a3 + 24);
  return a3;
}

uint64_t sub_1000F47E0()
{
  sub_10000FE4C();
  v0 = sub_1000F6148();
  return sub_100005F94(v0);
}

uint64_t sub_1000F4A58(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void (*a10)(char *, uint64_t), void (*a11)(uint64_t, uint64_t), uint64_t a12, void *a13, uint64_t a14, uint64_t a15)
{
  v179 = a8;
  v184 = a7;
  v183 = a6;
  v176 = a1;
  v19 = sub_10022C350(&qword_100CE29E8, &unk_100A95890);
  __chkstk_darwin(v19 - 8);
  v172 = v142 - v20;
  Fetched = type metadata accessor for WeatherServiceLastFetched();
  v170 = *(Fetched - 8);
  __chkstk_darwin(Fetched);
  v169 = v142 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v22 - 8);
  v168 = v142 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v180 = v142 - v25;
  v154 = type metadata accessor for WeatherServiceCacheFitnessPolicy();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v152 = v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for WeatherDataLocationPredicate();
  v149 = *(v151 - 8);
  __chkstk_darwin(v151);
  v150 = (v142 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v144 = type metadata accessor for WeatherDataAgePredicate();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v146 = (v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  Policy = type metadata accessor for WeatherServiceCacheReadPolicy();
  v147 = *(Policy - 8);
  __chkstk_darwin(Policy);
  v145 = v142 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for WeatherServiceCaching.Options();
  v30 = *(v166 - 8);
  __chkstk_darwin(v166);
  v165 = v142 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for FetchedForecast(0);
  __chkstk_darwin(v167);
  v157 = v142 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v164 = v142 - v34;
  *&v174 = sub_10022C350(&qword_100CE29D0, &qword_100A95878);
  __chkstk_darwin(v174);
  v175 = (v142 - v35);
  v197 = type metadata accessor for OSSignpostID();
  v36 = *(v197 - 8);
  __chkstk_darwin(v197);
  v177 = (v142 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v38);
  v193 = (v142 - v39);
  v198 = type metadata accessor for Location();
  v195 = *(v198 - 8);
  __chkstk_darwin(v198);
  v156 = v142 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v182 = v142 - v42;
  v155 = v43;
  __chkstk_darwin(v44);
  v190 = v142 - v45;
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v194 = *(Options - 8);
  __chkstk_darwin(Options);
  v178 = v142 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v189 = v142 - v48;
  v49 = type metadata accessor for ProductRequirementsFactory.AppRequiredProducts();
  v191 = *(v49 - 8);
  v192 = v49;
  __chkstk_darwin(v49);
  v188 = v142 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10022C350(&qword_100CE29C8, &qword_100A9AC10);
  __chkstk_darwin(v51 - 8);
  v187 = (v142 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v53);
  v55 = v142 - v54;
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v58 = v142 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v196 = a4;
  sub_10005C1D4(v58);
  sub_100087544();
  sub_1000161C0(a5, a5[3]);
  v59 = Location.id.getter();
  v60 = a2;
  sub_1000F6168(v59, v61);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1005B3D94(0xD000000000000022, 0x8000000100AE3610);
    return sub_1000FE9DC(v60);
  }

  v142[2] = v30;
  v163 = a2;
  v158 = a15;
  v162 = a14;
  v161 = a13;
  v159 = a12;
  v160 = a11;
  v185 = a10;
  v63 = Strong;
  v186 = v36;
  v64 = *(v195 + 16);
  v65 = v55;
  v66 = v198;
  v64(v58, a3, v198);
  swift_storeEnumTagMultiPayload();
  v67 = v196;
  sub_10005C1D4(v58);
  sub_100087544();
  v173 = v63;
  v68 = v63;
  v69 = v176;
  sub_1000F6DB0(v68, v176, v67, a3, v65);
  v70 = *(v191 + 16);
  v142[1] = a9;
  v70(v188, a9, v192);
  v71 = *(v194 + 16);
  v71(v189, v185, Options);
  v181 = a3;
  v72 = v66;
  v73 = v65;
  v74 = v186;
  v142[0] = v64;
  v64(v190, a3, v72);
  v75 = v158;
  sub_10042F370(v159, &v201);
  v76 = *(v74 + 16);
  v76(v193, v75, v197);
  v77 = v187;
  sub_1000302D8(v65, v187, &qword_100CE29C8, &qword_100A9AC10);
  v78 = v69;
  v79 = v175;
  sub_1000302D8(v78, v175, &qword_100CE29D0, &qword_100A95878);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v91 = v164;
    sub_100086450(v79, v164);
    v92 = sub_1000161C0(&v201, v202);
    v93 = v193;
    v60 = v163;
    v94 = v190;
    v95 = v188;
    v96 = v189;
    sub_1000F7F88(v91, 0, v196, v183, v184, v179, v188, v189, v160, v190, v163, v173, *v92, v161, v162, v193, v77);

    sub_100087544();
    sub_100018144(v77, &qword_100CE29C8, &qword_100A9AC10);
    (*(v74 + 8))(v93, v197);
    (*(v195 + 8))(v94, v198);
    (*(v194 + 8))(v96, Options);
    (*(v191 + 8))(v95, v192);
    sub_100018144(v73, &qword_100CE29C8, &qword_100A9AC10);
    sub_100006F14(&v201);
    return sub_1000FE9DC(v60);
  }

  v176 = v65;
  v175 = *v79;
  v80 = v142[0];
  (v142[0])(v182, v181, v198);
  v76(v177, v75, v197);
  v81 = v178;
  v71(v178, v185, Options);
  sub_10022C350(&qword_100CE29F0, &unk_100A958A0);
  v82 = swift_allocObject();
  v174 = xmmword_100A2C3F0;
  *(v82 + 16) = xmmword_100A2C3F0;
  static WeatherServiceCaching.Options.allowsExpiredData.getter();
  v200 = v82;
  sub_1000675AC(&qword_100CE2968, &type metadata accessor for WeatherServiceCaching.Options);
  sub_10022C350(&qword_100CE2970, &qword_100A95820);
  sub_10006768C(&qword_100CE2978, &qword_100CE2970, &qword_100A95820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  WeatherServiceFetchOptions.cachingOptions.setter();

  SettingProperty.wrappedValue.getter();

  v83 = v184;
  v84 = v195;
  if (v200 == 1)
  {
    Location.kind.getter();
    v85 = Location.Identifier.Kind.rawValue.getter();
    v87 = v86;
    if (v85 == Location.Identifier.Kind.rawValue.getter() && v87 == v88)
    {
    }

    else
    {
      v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v90 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    AppConfiguration.weatherDynamicCacheQueryTimeInterval.getter();
    v97 = v146;
    *v146 = v98;
    (*(v143 + 104))(v97, enum case for WeatherDataAgePredicate.maximumAge(_:), v144);
    AppConfiguration.weatherDynamicCacheQueryDistance.getter();
    v99 = v150;
    *v150 = v100;
    (*(v149 + 104))(v99, enum case for WeatherDataLocationPredicate.withinDistance(_:), v151);
    (*(v153 + 104))(v152, enum case for WeatherServiceCacheFitnessPolicy.preferMoreRecent(_:), v154);
    v101 = v145;
    WeatherServiceCacheReadConfig.init(age:location:allowsFewerHours:allowsFewerDays:allowsFlexibleMarineTimeWindow:fitnessPolicy:interpolateCurrentWeather:)();
    (*(v147 + 104))(v101, enum case for WeatherServiceCacheReadPolicy.useCache(_:), Policy);
    WeatherServiceFetchOptions.cacheReadPolicy.setter();
  }

LABEL_14:
  v102 = v169;
  v103 = v179;
  sub_1000FA710(v83, v179, v185, v169);
  v104 = v180;
  WeatherServiceLastFetched.date.getter();
  (*(v170 + 8))(v102, Fetched);
  sub_1000302D8(v104, v168, &unk_100CB2CF0, &unk_100A2D7F0);
  WeatherServiceFetchOptions.now.setter();
  v105 = v173;
  sub_1000161C0(v173 + 60, *(v173 + 63));
  v106 = v172;
  v107 = v160;
  sub_1008AD448(v160, v103, v81, v172);
  if (sub_100024D10(v106, 1, v167) == 1)
  {
    sub_100018144(v187, &qword_100CE29C8, &qword_100A9AC10);
    v108 = *(v186 + 8);
    v186 += 8;
    v187 = v108;
    v108(v193, v197);
    v109 = *(v84 + 8);
    v185 = (v84 + 8);
    v193 = v109;
    v110 = v198;
    v109(v190, v198);
    v190 = *(v194 + 8);
    (v190)(v189, Options);
    (*(v191 + 8))(v188, v192);
    sub_100006F14(&v201);
    sub_100018144(v106, &qword_100CE29E8, &unk_100A95890);
    v111 = v156;
    v80(v156, v182, v110);
    v112 = (*(v84 + 80) + 40) & ~*(v84 + 80);
    v113 = (v155 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
    v114 = swift_allocObject();
    v115 = v161;
    *(v114 + 2) = v196;
    *(v114 + 3) = v115;
    *(v114 + 4) = v162;
    (*(v84 + 32))(&v114[v112], v111, v110);
    *&v114[v113] = v175;

    swift_errorRetain();
    asyncMain(block:)();

    v116 = static os_signpost_type_t.end.getter();
    v117 = *(v105 + 56);
    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v118 = swift_allocObject();
    *(v118 + 16) = v174;
    v119 = v182;
    v120 = Location.name.getter();
    v122 = v121;
    *(v118 + 56) = &type metadata for String;
    *(v118 + 64) = sub_100035744();
    *(v118 + 32) = v120;
    *(v118 + 40) = v122;
    v123 = v177;
    os_signpost(_:dso:log:name:signpostID:_:_:)(v116, &_mh_execute_header, v117, "Weather:fetchWeather", 20, 2, v177, "location %{private}s failed", 27, 2, v118);

    v187(v123, v197);
    v124 = v110;
    v125 = v190;
    v193(v119, v124);
    v126 = Options;
    v127 = v181;
    v60 = v163;
  }

  else
  {
    v186 = *(v186 + 8);
    v128 = v197;
    (v186)(v177, v197);
    v185 = *(v84 + 8);
    v195 = v84 + 8;
    v185(v182, v198);
    v129 = v157;
    sub_100086450(v106, v157);
    v130 = sub_1000161C0(&v201, v202);
    v131 = v187;
    v132 = v193;
    v133 = v128;
    v60 = v163;
    v134 = v190;
    v141 = v107;
    v135 = v103;
    v136 = v188;
    v137 = v189;
    sub_1000F7F88(v129, 1, v196, v183, v184, v135, v188, v189, v141, v190, v163, v105, *v130, v161, v162, v193, v187);
    sub_100087544();
    sub_100018144(v131, &qword_100CE29C8, &qword_100A9AC10);
    (v186)(v132, v133);
    v185(v134, v198);
    v125 = *(v194 + 8);
    v126 = Options;
    v125(v137, Options);
    (*(v191 + 8))(v136, v192);
    sub_100006F14(&v201);
    v127 = v181;
  }

  swift_beginAccess();
  v138 = swift_weakLoadStrong();
  v139 = v176;
  if (v138)
  {
    sub_10018E604(v127);
  }

  sub_100018144(v180, &unk_100CB2CF0, &unk_100A2D7F0);
  v125(v178, v126);
  sub_100018144(v139, &qword_100CE29C8, &qword_100A9AC10);
  return sub_1000FE9DC(v60);
}

void sub_1000F6168(uint64_t a1, unint64_t a2)
{
  type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v5);
  sub_1000037D8();
  UnfairLock.lock()();
  swift_beginAccess();
  v6 = sub_100086BAC(a1, a2, *(v2 + 48));
  if (v6)
  {
    v7 = v6;
    swift_endAccess();
    swift_beginAccess();
    v8 = sub_1000F64AC();
    swift_endAccess();

    [v7 invalidate];
    if (qword_100CA2798 != -1)
    {
      sub_10001FB30(&qword_100CA2798);
    }

    v9 = type metadata accessor for Logger();
    sub_10000703C(v9, qword_100D90D20);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22[0] = v13;
      *v12 = 141558531;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      *(v12 + 14) = sub_100078694(a1, a2, v22);
      *(v12 + 22) = 2080;
      Date.init()();
      sub_10001D090();
      sub_100066840(v14, v15, &protocol conformance descriptor for Date);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      v19 = sub_100014268();
      v20(v19);
      v21 = sub_100078694(v16, v18, v22);

      *(v12 + 24) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "Stopped monitoring location load. ID=%{private,mask.hash}s, Now=%s", v12, 0x20u);
      swift_arrayDestroy();
      sub_100003884(v13);
      sub_100003884(v12);
    }
  }

  else
  {
    swift_endAccess();
  }

  UnfairLock.unlock()();
}

unint64_t sub_1000F6458()
{
  result = qword_100CA60D0;
  if (!qword_100CA60D0)
  {
    result = swift_getWitnessTable(byte_100A30BB4, &type metadata for IsLocationPreviewEnvironmentKey, v0, v1);
    atomic_store(result, &qword_100CA60D0);
  }

  return result;
}

uint64_t sub_1000F64AC()
{
  v2 = v0;
  sub_100031B34();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100025198();
  sub_100008574();
  v4 = sub_10022C350(&qword_100CA3A08, &qword_100A2D8B0);
  sub_1000145E4(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15);

  v12 = *(*(v16 + 56) + 8 * v1);
  sub_1000F6C98();
  _NativeDictionary._delete(at:)();
  *v2 = v16;
  return v12;
}

uint64_t sub_1000F6564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  sub_1000037C4();
  v67 = v3;
  v68 = *(v4 + 64);
  __chkstk_darwin(v5);
  v66 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10022C350(&qword_100CDE300, &qword_100A8D0B8);
  sub_1000037E8();
  __chkstk_darwin(v7);
  v64 = (&v58 - v8);
  v65 = *(a1 + 16);
  sub_10022E824(&qword_100CDE308, &qword_100A8D0C0);
  sub_10000381C();
  v9 = type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CB0568, &unk_100A734B0);
  sub_10000381C();
  v10 = type metadata accessor for ModifiedContent();
  v11 = sub_10022E824(&qword_100CE1580, &unk_100A408E0);
  v12 = type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CDE310, &qword_100A91B20);
  sub_10000381C();
  v13 = type metadata accessor for ModifiedContent();
  v14 = type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CCAF30, &unk_100A69770);
  sub_10000381C();
  v15 = type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CDE318, &qword_100A8D0C8);
  sub_10000381C();
  v16 = type metadata accessor for ModifiedContent();
  v71 = sub_1000EAD38();
  v63 = *(a1 + 24);
  v17 = v63;
  sub_1000090FC();
  v20 = sub_100006F64(v18, &qword_100CDE308, &qword_100A8D0C0, v19);
  v80[0] = v17;
  v80[1] = v20;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v9, v80);
  v22 = sub_100006F64(&qword_100CB0560, &qword_100CB0568, &unk_100A734B0, v11);
  v79[0] = WitnessTable;
  v79[1] = v22;
  v23 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v10, v79);
  v24 = sub_100006F64(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, v11);
  v78[0] = v23;
  v78[1] = v24;
  v25 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v12, v78);
  v26 = sub_100006F64(&unk_100CE1210, &qword_100CDE310, &qword_100A91B20, v11);
  v77[0] = v25;
  v77[1] = v26;
  v76[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v13, v77);
  v76[1] = v24;
  v27 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v14, v76);
  sub_1000068B8();
  v30 = sub_100006F64(v28, &qword_100CCAF30, &unk_100A69770, v29);
  v75[0] = v27;
  v75[1] = v30;
  v31 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v15, v75);
  sub_100010D98();
  v34 = sub_100006F64(v32, &qword_100CDE318, &qword_100A8D0C8, v33);
  v74[0] = v31;
  v74[1] = v34;
  v60 = v16;
  v59 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v16, v74);
  v73[2] = &type metadata for ComputedGridGeometryPreferenceKey;
  v73[3] = v16;
  v73[4] = v71;
  v73[5] = v59;
  v61 = type metadata accessor for _OverlayPreferenceModifier();
  v35 = v72;
  v36 = type metadata accessor for ModifiedContent();
  sub_1000037C4();
  v62 = v37;
  __chkstk_darwin(v38);
  v40 = &v58 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = &v58 - v42;
  v44 = static Color.clear.getter();
  v45 = v64;
  v46 = sub_1008461D4(v64 + *(v35 + 36));
  *v45 = v44;
  v47 = v67;
  v48 = v66;
  (*(v67 + 16))(v66, v69, a1, v46);
  v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v50 = swift_allocObject();
  v51 = v63;
  *(v50 + 16) = v65;
  *(v50 + 24) = v51;
  (*(v47 + 32))(v50 + v49, v48, a1);
  v52 = sub_1000EAD8C();
  static Alignment.center.getter();
  View.overlayPreferenceValue<A, B>(_:alignment:_:)();

  sub_100018144(v45, &qword_100CDE300, &qword_100A8D0B8);
  v53 = sub_100014FBC();
  v54 = swift_getWitnessTable(v53, v61);
  v73[0] = v52;
  v73[1] = v54;
  v55 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v36, v73);
  sub_1000833D8(v40, v36, v55);
  v56 = *(v62 + 8);
  v56(v40, v36);
  sub_1000833D8(v43, v36, v55);
  return (v56)(v43, v36);
}

uint64_t sub_1000F6BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  type metadata accessor for GridGeometryRoot(0, v5, *(v4 + 24), a4);
  sub_100013D48();
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  sub_1000EBD74(*(v4 + v7), *(v4 + v7 + 8));
  sub_100069B18();
  (*(v8 + 8))(v4 + v7 + v9, v5);

  return swift_deallocObject();
}

unint64_t sub_1000F6C98()
{
  result = qword_100CB6C30;
  if (!qword_100CB6C30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB6C30);
  }

  return result;
}

void sub_1000F6CFC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  sub_10022C350(&qword_100CA61E0, &unk_100A31050);
  sub_100003928();
  if (*(v8 + 84) == a3)
  {
    sub_1000178C4();

    sub_10001B350(v9, v10, v11, v12);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }
}

uint64_t sub_1000F6DB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a4;
  v44 = a3;
  v49 = a2;
  v52 = a5;
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CE29C8, &qword_100A9AC10);
  __chkstk_darwin(v7 - 8);
  v47 = &v39 - v8;
  v9 = type metadata accessor for News();
  v50 = *(v9 - 8);
  v51 = v9;
  __chkstk_darwin(v9);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10022C350(&qword_100CE29D0, &qword_100A95878);
  __chkstk_darwin(v48);
  v12 = &v39 - v11;
  v45 = type metadata accessor for FetchedForecast(0);
  __chkstk_darwin(v45);
  v46 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NewsConfiguration();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppConfiguration();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1 + 15, a1[18]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.news.getter();
  (*(v19 + 8))(v21, v18);
  LOBYTE(a1) = NewsConfiguration.enabled.getter();
  (*(v15 + 8))(v17, v14);
  if ((a1 & 1) == 0)
  {
    v26 = 1;
    v24 = v51;
    v23 = v52;
    return sub_10001B350(v23, v26, 1, v24);
  }

  if (qword_100CA25E8 != -1)
  {
    swift_once();
  }

  v22 = dispatch thunk of SettingGroup.isEnabled.getter();
  v24 = v51;
  v23 = v52;
  if (v22)
  {
    if (qword_100CA2230 != -1)
    {
      swift_once();
    }

    v25 = sub_10000703C(v24, qword_100D90440);
    (*(v50 + 16))(v23, v25, v24);
    goto LABEL_8;
  }

  sub_1000302D8(v49, v12, &qword_100CE29D0, &qword_100A95878);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = &qword_100CE29D0;
    v28 = &qword_100A95878;
    v29 = v12;
LABEL_14:
    sub_100018144(v29, v27, v28);
    v26 = 1;
    return sub_10001B350(v23, v26, 1, v24);
  }

  v30 = v46;
  sub_100086450(v12, v46);
  v31 = v47;
  sub_1000302D8(v30 + *(v45 + 48), v47, &qword_100CE29C8, &qword_100A9AC10);
  if (sub_100024D10(v31, 1, v24) == 1)
  {
    sub_100087544();
    v27 = &qword_100CE29C8;
    v28 = &qword_100A9AC10;
    v29 = v31;
    goto LABEL_14;
  }

  v33 = *(v50 + 32);
  v34 = v40;
  v33(v40, v31, v24);
  v35 = *(sub_10022C350(&qword_100CC77B8, &qword_100A642C0) + 48);
  v36 = type metadata accessor for Location();
  v37 = v43;
  (*(*(v36 - 8) + 16))(v43, v41, v36);
  v38 = *(News.placements.getter() + 16);

  *(v37 + v35) = v38;
  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v37);
  sub_100087544();
  sub_100087544();
  v33(v23, v34, v24);
LABEL_8:
  v26 = 0;
  return sub_10001B350(v23, v26, 1, v24);
}

double sub_1000F73D0()
{
  type metadata accessor for GridGeometryValidator();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 255;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  return result;
}

uint64_t sub_1000F7410()
{
  v0 = type metadata accessor for Access();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  _s4NewsV18PlaceholderContentCMa(0);
  (*(v2 + 104))(v6, enum case for Access.protected(_:), v0);
  result = sub_1000F7E14(0, 0, 0, v6);
  qword_100D908C0 = result;
  return result;
}

uint64_t sub_1000F74EC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for GridGeometryValidator();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1000F7528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = a1;
  v42 = a2;
  v4 = type metadata accessor for GridGeometryComputerModifier(0);
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EnvironmentValues();
  v46 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DisplayMetrics(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  v16 = type metadata accessor for ContentSizeCategory();
  v43 = *(v16 - 8);
  v44 = v16;
  __chkstk_darwin(v16);
  v41 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009ECC8();
  sub_10009D114();
  v45 = v12;
  sub_1000FC9C8();
  v18 = v2 + *(v4 + 32);
  if ((*(v18 + 8) & 1) == 0)
  {
    v19 = *v18;

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v19, 0);
    (*(v46 + 8))(v9, v7);
  }

  v38 = v7;
  v21 = static Alignment.center.getter();
  v23 = v22;
  sub_1000F7F28(v3, &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GridGeometryComputerModifier);
  v24 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v25 = swift_allocObject();
  sub_1000FA6B0(v6, v25 + v24, type metadata accessor for GridGeometryComputerModifier);
  v26 = static Alignment.center.getter();
  v28 = v27;
  v29 = sub_10022C350(&qword_100CDE440, &qword_100A8D450);
  v30 = v42;
  (*(*(v29 - 8) + 16))(v42, v40, v29);
  v31 = (v30 + *(sub_10022C350(&qword_100CDE448, &qword_100A8D458) + 36));
  *v31 = sub_100848584;
  v31[1] = v25;
  v31[2] = v26;
  v31[3] = v28;
  v31[4] = v21;
  v31[5] = v23;
  v32 = (v30 + *(sub_10022C350(&qword_100CDE450, &qword_100A8D460) + 36));
  v33 = v32 + *(sub_10022C350(&qword_100CDE458, &qword_100A8D468) + 36);
  sub_1000FC5D4(v15, v33);
  v34 = v3 + *(v4 + 52);
  v35 = *v34;
  if (*(v34 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v35, 0);
    (*(v46 + 8))(v9, v38);
    LOBYTE(v35) = v47;
  }

  sub_1008485F4(v45, type metadata accessor for DisplayMetrics);
  sub_100018144(v15, &qword_100CA6028, &qword_100A40610);
  (*(v43 + 8))(v41, v44);
  result = type metadata accessor for GridGeometryComputerModifier.CacheBustingUpdates(0);
  *(v33 + *(result + 20)) = (v35 & 1) == 0;
  *v32 = 0;
  return result;
}

uint64_t sub_1000F7A88()
{
  v1 = type metadata accessor for GridGeometryComputerModifier(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1000EBD74(*v2, *(v2 + 8));
  v3 = v2 + v1[5];
  sub_10022C350(&qword_100CB3278, &qword_100A70D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(type metadata accessor for DisplayMetrics(0) + 36);
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v1[6];
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100024D10(v2 + v6, 1, v7))
    {
      (*(*(v7 - 8) + 8))(v2 + v6, v7);
    }
  }

  else
  {
  }

  sub_100023354(v1[7]);
  sub_100023354(v1[8]);
  v8 = v1[9];
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_100003D98();
    (*(v9 + 8))(v2 + v8);
  }

  else
  {
  }

  v10 = v1[10];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100024D10(v2 + v10, 1, v11))
    {
      (*(*(v11 - 8) + 8))(v2 + v10, v11);
    }
  }

  else
  {
  }

  sub_10003BCD8();

  sub_100023354(v1[13]);
  v12 = v2 + v1[14];
  sub_100109A54(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40), *(v12 + 48));

  return swift_deallocObject();
}

uint64_t _s4NewsV18PlaceholderContentCMa(uint64_t a1)
{
  result = qword_100CD5DC0;
  if (!qword_100CD5DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F7E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Access();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  swift_allocObject();
  (*(v7 + 16))(v11, a4, v5);
  v12 = SettingGroup.init(key:defaultValue:access:)();
  (*(v7 + 8))(a4, v5);
  return v12;
}

uint64_t sub_1000F7F28(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000F7F88(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, char *a11, char *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v237 = a8;
  v236 = a7;
  v255 = a6;
  v235 = a5;
  v234 = a4;
  v259 = a3;
  LODWORD(v266) = a2;
  v265 = a1;
  v208 = type metadata accessor for OSSignpostID();
  v202 = *(v208 - 8);
  __chkstk_darwin(v208);
  v201 = v17;
  v207 = &v194 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CE29C8, &qword_100A9AC10);
  v198 = *(v18 - 8);
  v199 = *(v198 + 64);
  __chkstk_darwin(v18 - 8);
  v200 = &v194 - v19;
  v248 = type metadata accessor for Location();
  v246 = *(v248 - 8);
  __chkstk_darwin(v248);
  v245 = v20;
  v247 = &v194 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for UUID();
  v239 = *(v241 - 8);
  __chkstk_darwin(v241);
  v238 = &v194 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = type metadata accessor for WeatherData(0);
  v196 = *(v240 - 8);
  __chkstk_darwin(v240);
  v206 = &v194 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = v22;
  __chkstk_darwin(v23);
  v253 = (&v194 - v24);
  v25 = type metadata accessor for WeatherData.CachingState(0);
  __chkstk_darwin(v25 - 8);
  v258 = &v194 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10022C350(&qword_100CC8178, &qword_100A905E0);
  __chkstk_darwin(v27 - 8);
  v262 = &v194 - v28;
  v29 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  __chkstk_darwin(v29 - 8);
  v252 = &v194 - v30;
  v205 = type metadata accessor for WeatherMetadata();
  v204 = *(v205 - 8);
  __chkstk_darwin(v205);
  v203 = &v194 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v32 - 8);
  v230 = &v194 - v33;
  Fetched = type metadata accessor for WeatherServiceLastFetched();
  v227 = *(Fetched - 8);
  __chkstk_darwin(Fetched);
  v226 = &v194 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10022C350(&qword_100CABD00, &qword_100A3ABA0);
  __chkstk_darwin(v35 - 8);
  v223 = &v194 - v36;
  v37 = sub_10022C350(&qword_100CABD10, &qword_100A3ABB0);
  __chkstk_darwin(v37 - 8);
  v222 = &v194 - v38;
  v220 = type metadata accessor for WeatherAvailability();
  v218 = *(v220 - 8);
  __chkstk_darwin(v220);
  v221 = &v194 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10022C350(&qword_100CC62B8, &qword_100A61CA0);
  __chkstk_darwin(v40 - 8);
  v219 = &v194 - v41;
  v244 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  v215 = *(v244 - 1);
  __chkstk_darwin(v244);
  v217 = &v194 - v42;
  v251 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
  v250 = *(v251 - 8);
  __chkstk_darwin(v251);
  v249 = &v194 - v43;
  v44 = sub_10022C350(&qword_100CB0BA0, &unk_100A40F70);
  __chkstk_darwin(v44 - 8);
  v216 = &v194 - v45;
  v214 = type metadata accessor for CurrentWeather();
  v213 = *(v214 - 8);
  __chkstk_darwin(v214);
  v254 = &v194 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = type metadata accessor for WeatherDataModel();
  v257 = *(v264 - 8);
  __chkstk_darwin(v264);
  v225 = &v194 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = v47;
  __chkstk_darwin(v48);
  v268 = &v194 - v49;
  v267 = type metadata accessor for Date();
  v263 = *(v267 - 8);
  __chkstk_darwin(v267);
  v261 = &v194 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v260 = &v194 - v52;
  __chkstk_darwin(v53);
  v256 = &v194 - v54;
  v211 = type metadata accessor for Calendar.Component();
  v55 = *(v211 - 8);
  __chkstk_darwin(v211);
  v57 = &v194 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for TimeZone();
  v59 = *(v58 - 8);
  __chkstk_darwin(v58);
  v61 = &v194 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for Calendar();
  v209 = *(v210 - 8);
  __chkstk_darwin(v210);
  v63 = &v194 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_10022C350(&qword_100CACDF8, &unk_100A3E410);
  __chkstk_darwin(v64 - 8);
  v212 = &v194 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v68 = &v194 - v67;
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v71 = &v194 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = type metadata accessor for DailyForecastFilter();
  v274 = &off_100C4AB20;
  v272 = a13;
  *v71 = v266;
  v194 = updated;
  swift_storeEnumTagMultiPayload();

  sub_10005C1D4(v71);
  v195 = v71;
  sub_100087544();
  static TimeZone.current.getter();
  static Calendar.currentCalendar(with:)();
  v72 = *(v59 + 8);
  v231 = v61;
  v233 = v58;
  v232 = v59 + 8;
  v228 = v72;
  v72(v61, v58);
  v73 = v211;
  (*(v55 + 104))(v57, enum case for Calendar.Component.hour(_:), v211);
  v74 = v256;
  Date.init()();
  v75 = Calendar.component(_:from:)();
  v76 = *(v263 + 8);
  v243 = v263 + 8;
  v242 = v76;
  v76(v74, v267);
  (*(v55 + 8))(v57, v73);
  (*(v209 + 8))(v63, v210);
  if (v75 > 19)
  {
    v79 = type metadata accessor for FetchedForecast(0);
    v78 = v265;
    sub_1000302D8(v265 + *(v79 + 36), v68, &qword_100CACDF8, &unk_100A3E410);
  }

  else
  {
    v77 = type metadata accessor for WeatherChanges();
    sub_10001B350(v68, 1, 1, v77);
    v78 = v265;
  }

  v256 = a12;
  v265 = a10;
  (*(v213 + 16))(v254, v78, v214);
  v80 = type metadata accessor for FetchedForecast(0);
  sub_1000302D8(v78 + v80[5], v216, &qword_100CB0BA0, &unk_100A40F70);
  (*(v250 + 16))(v249, v78 + v80[6], v251);
  (*(v215 + 16))(v217, v78 + v80[7], v244);
  sub_1000302D8(v78 + v80[8], v219, &qword_100CC62B8, &qword_100A61CA0);
  v244 = v68;
  sub_1000302D8(v68, v212, &qword_100CACDF8, &unk_100A3E410);
  (*(v218 + 16))(v221, v78 + v80[11], v220);
  sub_1000302D8(v78 + v80[13], v222, &qword_100CABD10, &qword_100A3ABB0);
  v81 = type metadata accessor for HistoricalFacts();
  sub_10001B350(v223, 1, 1, v81);

  WeatherDataModel.init(currentWeather:minuteForecast:hourlyForecast:dailyForecast:airQuality:weatherChanges:weatherAlerts:availability:historicalComparisons:historicalFacts:)();
  v82 = v260;
  CurrentWeather.date.getter();
  v83 = v226;
  sub_1000FA710(v235, v255, v237, v226);
  v84 = v230;
  WeatherServiceLastFetched.date.getter();
  (*(v227 + 8))(v83, Fetched);
  v85 = v267;
  if (sub_100024D10(v84, 1, v267) == 1)
  {
    (*(v263 + 16))(v261, v82, v85);
    if (sub_100024D10(v84, 1, v85) != 1)
    {
      sub_100018144(v84, &unk_100CB2CF0, &unk_100A2D7F0);
    }
  }

  else
  {
    (*(v263 + 32))(v261, v84, v85);
  }

  if (v266)
  {
    v86 = v203;
    CurrentWeather.metadata.getter();
    v87 = WeatherMetadata.location.getter();
    (*(v204 + 8))(v86, v205);
    v88 = Location.clLocation.getter();
    v89.super.isa = v87;
    v89._internal = v88;
    LODWORD(v237) = WeatherService.cachedLocation(_:representsRequestedLocation:)(v89, v90);
  }

  else
  {
    LODWORD(v237) = 1;
  }

  v91 = v253;
  v236 = type metadata accessor for TaskPriority();
  sub_10001B350(v252, 1, 1, v236);
  v92 = swift_allocObject();
  swift_beginAccess();
  v254 = a11;
  swift_weakLoadStrong();
  swift_weakInit();

  v93 = v257;
  v94 = *(v257 + 16);
  v95 = v225;
  v96 = v264;
  v94(v225, v268, v264);
  v97 = (*(v93 + 80) + 48) & ~*(v93 + 80);
  v98 = swift_allocObject();
  *(v98 + 2) = 0;
  *(v98 + 3) = 0;
  *(v98 + 4) = v92;
  v99 = v255;
  *(v98 + 5) = v255;
  (*(v93 + 32))(&v98[v97], v95, v96);
  v100 = v99;
  sub_1006C0138();

  SettingProperty.wrappedValue.getter();

  if (LOBYTE(v275[0]) == 1 && (v266 & 1) != 0)
  {
    v101 = v262;
    v102 = v267;
    (*(v263 + 16))(v262, v260, v267);
    v103 = type metadata accessor for WeatherDataRelevancy(0);
    *(v101 + *(v103 + 20)) = v237 & 1;
    sub_10001B350(v101, 0, 1, v103);
    v104 = v258;
  }

  else
  {
    v105 = type metadata accessor for WeatherDataRelevancy(0);
    sub_10001B350(v262, 1, 1, v105);
    v104 = v258;
    v102 = v267;
  }

  v106 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
  v107 = v106;
  v108 = v265;
  if (v266)
  {
    v109 = *(v106 + 48);
    (*(v263 + 16))(v104, v261, v102);
    sub_1000302D8(v262, v104 + v109, &qword_100CC8178, &qword_100A905E0);
    v110 = 0;
  }

  else
  {
    v110 = 1;
  }

  v263 = a15;
  v255 = a14;
  sub_10001B350(v104, v110, 1, v107);
  v111 = v240;
  v94(v91 + *(v240 + 24), v268, v264);
  sub_1000863F8(v104, v91 + v111[7]);
  v112 = v111[9];
  v113 = type metadata accessor for WeatherDataOverrides(0);
  sub_10001B350(v91 + v112, 1, 1, v113);
  v114 = v238;
  UUID.init()();
  v115 = UUID.uuidString.getter();
  v117 = v116;
  (*(v239 + 8))(v114, v241);
  v118 = v111[5];
  static Locale.current.getter();
  v119 = type metadata accessor for Locale();
  sub_10001B350(v91 + v118, 0, 1, v119);
  type metadata accessor for WeatherData.WeatherStatisticsState(0);
  swift_storeEnumTagMultiPayload();
  *v91 = v115;
  v91[1] = v117;
  sub_1000161C0(&v272, v273);
  v120 = v231;
  Location.timeZone.getter();
  sub_1000FC6B0(v91, v120, v275);
  v228(v120, v233);
  if (v276)
  {
    v122 = v275[2];
    v121 = v275[3];
    v123 = v275[0];
    v124 = v275[1];
    v269 = 0;
    v270 = 0xE000000000000000;
    _StringGuts.grow(_:)(85);
    v125._object = 0x8000000100AE36D0;
    v125._countAndFlagsBits = 0xD00000000000002ALL;
    String.append(_:)(v125);
    v271 = v123;
    v126._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v126);

    v127._countAndFlagsBits = 0x6C6175746361202CLL;
    v127._object = 0xEE003D746E756F43;
    String.append(_:)(v127);
    v271 = v124;
    v128._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v128);

    v129._countAndFlagsBits = 0x7865746E6F63202CLL;
    v129._object = 0xEA00000000003D74;
    String.append(_:)(v129);
    v130._countAndFlagsBits = v122;
    v130._object = v121;
    String.append(_:)(v130);
    v131._countAndFlagsBits = 0x697461636F6C202CLL;
    v131._object = 0xEB000000003D6E6FLL;
    String.append(_:)(v131);
    v271 = Location.hashValue.getter();
    v132._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v132);

    v133 = v269;
    v134 = v270;
    v266 = a16;
    v135 = v246;
    v136 = v247;
    v137 = v248;
    (*(v246 + 16))(v247, v265, v248);
    v138 = (*(v135 + 80) + 40) & ~*(v135 + 80);
    v139 = (v245 + v138 + 7) & 0xFFFFFFFFFFFFFFF8;
    v140 = swift_allocObject();
    v141 = v255;
    *(v140 + 2) = v259;
    *(v140 + 3) = v141;
    *(v140 + 4) = v263;
    v142 = v136;
    v143 = v265;
    (*(v135 + 32))(&v140[v138], v142, v137);
    v144 = &v140[v139];
    *v144 = v133;
    *(v144 + 1) = v134;

    asyncMain(block:)();

    v145 = static os_signpost_type_t.end.getter();
    v146 = *(v256 + 56);
    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v147 = swift_allocObject();
    *(v147 + 16) = xmmword_100A2C3F0;
    v148 = Location.name.getter();
    v150 = v149;
    *(v147 + 56) = &type metadata for String;
    *(v147 + 64) = sub_100035744();
    *(v147 + 32) = v148;
    *(v147 + 40) = v150;
    os_signpost(_:dso:log:name:signpostID:_:_:)(v145, &_mh_execute_header, v146, "Weather:fetchWeather", 20, 2, v266, "location %{private}s", 20, 2, v147);

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10018E604(v143);
    }

    sub_100018144(v275, &qword_100CE29F8, &unk_100A958D0);
    goto LABEL_26;
  }

  v151 = v249;
  WeatherDataModel.hourlyForecast.getter();
  sub_10006768C(&qword_100CA7040, &qword_100CA7030, &qword_100A32000);
  v152 = v251;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v153 = dispatch thunk of Collection.distance(from:to:)();
  v154 = *(v250 + 8);
  v154(v151, v152);
  if (v153 >= 18)
  {
    LODWORD(v266) = v266 & 1;
    v181 = v195;
    swift_storeEnumTagMultiPayload();
    sub_10005C1D4(v181);
    sub_100087544();
    sub_10001B350(v252, 1, 1, v236);
    sub_1000863F8(v91, v206);
    v182 = v246;
    (*(v246 + 16))(v247, v108, v248);
    v183 = v200;
    sub_1000302D8(a17, v200, &qword_100CE29C8, &qword_100A9AC10);
    v184 = v202;
    (*(v202 + 16))(v207, a16, v208);
    v185 = (*(v196 + 80) + 40) & ~*(v196 + 80);
    v186 = (v197 + *(v182 + 80) + v185) & ~*(v182 + 80);
    v187 = (v245 + *(v198 + 80) + v186) & ~*(v198 + 80);
    v265 = (v187 + v199 + 7) & 0xFFFFFFFFFFFFFFF8;
    v188 = (v187 + v199 + 23) & 0xFFFFFFFFFFFFFFF8;
    v189 = (*(v184 + 80) + v188 + 8) & ~*(v184 + 80);
    v190 = swift_allocObject();
    *(v190 + 2) = 0;
    *(v190 + 3) = 0;
    *(v190 + 4) = v256;
    sub_100086450(v206, &v190[v185]);
    (*(v182 + 32))(&v190[v186], v247, v248);
    sub_10011C0F0(v183, &v190[v187], &qword_100CE29C8, &qword_100A9AC10);
    v191 = &v190[v265];
    *v191 = v259;
    v191[8] = v266;
    *&v190[v188] = v254;
    (*(v184 + 32))(&v190[v189], v207, v208);

    sub_1006C0138();

LABEL_26:
    v180 = v267;
    goto LABEL_27;
  }

  v269 = 0;
  v270 = 0xE000000000000000;
  _StringGuts.grow(_:)(93);
  v155._countAndFlagsBits = 0xD000000000000041;
  v155._object = 0x8000000100AE3680;
  String.append(_:)(v155);
  WeatherDataModel.hourlyForecast.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v156 = dispatch thunk of Collection.distance(from:to:)();
  v154(v151, v152);
  v271 = v156;
  v157._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v157);

  v158._countAndFlagsBits = 0x687365726874202CLL;
  v158._object = 0xEC0000003D646C6FLL;
  String.append(_:)(v158);
  v271 = 18;
  v159._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v159);

  v160._countAndFlagsBits = 0x6F697461636F6C20;
  v160._object = 0xEA00000000003D6ELL;
  String.append(_:)(v160);
  v271 = Location.hashValue.getter();
  v161._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v161);

  v162 = v270;
  v253 = v269;
  v163 = v246;
  v164 = *(v246 + 16);
  v165 = v247;
  v266 = a16;
  v166 = v248;
  v164(v247, v265, v248);
  v167 = (*(v163 + 80) + 40) & ~*(v163 + 80);
  v168 = (v245 + v167 + 7) & 0xFFFFFFFFFFFFFFF8;
  v169 = swift_allocObject();
  v170 = v255;
  *(v169 + 2) = v259;
  *(v169 + 3) = v170;
  *(v169 + 4) = v263;
  (*(v163 + 32))(&v169[v167], v165, v166);
  v171 = v265;
  v172 = &v169[v168];
  *v172 = v253;
  v172[1] = v162;

  asyncMain(block:)();

  v173 = static os_signpost_type_t.end.getter();
  v174 = *(v256 + 56);
  sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v175 = swift_allocObject();
  *(v175 + 16) = xmmword_100A2C3F0;
  v176 = Location.name.getter();
  v178 = v177;
  *(v175 + 56) = &type metadata for String;
  *(v175 + 64) = sub_100035744();
  *(v175 + 32) = v176;
  *(v175 + 40) = v178;
  os_signpost(_:dso:log:name:signpostID:_:_:)(v173, &_mh_execute_header, v174, "Weather:fetchWeather", 20, 2, v266, "location %{private}s", 20, 2, v175);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v180 = v267;
  if (Strong)
  {
    sub_10018E604(v171);
  }

LABEL_27:
  sub_100087544();
  sub_100087544();
  sub_100018144(v262, &qword_100CC8178, &qword_100A905E0);
  v192 = v242;
  v242(v261, v180);
  v192(v260, v180);
  (*(v257 + 8))(v268, v264);
  sub_100018144(v244, &qword_100CACDF8, &unk_100A3E410);
  return sub_100006F14(&v272);
}

uint64_t sub_1000FA1A4()
{
  type metadata accessor for WeatherDataModel();
  sub_10000548C();
  swift_unknownObjectRelease();

  v1 = sub_1000751C4();
  v2(v1);
  sub_100036F2C();

  return swift_deallocObject();
}

uint64_t sub_1000FA25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100071768();
  v13 = type metadata accessor for WeatherData(0);
  sub_100003DDC();
  v15 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v17 = *(v16 + 64);
  v61 = type metadata accessor for Location();
  sub_1000037C4();
  v59 = v18;
  v19 = *(v18 + 80);
  v20 = v15 + v17 + v19;
  v22 = *(v21 + 64);
  v23 = sub_10022C350(&qword_100CE29C8, &qword_100A9AC10);
  sub_100003AE8(v23);
  v25 = *(v24 + 80);
  sub_100045454();
  type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v62 = v27;
  v63 = v26;
  v60 = *(v27 + 80);
  sub_10004ECA4();
  sub_1000452A4();
  swift_unknownObjectRelease();

  v28 = v12 + v15;

  v29 = v13[5];
  v30 = type metadata accessor for Locale();
  if (!sub_1000186A8(v28 + v29))
  {
    sub_100019B68();
    (*(v31 + 8))(v28 + v29, v30);
  }

  v32 = v20 & ~v19;
  v33 = v13[6];
  type metadata accessor for WeatherDataModel();
  sub_100003D98();
  (*(v34 + 8))(v28 + v33);
  v35 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
  if (!sub_10002120C(v35))
  {
    type metadata accessor for Date();
    sub_1000037E8();
    v37 = *(v36 + 8);
    v38 = sub_10002C598();
    v37(v38);
    v39 = sub_1000C8C20();
    if (!sub_100052794(v39))
    {
      v40 = sub_1008B1674();
      v37(v40);
    }
  }

  v41 = v32 + v22 + v25;
  v42 = v28 + v13[8];
  v43 = type metadata accessor for WeatherData.WeatherStatisticsState(0);
  v44 = sub_100088740(v43);
  if (v44 == 1)
  {
    type metadata accessor for WeatherStatisticsModel();
    sub_100003D98();
    (*(v46 + 8))(v42);
    v45 = v25;
  }

  else
  {
    v45 = v25;
    if (!v44)
    {
    }
  }

  v47 = v41 & ~v45;
  v48 = v28 + v13[9];
  v49 = type metadata accessor for WeatherDataOverrides(0);
  if (!sub_1000B9AB0(v49))
  {
    v50 = type metadata accessor for Date();
    if (!sub_100003EB0(v50))
    {
      sub_100019B68();
      v51 = sub_100025214();
      v52(v51);
    }

    v53 = *(v41 + 20);
    if (!sub_1000186A8(v48 + v53))
    {
      sub_100019B68();
      (*(v54 + 8))(v48 + v53, v42);
    }
  }

  (*(v59 + 8))(v12 + v32, v61);
  v55 = type metadata accessor for News();
  if (!sub_100024D10(v12 + v47, 1, v55))
  {
    sub_100003B20();
    (*(v56 + 8))(v12 + v47, v55);
  }

  (*(v62 + 8))(v12 + ((((v47 + a12 + 23) & 0xFFFFFFFFFFFFFFF8) + v60 + 8) & ~v60), v63);
  sub_100051A4C();

  return swift_deallocObject();
}

uint64_t sub_1000FA6B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000FA710@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v68 = a4;
  v67 = a3;
  v44 = a2;
  v69 = a5;
  v66 = sub_10022C350(&qword_100CE2988, &qword_100A95830);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v36 - v5;
  v63 = sub_10022C350(&qword_100CE2990, &qword_100A95838);
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v36 - v6;
  v60 = sub_10022C350(&qword_100CE2998, &qword_100A95840);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v50 = &v36 - v7;
  v58 = sub_10022C350(&qword_100CE29A0, &qword_100A95848);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v47 = &v36 - v8;
  v56 = sub_10022C350(&qword_100CE29A8, &qword_100A95850);
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v43 = &v36 - v9;
  v54 = sub_10022C350(&qword_100CE29B0, &qword_100A95858);
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v11 = &v36 - v10;
  v52 = sub_10022C350(&qword_100CAD2A0, &qword_100A3C640);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v13 = &v36 - v12;
  v49 = sub_10022C350(&qword_100CAD290, &qword_100A3C630);
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v15 = &v36 - v14;
  v46 = sub_10022C350(&qword_100CE29B8, &qword_100A95860);
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v17 = &v36 - v16;
  v42 = sub_10022C350(&qword_100CE29C0, &unk_100A95868);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v19 = &v36 - v18;
  v20 = sub_10022C350(&qword_100CE2980, &qword_100A95828);
  __chkstk_darwin(v20 - 8);
  v41 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v36 - v23;
  v25 = swift_projectBox();
  sub_1000302D8(v25, v24, &qword_100CE2980, &qword_100A95828);
  Fetched = type metadata accessor for WeatherServiceLastFetched();
  if (sub_100024D10(v24, 1, Fetched) != 1)
  {
    return (*(*(Fetched - 8) + 32))(v69, v24, Fetched);
  }

  sub_100018144(v24, &qword_100CE2980, &qword_100A95828);
  v36 = *(v44 + 64);
  ProductRequirementsFactory.AppRequiredProducts.current.getter();
  v80 = v19;
  v39 = v17;
  ProductRequirementsFactory.AppRequiredProducts.minutely.getter();
  v81 = v17;
  v38 = v15;
  ProductRequirementsFactory.AppRequiredProducts.hourly.getter();
  v82 = v15;
  v37 = v13;
  ProductRequirementsFactory.AppRequiredProducts.daily.getter();
  v83 = v13;
  ProductRequirementsFactory.AppRequiredProducts.airQuality.getter();
  v84 = v11;
  v27 = v43;
  ProductRequirementsFactory.AppRequiredProducts.changes.getter();
  v85 = v27;
  v28 = v47;
  ProductRequirementsFactory.AppRequiredProducts.alerts.getter();
  v86 = v28;
  v29 = v50;
  ProductRequirementsFactory.AppRequiredProducts.availability.getter();
  v87 = v29;
  v44 = v25;
  v30 = v61;
  ProductRequirementsFactory.AppRequiredProducts.news.getter();
  v88 = v30;
  v31 = v64;
  ProductRequirementsFactory.AppRequiredProducts.historicalComparisons.getter();
  v89 = v31;
  v70 = type metadata accessor for CurrentWeather();
  v71 = sub_10022C350(&qword_100CB0BA0, &unk_100A40F70);
  v72 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
  v73 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  v74 = sub_10022C350(&qword_100CC62B8, &qword_100A61CA0);
  v75 = sub_10022C350(&qword_100CACDF8, &unk_100A3E410);
  v76 = sub_10022C350(&qword_100CD00E0, &unk_100A74880);
  v77 = type metadata accessor for WeatherAvailability();
  v78 = sub_10022C350(&qword_100CE29C8, &qword_100A9AC10);
  v79 = sub_10022C350(&qword_100CABD10, &qword_100A3ABB0);
  v32 = v69;
  WeatherService.lastServerFetch<each A>(for:including:options:)();
  (*(v65 + 8))(v31, v66);
  (*(v62 + 8))(v30, v63);
  (*(v59 + 8))(v29, v60);
  (*(v57 + 8))(v28, v58);
  (*(v55 + 8))(v27, v56);
  (*(v53 + 8))(v11, v54);
  (*(v51 + 8))(v37, v52);
  (*(v48 + 8))(v38, v49);
  (*(v45 + 8))(v39, v46);
  (*(v40 + 8))(v19, v42);
  v33 = v41;
  (*(*(Fetched - 8) + 16))(v41, v32, Fetched);
  sub_10001B350(v33, 0, 1, Fetched);
  v34 = v44;
  swift_beginAccess();
  return sub_1000FB1E4(v33, v34);
}

uint64_t sub_1000FB1E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CE2980, &qword_100A95828);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FB268(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void *sub_1000FB310@<X0>(double a1@<X0>, double a2@<X1>, int a3@<W2>, _BYTE *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v9 = v8;
  LODWORD(v198) = a3;
  v188 = a2;
  v182 = type metadata accessor for DisplayMetrics(0);
  __chkstk_darwin(v182);
  v197 = &v174 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for UserInterfaceSizeClass();
  v187 = *(v191 - 8);
  __chkstk_darwin(v191);
  v179 = &v174 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  __chkstk_darwin(v181);
  v190 = &v174 - v18;
  v19 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v19 - 8);
  v180 = &v174 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v186 = &v174 - v22;
  __chkstk_darwin(v23);
  *&v189 = &v174 - v24;
  v25 = type metadata accessor for ContentSizeCategory();
  v193 = *(v25 - 8);
  v194 = v25;
  __chkstk_darwin(v25);
  v185 = &v174 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v196 = &v174 - v28;
  v29 = type metadata accessor for LocationViewGeometry(0);
  __chkstk_darwin(v29);
  v184 = &v174 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v183 = &v174 - v32;
  __chkstk_darwin(v33);
  v35 = &v174 - v34;
  v36 = type metadata accessor for EnvironmentValues();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v174 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v199 = type metadata accessor for GridGeometryComputerModifier(0);
  v40 = v8 + *(v199 + 52);
  v41 = *v40;
  if (*(v40 + 8) == 1)
  {
    v42 = *v40;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v195 = a1;
    v43 = static Log.runtimeIssuesLog.getter();
    v192 = v36;
    v44 = v43;
    a1 = v195;
    os_log(_:dso:log:_:_:)();

    v36 = v192;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v41, 0);
    (*(v37 + 8))(v39, v36);
    v42 = LOBYTE(__dst[0]);
  }

  if (v42 == 1)
  {
    v45 = (v9 + *(v199 + 48));
    v47 = *v45;
    v46 = v45[1];
    __dst[0] = v47;
    __dst[1] = v46;
    sub_10022C350(&qword_100CDE468, &unk_100A8D480);
    State.wrappedValue.getter();
    v48 = v214;
    v49 = OBJC_IVAR____TtC7WeatherP33_6CEEE08596B0687FCFF88ED9BB8421E217GridGeometryCache_previousLocationViewGeometry;
    swift_beginAccess();
    sub_1000F7F28(*&v48 + v49, v35, type metadata accessor for LocationViewGeometry);

    memcpy(__dst, v35, 0x48uLL);
    LOBYTE(v48) = v35[72];
    v50 = v29[6];
    v51 = type metadata accessor for TargetWindowSizeClass();
    (*(*(v51 - 8) + 16))(&a4[v50], &v35[v50], v51);
    LOBYTE(v50) = v35[v29[8]];
    v52 = &v35[v29[7]];
    v53 = v35[v29[9]];
    v54 = *(v52 + 1);
    v198 = *v52;
    v199 = v54;
    sub_1008485F4(v35, type metadata accessor for LocationViewGeometry);
    result = memcpy(a4, __dst, 0x48uLL);
    a4[72] = LOBYTE(v48);
    v56 = &a4[v29[7]];
    v57 = v199;
    *v56 = v198;
    v56[1] = v57;
    a4[v29[8]] = v50;
    a4[v29[9]] = v53;
    return result;
  }

  if ((v198 & 1) != 0 || (v58 = a1, a1 == 0.0) && v188 == 0.0)
  {
    sub_1009E86F0(0, 3, __dst);
    v59 = v29[6];
    v60 = enum case for TargetWindowSizeClass.compact(_:);
    v61 = type metadata accessor for TargetWindowSizeClass();
    (*(*(v61 - 8) + 104))(&a4[v59], v60, v61);
    result = memcpy(a4, __dst, 0x48uLL);
    a4[72] = 0x80;
    v62 = &a4[v29[7]];
    *v62 = 0u;
    v62[1] = 0u;
    a4[v29[8]] = 0;
    a4[v29[9]] = 0;
    return result;
  }

  v195 = a1;
  *&v198 = v188;
  v192 = v36;
  sub_10009ECC8();
  v178 = v9;
  v63 = *&v189;
  sub_10009D114();
  v64 = v186;
  v65 = v191;
  (*(v187 + 104))(v186, enum case for UserInterfaceSizeClass.compact(_:), v191);
  sub_10001B350(v64, 0, 1, v65);
  *&v66 = *(v181 + 48);
  v67 = v190;
  sub_1000FC5D4(v63, v190);
  v188 = v66;
  sub_1000FC5D4(v64, v67 + *&v66);
  v68 = sub_100024D10(v67, 1, v65);
  v175 = v37;
  if (v68 != 1)
  {
    v72 = v180;
    sub_1000FC5D4(v67, v180);
    v73 = v188;
    v74 = v191;
    if (sub_100024D10(v67 + *&v188, 1, v191) != 1)
    {
      v77 = v187;
      v78 = v67 + *&v73;
      v79 = v179;
      (*(v187 + 32))(v179, v78, v74);
      sub_1000EA958(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass, &protocol conformance descriptor for UserInterfaceSizeClass);
      LODWORD(v188) = dispatch thunk of static Equatable.== infix(_:_:)();
      v80 = *(v77 + 8);
      v80(v79, v74);
      sub_100018144(v186, &qword_100CA6028, &qword_100A40610);
      sub_100018144(*&v189, &qword_100CA6028, &qword_100A40610);
      v80(v72, v74);
      sub_100018144(v190, &qword_100CA6028, &qword_100A40610);
      v71 = v178;
      if (LOBYTE(v188))
      {
        goto LABEL_18;
      }

LABEL_16:
      v75 = 0;
      v76 = 2;
      goto LABEL_19;
    }

    sub_100018144(v186, &qword_100CA6028, &qword_100A40610);
    v69 = v190;
    sub_100018144(*&v189, &qword_100CA6028, &qword_100A40610);
    (*(v187 + 8))(v72, v74);
    v71 = v178;
LABEL_15:
    sub_100018144(v69, &qword_100CA64E8, &unk_100A46060);
    goto LABEL_16;
  }

  sub_100018144(v64, &qword_100CA6028, &qword_100A40610);
  v69 = v190;
  sub_100018144(*&v189, &qword_100CA6028, &qword_100A40610);
  v70 = sub_100024D10(v69 + *&v188, 1, v191);
  v71 = v178;
  if (v70 != 1)
  {
    goto LABEL_15;
  }

  sub_100018144(v69, &qword_100CA6028, &qword_100A40610);
LABEL_18:
  v75 = 1;
  v76 = 1;
LABEL_19:
  v189 = *&v76;
  v81 = v199;
  sub_1000FC9C8();
  v82 = v71 + *(v81 + 32);
  v83 = *v82;
  LODWORD(v190) = *(v82 + 8);
  v191 = v83;
  if ((v190 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v84 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v83, 0);
    (*(v175 + 8))(v39, v192);
    v83 = LOBYTE(__dst[0]);
  }

  v86 = v193;
  v85 = v194;
  v87 = v185;
  (*(v193 + 16))(v185, v196, v194);
  v88 = (*(v86 + 88))(v87, v85);
  v94 = v88 == enum case for ContentSizeCategory.extraSmall(_:) || v88 == enum case for ContentSizeCategory.small(_:) || v88 == enum case for ContentSizeCategory.medium(_:) || v88 == enum case for ContentSizeCategory.large(_:) || v88 == enum case for ContentSizeCategory.extraLarge(_:) || v88 == enum case for ContentSizeCategory.extraExtraLarge(_:) || v88 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
  v176 = v29;
  v177 = a4;
  v174 = v39;
  if (!v94)
  {
    if (v88 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v88 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v88 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v88 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v88 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      goto LABEL_56;
    }

    (*(v193 + 8))(v185, v194);
  }

  if (!v75)
  {
    v188 = a8;
    v100 = objc_opt_self();
    v101 = [v100 mainScreen];
    [v101 bounds];
    v103 = v102;
    v105 = v104;
    v107 = v106;
    v108 = v58;
    v110 = v109;

    v111 = v110;
    v58 = v108;
    sub_10086A658(v103, v105, v107, v111);
    if (v108 < 680.0)
    {
      v99 = 0;
      a8 = v188;
      goto LABEL_64;
    }

    v112 = [v100 mainScreen];
    [v112 bounds];
    v114 = v113;
    v116 = v115;
    v118 = v117;
    v120 = v119;

    v121 = v114;
    v58 = v108;
    sub_10086A658(v121, v116, v118, v120);
    v123 = v122 <= v108;
    a8 = v188;
    if (!v123)
    {
LABEL_60:
      v99 = 1;
      goto LABEL_64;
    }

LABEL_63:
    v99 = 2;
    goto LABEL_64;
  }

  if (v58 >= 680.0)
  {
    if (v58 < 1.79769313e308)
    {
      goto LABEL_60;
    }

    goto LABEL_63;
  }

LABEL_56:
  v99 = 0;
LABEL_64:
  v124 = v197;
  sub_1000FCA5C(v197, v83);
  v126 = v125;
  v128 = v127;
  v129 = sub_1000FD028(v124, v83);
  v130 = sub_1000FCDB8(v124, v83);
  v131 = sub_1000FD0E8(v99, v129 & 1, v130 & 1);
  v132 = v131;
  v133 = HIBYTE(v131);
  v134 = COERCE_DOUBLE(sub_1000FD46C(*&v189, v58));
  v136 = v135;
  v138 = v137;
  v140 = v139;
  v141 = v139 & 1;
  if (DynamicTypeSize.isAccessibilitySize.getter())
  {
    v142 = v58;
  }

  else
  {
    v142 = 200.0;
  }

  LOBYTE(v206[0]) = v141;
  if (v140)
  {
    v188 = v58;
    v189 = a5;
    *__dst = v195;
    *&__dst[1] = v134;
    __dst[2] = v136;
    __dst[3] = v138;
    LOBYTE(__dst[4]) = v141;
    __dst[5] = v126;
    LOBYTE(__dst[6]) = v132;
    BYTE1(__dst[6]) = v133;
    *&__dst[7] = v128;
    *&__dst[8] = v142;
    sub_1000FD520();
    v144 = v143 + sub_1000FDB68() + *&__dst[7] + *&__dst[7];
    if (BYTE1(__dst[6]) - 3 >= 2)
    {
      v144 = v144 + 20.0;
    }

    if (v144 < v134 && (v133 - 3) <= 1)
    {
      v214 = v195;
      v215 = v134;
      v216 = v136;
      v217 = v138;
      v218 = v141;
      v219 = v126;
      v220 = v132;
      v221 = v133;
      v222 = v128;
      v223 = v142;
      sub_1000FD520();
      v146 = v145;
      v147 = sub_1000FDB68();
      v148 = 20.0;
      if (v221 - 3 < 2)
      {
        v148 = 0.0;
      }

      v128 = v222 + round((v134 - (v146 + v147 + v222 + v222 + v148)) * 0.5);
    }

    v58 = v188;
    a5 = v189;
  }

  *v207 = v195;
  *&v207[1] = v134;
  v207[2] = v136;
  v207[3] = v138;
  v208 = v141;
  v209 = v126;
  v210 = v132;
  v211 = v133;
  v212 = v128;
  v213 = v142;
  sub_1008485F4(v197, type metadata accessor for DisplayMetrics);
  (*(v193 + 8))(v196, v194);
  v149 = v199;
  type metadata accessor for GridGeometryValidator();
  sub_1000EA958(&qword_100CDE3C0, type metadata accessor for GridGeometryValidator, byte_100A6F4D8);
  StateObject.wrappedValue.getter();
  sub_1000FE680(v207, v203);

  LODWORD(v197) = sub_1008479BC(v203, v71);
  v150 = (v71 + *(v149 + 48));
  v151 = *v150;
  v152 = v150[1];
  v206[0] = *v150;
  v206[1] = v152;
  sub_10022C350(&qword_100CDE468, &unk_100A8D480);
  State.wrappedValue.getter();
  v153 = v205[0];
  v154 = OBJC_IVAR____TtC7WeatherP33_6CEEE08596B0687FCFF88ED9BB8421E217GridGeometryCache_previousLocationViewGeometry;
  swift_beginAccess();
  v155 = v183;
  sub_1000F7F28(v153 + v154, v183, type metadata accessor for LocationViewGeometry);

  sub_1009E86F0(0, 3, v204);
  v156 = v176;
  v157 = v176[6];
  v158 = enum case for TargetWindowSizeClass.compact(_:);
  v159 = type metadata accessor for TargetWindowSizeClass();
  v160 = v184;
  (*(*(v159 - 8) + 104))(&v184[v157], v158, v159);
  memcpy(v160, v204, 0x48uLL);
  v160[72] = 0x80;
  v161 = &v160[v156[7]];
  *v161 = 0u;
  v161[1] = 0u;
  v160[v156[8]] = 0;
  v162 = v156;
  v160[v156[9]] = 0;
  memcpy(v206, v155, sizeof(v206));
  memcpy(v205, v160, sizeof(v205));
  if (sub_100894634(v205) && v155[72] == 128 && (sub_10016AB68(&v155[v156[6]], &v160[v157]) & 1) != 0 && (static EdgeInsets.== infix(_:_:)() & 1) != 0 && (v155[v156[8]] & 1) == 0)
  {
    v173 = v155[v156[9]];
    sub_1008485F4(v155, type metadata accessor for LocationViewGeometry);
    sub_1008485F4(v160, type metadata accessor for LocationViewGeometry);
    v163 = v173 ^ 1;
  }

  else
  {
    sub_1008485F4(v160, type metadata accessor for LocationViewGeometry);
    sub_1008485F4(v155, type metadata accessor for LocationViewGeometry);
    v163 = 0;
  }

  if (v190)
  {
    v164 = *&v198;
    v165 = v191;
  }

  else
  {
    v166 = v191;

    static os_log_type_t.fault.getter();
    v167 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v168 = v174;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v166, 0);
    (*(v175 + 8))(v168, v192);
    v165 = v200;
    v164 = *&v198;
  }

  v169 = v177;
  sub_1000FDF14(&v177[v162[6]], v58, v164, a5, a6, a7, a8);
  memcpy(v169, v203, 0x48uLL);
  v169[72] = v165;
  v170 = &v169[v162[7]];
  *v170 = a5;
  v170[1] = a6;
  v170[2] = a7;
  v170[3] = a8;
  v169[v162[8]] = v197 & 1;
  v169[v162[9]] = v163 & 1;
  v200 = v151;
  v201 = v152;
  State.wrappedValue.getter();
  v171 = v202;
  v172 = OBJC_IVAR____TtC7WeatherP33_6CEEE08596B0687FCFF88ED9BB8421E217GridGeometryCache_previousLocationViewGeometry;
  swift_beginAccess();
  sub_100848668(v169, v171 + v172);
  swift_endAccess();
}

uint64_t sub_1000FC5D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FC658(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);

  return sub_10001B350(a1, a2, a2, v4);
}

void *sub_1000FC6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v34 = a3;
  v5 = sub_10022C350(&qword_100CA7048, &qword_100A32008);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_10022C350(&qword_100CA7050, &qword_100A32010);
  sub_1000037C4();
  v32 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v35 = 0xD000000000000010;
  v36 = 0x8000000100ABD9A0;
  v37 = xmmword_100A31F90;
  v38 = 1;
  NonEmpty.init<A>(arrayWith:_:)();
  NonEmpty.map<A>(_:)();
  NonEmpty.max<>()();
  (*(v7 + 8))(v10, v5);
  v16 = v35;
  v17 = sub_1000FD610(a1, a2, v35, 0, 1);
  v33 = v11;
  result = NonEmpty.makeIterator()();
  v19 = v36;
  v20 = *(v35 + 16);
  v21 = (v35 + 40 * v36 + 64);
  while (1)
  {
    v22 = v19;
    if (v20 == v19)
    {
      (*(v32 + 8))(v15, v33);

      v26 = 0;
      v29 = 0;
      v24 = 0;
      v23 = 0;
      goto LABEL_10;
    }

    if (v19 >= v20)
    {
      break;
    }

    if (__OFADD__(v19, 1))
    {
      goto LABEL_12;
    }

    v24 = *(v21 - 4);
    v23 = *(v21 - 3);
    v26 = *(v21 - 1);
    v25 = *v21;
    v36 = v19 + 1;
    v27 = v16 - v25;
    if (__OFSUB__(v16, v25))
    {
      goto LABEL_13;
    }

    v28 = v17[2];
    v29 = v28 - v27;
    if (__OFSUB__(v28, v27))
    {
      goto LABEL_14;
    }

    v19 = v22 + 1;
    v21 += 5;
    if (v29 < v26)
    {
      v32 = *(v32 + 8);

      (v32)(v15, v33);

LABEL_10:
      v30 = v34;
      *v34 = v26;
      v30[1] = v29;
      v30[2] = v24;
      v30[3] = v23;
      *(v30 + 32) = v20 != v22;
      return result;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1000FC9F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

void sub_1000FCA5C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v6 mainScreen];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v27.origin.x = v9;
    v27.origin.y = v11;
    v27.size.width = v13;
    v27.size.height = v15;
    Width = CGRectGetWidth(v27);
    v17 = [v6 mainScreen];
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v28.origin.x = v19;
    v28.origin.y = v21;
    v28.size.width = v23;
    v28.size.height = v25;
    Height = CGRectGetHeight(v28);
    if (Width > Height)
    {
      Height = Width;
    }

    if (Height >= 1366.0)
    {
      sub_1000FD028(a1, v2);
    }
  }
}

uint64_t sub_1000FCCC8()
{
  sub_100017580();
  v2 = type metadata accessor for WeatherDataModel();
  sub_100003810(v2);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000FDB98;
  sub_1000A7D8C();

  return sub_1000FCEA8(v5, v6, v7, v8, v3, v9);
}

uint64_t sub_1000FCDB8(uint64_t a1, unsigned __int8 a2)
{
  if (!(a2 >> 6))
  {
    if ((a2 & 1) == 0)
    {
      LOBYTE(v3) = 1;
      return v3 & 1;
    }

LABEL_11:
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (a2 >> 6 != 1)
  {
    goto LABEL_11;
  }

  if (qword_100CA24D0 != -1)
  {
    sub_1000114DC(&qword_100CA24D0);
  }

  if (byte_100D90788 != 1 || *(a1 + 8) == 1 || (type metadata accessor for DisplayMetrics(0), (DynamicTypeSize.isAccessibilitySize.getter() & 1) != 0) || byte_100D90788 == 1 && (DynamicTypeSize.isAccessibilitySize.getter() & 1) == 0 && sub_10029C3DC(*a1) && (*(a1 + 17) & 1) != 0)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 6u >> (*(a1 + 18) & 7);
  }

  return v3 & 1;
}

uint64_t sub_1000FCEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  sub_10022C350(&qword_100CC62B8, &qword_100A61CA0);
  v6[8] = swift_task_alloc();
  sub_10022C350(&qword_100CAD048, &unk_100A3C410);
  v6[9] = swift_task_alloc();
  sub_10022C350(&qword_100CAD040, &qword_100A958E0);
  v6[10] = swift_task_alloc();
  sub_10022C350(&qword_100CB0BA0, &unk_100A40F70);
  v6[11] = swift_task_alloc();
  sub_10022C350(&qword_100CE0118, &unk_100A8FBB0);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000FD194, 0, 0);
}

uint64_t sub_1000FD028(uint64_t a1, unsigned __int8 a2)
{
  if (!(a2 >> 6))
  {
    return (a2 & 1) != 0;
  }

  if (a2 >> 6 != 1)
  {
    return 0;
  }

  if (qword_100CA24D0 != -1)
  {
    sub_1000114DC(&qword_100CA24D0);
  }

  if (byte_100D90788 != 1)
  {
    return 0;
  }

  if (*(a1 + 8) == 1)
  {
    return 0;
  }

  type metadata accessor for DisplayMetrics(0);
  if (DynamicTypeSize.isAccessibilitySize.getter())
  {
    return 0;
  }

  result = sub_10029C3DC(*a1);
  if (result)
  {
    return *(a1 + 17);
  }

  return result;
}

uint64_t sub_1000FD0E8(unsigned __int8 a1, char a2, char a3)
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  if (a2)
  {
    v3 = 0x10003u >> (8 * a1);
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  return v4 | (v3 << 8);
}

uint64_t sub_1000FD138()
{

  return swift_allocObject();
}

uint64_t sub_1000FD16C()
{

  return sub_1000A0944();
}

uint64_t sub_1000FD194()
{
  sub_10019225C();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[11];
    v2 = v0[12];
    v5 = v0[9];
    v4 = v0[10];
    v6 = v0[8];
    sub_1000161C0((Strong + 368), *(Strong + 392));
    WeatherDataModel.currentWeather.getter();
    v7 = type metadata accessor for CurrentWeather();
    sub_10001B350(v2, 0, 1, v7);
    WeatherDataModel.minuteForecast.getter();
    WeatherDataModel.hourlyForecast.getter();
    v8 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
    sub_10001B350(v4, 0, 1, v8);
    WeatherDataModel.dailyForecast.getter();
    v9 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
    sub_10001B350(v5, 0, 1, v9);
    WeatherDataModel.airQuality.getter();
    WeatherDataModel.weatherAlerts.getter();
    dispatch thunk of WeatherProviderAttributionCacheManagerType.updateAttributions(for:with:minuteForecast:hourlyForecast:dailyForecast:airQuality:weatherAlerts:)();

    sub_100018144(v6, &qword_100CC62B8, &qword_100A61CA0);
    sub_100018144(v5, &qword_100CAD048, &unk_100A3C410);
    sub_100018144(v4, &qword_100CAD040, &qword_100A958E0);
    sub_100018144(v3, &qword_100CB0BA0, &unk_100A40F70);
    sub_100018144(v2, &qword_100CE0118, &unk_100A8FBB0);
  }

  else
  {
    if (qword_100CA2730 != -1)
    {
      sub_1000D4354(&qword_100CA2730);
    }

    v10 = type metadata accessor for Logger();
    sub_10000703C(v10, qword_100D90BE8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "We were deallocated! Skipping provider attribution update", v13, 2u);
      sub_100003884(v13);
    }
  }

  sub_100003B14();

  return v14();
}

uint64_t sub_1000FD46C(uint64_t a1, double a2)
{
  if (a1 != 1)
  {
    v3 = [objc_opt_self() mainScreen];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    sub_10086A658(v5, v7, v9, v11);
  }

  return *&a2;
}

void sub_1000FD520()
{
  v1 = 2 * *(v0 + 49) + 2;
  if (*(v0 + 49) - 3 < 2)
  {
    v1 = 0;
  }

  if (v1 + 2 * *(v0 + 48) == 4)
  {
    sub_100028CBC();
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else if (v1 + 2 * *(v0 + 48) == 2)
  {
    sub_100028CBC();
    if (v2)
    {
LABEL_6:
      sub_1000FDB68();
      sub_100023444();
      sub_10001A0E0();
    }
  }

  else if (v1 + 2 * *(v0 + 48))
  {
    sub_10007519C();
    sub_100006A20();
    __break(1u);
  }

  else
  {
    sub_100028CBC();
    if (v4)
    {
      goto LABEL_6;
    }
  }
}

void *sub_1000FD610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v69 = a5;
  v59[0] = a4;
  v63 = a3;
  sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  sub_1000037C4();
  v67 = v7;
  v68 = v6;
  __chkstk_darwin(v6);
  sub_100003C38();
  v65 = v8 - v9;
  sub_10000386C();
  __chkstk_darwin(v10);
  sub_100003C54(v11, v12, v13, v14, v15, v16, v17, v18, v59[0]);
  v62 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  v23 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for Date();
  sub_1000037C4();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_100003C38();
  v29 = v27 - v28;
  __chkstk_darwin(v30);
  v70 = v59 - v31;
  sub_10000386C();
  __chkstk_darwin(v32);
  v34 = v59 - v33;
  __chkstk_darwin(v35);
  v37 = v59 - v36;
  type metadata accessor for Calendar();
  sub_1000037C4();
  v59[2] = v39;
  v59[3] = v38;
  __chkstk_darwin(v38);
  v41 = v59 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.currentCalendar(with:)();
  type metadata accessor for WeatherData(0);
  v64 = a1;
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.date.getter();
  (*(v20 + 8))(v23, v62);
  v42 = v61;
  IsSameDayCache.startOfDay(_:calendar:)();
  v62 = *(v25 + 8);
  v62(v34, v42);
  v60 = v37;
  v59[1] = v41;
  if (v63 < 1)
  {
    (*(v25 + 16))(v29, v37, v42);
  }

  else
  {
    Date.wc_addDays(_:calendar:)();
  }

  v43 = v70;
  (*(v25 + 32))(v70, v29, v42);
  v44 = v66;
  WeatherDataModel.dailyForecast.getter();
  v46 = v67;
  v45 = v68;
  v47 = (*(v67 + 16))(v65, v44, v68);
  __chkstk_darwin(v47);
  v59[-2] = v43;
  v48 = sub_1000FDB9C(sub_1000FE800, &v59[-4]);
  v50 = *(v46 + 8);
  v49 = v46 + 8;
  v50(v44, v45);
  if ((v69 & 1) == 0)
  {
    sub_10010071C(v59[0], v48, sub_10010081C, sub_100100A00);
    sub_1000746B4();
    v49 = v51;
    if (v51)
    {
      v44 = v42;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v56 = swift_dynamicCastClass();
      if (!v56)
      {
        swift_unknownObjectRelease();
        v56 = _swiftEmptyArrayStorage;
      }

      v57 = v56[2];

      if (__OFSUB__(v49 >> 1, v59))
      {
        __break(1u);
      }

      else if (v57 == (v49 >> 1) - v59)
      {
        v48 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v42 = v44;
        v43 = v70;
        sub_100049644();
        if (v48)
        {
          goto LABEL_15;
        }

        v48 = _swiftEmptyArrayStorage;
LABEL_14:
        swift_unknownObjectRelease();
        goto LABEL_15;
      }

      swift_unknownObjectRelease();
      v42 = v44;
      v43 = v70;
    }

    v52 = sub_100016748();
    sub_100307420(v52, v53, v54, v49);
    v48 = v55;
    sub_100049644();
    goto LABEL_14;
  }

  sub_100049644();
LABEL_15:
  v44(v60, v42);
  (*(v49 + 8))(v45, v59);
  v44(v43, v42);
  return v48;
}

double sub_1000FDB68()
{
  if (*(v0 + 49) - 3 >= 2)
  {
    v1 = 2 * *(v0 + 49) + 1;
  }

  else
  {
    v1 = 0;
  }

  return *(v0 + 40) * (v1 + 2 * *(v0 + 48) + 1);
}

void *sub_1000FDB9C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v46 = a1;
  v47 = a2;
  v49 = type metadata accessor for DayWeather();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100003C38();
  v43 = v7 - v8;
  sub_10000386C();
  __chkstk_darwin(v9);
  v45 = v42 - v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_100003C54(v12, v13, v14, v15, v16, v17, v18, v19, v42[0]);
  v20 = sub_10022C350(&qword_100CA7008, &qword_100A31FF0) - 8;
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = v42 - v22;
  sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  sub_1000055CC(&qword_100CA7010);
  dispatch thunk of Sequence.makeIterator()();
  v24 = *(v20 + 44);
  sub_10000FAD4(&qword_100CA7018);
  sub_10001927C();
  v44 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_10000C840();
    if (*&v23[v24] == v50[0])
    {
      sub_10003FDF4(v23, &qword_100CA7008, &qword_100A31FF0);
      return v44;
    }

    sub_100069408();
    v25 = sub_1000227F4();
    v26(v25);
    (v2)(v50, 0);
    sub_10002454C();
    v27 = sub_10004E3A8();
    v5(v27);
    v28 = v2;
    v2 = v47;
    v29 = v46(v28);
    if (v3)
    {
      break;
    }

    if (v29)
    {
      (v5)(v43, v48, v49);
      sub_100017620();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = sub_1000134F8();
        sub_1000FE994(v33, v34, v35);
        v2 = v51;
      }

      v37 = *(v2 + 16);
      v36 = *(v2 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1000FE994(v36 > 1, v37 + 1, 1);
        v2 = v51;
      }

      v38 = sub_10001BC4C();
      v5(v38);
    }

    else
    {
      v30 = sub_100008020();
      v31(v30);
    }
  }

  v39 = sub_100008020();
  v40(v39);
  sub_10003FDF4(v23, &qword_100CA7008, &qword_100A31FF0);
  sub_100017620();

  return v2;
}