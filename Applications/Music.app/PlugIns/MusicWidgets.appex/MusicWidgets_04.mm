uint64_t sub_1000755D8()
{
  v1 = v0[10];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[3];
  v6 = v0[4];

  v7 = *(v6 + 56);
  v7(v1, 0, 1, v5);
  (*(v6 + 104))(v2, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v5);
  v7(v2, 0, 1, v5);
  v8 = *(v4 + 48);
  sub_10000CC8C(v1, v3, &qword_1006E3100, &qword_10057FBD0);
  sub_10000CC8C(v2, v3 + v8, &qword_1006E3100, &qword_10057FBD0);
  v9 = *(v6 + 48);
  if (v9(v3, 1, v5) == 1)
  {
    v10 = v0[10];
    v11 = v0[3];
    sub_10001036C(v0[9], &qword_1006E3100, &qword_10057FBD0);
    sub_10001036C(v10, &qword_1006E3100, &qword_10057FBD0);
    if (v9(v3 + v8, 1, v11) == 1)
    {
      sub_10001036C(v0[7], &qword_1006E3100, &qword_10057FBD0);
      v12 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v13 = v0[3];
  sub_10000CC8C(v0[7], v0[8], &qword_1006E3100, &qword_10057FBD0);
  v14 = v9(v3 + v8, 1, v13);
  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];
  if (v14 == 1)
  {
    v18 = v0[3];
    v19 = v0[4];
    sub_10001036C(v0[9], &qword_1006E3100, &qword_10057FBD0);
    sub_10001036C(v15, &qword_1006E3100, &qword_10057FBD0);
    (*(v19 + 8))(v17, v18);
LABEL_6:
    sub_10001036C(v0[7], &qword_1006E30F8, &qword_10057FBC8);
    v12 = 0;
    goto LABEL_8;
  }

  v26 = v0[7];
  v21 = v0[4];
  v20 = v0[5];
  v22 = v0[3];
  (*(v21 + 32))(v20, v3 + v8, v22);
  sub_100082424(&qword_1006E3108, &type metadata accessor for MusicPlayer.PlayabilityStatus, &protocol conformance descriptor for MusicPlayer.PlayabilityStatus);
  v12 = sub_1005727E8();
  v23 = *(v21 + 8);
  v23(v20, v22);
  sub_10001036C(v16, &qword_1006E3100, &qword_10057FBD0);
  sub_10001036C(v15, &qword_1006E3100, &qword_10057FBD0);
  v23(v17, v22);
  sub_10001036C(v26, &qword_1006E3100, &qword_10057FBD0);
LABEL_8:

  v24 = v0[1];

  return v24(v12 & 1);
}

uint64_t sub_100075970()
{
  v1 = v0[10];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[3];
  v6 = v0[4];

  v7 = *(v6 + 56);
  v7(v1, 1, 1, v5);
  (*(v6 + 104))(v2, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v5);
  v7(v2, 0, 1, v5);
  v8 = *(v4 + 48);
  sub_10000CC8C(v1, v3, &qword_1006E3100, &qword_10057FBD0);
  sub_10000CC8C(v2, v3 + v8, &qword_1006E3100, &qword_10057FBD0);
  v9 = *(v6 + 48);
  if (v9(v3, 1, v5) == 1)
  {
    v10 = v0[10];
    v11 = v0[3];
    sub_10001036C(v0[9], &qword_1006E3100, &qword_10057FBD0);
    sub_10001036C(v10, &qword_1006E3100, &qword_10057FBD0);
    if (v9(v3 + v8, 1, v11) == 1)
    {
      sub_10001036C(v0[7], &qword_1006E3100, &qword_10057FBD0);
      v12 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v13 = v0[3];
  sub_10000CC8C(v0[7], v0[8], &qword_1006E3100, &qword_10057FBD0);
  v14 = v9(v3 + v8, 1, v13);
  v16 = v0[9];
  v15 = v0[10];
  v17 = v0[8];
  if (v14 == 1)
  {
    v18 = v0[3];
    v19 = v0[4];
    sub_10001036C(v0[9], &qword_1006E3100, &qword_10057FBD0);
    sub_10001036C(v15, &qword_1006E3100, &qword_10057FBD0);
    (*(v19 + 8))(v17, v18);
LABEL_6:
    sub_10001036C(v0[7], &qword_1006E30F8, &qword_10057FBC8);
    v12 = 0;
    goto LABEL_8;
  }

  v26 = v0[7];
  v21 = v0[4];
  v20 = v0[5];
  v22 = v0[3];
  (*(v21 + 32))(v20, v3 + v8, v22);
  sub_100082424(&qword_1006E3108, &type metadata accessor for MusicPlayer.PlayabilityStatus, &protocol conformance descriptor for MusicPlayer.PlayabilityStatus);
  v12 = sub_1005727E8();
  v23 = *(v21 + 8);
  v23(v20, v22);
  sub_10001036C(v16, &qword_1006E3100, &qword_10057FBD0);
  sub_10001036C(v15, &qword_1006E3100, &qword_10057FBD0);
  v23(v17, v22);
  sub_10001036C(v26, &qword_1006E3100, &qword_10057FBD0);
LABEL_8:

  v24 = v0[1];

  return v24(v12 & 1);
}

Swift::Int sub_100075D08(unsigned __int8 a1)
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_100075E34()
{
  if (qword_1006DFA08 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for WidgetMusicRecommendation(0);
  v2 = sub_10000C49C(v1, qword_1006FC250);
  if ((sub_10056CA48() & 1) == 0)
  {
    return 0;
  }

  v3 = v1[5];
  v4 = (v0 + v3);
  v5 = *(v0 + v3 + 8);
  v6 = (v2 + v3);
  v7 = v6[1];
  if (v5)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *v4 == *v6 && v5 == v7;
    if (!v8 && (sub_100574498() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = v1[6];
  v10 = (v0 + v9);
  v11 = *(v0 + v9 + 8);
  v12 = (v2 + v9);
  v13 = v12[1];
  if (!v11)
  {
    if (!v13)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (!v13)
  {
    return 0;
  }

  v14 = *v10 == *v12 && v11 == v13;
  if (!v14 && (sub_100574498() & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v15 = v1[7];
  v16 = *(v0 + v15);
  v17 = *(v2 + v15);
  if (v16 == 6)
  {
    if (v17 != 6)
    {
      return 0;
    }
  }

  else if (v17 == 6 || (sub_1000386DC(v16, v17) & 1) == 0)
  {
    return 0;
  }

  v18 = v1[8];
  v19 = *(v0 + v18);
  v20 = *(v2 + v18);

  return sub_10006B354(v19, v20);
}

id sub_100075F9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a3;
  v68 = a4;
  v69 = a2;
  v7 = sub_10056C8A8();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v59 - v10;
  sub_100009DCC(&qword_1006DFD70, &qword_10057B7A8);
  __chkstk_darwin();
  v13 = &v59 - v12;
  v14 = *(type metadata accessor for WidgetChartDiskCache.ChartList(0) - 8);
  __chkstk_darwin();
  v64 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v59 - v16;
  __chkstk_darwin();
  v18 = &v59 - v17;
  v20 = v19;
  sub_10000CC8C(a1, v13, &qword_1006DFD70, &qword_10057B7A8);
  if ((*(v14 + 48))(v13, 1, v20) == 1)
  {
    sub_10001036C(v13, &qword_1006DFD70, &qword_10057B7A8);
    type metadata accessor for WidgetDiskCache(0);
    (*(v8 + 16))(v11, a5, v7);
    v21 = v68;

    v22 = sub_10056DF68();
    v23 = sub_100573448();

    v24 = v7;
    if (os_log_type_enabled(v22, v23))
    {
      v25 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v25 = 136446466;
      *(v25 + 4) = sub_10008190C(v67, v21, &v70);
      *(v25 + 12) = 2082;
      sub_100082424(&qword_1006E1B38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26 = sub_100574408();
      v28 = v27;
      (*(v8 + 8))(v11, v24);
      v29 = sub_10008190C(v26, v28, &v70);

      *(v25 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Nil value set for item named %{public}s, removing file %{public}s", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    v36 = [objc_opt_self() defaultManager];
    sub_10056C7E8(v37);
    v39 = v38;
    v70 = 0;
    v40 = [v36 removeItemAtURL:v38 error:&v70];

    v41 = v70;
    if (v40)
    {

      return v41;
    }

    else
    {
      v69 = v70;
      v43 = v70;
      sub_10056C728();

      swift_willThrow();
    }
  }

  else
  {
    v63 = a5;
    sub_10008237C(v13, v18, type metadata accessor for WidgetChartDiskCache.ChartList);
    sub_10056C2C8();
    swift_allocObject();
    sub_10056C2B8();
    sub_100082424(&qword_1006E31C8, type metadata accessor for WidgetChartDiskCache.ChartList, &unk_10057BAA0);
    v30 = sub_10056C2A8();
    v32 = v31;

    v33 = v20;
    v34 = v68;
    v62 = v33;
    v35 = v63;
    sub_10056C928();
    v60 = v30;
    v61 = v32;
    type metadata accessor for WidgetDiskCache(0);
    v44 = v18;
    v45 = v66;
    (*(v8 + 16))(v66, v35, v7);
    v46 = v65;
    sub_100081FB4(v44, v65, type metadata accessor for WidgetChartDiskCache.ChartList);

    v47 = sub_10056DF68();
    v48 = sub_100573448();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = v69;
      *v49 = 136446722;
      sub_100082424(&qword_1006E1B38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = sub_100574408();
      LODWORD(v63) = v48;
      v51 = v50;
      v53 = v52;
      (*(v8 + 8))(v45, v7);
      v54 = sub_10008190C(v51, v53, &v70);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2082;
      *(v49 + 14) = sub_10008190C(v67, v34, &v70);
      *(v49 + 22) = 2082;
      sub_100081FB4(v46, v64, type metadata accessor for WidgetChartDiskCache.ChartList);
      v55 = sub_100572978();
      v57 = v56;
      sub_10008201C(v46, type metadata accessor for WidgetChartDiskCache.ChartList);
      v58 = sub_10008190C(v55, v57, &v70);

      *(v49 + 24) = v58;
      _os_log_impl(&_mh_execute_header, v47, v63, "Saved cache file %{public}s for item named %{public}s, value %{public}s", v49, 0x20u);
      swift_arrayDestroy();

      sub_10008246C(v60, v61);
    }

    else
    {
      sub_10008246C(v60, v61);

      sub_10008201C(v46, type metadata accessor for WidgetChartDiskCache.ChartList);
      (*(v8 + 8))(v45, v7);
    }

    return sub_10008201C(v44, type metadata accessor for WidgetChartDiskCache.ChartList);
  }
}

id sub_1000769CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a3;
  v68 = a4;
  v69 = a2;
  v7 = sub_10056C8A8();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v59 - v10;
  sub_100009DCC(&qword_1006DFCE0, &qword_10057B698);
  __chkstk_darwin();
  v13 = &v59 - v12;
  v14 = *(type metadata accessor for TopChartsWidgetDataProvider.Chart(0) - 8);
  __chkstk_darwin();
  v64 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v59 - v16;
  __chkstk_darwin();
  v18 = &v59 - v17;
  v20 = v19;
  sub_10000CC8C(a1, v13, &qword_1006DFCE0, &qword_10057B698);
  if ((*(v14 + 48))(v13, 1, v20) == 1)
  {
    sub_10001036C(v13, &qword_1006DFCE0, &qword_10057B698);
    type metadata accessor for WidgetDiskCache(0);
    (*(v8 + 16))(v11, a5, v7);
    v21 = v68;

    v22 = sub_10056DF68();
    v23 = sub_100573448();

    v24 = v7;
    if (os_log_type_enabled(v22, v23))
    {
      v25 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v25 = 136446466;
      *(v25 + 4) = sub_10008190C(v67, v21, &v70);
      *(v25 + 12) = 2082;
      sub_100082424(&qword_1006E1B38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26 = sub_100574408();
      v28 = v27;
      (*(v8 + 8))(v11, v24);
      v29 = sub_10008190C(v26, v28, &v70);

      *(v25 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Nil value set for item named %{public}s, removing file %{public}s", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    v36 = [objc_opt_self() defaultManager];
    sub_10056C7E8(v37);
    v39 = v38;
    v70 = 0;
    v40 = [v36 removeItemAtURL:v38 error:&v70];

    v41 = v70;
    if (v40)
    {

      return v41;
    }

    else
    {
      v69 = v70;
      v43 = v70;
      sub_10056C728();

      swift_willThrow();
    }
  }

  else
  {
    v63 = a5;
    sub_10008237C(v13, v18, type metadata accessor for TopChartsWidgetDataProvider.Chart);
    sub_10056C2C8();
    swift_allocObject();
    sub_10056C2B8();
    sub_100082424(&qword_1006E31A0, type metadata accessor for TopChartsWidgetDataProvider.Chart, &unk_10057BAF0);
    v30 = sub_10056C2A8();
    v32 = v31;

    v33 = v20;
    v34 = v68;
    v62 = v33;
    v35 = v63;
    sub_10056C928();
    v60 = v30;
    v61 = v32;
    type metadata accessor for WidgetDiskCache(0);
    v44 = v18;
    v45 = v66;
    (*(v8 + 16))(v66, v35, v7);
    v46 = v65;
    sub_100081FB4(v44, v65, type metadata accessor for TopChartsWidgetDataProvider.Chart);

    v47 = sub_10056DF68();
    v48 = sub_100573448();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = v69;
      *v49 = 136446722;
      sub_100082424(&qword_1006E1B38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = sub_100574408();
      LODWORD(v63) = v48;
      v51 = v50;
      v53 = v52;
      (*(v8 + 8))(v45, v7);
      v54 = sub_10008190C(v51, v53, &v70);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2082;
      *(v49 + 14) = sub_10008190C(v67, v34, &v70);
      *(v49 + 22) = 2082;
      sub_100081FB4(v46, v64, type metadata accessor for TopChartsWidgetDataProvider.Chart);
      v55 = sub_100572978();
      v57 = v56;
      sub_10008201C(v46, type metadata accessor for TopChartsWidgetDataProvider.Chart);
      v58 = sub_10008190C(v55, v57, &v70);

      *(v49 + 24) = v58;
      _os_log_impl(&_mh_execute_header, v47, v63, "Saved cache file %{public}s for item named %{public}s, value %{public}s", v49, 0x20u);
      swift_arrayDestroy();

      sub_10008246C(v60, v61);
    }

    else
    {
      sub_10008246C(v60, v61);

      sub_10008201C(v46, type metadata accessor for TopChartsWidgetDataProvider.Chart);
      (*(v8 + 8))(v45, v7);
    }

    return sub_10008201C(v44, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  }
}

id sub_1000773FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a3;
  v68 = a4;
  v69 = a2;
  v7 = sub_10056C8A8();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v59 - v10;
  sub_100009DCC(&qword_1006E0790, &qword_10057C370);
  __chkstk_darwin();
  v13 = &v59 - v12;
  v14 = *(type metadata accessor for WidgetMusicRecommendation(0) - 8);
  __chkstk_darwin();
  v64 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v59 - v16;
  __chkstk_darwin();
  v18 = &v59 - v17;
  v20 = v19;
  sub_10000CC8C(a1, v13, &qword_1006E0790, &qword_10057C370);
  if ((*(v14 + 48))(v13, 1, v20) == 1)
  {
    sub_10001036C(v13, &qword_1006E0790, &qword_10057C370);
    type metadata accessor for WidgetDiskCache(0);
    (*(v8 + 16))(v11, a5, v7);
    v21 = v68;

    v22 = sub_10056DF68();
    v23 = sub_100573448();

    v24 = v7;
    if (os_log_type_enabled(v22, v23))
    {
      v25 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v25 = 136446466;
      *(v25 + 4) = sub_10008190C(v67, v21, &v70);
      *(v25 + 12) = 2082;
      sub_100082424(&qword_1006E1B38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26 = sub_100574408();
      v28 = v27;
      (*(v8 + 8))(v11, v24);
      v29 = sub_10008190C(v26, v28, &v70);

      *(v25 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Nil value set for item named %{public}s, removing file %{public}s", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    v36 = [objc_opt_self() defaultManager];
    sub_10056C7E8(v37);
    v39 = v38;
    v70 = 0;
    v40 = [v36 removeItemAtURL:v38 error:&v70];

    v41 = v70;
    if (v40)
    {

      return v41;
    }

    else
    {
      v69 = v70;
      v43 = v70;
      sub_10056C728();

      swift_willThrow();
    }
  }

  else
  {
    v63 = a5;
    sub_10008237C(v13, v18, type metadata accessor for WidgetMusicRecommendation);
    sub_10056C2C8();
    swift_allocObject();
    sub_10056C2B8();
    sub_100082424(&qword_1006E3068, type metadata accessor for WidgetMusicRecommendation, &unk_10057FE14);
    v30 = sub_10056C2A8();
    v32 = v31;

    v33 = v20;
    v34 = v68;
    v62 = v33;
    v35 = v63;
    sub_10056C928();
    v60 = v30;
    v61 = v32;
    type metadata accessor for WidgetDiskCache(0);
    v44 = v18;
    v45 = v66;
    (*(v8 + 16))(v66, v35, v7);
    v46 = v65;
    sub_100081FB4(v44, v65, type metadata accessor for WidgetMusicRecommendation);

    v47 = sub_10056DF68();
    v48 = sub_100573448();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = v69;
      *v49 = 136446722;
      sub_100082424(&qword_1006E1B38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = sub_100574408();
      LODWORD(v63) = v48;
      v51 = v50;
      v53 = v52;
      (*(v8 + 8))(v45, v7);
      v54 = sub_10008190C(v51, v53, &v70);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2082;
      *(v49 + 14) = sub_10008190C(v67, v34, &v70);
      *(v49 + 22) = 2082;
      sub_100081FB4(v46, v64, type metadata accessor for WidgetMusicRecommendation);
      v55 = sub_100572978();
      v57 = v56;
      sub_10008201C(v46, type metadata accessor for WidgetMusicRecommendation);
      v58 = sub_10008190C(v55, v57, &v70);

      *(v49 + 24) = v58;
      _os_log_impl(&_mh_execute_header, v47, v63, "Saved cache file %{public}s for item named %{public}s, value %{public}s", v49, 0x20u);
      swift_arrayDestroy();

      sub_10008246C(v60, v61);
    }

    else
    {
      sub_10008246C(v60, v61);

      sub_10008201C(v46, type metadata accessor for WidgetMusicRecommendation);
      (*(v8 + 8))(v45, v7);
    }

    return sub_10008201C(v44, type metadata accessor for WidgetMusicRecommendation);
  }
}

id sub_100077E2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a3;
  v68 = a4;
  v69 = a2;
  v7 = sub_10056C8A8();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v59 - v10;
  sub_100009DCC(&qword_1006E0AE0, &qword_10057C4E0);
  __chkstk_darwin();
  v13 = &v59 - v12;
  v14 = *(type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList(0) - 8);
  __chkstk_darwin();
  v64 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v59 - v16;
  __chkstk_darwin();
  v18 = &v59 - v17;
  v20 = v19;
  sub_10000CC8C(a1, v13, &qword_1006E0AE0, &qword_10057C4E0);
  if ((*(v14 + 48))(v13, 1, v20) == 1)
  {
    sub_10001036C(v13, &qword_1006E0AE0, &qword_10057C4E0);
    type metadata accessor for WidgetDiskCache(0);
    (*(v8 + 16))(v11, a5, v7);
    v21 = v68;

    v22 = sub_10056DF68();
    v23 = sub_100573448();

    v24 = v7;
    if (os_log_type_enabled(v22, v23))
    {
      v25 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v25 = 136446466;
      *(v25 + 4) = sub_10008190C(v67, v21, &v70);
      *(v25 + 12) = 2082;
      sub_100082424(&qword_1006E1B38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26 = sub_100574408();
      v28 = v27;
      (*(v8 + 8))(v11, v24);
      v29 = sub_10008190C(v26, v28, &v70);

      *(v25 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Nil value set for item named %{public}s, removing file %{public}s", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    v36 = [objc_opt_self() defaultManager];
    sub_10056C7E8(v37);
    v39 = v38;
    v70 = 0;
    v40 = [v36 removeItemAtURL:v38 error:&v70];

    v41 = v70;
    if (v40)
    {

      return v41;
    }

    else
    {
      v69 = v70;
      v43 = v70;
      sub_10056C728();

      swift_willThrow();
    }
  }

  else
  {
    v63 = a5;
    sub_10008237C(v13, v18, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);
    sub_10056C2C8();
    swift_allocObject();
    sub_10056C2B8();
    sub_100082424(&qword_1006E3160, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList, &unk_10057C5B4);
    v30 = sub_10056C2A8();
    v32 = v31;

    v33 = v20;
    v34 = v68;
    v62 = v33;
    v35 = v63;
    sub_10056C928();
    v60 = v30;
    v61 = v32;
    type metadata accessor for WidgetDiskCache(0);
    v44 = v18;
    v45 = v66;
    (*(v8 + 16))(v66, v35, v7);
    v46 = v65;
    sub_100081FB4(v44, v65, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);

    v47 = sub_10056DF68();
    v48 = sub_100573448();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v70 = v69;
      *v49 = 136446722;
      sub_100082424(&qword_1006E1B38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v50 = sub_100574408();
      LODWORD(v63) = v48;
      v51 = v50;
      v53 = v52;
      (*(v8 + 8))(v45, v7);
      v54 = sub_10008190C(v51, v53, &v70);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2082;
      *(v49 + 14) = sub_10008190C(v67, v34, &v70);
      *(v49 + 22) = 2082;
      sub_100081FB4(v46, v64, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);
      v55 = sub_100572978();
      v57 = v56;
      sub_10008201C(v46, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);
      v58 = sub_10008190C(v55, v57, &v70);

      *(v49 + 24) = v58;
      _os_log_impl(&_mh_execute_header, v47, v63, "Saved cache file %{public}s for item named %{public}s, value %{public}s", v49, 0x20u);
      swift_arrayDestroy();

      sub_10008246C(v60, v61);
    }

    else
    {
      sub_10008246C(v60, v61);

      sub_10008201C(v46, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);
      (*(v8 + 8))(v45, v7);
    }

    return sub_10008201C(v44, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);
  }
}

uint64_t sub_10007885C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_1000788B0()
{
  result = qword_1006E2E80;
  if (!qword_1006E2E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2E80);
  }

  return result;
}

uint64_t sub_10007890C(uint64_t a1)
{
  sub_1005729F8();
}

unint64_t sub_100078A28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008AD24(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100078A58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x736B636950706F74;
  v5 = 0xEB00000000736573;
  v6 = 0x61656C655277656ELL;
  v7 = 0xEE00756F59726F46;
  v8 = 0x736E6F6974617473;
  if (v2 != 4)
  {
    v8 = 0xD000000000000015;
    v7 = 0x80000001005A9ED0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA0000000000756FLL;
  v10 = 0x59726F466564616DLL;
  if (v2 != 1)
  {
    v10 = 0x726F4673646F6F6DLL;
    v9 = 0xEB00000000756F59;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_100078C40()
{
  v1 = sub_10056CAA8();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0xD00000000000001ALL;
  v18 = 0x80000001005AAE10;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_100573ED8(17);

  strcpy(&v16, "fetchDate: ");
  BYTE5(v16._object) = 0;
  HIWORD(v16._object) = -5120;
  sub_100082424(&qword_1006DFD50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v19._countAndFlagsBits = sub_100574408();
  sub_100572A98(v19);

  v20._countAndFlagsBits = 2108450;
  v20._object = 0xE300000000000000;
  sub_100572A98(v20);
  sub_100572A98(v16);

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_100573ED8(20);

  v16._countAndFlagsBits = 0x617A696C61636F6CLL;
  v16._object = 0xEF22203A6E6F6974;
  v5 = type metadata accessor for WidgetMusicRecommendation(0);
  v6 = (v0 + v5[5]);
  v7 = v6[1];
  v14 = *v6;
  v15 = v7;

  sub_100009DCC(&qword_1006DFD58, &qword_10057B750);
  v21._countAndFlagsBits = sub_100572978();
  sub_100572A98(v21);

  v22._countAndFlagsBits = 2108450;
  v22._object = 0xE300000000000000;
  sub_100572A98(v22);
  sub_100572A98(v16);

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_100573ED8(23);

  v16._countAndFlagsBits = 0xD000000000000012;
  v16._object = 0x80000001005AA010;
  if ((sub_100075E34() & 1) == 0)
  {
    if (qword_1006DFA20 != -1)
    {
      swift_once();
    }

    if (qword_1006FC270)
    {
      sub_1000A680C();
    }
  }

  sub_10056C9D8();
  v8 = sub_100574408();
  v10 = v9;
  (*(v2 + 8))(v4, v1);
  v23._countAndFlagsBits = v8;
  v23._object = v10;
  sub_100572A98(v23);

  v24._countAndFlagsBits = 2108450;
  v24._object = 0xE300000000000000;
  sub_100572A98(v24);
  sub_100572A98(v16);

  strcpy(&v16, "title: ");
  BYTE1(v16._object) = 0;
  WORD1(v16._object) = 0;
  HIDWORD(v16._object) = -402653184;
  v11 = (v0 + v5[6]);
  v12 = v11[1];
  v14 = *v11;
  v15 = v12;

  v25._countAndFlagsBits = sub_100572978();
  sub_100572A98(v25);

  v26._countAndFlagsBits = 2108450;
  v26._object = 0xE300000000000000;
  sub_100572A98(v26);
  sub_100572A98(v16);

  strcpy(&v16, "kind: ");
  v16._object = 0xE700000000000000;
  LOBYTE(v14) = *(v0 + v5[7]);
  sub_100009DCC(&qword_1006E0798, qword_10057C378);
  v27._countAndFlagsBits = sub_100572978();
  sub_100572A98(v27);

  v28._countAndFlagsBits = 2108450;
  v28._object = 0xE300000000000000;
  sub_100572A98(v28);
  sub_100572A98(v16);

  strcpy(&v16, "items: ");
  BYTE1(v16._object) = 0;
  WORD1(v16._object) = 0;
  HIDWORD(v16._object) = -402653184;
  type metadata accessor for WidgetMusicItem(0);
  v29._countAndFlagsBits = sub_100572D38();
  sub_100572A98(v29);

  v30._countAndFlagsBits = 2108450;
  v30._object = 0xE300000000000000;
  sub_100572A98(v30);
  sub_100572A98(v16);

  v31._countAndFlagsBits = 41;
  v31._object = 0xE100000000000000;
  sub_100572A98(v31);
  return v17;
}

uint64_t sub_100079138()
{
  v0 = type metadata accessor for WidgetMusicItem(0);
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10056CAA8();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WidgetMusicRecommendation(0);
  sub_10000C910(v7, qword_1006FC250);
  v8 = sub_10000C49C(v7, qword_1006FC250);
  sub_10056CA68();
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 preferredLocalizations];

  v11 = sub_100572D28();
  if (v11[2])
  {
    v12 = v11[4];
    v25 = v11[5];
    v26 = v12;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  if (qword_1006DF9E0 != -1)
  {
    swift_once();
  }

  v13 = unk_1006FC230;
  v24 = qword_1006FC228;
  v14 = qword_1006DF9B8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_10000C49C(v0, qword_1006FC1D8);
  sub_100081FB4(v15, v3, type metadata accessor for WidgetMusicItem);
  v16 = sub_100572D98();
  *(v16 + 16) = 8;
  v17 = v16 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  sub_100081FB4(v3, v17, type metadata accessor for WidgetMusicItem);
  v18 = *(v1 + 72);
  sub_100081FB4(v3, v17 + v18, type metadata accessor for WidgetMusicItem);
  sub_100081FB4(v3, v17 + 2 * v18, type metadata accessor for WidgetMusicItem);
  sub_100081FB4(v3, v17 + 3 * v18, type metadata accessor for WidgetMusicItem);
  sub_100081FB4(v3, v17 + 4 * v18, type metadata accessor for WidgetMusicItem);
  sub_100081FB4(v3, v17 + 5 * v18, type metadata accessor for WidgetMusicItem);
  sub_100081FB4(v3, v17 + 6 * v18, type metadata accessor for WidgetMusicItem);
  sub_10008237C(v3, v17 - v18 + 8 * v18, type metadata accessor for WidgetMusicItem);
  result = (*(v27 + 32))(v8, v6, v28);
  v20 = (v8 + v7[5]);
  v21 = v25;
  *v20 = v26;
  v20[1] = v21;
  v22 = (v8 + v7[6]);
  *v22 = v24;
  v22[1] = v13;
  *(v8 + v7[7]) = 6;
  *(v8 + v7[8]) = v16;
  return result;
}

uint64_t sub_1000794E0(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_1005711D8();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3070, &qword_10057FA80);
  v2[10] = swift_task_alloc();
  v5 = sub_10056CAA8();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10007963C, 0, 0);
}

uint64_t sub_10007963C(uint64_t a1)
{
  sub_10056CA68();
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 preferredLocalizations];

  v4 = sub_100572D28();
  if (*(v4 + 16))
  {
    v5 = *(v4 + 32);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *(v1 + 112) = v5;
  *(v1 + 120) = v6;
  v7 = *(v1 + 72);
  v8 = *(v1 + 56);
  v10 = *(v1 + 40);
  v9 = *(v1 + 48);

  *(v1 + 16) = sub_1005711C8();
  *(v1 + 24) = v11;
  *(v1 + 176) = sub_100079AE8();
  sub_1005711B8();
  v12 = sub_1000745E4(8, &qword_1006E3070, &qword_10057FA80, &qword_1006E3110);
  v22 = v13;
  v15 = v14;
  v17 = v16;
  *(v1 + 128) = v12;
  (*(v8 + 16))(v7, v10, v9);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v1 + 136) = v19;
  (*(v8 + 32))(v19 + v18, v7, v9);
  v20 = swift_task_alloc();
  *(v1 + 144) = v20;
  *v20 = v1;
  v20[1] = sub_10007986C;

  return sub_10006C190(&unk_10057FA90, v19, v12, v22, v15, v17);
}

uint64_t sub_10007986C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    v6 = v4[2];
    v7 = v4[3];

    swift_unknownObjectRelease();
    v4[19] = a1;
    v4[20] = v7;
    v4[21] = v6;

    return _swift_task_switch(sub_1000799CC, 0, 0);
  }
}

uint64_t sub_1000799CC()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 88);
  v15 = *(v0 + 152);
  v9 = *(v0 + 32);
  (*(*(v0 + 56) + 8))(*(v0 + 40), *(v0 + 48));
  (*(v7 + 32))(v9, v6, v8);
  v10 = type metadata accessor for WidgetMusicRecommendation(0);
  v11 = (v9 + v10[5]);
  *v11 = v5;
  v11[1] = v4;
  v12 = (v9 + v10[6]);
  *v12 = v1;
  v12[1] = v2;
  *(v9 + v10[7]) = v3;
  *(v9 + v10[8]) = v15;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100079AE8()
{
  v1 = sub_1005711D8();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E30A0, &qword_10057FB10);
  __chkstk_darwin();
  __chkstk_darwin();
  v6 = &v24 - v5;
  __chkstk_darwin();
  v8 = &v24 - v7;
  sub_100571128();
  v9 = sub_100571118();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_10000CC8C(v8, v6, &qword_1006E30A0, &qword_10057FB10);
    v21 = (*(v10 + 88))(v6, v9);
    if (v21 == enum case for MusicPersonalRecommendation.Kind.friendsListening(_:))
    {
      v22 = 5;
      goto LABEL_10;
    }

    if (v21 == enum case for MusicPersonalRecommendation.Kind.madeForYou(_:))
    {
      v22 = 1;
      goto LABEL_10;
    }

    if (v21 == enum case for MusicPersonalRecommendation.Kind.moodsForYou(_:))
    {
      v22 = 2;
      goto LABEL_10;
    }

    if (v21 == enum case for MusicPersonalRecommendation.Kind.newReleases(_:))
    {
      v22 = 3;
      goto LABEL_10;
    }

    if (v21 == enum case for MusicPersonalRecommendation.Kind.stationsForYou(_:))
    {
      v22 = 4;
      goto LABEL_10;
    }

    if (v21 == enum case for MusicPersonalRecommendation.Kind.topPicks(_:))
    {
      v22 = 0;
      goto LABEL_10;
    }

    (*(v10 + 8))(v6, v9);
  }

  if (qword_1006DFA18 != -1)
  {
    swift_once();
  }

  v11 = sub_10056DF88();
  sub_10000C49C(v11, qword_1006E2E68);
  (*(v2 + 16))(v4, v0, v1);
  v12 = sub_10056DF68();
  v13 = sub_100573428();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v1;
    v25 = v15;
    v16 = v15;
    *v14 = 136315138;
    sub_100571128();
    v17 = sub_100572978();
    v19 = v18;
    (*(v2 + 8))(v4, v24);
    v20 = sub_10008190C(v17, v19, &v25);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Unhandled recommendation kind=%s", v14, 0xCu);
    sub_100010474(v16);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  v22 = 6;
LABEL_10:
  sub_10001036C(v8, &qword_1006E30A0, &qword_10057FB10);
  return v22;
}

uint64_t sub_100079F40(void *a1)
{
  v3 = v1;
  v5 = sub_100009DCC(&qword_1006E32A0, &qword_10057FE40);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11[-v7];
  sub_10000C8CC(a1, a1[3]);
  sub_10008B1DC();
  sub_100574718();
  v17 = 0;
  sub_10056CAA8();
  sub_100082424(&qword_1006DFF90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_100574368();
  if (!v2)
  {
    v9 = type metadata accessor for WidgetMusicRecommendation(0);
    v16 = 1;
    sub_100574308();
    v15 = 2;
    sub_100574308();
    v14 = *(v3 + *(v9 + 28));
    v13 = 3;
    sub_10008B230();
    sub_100574318();
    v12 = *(v3 + *(v9 + 32));
    v11[15] = 4;
    sub_100009DCC(&qword_1006DFF98, &qword_10057BB20);
    sub_10008B284(&qword_1006DFFA0, &qword_1006DFFA8, &unk_10057DDA4, &protocol conformance descriptor for <A> [A]);
    sub_100574368();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10007A204@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_10056CAA8();
  v24 = *(v4 - 8);
  __chkstk_darwin();
  v25 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009DCC(&qword_1006E32B8, &qword_10057FE48);
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin();
  v8 = &v22 - v7;
  v9 = type metadata accessor for WidgetMusicRecommendation(0);
  __chkstk_darwin();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C8CC(a1, a1[3]);
  sub_10008B1DC();
  v28 = v8;
  sub_100574708();
  if (v2)
  {
    return sub_100010474(a1);
  }

  v12 = v24;
  v35 = 0;
  sub_100082424(&qword_1006DFFB8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v13 = v25;
  sub_1005742D8();
  (*(v12 + 32))(v11, v13, v4);
  v34 = 1;
  v14 = sub_100574278();
  v15 = &v11[v9[5]];
  *v15 = v14;
  v15[1] = v16;
  v33 = 2;
  v17 = sub_100574278();
  v18 = v26;
  v19 = &v11[v9[6]];
  *v19 = v17;
  v19[1] = v20;
  v31 = 3;
  sub_10008B320();
  sub_100574288();
  v11[v9[7]] = v32;
  sub_100009DCC(&qword_1006DFF98, &qword_10057BB20);
  v30 = 4;
  sub_10008B284(&qword_1006DFFC0, &qword_1006DFFC8, &unk_10057DDCC, &protocol conformance descriptor for <A> [A]);
  sub_1005742D8();
  (*(v18 + 8))(v28, v27);
  *&v11[v9[8]] = v29;
  sub_100081FB4(v11, v23, type metadata accessor for WidgetMusicRecommendation);
  sub_100010474(a1);
  return sub_10008201C(v11, type metadata accessor for WidgetMusicRecommendation);
}

uint64_t sub_10007A6E8()
{
  v1 = *v0;
  v2 = 0x7461446863746566;
  v3 = 0x656C746974;
  v4 = 1684957547;
  if (v1 != 3)
  {
    v4 = 0x736D657469;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x617A696C61636F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10007A780@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10008B48C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10007A7A8(uint64_t a1)
{
  v2 = sub_10008B1DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007A7E4(uint64_t a1)
{
  v2 = sub_10008B1DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10007A858(uint64_t a1, char a2)
{
  *(v3 + 144) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  sub_100009DCC(&qword_1006E3028, &qword_10057FA38);
  *(v3 + 32) = swift_task_alloc();
  v4 = sub_1005711D8();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  type metadata accessor for WidgetRecommendationDiskCache(0);
  *(v3 + 72) = swift_task_alloc();
  sub_100009DCC(&qword_1006E0790, &qword_10057C370);
  *(v3 + 80) = swift_task_alloc();
  v5 = type metadata accessor for WidgetMusicRecommendation(0);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 - 8);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_10007AA2C, 0, 0);
}

uint64_t sub_10007AA2C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 24);
  v6 = OBJC_IVAR____TtC12MusicWidgets33RecommendationsWidgetDataProvider_cache;
  *(v0 + 120) = OBJC_IVAR____TtC12MusicWidgets33RecommendationsWidgetDataProvider_cache;
  v7 = *(v0 + 144);
  sub_100081FB4(v5 + v6, v3, type metadata accessor for WidgetRecommendationDiskCache);
  sub_10007B198(v7, v4);
  sub_10008201C(v3, type metadata accessor for WidgetRecommendationDiskCache);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    sub_10001036C(*(v0 + 80), &qword_1006E0790, &qword_10057C370);
    v8 = swift_task_alloc();
    *(v0 + 128) = v8;
    *v8 = v0;
    v8[1] = sub_10007AC5C;
    v9 = *(v0 + 32);
    v10 = *(v0 + 144);

    return sub_10007C2A8(v9, v10);
  }

  else
  {
    v12 = *(v0 + 112);
    v13 = *(v0 + 16);
    sub_10008237C(*(v0 + 80), v12, type metadata accessor for WidgetMusicRecommendation);
    sub_10008237C(v12, v13, type metadata accessor for WidgetMusicRecommendation);
    (*(*(v0 + 96) + 56))(*(v0 + 16), 0, 1, *(v0 + 88));

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_10007AC5C()
{

  return _swift_task_switch(sub_10007AD58, 0, 0);
}

uint64_t sub_10007AD58()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001036C(v3, &qword_1006E3028, &qword_10057FA38);
    (*(v0[12] + 56))(v0[2], 1, 1, v0[11]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[7];
    v6 = v0[8];
    (*(v2 + 32))(v6, v3, v1);
    (*(v2 + 16))(v7, v6, v1);
    v8 = swift_task_alloc();
    v0[17] = v8;
    *v8 = v0;
    v8[1] = sub_10007AF34;
    v9 = v0[13];
    v10 = v0[7];

    return sub_1000794E0(v9, v10);
  }
}

uint64_t sub_10007AF34()
{

  return _swift_task_switch(sub_10007B030, 0, 0);
}

uint64_t sub_10007B030()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[2];
  sub_100081FB4(v0[3] + v0[15], v2, type metadata accessor for WidgetRecommendationDiskCache);
  sub_10007BC28(v1);
  sub_10008201C(v2, type metadata accessor for WidgetRecommendationDiskCache);
  (*(v5 + 8))(v3, v4);
  sub_10008237C(v1, v6, type metadata accessor for WidgetMusicRecommendation);
  (*(v0[12] + 56))(v0[2], 0, 1, v0[11]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10007B198@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v88 = sub_10056CAA8();
  v3 = *(v88 - 8);
  __chkstk_darwin();
  v87 = &v79[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v79[-v5];
  __chkstk_darwin();
  v8 = &v79[-v7];
  sub_100009DCC(&qword_1006E0790, &qword_10057C370);
  __chkstk_darwin();
  v10 = &v79[-v9];
  v11 = type metadata accessor for WidgetMusicRecommendation(0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v86 = &v79[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v84 = &v79[-v14];
  __chkstk_darwin();
  v16 = &v79[-v15];
  LOBYTE(v91[0]) = a1;
  v17 = sub_100572978();
  sub_100070DB0(v17, v18, v10);
  v19 = v11;
  v20 = v12;

  v21 = *(v12 + 48);
  v90 = v19;
  if (v21(v10, 1, v19) == 1)
  {
    sub_10001036C(v10, &qword_1006E0790, &qword_10057C370);
    if (qword_1006DFA18 != -1)
    {
      swift_once();
    }

    v22 = sub_10056DF88();
    sub_10000C49C(v22, qword_1006E2E68);
    v23 = sub_10056DF68();
    v24 = sub_100573448();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v91[0] = v26;
      *v25 = 136446210;
      LOBYTE(v92) = a1;
      v27 = sub_100572978();
      v29 = sub_10008190C(v27, v28, v91);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Cache miss for recommendation kind: %{public}s", v25, 0xCu);
      sub_100010474(v26);
    }

LABEL_29:
    v63 = 1;
    v64 = v89;
    return v20[7](v64, v63, 1, v90);
  }

  sub_10008237C(v10, v16, type metadata accessor for WidgetMusicRecommendation);
  v30 = v8;
  sub_10056CA68();
  v31 = [objc_opt_self() mainBundle];
  v32 = [v31 preferredLocalizations];

  v33 = sub_100572D28();
  if (v33[2])
  {
    v34 = v33[4];
    v35 = v33[5];
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v36 = v88;

  v37 = v30;
  if ((sub_100075E34() & 1) == 0)
  {
    if (qword_1006DFA20 != -1)
    {
      swift_once();
    }

    if (qword_1006FC270)
    {
      sub_1000A680C();
    }
  }

  sub_10056C9D8();
  v38 = sub_10056C9F8();
  v39 = *(v3 + 8);
  v85 = v3 + 8;
  v39(v6, v36);
  v40 = v87;
  if ((v38 & 1) == 0)
  {
    goto LABEL_23;
  }

  v41 = &v16[*(v90 + 20)];
  v42 = v41[1];
  if (!v42)
  {
    if (!v35)
    {
      goto LABEL_31;
    }

LABEL_23:
    v88 = v34;
    if (qword_1006DFA18 != -1)
    {
      swift_once();
    }

    v43 = sub_10056DF88();
    sub_10000C49C(v43, qword_1006E2E68);
    (*(v3 + 16))(v40, v37, v36);
    v44 = v86;
    sub_100081FB4(v16, v86, type metadata accessor for WidgetMusicRecommendation);

    v45 = v40;
    v46 = sub_10056DF68();
    v47 = sub_100573448();
    v83 = v37;
    v48 = v47;

    if (os_log_type_enabled(v46, v48))
    {
      v49 = swift_slowAlloc();
      v84 = v20;
      v50 = v49;
      v82 = swift_slowAlloc();
      v92 = v82;
      *v50 = 136446722;
      sub_100082424(&qword_1006DFD50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v80 = v48;
      v51 = sub_100574408();
      v81 = v39;
      v53 = v52;
      v39(v45, v36);
      v54 = sub_10008190C(v51, v53, &v92);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2082;
      v91[0] = v88;
      v91[1] = v35;
      sub_100009DCC(&qword_1006DFD58, &qword_10057B750);
      v55 = sub_100572978();
      v57 = sub_10008190C(v55, v56, &v92);

      *(v50 + 14) = v57;
      *(v50 + 22) = 2082;
      v58 = sub_100078C40();
      v59 = v36;
      v61 = v60;
      sub_10008201C(v44, type metadata accessor for WidgetMusicRecommendation);
      v62 = sub_10008190C(v58, v61, &v92);

      *(v50 + 24) = v62;
      _os_log_impl(&_mh_execute_header, v46, v80, "Cache miss now %{public}s, expected localization %{public}s, for recommendation: %{public}s", v50, 0x20u);
      swift_arrayDestroy();

      v20 = v84;

      v81(v83, v59);
    }

    else
    {

      sub_10008201C(v44, type metadata accessor for WidgetMusicRecommendation);
      v39(v45, v36);
      v39(v83, v36);
    }

    sub_10008201C(v16, type metadata accessor for WidgetMusicRecommendation);
    goto LABEL_29;
  }

  if (!v35 || (*v41 != v34 || v42 != v35) && (sub_100574498() & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_31:
  if (qword_1006DFA18 != -1)
  {
    swift_once();
  }

  v66 = sub_10056DF88();
  sub_10000C49C(v66, qword_1006E2E68);
  v67 = v84;
  sub_100081FB4(v16, v84, type metadata accessor for WidgetMusicRecommendation);
  v68 = sub_10056DF68();
  v69 = sub_100573448();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v83 = v37;
    v71 = v70;
    v72 = v39;
    v73 = swift_slowAlloc();
    v91[0] = v73;
    *v71 = 136446210;
    v74 = sub_100078C40();
    v76 = v75;
    sub_10008201C(v67, type metadata accessor for WidgetMusicRecommendation);
    v77 = sub_10008190C(v74, v76, v91);

    *(v71 + 4) = v77;
    _os_log_impl(&_mh_execute_header, v68, v69, "Using cached recommendation: %{public}s", v71, 0xCu);
    sub_100010474(v73);

    v72(v83, v88);
  }

  else
  {

    sub_10008201C(v67, type metadata accessor for WidgetMusicRecommendation);
    v39(v37, v88);
  }

  v78 = v89;
  sub_10008237C(v16, v89, type metadata accessor for WidgetMusicRecommendation);
  v64 = v78;
  v63 = 0;
  return v20[7](v64, v63, 1, v90);
}

void sub_10007BC28(uint64_t a1)
{
  v2 = type metadata accessor for WidgetMusicRecommendation(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100009DCC(&qword_1006E0790, &qword_10057C370);
  __chkstk_darwin();
  v7 = &v20[-v6];
  if (*(a1 + *(v2 + 28)) == 6)
  {
    if (qword_1006DFA18 != -1)
    {
      swift_once();
    }

    v8 = sub_10056DF88();
    sub_10000C49C(v8, qword_1006E2E68);
    sub_100081FB4(a1, v5, type metadata accessor for WidgetMusicRecommendation);
    v9 = sub_10056DF68();
    v10 = sub_100573448();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136446210;
      v13 = sub_100078C40();
      v15 = v14;
      sub_10008201C(v5, type metadata accessor for WidgetMusicRecommendation);
      v16 = sub_10008190C(v13, v15, &v21);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unknown kind, unable to save to disk recommendation: %{public}s", v11, 0xCu);
      sub_100010474(v12);
    }

    else
    {

      sub_10008201C(v5, type metadata accessor for WidgetMusicRecommendation);
    }
  }

  else
  {
    v20[7] = *(a1 + *(v2 + 28));
    v17 = sub_100572978();
    v19 = v18;
    sub_100081FB4(a1, v7, type metadata accessor for WidgetMusicRecommendation);
    (*(v3 + 56))(v7, 0, 1, v2);
    sub_1000735A8(v17, v19, v7);

    sub_10001036C(v7, &qword_1006E0790, &qword_10057C370);
  }
}

id sub_10007BF44()
{
  type metadata accessor for RecommendationsWidgetDataProvider(0);
  swift_allocObject();
  result = sub_10007BF84();
  qword_1006FC268 = result;
  return result;
}

id sub_10007BF84()
{
  v1 = v0;
  v2 = sub_100570D58();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006AC28(0x6E656D6D6F636552, 0xEF736E6F69746164, v0 + OBJC_IVAR____TtC12MusicWidgets33RecommendationsWidgetDataProvider_cache);
  (*(v3 + 104))(v5, enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v2);
  sub_100570D68();
  v6 = [objc_opt_self() processInfo];
  v7 = [v6 processName];

  v8 = sub_1005728D8();
  v10 = v9;

  if (v8 == 0x646957636973754DLL && v10 == 0xEC00000073746567)
  {
  }

  else
  {
    v12 = sub_100574498();

    if ((v12 & 1) == 0)
    {
      return v1;
    }
  }

  if (qword_1006DFA18 != -1)
  {
    swift_once();
  }

  v13 = sub_10056DF88();
  sub_10000C49C(v13, qword_1006E2E68);
  v14 = sub_10056DF68();
  v15 = sub_100573448();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "running in widget process, disabling fallback cache", v16, 2u);
  }

  v17 = [objc_opt_self() defaultMediaLibrary];
  if ([v17 artworkDataSource])
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      [v18 setUsesFallbackCache:0];
    }

    swift_unknownObjectRelease();
  }

  result = [objc_opt_self() sharedStoreArtworkDataSource];
  if (result)
  {
    v20 = result;
    [result setUsesFallbackCache:0];

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10007C2A8(uint64_t a1, char a2)
{
  *(v2 + 290) = a2;
  *(v2 + 64) = a1;
  v3 = sub_100009DCC(&qword_1006E3010, &qword_10057FA20);
  *(v2 + 72) = v3;
  *(v2 + 80) = *(v3 - 8);
  *(v2 + 88) = swift_task_alloc();
  v4 = sub_1005712D8();
  *(v2 + 96) = v4;
  *(v2 + 104) = *(v4 - 8);
  *(v2 + 112) = swift_task_alloc();
  sub_100009DCC(&qword_1006E3018, &qword_10057FA28);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  sub_100009DCC(&qword_1006E3020, &qword_10057FA30);
  *(v2 + 136) = swift_task_alloc();
  v5 = sub_100570D78();
  *(v2 + 144) = v5;
  *(v2 + 152) = *(v5 - 8);
  *(v2 + 160) = swift_task_alloc();
  v6 = sub_1005712B8();
  *(v2 + 168) = v6;
  *(v2 + 176) = *(v6 - 8);
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = sub_100009DCC(&qword_1006E3028, &qword_10057FA38);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_10007C55C, 0, 0);
}

uint64_t sub_10007C55C()
{
  v38 = v0;
  if (qword_1006DFA18 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  *(v0 + 224) = sub_10000C49C(v1, qword_1006E2E68);
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 290);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v37 = v6;
    *v5 = 136446210;
    *(v0 + 289) = v4;
    v7 = sub_100572978();
    v9 = sub_10008190C(v7, v8, &v37);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Asking server for %{public}s", v5, 0xCu);
    sub_100010474(v6);
  }

  v10 = *(v0 + 216);
  v12 = *(v0 + 152);
  v11 = *(v0 + 160);
  v13 = *(v0 + 144);
  v14 = *(v0 + 290);
  v15 = sub_1005711D8();
  *(v0 + 232) = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  *(v0 + 240) = v17;
  *(v0 + 248) = (v16 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v17(v10, 1, 1, v15);
  sub_1005712A8();
  (*(v12 + 104))(v11, enum case for MusicDataRequest.Source.widgets(_:), v13);
  sub_100571258();
  v18 = sub_100571118();
  v19 = *(*(v18 - 8) + 104);
  v20 = *(v0 + 136);
  if (v14 <= 2)
  {
    if (v14)
    {
      if (v14 == 1)
      {
        v21 = &enum case for MusicPersonalRecommendation.Kind.madeForYou(_:);
      }

      else
      {
        v21 = &enum case for MusicPersonalRecommendation.Kind.moodsForYou(_:);
      }
    }

    else
    {
      v21 = &enum case for MusicPersonalRecommendation.Kind.topPicks(_:);
    }

    goto LABEL_15;
  }

  if (v14 == 3)
  {
    v21 = &enum case for MusicPersonalRecommendation.Kind.newReleases(_:);
    goto LABEL_15;
  }

  if (v14 == 4)
  {
    v21 = &enum case for MusicPersonalRecommendation.Kind.stationsForYou(_:);
LABEL_15:
    v19(v20, *v21, v18);
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v19(v20, enum case for MusicPersonalRecommendation.Kind.friendsListening(_:), v18);
  sub_100009DCC(&qword_1006E3030, &qword_10057FA40);
  v33 = sub_100571268();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v22 = swift_allocObject();
  *(v22 + 1) = xmmword_10057B510;
  (*(v34 + 104))(v22 + v35, enum case for MusicPersonalRecommendationsRequest.Content.AdditionalContent.friends(_:), v33);
LABEL_16:
  v23 = *(v0 + 128);
  v24 = *(v0 + 136);
  v25 = *(v0 + 96);
  v26 = *(v0 + 104);
  *(v24 + *(sub_100009DCC(&qword_1006E3038, &unk_10057FA48) + 48)) = v22;
  v27 = enum case for MusicPersonalRecommendationsRequest.Content.module(_:);
  v28 = sub_100571278();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v24, v27, v28);
  (*(v29 + 56))(v24, 0, 1, v28);
  sub_100571288();
  v30 = *(v26 + 56);
  *(v0 + 256) = v30;
  *(v0 + 264) = (v26 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v30(v23, 1, 1, v25);
  v31 = swift_task_alloc();
  *(v0 + 272) = v31;
  *v31 = v0;
  v31[1] = sub_10007CA24;
  v32 = *(v0 + 120);

  return MusicPersonalRecommendationsRequest.response()(v32);
}

uint64_t sub_10007CA24()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_10007CF08;
  }

  else
  {
    v2 = sub_10007CB38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007CB38()
{
  v32 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  (*(v0 + 256))(v1, 0, 1, v3);
  sub_10008B71C(v1, v2, &qword_1006E3018, &qword_10057FA28);
  if ((*(v4 + 48))(v2, 1, v3))
  {
    (*(v0 + 240))(*(v0 + 208), 1, 1, *(v0 + 232));
  }

  else
  {
    v5 = *(v0 + 208);
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    (*(v7 + 16))(v6, *(v0 + 128), v8);
    sub_1005712C8();
    (*(v7 + 8))(v6, v8);
    sub_10006E340(&qword_1006E3010, &qword_10057FA20, &qword_1006E3040, &type metadata accessor for MusicPersonalRecommendation, v5);
    (*(v11 + 8))(v9, v10);
  }

  sub_10008B71C(*(v0 + 208), *(v0 + 216), &qword_1006E3028, &qword_10057FA38);
  v12 = sub_10056DF68();
  v13 = sub_100573448();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 216);
    v15 = *(v0 + 200);
    v16 = *(v0 + 176);
    v30 = *(v0 + 184);
    v17 = *(v0 + 168);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v19;
    *v18 = 136446210;
    swift_beginAccess();
    sub_10000CC8C(v14, v15, &qword_1006E3028, &qword_10057FA38);
    v20 = sub_100572978();
    v22 = sub_10008190C(v20, v21, &v31);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "Server returned: %{public}s", v18, 0xCu);
    sub_100010474(v19);

    (*(v16 + 8))(v30, v17);
  }

  else
  {
    v24 = *(v0 + 176);
    v23 = *(v0 + 184);
    v25 = *(v0 + 168);

    (*(v24 + 8))(v23, v25);
  }

  sub_10001036C(*(v0 + 128), &qword_1006E3018, &qword_10057FA28);
  v26 = *(v0 + 216);
  v27 = *(v0 + 64);
  swift_beginAccess();
  sub_10000CC8C(v26, v27, &qword_1006E3028, &qword_10057FA38);
  sub_10001036C(v26, &qword_1006E3028, &qword_10057FA38);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10007CF08()
{
  v17 = v0;
  v1 = *(v0 + 128);
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
  sub_10001036C(v1, &qword_1006E3018, &qword_10057FA28);
  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 290);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v5 = 136446466;
    *(v0 + 288) = v4;
    v8 = sub_100572978();
    v10 = sub_10008190C(v8, v9, &v16);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v11;
    *v6 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Request %{public}s failed with %{public}@", v5, 0x16u);
    sub_10001036C(v6, &qword_1006DFD00, &qword_10057E570);

    sub_100010474(v7);
  }

  else
  {
  }

  v12 = *(v0 + 216);
  v13 = *(v0 + 64);
  swift_beginAccess();
  sub_10000CC8C(v12, v13, &qword_1006E3028, &qword_10057FA38);
  sub_10001036C(v12, &qword_1006E3028, &qword_10057FA38);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10007D1D8()
{
  sub_10008201C(v0 + OBJC_IVAR____TtC12MusicWidgets33RecommendationsWidgetDataProvider_cache, type metadata accessor for WidgetRecommendationDiskCache);

  return swift_deallocClassInstance();
}

uint64_t sub_10007D28C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetDiskCache(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10007D30C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetDiskCache(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t getEnumTagSinglePayload for WidgetMusicRecommendationKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetMusicRecommendationKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10007D4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  v3[5] = swift_task_alloc();
  v4 = sub_10056CAA8();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = sub_1005711A8();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = sub_100571B78();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  sub_100009DCC(&qword_1006E30A0, &qword_10057FB10);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_10007D6FC, 0, 0);
}

uint64_t sub_10007D6FC(uint64_t a1)
{
  v2 = v1[18];
  sub_100571128();
  v3 = sub_100571118();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    goto LABEL_7;
  }

  v5 = v1[17];
  sub_10000CC8C(v1[18], v5, &qword_1006E30A0, &qword_10057FB10);
  if ((*(v4 + 88))(v5, v3) != enum case for MusicPersonalRecommendation.Kind.newReleases(_:))
  {
    (*(v4 + 8))(v1[17], v3);
LABEL_7:
    v19 = sub_100571158();
    v21 = v20;
    goto LABEL_8;
  }

  v6 = v1[13];
  v7 = v1[10];
  v8 = v1[11];
  (*(v8 + 16))(v6, v1[3], v7);
  if ((*(v8 + 88))(v6, v7) != enum case for MusicPersonalRecommendation.Item.album(_:))
  {
    (*(v1[11] + 8))(v1[13], v1[10]);
    goto LABEL_12;
  }

  v10 = v1[15];
  v9 = v1[16];
  v12 = v1[13];
  v11 = v1[14];
  v13 = v1[6];
  v14 = v1[7];
  v15 = v1[5];
  (*(v1[11] + 96))(v12, v1[10]);
  (*(v10 + 32))(v9, v12, v11);
  sub_100571AE8();
  v16 = (*(v14 + 48))(v15, 1, v13);
  v17 = v1[15];
  if (v16 == 1)
  {
    v18 = v1[5];
    (*(v17 + 8))(v1[16], v1[14]);
    sub_10001036C(v18, &unk_1006E1E90, &qword_10057C550);
LABEL_12:
    v19 = 0;
    v21 = 0;
    goto LABEL_8;
  }

  v30 = v1[8];
  v32 = v1[6];
  v31 = v1[7];
  v40 = v1[16];
  v41 = v1[14];
  v39 = v1[9];
  (*(v31 + 32))();
  v33 = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
  isa = sub_10056C9E8().super.isa;
  sub_10056CA68();
  v35 = sub_10056C9E8().super.isa;
  v36 = *(v31 + 8);
  v36(v30, v32);
  v37 = [v33 localizedStringForDate:isa relativeToDate:v35];

  v19 = sub_1005728D8();
  v21 = v38;

  v36(v39, v32);
  (*(v17 + 8))(v40, v41);
LABEL_8:
  v23 = v1[11];
  v22 = v1[12];
  v24 = v1[10];
  v25 = v1[3];
  sub_10001036C(v1[18], &qword_1006E30A0, &qword_10057FB10);
  (*(v23 + 16))(v22, v25, v24);
  v26 = swift_task_alloc();
  v1[19] = v26;
  *v26 = v1;
  v26[1] = sub_10007DAF0;
  v27 = v1[12];
  v28 = v1[2];

  return sub_10007DCE0(v28, v27, v19, v21);
}

uint64_t sub_10007DAF0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10007DCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  sub_100009DCC(&qword_1006E30A8, &unk_10057FB20);
  v4[12] = swift_task_alloc();
  v5 = sub_10056D5A8();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  type metadata accessor for ArtworkImage.Placeholder(0);
  v4[16] = swift_task_alloc();
  sub_100009DCC(&unk_1006DFD20, &unk_10057B720);
  v4[17] = swift_task_alloc();
  v6 = sub_10056C8A8();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = sub_100571F08();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  sub_10056CC38();
  v4[24] = swift_task_alloc();
  sub_100572888();
  v4[25] = swift_task_alloc();
  sub_100572868();
  v4[26] = swift_task_alloc();
  sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v8 = sub_10056CAA8();
  v4[30] = v8;
  v4[31] = *(v8 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v9 = sub_1005721C8();
  v4[34] = v9;
  v4[35] = *(v9 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = sub_100009DCC(&qword_1006E30B0, &qword_10057FB30);
  v4[38] = swift_task_alloc();
  sub_100009DCC(&qword_1006E30B8, &qword_10057FB38);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v10 = sub_1005722D8();
  v4[42] = v10;
  v4[43] = *(v10 - 8);
  v4[44] = swift_task_alloc();
  v11 = sub_100571B78();
  v4[45] = v11;
  v4[46] = *(v11 - 8);
  v4[47] = swift_task_alloc();
  v12 = sub_1005711A8();
  v4[48] = v12;
  v4[49] = *(v12 - 8);
  v4[50] = swift_task_alloc();

  return _swift_task_switch(sub_10007E230, 0, 0);
}

uint64_t sub_10007E230()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[48];
  (*(v2 + 16))(v1, v0[9], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for MusicPersonalRecommendation.Item.album(_:))
  {
    v5 = v0[50];
    v6 = v0[47];
    v8 = v0[45];
    v7 = v0[46];
    (*(v0[49] + 96))(v5, v0[48]);
    (*(v7 + 32))(v6, v5, v8);
    v9 = sub_100571B28();
    v11 = v10;
    v12 = sub_100571AC8();
    v14 = v13;
    v15 = sub_100571198();
    v17 = v16;
    (*(v7 + 8))(v6, v8);
    goto LABEL_19;
  }

  if (v4 == enum case for MusicPersonalRecommendation.Item.playlist(_:))
  {
    v18 = v0[50];
    v20 = v0[43];
    v19 = v0[44];
    v22 = v0[41];
    v21 = v0[42];
    v23 = v0[40];
    v24 = v0[38];
    v107 = v0[37];
    v26 = v0[34];
    v25 = v0[35];
    (*(v0[49] + 96))(v18, v0[48]);
    (*(v20 + 32))(v19, v18, v21);
    v114 = sub_1005721A8();
    v112 = v27;
    v110 = sub_100572158();
    v113 = v28;
    sub_1005721D8();
    (*(v25 + 104))(v23, enum case for Playlist.Kind.personalMix(_:), v26);
    (*(v25 + 56))(v23, 0, 1, v26);
    v29 = *(v107 + 48);
    sub_10000CC8C(v22, v24, &qword_1006E30B8, &qword_10057FB38);
    sub_10000CC8C(v23, v24 + v29, &qword_1006E30B8, &qword_10057FB38);
    v30 = *(v25 + 48);
    if (v30(v24, 1, v26) == 1)
    {
      v31 = v0[41];
      v32 = v0[34];
      sub_10001036C(v0[40], &qword_1006E30B8, &qword_10057FB38);
      sub_10001036C(v31, &qword_1006E30B8, &qword_10057FB38);
      v33 = v30(v24 + v29, 1, v32);
      v12 = v110;
      v14 = v113;
      if (v33 == 1)
      {
        sub_10001036C(v0[38], &qword_1006E30B8, &qword_10057FB38);
        v9 = v114;
LABEL_15:
        v57 = v0[30];
        v58 = v0[31];
        v59 = v0[29];
        sub_100572198();
        if ((*(v58 + 48))(v59, 1, v57) != 1)
        {
          v109 = v0[42];
          v111 = v0[44];
          v92 = v0[32];
          v94 = v0[30];
          v93 = v0[31];
          v105 = v0[33];
          v106 = v0[43];
          v104 = v94;
          (*(v93 + 32))();
          v95 = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
          [v95 setUnitsStyle:0];
          [v95 setDateTimeStyle:1];
          isa = sub_10056C9E8().super.isa;
          sub_10056CA68();
          v97 = sub_10056C9E8().super.isa;
          v98 = *(v93 + 8);
          v98(v92, v94);
          v99 = [v95 localizedStringForDate:isa relativeToDate:v97];

          v100 = sub_1005728D8();
          v102 = v101;

          sub_100572858();
          v116._countAndFlagsBits = 0x2064657461647055;
          v116._object = 0xE800000000000000;
          sub_100572848(v116);
          v117._countAndFlagsBits = v100;
          v117._object = v102;
          sub_100572838(v117);
          v9 = v114;

          v118._countAndFlagsBits = 0;
          v118._object = 0xE000000000000000;
          sub_100572848(v118);
          sub_100572878();
          sub_10056CBC8();
          v15 = sub_100572948();
          v17 = v103;

          v98(v105, v104);
          v14 = v113;
          (*(v106 + 8))(v111, v109);
          goto LABEL_18;
        }

        sub_10001036C(v0[29], &unk_1006E1E90, &qword_10057C550);
LABEL_17:
        v61 = v0[43];
        v60 = v0[44];
        v62 = v0[42];
        v15 = sub_100571198();
        v17 = v63;
        (*(v61 + 8))(v60, v62);
LABEL_18:
        v11 = v112;
        goto LABEL_19;
      }
    }

    else
    {
      v42 = v0[34];
      sub_10000CC8C(v0[38], v0[39], &qword_1006E30B8, &qword_10057FB38);
      v43 = v30(v24 + v29, 1, v42);
      v45 = v0[40];
      v44 = v0[41];
      v46 = v0[39];
      if (v43 != 1)
      {
        v52 = v0[38];
        v54 = v0[35];
        v53 = v0[36];
        v55 = v0[34];
        (*(v54 + 32))(v53, v24 + v29, v55);
        sub_100082424(&qword_1006E30C8, &type metadata accessor for Playlist.Kind, &protocol conformance descriptor for Playlist.Kind);
        v108 = sub_1005727E8();
        v56 = *(v54 + 8);
        v56(v53, v55);
        sub_10001036C(v45, &qword_1006E30B8, &qword_10057FB38);
        sub_10001036C(v44, &qword_1006E30B8, &qword_10057FB38);
        v56(v46, v55);
        sub_10001036C(v52, &qword_1006E30B8, &qword_10057FB38);
        v14 = v113;
        v9 = v114;
        v12 = v110;
        if ((v108 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      v47 = v0[34];
      v48 = v0[35];
      sub_10001036C(v0[40], &qword_1006E30B8, &qword_10057FB38);
      sub_10001036C(v44, &qword_1006E30B8, &qword_10057FB38);
      (*(v48 + 8))(v46, v47);
      v12 = v110;
      v14 = v113;
    }

    sub_10001036C(v0[38], &qword_1006E30B0, &qword_10057FB30);
    v9 = v114;
    goto LABEL_17;
  }

  v34 = v0[49];
  v35 = v0[50];
  v36 = v0[48];
  if (v4 == enum case for MusicPersonalRecommendation.Item.station(_:))
  {
    v38 = v0[22];
    v37 = v0[23];
    v39 = v0[21];
    (*(v34 + 96))(v0[50], v0[48]);
    (*(v38 + 32))(v37, v35, v39);
    v9 = _s8MusicKit7StationV0A4CoreE9catalogIDAA0a4ItemF0VSgvg_0();
    v11 = v40;
    v15 = sub_100571198();
    v17 = v41;
    (*(v38 + 8))(v37, v39);
  }

  else
  {
    v9 = sub_100571168();
    v50 = v49;
    v15 = sub_100571198();
    v17 = v51;
    (*(v34 + 8))(v35, v36);
    v11 = v50;
  }

  v12 = 0;
  v14 = 0;
LABEL_19:
  v0[53] = v15;
  v0[54] = v17;
  v0[2] = v9;
  v0[3] = v11;
  v0[51] = v12;
  v0[52] = v14;
  v64 = v0[20];
  v65 = v0[17];
  v0[4] = sub_100571178();
  v0[5] = v66;
  sub_10007F894(v64);
  sub_100571188();
  v67 = sub_100571E58();
  v0[55] = v67;
  v68 = *(v67 - 8);
  v0[56] = v68;
  if ((*(v68 + 48))(v65, 1, v67) == 1)
  {
    sub_10001036C(v0[17], &unk_1006DFD20, &unk_10057B720);
    v0[59] = 0;
    v69 = v0[15];
    v70 = v0[13];
    v71 = v0[14];
    v72 = v0[12];
    sub_100081080(v0[16]);
    sub_100571148();
    v0[6] = sub_10056D578();
    v0[7] = v73;
    (*(v71 + 8))(v69, v70);
    sub_100571138();
    v74 = sub_100009DCC(&qword_1006E30C0, &qword_10057FB40);
    if ((*(*(v74 - 8) + 48))(v72, 1, v74) == 1)
    {
      sub_10001036C(v0[12], &qword_1006E30A8, &unk_10057FB20);
      v75 = v0[6];
      v76 = v0[7];
      v77 = v0[4];
      v78 = v0[5];
      v79 = v0[2];
      v80 = v0[3];
      v0[63] = _swiftEmptyArrayStorage;
      v0[64] = v76;
      v0[65] = v75;
      v0[66] = v78;
      v0[67] = v77;
      v0[68] = v80;
      v0[69] = v79;
      v0[70] = sub_100080088();
      v81 = swift_task_alloc();
      v0[71] = v81;
      *v81 = v0;
      v81[1] = sub_10007F334;

      return sub_10008066C();
    }

    else
    {
      v84 = sub_1000745E4(3, &qword_1006E30C0, &qword_10057FB40, &qword_1006E30F0);
      v86 = v85;
      v88 = v87;
      v90 = v89;
      v0[60] = v84;
      v91 = swift_task_alloc();
      v0[61] = v91;
      *v91 = v0;
      v91[1] = sub_10007F12C;

      return sub_10006DEB8(&unk_10057FB50, 0, v84, v86, v88, v90);
    }
  }

  else
  {
    v83 = swift_task_alloc();
    v0[57] = v83;
    *v83 = v0;
    v83[1] = sub_10007ED4C;

    return sub_10003E58C(50.0);
  }
}

uint64_t sub_10007ED4C(uint64_t a1)
{
  v2 = *(*v1 + 448);
  v3 = *(*v1 + 440);
  v4 = *(*v1 + 136);
  *(*v1 + 464) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_10007EEAC, 0, 0);
}

uint64_t sub_10007EEAC(uint64_t a1)
{
  v1[59] = v1[58];
  v2 = v1[15];
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[12];
  sub_100081080(v1[16]);
  sub_100571148();
  v1[6] = sub_10056D578();
  v1[7] = v6;
  (*(v4 + 8))(v2, v3);
  sub_100571138();
  v7 = sub_100009DCC(&qword_1006E30C0, &qword_10057FB40);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_10001036C(v1[12], &qword_1006E30A8, &unk_10057FB20);
    v8 = v1[6];
    v9 = v1[7];
    v10 = v1[4];
    v11 = v1[5];
    v12 = v1[2];
    v13 = v1[3];
    v1[63] = _swiftEmptyArrayStorage;
    v1[64] = v9;
    v1[65] = v8;
    v1[66] = v11;
    v1[67] = v10;
    v1[68] = v13;
    v1[69] = v12;
    v1[70] = sub_100080088();
    v14 = swift_task_alloc();
    v1[71] = v14;
    *v14 = v1;
    v14[1] = sub_10007F334;

    return sub_10008066C();
  }

  else
  {
    v16 = sub_1000745E4(3, &qword_1006E30C0, &qword_10057FB40, &qword_1006E30F0);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v1[60] = v16;
    v23 = swift_task_alloc();
    v1[61] = v23;
    *v23 = v1;
    v23[1] = sub_10007F12C;

    return sub_10006DEB8(&unk_10057FB50, 0, v16, v18, v20, v22);
  }
}

uint64_t sub_10007F12C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    swift_unknownObjectRelease();
    *(v4 + 496) = a1;

    return _swift_task_switch(sub_10007F270, 0, 0);
  }
}

uint64_t sub_10007F270(uint64_t a1)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v1[63] = v1[62];
  v1[64] = v3;
  v1[65] = v2;
  v1[66] = v5;
  v1[67] = v4;
  v1[68] = v7;
  v1[69] = v6;
  v1[70] = sub_100080088();
  v8 = swift_task_alloc();
  v1[71] = v8;
  *v8 = v1;
  v8[1] = sub_10007F334;

  return sub_10008066C();
}

uint64_t sub_10007F334(char a1)
{
  *(*v1 + 576) = a1;

  return _swift_task_switch(sub_10007F434, 0, 0);
}

uint64_t sub_10007F434()
{
  v36 = *(v0 + 576);
  v35 = *(v0 + 560);
  v29 = *(v0 + 544);
  v30 = *(v0 + 552);
  v24 = *(v0 + 528);
  v25 = *(v0 + 536);
  v31 = *(v0 + 512);
  v32 = *(v0 + 520);
  v22 = *(v0 + 424);
  v23 = *(v0 + 432);
  v27 = *(v0 + 408);
  v28 = *(v0 + 416);
  v39 = *(v0 + 504);
  v37 = *(v0 + 392);
  v38 = *(v0 + 384);
  v40 = *(v0 + 472);
  v1 = *(v0 + 240);
  v21 = *(v0 + 80);
  v26 = *(v0 + 224);
  v2 = *(v0 + 216);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 64);
  v33 = *(v0 + 72);
  v8 = *(*(v0 + 248) + 56);
  v8();
  (v8)(v2, 1, 1, v1);
  v9 = type metadata accessor for WidgetMusicItem(0);
  v34 = v9[25];
  *(v7 + v34) = 0;
  *(v7 + v9[26]) = _swiftEmptyArrayStorage;
  *v7 = v21;
  *(v7 + 16) = v25;
  *(v7 + 24) = v24;
  *(v7 + 32) = v22;
  *(v7 + 40) = v23;
  (*(v4 + 16))(v7 + v9[7], v3, v5);
  sub_100081FB4(v6, v7 + v9[23], type metadata accessor for ArtworkImage.Placeholder);
  *(v7 + v9[24]) = 0x3FF0000000000000;
  *(v7 + v9[8]) = 8;
  v10 = (v7 + v9[9]);
  *v10 = v30;
  v10[1] = v29;
  v11 = (v7 + v9[10]);
  *v11 = v27;
  v11[1] = v28;
  v12 = (v7 + v9[11]);
  *v12 = v32;
  v12[1] = v31;
  v13 = (v7 + v9[12]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v7 + v9[13]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v7 + v9[14]);
  *v15 = 0;
  v15[1] = 0;
  *(v7 + v9[15]) = v35;
  *(v7 + v9[16]) = v36;
  sub_10000CC8C(v26, v7 + v9[17], &unk_1006E1E90, &qword_10057C550);
  sub_10000CC8C(v2, v7 + v9[18], &unk_1006E1E90, &qword_10057C550);
  v16 = (v7 + v9[19]);
  *v16 = 0;
  v16[1] = 0;
  *(v7 + v9[20]) = _swiftEmptyArrayStorage;
  v17 = v7 + v9[21];
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  *(v17 + 24) = 1;
  v18 = v7 + v9[22];
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  *(v18 + 24) = 1;
  sub_1000396D8(v39);
  (*(v37 + 8))(v33, v38);
  sub_10001036C(v2, &unk_1006E1E90, &qword_10057C550);
  sub_10001036C(v26, &unk_1006E1E90, &qword_10057C550);
  sub_10008201C(v6, type metadata accessor for ArtworkImage.Placeholder);
  (*(v4 + 8))(v3, v5);
  *(v7 + v34) = v40;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10007F894@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = sub_100571F08();
  v47 = *(v1 - 8);
  v48 = v1;
  __chkstk_darwin();
  v46 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005722D8();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin();
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v44 = &v43 - v8;
  __chkstk_darwin();
  v45 = &v43 - v9;
  __chkstk_darwin();
  v11 = &v43 - v10;
  __chkstk_darwin();
  v13 = &v43 - v12;
  v14 = sub_100571B78();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005711A8();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin();
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, v52, v18, v20);
  v23 = (*(v19 + 88))(v22, v18);
  if (v23 == enum case for MusicPersonalRecommendation.Item.album(_:))
  {
    (*(v19 + 96))(v22, v18);
    (*(v15 + 32))(v17, v22, v14);
    sub_100571B38();
    v24 = sub_10056C8A8();
    v25 = *(v24 - 8);
    v26 = *(v25 + 48);
    if (v26(v13, 1, v24) == 1)
    {
      v27 = sub_100571B28();
      sub_1000B3260(v27, v51, v28);

      (*(v15 + 8))(v17, v14);
      result = v26(v13, 1, v24);
      if (result != 1)
      {
        return sub_10001036C(v13, qword_1006E1D50, &qword_10057CA90);
      }
    }

    else
    {
      (*(v15 + 8))(v17, v14);
      return (*(v25 + 32))(v51, v13, v24);
    }

    return result;
  }

  if (v23 == enum case for MusicPersonalRecommendation.Item.playlist(_:))
  {
    (*(v19 + 96))(v22, v18);
    v31 = v49;
    v30 = v50;
    (*(v49 + 32))(v5, v22, v50);
    sub_1005721B8();
    v32 = sub_10056C8A8();
    v33 = *(v32 - 8);
    v34 = *(v33 + 48);
    if (v34(v11, 1, v32) == 1)
    {
      v35 = sub_1005721A8();
      sub_1000B30D8(v35, v51, v36);

      (*(v31 + 8))(v5, v30);
      goto LABEL_13;
    }

    (*(v31 + 8))(v5, v30);
    return (*(v33 + 32))(v51, v11, v32);
  }

  if (v23 != enum case for MusicPersonalRecommendation.Item.station(_:))
  {
    sub_10056C868();
    v41 = sub_10056C8A8();
    v42 = *(v41 - 8);
    result = (*(v42 + 48))(v7, 1, v41);
    if (result != 1)
    {
      (*(v42 + 32))(v51, v7, v41);
      return (*(v19 + 8))(v22, v18);
    }

    __break(1u);
    goto LABEL_22;
  }

  (*(v19 + 96))(v22, v18);
  v38 = v46;
  v37 = v47;
  v39 = v48;
  (*(v47 + 32))(v46, v22, v48);
  v11 = v45;
  sub_100571ED8();
  v32 = sub_10056C8A8();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  if (v34(v11, 1, v32) != 1)
  {
    (*(v37 + 8))(v38, v39);
    return (*(v33 + 32))(v51, v11, v32);
  }

  v40 = v44;
  sub_10056C868();
  result = (v34)(v40, 1, v32);
  if (result == 1)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  (*(v37 + 8))(v38, v39);
  (*(v33 + 32))(v51, v40, v32);
LABEL_13:
  result = (v34)(v11, 1, v32);
  if (result != 1)
  {
    return sub_10001036C(v11, qword_1006E1D50, &qword_10057CA90);
  }

  return result;
}

void *sub_100080088()
{
  v1 = v0;
  v2 = sub_100571F08();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin();
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005722D8();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006DFD38, &unk_10057F0D0);
  __chkstk_darwin();
  v8 = &v30 - v7;
  sub_100009DCC(&qword_1006DFD40, &unk_10057B740);
  __chkstk_darwin();
  v10 = &v30 - v9;
  v11 = sub_100571B78();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1005711A8();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin();
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v1, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == enum case for MusicPersonalRecommendation.Item.album(_:))
  {
    (*(v16 + 96))(v19, v15);
    (*(v12 + 32))(v14, v19, v11);
    sub_100009DCC(&qword_1006DFD48, &unk_10057F0E0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10057B500;
    sub_100571B08();
    *(v21 + 32) = TextBadge.init(for:isPlayable:)(v10, 1);
    sub_100571A88();
    v22 = sub_10056D558();
    (*(*(v22 - 8) + 56))(v8, 0, 1, v22);
    *(v21 + 33) = TextBadge.init(for:)(v8);
    (*(v12 + 8))(v14, v11);
  }

  else if (v20 == enum case for MusicPersonalRecommendation.Item.playlist(_:))
  {
    (*(v16 + 96))(v19, v15);
    v24 = v34;
    v23 = v35;
    (*(v34 + 32))(v6, v19, v35);
    sub_100009DCC(&qword_1006DFD48, &unk_10057F0E0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10057B500;
    sub_100572068();
    *(v21 + 32) = TextBadge.init(for:isPlayable:)(v10, 1);
    sub_100572078();
    v25 = sub_10056D558();
    (*(*(v25 - 8) + 56))(v8, 0, 1, v25);
    *(v21 + 33) = TextBadge.init(for:)(v8);
    (*(v24 + 8))(v6, v23);
  }

  else if (v20 == enum case for MusicPersonalRecommendation.Item.station(_:))
  {
    (*(v16 + 96))(v19, v15);
    v26 = v31;
    v27 = v32;
    v28 = v33;
    (*(v32 + 32))(v31, v19, v33);
    sub_100009DCC(&qword_1006DFD48, &unk_10057F0E0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10057B510;
    sub_100571EB8();
    *(v21 + 32) = TextBadge.init(for:isPlayable:)(v10, 1);
    (*(v27 + 8))(v26, v28);
  }

  else
  {
    (*(v16 + 8))(v19, v15);
    return _swiftEmptyArrayStorage;
  }

  return v21;
}

uint64_t sub_10008066C()
{
  v1[8] = v0;
  v2 = sub_100571F08();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_1005722D8();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v4 = sub_100571B78();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v5 = sub_1005711A8();
  v1[18] = v5;
  v1[19] = *(v5 - 8);
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_100080840, 0, 0);
}

uint64_t sub_100080840()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(v2 + 16))(v1, v0[8], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for MusicPersonalRecommendation.Item.album(_:))
  {
    v5 = v0[20];
    v6 = v0[17];
    v7 = v0[15];
    v8 = v0[16];
    (*(v0[19] + 96))(v5, v0[18]);
    (*(v8 + 32))(v6, v5, v7);
    v24 = sub_100075004;
    v9 = swift_task_alloc();
    v0[21] = v9;
    *v9 = v0;
    v9[1] = sub_100080B54;
LABEL_7:

    return v24();
  }

  if (v4 == enum case for MusicPersonalRecommendation.Item.playlist(_:))
  {
    v10 = v0[20];
    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[12];
    (*(v0[19] + 96))(v10, v0[18]);
    (*(v12 + 32))(v11, v10, v13);
    v24 = sub_100074DBC;
    v14 = swift_task_alloc();
    v0[22] = v14;
    *v14 = v0;
    v14[1] = sub_100080D0C;
    goto LABEL_7;
  }

  v15 = v0[19];
  v16 = v0[20];
  v17 = v0[18];
  if (v4 == enum case for MusicPersonalRecommendation.Item.station(_:))
  {
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[9];
    (*(v15 + 96))(v0[20], v17);
    (*(v19 + 32))(v18, v16, v20);
    v24 = sub_100074B74;
    v21 = swift_task_alloc();
    v0[23] = v21;
    *v21 = v0;
    v21[1] = sub_100080EC4;
    goto LABEL_7;
  }

  (*(v15 + 8))(v0[20], v17);

  v23 = v0[1];

  return v23(0);
}

uint64_t sub_100080B54(char a1)
{
  v2 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 16) = v1;

  return _swift_task_switch(sub_100080C58, 0, 0);
}

uint64_t sub_100080C58()
{
  v1 = *(v0 + 24);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100080D0C(char a1)
{
  v2 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 32) = v1;

  return _swift_task_switch(sub_100080E10, 0, 0);
}

uint64_t sub_100080E10()
{
  v1 = *(v0 + 40);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100080EC4(char a1)
{
  v2 = *v1;
  *(v2 + 56) = a1;
  *(v2 + 48) = v1;

  return _swift_task_switch(sub_100080FC8, 0, 0);
}

uint64_t sub_100080FC8()
{
  v1 = *(v0 + 56);
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100081080@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1005722D8();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005711A8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v2, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == enum case for MusicPersonalRecommendation.Item.album(_:))
  {
    v14 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
    (*(*(v14 - 8) + 56))(a1, 1, 11, v14);
    return (*(v9 + 8))(v12, v8);
  }

  else if (v13 == enum case for MusicPersonalRecommendation.Item.playlist(_:))
  {
    (*(v9 + 96))(v12, v8);
    (*(v5 + 32))(v7, v12, v4);
    sub_100572148();
    (*(v5 + 8))(v7, v4);
    v16 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
    return (*(*(v16 - 8) + 56))(a1, 0, 11, v16);
  }

  else
  {
    v17 = enum case for MusicPersonalRecommendation.Item.station(_:);
    v18 = v13;
    v19 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
    if (v18 == v17)
    {
      v20 = 9;
    }

    else
    {
      v20 = 1;
    }

    (*(*(v19 - 8) + 56))(a1, v20, 11, v19);
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_1000813B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_100009DCC(&unk_1006DFD20, &unk_10057B720);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100081450, 0, 0);
}

uint64_t sub_100081450()
{
  v1 = *(v0 + 32);
  sub_10056D9D8();
  v2 = sub_100571E58();
  *(v0 + 40) = v2;
  v3 = *(v2 - 8);
  *(v0 + 48) = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10001036C(*(v0 + 32), &unk_1006DFD20, &unk_10057B720);
    **(v0 + 16) = 0;

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 56) = v6;
    *v6 = v0;
    v6[1] = sub_1000815A8;

    return sub_10003E58C(18.0);
  }
}

uint64_t sub_1000815A8(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_100081708, 0, 0);
}

uint64_t sub_100081708()
{
  **(v0 + 16) = *(v0 + 64);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100081778()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006E2E68);
  sub_10000C49C(v0, qword_1006E2E68);
  return static Logger.music(_:)(0xD000000000000021, 0x800000010057F980);
}

uint64_t sub_1000817DC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100081828(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_1000818B0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_10008190C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_10008190C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000819D8(v11, 0, 0, 1, a1, a2);
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

unint64_t sub_1000819D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100081AE4(a5, a6);
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

void *sub_100081AE4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100081B30(a1, a2);
  sub_100081C60(&off_100680018);
  return v3;
}

void *sub_100081B30(uint64_t a1, unint64_t a2)
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

  v6 = sub_100081D4C(v5, 0);
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
        v7 = sub_100081D4C(v10, 0);
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

uint64_t sub_100081C60(uint64_t result)
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

  result = sub_100081DC0(result, v11, 1, v3);
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

void *sub_100081D4C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100009DCC(&qword_1006E3048, &unk_10057FA58);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100081DC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006E3048, &unk_10057FA58);
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

_BYTE **sub_100081EB4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100081EC4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100081F38(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100081FB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008201C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10008207C()
{
  v1 = *(sub_100009DCC(&qword_1006E0790, &qword_10057C370) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for WidgetDiskCache(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v17 = *(*(v4 - 8) + 64);
  v7 = sub_10056C8A8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v0 + v2;
  v11 = type metadata accessor for WidgetMusicRecommendation(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = sub_10056CAA8();
    (*(*(v12 - 8) + 8))(v10, v12);
  }

  v13 = v0 + v6;
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  v14 = *(v4 + 24);
  v15 = sub_10056DF88();
  (*(*(v15 - 8) + 8))(v13 + v14, v15);

  (*(v8 + 8))(v0 + ((((v17 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9), v7);

  return swift_deallocObject();
}

uint64_t sub_10008237C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008240C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100082424(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10008246C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000824C0()
{
  v1 = sub_1005711D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100082548(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_1005711D8() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000CB98;

  return sub_10007D4EC(a1, a2, v2 + v7);
}

uint64_t sub_10008262C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v15;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v8[10] = a2;
  v8[11] = a3;
  v8[18] = *(sub_100009DCC(&qword_1006E0618, &unk_10057C230) - 8);
  v8[19] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3080, &qword_10057FAC8);
  v8[20] = swift_task_alloc();
  v9 = sub_100009DCC(&qword_1006E3088, &unk_10057FAD0);
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v10 = sub_100571C48();
  v8[24] = v10;
  v11 = *(v10 - 8);
  v8[25] = v11;
  v8[26] = *(v11 + 64);
  v8[27] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD60, &qword_10057B758);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v12 = sub_100009DCC(&qword_1006E3188, &qword_10057FCB0);
  v8[30] = v12;
  v8[31] = *(v12 - 8);
  v8[32] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3190, &qword_10057FCB8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();

  return _swift_task_switch(sub_1000828FC, 0, 0);
}

uint64_t sub_1000828FC()
{
  v2 = *(v1 + 248);
  v44 = *(v1 + 240);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112) >> 1;
  v41 = (v2 + 48);
  v42 = (v2 + 56);
  v43 = *(v1 + 200);
  swift_unknownObjectRetain();
  v39 = v4;
  v40 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      v5 = 1;
      v6 = v4;
    }

    else
    {
      if (v3 >= v4 || v3 < *(v1 + 104))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v7 = *(v1 + 256);
      v8 = *(v1 + 192);
      v9 = *(v1 + 96) + *(v43 + 72) * v3;
      v10 = *(v44 + 48);
      *v7 = v40;
      (*(v43 + 16))(&v7[v10], v9, v8);
      v11 = __OFADD__(v40, 1);
      v0 = ++v40;
      if (v11)
      {
        goto LABEL_23;
      }

      v6 = v3 + 1;
      sub_100019B40(*(v1 + 256), *(v1 + 264), &qword_1006E3188, &qword_10057FCB0);
      v5 = 0;
    }

    v13 = *(v1 + 264);
    v12 = *(v1 + 272);
    v14 = *(v1 + 240);
    (*v42)(v13, v5, 1, v14);
    sub_100019B40(v13, v12, &qword_1006E3190, &qword_10057FCB8);
    if ((*v41)(v12, 1, v14) == 1)
    {
      break;
    }

    v50 = v6;
    v15 = *(v1 + 272);
    v16 = *(v1 + 232);
    v46 = v16;
    v49 = *(v1 + 224);
    v17 = *(v1 + 216);
    v18 = *(v1 + 192);
    v45 = v18;
    v19 = *(v1 + 128);
    v48 = *(v1 + 120);
    v47 = *v15;
    v20 = *(v44 + 48);
    v21 = sub_100572F48();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v16, 1, 1, v21);
    v23 = *(v43 + 32);
    v23(v17, v15 + v20, v18);
    v24 = (*(v43 + 80) + 56) & ~*(v43 + 80);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v47;
    v25[5] = v48;
    v25[6] = v19;
    v23(v25 + v24, v17, v45);
    v26 = v21;
    sub_10000CC8C(v46, v49, &qword_1006DFD60, &qword_10057B758);
    LODWORD(v21) = (*(v22 + 48))(v49, 1, v21);

    v27 = *(v1 + 224);
    if (v21 == 1)
    {
      sub_10001036C(*(v1 + 224), &qword_1006DFD60, &qword_10057B758);
    }

    else
    {
      sub_100572F38();
      (*(v22 + 8))(v27, v26);
    }

    if (v25[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v28 = sub_100572E78();
      v30 = v29;
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v3 = v50;
    v31 = **(v1 + 80);

    sub_100009DCC(&qword_1006E3078, &qword_10057FAB8);
    v32 = v30 | v28;
    if (v30 | v28)
    {
      v32 = v1 + 16;
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *(v1 + 32) = v28;
      *(v1 + 40) = v30;
    }

    v0 = *(v1 + 232);
    *(v1 + 48) = 1;
    *(v1 + 56) = v32;
    *(v1 + 64) = v31;
    swift_task_create();

    sub_10001036C(v0, &qword_1006DFD60, &qword_10057B758);
    v4 = v39;
  }

  v33 = *(v1 + 136);
  swift_unknownObjectRelease();
  *(v1 + 280) = sub_100009DCC(&qword_1006E3078, &qword_10057FAB8);
  sub_100009DCC(&qword_1006E1C08, &qword_10057F100);
  sub_100572FE8();
  v0 = *v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v33 = v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_19;
  }

LABEL_24:
  v0 = sub_10008890C(v0);
LABEL_19:
  **(v1 + 136) = v0;
  v35 = swift_task_alloc();
  *(v1 + 288) = v35;
  *v35 = v1;
  v35[1] = sub_100082E4C;
  v36 = *(v1 + 160);
  v37 = *(v1 + 168);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v36, 0, 0, v37, v1 + 72);
}

uint64_t sub_100082E4C()
{

  if (v0)
  {
    v1 = sub_10008B9C8;
  }

  else
  {
    v1 = sub_100082F5C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100082F5C()
{
  v1 = v0[35];
  v2 = v0[20];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) != 1)
  {
    v5 = v0[19];
    v6 = v0[17];
    v7 = *v2;
    sub_10008237C(v2 + *(v1 + 48), v5, type metadata accessor for WidgetMusicItem);
    v8 = type metadata accessor for WidgetMusicItem(0);
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    v9 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v0[17];
      isUniquelyReferenced_nonNull_native = sub_10008890C(v9);
      v9 = isUniquelyReferenced_nonNull_native;
      *v16 = isUniquelyReferenced_nonNull_native;
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v7 < v9[2])
        {
          sub_10008B71C(v0[19], v9 + ((*(v0[18] + 80) + 32) & ~*(v0[18] + 80)) + *(v0[18] + 72) * v7, &qword_1006E0618, &unk_10057C230);
          v15 = swift_task_alloc();
          v0[36] = v15;
          *v15 = v0;
          v15[1] = sub_100082E4C;
          isUniquelyReferenced_nonNull_native = v0[20];
          v13 = v0[21];
          v14 = v0 + 9;
          v11 = 0;
          v12 = 0;

          return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
        }

LABEL_13:
        __break(1u);
        return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  (*(v0[22] + 8))(v0[23], v0[21]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100083208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[12] = a2;
  v7 = sub_100009DCC(&qword_1006E31C0, &qword_10057FD10);
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD60, &qword_10057B758);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return _swift_task_switch(sub_100083320, 0, 0);
}

uint64_t sub_100083320()
{
  v1 = v0[13];
  v36 = *(v1 + 16);
  if (v36)
  {
    v31 = v0 + 2;
    v34 = v1 + 32;
    v35 = *v0[12];
    v2 = sub_100572F48();
    v3 = 0;
    v4 = *(v2 - 8);
    v33 = *(v4 + 56);
    v32 = (v4 + 48);
    v30 = (v4 + 8);
    v5 = &qword_1006DFD60;
    do
    {
      v8 = v0[20];
      v7 = v0[21];
      v10 = v0[14];
      v9 = v0[15];
      v11 = v0;
      v12 = v5;
      v13 = *(v34 + v3);
      v33(v7, 1, 1, v2);
      v14 = swift_allocObject();
      v15 = v3;
      *(v14 + 16) = 0;
      v16 = (v14 + 16);
      *(v14 + 24) = 0;
      *(v14 + 32) = v15;
      v37 = v15;
      *(v14 + 40) = v10;
      *(v14 + 48) = v9;
      *(v14 + 56) = v13;
      v5 = v12;
      v0 = v11;
      sub_10000CC8C(v7, v8, v5, &qword_10057B758);
      LODWORD(v8) = (*v32)(v8, 1, v2);

      v17 = v11[20];
      if (v8 == 1)
      {
        sub_10001036C(v11[20], v5, &qword_10057B758);
        if (*v16)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_100572F38();
        (*v30)(v17, v2);
        if (*v16)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = sub_100572E78();
          v19 = v20;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v18 = 0;
      v19 = 0;
LABEL_9:

      sub_100009DCC(&qword_1006E31B0, &qword_10057FCF8);
      v21 = (v19 | v18);
      if (v19 | v18)
      {
        v21 = v31;
        *v31 = 0;
        v31[1] = 0;
        v11[4] = v18;
        v11[5] = v19;
      }

      v3 = v37 + 1;
      v6 = v11[21];
      v11[6] = 1;
      v11[7] = v21;
      v11[8] = v35;
      swift_task_create();

      sub_10001036C(v6, v5, &qword_10057B758);
    }

    while (v36 != v37 + 1);
  }

  v22 = v0[16];
  sub_100009DCC(&qword_1006E31B0, &qword_10057FCF8);
  sub_100009DCC(&qword_1006E1C08, &qword_10057F100);
  sub_100572FE8();
  v23 = *v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_100088920(v23);
  }

  v25 = v0[16];
  v26 = swift_isUniquelyReferenced_nonNull_native();
  *v25 = v23;
  if ((v26 & 1) == 0)
  {
    v23 = sub_100088920(v23);
  }

  *v0[16] = v23;
  v27 = swift_task_alloc();
  v0[22] = v27;
  *v27 = v0;
  v27[1] = sub_100083704;
  v28 = v0[17];

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 9, 0, 0, v28, v0 + 11);
}

uint64_t sub_100083704()
{

  if (v0)
  {
    v1 = sub_100083994;
  }

  else
  {
    v1 = sub_100083814;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100083814()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 72);
    v5 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v3 = v5;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v4 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v12 = *(v0 + 128);
      isUniquelyReferenced_nonNull_native = sub_100088920(v5);
      v5 = isUniquelyReferenced_nonNull_native;
      *v12 = isUniquelyReferenced_nonNull_native;
      if ((v4 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v4 < *(v5 + 16))
        {
          *(v5 + v4 + 32) = 0;
          v11 = swift_task_alloc();
          *(v0 + 176) = v11;
          *v11 = v0;
          v11[1] = sub_100083704;
          v9 = *(v0 + 136);
          isUniquelyReferenced_nonNull_native = v0 + 72;
          v10 = v0 + 88;
          v7 = 0;
          v8 = 0;

          return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v7, v8, v9, v10);
        }

LABEL_13:
        __break(1u);
        return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v7, v8, v9, v10);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100083994()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100083A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v15;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v8[10] = a2;
  v8[11] = a3;
  v8[18] = *(sub_100009DCC(&qword_1006E0618, &unk_10057C230) - 8);
  v8[19] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3080, &qword_10057FAC8);
  v8[20] = swift_task_alloc();
  v9 = sub_100009DCC(&qword_1006E3088, &unk_10057FAD0);
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v10 = sub_1005711A8();
  v8[24] = v10;
  v11 = *(v10 - 8);
  v8[25] = v11;
  v8[26] = *(v11 + 64);
  v8[27] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD60, &qword_10057B758);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v12 = sub_100009DCC(&qword_1006E3090, &qword_10057FAE0);
  v8[30] = v12;
  v8[31] = *(v12 - 8);
  v8[32] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3098, &unk_10057FAE8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();

  return _swift_task_switch(sub_100083D00, 0, 0);
}

uint64_t sub_100083D00()
{
  v2 = *(v1 + 248);
  v44 = *(v1 + 240);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112) >> 1;
  v41 = (v2 + 48);
  v42 = (v2 + 56);
  v43 = *(v1 + 200);
  swift_unknownObjectRetain();
  v39 = v4;
  v40 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      v5 = 1;
      v6 = v4;
    }

    else
    {
      if (v3 >= v4 || v3 < *(v1 + 104))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v7 = *(v1 + 256);
      v8 = *(v1 + 192);
      v9 = *(v1 + 96) + *(v43 + 72) * v3;
      v10 = *(v44 + 48);
      *v7 = v40;
      (*(v43 + 16))(&v7[v10], v9, v8);
      v11 = __OFADD__(v40, 1);
      v0 = ++v40;
      if (v11)
      {
        goto LABEL_23;
      }

      v6 = v3 + 1;
      sub_100019B40(*(v1 + 256), *(v1 + 264), &qword_1006E3090, &qword_10057FAE0);
      v5 = 0;
    }

    v13 = *(v1 + 264);
    v12 = *(v1 + 272);
    v14 = *(v1 + 240);
    (*v42)(v13, v5, 1, v14);
    sub_100019B40(v13, v12, &qword_1006E3098, &unk_10057FAE8);
    if ((*v41)(v12, 1, v14) == 1)
    {
      break;
    }

    v50 = v6;
    v15 = *(v1 + 272);
    v16 = *(v1 + 232);
    v46 = v16;
    v49 = *(v1 + 224);
    v17 = *(v1 + 216);
    v18 = *(v1 + 192);
    v45 = v18;
    v19 = *(v1 + 128);
    v48 = *(v1 + 120);
    v47 = *v15;
    v20 = *(v44 + 48);
    v21 = sub_100572F48();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v16, 1, 1, v21);
    v23 = *(v43 + 32);
    v23(v17, v15 + v20, v18);
    v24 = (*(v43 + 80) + 56) & ~*(v43 + 80);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v47;
    v25[5] = v48;
    v25[6] = v19;
    v23(v25 + v24, v17, v45);
    v26 = v21;
    sub_10000CC8C(v46, v49, &qword_1006DFD60, &qword_10057B758);
    LODWORD(v21) = (*(v22 + 48))(v49, 1, v21);

    v27 = *(v1 + 224);
    if (v21 == 1)
    {
      sub_10001036C(*(v1 + 224), &qword_1006DFD60, &qword_10057B758);
    }

    else
    {
      sub_100572F38();
      (*(v22 + 8))(v27, v26);
    }

    if (v25[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v28 = sub_100572E78();
      v30 = v29;
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v3 = v50;
    v31 = **(v1 + 80);

    sub_100009DCC(&qword_1006E3078, &qword_10057FAB8);
    v32 = v30 | v28;
    if (v30 | v28)
    {
      v32 = v1 + 16;
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *(v1 + 32) = v28;
      *(v1 + 40) = v30;
    }

    v0 = *(v1 + 232);
    *(v1 + 48) = 1;
    *(v1 + 56) = v32;
    *(v1 + 64) = v31;
    swift_task_create();

    sub_10001036C(v0, &qword_1006DFD60, &qword_10057B758);
    v4 = v39;
  }

  v33 = *(v1 + 136);
  swift_unknownObjectRelease();
  *(v1 + 280) = sub_100009DCC(&qword_1006E3078, &qword_10057FAB8);
  sub_100009DCC(&qword_1006E1C08, &qword_10057F100);
  sub_100572FE8();
  v0 = *v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v33 = v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_19;
  }

LABEL_24:
  v0 = sub_10008890C(v0);
LABEL_19:
  **(v1 + 136) = v0;
  v35 = swift_task_alloc();
  *(v1 + 288) = v35;
  *v35 = v1;
  v35[1] = sub_100084250;
  v36 = *(v1 + 160);
  v37 = *(v1 + 168);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v36, 0, 0, v37, v1 + 72);
}

uint64_t sub_100084250()
{

  if (v0)
  {
    v1 = sub_10008460C;
  }

  else
  {
    v1 = sub_100084360;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100084360()
{
  v1 = v0[35];
  v2 = v0[20];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) != 1)
  {
    v5 = v0[19];
    v6 = v0[17];
    v7 = *v2;
    sub_10008237C(v2 + *(v1 + 48), v5, type metadata accessor for WidgetMusicItem);
    v8 = type metadata accessor for WidgetMusicItem(0);
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    v9 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v0[17];
      isUniquelyReferenced_nonNull_native = sub_10008890C(v9);
      v9 = isUniquelyReferenced_nonNull_native;
      *v16 = isUniquelyReferenced_nonNull_native;
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v7 < v9[2])
        {
          sub_10008B71C(v0[19], v9 + ((*(v0[18] + 80) + 32) & ~*(v0[18] + 80)) + *(v0[18] + 72) * v7, &qword_1006E0618, &unk_10057C230);
          v15 = swift_task_alloc();
          v0[36] = v15;
          *v15 = v0;
          v15[1] = sub_100084250;
          isUniquelyReferenced_nonNull_native = v0[20];
          v13 = v0[21];
          v14 = v0 + 9;
          v11 = 0;
          v12 = 0;

          return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
        }

LABEL_13:
        __break(1u);
        return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  (*(v0[22] + 8))(v0[23], v0[21]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10008460C()
{
  (*(v0[22] + 8))(v0[23], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100084708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v15;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v8[10] = a2;
  v8[11] = a3;
  v8[18] = *(sub_100009DCC(&qword_1006E0618, &unk_10057C230) - 8);
  v8[19] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3080, &qword_10057FAC8);
  v8[20] = swift_task_alloc();
  v9 = sub_100009DCC(&qword_1006E3088, &unk_10057FAD0);
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v10 = sub_100571F08();
  v8[24] = v10;
  v11 = *(v10 - 8);
  v8[25] = v11;
  v8[26] = *(v11 + 64);
  v8[27] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD60, &qword_10057B758);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v12 = sub_100009DCC(&qword_1006E3168, &qword_10057FC70);
  v8[30] = v12;
  v8[31] = *(v12 - 8);
  v8[32] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3170, &qword_10057FC78);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();

  return _swift_task_switch(sub_1000849D8, 0, 0);
}

uint64_t sub_1000849D8()
{
  v2 = *(v1 + 248);
  v44 = *(v1 + 240);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112) >> 1;
  v41 = (v2 + 48);
  v42 = (v2 + 56);
  v43 = *(v1 + 200);
  swift_unknownObjectRetain();
  v39 = v4;
  v40 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      v5 = 1;
      v6 = v4;
    }

    else
    {
      if (v3 >= v4 || v3 < *(v1 + 104))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v7 = *(v1 + 256);
      v8 = *(v1 + 192);
      v9 = *(v1 + 96) + *(v43 + 72) * v3;
      v10 = *(v44 + 48);
      *v7 = v40;
      (*(v43 + 16))(&v7[v10], v9, v8);
      v11 = __OFADD__(v40, 1);
      v0 = ++v40;
      if (v11)
      {
        goto LABEL_23;
      }

      v6 = v3 + 1;
      sub_100019B40(*(v1 + 256), *(v1 + 264), &qword_1006E3168, &qword_10057FC70);
      v5 = 0;
    }

    v13 = *(v1 + 264);
    v12 = *(v1 + 272);
    v14 = *(v1 + 240);
    (*v42)(v13, v5, 1, v14);
    sub_100019B40(v13, v12, &qword_1006E3170, &qword_10057FC78);
    if ((*v41)(v12, 1, v14) == 1)
    {
      break;
    }

    v50 = v6;
    v15 = *(v1 + 272);
    v16 = *(v1 + 232);
    v46 = v16;
    v49 = *(v1 + 224);
    v17 = *(v1 + 216);
    v18 = *(v1 + 192);
    v45 = v18;
    v19 = *(v1 + 128);
    v48 = *(v1 + 120);
    v47 = *v15;
    v20 = *(v44 + 48);
    v21 = sub_100572F48();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v16, 1, 1, v21);
    v23 = *(v43 + 32);
    v23(v17, v15 + v20, v18);
    v24 = (*(v43 + 80) + 56) & ~*(v43 + 80);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v47;
    v25[5] = v48;
    v25[6] = v19;
    v23(v25 + v24, v17, v45);
    v26 = v21;
    sub_10000CC8C(v46, v49, &qword_1006DFD60, &qword_10057B758);
    LODWORD(v21) = (*(v22 + 48))(v49, 1, v21);

    v27 = *(v1 + 224);
    if (v21 == 1)
    {
      sub_10001036C(*(v1 + 224), &qword_1006DFD60, &qword_10057B758);
    }

    else
    {
      sub_100572F38();
      (*(v22 + 8))(v27, v26);
    }

    if (v25[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v28 = sub_100572E78();
      v30 = v29;
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v3 = v50;
    v31 = **(v1 + 80);

    sub_100009DCC(&qword_1006E3078, &qword_10057FAB8);
    v32 = v30 | v28;
    if (v30 | v28)
    {
      v32 = v1 + 16;
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *(v1 + 32) = v28;
      *(v1 + 40) = v30;
    }

    v0 = *(v1 + 232);
    *(v1 + 48) = 1;
    *(v1 + 56) = v32;
    *(v1 + 64) = v31;
    swift_task_create();

    sub_10001036C(v0, &qword_1006DFD60, &qword_10057B758);
    v4 = v39;
  }

  v33 = *(v1 + 136);
  swift_unknownObjectRelease();
  *(v1 + 280) = sub_100009DCC(&qword_1006E3078, &qword_10057FAB8);
  sub_100009DCC(&qword_1006E1C08, &qword_10057F100);
  sub_100572FE8();
  v0 = *v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v33 = v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_19;
  }

LABEL_24:
  v0 = sub_10008890C(v0);
LABEL_19:
  **(v1 + 136) = v0;
  v35 = swift_task_alloc();
  *(v1 + 288) = v35;
  *v35 = v1;
  v35[1] = sub_100084F28;
  v36 = *(v1 + 160);
  v37 = *(v1 + 168);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v36, 0, 0, v37, v1 + 72);
}

uint64_t sub_100084F28()
{

  if (v0)
  {
    v1 = sub_10008B9C8;
  }

  else
  {
    v1 = sub_100085038;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100085038()
{
  v1 = v0[35];
  v2 = v0[20];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) != 1)
  {
    v5 = v0[19];
    v6 = v0[17];
    v7 = *v2;
    sub_10008237C(v2 + *(v1 + 48), v5, type metadata accessor for WidgetMusicItem);
    v8 = type metadata accessor for WidgetMusicItem(0);
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    v9 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v0[17];
      isUniquelyReferenced_nonNull_native = sub_10008890C(v9);
      v9 = isUniquelyReferenced_nonNull_native;
      *v16 = isUniquelyReferenced_nonNull_native;
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v7 < v9[2])
        {
          sub_10008B71C(v0[19], v9 + ((*(v0[18] + 80) + 32) & ~*(v0[18] + 80)) + *(v0[18] + 72) * v7, &qword_1006E0618, &unk_10057C230);
          v15 = swift_task_alloc();
          v0[36] = v15;
          *v15 = v0;
          v15[1] = sub_100084F28;
          isUniquelyReferenced_nonNull_native = v0[20];
          v13 = v0[21];
          v14 = v0 + 9;
          v11 = 0;
          v12 = 0;

          return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
        }

LABEL_13:
        __break(1u);
        return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  (*(v0[22] + 8))(v0[23], v0[21]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000852E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[16] = a3;
  v6[17] = a4;
  v6[15] = a2;
  v6[20] = *(sub_100009DCC(&qword_1006E1F80, &qword_10057E440) - 8);
  v6[21] = swift_task_alloc();
  sub_100009DCC(&qword_1006E32F8, &qword_10057FFA0);
  v6[22] = swift_task_alloc();
  v7 = sub_100009DCC(&qword_1006E3300, &qword_10057FFA8);
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD60, &qword_10057B758);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v8 = sub_100009DCC(&qword_1006E3308, &qword_10057FFB0);
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();
  v9 = sub_10056D888();
  v6[31] = v9;
  v10 = *(v9 - 8);
  v6[32] = v10;
  v6[33] = *(v10 + 64);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3310, &qword_10057FFB8);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v11 = sub_100009DCC(&qword_1006E32E0, &qword_10057FF80);
  v6[38] = v11;
  v6[39] = *(v11 - 8);
  v6[40] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3318, &qword_10057FFC0);
  v6[41] = swift_task_alloc();
  v6[42] = sub_100009DCC(&qword_1006E3320, &qword_10057FFC8);
  v6[43] = swift_task_alloc();

  return _swift_task_switch(sub_100085690, 0, 0);
}

uint64_t sub_100085690()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 320);
  v4 = *(v0 + 328);
  v5 = *(v0 + 304);
  v6 = *(v0 + 312);
  v7 = *(v0 + 256);
  v8 = *(v0 + 232);
  v55 = *(v0 + 224);
  (*(v6 + 16))(v4, *(v0 + 128), v5);
  (*(v6 + 32))(v3, v4, v5);
  sub_100010BC0(&qword_1006E3328, &qword_1006E32E0, &qword_10057FF80, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_100572B98();
  v46 = *(v1 + 36);
  *(v2 + v46) = 0;
  v47 = (v7 + 16);
  v50 = v7;
  v54 = (v7 + 32);
  v9 = *(sub_100009DCC(&qword_1006E3330, &qword_10057FFD0) + 36);
  v52 = (v8 + 48);
  v53 = (v8 + 56);
  v51 = 0;
  sub_100010BC0(&qword_1006E32E8, &qword_1006E32E0, &qword_10057FF80, &protocol conformance descriptor for MusicItemCollection<A>);
  v48 = v2;
  v49 = v9;
  while (1)
  {
    sub_100573208();
    if (*(v2 + v9) == *(v0 + 104))
    {
      v11 = 1;
    }

    else
    {
      v12 = *(v0 + 280);
      v13 = *(v0 + 240);
      v14 = *(v0 + 248);
      v15 = sub_1005732E8();
      (*v47)(v12);
      v15(v0 + 16, 0);
      sub_100573218();
      v16 = *(v55 + 48);
      *v13 = v51;
      (*v54)(&v13[v16], v12, v14);
      v17 = (v51 + 1);
      if (__OFADD__(v51, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      v18 = *(v0 + 288);
      v19 = *(v0 + 240);
      ++v51;
      *(v2 + v46) = v17;
      sub_100019B40(v19, v18, &qword_1006E3308, &qword_10057FFB0);
      v11 = 0;
    }

    v20 = *(v0 + 288);
    v21 = *(v0 + 296);
    v22 = *(v0 + 224);
    (*v53)(v20, v11, 1, v22);
    sub_100019B40(v20, v21, &qword_1006E3310, &qword_10057FFB8);
    if ((*v52)(v21, 1, v22) == 1)
    {
      break;
    }

    v23 = *(v0 + 296);
    v24 = *(v0 + 272);
    v25 = *(v0 + 248);
    v26 = *(v0 + 216);
    v56 = v25;
    v57 = v26;
    v27 = *(v0 + 144);
    v59 = *(v0 + 136);
    v60 = *(v0 + 208);
    v58 = *v23;
    v28 = *(v55 + 48);
    v29 = sub_100572F48();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v26, 1, 1, v29);
    v31 = *(v50 + 32);
    v31(v24, v23 + v28, v25);
    v32 = (*(v50 + 80) + 56) & ~*(v50 + 80);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v58;
    v33[5] = v59;
    v33[6] = v27;
    v31(v33 + v32, v24, v56);
    sub_10000CC8C(v57, v60, &qword_1006DFD60, &qword_10057B758);
    LODWORD(v28) = (*(v30 + 48))(v60, 1, v29);

    v34 = *(v0 + 208);
    if (v28 == 1)
    {
      sub_10001036C(*(v0 + 208), &qword_1006DFD60, &qword_10057B758);
    }

    else
    {
      sub_100572F38();
      (*(v30 + 8))(v34, v29);
    }

    v9 = v49;
    if (v33[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v35 = sub_100572E78();
      v37 = v36;
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v2 = v48;
    v38 = **(v0 + 120);

    sub_100009DCC(&qword_1006E32F0, &qword_10057FF98);
    v39 = v37 | v35;
    if (v37 | v35)
    {
      v39 = v0 + 48;
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 64) = v35;
      *(v0 + 72) = v37;
    }

    v10 = *(v0 + 216);
    *(v0 + 80) = 1;
    *(v0 + 88) = v39;
    *(v0 + 96) = v38;
    swift_task_create();

    sub_10001036C(v10, &qword_1006DFD60, &qword_10057B758);
  }

  v40 = *(v0 + 152);
  sub_10001036C(*(v0 + 344), &qword_1006E3320, &qword_10057FFC8);
  *(v0 + 352) = sub_100009DCC(&qword_1006E32F0, &qword_10057FF98);
  sub_100009DCC(&qword_1006E1C08, &qword_10057F100);
  sub_100572FE8();
  v17 = *v40;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v40 = v17;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_17;
  }

LABEL_21:
  v17 = sub_100088934(v17);
LABEL_17:
  **(v0 + 152) = v17;
  v42 = swift_task_alloc();
  *(v0 + 360) = v42;
  *v42 = v0;
  v42[1] = sub_100085D2C;
  v43 = *(v0 + 176);
  v44 = *(v0 + 184);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v43, 0, 0, v44, v0 + 112);
}

uint64_t sub_100085D2C()
{

  if (v0)
  {
    v1 = sub_100086118;
  }

  else
  {
    v1 = sub_100085E3C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100085E3C()
{
  v1 = v0[44];
  v2 = v0[22];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) != 1)
  {
    v5 = v0[21];
    v6 = v0[19];
    v7 = *v2;
    sub_10008237C(v2 + *(v1 + 48), v5, type metadata accessor for WidgetMusicPin);
    v8 = type metadata accessor for WidgetMusicPin(0);
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    v9 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v0[19];
      isUniquelyReferenced_nonNull_native = sub_100088934(v9);
      v9 = isUniquelyReferenced_nonNull_native;
      *v16 = isUniquelyReferenced_nonNull_native;
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v7 < v9[2])
        {
          sub_10008B71C(v0[21], v9 + ((*(v0[20] + 80) + 32) & ~*(v0[20] + 80)) + *(v0[20] + 72) * v7, &qword_1006E1F80, &qword_10057E440);
          v15 = swift_task_alloc();
          v0[45] = v15;
          *v15 = v0;
          v15[1] = sub_100085D2C;
          isUniquelyReferenced_nonNull_native = v0[22];
          v13 = v0[23];
          v14 = v0 + 14;
          v11 = 0;
          v12 = 0;

          return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
        }

LABEL_13:
        __break(1u);
        return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  (*(v0[24] + 8))(v0[25], v0[23]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100086118()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100086248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[16] = a3;
  v6[17] = a4;
  v6[15] = a2;
  v6[20] = *(sub_100009DCC(&qword_1006E0618, &unk_10057C230) - 8);
  v6[21] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3080, &qword_10057FAC8);
  v6[22] = swift_task_alloc();
  v7 = sub_100009DCC(&qword_1006E3088, &unk_10057FAD0);
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD60, &qword_10057B758);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v8 = sub_100009DCC(&qword_1006E3128, &qword_10057FBF8);
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();
  v9 = sub_100570CC8();
  v6[31] = v9;
  v10 = *(v9 - 8);
  v6[32] = v10;
  v6[33] = *(v10 + 64);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3130, &qword_10057FC00);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v11 = sub_100009DCC(&qword_1006E2AB0, &qword_10057FBE0);
  v6[38] = v11;
  v6[39] = *(v11 - 8);
  v6[40] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3138, &qword_10057FC08);
  v6[41] = swift_task_alloc();
  v6[42] = sub_100009DCC(&qword_1006E3140, &qword_10057FC10);
  v6[43] = swift_task_alloc();

  return _swift_task_switch(sub_1000865F4, 0, 0);
}

uint64_t sub_1000865F4()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v3 = *(v0 + 320);
  v4 = *(v0 + 328);
  v5 = *(v0 + 304);
  v6 = *(v0 + 312);
  v7 = *(v0 + 256);
  v8 = *(v0 + 232);
  v55 = *(v0 + 224);
  (*(v6 + 16))(v4, *(v0 + 128), v5);
  (*(v6 + 32))(v3, v4, v5);
  sub_100010BC0(&qword_1006E3148, &qword_1006E2AB0, &qword_10057FBE0, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_100572B98();
  v46 = *(v1 + 36);
  *(v2 + v46) = 0;
  v47 = (v7 + 16);
  v50 = v7;
  v54 = (v7 + 32);
  v9 = *(sub_100009DCC(&qword_1006E3150, &qword_10057FC18) + 36);
  v52 = (v8 + 48);
  v53 = (v8 + 56);
  v51 = 0;
  sub_100010BC0(&qword_1006E3120, &qword_1006E2AB0, &qword_10057FBE0, &protocol conformance descriptor for MusicItemCollection<A>);
  v48 = v2;
  v49 = v9;
  while (1)
  {
    sub_100573208();
    if (*(v2 + v9) == *(v0 + 104))
    {
      v11 = 1;
    }

    else
    {
      v12 = *(v0 + 280);
      v13 = *(v0 + 240);
      v14 = *(v0 + 248);
      v15 = sub_1005732E8();
      (*v47)(v12);
      v15(v0 + 16, 0);
      sub_100573218();
      v16 = *(v55 + 48);
      *v13 = v51;
      (*v54)(&v13[v16], v12, v14);
      v17 = (v51 + 1);
      if (__OFADD__(v51, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      v18 = *(v0 + 288);
      v19 = *(v0 + 240);
      ++v51;
      *(v2 + v46) = v17;
      sub_100019B40(v19, v18, &qword_1006E3128, &qword_10057FBF8);
      v11 = 0;
    }

    v20 = *(v0 + 288);
    v21 = *(v0 + 296);
    v22 = *(v0 + 224);
    (*v53)(v20, v11, 1, v22);
    sub_100019B40(v20, v21, &qword_1006E3130, &qword_10057FC00);
    if ((*v52)(v21, 1, v22) == 1)
    {
      break;
    }

    v23 = *(v0 + 296);
    v24 = *(v0 + 272);
    v25 = *(v0 + 248);
    v26 = *(v0 + 216);
    v56 = v25;
    v57 = v26;
    v27 = *(v0 + 144);
    v59 = *(v0 + 136);
    v60 = *(v0 + 208);
    v58 = *v23;
    v28 = *(v55 + 48);
    v29 = sub_100572F48();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v26, 1, 1, v29);
    v31 = *(v50 + 32);
    v31(v24, v23 + v28, v25);
    v32 = (*(v50 + 80) + 56) & ~*(v50 + 80);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v58;
    v33[5] = v59;
    v33[6] = v27;
    v31(v33 + v32, v24, v56);
    sub_10000CC8C(v57, v60, &qword_1006DFD60, &qword_10057B758);
    LODWORD(v28) = (*(v30 + 48))(v60, 1, v29);

    v34 = *(v0 + 208);
    if (v28 == 1)
    {
      sub_10001036C(*(v0 + 208), &qword_1006DFD60, &qword_10057B758);
    }

    else
    {
      sub_100572F38();
      (*(v30 + 8))(v34, v29);
    }

    v9 = v49;
    if (v33[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v35 = sub_100572E78();
      v37 = v36;
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v2 = v48;
    v38 = **(v0 + 120);

    sub_100009DCC(&qword_1006E3078, &qword_10057FAB8);
    v39 = v37 | v35;
    if (v37 | v35)
    {
      v39 = v0 + 48;
      *(v0 + 48) = 0;
      *(v0 + 56) = 0;
      *(v0 + 64) = v35;
      *(v0 + 72) = v37;
    }

    v10 = *(v0 + 216);
    *(v0 + 80) = 1;
    *(v0 + 88) = v39;
    *(v0 + 96) = v38;
    swift_task_create();

    sub_10001036C(v10, &qword_1006DFD60, &qword_10057B758);
  }

  v40 = *(v0 + 152);
  sub_10001036C(*(v0 + 344), &qword_1006E3140, &qword_10057FC10);
  *(v0 + 352) = sub_100009DCC(&qword_1006E3078, &qword_10057FAB8);
  sub_100009DCC(&qword_1006E1C08, &qword_10057F100);
  sub_100572FE8();
  v17 = *v40;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v40 = v17;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_17;
  }

LABEL_21:
  v17 = sub_10008890C(v17);
LABEL_17:
  **(v0 + 152) = v17;
  v42 = swift_task_alloc();
  *(v0 + 360) = v42;
  *v42 = v0;
  v42[1] = sub_100086C90;
  v43 = *(v0 + 176);
  v44 = *(v0 + 184);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v43, 0, 0, v44, v0 + 112);
}

uint64_t sub_100086C90()
{

  if (v0)
  {
    v1 = sub_10008B9C4;
  }

  else
  {
    v1 = sub_100086DA0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100086DA0()
{
  v1 = v0[44];
  v2 = v0[22];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) != 1)
  {
    v5 = v0[21];
    v6 = v0[19];
    v7 = *v2;
    sub_10008237C(v2 + *(v1 + 48), v5, type metadata accessor for WidgetMusicItem);
    v8 = type metadata accessor for WidgetMusicItem(0);
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    v9 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v0[19];
      isUniquelyReferenced_nonNull_native = sub_10008890C(v9);
      v9 = isUniquelyReferenced_nonNull_native;
      *v16 = isUniquelyReferenced_nonNull_native;
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v7 < v9[2])
        {
          sub_10008B71C(v0[21], v9 + ((*(v0[20] + 80) + 32) & ~*(v0[20] + 80)) + *(v0[20] + 72) * v7, &qword_1006E0618, &unk_10057C230);
          v15 = swift_task_alloc();
          v0[45] = v15;
          *v15 = v0;
          v15[1] = sub_100086C90;
          isUniquelyReferenced_nonNull_native = v0[22];
          v13 = v0[23];
          v14 = v0 + 14;
          v11 = 0;
          v12 = 0;

          return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
        }

LABEL_13:
        __break(1u);
        return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  (*(v0[24] + 8))(v0[25], v0[23]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10008707C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[10] = a2;
  v6[15] = *(sub_100009DCC(&qword_1006E1F50, &qword_10057E410) - 8);
  v6[16] = swift_task_alloc();
  sub_100009DCC(&qword_1006E31E8, &qword_10057FD58);
  v6[17] = swift_task_alloc();
  v7 = sub_100009DCC(&qword_1006E31F0, &qword_10057FD60);
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD60, &qword_10057B758);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();

  return _swift_task_switch(sub_100087230, 0, 0);
}

uint64_t sub_100087230()
{
  v1 = v0[11];
  v35 = *(v1 + 16);
  if (v35)
  {
    v30 = v0 + 2;
    v33 = v1 + 32;
    v34 = *v0[10];
    v2 = sub_100572F48();
    v3 = 0;
    v4 = *(v2 - 8);
    v32 = *(v4 + 56);
    v31 = (v4 + 48);
    v29 = (v4 + 8);
    v5 = &qword_1006DFD60;
    do
    {
      v8 = v0[21];
      v7 = v0[22];
      v10 = v0[12];
      v9 = v0[13];
      v11 = v0;
      v12 = v5;
      v13 = *(v33 + v3);
      v32(v7, 1, 1, v2);
      v14 = swift_allocObject();
      v15 = v3;
      *(v14 + 16) = 0;
      v16 = (v14 + 16);
      *(v14 + 24) = 0;
      *(v14 + 32) = v15;
      v36 = v15;
      *(v14 + 40) = v10;
      *(v14 + 48) = v9;
      *(v14 + 56) = v13;
      v5 = v12;
      v0 = v11;
      sub_10000CC8C(v7, v8, v5, &qword_10057B758);
      LODWORD(v8) = (*v31)(v8, 1, v2);

      v17 = v11[21];
      if (v8 == 1)
      {
        sub_10001036C(v11[21], v5, &qword_10057B758);
        if (*v16)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_100572F38();
        (*v29)(v17, v2);
        if (*v16)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = sub_100572E78();
          v19 = v20;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v18 = 0;
      v19 = 0;
LABEL_9:

      sub_100009DCC(&qword_1006E31E0, &qword_10057FD48);
      v21 = (v19 | v18);
      if (v19 | v18)
      {
        v21 = v30;
        *v30 = 0;
        v30[1] = 0;
        v11[4] = v18;
        v11[5] = v19;
      }

      v3 = v36 + 1;
      v6 = v11[22];
      v11[6] = 1;
      v11[7] = v21;
      v11[8] = v34;
      swift_task_create();

      sub_10001036C(v6, v5, &qword_10057B758);
    }

    while (v35 != v36 + 1);
  }

  v22 = v0[14];
  v0[23] = sub_100009DCC(&qword_1006E31E0, &qword_10057FD48);
  sub_100009DCC(&qword_1006E1C08, &qword_10057F100);
  sub_100572FE8();
  v23 = *v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_100088948(v23);
  }

  *v0[14] = v23;
  v25 = swift_task_alloc();
  v0[24] = v25;
  *v25 = v0;
  v25[1] = sub_1000875F0;
  v26 = v0[17];
  v27 = v0[18];

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v26, 0, 0, v27, v0 + 9);
}

uint64_t sub_1000875F0()
{

  if (v0)
  {
    v1 = sub_100087970;
  }

  else
  {
    v1 = sub_100087700;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100087700()
{
  v1 = v0[23];
  v2 = v0[17];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) != 1)
  {
    v5 = v0[16];
    v6 = v0[14];
    v7 = *v2;
    sub_100019B40(v2 + *(v1 + 48), v5, &qword_1006E1F40, &qword_10057E400);
    v8 = sub_100009DCC(&qword_1006E1F40, &qword_10057E400);
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    v9 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v0[14];
      isUniquelyReferenced_nonNull_native = sub_100088948(v9);
      v9 = isUniquelyReferenced_nonNull_native;
      *v16 = isUniquelyReferenced_nonNull_native;
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v7 < v9[2])
        {
          sub_10008B71C(v0[16], v9 + ((*(v0[15] + 80) + 32) & ~*(v0[15] + 80)) + *(v0[15] + 72) * v7, &qword_1006E1F50, &qword_10057E410);
          v15 = swift_task_alloc();
          v0[24] = v15;
          *v15 = v0;
          v15[1] = sub_1000875F0;
          isUniquelyReferenced_nonNull_native = v0[17];
          v13 = v0[18];
          v14 = v0 + 9;
          v11 = 0;
          v12 = 0;

          return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
        }

LABEL_13:
        __break(1u);
        return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v11, v12, v13, v14);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  (*(v0[19] + 8))(v0[20], v0[18]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100087970()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100087A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a8;
  v8[19] = v15;
  v8[16] = a6;
  v8[17] = a7;
  v8[14] = a4;
  v8[15] = a5;
  v8[12] = a2;
  v8[13] = a3;
  v9 = sub_100009DCC(&qword_1006E30D8, &qword_10057FB80);
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  v10 = sub_10056D9E8();
  v8[23] = v10;
  v11 = *(v10 - 8);
  v8[24] = v11;
  v8[25] = *(v11 + 64);
  v8[26] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD60, &qword_10057B758);
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v12 = sub_100009DCC(&qword_1006E30E0, &qword_10057FB88);
  v8[29] = v12;
  v8[30] = *(v12 - 8);
  v8[31] = swift_task_alloc();
  sub_100009DCC(&qword_1006E30E8, &qword_10057FB90);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();

  return _swift_task_switch(sub_100087C5C, 0, 0);
}

uint64_t sub_100087C5C()
{
  v2 = *(v1 + 240);
  v45 = *(v1 + 232);
  v3 = *(v1 + 120);
  v4 = *(v1 + 128) >> 1;
  v42 = (v2 + 48);
  v43 = (v2 + 56);
  v44 = *(v1 + 192);
  swift_unknownObjectRetain();
  v40 = v4;
  v41 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      v5 = 1;
      v6 = v4;
    }

    else
    {
      if (v3 >= v4 || v3 < *(v1 + 120))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v7 = *(v1 + 248);
      v8 = *(v1 + 184);
      v9 = *(v1 + 112) + *(v44 + 72) * v3;
      v10 = *(v45 + 48);
      *v7 = v41;
      (*(v44 + 16))(&v7[v10], v9, v8);
      v11 = __OFADD__(v41, 1);
      v0 = ++v41;
      if (v11)
      {
        goto LABEL_25;
      }

      v6 = v3 + 1;
      sub_100019B40(*(v1 + 248), *(v1 + 256), &qword_1006E30E0, &qword_10057FB88);
      v5 = 0;
    }

    v13 = *(v1 + 256);
    v12 = *(v1 + 264);
    v14 = *(v1 + 232);
    (*v43)(v13, v5, 1, v14);
    sub_100019B40(v13, v12, &qword_1006E30E8, &qword_10057FB90);
    if ((*v42)(v12, 1, v14) == 1)
    {
      break;
    }

    v51 = v6;
    v15 = *(v1 + 264);
    v16 = *(v1 + 224);
    v47 = v16;
    v50 = *(v1 + 216);
    v17 = *(v1 + 208);
    v18 = *(v1 + 184);
    v46 = v18;
    v19 = *(v1 + 144);
    v49 = *(v1 + 136);
    v48 = *v15;
    v20 = *(v45 + 48);
    v21 = sub_100572F48();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v16, 1, 1, v21);
    v23 = *(v44 + 32);
    v23(v17, v15 + v20, v18);
    v24 = (*(v44 + 80) + 56) & ~*(v44 + 80);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v48;
    v25[5] = v49;
    v25[6] = v19;
    v23(v25 + v24, v17, v46);
    v26 = v21;
    sub_10000CC8C(v47, v50, &qword_1006DFD60, &qword_10057B758);
    LODWORD(v21) = (*(v22 + 48))(v50, 1, v21);

    v27 = *(v1 + 216);
    if (v21 == 1)
    {
      sub_10001036C(*(v1 + 216), &qword_1006DFD60, &qword_10057B758);
    }

    else
    {
      sub_100572F38();
      (*(v22 + 8))(v27, v26);
    }

    if (v25[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v28 = sub_100572E78();
      v30 = v29;
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v3 = v51;
    v31 = **(v1 + 96);

    sub_100009DCC(&qword_1006E30D0, &qword_10057FB70);
    v32 = v30 | v28;
    if (v30 | v28)
    {
      v32 = v1 + 16;
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *(v1 + 32) = v28;
      *(v1 + 40) = v30;
    }

    v0 = *(v1 + 224);
    *(v1 + 48) = 1;
    *(v1 + 56) = v32;
    *(v1 + 64) = v31;
    swift_task_create();

    sub_10001036C(v0, &qword_1006DFD60, &qword_10057B758);
    v4 = v40;
  }

  v33 = *(v1 + 152);
  swift_unknownObjectRelease();
  sub_100009DCC(&qword_1006E30D0, &qword_10057FB70);
  sub_100009DCC(&qword_1006E1C08, &qword_10057F100);
  sub_100572FE8();
  v0 = *v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v33 = v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_19;
  }

LABEL_26:
  v0 = sub_10008895C(v0);
LABEL_19:
  v35 = *(v1 + 152);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  *v35 = v0;
  if ((v36 & 1) == 0)
  {
    v0 = sub_10008895C(v0);
  }

  **(v1 + 152) = v0;
  v37 = swift_task_alloc();
  *(v1 + 272) = v37;
  *v37 = v1;
  v37[1] = sub_1000881D0;
  v38 = *(v1 + 160);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v1 + 72, 0, 0, v38, v1 + 88);
}

uint64_t sub_1000881D0()
{

  if (v0)
  {
    v1 = sub_1000884B0;
  }

  else
  {
    v1 = sub_1000882E0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000882E0()
{
  v1 = v0[10];
  if (v1 != 1)
  {
    v4 = v0[19];
    v5 = v0[9];
    v6 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v15 = v0[19];
      isUniquelyReferenced_nonNull_native = sub_10008895C(v6);
      v6 = isUniquelyReferenced_nonNull_native;
      *v15 = isUniquelyReferenced_nonNull_native;
      if ((v5 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v5 < v6[2])
        {
          v12 = &v6[v5];
          v13 = v12[4];
          v12[4] = v1;
          sub_100019990(v13);
          v14 = swift_task_alloc();
          v0[34] = v14;
          *v14 = v0;
          v14[1] = sub_1000881D0;
          v10 = v0[20];
          isUniquelyReferenced_nonNull_native = (v0 + 9);
          v11 = v0 + 11;
          v8 = 0;
          v9 = 0;

          return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v8, v9, v10, v11);
        }

LABEL_13:
        __break(1u);
        return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(isUniquelyReferenced_nonNull_native, v8, v9, v10, v11);
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  (*(v0[21] + 8))(v0[22], v0[20]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000884B0()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100088588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_1000885B0, 0, 0);
}

uint64_t sub_1000885B0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(sub_100009DCC(&qword_1006E3078, &qword_10057FAB8) + 48);
  *v3 = v1;
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_10008B99C;
  v6 = v0[6];

  return v8(&v3[v4], v6);
}

uint64_t sub_1000886D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_1000886F8, 0, 0);
}

uint64_t sub_1000886F8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(sub_100009DCC(&qword_1006E32F0, &qword_10057FF98) + 48);
  *v3 = v1;
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_100088818;
  v6 = v0[6];

  return v8(&v3[v4], v6);
}

uint64_t sub_100088818()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_100088970()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  JUMPOUT(0x10008262CLL);
}

uint64_t sub_100088A78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a3;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1000116F0;

  return sub_100083208(a1, a2, v12, a4, a5, a6);
}

uint64_t sub_100088B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, _BYTE *a7)
{
  *(v7 + 16) = a1;
  *(v7 + 24) = a4;
  *(v7 + 48) = *a7;
  v10 = (a5 + *a5);
  v8 = swift_task_alloc();
  *(v7 + 32) = v8;
  *v8 = v7;
  v8[1] = sub_100088C60;

  return v10();
}

uint64_t sub_100088C60()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_100088D94;
  }

  else
  {
    v2 = sub_100088D74;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100088DAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  JUMPOUT(0x100083A30);
}

void sub_100088EB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  sub_100088DAC();
}

uint64_t sub_100088FA8(uint64_t a1)
{
  v4 = *(sub_1005711A8() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000116F0;

  return sub_100088588(a1, v6, v7, v8, v9, v10, v1 + v5);
}

void sub_1000890C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  JUMPOUT(0x100084708);
}

uint64_t sub_1000891D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a3;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_10000CB98;

  return sub_10008707C(a1, a2, v12, a4, a5, a6);
}

uint64_t sub_1000892B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 16) = a1;
  *(v7 + 24) = a4;
  *(v7 + 64) = *a7;
  return _swift_task_switch(sub_1000892E4, 0, 0);
}

uint64_t sub_1000892E4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(sub_100009DCC(&qword_1006E31E0, &qword_10057FD48) + 48);
  *v3 = v1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_100089408;

  return (v7)(v3 + v4, v0 + 8);
}

uint64_t sub_100089408()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_100089534;
  }

  else
  {
    v2 = sub_10008951C;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10008954C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  JUMPOUT(0x100087A28);
}

uint64_t sub_100089654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a1;
  v7[4] = a4;
  v11 = a5 + *a5;
  v9 = swift_task_alloc();
  v7[5] = v9;
  *v9 = v7;
  v9[1] = sub_100089758;

  return (v11)(v7 + 2, a7);
}

uint64_t sub_100089758()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_100089890;
  }

  else
  {
    v2 = sub_10008986C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008986C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  *v1 = *(v0 + 32);
  v1[1] = v2;
  return (*(v0 + 8))();
}

void *sub_1000898A8(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_100009DCC(&qword_1006E1EF8, &qword_10057E3B8);
    v4 = sub_100572D98();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        sub_10003E57C(v3);
        *v7++ = v3;
        --v6;
      }

      while (v6);
    }

    sub_10003E57C(v3);
    return v5;
  }

  return result;
}

void sub_100089944()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  sub_10008954C();
}

uint64_t sub_100089A38(uint64_t a1)
{
  v4 = *(sub_10056D9E8() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000116F0;

  return sub_100089654(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_100089B74(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000116F0;

  return sub_100086248(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_100089C68(uint64_t a1)
{
  v4 = *(sub_100570CC8() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000116F0;

  return sub_100088588(a1, v6, v7, v8, v9, v10, v1 + v5);
}

void sub_100089DD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  sub_1000890C8();
}

uint64_t sub_100089ECC(uint64_t a1)
{
  v4 = *(sub_100571F08() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000116F0;

  return sub_100088588(a1, v6, v7, v8, v9, v10, v1 + v5);
}

void sub_100089FEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000116F0;

  sub_100088970();
}

uint64_t sub_10008A0E0(uint64_t a1)
{
  v4 = *(sub_100571C48() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000116F0;

  return sub_100088588(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_10008A200()
{
  v1 = *(sub_100009DCC(&qword_1006DFCE0, &qword_10057B698) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for WidgetDiskCache(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v17 = *(*(v4 - 8) + 64);
  v7 = sub_10056C8A8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v0 + v2;
  v11 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = sub_10056CAA8();
    (*(*(v12 - 8) + 8))(v10, v12);
  }

  v13 = v0 + v6;
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  v14 = *(v4 + 24);
  v15 = sub_10056DF88();
  (*(*(v15 - 8) + 8))(v13 + v14, v15);

  (*(v8 + 8))(v0 + ((((v17 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9), v7);

  return swift_deallocObject();
}

uint64_t sub_10008A538(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000116F0;

  return sub_100088A78(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10008A618(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000116F0;

  return sub_100088B60(a1, v4, v5, v6, v7, v8, (v1 + 56));
}

uint64_t sub_10008A720(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *(sub_100009DCC(a1, a2) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = type metadata accessor for WidgetDiskCache(0);
  v9 = *(*(v8 - 8) + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v21 = *(*(v8 - 8) + 64);
  v11 = sub_10056C8A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 80);
  v14 = v3 + v6;
  v15 = a3(0);
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v16 = sub_10056CAA8();
    (*(*(v16 - 8) + 8))(v14, v16);
  }

  v17 = v3 + v10;
  if (!(*(v12 + 48))(v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v3 + v10, v11);
  }

  v18 = *(v8 + 24);
  v19 = sub_10056DF88();
  (*(*(v19 - 8) + 8))(v17 + v18, v19);

  (*(v12 + 8))(v3 + ((((v21 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13), v11);

  return swift_deallocObject();
}

uint64_t sub_10008AA30(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(unint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_100009DCC(a1, a2) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for WidgetDiskCache(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_10056C8A8() - 8);
  v11 = *(v3 + v9);
  v12 = *(v3 + v9 + 8);
  v13 = v3 + ((v9 + *(v10 + 80) + 16) & ~*(v10 + 80));

  return a3(v3 + v5, v3 + v8, v11, v12, v13);
}

unint64_t sub_10008AB7C()
{
  result = qword_1006E31D8;
  if (!qword_1006E31D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E31D8);
  }

  return result;
}

uint64_t sub_10008ABD0(uint64_t a1, uint64_t a2)
{
  if ((sub_10056CA48() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WidgetMusicRecommendation(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_100574498();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (!v15)
  {
    if (!v17)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (!v17)
  {
    return 0;
  }

  if (*v14 != *v16 || v15 != v17)
  {
    v19 = v4;
    v20 = sub_100574498();
    v4 = v19;
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_20:
  v21 = v4[7];
  v22 = *(a2 + v21);
  if (*(a1 + v21) == 6)
  {
    if (v22 != 6)
    {
      return 0;
    }
  }

  else
  {
    if (v22 == 6)
    {
      return 0;
    }

    v23 = v4;
    v24 = sub_1000386DC(*(a1 + v21), v22);
    v4 = v23;
    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  v25 = v4[8];
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);

  return sub_10006B354(v26, v27);
}

unint64_t sub_10008AD24(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100680250;
  v6._object = a2;
  v4 = sub_100574238(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10008AD70(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000116F0;

  return sub_1000891D0(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10008AE4C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10008AE8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000116F0;

  return sub_1000892B8(a1, v4, v5, v6, v7, v8, (v1 + 56));
}

uint64_t sub_10008AF80(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10008B050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_10008B108(uint64_t a1)
{
  sub_10056CAA8();
  if (v1 <= 0x3F)
  {
    sub_100016918(319, &qword_1006DFE60, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_100016918(319, &unk_1006E3260, &type metadata for WidgetMusicRecommendationKind);
      if (v3 <= 0x3F)
      {
        sub_100010A58(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_10008B1DC()
{
  result = qword_1006E32A8;
  if (!qword_1006E32A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E32A8);
  }

  return result;
}

unint64_t sub_10008B230()
{
  result = qword_1006E32B0;
  if (!qword_1006E32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E32B0);
  }

  return result;
}

uint64_t sub_10008B284(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100010324(&qword_1006DFF98, &qword_10057BB20);
    sub_100082424(a2, type metadata accessor for WidgetMusicItem, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10008B320()
{
  result = qword_1006E32C0;
  if (!qword_1006E32C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E32C0);
  }

  return result;
}

unint64_t sub_10008B388()
{
  result = qword_1006E32C8;
  if (!qword_1006E32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E32C8);
  }

  return result;
}

unint64_t sub_10008B3E0()
{
  result = qword_1006E32D0;
  if (!qword_1006E32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E32D0);
  }

  return result;
}

unint64_t sub_10008B438()
{
  result = qword_1006E32D8;
  if (!qword_1006E32D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E32D8);
  }

  return result;
}

uint64_t sub_10008B48C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_100574498() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_100574498() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_100574498();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10008B640(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000116F0;

  return sub_1000852E4(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10008B71C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100009DCC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10008B79C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_10008B870(uint64_t a1)
{
  v4 = *(sub_10056D888() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000116F0;

  return sub_1000886D0(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_10008B9E8(uint64_t a1, int a2)
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

uint64_t sub_10008BA30(uint64_t result, int a2, int a3)
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

__n128 sub_10008BA98@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_100009DCC(&qword_1006E3338, &qword_100580070);
  __chkstk_darwin();
  v7 = v13 - v6;
  *v7 = sub_10056F218();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_100009DCC(&qword_1006E3340, &qword_100580078);
  sub_10008BBF0(a1, a2, &v7[*(v8 + 44)]);
  sub_1005709E8();
  sub_10056EDF8();
  sub_10008C32C(v7, a3);
  v9 = a3 + *(sub_100009DCC(&qword_1006E3348, &qword_100580080) + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_10008BBF0@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v64 = a3;
  v62 = sub_100009DCC(&qword_1006E1918, &qword_10057DAA0);
  __chkstk_darwin();
  v63 = &v54 - v5;
  v61 = sub_100009DCC(&qword_1006E0FF0, &qword_10057CBE0);
  __chkstk_darwin();
  v68 = &v54 - v6;
  v7 = sub_10056FBF8();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100009DCC(&qword_1006E3350, &qword_100580088);
  v66 = *(v11 - 8);
  v67 = v11;
  __chkstk_darwin();
  v13 = &v54 - v12;
  v14 = sub_100009DCC(&qword_1006E3358, &qword_100580090);
  v55 = *(v14 - 8);
  v56 = v14;
  __chkstk_darwin();
  v65 = &v54 - v15;
  v16 = sub_100009DCC(&qword_1006E3360, &qword_100580098);
  v59 = *(v16 - 8);
  v60 = v16;
  __chkstk_darwin();
  v58 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v54 - v18;
  v69 = a1;
  v70 = a2;
  sub_10001B550();

  v19 = sub_10056FF28();
  v21 = v20;
  v23 = v22;
  sub_10056FC58();
  (*(v8 + 104))(v10, enum case for Font.Leading.tight(_:), v7);
  sub_10056FC28();

  (*(v8 + 8))(v10, v7);
  v24 = sub_10056FE88();
  v26 = v25;
  v28 = v27;

  sub_10001B5A4(v19, v21, v23 & 1);

  if (qword_1006DF920 != -1)
  {
    swift_once();
  }

  v29 = sub_10056FE18();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_10001B5A4(v24, v26, v28 & 1);

  v69 = v29;
  v70 = v31;
  v71 = v33 & 1;
  v72 = v35;
  sub_10056FF58();
  sub_10001B5A4(v29, v31, v33 & 1);

  v69 = &type metadata for Text;
  v70 = &protocol witness table for Text;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v65;
  v38 = v67;
  sub_10056FFD8();
  (*(v66 + 8))(v13, v38);
  v39 = enum case for DynamicTypeSize.xLarge(_:);
  v40 = sub_10056EBD8();
  v41 = v68;
  (*(*(v40 - 8) + 104))(v68, v39, v40);
  sub_10008C39C();
  if ((sub_1005727E8() & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v69 = v38;
  v70 = OpaqueTypeConformance2;
  LOBYTE(OpaqueTypeConformance2) = 1;
  swift_getOpaqueTypeConformance2();
  sub_100010BC0(&qword_1006E10D0, &qword_1006E0FF0, &qword_10057CBE0, &protocol conformance descriptor for PartialRangeThrough<A>);
  v42 = v56;
  v19 = v57;
  sub_1005700D8();
  sub_10008C3F4(v41);
  (*(v55 + 8))(v37, v42);
  if (qword_1006DF960 != -1)
  {
LABEL_7:
    swift_once();
  }

  v43 = sub_10000C49C(v62, qword_1006FC140);
  v45 = v58;
  v44 = v59;
  v46 = *(v59 + 16);
  v47 = v60;
  v46(v58, v19, v60);
  v48 = v63;
  sub_10008C45C(v43, v63);
  v49 = v64;
  v46(v64, v45, v47);
  v50 = sub_100009DCC(&qword_1006E3368, qword_1005800A0);
  v51 = &v49[*(v50 + 48)];
  *v51 = 0;
  v51[8] = OpaqueTypeConformance2;
  sub_10008C45C(v48, &v49[*(v50 + 64)]);
  v52 = *(v44 + 8);
  v52(v19, v47);
  sub_10008C4CC(v48);
  return (v52)(v45, v47);
}

uint64_t sub_10008C32C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E3338, &qword_100580070);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10008C39C()
{
  result = qword_1006E1060;
  if (!qword_1006E1060)
  {
    sub_10056EBD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1060);
  }

  return result;
}

uint64_t sub_10008C3F4(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E0FF0, &qword_10057CBE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008C45C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E1918, &qword_10057DAA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008C4CC(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E1918, &qword_10057DAA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10008C538()
{
  result = qword_1006E3370;
  if (!qword_1006E3370)
  {
    sub_100010324(&qword_1006E3348, &qword_100580080);
    sub_100010BC0(&qword_1006E3378, &qword_1006E3338, &qword_100580070, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E3370);
  }

  return result;
}

uint64_t sub_10008C604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10008C684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10008C714(uint64_t a1)
{
  result = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10008C79C()
{
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v2 = v9 - v1;
  v3 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  if (((*(v0 + *(v3 + 20)) & 0xFE) == 2 || (v4 = v3, sub_10000CC8C(v0 + *(v3 + 24), v2, &qword_1006E0618, &unk_10057C230), v5 = type metadata accessor for WidgetMusicItem(0), v6 = (*(*(v5 - 8) + 48))(v2, 1, v5), sub_10001036C(v2, &qword_1006E0618, &unk_10057C230), v6 == 1) || !*(v0 + *(v4 + 32))) && (sub_1000913DC(), v7))
  {

    return sub_10056ED98();
  }

  else
  {
    sub_10056EDA8();
    v9[1] = _swiftEmptyArrayStorage;
    sub_100091584(&qword_1006E0C78, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
    sub_100009DCC(&qword_1006E0C80, &unk_10057D530);
    sub_100010BC0(&qword_1006E0C88, &qword_1006E0C80, &unk_10057D530, &protocol conformance descriptor for [A]);
    return sub_100573DA8();
  }
}

uint64_t sub_10008C9A4()
{
  sub_10008CD84();

  return sub_10056F1A8();
}

uint64_t sub_10008C9EC(uint64_t a1)
{
  type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_1000A0630(a1, &v7 - v4, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  sub_1000A0630(v5, v3, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  sub_10008CD84();
  sub_10056F1B8();
  return sub_10008CDD8(v5, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
}

uint64_t sub_10008CAF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10056EDA8();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecentlyPlayedContentView(0);
  __chkstk_darwin();
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0148, &qword_10057C450);
  swift_storeEnumTagMultiPayload();
  sub_10008C79C();
  sub_100091584(&qword_1006E3410, type metadata accessor for RecentlyPlayedContentView, &unk_100580214);
  sub_100570358();
  (*(v5 + 8))(v7, v4);
  sub_10008CDD8(v9, type metadata accessor for RecentlyPlayedContentView);
  KeyPath = swift_getKeyPath();
  v11 = (a1 + *(sub_100009DCC(&qword_1006E3418, &qword_100580190) + 36));
  v12 = sub_100009DCC(&qword_1006E3420, &qword_100580198);
  result = sub_1000A0630(v2, v11 + *(v12 + 28), type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  *v11 = KeyPath;
  return result;
}

unint64_t sub_10008CD84()
{
  result = qword_1006E3428;
  if (!qword_1006E3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E3428);
  }

  return result;
}

uint64_t sub_10008CDD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10008CE38@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v57 = type metadata accessor for RecentlyPlayedExtraLargeContentView(0);
  __chkstk_darwin();
  v52 = (&v51 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_100009DCC(&qword_1006E34D0, &qword_100580268);
  __chkstk_darwin();
  v56 = &v51 - v2;
  v63 = sub_100009DCC(&qword_1006E34D8, &qword_100580270);
  __chkstk_darwin();
  v58 = &v51 - v3;
  v55 = type metadata accessor for RecentlyPlayedLargeContentView(0);
  __chkstk_darwin();
  v53 = (&v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = type metadata accessor for RecentlyPlayedMediumContentView(0);
  __chkstk_darwin();
  v59 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = sub_100009DCC(&qword_1006E34E0, &qword_100580278);
  __chkstk_darwin();
  v65 = (&v51 - v6);
  v61 = sub_100009DCC(&qword_1006E34E8, &qword_100580280);
  __chkstk_darwin();
  v8 = &v51 - v7;
  v60 = sub_100009DCC(&qword_1006E34F0, &qword_100580288);
  __chkstk_darwin();
  v10 = &v51 - v9;
  v62 = sub_100009DCC(&qword_1006E34F8, &qword_100580290);
  __chkstk_darwin();
  v12 = &v51 - v11;
  v67 = sub_100009DCC(&qword_1006E3500, &qword_100580298);
  __chkstk_darwin();
  v14 = &v51 - v13;
  v15 = type metadata accessor for RecentlyPlayedSmallContentView(0);
  __chkstk_darwin();
  v17 = (&v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_1005724A8();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = (&v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000A8194(v21);
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == enum case for WidgetFamily.systemSmall(_:))
  {
    *v17 = swift_getKeyPath();
    sub_100009DCC(&qword_1006E3540, &qword_1005802A0);
    swift_storeEnumTagMultiPayload();
    v23 = v17 + v15[5];
    *v23 = swift_getKeyPath();
    v23[8] = 0;
    v24 = v15[6];
    *(v17 + v24) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E2140, &qword_10057E798);
    swift_storeEnumTagMultiPayload();
    v25 = v15[7];
    *(v17 + v25) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0C70, &unk_10057C840);
    swift_storeEnumTagMultiPayload();
    v26 = v15[8];
    *(v17 + v26) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0EB0, &qword_10057CB00);
    swift_storeEnumTagMultiPayload();
    sub_1000A0630(v17, v10, type metadata accessor for RecentlyPlayedSmallContentView);
    swift_storeEnumTagMultiPayload();
    sub_100091584(&qword_1006E3518, type metadata accessor for RecentlyPlayedSmallContentView, &unk_100580588);
    sub_100091584(&qword_1006E3520, type metadata accessor for RecentlyPlayedMediumContentView, &unk_100580538);
    sub_10056F5B8();
    sub_10000CC8C(v12, v8, &qword_1006E34F8, &qword_100580290);
    swift_storeEnumTagMultiPayload();
    sub_1000A0444();
    sub_1000A0530();
    sub_10056F5B8();
    sub_10001036C(v12, &qword_1006E34F8, &qword_100580290);
    sub_10000CC8C(v14, v65, &qword_1006E3500, &qword_100580298);
    swift_storeEnumTagMultiPayload();
    sub_1000A03B8();
    sub_10056F5B8();
    sub_10001036C(v14, &qword_1006E3500, &qword_100580298);
    v27 = type metadata accessor for RecentlyPlayedSmallContentView;
LABEL_5:
    v32 = v27;
    v33 = v17;
    return sub_10008CDD8(v33, v32);
  }

  v28 = v64;
  if (v22 == enum case for WidgetFamily.systemMedium(_:))
  {
    KeyPath = swift_getKeyPath();
    v17 = v59;
    *v59 = KeyPath;
    sub_100009DCC(&qword_1006E3540, &qword_1005802A0);
    swift_storeEnumTagMultiPayload();
    v30 = *(v28 + 20);
    *(v17 + v30) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0C70, &unk_10057C840);
    swift_storeEnumTagMultiPayload();
    v31 = *(v28 + 24);
    *(v17 + v31) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0EB0, &qword_10057CB00);
    swift_storeEnumTagMultiPayload();
    sub_1000A0630(v17, v10, type metadata accessor for RecentlyPlayedMediumContentView);
    swift_storeEnumTagMultiPayload();
    sub_100091584(&qword_1006E3518, type metadata accessor for RecentlyPlayedSmallContentView, &unk_100580588);
    sub_100091584(&qword_1006E3520, type metadata accessor for RecentlyPlayedMediumContentView, &unk_100580538);
    sub_10056F5B8();
    sub_10000CC8C(v12, v8, &qword_1006E34F8, &qword_100580290);
    swift_storeEnumTagMultiPayload();
    sub_1000A0444();
    sub_1000A0530();
    sub_10056F5B8();
    sub_10001036C(v12, &qword_1006E34F8, &qword_100580290);
    sub_10000CC8C(v14, v65, &qword_1006E3500, &qword_100580298);
    swift_storeEnumTagMultiPayload();
    sub_1000A03B8();
    sub_10056F5B8();
    sub_10001036C(v14, &qword_1006E3500, &qword_100580298);
    v27 = type metadata accessor for RecentlyPlayedMediumContentView;
    goto LABEL_5;
  }

  if (v22 == enum case for WidgetFamily.systemLarge(_:))
  {
    v35 = swift_getKeyPath();
    v36 = v53;
    *v53 = v35;
    sub_100009DCC(&qword_1006E3540, &qword_1005802A0);
    swift_storeEnumTagMultiPayload();
    v37 = v55;
    v38 = *(v55 + 20);
    *(v36 + v38) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0EA8, &qword_10057CAC8);
    swift_storeEnumTagMultiPayload();
    v39 = v37[6];
    *(v36 + v39) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0C70, &unk_10057C840);
    swift_storeEnumTagMultiPayload();
    v40 = v37[7];
    *(v36 + v40) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0EB0, &qword_10057CB00);
    swift_storeEnumTagMultiPayload();
    v41 = v36 + v37[8];
    *v41 = swift_getKeyPath();
    *(v41 + 8) = 0;
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0;
    sub_1000A0630(v36, v56, type metadata accessor for RecentlyPlayedLargeContentView);
    swift_storeEnumTagMultiPayload();
    sub_100091584(&qword_1006E3530, type metadata accessor for RecentlyPlayedLargeContentView, &unk_1005804E8);
    sub_100091584(&qword_1006E3538, type metadata accessor for RecentlyPlayedExtraLargeContentView, &unk_100580498);
    v42 = v58;
    sub_10056F5B8();
    sub_10000CC8C(v42, v8, &qword_1006E34D8, &qword_100580270);
    swift_storeEnumTagMultiPayload();
    sub_1000A0444();
    sub_1000A0530();
    sub_10056F5B8();
    sub_10001036C(v42, &qword_1006E34D8, &qword_100580270);
    sub_10000CC8C(v14, v65, &qword_1006E3500, &qword_100580298);
    swift_storeEnumTagMultiPayload();
    sub_1000A03B8();
    sub_10056F5B8();
    sub_10001036C(v14, &qword_1006E3500, &qword_100580298);
    v43 = type metadata accessor for RecentlyPlayedLargeContentView;
  }

  else
  {
    v44 = v65;
    if (v22 != enum case for WidgetFamily.systemExtraLarge(_:))
    {
      *v65 = 0xD000000000000012;
      v44[1] = 0x80000001005AAE70;
      *(v44 + 16) = 0;
      v44[3] = _swiftEmptyArrayStorage;
      swift_storeEnumTagMultiPayload();
      sub_1000A03B8();
      sub_10056F5B8();
      return (*(v19 + 8))(v21, v18);
    }

    v45 = swift_getKeyPath();
    v36 = v52;
    *v52 = v45;
    sub_100009DCC(&qword_1006E3540, &qword_1005802A0);
    swift_storeEnumTagMultiPayload();
    v46 = v57;
    v47 = *(v57 + 20);
    *(v36 + v47) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0C70, &unk_10057C840);
    swift_storeEnumTagMultiPayload();
    v48 = *(v46 + 24);
    *(v36 + v48) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0EB0, &qword_10057CB00);
    swift_storeEnumTagMultiPayload();
    v49 = v36 + *(v46 + 28);
    *v49 = swift_getKeyPath();
    *(v49 + 8) = 0;
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0;
    sub_1000A0630(v36, v56, type metadata accessor for RecentlyPlayedExtraLargeContentView);
    swift_storeEnumTagMultiPayload();
    sub_100091584(&qword_1006E3530, type metadata accessor for RecentlyPlayedLargeContentView, &unk_1005804E8);
    sub_100091584(&qword_1006E3538, type metadata accessor for RecentlyPlayedExtraLargeContentView, &unk_100580498);
    v50 = v58;
    sub_10056F5B8();
    sub_10000CC8C(v50, v8, &qword_1006E34D8, &qword_100580270);
    swift_storeEnumTagMultiPayload();
    sub_1000A0444();
    sub_1000A0530();
    sub_10056F5B8();
    sub_10001036C(v50, &qword_1006E34D8, &qword_100580270);
    sub_10000CC8C(v14, v44, &qword_1006E3500, &qword_100580298);
    swift_storeEnumTagMultiPayload();
    sub_1000A03B8();
    sub_10056F5B8();
    sub_10001036C(v14, &qword_1006E3500, &qword_100580298);
    v43 = type metadata accessor for RecentlyPlayedExtraLargeContentView;
  }

  v32 = v43;
  v33 = v36;
  return sub_10008CDD8(v33, v32);
}

uint64_t sub_10008DD98@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v79 = sub_10056E698();
  v78 = *(v79 - 8);
  __chkstk_darwin();
  v94 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v73 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v69 - v4;
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v70 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v69 - v6;
  v83 = sub_100009DCC(&qword_1006E37E0, &qword_1005805E0);
  __chkstk_darwin();
  v87 = &v69 - v7;
  v86 = sub_100009DCC(&qword_1006E37E8, &qword_1005805E8);
  __chkstk_darwin();
  v9 = &v69 - v8;
  v85 = sub_100009DCC(&qword_1006E37F0, &qword_1005805F0);
  __chkstk_darwin();
  v11 = &v69 - v10;
  sub_100009DCC(&qword_1006E37F8, &qword_1005805F8);
  __chkstk_darwin();
  v84 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v69 - v13;
  v82 = sub_100009DCC(&qword_1006E3800, &qword_100580600);
  __chkstk_darwin();
  v81 = (&v69 - v15);
  v96 = sub_100009DCC(&qword_1006E3808, &qword_100580608);
  __chkstk_darwin();
  v97 = &v69 - v16;
  v77 = sub_100009DCC(&qword_1006E3810, &qword_100580610);
  v76 = *(v77 - 8);
  __chkstk_darwin();
  v91 = &v69 - v17;
  v74 = sub_100009DCC(&qword_1006E3818, &qword_100580618);
  __chkstk_darwin();
  v75 = &v69 - v18;
  v98 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v89 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = (&v69 - v20);
  __chkstk_darwin();
  v23 = (&v69 - v22);
  __chkstk_darwin();
  v25 = (&v69 - v24);
  v95 = type metadata accessor for WidgetMusicItem(0);
  v88 = *(v95 - 8);
  __chkstk_darwin();
  v27 = (&v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000A84D4(v25);
  sub_10008EB88(v27);
  sub_10008CDD8(v25, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  *v11 = sub_10056F378();
  *(v11 + 1) = 0x4014000000000000;
  v11[16] = 0;
  v28 = &v11[*(sub_100009DCC(&qword_1006E3820, &unk_100580620) + 44)];
  v90 = v27;
  sub_10008EF00(v1, v27, v28);
  v93 = v1;
  sub_1000A84D4(v23);
  v29 = sub_1000913DC();
  v31 = v30;
  sub_10008CDD8(v23, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  if (v31)
  {
    v71 = v14;
    v32 = &v9[*(v86 + 36)];
    *v32 = v29;
    *(v32 + 1) = v31;
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    type metadata accessor for CGSize(0);
    v99 = 0;
    v100 = 0;
    sub_100570668();
    v33 = v102;
    *(v32 + 2) = v101;
    *(v32 + 6) = v33;
    v34 = type metadata accessor for ErrorMessageModifier(0);
    sub_10056FDE8();
    v35 = *(v34 + 36);
    *&v32[v35] = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0148, &qword_10057C450);
    swift_storeEnumTagMultiPayload();
    v36 = &v32[*(v34 + 40)];
    *v36 = swift_getKeyPath();
    *(v36 + 1) = 0;
    *(v36 + 2) = 0;
    *(v36 + 3) = 0;
    v36[32] = 0;
    sub_10000CC8C(v11, v9, &qword_1006E37F0, &qword_1005805F0);
    sub_10000CC8C(v9, v87, &qword_1006E37E8, &qword_1005805E8);
    swift_storeEnumTagMultiPayload();
    sub_1000A1B80();
    sub_100010BC0(&qword_1006E3830, &qword_1006E37F0, &qword_1005805F0, &protocol conformance descriptor for VStack<A>);
    v37 = v84;
    v14 = v71;
    sub_10056F5B8();
    sub_10001036C(v9, &qword_1006E37E8, &qword_1005805E8);
  }

  else
  {
    sub_10000CC8C(v11, v87, &qword_1006E37F0, &qword_1005805F0);
    swift_storeEnumTagMultiPayload();
    sub_1000A1B80();
    sub_100010BC0(&qword_1006E3830, &qword_1006E37F0, &qword_1005805F0, &protocol conformance descriptor for VStack<A>);
    v37 = v84;
    sub_10056F5B8();
  }

  sub_10001036C(v11, &qword_1006E37F0, &qword_1005805F0);
  sub_100019B40(v37, v14, &qword_1006E37F8, &qword_1005805F8);
  v38 = v81;
  sub_1000A84D4(v81);
  sub_100019B40(v14, v38 + *(v82 + 36), &qword_1006E37F8, &qword_1005805F8);
  v39 = sub_1005709B8();
  v41 = v40;
  v42 = v97;
  v43 = &v97[*(v96 + 36)];
  sub_1000918B0(v43);
  v44 = (v43 + *(sub_100009DCC(&qword_1006E23C8, &qword_10057EA40) + 36));
  *v44 = v39;
  v44[1] = v41;
  sub_100019B40(v38, v42, &qword_1006E3800, &qword_100580600);
  sub_1000A84D4(v21);
  v45 = v98;
  v47 = v90;
  v46 = v91;
  if ((*(v21 + *(v98 + 20)) & 0xFE) == 2 || (v48 = v72, sub_10000CC8C(v21 + *(v98 + 24), v72, &qword_1006E0618, &unk_10057C230), v49 = (*(v88 + 48))(v48, 1, v95), sub_10001036C(v48, &qword_1006E0618, &unk_10057C230), v49 == 1) || !*(v21 + *(v45 + 32)))
  {
    sub_10008CDD8(v21, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    v58 = *(v95 + 28);
    v51 = sub_10056C8A8();
    v55 = v92;
    (*(*(v51 - 8) + 16))(v92, v47 + v58, v51);
    v57 = v78;
    v54 = v94;
    v56 = v89;
  }

  else
  {
    sub_10008CDD8(v21, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    v50 = v70;
    sub_10056C868();
    v51 = sub_10056C8A8();
    v52 = *(v51 - 8);
    result = (*(v52 + 48))(v50, 1, v51);
    v54 = v94;
    v55 = v92;
    v56 = v89;
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v52 + 32))(v92, v50, v51);
    v57 = v78;
  }

  sub_10056C8A8();
  (*(*(v51 - 8) + 56))(v55, 0, 1, v51);
  sub_1000A1C68();
  v59 = v97;
  sub_10056FF68();
  sub_10001036C(v55, qword_1006E1D50, &qword_10057CA90);
  sub_10001036C(v59, &qword_1006E3808, &qword_100580608);
  sub_1000A84D4(v56);
  if ((*(v56 + *(v98 + 20)) & 0xFE) == 2 || (v60 = v73, sub_10000CC8C(v56 + *(v98 + 24), v73, &qword_1006E0618, &unk_10057C230), v61 = (*(v88 + 48))(v60, 1, v95), v62 = v60, v63 = v98, sub_10001036C(v62, &qword_1006E0618, &unk_10057C230), v61 == 1) || !*(v56 + *(v63 + 32)))
  {
    sub_10008CDD8(v56, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    type metadata accessor for RecentlyPlayedSmallContentView(0);
    sub_1000A81E4(v54);
    v64 = v79;
  }

  else
  {
    sub_10008CDD8(v56, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    v64 = v79;
    (*(v57 + 104))(v54, enum case for ColorScheme.light(_:), v79);
  }

  KeyPath = swift_getKeyPath();
  v66 = v75;
  v67 = &v75[*(v74 + 36)];
  v68 = sub_100009DCC(&qword_1006E0DE0, &qword_10057E940);
  (*(v57 + 32))(v67 + *(v68 + 28), v54, v64);
  *v67 = KeyPath;
  (*(v76 + 32))(v66, v46, v77);
  sub_100019B40(v66, v80, &qword_1006E3818, &qword_100580618);
  return sub_10008CDD8(v47, type metadata accessor for WidgetMusicItem);
}

uint64_t sub_10008EB88@<X0>(uint64_t a1@<X8>)
{
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v24 - v5;
  __chkstk_darwin();
  v8 = &v24 - v7;
  v9 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v10 = v9;
  if ((*(v1 + *(v9 + 20)) & 0xFE) != 2)
  {
    v25 = *(v9 + 24);
    sub_10000CC8C(v1 + v25, v8, &qword_1006E0618, &unk_10057C230);
    v11 = type metadata accessor for WidgetMusicItem(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1;
    v14 = v12(v8, 1, v11);
    sub_10001036C(v8, &qword_1006E0618, &unk_10057C230);
    v15 = v14 == 1;
    a1 = v13;
    if (!v15)
    {
      if (*(v1 + *(v10 + 32)))
      {
        sub_10000CC8C(v1 + v25, v6, &qword_1006E0618, &unk_10057C230);
        if (v12(v6, 1, v11) != 1)
        {
          v21 = v6;
          return sub_1000A2F00(v21, a1, type metadata accessor for WidgetMusicItem);
        }

        sub_10001036C(v6, &qword_1006E0618, &unk_10057C230);
      }
    }
  }

  v16 = *(v1 + *(v10 + 28));
  v17 = *(v16 + 16);
  v18 = type metadata accessor for WidgetMusicItem(0);
  v19 = *(v18 - 8);
  v20 = v19;
  if (v17)
  {
    sub_1000A0630(v16 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v4, type metadata accessor for WidgetMusicItem);
    (*(v20 + 56))(v4, 0, 1, v18);
    v21 = v4;
    return sub_1000A2F00(v21, a1, type metadata accessor for WidgetMusicItem);
  }

  (*(v19 + 56))(v4, 1, 1, v18);
  if (qword_1006DF9B8 != -1)
  {
    swift_once();
  }

  v23 = sub_10000C49C(v18, qword_1006FC1D8);
  sub_1000A0630(v23, a1, type metadata accessor for WidgetMusicItem);
  result = (*(v20 + 48))(v4, 1, v18);
  if (result != 1)
  {
    return sub_10001036C(v4, &qword_1006E0618, &unk_10057C230);
  }

  return result;
}

uint64_t sub_10008EF00@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v81 = a3;
  sub_100009DCC(&qword_1006E3848, &qword_100580660);
  __chkstk_darwin();
  v5 = &v67 - v4;
  v72 = sub_100009DCC(&qword_1006E3850, &qword_100580668);
  __chkstk_darwin();
  v77 = &v67 - v6;
  v76 = sub_100009DCC(&qword_1006E3858, &qword_100580670);
  __chkstk_darwin();
  v75 = &v67 - v7;
  v73 = sub_100009DCC(&qword_1006E3860, &qword_100580678);
  __chkstk_darwin();
  v82 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v78 = &v67 - v9;
  __chkstk_darwin();
  v80 = &v67 - v10;
  sub_100009DCC(&qword_1006E3868, &qword_100580680);
  __chkstk_darwin();
  v12 = &v67 - v11;
  v13 = sub_100572508();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v67 - v17;
  sub_100009DCC(&qword_1006E3870, &unk_100580688);
  __chkstk_darwin();
  v79 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v67 - v20;
  v83 = a1;
  sub_10008F920(v18);
  sub_1005724C8();
  v22 = sub_1005724E8();
  v23 = *(v14 + 8);
  v23(v16, v13);
  v74 = v13;
  v71 = v23;
  v70 = v14 + 8;
  v23(v18, v13);
  v68 = v21;
  if (v22)
  {
    v24 = v69;
    if (qword_1006DF958 != -1)
    {
      swift_once();
    }

    v25 = sub_100009DCC(&qword_1006E1910, &unk_10057EA50);
    v26 = sub_10000C49C(v25, qword_1006FC128);
    (*(*(v25 - 8) + 16))(v12, v26, v25);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E1038, &qword_10057CC20);
    v27 = sub_100010324(&qword_1006E1928, &unk_10057EA60);
    v28 = sub_1000378D0();
    *&v86 = v27;
    *(&v86 + 1) = v28;
    swift_getOpaqueTypeConformance2();
    sub_1000A1D54();
    sub_10056F5B8();
  }

  else
  {
    *(&v87 + 1) = type metadata accessor for WidgetMusicItem(0);
    *v88 = &off_100681290;
    v29 = sub_10002AB7C(&v86);
    v24 = v69;
    sub_1000A0630(v69, v29, type metadata accessor for WidgetMusicItem);
    v30 = Corner.small.unsafeMutableAddressor();
    v31 = *(v30 + 16);
    *&v88[8] = *v30;
    v88[24] = v31;
    v32 = sub_10056FA88();
    sub_10056E598();
    LOBYTE(v89) = v32;
    *(&v89 + 1) = v33;
    *&v90 = v34;
    *(&v90 + 1) = v35;
    *&v91 = v36;
    BYTE8(v91) = 0;
    sub_10000CC8C(&v86, v12, &qword_1006E1038, &qword_10057CC20);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E1910, &unk_10057EA50);
    sub_100009DCC(&qword_1006E1038, &qword_10057CC20);
    v37 = sub_100010324(&qword_1006E1928, &unk_10057EA60);
    v38 = sub_1000378D0();
    v84 = v37;
    v85 = v38;
    swift_getOpaqueTypeConformance2();
    sub_1000A1D54();
    sub_10056F5B8();
    sub_10001036C(&v86, &qword_1006E1038, &qword_10057CC20);
  }

  *v5 = sub_10056F378();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v39 = sub_100009DCC(&qword_1006E3880, &qword_100580698);
  sub_10008FC58(v83, v24, &v5[*(v39 + 44)]);
  sub_1005709F8();
  sub_10056EDF8();
  v40 = v77;
  sub_100019B40(v5, v77, &qword_1006E3848, &qword_100580660);
  v41 = (v40 + *(v72 + 36));
  v42 = v90;
  v41[4] = v89;
  v41[5] = v42;
  v41[6] = v91;
  v43 = v87;
  *v41 = v86;
  v41[1] = v43;
  v44 = *&v88[16];
  v41[2] = *v88;
  v41[3] = v44;
  sub_10008F920(v18);
  sub_1005724C8();
  v45 = sub_1005724E8();
  v46 = v16;
  v47 = v74;
  v72 = v16;
  v48 = v71;
  v71(v46, v74);
  v48(v18, v47);
  if (v45)
  {
    v49 = 2;
  }

  else
  {
    v49 = 1;
  }

  KeyPath = swift_getKeyPath();
  v51 = v75;
  sub_100019B40(v40, v75, &qword_1006E3850, &qword_100580668);
  v52 = v51 + *(v76 + 36);
  *v52 = KeyPath;
  *(v52 + 8) = v49;
  *(v52 + 16) = 0;
  v53 = v78;
  v54 = &v78[*(v73 + 36)];
  v55 = *(sub_100009DCC(&qword_1006E3888, &qword_1005806D0) + 28);
  v56 = enum case for Text.TruncationMode.tail(_:);
  v57 = sub_10056FE08();
  (*(*(v57 - 8) + 104))(v54 + v55, v56, v57);
  *v54 = swift_getKeyPath();
  sub_100019B40(v51, v53, &qword_1006E3858, &qword_100580670);
  v58 = v80;
  sub_100019B40(v53, v80, &qword_1006E3860, &qword_100580678);
  sub_10008F920(v18);
  v59 = v72;
  sub_1005724C8();
  LOBYTE(v56) = sub_1005724E8();
  v48(v59, v47);
  v48(v18, v47);
  LODWORD(v83) = v56 & 1;
  v60 = v68;
  v61 = v79;
  sub_10000CC8C(v68, v79, &qword_1006E3870, &unk_100580688);
  v62 = v82;
  sub_10000CC8C(v58, v82, &qword_1006E3860, &qword_100580678);
  v63 = v81;
  sub_10000CC8C(v61, v81, &qword_1006E3870, &unk_100580688);
  v64 = sub_100009DCC(&qword_1006E3890, &qword_100580708);
  sub_10000CC8C(v62, v63 + *(v64 + 48), &qword_1006E3860, &qword_100580678);
  v65 = v63 + *(v64 + 64);
  *v65 = 0;
  *(v65 + 8) = v83;
  *(v65 + 9) = (v56 & 1) == 0;
  sub_10001036C(v58, &qword_1006E3860, &qword_100580678);
  sub_10001036C(v60, &qword_1006E3870, &unk_100580688);
  sub_10001036C(v62, &qword_1006E3860, &qword_100580678);
  return sub_10001036C(v61, &qword_1006E3870, &unk_100580688);
}

uint64_t sub_10008F920@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_10056F198();
  v25 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100572468();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v24 - v10;
  v12 = type metadata accessor for RecentlyPlayedSmallContentView(0);
  sub_1000A8484(v11);
  sub_100572458();
  v13 = sub_100572448();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v11, v6);
  if (v13)
  {
    v15 = v2 + *(v12 + 20);
    v16 = *v15;
    if (*(v15 + 8) == 1)
    {
      if ((v16 & 1) == 0)
      {
        return sub_1005724C8();
      }
    }

    else
    {

      v18 = sub_100573438();
      v19 = sub_10056F9D8();
      sub_10056DE58(v18, &_mh_execute_header, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

      sub_10056F188();
      swift_getAtKeyPath();
      sub_100053068(v16, 0);
      (*(v25 + 8))(v5, v3);
      if ((v27 & 1) == 0)
      {
        return sub_1005724C8();
      }
    }
  }

  v20 = v2 + *(v12 + 20);
  v21 = *v20;
  if (*(v20 + 8) == 1)
  {
    if ((v21 & 1) == 0)
    {
      return sub_1005724F8();
    }
  }

  else
  {

    v22 = sub_100573438();
    v23 = sub_10056F9D8();
    sub_10056DE58(v22, &_mh_execute_header, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10056F188();
    swift_getAtKeyPath();
    sub_100053068(v21, 0);
    (*(v25 + 8))(v5, v3);
    if ((v28 & 1) == 0)
    {
      return sub_1005724F8();
    }
  }

  return sub_1005724B8();
}

uint64_t sub_10008FC58@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v60 = a3;
  v59 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v58 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v56 = (&v55 - v6);
  v7 = sub_100009DCC(&qword_1006E3898, &qword_100580710);
  v76 = *(v7 - 8);
  v77 = v7;
  __chkstk_darwin();
  v57 = &v55 - v8;
  sub_100009DCC(&qword_1006E38A0, &qword_100580718);
  __chkstk_darwin();
  v79 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v78 = &v55 - v10;
  v71 = sub_10056F808();
  v70 = *(v71 - 8);
  __chkstk_darwin();
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100009DCC(&qword_1006E38A8, &qword_100580720);
  __chkstk_darwin();
  v14 = &v55 - v13;
  v15 = sub_100009DCC(&qword_1006E38B0, &qword_100580728);
  v73 = *(v15 - 8);
  v74 = v15;
  __chkstk_darwin();
  v72 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = &v55 - v17;
  v18 = sub_10056EDA8();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v55 - v22;
  type metadata accessor for RecentlyPlayedSmallContentView(0);
  v75 = a1;
  sub_1000A84AC(v23);
  sub_10056ED98();
  sub_100091584(&qword_1006E0C78, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
  LOBYTE(a1) = sub_100573D78();
  v24 = *(v19 + 8);
  v24(v21, v18);
  v24(v23, v18);
  if (a1)
  {
    sub_1005709E8();
    sub_10056E888();
    v67 = 0;
    v68 = v85;
    v66 = v87;
    v65 = v89;
    v64 = v90;
    v83 = 1;
    v82 = v86;
    v81 = v88;
    v61 = 1;
    v62 = v86;
    v63 = v88;
    v84 = 0;
  }

  else
  {
    v68 = 0;
    v66 = 0;
    v65 = 0;
    v64 = 0;
    v63 = 0;
    v62 = 0;
    v61 = 0;
    v67 = 1;
  }

  *v14 = sub_10056F378();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v25 = sub_100009DCC(&qword_1006E38B8, &qword_100580730);
  sub_10009052C(a2, &v14[*(v25 + 44)]);
  sub_10056F7E8();
  sub_100010BC0(&qword_1006E38C0, &qword_1006E38A8, &qword_100580720, &protocol conformance descriptor for VStack<A>);
  sub_1005701F8();
  (*(v70 + 8))(v12, v71);
  sub_10001036C(v14, &qword_1006E38A8, &qword_100580720);
  if (*(a2 + *(type metadata accessor for WidgetMusicItem(0) + 64)) == 1)
  {
    v26 = v57;
    sub_1000A0630(a2, v57, type metadata accessor for WidgetMusicItem);
    v27 = v56;
    sub_1000A84D4(v56);
    v28 = v59;
    v29 = *(v59 + 24);
    v30 = type metadata accessor for PlaybackButtonLarge(0);
    sub_10000CC8C(v27 + v29, v26 + *(v30 + 20), &qword_1006E0618, &unk_10057C230);
    sub_10008CDD8(v27, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    v31 = v58;
    sub_1000A84D4(v58);
    LOBYTE(v29) = *(v31 + *(v28 + 20));
    sub_10008CDD8(v31, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    *(v26 + *(v30 + 24)) = v29;
    LOBYTE(v29) = sub_10056FA48();
    sub_10056E598();
    v32 = v77;
    v33 = v26 + *(v77 + 36);
    *v33 = v29;
    *(v33 + 8) = v34;
    *(v33 + 16) = v35;
    *(v33 + 24) = v36;
    *(v33 + 32) = v37;
    *(v33 + 40) = 0;
    v38 = v26;
    v39 = v78;
    sub_100019B40(v38, v78, &qword_1006E3898, &qword_100580710);
    v40 = 0;
  }

  else
  {
    v40 = 1;
    v32 = v77;
    v39 = v78;
  }

  (*(v76 + 56))(v39, v40, 1, v32);
  v42 = v72;
  v41 = v73;
  v43 = *(v73 + 16);
  v44 = v80;
  v45 = v74;
  v43(v72, v80, v74);
  v46 = v79;
  sub_10000CC8C(v39, v79, &qword_1006E38A0, &qword_100580718);
  v47 = v60;
  v48 = v61;
  *v60 = 0;
  v47[1] = v48;
  v49 = v62;
  v47[2] = v68;
  v47[3] = v49;
  v50 = v63;
  v47[4] = v66;
  v47[5] = v50;
  v51 = v64;
  v47[6] = v65;
  v47[7] = v51;
  *(v47 + 64) = v67;
  v52 = sub_100009DCC(&qword_1006E38C8, &unk_100580738);
  v43(v47 + *(v52 + 48), v42, v45);
  sub_10000CC8C(v46, v47 + *(v52 + 64), &qword_1006E38A0, &qword_100580718);
  sub_10001036C(v39, &qword_1006E38A0, &qword_100580718);
  v53 = *(v41 + 8);
  v53(v44, v45);
  sub_10001036C(v46, &qword_1006E38A0, &qword_100580718);
  return (v53)(v42, v45);
}

uint64_t sub_10009052C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v109 = a1;
  v108 = a2;
  v118 = sub_10056FC68();
  v117 = *(v118 - 8);
  __chkstk_darwin();
  v3 = v107 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v5 = (v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v120 = sub_100009DCC(&qword_1006E24B0, &qword_10057EB20);
  v119 = *(v120 - 8);
  __chkstk_darwin();
  v7 = v107 - v6;
  v8 = sub_100572508();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v107 - v12;
  sub_100009DCC(&qword_1006E38D0, &qword_100580748);
  __chkstk_darwin();
  v110 = v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = v107 - v15;
  sub_10008F920(v13);
  sub_1005724C8();
  v16 = sub_1005724E8();
  v17 = *(v9 + 8);
  v17(v11, v8);
  v17(v13, v8);
  if (v16)
  {
    sub_1000A84D4(v5);
    v18 = sub_1000911F8();
    v20 = v19;
    v22 = v21;
    sub_10008CDD8(v5, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    v23 = [objc_opt_self() systemFontOfSize:0.0];
    v24 = [v23 fontName];

    sub_1005728D8();
    v25 = v117;
    v26 = v118;
    (*(v117 + 104))(v3, enum case for Font.TextStyle.caption2(_:), v118);
    sub_10056FB98();

    (*(v25 + 8))(v3, v26);
    v27 = sub_10056FE88();
    v29 = v28;
    LOBYTE(v25) = v30;

    sub_10001B5A4(v18, v20, v22 & 1);

    sub_10056FB88();
    v31 = sub_10056FD98();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    sub_10001B5A4(v27, v29, v25 & 1);

    v38 = &v7[*(sub_100009DCC(&qword_1006E24C8, &qword_10057EB38) + 36)];
    v39 = *(sub_100009DCC(&qword_1006E1050, &qword_10057EB40) + 28);
    v40 = enum case for Text.Case.uppercase(_:);
    v41 = sub_10056FE68();
    v42 = *(v41 - 8);
    (*(v42 + 104))(v38 + v39, v40, v41);
    (*(v42 + 56))(v38 + v39, 0, 1, v41);
    *v38 = swift_getKeyPath();
    *v7 = v31;
    *(v7 + 1) = v33;
    v7[16] = v35 & 1;
    *(v7 + 3) = v37;
    if (qword_1006DF938 != -1)
    {
      swift_once();
    }

    v43 = sub_100009DCC(&qword_1006E1058, &qword_10057CCD0);
    v44 = sub_10000C49C(v43, qword_1006FC0D8);
    v45 = v120;
    sub_10000CC8C(v44, &v7[*(v120 + 36)], &qword_1006E1058, &qword_10057CCD0);
    v46 = v111;
    sub_100019B40(v7, v111, &qword_1006E24B0, &qword_10057EB20);
    v47 = 0;
  }

  else
  {
    v47 = 1;
    v46 = v111;
    v45 = v120;
  }

  (*(v119 + 56))(v46, v47, 1, v45);
  v48 = v109;
  v49 = v109[3];
  v107[1] = v109[2];
  v50 = *(v48 + *(type metadata accessor for WidgetMusicItem(0) + 60));
  v51 = *(v50 + 16);
  v107[2] = v49;
  if (v51)
  {
    v52 = (v50 + 32);
    v53 = qword_1006DF8F0;

    if (v53 != -1)
    {
      swift_once();
    }

    v54 = 0;
    v55 = 0;
    v56 = _swiftEmptyArrayStorage;
    v57 = 0xE000000000000000;
    v58 = v51;
    do
    {
      v119 = v56;
      v120 = v54;
      v59 = *v52++;
      TextBadge.view(favoriteBadgeConfiguration:)(qword_1006E07D0, v59);
      v61 = v60;
      v63 = v62;
      v65 = v64;
      sub_10056FC18();
      v117 = sub_10056FE88();
      KeyPath = v66;
      LODWORD(v118) = v67;
      v114 = v68;

      sub_10001B5A4(v61, v63, v65 & 1);

      v69 = v120;
      v70 = v117;
      v51 = KeyPath;
      v115 = sub_10056FE58();
      v113 = v71;
      v112 = v72;
      v74 = v73;
      sub_10001B5A4(v69, v57, v55 & 1);

      sub_10001B5A4(v70, v51, v118 & 1);
      v75 = v115;
      v76 = v113;
      LOBYTE(v51) = v112;

      v54 = v75;
      v57 = v76;
      v55 = v51;
      v56 = v74;
      --v58;
    }

    while (v58);
  }

  else
  {

    v75 = 0;
    v76 = 0xE000000000000000;
  }

  v119 = sub_10056FE58();
  v118 = v77;
  v79 = v78;
  v120 = v80;
  sub_10001B5A4(v75, v76, v51 & 1);

  sub_10056FC18();
  v117 = sub_10056FB28();

  KeyPath = swift_getKeyPath();
  v81 = v79 & 1;
  v140 = v81;
  if (qword_1006DF930 != -1)
  {
    swift_once();
  }

  v82 = qword_1006FC0D0;
  v114 = swift_getKeyPath();
  v115 = v82;

  sub_10056FC18();
  v83 = sub_10056FE88();
  v85 = v84;
  v87 = v86;

  if (qword_1006DF938 != -1)
  {
    swift_once();
  }

  v88 = sub_100009DCC(&qword_1006E1058, &qword_10057CCD0);
  sub_10000C49C(v88, qword_1006FC0D8);
  sub_100010BC0(&qword_1006E24F0, &qword_1006E1058, &qword_10057CCD0, &protocol conformance descriptor for _BlendModeShapeStyle<A>);
  v89 = sub_10056FE28();
  v91 = v90;
  v112 = v92;
  v113 = v93;
  sub_10001B5A4(v83, v85, v87 & 1);

  v94 = v110;
  sub_10000CC8C(v111, v110, &qword_1006E38D0, &qword_100580748);
  v95 = v108;
  sub_10000CC8C(v94, v108, &qword_1006E38D0, &qword_100580748);
  v96 = sub_100009DCC(&qword_1006E38D8, &qword_1005807B8);
  v97 = v95 + *(v96 + 48);
  *&v121 = v119;
  v98 = v118;
  *(&v121 + 1) = v118;
  LOBYTE(v122) = v81;
  *(&v122 + 1) = *v139;
  DWORD1(v122) = *&v139[3];
  LODWORD(v109) = v81;
  *(&v122 + 1) = v120;
  LOWORD(v123) = 256;
  *(&v123 + 2) = v137;
  WORD3(v123) = v138;
  v99 = KeyPath;
  v100 = v117;
  *(&v123 + 1) = KeyPath;
  *&v124 = v117;
  v101 = v114;
  v102 = v115;
  *(&v124 + 1) = v114;
  v125 = v115;
  *(v97 + 64) = v115;
  v103 = v122;
  *v97 = v121;
  *(v97 + 16) = v103;
  v104 = v124;
  *(v97 + 32) = v123;
  *(v97 + 48) = v104;
  v105 = v95 + *(v96 + 64);
  *v105 = v89;
  *(v105 + 8) = v91;
  LOBYTE(v95) = v112 & 1;
  *(v105 + 16) = v112 & 1;
  *(v105 + 24) = v113;
  sub_10000CC8C(&v121, v126, &qword_1006E38E0, &qword_1005807C0);
  sub_10002AAC4(v89, v91, v95);

  sub_10001036C(v111, &qword_1006E38D0, &qword_100580748);
  sub_10001B5A4(v89, v91, v95);

  v126[0] = v119;
  v126[1] = v98;
  v127 = v109;
  *v128 = *v139;
  *&v128[3] = *&v139[3];
  v129 = v120;
  v130 = 256;
  v131 = v137;
  v132 = v138;
  v133 = v99;
  v134 = v100;
  v135 = v101;
  v136 = v102;
  sub_10001036C(v126, &qword_1006E38E0, &qword_1005807C0);
  return sub_10001036C(v110, &qword_1006E38D0, &qword_100580748);
}

uint64_t sub_1000911F8()
{
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v2 = v8 - v1;
  v3 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  if ((*(v0 + *(v3 + 20)) & 0xFE) == 2 || (v4 = v3, sub_10000CC8C(v0 + *(v3 + 24), v2, &qword_1006E0618, &unk_10057C230), v5 = type metadata accessor for WidgetMusicItem(0), v6 = (*(*(v5 - 8) + 48))(v2, 1, v5), sub_10001036C(v2, &qword_1006E0618, &unk_10057C230), v6 == 1) || !*(v0 + *(v4 + 32)))
  {
    if (qword_1006DFA38 != -1)
    {
      swift_once();
    }

    v8[2] = qword_1006FC2C8;
    v8[3] = unk_1006FC2D0;
    sub_10001B550();

    return sub_10056FF28();
  }

  else
  {
    sub_10056F2A8();
    return sub_10056FF08();
  }
}

uint64_t sub_1000913DC()
{
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v2 = &v10 - v1;
  v3 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v4 = v3;
  if ((*(v0 + *(v3 + 20)) & 0xFE) != 2)
  {
    sub_10000CC8C(v0 + *(v3 + 24), v2, &qword_1006E0618, &unk_10057C230);
    v5 = type metadata accessor for WidgetMusicItem(0);
    v6 = (*(*(v5 - 8) + 48))(v2, 1, v5);
    sub_10001036C(v2, &qword_1006E0618, &unk_10057C230);
    if (v6 != 1)
    {
      if (*(v0 + v4[8]))
      {
        return 0;
      }
    }
  }

  v7 = (v0 + v4[10]);
  if (!v7[1])
  {
    if (!*(*(v0 + v4[7]) + 16))
    {
      if (qword_1006DF988 != -1)
      {
        swift_once();
      }

      v8 = qword_1006FC198;
      goto LABEL_6;
    }

    return 0;
  }

  v8 = *v7;
LABEL_6:

  return v8;
}

uint64_t sub_100091584(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000915F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E0800, qword_10057C3B0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10009167C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E0800, qword_10057C3B0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000916F8(uint64_t a1)
{
  sub_1000A4D04(319, &qword_1006E0878, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_100091798()
{
  result = qword_1006E34C0;
  if (!qword_1006E34C0)
  {
    sub_100010324(&qword_1006E3418, &qword_100580190);
    type metadata accessor for RecentlyPlayedContentView(255);
    sub_100091584(&qword_1006E3410, type metadata accessor for RecentlyPlayedContentView, &unk_100580214);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006E34C8, &qword_1006E3420, &qword_100580198, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E34C0);
  }

  return result;
}

uint64_t sub_1000918B0@<X0>(uint64_t a1@<X8>)
{
  sub_100009DCC(&qword_1006E23F8, &qword_10057EA48);
  __chkstk_darwin();
  v3 = &v24 - v2;
  v4 = sub_100572508();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v24 - v8;
  sub_10008F920(&v24 - v8);
  sub_1005724F8();
  v10 = sub_1005724E8();
  v11 = *(v5 + 8);
  v11(v7, v4);
  v11(v9, v4);
  if (v10)
  {
    if (qword_1006DF960 != -1)
    {
      swift_once();
    }

    v12 = sub_100009DCC(&qword_1006E1918, &qword_10057DAA0);
    v13 = sub_10000C49C(v12, qword_1006FC140);
    sub_10000CC8C(v13, v3, &qword_1006E1918, &qword_10057DAA0);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E1910, &unk_10057EA50);
    sub_100052FA0();
    v14 = sub_100010324(&qword_1006E1928, &unk_10057EA60);
    v15 = sub_1000378D0();
    v24 = v14;
    v25 = v15;
    swift_getOpaqueTypeConformance2();
LABEL_10:
    sub_10056F5B8();
    v17 = 0;
    goto LABEL_11;
  }

  sub_10008F920(v9);
  sub_1005724C8();
  sub_100091584(&qword_1006E2400, &type metadata accessor for WidgetLocation, &protocol conformance descriptor for WidgetLocation);
  v16 = sub_1005727E8();
  v11(v7, v4);
  v11(v9, v4);
  if ((v16 & 1) == 0)
  {
    if (qword_1006DF958 != -1)
    {
      swift_once();
    }

    v18 = sub_100009DCC(&qword_1006E1910, &unk_10057EA50);
    v19 = sub_10000C49C(v18, qword_1006FC128);
    (*(*(v18 - 8) + 16))(v3, v19, v18);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E1918, &qword_10057DAA0);
    sub_100052FA0();
    v20 = sub_100010324(&qword_1006E1928, &unk_10057EA60);
    v21 = sub_1000378D0();
    v24 = v20;
    v25 = v21;
    swift_getOpaqueTypeConformance2();
    goto LABEL_10;
  }

  v17 = 1;
LABEL_11:
  v22 = sub_100009DCC(&qword_1006E2410, &qword_10057EA78);
  return (*(*(v22 - 8) + 56))(a1, v17, 1, v22);
}

uint64_t sub_100091D28@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v2 = sub_10056E698();
  v86 = *(v2 - 8);
  v87 = v2;
  __chkstk_darwin();
  v85 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v76 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v74 - v5;
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v74 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &v74 - v7;
  v91 = sub_100009DCC(&qword_1006E38E8, &qword_1005807F8);
  __chkstk_darwin();
  v9 = &v74 - v8;
  v95 = sub_100009DCC(&qword_1006E38F0, &qword_100580800);
  __chkstk_darwin();
  v11 = &v74 - v10;
  v93 = sub_100009DCC(&qword_1006E38F8, &qword_100580808);
  __chkstk_darwin();
  v13 = &v74 - v12;
  sub_100009DCC(&qword_1006E3900, &qword_100580810);
  __chkstk_darwin();
  v92 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = &v74 - v15;
  v90 = sub_100009DCC(&qword_1006E3908, &qword_100580818);
  __chkstk_darwin();
  v96 = (&v74 - v16);
  v99 = sub_100009DCC(&qword_1006E3910, &qword_100580820);
  __chkstk_darwin();
  v100 = &v74 - v17;
  v83 = sub_100009DCC(&qword_1006E3918, &qword_100580828);
  v82 = *(v83 - 8);
  __chkstk_darwin();
  v81 = &v74 - v18;
  v79 = sub_100009DCC(&qword_1006E3920, &qword_100580830);
  __chkstk_darwin();
  v80 = &v74 - v19;
  v101 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v77 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v89 = (&v74 - v21);
  __chkstk_darwin();
  v23 = (&v74 - v22);
  __chkstk_darwin();
  v25 = (&v74 - v24);
  v26 = type metadata accessor for WidgetMusicItem(0);
  v97 = *(v26 - 8);
  v98 = v26;
  __chkstk_darwin();
  v28 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A84D4(v25);
  sub_10008EB88(v28);
  sub_10008CDD8(v25, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  *v13 = sub_10056F218();
  *(v13 + 1) = 0x4030000000000000;
  v13[16] = 0;
  v29 = &v13[*(sub_100009DCC(&qword_1006E3928, &qword_100580838) + 44)];
  v78 = v28;
  sub_100092B84(v28, v1, v29);
  sub_1000A84D4(v23);
  v30 = sub_1000913DC();
  v32 = v31;
  sub_10008CDD8(v23, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  if (v32)
  {
    v33 = &v11[*(v95 + 36)];
    *v33 = v30;
    *(v33 + 1) = v32;
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    type metadata accessor for CGSize(0);
    v102 = 0;
    v103 = 0;
    sub_100570668();
    v34 = v105;
    *(v33 + 2) = v104;
    *(v33 + 6) = v34;
    v35 = type metadata accessor for ErrorMessageModifier(0);
    sub_10056FDE8();
    v36 = *(v35 + 36);
    *&v33[v36] = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0148, &qword_10057C450);
    swift_storeEnumTagMultiPayload();
    v37 = &v33[*(v35 + 40)];
    *v37 = swift_getKeyPath();
    *(v37 + 1) = 0;
    *(v37 + 2) = 0;
    *(v37 + 3) = 0;
    v37[32] = 0;
    sub_10000CC8C(v13, v11, &qword_1006E38F8, &qword_100580808);
    sub_10000CC8C(v11, v9, &qword_1006E38F0, &qword_100580800);
    swift_storeEnumTagMultiPayload();
    sub_1000A1EF0();
    sub_100010BC0(&qword_1006E3938, &qword_1006E38F8, &qword_100580808, &protocol conformance descriptor for HStack<A>);
    v38 = v92;
    sub_10056F5B8();
    sub_10001036C(v11, &qword_1006E38F0, &qword_100580800);
  }

  else
  {
    sub_10000CC8C(v13, v9, &qword_1006E38F8, &qword_100580808);
    swift_storeEnumTagMultiPayload();
    sub_1000A1EF0();
    sub_100010BC0(&qword_1006E3938, &qword_1006E38F8, &qword_100580808, &protocol conformance descriptor for HStack<A>);
    v38 = v92;
    sub_10056F5B8();
  }

  sub_10001036C(v13, &qword_1006E38F8, &qword_100580808);
  v39 = v94;
  sub_100019B40(v38, v94, &qword_1006E3900, &qword_100580810);
  v40 = v96;
  sub_1000A84D4(v96);
  sub_100019B40(v39, v40 + *(v90 + 36), &qword_1006E3900, &qword_100580810);
  v41 = sub_1005709B8();
  v43 = v42;
  v44 = v100;
  v45 = &v100[*(v99 + 36)];
  v46 = v101;
  if (qword_1006DF958 != -1)
  {
    swift_once();
  }

  v47 = sub_100009DCC(&qword_1006E1910, &unk_10057EA50);
  v48 = sub_10000C49C(v47, qword_1006FC128);
  (*(*(v47 - 8) + 16))(v45, v48, v47);
  v49 = &v45[*(sub_100009DCC(&qword_1006E3940, &qword_100580840) + 36)];
  *v49 = v41;
  v49[1] = v43;
  sub_100019B40(v40, v44, &qword_1006E3908, &qword_100580818);
  v50 = v89;
  sub_1000A84D4(v89);
  if ((*(v50 + v46[5]) & 0xFE) == 2 || (v51 = v75, sub_10000CC8C(v50 + v46[6], v75, &qword_1006E0618, &unk_10057C230), v52 = (*(v97 + 48))(v51, 1, v98), sub_10001036C(v51, &qword_1006E0618, &unk_10057C230), v52 == 1) || !*(v50 + v46[8]))
  {
    sub_10008CDD8(v50, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    v62 = *(v98 + 28);
    v54 = sub_10056C8A8();
    v61 = v78;
    v57 = v84;
    (*(*(v54 - 8) + 16))(v84, &v78[v62], v54);
    v58 = v86;
    v59 = v85;
    v60 = v81;
  }

  else
  {
    sub_10008CDD8(v50, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    v53 = v74;
    sub_10056C868();
    v54 = sub_10056C8A8();
    v55 = *(v54 - 8);
    result = (*(v55 + 48))(v53, 1, v54);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v57 = v84;
    (*(v55 + 32))(v84, v53, v54);
    v58 = v86;
    v59 = v85;
    v60 = v81;
    v61 = v78;
  }

  v63 = v77;
  sub_10056C8A8();
  (*(*(v54 - 8) + 56))(v57, 0, 1, v54);
  sub_1000A1FD8();
  v64 = v100;
  sub_10056FF68();
  sub_10001036C(v57, qword_1006E1D50, &qword_10057CA90);
  sub_10001036C(v64, &qword_1006E3910, &qword_100580820);
  sub_1000A84D4(v63);
  if ((*(v63 + *(v101 + 20)) & 0xFE) == 2 || (v65 = v76, sub_10000CC8C(v63 + *(v101 + 24), v76, &qword_1006E0618, &unk_10057C230), v66 = (*(v97 + 48))(v65, 1, v98), v67 = v65, v68 = v101, sub_10001036C(v67, &qword_1006E0618, &unk_10057C230), v66 == 1) || !*(v63 + *(v68 + 32)))
  {
    sub_10008CDD8(v63, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    type metadata accessor for RecentlyPlayedMediumContentView(0);
    sub_1000A81E4(v59);
    v69 = v87;
  }

  else
  {
    sub_10008CDD8(v63, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    v69 = v87;
    (*(v58 + 104))(v59, enum case for ColorScheme.light(_:), v87);
  }

  KeyPath = swift_getKeyPath();
  v71 = v80;
  v72 = &v80[*(v79 + 36)];
  v73 = sub_100009DCC(&qword_1006E0DE0, &qword_10057E940);
  (*(v58 + 32))(v72 + *(v73 + 28), v59, v69);
  *v72 = KeyPath;
  (*(v82 + 32))(v71, v60, v83);
  sub_100019B40(v71, v88, &qword_1006E3920, &qword_100580830);
  return sub_10008CDD8(v61, type metadata accessor for WidgetMusicItem);
}

uint64_t sub_100092B84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v313 = a3;
  sub_100009DCC(&qword_1006E3960, &qword_100580848);
  __chkstk_darwin();
  v312 = &v294[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v335 = &v294[-v6];
  sub_100009DCC(&qword_1006E3968, &qword_100580850);
  __chkstk_darwin();
  v311 = &v294[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v334 = &v294[-v8];
  sub_100009DCC(&qword_1006E3970, &qword_100580858);
  __chkstk_darwin();
  v309 = &v294[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v314 = &v294[-v10];
  __chkstk_darwin();
  v331 = &v294[-v11];
  __chkstk_darwin();
  v306 = &v294[-v12];
  v328 = sub_10056F808();
  v339 = *(v328 - 8);
  __chkstk_darwin();
  v327 = &v294[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v325 = sub_100009DCC(&qword_1006E3978, &qword_100580860);
  __chkstk_darwin();
  v326 = &v294[-v14];
  v330 = sub_100009DCC(&qword_1006E3980, &qword_100580868);
  v341 = *(v330 - 8);
  __chkstk_darwin();
  v319 = &v294[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v323 = &v294[-v16];
  __chkstk_darwin();
  v340 = &v294[-v17];
  __chkstk_darwin();
  v321 = &v294[-v18];
  v304 = sub_100009DCC(&qword_1006E3988, &qword_100580870);
  __chkstk_darwin();
  v316 = &v294[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v320 = &v294[-v20];
  sub_100009DCC(&qword_1006E3990, &qword_100580878);
  __chkstk_darwin();
  v307 = &v294[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v329 = &v294[-v22];
  v308 = sub_100009DCC(&qword_1006E3998, &qword_100580880);
  __chkstk_darwin();
  v310 = &v294[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v333 = &v294[-v24];
  v25 = sub_100009DCC(&qword_1006E39A0, &qword_100580888);
  v336 = *(v25 - 8);
  v337 = v25;
  __chkstk_darwin();
  v332 = &v294[-v26];
  v300 = sub_100009DCC(&qword_1006E39A8, &qword_100580890);
  __chkstk_darwin();
  v324 = &v294[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v342 = &v294[-v28];
  v303 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  __chkstk_darwin();
  v302 = &v294[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v301 = &v294[-v30];
  __chkstk_darwin();
  v32 = &v294[-v31];
  v33 = sub_100009DCC(&qword_1006E39B0, &qword_100580898) - 8;
  __chkstk_darwin();
  v35 = &v294[-v34];
  v343 = (sub_100009DCC(&qword_1006E39B8, &qword_1005808A0) - 8);
  __chkstk_darwin();
  v298 = &v294[-v36];
  v349 = sub_100009DCC(&qword_1006E39C0, &qword_1005808A8);
  __chkstk_darwin();
  v348 = &v294[-v37];
  v38 = sub_100009DCC(&qword_1006E39C8, &qword_1005808B0);
  v350 = *(v38 - 8);
  v351 = v38;
  __chkstk_darwin();
  v346 = &v294[-v39];
  v344 = sub_100009DCC(&qword_1006E39D0, &qword_1005808B8);
  __chkstk_darwin();
  v347 = &v294[-v40];
  v345 = sub_100009DCC(&qword_1006E39D8, &unk_1005808C0);
  __chkstk_darwin();
  v318 = &v294[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v322 = &v294[-v42];
  __chkstk_darwin();
  v338 = &v294[-v43];
  v315 = type metadata accessor for WidgetMusicItem(0);
  v428[3] = v315;
  v428[4] = &off_100681290;
  v44 = sub_10002AB7C(v428);
  v317 = a1;
  sub_1000A0630(a1, v44, type metadata accessor for WidgetMusicItem);
  v45 = Corner.medium.unsafeMutableAddressor();
  v46 = *(v45 + 16);
  v429 = *v45;
  v430 = v46;
  v305 = a2;
  sub_1000A84D4(v32);
  v47 = sub_1000911F8();
  v49 = v48;
  v51 = v50;
  v299 = v52;
  sub_10008CDD8(v32, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  sub_1005709F8();
  sub_10056EDF8();
  v51 &= 1u;
  v427 = v51;
  v53 = &v35[*(v33 + 44)];
  v54 = *(sub_100009DCC(&qword_1006E1050, &qword_10057EB40) + 28);
  v55 = enum case for Text.Case.uppercase(_:);
  v56 = sub_10056FE68();
  v57 = *(v56 - 8);
  (*(v57 + 104))(v53 + v54, v55, v56);
  (*(v57 + 56))(v53 + v54, 0, 1, v56);
  *v53 = swift_getKeyPath();
  *v35 = v47;
  *(v35 + 1) = v49;
  v35[16] = v51;
  *(v35 + 17) = *v426;
  *(v35 + 5) = *&v426[3];
  *(v35 + 3) = v299;
  v58 = v424;
  *(v35 + 6) = v423;
  *(v35 + 7) = v58;
  *(v35 + 8) = v425;
  v59 = v420;
  *(v35 + 2) = v419;
  *(v35 + 3) = v59;
  v60 = v422;
  *(v35 + 4) = v421;
  *(v35 + 5) = v60;
  sub_10056FC38();
  v61 = sub_10056FB28();

  KeyPath = swift_getKeyPath();
  v63 = v35;
  v64 = v298;
  sub_100019B40(v63, v298, &qword_1006E39B0, &qword_100580898);
  v65 = &v64[v343[11]];
  *v65 = KeyPath;
  v65[1] = v61;
  if (qword_1006DF928 != -1)
  {
    swift_once();
  }

  v299 = sub_100009DCC(&qword_1006E1058, &qword_10057CCD0);
  v66 = sub_10000C49C(v299, qword_1006FC0B8);
  v67 = v348;
  sub_10000CC8C(v66, &v348[*(v349 + 36)], &qword_1006E1058, &qword_10057CCD0);
  sub_100019B40(v64, v67, &qword_1006E39B8, &qword_1005808A0);
  sub_1000A20BC();
  v68 = v346;
  sub_10056FF58();
  sub_10001036C(v67, &qword_1006E39C0, &qword_1005808A8);
  v69 = sub_10056FA88();
  sub_10056E598();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = v347;
  (*(v350 + 32))(v347, v68, v351);
  v79 = &v78[*(v344 + 36)];
  *v79 = v69;
  *(v79 + 1) = v71;
  *(v79 + 2) = v73;
  *(v79 + 3) = v75;
  *(v79 + 4) = v77;
  v79[40] = 0;
  v80 = sub_10056FA58();
  sub_10056E598();
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v89 = v78;
  v90 = v338;
  sub_100019B40(v89, v338, &qword_1006E39D0, &qword_1005808B8);
  v91 = &v90[*(v345 + 36)];
  *v91 = v80;
  *(v91 + 1) = v82;
  *(v91 + 2) = v84;
  *(v91 + 3) = v86;
  *(v91 + 4) = v88;
  v91[40] = 0;
  v92 = v317;
  v93 = v317[3];
  *&v407 = v317[2];
  *(&v407 + 1) = v93;
  sub_10001B550();

  v94 = sub_10056FF28();
  v296 = v95;
  v297 = v94;
  v295 = v96;
  v298 = v97;
  v98 = *(v92 + *(v315 + 60));
  v99 = *(v98 + 16);
  if (v99)
  {
    v100 = (v98 + 32);
    if (qword_1006DF8E8 != -1)
    {
      swift_once();
    }

    v101 = 0;
    v102 = 0;
    v103 = _swiftEmptyArrayStorage;
    v104 = 0xE000000000000000;
    do
    {
      LODWORD(v347) = v102;
      v348 = v104;
      v349 = v103;
      v350 = v101;
      v351 = v99;
      TextBadge.view(favoriteBadgeConfiguration:)(qword_1006E07A0, *v100);
      v106 = v105;
      v108 = v107;
      v110 = v109;
      sub_10056FB08();
      sub_10056FB88();
      sub_10056FBE8();

      v343 = sub_10056FE88();
      v344 = v111;
      LODWORD(v346) = v112;
      v345 = v113;
      ++v100;

      sub_10001B5A4(v106, v108, v110 & 1);

      v114 = v347;
      v115 = v350;
      v116 = v348;
      v117 = v344;
      v118 = sub_10056FE58();
      v120 = v119;
      v122 = v121;
      v124 = v123;
      v125 = v115;
      v126 = v118;
      sub_10001B5A4(v125, v116, v114 & 1);

      v127 = v351;
      v128 = v117;
      v129 = v120;
      sub_10001B5A4(v343, v128, v346 & 1);

      v101 = v126;
      v104 = v120;
      v102 = v122;
      v103 = v124;
      v99 = v127 - 1;
    }

    while (v99);
  }

  else
  {
    v126 = 0;
    LOBYTE(v122) = 0;
    v129 = 0xE000000000000000;
  }

  v130 = v295;
  v132 = v296;
  v131 = v297;
  v133 = sub_10056FE58();
  v350 = v134;
  v351 = v133;
  v136 = v135;
  v349 = v137;
  sub_10001B5A4(v126, v129, v122 & 1);

  sub_10001B5A4(v131, v132, v130 & 1);

  sub_1005709F8();
  sub_10056EDF8();
  v138 = v136 & 1;
  v418 = v136 & 1;
  v139 = sub_10056FC58();
  v140 = swift_getKeyPath();
  if (qword_1006DF930 != -1)
  {
    swift_once();
  }

  v141 = qword_1006FC0D0;
  v142 = swift_getKeyPath();
  *&v407 = v351;
  *(&v407 + 1) = v350;
  LOBYTE(v408) = v138;
  *(&v408 + 1) = v349;
  v413 = v404;
  v414 = v405;
  v415 = v406;
  v409 = v400;
  v410 = v401;
  v412 = v403;
  v411 = v402;
  *&v416 = v140;
  *(&v416 + 1) = v139;
  *&v417 = v142;
  *(&v417 + 1) = v141;
  v143 = v317;
  v145 = v317[4];
  v144 = v317[5];

  sub_1005709F8();
  if (v144)
  {
    v146 = v145;
  }

  else
  {
    v146 = 0;
  }

  if (v144)
  {
    v147 = v144;
  }

  else
  {
    v147 = 0xE000000000000000;
  }

  sub_10056EDF8();
  v399 = 0;
  v148 = sub_10056FB18();
  v149 = swift_getKeyPath();
  if (qword_1006DF938 != -1)
  {
    swift_once();
  }

  v150 = sub_10000C49C(v299, qword_1006FC0D8);
  v151 = v342;
  sub_10000CC8C(v150, &v342[*(v300 + 36)], &qword_1006E1058, &qword_10057CCD0);
  *v151 = v146;
  *(v151 + 1) = v147;
  v151[16] = 0;
  *(v151 + 3) = _swiftEmptyArrayStorage;
  v152 = v395;
  *(v151 + 6) = v394;
  *(v151 + 7) = v152;
  *(v151 + 8) = v396;
  v153 = v391;
  *(v151 + 2) = v390;
  *(v151 + 3) = v153;
  v154 = v393;
  *(v151 + 4) = v392;
  *(v151 + 5) = v154;
  *(v151 + 18) = v149;
  *(v151 + 19) = v148;
  v155 = v332;
  sub_1000A0630(v143, v332, type metadata accessor for WidgetMusicItem);
  v156 = v301;
  sub_1000A84D4(v301);
  v157 = v303;
  v158 = *(v303 + 24);
  v159 = type metadata accessor for PlaybackButtonLarge(0);
  sub_10000CC8C(v156 + v158, &v155[*(v159 + 20)], &qword_1006E0618, &unk_10057C230);
  sub_10008CDD8(v156, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  v160 = v302;
  sub_1000A84D4(v302);
  v161 = *(v160 + *(v157 + 20));
  sub_10008CDD8(v160, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  v155[*(v159 + 24)] = v161;
  v162 = sub_10056FA48();
  sub_10056E598();
  v164 = v163;
  v166 = v165;
  v168 = v167;
  v170 = v169;
  v171 = &v155[*(sub_100009DCC(&qword_1006E3898, &qword_100580710) + 36)];
  *v171 = v162;
  *(v171 + 1) = v164;
  *(v171 + 2) = v166;
  *(v171 + 3) = v168;
  *(v171 + 4) = v170;
  v171[40] = 0;
  v172 = sub_10056FA58();
  sub_10056E598();
  v173 = &v155[*(v337 + 36)];
  *v173 = v172;
  *(v173 + 1) = v174;
  *(v173 + 2) = v175;
  *(v173 + 3) = v176;
  *(v173 + 4) = v177;
  v173[40] = 0;
  *v333 = sub_10056FA08();
  sub_10000CC8C(&v407, v398, &qword_1006E3A00, &qword_1005808E0);
  v178 = sub_10056F378();
  v179 = v329;
  *v329 = v178;
  v179[1] = 0;
  *(v179 + 16) = 0;
  v180 = swift_getKeyPath();
  v181 = v320;
  sub_10000CC8C(v338, v320, &qword_1006E39D8, &unk_1005808C0);
  v182 = &v181[*(v304 + 36)];
  *v182 = v180;
  *(v182 + 1) = 2;
  v182[16] = 0;
  v183 = sub_10056F378();
  v184 = v326;
  *v326 = v183;
  *(v184 + 8) = 0;
  *(v184 + 16) = 0;
  v351 = sub_100009DCC(&qword_1006E3A08, &qword_1005808E8);
  v185 = (v184 + *(v351 + 11));
  v387 = v415;
  v388 = v416;
  v389 = v417;
  v383 = v411;
  v384 = v412;
  v386 = v414;
  v385 = v413;
  v379 = v407;
  v380 = v408;
  v382 = v410;
  v381 = v409;
  v186 = v151;
  v187 = v324;
  sub_10000CC8C(v186, v324, &qword_1006E39A8, &qword_100580890);
  v188 = v388;
  v397[8] = v387;
  v397[9] = v388;
  v189 = v389;
  v397[10] = v389;
  v190 = v383;
  v191 = v384;
  v397[4] = v383;
  v397[5] = v384;
  v192 = v386;
  v193 = v385;
  v397[7] = v386;
  v397[6] = v385;
  v194 = v379;
  v195 = v380;
  v397[0] = v379;
  v397[1] = v380;
  v196 = v382;
  v197 = v381;
  v397[3] = v382;
  v397[2] = v381;
  v185[8] = v387;
  v185[9] = v188;
  v185[10] = v189;
  v185[4] = v190;
  v185[5] = v191;
  v185[6] = v193;
  v185[7] = v192;
  *v185 = v194;
  v185[1] = v195;
  v185[2] = v197;
  v185[3] = v196;
  v348 = sub_100009DCC(&qword_1006E3A10, &qword_1005808F0);
  sub_10000CC8C(v187, v185 + *(v348 + 12), &qword_1006E39A8, &qword_100580890);
  sub_10000CC8C(&v407, v398, &qword_1006E3A00, &qword_1005808E0);
  sub_10000CC8C(v397, v398, &qword_1006E3A00, &qword_1005808E0);
  sub_10001036C(v187, &qword_1006E39A8, &qword_100580890);
  v398[8] = v387;
  v398[9] = v388;
  v398[10] = v389;
  v398[4] = v383;
  v398[5] = v384;
  v398[7] = v386;
  v398[6] = v385;
  v398[0] = v379;
  v398[1] = v380;
  v398[3] = v382;
  v398[2] = v381;
  sub_10001036C(v398, &qword_1006E3A00, &qword_1005808E0);
  v198 = v327;
  sub_10056F7E8();
  v347 = sub_100010BC0(&qword_1006E3A18, &qword_1006E3978, &qword_100580860, &protocol conformance descriptor for VStack<A>);
  sub_1005701F8();
  v199 = *(v339 + 8);
  v339 += 8;
  v346 = v199;
  (v199)(v198, v328);
  sub_10001036C(v184, &qword_1006E3978, &qword_100580860);
  LODWORD(v345) = *(v143 + *(v315 + 64));
  if (v345 == 1)
  {
    v200 = v306;
    sub_10000CC8C(v155, v306, &qword_1006E39A0, &qword_100580888);
    v201 = 0;
  }

  else
  {
    v201 = 1;
    v200 = v306;
  }

  v202 = *(v336 + 56);
  v336 += 56;
  v344 = v202;
  v202(v200, v201, 1, v337);
  v203 = sub_100009DCC(&qword_1006E3A20, &qword_1005808F8);
  v204 = v329 + *(v203 + 44);
  v205 = v316;
  sub_10000CC8C(v320, v316, &qword_1006E3988, &qword_100580870);
  v206 = v341;
  v208 = v341 + 16;
  v207 = *(v341 + 16);
  v209 = v330;
  v207(v340, v321, v330);
  v210 = v331;
  sub_10000CC8C(v200, v331, &qword_1006E3970, &qword_100580858);
  *v204 = 0;
  v204[8] = 0;
  v211 = sub_100009DCC(&qword_1006E3A28, &qword_100580900);
  sub_10000CC8C(v205, &v204[v211[12]], &qword_1006E3988, &qword_100580870);
  v212 = &v204[v211[16]];
  v213 = v340;
  v349 = v207;
  v350 = v208;
  v207(v212, v340, v209);
  sub_10000CC8C(v210, &v204[v211[20]], &qword_1006E3970, &qword_100580858);
  sub_10001036C(v200, &qword_1006E3970, &qword_100580858);
  v214 = *(v206 + 8);
  (v214)(v321, v209);
  sub_10001036C(v320, &qword_1006E3988, &qword_100580870);
  sub_10001036C(v210, &qword_1006E3970, &qword_100580858);
  v341 = v206 + 8;
  v343 = v214;
  (v214)(v213, v209);
  sub_10001036C(v316, &qword_1006E3988, &qword_100580870);
  v215 = sub_10056F378();
  v216 = v334;
  *v334 = v215;
  v216[1] = 0;
  *(v216 + 16) = 0;
  sub_10000CC8C(v338, v322, &qword_1006E39D8, &unk_1005808C0);
  v217 = sub_10056F378();
  v218 = v326;
  *v326 = v217;
  *(v218 + 8) = 0;
  *(v218 + 16) = 0;
  v219 = (v218 + *(v351 + 11));
  v374 = v415;
  v375 = v416;
  v376 = v417;
  v370 = v411;
  v371 = v412;
  v373 = v414;
  v372 = v413;
  v366 = v407;
  v367 = v408;
  v369 = v410;
  v368 = v409;
  v220 = v324;
  sub_10000CC8C(v342, v324, &qword_1006E39A8, &qword_100580890);
  v221 = v375;
  v377[8] = v374;
  v377[9] = v375;
  v222 = v376;
  v377[10] = v376;
  v223 = v370;
  v224 = v371;
  v377[4] = v370;
  v377[5] = v371;
  v225 = v373;
  v226 = v372;
  v377[7] = v373;
  v377[6] = v372;
  v227 = v366;
  v228 = v367;
  v377[0] = v366;
  v377[1] = v367;
  v229 = v369;
  v230 = v368;
  v377[3] = v369;
  v377[2] = v368;
  v219[8] = v374;
  v219[9] = v221;
  v219[10] = v222;
  v219[4] = v223;
  v219[5] = v224;
  v219[6] = v226;
  v219[7] = v225;
  *v219 = v227;
  v219[1] = v228;
  v219[2] = v230;
  v219[3] = v229;
  sub_10000CC8C(v220, v219 + *(v348 + 12), &qword_1006E39A8, &qword_100580890);
  sub_10000CC8C(&v407, v378, &qword_1006E3A00, &qword_1005808E0);
  sub_10000CC8C(v377, v378, &qword_1006E3A00, &qword_1005808E0);
  sub_10001036C(v220, &qword_1006E39A8, &qword_100580890);
  v378[8] = v374;
  v378[9] = v375;
  v378[10] = v376;
  v378[4] = v370;
  v378[5] = v371;
  v378[7] = v373;
  v378[6] = v372;
  v378[0] = v366;
  v378[1] = v367;
  v378[3] = v369;
  v378[2] = v368;
  sub_10001036C(v378, &qword_1006E3A00, &qword_1005808E0);
  v231 = v327;
  sub_10056F7E8();
  sub_1005701F8();
  (v346)(v231, v328);
  sub_10001036C(v218, &qword_1006E3978, &qword_100580860);
  v232 = 1;
  if (v345)
  {
    sub_10000CC8C(v332, v314, &qword_1006E39A0, &qword_100580888);
    v232 = 0;
  }

  v233 = v314;
  (v344)(v314, v232, 1, v337);
  v234 = sub_100009DCC(&qword_1006E3A30, &qword_100580908);
  v235 = v334 + *(v234 + 44);
  v236 = v318;
  sub_10000CC8C(v322, v318, &qword_1006E39D8, &unk_1005808C0);
  v237 = v340;
  v238 = v330;
  v239 = v349;
  (v349)(v340, v323, v330);
  v240 = v331;
  sub_10000CC8C(v233, v331, &qword_1006E3970, &qword_100580858);
  *v235 = 0;
  v235[8] = 0;
  v241 = sub_100009DCC(&qword_1006E3A38, &qword_100580910);
  sub_10000CC8C(v236, &v235[v241[12]], &qword_1006E39D8, &unk_1005808C0);
  v239(&v235[v241[16]], v237, v238);
  sub_10000CC8C(v240, &v235[v241[20]], &qword_1006E3970, &qword_100580858);
  sub_10001036C(v233, &qword_1006E3970, &qword_100580858);
  v242 = v343;
  (v343)(v323, v238);
  sub_10001036C(v322, &qword_1006E39D8, &unk_1005808C0);
  sub_10001036C(v240, &qword_1006E3970, &qword_100580858);
  v242(v237, v238);
  sub_10001036C(v318, &qword_1006E39D8, &unk_1005808C0);
  v243 = sub_10056F378();
  v244 = v335;
  *v335 = v243;
  v244[1] = 0;
  *(v244 + 16) = 0;
  v245 = sub_10056F378();
  v246 = v326;
  *v326 = v245;
  *(v246 + 8) = 0;
  *(v246 + 16) = 0;
  v247 = (v246 + *(v351 + 11));
  v361 = v415;
  v362 = v416;
  v363 = v417;
  v357 = v411;
  v358 = v412;
  v359 = v413;
  v360 = v414;
  v353 = v407;
  v354 = v408;
  v355 = v409;
  v356 = v410;
  v248 = v324;
  sub_10000CC8C(v342, v324, &qword_1006E39A8, &qword_100580890);
  v249 = v362;
  v364[8] = v361;
  v364[9] = v362;
  v250 = v363;
  v364[10] = v363;
  v251 = v357;
  v252 = v358;
  v364[4] = v357;
  v364[5] = v358;
  v254 = v359;
  v253 = v360;
  v364[6] = v359;
  v364[7] = v360;
  v255 = v353;
  v256 = v354;
  v364[0] = v353;
  v364[1] = v354;
  v258 = v355;
  v257 = v356;
  v364[2] = v355;
  v364[3] = v356;
  v247[8] = v361;
  v247[9] = v249;
  v247[10] = v250;
  v247[4] = v251;
  v247[5] = v252;
  v247[6] = v254;
  v247[7] = v253;
  *v247 = v255;
  v247[1] = v256;
  v247[2] = v258;
  v247[3] = v257;
  sub_10000CC8C(v248, v247 + *(v348 + 12), &qword_1006E39A8, &qword_100580890);
  sub_10000CC8C(&v407, v365, &qword_1006E3A00, &qword_1005808E0);
  sub_10000CC8C(v364, v365, &qword_1006E3A00, &qword_1005808E0);
  sub_10001036C(v248, &qword_1006E39A8, &qword_100580890);
  v365[8] = v361;
  v365[9] = v362;
  v365[10] = v363;
  v365[4] = v357;
  v365[5] = v358;
  v365[6] = v359;
  v365[7] = v360;
  v365[0] = v353;
  v365[1] = v354;
  v365[2] = v355;
  v365[3] = v356;
  sub_10001036C(v365, &qword_1006E3A00, &qword_1005808E0);
  v259 = v327;
  sub_10056F7E8();
  v260 = v319;
  sub_1005701F8();
  (v346)(v259, v328);
  sub_10001036C(v246, &qword_1006E3978, &qword_100580860);
  v261 = 1;
  v262 = v309;
  if (v345)
  {
    sub_10000CC8C(v332, v309, &qword_1006E39A0, &qword_100580888);
    v261 = 0;
  }

  (v344)(v262, v261, 1, v337);
  v263 = sub_100009DCC(&qword_1006E3A40, &qword_100580918);
  v351 = &v333[*(v263 + 44)];
  v264 = sub_100009DCC(&qword_1006E3A48, &qword_100580920);
  v265 = v335 + *(v264 + 44);
  v266 = v340;
  v267 = v330;
  v268 = v349;
  (v349)(v340, v260, v330);
  v269 = v331;
  sub_10000CC8C(v262, v331, &qword_1006E3970, &qword_100580858);
  *v265 = 0;
  v265[8] = 0;
  v270 = sub_100009DCC(&qword_1006E3A50, &qword_100580928);
  v268(&v265[*(v270 + 48)], v266, v267);
  sub_10000CC8C(v269, &v265[*(v270 + 64)], &qword_1006E3970, &qword_100580858);
  sub_10001036C(v262, &qword_1006E3970, &qword_100580858);
  v271 = v343;
  (v343)(v319, v267);
  sub_10001036C(v269, &qword_1006E3970, &qword_100580858);
  v271(v266, v267);
  v272 = v329;
  v273 = v307;
  sub_10000CC8C(v329, v307, &qword_1006E3990, &qword_100580878);
  v274 = v334;
  v275 = v311;
  sub_10000CC8C(v334, v311, &qword_1006E3968, &qword_100580850);
  v276 = v335;
  v277 = v312;
  sub_10000CC8C(v335, v312, &qword_1006E3960, &qword_100580848);
  v278 = v351;
  sub_10000CC8C(v273, v351, &qword_1006E3990, &qword_100580878);
  v279 = sub_100009DCC(&qword_1006E3A58, &qword_100580930);
  sub_10000CC8C(v275, v278 + *(v279 + 48), &qword_1006E3968, &qword_100580850);
  sub_10000CC8C(v277, v278 + *(v279 + 64), &qword_1006E3960, &qword_100580848);
  sub_10001036C(v276, &qword_1006E3960, &qword_100580848);
  sub_10001036C(v274, &qword_1006E3968, &qword_100580850);
  sub_10001036C(v272, &qword_1006E3990, &qword_100580878);
  sub_10001036C(v277, &qword_1006E3960, &qword_100580848);
  sub_10001036C(v275, &qword_1006E3968, &qword_100580850);
  sub_10001036C(v273, &qword_1006E3990, &qword_100580878);
  sub_10001036C(&v407, &qword_1006E3A00, &qword_1005808E0);
  v280 = swift_getKeyPath();
  v281 = sub_100009DCC(&qword_1006E3A60, &qword_100580968);
  v282 = v333;
  v283 = &v333[*(v281 + 36)];
  *v283 = v280;
  v283[8] = 0;
  v284 = swift_getKeyPath();
  v285 = v282 + *(sub_100009DCC(&qword_1006E3A68, &qword_100580970) + 36);
  *v285 = v284;
  *(v285 + 8) = 1;
  *(v285 + 16) = 0;
  v286 = (v282 + *(v308 + 36));
  v287 = *(sub_100009DCC(&qword_1006E3888, &qword_1005806D0) + 28);
  v288 = enum case for Text.TruncationMode.tail(_:);
  v289 = sub_10056FE08();
  (*(*(v289 - 8) + 104))(v286 + v287, v288, v289);
  *v286 = swift_getKeyPath();
  sub_100053074(v428, v352);
  v290 = v310;
  sub_10000CC8C(v282, v310, &qword_1006E3998, &qword_100580880);
  v291 = v313;
  sub_100053074(v352, v313);
  v292 = sub_100009DCC(&qword_1006E3A70, &qword_100580978);
  sub_10000CC8C(v290, v291 + *(v292 + 48), &qword_1006E3998, &qword_100580880);
  sub_10001036C(&v407, &qword_1006E3A00, &qword_1005808E0);
  sub_10001036C(v282, &qword_1006E3998, &qword_100580880);
  sub_100053124(v428);
  sub_10001036C(v290, &qword_1006E3998, &qword_100580880);
  sub_100053124(v352);
  sub_10001036C(v332, &qword_1006E39A0, &qword_100580888);
  sub_10001036C(v342, &qword_1006E39A8, &qword_100580890);
  return sub_10001036C(v338, &qword_1006E39D8, &unk_1005808C0);
}