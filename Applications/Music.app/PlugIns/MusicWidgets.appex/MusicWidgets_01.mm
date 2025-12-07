uint64_t sub_10001F5F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001F658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10056CAA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
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

uint64_t sub_10001F7A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10056CAA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_10001F858(uint64_t a1)
{
  sub_10056CAA8();
  if (v1 <= 0x3F)
  {
    sub_10001F8F4();
    if (v2 <= 0x3F)
    {
      sub_100010A58(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001F8F4()
{
  if (!qword_1006DFE60)
  {
    v0 = sub_100573C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1006DFE60);
    }
  }
}

unint64_t sub_10001F944()
{
  result = qword_1006E0BA8;
  if (!qword_1006E0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0BA8);
  }

  return result;
}

uint64_t sub_10001F998(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100010324(&qword_1006DFF98, &qword_10057BB20);
    sub_10001FA34(a2, type metadata accessor for WidgetMusicItem, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001FA34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001FA90()
{
  result = qword_1006E0BB8;
  if (!qword_1006E0BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0BB8);
  }

  return result;
}

unint64_t sub_10001FAE8()
{
  result = qword_1006E0BC0;
  if (!qword_1006E0BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0BC0);
  }

  return result;
}

unint64_t sub_10001FB40()
{
  result = qword_1006E0BC8;
  if (!qword_1006E0BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0BC8);
  }

  return result;
}

uint64_t sub_10001FB94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461446863746566 && a2 == 0xE900000000000065;
  if (v4 || (sub_100574498() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974 || (sub_100574498() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6974617473 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_100574498();

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

uint64_t sub_10001FCCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001FD4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10001FDDC(uint64_t a1)
{
  result = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001FE64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = sub_10056EDA8();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecommendationsWidgetContentView(0);
  __chkstk_darwin();
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100009DCC(&qword_1006E0C60, &qword_10057C7A0);
  v22 = *(v10 - 8);
  v23 = v10;
  __chkstk_darwin();
  v12 = &v22 - v11;
  *v9 = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0C68, &qword_10057C7D0);
  swift_storeEnumTagMultiPayload();
  v13 = *(v7 + 20);
  *(v9 + v13) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0148, &qword_10057C450);
  swift_storeEnumTagMultiPayload();
  v14 = *(v7 + 24);
  *(v9 + v14) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0C70, &unk_10057C840);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  if ((sub_100075E34() & 1) != 0 || *(v2 + *(v15 + 40) + 8))
  {
    sub_10056ED98();
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
    sub_1000283AC(&qword_1006E0C78, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
    sub_100009DCC(&qword_1006E0C80, &unk_10057D530);
    sub_100010BC0(&qword_1006E0C88, &qword_1006E0C80, &unk_10057D530, &protocol conformance descriptor for [A]);
    sub_100573DA8();
  }

  sub_1000283AC(&qword_1006E0C90, type metadata accessor for RecommendationsWidgetContentView, &unk_10057C8FC);
  sub_100570358();
  (*(v4 + 8))(v6, v3);
  sub_100028448(v9, type metadata accessor for RecommendationsWidgetContentView);
  KeyPath = swift_getKeyPath();
  v17 = sub_100009DCC(&qword_1006E0C98, &qword_10057C850);
  v18 = v24;
  v19 = (v24 + *(v17 + 36));
  v20 = sub_100009DCC(&qword_1006E0CA0, &qword_10057C858);
  sub_100028C7C(v2, v19 + *(v20 + 28), type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
  *v19 = KeyPath;
  return (*(v22 + 32))(v18, v12, v23);
}

uint64_t sub_100020284()
{
  sub_1000283F4();

  return sub_10056F1A8();
}

uint64_t sub_1000202CC(uint64_t a1)
{
  type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_100028C7C(a1, &v7 - v4, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
  sub_100028C7C(v5, v3, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
  sub_1000283F4();
  sub_10056F1B8();
  return sub_100028448(v5, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
}

uint64_t sub_100020440@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_10056E698();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin();
  v45 = (&v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10056F898();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin();
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&qword_1006E0D78, &qword_10057C950);
  __chkstk_darwin();
  v10 = &v40 - v9;
  v11 = sub_100009DCC(&qword_1006E0D80, &qword_10057C958);
  v43 = *(v11 - 8);
  v44 = v11;
  __chkstk_darwin();
  v49 = &v40 - v12;
  v13 = sub_1005724A8();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = (&v40 - v17);
  v40 = type metadata accessor for RecommendationsWidgetContentView(0);
  sub_1000A8194(v18);
  (*(v14 + 32))(v16, v18, v13);
  v19 = (*(v14 + 88))(v16, v13);
  if (v19 == enum case for WidgetFamily.systemMedium(_:))
  {
    v20 = 8.0;
    v21 = 10.0;
    v22 = 2;
    v23 = 1;
  }

  else if (v19 == enum case for WidgetFamily.systemLarge(_:))
  {
    v20 = 16.0;
    v21 = 14.0;
    v23 = 1;
    v22 = 4;
  }

  else if (v19 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v20 = 12.0;
    v21 = 20.0;
    v23 = 2;
    v22 = 4;
  }

  else
  {
    (*(v14 + 8))(v16, v13);
    v22 = 0;
    v23 = 0;
    v21 = 0.0;
    v20 = 0.0;
  }

  *v10 = sub_10056F368();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v24 = sub_100009DCC(&qword_1006E0D88, &unk_10057C960);
  sub_100020A08(v2, v22, v23, &v10[*(v24 + 44)], v21, v20);
  v25 = sub_10056FA88();
  sub_10056E598();
  v26 = &v10[*(v8 + 36)];
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  sub_10056F888();
  __chkstk_darwin();
  sub_1005709E8();
  sub_100009DCC(&qword_1006E0D90, &unk_10057D520);
  sub_100028A20();
  sub_100028AD8();
  sub_1005701E8();
  (*(v41 + 8))(v7, v42);
  sub_10001036C(v10, &qword_1006E0D78, &qword_10057C950);
  if (sub_10002254C())
  {
    v32 = v45;
    v31 = v46;
    v33 = v47;
    (*(v46 + 104))(v45, enum case for ColorScheme.light(_:), v47);
  }

  else
  {
    v32 = v45;
    sub_1000A81E4(v45);
    v31 = v46;
    v33 = v47;
  }

  KeyPath = swift_getKeyPath();
  v35 = sub_100009DCC(&qword_1006E0DD8, &unk_10057C9B0);
  v36 = v48;
  v37 = (v48 + *(v35 + 36));
  v38 = sub_100009DCC(&qword_1006E0DE0, &qword_10057E940);
  (*(v31 + 32))(v37 + *(v38 + 28), v32, v33);
  *v37 = KeyPath;
  return (*(v43 + 32))(v36, v49, v44);
}

uint64_t sub_100020A08@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v90 = a3;
  v108 = a2;
  v107 = a4;
  v105 = sub_100009DCC(&qword_1006E0DF8, &qword_10057C9D8);
  __chkstk_darwin();
  v10 = &v81 - v9;
  v106 = sub_100009DCC(&qword_1006E0E00, &qword_10057C9E0);
  __chkstk_darwin();
  v82 = &v81 - v11;
  v97 = sub_1005724A8();
  v96 = *(v97 - 8);
  __chkstk_darwin();
  v95 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = &v81 - v13;
  v92 = sub_10056F808();
  v91 = *(v92 - 8);
  __chkstk_darwin();
  v89 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for RecommendationsWidgetContentView(0);
  v86 = *(v93 - 8);
  v15 = *(v86 + 64);
  __chkstk_darwin();
  v98 = sub_100009DCC(&qword_1006E0E08, &qword_10057C9E8);
  __chkstk_darwin();
  v17 = &v81 - v16;
  v102 = sub_100009DCC(&qword_1006E0E10, &qword_10057C9F0);
  v101 = *(v102 - 8);
  __chkstk_darwin();
  v100 = &v81 - v18;
  sub_100009DCC(&qword_1006E0E18, &qword_10057C9F8);
  __chkstk_darwin();
  v104 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = &v81 - v20;
  __chkstk_darwin();
  v103 = &v81 - v21;
  v22 = type metadata accessor for WidgetMusicRecommendation(0) - 8;
  __chkstk_darwin();
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v88 = (&v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v28 = &v81 - v27;
  v29 = a1;
  sub_1000A81BC((&v81 - v27));
  v87 = v25;
  sub_100028C7C(&v28[*(v25 + 20)], v24, type metadata accessor for WidgetMusicRecommendation);
  sub_100028448(v28, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
  v30 = &v24[*(v22 + 32)];
  v31 = *v30;
  v32 = v30[1];

  sub_100028448(v24, type metadata accessor for WidgetMusicRecommendation);
  if (v32)
  {
    goto LABEL_4;
  }

  if (qword_1006DF9E0 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v31 = qword_1006FC228;
    v32 = unk_1006FC230;

LABEL_4:
    v33 = v108;
    v34 = sub_10056FA58();
    sub_10056E598();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v120 = 0;
    *v17 = sub_1005709E8();
    *(v17 + 1) = v43;
    *(v17 + 2) = 0x4042000000000000;
    v17[24] = 0;
    *(v17 + 4) = a6;
    v17[40] = 0;
    if ((v33 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

  v83 = v34;
  v84 = v32;
  v85 = v31;
  v108 = v10;
  sub_100009DCC(&qword_1006E0E20, &unk_10057CA00);
  *&v112 = 0;
  *(&v112 + 1) = v33;
  swift_getKeyPath();
  sub_100028C7C(v29, &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecommendationsWidgetContentView);
  v44 = (*(v86 + 80) + 48) & ~*(v86 + 80);
  v45 = swift_allocObject();
  v46 = v90;
  *(v45 + 16) = v33;
  *(v45 + 24) = v46;
  *(v45 + 32) = a5;
  *(v45 + 40) = a6;
  sub_100028CE4(&v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v44, type metadata accessor for RecommendationsWidgetContentView);
  sub_100009DCC(&qword_1006E0E28, &qword_10057CA30);
  sub_100009DCC(&qword_1006E0E30, &qword_10057CA38);
  sub_100029418();
  sub_100010BC0(&qword_1006E0E48, &qword_1006E0E30, &qword_10057CA38, &protocol conformance descriptor for GridRow<A>);
  sub_1005708B8();
  v47 = v89;
  sub_10056F7F8();
  v48 = sub_100010BC0(&qword_1006E0E50, &qword_1006E0E08, &qword_10057C9E8, &protocol conformance descriptor for Grid<A>);
  v49 = v100;
  v50 = v98;
  v90 = v48;
  sub_1005701F8();
  (*(v91 + 8))(v47, v92);
  sub_10001036C(v17, &qword_1006E0E08, &qword_10057C9E8);
  v51 = v88;
  sub_1000A81BC(v88);
  v52 = (v51 + *(v87 + 40));
  v54 = *v52;
  v53 = v52[1];

  sub_100028448(v51, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
  v55 = v94;
  sub_1000A8194(v94);
  v56 = v96;
  v57 = v95;
  v58 = v97;
  (*(v96 + 104))(v95, enum case for WidgetFamily.systemMedium(_:), v97);
  sub_1000283AC(&qword_1006E0E58, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_100572CB8();
  sub_100572CB8();
  v59 = *(v56 + 8);
  v59(v57, v58);
  v59(v55, v58);
  if (v53)
  {
    v60 = 16.0;
    if (v112 == v109)
    {
      v60 = 0.0;
    }

    v61 = v82;
    v62 = &v82[*(v106 + 36)];
    *v62 = v54;
    *(v62 + 1) = v53;
    *(v62 + 2) = v60;
    *(v62 + 3) = 0x4030000000000000;
    type metadata accessor for CGSize(0);
    v109 = 0uLL;
    sub_100570668();
    v63 = v113;
    *(v62 + 2) = v112;
    *(v62 + 6) = v63;
    v64 = type metadata accessor for ErrorMessageModifier(0);
    sub_10056FDE8();
    v65 = *(v64 + 36);
    *&v62[v65] = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0148, &qword_10057C450);
    swift_storeEnumTagMultiPayload();
    v66 = &v62[*(v64 + 40)];
    *v66 = swift_getKeyPath();
    *(v66 + 1) = 0;
    *(v66 + 2) = 0;
    *(v66 + 3) = 0;
    v66[32] = 0;
    v67 = v101;
    v68 = v102;
    (*(v101 + 16))(v61, v49, v102);
    sub_10000CC8C(v61, v108, &qword_1006E0E00, &qword_10057C9E0);
    swift_storeEnumTagMultiPayload();
    sub_1000294F8();
    *&v112 = v50;
    *(&v112 + 1) = v90;
    swift_getOpaqueTypeConformance2();
    v69 = v99;
    sub_10056F5B8();
    sub_10001036C(v61, &qword_1006E0E00, &qword_10057C9E0);
  }

  else
  {
    v67 = v101;
    v68 = v102;
    (*(v101 + 16))(v108, v49, v102);
    swift_storeEnumTagMultiPayload();
    sub_1000294F8();
    *&v112 = v50;
    *(&v112 + 1) = v90;
    swift_getOpaqueTypeConformance2();
    v69 = v99;
    sub_10056F5B8();
  }

  (*(v67 + 8))(v49, v68);
  v70 = v103;
  sub_100019B40(v69, v103, &qword_1006E0E18, &qword_10057C9F8);
  v71 = v104;
  sub_10000CC8C(v70, v104, &qword_1006E0E18, &qword_10057C9F8);
  v72 = v85;
  *&v109 = v85;
  v73 = v84;
  *(&v109 + 1) = v84;
  v74 = v83;
  LOBYTE(v110) = v83;
  *(&v110 + 1) = *v119;
  DWORD1(v110) = *&v119[3];
  *(&v110 + 1) = v36;
  *v111 = v38;
  *&v111[8] = v40;
  *&v111[16] = v42;
  v111[24] = 0;
  v75 = v109;
  v76 = v110;
  v77 = *v111;
  v78 = v107;
  *(v107 + 41) = *&v111[9];
  v78[1] = v76;
  v78[2] = v77;
  *v78 = v75;
  v79 = sub_100009DCC(&qword_1006E0E70, &qword_10057CA40);
  sub_10000CC8C(v71, v78 + *(v79 + 48), &qword_1006E0E18, &qword_10057C9F8);
  sub_10000CC8C(&v109, &v112, &qword_1006E0E78, &qword_10057CA48);
  sub_10001036C(v70, &qword_1006E0E18, &qword_10057C9F8);
  sub_10001036C(v71, &qword_1006E0E18, &qword_10057C9F8);
  *&v112 = v72;
  *(&v112 + 1) = v73;
  LOBYTE(v113) = v74;
  *(&v113 + 1) = *v119;
  HIDWORD(v113) = *&v119[3];
  v114 = v36;
  v115 = v38;
  v116 = v40;
  v117 = v42;
  v118 = 0;
  return sub_10001036C(&v112, &qword_1006E0E78, &qword_10057CA48);
}

void sub_1000217C0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v14 = *(type metadata accessor for RecommendationsWidgetContentView(0) - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v16 = *a1;
  *a5 = 0;
  *(a5 + 8) = 1;
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100009DCC(&qword_1006E0E30, &qword_10057CA38);
    v19[0] = 0;
    v19[1] = a3;
    swift_getKeyPath();
    sub_100028C7C(a4, v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecommendationsWidgetContentView);
    v17 = (*(v14 + 80) + 56) & ~*(v14 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = a2;
    *(v18 + 32) = a3;
    *(v18 + 40) = a6;
    *(v18 + 48) = a7;
    sub_100028CE4(v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for RecommendationsWidgetContentView);
    sub_100009DCC(&qword_1006E0E28, &qword_10057CA30);
    sub_100009DCC(&qword_1006E0E80, &qword_10057CA80);
    sub_100029418();
    sub_100029CF8();
    sub_1005708B8();
  }
}

void sub_1000219CC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v37 = a5;
  v38 = a4;
  v41 = a2;
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v32 - v8;
  v9 = sub_10056C8A8();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100009DCC(&qword_1006E0E98, &qword_10057CA88);
  v35 = *(v12 - 8);
  v36 = v12;
  __chkstk_darwin();
  v34 = &v32 - v13;
  type metadata accessor for WidgetMusicRecommendation(0);
  __chkstk_darwin();
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v18 = (&v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v32 - v21;
  v23 = a3 * *a1;
  if ((a3 * *a1) >> 64 != v23 >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  v24 = v41 + v23;
  if (__OFADD__(v41, v23))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (__OFSUB__(8, v24))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v41 = 8 - v24;
  sub_1000A81BC(v18);
  sub_100028C7C(v18 + *(v16 + 20), v15, type metadata accessor for WidgetMusicRecommendation);
  sub_100028448(v18, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);

  sub_100028448(v15, type metadata accessor for WidgetMusicRecommendation);
  v25 = type metadata accessor for WidgetMusicItem(0);
  Array.subscript.getter(v25, v22);

  sub_10000CC8C(v22, v20, &qword_1006E0618, &unk_10057C230);
  if ((*(*(v25 - 8) + 48))(v20, 1, v25) != 1)
  {
    v29 = v39;
    (*(v10 + 16))(v39, &v20[*(v25 + 28)], v9);
    sub_100028448(v20, type metadata accessor for WidgetMusicItem);
    (*(v10 + 56))(v29, 0, 1, v9);
    (*(v10 + 32))(v40, v29, v9);
LABEL_9:
    __chkstk_darwin();
    *(&v32 - 2) = v22;
    type metadata accessor for SongCellView(0);
    sub_1000283AC(&qword_1006E0EA0, type metadata accessor for SongCellView, &unk_10057CB28);
    v30 = v34;
    sub_10056FC78();
    sub_100010BC0(&qword_1006E0E90, &qword_1006E0E98, &qword_10057CA88, &protocol conformance descriptor for Link<A>);
    v31 = v36;
    sub_100570068();
    (*(v35 + 8))(v30, v31);
    sub_10001036C(v22, &qword_1006E0618, &unk_10057C230);
    return;
  }

  sub_10001036C(v20, &qword_1006E0618, &unk_10057C230);
  v26 = v39;
  (*(v10 + 56))(v39, 1, 1, v9);
  v27 = v33;
  sub_10056C868();
  v28 = *(v10 + 48);
  if (v28(v27, 1, v9) != 1)
  {
    (*(v10 + 32))(v40, v27, v9);
    if (v28(v26, 1, v9) != 1)
    {
      sub_10001036C(v26, qword_1006E1D50, &qword_10057CA90);
    }

    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_100022068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000CC8C(a1, a2, &qword_1006E0618, &unk_10057C230);
  v3 = type metadata accessor for SongCellView(0);
  v4 = v3[5];
  *(a2 + v4) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0C68, &qword_10057C7D0);
  swift_storeEnumTagMultiPayload();
  v5 = v3[6];
  *(a2 + v5) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0148, &qword_10057C450);
  swift_storeEnumTagMultiPayload();
  v6 = v3[7];
  *(a2 + v6) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0EA8, &qword_10057CAC8);
  swift_storeEnumTagMultiPayload();
  v7 = v3[8];
  *(a2 + v7) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0EB0, &qword_10057CB00);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000221A0@<X0>(uint64_t a1@<X8>)
{
  v17[0] = a1;
  sub_100009DCC(&qword_1006E0DF0, &qword_10057C9D0);
  __chkstk_darwin();
  v2 = v17 - v1;
  v3 = sub_100570558();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E0DC0, &unk_100580E00);
  __chkstk_darwin();
  v8 = v17 - v7;
  v9 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v11 = (v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_10002254C() & 1) != 0 && (sub_1000A81BC(v11), v12 = *(v11 + *(v9 + 36)), v13 = v12, sub_100028448(v11, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry), v12))
  {
    v14 = v13;
    sub_100570538();
    (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
    v15 = sub_1005705D8();

    (*(v4 + 8))(v6, v3);
    v17[1] = v15;
    sub_100570078();

    sub_10000CC8C(v8, v2, &qword_1006E0DC0, &unk_100580E00);
    swift_storeEnumTagMultiPayload();
    sub_100028B64();
    sub_100028C20();
    sub_10056F5B8();

    return sub_10001036C(v8, &qword_1006E0DC0, &unk_100580E00);
  }

  else
  {
    if (qword_1006DF950 != -1)
    {
      swift_once();
    }

    *v2 = xmmword_1006FC100;
    *(v2 + 8) = *(&xmmword_1006FC100 + 8);
    *(v2 + 24) = *&algn_1006FC110[8];
    swift_storeEnumTagMultiPayload();
    sub_100028B64();
    sub_100028C20();

    return sub_10056F5B8();
  }
}

uint64_t sub_10002254C()
{
  v93 = sub_100009DCC(&qword_1006E0DE8, &unk_10057C9C0);
  __chkstk_darwin();
  v96 = &v78 - v1;
  v83 = sub_10056F198();
  v85 = *(v83 - 8);
  __chkstk_darwin();
  v82 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_100009DCC(&qword_1006E0C68, &qword_10057C7D0);
  __chkstk_darwin();
  v94 = &v78 - v3;
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v81 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v98 = &v78 - v5;
  __chkstk_darwin();
  v7 = &v78 - v6;
  v8 = type metadata accessor for WidgetMusicItem(0);
  v95 = *(v8 - 1);
  __chkstk_darwin();
  v79 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v78 - v10;
  v12 = sub_1005724A8();
  v88 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = (&v78 - v15);
  v16 = type metadata accessor for WidgetMusicRecommendation(0) - 8;
  __chkstk_darwin();
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v89 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v78 - v21;
  sub_1000A81BC((&v78 - v21));
  v90 = v19;
  sub_100028C7C(&v22[*(v19 + 20)], v18, type metadata accessor for WidgetMusicRecommendation);
  sub_100028448(v22, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
  v23 = *&v18[*(v16 + 40)];

  sub_100028448(v18, type metadata accessor for WidgetMusicRecommendation);
  type metadata accessor for RecommendationsWidgetContentView(0);
  v91 = v0;
  v24 = v86;
  sub_1000A8194(v86);
  v25 = v14;
  v26 = v88;
  (*(v88 + 32))(v25, v24, v12);
  v27 = (*(v26 + 88))(v25, v12);
  if (v27 == enum case for WidgetFamily.systemMedium(_:))
  {
    v28 = 2;
  }

  else if (v27 == enum case for WidgetFamily.systemLarge(_:))
  {
    v28 = 4;
  }

  else if (v27 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v28 = 8;
  }

  else
  {
    (*(v26 + 8))(v25, v12);
    v28 = 0;
  }

  result = sub_100074754(v28, v23);
  v88 = v32;
  v33 = v31 >> 1;
  if (v30 != v31 >> 1)
  {
    v35 = v30;
    v78 = result;
    v36 = v96;
    v86 = (v95 + 56);
    v87 = v11;
    v80 = (v85 + 1);
    v84 = v31 >> 1;
    v85 = (v95 + 48);
    v97 = v7;
    while (1)
    {
      if (v35 >= v33)
      {
        __break(1u);
        return result;
      }

      v37 = v95;
      sub_100028C7C(v88 + *(v95 + 72) * v35, v11, type metadata accessor for WidgetMusicItem);
      sub_100028C7C(v11, v7, type metadata accessor for WidgetMusicItem);
      v38 = *(v37 + 56);
      v39 = v8;
      v38(v7, 0, 1, v8);
      v40 = v94;
      sub_10000CC8C(v91, v94, &qword_1006E0C68, &qword_10057C7D0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v41 = v89;
        sub_100028CE4(v40, v89, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
      }

      else
      {
        v42 = sub_100573438();
        v43 = sub_10056F9D8();
        sub_10056DE58(v42, &_mh_execute_header, v43, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage, v78);

        v44 = v82;
        sub_10056F188();
        v41 = v89;
        swift_getAtKeyPath();

        (*v80)(v44, v83);
      }

      v45 = v98;
      sub_10000CC8C(v41 + *(v90 + 28), v98, &qword_1006E0618, &unk_10057C230);
      sub_100028448(v41, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
      v46 = *(v93 + 48);
      v47 = v97;
      sub_10000CC8C(v97, v36, &qword_1006E0618, &unk_10057C230);
      sub_10000CC8C(v45, v36 + v46, &qword_1006E0618, &unk_10057C230);
      v48 = *v85;
      v8 = v39;
      if ((*v85)(v36, 1, v39) == 1)
      {
        break;
      }

      v49 = v81;
      sub_10000CC8C(v36, v81, &qword_1006E0618, &unk_10057C230);
      if (v48(v36 + v46, 1, v39) == 1)
      {
        sub_10001036C(v98, &qword_1006E0618, &unk_10057C230);
        v7 = v97;
        sub_10001036C(v97, &qword_1006E0618, &unk_10057C230);
        v11 = v87;
        sub_100028448(v87, type metadata accessor for WidgetMusicItem);
        sub_100028448(v49, type metadata accessor for WidgetMusicItem);
LABEL_20:
        v50 = v36;
        v51 = &qword_1006E0DE8;
        v52 = &unk_10057C9C0;
        goto LABEL_21;
      }

      v53 = v79;
      sub_100028CE4(v36 + v46, v79, type metadata accessor for WidgetMusicItem);
      v54 = v8[9];
      v55 = *(v49 + v54);
      v56 = *(v49 + v54 + 8);
      v57 = (v53 + v54);
      v7 = v97;
      v11 = v87;
      if ((v55 != *v57 || v56 != v57[1]) && (sub_100574498() & 1) == 0)
      {
        if ((v58 = v8[10], v59 = (v49 + v58), (v60 = *(v49 + v58 + 8)) == 0) || (v61 = (v53 + v58), (v62 = v61[1]) == 0) || (*v59 != *v61 || v60 != v62) && (sub_100574498() & 1) == 0)
        {
          v63 = v8[11];
          v64 = *(v49 + v63);
          v65 = *(v49 + v63 + 8);
          v66 = (v53 + v63);
          if ((v64 != *v66 || v65 != v66[1]) && (sub_100574498() & 1) == 0)
          {
            goto LABEL_49;
          }
        }
      }

      v67 = v8[12];
      v68 = (v49 + v67);
      v69 = *(v49 + v67 + 8);
      v70 = (v53 + v67);
      v71 = v70[1];
      if (v69)
      {
        if (v71 && (*v68 == *v70 && v69 == v71 || (sub_100574498() & 1) != 0))
        {
LABEL_50:
          sub_100028448(v53, type metadata accessor for WidgetMusicItem);
          sub_10001036C(v98, &qword_1006E0618, &unk_10057C230);
          sub_10001036C(v7, &qword_1006E0618, &unk_10057C230);
          sub_100028448(v11, type metadata accessor for WidgetMusicItem);
          sub_100028448(v49, type metadata accessor for WidgetMusicItem);
          v36 = v96;
LABEL_51:
          sub_10001036C(v36, &qword_1006E0618, &unk_10057C230);
LABEL_52:
          v34 = 1;
          goto LABEL_53;
        }
      }

      else if (!v71)
      {
        goto LABEL_50;
      }

      v72 = v8[13];
      v73 = (v49 + v72);
      v74 = *(v49 + v72 + 8);
      v75 = (v53 + v72);
      v76 = v75[1];
      if (!v74)
      {
        if (!v76)
        {
          goto LABEL_50;
        }

LABEL_49:
        sub_100028448(v53, type metadata accessor for WidgetMusicItem);
        sub_10001036C(v98, &qword_1006E0618, &unk_10057C230);
        sub_10001036C(v7, &qword_1006E0618, &unk_10057C230);
        sub_100028448(v11, type metadata accessor for WidgetMusicItem);
        sub_100028448(v49, type metadata accessor for WidgetMusicItem);
        v50 = v96;
        v51 = &qword_1006E0618;
        v52 = &unk_10057C230;
LABEL_21:
        result = sub_10001036C(v50, v51, v52);
        goto LABEL_22;
      }

      if (!v76)
      {
        goto LABEL_49;
      }

      if (*v73 == *v75 && v74 == v76)
      {
        goto LABEL_50;
      }

      v77 = sub_100574498();
      sub_100028448(v53, type metadata accessor for WidgetMusicItem);
      sub_10001036C(v98, &qword_1006E0618, &unk_10057C230);
      sub_10001036C(v7, &qword_1006E0618, &unk_10057C230);
      sub_100028448(v11, type metadata accessor for WidgetMusicItem);
      sub_100028448(v49, type metadata accessor for WidgetMusicItem);
      result = sub_10001036C(v96, &qword_1006E0618, &unk_10057C230);
      if (v77)
      {
        goto LABEL_52;
      }

LABEL_22:
      ++v35;
      v33 = v84;
      if (v84 == v35)
      {
        v34 = 0;
        goto LABEL_53;
      }
    }

    sub_10001036C(v45, &qword_1006E0618, &unk_10057C230);
    sub_10001036C(v47, &qword_1006E0618, &unk_10057C230);
    v11 = v87;
    sub_100028448(v87, type metadata accessor for WidgetMusicItem);
    v7 = v47;
    if (v48(v36 + v46, 1, v39) == 1)
    {
      goto LABEL_51;
    }

    goto LABEL_20;
  }

  v34 = 0;
LABEL_53:
  swift_unknownObjectRelease();
  return v34;
}

uint64_t sub_1000230F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v332 = a2;
  v3 = sub_100009DCC(&qword_1006E0FA0, &qword_10057CB88);
  __chkstk_darwin();
  v309 = &v271 - v4;
  v5 = sub_100009DCC(&qword_1006E0FA8, &unk_10057CB90);
  v307 = *(v5 - 8);
  __chkstk_darwin();
  v288 = &v271 - v6;
  v7 = sub_10056EAC8();
  v286 = *(v7 - 8);
  v287 = v7;
  __chkstk_darwin();
  v285 = &v271 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v300 = &v271 - v9;
  v283 = sub_100009DCC(&qword_1006E0FB0, &unk_10057EC80);
  __chkstk_darwin();
  v282 = &v271 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v281 = &v271 - v11;
  v280 = sub_100009DCC(&qword_1006E0FB8, &unk_10057CBA0);
  __chkstk_darwin();
  v284 = &v271 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v324 = &v271 - v13;
  sub_100009DCC(&qword_1006E0528, &qword_10057BF80);
  __chkstk_darwin();
  v295 = &v271 - v14;
  v296 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  v294 = *(v296 - 8);
  __chkstk_darwin();
  v304 = &v271 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = sub_100009DCC(&qword_1006E0DE8, &unk_10057C9C0);
  __chkstk_darwin();
  v292 = &v271 - v16;
  v318 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v293 = &v271 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v290 = (&v271 - v18);
  sub_100009DCC(&qword_1006E0FC0, &qword_10057CBB0);
  __chkstk_darwin();
  v305 = &v271 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v306 = &v271 - v20;
  sub_100009DCC(&qword_1006E0FC8, &qword_10057CBB8);
  __chkstk_darwin();
  v317 = &v271 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v315 = (&v271 - v22);
  sub_100009DCC(&qword_1006E0FD0, &qword_10057CBC0);
  __chkstk_darwin();
  v316 = &v271 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v313 = (&v271 - v24);
  sub_100009DCC(&qword_1006E0FD8, &qword_10057CBC8);
  __chkstk_darwin();
  v314 = &v271 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v312 = (&v271 - v26);
  sub_100009DCC(&qword_1006E0FE0, &qword_10057CBD0);
  __chkstk_darwin();
  v303 = &v271 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v327 = &v271 - v28;
  __chkstk_darwin();
  v326 = &v271 - v29;
  v311 = sub_100009DCC(&qword_1006E0FE8, &qword_10057CBD8);
  __chkstk_darwin();
  v325 = &v271 - v30;
  v310 = sub_100009DCC(&qword_1006E0FF0, &qword_10057CBE0);
  __chkstk_darwin();
  v341 = &v271 - v31;
  sub_100009DCC(&qword_1006E0FF8, &qword_10057CBE8);
  __chkstk_darwin();
  v297 = &v271 - v32;
  v336 = sub_1005724A8();
  v322 = *(v336 - 8);
  __chkstk_darwin();
  v321 = &v271 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v320 = &v271 - v34;
  v319 = sub_100009DCC(&qword_1006E1000, &qword_10057CBF0);
  __chkstk_darwin();
  v342 = (&v271 - v35);
  v337 = sub_100009DCC(&qword_1006E1008, &qword_10057CBF8);
  __chkstk_darwin();
  v338 = &v271 - v36;
  v339 = sub_100009DCC(&qword_1006E1010, &qword_10057CC00);
  __chkstk_darwin();
  v340 = &v271 - v37;
  v38 = sub_100009DCC(&qword_1006E1018, &qword_10057CC08);
  v301 = *(v38 - 8);
  v302 = v38;
  __chkstk_darwin();
  v333 = &v271 - v39;
  v328 = sub_100009DCC(&qword_1006E1020, &qword_10057CC10);
  __chkstk_darwin();
  v329 = (&v271 - v40);
  v41 = type metadata accessor for WidgetMusicItem(0);
  v42 = *(v41 - 8);
  __chkstk_darwin();
  v334 = (&v271 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009DCC(&qword_1006E1028, &qword_10057CC18);
  __chkstk_darwin();
  v331 = &v271 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v330 = &v271 - v45;
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v279 = &v271 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v298 = &v271 - v47;
  __chkstk_darwin();
  v299 = &v271 - v48;
  __chkstk_darwin();
  v50 = &v271 - v49;
  __chkstk_darwin();
  v52 = &v271 - v51;
  v335 = a1;
  sub_10000CC8C(a1, &v271 - v51, &qword_1006E0618, &unk_10057C230);
  v289 = v42;
  v55 = *(v42 + 48);
  v53 = v42 + 48;
  v54 = v55;
  v56 = v55(v52, 1, v41);
  v308 = v5;
  if (v56 == 1)
  {
    sub_10001036C(v52, &qword_1006E0618, &unk_10057C230);
    v349 = 0u;
    v350 = 0u;
    v351 = 0;
  }

  else
  {
    *(&v350 + 1) = v41;
    v351 = &off_100681290;
    v57 = sub_10002AB7C(&v349);
    sub_100028CE4(v52, v57, type metadata accessor for WidgetMusicItem);
  }

  v58 = Corner.small.unsafeMutableAddressor();
  v59 = *v58;
  v60 = v58[1];
  v61 = *(v58 + 16);
  v344 = v349;
  v345 = v350;
  v346 = v351;
  v62 = sub_10056FA88();
  sub_10056E598();
  LOBYTE(v343[0]) = 0;
  v349 = v344;
  v350 = v345;
  v351 = v346;
  v352 = v59;
  v353 = v60;
  v354 = v61;
  v355 = v62;
  v356 = v63;
  v357 = v64;
  v358 = v65;
  v359 = v66;
  v360 = 0;
  sub_10000CC8C(v335, v50, &qword_1006E0618, &unk_10057C230);
  if (v54(v50, 1, v41) != 1)
  {
    v69 = v334;
    sub_100028CE4(v50, v334, type metadata accessor for WidgetMusicItem);
    v70 = v69[4];
    v71 = v69[5];
    v323 = v41;
    v273 = v53;
    v274 = v3;
    v272 = v54;
    v275 = v70;
    if (v71)
    {
      v72 = HIBYTE(v71) & 0xF;
      v73 = v70 & 0xFFFFFFFFFFFFLL;
      if ((v71 & 0x2000000000000000) == 0)
      {
        v72 = v73;
      }

      v277 = v72 != 0;
    }

    else
    {
      v277 = 0;
    }

    v74 = *v69;
    v75 = v69[1];
    v76 = sub_100054170(&off_1006800A8);

    v276 = v71;

    v77 = Text.init(optional:options:)(v74, v75, v76);
    v79 = v78;
    v278 = v80;
    v82 = v81;
    v83 = sub_100009DCC(&qword_1006E1048, &unk_10057CC30);
    v84 = v342;
    v85 = (v342 + *(v83 + 36));
    v86 = *(sub_100009DCC(&qword_1006E1050, &qword_10057EB40) + 28);
    v87 = enum case for Text.Case.uppercase(_:);
    v88 = sub_10056FE68();
    v89 = *(v88 - 8);
    (*(v89 + 104))(v85 + v86, v87, v88);
    (*(v89 + 56))(v85 + v86, 0, 1, v88);
    *v85 = swift_getKeyPath();
    *v84 = v77;
    v84[1] = v79;
    v84[2] = v278;
    v84[3] = v82;
    KeyPath = swift_getKeyPath();
    v91 = v84 + *(v319 + 36);
    *v91 = KeyPath;
    *(v91 + 1) = 1;
    v91[16] = 0;
    v92 = type metadata accessor for SongCellView(0);
    v93 = v320;
    sub_1000A8194(v320);
    v95 = v321;
    v94 = v322;
    v96 = v336;
    (*(v322 + 104))(v321, enum case for WidgetFamily.systemMedium(_:), v336);
    sub_1000283AC(&qword_1006E0E58, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    sub_100572CB8();
    sub_100572CB8();
    v97 = *(v94 + 8);
    v97(v95, v96);
    v97(v93, v96);
    if (v344 == v343[0])
    {
      v98 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleCaption2];
      [v98 scaledValueForValue:10.0];

      sub_10056FB88();
      v99 = sub_10056FB38();
      v100 = v297;
      (*(*(v99 - 8) + 56))(v297, 1, 1, v99);
      v101 = sub_10056FBA8();
      sub_10001036C(v100, &qword_1006E0FF8, &qword_10057CBE8);
    }

    else
    {
      sub_10056FC38();
      v101 = sub_10056FB28();
    }

    v102 = v323;
    v103 = v341;
    v104 = v340;
    v105 = v339;
    v106 = v338;
    v107 = v337;
    v108 = swift_getKeyPath();
    sub_100019B40(v342, v106, &qword_1006E1000, &qword_10057CBF0);
    v109 = (v106 + *(v107 + 36));
    *v109 = v108;
    v109[1] = v101;
    if (qword_1006DF938 != -1)
    {
      swift_once();
    }

    v110 = sub_100009DCC(&qword_1006E1058, &qword_10057CCD0);
    v111 = sub_10000C49C(v110, qword_1006FC0D8);
    sub_10000CC8C(v111, v104 + *(v105 + 36), &qword_1006E1058, &qword_10057CCD0);
    sub_100019B40(v106, v104, &qword_1006E1008, &qword_10057CBF8);
    v112 = enum case for DynamicTypeSize.xLarge(_:);
    v113 = sub_10056EBD8();
    (*(*(v113 - 8) + 104))(v103, v112, v113);
    sub_1000283AC(&qword_1006E1060, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    if (sub_1005727E8())
    {
      v297 = v92;
      sub_10002A768();
      sub_100010BC0(&qword_1006E10D0, &qword_1006E0FF0, &qword_10057CBE0, &protocol conformance descriptor for PartialRangeThrough<A>);
      sub_1005700D8();
      sub_10001036C(v103, &qword_1006E0FF0, &qword_10057CBE0);
      sub_10001036C(v104, &qword_1006E1010, &qword_10057CC00);
      v114 = v334;
      v115 = v334[3];
      *&v344 = v334[2];
      *(&v344 + 1) = v115;
      sub_10001B550();

      v116 = sub_10056FF28();
      v319 = v117;
      v320 = v116;
      LODWORD(v310) = v118;
      v321 = v119;
      v322 = v111;
      v120 = *(v114 + *(v102 + 60));
      v121 = *(v120 + 16);
      if (v121)
      {
        v122 = (v120 + 32);
        if (qword_1006DF8E8 != -1)
        {
          swift_once();
        }

        v123 = 0;
        v124 = 0;
        v125 = _swiftEmptyArrayStorage;
        v126 = 0xE000000000000000;
        do
        {
          LODWORD(v337) = v124;
          v342 = v126;
          v338 = v125;
          v339 = v123;
          v341 = v121;
          v127 = *v122;
          v340 = v122 + 1;
          TextBadge.view(favoriteBadgeConfiguration:)(qword_1006E07A0, v127);
          v129 = v128;
          v131 = v130;
          v133 = v132;
          sub_10056FB08();
          sub_10056FB88();
          sub_10056FBE8();

          v134 = sub_10056FE88();
          v136 = v135;
          v138 = v137;
          v336 = v139;

          sub_10001B5A4(v129, v131, v133 & 1);

          LOBYTE(v131) = v337;
          v140 = v339;
          v141 = v134;
          v142 = v136;
          v123 = sub_10056FE58();
          v144 = v143;
          v125 = v145;
          LOBYTE(v143) = v131 & 1;
          v147 = v146;
          v148 = v140;
          v149 = v144;
          sub_10001B5A4(v148, v342, v143);

          v150 = v138 & 1;
          v122 = v340;
          v151 = v341;
          sub_10001B5A4(v141, v142, v150);

          v152 = v123;
          v126 = v147;
          v124 = v149;
          v121 = v151 - 1;
        }

        while (v121);
      }

      else
      {
        v152 = 0;
        LOBYTE(v149) = 0;
        v147 = 0xE000000000000000;
      }

      v153 = v310;
      v154 = v319;
      v102 = v320;
      v155 = sub_10056FE58();
      v156 = v152;
      v157 = v155;
      v342 = v158;
      v160 = v159;
      v341 = v161;
      sub_10001B5A4(v156, v147, v149 & 1);

      sub_10001B5A4(v102, v154, v153 & 1);

      sub_10002569C();
      sub_10056FB68();
      sub_10056FBE8();

      v162 = v342;
      v113 = sub_10056FE88();
      v92 = v163;
      LOBYTE(v102) = v164;

      sub_10001B5A4(v157, v162, v160 & 1);

      if (qword_1006DF930 == -1)
      {
LABEL_25:
        v341 = sub_10056FE18();
        v340 = v165;
        LODWORD(v339) = v166;
        v342 = v167;
        sub_10001B5A4(v113, v92, v102 & 1);

        v168 = v277;
        v336 = v277;
        v169 = swift_getKeyPath();
        v170 = sub_100054170(&off_1006800D0);
        v171 = Text.init(optional:options:)(v275, v276, v170);
        v173 = v172;
        v175 = v174;
        v177 = v176;
        v178 = sub_10002569C();
        v179 = swift_getKeyPath();
        v180 = sub_100009DCC(&qword_1006E10D8, &qword_10057CCF8);
        v181 = v325;
        sub_10000CC8C(v322, v325 + *(v180 + 36), &qword_1006E1058, &qword_10057CCD0);
        *v181 = v171;
        *(v181 + 8) = v173;
        *(v181 + 16) = v175;
        *(v181 + 24) = v177;
        *(v181 + 32) = v179;
        *(v181 + 40) = v178;
        v182 = swift_getKeyPath();
        v183 = v181 + *(v311 + 36);
        *v183 = v182;
        *(v183 + 8) = 1;
        *(v183 + 16) = 0;
        v184 = sub_10056FA08();
        v185 = v341;
        *&v344 = v341;
        v186 = v340;
        *(&v344 + 1) = v340;
        LOBYTE(v175) = v339 & 1;
        LOBYTE(v345) = v339 & 1;
        LODWORD(v337) = v339 & 1;
        *(&v345 + 1) = v342;
        v338 = v169;
        v346 = v169;
        v347 = v336;
        v348 = !v168;
        v187 = v327;
        *v327 = v184;
        v336 = &v187[*(sub_100009DCC(&qword_1006E10E0, &qword_10057CD00) + 44)];
        sub_10002AAC4(v185, v186, v175);

        v188 = sub_10056F378();
        v189 = v312;
        *v312 = v188;
        *(v189 + 8) = 0;
        *(v189 + 16) = 0;
        v190 = sub_100009DCC(&qword_1006E10E8, &qword_10057CD08);
        v191 = v334;
        sub_100025C20(v334, v333, &v344, v181, v189 + *(v190 + 44));
        v192 = sub_10056F378();
        v193 = v313;
        *v313 = v192;
        *(v193 + 8) = 0;
        *(v193 + 16) = 0;
        v194 = sub_100009DCC(&qword_1006E10F0, &qword_10057CD10);
        sub_1000263E8(v191, &v344, v181, v193 + *(v194 + 44));
        v195 = sub_10056F378();
        v196 = v315;
        *v315 = v195;
        *(v196 + 8) = 0;
        *(v196 + 16) = 0;
        v197 = sub_100009DCC(&qword_1006E10F8, &qword_10057CD18);
        sub_100026878(&v344, v196 + *(v197 + 44));
        v198 = v314;
        sub_10000CC8C(v189, v314, &qword_1006E0FD8, &qword_10057CBC8);
        v199 = v316;
        sub_10000CC8C(v193, v316, &qword_1006E0FD0, &qword_10057CBC0);
        v200 = v317;
        sub_10000CC8C(v196, v317, &qword_1006E0FC8, &qword_10057CBB8);
        v201 = v336;
        sub_10000CC8C(v198, v336, &qword_1006E0FD8, &qword_10057CBC8);
        v202 = sub_100009DCC(&qword_1006E1100, &qword_10057CD20);
        sub_10000CC8C(v199, v201 + *(v202 + 48), &qword_1006E0FD0, &qword_10057CBC0);
        sub_10000CC8C(v200, v201 + *(v202 + 64), &qword_1006E0FC8, &qword_10057CBB8);
        sub_10001036C(v196, &qword_1006E0FC8, &qword_10057CBB8);
        sub_10001036C(v193, &qword_1006E0FD0, &qword_10057CBC0);
        sub_10001036C(v189, &qword_1006E0FD8, &qword_10057CBC8);
        sub_10001036C(v200, &qword_1006E0FC8, &qword_10057CBB8);
        sub_10001036C(v199, &qword_1006E0FD0, &qword_10057CBC0);
        sub_10001036C(v198, &qword_1006E0FD8, &qword_10057CBC8);
        sub_10001B5A4(v341, v340, v337);

        sub_100019B40(v327, v326, &qword_1006E0FE0, &qword_10057CBD0);
        v203 = v323;
        if ((*(v334 + *(v323 + 64)) & 1) == 0)
        {
          v215 = v306;
          (*(v307 + 56))(v306, 1, 1, v308);
LABEL_45:
          v261 = v305;
          v262 = v303;
          v263 = v326;
          sub_10000CC8C(v326, v303, &qword_1006E0FE0, &qword_10057CBD0);
          sub_10000CC8C(v215, v261, &qword_1006E0FC0, &qword_10057CBB0);
          v264 = v309;
          sub_10000CC8C(v262, v309, &qword_1006E0FE0, &qword_10057CBD0);
          v265 = sub_100009DCC(&qword_1006E1108, &unk_10057CD28);
          v266 = v264 + *(v265 + 48);
          *v266 = 0;
          *(v266 + 8) = 0;
          sub_10000CC8C(v261, v264 + *(v265 + 64), &qword_1006E0FC0, &qword_10057CBB0);
          sub_10001036C(v261, &qword_1006E0FC0, &qword_10057CBB0);
          sub_10001036C(v262, &qword_1006E0FE0, &qword_10057CBD0);
          sub_10000CC8C(v264, v329, &qword_1006E0FA0, &qword_10057CB88);
          swift_storeEnumTagMultiPayload();
          sub_100010BC0(&qword_1006E1030, &qword_1006E0FA0, &qword_10057CB88, &protocol conformance descriptor for TupleView<A>);
          v68 = v330;
          sub_10056F5B8();
          sub_10001B5A4(v341, v340, v339 & 1);

          sub_10001036C(v264, &qword_1006E0FA0, &qword_10057CB88);
          sub_10001036C(v215, &qword_1006E0FC0, &qword_10057CBB0);
          sub_10001036C(v263, &qword_1006E0FE0, &qword_10057CBD0);
          sub_10001036C(v325, &qword_1006E0FE8, &qword_10057CBD8);
          (*(v301 + 8))(v333, v302);
          sub_100028448(v334, type metadata accessor for WidgetMusicItem);
          goto LABEL_46;
        }

        v204 = v299;
        sub_100028C7C(v334, v299, type metadata accessor for WidgetMusicItem);
        (*(v289 + 56))(v204, 0, 1, v203);
        v337 = *(v297 + 5);
        v205 = v290;
        sub_1000A81BC(v290);
        v206 = v298;
        sub_10000CC8C(v205 + *(v318 + 28), v298, &qword_1006E0618, &unk_10057C230);
        sub_100028448(v205, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
        v207 = v292;
        v208 = *(v291 + 48);
        sub_10000CC8C(v204, v292, &qword_1006E0618, &unk_10057C230);
        sub_10000CC8C(v206, v207 + v208, &qword_1006E0618, &unk_10057C230);
        v209 = v272;
        if (v272(v207, 1, v203) == 1)
        {
          sub_10001036C(v206, &qword_1006E0618, &unk_10057C230);
          sub_10001036C(v204, &qword_1006E0618, &unk_10057C230);
          v210 = v209(v207 + v208, 1, v203);
          v212 = v293;
          v211 = v294;
          v213 = v318;
          if (v210 == 1)
          {
            sub_10001036C(v207, &qword_1006E0618, &unk_10057C230);
            v214 = 1;
LABEL_33:
            v219 = v295;
            v218 = v296;
LABEL_35:
            sub_1000A81BC(v212);
            sub_10000CC8C(v212 + *(v213 + 32), v219, &qword_1006E0528, &qword_10057BF80);
            sub_100028448(v212, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
            v220 = *(v211 + 48);
            if (v220(v219, 1, v218) != 1)
            {
              v221 = v304;
              sub_100028CE4(v219, v304, type metadata accessor for NowPlayingDataProvider.ItemProgress);
              goto LABEL_40;
            }

            v221 = v304;
            if (qword_1006DF8D8 != -1)
            {
              goto LABEL_50;
            }

            while (1)
            {
              v222 = sub_10000C49C(v218, qword_1006FC048);
              sub_100028C7C(v222, v221, type metadata accessor for NowPlayingDataProvider.ItemProgress);
              if (v220(v219, 1, v218) != 1)
              {
                sub_10001036C(v219, &qword_1006E0528, &qword_10057BF80);
              }

LABEL_40:
              v223 = *(v218 + 20);
              v220 = sub_10056CAA8();
              sub_1000283AC(&qword_1006E1110, &type metadata accessor for Date, &protocol conformance descriptor for Date);
              if (sub_1005727C8())
              {
                break;
              }

              __break(1u);
LABEL_50:
              swift_once();
            }

            v224 = *(v220 - 1);
            v225 = v224[2];
            LODWORD(v337) = v214;
            v226 = v281;
            v225(v281, v221, v220);
            v227 = v283;
            v225((v226 + *(v283 + 48)), v221 + v223, v220);
            v228 = v282;
            sub_10000CC8C(v226, v282, &qword_1006E0FB0, &unk_10057EC80);
            v336 = *(v227 + 48);
            v229 = v224[4];
            v230 = v324;
            v229(v324, v228, v220);
            v231 = v224[1];
            v231(v228 + v336, v220);
            sub_100019B40(v226, v228, &qword_1006E0FB0, &unk_10057EC80);
            v229(v230 + *(v280 + 36), v228 + *(v227 + 48), v220);
            v231(v228, v220);
            if (v337)
            {
              v232 = v300;
              sub_100026B58(v300);
              v233 = &type metadata for TogglePlaybackAppIntent;
              v234 = sub_10002AB28();
              v236 = v286;
              v235 = v287;
            }

            else
            {
              v236 = v286;
              v235 = v287;
              v232 = v300;
              (*(v286 + 104))(v300, enum case for PlaybackButton.State.unplayed(_:), v287);
              v237 = (v334 + *(v323 + 44));
              v238 = *v237;
              v239 = v237[1];

              v240 = sub_10002C7C0(v238, v239, 0, 0);
              v242 = v241;
              v244 = v243;
              v234 = sub_10002AAD4();
              v343[0] = v240;
              v343[1] = v242;
              v343[2] = v244;
              v233 = &type metadata for StartPlaybackAppIntent;
            }

            v343[3] = v233;
            v343[4] = v234;
            v245 = sub_10000C8CC(v343, v233);
            sub_10000CC8C(v324, v284, &qword_1006E0FB8, &unk_10057CBA0);
            (*(v236 + 16))(v285, v232, v235);
            v246 = __chkstk_darwin();
            (*(v248 + 16))(&v271 - ((v247 + 15) & 0xFFFFFFFFFFFFFFF0), v245, v233, v246);
            v249 = v288;
            sub_10056EAB8();
            v250 = sub_10056FA68();
            sub_10056E598();
            v252 = v251;
            v254 = v253;
            v256 = v255;
            v258 = v257;
            (*(v236 + 8))(v300, v235);
            sub_10001036C(v324, &qword_1006E0FB8, &unk_10057CBA0);
            sub_100028448(v304, type metadata accessor for NowPlayingDataProvider.ItemProgress);
            v259 = v308;
            v260 = v249 + *(v308 + 36);
            *v260 = v250;
            *(v260 + 8) = v252;
            *(v260 + 16) = v254;
            *(v260 + 24) = v256;
            *(v260 + 32) = v258;
            *(v260 + 40) = 0;
            v215 = v306;
            sub_100019B40(v249, v306, &qword_1006E0FA8, &unk_10057CB90);
            (*(v307 + 56))(v215, 0, 1, v259);
            sub_100010474(v343);
            goto LABEL_45;
          }
        }

        else
        {
          v216 = v279;
          sub_10000CC8C(v207, v279, &qword_1006E0618, &unk_10057C230);
          v217 = v209(v207 + v208, 1, v203);
          v212 = v293;
          v211 = v294;
          if (v217 != 1)
          {
            v214 = sub_10003CD6C(v216, v207 + v208);
            sub_100028448(v207 + v208, type metadata accessor for WidgetMusicItem);
            sub_10001036C(v298, &qword_1006E0618, &unk_10057C230);
            sub_10001036C(v299, &qword_1006E0618, &unk_10057C230);
            sub_100028448(v216, type metadata accessor for WidgetMusicItem);
            sub_10001036C(v207, &qword_1006E0618, &unk_10057C230);
            v219 = v295;
            v218 = v296;
            v213 = v318;
            goto LABEL_35;
          }

          sub_10001036C(v298, &qword_1006E0618, &unk_10057C230);
          sub_10001036C(v299, &qword_1006E0618, &unk_10057C230);
          sub_100028448(v216, type metadata accessor for WidgetMusicItem);
          v213 = v318;
        }

        sub_10001036C(v207, &qword_1006E0DE8, &unk_10057C9C0);
        v214 = 0;
        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_25;
  }

  sub_10001036C(v50, &qword_1006E0618, &unk_10057C230);
  v67 = v329;
  *v329 = 0;
  *(v67 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  sub_100010BC0(&qword_1006E1030, &qword_1006E0FA0, &qword_10057CB88, &protocol conformance descriptor for TupleView<A>);
  v68 = v330;
  sub_10056F5B8();
LABEL_46:
  v267 = v331;
  sub_10000CC8C(&v349, &v344, &qword_1006E1038, &qword_10057CC20);
  sub_10000CC8C(v68, v267, &qword_1006E1028, &qword_10057CC18);
  v268 = v332;
  sub_10000CC8C(&v344, v332, &qword_1006E1038, &qword_10057CC20);
  v269 = sub_100009DCC(&qword_1006E1040, &qword_10057CC28);
  sub_10000CC8C(v267, v268 + *(v269 + 48), &qword_1006E1028, &qword_10057CC18);
  sub_10001036C(v68, &qword_1006E1028, &qword_10057CC18);
  sub_10001036C(&v349, &qword_1006E1038, &qword_10057CC20);
  sub_10001036C(v267, &qword_1006E1028, &qword_10057CC18);
  return sub_10001036C(&v344, &qword_1006E1038, &qword_10057CC20);
}

uint64_t sub_10002569C()
{
  v1 = v0;
  v2 = sub_10056EBD8();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin();
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = &v34 - v4;
  v5 = sub_10056FBF8();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin();
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005724A8();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v34 - v13;
  sub_10000CC8C(v1, &v34 - v13, &qword_1006E0618, &unk_10057C230);
  v15 = type metadata accessor for WidgetMusicItem(0);
  v16 = *(*(v15 - 8) + 48);
  if (v16(v14, 1, v15) == 1)
  {
    sub_10001036C(v14, &qword_1006E0618, &unk_10057C230);
    LODWORD(v17) = 0;
  }

  else
  {
    v17 = *(v14 + 1);

    sub_100028448(v14, type metadata accessor for WidgetMusicItem);
    if (v17)
    {

      LODWORD(v17) = 1;
    }
  }

  sub_10000CC8C(v1, v12, &qword_1006E0618, &unk_10057C230);
  if (v16(v12, 1, v15) == 1)
  {
    sub_10001036C(v12, &qword_1006E0618, &unk_10057C230);
    v18 = 0;
  }

  else
  {
    v19 = sub_100038C80();
    sub_100028448(v12, type metadata accessor for WidgetMusicItem);
    v20 = v19[2];

    v18 = v20 != 0;
  }

  type metadata accessor for SongCellView(0);
  sub_1000A8194(v10);
  v21 = (*(v8 + 88))(v10, v7);
  if (v21 == enum case for WidgetFamily.systemMedium(_:))
  {
    if ((v17 | v18))
    {
      sub_10056FC18();
LABEL_17:
      v29 = v39;
      v28 = v40;
      v30 = v41;
      (*(v40 + 104))(v39, enum case for Font.Leading.tight(_:), v41);
      v31 = sub_10056FC28();

      (*(v28 + 8))(v29, v30);
      return v31;
    }

    return sub_10056FB08();
  }

  if (v21 == enum case for WidgetFamily.systemLarge(_:))
  {
    v22 = v35;
    sub_1000A840C(v35);
    v24 = v36;
    v23 = v37;
    v25 = v38;
    (*(v37 + 104))(v36, enum case for DynamicTypeSize.xLarge(_:), v38);
    sub_1000283AC(&qword_1006E1170, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
    v26 = sub_1005727B8();
    v27 = *(v23 + 8);
    v27(v24, v25);
    v27(v22, v25);
    if ((v26 & 1) == 0)
    {
      return sub_10056FB08();
    }

LABEL_15:
    if ((v17 | v18))
    {
      sub_10056FC48();
      goto LABEL_17;
    }

    return sub_10056FB08();
  }

  if (v21 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    goto LABEL_15;
  }

  v33 = sub_10056FB08();
  (*(v8 + 8))(v10, v7);
  return v33;
}

uint64_t sub_100025C20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a4;
  v61 = a5;
  sub_100009DCC(&qword_1006E1138, &qword_10057ED50);
  __chkstk_darwin();
  v62 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v53 - v9;
  v11 = type metadata accessor for FriendsBadgesView(0);
  __chkstk_darwin();
  v13 = (&v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009DCC(&qword_1006E1148, &qword_10057CD58);
  __chkstk_darwin();
  v15 = &v53 - v14;
  sub_100009DCC(&qword_1006E1150, &qword_10057CD60);
  __chkstk_darwin();
  v60 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v53 - v17;
  v19 = a1[1];
  v59 = v10;
  if (v19)
  {
    v20 = sub_100009DCC(&qword_1006E1018, &qword_10057CC08);
    (*(*(v20 - 8) + 16))(v15, a2, v20);
    swift_storeEnumTagMultiPayload();
    v21 = sub_100010324(&qword_1006E1010, &qword_10057CC00);
    v58 = v15;
    v22 = v18;
    v23 = sub_100010324(&qword_1006E0FF0, &qword_10057CBE0);
    v24 = sub_10002A768();
    v25 = sub_100010BC0(&qword_1006E10D0, &qword_1006E0FF0, &qword_10057CBE0, &protocol conformance descriptor for PartialRangeThrough<A>);
    v63 = v21;
    v64 = v23;
    v18 = v22;
    v65 = v24;
    v66 = v25;
    swift_getOpaqueTypeConformance2();
    sub_1000283AC(&qword_1006E1158, type metadata accessor for FriendsBadgesView, &unk_10057CDA0);
    sub_10056F5B8();
LABEL_5:
    v32 = sub_100009DCC(&qword_1006E1160, &qword_10057CD68);
    (*(*(v32 - 8) + 56))(v22, 0, 1, v32);
    goto LABEL_6;
  }

  v26 = sub_100038C80()[2];

  if (v26)
  {
    *v13 = sub_100038C80();
    v27 = *(v11 + 20);
    *(v13 + v27) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0148, &qword_10057C450);
    swift_storeEnumTagMultiPayload();
    sub_100028C7C(v13, v15, type metadata accessor for FriendsBadgesView);
    swift_storeEnumTagMultiPayload();
    v57 = sub_100009DCC(&qword_1006E1018, &qword_10057CC08);
    v28 = sub_100010324(&qword_1006E1010, &qword_10057CC00);
    v58 = v15;
    v22 = v18;
    v29 = sub_100010324(&qword_1006E0FF0, &qword_10057CBE0);
    v30 = sub_10002A768();
    v31 = sub_100010BC0(&qword_1006E10D0, &qword_1006E0FF0, &qword_10057CBE0, &protocol conformance descriptor for PartialRangeThrough<A>);
    v63 = v28;
    v64 = v29;
    v18 = v22;
    v65 = v30;
    v66 = v31;
    swift_getOpaqueTypeConformance2();
    sub_1000283AC(&qword_1006E1158, type metadata accessor for FriendsBadgesView, &unk_10057CDA0);
    sub_10056F5B8();
    sub_100028448(v13, type metadata accessor for FriendsBadgesView);
    goto LABEL_5;
  }

  v52 = sub_100009DCC(&qword_1006E1160, &qword_10057CD68);
  (*(*(v52 - 8) + 56))(v18, 1, 1, v52);
LABEL_6:
  v33 = *a3;
  v34 = *(a3 + 8);
  v35 = *(a3 + 16);
  v36 = *(a3 + 32);
  v55 = *(a3 + 24);
  v53 = v33;
  v54 = v36;
  v58 = *(a3 + 40);
  LODWORD(v57) = *(a3 + 48);
  v37 = a1[5];
  if (v37)
  {
    if ((v37 & 0x2000000000000000) != 0)
    {
      v38 = HIBYTE(v37) & 0xF;
    }

    else
    {
      v38 = a1[4] & 0xFFFFFFFFFFFFLL;
    }

    v39 = v59;
    if (v38)
    {
      sub_10000CC8C(v56, v59, &qword_1006E0FE8, &qword_10057CBD8);
      v40 = 0;
    }

    else
    {
      v40 = 1;
    }
  }

  else
  {
    v40 = 1;
    v39 = v59;
  }

  v41 = sub_100009DCC(&qword_1006E0FE8, &qword_10057CBD8);
  (*(*(v41 - 8) + 56))(v39, v40, 1, v41);
  v42 = v18;
  v56 = v18;
  v43 = v60;
  sub_10000CC8C(v42, v60, &qword_1006E1150, &qword_10057CD60);
  v44 = v39;
  v45 = v62;
  sub_10000CC8C(v39, v62, &qword_1006E1138, &qword_10057ED50);
  v46 = v61;
  sub_10000CC8C(v43, v61, &qword_1006E1150, &qword_10057CD60);
  v47 = sub_100009DCC(&qword_1006E1168, &unk_10057CD70);
  v48 = v46 + *(v47 + 48);
  v49 = v53;
  v50 = v54;
  *v48 = v53;
  *(v48 + 8) = v34;
  *(v48 + 16) = v35;
  *(v48 + 24) = v55;
  *(v48 + 32) = v50;
  *(v48 + 40) = v58;
  *(v48 + 48) = v57;
  sub_10000CC8C(v45, v46 + *(v47 + 64), &qword_1006E1138, &qword_10057ED50);
  sub_10002AAC4(v49, v34, v35);

  sub_10002AAC4(v49, v34, v35);

  sub_10001036C(v44, &qword_1006E1138, &qword_10057ED50);
  sub_10001036C(v56, &qword_1006E1150, &qword_10057CD60);
  sub_10001036C(v45, &qword_1006E1138, &qword_10057ED50);
  sub_10001B5A4(v49, v34, v35);

  return sub_10001036C(v43, &qword_1006E1150, &qword_10057CD60);
}

uint64_t sub_1000263E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v40 = a4;
  sub_100009DCC(&qword_1006E1138, &qword_10057ED50);
  __chkstk_darwin();
  v42 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v35 - v7;
  v9 = type metadata accessor for FriendsBadgesView(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009DCC(&qword_1006E1128, &qword_10057CD38);
  __chkstk_darwin();
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v35 - v15;
  v17 = sub_100038C80()[2];

  v41 = v8;
  if (v17)
  {
    *v12 = sub_100038C80();
    v18 = *(v9 + 20);
    *(v12 + v18) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0148, &qword_10057C450);
    swift_storeEnumTagMultiPayload();
    sub_100028CE4(v12, v16, type metadata accessor for FriendsBadgesView);
    v19 = v16;
    (*(v10 + 56))(v16, 0, 1, v9);
  }

  else
  {
    v19 = v16;
    (*(v10 + 56))(v16, 1, 1, v9);
  }

  v21 = *a2;
  v20 = *(a2 + 8);
  v22 = *(a2 + 16);
  v23 = *(a2 + 32);
  v36 = *(a2 + 24);
  v39 = *(a2 + 40);
  v38 = *(a2 + 48);
  v24 = *(a1 + 40);
  if (v24 && ((v24 & 0x2000000000000000) != 0 ? (v25 = HIBYTE(v24) & 0xF) : (v25 = *(a1 + 32) & 0xFFFFFFFFFFFFLL), v25))
  {
    v26 = v41;
    sub_10000CC8C(v37, v41, &qword_1006E0FE8, &qword_10057CBD8);
    v27 = 0;
  }

  else
  {
    v27 = 1;
    v26 = v41;
  }

  v28 = sub_100009DCC(&qword_1006E0FE8, &qword_10057CBD8);
  (*(*(v28 - 8) + 56))(v26, v27, 1, v28);
  sub_10000CC8C(v19, v14, &qword_1006E1128, &qword_10057CD38);
  v29 = v42;
  sub_10000CC8C(v26, v42, &qword_1006E1138, &qword_10057ED50);
  v30 = v14;
  v37 = v14;
  v31 = v40;
  sub_10000CC8C(v30, v40, &qword_1006E1128, &qword_10057CD38);
  v32 = sub_100009DCC(&qword_1006E1140, &qword_10057CD50);
  v33 = v31 + *(v32 + 48);
  *v33 = v21;
  *(v33 + 8) = v20;
  *(v33 + 16) = v22;
  *(v33 + 24) = v36;
  *(v33 + 32) = v23;
  *(v33 + 40) = v39;
  *(v33 + 48) = v38;
  sub_10000CC8C(v29, v31 + *(v32 + 64), &qword_1006E1138, &qword_10057ED50);
  sub_10002AAC4(v21, v20, v22);

  sub_10002AAC4(v21, v20, v22);

  sub_10001036C(v26, &qword_1006E1138, &qword_10057ED50);
  sub_10001036C(v19, &qword_1006E1128, &qword_10057CD38);
  sub_10001036C(v29, &qword_1006E1138, &qword_10057ED50);
  sub_10001B5A4(v21, v20, v22);

  return sub_10001036C(v37, &qword_1006E1128, &qword_10057CD38);
}

uint64_t sub_100026878@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for FriendsBadgesView(0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009DCC(&qword_1006E1128, &qword_10057CD38);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v23 - v9;
  v11 = sub_100038C80()[2];

  if (v11)
  {
    *v6 = sub_100038C80();
    v12 = *(v3 + 20);
    *(v6 + v12) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0148, &qword_10057C450);
    swift_storeEnumTagMultiPayload();
    sub_100028CE4(v6, v10, type metadata accessor for FriendsBadgesView);
    (*(v4 + 56))(v10, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v10, 1, 1, v3);
  }

  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v24 = v10;
  v25 = v8;
  sub_10000CC8C(v10, v8, &qword_1006E1128, &qword_10057CD38);
  v20 = v26;
  sub_10000CC8C(v8, v26, &qword_1006E1128, &qword_10057CD38);
  v21 = v20 + *(sub_100009DCC(&qword_1006E1130, &unk_10057CD40) + 48);
  *v21 = v13;
  *(v21 + 8) = v14;
  *(v21 + 16) = v15;
  *(v21 + 24) = v16;
  *(v21 + 32) = v17;
  *(v21 + 40) = v18;
  *(v21 + 48) = v19;
  sub_10002AAC4(v13, v14, v15);

  sub_10002AAC4(v13, v14, v15);

  sub_10001036C(v24, &qword_1006E1128, &qword_10057CD38);
  sub_10001B5A4(v13, v14, v15);

  return sub_10001036C(v25, &qword_1006E1128, &qword_10057CD38);
}

uint64_t sub_100026B58@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  sub_100009DCC(&qword_1006E0528, &qword_10057BF80);
  __chkstk_darwin();
  v29 = &v28 - v2;
  sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  __chkstk_darwin();
  v30 = &v28 - v3;
  v4 = sub_10056F198();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin();
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E0C68, &qword_10057C7D0);
  __chkstk_darwin();
  v8 = &v28 - v7;
  v9 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v13 = &v28 - v12;
  v14 = *(type metadata accessor for SongCellView(0) + 20);
  v28 = v1;
  sub_10000CC8C(v1 + v14, v8, &qword_1006E0C68, &qword_10057C7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100028CE4(v8, v13, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
  }

  else
  {
    v15 = sub_100573438();
    v16 = sub_10056F9D8();
    sub_10056DE58(v15, &_mh_execute_header, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10056F188();
    swift_getAtKeyPath();

    (*(v31 + 8))(v6, v32);
  }

  v17 = v13[*(v9 + 24)];
  sub_100028448(v13, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
  v18 = v33;
  if (v17 > 1)
  {
    v19 = &enum case for PlaybackButton.State.unplayed(_:);
    goto LABEL_15;
  }

  if (v17)
  {
    sub_1000A81BC(v11);
    v20 = v29;
    sub_10000CC8C(v11 + *(v9 + 32), v29, &qword_1006E0528, &qword_10057BF80);
    sub_100028448(v11, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
    v21 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
    {
      sub_10001036C(v20, &qword_1006E0528, &qword_10057BF80);
      v22 = sub_10056CAA8();
      v23 = v30;
      (*(*(v22 - 8) + 56))(v30, 1, 1, v22);
    }

    else
    {
      v23 = v30;
      sub_10000CC8C(v20 + *(v21 + 24), v30, &unk_1006E1E90, &qword_10057C550);
      sub_100028448(v20, type metadata accessor for NowPlayingDataProvider.ItemProgress);
      v22 = sub_10056CAA8();
      v24 = *(v22 - 8);
      if ((*(v24 + 48))(v23, 1, v22) != 1)
      {
        (*(v24 + 32))(v18, v23, v22);
LABEL_14:
        v19 = &enum case for PlaybackButton.State.paused(_:);
        goto LABEL_15;
      }
    }

    sub_10056CA68();
    sub_10056CAA8();
    if ((*(*(v22 - 8) + 48))(v23, 1, v22) != 1)
    {
      sub_10001036C(v23, &unk_1006E1E90, &qword_10057C550);
    }

    goto LABEL_14;
  }

  v19 = &enum case for PlaybackButton.State.playing(_:);
LABEL_15:
  v25 = *v19;
  v26 = sub_10056EAC8();
  return (*(*(v26 - 8) + 104))(v18, v25, v26);
}

uint64_t sub_100027108()
{
  v1 = sub_10056F808();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E0F88, &qword_10057CB78);
  __chkstk_darwin();
  v6 = &v9 - v5;
  *v6 = sub_10056F218();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_100009DCC(&qword_1006E0F90, &qword_10057CB80);
  sub_1000230F4(v0, &v6[*(v7 + 44)]);
  sub_10056F7E8();
  sub_100010BC0(&qword_1006E0F98, &qword_1006E0F88, &qword_10057CB78, &protocol conformance descriptor for HStack<A>);
  sub_1005701F8();
  (*(v2 + 8))(v4, v1);
  return sub_10001036C(v6, &qword_1006E0F88, &qword_10057CB78);
}

uint64_t sub_1000272C8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for FriendsBadgesView(0) - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_1005709F8();
  a1[1] = v6;
  sub_100009DCC(&qword_1006E1218, &qword_10057CDF0);
  v31[1] = sub_10002A5C4(*v1);
  swift_getKeyPath();
  sub_100028C7C(v1, v5, type metadata accessor for FriendsBadgesView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_100028CE4(v5, v8 + v7, type metadata accessor for FriendsBadgesView);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10002B07C;
  *(v9 + 24) = v8;
  sub_100009DCC(&qword_1006E1220, &qword_10057CE18);
  sub_100009DCC(&qword_1006E1228, &qword_10057CE20);
  sub_100010BC0(&qword_1006E1230, &qword_1006E1220, &qword_10057CE18, &protocol conformance descriptor for [A]);
  sub_10002B16C();
  sub_10002B220();
  sub_1005708B8();
  v10 = sub_10056FA68();
  sub_100028038();
  sub_10056E598();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = a1 + *(sub_100009DCC(&qword_1006E12A8, &qword_10057CE58) + 36);
  *v19 = v10;
  *(v19 + 1) = v12;
  *(v19 + 2) = v14;
  *(v19 + 3) = v16;
  *(v19 + 4) = v18;
  v19[40] = 0;
  v20 = sub_10056FA58();
  sub_100028038();
  sub_10056E598();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  result = sub_100009DCC(&qword_1006E12B0, &qword_10057CE60);
  v30 = a1 + *(result + 36);
  *v30 = v20;
  *(v30 + 1) = v22;
  *(v30 + 2) = v24;
  *(v30 + 3) = v26;
  *(v30 + 4) = v28;
  v30[40] = 0;
  return result;
}

uint64_t sub_1000275BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a1;
  v52 = a3;
  v46 = sub_100009DCC(&qword_1006E12B8, &qword_10057CE68);
  __chkstk_darwin();
  v7 = (&v42 - v6);
  sub_100009DCC(&qword_1006E12C0, &qword_10057CE70);
  __chkstk_darwin();
  v9 = &v42 - v8;
  v10 = sub_100570558();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100009DCC(&qword_1006E12C8, &qword_10057CE78);
  v44 = *(v47 - 8);
  __chkstk_darwin();
  v15 = &v42 - v14;
  sub_100009DCC(&qword_1006E1290, &qword_10057CE48);
  __chkstk_darwin();
  v45 = &v42 - v16;
  v48 = sub_100009DCC(&qword_1006E1278, &qword_10057CE40);
  __chkstk_darwin();
  v18 = &v42 - v17;
  v19 = sub_100009DCC(&qword_1006E1270, &qword_10057CE38);
  v49 = *(v19 - 8);
  v50 = v19;
  __chkstk_darwin();
  v21 = &v42 - v20;
  if (a2)
  {
    v42 = a2;
    sub_100570538();
    (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
    sub_1005705D8();
    v43 = a4;

    (*(v11 + 8))(v13, v10);
    sub_100572478();
    v22 = sub_100572488();
    (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
    sub_1005705C8();

    sub_10001036C(v9, &qword_1006E12C0, &qword_10057CE70);
    v23 = v44;
    v24 = v47;
    (*(v44 + 16))(v7, v15, v47);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E12A0, &qword_10057CE50);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006E1298, &qword_1006E12A0, &qword_10057CE50, &protocol conformance descriptor for GeometryReader<A>);
    v25 = v45;
    a4 = v43;
    sub_10056F5B8();

    (*(v23 + 8))(v15, v24);
  }

  else
  {
    *v7 = sub_100027D44;
    v7[1] = 0;
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E12A0, &qword_10057CE50);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006E1298, &qword_1006E12A0, &qword_10057CE50, &protocol conformance descriptor for GeometryReader<A>);
    v25 = v45;
    sub_10056F5B8();
  }

  sub_100019B40(v25, v18, &qword_1006E1290, &qword_10057CE48);
  v26 = sub_10002B444();
  v27 = v48;
  View.corner(_:)(0, 0, 2, v48, v26);
  sub_10001036C(v18, &qword_1006E1278, &qword_10057CE40);
  v28 = sub_1005704D8();
  v29 = CFRange.init(_:)(v28);
  v31 = v30;
  *&v53 = v27;
  *(&v53 + 1) = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v50;
  View.border(_:corner:)(v29.location, v29.length, 0, 0, 2, v50, OpaqueTypeConformance2, v31);

  (*(v49 + 8))(v21, v33);
  sub_1005704A8();
  v34 = sub_1005704E8();

  v35 = a4 + *(sub_100009DCC(&qword_1006E1268, &qword_10057CE30) + 36);
  *v35 = v34;
  *(v35 + 8) = xmmword_10057C710;
  *(v35 + 24) = 0x3FF0000000000000;
  sub_100028038();
  sub_100028038();
  sub_1005709E8();
  sub_10056E888();
  v36 = (a4 + *(sub_100009DCC(&qword_1006E1258, &qword_10057CE28) + 36));
  v37 = v54;
  *v36 = v53;
  v36[1] = v37;
  v36[2] = v55;
  v38 = v51;
  v39 = -(sub_100028038() * v38);
  result = sub_100009DCC(&qword_1006E1228, &qword_10057CE20);
  v41 = a4 + *(result + 36);
  *v41 = v39;
  *(v41 + 8) = 0;
  return result;
}

uint64_t sub_100027D44@<X0>(uint64_t a1@<X8>)
{
  sub_100009DCC(&qword_1006E12D0, &qword_10057CE80);
  __chkstk_darwin();
  v3 = &v20 - v2;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009DCC(&qword_1006E12D8, &qword_10057CE88);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
  (*(*(v10 - 8) + 56))(v5, 8, 11, v10);
  sub_10056E928();
  ArtworkImage.Placeholder.view(availableSize:)(v9, v11, v12);
  sub_100028448(v5, type metadata accessor for ArtworkImage.Placeholder);
  v13 = ArtworkImage.Placeholder.View.Style.widgets.unsafeMutableAddressor();
  sub_100028C7C(v13, v3, type metadata accessor for ArtworkImage.Placeholder.View.Style);
  v14 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  (*(*(v14 - 8) + 56))(v3, 0, 1, v14);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.placeholderStyle(_:)(v3, v6, OpaqueTypeConformance2);
  sub_10001036C(v3, &qword_1006E12D0, &qword_10057CE80);
  (*(v7 + 8))(v9, v6);
  v16 = *(sub_100009DCC(&qword_1006E12E0, &qword_10057CE90) + 36);
  v17 = enum case for BlendMode.plusLighter(_:);
  v18 = sub_100570A78();
  return (*(*(v18 - 8) + 104))(a1 + v16, v17, v18);
}

double sub_100028038()
{
  v16 = sub_10056F198();
  v1 = *(v16 - 8);
  __chkstk_darwin();
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E0148, &qword_10057C450);
  __chkstk_darwin();
  v5 = &v15 - v4;
  v6 = sub_1005724A8();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FriendsBadgesView(0);
  sub_10000CC8C(v0 + *(v10 + 20), v5, &qword_1006E0148, &qword_10057C450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  else
  {
    v11 = sub_100573438();
    v12 = sub_10056F9D8();
    sub_10056DE58(v11, &_mh_execute_header, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10056F188();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = (*(v7 + 88))(v9, v6);
  if (v13 != enum case for WidgetFamily.systemMedium(_:) && v13 != enum case for WidgetFamily.systemLarge(_:))
  {
    (*(v7 + 8))(v9, v6);
  }

  return 10.0;
}

uint64_t sub_100028320@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006DF8E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  v3 = sub_10000C49C(v2, qword_1006FC060);
  return sub_100028C7C(v3, a1, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
}

uint64_t sub_1000283AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000283F4()
{
  result = qword_1006E0CA8;
  if (!qword_1006E0CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0CA8);
  }

  return result;
}

uint64_t sub_100028448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000284CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009DCC(&qword_1006E0CB0, &unk_10057C880);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100009DCC(&qword_1006E0800, qword_10057C3B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100009DCC(&qword_1006E0CB8, &unk_10057C890);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_100028644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100009DCC(&qword_1006E0CB0, &unk_10057C880);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100009DCC(&qword_1006E0800, qword_10057C3B0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100009DCC(&qword_1006E0CB8, &unk_10057C890);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_1000287B4(uint64_t a1)
{
  sub_10002A420(319, &qword_1006E0D28, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10002A420(319, &qword_1006E0878, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10002A420(319, &unk_1006E0D30, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1000288E4()
{
  result = qword_1006E0D68;
  if (!qword_1006E0D68)
  {
    sub_100010324(&qword_1006E0C98, &qword_10057C850);
    type metadata accessor for RecommendationsWidgetContentView(255);
    sub_1000283AC(&qword_1006E0C90, type metadata accessor for RecommendationsWidgetContentView, &unk_10057C8FC);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006E0D70, &qword_1006E0CA0, &qword_10057C858, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0D68);
  }

  return result;
}

unint64_t sub_100028A20()
{
  result = qword_1006E0D98;
  if (!qword_1006E0D98)
  {
    sub_100010324(&qword_1006E0D78, &qword_10057C950);
    sub_100010BC0(&qword_1006E0DA0, &qword_1006E0DA8, &unk_10057C970, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0D98);
  }

  return result;
}

unint64_t sub_100028AD8()
{
  result = qword_1006E0DB0;
  if (!qword_1006E0DB0)
  {
    sub_100010324(&qword_1006E0D90, &unk_10057D520);
    sub_100028B64();
    sub_100028C20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0DB0);
  }

  return result;
}

unint64_t sub_100028B64()
{
  result = qword_1006E0DB8;
  if (!qword_1006E0DB8)
  {
    sub_100010324(&qword_1006E0DC0, &unk_100580E00);
    sub_1000283AC(&qword_1006E0DC8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0DB8);
  }

  return result;
}

unint64_t sub_100028C20()
{
  result = qword_1006E0DD0;
  if (!qword_1006E0DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0DD0);
  }

  return result;
}

uint64_t sub_100028C7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100028CE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100028D4C()
{
  v1 = type metadata accessor for RecommendationsWidgetContentView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + 48) & ~v2);
  sub_100009DCC(&qword_1006E0C68, &qword_10057C7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10056CAA8();
    v27 = *(v4 - 8);
    v5 = *(v27 + 8);
    v5(v3, v4);
    v6 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
    v28 = v5;
    v5(v3 + v6[5], v4);
    type metadata accessor for WidgetMusicRecommendation(0);

    v7 = v3 + v6[7];
    v8 = type metadata accessor for WidgetMusicItem(0);
    if (!(*(*(v8 - 1) + 48))(v7, 1, v8))
    {

      v9 = v8[7];
      v10 = sub_10056C8A8();
      (*(*(v10 - 8) + 8))(v7 + v9, v10);

      v11 = v8[17];
      v12 = *(v27 + 48);
      if (!v12(v7 + v11, 1, v4))
      {
        v28(v7 + v11, v4);
      }

      v13 = v8[18];
      if (!v12(v7 + v13, 1, v4))
      {
        v28(v7 + v13, v4);
      }

      v14 = v8[23];
      v15 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
      if (!(*(*(v15 - 8) + 48))(v7 + v14, 11, v15))
      {
        v16 = sub_100572128();
        v17 = *(v16 - 8);
        v26 = v16;
        if (!(*(v17 + 48))(v7 + v14, 1))
        {
          (*(v17 + 8))(v7 + v14, v26);
        }
      }
    }

    v18 = v3 + v6[8];
    v19 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {
      v28(v18, v4);
      v28(v18 + *(v19 + 20), v4);
      v20 = *(v19 + 24);
      if (!(*(v27 + 48))(v18 + v20, 1, v4))
      {
        v28(v18 + v20, v4);
      }
    }
  }

  else
  {
  }

  v21 = *(v1 + 20);
  sub_100009DCC(&qword_1006E0148, &qword_10057C450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_1005724A8();
    (*(*(v22 - 8) + 8))(v3 + v21, v22);
  }

  else
  {
  }

  v23 = *(v1 + 24);
  sub_100009DCC(&qword_1006E0C70, &unk_10057C840);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_10056E698();
    (*(*(v24 - 8) + 8))(v3 + v23, v24);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_100029390(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RecommendationsWidgetContentView(0) - 8);
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  sub_1000217C0(a1, v6, v7, v10, a2, v8, v9);
}

unint64_t sub_100029418()
{
  result = qword_1006E0E38;
  if (!qword_1006E0E38)
  {
    sub_100010324(&qword_1006E0E28, &qword_10057CA30);
    sub_1000294A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0E38);
  }

  return result;
}

unint64_t sub_1000294A4()
{
  result = qword_1006E0E40;
  if (!qword_1006E0E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0E40);
  }

  return result;
}

unint64_t sub_1000294F8()
{
  result = qword_1006E0E60;
  if (!qword_1006E0E60)
  {
    sub_100010324(&qword_1006E0E00, &qword_10057C9E0);
    sub_100010324(&qword_1006E0E08, &qword_10057C9E8);
    sub_100010BC0(&qword_1006E0E50, &qword_1006E0E08, &qword_10057C9E8, &protocol conformance descriptor for Grid<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000283AC(&qword_1006E0E68, type metadata accessor for ErrorMessageModifier, &unk_10057C3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0E60);
  }

  return result;
}

uint64_t sub_100029628()
{
  v1 = type metadata accessor for RecommendationsWidgetContentView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = v0 + ((v2 + 56) & ~v2);
  sub_100009DCC(&qword_1006E0C68, &qword_10057C7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10056CAA8();
    v27 = *(v4 - 8);
    v5 = *(v27 + 8);
    v5(v3, v4);
    v6 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
    v28 = v5;
    v5(v3 + v6[5], v4);
    type metadata accessor for WidgetMusicRecommendation(0);

    v7 = v3 + v6[7];
    v8 = type metadata accessor for WidgetMusicItem(0);
    if (!(*(*(v8 - 1) + 48))(v7, 1, v8))
    {

      v9 = v8[7];
      v10 = sub_10056C8A8();
      (*(*(v10 - 8) + 8))(v7 + v9, v10);

      v11 = v8[17];
      v12 = *(v27 + 48);
      if (!v12(v7 + v11, 1, v4))
      {
        v28(v7 + v11, v4);
      }

      v13 = v8[18];
      if (!v12(v7 + v13, 1, v4))
      {
        v28(v7 + v13, v4);
      }

      v14 = v8[23];
      v15 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
      if (!(*(*(v15 - 8) + 48))(v7 + v14, 11, v15))
      {
        v16 = sub_100572128();
        v17 = *(v16 - 8);
        v26 = v16;
        if (!(*(v17 + 48))(v7 + v14, 1))
        {
          (*(v17 + 8))(v7 + v14, v26);
        }
      }
    }

    v18 = v3 + v6[8];
    v19 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {
      v28(v18, v4);
      v28(v18 + *(v19 + 20), v4);
      v20 = *(v19 + 24);
      if (!(*(v27 + 48))(v18 + v20, 1, v4))
      {
        v28(v18 + v20, v4);
      }
    }
  }

  else
  {
  }

  v21 = *(v1 + 20);
  sub_100009DCC(&qword_1006E0148, &qword_10057C450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_1005724A8();
    (*(*(v22 - 8) + 8))(v3 + v21, v22);
  }

  else
  {
  }

  v23 = *(v1 + 24);
  sub_100009DCC(&qword_1006E0C70, &unk_10057C840);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_10056E698();
    (*(*(v24 - 8) + 8))(v3 + v23, v24);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_100029C6C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RecommendationsWidgetContentView(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  sub_1000219CC(a1, v6, v7, v8, a2);
}

unint64_t sub_100029CF8()
{
  result = qword_1006E0E88;
  if (!qword_1006E0E88)
  {
    sub_100010324(&qword_1006E0E80, &qword_10057CA80);
    sub_100010BC0(&qword_1006E0E90, &qword_1006E0E98, &qword_10057CA88, &protocol conformance descriptor for Link<A>);
    sub_1000283AC(&qword_1006E0DC8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0E88);
  }

  return result;
}

uint64_t sub_100029E2C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_100009DCC(&qword_1006E0CB0, &unk_10057C880);
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

  v14 = sub_100009DCC(&qword_1006E0800, qword_10057C3B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_100009DCC(&qword_1006E0EB8, &qword_10057CB08);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_100009DCC(&qword_1006E0EC0, &qword_10057CB10);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_10002A04C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100009DCC(&qword_1006E0CB0, &unk_10057C880);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100009DCC(&qword_1006E0800, qword_10057C3B0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_100009DCC(&qword_1006E0EB8, &qword_10057CB08);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_100009DCC(&qword_1006E0EC0, &qword_10057CB10);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void sub_10002A264(uint64_t a1)
{
  sub_10002A420(319, &qword_1006E0690, type metadata accessor for WidgetMusicItem, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10002A420(319, &qword_1006E0D28, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10002A420(319, &qword_1006E0878, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_10002A420(319, &qword_1006E0F30, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_10002A420(319, &unk_1006E0F38, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10002A420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10002A488()
{
  result = qword_1006E0F78;
  if (!qword_1006E0F78)
  {
    sub_100010324(&qword_1006E0DD8, &unk_10057C9B0);
    sub_100010324(&qword_1006E0D78, &qword_10057C950);
    sub_100010324(&qword_1006E0D90, &unk_10057D520);
    sub_100028A20();
    sub_100028AD8();
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006E0F80, &qword_1006E0DE0, &qword_10057E940, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0F78);
  }

  return result;
}

char *sub_10002A5C4(char *result)
{
  v1 = *(result + 2);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage[4];
    v6 = result + 32;
    while (1)
    {
      v7 = *&v6[8 * v3];
      if (v4)
      {
        result = v7;
        v8 = __OFSUB__(v4--, 1);
        if (v8)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v9 = *(v2 + 3);
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        sub_100009DCC(&qword_1006E12E8, &qword_10057CE98);
        v12 = swift_allocObject();
        v13 = j__malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 17;
        }

        v15 = v14 >> 4;
        *(v12 + 2) = v11;
        *(v12 + 3) = 2 * (v14 >> 4);
        v16 = v12 + 32;
        v17 = *(v2 + 3) >> 1;
        v5 = &v12[16 * v17 + 32];
        v18 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
        if (*(v2 + 2))
        {
          v19 = v2 + 32;
          if (v12 < v2 || v16 >= &v19[16 * v17] || v12 != v2)
          {
            memmove(v16, v19, 16 * v17);
          }

          v20 = v7;
          *(v2 + 2) = 0;
        }

        else
        {
          v21 = v7;
        }

        v2 = v12;
        v8 = __OFSUB__(v18, 1);
        v4 = v18 - 1;
        if (v8)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 1) = v7;
      v5 += 16;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v22 = *(v2 + 3);
  if (v22 >= 2)
  {
    v23 = v22 >> 1;
    v8 = __OFSUB__(v23, v4);
    v24 = v23 - v4;
    if (v8)
    {
      goto LABEL_30;
    }

    *(v2 + 2) = v24;
  }

  return v2;
}

unint64_t sub_10002A768()
{
  result = qword_1006E1068;
  if (!qword_1006E1068)
  {
    sub_100010324(&qword_1006E1010, &qword_10057CC00);
    sub_10002A820();
    sub_100010BC0(&qword_1006E10C0, &qword_1006E10C8, &qword_10057CCF0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1068);
  }

  return result;
}

unint64_t sub_10002A820()
{
  result = qword_1006E1070;
  if (!qword_1006E1070)
  {
    sub_100010324(&qword_1006E1008, &qword_10057CBF8);
    sub_10002A8D8();
    sub_100010BC0(&qword_1006E10B0, &qword_1006E10B8, &unk_1005808D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1070);
  }

  return result;
}

unint64_t sub_10002A8D8()
{
  result = qword_1006E1078;
  if (!qword_1006E1078)
  {
    sub_100010324(&qword_1006E1000, &qword_10057CBF0);
    sub_10002A990();
    sub_100010BC0(&qword_1006E10A0, &qword_1006E10A8, &unk_10057CCE0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1078);
  }

  return result;
}

unint64_t sub_10002A990()
{
  result = qword_1006E1080;
  if (!qword_1006E1080)
  {
    sub_100010324(&qword_1006E1048, &unk_10057CC30);
    sub_10002AA48();
    sub_100010BC0(&qword_1006E1098, &qword_1006E1050, &qword_10057EB40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1080);
  }

  return result;
}

unint64_t sub_10002AA48()
{
  result = qword_1006E1088;
  if (!qword_1006E1088)
  {
    sub_100010324(&qword_1006E1090, &qword_10057CCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1088);
  }

  return result;
}

uint64_t sub_10002AAC4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10002AAD4()
{
  result = qword_1006E1118;
  if (!qword_1006E1118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1118);
  }

  return result;
}

unint64_t sub_10002AB28()
{
  result = qword_1006E1120;
  if (!qword_1006E1120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1120);
  }

  return result;
}

uint64_t *sub_10002AB7C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10002AC14(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009DCC(&qword_1006E0800, qword_10057C3B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10002ACE4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100009DCC(&qword_1006E0800, qword_10057C3B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10002AD94(uint64_t a1)
{
  sub_10002AE48(319);
  if (v1 <= 0x3F)
  {
    sub_10002A420(319, &qword_1006E0878, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10002AE48(uint64_t a1)
{
  if (!qword_1006E11E0)
  {
    sub_100010324(&unk_1006E11E8, &qword_10057CD98);
    v1 = sub_100572E38();
    if (!v2)
    {
      atomic_store(v1, &qword_1006E11E0);
    }
  }
}

uint64_t sub_10002AEAC()
{
  sub_100010324(&qword_1006E0F88, &qword_10057CB78);
  sub_100010BC0(&qword_1006E0F98, &qword_1006E0F88, &qword_10057CB78, &protocol conformance descriptor for HStack<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002AF60()
{
  v1 = (type metadata accessor for FriendsBadgesView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_100009DCC(&qword_1006E0148, &qword_10057C450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1005724A8();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10002B07C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for FriendsBadgesView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_1000275BC(a1, a2, v8, a3);
}

uint64_t sub_10002B104()
{

  return swift_deallocObject();
}

unint64_t sub_10002B16C()
{
  result = qword_1006E1238;
  if (!qword_1006E1238)
  {
    sub_100010324(&unk_1006E11E8, &qword_10057CD98);
    sub_1000283AC(&qword_1006E1240, sub_1000168CC, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1238);
  }

  return result;
}

unint64_t sub_10002B220()
{
  result = qword_1006E1248;
  if (!qword_1006E1248)
  {
    sub_100010324(&qword_1006E1228, &qword_10057CE20);
    sub_10002B2AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1248);
  }

  return result;
}

unint64_t sub_10002B2AC()
{
  result = qword_1006E1250;
  if (!qword_1006E1250)
  {
    sub_100010324(&qword_1006E1258, &qword_10057CE28);
    sub_10002B338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1250);
  }

  return result;
}

unint64_t sub_10002B338()
{
  result = qword_1006E1260;
  if (!qword_1006E1260)
  {
    sub_100010324(&qword_1006E1268, &qword_10057CE30);
    sub_100010324(&qword_1006E1270, &qword_10057CE38);
    sub_100010324(&qword_1006E1278, &qword_10057CE40);
    sub_10002B444();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1260);
  }

  return result;
}

unint64_t sub_10002B444()
{
  result = qword_1006E1280;
  if (!qword_1006E1280)
  {
    sub_100010324(&qword_1006E1278, &qword_10057CE40);
    sub_10002B4C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1280);
  }

  return result;
}

unint64_t sub_10002B4C8()
{
  result = qword_1006E1288;
  if (!qword_1006E1288)
  {
    sub_100010324(&qword_1006E1290, &qword_10057CE48);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006E1298, &qword_1006E12A0, &qword_10057CE50, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1288);
  }

  return result;
}

unint64_t sub_10002B5A0()
{
  result = qword_1006E12F0;
  if (!qword_1006E12F0)
  {
    sub_100010324(&qword_1006E12B0, &qword_10057CE60);
    sub_10002B62C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E12F0);
  }

  return result;
}

unint64_t sub_10002B62C()
{
  result = qword_1006E12F8;
  if (!qword_1006E12F8)
  {
    sub_100010324(&qword_1006E12A8, &qword_10057CE58);
    sub_100010BC0(&qword_1006E1300, &qword_1006E1308, &unk_10057CEA0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E12F8);
  }

  return result;
}

uint64_t sub_10002B704(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_10056D858();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10056C8A8();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for ArtworkImage.Placeholder(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[14];

  return v15(v16, a2, v14);
}

uint64_t sub_10002B884(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_10056D858();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10056C8A8();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for ArtworkImage.Placeholder(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[14];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for WidgetMusicPin(uint64_t a1)
{
  result = qword_1006E1368;
  if (!qword_1006E1368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002BA3C(uint64_t a1)
{
  sub_10056D858();
  if (v1 <= 0x3F)
  {
    sub_10056C8A8();
    if (v2 <= 0x3F)
    {
      sub_10002BB7C(319, &qword_1006E1378, &type metadata for MusicItemID, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_10002BB7C(319, &unk_1006E1380, &type metadata for TextBadge, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ArtworkImage.Placeholder(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10002BB7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10002BBCC()
{
  v1 = type metadata accessor for WidgetMusicPin(0);
  v2 = (v0 + v1[7]);
  v3 = *v2;
  v4 = v2[1];
  if (qword_1006DF908 != -1)
  {
    swift_once();
  }

  v5 = sub_10000C49C(v1, qword_1006FC080);
  v6 = (v5 + v1[7]);
  v7 = v3 == *v6 && v4 == v6[1];
  if (!v7 && (sub_100574498() & 1) == 0)
  {
    return 0;
  }

  v8 = v1[8];
  v9 = (v0 + v8);
  v10 = *(v0 + v8 + 8);
  v11 = (v5 + v8);
  v12 = v11[1];
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }

    v13 = *v9 == *v11 && v10 == v12;
    if (!v13 && (sub_100574498() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v14 = v1[9];
  v15 = *(v0 + v14);
  v16 = *(v0 + v14 + 8);
  v17 = (v5 + v14);
  v18 = v15 == *v17 && v16 == v17[1];
  if (!v18 && (sub_100574498() & 1) == 0)
  {
    return 0;
  }

  if (*v0 == *v5 && v0[1] == v5[1])
  {
    return 1;
  }

  return sub_100574498();
}

uint64_t sub_10002BD3C()
{
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v1 = &v23 - v0;
  v2 = sub_10056C8A8();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10056D858();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WidgetMusicPin(0);
  sub_10000C910(v10, qword_1006FC080);
  v11 = sub_10000C49C(v10, qword_1006FC080);
  v12 = *(v7 + 104);
  v26 = v6;
  v12(v9, enum case for MusicPin.Action.play(_:), v6);
  sub_10056C868();
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = *(v3 + 32);
    v14(v5, v1, v2);
    v15 = sub_1005713C8();
    v23 = v16;
    v24 = v15;
    v25 = [objc_allocWithZone(UIImage) init];
    v17 = v10[14];
    v18 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
    (*(*(v18 - 8) + 56))(&v11[v17], 1, 11, v18);
    *v11 = 0xD000000000000018;
    *(v11 + 1) = 0x80000001005AA470;
    (*(v7 + 32))(&v11[v10[5]], v9, v26);
    result = (v14)(&v11[v10[6]], v5, v2);
    v19 = &v11[v10[7]];
    v20 = v23;
    *v19 = v24;
    v19[1] = v20;
    v21 = &v11[v10[8]];
    *v21 = 0;
    *(v21 + 1) = 0;
    v22 = &v11[v10[9]];
    *v22 = 0;
    *(v22 + 1) = 0xE000000000000000;
    *&v11[v10[10]] = _swiftEmptyArrayStorage;
    v11[v10[11]] = 0;
    *&v11[v10[12]] = v25;
    v11[v10[13]] = 0;
    *&v11[v10[15]] = 0x3FF0000000000000;
  }

  return result;
}

void *sub_10002C0B4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 48));
  v3 = v2;
  return v2;
}

uint64_t sub_10002C100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.Placeholder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002C168()
{
  result = qword_1006E13F0;
  if (!qword_1006E13F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E13F0);
  }

  return result;
}

unint64_t sub_10002C1C4()
{
  result = qword_1006E13F8;
  if (!qword_1006E13F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E13F8);
  }

  return result;
}

unint64_t sub_10002C21C()
{
  result = qword_1006E1400;
  if (!qword_1006E1400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1400);
  }

  return result;
}

uint64_t sub_10002C2DC()
{
  v0 = sub_10056C758();
  sub_10000C910(v0, qword_1006FC098);
  sub_10000C49C(v0, qword_1006FC098);
  return sub_10056C738();
}

uint64_t sub_10002C360()
{
  if (qword_1006DF918 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, qword_1006E13D8);
  v2 = sub_10056DF68();
  v3 = sub_100573428();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MusicWidgets process should not be performing StartPlaybackAppIntent.", v4, 2u);
  }

  sub_10056C068();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10002C484@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006DF910 != -1)
  {
    swift_once();
  }

  v2 = sub_10056C758();
  v3 = sub_10000C49C(v2, qword_1006FC098);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10002C548(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000CB98;

  return sub_10002C340(a1);
}

uint64_t sub_10002C5E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002CD48();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_10002C60C(uint64_t a1)
{
  v2 = sub_10002AAD4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 initializeBufferWithCopyOfBuffer for WidgetMusicItem.ArtworkColor(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10002C65C(uint64_t *a1, int a2)
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

uint64_t sub_10002C6A4(uint64_t result, int a2, int a3)
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

unint64_t sub_10002C6F8()
{
  result = qword_1006E1408;
  if (!qword_1006E1408)
  {
    sub_100010324(&qword_1006E1410, &qword_100581950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1408);
  }

  return result;
}

uint64_t sub_10002C75C()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006E13D8);
  sub_10000C49C(v0, qword_1006E13D8);
  return static Logger.music(_:)(0xD000000000000016, 0x800000010057D040);
}

uint64_t sub_10002C7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v33 = a1;
  v34 = a2;
  v47 = sub_10056C178();
  v4 = *(v47 - 8);
  __chkstk_darwin();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E1418, &qword_10057D080);
  __chkstk_darwin();
  v8 = &v27 - v7;
  sub_100009DCC(&qword_1006E1420, &qword_10057D088);
  __chkstk_darwin();
  v10 = &v27 - v9;
  sub_100009DCC(&qword_1006E1428, &qword_10057D090);
  __chkstk_darwin();
  v12 = &v27 - v11;
  v13 = sub_10056C758();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  sub_100009DCC(&qword_1006E1430, &qword_10057D098);
  v37 = "________________________";
  sub_10056C738();
  v15 = *(v14 + 56);
  v30 = v14 + 56;
  v31 = v15;
  v15(v12, 1, 1, v13);
  v46 = sub_1005727F8();
  v48 = 0;
  v49 = 0;
  v16 = *(v46 - 8);
  v45 = *(v16 + 56);
  v38 = v16 + 56;
  v45(v10, 1, 1, v46);
  v43 = sub_10056C058();
  v17 = *(v43 - 8);
  v42 = *(v17 + 56);
  v44 = v17 + 56;
  v28 = v8;
  v42(v8, 1, 1, v43);
  v41 = enum case for InputConnectionBehavior.default(_:);
  v18 = *(v4 + 104);
  v39 = v4 + 104;
  v40 = v18;
  v29 = v6;
  v19 = v47;
  v18(v6);
  v20 = v10;
  v32 = sub_10056C0C8();
  sub_100009DCC(&qword_1006E1438, &qword_10057D0A0);

  sub_10056C738();
  v21 = v31;
  v31(v12, 1, 1, v13);
  v48 = 0;
  v49 = 0;
  v22 = v20;
  v45(v20, 1, 1, v46);
  v23 = v28;
  v42(v28, 1, 1, v43);
  v24 = v29;
  v40(v29, v41, v19);
  sub_10056C0C8();

  sub_10056C738();
  v21(v12, 1, 1, v13);
  v48 = 0;
  v49 = 0;
  v45(v22, 1, 1, v46);
  v42(v23, 1, 1, v43);
  v40(v24, v41, v47);
  sub_10056C0C8();
  v48 = v33;
  v49 = v34;

  v25 = v32;
  sub_10056C088();
  v48 = v35;
  v49 = v36;
  sub_10056C088();

  return v25;
}

uint64_t sub_10002CD48()
{
  v34 = sub_10056C178();
  v0 = *(v34 - 8);
  __chkstk_darwin();
  v2 = v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E1418, &qword_10057D080);
  __chkstk_darwin();
  v4 = v20 - v3;
  sub_100009DCC(&qword_1006E1420, &qword_10057D088);
  __chkstk_darwin();
  v6 = v20 - v5;
  sub_100009DCC(&qword_1006E1428, &qword_10057D090);
  __chkstk_darwin();
  v8 = v20 - v7;
  v9 = sub_10056C758();
  v25 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin();
  sub_100009DCC(&qword_1006E1430, &qword_10057D098);
  sub_10056C738();
  v11 = *(v10 + 56);
  v23 = v10 + 56;
  v27 = v11;
  v11(v8, 1, 1, v9);
  v26 = sub_1005727F8();
  v35 = 0;
  v36 = 0;
  v12 = *(v26 - 8);
  v33 = *(v12 + 56);
  v22 = v12 + 56;
  v33(v6, 1, 1, v26);
  v31 = sub_10056C058();
  v13 = *(v31 - 8);
  v30 = *(v13 + 56);
  v32 = v13 + 56;
  v20[0] = v4;
  v30(v4, 1, 1, v31);
  v29 = enum case for InputConnectionBehavior.default(_:);
  v21 = *(v0 + 104);
  v28 = v0 + 104;
  v14 = v34;
  v21(v2);
  v15 = v2;
  v24 = sub_10056C0C8();
  sub_100009DCC(&qword_1006E1438, &qword_10057D0A0);
  sub_10056C738();
  v27(v8, 1, 1, v25);
  v35 = 0;
  v36 = 0;
  v33(v6, 1, 1, v26);
  v16 = v20[0];
  v30(v20[0], 1, 1, v31);
  v17 = v14;
  v18 = v21;
  (v21)(v15, v29, v17);
  v20[1] = sub_10056C0C8();
  sub_10056C738();
  v27(v8, 1, 1, v25);
  v35 = 0;
  v36 = 0;
  v33(v6, 1, 1, v26);
  v30(v16, 1, 1, v31);
  (v18)(v15, v29, v34);
  sub_10056C0C8();
  return v24;
}

uint64_t sub_10002D268(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10002D280(uint64_t a1, uint64_t a2)
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

uint64_t sub_10002D29C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_10002D2F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_10002D388@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  sub_100009DCC(&qword_1006E1440, &qword_10057D180);
  __chkstk_darwin();
  v3 = &v31 - v2;
  v4 = sub_100009DCC(&qword_1006E1448, &qword_10057D188);
  __chkstk_darwin();
  v6 = &v31 - v5;
  v36 = sub_100009DCC(&qword_1006E1450, &qword_10057D190);
  v34 = *(v36 - 8);
  __chkstk_darwin();
  v8 = &v31 - v7;
  v35 = sub_100009DCC(&qword_1006E1458, &qword_10057D198);
  v32 = *(v35 - 8);
  __chkstk_darwin();
  v10 = &v31 - v9;
  v33 = sub_100009DCC(&qword_1006E1460, &qword_10057D1A0);
  __chkstk_darwin();
  v12 = &v31 - v11;
  sub_10002D820(v1, v3);
  sub_10002E410(v1, v38);
  v13 = v39;
  if (v39)
  {
    v14 = v40;
    sub_10000C8CC(v38, v39);
    v15 = (*(v14 + 16))(v13, v14);
    sub_100010474(v38);
  }

  else
  {
    sub_10001036C(v38, &qword_1006E1468, &qword_10057D1A8);
    v15 = 1.0;
  }

  sub_10002E480(v3, v6);
  v16 = &v6[*(v4 + 36)];
  *v16 = v15;
  *(v16 + 4) = 0;
  v18 = *(v1 + 40);
  v17 = *(v1 + 48);
  v19 = *(v1 + 56);
  v20 = sub_10002E4F0();
  View.corner(_:)(v18, v17, v19, v4, v20);
  sub_10001036C(v6, &qword_1006E1448, &qword_10057D188);
  sub_1005704D8();
  v21 = sub_1005704E8();

  v22 = CFRange.init(_:)(v21);
  v24 = v23;
  v38[0] = v4;
  v38[1] = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v17;
  v27 = v36;
  View.border(_:corner:)(v22.location, v22.length, v18, v26, v19, v36, OpaqueTypeConformance2, v24);

  (*(v34 + 8))(v8, v27);
  if (qword_1006DF948 != -1)
  {
    swift_once();
  }

  v28 = qword_1006FC0F8;
  (*(v32 + 32))(v12, v10, v35);
  v29 = &v12[*(v33 + 36)];
  *v29 = v28;
  *(v29 + 8) = xmmword_10057D0C0;
  *(v29 + 3) = 0x4000000000000000;
  sub_10002E968();

  sub_100570078();
  return sub_10001036C(v12, &qword_1006E1460, &qword_10057D1A0);
}

uint64_t sub_10002D820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = sub_100009DCC(&qword_1006E14D0, &qword_1005817B0);
  __chkstk_darwin();
  v5 = (&v48 - v4);
  v6 = sub_100009DCC(&qword_1006E14E8, &qword_10057D1D8);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v48 - v8;
  v56 = sub_100009DCC(&qword_1006E14F0, &qword_10057D1E0);
  __chkstk_darwin();
  v57 = &v48 - v10;
  sub_100009DCC(&qword_1006E12C0, &qword_10057CE70);
  __chkstk_darwin();
  v12 = &v48 - v11;
  v13 = sub_100570558();
  v48 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100009DCC(&qword_1006E14A8, &qword_10057D1C0);
  __chkstk_darwin();
  v17 = &v48 - v16;
  v51 = sub_100009DCC(&qword_1006E14F8, &qword_10057D1E8);
  __chkstk_darwin();
  v52 = (&v48 - v18);
  v55 = sub_100009DCC(&qword_1006E1498, &qword_10057D1B8);
  __chkstk_darwin();
  v54 = &v48 - v19;
  sub_10002E410(a1, &v59);
  if (!v60)
  {
    sub_10001036C(&v59, &qword_1006E1468, &qword_10057D1A8);
    goto LABEL_5;
  }

  v49 = v6;
  v50 = a2;
  sub_10002EA74(&v59, v61);
  v21 = v62;
  v20 = v63;
  sub_10000C8CC(v61, v62);
  if ((*(v20 + 40))(v21, v20))
  {
    sub_100010474(v61);
    v6 = v49;
LABEL_5:
    if (qword_1006DF930 != -1)
    {
      swift_once();
    }

    v22 = sub_1005704E8();
    v23 = v58;
    v24 = *(v58 + 36);
    v25 = enum case for BlendMode.plusLighter(_:);
    v26 = sub_100570A78();
    (*(*(v26 - 8) + 104))(v5 + v24, v25, v26);
    *v5 = v22;
    v27 = sub_10002E8E4();
    sub_10056FFD8();
    sub_10001036C(v5, &qword_1006E14D0, &qword_1005817B0);
    (*(v7 + 16))(v57, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_10002E6D0();
    v61[0] = v23;
    v61[1] = v27;
    swift_getOpaqueTypeConformance2();
    sub_10056F5B8();
    return (*(v7 + 8))(v9, v6);
  }

  v29 = v62;
  v30 = v63;
  sub_10000C8CC(v61, v62);
  v31 = (*(v30 + 8))(v29, v30);
  if (v31)
  {
    v32 = v31;
    sub_100570538();
    v33 = v48;
    (*(v48 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v13);
    sub_1005705D8();

    (*(v33 + 8))(v15, v13);
    sub_100572478();
    v34 = sub_100572488();
    (*(*(v34 - 8) + 56))(v12, 0, 1, v34);
    sub_1005705C8();

    sub_10001036C(v12, &qword_1006E12C0, &qword_10057CE70);
    [v32 size];
    v36 = v35;
    [v32 size];
    v38 = v36 / v37;
    v39 = &v17[*(sub_100009DCC(&qword_1006E14B8, &qword_10057D1C8) + 36)];
    *v39 = v38;
    *(v39 + 4) = 0;
    if (qword_1006DF940 != -1)
    {
      swift_once();
    }

    v40 = qword_1006FC0F0;
    v41 = sub_10056FA38();
    v42 = v52;
    v43 = &v17[*(v53 + 36)];
    *v43 = v40;
    v43[8] = v41;
    sub_10000CC8C(v17, v42, &qword_1006E14A8, &qword_10057D1C0);
    swift_storeEnumTagMultiPayload();

    sub_100009DCC(&qword_1006E12A0, &qword_10057CE50);
    sub_10002E788();
    sub_100010BC0(&qword_1006E1298, &qword_1006E12A0, &qword_10057CE50, &protocol conformance descriptor for GeometryReader<A>);
    v44 = v54;
    sub_10056F5B8();

    sub_10001036C(v17, &qword_1006E14A8, &qword_10057D1C0);
  }

  else
  {
    sub_10002EA8C(v61, &v59);
    v45 = swift_allocObject();
    sub_10002EA74(&v59, v45 + 16);
    v46 = v52;
    *v52 = sub_10002EB28;
    v46[1] = v45;
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E12A0, &qword_10057CE50);
    sub_10002E788();
    sub_100010BC0(&qword_1006E1298, &qword_1006E12A0, &qword_10057CE50, &protocol conformance descriptor for GeometryReader<A>);
    v44 = v54;
    sub_10056F5B8();
  }

  sub_10000CC8C(v44, v57, &qword_1006E1498, &qword_10057D1B8);
  swift_storeEnumTagMultiPayload();
  sub_10002E6D0();
  v47 = sub_10002E8E4();
  *&v59 = v58;
  *(&v59 + 1) = v47;
  swift_getOpaqueTypeConformance2();
  sub_10056F5B8();
  sub_10001036C(v44, &qword_1006E1498, &qword_10057D1B8);
  return sub_100010474(v61);
}

uint64_t sub_10002E150@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_100009DCC(&qword_1006E12D0, &qword_10057CE80);
  __chkstk_darwin();
  v5 = &v23 - v4;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&qword_1006E12D8, &qword_10057CE88);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v23 - v10;
  v13 = a1[3];
  v12 = a1[4];
  sub_10000C8CC(a1, v13);
  (*(v12 + 24))(v13, v12);
  sub_10056E928();
  ArtworkImage.Placeholder.view(availableSize:)(v11, v14, v15);
  sub_10002EB30(v7);
  v16 = ArtworkImage.Placeholder.View.Style.widgets.unsafeMutableAddressor();
  sub_10002EB8C(v16, v5);
  v17 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.placeholderStyle(_:)(v5, v8, OpaqueTypeConformance2);
  sub_10001036C(v5, &qword_1006E12D0, &qword_10057CE80);
  (*(v9 + 8))(v11, v8);
  v19 = *(sub_100009DCC(&qword_1006E12E0, &qword_10057CE90) + 36);
  v20 = enum case for BlendMode.plusLighter(_:);
  v21 = sub_100570A78();
  return (*(*(v21 - 8) + 104))(a2 + v19, v20, v21);
}

uint64_t sub_10002E410(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E1468, &qword_10057D1A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002E480(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E1440, &qword_10057D180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002E4F0()
{
  result = qword_1006E1470;
  if (!qword_1006E1470)
  {
    sub_100010324(&qword_1006E1448, &qword_10057D188);
    sub_10002E57C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1470);
  }

  return result;
}

unint64_t sub_10002E57C()
{
  result = qword_1006E1478;
  if (!qword_1006E1478)
  {
    sub_100010324(&qword_1006E1440, &qword_10057D180);
    sub_10002E600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1478);
  }

  return result;
}

unint64_t sub_10002E600()
{
  result = qword_1006E1480;
  if (!qword_1006E1480)
  {
    sub_100010324(&qword_1006E1488, &qword_10057D1B0);
    sub_10002E6D0();
    sub_100010324(&qword_1006E14D0, &qword_1005817B0);
    sub_10002E8E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1480);
  }

  return result;
}

unint64_t sub_10002E6D0()
{
  result = qword_1006E1490;
  if (!qword_1006E1490)
  {
    sub_100010324(&qword_1006E1498, &qword_10057D1B8);
    sub_10002E788();
    sub_100010BC0(&qword_1006E1298, &qword_1006E12A0, &qword_10057CE50, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1490);
  }

  return result;
}

unint64_t sub_10002E788()
{
  result = qword_1006E14A0;
  if (!qword_1006E14A0)
  {
    sub_100010324(&qword_1006E14A8, &qword_10057D1C0);
    sub_10002E840();
    sub_100010BC0(&qword_1006E14C0, &qword_1006E14C8, &qword_10057D1D0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E14A0);
  }

  return result;
}

unint64_t sub_10002E840()
{
  result = qword_1006E14B0;
  if (!qword_1006E14B0)
  {
    sub_100010324(&qword_1006E14B8, &qword_10057D1C8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E14B0);
  }

  return result;
}

unint64_t sub_10002E8E4()
{
  result = qword_1006E14D8;
  if (!qword_1006E14D8)
  {
    sub_100010324(&qword_1006E14D0, &qword_1005817B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E14D8);
  }

  return result;
}

unint64_t sub_10002E968()
{
  result = qword_1006E14E0;
  if (!qword_1006E14E0)
  {
    sub_100010324(&qword_1006E1460, &qword_10057D1A0);
    sub_100010324(&qword_1006E1450, &qword_10057D190);
    sub_100010324(&qword_1006E1448, &qword_10057D188);
    sub_10002E4F0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E14E0);
  }

  return result;
}

uint64_t sub_10002EA74(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10002EA8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002EAF0()
{
  sub_100010474((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10002EB30(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkImage.Placeholder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002EB8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002EBF4()
{
  result = qword_1006E1500;
  if (!qword_1006E1500)
  {
    sub_100010324(&qword_1006E1508, &qword_10057D1F0);
    sub_10002E968();
    sub_10002EC80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1500);
  }

  return result;
}

unint64_t sub_10002EC80()
{
  result = qword_1006E0DC8;
  if (!qword_1006E0DC8)
  {
    sub_10056F948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0DC8);
  }

  return result;
}

uint64_t sub_10002ECEC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002EDBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PosterWidgetConfiguration.BasicMusicItem(uint64_t a1)
{
  result = qword_1006E1568;
  if (!qword_1006E1568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002EEB8(uint64_t a1)
{
  sub_10001F8F4();
  if (v1 <= 0x3F)
  {
    sub_10001507C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10002EF64(void *a1)
{
  v3 = v1;
  v5 = sub_100009DCC(&qword_1006E15D8, &qword_10057D338);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11 - v7;
  sub_10000C8CC(a1, a1[3]);
  sub_10002FB30();
  sub_100574718();
  LOBYTE(v12) = 0;
  sub_100574328();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_100574328();
    LOBYTE(v12) = 2;
    sub_100574308();
    LOBYTE(v12) = *(v3 + 48);
    v13 = 3;
    sub_10002FD00();
    sub_100574368();
    v9 = type metadata accessor for PosterWidgetConfiguration.BasicMusicItem(0);
    LOBYTE(v12) = 4;
    sub_10056CAA8();
    sub_10002FD54(&qword_1006DFF90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_100574318();
    LOBYTE(v12) = 5;
    sub_100574318();
    v12 = *(v3 + *(v9 + 40));
    v13 = 6;
    sub_100014D78();
    sub_100574368();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10002F280@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  __chkstk_darwin();
  v25 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = v23 - v4;
  v6 = sub_100009DCC(&qword_1006E15C0, &qword_10057D330);
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin();
  v8 = v23 - v7;
  v9 = type metadata accessor for PosterWidgetConfiguration.BasicMusicItem(0);
  __chkstk_darwin();
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C8CC(a1, a1[3]);
  sub_10002FB30();
  v12 = v28;
  sub_100574708();
  if (v12)
  {
    return sub_100010474(a1);
  }

  v13 = v5;
  v14 = v26;
  LOBYTE(v29) = 0;
  *v11 = sub_100574298();
  *(v11 + 1) = v15;
  v28 = v15;
  LOBYTE(v29) = 1;
  v16 = v14;
  *(v11 + 2) = sub_100574298();
  *(v11 + 3) = v17;
  LOBYTE(v29) = 2;
  *(v11 + 4) = sub_100574278();
  *(v11 + 5) = v18;
  v30 = 3;
  sub_10002FBEC();
  sub_1005742D8();
  v11[48] = v29;
  v23[1] = sub_10056CAA8();
  LOBYTE(v29) = 4;
  v23[0] = sub_10002FD54(&qword_1006DFFB8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_100574288();
  v19 = v11;
  sub_100015128(v13, &v11[v9[8]]);
  LOBYTE(v29) = 5;
  v20 = v25;
  sub_100574288();
  sub_100015128(v20, v19 + v9[9]);
  v30 = 6;
  sub_100014D24();
  sub_1005742D8();
  v21 = v9[10];
  (*(v16 + 8))(v8, v27);
  *(v19 + v21) = v29;
  sub_10002FC40(v19, v24);
  sub_100010474(a1);
  return sub_10002FCA4(v19);
}

unint64_t sub_10002F7B4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x49656C6261646F63;
  }

  v4 = 1684957547;
  if (v1 != 3)
  {
    v4 = 0x79616C507473616CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x656C746974627573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10002F890@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100030004(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10002F8C4(uint64_t a1)
{
  v2 = sub_10002FB30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002F900(uint64_t a1)
{
  v2 = sub_10002FB30();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10002F93C()
{
  sub_100574678();
  sub_1005729F8();
  sub_1005729F8();
  return sub_1005746C8();
}

uint64_t sub_10002F98C(uint64_t a1)
{
  sub_1005729F8();

  return sub_1005729F8();
}

Swift::Int sub_10002F9CC(uint64_t a1)
{
  sub_100574678();
  sub_1005729F8();
  sub_1005729F8();
  return sub_1005746C8();
}

uint64_t sub_10002FA48@<X0>(void *a2@<X8>)
{
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

uint64_t sub_10002FA54(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_100574498(), result = 0, (v5 & 1) != 0))
  {
    if (a1[2] == a2[2] && a1[3] == a2[3])
    {
      return 1;
    }

    else
    {

      return sub_100574498();
    }
  }

  return result;
}

unint64_t sub_10002FB30()
{
  result = qword_1006E15C8;
  if (!qword_1006E15C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E15C8);
  }

  return result;
}

uint64_t sub_10002FB84(uint64_t a1)
{
  v2 = sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002FBEC()
{
  result = qword_1006E15D0;
  if (!qword_1006E15D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E15D0);
  }

  return result;
}

uint64_t sub_10002FC40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PosterWidgetConfiguration.BasicMusicItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002FCA4(uint64_t a1)
{
  v2 = type metadata accessor for PosterWidgetConfiguration.BasicMusicItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002FD00()
{
  result = qword_1006E15E0;
  if (!qword_1006E15E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E15E0);
  }

  return result;
}

uint64_t sub_10002FD54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for PosterWidgetConfiguration.BasicMusicItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PosterWidgetConfiguration.BasicMusicItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002FF00()
{
  result = qword_1006E15E8;
  if (!qword_1006E15E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E15E8);
  }

  return result;
}

unint64_t sub_10002FF58()
{
  result = qword_1006E15F0;
  if (!qword_1006E15F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E15F0);
  }

  return result;
}

unint64_t sub_10002FFB0()
{
  result = qword_1006E15F8;
  if (!qword_1006E15F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E15F8);
  }

  return result;
}

uint64_t sub_100030004(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_100574498() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_100574498() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_100574498() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_100574498() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79616C507473616CLL && a2 == 0xEE00657461446465 || (sub_100574498() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001005AA4F0 == a2 || (sub_100574498() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49656C6261646F63 && a2 == 0xEC0000006567616DLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_100574498();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void sub_10003033C(void *a1@<X8>)
{
  sub_10056F118();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_10003036C@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v47 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v34 = &v32 - v3;
  v43 = sub_10056EDA8();
  v45 = *(v43 - 8);
  __chkstk_darwin();
  v42 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10056F898();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&qword_1006E1690, &qword_10057D500);
  __chkstk_darwin();
  v10 = &v32 - v9;
  v46 = sub_100009DCC(&qword_1006E1698, &qword_10057D508);
  v41 = *(v46 - 8);
  __chkstk_darwin();
  v12 = &v32 - v11;
  v33 = sub_100009DCC(&qword_1006E16A0, &qword_10057D510);
  v32 = *(v33 - 8);
  __chkstk_darwin();
  v44 = &v32 - v13;
  *v10 = sub_10056F368();
  *(v10 + 1) = 0x4036000000000000;
  v10[16] = 0;
  v14 = &v10[*(sub_100009DCC(&qword_1006E16A8, &qword_10057D518) + 44)];
  v36 = v1;
  sub_100030A34(v1, v14);
  sub_10056F888();
  v48 = v1;
  sub_1005709E8();
  v15 = sub_100009DCC(&qword_1006E0D90, &unk_10057D520);
  v16 = sub_100010BC0(&qword_1006E16B0, &qword_1006E1690, &qword_10057D500, &protocol conformance descriptor for VStack<A>);
  v17 = sub_100028AD8();
  v39 = v12;
  v40 = v8;
  v18 = v15;
  sub_1005701E8();
  (*(v37 + 8))(v7, v38);
  sub_10001036C(v10, &qword_1006E1690, &qword_10057D500);
  if (sub_100054A44())
  {
    v19 = v42;
    sub_10056ED98();
    v20 = v43;
  }

  else
  {
    v49 = _swiftEmptyArrayStorage;
    sub_1000327E4(&qword_1006E0C78, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
    sub_100009DCC(&qword_1006E0C80, &unk_10057D530);
    sub_100010BC0(&qword_1006E0C88, &qword_1006E0C80, &unk_10057D530, &protocol conformance descriptor for [A]);
    v19 = v42;
    v21 = v43;
    sub_100573DA8();
    v20 = v21;
  }

  v49 = v40;
  v50 = v18;
  v51 = v16;
  v52 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v44;
  v24 = v46;
  v25 = v39;
  sub_100570358();
  (*(v45 + 8))(v19, v20);
  (*(v41 + 8))(v25, v24);
  v26 = v47;
  sub_10056C868();
  v27 = sub_10056C8A8();
  v28 = *(v27 - 8);
  result = (*(v28 + 48))(v26, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v30 = v34;
    (*(v28 + 32))(v34, v26, v27);
    (*(v28 + 56))(v30, 0, 1, v27);
    v49 = v24;
    v50 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v31 = v33;
    sub_10056FF68();
    sub_10001036C(v30, qword_1006E1D50, &qword_10057CA90);
    return (*(v32 + 8))(v23, v31);
  }

  return result;
}

uint64_t sub_100030A34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a1;
  v66 = a2;
  v63 = sub_100009DCC(&qword_1006E16B8, &qword_10057D540);
  __chkstk_darwin();
  v65 = &v47 - v3;
  v64 = sub_100009DCC(&qword_1006E16C0, &qword_10057D548);
  __chkstk_darwin();
  v48 = &v47 - v4;
  v57 = sub_10056F808();
  v56 = *(v57 - 8);
  __chkstk_darwin();
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for RadioWidgetView(0) - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v53 = sub_100009DCC(&qword_1006E16C8, &qword_10057D550);
  __chkstk_darwin();
  v10 = &v47 - v9;
  v55 = sub_100009DCC(&qword_1006E16D0, &qword_10057D558);
  v54 = *(v55 - 8);
  __chkstk_darwin();
  v52 = &v47 - v11;
  v51 = sub_100009DCC(&qword_1006E16D8, &qword_10057D560);
  __chkstk_darwin();
  v50 = &v47 - v12;
  sub_100009DCC(&qword_1006E16E0, &qword_10057D568);
  __chkstk_darwin();
  v62 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = &v47 - v14;
  __chkstk_darwin();
  v61 = &v47 - v15;
  sub_10056CC38();
  __chkstk_darwin();
  sub_100572888();
  __chkstk_darwin();
  sub_100572818();
  sub_10056CBC8();
  v58 = sub_100572948();
  v59 = v16;
  *v10 = sub_1005709E8();
  *(v10 + 1) = v17;
  *(v10 + 2) = 0x4028000000000000;
  v10[24] = 0;
  *(v10 + 4) = 0x4034000000000000;
  v10[40] = 0;
  sub_100009DCC(&qword_1006E16E8, &unk_10057D570);
  v71 = xmmword_10057D470;
  swift_getKeyPath();
  sub_1000337A0(a1, &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RadioWidgetView);
  v18 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 3;
  sub_100033C64(&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for RadioWidgetView);
  sub_100009DCC(&qword_1006E0E28, &qword_10057CA30);
  sub_100009DCC(&qword_1006E16F0, &qword_10057D5A0);
  sub_100029418();
  v20 = v50;
  sub_100010BC0(&qword_1006E16F8, &qword_1006E16F0, &qword_10057D5A0, &protocol conformance descriptor for GridRow<A>);
  v21 = v51;
  sub_1005708B8();
  sub_10056F7F8();
  sub_100010BC0(&qword_1006E1700, &qword_1006E16C8, &qword_10057D550, &protocol conformance descriptor for Grid<A>);
  v22 = v52;
  sub_1005701F8();
  (*(v56 + 8))(v6, v57);
  sub_10001036C(v10, &qword_1006E16C8, &qword_10057D550);
  sub_1005709E8();
  sub_10056EDF8();
  (*(v54 + 32))(v20, v22, v55);
  v23 = (v20 + *(v21 + 36));
  v24 = v76;
  v23[4] = v75;
  v23[5] = v24;
  v23[6] = v77;
  v25 = v72;
  *v23 = v71;
  v23[1] = v25;
  v26 = v74;
  v23[2] = v73;
  v23[3] = v26;
  v27 = (v49 + *(type metadata accessor for RadioWidgetTimelineProvider.Entry(0) + 36));
  v28 = v27[1];
  if (v28)
  {
    v29 = v48;
    v30 = &v48[*(v64 + 36)];
    *v30 = *v27;
    *(v30 + 1) = v28;
    __asm { FMOV            V0.2D, #16.0 }

    *(v30 + 1) = _Q0;
    v67 = 0;
    v68 = 0;
    type metadata accessor for CGSize(0);

    sub_100570668();
    v36 = v70;
    *(v30 + 2) = v69;
    *(v30 + 6) = v36;
    v37 = type metadata accessor for ErrorMessageModifier(0);
    sub_10056FDE8();
    v38 = *(v37 + 36);
    *&v30[v38] = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0148, &qword_10057C450);
    swift_storeEnumTagMultiPayload();
    v39 = &v30[*(v37 + 40)];
    *v39 = swift_getKeyPath();
    *(v39 + 1) = 0;
    *(v39 + 2) = 0;
    *(v39 + 3) = 0;
    v39[32] = 0;
    sub_10000CC8C(v20, v29, &qword_1006E16D8, &qword_10057D560);
    sub_10000CC8C(v29, v65, &qword_1006E16C0, &qword_10057D548);
    swift_storeEnumTagMultiPayload();
    sub_100033D50();
    sub_100033E0C();
    v40 = v60;
    sub_10056F5B8();
    sub_10001036C(v29, &qword_1006E16C0, &qword_10057D548);
  }

  else
  {
    sub_10000CC8C(v20, v65, &qword_1006E16D8, &qword_10057D560);
    swift_storeEnumTagMultiPayload();
    sub_100033D50();
    sub_100033E0C();
    v40 = v60;
    sub_10056F5B8();
  }

  sub_10001036C(v20, &qword_1006E16D8, &qword_10057D560);
  v41 = v61;
  sub_100033F08(v40, v61);
  v42 = v62;
  sub_10000CC8C(v41, v62, &qword_1006E16E0, &qword_10057D568);
  v43 = v66;
  v44 = v59;
  *v66 = v58;
  v43[1] = v44;
  v45 = sub_100009DCC(&qword_1006E1718, &qword_10057D5A8);
  sub_10000CC8C(v42, v43 + *(v45 + 48), &qword_1006E16E0, &qword_10057D568);

  sub_10001036C(v41, &qword_1006E16E0, &qword_10057D568);
  sub_10001036C(v42, &qword_1006E16E0, &qword_10057D568);
}

uint64_t sub_10003148C@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(type metadata accessor for RadioWidgetView(0) - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = *a1;
  *a4 = 0;
  *(a4 + 8) = 1;
  result = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (*(*(a3 + *(result + 20)) + 16) >= a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = *(*(a3 + *(result + 20)) + 16);
    }

    sub_100009DCC(&qword_1006E16F0, &qword_10057D5A0);
    v15[0] = 0;
    v15[1] = v12;
    swift_getKeyPath();
    sub_1000337A0(a3, v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RadioWidgetView);
    v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    *(v14 + 24) = a2;
    sub_100033C64(v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for RadioWidgetView);
    sub_100009DCC(&qword_1006E0E28, &qword_10057CA30);
    sub_100009DCC(&qword_1006E1720, &qword_10057D618);
    sub_100029418();
    sub_10003448C();
    return sub_1005708B8();
  }

  return result;
}

void sub_100031698(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  v30 = sub_100009DCC(&qword_1006E1778, &qword_10057D640);
  __chkstk_darwin();
  v10 = &v30 - v9;
  v31 = sub_100009DCC(&qword_1006E1748, &qword_10057D628);
  __chkstk_darwin();
  v12 = &v30 - v11;
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v14 = &v30 - v13;
  v15 = type metadata accessor for WidgetMusicItem(0);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (__OFADD__(a2 * a3, *a1))
  {
LABEL_10:
    __break(1u);
    return;
  }

  type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  Array.subscript.getter(v15, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10001036C(v14, &qword_1006E0618, &unk_10057C230);
    if (a2 <= 0)
    {
      v29 = sub_100009DCC(&qword_1006E1738, &qword_10057D620);
      (*(*(v29 - 8) + 56))(v32, 1, 1, v29);
    }

    else
    {
      v19 = sub_10056F368();
      v20 = sub_1005704B8();
      v35 = 0;
      v34 = 0;
      v33 = 0;
      *v10 = v19;
      *(v10 + 1) = 0;
      v10[16] = 0;
      *(v10 + 3) = v20;
      *(v10 + 4) = 0x3FF0000000000000;
      *(v10 + 20) = 0;
      *(v10 + 6) = 0;
      v10[56] = 0;
      swift_storeEnumTagMultiPayload();
      sub_100009DCC(&qword_1006E1770, &qword_10057D638);
      sub_1000345C8();
      sub_100010BC0(&qword_1006E1768, &qword_1006E1770, &qword_10057D638, &protocol conformance descriptor for VStack<A>);
      v21 = v32;
      sub_10056F5B8();
      v22 = sub_100009DCC(&qword_1006E1738, &qword_10057D620);
      (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
    }
  }

  else
  {
    sub_100033C64(v14, v18, type metadata accessor for WidgetMusicItem);
    sub_1000337A0(v18, v12, type metadata accessor for WidgetMusicItem);
    v23 = *(type metadata accessor for StationCell(0) + 20);
    *&v12[v23] = swift_getKeyPath();
    sub_100009DCC(&qword_1006E1780, &unk_10057D670);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v25 = &v12[*(v31 + 36)];
    v26 = sub_100009DCC(&qword_1006E1760, &qword_10057D630);
    sub_1000337A0(a4, v25 + *(v26 + 28), type metadata accessor for RadioWidgetTimelineProvider.Entry);
    *v25 = KeyPath;
    sub_10000CC8C(v12, v10, &qword_1006E1748, &qword_10057D628);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E1770, &qword_10057D638);
    sub_1000345C8();
    sub_100010BC0(&qword_1006E1768, &qword_1006E1770, &qword_10057D638, &protocol conformance descriptor for VStack<A>);
    v27 = v32;
    sub_10056F5B8();
    sub_10001036C(v12, &qword_1006E1748, &qword_10057D628);
    sub_100034768(v18, type metadata accessor for WidgetMusicItem);
    v28 = sub_100009DCC(&qword_1006E1738, &qword_10057D620);
    (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  }
}

uint64_t sub_100031C08()
{
  sub_100034714();

  return sub_10056F1A8();
}

uint64_t sub_100031C50(uint64_t a1)
{
  type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_1000337A0(a1, &v7 - v4, type metadata accessor for RadioWidgetTimelineProvider.Entry);
  sub_1000337A0(v5, v3, type metadata accessor for RadioWidgetTimelineProvider.Entry);
  sub_100034714();
  sub_10056F1B8();
  return sub_100034768(v5, type metadata accessor for RadioWidgetTimelineProvider.Entry);
}

uint64_t sub_100031D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100009DCC(&qword_1006E0DF0, &qword_10057C9D0);
  __chkstk_darwin();
  v5 = v17 - v4;
  v6 = sub_100570558();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E0DC0, &unk_100580E00);
  __chkstk_darwin();
  v11 = v17 - v10;
  if ((sub_10003209C() & 1) != 0 && (v12 = *(a1 + *(type metadata accessor for RadioWidgetTimelineProvider.Entry(0) + 32))) != 0)
  {
    v13 = v12;
    v17[0] = a2;
    v14 = v13;
    sub_100570538();
    (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
    v15 = sub_1005705D8();

    (*(v7 + 8))(v9, v6);
    v17[1] = v15;
    sub_100570078();

    sub_10000CC8C(v11, v5, &qword_1006E0DC0, &unk_100580E00);
    swift_storeEnumTagMultiPayload();
    sub_100028B64();
    sub_100028C20();
    sub_10056F5B8();

    return sub_10001036C(v11, &qword_1006E0DC0, &unk_100580E00);
  }

  else
  {
    if (qword_1006DF950 != -1)
    {
      swift_once();
    }

    *v5 = xmmword_1006FC100;
    *(v5 + 8) = *(&xmmword_1006FC100 + 8);
    *(v5 + 24) = *&algn_1006FC110[8];
    swift_storeEnumTagMultiPayload();
    sub_100028B64();
    sub_100028C20();

    return sub_10056F5B8();
  }
}

uint64_t sub_10003209C()
{
  v61 = sub_100009DCC(&qword_1006E0DE8, &unk_10057C9C0);
  __chkstk_darwin();
  v67 = &v52 - v1;
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v56 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v52 - v3;
  v66 = type metadata accessor for WidgetMusicItem(0);
  v62 = *(v66 - 1);
  __chkstk_darwin();
  v55 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = &v52 - v5;
  v6 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  v7 = v6[6];
  v63 = v0;
  v8 = *(v0 + v7);
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (!v8)
  {

    goto LABEL_6;
  }

  v10 = sub_100574498();

  if ((v10 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v11 = *(v63 + v6[5]);
  v60 = *(v11 + 16);
  if (!v60)
  {
    return 0;
  }

  v12 = 0;
  v59 = v11 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
  v13 = v6[7];
  v57 = v62 + 56;
  v58 = v13;
  v14 = v11;
  v53 = v11;
  v54 = v62 + 48;
  while (v12 < *(v14 + 16))
  {
    v15 = v62;
    v16 = v64;
    sub_1000337A0(v59 + *(v62 + 72) * v12, v64, type metadata accessor for WidgetMusicItem);
    v17 = v65;
    sub_1000337A0(v16, v65, type metadata accessor for WidgetMusicItem);
    v18 = v66;
    (*(v15 + 56))(v17, 0, 1, v66);
    v19 = *(v61 + 48);
    v20 = v17;
    v21 = v67;
    sub_10000CC8C(v20, v67, &qword_1006E0618, &unk_10057C230);
    sub_10000CC8C(v63 + v58, v21 + v19, &qword_1006E0618, &unk_10057C230);
    v22 = *(v15 + 48);
    if (v22(v21, 1, v18) == 1)
    {
      sub_10001036C(v65, &qword_1006E0618, &unk_10057C230);
      sub_100034768(v64, type metadata accessor for WidgetMusicItem);
      if (v22(v67 + v19, 1, v66) == 1)
      {
        goto LABEL_43;
      }

      goto LABEL_9;
    }

    v24 = v65;
    v23 = v66;
    v25 = v67;
    v26 = v56;
    sub_10000CC8C(v67, v56, &qword_1006E0618, &unk_10057C230);
    if (v22(v25 + v19, 1, v23) == 1)
    {
      sub_10001036C(v24, &qword_1006E0618, &unk_10057C230);
      sub_100034768(v64, type metadata accessor for WidgetMusicItem);
      sub_100034768(v26, type metadata accessor for WidgetMusicItem);
      v14 = v53;
LABEL_9:
      result = sub_10001036C(v67, &qword_1006E0DE8, &unk_10057C9C0);
      goto LABEL_10;
    }

    v27 = v55;
    sub_100033C64(v25 + v19, v55, type metadata accessor for WidgetMusicItem);
    v28 = v23[9];
    v29 = *(v26 + v28);
    v30 = *(v26 + v28 + 8);
    v31 = (v27 + v28);
    if ((v29 != *v31 || v30 != v31[1]) && (sub_100574498() & 1) == 0)
    {
      if ((v32 = v66[10], v33 = (v26 + v32), (v34 = *(v26 + v32 + 8)) == 0) || (v35 = (v27 + v32), (v36 = v35[1]) == 0) || (*v33 != *v35 || v34 != v36) && (sub_100574498() & 1) == 0)
      {
        v37 = v66[11];
        v38 = *(v26 + v37);
        v39 = *(v26 + v37 + 8);
        v40 = (v27 + v37);
        if ((v38 != *v40 || v39 != v40[1]) && (sub_100574498() & 1) == 0)
        {
LABEL_40:
          sub_100034768(v27, type metadata accessor for WidgetMusicItem);
          sub_10001036C(v65, &qword_1006E0618, &unk_10057C230);
          sub_100034768(v64, type metadata accessor for WidgetMusicItem);
          sub_100034768(v26, type metadata accessor for WidgetMusicItem);
          result = sub_10001036C(v67, &qword_1006E0618, &unk_10057C230);
          v14 = v53;
          goto LABEL_10;
        }
      }
    }

    v41 = v66[12];
    v42 = (v26 + v41);
    v43 = *(v26 + v41 + 8);
    v44 = (v27 + v41);
    v45 = v44[1];
    if (v43)
    {
      if (v45 && (*v42 == *v44 && v43 == v45 || (sub_100574498() & 1) != 0))
      {
LABEL_42:
        sub_100034768(v27, type metadata accessor for WidgetMusicItem);
        sub_10001036C(v65, &qword_1006E0618, &unk_10057C230);
        sub_100034768(v64, type metadata accessor for WidgetMusicItem);
        sub_100034768(v26, type metadata accessor for WidgetMusicItem);
LABEL_43:
        sub_10001036C(v67, &qword_1006E0618, &unk_10057C230);
        return 1;
      }
    }

    else if (!v45)
    {
      goto LABEL_42;
    }

    v46 = v66[13];
    v47 = (v26 + v46);
    v48 = *(v26 + v46 + 8);
    v49 = (v27 + v46);
    v50 = v49[1];
    v51 = v50 == 0;
    if (v48)
    {
      if (!v50)
      {
        goto LABEL_40;
      }

      if (*v47 == *v49 && v48 == v50)
      {
        goto LABEL_42;
      }

      v51 = sub_100574498();
    }

    sub_100034768(v55, type metadata accessor for WidgetMusicItem);
    sub_10001036C(v65, &qword_1006E0618, &unk_10057C230);
    sub_100034768(v64, type metadata accessor for WidgetMusicItem);
    sub_100034768(v56, type metadata accessor for WidgetMusicItem);
    result = sub_10001036C(v67, &qword_1006E0618, &unk_10057C230);
    v14 = v53;
    if (v51)
    {
      return 1;
    }

LABEL_10:
    if (v60 == ++v12)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000327E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003282C@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = sub_100009DCC(&qword_1006E1830, &qword_10057D738);
  v54 = *(v2 - 8);
  v55 = v2;
  __chkstk_darwin();
  v53 = &v49 - v3;
  v4 = sub_100009DCC(&qword_1006E0DE8, &unk_10057C9C0) - 8;
  __chkstk_darwin();
  v6 = &v49 - v5;
  v7 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v50 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v10 = (&v49 - v9);
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v52 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v49 - v12;
  __chkstk_darwin();
  v15 = &v49 - v14;
  sub_1000337A0(v1, &v49 - v14, type metadata accessor for WidgetMusicItem);
  v16 = type metadata accessor for WidgetMusicItem(0);
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = *(type metadata accessor for StationCell(0) + 20);
  v56 = v1;
  v49 = v18;
  sub_1000A8434(v10);
  v51 = v7;
  sub_10000CC8C(v10 + *(v7 + 28), v13, &qword_1006E0618, &unk_10057C230);
  sub_100034768(v10, type metadata accessor for RadioWidgetTimelineProvider.Entry);
  v19 = *(v4 + 56);
  sub_10000CC8C(v15, v6, &qword_1006E0618, &unk_10057C230);
  sub_10000CC8C(v13, &v6[v19], &qword_1006E0618, &unk_10057C230);
  v20 = *(v17 + 48);
  if (v20(v6, 1, v16) != 1)
  {
    sub_10000CC8C(v6, v52, &qword_1006E0618, &unk_10057C230);
    v21 = v16;
    if (v20(&v6[v19], 1, v16) != 1)
    {
      v44 = v52;
      v45 = sub_10003CD6C(v52, &v6[v19]);
      sub_100034768(&v6[v19], type metadata accessor for WidgetMusicItem);
      sub_10001036C(v13, &qword_1006E0618, &unk_10057C230);
      sub_10001036C(v15, &qword_1006E0618, &unk_10057C230);
      sub_100034768(v44, type metadata accessor for WidgetMusicItem);
      sub_10001036C(v6, &qword_1006E0618, &unk_10057C230);
      v22 = v56;
      if ((v45 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_10001036C(v13, &qword_1006E0618, &unk_10057C230);
    sub_10001036C(v15, &qword_1006E0618, &unk_10057C230);
    sub_100034768(v52, type metadata accessor for WidgetMusicItem);
LABEL_6:
    sub_10001036C(v6, &qword_1006E0DE8, &unk_10057C9C0);
    v22 = v56;
    goto LABEL_7;
  }

  sub_10001036C(v13, &qword_1006E0618, &unk_10057C230);
  sub_10001036C(v15, &qword_1006E0618, &unk_10057C230);
  v21 = v16;
  if (v20(&v6[v19], 1, v16) != 1)
  {
    goto LABEL_6;
  }

  sub_10001036C(v6, &qword_1006E0618, &unk_10057C230);
  v22 = v56;
LABEL_10:
  v46 = v50;
  sub_1000A8434(v50);
  v47 = *(v46 + *(v51 + 24));
  sub_100034768(v46, type metadata accessor for RadioWidgetTimelineProvider.Entry);
  if (v47 > 1)
  {
    if (v47 != 2)
    {
      goto LABEL_7;
    }
  }

  else if (!v47)
  {

LABEL_15:
    v23 = &v61;
    v32 = &type metadata for TogglePlaybackAppIntent;
    v60 = &type metadata for TogglePlaybackAppIntent;
    v33 = 1;
    v31 = sub_10002AB28();
    goto LABEL_8;
  }

  v48 = sub_100574498();

  if (v48)
  {
    goto LABEL_15;
  }

LABEL_7:
  v23 = &v59;
  v24 = (v22 + *(v21 + 44));
  v25 = *v24;
  v26 = v24[1];

  v27 = sub_10002C7C0(v25, v26, 0, 0);
  v29 = v28;
  v31 = v30;
  v32 = &type metadata for StartPlaybackAppIntent;
  v60 = &type metadata for StartPlaybackAppIntent;
  v33 = 0;
  v61 = sub_10002AAD4();
  v58[0] = v27;
  v58[1] = v29;
LABEL_8:
  *v23 = v31;
  sub_10000C8CC(v58, v32);
  v34 = __chkstk_darwin();
  (*(v36 + 16))(&v49 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v34);
  __chkstk_darwin();
  *(&v49 - 2) = v22;
  *(&v49 - 8) = v33;
  sub_100009DCC(&qword_1006E1838, &qword_10057D740);
  sub_100034E68();
  v37 = v53;
  sub_1005706B8();
  sub_100010BC0(&qword_1006E1858, &qword_1006E1830, &qword_10057D738, &protocol conformance descriptor for Button<A>);
  sub_100034F20();
  v38 = v57;
  v39 = v55;
  sub_10056FFF8();
  (*(v54 + 8))(v37, v39);
  LOBYTE(v39) = *(v22 + *(v21 + 64));
  KeyPath = swift_getKeyPath();
  v41 = swift_allocObject();
  *(v41 + 16) = (v39 & 1) == 0;
  v42 = (v38 + *(sub_100009DCC(&qword_1006E1868, &qword_10057D780) + 36));
  *v42 = KeyPath;
  v42[1] = sub_100034F8C;
  v42[2] = v41;
  return sub_100010474(v58);
}

void *sub_100033054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v3 = a2;
  __src[0] = sub_10056F368();
  __src[1] = 0;
  LOBYTE(__src[2]) = 0;
  sub_10003314C(a1, v3, &__src[3]);
  v6 = type metadata accessor for WidgetMusicItem(0);
  v7 = 1.0;
  if ((*(a1 + *(v6 + 64)) & 1) == 0)
  {
    if (qword_1006DF9B8 != -1)
    {
      v10 = v6;
      swift_once();
      v6 = v10;
    }

    v8 = sub_10000C49C(v6, qword_1006FC1D8);
    if (sub_10003CD6C(a1, v8))
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.35;
    }
  }

  result = memcpy(a3, __src, 0x121uLL);
  a3[37] = v7;
  return result;
}

uint64_t sub_10003314C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v5 = sub_10056FBF8();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin();
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v59 + 1) = type metadata accessor for WidgetMusicItem(0);
  *&v60[0] = &off_100681290;
  v8 = sub_10002AB7C(&v58);
  sub_1000337A0(a1, v8, type metadata accessor for WidgetMusicItem);
  v9 = Corner.medium.unsafeMutableAddressor();
  v10 = *(v9 + 16);
  *(v60 + 8) = *v9;
  BYTE8(v60[1]) = v10;
  v11 = sub_10056FA58();
  sub_10056E598();
  LOBYTE(v61) = v11;
  *(&v61 + 1) = v12;
  *&v62[0] = v13;
  *(&v62[0] + 1) = v14;
  *&v62[1] = v15;
  BYTE8(v62[1]) = 0;
  if (a2)
  {
    v16 = 0.9;
  }

  else
  {
    v16 = 1.0;
  }

  sub_100570B48();
  v86[4] = v61;
  v87[0] = v62[0];
  *(v87 + 9) = *(v62 + 9);
  v86[0] = v58;
  v86[1] = v59;
  v86[2] = v60[0];
  v86[3] = v60[1];
  v88 = v16;
  v89 = v16;
  v90 = v17;
  v91 = v18;
  v92 = v16;
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  *&v58 = v19;
  *(&v58 + 1) = v20;
  sub_10001B550();

  v21 = sub_10056FF28();
  v23 = v22;
  v25 = v24;
  sub_10056FB68();
  v52 = sub_10056FD98();
  v53 = v26;
  v57 = v27;
  v29 = v28;
  sub_10001B5A4(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  if (qword_1006DF930 != -1)
  {
    swift_once();
  }

  v48 = qword_1006FC0D0;
  v49 = swift_getKeyPath();
  LOBYTE(v58) = v29 & 1;
  v30 = v29 & 1;
  HIDWORD(v47) = v29 & 1;
  LOBYTE(v72[0]) = 0;

  sub_10056FC18();
  v32 = v54;
  v31 = v55;
  (*(v54 + 104))(v7, enum case for Font.Leading.tight(_:), v55);
  v56 = sub_10056FC28();

  (*(v32 + 8))(v7, v31);
  v33 = swift_getKeyPath();
  v55 = v33;
  v34 = swift_getKeyPath();
  sub_10000CC8C(v86, &v58, &qword_1006E1870, &qword_10057D848);
  v35 = v50;
  sub_10000CC8C(&v58, v50, &qword_1006E1870, &qword_10057D848);
  v37 = v52;
  v36 = v53;
  *&v65 = v52;
  *(&v65 + 1) = v57;
  LOBYTE(v66) = v30;
  *(&v66 + 1) = *v64;
  DWORD1(v66) = *&v64[3];
  v38 = KeyPath;
  *(&v66 + 1) = v53;
  *&v67 = KeyPath;
  *(&v67 + 1) = 2;
  LOBYTE(v68) = 0;
  *(&v68 + 1) = *v63;
  DWORD1(v68) = *&v63[3];
  v40 = v48;
  v39 = v49;
  *(&v68 + 1) = v49;
  *&v69 = v48;
  *(&v69 + 1) = v33;
  *&v70 = v56;
  *(&v70 + 1) = v34;
  v71 = 1;
  v41 = v68;
  v42 = v69;
  v43 = v70;
  *(v35 + 248) = 1;
  *(v35 + 232) = v43;
  *(v35 + 216) = v42;
  *(v35 + 200) = v41;
  v44 = v65;
  v45 = v66;
  *(v35 + 184) = v67;
  *(v35 + 168) = v45;
  *(v35 + 152) = v44;
  *(v35 + 256) = 0;
  *(v35 + 264) = 0;
  sub_10000CC8C(&v65, v72, &qword_1006E1878, &unk_10057D850);
  sub_10001036C(v86, &qword_1006E1870, &qword_10057D848);
  v72[0] = v37;
  v72[1] = v57;
  v73 = BYTE4(v47);
  *v74 = *v64;
  *&v74[3] = *&v64[3];
  v75 = v36;
  v76 = v38;
  v77 = 2;
  v78 = 0;
  *v79 = *v63;
  *&v79[3] = *&v63[3];
  v80 = v39;
  v81 = v40;
  v82 = v55;
  v83 = v56;
  v84 = v34;
  v85 = 1;
  sub_10001036C(v72, &qword_1006E1878, &unk_10057D850);
  return sub_10001036C(&v58, &qword_1006E1870, &qword_10057D848);
}

uint64_t sub_100033628@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WidgetMusicItem(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1006DF9B8 != -1)
  {
    swift_once();
  }

  v6 = sub_10000C49C(v2, qword_1006FC1D8);
  sub_1000337A0(v6, v5, type metadata accessor for WidgetMusicItem);
  v7 = sub_10006B684(v5, 6);
  v8 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  (*(v3 + 56))(a1 + v8[7], 1, 1, v2);
  result = sub_10056CA98();
  *(a1 + v8[5]) = v7;
  *(a1 + v8[6]) = 3;
  *(a1 + v8[8]) = 0;
  v10 = (a1 + v8[9]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_1000337A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100033808()
{
  v1 = v0;
  v2 = type metadata accessor for RadioWidgetView(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = v1 + ((v3 + 24) & ~v3);
  v5 = sub_10056CAA8();
  v6 = *(v5 - 8);
  v23 = *(v6 + 8);
  v23(v4, v5);
  v7 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);

  v8 = v4 + *(v7 + 28);
  v9 = type metadata accessor for WidgetMusicItem(0);
  if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
  {
    v22 = v2;

    v10 = v9[7];
    v11 = sub_10056C8A8();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);

    v12 = v9[17];
    v13 = *(v6 + 48);
    if (!v13(v8 + v12, 1, v5))
    {
      v23(v8 + v12, v5);
    }

    v14 = v9[18];
    if (!v13(v8 + v14, 1, v5))
    {
      v23(v8 + v14, v5);
    }

    v15 = v9[23];
    v16 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
    if (!(*(*(v16 - 8) + 48))(v8 + v15, 11, v16))
    {
      v17 = sub_100572128();
      v18 = *(v17 - 8);
      if (!(*(v18 + 48))(v8 + v15, 1, v17))
      {
        (*(v18 + 8))(v8 + v15, v17);
      }
    }

    v2 = v22;
  }

  v19 = *(v2 + 20);
  sub_100009DCC(&qword_1006E0EB0, &qword_10057CB00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_10056EDA8();
    (*(*(v20 - 8) + 8))(v4 + v19, v20);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100033C64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100033CCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RadioWidgetView(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_10003148C(a1, v6, v7, a2);
}

unint64_t sub_100033D50()
{
  result = qword_1006E1708;
  if (!qword_1006E1708)
  {
    sub_100010324(&qword_1006E16C0, &qword_10057D548);
    sub_100033E0C();
    sub_1000327E4(&qword_1006E0E68, type metadata accessor for ErrorMessageModifier, &unk_10057C3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1708);
  }

  return result;
}

unint64_t sub_100033E0C()
{
  result = qword_1006E1710;
  if (!qword_1006E1710)
  {
    sub_100010324(&qword_1006E16D8, &qword_10057D560);
    sub_100010324(&qword_1006E16C8, &qword_10057D550);
    sub_100010BC0(&qword_1006E1700, &qword_1006E16C8, &qword_10057D550, &protocol conformance descriptor for Grid<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1710);
  }

  return result;
}

uint64_t sub_100033F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E16E0, &qword_10057D568);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100033F7C(void *a1@<X8>)
{
  sub_10056F118();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

uint64_t sub_100033FAC()
{
  v1 = v0;
  v2 = type metadata accessor for RadioWidgetView(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = v1 + ((v3 + 32) & ~v3);
  v5 = sub_10056CAA8();
  v6 = *(v5 - 8);
  v23 = *(v6 + 8);
  v23(v4, v5);
  v7 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);

  v8 = v4 + *(v7 + 28);
  v9 = type metadata accessor for WidgetMusicItem(0);
  if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
  {
    v22 = v2;

    v10 = v9[7];
    v11 = sub_10056C8A8();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);

    v12 = v9[17];
    v13 = *(v6 + 48);
    if (!v13(v8 + v12, 1, v5))
    {
      v23(v8 + v12, v5);
    }

    v14 = v9[18];
    if (!v13(v8 + v14, 1, v5))
    {
      v23(v8 + v14, v5);
    }

    v15 = v9[23];
    v16 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
    if (!(*(*(v16 - 8) + 48))(v8 + v15, 11, v16))
    {
      v17 = sub_100572128();
      v18 = *(v17 - 8);
      if (!(*(v18 + 48))(v8 + v15, 1, v17))
      {
        (*(v18 + 8))(v8 + v15, v17);
      }
    }

    v2 = v22;
  }

  v19 = *(v2 + 20);
  sub_100009DCC(&qword_1006E0EB0, &qword_10057CB00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_10056EDA8();
    (*(*(v20 - 8) + 8))(v4 + v19, v20);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_100034408(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RadioWidgetView(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_100031698(a1, v6, v7, v8, a2);
}

unint64_t sub_10003448C()
{
  result = qword_1006E1728;
  if (!qword_1006E1728)
  {
    sub_100010324(&qword_1006E1720, &qword_10057D618);
    sub_100034510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1728);
  }

  return result;
}

unint64_t sub_100034510()
{
  result = qword_1006E1730;
  if (!qword_1006E1730)
  {
    sub_100010324(&qword_1006E1738, &qword_10057D620);
    sub_1000345C8();
    sub_100010BC0(&qword_1006E1768, &qword_1006E1770, &qword_10057D638, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1730);
  }

  return result;
}

unint64_t sub_1000345C8()
{
  result = qword_1006E1740;
  if (!qword_1006E1740)
  {
    sub_100010324(&qword_1006E1748, &qword_10057D628);
    sub_1000327E4(&qword_1006E1750, type metadata accessor for StationCell, &unk_10057D6E4);
    sub_100010BC0(&qword_1006E1758, &qword_1006E1760, &qword_10057D630, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1740);
  }

  return result;
}

unint64_t sub_100034714()
{
  result = qword_1006E1788;
  if (!qword_1006E1788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1788);
  }

  return result;
}

uint64_t sub_100034768(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100034814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v11 = a4(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v13 = *(v12 + 48);

    return v13(a1, a2, v11);
  }

  else
  {
    v15 = sub_100009DCC(a5, a6);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + *(a3 + 20);

    return v16(v17, a2, v15);
  }
}

uint64_t sub_10003495C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v13 = a5(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v15 = *(v14 + 56);

    return v15(a1, a2, a2, v13);
  }

  else
  {
    v17 = sub_100009DCC(a6, a7);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + *(a4 + 20);

    return v18(v19, a2, a2, v17);
  }
}

void sub_100034AA8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  a4(319, a2, a3);
  if (v8 <= 0x3F)
  {
    sub_100034B48(319, a5, a6);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100034B48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10056E6D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100034B9C()
{
  sub_100010324(&qword_1006E16A0, &qword_10057D510);
  sub_100010324(&qword_1006E1698, &qword_10057D508);
  sub_100010324(&qword_1006E1690, &qword_10057D500);
  sub_100010324(&qword_1006E0D90, &unk_10057D520);
  sub_100010BC0(&qword_1006E16B0, &qword_1006E1690, &qword_10057D500, &protocol conformance descriptor for VStack<A>);
  sub_100028AD8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100034CF4@<X0>(uint64_t a1@<X8>)
{
  result = sub_10056F148();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100034D58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10056F088();
  *a1 = result;
  return result;
}

uint64_t sub_100034DB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10056EF48();
  *a1 = result;
  return result;
}

uint64_t sub_100034E08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10056F028();
  *a1 = result;
  return result;
}

unint64_t sub_100034E68()
{
  result = qword_1006E1840;
  if (!qword_1006E1840)
  {
    sub_100010324(&qword_1006E1838, &qword_10057D740);
    sub_100010BC0(&qword_1006E1848, &qword_1006E1850, &qword_10057D748, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1840);
  }

  return result;
}

unint64_t sub_100034F20()
{
  result = qword_1006E1860;
  if (!qword_1006E1860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1860);
  }

  return result;
}

uint64_t sub_100034F94@<X0>(uint64_t a1@<X8>)
{
  result = sub_10056F148();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100034FF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10056EF48();
  *a1 = result;
  return result;
}

uint64_t sub_100035050@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10056F088();
  *a1 = result;
  return result;
}

uint64_t sub_1000350A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10056F028();
  *a1 = result;
  return result;
}

unint64_t sub_100035110()
{
  result = qword_1006E1880;
  if (!qword_1006E1880)
  {
    sub_100010324(&qword_1006E1868, &qword_10057D780);
    sub_100010324(&qword_1006E1830, &qword_10057D738);
    sub_100010BC0(&qword_1006E1858, &qword_1006E1830, &qword_10057D738, &protocol conformance descriptor for Button<A>);
    sub_100034F20();
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006E1888, &qword_1006E1890, &qword_10057D878, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1880);
  }

  return result;
}

uint64_t sub_100035300(uint64_t a1)
{
  sub_10056EDA8();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return sub_10056EF88();
}

uint64_t sub_1000353C8@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  type metadata accessor for RadioWidgetTimelineProvider(0);
  __chkstk_darwin();
  v1 = sub_100009DCC(&qword_1006E18A0, &qword_10057D950);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v37 - v3;
  v40 = sub_100009DCC(&qword_1006E18A8, &qword_10057D958);
  *&v45 = *(v40 - 8);
  __chkstk_darwin();
  v6 = &v37 - v5;
  v47 = sub_100009DCC(&qword_1006E18B0, &qword_10057D960);
  v41 = *(v47 - 8);
  __chkstk_darwin();
  v46 = &v37 - v7;
  v8 = sub_100009DCC(&qword_1006E18B8, &qword_10057D968);
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  __chkstk_darwin();
  v48 = &v37 - v10;
  static Logger.music(_:)(0xD00000000000001BLL, 0x80000001005AA550);
  type metadata accessor for RadioWidgetView(0);
  sub_100035BD0(&qword_1006E18C0, type metadata accessor for RadioWidgetView, &unk_10057D4A8);
  sub_100035BD0(&qword_1006E18C8, type metadata accessor for RadioWidgetTimelineProvider, &unk_10057EF10);
  sub_100572548();
  sub_10056F2A8();
  v11 = sub_10056FF08();
  v13 = v12;
  v15 = v14;
  v16 = sub_100035C18();
  sub_10056F568();
  sub_10001B5A4(v11, v13, v15 & 1);

  (*(v2 + 8))(v4, v1);
  sub_10056F2A8();
  v17 = sub_10056FF08();
  v19 = v18;
  v21 = v20;
  v49 = v1;
  v50 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v40;
  sub_10056F518();
  sub_10001B5A4(v17, v19, v21 & 1);

  v24 = v23;
  (*(v45 + 8))(v6, v23);
  v39 = sub_100009DCC(&qword_1006E0138, &qword_10057BE10);
  v25 = sub_1005724A8();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = swift_allocObject();
  v45 = xmmword_10057B510;
  *(v28 + 16) = xmmword_10057B510;
  v29 = enum case for WidgetFamily.systemLarge(_:);
  v38 = *(v26 + 104);
  v38(v28 + v27, enum case for WidgetFamily.systemLarge(_:), v25);
  v49 = v24;
  v50 = OpaqueTypeConformance2;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = v47;
  v32 = v46;
  sub_10056F528();

  (*(v41 + 8))(v32, v31);
  sub_100009DCC(&qword_1006E0140, qword_100581C00);
  sub_100572508();
  *(swift_allocObject() + 16) = v45;
  sub_1005724D8();
  v33 = swift_allocObject();
  *(v33 + 16) = v45;
  v38(v33 + v27, v29, v25);
  v49 = v47;
  v50 = v30;
  swift_getOpaqueTypeConformance2();
  v34 = v42;
  v35 = v48;
  sub_10056F538();

  return (*(v43 + 8))(v35, v34);
}

uint64_t sub_100035B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100035C7C(a1, a2);
  v3 = *(type metadata accessor for RadioWidgetView(0) + 20);
  *(a2 + v3) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0EB0, &qword_10057CB00);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100035BD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100035C18()
{
  result = qword_1006E18D0;
  if (!qword_1006E18D0)
  {
    sub_100010324(&qword_1006E18A0, &qword_10057D950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E18D0);
  }

  return result;
}

uint64_t sub_100035C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100035D08()
{
  sub_100010324(&qword_1006E18B8, &qword_10057D968);
  sub_100010324(&qword_1006E18B0, &qword_10057D960);
  sub_100010324(&qword_1006E18A8, &qword_10057D958);
  sub_100010324(&qword_1006E18A0, &qword_10057D950);
  sub_100035C18();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100035E28()
{
  v0 = sub_100009DCC(&qword_1006E18E0, &qword_10057DA08);

  return TupleWidget.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100035EB0();
  sub_10056E878();
  return 0;
}

unint64_t sub_100035EB0()
{
  result = qword_1006E18D8;
  if (!qword_1006E18D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E18D8);
  }

  return result;
}

unint64_t sub_100035F34()
{
  result = qword_1006E18E8;
  if (!qword_1006E18E8)
  {
    sub_100010324(&qword_1006E18F0, &qword_10057DA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E18E8);
  }

  return result;
}

id sub_100035FC0(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v1 = objc_allocWithZone(UIColor);

    return [v1 initWithRed:0.980392157 green:0.176470588 blue:0.282352941 alpha:1.0];
  }

  else
  {
    v3 = [objc_opt_self() whiteColor];

    return v3;
  }
}

uint64_t sub_100036058()
{
  v0 = sub_100570A78();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009DCC(&qword_1006E1058, &qword_10057CCD0);
  sub_10000C910(v4, qword_1006FC0B8);
  v5 = sub_10000C49C(v4, qword_1006FC0B8);
  v6 = objc_allocWithZone(UIColor);
  aBlock[4] = sub_100036254;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000376F0;
  aBlock[3] = &unk_1006810C8;
  v7 = _Block_copy(aBlock);
  [v6 initWithDynamicProvider:v7];
  _Block_release(v7);

  v8 = sub_100570528();
  (*(v1 + 104))(v3, enum case for BlendMode.plusLighter(_:), v0);
  (*(v1 + 16))(&v5[*(v4 + 36)], v3, v0);
  *v5 = v8;
  return (*(v1 + 8))(v3, v0);
}

id sub_100036254(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(UIColor);
  if (v1 == 2)
  {
    v3 = 0.980392157;
    v4 = 0.176470588;
    v5 = 0.282352941;
    v6 = 1.0;
  }

  else
  {
    v3 = 0.552941176;
    v5 = 0.576470588;
    v6 = 1.0;
    v4 = 0.552941176;
  }

  return [v2 initWithRed:v3 green:v4 blue:v5 alpha:v6];
}

uint64_t sub_1000362E4(uint64_t a1)
{
  result = sub_1005704D8();
  qword_1006FC0D0 = result;
  return result;
}

uint64_t sub_100036304()
{
  v0 = sub_100570A78();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100570468();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&qword_1006E1058, &qword_10057CCD0);
  sub_10000C910(v8, qword_1006FC0D8);
  v9 = sub_10000C49C(v8, qword_1006FC0D8);
  (*(v5 + 104))(v7, enum case for Color.RGBColorSpace.sRGB(_:), v4);
  v10 = sub_100570518();
  (*(v1 + 104))(v3, enum case for BlendMode.plusLighter(_:), v0);
  (*(v1 + 16))(&v9[*(v8 + 36)], v3, v0);
  *v9 = v10;
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10003651C()
{
  sub_100570468();
  v0 = __chkstk_darwin();
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:), v0);
  result = sub_100570518();
  qword_1006FC0F0 = result;
  return result;
}

uint64_t sub_100036604(uint64_t a1)
{
  sub_1005704A8();
  v1 = sub_1005704E8();

  qword_1006FC0F8 = v1;
  return result;
}

double sub_10003664C()
{
  sub_100009DCC(&qword_1006E1908, &qword_10057DA98);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10057B500;
  if (qword_1006DF9A8 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_1006E18F8;
  v1 = qword_1006DF9B0;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_1006E1900;

  sub_100570968();
  sub_100570B28();
  sub_100570B38();
  sub_10056EA68();
  result = *&v3;
  xmmword_1006FC100 = v3;
  *algn_1006FC110 = v4;
  qword_1006FC120 = v5;
  return result;
}

uint64_t sub_10003677C()
{
  sub_100009DCC(&qword_1006E05F0, &qword_10057C210);
  __chkstk_darwin();
  v1 = v18 - v0;
  v2 = sub_100009DCC(&qword_1006E1920, &qword_10057DAA8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v18 - v4;
  v18[2] = sub_100009DCC(&qword_1006E1928, &unk_10057EA60);
  __chkstk_darwin();
  v7 = v18 - v6;
  v8 = sub_100009DCC(&qword_1006E1910, &unk_10057EA50);
  sub_10000C910(v8, qword_1006FC128);
  v18[1] = sub_10000C49C(v8, qword_1006FC128);
  sub_1005705E8();
  v9 = enum case for Image.TemplateRenderingMode.template(_:);
  v10 = sub_100570598();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v1, v9, v10);
  (*(v11 + 56))(v1, 0, 1, v10);
  v12 = sub_100570568();

  sub_100037770(v1);
  if (qword_1006DF920 != -1)
  {
    swift_once();
  }

  v13 = qword_1006FC0B0;
  KeyPath = swift_getKeyPath();
  v19 = v12;
  v20 = KeyPath;
  v21 = v13;

  v15 = sub_100009DCC(&qword_1006E1930, &unk_10057DAE0);
  v16 = sub_1000377E0();
  sub_10056FF58();

  v19 = v15;
  v20 = v16;
  swift_getOpaqueTypeConformance2();
  sub_100570078();
  (*(v3 + 8))(v5, v2);
  sub_1000378D0();
  sub_10056FFD8();
  return sub_100037998(v7);
}

uint64_t sub_100036AE8()
{
  v0 = sub_100009DCC(&qword_1006E1910, &unk_10057EA50);
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v11 - v2;
  v4 = sub_100009DCC(&qword_1006E1918, &qword_10057DAA0);
  sub_10000C910(v4, qword_1006FC140);
  v5 = sub_10000C49C(v4, qword_1006FC140);
  if (qword_1006DF958 != -1)
  {
    swift_once();
  }

  v6 = sub_10000C49C(v0, qword_1006FC128);
  v7 = *(v1 + 16);
  v7(v3, v6, v0);
  sub_1005709E8();
  sub_10056E888();
  v7(v5, v3, v0);
  v8 = (v5 + *(v4 + 36));
  v9 = v11[1];
  *v8 = v11[0];
  v8[1] = v9;
  v8[2] = v11[2];
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100036CA8()
{
  sub_10056CC38();
  __chkstk_darwin();
  sub_100572888();
  __chkstk_darwin();
  sub_100572818();
  sub_10056CBC8();
  result = sub_100572948();
  qword_1006FC158 = result;
  unk_1006FC160 = v1;
  return result;
}

uint64_t sub_100036DB0()
{
  sub_10056CC38();
  __chkstk_darwin();
  sub_100572888();
  __chkstk_darwin();
  sub_100572818();
  sub_10056CBC8();
  result = sub_100572948();
  qword_1006FC168 = result;
  unk_1006FC170 = v1;
  return result;
}

uint64_t sub_100036EB8()
{
  sub_10056CC38();
  __chkstk_darwin();
  sub_100572888();
  __chkstk_darwin();
  sub_100572818();
  sub_10056CBC8();
  result = sub_100572948();
  qword_1006FC178 = result;
  unk_1006FC180 = v1;
  return result;
}

uint64_t sub_100036FC0()
{
  sub_10056CC38();
  __chkstk_darwin();
  sub_100572888();
  __chkstk_darwin();
  sub_100572818();
  sub_10056CBC8();
  result = sub_100572948();
  qword_1006FC188 = result;
  unk_1006FC190 = v1;
  return result;
}

uint64_t sub_1000370C8()
{
  sub_10056CC38();
  __chkstk_darwin();
  sub_100572888();
  __chkstk_darwin();
  sub_100572818();
  sub_10056CBC8();
  result = sub_100572948();
  qword_1006FC198 = result;
  unk_1006FC1A0 = v1;
  return result;
}

uint64_t sub_1000371D0()
{
  sub_10056CC38();
  __chkstk_darwin();
  sub_100572888();
  __chkstk_darwin();
  sub_100572818();
  sub_10056CBC8();
  result = sub_100572948();
  qword_1006FC1A8 = result;
  unk_1006FC1B0 = v1;
  return result;
}

uint64_t sub_1000372D8()
{
  sub_10056CC38();
  __chkstk_darwin();
  sub_100572888();
  __chkstk_darwin();
  sub_100572818();
  sub_10056CBC8();
  result = sub_100572948();
  qword_1006FC1B8 = result;
  unk_1006FC1C0 = v1;
  return result;
}

uint64_t sub_1000373E8()
{
  sub_10056CC38();
  __chkstk_darwin();
  sub_100572888();
  __chkstk_darwin();
  sub_100572818();
  sub_10056CBC8();
  result = sub_100572948();
  qword_1006FC1C8 = result;
  unk_1006FC1D0 = v1;
  return result;
}

id sub_100037544(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = [a1 userInterfaceStyle];
  v10 = objc_allocWithZone(UIColor);
  if (v9 == 2)
  {
    v11 = a2;
    v12 = a2;
    v13 = a2;
  }

  else
  {
    v11 = a3;
    v12 = a4;
    v13 = a5;
  }

  return [v10 initWithRed:v11 green:v12 blue:v13 alpha:1.0];
}

uint64_t sub_100037604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = objc_allocWithZone(UIColor);
  v10[4] = a2;
  v10[5] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000376F0;
  v10[3] = a3;
  v8 = _Block_copy(v10);
  [v7 initWithDynamicProvider:v8];
  _Block_release(v8);

  result = sub_100570528();
  *a4 = result;
  return result;
}

id sub_1000376F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_100037758(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100037770(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E05F0, &qword_10057C210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000377E0()
{
  result = qword_1006E1938;
  if (!qword_1006E1938)
  {
    sub_100010324(&qword_1006E1930, &unk_10057DAE0);
    sub_10003786C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1938);
  }

  return result;
}

unint64_t sub_10003786C()
{
  result = qword_1006E1940;
  if (!qword_1006E1940)
  {
    sub_100010324(&qword_1006E1948, &qword_10057EA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1940);
  }

  return result;
}

unint64_t sub_1000378D0()
{
  result = qword_1006E1950;
  if (!qword_1006E1950)
  {
    sub_100010324(&qword_1006E1928, &unk_10057EA60);
    sub_100010324(&qword_1006E1930, &unk_10057DAE0);
    sub_1000377E0();
    swift_getOpaqueTypeConformance2();
    sub_10002EC80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1950);
  }

  return result;
}

uint64_t sub_100037998(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E1928, &unk_10057EA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100037A2C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_10056C8A8();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[17];
    goto LABEL_9;
  }

  v14 = type metadata accessor for ArtworkImage.Placeholder(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[23];

  return v15(v16, a2, v14);
}

uint64_t sub_100037BB8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_10056C8A8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[17];
    goto LABEL_7;
  }

  v14 = type metadata accessor for ArtworkImage.Placeholder(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[23];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for WidgetMusicItem(uint64_t a1)
{
  result = qword_1006E19B0;
  if (!qword_1006E19B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100037D7C(uint64_t a1)
{
  sub_100037FE8(319, &qword_1006DFE60, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10056C8A8();
    if (v2 <= 0x3F)
    {
      sub_100037FE8(319, &qword_1006E19C0, &type metadata for WidgetMusicItem.Kind, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100037FE8(319, &qword_1006E1378, &type metadata for MusicItemID, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100037FE8(319, &unk_1006E1380, &type metadata for TextBadge, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            sub_10001507C(319);
            if (v6 <= 0x3F)
            {
              sub_100037FE8(319, &qword_1006E19C8, &type metadata for WidgetMusicItem.ContainerTrack, &type metadata accessor for Array);
              if (v7 <= 0x3F)
              {
                sub_100037FE8(319, &qword_1006E19D0, &type metadata for WidgetMusicItem.ArtworkColor, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for ArtworkImage.Placeholder(319);
                  if (v9 <= 0x3F)
                  {
                    sub_100038038(319);
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

void sub_100037FE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100038038(uint64_t a1)
{
  if (!qword_1006E19D8)
  {
    sub_100010324(&qword_1006E1ED0, &unk_10057E390);
    v1 = sub_100572E38();
    if (!v2)
    {
      atomic_store(v1, &qword_1006E19D8);
    }
  }
}

uint64_t getEnumTagSinglePayload for WidgetMusicItem.ArtworkColor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WidgetMusicItem.ArtworkColor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

__n128 sub_1000380F8(uint64_t a1, uint64_t a2)
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

uint64_t sub_100038114(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10003815C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for WidgetMusicItem.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetMusicItem.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100038308(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000002ALL;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD00000000000001ELL;
    }

    else
    {
      v5 = 0xD000000000000027;
    }

    if (v3)
    {
      v6 = "idgetRefreshTTLBagValue";
    }

    else
    {
      v6 = "friendsAreListeningTo";
    }
  }

  else if (a1 == 2)
  {
    v6 = "chartsWidgetRefreshTTLBagValue";
    v5 = 0xD000000000000022;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = "recentlyPlayedRemoteQueriesEnabledBagValue";
    }

    else
    {
      v4 = "recentlyPlayedRemoteQueriesEnabledOverride";
    }

    v6 = (v4 - 32);
    v5 = 0xD00000000000002ALL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 0xD00000000000001ELL;
    }

    else
    {
      v2 = 0xD000000000000027;
    }

    if (a2)
    {
      v7 = "idgetRefreshTTLBagValue";
    }

    else
    {
      v7 = "friendsAreListeningTo";
    }
  }

  else if (a2 == 2)
  {
    v7 = "chartsWidgetRefreshTTLBagValue";
    v2 = 0xD000000000000022;
  }

  else
  {
    v7 = "RefreshTTLBagValue";
    if (a2 != 3)
    {
      v7 = "moteQueriesEnabledBagValue";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100574498();
  }

  return v8 & 1;
}

uint64_t sub_100038464(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x646F736970457674;
  v5 = 0xE900000000000065;
  if (a1 != 6)
  {
    v4 = 0x766F4D636973756DLL;
    v5 = 0xEA00000000006569;
  }

  v6 = 0xE700000000000000;
  v7 = 0x6E6F6974617473;
  if (a1 != 4)
  {
    v7 = 0x646956636973756DLL;
    v6 = 0xEA00000000006F65;
  }

  if (a1 <= 5u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x747369747261;
  if (a1 != 2)
  {
    v9 = 0x7473696C79616C70;
    v8 = 0xE800000000000000;
  }

  v10 = 0x6D75626C61;
  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v10 = 1735290739;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE900000000000065;
        if (v11 != 0x646F736970457674)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xEA00000000006569;
        if (v11 != 0x766F4D636973756DLL)
        {
LABEL_45:
          v14 = sub_100574498();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x6E6F6974617473)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xEA00000000006F65;
      if (v11 != 0x646956636973756DLL)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x747369747261)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v11 != 0x7473696C79616C70)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE500000000000000;
    if (v11 != 0x6D75626C61)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE400000000000000;
    if (v11 != 1735290739)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_1000386DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x61656C655277656ELL;
  v5 = 0xEB00000000736573;
  v6 = 0x736E6F6974617473;
  v7 = 0xEE00756F59726F46;
  if (a1 != 4)
  {
    v6 = 0xD000000000000015;
    v7 = 0x80000001005A9ED0;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x59726F466564616DLL;
  v9 = 0xEA0000000000756FLL;
  if (a1 != 1)
  {
    v8 = 0x726F4673646F6F6DLL;
    v9 = 0xEB00000000756F59;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x736B636950706F74;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x736B636950706F74)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (a2 == 1)
    {
      v12 = 0xEA0000000000756FLL;
      if (v10 != 0x59726F466564616DLL)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v13 = 0x726F4673646F6F6DLL;
    v14 = 7696217;
LABEL_29:
    v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v10 != v13)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v13 = 0x61656C655277656ELL;
    v14 = 7562611;
    goto LABEL_29;
  }

  if (a2 == 4)
  {
    v12 = 0xEE00756F59726F46;
    if (v10 != 0x736E6F6974617473)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v12 = 0x80000001005A9ED0;
    if (v10 != 0xD000000000000015)
    {
LABEL_34:
      v15 = sub_100574498();
      goto LABEL_35;
    }
  }

LABEL_32:
  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v15 = 1;
LABEL_35:

  return v15 & 1;
}

uint64_t sub_1000388F4(uint64_t a1, unsigned __int8 a2)
{
  sub_1005729F8();
}

Swift::Int sub_100038A1C(uint64_t a1, unsigned __int8 a2)
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

Swift::Int sub_100038B44(uint64_t a1, unsigned __int8 a2)
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

void *sub_100038C80()
{
  v1 = *(v0 + *(type metadata accessor for WidgetMusicItem(0) + 104));
  v2 = *(v1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_100573FF8();
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      sub_10003E57C(v5);
      sub_100573FC8();
      sub_100574008();
      sub_100574018();
      sub_100573FD8();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100038D38(void *a1)
{
  v3 = v1;
  v5 = sub_100009DCC(&qword_1006E1B88, &qword_10057DE58);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  sub_10000C8CC(a1, a1[3]);
  sub_10003D7E0();
  sub_100574718();
  v11 = *v3;
  v10[15] = 0;
  sub_100010420();
  sub_100574368();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v11) = 1;
  sub_100574328();
  LOBYTE(v11) = 2;
  sub_100574328();
  LOBYTE(v11) = 3;
  sub_100574348();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100038F38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003CFA4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100038F68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1735290739;
  v5 = 0xE900000000000065;
  v6 = 0x646F736970457674;
  if (v2 != 6)
  {
    v6 = 0x766F4D636973756DLL;
    v5 = 0xEA00000000006569;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6E6F6974617473;
  if (v2 != 4)
  {
    v8 = 0x646956636973756DLL;
    v7 = 0xEA00000000006F65;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x747369747261;
  if (v2 != 2)
  {
    v10 = 0x7473696C79616C70;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x6D75626C61;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_100039114()
{
  result = qword_1006E1A60;
  if (!qword_1006E1A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1A60);
  }

  return result;
}

uint64_t sub_100039168()
{
  v1 = 25705;
  v2 = 0x614E747369747261;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000391D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10003CFF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10003920C(uint64_t a1)
{
  v2 = sub_10003D7E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100039248(uint64_t a1)
{
  v2 = sub_10003D7E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100039284@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10003D150(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1000392EC(void *a1, double a2, double a3, double a4)
{
  v9 = sub_100009DCC(&qword_1006E1B70, &qword_10057DE48);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v14 - v11;
  sub_10000C8CC(a1, a1[3]);
  sub_10003D78C();
  sub_100574718();
  v15 = a2;
  HIBYTE(v14) = 0;
  sub_10003CC10();
  sub_100574368();
  if (!v4)
  {
    v15 = a3;
    HIBYTE(v14) = 1;
    sub_100574368();
    v15 = a4;
    HIBYTE(v14) = 2;
    sub_100574368();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000394DC()
{
  v1 = 0x6E65657267;
  if (*v0 != 1)
  {
    v1 = 1702194274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6579570;
  }
}

uint64_t sub_100039524@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10003D454(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10003954C(uint64_t a1)
{
  v2 = sub_10003D78C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100039588(uint64_t a1)
{
  v2 = sub_10003D78C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000395C4(double *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_10003D568(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
    *(a1 + 2) = v6;
  }
}

uint64_t sub_100039614()
{
  v1._countAndFlagsBits = sub_100573058();
  sub_100572A98(v1);

  v2._countAndFlagsBits = 8236;
  v2._object = 0xE200000000000000;
  sub_100572A98(v2);
  v3._countAndFlagsBits = sub_100573058();
  sub_100572A98(v3);

  v4._countAndFlagsBits = 8236;
  v4._object = 0xE200000000000000;
  sub_100572A98(v4);
  v5._countAndFlagsBits = sub_100573058();
  sub_100572A98(v5);

  v6._countAndFlagsBits = 93;
  v6._object = 0xE100000000000000;
  sub_100572A98(v6);
  return 91;
}

uint64_t sub_1000396D8(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1000413EC(0, v3, 0);
    v4 = 32;
    do
    {
      v5 = *(a1 + v4);
      v6 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      v8 = v5;
      if (v6 >= v7 >> 1)
      {
        sub_1000413EC((v7 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      _swiftEmptyArrayStorage[v6 + 4] = v5;
      v4 += 8;
      --v3;
    }

    while (v3);
  }

  v9 = *(type metadata accessor for WidgetMusicItem(0) + 104);

  *(v1 + v9) = _swiftEmptyArrayStorage;
  return result;
}

unint64_t sub_1000397E0()
{
  v1 = v0;
  sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  __chkstk_darwin();
  v3 = &v29 - v2;
  v33 = 0xD000000000000010;
  v34 = 0x80000001005AA920;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_100573ED8(18);

  strcpy(&v29, "supertitle: ");
  HIWORD(v29._object) = -4864;
  object = v0->_object;
  v32._countAndFlagsBits = v0->_countAndFlagsBits;
  v32._object = object;

  sub_100009DCC(&qword_1006DFD58, &qword_10057B750);
  v35._countAndFlagsBits = sub_100572978();
  sub_100572A98(v35);

  v36._countAndFlagsBits = 2108450;
  v36._object = 0xE300000000000000;
  sub_100572A98(v36);
  sub_100572A98(v29);

  v29._countAndFlagsBits = 0x22203A656C746974;
  v29._object = 0xE800000000000000;
  sub_100572A98(v0[1]);
  v37._countAndFlagsBits = 2108450;
  v37._object = 0xE300000000000000;
  sub_100572A98(v37);
  sub_100572A98(v29);

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_100573ED8(16);

  v29._countAndFlagsBits = 0x656C746974627573;
  v29._object = 0xEB0000000022203ALL;
  v5 = v0[2]._object;
  v32._countAndFlagsBits = v0[2]._countAndFlagsBits;
  v32._object = v5;

  v38._countAndFlagsBits = sub_100572978();
  sub_100572A98(v38);

  v39._countAndFlagsBits = 2108450;
  v39._object = 0xE300000000000000;
  sub_100572A98(v39);
  sub_100572A98(v29);

  v29._countAndFlagsBits = 0x22203A6C7275;
  v29._object = 0xE600000000000000;
  v6 = type metadata accessor for WidgetMusicItem(0);
  sub_10056C8A8();
  sub_10003CF5C(&qword_1006E1B38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v40._countAndFlagsBits = sub_100574408();
  sub_100572A98(v40);

  v41._countAndFlagsBits = 2108450;
  v41._object = 0xE300000000000000;
  sub_100572A98(v41);
  sub_100572A98(v29);

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_100573ED8(18);

  strcpy(&v32, "artworkImage: ");
  HIBYTE(v32._object) = -18;
  v7 = *(&v0->_countAndFlagsBits + v6[25]);
  if (v7)
  {
    [v7 size];
    v9._object = v8;
  }

  else
  {
    v9 = 0;
  }

  v29 = v9;
  LOBYTE(v30) = v7 == 0;
  sub_100009DCC(&qword_1006E1B40, &qword_10057DE20);
  v42._countAndFlagsBits = sub_100572978();
  sub_100572A98(v42);

  v43._countAndFlagsBits = 8236;
  v43._object = 0xE200000000000000;
  sub_100572A98(v43);
  sub_100572A98(v32);

  v29._countAndFlagsBits = 0x22203A646E696BLL;
  v29._object = 0xE700000000000000;
  LOBYTE(v32._countAndFlagsBits) = *(&v1->_countAndFlagsBits + v6[8]);
  sub_100009DCC(&qword_1006E1B48, &qword_10057DE28);
  v44._countAndFlagsBits = sub_100572978();
  sub_100572A98(v44);

  v45._countAndFlagsBits = 2108450;
  v45._object = 0xE300000000000000;
  sub_100572A98(v45);
  sub_100572A98(v29);

  v29._countAndFlagsBits = 0x203A44496D657469;
  v29._object = 0xE900000000000022;
  v46._countAndFlagsBits = sub_1005713B8();
  sub_100572A98(v46);

  v47._countAndFlagsBits = 2108450;
  v47._object = 0xE300000000000000;
  sub_100572A98(v47);
  sub_100572A98(v29);

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_100573ED8(17);

  strcpy(&v29, "catalogID: ");
  BYTE5(v29._object) = 0;
  HIWORD(v29._object) = -5120;
  v10 = (&v1->_countAndFlagsBits + v6[10]);
  v11 = v10[1];
  v32._countAndFlagsBits = *v10;
  v32._object = v11;

  sub_100009DCC(&qword_1006E1B50, &qword_10057DE30);
  v48._countAndFlagsBits = sub_100572978();
  sub_100572A98(v48);

  v49._countAndFlagsBits = 2108450;
  v49._object = 0xE300000000000000;
  sub_100572A98(v49);
  sub_100572A98(v29);

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_100573ED8(17);

  strcpy(&v29, "siriRepID: ");
  BYTE5(v29._object) = 0;
  HIWORD(v29._object) = -5120;
  sub_100572A98(*(v1 + v6[11]));
  v50._countAndFlagsBits = 2108450;
  v50._object = 0xE300000000000000;
  sub_100572A98(v50);
  sub_100572A98(v29);

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_100573ED8(23);

  v29._countAndFlagsBits = 0xD000000000000012;
  v29._object = 0x80000001005AA940;
  v12 = (&v1->_countAndFlagsBits + v6[12]);
  v13 = v12[1];
  v32._countAndFlagsBits = *v12;
  v32._object = v13;

  v51._countAndFlagsBits = sub_100572978();
  sub_100572A98(v51);

  v52._countAndFlagsBits = 2108450;
  v52._object = 0xE300000000000000;
  sub_100572A98(v52);
  sub_100572A98(v29);

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_100573ED8(26);

  v29._countAndFlagsBits = 0xD000000000000015;
  v29._object = 0x80000001005AA960;
  v14 = (&v1->_countAndFlagsBits + v6[13]);
  v15 = v14[1];
  v32._countAndFlagsBits = *v14;
  v32._object = v15;

  v53._countAndFlagsBits = sub_100572978();
  sub_100572A98(v53);

  v54._countAndFlagsBits = 2108450;
  v54._object = 0xE300000000000000;
  sub_100572A98(v54);
  sub_100572A98(v29);

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_100573ED8(26);

  v29._countAndFlagsBits = 0xD000000000000015;
  v29._object = 0x80000001005AA980;
  v16 = (&v1->_countAndFlagsBits + v6[14]);
  v17 = v16[1];
  v32._countAndFlagsBits = *v16;
  v32._object = v17;

  v55._countAndFlagsBits = sub_100572978();
  sub_100572A98(v55);

  v56._countAndFlagsBits = 2108450;
  v56._object = 0xE300000000000000;
  sub_100572A98(v56);
  sub_100572A98(v29);

  v29._countAndFlagsBits = 0x203A736567646162;
  v29._object = 0xE900000000000022;
  v57._countAndFlagsBits = sub_100572D38();
  sub_100572A98(v57);

  v58._countAndFlagsBits = 2108450;
  v58._object = 0xE300000000000000;
  sub_100572A98(v58);
  sub_100572A98(v29);

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_100573ED8(16);

  strcpy(&v29, "isPlayable: ");
  BYTE5(v29._object) = 0;
  HIWORD(v29._object) = -5120;
  if (*(&v1->_countAndFlagsBits + v6[16]))
  {
    v18._countAndFlagsBits = 1702195828;
  }

  else
  {
    v18._countAndFlagsBits = 0x65736C6166;
  }

  if (*(&v1->_countAndFlagsBits + v6[16]))
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  v18._object = v19;
  sub_100572A98(v18);

  v59._countAndFlagsBits = 8236;
  v59._object = 0xE200000000000000;
  sub_100572A98(v59);
  sub_100572A98(v29);

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_100573ED8(19);

  strcpy(&v29, "releaseDate: ");
  HIBYTE(v29._object) = -18;
  sub_10001F588(v1 + v6[17], v3);
  v60._countAndFlagsBits = sub_100572978();
  sub_100572A98(v60);

  v61._countAndFlagsBits = 2108450;
  v61._object = 0xE300000000000000;
  sub_100572A98(v61);
  sub_100572A98(v29);

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_100573ED8(24);

  v29._countAndFlagsBits = 0xD000000000000013;
  v29._object = 0x80000001005AA9A0;
  sub_10001F588(v1 + v6[18], v3);
  v62._countAndFlagsBits = sub_100572978();
  sub_100572A98(v62);

  v63._countAndFlagsBits = 2108450;
  v63._object = 0xE300000000000000;
  sub_100572A98(v63);
  sub_100572A98(v29);

  v29._countAndFlagsBits = 0x22203A65726E6567;
  v29._object = 0xE800000000000000;
  v20 = (&v1->_countAndFlagsBits + v6[19]);
  v21 = v20[1];
  v32._countAndFlagsBits = *v20;
  v32._object = v21;

  v64._countAndFlagsBits = sub_100572978();
  sub_100572A98(v64);

  v65._countAndFlagsBits = 2108450;
  v65._object = 0xE300000000000000;
  sub_100572A98(v65);
  sub_100572A98(v29);

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_100573ED8(27);

  v29._countAndFlagsBits = 0xD000000000000017;
  v29._object = 0x80000001005AA9C0;
  v32._countAndFlagsBits = *(*(&v1->_countAndFlagsBits + v6[20]) + 16);
  v66._countAndFlagsBits = sub_100574408();
  sub_100572A98(v66);

  v67._countAndFlagsBits = 8236;
  v67._object = 0xE200000000000000;
  sub_100572A98(v67);
  sub_100572A98(v29);

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_100573ED8(22);

  v32._countAndFlagsBits = 0xD000000000000012;
  v32._object = 0x80000001005AA9E0;
  v22 = v1 + v6[21];
  v23 = *(v22 + 2);
  v24 = v22[24];
  v29 = *v22;
  v30 = v23;
  v31 = v24;
  sub_100009DCC(&qword_1006E1B58, &qword_10057DE38);
  v68._countAndFlagsBits = sub_100572978();
  sub_100572A98(v68);

  v69._countAndFlagsBits = 8236;
  v69._object = 0xE200000000000000;
  sub_100572A98(v69);
  sub_100572A98(v32);

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_100573ED8(19);

  v32._countAndFlagsBits = 0xD000000000000011;
  v32._object = 0x80000001005AAA00;
  v25 = v1 + v6[22];
  v26 = *(v25 + 2);
  v27 = v25[24];
  v29 = *v25;
  v30 = v26;
  v31 = v27;
  v70._countAndFlagsBits = sub_100572978();
  sub_100572A98(v70);

  sub_100572A98(v32);

  v71._countAndFlagsBits = 41;
  v71._object = 0xE100000000000000;
  sub_100572A98(v71);
  return v33;
}

void sub_10003A388()
{
  sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  __chkstk_darwin();
  v43 = &v36 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v2 = &v36 - v1;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v6 = &v36 - v5;
  v7 = sub_10056C8A8();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WidgetMusicItem(0);
  sub_10000C910(v11, qword_1006FC1D8);
  v12 = sub_10000C49C(v11, qword_1006FC1D8);
  sub_10056C868();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    __break(1u);
  }

  else
  {
    v40 = 0x80000001005AA900;
    v41 = 0x80000001005AA470;
    (*(v8 + 32))(v10, v6, v7);
    v42 = [objc_allocWithZone(UIImage) init];
    v13 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
    (*(*(v13 - 8) + 56))(v4, 1, 11, v13);
    v14 = sub_1005713C8();
    v37 = v15;
    v38 = v14;
    v16 = sub_10056CAA8();
    v17 = *(*(v16 - 8) + 56);
    v18 = v7;
    v39 = v2;
    v17(v2, 1, 1, v16);
    v19 = v43;
    v17(v43, 1, 1, v16);
    v20 = v11[25];
    *(v12 + v20) = 0;
    *(v12 + v11[26]) = _swiftEmptyArrayStorage;
    *v12 = xmmword_10057DAF0;
    v21 = v41;
    *(v12 + 16) = 0xD000000000000018;
    *(v12 + 24) = v21;
    *(v12 + 32) = 0xD000000000000010;
    *(v12 + 40) = v40;
    v22 = v10;
    (*(v8 + 16))(v12 + v11[7], v10, v18);
    v23 = v4;
    sub_10003CEF4(v4, v12 + v11[23], type metadata accessor for ArtworkImage.Placeholder);
    *(v12 + v11[24]) = 0x3FF0000000000000;
    *(v12 + v11[8]) = 8;
    v24 = (v12 + v11[9]);
    v25 = v37;
    *v24 = v38;
    v24[1] = v25;
    v26 = (v12 + v11[10]);
    *v26 = 0;
    v26[1] = 0;
    v27 = (v12 + v11[11]);
    *v27 = 0;
    v27[1] = 0xE000000000000000;
    v28 = (v12 + v11[12]);
    *v28 = 0;
    v28[1] = 0;
    v29 = (v12 + v11[13]);
    *v29 = 0;
    v29[1] = 0;
    v30 = (v12 + v11[14]);
    *v30 = 0;
    v30[1] = 0;
    *(v12 + v11[15]) = _swiftEmptyArrayStorage;
    *(v12 + v11[16]) = 0;
    v31 = v39;
    sub_10001F588(v39, v12 + v11[17]);
    sub_10001F588(v19, v12 + v11[18]);
    v32 = (v12 + v11[19]);
    *v32 = 0;
    v32[1] = 0;
    *(v12 + v11[20]) = _swiftEmptyArrayStorage;
    v33 = v12 + v11[21];
    *v33 = 0;
    *(v33 + 8) = 0;
    *(v33 + 16) = 0;
    *(v33 + 24) = 1;
    v34 = v12 + v11[22];
    *v34 = 0;
    *(v34 + 8) = 0;
    *(v34 + 16) = 0;
    *(v34 + 24) = 1;
    sub_1000396D8(_swiftEmptyArrayStorage);
    sub_10002FB84(v19);
    sub_10002FB84(v31);
    sub_10003C9AC(v23, type metadata accessor for ArtworkImage.Placeholder);
    (*(v8 + 8))(v22, v18);
    v35 = *(v12 + v20);
    *(v12 + v20) = v42;
  }
}

unint64_t sub_10003A8B4(char a1)
{
  result = 0x7469747265707573;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x656C746974627573;
      break;
    case 3:
      result = 7107189;
      break;
    case 4:
      result = 1684957547;
      break;
    case 5:
      result = 0x44496D657469;
      break;
    case 6:
      result = 0x49676F6C61746163;
      break;
    case 7:
      result = 0x4970655269726973;
      break;
    case 8:
    case 16:
      result = 0x656E6961746E6F63;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x736567646162;
      break;
    case 12:
      result = 0x626179616C507369;
      break;
    case 13:
      result = 0x44657361656C6572;
      break;
    case 14:
    case 17:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x65726E6567;
      break;
    case 18:
      result = 0x756F72676B636162;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0xD00000000000001BLL;
      break;
    case 21:
      result = 0x49656C6261646F63;
      break;
    case 22:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10003AB6C(void *a1)
{
  v3 = v1;
  v5 = sub_100009DCC(&qword_1006E1AE0, &qword_10057DE18);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - v7;
  sub_10000C8CC(a1, a1[3]);
  sub_10003C594();
  sub_100574718();
  LOBYTE(v20) = 0;
  sub_100574308();
  if (!v2)
  {
    LOBYTE(v20) = 1;
    sub_100574328();
    LOBYTE(v20) = 2;
    sub_100574308();
    v9 = type metadata accessor for WidgetMusicItem(0);
    LOBYTE(v20) = 3;
    sub_10056C8A8();
    sub_10003CF5C(&qword_1006E1AE8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    sub_100574368();
    LOBYTE(v20) = *(v3 + v9[8]);
    v23 = 4;
    sub_10002FD00();
    sub_100574318();
    v10 = (v3 + v9[9]);
    v12 = *v10;
    v11 = v10[1];
    *&v20 = v12;
    *(&v20 + 1) = v11;
    v23 = 5;
    sub_100010420();
    sub_100574368();
    v20 = *(v3 + v9[10]);
    v23 = 6;
    sub_100574318();
    LOBYTE(v20) = 7;
    sub_100574328();
    v20 = *(v3 + v9[12]);
    v23 = 8;
    sub_100574318();
    v20 = *(v3 + v9[13]);
    v23 = 9;
    sub_100574318();
    LOBYTE(v20) = 10;
    sub_100574308();
    *&v20 = *(v3 + v9[15]);
    v23 = 11;
    sub_100009DCC(&qword_1006E1A80, &qword_10057DE00);
    sub_10003CA0C();
    sub_100574368();
    LOBYTE(v20) = 12;
    sub_100574338();
    LOBYTE(v20) = 13;
    sub_10056CAA8();
    sub_10003CF5C(&qword_1006DFF90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    sub_100574318();
    LOBYTE(v20) = 14;
    sub_100574318();
    LOBYTE(v20) = 15;
    sub_100574308();
    *&v20 = *(v3 + v9[20]);
    v23 = 16;
    sub_100009DCC(&qword_1006E1A98, &qword_10057DE08);
    sub_10003CAE4();
    sub_100574368();
    v13 = (v3 + v9[21]);
    v14 = *(v13 + 2);
    v15 = *(v13 + 24);
    v20 = *v13;
    v21 = v14;
    v22 = v15;
    v23 = 17;
    sub_10003CBBC();
    sub_100574318();
    v16 = (v3 + v9[22]);
    v17 = *(v16 + 2);
    v18 = *(v16 + 24);
    v20 = *v16;
    v21 = v17;
    v22 = v18;
    v23 = 18;
    sub_100574318();
    LOBYTE(v20) = 19;
    type metadata accessor for ArtworkImage.Placeholder(0);
    sub_10003CF5C(&qword_1006E1B18, type metadata accessor for ArtworkImage.Placeholder, &protocol conformance descriptor for ArtworkImage.Placeholder);
    sub_100574368();
    *&v20 = *(v3 + v9[24]);
    v23 = 20;
    sub_10003CC10();
    sub_100574368();
    *&v20 = *(v3 + v9[25]);
    v23 = 21;
    sub_100014D78();
    sub_100574368();
    *&v20 = *(v3 + v9[26]);
    v23 = 22;
    sub_100009DCC(&qword_1006E1AC8, &qword_10057DE10);
    sub_10003CC64();
    sub_100574368();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10003B300(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v80 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v81 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  __chkstk_darwin();
  v83 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v76 - v5;
  v7 = sub_10056C8A8();
  v84 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100009DCC(&qword_1006E1A68, &qword_10057DDF8);
  v85 = *(v10 - 8);
  v86 = v10;
  __chkstk_darwin();
  v12 = &v76 - v11;
  v13 = type metadata accessor for WidgetMusicItem(0);
  __chkstk_darwin();
  v15 = (&v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v88 = a1;
  sub_10000C8CC(a1, v16);
  sub_10003C594();
  v87 = v12;
  v17 = v89;
  sub_100574708();
  if (v17)
  {
    v89 = v17;
    sub_100010474(v88);
    v22 = 0;
LABEL_4:

    return;
  }

  v76 = v6;
  v77 = v7;
  v19 = v85;
  v18 = v86;
  v78 = v13;
  v79 = v15;
  LOBYTE(v90) = 0;
  v20 = v87;
  v21 = sub_100574278();
  v23 = v79;
  *v79 = v21;
  *(v23 + 1) = v24;
  LOBYTE(v90) = 1;
  *(v23 + 2) = sub_100574298();
  *(v23 + 3) = v25;
  LOBYTE(v90) = 2;
  v26 = sub_100574278();
  v89 = 0;
  *(v23 + 4) = v26;
  *(v23 + 5) = v27;
  LOBYTE(v90) = 3;
  sub_10003CF5C(&qword_1006E1A78, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v28 = v77;
  v29 = v89;
  sub_1005742D8();
  v89 = v29;
  if (v29)
  {
    (*(v19 + 8))(v20, v18);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    LODWORD(v81) = 0;
    LODWORD(v82) = 0;
    LODWORD(v83) = 0;
    LODWORD(v85) = 0;
    LODWORD(v86) = 0;
    LODWORD(v87) = 0;
    v33 = 0;
    v34 = 0;
LABEL_12:
    sub_100010474(v88);

    v38 = v34;
    if ((v30 & 1) == 0)
    {
      v39 = 0;
      v40 = 0;
      v22 = 0;
      if (!v31)
      {
        goto LABEL_14;
      }

      goto LABEL_28;
    }

    v22 = 0;
    v40 = 0;
    v39 = 0;
LABEL_27:
    (*(v84 + 8))(v79 + v78[7], v77);
    if ((v31 & 1) == 0)
    {
LABEL_14:
      v41 = v78;
      v42 = v79;
      if (v32)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }

LABEL_28:
    v41 = v78;
    v42 = v79;

    if (v32)
    {
LABEL_15:

      if ((v81 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_30;
    }

LABEL_29:
    if (!v81)
    {
LABEL_16:
      if (v82)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }

LABEL_30:

    if (v82)
    {
LABEL_17:

      if ((v83 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_32;
    }

LABEL_31:
    if (!v83)
    {
LABEL_18:
      if (v85)
      {
        goto LABEL_19;
      }

      goto LABEL_33;
    }

LABEL_32:

    if (v85)
    {
LABEL_19:

      if ((v86 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!v86)
    {
LABEL_20:
      if (v87)
      {
        goto LABEL_21;
      }

      goto LABEL_35;
    }

LABEL_34:

    if (v87)
    {
LABEL_21:
      sub_10002FB84(v42 + v41[17]);
      if ((v33 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_36;
    }

LABEL_35:
    if (!v33)
    {
LABEL_22:
      if (v38)
      {
        goto LABEL_23;
      }

      goto LABEL_37;
    }

LABEL_36:
    sub_10002FB84(v42 + v41[18]);
    if (v38)
    {
LABEL_23:

      if ((v39 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_38;
    }

LABEL_37:
    if (!v39)
    {
LABEL_24:
      if (!v40)
      {
        goto LABEL_4;
      }

LABEL_39:
      sub_10003C9AC(v42 + v41[23], type metadata accessor for ArtworkImage.Placeholder);
      goto LABEL_4;
    }

LABEL_38:

    if ((v40 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

  v35 = v78;
  (*(v84 + 32))(&v23[v78[7]], v9, v28);
  v93 = 4;
  sub_10002FBEC();
  v36 = v89;
  sub_100574288();
  v89 = v36;
  if (v36)
  {
    (*(v19 + 8))(v87, v18);
LABEL_11:
    v31 = 0;
    v32 = 0;
    LODWORD(v81) = 0;
    LODWORD(v82) = 0;
    LODWORD(v83) = 0;
    LODWORD(v85) = 0;
    LODWORD(v86) = 0;
    LODWORD(v87) = 0;
    v33 = 0;
    v34 = 0;
    v30 = 1;
    goto LABEL_12;
  }

  v23[v35[8]] = v90;
  v93 = 5;
  sub_1000104C0();
  v37 = v89;
  sub_1005742D8();
  if (v37)
  {
    v89 = v37;
    (*(v19 + 8))(v87, v86);
    goto LABEL_11;
  }

  v43 = *(&v90 + 1);
  v44 = &v23[v35[9]];
  *v44 = v90;
  *(v44 + 1) = v43;
  v93 = 6;
  sub_100574288();
  *&v23[v35[10]] = v90;
  LOBYTE(v90) = 7;
  v45 = sub_100574298();
  v46 = &v23[v78[11]];
  *v46 = v45;
  v46[1] = v47;
  v93 = 8;
  sub_100574288();
  v89 = 0;
  *(v79 + v78[12]) = v90;
  v93 = 9;
  v48 = v89;
  sub_100574288();
  v89 = v48;
  if (v48)
  {
    (*(v19 + 8))(v87, v86);
    LODWORD(v83) = 0;
    LODWORD(v85) = 0;
    LODWORD(v86) = 0;
    LODWORD(v87) = 0;
    v33 = 0;
    v34 = 0;
    v30 = 1;
    v31 = 1;
    v32 = 1;
    LODWORD(v81) = 1;
    LODWORD(v82) = 1;
    goto LABEL_12;
  }

  *(v79 + v78[13]) = v90;
  LOBYTE(v90) = 10;
  v49 = v89;
  v50 = sub_100574278();
  v89 = v49;
  if (v49)
  {
    (*(v19 + 8))(v87, v86);
    LODWORD(v85) = 0;
    LODWORD(v86) = 0;
    LODWORD(v87) = 0;
    v33 = 0;
    v34 = 0;
    v30 = 1;
    v31 = 1;
    v32 = 1;
    LODWORD(v81) = 1;
    LODWORD(v82) = 1;
    LODWORD(v83) = 1;
    goto LABEL_12;
  }

  v52 = (v79 + v78[14]);
  *v52 = v50;
  v52[1] = v51;
  sub_100009DCC(&qword_1006E1A80, &qword_10057DE00);
  v93 = 11;
  sub_10003C5E8();
  v53 = v89;
  sub_1005742D8();
  v89 = v53;
  if (v53)
  {
    (*(v19 + 8))(v87, v86);
    LODWORD(v86) = 0;
    LODWORD(v87) = 0;
    v33 = 0;
    v34 = 0;
    v30 = 1;
    v31 = 1;
    v32 = 1;
    LODWORD(v81) = 1;
    LODWORD(v82) = 1;
    LODWORD(v83) = 1;
    LODWORD(v85) = 1;
    goto LABEL_12;
  }

  *(v79 + v78[15]) = v90;
  LOBYTE(v90) = 12;
  v54 = sub_1005742A8();
  v89 = 0;
  *(v79 + v78[16]) = v54 & 1;
  sub_10056CAA8();
  LOBYTE(v90) = 13;
  sub_10003CF5C(&qword_1006DFFB8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v55 = v89;
  sub_100574288();
  v89 = v55;
  if (v55)
  {
    (*(v19 + 8))(v87, v86);
    LODWORD(v87) = 0;
    v33 = 0;
    v34 = 0;
    v30 = 1;
    v31 = 1;
    v32 = 1;
    LODWORD(v81) = 1;
    LODWORD(v82) = 1;
    LODWORD(v83) = 1;
    LODWORD(v85) = 1;
    LODWORD(v86) = 1;
    goto LABEL_12;
  }

  sub_100015128(v76, v79 + v78[17]);
  LOBYTE(v90) = 14;
  v56 = v89;
  sub_100574288();
  v89 = v56;
  if (v56)
  {
    (*(v19 + 8))(v87, v86);
    v33 = 0;
    v34 = 0;
    v30 = 1;
    v31 = 1;
    v32 = 1;
    LODWORD(v81) = 1;
    LODWORD(v82) = 1;
    LODWORD(v83) = 1;
    LODWORD(v85) = 1;
    LODWORD(v86) = 1;
    LODWORD(v87) = 1;
    goto LABEL_12;
  }

  sub_100015128(v83, v79 + v78[18]);
  LOBYTE(v90) = 15;
  v57 = v89;
  v58 = sub_100574278();
  v89 = v57;
  if (v57)
  {
    (*(v19 + 8))(v87, v86);
    v34 = 0;
    v30 = 1;
    v31 = 1;
    v32 = 1;
    LODWORD(v81) = 1;
    LODWORD(v82) = 1;
    LODWORD(v83) = 1;
    LODWORD(v85) = 1;
    LODWORD(v86) = 1;
    LODWORD(v87) = 1;
    v33 = 1;
    goto LABEL_12;
  }

  v60 = (v79 + v78[19]);
  *v60 = v58;
  v60[1] = v59;
  sub_100009DCC(&qword_1006E1A98, &qword_10057DE08);
  v93 = 16;
  sub_10003C6C0();
  v61 = v89;
  sub_1005742D8();
  v89 = v61;
  if (v61)
  {
    (*(v19 + 8))(v87, v86);
    v30 = 1;
    v31 = 1;
    v32 = 1;
    LODWORD(v81) = 1;
    LODWORD(v82) = 1;
    LODWORD(v83) = 1;
    LODWORD(v85) = 1;
    LODWORD(v86) = 1;
    LODWORD(v87) = 1;
    v33 = 1;
    v34 = 1;
    goto LABEL_12;
  }

  *(v79 + v78[20]) = v90;
  v93 = 17;
  sub_10003C798();
  v62 = v89;
  sub_100574288();
  v89 = v62;
  if (v62 || (v63 = v91, v64 = v92, v65 = v79 + v78[21], *v65 = v90, *(v65 + 2) = v63, v65[24] = v64, v93 = 18, v66 = v89, sub_100574288(), (v89 = v66) != 0) || (v67 = v91, v68 = v92, v69 = v79 + v78[22], *v69 = v90, *(v69 + 2) = v67, v69[24] = v68, LOBYTE(v90) = 19, sub_10003CF5C(&qword_1006E1AB8, type metadata accessor for ArtworkImage.Placeholder, &protocol conformance descriptor for ArtworkImage.Placeholder), v70 = v89, sub_1005742D8(), (v89 = v70) != 0))
  {
    (*(v19 + 8))(v87, v86);
    sub_100010474(v88);
    v40 = 0;
    v22 = 0;
LABEL_58:

    v39 = 1;
    v38 = 1;
    v33 = 1;
    LODWORD(v87) = 1;
    LODWORD(v86) = 1;
    LODWORD(v85) = 1;
    LODWORD(v83) = 1;
    LODWORD(v82) = 1;
    LODWORD(v81) = 1;
    v32 = 1;
    LOBYTE(v31) = 1;
    goto LABEL_27;
  }

  sub_10003C7EC(v81, v79 + v78[23]);
  v93 = 20;
  sub_10003C850();
  v71 = v89;
  sub_1005742D8();
  v89 = v71;
  if (v71 || (*(v79 + v78[24]) = v90, v93 = 21, sub_100014D24(), v72 = v89, sub_1005742D8(), (v89 = v72) != 0))
  {
    (*(v19 + 8))(v87, v86);
    sub_100010474(v88);
    v22 = 0;
    v40 = 1;
    goto LABEL_58;
  }

  v22 = v90;
  *(v79 + v78[25]) = v90;
  sub_100009DCC(&qword_1006E1AC8, &qword_10057DE10);
  v93 = 22;
  sub_10003C8A4();
  v73 = v89;
  sub_1005742D8();
  v89 = v73;
  if (v73)
  {
    (*(v19 + 8))(v87, v86);
    sub_100010474(v88);
    v40 = 1;
    goto LABEL_58;
  }

  v74 = v78[26];
  (*(v19 + 8))(v87, v86);
  v75 = v79;
  *(v79 + v74) = v90;
  sub_10003CEF4(v75, v82, type metadata accessor for WidgetMusicItem);
  sub_100010474(v88);
  sub_10003C9AC(v75, type metadata accessor for WidgetMusicItem);
}