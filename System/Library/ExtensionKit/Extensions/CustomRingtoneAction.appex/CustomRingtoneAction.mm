uint64_t sub_100001540()
{
  v0[3] = sub_1000067E0();
  v0[4] = sub_1000067D0();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1000015EC;

  return sub_100001DD4();
}

uint64_t sub_1000015EC()
{
  *(*v1 + 48) = v0;

  v3 = sub_1000067C0();
  if (v0)
  {
    v4 = sub_1000017A8;
  }

  else
  {
    v4 = sub_100001748;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100001748()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000017A8()
{
  v14 = v0;

  if (qword_100010310 != -1)
  {
    swift_once();
  }

  v1 = sub_1000066E0();
  sub_100005D34(v1, qword_100010548);
  swift_errorRetain();
  v2 = sub_1000066C0();
  v3 = sub_100006810();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[6];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    swift_errorRetain();
    sub_100005288(&qword_100010388, &qword_100006EA0);
    v8 = sub_100006750();
    v10 = sub_10000552C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to add custom ringtone for selected item with error: %s.", v6, 0xCu);
    sub_100005D6C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100001980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100005288(&qword_100010428, &qword_100006ED8);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_100006108(a3, v24 - v9, &qword_100010428, &qword_100006ED8);
  v11 = sub_100006800();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100006170(v10, &qword_100010428, &qword_100006ED8);
  }

  else
  {
    sub_1000067F0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1000067C0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_100006760() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_100006170(a3, &qword_100010428, &qword_100006ED8);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100006170(a3, &qword_100010428, &qword_100006ED8);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100001DD4()
{
  v1[22] = v0;
  sub_100005288(&qword_100010358, &qword_100006E70);
  v1[23] = swift_task_alloc();
  v2 = sub_100006650();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v3 = sub_1000066B0();
  v1[27] = v3;
  v1[28] = *(v3 - 8);
  v1[29] = swift_task_alloc();
  sub_1000067E0();
  v1[30] = sub_1000067D0();
  v5 = sub_1000067C0();
  v1[31] = v5;
  v1[32] = v4;

  return _swift_task_switch(sub_100001F5C, v5, v4);
}

uint64_t sub_100001F5C()
{
  v56 = v0;
  v1 = v0;
  v2 = [*(v0 + 176) extensionContext];
  if (!v2 || (v3 = v2, v4 = [v2 inputItems], v3, v5 = sub_1000067B0(), v4, v6 = sub_100002EE4(v5), , !v6))
  {
    v10 = *(v0 + 176);
    v55[0] = 0;
    v55[1] = 0xE000000000000000;
    sub_100006870(65);
    v58._object = 0x80000001000073C0;
    v58._countAndFlagsBits = 0xD00000000000003ELL;
    sub_100006780(v58);
    v11 = [v10 extensionContext];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 inputItems];

      v14 = sub_1000067B0();
    }

    else
    {
      v14 = 0;
    }

    *(v0 + 144) = v14;
    sub_100005288(&qword_1000103A0, &unk_100006EB8);
    v59._countAndFlagsBits = sub_100006750();
    sub_100006780(v59);

    v60._countAndFlagsBits = 46;
    v60._object = 0xE100000000000000;
    sub_100006780(v60);
    return sub_100006900();
  }

  v7 = (v6 & 0xFFFFFFFFFFFFFF8);
  if (v6 >> 62)
  {
LABEL_45:
    v8 = sub_100006910();
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_46:

    v44 = v1[1];

    return v44();
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_46;
  }

LABEL_5:
  v9 = 0;
  v49 = v6 & 0xC000000000000001;
  v45 = v6 + 32;
  v54 = (v1[28] + 8);
  v47 = v7;
  v48 = v6;
  v46 = v8;
  while (1)
  {
    if (v49)
    {
      v15 = sub_100006880();
    }

    else
    {
      if (v9 >= v7[2])
      {
        goto LABEL_44;
      }

      v15 = *(v45 + 8 * v9);
    }

    v7 = v15;
    v1[33] = v15;
    v16 = __OFADD__(v9, 1);
    v17 = v9 + 1;
    if (v16)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v50 = v17;
    if (qword_100010310 != -1)
    {
      swift_once();
    }

    v18 = sub_1000066E0();
    v1[34] = sub_100005D34(v18, qword_100010548);
    v19 = v7;
    v20 = sub_1000066C0();
    v21 = sub_100006820();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v55[0] = v23;
      *v22 = 136315138;
      v24 = [v19 userInfo];
      if (v24)
      {
        v25 = v24;
        sub_100006700();
      }

      v26 = sub_100006710();
      v28 = v27;

      v29 = sub_10000552C(v26, v28, v55);

      *(v22 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "New extension item: %s", v22, 0xCu);
      sub_100005D6C(v23);
    }

    else
    {
    }

    v30 = [v19 attachments];
    if (v30)
    {
      break;
    }

LABEL_9:

    v7 = v47;
    v9 = v50;
    v6 = v48;
    if (v50 == v46)
    {
      goto LABEL_46;
    }
  }

  v7 = v30;
  sub_100005ED8(0, &qword_1000103A8, NSItemProvider_ptr);
  v6 = sub_1000067B0();

  if (!(v6 >> 62))
  {
    v31 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
      goto LABEL_25;
    }

    goto LABEL_8;
  }

  v31 = sub_100006910();
  if (!v31)
  {
LABEL_8:

    goto LABEL_9;
  }

LABEL_25:
  v32 = 0;
  v53 = v6 & 0xC000000000000001;
  v51 = v6;
  v52 = v6 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v53)
    {
      v33 = sub_100006880();
    }

    else
    {
      if (v32 >= *(v52 + 16))
      {
        goto LABEL_42;
      }

      v33 = *(v6 + 8 * v32 + 32);
    }

    v34 = v33;
    v1[35] = v33;
    v35 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v36 = v1[29];
    v37 = v1[27];
    sub_1000066A0();
    sub_100006690();
    v38 = *v54;
    (*v54)(v36, v37);
    v7 = sub_100006720();

    LOBYTE(v37) = [v34 hasItemConformingToTypeIdentifier:v7];

    if (v37)
    {
      break;
    }

    ++v32;
    v6 = v51;
    if (v35 == v31)
    {
      goto LABEL_8;
    }
  }

  v40 = v1[29];
  v41 = v1[27];

  sub_1000066A0();
  sub_100006690();
  v38(v40, v41);
  v42 = sub_100006720();
  v1[36] = v42;

  v1[2] = v1;
  v1[7] = v1 + 19;
  v1[3] = sub_100002704;
  v43 = swift_continuation_init();
  v1[17] = sub_100005288(&qword_100010410, &qword_100006EC8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100002FF0;
  v1[13] = &unk_10000C658;
  v1[14] = v43;
  [v34 loadItemForTypeIdentifier:v42 options:0 completionHandler:v1 + 10];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_100002704()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  v3 = *(v1 + 256);
  v4 = *(v1 + 248);
  if (v2)
  {
    v5 = sub_100002D60;
  }

  else
  {
    v5 = sub_100002834;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100002834()
{
  v25 = v0;
  v1 = v0[36];
  v2 = v0[19];
  v0[38] = v2;

  v0[20] = v2;
  swift_unknownObjectRetain();
  sub_100005288(&qword_100010418, &qword_100006ED0);
  if (swift_dynamicCast())
  {
    v4 = v0[25];
    v3 = v0[26];
    v6 = v0[23];
    v5 = v0[24];
    (*(v4 + 56))(v6, 0, 1, v5);
    (*(v4 + 32))(v3, v6, v5);
    v7 = swift_task_alloc();
    v0[39] = v7;
    *v7 = v0;
    v7[1] = sub_100002B50;
    v8 = v0[26];

    return sub_1000030CC(v8);
  }

  else
  {
    v10 = v0[24];
    v11 = v0[25];
    v12 = v0[23];

    (*(v11 + 56))(v12, 1, 1, v10);
    sub_100006170(v12, &qword_100010358, &qword_100006E70);
    swift_unknownObjectRetain();
    v13 = sub_1000066C0();
    v14 = sub_100006810();
    swift_unknownObjectRelease();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[35];
    v17 = v0[33];
    if (v15)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v0[21] = v2;
      swift_unknownObjectRetain();
      v20 = sub_100006750();
      v22 = sub_10000552C(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unexpected type for item: %s.", v18, 0xCu);
      sub_100005D6C(v19);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_100002B50()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = sub_100002E10;
  }

  else
  {
    v5 = sub_100002C8C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100002C8C()
{
  v1 = *(v0 + 264);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);

  swift_unknownObjectRelease();

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100002D60()
{
  v1 = v0[36];
  v2 = v0[35];
  v3 = v0[33];

  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_100002E10()
{
  v1 = *(v0 + 264);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);

  swift_unknownObjectRelease();

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

void *sub_100002EE4(uint64_t a1)
{
  v6 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_1000068C0();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100005DB8(i, v5);
    sub_100005ED8(0, &qword_100010420, NSExtensionItem_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1000068A0();
    sub_1000068D0();
    sub_1000068E0();
    sub_1000068B0();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_100002FF0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100005E94((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100005288(&qword_100010388, &qword_100006EA0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      swift_unknownObjectRetain();
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000030CC(uint64_t a1)
{
  v2[48] = a1;
  v2[49] = v1;
  v3 = sub_100006650();
  v2[50] = v3;
  v2[51] = *(v3 - 8);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = sub_1000067E0();
  v2[55] = sub_1000067D0();
  v5 = sub_1000067C0();
  v2[56] = v5;
  v2[57] = v4;

  return _swift_task_switch(sub_1000031D0, v5, v4);
}

uint64_t sub_1000031D0()
{
  v1 = objc_allocWithZone(AVURLAsset);
  sub_1000065F0(v2);
  v4 = v3;
  v0[58] = [v1 initWithURL:v3 options:0];

  sub_100005288(&qword_100010378, &qword_100006E90);
  v5 = sub_100006680();
  v0[59] = v5;
  v6 = sub_1000067D0();
  v0[60] = v6;
  v7 = swift_task_alloc();
  v0[61] = v7;
  *v7 = v0;
  v7[1] = sub_1000032FC;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 72, v5, v6, &protocol witness table for MainActor);
}

uint64_t sub_1000032FC()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v3 = *(v2 + 448);
    v4 = *(v2 + 456);
    v5 = sub_100003EBC;
  }

  else
  {

    v3 = *(v2 + 448);
    v4 = *(v2 + 456);
    v5 = sub_100003420;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100003420()
{
  v64 = v0;
  if (qword_100010310 != -1)
  {
    swift_once();
  }

  v1 = sub_1000066E0();
  *(v0 + 504) = sub_100005D34(v1, qword_100010548);
  v2 = sub_1000066C0();
  v3 = sub_100006820();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    sub_100006840();
    *(v4 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v2, v3, "Loaded audio asset duration: %f.", v4, 0xCu);
  }

  sub_100006840();
  if (v6 > 30.0)
  {
    v7 = *(v0 + 392);

    v8 = v7;
    v9 = sub_1000066C0();
    v10 = sub_100006810();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      sub_100006840();
      *(v11 + 4) = v12;
      *(v11 + 12) = 2048;
      *(v11 + 14) = 0x403E000000000000;
      _os_log_impl(&_mh_execute_header, v9, v10, "Audio asset of %fs exceeds maximum custom ringtone duration of %fs.", v11, 0x16u);
    }

    v13 = *(v0 + 464);

    sub_100004B1C(1);
    goto LABEL_21;
  }

  v14 = *(v0 + 424);
  v15 = *(v0 + 400);
  v16 = *(v0 + 408);
  v17 = [objc_opt_self() defaultManager];
  sub_100006600();
  sub_100006630(0);
  v18 = *(v16 + 8);
  *(v0 + 512) = v18;
  *(v0 + 520) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v14, v15);
  v19 = sub_100006720();

  v20 = [v17 displayNameAtPath:v19];

  v21 = sub_100006740();
  v23 = v22;

  v24 = sub_1000065E0();
  v26 = v25;
  sub_100005288(&qword_100010380, &qword_100006E98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100006DF0;
  *(inited + 32) = sub_100006740();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v28;
  *(inited + 48) = v21;
  *(inited + 56) = v23;
  *(inited + 80) = sub_100006740();
  *(inited + 88) = v29;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 0;
  *(inited + 128) = sub_100006740();
  *(inited + 136) = v30;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 0;
  *(inited + 176) = sub_100006740();
  *(inited + 184) = v31;
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v24;
  *(inited + 200) = v26;

  v32 = sub_100005C04(inited);
  swift_setDeallocating();
  sub_100005288(&qword_100010370, &qword_100006E88);
  swift_arrayDestroy();
  if (!sub_100006620())
  {

    v49 = sub_1000066C0();
    v50 = sub_100006810();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 464);
    if (v51)
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Error starting access to security scoped resource.", v53, 2u);
    }

    goto LABEL_21;
  }

  v33 = *(v0 + 496);
  *(v0 + 528) = sub_100006660();
  *(v0 + 536) = v34;
  if (v33)
  {

    (*(*(v0 + 408) + 16))(*(v0 + 416), *(v0 + 384), *(v0 + 400));
    swift_errorRetain();
    v35 = sub_1000066C0();
    v36 = sub_100006810();

    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 512);
    v39 = *(v0 + 416);
    v40 = *(v0 + 400);
    if (v37)
    {
      v62 = *(v0 + 464);
      log = v35;
      v41 = swift_slowAlloc();
      v63[0] = swift_slowAlloc();
      *v41 = 136315394;
      v42 = sub_100006630(1);
      v44 = v43;
      v38(v39, v40);
      v45 = sub_10000552C(v42, v44, v63);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      *(v0 + 368) = v33;
      swift_errorRetain();
      sub_100005288(&qword_100010388, &qword_100006EA0);
      v46 = sub_100006750();
      v48 = sub_10000552C(v46, v47, v63);

      *(v41 + 14) = v48;
      _os_log_impl(&_mh_execute_header, log, v36, "Failed to load data from %s with error: %s.", v41, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v38(v39, v40);
    }

LABEL_21:

    v59 = *(v0 + 8);

    return v59();
  }

  sub_100006610();
  v54 = [objc_opt_self() sharedToneManager];
  *(v0 + 544) = v54;
  if (v54)
  {
    v55 = v54;

    isa = sub_100006670().super.isa;
    *(v0 + 552) = isa;
    sub_100004200(v32);

    v57 = sub_1000066F0().super.isa;
    *(v0 + 560) = v57;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 376;
    *(v0 + 24) = sub_100003CB8;
    v58 = swift_continuation_init();
    *(v0 + 360) = sub_100005288(&qword_100010390, &qword_100006EA8);
    *(v0 + 304) = _NSConcreteStackBlock;
    *(v0 + 312) = 1107296256;
    *(v0 + 320) = sub_1000044C8;
    *(v0 + 328) = &unk_10000C630;
    *(v0 + 336) = v58;
    [v55 _importTone:isa metadata:v57 completionBlock:v0 + 304];
    v54 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v54);
}

uint64_t sub_100003CB8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 568) = v2;
  v3 = *(v1 + 456);
  v4 = *(v1 + 448);
  if (v2)
  {
    v5 = sub_100003F64;
  }

  else
  {
    v5 = sub_100003DE8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100003DE8()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[66];
  v6 = v0[58];

  v7 = v0[47];

  sub_1000045A0(v7);
  sub_100005E40(v5, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100003EBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100003F64()
{
  v27 = v0;
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);

  swift_willThrow();
  sub_100005E40(v5, v4);

  v6 = *(v0 + 568);
  (*(*(v0 + 408) + 16))(*(v0 + 416), *(v0 + 384), *(v0 + 400));
  swift_errorRetain();
  v7 = sub_1000066C0();
  v8 = sub_100006810();

  if (os_log_type_enabled(v7, v8))
  {
    v24 = *(v0 + 512);
    v25 = *(v0 + 464);
    v9 = *(v0 + 416);
    v10 = *(v0 + 400);
    v11 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v11 = 136315394;
    v12 = sub_100006630(1);
    v14 = v13;
    v24(v9, v10);
    v15 = sub_10000552C(v12, v14, v26);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v0 + 368) = v6;
    swift_errorRetain();
    sub_100005288(&qword_100010388, &qword_100006EA0);
    v16 = sub_100006750();
    v18 = sub_10000552C(v16, v17, v26);

    *(v11 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to load data from %s with error: %s.", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v19 = *(v0 + 512);
    v20 = *(v0 + 416);
    v21 = *(v0 + 400);

    v19(v20, v21);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_100004200(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005288(&qword_100010398, &qword_100006EB0);
    v2 = sub_100006920();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100005DB8(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100005E18(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100005E18(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100005E18(v31, v32);
    result = sub_100006850(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100005E18(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000044C8(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100005E94((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100005288(&qword_100010388, &qword_100006EA0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

void sub_1000045A0(Class a1)
{
  sub_100005288(&qword_100010358, &qword_100006E70);
  __chkstk_darwin();
  v4 = &v30 - v3;
  v5 = sub_100006650();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &CustomRingtoneActionViewController;
  v10 = [(objc_class *)a1 statusCode];
  if (v10 != 2 && v10 != 1)
  {
    if (v10)
    {
LABEL_24:
      v34[0] = 0;
      v34[1] = 0xE000000000000000;
      sub_100006870(43);
      v36._countAndFlagsBits = 0xD000000000000028;
      v36._object = 0x8000000100007340;
      sub_100006780(v36);
      v33 = [a1 v9[5].name];
      type metadata accessor for TLToneImportStatusCode(0);
      sub_1000068F0();
      v37._countAndFlagsBits = 46;
      v37._object = 0xE100000000000000;
      sub_100006780(v37);
      sub_100006900();
      __break(1u);
      return;
    }

    v11 = [(objc_class *)a1 toneIdentifier];
    if (v11)
    {
      a1 = v11;
      v32 = v1;
      v12 = sub_100006740();
      v9 = v13;
      if (qword_100010310 != -1)
      {
        swift_once();
      }

      v14 = sub_1000066E0();
      sub_100005D34(v14, qword_100010548);

      v15 = sub_1000066C0();
      v16 = sub_100006820();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v31 = v6;
        v18 = v17;
        v19 = swift_slowAlloc();
        v34[0] = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_10000552C(v12, v9, v34);
        _os_log_impl(&_mh_execute_header, v15, v16, "Successfully imported tone with identifier: %s.", v18, 0xCu);
        sub_100005D6C(v19);

        v6 = v31;
      }

      v20 = [objc_opt_self() sharedToneManager];
      v1 = v32;
      if (!v20)
      {

        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v21 = v20;

      [v21 setCurrentToneIdentifier:a1 forAlertType:1];
    }

    v22 = [v1 extensionContext];
    if (v22)
    {
      v23 = v22;
      a1 = [v22 inputItems];
      if (!a1)
      {
        v9 = sub_1000067B0();
        a1 = sub_1000067A0().super.isa;
      }

      [v23 completeRequestReturningItems:a1 completionHandler:0];
    }

    sub_100006640();
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_100006170(v4, &qword_100010358, &qword_100006E70);
      return;
    }

    (*(v6 + 32))(v8, v4, v5);
    v24 = [objc_opt_self() defaultWorkspace];
    if (v24)
    {
      v26 = v24;
      sub_1000065F0(v25);
      v28 = v27;
      sub_100005C04(&_swiftEmptyArrayStorage);
      isa = sub_1000066F0().super.isa;

      [v26 openSensitiveURL:v28 withOptions:isa];

      (*(v6 + 8))(v8, v5);
      return;
    }

    goto LABEL_23;
  }

  sub_100004B1C(0);
}

void sub_100004B1C(char a1)
{
  v2 = &CustomRingtoneActionViewController;
  if (a1)
  {
    if (qword_100010318 != -1)
    {
      swift_once();
    }

    v3 = qword_100010560;
    v18._countAndFlagsBits = 0x8000000100007020;
    v23._countAndFlagsBits = 0xD000000000000025;
    v23._object = 0x8000000100006FF0;
    v28.value._object = 0x8000000100006DF0;
    v28.value._countAndFlagsBits = 0xD000000000000014;
    v4.super.isa = qword_100010560;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    sub_1000065D0(v23, v28, v4, v33, 0xD000000000000072, v18);
    v19._countAndFlagsBits = 0x80000001000070D0;
    v24._countAndFlagsBits = 0xD000000000000027;
    v24._object = 0x80000001000070A0;
    v29.value._object = 0x8000000100006DF0;
    v29.value._countAndFlagsBits = 0xD000000000000014;
    v5.super.isa = v3;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    sub_1000065D0(v24, v29, v5, v34, 0xD000000000000074, v19);
    sub_100005288(&qword_100010350, &qword_100006E68);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100006E00;
    *(v6 + 56) = &type metadata for Int;
    *(v6 + 64) = &protocol witness table for Int;
    *(v6 + 32) = 30;
    sub_100006730();

    v2 = &CustomRingtoneActionViewController;
  }

  else
  {
    if (qword_100010318 != -1)
    {
      swift_once();
    }

    v3 = qword_100010560;
    v18._countAndFlagsBits = 0x80000001000071E0;
    v25._countAndFlagsBits = 0xD00000000000001ELL;
    v25._object = 0x80000001000071C0;
    v30.value._object = 0x8000000100006DF0;
    v30.value._countAndFlagsBits = 0xD000000000000014;
    v7.super.isa = qword_100010560;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    sub_1000065D0(v25, v30, v7, v35, 0xD000000000000060, v18);
    v21._countAndFlagsBits = 0x8000000100007280;
    v26._countAndFlagsBits = 0xD000000000000020;
    v26._object = 0x8000000100007250;
    v31.value._object = 0x8000000100006DF0;
    v31.value._countAndFlagsBits = 0xD000000000000014;
    v8.super.isa = v3;
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    sub_1000065D0(v26, v31, v8, v36, 0xD000000000000062, v21);
  }

  v9 = sub_100006720();

  v10 = sub_100006720();

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:1];

  if (*&v2[11].flags != -1)
  {
    swift_once();
  }

  v20._countAndFlagsBits = 0x8000000100007150;
  v27._countAndFlagsBits = 0x4F495443415F4B4FLL;
  v27._object = 0xEF454C5449545F4ELL;
  v32.value._object = 0x8000000100006DF0;
  v32.value._countAndFlagsBits = 0xD000000000000014;
  v12.super.isa = v3;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  sub_1000065D0(v27, v32, v12, v37, 0xD000000000000049, v20);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  v14 = v1;
  v15 = sub_100006720();

  aBlock[4] = sub_100005308;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005080;
  aBlock[3] = &unk_10000C608;
  v16 = _Block_copy(aBlock);

  v17 = [objc_opt_self() actionWithTitle:v15 style:0 handler:v16];
  _Block_release(v16);

  [v11 addAction:v17];
  [v14 presentViewController:v11 animated:1 completion:0];
}

void sub_100004FA8(int a1, id a2)
{
  v2 = [a2 extensionContext];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 inputItems];
    if (!v4)
    {
      sub_1000067B0();
      isa = sub_1000067A0().super.isa;

      v4 = isa;
    }

    v6 = v4;
    [v3 completeRequestReturningItems:? completionHandler:?];
  }
}

void sub_100005080(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_100005230(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CustomRingtoneActionViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100005288(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000052D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005310(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000533C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005434;

  return v6(a1);
}

uint64_t sub_100005434()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10000552C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000055F8(v11, 0, 0, 1, a1, a2);
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
    sub_100005DB8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005D6C(v11);
  return v7;
}

unint64_t sub_1000055F8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100005704(a5, a6);
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
    result = sub_100006890();
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

char *sub_100005704(uint64_t a1, unint64_t a2)
{
  v3 = sub_100005750(a1, a2);
  sub_100005880(&off_10000C5B8);
  return v3;
}

char *sub_100005750(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000596C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100006890();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100006790();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000596C(v10, 0);
        result = sub_100006860();
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

uint64_t sub_100005880(uint64_t result)
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

  result = sub_1000059E0(result, v11, 1, v3);
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

void *sub_10000596C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100005288(&qword_100010360, &qword_100006E78);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000059E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005288(&qword_100010360, &qword_100006E78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_100005AD4(uint64_t a1, uint64_t a2)
{
  sub_100006940();
  sub_100006770();
  v4 = sub_100006950();

  return sub_100005B4C(a1, a2, v4);
}

unint64_t sub_100005B4C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100006930())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100005C04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005288(&qword_100010368, &qword_100006E80);
    v3 = sub_100006920();
    v4 = a1 + 32;

    while (1)
    {
      sub_100006108(v4, &v13, &qword_100010370, &qword_100006E88);
      v5 = v13;
      v6 = v14;
      result = sub_100005AD4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100005E18(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100005D34(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100005D6C(void *a1)
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

uint64_t sub_100005DB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_100005E18(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100005E40(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_100005E94(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005ED8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100005F20()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100005F60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100006014;

  return sub_100001540();
}

uint64_t sub_100006014()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100006108(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005288(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006170(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005288(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000061D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006208(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000645C;

  return sub_10000533C(a1, v4);
}

uint64_t sub_1000062C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006014;

  return sub_10000533C(a1, v4);
}

__n128 sub_100006378(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100006390(uint64_t a1, int a2)
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

uint64_t sub_1000063B0(uint64_t result, int a2, int a3)
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

void sub_100006404(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100006460()
{
  v0 = sub_1000066E0();
  sub_1000064E0(v0, qword_100010548);
  sub_100005D34(v0, qword_100010548);
  return sub_1000066D0();
}

uint64_t *sub_1000064E0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_100006544()
{
  type metadata accessor for CustomRingtoneActionViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100010560 = result;
  return result;
}