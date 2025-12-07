uint64_t sub_100056218()
{
  swift_errorRetain();
  v1 = sub_10056DF68();
  v2 = sub_100573428();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Using placeholder: error getting stations %{public}@", v3, 0xCu);
    sub_10001036C(v4, &qword_1006DFD00, &qword_10057E570);
  }

  if (qword_1006DF9A0 != -1)
  {
    swift_once();
  }

  v17 = unk_1006FC1D0;
  v18 = qword_1006FC1C8;
  if (qword_1006DF9B8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 16);
  v7 = type metadata accessor for WidgetMusicItem(0);
  v8 = sub_10000C49C(v7, qword_1006FC1D8);
  v9 = sub_100572D98();
  *(v9 + 16) = 6;
  v10 = *(v7 - 8);
  v11 = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  sub_1000584C0(v8, v11, type metadata accessor for WidgetMusicItem);
  v12 = *(v10 + 72);
  sub_1000584C0(v8, v11 + v12, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v8, v11 + 2 * v12, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v8, v11 + 3 * v12, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v8, v11 + 4 * v12, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v8, v11 + 5 * v12, type metadata accessor for WidgetMusicItem);
  v13 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  (*(v10 + 56))(v6 + v13[7], 1, 1, v7);

  sub_10056CA98();

  *(v6 + v13[5]) = v9;
  *(v6 + v13[6]) = 3;
  *(v6 + v13[8]) = 0;
  v14 = (v6 + v13[9]);
  *v14 = v18;
  v14[1] = v17;
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100056570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_10056CAA8();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();
  v9 = sub_100572578();
  v7[10] = v9;
  v7[11] = *(v9 - 8);
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v10 = sub_100009DCC(&qword_1006E28A0, &qword_10057EF80);
  v7[14] = v10;
  v7[15] = *(v10 - 8);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = sub_100009DCC(&qword_1006E0520, &unk_100581DC0);
  v7[22] = swift_task_alloc();
  v7[23] = sub_100009DCC(&qword_1006E0510, &qword_10057C360);
  v7[24] = swift_task_alloc();
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  v7[25] = swift_task_alloc();
  v11 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  v7[26] = v11;
  v7[27] = *(v11 - 8);
  v7[28] = swift_task_alloc();
  v12 = sub_1005725D8();
  v7[29] = v12;
  v7[30] = *(v12 - 8);
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000568B4, 0, 0);
}

uint64_t sub_1000568B4()
{
  v21 = v0;
  v1 = *(v0[30] + 16);
  v1(v0[32], v0[3], v0[29]);
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[32];
  if (v4)
  {
    v6 = v0[30];
    v7 = v0[31];
    v8 = v0[29];
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v9 = 136446210;
    v1(v7, v5, v8);
    v10 = sub_100572978();
    v12 = v11;
    (*(v6 + 8))(v5, v8);
    v13 = sub_10008190C(v10, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Generating timeline in %{public}s", v9, 0xCu);
    sub_100010474(v19);
  }

  else
  {
    v14 = v0[29];
    v15 = v0[30];

    (*(v15 + 8))(v5, v14);
  }

  v16 = swift_task_alloc();
  v0[33] = v16;
  *v16 = v0;
  v16[1] = sub_100056ABC;
  v17 = v0[28];

  return sub_10005588C(v17);
}

uint64_t sub_100056ABC()
{

  return _swift_task_switch(sub_100056BB8, 0, 0);
}

uint64_t sub_100056BB8()
{
  v47 = v0;
  if (sub_100054A44())
  {
    v1 = *(v0 + 216);
    v40 = *(v0 + 224);
    v41 = *(v0 + 136);
    v44 = *(v0 + 128);
    v2 = *(v0 + 120);
    v42 = *(v0 + 112);
    v3 = *(v0 + 96);
    v4 = *(v0 + 88);
    v38 = *(v0 + 80);
    v39 = *(v0 + 104);
    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    sub_10056CA68();
    sub_10056C9D8();
    v9 = *(v7 + 8);
    v9(v5, v8);
    sub_100572558();
    v9(v6, v8);
    sub_100009DCC(&qword_1006E28A8, &unk_10057EF90);
    v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10057B510;
    sub_1000584C0(v40, v11 + v10, type metadata accessor for RadioWidgetTimelineProvider.Entry);
    (*(v4 + 16))(v39, v3, v38);
    sub_100058478(&qword_1006E2898, type metadata accessor for RadioWidgetTimelineProvider.Entry, &unk_10057EECC);
    sub_100572638();
    v12 = *(v2 + 16);
    v12(v44, v41, v42);
    v13 = sub_10056DF68();
    v14 = sub_100573448();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 144);
      v16 = *(v0 + 120);
      v17 = *(v0 + 128);
      v18 = *(v0 + 112);
      v19 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = v45;
      *v19 = 136446210;
      v43 = v14;
      v20 = v17;
      v12(v15, v17, v18);
      v21 = sub_100572978();
      v23 = v22;
      v24 = *(v16 + 8);
      v24(v20, v18);
      v25 = sub_10008190C(v21, v23, &v46);

      *(v19 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v13, v43, "Timeline for placeholder using %{public}s", v19, 0xCu);
      sub_100010474(v45);
    }

    else
    {
      v29 = *(v0 + 120);
      v28 = *(v0 + 128);
      v30 = *(v0 + 112);

      v24 = *(v29 + 8);
      v24(v28, v30);
    }

    v31 = *(v0 + 136);
    v32 = *(v0 + 112);
    v34 = *(v0 + 88);
    v33 = *(v0 + 96);
    v35 = *(v0 + 80);
    (*(v0 + 32))(v31);
    v24(v31, v32);
    (*(v34 + 8))(v33, v35);
    sub_100034768(*(v0 + 224), type metadata accessor for RadioWidgetTimelineProvider.Entry);

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    if (qword_1006DF8D0 != -1)
    {
      swift_once();
    }

    v26 = qword_1006FC040;
    *(v0 + 272) = qword_1006FC040;
    v27 = swift_task_alloc();
    *(v0 + 280) = v27;
    *v27 = v0;
    v27[1] = sub_100057110;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 288, 0, 0, 0x7453726579616C70, 0xEB00000000657461, sub_1000155C4, v26, &type metadata for NowPlayingDataProvider.PlayerState);
  }
}

uint64_t sub_100057110()
{

  return _swift_task_switch(sub_10005720C, 0, 0);
}

uint64_t sub_10005720C()
{
  v46 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 168);
  v42 = *(v0 + 288);
  sub_10000CC8C(*(v1 + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentContainer, v2, &qword_1006E0510, &qword_10057C360);
  sub_10006F60C(*(v2 + *(v5 + 44)), *(v2 + *(v5 + 44) + 8), v3);
  sub_10001036C(v2, &qword_1006E0510, &qword_10057C360);
  sub_10000CC8C(*(v1 + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__codableCurrentContainerBackground, v4, &qword_1006E0520, &unk_100581DC0);
  v7 = sub_10006FEA0(*(v4 + *(v6 + 44)), *(v4 + *(v6 + 44) + 8));
  sub_10001036C(v4, &qword_1006E0520, &unk_100581DC0);
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v8 = v7;
  }

  v10 = *(v0 + 216);
  v11 = *(v0 + 224);
  v13 = *(v0 + 200);
  v12 = *(v0 + 208);
  v14 = *(v0 + 160);
  v15 = *(v0 + 120);
  v40 = *(v0 + 112);
  v41 = *(v0 + 152);
  sub_100019990(v7);
  *(v11 + v12[6]) = v42;
  sub_1000199A0(v13, v11 + v12[7]);
  v16 = v12[8];

  *(v11 + v16) = v8;
  sub_100009DCC(&qword_1006E28A8, &unk_10057EF90);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10057B510;
  sub_1000584C0(v11, v18 + v17, type metadata accessor for RadioWidgetTimelineProvider.Entry);
  sub_100572568();
  sub_100058478(&qword_1006E2898, type metadata accessor for RadioWidgetTimelineProvider.Entry, &unk_10057EECC);
  sub_100572638();
  v19 = *(v15 + 16);
  v19(v41, v14, v40);
  v20 = sub_10056DF68();
  v21 = sub_100573448();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 152);
  if (v22)
  {
    v24 = *(v0 + 144);
    v44 = v21;
    v26 = *(v0 + 112);
    v25 = *(v0 + 120);
    v27 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45 = v43;
    *v27 = 136446210;
    v19(v24, v23, v26);
    v28 = sub_100572978();
    v30 = v29;
    v31 = *(v25 + 8);
    v31(v23, v26);
    v32 = sub_10008190C(v28, v30, &v45);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v20, v44, "Timeline using %{public}s", v27, 0xCu);
    sub_100010474(v43);
  }

  else
  {
    v33 = *(v0 + 112);
    v34 = *(v0 + 120);

    v31 = *(v34 + 8);
    v31(v23, v33);
  }

  v35 = *(v0 + 200);
  v36 = *(v0 + 160);
  v37 = *(v0 + 112);
  (*(v0 + 32))(v36);
  v31(v36, v37);
  sub_10001036C(v35, &qword_1006E0618, &unk_10057C230);
  sub_100034768(*(v0 + 224), type metadata accessor for RadioWidgetTimelineProvider.Entry);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_100057720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a2;
  v27 = a7;
  v25[0] = a1;
  v25[1] = a6;
  v9 = v7;
  v11 = sub_1005725D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006DFD60, &qword_10057B758);
  __chkstk_darwin();
  v18 = v25 - v17;
  v19 = sub_100572F48();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_1000584C0(v9, v16, type metadata accessor for RadioWidgetTimelineProvider);
  (*(v12 + 16))(v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v25[0], v11);
  v20 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v21 = (v15 + *(v12 + 80) + v20) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_10005852C(v16, v22 + v20);
  (*(v12 + 32))(v22 + v21, v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v23 = (v22 + ((v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v26;
  v23[1] = a3;

  sub_100006194(0, 0, v18, v27, v22);
}

uint64_t sub_1000579C0()
{
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v2 = v29 - v1;
  v30[0] = 0x203A65746164;
  v30[1] = 0xE600000000000000;
  sub_10056CAA8();
  sub_100058478(&qword_1006DFD50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v31._countAndFlagsBits = sub_100574408();
  sub_100572A98(v31);

  v32._countAndFlagsBits = 8236;
  v32._object = 0xE200000000000000;
  sub_100572A98(v32);
  v33._countAndFlagsBits = v30[0];
  v3 = v30[1];
  v30[0] = 0x287972746E45;
  v30[1] = 0xE600000000000000;
  v33._object = v3;
  sub_100572A98(v33);

  v4 = v30[0];
  v5 = v30[1];
  strcpy(v30, "stations: ");
  BYTE3(v30[1]) = 0;
  HIDWORD(v30[1]) = -369098752;
  v6 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  type metadata accessor for WidgetMusicItem(0);
  v34._countAndFlagsBits = sub_100572D38();
  sub_100572A98(v34);

  v35._countAndFlagsBits = 8236;
  v35._object = 0xE200000000000000;
  sub_100572A98(v35);
  v7 = v30[0];
  v8 = v30[1];
  v30[0] = v4;
  v30[1] = v5;

  v36._countAndFlagsBits = v7;
  v36._object = v8;
  sub_100572A98(v36);

  v9 = v30[0];
  v10 = v30[1];
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_100573ED8(17);

  strcpy(v30, "playerState: ");
  HIWORD(v30[1]) = -4864;
  LOBYTE(v29[0]) = *(v0 + v6[6]);
  sub_100009DCC(&qword_1006E2760, &qword_10057EE90);
  v37._countAndFlagsBits = sub_100572978();
  sub_100572A98(v37);

  v38._countAndFlagsBits = 8236;
  v38._object = 0xE200000000000000;
  sub_100572A98(v38);
  v11 = v30[0];
  v12 = v30[1];
  v30[0] = v9;
  v30[1] = v10;

  v39._countAndFlagsBits = v11;
  v39._object = v12;
  sub_100572A98(v39);

  v14 = v30[0];
  v13 = v30[1];
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_100573ED8(23);

  v30[0] = 0xD000000000000013;
  v30[1] = 0x80000001005AAC30;
  sub_10000CC8C(v0 + v6[7], v2, &qword_1006E0618, &unk_10057C230);
  v40._countAndFlagsBits = sub_100572978();
  sub_100572A98(v40);

  v41._countAndFlagsBits = 8236;
  v41._object = 0xE200000000000000;
  sub_100572A98(v41);
  v15 = v30[0];
  v16 = v30[1];
  v30[0] = v14;
  v30[1] = v13;

  v42._countAndFlagsBits = v15;
  v42._object = v16;
  sub_100572A98(v42);

  v18 = v30[0];
  v17 = v30[1];
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_100573ED8(20);

  v30[0] = 0xD000000000000012;
  v30[1] = 0x80000001005AAC50;
  v29[0] = *(v0 + v6[8]);
  v19 = v29[0];
  sub_100009DCC(&unk_1006E11E8, &qword_10057CD98);
  v43._countAndFlagsBits = sub_100572978();
  sub_100572A98(v43);

  v20 = v30[0];
  v21 = v30[1];
  v30[0] = v18;
  v30[1] = v17;

  v44._countAndFlagsBits = v20;
  v44._object = v21;
  sub_100572A98(v44);

  v23 = v30[0];
  v22 = v30[1];
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_100573ED8(16);

  strcpy(v30, "errorMessage: ");
  HIBYTE(v30[1]) = -18;
  v24 = v0 + v6[9];
  v25 = *(v24 + 8);
  v29[0] = *v24;
  v29[1] = v25;

  sub_100009DCC(&qword_1006DFD58, &qword_10057B750);
  v45._countAndFlagsBits = sub_100572978();
  sub_100572A98(v45);

  v26 = v30[0];
  v27 = v30[1];
  v30[0] = v23;
  v30[1] = v22;

  v46._countAndFlagsBits = v26;
  v46._object = v27;
  sub_100572A98(v46);

  v47._countAndFlagsBits = 41;
  v47._object = 0xE100000000000000;
  sub_100572A98(v47);

  return v30[0];
}

uint64_t sub_100057EA0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100009DCC(&qword_1006E0618, &unk_10057C230);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100057FE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_100009DCC(&qword_1006E0618, &unk_10057C230);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100058114(uint64_t a1)
{
  sub_10056CAA8();
  if (v1 <= 0x3F)
  {
    sub_1000582A8(319, &qword_1006DFF08, type metadata accessor for WidgetMusicItem, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_100016918(319, &qword_1006E0688, &type metadata for NowPlayingDataProvider.PlayerState);
      if (v3 <= 0x3F)
      {
        sub_1000582A8(319, &qword_1006E0690, type metadata accessor for WidgetMusicItem, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1000582A8(319, &qword_1006E06A0, sub_1000168CC, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_100016918(319, &qword_1006DFE60, &type metadata for String);
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

void sub_1000582A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100058320(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056DF88();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000583A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056DF88();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100058478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000584C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005852C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RadioWidgetTimelineProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100058590(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RadioWidgetTimelineProvider(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1005725D8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10000CB98;

  return sub_100056570(a1, v10, v11, v1 + v6, v1 + v9, v13, v14);
}

void sub_100058720(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100009DCC(&qword_1006E1ED8, &qword_10057EFA0);
      v7 = *(type metadata accessor for WidgetMusicItem(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for WidgetMusicItem(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1000588C0()
{
  v1 = *(type metadata accessor for RadioWidgetTimelineProvider(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1005725D8();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  swift_unknownObjectRelease();
  v7 = sub_10056DF88();
  (*(*(v7 - 8) + 8))(v0 + v2, v7);
  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_100058A38(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RadioWidgetTimelineProvider(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1005725D8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1000116F0;

  return sub_10005528C(a1, v10, v11, v1 + v6, v1 + v9, v13, v14);
}

uint64_t sub_100058BD0()
{
  v1 = sub_10056DF88();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_100570DD8();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = sub_100570E18();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_100058D44, 0, 0);
}

uint64_t sub_100058D44()
{
  (*(v0[6] + 104))(v0[7], enum case for MusicSubscription.PrivacyAcknowledgementPolicy.promptProhibited(_:), v0[5]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_100058E04;
  v2 = v0[10];
  v3 = v0[7];

  return static MusicSubscription.current(privacyAcknowledgementPolicy:)(v2, v3);
}

uint64_t sub_100058E04()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100063724;
  }

  else
  {
    v5 = sub_100063728;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100058F74()
{
  v1 = sub_10056DF88();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_100570DD8();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = sub_100570E18();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000590E8, 0, 0);
}

uint64_t sub_1000590E8()
{
  (*(v0[6] + 104))(v0[7], enum case for MusicSubscription.PrivacyAcknowledgementPolicy.promptProhibited(_:), v0[5]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1000591A8;
  v2 = v0[10];
  v3 = v0[7];

  return static MusicSubscription.current(privacyAcknowledgementPolicy:)(v2, v3);
}

uint64_t sub_1000591A8()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100042434;
  }

  else
  {
    v5 = sub_100059318;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100059318()
{
  v1 = sub_100570DF8();
  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[1];

  return v2(v1 & 1);
}

id sub_1000593C0()
{
  type metadata accessor for RecentlyPlayedWidgetDataProvider(0);
  swift_allocObject();
  result = sub_10005990C();
  qword_1006FC208 = result;
  return result;
}

uint64_t sub_100059400()
{
  v1[2] = v0;
  v1[3] = sub_100009DCC(&qword_1006E2A78, &qword_10057F038);
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000594A0, 0, 0);
}

uint64_t sub_1000594A0(uint64_t a1)
{
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ITEMS", v4, 2u);
  }

  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[2];

  sub_10000CC8C(*(v7 + 16) + OBJC_IVAR____TtCC12MusicWidgets32RecentlyPlayedWidgetDataProviderP33_7972873AA1FE9FEE4C8EA581A865DD0F5Cache__items, v6, &qword_1006E2A78, &qword_10057F038);
  v8 = sub_100071ED8(*(v6 + *(v5 + 44)), *(v6 + *(v5 + 44) + 8));
  sub_10001036C(v6, &qword_1006E2A78, &qword_10057F038);
  v9 = sub_10056DF68();
  v10 = sub_100573448();
  v11 = os_log_type_enabled(v9, v10);
  if (v8)
  {
    if (v11)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "ITEMS cache hit", v12, 2u);
    }

    sub_100061CF4(v8);

    v13 = v1[1];

    return v13(v8);
  }

  else
  {
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "ITEMS cache miss", v15, 2u);
    }

    v16 = swift_task_alloc();
    v1[5] = v16;
    *v16 = v1;
    v16[1] = sub_100059740;

    return sub_100059CE4();
  }
}

uint64_t sub_100059740(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_100059894, 0, 0);
  }
}

uint64_t sub_100059894()
{
  sub_100061CF4(*(v0 + 48));
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(v1);
}

id sub_10005990C()
{
  v1 = v0;
  v2 = sub_100570D58();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RecentlyPlayedWidgetDataProvider.Cache(0);
  v6 = swift_allocObject();
  v7 = v6 + OBJC_IVAR____TtCC12MusicWidgets32RecentlyPlayedWidgetDataProviderP33_7972873AA1FE9FEE4C8EA581A865DD0F5Cache__items;
  sub_10006AC28(0x796C746E65636552, 0xEE00646579616C50, v6 + OBJC_IVAR____TtCC12MusicWidgets32RecentlyPlayedWidgetDataProviderP33_7972873AA1FE9FEE4C8EA581A865DD0F5Cache__items);
  v8 = (v7 + *(sub_100009DCC(&qword_1006E2A78, &qword_10057F038) + 44));
  *v8 = 0x736D657469;
  v8[1] = 0xE500000000000000;
  *(v0 + 16) = v6;
  static Logger.music(_:)(0xD000000000000020, 0x800000010057EFC0);
  (*(v3 + 104))(v5, enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v2);
  sub_100570D68();
  v9 = [objc_opt_self() processInfo];
  v10 = [v9 processName];

  v11 = sub_1005728D8();
  v13 = v12;

  if (v11 == 0x646957636973754DLL && v13 == 0xEC00000073746567)
  {
  }

  else
  {
    v14 = sub_100574498();

    if ((v14 & 1) == 0)
    {
      return v1;
    }
  }

  v15 = sub_10056DF68();
  v16 = sub_100573448();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "running in widget process, disabling fallback cache", v17, 2u);
  }

  v18 = [objc_opt_self() defaultMediaLibrary];
  if ([v18 artworkDataSource])
  {
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      [v19 setUsesFallbackCache:0];
    }

    swift_unknownObjectRelease();
  }

  result = [objc_opt_self() sharedStoreArtworkDataSource];
  if (result)
  {
    v21 = result;
    [result setUsesFallbackCache:0];

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100059C70()
{
  sub_10001036C(v0 + OBJC_IVAR____TtCC12MusicWidgets32RecentlyPlayedWidgetDataProviderP33_7972873AA1FE9FEE4C8EA581A865DD0F5Cache__items, &qword_1006E2A78, &qword_10057F038);

  return swift_deallocClassInstance();
}

id sub_100059D04()
{
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 processName];

  v3 = sub_1005728D8();
  v5 = v4;

  if (v3 == 0x636973754DLL && v5 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_100574498();
  }

  *(v0 + 48) = v7 & 1;
  if (qword_1006DFA20 != -1)
  {
    swift_once();
  }

  if (qword_1006FC270)
  {
    v8 = qword_1006FC270;
    v9 = sub_1000A6750();
    v10 = (v9 == 2) | v9;
    v11 = sub_1000A6758();

    v12 = v11 | v10;
    if (v11 == 2)
    {
      v12 = v10;
    }
  }

  else
  {
    v12 = 1;
  }

  *(v0 + 49) = v12 & 1;
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v14 = result;
    *(v0 + 50) = [result hasProperNetworkConditionsToShowCloudMedia];

    v15 = swift_task_alloc();
    *(v0 + 24) = v15;
    *v15 = v0;
    v15[1] = sub_100059F20;

    return sub_100058F74();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100059F20(char a1)
{
  *(*v1 + 51) = a1;

  return _swift_task_switch(sub_10005A020, 0, 0);
}

uint64_t sub_10005A020(uint64_t a1)
{
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 51);
    v5 = *(v1 + 50);
    v6 = *(v1 + 49);
    v7 = *(v1 + 48);
    v8 = swift_slowAlloc();
    *v8 = 67240960;
    *(v8 + 4) = v7;
    *(v8 + 8) = 1026;
    *(v8 + 10) = v6;
    *(v8 + 14) = 1026;
    *(v8 + 16) = v5;
    *(v8 + 20) = 1026;
    *(v8 + 22) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "FETCH ITEMS: isMusicProcess: %{BOOL,public}d, areRemoteQueriesEnabled: %{BOOL,public}d, canShowCloudMedia: %{BOOL,public}d, canPlayCatalogContent: %{BOOL,public}d", v8, 0x1Au);
  }

  v9 = *(v1 + 51);
  v10 = *(v1 + 50);
  v11 = *(v1 + 49);
  v12 = *(v1 + 48);

  if (v12 != 1 || v11 == 0 || v10 == 0 || v9 == 0)
  {
    v16 = swift_task_alloc();
    *(v1 + 40) = v16;
    *v16 = v1;
    v16[1] = sub_10005A380;

    return sub_10005BEE0();
  }

  else
  {
    v18 = swift_task_alloc();
    *(v1 + 32) = v18;
    *v18 = v1;
    v18[1] = sub_10005A214;

    return sub_10005A480();
  }
}

uint64_t sub_10005A214(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v3 + 40) = v7;
    *v7 = v4;
    v7[1] = sub_10005A380;

    return sub_10005BEE0();
  }
}

uint64_t sub_10005A380(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_10005A480()
{
  v1[3] = v0;
  v2 = sub_100009DCC(&qword_1006E2AB0, &qword_10057FBE0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_100009DCC(&qword_1006E2AB8, &qword_10057F0F0);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_100570D78();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E2AC0, &qword_10057F0F8);
  v1[13] = v5;
  v1[14] = *(v5 - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_10005A678, 0, 0);
}

uint64_t sub_10005A678(uint64_t a1)
{
  v1[16] = OBJC_IVAR____TtC12MusicWidgets32RecentlyPlayedWidgetDataProvider_logger;
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FETCH REMOTE ITEMS", v4, 2u);
  }

  v5 = v1[12];
  v6 = v1[10];
  v7 = v1[11];

  sub_100570CC8();
  sub_1000636DC(&qword_1006E2AC8, &type metadata accessor for RecentlyPlayedMusicItem, &protocol conformance descriptor for RecentlyPlayedMusicItem);
  sub_100571098();
  (*(v7 + 104))(v5, enum case for MusicDataRequest.Source.widgets(_:), v6);
  sub_100571068();
  sub_100571078();
  v8 = swift_task_alloc();
  v1[17] = v8;
  *v8 = v1;
  v8[1] = sub_10005A84C;
  v9 = v1[13];
  v10 = v1[9];

  return MusicRecentlyPlayedRequest.response()(v10, v9);
}

uint64_t sub_10005A84C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10005AC6C;
  }

  else
  {
    v2 = sub_10005A960;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005A960()
{
  sub_1005711E8();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_10005AA28;

  return sub_10006D1E0(&unk_10057F108, 0);
}

uint64_t sub_10005AA28(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    v7 = v4[5];
    v6 = v4[6];
    v8 = v4[4];
    v4[20] = a1;
    (*(v7 + 8))(v6, v8);

    return _swift_task_switch(sub_10005AB7C, 0, 0);
  }
}

uint64_t sub_10005AB7C()
{
  v1 = v0[20];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  sub_100061CF4(v1);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8(v1);
}

uint64_t sub_10005AC6C()
{
  v18 = v0;
  swift_errorRetain();
  v1 = sub_10056DF68();
  v2 = sub_100573428();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[18];
    v4 = v0[14];
    v16 = v0[15];
    v5 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E1C08, &qword_10057F100);
    v8 = sub_100572978();
    v10 = sub_10008190C(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "FETCH REMOTE ITEMS ERROR %{public}s", v6, 0xCu);
    sub_100010474(v7);

    (*(v4 + 8))(v16, v5);
  }

  else
  {
    v12 = v0[14];
    v11 = v0[15];
    v13 = v0[13];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_10005AE80(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_100570CC8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10005AF40, 0, 0);
}

uint64_t sub_10005AF40()
{
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_10001CBA0;
  v2 = v0[6];
  v3 = v0[2];

  return sub_10005AFF0(v3, v2);
}

uint64_t sub_10005AFF0(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v3 = sub_10056D5A8();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  type metadata accessor for ArtworkImage.Placeholder(0);
  v2[15] = swift_task_alloc();
  sub_100009DCC(&unk_1006DFD20, &unk_10057B720);
  v2[16] = swift_task_alloc();
  v4 = sub_10056C8A8();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v5 = sub_100571F08();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v6 = sub_1005722D8();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  v7 = sub_100571B78();
  v2[26] = v7;
  v2[27] = *(v7 - 8);
  v2[28] = swift_task_alloc();
  v8 = sub_100570CC8();
  v2[29] = v8;
  v2[30] = *(v8 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_10005B324, 0, 0);
}

uint64_t sub_10005B324()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  (*(v2 + 16))(v1, *(v0 + 72), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for RecentlyPlayedMusicItem.album(_:))
  {
    v5 = *(v0 + 248);
    v6 = *(v0 + 224);
    v7 = *(v0 + 208);
    v8 = *(v0 + 216);
    (*(*(v0 + 240) + 96))(v5, *(v0 + 232));
    (*(v8 + 32))(v6, v5, v7);
    v9 = sub_100571B28();
    v11 = v10;
    v12 = sub_100571AC8();
LABEL_5:
    v16 = v12;
    v17 = v13;
    (*(v8 + 8))(v6, v7);
    goto LABEL_10;
  }

  if (v4 == enum case for RecentlyPlayedMusicItem.playlist(_:))
  {
    v14 = *(v0 + 248);
    v8 = *(v0 + 192);
    v6 = *(v0 + 200);
    v7 = *(v0 + 184);
    (*(*(v0 + 240) + 96))(v14, *(v0 + 232));
    (*(v8 + 32))(v6, v14, v7);
    v9 = sub_1005721A8();
    v11 = v15;
    v12 = sub_100572158();
    goto LABEL_5;
  }

  v19 = *(v0 + 240);
  v18 = *(v0 + 248);
  v20 = *(v0 + 232);
  if (v4 == enum case for RecentlyPlayedMusicItem.station(_:))
  {
    v22 = *(v0 + 168);
    v21 = *(v0 + 176);
    v23 = *(v0 + 160);
    (*(v19 + 96))(*(v0 + 248), *(v0 + 232));
    (*(v22 + 32))(v21, v18, v23);
    v9 = _s8MusicKit7StationV0A4CoreE9catalogIDAA0a4ItemF0VSgvg_0();
    v11 = v24;
    (*(v22 + 8))(v21, v23);
  }

  else
  {
    v9 = sub_100570C88();
    v11 = v25;
    (*(v19 + 8))(v18, v20);
  }

  v16 = 0;
  v17 = 0;
LABEL_10:
  *(v0 + 16) = v9;
  *(v0 + 24) = v11;
  *(v0 + 256) = v16;
  *(v0 + 264) = v17;
  v26 = *(v0 + 152);
  v27 = *(v0 + 128);
  *(v0 + 32) = sub_100570C98();
  *(v0 + 40) = v28;
  *(v0 + 48) = sub_100570CB8();
  *(v0 + 56) = v29;
  sub_100062248(v26);
  sub_100570CA8();
  v30 = sub_100571E58();
  *(v0 + 272) = v30;
  v31 = *(v30 - 8);
  *(v0 + 280) = v31;
  if ((*(v31 + 48))(v27, 1, v30) == 1)
  {
    sub_10001036C(*(v0 + 128), &unk_1006DFD20, &unk_10057B720);
    *(v0 + 304) = 0;
    v32 = *(v0 + 32);
    v33 = *(v0 + 40);
    v34 = *(v0 + 16);
    v35 = *(v0 + 24);
    v37 = *(v0 + 112);
    v36 = *(v0 + 120);
    v38 = *(v0 + 96);
    v39 = *(v0 + 104);
    *(v0 + 312) = vextq_s8(*(v0 + 48), *(v0 + 48), 8uLL);
    *(v0 + 328) = v33;
    *(v0 + 336) = v32;
    *(v0 + 344) = v35;
    *(v0 + 352) = v34;
    sub_100062A3C(v36);
    sub_100570C78();
    *(v0 + 360) = sub_10056D578();
    *(v0 + 368) = v40;
    (*(v39 + 8))(v37, v38);
    *(v0 + 376) = sub_100062D70();
    v41 = swift_task_alloc();
    *(v0 + 384) = v41;
    *v41 = v0;
    v41[1] = sub_10005BA18;

    return sub_10007524C();
  }

  else
  {
    if (*DeviceCapabilities.deviceType.unsafeMutableAddressor() == 2)
    {
      v43 = 140.0;
    }

    else
    {
      v43 = 125.0;
    }

    v44 = swift_task_alloc();
    *(v0 + 288) = v44;
    *v44 = v0;
    v44[1] = sub_10005B790;

    return sub_10003E58C(v43);
  }
}

uint64_t sub_10005B790(uint64_t a1)
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 128);
  *(*v1 + 296) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_10005B8F0, 0, 0);
}

uint64_t sub_10005B8F0(uint64_t a1)
{
  *(v1 + 304) = *(v1 + 296);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 112);
  v6 = *(v1 + 120);
  v8 = *(v1 + 96);
  v9 = *(v1 + 104);
  *(v1 + 312) = vextq_s8(*(v1 + 48), *(v1 + 48), 8uLL);
  *(v1 + 328) = v3;
  *(v1 + 336) = v2;
  *(v1 + 344) = v5;
  *(v1 + 352) = v4;
  sub_100062A3C(v6);
  sub_100570C78();
  *(v1 + 360) = sub_10056D578();
  *(v1 + 368) = v10;
  (*(v9 + 8))(v7, v8);
  *(v1 + 376) = sub_100062D70();
  v11 = swift_task_alloc();
  *(v1 + 384) = v11;
  *v11 = v1;
  v11[1] = sub_10005BA18;

  return sub_10007524C();
}

uint64_t sub_10005BA18(char a1)
{
  *(*v1 + 392) = a1;

  return _swift_task_switch(sub_10005BB18, 0, 0);
}

uint64_t sub_10005BB18()
{
  v33 = *(v0 + 392);
  v32 = *(v0 + 376);
  v30 = *(v0 + 360);
  v31 = *(v0 + 368);
  v28 = *(v0 + 344);
  v29 = *(v0 + 352);
  v24 = *(v0 + 328);
  v25 = *(v0 + 336);
  v22 = *(v0 + 312);
  v23 = *(v0 + 320);
  v38 = *(v0 + 304);
  v26 = *(v0 + 256);
  v27 = *(v0 + 264);
  v36 = *(v0 + 240);
  v37 = *(v0 + 232);
  v1 = *(v0 + 144);
  v21 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v35 = *(v0 + 72);
  v7 = sub_10056CAA8();
  v8 = *(*(v7 - 8) + 56);
  v8(v4, 1, 1, v7);
  v8(v5, 1, 1, v7);
  v9 = type metadata accessor for WidgetMusicItem(0);
  v34 = v9[25];
  *&v6[v34] = 0;
  *&v6[v9[26]] = _swiftEmptyArrayStorage;
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = v25;
  *(v6 + 3) = v24;
  *(v6 + 4) = v23;
  *(v6 + 5) = v22;
  (*(v1 + 16))(&v6[v9[7]], v21, v2);
  sub_10003CEF4(v3, &v6[v9[23]], type metadata accessor for ArtworkImage.Placeholder);
  *&v6[v9[24]] = 0x3FF0000000000000;
  v6[v9[8]] = 8;
  v10 = &v6[v9[9]];
  *v10 = v29;
  *(v10 + 1) = v28;
  v11 = &v6[v9[10]];
  *v11 = v26;
  *(v11 + 1) = v27;
  v12 = &v6[v9[11]];
  *v12 = v30;
  *(v12 + 1) = v31;
  v13 = &v6[v9[12]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v6[v9[13]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v6[v9[14]];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v6[v9[15]] = v32;
  v6[v9[16]] = v33;
  sub_10000CC8C(v4, &v6[v9[17]], &unk_1006E1E90, &qword_10057C550);
  sub_10000CC8C(v5, &v6[v9[18]], &unk_1006E1E90, &qword_10057C550);
  v16 = &v6[v9[19]];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v6[v9[20]] = _swiftEmptyArrayStorage;
  v17 = &v6[v9[21]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v17[24] = 1;
  v18 = &v6[v9[22]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v18[24] = 1;
  sub_1000396D8(_swiftEmptyArrayStorage);
  (*(v36 + 8))(v35, v37);
  sub_10001036C(v5, &unk_1006E1E90, &qword_10057C550);
  sub_10001036C(v4, &unk_1006E1E90, &qword_10057C550);
  sub_10006367C(v3, type metadata accessor for ArtworkImage.Placeholder);
  (*(v1 + 8))(v21, v2);
  *&v6[v34] = v38;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_10005BEE0()
{
  v1[14] = v0;
  v1[15] = *(type metadata accessor for WidgetMusicItem(0) - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v2 = sub_10056CAA8();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = sub_100009DCC(&qword_1006E0500, &unk_10057BF60);
  v1[25] = swift_task_alloc();
  sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v3 = sub_1005722D8();
  v1[28] = v3;
  v1[29] = *(v3 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v4 = sub_100571B78();
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E2A80, &unk_10057F040);
  v1[40] = v5;
  v1[41] = *(v5 - 8);
  v1[42] = swift_task_alloc();
  v6 = sub_100009DCC(&qword_1006DFCC8, &qword_10057B680);
  v1[43] = v6;
  v1[44] = *(v6 - 8);
  v1[45] = swift_task_alloc();
  v7 = sub_100009DCC(&qword_1006E2A88, &qword_10057F050);
  v1[46] = v7;
  v1[47] = *(v7 - 8);
  v1[48] = swift_task_alloc();
  v8 = sub_100009DCC(&qword_1006E2A90, &qword_10057F058);
  v1[49] = v8;
  v1[50] = *(v8 - 8);
  v1[51] = swift_task_alloc();
  v9 = sub_100009DCC(&qword_1006E2A98, &qword_10057F060);
  v1[52] = v9;
  v1[53] = *(v9 - 8);
  v1[54] = swift_task_alloc();
  v10 = sub_100009DCC(&qword_1006E2AA0, &qword_10057F068);
  v1[55] = v10;
  v1[56] = *(v10 - 8);
  v1[57] = swift_task_alloc();

  return _swift_task_switch(sub_10005C418, 0, 0);
}

uint64_t sub_10005C418(uint64_t a1)
{
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FETCH LOCAL ITEMS", v4, 2u);
  }

  sub_100570F18();
  sub_100570E98();
  swift_getKeyPath();
  sub_100570EE8();

  sub_100570EF8();
  v5 = swift_task_alloc();
  v1[58] = v5;
  *v5 = v1;
  v5[1] = sub_10005C598;
  v6 = v1[55];
  v7 = v1[51];

  return MusicLibraryRequest.response()(v7, v6);
}

uint64_t sub_10005C598()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_10005FDAC;
  }

  else
  {
    v2 = sub_10005C6AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005C6AC()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[49];
  sub_100570F68();
  (*(v2 + 8))(v1, v3);
  sub_100570F18();
  sub_100570E98();
  swift_getKeyPath();
  sub_100570EE8();

  sub_100570EF8();
  v4 = swift_task_alloc();
  v0[60] = v4;
  *v4 = v0;
  v4[1] = sub_10005C7E4;
  v5 = v0[46];
  v6 = v0[42];

  return MusicLibraryRequest.response()(v6, v5);
}

uint64_t sub_10005C7E4()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_10005FF5C;
  }

  else
  {
    v2 = sub_10005C8F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005C8F8()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  sub_100570F68();
  (*(v2 + 8))(v1, v3);
  sub_100063478(&qword_1006E2AA8, &qword_1006E2A98, &qword_10057F060);
  v4 = sub_1005731C8();
  if (v4)
  {
    v5 = v4;
    sub_100041490(0, v4 & ~(v4 >> 63), 0);
    result = sub_1005731B8();
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_59;
    }

    v7 = *(v0 + 280);
    do
    {
      v8 = *(v0 + 312);
      v9 = sub_1005732E8();
      (*(v7 + 16))(v8);
      v9(v0 + 16, 0);
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_100041490((v10 > 1), v11 + 1, 1);
      }

      v12 = *(v0 + 312);
      v13 = *(v0 + 272);
      _swiftEmptyArrayStorage[2] = v11 + 1;
      (*(v7 + 32))(_swiftEmptyArrayStorage + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v12, v13);
      sub_100573218();
      --v5;
    }

    while (v5);
  }

  sub_100063478(&qword_1006DFDB0, &qword_1006DFCC8, &qword_10057B680);
  v14 = sub_1005731C8();
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = v14;
  sub_10004140C(0, v14 & ~(v14 >> 63), 0);
  result = sub_1005731B8();
  if (v15 < 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v16 = *(v0 + 232);
  do
  {
    v17 = *(v0 + 264);
    v18 = sub_1005732E8();
    (*(v16 + 16))(v17);
    v18(v0 + 48, 0);
    v20 = _swiftEmptyArrayStorage[2];
    v19 = _swiftEmptyArrayStorage[3];
    if (v20 >= v19 >> 1)
    {
      sub_10004140C((v19 > 1), v20 + 1, 1);
    }

    v21 = *(v0 + 264);
    v22 = *(v0 + 224);
    _swiftEmptyArrayStorage[2] = v20 + 1;
    (*(v16 + 32))(_swiftEmptyArrayStorage + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v20, v21, v22);
    sub_100573218();
    --v15;
  }

  while (v15);
LABEL_13:
  v23 = *(v0 + 280);
  *(v0 + 560) = _swiftEmptyArrayStorage;
  *(v0 + 496) = _swiftEmptyArrayStorage;
  *(v0 + 504) = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2] || _swiftEmptyArrayStorage[2] > 5uLL)
  {
LABEL_23:
    v38 = *(v0 + 448);
    v39 = *(v0 + 456);
    v72 = *(v0 + 432);
    v73 = *(v0 + 440);
    v40 = *(v0 + 424);
    v41 = *(v0 + 376);
    v70 = *(v0 + 384);
    v71 = *(v0 + 416);
    v42 = *(v0 + 360);
    v69 = *(v0 + 368);
    v44 = *(v0 + 344);
    v43 = *(v0 + 352);

    sub_100061CF4(v45);
    (*(v43 + 8))(v42, v44);
    (*(v41 + 8))(v70, v69);
    (*(v40 + 8))(v72, v71);
    (*(v38 + 8))(v39, v73);

    v46 = *(v0 + 8);

    return v46(_swiftEmptyArrayStorage);
  }

  v24 = *(v0 + 304);
  v25 = *(v0 + 272);
  (*(v23 + 16))(v24, _swiftEmptyArrayStorage + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v25);
  sub_100571B18();
  (*(v23 + 8))(v24, v25);
  *(v0 + 520) = &_swiftEmptyArrayStorage[2];
  *(v0 + 512) = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage[2])
  {
    v26 = *(v0 + 256);
    v28 = *(v0 + 224);
    v27 = *(v0 + 232);
    (*(v27 + 16))(v26, _swiftEmptyArrayStorage + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v28);
    sub_100572188();
    (*(v27 + 8))(v26, v28);
  }

  else
  {
    (*(*(v0 + 168) + 56))(*(v0 + 208), 1, 1, *(v0 + 160));
  }

  v30 = *(v0 + 208);
  v29 = *(v0 + 216);
  v31 = *(v0 + 200);
  v33 = *(v0 + 160);
  v32 = *(v0 + 168);
  v34 = *(*(v0 + 192) + 48);
  *(v0 + 600) = v34;
  sub_100015128(v29, v31);
  sub_100015128(v30, v31 + v34);
  v35 = *(v32 + 48);
  LODWORD(v33) = v35(v31, 1, v33);
  v36 = *(v0 + 160);
  result = v35(v31 + v34, 1, v36);
  if (v33 == 1)
  {
    v37 = result == 1;
    result = _swiftEmptyArrayStorage;
    if (!v37)
    {
      if (_swiftEmptyArrayStorage[2])
      {
        (*(*(v0 + 232) + 16))(*(v0 + 240), _swiftEmptyArrayStorage + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        result = _swiftEmptyArrayStorage;
        v53 = _swiftEmptyArrayStorage[2];
        if (v53)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = _swiftEmptyArrayStorage;
          *(v0 + 96) = _swiftEmptyArrayStorage;
          if (!isUniquelyReferenced_nonNull_native || (v53 - 1) > _swiftEmptyArrayStorage[3] >> 1)
          {
            v55 = sub_100040E10(isUniquelyReferenced_nonNull_native, v53, 1, _swiftEmptyArrayStorage);
            *(v0 + 96) = v55;
          }

          *(v0 + 584) = v55;
          sub_100063530(0, 1, 0, &type metadata accessor for Playlist);
          v56 = swift_task_alloc();
          *(v0 + 592) = v56;
          *v56 = v0;
          v56[1] = sub_10005F384;
          v57 = *(v0 + 240);
          v58 = *(v0 + 128);
LABEL_46:

          return sub_100060144(v58, v57);
        }

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    goto LABEL_23;
  }

  if (result == 1)
  {
    if (_swiftEmptyArrayStorage[2])
    {
      (*(*(v0 + 280) + 16))(*(v0 + 288), _swiftEmptyArrayStorage + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
      result = _swiftEmptyArrayStorage;
      v47 = _swiftEmptyArrayStorage[2];
      if (!v47)
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v48 = swift_isUniquelyReferenced_nonNull_native();
      v49 = _swiftEmptyArrayStorage;
      *(v0 + 80) = _swiftEmptyArrayStorage;
      if (!v48 || (v47 - 1) > _swiftEmptyArrayStorage[3] >> 1)
      {
        v49 = sub_100040DE8(v48, v47, 1, _swiftEmptyArrayStorage);
        *(v0 + 80) = v49;
      }

      *(v0 + 568) = v49;
      sub_100063530(0, 1, 0, &type metadata accessor for Album);
      v50 = swift_task_alloc();
      *(v0 + 576) = v50;
      *v50 = v0;
      v50[1] = sub_10005E95C;
      v51 = *(v0 + 288);
      v52 = *(v0 + 136);
      goto LABEL_55;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v59 = *(v0 + 176);
  v60 = *(*(v0 + 168) + 32);
  v60(*(v0 + 184), *(v0 + 200), v36);
  v60(v59, v31 + v34, v36);
  result = sub_10056CA08();
  if (result)
  {
    if (_swiftEmptyArrayStorage[2])
    {
      (*(*(v0 + 232) + 16))(*(v0 + 248), _swiftEmptyArrayStorage + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
      result = _swiftEmptyArrayStorage;
      v61 = _swiftEmptyArrayStorage[2];
      if (v61)
      {
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v63 = _swiftEmptyArrayStorage;
        *(v0 + 96) = _swiftEmptyArrayStorage;
        if (!v62 || (v61 - 1) > _swiftEmptyArrayStorage[3] >> 1)
        {
          v63 = sub_100040E10(v62, v61, 1, _swiftEmptyArrayStorage);
          *(v0 + 96) = v63;
        }

        *(v0 + 528) = v63;
        sub_100063530(0, 1, 0, &type metadata accessor for Playlist);
        v64 = swift_task_alloc();
        *(v0 + 536) = v64;
        *v64 = v0;
        v64[1] = sub_10005D4E0;
        v57 = *(v0 + 248);
        v58 = *(v0 + 152);
        goto LABEL_46;
      }

      goto LABEL_66;
    }

    goto LABEL_64;
  }

  if (!_swiftEmptyArrayStorage[2])
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  (*(*(v0 + 280) + 16))(*(v0 + 296), _swiftEmptyArrayStorage + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
  result = _swiftEmptyArrayStorage;
  v65 = _swiftEmptyArrayStorage[2];
  if (!v65)
  {
LABEL_67:
    __break(1u);
    return result;
  }

  v66 = swift_isUniquelyReferenced_nonNull_native();
  v67 = _swiftEmptyArrayStorage;
  *(v0 + 80) = _swiftEmptyArrayStorage;
  if (!v66 || (v65 - 1) > _swiftEmptyArrayStorage[3] >> 1)
  {
    v67 = sub_100040DE8(v66, v65, 1, _swiftEmptyArrayStorage);
    *(v0 + 80) = v67;
  }

  *(v0 + 544) = v67;
  sub_100063530(0, 1, 0, &type metadata accessor for Album);
  v68 = swift_task_alloc();
  *(v0 + 552) = v68;
  *v68 = v0;
  v68[1] = sub_10005DF20;
  v51 = *(v0 + 296);
  v52 = *(v0 + 144);
LABEL_55:

  return sub_100060F28(v52, v51);
}

uint64_t sub_10005D4E0()
{

  return _swift_task_switch(sub_10005D5DC, 0, 0);
}

uint64_t sub_10005D5DC()
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v1 = *(v0 + 496);
  }

  else
  {
    v1 = sub_1000407D0(0, **(v0 + 520) + 1, 1, *(v0 + 496));
  }

  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1000407D0((v2 > 1), v3 + 1, 1, v1);
  }

  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 152);
  v7 = *(v0 + 120);
  v8 = *(*(v0 + 168) + 8);
  v8(*(v0 + 176), v5);
  v8(v4, v5);
  v1[2] = v3 + 1;
  v9 = v1 + 2;
  sub_1000634CC(v6, v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v3);
  v10 = *(v0 + 528);
  v11 = *(v0 + 504);
  *(v0 + 560) = v10;
  *(v0 + 496) = v1;
  if (v11[2])
  {
    if (*v9 <= 5uLL)
    {
      v12 = *(v0 + 304);
      v13 = *(v0 + 272);
      v14 = *(v0 + 280);
      (*(v14 + 16))(v12, v11 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);
      sub_100571B18();
      (*(v14 + 8))(v12, v13);
      goto LABEL_11;
    }

LABEL_16:
    v27 = *(v0 + 448);
    v28 = *(v0 + 456);
    v57 = *(v0 + 432);
    v58 = *(v0 + 440);
    v29 = *(v0 + 424);
    v55 = *(v0 + 384);
    v56 = *(v0 + 416);
    v30 = *(v0 + 376);
    v54 = *(v0 + 368);
    v31 = *(v0 + 352);
    v32 = *(v0 + 360);
    v33 = *(v0 + 344);

    sub_100061CF4(v34);
    (*(v31 + 8))(v32, v33);
    (*(v30 + 8))(v55, v54);
    (*(v29 + 8))(v57, v56);
    (*(v27 + 8))(v28, v58);

    v35 = *(v0 + 8);

    return v35(v1);
  }

  if (!v10[2] || *v9 > 5uLL)
  {
    goto LABEL_16;
  }

  (*(*(v0 + 168) + 56))(*(v0 + 216), 1, 1, *(v0 + 160));
  v10 = *(v0 + 560);
LABEL_11:
  *(v0 + 520) = v9;
  *(v0 + 512) = v10;
  if (v10[2])
  {
    v15 = *(v0 + 256);
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    (*(v16 + 16))(v15, v10 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v17);
    sub_100572188();
    (*(v16 + 8))(v15, v17);
  }

  else
  {
    (*(*(v0 + 168) + 56))(*(v0 + 208), 1, 1, *(v0 + 160));
  }

  v19 = *(v0 + 208);
  v18 = *(v0 + 216);
  v20 = *(v0 + 200);
  v21 = *(v0 + 160);
  v22 = *(v0 + 168);
  v23 = *(*(v0 + 192) + 48);
  *(v0 + 600) = v23;
  sub_100015128(v18, v20);
  sub_100015128(v19, v20 + v23);
  v24 = *(v22 + 48);
  LODWORD(v21) = v24(v20, 1, v21);
  v25 = *(v0 + 160);
  result = v24(v20 + v23, 1, v25);
  if (v21 == 1)
  {
    if (result == 1)
    {
      goto LABEL_16;
    }

    if (v10[2])
    {
      result = (*(*(v0 + 232) + 16))(*(v0 + 240), v10 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
      v41 = v10[2];
      if (v41)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 96) = v10;
        if (!isUniquelyReferenced_nonNull_native || (v41 - 1) > v10[3] >> 1)
        {
          v10 = sub_100040E10(isUniquelyReferenced_nonNull_native, v41, 1, v10);
          *(v0 + 96) = v10;
        }

        *(v0 + 584) = v10;
        sub_100063530(0, 1, 0, &type metadata accessor for Playlist);
        v43 = swift_task_alloc();
        *(v0 + 592) = v43;
        *v43 = v0;
        v43[1] = sub_10005F384;
        v44 = *(v0 + 240);
        v45 = *(v0 + 128);
LABEL_39:

        return sub_100060144(v45, v44);
      }

      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (result == 1)
  {
    if (!v11[2])
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 288), v11 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v36 = v11[2];
    if (!v36)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v37 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v11;
    if (!v37 || (v36 - 1) > v11[3] >> 1)
    {
      v11 = sub_100040DE8(v37, v36, 1, v11);
      *(v0 + 80) = v11;
    }

    *(v0 + 568) = v11;
    sub_100063530(0, 1, 0, &type metadata accessor for Album);
    v38 = swift_task_alloc();
    *(v0 + 576) = v38;
    *v38 = v0;
    v38[1] = sub_10005E95C;
    v39 = *(v0 + 288);
    v40 = *(v0 + 136);
  }

  else
  {
    v46 = *(v0 + 176);
    v47 = *(*(v0 + 168) + 32);
    v47(*(v0 + 184), *(v0 + 200), v25);
    v47(v46, v20 + v23, v25);
    result = sub_10056CA08();
    if (result)
    {
      if (v10[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 248), v10 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v48 = v10[2];
        if (v48)
        {
          v49 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v10;
          if (!v49 || (v48 - 1) > v10[3] >> 1)
          {
            v10 = sub_100040E10(v49, v48, 1, v10);
            *(v0 + 96) = v10;
          }

          *(v0 + 528) = v10;
          sub_100063530(0, 1, 0, &type metadata accessor for Playlist);
          v50 = swift_task_alloc();
          *(v0 + 536) = v50;
          *v50 = v0;
          v50[1] = sub_10005D4E0;
          v44 = *(v0 + 248);
          v45 = *(v0 + 152);
          goto LABEL_39;
        }

        goto LABEL_58;
      }

      goto LABEL_56;
    }

    if (!v11[2])
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 296), v11 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v51 = v11[2];
    if (!v51)
    {
LABEL_59:
      __break(1u);
      return result;
    }

    v52 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v11;
    if (!v52 || (v51 - 1) > v11[3] >> 1)
    {
      v11 = sub_100040DE8(v52, v51, 1, v11);
      *(v0 + 80) = v11;
    }

    *(v0 + 544) = v11;
    sub_100063530(0, 1, 0, &type metadata accessor for Album);
    v53 = swift_task_alloc();
    *(v0 + 552) = v53;
    *v53 = v0;
    v53[1] = sub_10005DF20;
    v39 = *(v0 + 296);
    v40 = *(v0 + 144);
  }

  return sub_100060F28(v40, v39);
}

uint64_t sub_10005DF20()
{

  return _swift_task_switch(sub_10005E01C, 0, 0);
}

uint64_t sub_10005E01C()
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v1 = *(v0 + 496);
  }

  else
  {
    v1 = sub_1000407D0(0, **(v0 + 520) + 1, 1, *(v0 + 496));
  }

  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1000407D0((v2 > 1), v3 + 1, 1, v1);
  }

  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 144);
  v7 = *(v0 + 120);
  v8 = *(*(v0 + 168) + 8);
  v8(*(v0 + 176), v5);
  v8(v4, v5);
  v1[2] = v3 + 1;
  v9 = v1 + 2;
  sub_1000634CC(v6, v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v3);
  v10 = *(v0 + 560);
  v11 = *(v0 + 544);
  v12 = *(v0 + 512);
  *(v0 + 496) = v1;
  *(v0 + 504) = v11;
  if (v11[2])
  {
    if (*v9 <= 5uLL)
    {
      v13 = *(v0 + 304);
      v14 = *(v0 + 272);
      v15 = *(v0 + 280);
      (*(v15 + 16))(v13, v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v14);
      sub_100571B18();
      (*(v15 + 8))(v13, v14);
      goto LABEL_11;
    }

LABEL_16:
    v28 = *(v0 + 448);
    v58 = *(v0 + 440);
    v59 = *(v0 + 456);
    v29 = *(v0 + 424);
    v56 = *(v0 + 416);
    v57 = *(v0 + 432);
    v30 = *(v0 + 376);
    v31 = *(v0 + 360);
    v54 = *(v0 + 368);
    v55 = *(v0 + 384);
    v32 = *(v0 + 344);
    v33 = *(v0 + 352);

    sub_100061CF4(v34);
    (*(v33 + 8))(v31, v32);
    (*(v30 + 8))(v55, v54);
    (*(v29 + 8))(v57, v56);
    (*(v28 + 8))(v59, v58);

    v35 = *(v0 + 8);

    return v35(v1);
  }

  if (!*(v10 + 16) || *v9 > 5uLL)
  {
    goto LABEL_16;
  }

  (*(*(v0 + 168) + 56))(*(v0 + 216), 1, 1, *(v0 + 160));
  v12 = *(v0 + 560);
LABEL_11:
  *(v0 + 520) = v9;
  *(v0 + 512) = v12;
  if (v12[2])
  {
    v16 = *(v0 + 256);
    v18 = *(v0 + 224);
    v17 = *(v0 + 232);
    (*(v17 + 16))(v16, v12 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v18);
    sub_100572188();
    (*(v17 + 8))(v16, v18);
  }

  else
  {
    (*(*(v0 + 168) + 56))(*(v0 + 208), 1, 1, *(v0 + 160));
  }

  v20 = *(v0 + 208);
  v19 = *(v0 + 216);
  v21 = *(v0 + 200);
  v22 = *(v0 + 160);
  v23 = *(v0 + 168);
  v24 = *(*(v0 + 192) + 48);
  *(v0 + 600) = v24;
  sub_100015128(v19, v21);
  sub_100015128(v20, v21 + v24);
  v25 = *(v23 + 48);
  LODWORD(v22) = v25(v21, 1, v22);
  v26 = *(v0 + 160);
  result = v25(v21 + v24, 1, v26);
  if (v22 == 1)
  {
    if (result == 1)
    {
      goto LABEL_16;
    }

    if (v12[2])
    {
      result = (*(*(v0 + 232) + 16))(*(v0 + 240), v12 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
      v41 = v12[2];
      if (v41)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 96) = v12;
        if (!isUniquelyReferenced_nonNull_native || (v41 - 1) > v12[3] >> 1)
        {
          v12 = sub_100040E10(isUniquelyReferenced_nonNull_native, v41, 1, v12);
          *(v0 + 96) = v12;
        }

        *(v0 + 584) = v12;
        sub_100063530(0, 1, 0, &type metadata accessor for Playlist);
        v43 = swift_task_alloc();
        *(v0 + 592) = v43;
        *v43 = v0;
        v43[1] = sub_10005F384;
        v44 = *(v0 + 240);
        v45 = *(v0 + 128);
LABEL_39:

        return sub_100060144(v45, v44);
      }

      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (result == 1)
  {
    if (!v11[2])
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 288), v11 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v36 = v11[2];
    if (!v36)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v37 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v11;
    if (!v37 || (v36 - 1) > v11[3] >> 1)
    {
      v11 = sub_100040DE8(v37, v36, 1, v11);
      *(v0 + 80) = v11;
    }

    *(v0 + 568) = v11;
    sub_100063530(0, 1, 0, &type metadata accessor for Album);
    v38 = swift_task_alloc();
    *(v0 + 576) = v38;
    *v38 = v0;
    v38[1] = sub_10005E95C;
    v39 = *(v0 + 288);
    v40 = *(v0 + 136);
  }

  else
  {
    v46 = *(v0 + 176);
    v47 = *(*(v0 + 168) + 32);
    v47(*(v0 + 184), *(v0 + 200), v26);
    v47(v46, v21 + v24, v26);
    result = sub_10056CA08();
    if (result)
    {
      if (v12[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 248), v12 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v48 = v12[2];
        if (v48)
        {
          v49 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v12;
          if (!v49 || (v48 - 1) > v12[3] >> 1)
          {
            v12 = sub_100040E10(v49, v48, 1, v12);
            *(v0 + 96) = v12;
          }

          *(v0 + 528) = v12;
          sub_100063530(0, 1, 0, &type metadata accessor for Playlist);
          v50 = swift_task_alloc();
          *(v0 + 536) = v50;
          *v50 = v0;
          v50[1] = sub_10005D4E0;
          v44 = *(v0 + 248);
          v45 = *(v0 + 152);
          goto LABEL_39;
        }

        goto LABEL_58;
      }

      goto LABEL_56;
    }

    if (!v11[2])
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 296), v11 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v51 = v11[2];
    if (!v51)
    {
LABEL_59:
      __break(1u);
      return result;
    }

    v52 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v11;
    if (!v52 || (v51 - 1) > v11[3] >> 1)
    {
      v11 = sub_100040DE8(v52, v51, 1, v11);
      *(v0 + 80) = v11;
    }

    *(v0 + 544) = v11;
    sub_100063530(0, 1, 0, &type metadata accessor for Album);
    v53 = swift_task_alloc();
    *(v0 + 552) = v53;
    *v53 = v0;
    v53[1] = sub_10005DF20;
    v39 = *(v0 + 296);
    v40 = *(v0 + 144);
  }

  return sub_100060F28(v40, v39);
}

uint64_t sub_10005E95C()
{

  return _swift_task_switch(sub_10005EA58, 0, 0);
}

uint64_t sub_10005EA58()
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v1 = *(v0 + 496);
  }

  else
  {
    v1 = sub_1000407D0(0, **(v0 + 520) + 1, 1, *(v0 + 496));
  }

  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1000407D0((v2 > 1), v3 + 1, 1, v1);
  }

  v4 = *(v0 + 200);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 136);
  v8 = *(v0 + 120);
  v1[2] = v3 + 1;
  v9 = v1 + 2;
  sub_1000634CC(v7, v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v3);
  (*(v6 + 8))(v4, v5);
  v10 = *(v0 + 568);
  v11 = *(v0 + 512);
  *(v0 + 496) = v1;
  *(v0 + 504) = v10;
  if (v10[2])
  {
    if (*v9 <= 5uLL)
    {
      v12 = *(v0 + 304);
      v13 = *(v0 + 272);
      v14 = *(v0 + 280);
      (*(v14 + 16))(v12, v10 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);
      sub_100571B18();
      (*(v14 + 8))(v12, v13);
      goto LABEL_11;
    }

LABEL_16:
    v27 = *(v0 + 448);
    v28 = *(v0 + 456);
    v57 = *(v0 + 432);
    v58 = *(v0 + 440);
    v29 = *(v0 + 424);
    v55 = *(v0 + 384);
    v56 = *(v0 + 416);
    v30 = *(v0 + 376);
    v54 = *(v0 + 368);
    v31 = *(v0 + 352);
    v32 = *(v0 + 360);
    v33 = *(v0 + 344);

    sub_100061CF4(v34);
    (*(v31 + 8))(v32, v33);
    (*(v30 + 8))(v55, v54);
    (*(v29 + 8))(v57, v56);
    (*(v27 + 8))(v28, v58);

    v35 = *(v0 + 8);

    return v35(v1);
  }

  if (!*(*(v0 + 560) + 16) || *v9 > 5uLL)
  {
    goto LABEL_16;
  }

  (*(*(v0 + 168) + 56))(*(v0 + 216), 1, 1, *(v0 + 160));
  v11 = *(v0 + 560);
LABEL_11:
  *(v0 + 520) = v9;
  *(v0 + 512) = v11;
  if (v11[2])
  {
    v15 = *(v0 + 256);
    v16 = *(v0 + 224);
    v17 = *(v0 + 232);
    (*(v17 + 16))(v15, v11 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v16);
    sub_100572188();
    (*(v17 + 8))(v15, v16);
  }

  else
  {
    (*(*(v0 + 168) + 56))(*(v0 + 208), 1, 1, *(v0 + 160));
  }

  v19 = *(v0 + 208);
  v18 = *(v0 + 216);
  v20 = *(v0 + 200);
  v21 = *(v0 + 160);
  v22 = *(v0 + 168);
  v23 = *(*(v0 + 192) + 48);
  *(v0 + 600) = v23;
  sub_100015128(v18, v20);
  sub_100015128(v19, v20 + v23);
  v24 = *(v22 + 48);
  LODWORD(v21) = v24(v20, 1, v21);
  v25 = *(v0 + 160);
  result = v24(v20 + v23, 1, v25);
  if (v21 == 1)
  {
    if (result == 1)
    {
      goto LABEL_16;
    }

    if (v11[2])
    {
      result = (*(*(v0 + 232) + 16))(*(v0 + 240), v11 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
      v41 = v11[2];
      if (v41)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 96) = v11;
        if (!isUniquelyReferenced_nonNull_native || (v41 - 1) > v11[3] >> 1)
        {
          v11 = sub_100040E10(isUniquelyReferenced_nonNull_native, v41, 1, v11);
          *(v0 + 96) = v11;
        }

        *(v0 + 584) = v11;
        sub_100063530(0, 1, 0, &type metadata accessor for Playlist);
        v43 = swift_task_alloc();
        *(v0 + 592) = v43;
        *v43 = v0;
        v43[1] = sub_10005F384;
        v44 = *(v0 + 240);
        v45 = *(v0 + 128);
LABEL_39:

        return sub_100060144(v45, v44);
      }

      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (result == 1)
  {
    if (!v10[2])
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 288), v10 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v36 = v10[2];
    if (!v36)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v37 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v10;
    if (!v37 || (v36 - 1) > v10[3] >> 1)
    {
      v10 = sub_100040DE8(v37, v36, 1, v10);
      *(v0 + 80) = v10;
    }

    *(v0 + 568) = v10;
    sub_100063530(0, 1, 0, &type metadata accessor for Album);
    v38 = swift_task_alloc();
    *(v0 + 576) = v38;
    *v38 = v0;
    v38[1] = sub_10005E95C;
    v39 = *(v0 + 288);
    v40 = *(v0 + 136);
  }

  else
  {
    v46 = *(v0 + 176);
    v47 = *(*(v0 + 168) + 32);
    v47(*(v0 + 184), *(v0 + 200), v25);
    v47(v46, v20 + v23, v25);
    result = sub_10056CA08();
    if (result)
    {
      if (v11[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 248), v11 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v48 = v11[2];
        if (v48)
        {
          v49 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v11;
          if (!v49 || (v48 - 1) > v11[3] >> 1)
          {
            v11 = sub_100040E10(v49, v48, 1, v11);
            *(v0 + 96) = v11;
          }

          *(v0 + 528) = v11;
          sub_100063530(0, 1, 0, &type metadata accessor for Playlist);
          v50 = swift_task_alloc();
          *(v0 + 536) = v50;
          *v50 = v0;
          v50[1] = sub_10005D4E0;
          v44 = *(v0 + 248);
          v45 = *(v0 + 152);
          goto LABEL_39;
        }

        goto LABEL_58;
      }

      goto LABEL_56;
    }

    if (!v10[2])
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 296), v10 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v51 = v10[2];
    if (!v51)
    {
LABEL_59:
      __break(1u);
      return result;
    }

    v52 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v10;
    if (!v52 || (v51 - 1) > v10[3] >> 1)
    {
      v10 = sub_100040DE8(v52, v51, 1, v10);
      *(v0 + 80) = v10;
    }

    *(v0 + 544) = v10;
    sub_100063530(0, 1, 0, &type metadata accessor for Album);
    v53 = swift_task_alloc();
    *(v0 + 552) = v53;
    *v53 = v0;
    v53[1] = sub_10005DF20;
    v39 = *(v0 + 296);
    v40 = *(v0 + 144);
  }

  return sub_100060F28(v40, v39);
}

uint64_t sub_10005F384()
{

  return _swift_task_switch(sub_10005F480, 0, 0);
}

uint64_t sub_10005F480()
{
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v1 = *(v0 + 496);
  }

  else
  {
    v1 = sub_1000407D0(0, **(v0 + 520) + 1, 1, *(v0 + 496));
  }

  v3 = v1[2];
  v2 = v1[3];
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1000407D0((v2 > 1), v3 + 1, 1, v1);
  }

  v4 = *(v0 + 600);
  v5 = *(v0 + 200);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v1[2] = v3 + 1;
  v8 = v1 + 2;
  sub_1000634CC(v6, v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v3);
  sub_10001036C(v5 + v4, &unk_1006E1E90, &qword_10057C550);
  v9 = *(v0 + 584);
  v10 = *(v0 + 504);
  *(v0 + 560) = v9;
  *(v0 + 496) = v1;
  if (v10[2])
  {
    if (*v8 <= 5uLL)
    {
      v11 = *(v0 + 304);
      v12 = *(v0 + 272);
      v13 = *(v0 + 280);
      (*(v13 + 16))(v11, v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v12);
      sub_100571B18();
      (*(v13 + 8))(v11, v12);
      goto LABEL_11;
    }

LABEL_16:
    v26 = *(v0 + 448);
    v27 = *(v0 + 456);
    v56 = *(v0 + 432);
    v57 = *(v0 + 440);
    v28 = *(v0 + 424);
    v54 = *(v0 + 384);
    v55 = *(v0 + 416);
    v29 = *(v0 + 376);
    v53 = *(v0 + 368);
    v30 = *(v0 + 352);
    v31 = *(v0 + 360);
    v32 = *(v0 + 344);

    sub_100061CF4(v33);
    (*(v30 + 8))(v31, v32);
    (*(v29 + 8))(v54, v53);
    (*(v28 + 8))(v56, v55);
    (*(v26 + 8))(v27, v57);

    v34 = *(v0 + 8);

    return v34(v1);
  }

  if (!v9[2] || *v8 > 5uLL)
  {
    goto LABEL_16;
  }

  (*(*(v0 + 168) + 56))(*(v0 + 216), 1, 1, *(v0 + 160));
  v9 = *(v0 + 560);
LABEL_11:
  *(v0 + 520) = v8;
  *(v0 + 512) = v9;
  if (v9[2])
  {
    v14 = *(v0 + 256);
    v16 = *(v0 + 224);
    v15 = *(v0 + 232);
    (*(v15 + 16))(v14, v9 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v16);
    sub_100572188();
    (*(v15 + 8))(v14, v16);
  }

  else
  {
    (*(*(v0 + 168) + 56))(*(v0 + 208), 1, 1, *(v0 + 160));
  }

  v18 = *(v0 + 208);
  v17 = *(v0 + 216);
  v19 = *(v0 + 200);
  v20 = *(v0 + 160);
  v21 = *(v0 + 168);
  v22 = *(*(v0 + 192) + 48);
  *(v0 + 600) = v22;
  sub_100015128(v17, v19);
  sub_100015128(v18, v19 + v22);
  v23 = *(v21 + 48);
  LODWORD(v20) = v23(v19, 1, v20);
  v24 = *(v0 + 160);
  result = v23(v19 + v22, 1, v24);
  if (v20 == 1)
  {
    if (result == 1)
    {
      goto LABEL_16;
    }

    if (v9[2])
    {
      result = (*(*(v0 + 232) + 16))(*(v0 + 240), v9 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
      v40 = v9[2];
      if (v40)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 96) = v9;
        if (!isUniquelyReferenced_nonNull_native || (v40 - 1) > v9[3] >> 1)
        {
          v9 = sub_100040E10(isUniquelyReferenced_nonNull_native, v40, 1, v9);
          *(v0 + 96) = v9;
        }

        *(v0 + 584) = v9;
        sub_100063530(0, 1, 0, &type metadata accessor for Playlist);
        v42 = swift_task_alloc();
        *(v0 + 592) = v42;
        *v42 = v0;
        v42[1] = sub_10005F384;
        v43 = *(v0 + 240);
        v44 = *(v0 + 128);
LABEL_39:

        return sub_100060144(v44, v43);
      }

      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (result == 1)
  {
    if (!v10[2])
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 288), v10 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v35 = v10[2];
    if (!v35)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v36 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v10;
    if (!v36 || (v35 - 1) > v10[3] >> 1)
    {
      v10 = sub_100040DE8(v36, v35, 1, v10);
      *(v0 + 80) = v10;
    }

    *(v0 + 568) = v10;
    sub_100063530(0, 1, 0, &type metadata accessor for Album);
    v37 = swift_task_alloc();
    *(v0 + 576) = v37;
    *v37 = v0;
    v37[1] = sub_10005E95C;
    v38 = *(v0 + 288);
    v39 = *(v0 + 136);
  }

  else
  {
    v45 = *(v0 + 176);
    v46 = *(*(v0 + 168) + 32);
    v46(*(v0 + 184), *(v0 + 200), v24);
    v46(v45, v19 + v22, v24);
    result = sub_10056CA08();
    if (result)
    {
      if (v9[2])
      {
        result = (*(*(v0 + 232) + 16))(*(v0 + 248), v9 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)), *(v0 + 224));
        v47 = v9[2];
        if (v47)
        {
          v48 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 96) = v9;
          if (!v48 || (v47 - 1) > v9[3] >> 1)
          {
            v9 = sub_100040E10(v48, v47, 1, v9);
            *(v0 + 96) = v9;
          }

          *(v0 + 528) = v9;
          sub_100063530(0, 1, 0, &type metadata accessor for Playlist);
          v49 = swift_task_alloc();
          *(v0 + 536) = v49;
          *v49 = v0;
          v49[1] = sub_10005D4E0;
          v43 = *(v0 + 248);
          v44 = *(v0 + 152);
          goto LABEL_39;
        }

        goto LABEL_58;
      }

      goto LABEL_56;
    }

    if (!v10[2])
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    result = (*(*(v0 + 280) + 16))(*(v0 + 296), v10 + ((*(*(v0 + 280) + 80) + 32) & ~*(*(v0 + 280) + 80)), *(v0 + 272));
    v50 = v10[2];
    if (!v50)
    {
LABEL_59:
      __break(1u);
      return result;
    }

    v51 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v10;
    if (!v51 || (v50 - 1) > v10[3] >> 1)
    {
      v10 = sub_100040DE8(v51, v50, 1, v10);
      *(v0 + 80) = v10;
    }

    *(v0 + 544) = v10;
    sub_100063530(0, 1, 0, &type metadata accessor for Album);
    v52 = swift_task_alloc();
    *(v0 + 552) = v52;
    *v52 = v0;
    v52[1] = sub_10005DF20;
    v38 = *(v0 + 296);
    v39 = *(v0 + 144);
  }

  return sub_100060F28(v39, v38);
}

uint64_t sub_10005FDAC()
{
  (*(v0[56] + 8))(v0[57], v0[55]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10005FF5C()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[52];
  (*(v0[47] + 8))(v0[48], v0[46]);
  (*(v2 + 8))(v1, v3);
  (*(v0[56] + 8))(v0[57], v0[55]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100060144(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD38, &unk_10057F0D0);
  v2[10] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD40, &unk_10057B740);
  v2[11] = swift_task_alloc();
  v3 = sub_10056D5A8();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  type metadata accessor for ArtworkImage.Placeholder(0);
  v2[15] = swift_task_alloc();
  sub_100009DCC(&unk_1006DFD20, &unk_10057B720);
  v2[16] = swift_task_alloc();
  v4 = sub_10056C8A8();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_100060378, 0, 0);
}

uint64_t sub_100060378()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  *(v0 + 16) = sub_1005721E8();
  *(v0 + 24) = v3;
  *(v0 + 32) = sub_100572168();
  *(v0 + 40) = v4;
  v5 = sub_1005721A8();
  sub_1000B30D8(v5, v1, v6);

  sub_1005722B8();
  v7 = sub_100571E58();
  *(v0 + 160) = v7;
  v8 = *(v7 - 8);
  *(v0 + 168) = v8;
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_10001036C(*(v0 + 128), &unk_1006DFD20, &unk_10057B720);
    *(v0 + 192) = 0;
    v9 = *(v0 + 16);
    v10 = *(v0 + 24);
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v13 = *(v0 + 96);
    v14 = *(v0 + 104);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);
    *(v0 + 200) = vextq_s8(*(v0 + 32), *(v0 + 32), 8uLL);
    *(v0 + 216) = v10;
    *(v0 + 224) = v9;
    sub_100572148();
    v17 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
    (*(*(v17 - 8) + 56))(v12, 0, 11, v17);
    *(v0 + 232) = sub_1005721A8();
    *(v0 + 240) = v18;
    *(v0 + 248) = sub_100572158();
    *(v0 + 256) = v19;
    sub_1005720C8();
    *(v0 + 264) = sub_10056D578();
    *(v0 + 272) = v20;
    (*(v14 + 8))(v11, v13);
    sub_100009DCC(&qword_1006DFD48, &unk_10057F0E0);
    v21 = swift_allocObject();
    *(v0 + 280) = v21;
    *(v21 + 16) = xmmword_10057B500;
    sub_100572068();
    *(v21 + 32) = TextBadge.init(for:isPlayable:)(v16, 1);
    sub_100572078();
    v22 = sub_10056D558();
    (*(*(v22 - 8) + 56))(v15, 0, 1, v22);
    *(v21 + 33) = TextBadge.init(for:)(v15);
    v23 = swift_task_alloc();
    *(v0 + 288) = v23;
    *v23 = v0;
    v23[1] = sub_100060A70;

    return sub_100074DBC();
  }

  else
  {
    if (*DeviceCapabilities.deviceType.unsafeMutableAddressor() == 2)
    {
      v25 = 140.0;
    }

    else
    {
      v25 = 125.0;
    }

    v26 = swift_task_alloc();
    *(v0 + 176) = v26;
    *v26 = v0;
    v26[1] = sub_1000606EC;

    return sub_10003E58C(v25);
  }
}

uint64_t sub_1000606EC(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 128);
  *(*v1 + 184) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_10006084C, 0, 0);
}

uint64_t sub_10006084C(uint64_t a1)
{
  *(v1 + 192) = *(v1 + 184);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  *(v1 + 200) = vextq_s8(*(v1 + 32), *(v1 + 32), 8uLL);
  *(v1 + 216) = v3;
  *(v1 + 224) = v2;
  sub_100572148();
  v10 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
  (*(*(v10 - 8) + 56))(v5, 0, 11, v10);
  *(v1 + 232) = sub_1005721A8();
  *(v1 + 240) = v11;
  *(v1 + 248) = sub_100572158();
  *(v1 + 256) = v12;
  sub_1005720C8();
  *(v1 + 264) = sub_10056D578();
  *(v1 + 272) = v13;
  (*(v7 + 8))(v4, v6);
  sub_100009DCC(&qword_1006DFD48, &unk_10057F0E0);
  v14 = swift_allocObject();
  *(v1 + 280) = v14;
  *(v14 + 16) = xmmword_10057B500;
  sub_100572068();
  *(v14 + 32) = TextBadge.init(for:isPlayable:)(v9, 1);
  sub_100572078();
  v15 = sub_10056D558();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  *(v14 + 33) = TextBadge.init(for:)(v8);
  v16 = swift_task_alloc();
  *(v1 + 288) = v16;
  *v16 = v1;
  v16[1] = sub_100060A70;

  return sub_100074DBC();
}

uint64_t sub_100060A70(char a1)
{
  *(*v1 + 296) = a1;

  return _swift_task_switch(sub_100060B70, 0, 0);
}

uint64_t sub_100060B70()
{
  v34 = *(v0 + 296);
  v32 = *(v0 + 272);
  v33 = *(v0 + 280);
  v30 = *(v0 + 256);
  v31 = *(v0 + 264);
  v28 = *(v0 + 240);
  v29 = *(v0 + 248);
  v27 = *(v0 + 232);
  v24 = *(v0 + 216);
  v25 = *(v0 + 224);
  v22 = *(v0 + 200);
  v23 = *(v0 + 208);
  v37 = *(v0 + 192);
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v26 = *(v0 + 120);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v36 = *(v0 + 56);
  v7 = sub_10056CAA8();
  v8 = *(*(v7 - 8) + 56);
  v8(v5, 1, 1, v7);
  v8(v4, 1, 1, v7);
  v9 = type metadata accessor for WidgetMusicItem(0);
  v35 = v9[25];
  *&v6[v35] = 0;
  *&v6[v9[26]] = _swiftEmptyArrayStorage;
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = v25;
  *(v6 + 3) = v24;
  *(v6 + 4) = v23;
  *(v6 + 5) = v22;
  (*(v1 + 16))(&v6[v9[7]], v2, v3);
  sub_10003CEF4(v26, &v6[v9[23]], type metadata accessor for ArtworkImage.Placeholder);
  *&v6[v9[24]] = 0x3FF0000000000000;
  v6[v9[8]] = 8;
  v10 = &v6[v9[9]];
  *v10 = v27;
  *(v10 + 1) = v28;
  v11 = &v6[v9[10]];
  *v11 = v29;
  *(v11 + 1) = v30;
  v12 = &v6[v9[11]];
  *v12 = v31;
  *(v12 + 1) = v32;
  v13 = &v6[v9[12]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v6[v9[13]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v6[v9[14]];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v6[v9[15]] = v33;
  v6[v9[16]] = v34;
  sub_10000CC8C(v5, &v6[v9[17]], &unk_1006E1E90, &qword_10057C550);
  sub_10000CC8C(v4, &v6[v9[18]], &unk_1006E1E90, &qword_10057C550);
  v16 = &v6[v9[19]];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v6[v9[20]] = _swiftEmptyArrayStorage;
  v17 = &v6[v9[21]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v17[24] = 1;
  v18 = &v6[v9[22]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v18[24] = 1;
  sub_1000396D8(_swiftEmptyArrayStorage);
  v19 = sub_1005722D8();
  (*(*(v19 - 8) + 8))(v36, v19);
  sub_10001036C(v4, &unk_1006E1E90, &qword_10057C550);
  sub_10001036C(v5, &unk_1006E1E90, &qword_10057C550);
  sub_10006367C(v26, type metadata accessor for ArtworkImage.Placeholder);
  (*(v1 + 8))(v2, v3);
  *&v6[v35] = v37;

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100060F28(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD38, &unk_10057F0D0);
  v2[10] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD40, &unk_10057B740);
  v2[11] = swift_task_alloc();
  v3 = sub_10056D5A8();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  type metadata accessor for ArtworkImage.Placeholder(0);
  v2[15] = swift_task_alloc();
  sub_100009DCC(&unk_1006DFD20, &unk_10057B720);
  v2[16] = swift_task_alloc();
  v4 = sub_10056C8A8();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_10006115C, 0, 0);
}

uint64_t sub_10006115C()
{
  v1 = v0[19];
  v2 = v0[16];
  v0[2] = sub_100571B48();
  v0[3] = v3;
  v0[4] = sub_100571AD8();
  v0[5] = v4;
  v5 = sub_100571B28();
  sub_1000B30D8(v5, v1, v6);

  sub_100571B68();
  v7 = sub_100571E58();
  v0[20] = v7;
  v8 = *(v7 - 8);
  v0[21] = v8;
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_10001036C(v0[16], &unk_1006DFD20, &unk_10057B720);
    v9 = v0[4];
    v10 = v0[5];
    v11 = v0[2];
    v12 = v0[3];
    v14 = v0[14];
    v13 = v0[15];
    v15 = v0[12];
    v16 = v0[13];
    v17 = v0[10];
    v18 = v0[11];
    v0[24] = 0;
    v0[25] = v10;
    v0[26] = v9;
    v0[27] = v12;
    v0[28] = v11;
    v19 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
    (*(*(v19 - 8) + 56))(v13, 1, 11, v19);
    v0[29] = sub_100571B28();
    v0[30] = v20;
    v0[31] = sub_100571AC8();
    v0[32] = v21;
    sub_100571A98();
    v0[33] = sub_10056D578();
    v0[34] = v22;
    (*(v16 + 8))(v14, v15);
    sub_100009DCC(&qword_1006DFD48, &unk_10057F0E0);
    v23 = swift_allocObject();
    v0[35] = v23;
    *(v23 + 16) = xmmword_10057B500;
    sub_100571B08();
    *(v23 + 32) = TextBadge.init(for:isPlayable:)(v18, 1);
    sub_100571A88();
    v24 = sub_10056D558();
    (*(*(v24 - 8) + 56))(v17, 0, 1, v24);
    *(v23 + 33) = TextBadge.init(for:)(v17);
    v25 = swift_task_alloc();
    v0[36] = v25;
    *v25 = v0;
    v25[1] = sub_10006183C;

    return sub_100075004();
  }

  else
  {
    if (*DeviceCapabilities.deviceType.unsafeMutableAddressor() == 2)
    {
      v27 = 140.0;
    }

    else
    {
      v27 = 125.0;
    }

    v28 = swift_task_alloc();
    v0[22] = v28;
    *v28 = v0;
    v28[1] = sub_1000614C8;

    return sub_10003E58C(v27);
  }
}

uint64_t sub_1000614C8(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 128);
  *(*v1 + 184) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_100061628, 0, 0);
}

uint64_t sub_100061628()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v0[24] = v0[23];
  v0[25] = v2;
  v0[26] = v1;
  v0[27] = v4;
  v0[28] = v3;
  v11 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
  (*(*(v11 - 8) + 56))(v5, 1, 11, v11);
  v0[29] = sub_100571B28();
  v0[30] = v12;
  v0[31] = sub_100571AC8();
  v0[32] = v13;
  sub_100571A98();
  v0[33] = sub_10056D578();
  v0[34] = v14;
  (*(v8 + 8))(v6, v7);
  sub_100009DCC(&qword_1006DFD48, &unk_10057F0E0);
  v15 = swift_allocObject();
  v0[35] = v15;
  *(v15 + 16) = xmmword_10057B500;
  sub_100571B08();
  *(v15 + 32) = TextBadge.init(for:isPlayable:)(v10, 1);
  sub_100571A88();
  v16 = sub_10056D558();
  (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  *(v15 + 33) = TextBadge.init(for:)(v9);
  v17 = swift_task_alloc();
  v0[36] = v17;
  *v17 = v0;
  v17[1] = sub_10006183C;

  return sub_100075004();
}

uint64_t sub_10006183C(char a1)
{
  *(*v1 + 296) = a1;

  return _swift_task_switch(sub_10006193C, 0, 0);
}

uint64_t sub_10006193C()
{
  v34 = *(v0 + 296);
  v32 = *(v0 + 272);
  v33 = *(v0 + 280);
  v30 = *(v0 + 256);
  v31 = *(v0 + 264);
  v28 = *(v0 + 240);
  v29 = *(v0 + 248);
  v27 = *(v0 + 232);
  v24 = *(v0 + 216);
  v25 = *(v0 + 224);
  v22 = *(v0 + 200);
  v23 = *(v0 + 208);
  v37 = *(v0 + 192);
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v26 = *(v0 + 120);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v36 = *(v0 + 56);
  v7 = sub_10056CAA8();
  v8 = *(*(v7 - 8) + 56);
  v8(v5, 1, 1, v7);
  v8(v4, 1, 1, v7);
  v9 = type metadata accessor for WidgetMusicItem(0);
  v35 = v9[25];
  *&v6[v35] = 0;
  *&v6[v9[26]] = _swiftEmptyArrayStorage;
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = v25;
  *(v6 + 3) = v24;
  *(v6 + 4) = v23;
  *(v6 + 5) = v22;
  (*(v1 + 16))(&v6[v9[7]], v2, v3);
  sub_10003CEF4(v26, &v6[v9[23]], type metadata accessor for ArtworkImage.Placeholder);
  *&v6[v9[24]] = 0x3FF0000000000000;
  v6[v9[8]] = 8;
  v10 = &v6[v9[9]];
  *v10 = v27;
  *(v10 + 1) = v28;
  v11 = &v6[v9[10]];
  *v11 = v29;
  *(v11 + 1) = v30;
  v12 = &v6[v9[11]];
  *v12 = v31;
  *(v12 + 1) = v32;
  v13 = &v6[v9[12]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v6[v9[13]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v6[v9[14]];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v6[v9[15]] = v33;
  v6[v9[16]] = v34;
  sub_10000CC8C(v5, &v6[v9[17]], &unk_1006E1E90, &qword_10057C550);
  sub_10000CC8C(v4, &v6[v9[18]], &unk_1006E1E90, &qword_10057C550);
  v16 = &v6[v9[19]];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v6[v9[20]] = _swiftEmptyArrayStorage;
  v17 = &v6[v9[21]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v17[24] = 1;
  v18 = &v6[v9[22]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v18[24] = 1;
  sub_1000396D8(_swiftEmptyArrayStorage);
  v19 = sub_100571B78();
  (*(*(v19 - 8) + 8))(v36, v19);
  sub_10001036C(v4, &unk_1006E1E90, &qword_10057C550);
  sub_10001036C(v5, &unk_1006E1E90, &qword_10057C550);
  sub_10006367C(v26, type metadata accessor for ArtworkImage.Placeholder);
  (*(v1 + 8))(v2, v3);
  *&v6[v35] = v37;

  v20 = *(v0 + 8);

  return v20();
}

void sub_100061CF4(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for WidgetMusicItem(0);
  v5 = __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    v5.n128_u64[0] = 136446210;
    v20 = v5;
    v21 = v10;
    v22 = OBJC_IVAR____TtC12MusicWidgets32RecentlyPlayedWidgetDataProvider_logger;
    do
    {
      sub_10003CEF4(v9, v7, type metadata accessor for WidgetMusicItem);
      v18 = sub_10056DF68();
      v19 = sub_100573448();
      if (os_log_type_enabled(v18, v19))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v23 = v12;
        *v11 = v20.n128_u32[0];
        v13 = sub_1000397E0();
        v14 = v2;
        v16 = v15;
        sub_10006367C(v7, type metadata accessor for WidgetMusicItem);
        v17 = sub_10008190C(v13, v16, &v23);
        v2 = v14;

        *(v11 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v18, v19, "ITEM %{public}s", v11, 0xCu);
        sub_100010474(v12);

        v10 = v21;
      }

      else
      {

        sub_10006367C(v7, type metadata accessor for WidgetMusicItem);
      }

      v9 += v10;
      --v8;
    }

    while (v8);
  }
}

uint64_t sub_100061F34()
{

  v1 = OBJC_IVAR____TtC12MusicWidgets32RecentlyPlayedWidgetDataProvider_logger;
  v2 = sub_10056DF88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_100062028(uint64_t a1)
{
  sub_1000620B8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000620B8(uint64_t a1)
{
  if (!qword_1006E29E0)
  {
    v2 = sub_100010324(&qword_1006DFF98, &qword_10057BB20);
    v3 = sub_1000621AC(&qword_1006DFFC0, &qword_1006DFFC8, &unk_10057DDCC, &protocol conformance descriptor for <A> [A]);
    v4 = sub_1000621AC(&qword_1006DFFA0, &qword_1006DFFA8, &unk_10057DDA4, &protocol conformance descriptor for <A> [A]);
    v5 = type metadata accessor for FileBacked(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1006E29E0);
    }
  }
}

uint64_t sub_1000621AC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100010324(&qword_1006DFF98, &qword_10057BB20);
    sub_1000636DC(a2, type metadata accessor for WidgetMusicItem, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100062248@<X0>(uint64_t a1@<X8>)
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
  v18 = sub_100570CC8();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin();
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, v52, v18, v20);
  v23 = (*(v19 + 88))(v22, v18);
  if (v23 == enum case for RecentlyPlayedMusicItem.album(_:))
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

  if (v23 == enum case for RecentlyPlayedMusicItem.playlist(_:))
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

  if (v23 != enum case for RecentlyPlayedMusicItem.station(_:))
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

uint64_t sub_100062A3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1005722D8();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100570CC8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v2, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == enum case for RecentlyPlayedMusicItem.album(_:))
  {
    v14 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
    (*(*(v14 - 8) + 56))(a1, 1, 11, v14);
    return (*(v9 + 8))(v12, v8);
  }

  else if (v13 == enum case for RecentlyPlayedMusicItem.playlist(_:))
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
    v17 = enum case for RecentlyPlayedMusicItem.station(_:);
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

void *sub_100062D70()
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
  v15 = sub_100570CC8();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin();
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v1, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == enum case for RecentlyPlayedMusicItem.album(_:))
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

  else if (v20 == enum case for RecentlyPlayedMusicItem.playlist(_:))
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

  else if (v20 == enum case for RecentlyPlayedMusicItem.station(_:))
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

uint64_t sub_100063384(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000C8CC(a1, v5);
  return a4(v5, v6);
}

void *sub_1000633D4(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_100063448@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100063478(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100010324(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000634CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetMusicItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100063530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10006367C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000636DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006372C()
{
  v0 = sub_10056C758();
  sub_10000C910(v0, qword_1006FC210);
  sub_10000C49C(v0, qword_1006FC210);
  return sub_10056C738();
}

uint64_t sub_100063790@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006DF9D8 != -1)
  {
    swift_once();
  }

  v2 = sub_10056C758();
  v3 = sub_10000C49C(v2, qword_1006FC210);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100063838(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100067194();
  *v4 = v2;
  v4[1] = sub_1000638E4;

  return WidgetConfigurationIntent.perform()(a2, v5);
}

uint64_t sub_1000638E4()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1000639EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100066000();
  *a1 = result;
  return result;
}

uint64_t sub_100063A14(uint64_t a1)
{
  v2 = sub_100063E98();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100063A6C(uint64_t a1)
{
  v2 = sub_100065970();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100063AB8()
{
  sub_100009DCC(&qword_1006E2B88, &unk_10057F6C0);
  __chkstk_darwin();
  v2 = &v11 - v1;
  sub_100009DCC(&qword_1006E1428, &qword_10057D090);
  __chkstk_darwin();
  v4 = &v11 - v3;
  v5 = sub_10056C758();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  sub_100572868();
  __chkstk_darwin();
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  sub_100572858();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_100572848(v12);
  v13._countAndFlagsBits = v7;
  v13._object = v8;
  sub_100572838(v13);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_100572848(v14);
  sub_10056C748();
  (*(v6 + 56))(v4, 1, 1, v5);
  v9 = sub_10056C138();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_10056C148();
}

uint64_t sub_100063D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000CB98;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100063DD0(uint64_t a1)
{
  v2 = sub_100064304();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t static MusicItemID.entityIdentifier(for:)(uint64_t a1, uint64_t a2)
{

  return sub_1005713D8();
}

unint64_t sub_100063E98()
{
  result = qword_1006E2AD0;
  if (!qword_1006E2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2AD0);
  }

  return result;
}

unint64_t sub_100063EF0()
{
  result = qword_1006E2AD8;
  if (!qword_1006E2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2AD8);
  }

  return result;
}

unint64_t sub_100063F48()
{
  result = qword_1006E2AE0;
  if (!qword_1006E2AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2AE0);
  }

  return result;
}

unint64_t sub_100063FA0()
{
  result = qword_1006E2AE8;
  if (!qword_1006E2AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2AE8);
  }

  return result;
}

unint64_t sub_100064048()
{
  result = qword_1006E2AF0;
  if (!qword_1006E2AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2AF0);
  }

  return result;
}

unint64_t sub_1000640A0()
{
  result = qword_1006E2AF8;
  if (!qword_1006E2AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2AF8);
  }

  return result;
}

unint64_t sub_1000640F8()
{
  result = qword_1006E2B00;
  if (!qword_1006E2B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B00);
  }

  return result;
}

unint64_t sub_10006414C()
{
  result = qword_1006E2B08;
  if (!qword_1006E2B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B08);
  }

  return result;
}

unint64_t sub_1000641A4()
{
  result = qword_1006E2B10;
  if (!qword_1006E2B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B10);
  }

  return result;
}

unint64_t sub_1000641FC()
{
  result = qword_1006E2B18;
  if (!qword_1006E2B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B18);
  }

  return result;
}

unint64_t sub_100064254()
{
  result = qword_1006E2B20;
  if (!qword_1006E2B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B20);
  }

  return result;
}

unint64_t sub_1000642AC()
{
  result = qword_1006E2B28;
  if (!qword_1006E2B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B28);
  }

  return result;
}

unint64_t sub_100064304()
{
  result = qword_1006E2B30;
  if (!qword_1006E2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B30);
  }

  return result;
}

unint64_t sub_10006435C()
{
  result = qword_1006E2B38;
  if (!qword_1006E2B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B38);
  }

  return result;
}

unint64_t sub_1000643F8()
{
  result = qword_1006E2B50;
  if (!qword_1006E2B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B50);
  }

  return result;
}

uint64_t Actions.GoToArtist.Context.menuItemSubtitle.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;

  return v3;
}

uint64_t sub_10006447C@<X0>(uint64_t *a3@<X8>)
{

  result = sub_1005713D8();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1000644C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_100009DCC(&qword_1006E1F60, &qword_10057E420);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E1F30, &qword_10057E3F0);
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  sub_100009DCC(&qword_1006E1428, &qword_10057D090);
  v3[24] = swift_task_alloc();
  v6 = sub_100009DCC(&qword_1006E2B80, qword_10057F570);
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[27] = v7;
  v8 = swift_task_alloc();
  v3[28] = v8;
  *v8 = v3;
  v8[1] = sub_1000646FC;

  return sub_100064DB0(v7);
}

uint64_t sub_1000646FC()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_100064D00;
  }

  else
  {
    v2 = sub_100064810;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100064810()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v4 = sub_10056C128();
  (*(v1 + 8))(v2, v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v0[20];
    v7 = v0[16];
    result = sub_1000414D4(0, v5, 0);
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v42 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v45 = v4 + v42;
    v50 = (v7 + 8);
    v52 = v7;
    v51 = (v7 + 32);
    v46 = v6;
    v43 = v5;
    v44 = v4;
    v40 = (v6 + 32);
    v41 = (v6 + 8);
    while (v9 < *(v4 + 16))
    {
      v48 = v9;
      v49 = v10;
      v12 = v0[21];
      v11 = v0[22];
      v13 = v0[19];
      v47 = *(v46 + 72);
      v14 = *(v46 + 16);
      v14(v11, v45 + v47 * v9, v13);
      v14(v12, v11, v13);
      result = sub_10056C0E8();
      v15 = result;
      v53 = *(result + 16);
      if (v53)
      {
        v16 = 0;
        while (v16 < *(v15 + 16))
        {
          v17 = v0[14];
          v18 = v0[13];
          v19 = (*(v52 + 80) + 32) & ~*(v52 + 80);
          v20 = *(v52 + 72);
          (*(v52 + 16))(v0[18], v15 + v19 + v20 * v16, v0[15]);
          sub_10056C028();

          v21 = v0[4];
          v22 = v0[5];

          v0[8] = v21;
          v0[9] = v22;
          v0[10] = v18;
          v0[11] = v17;
          sub_10001B550();
          LOBYTE(v21) = sub_100573CF8();

          if (v21)
          {
            v23 = *v51;
            (*v51)(v0[17], v0[18], v0[15]);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100041514(0, _swiftEmptyArrayStorage[2] + 1, 1);
            }

            v25 = _swiftEmptyArrayStorage[2];
            v24 = _swiftEmptyArrayStorage[3];
            if (v25 >= v24 >> 1)
            {
              sub_100041514((v24 > 1), v25 + 1, 1);
            }

            v26 = v0[17];
            v27 = v0[15];
            _swiftEmptyArrayStorage[2] = v25 + 1;
            result = v23(_swiftEmptyArrayStorage + v19 + v25 * v20, v26, v27);
          }

          else
          {
            result = (*v50)(v0[18], v0[15]);
          }

          if (v53 == ++v16)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

LABEL_15:
      v29 = v0[22];
      v28 = v0[23];
      v30 = v0[21];
      v31 = v0[19];

      sub_10056C0F8();
      (*v41)(v29, v31);
      v32 = *v40;
      (*v40)(v28, v30, v31);
      v10 = v49;
      v34 = v49[2];
      v33 = v49[3];
      v4 = v44;
      if (v34 >= v33 >> 1)
      {
        sub_1000414D4((v33 > 1), v34 + 1, 1);
        v10 = v49;
      }

      v35 = v0[23];
      v36 = v0[19];
      v10[2] = v34 + 1;
      result = v32(v10 + v42 + v34 * v47, v35, v36);
      v9 = v48 + 1;
      if (v48 + 1 == v43)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    v37 = v0[24];
    v38 = sub_10056C758();
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
    sub_1000642AC();
    sub_10056C118();

    v39 = v0[1];

    return v39();
  }

  return result;
}

uint64_t sub_100064D00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100064DB0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100009DCC(&qword_1006E1F30, &qword_10057E3F0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_100009DCC(&qword_1006E1428, &qword_10057D090);
  v1[6] = swift_task_alloc();
  v1[7] = *(sub_100009DCC(&qword_1006E1F40, &qword_10057E400) - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[10] = v3;
  *v3 = v1;
  v3[1] = sub_100064F84;

  return sub_10006D82C(&unk_10057F6A0, 0, &off_100680200);
}

uint64_t sub_100064F84(uint64_t a1)
{
  *(*v2 + 88) = a1;

  if (v1)
  {
  }

  else
  {

    return _swift_task_switch(sub_1000650AC, 0, 0);
  }
}

uint64_t sub_1000650AC()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[7];
    v4 = v0[4];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v20 = *(v3 + 72);
    v6 = (v4 + 32);
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v9 = v0[8];
      v8 = v0[9];
      v10 = v0[3];
      sub_10006704C(v5, v8);
      sub_1000670BC(v8, v9);
      if ((*(v4 + 48))(v9, 1, v10) == 1)
      {
        sub_10006712C(v0[8]);
      }

      else
      {
        v11 = *v6;
        (*v6)(v0[5], v0[8], v0[3]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_100040E38(0, *(v7 + 2) + 1, 1, v7);
        }

        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        if (v13 >= v12 >> 1)
        {
          v7 = sub_100040E38((v12 > 1), v13 + 1, 1, v7);
        }

        v14 = v0[5];
        v15 = v0[3];
        *(v7 + 2) = v13 + 1;
        v11(&v7[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13], v14, v15);
      }

      v5 += v20;
      --v2;
    }

    while (v2);
  }

  v16 = v0[6];
  v17 = sub_10056C758();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1000642AC();
  sub_10056C118();

  v18 = v0[1];

  return v18();
}

uint64_t sub_100065318(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  sub_10056C758();
  *(v2 + 24) = swift_task_alloc();
  type metadata accessor for WidgetChartDiskCache(0);
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 72) = *a2;

  return _swift_task_switch(sub_1000653E0, 0, 0);
}

uint64_t sub_1000653E0()
{
  if (qword_1006DF8A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = qword_1006FC038;
  v3 = OBJC_IVAR____TtC12MusicWidgets27TopChartsWidgetDataProvider_cache;
  *(v0 + 40) = qword_1006FC038;
  *(v0 + 48) = v3;
  v4 = *(v0 + 72);
  sub_100066F8C(v2 + v3, v1);
  v5 = sub_100006494(v4);
  sub_100066FF0(v1);
  if (v5)
  {
    sub_100003320(*(v0 + 72));
    sub_10056C738();
    sub_1000642AC();
    sub_10056C108();
    v6 = *(v0 + 16);
    v7 = sub_100009DCC(&qword_1006E1F30, &qword_10057E3F0);
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    *(v0 + 56) = v10;
    *v10 = v0;
    v10[1] = sub_1000655C0;
    v11 = *(v0 + 72);

    return sub_10000D9B4(v11);
  }
}

uint64_t sub_1000655C0(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return _swift_task_switch(sub_1000656C0, 0, 0);
}

uint64_t sub_1000656C0()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 72);
    sub_100066F8C(*(v0 + 40) + *(v0 + 48), v2);

    sub_100006FEC(v3, v1);

    sub_100066FF0(v2);
    sub_100003320(*(v0 + 72));
    sub_10056C738();
    sub_1000642AC();
    sub_10056C108();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = *(v0 + 16);
  v6 = sub_100009DCC(&qword_1006E1F30, &qword_10057E3F0);
  (*(*(v6 - 8) + 56))(v5, v4, 1, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10006580C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000CB98;

  return sub_1000644C8(a1, a2, a3);
}

unint64_t sub_1000658C0()
{
  result = qword_1006E2B58;
  if (!qword_1006E2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B58);
  }

  return result;
}

unint64_t sub_100065918()
{
  result = qword_1006E2B60;
  if (!qword_1006E2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B60);
  }

  return result;
}

unint64_t sub_100065970()
{
  result = qword_1006E2B68;
  if (!qword_1006E2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B68);
  }

  return result;
}

uint64_t sub_1000659C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000671F8;

  return sub_100066304(a1);
}

uint64_t sub_100065A6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return sub_100064DB0(a1);
}

uint64_t sub_100065B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100065BC4;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100065BC4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_100065CC8()
{
  result = qword_1006E2B70;
  if (!qword_1006E2B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B70);
  }

  return result;
}

uint64_t sub_100065D60(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10006414C();
  *v5 = v2;
  v5[1] = sub_1000116F0;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100065E14(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_100065EC0;

  return sub_100066AC8(v1 + 16);
}

uint64_t sub_100065EC0()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v7 = *v0;

  v3 = v1[1];
  v4 = v1[3];
  v2[1] = v1[2];
  v2[2] = v4;
  *v2 = v3;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100066000()
{
  v15 = sub_10056C178();
  v0 = *(v15 - 8);
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
  sub_100009DCC(&qword_1006E2B90, &qword_10057F6D0);
  sub_10056C738();
  (*(v10 + 56))(v8, 1, 1, v9);
  v11 = sub_10056C058();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = *(*(v11 - 8) + 56);
  v12(v6, 1, 1, v11);
  v12(v4, 1, 1, v11);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v15);
  sub_10006414C();
  return sub_10056C0A8();
}

uint64_t sub_100066304(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for WidgetChartDiskCache(0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100066394, 0, 0);
}

uint64_t sub_100066394(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 16) + 16);
  *(v2 + 32) = v3;
  if (v3)
  {
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      *(v2 + 40) = v4;
      *(v2 + 48) = v5;
      v6 = *(v2 + 16) + 16 * v4;
      *(v2 + 56) = *(v6 + 32);
      *(v2 + 64) = *(v6 + 40);
      v7 = qword_1006DF8A8;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = 0;
      v9 = OBJC_IVAR____TtC12MusicWidgets27TopChartsWidgetDataProvider_cache;
      *(v2 + 72) = qword_1006FC038;
      *(v2 + 80) = v9;
LABEL_6:
      *(v2 + 88) = v8;
      v11 = *(v2 + 72);
      v10 = *(v2 + 80);
      v12 = *(v2 + 24);
      v13 = *(&off_100680228 + v8 + 32);
      *(v2 + 112) = v13;
      sub_100066F8C(v11 + v10, v12);
      v14 = sub_100006494(v13);
      sub_100066FF0(v12);
      if (!v14)
      {
        break;
      }

      v15 = (v14 + 72);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v18 = *(v15 - 5);
        v17 = *(v15 - 4);
        v20 = *(v15 - 3);
        v19 = *(v15 - 2);
        v21 = *(v15 - 1);
        v22 = *v15;
        if (v18 == *(v2 + 56) && v17 == *(v2 + 64))
        {
          v18 = *(v2 + 56);
LABEL_18:

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v5 = *(v2 + 48);
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v5 = sub_100040A04(0, *(v5 + 2) + 1, 1, *(v2 + 48));
          }

          v26 = *(v5 + 2);
          v25 = *(v5 + 3);
          if (v26 >= v25 >> 1)
          {
            v5 = sub_100040A04((v25 > 1), v26 + 1, 1, v5);
          }

          *(v5 + 2) = v26 + 1;
          v27 = &v5[48 * v26];
          *(v27 + 4) = v18;
          *(v27 + 5) = v17;
          *(v27 + 6) = v20;
          *(v27 + 7) = v19;
          *(v27 + 8) = v21;
          *(v27 + 9) = v22;
          goto LABEL_23;
        }

        v15 += 6;
        if (sub_100574498())
        {
          goto LABEL_18;
        }
      }

      v8 = *(v2 + 88) + 1;
      if (*(v2 + 88) != 2)
      {
        goto LABEL_6;
      }

      v5 = *(v2 + 48);
LABEL_23:
      v4 = *(v2 + 40) + 1;
      if (v4 == *(v2 + 32))
      {
        goto LABEL_29;
      }
    }

    v28 = swift_task_alloc();
    *(v2 + 96) = v28;
    *v28 = v2;
    v28[1] = sub_1000666A0;

    return sub_10000D9B4(v13);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
LABEL_29:

    v30 = *(v2 + 8);

    return v30(v5);
  }
}

uint64_t sub_1000666A0(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_1000667A0, 0, 0);
}

uint64_t sub_1000667A0()
{
  v1 = *(v0 + 104);
  if (!v1)
  {
LABEL_12:
    v13 = *(v0 + 88) + 1;
    if (*(v0 + 88) != 2)
    {
      v15 = *(v0 + 72);
      v16 = *(v0 + 80);
      goto LABEL_25;
    }

    v14 = *(v0 + 48);
    goto LABEL_21;
  }

  v2 = *(v0 + 24);
  v3 = *(v0 + 112);
  sub_100066F8C(*(v0 + 72) + *(v0 + 80), v2);

  sub_100006FEC(v3, v1);

  sub_100066FF0(v2);
  while (1)
  {
    v4 = (v1 + 72);
    v5 = *(v1 + 16) + 1;
    while (1)
    {
      if (!--v5)
      {

        goto LABEL_12;
      }

      v7 = *(v4 - 5);
      v6 = *(v4 - 4);
      v9 = *(v4 - 3);
      v8 = *(v4 - 2);
      v11 = *(v4 - 1);
      v10 = *v4;
      if (v7 == *(v0 + 56) && v6 == *(v0 + 64))
      {
        break;
      }

      v4 += 6;
      if (sub_100574498())
      {
        goto LABEL_16;
      }
    }

    v7 = *(v0 + 56);
LABEL_16:

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v0 + 48);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_100040A04(0, *(v14 + 2) + 1, 1, *(v0 + 48));
    }

    v19 = *(v14 + 2);
    v18 = *(v14 + 3);
    if (v19 >= v18 >> 1)
    {
      v14 = sub_100040A04((v18 > 1), v19 + 1, 1, v14);
    }

    *(v14 + 2) = v19 + 1;
    v20 = &v14[48 * v19];
    *(v20 + 4) = v7;
    *(v20 + 5) = v6;
    *(v20 + 6) = v9;
    *(v20 + 7) = v8;
    *(v20 + 8) = v11;
    *(v20 + 9) = v10;
LABEL_21:
    v21 = *(v0 + 40) + 1;
    if (v21 == *(v0 + 32))
    {
      break;
    }

    *(v0 + 40) = v21;
    *(v0 + 48) = v14;
    v22 = *(v0 + 16) + 16 * v21;
    *(v0 + 56) = *(v22 + 32);
    *(v0 + 64) = *(v22 + 40);
    v23 = qword_1006DF8A8;

    if (v23 != -1)
    {
      swift_once();
    }

    v13 = 0;
    v15 = qword_1006FC038;
    v16 = OBJC_IVAR____TtC12MusicWidgets27TopChartsWidgetDataProvider_cache;
    *(v0 + 72) = qword_1006FC038;
    *(v0 + 80) = v16;
LABEL_25:
    *(v0 + 88) = v13;
    v24 = *(v0 + 24);
    v25 = *(&off_100680228 + v13 + 32);
    *(v0 + 112) = v25;
    sub_100066F8C(v15 + v16, v24);
    v1 = sub_100006494(v25);
    sub_100066FF0(v24);
    if (!v1)
    {
      v26 = swift_task_alloc();
      *(v0 + 96) = v26;
      *v26 = v0;
      v26[1] = sub_1000666A0;

      return sub_10000D9B4(v25);
    }
  }

  v28 = *(v0 + 8);

  return v28(v14);
}

uint64_t sub_100066AC8(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for WidgetChartDiskCache(0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100066B58, 0, 0);
}

uint64_t sub_100066B58()
{
  if (qword_1006DF8A8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = qword_1006FC038;
  v3 = OBJC_IVAR____TtC12MusicWidgets27TopChartsWidgetDataProvider_cache;
  v0[4] = qword_1006FC038;
  v0[5] = v3;
  sub_100066F8C(v2 + v3, v1);
  v4 = sub_100006494(1);
  sub_100066FF0(v1);
  if (v4)
  {
    sub_1000642AC();
    v5 = sub_100572CF8();

    if (v5[2])
    {
      v7 = v5[4];
      v6 = v5[5];
      v9 = v5[6];
      v8 = v5[7];
      v11 = v5[8];
      v10 = v5[9];
    }

    else
    {

      v7 = 0;
      v6 = 0;
      v9 = 0;
      v8 = 0;
      v11 = 0;
      v10 = 0;
    }

    v14 = v0[2];

    *v14 = v7;
    v14[1] = v6;
    v14[2] = v9;
    v14[3] = v8;
    v14[4] = v11;
    v14[5] = v10;
    v15 = v0[1];

    return v15();
  }

  else
  {
    v12 = swift_task_alloc();
    v0[6] = v12;
    *v12 = v0;
    v12[1] = sub_100066D3C;

    return sub_10000D9B4(1);
  }
}

uint64_t sub_100066D3C(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_100066E3C, 0, 0);
}

uint64_t sub_100066E3C()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[3];
    sub_100066F8C(v0[4] + v0[5], v2);

    sub_100006FEC(1, v1);

    sub_100066FF0(v2);
    sub_1000642AC();
    v3 = sub_100572CF8();

    if (v3[2])
    {
      v5 = v3[4];
      v4 = v3[5];
      v6 = v3[6];
      v1 = v3[7];
      v8 = v3[8];
      v7 = v3[9];

      goto LABEL_7;
    }

    v5 = 0;
    v4 = 0;
    v6 = 0;
    v1 = 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v6 = 0;
  }

  v8 = 0;
  v7 = 0;
LABEL_7:
  v9 = v0[2];

  *v9 = v5;
  v9[1] = v4;
  v9[2] = v6;
  v9[3] = v1;
  v9[4] = v8;
  v9[5] = v7;
  v10 = v0[1];

  return v10();
}

uint64_t sub_100066F8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetChartDiskCache(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100066FF0(uint64_t a1)
{
  v2 = type metadata accessor for WidgetChartDiskCache(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006704C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E1F40, &qword_10057E400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000670BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E1F40, &qword_10057E400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006712C(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E1F40, &qword_10057E400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100067194()
{
  result = qword_1006E2B98;
  if (!qword_1006E2B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2B98);
  }

  return result;
}

uint64_t sub_1000671FC()
{
  sub_10056CC38();
  __chkstk_darwin();
  sub_100572888();
  __chkstk_darwin();
  sub_100572818();
  sub_10056CBC8();
  result = sub_100572948();
  qword_1006FC228 = result;
  unk_1006FC230 = v1;
  return result;
}

uint64_t sub_100067320(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10056CAA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[6];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_1005725B8();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1000674B4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10056CAA8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v15 = sub_1005725B8();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[9];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_100067654(uint64_t a1)
{
  sub_10056CAA8();
  if (v1 <= 0x3F)
  {
    sub_100016918(319, &qword_1006E0688, &type metadata for NowPlayingDataProvider.PlayerState);
    if (v2 <= 0x3F)
    {
      sub_100067800(319, &qword_1006E0690, type metadata accessor for WidgetMusicItem, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100067800(319, &qword_1006DFF08, type metadata accessor for WidgetMusicItem, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_100067800(319, &qword_1006E06A0, sub_1000168CC, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1005725B8();
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

void sub_100067800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100067878(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056DF88();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000678F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056DF88();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100067988()
{
  v0 = sub_10056CAA8();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v5 = &v13 - v4;
  v6 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  sub_10000C910(v6, qword_1006FC238);
  v7 = sub_10000C49C(v6, qword_1006FC238);
  v8 = type metadata accessor for WidgetMusicItem(0);
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_10056CA98();
  if (qword_1006DF9F0 != -1)
  {
    swift_once();
  }

  v9 = sub_1005725B8();
  v10 = sub_10000C49C(v9, qword_1006E2BA0);
  (*(*(v9 - 8) + 16))(v7 + v6[9], v10, v9);
  (*(v1 + 32))(v7, v3, v0);
  *(v7 + v6[5]) = 3;
  result = sub_10006A154(v5, v7 + v6[6]);
  *(v7 + v6[7]) = _swiftEmptyArrayStorage;
  *(v7 + v6[8]) = 0;
  v12 = (v7 + v6[10]);
  *v12 = 0;
  v12[1] = 0;
  return result;
}

unint64_t sub_100067BDC()
{
  result = qword_1006E2D20;
  if (!qword_1006E2D20)
  {
    type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2D20);
  }

  return result;
}

uint64_t sub_100067C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v6 = swift_task_alloc();
  v5[4] = v6;
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_100067D00;

  return sub_100067E8C(v6);
}

uint64_t sub_100067D00()
{

  return _swift_task_switch(sub_100067DFC, 0, 0);
}

uint64_t sub_100067DFC()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))(v1);
  sub_100069F14(v1, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100067E8C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_100067EAC, 0, 0);
}

uint64_t sub_100067EAC()
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

    v4 = v0[3];

    v5 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
    v6 = v5[6];
    v7 = type metadata accessor for WidgetMusicItem(0);
    (*(*(v7 - 8) + 56))(v4 + v6, 1, 1, v7);
    if (qword_1006DF968 != -1)
    {
      swift_once();
    }

    v9 = qword_1006FC158;
    v8 = unk_1006FC160;

    sub_10056CA98();
    if (qword_1006DF9F0 != -1)
    {
      swift_once();
    }

    v10 = v0[3];
    v11 = sub_1005725B8();
    v12 = sub_10000C49C(v11, qword_1006E2BA0);
    (*(*(v11 - 8) + 16))(v10 + v5[9], v12, v11);
    *(v10 + v5[5]) = 3;
    *(v10 + v5[7]) = _swiftEmptyArrayStorage;
    *(v10 + v5[8]) = 0;
    v13 = (v10 + v5[10]);
    *v13 = v9;
    v13[1] = v8;
    v14 = v0[1];

    return v14();
  }

  else
  {
    if (qword_1006DF9D0 != -1)
    {
      swift_once();
    }

    v16 = swift_task_alloc();
    v0[5] = v16;
    *v16 = v0;
    v16[1] = sub_100068188;

    return sub_100059400();
  }
}

uint64_t sub_100068188(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_100068408;
  }

  else
  {
    v4 = sub_10006829C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10006829C()
{
  v1 = v0[3];
  v2 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v3 = v2[6];
  v4 = type metadata accessor for WidgetMusicItem(0);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  if (qword_1006DF9F8 != -1)
  {
    swift_once();
  }

  v5 = v0[6];
  v6 = v0[3];
  v7 = sub_1005725B8();
  v8 = sub_10000C49C(v7, qword_1006E2BB8);
  (*(*(v7 - 8) + 16))(v6 + v2[9], v8, v7);
  sub_10056CA98();
  *(v6 + v2[5]) = 3;
  *(v6 + v2[7]) = v5;
  *(v6 + v2[8]) = 0;
  v9 = (v6 + v2[10]);
  *v9 = 0;
  v9[1] = 0;
  v10 = v0[1];

  return v10();
}

uint64_t sub_100068408()
{
  v22 = v0;
  swift_errorRetain();
  v1 = sub_10056DF68();
  v2 = sub_100573428();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[7];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E1C08, &qword_10057F100);
    v6 = sub_100572978();
    v8 = sub_10008190C(v6, v7, &v21);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Could not fetch items - error=%{public}s", v4, 0xCu);
    sub_100010474(v5);
  }

  v9 = v0[3];
  v10 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v11 = v10[6];
  v12 = type metadata accessor for WidgetMusicItem(0);
  (*(*(v12 - 8) + 56))(v9 + v11, 1, 1, v12);
  if (qword_1006DF980 != -1)
  {
    swift_once();
  }

  v14 = qword_1006FC188;
  v13 = unk_1006FC190;

  sub_10056CA98();
  if (qword_1006DF9F0 != -1)
  {
    swift_once();
  }

  v15 = v0[3];
  v16 = sub_1005725B8();
  v17 = sub_10000C49C(v16, qword_1006E2BA0);
  (*(*(v16 - 8) + 16))(v15 + v10[9], v17, v16);

  *(v15 + v10[5]) = 3;
  *(v15 + v10[7]) = _swiftEmptyArrayStorage;
  *(v15 + v10[8]) = 0;
  v18 = (v15 + v10[10]);
  *v18 = v14;
  v18[1] = v13;
  v19 = v0[1];

  return v19();
}

uint64_t sub_1000686E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_100009DCC(qword_1006E2D28, &qword_10057F7F0);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = sub_100009DCC(&qword_1006E0518, &unk_10057BF70);
  v6[9] = swift_task_alloc();
  sub_100009DCC(&qword_1006E0528, &qword_10057BF80);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = sub_10056CAA8();
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v10 = sub_100572578();
  v6[19] = v10;
  v6[20] = *(v10 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v11 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v6[23] = v11;
  v6[24] = *(v11 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = sub_100009DCC(&qword_1006E0520, &unk_100581DC0);
  v6[31] = swift_task_alloc();
  v6[32] = sub_100009DCC(&qword_1006E0510, &qword_10057C360);
  v6[33] = swift_task_alloc();
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  v6[34] = swift_task_alloc();

  return _swift_task_switch(sub_100068A9C, 0, 0);
}

uint64_t sub_100068A9C()
{
  if (qword_1006DF8D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1006FC040;
  *(v0 + 280) = qword_1006FC040;
  v2 = swift_task_alloc();
  *(v0 + 288) = v2;
  *v2 = v0;
  v2[1] = sub_100068BB4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 312, 0, 0, 0x7453726579616C70, 0xEB00000000657461, sub_1000155C4, v1, &type metadata for NowPlayingDataProvider.PlayerState);
}

uint64_t sub_100068BB4()
{

  return _swift_task_switch(sub_100068CB0, 0, 0);
}

uint64_t sub_100068CB0()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  *(v0 + 313) = *(v0 + 312);
  sub_10000CC8C(*(v2 + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentItem, v3, &qword_1006E0510, &qword_10057C360);
  sub_10006F60C(*(v3 + *(v4 + 44)), *(v3 + *(v4 + 44) + 8), v1);
  sub_10001036C(v3, &qword_1006E0510, &qword_10057C360);
  sub_10000CC8C(*(v2 + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__codableCurrentItemBackground, v5, &qword_1006E0520, &unk_100581DC0);
  v7 = sub_10006FEA0(*(v5 + *(v6 + 44)), *(v5 + *(v6 + 44) + 8));
  sub_10001036C(v5, &qword_1006E0520, &unk_100581DC0);
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v8 = v7;
  }

  *(v0 + 296) = v8;
  sub_100019990(v7);
  v10 = swift_task_alloc();
  *(v0 + 304) = v10;
  *v10 = v0;
  v10[1] = sub_100068E48;
  v11 = *(v0 + 232);

  return sub_100067E8C(v11);
}

uint64_t sub_100068E48()
{

  return _swift_task_switch(sub_100068F44, 0, 0);
}

uint64_t sub_100068F44(uint64_t a1)
{
  v2 = *(v1 + 313);
  sub_10056CA98();
  if (!v2)
  {
    v35 = *(v1 + 88);
    v36 = *(v1 + 96);
    v37 = *(v1 + 72);
    v38 = *(v1 + 80);
    v39 = *(v1 + 64);
    sub_10000CC8C(*(*(v1 + 280) + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentItemProgress, v37, &qword_1006E0518, &unk_10057BF70);
    sub_10007051C(*(v37 + *(v39 + 44)), *(v37 + *(v39 + 44) + 8), v38);
    sub_10001036C(v37, &qword_1006E0518, &unk_10057BF70);
    if ((*(v36 + 48))(v38, 1, v35) == 1)
    {
      sub_10001036C(*(v1 + 80), &qword_1006E0528, &qword_10057BF80);
    }

    else
    {
      v46 = *(v1 + 104);
      sub_100069EAC(*(v1 + 80), v46, type metadata accessor for NowPlayingDataProvider.ItemProgress);
      sub_100012D44();
      sub_100069F14(v46, type metadata accessor for NowPlayingDataProvider.ItemProgress);
    }

    v47 = *(v1 + 296);
    v48 = *(v1 + 272);
    v49 = *(v1 + 232);
    v50 = *(v1 + 184);
    v51 = *(v1 + 136);
    v52 = *(v1 + 112);
    v53 = *(v1 + 120);
    sub_10056C9D8();
    sub_100572558();
    (*(v53 + 8))(v51, v52);
    *(v49 + v50[5]) = 0;
    sub_1000199A0(v48, v49 + v50[6]);
    v54 = v50[8];
    v55 = *(v49 + v54);
    v80 = v47;

    *(v49 + v54) = v47;
    if (qword_1006DFA00 != -1)
    {
      swift_once();
    }

    v56 = *(v1 + 232);
    v57 = *(v1 + 216);
    v58 = *(v1 + 184);
    v59 = sub_1005725B8();
    v60 = sub_10000C49C(v59, qword_1006E2BD0);
    (*(*(v59 - 8) + 24))(v56 + *(v58 + 36), v60, v59);
    sub_100069DD8(v56, v57, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    v42 = sub_10004108C(0, 1, 1, _swiftEmptyArrayStorage);
    v44 = v42[2];
    v61 = v42[3];
    v45 = v44 + 1;
    if (v44 >= v61 >> 1)
    {
      v42 = sub_10004108C((v61 > 1), v44 + 1, 1, v42);
    }

    v33 = *(v1 + 216);
    goto LABEL_21;
  }

  if (v2 != 1)
  {
    v40 = *(v1 + 224);
    v41 = *(v1 + 232);
    sub_100572568();
    sub_100069DD8(v41, v40, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
    v42 = sub_10004108C(0, 1, 1, _swiftEmptyArrayStorage);
    v44 = v42[2];
    v43 = v42[3];
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v42 = sub_10004108C((v43 > 1), v44 + 1, 1, v42);
    }

    v80 = *(v1 + 296);
    v33 = *(v1 + 224);
LABEL_21:
    v62 = *(v1 + 192);
    v42[2] = v45;
    v34 = v42 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v44;
    goto LABEL_22;
  }

  v3 = *(v1 + 296);
  v4 = *(v1 + 272);
  v5 = *(v1 + 232);
  v6 = *(v1 + 184);
  sub_100572568();
  v7 = v6[5];
  *(v5 + v7) = 1;
  v77 = v7;
  v78 = v6[6];
  sub_1000199A0(v4, v5 + v78);
  v8 = v6[8];
  v9 = *(v5 + v8);
  v80 = v3;

  v79 = v8;
  *(v5 + v8) = v3;
  if (qword_1006DF9F8 != -1)
  {
    swift_once();
  }

  v10 = *(v1 + 232);
  v11 = *(v1 + 208);
  v12 = *(v1 + 184);
  v13 = sub_1005725B8();
  v14 = sub_10000C49C(v13, qword_1006E2BB8);
  (*(*(v13 - 8) + 24))(v10 + *(v12 + 36), v14, v13);
  sub_100069DD8(v10, v11, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  v15 = sub_10004108C(0, 1, 1, _swiftEmptyArrayStorage);
  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_10004108C((v16 > 1), v17 + 1, 1, v15);
  }

  v18 = *(v1 + 232);
  v20 = *(v1 + 200);
  v19 = *(v1 + 208);
  v21 = *(v1 + 192);
  v23 = *(v1 + 120);
  v22 = *(v1 + 128);
  v24 = *(v1 + 112);
  v15[2] = v17 + 1;
  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v26 = *(v21 + 72);
  v27 = v15 + v25 + v26 * v17;
  v28 = v15;
  sub_100069EAC(v19, v27, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  sub_10056C9D8();
  (*(v23 + 40))(v18, v22, v24);
  *(v5 + v77) = 3;
  sub_10001036C(v5 + v78, &qword_1006E0618, &unk_10057C230);
  v29 = type metadata accessor for WidgetMusicItem(0);
  (*(*(v29 - 8) + 56))(v5 + v78, 1, 1, v29);

  *(v5 + v79) = 0;
  sub_100069DD8(v18, v20, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  v30 = v28;
  v32 = v28[2];
  v31 = v28[3];
  if (v32 >= v31 >> 1)
  {
    v30 = sub_10004108C((v31 > 1), v32 + 1, 1, v28);
  }

  v33 = *(v1 + 200);
  v30[2] = v32 + 1;
  v34 = v30 + v25 + v32 * v26;
LABEL_22:
  sub_100069EAC(v33, v34, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
  v75 = *(v1 + 272);
  v76 = *(v1 + 232);
  v63 = *(v1 + 160);
  v64 = *(v1 + 152);
  v74 = *(v1 + 144);
  v65 = *(v1 + 120);
  v72 = *(v1 + 176);
  v73 = *(v1 + 112);
  v67 = *(v1 + 48);
  v66 = *(v1 + 56);
  v71 = *(v1 + 40);
  v68 = *(v1 + 24);
  (*(v63 + 16))(*(v1 + 168));
  sub_100067BDC();
  sub_100572638();
  v68(v66);

  (*(v67 + 8))(v66, v71);
  (*(v65 + 8))(v74, v73);
  (*(v63 + 8))(v72, v64);
  sub_10001036C(v75, &qword_1006E0618, &unk_10057C230);
  sub_100069F14(v76, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);

  v69 = *(v1 + 8);

  return v69();
}

uint64_t sub_10006975C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006DF9E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v3 = sub_10000C49C(v2, qword_1006FC238);
  return sub_100069DD8(v3, a1, type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry);
}

uint64_t sub_1000697DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006DFD60, &qword_10057B758);
  __chkstk_darwin();
  v12 = &v17 - v11;
  v13 = sub_100572F48();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_100069DD8(v5, v10, type metadata accessor for RecentlyPlayedWidgetTimelineProvider);
  v14 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;
  v15[5] = a3;
  sub_100069EAC(v10, v15 + v14, type metadata accessor for RecentlyPlayedWidgetTimelineProvider);

  sub_100006194(0, 0, v12, &unk_10057F810, v15);
}

uint64_t sub_1000699B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  sub_100009DCC(&qword_1006DFD60, &qword_10057B758);
  __chkstk_darwin();
  v11 = &v17 - v10;
  v12 = sub_100572F48();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_100069DD8(v5, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecentlyPlayedWidgetTimelineProvider);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_100069EAC(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for RecentlyPlayedWidgetTimelineProvider);
  v15 = (v14 + ((v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a2;
  v15[1] = a3;

  sub_100006194(0, 0, v11, &unk_10057F7E8, v14);
}

uint64_t sub_100069B9C()
{
  v1 = *(type metadata accessor for RecentlyPlayedWidgetTimelineProvider(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = sub_10056DF88();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_100069C88(uint64_t a1)
{
  v4 = *(type metadata accessor for RecentlyPlayedWidgetTimelineProvider(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000CB98;

  return sub_1000686E4(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100069DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100069E50(float a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_1005725B8();
  sub_10000C910(v4, a3);
  sub_10000C49C(v4, a3);
  return sub_1005725A8();
}

uint64_t sub_100069EAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100069F14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100069F74()
{
  v1 = *(type metadata accessor for RecentlyPlayedWidgetTimelineProvider(0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_10056DF88();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_10006A050(uint64_t a1)
{
  type metadata accessor for RecentlyPlayedWidgetTimelineProvider(0);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000116F0;

  return sub_100067C34(a1, v4, v5, v6, v7);
}

uint64_t sub_10006A154(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_10006A1C4(uint64_t a1, uint64_t a2)
{
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v5 = &v34 - v4;
  v6 = sub_100009DCC(&qword_1006E0DE8, &unk_10057C9C0);
  __chkstk_darwin();
  v8 = &v34 - v7;
  if ((sub_10056CA48() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for RecentlyPlayedWidgetTimelineProvider.Entry(0);
  v10 = v9[5];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 3)
  {
    if (v12 != 3)
    {
      return 0;
    }

    goto LABEL_21;
  }

  if (v12 == 3)
  {
    return 0;
  }

  if (!v11)
  {
    v13 = 0xE700000000000000;
    v14 = 0x676E6979616C70;
    if (!v12)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (v11 != 1)
  {
    v13 = 0xE700000000000000;
    v14 = 0x646570706F7473;
    if (!v12)
    {
      goto LABEL_15;
    }

LABEL_11:
    if (v12 == 1)
    {
      v15 = 0xE600000000000000;
      if (v14 != 0x646573756170)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v15 = 0xE700000000000000;
      if (v14 != 0x646570706F7473)
      {
        goto LABEL_20;
      }
    }

LABEL_18:
    if (v13 == v15)
    {

      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v13 = 0xE600000000000000;
  v14 = 0x646573756170;
  if (v12)
  {
    goto LABEL_11;
  }

LABEL_15:
  v15 = 0xE700000000000000;
  if (v14 == 0x676E6979616C70)
  {
    goto LABEL_18;
  }

LABEL_20:
  v16 = sub_100574498();

  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v17 = v9[6];
  v18 = *(v6 + 48);
  sub_10000CC8C(a1 + v17, v8, &qword_1006E0618, &unk_10057C230);
  sub_10000CC8C(a2 + v17, &v8[v18], &qword_1006E0618, &unk_10057C230);
  v19 = type metadata accessor for WidgetMusicItem(0);
  v20 = *(*(v19 - 8) + 48);
  if (v20(v8, 1, v19) != 1)
  {
    sub_10000CC8C(v8, v5, &qword_1006E0618, &unk_10057C230);
    if (v20(&v8[v18], 1, v19) != 1)
    {
      v21 = sub_10003CD6C(v5, &v8[v18]);
      sub_100069F14(&v8[v18], type metadata accessor for WidgetMusicItem);
      sub_100069F14(v5, type metadata accessor for WidgetMusicItem);
      sub_10001036C(v8, &qword_1006E0618, &unk_10057C230);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_28;
    }

    sub_100069F14(v5, type metadata accessor for WidgetMusicItem);
LABEL_26:
    sub_10001036C(v8, &qword_1006E0DE8, &unk_10057C9C0);
    return 0;
  }

  if (v20(&v8[v18], 1, v19) != 1)
  {
    goto LABEL_26;
  }

  sub_10001036C(v8, &qword_1006E0618, &unk_10057C230);
LABEL_28:
  if (sub_10006B354(*(a1 + v9[7]), *(a2 + v9[7])))
  {
    v22 = v9[8];
    v23 = *(a1 + v22);
    v24 = *(a2 + v22);
    if (v23)
    {
      if (!v24)
      {
        return 0;
      }

      sub_1000168CC();
      v25 = v24;
      v26 = v23;
      v27 = sub_100573A58();

      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v24)
    {
      return 0;
    }

    if (sub_100572598())
    {
      v28 = v9[10];
      v29 = (a1 + v28);
      v30 = *(a1 + v28 + 8);
      v31 = (a2 + v28);
      v32 = v31[1];
      if (v30)
      {
        return v32 && (*v29 == *v31 && v30 == v32 || (sub_100574498() & 1) != 0);
      }

      if (!v32)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10006A63C(uint64_t a1)
{
  result = type metadata accessor for WidgetDiskCache(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10006A6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WidgetDiskCache(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t type metadata accessor for WidgetDiskCache(uint64_t a1)
{
  result = qword_1006E2E08;
  if (!qword_1006E2E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006A7E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WidgetDiskCache(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10006A8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_10056DF88();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10006AA10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_10056DF88();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10006AB40(uint64_t a1)
{
  sub_100040738(319);
  if (v1 <= 0x3F)
  {
    sub_10006ABDC();
    if (v2 <= 0x3F)
    {
      sub_10056DF88();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10006ABDC()
{
  result = qword_1006E2E18;
  if (!qword_1006E2E18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006E2E18);
  }

  return result;
}

uint64_t sub_10006AC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = a1;
  v14 = a2;
  v12 = a3;
  v11 = sub_1005735D8();
  v3 = *(v11 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100573598();
  __chkstk_darwin();
  sub_100570BC8();
  __chkstk_darwin();
  v10 = *(type metadata accessor for WidgetDiskCache(0) + 20);
  sub_10006ABDC();
  sub_100570BB8();
  v15 = _swiftEmptyArrayStorage;
  sub_10006B200();
  sub_100009DCC(&qword_1006E2E58, &unk_10057F850);
  sub_10006B258();
  sub_100573DA8();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  v6 = sub_100573628();
  v7 = v12;
  *(v12 + v10) = v6;
  static Logger.music(_:)(0x6944746567646957, 0xEF65686361436B73);
  v8 = [objc_opt_self() defaultManager];
  sub_10006AEBC(v13, v14, v7);
}

uint64_t sub_10006AEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v7 = &v23 - v6;
  v8 = sub_10056C8A8();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v23 - v12;
  __chkstk_darwin();
  v14 = &v23 - v13;
  v15 = objc_opt_self();
  v16 = [v15 defaultManager];
  NSFileManager.musicAppGroupCachesURL.getter(v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10006B2BC(v7);
    v17 = 1;
  }

  else
  {
    v24 = a3;
    v23 = *(v9 + 32);
    v23(v14, v7, v8);
    URL.appending(_:)(0x646957636973754DLL, 0xEC00000073746567, 0);
    v18 = a2;
    v19 = v25;
    URL.appending(_:)(a1, v18, 0);
    v20 = *(v9 + 8);
    v20(v11, v8);
    v21 = [v15 defaultManager];
    NSFileManager.createDirectoryIfNeeded(at:)(v19);
    v20(v14, v8);

    a3 = v24;
    v23(v24, v25, v8);
    v17 = 0;
  }

  return (*(v9 + 56))(a3, v17, 1, v8);
}

uint64_t sub_10006B1D0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_10056C8C8();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_10006B200()
{
  result = qword_1006E2E50;
  if (!qword_1006E2E50)
  {
    sub_100573598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2E50);
  }

  return result;
}

unint64_t sub_10006B258()
{
  result = qword_1006E2E60;
  if (!qword_1006E2E60)
  {
    sub_100010324(&qword_1006E2E58, &unk_10057F850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2E60);
  }

  return result;
}

uint64_t sub_10006B2BC(uint64_t a1)
{
  v2 = sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006B354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetMusicItem(0);
  __chkstk_darwin();
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v46 - v8;
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16))
  {
    return 0;
  }

  if (!v10 || a1 == a2)
  {
    return 1;
  }

  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a1 + v11;
  v13 = a2 + v11;
  v14 = *(v7 + 72);
  while (1)
  {
    sub_100081FB4(v12, v9, type metadata accessor for WidgetMusicItem);
    sub_100081FB4(v13, v6, type metadata accessor for WidgetMusicItem);
    v15 = v4[9];
    v16 = *&v9[v15];
    v17 = *&v9[v15 + 8];
    v18 = &v6[v15];
    v19 = v16 == *v18 && v17 == *(v18 + 1);
    if (!v19 && (sub_100574498() & 1) == 0)
    {
      v20 = v4[10];
      v21 = &v9[v20];
      v22 = *&v9[v20 + 8];
      v23 = &v6[v20];
      v24 = *(v23 + 1);
      v25 = !v22 || v24 == 0;
      if (v25 || (*v21 == *v23 ? (v31 = v22 == v24) : (v31 = 0), !v31 && (sub_100574498() & 1) == 0))
      {
        v26 = v4[11];
        v27 = *&v9[v26];
        v28 = *&v9[v26 + 8];
        v29 = &v6[v26];
        v30 = v27 == *v29 && v28 == *(v29 + 1);
        if (!v30 && (sub_100574498() & 1) == 0)
        {
          break;
        }
      }
    }

    v32 = v4[12];
    v33 = &v9[v32];
    v34 = *&v9[v32 + 8];
    v35 = &v6[v32];
    v36 = *(v35 + 1);
    if (v34)
    {
      if (v36)
      {
        v37 = *v33 == *v35 && v34 == v36;
        if (v37 || (sub_100574498() & 1) != 0)
        {
          goto LABEL_5;
        }
      }
    }

    else if (!v36)
    {
      goto LABEL_5;
    }

    v38 = v4[13];
    v39 = &v9[v38];
    v40 = *&v9[v38 + 8];
    v41 = &v6[v38];
    v42 = *(v41 + 1);
    v43 = v42 == 0;
    if (v40)
    {
      if (!v42)
      {
        break;
      }

      if (*v39 == *v41 && v40 == v42)
      {
LABEL_5:
        sub_10008201C(v6, type metadata accessor for WidgetMusicItem);
        sub_10008201C(v9, type metadata accessor for WidgetMusicItem);
        goto LABEL_6;
      }

      v43 = sub_100574498();
    }

    sub_10008201C(v6, type metadata accessor for WidgetMusicItem);
    sub_10008201C(v9, type metadata accessor for WidgetMusicItem);
    if ((v43 & 1) == 0)
    {
      return 0;
    }

LABEL_6:
    v13 += v14;
    v12 += v14;
    if (!--v10)
    {
      return 1;
    }
  }

  sub_10008201C(v6, type metadata accessor for WidgetMusicItem);
  sub_10008201C(v9, type metadata accessor for WidgetMusicItem);
  return 0;
}

void *sub_10006B704(void *result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      v9 = a3(0);
      v10 = sub_100572D98();
      v10[2] = a2;
      v11 = *(v9 - 8);
      v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      sub_100081FB4(v7, v10 + v12, a4);
      v13 = a2 - 1;
      if (a2 != 1)
      {
        v14 = *(v11 + 72);
        v15 = v10 + v14 + v12;
        do
        {
          sub_100081FB4(v7, v15, a4);
          v15 += v14;
          --v13;
        }

        while (v13);
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
    }

    sub_10008201C(v7, a5);
    return v10;
  }

  return result;
}

void *sub_10006B808(void *result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      sub_100009DCC(a3, a4);
      v8 = sub_100572D98();
      v8[2] = a2;
      v9 = *(sub_100009DCC(a3, a4) - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      sub_10000CC8C(v7, v8 + v10, a3, a4);
      v11 = a2 - 1;
      if (a2 != 1)
      {
        v12 = *(v9 + 72);
        v13 = v8 + v12 + v10;
        do
        {
          sub_10000CC8C(v7, v13, a3, a4);
          v13 += v12;
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    sub_10001036C(v7, a3, a4);
    return v8;
  }

  return result;
}

uint64_t sub_10006B920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a2;
  v11 = type metadata accessor for WidgetMusicItem(0);
  v6[11] = v11;
  v6[12] = *(v11 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = *(sub_100009DCC(&qword_1006E0618, &unk_10057C230) - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a6;

  return _swift_task_switch(sub_10006BA7C, 0, 0);
}

uint64_t sub_10006BA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  v12 = (*(*(v9 + 96) + 56))(*(v9 + 128), 1, 1, *(v9 + 88));
  v19 = (v11 >> 1) - v10;
  if (__OFSUB__(v11 >> 1, v10))
  {
    __break(1u);
  }

  else
  {
    v23 = *(v9 + 56);
    *(v9 + 48) = sub_10006B808(*(v9 + 128), v19, &qword_1006E0618, &unk_10057C230);
    v20 = swift_task_alloc();
    *(v9 + 136) = v20;
    *(v20 + 16) = v9 + 16;
    *(v20 + 24) = v23;
    *(v20 + 40) = v9 + 48;
    v21 = sub_100009DCC(&qword_1006E3078, &qword_10057FAB8);
    v12 = swift_task_alloc();
    *(v9 + 144) = v12;
    *v12 = v9;
    v12[1] = sub_10006BBE8;
    v13 = &type metadata for () + 1;
    v16 = &unk_10057FCA0;
    v19 = v21;
    v14 = 0;
    v15 = 0;
    v17 = v20;
    v18 = v21;
  }

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v12, v19, v13, v14, v15, v16, v17, v18, a9);
}

uint64_t sub_10006BBE8()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10008B9A0;
  }

  else
  {
    v2 = sub_10008B9D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006BD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v3[2] = a3;
  return _swift_task_switch(sub_10006BD40, 0, 0);
}

uint64_t sub_10006BD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(*(v9 + 48) + 16);
  if (!v10)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  sub_100009DCC(&qword_1006E31B8, &qword_10057FD00);
  v11 = sub_100572D98();
  v11[2] = v10;
  v12 = v11 + 4;
  if (v10 == 1)
  {
    v13 = 0;
LABEL_8:
    v16 = v10 - v13;
    do
    {
      *v12++ = 1;
      --v16;
    }

    while (v16);
    goto LABEL_10;
  }

  v13 = v10 & 0x7FFFFFFFFFFFFFFELL;
  v12 += v10 & 0x7FFFFFFFFFFFFFFELL;
  v14 = v11 + 33;
  v15 = v10 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    *(v14 - 1) = 257;
    v14 += 2;
    v15 -= 2;
  }

  while (v15);
  if (v10 != v13)
  {
    goto LABEL_8;
  }

LABEL_10:
  *(v9 + 24) = v11;
  v17 = swift_task_alloc();
  *(v9 + 56) = v17;
  v18 = *(v9 + 32);
  *(v17 + 16) = v9 + 16;
  *(v17 + 24) = v18;
  *(v17 + 40) = v9 + 24;
  v19 = sub_100009DCC(&qword_1006E31B0, &qword_10057FCF8);
  v20 = swift_task_alloc();
  *(v9 + 64) = v20;
  *v20 = v9;
  v20[1] = sub_10006BEE8;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v20, v19, &type metadata for () + 1, 0, 0, &unk_10057FCF0, v17, v19, a9);
}

uint64_t sub_10006BEE8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10006C12C;
  }

  else
  {
    v2 = sub_10006C018;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006C018()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = _swiftEmptyArrayStorage;
    do
    {
      if ((*v3 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_10004081C(0, *(v4 + 2) + 1, 1, v4);
        }

        v6 = *(v4 + 2);
        v5 = *(v4 + 3);
        v7 = v6 + 1;
        if (v6 >= v5 >> 1)
        {
          v4 = sub_10004081C((v5 > 1), v6 + 1, 1, v4);
        }

        *(v4 + 2) = v7;
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v8 = *(v0 + 8);

  return v8(v4);
}

uint64_t sub_10006C12C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006C190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a2;
  v11 = type metadata accessor for WidgetMusicItem(0);
  v6[11] = v11;
  v6[12] = *(v11 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = *(sub_100009DCC(&qword_1006E0618, &unk_10057C230) - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a6;

  return _swift_task_switch(sub_10006C2EC, 0, 0);
}

uint64_t sub_10006C2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  v12 = (*(*(v9 + 96) + 56))(*(v9 + 128), 1, 1, *(v9 + 88));
  v19 = (v11 >> 1) - v10;
  if (__OFSUB__(v11 >> 1, v10))
  {
    __break(1u);
  }

  else
  {
    v23 = *(v9 + 56);
    *(v9 + 48) = sub_10006B808(*(v9 + 128), v19, &qword_1006E0618, &unk_10057C230);
    v20 = swift_task_alloc();
    *(v9 + 136) = v20;
    *(v20 + 16) = v9 + 16;
    *(v20 + 24) = v23;
    *(v20 + 40) = v9 + 48;
    v21 = sub_100009DCC(&qword_1006E3078, &qword_10057FAB8);
    v12 = swift_task_alloc();
    *(v9 + 144) = v12;
    *v12 = v9;
    v12[1] = sub_10006C458;
    v13 = &type metadata for () + 1;
    v16 = &unk_10057FAB0;
    v19 = v21;
    v14 = 0;
    v15 = 0;
    v17 = v20;
    v18 = v21;
  }

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v12, v19, v13, v14, v15, v16, v17, v18, a9);
}

uint64_t sub_10006C458()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10006C7B4;
  }

  else
  {
    v2 = sub_10006C588;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006C588()
{
  v1 = v0[6];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14];
    v16 = v0[12];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = _swiftEmptyArrayStorage;
    do
    {
      v7 = v0[15];
      v8 = v0[11];
      sub_10000CC8C(v4, v7, &qword_1006E0618, &unk_10057C230);
      v9 = (*(v16 + 48))(v7, 1, v8);
      v10 = v0[15];
      if (v9 == 1)
      {
        sub_10001036C(v10, &qword_1006E0618, &unk_10057C230);
      }

      else
      {
        sub_10008237C(v10, v0[13], type metadata accessor for WidgetMusicItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1000407D0(0, v6[2] + 1, 1, v6);
        }

        v12 = v6[2];
        v11 = v6[3];
        if (v12 >= v11 >> 1)
        {
          v6 = sub_1000407D0((v11 > 1), v12 + 1, 1, v6);
        }

        v13 = v0[13];
        v6[2] = v12 + 1;
        sub_10008237C(v13, v6 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12, type metadata accessor for WidgetMusicItem);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v14 = v0[1];

  return v14(v6);
}

uint64_t sub_10006C7B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006C840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a2;
  v11 = type metadata accessor for WidgetMusicItem(0);
  v6[11] = v11;
  v6[12] = *(v11 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = *(sub_100009DCC(&qword_1006E0618, &unk_10057C230) - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a6;

  return _swift_task_switch(sub_10006C99C, 0, 0);
}

uint64_t sub_10006C99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  v12 = (*(*(v9 + 96) + 56))(*(v9 + 128), 1, 1, *(v9 + 88));
  v19 = (v11 >> 1) - v10;
  if (__OFSUB__(v11 >> 1, v10))
  {
    __break(1u);
  }

  else
  {
    v23 = *(v9 + 56);
    *(v9 + 48) = sub_10006B808(*(v9 + 128), v19, &qword_1006E0618, &unk_10057C230);
    v20 = swift_task_alloc();
    *(v9 + 136) = v20;
    *(v20 + 16) = v9 + 16;
    *(v20 + 24) = v23;
    *(v20 + 40) = v9 + 48;
    v21 = sub_100009DCC(&qword_1006E3078, &qword_10057FAB8);
    v12 = swift_task_alloc();
    *(v9 + 144) = v12;
    *v12 = v9;
    v12[1] = sub_10006BBE8;
    v13 = &type metadata for () + 1;
    v16 = &unk_10057FC60;
    v19 = v21;
    v14 = 0;
    v15 = 0;
    v17 = v20;
    v18 = v21;
  }

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v12, v19, v13, v14, v15, v16, v17, v18, a9);
}

uint64_t sub_10006CB08(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for WidgetMusicPin(0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = *(sub_100009DCC(&qword_1006E1F80, &qword_10057E440) - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10006CC3C, 0, 0);
}

uint64_t sub_10006CC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(v9 + 88);
  v11 = *(v9 + 40);
  v17 = *(v9 + 24);
  (*(*(v9 + 56) + 56))(v10, 1, 1, *(v9 + 48));
  sub_100009DCC(&qword_1006E32E0, &qword_10057FF80);
  sub_100010BC0(&qword_1006E32E8, &qword_1006E32E0, &qword_10057FF80, &protocol conformance descriptor for MusicItemCollection<A>);
  v12 = sub_1005731C8();
  *(v9 + 16) = sub_10006B808(v10, v12, &qword_1006E1F80, &qword_10057E440);
  v13 = swift_task_alloc();
  *(v9 + 96) = v13;
  *(v13 + 16) = v11;
  *(v13 + 24) = v17;
  *(v13 + 40) = v9 + 16;
  v14 = sub_100009DCC(&qword_1006E32F0, &qword_10057FF98);
  v15 = swift_task_alloc();
  *(v9 + 104) = v15;
  *v15 = v9;
  v15[1] = sub_10006CDF8;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v15, v14, &type metadata for () + 1, 0, 0, &unk_10057FF90, v13, v14, a9);
}

uint64_t sub_10006CDF8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_10006D154;
  }

  else
  {
    v2 = sub_10006CF28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006CF28()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9];
    v16 = v0[7];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = _swiftEmptyArrayStorage;
    do
    {
      v7 = v0[10];
      v8 = v0[6];
      sub_10000CC8C(v4, v7, &qword_1006E1F80, &qword_10057E440);
      v9 = (*(v16 + 48))(v7, 1, v8);
      v10 = v0[10];
      if (v9 == 1)
      {
        sub_10001036C(v10, &qword_1006E1F80, &qword_10057E440);
      }

      else
      {
        sub_10008237C(v10, v0[8], type metadata accessor for WidgetMusicPin);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_100040D74(0, v6[2] + 1, 1, v6);
        }

        v12 = v6[2];
        v11 = v6[3];
        if (v12 >= v11 >> 1)
        {
          v6 = sub_100040D74((v11 > 1), v12 + 1, 1, v6);
        }

        v13 = v0[8];
        v6[2] = v12 + 1;
        sub_10008237C(v13, v6 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12, type metadata accessor for WidgetMusicPin);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v14 = v0[1];

  return v14(v6);
}

uint64_t sub_10006D154()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006D1E0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for WidgetMusicItem(0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = *(sub_100009DCC(&qword_1006E0618, &unk_10057C230) - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10006D314, 0, 0);
}

uint64_t sub_10006D314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(v9 + 88);
  v11 = *(v9 + 40);
  v17 = *(v9 + 24);
  (*(*(v9 + 56) + 56))(v10, 1, 1, *(v9 + 48));
  sub_100009DCC(&qword_1006E2AB0, &qword_10057FBE0);
  sub_100010BC0(&qword_1006E3120, &qword_1006E2AB0, &qword_10057FBE0, &protocol conformance descriptor for MusicItemCollection<A>);
  v12 = sub_1005731C8();
  *(v9 + 16) = sub_10006B808(v10, v12, &qword_1006E0618, &unk_10057C230);
  v13 = swift_task_alloc();
  *(v9 + 96) = v13;
  *(v13 + 16) = v11;
  *(v13 + 24) = v17;
  *(v13 + 40) = v9 + 16;
  v14 = sub_100009DCC(&qword_1006E3078, &qword_10057FAB8);
  v15 = swift_task_alloc();
  *(v9 + 104) = v15;
  *v15 = v9;
  v15[1] = sub_10006D4D0;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v15, v14, &type metadata for () + 1, 0, 0, &unk_10057FBF0, v13, v14, a9);
}

uint64_t sub_10006D4D0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_10008B9A4;
  }

  else
  {
    v2 = sub_10006D600;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006D600()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9];
    v16 = v0[7];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = _swiftEmptyArrayStorage;
    do
    {
      v7 = v0[10];
      v8 = v0[6];
      sub_10000CC8C(v4, v7, &qword_1006E0618, &unk_10057C230);
      v9 = (*(v16 + 48))(v7, 1, v8);
      v10 = v0[10];
      if (v9 == 1)
      {
        sub_10001036C(v10, &qword_1006E0618, &unk_10057C230);
      }

      else
      {
        sub_10008237C(v10, v0[8], type metadata accessor for WidgetMusicItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1000407D0(0, v6[2] + 1, 1, v6);
        }

        v12 = v6[2];
        v11 = v6[3];
        if (v12 >= v11 >> 1)
        {
          v6 = sub_1000407D0((v11 > 1), v12 + 1, 1, v6);
        }

        v13 = v0[8];
        v6[2] = v12 + 1;
        sub_10008237C(v13, v6 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12, type metadata accessor for WidgetMusicItem);
      }

      v4 += v5;
      --v2;
    }

    while (v2);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v14 = v0[1];

  return v14(v6);
}

uint64_t sub_10006D82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v5 = sub_100009DCC(&qword_1006E1F40, &qword_10057E400);
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = *(sub_100009DCC(&qword_1006E1F50, &qword_10057E410) - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[2] = a3;

  return _swift_task_switch(sub_10006D974, 0, 0);
}

uint64_t sub_10006D974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(v9 + 96);
  v11 = *(v9 + 48);
  v16 = *(v9 + 32);
  (*(*(v9 + 64) + 56))(v10, 1, 1, *(v9 + 56));
  *(v9 + 24) = sub_10006B808(v10, *(v11 + 16), &qword_1006E1F50, &qword_10057E410);
  v12 = swift_task_alloc();
  *(v9 + 104) = v12;
  *(v12 + 16) = v9 + 16;
  *(v12 + 24) = v16;
  *(v12 + 40) = v9 + 24;
  v13 = sub_100009DCC(&qword_1006E31E0, &qword_10057FD48);
  v14 = swift_task_alloc();
  *(v9 + 112) = v14;
  *v14 = v9;
  v14[1] = sub_10006DAD8;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v14, v13, &type metadata for () + 1, 0, 0, &unk_10057FD40, v12, v13, a9);
}

uint64_t sub_10006DAD8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10006DE2C;
  }

  else
  {
    v2 = sub_10006DC08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006DC08()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[10];
    v16 = v0[8];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = _swiftEmptyArrayStorage;
    v6 = *(v3 + 72);
    do
    {
      v7 = v0[11];
      v8 = v0[7];
      sub_10000CC8C(v4, v7, &qword_1006E1F50, &qword_10057E410);
      v9 = (*(v16 + 48))(v7, 1, v8);
      v10 = v0[11];
      if (v9 == 1)
      {
        sub_10001036C(v10, &qword_1006E1F50, &qword_10057E410);
      }

      else
      {
        sub_100019B40(v10, v0[9], &qword_1006E1F40, &qword_10057E400);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100040E5C(0, v5[2] + 1, 1, v5);
        }

        v12 = v5[2];
        v11 = v5[3];
        if (v12 >= v11 >> 1)
        {
          v5 = sub_100040E5C((v11 > 1), v12 + 1, 1, v5);
        }

        v13 = v0[9];
        v5[2] = v12 + 1;
        sub_100019B40(v13, v5 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12, &qword_1006E1F40, &qword_10057E400);
      }

      v4 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v14 = v0[1];

  return v14(v5);
}

uint64_t sub_10006DE2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006DEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a2;
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a6;
  return _swift_task_switch(sub_10006DEE4, 0, 0);
}

uint64_t sub_10006DEE4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 + 72);
  v12 = *(v9 + 80) >> 1;
  v13 = v12 - v11;
  if (__OFSUB__(v12, v11))
  {
    __break(1u);
  }

  else
  {
    v17 = *(v9 + 56);
    *(v9 + 48) = sub_1000898A8(1, v13);
    v14 = swift_task_alloc();
    *(v9 + 88) = v14;
    *(v14 + 16) = v9 + 16;
    *(v14 + 24) = v17;
    *(v14 + 40) = v9 + 48;
    v15 = sub_100009DCC(&qword_1006E30D0, &qword_10057FB70);
    a1 = swift_task_alloc();
    *(v9 + 96) = a1;
    *a1 = v9;
    a1[1] = sub_10006E020;
    a3 = &type metadata for () + 1;
    a6 = &unk_10057FB68;
    v13 = v15;
    a4 = 0;
    a5 = 0;
    a7 = v14;
    a8 = v15;
  }

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(a1, v13, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_10006E020()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_10006E2AC;
  }

  else
  {
    v2 = sub_10006E150;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10006E150()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(v1 + 16);
      if (v3 >= v4)
      {
LABEL_15:
        __break(1u);
        return;
      }

      v5 = *(v1 + 32 + 8 * v3);
      v6 = v3 + 1;
      if (v5 == 1)
      {
        break;
      }

LABEL_9:
      v3 = v6;
      v9 = v5;
      sub_100572CE8();
      if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
      {
        sub_100572D68();
      }

      sub_100572DB8();
      if (v3 == v2)
      {
        goto LABEL_12;
      }
    }

    v7 = (v1 + 40 + 8 * v3);
    while (v2 != v6)
    {
      if (v4 == v6)
      {
        goto LABEL_15;
      }

      v8 = *v7++;
      v5 = v8;
      ++v6;
      if (v8 != 1)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_12:

  v10 = *(v0 + 8);

  v10(_swiftEmptyArrayStorage);
}

uint64_t sub_10006E2AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006E340@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  sub_100009DCC(a1, a2);
  sub_100010BC0(a3, a1, a2, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_1005731B8();
  sub_100573208();
  if (v17[4] == v17[0])
  {
    v10 = a4(0);
    return (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  }

  else
  {
    v12 = sub_1005732E8();
    v14 = v13;
    v15 = a4(0);
    v16 = *(v15 - 8);
    (*(v16 + 16))(a5, v14, v15);
    v12(v17, 0);
    return (*(v16 + 56))(a5, 0, 1, v15);
  }
}

uint64_t sub_10006E4E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v60 = a3;
  v57 = sub_100009DCC(&qword_1006DFD70, &qword_10057B7A8);
  __chkstk_darwin();
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = &v47 - v8;
  __chkstk_darwin();
  v10 = &v47 - v9;
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v12 = &v47 - v11;
  v13 = *(sub_10056C8A8() - 8);
  __chkstk_darwin();
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v47 - v16;
  v59 = v4;
  v19 = v18;
  sub_10000CC8C(v4, v12, qword_1006E1D50, &qword_10057CA90);
  if ((*(v13 + 48))(v12, 1, v19) == 1)
  {
    v20 = v60;
    sub_10001036C(v12, qword_1006E1D50, &qword_10057CA90);
    type metadata accessor for WidgetDiskCache(0);

    v21 = sub_10056DF68();
    v22 = sub_100573428();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v61[0] = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_10008190C(a1, a2, v61);
      _os_log_impl(&_mh_execute_header, v21, v22, "Unable to get widget cache url for loading item named %{public}s", v23, 0xCu);
      sub_100010474(v24);
    }

    v25 = type metadata accessor for WidgetChartDiskCache.ChartList(0);
    return (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  }

  else
  {
    v50 = a1;
    v51 = a2;
    URL.appending(_:)(a1, a2, 1);
    v52 = *(v13 + 8);
    v53 = v13 + 8;
    v52(v12, v19);
    v27 = *(v13 + 32);
    v54 = v19;
    v27(v17, v15, v19);
    v28 = type metadata accessor for WidgetChartDiskCache.ChartList(0);
    v29 = *(*(v28 - 8) + 56);
    v55 = v10;
    v29(v10, 1, 1, v28);
    type metadata accessor for WidgetDiskCache(0);
    __chkstk_darwin();
    *(&v47 - 2) = v17;
    sub_1005735F8();
    v49 = v17;
    v30 = v29;
    v31 = v61[0];
    v32 = v61[1];
    sub_10056C298();
    swift_allocObject();
    sub_10056C288();
    sub_100082424(&qword_1006E31D0, type metadata accessor for WidgetChartDiskCache.ChartList, &unk_10057BA78);
    v33 = v58;
    sub_10056C278();
    v48 = v31;

    v30(v33, 0, 1, v28);
    v34 = v33;
    v35 = v55;
    sub_10008B71C(v34, v55, &qword_1006DFD70, &qword_10057B7A8);
    v36 = v51;

    v37 = sub_10056DF68();
    v38 = sub_100573448();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v60;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v41 = 136446466;
      *(v41 + 4) = sub_10008190C(v50, v36, v61);
      *(v41 + 12) = 2082;
      swift_beginAccess();
      sub_10000CC8C(v35, v56, &qword_1006DFD70, &qword_10057B7A8);
      v42 = sub_100572978();
      v44 = sub_10008190C(v42, v43, v61);

      *(v41 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "Loaded cached item named %{public}s, value %{public}s", v41, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008246C(v48, v32);

    v45 = v54;
    v46 = v49;
    swift_beginAccess();
    sub_10000CC8C(v35, v40, &qword_1006DFD70, &qword_10057B7A8);
    sub_10001036C(v35, &qword_1006DFD70, &qword_10057B7A8);
    return (v52)(v46, v45);
  }
}

uint64_t sub_10006ED78@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v60 = a3;
  v57 = sub_100009DCC(&qword_1006DFCE0, &qword_10057B698);
  __chkstk_darwin();
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = &v47 - v8;
  __chkstk_darwin();
  v10 = &v47 - v9;
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v12 = &v47 - v11;
  v13 = *(sub_10056C8A8() - 8);
  __chkstk_darwin();
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v47 - v16;
  v59 = v4;
  v19 = v18;
  sub_10000CC8C(v4, v12, qword_1006E1D50, &qword_10057CA90);
  if ((*(v13 + 48))(v12, 1, v19) == 1)
  {
    v20 = v60;
    sub_10001036C(v12, qword_1006E1D50, &qword_10057CA90);
    type metadata accessor for WidgetDiskCache(0);

    v21 = sub_10056DF68();
    v22 = sub_100573428();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v61[0] = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_10008190C(a1, a2, v61);
      _os_log_impl(&_mh_execute_header, v21, v22, "Unable to get widget cache url for loading item named %{public}s", v23, 0xCu);
      sub_100010474(v24);
    }

    v25 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
    return (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  }

  else
  {
    v50 = a1;
    v51 = a2;
    URL.appending(_:)(a1, a2, 1);
    v52 = *(v13 + 8);
    v53 = v13 + 8;
    v52(v12, v19);
    v27 = *(v13 + 32);
    v54 = v19;
    v27(v17, v15, v19);
    v28 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
    v29 = *(*(v28 - 8) + 56);
    v55 = v10;
    v29(v10, 1, 1, v28);
    type metadata accessor for WidgetDiskCache(0);
    __chkstk_darwin();
    *(&v47 - 2) = v17;
    sub_1005735F8();
    v49 = v17;
    v30 = v29;
    v31 = v61[0];
    v32 = v61[1];
    sub_10056C298();
    swift_allocObject();
    sub_10056C288();
    sub_100082424(&qword_1006E31A8, type metadata accessor for TopChartsWidgetDataProvider.Chart, &unk_10057BAC8);
    v33 = v58;
    sub_10056C278();
    v48 = v31;

    v30(v33, 0, 1, v28);
    v34 = v33;
    v35 = v55;
    sub_10008B71C(v34, v55, &qword_1006DFCE0, &qword_10057B698);
    v36 = v51;

    v37 = sub_10056DF68();
    v38 = sub_100573448();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v60;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v41 = 136446466;
      *(v41 + 4) = sub_10008190C(v50, v36, v61);
      *(v41 + 12) = 2082;
      swift_beginAccess();
      sub_10000CC8C(v35, v56, &qword_1006DFCE0, &qword_10057B698);
      v42 = sub_100572978();
      v44 = sub_10008190C(v42, v43, v61);

      *(v41 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "Loaded cached item named %{public}s, value %{public}s", v41, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008246C(v48, v32);

    v45 = v54;
    v46 = v49;
    swift_beginAccess();
    sub_10000CC8C(v35, v40, &qword_1006DFCE0, &qword_10057B698);
    sub_10001036C(v35, &qword_1006DFCE0, &qword_10057B698);
    return (v52)(v46, v45);
  }
}

uint64_t sub_10006F60C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v60 = a3;
  v57 = sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = &v47 - v8;
  __chkstk_darwin();
  v10 = &v47 - v9;
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v12 = &v47 - v11;
  v13 = *(sub_10056C8A8() - 8);
  __chkstk_darwin();
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v47 - v16;
  v59 = v4;
  v19 = v18;
  sub_10000CC8C(v4, v12, qword_1006E1D50, &qword_10057CA90);
  if ((*(v13 + 48))(v12, 1, v19) == 1)
  {
    v20 = v60;
    sub_10001036C(v12, qword_1006E1D50, &qword_10057CA90);
    type metadata accessor for WidgetDiskCache(0);

    v21 = sub_10056DF68();
    v22 = sub_100573428();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v61[0] = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_10008190C(a1, a2, v61);
      _os_log_impl(&_mh_execute_header, v21, v22, "Unable to get widget cache url for loading item named %{public}s", v23, 0xCu);
      sub_100010474(v24);
    }

    v25 = type metadata accessor for WidgetMusicItem(0);
    return (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  }

  else
  {
    v50 = a1;
    v51 = a2;
    URL.appending(_:)(a1, a2, 1);
    v52 = *(v13 + 8);
    v53 = v13 + 8;
    v52(v12, v19);
    v27 = *(v13 + 32);
    v54 = v19;
    v27(v17, v15, v19);
    v28 = type metadata accessor for WidgetMusicItem(0);
    v29 = *(*(v28 - 8) + 56);
    v55 = v10;
    v29(v10, 1, 1, v28);
    type metadata accessor for WidgetDiskCache(0);
    __chkstk_darwin();
    *(&v47 - 2) = v17;
    sub_1005735F8();
    v49 = v17;
    v30 = v29;
    v31 = v61[0];
    v32 = v61[1];
    sub_10056C298();
    swift_allocObject();
    sub_10056C288();
    sub_100082424(&qword_1006DFFC8, type metadata accessor for WidgetMusicItem, &unk_10057DDCC);
    v33 = v58;
    sub_10056C278();
    v48 = v31;

    v30(v33, 0, 1, v28);
    v34 = v33;
    v35 = v55;
    sub_10008B71C(v34, v55, &qword_1006E0618, &unk_10057C230);
    v36 = v51;

    v37 = sub_10056DF68();
    v38 = sub_100573448();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v60;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v41 = 136446466;
      *(v41 + 4) = sub_10008190C(v50, v36, v61);
      *(v41 + 12) = 2082;
      swift_beginAccess();
      sub_10000CC8C(v35, v56, &qword_1006E0618, &unk_10057C230);
      v42 = sub_100572978();
      v44 = sub_10008190C(v42, v43, v61);

      *(v41 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "Loaded cached item named %{public}s, value %{public}s", v41, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008246C(v48, v32);

    v45 = v54;
    v46 = v49;
    swift_beginAccess();
    sub_10000CC8C(v35, v40, &qword_1006E0618, &unk_10057C230);
    sub_10001036C(v35, &qword_1006E0618, &unk_10057C230);
    return (v52)(v46, v45);
  }
}

uint64_t sub_10006FEA0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v7 = &v30 - v6;
  v8 = sub_10056C8A8();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v30 - v12;
  sub_10000CC8C(v3, v7, qword_1006E1D50, &qword_10057CA90);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10001036C(v7, qword_1006E1D50, &qword_10057CA90);
    type metadata accessor for WidgetDiskCache(0);

    v14 = sub_10056DF68();
    v15 = sub_100573428();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v35[0] = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_10008190C(a1, a2, v35);
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to get widget cache url for loading item named %{public}s", v16, 0xCu);
      sub_100010474(v17);
    }

    return 1;
  }

  else
  {
    v32 = a1;
    URL.appending(_:)(a1, a2, 1);
    v19 = *(v9 + 8);
    v19(v7, v8);
    (*(v9 + 32))(v13, v11, v8);
    type metadata accessor for WidgetDiskCache(0);
    __chkstk_darwin();
    *(&v30 - 2) = v13;
    sub_1005735F8();
    v33 = v19;
    v21 = v35[0];
    v20 = v35[1];
    sub_10056C298();
    swift_allocObject();
    sub_10056C288();
    sub_100014D24();
    sub_10056C278();

    v18 = v35[0];

    v22 = sub_10056DF68();
    v23 = sub_100573448();

    v31 = v22;
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35[0] = v30;
      *v24 = 136446466;
      *(v24 + 4) = sub_10008190C(v32, a2, v35);
      *(v24 + 12) = 2082;
      v34 = v18;
      sub_10003E57C(v18);
      sub_100009DCC(&qword_1006E1ED0, &unk_10057E390);
      v25 = sub_100572978();
      v27 = sub_10008190C(v25, v26, v35);

      *(v24 + 14) = v27;
      v28 = v31;
      _os_log_impl(&_mh_execute_header, v31, v23, "Loaded cached item named %{public}s, value %{public}s", v24, 0x16u);
      swift_arrayDestroy();

      sub_10008246C(v21, v20);
    }

    else
    {
      sub_10008246C(v21, v20);
    }

    v33(v13, v8);
  }

  return v18;
}

uint64_t sub_10007051C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v60 = a3;
  v57 = sub_100009DCC(&qword_1006E0528, &qword_10057BF80);
  __chkstk_darwin();
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = &v47 - v8;
  __chkstk_darwin();
  v10 = &v47 - v9;
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v12 = &v47 - v11;
  v13 = *(sub_10056C8A8() - 8);
  __chkstk_darwin();
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v47 - v16;
  v59 = v4;
  v19 = v18;
  sub_10000CC8C(v4, v12, qword_1006E1D50, &qword_10057CA90);
  if ((*(v13 + 48))(v12, 1, v19) == 1)
  {
    v20 = v60;
    sub_10001036C(v12, qword_1006E1D50, &qword_10057CA90);
    type metadata accessor for WidgetDiskCache(0);

    v21 = sub_10056DF68();
    v22 = sub_100573428();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v61[0] = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_10008190C(a1, a2, v61);
      _os_log_impl(&_mh_execute_header, v21, v22, "Unable to get widget cache url for loading item named %{public}s", v23, 0xCu);
      sub_100010474(v24);
    }

    v25 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    return (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  }

  else
  {
    v50 = a1;
    v51 = a2;
    URL.appending(_:)(a1, a2, 1);
    v52 = *(v13 + 8);
    v53 = v13 + 8;
    v52(v12, v19);
    v27 = *(v13 + 32);
    v54 = v19;
    v27(v17, v15, v19);
    v28 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    v29 = *(*(v28 - 8) + 56);
    v55 = v10;
    v29(v10, 1, 1, v28);
    type metadata accessor for WidgetDiskCache(0);
    __chkstk_darwin();
    *(&v47 - 2) = v17;
    sub_1005735F8();
    v49 = v17;
    v30 = v29;
    v31 = v61[0];
    v32 = v61[1];
    sub_10056C298();
    swift_allocObject();
    sub_10056C288();
    sub_100082424(&qword_1006E02E0, type metadata accessor for NowPlayingDataProvider.ItemProgress, &unk_10057BF28);
    v33 = v58;
    sub_10056C278();
    v48 = v31;

    v30(v33, 0, 1, v28);
    v34 = v33;
    v35 = v55;
    sub_10008B71C(v34, v55, &qword_1006E0528, &qword_10057BF80);
    v36 = v51;

    v37 = sub_10056DF68();
    v38 = sub_100573448();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v60;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v41 = 136446466;
      *(v41 + 4) = sub_10008190C(v50, v36, v61);
      *(v41 + 12) = 2082;
      swift_beginAccess();
      sub_10000CC8C(v35, v56, &qword_1006E0528, &qword_10057BF80);
      v42 = sub_100572978();
      v44 = sub_10008190C(v42, v43, v61);

      *(v41 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "Loaded cached item named %{public}s, value %{public}s", v41, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008246C(v48, v32);

    v45 = v54;
    v46 = v49;
    swift_beginAccess();
    sub_10000CC8C(v35, v40, &qword_1006E0528, &qword_10057BF80);
    sub_10001036C(v35, &qword_1006E0528, &qword_10057BF80);
    return (v52)(v46, v45);
  }
}

uint64_t sub_100070DB0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v60 = a3;
  v57 = sub_100009DCC(&qword_1006E0790, &qword_10057C370);
  __chkstk_darwin();
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = &v47 - v8;
  __chkstk_darwin();
  v10 = &v47 - v9;
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v12 = &v47 - v11;
  v13 = *(sub_10056C8A8() - 8);
  __chkstk_darwin();
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v47 - v16;
  v59 = v4;
  v19 = v18;
  sub_10000CC8C(v4, v12, qword_1006E1D50, &qword_10057CA90);
  if ((*(v13 + 48))(v12, 1, v19) == 1)
  {
    v20 = v60;
    sub_10001036C(v12, qword_1006E1D50, &qword_10057CA90);
    type metadata accessor for WidgetDiskCache(0);

    v21 = sub_10056DF68();
    v22 = sub_100573428();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v61[0] = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_10008190C(a1, a2, v61);
      _os_log_impl(&_mh_execute_header, v21, v22, "Unable to get widget cache url for loading item named %{public}s", v23, 0xCu);
      sub_100010474(v24);
    }

    v25 = type metadata accessor for WidgetMusicRecommendation(0);
    return (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  }

  else
  {
    v50 = a1;
    v51 = a2;
    URL.appending(_:)(a1, a2, 1);
    v52 = *(v13 + 8);
    v53 = v13 + 8;
    v52(v12, v19);
    v27 = *(v13 + 32);
    v54 = v19;
    v27(v17, v15, v19);
    v28 = type metadata accessor for WidgetMusicRecommendation(0);
    v29 = *(*(v28 - 8) + 56);
    v55 = v10;
    v29(v10, 1, 1, v28);
    type metadata accessor for WidgetDiskCache(0);
    __chkstk_darwin();
    *(&v47 - 2) = v17;
    sub_1005735F8();
    v49 = v17;
    v30 = v29;
    v31 = v61[0];
    v32 = v61[1];
    sub_10056C298();
    swift_allocObject();
    sub_10056C288();
    sub_100082424(&qword_1006E3118, type metadata accessor for WidgetMusicRecommendation, &unk_10057FDEC);
    v33 = v58;
    sub_10056C278();
    v48 = v31;

    v30(v33, 0, 1, v28);
    v34 = v33;
    v35 = v55;
    sub_10008B71C(v34, v55, &qword_1006E0790, &qword_10057C370);
    v36 = v51;

    v37 = sub_10056DF68();
    v38 = sub_100573448();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v60;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v41 = 136446466;
      *(v41 + 4) = sub_10008190C(v50, v36, v61);
      *(v41 + 12) = 2082;
      swift_beginAccess();
      sub_10000CC8C(v35, v56, &qword_1006E0790, &qword_10057C370);
      v42 = sub_100572978();
      v44 = sub_10008190C(v42, v43, v61);

      *(v41 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "Loaded cached item named %{public}s, value %{public}s", v41, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008246C(v48, v32);

    v45 = v54;
    v46 = v49;
    swift_beginAccess();
    sub_10000CC8C(v35, v40, &qword_1006E0790, &qword_10057C370);
    sub_10001036C(v35, &qword_1006E0790, &qword_10057C370);
    return (v52)(v46, v45);
  }
}

uint64_t sub_100071644@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v60 = a3;
  v57 = sub_100009DCC(&qword_1006E0AE0, &qword_10057C4E0);
  __chkstk_darwin();
  v56 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = &v47 - v8;
  __chkstk_darwin();
  v10 = &v47 - v9;
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v12 = &v47 - v11;
  v13 = *(sub_10056C8A8() - 8);
  __chkstk_darwin();
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v47 - v16;
  v59 = v4;
  v19 = v18;
  sub_10000CC8C(v4, v12, qword_1006E1D50, &qword_10057CA90);
  if ((*(v13 + 48))(v12, 1, v19) == 1)
  {
    v20 = v60;
    sub_10001036C(v12, qword_1006E1D50, &qword_10057CA90);
    type metadata accessor for WidgetDiskCache(0);

    v21 = sub_10056DF68();
    v22 = sub_100573428();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v61[0] = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_10008190C(a1, a2, v61);
      _os_log_impl(&_mh_execute_header, v21, v22, "Unable to get widget cache url for loading item named %{public}s", v23, 0xCu);
      sub_100010474(v24);
    }

    v25 = type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList(0);
    return (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  }

  else
  {
    v50 = a1;
    v51 = a2;
    URL.appending(_:)(a1, a2, 1);
    v52 = *(v13 + 8);
    v53 = v13 + 8;
    v52(v12, v19);
    v27 = *(v13 + 32);
    v54 = v19;
    v27(v17, v15, v19);
    v28 = type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList(0);
    v29 = *(*(v28 - 8) + 56);
    v55 = v10;
    v29(v10, 1, 1, v28);
    type metadata accessor for WidgetDiskCache(0);
    __chkstk_darwin();
    *(&v47 - 2) = v17;
    sub_1005735F8();
    v49 = v17;
    v30 = v29;
    v31 = v61[0];
    v32 = v61[1];
    sub_10056C298();
    swift_allocObject();
    sub_10056C288();
    sub_100082424(&qword_1006E3180, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList, &unk_10057C58C);
    v33 = v58;
    sub_10056C278();
    v48 = v31;

    v30(v33, 0, 1, v28);
    v34 = v33;
    v35 = v55;
    sub_10008B71C(v34, v55, &qword_1006E0AE0, &qword_10057C4E0);
    v36 = v51;

    v37 = sub_10056DF68();
    v38 = sub_100573448();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v60;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v41 = 136446466;
      *(v41 + 4) = sub_10008190C(v50, v36, v61);
      *(v41 + 12) = 2082;
      swift_beginAccess();
      sub_10000CC8C(v35, v56, &qword_1006E0AE0, &qword_10057C4E0);
      v42 = sub_100572978();
      v44 = sub_10008190C(v42, v43, v61);

      *(v41 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "Loaded cached item named %{public}s, value %{public}s", v41, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008246C(v48, v32);

    v45 = v54;
    v46 = v49;
    swift_beginAccess();
    sub_10000CC8C(v35, v40, &qword_1006E0AE0, &qword_10057C4E0);
    sub_10001036C(v35, &qword_1006E0AE0, &qword_10057C4E0);
    return (v52)(v46, v45);
  }
}

uint64_t sub_100071ED8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v7 = &v29 - v6;
  v8 = sub_10056C8A8();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v29 - v12;
  sub_10000CC8C(v3, v7, qword_1006E1D50, &qword_10057CA90);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10001036C(v7, qword_1006E1D50, &qword_10057CA90);
    type metadata accessor for WidgetDiskCache(0);

    v14 = sub_10056DF68();
    v15 = sub_100573428();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v36[0] = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_10008190C(a1, a2, v36);
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to get widget cache url for loading item named %{public}s", v16, 0xCu);
      sub_100010474(v17);
    }

    return 0;
  }

  else
  {
    v33 = a1;
    URL.appending(_:)(a1, a2, 1);
    v19 = *(v9 + 8);
    v19(v7, v8);
    (*(v9 + 32))(v13, v11, v8);
    type metadata accessor for WidgetDiskCache(0);
    __chkstk_darwin();
    *(&v29 - 2) = v13;
    sub_1005735F8();
    v32 = v9 + 8;
    v34 = v19;
    v20 = v36[0];
    v21 = v36[1];
    sub_10056C298();
    swift_allocObject();
    sub_10056C288();
    sub_100009DCC(&qword_1006DFF98, &qword_10057BB20);
    sub_10008B284(&qword_1006DFFC0, &qword_1006DFFC8, &unk_10057DDCC, &protocol conformance descriptor for <A> [A]);
    sub_10056C278();
    v30 = v20;
    v31 = v21;

    v18 = v36[0];

    v22 = sub_10056DF68();
    v23 = sub_100573448();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v36[0] = swift_slowAlloc();
      *v24 = 136446466;
      *(v24 + 4) = sub_10008190C(v33, a2, v36);
      *(v24 + 12) = 2082;
      v35 = v18;

      sub_100009DCC(&qword_1006E3158, &unk_10057FC40);
      v25 = sub_100572978();
      v27 = sub_10008190C(v25, v26, v36);

      *(v24 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "Loaded cached item named %{public}s, value %{public}s", v24, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008246C(v30, v31);

    v34(v13, v8);
  }

  return v18;
}

void sub_100072588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v57 = a3;
  v65 = a1;
  v66 = a2;
  v5 = sub_100570B88();
  v62 = *(v5 - 8);
  v63 = v5;
  __chkstk_darwin();
  v60 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100570BC8();
  v59 = *(v61 - 8);
  __chkstk_darwin();
  v58 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for WidgetDiskCache(0);
  v54 = *(v64 - 8);
  __chkstk_darwin();
  v55 = v8;
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(sub_100009DCC(&qword_1006DFD70, &qword_10057B7A8) - 8);
  v9 = *(v52 + 64);
  __chkstk_darwin();
  v53 = &v45 - v10;
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v12 = &v45 - v11;
  v13 = sub_10056C8A8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v51 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v45 - v16;
  __chkstk_darwin();
  v19 = &v45 - v18;
  sub_10000CC8C(v3, v12, qword_1006E1D50, &qword_10057CA90);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v20 = v65;
    sub_10001036C(v12, qword_1006E1D50, &qword_10057CA90);
    v21 = v66;

    v22 = sub_10056DF68();
    v23 = sub_100573448();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_10008190C(v20, v21, aBlock);
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to get widget cache url for saving item named %{public}s", v24, 0xCu);
      sub_100010474(v25);
    }
  }

  else
  {
    URL.appending(_:)(v65, v66, 1);
    v26 = *(v14 + 8);
    v49 = v14 + 8;
    v50 = v26;
    v26(v12, v13);
    v47 = *(v14 + 32);
    v48 = v19;
    v27 = v17;
    v28 = v13;
    v46 = v13;
    v47(v19, v27, v13);
    v64 = *(v3 + *(v64 + 20));
    v29 = v53;
    sub_10000CC8C(v57, v53, &qword_1006DFD70, &qword_10057B7A8);
    v30 = v56;
    sub_100081FB4(v4, v56, type metadata accessor for WidgetDiskCache);
    v31 = v51;
    (*(v14 + 16))(v51, v19, v28);
    v32 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v33 = (v9 + *(v54 + 80) + v32) & ~*(v54 + 80);
    v34 = (v55 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = (*(v14 + 80) + v34 + 16) & ~*(v14 + 80);
    v36 = swift_allocObject();
    sub_100019B40(v29, v36 + v32, &qword_1006DFD70, &qword_10057B7A8);
    sub_10008237C(v30, v36 + v33, type metadata accessor for WidgetDiskCache);
    v37 = (v36 + v34);
    v38 = v66;
    *v37 = v65;
    v37[1] = v38;
    v39 = v31;
    v40 = v46;
    v47((v36 + v35), v39, v46);
    aBlock[4] = sub_10008AA08;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007885C;
    aBlock[3] = &unk_100681BA0;
    v41 = _Block_copy(aBlock);

    v42 = v58;
    sub_100570BA8();
    v67 = _swiftEmptyArrayStorage;
    sub_100082424(&qword_1006E3050, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100009DCC(&qword_1006E3058, &qword_10057FA78);
    sub_100010BC0(&qword_1006E3060, &qword_1006E3058, &qword_10057FA78, &protocol conformance descriptor for [A]);
    v43 = v60;
    v44 = v63;
    sub_100573DA8();
    sub_100573608();
    _Block_release(v41);
    (*(v62 + 8))(v43, v44);
    (*(v59 + 8))(v42, v61);
    v50(v48, v40);
  }
}

void sub_100072D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v57 = a3;
  v65 = a1;
  v66 = a2;
  v5 = sub_100570B88();
  v62 = *(v5 - 8);
  v63 = v5;
  __chkstk_darwin();
  v60 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100570BC8();
  v59 = *(v61 - 8);
  __chkstk_darwin();
  v58 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for WidgetDiskCache(0);
  v54 = *(v64 - 8);
  __chkstk_darwin();
  v55 = v8;
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(sub_100009DCC(&qword_1006DFCE0, &qword_10057B698) - 8);
  v9 = *(v52 + 64);
  __chkstk_darwin();
  v53 = &v45 - v10;
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v12 = &v45 - v11;
  v13 = sub_10056C8A8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v51 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v45 - v16;
  __chkstk_darwin();
  v19 = &v45 - v18;
  sub_10000CC8C(v3, v12, qword_1006E1D50, &qword_10057CA90);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v20 = v65;
    sub_10001036C(v12, qword_1006E1D50, &qword_10057CA90);
    v21 = v66;

    v22 = sub_10056DF68();
    v23 = sub_100573448();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_10008190C(v20, v21, aBlock);
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to get widget cache url for saving item named %{public}s", v24, 0xCu);
      sub_100010474(v25);
    }
  }

  else
  {
    URL.appending(_:)(v65, v66, 1);
    v26 = *(v14 + 8);
    v49 = v14 + 8;
    v50 = v26;
    v26(v12, v13);
    v47 = *(v14 + 32);
    v48 = v19;
    v27 = v17;
    v28 = v13;
    v46 = v13;
    v47(v19, v27, v13);
    v64 = *(v3 + *(v64 + 20));
    v29 = v53;
    sub_10000CC8C(v57, v53, &qword_1006DFCE0, &qword_10057B698);
    v30 = v56;
    sub_100081FB4(v4, v56, type metadata accessor for WidgetDiskCache);
    v31 = v51;
    (*(v14 + 16))(v51, v19, v28);
    v32 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v33 = (v9 + *(v54 + 80) + v32) & ~*(v54 + 80);
    v34 = (v55 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = (*(v14 + 80) + v34 + 16) & ~*(v14 + 80);
    v36 = swift_allocObject();
    sub_100019B40(v29, v36 + v32, &qword_1006DFCE0, &qword_10057B698);
    sub_10008237C(v30, v36 + v33, type metadata accessor for WidgetDiskCache);
    v37 = (v36 + v34);
    v38 = v66;
    *v37 = v65;
    v37[1] = v38;
    v39 = v31;
    v40 = v46;
    v47((v36 + v35), v39, v46);
    aBlock[4] = sub_10008A510;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007885C;
    aBlock[3] = &unk_100681B28;
    v41 = _Block_copy(aBlock);

    v42 = v58;
    sub_100570BA8();
    v67 = _swiftEmptyArrayStorage;
    sub_100082424(&qword_1006E3050, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100009DCC(&qword_1006E3058, &qword_10057FA78);
    sub_100010BC0(&qword_1006E3060, &qword_1006E3058, &qword_10057FA78, &protocol conformance descriptor for [A]);
    v43 = v60;
    v44 = v63;
    sub_100573DA8();
    sub_100573608();
    _Block_release(v41);
    (*(v62 + 8))(v43, v44);
    (*(v59 + 8))(v42, v61);
    v50(v48, v40);
  }
}

void sub_1000735A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v57 = a3;
  v65 = a1;
  v66 = a2;
  v5 = sub_100570B88();
  v62 = *(v5 - 8);
  v63 = v5;
  __chkstk_darwin();
  v60 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100570BC8();
  v59 = *(v61 - 8);
  __chkstk_darwin();
  v58 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for WidgetDiskCache(0);
  v54 = *(v64 - 8);
  __chkstk_darwin();
  v55 = v8;
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(sub_100009DCC(&qword_1006E0790, &qword_10057C370) - 8);
  v9 = *(v52 + 64);
  __chkstk_darwin();
  v53 = &v45 - v10;
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v12 = &v45 - v11;
  v13 = sub_10056C8A8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v51 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v45 - v16;
  __chkstk_darwin();
  v19 = &v45 - v18;
  sub_10000CC8C(v3, v12, qword_1006E1D50, &qword_10057CA90);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v20 = v65;
    sub_10001036C(v12, qword_1006E1D50, &qword_10057CA90);
    v21 = v66;

    v22 = sub_10056DF68();
    v23 = sub_100573448();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_10008190C(v20, v21, aBlock);
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to get widget cache url for saving item named %{public}s", v24, 0xCu);
      sub_100010474(v25);
    }
  }

  else
  {
    URL.appending(_:)(v65, v66, 1);
    v26 = *(v14 + 8);
    v49 = v14 + 8;
    v50 = v26;
    v26(v12, v13);
    v47 = *(v14 + 32);
    v48 = v19;
    v27 = v17;
    v28 = v13;
    v46 = v13;
    v47(v19, v27, v13);
    v64 = *(v3 + *(v64 + 20));
    v29 = v53;
    sub_10000CC8C(v57, v53, &qword_1006E0790, &qword_10057C370);
    v30 = v56;
    sub_100081FB4(v4, v56, type metadata accessor for WidgetDiskCache);
    v31 = v51;
    (*(v14 + 16))(v51, v19, v28);
    v32 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v33 = (v9 + *(v54 + 80) + v32) & ~*(v54 + 80);
    v34 = (v55 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = (*(v14 + 80) + v34 + 16) & ~*(v14 + 80);
    v36 = swift_allocObject();
    sub_100019B40(v29, v36 + v32, &qword_1006E0790, &qword_10057C370);
    sub_10008237C(v30, v36 + v33, type metadata accessor for WidgetDiskCache);
    v37 = (v36 + v34);
    v38 = v66;
    *v37 = v65;
    v37[1] = v38;
    v39 = v31;
    v40 = v46;
    v47((v36 + v35), v39, v46);
    aBlock[4] = sub_1000823E4;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007885C;
    aBlock[3] = &unk_100681998;
    v41 = _Block_copy(aBlock);

    v42 = v58;
    sub_100570BA8();
    v67 = _swiftEmptyArrayStorage;
    sub_100082424(&qword_1006E3050, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100009DCC(&qword_1006E3058, &qword_10057FA78);
    sub_100010BC0(&qword_1006E3060, &qword_1006E3058, &qword_10057FA78, &protocol conformance descriptor for [A]);
    v43 = v60;
    v44 = v63;
    sub_100573DA8();
    sub_100573608();
    _Block_release(v41);
    (*(v62 + 8))(v43, v44);
    (*(v59 + 8))(v42, v61);
    v50(v48, v40);
  }
}

void sub_100073DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v57 = a3;
  v65 = a1;
  v66 = a2;
  v5 = sub_100570B88();
  v62 = *(v5 - 8);
  v63 = v5;
  __chkstk_darwin();
  v60 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100570BC8();
  v59 = *(v61 - 8);
  __chkstk_darwin();
  v58 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for WidgetDiskCache(0);
  v54 = *(v64 - 8);
  __chkstk_darwin();
  v55 = v8;
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(sub_100009DCC(&qword_1006E0AE0, &qword_10057C4E0) - 8);
  v9 = *(v52 + 64);
  __chkstk_darwin();
  v53 = &v45 - v10;
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v12 = &v45 - v11;
  v13 = sub_10056C8A8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v51 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v45 - v16;
  __chkstk_darwin();
  v19 = &v45 - v18;
  sub_10000CC8C(v3, v12, qword_1006E1D50, &qword_10057CA90);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v20 = v65;
    sub_10001036C(v12, qword_1006E1D50, &qword_10057CA90);
    v21 = v66;

    v22 = sub_10056DF68();
    v23 = sub_100573448();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_10008190C(v20, v21, aBlock);
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to get widget cache url for saving item named %{public}s", v24, 0xCu);
      sub_100010474(v25);
    }
  }

  else
  {
    URL.appending(_:)(v65, v66, 1);
    v26 = *(v14 + 8);
    v49 = v14 + 8;
    v50 = v26;
    v26(v12, v13);
    v47 = *(v14 + 32);
    v48 = v19;
    v27 = v17;
    v28 = v13;
    v46 = v13;
    v47(v19, v27, v13);
    v64 = *(v3 + *(v64 + 20));
    v29 = v53;
    sub_10000CC8C(v57, v53, &qword_1006E0AE0, &qword_10057C4E0);
    v30 = v56;
    sub_100081FB4(v4, v56, type metadata accessor for WidgetDiskCache);
    v31 = v51;
    (*(v14 + 16))(v51, v19, v28);
    v32 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v33 = (v9 + *(v54 + 80) + v32) & ~*(v54 + 80);
    v34 = (v55 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = (*(v14 + 80) + v34 + 16) & ~*(v14 + 80);
    v36 = swift_allocObject();
    sub_100019B40(v29, v36 + v32, &qword_1006E0AE0, &qword_10057C4E0);
    sub_10008237C(v30, v36 + v33, type metadata accessor for WidgetDiskCache);
    v37 = (v36 + v34);
    v38 = v66;
    *v37 = v65;
    v37[1] = v38;
    v39 = v31;
    v40 = v46;
    v47((v36 + v35), v39, v46);
    aBlock[4] = sub_100089DB0;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007885C;
    aBlock[3] = &unk_100681A88;
    v41 = _Block_copy(aBlock);

    v42 = v58;
    sub_100570BA8();
    v67 = _swiftEmptyArrayStorage;
    sub_100082424(&qword_1006E3050, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100009DCC(&qword_1006E3058, &qword_10057FA78);
    sub_100010BC0(&qword_1006E3060, &qword_1006E3058, &qword_10057FA78, &protocol conformance descriptor for [A]);
    v43 = v60;
    v44 = v63;
    sub_100573DA8();
    sub_100573608();
    _Block_release(v41);
    (*(v62 + 8))(v43, v44);
    (*(v59 + 8))(v42, v61);
    v50(v48, v40);
  }
}

uint64_t sub_1000745E4(uint64_t result, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_100009DCC(a2, a3);
    sub_100010BC0(a4, a2, a3, &protocol conformance descriptor for MusicItemCollection<A>);
    sub_1005731B8();
    sub_100573208();
    sub_1005731D8();
    if (v11)
    {
      sub_100573208();
    }

    else
    {
      v9 = v10;
    }

    result = sub_1005731B8();
    if (v9 >= v10)
    {
      sub_1005732D8();
      (*(*(v8 - 8) + 8))(v4, v8);
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100074754(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for WidgetMusicItem(0);
    return a2;
  }

  return result;
}

uint64_t sub_1000747E8()
{
  v1[2] = v0;
  v2 = sub_100571418();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_100009DCC(&qword_1006E30F8, &qword_10057FBC8);
  v1[7] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3100, &qword_10057FBD0);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_100572F08();
  v1[11] = sub_100572EF8();
  v4 = sub_100572E78();
  v1[12] = v4;
  v1[13] = v3;

  return _swift_task_switch(sub_100074968, v4, v3);
}

uint64_t sub_100074968()
{
  sub_10056D948();
  v0[14] = sub_10056D928();
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = sub_100571C48();
  *v1 = v0;
  v1[1] = sub_100074A30;
  v3 = v0[10];
  v4 = v0[2];

  return InternalMusicPlayer.playabilityStatus<A>(for:)(v3, v4, v2, &protocol witness table for Track);
}

uint64_t sub_100074A30()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_10008B9E4;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_10008B9E0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100074B74()
{
  v1[2] = v0;
  v2 = sub_100571418();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_100009DCC(&qword_1006E30F8, &qword_10057FBC8);
  v1[7] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3100, &qword_10057FBD0);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_100572F08();
  v1[11] = sub_100572EF8();
  v4 = sub_100572E78();
  v1[12] = v4;
  v1[13] = v3;

  return _swift_task_switch(sub_100074CF4, v4, v3);
}

uint64_t sub_100074CF4()
{
  sub_10056D948();
  v0[14] = sub_10056D928();
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = sub_100571F08();
  *v1 = v0;
  v1[1] = sub_100074A30;
  v3 = v0[10];
  v4 = v0[2];

  return InternalMusicPlayer.playabilityStatus<A>(for:)(v3, v4, v2, &protocol witness table for Station);
}

uint64_t sub_100074DBC()
{
  v1[2] = v0;
  v2 = sub_100571418();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_100009DCC(&qword_1006E30F8, &qword_10057FBC8);
  v1[7] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3100, &qword_10057FBD0);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_100572F08();
  v1[11] = sub_100572EF8();
  v4 = sub_100572E78();
  v1[12] = v4;
  v1[13] = v3;

  return _swift_task_switch(sub_100074F3C, v4, v3);
}

uint64_t sub_100074F3C()
{
  sub_10056D948();
  v0[14] = sub_10056D928();
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = sub_1005722D8();
  *v1 = v0;
  v1[1] = sub_100074A30;
  v3 = v0[10];
  v4 = v0[2];

  return InternalMusicPlayer.playabilityStatus<A>(for:)(v3, v4, v2, &protocol witness table for Playlist);
}

uint64_t sub_100075004()
{
  v1[2] = v0;
  v2 = sub_100571418();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_100009DCC(&qword_1006E30F8, &qword_10057FBC8);
  v1[7] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3100, &qword_10057FBD0);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_100572F08();
  v1[11] = sub_100572EF8();
  v4 = sub_100572E78();
  v1[12] = v4;
  v1[13] = v3;

  return _swift_task_switch(sub_100075184, v4, v3);
}

uint64_t sub_100075184()
{
  sub_10056D948();
  v0[14] = sub_10056D928();
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = sub_100571B78();
  *v1 = v0;
  v1[1] = sub_100074A30;
  v3 = v0[10];
  v4 = v0[2];

  return InternalMusicPlayer.playabilityStatus<A>(for:)(v3, v4, v2, &protocol witness table for Album);
}

uint64_t sub_10007524C()
{
  v1[2] = v0;
  v2 = sub_100571418();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_100009DCC(&qword_1006E30F8, &qword_10057FBC8);
  v1[7] = swift_task_alloc();
  sub_100009DCC(&qword_1006E3100, &qword_10057FBD0);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_100572F08();
  v1[11] = sub_100572EF8();
  v4 = sub_100572E78();
  v1[12] = v4;
  v1[13] = v3;

  return _swift_task_switch(sub_1000753CC, v4, v3);
}

uint64_t sub_1000753CC()
{
  sub_10056D948();
  v0[14] = sub_10056D928();
  v1 = swift_task_alloc();
  v0[15] = v1;
  v2 = sub_100570CC8();
  *v1 = v0;
  v1[1] = sub_100075494;
  v3 = v0[10];
  v4 = v0[2];

  return InternalMusicPlayer.playabilityStatus<A>(for:)(v3, v4, v2, &protocol witness table for RecentlyPlayedMusicItem);
}

uint64_t sub_100075494()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_100075970;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1000755D8;
  }

  return _swift_task_switch(v5, v3, v4);
}