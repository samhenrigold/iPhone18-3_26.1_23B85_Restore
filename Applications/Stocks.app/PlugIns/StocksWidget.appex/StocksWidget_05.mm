unint64_t sub_10008A1C4()
{
  result = qword_100118C50;
  if (!qword_100118C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C50);
  }

  return result;
}

unint64_t sub_10008A21C()
{
  result = qword_100118C58;
  if (!qword_100118C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118C58);
  }

  return result;
}

unint64_t sub_10008A274()
{
  result = qword_100118C60[0];
  if (!qword_100118C60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100118C60);
  }

  return result;
}

uint64_t sub_10008A2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000DA370();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_10008A33C(uint64_t a1)
{
  result = sub_1000DA370();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10008A3BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000DA370();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10008A43C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000DA370();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10008A518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 17) = a4;
  v10 = *(type metadata accessor for OverviewTimelineProvider.Configuration(0, a6, a7, a4) + 44);
  v11 = sub_1000D9870();
  v12 = *(*(v11 - 8) + 32);

  return v12(a8 + v10, a5, v11);
}

uint64_t sub_10008A5AC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v88 = a4;
  v83 = a5;
  v8 = sub_1000D9870();
  v77 = *(v8 - 8);
  v78 = v8;
  __chkstk_darwin(v8);
  v82 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000D97E0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v76 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v84 = &v71 - v14;
  sub_100094D54(0);
  __chkstk_darwin(v15 - 8);
  v80 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v71 - v18;
  v20 = *(a3 - 8);
  v22 = __chkstk_darwin(v21);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  (*(v20 + 16))(v24, a1, a3, v22);
  v26 = a2;
  v27 = sub_1000DA350();
  v75 = sub_1000DBDD0();
  v28 = os_log_type_enabled(v27, v75);
  v86 = v11;
  v87 = v10;
  v85 = v20;
  if (v28)
  {
    v72 = v27;
    v79 = a2;
    v74 = v25;
    v29 = v10;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v89 = v31;
    *v30 = 136315138;
    v73 = a3;
    sub_1000D99D0();
    if ((*(v11 + 48))(v19, 1, v29) == 1)
    {
      sub_10009544C(v19, sub_100094D54);
      v32 = 0xE300000000000000;
      v33 = 7104878;
    }

    else
    {
      v33 = sub_1000D97D0();
      v32 = v37;
      (*(v11 + 8))(v19, v29);
    }

    v36 = v80;
    v34 = v73;
    v81 = *(v85 + 8);
    v81(v24, v73);
    v38 = sub_1000848C8(v33, v32, &v89);

    *(v30 + 4) = v38;
    v39 = v72;
    _os_log_impl(&_mh_execute_header, v72, v75, "Resolving intent: %s", v30, 0xCu);
    sub_100006D0C(v31);

    v35 = v74;
    v26 = v79;
    v10 = v87;
  }

  else
  {

    v81 = *(v20 + 8);
    v81(v24, a3);
    v34 = a3;
    v35 = v25;
    v36 = v80;
  }

  v40 = v88;
  sub_1000D99D0();
  v41 = v86;
  if ((*(v86 + 48))(v36, 1, v10) == 1)
  {
    sub_10009544C(v36, sub_100094D54);
    v42 = sub_1000DA350();
    v43 = sub_1000DBDB0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v26;
      v45 = v35;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v91[0] = v47;
      *v46 = 136315138;
      if (qword_1001140B8 != -1)
      {
        swift_once();
      }

      sub_1000DC4C0();
      v48 = sub_1000848C8(v89, v90, v91);

      *(v46 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v42, v43, "Malformed widget configuration, falling back to default entity, id=%s", v46, 0xCu);
      sub_100006D0C(v47);

      v35 = v45;
      v26 = v44;
      v41 = v86;
    }

    else
    {
    }

    v56 = v76;
    sub_1000D97C0();
    v57 = sub_1000D97D0();
    v59 = v58;
    (*(v41 + 8))(v56, v87);
    v60 = v82;
    (*(v77 + 104))(v82, enum case for NewsDisplayConfiguration.afterHours(_:), v78);
    sub_10008A518(v57, v59, 0, 0, v60, v34, v40, v83);
    v61 = sub_1000DA370();
    (*(*(v61 - 8) + 8))(v26, v61);
    return (v81)(v35, v34);
  }

  else
  {
    (*(v41 + 32))(v84, v36, v10);
    v49 = sub_1000DA350();
    v50 = sub_1000DBDD0();
    if (os_log_type_enabled(v49, v50))
    {
      v79 = v26;
      v51 = v35;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v91[0] = v53;
      *v52 = 136315138;
      if (qword_1001140B8 != -1)
      {
        swift_once();
      }

      v54 = v40;
      sub_1000DC4C0();
      v55 = sub_1000848C8(v89, v90, v91);

      *(v52 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v49, v50, "Successfully loaded widget entity, id=%s", v52, 0xCu);
      sub_100006D0C(v53);

      v35 = v51;
      v26 = v79;
      v41 = v86;
    }

    else
    {
      v54 = v40;
    }

    v63 = sub_1000D97D0();
    v65 = v64;
    v66 = v34;
    v67 = sub_10008AEC8(v35, v26, v34, v54, &dispatch thunk of WatchlistWidgetConfigurationIntentType.showWatchlistNameValue.getter, "Missing showWatchlistName on intent, id=%s", v71);
    v68 = sub_10008AEC8(v35, v26, v34, v54, &dispatch thunk of WatchlistWidgetConfigurationIntentType.showMoreDataValue.getter, "Missing showMoreDetails on intent, id=%s", v71);
    v69 = v82;
    sub_10008B034(v82);
    sub_10008A518(v63, v65, v67 & 1, v68 & 1, v69, v66, v54, v83);
    v70 = sub_1000DA370();
    (*(*(v70 - 8) + 8))(v26, v70);
    v81(v35, v66);
    return (*(v41 + 8))(v84, v87);
  }
}

uint64_t sub_10008AEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), const char *a6, ...)
{
  v7 = a5(a3, a4);
  if (v7 == 2)
  {
    v8 = sub_1000DA350();
    v9 = sub_1000DBDB0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      if (qword_1001140B8 != -1)
      {
        swift_once();
      }

      sub_1000DC4C0();
      v12 = sub_1000848C8(v14, v15, &v16);

      *(v10 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, a6, v10, 0xCu);
      sub_100006D0C(v11);
    }

    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_10008B034@<X0>(uint64_t a3@<X8>)
{
  sub_100024BB0(0);
  __chkstk_darwin(v4 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D99C0();
  v7 = sub_1000D9870();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    return (*(v8 + 32))(a3, v6, v7);
  }

  sub_10009544C(v6, sub_100024BB0);
  v9 = sub_1000DA350();
  v10 = sub_1000DBDB0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v13 = sub_1000848C8(v15[1], v15[2], &v16);

    *(v11 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "Missing newsDisplayConfiguration on intent, id=%s", v11, 0xCu);
    sub_100006D0C(v12);
  }

  return (*(v8 + 104))(a3, enum case for NewsDisplayConfiguration.afterHours(_:), v7);
}

uint64_t sub_10008B2A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000DB720();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000DA350();
  v7 = sub_1000DBDD0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "OverviewTimelineProvider::placeholder(in:)", v8, 2u);
  }

  sub_1000DB7B0();
  sub_1000323F4(0);
  v10 = v9[12];
  v11 = v9[16];
  v12 = v9[20];
  v13 = v9[24];
  sub_1000D9050();
  sub_10003F734(v5, 0, (a1 + v10));
  (*(v3 + 8))(v5, v2);
  *(a1 + v11) = 0;
  *(a1 + v12) = 1;
  *(a1 + v13) = 0;
  type metadata accessor for OverviewTimelineEntry(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10008B440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_100023750(0);
  v5[7] = swift_task_alloc();
  v6 = sub_1000D8AF0();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_1000D9090();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  sub_100094D54(0);
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_10008B5BC, 0, 0);
}

uint64_t sub_10008B5BC(uint64_t a1)
{
  v46 = v1;
  v2 = sub_1000DA350();
  v3 = sub_1000DBDD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "OverviewTimelineProvider::snapshot(for:in:)", v4, 2u);
  }

  v5 = *(v1 + 112);
  v6 = *(v1 + 40);

  v44 = 0x73696C6863746177;
  v45 = 0xEA00000000002D74;
  v7 = *(v6 + 16);
  *(v1 + 120) = v7;
  v8 = *(v6 + 24);
  *(v1 + 128) = v8;
  v42 = v8;
  v43 = v7;
  sub_1000D99D0();
  v9 = sub_1000D97E0();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v5, 1, v9);
  v12 = *(v1 + 112);
  if (v11 == 1)
  {
    sub_10009544C(*(v1 + 112), sub_100094D54);
    v13 = 0xE300000000000000;
    v14._countAndFlagsBits = 7104878;
  }

  else
  {
    v15 = sub_1000D97D0();
    v13 = v16;
    (*(v10 + 8))(v12, v9);
    v14._countAndFlagsBits = v15;
  }

  v18 = *(v1 + 88);
  v17 = *(v1 + 96);
  v19 = *(v1 + 72);
  v20 = *(v1 + 80);
  v22 = *(v1 + 56);
  v21 = *(v1 + 64);
  v14._object = v13;
  sub_1000DBA00(v14);

  v48._countAndFlagsBits = 45;
  v48._object = 0xE100000000000000;
  sub_1000DBA00(v48);
  sub_1000D8950();
  sub_1000D8AE0();
  (*(v19 + 8))(v20, v21);
  v23 = *(v17 + 48);
  if (v23(v22, 1, v18) == 1)
  {
    v24 = *(v1 + 88);
    v25 = *(v1 + 56);
    sub_1000D9050();
    if (v23(v25, 1, v24) != 1)
    {
      sub_10009544C(*(v1 + 56), sub_100023750);
    }
  }

  else
  {
    (*(*(v1 + 96) + 32))(*(v1 + 104), *(v1 + 56), *(v1 + 88));
  }

  v26 = *(v1 + 96);
  v27 = *(v1 + 104);
  v28 = *(v1 + 88);
  sub_10009533C(&qword_100115308, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v49._countAndFlagsBits = sub_1000DC320();
  sub_1000DBA00(v49);

  (*(v26 + 8))(v27, v28);
  v29 = v44;
  v30 = v45;
  *(v1 + 136) = v44;
  *(v1 + 144) = v30;

  v31 = sub_1000DA350();
  v32 = sub_1000DBDD0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v44 = v34;
    *v33 = 136446210;
    *(v33 + 4) = sub_1000848C8(v29, v30, &v44);
    _os_log_impl(&_mh_execute_header, v31, v32, "Will fetch widget snapshot, id=%{public}s", v33, 0xCu);
    sub_100006D0C(v34);
  }

  v35 = *(v1 + 48);
  v36 = swift_task_alloc();
  *(v1 + 152) = v36;
  v37 = *(v1 + 24);
  *(v36 + 16) = v43;
  *(v36 + 24) = v42;
  *(v36 + 32) = v29;
  *(v36 + 40) = v30;
  *(v36 + 48) = v35;
  *(v36 + 56) = vextq_s8(v37, v37, 8uLL);
  v38 = swift_task_alloc();
  *(v1 + 160) = v38;
  v39 = type metadata accessor for OverviewTimelineEntry(0);
  *v38 = v1;
  v38[1] = sub_10008BA90;
  v40 = *(v1 + 16);

  return withOSActivity<A>(_:operation:)(v40, "Watchlist Widget Snapshot", 25, 2, &unk_1000E3CF8, v36, v39);
}

uint64_t sub_10008BA90()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_10008BBCC, 0, 0);
  }
}

uint64_t sub_10008BBCC()
{
  sub_10008BC78(v0[6], v0[17], v0[18]);

  v1 = v0[1];

  return v1();
}

void sub_10008BC78(uint64_t a1, uint64_t a2, unint64_t a3)
{

  oslog = sub_1000DA350();
  v5 = sub_1000DBDD0();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1000848C8(a2, a3, &v9);
    _os_log_impl(&_mh_execute_header, oslog, v5, "Did fetch widget snapshot, id=%{public}s", v6, 0xCu);
    sub_100006D0C(v7);
  }
}

uint64_t sub_10008BD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  return _swift_task_switch(sub_10008BDB8, 0, 0);
}

uint64_t sub_10008BDB8()
{
  if (qword_1001140B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 40);
  *(v0 + 24) = v2;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  v4 = *(v0 + 56);
  *(v3 + 16) = *(v0 + 80);
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;

  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  type metadata accessor for OverviewTimelineEntry(0);
  *v5 = v0;
  v5[1] = sub_10008BF2C;
  v6 = *(v0 + 32);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v6, v0 + 16, &unk_1000E3D08, v3, 0, 0, 0xD00000000000002BLL, 0x80000001000E9230);
}

uint64_t sub_10008BF2C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_10008C070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v9 = sub_1000DA370();
  v6[10] = v9;
  v6[11] = *(v9 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = *(a5 - 8);
  v6[14] = swift_task_alloc();
  v11 = type metadata accessor for OverviewTimelineProvider.Configuration(0, a5, a6, v10);
  v6[15] = v11;
  v6[16] = *(v11 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v12 = sub_1000DB720();
  v6[21] = v12;
  v6[22] = *(v12 - 8);
  v6[23] = swift_task_alloc();
  v13 = sub_1000DB7D0();
  v6[24] = v13;
  v6[25] = *(v13 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();

  return _swift_task_switch(sub_10008C2E0, 0, 0);
}

uint64_t sub_10008C2E0(uint64_t a1)
{
  v92 = v1;
  v2 = sub_1000DA350();
  v3 = sub_1000DBDD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v91 = v5;
    *v4 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v6 = sub_1000848C8(v1[2], v1[3], &v91);

    *(v4 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting snapshot fetch, id=%s", v4, 0xCu);
    sub_100006D0C(v5);
  }

  v7 = v1[26];
  v8 = v1[24];
  v9 = v1[6];
  v10 = *(v1[25] + 16);
  v10(v1[27], v9, v8);
  v10(v7, v9, v8);
  v11 = sub_1000DA350();
  v12 = sub_1000DBDD0();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v1[27];
  v16 = v1[24];
  v15 = v1[25];
  if (v13)
  {
    v17 = v1[22];
    v18 = v1[23];
    v19 = v1[21];
    v84 = v1[26];
    v20 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v91 = v89;
    *v20 = 136315394;
    v85 = v12;
    sub_1000DB7B0();
    sub_10009533C(&qword_100115310, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v21 = sub_1000DC320();
    log = v11;
    v23 = v22;
    (*(v17 + 8))(v18, v19);
    v24 = *(v15 + 8);
    v24(v14, v16);
    v25 = sub_1000848C8(v21, v23, &v91);

    *(v20 + 4) = v25;
    *(v20 + 12) = 1024;
    LODWORD(v25) = sub_1000DB7C0() & 1;
    v24(v84, v16);
    *(v20 + 14) = v25;
    _os_log_impl(&_mh_execute_header, log, v85, "Snapshot context. family: %s, isPreview: %{BOOL}d", v20, 0x12u);
    sub_100006D0C(v89);
  }

  else
  {
    v26 = *(v15 + 8);
    v26(v1[26], v1[24]);

    v26(v14, v16);
  }

  v27 = v1[20];
  v28 = v1[16];
  v86 = v1[15];
  v90 = v1[19];
  v29 = v1[14];
  v30 = v1[11];
  v31 = v1[12];
  v33 = v1[9];
  v32 = v1[10];
  v34 = v1[8];
  v35 = v1[5];
  (*(v1[13] + 16))(v29, v1[7], v34);
  (*(v30 + 16))(v31, v35, v32);
  sub_10008A5AC(v29, v31, v34, v33, v27);
  v36 = *(v28 + 16);
  v36(v90, v27, v86);
  v37 = sub_1000DA350();
  v38 = sub_1000DBDD0();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v1[19];
  v41 = v1[15];
  v42 = v1[16];
  if (v39)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v91 = v44;
    *v43 = 136446210;
    v45 = sub_1000D9860();
    v87 = v36;
    v47 = v46;
    v48 = v40;
    v49 = *(v42 + 8);
    v49(v48, v41);
    v50 = sub_1000848C8(v45, v47, &v91);
    v36 = v87;

    *(v43 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v37, v38, "Resolved configuration. newsDisplayConfiguration: %{public}s", v43, 0xCu);
    sub_100006D0C(v44);
  }

  else
  {

    v51 = v40;
    v49 = *(v42 + 8);
    v49(v51, v41);
  }

  v1[28] = v49;
  v36(v1[18], v1[20], v1[15]);
  v52 = sub_1000DA350();
  v53 = sub_1000DBDD0();
  v54 = os_log_type_enabled(v52, v53);
  v55 = v1[18];
  v56 = v1[15];
  v88 = v49;
  if (v54)
  {
    v57 = swift_slowAlloc();
    v58 = v49;
    v59 = v57;
    *v57 = 67109120;
    v60 = v36;
    v61 = *(v55 + 16);
    v58(v55, v56);
    *(v59 + 1) = v61;
    v36 = v60;
    _os_log_impl(&_mh_execute_header, v52, v53, "Resolved configuration. showWatchlistName: %{BOOL}d", v59, 8u);
  }

  else
  {
    v49(v55, v56);
  }

  v62 = v1[20];
  v63 = v1[17];
  v64 = v1[15];

  v36(v63, v62, v64);
  v65 = sub_1000DA350();
  v66 = sub_1000DBDD0();
  v67 = os_log_type_enabled(v65, v66);
  v69 = v1[16];
  v68 = v1[17];
  v70 = v1[15];
  if (v67)
  {
    v71 = swift_slowAlloc();
    *v71 = 67109120;
    v72 = *(v68 + 17);
    v73 = v69 + 8;
    v88(v68, v70);
    *(v71 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v65, v66, "Resolved configuration. showMoreDetails: %{BOOL}d", v71, 8u);
  }

  else
  {
    v73 = v69 + 8;
    v88(v1[17], v1[15]);
  }

  v1[29] = v73;
  v75 = v1[8];
  v74 = v1[9];

  v76 = swift_task_alloc();
  v1[30] = v76;
  v78 = type metadata accessor for OverviewTimelineProvider(0, v75, v74, v77);
  *v76 = v1;
  v76[1] = sub_10008CA4C;
  v79 = v1[20];
  v80 = v1[6];
  v81 = v1[4];

  return sub_10008CC38(v81, v79, v80, v78);
}

uint64_t sub_10008CA4C()
{

  return _swift_task_switch(sub_10008CB48, 0, 0);
}

uint64_t sub_10008CB48()
{
  (*(v0 + 224))(*(v0 + 160), *(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008CC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[63] = a4;
  v5[64] = v4;
  v5[61] = a2;
  v5[62] = a3;
  v5[60] = a1;
  v6 = sub_1000D9480();
  v5[65] = v6;
  v5[66] = *(v6 - 8);
  v5[67] = swift_task_alloc();
  sub_100059E4C(0);
  v5[68] = v7;
  v5[69] = swift_task_alloc();
  sub_100023704(0);
  v5[70] = swift_task_alloc();
  sub_100094F44(0);
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  v5[74] = type metadata accessor for WatchlistOverviewContentViewModel(0);
  v5[75] = swift_task_alloc();
  v8 = type metadata accessor for HeadlineViewModel(0);
  v5[76] = v8;
  v5[77] = *(v8 - 8);
  v5[78] = swift_task_alloc();
  sub_100023694(0);
  v5[79] = v9;
  v5[80] = *(v9 - 8);
  v5[81] = swift_task_alloc();
  v10 = type metadata accessor for WidgetStock(0);
  v5[82] = v10;
  v5[83] = *(v10 - 8);
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  v11 = sub_1000D9B40();
  v5[86] = v11;
  v5[87] = *(v11 - 8);
  v5[88] = swift_task_alloc();
  sub_100023660(0);
  v5[89] = swift_task_alloc();
  v5[90] = swift_task_alloc();
  v5[91] = swift_task_alloc();
  v5[92] = swift_task_alloc();
  sub_100094F78(0);
  v5[93] = swift_task_alloc();
  sub_100025008(0);
  v5[94] = v12;
  v5[95] = *(v12 - 8);
  v5[96] = swift_task_alloc();
  v5[97] = swift_task_alloc();
  v13 = type metadata accessor for WidgetWatchlist(0);
  v5[98] = v13;
  v5[99] = *(v13 - 8);
  v5[100] = swift_task_alloc();
  sub_100094FAC(0);
  v5[101] = swift_task_alloc();
  v5[102] = swift_task_alloc();
  v14 = sub_1000DB720();
  v5[103] = v14;
  v5[104] = *(v14 - 8);
  v5[105] = swift_task_alloc();
  v5[106] = swift_task_alloc();
  v5[107] = swift_task_alloc();

  return _swift_task_switch(sub_10008D138, 0, 0);
}

uint64_t sub_10008D138()
{
  v0[108] = sub_100002A50(0, &qword_1001168A8, &protocol descriptor for WatchlistViewModelServiceType);
  v0[109] = sub_1000DBC20();
  v0[110] = sub_1000DBC10();
  v2 = sub_1000DBBE0();

  return _swift_task_switch(sub_10008D1EC, v2, v1);
}

uint64_t sub_10008D1EC()
{
  v1 = *(v0 + 864);

  sub_100093994(v1, v0 + 56);

  return _swift_task_switch(sub_10008D278, 0, 0);
}

uint64_t sub_10008D278()
{
  *(v0 + 888) = sub_100002A50(0, &qword_100115348, &protocol descriptor for HeadlineViewModelServiceType);
  *(v0 + 896) = sub_1000DBC10();
  v2 = sub_1000DBBE0();

  return _swift_task_switch(sub_10008D320, v2, v1);
}

uint64_t sub_10008D320()
{
  v1 = *(v0 + 888);

  sub_100093994(v1, v0 + 16);

  return _swift_task_switch(sub_10008D3AC, 0, 0);
}

uint64_t sub_10008D3AC(uint64_t a1)
{
  v26 = v1;
  v2 = *(v1 + 856);
  v3 = *(v1 + 832);
  v4 = *(v1 + 824);
  v5 = *(v1 + 504);
  v6 = *(v1 + 488);
  sub_1000DB7B0();
  v7 = v6;
  v22 = v6;
  LOBYTE(v6) = *(v6 + 16);
  *(v1 + 1072) = v6;
  v8 = *(v7 + 17);
  *(v1 + 1073) = v8;
  *(v1 + 904) = *(v5 + 16);
  *(v1 + 912) = *(v5 + 24);
  v24 = sub_10009407C(v2, v6, v8, 0);
  *(v1 + 920) = v24;
  v9 = *(v3 + 8);
  *(v1 + 928) = v9;
  *(v1 + 936) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v4);
  sub_1000DB7B0();
  v10 = sub_10009407C(v2, v6, v8, 1u);
  *(v1 + 944) = v10;
  v9(v2, v4);
  if (*(v22 + 8))
  {
    v11 = **(v1 + 488);
    v12 = *(v22 + 8);
  }

  else
  {
    v11 = sub_1000D9C50();
    v12 = v13;
  }

  *(v1 + 960) = v12;
  *(v1 + 952) = v11;

  v14 = sub_1000DA350();
  v15 = sub_1000DBDD0();

  v16 = v24;
  if (os_log_type_enabled(v14, v15))
  {
    v17 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v17 = 136315906;
    v23 = v11;
    *(v17 + 4) = sub_1000848C8(v11, v12, &v25);
    *(v17 + 12) = 2048;
    *(v17 + 14) = v24;
    *(v17 + 22) = 2048;
    *(v17 + 24) = v10;
    *(v17 + 32) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v18 = sub_1000848C8(*(v1 + 424), *(v1 + 432), &v25);

    *(v17 + 34) = v18;
    _os_log_impl(&_mh_execute_header, v14, v15, "Fetching watchlist, watchlist=%s, countWithoutNews=%ld, countWithNews=%ld, id=%s", v17, 0x2Au);
    swift_arrayDestroy();

    v11 = v23;
  }

  else
  {
  }

  sub_100006C7C((v1 + 56), *(v1 + 80));
  if (v10 > v24)
  {
    v16 = v10;
  }

  v19 = swift_task_alloc();
  *(v1 + 968) = v19;
  *v19 = v1;
  v19[1] = sub_10008D6F4;
  v20 = *(v1 + 816);

  return sub_100003218(v20, v11, v12, v16);
}

uint64_t sub_10008D6F4()
{
  *(*v1 + 976) = v0;

  if (v0)
  {

    v2 = sub_10008F5F0;
  }

  else
  {
    v2 = sub_10008D810;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008D810()
{
  v231 = v0;
  v1 = *(v0 + 808);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  sub_100094CEC(*(v0 + 816), v1, sub_100094FAC);
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = *(v0 + 808);
  if (v4 == 1)
  {
    sub_10009544C(v5, sub_100094FAC);

    v6 = sub_1000DA350();
    LOBYTE(v7) = sub_1000DBDB0();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 960);
    if (!v8)
    {

      goto LABEL_15;
    }

    v10 = *(v0 + 952);
    v11 = swift_slowAlloc();
    v230[0] = swift_slowAlloc();
    *v11 = 136315394;
    v12 = sub_1000848C8(v10, v9, v230);

    *(v11 + 4) = v12;
    *(v11 + 12) = 2080;
    if (qword_1001140B8 == -1)
    {
LABEL_4:
      sub_1000DC4C0();
      v13 = sub_1000848C8(*(v0 + 312), *(v0 + 320), v230);

      *(v11 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to find watchlist, watchlist=%s, id=%s", v11, 0x16u);
      swift_arrayDestroy();

LABEL_15:
      v226 = *(v0 + 816);
      v32 = *(v0 + 480);
      sub_1000328C0(0);
      v34 = (v32 + *(v33 + 48));
      v220 = (v32 + *(v33 + 64));
      sub_1000D9050();
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v36 = objc_opt_self();
      v37 = [v36 bundleForClass:ObjCClassFromMetadata];
      v196._countAndFlagsBits = 0x80000001000E9280;
      v233._object = 0x80000001000E9260;
      v233._countAndFlagsBits = 0xD000000000000011;
      v239.value._countAndFlagsBits = 0;
      v239.value._object = 0;
      v38.super.isa = v37;
      v242._countAndFlagsBits = 0;
      v242._object = 0xE000000000000000;
      v39 = sub_1000D8E50(v233, v239, v38, v242, 0xD00000000000004CLL, v196);
      v41 = v40;

      *v34 = v39;
      v34[1] = v41;
      v42 = [v36 bundleForClass:ObjCClassFromMetadata];
      v197._countAndFlagsBits = 0x80000001000E92F0;
      v234._countAndFlagsBits = 0xD00000000000001DLL;
      v234._object = 0x80000001000E92D0;
      v240.value._countAndFlagsBits = 0;
      v240.value._object = 0;
      v43.super.isa = v42;
      v243._countAndFlagsBits = 0;
      v243._object = 0xE000000000000000;
      v44 = sub_1000D8E50(v234, v240, v43, v243, 0xD00000000000004FLL, v197);
      v46 = v45;

      sub_10009544C(v226, sub_100094FAC);
      *v220 = v44;
      v220[1] = v46;
      type metadata accessor for OverviewTimelineEntry(0);
LABEL_30:
      swift_storeEnumTagMultiPayload();
LABEL_31:
      sub_100006D0C((v0 + 16));
      sub_100006D0C((v0 + 56));

      v90 = *(v0 + 8);

      return v90();
    }

LABEL_125:
    swift_once();
    goto LABEL_4;
  }

  sub_100094FE0(v5, *(v0 + 800), type metadata accessor for WidgetWatchlist);

  v14 = sub_1000DA350();
  v15 = sub_1000DBDD0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 960);
    v17 = *(v0 + 952);
    v18 = swift_slowAlloc();
    v230[0] = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_1000848C8(v17, v16, v230);
    *(v18 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v19 = sub_1000848C8(*(v0 + 408), *(v0 + 416), v230);

    *(v18 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "Did fetch watchlist, watchlist=%s, id=%s", v18, 0x16u);
    swift_arrayDestroy();
  }

  v20 = *(v0 + 760);
  v21 = *(v0 + 752);
  v22 = *(v0 + 744);
  v23 = *(*(v0 + 800) + 16);
  *(v0 + 984) = v23;
  *(v0 + 448) = v23;
  sub_1000250D8(0);
  sub_10009533C(&qword_100115388, sub_1000250D8, &protocol conformance descriptor for [A]);

  sub_1000DA240();
  if ((*(v20 + 48))(v22, 1, v21) == 1)
  {
    sub_10009544C(*(v0 + 744), sub_100094F78);

    v24 = sub_1000DA350();
    v25 = sub_1000DBDD0();

    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 960);
    if (v26)
    {
      v28 = *(v0 + 952);
      v29 = swift_slowAlloc();
      v230[0] = swift_slowAlloc();
      *v29 = 136315394;
      v30 = sub_1000848C8(v28, v27, v230);

      *(v29 + 4) = v30;
      *(v29 + 12) = 2080;
      if (qword_1001140B8 != -1)
      {
        swift_once();
      }

      sub_1000DC4C0();
      v31 = sub_1000848C8(*(v0 + 296), *(v0 + 304), v230);

      *(v29 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "No symbols in watchlist, watchlist=%s, id=%s", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v78 = *(v0 + 816);
    v79 = *(v0 + 800);
    v80 = *(v0 + 480);
    sub_1000328C0(0);
    v82 = (v80 + *(v81 + 48));
    v83 = (v80 + *(v81 + 64));
    sub_1000D9050();
    type metadata accessor for Localized();
    v84 = swift_getObjCClassFromMetadata();
    v85 = [objc_opt_self() bundleForClass:v84];
    v196._countAndFlagsBits = 0x80000001000E9340;
    v235._countAndFlagsBits = 0x6F626D7953206F4ELL;
    v235._object = 0xEA0000000000736CLL;
    v241.value._countAndFlagsBits = 0;
    v241.value._object = 0;
    v86.super.isa = v85;
    v244._countAndFlagsBits = 0;
    v244._object = 0xE000000000000000;
    v87 = sub_1000D8E50(v235, v241, v86, v244, 0xD00000000000004ALL, v196);
    v89 = v88;

    sub_10009544C(v78, sub_100094FAC);
    sub_10009544C(v79, type metadata accessor for WidgetWatchlist);
    *v82 = v87;
    v82[1] = v89;
    type metadata accessor for OverviewTimelineEntry(0);
    *v83 = 0;
    v83[1] = 0;
    goto LABEL_30;
  }

  v47 = *(v0 + 944);
  v221 = *(v0 + 912);
  v48 = *(v0 + 776);
  v49 = *(v0 + 768);
  v50 = *(v0 + 760);
  v51 = *(v0 + 752);
  v52 = *(v0 + 736);
  v53 = *(v0 + 640);
  v54 = *(v0 + 632);
  v55 = *(v0 + 488);
  v212 = *(v0 + 496);
  v215 = *(v0 + 904);
  (*(v50 + 32))(v48, *(v0 + 744), v51);
  v57 = *(v50 + 16);
  v56 = v50 + 16;
  *(v0 + 992) = v57;
  *(v0 + 1000) = v56 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v57(v49, v48, v51);
  v58 = sub_100018398(v47);
  v60 = v59;
  v7 = v61;
  v63 = v62;
  *(v0 + 1008) = v58;
  *(v0 + 1016) = v59;
  *(v0 + 1024) = v61;
  *(v0 + 1032) = v62;
  v65 = *(v53 + 56);
  v64 = v53 + 56;
  v65(v52, 1, 1, v54);
  *(v0 + 128) = v58;
  *(v0 + 136) = v60;
  v227 = v60;
  *(v0 + 144) = v7;
  *(v0 + 152) = v63;
  sub_1000952B8(0);
  v6 = v66;
  v67 = sub_10009533C(&qword_100118D30, sub_1000952B8, &protocol conformance descriptor for ArraySlice<A>);
  if (!sub_100095048(v55, v212, v0 + 128, v215, v6, v221, v67))
  {
    v92 = *(v0 + 712);
    v93 = *(v0 + 640);
    v6 = *(v0 + 632);
    sub_100094CEC(*(v0 + 736), v92, sub_100023660);
    v94 = *(v93 + 48);
    LODWORD(v6) = v94(v92, 1, v6);
    sub_10009544C(v92, sub_100023660);
    if (v6 == 1)
    {
      v95 = *(v0 + 920);
      (*(v0 + 992))(*(v0 + 768), *(v0 + 776), *(v0 + 752));
      v99 = sub_100018398(v95);
      if ((v98 & 1) == 0)
      {
LABEL_36:
        sub_100024138(v99, v96, v97, v98);
        v101 = v100;
        goto LABEL_53;
      }

      v55 = v98;
      v117 = v97;
      v118 = v96;
      sub_1000DC380();
      swift_unknownObjectRetain_n();
      v119 = swift_dynamicCastClass();
      if (!v119)
      {
        swift_unknownObjectRelease();
        v119 = _swiftEmptyArrayStorage;
      }

      v120 = v119[2];

      if (!__OFSUB__(v55 >> 1, v117))
      {
        if (v120 == (v55 >> 1) - v117)
        {
          v101 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (v101)
          {
LABEL_54:
            *(v0 + 440) = v101;
            goto LABEL_63;
          }

          v101 = _swiftEmptyArrayStorage;
LABEL_53:
          swift_unknownObjectRelease();
          goto LABEL_54;
        }

        goto LABEL_131;
      }

      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      swift_unknownObjectRelease();
      v98 = v55;
      v97 = v117;
      v96 = v118;
      goto LABEL_36;
    }

    v99 = *(v0 + 1032);
    v114 = *(v0 + 1008);
    if (v99)
    {
      sub_1000DC380();
      swift_unknownObjectRetain_n();
      v121 = swift_dynamicCastClass();
      if (!v121)
      {
        swift_unknownObjectRelease();
        v99 = *(v0 + 1032);
        v121 = _swiftEmptyArrayStorage;
      }

      v118 = *(v0 + 1024);
      v117 = v121[2];

      if (__OFSUB__(v99 >> 1, v118))
      {
        goto LABEL_130;
      }

      if (v117 == (v99 >> 1) - v118)
      {
        v116 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v116)
        {
LABEL_62:
          *(v0 + 456) = v116;
LABEL_63:
          sub_1000DA1C0();
          v7 = sub_1000DA350();
          LOBYTE(v56) = sub_1000DBDD0();
          if (!os_log_type_enabled(v7, v56))
          {
            goto LABEL_68;
          }

          v122 = *(v0 + 736);
          v123 = *(v0 + 632);
          v64 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v230[0] = v55;
          *v64 = 134218498;
          swift_beginAccess();
          v124 = v94(v122, 1, v123);
          v125 = 0;
          if (!v124)
          {
            v126 = *(v0 + 648);
            v127 = *(v0 + 640);
            v128 = *(v0 + 632);
            (*(v127 + 16))(v126, *(v0 + 736), v128);
            v125 = sub_1000DA1E0();
            (*(v127 + 8))(v126, v128);
          }

          *(v64 + 4) = v125;
          *(v64 + 12) = 2048;
          swift_beginAccess();
          *(v64 + 14) = sub_1000DA1E0();
          *(v64 + 22) = 2080;
          if (qword_1001140B8 == -1)
          {
LABEL_67:
            sub_1000DC4C0();
            v129 = sub_1000848C8(*(v0 + 344), *(v0 + 352), v230);

            *(v64 + 24) = v129;
            _os_log_impl(&_mh_execute_header, v7, v56, "Fetched %ld headlines for %ld stocks, id=%s", v64, 0x20u);
            sub_100006D0C(v55);

LABEL_68:

            if (*(v0 + 1072) == 1)
            {
              v130 = *(v0 + 800);
              v132 = *v130;
              v131 = v130[1];
            }

            else
            {
              v132 = 0;
              v131 = 0;
            }

            v133 = *(v0 + 840);
            v134 = *(v0 + 832);
            v135 = *(v0 + 824);
            sub_1000DB7B0();
            v136 = (*(v134 + 88))(v133, v135);
            if (v136 == enum case for WidgetFamily.systemSmall(_:))
            {
              v137 = *(v0 + 1073);

              v217 = 3;
              if (v6 == 1)
              {
                v138 = v137;
              }

              else
              {
                v138 = 3;
              }
            }

            else
            {
              if (v136 == enum case for WidgetFamily.systemMedium(_:))
              {
                v178 = *(v0 + 1073);
                v179 = *(v0 + 1072);

                v180 = v178 == 0;
                v181 = 1;
                if (v178)
                {
                  v138 = 1;
                }

                else
                {
                  v138 = 2;
                }

                if (!v180)
                {
                  v181 = 2;
                }

                v182 = 2;
                if (((v6 == 1) & v179) == 0)
                {
                  v182 = 3;
                }

                v217 = v182;
                if (v6 == 1)
                {
                  v223 = v181;
                  v210 = v132;
                  v213 = v131;
                  goto LABEL_77;
                }

                v223 = 2;
                v138 = 3;
LABEL_76:

                v210 = 0;
                v213 = 0;
LABEL_77:
                v208 = *(v0 + 1073);
                v139 = *(v0 + 800);
                v140 = *(v0 + 784);
                v141 = *(v0 + 736);
                v7 = *(v0 + 600);
                v142 = *(v0 + 592);
                swift_beginAccess();
                *(swift_task_alloc() + 16) = v138;
                type metadata accessor for TickerCellViewModel(0);
                sub_1000DA1D0();

                v143 = *(v140 + 24);
                v144 = v142[7];
                v145 = sub_1000D9690();
                (*(*(v145 - 8) + 16))(v7 + v144, v139 + v143, v145);
                swift_beginAccess();
                sub_100094CEC(v141, v7 + v142[11], sub_100023660);
                *v7 = v210;
                *(v7 + 8) = v213;
                *(v7 + v142[6]) = v138;
                *(v7 + v142[8]) = v217;
                *(v7 + v142[9]) = v223;
                *(v7 + v142[10]) = v208;
                v146 = sub_1000DA350();
                LOBYTE(v7) = sub_1000DBDD0();
                if (os_log_type_enabled(v146, v7))
                {
                  v147 = swift_slowAlloc();
                  v148 = swift_slowAlloc();
                  v230[0] = v148;
                  *v147 = 136315138;
                  if (qword_1001140B8 != -1)
                  {
                    swift_once();
                  }

                  sub_1000DC4C0();
                  v149 = sub_1000848C8(*(v0 + 280), *(v0 + 288), v230);

                  *(v147 + 4) = v149;
                  _os_log_impl(&_mh_execute_header, v146, v7, "Successfully created timeline entry, id=%s", v147, 0xCu);
                  sub_100006D0C(v148);
                }

                v150 = *(v0 + 984);
                v151 = *(v0 + 600);
                v152 = *(v0 + 480);
                sub_1000323F4(0);
                v198 = v153;
                v6 = v153[12];
                sub_1000D9050();
                sub_100094CEC(v151, v152 + v6, type metadata accessor for WatchlistOverviewContentViewModel);
                v224 = *(v150 + 16);
                if (!v224)
                {
LABEL_95:
                  v219 = 0;
LABEL_117:
                  v184 = *(v0 + 816);
                  v185 = *(v0 + 800);
                  v186 = *(v0 + 760);
                  v225 = *(v0 + 752);
                  v229 = *(v0 + 776);
                  v187 = *(v0 + 736);
                  v188 = *(v0 + 600);
                  v189 = *(v0 + 480);
                  swift_unknownObjectRelease();
                  v190 = v198[16];
                  v191 = v198[20];
                  v192 = v198[24];
                  sub_10009544C(v188, type metadata accessor for WatchlistOverviewContentViewModel);
                  sub_10009544C(v184, sub_100094FAC);
                  sub_10009544C(v185, type metadata accessor for WidgetWatchlist);
                  *(v189 + v190) = v219;
                  *(v189 + v191) = 0;
                  *(v189 + v192) = 0;
                  type metadata accessor for OverviewTimelineEntry(0);
                  swift_storeEnumTagMultiPayload();
                  sub_10009544C(v187, sub_100023660);
                  (*(v186 + 8))(v229, v225);
                  goto LABEL_31;
                }

                v11 = 0;
                v218 = *(v0 + 672);
                v211 = *(v0 + 544);
                v214 = *(v0 + 664);
                v154 = *(v0 + 528);
                v209 = *(*(v0 + 656) + 20);
                v207 = *(v0 + 984) + ((*(v214 + 80) + 32) & ~*(v214 + 80));
                v206 = (v154 + 56);
                v205 = enum case for ExchangeStatus.open(_:);
                v204 = (v154 + 104);
                v228 = (v154 + 48);
                v199 = (v154 + 32);
                v200 = v150;
                v203 = (v154 + 8);
                while (1)
                {
                  if (v11 >= *(v150 + 16))
                  {
                    goto LABEL_124;
                  }

                  v157 = *(v0 + 560);
                  sub_100094CEC(v207 + *(v214 + 72) * v11, *(v0 + 672), type metadata accessor for WidgetStock);
                  sub_100094CEC(v218 + v209, v157, sub_100023704);
                  v158 = sub_1000D9450();
                  v159 = *(v158 - 8);
                  if ((*(v159 + 48))(v157, 1, v158) == 1)
                  {
                    sub_10009544C(*(v0 + 560), sub_100023704);
                    v160 = 1;
                  }

                  else
                  {
                    v161 = *(v0 + 560);
                    sub_1000D93F0();
                    (*(v159 + 8))(v161, v158);
                    v160 = 0;
                  }

                  v162 = *(v0 + 584);
                  v163 = *(v0 + 576);
                  v164 = *(v0 + 552);
                  v165 = *(v0 + 520);
                  v166 = *v206;
                  (*v206)(v162, v160, 1, v165);
                  (*v204)(v163, v205, v165);
                  v166(v163, 0, 1, v165);
                  v167 = *(v211 + 48);
                  sub_100094CEC(v162, v164, sub_100094F44);
                  sub_100094CEC(v163, v164 + v167, sub_100094F44);
                  v6 = *v228;
                  if ((*v228)(v164, 1, v165) == 1)
                  {
                    break;
                  }

                  v168 = *(v0 + 520);
                  sub_100094CEC(*(v0 + 552), *(v0 + 568), sub_100094F44);
                  v169 = (v6)(v164 + v167, 1, v168);
                  v170 = *(v0 + 672);
                  v171 = *(v0 + 584);
                  v7 = *(v0 + 576);
                  v172 = *(v0 + 568);
                  if (v169 == 1)
                  {
                    v173 = *(v0 + 520);
                    v6 = sub_100094F44;
                    sub_10009544C(*(v0 + 576), sub_100094F44);
                    sub_10009544C(v171, sub_100094F44);
                    sub_10009544C(v170, type metadata accessor for WidgetStock);
                    (*v203)(v172, v173);
LABEL_84:
                    sub_10009544C(*(v0 + 552), sub_100059E4C);
                    goto LABEL_85;
                  }

                  v202 = *(v0 + 552);
                  v174 = *(v0 + 536);
                  v175 = *(v0 + 520);
                  (*v199)(v174, v164 + v167, v175);
                  sub_10009533C(&qword_100117188, &type metadata accessor for ExchangeStatus, &protocol conformance descriptor for ExchangeStatus);
                  v201 = sub_1000DB8D0();
                  v176 = *v203;
                  (*v203)(v174, v175);
                  v6 = sub_100094F44;
                  sub_10009544C(v7, sub_100094F44);
                  sub_10009544C(v171, sub_100094F44);
                  sub_10009544C(v170, type metadata accessor for WidgetStock);
                  v177 = v175;
                  v150 = v200;
                  v176(v172, v177);
                  sub_10009544C(v202, sub_100094F44);
                  if (v201)
                  {
                    goto LABEL_116;
                  }

LABEL_85:
                  if (v224 == ++v11)
                  {
                    goto LABEL_95;
                  }
                }

                v7 = *(v0 + 672);
                v155 = *(v0 + 584);
                v156 = *(v0 + 520);
                sub_10009544C(*(v0 + 576), sub_100094F44);
                sub_10009544C(v155, sub_100094F44);
                sub_10009544C(v7, type metadata accessor for WidgetStock);
                if ((v6)(v164 + v167, 1, v156) == 1)
                {
                  sub_10009544C(*(v0 + 552), sub_100094F44);
LABEL_116:
                  v219 = 1;
                  goto LABEL_117;
                }

                goto LABEL_84;
              }

              if (v136 == enum case for WidgetFamily.systemLarge(_:))
              {

                v210 = v132;
                v213 = v131;
                if (v6 == 1)
                {
                  if (*(v0 + 1073))
                  {
                    v183 = 2;
                  }

                  else
                  {
                    v183 = 1;
                  }

                  v223 = v183;
                  if (*(v0 + 1073))
                  {
                    v138 = 1;
                  }

                  else
                  {
                    v138 = 2;
                  }

                  v217 = 6;
                }

                else
                {
                  v138 = 3;
                  v223 = 2;
                  v217 = 3;
                }

                goto LABEL_77;
              }

              if (v136 != enum case for WidgetFamily.accessoryRectangular(_:))
              {
                v193 = *(v0 + 928);
                v194 = *(v0 + 856);
                v195 = *(v0 + 824);
                v230[0] = 0;
                v230[1] = 0xE000000000000000;
                sub_1000DBF50(52);
                v236._countAndFlagsBits = 0xD000000000000030;
                v236._object = 0x80000001000E9390;
                sub_1000DBA00(v236);
                sub_1000DB7B0();
                sub_10009533C(&qword_100115310, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
                v237._countAndFlagsBits = sub_1000DC320();
                sub_1000DBA00(v237);

                v193(v194, v195);
                v238._countAndFlagsBits = 11815;
                v238._object = 0xE200000000000000;
                sub_1000DBA00(v238);
                return sub_1000DC0D0();
              }

              v217 = *(v0 + 920);
              v138 = 3;
            }

            v223 = 1;
            goto LABEL_76;
          }

LABEL_128:
          swift_once();
          goto LABEL_67;
        }

        v116 = _swiftEmptyArrayStorage;
LABEL_61:
        swift_unknownObjectRelease();
        goto LABEL_62;
      }

      swift_unknownObjectRelease();
      v99 = *(v0 + 1032);
      v114 = *(v0 + 1008);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    sub_100024138(v114, *(v0 + 1016), *(v0 + 1024), v99);
    v116 = v115;
    goto LABEL_61;
  }

  v222 = v63 >> 1;
  v68 = (v63 >> 1) - v7;
  if (__OFSUB__(v63 >> 1, v7))
  {
    __break(1u);
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v6 = _swiftEmptyArrayStorage;
  if (v68)
  {
    v230[0] = _swiftEmptyArrayStorage;
    sub_10007BD0C(0, v68 & ~(v68 >> 63), 0);
    if ((v68 & 0x8000000000000000) == 0)
    {
      v69 = *(v0 + 696);
      v216 = *(v0 + 664);
      v6 = v230[0];
      v11 = v69 + 16;
      if (v7 <= v222)
      {
        v70 = v63 >> 1;
      }

      else
      {
        v70 = v7;
      }

      while (v70 != v7)
      {
        v71 = *(v0 + 704);
        v72 = *(v0 + 688);
        v73 = *(v0 + 680);
        sub_100094CEC(v227 + *(v216 + 72) * v7, v73, type metadata accessor for WidgetStock);
        (*v11)(v71, v73, v72);
        sub_10009544C(v73, type metadata accessor for WidgetStock);
        v230[0] = v6;
        v75 = *(v6 + 16);
        v74 = *(v6 + 24);
        if (v75 >= v74 >> 1)
        {
          sub_10007BD0C((v74 > 1), v75 + 1, 1);
          v6 = v230[0];
        }

        v76 = *(v0 + 704);
        v77 = *(v0 + 688);
        *(v6 + 16) = v75 + 1;
        (*(v69 + 32))(v6 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v75, v76, v77);
        if (v222 == ++v7)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    goto LABEL_127;
  }

LABEL_37:
  *(v0 + 1040) = v6;

  v102 = sub_1000DA350();
  v103 = sub_1000DBDD0();

  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v230[0] = swift_slowAlloc();
    *v104 = 136315394;
    v105 = sub_1000DBB40();
    v107 = sub_1000848C8(v105, v106, v230);

    *(v104 + 4) = v107;
    *(v104 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v108 = sub_1000848C8(*(v0 + 392), *(v0 + 400), v230);

    *(v104 + 14) = v108;
    _os_log_impl(&_mh_execute_header, v102, v103, "Fetching headlines for stocks, stocks=%s, id=%s", v104, 0x16u);
    swift_arrayDestroy();
  }

  v109 = *(v0 + 928);
  v110 = *(v0 + 856);
  v111 = *(v0 + 824);
  sub_1000DB7B0();
  v112 = sub_100094318(v110);
  v109(v110, v111);
  sub_100006C7C((v0 + 16), *(v0 + 40));
  v113 = swift_task_alloc();
  *(v0 + 1048) = v113;
  *v113 = v0;
  v113[1] = sub_10008F9CC;

  return sub_100009810(v6, v112);
}

uint64_t sub_10008F5F0()
{
  v21 = v0;
  swift_errorRetain();
  v1 = sub_1000DA350();
  v2 = sub_1000DBDB0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v3 = 136315394;
    swift_getErrorValue();
    v4 = sub_1000DC3B0();
    v6 = sub_1000848C8(v4, v5, &v20);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v7 = sub_1000848C8(*(v0 + 328), *(v0 + 336), &v20);

    *(v3 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to create timeline entry, error=%s, id=%s", v3, 0x16u);
    swift_arrayDestroy();
  }

  v19 = *(v0 + 928);
  v8 = *(v0 + 1073);
  v9 = *(v0 + 856);
  v10 = *(v0 + 824);
  v11 = *(v0 + 480);
  sub_1000DB7B0();
  sub_1000323F4(0);
  v13 = v12[12];
  v14 = v12[16];
  v15 = v12[20];
  v16 = v12[24];
  sub_1000D9050();
  sub_10003F734(v9, v8, (v11 + v13));

  v19(v9, v10);
  *(v11 + v14) = 0;
  *(v11 + v15) = 1;
  *(v11 + v16) = 1;
  type metadata accessor for OverviewTimelineEntry(0);
  swift_storeEnumTagMultiPayload();
  sub_100006D0C((v0 + 16));
  sub_100006D0C((v0 + 56));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10008F9CC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1056) = v1;

  if (v1)
  {
    v5 = sub_100090F58;
  }

  else
  {
    *(v4 + 1064) = a1;
    v5 = sub_10008FB10;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10008FB10()
{
  v143 = v0;
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  *(v0 + 472) = *(v0 + 1064);
  sub_1000236D0(0);
  sub_10009533C(&qword_1001152D0, sub_1000236D0, &protocol conformance descriptor for [A]);
  sub_1000DA240();
  sub_100095384(v3, v2);
  v4 = *(v0 + 928);
  v5 = *(v0 + 848);
  v6 = *(v0 + 832);
  v7 = *(v0 + 824);
  sub_1000DB7B0();
  LODWORD(v2) = (*(v6 + 88))(v5, v7);
  LODWORD(v6) = enum case for WidgetFamily.systemLarge(_:);
  v4(v5, v7);
  LODWORD(v137) = v6;
  if (v2 == v6)
  {
    v8 = *(v0 + 736);
    v9 = *(v0 + 640);
    v10 = *(v0 + 632);
    v1 = v9 + 48;
    v11 = *(v9 + 48);
    if (!v11(v8, 1, v10))
    {
      v133 = v11;
      v12 = *(v0 + 648);
      v13 = *(v0 + 624);
      v14 = *(v0 + 616);
      v128 = *(v9 + 16);
      v128(v12, v8, v10);
      sub_10009533C(&qword_100118D38, sub_100023694, &protocol conformance descriptor for NonEmpty<A>);
      sub_1000DBA40();
      v15 = *(v0 + 360);
      v16 = *(v15 + 16);
      do
      {
        v17 = *(v0 + 368);
        if (v17 == v16)
        {

          goto LABEL_13;
        }

        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_98;
        }

        if (v17 >= *(v15 + 16))
        {
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        v4 = *(v0 + 624);
        v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
        sub_100094CEC(v15 + v18 + *(v14 + 72) * v17, v4, type metadata accessor for HeadlineViewModel);
        *(v0 + 368) = v17 + 1;
        v19 = *(v13 + 104);
        v12 = *(v13 + 112);
        sub_100024A30(v19);
        sub_10009544C(v4, type metadata accessor for HeadlineViewModel);
      }

      while (v19 == 1);
      v20 = *(v0 + 736);
      v21 = *(v0 + 632);
      sub_100010190(v19);

      if (v133(v20, 1, v21))
      {
        v22 = 0;
        v23 = _swiftEmptyArrayStorage;
        v24 = _swiftEmptyArrayStorage + v18;
        v25 = 1;
      }

      else
      {
        v128(*(v0 + 648), *(v0 + 736), *(v0 + 632));
        v23 = sub_1000183CC(3);
      }

      v26 = *(v0 + 736);
      v27 = *(v0 + 720);
      *(v0 + 96) = v23;
      *(v0 + 104) = v24;
      *(v0 + 112) = v22;
      *(v0 + 120) = v25;
      sub_100095308(0);
      sub_10009533C(qword_100118D48, sub_100095308, &protocol conformance descriptor for ArraySlice<A>);
      sub_1000DA230();
      sub_100095384(v27, v26);
    }
  }

LABEL_13:
  v28 = *(v0 + 712);
  v29 = *(v0 + 640);
  v17 = *(v0 + 632);
  sub_100094CEC(*(v0 + 736), v28, sub_100023660);
  v30 = *(v29 + 48);
  LODWORD(v17) = v30(v28, 1, v17);
  sub_10009544C(v28, sub_100023660);
  if (v17 == 1)
  {
    v31 = *(v0 + 920);
    (*(v0 + 992))(*(v0 + 768), *(v0 + 776), *(v0 + 752));
    v35 = sub_100018398(v31);
    if ((v34 & 1) == 0)
    {
LABEL_15:
      sub_100024138(v35, v32, v33, v34);
      v37 = v36;
      goto LABEL_25;
    }

    v1 = v34;
    v41 = v33;
    v42 = v32;
    sub_1000DC380();
    swift_unknownObjectRetain_n();
    v43 = swift_dynamicCastClass();
    if (!v43)
    {
      swift_unknownObjectRelease();
      v43 = _swiftEmptyArrayStorage;
    }

    v44 = v43[2];

    if (!__OFSUB__(v1 >> 1, v41))
    {
      if (v44 == (v1 >> 1) - v41)
      {
        v37 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v37)
        {
LABEL_26:
          *(v0 + 440) = v37;
          goto LABEL_35;
        }

        v37 = _swiftEmptyArrayStorage;
LABEL_25:
        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      goto LABEL_103;
    }

    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    swift_unknownObjectRelease();
    v34 = v1;
    v33 = v41;
    v32 = v42;
    goto LABEL_15;
  }

  v35 = *(v0 + 1032);
  v38 = *(v0 + 1008);
  if ((v35 & 1) == 0)
  {
    swift_unknownObjectRetain();
LABEL_18:
    sub_100024138(v38, *(v0 + 1016), *(v0 + 1024), v35);
    v40 = v39;
LABEL_33:
    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  sub_1000DC380();
  swift_unknownObjectRetain_n();
  v45 = swift_dynamicCastClass();
  if (!v45)
  {
    swift_unknownObjectRelease();
    v35 = *(v0 + 1032);
    v45 = _swiftEmptyArrayStorage;
  }

  v42 = *(v0 + 1024);
  v41 = v45[2];

  if (__OFSUB__(v35 >> 1, v42))
  {
    goto LABEL_102;
  }

  if (v41 != (v35 >> 1) - v42)
  {
    swift_unknownObjectRelease();
    v35 = *(v0 + 1032);
    v38 = *(v0 + 1008);
    goto LABEL_18;
  }

  v40 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v40)
  {
    v40 = _swiftEmptyArrayStorage;
    goto LABEL_33;
  }

LABEL_34:
  *(v0 + 456) = v40;
LABEL_35:
  sub_1000DA1C0();
  v12 = sub_1000DA350();
  LOBYTE(v4) = sub_1000DBDD0();
  if (os_log_type_enabled(v12, v4))
  {
    v46 = *(v0 + 736);
    v47 = *(v0 + 632);
    v13 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    v142[0] = v1;
    *v13 = 134218498;
    swift_beginAccess();
    v48 = v30(v46, 1, v47);
    v49 = 0;
    if (!v48)
    {
      v50 = *(v0 + 648);
      v51 = *(v0 + 640);
      v52 = *(v0 + 632);
      (*(v51 + 16))(v50, *(v0 + 736), v52);
      v49 = sub_1000DA1E0();
      (*(v51 + 8))(v50, v52);
    }

    *(v13 + 4) = v49;
    *(v13 + 12) = 2048;
    swift_beginAccess();
    *(v13 + 14) = sub_1000DA1E0();
    *(v13 + 22) = 2080;
    if (qword_1001140B8 != -1)
    {
LABEL_100:
      swift_once();
    }

    sub_1000DC4C0();
    v53 = sub_1000848C8(*(v0 + 344), *(v0 + 352), v142);

    *(v13 + 24) = v53;
    _os_log_impl(&_mh_execute_header, v12, v4, "Fetched %ld headlines for %ld stocks, id=%s", v13, 0x20u);
    sub_100006D0C(v1);
  }

  if (*(v0 + 1072) == 1)
  {
    v54 = *(v0 + 800);
    v56 = *v54;
    v55 = v54[1];
  }

  else
  {
    v56 = 0;
    v55 = 0;
  }

  v57 = *(v0 + 840);
  v58 = *(v0 + 832);
  v59 = *(v0 + 824);
  sub_1000DB7B0();
  v60 = (*(v58 + 88))(v57, v59);
  if (v60 == enum case for WidgetFamily.systemSmall(_:))
  {
    v61 = *(v0 + 1073);

    v134 = 3;
    if (v17 == 1)
    {
      v62 = v61;
    }

    else
    {
      v62 = 3;
    }

LABEL_47:
    v138 = 1;
    goto LABEL_48;
  }

  if (v60 != enum case for WidgetFamily.systemMedium(_:))
  {
    if (v60 == v137)
    {

      v129 = v56;
      v131 = v55;
      if (v17 == 1)
      {
        if (*(v0 + 1073))
        {
          v101 = 2;
        }

        else
        {
          v101 = 1;
        }

        v138 = v101;
        if (*(v0 + 1073))
        {
          v62 = 1;
        }

        else
        {
          v62 = 2;
        }

        v134 = 6;
      }

      else
      {
        v62 = 3;
        v138 = 2;
        v134 = 3;
      }

      goto LABEL_49;
    }

    if (v60 != enum case for WidgetFamily.accessoryRectangular(_:))
    {
      v113 = *(v0 + 928);
      v114 = *(v0 + 856);
      v115 = *(v0 + 824);
      v142[0] = 0;
      v142[1] = 0xE000000000000000;
      sub_1000DBF50(52);
      v145._object = 0x80000001000E9390;
      v145._countAndFlagsBits = 0xD000000000000030;
      sub_1000DBA00(v145);
      sub_1000DB7B0();
      sub_10009533C(&qword_100115310, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
      v146._countAndFlagsBits = sub_1000DC320();
      sub_1000DBA00(v146);

      v113(v114, v115);
      v147._countAndFlagsBits = 11815;
      v147._object = 0xE200000000000000;
      sub_1000DBA00(v147);
      return sub_1000DC0D0();
    }

    v134 = *(v0 + 920);
    v62 = 3;
    goto LABEL_47;
  }

  v96 = *(v0 + 1073);
  v97 = *(v0 + 1072);

  v98 = v96 == 0;
  v99 = 1;
  if (v96)
  {
    v62 = 1;
  }

  else
  {
    v62 = 2;
  }

  if (!v98)
  {
    v99 = 2;
  }

  v100 = 2;
  if (((v17 == 1) & v97) == 0)
  {
    v100 = 3;
  }

  v134 = v100;
  if (v17 == 1)
  {
    v138 = v99;
    v129 = v56;
    v131 = v55;
    goto LABEL_49;
  }

  v138 = 2;
  v62 = 3;
LABEL_48:

  v129 = 0;
  v131 = 0;
LABEL_49:
  v126 = *(v0 + 1073);
  v63 = *(v0 + 800);
  v64 = *(v0 + 784);
  v13 = *(v0 + 752);
  v4 = *(v0 + 736);
  v65 = *(v0 + 600);
  v66 = *(v0 + 592);
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v1 + 16) = v62;
  type metadata accessor for TickerCellViewModel(0);
  sub_1000DA1D0();

  v67 = *(v64 + 24);
  v68 = v66[7];
  v69 = sub_1000D9690();
  (*(*(v69 - 8) + 16))(&v65[v68], v63 + v67, v69);
  swift_beginAccess();
  sub_100094CEC(v4, &v65[v66[11]], sub_100023660);
  *v65 = v129;
  *(v65 + 1) = v131;
  v65[v66[6]] = v62;
  *&v65[v66[8]] = v134;
  *&v65[v66[9]] = v138;
  v65[v66[10]] = v126;
  v70 = sub_1000DA350();
  v12 = sub_1000DBDD0();
  if (os_log_type_enabled(v70, v12))
  {
    v71 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v142[0] = v4;
    *v71 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v13 = sub_1000848C8(*(v0 + 280), *(v0 + 288), v142);

    *(v71 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v70, v12, "Successfully created timeline entry, id=%s", v71, 0xCu);
    sub_100006D0C(v4);
  }

  v72 = *(v0 + 984);
  v73 = *(v0 + 600);
  v74 = *(v0 + 480);
  sub_1000323F4(0);
  v116 = v75;
  v17 = v75[12];
  sub_1000D9050();
  sub_100094CEC(v73, v17 + v74, type metadata accessor for WatchlistOverviewContentViewModel);
  v137 = *(v72 + 16);
  if (v137)
  {
    v76 = 0;
    v135 = *(v0 + 672);
    v130 = *(v0 + 544);
    v132 = *(v0 + 664);
    v77 = *(v0 + 528);
    v127 = *(*(v0 + 656) + 20);
    v125 = *(v0 + 984) + ((*(v132 + 80) + 32) & ~*(v132 + 80));
    v124 = (v77 + 56);
    v123 = enum case for ExchangeStatus.open(_:);
    v122 = (v77 + 104);
    v140 = (v77 + 48);
    v117 = (v77 + 32);
    v118 = v72;
    v121 = (v77 + 8);
    while (1)
    {
      if (v76 >= *(v72 + 16))
      {
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v78 = *(v0 + 560);
      sub_100094CEC(v125 + *(v132 + 72) * v76, *(v0 + 672), type metadata accessor for WidgetStock);
      sub_100094CEC(v135 + v127, v78, sub_100023704);
      v79 = sub_1000D9450();
      v80 = *(v79 - 8);
      if ((*(v80 + 48))(v78, 1, v79) == 1)
      {
        sub_10009544C(*(v0 + 560), sub_100023704);
        v81 = 1;
      }

      else
      {
        v82 = *(v0 + 560);
        sub_1000D93F0();
        (*(v80 + 8))(v82, v79);
        v81 = 0;
      }

      v83 = *(v0 + 584);
      v84 = *(v0 + 576);
      v85 = *(v0 + 552);
      v86 = *(v0 + 520);
      v87 = *v124;
      (*v124)(v83, v81, 1, v86);
      (*v122)(v84, v123, v86);
      v87(v84, 0, 1, v86);
      v88 = *(v130 + 48);
      sub_100094CEC(v83, v85, sub_100094F44);
      sub_100094CEC(v84, v85 + v88, sub_100094F44);
      v17 = *v140;
      if ((*v140)(v85, 1, v86) == 1)
      {
        break;
      }

      v89 = *(v0 + 520);
      sub_100094CEC(*(v0 + 552), *(v0 + 568), sub_100094F44);
      v90 = (v17)(v85 + v88, 1, v89);
      v13 = *(v0 + 672);
      v1 = *(v0 + 584);
      v12 = *(v0 + 576);
      v4 = *(v0 + 568);
      if (v90 == 1)
      {
        v91 = *(v0 + 520);
        v17 = sub_100094F44;
        sub_10009544C(*(v0 + 576), sub_100094F44);
        sub_10009544C(v1, sub_100094F44);
        sub_10009544C(v13, type metadata accessor for WidgetStock);
        (*v121)(v4, v91);
LABEL_56:
        sub_10009544C(*(v0 + 552), sub_100059E4C);
        goto LABEL_57;
      }

      v120 = *(v0 + 552);
      v92 = *(v0 + 536);
      v93 = *(v0 + 520);
      (*v117)(v92, v85 + v88, v93);
      sub_10009533C(&qword_100117188, &type metadata accessor for ExchangeStatus, &protocol conformance descriptor for ExchangeStatus);
      v119 = sub_1000DB8D0();
      v94 = *v121;
      (*v121)(v92, v93);
      v17 = sub_100094F44;
      sub_10009544C(v12, sub_100094F44);
      sub_10009544C(v1, sub_100094F44);
      sub_10009544C(v13, type metadata accessor for WidgetStock);
      v95 = v93;
      v72 = v118;
      v94(v4, v95);
      sub_10009544C(v120, sub_100094F44);
      if (v119)
      {
        goto LABEL_88;
      }

LABEL_57:
      if (v137 == ++v76)
      {
        goto LABEL_67;
      }
    }

    v12 = *(v0 + 672);
    v4 = *(v0 + 584);
    v13 = *(v0 + 520);
    v1 = sub_100094F44;
    sub_10009544C(*(v0 + 576), sub_100094F44);
    sub_10009544C(v4, sub_100094F44);
    sub_10009544C(v12, type metadata accessor for WidgetStock);
    if ((v17)(v85 + v88, 1, v13) == 1)
    {
      sub_10009544C(*(v0 + 552), sub_100094F44);
LABEL_88:
      v136 = 1;
      goto LABEL_89;
    }

    goto LABEL_56;
  }

LABEL_67:
  v136 = 0;
LABEL_89:
  v102 = *(v0 + 816);
  v103 = *(v0 + 800);
  v104 = *(v0 + 760);
  v139 = *(v0 + 752);
  v141 = *(v0 + 776);
  v105 = *(v0 + 736);
  v106 = *(v0 + 600);
  v107 = *(v0 + 480);
  swift_unknownObjectRelease();
  v108 = v116[16];
  v109 = v116[20];
  v110 = v116[24];
  sub_10009544C(v106, type metadata accessor for WatchlistOverviewContentViewModel);
  sub_10009544C(v102, sub_100094FAC);
  sub_10009544C(v103, type metadata accessor for WidgetWatchlist);
  *(v107 + v108) = v136;
  *(v107 + v109) = 0;
  *(v107 + v110) = 0;
  type metadata accessor for OverviewTimelineEntry(0);
  swift_storeEnumTagMultiPayload();
  sub_10009544C(v105, sub_100023660);
  (*(v104 + 8))(v141, v139);
  sub_100006D0C((v0 + 16));
  sub_100006D0C((v0 + 56));

  v111 = *(v0 + 8);

  return v111();
}

uint64_t sub_100090F58()
{
  v151 = v0;
  swift_errorRetain();
  v1 = sub_1000DA350();
  LOBYTE(v2) = sub_1000DBDD0();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v150[0] = v5;
    *v3 = 138412546;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v6;
    *v4 = v6;
    *(v3 + 12) = 2080;
    if (qword_1001140B8 != -1)
    {
LABEL_105:
      swift_once();
    }

    sub_1000DC4C0();
    v7 = sub_1000848C8(*(v0 + 376), *(v0 + 384), v150);

    *(v3 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetching headlines failed with error=%@, id=%s", v3, 0x16u);
    sub_10009544C(v4, sub_1000249FC);

    sub_100006D0C(v5);
  }

  else
  {
  }

  v8 = *(v0 + 928);
  v9 = *(v0 + 848);
  v10 = *(v0 + 832);
  v11 = *(v0 + 824);
  sub_1000DB7B0();
  v12 = (*(v10 + 88))(v9, v11);
  v4 = enum case for WidgetFamily.systemLarge(_:);
  v8(v9, v11);
  v146 = v4;
  if (v12 == v4)
  {
    v13 = *(v0 + 736);
    v2 = *(v0 + 640);
    v14 = *(v0 + 632);
    v15 = *(v2 + 48);
    if (!v15(v13, 1, v14))
    {
      v142 = v15;
      v3 = *(v0 + 648);
      v5 = *(v0 + 624);
      v16 = *(v0 + 616);
      v17 = *(v2 + 16);
      LOBYTE(v2) = v2 + 16;
      v136 = v17;
      v17(v3, v13, v14);
      sub_10009533C(&qword_100118D38, sub_100023694, &protocol conformance descriptor for NonEmpty<A>);
      sub_1000DBA40();
      v18 = *(v0 + 360);
      v4 = *(v18 + 16);
      do
      {
        v1 = *(v0 + 368);
        if (v1 == v4)
        {

          goto LABEL_17;
        }

        if ((v1 & 0x8000000000000000) != 0)
        {
          goto LABEL_103;
        }

        if (v1 >= *(v18 + 16))
        {
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        v2 = *(v0 + 624);
        v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
        sub_100094CEC(v18 + v19 + *(v16 + 72) * v1, v2, type metadata accessor for HeadlineViewModel);
        *(v0 + 368) = v1 + 1;
        v20 = *(v5 + 104);
        v3 = *(v5 + 112);
        sub_100024A30(v20);
        sub_10009544C(v2, type metadata accessor for HeadlineViewModel);
      }

      while (v20 == 1);
      v21 = *(v0 + 736);
      v22 = *(v0 + 632);
      sub_100010190(v20);

      if (v142(v21, 1, v22))
      {
        v23 = 0;
        v24 = _swiftEmptyArrayStorage;
        v25 = _swiftEmptyArrayStorage + v19;
        v26 = 1;
      }

      else
      {
        v136(*(v0 + 648), *(v0 + 736), *(v0 + 632));
        v24 = sub_1000183CC(3);
      }

      v27 = *(v0 + 736);
      v28 = *(v0 + 720);
      *(v0 + 96) = v24;
      *(v0 + 104) = v25;
      *(v0 + 112) = v23;
      *(v0 + 120) = v26;
      sub_100095308(0);
      sub_10009533C(qword_100118D48, sub_100095308, &protocol conformance descriptor for ArraySlice<A>);
      sub_1000DA230();
      sub_100095384(v28, v27);
    }
  }

LABEL_17:
  v29 = *(v0 + 712);
  v30 = *(v0 + 640);
  v31 = *(v0 + 632);
  sub_100094CEC(*(v0 + 736), v29, sub_100023660);
  v32 = *(v30 + 48);
  v33 = v32(v29, 1, v31);
  sub_10009544C(v29, sub_100023660);
  if (v33 == 1)
  {
    v34 = *(v0 + 920);
    (*(v0 + 992))(*(v0 + 768), *(v0 + 776), *(v0 + 752));
    v38 = sub_100018398(v34);
    if ((v37 & 1) == 0)
    {
LABEL_19:
      sub_100024138(v38, v35, v36, v37);
      v40 = v39;
      goto LABEL_29;
    }

    v4 = v37;
    v44 = v36;
    v45 = v35;
    sub_1000DC380();
    swift_unknownObjectRetain_n();
    v46 = swift_dynamicCastClass();
    if (!v46)
    {
      swift_unknownObjectRelease();
      v46 = _swiftEmptyArrayStorage;
    }

    v47 = v46[2];

    if (!__OFSUB__(v4 >> 1, v44))
    {
      if (v47 == (v4 >> 1) - v44)
      {
        v40 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v40)
        {
LABEL_30:
          *(v0 + 440) = v40;
          goto LABEL_39;
        }

        v40 = _swiftEmptyArrayStorage;
LABEL_29:
        swift_unknownObjectRelease();
        goto LABEL_30;
      }

      goto LABEL_108;
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    swift_unknownObjectRelease();
    v37 = v4;
    v36 = v44;
    v35 = v45;
    goto LABEL_19;
  }

  v38 = *(v0 + 1032);
  v41 = *(v0 + 1008);
  if ((v38 & 1) == 0)
  {
    swift_unknownObjectRetain();
LABEL_22:
    sub_100024138(v41, *(v0 + 1016), *(v0 + 1024), v38);
    v43 = v42;
LABEL_37:
    swift_unknownObjectRelease();
    goto LABEL_38;
  }

  sub_1000DC380();
  swift_unknownObjectRetain_n();
  v48 = swift_dynamicCastClass();
  if (!v48)
  {
    swift_unknownObjectRelease();
    v38 = *(v0 + 1032);
    v48 = _swiftEmptyArrayStorage;
  }

  v45 = *(v0 + 1024);
  v44 = v48[2];

  if (__OFSUB__(v38 >> 1, v45))
  {
    goto LABEL_107;
  }

  if (v44 != (v38 >> 1) - v45)
  {
    swift_unknownObjectRelease();
    v38 = *(v0 + 1032);
    v41 = *(v0 + 1008);
    goto LABEL_22;
  }

  v43 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v43)
  {
    v43 = _swiftEmptyArrayStorage;
    goto LABEL_37;
  }

LABEL_38:
  *(v0 + 456) = v43;
LABEL_39:
  sub_1000DA1C0();
  v49 = sub_1000DA350();
  v50 = sub_1000DBDD0();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = *(v0 + 736);
    v52 = *(v0 + 632);
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v150[0] = v54;
    *v53 = 134218498;
    swift_beginAccess();
    v55 = v32(v51, 1, v52);
    v56 = 0;
    if (!v55)
    {
      v57 = *(v0 + 648);
      v58 = *(v0 + 640);
      v59 = *(v0 + 632);
      (*(v58 + 16))(v57, *(v0 + 736), v59);
      v56 = sub_1000DA1E0();
      (*(v58 + 8))(v57, v59);
    }

    *(v53 + 4) = v56;
    *(v53 + 12) = 2048;
    swift_beginAccess();
    *(v53 + 14) = sub_1000DA1E0();
    *(v53 + 22) = 2080;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v60 = sub_1000848C8(*(v0 + 344), *(v0 + 352), v150);

    *(v53 + 24) = v60;
    _os_log_impl(&_mh_execute_header, v49, v50, "Fetched %ld headlines for %ld stocks, id=%s", v53, 0x20u);
    sub_100006D0C(v54);
  }

  if (*(v0 + 1072) == 1)
  {
    v61 = *(v0 + 800);
    v63 = *v61;
    v62 = v61[1];
  }

  else
  {
    v63 = 0;
    v62 = 0;
  }

  v64 = *(v0 + 840);
  v65 = *(v0 + 832);
  v66 = *(v0 + 824);
  sub_1000DB7B0();
  v67 = (*(v65 + 88))(v64, v66);
  if (v67 == enum case for WidgetFamily.systemSmall(_:))
  {
    v68 = *(v0 + 1073);

    v143 = 3;
    if (v33 == 1)
    {
      v69 = v68;
    }

    else
    {
      v69 = 3;
    }

LABEL_52:
    v147 = 1;
    goto LABEL_53;
  }

  if (v67 != enum case for WidgetFamily.systemMedium(_:))
  {
    if (v67 == v146)
    {

      v137 = v63;
      v139 = v62;
      if (v33 == 1)
      {
        if (*(v0 + 1073))
        {
          v107 = 2;
        }

        else
        {
          v107 = 1;
        }

        if (*(v0 + 1073))
        {
          v69 = 1;
        }

        else
        {
          v69 = 2;
        }

        v143 = 6;
        v147 = v107;
      }

      else
      {
        v69 = 3;
        v147 = 2;
        v143 = 3;
      }

      goto LABEL_54;
    }

    if (v67 != enum case for WidgetFamily.accessoryRectangular(_:))
    {
      v119 = *(v0 + 928);
      v120 = *(v0 + 856);
      v121 = *(v0 + 824);
      v150[0] = 0;
      v150[1] = 0xE000000000000000;
      sub_1000DBF50(52);
      v153._object = 0x80000001000E9390;
      v153._countAndFlagsBits = 0xD000000000000030;
      sub_1000DBA00(v153);
      sub_1000DB7B0();
      sub_10009533C(&qword_100115310, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
      v154._countAndFlagsBits = sub_1000DC320();
      sub_1000DBA00(v154);

      v119(v120, v121);
      v155._countAndFlagsBits = 11815;
      v155._object = 0xE200000000000000;
      sub_1000DBA00(v155);
      return sub_1000DC0D0();
    }

    v143 = *(v0 + 920);
    v69 = 3;
    goto LABEL_52;
  }

  v102 = *(v0 + 1073);
  v103 = *(v0 + 1072);

  v104 = 1;
  if (v102)
  {
    v105 = 1;
  }

  else
  {
    v105 = 2;
  }

  if (v102)
  {
    v104 = 2;
  }

  v106 = 2;
  if (((v33 == 1) & v103) == 0)
  {
    v106 = 3;
  }

  v143 = v106;
  if (v33 == 1)
  {
    v147 = v104;
    v137 = v63;
    v139 = v62;
    v69 = v105;
    goto LABEL_54;
  }

  v147 = 2;
  v69 = 3;
LABEL_53:

  v137 = 0;
  v139 = 0;
LABEL_54:
  v134 = *(v0 + 1073);
  v70 = *(v0 + 800);
  v71 = *(v0 + 784);
  v5 = *(v0 + 736);
  v72 = *(v0 + 600);
  v2 = *(v0 + 592);
  v131 = v69;
  swift_beginAccess();
  v4 = swift_task_alloc();
  *(v4 + 16) = v69;
  type metadata accessor for TickerCellViewModel(0);
  sub_1000DA1D0();

  v73 = *(v71 + 24);
  v74 = *(v2 + 28);
  v75 = sub_1000D9690();
  (*(*(v75 - 8) + 16))(&v72[v74], v70 + v73, v75);
  swift_beginAccess();
  sub_100094CEC(v5, &v72[*(v2 + 44)], sub_100023660);
  *v72 = v137;
  *(v72 + 1) = v139;
  v72[*(v2 + 24)] = v131;
  *&v72[*(v2 + 32)] = v143;
  *&v72[*(v2 + 36)] = v147;
  v72[*(v2 + 40)] = v134;
  v76 = sub_1000DA350();
  LOBYTE(v2) = sub_1000DBDD0();
  if (os_log_type_enabled(v76, v2))
  {
    v77 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v150[0] = v5;
    *v77 = 136315138;
    if (qword_1001140B8 != -1)
    {
      swift_once();
    }

    sub_1000DC4C0();
    v4 = sub_1000848C8(*(v0 + 280), *(v0 + 288), v150);

    *(v77 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v76, v2, "Successfully created timeline entry, id=%s", v77, 0xCu);
    sub_100006D0C(v5);
  }

  v78 = *(v0 + 984);
  v79 = *(v0 + 600);
  v80 = *(v0 + 480);
  sub_1000323F4(0);
  v122 = v81;
  v1 = v81[12];
  sub_1000D9050();
  sub_100094CEC(v79, v80 + v1, type metadata accessor for WatchlistOverviewContentViewModel);
  v144 = *(v78 + 16);
  if (v144)
  {
    v3 = 0;
    v140 = *(v0 + 672);
    v135 = *(v0 + 544);
    v138 = *(v0 + 664);
    v82 = *(v0 + 528);
    v133 = *(*(v0 + 656) + 20);
    v132 = *(v0 + 984) + ((*(v138 + 80) + 32) & ~*(v138 + 80));
    v130 = (v82 + 56);
    v129 = enum case for ExchangeStatus.open(_:);
    v128 = (v82 + 104);
    v148 = (v82 + 48);
    v123 = (v82 + 32);
    v124 = v78;
    v127 = (v82 + 8);
    while (1)
    {
      if (v3 >= *(v78 + 16))
      {
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v83 = *(v0 + 560);
      sub_100094CEC(v132 + *(v138 + 72) * v3, *(v0 + 672), type metadata accessor for WidgetStock);
      sub_100094CEC(v140 + v133, v83, sub_100023704);
      v84 = sub_1000D9450();
      v85 = *(v84 - 8);
      if ((*(v85 + 48))(v83, 1, v84) == 1)
      {
        sub_10009544C(*(v0 + 560), sub_100023704);
        v86 = 1;
      }

      else
      {
        v87 = *(v0 + 560);
        sub_1000D93F0();
        (*(v85 + 8))(v87, v84);
        v86 = 0;
      }

      v88 = *(v0 + 584);
      v89 = *(v0 + 576);
      v90 = *(v0 + 552);
      v91 = *(v0 + 520);
      v92 = *v130;
      (*v130)(v88, v86, 1, v91);
      (*v128)(v89, v129, v91);
      v92(v89, 0, 1, v91);
      v93 = *(v135 + 48);
      sub_100094CEC(v88, v90, sub_100094F44);
      sub_100094CEC(v89, v90 + v93, sub_100094F44);
      v1 = *v148;
      if ((*v148)(v90, 1, v91) == 1)
      {
        break;
      }

      v94 = *(v0 + 520);
      sub_100094CEC(*(v0 + 552), *(v0 + 568), sub_100094F44);
      v95 = (v1)(v90 + v93, 1, v94);
      v4 = *(v0 + 672);
      v96 = *(v0 + 584);
      v2 = *(v0 + 576);
      v5 = *(v0 + 568);
      if (v95 == 1)
      {
        v97 = *(v0 + 520);
        v1 = sub_100094F44;
        sub_10009544C(*(v0 + 576), sub_100094F44);
        sub_10009544C(v96, sub_100094F44);
        sub_10009544C(v4, type metadata accessor for WidgetStock);
        (*v127)(v5, v97);
LABEL_61:
        sub_10009544C(*(v0 + 552), sub_100059E4C);
        goto LABEL_62;
      }

      v126 = *(v0 + 552);
      v98 = *(v0 + 536);
      v99 = *(v0 + 520);
      (*v123)(v98, v90 + v93, v99);
      sub_10009533C(&qword_100117188, &type metadata accessor for ExchangeStatus, &protocol conformance descriptor for ExchangeStatus);
      v125 = sub_1000DB8D0();
      v100 = *v127;
      (*v127)(v98, v99);
      v1 = sub_100094F44;
      sub_10009544C(v2, sub_100094F44);
      sub_10009544C(v96, sub_100094F44);
      sub_10009544C(v4, type metadata accessor for WidgetStock);
      v101 = v99;
      v78 = v124;
      v100(v5, v101);
      sub_10009544C(v126, sub_100094F44);
      if (v125)
      {
        goto LABEL_93;
      }

LABEL_62:
      if (v144 == ++v3)
      {
        goto LABEL_72;
      }
    }

    v2 = *(v0 + 672);
    v5 = *(v0 + 584);
    v4 = *(v0 + 520);
    sub_10009544C(*(v0 + 576), sub_100094F44);
    sub_10009544C(v5, sub_100094F44);
    sub_10009544C(v2, type metadata accessor for WidgetStock);
    if ((v1)(v90 + v93, 1, v4) == 1)
    {
      sub_10009544C(*(v0 + 552), sub_100094F44);
LABEL_93:
      v141 = 1;
      goto LABEL_94;
    }

    goto LABEL_61;
  }

LABEL_72:
  v141 = 0;
LABEL_94:
  v108 = *(v0 + 816);
  v109 = *(v0 + 800);
  v110 = *(v0 + 760);
  v145 = *(v0 + 752);
  v149 = *(v0 + 776);
  v111 = *(v0 + 736);
  v112 = *(v0 + 600);
  v113 = *(v0 + 480);
  swift_unknownObjectRelease();
  v114 = v122[16];
  v115 = v122[20];
  v116 = v122[24];
  sub_10009544C(v112, type metadata accessor for WatchlistOverviewContentViewModel);
  sub_10009544C(v108, sub_100094FAC);
  sub_10009544C(v109, type metadata accessor for WidgetWatchlist);
  *(v113 + v114) = v141;
  *(v113 + v115) = 0;
  *(v113 + v116) = 0;
  type metadata accessor for OverviewTimelineEntry(0);
  swift_storeEnumTagMultiPayload();
  sub_10009544C(v111, sub_100023660);
  (*(v110 + 8))(v149, v145);
  sub_100006D0C((v0 + 16));
  sub_100006D0C((v0 + 56));

  v117 = *(v0 + 8);

  return v117();
}

uint64_t sub_1000924B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  type metadata accessor for OverviewTimelineEntry(0);
  v11 = swift_task_alloc();
  v8[4] = v11;
  v12 = swift_task_alloc();
  v8[5] = v12;
  v14 = type metadata accessor for OverviewTimelineProvider(0, v17, v18, v13);
  *v12 = v8;
  v12[1] = sub_1000925C8;

  return sub_10008B440(v11, a5, a6, v14);
}

uint64_t sub_1000925C8()
{

  return _swift_task_switch(sub_1000926C4, 0, 0);
}

uint64_t sub_1000926C4()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))(v1);
  sub_10009544C(v1, type metadata accessor for OverviewTimelineEntry);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100092754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_1000D95E0();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = type metadata accessor for WatchlistOverviewContentViewModel(0);
  v5[18] = swift_task_alloc();
  v7 = sub_1000D9450();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  sub_100023660(0);
  v5[22] = swift_task_alloc();
  v8 = sub_1000D9090();
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v9 = sub_1000DB760();
  v5[28] = v9;
  v5[29] = *(v9 - 8);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  sub_100023704(0);
  v5[32] = *(v10 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  sub_100094BE8(0);
  v5[35] = swift_task_alloc();
  sub_100094C1C(0);
  v5[36] = v11;
  v5[37] = *(v11 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v12 = type metadata accessor for OverviewTimelineEntry(0);
  v5[40] = v12;
  v5[41] = *(v12 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();

  return _swift_task_switch(sub_100092B1C, 0, 0);
}

uint64_t sub_100092B1C(uint64_t a1)
{
  v2 = sub_1000DA350();
  v3 = sub_1000DBDD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "OverviewTimelineProvider::timeline(for:in:)", v4, 2u);
  }

  v5 = swift_task_alloc();
  v1[45] = v5;
  *v5 = v1;
  v5[1] = sub_100092C30;
  v6 = v1[44];
  v7 = v1[12];
  v8 = v1[10];
  v9 = v1[11];

  return sub_10008B440(v6, v8, v9, v7);
}

uint64_t sub_100092C30()
{

  return _swift_task_switch(sub_100092D2C, 0, 0);
}

uint64_t sub_100092D2C()
{
  *(v0 + 368) = sub_100002A50(0, &unk_1001168C0, &protocol descriptor for ReloadPolicyProviderType);
  sub_1000DBC20();
  *(v0 + 376) = sub_1000DBC10();
  v2 = sub_1000DBBE0();

  return _swift_task_switch(sub_100092DDC, v2, v1);
}

uint64_t sub_100092DDC()
{
  v1 = *(v0 + 368);

  sub_100093994(v1, v0 + 16);

  return _swift_task_switch(sub_100092E64, 0, 0);
}

uint64_t sub_100092E64()
{
  sub_100094CEC(v0[44], v0[43], type metadata accessor for OverviewTimelineEntry);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[43];
  v3 = v0[23];
  v4 = v0[24];
  if (EnumCaseMultiPayload == 1)
  {
    sub_1000323F4(0);
    v6 = *(v2 + *(v5 + 96));
    sub_10009544C(v2 + *(v5 + 48), type metadata accessor for WatchlistOverviewContentViewModel);
    v7 = *(v4 + 8);
    v7(v2, v3);
    if (v6)
    {
      v8 = v0[44];
      v9 = v0[41];
      v11 = v0[25];
      v10 = v0[26];
      v70 = v0[23];
      v12 = v0[16];
      v69 = v0[15];
      v72 = v0[14];
      sub_1000953E8(0, &qword_100118D00, type metadata accessor for OverviewTimelineEntry, &type metadata accessor for _ContiguousArrayStorage);
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1000DDD30;
      sub_100094CEC(v8, v14 + v13, type metadata accessor for OverviewTimelineEntry);
      v15 = sub_100006C7C(v0 + 2, v0[5]);
      sub_1000D9050();
      sub_100006C7C((*v15 + 16), *(*v15 + 40));
      sub_1000D98B0();
      v16 = sub_1000D9540();
      sub_1000D95C0();
      sub_1000D9030();
      static TimelineReloadPolicy.after(_:jitteredUpTo:)(v16);
      v7(v11, v70);
      (*(v69 + 8))(v12, v72);
      v7(v10, v70);
      sub_10009533C(&qword_100118CE8, type metadata accessor for OverviewTimelineEntry, &unk_1000E1848);
LABEL_7:
      sub_1000DB810();
LABEL_28:
      sub_10009544C(v0[44], type metadata accessor for OverviewTimelineEntry);
      sub_100006D0C(v0 + 2);

      v65 = v0[1];

      return v65();
    }
  }

  else
  {
    sub_1000328C0(0);

    v7 = *(v4 + 8);
    v7(v2, v3);
  }

  v17 = v0[36];
  v18 = v0[37];
  v19 = v0[35];
  sub_1000622C0(v19);
  if ((*(v18 + 48))(v19, 1, v17) == 1)
  {
    v20 = v0[44];
    v21 = v0[41];
    sub_10009544C(v0[35], sub_100094BE8);
    sub_1000953E8(0, &qword_100118D00, type metadata accessor for OverviewTimelineEntry, &type metadata accessor for _ContiguousArrayStorage);
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1000DDD30;
    sub_100094CEC(v20, v23 + v22, type metadata accessor for OverviewTimelineEntry);
    sub_1000DB750();
    sub_10009533C(&qword_100118CE8, type metadata accessor for OverviewTimelineEntry, &unk_1000E1848);
    goto LABEL_7;
  }

  v24 = v0[38];
  v25 = v0[39];
  v26 = v0[36];
  v27 = v0[37];
  (*(v27 + 32))(v25, v0[35], v26);
  (*(v27 + 16))(v24, v25, v26);
  sub_10009533C(&qword_100118D08, sub_100094C1C, &protocol conformance descriptor for NonEmpty<A>);
  result = sub_1000DBA40();
  v29 = v0[7];
  v30 = v0[8];
  v77 = *(v29 + 16);
  v71 = v7;
  if (v30 == v77)
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_10:
    v32 = v0[44];
    v33 = v0[42];

    sub_100006C7C(v0 + 2, v0[5]);
    sub_1000D9050();
    sub_100094CEC(v32, v33, type metadata accessor for OverviewTimelineEntry);
    v34 = swift_getEnumCaseMultiPayload();
    v35 = v0[42];
    v36 = v0[22];
    if (v34 == 1)
    {
      v38 = v0[17];
      v37 = v0[18];
      sub_1000323F4(0);
      sub_100094FE0(v35 + *(v39 + 48), v37, type metadata accessor for WatchlistOverviewContentViewModel);
      sub_100094CEC(v37 + *(v38 + 44), v36, sub_100023660);
      sub_10009544C(v37, type metadata accessor for WatchlistOverviewContentViewModel);
    }

    else
    {
      sub_1000328C0(0);

      sub_100023694(0);
      (*(*(v50 - 8) + 56))(v36, 1, 1, v50);
    }

    v51 = v0[22];
    v7(v0[42], v0[23]);
    sub_100023694(0);
    v53 = v52;
    v54 = *(v52 - 8);
    v55 = (*(v54 + 48))(v51, 1, v52);
    v56 = v0[22];
    if (v55 == 1)
    {
      sub_10009544C(v0[22], sub_100023660);
      v57 = 0;
    }

    else
    {
      v57 = sub_1000DA1E0();
      (*(v54 + 8))(v56, v53);
    }

    v58 = v0[41];
    v78 = v0[39];
    v74 = v0[37];
    v76 = v0[36];
    v59 = v0[31];
    v66 = v0[30];
    v60 = v0[29];
    v67 = v0[28];
    v68 = v0[44];
    v61 = v0[27];
    v62 = v0[23];
    sub_1000C884C(v61, v31, v57, v59);

    v71(v61, v62);
    sub_1000953E8(0, &qword_100118D00, type metadata accessor for OverviewTimelineEntry, &type metadata accessor for _ContiguousArrayStorage);
    v63 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1000DDD30;
    sub_100094CEC(v68, v64 + v63, type metadata accessor for OverviewTimelineEntry);
    (*(v60 + 16))(v66, v59, v67);
    sub_10009533C(&qword_100118CE8, type metadata accessor for OverviewTimelineEntry, &unk_1000E1848);
    sub_1000DB810();
    (*(v60 + 8))(v59, v67);
    (*(v74 + 8))(v78, v76);
    goto LABEL_28;
  }

  if ((v30 & 0x8000000000000000) == 0)
  {
    v40 = v0[20];
    v75 = v0[32];
    v73 = v29 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v41 = (v40 + 32);
    v31 = _swiftEmptyArrayStorage;
    while (v30 < *(v29 + 16))
    {
      v43 = v0[33];
      v42 = v0[34];
      v44 = v0[19];
      sub_100094CEC(v73 + *(v75 + 72) * v30, v42, sub_100023704);
      sub_100094FE0(v42, v43, sub_100023704);
      if ((*(v40 + 48))(v43, 1, v44) == 1)
      {
        result = sub_10009544C(v0[33], sub_100023704);
      }

      else
      {
        v45 = *v41;
        (*v41)(v0[21], v0[33], v0[19]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_10007B860(0, *(v31 + 2) + 1, 1, v31);
        }

        v47 = *(v31 + 2);
        v46 = *(v31 + 3);
        if (v47 >= v46 >> 1)
        {
          v31 = sub_10007B860((v46 > 1), v47 + 1, 1, v31);
        }

        v48 = v0[21];
        v49 = v0[19];
        *(v31 + 2) = v47 + 1;
        result = v45(&v31[((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v47], v48, v49);
      }

      if (v77 == ++v30)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100093994@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = sub_1000DBE80();
  __chkstk_darwin(v5 - 8);
  v7 = &v11[-1] - v6;
  if (qword_1001141A8 != -1)
  {
    swift_once();
  }

  sub_100006E20(qword_100128FD8, v11);
  sub_100006C7C(v11, v11[3]);
  sub_1000D9F00();
  v8 = *(a2 - 8);
  result = (*(v8 + 48))(v7, 1, a2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(a3, v7, a2);
    return sub_100006D0C(v11);
  }

  return result;
}

uint64_t sub_100093B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8)
{
  v51 = a4;
  v52 = a8;
  v40 = a6;
  v50 = a3;
  v46 = a1;
  v47 = a2;
  v55 = sub_1000DB7D0();
  v48 = *(v55 - 8);
  __chkstk_darwin(v55);
  v49 = v10;
  v54 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(a5 + 16);
  v43 = *(v45 - 8);
  __chkstk_darwin(v11);
  v44 = v12;
  v53 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a5;
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  sub_1000953E8(0, &qword_1001152A8, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  __chkstk_darwin(v17 - 8);
  v19 = &v40 - v18;
  v20 = sub_1000DA350();
  v21 = sub_1000DBDD0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, v40, v22, 2u);
  }

  v23 = sub_1000DBC40();
  v24 = *(*(v23 - 8) + 56);
  v42 = v19;
  v24(v19, 1, 1, v23);
  v25 = v14;
  v26 = *(v14 + 16);
  v41 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v13;
  v26(v41, v8, v13);
  v28 = v43;
  v29 = v45;
  (*(v43 + 16))(v53, v46, v45);
  v30 = v48;
  (*(v48 + 16))(v54, v47, v55);
  v31 = (*(v25 + 80) + 48) & ~*(v25 + 80);
  v32 = (v15 + v31 + *(v28 + 80)) & ~*(v28 + 80);
  v33 = (v44 + *(v30 + 80) + v32) & ~*(v30 + 80);
  v34 = (v49 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  v36 = *(v27 + 24);
  *(v35 + 4) = v29;
  *(v35 + 5) = v36;
  (*(v25 + 32))(&v35[v31], v41, v27);
  (*(v28 + 32))(&v35[v32], v53, v29);
  (*(v30 + 32))(&v35[v33], v54, v55);
  v37 = &v35[v34];
  v38 = v51;
  *v37 = v50;
  v37[1] = v38;

  sub_100021EF4(0, 0, v42, v52, v35);
}

uint64_t sub_100093F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  sub_100094B54(0);
  v8[4] = v11;
  v8[5] = *(v11 - 8);
  v12 = swift_task_alloc();
  v8[6] = v12;
  v13 = swift_task_alloc();
  v8[7] = v13;
  v15 = type metadata accessor for OverviewTimelineProvider(0, v18, v19, v14);
  *v13 = v8;
  v13[1] = sub_10002272C;

  return sub_100092754(v12, a5, a6, v15);
}

uint64_t sub_10009407C(uint64_t a1, char a2, int a3, unsigned __int8 a4)
{
  v25 = a3;
  v7 = sub_1000DB720();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v11);
  v14 = &v24[-v13];
  v15 = *(v8 + 16);
  v15(&v24[-v13], a1, v7, v12);
  v16 = *(v8 + 88);
  v17 = v16(v14, v7);
  v18 = enum case for WidgetFamily.systemSmall(_:);
  if (v17 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v17 == enum case for WidgetFamily.systemMedium(_:))
    {
      if (a4 & 1 | ((a2 & 1) == 0))
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      goto LABEL_11;
    }

    if (v17 == enum case for WidgetFamily.systemLarge(_:))
    {
      if (a4)
      {
        v19 = 3;
      }

      else
      {
        v19 = 6;
      }

      goto LABEL_11;
    }

    if (v17 != enum case for WidgetFamily.accessoryRectangular(_:))
    {
      goto LABEL_24;
    }
  }

  v19 = 3;
LABEL_11:
  (v15)(v10, a1, v7);
  v20 = v16(v10, v7);
  if (v20 == v18)
  {
    goto LABEL_21;
  }

  if (v20 == enum case for WidgetFamily.systemMedium(_:) || v20 == enum case for WidgetFamily.systemLarge(_:))
  {
    v22 = 1;
    if ((v25 | a4))
    {
      v22 = 2;
    }

    return v22 * v19;
  }

  if (v20 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
LABEL_21:
    v22 = 1;
    return v22 * v19;
  }

LABEL_24:
  result = sub_1000DC0D0();
  __break(1u);
  return result;
}

uint64_t sub_100094318(uint64_t a1)
{
  v2 = sub_1000DB720();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for WidgetFamily.systemSmall(_:) || v7 == enum case for WidgetFamily.systemMedium(_:))
  {
    return 1;
  }

  if (v7 == enum case for WidgetFamily.systemLarge(_:))
  {
    return 4;
  }

  if (v7 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    return 0;
  }

  result = sub_1000DC0D0();
  __break(1u);
  return result;
}

double sub_1000944A8@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WidgetStock(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100094CEC(a1, v8, type metadata accessor for WidgetStock);
  return sub_10007D6E0(v8, a2, a3);
}

uint64_t sub_100094560(uint64_t a1)
{
  v2 = sub_1000D9480();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023704(0);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetStock(0);
  sub_100094CEC(a1 + *(v9 + 20), v8, sub_100023704);
  v10 = sub_1000D9450();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_10009544C(v8, sub_100023704);
    v12 = 0;
  }

  else
  {
    sub_1000D93F0();
    (*(v11 + 8))(v8, v10);
    v12 = sub_1000D9460();
    (*(v3 + 8))(v5, v2);
  }

  return v12 & 1;
}

uint64_t sub_100094758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10001079C;

  return sub_10008B440(a1, a2, a3, a4);
}

uint64_t sub_100094818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10001079C;

  return sub_100092754(a1, a2, a3, a4);
}

uint64_t sub_100094954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4[4];
  v8 = *(type metadata accessor for OverviewTimelineProvider(0, v7, v4[5], a4) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = (v9 + *(v8 + 64) + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80);
  v11 = *(*(v7 - 8) + 64);
  v12 = *(sub_1000DB7D0() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = v4[2];
  v15 = v4[3];
  v16 = (v4 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = *v16;
  v18 = v16[1];
  v19 = swift_task_alloc();
  *(v6 + 16) = v19;
  *v19 = v6;
  v19[1] = sub_10000ECF4;

  return sub_100093F3C(a1, v14, v15, v4 + v9, v4 + v10, v4 + v13, v17, v18);
}

void sub_100094B54(uint64_t a1)
{
  if (!qword_100118CF0)
  {
    type metadata accessor for OverviewTimelineEntry(255);
    sub_10009533C(&qword_100118CE8, type metadata accessor for OverviewTimelineEntry, &unk_1000E1848);
    v1 = sub_1000DB820();
    if (!v2)
    {
      atomic_store(v1, &qword_100118CF0);
    }
  }
}

void sub_100094C58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_10009533C(a4, a5, &protocol conformance descriptor for [A]);
    v8 = sub_1000DA220();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100094CEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100094D88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001079C;

  return sub_10008BD8C(a1, v6, v7, v8, v9, v10, v4, v5);
}

uint64_t sub_100094E64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000ECF4;

  return sub_10008C070(a1, v6, v7, v8, v4, v5);
}

uint64_t sub_100094FE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_100095048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24[0] = a7;
  v12 = *(a5 - 8);
  __chkstk_darwin(a1);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000D9870();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OverviewTimelineProvider.Configuration(0, a4, a6, v19);
  (*(v16 + 16))(v18, a1 + *(v20 + 44), v15);
  v21 = (*(v16 + 88))(v18, v15);
  if (v21 == enum case for NewsDisplayConfiguration.afterHours(_:))
  {
    (*(v12 + 16))(v14, a3, a5);
    v22 = *(sub_1000DBA90() + 16);

    if (v22)
    {
      return vcvts_n_f32_s64(sub_1000DBCE0(), 1uLL) <= v22;
    }
  }

  else
  {
    if (v21 == enum case for NewsDisplayConfiguration.always(_:))
    {
      return 1;
    }

    if (v21 != enum case for NewsDisplayConfiguration.never(_:))
    {
      (*(v16 + 8))(v18, v15);
    }
  }

  return 0;
}

uint64_t sub_10009533C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100095384(uint64_t a1, uint64_t a2)
{
  sub_100023660(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1000953E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10009544C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000954AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(type metadata accessor for OverviewTimelineProvider(0, v5, *(v4 + 40), a4) - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = *(v5 - 8);
  v9 = (v7 + *(v6 + 64) + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = sub_1000DB7D0();
  v12 = *(v11 - 8);
  v13 = (v9 + v10 + *(v12 + 80)) & ~*(v12 + 80);
  swift_unknownObjectRelease();
  v14 = sub_1000DA370();
  (*(*(v14 - 8) + 8))(v4 + v7, v14);
  (*(v8 + 8))(v4 + v9, v5);
  (*(v12 + 8))(v4 + v13, v11);

  return swift_deallocObject();
}

uint64_t sub_1000956A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4[4];
  v8 = *(type metadata accessor for OverviewTimelineProvider(0, v7, v4[5], a4) - 8);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v10 = (v9 + *(v8 + 64) + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80);
  v11 = *(*(v7 - 8) + 64);
  v12 = *(sub_1000DB7D0() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = v4[2];
  v15 = v4[3];
  v16 = (v4 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = *v16;
  v18 = v16[1];
  v19 = swift_task_alloc();
  *(v6 + 16) = v19;
  *v19 = v6;
  v19[1] = sub_10001079C;

  return sub_1000924B8(a1, v14, v15, v4 + v9, v4 + v10, v4 + v13, v17, v18);
}

void sub_1000958AC(uint64_t a1)
{
  sub_10006207C();
  if (v1 <= 0x3F)
  {
    sub_1000D9870();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100095954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = sub_1000D9870();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100095A20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1000D9870();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_100095AC8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x646C656979;
    v6 = 1635018082;
    if (a1 != 10)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    v8 = 0x6F77547974666966;
    if (a1 != 7)
    {
      v8 = 0x5665676172657661;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1852141679;
    v2 = 0x656D756C6F76;
    if (a1 != 3)
    {
      v2 = 0xD000000000000014;
    }

    v3 = 1751607656;
    if (a1 != 1)
    {
      v3 = 7827308;
    }

    if (a1)
    {
      v1 = v3;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100095C40@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X2>, unint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = sub_100095AC8(*a1);
  v9 = v8;
  v10 = sub_10009695C(v6);
  v12 = v11;
  result = sub_100095CD8(v6, a2);
  *a4 = v7;
  a4[1] = v9;
  a4[2] = v10;
  a4[3] = v12;
  a4[4] = result;
  a4[5] = v14;
  return result;
}

uint64_t sub_100095CD8(unsigned __int8 a1, uint64_t a2)
{
  v3 = v2;
  sub_100023704(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000D91C0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      if (a1 != 9)
      {
        if (a1 == 10)
        {
          sub_1000D93A0();
          if (v18)
          {
            return 0;
          }
        }

        else
        {
          sub_1000D9370();
          if (v38)
          {
            return 0;
          }
        }

LABEL_38:
        v39 = *(v2 + 32);
        v27.super.super.isa = sub_1000DBC60().super.super.isa;
        v28 = [v39 stringForObjectValue:v27.super.super.isa];
        goto LABEL_39;
      }

      sub_1000D9350();
      if (v25)
      {
        return 0;
      }

      v26 = *(v2 + 40);
      v27.super.super.isa = sub_1000DBC60().super.super.isa;
      v28 = [v26 stringForObjectValue:v27.super.super.isa];
LABEL_39:
      v40 = v28;

      if (v40)
      {
        v41 = sub_1000DB950();

        return v41;
      }

      return 0;
    }

    if (a1 == 6)
    {
      v14 = sub_1000D9360();
      if ((v20 & 1) == 0)
      {
        goto LABEL_30;
      }

      return 0;
    }

    if (a1 == 7)
    {
      v14 = sub_1000D9330();
      if ((v16 & 1) == 0)
      {
        goto LABEL_30;
      }

      return 0;
    }

    v21 = v11;
    v22 = sub_1000D9340();
    result = 0;
    if ((v35 & 1) == 0 && v22 >= 1)
    {
      goto LABEL_48;
    }
  }

  else
  {
    if (a1 <= 2u)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v14 = sub_1000D9300();
          if ((v15 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v14 = sub_1000D92F0();
          if ((v29 & 1) == 0)
          {
LABEL_30:
            v30 = *&v14;
            v31 = sub_10002999C(0, 5, 1, *&v14);
            [v31 setNumberStyle:1];
            v32 = [objc_allocWithZone(NSNumber) initWithDouble:v30];
            v33 = [v31 stringFromNumber:v32];

            if (v33)
            {
              v34 = sub_1000DB950();

              return v34;
            }
          }
        }
      }

      else
      {
        v14 = sub_1000D9320();
        if ((v19 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      return 0;
    }

    if (a1 != 3)
    {
      if (a1 == 4)
      {
        sub_1000D9390();
        if (v17)
        {
          return 0;
        }

        goto LABEL_38;
      }

      v21 = v11;
      sub_100096C88(a2, v8);
      v36 = sub_1000D9450();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v8, 1, v36) == 1)
      {
        sub_100096CEC(v8);
        return 0;
      }

      v42 = COERCE_DOUBLE(sub_1000D9410());
      v44 = v43;
      result = (*(v37 + 8))(v8, v36);
      if ((v44 & 1) != 0 || fabs(v42) >= 9.22337204e18)
      {
        return 0;
      }

      if ((~*&v42 & 0x7FF0000000000000) != 0)
      {
        if (v42 > -9.22337204e18)
        {
          v22 = v42;
          if (v42 < 1)
          {
            return 0;
          }

          goto LABEL_48;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    v21 = v11;
    v22 = sub_1000D93B0();
    result = 0;
    if ((v24 & 1) == 0 && v22 >= 1)
    {
LABEL_48:
      v45 = *(*(v3 + 24) + 16);
      sub_1000D9170();
      v27.super.super.isa = sub_1000D9130().super.isa;
      (*(v10 + 8))(v13, v21);
      v28 = [v45 formattedCount:v22 withLocale:v27.super.super.isa longform:0 compactDisplay:0];
      goto LABEL_39;
    }
  }

  return result;
}

void sub_100096420(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v37 = a1 + 32;
LABEL_2:
  v7 = (a1 + 48 * v5);
  while (1)
  {
    if (v6 == v5)
    {
      v17 = _swiftEmptyArrayStorage[2];
      v18 = a2 - v17;
      if (__OFSUB__(a2, v17))
      {
        goto LABEL_43;
      }

      if (v18 >= 1)
      {

        if (v18 == a2)
        {
          *a3 = a1;

          return;
        }

        if (v6)
        {
          v35 = v18;
          v19 = 0;
          v33 = a1 + 120;
          while (v19 < v6)
          {
            v20 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_42;
            }

            v21 = (v37 + 48 * v19);
            v22 = v21[5];
            if (!v22)
            {
              if (v35 <= 0)
              {
                v30 = (v33 + 48 * v19);
                while (v6 != v20)
                {
                  if (v20 >= v6)
                  {
                    goto LABEL_41;
                  }

                  v19 = v20 + 1;
                  if (__OFADD__(v20, 1))
                  {
                    goto LABEL_42;
                  }

                  v31 = *v30;
                  v30 += 6;
                  v22 = v31;
                  ++v20;
                  if (v31)
                  {
                    v35 = 0;
                    v21 = v30 - 11;
                    goto LABEL_26;
                  }
                }

                goto LABEL_38;
              }

              v22 = 0;
              --v35;
            }

            ++v19;
LABEL_26:
            v23 = v21[3];
            v38 = v21[4];
            v24 = v21[1];
            v25 = v21[2];
            v26 = *v21;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_10007BCEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
            }

            v28 = _swiftEmptyArrayStorage[2];
            v27 = _swiftEmptyArrayStorage[3];
            if (v28 >= v27 >> 1)
            {
              sub_10007BCEC((v27 > 1), v28 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v28 + 1;
            v29 = &_swiftEmptyArrayStorage[6 * v28];
            v29[4] = v26;
            v29[5] = v24;
            v29[6] = v25;
            v29[7] = v23;
            v29[8] = v38;
            v29[9] = v22;
            if (v19 == v6)
            {
              goto LABEL_38;
            }
          }

          goto LABEL_41;
        }
      }

LABEL_38:
      *a3 = _swiftEmptyArrayStorage;
      return;
    }

    if (v5 >= v6)
    {
      break;
    }

    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_40;
    }

    v9 = v7[9];
    ++v5;
    v7 += 6;
    if (v9)
    {
      v10 = *(v7 - 2);
      v11 = *(v7 - 1);
      v12 = *v7;
      v13 = v7[1];
      v32 = v7[2];

      v34 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10007BCEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_10007BCEC((v14 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[6 * v15];
      v16[4] = v10;
      v16[5] = v11;
      v16[6] = v34;
      v16[7] = v13;
      v16[8] = v32;
      v16[9] = v9;
      v5 = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t sub_100096730()
{

  return swift_deallocClassInstance();
}

void *sub_1000967A4()
{
  v1 = v0;
  type metadata accessor for PriceFormatter(0);
  v2 = swift_allocObject();
  sub_1000D9140();
  v1[2] = v2;
  type metadata accessor for UnitNumberFormatter();
  v3 = swift_allocObject();
  *(v3 + 16) = [objc_allocWithZone(SCICUNumberFormatter) init];
  v1[3] = v3;
  v4 = [objc_allocWithZone(NSNumberFormatter) init];
  [v4 setNumberStyle:1];
  [v4 setMinimumFractionDigits:2];
  [v4 setMaximumFractionDigits:2];
  v1[4] = v4;
  v5 = [objc_allocWithZone(NSNumberFormatter) init];
  [v5 setNumberStyle:3];
  sub_100096910();
  isa = sub_1000DBE50(1.0).super.super.isa;
  [v5 setMultiplier:isa];

  [v5 setMinimumFractionDigits:2];
  [v5 setMaximumFractionDigits:2];
  v1[5] = v5;
  return v1;
}

unint64_t sub_100096910()
{
  result = qword_100118E88;
  if (!qword_100118E88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100118E88);
  }

  return result;
}

uint64_t sub_10009695C(unsigned __int8 a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  if (a1 <= 5u)
  {
    if (a1 > 2u)
    {
      if (a1 == 3)
      {
        v4 = 0xD000000000000031;
        v11._countAndFlagsBits = 0x80000001000E9660;
        v5._countAndFlagsBits = 7106390;
      }

      else
      {
        if (a1 != 4)
        {
          v11._countAndFlagsBits = 0x80000001000E95C0;
          v5._countAndFlagsBits = 0x70614320746B4DLL;
          v4 = 0xD000000000000040;
          v5._object = 0xE700000000000000;
          goto LABEL_27;
        }

        v11._countAndFlagsBits = 0x80000001000E9610;
        v4 = 0xD000000000000048;
        v5._countAndFlagsBits = 4534096;
      }
    }

    else
    {
      if (!a1)
      {
        v4 = 0xD000000000000038;
        v11._countAndFlagsBits = 0x80000001000E9720;
        v5._countAndFlagsBits = 1852141647;
        v5._object = 0xE400000000000000;
        goto LABEL_27;
      }

      if (a1 == 1)
      {
        v4 = 0xD000000000000035;
        v11._countAndFlagsBits = 0x80000001000E96E0;
        v5._countAndFlagsBits = 1751607624;
        v5._object = 0xE400000000000000;
LABEL_27:
        v6.value._countAndFlagsBits = 0;
        v6.value._object = 0;
        v7.super.isa = v3;
        v8._countAndFlagsBits = 0;
        v8._object = 0xE000000000000000;
        goto LABEL_28;
      }

      v4 = 0xD000000000000034;
      v11._countAndFlagsBits = 0x80000001000E96A0;
      v5._countAndFlagsBits = 7827276;
    }

    goto LABEL_26;
  }

  if (a1 > 8u)
  {
    if (a1 != 9)
    {
      if (a1 == 10)
      {
        v4 = 0xD00000000000002FLL;
        v11._countAndFlagsBits = 0x80000001000E9490;
        v5._countAndFlagsBits = 1635018050;
        v5._object = 0xE400000000000000;
        goto LABEL_27;
      }

      v11._countAndFlagsBits = 0x80000001000E9450;
      v4 = 0xD00000000000003DLL;
      v5._countAndFlagsBits = 5460037;
LABEL_26:
      v5._object = 0xE300000000000000;
      goto LABEL_27;
    }

    v11._countAndFlagsBits = 0x80000001000E94C0;
    v5._countAndFlagsBits = 0x646C656959;
  }

  else
  {
    if (a1 == 6)
    {
      v11._countAndFlagsBits = 0x80000001000E9580;
      v5._countAndFlagsBits = 0x4820573235;
      v4 = 0xD00000000000003ALL;
      v5._object = 0xE500000000000000;
      goto LABEL_27;
    }

    if (a1 != 7)
    {
      v11._countAndFlagsBits = 0x80000001000E9500;
      v5._countAndFlagsBits = 0x6C6F5620677641;
      v5._object = 0xE700000000000000;
      goto LABEL_23;
    }

    v11._countAndFlagsBits = 0x80000001000E9540;
    v5._countAndFlagsBits = 0x4C20573235;
  }

  v5._object = 0xE500000000000000;
LABEL_23:
  v6.value._countAndFlagsBits = 0;
  v6.value._object = 0;
  v7.super.isa = v3;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v4 = 0xD000000000000039;
LABEL_28:
  v9 = sub_1000D8E50(v5, v6, v7, v8, v4, v11);

  return v9;
}

uint64_t sub_100096C88(uint64_t a1, uint64_t a2)
{
  sub_100023704(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100096CEC(uint64_t a1)
{
  sub_100023704(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100096D48(void *a1)
{
  v2 = sub_1000D8F30();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006C7C(a1, a1[3]);
  sub_100033ED8(0, &qword_100118FD0, FCContextConfiguration_ptr);
  result = sub_1000D9EF0();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  sub_100006C7C(a1, a1[3]);
  sub_100033DC0(0, &qword_100118FD8, &protocolRef_FCCoreConfigurationManager);
  result = sub_1000D9EF0();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = result;
  result = FCURLForContainerizedUserAccountCachesDirectory();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = result;
  sub_1000D8F00();

  sub_100006C7C(a1, a1[3]);
  sub_100033ED8(0, &unk_100118F60, FCNetworkBehaviorMonitor_ptr);
  result = sub_1000D9EF0();
  if (result)
  {
    v10 = result;
    v11 = objc_allocWithZone(FCContentContext);
    sub_1000D8EE0(v12);
    v14 = v13;
    v15 = [v11 initWithConfiguration:v7 configurationManager:v8 contentHostDirectory:v13 networkBehaviorMonitor:v10 desiredHeadlineFieldOptions:0x109FC387FLL feedUsage:10 appActivityMonitor:0 backgroundTaskable:0 pptContext:0];

    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v2);
    return v15;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_100096F90(id *a1)
{
  v1 = *a1;
  [*a1 enableFlushingWithFlushingThreshold:1];
  v2 = [v1 assetManager];
  [v2 enableFlushingWithFlushingThreshold:1];
}

id sub_100097008()
{
  v0 = sub_1000D8F30();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = FCURLForTodayDropbox();
  if (result)
  {
    v5 = result;
    sub_1000D8F00();

    v6 = objc_allocWithZone(FCFileCoordinatedTodayDropbox);
    sub_1000D8EE0(v7);
    v9 = v8;
    v10 = [v6 initWithFileURL:v8];

    (*(v1 + 8))(v3, v0);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100097124@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000DA370();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006C7C(a1, a1[3]);
  sub_1000481C8(0, &qword_100116950, &protocol descriptor for FeatureAvailabilityType, 1);
  result = sub_1000D9F00();
  if (v34)
  {
    sub_100023738(&v33, v35);
    sub_100006C7C(v35, v35[3]);
    if ((sub_1000D9800() & 1) == 0)
    {
      sub_1000D9930();
      swift_allocObject();
      v25 = sub_1000D9920();
      v26 = &unk_100118FA0;
      v27 = &type metadata accessor for EmptyNewsUserProfileProvider;
      v28 = &protocol conformance descriptor for EmptyNewsUserProfileProvider;
LABEL_8:
      v29 = sub_1000981D8(v26, v27, v28);
      *a2 = v25;
      a2[1] = v29;
      return sub_100006D0C(v35);
    }

    sub_100006C7C(a1, a1[3]);
    sub_1000481C8(0, &qword_100118F40, &protocol descriptor for TodayPrivateDataProviderType, 1);
    result = sub_1000D9F00();
    if (v34)
    {
      v9 = sub_10006457C(&v33, v34);
      v10 = __chkstk_darwin(v9);
      v12 = (&v31[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v12, v10);
      v14 = *v12;
      v15 = type metadata accessor for TodayPrivateDataProvider(0);
      v32[3] = v15;
      v32[4] = &off_100109F38;
      v32[0] = v14;
      type metadata accessor for WidgetNewsUserProfileProvider();
      v16 = swift_allocObject();
      v17 = sub_10006457C(v32, v15);
      v18 = __chkstk_darwin(v17);
      v20 = (&v31[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v21 + 16))(v20, v18);
      v22 = *v20;
      v31[3] = v15;
      v31[4] = &off_100109F38;
      v31[0] = v22;
      sub_100006E20(v31, v16 + 16);
      sub_100098084(0);
      swift_allocObject();
      v23 = sub_1000DA0B0();
      sub_100006D0C(v31);
      *(v16 + 56) = v23;
      sub_100006D0C(v32);
      sub_100006D0C(&v33);
      if (qword_100114090 != -1)
      {
        swift_once();
      }

      v24 = sub_100015294(v4, qword_100128DD8);
      (*(v5 + 16))(v7, v24, v4);
      sub_100098144(0);
      v25 = swift_allocObject();
      *(v25 + 16) = v16;
      (*(v5 + 32))(v25 + qword_100128F28, v7, v4);
      v26 = &unk_100118FC8;
      v27 = sub_100098144;
      v28 = &unk_1000E31B4;
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000975B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000DA370();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006C7C(a1, a1[3]);
  sub_100033ED8(0, &unk_100118F30, FCFileCoordinatedTodayDropbox_ptr);
  result = sub_1000D9EF0();
  if (result)
  {
    v9 = result;
    sub_1000DA340();
    v10 = type metadata accessor for TodayPrivateDataProvider(0);
    v11 = swift_allocObject();
    swift_defaultActor_initialize();
    v12 = OBJC_IVAR____TtC12StocksWidget24TodayPrivateDataProvider_cache;
    sub_100097FB4(0);
    swift_allocObject();
    *(v11 + v12) = sub_1000DA0B0();
    *(v11 + OBJC_IVAR____TtC12StocksWidget24TodayPrivateDataProvider_maxAge) = 0x4024000000000000;
    *(v11 + 112) = v9;
    result = (*(v5 + 32))(v11 + OBJC_IVAR____TtC12StocksWidget24TodayPrivateDataProvider_logger, v7, v4);
    a2[3] = v10;
    a2[4] = &off_100109F38;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100097750@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ManagedConfigurationService;
  result = sub_100097F60();
  *(a1 + 32) = result;
  return result;
}

id sub_100097784()
{
  v0 = objc_allocWithZone(type metadata accessor for NoopAppActivityMonitor());

  return [v0 init];
}

id sub_1000977C4()
{
  sub_1000480A8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000E04C0;
  *(v0 + 32) = [objc_allocWithZone(FCPrivateDataSyncConditionFalse) init];
  v1 = objc_allocWithZone(FCPrivateDataSyncAvailability);
  sub_100033DC0(0, &qword_100118F70, &protocolRef_FCPrivateDataSyncCondition);
  isa = sub_1000DBB00().super.isa;

  v3 = [v1 initWithConditions:isa];

  return v3;
}

uint64_t sub_10009788C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for UserIdentitySource.cache(_:);
  v3 = sub_1000D96E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

id sub_100097900()
{
  v0 = objc_allocWithZone(FCNetworkBehaviorMonitor);

  return [v0 initForLoggingOnly];
}

uint64_t sub_100097960()
{
  v0 = sub_1000DA0F0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D9F40();
  sub_100033DC0(0, &qword_100116908, &protocolRef_FCContentContext);
  sub_1000DA060();

  sub_1000D9E90();

  v4 = enum case for Scope.singleton(_:);
  v5 = *(v1 + 104);
  v5(v3, enum case for Scope.singleton(_:), v0);
  sub_1000D9EA0();

  v11 = *(v1 + 8);
  v11(v3, v0);
  v10[1] = v1 + 8;
  sub_1000D9F40();
  sub_100033ED8(0, &unk_100118F30, FCFileCoordinatedTodayDropbox_ptr);
  sub_1000DA060();

  sub_1000D9F40();
  sub_1000481C8(0, &qword_100116970, &protocol descriptor for NewsUserProfileProviderType, 0);
  sub_1000DA070();

  sub_1000D9F40();
  sub_1000481C8(0, &qword_100118F40, &protocol descriptor for TodayPrivateDataProviderType, 1);
  sub_1000DA070();

  v6 = v4;
  v12 = v4;
  v5(v3, v4, v0);
  v7 = v5;
  sub_1000D9EA0();

  v8 = v11;
  v11(v3, v0);
  sub_1000D9F40();
  sub_1000481C8(0, &qword_100118F48, &protocol descriptor for ManagedConfigurationServiceType, 1);
  sub_1000DA070();

  sub_1000D9F40();
  sub_100033DC0(0, &qword_100118F50, &protocolRef_FCAppActivityMonitor);
  sub_1000DA060();

  sub_1000D9F40();
  sub_1000DB9C0();
  sub_1000DA070();

  v7(v3, v6, v0);
  sub_1000D9EA0();

  v8(v3, v0);
  sub_1000D9F40();
  sub_100033ED8(0, &qword_100118F58, FCPrivateDataSyncAvailability_ptr);
  sub_1000DA060();

  sub_1000D9F40();
  sub_1000D8F30();
  sub_1000D99E0();
  sub_1000DA070();

  sub_1000D9F40();
  sub_1000D96E0();
  sub_1000DA070();

  sub_1000D9F40();
  sub_100033ED8(0, &unk_100118F60, FCNetworkBehaviorMonitor_ptr);
  sub_1000DA060();

  v7(v3, v12, v0);
  sub_1000D9EA0();

  return (v8)(v3, v0);
}

unint64_t sub_100097F60()
{
  result = qword_100118F78;
  if (!qword_100118F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118F78);
  }

  return result;
}

void sub_100097FB4(uint64_t a1)
{
  if (!qword_100118F80)
  {
    sub_100033DC0(255, &qword_100115D40, &protocolRef_FCTodayPrivateData);
    sub_100098030();
    v1 = sub_1000DA0C0();
    if (!v2)
    {
      atomic_store(v1, &qword_100118F80);
    }
  }
}

unint64_t sub_100098030()
{
  result = qword_100118F90;
  if (!qword_100118F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118F90);
  }

  return result;
}

void sub_100098084(uint64_t a1)
{
  if (!qword_100118FA8)
  {
    sub_1000D9510();
    sub_1000980F0();
    v1 = sub_1000DA0C0();
    if (!v2)
    {
      atomic_store(v1, &qword_100118FA8);
    }
  }
}

unint64_t sub_1000980F0()
{
  result = qword_100118FB0;
  if (!qword_100118FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118FB0);
  }

  return result;
}

void sub_100098144(uint64_t a1)
{
  if (!qword_100118FB8)
  {
    v2 = type metadata accessor for WidgetNewsUserProfileProvider();
    v3 = sub_1000981D8(&qword_100118FC0, type metadata accessor for WidgetNewsUserProfileProvider, &unk_1000E327C);
    v5 = type metadata accessor for LoggingNewsUserProfileProvider(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_100118FB8);
    }
  }
}

uint64_t sub_1000981D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_100098220()
{
  sub_100098268();

  return sub_1000DAC20();
}

unint64_t sub_100098268()
{
  result = qword_100118FF8;
  if (!qword_100118FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100118FF8);
  }

  return result;
}

uint64_t sub_1000982CC()
{
  v0 = sub_1000D9690();
  sub_1000152CC(v0, qword_100118FE0);
  v1 = sub_100015294(v0, qword_100118FE0);
  v2 = enum case for PriceChangeDisplay.currency(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100098354@<X0>(uint64_t a1@<X8>)
{
  if (qword_100114148 != -1)
  {
    swift_once();
  }

  v2 = sub_1000D9690();
  v3 = sub_100015294(v2, qword_100118FE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000983FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100098460();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_100098460()
{
  result = qword_100119000;
  if (!qword_100119000)
  {
    sub_1000D9690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119000);
  }

  return result;
}

id sub_100098500(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NoopAppActivityMonitor();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10009856C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_100099668(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for HeadlineViewModel(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000986D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_100099668(0, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for HeadlineViewModel(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for SmallDetailWithNewsContentView(uint64_t a1)
{
  result = qword_100119090;
  if (!qword_100119090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100098874(uint64_t a1)
{
  sub_100063718(319, &qword_1001156D0, &type metadata for StockPrice, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100063718(319, &unk_1001156D8, &type metadata for ValueChangeTrend, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100099668(319, &qword_100114B60, type metadata accessor for PreparedSparkline, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        type metadata accessor for HeadlineViewModel(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000989CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v75 = sub_100099558;
  sub_1000994C8(0, &qword_100119110, sub_100099558);
  v72 = v3 - 8;
  __chkstk_darwin(v3 - 8);
  v73 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v70 = &v59 - v6;
  v7 = type metadata accessor for SmallSparklineView(0);
  __chkstk_darwin(v7 - 8);
  v71 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v69 = &v59 - v10;
  v11 = sub_1000DAE60();
  v67 = *(v11 - 8);
  v68 = v11;
  __chkstk_darwin(v11);
  v64 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for LineTicker;
  sub_1000994C8(0, &qword_100119100, type metadata accessor for LineTicker);
  v14 = v13;
  __chkstk_darwin(v13);
  v16 = &v59 - v15;
  sub_1000995F8(0, &qword_1001190F0, sub_100099304, &type metadata for AccessibilitySimpleTicker, &type metadata accessor for ModifiedContent);
  v63 = v17 - 8;
  __chkstk_darwin(v17 - 8);
  v77 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v76 = &v59 - v20;
  v60 = *(a1 + 64);
  v22 = a1[1];
  v62 = *a1;
  v21 = v62;
  v24 = a1[3];
  v61 = a1[2];
  v23 = v61;
  v25 = a1[4];
  v26 = a1[5];
  v27 = a1[6];
  v28 = a1[7];
  *v16 = v60;
  *(v16 + 1) = v21;
  *(v16 + 2) = v22;
  *(v16 + 3) = v23;
  *(v16 + 4) = v24;
  *(v16 + 5) = v25;
  *(v16 + 6) = v26;
  *(v16 + 7) = v27;
  *(v16 + 8) = v28;
  v59 = v28;
  v29 = *(type metadata accessor for LineTicker(0) + 28);
  *&v16[v29] = swift_getKeyPath();
  sub_100099668(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  v66 = v30;
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 1;
  *(v32 + 32) = 0;
  *(v32 + 40) = 0;
  v33 = &v16[*(v14 + 36)];
  *v33 = KeyPath;
  v33[1] = sub_10002B050;
  v33[2] = v32;

  sub_10002B054(v25, v26, v27, v28);
  v34 = v64;
  sub_1000DAE40();
  sub_1000993A4();
  v35 = v76;
  sub_1000DB2A0();
  (*(v67 + 8))(v34, v68);
  sub_100099868(v16, &qword_100119100, v65);
  v36 = v35 + *(v63 + 44);
  *v36 = v60;
  *(v36 + 1) = *v84;
  *(v36 + 4) = *&v84[3];
  *(v36 + 8) = v62;
  *(v36 + 16) = v22;
  *(v36 + 24) = v61;
  *(v36 + 32) = v24;
  *(v36 + 40) = v25;
  *(v36 + 48) = v26;
  v37 = v59;
  *(v36 + 56) = v27;
  *(v36 + 64) = v37;

  sub_10002B054(v25, v26, v27, v37);
  sub_1000DB600();
  sub_1000DA7A0();
  v67 = v80;
  v68 = v78;
  v65 = v82;
  v64 = v83;
  v87 = 1;
  v86 = v79;
  v85 = v81;
  v38 = type metadata accessor for SmallDetailWithNewsContentView(0);
  v39 = v69;
  sub_100024964(a1 + *(v38 + 28), v69);
  v40 = v70;
  sub_100099780(a1 + *(v38 + 32), v70, type metadata accessor for HeadlineViewModel);
  sub_100010190(*(v40 + 104));
  *(v40 + 104) = 1;
  *(v40 + 112) = 0;
  v41 = *(type metadata accessor for HeadlineView(0) + 20);
  *(v40 + v41) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_100099558(0);
  *(v40 + *(v42 + 36)) = 0x3FF0000000000000;
  v43 = swift_getKeyPath();
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 40) = 1;
  v45 = (v40 + *(v72 + 44));
  *v45 = v43;
  v45[1] = sub_10002B5D4;
  v45[2] = v44;
  v46 = v77;
  sub_1000996E4(v35, v77);
  LOBYTE(v27) = v87;
  LOBYTE(v22) = v86;
  LOBYTE(v34) = v85;
  v47 = v39;
  v48 = v71;
  sub_100099780(v39, v71, type metadata accessor for SmallSparklineView);
  v49 = v73;
  sub_1000997E8(v40, v73);
  v50 = v74;
  sub_1000996E4(v46, v74);
  sub_100099214(0);
  v52 = v51;
  v53 = v50 + *(v51 + 48);
  *v53 = 0;
  *(v53 + 8) = v27;
  v54 = v67;
  *(v53 + 16) = v68;
  *(v53 + 24) = v22;
  *(v53 + 32) = v54;
  *(v53 + 40) = v34;
  v55 = v64;
  *(v53 + 48) = v65;
  *(v53 + 56) = v55;
  sub_100099780(v48, v50 + *(v51 + 64), type metadata accessor for SmallSparklineView);
  v56 = v50 + *(v52 + 80);
  *v56 = 0x4020000000000000;
  *(v56 + 8) = 0;
  sub_1000997E8(v49, v50 + *(v52 + 96));
  v57 = v75;
  sub_100099868(v40, &qword_100119110, v75);
  sub_1000998C4(v47);
  sub_100099920(v76);
  sub_100099868(v49, &qword_100119110, v57);
  sub_1000998C4(v48);
  return sub_100099920(v77);
}

uint64_t sub_100099134@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1000DAD00();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_10009917C(0);
  return sub_1000989CC(v2, a2 + *(v4 + 44));
}

void sub_10009917C(uint64_t a1)
{
  if (!qword_1001190D8)
  {
    sub_100099668(255, &qword_1001190E0, sub_100099214, &type metadata accessor for TupleView);
    v1 = sub_1000DA800();
    if (!v2)
    {
      atomic_store(v1, &qword_1001190D8);
    }
  }
}

void sub_100099214(uint64_t a1)
{
  if (!qword_1001190E8)
  {
    sub_1000995F8(255, &qword_1001190F0, sub_100099304, &type metadata for AccessibilitySimpleTicker, &type metadata accessor for ModifiedContent);
    sub_100099470();
    type metadata accessor for SmallSparklineView(255);
    sub_1000994C8(255, &qword_100119110, sub_100099558);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1001190E8);
    }
  }
}

void sub_100099304(uint64_t a1)
{
  if (!qword_1001190F8)
  {
    sub_1000994C8(255, &qword_100119100, type metadata accessor for LineTicker);
    sub_1000993A4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1001190F8);
    }
  }
}

unint64_t sub_1000993A4()
{
  result = qword_100119108;
  if (!qword_100119108)
  {
    sub_1000994C8(255, &qword_100119100, type metadata accessor for LineTicker);
    sub_1000999FC(&qword_100118640, type metadata accessor for LineTicker, &unk_1000E03B0);
    sub_10004C8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119108);
  }

  return result;
}

void sub_100099470()
{
  if (!qword_100116558)
  {
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100116558);
    }
  }
}

void sub_1000994C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_100063718(255, &qword_100115740, &type metadata for EdgeInsets, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v4 = sub_1000DA930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100099558(uint64_t a1)
{
  if (!qword_100119118)
  {
    type metadata accessor for HeadlineView(255);
    sub_1000995F8(255, &qword_100116728, &type metadata accessor for LayoutPriorityTraitKey, &protocol witness table for LayoutPriorityTraitKey, &type metadata accessor for _TraitWritingModifier);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100119118);
    }
  }
}

void sub_1000995F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_100099668(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000996E4(uint64_t a1, uint64_t a2)
{
  sub_1000995F8(0, &qword_1001190F0, sub_100099304, &type metadata for AccessibilitySimpleTicker, &type metadata accessor for ModifiedContent);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100099780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000997E8(uint64_t a1, uint64_t a2)
{
  sub_1000994C8(0, &qword_100119110, sub_100099558);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100099868(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1000994C8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000998C4(uint64_t a1)
{
  v2 = type metadata accessor for SmallSparklineView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100099920(uint64_t a1)
{
  sub_1000995F8(0, &qword_1001190F0, sub_100099304, &type metadata for AccessibilitySimpleTicker, &type metadata accessor for ModifiedContent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000999FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100099A44(uint64_t a1)
{
  if (!qword_100119128)
  {
    sub_100099668(255, &qword_1001190E0, sub_100099214, &type metadata accessor for TupleView);
    sub_100099AD8();
    v1 = sub_1000DB540();
    if (!v2)
    {
      atomic_store(v1, &qword_100119128);
    }
  }
}

unint64_t sub_100099AD8()
{
  result = qword_100119130;
  if (!qword_100119130)
  {
    sub_100099668(255, &qword_1001190E0, sub_100099214, &type metadata accessor for TupleView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119130);
  }

  return result;
}

unint64_t sub_100099B68()
{
  result = qword_100119138;
  if (!qword_100119138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119138);
  }

  return result;
}

uint64_t sub_100099BE0(uint64_t a1, uint64_t a2, int *a3)
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

  sub_100071F74(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  sub_100023660(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  sub_10007D024(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

void sub_100099D4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100099DC4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  sub_100071F74(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  sub_100023660(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  sub_10007D024(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

void sub_100099F50(uint64_t a1)
{
  sub_10009A0C0(319, &qword_1001156D0, &type metadata for StockPrice, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10009A0C0(319, &unk_1001156D8, &type metadata for ValueChangeTrend, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100071F74(319);
      if (v3 <= 0x3F)
      {
        sub_10009A0C0(319, &qword_100115160, &type metadata for QuoteDetailItem, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_100023660(319);
          if (v5 <= 0x3F)
          {
            sub_10007D024(319);
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

void sub_10009A0C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_10009A110(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x614E6C6F626D7973;
    v6 = 0x6563697270;
    if (a1 != 2)
    {
      v6 = 0x6168436563697270;
    }

    if (a1)
    {
      v5 = 0x4E796E61706D6F63;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x74654465746F7571;
    v2 = 0x656E696C64616568;
    if (a1 != 7)
    {
      v2 = 0x52556C6F626D7973;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x6E696C6B72617073;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10009A24C(void *a1)
{
  v3 = v1;
  sub_10009B534(0, &qword_100119250, &type metadata accessor for KeyedEncodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  sub_100006C7C(a1, a1[3]);
  sub_10009B2AC();
  sub_1000DC480();
  v10 = *(v3 + 2);
  v11 = *(v3 + 3);
  v18 = *v3;
  *&v19 = v10;
  *(&v19 + 1) = v11;
  LOBYTE(v22) = 0;
  sub_10009B598();
  sub_1000DC2F0();
  if (!v2)
  {
    LOBYTE(v18) = 1;
    sub_1000DC2B0();
    v12 = v3[4];
    v22 = v3[3];
    v23 = v12;
    v21 = 2;
    sub_10009B5EC();
    sub_1000DC2A0();
    v13 = v3[6];
    v18 = v3[5];
    v19 = v13;
    *v20 = v3[7];
    *&v20[9] = *(v3 + 121);
    v17 = 3;
    sub_10009B640();
    sub_1000DC2F0();
    LOBYTE(v18) = *(v3 + 137);
    v17 = 4;
    sub_100073A0C();
    sub_1000DC2A0();
    v14 = type metadata accessor for DetailContentViewModel(0);
    LOBYTE(v18) = 5;
    type metadata accessor for PreparedSparkline(0);
    sub_10009ED58(&qword_100119270, type metadata accessor for PreparedSparkline, &unk_1000E2848);
    sub_1000DC2A0();
    *&v18 = *(v3 + *(v14 + 40));
    v17 = 6;
    sub_10009A0C0(0, &qword_100115160, &type metadata for QuoteDetailItem, &type metadata accessor for Array);
    sub_10009B694(&qword_100119278, sub_10009B724, &protocol conformance descriptor for <A> [A]);
    sub_1000DC2F0();
    LOBYTE(v18) = 7;
    sub_100023694(0);
    sub_10009B7C0(&qword_100119288, sub_100023694, sub_10009B778, &protocol conformance descriptor for <> NonEmpty<A>);
    sub_1000DC2A0();
    LOBYTE(v18) = 8;
    sub_1000D8F30();
    sub_10009ED58(&qword_1001192A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    sub_1000DC2A0();
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_10009A6CC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  sub_10007D024(0);
  __chkstk_darwin(v3 - 8);
  v34 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023660(0);
  __chkstk_darwin(v5 - 8);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071F74(0);
  __chkstk_darwin(v8 - 8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009B534(0, &qword_1001191F0, &type metadata accessor for KeyedDecodingContainer);
  v37 = v11;
  v35 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v32 - v12;
  v14 = type metadata accessor for DetailContentViewModel(0);
  __chkstk_darwin(v14);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006C7C(a1, a1[3]);
  sub_10009B2AC();
  v38 = v13;
  v17 = v39;
  sub_1000DC470();
  if (v17)
  {
    sub_100006D0C(a1);
  }

  else
  {
    v39 = v10;
    v33 = v7;
    v19 = v35;
    v18 = v36;
    v20 = v16;
    LOBYTE(v40) = 0;
    sub_10009B300();
    v21 = v37;
    sub_1000DC220();
    v22 = v42;
    *v20 = v41;
    *(v20 + 16) = v22;
    LOBYTE(v41) = 1;
    v23 = sub_1000DC1E0();
    v32[1] = 0;
    *(v20 + 32) = v23;
    *(v20 + 40) = v24;
    LOBYTE(v40) = 2;
    sub_10009B354();
    sub_1000DC1D0();
    v25 = a1;
    v26 = v42;
    *(v20 + 48) = v41;
    *(v20 + 64) = v26;
    v45 = 3;
    sub_10009B3A8();
    sub_1000DC220();
    v27 = v19;
    v28 = v42;
    *(v20 + 80) = v41;
    *(v20 + 96) = v28;
    *(v20 + 112) = v43[0];
    *(v20 + 121) = *(v43 + 9);
    v44 = 4;
    sub_100073888();
    sub_1000DC1D0();
    *(v20 + 137) = v40;
    type metadata accessor for PreparedSparkline(0);
    LOBYTE(v40) = 5;
    sub_10009ED58(&qword_100119218, type metadata accessor for PreparedSparkline, &unk_1000E2870);
    v29 = v39;
    sub_1000DC1D0();
    sub_10009B4CC(v29, v20 + v14[9], sub_100071F74);
    sub_10009A0C0(0, &qword_100115160, &type metadata for QuoteDetailItem, &type metadata accessor for Array);
    v44 = 6;
    sub_10009B694(&qword_100119220, sub_10009B3FC, &protocol conformance descriptor for <A> [A]);
    sub_1000DC220();
    *(v20 + v14[10]) = v40;
    sub_100023694(0);
    LOBYTE(v40) = 7;
    sub_10009B7C0(&qword_100119230, sub_100023694, sub_10009B450, &protocol conformance descriptor for <> NonEmpty<A>);
    v30 = v33;
    sub_1000DC1D0();
    sub_10009B4CC(v30, v20 + v14[11], sub_100023660);
    sub_1000D8F30();
    LOBYTE(v40) = 8;
    sub_10009ED58(&qword_100119248, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v31 = v34;
    sub_1000DC1D0();
    (*(v27 + 8))(v38, v21);
    sub_10009B4CC(v31, v20 + v14[12], sub_10007D024);
    sub_10009EDA4(v20, v18, type metadata accessor for DetailContentViewModel);
    sub_100006D0C(v25);
    sub_10009EE0C(v20, type metadata accessor for DetailContentViewModel);
  }
}

uint64_t sub_10009AFB4@<X0>(void *a1@<X8>)
{
  v3 = sub_1000DAC10();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100099D4C(0, &qword_1001159E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment.Content);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for DetailContentView(0);
  sub_10002F35C(v1 + *(v10 + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000DB720();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1000DBDC0();
    v13 = sub_1000DAED0();
    sub_1000DA330();

    sub_1000DAC00();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10009B1D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10009EE6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10009B204(uint64_t a1)
{
  v2 = sub_10009B2AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009B240(uint64_t a1)
{
  v2 = sub_10009B2AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10009B2AC()
{
  result = qword_1001191F8;
  if (!qword_1001191F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001191F8);
  }

  return result;
}

unint64_t sub_10009B300()
{
  result = qword_100119200;
  if (!qword_100119200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119200);
  }

  return result;
}

unint64_t sub_10009B354()
{
  result = qword_100119208;
  if (!qword_100119208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119208);
  }

  return result;
}

unint64_t sub_10009B3A8()
{
  result = qword_100119210;
  if (!qword_100119210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119210);
  }

  return result;
}

unint64_t sub_10009B3FC()
{
  result = qword_100119228;
  if (!qword_100119228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119228);
  }

  return result;
}

uint64_t sub_10009B4CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10009B534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_10009B2AC();
    v7 = a3(a1, &type metadata for DetailContentViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_10009B598()
{
  result = qword_100119258;
  if (!qword_100119258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119258);
  }

  return result;
}

unint64_t sub_10009B5EC()
{
  result = qword_100119260;
  if (!qword_100119260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119260);
  }

  return result;
}

unint64_t sub_10009B640()
{
  result = qword_100119268;
  if (!qword_100119268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119268);
  }

  return result;
}

uint64_t sub_10009B694(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10009A0C0(255, &qword_100115160, &type metadata for QuoteDetailItem, &type metadata accessor for Array);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10009B724()
{
  result = qword_100119280;
  if (!qword_100119280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119280);
  }

  return result;
}

uint64_t sub_10009B7C0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DetailContentViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailContentViewModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10009B9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DetailContentViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_100099D4C(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_10009BB34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DetailContentViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    sub_100099D4C(0, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

void sub_10009BCAC(uint64_t a1)
{
  type metadata accessor for DetailContentViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_10002F2F8();
    if (v2 <= 0x3F)
    {
      sub_100099D4C(319, &qword_1001157E8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10009BD7C()
{
  result = qword_100119340;
  if (!qword_100119340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119340);
  }

  return result;
}

unint64_t sub_10009BDD4()
{
  result = qword_100119348;
  if (!qword_100119348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119348);
  }

  return result;
}

unint64_t sub_10009BE2C()
{
  result = qword_100119350;
  if (!qword_100119350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119350);
  }

  return result;
}

uint64_t sub_10009BE9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_1000DAE80();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000DA890();
  v5 = *(v36 - 8);
  __chkstk_darwin(v36);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009E23C(0);
  v9 = v8;
  __chkstk_darwin(v8);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10009E96C(0);
  v13 = v12;
  v37 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009EAD0(0);
  v17 = *(v16 - 8);
  v38 = v16;
  v39 = v17;
  __chkstk_darwin(v16);
  v35 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = sub_1000DB5F0();
  v11[1] = v19;
  sub_10009EB8C(0);
  sub_10009C354(v2, v11 + *(v20 + 44));
  KeyPath = swift_getKeyPath();
  v22 = (v11 + *(v9 + 36));
  sub_100031EB0(0);
  v24 = *(v23 + 28);
  v25 = enum case for ColorScheme.dark(_:);
  v26 = sub_1000DA6B0();
  (*(*(v26 - 8) + 104))(v22 + v24, v25, v26);
  *v22 = KeyPath;
  v27 = v36;
  (*(v5 + 104))(v7, enum case for DynamicTypeSize.large(_:), v36);
  v28 = sub_10009E9F0();
  sub_1000DB260();
  (*(v5 + 8))(v7, v27);
  sub_10009EE0C(v11, sub_10009E23C);
  type metadata accessor for DetailContentViewModel(0);
  v44 = v9;
  v45 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v35;
  sub_1000DB200();
  (*(v37 + 8))(v15, v13);
  v31 = v40;
  sub_1000DAE70();
  sub_1000DB600();
  v44 = v13;
  v45 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100032330();
  v32 = v38;
  sub_1000DB290();
  (*(v42 + 8))(v31, v43);
  return (*(v39 + 8))(v30, v32);
}

uint64_t sub_10009C354@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v203 = a2;
  v185 = type metadata accessor for LargeDetailContentView(0);
  __chkstk_darwin(v185);
  v169 = &v164 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009EBFC(0, &qword_100119430, &type metadata accessor for _ConditionalContent.Storage);
  v181 = v4;
  __chkstk_darwin(v4);
  v182 = &v164 - v5;
  sub_10009EC64(0, &qword_100119438, type metadata accessor for LargeDetailWithNewsContentView, type metadata accessor for LargeDetailContentView, &type metadata accessor for _ConditionalContent.Storage);
  v175 = v6;
  __chkstk_darwin(v6);
  v178 = &v164 - v7;
  sub_10009E4C0(0);
  v179 = v8;
  __chkstk_darwin(v8);
  v180 = &v164 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009E4A0(0);
  v202 = v10;
  __chkstk_darwin(v10);
  v183 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for LargeDetailWithNewsContentView(0);
  __chkstk_darwin(v177);
  v168 = &v164 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for MediumDetailContentView(0);
  __chkstk_darwin(v184);
  v167 = &v164 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009EC64(0, &qword_100119440, type metadata accessor for MediumDetailWithNewsContentView, type metadata accessor for MediumDetailContentView, &type metadata accessor for _ConditionalContent.Storage);
  v172 = v14;
  __chkstk_darwin(v14);
  v174 = &v164 - v15;
  sub_10009E458(0);
  v194 = v16;
  __chkstk_darwin(v16);
  v176 = &v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for MediumDetailWithNewsContentView(0);
  __chkstk_darwin(v173);
  v166 = &v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for SmallDetailContentView(0);
  __chkstk_darwin(v190);
  v171 = &v164 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009EC64(0, &qword_100119448, sub_10009E3C8, sub_10009E4A0, &type metadata accessor for _ConditionalContent.Storage);
  v198 = v20;
  __chkstk_darwin(v20);
  v199 = &v164 - v21;
  sub_10009EC64(0, &qword_100119450, sub_10009E410, sub_10009E458, &type metadata accessor for _ConditionalContent.Storage);
  v191 = v22;
  __chkstk_darwin(v22);
  v193 = &v164 - v23;
  sub_10009EC64(0, &qword_100119458, type metadata accessor for SmallDetailWithNewsContentView, type metadata accessor for SmallDetailContentView, &type metadata accessor for _ConditionalContent.Storage);
  v186 = v24;
  __chkstk_darwin(v24);
  v188 = &v164 - v25;
  sub_10009E410(0);
  v192 = v26;
  __chkstk_darwin(v26);
  v189 = &v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009E3C8(0);
  v197 = v28;
  __chkstk_darwin(v28);
  v195 = &v164 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for SmallDetailWithNewsContentView(0);
  __chkstk_darwin(v187);
  v170 = &v164 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023694(0);
  v32 = v31;
  v205 = *(v31 - 8);
  __chkstk_darwin(v31);
  v204 = &v164 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009ECE8(0);
  v35 = v34 - 8;
  __chkstk_darwin(v34);
  v37 = &v164 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1000DB720();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v165 = (&v164 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v41);
  v43 = &v164 - v42;
  sub_10009AFB4((&v164 - v42));
  v44 = type metadata accessor for DetailContentViewModel(0);
  v45 = v44[11];
  v46 = *(v35 + 56);
  v47 = v43;
  v48 = v37;
  (*(v39 + 32))(v37, v47, v38);
  sub_10009EDA4(a1 + v45, &v37[v46], sub_100023660);
  v200 = v39;
  v49 = *(v39 + 88);
  v201 = v38;
  v50 = v49(v37, v38);
  v196 = v37;
  if (v50 == enum case for WidgetFamily.systemSmall(_:))
  {
    v51 = v205;
    if ((*(v205 + 6))(&v48[v46], 1, v32) != 1)
    {
      (*(v51 + 4))(v204, &v48[v46], v32);
      v94 = a1[1];
      v185 = *a1;
      v95 = a1[3];
      v184 = a1[2];
      v96 = a1[6];
      v97 = a1[7];
      v99 = a1[8];
      v98 = a1[9];
      LODWORD(v183) = *(a1 + 137);
      v100 = a1 + v44[9];
      v101 = v170;
      sub_10009EDA4(v100, &v170[*(v187 + 28)], sub_100071F74);

      sub_10002B054(v96, v97, v99, v98);
      sub_1000DA1F0();
      *v101 = v185;
      *(v101 + 8) = v94;
      *(v101 + 16) = v184;
      *(v101 + 24) = v95;
      *(v101 + 32) = v96;
      *(v101 + 40) = v97;
      *(v101 + 48) = v99;
      *(v101 + 56) = v98;
      *(v101 + 64) = v183;
      sub_10009EDA4(v101, v188, type metadata accessor for SmallDetailWithNewsContentView);
      swift_storeEnumTagMultiPayload();
      sub_10009ED58(&qword_1001193C0, type metadata accessor for SmallDetailWithNewsContentView, &unk_1000E3EA0);
      sub_10009ED58(&qword_1001193C8, type metadata accessor for SmallDetailContentView, &unk_1000E6678);
      v102 = v189;
      sub_1000DAD90();
      sub_10009EDA4(v102, v193, sub_10009E410);
      swift_storeEnumTagMultiPayload();
      sub_10009E64C();
      sub_10009E72C();
      v103 = v195;
      sub_1000DAD90();
      sub_10009EE0C(v102, sub_10009E410);
      sub_10009EDA4(v103, v199, sub_10009E3C8);
      swift_storeEnumTagMultiPayload();
      sub_10009E5CC();
      sub_10009E80C();
      sub_1000DAD90();
      sub_10009EE0C(v103, sub_10009E3C8);
      sub_10009EE0C(v101, type metadata accessor for SmallDetailWithNewsContentView);
      (*(v205 + 1))(v204, v32);
      return (*(v200 + 8))(v196, v201);
    }

    v52 = *a1;
    v53 = a1[1];
    v54 = a1[3];
    v204 = a1[2];
    v205 = v52;
    v55 = a1[5];
    v185 = a1[4];
    v57 = a1[6];
    v56 = a1[7];
    v58 = a1[8];
    v59 = a1[9];
    v60 = *(a1 + 137);
    v61 = *(a1 + 7);
    v208 = *(a1 + 6);
    *v209 = v61;
    *&v209[9] = *(a1 + 121);
    v207 = *(a1 + 5);
    v62 = a1 + v44[9];
    v63 = v171;
    sub_10009EDA4(v62, &v171[*(v190 + 10)], sub_100071F74);
    *v63 = swift_getKeyPath();
    *(v63 + 8) = 0;
    *(v63 + 16) = 0;
    *(v63 + 24) = 0;
    *(v63 + 32) = 0;
    v64 = v204;
    *(v63 + 40) = v205;
    *(v63 + 48) = v53;
    *(v63 + 56) = v64;
    *(v63 + 64) = v54;
    *(v63 + 72) = v185;
    *(v63 + 80) = v55;
    *(v63 + 88) = v57;
    *(v63 + 96) = v56;
    *(v63 + 104) = v58;
    *(v63 + 112) = v59;
    *(v63 + 120) = v60;
    v65 = v207;
    v66 = v208;
    v67 = *v209;
    *(v63 + 169) = *&v209[9];
    *(v63 + 144) = v66;
    *(v63 + 160) = v67;
    *(v63 + 128) = v65;
    sub_10009EDA4(v63, v188, type metadata accessor for SmallDetailContentView);
    swift_storeEnumTagMultiPayload();

    sub_10002B054(v57, v56, v58, v59);
    sub_10002B068(&v207, v206);
    sub_10009ED58(&qword_1001193C0, type metadata accessor for SmallDetailWithNewsContentView, &unk_1000E3EA0);
    sub_10009ED58(&qword_1001193C8, type metadata accessor for SmallDetailContentView, &unk_1000E6678);
    v68 = v189;
    sub_1000DAD90();
    sub_10009EDA4(v68, v193, sub_10009E410);
    swift_storeEnumTagMultiPayload();
    sub_10009E64C();
    sub_10009E72C();
    v69 = v195;
    sub_1000DAD90();
    sub_10009EE0C(v68, sub_10009E410);
    sub_10009EDA4(v69, v199, sub_10009E3C8);
    swift_storeEnumTagMultiPayload();
    sub_10009E5CC();
    sub_10009E80C();
    sub_1000DAD90();
    sub_10009EE0C(v69, sub_10009E3C8);
    v70 = type metadata accessor for SmallDetailContentView;
    v71 = v63;
LABEL_11:
    sub_10009EE0C(v71, v70);
    return (*(v200 + 8))(v196, v201);
  }

  v72 = v205;
  if (v50 == enum case for WidgetFamily.systemMedium(_:))
  {
    v73 = &v37[v46];
    v74 = v32;
    if ((*(v205 + 6))(v73, 1, v32) == 1)
    {
      v75 = *a1;
      v76 = a1[1];
      v77 = a1[3];
      v204 = a1[2];
      v205 = v75;
      v78 = a1[5];
      v190 = a1[4];
      v188 = v78;
      v79 = a1[6];
      v80 = a1[7];
      v82 = a1[8];
      v81 = a1[9];
      LODWORD(v189) = *(a1 + 137);
      v83 = *(a1 + 7);
      v208 = *(a1 + 6);
      *v209 = v83;
      *&v209[9] = *(a1 + 121);
      v207 = *(a1 + 5);
      v84 = v184;
      v85 = v167;
      sub_10009EDA4(a1 + v44[9], &v167[*(v184 + 9)], sub_100071F74);
      v86 = v44[10];
      *(v85 + 129) = *&v209[9];
      v87 = v208;
      *(v85 + 120) = *v209;
      v88 = v207;
      *(v85 + 104) = v87;
      v89 = *(a1 + v86);
      v90 = v204;
      *v85 = v205;
      *(v85 + 8) = v76;
      *(v85 + 16) = v90;
      *(v85 + 24) = v77;
      v91 = v188;
      *(v85 + 32) = v190;
      *(v85 + 40) = v91;
      *(v85 + 48) = v79;
      *(v85 + 56) = v80;
      *(v85 + 64) = v82;
      *(v85 + 72) = v81;
      *(v85 + 80) = v189;
      *(v85 + 88) = v88;
      *(v85 + *(v84 + 10)) = v89;
      sub_10009EDA4(v85, v174, type metadata accessor for MediumDetailContentView);
      swift_storeEnumTagMultiPayload();

      sub_10002B054(v79, v80, v82, v81);
      sub_10002B068(&v207, v206);
      sub_10009ED58(&qword_1001193D8, type metadata accessor for MediumDetailWithNewsContentView, &unk_1000E3890);
      sub_10009ED58(&qword_1001193E0, type metadata accessor for MediumDetailContentView, &unk_1000DF788);

      v92 = v176;
      sub_1000DAD90();
      sub_10009EDA4(v92, v193, sub_10009E458);
      swift_storeEnumTagMultiPayload();
      sub_10009E64C();
      sub_10009E72C();
      v93 = v195;
      sub_1000DAD90();
      sub_10009EE0C(v92, sub_10009E458);
      sub_10009EDA4(v93, v199, sub_10009E3C8);
      swift_storeEnumTagMultiPayload();
      sub_10009E5CC();
      sub_10009E80C();
      sub_1000DAD90();
      sub_10009EE0C(v93, sub_10009E3C8);
      v70 = type metadata accessor for MediumDetailContentView;
      v71 = v85;
      goto LABEL_11;
    }

    v124 = &v48[v46];
    v125 = v204;
    (*(v72 + 4))(v204, v124, v32);
    v126 = a1[1];
    v190 = *a1;
    v127 = a1[3];
    v189 = a1[2];
    v128 = a1[5];
    v188 = a1[4];
    v164 = v74;
    v129 = a1[7];
    v186 = a1[6];
    v185 = v129;
    v130 = a1[8];
    v131 = v72;
    v183 = a1[9];
    LODWORD(v187) = *(a1 + 137);
    v132 = *(a1 + 6);
    v207 = *(a1 + 5);
    v208 = v132;
    *v209 = *(a1 + 7);
    *&v209[9] = *(a1 + 121);
    v133 = v173;
    v134 = a1 + v44[9];
    v135 = v166;
    sub_10009EDA4(v134, &v166[*(v173 + 36)], sub_100071F74);
    (*(v131 + 2))(v135 + *(v133 + 40), v125, v74);
    v136 = v208;
    *(v135 + 88) = v207;
    *v135 = v190;
    *(v135 + 8) = v126;
    *(v135 + 16) = v189;
    *(v135 + 24) = v127;
    *(v135 + 32) = v188;
    *(v135 + 40) = v128;
    v137 = v186;
    v138 = v185;
    *(v135 + 48) = v186;
    *(v135 + 56) = v138;
    v139 = v183;
    *(v135 + 64) = v130;
    *(v135 + 72) = v139;
    *(v135 + 80) = v187;
    *(v135 + 104) = v136;
    *(v135 + 120) = *v209;
    *(v135 + 129) = *&v209[9];
    sub_10009EDA4(v135, v174, type metadata accessor for MediumDetailWithNewsContentView);
    swift_storeEnumTagMultiPayload();

    sub_10002B054(v137, v138, v130, v139);
    sub_10002B068(&v207, v206);
    sub_10009ED58(&qword_1001193D8, type metadata accessor for MediumDetailWithNewsContentView, &unk_1000E3890);
    sub_10009ED58(&qword_1001193E0, type metadata accessor for MediumDetailContentView, &unk_1000DF788);
    v140 = v176;
    sub_1000DAD90();
    sub_10009EDA4(v140, v193, sub_10009E458);
    swift_storeEnumTagMultiPayload();
    sub_10009E64C();
    sub_10009E72C();
    v141 = v195;
    sub_1000DAD90();
    sub_10009EE0C(v140, sub_10009E458);
    sub_10009EDA4(v141, v199, sub_10009E3C8);
    swift_storeEnumTagMultiPayload();
    sub_10009E5CC();
    sub_10009E80C();
    sub_1000DAD90();
    sub_10009EE0C(v141, sub_10009E3C8);
    v142 = type metadata accessor for MediumDetailWithNewsContentView;
    v143 = v135;
LABEL_14:
    sub_10009EE0C(v143, v142);
    (*(v205 + 1))(v204, v164);
    return (*(v200 + 8))(v196, v201);
  }

  if (v50 == enum case for WidgetFamily.systemLarge(_:))
  {
    v104 = v32;
    if ((*(v205 + 6))(&v48[v46], 1, v32) == 1)
    {
      v105 = *a1;
      v106 = a1[1];
      v107 = a1[3];
      v204 = a1[2];
      v205 = v105;
      v108 = a1[5];
      v195 = a1[4];
      v193 = v108;
      v109 = a1[6];
      v110 = a1[7];
      v111 = a1[8];
      v112 = a1[9];
      LODWORD(v194) = *(a1 + 137);
      v113 = *(a1 + 7);
      v208 = *(a1 + 6);
      *v209 = v113;
      *&v209[9] = *(a1 + 121);
      v207 = *(a1 + 5);
      v114 = v185;
      v115 = v169;
      sub_10009EDA4(a1 + v44[9], &v169[*(v185 + 9)], sub_100071F74);
      v116 = v44[10];
      *(v115 + 129) = *&v209[9];
      v117 = v208;
      *(v115 + 120) = *v209;
      v118 = v207;
      *(v115 + 104) = v117;
      v119 = *(a1 + v116);
      v120 = v204;
      *v115 = v205;
      *(v115 + 8) = v106;
      *(v115 + 16) = v120;
      *(v115 + 24) = v107;
      v121 = v193;
      *(v115 + 32) = v195;
      *(v115 + 40) = v121;
      *(v115 + 48) = v109;
      *(v115 + 56) = v110;
      *(v115 + 64) = v111;
      *(v115 + 72) = v112;
      *(v115 + 80) = v194;
      *(v115 + 88) = v118;
      *(v115 + *(v114 + 10)) = v119;
      sub_10009EDA4(v115, v178, type metadata accessor for LargeDetailContentView);
      swift_storeEnumTagMultiPayload();

      sub_10002B054(v109, v110, v111, v112);
      sub_10002B068(&v207, v206);
      sub_10009ED58(&qword_1001193F8, type metadata accessor for LargeDetailWithNewsContentView, &unk_1000E18A0);
      sub_10009ED58(&qword_100119400, type metadata accessor for LargeDetailContentView, &unk_1000E4D38);

      v122 = v180;
      sub_1000DAD90();
      sub_10009EDA4(v122, v182, sub_10009E4C0);
      swift_storeEnumTagMultiPayload();
      sub_10009E88C();
      v123 = v183;
      sub_1000DAD90();
      sub_10009EE0C(v122, sub_10009E4C0);
      sub_10009EDA4(v123, v199, sub_10009E4A0);
      swift_storeEnumTagMultiPayload();
      sub_10009E5CC();
      sub_10009E80C();
      sub_1000DAD90();
      sub_10009EE0C(v123, sub_10009E4A0);
      v70 = type metadata accessor for LargeDetailContentView;
      v71 = v115;
      goto LABEL_11;
    }

    v144 = &v48[v46];
    v145 = v204;
    (*(v72 + 4))(v204, v144, v32);
    v146 = a1[1];
    v195 = *a1;
    v147 = a1[3];
    v194 = a1[2];
    v148 = a1[5];
    v193 = a1[4];
    v164 = v104;
    v149 = a1[7];
    v191 = a1[6];
    v190 = v149;
    v150 = a1[9];
    v189 = a1[8];
    v188 = v150;
    LODWORD(v192) = *(a1 + 137);
    v151 = *(a1 + 6);
    v207 = *(a1 + 5);
    v208 = v151;
    *v209 = *(a1 + 7);
    *&v209[9] = *(a1 + 121);
    v152 = v177;
    v153 = v168;
    sub_10009EDA4(a1 + v44[9], &v168[*(v177 + 36)], sub_100071F74);
    (*(v72 + 2))(v153 + *(v152 + 40), v145, v104);
    v154 = v208;
    *(v153 + 88) = v207;
    *v153 = v195;
    *(v153 + 8) = v146;
    *(v153 + 16) = v194;
    *(v153 + 24) = v147;
    *(v153 + 32) = v193;
    *(v153 + 40) = v148;
    v155 = v191;
    v156 = v190;
    *(v153 + 48) = v191;
    *(v153 + 56) = v156;
    v157 = v189;
    v158 = v188;
    *(v153 + 64) = v189;
    *(v153 + 72) = v158;
    *(v153 + 80) = v192;
    *(v153 + 104) = v154;
    *(v153 + 120) = *v209;
    *(v153 + 129) = *&v209[9];
    sub_10009EDA4(v153, v178, type metadata accessor for LargeDetailWithNewsContentView);
    swift_storeEnumTagMultiPayload();

    sub_10002B054(v155, v156, v157, v158);
    sub_10002B068(&v207, v206);
    sub_10009ED58(&qword_1001193F8, type metadata accessor for LargeDetailWithNewsContentView, &unk_1000E18A0);
    sub_10009ED58(&qword_100119400, type metadata accessor for LargeDetailContentView, &unk_1000E4D38);
    v159 = v180;
    sub_1000DAD90();
    sub_10009EDA4(v159, v182, sub_10009E4C0);
    swift_storeEnumTagMultiPayload();
    sub_10009E88C();
    v160 = v183;
    sub_1000DAD90();
    sub_10009EE0C(v159, sub_10009E4C0);
    sub_10009EDA4(v160, v199, sub_10009E4A0);
    swift_storeEnumTagMultiPayload();
    sub_10009E5CC();
    sub_10009E80C();
    sub_1000DAD90();
    sub_10009EE0C(v160, sub_10009E4A0);
    v142 = type metadata accessor for LargeDetailWithNewsContentView;
    v143 = v153;
    goto LABEL_14;
  }

  *&v207 = 0;
  *(&v207 + 1) = 0xE000000000000000;
  sub_1000DBF50(52);
  v210._object = 0x80000001000E9860;
  v210._countAndFlagsBits = 0xD000000000000023;
  sub_1000DBA00(v210);
  v162 = v165;
  sub_10009AFB4(v165);
  sub_10009ED58(&qword_100115310, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  v163 = v201;
  v211._countAndFlagsBits = sub_1000DC320();
  sub_1000DBA00(v211);

  (*(v200 + 8))(v162, v163);
  v212._countAndFlagsBits = 0x2074656764697720;
  v212._object = 0xEF2E796C696D6166;
  sub_1000DBA00(v212);
  result = sub_1000DC0D0();
  __break(1u);
  return result;
}

void sub_10009E284(uint64_t a1)
{
  if (!qword_100119360)
  {
    sub_10009E32C(255);
    sub_10009B7C0(&qword_1001193A0, sub_10009E32C, sub_10009E508, &protocol conformance descriptor for <A> Group<A>);
    v1 = sub_1000DB550();
    if (!v2)
    {
      atomic_store(v1, &qword_100119360);
    }
  }
}

void sub_10009E32C(uint64_t a1)
{
  if (!qword_100119368)
  {
    sub_10009EC64(255, &qword_100119370, sub_10009E3C8, sub_10009E4A0, &type metadata accessor for _ConditionalContent);
    v1 = sub_1000DB3A0();
    if (!v2)
    {
      atomic_store(v1, &qword_100119368);
    }
  }
}

unint64_t sub_10009E508()
{
  result = qword_1001193A8;
  if (!qword_1001193A8)
  {
    sub_10009EC64(255, &qword_100119370, sub_10009E3C8, sub_10009E4A0, &type metadata accessor for _ConditionalContent);
    sub_10009E5CC();
    sub_10009E80C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001193A8);
  }

  return result;
}

unint64_t sub_10009E5CC()
{
  result = qword_1001193B0;
  if (!qword_1001193B0)
  {
    sub_10009E3C8(255);
    sub_10009E64C();
    sub_10009E72C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001193B0);
  }

  return result;
}

unint64_t sub_10009E64C()
{
  result = qword_1001193B8;
  if (!qword_1001193B8)
  {
    sub_10009E410(255);
    sub_10009ED58(&qword_1001193C0, type metadata accessor for SmallDetailWithNewsContentView, &unk_1000E3EA0);
    sub_10009ED58(&qword_1001193C8, type metadata accessor for SmallDetailContentView, &unk_1000E6678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001193B8);
  }

  return result;
}

unint64_t sub_10009E72C()
{
  result = qword_1001193D0;
  if (!qword_1001193D0)
  {
    sub_10009E458(255);
    sub_10009ED58(&qword_1001193D8, type metadata accessor for MediumDetailWithNewsContentView, &unk_1000E3890);
    sub_10009ED58(&qword_1001193E0, type metadata accessor for MediumDetailContentView, &unk_1000DF788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001193D0);
  }

  return result;
}

unint64_t sub_10009E80C()
{
  result = qword_1001193E8;
  if (!qword_1001193E8)
  {
    sub_10009E4A0(255);
    sub_10009E88C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001193E8);
  }

  return result;
}

unint64_t sub_10009E88C()
{
  result = qword_1001193F0;
  if (!qword_1001193F0)
  {
    sub_10009E4C0(255);
    sub_10009ED58(&qword_1001193F8, type metadata accessor for LargeDetailWithNewsContentView, &unk_1000E18A0);
    sub_10009ED58(&qword_100119400, type metadata accessor for LargeDetailContentView, &unk_1000E4D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001193F0);
  }

  return result;
}

void sub_10009E96C(uint64_t a1)
{
  if (!qword_100119408)
  {
    sub_10009E23C(255);
    sub_10009E9F0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100119408);
    }
  }
}

unint64_t sub_10009E9F0()
{
  result = qword_100119410;
  if (!qword_100119410)
  {
    sub_10009E23C(255);
    sub_10009ED58(&qword_100119418, sub_10009E284, &protocol conformance descriptor for ZStack<A>);
    sub_10009ED58(&qword_100115C20, sub_100031EB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119410);
  }

  return result;
}

void sub_10009EAD0(uint64_t a1)
{
  if (!qword_100119420)
  {
    sub_10009E96C(255);
    sub_10009E23C(255);
    sub_10009E9F0();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_100119420);
    }
  }
}

void sub_10009EB8C(uint64_t a1)
{
  if (!qword_100119428)
  {
    sub_10009E32C(255);
    v1 = sub_1000DA800();
    if (!v2)
    {
      atomic_store(v1, &qword_100119428);
    }
  }
}

void sub_10009EBFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void *))
{
  if (!*a2)
  {
    sub_10009E4C0(255);
    v7 = a3(a1, v6, &type metadata for Never);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_10009EC64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_10009ECE8(uint64_t a1)
{
  if (!qword_100119460)
  {
    sub_1000DB720();
    sub_100023660(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100119460);
    }
  }
}

uint64_t sub_10009ED58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10009EDA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009EE0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10009EE6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1000DC360() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E796E61706D6F63 && a2 == 0xEB00000000656D61 || (sub_1000DC360() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6563697270 && a2 == 0xE500000000000000 || (sub_1000DC360() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6168436563697270 && a2 == 0xEB0000000065676ELL || (sub_1000DC360() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000E9890 == a2 || (sub_1000DC360() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E696C6B72617073 && a2 == 0xE900000000000065 || (sub_1000DC360() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74654465746F7571 && a2 == 0xEC000000736C6961 || (sub_1000DC360() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656E696C64616568 && a2 == 0xE900000000000073 || (sub_1000DC360() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x52556C6F626D7973 && a2 == 0xE90000000000004CLL)
  {

    return 8;
  }

  else
  {
    v6 = sub_1000DC360();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_10009F168()
{
  sub_10009EAD0(255);
  sub_10009E96C(255);
  sub_10009E23C(255);
  sub_10009E9F0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100032330();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_10009F23C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10009F258(uint64_t a1, unsigned int a2)
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

uint64_t sub_10009F2B4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10009F328(void *a1)
{
  v3 = v1;
  sub_1000A03CC(0, &qword_1001194E0, &type metadata accessor for KeyedEncodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v12[-v8];
  sub_100006C7C(a1, a1[3]);
  sub_1000A0378();
  sub_1000DC480();
  v10 = v3[1];
  v13 = *v3;
  v14 = v10;
  v12[15] = 0;
  sub_10009B5EC();
  sub_1000DC2F0();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1000DC280();
    LOBYTE(v13) = 2;
    sub_1000DC290();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_10009F4D4()
{
  v1 = 0x6168436563697270;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6563697270;
  }
}

uint64_t sub_10009F538@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10009FFA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10009F560(uint64_t a1)
{
  v2 = sub_1000A0378();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009F59C(uint64_t a1)
{
  v2 = sub_1000A0378();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_10009F5D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_10009FBBC(v5, v7);
}

double sub_10009F634@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1000A00C4(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_10009F698()
{
  if (qword_1001141A8 != -1)
  {
    swift_once();
  }

  sub_100006E20(qword_100128FD8, v3);
  sub_100006C7C(v3, v3[3]);
  sub_10002F2F8();
  result = sub_1000D9F00();
  if (v2)
  {
    sub_100023738(&v1, qword_1001194A8);
    return sub_100006D0C(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10009F758@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  sub_1000A0910(0);
  v3 = v2;
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s11FormatStyleVMa_0(0);
  v7 = (v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for PriceChangeView(0);
  v11 = (v1 + *(v10 + 20));
  v56[0] = v11[2];
  *(v56 + 9) = *(v11 + 41);
  v12 = v11[1];
  v54 = *v11;
  v55 = v12;
  sub_10006BEFC(&v54, &v49);
  sub_10004CF98(v9);
  *(v9 + v7[7]) = 0;
  *(v9 + v7[8]) = 0;
  *(v9 + v7[9]) = 0;
  v13 = (v9 + v7[10]);
  *v13 = 9666786;
  v13[1] = 0xA300000000000000;
  v49 = v54;
  v50 = v55;
  v51[0] = v56[0];
  *(v51 + 9) = *(v56 + 9);
  sub_100087454(v9, v5);
  v14 = &v5[*(v3 + 60)];
  *v14 = 9666786;
  *(v14 + 1) = 0xA300000000000000;
  sub_1000A09CC(&qword_1001195A8, sub_1000A0910, &unk_1000E1AF8);
  sub_1000A0A14();
  v15 = sub_1000DB150();
  v37 = v17;
  v38 = v16;
  v19 = v18;
  sub_1000A0AF0(v9, _s11FormatStyleVMa_0);
  KeyPath = swift_getKeyPath();
  v21 = v19 & 1;
  LOBYTE(v49) = v19 & 1;
  LOBYTE(v40) = 0;
  sub_1000DB070();
  sub_1000DAFF0();
  v22 = sub_1000DB010();

  v23 = swift_getKeyPath();
  v24 = swift_getKeyPath();
  v53 = 0;
  v25 = *(v1 + *(v10 + 24));
  if (v25 == 2)
  {
    if (qword_100114150 != -1)
    {
      swift_once();
    }

    v27 = qword_1001194C0;
    v26 = unk_1001194C8;
    sub_100006C7C(qword_1001194A8, qword_1001194C0);
    (*(*(v26 + 16) + 448))(v27);
  }

  else
  {
    v36 = v15;
    if (v25)
    {
      if (qword_100114150 != -1)
      {
        swift_once();
      }

      v28 = qword_1001194C0;
      v29 = unk_1001194C8;
      sub_100006C7C(qword_1001194A8, qword_1001194C0);
      (*(v29 + 64))(v28, v29);
    }

    else
    {
      if (qword_100114150 != -1)
      {
        swift_once();
      }

      v30 = qword_1001194C0;
      v31 = unk_1001194C8;
      sub_100006C7C(qword_1001194A8, qword_1001194C0);
      (*(v31 + 56))(v30, v31);
    }

    v15 = v36;
  }

  v32 = sub_1000DB390();
  v33 = swift_getKeyPath();
  *&v40 = v15;
  *(&v40 + 1) = v38;
  LOBYTE(v41) = v21;
  *(&v41 + 1) = v37;
  *&v42 = 0;
  *(&v42 + 1) = KeyPath;
  v43 = 0uLL;
  *&v44 = 0;
  BYTE8(v44) = 0;
  *&v45 = v23;
  *(&v45 + 1) = v22;
  *&v46 = v24;
  *(&v46 + 1) = 1;
  LOBYTE(v47) = 0;
  *(&v47 + 1) = v33;
  v48 = v32;
  sub_1000A0B70(0);
  sub_1000A0DA0();
  sub_1000DB230();
  v51[4] = v46;
  v51[5] = v47;
  v52 = v48;
  v51[0] = v42;
  v51[1] = v43;
  v51[2] = v44;
  v51[3] = v45;
  v49 = v40;
  v50 = v41;
  return sub_1000A0AF0(&v49, sub_1000A0B70);
}

BOOL sub_10009FBBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if ((*(a2 + 8) & 1) != 0 || *a1 != *a2)
    {
      return v4;
    }
  }

  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_1000DC360();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(a2 + 56);
  if ((*(a1 + 56) & 1) == 0)
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v10 = 1;
    }

    return (v10 & 1) == 0;
  }

  return (*(a2 + 56) & 1) != 0;
}

uint64_t sub_10009FCB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000A0658(0, &qword_100114B58, &type metadata accessor for WidgetQuote, &type metadata accessor for Optional);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = sub_1000BA50C();
  v34 = v11;
  v35 = v10;
  v32 = v12;
  v33 = v13;
  v14 = *(type metadata accessor for WidgetStock(0) + 20);
  sub_100096C88(a1 + v14, v9);
  v15 = sub_1000D9450();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v9, 1, v15) == 1)
  {
    sub_100096CEC(v9);
    v18 = 0;
    v31 = 1;
  }

  else
  {
    v18 = sub_1000D93D0();
    v31 = v19;
    (*(v16 + 8))(v9, v15);
  }

  sub_100096C88(a1 + v14, v6);
  if (v17(v6, 1, v15) == 1)
  {
    sub_1000A0AF0(a1, type metadata accessor for WidgetStock);
    result = sub_100096CEC(v6);
    v21 = 0;
    v22 = 1;
LABEL_12:
    v28 = v32 & 1;
    v38 = v32 & 1;
    v29 = v31 & 1;
    v37 = v31 & 1;
    v36 = v22;
    *a2 = v35;
    *(a2 + 8) = v28;
    *(a2 + 16) = v34;
    *(a2 + 24) = v33;
    *(a2 + 32) = v18;
    *(a2 + 40) = v29;
    *(a2 + 48) = v21;
    *(a2 + 56) = v22;
    return result;
  }

  v23 = v18;
  v24 = COERCE_DOUBLE(sub_1000D9410());
  v26 = v25;
  sub_1000A0AF0(a1, type metadata accessor for WidgetStock);
  result = (*(v16 + 8))(v6, v15);
  if ((v26 & 1) != 0 || (v27 = v24, fabs(v24) >= 9.22337204e18))
  {
    v21 = 0;
    v22 = 1;
    v18 = v23;
    goto LABEL_12;
  }

  if ((~*&v24 & 0x7FF0000000000000) != 0)
  {
    if (v24 > -9.22337204e18)
    {
      v18 = v23;
      v22 = 0;
      v21 = v27;
      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10009FFA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
  if (v4 || (sub_1000DC360() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6168436563697270 && a2 == 0xEB0000000065676ELL || (sub_1000DC360() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000E89A0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000DC360();

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

uint64_t sub_1000A00C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000A03CC(0, &qword_1001194D0, &type metadata accessor for KeyedDecodingContainer);
  v6 = v5;
  v7 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  sub_100006C7C(a1, a1[3]);
  sub_1000A0378();
  sub_1000DC470();
  if (v2)
  {
    return sub_100006D0C(a1);
  }

  v26[0] = 0;
  sub_10009B354();
  sub_1000DC220();
  v10 = v29;
  v11 = v30;
  v23 = v28;
  v24 = v31;
  LOBYTE(v28) = 1;
  v12 = sub_1000DC1B0();
  HIDWORD(v19) = v10;
  v20 = v11;
  v21 = v13;
  v22 = v12;
  v33 = 2;
  v14 = sub_1000DC1C0();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  v32 = BYTE4(v19);
  v27 = v21 & 1;
  v25 = v16 & 1;
  result = sub_100006D0C(a1);
  *a2 = v23;
  *(a2 + 8) = v32;
  *(a2 + 9) = v28;
  *(a2 + 12) = *(&v28 + 3);
  v18 = v24;
  *(a2 + 16) = v20;
  *(a2 + 24) = v18;
  *(a2 + 32) = v22;
  *(a2 + 40) = v27;
  *(a2 + 41) = *v26;
  *(a2 + 44) = *&v26[3];
  *(a2 + 48) = v14;
  *(a2 + 56) = v25;
  return result;
}

unint64_t sub_1000A0378()
{
  result = qword_1001194D8;
  if (!qword_1001194D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001194D8);
  }

  return result;
}

void sub_1000A03CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1000A0378();
    v7 = a3(a1, &type metadata for PriceChange.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1000A0444()
{
  result = qword_1001194E8;
  if (!qword_1001194E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001194E8);
  }

  return result;
}

unint64_t sub_1000A049C()
{
  result = qword_1001194F0;
  if (!qword_1001194F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001194F0);
  }

  return result;
}

unint64_t sub_1000A04F4()
{
  result = qword_1001194F8;
  if (!qword_1001194F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001194F8);
  }

  return result;
}

uint64_t sub_1000A055C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000A0658(0, &qword_100118478, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    v12 = v11 <= 0;
    if (v11 < 0)
    {
      v11 = -1;
    }

    if (v12)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }
}

void sub_1000A0658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000A06D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1000A0658(0, &qword_100118478, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 + 1);
  }
}

uint64_t type metadata accessor for PriceChangeView(uint64_t a1)
{
  result = qword_100119558;
  if (!qword_100119558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A0808(uint64_t a1)
{
  sub_1000A0658(319, &qword_100118478, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100044994(319, &qword_100117C18, &type metadata for PriceChange);
    if (v2 <= 0x3F)
    {
      sub_100044994(319, &unk_1001156D8, &type metadata for ValueChangeTrend);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000A0910(uint64_t a1)
{
  if (!qword_100119598)
  {
    v4[0] = _s11FormatStyleVMa_0(255);
    v4[1] = sub_1000A09CC(&qword_1001195A0, _s11FormatStyleVMa_0, &unk_1000E36E4);
    v4[2] = &protocol witness table for String;
    v4[3] = &protocol witness table for String;
    v4[4] = &protocol witness table for String;
    v2 = type metadata accessor for NilPlaceholderFormatStyle(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_100119598);
    }
  }
}

uint64_t sub_1000A09CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000A0A14()
{
  result = qword_1001195B0;
  if (!qword_1001195B0)
  {
    sub_100044994(255, &qword_100117C18, &type metadata for PriceChange);
    sub_1000A0A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001195B0);
  }

  return result;
}

unint64_t sub_1000A0A9C()
{
  result = qword_1001195B8;
  if (!qword_1001195B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001195B8);
  }

  return result;
}

uint64_t sub_1000A0AF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000A0B70(uint64_t a1)
{
  if (!qword_1001195C0)
  {
    sub_1000A0BF0(255);
    sub_1000A0D48(255, &qword_1001158D8, &qword_1001158E0, &type metadata for Color);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_1001195C0);
    }
  }
}

void sub_1000A0BF0(uint64_t a1)
{
  if (!qword_1001195C8)
  {
    sub_1000A0C70(255);
    sub_1000A0D48(255, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_1001195C8);
    }
  }
}

void sub_1000A0C70(uint64_t a1)
{
  if (!qword_1001195D0)
  {
    sub_1000A0CF0();
    sub_1000A0D48(255, &qword_1001158E8, &qword_1001158F0, &type metadata for Font);
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_1001195D0);
    }
  }
}

void sub_1000A0CF0()
{
  if (!qword_100115EC0)
  {
    v0 = sub_1000DA930();
    if (!v1)
    {
      atomic_store(v0, &qword_100115EC0);
    }
  }
}

void sub_1000A0D48(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_100044994(255, a3, a4);
    v5 = sub_1000DAEA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1000A0DA0()
{
  result = qword_1001195D8;
  if (!qword_1001195D8)
  {
    sub_1000A0B70(255);
    sub_1000A0E40();
    sub_1000A0F80(&qword_1001159D0, &qword_1001158D8, &qword_1001158E0, &type metadata for Color);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001195D8);
  }

  return result;
}

unint64_t sub_1000A0E40()
{
  result = qword_1001195E0;
  if (!qword_1001195E0)
  {
    sub_1000A0BF0(255);
    sub_1000A0EE0();
    sub_1000A0F80(&qword_100115200, &qword_1001151B8, &qword_1001151C0, &type metadata for Int);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001195E0);
  }

  return result;
}

unint64_t sub_1000A0EE0()
{
  result = qword_1001195E8;
  if (!qword_1001195E8)
  {
    sub_1000A0C70(255);
    sub_100035E18();
    sub_1000A0F80(&qword_1001159C8, &qword_1001158E8, &qword_1001158F0, &type metadata for Font);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001195E8);
  }

  return result;
}

uint64_t sub_1000A0F80(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000A0D48(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000A0FD0()
{
  sub_1000A0B70(255);
  sub_1000A0DA0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000A1038(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1853321060;
  }

  else
  {
    v3 = 28789;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1853321060;
  }

  else
  {
    v5 = 28789;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000DC360();
  }

  return v8 & 1;
}

Swift::Int sub_1000A10CC()
{
  sub_1000DC420();
  sub_1000DB9F0();

  return sub_1000DC460();
}

double sub_1000A113C(uint64_t a1)
{
  sub_1000DB9F0();

  return result;
}

Swift::Int sub_1000A1198(uint64_t a1)
{
  sub_1000DC420();
  sub_1000DB9F0();

  return sub_1000DC460();
}

void sub_1000A1204(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100108C98;
  v7._object = v3;
  v5 = sub_1000DC170(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_1000A1264(uint64_t *a1@<X8>)
{
  v2 = 28789;
  if (*v1)
  {
    v2 = 1853321060;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1000A1344()
{
  result = qword_1001195F0;
  if (!qword_1001195F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001195F0);
  }

  return result;
}

unint64_t sub_1000A1398()
{
  result = qword_1001195F8;
  if (!qword_1001195F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001195F8);
  }

  return result;
}

uint64_t sub_1000A13EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1000A1434(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A14B0(double *a1)
{
  if (*(a1 + 8) != 1)
  {
    v2 = 9666786;
    if ((a1[6] & 1) == 0)
    {
      v4 = a1[5];
      if (qword_1001140F8 != -1)
      {
        swift_once();
      }

      v5 = sub_10002999C(0, 3, 1, v4);
      [v5 setNumberStyle:1];
      v6 = [objc_allocWithZone(NSNumber) initWithDouble:v4];
      v7 = [v5 stringFromNumber:v6];

      if (v7)
      {
        v2 = sub_1000DB950();
        v3 = v8;

        goto LABEL_10;
      }
    }

    v3 = 0xA300000000000000;
LABEL_10:
    v9 = *a1;
    if (v9 != 2)
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      if (v9)
      {
        v30._countAndFlagsBits = 0x80000001000E98B0;
        v13._countAndFlagsBits = 0x206F74206E776F44;
        v12 = 0xD00000000000005BLL;
        v13._object = 0xEA00000000004025;
        v14.value._countAndFlagsBits = 0;
        v14.value._object = 0;
        v15.super.isa = v11;
        v16._countAndFlagsBits = 0;
        v16._object = 0xE000000000000000;
      }

      else
      {
        v30._countAndFlagsBits = 0x80000001000E9910;
        v13._countAndFlagsBits = 0x4025206F74207055;
        v13._object = 0xE800000000000000;
        v14.value._countAndFlagsBits = 0;
        v14.value._object = 0;
        v15.super.isa = v11;
        v16._countAndFlagsBits = 0;
        v16._object = 0xE000000000000000;
        v12 = 0xD00000000000005ALL;
      }

      sub_1000D8E50(v13, v14, v15, v16, v12, v30);

      sub_1000029E8(0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1000DDD30;
      *(v17 + 56) = &type metadata for String;
      *(v17 + 64) = sub_100002AAC();
      *(v17 + 32) = v2;
      *(v17 + 40) = v3;
      v2 = sub_1000DB920();
      v3 = v18;
    }

    goto LABEL_15;
  }

  v2 = 0;
  v3 = 0;
LABEL_15:
  *v31 = a1[4];
  v31[1] = v2;
  v31[2] = v3;

  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
LABEL_16:
  v21 = &v31[2 * v19];
  while (++v19 != 3)
  {
    v22 = v21 + 2;
    v23 = *v21;
    v21 += 2;
    if (v23)
    {
      v24 = *(v22 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_10007B454(0, *(v20 + 2) + 1, 1, v20);
      }

      v26 = *(v20 + 2);
      v25 = *(v20 + 3);
      if (v26 >= v25 >> 1)
      {
        v20 = sub_10007B454((v25 > 1), v26 + 1, 1, v20);
      }

      *(v20 + 2) = v26 + 1;
      v27 = &v20[16 * v26];
      *(v27 + 4) = v24;
      *(v27 + 5) = v23;
      goto LABEL_16;
    }
  }

  sub_1000A19C4(0, &qword_100115C60, &type metadata accessor for Optional);
  swift_arrayDestroy();
  sub_1000A19C4(0, &qword_100114E28, &type metadata accessor for Array);
  sub_10007CA88();
  v28 = sub_1000DB890();

  return v28;
}

double sub_1000A1890()
{
  v1 = *(v0 + 48);
  v4[2] = *(v0 + 32);
  v4[3] = v1;
  v5 = *(v0 + 64);
  v2 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v2;
  sub_1000A14B0(v4);
  sub_1000A1968(0);
  sub_1000A1B64(&qword_100119608, sub_1000A1968, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_100017740();
  sub_1000DB280();

  return result;
}

void sub_1000A1968(uint64_t a1)
{
  if (!qword_100119600)
  {
    sub_1000459F8();
    v1 = sub_1000DADC0();
    if (!v2)
    {
      atomic_store(v1, &qword_100119600);
    }
  }
}

void sub_1000A19C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1000A1A1C()
{
  result = qword_100119610;
  if (!qword_100119610)
  {
    sub_1000A1AFC(255);
    sub_1000A1B64(&qword_100119608, sub_1000A1968, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1000A1B64(&qword_1001186C0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100119610);
  }

  return result;
}

void sub_1000A1AFC(uint64_t a1)
{
  if (!qword_100119618)
  {
    sub_1000A1968(255);
    sub_1000DAEB0();
    v1 = sub_1000DA930();
    if (!v2)
    {
      atomic_store(v1, &qword_100119618);
    }
  }
}

uint64_t sub_1000A1B64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1000A1BBC()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isNewsAllowed];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A1C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000A5800(0, &qword_100118478, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for DetailTimelineEntry(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000A1D64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1000A5800(0, &qword_100118478, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for DetailTimelineEntry(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for DetailChartComplicationContentView(uint64_t a1)
{
  result = qword_100119678;
  if (!qword_100119678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A1EDC(uint64_t a1)
{
  sub_1000A5800(319, &qword_100118478, &type metadata accessor for PriceChangeDisplay, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DetailTimelineEntry(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000A1FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000A4AFC(0, &qword_1001197B8, sub_1000A4B80, sub_1000A4C40, &type metadata accessor for _ConditionalContent.Storage);
  v5 = v4;
  __chkstk_darwin(v4);
  v7 = v43 - v6;
  sub_1000A5980(0, &qword_1001197C0, &type metadata accessor for _ConditionalContent.Storage);
  __chkstk_darwin(v8);
  v10 = v43 - v9;
  sub_1000A4B80(0);
  v43[2] = v11;
  __chkstk_darwin(v11);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002D6E4(0);
  v15 = v14;
  __chkstk_darwin(v14);
  v17 = (v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1 + *(type metadata accessor for DetailChartComplicationContentView(0) + 20);
  v19 = type metadata accessor for DetailTimelineEntry(0);
  v20 = *(v18 + *(v19 + 20) + 137);
  if (v20 == 2)
  {
    if (*(v18 + *(v19 + 32)) == 1)
    {
      sub_1000DB050();
      sub_1000DAFD0();
      sub_1000DB010();

      v21 = sub_1000DB100();
      v23 = v22;
      v25 = v24;
      v27 = v26;

      *&v44 = v21;
      *(&v44 + 1) = v23;
      *&v45 = v25 & 1;
      *(&v45 + 1) = v27;
      v46 = 0;
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
      v46 = 1;
    }

    sub_1000DAD90();
    v34 = v48;
    v35 = v49;
    *v7 = v47;
    *(v7 + 1) = v34;
    v7[32] = v35;
    swift_storeEnumTagMultiPayload();
    sub_1000A4C40();
    sub_1000A59E4();
    sub_1000A5B0C();
    return sub_1000DAD90();
  }

  else
  {
    v43[0] = v5;
    v43[1] = a2;
    if (v20)
    {
      v28 = sub_1000DB3C0();
      v29 = (v17 + *(v15 + 36));
      sub_1000A4C0C(0);
      v31 = *(v30 + 28);
      v32 = enum case for Image.Scale.small(_:);
      v33 = sub_1000DB410();
      (*(*(v33 - 8) + 104))(v29 + v31, v32, v33);
      *v29 = swift_getKeyPath();
      *v17 = v28;
    }

    else
    {
      v37 = sub_1000DB3C0();
      v38 = (v17 + *(v15 + 36));
      sub_1000A4C0C(0);
      v40 = *(v39 + 28);
      v41 = enum case for Image.Scale.small(_:);
      v42 = sub_1000DB410();
      (*(*(v42 - 8) + 104))(v38 + v40, v41, v42);
      *v38 = swift_getKeyPath();
      *v17 = v37;
    }

    sub_1000A5734(v17, v10, sub_10002D6E4);
    swift_storeEnumTagMultiPayload();
    sub_1000A5A5C();
    sub_1000DAD90();
    sub_1000A5734(v13, v7, sub_1000A4B80);
    swift_storeEnumTagMultiPayload();
    sub_1000A4C40();
    sub_1000A59E4();
    sub_1000A5B0C();
    sub_1000DAD90();
    sub_1000A5864(v13, sub_1000A4B80);
    return sub_1000A5864(v17, sub_10002D6E4);
  }
}

uint64_t sub_1000A24FC@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_1000DA980();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A44D4(0);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A51EC(0);
  v27 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v1 + *(type metadata accessor for DetailChartComplicationContentView(0) + 20);
  v14 = type metadata accessor for DetailTimelineEntry(0);
  v15 = *(v14 + 20);
  *v8 = sub_1000DAD10();
  *(v8 + 1) = 0;
  v8[16] = 0;
  sub_1000A5914(0, &qword_100119798, sub_1000A4568, &type metadata for _VStackLayout, &protocol witness table for _VStackLayout);
  sub_1000A2910(v1, (v13 + v15), &v8[*(v16 + 44)]);
  if (*(v13 + *(v14 + 32)) == 1)
  {
    sub_1000DA970();
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
    sub_1000A50A4(&qword_100115C40, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
    sub_1000326FC(0);
    sub_1000A50A4(&qword_100115C50, sub_1000326FC, &protocol conformance descriptor for [A]);
    sub_1000DBEE0();
  }

  sub_1000A50A4(&qword_100119790, sub_1000A44D4, &protocol conformance descriptor for VStack<A>);
  sub_1000DB2F0();
  (*(v3 + 8))(v5, v2);
  sub_1000A566C(v8, sub_1000A44D4);
  KeyPath = swift_getKeyPath();
  sub_1000A4AFC(0, &qword_1001197A0, sub_1000A51EC, sub_100031EB0, &type metadata accessor for ModifiedContent);
  v19 = v28;
  v20 = (v28 + *(v18 + 36));
  sub_100031EB0(0);
  v22 = *(v21 + 28);
  v23 = enum case for ColorScheme.dark(_:);
  v24 = sub_1000DA6B0();
  (*(*(v24 - 8) + 104))(v20 + v22, v23, v24);
  *v20 = KeyPath;
  return (*(v10 + 32))(v19, v12, v27);
}

uint64_t sub_1000A2910@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v128 = a1;
  v139 = a3;
  v122 = sub_1000DB310();
  v120 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A52A8(0);
  __chkstk_darwin(v6 - 8);
  v115 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for SparklineView(0);
  __chkstk_darwin(v119);
  v118 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v124 = &v114 - v10;
  sub_10003822C(0);
  v127 = v11;
  v126 = *(v11 - 8);
  __chkstk_darwin(v11);
  v125 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100038594(0);
  v138 = v13;
  v137 = *(v13 - 8);
  __chkstk_darwin(v13);
  v123 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071F74(0);
  __chkstk_darwin(v15 - 8);
  v117 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v140 = &v114 - v18;
  __chkstk_darwin(v19);
  v132 = &v114 - v20;
  v141 = type metadata accessor for PreparedSparkline(0);
  v131 = *(v141 - 8);
  __chkstk_darwin(v141);
  v116 = (&v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v133 = &v114 - v23;
  sub_1000A51B8(0);
  __chkstk_darwin(v24 - 8);
  v136 = &v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v135 = &v114 - v27;
  v134 = sub_1000DAE60();
  v28 = *(v134 - 1);
  __chkstk_darwin(v134);
  v30 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A46EC(0);
  v32 = v31;
  __chkstk_darwin(v31);
  v34 = &v114 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A4668(0);
  v129 = v35;
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v114 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A4620(0);
  v130 = v39;
  __chkstk_darwin(v39);
  v41 = &v114 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v114 - v43;
  sub_1000A3860(a1, a2);
  KeyPath = swift_getKeyPath();
  sub_1000A47F8(0);
  v47 = &v34[*(v46 + 36)];
  *v47 = KeyPath;
  *(v47 + 1) = 1;
  v47[16] = 0;
  v48 = swift_getKeyPath();
  sub_1000A476C(0);
  v50 = &v34[*(v49 + 36)];
  *v50 = v48;
  v50[1] = 0x3FE6000000000000;
  v51 = sub_1000DAF70();
  v52 = swift_getKeyPath();
  v53 = &v34[*(v32 + 36)];
  *v53 = v52;
  v53[1] = v51;
  sub_1000DAE30();
  v54 = sub_1000A4D84();
  sub_1000DB2A0();
  (*(v28 + 8))(v30, v134);
  sub_1000A566C(v34, sub_1000A46EC);
  v55 = a2[3];
  *&v150 = a2[2];
  *(&v150 + 1) = v55;
  *&v147 = v32;
  *(&v147 + 1) = v54;
  swift_getOpaqueTypeConformance2();
  sub_100017740();
  v56 = v129;
  sub_1000DB280();
  (*(v36 + 8))(v38, v56);
  v57 = v128;
  *&v150 = sub_1000A4034();
  *(&v150 + 1) = v58;
  v134 = v44;
  sub_1000DA920();

  v130 = v41;
  sub_1000A566C(v41, sub_1000A4620);
  v59 = v57 + *(type metadata accessor for DetailChartComplicationContentView(0) + 20);
  v60 = *(type metadata accessor for DetailTimelineEntry(0) + 20);
  v61 = v60 + *(type metadata accessor for DetailContentViewModel(0) + 36);
  v62 = v132;
  v63 = v59 + v61;
  v64 = v131;
  sub_1000A5734(v63, v132, sub_100071F74);
  v65 = *(v64 + 48);
  if (v65(v62, 1, v141) == 1)
  {
    sub_1000A5864(v62, sub_100071F74);
    v66 = 1;
    v67 = v138;
    v68 = v137;
    v69 = v135;
  }

  else
  {
    v70 = v62;
    v71 = v133;
    sub_1000383E4(v70, v133, type metadata accessor for PreparedSparkline);
    v72 = v71;
    v73 = v140;
    sub_1000A5734(v72, v140, type metadata accessor for PreparedSparkline);
    (*(v64 + 56))(v73, 0, 1, v141);
    sub_1000DA6D0();
    sub_1000DA6D0();
    v74 = v119;
    v75 = *(v119 + 44);
    v76 = swift_getKeyPath();
    v77 = v118;
    *&v118[v75] = v76;
    sub_1000A5800(0, &qword_100116108, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment.Content);
    swift_storeEnumTagMultiPayload();
    v78 = v74[12];
    sub_1000DAFD0();
    v79 = sub_1000DAFA0();
    v80 = v115;
    (*(*(v79 - 8) + 56))(v115, 1, 1, v79);
    v81 = sub_1000DB000();
    sub_1000A5864(v80, sub_1000A52A8);
    *(v77 + v78) = v81;
    v82 = v74[13];
    v83 = enum case for Color.RGBColorSpace.sRGB(_:);
    v84 = *(v120 + 104);
    v85 = v121;
    v86 = v122;
    v84(v121, enum case for Color.RGBColorSpace.sRGB(_:), v122);
    *(v77 + v82) = sub_1000DB380();
    v87 = v77 + v74[14];
    sub_1000DA6D0();
    v88 = v151;
    *v87 = v150;
    *(v87 + 16) = v88;
    *(v87 + 32) = v152;
    v89 = v74[15];
    v84(v85, v83, v86);
    *(v77 + v89) = sub_1000DB380();
    v90 = v117;
    sub_1000A5734(v140, v117, sub_100071F74);
    v91 = v65(v90, 1, v141);
    v92 = v74;
    v93 = v133;
    if (v91 == 1)
    {
      v94 = v116;
      sub_10006F6C4(v116);
      sub_1000A5864(v140, sub_100071F74);
      if (v65(v90, 1, v141) != 1)
      {
        sub_1000A5864(v90, sub_100071F74);
      }
    }

    else
    {
      sub_1000A5864(v140, sub_100071F74);
      v94 = v116;
      sub_1000383E4(v90, v116, type metadata accessor for PreparedSparkline);
    }

    sub_1000383E4(v94, v77, type metadata accessor for PreparedSparkline);
    v95 = v77 + v92[5];
    v96 = v145;
    *v95 = v144;
    *(v95 + 16) = v96;
    *(v95 + 32) = v146;
    v97 = v77 + v92[6];
    v98 = v148;
    *v97 = v147;
    *(v97 + 16) = v98;
    *(v97 + 32) = v149;
    *(v77 + v92[7]) = 0x3FD3333333333333;
    *(v77 + v92[8]) = 0;
    v99 = v77 + v92[9];
    *v99 = 0;
    *(v99 + 8) = 0;
    *(v77 + v92[10]) = 1;
    v100 = v124;
    sub_1000383E4(v77, v124, type metadata accessor for SparklineView);
    v101 = sub_1000A50A4(&qword_100116100, type metadata accessor for SparklineView, &unk_1000E0950);
    v102 = v125;
    sub_1000DB190();
    sub_1000A5864(v100, type metadata accessor for SparklineView);
    v142 = v92;
    v143 = v101;
    swift_getOpaqueTypeConformance2();
    v103 = v123;
    v104 = v127;
    sub_1000DB1B0();
    (*(v126 + 8))(v102, v104);
    sub_1000A5864(v93, type metadata accessor for PreparedSparkline);
    v68 = v137;
    v69 = v135;
    v67 = v138;
    (*(v137 + 32))(v135, v103, v138);
    v66 = 0;
  }

  (*(v68 + 56))(v69, v66, 1, v67);
  v105 = v134;
  v106 = v130;
  sub_1000A56CC(v134, v130, sub_1000A4620);
  v107 = v136;
  sub_1000A56CC(v69, v136, sub_1000A51B8);
  v108 = v139;
  sub_1000A56CC(v106, v139, sub_1000A4620);
  sub_1000A459C(0);
  v110 = v109;
  v111 = v108 + *(v109 + 48);
  *v111 = 0x400C000000000000;
  *(v111 + 8) = 0;
  sub_1000A56CC(v107, v108 + *(v109 + 64), sub_1000A51B8);
  v112 = v108 + *(v110 + 80);
  *v112 = 0x3FF0000000000000;
  *(v112 + 8) = 0;
  sub_1000A566C(v69, sub_1000A51B8);
  sub_1000A566C(v105, sub_1000A4620);
  sub_1000A566C(v107, sub_1000A51B8);
  return sub_1000A566C(v106, sub_1000A4620);
}

uint64_t sub_1000A3860(uint64_t a1, uint64_t *a2)
{
  sub_1000A4908(0);
  __chkstk_darwin(v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000A4BA0(0, &qword_1001197A8, sub_1000A4908, &type metadata for Text, &type metadata accessor for _ConditionalContent.Storage);
  __chkstk_darwin(v7);
  v9 = &v16[-v8];
  v10 = a1 + *(type metadata accessor for DetailChartComplicationContentView(0) + 20);
  if (*(v10 + *(type metadata accessor for DetailTimelineEntry(0) + 32)) == 1)
  {
    sub_1000DACD0();
    *v9 = sub_1000DB160();
    *(v9 + 1) = v11;
    v9[16] = v12 & 1;
    *(v9 + 3) = v13;
    swift_storeEnumTagMultiPayload();
    sub_1000A50A4(&qword_100119770, sub_1000A4908, &protocol conformance descriptor for HStack<A>);
    return sub_1000DAD90();
  }

  else
  {
    *v6 = sub_1000DAC80();
    *(v6 + 1) = 0x4000000000000000;
    v6[16] = 0;
    sub_1000A5914(0, &qword_1001197B0, sub_1000A499C, &type metadata for _HStackLayout, &protocol witness table for _HStackLayout);
    sub_1000A3B58(a1, a2, &v6[*(v15 + 44)]);
    sub_1000A56CC(v6, v9, sub_1000A4908);
    swift_storeEnumTagMultiPayload();
    sub_1000A50A4(&qword_100119770, sub_1000A4908, &protocol conformance descriptor for HStack<A>);
    sub_1000DAD90();
    return sub_1000A566C(v6, sub_1000A4908);
  }
}

uint64_t sub_1000A3B58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v49 = a1;
  v53 = a3;
  v5 = _s11FormatStyleVMa_0(0);
  __chkstk_darwin(v5);
  v7 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000A4C98();
  v52 = v8;
  v55 = *(v8 - 8);
  __chkstk_darwin(v8);
  v51 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v48 - v11;
  sub_1000A4A60(0);
  __chkstk_darwin(v12 - 8);
  v54 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v48 - v15;
  v48 = &v48 - v15;
  sub_1000A1FAC(v4, &v48 - v15);

  sub_1000DAFB0();
  v17 = sub_1000DB0D0();
  v19 = v18;
  LOBYTE(v4) = v20;
  v22 = v21;

  *&v60 = v17;
  *(&v60 + 1) = v19;
  LOBYTE(v61) = v4 & 1;
  *(&v61 + 1) = v22;
  sub_1000DB1F0();
  sub_100017794(v17, v19, v4 & 1);

  v23 = *(a2 + 6);
  v60 = *(a2 + 5);
  v61 = v23;
  v25 = *(a2 + 5);
  v24 = *(a2 + 6);
  *v62 = *(a2 + 7);
  *&v62[9] = *(a2 + 121);
  v57 = v25;
  v58 = v24;
  v59[0] = *(a2 + 7);
  *(v59 + 9) = *(a2 + 121);
  sub_10002B068(&v60, v56);
  sub_10004CF98(v7);
  *(v7 + v5[5]) = 0;
  *(v7 + v5[6]) = 0;
  *(v7 + v5[7]) = 0;
  v26 = (v7 + v5[8]);
  *v26 = 9666786;
  v26[1] = 0xA300000000000000;
  sub_1000A50A4(&qword_1001195A0, _s11FormatStyleVMa_0, &unk_1000E36E4);
  sub_1000A0A9C();
  v27 = sub_1000DB150();
  v29 = v28;
  v31 = v30;
  v49 = v32;
  v33 = v54;
  sub_1000A5734(v16, v54, sub_1000A4A60);
  v34 = *(v55 + 16);
  v35 = v51;
  v36 = v50;
  v37 = v52;
  v34(v51, v50, v52);
  LOBYTE(v57) = 1;
  v56[0] = v31 & 1;
  v38 = v33;
  v39 = v53;
  sub_1000A5734(v38, v53, sub_1000A4A60);
  sub_1000A49D0(0);
  v41 = v40;
  v34((v39 + *(v40 + 48)), v35, v37);
  v42 = v39 + *(v41 + 64);
  v43 = v57;
  *v42 = 0;
  *(v42 + 8) = v43;
  v44 = v39 + *(v41 + 80);
  v45 = v56[0];
  *v44 = v27;
  *(v44 + 8) = v29;
  *(v44 + 16) = v45;
  *(v44 + 24) = v49;
  sub_1000178C0(v27, v29, v45);
  v46 = *(v55 + 8);

  v46(v36, v37);
  sub_1000A5864(v48, sub_1000A4A60);
  sub_100017794(v27, v29, v56[0]);

  v46(v35, v37);
  return sub_1000A5864(v54, sub_1000A4A60);
}

id sub_1000A4034()
{
  v1 = sub_1000D91C0();
  __chkstk_darwin(v1 - 8);
  v38[1] = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000DB900();
  __chkstk_darwin(v3 - 8);
  v38[0] = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s11FormatStyleVMa_0(0);
  v6 = (v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000A58C4(0, &qword_100115350, &type metadata for String, &type metadata accessor for _ContiguousArrayStorage);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000E08A0;
  v10 = v0 + *(type metadata accessor for DetailChartComplicationContentView(0) + 20);
  v11 = v10 + *(type metadata accessor for DetailTimelineEntry(0) + 20);
  v12 = *(v11 + 80);
  v13 = *(v11 + 88);
  v14 = *(v11 + 112);
  v15 = *(v11 + 120);
  v39 = *(v11 + 128);
  v16 = *(v11 + 136);
  sub_10004CF98(v8);
  *(v8 + v6[7]) = 0;
  *(v8 + v6[8]) = 0;
  *(v8 + v6[9]) = 1;
  v17 = v6[10];
  v18 = v9;
  v19 = (v8 + v17);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = sub_100086C3C(v12, v13, v14, v15, v39, v16);
  v22 = v21;
  sub_1000A5864(v8, _s11FormatStyleVMa_0);
  v18[4] = v20;
  v18[5] = v22;
  if (*(v11 + 72) == 1)
  {
    sub_1000DB8F0();
    sub_1000D9170();
    v24 = sub_1000DB9B0();
LABEL_16:
    v18[6] = v24;
    v18[7] = v23;
    v40 = v18;
    sub_1000A58C4(0, &qword_100114E28, &type metadata for String, &type metadata accessor for Array);
    sub_10007CA88();
    v37 = sub_1000DB890();

    return v37;
  }

  v24 = 9666786;
  if (*(v11 + 56))
  {
LABEL_15:
    v23 = 0xA300000000000000;
    goto LABEL_16;
  }

  v25 = *(v11 + 48);
  if (v25 <= 1000000.0)
  {
LABEL_10:
    if (qword_1001140F8 != -1)
    {
      swift_once();
    }

    v32 = sub_10002999C(0, 3, 1, v25);
    [v32 setNumberStyle:1];
    v33 = [objc_allocWithZone(NSNumber) initWithDouble:v25];
    v34 = [v32 stringFromNumber:v33];

    if (v34)
    {
      v24 = sub_1000DB950();
      v36 = v35;

      v23 = v36;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  type metadata accessor for UnitNumberFormatter();
  inited = swift_initStackObject();
  result = [objc_allocWithZone(SCICUNumberFormatter) init];
  *(inited + 16) = result;
  if ((~*&v25 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v25 < 9.22337204e18)
  {
    v28 = result;
    v29 = sub_100045A4C(v25, 0, 0);
    v31 = v30;

    if (v31)
    {
      v23 = v31;
      v24 = v29;
      goto LABEL_16;
    }

    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1000A44D4(uint64_t a1)
{
  if (!qword_1001196B0)
  {
    sub_1000A4568(255);
    sub_1000A50A4(&qword_100119780, sub_1000A4568, &protocol conformance descriptor for TupleView<A>);
    v1 = sub_1000DB540();
    if (!v2)
    {
      atomic_store(v1, &qword_1001196B0);
    }
  }
}