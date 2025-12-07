uint64_t sub_1000B2330(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CB98;

  return sub_1000B2144(a1);
}

uint64_t sub_1000B23C8(uint64_t a1)
{
  v2 = sub_10002AB28();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000B2414()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006E46E8);
  sub_10000C49C(v0, qword_1006E46E8);
  return static Logger.music(_:)(0xD000000000000017, 0x8000000100581B20);
}

uint64_t sub_1000B24A4@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  type metadata accessor for RecentlyPlayedWidgetTimelineProvider(0);
  __chkstk_darwin();
  v1 = sub_100009DCC(&qword_1006E4718, &qword_100581BD8);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v26 - v3;
  v39 = sub_100009DCC(&qword_1006E4720, &qword_100581BE0);
  v36 = *(v39 - 8);
  __chkstk_darwin();
  v6 = &v26 - v5;
  v41 = sub_100009DCC(&qword_1006E4728, &qword_100581BE8);
  v38 = *(v41 - 8);
  __chkstk_darwin();
  v37 = &v26 - v7;
  v42 = sub_100009DCC(&qword_1006E4730, &unk_100581BF0);
  v40 = *(v42 - 8);
  __chkstk_darwin();
  v44 = &v26 - v8;
  static Logger.music(_:)(0xD000000000000024, 0x80000001005AB0D0);
  type metadata accessor for RecentlyPlayedWidgetView(0);
  sub_1000B2CB8(&qword_1006E4738, type metadata accessor for RecentlyPlayedWidgetView, &unk_1005800DC);
  sub_1000B2CB8(&qword_1006E4740, type metadata accessor for RecentlyPlayedWidgetTimelineProvider, &unk_10057F780);
  sub_100572548();
  if (qword_1006DFA38 != -1)
  {
    swift_once();
  }

  v45 = qword_1006FC2C8;
  v46 = unk_1006FC2D0;
  v9 = sub_1000B2D00();
  v10 = sub_10001B550();
  sub_10056F578();
  (*(v2 + 8))(v4, v1);
  sub_10056F2A8();
  v45 = v1;
  v46 = &type metadata for String;
  v47 = v9;
  v48 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = v37;
  v12 = v39;
  sub_10056F508();

  (*(v36 + 8))(v6, v12);
  v36 = sub_100009DCC(&qword_1006E0138, &qword_10057BE10);
  v13 = sub_1005724A8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = *(v14 + 80);
  v34 = (v16 + 32) & ~v16;
  v35 = v34 + 4 * v15;
  v17 = swift_allocObject();
  v33 = xmmword_10057BD80;
  *(v17 + 16) = xmmword_10057BD80;
  v18 = v17 + ((v16 + 32) & ~v16);
  v32 = enum case for WidgetFamily.systemSmall(_:);
  v19 = *(v14 + 104);
  v19(v18);
  v31 = enum case for WidgetFamily.systemMedium(_:);
  v19(v18 + v15);
  v30 = enum case for WidgetFamily.systemLarge(_:);
  v19(v18 + 2 * v15);
  v29 = 3 * v15;
  v28 = enum case for WidgetFamily.systemExtraLarge(_:);
  v19(v18 + 3 * v15);
  v45 = v12;
  v46 = OpaqueTypeConformance2;
  v39 = swift_getOpaqueTypeConformance2();
  v20 = v41;
  sub_10056F528();

  (*(v38 + 8))(v11, v20);
  sub_100009DCC(&qword_1006E0140, qword_100581C00);
  sub_100572508();
  *(swift_allocObject() + 16) = xmmword_10057B510;
  sub_1005724D8();
  v21 = swift_allocObject();
  *(v21 + 16) = v33;
  v22 = v21 + v34;
  (v19)(v21 + v34, v32, v13);
  (v19)(v22 + v15, v31, v13);
  (v19)(v22 + 2 * v15, v30, v13);
  (v19)(v22 + v29, v28, v13);
  v45 = v20;
  v46 = v39;
  swift_getOpaqueTypeConformance2();
  v23 = v42;
  v24 = v44;
  sub_10056F538();

  return (*(v40 + 8))(v24, v23);
}

uint64_t sub_1000B2CB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000B2D00()
{
  result = qword_1006E4748;
  if (!qword_1006E4748)
  {
    sub_100010324(&qword_1006E4718, &qword_100581BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E4748);
  }

  return result;
}

uint64_t sub_1000B2D64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B2DC8()
{
  sub_100010324(&qword_1006E4730, &unk_100581BF0);
  sub_100010324(&qword_1006E4728, &qword_100581BE8);
  sub_100010324(&qword_1006E4720, &qword_100581BE0);
  sub_100010324(&qword_1006E4718, &qword_100581BD8);
  sub_1000B2D00();
  sub_10001B550();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B2F04()
{
  sub_100009DCC(&qword_1006E0138, &qword_10057BE10);
  v0 = sub_1005724A8();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10057B510;
  result = (*(v1 + 104))(v3 + v2, enum case for WidgetFamily.accessoryCircular(_:), v0);
  qword_1006FC320 = v3;
  return result;
}

uint64_t sub_1000B2FE8()
{
  sub_10056F2A8();
  result = sub_10056FF08();
  qword_1006FC328 = result;
  unk_1006FC330 = v1;
  byte_1006FC338 = v2 & 1;
  qword_1006FC340 = v3;
  return result;
}

uint64_t sub_1000B305C()
{
  sub_10056F2A8();
  result = sub_10056FF08();
  qword_1006FC348 = result;
  unk_1006FC350 = v1;
  byte_1006FC358 = v2 & 1;
  qword_1006FC360 = v3;
  return result;
}

uint64_t sub_1000B30D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, void *a3@<X1>)
{
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v7 = v11 - v6;
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_100573ED8(55);
  v12._object = 0x80000001005AB1C0;
  v12._countAndFlagsBits = 0xD000000000000016;
  sub_100572A98(v12);
  v13._countAndFlagsBits = a1;
  v13._object = a3;
  sub_100572A98(v13);
  v14._countAndFlagsBits = 0xD00000000000001FLL;
  v14._object = 0x80000001005AB200;
  sub_100572A98(v14);
  sub_10056C868();

  v8 = sub_10056C8A8();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v7, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B3260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, void *a3@<X1>)
{
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_100573ED8(50);

  v11 = 0xD000000000000016;
  v12 = 0x80000001005AB1C0;
  v13._countAndFlagsBits = a1;
  v13._object = a3;
  sub_100572A98(v13);
  v14._countAndFlagsBits = 0xD00000000000001ALL;
  v14._object = 0x80000001005AB1E0;
  sub_100572A98(v14);
  sub_10056C868();

  v8 = sub_10056C8A8();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v7, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B33DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, void *a3@<X1>)
{
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_100573ED8(49);

  v11 = 0xD000000000000016;
  v12 = 0x80000001005AB1C0;
  v13._countAndFlagsBits = a1;
  v13._object = a3;
  sub_100572A98(v13);
  v14._countAndFlagsBits = 0xD000000000000019;
  v14._object = 0x80000001005AB260;
  sub_100572A98(v14);
  sub_10056C868();

  v8 = sub_10056C8A8();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v7, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B3558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, void *a3@<X1>)
{
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v7 = v11 - v6;
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_100573ED8(51);
  v12._object = 0x80000001005AB1C0;
  v12._countAndFlagsBits = 0xD000000000000016;
  sub_100572A98(v12);
  v13._countAndFlagsBits = a1;
  v13._object = a3;
  sub_100572A98(v13);
  v14._countAndFlagsBits = 0xD00000000000001BLL;
  v14._object = 0x80000001005AB240;
  sub_100572A98(v14);
  sub_10056C868();

  v8 = sub_10056C8A8();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v7, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B36DC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v5 = &v11 - v4;
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_100573ED8(28);

  v11 = 0xD00000000000001ALL;
  v12 = 0x80000001005AB220;
  if (a1)
  {
    v6._countAndFlagsBits = 1702195828;
  }

  else
  {
    v6._countAndFlagsBits = 0x65736C6166;
  }

  if (a1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v6._object = v7;
  sub_100572A98(v6);

  sub_10056C868();

  v8 = sub_10056C8A8();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v5, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a2, v5, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B388C@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  type metadata accessor for RecommendationsWidgetTimelineProvider(0);
  __chkstk_darwin();
  v1 = sub_100009DCC(&qword_1006E4750, &qword_100581C78);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &OpaqueTypeConformance2 - v3;
  v35 = sub_100009DCC(&qword_1006E4758, &qword_100581C80);
  v33 = *(v35 - 8);
  __chkstk_darwin();
  v6 = &OpaqueTypeConformance2 - v5;
  v37 = sub_100009DCC(&qword_1006E4760, &qword_100581C88);
  v34 = *(v37 - 8);
  __chkstk_darwin();
  v40 = &OpaqueTypeConformance2 - v7;
  v38 = sub_100009DCC(&qword_1006E4768, &unk_100581C90);
  v36 = *(v38 - 8);
  __chkstk_darwin();
  v41 = &OpaqueTypeConformance2 - v8;
  static Logger.music(_:)(0xD000000000000025, 0x80000001005AB2A0);
  type metadata accessor for RecommendationsWidgetView(0);
  sub_1000B405C(&qword_1006E4770, type metadata accessor for RecommendationsWidgetView, &unk_10057C74C);
  sub_1000B405C(&qword_1006E4778, type metadata accessor for RecommendationsWidgetTimelineProvider, &unk_10057C2D8);
  sub_100572588();
  if (qword_1006DF9E0 != -1)
  {
    swift_once();
  }

  v42 = qword_1006FC228;
  v43 = unk_1006FC230;
  v9 = sub_1000B40A4();
  v10 = sub_10001B550();
  sub_10056F578();
  (*(v2 + 8))(v4, v1);
  sub_10056F2A8();
  v42 = v1;
  v43 = &type metadata for String;
  v44 = v9;
  v45 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = v35;
  sub_10056F508();

  (*(v33 + 8))(v6, v11);
  v33 = sub_100009DCC(&qword_1006E0138, &qword_10057BE10);
  v12 = sub_1005724A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v32 = 3 * v14;
  v28 = 2 * v14;
  v16 = swift_allocObject();
  v31 = xmmword_100580F90;
  *(v16 + 16) = xmmword_100580F90;
  v17 = v16 + v15;
  v30 = enum case for WidgetFamily.systemMedium(_:);
  v18 = *(v13 + 104);
  v18(v16 + v15);
  v29 = enum case for WidgetFamily.systemLarge(_:);
  v18(v17 + v14);
  v27 = enum case for WidgetFamily.systemExtraLarge(_:);
  v18(v17 + 2 * v14);
  v42 = v11;
  v43 = OpaqueTypeConformance2;
  v35 = swift_getOpaqueTypeConformance2();
  v19 = v40;
  v20 = v37;
  sub_10056F528();

  (*(v34 + 8))(v19, v20);
  sub_100009DCC(&qword_1006E0140, qword_100581C00);
  sub_100572508();
  *(swift_allocObject() + 16) = xmmword_10057B510;
  sub_1005724D8();
  v21 = swift_allocObject();
  *(v21 + 16) = v31;
  v22 = v21 + v15;
  (v18)(v21 + v15, v30, v12);
  (v18)(v22 + v14, v29, v12);
  (v18)(v22 + v28, v27, v12);
  v42 = v20;
  v43 = v35;
  swift_getOpaqueTypeConformance2();
  v23 = v38;
  v24 = v41;
  sub_10056F538();

  return (*(v36 + 8))(v24, v23);
}

uint64_t sub_1000B405C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000B40A4()
{
  result = qword_1006E4780;
  if (!qword_1006E4780)
  {
    sub_100010324(&qword_1006E4750, &qword_100581C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E4780);
  }

  return result;
}

uint64_t sub_1000B4108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B416C()
{
  sub_100010324(&qword_1006E4768, &unk_100581C90);
  sub_100010324(&qword_1006E4760, &qword_100581C88);
  sub_100010324(&qword_1006E4758, &qword_100581C80);
  sub_100010324(&qword_1006E4750, &qword_100581C78);
  sub_1000B40A4();
  sub_10001B550();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B42BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10056CAA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v15 = sub_100009DCC(&qword_1006E0528, &qword_10057BF80);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[9]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_1000B4490(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10056CAA8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_100009DCC(&qword_1006E0618, &unk_10057C230);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        result = sub_100009DCC(&qword_1006E0528, &qword_10057BF80);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[9]) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[8];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000B4660(uint64_t a1)
{
  sub_10056CAA8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TopChartsWidgetDataProvider.Chart(319);
    if (v2 <= 0x3F)
    {
      sub_100016918(319, &qword_1006E0688, &type metadata for NowPlayingDataProvider.PlayerState);
      if (v3 <= 0x3F)
      {
        sub_100016878(319, &qword_1006E0690, type metadata accessor for WidgetMusicItem);
        if (v4 <= 0x3F)
        {
          sub_100016878(319, &qword_1006E0698, type metadata accessor for NowPlayingDataProvider.ItemProgress);
          if (v5 <= 0x3F)
          {
            sub_100016878(319, &qword_1006E06A0, sub_1000168CC);
            if (v6 <= 0x3F)
            {
              sub_100016918(319, &qword_1006DFE60, &type metadata for String);
              if (v7 <= 0x3F)
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

uint64_t sub_1000B47E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056DF88();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000B4864(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056DF88();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

BOOL sub_1000B48F4()
{
  v1 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  v2 = v0 + *(v1 + 20);
  if (qword_1006DF8A0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  v4 = sub_10000C49C(v3, qword_1006FC020);
  if ((sub_10056CA48() & 1) == 0)
  {
    return *(v0 + *(v1 + 40) + 8) != 0;
  }

  v5 = v3[5];
  v6 = (v2 + v5);
  v7 = *(v2 + v5 + 8);
  v8 = (v4 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return *(v0 + *(v1 + 40) + 8) != 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_100574498() & 1) == 0)
    {
      return *(v0 + *(v1 + 40) + 8) != 0;
    }
  }

  else if (v9)
  {
    return *(v0 + *(v1 + 40) + 8) != 0;
  }

  v11 = v3[6];
  v12 = *(v2 + v11);
  v13 = *(v2 + v11 + 8);
  v14 = (v4 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (v15 || (sub_100574498() & 1) != 0)
  {
    v16 = v3[7];
    v17 = *(v2 + v16);
    v18 = *(v2 + v16 + 8);
    v19 = (v4 + v16);
    v20 = v17 == *v19 && v18 == v19[1];
    if (v20 || (sub_100574498()) && (sub_10006B354(*(v2 + v3[8]), *(v4 + v3[8])))
    {
      return 1;
    }
  }

  return *(v0 + *(v1 + 40) + 8) != 0;
}

uint64_t sub_1000B4A5C()
{
  v0 = sub_10056CAA8();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E0528, &qword_10057BF80);
  __chkstk_darwin();
  v5 = &v18 - v4;
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  sub_10000C910(v11, qword_1006FC368);
  v12 = sub_10000C49C(v11, qword_1006FC368);
  if (qword_1006DF8A0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000C49C(v8, qword_1006FC020);
  sub_1000B74F4(v13, v10, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  v14 = type metadata accessor for WidgetMusicItem(0);
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  v15 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  sub_10056CA98();
  (*(v1 + 32))(v12, v3, v0);
  sub_1000B75BC(v10, v12 + v11[5], type metadata accessor for TopChartsWidgetDataProvider.Chart);
  *(v12 + v11[6]) = 3;
  sub_100019B40(v7, v12 + v11[7], &qword_1006E0618, &unk_10057C230);
  result = sub_100019B40(v5, v12 + v11[8], &qword_1006E0528, &qword_10057BF80);
  *(v12 + v11[9]) = 0;
  v17 = (v12 + v11[10]);
  *v17 = 0;
  v17[1] = 0;
  return result;
}

unint64_t sub_1000B4DAC()
{
  result = qword_1006E48C0;
  if (!qword_1006E48C0)
  {
    type metadata accessor for TopChartsWidgetTimelineProvider.Entry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E48C0);
  }

  return result;
}

uint64_t sub_1000B4E08(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  sub_100009DCC(&qword_1006DFCE0, &qword_10057B698);
  v3[23] = swift_task_alloc();
  v4 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_1000B4F04, 0, 0);
}

uint64_t sub_1000B4F04()
{
  if (sub_100058BC8())
  {
    v1 = sub_10056DF68();
    v2 = sub_100573428();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Can't use widget: privacyAcknowledgementRequired", v3, 2u);
    }

    if (qword_1006DF968 != -1)
    {
      swift_once();
    }

    v5 = qword_1006FC158;
    v4 = unk_1006FC160;
    v6 = qword_1006DF8A0;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = v0[20];
    v8 = sub_10000C49C(v0[24], qword_1006FC020);
    v9 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
    sub_1000B74F4(v8, v7 + v9[5], type metadata accessor for TopChartsWidgetDataProvider.Chart);
    v10 = v9[7];
    v11 = type metadata accessor for WidgetMusicItem(0);
    (*(*(v11 - 8) + 56))(v7 + v10, 1, 1, v11);
    v12 = v9[8];
    v13 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    (*(*(v13 - 8) + 56))(v7 + v12, 1, 1, v13);
    sub_10056CA98();
    *(v7 + v9[6]) = 3;
    *(v7 + v9[9]) = 0;
    v14 = (v7 + v9[10]);
    *v14 = v5;
    v14[1] = v4;

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = swift_task_alloc();
    v0[27] = v17;
    *v17 = v0;
    v17[1] = sub_1000B51E4;

    return sub_100058BD0();
  }
}

uint64_t sub_1000B51E4(char a1)
{
  *(*v1 + 240) = a1;

  return _swift_task_switch(sub_1000B52E4, 0, 0);
}

id sub_1000B52E4(uint64_t a1)
{
  v50 = v1;
  if (*(v1 + 240) != 1)
  {
    v13 = sub_10056DF68();
    v14 = sub_100573448();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Can't use widget. Subscription required.", v15, 2u);
    }

    if (qword_1006DF970 != -1)
    {
      swift_once();
    }

    v16 = &qword_1006FC168;
    goto LABEL_20;
  }

  result = [objc_opt_self() sharedCloudController];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result hasProperNetworkConditionsToShowCloudMedia];

  if (!v4)
  {
    v17 = sub_10056DF68();
    v18 = sub_100573448();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Can't use widget. Device offline.", v19, 2u);
    }

    if (qword_1006DF980 != -1)
    {
      swift_once();
    }

    v16 = &qword_1006FC188;
LABEL_20:
    v21 = *v16;
    v20 = v16[1];
    v22 = qword_1006DF8A0;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = *(v1 + 160);
    v24 = sub_10000C49C(*(v1 + 192), qword_1006FC020);
    v25 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
    sub_1000B74F4(v24, v23 + v25[5], type metadata accessor for TopChartsWidgetDataProvider.Chart);
    v26 = v25[7];
    v27 = type metadata accessor for WidgetMusicItem(0);
    (*(*(v27 - 8) + 56))(v23 + v26, 1, 1, v27);
    v28 = v25[8];
    v29 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    (*(*(v29 - 8) + 56))(v23 + v28, 1, 1, v29);
    sub_10056CA98();
    *(v23 + v25[6]) = 3;
    *(v23 + v25[9]) = 0;
    v30 = (v23 + v25[10]);
    *v30 = v21;
    v30[1] = v20;
    goto LABEL_23;
  }

  sub_10056C078();
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  *(v1 + 224) = v5;
  if (v5)
  {
    v7 = *(v1 + 32);
    v8 = *(v1 + 40);
    v9 = *(v1 + 48);
    v10 = *(v1 + 56);

    sub_1000B7624(v6, v5, v7, v8, v9, v10);
    if (qword_1006DF8A8 != -1)
    {
      swift_once();
    }

    v11 = swift_task_alloc();
    *(v1 + 232) = v11;
    *v11 = v1;
    v11[1] = sub_1000B5974;
    v12 = *(v1 + 184);

    return sub_100007164(v12, v6, v5);
  }

  v32 = sub_10056DF68();
  v33 = sub_100573428();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v49 = v35;
    *v34 = 136315138;
    sub_10056C078();
    v36 = *(v1 + 80);
    v37 = *(v1 + 96);
    *(v1 + 112) = *(v1 + 64);
    *(v1 + 128) = v36;
    *(v1 + 144) = v37;
    sub_100009DCC(&qword_1006E48C8, qword_100581DE0);
    v38 = sub_100572978();
    v40 = sub_10008190C(v38, v39, &v49);

    *(v34 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v32, v33, "Can't fetch chart %s.", v34, 0xCu);
    sub_100010474(v35);
  }

  if (qword_1006DF8A0 != -1)
  {
    swift_once();
  }

  v41 = *(v1 + 160);
  v42 = sub_10000C49C(*(v1 + 192), qword_1006FC020);
  v43 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  sub_1000B74F4(v42, v41 + v43[5], type metadata accessor for TopChartsWidgetDataProvider.Chart);
  v44 = v43[7];
  v45 = type metadata accessor for WidgetMusicItem(0);
  (*(*(v45 - 8) + 56))(v41 + v44, 1, 1, v45);
  v46 = v43[8];
  v47 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  (*(*(v47 - 8) + 56))(v41 + v46, 1, 1, v47);
  sub_10056CA98();
  *(v41 + v43[6]) = 3;
  *(v41 + v43[9]) = 0;
  v48 = (v41 + v43[10]);
  *v48 = 0;
  v48[1] = 0;
LABEL_23:

  v31 = *(v1 + 8);

  return v31();
}

uint64_t sub_1000B5974()
{

  return _swift_task_switch(sub_1000B5A8C, 0, 0);
}

uint64_t sub_1000B5A8C()
{
  v27 = v0;
  v1 = *(v0 + 184);
  if ((*(*(v0 + 200) + 48))(v1, 1, *(v0 + 192)) == 1)
  {
    sub_10001036C(v1, &qword_1006DFCE0, &qword_10057B698);

    v2 = sub_10056DF68();
    v3 = sub_100573428();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v26 = v5;
      *v4 = 136315138;
      sub_10056C078();
      v6 = *(v0 + 80);
      v7 = *(v0 + 96);
      *(v0 + 112) = *(v0 + 64);
      *(v0 + 128) = v6;
      *(v0 + 144) = v7;
      sub_100009DCC(&qword_1006E48C8, qword_100581DE0);
      v8 = sub_100572978();
      v10 = sub_10008190C(v8, v9, &v26);

      *(v4 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v2, v3, "Can't fetch chart %s.", v4, 0xCu);
      sub_100010474(v5);
    }

    if (qword_1006DF8A0 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 160);
    v12 = sub_10000C49C(*(v0 + 192), qword_1006FC020);
    v13 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
    sub_1000B74F4(v12, v11 + v13[5], type metadata accessor for TopChartsWidgetDataProvider.Chart);
    v14 = v13[7];
    v15 = type metadata accessor for WidgetMusicItem(0);
    (*(*(v15 - 8) + 56))(v11 + v14, 1, 1, v15);
    v16 = v13[8];
    v17 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    (*(*(v17 - 8) + 56))(v11 + v16, 1, 1, v17);
    sub_10056CA98();
  }

  else
  {
    v18 = *(v0 + 208);
    v11 = *(v0 + 160);
    sub_1000B75BC(v1, v18, type metadata accessor for TopChartsWidgetDataProvider.Chart);
    v13 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
    sub_1000B74F4(v18, v11 + v13[5], type metadata accessor for TopChartsWidgetDataProvider.Chart);
    v19 = v13[7];
    v20 = type metadata accessor for WidgetMusicItem(0);
    (*(*(v20 - 8) + 56))(v11 + v19, 1, 1, v20);
    v21 = v13[8];
    v22 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    (*(*(v22 - 8) + 56))(v11 + v21, 1, 1, v22);
    sub_10056CA98();
    sub_1000B755C(v18, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  }

  *(v11 + v13[6]) = 3;
  *(v11 + v13[9]) = 0;
  v23 = (v11 + v13[10]);
  *v23 = 0;
  v23[1] = 0;

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1000B5E80(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = sub_100009DCC(&qword_1006E0518, &unk_10057BF70);
  v3[6] = swift_task_alloc();
  sub_100009DCC(&qword_1006E0528, &qword_10057BF80);
  v3[7] = swift_task_alloc();
  v4 = sub_10056CAA8();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = sub_100572578();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v6 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = sub_100009DCC(&qword_1006E0520, &unk_100581DC0);
  v3[27] = swift_task_alloc();
  v7 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  v3[28] = v7;
  v3[29] = *(v7 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = sub_100009DCC(&qword_1006E0510, &qword_10057C360);
  v3[33] = swift_task_alloc();
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  v3[34] = swift_task_alloc();

  return _swift_task_switch(sub_1000B61F4, 0, 0);
}

uint64_t sub_1000B61F4()
{
  if (qword_1006DF8A8 != -1)
  {
    swift_once();
  }

  sub_1000056B4();
  if (qword_1006DF8D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1006FC040;
  *(v0 + 280) = qword_1006FC040;
  v2 = swift_task_alloc();
  *(v0 + 288) = v2;
  *v2 = v0;
  v2[1] = sub_1000B6348;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 320, 0, 0, 0x7453726579616C70, 0xEB00000000657461, sub_1000155C4, v1, &type metadata for NowPlayingDataProvider.PlayerState);
}

uint64_t sub_1000B6348()
{

  return _swift_task_switch(sub_1000B6444, 0, 0);
}

uint64_t sub_1000B6444()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  *(v0 + 321) = *(v0 + 320);
  sub_10000CC8C(*(v1 + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentItem, v3, &qword_1006E0510, &qword_10057C360);
  sub_10006F60C(*(v3 + *(v4 + 44)), *(v3 + *(v4 + 44) + 8), v2);
  sub_10001036C(v3, &qword_1006E0510, &qword_10057C360);
  v5 = swift_task_alloc();
  *(v0 + 296) = v5;
  *v5 = v0;
  v5[1] = sub_1000B6554;
  v6 = *(v0 + 248);

  return sub_100013248(v6);
}

uint64_t sub_1000B6554()
{

  return _swift_task_switch(sub_1000B6650, 0, 0);
}

uint64_t sub_1000B6650()
{
  v2 = v0[26];
  v1 = v0[27];
  sub_10000CC8C(*(v0[35] + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__codableCurrentItemBackground, v1, &qword_1006E0520, &unk_100581DC0);
  v3 = sub_10006FEA0(*(v1 + *(v2 + 44)), *(v1 + *(v2 + 44) + 8));
  sub_10001036C(v1, &qword_1006E0520, &unk_100581DC0);
  if (v3 == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = v3;
    v4 = v3;
  }

  v0[38] = v4;
  sub_100019990(v3);
  v6 = swift_task_alloc();
  v0[39] = v6;
  *v6 = v0;
  v6[1] = sub_1000B6774;
  v7 = v0[25];
  v8 = v0[3];

  return sub_1000B4E08(v7, v8);
}

uint64_t sub_1000B6774()
{

  return _swift_task_switch(sub_1000B6870, 0, 0);
}

uint64_t sub_1000B6870(uint64_t a1)
{
  v2 = *(v1 + 321);
  sub_10056CA98();
  if (!v2)
  {
    v3 = *(v1 + 224);
    v4 = *(v1 + 232);
    v5 = *(v1 + 48);
    v6 = *(v1 + 56);
    v7 = *(v1 + 40);
    sub_10000CC8C(*(*(v1 + 280) + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentItemProgress, v5, &qword_1006E0518, &unk_10057BF70);
    sub_10007051C(*(v5 + *(v7 + 44)), *(v5 + *(v7 + 44) + 8), v6);
    sub_10001036C(v5, &qword_1006E0518, &unk_10057BF70);
    if ((*(v4 + 48))(v6, 1, v3) == 1)
    {
      sub_10001036C(*(v1 + 56), &qword_1006E0528, &qword_10057BF80);
    }

    else
    {
      v8 = *(v1 + 240);
      sub_1000B75BC(*(v1 + 56), v8, type metadata accessor for NowPlayingDataProvider.ItemProgress);
      sub_100012D44();
      sub_1000B755C(v8, type metadata accessor for NowPlayingDataProvider.ItemProgress);
    }

    v9 = *(v1 + 272);
    v77 = *(v1 + 248);
    v80 = *(v1 + 304);
    v10 = *(v1 + 232);
    v87 = *(v1 + 224);
    v11 = *(v1 + 200);
    v82 = *(v1 + 184);
    v12 = *(v1 + 152);
    v13 = *(v1 + 96);
    v15 = *(v1 + 64);
    v14 = *(v1 + 72);
    sub_10056C9D8();
    sub_100572558();
    v85 = *(v14 + 8);
    v85(v13, v15);
    *(v11 + v12[6]) = 0;
    sub_1000199A0(v9, v11 + v12[7]);
    v16 = v12[8];
    sub_10001036C(v11 + v16, &qword_1006E0528, &qword_10057BF80);
    sub_1000B74F4(v77, v11 + v16, type metadata accessor for NowPlayingDataProvider.ItemProgress);
    (*(v10 + 56))(v11 + v16, 0, 1, v87);
    v17 = v12[9];
    v18 = *(v11 + v17);
    v88 = v80;

    *(v11 + v17) = v80;
    sub_1000B74F4(v11, v82, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
    v19 = sub_1000411E8(0, 1, 1, _swiftEmptyArrayStorage);
    v21 = v19[2];
    v20 = v19[3];
    v22 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      v19 = sub_1000411E8((v20 > 1), v21 + 1, 1, v19);
    }

    v23 = *(v1 + 184);
    goto LABEL_29;
  }

  if (v2 != 1)
  {
    if ((sub_100003A28() & 1) == 0)
    {
      if (qword_1006DFA20 != -1)
      {
        swift_once();
      }

      if (qword_1006FC270)
      {
        sub_1000A67FC();
      }
    }

    v51 = *(v1 + 232);
    v84 = *(v1 + 224);
    v52 = *(v1 + 200);
    v89 = *(v1 + 192);
    v53 = *(v1 + 152);
    v54 = *(v1 + 104);
    v56 = *(v1 + 64);
    v55 = *(v1 + 72);
    sub_10056C9D8();
    sub_100572558();
    v85 = *(v55 + 8);
    v85(v54, v56);
    *(v52 + v53[6]) = 2;
    v57 = v53[7];
    sub_10001036C(v52 + v57, &qword_1006E0618, &unk_10057C230);
    v58 = type metadata accessor for WidgetMusicItem(0);
    (*(*(v58 - 8) + 56))(v52 + v57, 1, 1, v58);
    v59 = v53[8];
    sub_10001036C(v52 + v59, &qword_1006E0528, &qword_10057BF80);
    (*(v51 + 56))(v52 + v59, 1, 1, v84);
    v60 = v53[9];

    *(v52 + v60) = 0;
    sub_1000B74F4(v52, v89, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
    v19 = sub_1000411E8(0, 1, 1, _swiftEmptyArrayStorage);
    v21 = v19[2];
    v61 = v19[3];
    v22 = v21 + 1;
    if (v21 >= v61 >> 1)
    {
      v19 = sub_1000411E8((v61 > 1), v21 + 1, 1, v19);
    }

    v88 = *(v1 + 304);
    v23 = *(v1 + 192);
LABEL_29:
    v62 = *(v1 + 160);
    v19[2] = v22;
    v50 = v19 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v21;
    goto LABEL_30;
  }

  if ((sub_100003A28() & 1) == 0)
  {
    if (qword_1006DFA20 != -1)
    {
      swift_once();
    }

    if (qword_1006FC270)
    {
      sub_1000A67FC();
    }
  }

  v24 = *(v1 + 272);
  v75 = *(v1 + 304);
  v78 = *(v1 + 248);
  v25 = *(v1 + 232);
  v83 = *(v1 + 224);
  v26 = *(v1 + 200);
  v86 = *(v1 + 176);
  v27 = *(v1 + 152);
  v28 = *(v1 + 88);
  v30 = *(v1 + 64);
  v29 = *(v1 + 72);
  sub_10056C9D8();
  sub_100572558();
  v85 = *(v29 + 8);
  v85(v28, v30);
  *(v26 + v27[6]) = 1;
  v81 = v27[7];
  sub_1000199A0(v24, v26 + v81);
  v31 = v27[8];
  sub_10001036C(v26 + v31, &qword_1006E0528, &qword_10057BF80);
  sub_1000B74F4(v78, v26 + v31, type metadata accessor for NowPlayingDataProvider.ItemProgress);
  v79 = *(v25 + 56);
  v79(v26 + v31, 0, 1, v83);
  v32 = v27[9];
  v33 = *(v26 + v32);
  v88 = v75;

  *(v26 + v32) = v75;
  sub_1000B74F4(v26, v86, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  v34 = sub_1000411E8(0, 1, 1, _swiftEmptyArrayStorage);
  v36 = v34[2];
  v35 = v34[3];
  if (v36 >= v35 >> 1)
  {
    v34 = sub_1000411E8((v35 > 1), v36 + 1, 1, v34);
  }

  v37 = *(v1 + 200);
  v38 = *(v1 + 176);
  v73 = *(v1 + 224);
  v74 = *(v1 + 168);
  v39 = *(v1 + 160);
  v40 = *(v1 + 72);
  v41 = *(v1 + 80);
  v42 = *(v1 + 64);
  v34[2] = v36 + 1;
  v76 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v43 = *(v39 + 72);
  v44 = v34 + v76 + v43 * v36;
  v45 = v34;
  sub_1000B75BC(v38, v44, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  sub_10056C9D8();
  (*(v40 + 40))(v37, v41, v42);
  sub_10001036C(v26 + v81, &qword_1006E0618, &unk_10057C230);
  v46 = type metadata accessor for WidgetMusicItem(0);
  (*(*(v46 - 8) + 56))(v26 + v81, 1, 1, v46);
  sub_10001036C(v26 + v31, &qword_1006E0528, &qword_10057BF80);
  v79(v26 + v31, 1, 1, v73);

  *(v26 + v32) = 0;
  sub_1000B74F4(v37, v74, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  v47 = v45;
  v48 = v45[2];
  v49 = v47[3];
  if (v48 >= v49 >> 1)
  {
    v47 = sub_1000411E8((v49 > 1), v48 + 1, 1, v47);
  }

  v23 = *(v1 + 168);
  v47[2] = v48 + 1;
  v50 = v47 + v76 + v48 * v43;
LABEL_30:
  sub_1000B75BC(v23, v50, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  v63 = *(v1 + 272);
  v71 = *(v1 + 248);
  v72 = *(v1 + 200);
  v64 = *(v1 + 144);
  v65 = *(v1 + 128);
  v66 = *(v1 + 112);
  v67 = *(v1 + 120);
  v68 = *(v1 + 64);
  (*(v65 + 16))(*(v1 + 136), v64, v67);
  sub_1000B4DAC();
  sub_100572638();

  v85(v66, v68);
  (*(v65 + 8))(v64, v67);
  sub_1000B755C(v71, type metadata accessor for NowPlayingDataProvider.ItemProgress);
  sub_10001036C(v63, &qword_1006E0618, &unk_10057C230);
  sub_1000B755C(v72, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);

  v69 = *(v1 + 8);

  return v69();
}

uint64_t sub_1000B7324@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006DFA90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  v3 = sub_10000C49C(v2, qword_1006FC368);
  return sub_1000B74F4(v3, a1, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
}

uint64_t sub_1000B73A4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000116F0;

  return sub_1000B4E08(a1, v4);
}

uint64_t sub_1000B744C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000116F0;

  return sub_1000B5E80(a1, v4);
}

uint64_t sub_1000B74F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000B755C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000B75BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000B7624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_1000B7674()
{
  v0 = sub_100570D58();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PinsWidgetDataProvider();
  inited = swift_initStaticObject();
  (*(v1 + 104))(v3, enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v0);
  result = sub_100570D68();
  qword_1006FC380 = inited;
  return result;
}

uint64_t sub_1000B775C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_10056D888();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000B781C, 0, 0);
}

uint64_t sub_1000B781C()
{
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_10001CBA0;
  v2 = v0[6];
  v3 = v0[2];

  return sub_1000B78CC(v3, v2);
}

uint64_t sub_1000B78CC(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_100009DCC(&unk_1006DFD20, &unk_10057B720);
  v2[8] = swift_task_alloc();
  sub_100009DCC(&qword_1006E4988, &qword_100581E58);
  v2[9] = swift_task_alloc();
  v3 = sub_10056C8A8();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_10056D858();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = sub_100571A68();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = sub_1005722D8();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v7 = sub_1005713A8();
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();
  v8 = sub_100571CF8();
  v2[25] = v8;
  v2[26] = *(v8 - 8);
  v2[27] = swift_task_alloc();
  v9 = sub_100571B78();
  v2[28] = v9;
  v2[29] = *(v9 - 8);
  v2[30] = swift_task_alloc();
  v10 = sub_10056D818();
  v2[31] = v10;
  v2[32] = *(v10 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_1000B7C8C, 0, 0);
}

uint64_t sub_1000B7C8C()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[32];
  sub_10056D828();
  v4 = *(v3 + 88);
  v0[35] = v4;
  v0[36] = (v3 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v5 = v4(v1, v2);
  if (v5 == enum case for MusicPin.Item.album(_:))
  {
    v6 = v0[34];
    v8 = v0[29];
    v7 = v0[30];
    v9 = v0[28];
    (*(v0[32] + 96))(v6, v0[31]);
    (*(v8 + 32))(v7, v6, v9);
    v10 = sub_100571B28();
    v12 = v11;
    v13 = sub_100571AC8();
LABEL_9:
    v21 = v13;
    v22 = v14;
    (*(v8 + 8))(v7, v9);
    goto LABEL_10;
  }

  if (v5 == enum case for MusicPin.Item.artist(_:))
  {
    v15 = v0[34];
    v8 = v0[26];
    v7 = v0[27];
    v9 = v0[25];
    (*(v0[32] + 96))(v15, v0[31]);
    (*(v8 + 32))(v7, v15, v9);
    v10 = sub_100571CC8();
    v12 = v16;
    v13 = sub_100571CB8();
    goto LABEL_9;
  }

  if (v5 == enum case for MusicPin.Item.musicVideo(_:))
  {
    v17 = v0[34];
    v8 = v0[23];
    v7 = v0[24];
    v9 = v0[22];
    (*(v0[32] + 96))(v17, v0[31]);
    (*(v8 + 32))(v7, v17, v9);
    v10 = sub_100571368();
    v12 = v18;
    v13 = sub_100571348();
    goto LABEL_9;
  }

  if (v5 == enum case for MusicPin.Item.playlist(_:))
  {
    v19 = v0[34];
    v8 = v0[20];
    v7 = v0[21];
    v9 = v0[19];
    (*(v0[32] + 96))(v19, v0[31]);
    (*(v8 + 32))(v7, v19, v9);
    v10 = sub_1005721A8();
    v12 = v20;
    v13 = sub_100572158();
    goto LABEL_9;
  }

  v25 = v0[34];
  v26 = v0[31];
  v27 = v0[32];
  if (v5 == enum case for MusicPin.Item.song(_:))
  {
    v29 = v0[17];
    v28 = v0[18];
    v30 = v0[16];
    (*(v27 + 96))(v0[34], v0[31]);
    (*(v29 + 32))(v28, v25, v30);
    v10 = sub_100571A08();
    v12 = v31;
    v21 = sub_100571998();
    v22 = v32;
    (*(v29 + 8))(v28, v30);
  }

  else
  {
    v10 = sub_10056D808();
    v12 = v33;
    (*(v27 + 8))(v25, v26);
    v21 = 0;
    v22 = 0;
  }

LABEL_10:
  v0[2] = v10;
  v0[3] = v12;
  v0[37] = v21;
  v0[38] = v22;
  v23 = swift_task_alloc();
  v0[39] = v23;
  *v23 = v0;
  v23[1] = sub_1000B8020;

  return sub_1000B89C8();
}

uint64_t sub_1000B8020(char a1)
{
  *(*v1 + 376) = a1;

  return _swift_task_switch(sub_1000B8120, 0, 0);
}

uint64_t sub_1000B8120()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  *(v0 + 32) = sub_10056D838();
  *(v0 + 40) = v4;
  sub_10056D868();
  sub_1000BA5F4(v1, v2);
  sub_1000BB7E8(v3);
  v5 = sub_10056D5A8();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v3, 1, v5);
  v8 = *(v0 + 72);
  if (v7 == 1)
  {
    sub_10001036C(*(v0 + 72), &qword_1006E4988, &qword_100581E58);
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    v9 = sub_10056D578();
    v10 = v11;
    (*(v6 + 8))(v8, v5);
  }

  *(v0 + 320) = v9;
  *(v0 + 328) = v10;
  v12 = *(v0 + 64);
  *(v0 + 336) = sub_1000BC0EC();
  sub_10056D878();
  v13 = sub_100571E58();
  *(v0 + 344) = v13;
  v14 = *(v13 - 8);
  *(v0 + 352) = v14;
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10001036C(*(v0 + 64), &unk_1006DFD20, &unk_10057B720);
    v45 = *(v0 + 336);
    v36 = *(v0 + 40);
    v37 = *(v0 + 32);
    v43 = *(v0 + 376);
    v38 = *(v0 + 24);
    v39 = *(v0 + 16);
    v41 = *(v0 + 304);
    v42 = *(v0 + 320);
    v40 = *(v0 + 296);
    v15 = *(v0 + 280);
    v16 = *(v0 + 264);
    v44 = *(v0 + 328);
    v18 = *(v0 + 248);
    v17 = *(v0 + 256);
    v19 = *(v0 + 112);
    v32 = *(v0 + 104);
    v33 = *(v0 + 120);
    v20 = *(v0 + 88);
    v34 = *(v0 + 80);
    v35 = *(v0 + 96);
    v21 = *(v0 + 48);
    v22 = *(v0 + 56);
    sub_10056D828();
    v23 = v15(v16, v18) == enum case for MusicPin.Item.artist(_:);
    (*(v17 + 8))(v16, v18);
    v24 = type metadata accessor for WidgetMusicPin(0);
    sub_1000BC780(&v21[v24[14]]);
    v25 = sub_10056D888();
    (*(*(v25 - 8) + 8))(v22, v25);
    *v21 = v37;
    *(v21 + 1) = v36;
    (*(v19 + 32))(&v21[v24[5]], v33, v32);
    (*(v20 + 32))(&v21[v24[6]], v35, v34);
    v26 = &v21[v24[7]];
    *v26 = v39;
    *(v26 + 1) = v38;
    v27 = &v21[v24[8]];
    *v27 = v40;
    *(v27 + 1) = v41;
    v28 = &v21[v24[9]];
    *v28 = v42;
    *(v28 + 1) = v44;
    *&v21[v24[10]] = v45;
    v21[v24[11]] = v43;
    *&v21[v24[12]] = 0;
    v21[v24[13]] = v23;
    *&v21[v24[15]] = 0x3FF0000000000000;

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v31 = swift_task_alloc();
    *(v0 + 360) = v31;
    *v31 = v0;
    v31[1] = sub_1000B859C;

    return sub_10003E58C(100.0);
  }
}

uint64_t sub_1000B859C(uint64_t a1)
{
  v2 = *(*v1 + 352);
  v3 = *(*v1 + 344);
  v4 = *(*v1 + 64);
  *(*v1 + 368) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_1000B86FC, 0, 0);
}

uint64_t sub_1000B86FC(uint64_t a1)
{
  v32 = *(v1 + 368);
  v31 = *(v1 + 336);
  v22 = *(v1 + 40);
  v23 = *(v1 + 32);
  v29 = *(v1 + 376);
  v24 = *(v1 + 24);
  v25 = *(v1 + 16);
  v27 = *(v1 + 304);
  v28 = *(v1 + 320);
  v26 = *(v1 + 296);
  v2 = *(v1 + 280);
  v3 = *(v1 + 264);
  v30 = *(v1 + 328);
  v5 = *(v1 + 248);
  v4 = *(v1 + 256);
  v6 = *(v1 + 112);
  v18 = *(v1 + 104);
  v19 = *(v1 + 120);
  v7 = *(v1 + 88);
  v20 = *(v1 + 80);
  v21 = *(v1 + 96);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  sub_10056D828();
  v10 = v2(v3, v5) == enum case for MusicPin.Item.artist(_:);
  (*(v4 + 8))(v3, v5);
  v11 = type metadata accessor for WidgetMusicPin(0);
  sub_1000BC780(&v8[v11[14]]);
  v12 = sub_10056D888();
  (*(*(v12 - 8) + 8))(v9, v12);
  *v8 = v23;
  *(v8 + 1) = v22;
  (*(v6 + 32))(&v8[v11[5]], v19, v18);
  (*(v7 + 32))(&v8[v11[6]], v21, v20);
  v13 = &v8[v11[7]];
  *v13 = v25;
  *(v13 + 1) = v24;
  v14 = &v8[v11[8]];
  *v14 = v26;
  *(v14 + 1) = v27;
  v15 = &v8[v11[9]];
  *v15 = v28;
  *(v15 + 1) = v30;
  *&v8[v11[10]] = v31;
  v8[v11[11]] = v29;
  *&v8[v11[12]] = v32;
  v8[v11[13]] = v10;
  *&v8[v11[15]] = 0x3FF0000000000000;

  v16 = *(v1 + 8);

  return v16();
}

uint64_t sub_1000B89C8()
{
  v1[2] = v0;
  v2 = sub_100571A68();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_100571908();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = sub_100009DCC(&qword_1006E49A0, &unk_100581E70);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD40, &unk_10057B740);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v4 = sub_10056D488();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = sub_1005713A8();
  v1[23] = v5;
  v1[24] = *(v5 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = sub_100009DCC(&qword_1006E30F8, &qword_10057FBC8);
  v1[27] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3100, &qword_10057FBD0);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v6 = sub_100571418();
  v1[31] = v6;
  v1[32] = *(v6 - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v7 = sub_100571CF8();
  v1[35] = v7;
  v1[36] = *(v7 - 8);
  v1[37] = swift_task_alloc();
  v8 = sub_10056D818();
  v1[38] = v8;
  v1[39] = *(v8 - 8);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v9 = sub_10056D858();
  v1[42] = v9;
  v1[43] = *(v9 - 8);
  v1[44] = swift_task_alloc();
  sub_100572F08();
  v1[45] = sub_100572EF8();
  v11 = sub_100572E78();
  v1[46] = v11;
  v1[47] = v10;

  return _swift_task_switch(sub_1000B8EB8, v11, v10);
}

uint64_t sub_1000B8EB8()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  sub_10056D868();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for MusicPin.Action.navigate(_:))
  {
    v6 = v0[39];
    v5 = v0[40];
    v7 = v0[38];

    sub_10056D828();
    v8 = (*(v6 + 88))(v5, v7);
    if (v8 == enum case for MusicPin.Item.album(_:) || v8 == enum case for MusicPin.Item.artist(_:))
    {
      goto LABEL_7;
    }

    if (v8 == enum case for MusicPin.Item.musicVideo(_:))
    {
      v27 = v0[40];
      v29 = v0[24];
      v28 = v0[25];
      v31 = v0[22];
      v30 = v0[23];
      v32 = v0[18];
      v33 = v0[19];
      (*(v0[39] + 96))(v27, v0[38]);
      (*(v29 + 32))(v28, v27, v30);
      sub_10056D478();
      LOBYTE(v27) = sub_10056D468();
      v34 = *(v33 + 8);
      v34(v31, v32);
      if (v27)
      {
LABEL_18:
        v36 = v0[24];
        v35 = v0[25];
        v37 = v0[23];
        v38 = v0[21];
        v39 = v0[18];
        sub_10056D478();
        v115 = sub_10056D458();
        v34(v38, v39);
        (*(v36 + 8))(v35, v37);
        goto LABEL_20;
      }

      v116 = v34;
      v61 = v0[16];
      v60 = v0[17];
      v62 = v0[11];
      v63 = v0[9];
      v64 = v0[6];
      v65 = v0[7];
      sub_100571358();
      (*(v65 + 104))(v61, enum case for ContentRating.clean(_:), v64);
      (*(v65 + 56))(v61, 0, 1, v64);
      v66 = *(v63 + 48);
      sub_10000CC8C(v60, v62, &qword_1006DFD40, &unk_10057B740);
      sub_10000CC8C(v61, v62 + v66, &qword_1006DFD40, &unk_10057B740);
      v67 = *(v65 + 48);
      if (v67(v62, 1, v64) == 1)
      {
        v68 = v0[17];
        v69 = v0[6];
        sub_10001036C(v0[16], &qword_1006DFD40, &unk_10057B740);
        sub_10001036C(v68, &qword_1006DFD40, &unk_10057B740);
        if (v67(v62 + v66, 1, v69) == 1)
        {
          sub_10001036C(v0[11], &qword_1006DFD40, &unk_10057B740);
          v34 = v116;
          goto LABEL_18;
        }
      }

      else
      {
        v70 = v0[6];
        sub_10000CC8C(v0[11], v0[15], &qword_1006DFD40, &unk_10057B740);
        v71 = v67(v62 + v66, 1, v70);
        v72 = v0[16];
        v73 = v0[17];
        v74 = v0[15];
        if (v71 != 1)
        {
          v113 = v0[11];
          v111 = v0[17];
          v89 = v0[7];
          v90 = v0[8];
          v91 = v0[6];
          (*(v89 + 32))(v90, v62 + v66, v91);
          sub_1000BE1A8(&qword_1006E49A8, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
          v92 = sub_1005727E8();
          v93 = *(v89 + 8);
          v93(v90, v91);
          sub_10001036C(v72, &qword_1006DFD40, &unk_10057B740);
          sub_10001036C(v111, &qword_1006DFD40, &unk_10057B740);
          v93(v74, v91);
          sub_10001036C(v113, &qword_1006DFD40, &unk_10057B740);
          v34 = v116;
          if (v92)
          {
            goto LABEL_18;
          }

LABEL_37:
          (*(v0[24] + 8))(v0[25], v0[23]);
          v115 = 0;
          goto LABEL_20;
        }

        v75 = v0[6];
        v76 = v0[7];
        sub_10001036C(v0[16], &qword_1006DFD40, &unk_10057B740);
        sub_10001036C(v73, &qword_1006DFD40, &unk_10057B740);
        (*(v76 + 8))(v74, v75);
      }

      sub_10001036C(v0[11], &qword_1006E49A0, &unk_100581E70);
      goto LABEL_37;
    }

    if (v8 == enum case for MusicPin.Item.playlist(_:))
    {
LABEL_7:
      v11 = v0[39];
      v10 = v0[40];
      v12 = v0[38];
    }

    else
    {
      v50 = v0[39];
      v51 = v0[40];
      v52 = v0[38];
      if (v8 != enum case for MusicPin.Item.song(_:))
      {
        (*(v50 + 8))(v0[40], v52);
        goto LABEL_19;
      }

      v54 = v0[19];
      v53 = v0[20];
      v55 = v0[18];
      v57 = v0[4];
      v56 = v0[5];
      v58 = v0[3];
      (*(v50 + 96))(v0[40], v52);
      (*(v57 + 32))(v56, v51, v58);
      sub_10056D478();
      v59 = sub_10056D468();
      (*(v54 + 8))(v53, v55);
      if ((v59 & 1) == 0)
      {
        v78 = v0[13];
        v77 = v0[14];
        v80 = v0[9];
        v79 = v0[10];
        v81 = v0[6];
        v82 = v0[7];
        sub_1005719D8();
        (*(v82 + 104))(v78, enum case for ContentRating.clean(_:), v81);
        (*(v82 + 56))(v78, 0, 1, v81);
        v83 = *(v80 + 48);
        sub_10000CC8C(v77, v79, &qword_1006DFD40, &unk_10057B740);
        sub_10000CC8C(v78, v79 + v83, &qword_1006DFD40, &unk_10057B740);
        v84 = *(v82 + 48);
        if (v84(v79, 1, v81) == 1)
        {
          v85 = v0[14];
          v86 = v0[5];
          v117 = v0[6];
          v87 = v0[3];
          v88 = v0[4];
          sub_10001036C(v0[13], &qword_1006DFD40, &unk_10057B740);
          sub_10001036C(v85, &qword_1006DFD40, &unk_10057B740);
          (*(v88 + 8))(v86, v87);
          if (v84(v79 + v83, 1, v117) == 1)
          {
            sub_10001036C(v0[10], &qword_1006DFD40, &unk_10057B740);
            goto LABEL_19;
          }
        }

        else
        {
          v94 = v0[6];
          v95 = v0[7];
          sub_10000CC8C(v0[10], v0[12], &qword_1006DFD40, &unk_10057B740);
          v96 = v84(v79 + v83, 1, v94);
          v97 = (v95 + 8);
          v98 = v0[13];
          v114 = v0[14];
          v99 = v0[12];
          if (v96 != 1)
          {
            v104 = v0[8];
            v105 = v0[6];
            v109 = v0[5];
            v112 = v0[10];
            v106 = v0[3];
            v107 = v0[4];
            (*(v0[7] + 32))(v104, v79 + v83, v105);
            sub_1000BE1A8(&qword_1006E49A8, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
            v115 = sub_1005727E8();
            v108 = *v97;
            (*v97)(v104, v105);
            sub_10001036C(v98, &qword_1006DFD40, &unk_10057B740);
            sub_10001036C(v114, &qword_1006DFD40, &unk_10057B740);
            (*(v107 + 8))(v109, v106);
            v108(v99, v105);
            sub_10001036C(v112, &qword_1006DFD40, &unk_10057B740);
            goto LABEL_20;
          }

          v100 = v0[5];
          v101 = v0[6];
          v102 = v0[3];
          v103 = v0[4];
          sub_10001036C(v98, &qword_1006DFD40, &unk_10057B740);
          sub_10001036C(v114, &qword_1006DFD40, &unk_10057B740);
          (*(v103 + 8))(v100, v102);
          (*v97)(v99, v101);
        }

        sub_10001036C(v0[10], &qword_1006E49A0, &unk_100581E70);
        v115 = 0;
        goto LABEL_20;
      }

      v11 = v0[4];
      v10 = v0[5];
      v12 = v0[3];
    }

    (*(v11 + 8))(v10, v12);
LABEL_19:
    v115 = 1;
    goto LABEL_20;
  }

  if (v4 != enum case for MusicPin.Action.play(_:) && v4 != enum case for MusicPin.Action.shuffle(_:))
  {
    v40 = v0[44];
    v41 = v0[42];
    v42 = v0[43];

    (*(v42 + 8))(v40, v41);
    goto LABEL_19;
  }

  v14 = v0[41];
  v15 = v0[38];
  v16 = v0[39];
  sub_10056D828();
  if ((*(v16 + 88))(v14, v15) == enum case for MusicPin.Item.artist(_:))
  {
    v17 = v0[41];
    v18 = v0[38];
    v19 = v0[39];
    v21 = v0[36];
    v20 = v0[37];
    v22 = v0[35];
    v110 = v0[34];
    v23 = v0[32];
    v24 = v0[33];
    v25 = v0[31];

    (*(v19 + 96))(v17, v18);
    (*(v21 + 32))(v20, v17, v22);
    NetworkMonitor.shared.unsafeMutableAddressor();

    LOBYTE(v18) = NetworkMonitor.isOnline.getter();

    ExplicitRestrictionsController.shared.unsafeMutableAddressor();

    LOBYTE(v19) = ExplicitRestrictionsController.explicitContentIsAllowed.getter();

    Artist.pinPlayabilityStatus(isOnline:explicitContentIsAllowed:)(v18 & 1, v19 & 1, v110);
    (*(v23 + 104))(v24, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v25);
    v115 = sub_100571408();
    v26 = *(v23 + 8);
    v26(v24, v25);
    v26(v110, v25);
    (*(v21 + 8))(v20, v22);
LABEL_20:

    v43 = v0[1];

    return v43(v115 & 1);
  }

  sub_10056D948();
  v0[48] = sub_10056D928();
  v45 = swift_task_alloc();
  v0[49] = v45;
  v46 = sub_10056D888();
  v47 = sub_1000BE1A8(&qword_1006E49B0, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  *v45 = v0;
  v45[1] = sub_1000B9B80;
  v48 = v0[30];
  v49 = v0[2];

  return InternalMusicPlayer.playabilityStatus<A>(for:)(v48, v49, v46, v47);
}

uint64_t sub_1000B9B80()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 368);
    v4 = *(v2 + 376);
    v5 = sub_1000BA15C;
  }

  else
  {

    v3 = *(v2 + 368);
    v4 = *(v2 + 376);
    v5 = sub_1000B9CC4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000B9CC4()
{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[26];
  v5 = v0[27];

  v7 = *(v2 + 56);
  v7(v3, 0, 1, v1);
  (*(v2 + 104))(v4, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v1);
  v7(v4, 0, 1, v1);
  v8 = *(v6 + 48);
  sub_10000CC8C(v3, v5, &qword_1006E3100, &qword_10057FBD0);
  sub_10000CC8C(v4, v5 + v8, &qword_1006E3100, &qword_10057FBD0);
  v9 = *(v2 + 48);
  v10 = v9(v5, 1, v1);
  v11 = v0[31];
  if (v10 == 1)
  {
    v12 = v0[30];
    sub_10001036C(v0[29], &qword_1006E3100, &qword_10057FBD0);
    sub_10001036C(v12, &qword_1006E3100, &qword_10057FBD0);
    if (v9(v5 + v8, 1, v11) == 1)
    {
      sub_10001036C(v0[27], &qword_1006E3100, &qword_10057FBD0);
      v27 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_10000CC8C(v0[27], v0[28], &qword_1006E3100, &qword_10057FBD0);
  if (v9(v5 + v8, 1, v11) == 1)
  {
    v13 = v0[31];
    v14 = v0[32];
    v15 = v0[30];
    v16 = v0[28];
    sub_10001036C(v0[29], &qword_1006E3100, &qword_10057FBD0);
    sub_10001036C(v15, &qword_1006E3100, &qword_10057FBD0);
    (*(v14 + 8))(v16, v13);
LABEL_6:
    sub_10001036C(v0[27], &qword_1006E30F8, &qword_10057FBC8);
    v27 = 0;
    goto LABEL_8;
  }

  v17 = v0[34];
  v18 = v0[31];
  v19 = v0[32];
  v21 = v0[29];
  v20 = v0[30];
  v22 = v0[27];
  v23 = v0[28];
  (*(v19 + 32))(v17, v5 + v8, v18);
  sub_1000BE1A8(&qword_1006E3108, &type metadata accessor for MusicPlayer.PlayabilityStatus, &protocol conformance descriptor for MusicPlayer.PlayabilityStatus);
  v27 = sub_1005727E8();
  v24 = *(v19 + 8);
  v24(v17, v18);
  sub_10001036C(v21, &qword_1006E3100, &qword_10057FBD0);
  sub_10001036C(v20, &qword_1006E3100, &qword_10057FBD0);
  v24(v23, v18);
  sub_10001036C(v22, &qword_1006E3100, &qword_10057FBD0);
LABEL_8:
  (*(v0[39] + 8))(v0[41], v0[38]);

  v25 = v0[1];

  return v25(v27 & 1);
}

uint64_t sub_1000BA15C()
{
  v1 = v0[31];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[26];
  v5 = v0[27];

  v7 = *(v2 + 56);
  v7(v3, 1, 1, v1);
  (*(v2 + 104))(v4, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v1);
  v7(v4, 0, 1, v1);
  v8 = *(v6 + 48);
  sub_10000CC8C(v3, v5, &qword_1006E3100, &qword_10057FBD0);
  sub_10000CC8C(v4, v5 + v8, &qword_1006E3100, &qword_10057FBD0);
  v9 = *(v2 + 48);
  v10 = v9(v5, 1, v1);
  v11 = v0[31];
  if (v10 == 1)
  {
    v12 = v0[30];
    sub_10001036C(v0[29], &qword_1006E3100, &qword_10057FBD0);
    sub_10001036C(v12, &qword_1006E3100, &qword_10057FBD0);
    if (v9(v5 + v8, 1, v11) == 1)
    {
      sub_10001036C(v0[27], &qword_1006E3100, &qword_10057FBD0);
      v27 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_10000CC8C(v0[27], v0[28], &qword_1006E3100, &qword_10057FBD0);
  if (v9(v5 + v8, 1, v11) == 1)
  {
    v13 = v0[31];
    v14 = v0[32];
    v15 = v0[30];
    v16 = v0[28];
    sub_10001036C(v0[29], &qword_1006E3100, &qword_10057FBD0);
    sub_10001036C(v15, &qword_1006E3100, &qword_10057FBD0);
    (*(v14 + 8))(v16, v13);
LABEL_6:
    sub_10001036C(v0[27], &qword_1006E30F8, &qword_10057FBC8);
    v27 = 0;
    goto LABEL_8;
  }

  v17 = v0[34];
  v18 = v0[31];
  v19 = v0[32];
  v21 = v0[29];
  v20 = v0[30];
  v22 = v0[27];
  v23 = v0[28];
  (*(v19 + 32))(v17, v5 + v8, v18);
  sub_1000BE1A8(&qword_1006E3108, &type metadata accessor for MusicPlayer.PlayabilityStatus, &protocol conformance descriptor for MusicPlayer.PlayabilityStatus);
  v27 = sub_1005727E8();
  v24 = *(v19 + 8);
  v24(v17, v18);
  sub_10001036C(v21, &qword_1006E3100, &qword_10057FBD0);
  sub_10001036C(v20, &qword_1006E3100, &qword_10057FBD0);
  v24(v23, v18);
  sub_10001036C(v22, &qword_1006E3100, &qword_10057FBD0);
LABEL_8:
  (*(v0[39] + 8))(v0[41], v0[38]);

  v25 = v0[1];

  return v25(v27 & 1);
}

uint64_t sub_1000BA5F4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v122 = a2;
  LODWORD(v123) = a1;
  v2 = sub_10056D888();
  v104 = *(v2 - 8);
  v105 = v2;
  __chkstk_darwin();
  v103 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005722D8();
  v108 = *(v4 - 8);
  v109 = v4;
  __chkstk_darwin();
  v107 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_100571A68();
  v100 = *(v101 - 8);
  __chkstk_darwin();
  v99 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005713A8();
  v112 = *(v7 - 8);
  v113 = v7;
  __chkstk_darwin();
  v111 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100571CF8();
  v116 = *(v9 - 8);
  v117 = v9;
  __chkstk_darwin();
  v115 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v94 - v13;
  __chkstk_darwin();
  v95 = &v94 - v14;
  __chkstk_darwin();
  v98 = &v94 - v15;
  __chkstk_darwin();
  v94 = &v94 - v16;
  __chkstk_darwin();
  v96 = &v94 - v17;
  __chkstk_darwin();
  v97 = &v94 - v18;
  __chkstk_darwin();
  v106 = &v94 - v19;
  __chkstk_darwin();
  v110 = &v94 - v20;
  __chkstk_darwin();
  v114 = &v94 - v21;
  v22 = sub_10056D5A8();
  v119 = *(v22 - 8);
  v120 = v22;
  __chkstk_darwin();
  v24 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v94 - v25;
  __chkstk_darwin();
  v28 = &v94 - v27;
  __chkstk_darwin();
  v30 = &v94 - v29;
  v118 = sub_100571B78();
  v31 = *(v118 - 8);
  __chkstk_darwin();
  v33 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10056D818();
  v35 = *(v34 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v38 = &v94 - v37;
  if ((v123 & 1) == 0)
  {
    sub_10056C868();
    v47 = sub_10056C8A8();
    v48 = *(v47 - 8);
    result = (*(v48 + 48))(v12, 1, v47);
    if (result != 1)
    {
      return (*(v48 + 32))(v122, v12, v47);
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v123 = v36;
  sub_10056D828();
  v39 = (*(v35 + 88))(v38, v34);
  if (v39 == enum case for MusicPin.Item.album(_:))
  {
    (*(v35 + 96))(v38, v34);
    v40 = v31;
    v41 = *(v31 + 32);
    v42 = v118;
    v41(v33, v38, v118);
    sub_100571A98();
    v43 = sub_1000BCD94();
    v45 = v44;
    (*(v119 + 8))(v30, v120);
    if (v45)
    {
      sub_1000B3260(v43, v122, v45);

      return (*(v40 + 8))(v33, v42);
    }

    v60 = v114;
    sub_100571B38();
    v61 = sub_10056C8A8();
    v62 = *(v61 - 8);
    v63 = *(v62 + 48);
    if (v63(v60, 1, v61) != 1)
    {
      (*(v40 + 8))(v33, v42);
      return (*(v62 + 32))(v122, v60, v61);
    }

    v64 = v110;
    sub_10056C868();
    result = (v63)(v64, 1, v61);
    if (result != 1)
    {
      (*(v40 + 8))(v33, v42);
      (*(v62 + 32))(v122, v64, v61);
      result = (v63)(v60, 1, v61);
      if (result != 1)
      {
        return sub_10001036C(v60, qword_1006E1D50, &qword_10057CA90);
      }

      return result;
    }

    goto LABEL_46;
  }

  if (v39 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v35 + 96))(v38, v34);
    v49 = v115;
    v50 = v116;
    v51 = v117;
    (*(v116 + 32))(v115, v38, v117);
    v52 = sub_100571CC8();
    sub_1000B3558(v52, v122, v53);

    return (*(v50 + 8))(v49, v51);
  }

  if (v39 != enum case for MusicPin.Item.musicVideo(_:))
  {
    if (v39 == enum case for MusicPin.Item.playlist(_:))
    {
      (*(v35 + 96))(v38, v34);
      v65 = v107;
      v54 = v108;
      v56 = v109;
      (*(v108 + 32))(v107, v38, v109);
      sub_1005720C8();
      v66 = sub_1000BCD94();
      v68 = v67;
      (*(v119 + 8))(v24, v120);
      if (v68)
      {
        sub_1000B30D8(v66, v122, v68);
LABEL_23:

        return (*(v54 + 8))(v65, v56);
      }

      v55 = v98;
      sub_1005721B8();
      v72 = sub_10056C8A8();
      v73 = *(v72 - 8);
      v89 = *(v73 + 48);
      if (v89(v55, 1, v72) == 1)
      {
        v90 = v95;
        sub_10056C868();
        if (v89(v90, 1, v72) == 1)
        {
          __break(1u);
LABEL_36:
          (*(v54 + 8))(v55, v56);
          return (*(v73 + 32))(v122, v65, v72);
        }

LABEL_42:
        (*(v54 + 8))(v65, v56);
        (*(v73 + 32))(v122, v90, v72);
        result = (v89)(v55, 1, v72);
        if (result != 1)
        {
          return sub_10001036C(v55, qword_1006E1D50, &qword_10057CA90);
        }

        return result;
      }
    }

    else
    {
      if (v39 != enum case for MusicPin.Item.song(_:))
      {
        v119 = v35;
        v120 = v34;
        if (qword_1006DFA50 != -1)
        {
          swift_once();
        }

        v76 = sub_10056DF88();
        sub_10000C49C(v76, qword_1006FC2D8);
        v78 = v104;
        v77 = v105;
        v79 = v103;
        (*(v104 + 16))(v103, v121, v105);
        v80 = sub_10056DF68();
        v81 = sub_100573428();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          v124 = v121;
          *v82 = 136315138;
          v83 = v123;
          LODWORD(v118) = v81;
          sub_10056D828();
          sub_1000BE1A8(&qword_1006E4990, &type metadata accessor for MusicPin.Item, &protocol conformance descriptor for MusicPin.Item);
          v84 = v120;
          v85 = sub_100574408();
          v87 = v86;
          (*(v119 + 8))(v83, v84);
          (*(v78 + 8))(v79, v77);
          v88 = sub_10008190C(v85, v87, &v124);

          *(v82 + 4) = v88;
          _os_log_impl(&_mh_execute_header, v80, v118, "Unknown MusicPin.Item=%s", v82, 0xCu);
          sub_100010474(v121);
        }

        else
        {

          (*(v78 + 8))(v79, v77);
        }

        v91 = v102;
        sub_10056C868();
        v92 = sub_10056C8A8();
        v93 = *(v92 - 8);
        result = (*(v93 + 48))(v91, 1, v92);
        if (result != 1)
        {
          (*(v93 + 32))(v122, v91, v92);
          return (*(v119 + 8))(v38, v120);
        }

        goto LABEL_47;
      }

      (*(v35 + 96))(v38, v34);
      v54 = v100;
      v65 = v99;
      v56 = v101;
      (*(v100 + 32))(v99, v38, v101);
      sub_100571978();
      v69 = sub_1000BCD94();
      v71 = v70;
      (*(v119 + 8))(v26, v120);
      if (v71)
      {
        sub_1000B33DC(v69, v122, v71);
        goto LABEL_23;
      }

      v55 = v96;
      sub_100571A18();
      v72 = sub_10056C8A8();
      v73 = *(v72 - 8);
      v89 = *(v73 + 48);
      if (v89(v55, 1, v72) == 1)
      {
        v90 = v94;
        sub_10056C868();
        result = (v89)(v90, 1, v72);
        if (result == 1)
        {
LABEL_49:
          __break(1u);
          return result;
        }

        goto LABEL_42;
      }
    }

    (*(v54 + 8))(v65, v56);
    return (*(v73 + 32))(v122, v55, v72);
  }

  (*(v35 + 96))(v38, v34);
  v55 = v111;
  v54 = v112;
  v56 = v113;
  (*(v112 + 32))(v111, v38, v113);
  sub_100571338();
  v57 = sub_1000BCD94();
  v59 = v58;
  (*(v119 + 8))(v28, v120);
  if (v59)
  {
    sub_1000B33DC(v57, v122, v59);

    return (*(v54 + 8))(v55, v56);
  }

  v65 = v106;
  sub_100571378();
  v72 = sub_10056C8A8();
  v73 = *(v72 - 8);
  v74 = *(v73 + 48);
  if (v74(v65, 1, v72) != 1)
  {
    goto LABEL_36;
  }

  v75 = v97;
  sub_10056C868();
  result = (v74)(v75, 1, v72);
  if (result == 1)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  (*(v54 + 8))(v55, v56);
  (*(v73 + 32))(v122, v75, v72);
  result = (v74)(v65, 1, v72);
  if (result != 1)
  {
    return sub_10001036C(v65, qword_1006E1D50, &qword_10057CA90);
  }

  return result;
}

uint64_t sub_1000BB7E8@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v2 = sub_10056D888();
  v59 = *(v2 - 8);
  v60 = v2;
  __chkstk_darwin();
  v58 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100571A68();
  v56 = *(v4 - 8);
  v57 = v4;
  __chkstk_darwin();
  v55 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005722D8();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin();
  v61 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005713A8();
  v64 = *(v8 - 8);
  v65 = v8;
  __chkstk_darwin();
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100571CF8();
  v66 = *(v11 - 8);
  __chkstk_darwin();
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100571B78();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10056D818();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v54 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v53 - v21;
  sub_10056D828();
  v23 = (*(v19 + 88))(v22, v18);
  if (v23 == enum case for MusicPin.Item.album(_:))
  {
    (*(v19 + 96))(v22, v18);
    (*(v15 + 32))(v17, v22, v14);
    v24 = v67;
    sub_100571A98();
    (*(v15 + 8))(v17, v14);
    v25 = sub_10056D5A8();
    return (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  }

  v27 = v67;
  if (v23 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v19 + 96))(v22, v18);
    v28 = v66;
    (v66[4])(v13, v22, v11);
    sub_100571C88();
    (v28[1])(v13, v11);
LABEL_7:
    v31 = sub_10056D5A8();
    return (*(*(v31 - 8) + 56))(v27, 0, 1, v31);
  }

  if (v23 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v19 + 96))(v22, v18);
    v30 = v64;
    v29 = v65;
    (*(v64 + 4))(v10, v22, v65);
    sub_100571338();
    v30[1](v10, v29);
    goto LABEL_7;
  }

  v32 = v67;
  if (v23 == enum case for MusicPin.Item.playlist(_:))
  {
    (*(v19 + 96))(v22, v18);
    v33 = v61;
    v34 = v62;
    v35 = v63;
    (*(v62 + 32))(v61, v22, v63);
    sub_1005720C8();
LABEL_12:
    (*(v34 + 8))(v33, v35);
    v36 = sub_10056D5A8();
    return (*(*(v36 - 8) + 56))(v32, 0, 1, v36);
  }

  if (v23 == enum case for MusicPin.Item.song(_:))
  {
    (*(v19 + 96))(v22, v18);
    v33 = v55;
    v34 = v56;
    v35 = v57;
    (*(v56 + 32))(v55, v22, v57);
    sub_100571978();
    goto LABEL_12;
  }

  if (qword_1006DFA50 != -1)
  {
    swift_once();
  }

  v37 = sub_10056DF88();
  sub_10000C49C(v37, qword_1006FC2D8);
  v39 = v58;
  v38 = v59;
  v40 = v60;
  (*(v59 + 16))(v58, v1, v60);
  v41 = sub_10056DF68();
  v42 = sub_100573428();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v64 = v43;
    v66 = swift_slowAlloc();
    v68 = v66;
    *v43 = 136315138;
    v44 = v54;
    LODWORD(v65) = v42;
    sub_10056D828();
    sub_1000BE1A8(&qword_1006E4990, &type metadata accessor for MusicPin.Item, &protocol conformance descriptor for MusicPin.Item);
    v45 = sub_100574408();
    v63 = v41;
    v46 = v39;
    v48 = v47;
    (*(v19 + 8))(v44, v18);
    (*(v38 + 8))(v46, v40);
    v49 = sub_10008190C(v45, v48, &v68);

    v51 = v63;
    v50 = v64;
    *(v64 + 1) = v49;
    _os_log_impl(&_mh_execute_header, v51, v65, "Unknown MusicPin.Item=%s", v50, 0xCu);
    sub_100010474(v66);
  }

  else
  {

    (*(v38 + 8))(v39, v40);
  }

  v52 = sub_10056D5A8();
  (*(*(v52 - 8) + 56))(v32, 1, 1, v52);
  return (*(v19 + 8))(v22, v18);
}

void *sub_1000BC0EC()
{
  v1 = sub_10056D888();
  v43 = *(v1 - 8);
  v44 = v1;
  __chkstk_darwin();
  v42 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100571A68();
  v40 = *(v3 - 1);
  v41 = v3;
  __chkstk_darwin();
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006DFD40, &unk_10057B740);
  __chkstk_darwin();
  v7 = &v38 - v6;
  v8 = sub_1005713A8();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10056D818();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v38 - v16;
  sub_10056D828();
  v18 = (*(v13 + 88))(v17, v12);
  if (v18 == enum case for MusicPin.Item.album(_:) || v18 == enum case for MusicPin.Item.artist(_:))
  {
    goto LABEL_6;
  }

  if (v18 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v13 + 96))(v17, v12);
    (*(v9 + 32))(v11, v17, v8);
    sub_100009DCC(&qword_1006DFD48, &unk_10057F0E0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10057B510;
    sub_100571358();
    *(v21 + 32) = TextBadge.init(for:isPlayable:)(v7, 1);
    (*(v9 + 8))(v11, v8);
    return v21;
  }

  if (v18 == enum case for MusicPin.Item.playlist(_:))
  {
LABEL_6:
    (*(v13 + 8))(v17, v12);
    return _swiftEmptyArrayStorage;
  }

  if (v18 != enum case for MusicPin.Item.song(_:))
  {
    if (qword_1006DFA50 != -1)
    {
      swift_once();
    }

    v25 = sub_10056DF88();
    sub_10000C49C(v25, qword_1006FC2D8);
    v27 = v42;
    v26 = v43;
    v28 = v44;
    (*(v43 + 16))(v42, v0, v44);
    v29 = sub_10056DF68();
    v30 = sub_100573428();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v40 = v31;
      v41 = swift_slowAlloc();
      v45 = v41;
      *v31 = 136315138;
      sub_10056D828();
      sub_1000BE1A8(&qword_1006E4990, &type metadata accessor for MusicPin.Item, &protocol conformance descriptor for MusicPin.Item);
      v38 = sub_100574408();
      v32 = v27;
      v34 = v33;
      v35 = *(v13 + 8);
      v39 = v30;
      v35(v15, v12);
      (*(v26 + 8))(v32, v44);
      v36 = sub_10008190C(v38, v34, &v45);

      v37 = v40;
      *(v40 + 1) = v36;
      _os_log_impl(&_mh_execute_header, v29, v39, "Unknown MusicPin.Item=%s", v37, 0xCu);
      sub_100010474(v41);
    }

    else
    {

      (*(v26 + 8))(v27, v28);
      v35 = *(v13 + 8);
    }

    v35(v17, v12);
    return _swiftEmptyArrayStorage;
  }

  (*(v13 + 96))(v17, v12);
  v23 = v40;
  v22 = v41;
  (*(v40 + 4))(v5, v17, v41);
  sub_100009DCC(&qword_1006DFD48, &unk_10057F0E0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10057B510;
  sub_1005719D8();
  *(v24 + 32) = TextBadge.init(for:isPlayable:)(v7, 1);
  (*(v23 + 1))(v5, v22);
  return v24;
}

uint64_t sub_1000BC780@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10056D888();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin();
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005722D8();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10056D818();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v35 - v14;
  sub_10056D828();
  v16 = (*(v11 + 88))(v15, v10);
  if (v16 == enum case for MusicPin.Item.album(_:))
  {
    goto LABEL_2;
  }

  if (v16 != enum case for MusicPin.Item.artist(_:))
  {
    if (v16 == enum case for MusicPin.Item.musicVideo(_:))
    {
      v17 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
      v18 = *(*(v17 - 8) + 56);
      v19 = a1;
      v20 = 5;
      goto LABEL_8;
    }

    if (v16 == enum case for MusicPin.Item.playlist(_:))
    {
      (*(v11 + 96))(v15, v10);
      (*(v7 + 32))(v9, v15, v6);
      sub_100572148();
      (*(v7 + 8))(v9, v6);
      v23 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
      return (*(*(v23 - 8) + 56))(a1, 0, 11, v23);
    }

    if (v16 != enum case for MusicPin.Item.song(_:))
    {
      v39 = a1;
      if (qword_1006DFA50 != -1)
      {
        swift_once();
      }

      v24 = sub_10056DF88();
      sub_10000C49C(v24, qword_1006FC2D8);
      v26 = v40;
      v25 = v41;
      (*(v40 + 16))(v5, v1, v41);
      v27 = sub_10056DF68();
      v28 = sub_100573428();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v36 = v29;
        v38 = swift_slowAlloc();
        v42 = v38;
        *v29 = 136315138;
        v37 = v28;
        sub_10056D828();
        sub_1000BE1A8(&qword_1006E4990, &type metadata accessor for MusicPin.Item, &protocol conformance descriptor for MusicPin.Item);
        v30 = sub_100574408();
        v32 = v31;
        (*(v11 + 8))(v13, v10);
        (*(v26 + 8))(v5, v25);
        v33 = sub_10008190C(v30, v32, &v42);

        v34 = v36;
        *(v36 + 1) = v33;
        _os_log_impl(&_mh_execute_header, v27, v37, "Unknown MusicPin.Item=%s", v34, 0xCu);
        sub_100010474(v38);
      }

      else
      {

        (*(v26 + 8))(v5, v25);
      }

      v17 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
      v18 = *(*(v17 - 8) + 56);
      v19 = v39;
      goto LABEL_3;
    }

LABEL_2:
    v17 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1;
LABEL_3:
    v20 = 1;
LABEL_8:
    v18(v19, v20, 11, v17);
    return (*(v11 + 8))(v15, v10);
  }

  v21 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
  (*(*(v21 - 8) + 56))(a1, 7, 11, v21);
  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_1000BCD94()
{
  v1 = sub_10056D5A8();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v4 = &v22 - v3;
  v5 = sub_10056D568();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10056D578();
  sub_10056D598();

  if ((*(v6 + 88))(v8, v5) == enum case for MusicSiriRepresentation.ParsedIdentifier.library(_:))
  {
    (*(v6 + 96))(v8, v5);
    v9 = *v8;

    v10 = *(sub_100009DCC(&qword_1006E4998, &qword_100581E68) + 64);
    v11 = sub_10056D588();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
    v23 = v9;
    sub_100574408();
    return sub_1005713D8();
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    if (qword_1006DFA50 != -1)
    {
      swift_once();
    }

    v13 = sub_10056DF88();
    sub_10000C49C(v13, qword_1006FC2D8);
    (*(v2 + 16))(v4, v0, v1);
    v14 = sub_10056DF68();
    v15 = sub_100573428();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136446210;
      v18 = sub_10056D578();
      v20 = v19;
      (*(v2 + 8))(v4, v1);
      v21 = sub_10008190C(v18, v20, &v23);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to parse deviceLocalID for MusicSiriRepresentation.ID=%{public}s", v16, 0xCu);
      sub_100010474(v17);
    }

    else
    {

      (*(v2 + 8))(v4, v1);
    }

    return 0;
  }
}

void sub_1000BD350(uint64_t a1)
{
  v25 = type metadata accessor for WidgetMusicPin(0);
  v2 = *(v25 - 8);
  __chkstk_darwin();
  v24 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    if (qword_1006DFA50 != -1)
    {
      swift_once();
    }

    v8 = *(v2 + 72);
    v9 = sub_10056DF88();
    v10 = qword_1006FC2D8;
    *&v11 = 136446210;
    v21 = v11;
    v22 = v8;
    v23 = v9;
    do
    {
      sub_10000C49C(v9, v10);
      sub_1000BE0E8(v7, v5);
      v19 = sub_10056DF68();
      v20 = sub_100573448();
      if (os_log_type_enabled(v19, v20))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v26 = v13;
        *v12 = v21;
        sub_1000BE0E8(v5, v24);
        v14 = sub_100572978();
        v15 = v10;
        v17 = v16;
        sub_1000BE14C(v5);
        v18 = sub_10008190C(v14, v17, &v26);
        v10 = v15;

        *(v12 + 4) = v18;
        v8 = v22;
        v9 = v23;
        _os_log_impl(&_mh_execute_header, v19, v20, "ITEM %{public}s", v12, 0xCu);
        sub_100010474(v13);
      }

      else
      {

        sub_1000BE14C(v5);
      }

      v7 += v8;
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_1000BD5D4()
{
  v1 = sub_100009DCC(&qword_1006E32E0, &qword_10057FF80);
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v2 = sub_100009DCC(&qword_1006E4968, &qword_100581E28);
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v3 = sub_100009DCC(&qword_1006E4970, &unk_100581E30);
  v0[10] = v3;
  v0[11] = *(v3 - 8);
  v0[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000BD778, 0, 0);
}

uint64_t sub_1000BD778()
{
  if (qword_1006DFA50 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  v0[13] = sub_10000C49C(v1, qword_1006FC2D8);
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "PINS", v4, 2u);
  }

  sub_10056D888();
  sub_1000BE1A8(&qword_1006E4978, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  sub_100570F18();
  sub_100570EB8();
  sub_100570EA8();
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1000BD944;
  v6 = v0[9];
  v7 = v0[10];

  return MusicLibraryRequest.response()(v6, v7);
}

uint64_t sub_1000BD944()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1000BDEB4;
  }

  else
  {
    v2 = sub_1000BDA58;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000BDA58()
{
  v17 = v0;
  (*(v0[7] + 16))(v0[8], v0[9], v0[6]);
  v1 = sub_10056DF68();
  v2 = sub_100573448();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  if (v3)
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = v15;
    *v7 = 136446210;
    sub_1000BE084();
    v8 = sub_100574408();
    v10 = v9;
    v11 = *(v5 + 8);
    v11(v4, v6);
    v12 = sub_10008190C(v8, v10, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "RESPONSE %{public}s", v7, 0xCu);
    sub_100010474(v15);
  }

  else
  {

    v11 = *(v5 + 8);
    v11(v4, v6);
  }

  v0[16] = v11;
  sub_100570F68();
  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_1000BDC78;

  return sub_10006CB08(&unk_100581E40, 0);
}

uint64_t sub_1000BDC78(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    v7 = v4[4];
    v6 = v4[5];
    v8 = v4[3];
    v4[18] = a1;
    (*(v7 + 8))(v6, v8);

    return _swift_task_switch(sub_1000BDDCC, 0, 0);
  }
}

uint64_t sub_1000BDDCC()
{
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[6];
  sub_1000BD350(v0[18]);
  v1(v5, v6);
  (*(v3 + 8))(v2, v4);
  v7 = v0[18];

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1000BDEB4()
{
  v12 = v0;
  swift_errorRetain();
  v1 = sub_10056DF68();
  v2 = sub_100573428();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E1C08, &qword_10057F100);
    v6 = sub_100572978();
    v8 = sub_10008190C(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "FETCH ITEMS ERROR %{public}s", v4, 0xCu);
    sub_100010474(v5);
  }

  (*(v0[11] + 8))(v0[12], v0[10]);

  v9 = v0[1];

  return v9(_swiftEmptyArrayStorage);
}

unint64_t sub_1000BE084()
{
  result = qword_1006E4980;
  if (!qword_1006E4980)
  {
    sub_100010324(&qword_1006E4968, &qword_100581E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E4980);
  }

  return result;
}

uint64_t sub_1000BE0E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetMusicPin(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BE14C(uint64_t a1)
{
  v2 = type metadata accessor for WidgetMusicPin(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BE1A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000BE1F4()
{
  result = qword_1006E49B8;
  if (!qword_1006E49B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E49B8);
  }

  return result;
}

unint64_t sub_1000BE24C()
{
  result = qword_1006E49C0;
  if (!qword_1006E49C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E49C0);
  }

  return result;
}

unint64_t sub_1000BE2A4()
{
  result = qword_1006E49C8;
  if (!qword_1006E49C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E49C8);
  }

  return result;
}

uint64_t sub_1000BE324()
{
  v0 = sub_10056C758();
  sub_10000C910(v0, qword_1006FC388);
  sub_10000C49C(v0, qword_1006FC388);
  return sub_10056C738();
}

uint64_t sub_1000BE3C0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100016F0C();
  *v4 = v2;
  v4[1] = sub_1000638E4;

  return WidgetConfigurationIntent.perform()(a2, v5);
}

uint64_t sub_1000BE46C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000BF1A0();
  *a1 = result;
  return result;
}

uint64_t sub_1000BE494(uint64_t a1)
{
  v2 = sub_1000BE1F4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000BE4D4()
{
  result = qword_1006E49D0;
  if (!qword_1006E49D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E49D0);
  }

  return result;
}

unint64_t sub_1000BE52C()
{
  result = qword_1006E49D8;
  if (!qword_1006E49D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E49D8);
  }

  return result;
}

unint64_t sub_1000BE594()
{
  result = qword_1006E49E0;
  if (!qword_1006E49E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E49E0);
  }

  return result;
}

unint64_t sub_1000BE5EC()
{
  result = qword_1006E49E8;
  if (!qword_1006E49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E49E8);
  }

  return result;
}

unint64_t sub_1000BE644()
{
  result = qword_1006E49F0;
  if (!qword_1006E49F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E49F0);
  }

  return result;
}

unint64_t sub_1000BE69C()
{
  result = qword_1006E49F8;
  if (!qword_1006E49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E49F8);
  }

  return result;
}

uint64_t sub_1000BE6F0()
{
  v0 = sub_10056C1B8();
  sub_10000C910(v0, qword_1006FC3A0);
  sub_10000C49C(v0, qword_1006FC3A0);
  return sub_10056C1A8();
}

uint64_t sub_1000BE78C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_10000C49C(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

unint64_t sub_1000BE8A8()
{
  result = qword_1006E4A00;
  if (!qword_1006E4A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E4A00);
  }

  return result;
}

uint64_t sub_1000BE8FC(uint64_t a1)
{
  v2 = sub_1000BE8A8();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000BE94C()
{
  result = qword_1006E4A08;
  if (!qword_1006E4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E4A08);
  }

  return result;
}

unint64_t sub_1000BE9A4()
{
  result = qword_1006E4A10;
  if (!qword_1006E4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E4A10);
  }

  return result;
}

unint64_t sub_1000BE9FC()
{
  result = qword_1006E4A18;
  if (!qword_1006E4A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E4A18);
  }

  return result;
}

uint64_t sub_1000BEA54(uint64_t a1)
{
  v2 = sub_1000BE69C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000BEAA4()
{
  result = qword_1006E4A20;
  if (!qword_1006E4A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E4A20);
  }

  return result;
}

unint64_t sub_1000BEAFC()
{
  result = qword_1006E4A28;
  if (!qword_1006E4A28)
  {
    sub_100010324(&qword_1006E2E90, &qword_10057F900);
    sub_1000BE644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E4A28);
  }

  return result;
}

unint64_t sub_1000BEC00(uint64_t a1)
{
  v1 = a1;
  sub_100574678();
  sub_1005729F8();

  v2 = sub_1005746C8();

  return sub_1000BED50(v1, v2);
}

unint64_t sub_1000BED50(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v8 = 0x61656C655277656ELL;
          v9 = 0xEB00000000736573;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x736E6F6974617473;
          }

          else
          {
            v8 = 0xD000000000000015;
          }

          if (v7 == 4)
          {
            v9 = 0xEE00756F59726F46;
          }

          else
          {
            v9 = 0x80000001005A9ED0;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x59726F466564616DLL;
        }

        else
        {
          v8 = 0x726F4673646F6F6DLL;
        }

        if (v7 == 1)
        {
          v9 = 0xEA0000000000756FLL;
        }

        else
        {
          v9 = 0xEB00000000756F59;
        }
      }

      else
      {
        v9 = 0xE800000000000000;
        v8 = 0x736B636950706F74;
      }

      v10 = 0xD000000000000015;
      if (v6 == 4)
      {
        v10 = 0x736E6F6974617473;
      }

      v11 = 0xEE00756F59726F46;
      if (v6 != 4)
      {
        v11 = 0x80000001005A9ED0;
      }

      if (v6 == 3)
      {
        v10 = 0x61656C655277656ELL;
        v11 = 0xEB00000000736573;
      }

      v12 = 0x726F4673646F6F6DLL;
      if (v6 == 1)
      {
        v12 = 0x59726F466564616DLL;
      }

      v13 = 0xEB00000000756F59;
      if (v6 == 1)
      {
        v13 = 0xEA0000000000756FLL;
      }

      if (!v6)
      {
        v12 = 0x736B636950706F74;
        v13 = 0xE800000000000000;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_100574498();

      if ((v16 & 1) == 0)
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

unint64_t sub_1000BEFCC(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E4A38, &qword_100582298);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100009DCC(&qword_1006E4A40, &unk_1005822A0);
    v7 = sub_1005741C8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000BFAFC(v9, v5);
      v11 = *v5;
      result = sub_1000BEC00(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10056C158();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000BF1A0()
{
  v14 = sub_10056C178();
  v0 = *(v14 - 8);
  __chkstk_darwin();
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E1418, &qword_10057D080);
  __chkstk_darwin();
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v14 - v5;
  sub_100009DCC(&qword_1006E1428, &qword_10057D090);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = sub_10056C758();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  sub_100009DCC(&qword_1006E4A48, &unk_1005822B0);
  sub_10056C738();
  (*(v10 + 56))(v8, 1, 1, v9);
  v15 = 6;
  v11 = sub_10056C058();
  v12 = *(*(v11 - 8) + 56);
  v12(v6, 1, 1, v11);
  v12(v4, 1, 1, v11);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v14);
  sub_1000BFB6C();
  sub_1000BE8A8();
  return sub_10056C098();
}

unint64_t sub_1000BF4C0()
{
  sub_100009DCC(&qword_1006E2B88, &unk_10057F6C0);
  __chkstk_darwin();
  v1 = &v38 - v0;
  sub_100009DCC(&qword_1006E1428, &qword_10057D090);
  __chkstk_darwin();
  v3 = &v38 - v2;
  v4 = sub_10056C758();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E4A30, &qword_100582290);
  v8 = sub_100009DCC(&qword_1006E4A38, &qword_100582298);
  v9 = *(v8 - 8);
  v48 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100581E80;
  v12 = v11 + v10;
  v41 = *(v8 + 48);
  v42 = v11;
  *(v11 + v10) = 0;
  sub_10056C738();
  v13 = *(v5 + 56);
  v51 = v5 + 56;
  v47 = v13;
  v14 = v4;
  v44 = v4;
  v13(v3, 1, 1, v4);
  v15 = sub_10056C138();
  v16 = *(v15 - 8);
  v45 = *(v16 + 56);
  v49 = v16 + 56;
  v17 = v1;
  v45(v1, 1, 1, v15);
  v50 = v12;
  v40 = v7;
  sub_10056C148();
  v18 = v48;
  v46 = v8;
  v41 = *(v8 + 48);
  *(v12 + v48) = 1;
  sub_10056C738();
  v39 = v3;
  v19 = v14;
  v20 = v47;
  v47(v3, 1, 1, v19);
  v21 = v17;
  v22 = v17;
  v43 = v15;
  v23 = v45;
  v45(v22, 1, 1, v15);
  sub_10056C148();
  v24 = 2 * v18;
  v41 = *(v8 + 48);
  *(v50 + 2 * v18) = 2;
  sub_10056C738();
  v25 = v39;
  v26 = v44;
  v20(v39, 1, 1, v44);
  v23(v21, 1, 1, v15);
  sub_10056C148();
  v27 = v48;
  v28 = v50;
  v41 = *(v46 + 48);
  *(v50 + v24 + v48) = 3;
  sub_10056C738();
  v29 = v47;
  v47(v25, 1, 1, v26);
  v30 = v43;
  v23(v21, 1, 1, v43);
  sub_10056C148();
  v31 = v46;
  v41 = *(v46 + 48);
  *(v28 + 4 * v27) = 4;
  sub_10056C738();
  v32 = v44;
  v29(v25, 1, 1, v44);
  v33 = v30;
  v34 = v45;
  v45(v21, 1, 1, v33);
  sub_10056C148();
  v35 = (v50 + 4 * v27 + v48);
  v48 = *(v31 + 48);
  *v35 = 5;
  sub_10056C738();
  v47(v25, 1, 1, v32);
  v34(v21, 1, 1, v43);
  sub_10056C148();
  v36 = sub_1000BEFCC(v42);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v36;
}

uint64_t sub_1000BFAFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E4A38, &qword_100582298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000BFB6C()
{
  result = qword_1006E4A50;
  if (!qword_1006E4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E4A50);
  }

  return result;
}

uint64_t sub_1000BFBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10056CAA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_10056C8A8();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000BFD18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10056CAA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_10056C8A8();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for OpenMusicWidgetTimelineProvider.Entry(uint64_t a1)
{
  result = qword_1006E4AB0;
  if (!qword_1006E4AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BFE8C(uint64_t a1)
{
  result = sub_10056CAA8();
  if (v2 <= 0x3F)
  {
    result = sub_10056C8A8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000BFF2C()
{
  result = qword_1006E4AF0;
  if (!qword_1006E4AF0)
  {
    type metadata accessor for OpenMusicWidgetTimelineProvider.Entry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E4AF0);
  }

  return result;
}

uint64_t sub_1000BFF84@<X0>(uint64_t a1@<X8>)
{
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v3 = &v9 - v2;
  sub_10056C868();
  v4 = sub_10056C8A8();
  v5 = *(v4 - 8);
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = type metadata accessor for OpenMusicWidgetTimelineProvider.Entry(0);
    (*(v5 + 32))(a1 + *(v7 + 24), v3, v4);
    result = sub_10056CA98();
    v8 = (a1 + *(v7 + 20));
    *v8 = 0xD000000000000019;
    v8[1] = 0x80000001005AB3E0;
  }

  return result;
}

uint64_t sub_1000C00E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for OpenMusicWidgetTimelineProvider.Entry(0);
  v5[5] = swift_task_alloc();
  v6 = swift_task_alloc();
  v5[6] = v6;
  *v6 = v5;
  v6[1] = sub_1000C01B4;

  return sub_100058BD0();
}

uint64_t sub_1000C01B4(char a1)
{
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_1000C02B4, 0, 0);
}

uint64_t sub_1000C02B4()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  sub_1000B36DC((*(v0 + 56) & 1) == 0, v1 + *(v2 + 24));
  sub_10056CA98();
  v4 = (v1 + *(v2 + 20));
  *v4 = 0xD000000000000019;
  v4[1] = 0x80000001005AB3E0;
  v3(v1);
  sub_1000C09B4(v1);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000C0384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_100572578();
  v5[4] = swift_task_alloc();
  v6 = sub_100009DCC(&qword_1006E4AF8, &qword_1005823B0);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for OpenMusicWidgetTimelineProvider.Entry(0);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = swift_task_alloc();
  v5[11] = v8;
  *v8 = v5;
  v8[1] = sub_1000C0518;

  return sub_100058BD0();
}

uint64_t sub_1000C0518(char a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_1000C0618, 0, 0);
}

uint64_t sub_1000C0618()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 48);
  v12 = *(v0 + 40);
  v6 = *(v0 + 16);
  sub_1000B36DC((*(v0 + 96) & 1) == 0, v1 + *(v4 + 24));
  sub_10056CA98();
  v7 = (v1 + *(v4 + 20));
  *v7 = 0xD000000000000019;
  v7[1] = 0x80000001005AB3E0;
  sub_100009DCC(&qword_1006E4B00, &qword_1005823B8);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10057B510;
  sub_1000B1DE4(v1, v9 + v8);
  sub_100572568();
  sub_1000BFF2C();
  sub_100572638();
  v6(v3);
  (*(v5 + 8))(v3, v12);
  sub_1000C09B4(v1);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000C07E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100009DCC(&qword_1006DFD60, &qword_10057B758);
  __chkstk_darwin();
  v11 = &v15 - v10;
  v12 = sub_100572F48();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a2;
  v13[5] = a3;

  sub_100006194(0, 0, v11, a7, v13);
}

uint64_t sub_1000C08F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000CB98;

  return sub_1000C0384(a1, v4, v5, v7, v6);
}

uint64_t sub_1000C09B4(uint64_t a1)
{
  v2 = type metadata accessor for OpenMusicWidgetTimelineProvider.Entry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C0A10()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000C0A50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000116F0;

  return sub_1000C00E0(a1, v4, v5, v7, v6);
}

void sub_1000C2874(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MarqueeView.m" lineNumber:260 description:@"viewForContentSize must be a subview of MPUMarqueeView's contentView."];
}

id sub_1000C28E8()
{
  result = sub_1000C2908();
  qword_1006FC3B8 = result;
  return result;
}

id sub_1000C2908()
{
  v0 = sub_10056C8A8();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v54 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(sub_100009DCC(&qword_1006E5D10, &unk_100583A20) - 8);
  __chkstk_darwin();
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v50 - v5;
  __chkstk_darwin();
  v8 = &v50 - v7;
  __chkstk_darwin();
  v10 = &v50 - v9;
  __chkstk_darwin();
  v12 = &v50 - v11;
  v56 = sub_10025B538(_swiftEmptyArrayStorage);
  sub_100009DCC(&qword_1006E5D18, &unk_100585520);
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v58 = *(v3 + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100580F90;
  v60 = v13;
  v53 = v14;
  v15 = v14 + v13;
  v16 = objc_opt_self();
  v17 = [v16 mainBundle];
  v18 = [v17 resourceURL];

  if (v18)
  {
    sub_10056C838();

    v19 = *(v1 + 56);
    v20 = v12;
    v21 = 0;
  }

  else
  {
    v19 = *(v1 + 56);
    v20 = v12;
    v21 = 1;
  }

  v59 = v19;
  v19(v20, v21, 1, v0);
  v22 = v1;
  sub_1000C6E84(v12, v15);
  type metadata accessor for BundleFinder();
  v23 = [v16 bundleForClass:swift_getObjCClassFromMetadata()];
  v24 = [v23 resourceURL];

  if (v24)
  {
    sub_10056C838();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = v55;
  v51 = v22;
  v27 = v10;
  v28 = v10;
  v29 = v59;
  v59(v27, v25, 1, v0);
  v30 = v58;
  sub_1000C6E84(v28, v15 + v58);
  v31 = [v16 mainBundle];
  v32 = [v31 bundleURL];

  sub_10056C838();
  v57 = (v22 + 7);
  v29(v15 + 2 * v30, 0, 1, v0);
  v61 = v56;
  sub_1000D9FC0(v53);
  v33 = v61;
  v34 = v61[2];
  if (v34)
  {
    v35 = 0;
    v36 = v60 + v61;
    v60 = (v51 + 6);
    v56 = (v51 + 1);
    v51 += 4;
    v52 = "AC12BundleFinder";
    v53 = v34;
    while (v35 < v33[2])
    {
      sub_10000CC8C(v36, v6, &qword_1006E5D10, &unk_100583A20);
      v37 = *v60;
      if ((*v60)(v6, 1, v0) == 1)
      {
        sub_1000C6EF4(v6);
        v38 = 1;
      }

      else
      {
        sub_10056C808();
        (*v56)(v6, v0);
        v38 = 0;
      }

      v59(v8, v38, 1, v0);
      sub_10000CC8C(v8, v26, &qword_1006E5D10, &unk_100583A20);
      if (v37(v26, 1, v0) == 1)
      {
        sub_1000C6EF4(v8);
      }

      else
      {
        v39 = v33;
        v40 = v8;
        v41 = v6;
        v42 = v54;
        (*v51)(v54, v26, v0);
        v43 = objc_allocWithZone(NSBundle);
        sub_10056C7E8(v44);
        v46 = v45;
        v47 = [v43 initWithURL:v45];

        v26 = v55;
        v48 = v42;
        v6 = v41;
        v8 = v40;
        v33 = v39;
        v34 = v53;
        (*v56)(v48, v0);
        sub_1000C6EF4(v8);
        if (v47)
        {

          return v47;
        }
      }

      ++v35;
      v36 += v58;
      if (v34 == v35)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = sub_1005740F8();
  __break(1u);
  return result;
}

double variable initialization expression of AnyAction.displayConfiguration@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_100582400;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

unint64_t variable initialization expression of ArtworkVideoReportingController.signpostsForIndex(uint64_t a1, uint64_t a2)
{
  swift_getTupleTypeMetadata2();
  v4 = sub_100572D88();
  v5 = sub_100183344(v4, a1, &type metadata for ComponentRenderEventSignposts, a2);

  return v5;
}

uint64_t sub_1000C30B4(uint64_t *a1, uint64_t *a2)
{
  sub_100009DCC(a1, a2);
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_opt_self() standardUserDefaults];
  return v2;
}

id variable initialization expression of MetricsReportingController.carFocusedMetricsController()
{
  v0 = objc_allocWithZone(SSMetricsController);

  return [v0 init];
}

uint64_t variable initialization expression of MetricsReportingController.carMetricsReporter()
{
  type metadata accessor for CarNowPlayingMetrics.Reporter();

  return swift_allocObject();
}

double variable initialization expression of ApplicationCapabilities.ratingWarning@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x7FFFFFFFFFFFFFFFLL;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

id variable initialization expression of ApplicationCapabilities.subscriptionStatus()
{
  v0 = [objc_opt_self() sharedController];
  v1 = [v0 musicSubscriptionStatus];

  return v1;
}

uint64_t variable initialization expression of ApplicationCapabilities.Controller.storeBag()
{
  if (qword_1006E4E08 != -1)
  {
    swift_once();
  }

  sub_100009DCC(&qword_1006E8490, &qword_100582590);
  UnfairLock.locked<A>(_:)(sub_1000C5F9C);
  return v1;
}

id variable initialization expression of BackgroundRefreshController.cloudClient()
{
  v0 = objc_allocWithZone(ICCloudClient);

  return [v0 init];
}

uint64_t variable initialization expression of BagProvider.durableObservers()
{
  v0 = type metadata accessor for BagProvider.Observer();

  return WeakArray.init(_:)(_swiftEmptyArrayStorage, v0);
}

uint64_t variable initialization expression of BagProvider.logger()
{
  if (qword_1006E4E50 != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.musicBag;

  return sub_10056DF98();
}

id variable initialization expression of BagProvider.retry()
{
  v0 = objc_allocWithZone(type metadata accessor for BagProvider.Retry());

  return [v0 init];
}

uint64_t variable initialization expression of Gliss.Coordinator.queuedItem@<X0>(uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a3, 1, 1, AssociatedTypeWitness);
}

uint64_t variable initialization expression of Gliss.Transition.animations(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Gliss.Transition(255, a1, a2, a4);
  swift_getFunctionTypeMetadata1();

  return sub_100572D88();
}

uint64_t variable initialization expression of Gliss.Transition.completions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Gliss.Transition(255, a1, a2, a4);
  swift_getFunctionTypeMetadata2();

  return sub_100572D88();
}

double variable initialization expression of Gliss.Transition.gestureState@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

uint64_t variable initialization expression of CloudLibrary.StatusObserver._hasDisregardedBanner()
{
  v4 = 2;
  v3[0] = 0xD000000000000014;
  v3[1] = 0x80000001005AC6E0;
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1000C5FB8();
  UserDefault.init(wrappedValue:defaults:key:)(&v4, v0, v3, &type metadata for String, &type metadata for Bool, v1, &v5);
  return v5;
}

uint64_t variable initialization expression of CloudLibrary.StatusObserver.capabilitiesController()
{
  if (qword_1006E4D40 != -1)
  {
    swift_once();
  }
}

void *variable initialization expression of MusicLibrary.ActionableStateController.itemStateSubscriptions()
{
  if (!(_swiftEmptyArrayStorage >> 62) || !sub_100574178())
  {
    return &_swiftEmptySetSingleton;
  }

  return sub_1000D13A8(_swiftEmptyArrayStorage);
}

id variable initialization expression of Library.Menu.Request.librarySource()
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1000C387C()
{
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v1 = result;
    v2 = [result hasProperNetworkConditionsToShowCloudMedia];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double variable initialization expression of PlaybackController.nowPlayingPresentationDescriptor@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double variable initialization expression of PlaybackTimeObserver.durationSnapshot@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 2;
  return result;
}

id variable initialization expression of Player._path()
{
  v0 = [objc_opt_self() systemRoute];
  v1 = [v0 isDeviceRoute];
  v2 = objc_opt_self();
  if (v1)
  {
    v3 = v2;
    if (qword_1006E4F70 != -1)
    {
      swift_once();
    }

    v4 = sub_100572898();
    v5 = [v3 systemMusicPathWithRoute:v0 playerID:v4];
  }

  else
  {
    v5 = [v2 pathWithRoute:v0 bundleID:0 playerID:0];
  }

  return v5;
}

uint64_t variable initialization expression of Player.nowPlayingConfiguration()
{
  if (qword_1006E4FA8 != -1)
  {
    swift_once();
  }

  v0 = qword_1006EB4F0;
  v1 = qword_1006EB4F0;
  return v0;
}

uint64_t _s9MusicCore11BagProviderC4lock33_D1F028703756EAFCB4E62A24E619467FLL0A9Utilities10UnfairLockCvpfi_0()
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  return UnfairLock.init()();
}

id sub_1000C3B3C()
{
  if (qword_1006E4FA8 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EB4F0;

  return v1;
}

uint64_t variable initialization expression of MusicItemState._playabilityStatus@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MusicPlayer.PlayabilityStatus.playable(_:);
  v3 = sub_100571418();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t variable initialization expression of MusicItemState._previewCapabilityStatus@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason.notSupported(_:);
  v3 = sub_100571428();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = enum case for MusicPlayer.PreviewCapabilityStatus.unpreviewable(_:);
  v5 = sub_100571438();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

id variable initialization expression of PlaylistCovers.ArtworkDataSource.cache()
{
  v0 = objc_allocWithZone(NSCache);

  return [v0 init];
}

double variable initialization expression of PresentationSource.position@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 255;
  *(a1 + 40) = xmmword_100582410;
  return result;
}

uint64_t variable initialization expression of RequestResponse.Controller.enqueuedRevisionCompletions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RequestResponse.Controller(255, a1, a2, a4);
  type metadata accessor for RequestResponse.Revision(255, a1, a2, v6);
  swift_getFunctionTypeMetadata2();

  return sub_100572D88();
}

unint64_t variable initialization expression of RequestResponse.Controller.revisionIDCompletionsMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RequestResponse.Controller(255, a1, a2, a4);
  type metadata accessor for RequestResponse.Revision(255, a1, a2, v6);
  swift_getFunctionTypeMetadata2();
  v7 = sub_100572E38();
  swift_getTupleTypeMetadata2();
  v8 = sub_100572D88();
  v9 = sub_100183344(v8, &type metadata for Int, v7, &protocol witness table for Int);

  return v9;
}

double variable initialization expression of GroupActivitiesManager._reaction@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1000C3FA8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t variable initialization expression of ExplicitRestrictionsController.symbol(uint64_t a1, uint64_t a2)
{
  if (qword_1006E5650 != -1)
  {
    swift_once();
  }

  v2 = static ExplicitRestrictionsController.symbols;

  return v2;
}

uint64_t variable initialization expression of OptimisticValue.transaction@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for OptimisticValue.Transaction(0, a1, a3, a4);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 1, 1, v5);
}

void *sub_1000C41AC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1000C4204(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1000C4270@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1000C429C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1000C4340@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1005728D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1000C4388(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1000C43FC(uint64_t a1, id *a2)
{
  result = sub_1005728B8();
  *a2 = 0;
  return result;
}

uint64_t sub_1000C4474(uint64_t a1, id *a2)
{
  v3 = sub_1005728C8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000C44F4@<X0>(uint64_t *a2@<X8>)
{
  sub_1005728D8();
  v3 = sub_100572898();

  *a2 = v3;
  return result;
}

uint64_t sub_1000C4538(uint64_t a1)
{
  v2 = sub_1000C64D4(&qword_1006E5B70, type metadata accessor for MPCPlayerRequestError, &unk_100583170);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000C45A4(uint64_t a1)
{
  v2 = sub_1000C64D4(&qword_1006E5B70, type metadata accessor for MPCPlayerRequestError, &unk_100583170);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000C4610(uint64_t a1)
{
  v2 = sub_1000C64D4(&unk_1006EB1B0, type metadata accessor for MPCPlayerRequestError, &unk_100583900);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

Swift::Int sub_1000C4720(uint64_t a1, uint64_t a2)
{
  sub_100574678();
  swift_getWitnessTable();
  sub_10056CFE8();
  return sub_1005746C8();
}

uint64_t sub_1000C4788(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_10056CFD8();
}

uint64_t sub_1000C47F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1000C5D7C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1000C4848(uint64_t a1)
{
  v2 = sub_1000C64D4(&qword_1006E5E80, type metadata accessor for MPCPlayerEnqueueError, &unk_100584A2C);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000C48B4(uint64_t a1)
{
  v2 = sub_1000C64D4(&qword_1006E5E80, type metadata accessor for MPCPlayerEnqueueError, &unk_100584A2C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000C4920(void *a1, uint64_t a2)
{
  v4 = sub_1000C64D4(&qword_1006E5E80, type metadata accessor for MPCPlayerEnqueueError, &unk_100584A2C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000C49D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C64D4(&qword_1006E5E80, type metadata accessor for MPCPlayerEnqueueError, &unk_100584A2C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000C4A64(uint64_t a1)
{
  v2 = sub_1000C64D4(&unk_1006EB1B0, type metadata accessor for MPCPlayerRequestError, &unk_100583900);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000C4AD0(uint64_t a1)
{
  v2 = sub_1000C64D4(&unk_1006EB1B0, type metadata accessor for MPCPlayerRequestError, &unk_100583900);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000C4B3C(void *a1, uint64_t a2)
{
  v4 = sub_1000C64D4(&unk_1006EB1B0, type metadata accessor for MPCPlayerRequestError, &unk_100583900);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000C4BCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C64D4(&unk_1006EB1B0, type metadata accessor for MPCPlayerRequestError, &unk_100583900);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000C4C58(uint64_t a1)
{
  v2 = sub_1000C64D4(&qword_1006E5EC0, type metadata accessor for MPCError, &unk_100584894);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000C4CC4(uint64_t a1)
{
  v2 = sub_1000C64D4(&qword_1006E5EC0, type metadata accessor for MPCError, &unk_100584894);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000C4D30(void *a1, uint64_t a2)
{
  v4 = sub_1000C64D4(&qword_1006E5EC0, type metadata accessor for MPCError, &unk_100584894);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000C4DC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C64D4(&qword_1006E5EC0, type metadata accessor for MPCError, &unk_100584894);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000C4E4C(uint64_t a1)
{
  v2 = sub_1000C64D4(&qword_1006E5E70, type metadata accessor for MPCMusicBehaviorError, &unk_10058471C);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000C4EB8(uint64_t a1)
{
  v2 = sub_1000C64D4(&qword_1006E5E70, type metadata accessor for MPCMusicBehaviorError, &unk_10058471C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000C4F24(void *a1, uint64_t a2)
{
  v4 = sub_1000C64D4(&qword_1006E5E70, type metadata accessor for MPCMusicBehaviorError, &unk_10058471C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000C4FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C64D4(&qword_1006E5E70, type metadata accessor for MPCMusicBehaviorError, &unk_10058471C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000C5030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100574678();
  sub_100572748();
  return sub_1005746C8();
}

uint64_t sub_1000C509C(uint64_t a1)
{
  sub_1000C64D4(&qword_1006E5F00, type metadata accessor for OpenExternalURLOptionsKey, &unk_1005849A4);
  sub_1000C64D4(&qword_1006E5F08, type metadata accessor for OpenExternalURLOptionsKey, &unk_1005842F4);

  return sub_100574218();
}

uint64_t sub_1000C515C(uint64_t a1)
{
  sub_1000C64D4(&qword_1006E5F30, type metadata accessor for Name, &unk_100583E64);
  sub_1000C64D4(&qword_1006E5F38, type metadata accessor for Name, &unk_100583E04);

  return sub_100574218();
}

uint64_t sub_1000C5218(uint64_t a1)
{
  sub_1000C64D4(&qword_1006E5BD0, type metadata accessor for ICURLBagKey, &unk_10058326C);
  sub_1000C64D4(&qword_1006E5BD8, type metadata accessor for ICURLBagKey, &unk_100583214);

  return sub_100574218();
}

uint64_t sub_1000C52D4(uint64_t a1)
{
  sub_1000C64D4(&qword_1006E5BC0, type metadata accessor for ICPrivacyIdentifier, &unk_1005836B0);
  sub_1000C64D4(&qword_1006E5BC8, type metadata accessor for ICPrivacyIdentifier, &unk_100583658);

  return sub_100574218();
}

uint64_t sub_1000C5390(uint64_t a1)
{
  v2 = sub_1000C64D4(&qword_1006E5ED8, type metadata accessor for MPCPlayerEnqueueError, &unk_100583FDC);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000C53FC(uint64_t a1)
{
  v2 = sub_1000C64D4(&qword_1006E5ED8, type metadata accessor for MPCPlayerEnqueueError, &unk_100583FDC);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000C546C(uint64_t a1)
{
  v2 = sub_1000C64D4(&qword_1006E5E80, type metadata accessor for MPCPlayerEnqueueError, &unk_100584A2C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000C54D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C64D4(&qword_1006E5E80, type metadata accessor for MPCPlayerEnqueueError, &unk_100584A2C);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000C555C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C64D4(&unk_1006EB1B0, type metadata accessor for MPCPlayerRequestError, &unk_100583900);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000C55E0(uint64_t a1)
{
  v2 = sub_1000C64D4(&qword_1006E5E90, type metadata accessor for MPCError, &unk_100584488);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000C564C(uint64_t a1)
{
  v2 = sub_1000C64D4(&qword_1006E5E90, type metadata accessor for MPCError, &unk_100584488);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000C56B8(uint64_t a1)
{
  v2 = sub_1000C64D4(&qword_1006E5EC0, type metadata accessor for MPCError, &unk_100584894);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000C5724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C64D4(&qword_1006E5EC0, type metadata accessor for MPCError, &unk_100584894);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000C57A8(uint64_t a1)
{
  v2 = sub_1000C64D4(&qword_1006E5E40, type metadata accessor for MPCMusicBehaviorError, &unk_10058469C);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000C5814(uint64_t a1)
{
  v2 = sub_1000C64D4(&qword_1006E5E40, type metadata accessor for MPCMusicBehaviorError, &unk_10058469C);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000C5880(uint64_t a1)
{
  v2 = sub_1000C64D4(&qword_1006E5E70, type metadata accessor for MPCMusicBehaviorError, &unk_10058471C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000C58EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C64D4(&qword_1006E5E70, type metadata accessor for MPCMusicBehaviorError, &unk_10058471C);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000C5970(uint64_t a1)
{
  sub_1000C64D4(&qword_1006E5F20, type metadata accessor for AttributeName, &unk_1005849E8);
  sub_1000C64D4(&qword_1006E5F28, type metadata accessor for AttributeName, &unk_100584088);

  return sub_100574218();
}

uint64_t sub_1000C5A2C(uint64_t a1)
{
  sub_1000C64D4(&qword_1006E5F10, type metadata accessor for Key, &unk_1005841FC);
  sub_1000C64D4(&qword_1006E5F18, type metadata accessor for Key, &unk_10058419C);

  return sub_100574218();
}

uint64_t sub_1000C5AE8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_100572898();

  *a2 = v3;
  return result;
}

uint64_t sub_1000C5B30(uint64_t a1)
{
  sub_1000C64D4(&qword_1006E5BB0, type metadata accessor for MSVAutoBugCaptureDomain, &unk_100583848);
  sub_1000C64D4(&qword_1006E5BB8, type metadata accessor for MSVAutoBugCaptureDomain, &unk_1005837E8);

  return sub_100574218();
}

uint64_t sub_1000C5BEC()
{
  sub_1005728D8();
  v0 = sub_100572B38();

  return v0;
}

uint64_t sub_1000C5C28(uint64_t a1)
{
  sub_1005728D8();
  sub_1005729F8();
}

Swift::Int sub_1000C5C7C(uint64_t a1)
{
  sub_1005728D8();
  sub_100574678();
  sub_1005729F8();
  v1 = sub_1005746C8();

  return v1;
}

uint64_t sub_1000C5CF0(void *a1, uint64_t *a2)
{
  v2 = sub_1005728D8();
  v4 = v3;
  if (v2 == sub_1005728D8() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100574498();
  }

  return v7 & 1;
}

uint64_t sub_1000C5D7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_1000C5DB4(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E5C40, &qword_100583A10);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100009DCC(&qword_1006E5C48, &qword_100583A18);
    v7 = sub_1005741C8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000CC8C(v9, v5, &qword_1006E5C40, &qword_100583A10);
      result = sub_1000EB9E8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_10056CAE8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000C5FB8()
{
  result = qword_1006E5720;
  if (!qword_1006E5720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E5720);
  }

  return result;
}

uint64_t type metadata accessor for BundleFinder()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

__n128 _s11ProgressionVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000C60A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1000C60E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

__n128 sub_1000C6138(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000C6154(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000C61A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1000C639C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000C63A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C63C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1000C64D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000C6DA0()
{
  result = qword_1006E5B98;
  if (!qword_1006E5B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E5B98);
  }

  return result;
}

uint64_t sub_1000C6E84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E5D10, &unk_100583A20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C6EF4(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E5D10, &unk_100583A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C6F68(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C6F88(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

__n128 sub_1000C70B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000C70C8(uint64_t a1, int a2)
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

uint64_t sub_1000C70E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Lyrics.AudioAttribute(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Lyrics.AudioAttribute(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void sub_1000C7ABC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t ActionDeclaring.init(context:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_100573C28();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v23 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v23 - v15;
  v24 = a1;
  sub_100081F38(a1, v26);
  sub_100009DCC(&qword_1006E6070, &qword_100584AF0);
  v17 = swift_dynamicCast();
  v18 = *(v12 + 56);
  if (v17)
  {
    v18(v11, 0, 1, AssociatedTypeWitness);
    (*(v12 + 32))(v16, v11, AssociatedTypeWitness);
    (*(v12 + 16))(v14, v16, AssociatedTypeWitness);
    v19 = v25;
    (*(a3 + 24))(v14, a2, a3);
    sub_100010474(v24);
    (*(v12 + 8))(v16, AssociatedTypeWitness);
    v20 = 0;
    v21 = v19;
  }

  else
  {
    v20 = 1;
    v18(v11, 1, 1, AssociatedTypeWitness);
    sub_100010474(v24);
    (*(v9 + 8))(v11, v8);
    v21 = v25;
  }

  return (*(*(a2 - 8) + 56))(v21, v20, 1, a2);
}

__n128 AnyAction.init(identifier:contexts:resolver:logs:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X2>, uint64_t a5@<X3>)
{
  sub_1000CA04C(a2, a3, a4, a5, v10);
  v6 = v10[7];
  *(a1 + 96) = v10[6];
  *(a1 + 112) = v6;
  *(a1 + 128) = v10[8];
  v7 = v10[3];
  *(a1 + 32) = v10[2];
  *(a1 + 48) = v7;
  v8 = v10[5];
  *(a1 + 64) = v10[4];
  *(a1 + 80) = v8;
  result = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t AnyAction.canPerform.getter()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    return v1();
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C8238(uint64_t a1)
{
  v1[2] = a1;
  sub_100572F08();
  v1[3] = sub_100572EF8();
  v3 = sub_100572E78();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_1000C82D0, v3, v2);
}

uint64_t sub_1000C82D0()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000C8CC(v1, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1000C83F4;

  return v6(v2, v3);
}

uint64_t sub_1000C83F4()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_1000CADE4;
  }

  else
  {
    v5 = sub_1000CADE8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000C8530(uint64_t a1)
{
  v1[2] = a1;
  sub_100572F08();
  v1[3] = sub_100572EF8();
  v3 = sub_100572E78();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_1000C85C8, v3, v2);
}

uint64_t sub_1000C85C8()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000C8CC(v1, v2);
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1000C86EC;

  return v6(v2, v3);
}

uint64_t sub_1000C86EC()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_1000C888C;
  }

  else
  {
    v5 = sub_1000C8828;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000C8828()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000C888C()
{

  v1 = *(v0 + 8);

  return v1();
}

void *AnyAction.submenu.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t AnyAction.execute()()
{
  v1[21] = v0;
  sub_100572F08();
  v1[22] = sub_100572EF8();
  v3 = sub_100572E78();
  v1[23] = v3;
  v1[24] = v2;

  return _swift_task_switch(sub_1000C89C8, v3, v2);
}

void sub_1000C89C8()
{
  v31 = v0;
  v1 = *(v0[21] + 80);
  if (!v1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = v1();
  if (v3 == 1)
  {
    v4 = *(v0[21] + 96);
    if (v4)
    {
      v29 = (v4 + *v4);
      v5 = swift_task_alloc();
      v0[25] = v5;
      *v5 = v0;
      v5[1] = sub_1000C8D70;

      v29();
      return;
    }

LABEL_18:
    __break(1u);
    return;
  }

  v6 = v2;
  v7 = v3;

  v8 = sub_1000CA864(v6, v7);
  v9 = (v1)(v8);
  if (v10 == 1)
  {
    sub_1000CA878();
    v11 = swift_allocError();
    *v12 = 0;
    v12[1] = 0;
  }

  else
  {
    v13 = v9;
    v14 = v10;
    sub_1000CA878();
    v11 = swift_allocError();
    *v15 = v13;
    v15[1] = v14;
  }

  swift_willThrow();
  if (qword_1006E4C68 != -1)
  {
    swift_once();
  }

  v16 = v0[21];
  v17 = sub_10056DF88();
  sub_10000C49C(v17, static Logger.actions);
  sub_1000CA7FC(v16, (v0 + 2));
  swift_errorRetain();
  v18 = sub_10056DF68();
  v19 = sub_100573428();
  sub_1000CA834(v16);

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v0[21];
    v21 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v21 = 136446466;
    v22 = ActionType.rawValue.getter(*v20);
    v24 = sub_1000C9784(v22, v23, v30);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2082;
    v0[20] = v11;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v25 = sub_100572978();
    v27 = sub_1000C9784(v25, v26, v30);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Failed to perform action %{public}s with error %{public}s", v21, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  v28 = v0[1];

  v28();
}

uint64_t sub_1000C8D70()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_1000C9164;
  }

  else
  {
    v5 = sub_1000C8EAC;
  }

  return _swift_task_switch(v5, v4, v3);
}

void sub_1000C8EAC()
{
  v1 = *(*(v0 + 168) + 112);
  if (v1)
  {
    v3 = (v1 + *v1);
    v2 = swift_task_alloc();
    *(v0 + 216) = v2;
    *v2 = v0;
    v2[1] = sub_1000C8FA4;

    v3();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000C8FA4()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_1000C9384;
  }

  else
  {
    v5 = sub_1000C90E0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000C90E0()
{
  v1 = *(*(v0 + 168) + 128);
  if (v1)
  {
    v1();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C9164()
{
  v17 = v0;

  v1 = v0[26];
  if (qword_1006E4C68 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = sub_10056DF88();
  sub_10000C49C(v3, static Logger.actions);
  sub_1000CA7FC(v2, (v0 + 2));
  swift_errorRetain();
  v4 = sub_10056DF68();
  v5 = sub_100573428();
  sub_1000CA834(v2);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = ActionType.rawValue.getter(*v6);
    v10 = sub_1000C9784(v8, v9, v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v0[20] = v1;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v11 = sub_100572978();
    v13 = sub_1000C9784(v11, v12, v16);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to perform action %{public}s with error %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t sub_1000C9384()
{
  v17 = v0;

  v1 = v0[28];
  if (qword_1006E4C68 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = sub_10056DF88();
  sub_10000C49C(v3, static Logger.actions);
  sub_1000CA7FC(v2, (v0 + 2));
  swift_errorRetain();
  v4 = sub_10056DF68();
  v5 = sub_100573428();
  sub_1000CA834(v2);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = ActionType.rawValue.getter(*v6);
    v10 = sub_1000C9784(v8, v9, v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v0[20] = v1;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v11 = sub_100572978();
    v13 = sub_1000C9784(v11, v12, v16);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to perform action %{public}s with error %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t Logger.actions.unsafeMutableAddressor()
{
  if (qword_1006E4C68 != -1)
  {
    swift_once();
  }

  v0 = sub_10056DF88();

  return sub_10000C49C(v0, static Logger.actions);
}

uint64_t sub_1000C9608()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, static Logger.actions);
  sub_10000C49C(v0, static Logger.actions);
  return sub_10056DF78();
}

uint64_t static Logger.actions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006E4C68 != -1)
  {
    swift_once();
  }

  v2 = sub_10056DF88();
  v3 = sub_10000C49C(v2, static Logger.actions);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000C9728(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1000C9784(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1000C9784(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000C9850(v11, 0, 0, 1, a1, a2);
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
    sub_100081F38(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100010474(v11);
  return v7;
}

unint64_t sub_1000C9850(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000C995C(a5, a6);
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
    result = sub_100573F98();
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

void *sub_1000C995C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000C99A8(a1, a2);
  sub_1000C9AD8(&off_100682348);
  return v3;
}

void *sub_1000C99A8(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100345DA4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100573F98();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100572AB8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100345DA4(v10, 0);
        result = sub_100573EC8();
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

uint64_t sub_1000C9AD8(uint64_t result)
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

  result = sub_1000C9BC4(result, v11, 1, v3);
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

char *sub_1000C9BC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&unk_1006EE2B0, &qword_100595E50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

__n128 sub_1000C9CB8@<Q0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_10000C8CC(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v5 = a1[4];
  *&v40 = DynamicType;
  *(&v40 + 1) = v5;
  sub_100009DCC(&qword_1006E6098, &qword_100584CE8);
  v6 = sub_100572978();
  v28 = v7;
  v29 = v6;
  sub_10002EA8C(a1, &v40);
  sub_100009DCC(&qword_1006E60A0, &qword_100584CF0);
  sub_100009DCC(&qword_1006E60A8, &qword_100584CF8);
  if (swift_dynamicCast())
  {
    v8 = *(&v58 + 1);
    v9 = v59;
    sub_10000C8CC(&v57, *(&v58 + 1));
    (*(v9 + 8))(v60, v8, v9);
    v10 = v60[1];
    v11 = v60[2];
    v26 = v60[3];
    v24 = v60[0];
    v25 = v60[4];
    v23 = v60[5];
    sub_100010474(&v57);
  }

  else
  {
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    sub_10001036C(&v57, &qword_1006E60B0, &qword_100584D00);
    v24 = 0;
    v25 = 0;
    v11 = 0;
    v26 = 0;
    v23 = 0;
    v10 = 1;
  }

  v12 = a1[3];
  v13 = a1[4];
  sub_10000C8CC(a1, v12);
  v22 = (*(v13 + 24))(v12, v13);
  sub_10002EA8C(a1, &v40);
  v21 = swift_allocObject();
  sub_10002EA74(&v40, v21 + 16);
  sub_10002EA8C(a1, &v40);
  v20 = swift_allocObject();
  sub_10002EA74(&v40, v20 + 16);
  sub_10002EA8C(a1, &v40);
  v19 = swift_allocObject();
  sub_10002EA74(&v40, v19 + 16);
  sub_10002EA8C(a1, &v40);
  v14 = swift_allocObject();
  sub_10002EA74(&v40, v14 + 16);
  LOBYTE(v31) = a2;
  *(&v31 + 1) = v29;
  v32.n128_u64[0] = v28;
  v32.n128_u64[1] = v24;
  *&v33 = v10;
  *(&v33 + 1) = v11;
  *&v34 = v26;
  *(&v34 + 1) = v25;
  *&v35 = v23;
  *(&v35 + 1) = v22;
  *&v36 = sub_1000CABFC;
  *(&v36 + 1) = v21;
  *&v37 = &unk_100584D10;
  *(&v37 + 1) = v20;
  *&v38 = &unk_100584D20;
  *(&v38 + 1) = v19;
  *&v39 = sub_1000CAD78;
  *(&v39 + 1) = v14;
  sub_1000CA7FC(&v31, &v40);
  sub_100010474(a1);
  LOBYTE(v40) = a2;
  *(&v40 + 1) = v29;
  v41 = v28;
  v42 = v24;
  v43 = v10;
  v44 = v11;
  v45 = v26;
  v46 = v25;
  v47 = v23;
  v48 = v22;
  v49 = sub_1000CABFC;
  v50 = v21;
  v51 = &unk_100584D10;
  v52 = v20;
  v53 = &unk_100584D20;
  v54 = v19;
  v55 = sub_1000CAD78;
  v56 = v14;
  sub_1000CA834(&v40);
  v15 = v38;
  *(a3 + 96) = v37;
  *(a3 + 112) = v15;
  *(a3 + 128) = v39;
  v16 = v34;
  *(a3 + 32) = v33;
  *(a3 + 48) = v16;
  v17 = v36;
  *(a3 + 64) = v35;
  *(a3 + 80) = v17;
  result = v32;
  *a3 = v31;
  *(a3 + 16) = result;
  return result;
}

void sub_1000CA04C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v64 = a2;
  v5 = a1;
  if (((1 << a1) & 0xF8FFFFD7FFE7FLL) == 0)
  {
    v43 = a4;
    if (((1 << a1) & 0x700000000180) != 0)
    {
      v44 = sub_1000CAB70();
      v45 = &type metadata for Feature.MusicKit;
    }

    else
    {
      LOBYTE(v97) = 2;
      v44 = sub_1000CAB1C();
      v45 = &type metadata for Feature.MediaPlayer;
    }

    v53 = FeatureFlagsKey.isEnabled.getter(v45, v44);
    a4 = v43;
    if ((v53 & 1) == 0)
    {

      if (qword_1006E5608 != -1)
      {
LABEL_34:
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall != 1)
      {
        goto LABEL_11;
      }

      *&v97 = 0;
      *(&v97 + 1) = 0xE000000000000000;
      sub_100573ED8(32);
      v54 = ActionType.rawValue.getter(v5);
      v56 = v55;

      *&v97 = v54;
      *(&v97 + 1) = v56;
      v114._countAndFlagsBits = 0xD00000000000001ELL;
      v114._object = 0x80000001005AC890;
      sub_100572A98(v114);
      v29 = *(&v97 + 1);
      v28 = v97;
      goto LABEL_10;
    }
  }

  v60 = a4;
  v8 = a3[3];
  v9 = a3[4];
  sub_10000C8CC(a3, v8);
  LOBYTE(v97) = v5;
  v10 = *(v9 + 8);
  v11 = sub_1000CAAAC();
  v12 = v10(&v97, &type metadata for ActionType, v11, v8, v9);
  if (!v12)
  {

    *&v97 = 0;
    *(&v97 + 1) = 0xE000000000000000;
    sub_100573ED8(22);
    v25 = ActionType.rawValue.getter(v5);
    v27 = v26;

    *&v97 = v25;
    *(&v97 + 1) = v27;
    v107._countAndFlagsBits = 0xD000000000000014;
    v107._object = 0x80000001005AC830;
    sub_100572A98(v107);
    v29 = *(&v97 + 1);
    v28 = v97;
LABEL_10:
    Array<A>.appendStringComponents(_:lineLength:bullet:)(v28, v29, 80, 120, 0xE100000000000000);

    goto LABEL_11;
  }

  v58 = a5;
  v59 = v5;
  v57 = a3;
  v63 = *(v64 + 16);
  if (v63)
  {
    v14 = v12;
    v15 = v13;
    a5 = 0;
    a3 = (v64 + 32);
    v61 = v12 - 8;
    v62 = v13 + 8;
    while (1)
    {
      if (a5 >= *(v64 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      sub_100081F38(a3, v83);
      v16 = *(v15 + 8);
      v17 = sub_100573C28();
      v18 = *(v17 - 8);
      v19 = __chkstk_darwin();
      v21 = &v57 - v20;
      v16(v83, v14, v15, v19);
      v5 = *(v14 - 8);
      if ((*(v5 + 48))(v21, 1, v14) != 1)
      {
        break;
      }

      a5 = (a5 + 1);
      (*(v18 + 8))(v21, v17);
      v84 = 0u;
      v85 = 0u;
      v86 = 0;
      sub_10001036C(&v84, &qword_1006E6088, &qword_100584CE0);
      a3 += 4;
      if (v63 == a5)
      {
        goto LABEL_8;
      }
    }

    *(&v85 + 1) = v14;
    v86 = v15;
    v34 = sub_10002AB7C(&v84);
    (*(v5 + 32))(v34, v21, v14);
    sub_10002EA74(&v84, v87);
    sub_10002EA8C(v87, &v97);
    v35 = v59;
    sub_1000C9CB8(&v97, v59, &v88);
    v80 = v94;
    v81 = v95;
    v82 = v96;
    v76 = v90;
    v77 = v91;
    v78 = v92;
    v79 = v93;
    v74 = v88;
    v75 = v89;
    if (!v93)
    {
      __break(1u);
      return;
    }

    v36 = (v93)();
    a3 = v57;
    if (v37 == 1)
    {
      *&v97 = ActionType.rawValue.getter(v35);
      *(&v97 + 1) = v39;
      v108._countAndFlagsBits = 10272;
      v108._object = 0xE200000000000000;
      sub_100572A98(v108);
      v40 = *(&v88 + 1);
      v41 = v89;

      v109._countAndFlagsBits = v40;
      v109._object = v41;
      sub_100572A98(v109);

      v110._countAndFlagsBits = 41;
      v110._object = 0xE100000000000000;
      sub_100572A98(v110);
      Array<A>.appendStringComponents(_:lineLength:bullet:)(v97, *(&v97 + 1), 80, 9673954, 0xA300000000000000);

      sub_100010474(v87);
      v71 = v80;
      v72 = v81;
      v73 = v82;
      v67 = v76;
      v68 = v77;
      v69 = v78;
      v70 = v79;
      v65 = v74;
      v66 = v75;
      v42.location = &v65;
      CFRange.init(_:)(v42);
      v103 = v71;
      v104 = v72;
      v105 = v73;
      v99 = v67;
      v100 = v68;
      v101 = v69;
      v102 = v70;
      v97 = v65;
      v98 = v66;
      a5 = v58;
      goto LABEL_12;
    }

    v46 = v36;
    v47 = v37;
    if (v38)
    {
      sub_100010474(v87);
      sub_1000CA864(v46, v47);
      sub_1000CA834(&v88);
    }

    else
    {
      *&v97 = ActionType.rawValue.getter(v35);
      *(&v97 + 1) = v48;
      v111._countAndFlagsBits = 10272;
      v111._object = 0xE200000000000000;
      sub_100572A98(v111);
      v49 = *(&v88 + 1);
      v50 = v89;

      v112._countAndFlagsBits = v49;
      v112._object = v50;
      sub_100572A98(v112);

      v113._countAndFlagsBits = 539828265;
      v113._object = 0xE400000000000000;
      sub_100572A98(v113);
      if (v47)
      {
        v51._countAndFlagsBits = v46;
      }

      else
      {
        v51._countAndFlagsBits = 0xD000000000000013;
      }

      if (v47)
      {
        v52 = v47;
      }

      else
      {
        v52 = 0x80000001005AC850;
      }

      v51._object = v52;
      sub_100572A98(v51);

      Array<A>.appendStringComponents(_:lineLength:bullet:)(v97, *(&v97 + 1), 80, 120, 0xE100000000000000);

      sub_1000CA834(&v88);
      sub_100010474(v87);
    }

    a5 = v58;
  }

  else
  {
LABEL_8:

    *&v97 = 0;
    *(&v97 + 1) = 0xE000000000000000;
    sub_100573ED8(24);
    v22 = ActionType.rawValue.getter(v59);
    v24 = v23;

    *&v97 = v22;
    *(&v97 + 1) = v24;
    v106._countAndFlagsBits = 0xD000000000000016;
    v106._object = 0x80000001005AC870;
    sub_100572A98(v106);
    Array<A>.appendStringComponents(_:lineLength:bullet:)(v97, *(&v97 + 1), 80, 120, 0xE100000000000000);

    a3 = v57;
    a5 = v58;
  }

LABEL_11:
  sub_1000CAB00(&v97);
LABEL_12:
  sub_100010474(a3);
  v30 = v104;
  a5[6] = v103;
  a5[7] = v30;
  a5[8] = v105;
  v31 = v100;
  a5[2] = v99;
  a5[3] = v31;
  v32 = v102;
  a5[4] = v101;
  a5[5] = v32;
  v33 = v98;
  *a5 = v97;
  a5[1] = v33;
}

uint64_t sub_1000CA78C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E6078, &qword_100584AF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CA864(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1000CA878()
{
  result = qword_1006E6080;
  if (!qword_1006E6080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6080);
  }

  return result;
}

uint64_t sub_1000CA8CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CA8F0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000CA908(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1000CA934(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1000CA97C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000CA9F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000CAA4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1000CAAAC()
{
  result = qword_1006E6900;
  if (!qword_1006E6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6900);
  }

  return result;
}

double sub_1000CAB00(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1000CAB1C()
{
  result = qword_1006E6090;
  if (!qword_1006E6090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6090);
  }

  return result;
}

unint64_t sub_1000CAB70()
{
  result = qword_1006E6B60;
  if (!qword_1006E6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E6B60);
  }

  return result;
}

uint64_t sub_1000CABC4()
{
  sub_100010474((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000CABFC()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10000C8CC(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1000CAC50()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000116F0;

  return sub_1000C8238(v0 + 16);
}

uint64_t sub_1000CACE4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000CB98;

  return sub_1000C8530(v0 + 16);
}

uint64_t sub_1000CAD78()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10000C8CC(v0 + 2, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t ActionCondition.Result.failure.getter(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  sub_1000CAE20(a1, a2);
  return v2;
}

uint64_t sub_1000CAE20(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t ActionCondition.init(_:file:line:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t ActionCondition.init(_:_:redactLog:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t (*a6)()@<X5>, uint64_t (*a7)()@<X6>, uint64_t (*a8)()@<X7>, uint64_t (**a9)()@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *a9 = sub_1000CB234;
  a9[1] = result;
  a9[2] = a6;
  a9[3] = a7;
  a9[4] = a8;
  return result;
}

BOOL ActionCondition.isTrue.getter()
{
  v1 = (*v0)();
  v3 = v2 == 1;
  sub_1000CA864(v1, v2);
  return v3;
}

uint64_t static ActionConditionEvaluator.buildBlock(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = a1 + 32;
    v15 = a1 + 32;
    v16 = *(a1 + 16);
    while (1)
    {
      v5 = *(v4 + 8 * v3);
      v6 = *(v5 + 16);
      if (v6)
      {
        break;
      }

LABEL_3:
      if (++v3 == v2)
      {
        return 0;
      }
    }

    v8 = 0;
    v9 = v5 + 56;
    while (v8 < *(v5 + 16))
    {
      v10 = *(v9 - 24);

      v12 = v10(v11);
      v14 = v13;

      if (v14 != 1)
      {

        return v12;
      }

      ++v8;
      v9 += 40;
      if (v6 == v8)
      {

        v4 = v15;
        v2 = v16;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t static ActionConditionEvaluator.buildExpression(_:)(__int128 *a1)
{
  sub_100009DCC(&qword_1006E60B8, &qword_100584D30);
  v2 = swift_allocObject();
  v4 = *a1;
  v7 = a1[1];
  v3 = v7;
  *(v2 + 16) = xmmword_10057B510;
  *(v2 + 32) = v4;
  *(v2 + 48) = v3;
  *(v2 + 64) = *(a1 + 4);

  sub_1000CB298(&v7, &v6);
  return v2;
}

BOOL _s9MusicCore15ActionConditionV6ResultO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2 == 1)
  {
    return a5 == 1;
  }

  if (a5 == 1)
  {
    return 0;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    if (a1 != a4 || a2 != a5)
    {
      v7 = a3;
      v8 = a6;
      v9 = sub_100574498();
      a3 = v7;
      a6 = v8;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a5)
  {
    return 0;
  }

  return (a6 ^ a3 ^ 1) & 1;
}

uint64_t sub_1000CB1F4()
{

  return swift_deallocObject();
}

uint64_t sub_1000CB234()
{
  v1 = *(v0 + 32);
  if ((*(v0 + 16))())
  {
    return 0;
  }

  return v1;
}

__n128 sub_1000CB2F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000CB308(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000CB350(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1000CB3A8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_1000CB3CC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000CB3E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 17))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000CB43C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000CB49C(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t Alert.message.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);

  return v3;
}

void *ActionDisplayConfiguration.image.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t ActionDisplayConfiguration.init(title:subtitle:image:attributes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

unint64_t sub_1000CB584()
{
  result = qword_1006E60C0;
  if (!qword_1006E60C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E60C0);
  }

  return result;
}

unint64_t sub_1000CB5DC()
{
  result = qword_1006E60C8;
  if (!qword_1006E60C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E60C8);
  }

  return result;
}

unint64_t sub_1000CB634()
{
  result = qword_1006E60D0;
  if (!qword_1006E60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E60D0);
  }

  return result;
}

unint64_t sub_1000CB68C()
{
  result = qword_1006E60D8;
  if (!qword_1006E60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E60D8);
  }

  return result;
}

uint64_t sub_1000CB6E0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1000C7E38();

  *a2 = v3;
  return result;
}

uint64_t sub_1000CB720(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000CB77C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void ActionList.init(_:lookup:resolver:excluding:)(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v4 = a4;
  v37 = a3;
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v36 = a4;
    *&v38 = a2;
    v41 = _swiftEmptyArrayStorage;
    sub_1000CC574(0, v7, 0);
    v8 = _swiftEmptyArrayStorage;
    v9 = a1 + 32;
    do
    {
      sub_100081F38(v9, v40);
      sub_100081F38(v40, v39);
      sub_100009DCC(&qword_1006E6070, &qword_100584AF0);
      v10 = sub_100572978();
      v12 = String.components(wrappedToLineLength:bullet:)(80, 62, 0xE100000000000000, v10, v11);

      sub_100010474(v40);
      v41 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        sub_1000CC574((v13 > 1), v14 + 1, 1);
        v8 = v41;
      }

      v8[2] = v14 + 1;
      v8[v14 + 4] = v12;
      v9 += 32;
      --v7;
    }

    while (v7);
    v5 = v38;
    v4 = v36;
  }

  v40[0] = v8;
  __chkstk_darwin();
  v35[2] = a1;
  v35[3] = v37;
  v35[4] = v4;
  v35[5] = v40;
  v36 = sub_1000CBCC4(sub_1000CC594, v35, v5);

  v35[7] = v40[0];
  v15 = Array<A>.asciiBoxed()(v40[0]);
  v17 = v15;
  v18 = *(v15 + 2);
  if (v18)
  {
    v19 = 0;
    v20 = (v15 + 40);
    v21 = &qword_1006E3FF8[1];
    *&v16 = 136446210;
    v38 = v16;
    while (v19 < *(v17 + 2))
    {
      v22 = *(v20 - 1);
      v23 = *v20;
      v24 = v21[397];

      if (v24 != -1)
      {
        swift_once();
      }

      v25 = sub_10056DF88();
      sub_10000C49C(v25, static Logger.actions);

      v26 = sub_10056DF68();
      v27 = sub_100573448();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = v21;
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v22;
        v32 = v17;
        v33 = v18;
        v34 = v30;
        v39[0] = v30;
        *v29 = v38;
        *(v29 + 4) = sub_1000C9784(v31, v23, v39);
        _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s", v29, 0xCu);
        sub_100010474(v34);
        v18 = v33;
        v17 = v32;

        v21 = v28;
      }

      ++v19;
      v20 += 2;
      if (v18 == v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    sub_100010474(v37);
  }
}

uint64_t sub_1000CBB7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char **a6@<X8>)
{
  v10 = *a1;
  v19 = _swiftEmptyArrayStorage;
  sub_10002EA8C(a3, v18);
  v17[2] = &v19;
  v17[3] = a4;
  v17[4] = a2;
  v17[5] = v18;
  v11 = sub_1000CBE00(sub_1000CD508, v17, v10);
  if (!*(v11 + 2))
  {

    v11 = 0;
  }

  sub_100010474(v18);
  v12 = v19;
  v13 = *a5;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v13;
  if ((result & 1) == 0)
  {
    result = sub_1000CF020(0, v13[2] + 1, 1, v13);
    v13 = result;
    *a5 = result;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    result = sub_1000CF020((v15 > 1), v16 + 1, 1, v13);
    v13 = result;
    *a5 = result;
  }

  v13[2] = v16 + 1;
  v13[v16 + 4] = v12;
  *a6 = v11;
  return result;
}

char *sub_1000CBCC4(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = (a3 + 32);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v13 = *v6;

    a1(&v12, &v13);
    if (v3)
    {
      break;
    }

    v8 = v12;
    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1000CEEDC(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_1000CEEDC((v9 > 1), v10 + 1, 1, v7);
      }

      *(v7 + 2) = v10 + 1;
      *&v7[8 * v10 + 32] = v8;
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

char *sub_1000CBE00(void (*a1)(__int128 *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = _swiftEmptyArrayStorage;
  v7 = (a3 + 32);
  while (1)
  {
    v8 = *v7++;
    v41[0] = v8;
    (a1)(&v32, v41, a2);
    if (v3)
    {
      break;
    }

    v31[6] = v38;
    v31[7] = v39;
    v31[8] = v40;
    v31[2] = v34;
    v31[3] = v35;
    v31[4] = v36;
    v31[5] = v37;
    v31[0] = v32;
    v31[1] = v33;
    if (sub_1000CD528(v31) == 1)
    {
      v28 = v38;
      v29 = v39;
      v30 = v40;
      v24 = v34;
      v25 = v35;
      v26 = v36;
      v27 = v37;
      v22 = v32;
      v23 = v33;
      sub_10001036C(&v22, &qword_1006E6128, &qword_1005850F0);
    }

    else
    {
      v28 = v38;
      v29 = v39;
      v30 = v40;
      v24 = v34;
      v25 = v35;
      v26 = v36;
      v27 = v37;
      v22 = v32;
      v23 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1000CEEF8(0, *(v6 + 2) + 1, 1, v6);
      }

      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        v6 = sub_1000CEEF8((v9 > 1), v10 + 1, 1, v6);
      }

      v15 = v24;
      v16 = v25;
      v20 = v29;
      v21 = v30;
      v18 = v27;
      v19 = v28;
      v17 = v26;
      v13 = v22;
      v14 = v23;
      *(v6 + 2) = v10 + 1;
      v11 = &v6[144 * v10];
      *(v11 + 2) = v13;
      *(v11 + 5) = v16;
      *(v11 + 6) = v17;
      *(v11 + 3) = v14;
      *(v11 + 4) = v15;
      *(v11 + 9) = v20;
      *(v11 + 10) = v21;
      *(v11 + 7) = v18;
      *(v11 + 8) = v19;
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

void *sub_1000CC010(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v32 = a2;
  sub_100009DCC(&qword_1006E6118, &qword_10058C520);
  __chkstk_darwin();
  v7 = &v25 - v6;
  v8 = sub_10056C628();
  __chkstk_darwin();
  v31 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v29 = &v25 - v12;
  v13 = *(a3 + 16);
  if (!v13)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = (a3 + 32);
  v15 = (v10 + 48);
  v28 = v10;
  v30 = (v10 + 32);
  v16 = _swiftEmptyArrayStorage;
  v26 = v8;
  v27 = a1;
  v25 = (v10 + 48);
  while (1)
  {
    v33 = *v14;
    (a1)(&v33, v11);
    if (v3)
    {
      break;
    }

    if ((*v15)(v7, 1, v8) == 1)
    {
      sub_10001036C(v7, &qword_1006E6118, &qword_10058C520);
    }

    else
    {
      v17 = v29;
      v18 = *v30;
      (*v30)(v29, v7, v8);
      v18(v31, v17, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1000CFC58(0, v16[2] + 1, 1, v16);
      }

      v20 = v16[2];
      v19 = v16[3];
      v21 = v28;
      if (v20 >= v19 >> 1)
      {
        v23 = sub_1000CFC58((v19 > 1), v20 + 1, 1, v16);
        v21 = v28;
        v16 = v23;
      }

      v16[2] = v20 + 1;
      v22 = v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v20;
      v8 = v26;
      v18(v22, v31, v26);
      a1 = v27;
      v15 = v25;
    }

    ++v14;
    if (!--v13)
    {
      return v16;
    }
  }

  return v16;
}

__n128 sub_1000CC2E8@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a1;
  if ((1 << v6) & 0xF8FFFFD7FFE7FLL) != 0 || ((v19 = a3, ((1 << v6) & 0x700000000180) == 0) ? (LOBYTE(v27[0]) = 2, v20 = sub_1000CAB1C(), v21 = &type metadata for Feature.MediaPlayer) : (v20 = sub_1000CAB70(), v21 = &type metadata for Feature.MusicKit), v22 = FeatureFlagsKey.isEnabled.getter(v21, v20), a3 = v19, (v22))
  {
    if (!sub_100248604(v6, a3))
    {
      sub_10002EA8C(a5, v26);

      sub_1000CA04C(v6, a4, v26, a2, v27);
      goto LABEL_7;
    }

    sub_100573ED8(24);
    v11 = ActionType.rawValue.getter(v6);
    v13 = v12;

    *&v27[0] = v11;
    *(&v27[0] + 1) = v13;
    v14._object = 0x80000001005AC8B0;
    v14._countAndFlagsBits = 0xD000000000000016;
  }

  else
  {
    if (qword_1006E5608 != -1)
    {
      swift_once();
    }

    if (static DeviceCapabilities.isInternalInstall != 1)
    {
      goto LABEL_5;
    }

    sub_100573ED8(32);
    v23 = ActionType.rawValue.getter(v6);
    v25 = v24;

    *&v27[0] = v23;
    *(&v27[0] + 1) = v25;
    v14._countAndFlagsBits = 0xD00000000000001ELL;
    v14._object = 0x80000001005AC890;
  }

  sub_100572A98(v14);
  Array<A>.appendStringComponents(_:lineLength:bullet:)(*&v27[0], *(&v27[0] + 1), 80, 120, 0xE100000000000000);

LABEL_5:
  sub_1000CAB00(v27);
LABEL_7:
  v15 = v27[7];
  *(a6 + 96) = v27[6];
  *(a6 + 112) = v15;
  *(a6 + 128) = v27[8];
  v16 = v27[3];
  *(a6 + 32) = v27[2];
  *(a6 + 48) = v16;
  v17 = v27[5];
  *(a6 + 64) = v27[4];
  *(a6 + 80) = v17;
  result = v27[1];
  *a6 = v27[0];
  *(a6 + 16) = result;
  return result;
}

void *sub_1000CC554(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CC764(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000CC574(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CC954(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000CC5D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CCA88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000CC5F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CCBB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000CC614(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CCCAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000CC634(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CCDB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000CC654(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CCFE0(a1, a2, a3, *v3, &unk_1006EAF50, &unk_1005854E0, &qword_1006EAF80, &qword_100590010);
  *v3 = result;
  return result;
}

char *sub_1000CC694(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CCEF4(a1, a2, a3, *v3, &qword_1006E6108, &qword_1005850E0);
  *v3 = result;
  return result;
}

void *sub_1000CC6C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CCFE0(a1, a2, a3, *v3, &qword_1006E6100, &qword_1005850D8, &qword_1006EBF00, &unk_100591420);
  *v3 = result;
  return result;
}

char *sub_1000CC704(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CD128(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000CC724(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CD22C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000CC744(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CD330(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000CC764(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009DCC(&qword_1006E5D18, &unk_100585520);
  v10 = *(sub_100009DCC(&qword_1006E5D10, &unk_100583A20) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100009DCC(&qword_1006E5D10, &unk_100583A20) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1000CC954(void *result, int64_t a2, char a3, void *a4)
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
    sub_100009DCC(&qword_1006E6130, &qword_1005850F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100009DCC(&unk_1006E84C0, &unk_1005854A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000CCA88(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&unk_1006E63A0, &unk_100585500);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000CCBB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006E60F0, &unk_1005853B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1000CCCAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&unk_1006E8FD0, &unk_10058C660);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000CCDB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006E6120, &qword_1005854B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000CCEF4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100009DCC(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_1000CCFE0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100009DCC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100009DCC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1000CD128(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006E60E8, &qword_1005850C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1000CD22C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006E60F8, &qword_1005850D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_1000CD330(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009DCC(&qword_1006E60E0, &qword_1005850C0);
  v10 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1000CD528(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t ActionType.isHidden.getter(char a1)
{
  if (((1 << a1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    return 0;
  }

  if (((1 << a1) & 0x700000000180) != 0)
  {
    v2 = sub_1000CAB70();
    v3 = &type metadata for Feature.MusicKit;
  }

  else
  {
    v2 = sub_1000CAB1C();
    v3 = &type metadata for Feature.MediaPlayer;
  }

  return (FeatureFlagsKey.isEnabled.getter(v3, v2) ^ 1) & 1;
}

uint64_t sub_1000CD5F0(char a1)
{
  result = 0x6C6576654C706F74;
  switch(a1)
  {
    case 1:
      result = 0x7463416B63697571;
      break;
    case 2:
      result = 7368564;
      break;
    case 3:
      result = 0x7972617262696CLL;
      break;
    case 4:
    case 11:
      result = 0x7473696C79616C70;
      break;
    case 5:
      result = 0x6B63616279616C70;
      break;
    case 6:
      result = 0x697461676976616ELL;
      break;
    case 7:
      result = 0x6574736174;
      break;
    case 8:
      result = 0x6E6974726F706572;
      break;
    case 9:
      result = 0x6F697463416E6970;
      break;
    case 10:
      result = 0x7463757274736564;
      break;
    case 12:
      result = 1867804519;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MenuType.title.getter(char a1)
{
  sub_10056CC38();
  __chkstk_darwin();
  v2 = sub_100572888();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if (a1 == 9)
  {
    sub_100572818();
    (*(v3 + 16))(v5, v7, v2);
    if (qword_1006E4C60 == -1)
    {
      goto LABEL_7;
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  if (a1 != 12 && a1 != 11)
  {
    return 0;
  }

  sub_100572818();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1006E4C60 != -1)
  {
    goto LABEL_10;
  }

LABEL_7:
  v8 = qword_1006FC3B8;
  sub_10056CBC8();
  v9 = sub_100572948();
  (*(v3 + 8))(v7, v2);
  return v9;
}

id MenuType.image.getter(char a1)
{
  if (a1 != 9 && a1 != 12 && a1 != 11)
  {
    return 0;
  }

  v1 = sub_100572898();
  v2 = [objc_opt_self() systemImageNamed:v1];

  return v2;
}

uint64_t MenuType.style.getter(char a1)
{
  switch(a1)
  {
    case 11:
      goto LABEL_6;
    default:
      v1 = sub_100574498();

      if (v1)
      {
        goto LABEL_3;
      }

      v3 = MenuType.description.getter();
      v5 = v4;
      if (v3 == 1867804519 && v4 == 0xE400000000000000)
      {
        goto LABEL_6;
      }

      v7 = v3;
      v8 = sub_100574498();

      if (v8)
      {
LABEL_3:
        v2 = 1;
      }

      else if (v7 == 0x6F697463416E6970 && v5 == 0xE90000000000006ELL)
      {
LABEL_6:

        v2 = 1;
      }

      else
      {
        v2 = sub_100574498();
      }

      return v2 & 1;
  }
}

UIMenuElementSize __swiftcall MenuType.size(for:)(Swift::Int a1)
{
  switch(v1)
  {
    case 1:

      if (a1 <= 1)
      {
        return 2;
      }

      return 1;
    default:
      v3 = sub_100574498();

      if ((v3 & 1) != 0 && a1 > 1)
      {
        return 1;
      }

      else
      {
        return 2;
      }
  }
}

unint64_t sub_1000CDFF8@<X0>(Swift::String *a1@<X0>, MusicCore::MenuType_optional *a2@<X8>)
{
  result = _s9MusicCore8MenuTypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_1000CE028@<X0>(uint64_t *a1@<X8>)
{
  result = MenuType.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *ActionType.mutuallyExclusiveActions.getter(unsigned __int8 a1)
{
  if (a1 > 0x18u)
  {
    if (a1 > 0x2Fu)
    {
      switch(a1)
      {
        case '0':
          v1 = &off_100682570;
          return sub_1000D0AB8(v1);
        case '1':
          v1 = &off_100682548;
          return sub_1000D0AB8(v1);
        case '3':
          return &_swiftEmptySetSingleton;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x19u:
          v1 = &off_1006825E8;
          return sub_1000D0AB8(v1);
        case 0x24u:
          v1 = &off_100682660;
          return sub_1000D0AB8(v1);
        case 0x25u:
          v1 = &off_100682688;
          return sub_1000D0AB8(v1);
      }
    }
  }

  else if (a1 > 7u)
  {
    switch(a1)
    {
      case 8u:
        v1 = &off_100682520;
        return sub_1000D0AB8(v1);
      case 0x17u:
        v1 = &off_100682598;
        return sub_1000D0AB8(v1);
      case 0x18u:
        v1 = &off_1006825C0;
        return sub_1000D0AB8(v1);
    }
  }

  else
  {
    switch(a1)
    {
      case 2u:
        v1 = &off_100682610;
        return sub_1000D0AB8(v1);
      case 3u:
        v1 = &off_100682638;
        return sub_1000D0AB8(v1);
      case 7u:
        v1 = &off_1006824F8;
        return sub_1000D0AB8(v1);
    }
  }

  return 0;
}

uint64_t ActionType.rawValue.getter(char a1)
{
  result = 0x62694C6F54646461;
  switch(a1)
  {
    case 1:
      return 0x64616F6C6E776F64;
    case 2:
      return 0x657469726F766166;
    case 3:
      return 0x6F7661466F646E75;
    case 4:
      return 0x6572616873;
    case 5:
      return 2036427888;
    case 6:
      return 0x656C6666756873;
    case 7:
      return 7235952;
    case 8:
      return 0x6E69706E75;
    case 9:
      return 0x6C50657461657263;
    case 10:
      v3 = 1634038371;
      goto LABEL_34;
    case 11:
      return 0x616C506F54646461;
    case 12:
      return 0x7473696C79616C70;
    case 13:
      return 0x726F62616C6C6F63;
    case 14:
    case 41:
      return 0xD000000000000015;
    case 15:
      return 0xD000000000000011;
    case 16:
    case 29:
    case 47:
      return 0xD000000000000012;
    case 17:
      return 0xD000000000000011;
    case 18:
    case 46:
      return 0xD000000000000017;
    case 19:
      v4 = 0x656D616E6572;
      goto LABEL_42;
    case 20:
      v4 = 0x6F5465766F6DLL;
      goto LABEL_42;
    case 21:
      return 0x766F4D6575657571;
    case 22:
      return 0x7478654E79616C70;
    case 23:
      return 0x6575516F54646461;
    case 24:
      return 0x7473614C79616C70;
    case 25:
      return 0x6574664179616C70;
    case 26:
      return 0xD000000000000010;
    case 27:
      return 0x7453657461657263;
    case 28:
      return 0x79616C506F546F67;
    case 30:
      return 0x75626C416F546F67;
    case 31:
      return 0x697472416F546F67;
    case 32:
      v5 = 2003789939;
      goto LABEL_48;
    case 33:
      return 0x6C6C754677656976;
    case 34:
      return 0x72794C6572616873;
    case 35:
      return 0x6C436E496E65706FLL;
    case 36:
      return 0x4C74736567677573;
    case 37:
      return 0x676775536F646E75;
    case 38:
      v5 = 1702125938;
LABEL_48:
      result = v5 | 0x676E6F5300000000;
      break;
    case 39:
      result = 0xD000000000000014;
      break;
    case 40:
    case 42:
    case 44:
      result = 0xD000000000000013;
      break;
    case 43:
      result = 0xD00000000000001BLL;
      break;
    case 45:
      result = 0xD000000000000016;
      break;
    case 48:
      result = 0x6F4465766F6D6572;
      break;
    case 49:
      result = 0xD000000000000011;
      break;
    case 50:
      v3 = 1701602660;
LABEL_34:
      v4 = v3 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
LABEL_42:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6F46000000000000;
      break;
    case 51:
      result = 0x65766F6D6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000CE880(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_100574498();
  }

  return v12 & 1;
}

unint64_t sub_1000CE914@<X0>(Swift::String *a1@<X0>, MusicCore::ActionType_optional *a2@<X8>)
{
  result = _s9MusicCore10ActionTypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_1000CE944@<X0>(uint64_t *a1@<X8>)
{
  result = ActionType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_1000CE998(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_100574678();
  a3(v5);
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_1000CEA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_1005729F8();
}

Swift::Int sub_1000CEA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_100574678();
  a4(v6);
  sub_1005729F8();

  return sub_1005746C8();
}

char *sub_1000CEB00(char *result, uint64_t a2)
{
  v2 = *(result + 2);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = result + 32;
  v4 = _swiftEmptyArrayStorage;
  while (1)
  {
    v5 = *v3;
    v6 = *(*v3 + 16);
    v7 = *(v4 + 2);
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v8 <= *(v4 + 3) >> 1)
    {
      if (*(v5 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v9 = v7 + v6;
      }

      else
      {
        v9 = v7;
      }

      result = sub_1000CF044(result, v9, 1, v4, &qword_1006E6138, &qword_100585100, &type metadata for ActionLookup.Group);
      v4 = result;
      if (*(v5 + 16))
      {
LABEL_14:
        if ((*(v4 + 3) >> 1) - *(v4 + 2) < v6)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v10 = *(v4 + 2);
          v11 = __OFADD__(v10, v6);
          v12 = v10 + v6;
          if (v11)
          {
            goto LABEL_23;
          }

          *(v4 + 2) = v12;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_21;
    }

LABEL_4:
    ++v3;
    if (!--v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}