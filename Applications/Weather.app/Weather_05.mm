uint64_t sub_10008F374()
{
  sub_10000C778();
  v1 = type metadata accessor for CurrentWeatherEditorView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v4 = *(sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0) + 32);
    type metadata accessor for PresentationMode();
    sub_1000037E8();
    (*(v5 + 8))(v2 + v4);
  }

  v6 = *(v1 + 20);
  v7 = type metadata accessor for CurrentWeather();
  sub_1000037E8();
  v9 = *(v8 + 8);
  v9(v2 + v6, v7);

  v9(v2 + *(v1 + 28), v7);
  sub_10022C350(&qword_100CDE7B0, &qword_100A8D8F8);

  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10008F524()
{
  v1 = type metadata accessor for LearnMoreAttributorView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(type metadata accessor for LearnMoreAttributorViewModel(0) + 24);
  v4 = type metadata accessor for URL();
  if (!sub_100024D10(v2 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  swift_unknownObjectWeakDestroy();
  sub_10010CD64(*(v2 + *(v1 + 24)), *(v2 + *(v1 + 24) + 8), *(v2 + *(v1 + 24) + 16));

  sub_1000E4DF8(*(v2 + *(v1 + 28)), *(v2 + *(v1 + 28) + 8));

  return swift_deallocObject();
}

uint64_t sub_10008F69C()
{
  v1 = type metadata accessor for MainView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  sub_100006F14(v2 + 1);
  sub_100006F14(v2 + 6);
  sub_100006F14(v2 + 11);
  v3 = v1[8];
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_1000037E8();
    (*(v4 + 8))(&v2[v3]);
  }

  else
  {
  }

  v5 = v1[9];
  sub_10022C350(&qword_100CE1010, &qword_100A8B9B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for LegibilityWeight();
    if (!sub_10000CABC(v6))
    {
      (*(*(v3 - 8) + 8))(&v2[v5], v3);
    }
  }

  else
  {
  }

  v7 = v1[10];
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_10000CABC(v8))
    {
      (*(*(v3 - 8) + 8))(&v2[v7], v3);
    }
  }

  else
  {
  }

  sub_1000E4DF8(*&v2[v1[11]], v2[v1[11] + 8]);

  sub_100006F14(&v2[v1[16]]);

  return swift_deallocObject();
}

uint64_t sub_10008F90C()
{
  type metadata accessor for Location();
  sub_100003D98();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_10008F988()
{
  type metadata accessor for InteractiveMapView(0);
  sub_100003A0C();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v5 = v0[8];
  type metadata accessor for WeatherMapDisplayMode();
  sub_1000037E8();
  (*(v6 + 8))(v4 + v5);
  sub_10000EE8C();
  v7 = v4 + v0[11];
  v8 = type metadata accessor for WeatherMapPerformanceTestConditions();
  if (!sub_100020660(v8))
  {
    sub_100003B20();
    (*(v9 + 8))(v7, v2);
  }

  sub_10022C350(&qword_100CE3748, &unk_100A96710);

  v10 = v0[13];
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100017854(v4 + v10))
    {
      sub_100003B20();
      (*(v12 + 8))(v4 + v10, v11);
    }
  }

  else
  {
  }

  sub_100028D10();
  sub_10022C350(&qword_100CB3B70, qword_100A8C1C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorScheme();
    sub_1000037E8();
    (*(v13 + 8))(v0 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10008FBD4()
{
  v1 = (type metadata accessor for MainViewSheetViewModifier(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  sub_100006F14((v0 + v2 + 16));

  v4 = v1[9];
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100024D10(v3 + v4, 1, v5))
    {
      (*(*(v5 - 8) + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10008FD28()
{
  v1 = (type metadata accessor for DebugWeatherClockView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_10022C350(&qword_100CC39F0, &qword_100A5CDD0);
  sub_100003D98();
  (*(v4 + 8))(v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_10008FE3C()
{

  sub_100006F14((v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_10008FE94(uint64_t a1)
{

  swift_unknownObjectRelease();
  sub_100006F14((v1 + 72));
  swift_unknownObjectRelease();
  sub_100006F14((v1 + 128));

  return swift_deallocObject();
}

uint64_t sub_10008FF20()
{
  v1 = type metadata accessor for DebugLocationSyncingPlaygroundView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[8];
  v4 = type metadata accessor for SyncedData();
  if (!sub_100024D10(v3, 1, v4))
  {
    sub_100003B20();
    v5 = sub_100003A80();
    v6(v5);
  }

  sub_10022C350(&qword_100CE7510, &unk_100A9AD10);

  if (!sub_100009310(v1[9]))
  {
    sub_100003B20();
    v7 = sub_100003A80();
    v8(v7);
  }

  if (!sub_100009310(v1[10]))
  {
    sub_100003B20();
    v9 = sub_100003A80();
    v10(v9);
  }

  if (!sub_100009310(v1[11]))
  {
    sub_100003B20();
    v11 = sub_100003A80();
    v12(v11);
  }

  sub_100006F14((v2 + v1[13]));

  return swift_deallocObject();
}

uint64_t sub_100090160()
{
  type metadata accessor for DailyForecastEditorView(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v5 = *(sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0) + 32);
    type metadata accessor for PresentationMode();
    sub_100003D98();
    (*(v6 + 8))(v3 + v5);
  }

  v7 = *(v0 + 20);
  sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  sub_100003D98();
  (*(v8 + 8))(v3 + v7);
  v9 = *(v0 + 28);
  type metadata accessor for TimeZone();
  sub_100003D98();
  (*(v10 + 8))(v3 + v9);

  return swift_deallocObject();
}

uint64_t sub_100090314()
{
  v1 = *(v0 + 16);
  v2 = sub_10003C724();
  v6 = type metadata accessor for WeatherComponentButton(v2, v3, v4, v5);
  v7 = v0 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80));
  sub_1000E4DF8(*v7, *(v7 + 8));
  (*(*(v1 - 8) + 8))(v7 + v6[10], v1);

  v8 = v7 + v6[12];
  if (*(v8 + 24))
  {
    sub_10010CD64(*v8, *(v8 + 8), *(v8 + 16));
  }

  v9 = v7 + v6[13];
  if (*(v9 + 24))
  {
    sub_10010CD64(*v9, *(v9 + 8), *(v9 + 16));
  }

  v10 = v7 + v6[15];
  v11 = type metadata accessor for Date();
  if (!sub_100024D10(v10, 1, v11))
  {
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  sub_10022C350(&qword_100CBB758, &unk_100A51060);

  return swift_deallocObject();
}

uint64_t sub_1000904E8()
{
  type metadata accessor for ScrubberView(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_100006F14((v3 + 8));

  v4 = v3 + v0[10];

  v5 = *(type metadata accessor for ScrubberViewModel(0) + 24);
  type metadata accessor for TimeZone();
  sub_1000037E8();
  (*(v6 + 8))(v4 + v5);
  sub_100028EA4();

  v7 = v3 + v0[13];
  v8 = type metadata accessor for Date();
  sub_1000037E8();
  v10 = *(v9 + 8);
  v10(v7, v8);
  sub_10022C350(&qword_100CAD050, &qword_100A3C430);

  sub_100028EA4();
  sub_100028EA4();

  sub_100028EA4();
  sub_100028EA4();
  v11 = v3 + v0[19];

  v12 = *(sub_10022C350(&qword_100CE86D8, &unk_100A9CD58) + 32);
  v13 = type metadata accessor for ScrubberDateSelection(0);
  if (!sub_100024D10(v11 + v12, 1, v13) && !sub_100024D10(v11 + v12, 1, v8))
  {
    v10(v11 + v12, v8);
  }

  v14 = v0[20];
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_1000037E8();
    (*(v15 + 8))(v3 + v14);
  }

  else
  {
  }

  sub_100028EA4();

  return swift_deallocObject();
}

uint64_t sub_100090794()
{
  type metadata accessor for WeatherMenuCommands(0);
  sub_100003A0C();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_100006F14((v4 + 16));
  v5 = v4 + *(v0 + 24);
  v6 = type metadata accessor for UnitConfiguration.Temperature();
  if (!sub_100020660(v6))
  {
    (*(*(v2 - 8) + 8))(v5, v2);
  }

  sub_10022C350(&qword_100CD5528, &unk_100A9DEA0);

  return swift_deallocObject();
}

uint64_t sub_1000908BC()
{
  v1 = (type metadata accessor for TemperatureChartPickerView(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = type metadata accessor for TemperatureChartKind();
  sub_1000037E8();
  v5 = *(v4 + 8);
  v5(v0 + v2, v3);
  sub_100006F14((v0 + v2 + v1[7]));
  v6 = v0 + v2 + v1[8];
  if (!sub_100024D10(v6, 1, v3))
  {
    v5(v6, v3);
  }

  sub_10022C350(&qword_100CEBB68, &unk_100AA1760);

  return swift_deallocObject();
}

uint64_t sub_100090A08()
{

  sub_100006F14((v0 + 56));

  return swift_deallocObject();
}

void sub_100090A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  sub_10001E790();
  v26 = type metadata accessor for Location();
  sub_1000037C4();
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v31);
  sub_100040690();
  v32 = static OS_dispatch_queue.main.getter();
  v33 = sub_10022C350(&qword_100CE2950, &qword_100A957E8);
  sub_1000E5A8C(v32, v34, sub_100186044, v35, v33);

  v36 = sub_100086BF4(v23 & 1);
  (*(v28 + 16))(&a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v26);
  v37 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v38 = swift_allocObject();
  (*(v28 + 32))(v38 + v37, &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  Promise.then<A, B>(on:disposeOn:closure:)();

  sub_10000536C();
}

void sub_100090C6C()
{
  v2 = type metadata accessor for OSSignpostID();
  sub_100003AE8(v2);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for Location();
  sub_100003AE8(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = (*(v10 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = type metadata accessor for ProductRequirementsFactory.AppRequiredProducts();
  sub_100003AE8(v12);
  v14 = (v11 + *(v13 + 80) + 8) & ~*(v13 + 80);
  v16 = *(v15 + 64);
  Options = type metadata accessor for WeatherServiceFetchOptions();
  sub_100003AE8(Options);
  v19 = (v14 + v16 + *(v18 + 80)) & ~*(v18 + 80);
  sub_10002CB50();
  v20 = type metadata accessor for AppConfiguration();
  sub_100003810(v20);
  v21 = sub_100040C54();
  sub_100090E8C(v21, v23, *(v0 + 32), v0 + v4, v0 + v9, *(v0 + v11), v0 + v14, v0 + v19, *(v0 + v1), *(v0 + v1 + 8), v0 + ((v1 + 23) & 0xFFFFFFFFFFFFFFF8), *(v0 + ((((v1 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((((v1 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v0 + v22);
}

void sub_100090E8C(unint64_t a1, void *a2, char a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v129 = a8;
  v104 = a7;
  v130 = a6;
  v88 = a5;
  v128 = a4;
  v140 = a2;
  v15 = sub_10022C350(&qword_100CE2988, &qword_100A95830);
  v97 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v71 - v16;
  v18 = sub_10022C350(&qword_100CE2990, &qword_100A95838);
  v115 = *(v18 - 8);
  __chkstk_darwin(v18);
  v137 = &v71 - v19;
  v114 = sub_10022C350(&qword_100CE2998, &qword_100A95840);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v136 = &v71 - v20;
  v112 = sub_10022C350(&qword_100CE29A0, &qword_100A95848);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v135 = &v71 - v21;
  v110 = sub_10022C350(&qword_100CE29A8, &qword_100A95850);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v134 = &v71 - v22;
  v108 = sub_10022C350(&qword_100CE29B0, &qword_100A95858);
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v133 = &v71 - v23;
  v106 = sub_10022C350(&qword_100CAD2A0, &qword_100A3C640);
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v132 = &v71 - v24;
  v103 = sub_10022C350(&qword_100CAD290, &qword_100A3C630);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v131 = &v71 - v25;
  v101 = sub_10022C350(&qword_100CE29B8, &qword_100A95860);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v139 = &v71 - v26;
  v99 = sub_10022C350(&qword_100CE29C0, &unk_100A95868);
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v138 = &v71 - v27;
  v28 = type metadata accessor for AppConfiguration();
  v95 = *(v28 - 8);
  __chkstk_darwin(v28);
  v93 = v29;
  v127 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for OSSignpostID();
  v94 = *(v126 - 8);
  __chkstk_darwin(v126);
  v91 = v30;
  v125 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v92 = *(Options - 8);
  __chkstk_darwin(Options);
  v89 = v31;
  v123 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for ProductRequirementsFactory.AppRequiredProducts();
  v90 = *(v122 - 8);
  __chkstk_darwin(v122);
  v87 = v32;
  v121 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for Location();
  v85 = *(v120 - 8);
  __chkstk_darwin(v120);
  v86 = v33;
  v34 = &v71 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v37 = &v71 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v96 = a1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v76 = a14;
    v118 = a13;
    v78 = a12;
    v75 = a11;
    v80 = a10;
    v79 = a9;
    v117 = v28;
    v39 = Strong;
    v116 = sub_1000925AC();
    v40 = static os_signpost_type_t.begin.getter();
    v84 = v15;
    v41 = v40;
    v42 = *(v39 + 448);
    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v43 = swift_allocObject();
    v119 = v17;
    v44 = v43;
    *(v43 + 16) = xmmword_100A2C3F0;
    v45 = v42;
    v83 = v18;
    v46 = v45;
    v74 = v34;
    v47 = v88;
    v48 = Location.name.getter();
    v50 = v49;
    v44[7] = &type metadata for String;
    v44[8] = sub_100035744();
    v44[4] = v48;
    v44[5] = v50;
    v70 = 2;
    os_signpost(_:dso:log:name:signpostID:_:_:)(v41, &_mh_execute_header, v46, "Weather:fetchWeather", 20, 2, v128, "location %{private}s", 20, v70, v44);

    swift_storeEnumTagMultiPayload();
    sub_10005C1D4(v37);
    sub_100087544();
    v82 = v39;
    sub_10042F370(v39 + 328, &v143);
    v81 = *(v39 + 64);
    v51 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v52 = v85;
    (*(v85 + 16))(v34, v47, v120);
    sub_10042F370(&v143, &v142);
    v53 = v90;
    (*(v90 + 16))(v121, v104, v122);
    v54 = v92;
    (*(v92 + 16))(v123, v129, Options);
    sub_10042F370(v75, &v141);
    v55 = v94;
    (*(v94 + 16))(v125, v128, v126);
    v56 = v95;
    (*(v95 + 16))(v127, v76, v117);
    v57 = (*(v52 + 80) + 24) & ~*(v52 + 80);
    v73 = (v86 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
    v86 = (v76 + 47) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
    v72 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
    v58 = (*(v53 + 80) + v72 + 8) & ~*(v53 + 80);
    v87 = (v87 + *(v54 + 80) + v58) & ~*(v54 + 80);
    v88 = (v89 + v87 + 7) & 0xFFFFFFFFFFFFFFF8;
    v128 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
    v89 = (v128 + 47) & 0xFFFFFFFFFFFFFFF8;
    v96 = (*(v55 + 80) + v89 + 16) & ~*(v55 + 80);
    v91 = (v91 + *(v56 + 80) + v96) & ~*(v56 + 80);
    v59 = swift_allocObject();
    v77 = v51;
    *(v59 + 16) = v51;
    (*(v52 + 32))(v59 + v57, v74, v120);
    *(v59 + v73) = v140;
    sub_100013188(&v142, v59 + v76);
    *(v59 + v86) = v78;
    *(v59 + v75) = v118;
    *(v59 + v72) = v130;
    (*(v53 + 32))(v59 + v58, v121, v122);
    (*(v54 + 32))(v59 + v87, v123, Options);
    *(v59 + v88) = v116;
    sub_100013188(&v141, v59 + v128);
    v60 = (v59 + v89);
    v61 = v80;
    *v60 = v79;
    v60[1] = v61;
    (*(v55 + 32))(v59 + v96, v125, v126);
    (*(v56 + 32))(v59 + v91, v127, v117);

    v140 = v130;

    ProductRequirementsFactory.AppRequiredProducts.current.getter();
    ProductRequirementsFactory.AppRequiredProducts.minutely.getter();
    ProductRequirementsFactory.AppRequiredProducts.hourly.getter();
    ProductRequirementsFactory.AppRequiredProducts.daily.getter();
    ProductRequirementsFactory.AppRequiredProducts.airQuality.getter();
    ProductRequirementsFactory.AppRequiredProducts.changes.getter();
    ProductRequirementsFactory.AppRequiredProducts.alerts.getter();
    ProductRequirementsFactory.AppRequiredProducts.availability.getter();
    ProductRequirementsFactory.AppRequiredProducts.news.getter();
    ProductRequirementsFactory.AppRequiredProducts.historicalComparisons.getter();
    v62 = swift_allocObject();
    *(v62 + 16) = sub_1000F4808;
    *(v62 + 24) = v59;
    v130 = type metadata accessor for CurrentWeather();

    v128 = sub_10022C350(&qword_100CB0BA0, &unk_100A40F70);
    sub_10022C350(&qword_100CA7030, &qword_100A32000);
    sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
    sub_10022C350(&qword_100CC62B8, &qword_100A61CA0);
    sub_10022C350(&qword_100CACDF8, &unk_100A3E410);
    sub_10022C350(&qword_100CD00E0, &unk_100A74880);
    type metadata accessor for WeatherAvailability();
    sub_10022C350(&qword_100CE29C8, &qword_100A9AC10);
    sub_10022C350(&qword_100CABD10, &qword_100A3ABB0);
    v63 = v119;
    v64 = v137;
    v65 = v131;
    v66 = v132;
    v67 = v133;
    v68 = v134;
    v69 = v135;
    WeatherService.fetchWeather<A, B, C, D, E, F, G, H, I, J>(for:including:_:_:_:_:_:_:_:_:_:options:completion:)();

    (*(v97 + 8))(v63, v84);
    (*(v115 + 8))(v64, v83);
    (*(v113 + 8))(v136, v114);
    (*(v111 + 8))(v69, v112);
    (*(v109 + 8))(v68, v110);
    (*(v107 + 8))(v67, v108);
    (*(v105 + 8))(v66, v106);
    (*(v102 + 8))(v65, v103);
    (*(v100 + 8))(v139, v101);
    (*(v98 + 8))(v138, v99);
    sub_100006F14(&v143);
  }

  else
  {
    sub_1005B3D94(0xD000000000000022, 0x8000000100AE3610);
  }
}

uint64_t sub_100092230()
{
  v32 = type metadata accessor for Location();
  sub_1000037C4();
  v2 = v1;
  v29 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  sub_100071A38();
  sub_1001955B0();
  v31 = v3;
  sub_1001955B0();
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = v5;
  v33 = type metadata accessor for ProductRequirementsFactory.AppRequiredProducts();
  sub_1000037C4();
  v24 = v6;
  v22 = (*(v6 + 80) + v5 + 8) & ~*(v6 + 80);
  v8 = *(v7 + 64);
  Options = type metadata accessor for WeatherServiceFetchOptions();
  sub_1000037C4();
  v10 = v9;
  v25 = (v8 + *(v9 + 80) + v22) & ~*(v9 + 80);
  sub_100071A38();
  sub_1001955B0();
  v26 = v11;
  v12 = (v11 + 47) & 0xFFFFFFFFFFFFFFF8;
  v28 = type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v14 = v13;
  v15 = (*(v13 + 80) + v12 + 16) & ~*(v13 + 80);
  v17 = *(v16 + 64);
  v23 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v19 = v18;
  v20 = (v17 + *(v19 + 80) + v15) & ~*(v19 + 80);

  (*(v2 + 8))(v0 + v29, v32);

  sub_100006F14((v0 + v31));

  (*(v24 + 8))(v0 + v22, v33);
  (*(v10 + 8))(v0 + v25, Options);

  sub_100006F14((v0 + v26));

  (*(v14 + 8))(v0 + v15, v28);
  (*(v19 + 8))(v0 + v20, v23);

  return swift_deallocObject();
}

void sub_1000925F4(uint64_t a1)
{

  sub_1006A7AB4();
}

uint64_t sub_100092684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 - 128) = v3;

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t sub_1000926CC()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = 2112;

  return swift_errorRetain();
}

uint64_t sub_1000926F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100092818(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CAE2B0, &unk_100A418E0);
  v2 = type metadata accessor for DataEventTrait();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A2C3F0;
  (*(v3 + 104))(v5 + v4, enum case for DataEventTrait.unique(_:), v2);
  type metadata accessor for OrientationData();
  sub_100068374(&qword_100CB5430, &type metadata accessor for OrientationData, &protocol conformance descriptor for OrientationData);
  AccessTracker.push<A>(data:traits:file:line:)();
}

uint64_t sub_1000929B4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for OrientationData();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CB5428, &qword_100A48D58);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - v10;
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_100068374(&qword_100CB5430, &type metadata accessor for OrientationData, &protocol conformance descriptor for OrientationData);
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

uint64_t sub_100092C84(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, void, unint64_t, void, void, unint64_t, unint64_t, void, void))
{
  started = type metadata accessor for StartMethod();
  sub_100003AE8(started);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = type metadata accessor for LocationAccessData();
  sub_100003AE8(v10);
  v12 = (v9 + *(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = *(v13 + 64);
  v15 = type metadata accessor for CellularRadioAccessTechnology();
  sub_100003AE8(v15);
  v17 = v16;
  v19 = v18;
  v20 = (v12 + v14 + *(v17 + 80)) & ~*(v17 + 80);
  v21 = (*(v19 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), v2 + v7, *(v2 + v9), *(v2 + v9 + 8), v2 + v12, v2 + v20, *(v2 + v21), *(v2 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100092E2C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v41 = a7;
  v48 = a5;
  v49 = a6;
  v45 = a3;
  v44 = a2;
  v46 = a9;
  v47 = a4;
  v14 = sub_10022C350(&qword_100CB54A8, &qword_100A48DA0);
  __chkstk_darwin(v14 - 8);
  v16 = &v41 - v15;
  v17 = sub_10022C350(&qword_100CB54B0, &qword_100A48DA8);
  __chkstk_darwin(v17 - 8);
  v19 = &v41 - v18;
  v20 = sub_10022C350(&qword_100CB54B8, &qword_100A48DB0);
  __chkstk_darwin(v20 - 8);
  v22 = &v41 - v21;
  v23 = type metadata accessor for SessionData();
  v42 = *(v23 - 8);
  v43 = v23;
  __chkstk_darwin(v23);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  v26 = AccessTracker.isDiagnosticSubmissionAllowed.getter();
  started = type metadata accessor for StartMethod();
  v28 = started;
  if (v26)
  {
    (*(*(started - 8) + 16))(v22, v41, started);
    sub_10001B350(v22, 0, 1, v28);
    v29 = type metadata accessor for LocationAccessData();
    (*(*(v29 - 8) + 16))(v19, a10, v29);
    sub_10001B350(v19, 0, 1, v29);
    v30 = type metadata accessor for CellularRadioAccessTechnology();
    (*(*(v30 - 8) + 16))(v16, a11, v30);
    v31 = v16;
    v32 = 0;
    v33 = v30;
  }

  else
  {
    sub_10001B350(v22, 1, 1, started);
    v34 = type metadata accessor for LocationAccessData();
    sub_10001B350(v19, 1, 1, v34);
    v33 = type metadata accessor for CellularRadioAccessTechnology();
    v31 = v16;
    v32 = 1;
  }

  sub_10001B350(v31, v32, 1, v33);

  SessionData.init(utcOffset:languageCode:countryCode:startMethod:productType:locationAccess:cellularRadioAccessTechnology:userSegmentationTreatmentIDs:userSegmentationSegmentSetIDs:)();
  sub_10022C350(&qword_100CAE2B0, &unk_100A418E0);
  v35 = type metadata accessor for DataEventTrait();
  v36 = *(v35 - 8);
  v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100A2C3F0;
  (*(v36 + 104))(v38 + v37, enum case for DataEventTrait.unique(_:), v35);
  sub_100068374(&qword_100CB54C0, &type metadata accessor for SessionData, &protocol conformance descriptor for SessionData);
  v39 = v43;
  AccessTracker.push<A>(data:traits:file:line:)();

  return (*(v42 + 8))(v25, v39);
}

void sub_100093304(uint64_t a1)
{
  v3 = type metadata accessor for MainAction(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0xD000000000000017;
  v37 = 0x8000000100ADB510;
  sub_1000955E0(a1, &v32, &unk_100CD81B0, &unk_100A3B000);
  if (v33)
  {
    sub_100013188(&v32, &v34);
    sub_1000161C0(&v34, v35);
    dispatch thunk of ShortDescribable.shortDescription.getter();
    sub_1000161C0(&v32, v33);
    v7 = dispatch thunk of ShortDescriptionType.describe(withIndentation:)();
    v9 = v8;
    sub_100006F14(&v32);
    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);

    sub_100006F14(&v34);
  }

  else
  {
    sub_1000180EC(&v32, &unk_100CD81B0, &unk_100A3B000);
  }

  v11 = *(a1 + 40);
  if (*(v11 + 16))
  {
    v12._countAndFlagsBits = 23328;
    v12._object = 0xE200000000000000;
    String.append(_:)(v12);
    v13 = *(v11 + 16);
    if (v13)
    {
      v31[1] = v1;
      v14 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v15 = *(v4 + 72);

      do
      {
        sub_100050E14(v14, v6);
        sub_10006CD24(&qword_100CBCED0, 255, type metadata accessor for MainAction, byte_100A53D4C);
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v18 = v17;
        sub_10004FA40(v6, type metadata accessor for MainAction);
        v34._countAndFlagsBits = v16;
        v34._object = v18;

        v19._countAndFlagsBits = 8236;
        v19._object = 0xE200000000000000;
        String.append(_:)(v19);

        String.append(_:)(v34);

        v14 += v15;
        --v13;
      }

      while (v13);
    }

    String.index(_:offsetBy:)();
    String.subscript.getter();

    v20 = static String._fromSubstring(_:)();
    v22 = v21;

    v36 = v20;
    v37 = v22;
    v23._countAndFlagsBits = 93;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
  }

  v25 = v36;
  v24 = v37;

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v34._countAndFlagsBits = v29;
    *v28 = 141558275;
    *(v28 + 4) = 1752392040;
    *(v28 + 12) = 2081;
    v30 = sub_100078694(v25, v24, &v34._countAndFlagsBits);

    *(v28 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v26, v27, "%{private,mask.hash}s", v28, 0x16u);
    sub_100006F14(v29);
  }

  else
  {
  }
}

void sub_10009379C(void *a1)
{
  v2 = v1;
  v4 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  __chkstk_darwin(v4 - 8);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v12);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v13);
  v105 = &v89 - v14;
  v101 = type metadata accessor for Location();
  sub_1000037C4();
  v98 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  v92 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v100 = &v89 - v20;
  v111 = type metadata accessor for LocationsAction(0);
  sub_1000037E8();
  __chkstk_darwin(v21);
  v23 = (&v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v26 = &v89 - v25;
  v27 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v27);
  v30 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = a1;
  v31 = a1[5];
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = v31 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v99 = v98 + 32;
    v112 = *(v28 + 72);
    v91 = v98 + 16;
    v90 = v17 + 7;
    v89 = (v98 + 8);
    v108 = v6;
    v109 = v23;
    v107 = v26;
    v110 = v27;
    do
    {
      sub_100050ED0(v33, v30, type metadata accessor for MainAction);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        sub_10016DB58(v30, v26, type metadata accessor for LocationsAction);
        sub_100050ED0(v26, v23, type metadata accessor for LocationsAction);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v97 = *(v23 + *(sub_10022C350(&qword_100CC8CE8, &unk_100A66A80) + 48));
            v52 = v98;
            v96 = *(v98 + 32);
            v26 = v100;
            v53 = v23;
            v54 = v101;
            v96(v100, v53, v101);
            v55 = type metadata accessor for TaskPriority();
            sub_10001B350(v105, 1, 1, v55);
            v56 = v92;
            (*(v52 + 16))(v92, v26, v54);
            sub_100035AD0(v106, __src, &qword_100CA48E0, &qword_100A5C570);
            v57 = (*(v52 + 80) + 48) & ~*(v52 + 80);
            v58 = v2;
            v59 = (v90 + v57) & 0xFFFFFFFFFFFFFFF8;
            v60 = swift_allocObject();
            v61 = sub_100018794(v60);
            *(v61 + 32) = v97;
            *(v61 + 40) = v58;
            v96((v61 + v57), v56, v54);
            v62 = &v26[v59];
            v2 = v58;
            v63 = v55;
            memcpy(v62, __src, 0x48uLL);
            v64 = v93;
            sub_100035AD0(v105, v93, &qword_100CA3538, &qword_100A2D560);
            LODWORD(v56) = sub_100024D10(v64, 1, v63);

            if (v56 == 1)
            {
              sub_1000180EC(v64, &qword_100CA3538, &qword_100A2D560);
            }

            else
            {
              TaskPriority.rawValue.getter();
              sub_100003B20();
              (*(v77 + 8))(v64, v63);
              sub_100037DE0();
            }

            v78 = *(v26 + 2);
            v6 = *(v26 + 3);
            swift_unknownObjectRetain();

            if (v78)
            {
              swift_getObjectType();
              v79 = v78;
              dispatch thunk of Actor.unownedExecutor.getter();
              sub_10000EE08();
            }

            else
            {
              v79 = 0;
              v6 = 0;
            }

            sub_100017E80();
            sub_1000180EC(v105, &qword_100CA3538, &qword_100A2D560);
            sub_1000244CC();
            v86 = swift_allocObject();
            *(v86 + 16) = &unk_100A89578;
            *(v86 + 24) = v26;
            if (v6 | v79)
            {
              v114 = 0;
              v113 = 0;
              v115 = v79;
              v116 = v6;
            }

            sub_100019FBC();
            swift_task_create();

            (*v89)(v100, v101);
            goto LABEL_48;
          case 2u:
            sub_100028C04();
            sub_10004FBA0(v23, v44);
            sub_100818CA8(v106);
            goto LABEL_17;
          case 3u:
            v45 = *v23;
            v46 = v23[1];
            v47 = type metadata accessor for TaskPriority();
            v48 = v103;
            sub_10002CB04(v103);
            v49 = swift_allocObject();
            v50 = sub_100018794(v49);
            v50[4] = v2;
            v50[5] = v45;
            v50[6] = v46;
            v51 = v95;
            sub_100035AD0(v48, v95, &qword_100CA3538, &qword_100A2D560);
            sub_100069AB4(v51);

            if (v45 == 1)
            {
              sub_1000180EC(v51, &qword_100CA3538, &qword_100A2D560);
            }

            else
            {
              TaskPriority.rawValue.getter();
              sub_100003B20();
              (*(v74 + 8))(v51, v47);
              sub_100037DE0();
            }

            v75 = *(v26 + 2);
            v6 = *(v26 + 3);
            swift_unknownObjectRetain();

            if (v75)
            {
              swift_getObjectType();
              v76 = v75;
              dispatch thunk of Actor.unownedExecutor.getter();
              sub_10000EE08();
            }

            else
            {
              v76 = 0;
              v6 = 0;
            }

            sub_100017E80();
            sub_1000180EC(v103, &qword_100CA3538, &qword_100A2D560);
            sub_1000244CC();
            v85 = swift_allocObject();
            *(v85 + 16) = &unk_100A89540;
            *(v85 + 24) = v26;
            if (v6 | v76)
            {
              v121 = 0;
              v122 = 0;
              v123 = v76;
              v124 = v6;
            }

            goto LABEL_34;
          case 4u:
            v37 = *v23;
            v38 = type metadata accessor for TaskPriority();
            v39 = v102;
            sub_10002CB04(v102);
            v40 = swift_allocObject();
            v41 = sub_100018794(v40);
            *(v41 + 32) = v2;
            *(v41 + 40) = v37;
            v42 = v39;
            v43 = v94;
            sub_100035AD0(v42, v94, &qword_100CA3538, &qword_100A2D560);
            sub_100069AB4(v43);

            if (v37 == 1)
            {
              sub_1000180EC(v43, &qword_100CA3538, &qword_100A2D560);
            }

            else
            {
              TaskPriority.rawValue.getter();
              sub_100003B20();
              (*(v71 + 8))(v43, v38);
              sub_100037DE0();
            }

            v72 = *(v26 + 2);
            v6 = *(v26 + 3);
            swift_unknownObjectRetain();

            if (v72)
            {
              swift_getObjectType();
              v73 = v72;
              dispatch thunk of Actor.unownedExecutor.getter();
              sub_10000EE08();
            }

            else
            {
              v73 = 0;
              v6 = 0;
            }

            sub_100017E80();
            sub_1000180EC(v102, &qword_100CA3538, &qword_100A2D560);
            sub_1000244CC();
            v84 = swift_allocObject();
            *(v84 + 16) = &unk_100A89558;
            *(v84 + 24) = v26;
            if (v6 | v73)
            {
              v117 = 0;
              v118 = 0;
              v119 = v73;
              v120 = v6;
            }

LABEL_34:
            sub_100019FBC();
            goto LABEL_47;
          case 5u:
            sub_10001CE44();
            sub_10004FBA0(v23, v65);
            v66 = type metadata accessor for TaskPriority();
            v67 = v104;
            sub_10002CB04(v104);
            sub_100035AD0(v106, __src, &qword_100CA48E0, &qword_100A5C570);
            v68 = swift_allocObject();
            v69 = sub_100018794(v68);
            *(v69 + 32) = v2;
            memcpy((v69 + 40), __src, 0x48uLL);
            sub_100035AD0(v67, v6, &qword_100CA3538, &qword_100A2D560);
            sub_100069AB4(v6);

            if (v67 == 1)
            {
              sub_1000180EC(v6, &qword_100CA3538, &qword_100A2D560);
            }

            else
            {
              TaskPriority.rawValue.getter();
              sub_100003B20();
              (*(v80 + 8))(v6, v66);
              sub_100037DE0();
            }

            v81 = *(v26 + 2);
            swift_unknownObjectRetain();

            if (v81)
            {
              swift_getObjectType();
              v82 = dispatch thunk of Actor.unownedExecutor.getter();
              v6 = v83;
              swift_unknownObjectRelease();
            }

            else
            {
              v82 = 0;
              v6 = 0;
            }

            sub_1000180EC(v104, &qword_100CA3538, &qword_100A2D560);
            sub_1000244CC();
            v87 = swift_allocObject();
            *(v87 + 16) = &unk_100A89528;
            *(v87 + 24) = v26;
            if (v6 | v82)
            {
              v125 = 0;
              v126 = 0;
              v127 = v82;
              v128 = v6;
            }

            sub_100019FBC();
            sub_100017E80();
LABEL_47:
            swift_task_create();

LABEL_48:
            sub_10001CE44();
            sub_10004FBA0(v26, v88);
            v23 = v109;
            goto LABEL_49;
          case 6u:
            sub_100028C04();
            sub_10004FBA0(v26, v70);
LABEL_17:
            sub_100017E80();
            goto LABEL_18;
          default:
            sub_10001CE44();
            sub_10004FBA0(v26, v34);
            v35 = &type metadata accessor for CurrentLocation;
            v36 = v23;
            goto LABEL_18;
        }
      }

      v35 = type metadata accessor for MainAction;
      v36 = v30;
LABEL_18:
      sub_10004FBA0(v36, v35);
LABEL_49:
      v33 += v112;
      --v32;
    }

    while (v32);
  }
}

uint64_t sub_1000944A0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    sub_100006F14((v0 + 40));
  }

  return swift_deallocObject();
}

uint64_t sub_100094510()
{

  sub_1000244CC();

  return swift_deallocObject();
}

uint64_t sub_10009454C()
{
  v1 = type metadata accessor for Location();
  sub_1000037C4();
  v3 = v2;
  v5 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);
  if (*(v0 + v6 + 24))
  {
    sub_100006F14((v0 + v6));
  }

  return swift_deallocObject();
}

void sub_100094650(uint64_t a1)
{
  v37 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000038E4();
  v36 = v5;
  v35 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000038E4();
  v34 = v9;
  v10 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v29 - v15;
  v17 = *(a1 + 40);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = *(v14 + 72);
    v30 = (v3 + 8);
    v31 = v41;
    v29 = (v7 + 8);
    v32 = v12;
    v33 = v10;
    v21 = v34;
    do
    {
      sub_10004F14C(v19, v16);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_10004F14C(v16, v12);
        type metadata accessor for EnvironmentAction(0);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          sub_100040690();
          v22 = static OS_dispatch_queue.main.getter();
          v41[2] = sub_1002E5E20;
          v41[3] = v38;
          v39 = v22;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v41[0] = sub_1000742F0;
          v41[1] = &unk_100C4DCC8;
          v23 = _Block_copy(aBlock);

          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          sub_100074390();
          sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
          sub_1000743E8();
          v24 = v20;
          v25 = v36;
          v26 = v37;
          v12 = v32;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v27 = v39;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v23);

          v28 = v25;
          v20 = v24;
          (*v30)(v28, v26);
          (*v29)(v21, v35);
        }

        sub_10004F460(v12, type metadata accessor for EnvironmentAction);
      }

      sub_10004F460(v16, type metadata accessor for MainAction);
      v19 += v20;
      --v18;
    }

    while (v18);
  }
}

void sub_100094A24(uint64_t a1)
{
  v36 = type metadata accessor for WeatherDataAction(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v37 = &v32 - v6;
  v35 = type metadata accessor for EnvironmentAction(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 40);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = *(v14 + 72);
    do
    {
      sub_100066BF8(v19, v16, type metadata accessor for MainAction);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
        case 3u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
        case 8u:
        case 0xAu:
        case 0xBu:
        case 0xDu:
        case 0xEu:
        case 0x10u:
        case 0x11u:
          v21 = type metadata accessor for MainAction;
          v22 = v16;
          goto LABEL_5;
        case 2u:
          sub_1000500A8(v16, v12, type metadata accessor for EnvironmentAction);
          sub_100066BF8(v12, v9, type metadata accessor for EnvironmentAction);
          if (swift_getEnumCaseMultiPayload() == 12)
          {
            sub_1001A030C(1);
          }

          v23 = type metadata accessor for EnvironmentAction;
          sub_10004F72C(v12, type metadata accessor for EnvironmentAction);
          v22 = v9;
LABEL_15:
          v21 = v23;
LABEL_5:
          sub_10004F72C(v22, v21);
          break;
        case 9u:
          v24 = v37;
          sub_1000500A8(v16, v37, type metadata accessor for WeatherDataAction);
          sub_100066BF8(v24, v4, type metadata accessor for WeatherDataAction);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 4u:

              v27 = sub_10022C350(&qword_100CAC0C8, &unk_100A3AFC0);
              v28 = v27[12];
              v33 = v27[16];
              v34 = v28;
              v29 = v27[20];
              sub_1001A030C(1);
              sub_10001ED60();
              sub_100010144();
              sub_10004F72C(&v4[v29], v30);
              sub_10004F72C(&v4[v33], type metadata accessor for PreprocessedWeatherData);
              v21 = type metadata accessor for WeatherData;
              v26 = v34;
              goto LABEL_19;
            case 5u:
              sub_10001ED60();

              sub_10022C350(&qword_100CAC0B8, &unk_100A3AFB0);
              sub_100010144();
LABEL_19:
              v22 = &v4[v26];
              goto LABEL_5;
            case 6u:
              sub_10001ED60();

              v25 = *(sub_10022C350(&qword_100CAC0C0, &unk_100A53DF0) + 48);
              type metadata accessor for AvailableDataSets();
              goto LABEL_21;
            case 8u:
              sub_10001ED60();

              v25 = *(sub_10022C350(&qword_100CAC0B0, &unk_100A41710) + 48);
              type metadata accessor for WeatherStatisticsModel();
LABEL_21:
              sub_1000037E8();
              (*(v31 + 8))(&v4[v25]);
              break;
            default:
              v23 = type metadata accessor for WeatherDataAction;
              sub_10004F72C(v37, type metadata accessor for WeatherDataAction);
              v22 = v4;
              goto LABEL_15;
          }

          break;
        case 0xCu:
        case 0xFu:
        case 0x12u:
        case 0x13u:
          break;
        default:
          if (*v16 == 1)
          {
            sub_1001A030C(0);
          }

          break;
      }

      v19 += v20;
      --v18;
    }

    while (v18);
  }
}

uint64_t sub_100094F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_100094F94(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_100094FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_100095048()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000950A0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000950F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100095158()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000951B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100095210(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100095270()
{
  v1 = sub_100003B38();
  v2(v1);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return v0;
}

uint64_t sub_1000952C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100095334(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6898, &unk_100A3FA90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000953B8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003A00();
  sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = a3[6];
LABEL_5:

    return sub_100024D10(v4 + v9, v3, v8);
  }

  sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003928();
  if (*(v11 + 84) == v3)
  {
    v8 = v10;
    v9 = a3[9];
    goto LABEL_5;
  }

  v13 = *(v4 + a3[10]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1000954DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = sub_100003A24(a1, a2);
  v9 = sub_10022C350(v7, v8);
  sub_100007074(v9, a4);
  v10 = sub_10000703C(v9, a4);
  v11 = a5(0);

  return sub_10001B350(v10, 1, 1, v11);
}

uint64_t sub_100095588()
{
  sub_100003A00();
  sub_10022C350(v1, v2);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return v0;
}

uint64_t sub_1000955E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000399C(a1, a2, a3, a4);
  sub_1000037E8();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_100095630(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v9 = sub_100003A24(a1, a2);
  v11 = sub_10022C350(v9, v10);
  __chkstk_darwin(v11 - 8);
  v13 = sub_100060DE0(a1, &v15 - v12, a2, a3);
  a4(v13);
  EnvironmentValues.subscript.setter();
  return sub_100283C38(a1, a2);
}

void sub_100095730()
{
  sub_10000C778();
  sub_100037EDC();
  sub_10003BC6C();
  sub_100006C90();
  __chkstk_darwin(v2);
  sub_100008064();
  __chkstk_darwin(v3);
  sub_10001D3DC();
  sub_100069CDC(v0 + *(v4 + 120));
  sub_100052210();
  v5 = sub_100030700();
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = sub_10022C350(&qword_100CA4CC8, &unk_100A2EF40);
      sub_100024C98(*(v6 + 48));
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_100020D54();
    v7();
    v8 = sub_1000301AC();
    v1(v8);

    sub_10022C350(&qword_100CA4CC8, &unk_100A2EF40);
    sub_10003A488();
    sub_100025498(v9);
    sub_100018074();
    v10 = sub_10003203C();
    sub_1000C890C(v10, v11, &qword_100CA4CB8, &qword_100A2EF30);
    swift_endAccess();
  }

  sub_10000536C();
}

uint64_t sub_1000958A8@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t)@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t *__return_ptr)@<X2>, uint64_t *a4@<X8>)
{
  result = sub_10009F4CC(a1, a2, *a3, a3[1], a3[2], a3[3], 0x776569566E69614DLL, 0xED00006C65646F4DLL);
  *a4 = result;
  return result;
}

uint64_t sub_100095900(uint64_t a1)
{
  v2 = v1;
  v263 = *v1;
  v4 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  v7 = sub_100003918(&v252 - v6);
  v8 = type metadata accessor for WeatherDataAction(v7);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_100003848();
  v287 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_10000E70C();
  v286 = v12;
  v13 = sub_1000038CC();
  v14 = type metadata accessor for EnvironmentAction(v13);
  v15 = sub_10001BA94(v14, &v300);
  __chkstk_darwin(v15);
  sub_100003848();
  v277 = v16;
  sub_10000386C();
  __chkstk_darwin(v17);
  sub_10000E70C();
  v282 = v18;
  sub_1000038CC();
  v270 = type metadata accessor for Location();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = sub_100003918(v23 - v22);
  v25 = type metadata accessor for LocationViewAction(v24);
  v26 = sub_10001BA94(v25, &v299);
  __chkstk_darwin(v26);
  sub_100003848();
  v278 = v27;
  sub_10000386C();
  __chkstk_darwin(v28);
  sub_10000E70C();
  v285 = v29;
  v30 = sub_1000038CC();
  v31 = type metadata accessor for ViewState.SecondaryViewState(v30);
  v32 = sub_10001BA94(v31, &v286);
  __chkstk_darwin(v32);
  sub_1000037D8();
  v35 = sub_100003918(v34 - v33);
  v36 = type metadata accessor for ModalViewState(v35);
  v37 = sub_10001BA94(v36, v292);
  __chkstk_darwin(v37);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_100003908();
  __chkstk_darwin(v39);
  sub_100003908();
  __chkstk_darwin(v40);
  sub_10000E70C();
  v42 = sub_100003918(v41);
  v43 = type metadata accessor for ViewState(v42);
  v44 = sub_10001BA94(v43, &v290);
  __chkstk_darwin(v44);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_10000E70C();
  v47 = sub_100003918(v46);
  v48 = type metadata accessor for NotificationsOptInAction(v47);
  v49 = sub_10001BA94(v48, &v301);
  __chkstk_darwin(v49);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v50);
  v283 = &v252 - v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_10000E70C();
  v54 = sub_100003918(v53);
  v55 = type metadata accessor for ModalViewAction(v54);
  v56 = sub_10001BA94(v55, &v298);
  __chkstk_darwin(v56);
  sub_100003848();
  v280 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_10000E70C();
  v284 = v59;
  v60 = sub_1000038CC();
  v61 = type metadata accessor for LocationViewerViewAction(v60);
  v62 = sub_10001BA94(v61, &v288);
  __chkstk_darwin(v62);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_10000E70C();
  v65 = sub_100003918(v64);
  v66 = type metadata accessor for ListViewAction(v65);
  v67 = sub_10001BA94(v66, &v287);
  __chkstk_darwin(v67);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_10000E70C();
  v70 = sub_100003918(v69);
  v71 = type metadata accessor for ViewAction(v70);
  v72 = sub_10001BA94(v71, &v297);
  __chkstk_darwin(v72);
  sub_100003848();
  v279 = v73;
  sub_10000386C();
  __chkstk_darwin(v74);
  sub_10000E70C();
  v288 = v75;
  v76 = sub_1000038CC();
  type metadata accessor for MainAction(v76);
  sub_1000037C4();
  v78 = v77;
  __chkstk_darwin(v79);
  sub_1000037D8();
  v82 = v81 - v80;
  result = sub_100056DD4(a1);
  v84 = v78;
  v272 = a1;
  v85 = *(a1 + 40);
  v86 = *(v85 + 16);
  if (v86)
  {
    v87 = 0;
    v290 = v85 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
    v259 = v274 + 8;
    v258 = v275 + 8;
    v261 = v20 + 32;
    v260 = v20 + 16;
    v262 = v20 + 8;
    v255 = 0x8000000100ABA410;
    v257 = "e";
    v256 = xmmword_100A3AEB0;
    v281 = v2;
    v273 = v8;
    v289 = v84;
    while (2)
    {
      if (v87 >= *(v85 + 16))
      {
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
        JUMPOUT(0x10009734CLL);
      }

      v88 = v87++;
      sub_100050B70(v290 + *(v84 + 72) * v88, v82, type metadata accessor for MainAction);
      result = swift_getEnumCaseMultiPayload();
      switch(result)
      {
        case 1:
        case 3:
        case 4:
        case 10:
        case 11:
        case 13:
        case 14:
        case 16:
        case 17:
          sub_1000142B0();
          v90 = v82;
LABEL_6:
          result = sub_10004F4C0(v90, v89);
          goto LABEL_26;
        case 2:
          v114 = sub_10002FDCC();
          sub_100050048(v114, v282, v115);
          v116 = sub_1000167A4();
          sub_100050B70(v116, v277, v117);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
            case 2u:
            case 6u:
            case 7u:
            case 8u:
            case 9u:
            case 0xDu:
            case 0xEu:
            case 0xFu:
            case 0x10u:
              goto LABEL_15;
            case 3u:
            case 4u:
            case 5u:
            case 0xAu:
            case 0xCu:
              v122 = type metadata accessor for EnvironmentAction;
              sub_10004F4C0(v282, type metadata accessor for EnvironmentAction);
              v97 = v277;
              goto LABEL_23;
            case 0xBu:
              if (qword_100CA1F88 != -1)
              {
                swift_once();
              }

              sub_10016F958(&qword_100CAC0A8, byte_100A3AF20);
              v20 = v263;
              v194 = v281;
              Configurable.setting<A>(_:)();
              v195 = v294 + 1;
              if (__OFADD__(v294, 1))
              {
                goto LABEL_125;
              }

              ++v294;
              sub_1000135A0();
              sub_10016F958(&qword_100CAC0D0, v196);
              Updatable.save<A>(setting:value:)();
              v2 = v194;
              if (v195 != 2)
              {
                goto LABEL_69;
              }

              sub_100040690();
              v254 = static OS_dispatch_queue.main.getter();
              sub_10022C350(&unk_100CE49D0, &qword_100A556A0);
              v20 = v194;
              v197 = swift_allocObject();
              *(v197 + 16) = v256;

              v198 = OnlyOnceDeferredPromise.promise.getter();

              if (!v198)
              {
                goto LABEL_127;
              }

              *(v197 + 32) = v198;

              v199 = OnlyOnceDeferredPromise.promise.getter();

              if (!v199)
              {
                goto LABEL_126;
              }

              *(v197 + 40) = v199;
              v200 = v254;
              when<A>(on:_:)();

              v201 = static OS_dispatch_queue.main.getter();

              Promise.then<A>(on:closure:)();

              v2 = v20;
LABEL_69:
              v202 = sub_10000E8D8();
              break;
            default:
              v20 = *v277;
              v204 = *(v272 + 56) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
              swift_beginAccess();
              if (*(v204 + 1) == 2)
              {
                v204 = 0xED000064656E696DLL;
                switch(v20)
                {
                  case 1:

                    goto LABEL_107;
                  case 2:
                    v204 = v255;
                    break;
                  case 3:
                    v204 = 0xE600000000000000;
                    break;
                  case 4:
                    v204 = 0xEA00000000006465;
                    break;
                  default:
                    break;
                }

                v232 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v232)
                {
LABEL_107:
                  sub_10000FB84();
                  v2 = v281;
                  if ((dispatch thunk of NotificationsOptInManagerType.loweredPermissionsSheetShown()() & 1) == 0)
                  {
                    sub_10000FB84();
                    v2 = v281;
                    dispatch thunk of NotificationsOptInManagerType.didShowLoweredPermissionsSheet()();
                    v233 = v271;
                    swift_storeEnumTagMultiPayload();
                    v204 = v2;
                    sub_1002F49C0(v233);
                    sub_10001E7B4();
                    sub_10004F4C0(v233, v234);
                  }
                }
              }

              sub_10003A140();
              sub_10002289C();
              sub_1000113EC();
              sub_100050B70(v235, v236, v237);
              if (sub_100020E64(v204) == 1)
              {
                v8 = v273;
                if (v20 == 2)
                {

                  asyncMain(block:)();
                }
              }

              else
              {
                sub_10001937C();
                sub_10004F4C0(v204, v238);
                v8 = v273;
              }

              OnlyOnceDeferredPromise.resolve(_:)();

LABEL_15:
              v97 = sub_10000E8D8();
              goto LABEL_24;
          }

          goto LABEL_95;
        case 5:
          v91 = sub_10002FDCC();
          sub_100050048(v91, v283, v92);
          sub_1000167A4();
          sub_1000113EC();
          sub_100050B70(v93, v94, v95);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              sub_10001E7B4();
              sub_10004F4C0(v283, v180);
              sub_100018398();
              result = v181(v276, v270);
              goto LABEL_25;
            case 2u:
              v122 = type metadata accessor for NotificationsOptInAction;
              sub_10004F4C0(v283, type metadata accessor for NotificationsOptInAction);
              v97 = v276;
              goto LABEL_23;
            case 3u:
              sub_10001E7B4();
              sub_10004F4C0(v283, v177);
              type metadata accessor for Date();
              sub_1000037E8();
              result = (*(v178 + 8))(v276, v179);
              goto LABEL_25;
            case 7u:
              v8 = v2[12];
              sub_10001BCD0();
              dispatch thunk of NotificationsOptInManagerType.didDismissResubscriptionTip()();
              goto LABEL_8;
            case 0xAu:
            case 0xFu:

              asyncMain(block:)();

              goto LABEL_8;
            case 0xBu:
              v182 = *(v272 + 64);
              v183 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
              sub_100051DA8();
              sub_10003BD40(v182 + v183, &v295, v184);
              v185 = v266;
              if (*(v259 + *(v266 + 36)) == 1)
              {
                v186 = *v8;
                v187 = objc_opt_self();
                v254 = v183;
                v188 = v182;
                v189 = v8;
                v190 = v187;

                v191 = [v190 currentDevice];
                [v191 userInterfaceIdiom];

                v8 = *(v189 + *(v185 + 28));
                sub_1000080BC();
                v192 = v189;
                v182 = v188;
                v183 = v254;
                sub_10004F4C0(v192, v193);

                if (v8)
                {
                  goto LABEL_78;
                }
              }

              else
              {
                sub_1000080BC();
                sub_10004F4C0(v8, v205);
              }

              sub_10002289C();
              sub_10003BD40(v182 + v206, &v281, v207);
              v186 = sub_100020E64(v8);
              sub_10001937C();
              sub_10004F4C0(v8, v208);
              if (v186 == 6)
              {
                v186 = v281;

                asyncMain(block:)();
              }

LABEL_78:
              sub_100051DA8();
              v254 = v182;
              sub_10003BD40(v182 + v183, &v296, v209);
              v210 = v266;
              sub_1000113EC();
              sub_100050B70(v211, v212, v213);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                sub_1000080BC();
                sub_10004F4C0(v8, v214);
                sub_10004F4C0(v186, type metadata accessor for ViewState.SecondaryViewState);
                v20 = v264;
                goto LABEL_93;
              }

              v253 = *v186;
              v20 = v264;
              if (*(v258 + *(v210 + 36)) == 1)
              {
                v215 = v8;
                v216 = [objc_opt_self() currentDevice];
                [v216 userInterfaceIdiom];

                v8 = *(v215 + *(v210 + 28));
                sub_1000080BC();
                sub_10004F4C0(v215, v217);

                if ((v8 & 1) == 0)
                {
                  goto LABEL_93;
                }
              }

              else
              {
                sub_1000080BC();
                sub_10004F4C0(v8, v224);
              }

              sub_10002289C();
              sub_10003BD40(v254 + v225, &v280, v226);
              v227 = sub_100020E64(v8);
              sub_10001937C();
              sub_10004F4C0(v8, v228);
              if (v227 == 6)
              {

                asyncMain(block:)();
              }

LABEL_93:
              sub_10002289C();
              sub_100050B70(v254 + v229, v20, v230);
              if (sub_100020E64(v20) == 1)
              {
                v2 = v281;

                asyncMain(block:)();

                sub_10001E7B4();
                v202 = v283;
                goto LABEL_95;
              }

              sub_10001E7B4();
              sub_10004F4C0(v283, v231);
              sub_10001937C();
              v170 = v20;
              break;
            case 0xEu:
              v8 = v2[12];
              sub_10001BCD0();
              dispatch thunk of NotificationsOptInManagerType.resetTappedAllowNotifications()();
              goto LABEL_8;
            default:
LABEL_8:
              sub_10001E7B4();
              v97 = v283;
              goto LABEL_24;
          }

LABEL_97:
          result = sub_10004F4C0(v170, v171);
          v2 = v281;
          goto LABEL_98;
        case 6:
          v123 = sub_10002FDCC();
          sub_100050048(v123, v288, v124);
          v125 = sub_1000167A4();
          sub_100050B70(v125, v279, v126);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              sub_1000113EC();
              sub_100050048(v151, v152, v153);
              sub_1000167A4();
              sub_1000113EC();
              sub_100050B70(v154, v155, v156);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              v84 = v289;
              switch(EnumCaseMultiPayload)
              {
                case 3:
                  v8 = v2[12];
                  sub_10001BCD0();
                  dispatch thunk of NotificationsOptInManagerType.didEnterSettingsApp()();
                  v84 = v289;
                  break;
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                  break;
                default:
                  v218 = type metadata accessor for LocationViewerViewAction;
                  sub_10004F4C0(v269, type metadata accessor for LocationViewerViewAction);
                  v219 = sub_1000056A0();
                  sub_10004F4C0(v219, v220);
                  v221 = v291;
                  goto LABEL_85;
              }

              v149 = type metadata accessor for LocationViewerViewAction;
              v150 = &v293;
LABEL_40:
              sub_10004F4C0(*(v150 - 32), v149);
              v90 = sub_1000056A0();
              goto LABEL_6;
            case 2u:
            case 6u:
            case 7u:
            case 8u:
            case 9u:
LABEL_19:
              v97 = sub_1000056A0();
              goto LABEL_24;
            case 3u:
            case 4u:
            case 5u:
              v122 = type metadata accessor for ViewAction;
              sub_10004F4C0(v288, type metadata accessor for ViewAction);
              v97 = v279;
              goto LABEL_23;
            default:
              sub_1000113EC();
              sub_100050048(v142, v143, v144);
              sub_1000167A4();
              sub_1000113EC();
              sub_100050B70(v145, v146, v147);
              v148 = swift_getEnumCaseMultiPayload();
              v84 = v289;
              switch(v148)
              {
                case 1:
                case 4:
                case 5:
                case 6:
                case 7:
                case 9:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                  goto LABEL_37;
                case 2:
                  v218 = type metadata accessor for ListViewAction;
                  sub_10004F4C0(v268, type metadata accessor for ListViewAction);
                  v250 = sub_1000056A0();
                  sub_10004F4C0(v250, v251);
                  v221 = &v289;
LABEL_85:
                  v90 = *(v221 - 32);
                  v89 = v218;
                  v84 = v289;
                  goto LABEL_6;
                case 3:
                  v8 = v2[12];
                  sub_10001BCD0();
                  dispatch thunk of NotificationsOptInManagerType.didEnterSettingsApp()();
                  goto LABEL_102;
                case 8:
                  sub_10003A140();
                  v240 = v239 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
                  swift_beginAccess();
                  v241 = *(v240 + 2);
                  if (v241 > 3 || v241 == 2)
                  {
                    sub_1002F419C();
                  }

                  sub_10004E434();
                  sub_10004F4C0(*(v243 - 256), v244);
                  goto LABEL_19;
                case 10:
                  sub_1002F419C();
LABEL_102:
                  v84 = v289;
LABEL_37:
                  sub_10004E434();
                  goto LABEL_40;
                default:
                  sub_10004E434();
                  sub_10004F4C0(*(v245 - 256), v246);
                  v247 = sub_1000056A0();
                  sub_10004F4C0(v247, v248);
                  type metadata accessor for LocationModel();
                  sub_1000037E8();
                  result = (*(v249 + 8))(v265);
                  goto LABEL_26;
              }
          }

        case 7:
          v98 = sub_10002FDCC();
          sub_100050048(v98, v284, v99);
          v100 = sub_1000167A4();
          sub_100050B70(v100, v280, v101);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              v84 = v289;
              switch(*v280)
              {
                case 3:
                  v8 = v2[12];
                  sub_10001BCD0();
                  dispatch thunk of NotificationsOptInManagerType.didTapAllowNotifications()();
                  sub_1000245BC();
                  swift_storeEnumTagMultiPayload();
                  sub_1002F49C0(v20);
                  v84 = v289;
                  sub_10001E7B4();
                  sub_10004F4C0(v20, v223);
                  break;
                case 5:
                  v8 = v2[12];
                  sub_10001BCD0();
                  dispatch thunk of NotificationsOptInManagerType.didTapAllowLocation()();
                  v84 = v289;
                  break;
                default:
                  break;
              }

              v90 = sub_10002C5C8();
              goto LABEL_6;
            case 2u:
              switch(*v280)
              {
                case 1:
                  v8 = v2[12];
                  sub_10001BCD0();
                  dispatch thunk of NotificationsOptInManagerType.didEnterSettingsApp()();
                  break;
                case 2:
                  v8 = v2[12];
                  sub_10001BCD0();
                  dispatch thunk of NotificationsOptInManagerType.didTapAllowLocation()();
                  sub_1000245BC();
                  goto LABEL_88;
                case 3:
                  v8 = v2[12];
                  sub_10001BCD0();
                  dispatch thunk of NotificationsOptInManagerType.didTapAllowNotifications()();
                  sub_1000245BC();
LABEL_88:
                  swift_storeEnumTagMultiPayload();
                  sub_1002F49C0(v20);
                  sub_10001E7B4();
                  sub_10004F4C0(v20, v222);
                  break;
                default:
                  goto LABEL_10;
              }

              break;
            case 4u:
            case 5u:
            case 6u:
              break;
            default:
              v122 = type metadata accessor for ModalViewAction;
              sub_10004F4C0(v284, type metadata accessor for ModalViewAction);
              v97 = v280;
              goto LABEL_23;
          }

LABEL_10:
          v97 = sub_10002C5C8();
          goto LABEL_24;
        case 8:
          v102 = sub_10002FDCC();
          sub_100050048(v102, v285, v103);
          v104 = sub_1000167A4();
          sub_100050B70(v104, v278, v105);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              v127 = sub_100016788();
              sub_10004F4C0(v127, v128);
              v129 = sub_10022C350(&qword_100CA6658, &unk_100A31480);
              v130 = v278;
              sub_1000180EC(&v278[*(v129 + 64)], &unk_100CB2CF0, &unk_100A2D7F0);
              v96 = type metadata accessor for LocationComponentAction;
              v97 = v130;
              break;
            case 2u:
              v131 = sub_100016788();
              sub_10004F4C0(v131, v132);
              v96 = type metadata accessor for LocationFooterAction;
              v97 = v278;
              break;
            case 3u:
            case 4u:
            case 5u:
            case 6u:
              goto LABEL_13;
            default:
              sub_100018398();
              v20 = v267;
              v254 = v86;
              v106 = v270;
              v107(v267, v278);
              v108 = v2[12];
              v2 = v281[13];
              sub_1000161C0(v281 + 9, v108);
              dispatch thunk of NotificationsOptInManagerType.didDismissTip(for:)();
              v253 = *(sub_10022C350(&qword_100CAC0D8, &unk_100A3AFD0) + 48);
              sub_100018398();
              v109 = v271;
              v110(v271, v20, v106);
              v8 = v281[12];
              sub_10001BCD0();
              *(v109 + v253) = dispatch thunk of NotificationsOptInManagerType.tipDismissalOverThreshold()() & 1;
              swift_storeEnumTagMultiPayload();
              sub_1002F49C0(v109);
              sub_10001E7B4();
              sub_10004F4C0(v109, v111);
              sub_100018398();
              v112 = v106;
              v86 = v254;
              v113(v20, v112);
LABEL_13:
              v97 = sub_100016788();
              break;
          }

LABEL_24:
          result = sub_10004F4C0(v97, v96);
          goto LABEL_25;
        case 9:
          v118 = sub_10002FDCC();
          sub_100050048(v118, v286, v119);
          v120 = sub_1000167A4();
          sub_100050B70(v120, v287, v121);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 4u:
              v158 = v287;
              v159 = *v287;
              v20 = v287[1];
              v160 = sub_10022C350(&qword_100CAC0C8, &unk_100A3AFC0);
              v161 = *(v160 + 48);
              v162 = *(v160 + 64);
              sub_1000379DC();
              sub_10004F4C0(v158 + v163, v164);
              sub_10004F4C0(v158 + v162, type metadata accessor for PreprocessedWeatherData);
              sub_10004F4C0(v158 + v161, type metadata accessor for WeatherData);
              goto LABEL_43;
            case 5u:
              v138 = sub_100003DF0();
              sub_10004F4C0(v138, v139);
              v140 = v287;

              sub_10022C350(&qword_100CAC0B8, &unk_100A3AFB0);
              sub_1000379DC();
              v97 = v140 + v141;
              goto LABEL_24;
            case 6u:
              v165 = v287;
              v159 = *v287;
              v20 = v287[1];
              v161 = *(sub_10022C350(&qword_100CAC0C0, &unk_100A53DF0) + 48);
              type metadata accessor for AvailableDataSets();
              sub_1000037E8();
              (*(v166 + 8))(&v165[v161]);
LABEL_43:
              sub_10003A140();
              sub_1000113EC();
              sub_1001A00C8(v167, v168);
              v169 = type metadata accessor for CurrentLocation();
              if (sub_100024D10(v161, 1, v169) == 1)
              {
                sub_1000180EC(v161, &unk_100CE49F0, &unk_100A3AFA0);

LABEL_45:
                v170 = sub_100003DF0();
                goto LABEL_97;
              }

              v172 = CurrentLocation.id.getter();
              v174 = v173;
              sub_10004F4C0(v161, &type metadata accessor for CurrentLocation);
              if (v159 == v172 && v20 == v174)
              {
              }

              else
              {
                v176 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v176 & 1) == 0)
                {
                  goto LABEL_45;
                }
              }

              v2 = v281;

              OnlyOnceDeferredPromise.resolve(_:)();

              v202 = sub_100003DF0();
LABEL_95:
              result = sub_10004F4C0(v202, v203);
LABEL_98:
              v8 = v273;
LABEL_25:
              v84 = v289;
LABEL_26:
              if (v86 == v87)
              {
                return result;
              }

              continue;
            case 8u:
              v133 = sub_100003DF0();
              sub_10004F4C0(v133, v134);
              v20 = v287;

              v135 = *(sub_10022C350(&qword_100CAC0B0, &unk_100A41710) + 48);
              type metadata accessor for WeatherStatisticsModel();
              sub_1000037E8();
              result = (*(v136 + 8))(v20 + v135, v137);
              goto LABEL_25;
            default:
              v122 = type metadata accessor for WeatherDataAction;
              sub_10004F4C0(v286, type metadata accessor for WeatherDataAction);
              v97 = v287;
LABEL_23:
              v96 = v122;
              goto LABEL_24;
          }

        default:
          goto LABEL_26;
      }
    }
  }

  return result;
}

void sub_100097558(uint64_t a1)
{
  v44 = type metadata accessor for Location.Identifier();
  v2 = *(v44 - 8);
  __chkstk_darwin(v44);
  sub_1000038E4();
  v43 = v3;
  v4 = type metadata accessor for SavedLocation();
  v42 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  sub_1000038E4();
  v41 = v5;
  v6 = type metadata accessor for LocationsAction(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  v17 = *(a1 + 40);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = *(v14 + 72);
    v38 = (v2 + 8);
    v39 = v13;
    v40 = v6;
    do
    {
      sub_100050F90(v19, v16, type metadata accessor for MainAction);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        sub_10016DBB8(v16, v12);
        sub_100050F90(v12, v9, type metadata accessor for LocationsAction);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v25 = sub_10001FA2C();
            sub_10004FC50(v25, v26);
            type metadata accessor for Location();
            sub_1000037E8();
            (*(v27 + 8))(v9);
            break;
          case 2u:
          case 5u:
          case 6u:
            sub_10004FC50(v12, type metadata accessor for LocationsAction);
            v21 = v9;
            v22 = type metadata accessor for LocationsAction;
            goto LABEL_7;
          case 3u:
            v21 = sub_10001FA2C();
            goto LABEL_7;
          case 4u:
            v28 = *v9;
            v29 = *(v46 + 56);
            v30 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
            v31 = type metadata accessor for LocationsState(0);
            if ((v28 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_18:
              __break(1u);
              JUMPOUT(0x1000979D0);
            }

            v32 = *(v29 + v30 + *(v31 + 20));
            if (v28 >= *(v32 + 16))
            {
              goto LABEL_18;
            }

            v33 = v41;
            sub_100050F90(v32 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v28, v41, &type metadata accessor for SavedLocation);
            sub_1000161C0((v45 + 16), *(v45 + 40));
            v34 = v43;
            SavedLocation.identifier.getter();
            sub_100588588();
            (*v38)(v34, v44);
            sub_10004FC50(v33, &type metadata accessor for SavedLocation);
            v35 = sub_10001FA2C();
            sub_10004FC50(v35, v36);
            break;
          default:
            v23 = sub_10001FA2C();
            sub_10004FC50(v23, v24);
            v22 = &type metadata accessor for CurrentLocation;
            v21 = v9;
            goto LABEL_7;
        }
      }

      else
      {
        v22 = type metadata accessor for MainAction;
        v21 = v16;
LABEL_7:
        sub_10004FC50(v21, v22);
      }

      v19 += v20;
      --v18;
    }

    while (v18);
  }
}

unint64_t sub_1000979EC()
{
  result = qword_100CE46B0;
  if (!qword_100CE46B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE46B8, &qword_100A97398);
    v4[0] = sub_100099A08();
    v4[1] = sub_10006768C(&qword_100CE46A0, &qword_100CE46A8, &qword_100A97390);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE46B0);
  }

  return result;
}

uint64_t sub_100097AA4()
{
  sub_100003A00();
  sub_10022C350(v1, v2);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return v0;
}

uint64_t sub_100097CA8()
{

  sub_1000244CC();

  return swift_deallocObject();
}

uint64_t sub_100097CF4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100097D4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100097DA4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = sub_10000C76C();
  v3 = type metadata accessor for MainViewSheetViewModifier(v2);
  sub_100003810(v3);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v6, v7);
}

uint64_t sub_100097E3C@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v54 = a2;
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v52 = *(v3 - 8);
  v53 = v3;
  __chkstk_darwin(v3);
  v47 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  __chkstk_darwin(v51);
  v6 = &v47 - v5;
  v7 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v7 - 8);
  v50 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  v15 = sub_10022C350(&qword_100CCF2F8, &unk_100A8FDD0);
  __chkstk_darwin(v15 - 8);
  v17 = &v47 - v16;
  v18 = type metadata accessor for MainViewModel(0);
  __chkstk_darwin(v18);
  v49 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v47 - v21;
  v23 = type metadata accessor for MainViewModel.ModalModule(0);
  __chkstk_darwin(v23);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(a1 + 8);
  sub_100095730();
  sub_100095588();
  sub_100097D4C(v22, type metadata accessor for MainViewModel);
  if (sub_100024D10(v17, 1, v23) != 1)
  {
    sub_10009A650();
    sub_1008D1684();
    v29 = v52;
    v28 = v53;
    (*(v52 + 104))(v11, enum case for UserInterfaceSizeClass.compact(_:), v53);
    sub_10001B350(v11, 0, 1, v28);
    v30 = *(v51 + 12);
    sub_100095588();
    sub_100095588();
    v31 = v11;
    if (sub_100024D10(v6, 1, v28) == 1)
    {
      sub_1000180EC(v11, &qword_100CA6028, &qword_100A40610);
      sub_1000180EC(v14, &qword_100CA6028, &qword_100A40610);
      if (sub_100024D10(&v6[v30], 1, v28) == 1)
      {
        sub_1000180EC(v6, &qword_100CA6028, &qword_100A40610);
LABEL_11:
        v37 = v49;
        sub_100095730();
        v38 = *(v37 + 8);

        sub_100097D4C(v37, type metadata accessor for MainViewModel);
        v39 = *(v38 + 16);

        sub_1008807AC(v39 != 0, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
        goto LABEL_12;
      }
    }

    else
    {
      v51 = v25;
      v32 = v50;
      sub_100095588();
      if (sub_100024D10(&v6[v30], 1, v28) != 1)
      {
        v34 = v47;
        (*(v29 + 32))(v47, &v6[v30], v28);
        sub_100081574(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
        v35 = dispatch thunk of static Equatable.== infix(_:_:)();
        v36 = *(v29 + 8);
        v36(v34, v28);
        sub_1000180EC(v31, &qword_100CA6028, &qword_100A40610);
        sub_1000180EC(v14, &qword_100CA6028, &qword_100A40610);
        v36(v32, v28);
        sub_1000180EC(v6, &qword_100CA6028, &qword_100A40610);
        v25 = v51;
        if (v35)
        {
          goto LABEL_11;
        }

LABEL_9:
        v33 = sub_1008809CC();
LABEL_12:
        v27 = v33;
        result = sub_100097D4C(v25, type metadata accessor for MainViewModel.ModalModule);
        goto LABEL_13;
      }

      sub_1000180EC(v11, &qword_100CA6028, &qword_100A40610);
      sub_1000180EC(v14, &qword_100CA6028, &qword_100A40610);
      (*(v29 + 8))(v32, v28);
      v25 = v51;
    }

    sub_1000180EC(v6, &qword_100CA64E8, &unk_100A46060);
    goto LABEL_9;
  }

  result = sub_1000180EC(v17, &qword_100CCF2F8, &unk_100A8FDD0);
  v27 = 0;
LABEL_13:
  *v54 = v27 & 1;
  return result;
}

uint64_t sub_100098494(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100098508@<X0>(_BYTE *a1@<X8>)
{
  v38 = a1;
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v33 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  __chkstk_darwin(v35);
  v4 = &v33 - v3;
  v5 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v5 - 8);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = sub_10022C350(&qword_100CCF2F8, &unk_100A8FDD0);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v16 = type metadata accessor for MainViewModel(0);
  __chkstk_darwin(v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MainViewModel.ModalModule(0);
  __chkstk_darwin(v19);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095730();
  sub_100095588();
  sub_100097D4C(v18, type metadata accessor for MainViewModel);
  if (sub_100024D10(v15, 1, v19) == 1)
  {
    result = sub_1000180EC(v15, &qword_100CCF2F8, &unk_100A8FDD0);
LABEL_12:
    v29 = 0;
    goto LABEL_13;
  }

  sub_10009A650();
  sub_1008D1684();
  v23 = v36;
  v24 = v37;
  (*(v36 + 104))(v9, enum case for UserInterfaceSizeClass.compact(_:), v37);
  sub_10001B350(v9, 0, 1, v24);
  v25 = *(v35 + 48);
  sub_100095588();
  sub_100095588();
  v26 = v21;
  if (sub_100024D10(v4, 1, v24) == 1)
  {
    sub_1000180EC(v9, &qword_100CA6028, &qword_100A40610);
    sub_1000180EC(v12, &qword_100CA6028, &qword_100A40610);
    if (sub_100024D10(&v4[v25], 1, v24) == 1)
    {
      sub_1000180EC(v4, &qword_100CA6028, &qword_100A40610);
LABEL_11:
      result = sub_100097D4C(v26, type metadata accessor for MainViewModel.ModalModule);
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v27 = v34;
  sub_100095588();
  if (sub_100024D10(&v4[v25], 1, v24) == 1)
  {
    sub_1000180EC(v9, &qword_100CA6028, &qword_100A40610);
    sub_1000180EC(v12, &qword_100CA6028, &qword_100A40610);
    (*(v23 + 8))(v27, v24);
LABEL_8:
    sub_1000180EC(v4, &qword_100CA64E8, &unk_100A46060);
    goto LABEL_9;
  }

  v30 = &v4[v25];
  v31 = v33;
  (*(v23 + 32))(v33, v30, v24);
  sub_100081574(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
  LODWORD(v35) = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v23 + 8);
  v32(v31, v24);
  sub_1000180EC(v9, &qword_100CA6028, &qword_100A40610);
  sub_1000180EC(v12, &qword_100CA6028, &qword_100A40610);
  v32(v27, v24);
  sub_1000180EC(v4, &qword_100CA6028, &qword_100A40610);
  if (v35)
  {
    goto LABEL_11;
  }

LABEL_9:
  v28 = sub_100880AE0();
  result = sub_100097D4C(v26, type metadata accessor for MainViewModel.ModalModule);
  v29 = v28 & 1;
LABEL_13:
  *v38 = v29;
  return result;
}

uint64_t sub_100098B14@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CCF2F8, &unk_100A8FDD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for MainViewModel(0);
  __chkstk_darwin(v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MainViewModel.ModalModule(0);
  __chkstk_darwin(v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  sub_100095730();
  sub_100095588();
  sub_100097D4C(v7, type metadata accessor for MainViewModel);
  if (sub_100024D10(v4, 1, v8) == 1)
  {
    result = sub_1000180EC(v4, &qword_100CCF2F8, &unk_100A8FDD0);
  }

  else
  {
    sub_10009A650();
    sub_10009A650();
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      result = sub_100097D4C(v10, type metadata accessor for MainViewModel.ModalModule);
    }
  }

  *a1 = 0;
  return result;
}

uint64_t sub_100098D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ModalPresentationViewModifier(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v6 = (v2 + *(v5 + 28));
  v8 = *v6;
  v7 = v6[1];
  v9 = *(v6 + 16);
  sub_10009A5F8();
  v10 = swift_allocObject();
  sub_10009A650();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1008D24B0;
  *(v11 + 24) = v10;
  State.init(wrappedValue:)();
  v12 = sub_10022C350(&qword_100CE4298, &qword_100A97000);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  v13 = a2 + *(sub_10022C350(&qword_100CE42A0, &qword_100A97008) + 36);
  *v13 = v8;
  *(v13 + 8) = v7;
  *(v13 + 16) = v9;
  *(v13 + 17) = 0;
  *(v13 + 24) = sub_1008D2518;
  *(v13 + 32) = v11;
  *(v13 + 40) = v21;
  *(v13 + 48) = v22;
  v14 = (v2 + *(v5 + 32));
  v15 = *v14;
  v16 = v14[1];
  LOBYTE(v10) = *(v14 + 16);
  v17 = a2 + *(sub_10022C350(&qword_100CE42A8, &qword_100A97010) + 36);
  v18 = *(type metadata accessor for SafariSheetModifier(0) + 20);

  sub_100099188(v17 + v18);
  *v17 = v15;
  *(v17 + 8) = v16;
  *(v17 + 16) = v10;
}

uint64_t sub_100098FB4()
{
  v1 = type metadata accessor for ModalPresentationViewModifier(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = type metadata accessor for MainViewModel.ModalModule(0);
  if (!sub_100024D10(v0 + v2, 1, v3) && swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for MainViewModel.ModalModule.LocationDetailModule(0);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      type metadata accessor for URL();
      sub_1000037E8();
      (*(v4 + 8))(v0 + v2);
    }
  }

  sub_1000E4DF8(*(v0 + v2 + *(v1 + 36)), *(v0 + v2 + *(v1 + 36) + 8));

  return swift_deallocObject();
}

uint64_t sub_10009914C()
{

  return swift_deallocObject();
}

uint64_t sub_100099188@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CCF2F8, &unk_100A8FDD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for MainViewModel.ModalModule.LocationDetailModule(0);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  sub_100095588();
  v9 = type metadata accessor for MainViewModel.ModalModule(0);
  if (sub_100024D10(v4, 1, v9) == 1)
  {
    sub_1000180EC(v4, &qword_100CCF2F8, &unk_100A8FDD0);
LABEL_9:
    v13 = type metadata accessor for URL();
    v11 = a1;
    v12 = 1;
    return sub_10001B350(v11, v12, 1, v13);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v14 = type metadata accessor for MainViewModel.ModalModule;
    v15 = v4;
LABEL_8:
    sub_100097D4C(v15, v14);
    goto LABEL_9;
  }

  sub_10009A650();
  sub_10009A650();
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    v14 = type metadata accessor for MainViewModel.ModalModule.LocationDetailModule;
    v15 = v7;
    goto LABEL_8;
  }

  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 32))(a1, v7, v10);
  v11 = a1;
  v12 = 0;
  v13 = v10;
  return sub_10001B350(v11, v12, 1, v13);
}

__n128 sub_1000993E0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000993FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v39 = a1;
  v47 = a3;
  swift_getWitnessTable(byte_100A55B30);
  v6 = type metadata accessor for _ViewModifier_Content();
  v7 = *(a2 + 16);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for _ViewModifier_Content<A>, v6);
  v9 = *(a2 + 24);
  v55 = v6;
  v56 = v7;
  v57 = WitnessTable;
  v58 = v9;
  v36[1] = &opaque type descriptor for <<opaque return type of View.transaction<A>(_:body:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v42 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v48 = v36 - v10;
  sub_10022E824(&qword_100CBE348, &unk_100A55B80);
  v41 = type metadata accessor for ModifiedContent();
  v45 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = v36 - v11;
  v44 = type metadata accessor for ModifiedContent();
  v46 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v43 = v36 - v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = v9;
  v16 = *(v4 + 16);
  *(v15 + 32) = *v4;
  *(v15 + 48) = v16;
  *(v15 + 64) = *(v4 + 32);
  *(v15 + 80) = *(v4 + 48);
  v49 = v7;
  v50 = v9;
  v51 = v4;
  v17 = *(*(a2 - 8) + 16);
  v17(&v55, v4, a2);
  v36[0] = v17;
  v18 = swift_checkMetadataState();
  View.transaction<A>(_:body:)();

  v54 = sub_1000A1FE4() & 1;
  v19 = swift_allocObject();
  *(v19 + 16) = v7;
  *(v19 + 24) = v9;
  v20 = *(v4 + 16);
  *(v19 + 32) = *v4;
  *(v19 + 48) = v20;
  *(v19 + 64) = *(v4 + 32);
  *(v19 + 80) = *(v4 + 48);
  v17(&v55, v4, a2);
  v55 = v18;
  v56 = v7;
  v57 = WitnessTable;
  v58 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v37;
  v23 = OpaqueTypeMetadata2;
  v24 = v48;
  sub_1000A203C(&v54, OpaqueTypeMetadata2, &type metadata for Bool, OpaqueTypeConformance2, v37);

  (*(v42 + 8))(v24, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = v7;
  *(v25 + 24) = v9;
  v26 = *(v4 + 16);
  *(v25 + 32) = *v4;
  *(v25 + 48) = v26;
  *(v25 + 64) = *(v4 + 32);
  *(v25 + 80) = *(v4 + 48);
  (v36[0])(&v55, v4, a2);
  v27 = sub_100082E44();
  v53[0] = OpaqueTypeConformance2;
  v53[1] = v27;
  v28 = v41;
  v29 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v41, v53);
  v30 = v40;
  View.onAppear(perform:)();

  (*(v45 + 8))(v22, v28);
  v52[0] = v29;
  v52[1] = &protocol witness table for _AppearanceActionModifier;
  v31 = v44;
  v32 = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v44, v52);
  v33 = v43;
  sub_1000833D8(v30, v31, v32);
  v34 = *(v46 + 8);
  v34(v30, v31);
  sub_1000833D8(v33, v31, v32);
  return (v34)(v33, v31);
}

unint64_t sub_100099A08()
{
  result = qword_100CE46C0;
  if (!qword_100CE46C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE46C8, &qword_100A973A0);
    v4[0] = sub_10006768C(&qword_100CE46D0, &qword_100CE46D8, &qword_100A973A8);
    v4[1] = sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8, &unk_100A97360);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE46C0);
  }

  return result;
}

uint64_t sub_100099AEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100099B48()
{

  sub_1000693B0();

  return swift_deallocObject();
}

uint64_t sub_100099B8C()
{
  type metadata accessor for DetailChart(0);
  sub_100003A0C();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v57 = *(v4 + 64);
  type metadata accessor for ChartProxy();
  sub_1000037C4();
  v59 = v6;
  v60 = v5;
  v56 = *(v6 + 80);
  v61 = v1;
  v58 = v3;
  v7 = v1 + v3;
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_100003D98();
    (*(v8 + 8))(v1 + v3);
  }

  else
  {
  }

  v9 = v0[5];
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_100003D98();
    (*(v10 + 8))(v7 + v9);
  }

  else
  {
  }

  sub_1000E4DF8(*(v7 + v0[6]), *(v7 + v0[6] + 8));
  v11 = v7 + v0[7];
  type metadata accessor for ConditionDetailChartHeaderStringModel();
  sub_100003D98();
  (*(v12 + 8))(v11);
  v62 = type metadata accessor for DetailChartViewModel(0);
  v13 = v11 + *(v62 + 20);

  v14 = type metadata accessor for ChartViewModel(0);
  v15 = v14[5];
  type metadata accessor for ChartKind();
  sub_100003D98();
  (*(v16 + 8))(v13 + v15);

  v17 = v14[7];
  type metadata accessor for DetailChartExtrema();
  sub_100003D98();
  (*(v18 + 8))(v13 + v17);

  sub_100452DEC(*(v13 + v14[11]), *(v13 + v14[11] + 8), *(v13 + v14[11] + 16), *(v13 + v14[11] + 24));
  v19 = v13 + v14[12];
  v20 = sub_10022C350(&qword_100CAC408, &qword_100A6B670);
  v21 = *(v20 + 48);
  v22 = type metadata accessor for Date();
  if (!sub_100024D10(v19 + v21, 1, v22))
  {
    sub_100003B20();
    (*(v23 + 8))(v19 + v21, v22);
  }

  v24 = *(v20 + 64);
  type metadata accessor for TimeZone();
  sub_100003D98();
  (*(v25 + 8))(v19 + v24);
  v26 = v13 + v14[14];
  v27 = sub_10022C350(&qword_100CAC418, &qword_100A6EE30);
  if (!sub_100024D10(v26, 1, v27))
  {

    v28 = *(v27 + 48);
    if (!sub_100024D10(v26 + v28, 1, v22))
    {
      sub_100003B20();
      (*(v29 + 8))(v26 + v28, v22);
    }
  }

  v30 = v14[16];
  type metadata accessor for ChartDarkeningScrim();
  sub_100003D98();
  (*(v31 + 8))(v13 + v30);

  v32 = *(*(v22 - 8) + 8);
  v32(v13 + v14[18], v22);
  v32(v13 + v14[19], v22);
  v32(v13 + v14[20], v22);
  v33 = v14[21];
  v34 = type metadata accessor for DetailChartDataElement();
  if (!sub_100024D10(v13 + v33, 1, v34))
  {
    sub_100003B20();
    (*(v35 + 8))(v13 + v33, v34);
  }

  v36 = v14[23];
  type metadata accessor for ChartPeakMarkStyle();
  sub_100003D98();
  (*(v37 + 8))(v13 + v36);

  v38 = v14[26];
  type metadata accessor for ChartViewModelInterpolationMode();
  sub_100003D98();
  (*(v39 + 8))(v13 + v38);
  v40 = v14[27];
  type metadata accessor for ChartPastDataTreatment();
  sub_100003D98();
  (*(v41 + 8))(v13 + v40);
  sub_10001673C(v14[28]);

  sub_10001673C(v14[29]);

  sub_10001673C(v14[30]);

  sub_10001673C(v14[31]);

  sub_10001673C(v14[32]);

  sub_10001673C(v14[33]);

  v42 = v62;
  v43 = v11 + *(v62 + 24);
  v44 = type metadata accessor for LollipopViewModel(0);
  if (!sub_1000214B8(v44))
  {

    v45 = *(v34 + 20);
    type metadata accessor for DetailChartDataPoint();
    sub_100003D98();
    (*(v46 + 8))(v43 + v45);
    v47 = v43 + *(v34 + 28);
    type metadata accessor for LollipopDetailViewModel(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v49 = *(type metadata accessor for TitleAndDetailLollipopDetailViewModel(0) + 20);
      type metadata accessor for AttributedString();
      sub_100003D98();
      v51 = v47 + v49;
      v42 = v62;
      (*(v50 + 8))(v51);
      sub_10003C540();
      sub_10003C540();
      sub_10003C540();
      sub_10003C540();
    }

    else if (EnumCaseMultiPayload == 1)
    {
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_22:
  v52 = v11 + *(v42 + 28);
  type metadata accessor for ConditionDetailChartFooterViewModel(0);
  if (!sub_10000CAFC(v52))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for TemperatureChartKind();
      sub_100003D98();
      (*(v53 + 8))(v52);
    }

    else
    {
    }
  }

  v54 = v7 + v0[9];
  if (!sub_100024D10(v54, 1, v22))
  {
    v32(v54, v22);
  }

  sub_10022C350(&qword_100CBB758, &unk_100A51060);

  sub_100006F14((v7 + v0[10]));
  (*(v59 + 8))(v61 + ((v58 + v57 + v56) & ~v56), v60);

  return swift_deallocObject();
}

uint64_t sub_10009A3A4()
{
  type metadata accessor for Location();
  sub_10000548C();

  v0 = sub_1000751C4();
  v1(v0);
  sub_100036F2C();

  return swift_deallocObject();
}

void sub_10009A44C()
{
  sub_10000C778();
  v0 = type metadata accessor for MainViewSheetViewModifier(0);
  __chkstk_darwin(v0 - 8);
  sub_10009A5F8();
  type metadata accessor for MainActor();
  v1 = static MainActor.shared.getter();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = &protocol witness table for MainActor;
  sub_10009A650();
  sub_10009A5F8();
  v3 = static MainActor.shared.getter();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = &protocol witness table for MainActor;
  sub_10009A650();
  Binding.init(get:set:)();
  sub_10000536C();
}

uint64_t sub_10009A5F8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10009A650()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10009A6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a5;
  v9 = type metadata accessor for PresentationWithoutInitialAnimation(255, a3, a4, a4);
  swift_getWitnessTable(byte_100A55B30, v9);
  type metadata accessor for _ViewModifier_Content();
  v10 = type metadata accessor for PlaceholderContentView();
  __chkstk_darwin(v10);
  v12 = &v31[-v11];
  v35 = *(a3 - 8);
  __chkstk_darwin(v13);
  v15 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v16);
  v19 = &v31[-v18];
  v20 = *(a2 + 24);
  v33 = *(a2 + 32);
  v34 = v20;
  (*(v21 + 16))(v12, a1, v10, v17);
  swift_getWitnessTable(&protocol conformance descriptor for PlaceholderContentView<A>, v10);
  v22 = AnyView.init<A>(_:)();
  v23 = sub_10009AA10();
  v25 = v24;
  v32 = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;
  v28 = *(a2 + 16);
  *(v27 + 32) = *a2;
  *(v27 + 48) = v28;
  *(v27 + 64) = *(a2 + 32);
  *(v27 + 80) = *(a2 + 48);
  (*(*(v9 - 8) + 16))(v37, a2, v9);
  v34(v22, v23, v25, v32 & 1, sub_100130B30, v27);

  sub_1000833D8(v15, a3, a4);
  v29 = *(v35 + 8);
  v29(v15, a3);
  sub_1000833D8(v19, a3, a4);
  return (v29)(v19, a3);
}

uint64_t sub_10009AA10()
{
  sub_10022C350(&unk_100CB3AA0, &unk_100A55B90);
  Binding.projectedValue.getter();
  return v1;
}

void sub_10009AA6C(uint64_t a1)
{
  sub_100007760();
  if (v1 <= 0x3F)
  {
    sub_1000455E4(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for LearnMoreAttributorViewModel(319);
      if (v3 <= 0x3F)
      {
        sub_10009ABA0(319, &qword_100CB9DF8, &type metadata accessor for LocationOfInterest);
        if (v4 <= 0x3F)
        {
          sub_10009ABA0(319, &unk_100CB9E00, type metadata accessor for HomeAndWorkRefinementRowViewModel);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10009ABA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_10009ABF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DailyForecastFilter();
  v3 = swift_allocObject();
  type metadata accessor for IsSameDayCache();
  swift_allocObject();
  result = IsSameDayCache.init()();
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_100C4AB20;
  *a1 = v3;
  return result;
}

void sub_10009AC68(uint64_t a1)
{
  sub_100063140(319, &unk_100CAEB40, &type metadata accessor for Location.Identifier, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_100063140(319, &qword_100CBC8D8, &type metadata accessor for CurrentLocation, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100063140(319, &qword_100CBC8E0, &type metadata accessor for SavedLocation, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_100063140(319, &qword_100CBC8E8, &type metadata accessor for LocationModel, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_100007760();
          if (v5 <= 0x3F)
          {
            sub_100063140(319, &unk_100CBC8F0, type metadata accessor for SearchViewState.ViewState, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Date();
              if (v7 <= 0x3F)
              {
                type metadata accessor for UIUserInterfaceSizeClass(319);
                if (v8 <= 0x3F)
                {
                  sub_100063140(319, &qword_100CA5080, type metadata accessor for ContentStatusBanner, &type metadata accessor for Optional);
                  if (v9 <= 0x3F)
                  {
                    sub_100063140(319, &unk_100CB0F30, &type metadata accessor for LocationOfInterest, &type metadata accessor for Array);
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

void sub_10009AFB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10009B01C()
{
  v0 = type metadata accessor for Scope();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProxyContainer.public.getter();
  type metadata accessor for Tracker();
  RegistrationContainer.register<A>(_:name:factory:)();

  (*(v1 + 104))(v3, enum case for Scope.containerSingleton(_:), v0);
  Definition.inScope(_:)();

  (*(v1 + 8))(v3, v0);
  type metadata accessor for ListViewModelFactory(0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCC2F0, &qword_100A6BCD8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCC2F8, &qword_100A6BCE0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCC300, &qword_100A6BCE8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4C50, &qword_100A2EEE0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4B60, &qword_100A2EE20);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC95D8, &qword_100A67850);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC95E0, &qword_100A67858);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCC308, &qword_100A6BCF0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4BD8, &qword_100A2EE80);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCBE58, &qword_100A6B630);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_10009B430(uint64_t a1)
{
  v1 = type metadata accessor for ActualListInput(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void *sub_10009B49C(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      sub_10022C350(&qword_100CB0250, &qword_100A3FF58);
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[14];
      }

      else
      {
        type metadata accessor for Date();
        sub_100003928();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[21];
        }

        else
        {
          v10 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
          v11 = a4[34];
        }
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_10009B604(uint64_t a1)
{
  if (!qword_100CA3828)
  {
    type metadata accessor for LocationWeatherDataState(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100CA3828);
    }
  }
}

void sub_10009B65C(uint64_t a1)
{
  if (!qword_100CBC8E8)
  {
    type metadata accessor for LocationModel();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_100CBC8E8);
    }
  }
}

void *sub_10009B6B4(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA740, &qword_100A4FE48);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v10)
  {
    v2 = sub_10002D7F8(v9, v10);
    v3 = __chkstk_darwin(v2);
    v5 = (&v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5, v3);
    v7 = sub_10009B7DC(1, *v5);
    sub_100006F14(v9);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10009B7DC(char a1, uint64_t *a2)
{
  v13 = *a2;
  v14 = &off_100C58978;
  v12[0] = a2;
  type metadata accessor for WeatherConditionBackgroundModelInputFactory(0);
  v3 = swift_allocObject();
  v4 = sub_10002D7F8(v12, v13);
  v5 = __chkstk_darwin(v4);
  v7 = (&v12[-1] - v6);
  (*(v8 + 16))(&v12[-1] - v6, v5);
  v9 = sub_10009B90C(a1 & 1, *v7, v3);
  sub_100006F14(v12);
  return v9;
}

uint64_t sub_10009B90C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = (a3 + OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory_weatherConditionBackgroundTimeDataFactory);
  v6[3] = type metadata accessor for WeatherConditionBackgroundTimeDataFactory();
  v6[4] = &off_100C58978;
  *v6 = a2;
  v7 = OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory____lazy_storage___locationAnimationKind;
  v8 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  sub_10001B350(a3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory____lazy_storage___animationKind;
  v10 = type metadata accessor for BackgroundAnimationKind();
  sub_10001B350(a3 + v9, 1, 1, v10);
  *(a3 + OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory_forceTileGradientPresentationContext) = 0;
  *(a3 + OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory_backgroundViewType) = a1 & 1;
  return a3;
}

uint64_t sub_10009BA38@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NewsDataManager();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_100C76D50;
  *a1 = result;
  return result;
}

uint64_t sub_10009BA80@<X0>(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  a3[3] = *a1;
  a3[4] = a2;
  *a3 = a1;
}

void *sub_10009BAB4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v16 = type metadata accessor for NetworkActivityManager();
  v17 = &off_100C55440;
  v15[0] = a2;
  type metadata accessor for WeatherDataStoreObserver();
  v6 = swift_allocObject();
  v7 = sub_10002D7F8(v15, v16);
  v8 = __chkstk_darwin(v7);
  v10 = (&v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  v12 = sub_10009BBE0(a1, *v10, a3, v6);
  sub_100006F14(v15);
  return v12;
}

void *sub_10009BBE0(uint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  v11 = type metadata accessor for NetworkActivityManager();
  v12 = &off_100C55440;
  *&v10 = a2;
  sub_10000C70C(0, &qword_100CA2E40, OS_os_log_ptr);
  a4[13] = OS_os_log.init(subsystem:category:)();
  sub_10022C350(&qword_100CD1920, &qword_100A76D18);
  v8 = swift_allocObject();
  *(v8 + 20) = 0;
  *(v8 + 16) = 0;
  a4[14] = v8;
  a4[2] = a1;
  sub_100013188(&v10, (a4 + 3));
  sub_100013188(a3, (a4 + 8));
  return a4;
}

void sub_10009BCE0(uint64_t a1)
{
  sub_10006126C();
  if (v1 <= 0x3F)
  {
    sub_10009BE90(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10009C160(319);
      if (v3 <= 0x3F)
      {
        sub_10009BE90(319, &unk_100CB32E8, &type metadata for WeatherMapPresentationIntent, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10009BDF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10009BE44(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10009BE90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10009BEE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10009BF30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10009BF80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10009BFD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10009C020(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10009C070(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10009C0C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10009C110(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10009C160(uint64_t a1)
{
  if (!qword_100CA3C78)
  {
    type metadata accessor for DisplayMetrics(255);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100CA3C78);
    }
  }
}

unint64_t sub_10009C1D8()
{
  result = qword_100CB3328;
  if (!qword_100CB3328)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB3270, &qword_100A45B10);
    v4[0] = sub_100006F64(&qword_100CB3330, &qword_100CB3268, &qword_100A45B08, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_100006F64(&qword_100CB3338, &qword_100CB3340, qword_100A45C18, &protocol conformance descriptor for _OverlayPreferenceModifier<A, B>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB3328);
  }

  return result;
}

uint64_t sub_10009C2BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA2A70 != -1)
  {
    swift_once();
  }

  v2 = sub_10022C350(&qword_100CB3688, &unk_100A468C0);
  v3 = sub_10000703C(v2, qword_100D91340);
  return sub_1000302D8(v3, a1, &qword_100CB3688, &unk_100A468C0);
}

uint64_t sub_10009C34C()
{
  v0 = sub_10022C350(&qword_100CB3688, &unk_100A468C0);
  sub_100007074(v0, qword_100D91340);
  v1 = sub_10000703C(v0, qword_100D91340);
  v2 = type metadata accessor for ColorScheme();

  return sub_10001B350(v1, 1, 1, v2);
}

uint64_t sub_10009C3C8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for SafariSheetModifier.SafariPresenter(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10009C40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009C3C8(&unk_100CB3C50, byte_100A469D0);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

void sub_10009C4E0(uint64_t a1)
{
  sub_10000D474(319, &qword_100CAD3B0, &type metadata accessor for URL, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ColorScheme();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

__n128 sub_10009C5E8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

unint64_t sub_10009C5FC()
{
  result = qword_100CB2940;
  if (!qword_100CB2940)
  {
    result = swift_getWitnessTable(aYh, &type metadata for SceneMetrics, v0, v1);
    atomic_store(result, &qword_100CB2940);
  }

  return result;
}

unint64_t sub_10009C650()
{
  result = qword_100CB2918;
  if (!qword_100CB2918)
  {
    result = swift_getWitnessTable(byte_100A44BF8, &type metadata for SceneMetricsEnvironmentKey, v0, v1);
    atomic_store(result, &qword_100CB2918);
  }

  return result;
}

void *sub_10009C6A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v6)
    {
      v5 = type metadata accessor for ExtendedAppLaunchManager();
      swift_allocObject();
      result = sub_10009C7FC(v8, v9, v10, v11, v6, v7, 1);
      a2[3] = v5;
      a2[4] = &off_100C56688;
      *a2 = result;
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

uint64_t sub_10009C7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, char a7)
{
  v8 = v7;
  v63 = a6;
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v61 = v20;
  v62 = v19;
  __chkstk_darwin(v19);
  sub_1000037D8();
  v59 = v22 - v21;
  v60 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v58 = v23;
  __chkstk_darwin(v24);
  sub_1000037D8();
  v57 = v26 - v25;
  type metadata accessor for DispatchTime();
  sub_1000037C4();
  __chkstk_darwin(v27);
  sub_100003C38();
  v30 = (v28 - v29);
  __chkstk_darwin(v31);
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = &_swiftEmptySetSingleton;
  *(v8 + 48) = a1;
  v35 = a2;
  *(v8 + 56) = a2;
  *(v8 + 64) = a3;
  v36 = a4;
  v37 = a5;
  v38 = v63;
  *(v8 + 72) = v36;
  *(v8 + 80) = v37;
  *(v8 + 88) = v38;
  *(v8 + 96) = 0x4014000000000000;
  *(v8 + 104) = a7;
  if (a7)
  {
    v39 = v32;
    v55 = v32;
    v40 = v34;
    v52 = v51 - v33;
    sub_10000C70C(0, &qword_100CB4670, OS_dispatch_queue_ptr);

    v53 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v41 = *(v40 + 8);
    v54 = v40 + 8;
    v56 = v41;
    v41(v30, v39);
    sub_100018450();
    v42 = swift_allocObject();
    v42[2] = v8;
    v42[3] = v37;
    v42[4] = v38;
    v66 = sub_100423C40;
    v67 = v42;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    sub_100003F74();
    *&v65 = v43;
    *(&v65 + 1) = &unk_100C56758;
    v44 = _Block_copy(&aBlock);

    v45 = v57;
    static DispatchQoS.unspecified.getter();
    *&aBlock = _swiftEmptyArrayStorage;
    sub_1000673B4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v51[1] = v35;
    sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
    sub_100006F64(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00, &protocol conformance descriptor for [A]);
    v46 = v59;
    v47 = v62;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v49 = v52;
    v48 = v53;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v44);

    (*(v61 + 8))(v46, v47);
    (*(v58 + 8))(v45, v60);
    v56(v49, v55);
  }

  else
  {
    type metadata accessor for EnvironmentAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v66 = 0;
    aBlock = 0u;
    v65 = 0u;

    sub_10004F034(v18, &aBlock, v37, v38);

    sub_1000180EC(&aBlock, &unk_100CD81B0, &unk_100A3B000);
    sub_10004F6D4(v18, type metadata accessor for MainAction);
  }

  return v8;
}

uint64_t sub_10009CD40()
{

  sub_100018450();

  return swift_deallocObject();
}

void sub_10009CF80()
{
  sub_100020DF0();
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_10001F198();
  type metadata accessor for FeatureState();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_100005888();
  sub_10022C350(&qword_100CC74A0, &qword_100A63CA0);
  v2 = sub_10000621C();
  v3(v2);
  v4 = sub_1000089C8();
  v5(v4);
  qword_100D90490 = sub_100004594(40, 0x8000000100AD5C30);
  sub_1000212EC();
}

uint64_t sub_10009D0D4()
{
  sub_10009EB78();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t sub_10009D188()
{
  result = qword_100CE10F0;
  if (!qword_100CE10F0)
  {
    result = swift_getWitnessTable(aQ_12, &type metadata for CompactContent, v0, v1);
    atomic_store(result, &qword_100CE10F0);
  }

  return result;
}

uint64_t sub_10009D1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for MonitorAppLaunchStateViewModifier(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v8 = sub_10022C350(&qword_100CB84A8, &qword_100A4C4C8);
  sub_1000037E8();
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  sub_100423DD0(v2, &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MonitorAppLaunchStateViewModifier);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_100423E30(&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for MonitorAppLaunchStateViewModifier);
  sub_10022C350(&qword_100CB84B0, &qword_100A4C4D8);
  sub_1000037E8();
  (*(v14 + 16))(v11, a1);
  v15 = &v11[*(v8 + 36)];
  *v15 = sub_1001303A8;
  v15[1] = v13;
  v15[2] = 0;
  v15[3] = 0;
  v16 = (v2 + *(v5 + 32));
  v18 = v16[1];
  v27 = *v16;
  v17 = v27;
  v28 = v18;
  sub_10022C350(&qword_100CB84B8, &qword_100A4C4E0);
  State.wrappedValue.getter();
  type metadata accessor for ExtendedAppLaunchState(0);
  sub_1000615D8();
  sub_100022BD0();
  sub_1000673B4(v19, v20, asc_100A4C40C);
  v21 = v26;
  View.environment<A>(_:)();

  sub_1000180EC(v11, &qword_100CB84A8, &qword_100A4C4C8);
  v27 = v17;
  v28 = v18;
  v22 = State.wrappedValue.getter();
  v24 = sub_1004237C8(v22, v23);

  result = sub_10022C350(&qword_100CB84D8, &qword_100A4C4E8);
  *(v21 + *(result + 36)) = (v24 & 1) == 0;
  return result;
}

uint64_t sub_10009D4E8()
{
  type metadata accessor for WeatherForecastDescriptionStringBuilder();
  swift_allocObject();
  v0 = WeatherForecastDescriptionStringBuilder.init()();
  type metadata accessor for FeelsLikeStringBuilder();
  swift_allocObject();
  FeelsLikeStringBuilder.init()();
  WeatherForecastDescriptionStringBuilder.feelsLikeStringBuilder.setter();
  return v0;
}

void sub_10009D580(uint64_t a1)
{
  if (!qword_100CA3820)
  {
    type metadata accessor for ContentStatusBanner(255);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_100CA3820);
    }
  }
}

uint64_t sub_10009D5E8(uint64_t a1)
{
  result = type metadata accessor for SunriseSunsetEventCalculator();
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

void *sub_10009D6A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9558, &qword_100A677C0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v25)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CC9560, &unk_100A677C8);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v23)
    {
      v5 = sub_10002D7F8(v22, v23);
      v6 = __chkstk_darwin(v5);
      v8 = (&v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = *v8;
      v11 = type metadata accessor for LocationComponentViewModelFactory();
      v21[3] = v11;
      v21[4] = &off_100C55358;
      v21[0] = v10;
      v12 = type metadata accessor for LocationContentViewModelFactory();
      v13 = swift_allocObject();
      v14 = sub_10002D7F8(v21, v11);
      v15 = __chkstk_darwin(v14);
      v17 = (&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v17, v15);
      v19 = *v17;
      v13[10] = v11;
      v13[11] = &off_100C55358;
      v13[7] = v19;
      sub_100013188(&v24, (v13 + 2));
      sub_100006F14(v21);
      result = sub_100006F14(v22);
      a2[3] = v12;
      a2[4] = &off_100C78310;
      *a2 = v13;
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

void sub_10009D934(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1000038D8();
  type metadata accessor for Location.Identifier();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(v4 + a4[6] + 8) = (a2 - 1);
        return;
      }

      sub_10022C350(&qword_100CD8AB8, &qword_100A83DF0);
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[9];
      }

      else
      {
        type metadata accessor for Date();
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[19];
        }

        else
        {
          sub_10022C350(&qword_100CA60E8, &unk_100A5A9F0);
          sub_100003928();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[20];
          }

          else
          {
            v10 = sub_10022C350(&qword_100CA65C8, &unk_100A31670);
            v14 = a4[26];
          }
        }
      }
    }

    v11 = v4 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_10009DB2C(uint64_t *a1, uint64_t *a2)
{
  sub_10022C350(a1, a2);
  v2 = swift_allocObject();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  v3 = Dictionary.init(dictionaryLiteral:)();
  *(v2 + 56) = _swiftEmptyArrayStorage;
  *(v2 + 64) = v3;
  return v2;
}

uint64_t sub_10009DB98@<X0>(uint64_t *a2@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10009DBE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v51 = a2;
  v5 = a1[2];
  v6 = type metadata accessor for Optional();
  v56 = *(v6 - 8);
  __chkstk_darwin(v6);
  sub_100003848();
  v47 = v7;
  __chkstk_darwin(v8);
  v49 = &v44 - v9;
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v57 = *(v5 - 8);
  __chkstk_darwin(v13);
  sub_100003848();
  v53 = v14;
  __chkstk_darwin(v15);
  v50 = &v44 - v16;
  v17 = *(v2 + 10);
  v18 = *(v3 + 11);
  v19 = a1[3];
  v20 = a1[4];
  v58[0] = v5;
  v58[1] = v19;
  v58[2] = v5;
  v58[3] = v20;
  v21 = type metadata accessor for ModuleView.Cache(0, v58);
  WitnessTable = swift_getWitnessTable(byte_100A5F5F8, v21);
  v52 = v17;
  v55 = v18;
  v23 = StateObject.wrappedValue.getter();
  v24 = *(*v23 + 112);
  swift_beginAccess();
  v25 = v56;
  (*(v56 + 16))(v12, v23 + v24, v6);

  v26 = sub_100024D10(v12, 1, v5);
  v48 = v6;
  v46 = v21;
  if (v26 == 1)
  {
    v54 = WitnessTable;
    (*(v25 + 8))(v12, v6);
  }

  else
  {
    v54 = *(v57 + 32);
    v54(v53, v12, v5);
    v27 = StateObject.wrappedValue.getter();
    v28 = *(v27 + *(*v27 + 120) + 8);

    sub_1000E4CAC(v28, *(v3 + 9));
    v30 = v29;

    if (v30)
    {
      v31 = v50;
      v54(v50, v53, v5);
      v32 = v57;
LABEL_8:
      (*(v3 + 1))(v31);
      return (*(v32 + 8))(v31, v5);
    }

    v54 = WitnessTable;
    (*(v57 + 8))(v53, v5);
  }

  sub_1000161C0(v3 + 3, *(v3 + 6));
  v53 = v3;
  v34 = *(v3 + 8);
  v33 = *(v3 + 9);
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = v33;
  v45 = v34;

  v52 = v33;

  v36 = v49;
  dispatch thunk of ResolverType.resolve<A>(_:with:)();

  result = sub_100024D10(v36, 1, v5);
  if (result != 1)
  {
    v32 = v57;
    v31 = v50;
    (*(v57 + 32))(v50, v36, v5);
    v38 = StateObject.wrappedValue.getter();
    v39 = v47;
    (*(v32 + 16))(v47, v31, v5);
    sub_10001B350(v39, 0, 1, v5);
    v40 = *(*v38 + 112);
    swift_beginAccess();
    (*(v56 + 40))(v38 + v40, v39, v48);
    swift_endAccess();

    v41 = StateObject.wrappedValue.getter();
    v42 = (v41 + *(*v41 + 120));
    v43 = v52;
    *v42 = v45;
    v42[1] = v43;

    v3 = v53;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10009E190()
{

  return swift_deallocObject();
}

void *sub_10009E1D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1840, &qword_100A76C38);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v69)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&unk_100CE0F40, &unk_100A502E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBE1B0, &unk_100A55870);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v67)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for SessionEventsAndDataCoordinator(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = result;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for SessionScenePhaseObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96F0, &qword_100A9F580);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v65)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4B60, &qword_100A2EE20);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v47 = result;
  v48 = v7;
  v49 = v6;
  v50 = v5;
  v51 = a2;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1808, &qword_100A76C00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v63)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v8 = sub_10002D7F8(v68, v69);
  v46[3] = v46;
  v9 = __chkstk_darwin(v8);
  v11 = (v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = sub_10002D7F8(v62, v63);
  v46[2] = v46;
  v14 = __chkstk_darwin(v13);
  v16 = (v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v11;
  v19 = *v16;
  v20 = type metadata accessor for MainInteractor();
  v61[3] = v20;
  v61[4] = &off_100C5E2C8;
  v61[0] = v18;
  v21 = type metadata accessor for EmptySidebarWidthStorage();
  v59 = v21;
  v60 = &off_100C79A70;
  v58[0] = v19;
  v22 = type metadata accessor for MainModule();
  v23 = swift_allocObject();
  v24 = sub_10002D7F8(v61, v20);
  v46[1] = v46;
  v25 = __chkstk_darwin(v24);
  v27 = (v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v25);
  v29 = sub_10002D7F8(v58, v59);
  v46[0] = v46;
  v30 = __chkstk_darwin(v29);
  v32 = (v46 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32, v30);
  v34 = *v27;
  v35 = *v32;
  v56 = v20;
  v57 = &off_100C5E2C8;
  v54 = &off_100C79A70;
  *&v55 = v34;
  v53 = v21;
  *&v52 = v35;
  if (qword_100CA26C8 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_10000703C(v36, qword_100D90AC0);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  v39 = os_log_type_enabled(v37, v38);
  v41 = v49;
  v40 = v50;
  v43 = v47;
  v42 = v48;
  if (v39)
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Initializing Main module", v44, 2u);
  }

  sub_100013188(&v55, (v23 + 2));
  v23[7] = v40;
  sub_100013188(&v66, (v23 + 8));
  v23[13] = v41;
  v23[14] = v42;
  sub_100013188(&v64, (v23 + 15));
  v23[20] = v43;
  sub_100013188(&v52, (v23 + 21));
  sub_100006F14(v58);
  sub_100006F14(v61);
  sub_100006F14(v62);
  result = sub_100006F14(v68);
  v45 = v51;
  v51[3] = v22;
  v45[4] = &off_100C70368;
  *v45 = v23;
  return result;
}

double sub_10009E8D0@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + 56);
  sub_100035B30(v1 + 16, (a1 + 1));
  sub_100035B30(v1 + 64, (a1 + 6));
  sub_100035B30(v1 + 120, (a1 + 11));
  v4 = *(v1 + 160);
  v5 = type metadata accessor for MainView(0);
  sub_100035B30(v1 + 168, a1 + v5[16]);
  *(a1 + v5[8]) = swift_getKeyPath();
  v6 = sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  sub_10001CEA0(v6);
  *(a1 + v5[9]) = swift_getKeyPath();
  v7 = sub_10022C350(&qword_100CE1010, &qword_100A8B9B8);
  sub_10001CEA0(v7);
  *(a1 + v5[10]) = swift_getKeyPath();
  v8 = sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  sub_10001CEA0(v8);
  *a1 = v3;
  v9 = a1 + v5[11];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  *(a1 + v5[12]) = 0;
  *(a1 + v5[13]) = 0;
  v10 = a1 + v5[14];

  State.init(wrappedValue:)();
  result = *&v12;
  *v10 = v12;
  *(v10 + 2) = v13;
  *(a1 + v5[15]) = v4;
  return result;
}

uint64_t sub_10009EB2C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityInvertColors.getter();
  *a1 = result & 1;
  return result;
}

void sub_10009EB5C(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for AutomationInfoSetting;
  *(a1 + 32) = &off_100C6A9C0;
  *a1 = 0;
}

unint64_t sub_10009EB78()
{
  result = qword_100CA6030;
  if (!qword_100CA6030)
  {
    result = swift_getWitnessTable(byte_100A3089C, &unk_100C49D58, v0, v1);
    atomic_store(result, &qword_100CA6030);
  }

  return result;
}

unint64_t sub_10009EBD8()
{
  result = qword_100CA6038;
  if (!qword_100CA6038)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutomationInfoEnabledKey, &type metadata for AutomationInfoEnabledKey, v0, v1);
    atomic_store(result, &qword_100CA6038);
  }

  return result;
}

uint64_t sub_10009EC2C(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  EnvironmentValues.subscript.getter();
  return v3;
}

void sub_10009ECF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000E8AC();
  a19 = v22;
  a20 = v23;
  sub_100022CE8();
  v25 = v24;
  v27 = sub_100073CDC(v26);
  v28 = 0;
  while (1)
  {
    if (v27 == v28)
    {
LABEL_10:
      sub_10000C8F4();
      return;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v28 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v29 = *(v21 + 8 * v28 + 32);
    }

    if (__OFADD__(v28, 1))
    {
      break;
    }

    a10 = v29;
    v25(&a10);

    ++v28;
    if (v20)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_10009EDBC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10009EE14()
{
  v1 = sub_100017580();
  v2(v1);
  sub_1000037E8();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_10009EE68(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10009EEC0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10009EF18(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10009EF70(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10009EFC8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10009F020(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10009F078(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

void *sub_10009F0D0()
{
  v0 = sub_10009F110();
  sub_1000054C8(v0, &type metadata for WindowHorizontalSizeClassKey);

  return EnvironmentValues.subscript.getter();
}

unint64_t sub_10009F110()
{
  result = qword_100CA6040;
  if (!qword_100CA6040)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WindowHorizontalSizeClassKey, &type metadata for WindowHorizontalSizeClassKey, v0, v1);
    atomic_store(result, &qword_100CA6040);
  }

  return result;
}

uint64_t WindowHorizontalSizeClassKey.defaultValue.unsafeMutableAddressor()
{
  if (qword_100CA1EA8 != -1)
  {
    sub_100007F64(&qword_100CA1EA8);
  }

  v0 = sub_10022C350(&qword_100CA6028, &qword_100A40610);

  return sub_10000703C(v0, static WindowHorizontalSizeClassKey.defaultValue);
}

void sub_10009F228()
{
  sub_10000C778();
  v33 = v2;
  v34 = v1;
  v3 = v2;
  type metadata accessor for MainViewModel(0);
  sub_100028D80();
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_100004E28();
  v5 = v3 + *(sub_10022C350(&qword_100CE41D0, &unk_100A96F40) + 36);
  sub_100095588();
  sub_10001FC4C();
  sub_100097D4C(v0, v6);
  sub_10009A44C();
  v32 = v7;
  v9 = v8;
  sub_10009A44C();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_10009A44C();
  v17 = v16;
  v19 = v18;
  LOBYTE(v3) = v20;
  v21 = type metadata accessor for ModalPresentationViewModifier(0);
  v22 = (v5 + *(v21 + 20));
  *v22 = v32;
  v22[1] = v9;
  sub_100075238(v22);
  *v23 = v11;
  *(v23 + 8) = v13;
  *(v23 + 16) = v15 & 1;
  v25 = v5 + *(v24 + 28);
  *v25 = v17;
  *(v25 + 8) = v19;
  *(v25 + 16) = v3 & 1;
  v26 = (v5 + *(v24 + 32));
  type metadata accessor for ObservableResolver();
  sub_100010F80();
  sub_100081574(v27, v28);
  *v26 = EnvironmentObject.init()();
  v26[1] = v29;
  v30 = v5 + *(v21 + 36);
  *v30 = swift_getKeyPath();
  *(v30 + 8) = 0;
  sub_10022C350(&qword_100CE41D8, &unk_100A96F80);
  sub_1000037E8();
  (*(v31 + 16))(v33, v34);
  sub_10000536C();
}

uint64_t sub_10009F4CC(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t), uint64_t a2, void (*a3)(uint64_t *__return_ptr), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a3(&v18);
  a1(v17, &v18, 1);

  result = v17[0];
  if (!v17[0])
  {
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(82);
    v12._object = 0x8000000100ABBDF0;
    v12._countAndFlagsBits = 0xD00000000000004BLL;
    String.append(_:)(v12);
    v13._countAndFlagsBits = sub_100037950();
    v13._object = 0xE900000000000065;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 8236;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    v15._countAndFlagsBits = a7;
    v15._object = a8;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 46;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10009F610@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009F608();
  *a1 = result;
  return result;
}

uint64_t sub_10009F63C(uint64_t a1, void (*a2)(uint64_t *, uint64_t, double))
{
  v5 = sub_10022C350(&qword_100CA4CC0, &qword_100A2EF38);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  v17 = a1;
  a2(&v17, 1, v6);
  v9 = type metadata accessor for MainViewModel(0);
  if (sub_100024D10(v8, 1, v9) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v8, &qword_100CA4CC0, &qword_100A2EF38);
  v16[1] = 0;
  v16[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v11._object = 0x8000000100ABBD90;
  v11._countAndFlagsBits = 0xD000000000000050;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x746174536E69614DLL;
  v12._object = 0xE900000000000065;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x776569566E69614DLL;
  v14._object = 0xED00006C65646F4DLL;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10009F894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v153 = a2;
  v3 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  __chkstk_darwin(v3 - 8);
  v152 = &v132[-v4];
  v5 = sub_1000038CC();
  v144 = type metadata accessor for SearchViewState.ViewState(v5);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000038E4();
  v145 = v7;
  v8 = sub_1000038CC();
  v141 = type metadata accessor for HomeAndWorkRefinementViewState(v8);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000038E4();
  v140 = v10;
  v11 = sub_1000038CC();
  v139 = type metadata accessor for AveragesDetailViewState(v11);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000038E4();
  v138 = v13;
  v14 = sub_1000038CC();
  v137 = type metadata accessor for MoonDetailViewState(v14);
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_1000038E4();
  v17 = sub_100003918(v16);
  v136 = type metadata accessor for SunriseSunsetDetailViewState(v17);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_1000038E4();
  v20 = sub_100003918(v19);
  HourPrecipitationDetailViewState = type metadata accessor for NextHourPrecipitationDetailViewState(v20);
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_1000038E4();
  v23 = sub_100003918(v22);
  v134 = type metadata accessor for AirQualityDetailViewState(v23);
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_1000038E4();
  v26 = sub_100003918(v25);
  v133 = type metadata accessor for ConditionDetailViewState(v26);
  sub_1000037E8();
  __chkstk_darwin(v27);
  sub_1000038E4();
  v29 = sub_100003918(v28);
  v142 = type metadata accessor for ModalViewState.LocationDetailModal(v29);
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_1000038E4();
  v143 = v31;
  v32 = sub_10022C350(&qword_100CA65E0, &unk_100A31400);
  __chkstk_darwin(v32 - 8);
  v148 = &v132[-v33];
  v34 = sub_1000038CC();
  v146 = type metadata accessor for ModalViewState(v34);
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_1000038E4();
  v147 = v36;
  v37 = sub_10022C350(&qword_100CCF2F8, &unk_100A8FDD0);
  __chkstk_darwin(v37 - 8);
  sub_100003908();
  __chkstk_darwin(v38);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v42);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v43);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v44);
  v150 = &v132[-v45];
  v46 = sub_10022C350(&qword_100CCF300, &unk_100A70560);
  sub_1000037E8();
  __chkstk_darwin(v47);
  v49 = &v132[-v48];
  v50 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v51);
  v53 = &v132[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v54);
  v56 = &v132[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v149 = a1;
  v57 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  sub_1000A0730(v57 + v50[5], v56, type metadata accessor for ViewState.SecondaryViewState);
  v58 = v57;
  sub_1000A0730(v57, v53, type metadata accessor for ViewState);
  v59 = objc_opt_self();

  v60 = [v59 currentDevice];
  v61 = [v60 userInterfaceIdiom];

  if (v61 && *&v53[v50[9] + 8] == 2)
  {
    v62 = 1;
  }

  else
  {
    v62 = v53[v50[7]];
  }

  v63 = v50;
  sub_10009EF70(v53, type metadata accessor for ViewState);
  sub_1000A08E8(v56, &v49[*(v46 + 48)], type metadata accessor for ViewState.SecondaryViewState);

  if (v62)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100074D48();
    if (EnumCaseMultiPayload == 1)
    {
      v65 = 2;
    }

    else
    {
      v65 = 1;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v66 = _swiftEmptyArrayStorage;
    }

    else
    {
      v66 = &off_100C44CB8;
    }
  }

  else
  {
    sub_100074D48();
    v66 = _swiftEmptyArrayStorage;
    v65 = 1;
  }

  v67 = v149;
  v68 = v150;
  v69 = v58;
  v70 = v147;
  v71 = v148;
  sub_1000A0730(v149 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v147, type metadata accessor for ModalViewState);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 7u:
      type metadata accessor for MainViewModel.ModalModule(0);
      sub_100014C10();
      goto LABEL_18;
    case 4u:
      v72 = sub_100003940();
      sub_100051B60(v72, v73, v74, v75);
      v76 = type metadata accessor for ModalViewState.MapViewModal(0);
      if (sub_100024D10(v71, 1, v76) == 1)
      {
        *v68 = 1;
        type metadata accessor for MainViewModel.ModalModule(0);
        sub_100014C10();
LABEL_18:
        swift_storeEnumTagMultiPayload();
        v77 = sub_100049A98();
LABEL_19:
        sub_10001B350(v77, v78, v79, v80);
      }

      else
      {
        *v68 = 0;
        type metadata accessor for MainViewModel.ModalModule(0);
        sub_100014C10();
        swift_storeEnumTagMultiPayload();
        v98 = sub_100049A98();
        sub_10001B350(v98, v99, v100, v101);
        sub_1000180EC(v71, &qword_100CA65E0, &unk_100A31400);
      }

      v81 = v152;
LABEL_21:
      if (*(*v69 + 64) != 1)
      {
        goto LABEL_24;
      }

      sub_10065F814(v69 + v50[8], v81);
      v82 = type metadata accessor for SearchViewState(0);
      if (sub_100024D10(v81, 1, v82) == 1)
      {
        sub_1000180EC(v81, &qword_100CA6600, &unk_100A5C400);
LABEL_24:
        v83 = 1;
      }

      else
      {
        v92 = v145;
        sub_1000A0730(v81 + *(v82 + 20), v145, type metadata accessor for SearchViewState.ViewState);
        sub_10009EF70(v81, type metadata accessor for SearchViewState);
        v83 = 0;
        switch(swift_getEnumCaseMultiPayload())
        {
          case 2u:
          case 3u:
            break;
          case 4u:
            goto LABEL_24;
          default:
            sub_10009EF70(v92, type metadata accessor for SearchViewState.ViewState);
            v83 = 0;
            break;
        }
      }

      v84 = v50[10];
      v85 = *(v69 + v50[11]);
      v86 = type metadata accessor for MainViewModel(0);
      v87 = v69 + v84;
      v88 = v63;
      v89 = v153;
      sub_1000A0730(v87, v153 + v86[9], type metadata accessor for WeatherMapPresentationState);
      sub_1000A0730(v69 + v88[9], v89 + v86[10], type metadata accessor for DisplayMetrics);
      v90 = v67 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
      swift_beginAccess();
      LOBYTE(v90) = *(v90 + *(type metadata accessor for EnvironmentState(0) + 76)) == 0;
      *v89 = v65;
      *(v89 + 8) = v66;
      result = sub_100051B60(v68, v89 + v86[6], &qword_100CCF2F8, &unk_100A8FDD0);
      *(v89 + v86[7]) = v83;
      *(v89 + v86[8]) = v85;
      *(v89 + v86[11]) = v90;
      return result;
    case 5u:
      sub_1000A08E8(v70, v143, type metadata accessor for ModalViewState.LocationDetailModal);
      v93 = swift_getEnumCaseMultiPayload();
      v81 = v152;
      switch(v93)
      {
        case 1:
          v118 = sub_100016CA4();
          sub_100017BF0(v118, &v159, v119);
          sub_10001C96C(*(v134 + 24));
          sub_10006979C();
          v120.n128_f64[0] = sub_10001F46C();
          sub_100022F88(&v152, v120, v121);
          sub_1000201F8();
          goto LABEL_38;
        case 2:
          v106 = sub_100016CA4();
          sub_100017BF0(v106, &v160, v107);
          sub_10001C96C(*(HourPrecipitationDetailViewState + 20));
          sub_10006979C();
          v108.n128_f64[0] = sub_10001F46C();
          sub_100022F88(&v153, v108, v109);
          sub_1000201F8();
          goto LABEL_38;
        case 3:
          v110 = sub_100016CA4();
          sub_100017BF0(v110, &v161, v111);
          sub_10001C96C(*(v136 + 20));
          sub_10006979C();
          v112.n128_f64[0] = sub_10001F46C();
          sub_100022F88(v154, v112, v113);
          sub_1000201F8();
          goto LABEL_38;
        case 4:
          v102 = sub_100016CA4();
          sub_100017BF0(v102, &v162, v103);
          sub_10001C96C(*(v137 + 28));
          sub_10006979C();
          v104.n128_f64[0] = sub_10001F46C();
          sub_100022F88(v155, v104, v105);
          sub_1000201F8();
          goto LABEL_38;
        case 5:
          v122 = sub_100016CA4();
          v71 = v138;
          sub_1000A08E8(v122, v138, v123);
          sub_10001C96C(*(v139 + 28));
          sub_10006979C();
          v124.n128_f64[0] = sub_10001F46C();
          sub_100022F88(v156, v124, v125);
          sub_1000201F8();
          goto LABEL_38;
        case 6:
          type metadata accessor for URL();
          sub_1000037E8();
          (*(v127 + 32))(v68, v143);
          type metadata accessor for MainViewModel.ModalModule.LocationDetailModule(0);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for MainViewModel.ModalModule(0);
          sub_100014C10();
          swift_storeEnumTagMultiPayload();
          v128 = sub_100049A98();
          sub_10001B350(v128, v129, v130, v131);
          goto LABEL_21;
        case 7:
          v114 = sub_100016CA4();
          v71 = v140;
          sub_1000A08E8(v114, v140, v115);
          sub_10001C96C(*(v141 + 24));
          sub_10006979C();
          v116.n128_f64[0] = sub_10001F46C();
          sub_100022F88(v157, v116, v117);
          sub_1000201F8();
          goto LABEL_38;
        default:
          v94 = sub_100016CA4();
          sub_100017BF0(v94, &v158, v95);
          sub_10001C96C(*(v133 + 28));
          sub_10006979C();
          v96.n128_f64[0] = sub_10001F46C();
          sub_100022F88(v151, v96, v97);
          sub_1000201F8();
LABEL_38:
          swift_storeEnumTagMultiPayload();
          v126 = type metadata accessor for MainViewModel.ModalModule(0);
          swift_storeEnumTagMultiPayload();
          sub_10001B350(v71, 0, 1, v126);
          sub_100051B60(v71, v68, &qword_100CCF2F8, &unk_100A8FDD0);
          break;
      }

      goto LABEL_21;
    case 6u:
      v80 = type metadata accessor for MainViewModel.ModalModule(0);
      v77 = v68;
      v78 = 1;
      v79 = 1;
      goto LABEL_19;
    default:
      sub_100008BBC();
      type metadata accessor for MainViewModel.ModalModule(0);
      sub_100014C10();
      goto LABEL_18;
  }
}

uint64_t sub_1000A0664@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  a1();
  v3 = type metadata accessor for MainViewModel(0);

  return sub_10001B350(a2, 0, 1, v3);
}

uint64_t sub_1000A06D8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000A0730(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1000A078C()
{
  v1 = sub_100003B38();
  v2(v1);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return v0;
}

uint64_t sub_1000A07E0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000A0838()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000A0890()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000A08E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1000A0944()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000A09B0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_10022C350(&qword_100CCF2F8, &unk_100A8FDD0);
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      type metadata accessor for WeatherMapPresentationState(0);
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[9];
      }

      else
      {
        v10 = type metadata accessor for DisplayMetrics(0);
        v11 = a4[10];
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1000A0AC0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000A0B2C(uint64_t a1, uint64_t a2, int *a3)
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
    sub_10022C350(&qword_100CCF2F8, &unk_100A8FDD0);
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[6];
    }

    else
    {
      type metadata accessor for WeatherMapPresentationState(0);
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[9];
      }

      else
      {
        v10 = type metadata accessor for DisplayMetrics(0);
        v11 = a3[10];
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

unint64_t sub_1000A0C40()
{
  result = qword_100CE46E8;
  if (!qword_100CE46E8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE44F8, &qword_100A972F0);
    v4[0] = sub_1000A0CCC();
    v4[1] = sub_100061564();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE46E8);
  }

  return result;
}

unint64_t sub_1000A0CCC()
{
  result = qword_100CE46F0;
  if (!qword_100CE46F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE44F0, &qword_100A972E8);
    v4[0] = sub_10006768C(&qword_100CE46F8, &qword_100CE4700, &unk_100A973B0);
    v4[1] = sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8, &unk_100A97360);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE46F0);
  }

  return result;
}

unint64_t sub_1000A0DB0()
{
  result = qword_100CE4708;
  if (!qword_100CE4708)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE44D8, &qword_100A972D0);
    v4[0] = sub_1000A0E3C();
    v4[1] = sub_1000A11A8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE4708);
  }

  return result;
}

unint64_t sub_1000A0E3C()
{
  result = qword_100CE4630;
  if (!qword_100CE4630)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE44D0, &qword_100A972C8);
    v4[0] = sub_1000A0EC8();
    v4[1] = sub_1000A1038();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE4630);
  }

  return result;
}

unint64_t sub_1000A0EC8()
{
  result = qword_100CE4638;
  if (!qword_100CE4638)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE44E8, &qword_100A972E0);
    v4[0] = sub_1000A0F54();
    v4[1] = sub_100061564();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE4638);
  }

  return result;
}

unint64_t sub_1000A0F54()
{
  result = qword_100CE4640;
  if (!qword_100CE4640)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE44E0, &qword_100A972D8);
    v4[0] = sub_10006768C(&qword_100CE4648, &qword_100CE4650, &qword_100A97380);
    v4[1] = sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8, &unk_100A97360);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE4640);
  }

  return result;
}

unint64_t sub_1000A1038()
{
  result = qword_100CE4658;
  if (!qword_100CE4658)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE44B8, &qword_100A972B0);
    v4[0] = sub_1000A10C4();
    v4[1] = sub_100061564();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE4658);
  }

  return result;
}

unint64_t sub_1000A10C4()
{
  result = qword_100CE4660;
  if (!qword_100CE4660)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE44B0, &qword_100A972A8);
    v4[0] = sub_10006768C(&qword_100CE4668, &qword_100CE4670, &qword_100A97388);
    v4[1] = sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8, &unk_100A97360);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE4660);
  }

  return result;
}

unint64_t sub_1000A11A8()
{
  result = qword_100CE4678;
  if (!qword_100CE4678)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE43C8, &qword_100A971C0);
    v4[0] = sub_1000A1260();
    v4[1] = sub_10006768C(&qword_100CE4628, &qword_100CE43B8, &qword_100A971B0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE4678);
  }

  return result;
}

unint64_t sub_1000A1260()
{
  result = qword_100CE4580;
  if (!qword_100CE4580)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE44A8, &qword_100A972A0);
    v4[0] = sub_1000A12EC();
    v4[1] = sub_1000A1A50();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE4580);
  }

  return result;
}

unint64_t sub_1000A12EC()
{
  result = qword_100CE4588;
  if (!qword_100CE4588)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE4490, &qword_100A97288);
    v4[0] = sub_1000A1378();
    v4[1] = sub_1000A16E4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE4588);
  }

  return result;
}

unint64_t sub_1000A1378()
{
  result = qword_100CE4590;
  if (!qword_100CE4590)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE4488, &qword_100A97280);
    v4[0] = sub_1000A1404();
    v4[1] = sub_1000A1574();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE4590);
  }

  return result;
}

unint64_t sub_1000A1404()
{
  result = qword_100CE4598;
  if (!qword_100CE4598)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE44A0, &qword_100A97298);
    v4[0] = sub_1000A1490();
    v4[1] = sub_100061564();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE4598);
  }

  return result;
}

unint64_t sub_1000A1490()
{
  result = qword_100CE45A0;
  if (!qword_100CE45A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE4498, &qword_100A97290);
    v4[0] = sub_10006768C(&qword_100CB0680, &qword_100CB0688, &unk_100A40B70);
    v4[1] = sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8, &unk_100A97360);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE45A0);
  }

  return result;
}

unint64_t sub_1000A1574()
{
  result = qword_100CE45A8;
  if (!qword_100CE45A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE4468, &qword_100A97260);
    v4[0] = sub_1000A1600();
    v4[1] = sub_100061564();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE45A8);
  }

  return result;
}

unint64_t sub_1000A1600()
{
  result = qword_100CE45B0;
  if (!qword_100CE45B0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE4460, &qword_100A97258);
    v4[0] = sub_10006768C(&qword_100CB0690, &qword_100CB0698, &unk_100A97370);
    v4[1] = sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8, &unk_100A97360);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE45B0);
  }

  return result;
}

unint64_t sub_1000A16E4()
{
  result = qword_100CE45B8;
  if (!qword_100CE45B8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE4448, &qword_100A97240);
    v4[0] = sub_1000A1770();
    v4[1] = sub_1000A18E0();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE45B8);
  }

  return result;
}

unint64_t sub_1000A1770()
{
  result = qword_100CE45C0;
  if (!qword_100CE45C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE4458, &qword_100A97250);
    v4[0] = sub_1000A17FC();
    v4[1] = sub_100061564();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE45C0);
  }

  return result;
}

unint64_t sub_1000A17FC()
{
  result = qword_100CE45C8;
  if (!qword_100CE45C8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE4450, &qword_100A97248);
    v4[0] = sub_10006768C(&qword_100CB06B0, &qword_100CB06B8, &qword_100A40B88);
    v4[1] = sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8, &unk_100A97360);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE45C8);
  }

  return result;
}

unint64_t sub_1000A18E0()
{
  result = qword_100CE45D0;
  if (!qword_100CE45D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE4438, &qword_100A97230);
    v4[0] = sub_1000A196C();
    v4[1] = sub_100061564();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE45D0);
  }

  return result;
}

unint64_t sub_1000A196C()
{
  result = qword_100CE45D8;
  if (!qword_100CE45D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE4430, &qword_100A97228);
    v4[0] = sub_10006768C(&qword_100CB06C0, &qword_100CB06C8, &qword_100A40B90);
    v4[1] = sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8, &unk_100A97360);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE45D8);
  }

  return result;
}

unint64_t sub_1000A1A50()
{
  result = qword_100CE45E0;
  if (!qword_100CE45E0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE4418, &qword_100A97210);
    v4[0] = sub_1000A1B08();
    v4[1] = sub_1008D8260(&qword_100CE4610, &qword_100CE43E8, &qword_100A971E0, sub_1000A1E74);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE45E0);
  }

  return result;
}

unint64_t sub_1000A1B08()
{
  result = qword_100CE45E8;
  if (!qword_100CE45E8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE4410, &qword_100A97208);
    v4[0] = sub_1000A1B94();
    v4[1] = sub_1000A1D04();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE45E8);
  }

  return result;
}

unint64_t sub_1000A1B94()
{
  result = qword_100CE45F0;
  if (!qword_100CE45F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE4428, &qword_100A97220);
    v4[0] = sub_1000A1C20();
    v4[1] = sub_100061564();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE45F0);
  }

  return result;
}

unint64_t sub_1000A1C20()
{
  result = qword_100CE45F8;
  if (!qword_100CE45F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE4420, &qword_100A97218);
    v4[0] = sub_10006768C(&qword_100CB06F0, &qword_100CB06F8, &qword_100A40BA8);
    v4[1] = sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8, &unk_100A97360);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE45F8);
  }

  return result;
}

unint64_t sub_1000A1D04()
{
  result = qword_100CE4600;
  if (!qword_100CE4600)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE43F8, &qword_100A971F0);
    v4[0] = sub_1000A1D90();
    v4[1] = sub_100061564();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE4600);
  }

  return result;
}

unint64_t sub_1000A1D90()
{
  result = qword_100CE4608;
  if (!qword_100CE4608)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE43F0, &qword_100A971E8);
    v4[0] = sub_10006768C(&qword_100CB0700, &qword_100CB0708, &qword_100A40BB0);
    v4[1] = sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8, &unk_100A97360);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE4608);
  }

  return result;
}

unint64_t sub_1000A1E74()
{
  result = qword_100CE4618;
  if (!qword_100CE4618)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE43D8, &qword_100A971D0);
    v4[0] = sub_1000A1F00();
    v4[1] = sub_100061564();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE4618);
  }

  return result;
}

unint64_t sub_1000A1F00()
{
  result = qword_100CE4620;
  if (!qword_100CE4620)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE43D0, &qword_100A971C8);
    v4[0] = sub_10006768C(&qword_100CB0738, &qword_100CB0740, &qword_100A40BC8);
    v4[1] = sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8, &unk_100A97360);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE4620);
  }

  return result;
}

uint64_t sub_1000A1FE4()
{
  sub_10022C350(&unk_100CB3AA0, &unk_100A55B90);
  Binding.wrappedValue.getter();
  return v1;
}

uint64_t sub_1000A203C@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a8@<X8>)
{
  v19[2] = a6;
  v19[0] = a8;
  v19[1] = a4;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _ValueTransactionModifier();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v19 - v16;
  (*(v10 + 16))(v12, a1, a5, v15);

  _ValueTransactionModifier.init(value:transform:)();
  View.modifier<A>(_:)();
  return (*(v14 + 8))(v17, v13);
}

uint64_t type metadata accessor for VFXTestView(uint64_t a1)
{
  result = qword_100CACC38;
  if (!qword_100CACC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A228C(uint64_t a1)
{
  sub_1000A23E4(319);
  if (v1 <= 0x3F)
  {
    sub_100081B54(319, &qword_100CACC50, &protocol descriptor for VFXTestInteractorType, 1);
    if (v2 <= 0x3F)
    {
      sub_100061D18(319);
      if (v3 <= 0x3F)
      {
        sub_100081B54(319, &qword_100CACC68, &protocol descriptor for WeatherConditionBackgroundManagerType, 0);
        if (v4 <= 0x3F)
        {
          sub_100081B54(319, &unk_100CACC70, &protocol descriptor for MicaLoaderType, 1);
          if (v5 <= 0x3F)
          {
            type metadata accessor for SkyBackgroundGradient();
            if (v6 <= 0x3F)
            {
              type metadata accessor for Date();
              if (v7 <= 0x3F)
              {
                type metadata accessor for Elevation();
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

void sub_1000A23E4(uint64_t a1)
{
  if (!qword_100CACC48)
  {
    sub_10022E824(&qword_100CA4A38, &unk_100A7B8A0);
    sub_100006F64(&qword_100CA4A40, &qword_100CA4A38, &unk_100A7B8A0, asc_100AA1480);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100CACC48);
    }
  }
}

uint64_t type metadata accessor for VFXTestViewModel(uint64_t a1)
{
  result = qword_100CD7200;
  if (!qword_100CD7200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000A24F4()
{
  result = qword_100CE12A8;
  if (!qword_100CE12A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE12B0, &qword_100A91BE8);
    v4[0] = sub_10006768C(&qword_100CE12B8, &qword_100CE12C0, &qword_100A91BF0);
    v4[1] = sub_100061564();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE12A8);
  }

  return result;
}

unint64_t sub_1000A25AC()
{
  result = qword_100CE12C8;
  if (!qword_100CE12C8)
  {
    result = swift_getWitnessTable("ٻ ", &type metadata for LazyUntilDismissedViewModifier, v0, v1);
    atomic_store(result, &qword_100CE12C8);
  }

  return result;
}

uint64_t sub_1000A2608@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10022C350(&qword_100CE1250, &qword_100A91BB0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v42 - v6;
  v48 = sub_10022C350(&qword_100CE1258, &qword_100A91BB8);
  __chkstk_darwin(v48);
  v9 = v42 - v8;
  v44 = sub_10022C350(&qword_100CE1260, &qword_100A91BC0);
  __chkstk_darwin(v44);
  v45 = v42 - v10;
  v47 = sub_10022C350(&qword_100CE1268, &qword_100A91BC8);
  __chkstk_darwin(v47);
  v46 = v42 - v11;
  v43 = sub_10022C350(&qword_100CE1270, &qword_100A91BD0);
  __chkstk_darwin(v43);
  v13 = v42 - v12;
  v14 = type metadata accessor for MainViewModel(0);
  __chkstk_darwin(v14 - 8);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095730();
  v17 = *v16;
  v18 = sub_1000A2E84(v16);
  if (v17 == 1)
  {
    v42[1] = v42;
    __chkstk_darwin(v18);
    v42[0] = sub_10022C350(&qword_100CE12E8, &qword_100A91C00);
    v19 = sub_10022E824(&qword_100CE12F0, &qword_100A91C08);
    v20 = sub_10022E824(&qword_100CE12F8, &qword_100A91C10);
    v42[3] = v4;
    v21 = v20;
    v22 = sub_10006768C(&qword_100CE1300, &qword_100CE12F0, &qword_100A91C08);
    v42[2] = a1;
    v23 = sub_10022E824(&qword_100CE1308, &unk_100A91C18);
    v24 = sub_10006768C(&unk_100CE1310, &qword_100CE1308, &unk_100A91C18);
    __src[0] = v23;
    __src[1] = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    __src[0] = v19;
    __src[1] = v21;
    __src[2] = v22;
    __src[3] = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    NavigationStack.init<>(root:)();
    v13[*(sub_10022C350(&qword_100CE12B0, &qword_100A91BE8) + 36)] = 0;
    __src[0] = sub_1000A3470();
    __src[1] = v26;
    LOBYTE(__src[2]) = v27 & 1;
    sub_10022C350(&unk_100CB3AA0, &unk_100A55B90);
    Binding.wrappedValue.getter();
    v28 = v49[0];

    sub_1000A3644(v28, v54);
    v29 = &v13[*(sub_10022C350(&qword_100CE12A0, &qword_100A91BE0) + 36)];
    v30 = v54[1];
    *v29 = v54[0];
    *(v29 + 1) = v30;
    *(v29 + 4) = v55;
    v31 = sub_1000A3470();
    v33 = v32;
    LOBYTE(v22) = v34;
    sub_100085DC0(v2, __src);
    v35 = swift_allocObject();
    memcpy((v35 + 16), __src, 0x48uLL);
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1008921E4;
    *(v36 + 24) = v35;
    LOBYTE(v52) = 0;
    State.init(wrappedValue:)();
    v37 = v49[0];
    v38 = v50;
    v39 = &v13[*(v43 + 36)];
    *v39 = v31;
    *(v39 + 1) = v33;
    v39[16] = v22 & 1;
    v39[17] = 0;
    *(v39 + 18) = v52;
    *(v39 + 11) = v53;
    *(v39 + 3) = sub_1008921EC;
    *(v39 + 4) = v36;
    v39[40] = v37;
    *(v39 + 41) = v49[0];
    *(v39 + 11) = *(v49 + 3);
    *(v39 + 6) = v38;
    sub_1000302D8(v13, v45, &qword_100CE1270, &qword_100A91BD0);
    swift_storeEnumTagMultiPayload();
    sub_1008920A0();
    v40 = v46;
    _ConditionalContent<>.init(storage:)();
    sub_1000302D8(v40, v9, &qword_100CE1268, &qword_100A91BC8);
    swift_storeEnumTagMultiPayload();
    sub_100892014();
    sub_10006768C(&qword_100CE12E0, &qword_100CE1250, &qword_100A91BB0);
    _ConditionalContent<>.init(storage:)();
    sub_1000180EC(v40, &qword_100CE1268, &qword_100A91BC8);
    return sub_1000180EC(v13, &qword_100CE1270, &qword_100A91BD0);
  }

  else if (v17 == 2)
  {
    sub_10022C350(&qword_100CE1278, &qword_100A91BD8);
    sub_10006768C(&qword_100CE1280, &qword_100CE1278, &qword_100A91BD8);
    NavigationView.init(content:)();
    (*(v5 + 16))(v9, v7, v4);
    swift_storeEnumTagMultiPayload();
    sub_100892014();
    sub_10006768C(&qword_100CE12E0, &qword_100CE1250, &qword_100A91BB0);
    _ConditionalContent<>.init(storage:)();
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A2E40()
{

  return swift_deallocObject();
}

uint64_t sub_1000A2E84(uint64_t a1)
{
  v2 = type metadata accessor for MainViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A2EE8(uint64_t a1)
{
  v9[0] = static HorizontalAlignment.center.getter();
  v9[1] = 0;
  v10 = 1;
  sub_100085DC0(a1, __src);
  v2 = swift_allocObject();
  memcpy((v2 + 16), __src, 0x48uLL);
  v3 = sub_10022C350(&qword_100CCC2D8, &qword_100A91C30);
  v14[7] = sub_10071E998;
  v14[8] = 0;
  v15 = 0;
  v11 = v3;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, __src, &unk_100CAF270, &qword_100A31F20);
  if (*&__src[24])
  {
    sub_100013188(__src, v14);
    v12 = sub_1008923A0;
    v13 = v2;
    v5 = Dictionary.init(dictionaryLiteral:)();
    v14[5] = _swiftEmptyArrayStorage;
    v14[6] = v5;
    sub_10022C350(&qword_100CE12F0, &qword_100A91C08);
    sub_10022C350(&qword_100CE12F8, &qword_100A91C10);
    sub_10006768C(&qword_100CE1300, &qword_100CE12F0, &qword_100A91C08);
    v6 = sub_10022E824(&qword_100CE1308, &unk_100A91C18);
    v7 = sub_10006768C(&unk_100CE1310, &qword_100CE1308, &unk_100A91C18);
    *__src = v6;
    *&__src[8] = v7;
    swift_getOpaqueTypeConformance2();
    View.toolbar<A>(content:)();
    return sub_1000180EC(v9, &qword_100CE12F0, &qword_100A91C08);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000A3180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = type metadata accessor for ToolbarItemPlacement();
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_1000037D8();
  v26 = sub_10022C350(&qword_100CE1308, &unk_100A91C18);
  sub_1000037C4();
  v28 = v27;
  sub_100003828();
  v30 = __chkstk_darwin(v29);
  v32 = &a9 - v31;
  v23(v30);
  sub_10022C350(&qword_100CE1340, &unk_100A91C38);
  sub_1000055A4();
  sub_10006768C(v33, &qword_100CE1340, &unk_100A91C38);
  ToolbarItem<>.init(placement:content:)();
  sub_100018414();
  sub_10006768C(v34, &qword_100CE1308, &unk_100A91C18);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  (*(v28 + 8))(v32, v26);
  sub_10000536C();
}

uint64_t sub_1000A333C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, uint64_t *a5@<X1>)
{
  v8 = sub_10022C350(a1, a5);
  *(a4 + 80) = a2;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  *a4 = v8;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, &v10, &unk_100CAF270, &qword_100A31F20);
  if (v11)
  {
    sub_100013188(&v10, a4 + 24);
    *(a4 + 8) = a3;
    *(a4 + 16) = 0;
    result = Dictionary.init(dictionaryLiteral:)();
    *(a4 + 64) = _swiftEmptyArrayStorage;
    *(a4 + 72) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A3470()
{
  sub_100085DC0(v0, __src);
  type metadata accessor for MainActor();
  v1 = static MainActor.shared.getter();
  v2 = swift_allocObject();
  v2[2] = v1;
  v2[3] = &protocol witness table for MainActor;
  memcpy(v2 + 4, __src, 0x48uLL);
  sub_100085DC0(v0, __src);
  v3 = static MainActor.shared.getter();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = &protocol witness table for MainActor;
  memcpy(v4 + 4, __src, 0x48uLL);
  Binding.init(get:set:)();
  return __src[0];
}

uint64_t sub_1000A358C@<X0>(BOOL *a1@<X8>)
{
  v2 = type metadata accessor for MainViewModel(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095730();
  v5 = *(v4 + 1);

  sub_1000A2E84(v4);
  v6 = *(v5 + 16);

  *a1 = v6 != 0;
  return result;
}

uint64_t sub_1000A3644@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  State.init(wrappedValue:)();
  result = State.init(wrappedValue:)();
  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1000A3734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a2;
  v32 = type metadata accessor for WeatherMapPresentationState(0) - 8;
  __chkstk_darwin(v32);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MainViewModel(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();

  sub_100095730();
  v14 = *(v10 + 48);
  v15 = (a4 + *(sub_10022C350(&qword_100CCFAE8, &qword_100A73370) + 36));
  v16 = sub_10022C350(&qword_100CCFAF0, &qword_100A73378);
  sub_1000A3D20(&v12[v14], v15 + *(v16 + 28), type metadata accessor for DisplayMetrics);
  sub_100097CF4(v12, type metadata accessor for MainViewModel);
  *v15 = KeyPath;
  sub_10022C350(&qword_100CCFAF8, &qword_100A73380);
  sub_1000037E8();
  (*(v17 + 16))(a4, a1);
  swift_getKeyPath();
  sub_100095730();
  sub_1000A3D20(&v12[*(v10 + 44)], v8, type metadata accessor for WeatherMapPresentationState);
  sub_100014C34();
  sub_100097CF4(v8, type metadata accessor for WeatherMapPresentationState);
  v18 = sub_10022C350(&qword_100CCFB00, &qword_100A733B0);
  sub_10001F48C(v18);
  swift_getKeyPath();
  sub_100095730();
  sub_100008C0C();
  sub_100014C34();
  sub_100097CF4(v8, type metadata accessor for WeatherMapPresentationState);
  v19 = sub_10022C350(&qword_100CCFB08, &qword_100A733E0);
  sub_10001F48C(v19);
  swift_getKeyPath();
  sub_100095730();
  sub_100014C34();
  v20 = sub_10022C350(&qword_100CCFB10, &qword_100A73418);
  sub_10001F48C(v20);
  sub_100095730();
  sub_100008C0C();
  sub_100014C34();
  LOBYTE(a1) = *v8;
  sub_100097CF4(v8, type metadata accessor for WeatherMapPresentationState);
  v21 = swift_allocObject();
  *(v21 + 16) = v33;
  *(v21 + 24) = a3;
  v22 = a4 + *(sub_10022C350(&qword_100CCFB18, &unk_100A73420) + 36);
  *v22 = a1;
  *(v22 + 8) = sub_100670694;
  *(v22 + 16) = v21;

  sub_10022C350(&unk_100CE0F40, &unk_100A502E0);
  sub_100006F64(&qword_100CA4CD0, &unk_100CE0F40, &unk_100A502E0, asc_100AA1480);
  v23 = ObservedObject.init(wrappedValue:)();
  v25 = v24;
  v26 = (a4 + *(sub_10022C350(&qword_100CCFB20, &qword_100A73430) + 36));
  *v26 = v23;
  v26[1] = v25;
  v27 = sub_100670448();
  v29 = v28;
  result = sub_10022C350(&qword_100CCFB28, &qword_100A73438);
  v31 = (a4 + *(result + 36));
  *v31 = v27;
  v31[1] = v29;
  return result;
}

uint64_t sub_1000A3B30()
{
  sub_10000FE4C();
  result = sub_1000A3F50();
  *v0 = result;
  return result;
}

uint64_t sub_1000A3B84()
{
  sub_10000FE4C();
  result = EnvironmentValues.isWindowFocused.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1000A3BD4()
{

  return swift_deallocObject();
}

uint64_t sub_1000A3C14(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1000A3C70()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000A3CC8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000A3D20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1000A3DA0()
{
  result = qword_100CA6168;
  if (!qword_100CA6168)
  {
    result = swift_getWitnessTable(byte_100A30DD8, &unk_100C49F18, v0, v1);
    atomic_store(result, &qword_100CA6168);
  }

  return result;
}

uint64_t sub_1000A3E34()
{
  sub_10000FE4C();
  result = sub_1000A3E14();
  *v0 = result & 1;
  return result;
}

unint64_t sub_1000A3E60()
{
  result = qword_100CA60B0;
  if (!qword_100CA60B0)
  {
    result = swift_getWitnessTable(asc_100A30C5C, &unk_100C49E98, v0, v1);
    atomic_store(result, &qword_100CA60B0);
  }

  return result;
}

unint64_t sub_1000A3EFC()
{
  result = qword_100CA6110;
  if (!qword_100CA6110)
  {
    result = swift_getWitnessTable(byte_100A30A64, &unk_100C49D78, v0, v1);
    atomic_store(result, &qword_100CA6110);
  }

  return result;
}

uint64_t sub_1000A3F50()
{
  sub_1000A3EFC();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_1000A3F8C()
{
  sub_10000FE4C();
  result = sub_1000A3F50();
  *v0 = result;
  return result;
}

uint64_t sub_1000A4020(uint64_t a1)
{
  *(v1 + 2408) = a1;
}

uint64_t sub_1000A405C()
{
}

uint64_t sub_1000A408C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_1007F4464(a1, v3);
}

unint64_t sub_1000A4108()
{
  result = qword_100CA60A8;
  if (!qword_100CA60A8)
  {
    result = swift_getWitnessTable(byte_100A30C94, &unk_100C49EB8, v0, v1);
    atomic_store(result, &qword_100CA60A8);
  }

  return result;
}

void *sub_1000A415C()
{
  v0 = sub_1000A4108();
  sub_1000054C8(v0, &unk_100C49EB8);

  return EnvironmentValues.subscript.getter();
}

uint64_t sub_1000A419C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA1E98 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for DisplayMetrics(0);
  v3 = sub_10000703C(v2, qword_100D8F3B8);

  return sub_1000A467C(v3, a1);
}

uint64_t sub_1000A4214()
{
  v0 = type metadata accessor for DisplayMetrics(0);
  sub_100007074(v0, qword_100D8F3B8);
  v1 = sub_10000703C(v0, qword_100D8F3B8);
  return sub_1000336E4(v1);
}

uint64_t sub_1000A4260@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10022C350(&qword_100CE9840, &qword_100AA0B50);
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v38 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v39 = [a1 interfaceOrientation];
  v14 = a1;
  v15 = [v14 traitCollection];
  v38 = [v15 horizontalSizeClass];

  [v14 bounds];
  v17 = v16;
  v18 = [v14 screen];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v40.origin.x = v20;
  v40.origin.y = v22;
  v40.size.width = v24;
  v40.size.height = v26;
  v27 = v17 / CGRectGetWidth(v40);
  [v14 bounds];
  v29 = sub_1000A4598(v28);
  [v14 bounds];
  v31 = sub_1000A4608(v30);
  v32 = [v14 traitCollection];

  v33 = [v32 preferredContentSizeCategory];
  DynamicTypeSize.init(_:)();
  if (sub_100024D10(v6, 1, v7) == 1)
  {
    (*(v9 + 104))(v13, enum case for DynamicTypeSize.medium(_:), v7);
    if (sub_100024D10(v6, 1, v7) != 1)
    {
      sub_10099BA8C(v6);
    }
  }

  else
  {
    (*(v9 + 32))(v13, v6, v7);
  }

  v34 = v38;
  *a2 = v39;
  *(a2 + 8) = v34;
  if (v27 == 1.0)
  {
    v35 = 0;
  }

  else if (vabdd_f64(0.5, v27) <= 0.05)
  {
    v35 = 2;
  }

  else if (v27 > 0.5)
  {
    v35 = 1;
  }

  else
  {
    v35 = 3;
  }

  *(a2 + 16) = v35;
  *(a2 + 17) = v29;
  *(a2 + 18) = v31;
  v36 = type metadata accessor for DisplayMetrics(0);
  return (*(v9 + 32))(a2 + *(v36 + 36), v13, v7);
}

BOOL sub_1000A4598(double a1)
{
  v1 = 0;
  result = a1 >= 1024.0;
  v3 = &_mh_execute_header.magic + 1;
  do
  {
    while (*(&off_100C42A08 + v3 + 32) == 1)
    {
      v3 = 0;
      v4 = (a1 >= 1024.0) | v1;
      v1 = 1;
      if (v4)
      {
        return result;
      }
    }

    v3 = 0;
    v5 = v1 ^ 1;
    v1 = 1;
  }

  while (((a1 < 0.0) & v5) != 0);
  return 0;
}

uint64_t sub_1000A4608(double a1)
{
  for (i = 0; !*(&off_100C42A30 + i + 34); --i)
  {
    if (a1 >= 0.0 || i == -2)
    {
      return static VerticalSizingBehaviorKey.defaultValue.getter();
    }

LABEL_13:
    ;
  }

  if (*(&off_100C42A30 + i + 34) == 1)
  {
    if (a1 >= 1024.0)
    {
      return static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
    }

LABEL_12:
    if (i == -2)
    {
      return static VerticalSizingBehaviorKey.defaultValue.getter();
    }

    goto LABEL_13;
  }

  if (a1 < 1200.0)
  {
    goto LABEL_12;
  }

  return 2;
}

uint64_t sub_1000A467C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayMetrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A46E0()
{
  v0 = type metadata accessor for DisplayMetrics(0);
  v1 = sub_100003810(v0);
  __chkstk_darwin(v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A3CC8();
  return sub_1000A4778(v3);
}

uint64_t sub_1000A4778(uint64_t a1)
{
  v2 = type metadata accessor for DisplayMetrics(0);
  __chkstk_darwin(v2 - 8);
  sub_1000037D8();
  sub_1000A467C(a1, v4 - v3);
  sub_1000A4108();
  EnvironmentValues.subscript.setter();
  return sub_1000A4810(a1);
}

uint64_t sub_1000A4810(uint64_t a1)
{
  v2 = type metadata accessor for DisplayMetrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000A486C()
{
  result = qword_100CA6048;
  if (!qword_100CA6048)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MapTransitionNamespaceKey, &type metadata for MapTransitionNamespaceKey, v0, v1);
    atomic_store(result, &qword_100CA6048);
  }

  return result;
}

uint64_t sub_1000A48C0()
{
  sub_1000A486C();
  EnvironmentValues.subscript.getter();
  return v1;
}

void sub_1000A4900(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_100CA6008;
  *a1 = static MapTransitionNamespaceKey.defaultValue;
  *(a1 + 8) = v2;
}

uint64_t sub_1000A49C8@<X0>(uint64_t a1@<X8>)
{
  v2 = qword_100CB3258;
  v1 = unk_100CB3260;
  *a1 = byte_100CB3250;
  *(a1 + 8) = v2;
  *(a1 + 16) = v1;
}

unint64_t sub_1000A49E4()
{
  result = qword_100CE1330;
  if (!qword_100CE1330)
  {
    result = swift_getWitnessTable(byte_100A50274, &type metadata for MainViewDestinationLocationViewer, v0, v1);
    atomic_store(result, &qword_100CE1330);
  }

  return result;
}

__n128 sub_1000A4A38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000A4A4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  *a2 = static Alignment.center.getter();
  a2[1] = v6;
  sub_10022C350(&qword_100CA5A70, &qword_100A2FF80);
  sub_1000A4BE0(v3, a1);
  v7 = [objc_opt_self() defaultCenter];
  v8 = sub_10022C350(&qword_100CA5A78, &qword_100A2FF88);
  NSNotificationCenter.publisher(for:object:)();

  v9 = *(v3 + 8);
  v15 = *(v3 + 24);
  v16 = v9;
  v10 = swift_allocObject();
  v11 = *(v3 + 16);
  *(v10 + 16) = *v3;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v3 + 32);
  v12 = (a2 + *(v8 + 56));
  *v12 = sub_1002803F0;
  v12[1] = v10;
  sub_100060DE0(&v16, v14, &qword_100CA5A80, &qword_100A2FF90);
  return sub_100060DE0(&v15, v14, &qword_100CA5A80, &qword_100A2FF90);
}

uint64_t sub_1000A4BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA5A88, &qword_100A2FF98);
  __chkstk_darwin(v4);
  v6 = &v16[-v5];
  v7 = sub_10022C350(&qword_100CA5A90, &qword_100A2FFA0);
  __chkstk_darwin(v7);
  v9 = &v16[-v8];
  if (sub_1000A4E98())
  {
    v10 = *(a1 + 8);
    v17 = *(a1 + 24);
    v18 = v10;
    v11 = swift_allocObject();
    v12 = *(a1 + 16);
    *(v11 + 16) = *a1;
    *(v11 + 32) = v12;
    *(v11 + 48) = *(a1 + 32);
    v13 = sub_10022C350(&qword_100CA5AB8, &unk_100A2FFB0);
    (*(*(v13 - 8) + 16))(v6, a2, v13);
    v14 = &v6[*(v4 + 36)];
    *v14 = sub_1002803F8;
    v14[1] = v11;
    v14[2] = 0;
    v14[3] = 0;
    sub_100060DE0(v6, v9, &qword_100CA5A88, &qword_100A2FF98);
    swift_storeEnumTagMultiPayload();
    sub_100060DE0(&v18, v16, &qword_100CA5A80, &qword_100A2FF90);
    sub_100060DE0(&v17, v16, &qword_100CA5A80, &qword_100A2FF90);
    sub_10022C350(&qword_100CA5A98, &qword_100A2FFA8);
    sub_1000A4F28();
    sub_1000A4FAC();
    _ConditionalContent<>.init(storage:)();
    return sub_100280400(v6);
  }

  else
  {
    *v9 = static Color.clear.getter();
    v9[1] = sub_10013042C;
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = 0;
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CA5A98, &qword_100A2FFA8);
    sub_1000A4F28();
    sub_1000A4FAC();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1000A4E98()
{
  if ((*v0 & 1) == 0)
  {
    return 1;
  }

  sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
  State.wrappedValue.getter();
  if (v2)
  {
    return 1;
  }

  State.wrappedValue.getter();
  return v2;
}

unint64_t sub_1000A4F28()
{
  result = qword_100CA5AA0;
  if (!qword_100CA5AA0)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_10022E824(&qword_100CA5A98, &qword_100A2FFA8);
    v4[0] = &protocol witness table for Color;
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA5AA0);
  }

  return result;
}

unint64_t sub_1000A4FAC()
{
  result = qword_100CA5AA8;
  if (!qword_100CA5AA8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CA5A88, &qword_100A2FF98);
    v4[0] = sub_100006F64(&qword_100CA5AB0, &qword_100CA5AB8, &unk_100A2FFB0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CA5AA8);
  }

  return result;
}

uint64_t sub_1000A508C(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_1000A5120(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for WeatherMapPresentationIntent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB)
  {
    v2 = a2 + 5;
    if (a2 + 5 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 5;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 5;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x1000A51F0);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 5;
      default:
        break;
    }
  }

  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A5204(void *a1)
{
  if ((Transaction.disablesAnimations.getter() & 1) == 0)
  {
    sub_10022C350(&qword_100CA5A80, &qword_100A2FF90);
    State.wrappedValue.getter();
  }

  return Transaction.disablesAnimations.setter();
}

__n128 sub_1000A528C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000A52E0()
{
  v3 = sub_100022A88();
  sub_1000A52A8(v3, v4);
  v5 = swift_allocObject();
  sub_10000FE30(v5, v6, v7, v8, v9, v10, v11, v12, v13, v22, v23, v24, v14);
  *(v15 + 64) = v25;
  v16 = static Alignment.center.getter();
  v18 = v17;
  sub_10022C350(&qword_100CB3268, &qword_100A45B08);
  sub_1000037E8();
  (*(v19 + 16))(v0, v2);
  result = sub_10022C350(&qword_100CB3270, &qword_100A45B10);
  v21 = (v0 + *(result + 36));
  *v21 = sub_1000A5A50;
  v21[1] = v1;
  v21[2] = v16;
  v21[3] = v18;
  return result;
}

uint64_t sub_1000A53BC()
{
  sub_100006F14((v0 + 16));

  return swift_deallocObject();
}

void sub_1000A5410(uint64_t a1, uint64_t a2)
{
  sub_10000406C();
  if (v5 == v6)
  {
    *(v2 + 16) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_10022C350(&qword_100CA3BE8, &unk_100A45B70);
    v8 = sub_1000039EC(*(v7 + 32));

    sub_10001B350(v8, v9, a2, v10);
  }
}

void sub_1000A5494(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100005B78();
  sub_100003928();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_100005B64();

    sub_10001B350(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = -v4;
  }
}

void sub_1000A5524(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  sub_100003928();
  if (*(v10 + 84) == a3)
  {

    sub_10001B350(a1, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }
}

uint64_t sub_1000A55D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CA2CD8, &unk_100A2C420);
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A565C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = type metadata accessor for OverviewTableViewModel();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v13 = v12;
    v14 = a1;
  }

  else
  {
    v13 = sub_10022C350(a5, a6);
    v14 = a1 + *(a4 + 20);
  }

  return sub_10001B350(v14, a2, a2, v13);
}

uint64_t sub_1000A5714(uint64_t a1, uint64_t a2)
{
  sub_1000038D8();
  v4 = type metadata accessor for Date();

  return sub_10001B350(v2, a2, a2, v4);
}

void sub_1000A575C()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CB76D0, &unk_100A4B720);
  sub_100003928();
  if (*(v5 + 84) == v3)
  {

    sub_10001B350(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 - 1);
  }
}

__n128 initializeBufferWithCopyOfBuffer for DebugLocationManager.InterestingStorms.Storm(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000A5818@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FullscreenMapTransitionContainer(0);
  __chkstk_darwin(v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a2 + 48) == 1)
  {
    v10 = *(a1 + 1);
    v9 = *(a1 + 2);
    v11 = *a1;
    sub_100035B30(a2, (v8 + 24));
    v12 = *(a2 + 40);
    *v8 = v11;
    *(v8 + 1) = v10;
    *(v8 + 2) = v9;
    *(v8 + 8) = v12;
    *(v8 + 9) = swift_getKeyPath();
    v8[80] = 0;
    v13 = *(v6 + 32);
    *&v8[v13] = swift_getKeyPath();
    sub_10022C350(&qword_100CB3278, &qword_100A70D50);
    swift_storeEnumTagMultiPayload();
    v14 = &v8[*(v6 + 36)];
    v17[15] = 4;

    State.init(wrappedValue:)();
    v15 = v18;
    *v14 = v17[16];
    *(v14 + 1) = v15;
    sub_1000EBDC8();
    return sub_10001B350(a3, 0, 1, v6);
  }

  else
  {

    return sub_10001B350(a3, 1, 1, v6);
  }
}

uint64_t sub_1000A59D4()
{
  sub_10000FE4C();
  result = sub_1000A3E14();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1000A5A70()
{
  sub_10000406C();
  if (v2 == v3)
  {
    return sub_1000039D8(*(v0 + 16));
  }

  v5 = v1;
  sub_10022C350(&qword_100CA3BE8, &unk_100A45B70);
  v6 = sub_1000039EC(*(v5 + 32));

  return sub_100024D10(v6, v7, v8);
}

uint64_t sub_1000A5AF0()
{
  sub_10000410C();
  sub_100003928();
  if (*(v4 + 84) == v1)
  {

    return sub_100024D10(v0, v1, v3);
  }

  else
  {
    v6 = *(v0 + *(v2 + 20) + 8);
    if (v6 > 1)
    {
      return (v6 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000A5B88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(0);
  sub_100003928();
  if (*(v8 + 84) != a2)
  {
    return sub_1000039D8(*(a1 + *(a3 + 20) + 24));
  }

  return sub_100024D10(a1, a2, v7);
}

uint64_t sub_1000A5C2C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(&qword_100CA2CD8, &unk_100A2C420);
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1000A5CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = type metadata accessor for OverviewTableViewModel();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v11 = v10;
    v12 = a1;
  }

  else
  {
    v11 = sub_10022C350(a4, a5);
    v12 = a1 + *(a3 + 20);
  }

  return sub_100024D10(v12, a2, v11);
}

uint64_t sub_1000A5D70(uint64_t a1, uint64_t a2)
{
  sub_1000038D8();
  v4 = type metadata accessor for Date();

  return sub_100024D10(v2, a2, v4);
}

uint64_t sub_1000A5DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10022C350(&qword_100CB76D0, &unk_100A4B720);
  sub_100003928();
  if (*(v7 + 84) != a2)
  {
    return sub_100020D78(a1 + *(a3 + 20));
  }

  return sub_100024D10(a1, a2, v6);
}

uint64_t sub_1000A5EA4()
{
  sub_100355B80(v1);
  sub_1000161C0(v1, v1[3]);
  sub_1000A5F80();
  return sub_100006F14(v1);
}

uint64_t sub_1000A5EEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100035B30(a1, v6);
  v3 = type metadata accessor for DebugPresenter();
  v4 = swift_allocObject();
  result = sub_100013188(v6, v4 + 16);
  a2[3] = v3;
  a2[4] = &off_100C5F738;
  *a2 = v4;
  return result;
}

void sub_1000A5F80()
{
  type metadata accessor for Capabilities();
  if (static Capabilities.isInternalBuild()())
  {
    v0 = [objc_opt_self() sharedApplication];
    v1 = UIApplication.maybeWindow.getter();

    if (v1)
    {
      v2 = swift_allocObject();
      swift_weakInit();
      v3 = swift_allocObject();
      *(v3 + 16) = v2;
      *(v3 + 24) = v1;
      aBlock[4] = sub_1005ADACC;
      aBlock[5] = v3;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000742F0;
      aBlock[3] = &unk_100C5F7A0;
      v4 = _Block_copy(aBlock);
      v5 = v1;

      [v5 ts_installDebugMenuHandler:v4];
      _Block_release(v4);
    }

    else
    {
      if (qword_100CA2778 != -1)
      {
        sub_100014454(&qword_100CA2778);
      }

      v6 = type metadata accessor for Logger();
      sub_10000703C(v6, qword_100D90CC0);
      oslog = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v7))
      {
        *swift_slowAlloc() = 0;
        sub_10001C688(&_mh_execute_header, v8, v9, "unable to present debug menu because we have no window", v10, v11, v12, v13, v14, oslog);
      }
    }
  }
}

uint64_t sub_1000A6184()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000A61BC()
{

  return swift_deallocObject();
}

void sub_1000A6290(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for SceneConnectionOptions();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    sub_10022C350(&qword_100CB3D88, qword_100A46A78);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100A2C3F0;
    *(v13 + 32) = type metadata accessor for UITraitActiveAppearance();
    *(v13 + 40) = &protocol witness table for UITraitActiveAppearance;
    v36 = ObjectType;
    v35[0] = v3;
    v34 = a1;
    v14 = v3;
    UIWindowScene.registerForTraitChanges(_:target:action:)();
    swift_unknownObjectRelease();

    sub_100006F14(v35);
    v15 = [v12 traitCollection];
    sub_1003BF84C(v12);

    v16 = [a3 shortcutItem];
    if (v16)
    {
      v17 = v16;
      sub_1000A730C(&OBJC_IVAR____TtC7Weather13SceneDelegate____lazy_storage___shortcutItemHandlerManager, &type metadata accessor for ShortcutItemHandlerManager);
      ShortcutItemHandlerManager.handle(shortcutItem:)(v17);
    }

    sub_1003BF5AC(v35);
    sub_1000161C0(v35, v36);
    UISceneConnectionOptions.connectionOptions.getter();
    dispatch thunk of SceneStateManagerType.sceneWillConnectToSession(withOptions:)();
    (*(v8 + 8))(v10, v7);
    sub_100006F14(v35);
    v18 = [v12 windows];
    sub_10000C70C(0, &qword_100CB3D80, UIWindow_ptr);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (sub_100073CDC(v19))
    {
      sub_1000A7560(0, (v19 & 0xC000000000000001) == 0, v19);
      if ((v19 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v19 + 32);
      }

      v21 = v20;

      v22 = v21;
      sub_1003BF924(v22);
    }

    else
    {

      v21 = 0;
    }

    sub_1000A730C(&OBJC_IVAR____TtC7Weather13SceneDelegate____lazy_storage___displayMetricsMonitor, type metadata accessor for DisplayMetricsMonitor);
    v23 = v21;
    sub_1000A758C(v21);

    v24 = [a3 userActivities];
    sub_10000C70C(0, &qword_100CB3D90, NSUserActivity_ptr);
    sub_1000BEA60();
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000BEAC8();
    v26 = v25;

    v27 = v34;
    if (v26)
    {
      if (qword_100CA26C8 != -1)
      {
        sub_10001EAC4(&qword_100CA26C8);
      }

      v28 = type metadata accessor for Logger();
      v29 = sub_100019600(v28, qword_100D90AC0);
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = sub_10000389C();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Scene is handling a user activity on launch", v31, 2u);
        sub_100003884(v31);
      }

      sub_1003BF45C(v35);
      sub_1000161C0(v35, v36);
      sub_100568640(v26);

      sub_100006F14(v35);
    }

    if (v21)
    {
      type metadata accessor for SceneResizingMonitor(0);
      swift_allocObject();
      v32 = v23;
      *&v14[OBJC_IVAR____TtC7Weather13SceneDelegate_sceneResizeMonitor] = sub_1006E5100(v32);

      v33 = v27;
      static UIWindow.keyWindowScene.setter();
      UIWindow.registerKeyWindowSceneNotification()();
    }
  }
}

uint64_t sub_1000A677C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000955E0(&xmmword_100D8FB90, &v3, &unk_100CAF270, &qword_100A31F20);
  if (v4)
  {
    return sub_100013188(&v3, a1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A6824(void *a1, void *a2)
{
  sub_1000161C0(a1, a1[3]);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for SessionEventsAndDataCoordinator(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10004306C(&qword_100CBE1F0, type metadata accessor for SessionEventsAndDataCoordinator, protocol conformance descriptor for SessionEventsAndDataCoordinator);
    dispatch thunk of SceneStateManagerType.add(monitor:)();

    sub_100006F14(v4);
    sub_1000161C0(a2, a2[3]);
    result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
    if (result)
    {
      dispatch thunk of SceneStateManagerType.add(monitor:)();

      return sub_100006F14(v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000A6990(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for SessionManager();
  v2 = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Client();
  v4 = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1480, &qword_100A41A10);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1478, &unk_100A41A00);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1488, &qword_100A41A18);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1490, &qword_100A41A20);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1498, &qword_100A41A28);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60, &unk_100A6B640);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB14A0, &qword_100A41A30);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1450, &qword_100A419C0);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    type metadata accessor for SessionEventsAndDataCoordinator(0);
    swift_allocObject();
    LOBYTE(v6) = 1;
    sub_100067E9C(1, v3, v5, v24, v22, v20, v18, v16, v13, v10, v6, v7, v7[0], v7[1], v7[2], v8, v9, v10[0], v10[1], v10[2], v11, v12, v13[0], v14);
    return;
  }

LABEL_21:
  __break(1u);
}

void sub_1000A6CEC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v7 = a5;
  v9 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10000C70C(0, v7, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000C70C(0, a5, a6);
    if (__CocoaSet.Index.age.getter() == *(a4 + 36))
    {
      __CocoaSet.Index.element.getter();
      swift_dynamicCast();
      v7 = v16;
      v10 = NSObject._rawHashValue(seed:)(*(a4 + 40));
      v11 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v9 = v10 & v11;
        if (((*(a4 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v12 = *(*(a4 + 48) + 8 * v9);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          goto LABEL_15;
        }

        v10 = v9 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v14 = *(*(a4 + 48) + 8 * v9);

  v15 = v14;
}

void *sub_1000A6EF0(void *a1, void *a2)
{
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CB4460, &unk_100A6B650);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v5 = v7[0];
  if (v7[0])
  {
    sub_1000161C0(a2, a2[3]);
    dispatch thunk of ResolverType.resolve<A>(_:name:)();
    v6 = v7[0];
    sub_1000161C0(a1, a1[3]);
    dispatch thunk of SceneStateManagerType.add(monitor:)();
    sub_100006F14(v7);
    if (v5 == v6)
    {
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {
      dispatch thunk of SceneStateManagerType.add(monitor:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return sub_100006F14(v7);
    }
  }

  else
  {
    __break(1u);
    __break(1u);
  }

  return result;
}

void SessionEventsAndDataCoordinator.sceneWillConnectToSession(withOptions:)()
{
  sub_10000C778();
  v1 = v0;
  v2 = type metadata accessor for URL();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  if ((SceneConnectionOptions.isEmpty.getter() & 1) == 0)
  {
    v9 = SceneConnectionOptions.connectionOptions.getter();
    if (v9)
    {
      v10 = v9;
      v11 = [v9 URLContexts];

      sub_10000C70C(0, &qword_100CB5250, UIOpenURLContext_ptr);
      sub_100068A3C(&qword_100CB5258, &qword_100CB5250, UIOpenURLContext_ptr);
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100068A8C();
      v13 = v12;

      if (v13)
      {
        sub_1003E2674([v13 options]);
        if (v14)
        {
          v15 = String.lowercased()();
          countAndFlagsBits = v15._countAndFlagsBits;
          object = v15._object;
        }

        else
        {
          object = 0xE700000000000000;
          countAndFlagsBits = 0x6E776F6E6B6E75;
        }

        v18 = [v13 URL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v22[0] = URL.absoluteString.getter();
        v20 = v19;
        v21 = (*(v4 + 8))(v8, v2);
        v22[1] = *(v1 + 328);
        __chkstk_darwin(v21);
        v22[-4] = v1;
        v22[-3] = countAndFlagsBits;
        v22[-2] = object;
        type metadata accessor for UnfairLock();

        Lock.sync<A>(_:)();

        sub_1003E0524(countAndFlagsBits, object, v22[0], v20);

        sub_10004A100();
      }
    }
  }

  sub_10000536C();
}

uint64_t sub_1000A730C(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
LABEL_5:

    return v5;
  }

  v7 = v2;
  sub_1000A677C(v9);
  sub_1000161C0(v9, v9[3]);
  a2(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v5 = result;
    sub_100006F14(v9);
    *(v7 + v3) = v5;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *sub_1000A73F8(uint64_t a1, uint64_t a2)
{
  v2[4] = 0;
  v5 = OBJC_IVAR____TtC7Weather21DisplayMetricsMonitor_previousDisplayMetrics;
  v6 = type metadata accessor for DisplayMetrics(0);
  sub_10001B350(v2 + v5, 1, 1, v6);
  swift_unknownObjectWeakInit();
  v2[2] = a1;
  v2[3] = a2;
  v7 = objc_opt_self();

  v8 = [v7 defaultCenter];
  [v8 addObserver:v2 selector:"windowContentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];

  return v2;
}

uint64_t sub_1000A74E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 17) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for DynamicTypeSize();
    v8 = v5 + *(a4 + 36);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1000A7568(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_1000A758C(void *a1)
{
  swift_unknownObjectWeakAssign();
  sub_1000A75D8();
}

void sub_1000A75D8()
{
  v1 = v0;
  v2 = *(v0 + 32);
  if (v2)
  {
    v3 = v2;
    dispatch thunk of NSKeyValueObservation.invalidate()();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getKeyPath();
    swift_allocObject();
    swift_weakInit();
    v6 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v1 + 32);
  *(v1 + 32) = v6;

  sub_1000A7728();
}

uint64_t sub_1000A76E4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1000A7728()
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for DisplayMetrics(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v12 = [Strong windowScene];
    if (v12)
    {
      v13 = v12;
      v14 = v22;
      sub_1000A4260(v14, v10);
      v15 = [v13 effectiveGeometry];
      v16 = sub_100491968(v10, v15);

      if (v16)
      {
        sub_1000A467C(v10, v6);
        sub_10001B350(v6, 0, 1, v7);
        v17 = OBJC_IVAR____TtC7Weather21DisplayMetricsMonitor_previousDisplayMetrics;
        swift_beginAccess();
        sub_1000A7AEC(v6, v0 + v17);
        swift_endAccess();
        v19 = *(v0 + 16);
        v18 = *(v0 + 24);
        sub_1000A467C(v10, v3);
        type metadata accessor for ViewAction(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v24 = 0;
        memset(v23, 0, sizeof(v23));
        sub_10004F034(v3, v23, v19, v18);

        sub_1000180EC(v23, &unk_100CD81B0, &unk_100A3B000);
        sub_100154090(v3, type metadata accessor for MainAction);
        sub_10001EDB8();
      }

      else
      {
        sub_10001EDB8();
      }
    }

    else
    {
      v20 = v22;
    }
  }
}

uint64_t sub_1000A79E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A7A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 17);
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for DynamicTypeSize();
    v9 = a1 + *(a3 + 36);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1000A7AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A7B74()
{

  return sub_1000CA5D8(v0, type metadata accessor for ViewState);
}

uint64_t sub_1000A7BDC()
{
  *v5 = v2[564];
  v2[564] = *(v3 + *(v4 + 72));
  *(v5 + 8) = v1;
  *(v5 + 16) = v2[584];
  *(v5 + 17) = v2[582];
  *(v5 + 18) = v2[578];
  *(v5 + 19) = v2[576];
  *(v5 + 20) = v2[570];
  return v5 + v0;
}

uint64_t sub_1000A7C28(uint64_t a1)
{

  return sub_100024D10(v1 + v2, 1, a1);
}

uint64_t sub_1000A7C48()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1000A7C60@<X0>(uint64_t a1@<X8>)
{
  **(a1 - 256) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000A7CA0()
{
  result = v0;
  *(v2 - 160) = v1;
  return result;
}

uint64_t sub_1000A7CB4()
{
}

uint64_t sub_1000A7CDC()
{

  return static _DictionaryStorage.allocate(capacity:)();
}

uint64_t sub_1000A7CF4(unint64_t *a1)
{

  return sub_10068280C(a1, v2, v1);
}

__n128 sub_1000A7D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, __int128 a9, __int128 a10, __n128 a12)
{
  *v12 = a9;
  v12[1] = a10;
  result = a12;
  v12[2] = a12;
  return result;
}

uint64_t sub_1000A7D70@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 256);
  v5 = *(v2 - 184);

  return sub_100051C74(v4, v5, a1);
}

char *sub_1000A7E0C(void *a1, char *a2, uint64_t a3)
{
  v1387 = a2;
  v1388 = a1;
  v4 = sub_10022C350(&qword_100CA65B8, &unk_100A313D0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v6);
  sub_10000E70C();
  sub_100003918(v7);
  v1289 = type metadata accessor for Location();
  sub_1000037C4();
  v1228 = v8;
  __chkstk_darwin(v9);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_10000E70C();
  v12 = sub_100003918(v11);
  v1345 = type metadata accessor for InteractiveMapViewAction(v12);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v15);
  sub_10000E70C();
  v17 = sub_100003918(v16);
  v1370 = type metadata accessor for WeatherMapTrackingState(v17);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v19);
  sub_10000E70C();
  sub_100003918(v20);
  v1374 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v1372 = v21;
  __chkstk_darwin(v22);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v23);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v24);
  sub_10000E70C();
  sub_100003990(v25);
  v26 = sub_10022C350(&qword_100CA6698, &unk_100A314B0);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_10000E70C();
  v1373 = v32;
  v33 = sub_10022C350(&qword_100CA5CF8, &unk_100A302F0);
  v34 = sub_100003810(v33);
  __chkstk_darwin(v34);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_10000E70C();
  v40 = sub_100003918(v39);
  v41 = type metadata accessor for DisplayMetricsChangeAction(v40);
  v42 = sub_100003810(v41);
  __chkstk_darwin(v42);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v43);
  sub_10000E70C();
  v45 = sub_100003918(v44);
  v1377 = type metadata accessor for SearchViewState(v45);
  sub_1000037E8();
  __chkstk_darwin(v46);
  sub_1000038E4();
  v48 = sub_100003918(v47);
  v49 = type metadata accessor for SearchViewAction(v48);
  v50 = sub_100003810(v49);
  __chkstk_darwin(v50);
  sub_1000038E4();
  sub_100003990(v51);
  v52 = sub_10022C350(&qword_100CBEEC0, &unk_100A5C3E0);
  v53 = sub_100003810(v52);
  __chkstk_darwin(v53);
  v55 = sub_100003918(&v1223 - v54);
  v1267 = type metadata accessor for LocationViewerViewAction(v55);
  sub_1000037E8();
  __chkstk_darwin(v56);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v57);
  sub_10000E70C();
  v59 = sub_100003918(v58);
  v1384 = type metadata accessor for TimeState(v59);
  sub_1000037E8();
  __chkstk_darwin(v60);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v62);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_10000E70C();
  v66 = sub_100003918(v65);
  v1379 = type metadata accessor for NotificationsOptInState(v66);
  sub_1000037E8();
  __chkstk_darwin(v67);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v71);
  sub_10000E70C();
  v73 = sub_100003918(v72);
  v1385 = type metadata accessor for NotificationsState(v73);
  sub_1000037E8();
  __chkstk_darwin(v74);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v77);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v78);
  sub_10000E70C();
  v80 = sub_100003918(v79);
  v1381 = type metadata accessor for LocationsState(v80);
  sub_1000037E8();
  __chkstk_darwin(v81);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v82);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v83);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v84);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_10000E70C();
  v87 = sub_100003918(v86);
  v1386 = type metadata accessor for EnvironmentState(v87);
  sub_1000037E8();
  __chkstk_darwin(v88);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v90);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v91);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v92);
  sub_10000E70C();
  v94 = sub_100003918(v93);
  v1380 = type metadata accessor for AppConfigurationState(v94);
  sub_1000037E8();
  __chkstk_darwin(v95);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v96);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v98);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v99);
  sub_10000E70C();
  v101 = sub_100003918(v100);
  v1376 = type metadata accessor for ModalViewState(v101);
  sub_1000037E8();
  __chkstk_darwin(v102);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v103);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v104);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v105);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v106);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v107);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v108);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v109);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v113);
  sub_100003878();
  v1375 = v114;
  __chkstk_darwin(v115);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v116);
  sub_10000E70C();
  sub_100003990(v117);
  v118 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v119 = sub_100003810(v118);
  __chkstk_darwin(v119);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v120);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v121);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v122);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v124);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v125);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v126);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v127);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v129);
  sub_10000E70C();
  v131 = sub_100003918(v130);
  v1383 = type metadata accessor for WeatherMapPresentationState(v131);
  sub_1000037E8();
  __chkstk_darwin(v132);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v133);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v137);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v138);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v139);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v140);
  sub_10000E70C();
  v142 = sub_100003918(v141);
  v1378 = type metadata accessor for DisplayMetrics(v142);
  sub_1000037E8();
  __chkstk_darwin(v143);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v144);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v145);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v146);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v147);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v148);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v149);
  sub_10000E70C();
  v151 = sub_100003918(v150);
  v1382 = type metadata accessor for ViewState.SecondaryViewState(v151);
  sub_1000037E8();
  __chkstk_darwin(v152);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v153);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v154);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v155);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v156);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v157);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v158);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v159);
  sub_10000E70C();
  sub_100003990(v160);
  v161 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  v162 = sub_100003810(v161);
  __chkstk_darwin(v162);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v163);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v164);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v165);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v166);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v167);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v168);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v169);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v170);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v171);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v172);
  sub_10000E70C();
  sub_100003990(v173);
  v174 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  v175 = sub_100003810(v174);
  __chkstk_darwin(v175);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v176);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v177);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v178);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v179);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v180);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v181);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v182);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v183);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v184);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v185);
  sub_10000E70C();
  sub_100003990(v186);
  v187 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  v188 = sub_100003810(v187);
  __chkstk_darwin(v188);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v189);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v190);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v191);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v192);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v193);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v194);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v195);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v196);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v197);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v198);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v199);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v200);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v201);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v202);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v203);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v204);
  sub_10000E70C();
  v206 = sub_100003918(v205);
  active = type metadata accessor for LocationViewerActiveLocationState(v206);
  sub_1000037E8();
  __chkstk_darwin(v207);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v208);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v209);
  sub_10000E70C();
  sub_100003990(v210);
  v211 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  v212 = sub_100003810(v211);
  __chkstk_darwin(v212);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v213);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v214);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v215);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v216);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v217);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v218);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v219);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v220);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v221);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v222);
  sub_10000E70C();
  v224 = sub_100003918(v223);
  v1389 = type metadata accessor for ViewState(v224);
  sub_1000037E8();
  __chkstk_darwin(v225);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v226);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v227);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v228);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v229);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v230);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v231);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v232);
  sub_10000E70C();
  sub_100003990(v233);
  v234 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v235 = sub_100003810(v234);
  __chkstk_darwin(v235);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v236);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v237);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v238);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v239);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v240);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v241);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v242);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v243);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v244);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v245);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v246);
  sub_10000E70C();
  sub_100003990(v247);
  v248 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v249 = sub_100003810(v248);
  __chkstk_darwin(v249);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v250);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v251);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v252);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v253);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v254);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v255);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v256);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v257);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v258);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v259);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v260);
  sub_10000E70C();
  sub_100003990(v261);
  v262 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v263 = sub_100003810(v262);
  __chkstk_darwin(v263);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v264);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v265);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v266);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v267);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v268);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v269);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v270);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v271);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v272);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v273);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v274);
  sub_10000E70C();
  sub_100003990(v275);
  v276 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v277 = sub_100003810(v276);
  __chkstk_darwin(v277);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v278);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v279);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v280);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v281);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v282);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v283);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v284);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v285);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v286);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v287);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v288);
  sub_10000E70C();
  sub_100003990(v289);
  v290 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v291 = sub_100003810(v290);
  __chkstk_darwin(v291);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v292);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v293);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v294);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v295);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v296);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v297);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v298);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v299);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v300);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v301);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v302);
  sub_10000E70C();
  sub_100003990(v303);
  v304 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v305 = sub_100003810(v304);
  __chkstk_darwin(v305);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v306);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v307);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v308);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v309);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v310);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v311);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v312);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v313);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v314);
  v316 = &v1223 - v315;
  __chkstk_darwin(v317);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v318);
  sub_10000E70C();
  sub_100003990(v319);
  v320 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v321 = sub_100003810(v320);
  __chkstk_darwin(v321);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v322);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v323);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v324);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v325);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v326);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v327);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v328);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v329);
  v331 = &v1223 - v330;
  __chkstk_darwin(v332);
  v334 = &v1223 - v333;
  __chkstk_darwin(v335);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v336);
  sub_10000E70C();
  sub_100003918(v337);
  v1255 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v1254 = v338;
  __chkstk_darwin(v339);
  sub_1000038E4();
  v341 = sub_100003918(v340);
  v342 = type metadata accessor for ListViewAction(v341);
  sub_1000037E8();
  __chkstk_darwin(v343);
  v345 = (&v1223 - ((v344 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v346);
  sub_10000E70C();
  v348 = sub_100003918(v347);
  v349 = type metadata accessor for ViewAction(v348);
  sub_1000037E8();
  __chkstk_darwin(v350);
  v352 = (&v1223 - ((v351 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v353);
  v355 = (&v1223 - v354);
  __chkstk_darwin(v356);
  v358 = &v1223 - v357;
  sub_100036D54();
  sub_1000AF41C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000167A4();
      sub_100021424();
      sub_1000AF474();
      v412 = v1388;
      v413 = v1389;
      sub_100019990();
      v414 = v1341;
      sub_1000AF41C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_10006A7C8();
        sub_1000B0F30(v345, v415);
        sub_10003BA34();
        v417 = v414;
        goto LABEL_47;
      }

      v588 = *v414;
      v349 = v1387;
      if (*(v412 + *(v413 + 36) + 8) != 1 || (sub_1000B010C() & 1) != 0)
      {
        sub_10051A7C8();
        sub_1000161C0((v589 + 56), *(v589 + 80));
        sub_1000B0F88(v588, v349, v345);
        sub_1000FFC4C();
        v582 = type metadata accessor for LocationViewerViewAction;
        goto LABEL_55;
      }

      sub_10006A7C8();
      sub_1000B0F30(v345, v1016);

      goto LABEL_202;
    case 2u:
      if (qword_100CA26C8 != -1)
      {
        sub_10001EAC4(&qword_100CA26C8);
      }

      v391 = type metadata accessor for Logger();
      sub_10000703C(v391, qword_100D90AC0);
      sub_100036D54();
      sub_1000AF41C();
      sub_100022CD0();
      sub_100037814();
      sub_1000AF41C();
      v392 = Logger.logObject.getter();
      v393 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v392, v393))
      {
        v394 = swift_slowAlloc();
        v395 = swift_slowAlloc();
        v1390 = v395;
        *v394 = 141558787;
        *(v394 + 4) = 1752392040;
        *(v394 + 12) = 2081;
        sub_100036D54();
        sub_1000AF41C();
        v396 = String.init<A>(describing:)();
        v398 = sub_100078694(v396, v397, &v1390);

        *(v394 + 14) = v398;
        sub_1000BCE74();
        *(v394 + 22) = 2160;
        *(v394 + 24) = 1752392040;
        *(v394 + 32) = 2081;
        sub_10051A770();
        v399 = dispatch thunk of CustomStringConvertible.description.getter();
        v401 = sub_100078694(v399, v400, &v1390);

        *(v394 + 34) = v401;
        sub_100016A9C();
        sub_1000B0F30(v334, v402);
        _os_log_impl(&_mh_execute_header, v392, v393, "Cannot handle actions of views that are not visible; action=%{private,mask.hash}s, state=%{private,mask.hash}s", v394, 0x2Au);
        swift_arrayDestroy();
        sub_100003884(v395);
        sub_100003884(v394);
      }

      else
      {

        sub_1000BCE74();
        sub_100016A9C();
        v417 = v334;
LABEL_47:
        sub_1000B0F30(v417, v416);
      }

      v349 = v1387;
      goto LABEL_202;
    case 3u:
      sub_1000167A4();
      sub_100021424();
      sub_1000AF474();
      sub_1000131DC();
      sub_100095588();
      v403 = sub_1000162A4();
      v404 = v1377;
      sub_1000113D0(v403, v405);
      if (v406)
      {
        type metadata accessor for SearchViewState.ViewState(0);
        v355 = v1326[1];
        swift_storeEnumTagMultiPayload();
        sub_100003934();
        sub_10001B350(v407, v408, v409, v1289);
        *v355 = 0;
        v355[1] = 0xE000000000000000;
        *(v355 + *(v404 + 24)) = 0;
        sub_100003A40(a3);
        v580 = v1387;
        if (!v406)
        {
          sub_1000180EC(a3, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_10004E66C();
        sub_10003778C();
        sub_1000AF474();
        v580 = v1387;
      }

      sub_10051A7C8();
      sub_1000161C0((v581 + 136), *(v581 + 160));
      v349 = sub_1007CFB3C(v355, v580, v345);
      sub_1000B0F30(v355, type metadata accessor for SearchViewState);
      v582 = type metadata accessor for SearchViewAction;
LABEL_55:
      v362 = v582;
      v363 = v345;
      goto LABEL_338;
    case 4u:
      v364 = &OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView;
      sub_1000167A4();
      sub_100037814();
      sub_1000AF474();
      v365 = v1388;
      v366 = v1389;
      if (*(v1388 + v1389[10] + 1) != 128)
      {
        v367 = sub_10081B398();
        if (v367)
        {
          v368 = v367;
          sub_1000EFF78();
          sub_100032590();
          sub_1000AF41C();
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v370 = v1379;
          v371 = v1387;
          v372 = v1374;
          switch(EnumCaseMultiPayload)
          {
            case 1:
              v364 = &OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState;
              v1130 = *(v1228 + 32);
              v1131 = v316;
              v316 = v1387;
              (v1130)(v1227, v1131, v1289);
              sub_100004430();
              sub_1000AF41C();
              sub_1000325F0(v1324);
              sub_1001923C0();
              v1130();
              type metadata accessor for PreviewLocation(0);
              swift_storeEnumTagMultiPayload();
              v1132 = type metadata accessor for LocationPreviewViewState(0);
              type metadata accessor for LocationPreviewModalViewState(0);
              swift_storeEnumTagMultiPayload();
              v380 = *(v1132 + 24);
              type metadata accessor for SelectedSearchResult(0);
              swift_storeEnumTagMultiPayload();
              type metadata accessor for ModalViewState.MapViewModal(0);
              sub_10000E7B0();
              sub_10001B350(v1133, v1134, v1135, v1136);
              v370 = v1379;
              swift_storeEnumTagMultiPayload();
              sub_10001EF58();
              sub_10003024C();
              goto LABEL_330;
            case 2:
              sub_1000325DC();
              v380 = v1227;
              v1096 = v316;
              v316 = v370;
              v1097 = v1289;
              v1098(v1227, v1096, v1289);
              Location.identifier.getter();
              v1099 = v1097;
              v370 = v316;
              OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState(v380, v1099);
              type metadata accessor for Location.Identifier();
              sub_10000E7B0();
              sub_10001B350(v1100, v1101, v1102, v1103);
              sub_100010288();
              sub_1000883D4();
              sub_10001EF58();
              sub_10003024C();
              goto LABEL_330;
            case 3:
              v1104 = v1372;
              v1105 = v316;
              v316 = v1225;
              (*(v1372 + 32))(v1225, v1105, v1374);
              sub_100004430();
              sub_100037FF8(v1106);
              sub_1000AF41C();
              sub_100010288();
              sub_1000883D4();
              sub_10001EF58();
              sub_1000C8288(v1107);
              sub_10003778C();
              sub_1000AF41C();
              v1108 = v1286;
              (*(v1104 + 16))(v1286, v316, v372);
              sub_10000E7B0();
              sub_10001B350(v1109, v1110, v1111, v372);
              v1112 = sub_100020FBC(&v1314);
              sub_1000E59E4(v1112, v1113, v1114);
              v1115 = sub_100013268();
              v364 = v372;
              v380 = v371;
              sub_100399920(v1115, v1116, v1108, 0, 0, &OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v1117);
              sub_1000180EC(&OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, &qword_100CA6698, &unk_100A314B0);
              sub_1001923C0();
              sub_1000180EC(v1118, v1119, v1120);
              sub_100074B30();
              sub_1000B0F30(v371, v1121);
              (*(v1104 + 8))(v316, v364);
              v370 = v1379;
              goto LABEL_330;
            case 4:
              sub_1000325DC();
              v1074 = v1227;
              v1075(v1227, v316, v1289);
              sub_100004430();
              sub_100037FF8(v1076);
              sub_1000AF41C();
              sub_100010288();
              sub_1000883D4();
              sub_10001EF58();
              sub_1000C8288(v1077);
              sub_100032590();
              sub_1000AF41C();
              v1078 = v1286;
              sub_100003934();
              sub_10001B350(v1079, v1080, v1081, v372);
              v1082 = Location.id.getter();
              v1084 = v1083;
              sub_100051A88();
              sub_100003934();
              sub_1000E59E4(v1085, v1086, v1087);
              v1088 = sub_100013268();
              sub_100399920(v1088, v1089, v1078, v1082, v1084, &OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v1090);
              v380 = v1380;

              sub_1000180EC(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, &qword_100CA6698, &unk_100A314B0);
              sub_1001923C0();
              sub_1000180EC(v1091, v1092, v1093);
              sub_100074B30();
              sub_1000B0F30(v316, v1094);
              v1095 = v1074;
              v370 = v1379;
              OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState(v1095, v1289);
              goto LABEL_330;
            case 5:
              sub_100004430();
              sub_100037FF8(v1137);
              v380 = v1138;
              sub_1000AF41C();
              sub_10051A7D4();
              swift_storeEnumTagMultiPayload();
              sub_10001EF58();
              sub_10003024C();
              goto LABEL_330;
            case 6:
              sub_100004430();
              sub_100037FF8(v1139);
              sub_1000AF41C();
              sub_100010288();
              sub_1000883D4();
              sub_10001EF58();
              v316 = v370;
              sub_1000131DC();
              sub_1000AF41C();
              v1140 = v372;
              v380 = *v370;
              v334 = v1383;
              v364 = v1300;
              (*(v1372 + 16))(v1300 + v1383[6], &v370[v1383[6]], v1140);
              sub_100071CF0();
              sub_1000AF41C();
              v1141 = v370[*(v334 + 9)];
              sub_100074B30();
              sub_1000B0F30(v370, v1142);
              *v364 = v380;
              v1143 = (v364 + *(v334 + 7));
              *v1143 = 0;
              v1143[1] = 0;
              *(v364 + *(v334 + 9)) = v1141;
              goto LABEL_330;
            case 7:
              sub_100004430();
              sub_100037FF8(v1122);
              sub_1000AF41C();
              sub_100010288();
              sub_1000883D4();
              sub_10001EF58();
              sub_1000C8288(v1123);
              sub_10003778C();
              sub_1000AF41C();
              v316 = v370;
              sub_1000325F0(v1313);
              sub_100003934();
              sub_10001B350(v1124, v1125, v1126, v372);
              sub_10022C350(&qword_100CA6660, &unk_100A41280);
              v1127 = sub_100051A88();
              v1129 = 2;
              goto LABEL_329;
            case 8:
              sub_100004430();
              sub_100037FF8(v1144);
              sub_1000AF41C();
              sub_100010288();
              sub_1000883D4();
              sub_10001EF58();
              sub_1000C8288(v1145);
              sub_10003778C();
              sub_1000AF41C();
              v316 = v370;
              sub_1000325F0(v1313);
              sub_100003934();
              sub_10001B350(v1146, v1147, v1148, v372);
              sub_10022C350(&qword_100CA6660, &unk_100A41280);
              v1127 = sub_100051A88();
              v1129 = 3;
LABEL_329:
              sub_10001B350(v1127, v1129, 3, v1128);
              sub_10000E7B0();
              sub_1000E59E4(v1149, v1150, v1151);
              v1152 = sub_100013268();
              v380 = v371;
              sub_100399920(v1152, v1153, v370, 0, 0, &OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v1154);
              sub_1000180EC(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, &qword_100CA6698, &unk_100A314B0);
              v1155 = v370;
              v370 = v316;
              sub_1000180EC(v1155, &qword_100CA5CF8, &unk_100A302F0);
              sub_100074B30();
              sub_1000B0F30(v371, v1156);
LABEL_330:
              sub_1001711E0();
              sub_1000C84EC();
              break;
            default:
              sub_1000325DC();
              v364 = v371;
              v373 = v1226;
              v374 = v1289;
              v375(v1226, v316, v1289);
              Location.identifier.getter();
              type metadata accessor for Location.Identifier();
              sub_10000E7B0();
              sub_10001B350(v376, v377, v378, v379);
              sub_10001EF58();
              sub_1000AF41C();
              sub_1000498D0();
              sub_100021424();
              sub_1000AF41C();
              v380 = sub_1004B5684();
              sub_100025220();
              sub_1000B0F30(v364, v381);
              OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState(v373, v374);
              if (v380)
              {
                sub_10051A7D4();
              }

              else
              {
                type metadata accessor for ModalViewState.MapViewModal(0);
                sub_100088864(v1324);
                sub_100003934();
                sub_10001B350(v1218, v1219, v1220, v1221);
              }

              swift_storeEnumTagMultiPayload();
              sub_1001711E0();
              sub_1001923C0();
              sub_1000C84EC();
              v370 = v1379;
              break;
          }

          v1157 = sub_100003BCC(&v1307);
          sub_10001B350(v1157, v1158, v1159, v1160);
          v1161 = sub_100003BCC(&v1308);
          sub_10001B350(v1161, v1162, v1163, v1386);
          v1164 = sub_100003BCC(v1309);
          sub_10001B350(v1164, v1165, v1166, v1381);
          v1167 = sub_100003BCC(&v1310);
          sub_10001B350(v1167, v1168, v1169, v1385);
          v1170 = sub_100003BCC(&v1311);
          sub_10001B350(v1170, v1171, v1172, v370);
          v1173 = sub_100003BCC(&v1312);
          sub_10001B350(v1173, v1174, v1175, v1384);
          sub_100004430();
          v349 = v1262;
          sub_1000AF41C();
          sub_10000E7B0();
          sub_10001B350(v1176, v1177, v1178, v364);
          sub_100095588();
          sub_10000394C(v380);
          if (v406)
          {
            sub_100004430();
            sub_1000AF41C();
            sub_10000394C(v380);
            if (!v406)
            {
              sub_1000180EC(v380, &qword_100CA65B8, &unk_100A313D0);
            }
          }

          else
          {
            sub_1000167A4();
            sub_1000AF474();
          }

          sub_100037814();
          sub_1000AF474();
          v1179 = *(v368 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState);
          v1180 = *(v368 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle);
          v1181 = *(v368 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_listToLocationViewTransitionState);
          v1182 = *(v368 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_trigger);
          v1183 = *(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + v368);
          v1184 = type metadata accessor for LocationViewerViewState._Storage(0);
          sub_100003B6C(v1184);
          v1185 = sub_10003DDB8(v334, v1183, v1179, v1182, v1180, v1181);
          sub_1000180EC(v349, &qword_100CA65B8, &unk_100A313D0);
          v1186 = v1261;
          *v1261 = v1185;
          v1187 = v1382;
          swift_storeEnumTagMultiPayload();
          sub_10000E7B0();
          sub_10001B350(v1188, v1189, v1190, v1187);
          sub_1000325F0(v1273);
          sub_100003934();
          sub_10001B350(v1191, v1192, v1193, v1377);
          sub_1000E157C(&v1274);
          sub_100003934();
          sub_10001B350(v1194, v1195, v1196, v1378);
          sub_10001EF58();
          sub_100052674(&v1323);
          sub_1000AF41C();
          sub_10000E7B0();
          sub_10001B350(v1197, v1198, v1199, v1383);
          v1200 = v1260;
          v1201 = v1388;
          sub_10081B470();
          sub_1000180EC(v316, &qword_100CA65F0, &unk_100A5C3F0);
          sub_1000180EC(v1180, &qword_100CA65F8, &dword_100A31420);
          sub_1000180EC(v1182, &qword_100CA6600, &unk_100A5C400);
          sub_1000180EC(v1186, &qword_100CA6608, &unk_100A31430);
          sub_10000E7B0();
          sub_10001B350(v1202, v1203, v1204, v366);
          sub_100010288();
          sub_10051A7D4();
          sub_1000113EC();
          sub_1000AF41C();
          sub_10000E7B0();
          sub_10001B350(v1205, v1206, v1207, v1376);
          sub_1000D3D58();
          v1208 = v1280;
          v1209 = v1281;
          v1210 = v1282;
          v1211 = v1283;
          v1212 = v1284;
          v1213 = v1285;
          sub_1000D2C20(0, 3u, v1280, v1281, v1282, v1283, v1284, v1285, v1200, v1201, v1225, v1226, v1227, v1228, v1229, v1230, v1231, v1232, v1233);
          sub_1000FFC4C();
          sub_1000180EC(v1201, &qword_100CA65E8, &unk_100A31410);
          sub_1000180EC(v1200, &qword_100CA6610, &unk_100A32610);
          sub_1000180EC(v1213, &qword_100CA6618, &unk_100A31440);
          sub_1000180EC(v1212, &qword_100CA6620, &unk_100A32620);
          sub_1000180EC(v1211, &qword_100CA6628, &unk_100A31450);
          sub_1000180EC(v1210, &qword_100CA6630, &unk_100A32630);
          sub_1000180EC(v1209, &qword_100CA6638, &unk_100A31460);
          sub_1000180EC(v1208, &qword_100CA6640, qword_100A32640);
          sub_100074B30();
          sub_1000B0F30(v1300, v1214);
          sub_10002864C();
          v1215 = sub_10051A7D4();
          sub_1000B0F30(v1215, v1216);
          sub_1000B0F30(v1299, type metadata accessor for LocationViewerActiveLocationState);
LABEL_336:
          sub_1000B9974();
          v912 = &v1361;
          goto LABEL_337;
        }
      }

      sub_1000EFF78();
      sub_1000113EC();
      sub_1000AF41C();
      v489 = swift_getEnumCaseMultiPayload();
      sub_1000B9974();
      sub_1000B0F30(v365, v490);
      v406 = v489 == 8;
      v491 = v1385;
      v492 = v1386;
      if (v406)
      {
        v493 = sub_100003BCC(v1316);
        sub_10001B350(v493, v494, v495, v1380);
        v496 = sub_100003BCC(v1317);
        sub_10001B350(v496, v497, v498, v492);
        v499 = sub_100003BCC(&v1318);
        sub_10001B350(v499, v500, v501, v1381);
        v502 = sub_100003BCC(&v1319);
        sub_10001B350(v502, v503, v504, v491);
        v505 = sub_100003BCC(&v1320);
        sub_10001B350(v505, v506, v507, v1379);
        v508 = sub_100003BCC(v1321);
        sub_10001B350(v508, v509, v510, v1384);
        v511 = sub_100003BCC(&v1356);
        sub_10001B350(v511, v512, v513, v1382);
        v514 = sub_100003BCC(&v1357);
        sub_10001B350(v514, v515, v516, v1377);
        v517 = sub_100003BCC(v1358);
        sub_10001B350(v517, v518, v519, v1378);
        sub_10001EF58();
        sub_100037814();
        sub_1000AF41C();
        v520 = sub_100020FBC(v1322);
        v521 = v1374;
        sub_10001B350(v520, v522, v523, v1374);
        sub_10022C350(&qword_100CA6660, &unk_100A41280);
        v524 = sub_100088864(&v1359);
        sub_10001B350(v524, 3, 3, v525);
        sub_10000E7B0();
        sub_1000E59E4(v526, v527, v528);
        v529 = *v334;
        v530 = v334[1];
        sub_1000113EC();
        sub_100095588();
        v531 = sub_10000C7F0();
        sub_1000038B4(v531, v532, v521);
        if (v406)
        {
          (*(v1372 + 16))(v1298, &v334[v1383[6]], v521);
          v533 = sub_10000C7F0();
          sub_1000038B4(v533, v534, v521);
          v913 = v1266;
          if (!v406)
          {
            sub_1000180EC(v492, &qword_100CA5CF8, &unk_100A302F0);
          }
        }

        else
        {
          (*(v1372 + 32))(v1298, v492, v521);
          v913 = v1266;
        }

        v914 = &v334[v1383[7]];
        v916 = *v914;
        v915 = *(v914 + 1);
        sub_100052674(&v1359);
        sub_100095588();
        v917 = sub_1000175DC();
        v918 = v1370;
        sub_1000038B4(v917, v919, v1370);
        if (v406)
        {
          sub_100071CF0();
          sub_1000113EC();
          sub_1000AF41C();
          v920 = sub_1000175DC();
          v922 = sub_100024D10(v920, v921, v918);

          if (v922 != 1)
          {
            sub_1000180EC(v913, &qword_100CA6698, &unk_100A314B0);
          }
        }

        else
        {
          sub_1000241B8();
          sub_1000AF474();
        }

        v923 = sub_100399CD0(254, v334);
        v924 = v1348;
        *v1348 = v529;
        v924[1] = v530;
        v925 = v1383;
        (*(v1372 + 32))(&v924[v1383[6]], v1298, v1374);
        v926 = &v924[*(v925 + 28)];
        *v926 = v916;
        v926[1] = v915;
        sub_1000241B8();
        sub_1000AF474();
        v924[*(v925 + 36)] = v923 & 1;
        sub_1000180EC(v1349, &qword_100CA6698, &unk_100A314B0);
        sub_1000180EC(v1297, &qword_100CA5CF8, &unk_100A302F0);
        sub_100074B30();
        sub_1000B0F30(v334, v927);
        sub_10000E7B0();
        sub_10001B350(v928, v929, v930, v925);
        v931 = v1388;
        v932 = *v1388;
        sub_1000131DC();
        sub_100095588();
        v933 = sub_1000162A4();
        v934 = v1382;
        sub_1000C8778(v933, v935);
        if (v406)
        {
          sub_100019990();
          sub_1000AF41C();
          v936 = sub_1000162A4();
          v934 = sub_100024D10(v936, v937, v934);

          v938 = v1264;
          if (v934 != 1)
          {
            sub_1000180EC(v530, &qword_100CA6608, &unk_100A31430);
          }
        }

        else
        {
          sub_100014824();
          sub_1000AF474();

          v938 = v1264;
        }

        LODWORD(v1386) = *(v931 + v366[6]);
        v939 = sub_1000B010C();
        sub_100021424();
        sub_100095588();
        v940 = sub_100016298();
        v941 = v1377;
        sub_1000038B4(v940, v942, v1377);
        if (v406)
        {
          sub_100095588();
          sub_10000C814(v934);
          if (!v406)
          {
            sub_1000180EC(v934, &qword_100CA6600, &unk_100A5C400);
          }
        }

        else
        {
          sub_10004E66C();
          sub_100021424();
          sub_1000AF474();
          sub_10000E7B0();
          sub_10001B350(v943, v944, v945, v941);
        }

        sub_1000453E0(v1358);
        sub_100095588();
        v946 = sub_1000201BC();
        sub_1000038B4(v946, v947, v1378);
        if (v406)
        {
          sub_1000498D0();
          sub_1000AF41C();
          sub_10000C814(v938);
          if (!v406)
          {
            sub_1000180EC(v938, &qword_100CA65F8, &dword_100A31420);
          }
        }

        else
        {
          sub_100006000();
          sub_1000AF474();
        }

        sub_100037814();
        sub_100095588();
        v948 = sub_1000201BC();
        sub_1000038B4(v948, v949, v1383);
        if (v406)
        {
          sub_10001EF58();
          sub_1000AF41C();
          sub_10000C814(v938);
          if (!v406)
          {
            sub_1000180EC(v938, &qword_100CA65F0, &unk_100A5C3F0);
          }
        }

        else
        {
          sub_1000087FC();
          sub_1000AF474();
        }

        v950 = *(v931 + v366[11]);
        v951 = v1263;
        *v1263 = v932;
        sub_100014824();
        sub_1000AF474();
        *(v951 + v366[6]) = v1386;
        *(v951 + v366[7]) = v939 & 1;
        sub_100051BBC();
        sub_100006000();
        sub_1000AF474();
        sub_1000087FC();
        sub_1000AF474();
        *(v951 + v366[11]) = v950;
        sub_1000180EC(v1348, &qword_100CA65F0, &unk_100A5C3F0);
        sub_1000180EC(v1347, &qword_100CA65F8, &dword_100A31420);
        v952 = sub_1000C893C(&v1357);
        sub_1000180EC(v952, v953, &unk_100A5C400);
        sub_1000180EC(v1346, &qword_100CA6608, &unk_100A31430);
        sub_10000E7B0();
        sub_10001B350(v954, v955, v956, v366);
        v957 = v1288;
        sub_100003934();
        sub_10001B350(v958, v959, v960, v1376);
        sub_1000D3D58();
        v961 = v1290;
        v962 = v1291;
        v963 = v1292;
        v964 = v1293;
        v965 = v1294;
        v966 = v1295;
        v349 = sub_1000D2C20(0, 3u, v1290, v1291, v1292, v1293, v1294, v1295, v951, v957, v1225, v1226, v1227, v1228, v1229, v1230, v1231, v1232, v1233);
        sub_1000180EC(v957, &qword_100CA65E8, &unk_100A31410);
        sub_1000180EC(v951, &qword_100CA6610, &unk_100A32610);
        sub_1000180EC(v966, &qword_100CA6618, &unk_100A31440);
        sub_1000180EC(v965, &qword_100CA6620, &unk_100A32620);
        sub_1000180EC(v964, &qword_100CA6628, &unk_100A31450);
        sub_1000180EC(v963, &qword_100CA6630, &unk_100A32630);
        sub_1000180EC(v962, &qword_100CA6638, &unk_100A31460);
        sub_1000180EC(v961, &qword_100CA6640, qword_100A32640);
        goto LABEL_336;
      }

      v349 = v1387;
      if (qword_100CA26C8 != -1)
      {
        sub_10001EAC4(&qword_100CA26C8);
      }

      v848 = type metadata accessor for Logger();
      sub_10000703C(v848, qword_100D90AC0);
      v849 = Logger.logObject.getter();
      v850 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v849, v850))
      {
        v851 = swift_slowAlloc();
        *v851 = 0;
        sub_1000133FC(&_mh_execute_header, v852, v853, "Can only process pinned map actions when pinned map and locationViewer states available");
        sub_100003884(v851);
      }

      sub_1000B9974();
      v846 = v334;
LABEL_201:
      sub_1000B0F30(v846, v847);
LABEL_202:

      return v349;
    case 5u:
      sub_1000167A4();
      sub_1000113EC();
      v419 = v418;
      sub_1000AF474();
      sub_1000167A4();
      sub_1000113EC();
      sub_1000AF41C();
      sub_100006000();
      sub_1000113EC();
      sub_1000AF474();
      sub_100003934();
      v420 = v1380;
      sub_10001B350(v421, v422, v423, v1380);
      sub_100003934();
      sub_10001B350(v424, v425, v426, v1386);
      v427 = sub_100003BCC(&v1377);
      sub_10001B350(v427, v428, v429, v1381);
      v430 = sub_100003BCC(&v1379);
      sub_10001B350(v430, v431, v432, v1385);
      v433 = sub_100003BCC(&v1381);
      v434 = v1379;
      sub_10001B350(v433, v435, v436, v1379);
      v437 = sub_100003BCC(&v1385);
      sub_10001B350(v437, v438, v439, v1384);
      sub_1000AF6DC();
      sub_10000E7B0();
      sub_10001B350(v440, v441, v442, v1389);
      v443 = v1343;
      sub_100003934();
      sub_10001B350(v444, v445, v446, v1376);
      sub_100010288();
      v447 = v1387;
      sub_1000131DC();
      sub_1000AF41C();
      sub_1000325C0();
      sub_100051BBC();
      sub_100003A40(v443);
      if (v406)
      {
        sub_1000180EC(v443, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_10002864C();
        sub_1000B0F30(v419, v590);
        sub_10001C490();
        sub_1000AF474();
      }

      sub_10001C490();
      sub_1000AF474();
      v591 = *(v447 + 2);
      LODWORD(v1383) = v447[24];
      sub_100051BBC();
      sub_100005404(v331);
      v592 = v1337;
      v593 = v1335;
      v1388 = v591;
      if (v406)
      {
        sub_100011634();
        sub_1000AF41C();
        v594 = sub_100024D10(v331, 1, v420);

        v595 = v1386;
        if (v594 != 1)
        {
          sub_1000180EC(v331, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000184A8();
        sub_1000AF474();

        v595 = v1386;
      }

      sub_100032590();
      sub_100051BBC();
      v596 = sub_1000175DC();
      sub_1000038B4(v596, v597, v595);
      if (v406)
      {
        sub_10002014C(&v447[OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment]);
        sub_100031630();
        sub_1000AF41C();
        v598 = sub_1000175DC();
        sub_1000038B4(v598, v599, v595);
        v600 = v316;
        v601 = v1302;
        if (!v406)
        {
          sub_1000180EC(v600, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100051E84();
        sub_1000AF474();
        v601 = v1302;
      }

      sub_100051BBC();
      sub_10000394C(v593);
      if (v406)
      {
        sub_100037B5C();
        sub_1000AF41C();
        sub_10000394C(v593);
        v602 = v1307;
        if (!v406)
        {
          sub_1000180EC(v593, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10000EB04();
        sub_1000AF474();
        v602 = v1307;
      }

      sub_100052674(&v1379);
      sub_100051BBC();
      sub_100003A40(v601);
      if (v406)
      {
        sub_10002C7E4();
        sub_1000AF41C();
        sub_100003A40(v601);
        v603 = v1311;
        if (!v406)
        {
          sub_1000180EC(v601, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_1000207F4();
        sub_1000AF474();
        v603 = v1311;
      }

      sub_100051BBC();
      v604 = sub_1000162A4();
      sub_1000038B4(v604, v605, v434);
      if (v406)
      {
        sub_10000CBF8();
        sub_1000AF41C();
        v606 = sub_1000162A4();
        sub_1000038B4(v606, v607, v434);
        if (!v406)
        {
          sub_1000180EC(v592, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000247AC();
        sub_1000AF474();
      }

      sub_100052378(&v1385);
      sub_100051BBC();
      v608 = sub_100016298();
      v609 = v1384;
      sub_1000038B4(v608, v610, v1384);
      if (v406)
      {
        sub_10003C57C();
        sub_1000AF41C();
        v611 = sub_100016298();
        sub_1000038B4(v611, v612, v609);
        if (!v406)
        {
          sub_1000180EC(v602, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_1000179A4();
        sub_1000AF474();
      }

      sub_100051BBC();
      sub_100005404(v603);
      if (v406)
      {
        sub_100022CD0();
        sub_1000AF41C();
        sub_100005404(v603);
        if (!v406)
        {
          sub_1000180EC(v603, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100069674();
        sub_1000AF474();
      }

      sub_10001C490();
      sub_100041000(v1352);
      v613 = *&v447[OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData];
      v349 = *&v447[OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8];
      v615 = *&v447[OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16];
      v614 = *&v447[OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24];
      v616 = v447[OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState];
      v617 = *&v447[OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8];
      v618 = *&v447[OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16];
      v619 = *&v447[OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners];
      v620 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v620);
      v1386 = v619;
      LOBYTE(v1222) = v616;
      sub_100040DE8(v1388, v1383, v1353[1], v1353[2], v1353[3], v1353[4], v1355[0], v621, v1351, v603, v613, v349, v615, v614, v1222, v617, v618, v619, v1223, v1224, v1225, v1226, v1227, v1228, v1229, v1230, v1231, v1232, v1233, v1234, v1235, v1236, v1237, v1238, v1239);
      v623 = v622;
      sub_100022CD0();
      sub_100037814();
      sub_1000AF41C();
      v624 = v1389;
      sub_100019990();
      v625 = v1344;
      sub_1000AF41C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        sub_100016A9C();
        sub_1000B0F30(v616, v626);
        sub_100025220();
        sub_1000B0F30(v1367, v627);
        sub_100020FA0();
        sub_1000B0F30(*(v628 - 256), v629);
        sub_10003BA34();
        v631 = v625;
LABEL_86:
        sub_1000B0F30(v631, v630);
        return v623;
      }

      v632 = *v625;
      v633 = *(v616 + *(v624 + 36) + 8);

      if (v633 == 1)
      {
        v634 = sub_1000B010C();
        sub_100016A9C();
        sub_1000B0F30(v616, v635);
        if ((v634 & 1) == 0)
        {

          sub_100025220();
          sub_1000B0F30(v1367, v636);
          sub_100020FA0();
          v631 = *(v637 - 256);
          goto LABEL_86;
        }
      }

      else
      {
        sub_100016A9C();
        sub_1000B0F30(v616, v908);
      }

      sub_10051A7C8();
      sub_1000161C0((v909 + 56), *(v909 + 80));
      sub_1000E157C(&v1281);
      swift_storeEnumTagMultiPayload();
      sub_1000B0F88(v632, v623, v617);
      sub_1000FFC4C();

      sub_10006A7C8();
      sub_1000B0F30(v617, v910);
      sub_100025220();
      sub_1000B0F30(v1367, v911);
      sub_100020FA0();
LABEL_337:
      v363 = *(v912 - 32);
LABEL_338:
      sub_1000B0F30(v363, v362);
      return v349;
    case 6u:
      LODWORD(v1374) = *v358;
      v448 = sub_100003BCC(&v1376);
      sub_10001B350(v448, v449, v450, v1380);
      v451 = sub_100003BCC(&v1378);
      sub_10001B350(v451, v452, v453, v1386);
      v454 = sub_100003BCC(&v1382);
      sub_10001B350(v454, v455, v456, v1381);
      v457 = sub_100003BCC(&v1386);
      sub_10001B350(v457, v458, v459, v1385);
      v460 = sub_100003BCC(&v1389);
      sub_10001B350(v460, v461, v462, v1379);
      v463 = sub_100003BCC(v1391);
      sub_10001B350(v463, v464, v465, v1384);
      v466 = sub_100020FBC(&v1383);
      v467 = v1382;
      sub_10001B350(v466, v468, v469, v1382);
      v470 = v1339;
      sub_100003934();
      v471 = v1377;
      sub_10001B350(v472, v473, v474, v1377);
      sub_100003934();
      sub_10001B350(v475, v476, v477, v1378);
      sub_1000E157C(v1353);
      sub_100003934();
      sub_10001B350(v478, v479, v480, v1383);
      v481 = v1388;
      v482 = *v1388;
      sub_100032590();
      sub_100095588();
      sub_10000394C(v316);
      if (v406)
      {
        v638 = v1389;
        sub_100019990();
        sub_1000AF41C();
        v483 = sub_1000175DC();
        v485 = sub_100024D10(v483, v484, v467);

        v639 = v1318;
        if (v485 != 1)
        {
          sub_1000180EC(v316, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_100014824();
        sub_1000AF474();

        v638 = v1389;
        v639 = v1318;
      }

      v640 = *(v481 + v638[6]);
      v641 = sub_1000B010C();
      sub_1000180EC(v1362, &qword_100CA6608, &unk_100A31430);
      sub_100037814();
      sub_100051BBC();
      v642 = sub_1000201BC();
      sub_1000038B4(v642, v643, v471);
      if (v406)
      {
        sub_100095588();
        v644 = sub_1000201BC();
        sub_1000038B4(v644, v645, v471);
        v649 = v1387;
        if (!v406)
        {
          sub_1000180EC(v470, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_10004E66C();
        sub_1000113EC();
        sub_1000AF474();
        sub_10000E7B0();
        sub_10001B350(v646, v647, v648, v471);
        v649 = v1387;
      }

      v650 = v1342;
      sub_100051BBC();
      v651 = sub_100007FC4();
      sub_1000113D0(v651, v652);
      v653 = v1338;
      if (v406)
      {
        sub_1000498D0();
        sub_1000AF41C();
        sub_100003A40(v650);
        if (!v406)
        {
          sub_1000180EC(v650, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_100006000();
        sub_1000AF474();
      }

      sub_100051BBC();
      v654 = sub_1000162B0();
      v655 = v1383;
      sub_1000113D0(v654, v656);
      if (v406)
      {
        sub_10001EF58();
        sub_1000325C0();
        sub_1000AF41C();
        sub_100003A40(v639);
        v657 = v1308;
        if (!v406)
        {
          sub_1000180EC(v639, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_1000087FC();
        sub_1000325C0();
        sub_1000AF474();
        v657 = v1308;
      }

      v658 = v1364;
      *v1364 = v482;
      sub_100014824();
      sub_1000AF474();
      *(v658 + v638[6]) = v640;
      *(v658 + v638[7]) = v641 & 1;
      sub_100051BBC();
      sub_100006000();
      sub_1000AF474();
      sub_1000087FC();
      sub_1000AF474();
      *(v658 + v638[11]) = v1374;
      sub_10000E7B0();
      sub_10001B350(v659, v660, v661, v638);
      sub_1000E157C(v1355);
      sub_100003934();
      v662 = v1376;
      sub_10001B350(v663, v664, v665, v1376);
      sub_100010288();
      sub_1000113EC();
      sub_1000AF41C();
      sub_10003778C();
      sub_100051BBC();
      v666 = sub_1000131C4();
      sub_1000038B4(v666, v667, v662);
      if (v406)
      {
        sub_1000180EC(v658, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_10002864C();
        sub_1000B0F30(v655, v668);
        sub_10001C490();
        sub_100021CEC();
        sub_1000AF474();
      }

      v669 = v1312;
      v670 = v1301;
      sub_10001C490();
      sub_1000AF474();
      v671 = *(v649 + 2);
      LODWORD(v1383) = v649[24];
      sub_100052378(&v1376);
      sub_100051BBC();
      v672 = sub_100016298();
      v673 = v1380;
      sub_1000038B4(v672, v674, v1380);
      v1388 = v671;
      if (v406)
      {
        sub_100011634();
        sub_1000AF41C();
        v675 = sub_100016298();
        v677 = sub_100024D10(v675, v676, v673);

        v678 = v1315;
        if (v677 != 1)
        {
          sub_1000180EC(v670, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000184A8();
        sub_1000AF474();

        v678 = v1315;
      }

      sub_100021424();
      sub_100051BBC();
      v679 = sub_100016298();
      v680 = v1386;
      sub_1000038B4(v679, v681, v1386);
      if (v406)
      {
        sub_10002014C(&v649[OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment]);
        sub_100031630();
        v684 = v649;
        sub_1000AF41C();
        v682 = sub_100016298();
        v638 = v1389;
        sub_1000038B4(v682, v683, v680);
        v685 = v1322[0];
        if (!v406)
        {
          sub_1000180EC(v670, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        v684 = v649;
        sub_100051E84();
        sub_1000AF474();
        v685 = v1322[0];
      }

      sub_1000453E0(&v1382);
      sub_100051BBC();
      sub_100005404(v653);
      if (v406)
      {
        sub_100037B5C();
        sub_1000AF41C();
        sub_100005404(v653);
        v686 = v1320;
        v687 = v1384;
        if (!v406)
        {
          sub_1000180EC(v653, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10000EB04();
        sub_1000AF474();
        v686 = v1320;
        v687 = v1384;
      }

      sub_100051BBC();
      v688 = sub_100007FC4();
      v689 = v1385;
      sub_1000038B4(v688, v690, v1385);
      if (v406)
      {
        sub_10002C7E4();
        sub_1000AF41C();
        v691 = sub_100007FC4();
        sub_1000038B4(v691, v692, v689);
        if (!v406)
        {
          sub_1000180EC(v657, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_1000207F4();
        sub_1000AF474();
      }

      sub_100052674(&v1389);
      sub_100051BBC();
      v693 = sub_1000175DC();
      v349 = v1379;
      sub_1000038B4(v693, v694, v1379);
      if (v406)
      {
        sub_10000CBF8();
        sub_1000AF41C();
        v695 = sub_1000175DC();
        sub_1000038B4(v695, v696, v349);
        if (!v406)
        {
          sub_1000180EC(v669, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000247AC();
        sub_1000AF474();
      }

      sub_100051BBC();
      sub_10000394C(v678);
      if (v406)
      {
        sub_10003C57C();
        sub_1000AF41C();
        sub_10000394C(v678);
        if (!v406)
        {
          sub_1000180EC(v678, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_1000179A4();
        sub_1000AF474();
      }

      sub_1000436AC(&v1394);
      sub_100051BBC();
      sub_10000C814(v686);
      if (v406)
      {
        sub_100022CD0();
        sub_1000AF41C();
        sub_10000C814(v686);
        v697 = v685;
        if (!v406)
        {
          sub_1000180EC(v686, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100069674();
        sub_1000AF474();
        v697 = v685;
      }

      sub_10001C490();
      v698 = v1375;
      sub_1000AF474();
      sub_10001327C();
      sub_100021D8C();
      v700 = *(v699 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      v701 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v701);
      LOBYTE(v1222) = v689;
      sub_100040DE8(v1388, v1383, v1355[2], v1355[3], v1355[4], v1355[5], v1355[6], v702, v697, v698, v349, v669, v684, v649, v1222, v638, v687, v700, v1223, v1224, v1225, v1226, v1227, v1228, v1229, v1230, v1231, v1232, v1233, v1234, v1235, v1236, v1237, v1238, v1239);
      sub_1000E31D4();

      goto LABEL_248;
    case 7u:
      sub_100019990();
      v410 = v1340;
      sub_1000AF41C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_10003778C();
        sub_1000AF474();
        v411 = 0;
        v349 = v1387;
      }

      else
      {
        sub_10003BA34();
        sub_1000B0F30(v410, v583);
        v411 = 1;
        v349 = v1387;
        v355 = v1325;
      }

      v584 = type metadata accessor for VFXTestViewState(0);
      sub_10001B350(v355, v411, 1, v584);
      sub_100043778();
      sub_100024D10(v585, v586, v587);
      sub_1000180EC(v355, &qword_100CBEEC0, &unk_100A5C3E0);
      goto LABEL_202;
    case 8u:
      v486 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView;
      v487 = v1353[0];
      sub_1000AF41C();
      sub_100021424();
      sub_1000AF41C();
      v488 = swift_getEnumCaseMultiPayload();
      v1369 = v486;
      if (v488 == 4)
      {
        sub_1000B0F30(v487, type metadata accessor for ModalViewState);
        sub_1000B0F30(v345, type metadata accessor for ModalViewState);
        sub_100021CEC();
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        sub_10002864C();
        sub_1000B0F30(v345, v703);
      }

      v704 = v1388;
      v705 = v1389;
      v707 = v1383;
      v706 = v1384;
      v708 = v1377;
      v709 = v1382;
      v710 = sub_100003BCC(&v1380);
      sub_10001B350(v710, v711, v712, v713);
      v714 = sub_100003BCC(&v1384);
      sub_10001B350(v714, v715, v716, v1386);
      v717 = sub_100003BCC(&v1387);
      sub_10001B350(v717, v718, v719, v1381);
      v720 = sub_100003BCC(&v1390);
      sub_10001B350(v720, v721, v722, v1385);
      v723 = sub_100003BCC(v1393);
      sub_10001B350(v723, v724, v725, v1379);
      v726 = sub_100003BCC(&v1396);
      sub_10001B350(v726, v727, v728, v706);
      sub_100003934();
      sub_10001B350(v729, v730, v731, v709);
      v732 = sub_100003BCC(v1392);
      sub_10001B350(v732, v733, v734, v708);
      v735 = sub_100003BCC(&v1395);
      sub_10001B350(v735, v736, v737, v1378);
      v738 = v704 + *(v705 + 40);
      v739 = v1368;
      sub_100003934();
      v740 = v1374;
      sub_10001B350(v741, v742, v743, v1374);
      v744 = sub_10022C350(&qword_100CA6660, &unk_100A41280);
      v745 = *(v744 + 48);
      LODWORD(v1367) = v738[1];
      v746 = v1367 >> 6;
      v748 = v1372;
      v747 = v1373;
      *v1373 = v1367 >> 6 == 1;
      v749 = *(v707 + 24);
      v750 = *(v748 + 16);
      v750(&v747[v745], &v738[v749], v740);
      sub_10001B350(v747, 0, 3, v744);
      sub_10000E7B0();
      v751 = v1370;
      sub_10001B350(v752, v753, v754, v1370);
      sub_100037814();
      sub_100095588();
      sub_100003A40(v739);
      v1371 = v738;
      if (v406)
      {
        v750(v1354, &v738[v749], v740);
        sub_100003A40(v739);
        v757 = v1330;
        if (!v406)
        {
          sub_1000180EC(v739, &qword_100CA5CF8, &unk_100A302F0);
        }
      }

      else
      {
        v755 = sub_1000453E0(v1363);
        v756(v755);
        v757 = v1330;
      }

      v758 = v1383;
      v759 = &v1371[v1383[7]];
      v761 = *v759;
      v760 = v759[1];
      sub_100095588();
      sub_10000394C(v757);
      if (v406)
      {
        sub_100071CF0();
        sub_1000AF41C();
        v762 = sub_100024D10(v757, 1, v751);

        v763 = v1372;
        if (v762 != 1)
        {
          sub_1000180EC(v757, &qword_100CA6698, &unk_100A314B0);
        }
      }

      else
      {
        sub_1000241B8();
        sub_1000AF474();

        v763 = v1372;
      }

      if (DeviceIsSlow())
      {
        v764 = 0;
      }

      else
      {
        v764 = (v746 != 1) | v1367;
      }

      v765 = v1322[3];
      sub_1000180EC(v1373, &qword_100CA6698, &unk_100A314B0);
      sub_1000180EC(v1368, &qword_100CA5CF8, &unk_100A302F0);
      v766 = v1365;
      *v1365 = -32764;
      (*(v763 + 32))(&v766[v758[6]], v1354, v1374);
      v767 = &v766[v758[7]];
      *v767 = v761;
      v767[1] = v760;
      sub_1000241B8();
      sub_1000AF474();
      v766[v758[9]] = v764 & 1;
      sub_10000E7B0();
      sub_10001B350(v768, v769, v770, v758);
      v771 = v1388;
      v772 = *v1388;
      v773 = v1350;
      sub_100032590();
      sub_100095588();
      v774 = sub_1000175DC();
      sub_1000113D0(v774, v775);
      if (v406)
      {
        sub_100019990();
        sub_1000AF41C();
        sub_100043778();
        v779 = sub_100024D10(v776, v777, v778);

        v780 = v1376;
        v781 = v1329;
        v782 = v1328;
        if (v779 != 1)
        {
          sub_1000180EC(v761, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_100014824();
        sub_1000AF474();

        v780 = v1376;
        v781 = v1329;
        v782 = v1328;
      }

      LODWORD(v1376) = sub_1000453F8();
      sub_1000180EC(v773, &qword_100CA6608, &unk_100A31430);
      sub_1000131DC();
      sub_100051BBC();
      v783 = sub_1000162A4();
      v784 = v1377;
      sub_1000038B4(v783, v785, v1377);
      if (v406)
      {
        sub_100095588();
        v786 = sub_1000162A4();
        sub_1000038B4(v786, v787, v784);
        v788 = v771;
        v792 = v1321[0];
        if (!v406)
        {
          sub_1000180EC(v788, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_10004E66C();
        sub_1000113EC();
        sub_1000AF474();
        sub_10000E7B0();
        sub_10001B350(v789, v790, v791, v784);
        v792 = v1321[0];
      }

      sub_100051BBC();
      v793 = sub_1000162A4();
      v794 = v1378;
      sub_1000038B4(v793, v795, v1378);
      if (v406)
      {
        sub_1000498D0();
        sub_1000AF41C();
        v796 = sub_1000162A4();
        sub_1000038B4(v796, v797, v794);
        if (!v406)
        {
          sub_1000180EC(v792, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_100006000();
        sub_1000AF474();
      }

      sub_1000C893C(&v1397);
      sub_100051BBC();
      sub_100003A40(v765);
      if (v406)
      {
        sub_10001EF58();
        sub_1000AF41C();
        sub_100043778();
        sub_1000038B4(v798, v799, v800);
        if (!v406)
        {
          sub_1000180EC(v765, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_1000087FC();
        sub_1000113EC();
        sub_1000AF474();
      }

      v801 = v1389;
      v802 = *(v1388 + v1389[11]);
      v803 = v1366;
      *v1366 = v772;
      sub_100014824();
      sub_1000AF474();
      *(v803 + v801[6]) = v1382;
      *(v803 + v801[7]) = v1376 & 1;
      sub_100051BBC();
      sub_100006000();
      sub_1000AF474();
      sub_1000087FC();
      sub_1000AF474();
      *(v803 + v801[11]) = v802;
      sub_10000E7B0();
      sub_10001B350(v804, v805, v806, v801);
      sub_10001C490();
      sub_1000AF474();
      sub_10000E7B0();
      sub_10001B350(v807, v808, v809, v780);
      sub_100010288();
      v810 = v1387;
      sub_1000AF41C();
      sub_100051BBC();
      sub_10000C814(v782);
      if (v406)
      {
        sub_1000180EC(v782, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_10002864C();
        sub_1000B0F30(v781, v811);
        sub_10001C490();
        sub_1000AF474();
      }

      v812 = v1380;
      v813 = v1333[1];
      v814 = v1321[1];
      v815 = v1310;
      v816 = v1305;
      v349 = v1303;
      sub_10001C490();
      sub_1000AF474();
      v817 = *(v810 + 2);
      v818 = v810[24];
      sub_100051BBC();
      sub_100005404(v349);
      v1388 = v817;
      if (v406)
      {
        sub_100011634();
        sub_1000AF41C();
        v819 = sub_100007FC4();
        v821 = sub_100024D10(v819, v820, v812);

        if (v821 != 1)
        {
          sub_1000180EC(v349, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000184A8();
        sub_1000AF474();
      }

      sub_100051BBC();
      v822 = sub_1000162B0();
      sub_1000C8778(v822, v823);
      if (v406)
      {
        sub_10002014C(&v810[OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment]);
        sub_100031630();
        sub_1000AF41C();
        sub_10000394C(v816);
        v824 = v1319;
        v825 = v1314;
        if (!v406)
        {
          sub_1000180EC(v816, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100051E84();
        sub_1000AF474();
        v824 = v1319;
        v825 = v1314;
      }

      sub_100051BBC();
      sub_100003A40(v815);
      if (v406)
      {
        sub_100037B5C();
        sub_1000AF41C();
        sub_100003A40(v815);
        v826 = v1389;
        if (!v406)
        {
          sub_1000180EC(v815, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10000EB04();
        sub_1000AF474();
        v826 = v1389;
      }

      sub_1000436AC(&v1390);
      sub_100051BBC();
      v827 = sub_1000131C4();
      sub_1000113D0(v827, v828);
      if (v406)
      {
        sub_10002C7E4();
        sub_1000AF41C();
        sub_100003A40(v825);
        if (!v406)
        {
          sub_1000180EC(v825, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_1000207F4();
        sub_1000AF474();
      }

      sub_100052378(v1393);
      sub_100051BBC();
      v829 = sub_100016298();
      sub_10001627C(v829, v830);
      if (v406)
      {
        sub_10000CBF8();
        sub_1000AF41C();
        sub_100005404(v824);
        v831 = v1323;
        if (!v406)
        {
          sub_1000180EC(v824, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000247AC();
        sub_1000AF474();
        v831 = v1323;
      }

      sub_1000C893C(&v1396);
      sub_100051BBC();
      sub_10000C814(v814);
      if (v406)
      {
        sub_10003C57C();
        sub_1000AF41C();
        sub_10000C814(v814);
        if (!v406)
        {
          sub_1000180EC(v814, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_1000179A4();
        sub_1000AF474();
      }

      sub_1000436AC(&v1398);
      sub_100051BBC();
      v832 = sub_1000131C4();
      sub_1000038B4(v832, v833, v826);
      LODWORD(v1383) = v818;
      if (v406)
      {
        sub_100022CD0();
        sub_1000AF41C();
        v834 = sub_1000131C4();
        sub_1000038B4(v834, v835, v826);
        if (!v406)
        {
          sub_1000180EC(v831, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100069674();
        sub_100021CEC();
        sub_1000AF474();
      }

      sub_10001C490();
      sub_100041000(v813);
      sub_10001327C();
      sub_100021D8C();
      v836 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v836);
      v837 = sub_100020224();
      v840 = v1355[8];
      v841 = v1356;
      v842 = v1357;
      v843 = v1358[0];
      v844 = v1358[1];
      goto LABEL_247;
    case 9u:
      v382 = v1388;
      v383 = v1389;
      if (*(v1388 + v1389[10] + 1) == 128)
      {
        if (qword_100CA26C8 != -1)
        {
          sub_10001EAC4(&qword_100CA26C8);
        }

        v384 = type metadata accessor for Logger();
        sub_10000703C(v384, qword_100D90AC0);
        v385 = Logger.logObject.getter();
        v386 = static os_log_type_t.error.getter();
        v387 = os_log_type_enabled(v385, v386);
        v349 = v1387;
        if (v387)
        {
          v388 = swift_slowAlloc();
          *v388 = 0;
          sub_1000133FC(&_mh_execute_header, v389, v390, "Can only process interactive map actions");
          sub_100003884(v388);
        }

        goto LABEL_202;
      }

      v535 = sub_100399D40();
      v536 = v383[9];
      v537 = sub_100020FBC(v1313);
      sub_10001B350(v537, v538, v539, v1374);
      sub_100051A88();
      sub_100003934();
      sub_1000E59E4(v540, v541, v542);
      v543 = v1278;
      sub_1000B0430(v535, v382 + v536, v342, v345, v1278);
      sub_1000180EC(v345, &qword_100CA6698, &unk_100A314B0);
      sub_1000180EC(v342, &qword_100CA5CF8, &unk_100A302F0);
      v544 = sub_100003BCC(v1326);
      sub_10001B350(v544, v545, v546, v1380);
      v547 = sub_100003BCC(&v1327);
      sub_10001B350(v547, v548, v549, v1386);
      v550 = sub_100003BCC(&v1329);
      sub_10001B350(v550, v551, v552, v1381);
      v553 = sub_100003BCC(v1333);
      sub_10001B350(v553, v554, v555, v1385);
      v556 = sub_100003BCC(&v1334);
      sub_10001B350(v556, v557, v558, v1379);
      v559 = sub_100003BCC(v1336);
      sub_10001B350(v559, v560, v561, v1384);
      v562 = v1306;
      sub_100003934();
      sub_10001B350(v563, v564, v565, v1382);
      v566 = sub_100020FBC(v1296);
      sub_10001B350(v566, v567, v568, v1377);
      v569 = sub_100003BCC(&v1335);
      sub_10001B350(v569, v570, v571, v1378);
      sub_10001EF58();
      sub_100037814();
      sub_1000AF41C();
      sub_10000E7B0();
      sub_10001B350(v572, v573, v574, v1383);
      v575 = *v382;
      sub_1000325C0();
      sub_100095588();
      sub_100003A40(v562);
      if (v406)
      {
        sub_100019990();
        sub_1000AF41C();
        sub_100043778();
        v579 = sub_100024D10(v576, v577, v578);

        if (v579 != 1)
        {
          sub_1000180EC(v562, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_100014824();
        sub_1000AF474();
      }

      v854 = sub_1000453F8();
      sub_1000180EC(v1306, &qword_100CA6608, &unk_100A31430);
      sub_100074B30();
      sub_1000B0F30(v543, v855);
      sub_1000131DC();
      sub_100051BBC();
      v856 = sub_1000162A4();
      v857 = v1377;
      sub_1000038B4(v856, v858, v1377);
      v859 = v1387;
      if (v406)
      {
        sub_100095588();
        v860 = sub_1000162A4();
        sub_1000038B4(v860, v861, v857);
        if (!v406)
        {
          sub_1000180EC(v382, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_10004E66C();
        sub_1000113EC();
        sub_1000AF474();
        sub_10000E7B0();
        sub_10001B350(v862, v863, v864, v857);
      }

      sub_1000131DC();
      sub_100051BBC();
      v865 = sub_1000162A4();
      sub_1000113D0(v865, v866);
      if (v406)
      {
        sub_1000498D0();
        sub_1000AF41C();
        sub_100003A40(v382);
        v867 = v1380;
        if (!v406)
        {
          sub_1000180EC(v382, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_100006000();
        sub_1000AF474();
        v867 = v1380;
      }

      sub_100037814();
      sub_100051BBC();
      v868 = sub_1000201BC();
      v869 = v1383;
      sub_1000113D0(v868, v870);
      if (v406)
      {
        sub_10001EF58();
        sub_1000AF41C();
        sub_100003A40(v334);
        if (!v406)
        {
          sub_1000180EC(v334, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_1000087FC();
        sub_1000AF474();
      }

      v871 = *(v1388 + v383[11]);
      v872 = v1277;
      *v1277 = v575;
      sub_100014824();
      sub_1000AF474();
      *(v872 + v383[6]) = v1382;
      *(v872 + v383[7]) = v854 & 1;
      sub_100051BBC();
      sub_100006000();
      sub_1000AF474();
      sub_1000087FC();
      sub_1000AF474();
      *(v872 + v383[11]) = v871;
      sub_10000E7B0();
      sub_10001B350(v873, v874, v875, v383);
      sub_100088864(v1304);
      sub_100003934();
      v876 = v1376;
      sub_10001B350(v877, v878, v879, v1376);
      sub_100010288();
      sub_100021424();
      sub_1000AF41C();
      sub_1000113EC();
      sub_100051BBC();
      v880 = sub_10000C7F0();
      sub_1000038B4(v880, v881, v876);
      if (v406)
      {
        sub_1000180EC(v869, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_10002864C();
        sub_1000B0F30(v575, v882);
        sub_10001C490();
        sub_1000AF474();
      }

      v883 = v1276;
      v884 = v1274;
      v885 = v1272[4];
      sub_10001C490();
      sub_1000AF474();
      v886 = *(v859 + 2);
      LODWORD(v1383) = v859[24];
      sub_100021424();
      sub_100051BBC();
      sub_100005404(v575);
      v1388 = v886;
      if (v406)
      {
        sub_100011634();
        sub_1000AF41C();
        v887 = sub_100016298();
        v889 = sub_100024D10(v887, v888, v867);

        if (v889 != 1)
        {
          sub_1000180EC(v575, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000184A8();
        sub_1000AF474();
      }

      sub_1000131DC();
      sub_100051BBC();
      v890 = sub_1000162A4();
      sub_1000C8778(v890, v891);
      if (v406)
      {
        sub_10002014C(&v859[OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment]);
        sub_100031630();
        sub_1000AF41C();
        sub_10000394C(v886);
        v892 = v1279;
        v893 = v1275;
        if (!v406)
        {
          sub_1000180EC(v886, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100051E84();
        sub_1000AF474();
        v892 = v1279;
        v893 = v1275;
      }

      sub_100051BBC();
      sub_100003A40(v885);
      if (v406)
      {
        sub_100037B5C();
        sub_1000AF41C();
        sub_100003A40(v885);
        v894 = v1379;
        if (!v406)
        {
          sub_1000180EC(v885, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10000EB04();
        sub_1000AF474();
        v894 = v1379;
      }

      sub_100051BBC();
      v895 = sub_1000162B0();
      v349 = v1385;
      sub_1000038B4(v895, v896, v1385);
      if (v406)
      {
        sub_10002C7E4();
        sub_1000AF41C();
        v897 = sub_1000162B0();
        sub_1000038B4(v897, v898, v349);
        if (!v406)
        {
          sub_1000180EC(v884, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_1000207F4();
        sub_1000AF474();
      }

      sub_100052378(&v1334);
      sub_100051BBC();
      v899 = sub_100016298();
      sub_1000038B4(v899, v900, v894);
      if (v406)
      {
        sub_10000CBF8();
        sub_1000AF41C();
        v901 = sub_100016298();
        sub_1000038B4(v901, v902, v894);
        if (!v406)
        {
          sub_1000180EC(v893, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000247AC();
        sub_1000AF474();
      }

      sub_1000C893C(v1336);
      sub_100051BBC();
      sub_1000C8778(v883, 1);
      if (v406)
      {
        sub_10003C57C();
        sub_1000AF41C();
        sub_10000394C(v883);
        if (!v406)
        {
          sub_1000180EC(v883, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_1000179A4();
        sub_1000AF474();
      }

      sub_100051BBC();
      v903 = sub_1000131C4();
      sub_1000038B4(v903, v904, v383);
      if (v406)
      {
        sub_100022CD0();
        sub_1000AF41C();
        v905 = sub_1000131C4();
        sub_1000038B4(v905, v906, v383);
        if (!v406)
        {
          sub_1000180EC(v892, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100069674();
        sub_100021CEC();
        sub_1000AF474();
      }

      sub_10001C490();
      sub_100041000(v1331);
      sub_10001327C();
      v907 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v907);
      v837 = sub_100020224();
      v840 = v1332;
      v841 = v1333[0];
      v842 = v1333[2];
      v843 = v1333[3];
      v844 = v1334;
LABEL_247:
      sub_100040DE8(v837, v838, v840, v841, v842, v843, v844, v839, v1223, v1224, v1225, v1226, v1227, v1228, v1229, v1230, v1231, v1232, v1233, *(&v1233 + 1), v1234, v1235, v1236, v1237, v1238, v1239, v1240, v1241, v1242, v1243, v1244, v1245, v1246, v1247, v1248);
      sub_1000E31D4();

LABEL_248:

      return v349;
    default:
      sub_1000167A4();
      sub_1000131DC();
      sub_1000AF474();
      v359 = sub_10081B330();
      if (v359)
      {
        v360 = v359;
        sub_10051A7C8();
        sub_1000161C0((v361 + 16), *(v361 + 40));
        sub_1008FBEE8(v360, v1387, a3);
        sub_1000FFC4C();
        sub_1001706F4();
        v363 = a3;
        goto LABEL_338;
      }

      sub_1000AF41C();
      v845 = swift_getEnumCaseMultiPayload();
      v349 = v1387;
      if (v845)
      {
        sub_1000B0F30(a3, type metadata accessor for ListViewAction);
        v846 = v345;
        v847 = type metadata accessor for ListViewAction;
        goto LABEL_201;
      }

      v967 = *(v345 + *(sub_10022C350(&qword_100CBBE20, &unk_100A5C410) + 48));
      v968 = sub_100088864(v1271);
      v969(v968, v345, v1255);
      v970 = sub_100003BCC(&v1283);
      sub_10001B350(v970, v971, v972, v1380);
      v973 = sub_100003BCC(&v1284);
      sub_10001B350(v973, v974, v975, v1386);
      v976 = sub_100003BCC(&v1285);
      sub_10001B350(v976, v977, v978, v1381);
      v979 = sub_100003BCC(&v1286);
      sub_10001B350(v979, v980, v981, v1385);
      v982 = sub_100003BCC(v1287);
      sub_10001B350(v982, v983, v984, v1379);
      v985 = sub_100003BCC(&v1289);
      sub_10001B350(v985, v986, v987, v1384);
      sub_100022CD0();
      v1374 = v988;
      sub_1000325C0();
      sub_1000AF41C();
      v989 = v1272[1];
      LocationModel.identifier.getter();
      type metadata accessor for Location.Identifier();
      sub_10000E7B0();
      sub_10001B350(v990, v991, v992, v993);
      v994 = type metadata accessor for LocationViewerViewState._Storage(0);
      sub_100003B6C(v994);
      v995 = sub_10003DDB8(v989, 0, 0, 3, 0, v967);
      *v1256 = v995;
      v996 = v1382;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v997, v998, v999, v996);
      sub_1000E157C(&v1265);
      sub_100003934();
      sub_10001B350(v1000, v1001, v1002, v1377);
      v1003 = sub_100003BCC(&v1288);
      sub_10001B350(v1003, v1004, v1005, v1378);
      sub_100003934();
      sub_10001B350(v1006, v1007, v1008, v1383);
      v1009 = *v352;
      v1010 = v1240;
      sub_100095588();
      sub_100003A40(v1010);
      if (v406)
      {
        v1017 = v1389;
        sub_100019990();
        sub_1000AF41C();
        sub_100043778();
        v1014 = sub_100024D10(v1011, v1012, v1013);

        v1015 = v1010;
        v1018 = v1235;
        v1019 = v1233;
        if (v1014 != 1)
        {
          sub_1000180EC(v1015, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_100014824();
        sub_1000AF474();

        v1017 = v1389;
        v1018 = v1235;
        v1019 = v1233;
      }

      v1020 = *(v352 + v1017[6]);
      sub_100095588();
      v1021 = sub_1000201BC();
      v1022 = v1377;
      sub_10001627C(v1021, v1023);
      if (v406)
      {
        sub_100095588();
        sub_100005404(v1019);
        if (!v406)
        {
          sub_1000180EC(v1019, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_10004E66C();
        sub_1000325C0();
        sub_1000AF474();
        sub_10000E7B0();
        sub_10001B350(v1024, v1025, v1026, v1022);
      }

      sub_1000325C0();
      sub_100095588();
      v1027 = sub_1000162B0();
      sub_10001627C(v1027, v1028);
      if (v406)
      {
        sub_1000498D0();
        sub_1000AF41C();
        sub_100005404(v352);
        if (!v406)
        {
          sub_1000180EC(v352, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_100006000();
        sub_1000AF474();
      }

      sub_100095588();
      sub_10001627C(v1018, 1);
      if (v406)
      {
        sub_10001EF58();
        sub_100021424();
        sub_1000AF41C();
        sub_100005404(v1018);
        v1029 = v1245;
        if (!v406)
        {
          sub_1000180EC(v1018, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_1000087FC();
        sub_100021424();
        sub_1000AF474();
        v1029 = v1245;
      }

      v1030 = v1268;
      v1031 = *(v1268 + v1017[11]);
      v1032 = v1272[0];
      *v1272[0] = v1009;
      sub_100014824();
      sub_1000AF474();
      *(v1032 + v1017[6]) = v1020;
      *(v1032 + v1017[7]) = 1;
      sub_100051BBC();
      sub_100006000();
      sub_1000AF474();
      sub_1000087FC();
      sub_1000AF474();
      *(v1032 + v1017[11]) = v1031;
      sub_1000180EC(v1257, &qword_100CA65F0, &unk_100A5C3F0);
      sub_1000180EC(v1271[3], &qword_100CA65F8, &dword_100A31420);
      sub_1000180EC(v1029, &qword_100CA6600, &unk_100A5C400);
      sub_1000180EC(v1256, &qword_100CA6608, &unk_100A31430);
      sub_100016A9C();
      sub_1000B0F30(v1030, v1033);
      sub_10000E7B0();
      sub_10001B350(v1034, v1035, v1036, v1017);
      sub_100088864(v1272);
      sub_100003934();
      v1037 = v1376;
      sub_10001B350(v1038, v1039, v1040, v1376);
      sub_100010288();
      sub_10003778C();
      sub_1000AF41C();
      sub_1000113EC();
      sub_100095588();
      v1041 = sub_10000C7F0();
      sub_1000038B4(v1041, v1042, v1037);
      if (v406)
      {
        sub_1000180EC(&unk_100A5C400, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_10002864C();
        sub_1000B0F30(v1031, v1043);
        sub_10001C490();
        sub_1000AF474();
      }

      v1044 = v1234;
      v1045 = *(&v1233 + 1);
      v1046 = v1231;
      v1047 = v1230;
      v1048 = v1239;
      v1049 = v1229;
      sub_10001C490();
      sub_1000AF474();
      v1050 = *(v349 + 2);
      LODWORD(v1383) = v349[24];
      sub_1000453E0(&v1283);
      sub_100095588();
      sub_100003A40(v1049);
      v1388 = v1050;
      if (v406)
      {
        sub_100011634();
        sub_1000AF41C();
        sub_100043778();
        v1054 = sub_100024D10(v1051, v1052, v1053);

        if (v1054 != 1)
        {
          sub_1000180EC(v1049, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_1000184A8();
        sub_1000AF474();
      }

      sub_100052674(&v1284);
      sub_100095588();
      v1055 = sub_1000175DC();
      sub_1000113D0(v1055, v1056);
      if (v406)
      {
        sub_10002014C(&v349[OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment]);
        sub_100031630();
        sub_1000AF41C();
        sub_100003A40(v1047);
        v1057 = v1232;
        if (!v406)
        {
          sub_1000180EC(v1047, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100051E84();
        sub_1000AF474();
        v1057 = v1232;
      }

      sub_100095588();
      sub_1000113D0(v1046, 1);
      if (v406)
      {
        sub_100037B5C();
        sub_1000AF41C();
        sub_100003A40(v1046);
        v1058 = v1385;
        if (!v406)
        {
          sub_1000180EC(v1046, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_10000EB04();
        sub_1000AF474();
        v1058 = v1385;
      }

      sub_1000436AC(&v1286);
      sub_100095588();
      v1059 = sub_1000131C4();
      sub_1000038B4(v1059, v1060, v1058);
      if (v406)
      {
        sub_10002C7E4();
        sub_1000AF41C();
        v1061 = sub_1000131C4();
        sub_1000038B4(v1061, v1062, v1058);
        if (!v406)
        {
          sub_1000180EC(v1057, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_1000207F4();
        sub_1000AF474();
      }

      sub_100052378(v1287);
      sub_100095588();
      v1063 = sub_100016298();
      sub_10001627C(v1063, v1064);
      if (v406)
      {
        sub_10000CBF8();
        sub_1000AF41C();
        sub_100005404(v1045);
        v1065 = v1236;
        if (!v406)
        {
          sub_1000180EC(v1045, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_1000247AC();
        sub_1000AF474();
        v1065 = v1236;
      }

      sub_1000C893C(&v1289);
      sub_100095588();
      sub_10000C814(v1044);
      if (v406)
      {
        sub_10003C57C();
        sub_1000AF41C();
        sub_10000C814(v1044);
        if (!v406)
        {
          sub_1000180EC(v1044, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_1000179A4();
        sub_1000AF474();
      }

      sub_1000436AC(&v1290);
      sub_100095588();
      v1066 = sub_1000131C4();
      sub_1000038B4(v1066, v1067, v1017);
      if (v406)
      {
        sub_100022CD0();
        sub_1000AF41C();
        v1068 = sub_1000131C4();
        sub_1000038B4(v1068, v1069, v1017);
        if (!v406)
        {
          sub_1000180EC(v1065, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100069674();
        sub_100021CEC();
        sub_1000AF474();
      }

      sub_10001C490();
      sub_100041000(v1048);
      sub_10001327C();
      sub_100021D8C();
      v1070 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v1070);
      v1071 = sub_100020224();
      sub_100040DE8(v1071, v1072, v1248, v1249, v1250, v1251, v1252, v1073, v1223, v1224, v1225, v1226, v1227, v1228, v1229, v1230, v1231, v1232, v1233, *(&v1233 + 1), v1234, v1235, v1236, v1237, v1238, v1239, v1240, v1241, v1242, v1243, v1244, v1245, v1246, v1247, v1248);
      sub_1000E31D4();

      sub_1000180EC(v1258, &qword_100CA65E8, &unk_100A31410);
      sub_1000180EC(v1272[0], &qword_100CA6610, &unk_100A32610);
      sub_1000180EC(v1271[4], &qword_100CA6618, &unk_100A31440);
      sub_1000180EC(v1271[2], &qword_100CA6620, &unk_100A32620);
      sub_1000180EC(v1271[1], &qword_100CA6628, &unk_100A31450);
      sub_1000180EC(v1271[0], &qword_100CA6630, &unk_100A32630);
      sub_1000180EC(v1270, &qword_100CA6638, &unk_100A31460);
      sub_1000180EC(v1269, &qword_100CA6640, qword_100A32640);
      (*(v1254 + 8))(v1253, v1255);
      sub_1001706F4();
      v912 = &v1360;
      goto LABEL_337;
  }
}