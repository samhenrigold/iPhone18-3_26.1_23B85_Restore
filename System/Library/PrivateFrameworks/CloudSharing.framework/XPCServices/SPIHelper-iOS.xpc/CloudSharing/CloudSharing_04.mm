uint64_t sub_100076650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 152) = v14;
  *(v8 + 160) = v15;
  *(v8 + 60) = v13;
  *(v8 + 59) = v12;
  *(v8 + 58) = a8;
  *(v8 + 136) = a6;
  *(v8 + 144) = a7;
  *(v8 + 128) = a5;
  v9 = sub_10009D9F0();
  *(v8 + 168) = v9;
  *(v8 + 176) = *(v9 - 8);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = sub_10009DF10();
  *(v8 + 248) = sub_10009DF00();

  return _swift_task_switch(sub_1000767B8, 0, 0);
}

uint64_t sub_1000767B8(uint64_t a1)
{
  *(v1 + 256) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100076844, v3, v2);
}

uint64_t sub_100076844()
{
  v1 = v0[16];
  v2 = v0[17];

  v0[33] = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[34] = v3;
  *v3 = v0;
  v3[1] = sub_100076910;
  v4 = v0[16];
  if (v2 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  return sub_100048CBC(v5, v4, 0);
}

uint64_t sub_100076910()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_100076CA8;
  }

  else
  {

    v2 = sub_100076A2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100076A2C(uint64_t a1)
{
  *(v1 + 288) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100076AB8, v3, v2);
}

uint64_t sub_100076AB8()
{
  v1 = v0[18];
  v2 = v0[16];

  v0[37] = *(v2 + 16);

  v3 = swift_task_alloc();
  v0[38] = v3;
  *v3 = v0;
  v3[1] = sub_100076B8C;
  v4 = v0[16];
  if (v1 == 3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  return sub_100049714(v5, v4, 0, 1);
}

uint64_t sub_100076B8C()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_100077258;
  }

  else
  {

    v2 = sub_100076D34;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100076CA8()
{
  *(v0 + 368) = *(v0 + 280);

  v2 = sub_10009DED0();

  return _swift_task_switch(sub_1000772E4, v2, v1);
}

uint64_t sub_100076D34(uint64_t a1)
{
  *(v1 + 320) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100076DC0, v3, v2);
}

uint64_t sub_100076DC0()
{
  v1 = *(v0 + 58);

  if (v1)
  {
    v2 = &off_1000C1BE0;
  }

  else
  {
    v2 = &off_1000C1C08;
  }

  sub_100047B6C(v2);
  v2, v3, v4, v5, v6, v7, v8, v9;

  return _swift_task_switch(sub_100076E6C, 0, 0);
}

uint64_t sub_100076E6C(uint64_t a1)
{
  *(v1 + 328) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100076EF8, v3, v2);
}

uint64_t sub_100076EF8()
{
  v1 = *(v0 + 128);

  *(v0 + 336) = *(v1 + 16);

  return _swift_task_switch(sub_100076F74, 0, 0);
}

uint64_t sub_100076F74(uint64_t a1)
{
  *(v1 + 344) = sub_10009DF00();
  v3 = sub_10009DED0();

  return _swift_task_switch(sub_100077000, v3, v2);
}

uint64_t sub_100077000()
{
  v1 = *(v0 + 59);

  sub_10004A3E0(v1);

  v3 = sub_10009DED0();
  *(v0 + 352) = v3;
  *(v0 + 360) = v2;

  return _swift_task_switch(sub_1000770A4, v3, v2);
}

uint64_t sub_1000770A4()
{
  if (*(v0 + 60))
  {
    v1 = swift_task_alloc();
    *(v0 + 392) = v1;
    *v1 = v0;
    v1[1] = sub_100077F3C;

    return sub_100026F78();
  }

  else
  {
    v3 = *(v0 + 128);

    v4 = sub_10004834C();

    v5 = *(*(v3 + 16) + OBJC_IVAR____TtC13SPIHelper_iOS12OptionsModel_allowAccessRequestsSPIOverride);
    if (v5 == 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_10009DAF0();

      LOBYTE(v5) = *(v0 + 57);
    }

    v6 = swift_task_alloc();
    *(v0 + 376) = v6;
    *v6 = v0;
    v6[1] = sub_10007785C;

    return sub_100023A48(v4 & 1, v5 & 1);
  }
}

uint64_t sub_100077258()
{
  *(v0 + 368) = *(v0 + 312);

  v2 = sub_10009DED0();

  return _swift_task_switch(sub_1000772E4, v2, v1);
}

void sub_1000772E4()
{
  v73 = v0;
  v1 = v0;
  *(v0 + 112) = *(v0 + 368);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    sub_10009D9D0();
    sub_100032380(v2, v3, v4, v5, v6, v7);
    v8 = sub_10009D9E0();
    v9 = sub_10009DFF0();
    v69 = v2;
    v70 = v6;
    v71 = v3;
    v10 = v3;
    v11 = v7;
    sub_1000323E0(v2, v10, v4, v5, v6, v7, v12, v13);
    v63 = v9;
    v14 = os_log_type_enabled(v8, v9);
    v15 = *(v0 + 176);
    v65 = *(v0 + 168);
    v66 = *(v0 + 192);
    v68 = v4;
    v64 = v5;
    if (v14)
    {
      v16 = v8;
      v17 = v7;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v4;
      v21 = v19;
      v72 = v19;
      *v18 = 136315138;
      *(v1 + 64) = v69;
      *(v1 + 72) = v71;
      *(v1 + 80) = v20;
      *(v1 + 88) = v5;
      *(v1 + 96) = v6;
      *(v1 + 104) = v7;
      sub_100032380(v69, v71, v20, v5, v6, v7);
      v22 = sub_10009DDA0();
      v24 = v23;
      v25 = sub_1000307A4(v22, v23, &v72);
      v11 = v17;
      v24, v26, v27, v28, v29, v30, v31, v32;
      *(v18 + 4) = v25;
      v8 = v16;
      _os_log_impl(&_mh_execute_header, v16, v63, "Initial error finishing completeForciblyShareFolder: %s", v18, 0xCu);
      sub_10000670C(v21);
    }

    v33 = *(v15 + 8);
    v33(v66, v65);
    v34 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
    v35 = v34;
    v67 = v33;
    if (v11 == 1 || v11 == 3)
    {

      v36 = v68;
      if (v68)
      {

        v35 = v68;

        v71, v38, v39, v40, v41, v42, v43, v44;

        v70, v45, v46, v47, v48, v49, v50, v51;
LABEL_13:
        sub_10009D9D0();
        v52 = v35;
        v53 = sub_10009D9E0();
        v54 = sub_10009DFD0();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *v55 = 138412290;
          *(v55 + 4) = v52;
          *v56 = v52;
          v57 = v52;
          _os_log_impl(&_mh_execute_header, v53, v54, "completeForciblyShareFolder returning mapped error: %@", v55, 0xCu);
          sub_100008728(v56, &qword_1000CA8E0, &qword_10009FE08);
        }

        v58 = *(v1 + 224);
        v59 = *(v1 + 152);
        v67(*(v1 + 184), *(v1 + 168));
        v60 = sub_10009D860();
        (*(*(v60 - 8) + 56))(v58, 1, 1, v60);
        v59(v58, 0, v52);

        sub_1000323E0(v69, v71, v36, v64, v70, v11, v61, v62);
        sub_100008728(v58, &qword_1000CA250, &qword_10009FDF8);

        v37 = *(v1 + 8);
        goto LABEL_16;
      }

      __break(1u);
    }

    else
    {
      v36 = v68;
      if (v11 != 4)
      {
LABEL_12:

        goto LABEL_13;
      }

      if (v68)
      {
        v35 = v68;
        goto LABEL_12;
      }
    }

    __break(1u);
    return;
  }

  v37 = *(v0 + 8);
LABEL_16:

  v37();
}

uint64_t sub_10007785C()
{
  v2 = *v1;
  v2[48] = v0;

  if (v0)
  {
    v3 = v2[44];
    v4 = v2[45];

    return _swift_task_switch(sub_1000779C4, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[49] = v5;
    *v5 = v2;
    v5[1] = sub_100077F3C;

    return sub_100026F78();
  }
}

void sub_1000779C4()
{
  v73 = v0;
  v1 = v0;
  *(v0 + 112) = *(v0 + 384);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    sub_10009D9D0();
    sub_100032380(v2, v3, v4, v5, v6, v7);
    v8 = sub_10009D9E0();
    v9 = sub_10009DFF0();
    v69 = v2;
    v70 = v6;
    v71 = v3;
    v10 = v3;
    v11 = v7;
    sub_1000323E0(v2, v10, v4, v5, v6, v7, v12, v13);
    v63 = v9;
    v14 = os_log_type_enabled(v8, v9);
    v15 = *(v0 + 176);
    v65 = *(v0 + 168);
    v66 = *(v0 + 192);
    v68 = v4;
    v64 = v5;
    if (v14)
    {
      v16 = v8;
      v17 = v7;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v4;
      v21 = v19;
      v72 = v19;
      *v18 = 136315138;
      *(v1 + 64) = v69;
      *(v1 + 72) = v71;
      *(v1 + 80) = v20;
      *(v1 + 88) = v5;
      *(v1 + 96) = v6;
      *(v1 + 104) = v7;
      sub_100032380(v69, v71, v20, v5, v6, v7);
      v22 = sub_10009DDA0();
      v24 = v23;
      v25 = sub_1000307A4(v22, v23, &v72);
      v11 = v17;
      v24, v26, v27, v28, v29, v30, v31, v32;
      *(v18 + 4) = v25;
      v8 = v16;
      _os_log_impl(&_mh_execute_header, v16, v63, "Initial error finishing completeForciblyShareFolder: %s", v18, 0xCu);
      sub_10000670C(v21);
    }

    v33 = *(v15 + 8);
    v33(v66, v65);
    v34 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
    v35 = v34;
    v67 = v33;
    if (v11 == 1 || v11 == 3)
    {

      v36 = v68;
      if (v68)
      {

        v35 = v68;

        v71, v38, v39, v40, v41, v42, v43, v44;

        v70, v45, v46, v47, v48, v49, v50, v51;
LABEL_13:
        sub_10009D9D0();
        v52 = v35;
        v53 = sub_10009D9E0();
        v54 = sub_10009DFD0();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *v55 = 138412290;
          *(v55 + 4) = v52;
          *v56 = v52;
          v57 = v52;
          _os_log_impl(&_mh_execute_header, v53, v54, "completeForciblyShareFolder returning mapped error: %@", v55, 0xCu);
          sub_100008728(v56, &qword_1000CA8E0, &qword_10009FE08);
        }

        v58 = *(v1 + 224);
        v59 = *(v1 + 152);
        v67(*(v1 + 184), *(v1 + 168));
        v60 = sub_10009D860();
        (*(*(v60 - 8) + 56))(v58, 1, 1, v60);
        v59(v58, 0, v52);

        sub_1000323E0(v69, v71, v36, v64, v70, v11, v61, v62);
        sub_100008728(v58, &qword_1000CA250, &qword_10009FDF8);

        v37 = *(v1 + 8);
        goto LABEL_16;
      }

      __break(1u);
    }

    else
    {
      v36 = v68;
      if (v11 != 4)
      {
LABEL_12:

        goto LABEL_13;
      }

      if (v68)
      {
        v35 = v68;
        goto LABEL_12;
      }
    }

    __break(1u);
    return;
  }

  v37 = *(v0 + 8);
LABEL_16:

  v37();
}

uint64_t sub_100077F3C()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);
  if (v0)
  {
    v5 = sub_1000782CC;
  }

  else
  {
    v5 = sub_100078078;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100078078()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v1 = swift_task_alloc();
  *(v0 + 408) = v1;
  *v1 = v0;
  v1[1] = sub_100078164;
  v2 = *(v0 + 232);

  return sub_100028ADC(v2);
}

uint64_t sub_100078164()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  *(*v1 + 416) = v0;

  sub_100008728(v3, &qword_1000CA250, &qword_10009FDF8);
  v4 = *(v2 + 360);
  v5 = *(v2 + 352);
  if (v0)
  {
    v6 = sub_100078BA4;
  }

  else
  {
    v6 = sub_100078844;
  }

  return _swift_task_switch(v6, v5, v4);
}

void sub_1000782CC()
{
  v73 = v0;
  v1 = v0;
  *(v0 + 112) = *(v0 + 400);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    sub_10009D9D0();
    sub_100032380(v2, v3, v4, v5, v6, v7);
    v8 = sub_10009D9E0();
    v9 = sub_10009DFF0();
    v69 = v2;
    v70 = v6;
    v71 = v3;
    v10 = v3;
    v11 = v7;
    sub_1000323E0(v2, v10, v4, v5, v6, v7, v12, v13);
    v63 = v9;
    v14 = os_log_type_enabled(v8, v9);
    v15 = *(v0 + 176);
    v65 = *(v0 + 168);
    v66 = *(v0 + 192);
    v68 = v4;
    v64 = v5;
    if (v14)
    {
      v16 = v8;
      v17 = v7;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v4;
      v21 = v19;
      v72 = v19;
      *v18 = 136315138;
      *(v1 + 64) = v69;
      *(v1 + 72) = v71;
      *(v1 + 80) = v20;
      *(v1 + 88) = v5;
      *(v1 + 96) = v6;
      *(v1 + 104) = v7;
      sub_100032380(v69, v71, v20, v5, v6, v7);
      v22 = sub_10009DDA0();
      v24 = v23;
      v25 = sub_1000307A4(v22, v23, &v72);
      v11 = v17;
      v24, v26, v27, v28, v29, v30, v31, v32;
      *(v18 + 4) = v25;
      v8 = v16;
      _os_log_impl(&_mh_execute_header, v16, v63, "Initial error finishing completeForciblyShareFolder: %s", v18, 0xCu);
      sub_10000670C(v21);
    }

    v33 = *(v15 + 8);
    v33(v66, v65);
    v34 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
    v35 = v34;
    v67 = v33;
    if (v11 == 1 || v11 == 3)
    {

      v36 = v68;
      if (v68)
      {

        v35 = v68;

        v71, v38, v39, v40, v41, v42, v43, v44;

        v70, v45, v46, v47, v48, v49, v50, v51;
LABEL_13:
        sub_10009D9D0();
        v52 = v35;
        v53 = sub_10009D9E0();
        v54 = sub_10009DFD0();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *v55 = 138412290;
          *(v55 + 4) = v52;
          *v56 = v52;
          v57 = v52;
          _os_log_impl(&_mh_execute_header, v53, v54, "completeForciblyShareFolder returning mapped error: %@", v55, 0xCu);
          sub_100008728(v56, &qword_1000CA8E0, &qword_10009FE08);
        }

        v58 = *(v1 + 224);
        v59 = *(v1 + 152);
        v67(*(v1 + 184), *(v1 + 168));
        v60 = sub_10009D860();
        (*(*(v60 - 8) + 56))(v58, 1, 1, v60);
        v59(v58, 0, v52);

        sub_1000323E0(v69, v71, v36, v64, v70, v11, v61, v62);
        sub_100008728(v58, &qword_1000CA250, &qword_10009FDF8);

        v37 = *(v1 + 8);
        goto LABEL_16;
      }

      __break(1u);
    }

    else
    {
      v36 = v68;
      if (v11 != 4)
      {
LABEL_12:

        goto LABEL_13;
      }

      if (v68)
      {
        v35 = v68;
        goto LABEL_12;
      }
    }

    __break(1u);
    return;
  }

  v37 = *(v0 + 8);
LABEL_16:

  v37();
}

uint64_t sub_100078844()
{
  v28 = v0;

  sub_10009D9D0();

  v1 = sub_10009D9E0();
  v2 = sub_10009DFF0();

  if (os_log_type_enabled(v1, v2))
  {
    v26 = *(v0 + 200);
    v3 = *(v0 + 176);
    v25 = *(v0 + 168);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v27 = v5;
    *v4 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10009DAF0();

    v6 = sub_10009DDA0();
    v8 = v7;
    v9 = sub_1000307A4(v6, v7, &v27);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Finished forciblyShareFolder shareURL: %s", v4, 0xCu);
    sub_10000670C(v5);

    (*(v3 + 8))(v26, v25);
  }

  else
  {
    v17 = *(v0 + 200);
    v18 = *(v0 + 168);
    v19 = *(v0 + 176);

    (*(v19 + 8))(v17, v18);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10009DAF0();

  v20 = *(v0 + 120);
  if (v20)
  {
    v21 = [*(v0 + 120) _copyWithoutPersonalInfo];
  }

  else
  {
    v21 = 0;
  }

  v22 = *(v0 + 216);
  (*(v0 + 152))(v22, v21, 0);

  sub_100008728(v22, &qword_1000CA250, &qword_10009FDF8);

  v23 = *(v0 + 8);

  return v23();
}

void sub_100078BA4()
{
  v73 = v0;
  v1 = v0;
  *(v0 + 112) = *(v0 + 416);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    sub_10009D9D0();
    sub_100032380(v2, v3, v4, v5, v6, v7);
    v8 = sub_10009D9E0();
    v9 = sub_10009DFF0();
    v69 = v2;
    v70 = v6;
    v71 = v3;
    v10 = v3;
    v11 = v7;
    sub_1000323E0(v2, v10, v4, v5, v6, v7, v12, v13);
    v63 = v9;
    v14 = os_log_type_enabled(v8, v9);
    v15 = *(v0 + 176);
    v65 = *(v0 + 168);
    v66 = *(v0 + 192);
    v68 = v4;
    v64 = v5;
    if (v14)
    {
      v16 = v8;
      v17 = v7;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v4;
      v21 = v19;
      v72 = v19;
      *v18 = 136315138;
      *(v1 + 64) = v69;
      *(v1 + 72) = v71;
      *(v1 + 80) = v20;
      *(v1 + 88) = v5;
      *(v1 + 96) = v6;
      *(v1 + 104) = v7;
      sub_100032380(v69, v71, v20, v5, v6, v7);
      v22 = sub_10009DDA0();
      v24 = v23;
      v25 = sub_1000307A4(v22, v23, &v72);
      v11 = v17;
      v24, v26, v27, v28, v29, v30, v31, v32;
      *(v18 + 4) = v25;
      v8 = v16;
      _os_log_impl(&_mh_execute_header, v16, v63, "Initial error finishing completeForciblyShareFolder: %s", v18, 0xCu);
      sub_10000670C(v21);
    }

    v33 = *(v15 + 8);
    v33(v66, v65);
    v34 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
    v35 = v34;
    v67 = v33;
    if (v11 == 1 || v11 == 3)
    {

      v36 = v68;
      if (v68)
      {

        v35 = v68;

        v71, v38, v39, v40, v41, v42, v43, v44;

        v70, v45, v46, v47, v48, v49, v50, v51;
LABEL_13:
        sub_10009D9D0();
        v52 = v35;
        v53 = sub_10009D9E0();
        v54 = sub_10009DFD0();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *v55 = 138412290;
          *(v55 + 4) = v52;
          *v56 = v52;
          v57 = v52;
          _os_log_impl(&_mh_execute_header, v53, v54, "completeForciblyShareFolder returning mapped error: %@", v55, 0xCu);
          sub_100008728(v56, &qword_1000CA8E0, &qword_10009FE08);
        }

        v58 = *(v1 + 224);
        v59 = *(v1 + 152);
        v67(*(v1 + 184), *(v1 + 168));
        v60 = sub_10009D860();
        (*(*(v60 - 8) + 56))(v58, 1, 1, v60);
        v59(v58, 0, v52);

        sub_1000323E0(v69, v71, v36, v64, v70, v11, v61, v62);
        sub_100008728(v58, &qword_1000CA250, &qword_10009FDF8);

        v37 = *(v1 + 8);
        goto LABEL_16;
      }

      __break(1u);
    }

    else
    {
      v36 = v68;
      if (v11 != 4)
      {
LABEL_12:

        goto LABEL_13;
      }

      if (v68)
      {
        v35 = v68;
        goto LABEL_12;
      }
    }

    __break(1u);
    return;
  }

  v37 = *(v0 + 8);
LABEL_16:

  v37();
}

id sub_10007914C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000791BC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100079214(uint64_t a1)
{
  v3 = *(sub_10009D860() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 24);
  v15 = *(v1 + 16);
  v8 = (v1 + v5);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v6);
  v12 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1000093DC;

  return sub_1000735CC(a1, v15, v7, v1 + v4, v9, v10, v11, v12);
}

uint64_t sub_100079390(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000067C8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    type metadata accessor for NSFileProviderServiceName(0);
    sub_1000037C4(0, &qword_1000CB7A8, NSFileProviderService_ptr);
    sub_10008F3BC(&qword_1000CA030, type metadata accessor for NSFileProviderServiceName, &unk_10009FA3C);
    **(*(v4 + 64) + 40) = sub_10009DD00();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1000794CC@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  *a2 = v4;
  return result;
}

uint64_t sub_10007954C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return sub_10009DB00();
}

uint64_t sub_1000795D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();
}

uint64_t sub_100079650(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_100008658(a1, &v10 - v7, &qword_1000CA250, &qword_10009FDF8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008658(v8, v6, &qword_1000CA250, &qword_10009FDF8);

  sub_10009DB00();
  return sub_100008728(v8, &qword_1000CA250, &qword_10009FDF8);
}

double sub_100079780@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100079808(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

uint64_t sub_1000798A4@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  *a2 = v4;
  return result;
}

uint64_t sub_100079924(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10009DB00();
}

void sub_1000799A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v25 = v4 + v2;
  }

  else
  {
    v25 = v4;
  }

  v3 = sub_100097E40(isUniquelyReferenced_nonNull_native, v25, 1, v3, v11, v12, v13, v14);
  if (!*(a1 + 16))
  {
LABEL_13:
    a1, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();
  a1, v15, v16, v17, v18, v19, v20, v21;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v22 = *(v3 + 2);
  v23 = __OFADD__(v22, v2);
  v24 = v22 + v2;
  if (!v23)
  {
    *(v3 + 2) = v24;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

id sub_100079A94(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    sub_10009D7B0();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_100079B58(uint64_t a1, _TtC13SPIHelper_iOS9SPIHelper *a2, uint64_t a3, _TtC13SPIHelper_iOS9SPIHelper *a4)
{
  v64 = a3;
  v7 = sub_10009D9F0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009D9D0();

  v11 = sub_10009D9E0();
  v12 = sub_10009DFF0();
  a2, v13, v14, v15, v16, v17, v18, v19;
  a4, v20, v21, v22, v23, v24, v25, v26;
  if (os_log_type_enabled(v11, v12))
  {
    v62 = a1;
    v63 = v7;
    v27 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v65 = v61;
    *v27 = 136315394;
    v28 = sub_10009DE60();
    v30 = v29;
    sub_1000300B8(v28, v29, v64, a4);
    v32 = v31;
    v30, v31, v33, v34, v35, v36, v37, v38;
    if (v32)
    {
      v39 = 0;
      v40 = 0xE000000000000000;
    }

    else
    {
      sub_10009DE70();
      v43 = v42;
      v44 = sub_10009DDD0();
      v40 = v45;
      v43, v45, v46, v47, v48, v49, v50, v51;
      v39 = v44;
    }

    v52 = sub_1000307A4(v39, v40, &v65);
    v40, v53, v54, v55, v56, v57, v58, v59;
    *(v27 + 4) = v52;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_1000307A4(v62, a2, &v65);
    _os_log_impl(&_mh_execute_header, v11, v12, "Begin %s, %s", v27, 0x16u);
    swift_arrayDestroy();

    return (*(v8 + 8))(v10, v63);
  }

  else
  {

    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_100079DD8(uint64_t a1)
{
  v2 = sub_10009D9F0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v60 = type metadata accessor for SPIAnalyticsEvent(0);
  v61 = &off_1000C2CF0;
  v9 = sub_10008D654(v59);
  sub_10003BF8C(a1, v9);
  sub_10009D9D0();
  sub_10008D5F0(v59, aBlock);
  v10 = sub_10009D9E0();
  v11 = sub_10009DFF0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v58[0] = v13;
    *v12 = 136315394;
    sub_1000067C8(aBlock, v55);
    v14 = sub_10003BB34();
    v16 = v15;
    sub_10000670C(aBlock);
    v17 = sub_1000307A4(v14, v16, v58);
    v16, v18, v19, v20, v21, v22, v23, v24;
    *(v12 + 4) = v17;
    *(v12 + 12) = 1024;
    *(v12 + 14) = 1;
    _os_log_impl(&_mh_execute_header, v10, v11, "Analytics event is: %s, will be built and sent: %{BOOL}d", v12, 0x12u);
    sub_10000670C(v13);

    v25 = *(v3 + 8);
    v25(v8, v2);
  }

  else
  {

    v25 = *(v3 + 8);
    v25(v8, v2);
    sub_10000670C(aBlock);
  }

  sub_1000067C8(v59, v60);
  sub_10003BB34();
  v27 = v26;
  v28 = sub_10009DD50();
  v27, v29, v30, v31, v32, v33, v34, v35;
  sub_10008D5F0(v59, v58);
  v36 = swift_allocObject();
  sub_10008D5D8(v58, v36 + 16);
  v56 = sub_10008D6F0;
  v57 = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004D0A0;
  v55 = &unk_1000C33B8;
  v37 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v37);

  sub_10009D9D0();
  sub_10008D5F0(v59, aBlock);
  v38 = sub_10009D9E0();
  v39 = sub_10009DFF0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v58[0] = v41;
    *v40 = 136315138;
    sub_1000067C8(aBlock, v55);
    v42 = sub_10003BB34();
    v44 = v43;
    sub_10000670C(aBlock);
    v45 = sub_1000307A4(v42, v44, v58);
    v44, v46, v47, v48, v49, v50, v51, v52;
    *(v40 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v38, v39, "Analytics event: %s sent lazily", v40, 0xCu);
    sub_10000670C(v41);

    v25(v6, v2);
  }

  else
  {

    v25(v6, v2);
    sub_10000670C(aBlock);
  }

  return sub_10000670C(v59);
}

uint64_t sub_10007A254(uint64_t a1)
{
  v1[20] = a1;
  v2 = sub_10009D860();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v3 = sub_10009D9F0();
  v1[24] = v3;
  v1[25] = *(v3 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_10007A37C, 0, 0);
}

uint64_t sub_10007A37C()
{
  v1 = [objc_opt_self() defaultManager];
  v0[28] = v1;
  sub_10009D800(v2);
  v4 = v3;
  v0[29] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10007A4D8;
  v5 = swift_continuation_init();
  v0[17] = sub_100003714(&qword_1000CB7A0, &qword_1000A29F0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100079390;
  v0[13] = &unk_1000C3DE0;
  v0[14] = v5;
  [v1 getFileProviderServicesForItemAtURL:v4 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10007A4D8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_10007A914;
  }

  else
  {
    v2 = sub_10007A5E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10007A5E8()
{
  v64 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 144);

  sub_10009D9D0();

  v3 = sub_10009D9E0();
  v4 = sub_10009DFF0();
  v2, v5, v6, v7, v8, v9, v10, v11;
  v12 = os_log_type_enabled(v3, v4);
  v13 = *(v0 + 216);
  v15 = *(v0 + 192);
  v14 = *(v0 + 200);
  if (v12)
  {
    v62 = *(v0 + 216);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v63 = v17;
    *v16 = 136315138;
    type metadata accessor for NSFileProviderServiceName(0);
    sub_1000037C4(0, &qword_1000CB7A8, NSFileProviderService_ptr);
    sub_10008F3BC(&qword_1000CA030, type metadata accessor for NSFileProviderServiceName, &unk_10009FA3C);
    v18 = sub_10009DD10();
    v20 = v19;
    v21 = sub_1000307A4(v18, v19, &v63);
    v20, v22, v23, v24, v25, v26, v27, v28;
    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v3, v4, "services returned: %s", v16, 0xCu);
    sub_10000670C(v17);

    (*(v14 + 8))(v62, v15);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v29 = -1;
  v30 = -1 << *(v2 + 32);
  if (-v30 < 64)
  {
    v29 = ~(-1 << -v30);
  }

  v31 = v29 & *(v2 + 64);
  v32 = (63 - v30) >> 6;

  v33 = 0;
  while (v31)
  {
LABEL_12:
    v35 = sub_10009DD90();
    v43 = v36;
    if (v35 == 0xD00000000000001DLL && 0x80000001000A8180 == v36)
    {
      v36, v36, v37, v38, v39, v40, v41, v42;
LABEL_20:
      v53 = 1;
LABEL_21:

      v2, v54, v55, v56, v57, v58, v59, v60;

      v61 = *(v0 + 8);

      v61(v53);
      return;
    }

    v31 &= v31 - 1;
    v45 = sub_10009E2E0();
    v43, v46, v47, v48, v49, v50, v51, v52;
    if (v45)
    {
      goto LABEL_20;
    }
  }

  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v34 >= v32)
    {
      v53 = 0;
      goto LABEL_21;
    }

    v31 = *(v2 + 64 + 8 * v34);
    ++v33;
    if (v31)
    {
      v33 = v34;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_10007A914(uint64_t a1)
{
  v51 = v1;
  v2 = v1[29];
  v3 = v1[28];
  v5 = v1[22];
  v4 = v1[23];
  v7 = v1[20];
  v6 = v1[21];
  swift_willThrow();

  sub_10009D9D0();
  (*(v5 + 16))(v4, v7, v6);
  swift_errorRetain();
  v8 = sub_10009D9E0();
  v9 = sub_10009DFD0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[30];
    v47 = v1[25];
    v11 = v1[23];
    v48 = v1[24];
    v49 = v1[26];
    v13 = v1[21];
    v12 = v1[22];
    v14 = swift_slowAlloc();
    v50[0] = swift_slowAlloc();
    *v14 = 136315394;
    sub_10008F3BC(&qword_1000CA4A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v15 = sub_10009E2C0();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000307A4(v15, v17, v50);
    v17, v19, v20, v21, v22, v23, v24, v25;
    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v1[19] = v10;
    swift_errorRetain();
    sub_100003714(&qword_1000CB840, &qword_10009FDA0);
    v26 = sub_10009DDA0();
    v28 = v27;
    v29 = sub_1000307A4(v26, v27, v50);
    v28, v30, v31, v32, v33, v34, v35, v36;
    *(v14 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to fetch FP services for %s: %s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v47 + 8))(v49, v48);
  }

  else
  {
    v38 = v1[25];
    v37 = v1[26];
    v40 = v1[23];
    v39 = v1[24];
    v41 = v1[21];
    v42 = v1[22];

    (*(v42 + 8))(v40, v41);
    (*(v38 + 8))(v37, v39);
  }

  v43 = sub_10009D7A0();
  sub_100005B1C();
  swift_allocError();
  *v44 = 0xD000000000000011;
  *(v44 + 8) = 0x80000001000A8160;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 9;
  swift_willThrow();

  v45 = v1[1];

  return v45(0);
}

uint64_t sub_10007AC74(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_10009D6F0();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_10007AD40, 0, 0);
}

uint64_t sub_10007AD40()
{
  sub_100003714(&qword_1000CA498, &qword_1000A04B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10009FCE0;
  *(inited + 32) = NSURLIsPackageKey;
  v2 = NSURLIsPackageKey;
  sub_1000315FC(inited);
  v4 = v3;
  swift_setDeallocating();
  sub_1000462B8(inited + 32);
  sub_10009D7C0();
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  v4, v8, v9, v10, v11, v12, v13, v14;
  v15 = sub_10009D6E0();
  v16 = *(v7 + 8);
  v16(v5, v6);
  if (v15 != 2 && (v15 & 1) != 0 || (v17 = swift_initStackObject(), *(v17 + 16) = xmmword_10009FCE0, *(v17 + 32) = NSURLIsDirectoryKey, v18 = NSURLIsDirectoryKey, sub_1000315FC(v17), v20 = v19, swift_setDeallocating(), sub_1000462B8(v17 + 32), sub_10009D7C0(), v23 = v0[15], v24 = v0[13], v20, v25, v26, v27, v28, v29, v30, v31, v32 = sub_10009D690(), v16(v23, v24), v32 == 2 || (v32 & 1) == 0))
  {

    v21 = v0[1];

    return v21(0);
  }

  else
  {
    v33 = v0[12];
    v34 = swift_task_alloc();
    v0[17] = v34;
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    v35 = swift_task_alloc();
    v0[18] = v35;
    *v35 = v0;
    v35[1] = sub_10007B01C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v35, 0, 0, 0xD00000000000002ALL, 0x80000001000A5300, sub_10008F518, v34, &type metadata for () + 8);
  }
}

uint64_t sub_10007B01C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10007B1A4;
  }

  else
  {

    v2 = sub_10007B138;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007B138()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10007B1A4()
{

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_10007B224(void (*a1)(char *, uint64_t), _TtC13SPIHelper_iOS9SPIHelper *a2, uint64_t a3, _TtC13SPIHelper_iOS9SPIHelper *a4, __int128 *a5, void *a6, void *a7, unint64_t a8, _UNKNOWN **a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  v347 = a8;
  v343 = a7;
  v351 = a3;
  v18 = *(a5 + 1);
  v349 = *a5;
  v359 = v18;
  v19 = *(a5 + 3);
  v355 = *(a5 + 2);
  v356 = v19;
  v360 = *(a5 + 4);
  v354 = *(a5 + 40);
  v358 = sub_10009D9F0();
  v357 = *(v358 - 8);
  v20 = __chkstk_darwin(v358);
  v22 = &v337 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v348 = &v337 - v24;
  v25 = __chkstk_darwin(v23);
  v344 = &v337 - v26;
  v27 = __chkstk_darwin(v25);
  v342 = &v337 - v28;
  __chkstk_darwin(v27);
  v30 = &v337 - v29;
  v31 = sub_10009DE60();
  v33 = v32;
  sub_1000300B8(v31, v32, a1, a2);
  v35 = v34;
  v33, v34, v36, v37, v38, v39, v40, v41;
  v352 = a2;
  v345 = a1;
  if (v35)
  {
    v350 = 0;
    v42 = 0xE000000000000000;
  }

  else
  {
    sub_10009DE70();
    v44 = v43;
    v350 = sub_10009DDD0();
    v42 = v45;
    v44, v45, v46, v47, v48, v49, v50, v51;
  }

  v346 = a9;
  v52 = a12;
  v353 = v42;
  v53 = v349;
  if (a6)
  {
    if (a4)
    {
      v54 = a6;
      v55 = a4;
    }

    else
    {
      v104 = a6;
      v105 = [v104 description];
      v351 = sub_10009DD90();
      v55 = v106;

      v52 = a12;
    }

    v107 = [a6 code];
    v108 = 0xED0000726F727265;
    v109 = 0x206C6172656E6567;
    if (v107 == 12)
    {
      v110 = 12;
    }

    else
    {
      v110 = 11;
    }

    if (v107 == 12)
    {
      v109 = 0xD000000000000018;
      v108 = 0x80000001000A77D0;
    }

    if (v107 == 10)
    {
      v110 = 13;
    }

    v354 = v110;
    if (v107 == 10)
    {
      v111 = 0xD000000000000019;
    }

    else
    {
      v111 = v109;
    }

    if (v107 == 10)
    {
      v112 = 0x80000001000A77B0;
    }

    else
    {
      v112 = v108;
    }

    swift_bridgeObjectRetain_n();
    v113 = v352;
    swift_bridgeObjectRetain_n();
    sub_10009D9D0();
    v114 = a6;

    v115 = sub_10009D9E0();
    v116 = sub_10009DFD0();

    v112, v117, v118, v119, v120, v121, v122, v123;
    v55, v124, v125, v126, v127, v128, v129, v130;
    v42, v131, v132, v133, v134, v135, v136, v137;
    v138 = os_log_type_enabled(v115, v116);
    v360 = v55;
    if (v138)
    {
      v139 = swift_slowAlloc();
      v341 = v52;
      v140 = v139;
      v359 = swift_slowAlloc();
      *&v361 = v359;
      *v140 = 136315906;
      *(v140 + 4) = sub_1000307A4(v350, v42, &v361);
      *(v140 + 12) = 2080;
      v141 = sub_1000307A4(v351, v55, &v361);
      v55, v142, v143, v144, v145, v146, v147, v148;
      *(v140 + 14) = v141;
      *(v140 + 22) = 2080;
      v149 = sub_1000307A4(v111, v112, &v361);
      v112, v150, v151, v152, v153, v154, v155, v156;
      *(v140 + 24) = v149;
      *(v140 + 32) = 2080;
      v157 = v114;
      v158 = [v157 description];
      v159 = sub_10009DD90();
      v161 = v160;

      v162 = sub_1000307A4(v159, v161, &v361);
      v161, v163, v164, v165, v166, v167, v168, v169;
      *(v140 + 34) = v162;
      _os_log_impl(&_mh_execute_header, v115, v116, "Error in %s %s, reporting as %s, NSError: %s", v140, 0x2Au);
      swift_arrayDestroy();

      v52 = v341;

      (*(v357 + 8))(v30, v358);
      v90 = 0;
      v53 = v345;
      v359 = v352;
    }

    else
    {

      v112, v170, v171, v172, v173, v174, v175, v176;
      v55, v177, v178, v179, v180, v181, v182, v183;

      (*(v357 + 8))(v30, v358);
      v90 = 0;
      v53 = v345;
      v359 = v113;
    }

    v356 = v351;
  }

  else
  {
    v56 = *(a5 + 40);
    if (v56 == 255)
    {
      v90 = v355;
    }

    else
    {
      v57 = v22;
      v341 = a12;
      v58 = a5[1];
      v371 = *a5;
      v372 = v58;
      v373 = *(a5 + 4);
      v59 = v356;
      sub_100032380(v349, v359, v355, v356, v360, v354);
      sub_10009D9D0();

      v60 = v353;

      sub_100008658(a5, &v361, &qword_1000CB088, &unk_1000A18F0);
      v340 = v57;
      v61 = sub_10009D9E0();
      v62 = sub_10009DFD0();
      a4, v63, v64, v65, v66, v67, v68, v69;
      v60, v70, v71, v72, v73, v74, v75, v76;
      sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
      v339 = v62;
      if (os_log_type_enabled(v61, v62))
      {
        v77 = swift_slowAlloc();
        v338 = swift_slowAlloc();
        v369 = v338;
        *v77 = 136315650;
        *(v77 + 4) = sub_1000307A4(v350, v60, &v369);
        *(v77 + 12) = 2080;
        if (a4)
        {
          v78 = v351;
        }

        else
        {
          v78 = 0;
        }

        if (a4)
        {
          v79 = a4;
        }

        else
        {
          v79 = 0xE000000000000000;
        }

        v80 = sub_1000307A4(v78, v79, &v369);
        v81 = v79;
        v53 = v349;
        v82 = v360;
        v81, v83, v84, v85, v86, v87, v88, v89;
        *(v77 + 14) = v80;
        *(v77 + 22) = 2080;
        v361 = v371;
        v362 = v372;
        v363 = v373;
        v364 = v56;
        v90 = v355;
        v91 = v354;
        sub_100032380(v53, v359, v355, v59, v82, v354);
        v92 = sub_10009DDA0();
        v94 = v93;
        v95 = sub_1000307A4(v92, v93, &v369);
        v94, v96, v97, v98, v99, v100, v101, v102;
        *(v77 + 24) = v95;
        _os_log_impl(&_mh_execute_header, v61, v339, "SharingError in %s %s, error: %s", v77, 0x20u);
        swift_arrayDestroy();

        sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
        (*(v357 + 8))(v340, v358);
        v103 = v359;
        v52 = v341;
      }

      else
      {
        sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);

        (*(v357 + 8))(v340, v358);
        v90 = v355;
        v103 = v359;
        v52 = v341;
        v82 = v360;
        v91 = v354;
      }

      sub_100032380(v53, v103, v90, v59, v82, v91);
      sub_100032380(v53, v103, v90, v59, v82, v91);
    }
  }

  v184 = a11;
  v185 = v347 >> 24;
  v186 = HIDWORD(v347);
  if (!v346)
  {
    LODWORD(v186) = 0;
  }

  LODWORD(v349) = v186;
  if (!v346)
  {
    LODWORD(v185) = 0;
  }

  LODWORD(v347) = v185;
  if (v346)
  {
    v187 = v346;
  }

  else
  {
    v187 = &off_1000C19D8;
  }

  *(&v362 + 1) = type metadata accessor for SPIAnalyticsEvent(0);
  v363 = &off_1000C2CF0;
  v188 = sub_10008D654(&v361);
  if (v52)
  {
    v189 = *(a13 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName);
    v190 = *(a13 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName + 8);

    v191 = v53;
    v192 = v90;
    v193 = v52;
    v194 = v189;
    v184 = a11;
    v52 = sub_100045D24(v193, v194, v190);
    v196 = v195;
    v190, v195, v197, v198, v199, v200, v201, v202;

    v90 = v192;
    v53 = v191;
  }

  else
  {

    v196 = 0xE000000000000000;
  }

  v351 = 0x73736563637553;
  v203 = *(v184 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v204 = *(v184 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  *v188 = v52;
  v188[1] = v196;
  *(v188 + 16) = v347;
  *(v188 + 17) = v349;
  v188[3] = v187;
  v188[4] = v203;
  v188[5] = v204;
  v188[6] = v53;
  v188[7] = v359;
  v188[8] = v90;
  v205 = v360;
  v188[9] = v356;
  v188[10] = v205;
  v206 = v354;
  *(v188 + 88) = v354;
  swift_storeEnumTagMultiPayload();
  sub_100008658(&v361, &v367, &qword_1000CB798, &qword_1000A27F0);
  v355 = v90;
  if (v368)
  {
    sub_10008D5D8(&v367, &v369);

    v207 = v342;
    sub_10009D9D0();
    sub_10008D5F0(&v369, &v367);
    v208 = v353;

    v209 = sub_10009D9E0();
    v210 = sub_10009DFF0();
    v208, v211, v212, v213, v214, v215, v216, v217;
    if (os_log_type_enabled(v209, v210))
    {
      v218 = swift_slowAlloc();
      v365[0] = swift_slowAlloc();
      *v218 = 136315394;
      *(v218 + 4) = sub_1000307A4(v350, v208, v365);
      *(v218 + 12) = 2080;
      sub_1000067C8(&v367, v368);
      v219 = sub_10003BB34();
      v221 = v220;
      sub_10000670C(&v367);
      v222 = sub_1000307A4(v219, v221, v365);
      v221, v223, v224, v225, v226, v227, v228, v229;
      *(v218 + 14) = v222;
      _os_log_impl(&_mh_execute_header, v209, v210, "Finishing %s, sending event %s", v218, 0x16u);
      swift_arrayDestroy();

      v230 = *(v357 + 8);
      v230(v207, v358);
    }

    else
    {

      v230 = *(v357 + 8);
      v230(v207, v358);
      sub_10000670C(&v367);
    }

    v233 = v352;
    v234 = sub_1000067C8(&v369, v370);
    sub_100079DD8(v234);
    v235 = v344;
    sub_10009D9D0();
    sub_10008D5F0(&v369, &v367);

    v236 = v343;
    v237 = sub_10009D9E0();
    v238 = sub_10009DFF0();
    v233, v239, v240, v241, v242, v243, v244, v245;

    if (os_log_type_enabled(v237, v238))
    {
      v246 = swift_slowAlloc();
      v349 = v230;
      v247 = v246;
      v366 = swift_slowAlloc();
      *v247 = 136315650;
      v248 = *&v236[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8];
      v365[0] = *&v236[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier];
      v365[1] = v248;

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v249 = sub_10009DDA0();
      v251 = v250;
      v252 = sub_1000307A4(v249, v250, &v366);
      v251, v253, v254, v255, v256, v257, v258, v259;
      *(v247 + 4) = v252;
      *(v247 + 12) = 2080;
      sub_1000067C8(&v367, v368);
      v260 = sub_10003C060();
      sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
      v261 = sub_10009DD10();
      v262 = v53;
      v264 = v263;
      v260, v263, v265, v266, v267, v268, v269, v270;
      sub_10000670C(&v367);
      v271 = sub_1000307A4(v261, v264, &v366);
      v272 = v264;
      v53 = v262;
      v273 = v360;
      v272, v274, v275, v276, v277, v278, v279, v280;
      *(v247 + 14) = v271;
      *(v247 + 22) = 2080;
      *(v247 + 24) = sub_1000307A4(v345, v233, &v366);
      _os_log_impl(&_mh_execute_header, v237, v238, "Requester: %s, event detail is: %s\n%s", v247, 0x20u);
      swift_arrayDestroy();
      v205 = v273;

      v349(v235, v358);
    }

    else
    {

      v230(v235, v358);
      sub_10000670C(&v367);
    }

    v232 = v348;
    v90 = v355;
    sub_1000067C8(&v369, v370);
    v281 = sub_10003CCE4();
    v282 = 0x7272652068746957;
    if (!v281)
    {
      v282 = 0x73736563637553;
    }

    v351 = v282;
    if (v281)
    {
      v231 = 0xEA0000000000726FLL;
    }

    else
    {
      v231 = 0xE700000000000000;
    }

    sub_10000670C(&v369);
    v206 = v354;
  }

  else
  {

    sub_100008728(&v367, &qword_1000CB798, &qword_1000A27F0);
    v231 = 0xE700000000000000;
    v232 = v348;
  }

  sub_10009D9D0();
  v283 = v353;

  v284 = sub_10009D9E0();
  v285 = sub_10009DFF0();
  v231, v286, v287, v288, v289, v290, v291, v292;
  v283, v293, v294, v295, v296, v297, v298, v299;
  if (os_log_type_enabled(v284, v285))
  {
    v302 = swift_slowAlloc();
    v303 = swift_slowAlloc();
    v360 = v205;
    v369 = v303;
    *v302 = 136315394;
    v304 = sub_1000307A4(v350, v283, &v369);
    v283, v305, v306, v307, v308, v309, v310, v311;
    *(v302 + 4) = v304;
    *(v302 + 12) = 2080;
    v312 = sub_1000307A4(v351, v231, &v369);
    v231, v313, v314, v315, v316, v317, v318, v319;
    *(v302 + 14) = v312;
    _os_log_impl(&_mh_execute_header, v284, v285, "Finished %s: %s.", v302, 0x16u);
    swift_arrayDestroy();

    sub_10003C04C(v53, v359, v355, v356, v360, v206, v320, v321);
  }

  else
  {
    sub_10003C04C(v53, v359, v90, v356, v205, v206, v300, v301);
    v283, v322, v323, v324, v325, v326, v327, v328;
    v231, v329, v330, v331, v332, v333, v334, v335;
  }

  (*(v357 + 8))(v232, v358);
  return sub_100008728(&v361, &qword_1000CB798, &qword_1000A27F0);
}

uint64_t sub_10007C428(uint64_t a1, unint64_t a2, uint64_t a3, _TtC13SPIHelper_iOS9SPIHelper *a4, __int128 *a5, void *a6, void *a7, uint64_t a8, _UNKNOWN **a9, uint64_t a10, uint64_t a11)
{
  v334 = a8;
  v329 = a7;
  v337 = a3;
  v16 = *a5;
  v342 = *(a5 + 1);
  v17 = *(a5 + 3);
  v341 = *(a5 + 2);
  v340 = v17;
  v346 = *(a5 + 4);
  v343 = *(a5 + 40);
  v345 = sub_10009D9F0();
  v344 = *(v345 - 8);
  v18 = __chkstk_darwin(v345);
  v327 = &v323 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v323 - v21;
  v23 = __chkstk_darwin(v20);
  v332 = &v323 - v24;
  v25 = __chkstk_darwin(v23);
  v328 = &v323 - v26;
  __chkstk_darwin(v25);
  v330 = &v323 - v27;
  v28 = sub_10009DE60();
  v30 = v29;
  sub_1000300B8(v28, v29, a1, a2);
  v32 = v31;
  v30, v31, v33, v34, v35, v36, v37, v38;
  v331 = a1;
  v339 = a2;
  if (v32)
  {
    v336 = 0;
    v39 = 0xE000000000000000;
  }

  else
  {
    sub_10009DE70();
    v41 = v40;
    v336 = sub_10009DDD0();
    v39 = v42;
    v41, v42, v43, v44, v45, v46, v47, v48;
  }

  v49 = a9;
  v333 = a11;
  v338 = v39;
  v335 = v22;
  if (a6)
  {
    if (a4)
    {
      v50 = a6;
    }

    else
    {
      v106 = a6;
      v107 = [v106 description];
      v337 = sub_10009DD90();
      a4 = v108;
    }

    v109 = v330;

    v110 = [a6 code];
    v111 = 0xED0000726F727265;
    v112 = 0x206C6172656E6567;
    if (v110 == 12)
    {
      v113 = 12;
    }

    else
    {
      v113 = 11;
    }

    if (v110 == 12)
    {
      v112 = 0xD000000000000018;
      v111 = 0x80000001000A77D0;
    }

    if (v110 == 10)
    {
      v113 = 13;
    }

    v343 = v113;
    if (v110 == 10)
    {
      v114 = 0xD000000000000019;
    }

    else
    {
      v114 = v112;
    }

    if (v110 == 10)
    {
      v115 = 0x80000001000A77B0;
    }

    else
    {
      v115 = v111;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_10009D9D0();
    v116 = a6;

    v117 = sub_10009D9E0();
    v118 = sub_10009DFD0();

    v115, v119, v120, v121, v122, v123, v124, v125;
    a4, v126, v127, v128, v129, v130, v131, v132;
    v39, v133, v134, v135, v136, v137, v138, v139;
    v140 = os_log_type_enabled(v117, v118);
    v346 = a4;
    if (v140)
    {
      v141 = swift_slowAlloc();
      v342 = swift_slowAlloc();
      *&v347 = v342;
      *v141 = 136315906;
      *(v141 + 4) = sub_1000307A4(v336, v39, &v347);
      *(v141 + 12) = 2080;
      v142 = sub_1000307A4(v337, a4, &v347);
      v326 = a9;
      v143 = v142;
      a4, v144, v145, v146, v147, v148, v149, v150;
      *(v141 + 14) = v143;
      *(v141 + 22) = 2080;
      v151 = sub_1000307A4(v114, v115, &v347);
      v115, v152, v153, v154, v155, v156, v157, v158;
      *(v141 + 24) = v151;
      *(v141 + 32) = 2080;
      v159 = v116;
      v160 = [v159 description];
      v161 = sub_10009DD90();
      v163 = v162;

      v164 = sub_1000307A4(v161, v163, &v347);
      v163, v165, v166, v167, v168, v169, v170, v171;
      *(v141 + 34) = v164;
      v49 = v326;
      _os_log_impl(&_mh_execute_header, v117, v118, "Error in %s %s, reporting as %s, NSError: %s", v141, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v115, v172, v173, v174, v175, v176, v177, v178;
      a4, v179, v180, v181, v182, v183, v184, v185;
    }

    (*(v344 + 8))(v109, v345);
    v105 = 0;
    v186 = v331;
    v102 = v339;
    v187 = &v358;
    goto LABEL_34;
  }

  v51 = *(a5 + 40);
  if (v51 == 255)
  {
    v186 = v16;
    v105 = v341;
    v102 = v342;
    v187 = &v360;
LABEL_34:
    v103 = *(v187 - 32);
    goto LABEL_38;
  }

  v326 = a9;
  v52 = a5[1];
  v357 = *a5;
  v358 = v52;
  v359 = *(a5 + 4);
  v53 = v346;
  sub_100032380(v16, v342, v341, v340, v346, v343);
  v54 = v327;
  sub_10009D9D0();

  v330 = v16;
  sub_100008658(a5, &v347, &qword_1000CB088, &unk_1000A18F0);
  v55 = sub_10009D9E0();
  v56 = sub_10009DFD0();
  a4, v57, v58, v59, v60, v61, v62, v63;
  v39, v64, v65, v66, v67, v68, v69, v70;
  sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
  v325 = v56;
  v71 = v56;
  v72 = v55;
  if (os_log_type_enabled(v55, v71))
  {
    v73 = swift_slowAlloc();
    v324 = swift_slowAlloc();
    v355 = v324;
    *v73 = 136315650;
    *(v73 + 4) = sub_1000307A4(v336, v39, &v355);
    *(v73 + 12) = 2080;
    if (a4)
    {
      v74 = v337;
    }

    else
    {
      v74 = 0;
    }

    v75 = v53;
    if (a4)
    {
      v76 = a4;
    }

    else
    {
      v76 = 0xE000000000000000;
    }

    v77 = sub_1000307A4(v74, v76, &v355);
    v78 = v76;
    v53 = v75;
    v78, v79, v80, v81, v82, v83, v84, v85;
    *(v73 + 14) = v77;
    *(v73 + 22) = 2080;
    v347 = v357;
    v348 = v358;
    v349 = v359;
    v350 = v51;
    v86 = v341;
    v87 = v340;
    v88 = v75;
    v89 = v343;
    sub_100032380(v330, v342, v341, v340, v88, v343);
    v90 = sub_10009DDA0();
    v92 = v91;
    v93 = sub_1000307A4(v90, v91, &v355);
    v92, v94, v95, v96, v97, v98, v99, v100;
    *(v73 + 24) = v93;
    _os_log_impl(&_mh_execute_header, v72, v325, "SharingError in %s %s, error: %s", v73, 0x20u);
    swift_arrayDestroy();

    sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
    (*(v344 + 8))(v54, v345);
    v101 = v89;
    v102 = v342;
    v103 = v87;
    v104 = v330;
    v105 = v86;
  }

  else
  {
    sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);

    (*(v344 + 8))(v54, v345);
    v101 = v343;
    v102 = v342;
    v103 = v340;
    v104 = v330;
    v105 = v341;
  }

  sub_100032380(v104, v102, v105, v103, v53, v101);
  sub_100032380(v104, v102, v105, v103, v53, v101);
  v186 = v104;
  v49 = v326;
LABEL_38:
  if (v49)
  {
    v188 = BYTE4(v334);
  }

  else
  {
    v188 = 0;
  }

  if (v49)
  {
    v189 = BYTE3(v334);
  }

  else
  {
    v189 = 0;
  }

  if (v49)
  {
    v190 = v49;
  }

  else
  {
    v190 = &off_1000C1A00;
  }

  *(&v348 + 1) = type metadata accessor for SPIAnalyticsEvent(0);
  v349 = &off_1000C2CF0;
  v191 = sub_10008D654(&v347);
  v192 = *(v333 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v193 = *(v333 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  *v191 = v189;
  *(v191 + 1) = v188;
  v191[1] = v190;
  v191[2] = v192;
  v191[3] = v193;
  v191[4] = v186;
  v194 = v186;
  v342 = v102;
  v191[5] = v102;
  v191[6] = v105;
  v340 = v103;
  v195 = v346;
  v191[7] = v103;
  v191[8] = v195;
  *(v191 + 72) = v343;
  swift_storeEnumTagMultiPayload();
  sub_100008658(&v347, &v353, &qword_1000CB798, &qword_1000A27F0);
  v341 = v105;
  if (v354)
  {
    sub_10008D5D8(&v353, &v355);

    v196 = v328;
    sub_10009D9D0();
    sub_10008D5F0(&v355, &v353);
    v197 = v338;

    v198 = sub_10009D9E0();
    v199 = sub_10009DFF0();
    v197, v200, v201, v202, v203, v204, v205, v206;
    v207 = os_log_type_enabled(v198, v199);
    v330 = v194;
    if (v207)
    {
      v208 = swift_slowAlloc();
      v351[0] = swift_slowAlloc();
      *v208 = 136315394;
      *(v208 + 4) = sub_1000307A4(v336, v197, v351);
      *(v208 + 12) = 2080;
      sub_1000067C8(&v353, v354);
      v209 = sub_10003BB34();
      v211 = v210;
      sub_10000670C(&v353);
      v212 = sub_1000307A4(v209, v211, v351);
      v211, v213, v214, v215, v216, v217, v218, v219;
      *(v208 + 14) = v212;
      _os_log_impl(&_mh_execute_header, v198, v199, "Finishing %s, sending event %s", v208, 0x16u);
      swift_arrayDestroy();
      v220 = v339;

      v221 = *(v344 + 8);
      v221(v196, v345);
    }

    else
    {

      v221 = *(v344 + 8);
      v221(v196, v345);
      sub_10000670C(&v353);
      v220 = v339;
    }

    v227 = sub_1000067C8(&v355, v356);
    sub_100079DD8(v227);
    v228 = v332;
    sub_10009D9D0();
    sub_10008D5F0(&v355, &v353);

    v229 = v329;
    v230 = sub_10009D9E0();
    v231 = sub_10009DFF0();
    v220, v232, v233, v234, v235, v236, v237, v238;

    if (os_log_type_enabled(v230, v231))
    {
      v239 = swift_slowAlloc();
      v352 = swift_slowAlloc();
      *v239 = 136315650;
      v240 = *&v229[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8];
      v351[0] = *&v229[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier];
      v351[1] = v240;

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v241 = sub_10009DDA0();
      v243 = v242;
      v244 = sub_1000307A4(v241, v242, &v352);
      v243, v245, v246, v247, v248, v249, v250, v251;
      *(v239 + 4) = v244;
      *(v239 + 12) = 2080;
      sub_1000067C8(&v353, v354);
      v252 = sub_10003C060();
      sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
      v253 = sub_10009DD10();
      v255 = v254;
      v252, v254, v256, v257, v258, v259, v260, v261;
      sub_10000670C(&v353);
      v262 = sub_1000307A4(v253, v255, &v352);
      v255, v263, v264, v265, v266, v267, v268, v269;
      *(v239 + 14) = v262;
      *(v239 + 22) = 2080;
      *(v239 + 24) = sub_1000307A4(v331, v220, &v352);
      _os_log_impl(&_mh_execute_header, v230, v231, "Requester: %s, event detail is: %s\n%s", v239, 0x20u);
      swift_arrayDestroy();

      v221(v332, v345);
    }

    else
    {

      v221(v228, v345);
      sub_10000670C(&v353);
    }

    v224 = v346;
    v225 = v338;
    v186 = v330;
    v226 = 0x73736563637553;
    sub_1000067C8(&v355, v356);
    if (sub_10003CCE4())
    {
      v226 = 0x7272652068746957;
      v222 = 0xEA0000000000726FLL;
    }

    else
    {
      v222 = 0xE700000000000000;
    }

    sub_10000670C(&v355);
    v223 = v335;
  }

  else
  {

    sub_100008728(&v353, &qword_1000CB798, &qword_1000A27F0);
    v222 = 0xE700000000000000;
    v223 = v335;
    v224 = v346;
    v225 = v338;
    v226 = 0x73736563637553;
  }

  sub_10009D9D0();

  v270 = sub_10009D9E0();
  v271 = sub_10009DFF0();
  v222, v272, v273, v274, v275, v276, v277, v278;
  v225, v279, v280, v281, v282, v283, v284, v285;
  if (os_log_type_enabled(v270, v271))
  {
    v288 = swift_slowAlloc();
    v289 = swift_slowAlloc();
    v346 = v224;
    v355 = v289;
    *v288 = 136315394;
    v290 = sub_1000307A4(v336, v225, &v355);
    v225, v291, v292, v293, v294, v295, v296, v297;
    *(v288 + 4) = v290;
    *(v288 + 12) = 2080;
    v298 = sub_1000307A4(v226, v222, &v355);
    v222, v299, v300, v301, v302, v303, v304, v305;
    *(v288 + 14) = v298;
    _os_log_impl(&_mh_execute_header, v270, v271, "Finished %s: %s.", v288, 0x16u);
    swift_arrayDestroy();

    sub_10003C04C(v186, v342, v341, v340, v346, v343, v306, v307);
  }

  else
  {
    sub_10003C04C(v186, v342, v341, v340, v224, v343, v286, v287);
    v225, v308, v309, v310, v311, v312, v313, v314;
    v222, v315, v316, v317, v318, v319, v320, v321;
  }

  (*(v344 + 8))(v223, v345);
  return sub_100008728(&v347, &qword_1000CB798, &qword_1000A27F0);
}

uint64_t sub_10007D55C(uint64_t a1, unint64_t a2, uint64_t a3, _TtC13SPIHelper_iOS9SPIHelper *a4, __int128 *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v344 = a8;
  v338 = a7;
  v339 = a4;
  v348 = a3;
  v343 = a9;
  v14 = *(a5 + 1);
  v351 = *a5;
  v356 = v14;
  v15 = *(a5 + 3);
  v350 = *(a5 + 2);
  v352 = v15;
  v357 = *(a5 + 4);
  v16 = *(a5 + 40);
  v355 = sub_10009D9F0();
  v354 = *(v355 - 8);
  v17 = __chkstk_darwin(v355);
  v19 = &v334 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v334 - v21;
  v23 = __chkstk_darwin(v20);
  v341 = &v334 - v24;
  v25 = __chkstk_darwin(v23);
  v337 = &v334 - v26;
  __chkstk_darwin(v25);
  v336 = &v334 - v27;
  v28 = sub_10009DE60();
  v30 = v29;
  sub_1000300B8(v28, v29, a1, a2);
  v32 = v31;
  v30, v31, v33, v34, v35, v36, v37, v38;
  v349 = a2;
  v340 = a1;
  if (v32)
  {
    v347 = 0;
    v39 = 0xE000000000000000;
  }

  else
  {
    sub_10009DE70();
    v41 = v40;
    v347 = sub_10009DDD0();
    v39 = v42;
    v41, v42, v43, v44, v45, v46, v47, v48;
  }

  v342 = a10;
  v49 = v357;
  v345 = v22;
  v346 = v39;
  if (a6)
  {
    v50 = v339;
    if (v339)
    {
      v51 = a6;
      v49 = v50;
    }

    else
    {
      v104 = a6;
      v105 = [v104 description];
      v348 = sub_10009DD90();
      v49 = v106;
    }

    v107 = [a6 code];
    v108 = 0xED0000726F727265;
    v109 = 0x206C6172656E6567;
    if (v107 == 12)
    {
      v110 = 12;
    }

    else
    {
      v110 = 11;
    }

    if (v107 == 12)
    {
      v109 = 0xD000000000000018;
      v108 = 0x80000001000A77D0;
    }

    if (v107 == 10)
    {
      v111 = 13;
    }

    else
    {
      v111 = v110;
    }

    if (v107 == 10)
    {
      v109 = 0xD000000000000019;
    }

    v356 = v109;
    if (v107 == 10)
    {
      v112 = 0x80000001000A77B0;
    }

    else
    {
      v112 = v108;
    }

    swift_bridgeObjectRetain_n();
    v113 = v349;
    swift_bridgeObjectRetain_n();
    v114 = v336;
    sub_10009D9D0();
    v115 = a6;
    v116 = v114;
    v117 = v115;

    v118 = sub_10009D9E0();
    v119 = sub_10009DFD0();

    v112, v120, v121, v122, v123, v124, v125, v126;
    v49, v127, v128, v129, v130, v131, v132, v133;
    v39, v134, v135, v136, v137, v138, v139, v140;
    v141 = os_log_type_enabled(v118, v119);
    v353 = v111;
    if (v141)
    {
      v142 = swift_slowAlloc();
      v357 = v49;
      v143 = v142;
      *&v358 = swift_slowAlloc();
      *v143 = 136315906;
      *(v143 + 4) = sub_1000307A4(v347, v39, &v358);
      *(v143 + 12) = 2080;
      v144 = sub_1000307A4(v348, v357, &v358);
      v357, v145, v146, v147, v148, v149, v150, v151;
      *(v143 + 14) = v144;
      *(v143 + 22) = 2080;
      v152 = sub_1000307A4(v356, v112, &v358);
      v112, v153, v154, v155, v156, v157, v158, v159;
      *(v143 + 24) = v152;
      *(v143 + 32) = 2080;
      v160 = v117;
      v161 = [v160 description];
      v162 = sub_10009DD90();
      v164 = v163;

      v165 = sub_1000307A4(v162, v164, &v358);
      v166 = v164;
      v39 = v346;
      v166, v167, v168, v169, v170, v171, v172, v173;
      *(v143 + 34) = v165;
      _os_log_impl(&_mh_execute_header, v118, v119, "Error in %s %s, reporting as %s, NSError: %s", v143, 0x2Au);
      swift_arrayDestroy();

      v49 = v357;

      (*(v354 + 8))(v116, v355);
      v89 = 0;
      v103 = v340;
      v81 = v349;
    }

    else
    {

      v112, v174, v175, v176, v177, v178, v179, v180;
      v49, v181, v182, v183, v184, v185, v186, v187;

      (*(v354 + 8))(v116, v355);
      v89 = 0;
      v103 = v340;
      v81 = v113;
    }

    v188 = &v369;
    goto LABEL_34;
  }

  v52 = v16;
  v53 = *(a5 + 40);
  v353 = v16;
  if (v53 == 255)
  {
    v89 = v350;
    v103 = v351;
    v81 = v356;
    v188 = &v371;
LABEL_34:
    v189 = *(v188 - 32);
    goto LABEL_38;
  }

  v54 = v19;
  LODWORD(v336) = v53;
  v55 = a5[1];
  v368 = *a5;
  v369 = v55;
  v370 = *(a5 + 4);
  sub_100032380(v351, v356, v350, v352, v357, v16);
  sub_10009D9D0();
  v56 = v339;

  v57 = v39;
  sub_100008658(a5, &v358, &qword_1000CB088, &unk_1000A18F0);
  v58 = sub_10009D9E0();
  v59 = sub_10009DFD0();
  v56, v60, v61, v62, v63, v64, v65, v66;
  v39, v67, v68, v69, v70, v71, v72, v73;
  sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
  v335 = v59;
  v74 = v59;
  v75 = v58;
  if (os_log_type_enabled(v58, v74))
  {
    v76 = swift_slowAlloc();
    v334 = swift_slowAlloc();
    v366 = v334;
    *v76 = 136315650;
    *(v76 + 4) = sub_1000307A4(v347, v57, &v366);
    *(v76 + 12) = 2080;
    if (v56)
    {
      v77 = v348;
    }

    else
    {
      v77 = 0;
    }

    if (v56)
    {
      v78 = v56;
    }

    else
    {
      v78 = 0xE000000000000000;
    }

    v79 = sub_1000307A4(v77, v78, &v366);
    v80 = v78;
    v81 = v356;
    v80, v82, v83, v84, v85, v86, v87, v88;
    *(v76 + 14) = v79;
    *(v76 + 22) = 2080;
    v358 = v368;
    v359 = v369;
    v360 = v370;
    v361 = v336;
    v89 = v350;
    v90 = v352;
    sub_100032380(v351, v81, v350, v352, v49, v52);
    v91 = sub_10009DDA0();
    v93 = v92;
    v94 = sub_1000307A4(v91, v92, &v366);
    v348 = v54;
    v95 = v94;
    v93, v96, v97, v98, v99, v100, v101, v102;
    *(v76 + 24) = v95;
    _os_log_impl(&_mh_execute_header, v75, v335, "SharingError in %s %s, error: %s", v76, 0x20u);
    swift_arrayDestroy();

    sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
    (*(v354 + 8))(v348, v355);
    v103 = v351;
  }

  else
  {
    sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);

    (*(v354 + 8))(v54, v355);
    v89 = v350;
    v90 = v352;
    v103 = v351;
    v81 = v356;
  }

  sub_100032380(v103, v81, v89, v90, v49, v52);
  sub_100032380(v103, v81, v89, v90, v49, v52);
  v39 = v346;
  v189 = v90;
LABEL_38:
  v348 = 0x73736563637553;
  v190 = *(v344 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName);
  v191 = *(v344 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName + 8);

  v192 = sub_100045D24(v343, v190, v191);
  v194 = v193;
  v191, v193, v195, v196, v197, v198, v199, v200;
  *(&v359 + 1) = type metadata accessor for SPIAnalyticsEvent(0);
  v360 = &off_1000C2CF0;
  v201 = sub_10008D654(&v358);
  v202 = *(v342 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v203 = *(v342 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  *v201 = v192;
  v201[1] = v194;
  v201[2] = v202;
  v201[3] = v203;
  v201[4] = v103;
  v201[5] = v81;
  v356 = v81;
  v201[6] = v89;
  v201[7] = v189;
  v201[8] = v49;
  *(v201 + 72) = v353;
  swift_storeEnumTagMultiPayload();
  sub_100008658(&v358, &v364, &qword_1000CB798, &qword_1000A27F0);
  v357 = v49;
  v352 = v189;
  if (v365)
  {
    v351 = v103;
    v350 = v89;
    sub_10008D5D8(&v364, &v366);

    v204 = v337;
    sub_10009D9D0();
    sub_10008D5F0(&v366, &v364);

    v205 = sub_10009D9E0();
    v206 = sub_10009DFF0();
    v39, v207, v208, v209, v210, v211, v212, v213;
    if (os_log_type_enabled(v205, v206))
    {
      v214 = swift_slowAlloc();
      v362[0] = swift_slowAlloc();
      *v214 = 136315394;
      *(v214 + 4) = sub_1000307A4(v347, v39, v362);
      *(v214 + 12) = 2080;
      sub_1000067C8(&v364, v365);
      v215 = sub_10003BB34();
      v217 = v216;
      sub_10000670C(&v364);
      v218 = sub_1000307A4(v215, v217, v362);
      v217, v219, v220, v221, v222, v223, v224, v225;
      *(v214 + 14) = v218;
      _os_log_impl(&_mh_execute_header, v205, v206, "Finishing %s, sending event %s", v214, 0x16u);
      swift_arrayDestroy();

      v226 = *(v354 + 8);
      v226(v204, v355);
    }

    else
    {

      v226 = *(v354 + 8);
      v226(v204, v355);
      sub_10000670C(&v364);
    }

    v231 = v341;
    v232 = v349;
    v230 = v356;
    v233 = sub_1000067C8(&v366, v367);
    sub_100079DD8(v233);
    sub_10009D9D0();
    sub_10008D5F0(&v366, &v364);

    v234 = v338;
    v235 = sub_10009D9E0();
    v236 = sub_10009DFF0();
    v232, v237, v238, v239, v240, v241, v242, v243;

    v244 = os_log_type_enabled(v235, v236);
    v229 = v353;
    if (v244)
    {
      v245 = swift_slowAlloc();
      v363 = swift_slowAlloc();
      *v245 = 136315650;
      v246 = *&v234[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8];
      v362[0] = *&v234[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier];
      v362[1] = v246;

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v247 = sub_10009DDA0();
      v249 = v248;
      v250 = v232;
      v251 = sub_1000307A4(v247, v248, &v363);
      v249, v252, v253, v254, v255, v256, v257, v258;
      *(v245 + 4) = v251;
      *(v245 + 12) = 2080;
      sub_1000067C8(&v364, v365);
      v259 = sub_10003C060();
      sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
      v260 = sub_10009DD10();
      v262 = v261;
      v259, v261, v263, v264, v265, v266, v267, v268;
      sub_10000670C(&v364);
      v269 = sub_1000307A4(v260, v262, &v363);
      v262, v270, v271, v272, v273, v274, v275, v276;
      *(v245 + 14) = v269;
      *(v245 + 22) = 2080;
      *(v245 + 24) = sub_1000307A4(v340, v250, &v363);
      _os_log_impl(&_mh_execute_header, v235, v236, "Requester: %s, event detail is: %s\n%s", v245, 0x20u);
      swift_arrayDestroy();

      v230 = v356;

      v226(v341, v355);
    }

    else
    {

      v226(v231, v355);
      sub_10000670C(&v364);
    }

    v228 = v345;
    v49 = v357;
    v39 = v346;
    sub_1000067C8(&v366, v367);
    v277 = sub_10003CCE4();
    v278 = 0x7272652068746957;
    if (!v277)
    {
      v278 = 0x73736563637553;
    }

    v348 = v278;
    if (v277)
    {
      v227 = 0xEA0000000000726FLL;
    }

    else
    {
      v227 = 0xE700000000000000;
    }

    sub_10000670C(&v366);
    v89 = v350;
    v103 = v351;
  }

  else
  {

    sub_100008728(&v364, &qword_1000CB798, &qword_1000A27F0);
    v227 = 0xE700000000000000;
    v228 = v345;
    v229 = v353;
    v230 = v356;
  }

  sub_10009D9D0();

  v279 = sub_10009D9E0();
  v280 = sub_10009DFF0();
  v227, v281, v282, v283, v284, v285, v286, v287;
  v39, v288, v289, v290, v291, v292, v293, v294;
  if (os_log_type_enabled(v279, v280))
  {
    v297 = swift_slowAlloc();
    v353 = v229;
    v298 = v297;
    v299 = v103;
    v366 = swift_slowAlloc();
    *v298 = 136315394;
    v300 = v228;
    v301 = sub_1000307A4(v347, v39, &v366);
    v39, v302, v303, v304, v305, v306, v307, v308;
    *(v298 + 4) = v301;
    *(v298 + 12) = 2080;
    v309 = sub_1000307A4(v348, v227, &v366);
    v227, v310, v311, v312, v313, v314, v315, v316;
    *(v298 + 14) = v309;
    _os_log_impl(&_mh_execute_header, v279, v280, "Finished %s: %s.", v298, 0x16u);
    swift_arrayDestroy();

    sub_10003C04C(v299, v356, v89, v352, v357, v353, v317, v318);

    (*(v354 + 8))(v300, v355);
  }

  else
  {
    sub_10003C04C(v103, v230, v89, v352, v49, v229, v295, v296);
    v39, v319, v320, v321, v322, v323, v324, v325;
    v227, v326, v327, v328, v329, v330, v331, v332;

    (*(v354 + 8))(v228, v355);
  }

  return sub_100008728(&v358, &qword_1000CB798, &qword_1000A27F0);
}

uint64_t sub_10007E720(uint64_t a1, _TtC13SPIHelper_iOS9SPIHelper *a2, void *a3, _TtC13SPIHelper_iOS9SPIHelper *a4, __int128 *a5, void *a6, void *a7, uint64_t a8, void *a9, uint64_t a10, unsigned int a11)
{
  v342 = a8;
  v335 = a7;
  v336 = a4;
  v345 = a3;
  v15 = *(a5 + 1);
  v352 = *a5;
  v350 = v15;
  v16 = *(a5 + 3);
  v351 = *(a5 + 2);
  v347 = v16;
  v353 = *(a5 + 4);
  v17 = *(a5 + 40);
  v349 = sub_10009D9F0();
  v348 = *(v349 - 8);
  v18 = __chkstk_darwin(v349);
  v333 = &v330 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v330 - v21;
  v23 = __chkstk_darwin(v20);
  v340 = &v330 - v24;
  v25 = __chkstk_darwin(v23);
  v334 = &v330 - v26;
  __chkstk_darwin(v25);
  v337 = (&v330 - v27);
  v28 = sub_10009DE60();
  v30 = v29;
  sub_1000300B8(v28, v29, a1, a2);
  v32 = v31;
  v30, v31, v33, v34, v35, v36, v37, v38;
  v338 = a1;
  if (v32)
  {
    v344 = 0;
    v39 = 0xE000000000000000;
  }

  else
  {
    sub_10009DE70();
    v41 = v40;
    v344 = sub_10009DDD0();
    v39 = v42;
    v41, v42, v43, v44, v45, v46, v47, v48;
  }

  v341 = a11;
  v346 = a9;
  v343 = v22;
  v339 = a2;
  if (a6)
  {
    v49 = v336;
    if (v336)
    {
      v50 = a6;
      v51 = v49;
    }

    else
    {
      v107 = a6;
      v108 = [v107 description];
      v345 = sub_10009DD90();
      v51 = v109;
    }

    v110 = [a6 code];
    v111 = 0xED0000726F727265;
    v112 = 0x206C6172656E6567;
    if (v110 == 12)
    {
      v113 = 12;
    }

    else
    {
      v113 = 11;
    }

    if (v110 == 12)
    {
      v112 = 0xD000000000000018;
      v111 = 0x80000001000A77D0;
    }

    if (v110 == 10)
    {
      v52 = 13;
    }

    else
    {
      v52 = v113;
    }

    if (v110 == 10)
    {
      v114 = 0xD000000000000019;
    }

    else
    {
      v114 = v112;
    }

    if (v110 == 10)
    {
      v115 = 0x80000001000A77B0;
    }

    else
    {
      v115 = v111;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v116 = v337;
    sub_10009D9D0();
    v117 = a6;

    v118 = a2;
    v119 = sub_10009D9E0();
    v120 = sub_10009DFD0();

    v115, v121, v122, v123, v124, v125, v126, v127;
    v51, v128, v129, v130, v131, v132, v133, v134;
    v39, v135, v136, v137, v138, v139, v140, v141;
    if (os_log_type_enabled(v119, v120))
    {
      v142 = swift_slowAlloc();
      v353 = swift_slowAlloc();
      *&v354 = v353;
      *v142 = 136315906;
      *(v142 + 4) = sub_1000307A4(v344, v39, &v354);
      *(v142 + 12) = 2080;
      v143 = sub_1000307A4(v345, v51, &v354);
      LODWORD(v336) = v52;
      v144 = v143;
      v51, v145, v146, v147, v148, v149, v150, v151;
      *(v142 + 14) = v144;
      *(v142 + 22) = 2080;
      v152 = sub_1000307A4(v114, v115, &v354);
      v115, v153, v154, v155, v156, v157, v158, v159;
      *(v142 + 24) = v152;
      *(v142 + 32) = 2080;
      v160 = v117;
      v161 = [v160 description];
      v162 = sub_10009DD90();
      v164 = v163;

      v165 = sub_1000307A4(v162, v164, &v354);
      v166 = v164;
      v55 = v51;
      v52 = v336;
      v166, v167, v168, v169, v170, v171, v172, v173;
      *(v142 + 34) = v165;
      _os_log_impl(&_mh_execute_header, v119, v120, "Error in %s %s, reporting as %s, NSError: %s", v142, 0x2Au);
      swift_arrayDestroy();

      (*(v348 + 8))(v337, v349);
      v104 = 0;
      v105 = v338;
      v350 = v339;
      v347 = v345;
    }

    else
    {

      v115, v174, v175, v176, v177, v178, v179, v180;
      v51, v181, v182, v183, v184, v185, v186, v187;

      (*(v348 + 8))(v116, v349);
      v104 = 0;
      v105 = v338;
      v350 = v118;
      v347 = v345;
      v55 = v51;
    }
  }

  else
  {
    v52 = v17;
    v53 = *(a5 + 40);
    if (v53 == 255)
    {
      v104 = v351;
      v105 = v352;
      v55 = v353;
    }

    else
    {
      v54 = a5[1];
      v364 = *a5;
      v365 = v54;
      v366 = *(a5 + 4);
      v55 = v353;
      sub_100032380(v352, v350, v351, v347, v353, v52);
      sub_10009D9D0();
      v56 = v336;

      sub_100008658(a5, &v354, &qword_1000CB088, &unk_1000A18F0);
      v57 = sub_10009D9E0();
      v58 = sub_10009DFD0();
      v56, v59, v60, v61, v62, v63, v64, v65;
      v39, v66, v67, v68, v69, v70, v71, v72;
      sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
      v332 = v58;
      v337 = v57;
      if (os_log_type_enabled(v57, v58))
      {
        v73 = swift_slowAlloc();
        v331 = swift_slowAlloc();
        v362 = v331;
        *v73 = 136315650;
        *(v73 + 4) = sub_1000307A4(v344, v39, &v362);
        *(v73 + 12) = 2080;
        v74 = v55;
        v75 = v39;
        v76 = v74;
        v77 = v52;
        if (v56)
        {
          v78 = v345;
        }

        else
        {
          v78 = 0;
        }

        if (v56)
        {
          v79 = v56;
        }

        else
        {
          v79 = 0xE000000000000000;
        }

        v80 = v78;
        v52 = v77;
        v81 = v76;
        v39 = v75;
        v55 = v81;
        v82 = sub_1000307A4(v80, v79, &v362);
        v79, v83, v84, v85, v86, v87, v88, v89;
        *(v73 + 14) = v82;
        *(v73 + 22) = 2080;
        v354 = v364;
        v355 = v365;
        v356 = v366;
        v357 = v53;
        v90 = v351;
        v91 = v347;
        sub_100032380(v352, v350, v351, v347, v55, v52);
        v92 = sub_10009DDA0();
        v94 = v93;
        v95 = sub_1000307A4(v92, v93, &v362);
        v94, v96, v97, v98, v99, v100, v101, v102;
        *(v73 + 24) = v95;
        v103 = v337;
        _os_log_impl(&_mh_execute_header, v337, v332, "SharingError in %s %s, error: %s", v73, 0x20u);
        swift_arrayDestroy();

        sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
        (*(v348 + 8))(v333, v349);
        v104 = v90;
        v105 = v352;
        v106 = v350;
      }

      else
      {
        sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);

        (*(v348 + 8))(v333, v349);
        v104 = v351;
        v105 = v352;
        v106 = v350;
        v91 = v347;
      }

      sub_100032380(v105, v106, v104, v91, v55, v52);
      sub_100032380(v105, v106, v104, v91, v55, v52);
    }
  }

  *(&v355 + 1) = type metadata accessor for SPIAnalyticsEvent(0);
  v356 = &off_1000C2CF0;
  v188 = sub_10008D654(&v354);
  v351 = v104;
  v352 = v105;
  v353 = v55;
  if (v346)
  {
    v189 = *(a10 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName);
    v190 = *(a10 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName + 8);
    v191 = v188;

    v192 = v346;
    v193 = sub_100045D24(v192, v189, v190);
    v195 = v194;
    v190, v194, v196, v197, v198, v199, v200, v201;

    v188 = v191;
    v105 = v352;
    v104 = v351;
  }

  else
  {
    v193 = 0;
    v195 = 0xE000000000000000;
  }

  v202 = *(v342 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v203 = *(v342 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  *v188 = v193;
  v188[1] = v195;
  v188[2] = v202;
  v188[3] = v203;
  v204 = v350;
  v188[4] = v105;
  v188[5] = v204;
  v205 = v347;
  v188[6] = v104;
  v188[7] = v205;
  v188[8] = v353;
  *(v188 + 72) = v52;
  swift_storeEnumTagMultiPayload();
  sub_100008658(&v354, &v360, &qword_1000CB798, &qword_1000A27F0);
  if (v361)
  {
    sub_10008D5D8(&v360, &v362);

    v206 = v334;
    sub_10009D9D0();
    sub_10008D5F0(&v362, &v360);

    v207 = sub_10009D9E0();
    v208 = sub_10009DFF0();
    v39, v209, v210, v211, v212, v213, v214, v215;
    v216 = os_log_type_enabled(v207, v208);
    LODWORD(v336) = v52;
    if (v216)
    {
      v217 = swift_slowAlloc();
      v358[0] = swift_slowAlloc();
      *v217 = 136315394;
      *(v217 + 4) = sub_1000307A4(v344, v39, v358);
      *(v217 + 12) = 2080;
      sub_1000067C8(&v360, v361);
      v218 = sub_10003BB34();
      v220 = v219;
      sub_10000670C(&v360);
      v221 = sub_1000307A4(v218, v220, v358);
      v220, v222, v223, v224, v225, v226, v227, v228;
      *(v217 + 14) = v221;
      _os_log_impl(&_mh_execute_header, v207, v208, "Finishing %s, sending event %s", v217, 0x16u);
      swift_arrayDestroy();

      v229 = *(v348 + 8);
      v229(v206, v349);
    }

    else
    {

      v229 = *(v348 + 8);
      v229(v206, v349);
      sub_10000670C(&v360);
    }

    v234 = sub_1000067C8(&v362, v363);
    sub_100079DD8(v234);
    v235 = v340;
    sub_10009D9D0();
    sub_10008D5F0(&v362, &v360);
    v236 = v339;

    v237 = v335;
    v238 = sub_10009D9E0();
    v239 = sub_10009DFF0();
    v236, v240, v241, v242, v243, v244, v245, v246;

    if (os_log_type_enabled(v238, v239))
    {
      v247 = swift_slowAlloc();
      v359 = swift_slowAlloc();
      *v247 = 136315650;
      v248 = *&v237[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8];
      v358[0] = *&v237[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier];
      v358[1] = v248;

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v249 = sub_10009DDA0();
      v251 = v250;
      v252 = sub_1000307A4(v249, v250, &v359);
      v251, v253, v254, v255, v256, v257, v258, v259;
      *(v247 + 4) = v252;
      *(v247 + 12) = 2080;
      sub_1000067C8(&v360, v361);
      v260 = sub_10003C060();
      sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
      v261 = sub_10009DD10();
      v263 = v262;
      v260, v262, v264, v265, v266, v267, v268, v269;
      sub_10000670C(&v360);
      v270 = sub_1000307A4(v261, v263, &v359);
      v263, v271, v272, v273, v274, v275, v276, v277;
      *(v247 + 14) = v270;
      *(v247 + 22) = 2080;
      *(v247 + 24) = sub_1000307A4(v338, v236, &v359);
      _os_log_impl(&_mh_execute_header, v238, v239, "Requester: %s, event detail is: %s\n%s", v247, 0x20u);
      swift_arrayDestroy();

      v229(v340, v349);
    }

    else
    {

      v229(v235, v349);
      sub_10000670C(&v360);
    }

    v231 = v343;
    v232 = v353;
    v52 = v336;
    sub_1000067C8(&v362, v363);
    v233 = 0x73736563637553;
    if (sub_10003CCE4())
    {
      v233 = 0x7272652068746957;
      v230 = 0xEA0000000000726FLL;
    }

    else
    {
      v230 = 0xE700000000000000;
    }

    sub_10000670C(&v362);
  }

  else
  {

    sub_100008728(&v360, &qword_1000CB798, &qword_1000A27F0);
    v230 = 0xE700000000000000;
    v231 = v343;
    v232 = v353;
    v233 = 0x73736563637553;
  }

  sub_10009D9D0();

  v278 = sub_10009D9E0();
  v279 = sub_10009DFF0();
  v230, v280, v281, v282, v283, v284, v285, v286;
  v39, v287, v288, v289, v290, v291, v292, v293;
  if (os_log_type_enabled(v278, v279))
  {
    v296 = swift_slowAlloc();
    v362 = swift_slowAlloc();
    *v296 = 136315394;
    v297 = sub_1000307A4(v344, v39, &v362);
    v39, v298, v299, v300, v301, v302, v303, v304;
    *(v296 + 4) = v297;
    *(v296 + 12) = 2080;
    v305 = sub_1000307A4(v233, v230, &v362);
    v230, v306, v307, v308, v309, v310, v311, v312;
    *(v296 + 14) = v305;
    _os_log_impl(&_mh_execute_header, v278, v279, "Finished %s: %s.", v296, 0x16u);
    swift_arrayDestroy();

    sub_10003C04C(v352, v350, v351, v347, v353, v52, v313, v314);
  }

  else
  {
    sub_10003C04C(v352, v350, v351, v347, v232, v52, v294, v295);
    v39, v315, v316, v317, v318, v319, v320, v321;
    v230, v322, v323, v324, v325, v326, v327, v328;
  }

  (*(v348 + 8))(v231, v349);
  return sub_100008728(&v354, &qword_1000CB798, &qword_1000A27F0);
}

uint64_t sub_10007F8E0(uint64_t a1, unint64_t a2, void *a3, _TtC13SPIHelper_iOS9SPIHelper *a4, __int128 *a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v327 = a8;
  v322 = a7;
  v325 = a4;
  v331 = a3;
  v13 = *(a5 + 1);
  v337 = *a5;
  v14 = *(a5 + 2);
  v336 = *(a5 + 3);
  v329 = *(a5 + 4);
  LODWORD(v334) = *(a5 + 40);
  v339 = sub_10009D9F0();
  v338 = *(v339 - 8);
  v15 = __chkstk_darwin(v339);
  v17 = &v317 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v328 = &v317 - v19;
  v20 = __chkstk_darwin(v18);
  v324 = &v317 - v21;
  v22 = __chkstk_darwin(v20);
  v321 = &v317 - v23;
  __chkstk_darwin(v22);
  v333 = (&v317 - v24);
  v25 = sub_10009DE60();
  v27 = v26;
  sub_1000300B8(v25, v26, a1, a2);
  v29 = v28;
  v27, v28, v30, v31, v32, v33, v34, v35;
  v332 = a2;
  v323 = a1;
  if (v29)
  {
    v330 = 0;
    v335 = 0xE000000000000000;
  }

  else
  {
    sub_10009DE70();
    v37 = v36;
    v330 = sub_10009DDD0();
    v335 = v38;
    v37, v38, v39, v40, v41, v42, v43, v44;
  }

  v326 = a9;
  v45 = v329;
  if (a6)
  {
    v46 = v325;
    if (v325)
    {
      v47 = a6;
      v45 = v46;
    }

    else
    {
      v102 = a6;
      v103 = [v102 description];
      v331 = sub_10009DD90();
      v45 = v104;
    }

    v105 = v333;

    v106 = [a6 code];
    v107 = 0xED0000726F727265;
    v108 = 0x206C6172656E6567;
    if (v106 == 12)
    {
      v109 = 12;
    }

    else
    {
      v109 = 11;
    }

    if (v106 == 12)
    {
      v108 = 0xD000000000000018;
      v107 = 0x80000001000A77D0;
    }

    if (v106 == 10)
    {
      v109 = 13;
    }

    LODWORD(v334) = v109;
    if (v106 == 10)
    {
      v110 = 0xD000000000000019;
    }

    else
    {
      v110 = v108;
    }

    if (v106 == 10)
    {
      v111 = 0x80000001000A77B0;
    }

    else
    {
      v111 = v107;
    }

    swift_bridgeObjectRetain_n();
    v112 = v332;
    swift_bridgeObjectRetain_n();
    sub_10009D9D0();
    v113 = a6;

    v114 = v335;

    v115 = sub_10009D9E0();
    v116 = sub_10009DFD0();

    v111, v117, v118, v119, v120, v121, v122, v123;
    v45, v124, v125, v126, v127, v128, v129, v130;
    v114, v131, v132, v133, v134, v135, v136, v137;
    if (os_log_type_enabled(v115, v116))
    {
      v138 = swift_slowAlloc();
      v337 = swift_slowAlloc();
      *&v340 = v337;
      *v138 = 136315906;
      *(v138 + 4) = sub_1000307A4(v330, v114, &v340);
      *(v138 + 12) = 2080;
      v139 = sub_1000307A4(v331, v45, &v340);
      v45, v140, v141, v142, v143, v144, v145, v146;
      *(v138 + 14) = v139;
      *(v138 + 22) = 2080;
      v147 = sub_1000307A4(v110, v111, &v340);
      v111, v148, v149, v150, v151, v152, v153, v154;
      *(v138 + 24) = v147;
      *(v138 + 32) = 2080;
      v155 = v113;
      v156 = [v155 description];
      v157 = sub_10009DD90();
      v159 = v158;

      v160 = sub_1000307A4(v157, v159, &v340);
      v159, v161, v162, v163, v164, v165, v166, v167;
      *(v138 + 34) = v160;
      _os_log_impl(&_mh_execute_header, v115, v116, "Error in %s %s, reporting as %s, NSError: %s", v138, 0x2Au);
      swift_arrayDestroy();

      (*(v338 + 8))(v105, v339);
      v48 = 0;
      v87 = v323;
      v49 = v332;
    }

    else
    {

      v111, v168, v169, v170, v171, v172, v173, v174;
      v45, v175, v176, v177, v178, v179, v180, v181;

      (*(v338 + 8))(v105, v339);
      v48 = 0;
      v87 = v323;
      v49 = v112;
    }

    v182 = v331;
    v101 = v334;
  }

  else
  {
    v48 = v14;
    v49 = v13;
    v50 = v17;
    v51 = v325;
    if (*(a5 + 40) == 255)
    {
      v101 = v334;
      v87 = v337;
      v182 = v336;
    }

    else
    {
      v318 = *(a5 + 40);
      v52 = a5[1];
      v350 = *a5;
      v351 = v52;
      v352 = *(a5 + 4);
      v53 = v13;
      v54 = v336;
      sub_100032380(v337, v53, v14, v336, v329, v334);
      sub_10009D9D0();

      v55 = v335;

      v333 = v49;
      sub_100008658(a5, &v340, &qword_1000CB088, &unk_1000A18F0);
      v320 = v50;
      v56 = sub_10009D9E0();
      v57 = sub_10009DFD0();
      v51, v58, v59, v60, v61, v62, v63, v64;
      v55, v65, v66, v67, v68, v69, v70, v71;
      sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
      v319 = v57;
      v72 = v57;
      v73 = v56;
      if (os_log_type_enabled(v56, v72))
      {
        v74 = swift_slowAlloc();
        v317 = swift_slowAlloc();
        v348 = v317;
        *v74 = 136315650;
        *(v74 + 4) = sub_1000307A4(v330, v55, &v348);
        *(v74 + 12) = 2080;
        v75 = v51 == 0;
        v76 = v51;
        if (v51)
        {
          v77 = v331;
        }

        else
        {
          v77 = 0;
        }

        if (v75)
        {
          v78 = 0xE000000000000000;
        }

        else
        {
          v78 = v76;
        }

        v79 = sub_1000307A4(v77, v78, &v348);
        v78, v80, v81, v82, v83, v84, v85, v86;
        *(v74 + 14) = v79;
        *(v74 + 22) = 2080;
        v45 = v329;
        v340 = v350;
        v341 = v351;
        v342 = v352;
        v343 = v318;
        v87 = v337;
        v88 = v333;
        v89 = v334;
        sub_100032380(v337, v333, v48, v336, v329, v334);
        v90 = sub_10009DDA0();
        v92 = v91;
        v93 = sub_1000307A4(v90, v91, &v348);
        v92, v94, v95, v96, v97, v98, v99, v100;
        *(v74 + 24) = v93;
        v54 = v336;
        _os_log_impl(&_mh_execute_header, v73, v319, "SharingError in %s %s, error: %s", v74, 0x20u);
        swift_arrayDestroy();

        sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
        (*(v338 + 8))(v320, v339);
        v101 = v89;
        v49 = v88;
      }

      else
      {
        sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);

        (*(v338 + 8))(v320, v339);
        v87 = v337;
        v101 = v334;
        v49 = v333;
      }

      sub_100032380(v87, v49, v48, v54, v45, v101);
      sub_100032380(v87, v49, v48, v54, v45, v101);
      v182 = v54;
    }
  }

  v334 = 0x73736563637553;
  *(&v341 + 1) = type metadata accessor for SPIAnalyticsEvent(0);
  v342 = &off_1000C2CF0;
  v183 = sub_10008D654(&v340);
  v184 = v327;
  swift_beginAccess();
  v185 = *(v184 + 16);
  v186 = *(v184 + 24);
  v187 = *(v326 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v188 = *(v326 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  *v183 = v185;
  v183[1] = v186;
  v183[2] = v187;
  v183[3] = v188;
  v183[4] = v87;
  v183[5] = v49;
  v331 = v48;
  v183[6] = v48;
  v183[7] = v182;
  v336 = v182;
  v183[8] = v45;
  *(v183 + 72) = v101;
  swift_storeEnumTagMultiPayload();
  sub_100008658(&v340, &v346, &qword_1000CB798, &qword_1000A27F0);
  v337 = v87;
  v333 = v49;
  if (v347)
  {
    sub_10008D5D8(&v346, &v348);

    v189 = v321;
    sub_10009D9D0();
    sub_10008D5F0(&v348, &v346);
    v190 = v335;

    v191 = sub_10009D9E0();
    v192 = sub_10009DFF0();
    v190, v193, v194, v195, v196, v197, v198, v199;
    if (os_log_type_enabled(v191, v192))
    {
      v200 = swift_slowAlloc();
      v344[0] = swift_slowAlloc();
      *v200 = 136315394;
      *(v200 + 4) = sub_1000307A4(v330, v190, v344);
      *(v200 + 12) = 2080;
      sub_1000067C8(&v346, v347);
      v201 = sub_10003BB34();
      v203 = v202;
      sub_10000670C(&v346);
      v204 = sub_1000307A4(v201, v203, v344);
      v203, v205, v206, v207, v208, v209, v210, v211;
      *(v200 + 14) = v204;
      _os_log_impl(&_mh_execute_header, v191, v192, "Finishing %s, sending event %s", v200, 0x16u);
      swift_arrayDestroy();

      v212 = *(v338 + 8);
      (v212)(v189, v339);
    }

    else
    {

      v212 = *(v338 + 8);
      (v212)(v189, v339);
      sub_10000670C(&v346);
    }

    v216 = sub_1000067C8(&v348, v349);
    sub_100079DD8(v216);
    v217 = v324;
    sub_10009D9D0();
    sub_10008D5F0(&v348, &v346);
    v218 = v332;

    v219 = v322;
    v220 = sub_10009D9E0();
    v221 = sub_10009DFF0();
    v218, v222, v223, v224, v225, v226, v227, v228;

    if (os_log_type_enabled(v220, v221))
    {
      v229 = swift_slowAlloc();
      v329 = v212;
      v230 = v229;
      v345 = swift_slowAlloc();
      *v230 = 136315650;
      v231 = *&v219[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8];
      v344[0] = *&v219[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier];
      v344[1] = v231;

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v232 = sub_10009DDA0();
      v234 = v233;
      v235 = sub_1000307A4(v232, v233, &v345);
      v234, v236, v237, v238, v239, v240, v241, v242;
      *(v230 + 4) = v235;
      *(v230 + 12) = 2080;
      sub_1000067C8(&v346, v347);
      v243 = sub_10003C060();
      sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
      v244 = sub_10009DD10();
      v246 = v245;
      v243, v245, v247, v248, v249, v250, v251, v252;
      sub_10000670C(&v346);
      v253 = sub_1000307A4(v244, v246, &v345);
      v246, v254, v255, v256, v257, v258, v259, v260;
      *(v230 + 14) = v253;
      *(v230 + 22) = 2080;
      *(v230 + 24) = sub_1000307A4(v323, v218, &v345);
      _os_log_impl(&_mh_execute_header, v220, v221, "Requester: %s, event detail is: %s\n%s", v230, 0x20u);
      swift_arrayDestroy();

      (v329)(v324, v339);
    }

    else
    {

      (v212)(v217, v339);
      sub_10000670C(&v346);
    }

    v214 = v328;
    v215 = v335;
    v87 = v337;
    v49 = v333;
    sub_1000067C8(&v348, v349);
    v261 = sub_10003CCE4();
    v262 = 0x7272652068746957;
    if (!v261)
    {
      v262 = 0x73736563637553;
    }

    v334 = v262;
    if (v261)
    {
      v213 = 0xEA0000000000726FLL;
    }

    else
    {
      v213 = 0xE700000000000000;
    }

    sub_10000670C(&v348);
  }

  else
  {

    sub_100008728(&v346, &qword_1000CB798, &qword_1000A27F0);
    v213 = 0xE700000000000000;
    v214 = v328;
    v215 = v335;
  }

  sub_10009D9D0();

  v263 = sub_10009D9E0();
  v264 = sub_10009DFF0();
  v213, v265, v266, v267, v268, v269, v270, v271;
  v215, v272, v273, v274, v275, v276, v277, v278;
  if (os_log_type_enabled(v263, v264))
  {
    v281 = swift_slowAlloc();
    v348 = swift_slowAlloc();
    *v281 = 136315394;
    v282 = sub_1000307A4(v330, v215, &v348);
    v215, v283, v284, v285, v286, v287, v288, v289;
    *(v281 + 4) = v282;
    *(v281 + 12) = 2080;
    v290 = v101;
    v291 = v45;
    v292 = sub_1000307A4(v334, v213, &v348);
    v213, v293, v294, v295, v296, v297, v298, v299;
    *(v281 + 14) = v292;
    _os_log_impl(&_mh_execute_header, v263, v264, "Finished %s: %s.", v281, 0x16u);
    swift_arrayDestroy();

    sub_10003C04C(v337, v333, v331, v336, v291, v290, v300, v301);
  }

  else
  {
    sub_10003C04C(v87, v49, v331, v336, v45, v101, v279, v280);
    v215, v302, v303, v304, v305, v306, v307, v308;
    v213, v309, v310, v311, v312, v313, v314, v315;
  }

  (*(v338 + 8))(v214, v339);
  return sub_100008728(&v340, &qword_1000CB798, &qword_1000A27F0);
}

uint64_t sub_100080A3C(uint64_t a1, _TtC13SPIHelper_iOS9SPIHelper *a2, void *a3, _TtC13SPIHelper_iOS9SPIHelper *a4, __int128 *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v339 = a8;
  v334 = a7;
  v342 = a3;
  v338 = a9;
  v15 = *(a5 + 1);
  v351 = *a5;
  v350 = v15;
  v16 = *(a5 + 3);
  v347 = *(a5 + 2);
  v346 = v16;
  v352 = *(a5 + 4);
  v348 = *(a5 + 40);
  v344 = sub_10009D9F0();
  v349 = *(v344 - 8);
  v17 = __chkstk_darwin(v344);
  v19 = &v331 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v331 - v21;
  v23 = __chkstk_darwin(v20);
  v337 = &v331 - v24;
  v25 = __chkstk_darwin(v23);
  v333 = &v331 - v26;
  __chkstk_darwin(v25);
  v335 = &v331 - v27;
  v28 = sub_10009DE60();
  v30 = v29;
  sub_1000300B8(v28, v29, a1, a2);
  v32 = v31;
  v30, v31, v33, v34, v35, v36, v37, v38;
  v345 = a2;
  v336 = a1;
  if (v32)
  {
    v341 = 0;
    v39 = 0xE000000000000000;
  }

  else
  {
    sub_10009DE70();
    v41 = v40;
    v341 = sub_10009DDD0();
    v39 = v42;
    v41, v42, v43, v44, v45, v46, v47, v48;
  }

  v49 = v344;
  v340 = v22;
  v343 = v39;
  if (a6)
  {
    v50 = v345;
    if (a4)
    {
      v51 = a6;
      v52 = a4;
    }

    else
    {
      v101 = a6;
      v102 = [v101 description];
      v342 = sub_10009DD90();
      v52 = v103;
    }

    v104 = [a6 code];
    v105 = 0xED0000726F727265;
    v106 = 0x206C6172656E6567;
    if (v104 == 12)
    {
      v107 = 12;
    }

    else
    {
      v107 = 11;
    }

    if (v104 == 12)
    {
      v106 = 0xD000000000000018;
      v105 = 0x80000001000A77D0;
    }

    if (v104 == 10)
    {
      v107 = 13;
    }

    v348 = v107;
    if (v104 == 10)
    {
      v108 = 0xD000000000000019;
    }

    else
    {
      v108 = v106;
    }

    if (v104 == 10)
    {
      v109 = 0x80000001000A77B0;
    }

    else
    {
      v109 = v105;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v110 = v335;
    sub_10009D9D0();
    v111 = a6;
    v112 = v50;
    v113 = v111;

    v114 = sub_10009D9E0();
    v115 = sub_10009DFD0();

    v109, v116, v117, v118, v119, v120, v121, v122;
    v52, v123, v124, v125, v126, v127, v128, v129;
    v39, v130, v131, v132, v133, v134, v135, v136;
    if (os_log_type_enabled(v114, v115))
    {
      v137 = swift_slowAlloc();
      *&v353 = swift_slowAlloc();
      *v137 = 136315906;
      *(v137 + 4) = sub_1000307A4(v341, v39, &v353);
      *(v137 + 12) = 2080;
      v138 = v52;
      v139 = sub_1000307A4(v342, v52, &v353);
      v138, v140, v141, v142, v143, v144, v145, v146;
      *(v137 + 14) = v139;
      *(v137 + 22) = 2080;
      v147 = sub_1000307A4(v108, v109, &v353);
      v109, v148, v149, v150, v151, v152, v153, v154;
      *(v137 + 24) = v147;
      *(v137 + 32) = 2080;
      v49 = v344;
      v155 = v113;
      v156 = [v155 description];
      v157 = sub_10009DD90();
      v159 = v158;

      v160 = sub_1000307A4(v157, v159, &v353);
      v161 = v159;
      v52 = v138;
      v39 = v343;
      v161, v162, v163, v164, v165, v166, v167, v168;
      *(v137 + 34) = v160;
      _os_log_impl(&_mh_execute_header, v114, v115, "Error in %s %s, reporting as %s, NSError: %s", v137, 0x2Au);
      swift_arrayDestroy();

      (*(v349 + 8))(v335, v49);
      v347 = 0;
      v351 = v336;
      v350 = v345;
    }

    else
    {

      v109, v169, v170, v171, v172, v173, v174, v175;
      v52, v176, v177, v178, v179, v180, v181, v182;

      (*(v349 + 8))(v110, v49);
      v347 = 0;
      v351 = v336;
      v350 = v112;
    }

    v346 = v342;
  }

  else
  {
    v53 = *(a5 + 40);
    if (v53 == 255)
    {
      v52 = v352;
    }

    else
    {
      v54 = v19;
      v55 = a5[1];
      v363 = *a5;
      v364 = v55;
      v365 = *(a5 + 4);
      v52 = v352;
      sub_100032380(v351, v350, v347, v346, v352, v348);
      sub_10009D9D0();

      sub_100008658(a5, &v353, &qword_1000CB088, &unk_1000A18F0);
      v56 = sub_10009D9E0();
      v57 = sub_10009DFD0();
      a4, v58, v59, v60, v61, v62, v63, v64;
      v39, v65, v66, v67, v68, v69, v70, v71;
      sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
      LODWORD(v335) = v57;
      if (os_log_type_enabled(v56, v57))
      {
        v72 = swift_slowAlloc();
        v332 = swift_slowAlloc();
        v361 = v332;
        *v72 = 136315650;
        *(v72 + 4) = sub_1000307A4(v341, v39, &v361);
        *(v72 + 12) = 2080;
        v73 = v52;
        if (a4)
        {
          v74 = v342;
        }

        else
        {
          v74 = 0;
        }

        if (a4)
        {
          v75 = a4;
        }

        else
        {
          v75 = 0xE000000000000000;
        }

        v76 = v74;
        v52 = v73;
        v77 = sub_1000307A4(v76, v75, &v361);
        v75, v78, v79, v80, v81, v82, v83, v84;
        *(v72 + 14) = v77;
        *(v72 + 22) = 2080;
        v49 = v344;
        v353 = v363;
        v354 = v364;
        v355 = v365;
        v356 = v53;
        v342 = v54;
        v85 = v347;
        v86 = v346;
        v87 = v348;
        sub_100032380(v351, v350, v347, v346, v52, v348);
        v88 = sub_10009DDA0();
        v90 = v89;
        v91 = sub_1000307A4(v88, v89, &v361);
        v90, v92, v93, v94, v95, v96, v97, v98;
        *(v72 + 24) = v91;
        _os_log_impl(&_mh_execute_header, v56, v335, "SharingError in %s %s, error: %s", v72, 0x20u);
        swift_arrayDestroy();

        sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
        (*(v349 + 8))(v342, v49);
        v99 = v351;
        v100 = v350;
      }

      else
      {
        sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);

        v49 = v344;
        (*(v349 + 8))(v54, v344);
        v87 = v348;
        v85 = v347;
        v99 = v351;
        v100 = v350;
        v86 = v346;
      }

      sub_100032380(v99, v100, v85, v86, v52, v87);
      sub_100032380(v99, v100, v85, v86, v52, v87);
      v39 = v343;
    }
  }

  *(&v354 + 1) = type metadata accessor for SPIAnalyticsEvent(0);
  v355 = &off_1000C2CF0;
  v183 = sub_10008D654(&v353);
  v184 = v338;
  swift_beginAccess();
  v185 = *(v184 + 16);
  v352 = v52;
  if (v185)
  {
    v186 = *(a10 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName);
    v187 = *(a10 + OBJC_IVAR____TtC13SPIHelper_iOS16ModelDelegateSPI_appName + 8);

    v188 = v185;
    v189 = sub_100045D24(v188, v186, v187);
    v191 = v190;
    v187, v190, v192, v193, v194, v195, v196, v197;

    v39 = v343;
  }

  else
  {
    v189 = 0;
    v191 = 0xE000000000000000;
  }

  v198 = &qword_1000CB000;
  v199 = 0x73736563637553;
  v200 = *(v339 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v201 = *(v339 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  *v183 = v189;
  v183[1] = v191;
  v183[2] = v200;
  v183[3] = v201;
  v202 = v350;
  v183[4] = v351;
  v183[5] = v202;
  v203 = v346;
  v183[6] = v347;
  v183[7] = v203;
  v183[8] = v352;
  *(v183 + 72) = v348;
  swift_storeEnumTagMultiPayload();
  sub_100008658(&v353, &v359, &qword_1000CB798, &qword_1000A27F0);
  if (v360)
  {
    sub_10008D5D8(&v359, &v361);

    v204 = v333;
    sub_10009D9D0();
    sub_10008D5F0(&v361, &v359);

    v205 = sub_10009D9E0();
    v206 = sub_10009DFF0();
    v39, v207, v208, v209, v210, v211, v212, v213;
    if (os_log_type_enabled(v205, v206))
    {
      v214 = v204;
      v215 = swift_slowAlloc();
      v357[0] = swift_slowAlloc();
      *v215 = 136315394;
      *(v215 + 4) = sub_1000307A4(v341, v39, v357);
      *(v215 + 12) = 2080;
      sub_1000067C8(&v359, v360);
      v216 = sub_10003BB34();
      v218 = v217;
      sub_10000670C(&v359);
      v219 = sub_1000307A4(v216, v218, v357);
      v218, v220, v221, v222, v223, v224, v225, v226;
      *(v215 + 14) = v219;
      _os_log_impl(&_mh_execute_header, v205, v206, "Finishing %s, sending event %s", v215, 0x16u);
      swift_arrayDestroy();

      v227 = *(v349 + 8);
      v228 = v214;
      v198 = &qword_1000CB000;
      v227(v228, v49);
    }

    else
    {

      v227 = *(v349 + 8);
      v227(v204, v49);
      sub_10000670C(&v359);
    }

    v232 = sub_1000067C8(&v361, v362);
    sub_100079DD8(v232);
    v233 = v337;
    sub_10009D9D0();
    sub_10008D5F0(&v361, &v359);
    v234 = v345;

    v235 = v334;
    v236 = sub_10009D9E0();
    v237 = sub_10009DFF0();
    v234, v238, v239, v240, v241, v242, v243, v244;

    if (os_log_type_enabled(v236, v237))
    {
      v245 = swift_slowAlloc();
      v358 = swift_slowAlloc();
      *v245 = 136315650;
      v246 = &v235[v198[237]];
      v247 = v246[1];
      v357[0] = *v246;
      v357[1] = v247;

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v248 = sub_10009DDA0();
      v250 = v249;
      v251 = sub_1000307A4(v248, v249, &v358);
      v250, v252, v253, v254, v255, v256, v257, v258;
      *(v245 + 4) = v251;
      *(v245 + 12) = 2080;
      sub_1000067C8(&v359, v360);
      v259 = sub_10003C060();
      sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
      v260 = sub_10009DD10();
      v262 = v261;
      v259, v261, v263, v264, v265, v266, v267, v268;
      sub_10000670C(&v359);
      v269 = sub_1000307A4(v260, v262, &v358);
      v262, v270, v271, v272, v273, v274, v275, v276;
      *(v245 + 14) = v269;
      *(v245 + 22) = 2080;
      v49 = v344;
      *(v245 + 24) = sub_1000307A4(v336, v345, &v358);
      _os_log_impl(&_mh_execute_header, v236, v237, "Requester: %s, event detail is: %s\n%s", v245, 0x20u);
      swift_arrayDestroy();

      v227(v337, v49);
    }

    else
    {

      v227(v233, v49);
      sub_10000670C(&v359);
    }

    v230 = v340;
    v231 = v352;
    v39 = v343;
    sub_1000067C8(&v361, v362);
    if (sub_10003CCE4())
    {
      v199 = 0x7272652068746957;
      v229 = 0xEA0000000000726FLL;
    }

    else
    {
      v229 = 0xE700000000000000;
    }

    sub_10000670C(&v361);
  }

  else
  {

    sub_100008728(&v359, &qword_1000CB798, &qword_1000A27F0);
    v229 = 0xE700000000000000;
    v230 = v340;
    v231 = v352;
  }

  sub_10009D9D0();

  v277 = sub_10009D9E0();
  v278 = sub_10009DFF0();
  v229, v279, v280, v281, v282, v283, v284, v285;
  v39, v286, v287, v288, v289, v290, v291, v292;
  if (os_log_type_enabled(v277, v278))
  {
    v295 = swift_slowAlloc();
    v361 = swift_slowAlloc();
    *v295 = 136315394;
    v296 = sub_1000307A4(v341, v39, &v361);
    v297 = v39;
    v298 = v296;
    v297, v299, v300, v301, v302, v303, v304, v305;
    *(v295 + 4) = v298;
    *(v295 + 12) = 2080;
    v306 = sub_1000307A4(v199, v229, &v361);
    v229, v307, v308, v309, v310, v311, v312, v313;
    *(v295 + 14) = v306;
    _os_log_impl(&_mh_execute_header, v277, v278, "Finished %s: %s.", v295, 0x16u);
    swift_arrayDestroy();

    sub_10003C04C(v351, v350, v347, v346, v231, v348, v314, v315);
  }

  else
  {
    sub_10003C04C(v351, v350, v347, v346, v231, v348, v293, v294);
    v39, v316, v317, v318, v319, v320, v321, v322;
    v229, v323, v324, v325, v326, v327, v328, v329;
  }

  (*(v349 + 8))(v230, v49);
  return sub_100008728(&v353, &qword_1000CB798, &qword_1000A27F0);
}

uint64_t sub_100081BCC(uint64_t a1, unint64_t a2, void *a3, _TtC13SPIHelper_iOS9SPIHelper *a4, __int128 *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v332 = a8;
  v327 = a7;
  v338 = a4;
  v337 = a3;
  v14 = *(a5 + 1);
  v342 = *a5;
  v341 = v14;
  v15 = *(a5 + 3);
  v343 = *(a5 + 2);
  v345 = v15;
  v16 = *(a5 + 4);
  v17 = *(a5 + 40);
  v344 = sub_10009D9F0();
  v340 = *(v344 - 8);
  v18 = __chkstk_darwin(v344);
  v325 = &v322 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v322 - v21;
  v23 = __chkstk_darwin(v20);
  v330 = &v322 - v24;
  v25 = __chkstk_darwin(v23);
  v326 = &v322 - v26;
  __chkstk_darwin(v25);
  v334 = &v322 - v27;
  v28 = sub_10009DE60();
  v30 = v29;
  sub_1000300B8(v28, v29, a1, a2);
  v32 = v31;
  v30, v31, v33, v34, v35, v36, v37, v38;
  v339 = a2;
  v329 = a1;
  if (v32)
  {
    v336 = 0;
    v39 = 0xE000000000000000;
  }

  else
  {
    sub_10009DE70();
    v41 = v40;
    v336 = sub_10009DDD0();
    v39 = v42;
    v41, v42, v43, v44, v45, v46, v47, v48;
  }

  v49 = a10;
  v331 = a9;
  v50 = v345;
  v333 = v22;
  v335 = v39;
  if (a6)
  {
    v51 = v338;
    v328 = a10;
    if (v338)
    {
      v52 = a6;
      v53 = v51;
    }

    else
    {
      v104 = a6;
      v105 = [v104 description];
      v337 = sub_10009DD90();
      v53 = v106;
    }

    v107 = v334;

    v108 = [a6 code];
    v109 = 0xED0000726F727265;
    v110 = 0x206C6172656E6567;
    if (v108 == 12)
    {
      v111 = 12;
    }

    else
    {
      v111 = 11;
    }

    if (v108 == 12)
    {
      v110 = 0xD000000000000018;
      v109 = 0x80000001000A77D0;
    }

    if (v108 == 10)
    {
      v112 = 13;
    }

    else
    {
      v112 = v111;
    }

    if (v108 == 10)
    {
      v110 = 0xD000000000000019;
    }

    v345 = v110;
    if (v108 == 10)
    {
      v113 = 0x80000001000A77B0;
    }

    else
    {
      v113 = v109;
    }

    swift_bridgeObjectRetain_n();
    v114 = v339;
    swift_bridgeObjectRetain_n();
    sub_10009D9D0();
    v115 = a6;

    v116 = sub_10009D9E0();
    v117 = sub_10009DFD0();

    v113, v118, v119, v120, v121, v122, v123, v124;
    v53, v125, v126, v127, v128, v129, v130, v131;
    v39, v132, v133, v134, v135, v136, v137, v138;
    if (os_log_type_enabled(v116, v117))
    {
      v139 = swift_slowAlloc();
      v338 = v53;
      v140 = v139;
      *&v346 = swift_slowAlloc();
      *v140 = 136315906;
      *(v140 + 4) = sub_1000307A4(v336, v39, &v346);
      v141 = v112;
      *(v140 + 12) = 2080;
      v142 = sub_1000307A4(v337, v338, &v346);
      v338, v143, v144, v145, v146, v147, v148, v149;
      *(v140 + 14) = v142;
      *(v140 + 22) = 2080;
      v150 = sub_1000307A4(v345, v113, &v346);
      v113, v151, v152, v153, v154, v155, v156, v157;
      *(v140 + 24) = v150;
      *(v140 + 32) = 2080;
      v158 = v115;
      v159 = [v158 description];
      v160 = sub_10009DD90();
      v162 = v161;

      v163 = sub_1000307A4(v160, v162, &v346);
      v164 = v162;
      v39 = v335;
      v164, v165, v166, v167, v168, v169, v170, v171;
      *(v140 + 34) = v163;
      _os_log_impl(&_mh_execute_header, v116, v117, "Error in %s %s, reporting as %s, NSError: %s", v140, 0x2Au);
      swift_arrayDestroy();

      v53 = v338;

      (*(v340 + 8))(v334, v344);
      v102 = 0;
      v88 = v329;
      v103 = v339;
      v50 = v337;
    }

    else
    {

      v113, v172, v173, v174, v175, v176, v177, v178;
      v53, v179, v180, v181, v182, v183, v184, v185;

      (*(v340 + 8))(v107, v344);
      v102 = 0;
      v88 = v329;
      v103 = v114;
      v50 = v337;
      v141 = v112;
    }
  }

  else
  {
    v53 = v16;
    v54 = v17;
    if (*(a5 + 40) == 255)
    {
      v102 = v343;
      v88 = v342;
      v103 = v341;
      v141 = v54;
      goto LABEL_37;
    }

    LODWORD(v334) = *(a5 + 40);
    v328 = a10;
    v55 = a5[1];
    v356 = *a5;
    v357 = v55;
    v358 = *(a5 + 4);
    sub_100032380(v342, v341, v343, v345, v16, v17);
    v56 = v325;
    sub_10009D9D0();
    v57 = v338;

    v58 = v39;
    sub_100008658(a5, &v346, &qword_1000CB088, &unk_1000A18F0);
    v59 = sub_10009D9E0();
    v60 = sub_10009DFD0();
    v57, v61, v62, v63, v64, v65, v66, v67;
    v39, v68, v69, v70, v71, v72, v73, v74;
    sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
    v324 = v60;
    v75 = v60;
    v76 = v59;
    if (os_log_type_enabled(v59, v75))
    {
      v77 = swift_slowAlloc();
      v323 = swift_slowAlloc();
      v354 = v323;
      *v77 = 136315650;
      *(v77 + 4) = sub_1000307A4(v336, v58, &v354);
      *(v77 + 12) = 2080;
      if (v57)
      {
        v78 = v337;
      }

      else
      {
        v78 = 0;
      }

      if (v57)
      {
        v79 = v57;
      }

      else
      {
        v79 = 0xE000000000000000;
      }

      v80 = sub_1000307A4(v78, v79, &v354);
      v79, v81, v82, v83, v84, v85, v86, v87;
      *(v77 + 14) = v80;
      *(v77 + 22) = 2080;
      v346 = v356;
      v347 = v357;
      v348 = v358;
      v349 = v334;
      v88 = v342;
      v89 = v341;
      v90 = v343;
      sub_100032380(v342, v341, v343, v50, v53, v54);
      v91 = sub_10009DDA0();
      v93 = v92;
      v94 = sub_1000307A4(v91, v92, &v354);
      v93, v95, v96, v97, v98, v99, v100, v101;
      *(v77 + 24) = v94;
      v50 = v345;
      _os_log_impl(&_mh_execute_header, v76, v324, "SharingError in %s %s, error: %s", v77, 0x20u);
      swift_arrayDestroy();

      sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
      (*(v340 + 8))(v325, v344);
      v102 = v90;
      v103 = v89;
    }

    else
    {
      sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);

      (*(v340 + 8))(v56, v344);
      v102 = v343;
      v88 = v342;
      v103 = v341;
    }

    sub_100032380(v88, v103, v102, v50, v53, v54);
    sub_100032380(v88, v103, v102, v50, v53, v54);
    v141 = v54;
    v39 = v335;
  }

  v49 = v328;
LABEL_37:
  v334 = 0x73736563637553;
  *(&v347 + 1) = type metadata accessor for SPIAnalyticsEvent(0);
  v348 = &off_1000C2CF0;
  v186 = sub_10008D654(&v346);
  v187 = *(v49 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v188 = *(v49 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  v189 = v332;
  v190 = v331;
  *v186 = v332;
  v186[1] = v190;
  v186[2] = v187;
  v186[3] = v188;
  v186[4] = v88;
  v186[5] = v103;
  v186[6] = v102;
  v186[7] = v50;
  v345 = v50;
  v186[8] = v53;
  LODWORD(v337) = v141;
  *(v186 + 72) = v141;
  swift_storeEnumTagMultiPayload();
  sub_100008658(&v346, &v352, &qword_1000CB798, &qword_1000A27F0);
  v343 = v102;
  v342 = v88;
  v341 = v103;
  if (v353)
  {
    v338 = v53;
    sub_10008D5D8(&v352, &v354);

    v191 = v189;
    v192 = v326;
    sub_10009D9D0();
    sub_10008D5F0(&v354, &v352);

    v193 = sub_10009D9E0();
    v194 = sub_10009DFF0();
    v39, v195, v196, v197, v198, v199, v200, v201;
    v202 = os_log_type_enabled(v193, v194);
    v203 = v340;
    if (v202)
    {
      v204 = swift_slowAlloc();
      v350[0] = swift_slowAlloc();
      *v204 = 136315394;
      *(v204 + 4) = sub_1000307A4(v336, v39, v350);
      *(v204 + 12) = 2080;
      sub_1000067C8(&v352, v353);
      v205 = sub_10003BB34();
      v206 = v192;
      v208 = v207;
      sub_10000670C(&v352);
      v209 = sub_1000307A4(v205, v208, v350);
      v208, v210, v211, v212, v213, v214, v215, v216;
      *(v204 + 14) = v209;
      _os_log_impl(&_mh_execute_header, v193, v194, "Finishing %s, sending event %s", v204, 0x16u);
      swift_arrayDestroy();

      v217 = *(v203 + 8);
      v217(v206, v344);
    }

    else
    {

      v217 = *(v203 + 8);
      v217(v192, v344);
      sub_10000670C(&v352);
    }

    v222 = v330;
    v223 = v339;
    v221 = v337;
    v224 = sub_1000067C8(&v354, v355);
    sub_100079DD8(v224);
    sub_10009D9D0();
    sub_10008D5F0(&v354, &v352);

    v225 = v327;
    v226 = sub_10009D9E0();
    v227 = sub_10009DFF0();
    v223, v228, v229, v230, v231, v232, v233, v234;

    if (os_log_type_enabled(v226, v227))
    {
      v235 = swift_slowAlloc();
      v351 = swift_slowAlloc();
      *v235 = 136315650;
      v236 = *&v225[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8];
      v350[0] = *&v225[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier];
      v350[1] = v236;

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v237 = sub_10009DDA0();
      v239 = v238;
      v240 = v223;
      v241 = sub_1000307A4(v237, v238, &v351);
      v239, v242, v243, v244, v245, v246, v247, v248;
      *(v235 + 4) = v241;
      *(v235 + 12) = 2080;
      sub_1000067C8(&v352, v353);
      v249 = sub_10003C060();
      sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
      v250 = sub_10009DD10();
      v252 = v251;
      v249, v251, v253, v254, v255, v256, v257, v258;
      sub_10000670C(&v352);
      v259 = sub_1000307A4(v250, v252, &v351);
      v252, v260, v261, v262, v263, v264, v265, v266;
      *(v235 + 14) = v259;
      *(v235 + 22) = 2080;
      *(v235 + 24) = sub_1000307A4(v329, v240, &v351);
      _os_log_impl(&_mh_execute_header, v226, v227, "Requester: %s, event detail is: %s\n%s", v235, 0x20u);
      swift_arrayDestroy();

      v203 = v340;

      v217(v330, v344);
    }

    else
    {

      v217(v222, v344);
      sub_10000670C(&v352);
    }

    v220 = v333;
    v53 = v338;
    v39 = v335;
    sub_1000067C8(&v354, v355);
    v267 = sub_10003CCE4();
    v268 = 0x7272652068746957;
    if (!v267)
    {
      v268 = 0x73736563637553;
    }

    v334 = v268;
    if (v267)
    {
      v219 = 0xEA0000000000726FLL;
    }

    else
    {
      v219 = 0xE700000000000000;
    }

    sub_10000670C(&v354);
  }

  else
  {

    v218 = v189;
    sub_100008728(&v352, &qword_1000CB798, &qword_1000A27F0);
    v219 = 0xE700000000000000;
    v220 = v333;
    v221 = v337;
    v203 = v340;
  }

  sub_10009D9D0();

  v269 = sub_10009D9E0();
  v270 = sub_10009DFF0();
  v219, v271, v272, v273, v274, v275, v276, v277;
  v39, v278, v279, v280, v281, v282, v283, v284;
  if (os_log_type_enabled(v269, v270))
  {
    v287 = v53;
    v288 = swift_slowAlloc();
    v354 = swift_slowAlloc();
    *v288 = 136315394;
    v289 = sub_1000307A4(v336, v39, &v354);
    v39, v290, v291, v292, v293, v294, v295, v296;
    *(v288 + 4) = v289;
    *(v288 + 12) = 2080;
    v297 = sub_1000307A4(v334, v219, &v354);
    v219, v298, v299, v300, v301, v302, v303, v304;
    *(v288 + 14) = v297;
    _os_log_impl(&_mh_execute_header, v269, v270, "Finished %s: %s.", v288, 0x16u);
    swift_arrayDestroy();

    sub_10003C04C(v342, v341, v343, v345, v287, v337, v305, v306);
  }

  else
  {
    sub_10003C04C(v342, v341, v343, v345, v53, v221, v285, v286);
    v39, v307, v308, v309, v310, v311, v312, v313;
    v219, v314, v315, v316, v317, v318, v319, v320;
  }

  (*(v203 + 8))(v220, v344);
  return sub_100008728(&v346, &qword_1000CB798, &qword_1000A27F0);
}

uint64_t sub_100082D18(uint64_t a1, unint64_t a2, void *a3, _TtC13SPIHelper_iOS9SPIHelper *a4, __int128 *a5, void *a6, void *a7, void *a8, uint64_t a9, unsigned int a10)
{
  v331 = a8;
  v326 = a7;
  v337 = a4;
  v336 = a3;
  v330 = a10;
  v14 = *(a5 + 1);
  v341 = *a5;
  v340 = v14;
  v15 = *(a5 + 3);
  v342 = *(a5 + 2);
  v344 = v15;
  v16 = *(a5 + 4);
  v17 = *(a5 + 40);
  v343 = sub_10009D9F0();
  v339 = *(v343 - 8);
  v18 = __chkstk_darwin(v343);
  v324 = &v321 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v321 - v21;
  v23 = __chkstk_darwin(v20);
  v329 = &v321 - v24;
  v25 = __chkstk_darwin(v23);
  v325 = &v321 - v26;
  __chkstk_darwin(v25);
  v333 = &v321 - v27;
  v28 = sub_10009DE60();
  v30 = v29;
  sub_1000300B8(v28, v29, a1, a2);
  v32 = v31;
  v30, v31, v33, v34, v35, v36, v37, v38;
  v338 = a2;
  v328 = a1;
  if (v32)
  {
    v335 = 0;
    v39 = 0xE000000000000000;
  }

  else
  {
    sub_10009DE70();
    v41 = v40;
    v335 = sub_10009DDD0();
    v39 = v42;
    v41, v42, v43, v44, v45, v46, v47, v48;
  }

  v49 = a9;
  v50 = v344;
  v332 = v22;
  v334 = v39;
  if (a6)
  {
    v51 = v337;
    v327 = a9;
    if (v337)
    {
      v52 = a6;
      v53 = v51;
    }

    else
    {
      v104 = a6;
      v105 = [v104 description];
      v336 = sub_10009DD90();
      v53 = v106;
    }

    v107 = v333;

    v108 = [a6 code];
    v109 = 0xED0000726F727265;
    v110 = 0x206C6172656E6567;
    if (v108 == 12)
    {
      v111 = 12;
    }

    else
    {
      v111 = 11;
    }

    if (v108 == 12)
    {
      v110 = 0xD000000000000018;
      v109 = 0x80000001000A77D0;
    }

    if (v108 == 10)
    {
      v112 = 13;
    }

    else
    {
      v112 = v111;
    }

    if (v108 == 10)
    {
      v110 = 0xD000000000000019;
    }

    v344 = v110;
    if (v108 == 10)
    {
      v113 = 0x80000001000A77B0;
    }

    else
    {
      v113 = v109;
    }

    swift_bridgeObjectRetain_n();
    v114 = v338;
    swift_bridgeObjectRetain_n();
    sub_10009D9D0();
    v115 = a6;

    v116 = sub_10009D9E0();
    v117 = sub_10009DFD0();

    v113, v118, v119, v120, v121, v122, v123, v124;
    v53, v125, v126, v127, v128, v129, v130, v131;
    v39, v132, v133, v134, v135, v136, v137, v138;
    if (os_log_type_enabled(v116, v117))
    {
      v139 = swift_slowAlloc();
      v337 = v53;
      v140 = v139;
      *&v345 = swift_slowAlloc();
      *v140 = 136315906;
      *(v140 + 4) = sub_1000307A4(v335, v39, &v345);
      v141 = v112;
      *(v140 + 12) = 2080;
      v142 = sub_1000307A4(v336, v337, &v345);
      v337, v143, v144, v145, v146, v147, v148, v149;
      *(v140 + 14) = v142;
      *(v140 + 22) = 2080;
      v150 = sub_1000307A4(v344, v113, &v345);
      v113, v151, v152, v153, v154, v155, v156, v157;
      *(v140 + 24) = v150;
      *(v140 + 32) = 2080;
      v158 = v115;
      v159 = [v158 description];
      v160 = sub_10009DD90();
      v162 = v161;

      v163 = sub_1000307A4(v160, v162, &v345);
      v164 = v162;
      v39 = v334;
      v164, v165, v166, v167, v168, v169, v170, v171;
      *(v140 + 34) = v163;
      _os_log_impl(&_mh_execute_header, v116, v117, "Error in %s %s, reporting as %s, NSError: %s", v140, 0x2Au);
      swift_arrayDestroy();

      v53 = v337;

      (*(v339 + 8))(v333, v343);
      v102 = 0;
      v88 = v328;
      v103 = v338;
      v50 = v336;
    }

    else
    {

      v113, v172, v173, v174, v175, v176, v177, v178;
      v53, v179, v180, v181, v182, v183, v184, v185;

      (*(v339 + 8))(v107, v343);
      v102 = 0;
      v88 = v328;
      v103 = v114;
      v50 = v336;
      v141 = v112;
    }
  }

  else
  {
    v53 = v16;
    v54 = v17;
    if (*(a5 + 40) == 255)
    {
      v102 = v342;
      v88 = v341;
      v103 = v340;
      v141 = v54;
      goto LABEL_37;
    }

    LODWORD(v333) = *(a5 + 40);
    v327 = a9;
    v55 = a5[1];
    v355 = *a5;
    v356 = v55;
    v357 = *(a5 + 4);
    sub_100032380(v341, v340, v342, v344, v16, v17);
    v56 = v324;
    sub_10009D9D0();
    v57 = v337;

    v58 = v39;
    sub_100008658(a5, &v345, &qword_1000CB088, &unk_1000A18F0);
    v59 = sub_10009D9E0();
    v60 = sub_10009DFD0();
    v57, v61, v62, v63, v64, v65, v66, v67;
    v39, v68, v69, v70, v71, v72, v73, v74;
    sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
    v323 = v60;
    v75 = v60;
    v76 = v59;
    if (os_log_type_enabled(v59, v75))
    {
      v77 = swift_slowAlloc();
      v322 = swift_slowAlloc();
      v353 = v322;
      *v77 = 136315650;
      *(v77 + 4) = sub_1000307A4(v335, v58, &v353);
      *(v77 + 12) = 2080;
      if (v57)
      {
        v78 = v336;
      }

      else
      {
        v78 = 0;
      }

      if (v57)
      {
        v79 = v57;
      }

      else
      {
        v79 = 0xE000000000000000;
      }

      v80 = sub_1000307A4(v78, v79, &v353);
      v79, v81, v82, v83, v84, v85, v86, v87;
      *(v77 + 14) = v80;
      *(v77 + 22) = 2080;
      v345 = v355;
      v346 = v356;
      v347 = v357;
      v348 = v333;
      v88 = v341;
      v89 = v340;
      v90 = v342;
      sub_100032380(v341, v340, v342, v50, v53, v54);
      v91 = sub_10009DDA0();
      v93 = v92;
      v94 = sub_1000307A4(v91, v92, &v353);
      v93, v95, v96, v97, v98, v99, v100, v101;
      *(v77 + 24) = v94;
      v50 = v344;
      _os_log_impl(&_mh_execute_header, v76, v323, "SharingError in %s %s, error: %s", v77, 0x20u);
      swift_arrayDestroy();

      sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);
      (*(v339 + 8))(v324, v343);
      v102 = v90;
      v103 = v89;
    }

    else
    {
      sub_100008728(a5, &qword_1000CB088, &unk_1000A18F0);

      (*(v339 + 8))(v56, v343);
      v102 = v342;
      v88 = v341;
      v103 = v340;
    }

    sub_100032380(v88, v103, v102, v50, v53, v54);
    sub_100032380(v88, v103, v102, v50, v53, v54);
    v141 = v54;
    v39 = v334;
  }

  v49 = v327;
LABEL_37:
  v333 = 0x73736563637553;
  *(&v346 + 1) = type metadata accessor for SPIAnalyticsEvent(0);
  v347 = &off_1000C2CF0;
  v186 = sub_10008D654(&v345);
  v187 = *(v49 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier);
  v188 = *(v49 + OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8);
  v189 = v331;
  *v186 = v331;
  v186[1] = v187;
  v186[2] = v188;
  v186[3] = v88;
  v186[4] = v103;
  v186[5] = v102;
  v344 = v50;
  v186[6] = v50;
  v186[7] = v53;
  LODWORD(v336) = v141;
  *(v186 + 64) = v141;
  swift_storeEnumTagMultiPayload();
  sub_100008658(&v345, &v351, &qword_1000CB798, &qword_1000A27F0);
  v342 = v102;
  v341 = v88;
  v340 = v103;
  if (v352)
  {
    v337 = v53;
    sub_10008D5D8(&v351, &v353);

    v190 = v189;
    v191 = v325;
    sub_10009D9D0();
    sub_10008D5F0(&v353, &v351);

    v192 = sub_10009D9E0();
    v193 = sub_10009DFF0();
    v39, v194, v195, v196, v197, v198, v199, v200;
    v201 = os_log_type_enabled(v192, v193);
    v202 = v339;
    if (v201)
    {
      v203 = swift_slowAlloc();
      v349[0] = swift_slowAlloc();
      *v203 = 136315394;
      *(v203 + 4) = sub_1000307A4(v335, v39, v349);
      *(v203 + 12) = 2080;
      sub_1000067C8(&v351, v352);
      v204 = sub_10003BB34();
      v205 = v191;
      v207 = v206;
      sub_10000670C(&v351);
      v208 = sub_1000307A4(v204, v207, v349);
      v207, v209, v210, v211, v212, v213, v214, v215;
      *(v203 + 14) = v208;
      _os_log_impl(&_mh_execute_header, v192, v193, "Finishing %s, sending event %s", v203, 0x16u);
      swift_arrayDestroy();

      v216 = *(v202 + 8);
      v216(v205, v343);
    }

    else
    {

      v216 = *(v202 + 8);
      v216(v191, v343);
      sub_10000670C(&v351);
    }

    v221 = v329;
    v222 = v338;
    v220 = v336;
    v223 = sub_1000067C8(&v353, v354);
    sub_100079DD8(v223);
    sub_10009D9D0();
    sub_10008D5F0(&v353, &v351);

    v224 = v326;
    v225 = sub_10009D9E0();
    v226 = sub_10009DFF0();
    v222, v227, v228, v229, v230, v231, v232, v233;

    if (os_log_type_enabled(v225, v226))
    {
      v234 = swift_slowAlloc();
      v350 = swift_slowAlloc();
      *v234 = 136315650;
      v235 = *&v224[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier + 8];
      v349[0] = *&v224[OBJC_IVAR____TtC13SPIHelper_iOS9SPIHelper_requestingProcessBundleIdentifier];
      v349[1] = v235;

      sub_100003714(&qword_1000CA6A0, &qword_10009FD50);
      v236 = sub_10009DDA0();
      v238 = v237;
      v239 = v222;
      v240 = sub_1000307A4(v236, v237, &v350);
      v238, v241, v242, v243, v244, v245, v246, v247;
      *(v234 + 4) = v240;
      *(v234 + 12) = 2080;
      sub_1000067C8(&v351, v352);
      v248 = sub_10003C060();
      sub_1000037C4(0, &qword_1000CAD58, NSObject_ptr);
      v249 = sub_10009DD10();
      v251 = v250;
      v248, v250, v252, v253, v254, v255, v256, v257;
      sub_10000670C(&v351);
      v258 = sub_1000307A4(v249, v251, &v350);
      v251, v259, v260, v261, v262, v263, v264, v265;
      *(v234 + 14) = v258;
      *(v234 + 22) = 2080;
      *(v234 + 24) = sub_1000307A4(v328, v239, &v350);
      _os_log_impl(&_mh_execute_header, v225, v226, "Requester: %s, event detail is: %s\n%s", v234, 0x20u);
      swift_arrayDestroy();

      v202 = v339;

      v216(v329, v343);
    }

    else
    {

      v216(v221, v343);
      sub_10000670C(&v351);
    }

    v219 = v332;
    v53 = v337;
    v39 = v334;
    sub_1000067C8(&v353, v354);
    v266 = sub_10003CCE4();
    v267 = 0x7272652068746957;
    if (!v266)
    {
      v267 = 0x73736563637553;
    }

    v333 = v267;
    if (v266)
    {
      v218 = 0xEA0000000000726FLL;
    }

    else
    {
      v218 = 0xE700000000000000;
    }

    sub_10000670C(&v353);
  }

  else
  {

    v217 = v189;
    sub_100008728(&v351, &qword_1000CB798, &qword_1000A27F0);
    v218 = 0xE700000000000000;
    v219 = v332;
    v220 = v336;
    v202 = v339;
  }

  sub_10009D9D0();

  v268 = sub_10009D9E0();
  v269 = sub_10009DFF0();
  v218, v270, v271, v272, v273, v274, v275, v276;
  v39, v277, v278, v279, v280, v281, v282, v283;
  if (os_log_type_enabled(v268, v269))
  {
    v286 = v53;
    v287 = swift_slowAlloc();
    v353 = swift_slowAlloc();
    *v287 = 136315394;
    v288 = sub_1000307A4(v335, v39, &v353);
    v39, v289, v290, v291, v292, v293, v294, v295;
    *(v287 + 4) = v288;
    *(v287 + 12) = 2080;
    v296 = sub_1000307A4(v333, v218, &v353);
    v218, v297, v298, v299, v300, v301, v302, v303;
    *(v287 + 14) = v296;
    _os_log_impl(&_mh_execute_header, v268, v269, "Finished %s: %s.", v287, 0x16u);
    swift_arrayDestroy();

    sub_10003C04C(v341, v340, v342, v344, v286, v336, v304, v305);
  }

  else
  {
    sub_10003C04C(v341, v340, v342, v344, v53, v220, v284, v285);
    v39, v306, v307, v308, v309, v310, v311, v312;
    v218, v313, v314, v315, v316, v317, v318, v319;
  }

  (*(v202 + 8))(v219, v343);
  return sub_100008728(&v345, &qword_1000CB798, &qword_1000A27F0);
}

uint64_t sub_100083E60(uint64_t a1, uint64_t a2, _TtC13SPIHelper_iOS9SPIHelper *a3, void *a4, uint64_t a5)
{
  v10 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  __chkstk_darwin(v10 - 8);
  v12 = &v106 - v11;
  v13 = sub_10009D9F0();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15);
  v20 = &v106 - v19;
  if (a1 != 1)
  {
    if (a1)
    {
      sub_10009D9D0();

      v44 = sub_10009D9E0();
      v45 = sub_10009DFD0();
      a3, v46, v47, v48, v49, v50, v51, v52;
      if (os_log_type_enabled(v44, v45))
      {
        v110 = v13;
        v53 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v111 = v109;
        *v53 = 134218242;
        *(v53 + 4) = a1;
        *(v53 + 12) = 2080;
        v54 = sub_10009DE60();
        v56 = v55;
        sub_1000300B8(v54, v55, a2, a3);
        v58 = v57;
        v56, v57, v59, v60, v61, v62, v63, v64;
        if (v58)
        {
          v65 = 0;
          v66 = 0xE000000000000000;
        }

        else
        {
          sub_10009DE70();
          v88 = v87;
          v89 = sub_10009DDD0();
          v66 = v90;
          v88, v90, v91, v92, v93, v94, v95, v96;
          v65 = v89;
        }

        v97 = v110;
        v98 = sub_1000307A4(v65, v66, &v111);
        v66, v99, v100, v101, v102, v103, v104, v105;
        *(v53 + 14) = v98;
        _os_log_impl(&_mh_execute_header, v44, v45, "Reply called too many (%lu) times in: %s. Behavior undefined.", v53, 0x16u);
        sub_10000670C(v109);

        return (*(v14 + 8))(v17, v97);
      }

      else
      {

        return (*(v14 + 8))(v17, v13);
      }
    }

    else
    {
      sub_10009D9D0();

      v21 = sub_10009D9E0();
      v22 = sub_10009DFD0();
      a3, v23, v24, v25, v26, v27, v28, v29;
      if (os_log_type_enabled(v21, v22))
      {
        v107 = v22;
        v108 = a5;
        v109 = a4;
        v110 = v13;
        v30 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v111 = v106;
        *v30 = 136315138;
        v31 = sub_10009DE60();
        v33 = v32;
        sub_1000300B8(v31, v32, a2, a3);
        v35 = v34;
        v33, v34, v36, v37, v38, v39, v40, v41;
        if (v35)
        {
          v42 = 0;
          v43 = 0xE000000000000000;
        }

        else
        {
          sub_10009DE70();
          v68 = v67;
          v69 = sub_10009DDD0();
          v43 = v70;
          v68, v70, v71, v72, v73, v74, v75, v76;
          v42 = v69;
        }

        v77 = sub_1000307A4(v42, v43, &v111);
        v43, v78, v79, v80, v81, v82, v83, v84;
        *(v30 + 4) = v77;
        _os_log_impl(&_mh_execute_header, v21, v107, "Reply never called in: %s. Replying with defaults and internalError", v30, 0xCu);
        sub_10000670C(v106);

        (*(v14 + 8))(v20, v110);
        a4 = v109;
      }

      else
      {

        (*(v14 + 8))(v20, v13);
      }

      v85 = sub_10009D860();
      (*(*(v85 - 8) + 56))(v12, 1, 1, v85);
      v86 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:1 userInfo:0];
      (a4)(v12, 0, v86);

      return sub_100008728(v12, &qword_1000CA250, &qword_10009FDF8);
    }
  }

  return result;
}

void sub_100084378(uint64_t a1, uint64_t a2, _TtC13SPIHelper_iOS9SPIHelper *a3, void *a4, uint64_t a5)
{
  v10 = sub_10009D9F0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v101 - v15;
  if (a1 != 1)
  {
    if (a1)
    {
      sub_10009D9D0();

      v40 = sub_10009D9E0();
      v41 = sub_10009DFD0();
      a3, v42, v43, v44, v45, v46, v47, v48;
      if (os_log_type_enabled(v40, v41))
      {
        v105 = v10;
        v49 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v106 = v104;
        *v49 = 134218242;
        *(v49 + 4) = a1;
        *(v49 + 12) = 2080;
        v50 = sub_10009DE60();
        v52 = v51;
        sub_1000300B8(v50, v51, a2, a3);
        v54 = v53;
        v52, v53, v55, v56, v57, v58, v59, v60;
        if (v54)
        {
          v61 = 0;
          v62 = 0xE000000000000000;
        }

        else
        {
          sub_10009DE70();
          v83 = v82;
          v84 = sub_10009DDD0();
          v62 = v85;
          v83, v85, v86, v87, v88, v89, v90, v91;
          v61 = v84;
        }

        v92 = v105;
        v93 = sub_1000307A4(v61, v62, &v106);
        v62, v94, v95, v96, v97, v98, v99, v100;
        *(v49 + 14) = v93;
        _os_log_impl(&_mh_execute_header, v40, v41, "Reply called too many (%lu) times in: %s. Behavior undefined.", v49, 0x16u);
        sub_10000670C(v104);

        (*(v11 + 8))(v14, v92);
      }

      else
      {

        (*(v11 + 8))(v14, v10);
      }
    }

    else
    {
      sub_10009D9D0();

      v17 = sub_10009D9E0();
      v18 = sub_10009DFD0();
      a3, v19, v20, v21, v22, v23, v24, v25;
      if (os_log_type_enabled(v17, v18))
      {
        v103 = a5;
        v104 = a4;
        v105 = v10;
        v26 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v106 = v102;
        *v26 = 136315138;
        v27 = sub_10009DE60();
        v29 = v28;
        sub_1000300B8(v27, v28, a2, a3);
        v31 = v30;
        v29, v30, v32, v33, v34, v35, v36, v37;
        if (v31)
        {
          v38 = 0;
          v39 = 0xE000000000000000;
        }

        else
        {
          sub_10009DE70();
          v64 = v63;
          v65 = sub_10009DDD0();
          v39 = v66;
          v64, v66, v67, v68, v69, v70, v71, v72;
          v38 = v65;
        }

        v73 = sub_1000307A4(v38, v39, &v106);
        v39, v74, v75, v76, v77, v78, v79, v80;
        *(v26 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v17, v18, "Reply never called in: %s. Replying with defaults and internalError", v26, 0xCu);
        sub_10000670C(v102);

        (*(v11 + 8))(v16, v105);
        a4 = v104;
      }

      else
      {

        (*(v11 + 8))(v16, v10);
      }

      v81 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:1 userInfo:0];
      (a4)(0, 0, v81);
    }
  }
}

void sub_1000847E4(uint64_t a1, uint64_t a2, _TtC13SPIHelper_iOS9SPIHelper *a3, void *a4, uint64_t a5)
{
  v10 = sub_10009D9F0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v101 - v15;
  if (a1 != 1)
  {
    if (a1)
    {
      sub_10009D9D0();

      v40 = sub_10009D9E0();
      v41 = sub_10009DFD0();
      a3, v42, v43, v44, v45, v46, v47, v48;
      if (os_log_type_enabled(v40, v41))
      {
        v105 = v10;
        v49 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v106 = v104;
        *v49 = 134218242;
        *(v49 + 4) = a1;
        *(v49 + 12) = 2080;
        v50 = sub_10009DE60();
        v52 = v51;
        sub_1000300B8(v50, v51, a2, a3);
        v54 = v53;
        v52, v53, v55, v56, v57, v58, v59, v60;
        if (v54)
        {
          v61 = 0;
          v62 = 0xE000000000000000;
        }

        else
        {
          sub_10009DE70();
          v83 = v82;
          v84 = sub_10009DDD0();
          v62 = v85;
          v83, v85, v86, v87, v88, v89, v90, v91;
          v61 = v84;
        }

        v92 = v105;
        v93 = sub_1000307A4(v61, v62, &v106);
        v62, v94, v95, v96, v97, v98, v99, v100;
        *(v49 + 14) = v93;
        _os_log_impl(&_mh_execute_header, v40, v41, "Reply called too many (%lu) times in: %s. Behavior undefined.", v49, 0x16u);
        sub_10000670C(v104);

        (*(v11 + 8))(v14, v92);
      }

      else
      {

        (*(v11 + 8))(v14, v10);
      }
    }

    else
    {
      sub_10009D9D0();

      v17 = sub_10009D9E0();
      v18 = sub_10009DFD0();
      a3, v19, v20, v21, v22, v23, v24, v25;
      if (os_log_type_enabled(v17, v18))
      {
        v103 = a5;
        v104 = a4;
        v105 = v10;
        v26 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v106 = v102;
        *v26 = 136315138;
        v27 = sub_10009DE60();
        v29 = v28;
        sub_1000300B8(v27, v28, a2, a3);
        v31 = v30;
        v29, v30, v32, v33, v34, v35, v36, v37;
        if (v31)
        {
          v38 = 0;
          v39 = 0xE000000000000000;
        }

        else
        {
          sub_10009DE70();
          v64 = v63;
          v65 = sub_10009DDD0();
          v39 = v66;
          v64, v66, v67, v68, v69, v70, v71, v72;
          v38 = v65;
        }

        v73 = sub_1000307A4(v38, v39, &v106);
        v39, v74, v75, v76, v77, v78, v79, v80;
        *(v26 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v17, v18, "Reply never called in: %s. Replying with defaults and internalError", v26, 0xCu);
        sub_10000670C(v102);

        (*(v11 + 8))(v16, v105);
        a4 = v104;
      }

      else
      {

        (*(v11 + 8))(v16, v10);
      }

      v81 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:1 userInfo:0];
      (a4)(0, v81);
    }
  }
}

void sub_100084C4C(uint64_t a1, uint64_t a2, _TtC13SPIHelper_iOS9SPIHelper *a3, void (*a4)(void, void), void *a5, void *a6)
{
  v12 = sub_10009D9F0();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v103 - v17;
  if (a1 != 1)
  {
    if (a1)
    {
      sub_10009D9D0();

      v42 = sub_10009D9E0();
      v43 = sub_10009DFD0();
      a3, v44, v45, v46, v47, v48, v49, v50;
      if (os_log_type_enabled(v42, v43))
      {
        v106 = v12;
        v51 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v107 = v105;
        *v51 = 134218242;
        *(v51 + 4) = a1;
        *(v51 + 12) = 2080;
        v52 = sub_10009DE60();
        v54 = v53;
        sub_1000300B8(v52, v53, a2, a3);
        v56 = v55;
        v54, v55, v57, v58, v59, v60, v61, v62;
        if (v56)
        {
          v63 = 0;
          v64 = 0xE000000000000000;
        }

        else
        {
          sub_10009DE70();
          v85 = v84;
          v86 = sub_10009DDD0();
          v64 = v87;
          v85, v87, v88, v89, v90, v91, v92, v93;
          v63 = v86;
        }

        v94 = v106;
        v95 = sub_1000307A4(v63, v64, &v107);
        v64, v96, v97, v98, v99, v100, v101, v102;
        *(v51 + 14) = v95;
        _os_log_impl(&_mh_execute_header, v42, v43, "Reply called too many (%lu) times in: %s. Behavior undefined.", v51, 0x16u);
        sub_10000670C(v105);

        (*(v13 + 8))(v16, v94);
      }

      else
      {

        (*(v13 + 8))(v16, v12);
      }
    }

    else
    {
      sub_10009D9D0();

      v19 = sub_10009D9E0();
      v20 = sub_10009DFD0();
      a3, v21, v22, v23, v24, v25, v26, v27;
      if (os_log_type_enabled(v19, v20))
      {
        v103[1] = a5;
        v104 = a4;
        v105 = a6;
        v106 = v12;
        v28 = swift_slowAlloc();
        v103[0] = swift_slowAlloc();
        v107 = v103[0];
        *v28 = 136315138;
        v29 = sub_10009DE60();
        v31 = v30;
        sub_1000300B8(v29, v30, a2, a3);
        v33 = v32;
        v31, v32, v34, v35, v36, v37, v38, v39;
        if (v33)
        {
          v40 = 0;
          v41 = 0xE000000000000000;
        }

        else
        {
          sub_10009DE70();
          v66 = v65;
          v67 = sub_10009DDD0();
          v41 = v68;
          v66, v68, v69, v70, v71, v72, v73, v74;
          v40 = v67;
        }

        a4 = v104;
        v75 = sub_1000307A4(v40, v41, &v107);
        v41, v76, v77, v78, v79, v80, v81, v82;
        *(v28 + 4) = v75;
        _os_log_impl(&_mh_execute_header, v19, v20, "Reply never called in: %s. Replying with defaults and internalError", v28, 0xCu);
        sub_10000670C(v103[0]);

        (*(v13 + 8))(v18, v106);
      }

      else
      {

        (*(v13 + 8))(v18, v12);
      }

      v83 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:1 userInfo:0];
      a4(0, v83);
    }
  }
}

uint64_t sub_1000850B8(uint64_t a1)
{
  v1[15] = a1;
  sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  v1[16] = swift_task_alloc();
  v2 = sub_10009D9F0();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = sub_10009DF10();
  v1[24] = sub_10009DF00();
  v4 = sub_10009DED0();
  v1[25] = v4;
  v1[26] = v3;

  return _swift_task_switch(sub_10008520C, v4, v3);
}

uint64_t sub_10008520C(uint64_t a1)
{
  sub_10009D9D0();
  v2 = sub_10009D9E0();
  v3 = sub_10009DFF0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "running fetchShareAndToleratePreshareErrors() for SPI", v4, 2u);
  }

  v5 = v1[22];
  v6 = v1[17];
  v7 = v1[18];
  v9 = v1[15];
  v8 = v1[16];

  v10 = *(v7 + 8);
  v1[27] = v10;
  v10(v5, v6);
  sub_10009DF20();
  v11 = sub_10009DF40();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);

  v12 = sub_10009DF00();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v9;
  v14 = sub_10004CDF4(0, 0, v8, &unk_1000A2910, v13);
  v1[28] = v14;
  v15 = swift_task_alloc();
  v1[29] = v15;
  v16 = sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  v1[30] = v16;
  *v15 = v1;
  v15[1] = sub_100085438;

  return Task.value.getter(v16, v14, &type metadata for () + 8, v16, &protocol self-conformance witness table for Error);
}

uint64_t sub_100085438()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);
  if (v0)
  {
    v5 = sub_100085628;
  }

  else
  {
    v5 = sub_100085574;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100085574()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 248) == 0;

  return v1(v2);
}

uint64_t sub_100085628()
{
  v195 = v0;
  *(v0 + 112) = *(v0 + 248);
  swift_errorRetain();
  if (!swift_dynamicCast())
  {

    sub_100005B1C();
    swift_allocError();
    *v29 = 0xD00000000000002BLL;
    *(v29 + 8) = 0x80000001000A7B90;
    *(v29 + 16) = xmmword_1000A2500;
    *(v29 + 32) = 0x80000001000A7BC0;
    *(v29 + 40) = 11;
    swift_willThrow();

LABEL_45:

    v182 = *(v0 + 8);
    v183 = 0;
    goto LABEL_46;
  }

  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 256) = v3;
  *(v0 + 264) = v2;
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 272) = v5;
  *(v0 + 280) = v4;
  v6 = *(v0 + 48);
  *(v0 + 288) = v6;
  v7 = *(v0 + 56);
  v193 = v5;
  if (v7 != 5)
  {

    sub_10009D9D0();
    sub_100032380(v3, v2, v5, v4, v6, v7);
    v30 = sub_10009D9E0();
    v31 = sub_10009DFD0();
    sub_1000323E0(v3, v2, v5, v4, v6, v7, v32, v33);
    v190 = v31;
    v34 = os_log_type_enabled(v30, v31);
    v35 = *(v0 + 216);
    v191 = *(v0 + 136);
    v192 = *(v0 + 152);
    if (v34)
    {
      v187 = *(v0 + 216);
      v36 = v6;
      v37 = v4;
      v38 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      v194 = v185;
      *v38 = 136315138;
      *(v0 + 64) = v3;
      *(v0 + 72) = v2;
      *(v0 + 80) = v5;
      *(v0 + 88) = v4;
      *(v0 + 96) = v36;
      *(v0 + 104) = v7;
      sub_100032380(v3, v2, v5, v4, v36, v7);
      v39 = sub_10009DDA0();
      v41 = v40;
      v42 = v2;
      v43 = v3;
      v44 = sub_1000307A4(v39, v40, &v194);
      v45 = v41;
      v4 = v37;
      v6 = v36;
      v45, v46, v47, v48, v49, v50, v51, v52;
      *(v38 + 4) = v44;
      v3 = v43;
      _os_log_impl(&_mh_execute_header, v30, v190, "fetchShareAndToleratePreshareErrors error: %s", v38, 0xCu);
      sub_10000670C(v185);

      v187(v192, v191);
    }

    else
    {

      v35(v192, v191);
      v42 = v2;
    }

    sub_100005B1C();
    swift_allocError();
    *v53 = 0xD00000000000002BLL;
    *(v53 + 8) = 0x80000001000A7B90;
    *(v53 + 16) = xmmword_1000A2510;
    *(v53 + 32) = 0x80000001000A7C10;
    *(v53 + 40) = 11;
    swift_willThrow();

    v56 = v3;
    v57 = v42;
    v58 = v193;
    v59 = v4;
    v60 = v6;
    v61 = v7;
    goto LABEL_44;
  }

  if (!v5)
  {
    __break(1u);
    return result;
  }

  v186 = v6;

  v8 = v5;
  v189 = v2;

  v9 = [v8 domain];
  v10 = sub_10009DD90();
  v12 = v11;

  v14 = sub_10009DD90();
  v20 = v10;
  v21 = v13;
  v188 = v3;
  if (v20 == v14 && v12 == v13)
  {
    v13, v13, v14, v15, v16, v17, v18, v19;
    v12, v22, v23, v24, v25, v26, v27, v28;
  }

  else
  {
    v62 = sub_10009E2E0();
    v21, v63, v64, v65, v66, v67, v68, v69;
    v12, v70, v71, v72, v73, v74, v75, v76;
    if ((v62 & 1) == 0)
    {

      goto LABEL_16;
    }
  }

  v77 = [v8 code];

  if (v77 == 20)
  {
    v78 = 1;
    goto LABEL_22;
  }

LABEL_16:
  v79 = v8;
  v80 = [v79 domain];
  v81 = sub_10009DD90();
  v83 = v82;

  v85 = sub_10009DD90();
  v91 = v84;
  if (v81 == v85 && v83 == v84)
  {
    v84, v84, v85, v86, v87, v88, v89, v90;
    v83, v92, v93, v94, v95, v96, v97, v98;
  }

  else
  {
    v99 = sub_10009E2E0();
    v91, v100, v101, v102, v103, v104, v105, v106;
    v83, v107, v108, v109, v110, v111, v112, v113;
    if ((v99 & 1) == 0)
    {

      v78 = 0;
      goto LABEL_22;
    }
  }

  v114 = [v79 code];

  v78 = v114 == 7;
LABEL_22:
  v115 = v8;
  v116 = [v115 domain];
  v117 = sub_10009DD90();
  v119 = v118;

  v121 = sub_10009DD90();
  v127 = v120;
  if (v117 == v121 && v119 == v120)
  {
    v120, v120, v121, v122, v123, v124, v125, v126;
    v119, v128, v129, v130, v131, v132, v133, v134;
  }

  else
  {
    v135 = sub_10009E2E0();
    v127, v136, v137, v138, v139, v140, v141, v142;
    v119, v143, v144, v145, v146, v147, v148, v149;
    if ((v135 & 1) == 0)
    {

      v151 = 2;
      goto LABEL_30;
    }
  }

  v150 = [v115 code];

  if (v150 == 20)
  {
    v151 = 1;
  }

  else
  {
    v151 = 2;
  }

LABEL_30:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (*(v0 + 57) != 3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 58) = v151;

    sub_10009DB00();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  v152 = *(v0 + 59);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10009DAF0();

  if (*(v0 + 60) == 1 && v152 == 1)
  {
    v153 = v193;
    if (v78)
    {
      sub_10009D9D0();
      v154 = sub_10009D9E0();
      v155 = sub_10009DFF0();
      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        *v156 = 0;
        _os_log_impl(&_mh_execute_header, v154, v155, "starting folder sharing prep", v156, 2u);
      }

      v157 = *(v0 + 216);
      v158 = *(v0 + 168);
      v159 = *(v0 + 136);

      v157(v158, v159);
      v160 = swift_task_alloc();
      *(v0 + 296) = v160;
      *v160 = v0;
      v160[1] = sub_10008604C;

      return sub_100026B34(0);
    }

    goto LABEL_43;
  }

  v153 = v193;
  if (!v78)
  {
LABEL_43:
    sub_100005B1C();
    swift_allocError();
    *v184 = v188;
    *(v184 + 8) = v189;
    *(v184 + 16) = v153;
    *(v184 + 24) = v4;
    *(v184 + 32) = v186;
    *(v184 + 40) = 5;
    swift_willThrow();

    v56 = v188;
    v57 = v189;
    v58 = v153;
    v59 = v4;
    v60 = v186;
    v61 = 5;
LABEL_44:
    sub_1000323E0(v56, v57, v58, v59, v60, v61, v54, v55);

    goto LABEL_45;
  }

  v161 = *(v0 + 280);
  v162 = *(v0 + 288);
  v164 = *(v0 + 264);
  v163 = *(v0 + 272);
  v165 = *(v0 + 256);

  v162, v166, v167, v168, v169, v170, v171, v172;

  v164, v173, v174, v175, v176, v177, v178, v179;
  sub_1000323E0(v165, v164, v163, v161, v162, 5, v180, v181);

  v182 = *(v0 + 8);
  v183 = *(v0 + 248) == 0;
LABEL_46:

  return v182(v183);
}

uint64_t sub_10008604C()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);
  if (v0)
  {
    v5 = sub_100086324;
  }

  else
  {
    v5 = sub_100086188;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100086188()
{

  sub_10009D9D0();
  v1 = sub_10009D9E0();
  v2 = sub_10009DFF0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "successfully completed folder sharing prep", v3, 2u);
  }

  v4 = v0[27];
  v5 = v0[20];
  v6 = v0[17];

  v4(v5, v6);
  v7 = v0[35];
  v8 = v0[36];
  v10 = v0[33];
  v9 = v0[34];
  v11 = v0[32];

  v8, v12, v13, v14, v15, v16, v17, v18;

  v10, v19, v20, v21, v22, v23, v24, v25;
  sub_1000323E0(v11, v10, v9, v7, v8, 5, v26, v27);

  v28 = v0[1];
  v29 = v0[31] == 0;

  return v28(v29);
}

uint64_t sub_100086324()
{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];

  v2, v6, v7, v8, v9, v10, v11, v12;

  v4, v13, v14, v15, v16, v17, v18, v19;
  sub_1000323E0(v5, v4, v3, v1, v2, 5, v20, v21);

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_100086420(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_10009D9F0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  sub_10009DF10();
  v2[17] = sub_10009DF00();
  v5 = sub_10009DED0();
  v2[18] = v5;
  v2[19] = v4;

  return _swift_task_switch(sub_100086538, v5, v4);
}

void sub_100086538()
{
  v2 = v0[9];
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v0[20] = BRCloudDocsErrorDomain;
    v0[21] = v2;
    v3 = swift_task_alloc();
    v0[22] = v3;
    *v3 = v0;
    v3[1] = sub_1000865E8;

    sub_100022220();
  }
}

uint64_t sub_1000865E8()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_100086858;
  }

  else
  {
    v5 = sub_100086724;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100086724()
{

  sub_10009D9D0();
  v1 = sub_10009D9E0();
  v2 = sub_10009DFF0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[21];
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "createShare completed with this many retries left: %ld", v4, 0xCu);
  }

  v5 = v0[16];
  v6 = v0[11];
  v7 = v0[12];

  (*(v7 + 8))(v5, v6);

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_100086858()
{
  *(v0 + 64) = *(v0 + 184);
  swift_errorRetain();
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_9:
    sub_10009D9D0();
    v30 = sub_10009D9E0();
    v31 = sub_10009DFD0();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v0 + 168);
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v30, v31, "tryToCreateShare error: unexpected error--retries left: %ld", v33, 0xCu);
    }

    v35 = *(v0 + 96);
    v34 = *(v0 + 104);
    v36 = *(v0 + 88);

    (*(v35 + 8))(v34, v36);
    sub_100005B1C();
    v37 = swift_allocError();
    *v38 = 0xD000000000000023;
    *(v38 + 8) = 0x80000001000A7420;
    *(v38 + 16) = xmmword_1000A2520;
    *(v38 + 32) = 0x80000001000A7450;
    *(v38 + 40) = 11;
    goto LABEL_25;
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 192) = v1;
  *(v0 + 200) = v2;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 208) = v3;
  *(v0 + 216) = v4;
  v5 = *(v0 + 48);
  *(v0 + 224) = v5;
  v6 = *(v0 + 56);
  if (v6 != 1)
  {

    sub_1000323E0(v1, v2, v3, v4, v5, v6, v28, v29);
    goto LABEL_9;
  }

  if (v3)
  {
    v76 = *(v0 + 160);

    v7 = v3;

    v8 = [v7 domain];
    v9 = sub_10009DD90();
    v11 = v10;

    v13 = sub_10009DD90();
    v19 = v9;
    v20 = v12;
    if (v19 == v13 && v11 == v12)
    {
      v12, v12, v13, v14, v15, v16, v17, v18;
      v11, v21, v22, v23, v24, v25, v26, v27;
LABEL_14:
      v54 = *(v0 + 168);
      v55 = [v7 code];

      if (v55 == 7 && v54 > 1)
      {
        sub_10009D9D0();
        v56 = sub_10009D9E0();
        v57 = sub_10009DFF0();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = *(v0 + 168);
          v59 = swift_slowAlloc();
          *v59 = 134217984;
          *(v59 + 4) = v58;
          _os_log_impl(&_mh_execute_header, v56, v57, "About to retry createShare--retries left including this one: %ld", v59, 0xCu);
        }

        v60 = *(v0 + 120);
        v61 = *(v0 + 88);
        v62 = *(v0 + 96);

        (*(v62 + 8))(v60, v61);
        v63 = swift_task_alloc();
        *(v0 + 232) = v63;
        *v63 = v0;
        v63[1] = sub_100086DDC;

        return static Task<>.sleep(nanoseconds:)(1000000000);
      }

      goto LABEL_22;
    }

    v39 = sub_10009E2E0();
    v20, v40, v41, v42, v43, v44, v45, v46;
    v11, v47, v48, v49, v50, v51, v52, v53;
    if (v39)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

LABEL_22:
  v77 = v1;

  sub_10009D9D0();
  v64 = sub_10009D9E0();
  v65 = sub_10009DFD0();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = *(v0 + 168);
    v67 = swift_slowAlloc();
    *v67 = 134217984;
    *(v67 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v64, v65, "tryToCreateShare error: failed to create share--retries left: %ld", v67, 0xCu);
  }

  v68 = *(v0 + 112);
  v70 = *(v0 + 88);
  v69 = *(v0 + 96);

  (*(v69 + 8))(v68, v70);
  sub_100005B1C();
  v37 = swift_allocError();
  *v71 = v77;
  *(v71 + 8) = v2;
  *(v71 + 16) = v3;
  *(v71 + 24) = v4;
  *(v71 + 32) = v5;
  *(v71 + 40) = 1;
  sub_1000323E0(v77, v2, v3, v4, v5, 1, v72, v73);
LABEL_25:

  v74 = *(v0 + 8);

  return v74(v37);
}

uint64_t sub_100086DDC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_10008F504;
  }

  else
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_100086F00;
  }

  return _swift_task_switch(v5, v3, v4);
}

void sub_100086F00()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];

  v4, v6, v7, v8, v9, v10, v11, v12;

  v2, v13, v14, v15, v16, v17, v18, v19;
  sub_1000323E0(v5, v4, v3, v1, v2, 1, v20, v21);
  v22 = v0[21];
  if (v22 < 2)
  {
    __break(1u);
  }

  else
  {
    v0[21] = v22 - 1;
    v23 = swift_task_alloc();
    v0[22] = v23;
    *v23 = v0;
    v23[1] = sub_1000865E8;

    sub_100022220();
  }
}

uint64_t sub_100086FF8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7, uint64_t *a8)
{
  v131 = a7;
  v133 = a3;
  v132 = a2;
  v135 = a1;
  v12 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  __chkstk_darwin(v12 - 8);
  v137 = (&v129 - v13);
  v14 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v129 - v19;
  v21 = __chkstk_darwin(v18);
  v130 = &v129 - v22;
  __chkstk_darwin(v21);
  v134 = &v129 - v23;
  v24 = sub_10009D860();
  v138 = *(v24 - 8);
  v25 = v138[8];
  v26 = __chkstk_darwin(v24);
  v136 = &v129 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v129 - v27;
  v139 = swift_allocObject();
  *(v139 + 16) = a8;
  if (a4 == 1)
  {
    v29 = 2;
  }

  else
  {
    v29 = 1;
  }

  if (a5 == 3)
  {
    v30 = 2;
  }

  else
  {
    v30 = 1;
  }

  v31 = objc_allocWithZone(CKAllowedSharingOptions);
  _Block_copy(a8);
  v32 = [v31 initWithAllowedParticipantPermissionOptions:v30 allowedParticipantAccessOptions:v29];
  [v32 setSupportAllowingAddedParticipantsToInviteOthers:a6 & 1];
  [v32 setSupportAllowingAccessRequests:0];
  v33 = [v32 shareOptions];
  v34 = v33;
  if (v33 && (v35 = v33, v36 = [v35 optionsGroups], v35, v36))
  {
    sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);
    v37 = sub_10009DEA0();

    v38 = [v135 url];
    v39 = v28;
    sub_10009D820();

    v140 = 0;
    v141 = 0xE000000000000000;
    sub_10009E1E0(26);
    v141, v40, v41, v42, v43, v44, v45, v46;
    v140 = 0xD000000000000018;
    v141 = 0x80000001000A75B0;
    sub_10008F3BC(&qword_1000CA4A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v142._countAndFlagsBits = sub_10009E2C0();
    object = v142._object;
    sub_10009DE10(v142);
    object, v48, v49, v50, v51, v52, v53, v54;
    v55 = v141;
    sub_100079B58(v140, v141, 0xD000000000000056, 0x80000001000A7E60);
    v55, v56, v57, v58, v59, v60, v61, v62;
    if (v37 >> 62)
    {
      v70 = sub_10009E260();
    }

    else
    {
      v70 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v71 = v138;
    v138 = v35;
    v129 = v24;
    if (v70)
    {
      v72 = v137;
      sub_10009DF20();
      v73 = sub_10009DF40();
      (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
      (v71[2])(v136, v28, v24);
      sub_10009DF10();
      v131 = v131;
      v74 = v139;

      v75 = v132;

      v134 = v32;
      v76 = v133;

      v77 = sub_10009DF00();
      v78 = *(v71 + 80);
      v135 = v39;
      v79 = (v78 + 56) & ~v78;
      v80 = (v25 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
      v81 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
      v130 = v37;
      v82 = v71;
      v83 = swift_allocObject();
      *(v83 + 2) = v77;
      *(v83 + 3) = &protocol witness table for MainActor;
      *(v83 + 4) = v131;
      *(v83 + 5) = sub_10008F4F8;
      *(v83 + 6) = v74;
      v84 = v129;
      (v82[4])(&v83[v79], v136, v129);
      *&v83[v80] = v130;
      *&v83[v81] = v75;
      *&v83[(v81 + 15) & 0xFFFFFFFFFFFFFFF8] = v76;
      sub_10004CDF4(0, 0, v137, &unk_1000A29C8, v83);

      (v82[1])(v135, v84);
    }

    else
    {
      v37, v63, v64, v65, v66, v67, v68, v69;
      v105 = v134;
      (v71[7])(v134, 1, 1, v24);
      sub_100003714(&qword_1000CB348, &qword_1000A1E28);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10009FCE0;
      *(inited + 32) = sub_10009DD90();
      v107 = v71;
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v108;
      *(inited + 48) = 0xD000000000000031;
      *(inited + 56) = 0x80000001000A7EC0;
      v109 = sub_10003269C(inited);
      swift_setDeallocating();
      sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
      v110 = CKErrorDomain;
      isa = sub_10009DCF0().super.isa;
      v109, v112, v113, v114, v115, v116, v117, v118;
      v119 = [objc_allocWithZone(NSError) initWithDomain:v110 code:1 userInfo:isa];

      v120 = v107;
      v121 = v129;
      v122 = v130;
      sub_100008658(v105, v130, &qword_1000CA250, &qword_10009FDF8);
      if ((v120[6])(v122, 1, v121) == 1)
      {
        v124 = 0;
      }

      else
      {
        sub_10009D800(v123);
        v124 = v125;
        (v120[1])(v122, v121);
      }

      v126 = v138;
      v127 = v120;
      v128 = sub_10009D7A0();
      (a8[2])(a8, v124, 0, v128);

      sub_100008728(v134, &qword_1000CA250, &qword_10009FDF8);
      (v127[1])(v39, v121);
    }
  }

  else
  {
    v137 = a8;
    v85 = v138;
    (v138[7])(v20, 1, 1, v24);
    sub_100003714(&qword_1000CB348, &qword_1000A1E28);
    v86 = v24;
    v87 = swift_initStackObject();
    *(v87 + 16) = xmmword_10009FCE0;
    *(v87 + 32) = sub_10009DD90();
    *(v87 + 72) = &type metadata for String;
    *(v87 + 40) = v88;
    *(v87 + 48) = 0xD000000000000050;
    *(v87 + 56) = 0x80000001000A8000;
    v89 = sub_10003269C(v87);
    swift_setDeallocating();
    sub_100008728(v87 + 32, &unk_1000CA918, &qword_1000A1E30);
    v90 = CKErrorDomain;
    v91 = sub_10009DCF0().super.isa;
    v89, v92, v93, v94, v95, v96, v97, v98;
    v99 = [objc_allocWithZone(NSError) initWithDomain:v90 code:1 userInfo:v91];

    sub_100008658(v20, v17, &qword_1000CA250, &qword_10009FDF8);
    if ((v85[6])(v17, 1, v86) == 1)
    {
      v101 = 0;
    }

    else
    {
      sub_10009D800(v100);
      v101 = v102;
      (v85[1])(v17, v86);
    }

    v103 = sub_10009D7A0();
    (v137[2])(v137, v101, 0, v103);

    sub_100008728(v20, &qword_1000CA250, &qword_10009FDF8);
  }
}

uint64_t sub_100087AB0(void *a1, char *a2, uint64_t a3, unint64_t a4, char *a5, void (**a6)(const void *, void *, void, void *))
{
  v81 = a5;
  v82 = a3;
  v85 = a2;
  v9 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  __chkstk_darwin(v9 - 8);
  v84 = &v79 - v10;
  v11 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v80 = &v79 - v15;
  v16 = sub_10009D860();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v83 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v79 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a6;
  v79 = a6;
  _Block_copy(a6);
  v23 = [a1 url];
  sub_10009D820();

  v86 = 0;
  v87 = 0xE000000000000000;
  sub_10009E1E0(26);
  v87, v24, v25, v26, v27, v28, v29, v30;
  v86 = 0xD000000000000018;
  v87 = 0x80000001000A75B0;
  sub_10008F3BC(&qword_1000CA4A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v88._countAndFlagsBits = sub_10009E2C0();
  object = v88._object;
  sub_10009DE10(v88);
  object, v32, v33, v34, v35, v36, v37, v38;
  v39 = v87;
  sub_100079B58(v86, v87, 0xD000000000000056, 0x80000001000A7E60);
  v39, v40, v41, v42, v43, v44, v45, v46;
  if (a4 >> 62)
  {
    if (sub_10009E260())
    {
      goto LABEL_3;
    }
  }

  else if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v47 = v84;
    sub_10009DF20();
    v48 = sub_10009DF40();
    (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
    (*(v17 + 16))(v83, v21, v16);
    sub_10009DF10();
    v80 = v81;

    v49 = v82;

    v50 = sub_10009DF00();
    v51 = *(v17 + 80);
    v79 = a4;
    v52 = (v51 + 56) & ~v51;
    v53 = (v18 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v81 = v21;
    v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
    v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    *(v56 + 2) = v50;
    *(v56 + 3) = &protocol witness table for MainActor;
    *(v56 + 4) = v80;
    *(v56 + 5) = sub_10008F4F8;
    *(v56 + 6) = v22;
    (*(v17 + 32))(&v56[v52], v83, v16);
    *&v56[v53] = v79;
    v57 = v84;
    *&v56[v54] = v85;
    v21 = v81;
    *&v56[v55] = v49;
    sub_10004CDF4(0, 0, v57, &unk_1000A29B0, v56);

    goto LABEL_9;
  }

  v58 = v80;
  (*(v17 + 56))(v80, 1, 1, v16);
  v85 = v14;
  sub_100003714(&qword_1000CB348, &qword_1000A1E28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10009FCE0;
  *(inited + 32) = sub_10009DD90();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v60;
  *(inited + 48) = 0xD000000000000031;
  *(inited + 56) = 0x80000001000A7EC0;
  v61 = sub_10003269C(inited);
  swift_setDeallocating();
  sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
  v62 = CKErrorDomain;
  isa = sub_10009DCF0().super.isa;
  v64 = v61;
  v65 = v85;
  v64, v66, v67, v68, v69, v70, v71, v72;
  v73 = [objc_allocWithZone(NSError) initWithDomain:v62 code:1 userInfo:isa];

  sub_100008658(v58, v65, &qword_1000CA250, &qword_10009FDF8);
  if ((*(v17 + 48))(v65, 1, v16) == 1)
  {
    v75 = 0;
  }

  else
  {
    sub_10009D800(v74);
    v75 = v76;
    (*(v17 + 8))(v65, v16);
  }

  v77 = sub_10009D7A0();
  v79[2](v79, v75, 0, v77);

  sub_100008728(v58, &qword_1000CA250, &qword_10009FDF8);
LABEL_9:
  (*(v17 + 8))(v21, v16);
}

void sub_10008813C(void *a1, void *a2, uint64_t a3, void (**a4)(const void *, void *, void, void *), uint64_t a5, uint64_t a6, char a7, void *a8, const void *a9)
{
  v105 = a8;
  v109 = a4;
  v107 = a3;
  v106 = a2;
  v13 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  __chkstk_darwin(v13 - 8);
  v15 = &v104 - v14;
  v16 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v104 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v104 - v24;
  __chkstk_darwin(v23);
  v108 = &v104 - v26;
  v110 = swift_allocObject();
  *(v110 + 16) = a9;
  if (a5 == 1)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  if (a6 == 3)
  {
    v28 = 2;
  }

  else
  {
    v28 = 1;
  }

  v29 = objc_allocWithZone(CKAllowedSharingOptions);
  _Block_copy(a9);
  v30 = [v29 initWithAllowedParticipantPermissionOptions:v28 allowedParticipantAccessOptions:v27];
  [v30 setSupportAllowingAddedParticipantsToInviteOthers:a7 & 1];
  [v30 setSupportAllowingAccessRequests:0];
  v31 = [v30 shareOptions];
  v32 = v31;
  if (v31 && (v33 = v31, v34 = [v33 optionsGroups], v33, v34))
  {
    v104 = v33;
    sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);
    v35 = sub_10009DEA0();

    v36 = a1;
    v37 = [v36 description];
    v38 = sub_10009DD90();
    v40 = v39;

    sub_100079B58(v38, v40, 0xD00000000000005FLL, 0x80000001000A7D60);
    v40, v41, v42, v43, v44, v45, v46, v47;
    if (v35 >> 62)
    {
      if (sub_10009E260())
      {
        goto LABEL_11;
      }
    }

    else if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      sub_10009DF20();
      v55 = sub_10009DF40();
      (*(*(v55 - 8) + 56))(v15, 0, 1, v55);
      sub_10009DF10();
      v56 = v36;
      v57 = v105;
      v58 = v110;

      v59 = v106;
      v60 = v107;

      v61 = v109;

      v62 = sub_10009DF00();
      v63 = swift_allocObject();
      v63[2] = v62;
      v63[3] = &protocol witness table for MainActor;
      v63[4] = v57;
      v63[5] = sub_10008F4F8;
      v63[6] = v58;
      v63[7] = v56;
      v63[8] = v59;
      v63[9] = v35;
      v63[10] = v60;
      v63[11] = v61;
      sub_10004CDF4(0, 0, v15, &unk_1000A29A0, v63);

      return;
    }

    v109 = a9;
    v35, v48, v49, v50, v51, v52, v53, v54;
    v84 = sub_10009D860();
    v85 = *(v84 - 8);
    v86 = v108;
    (*(v85 + 56))(v108, 1, 1, v84);
    sub_100003714(&qword_1000CB348, &qword_1000A1E28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10009FCE0;
    *(inited + 32) = sub_10009DD90();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v88;
    *(inited + 48) = 0xD000000000000031;
    *(inited + 56) = 0x80000001000A7DC0;
    v89 = sub_10003269C(inited);
    swift_setDeallocating();
    sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
    v90 = CKErrorDomain;
    isa = sub_10009DCF0().super.isa;
    v89, v92, v93, v94, v95, v96, v97, v98;
    v99 = [objc_allocWithZone(NSError) initWithDomain:v90 code:1 userInfo:isa];

    sub_100008658(v86, v25, &qword_1000CA250, &qword_10009FDF8);
    v101 = 0;
    if ((*(v85 + 48))(v25, 1, v84) != 1)
    {
      sub_10009D800(v100);
      v101 = v102;
      (*(v85 + 8))(v25, v84);
    }

    v103 = sub_10009D7A0();
    v109[2](v109, v101, 0, v103);

    v83 = v108;
  }

  else
  {
    v109 = a9;
    v64 = sub_10009D860();
    v65 = *(v64 - 8);
    (*(v65 + 56))(v22, 1, 1, v64);
    sub_100003714(&qword_1000CB348, &qword_1000A1E28);
    v66 = swift_initStackObject();
    *(v66 + 16) = xmmword_10009FCE0;
    *(v66 + 32) = sub_10009DD90();
    *(v66 + 72) = &type metadata for String;
    *(v66 + 40) = v67;
    *(v66 + 48) = 0xD000000000000054;
    *(v66 + 56) = 0x80000001000A7E00;
    v68 = sub_10003269C(v66);
    swift_setDeallocating();
    sub_100008728(v66 + 32, &unk_1000CA918, &qword_1000A1E30);
    v69 = CKErrorDomain;
    v70 = sub_10009DCF0().super.isa;
    v68, v71, v72, v73, v74, v75, v76, v77;
    v78 = [objc_allocWithZone(NSError) initWithDomain:v69 code:1 userInfo:v70];

    sub_100008658(v22, v19, &qword_1000CA250, &qword_10009FDF8);
    v80 = 0;
    if ((*(v65 + 48))(v19, 1, v64) != 1)
    {
      sub_10009D800(v79);
      v80 = v81;
      (*(v65 + 8))(v19, v64);
    }

    v82 = sub_10009D7A0();
    v109[2](v109, v80, 0, v82);

    v83 = v22;
  }

  sub_100008728(v83, &qword_1000CA250, &qword_10009FDF8);
}

uint64_t sub_100088A3C(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, void (**a7)(void, void, void, void))
{
  v61 = a6;
  v62 = a2;
  v63 = a3;
  v64 = a4;
  v10 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  __chkstk_darwin(v10 - 8);
  v12 = &v61 - v11;
  v13 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v61 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a7;
  _Block_copy(a7);
  v20 = a1;
  v21 = [v20 description];
  v22 = sub_10009DD90();
  v24 = v23;

  sub_100079B58(v22, v24, 0xD00000000000005FLL, 0x80000001000A7D60);
  v24, v25, v26, v27, v28, v29, v30, v31;
  if (a5 >> 62)
  {
    if (sub_10009E260())
    {
      goto LABEL_3;
    }
  }

  else if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_10009DF20();
    v32 = sub_10009DF40();
    (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
    sub_10009DF10();
    v33 = v20;
    v34 = v61;

    v35 = v62;

    v36 = v63;

    v37 = v64;

    v38 = sub_10009DF00();
    v39 = swift_allocObject();
    v39[2] = v38;
    v39[3] = &protocol witness table for MainActor;
    v39[4] = v34;
    v39[5] = sub_10008F4F8;
    v39[6] = v19;
    v39[7] = v33;
    v39[8] = v35;
    v39[9] = a5;
    v39[10] = v36;
    v39[11] = v37;
    sub_10004CDF4(0, 0, v12, &unk_1000A2998, v39);
  }

  v40 = sub_10009D860();
  v41 = *(v40 - 8);
  (*(v41 + 56))(v18, 1, 1, v40);
  sub_100003714(&qword_1000CB348, &qword_1000A1E28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10009FCE0;
  *(inited + 32) = sub_10009DD90();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v43;
  *(inited + 48) = 0xD000000000000031;
  *(inited + 56) = 0x80000001000A7DC0;
  v44 = sub_10003269C(inited);
  swift_setDeallocating();
  sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
  v45 = CKErrorDomain;
  isa = sub_10009DCF0().super.isa;
  v44, v47, v48, v49, v50, v51, v52, v53;
  v54 = objc_allocWithZone(NSError);
  v55 = [v54 initWithDomain:v45 code:1 userInfo:{isa, v61, v62}];

  sub_100008658(v18, v16, &qword_1000CA250, &qword_10009FDF8);
  v57 = 0;
  if ((*(v41 + 48))(v16, 1, v40) != 1)
  {
    sub_10009D800(v56);
    v57 = v58;
    (*(v41 + 8))(v16, v40);
  }

  v59 = sub_10009D7A0();
  (a7)[2](a7, v57, 0, v59);

  sub_100008728(v18, &qword_1000CA250, &qword_10009FDF8);
}

void sub_100088F54(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7, void *a8)
{
  v92 = a7;
  v96 = a4;
  v95 = a3;
  v94 = a2;
  v93 = a1;
  v11 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  __chkstk_darwin(v11 - 8);
  v13 = &v91 - v12;
  v14 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v91 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v91 - v22;
  __chkstk_darwin(v21);
  v25 = &v91 - v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a8;
  if (a5 == 3)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  v28 = objc_allocWithZone(CKAllowedSharingOptions);
  v97 = a8;
  _Block_copy(a8);
  v29 = [v28 initWithAllowedParticipantPermissionOptions:v27 allowedParticipantAccessOptions:1];
  [v29 setSupportAllowingAddedParticipantsToInviteOthers:a6 & 1];
  [v29 setSupportAllowingAccessRequests:0];
  v30 = [v29 shareOptions];
  v31 = v30;
  if (v30 && (v32 = v30, v33 = [v32 optionsGroups], v32, v33))
  {
    sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);
    v34 = sub_10009DEA0();

    sub_100079B58(0x74706F2068746977, 0xEC000000736E6F69, 0xD000000000000070, 0x80000001000A7610);
    if (v34 >> 62)
    {
      if (sub_10009E260())
      {
        goto LABEL_8;
      }
    }

    else if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:
      sub_10009DF20();
      v42 = sub_10009DF40();
      (*(*(v42 - 8) + 56))(v13, 0, 1, v42);
      sub_10009DF10();
      v43 = v92;

      v97 = v32;
      v44 = v93;
      v45 = v93;
      v46 = v94;
      v47 = v94;
      v48 = v95;

      v49 = v96;

      v50 = sub_10009DF00();
      v51 = swift_allocObject();
      v51[2] = v50;
      v51[3] = &protocol witness table for MainActor;
      v51[4] = v43;
      v51[5] = sub_10008F4F8;
      v51[6] = v26;
      v51[7] = v44;
      v51[8] = v46;
      v51[9] = 0;
      v51[10] = v34;
      v51[11] = v48;
      v51[12] = v49;
      sub_10004CDF4(0, 0, v13, &unk_1000A2808, v51);

      return;
    }

    v96 = v26;
    v34, v35, v36, v37, v38, v39, v40, v41;
    v72 = sub_10009D860();
    v73 = *(v72 - 8);
    (*(v73 + 56))(v25, 1, 1, v72);
    sub_100003714(&qword_1000CB348, &qword_1000A1E28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10009FCE0;
    *(inited + 32) = sub_10009DD90();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v75;
    *(inited + 48) = 0xD000000000000033;
    *(inited + 56) = 0x80000001000A7690;
    v76 = sub_10003269C(inited);
    swift_setDeallocating();
    sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
    v77 = CKErrorDomain;
    isa = sub_10009DCF0().super.isa;
    v76, v79, v80, v81, v82, v83, v84, v85;
    v86 = [objc_allocWithZone(NSError) initWithDomain:v77 code:1 userInfo:isa];

    sub_100008658(v25, v23, &qword_1000CA250, &qword_10009FDF8);
    v88 = 0;
    if ((*(v73 + 48))(v23, 1, v72) != 1)
    {
      sub_10009D800(v87);
      v88 = v89;
      (*(v73 + 8))(v23, v72);
    }

    v90 = sub_10009D7A0();
    (*(v97 + 2))(v97, v88, 0, v90);

    v71 = v25;
  }

  else
  {
    v96 = v26;
    v52 = sub_10009D860();
    v53 = *(v52 - 8);
    (*(v53 + 56))(v20, 1, 1, v52);
    sub_100003714(&qword_1000CB348, &qword_1000A1E28);
    v54 = swift_initStackObject();
    *(v54 + 16) = xmmword_10009FCE0;
    *(v54 + 32) = sub_10009DD90();
    *(v54 + 72) = &type metadata for String;
    *(v54 + 40) = v55;
    *(v54 + 48) = 0xD000000000000064;
    *(v54 + 56) = 0x80000001000A7870;
    v56 = sub_10003269C(v54);
    swift_setDeallocating();
    sub_100008728(v54 + 32, &unk_1000CA918, &qword_1000A1E30);
    v57 = CKErrorDomain;
    v58 = sub_10009DCF0().super.isa;
    v56, v59, v60, v61, v62, v63, v64, v65;
    v66 = [objc_allocWithZone(NSError) initWithDomain:v57 code:1 userInfo:v58];

    sub_100008658(v20, v17, &qword_1000CA250, &qword_10009FDF8);
    v68 = 0;
    if ((*(v53 + 48))(v17, 1, v52) != 1)
    {
      sub_10009D800(v67);
      v68 = v69;
      (*(v53 + 8))(v17, v52);
    }

    v70 = sub_10009D7A0();
    (*(v97 + 2))(v97, v68, 0, v70);

    v71 = v20;
  }

  sub_100008728(v71, &qword_1000CA250, &qword_10009FDF8);
}

uint64_t sub_100089800(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, void (**a7)(void, void, void, void))
{
  v50 = a6;
  v51 = a4;
  v12 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  __chkstk_darwin(v12 - 8);
  v14 = &v50 - v13;
  v15 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v50 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  _Block_copy(a7);
  sub_100079B58(0x74706F2068746977, 0xEC000000736E6F69, 0xD000000000000070, 0x80000001000A7610);
  if (a5 >> 62)
  {
    if (sub_10009E260())
    {
      goto LABEL_3;
    }
  }

  else if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_10009DF20();
    v22 = sub_10009DF40();
    (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
    sub_10009DF10();
    v23 = v50;

    v24 = a1;
    v25 = a2;

    v26 = v51;

    v27 = sub_10009DF00();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = &protocol witness table for MainActor;
    v28[4] = v23;
    v28[5] = sub_10008F4F8;
    v28[6] = v21;
    v28[7] = a1;
    v28[8] = a2;
    v28[9] = 0;
    v28[10] = a5;
    v28[11] = a3;
    v28[12] = v26;
    sub_10004CDF4(0, 0, v14, &unk_1000A2800, v28);
  }

  v29 = sub_10009D860();
  v30 = *(v29 - 8);
  (*(v30 + 56))(v20, 1, 1, v29);
  sub_100003714(&qword_1000CB348, &qword_1000A1E28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10009FCE0;
  *(inited + 32) = sub_10009DD90();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v32;
  *(inited + 48) = 0xD000000000000033;
  *(inited + 56) = 0x80000001000A7690;
  v33 = sub_10003269C(inited);
  swift_setDeallocating();
  sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
  v34 = CKErrorDomain;
  isa = sub_10009DCF0().super.isa;
  v33, v36, v37, v38, v39, v40, v41, v42;
  v43 = objc_allocWithZone(NSError);
  v44 = [v43 initWithDomain:v34 code:1 userInfo:{isa, v50}];

  sub_100008658(v20, v18, &qword_1000CA250, &qword_10009FDF8);
  v46 = 0;
  if ((*(v30 + 48))(v18, 1, v29) != 1)
  {
    sub_10009D800(v45);
    v46 = v47;
    (*(v30 + 8))(v18, v29);
  }

  v48 = sub_10009D7A0();
  (a7)[2](a7, v46, 0, v48);

  sub_100008728(v20, &qword_1000CA250, &qword_10009FDF8);
}

void sub_100089CE8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7, void *a8)
{
  v92 = a7;
  v96 = a4;
  v95 = a3;
  v94 = a2;
  v93 = a1;
  v11 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  __chkstk_darwin(v11 - 8);
  v13 = &v91 - v12;
  v14 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v91 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v91 - v22;
  __chkstk_darwin(v21);
  v25 = &v91 - v24;
  v26 = swift_allocObject();
  *(v26 + 16) = a8;
  if (a5 == 3)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  v28 = objc_allocWithZone(CKAllowedSharingOptions);
  v97 = a8;
  _Block_copy(a8);
  v29 = [v28 initWithAllowedParticipantPermissionOptions:v27 allowedParticipantAccessOptions:1];
  [v29 setSupportAllowingAddedParticipantsToInviteOthers:a6 & 1];
  [v29 setSupportAllowingAccessRequests:0];
  v30 = [v29 shareOptions];
  v31 = v30;
  if (v30 && (v32 = v30, v33 = [v32 optionsGroups], v32, v33))
  {
    sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);
    v34 = sub_10009DEA0();

    sub_100079B58(0x74706F2068746977, 0xEC000000736E6F69, 0xD000000000000070, 0x80000001000A7610);
    if (v34 >> 62)
    {
      if (sub_10009E260())
      {
        goto LABEL_8;
      }
    }

    else if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:
      sub_10009DF20();
      v42 = sub_10009DF40();
      (*(*(v42 - 8) + 56))(v13, 0, 1, v42);
      sub_10009DF10();
      v43 = v94;
      v44 = v94;
      v45 = v95;

      v46 = v96;

      v47 = v92;

      v97 = v32;
      v48 = v93;
      v49 = v93;
      v50 = sub_10009DF00();
      v51 = swift_allocObject();
      v51[2] = v50;
      v51[3] = &protocol witness table for MainActor;
      v51[4] = v47;
      v51[5] = sub_10008F4F8;
      v51[6] = v26;
      v51[7] = 0;
      v51[8] = v48;
      v51[9] = v43;
      v51[10] = v34;
      v51[11] = v45;
      v51[12] = v46;
      sub_10004CDF4(0, 0, v13, &unk_1000A27F8, v51);

      return;
    }

    v96 = v26;
    v34, v35, v36, v37, v38, v39, v40, v41;
    v72 = sub_10009D860();
    v73 = *(v72 - 8);
    (*(v73 + 56))(v25, 1, 1, v72);
    sub_100003714(&qword_1000CB348, &qword_1000A1E28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10009FCE0;
    *(inited + 32) = sub_10009DD90();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v75;
    *(inited + 48) = 0xD000000000000033;
    *(inited + 56) = 0x80000001000A7690;
    v76 = sub_10003269C(inited);
    swift_setDeallocating();
    sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
    v77 = CKErrorDomain;
    isa = sub_10009DCF0().super.isa;
    v76, v79, v80, v81, v82, v83, v84, v85;
    v86 = [objc_allocWithZone(NSError) initWithDomain:v77 code:1 userInfo:isa];

    sub_100008658(v25, v23, &qword_1000CA250, &qword_10009FDF8);
    v88 = 0;
    if ((*(v73 + 48))(v23, 1, v72) != 1)
    {
      sub_10009D800(v87);
      v88 = v89;
      (*(v73 + 8))(v23, v72);
    }

    v90 = sub_10009D7A0();
    (*(v97 + 2))(v97, v88, 0, v90);

    v71 = v25;
  }

  else
  {
    v96 = v26;
    v52 = sub_10009D860();
    v53 = *(v52 - 8);
    (*(v53 + 56))(v20, 1, 1, v52);
    sub_100003714(&qword_1000CB348, &qword_1000A1E28);
    v54 = swift_initStackObject();
    *(v54 + 16) = xmmword_10009FCE0;
    *(v54 + 32) = sub_10009DD90();
    *(v54 + 72) = &type metadata for String;
    *(v54 + 40) = v55;
    *(v54 + 48) = 0xD000000000000056;
    *(v54 + 56) = 0x80000001000A7810;
    v56 = sub_10003269C(v54);
    swift_setDeallocating();
    sub_100008728(v54 + 32, &unk_1000CA918, &qword_1000A1E30);
    v57 = CKErrorDomain;
    v58 = sub_10009DCF0().super.isa;
    v56, v59, v60, v61, v62, v63, v64, v65;
    v66 = [objc_allocWithZone(NSError) initWithDomain:v57 code:1 userInfo:v58];

    sub_100008658(v20, v17, &qword_1000CA250, &qword_10009FDF8);
    v68 = 0;
    if ((*(v53 + 48))(v17, 1, v52) != 1)
    {
      sub_10009D800(v67);
      v68 = v69;
      (*(v53 + 8))(v17, v52);
    }

    v70 = sub_10009D7A0();
    (*(v97 + 2))(v97, v68, 0, v70);

    v71 = v20;
  }

  sub_100008728(v71, &qword_1000CA250, &qword_10009FDF8);
}

uint64_t sub_10008A594(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, void (**a7)(void, void, void, void))
{
  v50 = a6;
  v51 = a4;
  v12 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  __chkstk_darwin(v12 - 8);
  v14 = &v50 - v13;
  v15 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v50 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  _Block_copy(a7);
  sub_100079B58(0x74706F2068746977, 0xEC000000736E6F69, 0xD000000000000070, 0x80000001000A7610);
  if (a5 >> 62)
  {
    if (sub_10009E260())
    {
      goto LABEL_3;
    }
  }

  else if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_10009DF20();
    v22 = sub_10009DF40();
    (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
    sub_10009DF10();
    v23 = a2;

    v24 = v51;

    v25 = v50;

    v26 = a1;
    v27 = sub_10009DF00();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = &protocol witness table for MainActor;
    v28[4] = v25;
    v28[5] = sub_10008F4F8;
    v28[6] = v21;
    v28[7] = 0;
    v28[8] = a1;
    v28[9] = a2;
    v28[10] = a5;
    v28[11] = a3;
    v28[12] = v24;
    sub_10004CDF4(0, 0, v14, &unk_1000A2758, v28);
  }

  v29 = sub_10009D860();
  v30 = *(v29 - 8);
  (*(v30 + 56))(v20, 1, 1, v29);
  sub_100003714(&qword_1000CB348, &qword_1000A1E28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10009FCE0;
  *(inited + 32) = sub_10009DD90();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v32;
  *(inited + 48) = 0xD000000000000033;
  *(inited + 56) = 0x80000001000A7690;
  v33 = sub_10003269C(inited);
  swift_setDeallocating();
  sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
  v34 = CKErrorDomain;
  isa = sub_10009DCF0().super.isa;
  v33, v36, v37, v38, v39, v40, v41, v42;
  v43 = objc_allocWithZone(NSError);
  v44 = [v43 initWithDomain:v34 code:1 userInfo:{isa, v50}];

  sub_100008658(v20, v18, &qword_1000CA250, &qword_10009FDF8);
  v46 = 0;
  if ((*(v30 + 48))(v18, 1, v29) != 1)
  {
    sub_10009D800(v45);
    v46 = v47;
    (*(v30 + 8))(v18, v29);
  }

  v48 = sub_10009D7A0();
  (a7)[2](a7, v46, 0, v48);

  sub_100008728(v20, &qword_1000CA250, &qword_10009FDF8);
}

uint64_t sub_10008AA7C(void *a1, void (**a2)(const void *, void *, void, void *))
{
  v4 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  __chkstk_darwin(v4 - 8);
  v97 = &v94 - v5;
  v6 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v7 = __chkstk_darwin(v6 - 8);
  v102 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v103 = &v94 - v10;
  v11 = __chkstk_darwin(v9);
  v98 = &v94 - v12;
  v13 = __chkstk_darwin(v11);
  v99 = &v94 - v14;
  v15 = __chkstk_darwin(v13);
  v100 = &v94 - v16;
  __chkstk_darwin(v15);
  v101 = &v94 - v17;
  v18 = sub_10009D9F0();
  v104 = *(v18 - 8);
  v105 = v18;
  v19 = __chkstk_darwin(v18);
  v96 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v94 - v22;
  __chkstk_darwin(v21);
  v25 = &v94 - v24;
  v26 = sub_10009D860();
  v107 = *(v26 - 8);
  v27 = *(v107 + 64);
  v28 = __chkstk_darwin(v26);
  v95 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v94 - v29;
  v31 = swift_allocObject();
  *(v31 + 16) = a2;
  v106 = a2;
  _Block_copy(a2);
  v32 = [a1 url];
  sub_10009D820();

  v108 = 0;
  v109 = 0xE000000000000000;
  sub_10009E1E0(26);
  v109, v33, v34, v35, v36, v37, v38, v39;
  v108 = 0xD000000000000018;
  v109 = 0x80000001000A75B0;
  sub_10008F3BC(&qword_1000CA4A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v40 = v26;
  v110._countAndFlagsBits = sub_10009E2C0();
  object = v110._object;
  sub_10009DE10(v110);
  object, v42, v43, v44, v45, v46, v47, v48;
  v49 = v109;
  sub_100079B58(v108, v109, 0xD000000000000030, 0x80000001000A75D0);
  v49, v50, v51, v52, v53, v54, v55, v56;
  v57 = sub_10009D830();
  sub_10009D800(v58);
  v60 = v59;
  v61 = [v59 br_isInSyncedLocation];

  if (v57)
  {
    sub_10009D810();
  }

  if (v61)
  {
    v62 = shareStatus(url:)();
    v63 = v107;
    v64 = v31;
    if ((v62 & 0x10000) != 0)
    {
      sub_10009D9D0();
      v82 = sub_10009D9E0();
      v83 = sub_10009DFD0();
      v65 = v40;
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&_mh_execute_header, v82, v83, "Error getting status in existingShareForFile, reporting as CKError.invalidArguments", v84, 2u);
      }

      (*(v104 + 8))(v23, v105);
      v77 = v101;
      (*(v63 + 56))(v101, 1, 1, v40);
      v78 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
      v85 = v77;
      v79 = v100;
    }

    else
    {
      v65 = v40;
      if (v62)
      {
        v66 = v97;
        sub_10009DF20();
        v67 = sub_10009DF40();
        (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
        v68 = v95;
        (*(v63 + 16))(v95, v30, v65);
        sub_10009DF10();

        v69 = sub_10009DF00();
        v70 = (*(v63 + 80) + 32) & ~*(v63 + 80);
        v71 = swift_allocObject();
        *(v71 + 16) = v69;
        *(v71 + 24) = &protocol witness table for MainActor;
        (*(v63 + 32))(v71 + v70, v68, v65);
        v72 = (v71 + ((v27 + v70 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v72 = sub_10008F4F8;
        v72[1] = v64;
        sub_10004CDF4(0, 0, v66, &unk_1000A2748, v71);

        goto LABEL_20;
      }

      v86 = v96;
      sub_10009D9D0();
      v87 = sub_10009D9E0();
      v88 = sub_10009DFF0();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&_mh_execute_header, v87, v88, "Finished existingShareForFile: item not shared", v89, 2u);
      }

      (*(v104 + 8))(v86, v105);
      v77 = v99;
      (*(v63 + 56))(v99, 1, 1, v40);
      v78 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
      v85 = v77;
      v79 = v98;
    }

    sub_100008658(v85, v79, &qword_1000CA250, &qword_10009FDF8);
    v80 = (*(v63 + 48))(v79, 1, v65);
  }

  else
  {
    sub_10009D9D0();
    v73 = sub_10009D9E0();
    v74 = sub_10009DFF0();
    v75 = os_log_type_enabled(v73, v74);
    v63 = v107;
    if (v75)
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "Finished existingShareForFile: not in synced (iCloud Drive) location", v76, 2u);
    }

    (*(v104 + 8))(v25, v105);
    v77 = v103;
    v65 = v26;
    (*(v63 + 56))(v103, 1, 1, v26);
    v78 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
    v79 = v102;
    sub_100008658(v77, v102, &qword_1000CA250, &qword_10009FDF8);
    v80 = (*(v63 + 48))(v79, 1, v26);
  }

  v90 = 0;
  if (v80 != 1)
  {
    sub_10009D800(v81);
    v90 = v91;
    (*(v63 + 8))(v79, v65);
  }

  v92 = sub_10009D7A0();
  v106[2](v106, v90, 0, v92);

  sub_100008728(v77, &qword_1000CA250, &qword_10009FDF8);
LABEL_20:
  (*(v63 + 8))(v30, v65);
}

uint64_t sub_10008B410(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v54 = a3;
  v55 = a4;
  v6 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  __chkstk_darwin(v6 - 8);
  v8 = &v53 - v7;
  v9 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v53 = *(v9 - 8);
  v10 = *(v53 + 64);
  v11 = __chkstk_darwin(v9);
  v12 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v53 - v13;
  if (a1)
  {
    v15 = a1;
    v16 = [v15 url];
    sub_10009D820();

    v17 = sub_10009D860();
    (*(*(v17 - 8) + 56))(v14, 0, 1, v17);
  }

  else
  {
    v18 = sub_10009D860();
    (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  }

  v57 = 0;
  v58 = 0xE000000000000000;
  sub_10009E1E0(60);
  v59._countAndFlagsBits = 0xD000000000000023;
  v59._object = 0x80000001000A7520;
  sub_10009DE10(v59);
  sub_100008658(v14, v12, &qword_1000CA250, &qword_10009FDF8);
  v60._countAndFlagsBits = sub_10009DDA0();
  object = v60._object;
  sub_10009DE10(v60);
  object, v20, v21, v22, v23, v24, v25, v26;
  v61._object = 0x80000001000A7550;
  v61._countAndFlagsBits = 0xD000000000000015;
  sub_10009DE10(v61);
  v56 = a2;
  v27 = a2;
  sub_100003714(&qword_1000CACD8, &qword_1000A0EB0);
  v62._countAndFlagsBits = sub_10009DDA0();
  v28 = v62._object;
  sub_10009DE10(v62);
  v28, v29, v30, v31, v32, v33, v34, v35;
  v36 = v58;
  sub_100079B58(v57, v58, 0xD00000000000003FLL, 0x80000001000A7570);
  v36, v37, v38, v39, v40, v41, v42, v43;
  sub_10009DF20();
  v44 = sub_10009DF40();
  (*(*(v44 - 8) + 56))(v8, 0, 1, v44);
  sub_100008658(v14, v12, &qword_1000CA250, &qword_10009FDF8);
  sub_10009DF10();
  v45 = v27;
  v46 = v55;

  v47 = sub_10009DF00();
  v48 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v49 = (v10 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  *(v50 + 16) = v47;
  *(v50 + 24) = &protocol witness table for MainActor;
  sub_100017C10(v12, v50 + v48);
  *(v50 + v49) = a2;
  v51 = (v50 + ((v49 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v51 = v54;
  v51[1] = v46;
  sub_100019B10(0, 0, v8, &unk_1000A26F0, v50);

  return sub_100008728(v14, &qword_1000CA250, &qword_10009FDF8);
}

uint64_t sub_10008B820(char *a1)
{
  v2 = sub_10009D9F0();
  v60 = *(v2 - 8);
  v61 = v2;
  v3 = __chkstk_darwin(v2);
  v59 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v58 = &v56 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v56 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v56 - v11;
  __chkstk_darwin(v10);
  v14 = &v56 - v13;
  v15 = sub_10009D6F0();
  v57 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003714(&qword_1000CA498, &qword_1000A04B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10009FCE0;
  *(inited + 32) = NSURLIsDirectoryKey;
  v19 = NSURLIsDirectoryKey;
  sub_1000315FC(inited);
  v21 = v20;
  swift_setDeallocating();
  sub_1000462B8(inited + 32);
  sub_10009D7C0();
  v59 = a1;
  v56 = v9;
  v21, v22, v23, v24, v25, v26, v27, v28;
  v29 = sub_10009D690();
  (*(v57 + 8))(v17, v15);
  if (v29 == 2 || (v29 & 1) == 0)
  {
    sub_10009D9D0();
    v34 = sub_10009D9E0();
    v35 = sub_10009DFD0();
    v36 = os_log_type_enabled(v34, v35);
    v32 = v60;
    v31 = v61;
    v33 = v12;
    if (v36)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "folderURL is not actually a folder, reporting as CKError.invalidArguments", v37, 2u);
    }

    (*(v32 + 8))(v14, v31);
    v30 = 0;
  }

  else
  {
    v30 = 1;
    v32 = v60;
    v31 = v61;
    v33 = v12;
  }

  v38 = sub_10009D830();
  sub_10009D800(v39);
  v41 = v40;
  v42 = [v40 br_isInSyncedLocation];

  if (v38)
  {
    sub_10009D810();
  }

  if ((v42 & 1) == 0)
  {
    sub_10009D9D0();
    v43 = sub_10009D9E0();
    v44 = sub_10009DFD0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "folderURL is not in a synced location (someplace in iCloud Drive), reporting as CKError.invalidArguments", v45, 2u);
    }

    (*(v32 + 8))(v33, v31);
  }

  v46 = shareStatus(url:)();
  v47 = v58;
  if ((v46 & 0x10000) != 0)
  {
    v48 = v56;
    sub_10009D9D0();
    v49 = sub_10009D9E0();
    v50 = sub_10009DFD0();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Error getting status in forciblyShareFolder, reporting as CKError.invalidArguments", v51, 2u);
    }

    (*(v32 + 8))(v48, v31);
  }

  if (v46)
  {
    sub_10009D9D0();
    v52 = sub_10009D9E0();
    v53 = sub_10009DFD0();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "folderURL in forciblyShareFolder is already shared, reporting as CKError.invalidArguments", v54, 2u);
    }

    (*(v32 + 8))(v47, v31);
  }

  if ((v30 & v42) == 1)
  {
    return ((v46 & 0x10000) == 0) & (v46 ^ 1u);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008BEDC()
{

  return _swift_deallocObject(v0, 74, 7);
}

uint64_t sub_10008BF68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10008BF80()
{
  result = qword_1000CB5B0;
  if (!qword_1000CB5B0)
  {
    sub_10000594C(&qword_1000CB5A8, &qword_1000A20A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB5B0);
  }

  return result;
}

uint64_t sub_10008BFEC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 90, 7);
}

uint64_t sub_10008C044(uint64_t a1)
{
  v13 = v1[2];
  v4 = v1[5];
  v10 = v1[4];
  v11 = v1[3];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000093DC;

  return sub_1000754D0(a1, v13, v11, v10, v4, v5, v6, v7);
}

uint64_t sub_10008C1F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10008C248(uint64_t a1)
{
  v13 = *(v1 + 16);
  v4 = *(v1 + 40);
  v10 = *(v1 + 32);
  v11 = *(v1 + 24);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000093DC;

  return sub_100076650(a1, v13, v11, v10, v4, v5, v6, v7);
}

void sub_10008C3B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7, void (**a8)(void, void, void, void))
{
  v95 = a7;
  v96 = a3;
  v101 = a2;
  v97 = a1;
  v12 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v98 = (&v89 - v16);
  v17 = sub_100003714(&qword_1000CA8F0, &qword_1000A09C8);
  __chkstk_darwin(v17 - 8);
  v100 = &v89 - v18;
  v103 = sub_10009D860();
  v19 = *(v103 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v103);
  v99 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v89 - v22;
  v94 = sub_10009D9F0();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v25 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = swift_allocObject();
  *(v104 + 16) = a8;
  if (a4 == 1)
  {
    v26 = 2;
  }

  else
  {
    v26 = 1;
  }

  if (a5 == 3)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  v28 = objc_allocWithZone(CKAllowedSharingOptions);
  _Block_copy(a8);
  v29 = [v28 initWithAllowedParticipantPermissionOptions:v27 allowedParticipantAccessOptions:v26];
  [v29 setSupportAllowingAddedParticipantsToInviteOthers:a6 & 1];
  [v29 setSupportAllowingAccessRequests:0];
  v102 = v29;
  v30 = [v29 shareOptions];
  v31 = v30;
  if (v30 && (v32 = v30, v33 = [v32 optionsGroups], v32, v33))
  {
    v92 = v32;
    sub_1000037C4(0, &qword_1000C9F28, _SWCollaborationOptionsGroup_ptr);
    v91 = sub_10009DEA0();

    sub_10009D9D0();
    v98 = v19;
    v34 = v19[2];
    v35 = v97;
    v36 = v103;
    (v34)(v23, v97, v103);
    v37 = sub_10009D9E0();
    v38 = sub_10009DFF0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v89 = v39;
      v90 = swift_slowAlloc();
      v105 = v90;
      *v39 = 136315138;
      sub_10008F3BC(&qword_1000CA4A0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v40 = sub_10009E2C0();
      v41 = v34;
      v43 = v42;
      v98[1](v23, v36);
      v44 = sub_1000307A4(v40, v43, &v105);
      v45 = v43;
      v34 = v41;
      v35 = v97;
      v45, v46, v47, v48, v49, v50, v51, v52;
      v53 = v89;
      *(v89 + 1) = v44;
      _os_log_impl(&_mh_execute_header, v37, v38, "Begin forciblyShareFolder, folderURL: %s", v53, 0xCu);
      sub_10000670C(v90);
    }

    else
    {

      v98[1](v23, v36);
    }

    (*(v93 + 8))(v25, v94);
    v75 = v100;
    sub_10009DF20();
    v76 = sub_10009DF40();
    (*(*(v76 - 8) + 56))(v75, 0, 1, v76);
    (v34)(v99, v35, v36);
    sub_10009DF10();

    v97 = v95;

    v77 = v96;

    v78 = sub_10009DF00();
    v79 = v98;
    v80 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v81 = (v20 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
    v82 = (v81 + 23) & 0xFFFFFFFFFFFFFFF8;
    v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
    v84 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
    v85 = swift_allocObject();
    *(v85 + 16) = v78;
    *(v85 + 24) = &protocol witness table for MainActor;
    v79[4](v85 + v80, v99, v103);
    v86 = (v85 + v81);
    v87 = v104;
    *v86 = sub_10008F4F8;
    v86[1] = v87;
    *(v85 + v82) = v91;
    *(v85 + v83) = v97;
    v88 = v100;
    *(v85 + v84) = v101;
    *(v85 + ((v84 + 15) & 0xFFFFFFFFFFFFFFF8)) = v77;
    sub_10004CDF4(0, 0, v88, &unk_1000A26E0, v85);
  }

  else
  {
    v54 = v19;
    v55 = v19[7];
    v56 = v98;
    v57 = v103;
    (v55)(v98, 1, 1, v103);
    sub_100003714(&qword_1000CB348, &qword_1000A1E28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10009FCE0;
    *(inited + 32) = sub_10009DD90();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v59;
    *(inited + 48) = 0xD000000000000053;
    *(inited + 56) = 0x80000001000A74C0;
    v60 = sub_10003269C(inited);
    swift_setDeallocating();
    sub_100008728(inited + 32, &unk_1000CA918, &qword_1000A1E30);
    v61 = CKErrorDomain;
    isa = sub_10009DCF0().super.isa;
    v60, v63, v64, v65, v66, v67, v68, v69;
    v70 = [objc_allocWithZone(NSError) initWithDomain:v61 code:1 userInfo:isa];

    sub_100008658(v56, v15, &qword_1000CA250, &qword_10009FDF8);
    if ((v54[6])(v15, 1, v57) == 1)
    {
      v72 = 0;
    }

    else
    {
      sub_10009D800(v71);
      v72 = v73;
      v54[1](v15, v57);
    }

    v74 = sub_10009D7A0();
    (a8)[2](a8, v72, 0, v74);

    sub_100008728(v56, &qword_1000CA250, &qword_10009FDF8);
  }
}

uint64_t sub_10008CC80()
{
  v1 = sub_10009D860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  *(v0 + v5), v9, v10, v11, v12, v13, v14, v15;

  *(v0 + v7), v16, v17, v18, v19, v20, v21, v22;
  *(v0 + v8), v23, v24, v25, v26, v27, v28, v29;

  return _swift_deallocObject(v0, v8 + 8, v3 | 7);
}

uint64_t sub_10008CDB4()
{
  v1 = *(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = sub_10009D860();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v8 + 16, v2 | 7);
}

uint64_t sub_10008CEFC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000093DC;

  return sub_1000723E8(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_10008D054()
{
  v1 = sub_10009D860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10008D130(uint64_t a1)
{
  v4 = *(sub_10009D860() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000093DC;

  return sub_100070590(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_10008D26C(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000093DC;

  return sub_10006C410(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10008D370()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008D3C8()
{
  v1 = *(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 34) & ~v2;
  v4 = *(v1 + 64);
  *(v0 + 24), v5, v6, v7, v8, v9, v10, v11;
  v12 = sub_10009D860();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v3, 1, v12))
  {
    (*(v13 + 8))(v0 + v3, v12);
  }

  v14 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v15 + 8, v2 | 7);
}

uint64_t sub_10008D50C@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8);
  v6 = (*(v5 + 80) + 34) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100070424(a1, v9, v10, v2 + v6, v8, v11, a2);
}

uint64_t sub_10008D5D8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10008D5F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10008D654(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10008D6B8()
{
  sub_10000670C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008D6F8()
{
  swift_unknownObjectRelease();

  *(v0 + 80), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 88), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 96), v15, v16, v17, v18, v19, v20, v21;

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10008D770()
{
  swift_unknownObjectRelease();

  *(v0 + 72), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 80), v8, v9, v10, v11, v12, v13, v14;

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10008D7D8(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000093DC;

  return sub_1000686A8(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10008D8D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10008D924(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000093DC;

  return sub_100066D94(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10008DA0C(uint64_t a1)
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
  v11[1] = sub_1000093DC;

  return sub_1000649F4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10008DAFC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10009D860() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1000093DC;

  return sub_100063678(a1, v7, v8, v9, v10, v11, v1 + v6, v12);
}

uint64_t sub_10008DC44()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008DC8C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10008DCE0()
{
  v1 = sub_10009D860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_100003714(&qword_1000CA250, &qword_10009FDF8) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v18 = *(v6 + 64);
  swift_unknownObjectRelease();

  sub_10000B230(*(v0 + 56), *(v0 + 64));
  *(v0 + 80), v9, v10, v11, v12, v13, v14, v15;
  v16 = *(v2 + 8);
  v16(v0 + v4, v1);

  if (!(*(v2 + 48))(v0 + v8, 1, v1))
  {
    v16(v0 + v8, v1);
  }

  return _swift_deallocObject(v0, v8 + v18, v3 | v7 | 7);
}

uint64_t sub_10008DE98(uint64_t a1)
{
  sub_10009D860();
  sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  v10 = v1[3];
  v11 = v1[2];
  v3 = v1[5];
  v9 = v1[4];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000841C;

  return sub_100061CA4(a1, v11, v10, v9, v3, v4, v5, v6);
}

uint64_t sub_10008E050(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, int64_t a6, int64_t a7, uint64_t a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7);
}

uint64_t sub_10008E094(uint64_t a1)
{
  v4 = *(sub_10009D860() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000093DC;

  return sub_10005FC78(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_10008E1B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000093DC;

  return sub_1000507A0(a1, v4, v5, v6);
}

uint64_t sub_10008E26C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10008E2C4(uint64_t a1)
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
  v11[1] = sub_1000093DC;

  return sub_10005E5E4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10008E3A8()
{
  v1 = sub_10009D860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10008E490(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10009D860() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1000093DC;

  return sub_10005CB40(a1, v7, v8, v9, v10, v11, v1 + v6, v12);
}

uint64_t sub_10008E5E8()
{
  v1 = sub_10009D860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  *(v0 + v6), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + v7), v15, v16, v17, v18, v19, v20, v21;

  return _swift_deallocObject(v0, ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9, v3 | 7);
}

uint64_t sub_10008E710(uint64_t a1)
{
  v3 = *(sub_10009D860() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v11 = v1[3];
  v12 = v1[2];
  v9 = v1[5];
  v10 = v1[4];
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000841C;

  return sub_100059994(a1, v12, v11, v10, v9, v6, v1 + v4, v5);
}

uint64_t sub_10008E95C(uint64_t a1)
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
  v11[1] = sub_1000093DC;

  return sub_10005534C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10008EA64()
{
  swift_unknownObjectRelease();

  *(v0 + 72), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + 80), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + 88), v15, v16, v17, v18, v19, v20, v21;

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10008EAD8(uint64_t a1)
{
  v3 = *(sub_10009D860() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v1[3];
  v12 = v1[2];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000093DC;

  return sub_100050D80(a1, v12, v5, v6, v7, v8, v1 + v4, v9);
}

uint64_t sub_10008EC48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003714(&qword_1000CA250, &qword_10009FDF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008ECC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000093DC;

  return sub_1000547F4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10008ED94()
{
  v1 = sub_10009D860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 34) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v0 + 24), v6, v7, v8, v9, v10, v11, v12;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10008EE6C@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_10009D860() - 8);
  v6 = (*(v5 + 80) + 34) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100054564(a1, v7, v8, v2 + v6, v9, a2);
}

uint64_t sub_10008EF20()
{
  v1 = sub_10009D860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  *(v0 + v5), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + v6), v15, v16, v17, v18, v19, v20, v21;
  *(v0 + v7), v22, v23, v24, v25, v26, v27, v28;

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_10008F04C()
{
  v1 = sub_10009D860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008F120(uint64_t a1)
{
  v4 = *(sub_10009D860() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000093DC;

  return sub_10004D940(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_10008F234()
{
  v1 = sub_10009D860();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10008F2D8@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_10009D860() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10004F4A4(a1, v2 + v6, v8, v9, a2);
}

uint64_t sub_10008F3BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10008F51C(uint64_t a1, _TtC13SPIHelper_iOS9SPIHelper *a2)
{
  v5 = sub_10009D9F0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(NSError) initWithDomain:CKErrorDomain code:12 userInfo:0];
  v10 = v9;
  v11 = *(v2 + 16);
  v12 = *(v2 + 40);
  if (v12 <= 3)
  {
LABEL_7:
    if (v12 - 1 < 3)
    {
      if (v11)
      {
        v13 = v11;
LABEL_16:
        v15 = v13;

        v10 = v15;
        goto LABEL_19;
      }

      __break(1u);
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  if (*(v2 + 40) > 7u)
  {
    if (v12 != 8)
    {
      if (v12 == 11)
      {
        v13 = sub_10009131C(*(v2 + 24), *(v2 + 32));
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    if (!v11)
    {
LABEL_35:
      __break(1u);
      return;
    }

    goto LABEL_18;
  }

  if (v12 != 4)
  {
    if (v12 != 5)
    {
      goto LABEL_19;
    }

    if (!v11)
    {
      __break(1u);
      goto LABEL_7;
    }

LABEL_18:
    v10 = v11;
    goto LABEL_19;
  }

  if (!v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v10 = v11;
  sub_10009045C(32);
  if (v14)
  {
    sub_10008F9B4(v14);
    if (!v13)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_19:
  v16 = [v10 userInfo];
  v17 = sub_10009DD00();

  if (!*(v17 + 16) || (v25 = sub_100030DD4(0xD000000000000011, 0x80000001000A81A0), (v18 & 1) == 0))
  {
    v17, v18, v19, v20, v21, v22, v23, v24;
    v33 = 0;
    goto LABEL_24;
  }

  sub_1000066A8(*(v17 + 56) + 32 * v25, v85);
  v17, v26, v27, v28, v29, v30, v31, v32;
  sub_100090AEC();
  if (swift_dynamicCast())
  {
    v33 = v84;
LABEL_24:
    v34 = a1;
    v35 = sub_10008FD18(0xD000000000000011, 0x80000001000A81A0);

    v10 = v35;
    goto LABEL_25;
  }

  v34 = a1;
LABEL_25:
  sub_10009D9D0();

  v36 = v10;
  v37 = sub_10009D9E0();
  v38 = sub_10009DFD0();

  a2, v39, v40, v41, v42, v43, v44, v45;
  if (os_log_type_enabled(v37, v38))
  {
    v81 = v8;
    v82 = v6;
    v83 = v5;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v85[0] = v80;
    *v46 = 136315394;
    v48 = sub_10009DE60();
    v50 = v49;
    sub_1000300B8(v48, v49, v34, a2);
    v52 = v51;
    v50, v51, v53, v54, v55, v56, v57, v58;
    if (v52)
    {
      v59 = 0;
      v60 = 0xE000000000000000;
    }

    else
    {
      sub_10009DE70();
      v62 = v61;
      v63 = sub_10009DDD0();
      v60 = v64;
      v62, v64, v65, v66, v67, v68, v69, v70;
      v59 = v63;
    }

    v71 = sub_1000307A4(v59, v60, v85);
    v60, v72, v73, v74, v75, v76, v77, v78;
    *(v46 + 4) = v71;
    *(v46 + 12) = 2112;
    *(v46 + 14) = v36;
    *v47 = v36;
    v36;
    _os_log_impl(&_mh_execute_header, v37, v38, "returning %s mapped error: %@", v46, 0x16u);
    sub_100008728(v47, &qword_1000CA8E0, &qword_10009FE08);

    sub_10000670C(v80);

    (*(v82 + 8))(v81, v83);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }
}

void sub_10008F9B4(uint64_t a1)
{
  swift_willThrow();
  v2 = v1;
  sub_100003714(&qword_1000CB840, &qword_10009FDA0);
  type metadata accessor for BRError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    type metadata accessor for CKError(0);
    v24 = v2;
    if (swift_dynamicCast())
    {
      sub_100090AA4(&qword_1000CA028, type metadata accessor for CKError, &unk_10009FB80);
      sub_10009D770();
      if (v26 == 32)
      {
        v25 = v27;
        sub_10009D7A0();
      }

      else
      {
      }
    }

    goto LABEL_21;
  }

  sub_100090AA4(&qword_1000C9FF0, type metadata accessor for BRError, &unk_10009FA80);
  sub_10009D770();
  if (v26 != 17)
  {

    goto LABEL_17;
  }

  v3 = v27;
  v4 = sub_10009D7A0();

  v5 = [v4 underlyingErrors];
  v6 = sub_10009DEA0();

  v14 = *(v6 + 16);
  if (v14)
  {
    v15 = 0;
    do
    {
      v16 = v15;
      while (1)
      {
        if (v16 >= *(v6 + 16))
        {
          __break(1u);
          return;
        }

        v17 = *(v6 + 32 + 8 * v16);
        v15 = v16 + 1;
        swift_errorRetain();
        v18 = sub_10009D7A0();
        sub_10009045C(32);
        v20 = v19;

        if (v20)
        {
          break;
        }

        ++v16;
        if (v14 == v15)
        {
          goto LABEL_22;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100090B38(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v22 = _swiftEmptyArrayStorage[2];
      v21 = _swiftEmptyArrayStorage[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        sub_100090B38((v21 > 1), v22 + 1, 1);
        v23 = v22 + 1;
      }

      _swiftEmptyArrayStorage[2] = v23;
      _swiftEmptyArrayStorage[v22 + 4] = v17;
    }

    while (v14 - 1 != v16);
  }

LABEL_22:
  v6, v7, v8, v9, v10, v11, v12, v13;
  if (_swiftEmptyArrayStorage[2])
  {
    swift_errorRetain();

    sub_10009D7A0();
  }

  else
  {
  }

LABEL_21:
}

id sub_10008FD18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 userInfo];
  v7 = sub_10009DD00();

  v32 = v7;
  sub_100090DB8(a1, a2, v31);
  sub_100008728(v31, &qword_1000C9F00, &qword_10009F4B8);
  v8 = [v3 domain];
  if (!v8)
  {
    sub_10009DD90();
    v10 = v9;
    v8 = sub_10009DD50();
    v10, v11, v12, v13, v14, v15, v16, v17;
  }

  v18 = [v3 code];
  v19 = v32;
  v20 = objc_allocWithZone(NSError);
  isa = sub_10009DCF0().super.isa;
  v19, v22, v23, v24, v25, v26, v27, v28;
  v29 = [v20 initWithDomain:v8 code:v18 userInfo:isa];

  return v29;
}

void *sub_10008FE8C()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_10008FEB4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_10008FEE4(void *a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  switch(*(v1 + 40))
  {
    case 1:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1000C4020;
      v24 = swift_allocObject();
      *a1 = v24;
      v24[2] = v3;
      v24[3] = v2;
      v24[4] = v4;
      v24[5] = v5;
      v24[6] = v6;

      v25 = v4;
      result = 1;
      break;
    case 2:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1000C4020;
      v18 = swift_allocObject();
      *a1 = v18;
      v18[2] = v3;
      v18[3] = v2;
      v18[4] = v4;
      v18[5] = v5;
      v18[6] = v6;

      v19 = v4;
      result = 2;
      break;
    case 3:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1000C4020;
      v20 = swift_allocObject();
      *a1 = v20;
      v20[2] = v3;
      v20[3] = v2;
      v20[4] = v4;
      v20[5] = v5;
      v20[6] = v6;

      v21 = v4;
      result = 3;
      break;
    case 4:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1000C4020;
      v12 = swift_allocObject();
      *a1 = v12;
      v12[2] = v3;
      v12[3] = v2;
      v12[4] = v4;
      v12[5] = v5;
      v12[6] = v6;

      v13 = v4;
      result = 4;
      break;
    case 5:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1000C4020;
      v26 = swift_allocObject();
      *a1 = v26;
      v26[2] = v3;
      v26[3] = v2;
      v26[4] = v4;
      v26[5] = v5;
      v26[6] = v6;

      v27 = v4;
      result = 5;
      break;
    case 6:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1000C4020;
      v30 = swift_allocObject();
      *a1 = v30;
      v30[2] = v3;
      v30[3] = v2;
      v30[4] = v4;
      v30[5] = v5;
      v30[6] = v6;

      v31 = v4;
      result = 6;
      break;
    case 7:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1000C4020;
      v22 = swift_allocObject();
      *a1 = v22;
      v22[2] = v3;
      v22[3] = v2;
      v22[4] = v4;
      v22[5] = v5;
      v22[6] = v6;

      v23 = v4;
      result = 7;
      break;
    case 8:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1000C4020;
      v34 = swift_allocObject();
      *a1 = v34;
      v34[2] = v3;
      v34[3] = v2;
      v34[4] = v4;
      v34[5] = v5;
      v34[6] = v6;

      v35 = v4;
      result = 8;
      break;
    case 9:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1000C4020;
      v16 = swift_allocObject();
      *a1 = v16;
      v16[2] = v3;
      v16[3] = v2;
      v16[4] = v4;
      v16[5] = v5;
      v16[6] = v6;

      v17 = v4;
      result = 9;
      break;
    case 0xA:
      a1[3] = &type metadata for NSErrorContext;
      a1[4] = &off_1000C4020;
      v32 = swift_allocObject();
      *a1 = v32;
      v32[2] = v3;
      v32[3] = v2;
      v32[4] = v4;
      v32[5] = v5;
      v32[6] = v6;

      v33 = v4;
      result = 10;
      break;
    case 0xB:
      a1[3] = &type metadata for ErrorMessage;
      a1[4] = &off_1000C4048;
      v10 = swift_allocObject();
      *a1 = v10;
      v10[2] = v3;
      v10[3] = v2;
      v10[4] = v4;
      v10[5] = v5;
      v10[6] = v6;

      v11 = v4;
      result = 11;
      break;
    case 0xC:
      a1[3] = &type metadata for ErrorMessage;
      a1[4] = &off_1000C4048;
      v14 = swift_allocObject();
      *a1 = v14;
      v14[2] = v3;
      v14[3] = v2;
      v14[4] = v4;
      v14[5] = v5;
      v14[6] = v6;

      v15 = v4;
      result = 12;
      break;
    case 0xD:
      a1[3] = &type metadata for ErrorMessage;
      a1[4] = &off_1000C4048;
      v28 = swift_allocObject();
      *a1 = v28;
      v28[2] = v3;
      v28[3] = v2;
      v28[4] = v4;
      v28[5] = v5;
      v28[6] = v6;

      v29 = v4;
      result = 13;
      break;
    default:
      v37[0] = *v1;
      v37[1] = v2;
      v38 = v4;
      v39[0] = v5;
      v39[1] = v6;
      a1[3] = &type metadata for ErrorMessage;
      a1[4] = &off_1000C4048;
      v8 = swift_allocObject();
      *a1 = v8;
      v8[2] = v3;
      v8[3] = v2;
      v8[4] = v4;
      v8[5] = v5;
      v8[6] = v6;
      sub_1000914C4(v37, v36);
      sub_100008658(&v38, v36, &qword_1000CB7D0, &qword_1000A2A20);
      sub_100008658(v39, v36, &qword_1000CA6A0, &qword_10009FD50);
      result = 0;
      break;
  }

  return result;
}