uint64_t sub_1000015C0()
{
  v0 = sub_100006954();
  sub_100006314(v0, qword_10000C930);
  sub_100004FA4(v0, qword_10000C930);
  return sub_100006944();
}

Swift::Int sub_100001648()
{
  sub_100006B64();
  sub_100006B74(0);
  return sub_100006B84();
}

Swift::Int sub_1000016B4(uint64_t a1)
{
  sub_100006B64();
  sub_100006B74(0);
  return sub_100006B84();
}

uint64_t sub_100001710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7552646C756F6873 && a2 == 0xE90000000000006ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_100006B04();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000017B8(uint64_t a1)
{
  v2 = sub_100004F50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000017F4(uint64_t a1)
{
  v2 = sub_100004F50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001830@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_100004924(&qword_10000C0D8, &qword_1000071B0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11 - v7;
  sub_100004F0C(a1, a1[3]);
  sub_100004F50();
  sub_100006BC4();
  if (v2)
  {
    return sub_100005874(a1);
  }

  v9 = sub_100006AD4();
  (*(v6 + 8))(v8, v5);
  result = sub_100005874(a1);
  *a2 = v9 & 1;
  return result;
}

uint64_t sub_100001994(void *a1)
{
  v2 = sub_100004924(&qword_10000C0E0, &qword_1000071B8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_100004F0C(a1, a1[3]);
  sub_100004F50();
  sub_100006BD4();
  sub_100006AE4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100001ACC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7075727265746E69;
  }

  else
  {
    v3 = 0x656C6C65636E6163;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xEB00000000646574;
  }

  if (*a2)
  {
    v5 = 0x7075727265746E69;
  }

  else
  {
    v5 = 0x656C6C65636E6163;
  }

  if (*a2)
  {
    v6 = 0xEB00000000646574;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100006B04();
  }

  return v8 & 1;
}

Swift::Int sub_100001B80()
{
  sub_100006B64();
  sub_100006994();

  return sub_100006B84();
}

uint64_t sub_100001C10(uint64_t a1)
{
  sub_100006994();
}

Swift::Int sub_100001C8C(uint64_t a1)
{
  sub_100006B64();
  sub_100006994();

  return sub_100006B84();
}

uint64_t sub_100001D18@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100008720;
  v8._object = v3;
  v5 = sub_100006AC4(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100001D78(uint64_t *a1@<X8>)
{
  v2 = 0x656C6C65636E6163;
  if (*v1)
  {
    v2 = 0x7075727265746E69;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xEB00000000646574;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100001DD4(uint64_t a1)
{
  v2[2] = v1;
  sub_100004924(&qword_10000C0F0, &qword_1000071D0);
  v4 = swift_task_alloc();
  v2[3] = v4;
  v5 = sub_100004924(&qword_10000C010, &unk_100007010);
  v2[4] = v5;
  v2[5] = *(v5 - 8);
  v2[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[7] = v6;
  v7 = type metadata accessor for QuartzWorker(0);
  v8 = sub_1000055A4(&qword_10000C0B0, type metadata accessor for QuartzWorker, &unk_1000070A0);
  v9 = sub_100004AD0();
  v10 = sub_100004B24();
  *v6 = v2;
  v6[1] = sub_100001F9C;

  return MLHostExtension.loadConfig<A>(context:)(v4, a1, v7, &type metadata for QuartzWorkerConfig, v8, v9, v10);
}

uint64_t sub_100001F9C()
{

  return _swift_task_switch(sub_100002098, 0, 0);
}

uint64_t sub_100002098()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    (*(v2 + 16))(*(v0 + 48), *(v0 + 16), v1);
    if (v4(v3, 1, v1) != 1)
    {
      sub_100005778(*(v0 + 24), &qword_10000C0F0, &qword_1000071D0);
    }
  }

  else
  {
    (*(v2 + 32))(*(v0 + 48), v3, v1);
  }

  sub_1000068F4();
  if ((*(v0 + 64) & 1) == 0)
  {
    if (qword_10000C160 != -1)
    {
      swift_once();
    }

    v5 = sub_100006954();
    sub_100004FA4(v5, qword_10000C930);
    v6 = sub_100006934();
    v7 = sub_100006A14();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Config doesn't have shouldRun set, exiting early", v8, 2u);
    }
  }

  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v11 = *(v0 + 32);
  v12 = objc_allocWithZone(sub_1000068B4());
  v13 = sub_1000068A4();
  (*(v10 + 8))(v9, v11);

  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_1000022DC(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_100006854();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v4 = sub_1000067E4();
  v2[18] = v4;
  v5 = *(v4 - 8);
  v2[19] = v5;
  v2[20] = *(v5 + 64);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v6 = sub_100006804();
  v2[23] = v6;
  v2[24] = *(v6 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = sub_100004924(&qword_10000C0E8, &qword_1000071C8);
  v2[27] = swift_task_alloc();
  v7 = sub_100006834();
  v2[28] = v7;
  v2[29] = *(v7 - 8);
  v2[30] = swift_task_alloc();
  v8 = sub_1000067D4();
  v2[31] = v8;
  v2[32] = *(v8 - 8);
  v2[33] = swift_task_alloc();
  v9 = sub_1000067A4();
  v2[34] = v9;
  v2[35] = *(v9 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  sub_100004924(&qword_10000C0F0, &qword_1000071D0);
  v2[39] = swift_task_alloc();
  v10 = sub_100004924(&qword_10000C010, &unk_100007010);
  v2[40] = v10;
  v2[41] = *(v10 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();

  return _swift_task_switch(sub_10000267C, 0, 0);
}

uint64_t sub_10000267C()
{
  if (qword_10000C160 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_100006954();
  v0[44] = sub_100004FA4(v2, qword_10000C930);
  v3 = v1;
  v4 = sub_100006934();
  v5 = sub_100006A14();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context: %@", v7, 0xCu);
    sub_100005778(v8, &qword_10000C0F8, &qword_1000071D8);
  }

  v10 = swift_task_alloc();
  v0[45] = v10;
  v11 = type metadata accessor for QuartzWorker(0);
  v12 = sub_1000055A4(&qword_10000C0B0, type metadata accessor for QuartzWorker, &unk_1000070A0);
  v13 = sub_100004AD0();
  v14 = sub_100004B24();
  *v10 = v0;
  v10[1] = sub_1000028A8;
  v15 = v0[39];
  v16 = v0[13];

  return MLHostExtension.loadConfig<A>(context:)(v15, v16, v11, &type metadata for QuartzWorkerConfig, v12, v13, v14);
}

uint64_t sub_1000028A8()
{

  return _swift_task_switch(sub_1000029A4, 0, 0);
}

uint64_t sub_1000029A4()
{
  v55 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v6 = *(v0 + 344);
  if (v5 == 1)
  {
    v7 = *(v2 + 16);
    v7(v6, *(v0 + 112), v1);
    if (v4(v3, 1, v1) != 1)
    {
      sub_100005778(*(v0 + 312), &qword_10000C0F0, &qword_1000071D0);
    }
  }

  else
  {
    (*(v2 + 32))(v6, v3, v1);
    v7 = *(v2 + 16);
  }

  v7(*(v0 + 336), *(v0 + 344), *(v0 + 320));
  v8 = sub_100006934();
  v9 = sub_100006A14();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 328);
  v11 = *(v0 + 336);
  v13 = *(v0 + 320);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v54[0] = v52;
    *v14 = 136315138;
    sub_10000582C(&qword_10000C110, &qword_10000C010, &unk_100007010, &protocol conformance descriptor for MLHostParameters<A>);
    v15 = sub_100006AF4();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_100004FDC(v15, v17, v54);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Configuration: %s", v14, 0xCu);
    sub_100005874(v52);
  }

  else
  {

    v18 = *(v12 + 8);
    v18(v11, v13);
  }

  *(v0 + 368) = v18;
  if (sub_1000069C4())
  {
    v20 = *(v0 + 104);
    v21 = sub_100006934();
    v22 = sub_100006A14();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v54[0] = swift_slowAlloc();
      *v23 = 136315394;
      v24 = sub_100006914();
      v26 = sub_100004FDC(v24, v25, v54);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      v27 = sub_100006924();
      v29 = sub_100004FDC(v27, v28, v54);

      *(v23 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "TaskId: %s, TaskName: %s: asked to stop!", v23, 0x16u);
      swift_arrayDestroy();
    }

    v30 = *(v0 + 344);
    v31 = *(v0 + 320);
    v54[3] = &type metadata for QuartzWorkerError;
    v54[4] = sub_1000057D8();
    LOBYTE(v54[0]) = 0;
    v32 = objc_allocWithZone(sub_1000068B4());
    v53 = sub_100006894();
    v18(v30, v31);

    v33 = *(v0 + 8);

    return v33(v53);
  }

  else
  {
    v35 = sub_100006934();
    v36 = sub_100006A14();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Setting up for analysis", v37, 2u);
    }

    v38 = *(v0 + 296);
    v39 = *(v0 + 280);
    v41 = *(v0 + 264);
    v40 = *(v0 + 272);
    v43 = *(v0 + 248);
    v42 = *(v0 + 256);

    sub_1000067C4();
    sub_100006784();
    sub_1000067B4();
    v44 = *(v39 + 8);
    *(v0 + 376) = v44;
    *(v0 + 384) = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v44(v38, v40);
    (*(v42 + 8))(v41, v43);
    sub_100006794();
    v45 = sub_100006934();
    v46 = sub_100006A14();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Starting analysis command", v47, 2u);
    }

    v48 = swift_task_alloc();
    *(v0 + 392) = v48;
    *v48 = v0;
    v48[1] = sub_100003024;
    v49 = *(v0 + 304);
    v50 = *(v0 + 288);
    v51 = *(v0 + 240);

    return runAnalysisCommand(startDate:endDate:)(v51, v50, v49);
  }
}

uint64_t sub_100003024()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_1000036F4;
  }

  else
  {
    v2 = sub_100003138;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100003138()
{
  v1 = sub_100006824();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[16];
    sub_100005584(0, v2, 0);
    v5 = *(v3 + 16);
    v4 = v3 + 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v47 = *(v4 + 56);
    v49 = v5;
    do
    {
      v7 = v0[17];
      v8 = v0[15];
      v49(v7, v6, v8);
      v9 = sub_100006844();
      v11 = v10;
      (*(v4 - 8))(v7, v8);
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_100005584((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v9;
      v14[5] = v11;
      v6 += v47;
      --v2;
    }

    while (v2);
  }

  v15 = v0[26];
  v16 = v0[27];
  v17 = v0[24];
  v18 = v0[25];
  v19 = v0[23];
  sub_100006814();
  (*(v17 + 16))(v16, v18, v19);
  v20 = *(v15 + 36);
  v21 = sub_1000055A4(&qword_10000C100, &type metadata accessor for DataFrame.Rows, &protocol conformance descriptor for DataFrame.Rows);
  sub_1000069D4();
  (*(v17 + 8))(v18, v19);
  v22 = v21;
  sub_1000069E4();
  if (*(v16 + v20) != v0[12])
  {
    v48 = v20;
    v50 = v16;
    v23 = v0[19];
    do
    {
      v24 = v0[22];
      v45 = v0[21];
      v25 = v0[18];
      v26 = sub_100006A04();
      (*(v23 + 16))(v24);
      v26(v0 + 8, 0);
      sub_1000069F4();
      v46 = sub_100006984();
      v27 = v22;
      v28 = *(v23 + 32);
      v28(v45, v24, v25);
      v29 = (*(v23 + 80) + 24) & ~*(v23 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = _swiftEmptyArrayStorage;
      v28(v30 + v29, v45, v25);
      v22 = v27;
      v0[6] = sub_1000056B0;
      v0[7] = v30;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_100003F30;
      v0[5] = &unk_100008840;
      v31 = _Block_copy(v0 + 2);

      AnalyticsSendEventLazy();
      _Block_release(v31);

      sub_1000069E4();
    }

    while (*(v50 + v48) != v0[12]);
  }

  v33 = v0[29];
  v32 = v0[30];
  v35 = v0[27];
  v34 = v0[28];

  sub_100005778(v35, &qword_10000C0E8, &qword_1000071C8);
  (*(v33 + 8))(v32, v34);
  v36 = v0[47];
  v51 = v0[46];
  v37 = v0[43];
  v38 = v0[40];
  v39 = v0[38];
  v40 = v0[36];
  v41 = v0[34];
  v42 = objc_allocWithZone(sub_1000068B4());
  v52 = sub_1000068A4();
  v36(v40, v41);
  v36(v39, v41);
  v51(v37, v38);

  v43 = v0[1];

  return v43(v52);
}

uint64_t sub_1000036F4()
{
  swift_errorRetain();
  v1 = sub_100006934();
  v2 = sub_100006A24();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Got an error from runAnalysisCommand: %@", v3, 0xCu);
    sub_100005778(v4, &qword_10000C0F8, &qword_1000071D8);
  }

  else
  {
  }

  v6 = v0[47];
  v15 = v0[46];
  v7 = v0[43];
  v8 = v0[40];
  v9 = v0[38];
  v10 = v0[36];
  v11 = v0[34];
  v12 = objc_allocWithZone(sub_1000068B4());
  v16 = sub_1000068A4();
  v6(v10, v11);
  v6(v9, v11);
  v15(v7, v8);

  v13 = v0[1];

  return v13(v16);
}

void *sub_10000396C(void *a1, uint64_t *a2)
{
  v4 = sub_1000067A4();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v8 = a2[1];
  v10 = v9 == 1702125924 && v8 == 0xE400000000000000;
  if (v10 || (sub_100006B04() & 1) != 0)
  {
    result = sub_1000067F4();
    if (v17)
    {
      sub_100005B84(v16, v18);
      swift_dynamicCast();
      v12 = sub_100006874();
      (*(v5 + 8))(v7, v4);
      return sub_100003BB0([objc_allocWithZone(NSNumber) initWithInteger:v12], 1702125924, 0xE400000000000000);
    }

    __break(1u);
    goto LABEL_12;
  }

  result = sub_1000067F4();
  if (!v17)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_100005B84(v16, v18);
  sub_100005B94(0, &qword_10000C130, NSNumber_ptr);
  swift_dynamicCast();
  v13 = v15[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15[0] = *a1;
  sub_100006030(v13, v9, v8, isUniquelyReferenced_nonNull_native);

  *a1 = v15[0];
  return result;
}

uint64_t sub_100003BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100006030(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_100005A54(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1000061A8();
        v14 = v16;
      }

      result = sub_100005E80(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_100003CA8(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 40); ; i += 2)
    {
      v8 = *i;
      v9[0] = *(i - 1);
      v9[1] = v8;

      a2(&v10, v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

void sub_100003D50(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100004924(&qword_10000C128, &qword_1000071E8);
    v2 = sub_100006AA4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_100005A54(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

Class sub_100003F30(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100005B94(0, &qword_10000C120, NSObject_ptr);
    v4.super.isa = sub_100006964().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_100003FCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100006780;

  return sub_100001DD4(a1);
}

uint64_t sub_100004060(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000040F4;

  return sub_1000022DC(a1);
}

uint64_t sub_1000040F4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1000041F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1000042D4;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_1000042D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000043C8(uint64_t a1)
{
  v2 = sub_1000055A4(&qword_10000C0B0, type metadata accessor for QuartzWorker, &unk_1000070A0);

  return MLHostExtension.configuration.getter(a1, v2);
}

uint64_t sub_100004444()
{
  sub_100004AD0();
  sub_100004B24();
  return sub_1000068E4();
}

uint64_t sub_100004498(char a1)
{
  v2 = sub_100006BB4();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v23 + 1) = &type metadata for QuartzWorkerConfig;
  LOBYTE(v22) = a1;
  sub_100006B94();
  v6 = sub_100006BA4();
  (*(v3 + 8))(v5, v2);
  v18[1] = v6;
  sub_100006A64();
  sub_100006AB4();
  if (*(&v24 + 1))
  {
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v21[0] = v22;
      v21[1] = v23;
      v21[2] = v24;
      v8._object = *(&v22 + 1);
      if (*(&v22 + 1))
      {
        v8._countAndFlagsBits = *&v21[0];
        v19 = 0;
        v20 = 0xE000000000000000;
        sub_1000069A4(v8);
        v25._countAndFlagsBits = 8250;
        v25._object = 0xE200000000000000;
        sub_1000069A4(v25);
        sub_100006A74();
        v9 = v19;
        v10 = v20;
        sub_100005778(v21, &qword_10000C0C8, &qword_1000071A0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_100004DFC(0, *(v7 + 2) + 1, 1, v7);
        }

        v12 = *(v7 + 2);
        v11 = *(v7 + 3);
        if (v12 >= v11 >> 1)
        {
          v7 = sub_100004DFC((v11 > 1), v12 + 1, 1, v7);
        }

        *(v7 + 2) = v12 + 1;
        v13 = &v7[16 * v12];
        *(v13 + 4) = v9;
        *(v13 + 5) = v10;
      }

      else
      {
        sub_100005778(v21, &qword_10000C0C8, &qword_1000071A0);
      }

      sub_100006AB4();
    }

    while (*(&v24 + 1));
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  *&v22 = 0xD000000000000013;
  *(&v22 + 1) = 0x8000000100007450;
  *&v21[0] = v7;
  sub_100004924(&qword_10000C0B8, &qword_100007198);
  sub_10000582C(&qword_10000C0C0, &qword_10000C0B8, &qword_100007198, &protocol conformance descriptor for [A]);
  v14 = sub_100006974();
  v16 = v15;

  v26._countAndFlagsBits = v14;
  v26._object = v16;
  sub_1000069A4(v26);

  v27._countAndFlagsBits = 41;
  v27._object = 0xE100000000000000;
  sub_1000069A4(v27);
  return v22;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for QuartzWorker(0);
  sub_1000055A4(&qword_10000C008, type metadata accessor for QuartzWorker, &unk_100007158);
  sub_100006884();
  return 0;
}

uint64_t type metadata accessor for QuartzWorker(uint64_t a1)
{
  result = qword_10000C168;
  if (!qword_10000C168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000048AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004924(&qword_10000C010, &unk_100007010);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100004924(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004980(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004924(&qword_10000C010, &unk_100007010);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000049FC(uint64_t a1)
{
  sub_100004A68(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100004A68(uint64_t a1)
{
  if (!qword_10000C070)
  {
    sub_100004AD0();
    sub_100004B24();
    v1 = sub_100006904();
    if (!v2)
    {
      atomic_store(v1, &qword_10000C070);
    }
  }
}

unint64_t sub_100004AD0()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100004B24()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QuartzWorkerConfig(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for QuartzWorkerConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100004DB4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

char *sub_100004DFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004924(&qword_10000C0D0, &qword_1000071A8);
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

void *sub_100004F0C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100004F50()
{
  result = qword_10000C400[0];
  if (!qword_10000C400[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C400);
  }

  return result;
}

uint64_t sub_100004FA4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100004FDC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000050A8(v11, 0, 0, 1, a1, a2);
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
    sub_1000058C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005874(v11);
  return v7;
}

unint64_t sub_1000050A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000051B4(a5, a6);
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
    result = sub_100006A54();
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

void *sub_1000051B4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100005200(a1, a2);
  sub_100005330(&off_100008770);
  return v3;
}

void *sub_100005200(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000541C(v5, 0);
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

  result = sub_100006A54();
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
        v10 = sub_1000069B4();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000541C(v10, 0);
        result = sub_100006A44();
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

uint64_t sub_100005330(uint64_t result)
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

  result = sub_100005490(result, v11, 1, v3);
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

void *sub_10000541C(uint64_t a1, uint64_t a2)
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

  sub_100004924(&qword_10000C118, &qword_1000071E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100005490(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004924(&qword_10000C118, &qword_1000071E0);
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

char *sub_100005584(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100005948(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1000055A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000055EC()
{
  v1 = sub_1000067E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000056B0()
{
  v1 = *(sub_1000067E4() - 8);
  v2 = *(v0 + 16);
  v7[2] = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = sub_100003CA8(&_swiftEmptyDictionarySingleton, sub_10000591C, v7, v2);
  sub_100003D50(v3);
  v5 = v4;

  return v5;
}

uint64_t sub_100005760(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005778(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004924(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1000057D8()
{
  result = qword_10000C108;
  if (!qword_10000C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C108);
  }

  return result;
}

uint64_t sub_10000582C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100004DB4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100005874(void *a1)
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

uint64_t sub_1000058C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_100005948(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004924(&qword_10000C0D0, &qword_1000071A8);
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

unint64_t sub_100005A54(uint64_t a1, uint64_t a2)
{
  sub_100006B64();
  sub_100006994();
  v4 = sub_100006B84();

  return sub_100005ACC(a1, a2, v4);
}

unint64_t sub_100005ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100006B04())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

_OWORD *sub_100005B84(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100005B94(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100005BDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100004924(&qword_10000C138, &qword_1000071F0);
  v35 = v4;
  result = sub_100006A94();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_100006B64();
      sub_100006994();
      result = sub_100006B84();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100005E80(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100006A34() + 1) & ~v5;
    do
    {
      sub_100006B64();

      sub_100006994();
      v9 = sub_100006B84();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100006030(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100005A54(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100005BDC(v16, a4 & 1);
      v11 = sub_100005A54(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_100006B14();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_1000061A8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id sub_1000061A8()
{
  v1 = v0;
  sub_100004924(&qword_10000C138, &qword_1000071F0);
  v2 = *v0;
  v3 = sub_100006A84();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t *sub_100006314(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t getEnumTagSinglePayload for QuartzWorkerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t getEnumTagSinglePayload for QuartzWorkerConfig.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for QuartzWorkerConfig.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_10000651C()
{
  result = qword_10000C510[0];
  if (!qword_10000C510[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C510);
  }

  return result;
}

unint64_t sub_100006574()
{
  result = qword_10000C140;
  if (!qword_10000C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C140);
  }

  return result;
}

unint64_t sub_1000065CC()
{
  result = qword_10000C148;
  if (!qword_10000C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C148);
  }

  return result;
}

unint64_t sub_100006624()
{
  result = qword_10000C150;
  if (!qword_10000C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C150);
  }

  return result;
}

unint64_t sub_10000667C()
{
  result = qword_10000C158;
  if (!qword_10000C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C158);
  }

  return result;
}

unint64_t sub_1000066D4()
{
  result = qword_10000C8A0;
  if (!qword_10000C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C8A0);
  }

  return result;
}

unint64_t sub_10000672C()
{
  result = qword_10000C8A8[0];
  if (!qword_10000C8A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10000C8A8);
  }

  return result;
}