uint64_t sub_10001FE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a2;
  v59 = a3;
  v5 = sub_1000C0AF8();
  v61 = *(v5 - 8);
  v62 = v5;
  __chkstk_darwin(v5);
  v60 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRTodayComplicationWidgetProvider(0);
  v53 = *(v7 - 8);
  __chkstk_darwin(v7);
  v54 = v8;
  v56 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C24B8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v49 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  v15 = sub_1000C2488();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000C1118();
  v20 = __chkstk_darwin(v19);
  v51 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v22;
  v23 = *(v22 + 16);
  v57 = v3;
  v55 = v24;
  v23(v20);
  sub_1000C24A8();
  swift_getKeyPath();
  v50 = sub_1000C2498();

  (*(v16 + 8))(v18, v15);
  if (qword_1000EC8B8 != -1)
  {
    swift_once();
  }

  v25 = sub_1000C1568();
  sub_10000D978(v25, qword_1000ED868);
  v26 = *(v10 + 16);
  v26(v14, a1, v9);
  v27 = sub_1000C1558();
  v28 = sub_1000C2968();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v63 = v7;
    v64 = v48;
    *v29 = 136446466;
    sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
    v30 = sub_1000C26A8();
    v32 = sub_1000B7B58(v30, v31, &v64);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2082;
    v26(v49, v14, v9);
    v33 = sub_1000C26A8();
    v35 = v34;
    (*(v10 + 8))(v14, v9);
    v36 = sub_1000B7B58(v33, v35, &v64);

    *(v29 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s: Requesting timeline {context: %{public}s", v29, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  if (v50)
  {
    v37 = v50;
  }

  else
  {
    v37 = &off_1000E7988;
  }

  v38 = v56;
  sub_100022B94(v57, v56, type metadata accessor for TTRTodayComplicationWidgetProvider);
  v39 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v40 = (v54 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  sub_100022B2C(v38, v41 + v39, type metadata accessor for TTRTodayComplicationWidgetProvider);
  *(v41 + v40) = v37;
  v42 = (v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8));
  v43 = v59;
  *v42 = v58;
  v42[1] = v43;

  v44 = v60;
  sub_1000C0AE8();
  v45 = v51;
  sub_10008D488(v51, 0x7FFFFFFFFFFFFFFFLL, v37, v44, sub_100022A10, v41);

  (*(v61 + 8))(v44, v62);
  return (*(v52 + 8))(v45, v55);
}

uint64_t sub_100020470(uint64_t a1, void (**a2)(char *, char *, uint64_t), uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v95 = a5;
  v98 = a2;
  v7 = type metadata accessor for TTRNewWidgetTimelineEntry(0);
  v99 = *(v7 - 8);
  v100 = v7;
  __chkstk_darwin(v7);
  v9 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRTodayComplicationWidgetTimelineEntry(0);
  v101 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v103 = (v89 - v14);
  v102 = sub_1000C0AF8();
  v15 = *(v102 - 8);
  __chkstk_darwin(v102);
  v17 = v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000C2418();
  __chkstk_darwin(v18 - 8);
  v20 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100004D04(&qword_1000ED990, &unk_1000C5750);
  v94 = *(v97 - 8);
  __chkstk_darwin(v97);
  __chkstk_darwin(v21);
  v91 = v89 - v22;
  __chkstk_darwin(v23);
  v92 = v89 - v24;
  __chkstk_darwin(v25);
  v28 = v89 - v26;
  v29 = *(a1 + 16);
  v96 = a4;
  if (v29)
  {
    v89[0] = v17;
    v89[1] = v20;
    v93 = v89 - v26;
    v105 = _swiftEmptyArrayStorage;
    sub_1000BA3C4(0, v29, 0);
    v30 = v105;
    v31 = a1 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
    v32 = *(v99 + 72);
    v90 = v15;
    v98 = (v15 + 16);
    v99 = v32;
    v33 = v102;
    v34 = v103;
    v35 = v100;
    do
    {
      sub_100022B94(v31, v9, type metadata accessor for TTRNewWidgetTimelineEntry);
      (*v98)(v34, v9, v33);
      v36 = &v9[*(v35 + 20)];
      v37 = type metadata accessor for TTRNewWidgetViewModel(0);
      v38 = v37[18];
      v39 = v10;
      v40 = v103 + *(v10 + 20);
      v41 = sub_1000C0938();
      v42 = &v36[v38];
      v34 = v103;
      (*(*(v41 - 8) + 16))(v40, v42, v41);
      v43 = v37[20];
      v44 = *&v36[v37[19]];
      LOBYTE(v36) = v36[v43];
      v45 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
      *&v40[*(v45 + 24)] = v44;
      v40[*(v45 + 20)] = v36;
      sub_100022ABC(&v9[*(v35 + 24)], v34 + *(v39 + 24));

      sub_100022BFC(v9, type metadata accessor for TTRNewWidgetTimelineEntry);
      v105 = v30;
      v47 = v30[2];
      v46 = v30[3];
      if (v47 >= v46 >> 1)
      {
        sub_1000BA3C4((v46 > 1), v47 + 1, 1);
        v30 = v105;
      }

      v30[2] = v47 + 1;
      sub_100022B2C(v34, v30 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v47, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
      v31 += v99;
      --v29;
      v10 = v39;
      v33 = v102;
    }

    while (v29);
    v48 = v89[0];
    sub_1000C0A28();
    sub_1000C2408();
    (*(v90 + 8))(v48, v33);
    sub_10001E940();
    v49 = v93;
    sub_1000C2558();
    if (qword_1000EC8B8 != -1)
    {
      swift_once();
    }

    v50 = sub_1000C1568();
    sub_10000D978(v50, qword_1000ED868);
    v51 = v94;
    v52 = *(v94 + 16);
    v53 = v92;
    v54 = v97;
    v52(v92, v49, v97);
    v55 = sub_1000C1558();
    v56 = sub_1000C2968();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      LODWORD(v102) = v56;
      v58 = v57;
      v103 = swift_slowAlloc();
      v105 = v103;
      *v58 = 136446467;
      v104 = type metadata accessor for TTRTodayComplicationWidgetProvider(0);
      sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
      v59 = sub_1000C26A8();
      v61 = sub_1000B7B58(v59, v60, &v105);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2085;
      v52(v91, v53, v54);
      v62 = sub_1000C26A8();
      v64 = v63;
      v65 = *(v51 + 8);
      v65(v53, v54);
      v66 = sub_1000B7B58(v62, v64, &v105);

      *(v58 + 14) = v66;
      v49 = v93;
      _os_log_impl(&_mh_execute_header, v55, v102, "%{public}s: Completed timeline {timeline: %{sensitive}s}", v58, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v65 = *(v51 + 8);
      v65(v53, v54);
    }
  }

  else
  {
    v100 = v27;
    v99 = type metadata accessor for TTRTodayComplicationWidgetProvider(0);
    v67 = &v12[*(v10 + 20)];
    sub_1000C1108();
    v68 = type metadata accessor for TTRTodayComplicationWidgetViewModel(0);
    *&v67[*(v68 + 24)] = _swiftEmptyArrayStorage;
    v67[*(v68 + 20)] = 1;
    sub_1000C0AE8();
    v69 = *(v10 + 24);
    v70 = sub_1000C2478();
    (*(*(v70 - 8) + 56))(&v12[v69], 1, 1, v70);
    sub_100004D04(&qword_1000ED9A0, &unk_1000C5760);
    v71 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_1000C3590;
    v103 = v12;
    sub_100022B94(v12, v72 + v71, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
    sub_1000C0A28();
    sub_1000C2408();
    (*(v15 + 8))(v17, v102);
    sub_10001E940();
    sub_1000C2558();
    v49 = v28;
    if (qword_1000EC8B8 != -1)
    {
      swift_once();
    }

    v73 = sub_1000C1568();
    sub_10000D978(v73, qword_1000ED868);
    v74 = v94;
    v75 = *(v94 + 16);
    v76 = v100;
    v54 = v97;
    v75(v100, v28, v97);
    v77 = sub_1000C1558();
    v78 = sub_1000C2968();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v93 = v28;
      *v79 = 136446467;
      v104 = v99;
      v105 = v80;
      sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
      v81 = sub_1000C26A8();
      LODWORD(v102) = v78;
      v83 = sub_1000B7B58(v81, v82, &v105);

      *(v79 + 4) = v83;
      *(v79 + 12) = 2081;
      v75(v91, v76, v97);
      v84 = sub_1000C26A8();
      v86 = v85;
      v65 = *(v74 + 8);
      v65(v76, v97);
      v87 = sub_1000B7B58(v84, v86, &v105);
      v54 = v97;

      *(v79 + 14) = v87;
      _os_log_impl(&_mh_execute_header, v77, v102, "%{public}s: No timeline entries created placeholder {timeline %{private}s}", v79, 0x16u);
      swift_arrayDestroy();
      v49 = v93;
    }

    else
    {

      v65 = *(v74 + 8);
      v65(v76, v54);
    }

    sub_100022BFC(v103, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
  }

  v96(v49);
  return (v65)(v49, v54);
}

uint64_t sub_100020FB4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_100004D04(&qword_1000ED918, &qword_1000C56A8);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_1000C03B8();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v5 = sub_1000C0AF8();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v6 = sub_1000C0C18();
  v2[22] = v6;
  v2[23] = *(v6 - 8);
  v2[24] = swift_task_alloc();
  v7 = sub_1000C0F98();
  v2[25] = v7;
  v2[26] = *(v7 - 8);
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_100021214, 0, 0);
}

uint64_t sub_100021214()
{
  v30 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  (*(v2 + 104))(v1, enum case for REMFeatureFlags.intelligentWidgets(_:), v3);
  v4 = sub_1000C0F88();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_1000EC8B8 != -1)
    {
      swift_once();
    }

    v5 = sub_1000C1568();
    sub_10000D978(v5, qword_1000ED868);
    v6 = sub_1000C1558();
    v7 = sub_1000C2938();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v29 = v9;
      *v8 = 136446210;
      *(v0 + 56) = type metadata accessor for TTRTodayComplicationWidgetProvider(0);
      sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
      v10 = sub_1000C26A8();
      v12 = sub_1000B7B58(v10, v11, &v29);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: No content, replace with new widget.", v8, 0xCu);
      sub_10002285C(v9);
    }

    sub_1000C2388();

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    if (qword_1000EC8B8 != -1)
    {
      swift_once();
    }

    v15 = sub_1000C1568();
    *(v0 + 224) = sub_10000D978(v15, qword_1000ED868);
    v16 = sub_1000C1558();
    v17 = sub_1000C2968();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136446210;
      *(v0 + 48) = type metadata accessor for TTRTodayComplicationWidgetProvider(0);
      sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
      v20 = sub_1000C26A8();
      v22 = sub_1000B7B58(v20, v21, &v29);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s: Requesting relevances for today...", v18, 0xCu);
      sub_10002285C(v19);
    }

    v23 = *(v0 + 192);
    v24 = *(v0 + 168);
    v25 = **(v0 + 72);
    (*(*(v0 + 184) + 104))(v23, enum case for TTRListType.PredefinedSmartListType.today(_:), *(v0 + 176));
    sub_1000C0AE8();
    v26 = swift_task_alloc();
    *(v0 + 232) = v26;
    v26[2] = v25;
    v26[3] = v23;
    v26[4] = 0x7FFFFFFFFFFFFFFFLL;
    v26[5] = v24;
    v27 = swift_task_alloc();
    *(v0 + 240) = v27;
    v28 = sub_100004D04(&qword_1000ED920, &qword_1000C56B0);
    *v27 = v0;
    v27[1] = sub_1000216D0;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000003FLL, 0x80000001000CD0E0, sub_1000220D0, v26, v28);
  }
}

uint64_t sub_1000216D0()
{

  return _swift_task_switch(sub_1000217E8, 0, 0);
}

uint64_t sub_1000217E8()
{
  v66 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[2];
  v62 = *(v0[19] + 8);
  v62(v0[21], v0[18]);
  (*(v2 + 8))(v1, v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v0[19];
    v7 = v0[14];
    v8 = *(v6 + 16);
    v6 += 16;
    v57 = v4;
    v9 = v4 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v59 = *(v6 + 56);
    v61 = v8;
    v10 = _swiftEmptyArrayStorage;
    v64 = v0;
    do
    {
      v11 = v0[20];
      v12 = v0[18];
      v61(v11, v9, v12);
      sub_1000C03A8();
      v62(v11, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100022680(0, v10[2] + 1, 1, v10, &qword_1000ED930, &qword_1000C56C0, &type metadata accessor for RelevantContext);
      }

      v14 = v10[2];
      v13 = v10[3];
      v0 = v64;
      if (v14 >= v13 >> 1)
      {
        v10 = sub_100022680((v13 > 1), v14 + 1, 1, v10, &qword_1000ED930, &qword_1000C56C0, &type metadata accessor for RelevantContext);
      }

      v15 = v64[17];
      v16 = v64[13];
      v10[2] = v14 + 1;
      (*(v7 + 32))(v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v15, v16);
      v9 += v59;
      --v5;
    }

    while (v5);

    v17 = sub_1000C1558();
    v18 = sub_1000C2968();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v19 = 136446467;
      v64[4] = type metadata accessor for TTRTodayComplicationWidgetProvider(0);
      sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
      v20 = sub_1000C26A8();
      v22 = sub_1000B7B58(v20, v21, &v65);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2085;
      v23 = v10;
      v24 = sub_1000C27C8();
      v26 = sub_1000B7B58(v24, v25, &v65);

      *(v19 + 14) = v26;
      v0 = v64;
      _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s: Completed adding timeline relevances. {timeline: %{sensitive}s}", v19, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v23 = v10;
    }

    v36 = sub_1000C1558();
    v37 = sub_1000C2968();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v65 = v39;
      *v38 = 136446466;
      v0[3] = type metadata accessor for TTRTodayComplicationWidgetProvider(0);
      sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
      v40 = sub_1000C26A8();
      v42 = sub_1000B7B58(v40, v41, &v65);

      *(v38 + 4) = v42;
      v0 = v64;
      *(v38 + 12) = 2048;
      v43 = *(v57 + 16);

      *(v38 + 14) = v43;

      _os_log_impl(&_mh_execute_header, v36, v37, "%{public}s: Timeline count: %ld.", v38, 0x16u);
      sub_10002285C(v39);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v34 = v23;
    v35 = v23[2];
    if (v35)
    {
LABEL_19:
      v44 = v0[14];
      v45 = v0[11];
      v65 = _swiftEmptyArrayStorage;
      sub_1000BA408(0, v35, 0);
      v46 = v65;
      v63 = *(v44 + 16);
      v47 = v34 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      v58 = (v44 + 8);
      v60 = *(v44 + 72);
      do
      {
        v49 = v0[15];
        v48 = v0[16];
        v50 = v0[13];
        v63(v48, v47, v50);
        v63(v49, v48, v50);
        sub_1000C2348();
        (*v58)(v48, v50);
        v65 = v46;
        v52 = v46[2];
        v51 = v46[3];
        if (v52 >= v51 >> 1)
        {
          sub_1000BA408((v51 > 1), v52 + 1, 1);
          v46 = v65;
        }

        v53 = v0[12];
        v54 = v0[10];
        v46[2] = v52 + 1;
        (*(v45 + 32))(v46 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v52, v53, v54);
        v47 += v60;
        --v35;
      }

      while (v35);
    }
  }

  else
  {

    v27 = sub_1000C1558();
    v28 = sub_1000C2968();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v65 = v30;
      *v29 = 136446210;
      v0[5] = type metadata accessor for TTRTodayComplicationWidgetProvider(0);
      sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
      v31 = sub_1000C26A8();
      v33 = sub_1000B7B58(v31, v32, &v65);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s: No timeline relevances to add.", v29, 0xCu);
      sub_10002285C(v30);
    }

    v34 = _swiftEmptyArrayStorage;
    v35 = _swiftEmptyArrayStorage[2];
    if (v35)
    {
      goto LABEL_19;
    }
  }

  sub_1000C2388();

  v55 = v0[1];

  return v55();
}

uint64_t sub_100021F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000B028;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100022038(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000DC8C;

  return sub_100020FB4(a1);
}

char *sub_1000220DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004D04(&qword_1000ED950, &qword_1000C56E0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1000221E0(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004D04(&qword_1000ED940, &unk_1000C56D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004D04(&qword_1000ED948, &unk_1000C7D80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100022328(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004D04(&qword_1000ED9A8, &unk_1000C5770);
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

char *sub_10002254C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004D04(&qword_1000ED960, &qword_1000C5720);
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

void *sub_100022680(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004D04(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_10002285C(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100022900()
{
  v1 = (type metadata accessor for TTRTodayComplicationWidgetProvider(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = sub_1000C1118();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_100022A10(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRTodayComplicationWidgetProvider(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_100020470(a1, (v1 + v4), v6, v8, v9);
}

uint64_t sub_100022ABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022B2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100022B94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100022BFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100022C5C()
{
  v1 = sub_1000C1118();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for TTRTodayComplicationWidgetProvider(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 16) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + 8);
  v11(v0 + v4, v1);

  v11(v0 + v8 + v6[7], v1);

  return _swift_deallocObject(v0, v10 + 8, v9 | 7);
}

uint64_t sub_100022DD8(uint64_t a1)
{
  v3 = *(sub_1000C1118() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for TTRTodayComplicationWidgetProvider(0) - 8);
  v7 = *(v1 + v5);
  v8 = *(v1 + v5 + 8);
  v9 = v1 + ((v5 + *(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_10001F5DC(a1, v1 + v4, v7, v8, v9);
}

uint64_t sub_100022EEC@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v63 = sub_100004D04(&qword_1000ED9B8, &qword_1000C57D8);
  __chkstk_darwin(v63);
  v62 = &v52 - v1;
  v58 = sub_100004D04(&qword_1000ED9C0, &qword_1000C57E0);
  v60 = *(v58 - 8);
  __chkstk_darwin(v58);
  v59 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v52 - v4;
  v61 = sub_100004D04(&qword_1000ED9C8, &qword_1000C57E8);
  v70 = *(v61 - 8);
  __chkstk_darwin(v61);
  v69 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  v10 = sub_100004D04(&qword_1000ED9D0, &qword_1000C57F0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v52 - v15;
  v57 = sub_100004D04(&qword_1000ED9D8, &qword_1000C57F8);
  v68 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v55 = &v52 - v19;
  __chkstk_darwin(v20);
  v67 = (&v52 - v21);
  __chkstk_darwin(v22);
  v24 = (&v52 - v23);
  v25 = type metadata accessor for TTRTodayComplicationWidget(0);
  __chkstk_darwin(v25 - 8);
  v66 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v65 = &v52 - v28;
  sub_1000B7244((&v52 - v28));
  sub_100004D04(&qword_1000ED9E0, &unk_1000C5800);
  sub_1000C15E8();
  (*(v11 + 16))(v13, v16, v10);
  sub_100023AC8(&qword_1000ED9E8, &qword_1000ED9D0, &qword_1000C57F0);
  v29 = sub_1000C1B28();
  v73 = &type metadata for LimitedAvailabilityWidget;
  v30 = sub_100004DB8();
  v74 = v30;
  v72[0] = v29;
  sub_1000239F4(v72, v71);
  v31 = v24;
  v54 = v24;
  sub_100004B5C(v71, v24);
  sub_1000084C0(v71, &qword_1000ECA90, &qword_1000C35D0);
  (*(v11 + 8))(v16, v10);
  sub_10002285C(v72);
  sub_100023758();
  v53 = v9;
  sub_1000C1AF8();
  v32 = sub_1000237AC();
  sub_1000C1A68();
  v33 = v60;
  v34 = v58;
  (*(v60 + 16))(v59, v5, v58);
  v72[0] = &type metadata for UrgentAlarmLiveActivity;
  v72[1] = v32;
  swift_getOpaqueTypeConformance2();
  v35 = sub_1000C1B28();
  v74 = v30;
  v73 = &type metadata for LimitedAvailabilityWidget;
  v72[0] = v35;
  sub_1000239F4(v72, v71);
  v36 = v67;
  sub_100004B5C(v71, v67);
  sub_1000084C0(v71, &qword_1000ECA90, &qword_1000C35D0);
  (*(v33 + 8))(v5, v34);
  sub_10002285C(v72);
  v37 = v66;
  sub_100023800(v65, v66);
  v38 = *(v68 + 16);
  v39 = v55;
  v40 = v57;
  v38(v55, v31, v57);
  v41 = v69;
  v60 = *(v70 + 16);
  v42 = v9;
  v43 = v61;
  (v60)(v69, v42, v61);
  v44 = v56;
  v45 = v36;
  v46 = v40;
  v38(v56, v45, v40);
  v47 = v62;
  sub_100023800(v37, v62);
  v48 = v63;
  v38((v47 + *(v63 + 64)), v39, v46);
  (v60)(v47 + *(v48 + 80), v41, v43);
  v38((v47 + *(v48 + 96)), v44, v46);
  sub_1000C15E8();
  v49 = *(v68 + 8);
  v49(v67, v46);
  v50 = *(v70 + 8);
  v50(v53, v43);
  v49(v54, v46);
  sub_100023864(v65);
  v49(v44, v46);
  v50(v69, v43);
  v49(v39, v46);
  return sub_100023864(v66);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000236D8();
  sub_1000C15F8();
  return 0;
}

unint64_t sub_1000236D8()
{
  result = qword_1000ED9B0;
  if (!qword_1000ED9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED9B0);
  }

  return result;
}

unint64_t sub_100023758()
{
  result = qword_1000ED9F0;
  if (!qword_1000ED9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED9F0);
  }

  return result;
}

unint64_t sub_1000237AC()
{
  result = qword_1000ED9F8;
  if (!qword_1000ED9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED9F8);
  }

  return result;
}

uint64_t sub_100023800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTodayComplicationWidget(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023864(uint64_t a1)
{
  v2 = type metadata accessor for TTRTodayComplicationWidget(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000238C0()
{
  if (qword_1000EC9C0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000F0438;
  v6[3] = type metadata accessor for TTRNewWidgetInteractor(0);
  v6[4] = &off_1000E8C50;
  v6[0] = v0;
  sub_1000C0218();

  sub_1000C0208();
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_1000239F4(v6, v3);
  v1 = swift_allocObject();
  sub_100004E0C(v3, v1 + 16);
  sub_100004D04(&qword_1000EDA00, &qword_1000C5810);
  sub_1000C01F8();

  sub_1000084C0(v4, &qword_1000EDA08, &qword_1000C5818);
  return sub_10002285C(v6);
}

uint64_t sub_1000239F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100023A58()
{
  sub_10002285C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100023AC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005334(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100023B94(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7._countAndFlagsBits = sub_1000C2678();
  sub_1000C26D8(v7);

  *a3 = 35;
  *a4 = 0xE100000000000000;
  return result;
}

uint64_t sub_100023BFC()
{
  v0 = sub_1000C1568();
  sub_10000D9B0(v0, qword_1000FAAE8);
  sub_10000D978(v0, qword_1000FAAE8);
  v1 = [objc_opt_self() widget];
  return sub_1000C1578();
}

uint64_t sub_100023C6C()
{
  v0 = sub_1000C1568();
  sub_10000D9B0(v0, qword_1000EDA20);
  v1 = sub_10000D978(v0, qword_1000EDA20);
  if (qword_1000EC8E8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D978(v0, qword_1000FAAE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100023D34()
{
  v1 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (*(v0 + *(v1 + 44)) != 1 || *(v0 + *(v1 + 40)) != 1)
  {
    return sub_1000C08C8();
  }

  v3 = sub_1000C08C8();
  v4._countAndFlagsBits = 45;
  v4._object = 0xE100000000000000;
  sub_1000C26D8(v4);
  v5._countAndFlagsBits = 1702195828;
  v5._object = 0xE400000000000000;
  sub_1000C26D8(v5);
  return v3;
}

uint64_t sub_100023DC8(uint64_t a1)
{
  if (*(v1 + *(a1 + 44)) != 1 || *(v1 + *(a1 + 40)) != 1)
  {
    return sub_1000C08C8();
  }

  v3 = sub_1000C08C8();
  v4._countAndFlagsBits = 45;
  v4._object = 0xE100000000000000;
  sub_1000C26D8(v4);
  v5._countAndFlagsBits = 1702195828;
  v5._object = 0xE400000000000000;
  sub_1000C26D8(v5);
  return v3;
}

void sub_100023E6C(double a1)
{
  v3 = *(v1 + *(type metadata accessor for TTRNewWidgetViewModel(0) + 68));
  if (!v3)
  {
    return;
  }

  v4 = *(v3 + 16);
  if (!v4)
  {
    return;
  }

  v5 = 0;
  v6 = fabs(a1);
  v7 = v3 + 40;
  do
  {
    v8 = (v7 + 16 * v5);
    v9 = v5;
    while (1)
    {
      if (v9 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      v10 = *v8;
      v11 = *v8;
      v12 = *(v8 - 1);
      if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      sub_10002C6E0();
      if (sub_1000C2598())
      {
        goto LABEL_15;
      }

LABEL_6:
      ++v9;

      v8 += 2;
      if (v4 == v9)
      {
        return;
      }
    }

    v13 = fabs(v10);
    if (v13 <= v6)
    {
      v13 = v6;
    }

    if (v13 <= 2.22507386e-308)
    {
      v13 = 2.22507386e-308;
    }

    if (vabdd_f64(v10, a1) >= v13 * 0.0000000149011612)
    {
      goto LABEL_6;
    }

LABEL_15:
    sub_1000C2798();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000C27D8();
    }

    v5 = v9 + 1;
    sub_1000C27F8();
    v7 = v3 + 40;
  }

  while (v4 - 1 != v9);
}

uint64_t sub_100024038()
{
  sub_100004D04(&qword_1000ED9A8, &unk_1000C5770);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000C3590;
  v2 = v0[1];
  *(v1 + 32) = *v0;
  *(v1 + 40) = v2;
  v3 = type metadata accessor for TTRNewWidgetViewModel(0);
  v4 = *(v0 + v3[15]);

  if (v4 == 1)
  {
    v5 = sub_1000C0CC8();
    v8 = *(v1 + 16);
    v7 = *(v1 + 24);
    if (v8 >= v7 >> 1)
    {
      v35 = v5;
      v36 = v6;
      v37 = sub_100022328((v7 > 1), v8 + 1, 1, v1);
      v6 = v36;
      v1 = v37;
      v5 = v35;
    }

    *(v1 + 16) = v8 + 1;
    v9 = v1 + 16 * v8;
    *(v9 + 32) = v5;
    *(v9 + 40) = v6;
  }

  v10 = sub_1000129D8(v0[2]);
  v13 = *(v1 + 16);
  v12 = *(v1 + 24);
  if (v13 >= v12 >> 1)
  {
    v32 = v10;
    v33 = v11;
    v34 = sub_100022328((v12 > 1), v13 + 1, 1, v1);
    v11 = v33;
    v1 = v34;
    v10 = v32;
  }

  *(v1 + 16) = v13 + 1;
  v14 = v1 + 16 * v13;
  *(v14 + 32) = v10;
  *(v14 + 40) = v11;
  v15 = (v0 + v3[13]);
  if (v15[1])
  {
    v16 = *v15;
    v17 = v15[1];
  }

  else
  {
    v18 = (v0 + v3[14]);
    v17 = v18[1];
    if (!v17)
    {
      goto LABEL_16;
    }

    v16 = *v18;
  }

  v19 = (v0 + v3[11]);
  v20 = v19[1];
  if (v20)
  {
    v21 = *v19;

    v39._countAndFlagsBits = 0x6567646162204025;
    v39._object = 0xEC0000004025202CLL;
    v38._object = 0x80000001000CD1B0;
    v40._countAndFlagsBits = 0xD00000000000006ELL;
    v40._object = 0x80000001000CD1E0;
    v38._countAndFlagsBits = 0xD00000000000002ALL;
    sub_1000C0D68(v38, v39, v40);
    sub_100004D04(&qword_1000ED2C0, &unk_1000C5A20);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1000C44F0;
    *(v22 + 56) = &type metadata for String;
    v23 = sub_10002C68C();
    *(v22 + 32) = v16;
    *(v22 + 40) = v17;
    *(v22 + 96) = &type metadata for String;
    *(v22 + 104) = v23;
    *(v22 + 64) = v23;
    *(v22 + 72) = v21;
    *(v22 + 80) = v20;

    v24 = sub_1000C2648();
    v26 = v25;

    v28 = *(v1 + 16);
    v27 = *(v1 + 24);
    if (v28 >= v27 >> 1)
    {
      v1 = sub_100022328((v27 > 1), v28 + 1, 1, v1);
    }

    *(v1 + 16) = v28 + 1;
    v29 = v1 + 16 * v28;
    *(v29 + 32) = v24;
    *(v29 + 40) = v26;
  }

  else
  {
  }

LABEL_16:
  sub_1000C0CD8();
  sub_100004D04(&qword_1000EDCF8, &unk_1000C6430);
  sub_100008478(&qword_1000EDD00, &qword_1000EDCF8, &unk_1000C6430, &protocol conformance descriptor for [A]);
  v30 = sub_1000C25B8();

  return v30;
}

uint64_t sub_100024398@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000C0AF8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100024434@<X0>(void *a1@<X0>, int a2@<W1>, void (**a3)(char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v225 = a3;
  v215 = a2;
  v227 = a4;
  v232 = sub_100004D04(&qword_1000EDA68, &qword_1000C5850);
  __chkstk_darwin(v232);
  v231 = &v179 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v230 = &v179 - v7;
  v229 = sub_100004D04(&qword_1000EDA70, &qword_1000C5858);
  __chkstk_darwin(v229);
  v228 = &v179 - v8;
  v239 = sub_1000C07C8();
  v185 = *(v239 - 8);
  __chkstk_darwin(v239);
  v10 = &v179 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004D04(&qword_1000EDA78, &qword_1000C5860);
  __chkstk_darwin(v11 - 8);
  v233 = &v179 - v12;
  v13 = sub_1000C0808();
  v184 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v179 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v234 = (&v179 - v17);
  __chkstk_darwin(v18);
  v237 = &v179 - v19;
  v189 = sub_1000C09B8();
  v188 = *(v189 - 8);
  __chkstk_darwin(v189);
  v187 = &v179 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_1000C0A08();
  v208 = *(v209 - 8);
  __chkstk_darwin(v209);
  v207 = &v179 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_1000C0988();
  v199 = *(v201 - 8);
  __chkstk_darwin(v201);
  v196 = &v179 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_1000C0998();
  v200 = *(v202 - 8);
  __chkstk_darwin(v202);
  v197 = &v179 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_1000C09E8();
  v205 = *(v206 - 8);
  __chkstk_darwin(v206);
  v186 = &v179 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v198 = &v179 - v26;
  __chkstk_darwin(v27);
  v203 = &v179 - v28;
  __chkstk_darwin(v29);
  v204 = &v179 - v30;
  v214 = sub_1000C0BA8();
  v195 = *(v214 - 8);
  __chkstk_darwin(v214);
  v212 = &v179 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_1000C0BC8();
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v192 = &v179 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000C0818();
  v226 = *(v33 - 8);
  __chkstk_darwin(v33);
  v238 = &v179 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000C0B68();
  v36 = *(v35 - 8);
  v223 = v35;
  v224 = v36;
  __chkstk_darwin(v35);
  v210 = &v179 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_100004D04(&qword_1000EDA80, &qword_1000C5868);
  __chkstk_darwin(v222);
  v220 = (&v179 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v39);
  v211 = &v179 - v40;
  v41 = sub_100004D04(&qword_1000EDA88, &unk_1000C5870);
  __chkstk_darwin(v41 - 8);
  v213 = &v179 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v216 = &v179 - v44;
  __chkstk_darwin(v45);
  v217 = &v179 - v46;
  __chkstk_darwin(v47);
  v183 = &v179 - v48;
  __chkstk_darwin(v49);
  v190 = &v179 - v50;
  __chkstk_darwin(v51);
  v191 = &v179 - v52;
  v53 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
  __chkstk_darwin(v53 - 8);
  v219 = &v179 - v54;
  v55 = sub_1000C0AF8();
  v56 = *(v55 - 1);
  __chkstk_darwin(v55);
  v58 = (&v179 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100026D74(a1, a1[3]);
  v59 = sub_1000C0D98();
  if (v59)
  {
    v60 = v227;
    v235 = v33;
    v61 = v59;
    v62 = [v59 date];
    sub_1000C0AA8();

    LOBYTE(v62) = sub_1000C0A18();
    v65 = *(v56 + 8);
    v64 = (v56 + 8);
    v63 = v65;
    v65(v58, v55);
    v218 = v61;
    v66 = [v61 isAllDay];
    v67 = v64;
    if ((v62 & 1) == 0)
    {
      v72 = v63;
      if (qword_1000EC900 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_62;
    }

    if (v66)
    {

      v68 = v219;
      (*(v226 + 56))(v219, 1, 1, v235);
      return sub_10001DA60(v68, v60, &qword_1000ECE78, &unk_1000C3810);
    }

    v180 = v64;
    v179 = v63;
    v182 = v55;
    v181 = v58;
    if (v215)
    {
      v79 = v192;
      sub_1000C0B98();
      v80 = v195;
      (*(v195 + 104))(v212, enum case for Calendar.Component.minute(_:), v214);
      v81 = v63;
      v82 = [v218 date];
      sub_1000C0AA8();

      v83 = v212;
      v84 = sub_1000C0BB8();
      v81(v58, v182);
      (*(v80 + 8))(v83, v214);
      (*(v193 + 8))(v79, v194);
      if (v84 || (sub_1000C0B18() & 1) == 0)
      {
        v124 = [v218 date];
        sub_1000C0AA8();

        v125 = v186;
        sub_1000C0778();
        v126 = v196;
        sub_1000C0978();
        v127 = v197;
        sub_1000C0968();
        (*(v199 + 8))(v126, v201);
        v128 = v198;
        sub_1000C0958();
        (*(v200 + 8))(v127, v202);
        v129 = *(v205 + 8);
        v130 = v206;
        v129(v125, v206);
        v131 = v187;
        sub_1000C09A8();
        v132 = v203;
        sub_1000C09D8();
        (*(v188 + 8))(v131, v189);
        v129(v128, v130);
        v133 = v204;
        sub_1000C09C8();
        v134 = v132;
        v55 = v182;
        v129(v134, v130);
        v93 = v207;
        sub_1000C0948();
        v129(v133, v130);
        v94 = v234;
      }

      else
      {
        v85 = [v218 date];
        sub_1000C0AA8();

        v86 = v198;
        sub_1000C0778();
        v87 = v196;
        sub_1000C0978();
        v88 = v197;
        sub_1000C0968();
        (*(v199 + 8))(v87, v201);
        v89 = v203;
        sub_1000C0958();
        (*(v200 + 8))(v88, v202);
        v90 = *(v205 + 8);
        v91 = v206;
        v90(v86, v206);
        v92 = v204;
        sub_1000C09C8();
        v90(v89, v91);
        v93 = v207;
        sub_1000C0948();
        v90(v92, v91);
        v94 = v234;
        v55 = v182;
      }

      sub_100026DB8(&qword_1000EDA98, &type metadata accessor for Date.AttributedStyle, &protocol conformance descriptor for Date.AttributedStyle);
      v135 = v209;
      v136 = v181;
      sub_1000C0AD8();
      (*(v208 + 8))(v93, v135);
      v179(v136, v55);
      v137 = [objc_opt_self() mainBundle];
      v178._countAndFlagsBits = 0x80000001000CD150;
      v242._object = 0x80000001000CD120;
      v242._countAndFlagsBits = 0xD00000000000002CLL;
      v243.value._countAndFlagsBits = 0;
      v243.value._object = 0;
      v138.super.isa = v137;
      v244._countAndFlagsBits = 49;
      v244._object = 0xE100000000000000;
      v139 = sub_1000C0838(v242, v243, v138, v244, 0xD00000000000005BLL, v178);
      v141 = v140;

      if (v139 == 49 && v141 == 0xE100000000000000)
      {
      }

      else
      {
        v142 = sub_1000C2CD8();

        if ((v142 & 1) == 0)
        {

          v60 = v227;
          v150 = v235;
LABEL_58:
          v68 = v219;
          (*(v226 + 32))(v219, v238, v150);
          (*(v226 + 56))(v68, 0, 1, v150);
          return sub_10001DA60(v68, v60, &qword_1000ECE78, &unk_1000C3810);
        }
      }

      v143 = (v184 + 8);
      v224 = v184 + 32;
      v225 = (v185 + 8);
      v223 = (v184 + 56);
      v222 = v184 + 48;
      v220 = (v184 + 16);
      v236 = v15;
      v221 = v10;
      while (1)
      {
        sub_1000C07B8();
        sub_100026DB8(&qword_1000EDAA0, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
        sub_1000C2898();
        while (1)
        {
          sub_1000C28D8();
          sub_100026DB8(&qword_1000EDAA8, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
          v144 = sub_1000C2608();
          v58 = *v143;
          (*v143)(v15, v13);
          if (v144)
          {
            v58(v94, v13);
            (*v225)(v10, v239);
            v146 = 1;
            v147 = v233;
            v148 = v224;
            goto LABEL_44;
          }

          v145 = sub_1000C28F8();
          v55 = v94;

          (v145)(v240, 0);

          LOBYTE(v145) = sub_1000C25A8();
          swift_bridgeObjectRelease_n();
          if (v145)
          {
            break;
          }

          sub_1000C28E8();
        }

        (*v225)(v10, v239);
        v148 = v224;
        v147 = v233;
        (*v224)(v233, v94, v13);
        v146 = 0;
LABEL_44:
        (*v223)(v147, v146, 1, v13);
        v149 = (*v222)(v147, 1, v13);
        v150 = v235;
        v151 = v237;
        if (v149 == 1)
        {

          sub_1000084C0(v147, &qword_1000EDA78, &qword_1000C5860);
          v60 = v227;
          goto LABEL_58;
        }

        v152 = *v148;
        (*v148)(v237, v147, v13);
        sub_100026DB8(&qword_1000EDAB0, &type metadata accessor for AttributedString, &protocol conformance descriptor for AttributedString);
        v67 = v236;
        sub_1000C08B8();
        sub_100026DB8(&qword_1000EDAB8, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
        v72 = v13;
        if ((sub_1000C25E8() & 1) == 0)
        {
          break;
        }

        v153 = v230;
        (*v220)(v230, v151, v13);
        v154 = v67;
        v155 = v232;
        v152((v153 + *(v232 + 48)), v154, v13);
        v156 = v231;
        sub_1000082B4(v153, v231, &qword_1000EDA68, &qword_1000C5850);
        v157 = *(v155 + 48);
        v158 = v228;
        v152(v228, v156, v13);
        v58((v156 + v157), v13);
        sub_10001DA60(v153, v156, &qword_1000EDA68, &qword_1000C5850);
        v152(&v158[*(v229 + 36)], v156 + *(v155 + 48), v13);
        v159 = v156;
        v94 = v234;
        v58(v159, v13);
        v55 = &qword_1000C5858;
        sub_100008478(&qword_1000EDAC0, &qword_1000EDA70, &qword_1000C5858, &protocol conformance descriptor for Range<A>);
        sub_1000C07E8();
        v160 = v158;
        v10 = v221;
        sub_1000084C0(v160, &qword_1000EDA70, &qword_1000C5858);
        v58(v237, v13);
        v15 = v236;
      }

      __break(1u);
LABEL_62:
      swift_once();
LABEL_9:
      v180 = v67;
      v73 = [qword_1000EDA40 locale];
      v74 = v220;
      v75 = v217;
      v76 = v216;
      v179 = v72;
      v182 = v55;
      v181 = v58;
      if (v73)
      {
        v77 = v73;
        sub_1000C0B48();

        v78 = 0;
      }

      else
      {
        v78 = 1;
      }

      v95 = v223;
      v96 = v224;
      v97 = *(v224 + 56);
      v97(v75, v78, 1, v223);
      (*(v96 + 16))(v76, v225, v95);
      v97(v76, 0, 1, v95);
      v98 = *(v222 + 48);
      sub_1000082B4(v75, v74, &qword_1000EDA88, &unk_1000C5870);
      sub_1000082B4(v76, v74 + v98, &qword_1000EDA88, &unk_1000C5870);
      v99 = *(v96 + 48);
      if (v99(v74, 1, v95) == 1)
      {
        sub_1000084C0(v76, &qword_1000EDA88, &unk_1000C5870);
        sub_1000084C0(v75, &qword_1000EDA88, &unk_1000C5870);
        v100 = v99(v74 + v98, 1, v95);
        v68 = v219;
        if (v100 == 1)
        {
          sub_1000084C0(v74, &qword_1000EDA88, &unk_1000C5870);
          v60 = v227;
          v101 = &qword_1000ED000;
LABEL_23:
          v105 = v101[328];
          v106 = v218;
          v107 = [v218 date];
          v108 = v181;
          sub_1000C0AA8();

          v109.super.isa = sub_1000C0A78().super.isa;
          v179(v108, v182);
          v110 = [v105 stringFromDate:v109.super.isa];
LABEL_24:
          v111 = v110;

          sub_1000C2678();
          sub_1000C07D8();

          (*(v226 + 56))(v68, 0, 1, v235);
          return sub_10001DA60(v68, v60, &qword_1000ECE78, &unk_1000C3810);
        }
      }

      else
      {
        v102 = v213;
        sub_1000082B4(v74, v213, &qword_1000EDA88, &unk_1000C5870);
        if (v99(v74 + v98, 1, v95) != 1)
        {
          v120 = v224;
          v121 = v210;
          (*(v224 + 32))(v210, v74 + v98, v95);
          sub_100026DB8(&qword_1000EDA90, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
          v122 = sub_1000C2608();
          v123 = *(v120 + 8);
          v123(v121, v95);
          sub_1000084C0(v76, &qword_1000EDA88, &unk_1000C5870);
          sub_1000084C0(v75, &qword_1000EDA88, &unk_1000C5870);
          v123(v102, v95);
          sub_1000084C0(v74, &qword_1000EDA88, &unk_1000C5870);
          v60 = v227;
          v68 = v219;
          v101 = &qword_1000ED000;
          if (v122)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        sub_1000084C0(v76, &qword_1000EDA88, &unk_1000C5870);
        sub_1000084C0(v75, &qword_1000EDA88, &unk_1000C5870);
        (*(v224 + 8))(v102, v95);
        v68 = v219;
      }

      sub_1000084C0(v74, &qword_1000EDA80, &qword_1000C5868);
      v60 = v227;
      v101 = &qword_1000ED000;
LABEL_22:
      v103 = v101[328];
      isa = sub_1000C0B28().super.isa;
      [v103 setLocale:{isa, v179}];

      goto LABEL_23;
    }

    v112 = v60;
    if (qword_1000EC8F8 != -1)
    {
      swift_once();
    }

    v113 = &qword_1000ED000;
    v114 = [qword_1000EDA38 locale];
    v115 = v223;
    v116 = v191;
    v117 = v190;
    if (v114)
    {
      v118 = v114;
      sub_1000C0B48();

      v119 = 0;
    }

    else
    {
      v119 = 1;
    }

    v161 = v224;
    v162 = *(v224 + 56);
    v162(v116, v119, 1, v115);
    (*(v161 + 16))(v117, v225, v115);
    v162(v117, 0, 1, v115);
    v163 = *(v222 + 48);
    v164 = v211;
    sub_1000082B4(v116, v211, &qword_1000EDA88, &unk_1000C5870);
    v165 = v164;
    sub_1000082B4(v117, v164 + v163, &qword_1000EDA88, &unk_1000C5870);
    v166 = *(v161 + 48);
    if (v166(v165, 1, v115) == 1)
    {
      sub_1000084C0(v117, &qword_1000EDA88, &unk_1000C5870);
      v167 = v211;
      sub_1000084C0(v116, &qword_1000EDA88, &unk_1000C5870);
      v168 = v166(v167 + v163, 1, v115);
      v60 = v112;
      if (v168 == 1)
      {
        sub_1000084C0(v167, &qword_1000EDA88, &unk_1000C5870);
        v68 = v219;
LABEL_56:
        v105 = v113[327];
        v106 = v218;
        v172 = [v218 date];
        v173 = v181;
        sub_1000C0AA8();

        v109.super.isa = sub_1000C0A78().super.isa;
        v179(v173, v182);
        v110 = [v105 stringFromDate:v109.super.isa];
        goto LABEL_24;
      }
    }

    else
    {
      v169 = v183;
      sub_1000082B4(v165, v183, &qword_1000EDA88, &unk_1000C5870);
      if (v166(v165 + v163, 1, v115) != 1)
      {
        v174 = v224;
        v175 = v165 + v163;
        v176 = v210;
        (*(v224 + 32))(v210, v175, v115);
        sub_100026DB8(&qword_1000EDA90, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
        LODWORD(v239) = sub_1000C2608();
        v177 = *(v174 + 8);
        v177(v176, v115);
        sub_1000084C0(v117, &qword_1000EDA88, &unk_1000C5870);
        sub_1000084C0(v116, &qword_1000EDA88, &unk_1000C5870);
        v113 = &qword_1000ED000;
        v177(v169, v115);
        sub_1000084C0(v165, &qword_1000EDA88, &unk_1000C5870);
        v60 = v112;
        v68 = v219;
        if (v239)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }

      sub_1000084C0(v117, &qword_1000EDA88, &unk_1000C5870);
      v167 = v211;
      sub_1000084C0(v116, &qword_1000EDA88, &unk_1000C5870);
      (*(v224 + 8))(v169, v115);
      v60 = v112;
    }

    sub_1000084C0(v167, &qword_1000EDA80, &qword_1000C5868);
    v68 = v219;
LABEL_55:
    v170 = v113[327];
    v171 = sub_1000C0B28().super.isa;
    [v170 setLocale:v171];

    goto LABEL_56;
  }

  v69 = v227;
  v70 = *(v226 + 56);

  return v70(v69, 1, 1, v33);
}

uint64_t sub_100026384@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v56 = a2;
  v5 = sub_1000C1118();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v54 - v10;
  v13 = __chkstk_darwin(v12);
  v15 = (&v54 - v14);
  v16 = *(v6 + 16);
  v16(&v54 - v14, v3, v5, v13);
  v17 = (*(v6 + 88))(v15, v5);
  if (v17 == enum case for REMNavigationSpecifier.account(_:))
  {
    (*(v6 + 96))(v15, v5);

    v18 = *(sub_100004D04(&qword_1000EDA60, &qword_1000C5848) + 48);
    v19 = sub_1000C1098();
LABEL_3:
    (*(*(v19 - 8) + 8))(v15 + v18, v19);
    goto LABEL_4;
  }

  if (v17 == enum case for REMNavigationSpecifier.list(_:))
  {
    (*(v6 + 96))(v15, v5);

    v33 = *(sub_100004D04(&qword_1000EDA48, &unk_1000C5830) + 48);
    sub_100004D04(&qword_1000EDA50, &unk_1000C8CD0);
    sub_100026D74(a1, a1[3]);
    v34 = sub_1000C0DD8();
    v35 = v56;
    *v56 = v34;
    sub_1000C10E8();
    (*(v6 + 104))(v35, enum case for REMNavigationSpecifier.reminder(_:), v5);
    v36 = sub_1000C10C8();
    return (*(*(v36 - 8) + 8))(v15 + v33, v36);
  }

  if (v17 == enum case for REMNavigationSpecifier.customSmartList(_:))
  {
    v38 = v17;
    (*(v6 + 96))(v15, v5);
    v39 = *v15;
    v40 = *(sub_100004D04(&qword_1000EDA48, &unk_1000C5830) + 48);
    v41 = v56;
    *v56 = v39;
    sub_100026D74(a1, a1[3]);
    *(v41 + v40) = sub_1000C0DD8();
    v42 = enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:);
    v43 = sub_1000C10C8();
    v44 = *(v43 - 8);
    (*(v44 + 104))(v41 + v40, v42, v43);
    (*(v6 + 104))(v41, v38, v5);
    return (*(v44 + 8))(v15 + v40, v43);
  }

  if (v17 == enum case for REMNavigationSpecifier.newList(_:))
  {
    goto LABEL_15;
  }

  if (v17 == enum case for REMNavigationSpecifier.reminder(_:))
  {
    (*(v6 + 96))(v15, v5);

    v18 = *(sub_100004D04(&qword_1000EDA50, &unk_1000C8CD0) + 48);
    v19 = sub_1000C10F8();
    goto LABEL_3;
  }

  if (v17 == enum case for REMNavigationSpecifier.section(_:) || v17 == enum case for REMNavigationSpecifier.smartListSection(_:))
  {
    (*(v6 + 96))(v15, v5);

    v18 = *(sub_100004D04(&qword_1000EDA58, &qword_1000C5840) + 48);
    v19 = sub_1000C10A8();
    goto LABEL_3;
  }

  if (v17 == enum case for REMNavigationSpecifier.root(_:))
  {
    goto LABEL_15;
  }

  if (v17 == enum case for REMNavigationSpecifier.today(_:) || v17 == enum case for REMNavigationSpecifier.scheduled(_:) || v17 == enum case for REMNavigationSpecifier.allReminders(_:) || v17 == enum case for REMNavigationSpecifier.flagged(_:))
  {
    goto LABEL_26;
  }

  if (v17 == enum case for REMNavigationSpecifier.search(_:))
  {
LABEL_15:
    (*(v6 + 8))(v15, v5);
    goto LABEL_4;
  }

  if (v17 == enum case for REMNavigationSpecifier.assigned(_:))
  {
LABEL_26:
    v45 = v17;
    sub_100026D74(a1, a1[3]);
    v46 = sub_1000C0DD8();
    v47 = v56;
    *v56 = v46;
    v48 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.select(_:);
    v49 = sub_1000C10B8();
    (*(*(v49 - 8) + 104))(v47, v48, v49);
    (*(v6 + 104))(v47, v45, v5);
    return (*(v6 + 8))(v15, v5);
  }

  v50 = v3;
  v51 = v56;
  LODWORD(v55) = v17;
  if (v17 == enum case for REMNavigationSpecifier.siriFoundInApps(_:))
  {
    sub_100026D74(a1, a1[3]);
    *v51 = sub_1000C0DD8();
    v52 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.select(_:);
    v53 = sub_1000C10B8();
    (*(*(v53 - 8) + 104))(v51, v52, v53);
    (*(v6 + 104))(v51, v55, v5);
    return (*(v6 + 8))(v15, v5);
  }

  if (v55 == enum case for REMNavigationSpecifier.tagged(_:) || v55 == enum case for REMNavigationSpecifier.completed(_:) || v55 == enum case for REMNavigationSpecifier.publicTemplate(_:))
  {
    (*(v6 + 8))(v15, v5);
    v3 = v50;
  }

  else
  {
    v3 = v50;
    if (v55 != enum case for REMNavigationSpecifier.newReminder(_:) && v55 != enum case for REMNavigationSpecifier.requestLocationAuthorization(_:))
    {
      result = sub_1000C2CC8();
      __break(1u);
      return result;
    }
  }

LABEL_4:
  if (qword_1000EC8F0 != -1)
  {
    swift_once();
  }

  v20 = sub_1000C1568();
  sub_10000D978(v20, qword_1000EDA20);
  v21 = v16;
  (v16)(v11, v3, v5);
  v22 = sub_1000C1558();
  v23 = sub_1000C2958();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v55 = v3;
    v26 = v25;
    v57 = v25;
    *v24 = 136315138;
    v21(v8, v11, v5);
    v27 = sub_1000C26A8();
    v28 = v6;
    v30 = v29;
    (*(v28 + 8))(v11, v5);
    v31 = sub_1000B7B58(v27, v30, &v57);

    *(v24 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "Can't select for %s", v24, 0xCu);
    sub_10002285C(v26);
    v3 = v55;
    v32 = v56;
  }

  else
  {

    (*(v6 + 8))(v11, v5);
    v32 = v56;
  }

  return (v21)(v32, v3, v5);
}

id sub_100026CEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(NSDateFormatter) init];
  [v7 setDoesRelativeDateFormatting:1];
  [v7 setDateStyle:a2];
  result = [v7 setTimeStyle:a3];
  *a4 = v7;
  return result;
}

void *sub_100026D74(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100026DB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_100026E00(void *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v27 = *a2;
    *a1 = *a2;
    v28 = (v27 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1000C0AF8();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v76 = a3;
    v77 = a2;
    v8 = *(a3 + 20);
    v78 = a1;
    v9 = a1 + v8;
    v10 = &a2[v8];
    v11 = *(v10 + 1);
    *v9 = *v10;
    *(v9 + 1) = v11;
    *(v9 + 1) = *(v10 + 1);
    *(v9 + 4) = *(v10 + 4);
    v12 = type metadata accessor for TTRNewWidgetViewModel(0);
    v13 = v12[7];
    v14 = sub_1000C0E58();
    v15 = *(*(v14 - 8) + 16);

    v15(&v9[v13], &v10[v13], v14);
    v16 = v12[8];
    v17 = &v9[v16];
    v18 = &v10[v16];
    v19 = *(v18 + 1);
    *v17 = *v18;
    *(v17 + 1) = v19;
    v20 = v12[9];
    v21 = &v9[v20];
    v22 = &v10[v20];
    v23 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v24 = *(v23 - 1);
    v25 = *(v24 + 48);

    if (v25(v22, 1, v23))
    {
      v26 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
      memcpy(v21, v22, *(*(v26 - 8) + 64));
    }

    else
    {
      v74 = v24;
      v29 = *v22;
      v30 = v22[1];
      *v21 = *v22;
      v21[1] = v30;
      v72 = v23[6];
      v31 = sub_1000C0818();
      v69 = *(v31 - 8);
      v70 = *(v69 + 48);
      v32 = v29;
      v33 = v30;
      if (v70(v22 + v72, 1, v31))
      {
        v34 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(v21 + v72, v22 + v72, *(*(v34 - 8) + 64));
      }

      else
      {
        (*(v69 + 16))(v21 + v72, v22 + v72, v31);
        (*(v69 + 56))(v21 + v72, 0, 1, v31);
      }

      v35 = v23[7];
      v36 = sub_1000C0938();
      (*(*(v36 - 8) + 16))(v21 + v35, v22 + v35, v36);
      v37 = v23[8];
      v38 = *(v22 + v37);
      *(v21 + v37) = v38;
      *(v21 + v23[9]) = *(v22 + v23[9]);
      *(v21 + v23[10]) = *(v22 + v23[10]);
      *(v21 + v23[11]) = *(v22 + v23[11]);
      v39 = *(v74 + 56);
      v40 = v38;
      v39(v21, 0, 1, v23);
    }

    v41 = v12[10];
    v75 = *&v10[v41];
    *&v9[v41] = v75;
    v42 = v12[11];
    v43 = &v9[v42];
    v44 = &v10[v42];
    v45 = *(v44 + 1);
    *v43 = *v44;
    *(v43 + 1) = v45;
    v46 = v12[12];
    v73 = *&v10[v46];
    *&v9[v46] = v73;
    v47 = v12[13];
    v48 = &v9[v47];
    v49 = &v10[v47];
    v50 = *(v49 + 1);
    *v48 = *v49;
    *(v48 + 1) = v50;
    v51 = v12[14];
    v52 = &v9[v51];
    v53 = &v10[v51];
    v54 = *(v53 + 1);
    *v52 = *v53;
    *(v52 + 1) = v54;
    v9[v12[15]] = v10[v12[15]];
    v55 = v12[16];
    v56 = &v9[v55];
    v57 = &v10[v55];
    v58 = *(v57 + 1);
    *v56 = *v57;
    *(v56 + 1) = v58;
    *&v9[v12[17]] = *&v10[v12[17]];
    v59 = v12[18];
    v60 = sub_1000C0938();
    v71 = *(*(v60 - 8) + 16);
    v61 = v75;

    v62 = v73;

    v71(&v9[v59], &v10[v59], v60);
    *&v9[v12[19]] = *&v10[v12[19]];
    v9[v12[20]] = v10[v12[20]];
    v63 = *(v76 + 24);
    v64 = sub_1000C2478();
    v65 = *(v64 - 8);
    v66 = *(v65 + 48);

    if (v66(&v77[v63], 1, v64))
    {
      v67 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
      v28 = v78;
      memcpy(v78 + v63, &v77[v63], *(*(v67 - 8) + 64));
    }

    else
    {
      v28 = v78;
      (*(v65 + 16))(v78 + v63, &v77[v63], v64);
      (*(v65 + 56))(v78 + v63, 0, 1, v64);
    }
  }

  return v28;
}

uint64_t sub_1000273F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C0AF8();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = a1 + *(a2 + 20);

  v6 = type metadata accessor for TTRNewWidgetViewModel(0);
  v7 = v6[7];
  v8 = sub_1000C0E58();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  v9 = (v5 + v6[9]);
  v10 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (!(*(*(v10 - 1) + 48))(v9, 1, v10))
  {

    v11 = v10[6];
    v12 = sub_1000C0818();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v9 + v11, 1, v12))
    {
      (*(v13 + 8))(v9 + v11, v12);
    }

    v14 = v10[7];
    v15 = sub_1000C0938();
    (*(*(v15 - 8) + 8))(v9 + v14, v15);
  }

  v16 = v6[18];
  v17 = sub_1000C0938();
  (*(*(v17 - 8) + 8))(v5 + v16, v17);

  v18 = *(a2 + 24);
  v19 = sub_1000C2478();
  v22 = *(v19 - 8);
  result = (*(v22 + 48))(a1 + v18, 1, v19);
  if (!result)
  {
    v21 = *(v22 + 8);

    return v21(a1 + v18, v19);
  }

  return result;
}

uint64_t sub_100027754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v74 = a3;
  v75 = a2;
  v7 = *(a3 + 20);
  v76 = a1;
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(v9 + 8);
  *v8 = *v9;
  *(v8 + 8) = v10;
  *(v8 + 16) = *(v9 + 16);
  *(v8 + 32) = *(v9 + 32);
  v11 = type metadata accessor for TTRNewWidgetViewModel(0);
  v12 = v11[7];
  v13 = sub_1000C0E58();
  v14 = *(*(v13 - 8) + 16);

  v14(v8 + v12, v9 + v12, v13);
  v15 = v11[8];
  v16 = (v8 + v15);
  v17 = (v9 + v15);
  v18 = v17[1];
  *v16 = *v17;
  v16[1] = v18;
  v19 = v11[9];
  v20 = (v8 + v19);
  v21 = (v9 + v19);
  v22 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v23 = *(v22 - 1);
  v24 = *(v23 + 48);

  if (v24(v21, 1, v22))
  {
    v25 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v20, v21, *(*(v25 - 8) + 64));
  }

  else
  {
    v72 = v23;
    v26 = *v21;
    v27 = v21[1];
    *v20 = *v21;
    v20[1] = v27;
    v70 = v22[6];
    v28 = sub_1000C0818();
    v67 = *(v28 - 8);
    v68 = *(v67 + 48);
    v29 = v26;
    v30 = v27;
    if (v68(v21 + v70, 1, v28))
    {
      v31 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v20 + v70, v21 + v70, *(*(v31 - 8) + 64));
    }

    else
    {
      (*(v67 + 16))(v20 + v70, v21 + v70, v28);
      (*(v67 + 56))(v20 + v70, 0, 1, v28);
    }

    v32 = v22[7];
    v33 = sub_1000C0938();
    (*(*(v33 - 8) + 16))(v20 + v32, v21 + v32, v33);
    v34 = v22[8];
    v35 = *(v21 + v34);
    *(v20 + v34) = v35;
    *(v20 + v22[9]) = *(v21 + v22[9]);
    *(v20 + v22[10]) = *(v21 + v22[10]);
    *(v20 + v22[11]) = *(v21 + v22[11]);
    v36 = *(v72 + 56);
    v37 = v35;
    v36(v20, 0, 1, v22);
  }

  v38 = v11[10];
  v73 = *(v9 + v38);
  *(v8 + v38) = v73;
  v39 = v11[11];
  v40 = (v8 + v39);
  v41 = (v9 + v39);
  v42 = v41[1];
  *v40 = *v41;
  v40[1] = v42;
  v43 = v11[12];
  v71 = *(v9 + v43);
  *(v8 + v43) = v71;
  v44 = v11[13];
  v45 = (v8 + v44);
  v46 = (v9 + v44);
  v47 = v46[1];
  *v45 = *v46;
  v45[1] = v47;
  v48 = v11[14];
  v49 = (v8 + v48);
  v50 = (v9 + v48);
  v51 = v50[1];
  *v49 = *v50;
  v49[1] = v51;
  *(v8 + v11[15]) = *(v9 + v11[15]);
  v52 = v11[16];
  v53 = (v8 + v52);
  v54 = (v9 + v52);
  v55 = v54[1];
  *v53 = *v54;
  v53[1] = v55;
  *(v8 + v11[17]) = *(v9 + v11[17]);
  v56 = v11[18];
  v57 = sub_1000C0938();
  v69 = *(*(v57 - 8) + 16);
  v58 = v73;

  v59 = v71;

  v69(v8 + v56, v9 + v56, v57);
  *(v8 + v11[19]) = *(v9 + v11[19]);
  *(v8 + v11[20]) = *(v9 + v11[20]);
  v60 = *(v74 + 24);
  v61 = sub_1000C2478();
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);

  if (v63(v75 + v60, 1, v61))
  {
    v64 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
    v65 = v76;
    memcpy((v76 + v60), (v75 + v60), *(*(v64 - 8) + 64));
  }

  else
  {
    v65 = v76;
    (*(v62 + 16))(v76 + v60, v75 + v60, v61);
    (*(v62 + 56))(v76 + v60, 0, 1, v61);
  }

  return v65;
}

uint64_t sub_100027CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v92 = a3;
  v93 = a2;
  v7 = *(a3 + 20);
  v94 = a1;
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *(a2 + v7);
  *(v8 + 1) = *(a2 + v7 + 8);

  *(v8 + 2) = *(v9 + 2);
  *(v8 + 3) = *(v9 + 3);
  *(v8 + 4) = *(v9 + 4);

  v10 = type metadata accessor for TTRNewWidgetViewModel(0);
  v11 = v10[7];
  v12 = sub_1000C0E58();
  (*(*(v12 - 8) + 24))(&v8[v11], &v9[v11], v12);
  v13 = v10[8];
  v14 = &v8[v13];
  v15 = &v9[v13];
  *v14 = *v15;
  *(v14 + 1) = *(v15 + 1);

  v16 = v10[9];
  v17 = &v8[v16];
  v18 = &v9[v16];
  v19 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v20 = *(v19 - 1);
  v21 = *(v20 + 48);
  v22 = v21(v17, 1, v19);
  v23 = v21(v18, 1, v19);
  if (!v22)
  {
    if (v23)
    {
      sub_100028560(v17);
      goto LABEL_7;
    }

    v31 = *v18;
    v32 = *v17;
    *v17 = *v18;
    v33 = v31;

    v34 = *(v17 + 1);
    v35 = *(v18 + 1);
    *(v17 + 1) = v35;
    v36 = v35;

    v37 = v19[6];
    v38 = sub_1000C0818();
    v88 = *(v38 - 8);
    v39 = *(v88 + 48);
    v90 = v39(&v17[v37], 1, v38);
    v40 = v39(&v18[v37], 1, v38);
    if (v90)
    {
      if (!v40)
      {
        (*(v88 + 16))(&v17[v37], &v18[v37], v38);
        (*(v88 + 56))(&v17[v37], 0, 1, v38);
        goto LABEL_27;
      }

      v41 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v42 = &v17[v37];
      v43 = &v18[v37];
    }

    else
    {
      if (!v40)
      {
        (*(v88 + 24))(&v17[v37], &v18[v37], v38);
        goto LABEL_27;
      }

      (*(v88 + 8))(&v17[v37], v38);
      v41 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v42 = &v17[v37];
      v43 = &v18[v37];
    }

    memcpy(v42, v43, v41);
LABEL_27:
    v80 = v19[7];
    v81 = sub_1000C0938();
    (*(*(v81 - 8) + 24))(&v17[v80], &v18[v80], v81);
    v82 = v19[8];
    v83 = *&v17[v82];
    v84 = *&v18[v82];
    *&v17[v82] = v84;
    v85 = v84;

    *&v17[v19[9]] = *&v18[v19[9]];
    v17[v19[10]] = v18[v19[10]];
    v17[v19[11]] = v18[v19[11]];
    goto LABEL_8;
  }

  if (v23)
  {
LABEL_7:
    v29 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v17, v18, *(*(v29 - 8) + 64));
LABEL_8:
    v30 = v93;
    goto LABEL_14;
  }

  v24 = *v18;
  *v17 = *v18;
  v91 = *(v18 + 1);
  *(v17 + 1) = v91;
  v89 = v19[6];
  v25 = sub_1000C0818();
  v86 = *(v25 - 8);
  v87 = *(v86 + 48);
  v26 = v24;
  v27 = v91;
  if (v87(&v18[v89], 1, v25))
  {
    v28 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v17[v89], &v18[v89], *(*(v28 - 8) + 64));
  }

  else
  {
    (*(v86 + 16))(&v17[v89], &v18[v89], v25);
    (*(v86 + 56))(&v17[v89], 0, 1, v25);
  }

  v30 = v93;
  v44 = v19[7];
  v45 = sub_1000C0938();
  (*(*(v45 - 8) + 16))(&v17[v44], &v18[v44], v45);
  v46 = v19[8];
  v47 = *&v18[v46];
  *&v17[v46] = v47;
  *&v17[v19[9]] = *&v18[v19[9]];
  v17[v19[10]] = v18[v19[10]];
  v17[v19[11]] = v18[v19[11]];
  v48 = *(v20 + 56);
  v49 = v47;
  v48(v17, 0, 1, v19);
LABEL_14:
  v50 = v10[10];
  v51 = *&v9[v50];
  v52 = *&v8[v50];
  *&v8[v50] = v51;
  v53 = v51;

  v54 = v10[11];
  v55 = &v8[v54];
  v56 = &v9[v54];
  *v55 = *v56;
  *(v55 + 1) = *(v56 + 1);

  v57 = v10[12];
  v58 = *&v8[v57];
  v59 = *&v9[v57];
  *&v8[v57] = v59;
  v60 = v59;

  v61 = v10[13];
  v62 = &v8[v61];
  v63 = &v9[v61];
  *v62 = *v63;
  *(v62 + 1) = *(v63 + 1);

  v64 = v10[14];
  v65 = &v8[v64];
  v66 = &v9[v64];
  *v65 = *v66;
  *(v65 + 1) = *(v66 + 1);

  v8[v10[15]] = v9[v10[15]];
  v67 = v10[16];
  v68 = &v8[v67];
  v69 = &v9[v67];
  *v68 = *v69;
  *(v68 + 1) = *(v69 + 1);

  *&v8[v10[17]] = *&v9[v10[17]];

  v70 = v10[18];
  v71 = sub_1000C0938();
  (*(*(v71 - 8) + 24))(&v8[v70], &v9[v70], v71);
  *&v8[v10[19]] = *&v9[v10[19]];

  v8[v10[20]] = v9[v10[20]];
  v72 = *(v92 + 24);
  v73 = sub_1000C2478();
  v74 = *(v73 - 8);
  v75 = *(v74 + 48);
  v76 = v75(v94 + v72, 1, v73);
  v77 = v75(v30 + v72, 1, v73);
  if (!v76)
  {
    if (!v77)
    {
      (*(v74 + 24))(v94 + v72, v30 + v72, v73);
      return v94;
    }

    (*(v74 + 8))(v94 + v72, v73);
    goto LABEL_19;
  }

  if (v77)
  {
LABEL_19:
    v78 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
    memcpy((v94 + v72), (v30 + v72), *(*(v78 - 8) + 64));
    return v94;
  }

  (*(v74 + 16))(v94 + v72, v30 + v72, v73);
  (*(v74 + 56))(v94 + v72, 0, 1, v73);
  return v94;
}

uint64_t sub_100028560(uint64_t a1)
{
  v2 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000285BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v35 = a2;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  *(v8 + 16) = *(a2 + v7 + 16);
  *(v8 + 24) = *(a2 + v7 + 24);
  v10 = type metadata accessor for TTRNewWidgetViewModel(0);
  v11 = v10[7];
  v12 = sub_1000C0E58();
  (*(*(v12 - 8) + 32))(v8 + v11, v9 + v11, v12);
  *(v8 + v10[8]) = *(v9 + v10[8]);
  v13 = v10[9];
  v14 = (v8 + v13);
  v15 = (v9 + v13);
  v16 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v17 = *(v16 - 1);
  if ((*(v17 + 48))(v15, 1, v16))
  {
    v18 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v14, v15, *(*(v18 - 8) + 64));
  }

  else
  {
    v33 = a3;
    v34 = a1;
    v19 = v15[1];
    *v14 = *v15;
    v14[1] = v19;
    v20 = v16[6];
    v21 = sub_1000C0818();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v15 + v20, 1, v21))
    {
      v23 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v14 + v20, v15 + v20, *(*(v23 - 8) + 64));
    }

    else
    {
      (*(v22 + 32))(v14 + v20, v15 + v20, v21);
      (*(v22 + 56))(v14 + v20, 0, 1, v21);
    }

    v24 = v16[7];
    v25 = sub_1000C0938();
    (*(*(v25 - 8) + 32))(v14 + v24, v15 + v24, v25);
    *(v14 + v16[8]) = *(v15 + v16[8]);
    *(v14 + v16[9]) = *(v15 + v16[9]);
    *(v14 + v16[10]) = *(v15 + v16[10]);
    *(v14 + v16[11]) = *(v15 + v16[11]);
    (*(v17 + 56))(v14, 0, 1, v16);
    a3 = v33;
    a1 = v34;
  }

  *(v8 + v10[10]) = *(v9 + v10[10]);
  *(v8 + v10[11]) = *(v9 + v10[11]);
  *(v8 + v10[12]) = *(v9 + v10[12]);
  *(v8 + v10[13]) = *(v9 + v10[13]);
  *(v8 + v10[14]) = *(v9 + v10[14]);
  *(v8 + v10[15]) = *(v9 + v10[15]);
  *(v8 + v10[16]) = *(v9 + v10[16]);
  *(v8 + v10[17]) = *(v9 + v10[17]);
  v26 = v10[18];
  v27 = sub_1000C0938();
  (*(*(v27 - 8) + 32))(v8 + v26, v9 + v26, v27);
  *(v8 + v10[19]) = *(v9 + v10[19]);
  *(v8 + v10[20]) = *(v9 + v10[20]);
  v28 = *(a3 + 24);
  v29 = sub_1000C2478();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v35 + v28, 1, v29))
  {
    v31 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
    memcpy((a1 + v28), (v35 + v28), *(*(v31 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(a1 + v28, v35 + v28, v29);
    (*(v30 + 56))(a1 + v28, 0, 1, v29);
  }

  return a1;
}

uint64_t sub_100028A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v85 = a3;
  v86 = a2;
  v7 = *(a3 + 20);
  v87 = a1;
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(a2 + v7 + 8);
  *v8 = *(a2 + v7);
  *(v8 + 8) = v10;

  *(v8 + 16) = *(v9 + 16);
  *(v8 + 32) = *(v9 + 32);

  v11 = type metadata accessor for TTRNewWidgetViewModel(0);
  v12 = v11[7];
  v13 = sub_1000C0E58();
  (*(*(v13 - 8) + 40))(v8 + v12, v9 + v12, v13);
  v14 = v11[8];
  v15 = (v8 + v14);
  v16 = (v9 + v14);
  v18 = *v16;
  v17 = v16[1];
  *v15 = v18;
  v15[1] = v17;

  v19 = v11[9];
  v20 = (v8 + v19);
  v21 = (v9 + v19);
  v22 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v23 = *(v22 - 1);
  v24 = *(v23 + 48);
  v25 = v24(v20, 1, v22);
  v26 = v24(v21, 1, v22);
  if (!v25)
  {
    if (v26)
    {
      sub_100028560(v20);
      goto LABEL_7;
    }

    v34 = *v20;
    *v20 = *v21;

    v35 = *(v20 + 1);
    *(v20 + 1) = *(v21 + 1);

    v36 = v22[6];
    v37 = sub_1000C0818();
    v83 = *(v37 - 8);
    v38 = *(v83 + 48);
    v84 = v38(&v20[v36], 1, v37);
    v39 = v38(&v21[v36], 1, v37);
    if (v84)
    {
      if (!v39)
      {
        (*(v83 + 32))(&v20[v36], &v21[v36], v37);
        (*(v83 + 56))(&v20[v36], 0, 1, v37);
        goto LABEL_27;
      }

      v40 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v41 = &v20[v36];
      v42 = &v21[v36];
    }

    else
    {
      if (!v39)
      {
        (*(v83 + 40))(&v20[v36], &v21[v36], v37);
        goto LABEL_27;
      }

      (*(v83 + 8))(&v20[v36], v37);
      v40 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v41 = &v20[v36];
      v42 = &v21[v36];
    }

    memcpy(v41, v42, v40);
LABEL_27:
    v79 = v22[7];
    v80 = sub_1000C0938();
    (*(*(v80 - 8) + 40))(&v20[v79], &v21[v79], v80);
    v81 = v22[8];
    v82 = *&v20[v81];
    *&v20[v81] = *&v21[v81];

    *&v20[v22[9]] = *&v21[v22[9]];
    v20[v22[10]] = v21[v22[10]];
    v20[v22[11]] = v21[v22[11]];
    goto LABEL_8;
  }

  if (v26)
  {
LABEL_7:
    v32 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v20, v21, *(*(v32 - 8) + 64));
LABEL_8:
    v33 = v86;
    goto LABEL_14;
  }

  v27 = *(v21 + 1);
  *v20 = *v21;
  *(v20 + 1) = v27;
  v28 = v22[6];
  v29 = sub_1000C0818();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(&v21[v28], 1, v29))
  {
    v31 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v20[v28], &v21[v28], *(*(v31 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(&v20[v28], &v21[v28], v29);
    (*(v30 + 56))(&v20[v28], 0, 1, v29);
  }

  v33 = v86;
  v43 = v22[7];
  v44 = sub_1000C0938();
  (*(*(v44 - 8) + 32))(&v20[v43], &v21[v43], v44);
  *&v20[v22[8]] = *&v21[v22[8]];
  *&v20[v22[9]] = *&v21[v22[9]];
  v20[v22[10]] = v21[v22[10]];
  v20[v22[11]] = v21[v22[11]];
  (*(v23 + 56))(v20, 0, 1, v22);
LABEL_14:
  v45 = v11[10];
  v46 = *(v8 + v45);
  *(v8 + v45) = *(v9 + v45);

  v47 = v11[11];
  v48 = (v8 + v47);
  v49 = (v9 + v47);
  v51 = *v49;
  v50 = v49[1];
  *v48 = v51;
  v48[1] = v50;

  v52 = v11[12];
  v53 = *(v8 + v52);
  *(v8 + v52) = *(v9 + v52);

  v54 = v11[13];
  v55 = (v8 + v54);
  v56 = (v9 + v54);
  v58 = *v56;
  v57 = v56[1];
  *v55 = v58;
  v55[1] = v57;

  v59 = v11[14];
  v60 = (v8 + v59);
  v61 = (v9 + v59);
  v63 = *v61;
  v62 = v61[1];
  *v60 = v63;
  v60[1] = v62;

  *(v8 + v11[15]) = *(v9 + v11[15]);
  v64 = v11[16];
  v65 = (v8 + v64);
  v66 = (v9 + v64);
  v68 = *v66;
  v67 = v66[1];
  *v65 = v68;
  v65[1] = v67;

  *(v8 + v11[17]) = *(v9 + v11[17]);

  v69 = v11[18];
  v70 = sub_1000C0938();
  (*(*(v70 - 8) + 40))(v8 + v69, v9 + v69, v70);
  *(v8 + v11[19]) = *(v9 + v11[19]);

  *(v8 + v11[20]) = *(v9 + v11[20]);
  v71 = *(v85 + 24);
  v72 = sub_1000C2478();
  v73 = *(v72 - 8);
  v74 = *(v73 + 48);
  v75 = v74(v87 + v71, 1, v72);
  v76 = v74(v33 + v71, 1, v72);
  if (!v75)
  {
    if (!v76)
    {
      (*(v73 + 40))(v87 + v71, v33 + v71, v72);
      return v87;
    }

    (*(v73 + 8))(v87 + v71, v72);
    goto LABEL_19;
  }

  if (v76)
  {
LABEL_19:
    v77 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
    memcpy((v87 + v71), (v33 + v71), *(*(v77 - 8) + 64));
    return v87;
  }

  (*(v73 + 32))(v87 + v71, v33 + v71, v72);
  (*(v73 + 56))(v87 + v71, 0, 1, v72);
  return v87;
}

uint64_t sub_100029264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TTRNewWidgetViewModel(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1000293C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000C0AF8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for TTRNewWidgetViewModel(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_10002953C(uint64_t a1)
{
  sub_1000C0AF8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TTRNewWidgetViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_10002B67C(319, &qword_1000EDB30, &type metadata accessor for TimelineEntryRelevance);
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

char *sub_10002965C(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v22 = *a2;
    *v4 = *a2;
    v4 = (v22 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = a2[4];
    v8 = a3[7];
    v9 = sub_1000C0E58();
    v10 = *(*(v9 - 8) + 16);

    v10(&v4[v8], a2 + v8, v9);
    v11 = a3[8];
    v12 = a3[9];
    v13 = &v4[v11];
    v14 = (a2 + v11);
    v15 = v14[1];
    *v13 = *v14;
    *(v13 + 1) = v15;
    v16 = &v4[v12];
    v17 = (a2 + v12);
    v18 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v19 = *(v18 - 1);
    v20 = *(v19 + 48);

    if (v20(v17, 1, v18))
    {
      v21 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
      memcpy(v16, v17, *(*(v21 - 8) + 64));
    }

    else
    {
      v66 = v19;
      v23 = *v17;
      v24 = v17[1];
      *v16 = *v17;
      v16[1] = v24;
      v64 = v18[6];
      v25 = sub_1000C0818();
      v60 = *(v25 - 8);
      v62 = *(v60 + 48);
      v26 = v23;
      v27 = v24;
      if (v62(v17 + v64, 1, v25))
      {
        v28 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(v16 + v64, v17 + v64, *(*(v28 - 8) + 64));
      }

      else
      {
        (*(v60 + 16))(v16 + v64, v17 + v64, v25);
        (*(v60 + 56))(v16 + v64, 0, 1, v25);
      }

      v29 = v18[7];
      v30 = sub_1000C0938();
      (*(*(v30 - 8) + 16))(v16 + v29, v17 + v29, v30);
      v31 = v18[8];
      v32 = *(v17 + v31);
      *(v16 + v31) = v32;
      *(v16 + v18[9]) = *(v17 + v18[9]);
      *(v16 + v18[10]) = *(v17 + v18[10]);
      *(v16 + v18[11]) = *(v17 + v18[11]);
      v33 = *(v66 + 56);
      v34 = v32;
      v33(v16, 0, 1, v18);
    }

    v35 = a3[10];
    v36 = a3[11];
    v67 = *(a2 + v35);
    *&v4[v35] = v67;
    v37 = &v4[v36];
    v38 = (a2 + v36);
    v65 = v38[1];
    *v37 = *v38;
    *(v37 + 1) = v65;
    v39 = a3[12];
    v40 = a3[13];
    v63 = *(a2 + v39);
    *&v4[v39] = v63;
    v41 = &v4[v40];
    v42 = (a2 + v40);
    v43 = v42[1];
    *v41 = *v42;
    *(v41 + 1) = v43;
    v44 = a3[14];
    v45 = a3[15];
    v46 = &v4[v44];
    v47 = (a2 + v44);
    v48 = v47[1];
    *v46 = *v47;
    *(v46 + 1) = v48;
    v4[v45] = *(a2 + v45);
    v49 = a3[16];
    v50 = a3[17];
    v51 = &v4[v49];
    v52 = (a2 + v49);
    v53 = v52[1];
    *v51 = *v52;
    *(v51 + 1) = v53;
    *&v4[v50] = *(a2 + v50);
    v54 = a3[18];
    v55 = sub_1000C0938();
    v61 = *(*(v55 - 8) + 16);
    v56 = v67;

    v57 = v63;

    v61(&v4[v54], a2 + v54, v55);
    v58 = a3[20];
    *&v4[a3[19]] = *(a2 + a3[19]);
    v4[v58] = *(a2 + v58);
  }

  return v4;
}

uint64_t sub_100029AC0(uint64_t a1, int *a2)
{

  v4 = a2[7];
  v5 = sub_1000C0E58();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);

  v6 = (a1 + a2[9]);
  v7 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
  {

    v8 = v7[6];
    v9 = sub_1000C0818();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }

    v11 = v7[7];
    v12 = sub_1000C0938();
    (*(*(v12 - 8) + 8))(v6 + v11, v12);
  }

  v13 = a2[18];
  v14 = sub_1000C0938();
  (*(*(v14 - 8) + 8))(a1 + v13, v14);
}

uint64_t sub_100029D28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v7 = a3[7];
  v8 = sub_1000C0E58();
  v9 = *(*(v8 - 8) + 16);

  v9(a1 + v7, a2 + v7, v8);
  v10 = a3[8];
  v11 = a3[9];
  v12 = (a1 + v10);
  v13 = (a2 + v10);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v15 = (a1 + v11);
  v16 = (a2 + v11);
  v17 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v18 = *(v17 - 1);
  v19 = *(v18 + 48);

  if (v19(v16, 1, v17))
  {
    v20 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v15, v16, *(*(v20 - 8) + 64));
  }

  else
  {
    v64 = v18;
    v21 = *v16;
    v22 = v16[1];
    *v15 = *v16;
    v15[1] = v22;
    v62 = v17[6];
    v23 = sub_1000C0818();
    v58 = *(v23 - 8);
    v60 = *(v58 + 48);
    v24 = v21;
    v25 = v22;
    if (v60(v16 + v62, 1, v23))
    {
      v26 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v15 + v62, v16 + v62, *(*(v26 - 8) + 64));
    }

    else
    {
      (*(v58 + 16))(v15 + v62, v16 + v62, v23);
      (*(v58 + 56))(v15 + v62, 0, 1, v23);
    }

    v27 = v17[7];
    v28 = sub_1000C0938();
    (*(*(v28 - 8) + 16))(v15 + v27, v16 + v27, v28);
    v29 = v17[8];
    v30 = *(v16 + v29);
    *(v15 + v29) = v30;
    *(v15 + v17[9]) = *(v16 + v17[9]);
    *(v15 + v17[10]) = *(v16 + v17[10]);
    *(v15 + v17[11]) = *(v16 + v17[11]);
    v31 = *(v64 + 56);
    v32 = v30;
    v31(v15, 0, 1, v17);
  }

  v33 = a3[10];
  v34 = a3[11];
  v65 = *(a2 + v33);
  *(a1 + v33) = v65;
  v35 = (a1 + v34);
  v36 = (a2 + v34);
  v63 = v36[1];
  *v35 = *v36;
  v35[1] = v63;
  v37 = a3[12];
  v38 = a3[13];
  v61 = *(a2 + v37);
  *(a1 + v37) = v61;
  v39 = (a1 + v38);
  v40 = (a2 + v38);
  v41 = v40[1];
  *v39 = *v40;
  v39[1] = v41;
  v42 = a3[14];
  v43 = a3[15];
  v44 = (a1 + v42);
  v45 = (a2 + v42);
  v46 = v45[1];
  *v44 = *v45;
  v44[1] = v46;
  *(a1 + v43) = *(a2 + v43);
  v47 = a3[16];
  v48 = a3[17];
  v49 = (a1 + v47);
  v50 = (a2 + v47);
  v51 = v50[1];
  *v49 = *v50;
  v49[1] = v51;
  *(a1 + v48) = *(a2 + v48);
  v52 = a3[18];
  v53 = sub_1000C0938();
  v59 = *(*(v53 - 8) + 16);
  v54 = v65;

  v55 = v61;

  v59(a1 + v52, a2 + v52, v53);
  v56 = a3[20];
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + v56) = *(a2 + v56);

  return a1;
}

char *sub_10002A140(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);

  v6 = a3[7];
  v7 = sub_1000C0E58();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  v8 = a3[8];
  v9 = &a1[v8];
  v10 = &a2[v8];
  *v9 = *v10;
  *(v9 + 1) = *(v10 + 1);

  v11 = a3[9];
  v12 = &a1[v11];
  v13 = &a2[v11];
  v14 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v15 = *(v14 - 1);
  v16 = *(v15 + 48);
  v17 = v16(v12, 1, v14);
  v18 = v16(v13, 1, v14);
  if (!v17)
  {
    if (v18)
    {
      sub_100028560(v12);
      goto LABEL_7;
    }

    v25 = *v13;
    v26 = *v12;
    *v12 = *v13;
    v27 = v25;

    v28 = *(v12 + 1);
    v29 = *(v13 + 1);
    *(v12 + 1) = v29;
    v30 = v29;

    v31 = v14[6];
    v32 = sub_1000C0818();
    v74 = *(v32 - 8);
    v33 = *(v74 + 48);
    v77 = v33(&v12[v31], 1, v32);
    v34 = v33(&v13[v31], 1, v32);
    if (v77)
    {
      if (!v34)
      {
        (*(v74 + 16))(&v12[v31], &v13[v31], v32);
        (*(v74 + 56))(&v12[v31], 0, 1, v32);
        goto LABEL_18;
      }

      v35 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v36 = &v12[v31];
      v37 = &v13[v31];
    }

    else
    {
      if (!v34)
      {
        (*(v74 + 24))(&v12[v31], &v13[v31], v32);
        goto LABEL_18;
      }

      (*(v74 + 8))(&v12[v31], v32);
      v35 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v36 = &v12[v31];
      v37 = &v13[v31];
    }

    memcpy(v36, v37, v35);
LABEL_18:
    v44 = v14[7];
    v45 = sub_1000C0938();
    (*(*(v45 - 8) + 24))(&v12[v44], &v13[v44], v45);
    v46 = v14[8];
    v47 = *&v12[v46];
    v48 = *&v13[v46];
    *&v12[v46] = v48;
    v49 = v48;

    *&v12[v14[9]] = *&v13[v14[9]];
    v12[v14[10]] = v13[v14[10]];
    v12[v14[11]] = v13[v14[11]];
    goto LABEL_19;
  }

  if (v18)
  {
LABEL_7:
    v24 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v12, v13, *(*(v24 - 8) + 64));
    goto LABEL_19;
  }

  v19 = *v13;
  *v12 = *v13;
  v76 = *(v13 + 1);
  *(v12 + 1) = v76;
  v78 = v14[6];
  v20 = sub_1000C0818();
  v73 = *(v20 - 8);
  v75 = *(v73 + 48);
  v21 = v19;
  v22 = v76;
  if (v75(&v13[v78], 1, v20))
  {
    v23 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v12[v78], &v13[v78], *(*(v23 - 8) + 64));
  }

  else
  {
    (*(v73 + 16))(&v12[v78], &v13[v78], v20);
    (*(v73 + 56))(&v12[v78], 0, 1, v20);
  }

  v38 = v14[7];
  v39 = sub_1000C0938();
  (*(*(v39 - 8) + 16))(&v12[v38], &v13[v38], v39);
  v40 = v14[8];
  v41 = *&v13[v40];
  *&v12[v40] = v41;
  *&v12[v14[9]] = *&v13[v14[9]];
  v12[v14[10]] = v13[v14[10]];
  v12[v14[11]] = v13[v14[11]];
  v42 = *(v15 + 56);
  v43 = v41;
  v42(v12, 0, 1, v14);
LABEL_19:
  v50 = a3[10];
  v51 = *&a2[v50];
  v52 = *&a1[v50];
  *&a1[v50] = v51;
  v53 = v51;

  v54 = a3[11];
  v55 = &a1[v54];
  v56 = &a2[v54];
  *v55 = *v56;
  *(v55 + 1) = *(v56 + 1);

  v57 = a3[12];
  v58 = *&a1[v57];
  v59 = *&a2[v57];
  *&a1[v57] = v59;
  v60 = v59;

  v61 = a3[13];
  v62 = &a1[v61];
  v63 = &a2[v61];
  *v62 = *v63;
  *(v62 + 1) = *(v63 + 1);

  v64 = a3[14];
  v65 = &a1[v64];
  v66 = &a2[v64];
  *v65 = *v66;
  *(v65 + 1) = *(v66 + 1);

  a1[a3[15]] = a2[a3[15]];
  v67 = a3[16];
  v68 = &a1[v67];
  v69 = &a2[v67];
  *v68 = *v69;
  *(v68 + 1) = *(v69 + 1);

  *&a1[a3[17]] = *&a2[a3[17]];

  v70 = a3[18];
  v71 = sub_1000C0938();
  (*(*(v71 - 8) + 24))(&a1[v70], &a2[v70], v71);
  *&a1[a3[19]] = *&a2[a3[19]];

  a1[a3[20]] = a2[a3[20]];
  return a1;
}

uint64_t sub_10002A844(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v6 = a3[7];
  v7 = sub_1000C0E58();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v12 = *(v11 - 1);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    v13 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v9, v10, *(*(v13 - 8) + 64));
  }

  else
  {
    v14 = v10[1];
    *v9 = *v10;
    v9[1] = v14;
    v15 = v11[6];
    v16 = sub_1000C0818();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v10 + v15, 1, v16))
    {
      v18 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v9 + v15, v10 + v15, *(*(v18 - 8) + 64));
    }

    else
    {
      (*(v17 + 32))(v9 + v15, v10 + v15, v16);
      (*(v17 + 56))(v9 + v15, 0, 1, v16);
    }

    v19 = v11[7];
    v20 = sub_1000C0938();
    (*(*(v20 - 8) + 32))(v9 + v19, v10 + v19, v20);
    *(v9 + v11[8]) = *(v10 + v11[8]);
    *(v9 + v11[9]) = *(v10 + v11[9]);
    *(v9 + v11[10]) = *(v10 + v11[10]);
    *(v9 + v11[11]) = *(v10 + v11[11]);
    (*(v12 + 56))(v9, 0, 1, v11);
  }

  v21 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + v21) = *(a2 + v21);
  v22 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + v22) = *(a2 + v22);
  v23 = a3[15];
  *(a1 + a3[14]) = *(a2 + a3[14]);
  *(a1 + v23) = *(a2 + v23);
  v24 = a3[17];
  *(a1 + a3[16]) = *(a2 + a3[16]);
  *(a1 + v24) = *(a2 + v24);
  v25 = a3[18];
  v26 = sub_1000C0938();
  (*(*(v26 - 8) + 32))(a1 + v25, a2 + v25, v26);
  v27 = a3[20];
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + v27) = *(a2 + v27);
  return a1;
}

uint64_t sub_10002AB9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);

  v7 = a3[7];
  v8 = sub_1000C0E58();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = a3[8];
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v13 = *v11;
  v12 = v11[1];
  *v10 = v13;
  v10[1] = v12;

  v14 = a3[9];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v17 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v18 = *(v17 - 1);
  v19 = *(v18 + 48);
  v20 = v19(v15, 1, v17);
  v21 = v19(v16, 1, v17);
  if (!v20)
  {
    if (v21)
    {
      sub_100028560(v15);
      goto LABEL_7;
    }

    v28 = *v15;
    *v15 = *v16;

    v29 = *(v15 + 1);
    *(v15 + 1) = *(v16 + 1);

    v30 = v17[6];
    v31 = sub_1000C0818();
    v70 = *(v31 - 8);
    v32 = *(v70 + 48);
    v71 = v32(&v15[v30], 1, v31);
    v33 = v32(&v16[v30], 1, v31);
    if (v71)
    {
      if (!v33)
      {
        (*(v70 + 32))(&v15[v30], &v16[v30], v31);
        (*(v70 + 56))(&v15[v30], 0, 1, v31);
        goto LABEL_18;
      }

      v34 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v35 = &v15[v30];
      v36 = &v16[v30];
    }

    else
    {
      if (!v33)
      {
        (*(v70 + 40))(&v15[v30], &v16[v30], v31);
        goto LABEL_18;
      }

      (*(v70 + 8))(&v15[v30], v31);
      v34 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v35 = &v15[v30];
      v36 = &v16[v30];
    }

    memcpy(v35, v36, v34);
LABEL_18:
    v39 = v17[7];
    v40 = sub_1000C0938();
    (*(*(v40 - 8) + 40))(&v15[v39], &v16[v39], v40);
    v41 = v17[8];
    v42 = *&v15[v41];
    *&v15[v41] = *&v16[v41];

    *&v15[v17[9]] = *&v16[v17[9]];
    v15[v17[10]] = v16[v17[10]];
    v15[v17[11]] = v16[v17[11]];
    goto LABEL_19;
  }

  if (v21)
  {
LABEL_7:
    v27 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v15, v16, *(*(v27 - 8) + 64));
    goto LABEL_19;
  }

  v22 = *(v16 + 1);
  *v15 = *v16;
  *(v15 + 1) = v22;
  v23 = v17[6];
  v24 = sub_1000C0818();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(&v16[v23], 1, v24))
  {
    v26 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v15[v23], &v16[v23], *(*(v26 - 8) + 64));
  }

  else
  {
    (*(v25 + 32))(&v15[v23], &v16[v23], v24);
    (*(v25 + 56))(&v15[v23], 0, 1, v24);
  }

  v37 = v17[7];
  v38 = sub_1000C0938();
  (*(*(v38 - 8) + 32))(&v15[v37], &v16[v37], v38);
  *&v15[v17[8]] = *&v16[v17[8]];
  *&v15[v17[9]] = *&v16[v17[9]];
  v15[v17[10]] = v16[v17[10]];
  v15[v17[11]] = v16[v17[11]];
  (*(v18 + 56))(v15, 0, 1, v17);
LABEL_19:
  v43 = a3[10];
  v44 = *(a1 + v43);
  *(a1 + v43) = *(a2 + v43);

  v45 = a3[11];
  v46 = (a1 + v45);
  v47 = (a2 + v45);
  v49 = *v47;
  v48 = v47[1];
  *v46 = v49;
  v46[1] = v48;

  v50 = a3[12];
  v51 = *(a1 + v50);
  *(a1 + v50) = *(a2 + v50);

  v52 = a3[13];
  v53 = (a1 + v52);
  v54 = (a2 + v52);
  v56 = *v54;
  v55 = v54[1];
  *v53 = v56;
  v53[1] = v55;

  v57 = a3[14];
  v58 = (a1 + v57);
  v59 = (a2 + v57);
  v61 = *v59;
  v60 = v59[1];
  *v58 = v61;
  v58[1] = v60;

  v62 = a3[16];
  *(a1 + a3[15]) = *(a2 + a3[15]);
  v63 = (a1 + v62);
  v64 = (a2 + v62);
  v66 = *v64;
  v65 = v64[1];
  *v63 = v66;
  v63[1] = v65;

  *(a1 + a3[17]) = *(a2 + a3[17]);

  v67 = a3[18];
  v68 = sub_1000C0938();
  (*(*(v68 - 8) + 40))(a1 + v67, a2 + v67, v68);
  *(a1 + a3[19]) = *(a2 + a3[19]);

  *(a1 + a3[20]) = *(a2 + a3[20]);
  return a1;
}

uint64_t sub_10002B1F0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1000C0E58();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = sub_1000C0938();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[18];

  return v15(v16, a2, v14);
}

uint64_t sub_10002B37C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1000C0E58();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = sub_1000C0938();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[18];

  return v15(v16, a2, a2, v14);
}

void sub_10002B4F4(uint64_t a1)
{
  sub_1000C0E58();
  if (v1 <= 0x3F)
  {
    sub_10002B67C(319, &unk_1000EDBD0, type metadata accessor for TTRNewWidgetViewModel.Reminder);
    if (v2 <= 0x3F)
    {
      sub_1000C0938();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

void sub_10002B67C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000C2A58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *_s24RemindersWidgetExtension21TTRNewWidgetViewModelV10ShareeIconVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  return a1;
}

uint64_t assignWithCopy for TTRNewWidgetViewModel.ShareeIcon(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for TTRNewWidgetViewModel.ShareeIcon(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = a2[1];
  return a1;
}

char *sub_10002B7A4(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v7 = a1;
    v8 = a2[1];
    *(a1 + 1) = v8;
    v9 = a3[6];
    v10 = sub_1000C0818();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v13 = v4;
    v14 = v8;
    if (v12(a2 + v9, 1, v10))
    {
      v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(&v7[v9], a2 + v9, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v7[v9], a2 + v9, v10);
      (*(v11 + 56))(&v7[v9], 0, 1, v10);
    }

    v16 = a3[7];
    v17 = sub_1000C0938();
    (*(*(v17 - 8) + 16))(&v7[v16], a2 + v16, v17);
    v18 = a3[8];
    v19 = a3[9];
    v20 = *(a2 + v18);
    *&v7[v18] = v20;
    *&v7[v19] = *(a2 + v19);
    v21 = a3[11];
    v7[a3[10]] = *(a2 + a3[10]);
    v7[v21] = *(a2 + v21);
    v22 = v20;
  }

  return v7;
}

void sub_10002B990(id *a1, int *a2)
{
  v4 = a2[6];
  v5 = sub_1000C0818();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  v7 = a2[7];
  v8 = sub_1000C0938();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
  v9 = *(a1 + a2[8]);
}

char *sub_10002BA9C(char *a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v7;
  v8 = a3[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v6;
  v13 = v7;
  if (v11(a2 + v8, 1, v9))
  {
    v14 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], (a2 + v8), *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v8], a2 + v8, v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v15 = a3[7];
  v16 = sub_1000C0938();
  (*(*(v16 - 8) + 16))(&a1[v15], a2 + v15, v16);
  v17 = a3[8];
  v18 = a3[9];
  v19 = *(a2 + v17);
  *&a1[v17] = v19;
  *&a1[v18] = *(a2 + v18);
  v20 = a3[11];
  a1[a3[10]] = *(a2 + a3[10]);
  a1[v20] = *(a2 + v20);
  v21 = v19;
  return a1;
}

uint64_t sub_10002BC38(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  *(a1 + 8) = v10;
  v11 = v10;

  v12 = a3[6];
  v13 = sub_1000C0818();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(a1 + v12, 1, v13);
  v17 = v15(a2 + v12, 1, v13);
  if (!v16)
  {
    if (!v17)
    {
      (*(v14 + 24))(a1 + v12, a2 + v12, v13);
      goto LABEL_7;
    }

    (*(v14 + 8))(a1 + v12, v13);
    goto LABEL_6;
  }

  if (v17)
  {
LABEL_6:
    v18 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v12), (a2 + v12), *(*(v18 - 8) + 64));
    goto LABEL_7;
  }

  (*(v14 + 16))(a1 + v12, a2 + v12, v13);
  (*(v14 + 56))(a1 + v12, 0, 1, v13);
LABEL_7:
  v19 = a3[7];
  v20 = sub_1000C0938();
  (*(*(v20 - 8) + 24))(a1 + v19, a2 + v19, v20);
  v21 = a3[8];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  *(a1 + v21) = v23;
  v24 = v23;

  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  return a1;
}

char *sub_10002BE58(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[6];
  v8 = sub_1000C0818();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(&a2[v7], 1, v8))
  {
    v10 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(&a1[v7], &a2[v7], v8);
    (*(v9 + 56))(&a1[v7], 0, 1, v8);
  }

  v11 = a3[7];
  v12 = sub_1000C0938();
  (*(*(v12 - 8) + 32))(&a1[v11], &a2[v11], v12);
  v13 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  *&a1[v13] = *&a2[v13];
  v14 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  a1[v14] = a2[v14];
  return a1;
}

uint64_t sub_10002BFD8(uint64_t a1, char *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 1);

  v8 = a3[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(a1 + v8, 1, v9);
  v13 = v11(&a2[v8], 1, v9);
  if (!v12)
  {
    if (!v13)
    {
      (*(v10 + 40))(a1 + v8, &a2[v8], v9);
      goto LABEL_7;
    }

    (*(v10 + 8))(a1 + v8, v9);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v8), &a2[v8], *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  (*(v10 + 32))(a1 + v8, &a2[v8], v9);
  (*(v10 + 56))(a1 + v8, 0, 1, v9);
LABEL_7:
  v15 = a3[7];
  v16 = sub_1000C0938();
  (*(*(v16 - 8) + 40))(a1 + v15, &a2[v15], v16);
  v17 = a3[8];
  v18 = *(a1 + v17);
  *(a1 + v17) = *&a2[v17];

  v19 = a3[10];
  *(a1 + a3[9]) = *&a2[a3[9]];
  *(a1 + v19) = a2[v19];
  *(a1 + a3[11]) = a2[a3[11]];
  return a1;
}

uint64_t sub_10002C1FC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
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
      v13 = sub_1000C0938();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10002C340(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
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
      v13 = sub_1000C0938();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10002C470(uint64_t a1)
{
  sub_10002B67C(319, &unk_1000EDCA8, &type metadata accessor for AttributedString);
  if (v1 <= 0x3F)
  {
    sub_1000C0938();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t getEnumTagSinglePayload for TTRNewWidgetPresenter.DisplayDateStyle.TimeOfDayStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_10002C638()
{
  result = qword_1000EDCF0;
  if (!qword_1000EDCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDCF0);
  }

  return result;
}

unint64_t sub_10002C68C()
{
  result = qword_1000EDD08;
  if (!qword_1000EDD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDD08);
  }

  return result;
}

unint64_t sub_10002C6E0()
{
  result = qword_1000EDD10;
  if (!qword_1000EDD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDD10);
  }

  return result;
}

uint64_t sub_10002C764@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_1000C1938();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100004D04(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_1000082B4(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_1000C2958();
    v19 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_10002C964@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_1000C0FD8();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004D04(&qword_1000EDD80, &qword_1000C5AF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - v7;
  v9 = sub_100004D04(&qword_1000EDD88, &qword_1000C5B00);
  v10 = *(v9 - 8);
  v40 = v9;
  v41 = v10;
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v13 = sub_100004D04(&qword_1000EDD90, &unk_1000C5B08);
  v14 = *(v13 - 8);
  v42 = v13;
  v43 = v14;
  v15 = __chkstk_darwin(v13);
  v39 = &v39 - v16;
  (*(v2 + 104))(v4, enum case for REMWidgetRefresh.WidgetKind.widgetForAnyList(_:), v1, v15);
  sub_1000C0FC8();
  (*(v2 + 8))(v4, v1);
  sub_1000C0FF8();
  v45 = sub_1000A0BFC();
  v46 = v17;
  type metadata accessor for TTRAnyListWidget.WidgetPlaceholderWrapper(0);
  sub_100048784(&qword_1000EDD98, type metadata accessor for TTRAnyListWidget.WidgetPlaceholderWrapper, &unk_1000C5C34);
  sub_100045998();
  sub_1000C23E8();
  sub_1000C19E8();
  v18 = sub_1000C1DB8();
  v20 = v19;
  v22 = v21;
  v23 = sub_100008478(&qword_1000EDDA8, &qword_1000EDD80, &qword_1000C5AF8, &protocol conformance descriptor for IntentConfiguration<A, B>);
  sub_1000C1AC8();
  sub_10000537C(v18, v20, v22 & 1);

  (*(v6 + 8))(v8, v5);
  sub_1000C19E8();
  v24 = sub_1000C1DB8();
  v26 = v25;
  LOBYTE(v8) = v27;
  v45 = v5;
  v46 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v39;
  v29 = v40;
  sub_1000C1A88();
  sub_10000537C(v24, v26, v8 & 1);

  v31 = v29;
  (*(v41 + 8))(v12, v29);
  v32 = sub_100012C08();
  sub_100004D04(&qword_1000ECB68, &unk_1000C3680);
  v33 = sub_1000C2378();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1000C3590;
  (*(v34 + 104))(v36 + v35, enum case for WidgetFamily.accessoryRectangular(_:), v33);
  v45 = v32;
  sub_100077AE8(v36);
  v45 = v31;
  v46 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v37 = v42;
  sub_1000C1AA8();

  return (*(v43 + 8))(v30, v37);
}

uint64_t sub_10002CF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRNewWidgetTimelineEntry(0);
  sub_100048828(a1 + *(v4 + 20), a2, type metadata accessor for TTRNewWidgetViewModel);
  v5 = *(type metadata accessor for TTRAnyListWidget.WidgetPlaceholderWrapper(0) + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_100004D04(&qword_1000EDDB0, &qword_1000C5B48);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10002D030@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = sub_1000C1938();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v47 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000C1BB8();
  v4 = *(v51 - 8);
  __chkstk_darwin(v51);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100004D04(&qword_1000EE638, &qword_1000C6708);
  __chkstk_darwin(v50);
  v8 = &v46 - v7;
  v9 = sub_100004D04(&qword_1000EE640, &qword_1000C6710);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v46 - v11;
  v52 = sub_100004D04(&qword_1000EE648, &qword_1000C6718);
  __chkstk_darwin(v52);
  v54 = &v46 - v13;
  v53 = sub_100004D04(&qword_1000EE650, &qword_1000C6720);
  __chkstk_darwin(v53);
  v55 = &v46 - v14;
  sub_10002D710(v1, v8);
  sub_1000C1BA8();
  sub_1000C2108();
  sub_100004D04(&qword_1000EE658, &qword_1000C6728);
  sub_100050A44();
  sub_100050CD0();
  v15 = v1;
  sub_1000C1F18();
  (*(v4 + 8))(v6, v51);
  sub_1000084C0(v8, &qword_1000EE638, &qword_1000C6708);
  KeyPath = swift_getKeyPath();
  v17 = sub_10002DF70();
  v18 = &v12[*(v10 + 44)];
  *v18 = KeyPath;
  v18[1] = v17;
  v19 = swift_getKeyPath();
  v20 = type metadata accessor for TTRAnyListWidget.SystemWidgetView(0);
  if (sub_1000451A0())
  {
    v21 = sub_1000C1FC8();
  }

  else
  {
    v22 = *&v1[*(v20 + 20) + *(type metadata accessor for TTRNewWidgetViewModel(0) + 40)];
    v21 = sub_1000C1FF8();
  }

  v23 = v21;
  v24 = v54;
  sub_10001DA60(v12, v54, &qword_1000EE640, &qword_1000C6710);
  v25 = (v24 + *(v52 + 36));
  *v25 = v19;
  v25[1] = v23;
  v26 = swift_getKeyPath();
  v27 = sub_1000451A0();
  v28 = v55;
  if (v27)
  {
    if (qword_1000EC980 != -1)
    {
      swift_once();
    }

    v29 = &qword_1000FAB08;
  }

  else
  {
    if (qword_1000EC960 != -1)
    {
      swift_once();
    }

    v29 = &qword_1000EDD70;
  }

  v30 = *v29;

  sub_10001DA60(v24, v28, &qword_1000EE648, &qword_1000C6718);
  v31 = (v28 + *(v53 + 36));
  *v31 = v26;
  v31[1] = v30;
  v32 = swift_getKeyPath();
  if (*v15)
  {
    goto LABEL_12;
  }

  if (sub_1000451A0())
  {
    v37 = &v15[*(v20 + 28)];
    v38 = *v37;
    if (v37[8] == 1)
    {
      if ((v38 & 1) == 0)
      {
LABEL_19:
        v39 = sub_1000C1FC8();
LABEL_27:
        v33 = v39;
        goto LABEL_15;
      }
    }

    else
    {

      sub_1000C2958();
      v40 = sub_1000C1BC8();
      sub_1000C1548();

      v41 = v47;
      sub_1000C1928();
      swift_getAtKeyPath();
      sub_100048A00(v38, 0);
      (*(v48 + 8))(v41, v49);
      if ((v57 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  if (sub_1000451A0())
  {
    v42 = &v15[*(v20 + 28)];
    v43 = *v42;
    if (v42[8] == 1)
    {
      if ((v43 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {

      sub_1000C2958();
      v44 = sub_1000C1BC8();
      sub_1000C1548();

      v45 = v47;
      sub_1000C1928();
      swift_getAtKeyPath();
      sub_100048A00(v43, 0);
      (*(v48 + 8))(v45, v49);
      if ((v58 & 1) == 0)
      {
LABEL_26:
        v39 = sub_1000C1FD8();
        goto LABEL_27;
      }
    }
  }

LABEL_12:
  if (qword_1000EC940 != -1)
  {
    swift_once();
  }

  v33 = qword_1000EDD50;

LABEL_15:
  v34 = v56;
  sub_10001DA60(v28, v56, &qword_1000EE650, &qword_1000C6720);
  result = sub_100004D04(&qword_1000EE6B8, &qword_1000C6770);
  v36 = (v34 + *(result + 36));
  *v36 = v32;
  v36[1] = v33;
  return result;
}

uint64_t sub_10002D710@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v43 = type metadata accessor for TTRAnyListWidget.InteractiveLarge(0);
  __chkstk_darwin(v43);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TTRAnyListWidget.InteractiveMedium(0);
  __chkstk_darwin(v39);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100004D04(&qword_1000EE6C8, &qword_1000C6778);
  __chkstk_darwin(v40);
  v8 = &v36 - v7;
  v9 = sub_100004D04(&qword_1000EE6D0, &qword_1000C6780);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v41 = sub_100004D04(&qword_1000EE680, &qword_1000C6738);
  __chkstk_darwin(v41);
  v13 = &v36 - v12;
  v14 = type metadata accessor for TTRAnyListWidget.InteractiveSmall(0);
  __chkstk_darwin(v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = *(type metadata accessor for TTRAnyListWidget.SystemWidgetView(0) + 20);
  if (v17)
  {
    if (v17 == 1)
    {
      sub_100048828(&a1[v18], v6, type metadata accessor for TTRNewWidgetViewModel);
      KeyPath = swift_getKeyPath();
      v20 = v39;
      *&v6[*(v39 + 20)] = KeyPath;
      sub_100004D04(&qword_1000EE6D8, &qword_1000C67B8);
      swift_storeEnumTagMultiPayload();
      v21 = swift_getKeyPath();
      v22 = &v6[*(v20 + 24)];
      *v22 = v21;
      *(v22 + 1) = 0;
      *(v22 + 2) = 0;
      *(v22 + 3) = 0;
      v22[32] = 0;
      sub_100048828(v6, v11, type metadata accessor for TTRAnyListWidget.InteractiveMedium);
      swift_storeEnumTagMultiPayload();
      sub_100048784(&qword_1000EE688, type metadata accessor for TTRAnyListWidget.InteractiveSmall, &unk_1000C6BB8);
      sub_100048784(&qword_1000EE690, type metadata accessor for TTRAnyListWidget.InteractiveMedium, &unk_1000C6B68);
      sub_1000C1AE8();
      sub_1000082B4(v13, v8, &qword_1000EE680, &qword_1000C6738);
      swift_storeEnumTagMultiPayload();
      sub_100050B84();
      sub_100048784(&qword_1000EE698, type metadata accessor for TTRAnyListWidget.InteractiveLarge, &unk_1000C6B18);
      sub_1000C1AE8();
      sub_1000084C0(v13, &qword_1000EE680, &qword_1000C6738);
      v23 = type metadata accessor for TTRAnyListWidget.InteractiveMedium;
      v24 = v6;
    }

    else
    {
      sub_100048828(&a1[v18], v4, type metadata accessor for TTRNewWidgetViewModel);
      *&v4[*(v43 + 20)] = swift_getKeyPath();
      sub_100004D04(&qword_1000EE6D8, &qword_1000C67B8);
      swift_storeEnumTagMultiPayload();
      sub_100048828(v4, v8, type metadata accessor for TTRAnyListWidget.InteractiveLarge);
      swift_storeEnumTagMultiPayload();
      sub_100050B84();
      sub_100048784(&qword_1000EE698, type metadata accessor for TTRAnyListWidget.InteractiveLarge, &unk_1000C6B18);
      sub_1000C1AE8();
      v23 = type metadata accessor for TTRAnyListWidget.InteractiveLarge;
      v24 = v4;
    }
  }

  else
  {
    sub_100048828(&a1[v18], v16, type metadata accessor for TTRNewWidgetViewModel);
    *&v16[v14[7]] = swift_getKeyPath();
    sub_100004D04(&qword_1000EE6D8, &qword_1000C67B8);
    swift_storeEnumTagMultiPayload();
    v38 = swift_getKeyPath();
    v37 = swift_getKeyPath();
    v25 = swift_getKeyPath();
    v26 = swift_getKeyPath();
    v27 = &v16[v14[5]];
    *v27 = swift_getKeyPath();
    v27[8] = 0;
    v28 = v14[6];
    *&v16[v28] = swift_getKeyPath();
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    swift_storeEnumTagMultiPayload();
    v29 = &v16[v14[8]];
    v30 = v37;
    *v29 = v38;
    v29[8] = 0;
    v31 = &v16[v14[9]];
    *v31 = v30;
    v31[8] = 0;
    v32 = &v16[v14[10]];
    *v32 = v25;
    v32[8] = 0;
    v33 = &v16[v14[11]];
    *v33 = v26;
    *(v33 + 1) = 0;
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    v33[32] = 0;
    v34 = v14[12];
    *&v16[v34] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *&v16[v14[13]] = 0x4040800000000000;
    sub_100048828(v16, v11, type metadata accessor for TTRAnyListWidget.InteractiveSmall);
    swift_storeEnumTagMultiPayload();
    sub_100048784(&qword_1000EE688, type metadata accessor for TTRAnyListWidget.InteractiveSmall, &unk_1000C6BB8);
    sub_100048784(&qword_1000EE690, type metadata accessor for TTRAnyListWidget.InteractiveMedium, &unk_1000C6B68);
    sub_1000C1AE8();
    sub_1000082B4(v13, v8, &qword_1000EE680, &qword_1000C6738);
    swift_storeEnumTagMultiPayload();
    sub_100050B84();
    sub_100048784(&qword_1000EE698, type metadata accessor for TTRAnyListWidget.InteractiveLarge, &unk_1000C6B18);
    sub_1000C1AE8();
    sub_1000084C0(v13, &qword_1000EE680, &qword_1000C6738);
    v23 = type metadata accessor for TTRAnyListWidget.InteractiveSmall;
    v24 = v16;
  }

  return sub_100048940(v24, v23);
}

uint64_t sub_10002DF14@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C1738();
  result = sub_1000C1BD8();
  *a1 = 256;
  *(a1 + 8) = v2;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10002DF70()
{
  v1 = v0;
  v2 = sub_1000C1778();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = sub_1000C2338();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for TTRAnyListWidget.SystemWidgetView(0);
  sub_10002C764(&qword_1000EDDC0, &qword_1000C5B60, &type metadata accessor for WidgetRenderingMode, v12);
  v14 = sub_10002E38C();
  (*(v10 + 8))(v12, v9);
  if (v14)
  {
    return sub_1000C1F98();
  }

  if (sub_1000451A0())
  {
    if (qword_1000EC980 != -1)
    {
      swift_once();
    }
  }

  else
  {
    sub_10002C764(&qword_1000EDDB8, &qword_1000C8030, &type metadata accessor for RedactionReasons, v8);
    sub_100048784(&qword_1000EE0C0, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
    sub_1000C2A78();
    sub_100048784(&qword_1000EE0C8, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
    v16 = sub_1000C2608();
    v17 = *(v3 + 8);
    v17(v5, v2);
    v17(v8, v2);
    v18 = *(v1 + *(v13 + 20) + *(type metadata accessor for TTRNewWidgetViewModel(0) + 40));
    result = sub_1000C1FF8();
    if ((v16 & 1) == 0)
    {
      v19 = sub_1000C1FB8();

      return v19;
    }
  }

  return result;
}

uint64_t sub_10002E2B0()
{
  sub_100048A0C();
  sub_1000C1948();
  return v1;
}

uint64_t sub_10002E2EC(uint64_t *a1)
{
  sub_100048A0C();

  return sub_1000C1958();
}

uint64_t sub_10002E38C()
{
  v1 = v0;
  v2 = sub_1000C2338();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v14 - v8;
  (*(v3 + 16))(&v14 - v8, v1, v2, v7);
  sub_1000C2318();
  sub_100048784(&qword_1000EE0B0, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  v10 = sub_1000C2608();
  v11 = *(v3 + 8);
  v11(v5, v2);
  if ((v10 & 1) == 0)
  {
    sub_1000C2328();
    v12 = sub_1000C2608();
    v11(v5, v2);
    if ((v12 & 1) == 0)
    {
      sub_1000C2308();
      sub_1000C2608();
      v11(v5, v2);
    }
  }

  v11(v9, v2);
  return v10 & 1;
}

uint64_t sub_10002E578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_100004D04(&qword_1000EE0D8, &qword_1000C5F00);
  __chkstk_darwin(v23);
  v4 = &v21 - v3;
  v5 = sub_1000C1778();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s10WidgetViewVMa_0(0);
  __chkstk_darwin(v9);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100004D04(&qword_1000EE0E0, &qword_1000C5F08);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - v14;
  v16 = *(a1 + *(type metadata accessor for TTRNewWidgetViewModel(0) + 80));
  if (v16 == 2 || (v16 & 1) == 0)
  {
    type metadata accessor for TTRAnyListWidget.WidgetPlaceholderWrapper(0);
    sub_10002C764(&qword_1000EDDB0, &qword_1000C5B48, &type metadata accessor for WidgetFamily, v11);
    sub_100048828(a1, v11 + *(v9 + 20), type metadata accessor for TTRNewWidgetViewModel);
    sub_100048828(v11, v4, _s10WidgetViewVMa_0);
    swift_storeEnumTagMultiPayload();
    v20 = sub_100048784(&qword_1000EE0E8, _s10WidgetViewVMa_0, &unk_1000CB76C);
    v25 = v9;
    v26 = v20;
    swift_getOpaqueTypeConformance2();
    sub_1000C1AE8();
    return sub_100048940(v11, _s10WidgetViewVMa_0);
  }

  else
  {
    type metadata accessor for TTRAnyListWidget.WidgetPlaceholderWrapper(0);
    v22 = v13;
    sub_10002C764(&qword_1000EDDB0, &qword_1000C5B48, &type metadata accessor for WidgetFamily, v11);
    sub_100048828(a1, v11 + *(v9 + 20), type metadata accessor for TTRNewWidgetViewModel);
    sub_1000C1768();
    v17 = sub_100048784(&qword_1000EE0E8, _s10WidgetViewVMa_0, &unk_1000CB76C);
    sub_1000C1F48();
    (*(v6 + 8))(v8, v5);
    sub_100048940(v11, _s10WidgetViewVMa_0);
    v18 = v22;
    (*(v22 + 16))(v4, v15, v12);
    swift_storeEnumTagMultiPayload();
    v25 = v9;
    v26 = v17;
    swift_getOpaqueTypeConformance2();
    sub_1000C1AE8();
    return (*(v18 + 8))(v15, v12);
  }
}

uint64_t sub_10002EA2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100004D04(&qword_1000EF418, &qword_1000C7530);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  *v9 = sub_1000C1A48();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = sub_100004D04(&qword_1000EF420, &qword_1000C7538);
  sub_10002EB7C(a1, &v9[*(v10 + 44)]);
  sub_1000082B4(v9, v6, &qword_1000EF418, &qword_1000C7530);
  sub_1000082B4(v6, a2, &qword_1000EF418, &qword_1000C7530);
  v11 = a2 + *(sub_100004D04(&qword_1000EF428, &qword_1000C7540) + 48);
  *v11 = 0x4020000000000000;
  *(v11 + 8) = 0;
  sub_1000084C0(v9, &qword_1000EF418, &qword_1000C7530);
  return sub_1000084C0(v6, &qword_1000EF418, &qword_1000C7530);
}

uint64_t sub_10002EB7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRAnyListWidget.TitleTextView(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for TTRNewWidgetViewModel(0);
  v12 = *(a1 + v11[12]);
  v13 = v11[15];
  v14 = (a1 + v11[14]);
  v15 = v14[1];
  v35 = *v14;
  v36 = v12;
  v34 = *(a1 + v13);
  KeyPath = swift_getKeyPath();
  v17 = a1[2];
  v32 = a1[3];
  v33 = v17;
  v18 = a1[4];
  v19 = swift_getKeyPath();
  v20 = swift_getKeyPath();
  sub_100048828(a1, v10, type metadata accessor for TTRNewWidgetViewModel);
  *&v10[v5[7]] = 3;
  v21 = &v10[v5[8]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v10[v5[9]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = v5[10];
  *&v10[v23] = swift_getKeyPath();
  sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
  swift_storeEnumTagMultiPayload();
  sub_100048828(v10, v7, type metadata accessor for TTRAnyListWidget.TitleTextView);
  v24 = v35;
  v25 = v36;
  *a2 = v36;
  *(a2 + 8) = v24;
  *(a2 + 16) = v15;
  *(a2 + 24) = v34;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  v26 = v32;
  *(a2 + 64) = v33;
  *(a2 + 72) = v26;
  *(a2 + 80) = v18;
  *(a2 + 88) = v19;
  *(a2 + 96) = 0;
  *(a2 + 104) = v20;
  *(a2 + 112) = 0;
  v27 = sub_100004D04(&qword_1000EF430, &qword_1000C7548);
  sub_100048828(v7, a2 + *(v27 + 80), type metadata accessor for TTRAnyListWidget.TitleTextView);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v28 = v25;

  v29 = v28;
  sub_100048940(v10, type metadata accessor for TTRAnyListWidget.TitleTextView);
  sub_100048940(v7, type metadata accessor for TTRAnyListWidget.TitleTextView);
}

uint64_t sub_10002EE54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v46 = sub_1000C1A28();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000C1B58();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004D04(&qword_1000EF400, &qword_1000C7518);
  v9 = *(v8 - 8);
  v39 = v8;
  v40 = v9;
  __chkstk_darwin(v8);
  v11 = &v38 - v10;
  v41 = sub_100004D04(&qword_1000EF408, &unk_1000C7520);
  __chkstk_darwin(v41);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v38 = &v38 - v15;
  __chkstk_darwin(v16);
  v42 = &v38 - v17;
  sub_1000C1B38();
  v18 = sub_100004D04(&qword_1000EF3F0, &qword_1000C7508);
  v19 = sub_100008478(&qword_1000EF410, &qword_1000EF3F0, &qword_1000C7508, &protocol conformance descriptor for HStack<A>);
  sub_1000C1F28();
  (*(v5 + 8))(v7, v4);
  v20 = sub_100044BE0(a1);
  v22 = v21;
  v24 = v23;
  v47 = v18;
  v48 = v19;
  swift_getOpaqueTypeConformance2();
  v25 = v39;
  sub_1000C1EA8();
  sub_10000537C(v20, v22, v24 & 1);

  (*(v40 + 8))(v11, v25);
  v26 = a1;
  v27 = sub_100044D9C(a1);
  v29 = v28;
  LOBYTE(v11) = v30;
  v31 = v38;
  sub_1000C16E8();
  sub_10000537C(v27, v29, v11 & 1);

  sub_1000084C0(v13, &qword_1000EF408, &unk_1000C7520);
  v33 = *v26;
  v32 = v26[1];
  v49._countAndFlagsBits = 0xD000000000000047;
  v49._object = 0x80000001000CD410;
  v50._object = 0x80000001000CD460;
  v51._countAndFlagsBits = 0xD00000000000004CLL;
  v51._object = 0x80000001000CD490;
  v50._countAndFlagsBits = 0xD000000000000022;
  sub_1000C0D68(v49, v50, v51);
  sub_100004D04(&qword_1000ED2C0, &unk_1000C5A20);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1000C3590;
  *(v34 + 56) = &type metadata for String;
  *(v34 + 64) = sub_10002C68C();
  *(v34 + 32) = v33;
  *(v34 + 40) = v32;

  sub_1000C2648();

  v35 = v42;
  sub_1000C16D8();

  sub_1000084C0(v31, &qword_1000EF408, &unk_1000C7520);
  v36 = v43;
  sub_1000C1A18();
  sub_1000C16F8();
  (*(v44 + 8))(v36, v46);
  return sub_1000084C0(v35, &qword_1000EF408, &unk_1000C7520);
}

uint64_t sub_10002F398@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v46 = sub_1000C1A28();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000C1B58();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004D04(&qword_1000EF510, &qword_1000C7630);
  v9 = *(v8 - 8);
  v39 = v8;
  v40 = v9;
  __chkstk_darwin(v8);
  v11 = &v38 - v10;
  v41 = sub_100004D04(&qword_1000EF518, &qword_1000C7638);
  __chkstk_darwin(v41);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v38 = &v38 - v15;
  __chkstk_darwin(v16);
  v42 = &v38 - v17;
  sub_1000C1B38();
  v18 = sub_100004D04(&qword_1000EF4F8, &qword_1000C7618);
  v19 = sub_100008478(&qword_1000EF520, &qword_1000EF4F8, &qword_1000C7618, &protocol conformance descriptor for HStack<A>);
  sub_1000C1F28();
  (*(v5 + 8))(v7, v4);
  v20 = sub_100044BE0(a1);
  v22 = v21;
  v24 = v23;
  v47 = v18;
  v48 = v19;
  swift_getOpaqueTypeConformance2();
  v25 = v39;
  sub_1000C1EA8();
  sub_10000537C(v20, v22, v24 & 1);

  (*(v40 + 8))(v11, v25);
  v26 = a1;
  v27 = sub_100044D9C(a1);
  v29 = v28;
  LOBYTE(v11) = v30;
  v31 = v38;
  sub_1000C16E8();
  sub_10000537C(v27, v29, v11 & 1);

  sub_1000084C0(v13, &qword_1000EF518, &qword_1000C7638);
  v33 = *v26;
  v32 = v26[1];
  v49._countAndFlagsBits = 0xD000000000000047;
  v49._object = 0x80000001000CD410;
  v50._object = 0x80000001000CD460;
  v51._countAndFlagsBits = 0xD00000000000004CLL;
  v51._object = 0x80000001000CD490;
  v50._countAndFlagsBits = 0xD000000000000022;
  sub_1000C0D68(v49, v50, v51);
  sub_100004D04(&qword_1000ED2C0, &unk_1000C5A20);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1000C3590;
  *(v34 + 56) = &type metadata for String;
  *(v34 + 64) = sub_10002C68C();
  *(v34 + 32) = v33;
  *(v34 + 40) = v32;

  sub_1000C2648();

  v35 = v42;
  sub_1000C16D8();

  sub_1000084C0(v31, &qword_1000EF518, &qword_1000C7638);
  v36 = v43;
  sub_1000C1A18();
  sub_1000C16F8();
  (*(v44 + 8))(v36, v46);
  return sub_1000084C0(v35, &qword_1000EF518, &qword_1000C7638);
}

uint64_t sub_10002F8DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004D04(&qword_1000EF3F0, &qword_1000C7508);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  *v5 = sub_1000C1998();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = sub_100004D04(&qword_1000EF3F8, &qword_1000C7510);
  sub_10002EA2C(v1, &v5[*(v6 + 44)]);
  sub_10002EE54(v1, a1);
  return sub_1000084C0(v5, &qword_1000EF3F0, &qword_1000C7508);
}

uint64_t sub_10002F9B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_100004D04(&qword_1000EF528, &qword_1000C7640);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v42 - v8;
  *v9 = sub_1000C1A48();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_100004D04(&qword_1000EF530, &qword_1000C7648);
  sub_10002FCC8(a1, &v9[*(v10 + 44)]);
  v11 = sub_1000C1BF8();
  sub_1000C15A8();
  v12 = &v9[*(v4 + 44)];
  *v12 = v11;
  *(v12 + 1) = v13;
  *(v12 + 2) = v14;
  *(v12 + 3) = v15;
  *(v12 + 4) = v16;
  v12[40] = 0;
  v17 = type metadata accessor for TTRNewWidgetViewModel(0);
  v18 = *(a1 + v17[12]);
  v19 = (a1 + v17[14]);
  v20 = *v19;
  v21 = v19[1];
  v22 = *(a1 + v17[15]);
  KeyPath = swift_getKeyPath();

  v24 = v18;
  v25 = sub_1000C1BF8();
  sub_1000C15A8();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  LOBYTE(v50[0]) = 0;
  LOBYTE(v45) = 0;
  v43 = v6;
  sub_1000082B4(v9, v6, &qword_1000EF528, &qword_1000C7640);
  v34 = v6;
  v35 = v44;
  sub_1000082B4(v34, v44, &qword_1000EF528, &qword_1000C7640);
  v36 = sub_100004D04(&qword_1000EF538, &qword_1000C7650);
  v37 = v35 + *(v36 + 48);
  *v37 = 0;
  *(v37 + 8) = 1;
  v38 = (v35 + *(v36 + 64));
  *&v45 = v18;
  *(&v45 + 1) = v20;
  *&v46 = v21;
  BYTE8(v46) = v22;
  *&v47 = KeyPath;
  BYTE8(v47) = 0;
  LOBYTE(v48) = v25;
  *(&v48 + 1) = v27;
  *v49 = v29;
  *&v49[8] = v31;
  *&v49[16] = v33;
  v49[24] = 0;
  v39 = v48;
  v38[2] = v47;
  v38[3] = v39;
  v40 = v46;
  *v38 = v45;
  v38[1] = v40;
  v38[4] = *v49;
  *(v38 + 73) = *&v49[9];
  sub_1000082B4(&v45, v50, &qword_1000EF540, &qword_1000C7658);
  sub_1000084C0(v9, &qword_1000EF528, &qword_1000C7640);
  v50[0] = v18;
  v50[1] = v20;
  v50[2] = v21;
  v51 = v22;
  v52 = KeyPath;
  v53 = 0;
  v54 = v25;
  v55 = v27;
  v56 = v29;
  v57 = v31;
  v58 = v33;
  v59 = 0;
  sub_1000084C0(v50, &qword_1000EF540, &qword_1000C7658);
  return sub_1000084C0(v43, &qword_1000EF528, &qword_1000C7640);
}

uint64_t sub_10002FCC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRAnyListWidget.TitleTextView(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[4];
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  sub_100048828(a1, v10, type metadata accessor for TTRNewWidgetViewModel);
  *&v10[v5[7]] = 1;
  v16 = &v10[v5[8]];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = &v10[v5[9]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v5[10];
  *&v10[v18] = swift_getKeyPath();
  sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
  swift_storeEnumTagMultiPayload();
  sub_100048828(v10, v7, type metadata accessor for TTRAnyListWidget.TitleTextView);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = 0;
  *(a2 + 40) = v15;
  *(a2 + 48) = 0;
  v19 = sub_100004D04(&qword_1000EF548, &qword_1000C7660);
  sub_100048828(v7, a2 + *(v19 + 48), type metadata accessor for TTRAnyListWidget.TitleTextView);
  swift_bridgeObjectRetain_n();

  sub_100048940(v10, type metadata accessor for TTRAnyListWidget.TitleTextView);
  sub_100048940(v7, type metadata accessor for TTRAnyListWidget.TitleTextView);
}

double sub_10002FEFC@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_100004D04(&qword_1000EF4F8, &qword_1000C7618);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  *v5 = sub_1000C1998();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = sub_100004D04(&qword_1000EF500, &qword_1000C7620);
  sub_10002F9B8(v1, &v5[*(v6 + 44)]);
  sub_10002F398(v1, a1);
  sub_1000084C0(v5, &qword_1000EF4F8, &qword_1000C7618);
  sub_1000C2108();
  sub_1000C1608();
  v7 = (a1 + *(sub_100004D04(&qword_1000EF508, &qword_1000C7628) + 36));
  v8 = v10[1];
  *v7 = v10[0];
  v7[1] = v8;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t sub_100030030@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v39 = sub_1000C1938();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C1778();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v44 = sub_100004D04(&qword_1000EF680, &qword_1000C7780);
  v41 = *(v44 - 8);
  __chkstk_darwin(v44);
  v13 = &v36 - v12;
  v43 = sub_100004D04(&qword_1000EF688, &qword_1000C7788);
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v36 - v14;
  v15 = v1[1];
  *&v37 = *v1;
  v16 = type metadata accessor for TTRAnyListWidget.TitleTextView(0);
  *(&v37 + 1) = v15;

  sub_10002C764(&qword_1000EDDB8, &qword_1000C8030, &type metadata accessor for RedactionReasons, v11);
  sub_100048784(&qword_1000EE0C0, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
  sub_1000C2A78();
  sub_100048784(&qword_1000EE0C8, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
  v17 = sub_1000C2608();
  v18 = *(v6 + 8);
  v18(v8, v5);
  v18(v11, v5);
  if (v17)
  {
    v19 = *(v2 + v16[5]);
  }

  else
  {
    v19 = 1;
  }

  KeyPath = swift_getKeyPath();
  v21 = v2 + v16[6];
  v22 = *v21;
  if (v21[8] == 1)
  {
    v55 = *v21;
  }

  else
  {

    sub_1000C2958();
    v23 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();

    (*(v38 + 8))(v4, v39);
    v22 = v55;
  }

  v24 = swift_getKeyPath();
  v57 = 0;
  v56 = 0;
  v25 = v2 + v16[7];
  v26 = *v25;
  if (v25[8] == 1)
  {
    v54 = *v25;
  }

  else
  {

    sub_1000C2958();
    v27 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    j__swift_release(v26);
    (*(v38 + 8))(v4, v39);
    v26 = v54;
  }

  v28 = swift_getKeyPath();
  v46 = v37;
  LOBYTE(v47) = 0;
  *(&v47 + 1) = _swiftEmptyArrayStorage;
  *&v48 = KeyPath;
  *(&v48 + 1) = v19;
  LOBYTE(v49) = 0;
  *(&v49 + 1) = v24;
  *&v50 = v22;
  *(&v50 + 1) = v28;
  v51 = v26;
  v29 = sub_100004D04(&qword_1000EF690, &qword_1000C7790);
  v30 = sub_100065C80();
  sub_1000C1E18();
  v52[3] = v49;
  v52[4] = v50;
  v53 = v51;
  v52[0] = v46;
  v52[1] = v47;
  v52[2] = v48;
  sub_1000084C0(v52, &qword_1000EF690, &qword_1000C7790);
  *&v46 = v29;
  *(&v46 + 1) = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v40;
  v33 = v44;
  sub_1000C1EF8();
  (*(v41 + 8))(v13, v33);
  *&v46 = v33;
  *(&v46 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v34 = v43;
  sub_1000C1EB8();
  return (*(v42 + 8))(v32, v34);
}

uint64_t sub_100030780@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = sub_1000C17B8();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C1938();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100004D04(&qword_1000EF620, &qword_1000C76E8);
  __chkstk_darwin(v45);
  v44 = &v38 - v9;
  v11 = *(v1 + 8);
  v10 = *(v1 + 16);
  v52 = *(v1 + 24);
  v53 = *(v1 + 32);
  v12 = v53;

  v38 = v5;
  sub_1000082B4(&v52, v47, &qword_1000ED668, &qword_1000C76F0);
  if (v12 != 1)
  {
    sub_1000C2958();
    v13 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_1000084C0(&v52, &qword_1000ED668, &qword_1000C76F0);
    (*(v6 + 8))(v8, v5);
  }

  v39 = v11;
  v14 = sub_1000C1DA8();
  v16 = v15;
  v18 = v17;
  v41 = v10;

  v51 = *(v1 + 48);
  v19 = *(v1 + 40);
  v50 = *(v2 + 40);
  v20 = v51;

  if ((v20 & 1) == 0)
  {
    sub_1000C2958();
    v21 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_1000084C0(&v50, &qword_1000EE3C0, &qword_1000C6458);
    (*(v6 + 8))(v8, v38);
    v19 = v47[0];
  }

  v47[0] = v19;
  v22 = sub_1000C1D88();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_10000537C(v14, v16, v18 & 1);

  v47[0] = v22;
  v47[1] = v24;
  v48 = v26 & 1;
  v49 = v28;
  v29 = v44;
  sub_1000C1E88();
  sub_10000537C(v22, v24, v26 & 1);

  v30 = v40;
  sub_1000C17A8();
  v31 = (v29 + *(sub_100004D04(&qword_1000EF628, &qword_1000C76F8) + 36));
  sub_100004D04(&qword_1000EF630, &qword_1000C7700);
  sub_1000C1798();
  (*(v42 + 8))(v30, v43);
  *v31 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v33 = (v29 + *(sub_100004D04(&qword_1000EF638, &qword_1000C7768) + 36));
  sub_100004D04(&qword_1000EF640, &qword_1000C7770);
  sub_1000C17C8();
  *v33 = KeyPath;
  v34 = sub_1000C2128();
  v35 = (v29 + *(v45 + 36));
  v36 = v39;
  *v35 = v34;
  v35[1] = v36;
  v35[2] = v41;
  sub_100065A28();

  sub_1000C1F38();
  return sub_1000084C0(v29, &qword_1000EF620, &qword_1000C76E8);
}

uint64_t sub_100030D30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = sub_100004D04(&qword_1000EE6E0, &qword_1000C6848);
  __chkstk_darwin(v45);
  v5 = &v43 - v4;
  v44 = sub_100004D04(&qword_1000EE6E8, &qword_1000C6850);
  __chkstk_darwin(v44);
  v7 = &v43 - v6;
  v8 = sub_1000C1938();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for TTRAnyListWidget.ListBadge.Core(0);
  __chkstk_darwin(v46);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(a1 + 24);
  if (v52)
  {
    v43 = a2;
    v51 = *(a1 + 40);
    v14 = a1[4];
    v50 = v14;
    v15 = v51;

    if (v15)
    {
      v16 = 1;
      v17 = v14;
    }

    else
    {
      sub_1000C2958();
      v21 = sub_1000C1BC8();
      sub_1000C1548();

      sub_1000C1928();
      swift_getAtKeyPath();
      sub_1000084C0(&v50, &qword_1000EE3C0, &qword_1000C6458);
      (*(v9 + 8))(v11, v8);
      v17 = v48;
      v16 = v52;
    }

    v49 = *a1;
    v22 = v49;
    v48 = *(a1 + 1);
    v23 = v48;
    *v5 = v17;
    *(v5 + 1) = v22;
    *(v5 + 1) = v23;
    v5[32] = v16;
    v24 = *(v46 + 32);
    *&v5[v24] = swift_getKeyPath();
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    swift_storeEnumTagMultiPayload();
    sub_1000082B4(&v50, v47, &qword_1000EE3C0, &qword_1000C6458);
    sub_1000082B4(&v49, v47, &qword_1000EE6F0, &qword_1000C6858);
    sub_1000082B4(&v48, v47, &qword_1000EE6F8, &qword_1000C6860);
    if (!v15)
    {
      sub_1000C2958();
      v30 = sub_1000C1BC8();
      sub_1000C1548();

      sub_1000C1928();
      swift_getAtKeyPath();
      sub_1000084C0(&v50, &qword_1000EE3C0, &qword_1000C6458);
      (*(v9 + 8))(v11, v8);
      v14 = v47[0];
    }

    v31 = &v5[*(v45 + 36)];
    *v31 = v14;
    v32 = *(type metadata accessor for TTRAnyListWidget.ListBadge.GearCorner(0) + 20);
    *(v31 + v32) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    LOBYTE(v32) = sub_1000C1BD8();
    v33 = v31 + *(sub_100004D04(&qword_1000EE700, &qword_1000C6868) + 36);
    *v33 = v32;
    __asm { FMOV            V0.2D, #21.0 }

    *(v33 + 8) = _Q0;
    *(v33 + 3) = 0;
    *(v33 + 4) = 0;
    v33[40] = 0;
    v39 = sub_1000C2108();
    v41 = v40;
    v42 = (v31 + *(sub_100004D04(&qword_1000EE708, &qword_1000C6870) + 36));
    *v42 = v39;
    v42[1] = v41;
    sub_1000082B4(v5, v7, &qword_1000EE6E0, &qword_1000C6848);
    swift_storeEnumTagMultiPayload();
    sub_100048784(&qword_1000EE710, type metadata accessor for TTRAnyListWidget.ListBadge.Core, &unk_1000C6A90);
    sub_100050F34();
    sub_1000C1AE8();
    return sub_1000084C0(v5, &qword_1000EE6E0, &qword_1000C6848);
  }

  else
  {
    v51 = *(a1 + 40);
    v18 = a1[4];
    v50 = v18;
    v19 = v51;

    if (v19)
    {
      v20 = 0;
    }

    else
    {
      sub_1000C2958();
      v25 = sub_1000C1BC8();
      sub_1000C1548();

      sub_1000C1928();
      swift_getAtKeyPath();
      sub_1000084C0(&v50, &qword_1000EE3C0, &qword_1000C6458);
      (*(v9 + 8))(v11, v8);
      v18 = v48;
      v20 = v52;
    }

    v49 = *a1;
    v26 = v49;
    v48 = *(a1 + 1);
    v27 = v48;
    *v13 = v18;
    *(v13 + 1) = v26;
    *(v13 + 1) = v27;
    v13[32] = v20;
    v28 = *(v46 + 32);
    *&v13[v28] = swift_getKeyPath();
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    swift_storeEnumTagMultiPayload();
    sub_100048828(v13, v7, type metadata accessor for TTRAnyListWidget.ListBadge.Core);
    swift_storeEnumTagMultiPayload();
    sub_1000082B4(&v49, v47, &qword_1000EE6F0, &qword_1000C6858);
    sub_1000082B4(&v48, v47, &qword_1000EE6F8, &qword_1000C6860);
    sub_100048784(&qword_1000EE710, type metadata accessor for TTRAnyListWidget.ListBadge.Core, &unk_1000C6A90);
    sub_100050F34();
    sub_1000C1AE8();
    return sub_100048940(v13, type metadata accessor for TTRAnyListWidget.ListBadge.Core);
  }
}

uint64_t sub_10003147C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_1000C2028();
  v61 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100004D04(&qword_1000EEDA8, &qword_1000C6E98);
  __chkstk_darwin(v65);
  v7 = &v60 - v6;
  v70 = type metadata accessor for TTRAnyListWidget.ListBadge.IconBackground(0);
  __chkstk_darwin(v70);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_100004D04(&qword_1000EEDB0, &qword_1000C6EA0);
  __chkstk_darwin(v66);
  v68 = &v60 - v10;
  v62 = sub_100004D04(&qword_1000EEDB8, &qword_1000C6EA8);
  __chkstk_darwin(v62);
  v63 = &v60 - v11;
  v67 = sub_100004D04(&qword_1000EEDC0, &qword_1000C6EB0);
  __chkstk_darwin(v67);
  v64 = &v60 - v12;
  v13 = sub_100004D04(&qword_1000EEDC8, &qword_1000C6EB8);
  __chkstk_darwin(v13 - 8);
  v15 = &v60 - v14;
  v16 = sub_100004D04(&qword_1000EEDD0, &qword_1000C6EC0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v60 - v18;
  v20 = sub_100004D04(&qword_1000EEDD8, &qword_1000C6EC8);
  __chkstk_darwin(v20);
  v23 = &v60 - v22;
  v24 = a1[3];
  if (v24)
  {
    if (sub_100031F4C(a1[2], v24))
    {
      v25 = *(a1 + 32);
      *v19 = *a1;
      v19[8] = v25;
      v26 = *(type metadata accessor for TTRAnyListWidget.ListBadge.EmojiBackground(0) + 24);
      *&v19[v26] = swift_getKeyPath();
      sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
      swift_storeEnumTagMultiPayload();

      sub_1000C2358();
      v27 = sub_1000C2368();
      (*(*(v27 - 8) + 56))(v15, 0, 1, v27);
      v28 = &v19[*(v16 + 36)];
      sub_1000C2058();
      sub_1000084C0(v15, &qword_1000EEDC8, &qword_1000C6EB8);
      v29 = sub_1000C2108();
      v31 = v30;

      v32 = &v28[*(sub_100004D04(&qword_1000EEE08, &qword_1000C6ED0) + 36)];
      *v32 = v29;
      v32[1] = v31;
      sub_10001DA60(v19, v23, &qword_1000EEDD0, &qword_1000C6EC0);
      (*(v17 + 56))(v23, 0, 1, v16);
    }

    else
    {
      (*(v17 + 56))(v23, 1, 1, v16);
    }

    sub_1000082B4(v23, v63, &qword_1000EEDD8, &qword_1000C6EC8);
    swift_storeEnumTagMultiPayload();
    sub_10005C428();
    sub_10005C5B4();
    v56 = v64;
    sub_1000C1AE8();
    sub_1000082B4(v56, v68, &qword_1000EEDC0, &qword_1000C6EB0);
    swift_storeEnumTagMultiPayload();
    sub_10005C39C();
    sub_100048784(&qword_1000EEE18, type metadata accessor for TTRAnyListWidget.ListBadge.IconBackground, &unk_1000C7280);
    sub_1000C1AE8();
    sub_1000084C0(v56, &qword_1000EEDC0, &qword_1000C6EB0);
    v53 = v23;
    v54 = &qword_1000EEDD8;
    v55 = &qword_1000C6EC8;
  }

  else
  {
    v33 = v61;
    v34 = a1[1];
    if (!v34)
    {
      v58 = *(a1 + 32);
      *v9 = *a1;
      v9[8] = v58;
      v59 = *(v70 + 24);
      *&v9[v59] = swift_getKeyPath();
      sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
      swift_storeEnumTagMultiPayload();
      sub_100048828(v9, v68, type metadata accessor for TTRAnyListWidget.ListBadge.IconBackground);
      swift_storeEnumTagMultiPayload();
      sub_10005C39C();
      sub_100048784(&qword_1000EEE18, type metadata accessor for TTRAnyListWidget.ListBadge.IconBackground, &unk_1000C7280);

      sub_1000C1AE8();
      return sub_100048940(v9, type metadata accessor for TTRAnyListWidget.ListBadge.IconBackground);
    }

    v35 = *(a1 + 32);
    *v7 = *a1;
    v7[8] = v35;
    v36 = *(v70 + 24);
    v60 = v21;
    *&v7[v36] = swift_getKeyPath();
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    swift_storeEnumTagMultiPayload();
    v37 = v34;

    sub_1000C2008();
    (*(v33 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v3);
    v38 = sub_1000C2068();

    (*(v33 + 8))(v5, v3);
    sub_1000C2108();
    sub_1000C1608();
    v39 = v80;
    v40 = v81;
    v41 = v82;
    v42 = v83;
    v43 = v84;
    v44 = v85;
    v45 = sub_1000C1FA8();
    KeyPath = swift_getKeyPath();
    v77 = v40;
    v76 = v42;
    *&v71 = v38;
    *(&v71 + 1) = v39;
    LOBYTE(v72) = v40;
    *(&v72 + 1) = v41;
    LOBYTE(v73) = v42;
    *(&v73 + 1) = v43;
    *&v74 = v44;
    *(&v74 + 1) = KeyPath;
    v75 = v45;
    v47 = &v7[*(v65 + 36)];
    sub_100004D04(&qword_1000EEE30, &qword_1000C6EE0);
    sub_10005C69C();
    sub_1000C1E18();
    v78[2] = v73;
    v78[3] = v74;
    v79 = v75;
    v78[0] = v71;
    v78[1] = v72;
    sub_1000084C0(v78, &qword_1000EEE30, &qword_1000C6EE0);
    v48 = sub_1000C2108();
    v50 = v49;
    v51 = &v47[*(sub_100004D04(&qword_1000EEE28, &qword_1000C6ED8) + 36)];
    *v51 = v48;
    v51[1] = v50;
    sub_1000082B4(v7, v63, &qword_1000EEDA8, &qword_1000C6E98);
    swift_storeEnumTagMultiPayload();
    sub_10005C428();
    sub_10005C5B4();
    v52 = v64;
    sub_1000C1AE8();
    sub_1000082B4(v52, v68, &qword_1000EEDC0, &qword_1000C6EB0);
    swift_storeEnumTagMultiPayload();
    sub_10005C39C();
    sub_100048784(&qword_1000EEE18, type metadata accessor for TTRAnyListWidget.ListBadge.IconBackground, &unk_1000C7280);
    sub_1000C1AE8();

    sub_1000084C0(v52, &qword_1000EEDC0, &qword_1000C6EB0);
    v53 = v7;
    v54 = &qword_1000EEDA8;
    v55 = &qword_1000C6E98;
  }

  return sub_1000084C0(v53, v54, v55);
}

UIImage *sub_100031F4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000C2638();
  v3 = [objc_opt_self() systemFontOfSize:17.0];
  sub_100004D04(&qword_1000EEE50, &qword_1000C6EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000C3590;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 40) = v3;
  v5 = NSFontAttributeName;
  v6 = v3;
  v7 = sub_1000A2150(inited);
  swift_setDeallocating();
  sub_1000084C0(inited + 32, &qword_1000EEE58, &qword_1000C6EF8);
  sub_1000453C8(v7);
  type metadata accessor for Key(0);
  sub_100048784(&qword_1000ECF70, type metadata accessor for Key, &unk_1000C3AB0);
  isa = sub_1000C2568().super.isa;

  [v2 sizeWithAttributes:isa];
  v10 = v9;
  v12 = v11;

  v18.width = v10;
  v18.height = v12;
  UIGraphicsBeginImageContextWithOptions(v18, 0, 0.0);
  v13 = [objc_opt_self() clearColor];
  [v13 set];

  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v10;
  v19.size.height = v12;
  UIRectFill(v19);
  sub_1000453C8(v7);

  v14 = sub_1000C2568().super.isa;

  [v2 drawAtPoint:v14 withAttributes:{0.0, 0.0}];

  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (v15)
  {
    v16 = v15;
    v15 = sub_1000C2008();
  }

  else
  {
  }

  return v15;
}

uint64_t sub_1000321D0()
{
  v1 = sub_1000C2338();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v0[1])
  {
    v21.size.width = 34.0;
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.height = 34.0;
    CGRectInset(v21, -2.0, -2.0);
    sub_1000C1D48();
  }

  else
  {
    sub_1000C1D38();
  }

  v5 = v17;
  v6 = *v0;

  v8 = *&v16[35];
  v9 = *&v16[27];
  sub_1000C2108();
  sub_1000C1608();
  *&v16[19] = v20;
  *&v16[11] = v19;
  *&v16[3] = v18;
  v11 = v8;
  v10 = v9;
  LOBYTE(v12) = v5;
  *(&v12 + 1) = v6;
  *v13 = 256;
  *&v13[2] = *v16;
  *&v13[18] = *&v16[8];
  *&v13[34] = *&v16[16];
  *&v13[48] = *(&v20 + 1);
  type metadata accessor for TTRAnyListWidget.ListBadge.IconBackground(0);
  sub_10002C764(&qword_1000EDDC0, &qword_1000C5B60, &type metadata accessor for WidgetRenderingMode, v4);
  sub_10002E38C();
  (*(v2 + 8))(v4, v1);
  sub_100004D04(&qword_1000EF5A8, &qword_1000C76A0);
  sub_100004D04(&qword_1000EF5B0, &qword_1000C76A8);
  sub_100064EC0();
  sub_100064F78();
  sub_1000C1E08();
  v14[4] = *&v13[16];
  v14[5] = *&v13[32];
  v15 = *&v13[48];
  v14[0] = v10;
  v14[1] = v11;
  v14[2] = v12;
  v14[3] = *v13;
  return sub_1000084C0(v14, &qword_1000EF5A8, &qword_1000C76A0);
}

uint64_t sub_100032494@<X0>(uint64_t a2@<X8>)
{
  sub_100004D04(&qword_1000EF5A8, &qword_1000C76A0);
  sub_100064EC0();
  sub_1000C1E18();
  result = sub_100004D04(&qword_1000EF5B0, &qword_1000C76A8);
  *(a2 + *(result + 36)) = 0x3FBEB851EB851EB8;
  return result;
}

uint64_t sub_100032548@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v21 = sub_100004D04(&qword_1000EF550, &qword_1000C7668);
  v20 = *(v21 - 8);
  __chkstk_darwin(v21);
  v3 = &v15 - v2;
  v23 = sub_100004D04(&qword_1000EF558, &qword_1000C7670);
  __chkstk_darwin(v23);
  v22 = &v15 - v4;
  v5 = sub_1000C2338();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(type metadata accessor for TTRAnyListWidget.ListBadge.EmojiBackground(0) + 24);
  sub_10002C764(&qword_1000EDDC0, &qword_1000C5B60, &type metadata accessor for WidgetRenderingMode, v8);
  sub_10002E38C();
  v9 = *(v6 + 8);
  v19 = v5;
  v18 = v6 + 8;
  v16 = v9;
  v9(v8, v5);
  if (v1[1])
  {
    v34.size.width = 34.0;
    v34.origin.x = 0.0;
    v34.origin.y = 0.0;
    v34.size.height = 34.0;
    CGRectInset(v34, -2.0, -2.0);
    sub_1000C1D48();
  }

  else
  {
    sub_1000C1D38();
  }

  v15 = &v15;
  v10 = *v1;
  v25 = v31;
  v26 = v32;
  LOBYTE(v27) = v33;
  *(&v27 + 1) = v10;
  v28 = 256;
  __chkstk_darwin(v10);
  *(&v15 - 2) = v1;

  sub_100004D04(&qword_1000EEEE8, &qword_1000C6F60);
  sub_100004D04(&qword_1000EF560, &qword_1000C7678);
  sub_100008478(&qword_1000EEEF8, &qword_1000EEEE8, &qword_1000C6F60, &protocol conformance descriptor for _ShapeView<A, B>);
  sub_100064BEC();
  sub_1000C1E08();
  v29[0] = v25;
  v29[1] = v26;
  v29[2] = v27;
  v30 = v28;
  sub_1000084C0(v29, &qword_1000EEEE8, &qword_1000C6F60);
  sub_1000C2108();
  sub_1000C1608();
  v11 = v22;
  (*(v20 + 32))(v22, v3, v21);
  v12 = (v11 + *(v23 + 36));
  v13 = v26;
  *v12 = v25;
  v12[1] = v13;
  v12[2] = v27;
  sub_10002C764(&qword_1000EDDC0, &qword_1000C5B60, &type metadata accessor for WidgetRenderingMode, v8);
  sub_10002E38C();
  v16(v8, v19);
  sub_100004D04(&qword_1000EF580, &qword_1000C7688);
  sub_100064CD0();
  sub_100064DF8();
  sub_1000C1E08();
  return sub_1000084C0(v11, &qword_1000EF558, &qword_1000C7670);
}

uint64_t sub_100032A58@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100004D04(&qword_1000EF598, &qword_1000C7690);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = sub_1000C1F78();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[1];
  v39 = *a1;
  v40 = v13;
  v41 = a1[2];
  v42 = *(a1 + 24);
  sub_100004D04(&qword_1000EF5A0, &qword_1000C7698);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000C44F0;
  v15 = enum case for Color.RGBColorSpace.sRGB(_:);
  v16 = *(v10 + 104);
  v16(v12, enum case for Color.RGBColorSpace.sRGB(_:), v9);
  *(v14 + 32) = sub_1000C1FE8();
  v16(v12, v15, v9);
  *(v14 + 40) = sub_1000C1FE8();
  sub_1000C20E8();
  sub_1000C2158();
  sub_1000C2168();
  sub_1000C1688();
  if (*(a2 + 8))
  {
    v43.size.width = 34.0;
    v43.origin.x = 0.0;
    v43.origin.y = 0.0;
    v43.size.height = 34.0;
    CGRectInset(v43, -2.0, -2.0);
    sub_1000C1D48();
  }

  else
  {
    sub_1000C1D38();
  }

  v17 = v38;
  *(v34 + 7) = v34[3];
  *(&v34[1] + 7) = v34[4];
  *(&v34[2] + 7) = v35;
  v18 = *(v6 + 36);
  v19 = enum case for BlendMode.screen(_:);
  v20 = sub_1000C2138();
  v21 = *(*(v20 - 8) + 104);
  v32 = v36;
  v31 = v37;
  v21(&v8[v18], v19, v20);
  v22 = v31;
  *v8 = v32;
  *(v8 + 1) = v22;
  v8[32] = v17;
  v23 = v34[1];
  *(v8 + 33) = v34[0];
  *(v8 + 49) = v23;
  *(v8 + 4) = *(&v34[1] + 15);
  *(v8 + 40) = 256;
  v24 = sub_1000C2108();
  v26 = v25;
  v27 = a3 + *(sub_100004D04(&qword_1000EF560, &qword_1000C7678) + 36);
  sub_10001DA60(v8, v27, &qword_1000EF598, &qword_1000C7690);
  v28 = (v27 + *(sub_100004D04(&qword_1000EF578, &qword_1000C7680) + 36));
  *v28 = v24;
  v28[1] = v26;
  *(a3 + 48) = v42;
  v29 = v41;
  *(a3 + 16) = v40;
  *(a3 + 32) = v29;
  *a3 = v39;
  return sub_1000082B4(&v39, v33, &qword_1000EEEE8, &qword_1000C6F60);
}

uint64_t sub_100032E2C@<X0>(uint64_t a1@<X8>)
{
  sub_100004D04(&qword_1000EF558, &qword_1000C7670);
  sub_100064CD0();
  sub_1000C1E18();
  result = sub_100004D04(&qword_1000EF580, &qword_1000C7688);
  *(a1 + *(result + 36)) = 0x3FBEB851EB851EB8;
  return result;
}

__n128 sub_100032EB8@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C1A08();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68.origin.x = 0.0;
  v68.origin.y = 0.0;
  v68.size.width = 34.0;
  v68.size.height = 34.0;
  CGRectInset(v68, -2.0, -2.0);
  sub_1000C1D48();
  *(&v43 + 1) = sub_1000C1F98();
  v44 = 256;
  v6 = enum case for RoundedCornerStyle.continuous(_:);
  v7 = *(v3 + 104);
  v7(v5, enum case for RoundedCornerStyle.continuous(_:), v2);
  sub_1000C1D08();
  v8 = sub_1000C1FA8();
  v45 = v61;
  v46 = v62;
  *&v47 = v63;
  *(&v47 + 1) = v8;
  v48 = 256;
  v7(v5, v6, v2);
  sub_1000C1CF8();
  v9 = sub_1000C1F98();
  v10 = sub_1000C2108();
  LOWORD(v59) = v48;
  v56 = v45;
  v57 = v46;
  v58 = v47;
  v49[0] = v45;
  v49[1] = v46;
  v49[2] = v47;
  *&v50 = v59;
  *(&v50 + 1) = v10;
  v51 = v11;
  LOWORD(v28[0]) = v44;
  v26 = v42[1];
  v27 = v43;
  v25 = v42[0];
  *(v28 + 8) = v45;
  *(&v28[4] + 1) = v11;
  *(&v28[3] + 8) = v50;
  *(&v28[2] + 8) = v47;
  *(&v28[1] + 8) = v46;
  v52[1] = v46;
  v52[2] = v47;
  v52[0] = v45;
  v53 = v59;
  v54 = v10;
  v55 = v11;
  sub_1000082B4(&v45, &v61, &qword_1000EEEE8, &qword_1000C6F60);
  sub_1000082B4(v42, &v61, &qword_1000EEEE8, &qword_1000C6F60);
  sub_1000082B4(v49, &v61, &qword_1000EEF20, &qword_1000C6F88);
  sub_1000084C0(v52, &qword_1000EEF20, &qword_1000C6F88);
  v12 = sub_1000C2108();
  v14 = v13;
  sub_1000084C0(v42, &qword_1000EEEE8, &qword_1000C6F60);
  sub_1000084C0(&v45, &qword_1000EEEE8, &qword_1000C6F60);
  v56 = v22;
  v57 = v23;
  *&v58 = v24;
  *(&v58 + 1) = v9;
  LOWORD(v59) = 256;
  *(&v59 + 1) = v12;
  v33 = v28[1];
  v34 = v28[2];
  v35 = v28[3];
  v36 = v28[4];
  v29 = v25;
  v30 = v26;
  v31 = v27;
  v32 = v28[0];
  v39 = v58;
  v40 = v59;
  v37 = v22;
  v38 = v23;
  v60 = v14;
  v41 = v14;
  v61 = v22;
  v62 = v23;
  v63 = v24;
  v64 = v9;
  v65 = 256;
  v66 = v12;
  v67 = v14;
  sub_1000082B4(&v56, v21, &qword_1000EEF20, &qword_1000C6F88);
  sub_1000084C0(&v61, &qword_1000EEF20, &qword_1000C6F88);
  v15 = v40;
  *(a1 + 160) = v39;
  *(a1 + 176) = v15;
  *(a1 + 192) = v41;
  v16 = v36;
  *(a1 + 96) = v35;
  *(a1 + 112) = v16;
  v17 = v38;
  *(a1 + 128) = v37;
  *(a1 + 144) = v17;
  v18 = v32;
  *(a1 + 32) = v31;
  *(a1 + 48) = v18;
  v19 = v34;
  *(a1 + 64) = v33;
  *(a1 + 80) = v19;
  result = v30;
  *a1 = v29;
  *(a1 + 16) = result;
  return result;
}

double sub_100033264@<D0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = sub_1000C2338();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = (&v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_1000C1A08();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_100004D04(&qword_1000EEEE0, &qword_1000C6F48);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = sub_1000C2018();
  sub_1000C1C48();
  v12 = sub_1000C1C38();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = sub_1000C1C68();
  sub_1000084C0(v6, &qword_1000ECC38, &qword_1000C3720);
  KeyPath = swift_getKeyPath();
  v15 = sub_1000C1FA8();
  v16 = swift_getKeyPath();
  *&v43 = v11;
  *(&v43 + 1) = KeyPath;
  *&v44 = v13;
  *(&v44 + 1) = v16;
  *&v45 = v15;
  sub_100004D04(&qword_1000ED790, &unk_1000C6F50);
  sub_10001DD1C();
  sub_1000C1E18();

  sub_1000C2108();
  sub_1000C1608();
  v17 = &v10[*(v8 + 44)];
  v18 = v41;
  *v17 = v40;
  *(v17 + 1) = v18;
  *(v17 + 2) = v42;
  (*(v29 + 104))(v3, enum case for RoundedCornerStyle.continuous(_:), v30);
  sub_1000C1CF8();
  *(&v38 + 1) = *v32;
  v39 = 256;
  type metadata accessor for TTRAnyListWidget.ListBadge.GearCorner(0);

  v19 = v31;
  sub_10002C764(&qword_1000EDDC0, &qword_1000C5B60, &type metadata accessor for WidgetRenderingMode, v31);
  sub_10002E38C();
  (*(v33 + 8))(v19, v34);
  sub_100004D04(&qword_1000EEEE8, &qword_1000C6F60);
  sub_100004D04(&qword_1000EEEF0, &qword_1000C6F68);
  sub_100008478(&qword_1000EEEF8, &qword_1000EEEE8, &qword_1000C6F60, &protocol conformance descriptor for _ShapeView<A, B>);
  sub_10005CBE4();
  v20 = v35;
  sub_1000C1E08();
  v43 = v36;
  v44 = v37;
  v45 = v38;
  v46 = v39;
  sub_1000084C0(&v43, &qword_1000EEEE8, &qword_1000C6F60);
  v21 = sub_1000C2108();
  v23 = v22;
  v24 = v20 + *(sub_100004D04(&qword_1000EEF08, &qword_1000C6F70) + 36);
  sub_1000082B4(v10, v24, &qword_1000EEEE0, &qword_1000C6F48);
  v25 = (v24 + *(sub_100004D04(&qword_1000EEF10, &qword_1000C6F78) + 36));
  *v25 = v21;
  v25[1] = v23;
  sub_1000C2108();
  sub_1000C1608();
  sub_1000084C0(v10, &qword_1000EEEE0, &qword_1000C6F48);
  v26 = (v20 + *(sub_100004D04(&qword_1000EEF18, &qword_1000C6F80) + 36));
  v27 = v37;
  *v26 = v36;
  v26[1] = v27;
  result = *&v38;
  v26[2] = v38;
  return result;
}

uint64_t sub_10003384C@<X0>(uint64_t a1@<X8>)
{
  sub_100004D04(&qword_1000EEEE8, &qword_1000C6F60);
  sub_100008478(&qword_1000EEEF8, &qword_1000EEEE8, &qword_1000C6F60, &protocol conformance descriptor for _ShapeView<A, B>);
  sub_1000C1E18();
  result = sub_100004D04(&qword_1000EEEF0, &qword_1000C6F68);
  *(a1 + *(result + 36)) = 0x3FD3333333333333;
  return result;
}

uint64_t sub_10003391C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v4 = *v1;
  v5[0] = v2;
  *(v5 + 9) = *(v1 + 25);
  return sub_100030D30(&v4, a1);
}

unint64_t sub_100033950@<X0>(uint64_t a1@<X8>)
{
  v19 = type metadata accessor for TTRAnyListWidget.ListShareeBadgesView(0);
  v3 = *(v19 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v19);
  v5 = sub_100004D04(&qword_1000EF818, &qword_1000C7A20);
  __chkstk_darwin(v5 - 8);
  v7 = (&v19 - v6);
  v8 = *v1;
  v9 = *v1 >> 62;
  if (v9)
  {
    v10 = sub_1000C2C38();
  }

  else
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = sub_1000C2108();
  *v7 = result;
  v7[1] = v12;
  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = a1;
  sub_100004D04(&qword_1000EF820, &unk_1000C7A28);
  *&v21 = 0;
  *(&v21 + 1) = v10;
  swift_getKeyPath();
  sub_100048828(v1, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRAnyListWidget.ListShareeBadgesView);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  sub_10005BBD0(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for TTRAnyListWidget.ListShareeBadgesView);
  sub_100004D04(&qword_1000EF828, &qword_1000C7A50);
  sub_100004D04(&qword_1000EF830, &qword_1000C7A58);
  sub_10006810C();
  sub_1000681EC();
  sub_1000C20D8();
  if (v9)
  {
    v16 = sub_1000C2C38();
    v15 = v20;
    if (v16 >= 2)
    {
      result = sub_1000C2C38();
      goto LABEL_9;
    }

LABEL_10:
    sub_1000C2108();
    sub_1000C1608();
    sub_10001DA60(v7, v15, &qword_1000EF818, &qword_1000C7A20);
    result = sub_100004D04(&qword_1000EF878, &qword_1000C7A70);
    v17 = (v15 + *(result + 36));
    v18 = v22;
    *v17 = v21;
    v17[1] = v18;
    v17[2] = v23;
    return result;
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v15 = v20;
  if (result <= 1)
  {
    goto LABEL_10;
  }

LABEL_9:
  if (!__OFSUB__(result, 1))
  {
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100033CB0@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *result;
  v9 = *a2;
  if ((*a2 & 0xC000000000000001) != 0)
  {
    v10 = sub_1000C2B48();
LABEL_5:
    v4 = v10;
    KeyPath = swift_getKeyPath();
    if (!(v9 >> 62))
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result > 1)
      {
LABEL_7:
        result = type metadata accessor for TTRAnyListWidget.ListShareeBadgesView(0);
        v11 = *(a2 + *(result + 24));
        v12 = v8;
        v13 = *(a2 + *(result + 28)) * -0.5 - v11 + v11 * v8;
LABEL_12:
        *a3 = v4;
        *(a3 + 8) = KeyPath;
        *(a3 + 16) = 0;
        *(a3 + 24) = v13;
        *(a3 + 32) = 0;
        *(a3 + 40) = v12;
        return result;
      }

LABEL_11:
      v12 = v8;
      v13 = 0.0;
      goto LABEL_12;
    }

LABEL_10:
    result = sub_1000C2C38();
    if (result > 1)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v8 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v9 + 8 * v8 + 32);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double sub_100033DBC@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v54) = a3;
  v55 = a4;
  v6 = sub_1000C1938();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004D04(&qword_1000EEDC8, &qword_1000C6EB8);
  __chkstk_darwin(v9 - 8);
  v11 = &v49 - v10;
  v12 = sub_100004D04(&qword_1000EF890, &qword_1000C7AD8);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = a1;
  sub_1000C2008();
  sub_1000C2358();
  v17 = sub_1000C2368();
  (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
  sub_1000C2058();

  sub_1000084C0(v11, &qword_1000EEDC8, &qword_1000C6EB8);
  sub_1000C2108();
  sub_1000C1608();
  v18 = &v15[*(sub_100004D04(&qword_1000EF898, &qword_1000C7AE0) + 36)];
  v19 = v88;
  *v18 = v87;
  *(v18 + 1) = v19;
  *(v18 + 2) = v89;
  v20 = sub_1000C1FA8();
  KeyPath = swift_getKeyPath();
  v22 = &v15[*(v13 + 44)];
  *v22 = KeyPath;
  v22[1] = v20;
  v23 = sub_1000C1FA8();
  sub_1000C15D8();
  v24 = v90;
  v25 = v91;
  v26 = v92;
  v27 = v93;
  v28 = v94;
  v29 = sub_1000C2108();
  v31 = v30;
  if (v54)
  {
    v86 = a2;
  }

  else
  {

    sub_1000C2958();
    v51 = v29;
    v32 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_100048A00(a2, 0);
    v49 = v27;
    v50 = v31;
    v33 = *(v52 + 8);
    v54 = v23;
    v34 = v53;
    v33(v8, v53);

    sub_1000C2958();
    v35 = sub_1000C1BC8();
    sub_1000C1548();

    v29 = v51;
    sub_1000C1928();
    swift_getAtKeyPath();
    sub_100048A00(a2, 0);
    v36 = v34;
    v23 = v54;
    v33(v8, v36);
    v27 = v49;
    v31 = v50;
  }

  sub_1000C2108();
  sub_1000C1608();
  *&v65 = v24;
  *(&v65 + 1) = v25;
  *&v66 = v26;
  *(&v66 + 1) = v27;
  *&v67 = v28;
  *(&v67 + 1) = v23;
  LOWORD(v68) = 256;
  *(&v68 + 1) = v29;
  *&v69 = v31;
  v37 = sub_1000C2108();
  v39 = v38;
  v61 = v69;
  v62 = v70;
  v63 = v71;
  v57 = v65;
  v58 = v66;
  v59 = v67;
  v60 = v68;
  v75 = v67;
  v76 = v68;
  v64 = v72;
  v73 = v65;
  v74 = v66;
  v78 = v70;
  v79 = v71;
  v77 = v69;
  *&v80 = v72;
  *(&v80 + 1) = v37;
  v81 = v38;
  v40 = v55;
  sub_1000082B4(v15, v55, &qword_1000EF890, &qword_1000C7AD8);
  v41 = v40 + *(sub_100004D04(&qword_1000EF8A0, &qword_1000C7AE8) + 36);
  v42 = v80;
  *(v41 + 96) = v79;
  *(v41 + 112) = v42;
  *(v41 + 128) = v81;
  v43 = v76;
  *(v41 + 32) = v75;
  *(v41 + 48) = v43;
  v44 = v78;
  *(v41 + 64) = v77;
  *(v41 + 80) = v44;
  v45 = v74;
  *v41 = v73;
  *(v41 + 16) = v45;
  v82[4] = v61;
  v82[5] = v62;
  v82[6] = v63;
  v82[0] = v57;
  v82[1] = v58;
  v82[2] = v59;
  v82[3] = v60;
  v83 = v64;
  v84 = v37;
  v85 = v39;
  sub_1000082B4(&v65, v56, &qword_1000EF8A8, &qword_1000C7AF0);
  sub_1000082B4(&v73, v56, &qword_1000EF8B0, &qword_1000C7AF8);
  sub_1000084C0(v82, &qword_1000EF8B0, &qword_1000C7AF8);
  sub_1000C1F98();
  v46 = sub_1000C1FB8();

  sub_1000084C0(&v65, &qword_1000EF8A8, &qword_1000C7AF0);
  sub_1000084C0(v15, &qword_1000EF890, &qword_1000C7AD8);
  v47 = v40 + *(sub_100004D04(&qword_1000EF8B8, &qword_1000C7B00) + 36);
  *v47 = v46;
  result = 3.0;
  *(v47 + 8) = xmmword_1000C5A30;
  *(v47 + 24) = 0x3FF0000000000000;
  return result;
}

__n128 sub_100034460@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1000C1938();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1000C2958();
    v10 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    a1 = v16;
  }

  sub_1000C0F78();
  sub_1000C2108();
  sub_1000C1608();
  *&v23[3] = *&v23[27];
  *&v23[11] = *&v23[35];
  *&v23[19] = *&v23[43];
  sub_1000C2108();
  sub_1000C1788();
  *a3 = a1;
  *(a3 + 8) = 256;
  *(a3 + 10) = *v23;
  v11 = *&v23[16];
  *(a3 + 26) = *&v23[8];
  *(a3 + 42) = v11;
  *(a3 + 56) = *&v23[23];
  v12 = v21;
  *(a3 + 128) = v20;
  *(a3 + 144) = v12;
  *(a3 + 160) = v22;
  v13 = v17;
  *(a3 + 64) = v16;
  *(a3 + 80) = v13;
  result = v19;
  *(a3 + 96) = v18;
  *(a3 + 112) = result;
  return result;
}

__n128 sub_1000346C0@<Q0>(uint64_t a1@<X8>)
{
  v25 = v1[2];
  v26 = *(v1 + 24);
  v23 = v1[4];
  v24 = *(v1 + 40);
  v3 = swift_allocObject();
  v4 = *(v1 + 1);
  v3[1] = *v1;
  v3[2] = v4;
  *(v3 + 41) = *(v1 + 25);
  sub_1000082B4(&v25, v16, &qword_1000EE3B8, &qword_1000C6450);
  sub_1000082B4(&v23, v16, &qword_1000EE3C0, &qword_1000C6458);
  sub_1000C2108();
  sub_1000C1608();
  v5 = v17;
  v6 = v18;
  v7 = v19;
  v8 = v20;
  v9 = v21;
  v10 = v22;
  sub_1000C2108();
  sub_1000C1788();
  v11 = *v1;
  v12 = sub_1000C1BD8();
  *a1 = sub_10004BD58;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  v13 = v16[5];
  *(a1 + 128) = v16[4];
  *(a1 + 144) = v13;
  *(a1 + 160) = v16[6];
  v14 = v16[1];
  *(a1 + 64) = v16[0];
  *(a1 + 80) = v14;
  result = v16[3];
  *(a1 + 96) = v16[2];
  *(a1 + 112) = result;
  *(a1 + 176) = v12;
  *(a1 + 184) = 0;
  *(a1 + 192) = v11;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  return result;
}

uint64_t sub_100034878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000C1938();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 8))
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    result = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
  }

  else
  {
    __chkstk_darwin(v8);
    *(&v22 - 2) = a1;
    sub_1000C1D58();
    v34 = *(a2 + 40);
    v13 = *(a2 + 32);
    v33 = v13;
    if (v34 == 1)
    {
      v26 = v13;
    }

    else
    {

      sub_1000C2958();
      v21 = sub_1000C1BC8();
      sub_1000C1548();

      sub_1000C1928();
      swift_getAtKeyPath();
      sub_1000084C0(&v33, &qword_1000EE3C0, &qword_1000C6458);
      (*(v7 + 8))(v10, v6);
      v13 = v26;
    }

    sub_1000C15D8();
    v24 = v28;
    v25 = v27;
    v11 = v29;
    v22 = v31;
    v23 = v30;
    v12 = v32;
    result = sub_1000C2108();
    v20 = v22;
    v19 = v23;
    v18 = v24;
    v17 = v25;
    v16 = 256;
  }

  *a3 = v17;
  *(a3 + 16) = v18;
  *(a3 + 32) = v11;
  *(a3 + 40) = v19;
  *(a3 + 56) = v20;
  *(a3 + 72) = v12;
  *(a3 + 80) = v13;
  *(a3 + 88) = v16;
  *(a3 + 96) = result;
  *(a3 + 104) = v15;
  return result;
}

void sub_100034ADC()
{
  v0.x = 0.0;
  v0.y = 0.0;
  sub_1000C1D18(v0);
  sub_1000C1618();
  v1.y = 0.0;
  sub_1000C1D28(v1);
}

uint64_t sub_100034B6C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004D04(&qword_1000ECCE0, &qword_1000C4EF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - v4;
  v47 = sub_100004D04(&qword_1000EE010, &qword_1000C5D80);
  __chkstk_darwin(v47);
  v7 = &v42 - v6;
  v46 = sub_100004D04(&qword_1000EEB58, &qword_1000C6C40);
  __chkstk_darwin(v46);
  v9 = &v42 - v8;
  v49 = sub_100004D04(&qword_1000EEB60, &qword_1000C6C48);
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v11 = &v42 - v10;
  v52 = sub_100004D04(&qword_1000EEB68, &qword_1000C6C50);
  __chkstk_darwin(v52);
  v13 = &v42 - v12;
  v14 = sub_100004D04(&qword_1000EEB70, &qword_1000C6C58);
  v54 = *(v14 - 8);
  __chkstk_darwin(v14);
  v51 = &v42 - v15;
  v50 = sub_100004D04(&qword_1000EEB78, &qword_1000C6C60);
  __chkstk_darwin(v50);
  v53 = &v42 - v16;
  *v9 = sub_1000C1A48();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v17 = sub_100004D04(&qword_1000EEB80, &qword_1000C6C68);
  sub_100035274(v1, &v9[*(v17 + 44)]);
  v18 = enum case for DynamicTypeSize.xxLarge(_:);
  v19 = sub_1000C16C8();
  (*(*(v19 - 8) + 104))(v7, v18, v19);
  sub_100048784(&qword_1000EE078, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_1000C2608();
  if (result)
  {
    v43 = v1;
    sub_100008478(&qword_1000EEB88, &qword_1000EEB58, &qword_1000C6C40, &protocol conformance descriptor for VStack<A>);
    v44 = v14;
    v45 = a1;
    sub_100008478(&qword_1000EE058, &qword_1000EE010, &qword_1000C5D80, &protocol conformance descriptor for PartialRangeThrough<A>);
    sub_1000C1EE8();
    sub_1000084C0(v7, &qword_1000EE010, &qword_1000C5D80);
    sub_1000084C0(v9, &qword_1000EEB58, &qword_1000C6C40);
    sub_1000C2108();
    sub_1000C1788();
    (*(v48 + 32))(v13, v11, v49);
    v21 = &v13[*(v52 + 36)];
    v22 = v60;
    *(v21 + 4) = v59;
    *(v21 + 5) = v22;
    *(v21 + 6) = v61;
    v23 = v56;
    *v21 = v55;
    *(v21 + 1) = v23;
    v24 = v58;
    *(v21 + 2) = v57;
    *(v21 + 3) = v24;
    v25 = *(type metadata accessor for TTRNewWidgetViewModel(0) + 72);
    v26 = sub_1000C0938();
    v27 = *(v26 - 8);
    (*(v27 + 16))(v5, v43 + v25, v26);
    (*(v27 + 56))(v5, 0, 1, v26);
    sub_10005AD18();
    v28 = v51;
    sub_1000C1E38();
    sub_1000084C0(v5, &qword_1000ECCE0, &qword_1000C4EF0);
    sub_1000084C0(v13, &qword_1000EEB68, &qword_1000C6C50);
    KeyPath = swift_getKeyPath();
    v30 = sub_100036D38();
    v31 = v53;
    (*(v54 + 32))(v53, v28, v44);
    v32 = (v31 + *(v50 + 36));
    *v32 = KeyPath;
    v32[1] = v30;
    v33 = sub_1000370D4();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    LOBYTE(KeyPath) = sub_1000C1BD8();
    v40 = v45;
    sub_10001DA60(v31, v45, &qword_1000EEB78, &qword_1000C6C60);
    result = sub_100004D04(&qword_1000EEB98, &qword_1000C6C98);
    v41 = v40 + *(result + 36);
    *v41 = KeyPath;
    *(v41 + 8) = v33;
    *(v41 + 16) = v35;
    *(v41 + 24) = v37;
    *(v41 + 32) = v39;
    *(v41 + 40) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100035274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_100004D04(&qword_1000EEBA8, &qword_1000C6CA0);
  __chkstk_darwin(v3 - 8);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v28 - v6);
  v8 = sub_1000C0938();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004D04(&qword_1000EEBB0, &qword_1000C6CA8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  v29 = sub_100004D04(&qword_1000EEBB8, &qword_1000C6CB0);
  __chkstk_darwin(v29);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v28 - v19;
  v21 = type metadata accessor for TTRNewWidgetViewModel(0);
  (*(v9 + 16))(v11, a1 + *(v21 + 72), v8);
  v32 = a1;
  sub_100004D04(&qword_1000EEBC0, &qword_1000C6CB8);
  sub_10005AF24();
  sub_1000C1CE8();
  v33 = sub_100024038();
  v34 = v22;
  sub_100008478(&qword_1000EEBE0, &qword_1000EEBB0, &qword_1000C6CA8, &protocol conformance descriptor for Link<A>);
  sub_100012814();
  sub_1000C1F08();

  (*(v13 + 8))(v15, v12);
  sub_1000C19E8();
  sub_1000C1718();

  sub_1000084C0(v17, &qword_1000EEBB8, &qword_1000C6CB0);
  *v7 = sub_1000C2108();
  v7[1] = v23;
  sub_100004D04(&qword_1000EEBE8, &qword_1000C6CC8);
  sub_1000361D4(a1);
  sub_1000082B4(v20, v17, &qword_1000EEBB8, &qword_1000C6CB0);
  v24 = v30;
  sub_1000082B4(v7, v30, &qword_1000EEBA8, &qword_1000C6CA0);
  v25 = v31;
  sub_1000082B4(v17, v31, &qword_1000EEBB8, &qword_1000C6CB0);
  v26 = sub_100004D04(&qword_1000EEBF0, &qword_1000C6CD0);
  sub_1000082B4(v24, v25 + *(v26 + 48), &qword_1000EEBA8, &qword_1000C6CA0);
  sub_1000084C0(v7, &qword_1000EEBA8, &qword_1000C6CA0);
  sub_1000084C0(v20, &qword_1000EEBB8, &qword_1000C6CB0);
  sub_1000084C0(v24, &qword_1000EEBA8, &qword_1000C6CA0);
  return sub_1000084C0(v17, &qword_1000EEBB8, &qword_1000C6CB0);
}

uint64_t sub_1000356E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1000C1998();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100004D04(&qword_1000EEC98, &qword_1000C6D88);
  sub_100035794(a1, a2 + *(v4 + 44));
  v5 = sub_100035D6C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  LOBYTE(a1) = sub_1000C1BD8();
  result = sub_100004D04(&qword_1000EEBC0, &qword_1000C6CB8);
  v13 = a2 + *(result + 36);
  *v13 = a1;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  return result;
}

uint64_t sub_100035794@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for TTRAnyListWidget.TitleTextView(0);
  v4 = (v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  sub_100048828(a1, &v28 - v8, type metadata accessor for TTRNewWidgetViewModel);
  *&v9[v4[7]] = 1;
  v10 = &v9[v4[8]];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = &v9[v4[9]];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v4[10];
  *&v9[v12] = swift_getKeyPath();
  sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
  swift_storeEnumTagMultiPayload();
  v14 = a1[2];
  v13 = a1[3];
  v15 = a1[4];
  KeyPath = swift_getKeyPath();
  v17 = swift_getKeyPath();
  v18 = swift_getKeyPath();

  v19 = sub_100035A54();
  LOBYTE(v36[0]) = 0;
  LOBYTE(v31) = 0;
  v29 = v6;
  sub_100048828(v9, v6, type metadata accessor for TTRAnyListWidget.TitleTextView);
  v20 = v6;
  v21 = v30;
  sub_100048828(v20, v30, type metadata accessor for TTRAnyListWidget.TitleTextView);
  v22 = sub_100004D04(&qword_1000EECA0, &qword_1000C6DE8);
  v23 = v21 + *(v22 + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = v21 + *(v22 + 64);
  *&v31 = v14;
  *(&v31 + 1) = v13;
  *&v32 = v15;
  *(&v32 + 1) = KeyPath;
  LOBYTE(v33) = 0;
  *(&v33 + 1) = v17;
  LOBYTE(v34) = 0;
  *(&v34 + 1) = v18;
  v35 = v19;
  v25 = v34;
  *(v24 + 32) = v33;
  *(v24 + 48) = v25;
  *(v24 + 64) = v19;
  v26 = v32;
  *v24 = v31;
  *(v24 + 16) = v26;
  sub_1000082B4(&v31, v36, &qword_1000EECA8, &qword_1000C6DF0);
  sub_100048940(v9, type metadata accessor for TTRAnyListWidget.TitleTextView);
  v36[0] = v14;
  v36[1] = v13;
  v36[2] = v15;
  v36[3] = KeyPath;
  v37 = 0;
  v38 = v17;
  v39 = 0;
  v40 = v18;
  v41 = v19;
  sub_1000084C0(v36, &qword_1000EECA8, &qword_1000C6DF0);
  return sub_100048940(v29, type metadata accessor for TTRAnyListWidget.TitleTextView);
}

uint64_t sub_100035A54()
{
  v0 = sub_1000C1C98();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1000C1CD8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10003741C())
  {

    return sub_100036D38();
  }

  else
  {
    (*(v8 + 104))(v10, enum case for Font.TextStyle.title2(_:), v7);
    v12 = enum case for Font.Design.rounded(_:);
    v13 = sub_1000C1C38();
    v14 = *(v13 - 8);
    (*(v14 + 104))(v6, v12, v13);
    (*(v14 + 56))(v6, 0, 1, v13);
    sub_1000C1C78();
    sub_1000084C0(v6, &qword_1000ECC38, &qword_1000C3720);
    (*(v8 + 8))(v10, v7);
    sub_1000C1C48();
    sub_1000C1C88();

    (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
    v15 = sub_1000C1CB8();

    (*(v1 + 8))(v3, v0);
    return v15;
  }
}

double sub_100035D6C()
{
  v31 = sub_1000C2338();
  v1 = *(v31 - 8);
  __chkstk_darwin(v31);
  v32 = (&v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_1000C1938();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAnyListWidget.InteractiveSmall(0);
  v8 = v0 + *(v7 + 20);
  v9 = *v8;
  v10 = *(v8 + 8);
  if (v10 != 1)
  {

    sub_1000C2958();
    v11 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_100048A00(v9, 0);
    (*(v4 + 8))(v6, v3);
    if (v33 == 1)
    {
      goto LABEL_10;
    }

LABEL_5:
    v12 = v0 + *(v7 + 44);
    v13 = *(v12 + 16);
    if (*(v12 + 32) == 1)
    {
      if (*&v13 != 0.0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v28 = v4;
      v29 = v0;
      v22 = *v12;
      v21 = *(v12 + 8);
      v26 = *(v12 + 24);
      v27 = v21;

      sub_1000C2958();
      v23 = sub_1000C1BC8();
      v30 = v1;
      v24 = v23;
      sub_1000C1548();

      v1 = v30;
      sub_1000C1928();
      swift_getAtKeyPath();
      v4 = v28;
      sub_100054C08(v22, v27, v13, v26, 0);
      (*(v4 + 8))(v6, v3);
      if (v34 != 0.0)
      {
LABEL_7:
        if (v10)
        {
          goto LABEL_8;
        }

LABEL_10:

        sub_1000C2958();
        v14 = sub_1000C1BC8();
        sub_1000C1548();

        sub_1000C1928();
        swift_getAtKeyPath();
        sub_100048A00(v9, 0);
        (*(v4 + 8))(v6, v3);
        if (v33 != 1)
        {
          return -5.0;
        }

        goto LABEL_11;
      }
    }

    return 0.0;
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_8:
  if ((v9 & 1) == 0)
  {
    return -5.0;
  }

LABEL_11:
  v15 = v1;
  if (sub_1000451A0())
  {
    v16 = v32;
    sub_10002C764(&qword_1000EDDC0, &qword_1000C5B60, &type metadata accessor for WidgetRenderingMode, v32);
    v17 = sub_10002E38C();
    (*(v15 + 8))(v16, v31);
    if ((v17 & 1) == 0)
    {
      return -5.0;
    }
  }

  v18 = [objc_opt_self() currentDevice];
  v19 = [v18 userInterfaceIdiom];

  result = 0.0;
  if (!v19)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_1000361D4(uint64_t a1)
{
  v2 = sub_100004D04(&qword_1000EEBF8, &qword_1000C6CD8);
  __chkstk_darwin(v2);
  v4 = (&v25 - v3);
  v5 = sub_100004D04(&qword_1000EEC00, &qword_1000C6CE0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = sub_100004D04(&qword_1000EEC08, &qword_1000C6CE8);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for TTRNewWidgetViewModel(0);
  if (*(*(a1 + *(v11 + 76)) + 16))
  {
    *v4 = 3;
    sub_100036658(a1);
    sub_1000082B4(v4, v7, &qword_1000EEBF8, &qword_1000C6CD8);
    swift_storeEnumTagMultiPayload();
    sub_10005AFDC();
    sub_10005B0E4();
    sub_1000C1AE8();
    v12 = v4;
    v13 = &qword_1000EEBF8;
    v14 = &qword_1000C6CD8;
  }

  else
  {
    v15 = *(v11 + 28);
    v16 = type metadata accessor for TTRAnyListWidget.InteractiveNoRemindersView(0);
    v17 = v16[5];
    v18 = sub_1000C0E58();
    (*(*(v18 - 8) + 16))(&v10[v17], a1 + v15, v18);
    *v10 = 0;
    v19 = &v10[v16[6]];
    *v19 = swift_getKeyPath();
    v19[8] = 0;
    v20 = v16[7];
    *&v10[v20] = swift_getKeyPath();
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v22 = sub_100036508();
    v23 = &v10[*(v8 + 36)];
    *v23 = KeyPath;
    v23[1] = v22;
    sub_1000082B4(v10, v7, &qword_1000EEC08, &qword_1000C6CE8);
    swift_storeEnumTagMultiPayload();
    sub_10005AFDC();
    sub_10005B0E4();
    sub_1000C1AE8();
    v12 = v10;
    v13 = &qword_1000EEC08;
    v14 = &qword_1000C6CE8;
  }

  return sub_1000084C0(v12, v13, v14);
}

uint64_t sub_100036508()
{
  v1 = sub_1000C1938();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for TTRAnyListWidget.InteractiveSmall(0) + 32));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_1000C2958();
    v8 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_100036658(uint64_t a1)
{
  v2 = type metadata accessor for TTRAnyListWidget.InteractiveSmall(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = *(a1 + *(type metadata accessor for TTRNewWidgetViewModel(0) + 76));
  if (*(v5 + 16) >= 3uLL)
  {
    v6 = 3;
  }

  else
  {
    v6 = *(v5 + 16);
  }

  v7 = *(type metadata accessor for TTRNewWidgetViewModel.Reminder(0) - 8);
  sub_10005B2F4(v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), 0, (2 * v6) | 1);
  v13[1] = v8;
  swift_getKeyPath();
  sub_100048828(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRAnyListWidget.InteractiveSmall);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_10005BBD0(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for TTRAnyListWidget.InteractiveSmall);
  *(v10 + ((v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10005BAE0;
  *(v11 + 24) = v10;
  sub_100004D04(&qword_1000EEC70, &qword_1000C6D68);
  sub_100004D04(&qword_1000EEC60, &qword_1000C6D08);
  sub_100008478(&qword_1000EEC78, &qword_1000EEC70, &qword_1000C6D68, &protocol conformance descriptor for [A]);
  sub_100008478(&qword_1000EEC58, &qword_1000EEC60, &qword_1000C6D08, &protocol conformance descriptor for TupleView<A>);
  return sub_1000C20D8();
}

uint64_t sub_10003690C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (*(a1 + *(v4 + 44)) == 1 && *(a1 + *(v4 + 40)) == 1)
  {
    v8 = sub_1000C08C8();
    v9 = v5;
    v10._countAndFlagsBits = 45;
    v10._object = 0xE100000000000000;
    sub_1000C26D8(v10);
    v11._countAndFlagsBits = 1702195828;
    v11._object = 0xE400000000000000;
    sub_1000C26D8(v11);
    result = v8;
    v7 = v9;
  }

  else
  {
    result = sub_1000C08C8();
  }

  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_1000369AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a1;
  v38 = a5;
  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRAnyListWidget.InteractiveReminderView(0);
  v12 = (v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  __chkstk_darwin(v18);
  v20 = &v37 - v19;
  sub_100048828(a2, v10, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  v21 = *(*(a3 + *(type metadata accessor for TTRNewWidgetViewModel(0) + 76)) + 16);
  if (v21 == 2)
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  if (v21 == 1)
  {
    v23 = 5;
  }

  else
  {
    v23 = v22;
  }

  v24 = &v17[v12[11]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = &v17[v12[12]];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = &v17[v12[13]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  sub_10005BBD0(v10, v17, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  *&v17[v12[7]] = v23;
  v27 = &v17[v12[8]];
  *v27 = 0;
  v27[8] = 1;
  v17[v12[9]] = 1;
  v28 = &v17[v12[10]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v28[16] = 1;
  result = sub_10005BBD0(v17, v20, type metadata accessor for TTRAnyListWidget.InteractiveReminderView);
  if (__OFSUB__(a4, 1))
  {
    __break(1u);
  }

  else
  {
    if (a4 - 1 <= v37)
    {
      v30 = 0;
      KeyPath = 0;
      v33 = 0;
      v34 = 2;
    }

    else
    {
      v30 = *(a3 + *(type metadata accessor for TTRAnyListWidget.InteractiveSmall(0) + 52));
      v31 = sub_1000C0F78();
      KeyPath = swift_getKeyPath();
      v33 = swift_getKeyPath();
      v34 = v31 & 1;
    }

    sub_100048828(v20, v14, type metadata accessor for TTRAnyListWidget.InteractiveReminderView);
    v35 = v38;
    sub_100048828(v14, v38, type metadata accessor for TTRAnyListWidget.InteractiveReminderView);
    v36 = v35 + *(sub_100004D04(&qword_1000EEC88, &qword_1000C6D78) + 48);
    sub_10005BC38(v30, v34, KeyPath, 0, v33);
    sub_10005BC88(v30, v34, KeyPath, 0, v33);
    *v36 = v30;
    *(v36 + 8) = v34;
    *(v36 + 16) = KeyPath;
    *(v36 + 24) = 0;
    *(v36 + 32) = v33;
    *(v36 + 40) = 0;
    sub_100048940(v20, type metadata accessor for TTRAnyListWidget.InteractiveReminderView);
    sub_10005BC88(v30, v34, KeyPath, 0, v33);
    return sub_100048940(v14, type metadata accessor for TTRAnyListWidget.InteractiveReminderView);
  }

  return result;
}

uint64_t sub_100036D38()
{
  v1 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = sub_1000C1CD8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C1938();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v0 + *(type metadata accessor for TTRAnyListWidget.InteractiveSmall(0) + 20);
  v13 = *v12;
  if (*(v12 + 8) == 1)
  {
    if (v13)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_1000C2958();
    v22 = v8;
    v14 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_100048A00(v13, 0);
    (*(v9 + 8))(v11, v22);
    if (v23)
    {
      goto LABEL_7;
    }
  }

  v15 = sub_100037290();
  if (v16 == 0.0)
  {
    (*(v5 + 104))(v7, enum case for Font.TextStyle.headline(_:), v4, v15);
    v17 = enum case for Font.Design.rounded(_:);
    v18 = sub_1000C1C38();
    v19 = *(v18 - 8);
    (*(v19 + 104))(v3, v17, v18);
    (*(v19 + 56))(v3, 0, 1, v18);
    v20 = sub_1000C1C78();
    sub_1000084C0(v3, &qword_1000ECC38, &qword_1000C3720);
    (*(v5 + 8))(v7, v4);
    return v20;
  }

LABEL_7:
  if (qword_1000EC908 != -1)
  {
    swift_once();
  }

  v20 = qword_1000EDD18;

  return v20;
}

double sub_1000370D4()
{
  v1 = sub_1000C1938();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for TTRAnyListWidget.InteractiveSmall(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = 0.0;
    if ((v6 & 1) == 0)
    {
      return v7;
    }
  }

  else
  {

    sub_1000C2958();
    v8 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_100048A00(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = 0.0;
    if (v10[15] != 1)
    {
      return v7;
    }
  }

  if (sub_100037290() < 7.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = -7.0;
  }

  sub_100037290();
  return v7;
}

double sub_100037290()
{
  v1 = sub_1000C1938();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for TTRAnyListWidget.InteractiveSmall(0) + 44);
  v7 = *v5;
  v6 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (*(v5 + 32) == 1)
  {
    return *v5;
  }

  sub_1000C2958();
  v11 = sub_1000C1BC8();
  sub_1000C1548();

  sub_1000C1928();
  swift_getAtKeyPath();
  sub_100054C08(v7, v6, v9, v8, 0);
  (*(v2 + 8))(v4, v1);
  return v12;
}

BOOL sub_10003741C()
{
  v1 = sub_1000C1938();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for TTRAnyListWidget.InteractiveSmall(0);
  v6 = v0 + *(v5 + 20);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    if (v7)
    {
      return 0;
    }
  }

  else
  {

    sub_1000C2958();
    v9 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_100048A00(v7, 0);
    (*(v2 + 8))(v4, v1);
    if (v17[0])
    {
      return 0;
    }
  }

  v10 = v0 + *(v5 + 44);
  v11 = *(v10 + 16);
  if (*(v10 + 32) == 1)
  {
    v12 = *(v10 + 16);
  }

  else
  {
    v13 = *v10;
    v14 = *(v10 + 8);
    v15 = *(v10 + 24);

    sub_1000C2958();
    v16 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_100054C08(v13, v14, v11, v15, 0);
    (*(v2 + 8))(v4, v1);
    v12 = v18;
  }

  return v12 == 0.0;
}

uint64_t sub_100037660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_1000C20F8();
  a3[1] = v6;
  v7 = a3 + *(sub_100004D04(&qword_1000EECC8, &qword_1000C6E00) + 44);
  *v7 = sub_1000C1978();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = sub_100004D04(&qword_1000EECD0, &qword_1000C6E08);
  return sub_1000376E8(a2, a1, &v7[*(v8 + 44)]);
}

uint64_t sub_1000376E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v63 = a3;
  v69 = sub_100004D04(&qword_1000EE010, &qword_1000C5D80);
  __chkstk_darwin(v69);
  v68 = v55 - v5;
  v67 = sub_100004D04(&qword_1000EECD8, &qword_1000C6E10);
  __chkstk_darwin(v67);
  v7 = v55 - v6;
  v60 = sub_100004D04(&qword_1000EECE0, &qword_1000C6E18);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = v55 - v8;
  v57 = sub_100004D04(&qword_1000EECE8, &qword_1000C6E20);
  __chkstk_darwin(v57);
  v62 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v56 = v55 - v11;
  __chkstk_darwin(v12);
  v61 = v55 - v13;
  v14 = sub_1000C0938();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_100004D04(&qword_1000EECF0, &qword_1000C6E28);
  v18 = *(v64 - 8);
  __chkstk_darwin(v64);
  v20 = v55 - v19;
  v65 = sub_100004D04(&qword_1000EECF8, &qword_1000C6E30);
  __chkstk_darwin(v65);
  v22 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v55 - v24;
  v26 = type metadata accessor for TTRNewWidgetViewModel(0);
  (*(v15 + 16))(v17, a1 + *(v26 + 72), v14);
  v70 = a1;
  v71 = a2;
  sub_100004D04(&qword_1000EED00, &qword_1000C6E38);
  v27 = sub_100005334(&qword_1000EED08, &qword_1000C6E40);
  v28 = sub_10005C1B0();
  v29 = sub_100008478(&qword_1000EE058, &qword_1000EE010, &qword_1000C5D80, &protocol conformance descriptor for PartialRangeThrough<A>);
  *&v72 = v27;
  *(&v72 + 1) = v69;
  *&v73 = v28;
  *(&v73 + 1) = v29;
  v55[1] = v29;
  swift_getOpaqueTypeConformance2();
  sub_1000C1CE8();
  *&v72 = sub_100024038();
  *(&v72 + 1) = v30;
  sub_100008478(&qword_1000EED20, &qword_1000EECF0, &qword_1000C6E28, &protocol conformance descriptor for Link<A>);
  sub_100012814();
  v31 = v64;
  sub_1000C1F08();
  v32 = a1;
  v33 = v22;

  (*(v18 + 8))(v20, v31);
  v34 = v67;
  sub_1000C19E8();
  v35 = v25;
  sub_1000C1718();

  sub_1000084C0(v22, &qword_1000EECF8, &qword_1000C6E30);
  v36 = type metadata accessor for TTRAnyListWidget.InteractiveVerticalContentView(0);
  sub_100048828(v32, &v7[v36[5]], type metadata accessor for TTRNewWidgetViewModel);
  *v7 = 1;
  v37 = v68;
  *&v7[v36[6]] = 4;
  v38 = &v7[v36[7]];
  *v38 = swift_getKeyPath();
  v38[8] = 0;
  *&v7[v36[8]] = 0x4040800000000000;
  sub_1000C1618();
  sub_1000C2108();
  sub_1000C1608();
  v39 = &v7[*(v34 + 36)];
  v40 = v73;
  *v39 = v72;
  v39[1] = v40;
  v39[2] = v74;
  v41 = enum case for DynamicTypeSize.xxxLarge(_:);
  v42 = sub_1000C16C8();
  (*(*(v42 - 8) + 104))(v37, v41, v42);
  sub_100048784(&qword_1000EE078, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_1000C2608();
  if (result)
  {
    sub_10005C2AC(&qword_1000EED28, &qword_1000EECD8, &qword_1000C6E10);
    v44 = v58;
    sub_1000C1EE8();
    sub_1000084C0(v37, &qword_1000EE010, &qword_1000C5D80);
    sub_1000084C0(v7, &qword_1000EECD8, &qword_1000C6E10);
    if (sub_100038280() < 6.0)
    {
      v45 = 0.0;
    }

    else
    {
      v45 = -6.0;
    }

    sub_100038280();
    if (v46 < 6.0)
    {
      v47 = 0.0;
    }

    else
    {
      v47 = -6.0;
    }

    v48 = sub_1000C1BD8();
    v49 = v56;
    (*(v59 + 32))(v56, v44, v60);
    v50 = v49 + *(v57 + 36);
    *v50 = v48;
    *(v50 + 8) = v45;
    *(v50 + 16) = 0;
    *(v50 + 24) = v47;
    *(v50 + 32) = 0;
    *(v50 + 40) = 0;
    v51 = v61;
    sub_10001DA60(v49, v61, &qword_1000EECE8, &qword_1000C6E20);
    sub_1000082B4(v35, v33, &qword_1000EECF8, &qword_1000C6E30);
    v52 = v62;
    sub_1000082B4(v51, v62, &qword_1000EECE8, &qword_1000C6E20);
    v53 = v63;
    sub_1000082B4(v33, v63, &qword_1000EECF8, &qword_1000C6E30);
    v54 = sub_100004D04(&qword_1000EED38, &qword_1000C6E48);
    sub_1000082B4(v52, v53 + *(v54 + 48), &qword_1000EECE8, &qword_1000C6E20);
    sub_1000084C0(v51, &qword_1000EECE8, &qword_1000C6E20);
    sub_1000084C0(v35, &qword_1000EECF8, &qword_1000C6E30);
    sub_1000084C0(v52, &qword_1000EECE8, &qword_1000C6E20);
    return sub_1000084C0(v33, &qword_1000EECF8, &qword_1000C6E30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100037FF8(uint64_t a1)
{
  v2 = sub_100004D04(&qword_1000EE010, &qword_1000C5D80);
  __chkstk_darwin(v2);
  v4 = v13 - v3;
  v5 = sub_100004D04(&qword_1000EED08, &qword_1000C6E40);
  __chkstk_darwin(v5);
  v7 = v13 - v6;
  sub_100048828(a1, v13 - v6, type metadata accessor for TTRNewWidgetViewModel);
  sub_1000C1618();
  sub_1000C2108();
  sub_1000C1608();
  v8 = &v7[*(v5 + 36)];
  v9 = v13[1];
  *v8 = v13[0];
  *(v8 + 1) = v9;
  *(v8 + 2) = v13[2];
  v10 = enum case for DynamicTypeSize.xxLarge(_:);
  v11 = sub_1000C16C8();
  (*(*(v11 - 8) + 104))(v4, v10, v11);
  sub_100048784(&qword_1000EE078, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_1000C2608();
  if (result)
  {
    sub_10005C1B0();
    sub_100008478(&qword_1000EE058, &qword_1000EE010, &qword_1000C5D80, &protocol conformance descriptor for PartialRangeThrough<A>);
    sub_1000C1EE8();
    sub_1000084C0(v4, &qword_1000EE010, &qword_1000C5D80);
    return sub_1000084C0(v7, &qword_1000EED08, &qword_1000C6E40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_100038280()
{
  v1 = sub_1000C1938();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for TTRAnyListWidget.InteractiveMedium(0) + 24);
  v7 = *v5;
  v6 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (*(v5 + 32) == 1)
  {
    return *v5;
  }

  sub_1000C2958();
  v11 = sub_1000C1BC8();
  sub_1000C1548();

  sub_1000C1928();
  swift_getAtKeyPath();
  sub_100054C08(v7, v6, v9, v8, 0);
  (*(v2 + 8))(v4, v1);
  return v12;
}

uint64_t sub_10003840C(uint64_t a1)
{
  v3 = sub_100004D04(&qword_1000ECCE0, &qword_1000C4EF0);
  __chkstk_darwin(v3 - 8);
  v5 = v16 - v4;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  v9 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100048828(v1, v9, type metadata accessor for TTRAnyListWidget.InteractiveMedium);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  sub_10005BBD0(v9, v11 + v10, type metadata accessor for TTRAnyListWidget.InteractiveMedium);
  v16[0] = sub_10005C128;
  v16[1] = v11;
  v12 = *(type metadata accessor for TTRNewWidgetViewModel(0) + 72);
  v13 = sub_1000C0938();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v5, v1 + v12, v13);
  (*(v14 + 56))(v5, 0, 1, v13);
  sub_100004D04(&qword_1000EECB8, &qword_1000C6DF8);
  sub_100008478(&qword_1000EECC0, &qword_1000EECB8, &qword_1000C6DF8, &protocol conformance descriptor for GeometryReader<A>);
  sub_1000C1E38();
  sub_1000084C0(v5, &qword_1000ECCE0, &qword_1000C4EF0);
}

uint64_t sub_100038684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v60 = sub_100004D04(&qword_1000EE010, &qword_1000C5D80);
  __chkstk_darwin(v60);
  v59 = v50 - v3;
  v58 = sub_100004D04(&qword_1000EED60, &qword_1000C6E68);
  __chkstk_darwin(v58);
  v5 = v50 - v4;
  v6 = sub_100004D04(&qword_1000EED68, &qword_1000C6E70);
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v52 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v51 = v50 - v9;
  v10 = sub_1000C0938();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_100004D04(&qword_1000EED70, &qword_1000C6E78);
  v14 = *(v56 - 8);
  __chkstk_darwin(v56);
  v16 = v50 - v15;
  v57 = sub_100004D04(&qword_1000EED78, &qword_1000C6E80);
  __chkstk_darwin(v57);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v50 - v20;
  v22 = type metadata accessor for TTRNewWidgetViewModel(0);
  (*(v11 + 16))(v13, a1 + *(v22 + 72), v10);
  v61 = a1;
  sub_100004D04(&qword_1000EED80, &qword_1000C6E88);
  v23 = type metadata accessor for TTRAnyListWidget.LargeHeaderView(255);
  v24 = sub_100048784(&qword_1000EED88, type metadata accessor for TTRAnyListWidget.LargeHeaderView, &unk_1000C7320);
  v25 = sub_100008478(&qword_1000EE058, &qword_1000EE010, &qword_1000C5D80, &protocol conformance descriptor for PartialRangeThrough<A>);
  v62 = v23;
  v63 = v60;
  v64 = v24;
  v65 = v25;
  v50[1] = v25;
  swift_getOpaqueTypeConformance2();
  sub_1000C1CE8();
  v62 = sub_100024038();
  v63 = v26;
  sub_100008478(&qword_1000EED90, &qword_1000EED70, &qword_1000C6E78, &protocol conformance descriptor for Link<A>);
  sub_100012814();
  v27 = v56;
  sub_1000C1F08();

  (*(v14 + 8))(v16, v27);
  v28 = v59;
  sub_1000C19E8();
  v29 = v21;
  sub_1000C1718();

  v30 = v18;
  sub_1000084C0(v18, &qword_1000EED78, &qword_1000C6E80);
  KeyPath = swift_getKeyPath();
  v32 = type metadata accessor for TTRAnyListWidget.InteractiveVerticalContentView(0);
  sub_100048828(a1, &v5[v32[5]], type metadata accessor for TTRNewWidgetViewModel);
  *v5 = 2;
  *&v5[v32[6]] = 7;
  v33 = &v5[v32[7]];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  *&v5[v32[8]] = 0x4040800000000000;
  v34 = sub_1000C1BD8();
  v35 = &v5[*(v58 + 36)];
  *v35 = v34;
  *(v35 + 1) = 0x4024000000000000;
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  *(v35 + 4) = 0;
  v35[40] = 0;
  v36 = enum case for DynamicTypeSize.xxxLarge(_:);
  v37 = sub_1000C16C8();
  (*(*(v37 - 8) + 104))(v28, v36, v37);
  sub_100048784(&qword_1000EE078, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_1000C2608();
  if (result)
  {
    v57 = KeyPath;
    sub_10005C2AC(&qword_1000EED98, &qword_1000EED60, &qword_1000C6E68);
    v39 = v51;
    sub_1000C1EE8();
    sub_1000084C0(v28, &qword_1000EE010, &qword_1000C5D80);
    sub_1000084C0(v5, &qword_1000EED60, &qword_1000C6E68);
    v40 = v29;
    v41 = v30;
    sub_1000082B4(v29, v30, &qword_1000EED78, &qword_1000C6E80);
    v43 = v52;
    v42 = v53;
    v44 = *(v53 + 16);
    v45 = v54;
    v44(v52, v39, v54);
    v46 = v55;
    sub_1000082B4(v41, v55, &qword_1000EED78, &qword_1000C6E80);
    v47 = sub_100004D04(&qword_1000EEDA0, &qword_1000C6E90);
    v48 = v46 + *(v47 + 48);
    *v48 = v57;
    *(v48 + 8) = 0;
    v44((v46 + *(v47 + 64)), v43, v45);
    v49 = *(v42 + 8);

    v49(v39, v45);
    sub_1000084C0(v40, &qword_1000EED78, &qword_1000C6E80);
    v49(v43, v45);

    return sub_1000084C0(v41, &qword_1000EED78, &qword_1000C6E80);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100038E6C(uint64_t a1)
{
  v2 = sub_100004D04(&qword_1000EE010, &qword_1000C5D80);
  __chkstk_darwin(v2);
  v4 = &v11 - v3;
  v5 = type metadata accessor for TTRAnyListWidget.LargeHeaderView(0);
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100048828(a1, v7, type metadata accessor for TTRNewWidgetViewModel);
  v8 = enum case for DynamicTypeSize.xxLarge(_:);
  v9 = sub_1000C16C8();
  (*(*(v9 - 8) + 104))(v4, v8, v9);
  sub_100048784(&qword_1000EE078, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_1000C2608();
  if (result)
  {
    sub_100048784(&qword_1000EED88, type metadata accessor for TTRAnyListWidget.LargeHeaderView, &unk_1000C7320);
    sub_100008478(&qword_1000EE058, &qword_1000EE010, &qword_1000C5D80, &protocol conformance descriptor for PartialRangeThrough<A>);
    sub_1000C1EE8();
    sub_1000084C0(v4, &qword_1000EE010, &qword_1000C5D80);
    return sub_100048940(v7, type metadata accessor for TTRAnyListWidget.LargeHeaderView);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000390C8()
{
  v1 = sub_100004D04(&qword_1000ECCE0, &qword_1000C4EF0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_100004D04(&qword_1000EED40, &qword_1000C6E50);
  __chkstk_darwin(v4);
  v6 = (&v14 - v5);
  *v6 = sub_1000C20F8();
  v6[1] = v7;
  v8 = v6 + *(sub_100004D04(&qword_1000EED48, &qword_1000C6E58) + 44);
  *v8 = sub_1000C1A48();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = sub_100004D04(&qword_1000EED50, &qword_1000C6E60);
  sub_100038684(v0, &v8[*(v9 + 44)]);
  v10 = *(type metadata accessor for TTRNewWidgetViewModel(0) + 72);
  v11 = sub_1000C0938();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v3, v0 + v10, v11);
  (*(v12 + 56))(v3, 0, 1, v11);
  sub_100008478(&qword_1000EED58, &qword_1000EED40, &qword_1000C6E50, &protocol conformance descriptor for ZStack<A>);
  sub_1000C1E38();
  sub_1000084C0(v3, &qword_1000ECCE0, &qword_1000C4EF0);
  return sub_1000084C0(v6, &qword_1000EED40, &qword_1000C6E50);
}

int *sub_1000392F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for TTRAnyListWidget.InteractiveVerticalContentView(0);
  v4 = *(v3 + 20);
  v5 = *&v1[*(v3 + 24)];
  v14 = v5;
  v6 = &v1[v4];
  result = type metadata accessor for TTRNewWidgetViewModel(0);
  if (*&v6[result[16] + 8] && *&v6[result[17]])
  {
    if (__OFSUB__(v5--, 1))
    {
      __break(1u);
      return result;
    }

    v14 = v5;
  }

  v9 = *(*&v6[result[19]] + 16);
  if (v5 < v9)
  {
    v9 = v5;
  }

  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *a1 = sub_1000C2108();
  a1[1] = v12;
  v13 = sub_100004D04(&qword_1000EF438, &qword_1000C7550);
  sub_1000393F0(v1, v11, &v14, a1 + *(v13 + 44));
}

uint64_t sub_1000393F0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a2;
  v40 = a3;
  v47 = a4;
  v46 = sub_100004D04(&qword_1000EF440, &qword_1000C7558);
  __chkstk_darwin(v46);
  v6 = &v38 - v5;
  v44 = sub_100004D04(&qword_1000EF448, &qword_1000C7560);
  __chkstk_darwin(v44);
  v38 = (&v38 - v7);
  v43 = sub_100004D04(&qword_1000EF450, &qword_1000C7568);
  __chkstk_darwin(v43);
  v42 = &v38 - v8;
  v41 = sub_100004D04(&qword_1000EF458, &qword_1000C7570);
  __chkstk_darwin(v41);
  v10 = &v38 - v9;
  v45 = sub_100004D04(&qword_1000EF460, &qword_1000C7578);
  __chkstk_darwin(v45);
  v12 = &v38 - v11;
  v13 = type metadata accessor for TTRAnyListWidget.InteractiveNoRemindersView(0);
  __chkstk_darwin(v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100004D04(&qword_1000EF468, &qword_1000C7580);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  v19 = type metadata accessor for TTRAnyListWidget.InteractiveVerticalContentView(0);
  v20 = &a1[*(v19 + 20)];
  v21 = type metadata accessor for TTRNewWidgetViewModel(0);
  if (*(*&v20[*(v21 + 76)] + 16))
  {
    v22 = v42;
    v23 = v44;
    v24 = sub_1000C0F78();
    v25 = *&a1[*(v19 + 24)];
    if (v24)
    {
      v27 = v38;
      v26 = v39;
      *v38 = v25;
      sub_100039A2C(a1, (v26 + 16), v40, (v27 + *(v23 + 44)));
      sub_1000082B4(v27, v10, &qword_1000EF448, &qword_1000C7560);
      swift_storeEnumTagMultiPayload();
      sub_100064370();
      sub_10006445C();
      sub_1000C1AE8();
      sub_1000082B4(v12, v22, &qword_1000EF460, &qword_1000C7578);
      swift_storeEnumTagMultiPayload();
      sub_1000642E4();
      sub_100064540();
      sub_1000C1AE8();
      sub_1000084C0(v12, &qword_1000EF460, &qword_1000C7578);
      v28 = v27;
      v29 = &qword_1000EF448;
      v30 = &qword_1000C7560;
    }

    else
    {
      *v6 = v25;
      sub_10003A06C(a1, v39, v40, &v6[*(v46 + 44)]);
      sub_1000082B4(v6, v22, &qword_1000EF440, &qword_1000C7558);
      swift_storeEnumTagMultiPayload();
      sub_1000642E4();
      sub_100064540();
      sub_1000C1AE8();
      v28 = v6;
      v29 = &qword_1000EF440;
      v30 = &qword_1000C7558;
    }
  }

  else
  {
    v31 = *a1;
    v32 = *(v21 + 28);
    v33 = v13[5];
    v34 = sub_1000C0E58();
    (*(*(v34 - 8) + 16))(&v15[v33], &v20[v32], v34);
    *v15 = v31;
    v35 = &v15[v13[6]];
    *v35 = swift_getKeyPath();
    v35[8] = 0;
    v36 = v13[7];
    *&v15[v36] = swift_getKeyPath();
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    swift_storeEnumTagMultiPayload();
    sub_100048784(&qword_1000EEC18, type metadata accessor for TTRAnyListWidget.InteractiveNoRemindersView, &unk_1000C7480);
    sub_1000C1EB8();
    sub_100048940(v15, type metadata accessor for TTRAnyListWidget.InteractiveNoRemindersView);
    sub_1000082B4(v18, v10, &qword_1000EF468, &qword_1000C7580);
    swift_storeEnumTagMultiPayload();
    sub_100064370();
    sub_10006445C();
    sub_1000C1AE8();
    sub_1000082B4(v12, v42, &qword_1000EF460, &qword_1000C7578);
    swift_storeEnumTagMultiPayload();
    sub_1000642E4();
    sub_100064540();
    sub_1000C1AE8();
    sub_1000084C0(v12, &qword_1000EF460, &qword_1000C7578);
    v28 = v18;
    v29 = &qword_1000EF468;
    v30 = &qword_1000C7580;
  }

  return sub_1000084C0(v28, v29, v30);
}

void sub_100039A2C(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v49 = a3;
  v50 = a4;
  v6 = sub_100004D04(&qword_1000EF4C0, &qword_1000C75A0);
  v52 = *(v6 - 8);
  __chkstk_darwin(v6);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v53 = &v46 - v9;
  v10 = sub_1000C1938();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRAnyListWidget.InteractiveVerticalContentView(0);
  v15 = a1 + *(v14 + 20);
  v16 = type metadata accessor for TTRNewWidgetViewModel(0);
  v17 = v16;
  v18 = (v15 + *(v16 + 64));
  v19 = v18[1];
  if (!v19)
  {
    v48 = 0;
LABEL_7:
    v24 = 0;
    KeyPath = 0;
    goto LABEL_10;
  }

  if (!*(v15 + *(v16 + 68)))
  {
    v48 = 0;
    v19 = 0;
    goto LABEL_7;
  }

  v48 = *v18;
  v20 = a1 + *(v14 + 28);
  v21 = *v20;
  v22 = *(v20 + 8);

  if (v22 == 1)
  {
    v23 = *&v21;
  }

  else
  {
    sub_1000489F4(v21, 0);
    LODWORD(v46) = sub_1000C2958();
    v26 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_100048A00(v21, 0);
    (*(v11 + 8))(v13, v10);
    v23 = v55;
  }

  sub_100023E6C(v23);
  v24 = v27;
  KeyPath = swift_getKeyPath();

LABEL_10:
  v28 = *(v15 + *(v17 + 76));
  swift_beginAccess();
  v29 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v30 = *(v28 + 16);
  if (v30 < v29)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v31 = v19;
  v46 = KeyPath;
  v47 = v6;
  v32 = v24;
  if (v30 == v29)
  {
  }

  else
  {
    v33 = *(type metadata accessor for TTRNewWidgetViewModel.Reminder(0) - 8);
    sub_10009A244(v28, v28 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), 0, (2 * v29) | 1);
    v29 = *(v28 + 16);
    v28 = v34;
  }

  if (v29 >= *v49)
  {
    v35 = 1;
  }

  else
  {
    v35 = 2;
  }

  v54 = v28;
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v35;
  sub_100004D04(&qword_1000EF4C8, &qword_1000C75D0);
  type metadata accessor for TTRAnyListWidget.InteractiveReminderView(0);
  sub_100008478(&qword_1000EF4D0, &qword_1000EF4C8, &qword_1000C75D0, &protocol conformance descriptor for [A]);
  sub_100048784(&qword_1000EE080, type metadata accessor for TTRAnyListWidget.InteractiveReminderView, &unk_1000C6188);
  v36 = v53;
  sub_1000C20D8();
  v38 = v51;
  v37 = v52;
  v39 = *(v52 + 16);
  v40 = v47;
  v39(v51, v36, v47);
  v41 = v48;
  v42 = v50;
  *v50 = v48;
  v42[1] = v31;
  v43 = v46;
  v42[2] = v32;
  v42[3] = v43;
  *(v42 + 32) = 0;
  v44 = sub_100004D04(&qword_1000EF4D8, &qword_1000C75D8);
  v39(v42 + *(v44 + 48), v38, v40);
  sub_10006462C(v41, v31, v32, v43);
  sub_10006467C(v41, v31, v32, v43);
  v45 = *(v37 + 8);
  v45(v53, v40);
  v45(v38, v40);
  sub_10006467C(v41, v31, v32, v43);
}

uint64_t sub_100039F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100048828(a1, a3, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  v5 = type metadata accessor for TTRAnyListWidget.InteractiveReminderView(0);
  v6 = a3 + v5[9];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = a3 + v5[10];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = a3 + v5[11];
  result = swift_getKeyPath();
  *v8 = result;
  *(v8 + 8) = 0;
  *(a3 + v5[5]) = a2;
  v10 = a3 + v5[6];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a3 + v5[7]) = 0;
  v11 = a3 + v5[8];
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 1;
  return result;
}

uint64_t sub_10003A06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v62 = a3;
  v59 = a4;
  v6 = type metadata accessor for TTRAnyListWidget.InteractiveVerticalContentView(0);
  v63 = *(v6 - 8);
  __chkstk_darwin(v6);
  v64 = v7;
  v65 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_100004D04(&qword_1000EEC50, &qword_1000C6D00);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v67 = &v55 - v10;
  v11 = sub_1000C1938();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 + *(v6 + 20);
  v16 = type metadata accessor for TTRNewWidgetViewModel(0);
  v17 = v16;
  v18 = (v15 + *(v16 + 64));
  v19 = v18[1];
  v72 = a1;
  if (!v19)
  {
    v66 = 0;
LABEL_7:
    v23 = 0;
    KeyPath = 0;
    v25 = 0;
    v26 = 0;
    v61 = 0;
    v73 = 0;
    v60 = 0;
    goto LABEL_10;
  }

  if (!*(v15 + *(v16 + 68)))
  {
    v66 = 0;
    v19 = 0;
    goto LABEL_7;
  }

  v66 = *v18;
  v20 = a1 + *(v6 + 28);
  v21 = *v20;
  if (*(v20 + 8) == 1)
  {
    v81[0] = *v20;
    v22 = *&v21;
  }

  else
  {

    sub_1000489F4(v21, 0);
    sub_1000C2958();
    v73 = a2;
    v27 = sub_1000C1BC8();
    a2 = v73;
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_100048A00(v21, 0);
    (*(v12 + 8))(v14, v11);
    v22 = *v81;
  }

  sub_100023E6C(v22);
  v23 = v28;
  KeyPath = swift_getKeyPath();
  v25 = swift_getKeyPath();
  v26 = swift_getKeyPath();
  LOBYTE(v75) = 0;
  v83[0] = 0;
  v74 = 0;
  v60 = 0;
  v73 = 0;
  v61 = 0;

  sub_1000489F4(v25, 0);

  sub_100048A00(v25, 0);

LABEL_10:
  v29 = *(v15 + *(v17 + 76));
  result = swift_beginAccess();
  v31 = *(a2 + 16);
  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*(v29 + 16) < v31)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v32 = *(type metadata accessor for TTRNewWidgetViewModel.Reminder(0) - 8);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v57 = v19;
  v71 = v23;
  v34 = 1;
  sub_10005B2F4(v29 + v33, 0, (2 * v31) | 1);
  if (*(v29 + 16) < *v62)
  {
    v34 = 2;
  }

  v81[0] = v35;
  v62 = swift_getKeyPath();
  v36 = v72;
  v72 = v25;
  v37 = v65;
  sub_100048828(v36, v65, type metadata accessor for TTRAnyListWidget.InteractiveVerticalContentView);
  v38 = *(v63 + 80);
  v56 = KeyPath;
  v39 = (v38 + 32) & ~v38;
  v40 = swift_allocObject();
  *(v40 + 16) = v34;
  *(v40 + 24) = a2;
  sub_10005BBD0(v37, v40 + v39, type metadata accessor for TTRAnyListWidget.InteractiveVerticalContentView);
  v41 = swift_allocObject();
  *(v41 + 16) = sub_100064AF0;
  *(v41 + 24) = v40;

  sub_100004D04(&qword_1000EEC70, &qword_1000C6D68);
  v42 = v26;
  v58 = v26;
  sub_100004D04(&qword_1000EEC60, &qword_1000C6D08);
  sub_100008478(&qword_1000EEC78, &qword_1000EEC70, &qword_1000C6D68, &protocol conformance descriptor for [A]);
  sub_100008478(&qword_1000EEC58, &qword_1000EEC60, &qword_1000C6D08, &protocol conformance descriptor for TupleView<A>);
  v43 = v67;
  sub_1000C20D8();
  v44 = v69;
  v45 = *(v69 + 16);
  v46 = v68;
  v47 = v70;
  v45(v68, v43, v70);
  v48 = v66;
  *&v75 = v66;
  *(&v75 + 1) = v19;
  *&v76 = v71;
  *(&v76 + 1) = KeyPath;
  v49 = v59;
  v50 = v60;
  v77 = v60;
  *&v78 = 0;
  *(&v78 + 1) = v72;
  *&v79 = v73;
  *(&v79 + 1) = v42;
  LOBYTE(v42) = v61;
  v80 = v61;
  v59[80] = v61;
  v51 = v78;
  *(v49 + 2) = v77;
  *(v49 + 3) = v51;
  *(v49 + 4) = v79;
  v52 = v76;
  *v49 = v75;
  *(v49 + 1) = v52;
  v53 = sub_100004D04(&qword_1000EF4E8, &qword_1000C7608);
  v45(&v49[*(v53 + 48)], v46, v47);
  sub_1000082B4(&v75, v81, &qword_1000EF4F0, &qword_1000C7610);
  v54 = *(v44 + 8);
  v54(v43, v47);
  v54(v46, v47);
  v81[0] = v48;
  v81[1] = v57;
  v81[2] = v71;
  v81[3] = v56;
  v81[4] = v50;
  v81[5] = 0;
  v81[6] = 0;
  v81[7] = v72;
  v81[8] = v73;
  v81[9] = v58;
  v82 = v42;
  return sub_1000084C0(v81, &qword_1000EF4F0, &qword_1000C7610);
}

uint64_t sub_10003A8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = type metadata accessor for TTRAnyListWidget.InteractiveReminderView(0);
  v14 = (v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  sub_100048828(a2, &v35 - v18, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  v20 = &v19[v14[11]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &v19[v14[12]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v19[v14[13]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  *&v19[v14[7]] = a3;
  v23 = &v19[v14[8]];
  *v23 = 0;
  v23[8] = 1;
  v19[v14[9]] = 0;
  v24 = &v19[v14[10]];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  result = swift_beginAccess();
  v26 = *(a4 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    if (v28 <= a1)
    {
      v29 = 0;
      KeyPath = 0;
      v32 = 0;
      v33 = 2;
    }

    else
    {
      v29 = *(a5 + *(type metadata accessor for TTRAnyListWidget.InteractiveVerticalContentView(0) + 32));
      v30 = sub_1000C0F78();
      KeyPath = swift_getKeyPath();
      v32 = swift_getKeyPath();
      v33 = v30 & 1;
    }

    sub_100048828(v19, v16, type metadata accessor for TTRAnyListWidget.InteractiveReminderView);
    sub_100048828(v16, a6, type metadata accessor for TTRAnyListWidget.InteractiveReminderView);
    v34 = a6 + *(sub_100004D04(&qword_1000EEC88, &qword_1000C6D78) + 48);
    sub_10005BC38(v29, v33, KeyPath, 0, v32);
    sub_10005BC88(v29, v33, KeyPath, 0, v32);
    *v34 = v29;
    *(v34 + 8) = v33;
    *(v34 + 16) = KeyPath;
    *(v34 + 24) = 0;
    *(v34 + 32) = v32;
    *(v34 + 40) = 0;
    sub_100048940(v19, type metadata accessor for TTRAnyListWidget.InteractiveReminderView);
    sub_10005BC88(v29, v33, KeyPath, 0, v32);
    return sub_100048940(v16, type metadata accessor for TTRAnyListWidget.InteractiveReminderView);
  }

  return result;
}

id sub_10003ABC4@<X0>(uint64_t a1@<X8>)
{
  v200 = a1;
  v2 = sub_1000C1938();
  v194 = *(v2 - 8);
  __chkstk_darwin(v2);
  v193 = &v169 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_100004D04(&qword_1000EE320, &qword_1000C6388);
  __chkstk_darwin(v198);
  v199 = (&v169 - v4);
  v5 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
  __chkstk_darwin(v5 - 8);
  v190 = &v169 - v6;
  v195 = sub_1000C0CB8();
  v203 = *(v195 - 8);
  __chkstk_darwin(v195);
  v8 = &v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v189 = &v169 - v10;
  v188 = sub_1000C1B58();
  v187 = *(v188 - 1);
  __chkstk_darwin(v188);
  v186 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRAnyListWidget.ReminderToggleStyle(0);
  __chkstk_darwin(v12);
  v14 = &v169 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_100004D04(&qword_1000ED610, &qword_1000C6390);
  v180 = *(v181 - 8);
  __chkstk_darwin(v181);
  v16 = &v169 - v15;
  v178 = sub_100004D04(&qword_1000EE328, &qword_1000C6398);
  __chkstk_darwin(v178);
  v179 = &v169 - v17;
  v184 = sub_100004D04(&qword_1000EE330, &qword_1000C63A0);
  __chkstk_darwin(v184);
  v182 = &v169 - v18;
  v202 = sub_100004D04(&qword_1000EE338, &qword_1000C63A8);
  v185 = *(v202 - 8);
  __chkstk_darwin(v202);
  v183 = &v169 - v19;
  v20 = sub_100004D04(&qword_1000EE340, &qword_1000C63B0);
  v191 = *(v20 - 8);
  __chkstk_darwin(v20);
  v201 = &v169 - v21;
  v197 = sub_100004D04(&qword_1000EE348, &qword_1000C63B8);
  __chkstk_darwin(v197);
  v192 = &v169 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v169 - v24;
  __chkstk_darwin(v26);
  v28 = &v169 - v27;
  __chkstk_darwin(v29);
  v31 = &v169 - v30;
  v32 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v33 = *(v1 + *(v32 + 32));
  v196 = v1;
  if (v33)
  {
    v172 = v20;
    v169 = v8;
    v173 = v25;
    v174 = v28;
    v176 = v31;
    v177 = v32;
    v34 = *(v1 + *(v32 + 40));
    v35 = *v1;
    v36 = v33;
    v194 = v35;
    v37 = [v35 string];
    v38 = sub_1000C2678();
    v40 = v39;

    v175 = v36;
    *&aBlock = sub_1000BB438(v36, v38, v40, v34 ^ 1u);
    *(&aBlock + 1) = v41;
    *&v210 = v42;
    sub_10001C6DC();
    LODWORD(v193) = v34;
    sub_1000C20C8();
    v43 = type metadata accessor for TTRAnyListWidget.InteractiveReminderView(0);
    v44 = v1 + v43[6];
    v45 = *v44;
    v46 = v44[8];
    sub_1000C2108();
    v171 = v45;
    v170 = v46;
    sub_1000C1788();
    v47 = v179;
    (*(v180 + 32))(v179, v16, v181);
    v48 = (v47 + *(v178 + 36));
    v49 = v214;
    v50 = v215;
    v48[4] = v213;
    v48[5] = v49;
    v48[6] = v50;
    v51 = v210;
    *v48 = aBlock;
    v48[1] = v51;
    v52 = v212;
    v48[2] = v211;
    v48[3] = v52;
    LOBYTE(v37) = sub_1000C1C08();
    v53 = sub_1000C1C18();
    sub_1000C1C18();
    if (sub_1000C1C18() != v37)
    {
      v53 = sub_1000C1C18();
    }

    sub_1000C15A8();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = v182;
    sub_10001DA60(v47, v182, &qword_1000EE328, &qword_1000C6398);
    v63 = v184;
    v64 = v62 + *(v184 + 36);
    *v64 = v53;
    *(v64 + 8) = v55;
    *(v64 + 16) = v57;
    *(v64 + 24) = v59;
    *(v64 + 32) = v61;
    *(v64 + 40) = 0;
    v65 = v196;
    v66 = *(v196 + v43[5]);
    v67 = v43[8];
    v68 = *(v196 + v43[7]);
    v69 = *(v196 + v67);
    v70 = *(v196 + v67 + 8);
    v71 = *(v196 + v67 + 16);
    sub_100048828(v196, v14, type metadata accessor for TTRNewWidgetViewModel.Reminder);
    *&v14[v12[5]] = v66;
    v72 = &v14[v12[6]];
    *v72 = v171;
    v72[8] = v170;
    v14[v12[7]] = v68;
    v73 = &v14[v12[8]];
    *v73 = v69;
    *(v73 + 1) = v70;
    v73[16] = v71;
    v74 = &v14[v12[9]];
    *v74 = swift_getKeyPath();
    v74[8] = 0;
    v75 = &v14[v12[10]];
    *v75 = swift_getKeyPath();
    v75[8] = 0;
    v76 = &v14[v12[11]];
    *v76 = swift_getKeyPath();
    v76[8] = 0;
    v77 = &v14[v12[12]];
    *v77 = swift_getKeyPath();
    v77[8] = 0;
    v78 = v12[13];
    *&v14[v78] = swift_getKeyPath();
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    swift_storeEnumTagMultiPayload();
    v79 = sub_10004BA38();
    v80 = sub_100048784(&qword_1000EE368, type metadata accessor for TTRAnyListWidget.ReminderToggleStyle, &unk_1000C65E8);
    v81 = v183;
    sub_1000C1E98();
    sub_100048940(v14, type metadata accessor for TTRAnyListWidget.ReminderToggleStyle);
    sub_1000084C0(v62, &qword_1000EE330, &qword_1000C63A0);
    v82 = v186;
    sub_1000C1B48();
    *&v206 = v63;
    *(&v206 + 1) = v12;
    v207 = v79;
    v208 = v80;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v84 = v202;
    v184 = OpaqueTypeConformance2;
    sub_1000C1F28();
    (*(v187 + 8))(v82, v188);
    (*(v185 + 8))(v81, v84);
    sub_100004D04(&qword_1000EE378, &qword_1000C6420);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_1000C5A40;
    v86 = [v194 string];
    v87 = sub_1000C2678();
    v89 = v88;

    *(v85 + 32) = v87;
    *(v85 + 40) = v89;
    v90 = v203;
    v91 = *(v203 + 104);
    v92 = &enum case for TTRAccesibility.RemindersList.Attribute.completed(_:);
    if (!v193)
    {
      v92 = &enum case for TTRAccesibility.RemindersList.Attribute.incomplete(_:);
    }

    v93 = *v92;
    v94 = v189;
    v95 = v195;
    v188 = *(v203 + 104);
    v91(v189, v93, v195);
    v96 = sub_1000C0CA8();
    v98 = v97;
    v99 = *(v90 + 8);
    v203 = v90 + 8;
    v99(v94, v95);
    *(v85 + 48) = v96;
    *(v85 + 56) = v98;
    v100 = v177;
    v101 = v190;
    sub_1000082B4(v65 + *(v177 + 24), v190, &qword_1000ECE78, &unk_1000C3810);
    v102 = sub_1000C0818();
    v103 = *(v102 - 8);
    if ((*(v103 + 48))(v101, 1, v102) == 1)
    {
      sub_1000084C0(v101, &qword_1000ECE78, &unk_1000C3810);
      v104 = *(v65 + *(v100 + 36));
      if (v104 < 1)
      {
        v106 = 0;
        v108 = 0;
      }

      else
      {
        v105 = sub_100012888(v104);
        v100 = v177;
        v106 = v105;
        v108 = v107;
      }
    }

    else
    {
      v106 = sub_1000C07F8();
      v108 = v147;
      (*(v103 + 8))(v101, v102);
    }

    *(v85 + 64) = v106;
    *(v85 + 72) = v108;
    if (*(v65 + *(v100 + 44)) == 1)
    {
      v148 = v169;
      v149 = v195;
      (v188)(v169, enum case for TTRAccesibility.RemindersList.Attribute.recurring(_:), v195);
      v150 = sub_1000C0CA8();
      v152 = v151;
      v99(v148, v149);
    }

    else
    {
      v150 = 0;
      v152 = 0;
    }

    v153 = v172;
    *(v85 + 80) = v150;
    *(v85 + 88) = v152;
    *&v206 = v85;
    sub_100004D04(&qword_1000EE380, &qword_1000C6428);
    sub_100008478(&qword_1000EE388, &qword_1000EE380, &qword_1000C6428, &protocol conformance descriptor for [A]);
    v154 = sub_1000C2738();

    *&v206 = v154;
    sub_1000C0CD8();
    sub_100004D04(&qword_1000EDCF8, &unk_1000C6430);
    sub_100008478(&qword_1000EDD00, &qword_1000EDCF8, &unk_1000C6430, &protocol conformance descriptor for [A]);
    v155 = sub_1000C25B8();
    v157 = v156;

    *&v206 = v155;
    *(&v206 + 1) = v157;
    v204 = v202;
    v205 = v184;
    swift_getOpaqueTypeConformance2();
    sub_100012814();
    v158 = v192;
    v159 = v201;
    sub_1000C1F08();

    (*(v191 + 8))(v159, v153);
    sub_1000C19E8();
    v160 = v173;
    sub_1000C1718();

    sub_1000084C0(v158, &qword_1000EE348, &qword_1000C63B8);
    *&v206 = sub_1000C0C98();
    *(&v206 + 1) = v161;
    v162 = v174;
    sub_1000C1708();

    sub_1000084C0(v160, &qword_1000EE348, &qword_1000C63B8);
    sub_100004D04(&qword_1000ED9A8, &unk_1000C5770);
    v163 = swift_allocObject();
    *(v163 + 16) = xmmword_1000C3590;
    v164 = [v194 string];
    v165 = sub_1000C2678();
    v167 = v166;

    *(v163 + 32) = v165;
    *(v163 + 40) = v167;
    v168 = v176;
    sub_1000C1728();

    sub_1000084C0(v162, &qword_1000EE348, &qword_1000C63B8);
    sub_1000082B4(v168, v199, &qword_1000EE348, &qword_1000C63B8);
    swift_storeEnumTagMultiPayload();
    sub_100004D04(&qword_1000ED620, &qword_1000C63C0);
    sub_10004B8AC();
    sub_10001C624();
    sub_1000C1AE8();

    return sub_1000084C0(v168, &qword_1000EE348, &qword_1000C63B8);
  }

  v109 = *v1;
  v110 = type metadata accessor for TTRAnyListWidget.InteractiveReminderView(0);
  v111 = v1 + *(v110 + 40);
  v112 = *v111;
  v113 = v111[8];

  v114 = v194;
  v115 = v193;
  if ((v113 & 1) == 0)
  {
    sub_1000C2958();
    v116 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();

    (v114)[1](v115, v2);
    v112 = aBlock;
  }

  v203 = v110;
  v117 = v1 + *(v110 + 44);
  v118 = *v117;
  v119 = v117[8];

  if ((v119 & 1) == 0)
  {
    sub_1000C2958();
    v120 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();

    (v114)[1](v115, v2);
    v118 = aBlock;
  }

  v202 = v2;
  result = [v109 string];
  if (!result)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v122 = result;
  v206 = xmmword_1000C35A0;
  LOBYTE(v207) = 0;
  v208 = _swiftEmptyArrayStorage;
  v123 = [objc_opt_self() attributeName];
  v124 = [v109 length];
  v125 = swift_allocObject();
  v125[2] = &v206;
  v125[3] = v122;
  v125[4] = v112;
  v125[5] = v118;
  v126 = swift_allocObject();
  *(v126 + 16) = sub_1000083E4;
  *(v126 + 24) = v125;
  *&v211 = sub_10004B86C;
  *(&v211 + 1) = v126;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v210 = sub_100045698;
  *(&v210 + 1) = &unk_1000E8560;
  v127 = v109;
  v128 = _Block_copy(&aBlock);

  v129 = v122;

  [v127 enumerateAttribute:v123 inRange:0 options:v124 usingBlock:{0, v128}];

  _Block_release(v128);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_25;
  }

  v131 = v206;
  v132 = v207;

  v133 = v196;
  v134 = *(v196 + *(v203 + 36) + 8);

  if ((v134 & 1) == 0)
  {
    sub_1000C2958();
    v135 = sub_1000C1BC8();
    sub_1000C1548();

    v136 = v193;
    sub_1000C1928();
    swift_getAtKeyPath();

    (*(v194 + 1))(v136, v202);
  }

  v137 = sub_1000C1DA8();
  v139 = v138;
  v141 = v140;
  v143 = v142;

  sub_10000537C(v131, *(&v131 + 1), v132);

  v144 = *(v133 + *(v203 + 20));
  KeyPath = swift_getKeyPath();
  v146 = v199;
  *v199 = v137;
  v146[1] = v139;
  *(v146 + 16) = v141 & 1;
  v146[3] = v143;
  v146[4] = KeyPath;
  v146[5] = v144;
  *(v146 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  sub_100004D04(&qword_1000ED620, &qword_1000C63C0);
  sub_10004B8AC();
  sub_10001C624();
  return sub_1000C1AE8();
}

unint64_t sub_10003C298()
{
  result = qword_1000EDD78;
  if (!qword_1000EDD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDD78);
  }

  return result;
}

void sub_10003C330(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, void (**a7)(char *), CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  v51 = a7;
  v52 = a5;
  v54 = a6;
  v55 = a1;
  v56 = a2;
  v17 = sub_1000C1648();
  v50 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100004D04(&qword_1000EF5C8, &qword_1000C76B0);
  __chkstk_darwin(v20 - 8);
  v53 = &v47 - v21;
  v22 = sub_1000C1668();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100004D04(&qword_1000EF5D0, &qword_1000C76B8);
  __chkstk_darwin(v26 - 8);
  v28 = &v47 - v27;
  v29 = sub_100004D04(&qword_1000EF5D8, &qword_1000C76C0);
  __chkstk_darwin(v29);
  v31 = &v47 - v30;
  v32 = 0.0;
  if ((a4 & 1) != 0 || *&a3 == INFINITY)
  {
    v33 = v54;
  }

  else
  {
    v33 = v54;
    v46 = *(v54 + 8);
    if (v46 < *&a3)
    {
      if (__OFSUB__(v51, 1))
      {
        goto LABEL_16;
      }

      v32 = (*&a3 - v46) / ((v51 - 1) + (v51 - 1));
    }
  }

  LOBYTE(v57[0]) = v56 & 1;
  v58 = a4 & 1;
  v34 = a3;
  v35 = v52;
  v36 = sub_100065040(v55, v56 & 1, v34, a4 & 1, v52, v33, v32);
  v59.origin.x = a8;
  v59.origin.y = a9;
  v59.size.width = a10;
  v59.size.height = a11;
  MinY = CGRectGetMinY(v59);
  (*(v23 + 16))(v28, v35, v22);
  (*(v23 + 32))(v25, v28, v22);
  sub_100048784(&qword_1000EF5E0, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  sub_1000C2728();
  v47 = v29;
  v38 = &v31[*(v29 + 52)];
  v54 = v36;
  *v38 = v36;
  v38[1] = 0;
  v52 = v38;
  v39 = *(sub_100004D04(&qword_1000EF5E8, &qword_1000C76C8) + 36);
  sub_100048784(&qword_1000EF5F0, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  sub_1000C28D8();
  if (*&v31[v39] == v57[0])
  {
LABEL_11:
    v31[*(v47 + 56)] = 1;
    sub_1000084C0(v31, &qword_1000EF5D8, &qword_1000C76C0);
    return;
  }

  v40 = 0;
  v51 = (v50 + 2);
  v49 = v54 + 32;
  v48 = (v50 + 4);
  ++v50;
  while (1)
  {
    v41 = sub_1000C28F8();
    (*v51)(v19);
    v41(v57, 0);
    v42 = v22;
    sub_1000C28E8();
    v43 = *(v54 + 16);
    if (v40 == v43)
    {
      (*v50)(v19, v17);
      goto LABEL_11;
    }

    if (v40 >= v43)
    {
      break;
    }

    v44 = *(v49 + 8 * v40);
    v45 = v53;
    v52[1] = v40 + 1;
    (*v48)(v45, v19, v17);
    v60.origin.x = a8;
    v60.origin.y = a9;
    v60.size.width = a10;
    v60.size.height = a11;
    CGRectGetMinX(v60);
    sub_1000C2148();
    LOBYTE(v57[0]) = v56 & 1;
    v58 = 0;
    sub_1000C1638();
    (*v50)(v45, v17);
    MinY = MinY + v32 + v44;
    v22 = v42;
    sub_1000C28D8();
    ++v40;
    if (*&v31[v39] == v57[0])
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

double sub_10003C910(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v2 = sub_1000C1648();
  v27 = *(v2 - 8);
  __chkstk_darwin(v2);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v24 = &v22 - v5;
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v9 = sub_1000C1668();
  sub_100048784(&qword_1000EF5F0, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  sub_1000C2898();
  sub_1000C28D8();
  v25 = v9;
  v10 = sub_1000C28C8();
  v11 = 0.0;
  if (v10 >= 1)
  {
    v12 = v10;
    v13 = 0;
    v14 = (v27 + 8);
    do
    {
      if (__OFADD__(v13, 2))
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13 + 2;
      }

      sub_1000C1678();
      v29[0] = 0;
      v28[0] = 1;
      sub_1000C1628();
      v17 = v16;
      (*v14)(v8, v2);
      if (v11 < v17)
      {
        v11 = v17;
      }

      v13 = v15;
    }

    while (v15 < v12);
  }

  sub_1000C2898();
  sub_1000C28D8();
  if (sub_1000C28C8() > 1)
  {
    v18 = v23;
    sub_1000C1678();
    v19 = v27;
    v20 = v24;
    (*(v27 + 32))(v24, v18, v2);
    v29[0] = 0;
    v28[0] = 1;
    sub_1000C1628();
    (*(v19 + 8))(v20, v2);
  }

  return v11;
}

uint64_t (*sub_10003CD20(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000C1588();
  return sub_10003CDA8;
}

void sub_10003CDB0(uint64_t a1, int a2, uint64_t a3, char a4, void *a5, double *a6, uint64_t *a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  v52 = a7;
  v60 = a6;
  v54 = a5;
  v59 = a2;
  v58 = a1;
  v56 = a10;
  v57 = a11;
  v55 = a9;
  v14 = sub_1000C1648();
  v47 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100004D04(&qword_1000EF5C8, &qword_1000C76B0);
  __chkstk_darwin(v17 - 8);
  v53 = &v47 - v18;
  v19 = sub_1000C1668();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100004D04(&qword_1000EF5D0, &qword_1000C76B8);
  __chkstk_darwin(v23 - 8);
  v25 = &v47 - v24;
  v26 = sub_100004D04(&qword_1000EF5D8, &qword_1000C76C0);
  __chkstk_darwin(v26);
  v28 = &v47 - v27;
  v29 = 0.0;
  if ((a4 & 1) == 0 && *&a3 != INFINITY)
  {
    v30 = v60[1];
    if (v30 < *&a3)
    {
      if (__OFSUB__(v52, 1))
      {
        goto LABEL_15;
      }

      v29 = (*&a3 - v30) / (v52 - 1);
    }
  }

  LOBYTE(v61[0]) = v59 & 1;
  v62 = a4 & 1;
  v31 = a3;
  v32 = v54;
  v33 = sub_1000670E4(v58, v59 & 1, v31, a4 & 1, v54, v29);
  v63.origin.x = a8;
  v63.origin.y = v55;
  v63.size.width = v56;
  v63.size.height = v57;
  MinY = CGRectGetMinY(v63);
  (*(v20 + 16))(v25, v32, v19);
  (*(v20 + 32))(v22, v25, v19);
  sub_100048784(&qword_1000EF5E0, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  sub_1000C2728();
  v48 = v26;
  v35 = &v28[*(v26 + 52)];
  v54 = v33;
  *v35 = v33;
  v35[1] = 0;
  v52 = v35;
  v36 = *(sub_100004D04(&qword_1000EF5E8, &qword_1000C76C8) + 36);
  sub_100048784(&qword_1000EF5F0, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  sub_1000C28D8();
  if (*&v28[v36] == v61[0])
  {
LABEL_13:
    v28[*(v48 + 56)] = 1;
    sub_1000084C0(v28, &qword_1000EF5D8, &qword_1000C76C0);
    return;
  }

  v37 = 0;
  v51 = (v47 + 16);
  v50 = v54 + 4;
  v49 = (v47 + 32);
  v38 = (v47 + 8);
  while (1)
  {
    v39 = sub_1000C28F8();
    (*v51)(v16);
    v39(v61, 0);
    sub_1000C28E8();
    v40 = v54[2];
    if (v37 == v40)
    {
      (*v38)(v16, v14);
      goto LABEL_13;
    }

    if (v37 >= v40)
    {
      break;
    }

    v41 = v19;
    v42 = v16;
    v43 = v37 + 1;
    v44 = *&v50[v37];
    v52[1] = v37 + 1;
    v45 = v53;
    (*v49)(v53, v42, v14);
    v46 = (*v60 - v44) * 0.5;
    v64.origin.x = a8;
    v64.origin.y = v55;
    v64.size.width = v56;
    v64.size.height = v57;
    CGRectGetMinX(v64);
    sub_1000C2148();
    LOBYTE(v61[0]) = v59 & 1;
    v62 = 0;
    sub_1000C1638();
    (*v38)(v45, v14);
    MinY = MinY + v29 + v44 + v46;
    sub_1000C28D8();
    v37 = v43;
    v16 = v42;
    v19 = v41;
    if (*&v28[v36] == v61[0])
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}