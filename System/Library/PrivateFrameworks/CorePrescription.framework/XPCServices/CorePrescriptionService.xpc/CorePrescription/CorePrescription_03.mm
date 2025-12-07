uint64_t sub_10004ED94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10002329C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100006940(&qword_1000B7910, &unk_100084B20);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100006940(&unk_1000B8390, &qword_100086040);
    **(*(v4 + 64) + 40) = sub_100081488();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10004EE80(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return _swift_task_switch(sub_10004EEA4, v2, 0);
}

uint64_t sub_10004EEA4()
{
  v27 = v0;
  v1 = *(v0[20] + 56);
  if ((v1 & 2) != 0)
  {
    sub_10004AC50();
    swift_allocError();
    *v17 = 5;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = 5;
    swift_willThrow();
    v18 = v0[1];
  }

  else
  {
    v2 = v0[21];
    v3 = *(v2 + 16);
    if (v3)
    {
      if (*(v0[22] + 120) == 1)
      {
        v4 = v2 + 32;
        do
        {

          sub_100058220(v5);

          v4 += 8;
          --v3;
        }

        while (v3);
      }

      if ((v1 & 8) != 0)
      {
        v19 = v0[21];
        v20 = v0[20];
        v21 = *(v0[22] + 112);
        sub_100056724(v20[18]);
        v22 = sub_100081288();
        v0[24] = v22;

        sub_10005585C(v19);
        sub_100006940(&unk_1000B8390, &qword_100086040);
        isa = sub_100081478().super.isa;
        v0[25] = isa;

        sub_100054AA0(v20);
        v24 = sub_100081208().super.isa;
        v0[26] = v24;

        v0[2] = v0;
        v0[3] = sub_10004F608;
        v25 = swift_continuation_init();
        v0[17] = sub_100006940(&unk_1000B8370, &unk_100086020);
        v0[10] = _NSConcreteStackBlock;
        v0[11] = 1107296256;
        v0[12] = sub_10004DA50;
        v0[13] = &unk_1000ABB70;
        v0[14] = v25;
        [v21 putDataInStore:v22 records:isa attributes:v24 completion:v0 + 10];

        return _swift_continuation_await(v0 + 2);
      }

      else
      {
        if (qword_1000B7400 != -1)
        {
          swift_once();
        }

        v6 = sub_100081018();
        sub_100016240(v6, qword_1000B8140);

        v7 = sub_100080FF8();
        v8 = sub_1000815C8();

        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v26 = v10;
          *v9 = 136315138;
          v11 = sub_100059120();
          v13 = sub_1000597A8(v11, v12, &v26);

          *(v9 + 4) = v13;
          _os_log_impl(&_mh_execute_header, v7, v8, "Lazily creating table %s", v9, 0xCu);
          sub_1000068F4(v10);
        }

        v14 = swift_task_alloc();
        v0[23] = v14;
        *v14 = v0;
        v14[1] = sub_10004F2F4;
        v15 = v0[20];

        return sub_10004D204(v15);
      }
    }

    v18 = v0[1];
  }

  return v18();
}

uint64_t sub_10004F2F4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 176);

    return _swift_task_switch(sub_10004F438, v6, 0);
  }
}

uint64_t sub_10004F438()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = *(v0[22] + 112);
  sub_100056724(v2[18]);
  v4 = sub_100081288();
  v0[24] = v4;

  sub_10005585C(v1);
  sub_100006940(&unk_1000B8390, &qword_100086040);
  isa = sub_100081478().super.isa;
  v0[25] = isa;

  sub_100054AA0(v2);
  v6 = sub_100081208().super.isa;
  v0[26] = v6;

  v0[2] = v0;
  v0[3] = sub_10004F608;
  v7 = swift_continuation_init();
  v0[17] = sub_100006940(&unk_1000B8370, &unk_100086020);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10004DA50;
  v0[13] = &unk_1000ABB70;
  v0[14] = v7;
  [v3 putDataInStore:v4 records:isa attributes:v6 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10004F608()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  v3 = *(v1 + 176);
  if (v2)
  {
    v4 = sub_10004F798;
  }

  else
  {
    v4 = sub_10004F728;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10004F728()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 192);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10004F798()
{
  v17 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  swift_willThrow();

  v0[18] = v2;
  swift_errorRetain();
  sub_100006940(&qword_1000B7910, &unk_100084B20);
  sub_10000DC18(0, &unk_1000B83A0, NSError_ptr);
  if (swift_dynamicCast())
  {

    v5 = v0[19];
    if (qword_1000B7400 != -1)
    {
      swift_once();
    }

    v6 = sub_100081018();
    sub_100016240(v6, qword_1000B8140);
    v7 = v5;
    v8 = sub_100080FF8();
    v9 = sub_1000815D8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16[0] = swift_slowAlloc();
      *v10 = 136315906;
      *(v10 + 4) = sub_1000597A8(0xD000000000000018, 0x8000000100094A60, v16);
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_1000597A8(0xD00000000000005ELL, 0x8000000100094960, v16);
      *(v10 + 22) = 2048;
      *(v10 + 24) = 289;
      *(v10 + 32) = 2112;
      *(v10 + 34) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "MA error caught at %s - %s:%ld: %@", v10, 0x2Au);
      sub_10001A80C(v11, &qword_1000B83B0, &qword_100084EC0);

      swift_arrayDestroy();
    }

    sub_10004AC50();
    swift_allocError();
    *v13 = v7;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    swift_willThrow();
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10004FA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  return _swift_task_switch(sub_10004FABC, v3, 0);
}

uint64_t sub_10004FABC()
{
  v25 = v0;
  v1 = *(v0[20] + 56);
  if ((v1 & 2) != 0)
  {
    sub_10004AC50();
    swift_allocError();
    *v2 = 5;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = 5;
    swift_willThrow();
    v3 = v0[1];

    return v3();
  }

  else
  {
    if (*(v0[23] + 120) == 1)
    {
      sub_100058220(v0[21]);
      sub_100058220(v0[22]);
    }

    if ((v1 & 8) != 0)
    {
      v15 = v0[22];
      v17 = v0[20];
      v16 = v0[21];
      v23 = *(v0[23] + 112);
      sub_100056724(v17[18]);
      v18 = sub_100081288();
      v0[25] = v18;

      sub_100054C8C(v16);
      isa = sub_100081208().super.isa;
      v0[26] = isa;

      sub_100054C8C(v15);
      v20 = sub_100081208().super.isa;
      v0[27] = v20;

      sub_100054AA0(v17);
      v21 = sub_100081208().super.isa;
      v0[28] = v21;

      v0[2] = v0;
      v0[3] = sub_100050268;
      v22 = swift_continuation_init();
      v0[17] = sub_100006940(&unk_1000B8370, &unk_100086020);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_10004DA50;
      v0[13] = &unk_1000ABB48;
      v0[14] = v22;
      [v23 updateDataInStore:v18 keys:isa values:v20 attributes:v21 completion:?];

      return _swift_continuation_await(v0 + 2);
    }

    else
    {
      if (qword_1000B7400 != -1)
      {
        swift_once();
      }

      v5 = sub_100081018();
      sub_100016240(v5, qword_1000B8140);

      v6 = sub_100080FF8();
      v7 = sub_1000815C8();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v24 = v9;
        *v8 = 136315138;
        v10 = sub_100059120();
        v12 = sub_1000597A8(v10, v11, &v24);

        *(v8 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v6, v7, "Lazily creating table %s", v8, 0xCu);
        sub_1000068F4(v9);
      }

      v13 = swift_task_alloc();
      v0[24] = v13;
      *v13 = v0;
      v13[1] = sub_10004FF24;
      v14 = v0[20];

      return sub_10004D204(v14);
    }
  }
}

uint64_t sub_10004FF24()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 184);

    return _swift_task_switch(sub_100050068, v6, 0);
  }
}

uint64_t sub_100050068()
{
  v1 = v0[22];
  v3 = v0[20];
  v2 = v0[21];
  v10 = *(v0[23] + 112);
  sub_100056724(v3[18]);
  v4 = sub_100081288();
  v0[25] = v4;

  sub_100054C8C(v2);
  isa = sub_100081208().super.isa;
  v0[26] = isa;

  sub_100054C8C(v1);
  v6 = sub_100081208().super.isa;
  v0[27] = v6;

  sub_100054AA0(v3);
  v7 = sub_100081208().super.isa;
  v0[28] = v7;

  v0[2] = v0;
  v0[3] = sub_100050268;
  v8 = swift_continuation_init();
  v0[17] = sub_100006940(&unk_1000B8370, &unk_100086020);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10004DA50;
  v0[13] = &unk_1000ABB48;
  v0[14] = v8;
  [v10 updateDataInStore:v4 keys:isa values:v6 attributes:v7 completion:?];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100050268()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  v3 = *(v1 + 184);
  if (v2)
  {
    v4 = sub_100050404;
  }

  else
  {
    v4 = sub_100050388;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100050388()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100050404()
{
  v18 = v0;
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  swift_willThrow();

  v0[18] = v2;
  swift_errorRetain();
  sub_100006940(&qword_1000B7910, &unk_100084B20);
  sub_10000DC18(0, &unk_1000B83A0, NSError_ptr);
  if (swift_dynamicCast())
  {

    v6 = v0[19];
    if (qword_1000B7400 != -1)
    {
      swift_once();
    }

    v7 = sub_100081018();
    sub_100016240(v7, qword_1000B8140);
    v8 = v6;
    v9 = sub_100080FF8();
    v10 = sub_1000815D8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17[0] = swift_slowAlloc();
      *v11 = 136315906;
      *(v11 + 4) = sub_1000597A8(0xD00000000000002ALL, 0x8000000100094A30, v17);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_1000597A8(0xD00000000000005ELL, 0x8000000100094960, v17);
      *(v11 + 22) = 2048;
      *(v11 + 24) = 323;
      *(v11 + 32) = 2112;
      *(v11 + 34) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "MA error caught at %s - %s:%ld: %@", v11, 0x2Au);
      sub_10001A80C(v12, &qword_1000B83B0, &qword_100084EC0);

      swift_arrayDestroy();
    }

    sub_10004AC50();
    swift_allocError();
    *v14 = v8;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    swift_willThrow();
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100050708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[54] = a3;
  v4[55] = v3;
  v4[52] = a1;
  v4[53] = a2;
  return _swift_task_switch(sub_10005072C, v3, 0);
}

uint64_t sub_10005072C()
{
  v44 = v0;
  v1 = *(*(v0 + 416) + 56);
  if ((v1 & 2) == 0)
  {
    if (*(*(v0 + 440) + 120) == 1)
    {
      sub_100058220(*(v0 + 424));
    }

    if ((v1 & 8) == 0)
    {
      if (qword_1000B7400 != -1)
      {
        swift_once();
      }

      v2 = sub_100081018();
      sub_100016240(v2, qword_1000B8140);

      v3 = sub_100080FF8();
      v4 = sub_1000815C8();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v43[0] = v6;
        *v5 = 136315138;
        v7 = sub_100059120();
        v9 = sub_1000597A8(v7, v8, v43);

        *(v5 + 4) = v9;
        _os_log_impl(&_mh_execute_header, v3, v4, "Lazily creating table %s", v5, 0xCu);
        sub_1000068F4(v6);
      }

      v10 = swift_task_alloc();
      *(v0 + 448) = v10;
      *v10 = v0;
      v10[1] = sub_100050DDC;
      v11 = *(v0 + 416);

      return sub_10004D204(v11);
    }

    v15 = sub_100054AA0(*(v0 + 416));
    if (qword_1000B7400 != -1)
    {
      swift_once();
    }

    v16 = sub_100081018();
    *(v0 + 456) = sub_100016240(v16, qword_1000B8140);

    v17 = sub_100080FF8();
    v18 = sub_1000815C8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 432);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v43[0] = v21;
      *v20 = 136315394;
      v22 = sub_100059120();
      v24 = sub_1000597A8(v22, v23, v43);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v17, v18, "Deleting from %s with Options: %ld", v20, 0x16u);
      sub_1000068F4(v21);
    }

    v25 = *(v0 + 432);
    if (v25)
    {
      v26 = sub_1000812B8();
      v28 = v27;
      *(v0 + 360) = &type metadata for UInt;
      *(v0 + 336) = 8;
      sub_1000068E4((v0 + 336), (v0 + 368));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43[0] = v15;
      sub_10003C2FC((v0 + 368), v26, v28, isUniquelyReferenced_nonNull_native);

      v15 = v43[0];
      v25 = *(v0 + 432);
    }

    if ((v25 & 2) != 0)
    {
      v30 = sub_1000812B8();
      v32 = v35;
      *(v0 + 296) = &type metadata for UInt;
      *(v0 + 272) = 16;
      sub_1000068E4((v0 + 272), (v0 + 304));
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v43[0] = v15;
      v34 = (v0 + 304);
    }

    else if ((v25 & 4) != 0)
    {
      v30 = sub_1000812B8();
      v32 = v36;
      *(v0 + 232) = &type metadata for UInt;
      *(v0 + 208) = 32;
      sub_1000068E4((v0 + 208), (v0 + 240));
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v43[0] = v15;
      v34 = (v0 + 240);
    }

    else
    {
      if ((v25 & 8) == 0)
      {
LABEL_28:
        v37 = *(v0 + 424);
        v42 = *(*(v0 + 440) + 112);
        sub_100056724(*(*(v0 + 416) + 18));
        v38 = sub_100081288();
        *(v0 + 464) = v38;

        sub_100054C8C(v37);
        isa = sub_100081208().super.isa;
        *(v0 + 472) = isa;

        v40 = sub_100081208().super.isa;
        *(v0 + 480) = v40;

        *(v0 + 16) = v0;
        *(v0 + 24) = sub_100051384;
        v41 = swift_continuation_init();
        *(v0 + 136) = sub_100006940(&unk_1000B8370, &unk_100086020);
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_10004DA50;
        *(v0 + 104) = &unk_1000ABB20;
        *(v0 + 112) = v41;
        [v42 deleteDataInStore:v38 keys:isa attributes:v40 completion:v0 + 80];

        return _swift_continuation_await(v0 + 16);
      }

      v30 = sub_1000812B8();
      v32 = v31;
      *(v0 + 168) = &type metadata for UInt;
      *(v0 + 144) = 64;
      sub_1000068E4((v0 + 144), (v0 + 176));
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v43[0] = v15;
      v34 = (v0 + 176);
    }

    sub_10003C2FC(v34, v30, v32, v33);

    goto LABEL_28;
  }

  sub_10004AC50();
  swift_allocError();
  *v13 = 5;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 5;
  swift_willThrow();
  v14 = *(v0 + 8);

  return v14(0);
}

uint64_t sub_100050DDC()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {
    v6 = *(v2 + 440);

    return _swift_task_switch(sub_100050F24, v6, 0);
  }
}

uint64_t sub_100050F24()
{
  v31 = v0;
  v1 = sub_100054AA0(*(v0 + 416));
  if (qword_1000B7400 != -1)
  {
    swift_once();
  }

  v2 = sub_100081018();
  *(v0 + 456) = sub_100016240(v2, qword_1000B8140);

  v3 = sub_100080FF8();
  v4 = sub_1000815C8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 432);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30 = v7;
    *v6 = 136315394;
    v8 = sub_100059120();
    v10 = sub_1000597A8(v8, v9, &v30);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deleting from %s with Options: %ld", v6, 0x16u);
    sub_1000068F4(v7);
  }

  v11 = *(v0 + 432);
  if (v11)
  {
    v12 = sub_1000812B8();
    v14 = v13;
    *(v0 + 360) = &type metadata for UInt;
    *(v0 + 336) = 8;
    sub_1000068E4((v0 + 336), (v0 + 368));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v1;
    sub_10003C2FC((v0 + 368), v12, v14, isUniquelyReferenced_nonNull_native);

    v1 = v30;
    v11 = *(v0 + 432);
  }

  if ((v11 & 2) != 0)
  {
    v16 = sub_1000812B8();
    v18 = v21;
    *(v0 + 296) = &type metadata for UInt;
    *(v0 + 272) = 16;
    sub_1000068E4((v0 + 272), (v0 + 304));
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v1;
    v20 = (v0 + 304);
  }

  else if ((v11 & 4) != 0)
  {
    v16 = sub_1000812B8();
    v18 = v22;
    *(v0 + 232) = &type metadata for UInt;
    *(v0 + 208) = 32;
    sub_1000068E4((v0 + 208), (v0 + 240));
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v1;
    v20 = (v0 + 240);
  }

  else
  {
    if ((v11 & 8) == 0)
    {
      goto LABEL_14;
    }

    v16 = sub_1000812B8();
    v18 = v17;
    *(v0 + 168) = &type metadata for UInt;
    *(v0 + 144) = 64;
    sub_1000068E4((v0 + 144), (v0 + 176));
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v1;
    v20 = (v0 + 176);
  }

  sub_10003C2FC(v20, v16, v18, v19);

LABEL_14:
  v23 = *(v0 + 424);
  v29 = *(*(v0 + 440) + 112);
  sub_100056724(*(*(v0 + 416) + 18));
  v24 = sub_100081288();
  *(v0 + 464) = v24;

  sub_100054C8C(v23);
  isa = sub_100081208().super.isa;
  *(v0 + 472) = isa;

  v26 = sub_100081208().super.isa;
  *(v0 + 480) = v26;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_100051384;
  v27 = swift_continuation_init();
  *(v0 + 136) = sub_100006940(&unk_1000B8370, &unk_100086020);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10004DA50;
  *(v0 + 104) = &unk_1000ABB20;
  *(v0 + 112) = v27;
  [v29 deleteDataInStore:v24 keys:isa attributes:v26 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100051384()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 488) = v2;
  v3 = *(v1 + 440);
  if (v2)
  {
    v4 = sub_100051520;
  }

  else
  {
    v4 = sub_1000514A4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000514A4()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 464);

  v3 = *(v0 + 8);
  v4 = *(v0 + 488) == 0;

  return v3(v4);
}

uint64_t sub_100051520()
{
  v17 = v0;
  v1 = v0[60];
  v2 = v0[61];
  v4 = v0[58];
  v3 = v0[59];
  swift_willThrow();

  v0[50] = v2;
  swift_errorRetain();
  sub_100006940(&qword_1000B7910, &unk_100084B20);
  sub_10000DC18(0, &unk_1000B83A0, NSError_ptr);
  if (swift_dynamicCast())
  {

    v5 = v0[51];
    if (sub_100055934(v5))
    {

      v6 = v0[1];
      v7 = v0[61] == 0;
      goto LABEL_9;
    }

    v8 = v5;
    v9 = sub_100080FF8();
    v10 = sub_1000815D8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16[0] = swift_slowAlloc();
      *v11 = 136315906;
      *(v11 + 4) = sub_1000597A8(0xD000000000000028, 0x8000000100094930, v16);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_1000597A8(0xD00000000000005ELL, 0x8000000100094960, v16);
      *(v11 + 22) = 2048;
      *(v11 + 24) = 376;
      *(v11 + 32) = 2112;
      *(v11 + 34) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "MA error caught at %s - %s:%ld: %@", v11, 0x2Au);
      sub_10001A80C(v12, &qword_1000B83B0, &qword_100084EC0);

      swift_arrayDestroy();
    }

    sub_10004AC50();
    swift_allocError();
    *v14 = v8;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    swift_willThrow();
  }

  else
  {
  }

  v6 = v0[1];
  v7 = 0;
LABEL_9:

  return v6(v7);
}

uint64_t sub_100051824()
{
  v1 = *(v0 + 208);
  v2 = sub_10003C570(_swiftEmptyArrayStorage);
  v3 = *(v1 + 32);
  if (v3 >> 62)
  {
LABEL_60:
    v46 = v3;
    v4 = sub_1000817A8();
    v3 = v46;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v51 = v3 & 0xC000000000000001;
      v48 = v3 & 0xFFFFFFFFFFFFFF8;
      v6 = &selRef_byteCount;
      v49 = v4;
      v50 = v3;
      do
      {
        if (v51)
        {
          v9 = sub_1000816A8();
        }

        else
        {
          if (v5 >= *(v48 + 16))
          {
            goto LABEL_59;
          }

          v9 = *(v3 + 8 * v5 + 32);
        }

        v10 = v9;
        v11 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v12 = [v9 type];
        if (v12 > 2)
        {
          if (v12 != 3)
          {
            if (v12 == 4)
            {
              v53 = 0xE400000000000000;
              v13 = 1635017028;
              goto LABEL_21;
            }

            goto LABEL_18;
          }

          v53 = 0xE600000000000000;
          v13 = 0x676E69727453;
        }

        else
        {
          if (v12 != 1)
          {
            if (v12 == 2)
            {
              v53 = 0xE500000000000000;
              v13 = 0x74616F6C46;
              goto LABEL_21;
            }

LABEL_18:
            v53 = 0xE100000000000000;
            v13 = 63;
            goto LABEL_21;
          }

          v53 = 0xE700000000000000;
          v13 = 0x72656765746E49;
        }

LABEL_21:
        v52 = v13;
        v14 = _swiftEmptyArrayStorage;
        if (([v10 v6[32]] & 8) == 0)
        {
          v14 = sub_10003DC38(0, 1, 1, _swiftEmptyArrayStorage);
          v16 = *(v14 + 2);
          v15 = *(v14 + 3);
          if (v16 >= v15 >> 1)
          {
            v14 = sub_10003DC38((v15 > 1), v16 + 1, 1, v14);
          }

          *(v14 + 2) = v16 + 1;
          v17 = &v14[16 * v16];
          *(v17 + 4) = 0x656C62616C6C756ELL;
          *(v17 + 5) = 0xE800000000000000;
        }

        if ([v10 v6[32]])
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_10003DC38(0, *(v14 + 2) + 1, 1, v14);
          }

          v19 = *(v14 + 2);
          v18 = *(v14 + 3);
          if (v19 >= v18 >> 1)
          {
            v14 = sub_10003DC38((v18 > 1), v19 + 1, 1, v14);
          }

          *(v14 + 2) = v19 + 1;
          v20 = &v14[16 * v19];
          *(v20 + 4) = 0x6B7972616D697270;
          *(v20 + 5) = 0xEA00000000007965;
        }

        if (([v10 v6[32]] & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_10003DC38(0, *(v14 + 2) + 1, 1, v14);
          }

          v22 = *(v14 + 2);
          v21 = *(v14 + 3);
          if (v22 >= v21 >> 1)
          {
            v14 = sub_10003DC38((v21 > 1), v22 + 1, 1, v14);
          }

          *(v14 + 2) = v22 + 1;
          v23 = &v14[16 * v22];
          *(v23 + 4) = 0x657571696E75;
          *(v23 + 5) = 0xE600000000000000;
        }

        if (([v10 v6[32]] & 2) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_10003DC38(0, *(v14 + 2) + 1, 1, v14);
          }

          v25 = *(v14 + 2);
          v24 = *(v14 + 3);
          if (v25 >= v24 >> 1)
          {
            v14 = sub_10003DC38((v24 > 1), v25 + 1, 1, v14);
          }

          *(v14 + 2) = v25 + 1;
          v26 = &v14[16 * v25];
          *(v26 + 4) = 0x6261686372616573;
          *(v26 + 5) = 0xEA0000000000656CLL;
        }

        v27 = [v10 name];
        v28 = sub_1000812B8();
        v30 = v29;

        sub_100006940(&unk_1000B8360, &unk_1000856E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100085A60;
        *(inited + 32) = 1701869940;
        *(inited + 40) = 0xE400000000000000;
        *(inited + 48) = v52;
        *(inited + 56) = v53;
        *(inited + 72) = &type metadata for String;
        *(inited + 80) = 0x736E6F6974706FLL;
        *(inited + 88) = 0xE700000000000000;
        *(inited + 120) = sub_100006940(&qword_1000B7530, &qword_100089380);
        *(inited + 96) = v14;
        v32 = sub_10003C570(inited);
        swift_setDeallocating();
        sub_100006940(&qword_1000B7D00, qword_100085E80);
        swift_arrayDestroy();
        *(v0 + 168) = sub_100006940(&unk_1000B8390, &qword_100086040);
        *(v0 + 144) = v32;
        sub_1000068E4((v0 + 144), (v0 + 176));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = sub_1000525C4(v28, v30);
        v35 = v2[2];
        v36 = (v3 & 1) == 0;
        v37 = __OFADD__(v35, v36);
        v38 = v35 + v36;
        if (v37)
        {
          goto LABEL_57;
        }

        v39 = v3;
        if (v2[3] < v38)
        {
          sub_100052730(v38, isUniquelyReferenced_nonNull_native);
          v34 = sub_1000525C4(v28, v30);
          if ((v39 & 1) != (v40 & 1))
          {

            return sub_1000818E8();
          }

LABEL_48:
          if (v39)
          {
            goto LABEL_4;
          }

          goto LABEL_49;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_48;
        }

        v44 = v34;
        sub_1000537E4();
        v34 = v44;
        if (v39)
        {
LABEL_4:
          v7 = v34;

          v8 = (v2[7] + 32 * v7);
          sub_1000068F4(v8);
          sub_1000068E4((v0 + 176), v8);

          goto LABEL_5;
        }

LABEL_49:
        v2[(v34 >> 6) + 8] |= 1 << v34;
        v41 = (v2[6] + 16 * v34);
        *v41 = v28;
        v41[1] = v30;
        sub_1000068E4((v0 + 176), (v2[7] + 32 * v34));

        v42 = v2[2];
        v37 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v37)
        {
          goto LABEL_58;
        }

        v2[2] = v43;
LABEL_5:
        ++v5;
        v3 = v50;
        v6 = &selRef_byteCount;
      }

      while (v11 != v49);
    }
  }

  v47 = *(v0 + 8);

  return v47(v2);
}

uint64_t sub_100051EC0(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 280) = a2;
  *(v5 + 288) = v4;
  *(v5 + 313) = a4;
  *(v5 + 312) = a3;
  *(v5 + 272) = a1;
  return _swift_task_switch(sub_100051EEC, v4, 0);
}

uint64_t sub_100051EEC()
{
  v23 = v0;
  if ((*(v0 + 313) & 1) != 0 || *(v0 + 312))
  {
    v3 = *(v0 + 272);
    v4 = *(v0 + 280);
    v5 = 8;
    if (*(v0 + 312))
    {
      v5 = 16;
    }

    if (*(v0 + 313))
    {
      v6 = v5;
    }

    else
    {
      v6 = 4;
    }

    sub_100006940(&unk_1000B8360, &unk_1000856E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100085A60;
    *(inited + 32) = sub_1000812B8();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v8;
    *(inited + 48) = v3;
    *(inited + 56) = v4;
    *(inited + 80) = sub_1000812B8();
    *(inited + 88) = v9;
    *(inited + 120) = &type metadata for UInt;
    *(inited + 96) = v6;

    sub_10003C570(inited);
    swift_setDeallocating();
    sub_100006940(&qword_1000B7D00, qword_100085E80);
    swift_arrayDestroy();
    if (qword_1000B7400 != -1)
    {
      swift_once();
    }

    v10 = sub_100081018();
    sub_100016240(v10, qword_1000B8140);

    v11 = sub_100080FF8();
    v12 = sub_1000815B8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 313);
      v14 = *(v0 + 312);
      v16 = *(v0 + 272);
      v15 = *(v0 + 280);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136315650;
      *(v17 + 4) = sub_1000597A8(v16, v15, &v22);
      *(v17 + 12) = 1024;
      *(v17 + 14) = v14;
      *(v17 + 18) = 1024;
      *(v17 + 20) = v13;
      _os_log_impl(&_mh_execute_header, v11, v12, "Deleting shared managed assets for UUID %s, locally: %{BOOL}d, inCloud: %{BOOL}d", v17, 0x18u);
      sub_1000068F4(v18);
    }

    v19 = *(*(v0 + 288) + 112);
    isa = sub_100081208().super.isa;
    *(v0 + 296) = isa;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1000522B0;
    v21 = swift_continuation_init();
    *(v0 + 264) = sub_100006940(&unk_1000B8370, &unk_100086020);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_10004DA50;
    *(v0 + 232) = &unk_1000ABAF8;
    *(v0 + 240) = v21;
    [v19 deleteAssetsWithOptions:isa completion:v0 + 208];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v1 = *(v0 + 8);

    return v1();
  }
}

uint64_t sub_1000522B0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  v3 = *(v1 + 288);
  if (v2)
  {
    v4 = sub_100052434;
  }

  else
  {
    v4 = sub_1000523D0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000523D0()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100052434()
{
  v1 = *(v0 + 296);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000524A4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  if ((*(a4 + 56) & 0x10) != 0 && (, a1 = sub_1000570E0(v6, a2), a1 == 63))
  {
    v7 = 0;
  }

  else
  {
    v8 = *(a4 + 48);
    v12[0] = v6;
    v12[1] = a2;
    __chkstk_darwin(a1, a2, v8);
    v11[2] = v12;
    v7 = sub_100059D50(sub_10004B30C, v11, v9) ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_100052568()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_1000525C4(uint64_t a1, uint64_t a2)
{
  sub_100081988();
  sub_100081388();
  v4 = sub_1000819B8();

  return sub_1000535B8(a1, a2, v4);
}

unint64_t sub_10005263C(char a1)
{
  sub_100081988();
  sub_100081998(a1 & 1);
  v2 = sub_1000819B8();

  return sub_100053670(a1 & 1, v2);
}

unint64_t sub_1000526A8(uint64_t a1)
{
  sub_100081988();
  sub_100055EC8(a1);
  sub_100081388();

  v2 = sub_1000819B8();

  return sub_1000536E0(a1, v2);
}

uint64_t sub_100052730(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100006940(&qword_1000B7D58, &qword_100085A10);
  v33 = v4;
  result = sub_1000817C8();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1000068E4(v24, v34);
      }

      else
      {
        sub_100006888(v24, v34);
      }

      sub_100081988();
      sub_100081388();
      result = sub_1000819B8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1000068E4(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000529E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100006940(&qword_1000B7D38, &qword_1000859F0);
  v30 = v4;
  result = sub_1000817C8();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_100081988();
      sub_100081998(v20);
      result = sub_1000819B8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100052C78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100006940(&unk_1000B83D0, &unk_1000859E0);
  result = sub_1000817C8();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_1000068E4(v21, v30);
      }

      else
      {
        sub_100006888(v21, v30);
      }

      sub_100081988();
      sub_100055EC8(v20);
      sub_100081388();

      result = sub_1000819B8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      result = sub_1000068E4(v30, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100052F28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for DataManager.StateInfo(0);
  v41 = *(v5 - 8);
  __chkstk_darwin(v5 - 8, v6, v7);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100006940(&qword_1000B7D48, qword_100086060);
  v42 = v4;
  result = sub_1000817C8();
  v11 = result;
  if (*(v9 + 16))
  {
    v39 = v2;
    v40 = v9;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 56);
      v26 = (*(v9 + 48) + 16 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = *(v41 + 72);
      v30 = v25 + v29 * v24;
      if (v42)
      {
        sub_10003CE00(v30, v43);
      }

      else
      {
        sub_10004AD04(v30, v43);
      }

      sub_100081988();
      sub_100081388();
      result = sub_1000819B8();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v27;
      v20[1] = v28;
      result = sub_10003CE00(v43, *(v11 + 56) + v29 * v19);
      ++*(v11 + 16);
      v9 = v40;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100053264(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100006940(&qword_1000B83F0, &qword_1000859F8);
  v34 = v4;
  result = sub_1000817C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_100081988();
      sub_100081388();
      result = sub_1000819B8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

_OWORD *sub_100053504(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000068E4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_100053570(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1000535B8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100081888())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100053670(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000536E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = a1;
    v6 = ~v3;
    while (1)
    {
      v7 = sub_100055EC8(*(*(v2 + 48) + v4));
      v9 = v8;
      if (v7 == sub_100055EC8(v5) && v9 == v10)
      {
        break;
      }

      v12 = sub_100081888();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

void sub_1000537E4()
{
  v1 = v0;
  sub_100006940(&qword_1000B7D58, &qword_100085A10);
  v2 = *v0;
  v3 = sub_1000817B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_100006888(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000068E4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void *sub_100053988()
{
  v1 = v0;
  sub_100006940(&qword_1000B7D38, &qword_1000859F0);
  v2 = *v0;
  v3 = sub_1000817B8();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_100053AE4()
{
  v1 = v0;
  sub_100006940(&unk_1000B83D0, &unk_1000859E0);
  v2 = *v0;
  v3 = sub_1000817B8();
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
        v18 = *(*(v2 + 48) + v17);
        sub_100006888(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_1000068E4(v19, (*(v4 + 56) + 32 * v17));
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

void sub_100053C60()
{
  v1 = v0;
  v2 = type metadata accessor for DataManager.StateInfo(0);
  v33 = *(v2 - 8);
  __chkstk_darwin(v2 - 8, v3, v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006940(&qword_1000B7D48, qword_100086060);
  v6 = *v0;
  v7 = sub_1000817B8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    v9 = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v34 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = *(v6 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = 16 * v22;
        v24 = (*(v6 + 48) + 16 * v22);
        v25 = *v24;
        v26 = v24[1];
        v27 = v32;
        v28 = *(v33 + 72) * v22;
        sub_10004AD04(*(v6 + 56) + v28, v32);
        v29 = v34;
        v30 = (*(v34 + 48) + v23);
        *v30 = v25;
        v30[1] = v26;
        sub_10003CE00(v27, *(v29 + 56) + v28);
      }

      while (v17);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v31;
        v8 = v34;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_100053E90()
{
  v1 = v0;
  sub_100006940(&qword_1000B83F0, &qword_1000859F8);
  v2 = *v0;
  v3 = sub_1000817B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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
}

uint64_t sub_100053FF8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  sub_10001A8DC(a1 + 32, &v44, &qword_1000B7D00, qword_100085E80);
  v8 = v44;
  v7 = v45;
  v42 = v44;
  v43 = v45;
  sub_1000068E4(v46, v41);
  v9 = *a3;
  v10 = sub_1000525C4(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_100052730(v15, a2 & 1);
    v10 = sub_1000525C4(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_1000818E8();
      __break(1u);
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_1000537E4();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v47 = v18;
    swift_errorRetain();
    sub_100006940(&qword_1000B7910, &unk_100084B20);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1000068F4(v41);
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_1000068E4(v41, (v21[7] + 32 * v10));
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
    }

    v25 = a1 + 80;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_10001A8DC(v25, &v44, &qword_1000B7D00, qword_100085E80);
      v28 = v44;
      v27 = v45;
      v42 = v44;
      v43 = v45;
      sub_1000068E4(v46, v41);
      v29 = *a3;
      v30 = sub_1000525C4(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_100052730(v34, 1);
        v30 = sub_1000525C4(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      sub_1000068E4(v41, (v37[7] + 32 * v30));
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 48;
      if (v4 == v26)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_100081698(30);
  v48._object = 0x8000000100094A10;
  v48._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1000813B8(v48);
  sub_100081778();
  v49._countAndFlagsBits = 39;
  v49._object = 0xE100000000000000;
  sub_1000813B8(v49);
  result = sub_100081798();
  __break(1u);
  return result;
}

uint64_t sub_1000543D4(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  sub_10001A8DC(a1 + 32, v37, &qword_1000B7D30, &unk_100085BC0);
  v7 = v37[0];
  v39 = v37[0];
  sub_1000068E4(v38, v36);
  v8 = *a3;
  v9 = sub_1000526A8(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = v10;
  if (v8[3] < v14)
  {
    sub_100052C78(v14, a2 & 1);
    v9 = sub_1000526A8(v7);
    if ((v15 & 1) != (v16 & 1))
    {
LABEL_5:
      sub_1000818E8();
      __break(1u);
    }

LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v18 = v9;
  sub_100053AE4();
  v9 = v18;
  if (v15)
  {
LABEL_9:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_100006940(&qword_1000B7910, &unk_100084B20);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1000068F4(v36);
    }

    goto LABEL_26;
  }

LABEL_12:
  v19 = *a3;
  *(*a3 + 8 * (v9 >> 6) + 64) |= 1 << v9;
  *(v19[6] + v9) = v7;
  sub_1000068E4(v36, (v19[7] + 32 * v9));
  v20 = v19[2];
  v13 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (!v13)
  {
    v19[2] = v21;
    if (v4 == 1)
    {
    }

    v22 = a1 + 72;
    v23 = 1;
    while (v23 < *(a1 + 16))
    {
      sub_10001A8DC(v22, v37, &qword_1000B7D30, &unk_100085BC0);
      v24 = v37[0];
      v39 = v37[0];
      sub_1000068E4(v38, v36);
      v25 = *a3;
      v26 = sub_1000526A8(v24);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v13 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v13)
      {
        goto LABEL_23;
      }

      v31 = v27;
      if (v25[3] < v30)
      {
        sub_100052C78(v30, 1);
        v26 = sub_1000526A8(v24);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v31)
      {
        goto LABEL_9;
      }

      v33 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      *(v33[6] + v26) = v24;
      sub_1000068E4(v36, (v33[7] + 32 * v26));
      v34 = v33[2];
      v13 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v13)
      {
        goto LABEL_24;
      }

      ++v23;
      v33[2] = v35;
      v22 += 40;
      if (v4 == v23)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_100081698(30);
  v40._object = 0x8000000100094A10;
  v40._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1000813B8(v40);
  sub_100081778();
  v41._countAndFlagsBits = 39;
  v41._object = 0xE100000000000000;
  sub_1000813B8(v41);
  result = sub_100081798();
  __break(1u);
  return result;
}

unint64_t *sub_100054794(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void *, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_100054FA0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100054824(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100006940(&qword_1000B7D58, &qword_100085A10);
  result = sub_1000817D8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_100006888(v17 + 32 * v16, v33);
    sub_1000068E4(v33, v32);
    sub_100081988();

    sub_100081388();
    result = sub_1000819B8();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_1000068E4(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_100054AA0(_BYTE *a1)
{
  sub_100006940(&unk_1000B8360, &unk_1000856E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100085A60;
  *(inited + 32) = sub_1000812B8();
  *(inited + 40) = v3;
  if (a1[16])
  {
    if (a1[16] == 1)
    {
      v4 = 0xEE0070756F724773;
      v5 = 0x7953585265726F63;
    }

    else
    {
      v4 = 0xEF70756F72477265;
      v5 = 0x7355585265726F63;
    }
  }

  else
  {
    v4 = 0x8000000100092710;
    v5 = 0xD000000000000012;
  }

  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v5;
  *(inited + 56) = v4;
  *(inited + 80) = sub_1000812B8();
  *(inited + 88) = v6;
  v7 = sub_1000812B8();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v7;
  *(inited + 104) = v8;
  v9 = sub_10003C570(inited);
  swift_setDeallocating();
  sub_100006940(&qword_1000B7D00, qword_100085E80);
  swift_arrayDestroy();
  if (a1[56])
  {
    v10 = sub_1000812B8();
    v12 = v11;
    v17 = &type metadata for UInt;
    *&v16 = 2;
    sub_1000068E4(&v16, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10003C2FC(v15, v10, v12, isUniquelyReferenced_nonNull_native);
  }

  return v9;
}

uint64_t sub_100054C8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_10003E098(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 64;
    v5 = sub_100081678();
    v6 = 0;
    v7 = *(a1 + 36);
    v31 = v1;
    v32 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v10 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v11 = v4;
      v12 = *(*(a1 + 48) + v5);
      sub_100006888(*(a1 + 56) + 32 * v5, v35);
      v33[0] = v12;
      sub_1000068E4(v35, v34);
      v13 = sub_100055EC8(v12);
      v15 = v14;
      sub_100006888(v34, v37);
      *&v36 = v13;
      *(&v36 + 1) = v15;
      sub_10001A80C(v33, &qword_1000B83B8, &qword_100086048);
      v38 = v2;
      v17 = v2[2];
      v16 = v2[3];
      if (v17 >= v16 >> 1)
      {
        sub_10003E098((v16 > 1), v17 + 1, 1);
        v2 = v38;
      }

      v2[2] = v17 + 1;
      v18 = &v2[6 * v17];
      v19 = v36;
      v20 = v37[1];
      v18[3] = v37[0];
      v18[4] = v20;
      v18[2] = v19;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_27;
      }

      v21 = *(v11 + 8 * v10);
      if ((v21 & (1 << v5)) == 0)
      {
        goto LABEL_28;
      }

      v4 = v11;
      v7 = v32;
      if (v32 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v22 = v21 & (-2 << (v5 & 0x3F));
      if (v22)
      {
        v8 = __clz(__rbit64(v22)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v9 = v31;
      }

      else
      {
        v23 = v10 << 6;
        v24 = v10 + 1;
        v9 = v31;
        v25 = (a1 + 72 + 8 * v10);
        while (v24 < (v8 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_100055A28(v5, v32, 0);
            v8 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        sub_100055A28(v5, v32, 0);
      }

LABEL_4:
      ++v6;
      v5 = v8;
      if (v6 == v9)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_20:
    if (v2[2])
    {
      sub_100006940(&qword_1000B7D58, &qword_100085A10);
      v28 = sub_1000817D8();
    }

    else
    {
      v28 = &_swiftEmptyDictionarySingleton;
    }

    *&v36 = v28;

    sub_100053FF8(v29, 1, &v36);

    return v36;
  }

  return result;
}

unint64_t *sub_100054FA0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void *, __n128))
{
  v23 = a4;
  v20 = result;
  v21 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_100006888(*(a3 + 56) + 32 * v14, v22);

    LOBYTE(v16) = (v23)(v16, v17, v22);
    sub_1000068F4(v22);

    if (v16)
    {
      *(v20 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_100054824(v20, a2, v21, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_100054824(v20, a2, v21, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100055110(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void *, __n128), uint64_t a3)
{
  v4 = v3;
  v6 = a1;
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = (1 << v7) + 63;
  v10 = v9 >> 6;
  v11 = 8 * (v9 >> 6);
  if (v8 <= 0xD)
  {
    goto LABEL_2;
  }

  v15 = 8 * (v9 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v11 = v15;
LABEL_2:
    __chkstk_darwin(a1, v11, a3);
    v13 = &v19 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = sub_100054FA0(v13, v10, v6, a2);
    if (v4)
    {
      return swift_willThrow();
    }

    return result;
  }

  v16 = swift_slowAlloc();
  v17 = v4;
  v18 = sub_100054794(v16, v10, v6, a2);

  if (!v17)
  {
    return v18;
  }

  return result;
}

uint64_t sub_100055290(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v63 = _swiftEmptyArrayStorage;
  sub_10003E0B8(0, v4, 0);
  v8 = 0;
  v5 = _swiftEmptyArrayStorage;
  v9 = a1 + 32;
  v10 = 1;
  v44 = a2;
  v45 = a1 + 32;
  v46 = v4;
  while (1)
  {
    v49 = v8;
    v11 = *(v9 + 8 * v8);
    swift_bridgeObjectRetain_n();
    v12 = sub_100055110(v11, sub_100055A34, a2);
    v48 = v3;

    v13 = v12[2];
    if (v13)
    {
      v47 = v5;
      v62 = _swiftEmptyArrayStorage;
      sub_10003E0F8(0, v13, 0);
      v53 = v12 + 8;
      v54 = v62;
      v14 = sub_100081678();
      v15 = 0;
      v50 = v12 + 9;
      v51 = v13;
      v52 = v12;
      while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(v12 + 32))
      {
        v5 = v14 >> 6;
        if ((v53[v14 >> 6] & (1 << v14)) == 0)
        {
          goto LABEL_37;
        }

        v17 = *(v12 + 9);
        v18 = (v12[6] + 16 * v14);
        v13 = *v18;
        v10 = v18[1];
        sub_100006888(v12[7] + 32 * v14, v59);
        v56[0] = v13;
        v56[1] = v10;
        sub_1000068E4(v59, v57);
        swift_bridgeObjectRetain_n();
        v19 = sub_1000570E0(v13, v10);
        if (v19 == 63)
        {
          if (qword_1000B7400 == -1)
          {
LABEL_32:
            v38 = sub_100081018();
            sub_100016240(v38, qword_1000B8140);

            v39 = sub_100080FF8();
            v40 = sub_1000815C8();

            if (os_log_type_enabled(v39, v40))
            {
              v41 = swift_slowAlloc();
              v5 = swift_slowAlloc();
              v55 = v5;
              *v41 = 136315138;
              *(v41 + 4) = sub_1000597A8(v13, v10, &v55);
              _os_log_impl(&_mh_execute_header, v39, v40, "invalid column name: %s", v41, 0xCu);
              sub_1000068F4(v5);
            }

            sub_10004AC50();
            swift_allocError();
            *v42 = 2;
            *(v42 + 8) = 0;
            *(v42 + 16) = 0;
            *(v42 + 24) = 0;
            *(v42 + 32) = 5;
            swift_willThrow();

            sub_10001A80C(v56, &qword_1000B83C8, &qword_100086058);

            return v5;
          }

LABEL_41:
          swift_once();
          goto LABEL_32;
        }

        v20 = v19;
        sub_100006888(v57, v60 + 8);
        LOBYTE(v60[0]) = v20;
        sub_10001A80C(v56, &qword_1000B83C8, &qword_100086058);
        v21 = v54;
        v62 = v54;
        v13 = v54[2];
        v22 = v54[3];
        if (v13 >= v22 >> 1)
        {
          sub_10003E0F8((v22 > 1), v13 + 1, 1);
          v21 = v62;
        }

        v21[2] = v13 + 1;
        v54 = v21;
        v23 = &v21[5 * v13];
        v24 = v60[0];
        v25 = v60[1];
        v23[8] = v61;
        *(v23 + 2) = v24;
        *(v23 + 3) = v25;
        v12 = v52;
        v10 = 1;
        v16 = 1 << *(v52 + 32);
        if (v14 >= v16)
        {
          goto LABEL_38;
        }

        v26 = v53[v5];
        if ((v26 & (1 << v14)) == 0)
        {
          goto LABEL_39;
        }

        if (v17 != *(v52 + 9))
        {
          goto LABEL_40;
        }

        v27 = v26 & (-2 << (v14 & 0x3F));
        if (v27)
        {
          v16 = __clz(__rbit64(v27)) | v14 & 0x7FFFFFFFFFFFFFC0;
          v13 = v51;
        }

        else
        {
          v28 = v5 << 6;
          v29 = v5 + 1;
          v13 = v51;
          v30 = &v50[v5];
          while (v29 < (v16 + 63) >> 6)
          {
            v31 = *v30++;
            v5 = v31;
            v28 += 64;
            ++v29;
            if (v31)
            {
              sub_100055A28(v14, v17, 0);
              v16 = __clz(__rbit64(v5)) + v28;
              goto LABEL_6;
            }
          }

          sub_100055A28(v14, v17, 0);
        }

LABEL_6:
        ++v15;
        v14 = v16;
        if (v15 == v13)
        {

          v5 = v47;
          v32 = v54;
          a2 = v44;
          if (v54[2])
          {
            goto LABEL_23;
          }

LABEL_25:
          v34 = &_swiftEmptyDictionarySingleton;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v32 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
      goto LABEL_25;
    }

LABEL_23:
    v33 = v32;
    sub_100006940(&unk_1000B83D0, &unk_1000859E0);
    v34 = sub_1000817D8();
    v32 = v33;
LABEL_26:
    v58 = v34;
    sub_1000543D4(v32, 1, &v58);
    v3 = v48;
    if (v48)
    {
      break;
    }

    v35 = v58;
    v63 = v5;
    v37 = *(v5 + 16);
    v36 = *(v5 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_10003E0B8((v36 > 1), v37 + 1, 1);
      v5 = v63;
    }

    v8 = v49 + 1;
    *(v5 + 16) = v37 + 1;
    *(v5 + 8 * v37 + 32) = v35;
    v9 = v45;
    if (v49 + 1 == v46)
    {
      return v5;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_10005585C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10003E118(0, v1, 0);
    v3 = a1 + 32;
    do
    {

      v5 = sub_100054C8C(v4);

      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        sub_10003E118((v6 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      _swiftEmptyArrayStorage[v7 + 4] = v5;
      v3 += 8;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

BOOL sub_100055934(void *a1)
{
  v2 = [a1 domain];
  v3 = sub_1000812B8();
  v5 = v4;

  if (v3 == sub_1000812B8() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_100081888();

    result = 0;
    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  return [a1 code] == -20008 || objc_msgSend(a1, "code") == -20007;
}

uint64_t sub_100055A28(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for DatabaseFieldName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC2)
  {
    goto LABEL_17;
  }

  if (a2 + 62 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 62) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 62;
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

      return (*a1 | (v4 << 8)) - 62;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 62;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3F;
  v8 = v6 - 63;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DatabaseFieldName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 62 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 62) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC2)
  {
    v4 = 0;
  }

  if (a2 > 0xC1)
  {
    v5 = ((a2 - 194) >> 8) + 1;
    *result = a2 + 62;
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
    *result = a2 + 62;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseTableName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DatabaseTableName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseGroup(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DatabaseGroup(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100055E74()
{
  result = qword_1000B83F8;
  if (!qword_1000B83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B83F8);
  }

  return result;
}

uint64_t sub_100055EC8(char a1)
{
  result = 0x6F6C796150636361;
  switch(a1)
  {
    case 3:
      return 0x654C706167726961;
    case 4:
      return 0x6952706167726961;
    case 5:
      return 0x3150706167726961;
    case 6:
      return 0x3250706167726961;
    case 7:
      return 0x726F6C6F63;
    case 8:
      return 0x646F43726F6C6F63;
    case 9:
    case 61:
      return 0xD000000000000011;
    case 10:
      return 0xD000000000000018;
    case 11:
      return 0xD000000000000010;
    case 12:
    case 44:
      return 0xD000000000000015;
    case 13:
      return 0xD00000000000001DLL;
    case 14:
      return 1635017060;
    case 15:
      return 1668506980;
    case 16:
      v3 = 0x745374696465;
      return v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
    case 17:
      return 0xD000000000000018;
    case 18:
    case 62:
      return 0xD000000000000012;
    case 19:
      return 0x656D6C6C6F726E65;
    case 20:
      return 25705;
    case 21:
    case 41:
    case 45:
      return 0xD000000000000017;
    case 22:
    case 23:
      return 0xD000000000000014;
    case 24:
    case 37:
      return 0xD000000000000016;
    case 25:
      v3 = 0x446575737369;
      return v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
    case 26:
      v4 = 1852797802;
      goto LABEL_50;
    case 27:
    case 28:
      v4 = 1936614764;
LABEL_50:
      result = v4 | 0x6174614400000000;
      break;
    case 29:
      result = 0x736E654C7466656CLL;
      break;
    case 30:
      result = 0x6E654C7468676972;
      break;
    case 31:
      result = 0x74617453736E656CLL;
      break;
    case 32:
      result = 1701667182;
      break;
    case 33:
      result = 0x72656E776FLL;
      break;
    case 34:
      result = 0xD00000000000001ALL;
      break;
    case 35:
      result = 0xD000000000000018;
      break;
    case 36:
      result = 0xD000000000000018;
      break;
    case 38:
    case 51:
      result = 0xD00000000000001BLL;
      break;
    case 39:
    case 40:
      result = 0xD000000000000019;
      break;
    case 42:
      result = 0x7079546D73697270;
      break;
    case 43:
      result = 0x49656C69666F7270;
      break;
    case 46:
      result = 0x4C58526469;
      break;
    case 47:
      result = 0x5258526469;
      break;
    case 48:
      result = 0x444955557872;
      break;
    case 49:
      result = 0x6C74727554616573;
      break;
    case 50:
      result = 0x6968637255616573;
      break;
    case 52:
      result = 28275;
      break;
    case 53:
      result = 0x65756C6176;
      break;
    case 54:
      result = 0x6E6F6973726576;
      break;
    case 55:
      result = 0x646975755F414D5FLL;
      break;
    case 56:
      result = 0x616572635F414D5FLL;
      break;
    case 57:
      result = 0x616470755F414D5FLL;
      break;
    case 58:
      result = 0x676174735F414D5FLL;
      break;
    case 59:
    case 60:
      result = 0x79536B635F414D5FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000565A4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v3 = 0x6F69737265566264;
    v4 = 0xD000000000000010;
    v5 = 0xD000000000000015;
    if (a1 != 3)
    {
      v5 = 0xD000000000000021;
    }

    if (a1 != 2)
    {
      v4 = v5;
    }

    if (a1)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else if (a1 > 7u)
  {
    if (a1 == 8)
    {
      return 0xD000000000000028;
    }

    else
    {
      return 0xD000000000000018;
    }
  }

  else
  {
    v1 = 0xD000000000000020;
    if (a1 == 6)
    {
      v1 = 0xD00000000000002CLL;
    }

    if (a1 == 5)
    {
      return 0xD000000000000022;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100056724(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD00000000000001BLL;
    v6 = 0x6853617461447872;
    if (a1 != 8)
    {
      v6 = 0x7461446D73697270;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000013;
    if (a1 == 5)
    {
      v7 = 0x6445617461445852;
    }

    if (a1 <= 6u)
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
    v1 = 0x6D65747379535852;
    v2 = 0x617461445852;
    v3 = 0x69747265706F7250;
    if (a1 != 3)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000016;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1000568B0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEE0070756F724773;
  v3 = 0x7953585265726F63;
  v4 = *a1;
  v5 = 0x7355585265726F63;
  v6 = 0xEF70756F72477265;
  if (v4 == 1)
  {
    v5 = 0x7953585265726F63;
    v6 = 0xEE0070756F724773;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x8000000100092710;
  }

  if (*a2 != 1)
  {
    v3 = 0x7355585265726F63;
    v2 = 0xEF70756F72477265;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x8000000100092710;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100081888();
  }

  return v11 & 1;
}

Swift::Int sub_1000569CC()
{
  sub_100081988();
  sub_100081388();

  return sub_1000819B8();
}

uint64_t sub_100056A8C(uint64_t a1)
{
  sub_100081388();
}

Swift::Int sub_100056B38()
{
  sub_100081988();
  sub_100081388();

  return sub_1000819B8();
}

unint64_t sub_100056BF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100057134(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100056C24(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0070756F724773;
  v4 = 0x7953585265726F63;
  if (v2 != 1)
  {
    v4 = 0x7355585265726F63;
    v3 = 0xEF70756F72477265;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v5)
  {
    v3 = 0x8000000100092710;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_100056D00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100057180(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100056D30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100056724(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100056D60()
{
  result = qword_1000B8400;
  if (!qword_1000B8400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8400);
  }

  return result;
}

unint64_t sub_100056DB8()
{
  result = qword_1000B8408;
  if (!qword_1000B8408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8408);
  }

  return result;
}

uint64_t sub_100056E24(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
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
    v12 = sub_100081888();
  }

  return v12 & 1;
}

Swift::Int sub_100056ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_100081988();
  a3(v5);
  sub_100081388();

  return sub_1000819B8();
}

uint64_t sub_100056F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_100081388();
}

Swift::Int sub_100056FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_100081988();
  a4(v6);
  sub_100081388();

  return sub_1000819B8();
}

unint64_t sub_10005702C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000570E0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10005705C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100055EC8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10005708C()
{
  result = qword_1000B8410;
  if (!qword_1000B8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8410);
  }

  return result;
}

unint64_t sub_1000570E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000818A8();

  if (v2 >= 0x3F)
  {
    return 63;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100057134(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000AA3B8;
  v6._object = a2;
  v4 = sub_100081808(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100057180(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000AA420;
  v6._object = a2;
  v4 = sub_100081808(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000571D8(uint64_t a1)
{
  v2 = sub_1000578F4();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100057214(uint64_t a1)
{
  v2 = sub_1000578F4();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100057250(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_100057A34(v5, v7) & 1;
}

unint64_t sub_10005729C()
{
  v1 = v0;
  v2 = *v0;
  sub_100006940(&unk_1000B8360, &unk_1000856E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084830;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v4 = *(v0 + 16);
  v28 = *v0;
  v29 = v4;
  v30 = *(v0 + 32);
  sub_1000578BC(v0, v27);
  v5 = sub_100081338();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_10003C570(inited);
  swift_setDeallocating();
  sub_10003C6A0(inited + 32);
  v8 = sub_100057594();
  v10 = v9;
  v11 = sub_1000812B8();
  v13 = v12;
  *(&v29 + 1) = &type metadata for String;
  *&v28 = v8;
  *(&v28 + 1) = v10;
  sub_1000068E4(&v28, v27);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10003C2FC(v27, v11, v13, isUniquelyReferenced_nonNull_native);

  v15 = v7;
  v17 = *v1;
  v16 = *(v1 + 8);
  v18 = *(v1 + 32);
  if (v18 <= 1)
  {
    if (!*(v1 + 32))
    {
      *(&v29 + 1) = sub_10000DC18(0, &unk_1000B83A0, NSError_ptr);
      *&v28 = v17;
      sub_1000068E4(&v28, v27);
      v24 = v2;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v26 = v7;
      v22 = 0x69796C7265646E75;
      v23 = 0xEF726F727245676ELL;
      goto LABEL_11;
    }

    if (v18 == 1)
    {
      *(&v29 + 1) = &type metadata for String;
      *&v28 = v17;
      *(&v28 + 1) = v16;
      sub_1000068E4(&v28, v27);

      v21 = swift_isUniquelyReferenced_nonNull_native();
      v26 = v7;
      v22 = 0x6C6961746564;
      v23 = 0xE600000000000000;
      goto LABEL_11;
    }
  }

  else
  {
    if (v18 == 2)
    {
      *(&v29 + 1) = &type metadata for String;
      *&v28 = v17;
      *(&v28 + 1) = v16;
      sub_1000068E4(&v28, v27);

      v21 = swift_isUniquelyReferenced_nonNull_native();
      v26 = v7;
      v22 = 1684632949;
      v23 = 0xE400000000000000;
      goto LABEL_11;
    }

    v19 = *(v1 + 16);
    v20 = *(v1 + 24);
    if (v18 == 3 || v18 == 4)
    {
      *&v28 = v17;
      *(&v28 + 1) = v16;

      v31._countAndFlagsBits = 46;
      v31._object = 0xE100000000000000;
      sub_1000813B8(v31);
      v32._countAndFlagsBits = v19;
      v32._object = v20;
      sub_1000813B8(v32);
      *(&v29 + 1) = &type metadata for String;
      sub_1000068E4(&v28, v27);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v26 = v7;
      v22 = 0x646C656966;
      v23 = 0xE500000000000000;
LABEL_11:
      sub_10003C2FC(v27, v22, v23, v21);
      return v26;
    }
  }

  return v15;
}

unint64_t sub_100057594()
{
  result = 0xD000000000000017;
  v2 = *(v0 + 32);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      return result;
    }

    if (v2 == 4)
    {
      return 0xD00000000000001DLL;
    }

    v4 = *v0;
    v5 = v0[1];
    v6 = v0[2] | v0[3];
    if (!(v6 | *v0 | v5))
    {
      return 0xD00000000000001BLL;
    }

    v7 = v6 | v5;
    if (v4 == 1 && !v7)
    {
      return result;
    }

    if (v4 == 2 && !v7)
    {
      return 0xD000000000000016;
    }

    if (v4 == 3 && !v7)
    {
      return 0xD00000000000001ALL;
    }

    if (v4 == 4 && !v7)
    {
      return 0xD00000000000001BLL;
    }

    if (v4 != 5 || v7)
    {
      if (v4 != 6 || v7)
      {
        if (v4 != 7 || v7 != 0)
        {
          return 0xD000000000000018;
        }
      }

      else
      {
        return 0xD000000000000010;
      }
    }

    else
    {
      return 0xD000000000000012;
    }
  }

  else
  {
    v3 = 0xD000000000000014;
    if (v2 != 1)
    {
      v3 = 0xD000000000000011;
    }

    if (*(v0 + 32))
    {
      return v3;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  return result;
}

uint64_t sub_100057780()
{
  v1 = *(v0 + 32);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return 13;
    }

    else if (v1 == 4)
    {
      return 14;
    }

    else
    {
      v4 = *v0;
      v5 = v0[1];
      v6 = v0[2] | v0[3];
      if (v6 | *v0 | v5)
      {
        v7 = v6 | v5;
        if (v4 != 1 || v7)
        {
          if (v4 != 2 || v7)
          {
            if (v4 != 3 || v7)
            {
              if (v4 != 4 || v7)
              {
                if (v4 != 5 || v7)
                {
                  if (v4 != 6 || v7)
                  {
                    if (v7)
                    {
                      v8 = 0;
                    }

                    else
                    {
                      v8 = v4 == 7;
                    }

                    if (v8)
                    {
                      return 11;
                    }

                    else
                    {
                      return 12;
                    }
                  }

                  else
                  {
                    return 8;
                  }
                }

                else
                {
                  return 7;
                }
              }

              else
              {
                return 6;
              }
            }

            else
            {
              return 5;
            }
          }

          else
          {
            return 4;
          }
        }

        else
        {
          return 3;
        }
      }

      else
      {
        return 2;
      }
    }
  }

  else
  {
    v2 = 9;
    if (v1 != 1)
    {
      v2 = 10;
    }

    if (*(v0 + 32))
    {
      return v2;
    }

    else
    {
      return 1;
    }
  }
}

unint64_t sub_1000578F4()
{
  result = qword_1000B8418;
  if (!qword_1000B8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8418);
  }

  return result;
}

uint64_t sub_100057948(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 4)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 sub_100057964(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100057978(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000579C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_100057A08(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_100057A34(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 32);
  if (v5 > 2)
  {
    v7 = a1[2];
    v6 = a1[3];
    if (v5 == 3)
    {
      if (a2[2].i8[0] != 3)
      {
        return 0;
      }

      v11 = a2[1].i64[0];
      v9 = a2[1].i64[1];
      v12 = v3 == a2->i64[0] && v4 == a2->i64[1];
      if (!v12 && (sub_100081888() & 1) == 0)
      {
        return 0;
      }

      if (v7 != v11)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v5 != 4)
      {
        v13 = v7 | v4;
        if (v13 | v3 | v6)
        {
          v14 = v13 | v6;
          if (v3 != 1 || v14)
          {
            if (v3 != 2 || v14)
            {
              if (v3 != 3 || v14)
              {
                if (v3 != 4 || v14)
                {
                  if (v3 != 5 || v14)
                  {
                    if (v3 != 6 || v14)
                    {
                      if (v3 != 7 || v14)
                      {
                        if (a2[2].i8[0] != 5 || a2->i64[0] != 8)
                        {
                          return 0;
                        }
                      }

                      else if (a2[2].i8[0] != 5 || a2->i64[0] != 7)
                      {
                        return 0;
                      }
                    }

                    else if (a2[2].i8[0] != 5 || a2->i64[0] != 6)
                    {
                      return 0;
                    }
                  }

                  else if (a2[2].i8[0] != 5 || a2->i64[0] != 5)
                  {
                    return 0;
                  }
                }

                else if (a2[2].i8[0] != 5 || a2->i64[0] != 4)
                {
                  return 0;
                }
              }

              else if (a2[2].i8[0] != 5 || a2->i64[0] != 3)
              {
                return 0;
              }
            }

            else if (a2[2].i8[0] != 5 || a2->i64[0] != 2)
            {
              return 0;
            }
          }

          else if (a2[2].i8[0] != 5 || a2->i64[0] != 1)
          {
            return 0;
          }

          if (!(a2[1].i64[0] | a2[1].i64[1] | a2->i64[1]))
          {
            return 1;
          }
        }

        else if (a2[2].i8[0] == 5)
        {
          v15 = vorrq_s8(*a2, a2[1]);
          if (!*&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)))
          {
            return 1;
          }
        }

        return 0;
      }

      if (a2[2].i8[0] != 4)
      {
        return 0;
      }

      v8 = a2[1].i64[0];
      v9 = a2[1].i64[1];
      if ((v3 != a2->i64[0] || v4 != a2->i64[1]) && (sub_100081888() & 1) == 0)
      {
        return 0;
      }

      if (v7 != v8)
      {
        goto LABEL_30;
      }
    }

    if (v6 != v9)
    {
      goto LABEL_30;
    }

    return 1;
  }

  if (!*(a1 + 32))
  {
    if (!a2[2].i8[0])
    {
      sub_10000DC18(0, &qword_1000B75E8, NSObject_ptr);
      return sub_1000815F8() & 1;
    }

    return 0;
  }

  if (v5 == 1)
  {
    if (a2[2].i8[0] == 1)
    {
      if (v3 != a2->i64[0] || v4 != a2->i64[1])
      {
        goto LABEL_30;
      }

      return 1;
    }

    return 0;
  }

  if (a2[2].i8[0] != 2)
  {
    return 0;
  }

  if (v3 == a2->i64[0] && v4 == a2->i64[1])
  {
    return 1;
  }

LABEL_30:

  return sub_100081888();
}

uint64_t sub_100057D64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100059E58(a1);

  *a2 = v3;
  return result;
}

void sub_100057DA4()
{
  v0 = sub_100081018();
  sub_100016278(v0, qword_1000B8420);
  sub_100016240(v0, qword_1000B8420);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1000812B8();

    type metadata accessor for DataStore();
    sub_100006940(&unk_1000B8380, &unk_100086030);
    sub_100081338();
    sub_100081008();
  }

  else
  {
    __break(1u);
  }
}

void sub_100057E9C(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = *(v1 + 32);
    if (v3 >> 62)
    {
      goto LABEL_31;
    }

    v38 = v3 & 0xFFFFFFFFFFFFFF8;
    v39 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v4 = 0;
      v35 = v2;
      v36 = a1 + 4;
LABEL_5:
      if (v4 != v2)
      {
        break;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      v38 = v3 & 0xFFFFFFFFFFFFFF8;
      v33 = a1;
      v39 = sub_1000817A8();
      a1 = v33;
    }

    v5 = 0;
    v6 = *(v36 + v4);
    v37 = v4 + 1;
    while (1)
    {
      if (v39 == v5)
      {
        if (qword_1000B7408 != -1)
        {
          swift_once();
        }

        v16 = sub_100081018();
        sub_100016240(v16, qword_1000B8420);

        v17 = sub_100080FF8();
        v18 = sub_1000815D8();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *v19 = 136315394;
          v20 = sub_100055EC8(v6);
          v22 = sub_1000597A8(v20, v21, &v40);

          *(v19 + 4) = v22;
          *(v19 + 12) = 2080;
          v23 = sub_100056724(*(v34 + 18));
          v25 = sub_1000597A8(v23, v24, &v40);

          *(v19 + 14) = v25;
          _os_log_impl(&_mh_execute_header, v17, v18, "Invalid field '%s' for table '%s'", v19, 0x16u);
          swift_arrayDestroy();
        }

        v26 = sub_100056724(*(v34 + 18));
        v28 = v27;
        v29 = sub_100055EC8(v6);
        v31 = v30;
        sub_10004AC50();
        swift_allocError();
        *v32 = v26;
        *(v32 + 8) = v28;
        *(v32 + 16) = v29;
        *(v32 + 24) = v31;
        *(v32 + 32) = 3;
        swift_willThrow();
        return;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        a1 = sub_1000816A8();
      }

      else
      {
        if (v5 >= *(v38 + 16))
        {
          goto LABEL_29;
        }

        a1 = *(v3 + 8 * v5 + 32);
      }

      v7 = a1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v8 = [a1 name];
      v9 = sub_1000812B8();
      v10 = v6;
      v12 = v11;

      v2 = v10;
      if (v9 == sub_100055EC8(v10) && v12 == v13)
      {
        break;
      }

      v15 = sub_100081888();

      ++v5;
      v6 = v10;
      if (v15)
      {
        goto LABEL_20;
      }
    }

LABEL_20:
    v2 = v35;
    v4 = v37;
    if (v37 != v35)
    {
      goto LABEL_5;
    }
  }
}

uint64_t sub_100058220(uint64_t a1)
{
  v3 = v1;
  v4 = a1;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = 0;

  v118 = v3;
  v120 = v5;
  v119 = v9;
  while (1)
  {
    if (!v8)
    {
      if (v9 <= v10 + 1)
      {
        v12 = v10 + 1;
      }

      else
      {
        v12 = v9;
      }

      v13 = v12 - 1;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v9)
        {
          v121 = 0;
          v130 = 0;
          v10 = v13;
          v128 = 0u;
          v129 = 0u;
          goto LABEL_16;
        }

        v8 = *(v5 + 8 * v11);
        ++v10;
        if (v8)
        {
          v10 = v11;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      if (qword_1000B7408 != -1)
      {
        swift_once();
      }

      v55 = sub_100081018();
      sub_100016240(v55, qword_1000B8420);
      sub_100006888(&v128, &v126);

      v56 = sub_100080FF8();
      v57 = sub_1000815D8();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v125[0] = swift_slowAlloc();
        *v58 = 136315650;
        sub_10002329C(&v126, v127);
        swift_getDynamicType();
        v59 = sub_1000819E8();
        v61 = v60;
        sub_1000068F4(&v126);
        v62 = sub_1000597A8(v59, v61, v125);

        *(v58 + 4) = v62;
        *(v58 + 12) = 2080;
        v63 = sub_100055EC8(v133);
        v65 = sub_1000597A8(v63, v64, v125);

        *(v58 + 14) = v65;
        *(v58 + 22) = 2080;
        v66 = sub_100056724(*(v3 + 18));
        v68 = sub_1000597A8(v66, v67, v125);

        *(v58 + 24) = v68;
        _os_log_impl(&_mh_execute_header, v56, v57, "Invalid value type '%s' for float field '%s' of table '%s'", v58, 0x20u);
        swift_arrayDestroy();

        goto LABEL_77;
      }

      goto LABEL_76;
    }

    v11 = v10;
LABEL_15:
    v121 = (v8 - 1) & v8;
    v14 = __clz(__rbit64(v8)) | (v11 << 6);
    v15 = *(*(v4 + 48) + v14);
    sub_100006888(*(v4 + 56) + 32 * v14, &v126);
    LOBYTE(v128) = v15;
    sub_1000068E4(&v126, (&v128 + 8));
LABEL_16:
    v131[0] = v128;
    v131[1] = v129;
    v132 = v130;
    if (!v130)
    {
    }

    v16 = LOBYTE(v131[0]);
    sub_1000068E4((v131 + 8), &v128);
    v17 = *(v3 + 48);
    v133 = v16;
    *&v126 = sub_100055EC8(v16);
    *(&v126 + 1) = v18;
    __chkstk_darwin(v126, v18, v19);
    v116[2] = &v126;
    v20 = v122;
    LOBYTE(v17) = sub_100059D50(sub_100059E90, v116, v17);
    v122 = v20;

    if (v17)
    {
      sub_1000068F4(&v128);
      v5 = v120;
      v9 = v119;
      v8 = v121;
    }

    else
    {
      v21 = *(v3 + 32);
      if (v21 >> 62)
      {
        v22 = sub_1000817A8();
        if (!v22)
        {
LABEL_50:
          if (qword_1000B7408 != -1)
          {
            swift_once();
          }

          v34 = sub_100081018();
          sub_100016240(v34, qword_1000B8420);
          v35 = v118;

          v36 = sub_100080FF8();
          v37 = sub_1000815D8();

          v38 = os_log_type_enabled(v36, v37);
          v39 = v133;
          if (v38)
          {
            v40 = swift_slowAlloc();
            *&v126 = swift_slowAlloc();
            *v40 = 136315394;
            v41 = sub_100055EC8(v39);
            v43 = sub_1000597A8(v41, v42, &v126);

            *(v40 + 4) = v43;
            *(v40 + 12) = 2080;
            v44 = sub_100056724(*(v118 + 18));
            v46 = sub_1000597A8(v44, v45, &v126);

            *(v40 + 14) = v46;
            _os_log_impl(&_mh_execute_header, v36, v37, "Invalid field '%s' for table '%s'", v40, 0x16u);
            swift_arrayDestroy();
            v35 = v118;
          }

          v47 = sub_100056724(*(v35 + 18));
          v49 = v48;
          v50 = sub_100055EC8(v39);
          v52 = v51;
          sub_10004AC50();
          swift_allocError();
          *v53 = v47;
          *(v53 + 8) = v49;
          *(v53 + 16) = v50;
          *(v53 + 24) = v52;
          *(v53 + 32) = 3;
          swift_willThrow();

          return sub_1000068F4(&v128);
        }
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v22)
        {
          goto LABEL_50;
        }
      }

      v23 = 0;
      v123 = v21 & 0xFFFFFFFFFFFFFF8;
      v124 = v21 & 0xC000000000000001;
      while (1)
      {
        if (v124)
        {
          v24 = sub_1000816A8();
          v3 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_58;
          }
        }

        else
        {
          if (v23 >= *(v123 + 16))
          {
            goto LABEL_59;
          }

          v24 = *(v21 + 8 * v23 + 32);
          v3 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_58;
          }
        }

        v25 = v22;
        v26 = v24;
        v27 = [v24 name];
        v28 = sub_1000812B8();
        v2 = v29;

        if (v28 == sub_100055EC8(v133) && v2 == v30)
        {
          break;
        }

        v32 = sub_100081888();

        if (v32)
        {
          goto LABEL_36;
        }

        ++v23;
        v22 = v25;
        if (v3 == v25)
        {
          goto LABEL_50;
        }
      }

LABEL_36:
      v2 = v26;
      v33 = [v26 type];
      v4 = v117;
      v9 = v119;
      if (v33 > 2)
      {
        v3 = v118;
        v5 = v120;
        if (v33 == 3)
        {
          sub_100006888(&v128, &v126);
          if (!swift_dynamicCast())
          {
            if (qword_1000B7408 != -1)
            {
              swift_once();
            }

            v95 = sub_100081018();
            sub_100016240(v95, qword_1000B8420);
            sub_100006888(&v128, &v126);

            v56 = sub_100080FF8();
            v96 = sub_1000815D8();

            if (!os_log_type_enabled(v56, v96))
            {
              goto LABEL_76;
            }

            v97 = swift_slowAlloc();
            v125[0] = swift_slowAlloc();
            *v97 = 136315650;
            sub_10002329C(&v126, v127);
            swift_getDynamicType();
            v98 = sub_1000819E8();
            v100 = v99;
            sub_1000068F4(&v126);
            v101 = sub_1000597A8(v98, v100, v125);

            *(v97 + 4) = v101;
            *(v97 + 12) = 2080;
            v102 = sub_100055EC8(v133);
            v104 = sub_1000597A8(v102, v103, v125);

            *(v97 + 14) = v104;
            *(v97 + 22) = 2080;
            v105 = sub_100056724(*(v3 + 18));
            v107 = sub_1000597A8(v105, v106, v125);

            *(v97 + 24) = v107;
            _os_log_impl(&_mh_execute_header, v56, v96, "Invalid value type '%s' for string field '%s' of table '%s'", v97, 0x20u);
            swift_arrayDestroy();

            goto LABEL_77;
          }

          sub_1000068F4(&v128);

          v8 = v121;
        }

        else
        {
          if (v33 != 4)
          {
            goto LABEL_46;
          }

          sub_100006888(&v128, &v126);
          if (!swift_dynamicCast())
          {
            if (qword_1000B7408 != -1)
            {
              swift_once();
            }

            v69 = sub_100081018();
            sub_100016240(v69, qword_1000B8420);
            sub_100006888(&v128, &v126);

            v56 = sub_100080FF8();
            v70 = sub_1000815D8();

            if (os_log_type_enabled(v56, v70))
            {
              v71 = swift_slowAlloc();
              v125[0] = swift_slowAlloc();
              *v71 = 136315650;
              sub_10002329C(&v126, v127);
              swift_getDynamicType();
              v72 = sub_1000819E8();
              v74 = v73;
              sub_1000068F4(&v126);
              v75 = sub_1000597A8(v72, v74, v125);

              *(v71 + 4) = v75;
              *(v71 + 12) = 2080;
              v76 = sub_100055EC8(v133);
              v78 = sub_1000597A8(v76, v77, v125);

              *(v71 + 14) = v78;
              *(v71 + 22) = 2080;
              v79 = sub_100056724(*(v3 + 18));
              v81 = sub_1000597A8(v79, v80, v125);

              *(v71 + 24) = v81;
              _os_log_impl(&_mh_execute_header, v56, v70, "Invalid value type '%s' for blob field '%s' of table '%s'", v71, 0x20u);
              swift_arrayDestroy();

              goto LABEL_77;
            }

LABEL_76:

            sub_1000068F4(&v126);
LABEL_77:
            v108 = sub_100056724(*(v3 + 18));
            v110 = v109;
            v111 = [v2 name];
            v112 = sub_1000812B8();
            v114 = v113;

            sub_10004AC50();
            swift_allocError();
            *v115 = v108;
            *(v115 + 8) = v110;
            *(v115 + 16) = v112;
            *(v115 + 24) = v114;
            *(v115 + 32) = 4;
            swift_willThrow();

            return sub_1000068F4(&v128);
          }

          sub_1000068F4(&v128);

          sub_100006A34(v125[0], v125[1]);
          v8 = v121;
        }
      }

      else
      {
        v3 = v118;
        v5 = v120;
        if (v33 == 1)
        {
          sub_100006888(&v128, &v126);
          if (!swift_dynamicCast())
          {
            if (qword_1000B7408 != -1)
            {
              swift_once();
            }

            v82 = sub_100081018();
            sub_100016240(v82, qword_1000B8420);
            sub_100006888(&v128, &v126);

            v56 = sub_100080FF8();
            v83 = sub_1000815D8();

            if (!os_log_type_enabled(v56, v83))
            {
              goto LABEL_76;
            }

            v84 = swift_slowAlloc();
            v125[0] = swift_slowAlloc();
            *v84 = 136315650;
            sub_10002329C(&v126, v127);
            swift_getDynamicType();
            v85 = sub_1000819E8();
            v87 = v86;
            sub_1000068F4(&v126);
            v88 = sub_1000597A8(v85, v87, v125);

            *(v84 + 4) = v88;
            *(v84 + 12) = 2080;
            v89 = sub_100055EC8(v133);
            v91 = sub_1000597A8(v89, v90, v125);

            *(v84 + 14) = v91;
            *(v84 + 22) = 2080;
            v92 = sub_100056724(*(v3 + 18));
            v94 = sub_1000597A8(v92, v93, v125);

            *(v84 + 24) = v94;
            _os_log_impl(&_mh_execute_header, v56, v83, "Invalid value type '%s' for integer field '%s' of table '%s'", v84, 0x20u);
            swift_arrayDestroy();

            goto LABEL_77;
          }
        }

        else if (v33 == 2)
        {
          sub_100006888(&v128, &v126);
          if (!swift_dynamicCast())
          {
            goto LABEL_60;
          }
        }

LABEL_46:
        sub_1000068F4(&v128);

        v8 = v121;
      }
    }
  }
}

uint64_t sub_100059120()
{
  v1 = 0xEE0070756F724773;
  v2 = 0x7953585265726F63;
  if (*(v0 + 16) != 1)
  {
    v2 = 0x7355585265726F63;
    v1 = 0xEF70756F72477265;
  }

  if (*(v0 + 16))
  {
    v3._countAndFlagsBits = v2;
  }

  else
  {
    v3._countAndFlagsBits = 0xD000000000000012;
  }

  if (*(v0 + 16))
  {
    v4 = v1;
  }

  else
  {
    v4 = 0x8000000100092710;
  }

  v3._object = v4;
  sub_1000813B8(v3);

  v6._countAndFlagsBits = 58;
  v6._object = 0xE100000000000000;
  sub_1000813B8(v6);
  v7._countAndFlagsBits = sub_100081338();
  sub_1000813B8(v7);

  v8._countAndFlagsBits = 58;
  v8._object = 0xE100000000000000;
  sub_1000813B8(v8);
  v9._countAndFlagsBits = sub_100056724(*(v0 + 18));
  sub_1000813B8(v9);

  return 0;
}

uint64_t sub_10005924C()
{

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_1000592E4()
{
  v2 = *(v0 + 16);
  if (v2 == 3)
  {
    goto LABEL_18;
  }

  v3 = *(v0 + 17);
  if (v3 == 2)
  {
    goto LABEL_18;
  }

  v4 = *(v0 + 18);
  if (v4 == 10)
  {
    goto LABEL_18;
  }

  v5 = *(v0 + 40);
  if (v5 == 63)
  {
    goto LABEL_18;
  }

  swift_beginAccess();
  v6 = *(v0 + 32);
  if (v6 >> 62)
  {
    if (sub_1000817A8())
    {
      goto LABEL_7;
    }

LABEL_18:
    sub_10004AC50();
    swift_allocError();
    *v18 = 0u;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 5;
    swift_willThrow();
    return v1;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_7:
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  swift_beginAccess();
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  type metadata accessor for DataStoreTable();
  v11 = swift_allocObject();
  v12 = v7;
  *(v11 + 17) = v3 & 1;
  *(v11 + 16) = v2;
  *(v11 + 18) = v4;
  v13 = 0xEE0070756F724773;
  *(v11 + 24) = v7;
  *(v11 + 32) = v8;
  *(v11 + 40) = v5;
  *(v11 + 48) = v10;
  *(v11 + 56) = v9;
  v14 = 0x7355585265726F63;
  if (v2 == 1)
  {
    v14 = 0x7953585265726F63;
  }

  else
  {
    v13 = 0xEF70756F72477265;
  }

  if (v2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0xD000000000000012;
  }

  if (v2)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0x8000000100092710;
  }

  v1 = v11;
  v17 = v12;

  v20._countAndFlagsBits = v15;
  v20._object = v16;
  sub_1000813B8(v20);

  v21._countAndFlagsBits = 58;
  v21._object = 0xE100000000000000;
  sub_1000813B8(v21);
  v22._countAndFlagsBits = sub_100056724(v4);
  sub_1000813B8(v22);

  v23._countAndFlagsBits = 58;
  v23._object = 0xE100000000000000;
  sub_1000813B8(v23);
  sub_100081778();
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  return v1;
}

uint64_t sub_100059548()
{

  return _swift_deallocClassInstance(v0, 64, 7);
}

unint64_t sub_1000595C8()
{
  result = qword_1000B8738;
  if (!qword_1000B8738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8738);
  }

  return result;
}

unint64_t sub_100059620()
{
  result = qword_1000B8740;
  if (!qword_1000B8740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8740);
  }

  return result;
}

unint64_t sub_100059678()
{
  result = qword_1000B8748;
  if (!qword_1000B8748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8748);
  }

  return result;
}

unint64_t sub_1000596D0()
{
  result = qword_1000B8750;
  if (!qword_1000B8750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8750);
  }

  return result;
}

uint64_t sub_10005974C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1000597A8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1000597A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100059874(v11, 0, 0, 1, a1, a2);
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
    sub_100006888(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000068F4(v11);
  return v7;
}

unint64_t sub_100059874(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100059980(a5, a6);
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
    result = sub_1000816B8();
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

void *sub_100059980(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000599CC(a1, a2);
  sub_100059AFC(&off_1000AA158);
  return v3;
}

void *sub_1000599CC(uint64_t a1, unint64_t a2)
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

  v6 = sub_100059BE8(v5, 0);
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

  result = sub_1000816B8();
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
        v10 = sub_1000813C8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100059BE8(v10, 0);
        result = sub_100081688();
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

uint64_t sub_100059AFC(uint64_t result)
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

  result = sub_100059C5C(result, v11, 1, v3);
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

void *sub_100059BE8(uint64_t a1, uint64_t a2)
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

  sub_100006940(&qword_1000B7DA8, qword_1000867C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100059C5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006940(&qword_1000B7DA8, qword_1000867C0);
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

uint64_t sub_100059D50(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100059DFC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_100081888() & 1;
  }
}

uint64_t sub_100059E58(uint64_t a1)
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

uint64_t sub_100059E90(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100081888() & 1;
  }
}

uint64_t sub_100059EE8(char a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  if ((a3 & 2) != 0)
  {
    if (a3)
    {
      v5 = 1;
      if ((a3 & 4) == 0)
      {
LABEL_13:
        if ((a3 & 8) != 0 && (v5 & 4) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      goto LABEL_12;
    }

    v5 = 0;
    if ((a3 & 4) != 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (a3)
    {
      v5 = 9;
      if ((a3 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v5 = 8;
    if ((a3 & 4) != 0)
    {
LABEL_12:
      v5 |= 2uLL;
      goto LABEL_13;
    }
  }

  if ((a3 & 8) != 0)
  {
LABEL_15:
    v5 |= 4uLL;
  }

LABEL_16:
  v6 = a2;
  if (*(v4 + 40) == 63)
  {
    *(v4 + 40) = a1;
  }

  sub_100055EC8(a1);
  v7 = objc_allocWithZone(MAKVStoreDataField);
  v8 = sub_100081288();

  v9 = [v7 initWithName:v8 type:v6 + 1 options:v5];

  swift_beginAccess();
  v10 = v9;
  sub_100081468();
  if (*((*(v4 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000814A8();
  }

  sub_1000814C8();
  swift_endAccess();

  return v4;
}

Swift::String __swiftcall CRXCDiopterRange.localizedString()()
{
  v1 = sub_100080DE8();
  __chkstk_darwin(v1 - 8, v2, v3);
  v4 = sub_100081278();
  __chkstk_darwin(v4 - 8, v5, v6);
  sub_100081268();
  sub_100080DD8();
  sub_100081328();
  sub_100006940(&qword_1000B7528, &unk_100086800);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100085A60;
  v8 = *(v0 + OBJC_IVAR___CRXCDiopterRange_minimumDiopter);
  *(v7 + 56) = &type metadata for Float;
  *(v7 + 64) = &protocol witness table for Float;
  *(v7 + 32) = v8;
  v9 = *(v0 + OBJC_IVAR___CRXCDiopterRange_maximumDiopter);
  *(v7 + 96) = &type metadata for Float;
  *(v7 + 104) = &protocol witness table for Float;
  *(v7 + 72) = v9;
  v10 = sub_1000812E8();
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

BOOL CRXCDiopterRange.isEqual(_:)(uint64_t a1)
{
  sub_10000CFA4(a1, v6);
  if (v7)
  {
    type metadata accessor for CRXCDiopterRange();
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR___CRXCDiopterRange_minimumDiopter) == *&v5[OBJC_IVAR___CRXCDiopterRange_minimumDiopter] && *(v1 + OBJC_IVAR___CRXCDiopterRange_maximumDiopter) == *&v5[OBJC_IVAR___CRXCDiopterRange_maximumDiopter])
      {
        v2 = *(v1 + OBJC_IVAR___CRXCDiopterRange_mappedDiopter);
        v3 = *&v5[OBJC_IVAR___CRXCDiopterRange_mappedDiopter];

        return v2 == v3;
      }
    }
  }

  else
  {
    sub_10000D014(v6);
  }

  return 0;
}

uint64_t CRXCDiopterRange.description.getter()
{
  sub_100081698(72);
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v1._object = 0x8000000100094EE0;
  sub_1000813B8(v1);
  sub_100081598();
  v2._countAndFlagsBits = 0xD000000000000013;
  v2._object = 0x8000000100094F00;
  sub_1000813B8(v2);
  sub_100081598();
  v3._object = 0x8000000100094F20;
  v3._countAndFlagsBits = 0xD000000000000011;
  sub_1000813B8(v3);
  sub_100081598();
  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  sub_1000813B8(v4);
  return 0;
}

Swift::Void __swiftcall CRXCDiopterRange.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___CRXCDiopterRange_minimumDiopter);
  v4 = sub_100081288();
  LODWORD(v5) = v3;
  [(objc_class *)with.super.isa encodeFloat:v4 forKey:v5];

  v6 = *(v1 + OBJC_IVAR___CRXCDiopterRange_maximumDiopter);
  v7 = sub_100081288();
  LODWORD(v8) = v6;
  [(objc_class *)with.super.isa encodeFloat:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR___CRXCDiopterRange_mappedDiopter);
  v11 = sub_100081288();
  LODWORD(v10) = v9;
  [(objc_class *)with.super.isa encodeFloat:v11 forKey:v10];
}

id CRXCDiopterRange.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_10005A86C(a1);

  return v4;
}

id CRXCDiopterRange.init(coder:)(void *a1)
{
  v2 = sub_10005A86C(a1);

  return v2;
}

id CRXCDiopterRange.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRXCDiopterRange();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10005A86C(void *a1)
{
  v3 = sub_100081288();
  [a1 decodeFloatForKey:v3];
  v5 = v4;

  *&v1[OBJC_IVAR___CRXCDiopterRange_minimumDiopter] = v5;
  v6 = sub_100081288();
  [a1 decodeFloatForKey:v6];
  v8 = v7;

  *&v1[OBJC_IVAR___CRXCDiopterRange_maximumDiopter] = v8;
  v9 = sub_100081288();
  [a1 decodeFloatForKey:v9];
  v11 = v10;

  *&v1[OBJC_IVAR___CRXCDiopterRange_mappedDiopter] = v11;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for CRXCDiopterRange();
  return objc_msgSendSuper2(&v13, "init");
}

uint64_t CRXCEnrollmentBriefRecord.uuid.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_uuid);

  return v1;
}

id sub_10005A9C0(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_100081288();

  return v3;
}

uint64_t CRXCEnrollmentBriefRecord.enrollmentName.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentName);

  return v1;
}

uint64_t CRXCEnrollmentBriefRecord.isEqual(_:)(uint64_t a1)
{
  sub_10000CFA4(a1, v9);
  if (!v10)
  {
    sub_10000D014(v9);
    goto LABEL_18;
  }

  type metadata accessor for CRXCEnrollmentBriefRecord();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v6 = 0;
    return v6 & 1;
  }

  v2 = *(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_uuid) == *&v8[OBJC_IVAR___CRXCEnrollmentBriefRecord_uuid] && *(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_uuid + 8) == *&v8[OBJC_IVAR___CRXCEnrollmentBriefRecord_uuid + 8];
  if (!v2 && (sub_100081888() & 1) == 0 || (*(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentName) == *&v8[OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentName] ? (v3 = *(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentName + 8) == *&v8[OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentName + 8]) : (v3 = 0), !v3 && (sub_100081888() & 1) == 0 || *(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentGroup) != *&v8[OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentGroup] || *(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_identifyingColor) != *&v8[OBJC_IVAR___CRXCEnrollmentBriefRecord_identifyingColor]))
  {

    goto LABEL_18;
  }

  v4 = *(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_isSelected);
  v5 = v8[OBJC_IVAR___CRXCEnrollmentBriefRecord_isSelected];

  v6 = v4 ^ v5 ^ 1;
  return v6 & 1;
}

uint64_t CRXCEnrollmentBriefRecord.description.getter()
{
  sub_100081698(81);
  v7._object = 0x8000000100095020;
  v7._countAndFlagsBits = 0xD00000000000001CLL;
  sub_1000813B8(v7);
  sub_1000813B8(*(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_uuid));
  v8._countAndFlagsBits = 0x203A656D616E202CLL;
  v8._object = 0xE900000000000022;
  sub_1000813B8(v8);
  sub_1000813B8(*(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentName));
  v9._countAndFlagsBits = 0x70756F7267202C22;
  v9._object = 0xEA0000000000203ALL;
  sub_1000813B8(v9);
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentGroup);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 0xE600000000000000;
      v3._countAndFlagsBits = 0x6D6574737973;
      goto LABEL_10;
    }

    if (v1 == 3)
    {
      v2 = 0xE300000000000000;
      v3._countAndFlagsBits = 7958113;
      goto LABEL_10;
    }

LABEL_17:
    result = sub_1000818C8();
    __break(1u);
    return result;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0xE400000000000000;
      v3._countAndFlagsBits = 1919251317;
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  v2 = 0xE400000000000000;
  v3._countAndFlagsBits = 1701736302;
LABEL_10:
  v3._object = v2;
  sub_1000813B8(v3);

  v10._countAndFlagsBits = 0x3A726F6C6F63202CLL;
  v10._object = 0xE900000000000020;
  sub_1000813B8(v10);
  v11._countAndFlagsBits = sub_100081848();
  sub_1000813B8(v11);

  v12._countAndFlagsBits = 0x656C65537369202CLL;
  v12._object = 0xEE00203A64657463;
  sub_1000813B8(v12);
  if (*(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_isSelected))
  {
    v4._countAndFlagsBits = 1702195828;
  }

  else
  {
    v4._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_isSelected))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v4._object = v5;
  sub_1000813B8(v4);

  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  sub_1000813B8(v13);
  return 0;
}

Swift::Void __swiftcall CRXCEnrollmentBriefRecord.encode(with:)(NSCoder with)
{
  v3 = sub_100081288();
  v4 = sub_100081288();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = sub_100081288();
  v6 = sub_100081288();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentGroup);
  v8 = sub_100081288();
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_identifyingColor);
  v10 = sub_100081288();
  [(objc_class *)with.super.isa encodeInteger:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_isSelected);
  v12 = sub_100081288();
  [(objc_class *)with.super.isa encodeBool:v11 forKey:v12];
}

id CRXCEnrollmentBriefRecord.init(coder:)(void *a1)
{
  v2 = sub_100081288();
  [a1 decodeIntegerForKey:v2];

  v3 = sub_100081288();
  [a1 decodeBoolForKey:v3];

  sub_10004CA64();
  v4 = sub_1000815E8();
  if (v4)
  {
    v7 = 0;
    v5 = v4;
    sub_1000812A8();
  }

  type metadata accessor for CRXCEnrollmentBriefRecord();
  swift_deallocPartialClassInstance();
  return 0;
}

id CRXCEnrollmentBriefRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRXCEnrollmentBriefRecord();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id CRXCEnrollmentData.__allocating_init(accPayload:enrollmentName:issueDate:calibrationDataLeft:calibrationDataRight:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v24 = objc_allocWithZone(v10);
  v16.super.isa = sub_100080CC8().super.isa;
  if (a4)
  {
    v17 = sub_100081288();
  }

  else
  {
    v17 = 0;
  }

  v18.super.isa = sub_100080D48().super.isa;
  if (!a7)
  {
    v19 = 0;
    if (a9)
    {
      goto LABEL_6;
    }

LABEL_8:
    v20 = 0;
    goto LABEL_9;
  }

  v19 = sub_100081288();

  if (!a9)
  {
    goto LABEL_8;
  }

LABEL_6:
  v20 = sub_100081288();

LABEL_9:
  v21 = [v24 initWithAccPayload:v16.super.isa accPayloadLeft:0 accPayloadRight:0 enrollmentName:v17 issueDate:v18.super.isa calibrationDataLeft:v19 calibrationDataRight:v20];

  sub_100006A34(a1, a2);
  v22 = sub_100080D98();
  (*(*(v22 - 8) + 8))(a5, v22);
  return v21;
}

id CRXCEnrollmentData.init(accPayload:enrollmentName:issueDate:calibrationDataLeft:calibrationDataRight:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = sub_10005D728(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  sub_100006A34(a1, a2);
  return v11;
}

id CRXCEnrollmentData.__allocating_init(accPayloadLeft:accPayloadRight:enrollmentName:issueDate:calibrationDataLeft:calibrationDataRight:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v28 = objc_allocWithZone(v12);
  v29 = a1;
  v30 = a2;
  v19.super.isa = sub_100080CC8().super.isa;
  v20.super.isa = sub_100080CC8().super.isa;
  if (a6)
  {
    v21 = sub_100081288();
  }

  else
  {
    v21 = 0;
  }

  v31 = a7;
  v22.super.isa = sub_100080D48().super.isa;
  if (!a9)
  {
    v23 = 0;
    if (a11)
    {
      goto LABEL_6;
    }

LABEL_8:
    v24 = 0;
    goto LABEL_9;
  }

  v23 = sub_100081288();

  if (!a11)
  {
    goto LABEL_8;
  }

LABEL_6:
  v24 = sub_100081288();

LABEL_9:
  v25 = [v28 initWithAccPayload:0 accPayloadLeft:v19.super.isa accPayloadRight:v20.super.isa enrollmentName:v21 issueDate:v22.super.isa calibrationDataLeft:v23 calibrationDataRight:v24];

  sub_100006A34(a3, a4);
  sub_100006A34(v29, v30);
  v26 = sub_100080D98();
  (*(*(v26 - 8) + 8))(v31, v26);
  return v25;
}

id CRXCEnrollmentData.init(accPayloadLeft:accPayloadRight:enrollmentName:issueDate:calibrationDataLeft:calibrationDataRight:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = sub_10005D888(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  sub_100006A34(a3, a4);
  sub_100006A34(a1, a2);
  return v15;
}

id CRXCEnrollmentData.__allocating_init(accPayload:accPayloadLeft:accPayloadRight:enrollmentName:issueDate:calibrationDataLeft:calibrationDataRight:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v22 = objc_allocWithZone(v13);
  v23 = &v22[OBJC_IVAR___CRXCEnrollmentData_accPayload];
  *v23 = a1;
  *(v23 + 1) = a2;
  v24 = &v22[OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft];
  *v24 = a3;
  *(v24 + 1) = a4;
  v25 = &v22[OBJC_IVAR___CRXCEnrollmentData_accPayloadRight];
  *v25 = a5;
  *(v25 + 1) = a6;
  v26 = &v22[OBJC_IVAR___CRXCEnrollmentData_enrollmentName];
  *v26 = a7;
  *(v26 + 1) = a8;
  v27 = OBJC_IVAR___CRXCEnrollmentData_issueDate;
  v28 = sub_100080D98();
  v29 = *(v28 - 8);
  (*(v29 + 16))(&v22[v27], a9, v28);
  v30 = &v22[OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft];
  *v30 = a10;
  *(v30 + 1) = a11;
  v31 = &v22[OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight];
  *v31 = a12;
  *(v31 + 1) = a13;
  v34.receiver = v22;
  v34.super_class = v13;
  v32 = objc_msgSendSuper2(&v34, "init");
  (*(v29 + 8))(a9, v28);
  return v32;
}

id CRXCEnrollmentData.init(accPayload:accPayloadLeft:accPayloadRight:enrollmentName:issueDate:calibrationDataLeft:calibrationDataRight:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = &v13[OBJC_IVAR___CRXCEnrollmentData_accPayload];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v13[OBJC_IVAR___CRXCEnrollmentData_accPayloadRight];
  *v16 = a5;
  *(v16 + 1) = a6;
  v17 = &v13[OBJC_IVAR___CRXCEnrollmentData_enrollmentName];
  *v17 = a7;
  *(v17 + 1) = a8;
  v18 = OBJC_IVAR___CRXCEnrollmentData_issueDate;
  v19 = sub_100080D98();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v13[v18], a9, v19);
  v21 = &v13[OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft];
  *v21 = a10;
  *(v21 + 1) = a11;
  v22 = &v13[OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight];
  *v22 = a12;
  *(v22 + 1) = a13;
  v25.receiver = v13;
  v25.super_class = type metadata accessor for CRXCEnrollmentData(0);
  v23 = objc_msgSendSuper2(&v25, "init");
  (*(v20 + 8))(a9, v19);
  return v23;
}

uint64_t CRXCEnrollmentData.isEqual(_:)(uint64_t a1)
{
  sub_10000CFA4(a1, v17);
  if (!v18)
  {
    sub_10000D014(v17);
    goto LABEL_40;
  }

  type metadata accessor for CRXCEnrollmentData(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_40:
    LOBYTE(v14) = 0;
    return v14 & 1;
  }

  v3 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_accPayload);
  v2 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_accPayload + 8);
  v5 = *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayload];
  v4 = *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayload + 8];
  if (v2 >> 60 == 15)
  {
    if (v4 >> 60 != 15)
    {
      goto LABEL_18;
    }

    sub_10001622C(*&v16[OBJC_IVAR___CRXCEnrollmentData_accPayload], *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayload + 8]);
    sub_10001622C(v3, v2);
    sub_10001A164(v3, v2);
  }

  else
  {
    if (v4 >> 60 == 15)
    {
      goto LABEL_18;
    }

    sub_10001622C(*&v16[OBJC_IVAR___CRXCEnrollmentData_accPayload], *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayload + 8]);
    sub_10001622C(v5, v4);
    sub_10001622C(v3, v2);
    v6 = sub_10000DAB0(v3, v2, v5, v4);
    sub_10001A164(v5, v4);
    sub_10001A164(v5, v4);
    sub_10001A164(v3, v2);
    if (!v6)
    {
      goto LABEL_39;
    }
  }

  v3 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft);
  v2 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft + 8);
  v5 = *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft];
  v4 = *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft + 8];
  if (v2 >> 60 == 15)
  {
    if (v4 >> 60 != 15)
    {
      goto LABEL_18;
    }

    sub_10001622C(*&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft], *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft + 8]);
    sub_10001622C(v3, v2);
    sub_10001A164(v3, v2);
  }

  else
  {
    if (v4 >> 60 == 15)
    {
      goto LABEL_18;
    }

    sub_10001622C(*&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft], *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft + 8]);
    sub_10001622C(v5, v4);
    sub_10001622C(v3, v2);
    v7 = sub_10000DAB0(v3, v2, v5, v4);
    sub_10001A164(v5, v4);
    sub_10001A164(v5, v4);
    sub_10001A164(v3, v2);
    if (!v7)
    {
      goto LABEL_39;
    }
  }

  v3 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_accPayloadRight);
  v2 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_accPayloadRight + 8);
  v5 = *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadRight];
  v4 = *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadRight + 8];
  if (v2 >> 60 == 15)
  {
    if (v4 >> 60 == 15)
    {
      sub_10001622C(*&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadRight], *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadRight + 8]);
      sub_10001622C(v3, v2);
      sub_10001A164(v3, v2);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v4 >> 60 == 15)
  {
LABEL_18:
    sub_10001622C(v5, v4);
    sub_10001622C(v3, v2);

    sub_10001A164(v3, v2);
    sub_10001A164(v5, v4);
    goto LABEL_40;
  }

  sub_10001622C(*&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadRight], *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadRight + 8]);
  sub_10001622C(v5, v4);
  sub_10001622C(v3, v2);
  v8 = sub_10000DAB0(v3, v2, v5, v4);
  sub_10001A164(v5, v4);
  sub_10001A164(v5, v4);
  sub_10001A164(v3, v2);
  if (!v8)
  {
    goto LABEL_39;
  }

LABEL_20:
  v9 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_enrollmentName + 8);
  v10 = *&v16[OBJC_IVAR___CRXCEnrollmentData_enrollmentName + 8];
  if (v9)
  {
    if (!v10 || (*(v1 + OBJC_IVAR___CRXCEnrollmentData_enrollmentName) != *&v16[OBJC_IVAR___CRXCEnrollmentData_enrollmentName] || v9 != v10) && (sub_100081888() & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (v10)
  {
    goto LABEL_39;
  }

  if ((sub_100080D68() & 1) == 0)
  {
    goto LABEL_39;
  }

  v11 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft + 8);
  v12 = *&v16[OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft + 8];
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_33;
    }

LABEL_39:

    goto LABEL_40;
  }

  if (!v12 || (*(v1 + OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft) != *&v16[OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft] || v11 != v12) && (sub_100081888() & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  v13 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight + 8);
  v14 = *&v16[OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight + 8];
  if (!v13)
  {

    if (!v14)
    {
      LOBYTE(v14) = 1;
      return v14 & 1;
    }

    goto LABEL_40;
  }

  if (!v14)
  {
LABEL_45:

    return v14 & 1;
  }

  if (*(v1 + OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight) != *&v16[OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight] || v13 != v14)
  {
    LOBYTE(v14) = sub_100081888();
    goto LABEL_45;
  }

  LOBYTE(v14) = 1;
  return v14 & 1;
}

unint64_t CRXCEnrollmentData.description.getter()
{
  v1 = 0xD000000000000010;
  v2 = *(v0 + OBJC_IVAR___CRXCEnrollmentData_accPayload + 8);
  if (v2 >> 60 != 15)
  {
    v5 = *(v0 + OBJC_IVAR___CRXCEnrollmentData_accPayload);
    sub_10000D808(v5, v2);
    sub_100081698(35);

    v21 = 0xD000000000000014;
    sub_10003D7BC(v5, v2);
    sub_100006940(&qword_1000B7530, &qword_100089380);
    sub_100006988();
    v6 = sub_100081248();
    v8 = v7;

    v22._countAndFlagsBits = v6;
    v22._object = v8;
    sub_1000813B8(v22);

    v23._countAndFlagsBits = 0x203A656D616E202CLL;
    v23._object = 0xE900000000000022;
    sub_1000813B8(v23);

    sub_100006940(&qword_1000B88A8, &unk_1000868A0);
    v24._countAndFlagsBits = sub_100081338();
    sub_1000813B8(v24);

    v25._countAndFlagsBits = 10530;
    v25._object = 0xE200000000000000;
    sub_1000813B8(v25);
    v9 = v5;
LABEL_6:
    sub_10001A164(v9, v2);
    return v21;
  }

  v2 = *(v0 + OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft + 8);
  if (v2 >> 60 != 15)
  {
    v3 = (v0 + OBJC_IVAR___CRXCEnrollmentData_accPayloadRight);
    v4 = *(v0 + OBJC_IVAR___CRXCEnrollmentData_accPayloadRight + 8);
    if (v4 >> 60 != 15)
    {
      v11 = *(v0 + OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft);
      v12 = *v3;
      v19 = *v3;
      v20 = v11;
      sub_10001622C(v11, v2);
      sub_10001622C(v12, v4);
      sub_100081698(46);

      v21 = 0xD000000000000015;
      sub_10003D7BC(v11, v2);
      sub_100006940(&qword_1000B7530, &qword_100089380);
      sub_100006988();
      v13 = sub_100081248();
      v15 = v14;

      v26._countAndFlagsBits = v13;
      v26._object = v15;
      sub_1000813B8(v26);

      v27._countAndFlagsBits = 0x203A52636361202CLL;
      v27._object = 0xE800000000000000;
      sub_1000813B8(v27);
      sub_10003D7BC(v19, v4);
      v16 = sub_100081248();
      v18 = v17;

      v28._countAndFlagsBits = v16;
      v28._object = v18;
      sub_1000813B8(v28);

      v29._countAndFlagsBits = 0x203A656D616E202CLL;
      v29._object = 0xE900000000000022;
      sub_1000813B8(v29);

      sub_100006940(&qword_1000B88A8, &unk_1000868A0);
      v30._countAndFlagsBits = sub_100081338();
      sub_1000813B8(v30);

      v31._countAndFlagsBits = 10530;
      v31._object = 0xE200000000000000;
      sub_1000813B8(v31);
      sub_10001A164(v19, v4);
      v9 = v20;
      goto LABEL_6;
    }
  }

  return v1;
}

Swift::Void __swiftcall CRXCEnrollmentData.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR___CRXCEnrollmentData_accPayload);
  v5 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_accPayload + 8);
  if (v5 >> 60 != 15)
  {
    v6 = *v4;
    sub_10000D808(*v4, v5);
    isa = sub_100080CC8().super.isa;
    v8 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:isa forKey:v8];

    sub_10001A164(v6, v5);
  }

  v9 = (v2 + OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft);
  v10 = *(v2 + OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft + 8);
  if (v10 >> 60 != 15)
  {
    v11 = *v9;
    sub_10000D808(*v9, *(v2 + OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft + 8));
    v12 = sub_100080CC8().super.isa;
    v13 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];

    sub_10001A164(v11, v10);
  }

  v14 = (v2 + OBJC_IVAR___CRXCEnrollmentData_accPayloadRight);
  v15 = *(v2 + OBJC_IVAR___CRXCEnrollmentData_accPayloadRight + 8);
  if (v15 >> 60 != 15)
  {
    v16 = *v14;
    sub_10000D808(*v14, *(v2 + OBJC_IVAR___CRXCEnrollmentData_accPayloadRight + 8));
    v17 = sub_100080CC8().super.isa;
    v18 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

    sub_10001A164(v16, v15);
  }

  if (*(v2 + OBJC_IVAR___CRXCEnrollmentData_enrollmentName + 8))
  {
    v19 = sub_100081288();
    v20 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];
  }

  v21 = sub_100080D48().super.isa;
  v22 = sub_100081288();
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];

  if (*(v2 + OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft + 8))
  {
    v23 = sub_100081288();
    v24 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v23 forKey:v24];
  }

  if (*(v2 + OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight + 8))
  {
    v25 = sub_100081288();
    v26 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v25 forKey:v26];
  }
}

id CRXCEnrollmentData.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_100006940(&unk_1000B88B0, &qword_100086A40);
  __chkstk_darwin(v4 - 8, v5, v6);
  v8 = &v67 - v7;
  v9 = sub_100080D98();
  v10 = *(v9 - 8);
  v13 = __chkstk_darwin(v9, v11, v12);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16, v17);
  v19 = &v67 - v18;
  sub_10000DC18(0, &qword_1000B9C70, NSDate_ptr);
  v20 = sub_1000815E8();
  if (!v20 || (v21 = v20, (*(v10 + 56))(v8, 1, 1, v9), sub_10005DA4C(), sub_1000817F8(), v21, (*(v10 + 48))(v8, 1, v9) == 1))
  {

    type metadata accessor for CRXCEnrollmentData(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v23 = *(v10 + 32);
  v23(v15, v8, v9);
  v23(v19, v15, v9);
  (*(v10 + 16))(&v1[OBJC_IVAR___CRXCEnrollmentData_issueDate], v19, v9);
  v24 = sub_100081288();
  v25 = [a1 containsValueForKey:v24];

  if (v25 && (sub_10000DC18(0, &qword_1000B88D0, NSData_ptr), (v26 = sub_1000815E8()) != 0) && (v67 = xmmword_100084890, v27 = v26, sub_100080CE8(), v27, v28 = *(&v67 + 1), *(&v67 + 1) >> 60 != 15))
  {
    v29 = v67;
  }

  else
  {
    v29 = 0;
    v28 = 0xF000000000000000;
  }

  v30 = &v2[OBJC_IVAR___CRXCEnrollmentData_accPayload];
  *v30 = v29;
  *(v30 + 1) = v28;
  v31 = sub_100081288();
  v32 = [a1 containsValueForKey:v31];

  if (v32 && (sub_10000DC18(0, &qword_1000B88D0, NSData_ptr), (v33 = sub_1000815E8()) != 0) && (v67 = xmmword_100084890, v34 = v33, sub_100080CE8(), v34, v35 = *(&v67 + 1), *(&v67 + 1) >> 60 != 15))
  {
    v36 = v67;
  }

  else
  {
    v36 = 0;
    v35 = 0xF000000000000000;
  }

  v37 = &v2[OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft];
  *v37 = v36;
  *(v37 + 1) = v35;
  v38 = sub_100081288();
  v39 = [a1 containsValueForKey:v38];

  if (v39 && (sub_10000DC18(0, &qword_1000B88D0, NSData_ptr), (v40 = sub_1000815E8()) != 0) && (v67 = xmmword_100084890, v41 = v40, sub_100080CE8(), v41, v42 = *(&v67 + 1), *(&v67 + 1) >> 60 != 15))
  {
    v43 = v67;
  }

  else
  {
    v43 = 0;
    v42 = 0xF000000000000000;
  }

  v44 = &v2[OBJC_IVAR___CRXCEnrollmentData_accPayloadRight];
  *v44 = v43;
  *(v44 + 1) = v42;
  v45 = sub_100081288();
  v46 = [a1 containsValueForKey:v45];

  if (v46 && (sub_10000DC18(0, &qword_1000B8110, NSString_ptr), (v47 = sub_1000815E8()) != 0) && (v67 = 0uLL, v48 = v47, sub_1000812A8(), v48, (v49 = *(&v67 + 1)) != 0))
  {
    v50 = &v2[OBJC_IVAR___CRXCEnrollmentData_enrollmentName];
    *v50 = v67;
    *(v50 + 1) = v49;
  }

  else
  {
    v51 = &v2[OBJC_IVAR___CRXCEnrollmentData_enrollmentName];
    *v51 = 0;
    *(v51 + 1) = 0;
  }

  v52 = sub_100081288();
  v53 = [a1 containsValueForKey:v52];

  if (v53 && (sub_10000DC18(0, &qword_1000B8110, NSString_ptr), (v54 = sub_1000815E8()) != 0) && (v67 = 0uLL, v55 = v54, sub_1000812A8(), v55, (v56 = *(&v67 + 1)) != 0))
  {
    v57 = &v2[OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft];
    *v57 = v67;
    *(v57 + 1) = v56;
  }

  else
  {
    v58 = &v2[OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft];
    *v58 = 0;
    *(v58 + 1) = 0;
  }

  v59 = sub_100081288();
  v60 = [a1 containsValueForKey:v59];

  if (!v60)
  {
    (*(v10 + 8))(v19, v9);
LABEL_31:
    v64 = &v2[OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight];
    *v64 = 0;
    *(v64 + 1) = 0;
    goto LABEL_32;
  }

  sub_10000DC18(0, &qword_1000B8110, NSString_ptr);
  v61 = sub_1000815E8();
  (*(v10 + 8))(v19, v9);
  if (!v61)
  {
    goto LABEL_31;
  }

  v67 = 0uLL;
  sub_1000812A8();

  v62 = *(&v67 + 1);
  if (!*(&v67 + 1))
  {
    goto LABEL_31;
  }

  v63 = &v2[OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight];
  *v63 = v67;
  *(v63 + 1) = v62;
LABEL_32:
  v65 = type metadata accessor for CRXCEnrollmentData(0);
  v68.receiver = v2;
  v68.super_class = v65;
  v66 = objc_msgSendSuper2(&v68, "init");

  return v66;
}

id CRXCEnrollmentData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRXCEnrollmentData(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10005D728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v14.super.isa = sub_100080CC8().super.isa;
  if (a4)
  {
    v15 = sub_100081288();
  }

  else
  {
    v15 = 0;
  }

  v16.super.isa = sub_100080D48().super.isa;
  if (!a7)
  {
    v17 = 0;
    if (a9)
    {
      goto LABEL_6;
    }

LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  v17 = sub_100081288();

  if (!a9)
  {
    goto LABEL_8;
  }

LABEL_6:
  v18 = sub_100081288();

LABEL_9:
  v19 = [v10 initWithAccPayload:v14.super.isa accPayloadLeft:0 accPayloadRight:0 enrollmentName:v15 issueDate:v16.super.isa calibrationDataLeft:v17 calibrationDataRight:v18];

  v20 = sub_100080D98();
  (*(*(v20 - 8) + 8))(a5, v20);
  return v19;
}

id sub_10005D888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v15.super.isa = sub_100080CC8().super.isa;
  v16.super.isa = sub_100080CC8().super.isa;
  if (a6)
  {
    v17 = sub_100081288();
  }

  else
  {
    v17 = 0;
  }

  v18.super.isa = sub_100080D48().super.isa;
  if (!a9)
  {
    v19 = 0;
    if (a11)
    {
      goto LABEL_6;
    }

LABEL_8:
    v20 = 0;
    goto LABEL_9;
  }

  v19 = sub_100081288();

  if (!a11)
  {
    goto LABEL_8;
  }

LABEL_6:
  v20 = sub_100081288();

LABEL_9:
  v21 = [v12 initWithAccPayload:0 accPayloadLeft:v15.super.isa accPayloadRight:v16.super.isa enrollmentName:v17 issueDate:v18.super.isa calibrationDataLeft:v19 calibrationDataRight:v20];

  v22 = sub_100080D98();
  (*(*(v22 - 8) + 8))(a7, v22);
  return v21;
}

uint64_t type metadata accessor for CRXCEnrollmentData(uint64_t a1)
{
  result = qword_1000B8900;
  if (!qword_1000B8900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10005DA4C()
{
  result = qword_1000B88C0;
  if (!qword_1000B88C0)
  {
    sub_100080D98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B88C0);
  }

  return result;
}

uint64_t sub_10005DAAC(uint64_t a1)
{
  result = sub_100080D98();
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

uint64_t CRXCEnrollmentGroup.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x6D6574737973;
    }

    if (a1 == 3)
    {
      return 7958113;
    }
  }

  else
  {
    if (!a1)
    {
      return 1701736302;
    }

    if (a1 == 1)
    {
      return 1919251317;
    }
  }

  result = sub_1000818C8();
  __break(1u);
  return result;
}

uint64_t sub_10005DBF4(uint64_t a1)
{
  v2 = *v1;
  if (*v1 <= 1)
  {
    if (!v2)
    {
      return 1701736302;
    }

    if (v2 == 1)
    {
      return 1919251317;
    }

    goto LABEL_11;
  }

  if (v2 == 2)
  {
    return 0x6D6574737973;
  }

  if (v2 != 3)
  {
LABEL_11:
    result = sub_1000818C8();
    __break(1u);
    return result;
  }

  return 7958113;
}

unint64_t sub_10005DC98()
{
  result = qword_1000B8910;
  if (!qword_1000B8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8910);
  }

  return result;
}

uint64_t sub_10005DCFC(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 > 4)
    {
      if (a1 == 5)
      {
        return 0x7365742D74696E75;
      }

      if (a1 == 6)
      {
        return 0x79732D64756F6C63;
      }

      goto LABEL_18;
    }

    if (a1 == 3)
    {
      return 0x6E6961686379654BLL;
    }

    else
    {
      return 1819242356;
    }
  }

  else
  {
    if (a1 <= 0)
    {
      if (a1 == -1)
      {
        return 0x6E776F6E6B6E75;
      }

      if (!a1)
      {
        return 0x6E6163732D636361;
      }

LABEL_18:
      result = sub_1000818C8();
      __break(1u);
      return result;
    }

    if (a1 == 1)
    {
      return 0x6174536B63697551;
    }

    else
    {
      return 0x694B68746C616548;
    }
  }
}

uint64_t CRXCEnrollmentRecord.accPayload.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload);
  sub_10001622C(v1, *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload + 8));
  return v1;
}

uint64_t CRXCEnrollmentRecord.accPayloadLeft.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft);
  sub_10001622C(v1, *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft + 8));
  return v1;
}

Class sub_10005DF6C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 8);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = *v3;
    sub_10000D808(*v3, *(v3 + 8));
    isa = sub_100080CC8().super.isa;
    sub_10001A164(v6, v4);
    v5 = isa;
  }

  return v5;
}

uint64_t CRXCEnrollmentRecord.accPayloadRight.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight);
  sub_10001622C(v1, *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight + 8));
  return v1;
}

Class sub_10005E054(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100080D98();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1 + *a3, v5);
  v11.super.isa = sub_100080D48().super.isa;
  (*(v6 + 8))(v10, v5);

  return v11.super.isa;
}

uint64_t sub_10005E16C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_100080D98();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CRXCEnrollmentRecord.factoryCalibrationDataLeft.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft);

  return v1;
}

uint64_t CRXCEnrollmentRecord.factoryCalibrationDataRight.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight);

  return v1;
}

uint64_t CRXCEnrollmentRecord.serialNumber.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_serialNumber);

  return v1;
}

uint64_t CRXCEnrollmentRecord.userID.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_userID);

  return v1;
}

void *CRXCEnrollmentRecord.prescriptionOD.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOD);
  v2 = v1;
  return v1;
}

void *CRXCEnrollmentRecord.prescriptionOS.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOS);
  v2 = v1;
  return v1;
}

void *CRXCEnrollmentRecord.sphericalDiopterRange.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_sphericalDiopterRange);
  v2 = v1;
  return v1;
}

uint64_t CRXCEnrollmentRecord.isEqual(_:)(uint64_t a1)
{
  v3 = sub_100080D98();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5, v6);
  v8 = &v60[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100006940(&unk_1000B88B0, &qword_100086A40);
  __chkstk_darwin(v9 - 8, v10, v11);
  v13 = &v60[-v12];
  v14 = sub_100006940(&qword_1000B8930, &unk_100086A48);
  __chkstk_darwin(v14, v15, v16);
  v18 = &v60[-v17];
  sub_10001A8DC(a1, v66, &qword_1000B75E0, &qword_1000856D0);
  if (!v67)
  {
    v25 = &qword_1000B75E0;
    v26 = &qword_1000856D0;
    v27 = v66;
LABEL_8:
    sub_10001A80C(v27, v25, v26);
    goto LABEL_48;
  }

  v19 = type metadata accessor for CRXCEnrollmentRecord(0);
  if (swift_dynamicCast())
  {
    v20 = v65;
    v64.receiver = v1;
    v64.super_class = v19;
    if (!objc_msgSendSuper2(&v64, "isEqual:", v65))
    {
      goto LABEL_47;
    }

    v62 = v4;
    v63 = v20;
    v22 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_accPayload];
    v21 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_accPayload + 8];
    v23 = *&v20[OBJC_IVAR___CRXCEnrollmentRecord_accPayload];
    v24 = *&v20[OBJC_IVAR___CRXCEnrollmentRecord_accPayload + 8];
    if (v21 >> 60 == 15)
    {
      if (v24 >> 60 != 15)
      {
        goto LABEL_20;
      }

      sub_10001622C(v23, v24);
      sub_10001622C(v22, v21);
      sub_10001A164(v22, v21);
    }

    else
    {
      if (v24 >> 60 == 15)
      {
        goto LABEL_20;
      }

      sub_10001622C(v23, v24);
      sub_10001622C(v23, v24);
      sub_10001622C(v22, v21);
      v61 = sub_10000DAB0(v22, v21, v23, v24);
      sub_10001A164(v23, v24);
      sub_10001A164(v23, v24);
      sub_10001A164(v22, v21);
      if (!v61)
      {
        goto LABEL_79;
      }
    }

    v22 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft];
    v21 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft + 8];
    v23 = *&v63[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft];
    v24 = *&v63[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft + 8];
    if (v21 >> 60 == 15)
    {
      if (v24 >> 60 != 15)
      {
        goto LABEL_20;
      }

      sub_10001622C(v23, v24);
      sub_10001622C(v22, v21);
      sub_10001A164(v22, v21);
    }

    else
    {
      if (v24 >> 60 == 15)
      {
        goto LABEL_20;
      }

      sub_10001622C(v23, v24);
      sub_10001622C(v23, v24);
      sub_10001622C(v22, v21);
      v61 = sub_10000DAB0(v22, v21, v23, v24);
      sub_10001A164(v23, v24);
      sub_10001A164(v23, v24);
      sub_10001A164(v22, v21);
      if (!v61)
      {
        goto LABEL_79;
      }
    }

    v22 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight];
    v21 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight + 8];
    v23 = *&v63[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight];
    v24 = *&v63[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight + 8];
    if (v21 >> 60 == 15)
    {
      if (v24 >> 60 == 15)
      {
        sub_10001622C(v23, v24);
        sub_10001622C(v22, v21);
        sub_10001A164(v22, v21);
LABEL_22:
        v20 = v63;
        if ((sub_100080D68() & 1) == 0 || (sub_100080D68() & 1) == 0)
        {
          goto LABEL_47;
        }

        v28 = OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate;
        v29 = *(v14 + 48);
        sub_10001A8DC(&v1[OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate], v18, &unk_1000B88B0, &qword_100086A40);
        sub_10001A8DC(&v20[v28], &v18[v29], &unk_1000B88B0, &qword_100086A40);
        v30 = v62;
        v31 = *(v62 + 48);
        if (v31(v18, 1, v3) == 1)
        {
          if (v31(&v18[v29], 1, v3) == 1)
          {
            sub_10001A80C(v18, &unk_1000B88B0, &qword_100086A40);
LABEL_32:
            v34 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft + 8];
            v35 = *&v20[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft + 8];
            if (v34)
            {
              if (!v35 || (*&v1[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft] != *&v20[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft] || v34 != v35) && (sub_100081888() & 1) == 0)
              {
                goto LABEL_47;
              }
            }

            else if (v35)
            {
              goto LABEL_47;
            }

            v36 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight + 8];
            v37 = *&v20[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight + 8];
            if (v36)
            {
              if (!v37 || (*&v1[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight] != *&v20[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight] || v36 != v37) && (sub_100081888() & 1) == 0)
              {
                goto LABEL_47;
              }

              goto LABEL_46;
            }

            if (!v37)
            {
LABEL_46:
              if (v1[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrated] != v20[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrated])
              {
                goto LABEL_47;
              }

              v40 = v1;
              v41 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_serialNumber + 8];
              v42 = *&v20[OBJC_IVAR___CRXCEnrollmentRecord_serialNumber + 8];
              if (v41)
              {
                if (!v42 || (*&v1[OBJC_IVAR___CRXCEnrollmentRecord_serialNumber] != *&v20[OBJC_IVAR___CRXCEnrollmentRecord_serialNumber] || v41 != v42) && (sub_100081888() & 1) == 0)
                {
                  goto LABEL_79;
                }
              }

              else if (v42)
              {
                goto LABEL_79;
              }

              if (*&v1[OBJC_IVAR___CRXCEnrollmentRecord_lensType] == *&v63[OBJC_IVAR___CRXCEnrollmentRecord_lensType])
              {
                v43 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_userID + 8];
                v44 = *&v63[OBJC_IVAR___CRXCEnrollmentRecord_userID + 8];
                if (v43)
                {
                  if (!v44 || (*&v1[OBJC_IVAR___CRXCEnrollmentRecord_userID] != *&v63[OBJC_IVAR___CRXCEnrollmentRecord_userID] || v43 != v44) && (sub_100081888() & 1) == 0)
                  {
                    goto LABEL_79;
                  }
                }

                else if (v44)
                {
                  goto LABEL_79;
                }

                if (*&v1[OBJC_IVAR___CRXCEnrollmentRecord_source] == *&v63[OBJC_IVAR___CRXCEnrollmentRecord_source])
                {
                  v45 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOD];
                  v46 = *&v63[OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOD];
                  if (v45)
                  {
                    if (!v46)
                    {
                      goto LABEL_79;
                    }

                    type metadata accessor for CRXCPrescriptionValues();
                    v47 = v46;
                    v48 = v45;
                    v49 = sub_1000815F8();

                    if ((v49 & 1) == 0)
                    {
                      goto LABEL_79;
                    }
                  }

                  else if (v46)
                  {
                    goto LABEL_79;
                  }

                  v50 = *&v40[OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOS];
                  v51 = *&v63[OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOS];
                  if (v50)
                  {
                    if (!v51)
                    {
                      goto LABEL_79;
                    }

                    type metadata accessor for CRXCPrescriptionValues();
                    v52 = v51;
                    v53 = v50;
                    v54 = sub_1000815F8();

                    if ((v54 & 1) == 0)
                    {
                      goto LABEL_79;
                    }

LABEL_76:
                    v55 = *&v40[OBJC_IVAR___CRXCEnrollmentRecord_sphericalDiopterRange];
                    v56 = *&v63[OBJC_IVAR___CRXCEnrollmentRecord_sphericalDiopterRange];
                    if (!v55)
                    {
                      v59 = v56;

                      if (!v56)
                      {
                        v38 = 1;
                        return v38 & 1;
                      }

                      goto LABEL_48;
                    }

                    if (v56)
                    {
                      type metadata accessor for CRXCDiopterRange();
                      v57 = v56;
                      v58 = v55;
                      v38 = sub_1000815F8();

                      return v38 & 1;
                    }

                    goto LABEL_79;
                  }

                  if (!v51)
                  {
                    goto LABEL_76;
                  }
                }
              }

LABEL_79:

              goto LABEL_48;
            }

LABEL_47:

            goto LABEL_48;
          }
        }

        else
        {
          sub_10001A8DC(v18, v13, &unk_1000B88B0, &qword_100086A40);
          if (v31(&v18[v29], 1, v3) != 1)
          {
            (*(v30 + 32))(v8, &v18[v29], v3);
            sub_100061408(&qword_1000B8938, &protocol conformance descriptor for Date);
            v32 = sub_100081258();
            v33 = *(v30 + 8);
            v33(v8, v3);
            v33(v13, v3);
            sub_10001A80C(v18, &unk_1000B88B0, &qword_100086A40);
            if ((v32 & 1) == 0)
            {
              goto LABEL_47;
            }

            goto LABEL_32;
          }

          (*(v30 + 8))(v13, v3);
        }

        v25 = &qword_1000B8930;
        v26 = &unk_100086A48;
        v27 = v18;
        goto LABEL_8;
      }
    }

    else if (v24 >> 60 != 15)
    {
      sub_10001622C(v23, v24);
      sub_10001622C(v23, v24);
      sub_10001622C(v22, v21);
      v61 = sub_10000DAB0(v22, v21, v23, v24);
      sub_10001A164(v23, v24);
      sub_10001A164(v23, v24);
      sub_10001A164(v22, v21);
      if (!v61)
      {
        goto LABEL_79;
      }

      goto LABEL_22;
    }

LABEL_20:
    sub_10001622C(v23, v24);
    sub_10001622C(v22, v21);

    sub_10001A164(v22, v21);
    sub_10001A164(v23, v24);
  }

LABEL_48:
  v38 = 0;
  return v38 & 1;
}

uint64_t type metadata accessor for CRXCEnrollmentRecord(uint64_t a1)
{
  result = qword_1000B8978;
  if (!qword_1000B8978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CRXCEnrollmentRecord.description.getter()
{
  sub_100081698(188);
  v18._countAndFlagsBits = 0xD000000000000017;
  v18._object = 0x80000001000952B0;
  sub_1000813B8(v18);
  sub_1000813B8(*(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_uuid));
  v19._countAndFlagsBits = 0x203A656D616E202CLL;
  v19._object = 0xE900000000000022;
  sub_1000813B8(v19);
  sub_1000813B8(*(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentName));
  v20._countAndFlagsBits = 0x70756F7267202C22;
  v20._object = 0xEA0000000000203ALL;
  sub_1000813B8(v20);
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentGroup);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 0xE600000000000000;
      v3._countAndFlagsBits = 0x6D6574737973;
    }

    else
    {
      if (v1 != 3)
      {
        goto LABEL_38;
      }

      v2 = 0xE300000000000000;
      v3._countAndFlagsBits = 7958113;
    }
  }

  else if (v1)
  {
    if (v1 != 1)
    {
      goto LABEL_38;
    }

    v2 = 0xE400000000000000;
    v3._countAndFlagsBits = 1919251317;
  }

  else
  {
    v2 = 0xE400000000000000;
    v3._countAndFlagsBits = 1701736302;
  }

  v3._object = v2;
  sub_1000813B8(v3);

  v21._countAndFlagsBits = 0x3A726F6C6F63202CLL;
  v21._object = 0xE900000000000020;
  sub_1000813B8(v21);
  v22._countAndFlagsBits = sub_100081848();
  sub_1000813B8(v22);

  v23._countAndFlagsBits = 0x656C65537369202CLL;
  v23._object = 0xEE00203A64657463;
  sub_1000813B8(v23);
  if (*(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_isSelected))
  {
    v4._countAndFlagsBits = 1702195828;
  }

  else
  {
    v4._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_isSelected))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v4._object = v5;
  sub_1000813B8(v4);

  v24._countAndFlagsBits = 0x446575737369202CLL;
  v24._object = 0xED0000203A657461;
  sub_1000813B8(v24);
  sub_100080D98();
  sub_100061408(&qword_1000B8940, &protocol conformance descriptor for Date);
  v25._countAndFlagsBits = sub_100081848();
  sub_1000813B8(v25);

  v26._countAndFlagsBits = 0xD000000000000015;
  v26._object = 0x80000001000952D0;
  sub_1000813B8(v26);
  if (*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrated))
  {
    v6._countAndFlagsBits = 1702195828;
  }

  else
  {
    v6._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrated))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v6._object = v7;
  sub_1000813B8(v6);

  v27._object = 0x80000001000952F0;
  v27._countAndFlagsBits = 0xD000000000000011;
  sub_1000813B8(v27);
  if (*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_serialNumber + 8))
  {
    v8 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_serialNumber);
    v9 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_serialNumber + 8);
  }

  else
  {
    v8 = 7104878;
    v9 = 0xE300000000000000;
  }

  v28._countAndFlagsBits = v8;
  v28._object = v9;
  sub_1000813B8(v28);

  v29._countAndFlagsBits = 0x54736E656C202C22;
  v29._object = 0xED0000203A657079;
  sub_1000813B8(v29);
  v10 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_lensType);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = 0xE900000000000072;
      v12._countAndFlagsBits = 0x65706F6C65766564;
      goto LABEL_34;
    }

    if (v10 == 3)
    {
      v11 = 0xE800000000000000;
      v12._countAndFlagsBits = 0x6C616E6F73726570;
      goto LABEL_34;
    }

LABEL_38:
    result = sub_1000818C8();
    __break(1u);
    return result;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 0xE600000000000000;
      v12._countAndFlagsBits = 0x726564616572;
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  v11 = 0xE400000000000000;
  v12._countAndFlagsBits = 1869440356;
LABEL_34:
  v12._object = v11;
  sub_1000813B8(v12);

  v30._countAndFlagsBits = 0x444972657375202CLL;
  v30._object = 0xEA0000000000203ALL;
  sub_1000813B8(v30);
  if (*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_userID + 8))
  {
    v13 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_userID);
    v14 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_userID + 8);
  }

  else
  {
    v13 = 7104878;
    v14 = 0xE300000000000000;
  }

  v31._countAndFlagsBits = v13;
  v31._object = v14;
  sub_1000813B8(v31);

  v32._countAndFlagsBits = 0x656372756F73202CLL;
  v32._object = 0xEA0000000000203ALL;
  sub_1000813B8(v32);
  v33._countAndFlagsBits = sub_10005DCFC(*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_source));
  sub_1000813B8(v33);

  v34._countAndFlagsBits = 0x203A444F202CLL;
  v34._object = 0xE600000000000000;
  sub_1000813B8(v34);
  v15 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOD);
  sub_100006940(&qword_1000B8948, &qword_100086A58);
  v35._countAndFlagsBits = sub_100081338();
  sub_1000813B8(v35);

  v36._countAndFlagsBits = 0x203A534F202CLL;
  v36._object = 0xE600000000000000;
  sub_1000813B8(v36);
  v16 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOS);
  v37._countAndFlagsBits = sub_100081338();
  sub_1000813B8(v37);

  v38._countAndFlagsBits = 41;
  v38._object = 0xE100000000000000;
  sub_1000813B8(v38);
  return 0;
}

Swift::Void __swiftcall CRXCEnrollmentRecord.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = sub_100006940(&unk_1000B88B0, &qword_100086A40);
  __chkstk_darwin(v4 - 8, v5, v6);
  v8 = &v59 - v7;
  v9 = sub_100080D98();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11, v12);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v1 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload);
  v16 = *(v1 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload + 8);
  if (v16 >> 60 != 15)
  {
    v17 = *v15;
    sub_10000D808(*v15, v16);
    isa = sub_100080CC8().super.isa;
    v19 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:isa forKey:v19];

    sub_10001A164(v17, v16);
  }

  v20 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft);
  v21 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft + 8);
  if (v21 >> 60 != 15)
  {
    v22 = *v20;
    sub_10000D808(*v20, *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft + 8));
    v23 = sub_100080CC8().super.isa;
    v24 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v23 forKey:v24];

    sub_10001A164(v22, v21);
  }

  v25 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight);
  v26 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight + 8);
  if (v26 >> 60 != 15)
  {
    v27 = *v25;
    sub_10000D808(*v25, *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight + 8));
    v28 = sub_100080CC8().super.isa;
    v29 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v28 forKey:v29];

    sub_10001A164(v27, v26);
  }

  v30 = sub_100080D48().super.isa;
  v31 = sub_100081288();
  [(objc_class *)with.super.isa encodeObject:v30 forKey:v31];

  v32 = sub_100080D48().super.isa;
  v33 = sub_100081288();
  [(objc_class *)with.super.isa encodeObject:v32 forKey:v33];

  sub_10001A8DC(v2 + OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate, v8, &unk_1000B88B0, &qword_100086A40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10001A80C(v8, &unk_1000B88B0, &qword_100086A40);
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    v34 = sub_100080D48().super.isa;
    v35 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v34 forKey:v35];

    (*(v10 + 8))(v14, v9);
  }

  if (*(v2 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft + 8))
  {
    v36 = sub_100081288();
    v37 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v36 forKey:v37];
  }

  if (*(v2 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight + 8))
  {
    v38 = sub_100081288();
    v39 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v38 forKey:v39];
  }

  v40 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrated);
  v41 = sub_100081288();
  [(objc_class *)with.super.isa encodeBool:v40 forKey:v41];

  if (*(v2 + OBJC_IVAR___CRXCEnrollmentRecord_serialNumber + 8))
  {
    v42 = sub_100081288();
    v43 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v42 forKey:v43];
  }

  v44 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_lensType);
  v45 = sub_100081288();
  [(objc_class *)with.super.isa encodeInteger:v44 forKey:v45];

  if (*(v2 + OBJC_IVAR___CRXCEnrollmentRecord_userID + 8))
  {
    v46 = sub_100081288();
    v47 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v46 forKey:v47];
  }

  v48 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_source);
  v49 = sub_100081288();
  [(objc_class *)with.super.isa encodeInteger:v48 forKey:v49];

  v50 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOD);
  if (v50)
  {
    v51 = v50;
    v52 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v51 forKey:v52];
  }

  v53 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOS);
  if (v53)
  {
    v54 = v53;
    v55 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v54 forKey:v55];
  }

  v56 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_sphericalDiopterRange);
  if (v56)
  {
    v57 = v56;
    v58 = sub_100081288();
    [(objc_class *)with.super.isa encodeObject:v57 forKey:v58];
  }

  CRXCEnrollmentBriefRecord.encode(with:)(with);
}

id CRXCEnrollmentRecord.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_100006940(&unk_1000B88B0, &qword_100086A40);
  v7 = __chkstk_darwin(v4 - 8, v5, v6);
  v153 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v7, v9, v10);
  v156 = (&v147 - v12);
  __chkstk_darwin(v11, v13, v14);
  v16 = &v147 - v15;
  v17 = sub_100080D98();
  v18 = *(v17 - 8);
  v21 = __chkstk_darwin(v17, v19, v20);
  v151 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v21, v23, v24);
  v152 = &v147 - v26;
  v29 = __chkstk_darwin(v25, v27, v28);
  v154 = &v147 - v30;
  v33 = __chkstk_darwin(v29, v31, v32);
  v155 = &v147 - v34;
  v37 = __chkstk_darwin(v33, v35, v36);
  v39 = &v147 - v38;
  __chkstk_darwin(v37, v40, v41);
  v157 = &v147 - v42;
  v43 = sub_100081288();
  v44 = [a1 containsValueForKey:v43];

  if (v44 && (sub_10000DC18(0, &qword_1000B88D0, NSData_ptr), (v45 = sub_1000815E8()) != 0) && (v159 = xmmword_100084890, v46 = v45, sub_100080CE8(), v46, v47 = *(&v159 + 1), *(&v159 + 1) >> 60 != 15))
  {
    v48 = v159;
  }

  else
  {
    v48 = 0;
    v47 = 0xF000000000000000;
  }

  v49 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload);
  *v49 = v48;
  v49[1] = v47;
  v50 = sub_100081288();
  v51 = [a1 containsValueForKey:v50];

  if (v51 && (sub_10000DC18(0, &qword_1000B88D0, NSData_ptr), (v52 = sub_1000815E8()) != 0) && (v159 = xmmword_100084890, v53 = v52, sub_100080CE8(), v53, v54 = *(&v159 + 1), *(&v159 + 1) >> 60 != 15))
  {
    v55 = v159;
  }

  else
  {
    v55 = 0;
    v54 = 0xF000000000000000;
  }

  v56 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft);
  *v56 = v55;
  v56[1] = v54;
  v57 = sub_100081288();
  v58 = [a1 containsValueForKey:v57];

  v158 = v18;
  if (v58 && (sub_10000DC18(0, &qword_1000B88D0, NSData_ptr), (v59 = sub_1000815E8()) != 0) && (v159 = xmmword_100084890, v60 = v59, sub_100080CE8(), v60, v61 = *(&v159 + 1), *(&v159 + 1) >> 60 != 15))
  {
    v62 = v159;
  }

  else
  {
    v62 = 0;
    v61 = 0xF000000000000000;
  }

  v63 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight);
  *v63 = v62;
  v63[1] = v61;
  v64 = sub_100081288();
  v65 = [a1 containsValueForKey:v64];

  if (v65 && (sub_10000DC18(0, &qword_1000B9C70, NSDate_ptr), (v66 = sub_1000815E8()) != 0) && (v67 = v66, v68 = v158, v69 = *(v158 + 56), (v69)(v16, 1, 1, v17), sub_100061408(&qword_1000B88C0, &protocol conformance descriptor for Date), sub_1000817F8(), v67, (*(v68 + 48))(v16, 1, v17) != 1))
  {
    v123 = v17;
    v124 = *(v158 + 32);
    v124(v39, v16, v123);
    v125 = v157;
    v124(v157, v39, v123);
    v126 = OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate;
    v124((v2 + OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate), v125, v123);
    v17 = v123;
    (v69)(v2 + v126, 0, 1, v123);
    v70 = v158;
    v71 = v69;
  }

  else
  {
    v70 = v158;
    v71 = *(v158 + 56);
    v71(v2 + OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate, 1, 1, v17);
  }

  v72 = sub_100081288();
  v73 = [a1 containsValueForKey:v72];

  if (v73 && (sub_10000DC18(0, &qword_1000B8110, NSString_ptr), (v74 = sub_1000815E8()) != 0) && (v159 = 0uLL, v75 = v74, sub_1000812A8(), v75, (v76 = *(&v159 + 1)) != 0))
  {
    v77 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft);
    *v77 = v159;
    v77[1] = v76;
  }

  else
  {
    v78 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft);
    *v78 = 0;
    v78[1] = 0;
  }

  v79 = sub_100081288();
  v80 = [a1 containsValueForKey:v79];

  if (v80 && (sub_10000DC18(0, &qword_1000B8110, NSString_ptr), (v81 = sub_1000815E8()) != 0) && (v159 = 0uLL, v82 = v81, sub_1000812A8(), v82, (v83 = *(&v159 + 1)) != 0))
  {
    v84 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight);
    *v84 = v159;
    v84[1] = v83;
  }

  else
  {
    v85 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight);
    *v85 = 0;
    v85[1] = 0;
  }

  v86 = sub_100081288();
  v87 = [a1 containsValueForKey:v86];

  if (v87 && (sub_10000DC18(0, &qword_1000B8110, NSString_ptr), (v88 = sub_1000815E8()) != 0) && (v159 = 0uLL, v89 = v88, sub_1000812A8(), v89, (v90 = *(&v159 + 1)) != 0))
  {
    v91 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_serialNumber);
    *v91 = v159;
    v91[1] = v90;
  }

  else
  {
    v92 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_serialNumber);
    *v92 = 0;
    v92[1] = 0;
  }

  v93 = sub_100081288();
  v94 = [a1 containsValueForKey:v93];

  if (v94 && (sub_10000DC18(0, &qword_1000B8110, NSString_ptr), (v95 = sub_1000815E8()) != 0) && (v159 = 0uLL, v96 = v95, sub_1000812A8(), v96, (v97 = *(&v159 + 1)) != 0))
  {
    v98 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_userID);
    *v98 = v159;
    v98[1] = v97;
  }

  else
  {
    v99 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_userID);
    *v99 = 0;
    v99[1] = 0;
  }

  v100 = sub_100081288();
  v101 = [a1 containsValueForKey:v100];

  if (!v101 || (type metadata accessor for CRXCPrescriptionValues(), (v102 = sub_1000815E8()) == 0))
  {
    v102 = 0;
  }

  *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOD) = v102;
  v103 = sub_100081288();
  v104 = [a1 containsValueForKey:v103];

  if (!v104 || (type metadata accessor for CRXCPrescriptionValues(), (v105 = sub_1000815E8()) == 0))
  {
    v105 = 0;
  }

  v157 = v71;
  *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOS) = v105;
  v106 = sub_100081288();
  v107 = [a1 containsValueForKey:v106];

  if (!v107 || (type metadata accessor for CRXCDiopterRange(), (v108 = sub_1000815E8()) == 0))
  {
    v108 = 0;
  }

  *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_sphericalDiopterRange) = v108;
  v109 = sub_100081288();
  v110 = [a1 decodeBoolForKey:v109];

  *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrated) = v110;
  sub_10000DC18(0, &qword_1000B9C70, NSDate_ptr);
  v111 = sub_1000815E8();
  if (v111 && (v112 = v111, v113 = v156, v150 = v70 + 7, (v157)(v156, 1, 1, v17), v114 = sub_100061408(&qword_1000B88C0, &protocol conformance descriptor for Date), sub_1000817F8(), v112, v115 = v70[6], v115(v113, 1, v17) != 1))
  {
    v148 = v115;
    v149 = v114;
    v117 = v70[4];
    v118 = v154;
    v117(v154, v113, v17);
    v119 = v155;
    v156 = v117;
    v117(v155, v118, v17);
    v120 = sub_1000815E8();
    if (v120)
    {
      v121 = v120;
      v122 = v153;
      (v157)(v153, 1, 1, v17);
      sub_1000817F8();

      if (v148(v122, 1, v17) == 1)
      {
        v70 = v158;
        (*(v158 + 8))(v155, v17);

        v116 = 0;
      }

      else
      {
        v127 = v151;
        v128 = v156;
        v156(v151, v122, v17);
        v129 = v152;
        v128(v152, v127, v17);
        v70 = v158;
        v130 = *(v158 + 16);
        v131 = v155;
        v130(v2 + OBJC_IVAR___CRXCEnrollmentRecord_issueDate, v155, v17);
        v132 = v17;
        v130(v2 + OBJC_IVAR___CRXCEnrollmentRecord_enrollmentDate, v129, v17);
        v133 = sub_100081288();
        v134 = [a1 decodeIntegerForKey:v133];

        v135 = sub_100081288();
        v136 = [a1 decodeIntegerForKey:v135];

        v137 = sub_10000DD38(v134);
        if ((v138 & 1) == 0)
        {
          v139 = v137;
          v140 = sub_100061778(v136);
          if ((v141 & 1) == 0)
          {
            *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_lensType) = v139;
            *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_source) = v140;
            v145 = CRXCEnrollmentBriefRecord.init(coder:)(a1);
            v146 = v70[1];
            v146(v129, v17);
            v146(v131, v17);
            return v145;
          }
        }

        v142 = v70[1];
        v142(v129, v132);
        v142(v131, v132);
        v17 = v132;
        v116 = 1;
      }
    }

    else
    {
      (v70[1])(v119, v17);

      v116 = 0;
    }
  }

  else
  {

    v116 = 0;
  }

  sub_10001A164(*(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload), *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload + 8));
  sub_10001A164(*(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft), *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft + 8));
  sub_10001A164(*(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight), *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight + 8));
  if (v116)
  {
    v143 = v70[1];
    v143(v2 + OBJC_IVAR___CRXCEnrollmentRecord_issueDate, v17);
    v143(v2 + OBJC_IVAR___CRXCEnrollmentRecord_enrollmentDate, v17);
  }

  sub_10001A80C(v2 + OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate, &unk_1000B88B0, &qword_100086A40);

  type metadata accessor for CRXCEnrollmentRecord(0);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_100060CE8()
{
  sub_10001A164(*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload), *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload + 8));
  sub_10001A164(*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft), *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft + 8));
  sub_10001A164(*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight), *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight + 8));
  v1 = OBJC_IVAR___CRXCEnrollmentRecord_issueDate;
  v2 = sub_100080D98();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR___CRXCEnrollmentRecord_enrollmentDate, v2);
  sub_10001A80C(v0 + OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate, &unk_1000B88B0, &qword_100086A40);

  v4 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_sphericalDiopterRange);
}

id CRXCEnrollmentRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRXCEnrollmentRecord(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

id _s23CorePrescriptionService20CRXCEnrollmentRecordC5emptyACyFZ_0()
{
  v0 = sub_100006940(&unk_1000B88B0, &qword_100086A40);
  __chkstk_darwin(v0 - 8, v1, v2);
  v4 = &v37 - v3;
  v5 = sub_100080D98();
  v6 = *(v5 - 8);
  v9 = __chkstk_darwin(v5, v7, v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12, v13);
  v15 = &v37 - v14;
  v16 = sub_100080DC8();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18, v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100080DB8();
  v22 = sub_100080DA8();
  v24 = v23;
  (*(v17 + 8))(v21, v16);
  sub_100080D88();
  sub_100080D88();
  (*(v6 + 56))(v4, 1, 1, v5);
  v25 = objc_allocWithZone(type metadata accessor for CRXCEnrollmentRecord(0));
  *&v25[OBJC_IVAR___CRXCEnrollmentRecord_accPayload] = xmmword_100084890;
  *&v25[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft] = xmmword_100084890;
  *&v25[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight] = xmmword_100084890;
  v26 = *(v6 + 16);
  v26(&v25[OBJC_IVAR___CRXCEnrollmentRecord_issueDate], v15, v5);
  v26(&v25[OBJC_IVAR___CRXCEnrollmentRecord_enrollmentDate], v11, v5);
  sub_10001A8DC(v4, &v25[OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate], &unk_1000B88B0, &qword_100086A40);
  v27 = &v25[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v25[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight];
  *v28 = 0;
  v28[1] = 0;
  v25[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrated] = 0;
  v29 = &v25[OBJC_IVAR___CRXCEnrollmentRecord_serialNumber];
  *v29 = 0;
  v29[1] = 0;
  *&v25[OBJC_IVAR___CRXCEnrollmentRecord_lensType] = 0;
  v30 = &v25[OBJC_IVAR___CRXCEnrollmentRecord_userID];
  *v30 = 0;
  v30[1] = 0;
  *&v25[OBJC_IVAR___CRXCEnrollmentRecord_source] = -1;
  *&v25[OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOD] = 0;
  *&v25[OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOS] = 0;
  *&v25[OBJC_IVAR___CRXCEnrollmentRecord_sphericalDiopterRange] = 0;
  v31 = &v25[OBJC_IVAR___CRXCEnrollmentBriefRecord_uuid];
  *v31 = v22;
  v31[1] = v24;
  v32 = &v25[OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentName];
  *v32 = 0;
  v32[1] = 0xE000000000000000;
  *&v25[OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentGroup] = 0;
  *&v25[OBJC_IVAR___CRXCEnrollmentBriefRecord_identifyingColor] = 0;
  v25[OBJC_IVAR___CRXCEnrollmentBriefRecord_isSelected] = 0;
  v33 = type metadata accessor for CRXCEnrollmentBriefRecord();
  v37.receiver = v25;
  v37.super_class = v33;
  v34 = objc_msgSendSuper2(&v37, "init");
  sub_10001A80C(v4, &unk_1000B88B0, &qword_100086A40);
  v35 = *(v6 + 8);
  v35(v11, v5);
  v35(v15, v5);
  return v34;
}

uint64_t sub_100061408(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100080D98();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100061454(uint64_t a1)
{
  sub_100080D98();
  if (v1 <= 0x3F)
  {
    sub_100061564(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100061564(uint64_t a1)
{
  if (!qword_1000B8988)
  {
    sub_100080D98();
    v1 = sub_100081628();
    if (!v2)
    {
      atomic_store(v1, &qword_1000B8988);
    }
  }
}

uint64_t CRXCEnrollmentSource.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 > 4)
    {
      if (a1 == 5)
      {
        return 0x7365742D74696E75;
      }

      if (a1 == 6)
      {
        return 0x79732D64756F6C63;
      }

      goto LABEL_18;
    }

    if (a1 == 3)
    {
      return 0x6E6961686379654BLL;
    }

    else
    {
      return 1819242356;
    }
  }

  else
  {
    if (a1 <= 0)
    {
      if (a1 == -1)
      {
        return 0x6E776F6E6B6E75;
      }

      if (!a1)
      {
        return 0x6E6163732D636361;
      }

LABEL_18:
      result = sub_1000818C8();
      __break(1u);
      return result;
    }

    if (a1 == 1)
    {
      return 0x6174536B63697551;
    }

    else
    {
      return 0x694B68746C616548;
    }
  }
}

uint64_t sub_10006173C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100061778(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100061778(uint64_t result)
{
  if ((result + 1) >= 8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100061794()
{
  result = qword_1000B8990;
  if (!qword_1000B8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8990);
  }

  return result;
}

id CRXCEyePrescription.__allocating_init(sphere:cylinder:axis:vrAdd:)(uint64_t a1, float a2, float a3, float a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___CRXCEyePrescription_sphere];
  *&v9[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v11 = &v9[OBJC_IVAR___CRXCEyePrescription_cylinder];
  *&v9[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v12 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v9[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v13 = &v9[OBJC_IVAR___CRXCEyePrescription_vrAdd];
  *&v9[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *v10 = a2;
  swift_beginAccess();
  *v11 = a3;
  swift_beginAccess();
  *&v9[v12] = a1;
  swift_beginAccess();
  *v13 = a4;
  v15.receiver = v9;
  v15.super_class = v4;
  return objc_msgSendSuper2(&v15, "init");
}

float CRXCEyePrescription.sphere.getter()
{
  v1 = v0 + OBJC_IVAR___CRXCEyePrescription_sphere;
  swift_beginAccess();
  return *v1;
}

void CRXCEyePrescription.sphere.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR___CRXCEyePrescription_sphere);
  swift_beginAccess();
  *v3 = a1;
}

float CRXCEyePrescription.cylinder.getter()
{
  v1 = v0 + OBJC_IVAR___CRXCEyePrescription_cylinder;
  swift_beginAccess();
  return *v1;
}

void CRXCEyePrescription.cylinder.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR___CRXCEyePrescription_cylinder);
  swift_beginAccess();
  *v3 = a1;
}

uint64_t CRXCEyePrescription.axis.getter()
{
  v1 = OBJC_IVAR___CRXCEyePrescription_axis;
  swift_beginAccess();
  return *(v0 + v1);
}

void CRXCEyePrescription.axis.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCEyePrescription_axis;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

float CRXCEyePrescription.vrAdd.getter()
{
  v1 = v0 + OBJC_IVAR___CRXCEyePrescription_vrAdd;
  swift_beginAccess();
  return *v1;
}

void CRXCEyePrescription.vrAdd.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR___CRXCEyePrescription_vrAdd);
  swift_beginAccess();
  *v3 = a1;
}

id CRXCEyePrescription.init(sphere:cylinder:axis:vrAdd:)(uint64_t a1, float a2, float a3, float a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR___CRXCEyePrescription_sphere];
  *&v4[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v11 = &v4[OBJC_IVAR___CRXCEyePrescription_cylinder];
  *&v4[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v12 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v4[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v13 = &v4[OBJC_IVAR___CRXCEyePrescription_vrAdd];
  *&v4[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *v10 = a2;
  swift_beginAccess();
  *v11 = a3;
  swift_beginAccess();
  *&v4[v12] = a1;
  swift_beginAccess();
  *v13 = a4;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "init");
}