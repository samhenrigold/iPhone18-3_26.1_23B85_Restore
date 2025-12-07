uint64_t sub_1001671A8()
{
  *(*v1 + 1976) = v0;

  if (v0)
  {
    v2 = sub_1001676E0;
  }

  else
  {
    v2 = sub_1001672BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001672BC()
{
  v29 = v0;
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1928);
  v3 = *(v0 + 1896);
  v4 = *(v0 + 1872);
  v5 = *(v0 + 1848);
  sub_1004B84E4();
  v1(v3, v2, v4);
  sub_10000F778(v5, v0 + 784, &qword_100602058, &qword_1004CA388);
  v26 = *(v0 + 1984);
  v6 = sub_1004B8094();
  v7 = sub_1004BC9A4();
  if (os_log_type_enabled(v6, v7))
  {
    v25 = *(v0 + 1952);
    v8 = *(v0 + 1896);
    v9 = *(v0 + 1872);
    v10 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v10 = 136446466;
    v11 = *(v0 + 976);
    sub_100007214(v0 + 784, &qword_100602058, &qword_1004CA388);
    v12 = ActionType.rawValue.getter(v11);
    v14 = sub_100012018(v12, v13, &v27);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v28[0] = 0;
    v28[1] = 0xE000000000000000;
    sub_1004BD404(16);

    strcpy(v28, " with result: ");
    HIBYTE(v28[1]) = -18;
    *(v0 + 1985) = v26;
    v31._countAndFlagsBits = sub_1004BBF04();
    sub_1004BC024(v31);

    v15 = sub_100012018(v28[0], v28[1], &v27);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: perform success%{public}s", v10, 0x16u);
    swift_arrayDestroy();

    v25(v8, v9);
  }

  else
  {
    v16 = *(v0 + 1952);
    v17 = *(v0 + 1896);
    v18 = *(v0 + 1872);
    sub_100007214(v0 + 784, &qword_100602058, &qword_1004CA388);

    v16(v17, v18);
  }

  v19 = *(v0 + 1856);
  v20 = *(v0 + 1848);
  v21 = sub_1004BC4B4();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  sub_10000F778(v20, v0 + 1040, &qword_100602058, &qword_1004CA388);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_100025B04(v0 + 1040, v22 + 32, &qword_100602058, &qword_1004CA388);
  *(v22 + 288) = v26;
  sub_10001F35C(0, 0, v19, &unk_1004D0870, v22);

  sub_100007214(v19, &qword_1006014F0, &qword_1004C9B00);

  v23 = *(v0 + 8);

  return v23(v26);
}

uint64_t sub_1001676E0()
{
  v26 = v0;
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1928);
  v3 = *(v0 + 1888);
  v4 = *(v0 + 1872);
  v5 = *(v0 + 1848);

  v1(v3, v2, v4);
  sub_10000F778(v5, v0 + 528, &qword_100602058, &qword_1004CA388);
  swift_errorRetain();
  v6 = sub_1004B8094();
  v7 = sub_1004BC984();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1976);
    v23 = *(v0 + 1888);
    v24 = *(v0 + 1952);
    v9 = *(v0 + 1872);
    v10 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v10 = 136446466;
    v11 = *(v0 + 720);
    sub_100007214(v0 + 528, &qword_100602058, &qword_1004CA388);
    v12 = ActionType.rawValue.getter(v11);
    v14 = sub_100012018(v12, v13, v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 1840) = v8;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v15 = sub_1004BBF04();
    v17 = sub_100012018(v15, v16, v25);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: perform failed: %{public}s", v10, 0x16u);
    swift_arrayDestroy();

    v24(v23, v9);
  }

  else
  {
    v18 = *(v0 + 1952);
    v19 = *(v0 + 1888);
    v20 = *(v0 + 1872);
    sub_100007214(v0 + 528, &qword_100602058, &qword_1004CA388);

    v18(v19, v20);
  }

  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1001679D4(uint64_t a1, char a2)
{
  *(v3 + 56) = v2;
  *(v3 + 261) = a2;
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  *(v3 + 64) = swift_task_alloc();
  sub_100003ABC(&qword_1006013C0, &qword_1004C8480);
  *(v3 + 72) = swift_task_alloc();
  v4 = sub_100003ABC(&qword_100601DE0, &unk_1004D0810);
  *(v3 + 80) = v4;
  v5 = *(v4 - 8);
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 + 64);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v6 = sub_1004B80B4();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_100167BE4, 0, 0);
}

uint64_t sub_100167BE4()
{
  v90 = v0;
  v1 = *(v0 + 80);
  v2 = *(*(v0 + 56) + *(v1 + 36));
  if (((1 << v2) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x700000000180) != 0)
  {
    v64 = sub_1000134E4();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v64) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 260) = 2;
    v65 = sub_100013490();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v65) & 1) == 0)
    {
LABEL_21:
      if (qword_1006006D8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1005FFD40 != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 200);
        v67 = *(v0 + 152);
        v68 = *(v0 + 160);
        v69 = *(v0 + 144);
        v70 = *(v0 + 56);
        v71 = sub_100007084(v67, qword_1006013A8);
        (*(v68 + 16))(v66, v71, v67);
        sub_10000F778(v70, v69, &qword_100601DE0, &unk_1004D0810);
        v72 = sub_1004B8094();
        v73 = sub_1004BC984();
        v74 = os_log_type_enabled(v72, v73);
        v75 = *(v0 + 200);
        v76 = *(v0 + 152);
        v77 = *(v0 + 160);
        v78 = *(v0 + 144);
        if (v74)
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v89[0] = v80;
          *v79 = 136446210;
          v81 = *(v78 + *(v1 + 36));
          sub_100007214(v78, &qword_100601DE0, &unk_1004D0810);
          v82 = ActionType.rawValue.getter(v81);
          v84 = sub_100012018(v82, v83, v89);

          *(v79 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v72, v73, "%{public}s: attempted to execute but identifier is hidden", v79, 0xCu);
          sub_100004C6C(v80);
        }

        else
        {
          sub_100007214(*(v0 + 144), &qword_100601DE0, &unk_1004D0810);
        }

        (*(v77 + 8))(v75, v76);
      }

      v40 = 0x80000001004FC520;
      v39 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 261) != 1 || (v3 = (*(*(v0 + 56) + *(*(v0 + 80) + 40)))(), v4 == 1))
  {
    if (qword_1005FFD40 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(v0 + 56);
    v10 = sub_100007084(v6, qword_1006013A8);
    *(v0 + 208) = v10;
    v11 = *(v7 + 16);
    *(v0 + 216) = v11;
    *(v0 + 224) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    sub_10000F778(v9, v8, &qword_100601DE0, &unk_1004D0810);
    v12 = sub_1004B8094();
    v13 = sub_1004BC9A4();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 184);
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    v18 = *(v0 + 128);
    if (v14)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v89[0] = v20;
      *v19 = 136446210;
      v21 = *(v18 + *(v1 + 36));
      sub_100007214(v18, &qword_100601DE0, &unk_1004D0810);
      v22 = ActionType.rawValue.getter(v21);
      v24 = sub_100012018(v22, v23, v89);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: performing…", v19, 0xCu);
      sub_100004C6C(v20);
    }

    else
    {
      sub_100007214(*(v0 + 128), &qword_100601DE0, &unk_1004D0810);
    }

    (*(v17 + 8))(v15, v16);
    v25 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    sub_100009130(0, &qword_1006013C8, NSTimer_ptr);
    v30 = [objc_opt_self() mainRunLoop];
    v31 = sub_1004BD0F4();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v32 = sub_1004BCF44();

    sub_100007214(v27, &qword_1006013C0, &qword_1004C8480);
    *(v0 + 32) = v32;
    sub_1004BCF34();
    sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v33 = sub_1004B8544();

    *(v0 + 40) = v33;
    sub_10000F778(v29, v25, &qword_100601DE0, &unk_1004D0810);
    v34 = *(v26 + 80);
    *(v0 + 256) = v34;
    v35 = (v34 + 16) & ~v34;
    v36 = swift_allocObject();
    sub_100025B04(v25, v36 + v35, &qword_100601DE0, &unk_1004D0810);
    sub_100003ABC(&qword_1006013D8, &qword_1004C8488);
    sub_1000206D4(&qword_1006013E0, &qword_1006013D8, &qword_1004C8488, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 232) = sub_1004B8644();

    v87 = (*(v29 + *(v28 + 48)) + **(v29 + *(v28 + 48)));
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = sub_1001686FC;

    return v87();
  }

  v39 = v3;
  v40 = v4;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 192);
  v42 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 56);
  v46 = sub_100007084(v42, qword_1006013A8);
  (*(v43 + 16))(v41, v46, v42);
  sub_10000F778(v45, v44, &qword_100601DE0, &unk_1004D0810);

  v47 = sub_1004B8094();
  v48 = sub_1004BC984();
  sub_1000130F8(v39, v40);
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 192);
  v52 = *(v0 + 152);
  v51 = *(v0 + 160);
  v53 = *(v0 + 136);
  if (v49)
  {
    v88 = *(v0 + 152);
    v54 = swift_slowAlloc();
    v89[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = *(v1 + 36);
    v56 = v50;
    v57 = *(v53 + v55);
    sub_100007214(v53, &qword_100601DE0, &unk_1004D0810);
    v58 = ActionType.rawValue.getter(v57);
    v60 = sub_100012018(v58, v59, v89);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2082;
    *(v0 + 16) = v39;
    *(v0 + 24) = v40;

    sub_100003ABC(&unk_100606160, &qword_1004CAC60);
    v61 = sub_1004BBF04();
    v63 = sub_100012018(v61, v62, v89);

    *(v54 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v56, v88);
  }

  else
  {
    sub_100007214(*(v0 + 136), &qword_100601DE0, &unk_1004D0810);

    (*(v51 + 8))(v50, v52);
  }

LABEL_31:
  sub_100020670();
  swift_allocError();
  *v85 = v39;
  v85[1] = v40;
  swift_willThrow();

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_1001686FC()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100168BC8;
  }

  else
  {
    v2 = sub_100168810;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100168810()
{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  sub_1004B84E4();
  v2(v3, v1, v4);
  sub_10000F778(v6, v5, &qword_100601DE0, &unk_1004D0810);
  v7 = sub_1004B8094();
  v8 = sub_1004BC9A4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 112);
  if (v9)
  {
    v14 = *(v0 + 80);
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136446466;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_100007214(v13, &qword_100601DE0, &unk_1004D0810);
    v16 = ActionType.rawValue.getter(v14);
    v18 = sub_100012018(v16, v17, &v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_100012018(0, 0xE000000000000000, &v27);
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_100007214(*(v0 + 112), &qword_100601DE0, &unk_1004D0810);
  }

  (*(v12 + 8))(v10, v11);
  v19 = *(v0 + 256);
  v20 = *(v0 + 120);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v23 = sub_1004BC4B4();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_10000F778(v22, v20, &qword_100601DE0, &unk_1004D0810);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_100025B04(v20, v24 + ((v19 + 32) & ~v19), &qword_100601DE0, &unk_1004D0810);
  sub_10001F35C(0, 0, v21, &unk_1004D0828, v24);

  sub_100007214(v21, &qword_1006014F0, &qword_1004C9B00);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100168BC8()
{
  v28 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[7];

  v2(v3, v1, v4);
  sub_10000F778(v6, v5, &qword_100601DE0, &unk_1004D0810);
  swift_errorRetain();
  v7 = sub_1004B8094();
  v8 = sub_1004BC984();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = v0[20];
    v26 = v0[21];
    v11 = v0[19];
    v12 = v0[13];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_100007214(v12, &qword_100601DE0, &unk_1004D0810);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_100012018(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[6] = v9;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    sub_100007214(v0[13], &qword_100601DE0, &unk_1004D0810);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_100168EF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const char *a5)
{
  v9 = sub_100003ABC(a3, a4);
  __chkstk_darwin();
  v11 = &v28 - v10;
  v12 = sub_1004B80B4();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v16 = sub_100007084(v12, qword_1006013A8);
  (*(v13 + 16))(v15, v16, v12);
  sub_10000F778(a2, v11, a3, a4);
  v17 = sub_1004B8094();
  v18 = sub_1004BC9A4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = a5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v30 = v12;
    v31 = v21;
    v22 = v21;
    *v20 = 136446210;
    v23 = v11[*(v9 + 36)];
    sub_100007214(v11, a3, a4);
    v24 = ActionType.rawValue.getter(v23);
    v26 = sub_100012018(v24, v25, &v31);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, v29, v20, 0xCu);
    sub_100004C6C(v22);

    return (*(v13 + 8))(v15, v30);
  }

  else
  {
    sub_100007214(v11, a3, a4);

    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_100169198(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const char *a5)
{
  v9 = sub_1004B80B4();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v13 = sub_100007084(v9, qword_1006013A8);
  (*(v10 + 16))(v12, v13, v9);
  sub_10000F778(a2, v28, a3, a4);
  v14 = sub_1004B8094();
  v15 = sub_1004BC9A4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v28[0] = v18;
    *v17 = 136446210;
    v19 = ActionType.rawValue.getter(*(a2 + 48));
    v27 = a5;
    v20 = v19;
    v21 = a4;
    v23 = v22;
    sub_100007214(a2, v26, v21);
    v24 = sub_100012018(v20, v23, v28);

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, v27, v17, 0xCu);
    sub_100004C6C(v18);
  }

  else
  {
    sub_100007214(a2, a3, a4);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1001693E8(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  sub_100003ABC(&qword_1006013C0, &qword_1004C8480);
  *(v4 + 1264) = swift_task_alloc();
  v6 = sub_1004B80B4();
  *(v4 + 1272) = v6;
  *(v4 + 1280) = *(v6 - 8);
  *(v4 + 1288) = swift_task_alloc();
  *(v4 + 1296) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = a4[4];
  *(v4 + 232) = a4[5];
  v9 = a4[7];
  *(v4 + 248) = a4[6];
  *(v4 + 264) = v9;
  v10 = *a4;
  *(v4 + 168) = a4[1];
  v11 = a4[3];
  *(v4 + 184) = a4[2];
  *(v4 + 200) = v11;
  *(v4 + 216) = v8;
  *(v4 + 1304) = v7;
  *(v4 + 280) = *(a4 + 16);
  *(v4 + 152) = v10;

  return _swift_task_switch(sub_10016953C, 0, 0);
}

uint64_t sub_10016953C()
{
  v43 = v0;
  v1 = (v0 + 152);
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 1304);
  v3 = *(v0 + 1280);
  v4 = *(v0 + 1272);
  v5 = sub_100007084(v4, qword_1006013A8);
  *(v0 + 1312) = v5;
  v6 = *(v3 + 16);
  *(v0 + 1320) = v6;
  *(v0 + 1328) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v0 + 264);
  *(v0 + 112) = *(v0 + 248);
  *(v0 + 128) = v7;
  *(v0 + 144) = *(v0 + 280);
  v8 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v8;
  v9 = *(v0 + 232);
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v9;
  v10 = *(v0 + 168);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v10;
  sub_10000F778(v0 + 16, v0 + 288, &qword_100601C58, &qword_1004D0AC0);
  v11 = sub_1004B8094();
  v12 = sub_1004BC9A4();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 1304);
  v15 = *(v0 + 1280);
  v16 = *(v0 + 1272);
  if (v13)
  {
    v40 = *(v0 + 1304);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v42 = v18;
    *v17 = 136446210;
    v19 = ActionType.rawValue.getter(*(v0 + 88));
    v21 = v20;
    sub_100007214(v0 + 16, &qword_100601C58, &qword_1004D0AC0);
    v22 = sub_100012018(v19, v21, &v42);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s: finishing…", v17, 0xCu);
    sub_100004C6C(v18);

    (*(v15 + 8))(v40, v16);
  }

  else
  {
    sub_100007214(v0 + 16, &qword_100601C58, &qword_1004D0AC0);

    (*(v15 + 8))(v14, v16);
  }

  v23 = *(v0 + 1264);
  sub_100009130(0, &qword_1006013C8, NSTimer_ptr);
  v24 = [objc_opt_self() mainRunLoop];
  v25 = sub_1004BD0F4();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  v26 = sub_1004BCF44();

  sub_100007214(v23, &qword_1006013C0, &qword_1004C8480);
  *(v0 + 1240) = v26;
  sub_1004BCF34();
  sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v27 = sub_1004B8544();

  *(v0 + 1248) = v27;
  v28 = *(v0 + 264);
  *(v0 + 520) = *(v0 + 248);
  *(v0 + 536) = v28;
  *(v0 + 552) = *(v0 + 280);
  v29 = *(v0 + 200);
  *(v0 + 456) = *(v0 + 184);
  *(v0 + 472) = v29;
  v30 = *(v0 + 232);
  *(v0 + 488) = *(v0 + 216);
  *(v0 + 504) = v30;
  v31 = *(v0 + 168);
  *(v0 + 424) = *v1;
  *(v0 + 440) = v31;
  v32 = *(v0 + 544);
  v33 = swift_allocObject();
  v34 = *(v0 + 264);
  *(v33 + 112) = *(v0 + 248);
  *(v33 + 128) = v34;
  *(v33 + 144) = *(v0 + 280);
  v35 = *(v0 + 200);
  *(v33 + 48) = *(v0 + 184);
  *(v33 + 64) = v35;
  v36 = *(v0 + 232);
  *(v33 + 80) = *(v0 + 216);
  *(v33 + 96) = v36;
  v37 = *(v0 + 168);
  *(v33 + 16) = *v1;
  *(v33 + 32) = v37;
  sub_10000F778(v0 + 424, v0 + 560, &qword_100601C58, &qword_1004D0AC0);
  sub_100003ABC(&qword_1006013D8, &qword_1004C8488);
  sub_1000206D4(&qword_1006013E0, &qword_1006013D8, &qword_1004C8488, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1336) = sub_1004B8644();

  v41 = (v32 + *v32);
  v38 = swift_task_alloc();
  *(v0 + 1344) = v38;
  *v38 = v0;
  v38[1] = sub_100169A94;

  return v41(v1);
}

uint64_t sub_100169A94()
{
  *(*v1 + 1352) = v0;

  if (v0)
  {
    v2 = sub_100169E28;
  }

  else
  {
    v2 = sub_100169BA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100169BA8()
{
  v26 = v0;
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 1296);
  v4 = *(v0 + 1272);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 232);
  v6 = *(v0 + 264);
  *(v0 + 1064) = *(v0 + 248);
  *(v0 + 1080) = v6;
  *(v0 + 1096) = *(v0 + 280);
  v7 = *(v0 + 168);
  v8 = *(v0 + 200);
  *(v0 + 1000) = *(v0 + 184);
  *(v0 + 1016) = v8;
  *(v0 + 1032) = *(v0 + 216);
  *(v0 + 1048) = v5;
  *(v0 + 968) = *(v0 + 152);
  *(v0 + 984) = v7;
  sub_10000F778(v0 + 968, v0 + 1104, &qword_100601C58, &qword_1004D0AC0);
  v9 = sub_1004B8094();
  v10 = sub_1004BC9A4();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1296);
  v13 = *(v0 + 1280);
  v14 = *(v0 + 1272);
  if (v11)
  {
    v24 = *(v0 + 1272);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 1040));
    v23 = v12;
    v19 = v18;
    sub_100007214(v0 + 968, &qword_100601C58, &qword_1004D0AC0);
    v20 = sub_100012018(v17, v19, &v25);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finish success", v15, 0xCu);
    sub_100004C6C(v16);

    (*(v13 + 8))(v23, v24);
  }

  else
  {

    sub_100007214(v0 + 968, &qword_100601C58, &qword_1004D0AC0);

    (*(v13 + 8))(v12, v14);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100169E28()
{
  v29 = v0;
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 1288);
  v4 = *(v0 + 1272);

  v1(v3, v2, v4);
  v5 = *(v0 + 232);
  v6 = *(v0 + 264);
  *(v0 + 792) = *(v0 + 248);
  *(v0 + 808) = v6;
  *(v0 + 824) = *(v0 + 280);
  v7 = *(v0 + 168);
  v8 = *(v0 + 200);
  *(v0 + 728) = *(v0 + 184);
  *(v0 + 744) = v8;
  *(v0 + 760) = *(v0 + 216);
  *(v0 + 776) = v5;
  *(v0 + 696) = *(v0 + 152);
  *(v0 + 712) = v7;
  sub_10000F778(v0 + 696, v0 + 832, &qword_100601C58, &qword_1004D0AC0);
  swift_errorRetain();
  v9 = sub_1004B8094();
  v10 = sub_1004BC984();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 1352);
    v12 = *(v0 + 1280);
    v26 = *(v0 + 1272);
    v27 = *(v0 + 1288);
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 768));
    v16 = v15;
    sub_100007214(v0 + 696, &qword_100601C58, &qword_1004D0AC0);
    v17 = sub_100012018(v14, v16, &v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1256) = v11;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, &v28);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v12 + 8))(v27, v26);
  }

  else
  {
    v21 = *(v0 + 1288);
    v22 = *(v0 + 1280);
    v23 = *(v0 + 1272);

    sub_100007214(v0 + 696, &qword_100601C58, &qword_1004D0AC0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10016A130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_100003ABC(&qword_1006013C0, &qword_1004C8480);
  v4[6] = swift_task_alloc();
  v5 = sub_100003ABC(&qword_100601C60, &qword_1004D0A70);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_1004B80B4();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_10016A2D4, 0, 0);
}

uint64_t sub_10016A2D4()
{
  v37 = v0;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[5];
  v6 = sub_100007084(v2, qword_1006013A8);
  v0[19] = v6;
  v7 = *(v3 + 16);
  v0[20] = v7;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  sub_10000F778(v5, v4, &qword_100601C60, &qword_1004D0A70);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[13];
  if (v10)
  {
    v15 = v0[7];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446210;
    LOBYTE(v15) = *(v14 + *(v15 + 36));
    sub_100007214(v14, &qword_100601C60, &qword_1004D0A70);
    v18 = ActionType.rawValue.getter(v15);
    v20 = sub_100012018(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finishing…", v16, 0xCu);
    sub_100004C6C(v17);
  }

  else
  {
    sub_100007214(v0[13], &qword_100601C60, &qword_1004D0A70);
  }

  (*(v13 + 8))(v11, v12);
  v21 = v0[12];
  v22 = v0[8];
  v23 = v0[6];
  v24 = v0[7];
  v25 = v0[5];
  sub_100009130(0, &qword_1006013C8, NSTimer_ptr);
  v26 = [objc_opt_self() mainRunLoop];
  v27 = sub_1004BD0F4();
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  v28 = sub_1004BCF44();

  sub_100007214(v23, &qword_1006013C0, &qword_1004C8480);
  v0[2] = v28;
  sub_1004BCF34();
  sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v29 = sub_1004B8544();

  v0[3] = v29;
  sub_10000F778(v25, v21, &qword_100601C60, &qword_1004D0A70);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = swift_allocObject();
  sub_100025B04(v21, v31 + v30, &qword_100601C60, &qword_1004D0A70);
  sub_100003ABC(&qword_1006013D8, &qword_1004C8488);
  sub_1000206D4(&qword_1006013E0, &qword_1006013D8, &qword_1004C8488, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  v0[22] = sub_1004B8644();

  v35 = (*(v25 + *(v24 + 52)) + **(v25 + *(v24 + 52)));
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = sub_10016A7D8;
  v33 = v0[5];

  return v35(v33);
}

uint64_t sub_10016A7D8()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_10016AB4C;
  }

  else
  {
    v2 = sub_10016A8EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016A8EC()
{
  v24 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[5];
  sub_1004B84E4();
  v2(v3, v1, v4);
  sub_10000F778(v6, v5, &qword_100601C60, &qword_1004D0A70);
  v7 = sub_1004B8094();
  v8 = sub_1004BC9A4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[11];
  if (v9)
  {
    v14 = v0[7];
    v22 = v0[17];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446210;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_100007214(v13, &qword_100601C60, &qword_1004D0A70);
    v17 = ActionType.rawValue.getter(v14);
    v19 = sub_100012018(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish success", v15, 0xCu);
    sub_100004C6C(v16);

    (*(v11 + 8))(v22, v12);
  }

  else
  {
    sub_100007214(v0[11], &qword_100601C60, &qword_1004D0A70);

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_10016AB4C()
{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[5];

  v2(v3, v1, v4);
  sub_10000F778(v6, v5, &qword_100601C60, &qword_1004D0A70);
  swift_errorRetain();
  v7 = sub_1004B8094();
  v8 = sub_1004BC984();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v10 = v0[15];
    v26 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_100007214(v12, &qword_100601C60, &qword_1004D0A70);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_100012018(v15, v16, &v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[4] = v9;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, &v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[14];
    sub_100007214(v0[10], &qword_100601C60, &qword_1004D0A70);

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_10016AE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_100003ABC(&qword_1006013C0, &qword_1004C8480);
  v4[6] = swift_task_alloc();
  v5 = sub_100003ABC(&qword_100601C68, &qword_1004C98A0);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_1004B80B4();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_10016AFE4, 0, 0);
}

uint64_t sub_10016AFE4()
{
  v37 = v0;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[5];
  v6 = sub_100007084(v2, qword_1006013A8);
  v0[19] = v6;
  v7 = *(v3 + 16);
  v0[20] = v7;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  sub_10000F778(v5, v4, &qword_100601C68, &qword_1004C98A0);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[13];
  if (v10)
  {
    v15 = v0[7];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446210;
    LOBYTE(v15) = *(v14 + *(v15 + 36));
    sub_100007214(v14, &qword_100601C68, &qword_1004C98A0);
    v18 = ActionType.rawValue.getter(v15);
    v20 = sub_100012018(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finishing…", v16, 0xCu);
    sub_100004C6C(v17);
  }

  else
  {
    sub_100007214(v0[13], &qword_100601C68, &qword_1004C98A0);
  }

  (*(v13 + 8))(v11, v12);
  v21 = v0[12];
  v22 = v0[8];
  v23 = v0[6];
  v24 = v0[7];
  v25 = v0[5];
  sub_100009130(0, &qword_1006013C8, NSTimer_ptr);
  v26 = [objc_opt_self() mainRunLoop];
  v27 = sub_1004BD0F4();
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  v28 = sub_1004BCF44();

  sub_100007214(v23, &qword_1006013C0, &qword_1004C8480);
  v0[2] = v28;
  sub_1004BCF34();
  sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v29 = sub_1004B8544();

  v0[3] = v29;
  sub_10000F778(v25, v21, &qword_100601C68, &qword_1004C98A0);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = swift_allocObject();
  sub_100025B04(v21, v31 + v30, &qword_100601C68, &qword_1004C98A0);
  sub_100003ABC(&qword_1006013D8, &qword_1004C8488);
  sub_1000206D4(&qword_1006013E0, &qword_1006013D8, &qword_1004C8488, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  v0[22] = sub_1004B8644();

  v35 = (*(v25 + *(v24 + 52)) + **(v25 + *(v24 + 52)));
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = sub_10016B4E8;
  v33 = v0[5];

  return v35(v33);
}

uint64_t sub_10016B4E8()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_10016B85C;
  }

  else
  {
    v2 = sub_10016B5FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016B5FC()
{
  v24 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[5];
  sub_1004B84E4();
  v2(v3, v1, v4);
  sub_10000F778(v6, v5, &qword_100601C68, &qword_1004C98A0);
  v7 = sub_1004B8094();
  v8 = sub_1004BC9A4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[11];
  if (v9)
  {
    v14 = v0[7];
    v22 = v0[17];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446210;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_100007214(v13, &qword_100601C68, &qword_1004C98A0);
    v17 = ActionType.rawValue.getter(v14);
    v19 = sub_100012018(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish success", v15, 0xCu);
    sub_100004C6C(v16);

    (*(v11 + 8))(v22, v12);
  }

  else
  {
    sub_100007214(v0[11], &qword_100601C68, &qword_1004C98A0);

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_10016B85C()
{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[5];

  v2(v3, v1, v4);
  sub_10000F778(v6, v5, &qword_100601C68, &qword_1004C98A0);
  swift_errorRetain();
  v7 = sub_1004B8094();
  v8 = sub_1004BC984();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v10 = v0[15];
    v26 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_100007214(v12, &qword_100601C68, &qword_1004C98A0);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_100012018(v15, v16, &v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[4] = v9;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, &v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[14];
    sub_100007214(v0[10], &qword_100601C68, &qword_1004C98A0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_10016BB50(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100003ABC(&qword_1006013C0, &qword_1004C8480);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004B80B4();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_10016BC80, 0, 0);
}

uint64_t sub_10016BC80()
{
  v39 = v0;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100007084(v3, qword_1006013A8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_10000F778(v0 + 16, v0 + 240, &qword_100601C98, &qword_1004D0A20);
  v9 = sub_1004B8094();
  v10 = sub_1004BC9A4();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_100007214(v0 + 16, &qword_100601C98, &qword_1004D0A20);
    v20 = sub_100012018(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100004C6C(v16);
  }

  else
  {
    sub_100007214(v0 + 16, &qword_100601C98, &qword_1004D0A20);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009130(0, &qword_1006013C8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004BD0F4();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004BCF44();

  sub_100007214(v21, &qword_1006013C0, &qword_1004C8480);
  *(v0 + 1024) = v24;
  sub_1004BCF34();
  sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004B8544();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_10000F778(v0 + 352, v0 + 464, &qword_100601C98, &qword_1004D0A20);
  sub_100003ABC(&qword_1006013D8, &qword_1004C8488);
  sub_1000206D4(&qword_1006013E0, &qword_1006013D8, &qword_1004C8488, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_1004B8644();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_10016C1A8;

  return v37(v0 + 128);
}

uint64_t sub_10016C1A8()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_10016C518;
  }

  else
  {
    v2 = sub_10016C2BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016C2BC()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601C98, &qword_1004D0A20);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_100007214(v0 + 800, &qword_100601C98, &qword_1004D0A20);
    v19 = sub_100012018(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100004C6C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_100007214(v0 + 800, &qword_100601C98, &qword_1004D0A20);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10016C518()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601C98, &qword_1004D0A20);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601C98, &qword_1004D0A20);
    v17 = sub_100012018(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_100007214(v0 + 576, &qword_100601C98, &qword_1004D0A20);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10016C804(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100003ABC(&qword_1006013C0, &qword_1004C8480);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004B80B4();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_10016C934, 0, 0);
}

uint64_t sub_10016C934()
{
  v39 = v0;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100007084(v3, qword_1006013A8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_10000F778(v0 + 16, v0 + 240, &qword_100601CA0, &qword_1004C9930);
  v9 = sub_1004B8094();
  v10 = sub_1004BC9A4();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_100007214(v0 + 16, &qword_100601CA0, &qword_1004C9930);
    v20 = sub_100012018(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100004C6C(v16);
  }

  else
  {
    sub_100007214(v0 + 16, &qword_100601CA0, &qword_1004C9930);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009130(0, &qword_1006013C8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004BD0F4();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004BCF44();

  sub_100007214(v21, &qword_1006013C0, &qword_1004C8480);
  *(v0 + 1024) = v24;
  sub_1004BCF34();
  sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004B8544();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_10000F778(v0 + 352, v0 + 464, &qword_100601CA0, &qword_1004C9930);
  sub_100003ABC(&qword_1006013D8, &qword_1004C8488);
  sub_1000206D4(&qword_1006013E0, &qword_1006013D8, &qword_1004C8488, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_1004B8644();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_10016CE5C;

  return v37(v0 + 128);
}

uint64_t sub_10016CE5C()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_10016D1CC;
  }

  else
  {
    v2 = sub_10016CF70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016CF70()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601CA0, &qword_1004C9930);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_100007214(v0 + 800, &qword_100601CA0, &qword_1004C9930);
    v19 = sub_100012018(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100004C6C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_100007214(v0 + 800, &qword_100601CA0, &qword_1004C9930);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10016D1CC()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601CA0, &qword_1004C9930);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601CA0, &qword_1004C9930);
    v17 = sub_100012018(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_100007214(v0 + 576, &qword_100601CA0, &qword_1004C9930);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10016D4B8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100003ABC(&qword_1006013C0, &qword_1004C8480);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004B80B4();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_10016D5E8, 0, 0);
}

uint64_t sub_10016D5E8()
{
  v39 = v0;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100007084(v3, qword_1006013A8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_10000F778(v0 + 16, v0 + 240, &qword_100601CB8, &qword_1004D0590);
  v9 = sub_1004B8094();
  v10 = sub_1004BC9A4();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_100007214(v0 + 16, &qword_100601CB8, &qword_1004D0590);
    v20 = sub_100012018(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100004C6C(v16);
  }

  else
  {
    sub_100007214(v0 + 16, &qword_100601CB8, &qword_1004D0590);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009130(0, &qword_1006013C8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004BD0F4();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004BCF44();

  sub_100007214(v21, &qword_1006013C0, &qword_1004C8480);
  *(v0 + 1024) = v24;
  sub_1004BCF34();
  sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004B8544();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_10000F778(v0 + 352, v0 + 464, &qword_100601CB8, &qword_1004D0590);
  sub_100003ABC(&qword_1006013D8, &qword_1004C8488);
  sub_1000206D4(&qword_1006013E0, &qword_1006013D8, &qword_1004C8488, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_1004B8644();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_10016DB10;

  return v37(v0 + 128);
}

uint64_t sub_10016DB10()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_10016DE80;
  }

  else
  {
    v2 = sub_10016DC24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016DC24()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601CB8, &qword_1004D0590);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_100007214(v0 + 800, &qword_100601CB8, &qword_1004D0590);
    v19 = sub_100012018(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100004C6C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_100007214(v0 + 800, &qword_100601CB8, &qword_1004D0590);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10016DE80()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601CB8, &qword_1004D0590);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601CB8, &qword_1004D0590);
    v17 = sub_100012018(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_100007214(v0 + 576, &qword_100601CB8, &qword_1004D0590);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10016E16C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100003ABC(&qword_1006013C0, &qword_1004C8480);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004B80B4();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_10016E29C, 0, 0);
}

uint64_t sub_10016E29C()
{
  v39 = v0;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100007084(v3, qword_1006013A8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_10000F778(v0 + 16, v0 + 240, &qword_100601CB0, &qword_1004C9960);
  v9 = sub_1004B8094();
  v10 = sub_1004BC9A4();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_100007214(v0 + 16, &qword_100601CB0, &qword_1004C9960);
    v20 = sub_100012018(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100004C6C(v16);
  }

  else
  {
    sub_100007214(v0 + 16, &qword_100601CB0, &qword_1004C9960);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009130(0, &qword_1006013C8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004BD0F4();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004BCF44();

  sub_100007214(v21, &qword_1006013C0, &qword_1004C8480);
  *(v0 + 1024) = v24;
  sub_1004BCF34();
  sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004B8544();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_10000F778(v0 + 352, v0 + 464, &qword_100601CB0, &qword_1004C9960);
  sub_100003ABC(&qword_1006013D8, &qword_1004C8488);
  sub_1000206D4(&qword_1006013E0, &qword_1006013D8, &qword_1004C8488, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_1004B8644();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_10016E7C4;

  return v37(v0 + 128);
}

uint64_t sub_10016E7C4()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_10016EB34;
  }

  else
  {
    v2 = sub_10016E8D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016E8D8()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601CB0, &qword_1004C9960);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_100007214(v0 + 800, &qword_100601CB0, &qword_1004C9960);
    v19 = sub_100012018(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100004C6C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_100007214(v0 + 800, &qword_100601CB0, &qword_1004C9960);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10016EB34()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601CB0, &qword_1004C9960);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601CB0, &qword_1004C9960);
    v17 = sub_100012018(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_100007214(v0 + 576, &qword_100601CB0, &qword_1004C9960);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10016EE20(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100003ABC(&qword_1006013C0, &qword_1004C8480);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004B80B4();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_10016EF50, 0, 0);
}

uint64_t sub_10016EF50()
{
  v39 = v0;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100007084(v3, qword_1006013A8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_10000F778(v0 + 16, v0 + 240, &qword_100601CA8, &qword_1004D09D0);
  v9 = sub_1004B8094();
  v10 = sub_1004BC9A4();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_100007214(v0 + 16, &qword_100601CA8, &qword_1004D09D0);
    v20 = sub_100012018(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100004C6C(v16);
  }

  else
  {
    sub_100007214(v0 + 16, &qword_100601CA8, &qword_1004D09D0);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009130(0, &qword_1006013C8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004BD0F4();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004BCF44();

  sub_100007214(v21, &qword_1006013C0, &qword_1004C8480);
  *(v0 + 1024) = v24;
  sub_1004BCF34();
  sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004B8544();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_10000F778(v0 + 352, v0 + 464, &qword_100601CA8, &qword_1004D09D0);
  sub_100003ABC(&qword_1006013D8, &qword_1004C8488);
  sub_1000206D4(&qword_1006013E0, &qword_1006013D8, &qword_1004C8488, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_1004B8644();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_10016F478;

  return v37(v0 + 128);
}

uint64_t sub_10016F478()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_10016F7E8;
  }

  else
  {
    v2 = sub_10016F58C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016F58C()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601CA8, &qword_1004D09D0);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_100007214(v0 + 800, &qword_100601CA8, &qword_1004D09D0);
    v19 = sub_100012018(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100004C6C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_100007214(v0 + 800, &qword_100601CA8, &qword_1004D09D0);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10016F7E8()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601CA8, &qword_1004D09D0);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601CA8, &qword_1004D09D0);
    v17 = sub_100012018(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_100007214(v0 + 576, &qword_100601CA8, &qword_1004D09D0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10016FAD4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100003ABC(&qword_1006013C0, &qword_1004C8480);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004B80B4();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_10016FC04, 0, 0);
}

uint64_t sub_10016FC04()
{
  v39 = v0;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100007084(v3, qword_1006013A8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_10000F778(v0 + 16, v0 + 240, &qword_100601C78, &qword_1004C98E8);
  v9 = sub_1004B8094();
  v10 = sub_1004BC9A4();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_100007214(v0 + 16, &qword_100601C78, &qword_1004C98E8);
    v20 = sub_100012018(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100004C6C(v16);
  }

  else
  {
    sub_100007214(v0 + 16, &qword_100601C78, &qword_1004C98E8);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009130(0, &qword_1006013C8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004BD0F4();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004BCF44();

  sub_100007214(v21, &qword_1006013C0, &qword_1004C8480);
  *(v0 + 1024) = v24;
  sub_1004BCF34();
  sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004B8544();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_10000F778(v0 + 352, v0 + 464, &qword_100601C78, &qword_1004C98E8);
  sub_100003ABC(&qword_1006013D8, &qword_1004C8488);
  sub_1000206D4(&qword_1006013E0, &qword_1006013D8, &qword_1004C8488, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_1004B8644();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_10017012C;

  return v37(v0 + 128);
}

uint64_t sub_10017012C()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_10017049C;
  }

  else
  {
    v2 = sub_100170240;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100170240()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601C78, &qword_1004C98E8);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_100007214(v0 + 800, &qword_100601C78, &qword_1004C98E8);
    v19 = sub_100012018(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100004C6C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_100007214(v0 + 800, &qword_100601C78, &qword_1004C98E8);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10017049C()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601C78, &qword_1004C98E8);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601C78, &qword_1004C98E8);
    v17 = sub_100012018(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_100007214(v0 + 576, &qword_100601C78, &qword_1004C98E8);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100170788(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100003ABC(&qword_1006013C0, &qword_1004C8480);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004B80B4();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_1001708B8, 0, 0);
}

uint64_t sub_1001708B8()
{
  v39 = v0;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100007084(v3, qword_1006013A8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_10000F778(v0 + 16, v0 + 240, &qword_100601CD8, &qword_1004C99E8);
  v9 = sub_1004B8094();
  v10 = sub_1004BC9A4();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_100007214(v0 + 16, &qword_100601CD8, &qword_1004C99E8);
    v20 = sub_100012018(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100004C6C(v16);
  }

  else
  {
    sub_100007214(v0 + 16, &qword_100601CD8, &qword_1004C99E8);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009130(0, &qword_1006013C8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004BD0F4();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004BCF44();

  sub_100007214(v21, &qword_1006013C0, &qword_1004C8480);
  *(v0 + 1024) = v24;
  sub_1004BCF34();
  sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004B8544();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_10000F778(v0 + 352, v0 + 464, &qword_100601CD8, &qword_1004C99E8);
  sub_100003ABC(&qword_1006013D8, &qword_1004C8488);
  sub_1000206D4(&qword_1006013E0, &qword_1006013D8, &qword_1004C8488, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_1004B8644();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_100170DE0;

  return v37(v0 + 128);
}

uint64_t sub_100170DE0()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_100171150;
  }

  else
  {
    v2 = sub_100170EF4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100170EF4()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601CD8, &qword_1004C99E8);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_100007214(v0 + 800, &qword_100601CD8, &qword_1004C99E8);
    v19 = sub_100012018(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100004C6C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_100007214(v0 + 800, &qword_100601CD8, &qword_1004C99E8);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100171150()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601CD8, &qword_1004C99E8);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601CD8, &qword_1004C99E8);
    v17 = sub_100012018(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_100007214(v0 + 576, &qword_100601CD8, &qword_1004C99E8);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10017143C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100003ABC(&qword_1006013C0, &qword_1004C8480);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004B80B4();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_10017156C, 0, 0);
}

uint64_t sub_10017156C()
{
  v39 = v0;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100007084(v3, qword_1006013A8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_10000F778(v0 + 16, v0 + 240, &qword_100601CD0, &qword_1004C99E0);
  v9 = sub_1004B8094();
  v10 = sub_1004BC9A4();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_100007214(v0 + 16, &qword_100601CD0, &qword_1004C99E0);
    v20 = sub_100012018(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100004C6C(v16);
  }

  else
  {
    sub_100007214(v0 + 16, &qword_100601CD0, &qword_1004C99E0);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009130(0, &qword_1006013C8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004BD0F4();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004BCF44();

  sub_100007214(v21, &qword_1006013C0, &qword_1004C8480);
  *(v0 + 1024) = v24;
  sub_1004BCF34();
  sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004B8544();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_10000F778(v0 + 352, v0 + 464, &qword_100601CD0, &qword_1004C99E0);
  sub_100003ABC(&qword_1006013D8, &qword_1004C8488);
  sub_1000206D4(&qword_1006013E0, &qword_1006013D8, &qword_1004C8488, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_1004B8644();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_100171A94;

  return v37(v0 + 128);
}

uint64_t sub_100171A94()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_100171E04;
  }

  else
  {
    v2 = sub_100171BA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100171BA8()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601CD0, &qword_1004C99E0);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_100007214(v0 + 800, &qword_100601CD0, &qword_1004C99E0);
    v19 = sub_100012018(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100004C6C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_100007214(v0 + 800, &qword_100601CD0, &qword_1004C99E0);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100171E04()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601CD0, &qword_1004C99E0);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601CD0, &qword_1004C99E0);
    v17 = sub_100012018(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_100007214(v0 + 576, &qword_100601CD0, &qword_1004C99E0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1001720F0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100003ABC(&qword_1006013C0, &qword_1004C8480);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004B80B4();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_100172220, 0, 0);
}

uint64_t sub_100172220()
{
  v39 = v0;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100007084(v3, qword_1006013A8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_10000F778(v0 + 16, v0 + 240, &qword_100601CC8, &qword_1004C99A0);
  v9 = sub_1004B8094();
  v10 = sub_1004BC9A4();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_100007214(v0 + 16, &qword_100601CC8, &qword_1004C99A0);
    v20 = sub_100012018(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100004C6C(v16);
  }

  else
  {
    sub_100007214(v0 + 16, &qword_100601CC8, &qword_1004C99A0);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009130(0, &qword_1006013C8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004BD0F4();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004BCF44();

  sub_100007214(v21, &qword_1006013C0, &qword_1004C8480);
  *(v0 + 1024) = v24;
  sub_1004BCF34();
  sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004B8544();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_10000F778(v0 + 352, v0 + 464, &qword_100601CC8, &qword_1004C99A0);
  sub_100003ABC(&qword_1006013D8, &qword_1004C8488);
  sub_1000206D4(&qword_1006013E0, &qword_1006013D8, &qword_1004C8488, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_1004B8644();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_100172748;

  return v37(v0 + 128);
}

uint64_t sub_100172748()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_100172AB8;
  }

  else
  {
    v2 = sub_10017285C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017285C()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601CC8, &qword_1004C99A0);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_100007214(v0 + 800, &qword_100601CC8, &qword_1004C99A0);
    v19 = sub_100012018(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100004C6C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_100007214(v0 + 800, &qword_100601CC8, &qword_1004C99A0);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100172AB8()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601CC8, &qword_1004C99A0);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601CC8, &qword_1004C99A0);
    v17 = sub_100012018(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_100007214(v0 + 576, &qword_100601CC8, &qword_1004C99A0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100172DA4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100003ABC(&qword_1006013C0, &qword_1004C8480);
  *(v4 + 904) = swift_task_alloc();
  v6 = sub_1004B80B4();
  *(v4 + 912) = v6;
  *(v4 + 920) = *(v6 - 8);
  *(v4 + 928) = swift_task_alloc();
  *(v4 + 936) = swift_task_alloc();
  *(v4 + 944) = swift_task_alloc();
  v7 = a4[3];
  *(v4 + 144) = a4[2];
  *(v4 + 160) = v7;
  v8 = a4[5];
  *(v4 + 176) = a4[4];
  *(v4 + 192) = v8;
  v9 = a4[1];
  *(v4 + 112) = *a4;
  *(v4 + 128) = v9;

  return _swift_task_switch(sub_100172ECC, 0, 0);
}

uint64_t sub_100172ECC()
{
  v38 = v0;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 944);
  v2 = *(v0 + 920);
  v3 = *(v0 + 912);
  v4 = sub_100007084(v3, qword_1006013A8);
  *(v0 + 952) = v4;
  v5 = *(v2 + 16);
  *(v0 + 960) = v5;
  *(v0 + 968) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 160);
  *(v0 + 48) = *(v0 + 144);
  *(v0 + 64) = v6;
  v7 = *(v0 + 192);
  *(v0 + 80) = *(v0 + 176);
  *(v0 + 96) = v7;
  v8 = *(v0 + 128);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v8;
  sub_10000F778(v0 + 16, v0 + 208, &qword_100601D20, &qword_1004C9A80);
  v9 = sub_1004B8094();
  v10 = sub_1004BC9A4();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 944);
  v13 = *(v0 + 920);
  v14 = *(v0 + 912);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v37 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 48));
    v19 = v18;
    sub_100007214(v0 + 16, &qword_100601D20, &qword_1004C9A80);
    v20 = sub_100012018(v17, v19, &v37);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100004C6C(v16);
  }

  else
  {
    sub_100007214(v0 + 16, &qword_100601D20, &qword_1004C9A80);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 904);
  sub_100009130(0, &qword_1006013C8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004BD0F4();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004BCF44();

  sub_100007214(v21, &qword_1006013C0, &qword_1004C8480);
  *(v0 + 880) = v24;
  sub_1004BCF34();
  sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004B8544();

  *(v0 + 888) = v25;
  v26 = *(v0 + 160);
  *(v0 + 336) = *(v0 + 144);
  *(v0 + 352) = v26;
  v27 = *(v0 + 192);
  *(v0 + 368) = *(v0 + 176);
  *(v0 + 384) = v27;
  v28 = *(v0 + 128);
  *(v0 + 304) = *(v0 + 112);
  *(v0 + 320) = v28;
  v29 = *(v0 + 384);
  v30 = swift_allocObject();
  v31 = *(v0 + 160);
  v30[3] = *(v0 + 144);
  v30[4] = v31;
  v32 = *(v0 + 192);
  v30[5] = *(v0 + 176);
  v30[6] = v32;
  v33 = *(v0 + 128);
  v30[1] = *(v0 + 112);
  v30[2] = v33;
  sub_10000F778(v0 + 304, v0 + 400, &qword_100601D20, &qword_1004C9A80);
  sub_100003ABC(&qword_1006013D8, &qword_1004C8488);
  sub_1000206D4(&qword_1006013E0, &qword_1006013D8, &qword_1004C8488, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 976) = sub_1004B8644();

  v36 = (v29 + *v29);
  v34 = swift_task_alloc();
  *(v0 + 984) = v34;
  *v34 = v0;
  v34[1] = sub_1001733DC;

  return v36(v0 + 112);
}

uint64_t sub_1001733DC()
{
  *(*v1 + 992) = v0;

  if (v0)
  {
    v2 = sub_100173744;
  }

  else
  {
    v2 = sub_1001734F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001734F0()
{
  v24 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 936);
  v4 = *(v0 + 912);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 160);
  *(v0 + 720) = *(v0 + 144);
  *(v0 + 736) = v5;
  v6 = *(v0 + 192);
  *(v0 + 752) = *(v0 + 176);
  *(v0 + 768) = v6;
  v7 = *(v0 + 128);
  *(v0 + 688) = *(v0 + 112);
  *(v0 + 704) = v7;
  sub_10000F778(v0 + 688, v0 + 784, &qword_100601D20, &qword_1004C9A80);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 936);
  v12 = *(v0 + 920);
  v13 = *(v0 + 912);
  if (v10)
  {
    v22 = *(v0 + 936);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 720));
    v18 = v17;
    sub_100007214(v0 + 688, &qword_100601D20, &qword_1004C9A80);
    v19 = sub_100012018(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100004C6C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_100007214(v0 + 688, &qword_100601D20, &qword_1004C9A80);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100173744()
{
  v28 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 928);
  v4 = *(v0 + 912);

  v1(v3, v2, v4);
  v5 = *(v0 + 160);
  *(v0 + 528) = *(v0 + 144);
  *(v0 + 544) = v5;
  v6 = *(v0 + 192);
  *(v0 + 560) = *(v0 + 176);
  *(v0 + 576) = v6;
  v7 = *(v0 + 128);
  *(v0 + 496) = *(v0 + 112);
  *(v0 + 512) = v7;
  sub_10000F778(v0 + 496, v0 + 592, &qword_100601D20, &qword_1004C9A80);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 992);
    v26 = *(v0 + 928);
    v11 = *(v0 + 920);
    v12 = *(v0 + 912);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 528));
    v16 = v15;
    sub_100007214(v0 + 496, &qword_100601D20, &qword_1004C9A80);
    v17 = sub_100012018(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 896) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 928);
    v22 = *(v0 + 920);
    v23 = *(v0 + 912);

    sub_100007214(v0 + 496, &qword_100601D20, &qword_1004C9A80);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100173A28(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100003ABC(&qword_1006013C0, &qword_1004C8480);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004B80B4();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_100173B58, 0, 0);
}

uint64_t sub_100173B58()
{
  v39 = v0;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100007084(v3, qword_1006013A8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_10000F778(v0 + 16, v0 + 240, &qword_100601D00, &qword_1004C9A50);
  v9 = sub_1004B8094();
  v10 = sub_1004BC9A4();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_100007214(v0 + 16, &qword_100601D00, &qword_1004C9A50);
    v20 = sub_100012018(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100004C6C(v16);
  }

  else
  {
    sub_100007214(v0 + 16, &qword_100601D00, &qword_1004C9A50);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009130(0, &qword_1006013C8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004BD0F4();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004BCF44();

  sub_100007214(v21, &qword_1006013C0, &qword_1004C8480);
  *(v0 + 1024) = v24;
  sub_1004BCF34();
  sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004B8544();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_10000F778(v0 + 352, v0 + 464, &qword_100601D00, &qword_1004C9A50);
  sub_100003ABC(&qword_1006013D8, &qword_1004C8488);
  sub_1000206D4(&qword_1006013E0, &qword_1006013D8, &qword_1004C8488, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_1004B8644();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_100174080;

  return v37(v0 + 128);
}

uint64_t sub_100174080()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1001743F0;
  }

  else
  {
    v2 = sub_100174194;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100174194()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601D00, &qword_1004C9A50);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_100007214(v0 + 800, &qword_100601D00, &qword_1004C9A50);
    v19 = sub_100012018(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100004C6C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_100007214(v0 + 800, &qword_100601D00, &qword_1004C9A50);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1001743F0()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601D00, &qword_1004C9A50);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601D00, &qword_1004C9A50);
    v17 = sub_100012018(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_100007214(v0 + 576, &qword_100601D00, &qword_1004C9A50);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1001746DC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100003ABC(&qword_1006013C0, &qword_1004C8480);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004B80B4();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_10017480C, 0, 0);
}

uint64_t sub_10017480C()
{
  v39 = v0;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100007084(v3, qword_1006013A8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_10000F778(v0 + 16, v0 + 240, &qword_100601CF8, &qword_1004D08E0);
  v9 = sub_1004B8094();
  v10 = sub_1004BC9A4();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_100007214(v0 + 16, &qword_100601CF8, &qword_1004D08E0);
    v20 = sub_100012018(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100004C6C(v16);
  }

  else
  {
    sub_100007214(v0 + 16, &qword_100601CF8, &qword_1004D08E0);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009130(0, &qword_1006013C8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004BD0F4();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004BCF44();

  sub_100007214(v21, &qword_1006013C0, &qword_1004C8480);
  *(v0 + 1024) = v24;
  sub_1004BCF34();
  sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004B8544();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_10000F778(v0 + 352, v0 + 464, &qword_100601CF8, &qword_1004D08E0);
  sub_100003ABC(&qword_1006013D8, &qword_1004C8488);
  sub_1000206D4(&qword_1006013E0, &qword_1006013D8, &qword_1004C8488, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_1004B8644();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_100174D34;

  return v37(v0 + 128);
}

uint64_t sub_100174D34()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1001750A4;
  }

  else
  {
    v2 = sub_100174E48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100174E48()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601CF8, &qword_1004D08E0);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_100007214(v0 + 800, &qword_100601CF8, &qword_1004D08E0);
    v19 = sub_100012018(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100004C6C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_100007214(v0 + 800, &qword_100601CF8, &qword_1004D08E0);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1001750A4()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601CF8, &qword_1004D08E0);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601CF8, &qword_1004D08E0);
    v17 = sub_100012018(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_100007214(v0 + 576, &qword_100601CF8, &qword_1004D08E0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100175390(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100003ABC(&qword_1006013C0, &qword_1004C8480);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004B80B4();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_1001754C0, 0, 0);
}

uint64_t sub_1001754C0()
{
  v39 = v0;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100007084(v3, qword_1006013A8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_10000F778(v0 + 16, v0 + 240, &qword_100601CF0, &unk_1004C9A30);
  v9 = sub_1004B8094();
  v10 = sub_1004BC9A4();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_100007214(v0 + 16, &qword_100601CF0, &unk_1004C9A30);
    v20 = sub_100012018(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100004C6C(v16);
  }

  else
  {
    sub_100007214(v0 + 16, &qword_100601CF0, &unk_1004C9A30);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009130(0, &qword_1006013C8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004BD0F4();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004BCF44();

  sub_100007214(v21, &qword_1006013C0, &qword_1004C8480);
  *(v0 + 1024) = v24;
  sub_1004BCF34();
  sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004B8544();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_10000F778(v0 + 352, v0 + 464, &qword_100601CF0, &unk_1004C9A30);
  sub_100003ABC(&qword_1006013D8, &qword_1004C8488);
  sub_1000206D4(&qword_1006013E0, &qword_1006013D8, &qword_1004C8488, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_1004B8644();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_1001759E8;

  return v37(v0 + 128);
}

uint64_t sub_1001759E8()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_100175D58;
  }

  else
  {
    v2 = sub_100175AFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100175AFC()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601CF0, &unk_1004C9A30);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_100007214(v0 + 800, &qword_100601CF0, &unk_1004C9A30);
    v19 = sub_100012018(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100004C6C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_100007214(v0 + 800, &qword_100601CF0, &unk_1004C9A30);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100175D58()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601CF0, &unk_1004C9A30);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601CF0, &unk_1004C9A30);
    v17 = sub_100012018(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_100007214(v0 + 576, &qword_100601CF0, &unk_1004C9A30);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100176044(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100003ABC(&qword_1006013C0, &qword_1004C8480);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_1004B80B4();
  *(v4 + 1056) = v6;
  *(v4 + 1064) = *(v6 - 8);
  *(v4 + 1072) = swift_task_alloc();
  *(v4 + 1080) = swift_task_alloc();
  *(v4 + 1088) = swift_task_alloc();
  v7 = a4[5];
  *(v4 + 192) = a4[4];
  *(v4 + 208) = v7;
  *(v4 + 224) = a4[6];
  v8 = a4[1];
  *(v4 + 128) = *a4;
  *(v4 + 144) = v8;
  v9 = a4[3];
  *(v4 + 160) = a4[2];
  *(v4 + 176) = v9;

  return _swift_task_switch(sub_100176174, 0, 0);
}

uint64_t sub_100176174()
{
  v39 = v0;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_100007084(v3, qword_1006013A8);
  *(v0 + 1096) = v4;
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v0 + 208);
  *(v0 + 80) = *(v0 + 192);
  *(v0 + 96) = v6;
  *(v0 + 112) = *(v0 + 224);
  v7 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v7;
  v8 = *(v0 + 176);
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = v8;
  sub_10000F778(v0 + 16, v0 + 240, &qword_100601CE8, &qword_1004D0930);
  v9 = sub_1004B8094();
  v10 = sub_1004BC9A4();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1088);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  if (v11)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v38 = v16;
    *v15 = 136446210;
    v17 = ActionType.rawValue.getter(*(v0 + 64));
    v19 = v18;
    sub_100007214(v0 + 16, &qword_100601CE8, &qword_1004D0930);
    v20 = sub_100012018(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100004C6C(v16);
  }

  else
  {
    sub_100007214(v0 + 16, &qword_100601CE8, &qword_1004D0930);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_100009130(0, &qword_1006013C8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004BD0F4();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1004BCF44();

  sub_100007214(v21, &qword_1006013C0, &qword_1004C8480);
  *(v0 + 1024) = v24;
  sub_1004BCF34();
  sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004B8544();

  *(v0 + 1032) = v25;
  v26 = *(v0 + 224);
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 448) = v26;
  v27 = *(v0 + 192);
  v28 = *(v0 + 144);
  *(v0 + 352) = *(v0 + 128);
  *(v0 + 368) = v28;
  v29 = *(v0 + 160);
  *(v0 + 400) = *(v0 + 176);
  *(v0 + 416) = v27;
  *(v0 + 384) = v29;
  v30 = *(v0 + 448);
  v31 = swift_allocObject();
  v32 = *(v0 + 208);
  v31[5] = *(v0 + 192);
  v31[6] = v32;
  v31[7] = *(v0 + 224);
  v33 = *(v0 + 144);
  v31[1] = *(v0 + 128);
  v31[2] = v33;
  v34 = *(v0 + 176);
  v31[3] = *(v0 + 160);
  v31[4] = v34;
  sub_10000F778(v0 + 352, v0 + 464, &qword_100601CE8, &qword_1004D0930);
  sub_100003ABC(&qword_1006013D8, &qword_1004C8488);
  sub_1000206D4(&qword_1006013E0, &qword_1006013D8, &qword_1004C8488, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_1004B8644();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_10017669C;

  return v37(v0 + 128);
}

uint64_t sub_10017669C()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_100176A0C;
  }

  else
  {
    v2 = sub_1001767B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001767B0()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_1004B84E4();
  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 864) = *(v0 + 192);
  *(v0 + 880) = v5;
  *(v0 + 896) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 800) = *(v0 + 128);
  *(v0 + 816) = v6;
  v7 = *(v0 + 176);
  *(v0 + 832) = *(v0 + 160);
  *(v0 + 848) = v7;
  sub_10000F778(v0 + 800, v0 + 912, &qword_100601CE8, &qword_1004D0930);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 1056);
  if (v10)
  {
    v22 = *(v0 + 1080);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136446210;
    v16 = ActionType.rawValue.getter(*(v0 + 848));
    v18 = v17;
    sub_100007214(v0 + 800, &qword_100601CE8, &qword_1004D0930);
    v19 = sub_100012018(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100004C6C(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_100007214(v0 + 800, &qword_100601CE8, &qword_1004D0930);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100176A0C()
{
  v28 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 1056);

  v1(v3, v2, v4);
  v5 = *(v0 + 208);
  *(v0 + 640) = *(v0 + 192);
  *(v0 + 656) = v5;
  *(v0 + 672) = *(v0 + 224);
  v6 = *(v0 + 144);
  *(v0 + 576) = *(v0 + 128);
  *(v0 + 592) = v6;
  v7 = *(v0 + 176);
  *(v0 + 608) = *(v0 + 160);
  *(v0 + 624) = v7;
  sub_10000F778(v0 + 576, v0 + 688, &qword_100601CE8, &qword_1004D0930);
  swift_errorRetain();
  v8 = sub_1004B8094();
  v9 = sub_1004BC984();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 1136);
    v26 = *(v0 + 1072);
    v11 = *(v0 + 1064);
    v12 = *(v0 + 1056);
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = ActionType.rawValue.getter(*(v0 + 624));
    v16 = v15;
    sub_100007214(v0 + 576, &qword_100601CE8, &qword_1004D0930);
    v17 = sub_100012018(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, &v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v26, v12);
  }

  else
  {
    v21 = *(v0 + 1072);
    v22 = *(v0 + 1064);
    v23 = *(v0 + 1056);

    sub_100007214(v0 + 576, &qword_100601CE8, &qword_1004D0930);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100176CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 1064) = a4;
  sub_100003ABC(&qword_1006013C0, &qword_1004C8480);
  *(v5 + 1072) = swift_task_alloc();
  v7 = sub_1004B80B4();
  *(v5 + 1080) = v7;
  *(v5 + 1088) = *(v7 - 8);
  *(v5 + 1096) = swift_task_alloc();
  *(v5 + 1104) = swift_task_alloc();
  *(v5 + 1112) = swift_task_alloc();
  *(v5 + 1176) = a5;

  return _swift_task_switch(sub_100176E10, 0, 0);
}

uint64_t sub_100176E10()
{
  v32 = v0;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1112);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1064);
  v5 = sub_100007084(v3, qword_1006013A8);
  *(v0 + 1120) = v5;
  v6 = *(v2 + 16);
  *(v0 + 1128) = v6;
  *(v0 + 1136) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  sub_10000F778(v4, v0 + 16, &qword_100602058, &qword_1004CA388);
  v7 = sub_1004B8094();
  v8 = sub_1004BC9A4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 1112);
  v11 = *(v0 + 1088);
  v12 = *(v0 + 1080);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446210;
    v15 = *(v0 + 208);
    sub_100007214(v0 + 16, &qword_100602058, &qword_1004CA388);
    v16 = ActionType.rawValue.getter(v15);
    v18 = sub_100012018(v16, v17, &v31);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finishing…", v13, 0xCu);
    sub_100004C6C(v14);
  }

  else
  {
    sub_100007214(v0 + 16, &qword_100602058, &qword_1004CA388);
  }

  v19 = *(v11 + 8);
  v19(v10, v12);
  *(v0 + 1144) = v19;
  v20 = *(v0 + 1072);
  v21 = *(v0 + 1064);
  sub_100009130(0, &qword_1006013C8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_1004BD0F4();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = sub_1004BCF44();

  sub_100007214(v20, &qword_1006013C0, &qword_1004C8480);
  *(v0 + 1040) = v24;
  sub_1004BCF34();
  sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_1004B8544();

  *(v0 + 1048) = v25;
  sub_10000F778(v21, v0 + 272, &qword_100602058, &qword_1004CA388);
  v26 = swift_allocObject();
  sub_100025B04(v0 + 272, v26 + 16, &qword_100602058, &qword_1004CA388);
  sub_100003ABC(&qword_1006013D8, &qword_1004C8488);
  sub_1000206D4(&qword_1006013E0, &qword_1006013D8, &qword_1004C8488, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1152) = sub_1004B8644();

  v30 = (*(v21 + 240) + **(v21 + 240));
  v27 = swift_task_alloc();
  *(v0 + 1160) = v27;
  *v27 = v0;
  v27[1] = sub_1001772F8;
  v28 = *(v0 + 1064);

  return v30(v28, v0 + 1176);
}

uint64_t sub_1001772F8()
{
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v2 = sub_10017765C;
  }

  else
  {
    v2 = sub_10017740C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10017740C()
{
  v23 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1104);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1064);
  sub_1004B84E4();
  v1(v3, v2, v4);
  sub_10000F778(v5, v0 + 784, &qword_100602058, &qword_1004CA388);
  v6 = sub_1004B8094();
  v7 = sub_1004BC9A4();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1144);
  v10 = *(v0 + 1104);
  v11 = *(v0 + 1080);
  if (v8)
  {
    v21 = *(v0 + 1144);
    v12 = swift_slowAlloc();
    v20 = v10;
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446210;
    v14 = *(v0 + 976);
    sub_100007214(v0 + 784, &qword_100602058, &qword_1004CA388);
    v15 = ActionType.rawValue.getter(v14);
    v17 = sub_100012018(v15, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: finish success", v12, 0xCu);
    sub_100004C6C(v13);

    v21(v20, v11);
  }

  else
  {
    sub_100007214(v0 + 784, &qword_100602058, &qword_1004CA388);

    v9(v10, v11);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10017765C()
{
  v26 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1064);

  v1(v3, v2, v4);
  sub_10000F778(v5, v0 + 528, &qword_100602058, &qword_1004CA388);
  swift_errorRetain();
  v6 = sub_1004B8094();
  v7 = sub_1004BC984();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1168);
    v23 = *(v0 + 1096);
    v24 = *(v0 + 1144);
    v9 = *(v0 + 1080);
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v10 = 136446466;
    v11 = *(v0 + 720);
    sub_100007214(v0 + 528, &qword_100602058, &qword_1004CA388);
    v12 = ActionType.rawValue.getter(v11);
    v14 = sub_100012018(v12, v13, &v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 1056) = v8;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v15 = sub_1004BBF04();
    v17 = sub_100012018(v15, v16, &v25);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: finish failed: %{public}s", v10, 0x16u);
    swift_arrayDestroy();

    v24(v23, v9);
  }

  else
  {
    v18 = *(v0 + 1144);
    v19 = *(v0 + 1096);
    v20 = *(v0 + 1080);
    sub_100007214(v0 + 528, &qword_100602058, &qword_1004CA388);

    v18(v19, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100177930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_100003ABC(&qword_1006013C0, &qword_1004C8480);
  v4[6] = swift_task_alloc();
  v5 = sub_100003ABC(&qword_100601DE0, &unk_1004D0810);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_1004B80B4();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_100177AD4, 0, 0);
}

uint64_t sub_100177AD4()
{
  v37 = v0;
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[5];
  v6 = sub_100007084(v2, qword_1006013A8);
  v0[19] = v6;
  v7 = *(v3 + 16);
  v0[20] = v7;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  sub_10000F778(v5, v4, &qword_100601DE0, &unk_1004D0810);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[14];
  v13 = v0[15];
  v14 = v0[13];
  if (v10)
  {
    v15 = v0[7];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136446210;
    LOBYTE(v15) = *(v14 + *(v15 + 36));
    sub_100007214(v14, &qword_100601DE0, &unk_1004D0810);
    v18 = ActionType.rawValue.getter(v15);
    v20 = sub_100012018(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finishing…", v16, 0xCu);
    sub_100004C6C(v17);
  }

  else
  {
    sub_100007214(v0[13], &qword_100601DE0, &unk_1004D0810);
  }

  (*(v13 + 8))(v11, v12);
  v21 = v0[12];
  v22 = v0[8];
  v23 = v0[6];
  v24 = v0[7];
  v25 = v0[5];
  sub_100009130(0, &qword_1006013C8, NSTimer_ptr);
  v26 = [objc_opt_self() mainRunLoop];
  v27 = sub_1004BD0F4();
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  v28 = sub_1004BCF44();

  sub_100007214(v23, &qword_1006013C0, &qword_1004C8480);
  v0[2] = v28;
  sub_1004BCF34();
  sub_100189D50(&qword_1006013D0, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v29 = sub_1004B8544();

  v0[3] = v29;
  sub_10000F778(v25, v21, &qword_100601DE0, &unk_1004D0810);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = swift_allocObject();
  sub_100025B04(v21, v31 + v30, &qword_100601DE0, &unk_1004D0810);
  sub_100003ABC(&qword_1006013D8, &qword_1004C8488);
  sub_1000206D4(&qword_1006013E0, &qword_1006013D8, &qword_1004C8488, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  v0[22] = sub_1004B8644();

  v35 = (*(v25 + *(v24 + 52)) + **(v25 + *(v24 + 52)));
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = sub_100177FD8;
  v33 = v0[5];

  return v35(v33);
}

uint64_t sub_100177FD8()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_10017834C;
  }

  else
  {
    v2 = sub_1001780EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001780EC()
{
  v24 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[5];
  sub_1004B84E4();
  v2(v3, v1, v4);
  sub_10000F778(v6, v5, &qword_100601DE0, &unk_1004D0810);
  v7 = sub_1004B8094();
  v8 = sub_1004BC9A4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[17];
  v12 = v0[14];
  v11 = v0[15];
  v13 = v0[11];
  if (v9)
  {
    v14 = v0[7];
    v22 = v0[17];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446210;
    LOBYTE(v14) = *(v13 + *(v14 + 36));
    sub_100007214(v13, &qword_100601DE0, &unk_1004D0810);
    v17 = ActionType.rawValue.getter(v14);
    v19 = sub_100012018(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish success", v15, 0xCu);
    sub_100004C6C(v16);

    (*(v11 + 8))(v22, v12);
  }

  else
  {
    sub_100007214(v0[11], &qword_100601DE0, &unk_1004D0810);

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_10017834C()
{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[5];

  v2(v3, v1, v4);
  sub_10000F778(v6, v5, &qword_100601DE0, &unk_1004D0810);
  swift_errorRetain();
  v7 = sub_1004B8094();
  v8 = sub_1004BC984();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[24];
    v10 = v0[15];
    v26 = v0[16];
    v11 = v0[14];
    v12 = v0[10];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136446466;
    LOBYTE(v13) = *(v12 + *(v13 + 36));
    sub_100007214(v12, &qword_100601DE0, &unk_1004D0810);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_100012018(v15, v16, &v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[4] = v9;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v18 = sub_1004BBF04();
    v20 = sub_100012018(v18, v19, &v27);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v26, v11);
  }

  else
  {
    v22 = v0[15];
    v21 = v0[16];
    v23 = v0[14];
    sub_100007214(v0[10], &qword_100601DE0, &unk_1004D0810);

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_100178640(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_1004B80B4();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v9 = sub_100007084(v5, qword_1006013A8);
  (*(v6 + 16))(v8, v9, v5);
  sub_10000F778(a2, v21, &qword_100601C58, &qword_1004D0AC0);
  v10 = sub_1004B8094();
  v11 = sub_1004BC9A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v21[0] = v14;
    *v13 = 136446210;
    v15 = ActionType.rawValue.getter(*(a2 + 72));
    v17 = v16;
    sub_100007214(a2, &qword_100601C58, &qword_1004D0AC0);
    v18 = sub_100012018(v15, v17, v21);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, v20, v13, 0xCu);
    sub_100004C6C(v14);
  }

  else
  {
    sub_100007214(a2, &qword_100601C58, &qword_1004D0AC0);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10017889C(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_1004B80B4();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v9 = sub_100007084(v5, qword_1006013A8);
  (*(v6 + 16))(v8, v9, v5);
  sub_10000F778(a2, v22, &qword_100601D20, &qword_1004C9A80);
  v10 = sub_1004B8094();
  v11 = sub_1004BC9A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136446210;
    v15 = ActionType.rawValue.getter(*(a2 + 32));
    v17 = v16;
    sub_100007214(a2, &qword_100601D20, &qword_1004C9A80);
    v18 = sub_100012018(v15, v17, v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, v21, v13, 0xCu);
    sub_100004C6C(v14);
  }

  else
  {
    sub_100007214(a2, &qword_100601D20, &qword_1004C9A80);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100178AF8(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_1004B80B4();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005FFD40 != -1)
  {
    swift_once();
  }

  v9 = sub_100007084(v5, qword_1006013A8);
  (*(v6 + 16))(v8, v9, v5);
  sub_10000F778(a2, v23, &qword_100602058, &qword_1004CA388);
  v10 = sub_1004B8094();
  v11 = sub_1004BC9A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    v15 = v23[192];
    sub_100007214(v23, &qword_100602058, &qword_1004CA388);
    v16 = ActionType.rawValue.getter(v15);
    v18 = sub_100012018(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, v21, v13, 0xCu);
    sub_100004C6C(v14);
  }

  else
  {
    sub_100007214(v23, &qword_100602058, &qword_1004CA388);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100178D50(uint64_t a1, char a2)
{
  type metadata accessor for Notice(0);
  __chkstk_darwin();
  v5 = (&v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_10018A21C(v5, type metadata accessor for Notice);
  }

  v7 = Strong;
  sub_100238978(v12);

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    sub_100009178(v12, v13);
    (*(v9 + 8))(v5, a2 & 1, v8, v9);
    sub_10018A21C(v5, type metadata accessor for Notice);
    return sub_100004C6C(v12);
  }

  else
  {
    sub_10018A21C(v5, type metadata accessor for Notice);
    return sub_100007214(v12, &qword_100601CE0, &qword_1004C99F0);
  }
}

Swift::Int NSFileManager.Failure.hashValue.getter()
{
  sub_1004BDBA4();
  sub_1004BDBB4(0);
  return sub_1004BDBF4();
}

Swift::Int sub_100178F20()
{
  sub_1004BDBA4();
  sub_1004BDBB4(0);
  return sub_1004BDBF4();
}

uint64_t MusicLibrary.ActionableState.description.getter(uint64_t a1, unsigned __int16 a2)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v4 = *(sub_100003ABC(&qword_100604C50, &unk_1004D0520) - 8);
  __chkstk_darwin();
  v7 = v18 - v6;
  if (!(a2 >> 14))
  {
    v9 = a1;
    v10 = 0xE000000000000000;
    if (v9 == 5)
    {
      v11._countAndFlagsBits = 0;
LABEL_31:
      v20 = 0x6164644120959EE2;
      v21 = 0xAB00000000656C62;
      v11._object = v10;
      sub_1004BC024(v11);

      return v20;
    }

    v14 = 0xD000000000000016;
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_1004BD404(29);

    v20 = 0xD00000000000001BLL;
    v21 = 0x80000001005024C0;
    if (v9 <= 1)
    {
      if (v9)
      {
        v15 = "Cloud Library Initial Import";
        v14 = 0xD00000000000001FLL;
        goto LABEL_30;
      }

      v17 = "Cloud Library Required";
    }

    else
    {
      if (v9 == 2)
      {
        v15 = "Unadded Tracks Present";
        v14 = 0xD00000000000001CLL;
        goto LABEL_30;
      }

      if (v9 == 3)
      {
        v15 = "hat requires an iCloud account.";
        v14 = 0xD000000000000015;
LABEL_30:
        v19._countAndFlagsBits = v14;
        v19._object = (v15 | 0x8000000000000000);
        sub_100003ABC(&unk_100606160, &qword_1004CAC60);
        v23._countAndFlagsBits = sub_1004BBF04();
        sub_1004BC024(v23);

        v11._countAndFlagsBits = v20;
        v10 = v21;
        goto LABEL_31;
      }

      v17 = "Unadded Tracks Present";
    }

    v15 = (v17 - 32);
    goto LABEL_30;
  }

  if (a2 >> 14 == 1)
  {
    if ((a2 & 0x100) != 0)
    {
      v8 = 9;
      return v8 | 0x1000000000000014;
    }

    if (a2)
    {
      v8 = 10;
      return v8 | 0x1000000000000014;
    }

    v20 = 0;
    v21 = 0xE000000000000000;
    v16 = v5;
    sub_1004BD404(24);

    v20 = 0x1000000000000014;
    v21 = 0x8000000100502440;
    v18[1] = a1;
    sub_1004B6D94();
    sub_1001793DC();
    sub_1004B69D4();
    sub_1000206D4(&qword_100604C60, &qword_100604C50, &unk_1004D0520, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Percent);
    sub_1004BBC14();
    (*(v4 + 8))(v7, v16);
    sub_1004BC024(v19);

    v22._countAndFlagsBits = 8233;
    v22._object = 0xE200000000000000;
    sub_1004BC024(v22);
    return v20;
  }

  if (!(a1 | a2 ^ 0x8000))
  {
    return 1701736270;
  }

  if (a2 == 0x8000 && a1 == 1)
  {
    return 0x1000000000000013;
  }

  else
  {
    return 0x1000000000000014;
  }
}

unint64_t MusicLibrary.ActionableState.AddOverride.description.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000016;
  v2 = 0xD00000000000001CLL;
  v3 = 0xD000000000000015;
  if (a1 != 3)
  {
    v3 = 0xD000000000000016;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0xD00000000000001FLL;
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

unint64_t sub_1001793DC()
{
  result = qword_100604C58;
  if (!qword_100604C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100604C58);
  }

  return result;
}

uint64_t MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1496) = v8;
  *(v9 + 1488) = v24;
  *(v9 + 1480) = a8;
  *(v9 + 1472) = a7;
  *(v9 + 1464) = a6;
  *(v9 + 1456) = a5;
  *(v9 + 1448) = a4;
  *(v9 + 1440) = a3;
  *(v9 + 1402) = a2;
  *(v9 + 1432) = a1;
  v10 = *a4;
  *(v9 + 1504) = *a4;
  v11 = sub_1004BB914();
  *(v9 + 1512) = v11;
  *(v9 + 1520) = *(v11 - 8);
  *(v9 + 1528) = swift_task_alloc();
  *(v9 + 1536) = sub_100003ABC(&qword_100602438, &qword_1004CAC48);
  *(v9 + 1544) = swift_task_alloc();
  sub_100003ABC(&qword_100602308, &unk_1004D0540);
  *(v9 + 1552) = swift_task_alloc();
  *(v9 + 1560) = swift_task_alloc();
  *(v9 + 1568) = swift_task_alloc();
  sub_100003ABC(&qword_100603CB0, &qword_1004CB660);
  *(v9 + 1576) = swift_task_alloc();
  v12 = sub_1004BBA84();
  *(v9 + 1584) = v12;
  *(v9 + 1592) = *(v12 - 8);
  *(v9 + 1600) = swift_task_alloc();
  v13 = sub_1004BAF04();
  *(v9 + 1608) = v13;
  *(v9 + 1616) = *(v13 - 8);
  *(v9 + 1624) = swift_task_alloc();
  *(v9 + 1632) = swift_task_alloc();
  *(v9 + 1640) = swift_task_alloc();
  sub_100003ABC(&qword_100601C50, &unk_1004C9840);
  *(v9 + 1648) = swift_task_alloc();
  sub_100003ABC(&qword_1006014F8, &unk_1004C8AA0);
  *(v9 + 1656) = swift_task_alloc();
  *(v9 + 1664) = swift_task_alloc();
  *(v9 + 1672) = swift_task_alloc();
  *(v9 + 1680) = swift_task_alloc();
  *(v9 + 1688) = swift_task_alloc();
  *(v9 + 1696) = swift_task_alloc();
  *(v9 + 1704) = swift_task_alloc();
  *(v9 + 1712) = swift_task_alloc();
  *(v9 + 1720) = type metadata accessor for MetricsEvent.Click(0);
  *(v9 + 1728) = swift_task_alloc();
  *(v9 + 1736) = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  *(v9 + 1744) = swift_task_alloc();
  *(v9 + 1752) = swift_task_alloc();
  *(v9 + 1760) = swift_task_alloc();
  *(v9 + 1768) = type metadata accessor for Notice.Variant(0);
  *(v9 + 1776) = swift_task_alloc();
  v14 = sub_1004B6D14();
  *(v9 + 1784) = v14;
  *(v9 + 1792) = *(v14 - 8);
  *(v9 + 1800) = swift_task_alloc();
  sub_1004B6E64();
  *(v9 + 1808) = swift_task_alloc();
  v15 = sub_1004BBE14();
  *(v9 + 1816) = v15;
  *(v9 + 1824) = *(v15 - 8);
  *(v9 + 1832) = swift_task_alloc();
  *(v9 + 1840) = swift_task_alloc();
  v16 = sub_1004BB0F4();
  *(v9 + 1848) = v16;
  *(v9 + 1856) = *(v16 - 8);
  *(v9 + 1864) = swift_task_alloc();
  *(v9 + 1872) = swift_task_alloc();
  *(v9 + 1880) = swift_task_alloc();
  v17 = sub_1004BAF14();
  *(v9 + 1888) = v17;
  *(v9 + 1896) = *(v17 - 8);
  *(v9 + 1904) = swift_task_alloc();
  *(v9 + 1912) = swift_task_alloc();
  v18 = sub_1004BB104();
  *(v9 + 1920) = v18;
  *(v9 + 1928) = *(v18 - 8);
  *(v9 + 1936) = swift_task_alloc();
  *(v9 + 1944) = swift_task_alloc();
  v19 = *(v10 + class metadata base offset for MusicLibrary.ItemState);
  *(v9 + 1952) = v19;
  *(v9 + 1960) = *(v19 - 8);
  *(v9 + 1968) = swift_task_alloc();
  *(v9 + 1976) = swift_task_alloc();
  *(v9 + 1984) = swift_task_alloc();
  *(v9 + 1992) = swift_task_alloc();
  *(v9 + 2000) = swift_task_alloc();
  *(v9 + 2008) = sub_1004BC474();
  *(v9 + 2016) = sub_1004BC464();
  v21 = sub_1004BC3E4();
  *(v9 + 2024) = v21;
  *(v9 + 2032) = v20;

  return _swift_task_switch(sub_100179B90, v21, v20);
}

uint64_t sub_100179B90(uint64_t a1, uint64_t a2)
{
  v555 = v2;
  if (qword_1005FFFC0 != -1)
  {
    swift_once();
  }

  v3 = *(v2 + 2000);
  v4 = *(v2 + 1960);
  v5 = *(v2 + 1952);
  v6 = *(v2 + 1440);
  v520 = sub_1004B80B4();
  *(v2 + 2040) = sub_100007084(v520, static Logger.libraryActionableState);
  v7 = *(v4 + 16);
  *(v2 + 2048) = v7;
  *(v2 + 2056) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  (v7)(v3, v6, v5);
  v8 = sub_1004B8094();
  v9 = sub_1004BC9A4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v2 + 2000);
  v526 = v7;
  if (v10)
  {
    v12 = *(v2 + 1992);
    v13 = *(v2 + 1960);
    v14 = *(v2 + 1952);
    v15 = swift_slowAlloc();
    v516 = v2;
    v16 = swift_slowAlloc();
    v554[0] = v16;
    *v15 = 136446210;
    (v7)(v12, v11, v14);
    v17 = sub_1004BBF04();
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_100012018(v17, v19, v554);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "╭ Performing action for item: %{public}s", v15, 0xCu);
    sub_100004C6C(v16);
    v2 = v516;
  }

  else
  {
    v21 = *(v2 + 1960);
    v22 = *(v2 + 1952);

    (*(v21 + 8))(v11, v22);
  }

  v23 = sub_1004B8094();
  v24 = sub_1004BC9A4();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v2 + 1432);
    v26 = *(v2 + 1402);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v554[0] = v28;
    *v27 = 136446210;
    v29 = MusicLibrary.ActionableState.description.getter(v25, v26);
    v31 = sub_100012018(v29, v30, v554);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "| Actionable state: %{public}s", v27, 0xCu);
    sub_100004C6C(v28);
  }

  v32 = sub_1004B8094();
  v33 = sub_1004BC9A4();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = *(v2 + 1944);
    v35 = *(v2 + 1928);
    v36 = *(v2 + 1920);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v554[0] = v38;
    *v37 = 136446210;
    sub_1004BB174();
    sub_100189D50(&qword_100604C70, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
    v39 = sub_1004BD934();
    v41 = v40;
    (*(v35 + 8))(v34, v36);
    v42 = sub_100012018(v39, v41, v554);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v32, v33, "| Add status: %{public}s", v37, 0xCu);
    sub_100004C6C(v38);
  }

  v43 = sub_1004B8094();
  v44 = sub_1004BC9A4();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = *(v2 + 1912);
    v46 = *(v2 + 1896);
    v47 = *(v2 + 1888);
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v554[0] = v49;
    *v48 = 136446210;
    sub_1004BB124();
    sub_100189D50(&qword_100604C78, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
    v50 = sub_1004BD934();
    v52 = v51;
    (*(v46 + 8))(v45, v47);
    v53 = sub_100012018(v50, v52, v554);

    *(v48 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v43, v44, "| Download status: %{public}s", v48, 0xCu);
    sub_100004C6C(v49);
  }

  v54 = sub_1004B8094();
  v55 = sub_1004BC9A4();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v554[0] = swift_slowAlloc();
    *v56 = 136446466;
    v57 = sub_1004BB054();
    v59 = sub_100012018(v57, v58, v554);

    *(v56 + 4) = v59;
    *(v56 + 12) = 2082;
    v60 = sub_1004BB024();
    v62 = sub_100012018(v60, v61, v554);

    *(v56 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v54, v55, "| Library: %{public}s (%{public}s)", v56, 0x16u);
    swift_arrayDestroy();
  }

  v63 = *(v2 + 1402);
  if (v63 >> 14)
  {
    if (v63 >> 14 == 1)
    {
      if ((v63 & 0x100) == 0)
      {
        v64 = sub_1004B8094();
        v65 = sub_1004BC9A4();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&_mh_execute_header, v64, v65, "|—● Cancelling download", v66, 2u);
        }

        v67 = swift_task_alloc();
        *(v2 + 2184) = v67;
        *v67 = v2;
        v67[1] = sub_10017E874;
        v68 = *(v2 + 1952);
        v69 = *(v2 + 1488);
        v70 = *(v2 + 1440);

        return MusicLibrary.cancelDownload<A>(_:)(v70, v68, v69);
      }

      v115 = sub_1004B8094();
      v116 = sub_1004BC9A4();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        *v117 = 0;
        _os_log_impl(&_mh_execute_header, v115, v116, "|—● Download is paused: Checking for reasons…", v117, 2u);
      }

      v118 = *(v2 + 1904);
      v119 = *(v2 + 1896);
      v120 = *(v2 + 1888);

      sub_1004BB124();
      v121 = (*(v119 + 88))(v118, v120);
      v122 = *(v2 + 1904);
      v123 = *(v2 + 1896);
      v124 = *(v2 + 1888);
      if (v121 == enum case for MusicLibrary.DownloadStatus.paused(_:))
      {
        v125 = *(v2 + 1640);
        v126 = *(v2 + 1616);
        v127 = *(v2 + 1608);
        (*(v123 + 96))(*(v2 + 1904), v124);
        (*(v126 + 32))(v125, v122, v127);
        MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter((v2 + 1120));
        v128 = *(v2 + 1176);
        v129 = *(v2 + 1640);
        v130 = *(v2 + 1616);
        v131 = *(v2 + 1608);
        if (v128)
        {
          v132 = *(v2 + 1632);
          v133 = *(v2 + 1184);
          v134 = *(v2 + 1136);
          *(v2 + 1048) = *(v2 + 1120);
          *(v2 + 1064) = v134;
          *(v2 + 1080) = *(v2 + 1152);
          *(v2 + 1096) = *(v2 + 1168);
          *(v2 + 1104) = v128;
          *(v2 + 1112) = v133;
          (*(v130 + 16))(v132, v129, v131);
          v135 = sub_1004B8094();
          v136 = sub_1004BC9A4();
          v137 = os_log_type_enabled(v135, v136);
          v138 = *(v2 + 1632);
          v139 = *(v2 + 1616);
          v140 = *(v2 + 1608);
          if (v137)
          {
            v533 = swift_slowAlloc();
            v540 = swift_slowAlloc();
            v554[0] = v540;
            *v533 = 136446210;
            sub_100189D50(&qword_100604C80, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons, &protocol conformance descriptor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
            v528 = v136;
            v141 = sub_1004BD934();
            v143 = v142;
            v521 = v135;
            v144 = *(v139 + 8);
            v144(v138, v140);
            v145 = v144;
            v146 = sub_100012018(v141, v143, v554);

            *(v533 + 4) = v146;
            _os_log_impl(&_mh_execute_header, v521, v528, "|—| Showing alert for reason: %{public}s", v533, 0xCu);
            sub_100004C6C(v540);
          }

          else
          {

            v450 = *(v139 + 8);
            v450(v138, v140);
            v145 = v450;
          }

          v451 = *(v2 + 1640);
          v452 = *(v2 + 1608);
          v453 = sub_1000C88F4((v2 + 1048), 0, 1);
          PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v453, *(v2 + 1080), 1, 0, 0);

          sub_100007214(v2 + 1120, &qword_100602B60, &qword_1004D0580);
          v145(v451, v452);
        }

        else
        {
          (*(v130 + 16))(*(v2 + 1624), v129, v131);
          v403 = sub_1004B8094();
          v404 = sub_1004BC984();
          v405 = os_log_type_enabled(v403, v404);
          v406 = *(v2 + 1640);
          v407 = *(v2 + 1624);
          v408 = *(v2 + 1616);
          v409 = *(v2 + 1608);
          if (v405)
          {
            v549 = *(v2 + 1640);
            v410 = swift_slowAlloc();
            v537 = swift_slowAlloc();
            v554[0] = v537;
            *v410 = 136446210;
            sub_100189D50(&qword_100604C80, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons, &protocol conformance descriptor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
            v411 = sub_1004BD934();
            v413 = v412;
            v414 = *(v408 + 8);
            v414(v407, v409);
            v415 = sub_100012018(v411, v413, v554);

            *(v410 + 4) = v415;
            _os_log_impl(&_mh_execute_header, v403, v404, "|—| Unhandled alert for reason: %{public}s", v410, 0xCu);
            sub_100004C6C(v537);

            v414(v549, v409);
          }

          else
          {

            v462 = *(v408 + 8);
            v462(v407, v409);
            v462(v406, v409);
          }
        }
      }

      else
      {
        v241 = *(v123 + 8);
        v241(*(v2 + 1904), v124);

        v242 = sub_1004B8094();
        v243 = sub_1004BC9A4();

        if (os_log_type_enabled(v242, v243))
        {
          v244 = *(v2 + 1912);
          v245 = *(v2 + 1888);
          v246 = swift_slowAlloc();
          v544 = swift_slowAlloc();
          v554[0] = v544;
          *v246 = 136446210;
          sub_1004BB124();
          sub_100189D50(&qword_100604C78, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
          v247 = sub_1004BD934();
          v249 = v248;
          v241(v244, v245);
          v250 = sub_100012018(v247, v249, v554);

          *(v246 + 4) = v250;
          _os_log_impl(&_mh_execute_header, v242, v243, "|—| No reasons found, download status does not match UI state %{public}s", v246, 0xCu);
          sub_100004C6C(v544);
        }
      }

      goto LABEL_145;
    }

    v98 = *(v2 + 1432);
    if (v98 | v63 ^ 0x8000)
    {
      if (*(v2 + 1402) == 0x8000 && v98 == 1)
      {
        v100 = sub_1004B8094();
        v101 = sub_1004BC9A4();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          *v102 = 0;
          _os_log_impl(&_mh_execute_header, v100, v101, "|—● Triggering download", v102, 2u);
        }

        v103 = *(v2 + 1992);
        v104 = *(v2 + 1952);
        v105 = *(v2 + 1648);
        v106 = *(v2 + 1504);
        v107 = *(v2 + 1496);
        v538 = *(v2 + 1488);
        v108 = *(v2 + 1480);
        v109 = *(v2 + 1456);
        v110 = *(v2 + 1440);

        (v526)(v103, v110, v104);
        sub_100047AC4(v109, v2 + 688);
        sub_1001890E4(v108, v105);
        v111 = type metadata accessor for Actions.MetricsReportingContext(0);
        (*(*(v111 - 8) + 56))(v105, 0, 1, v111);
        v112 = *(v106 + class metadata base offset for MusicLibrary.ItemState + 8);

        Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v103, v107, v2 + 688, v105, v104, v538, v112, &v551);
        *(v2 + 2144) = *(&v551 + 1);
        *(v2 + 2152) = *(&v552 + 1);
        *(v2 + 2160) = *(&v553 + 1);
        v113 = v552;
        *(v2 + 384) = v551;
        *(v2 + 400) = v113;
        *(v2 + 416) = v553;
        *(v2 + 432) = 1;
        *(v2 + 440) = sub_10004B4C4;
        *(v2 + 448) = 0;
        *(v2 + 456) = 0x4014000000000000;
        *(v2 + 464) = &unk_1004CA3F8;
        v539 = sub_100156B88;
        *(v2 + 472) = 0;
        *(v2 + 480) = &unk_1004CA400;
        *(v2 + 488) = 0;

        v114 = swift_task_alloc();
        *(v2 + 2168) = v114;
        *v114 = v2;
        v114[1] = sub_10017E3D8;
        goto LABEL_36;
      }

      v217 = sub_1004B8094();
      v218 = sub_1004BC9A4();
      if (os_log_type_enabled(v217, v218))
      {
        v220 = swift_slowAlloc();
        *v220 = 0;
        _os_log_impl(&_mh_execute_header, v217, v218, "|—● Is Downloaded: Prompting for delete/remove alert", v220, 2u);
      }

      v221 = *(v2 + 1984);
      v222 = *(v2 + 1952);
      v223 = *(v2 + 1592);
      v224 = *(v2 + 1440);

      (v526)(v221, v224, v222);
      v225 = swift_dynamicCast();
      v226 = *(v223 + 56);
      if ((v225 & 1) == 0)
      {
        v361 = *(v2 + 1576);
        v226(v361, 1, 1, *(v2 + 1584));
        sub_100007214(v361, &qword_100603CB0, &qword_1004CB660);
        v240 = v526;
LABEL_134:
        v439 = *(v2 + 1992);
        v440 = *(v2 + 1952);
        v441 = *(v2 + 1648);
        v442 = *(v2 + 1504);
        v443 = *(v2 + 1488);
        v444 = *(v2 + 1480);
        v445 = *(v2 + 1456);
        (v240)(v439, *(v2 + 1440), v440);
        sub_100047AC4(v445, v2 + 496);
        sub_1001890E4(v444, v441);
        v446 = type metadata accessor for Actions.MetricsReportingContext(0);
        (*(*(v446 - 8) + 56))(v441, 0, 1, v446);
        sub_1004BB1D4();
        v447 = sub_1004BB1C4();
        Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v439, v447, v2 + 496, v441, v440, v443, *(v442 + class metadata base offset for MusicLibrary.ItemState + 8), (v2 + 16));
        v448 = swift_allocObject();
        *(v448 + 16) = &unk_1004CA0A0;
        *(v448 + 24) = 0;
        *(v2 + 208) = 51;
        *(v2 + 224) = 0;
        *(v2 + 232) = 0x403E000000000000;
        *(v2 + 216) = sub_1000616A4;
        *(v2 + 240) = &unk_1004CA0B8;
        *(v2 + 248) = v448;
        *(v2 + 256) = &unk_1004CA0A8;
        *(v2 + 264) = 0;
        v449 = swift_task_alloc();
        *(v2 + 2216) = v449;
        *v449 = v2;
        v449[1] = sub_10017F170;

        return sub_1001665A4(0);
      }

      v227 = *(v2 + 1600);
      v228 = *(v2 + 1592);
      v229 = *(v2 + 1584);
      v230 = *(v2 + 1576);
      v524 = *(v2 + 1568);
      v231 = *(v2 + 1560);
      v232 = *(v2 + 1544);
      v543 = *(v2 + 1536);
      v233 = *(v2 + 1520);
      v234 = *(v2 + 1512);
      v226(v230, 0, 1, v229);
      (*(v228 + 32))(v227, v230, v229);
      v235 = v232;
      sub_1004BB934();
      (*(v233 + 104))(v231, enum case for Playlist.Variant.favoriteSongs(_:), v234);
      (*(v233 + 56))(v231, 0, 1, v234);
      v236 = *(v543 + 12);
      sub_10000F778(v524, v232, &qword_100602308, &unk_1004D0540);
      sub_10000F778(v231, v232 + v236, &qword_100602308, &unk_1004D0540);
      v237 = *(v233 + 48);
      if (v237(v235, 1, v234) == 1)
      {
        v238 = *(v2 + 1568);
        v239 = *(v2 + 1512);
        sub_100007214(*(v2 + 1560), &qword_100602308, &unk_1004D0540);
        sub_100007214(v238, &qword_100602308, &unk_1004D0540);
        if (v237(v235 + v236, 1, v239) == 1)
        {
          sub_100007214(*(v2 + 1544), &qword_100602308, &unk_1004D0540);
          v240 = v526;
LABEL_152:
          v468 = *(v2 + 1992);
          v469 = *(v2 + 1952);
          v470 = *(v2 + 1648);
          v471 = *(v2 + 1504);
          v472 = *(v2 + 1488);
          v473 = *(v2 + 1480);
          v474 = *(v2 + 1456);
          (v240)(v468, *(v2 + 1440), v469);
          sub_100047AC4(v474, v2 + 592);
          sub_1001890E4(v473, v470);
          v475 = type metadata accessor for Actions.MetricsReportingContext(0);
          (*(*(v475 - 8) + 56))(v470, 0, 1, v475);
          sub_1004BB1D4();
          v476 = sub_1004BB1C4();
          Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(v468, v476, 1, v2 + 592, v470, v469, v472, *(v471 + class metadata base offset for MusicLibrary.ItemState + 8), (v2 + 272));
          *(v2 + 320) = 48;
          *(v2 + 328) = sub_10004B4C4;
          *(v2 + 336) = 0;
          *(v2 + 344) = 0x4014000000000000;
          *(v2 + 352) = &unk_1004CA760;
          v539 = sub_100158068;
          *(v2 + 360) = 0;
          *(v2 + 368) = &unk_1004CA768;
          *(v2 + 376) = 0;
          v477 = swift_task_alloc();
          *(v2 + 2200) = v477;
          *v477 = v2;
          v477[1] = sub_10017ECD4;
LABEL_36:

          return v539();
        }
      }

      else
      {
        v432 = *(v2 + 1512);
        sub_10000F778(*(v2 + 1544), *(v2 + 1552), &qword_100602308, &unk_1004D0540);
        v433 = v237(v235 + v236, 1, v432);
        v434 = *(v2 + 1568);
        v435 = *(v2 + 1560);
        v436 = *(v2 + 1552);
        if (v433 != 1)
        {
          v550 = *(v2 + 1544);
          v463 = *(v2 + 1528);
          v464 = *(v2 + 1520);
          v465 = *(v2 + 1512);
          (*(v464 + 32))(v463, v235 + v236, v465);
          sub_100189D50(&qword_100603550, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
          v466 = sub_1004BBD84();
          v467 = *(v464 + 8);
          v467(v463, v465);
          sub_100007214(v435, &qword_100602308, &unk_1004D0540);
          sub_100007214(v434, &qword_100602308, &unk_1004D0540);
          v467(v436, v465);
          sub_100007214(v550, &qword_100602308, &unk_1004D0540);
          v240 = v526;
          if (v466)
          {
            goto LABEL_152;
          }

          goto LABEL_133;
        }

        v437 = *(v2 + 1520);
        v438 = *(v2 + 1512);
        sub_100007214(*(v2 + 1560), &qword_100602308, &unk_1004D0540);
        sub_100007214(v434, &qword_100602308, &unk_1004D0540);
        (*(v437 + 8))(v436, v438);
      }

      sub_100007214(*(v2 + 1544), &qword_100602438, &qword_1004CAC48);
      v240 = v526;
LABEL_133:
      (*(*(v2 + 1592) + 8))(*(v2 + 1600), *(v2 + 1584));
      goto LABEL_134;
    }

    v180 = sub_1004B8094();
    v181 = sub_1004BC9A4();
    if (os_log_type_enabled(v180, v181))
    {
      v182 = swift_slowAlloc();
      *v182 = 0;
      _os_log_impl(&_mh_execute_header, v180, v181, "|—● Nothing to Perform: Actionable State is unknown", v182, 2u);
    }

    sub_100189090();
    v183 = swift_allocError();
    swift_willThrow();
    goto LABEL_54;
  }

  v71 = *(v2 + 1936);
  v72 = *(v2 + 1928);
  v73 = *(v2 + 1920);
  sub_1004BB174();
  if ((*(v72 + 88))(v71, v73) == enum case for MusicLibrary.AddStatus.unaddable(_:))
  {
    v74 = *(v2 + 1936);
    v75 = *(v2 + 1880);
    v76 = *(v2 + 1856);
    v77 = *(v2 + 1848);
    (*(*(v2 + 1928) + 96))(v74, *(v2 + 1920));
    (*(v76 + 32))(v75, v74, v77);
    v78 = sub_1004B8094();
    v79 = sub_1004BC9A4();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&_mh_execute_header, v78, v79, "|—● Unaddable", v80, 2u);
    }

    v81 = *(v2 + 1880);
    v82 = *(v2 + 1872);
    v83 = *(v2 + 1856);
    v84 = *(v2 + 1848);

    v85 = *(v83 + 16);
    v85(v82, v81, v84);
    v86 = sub_1004B8094();
    v87 = sub_1004BC9A4();
    v88 = os_log_type_enabled(v86, v87);
    v89 = *(v2 + 1872);
    v90 = *(v2 + 1856);
    v91 = *(v2 + 1848);
    if (v88)
    {
      v532 = v85;
      v92 = swift_slowAlloc();
      v527 = swift_slowAlloc();
      v554[0] = v527;
      *v92 = 136446210;
      sub_100189D50(&qword_100601E38, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
      v517 = v87;
      v93 = sub_1004BD934();
      v95 = v94;
      v96 = *(v90 + 8);
      (v96)(v89, v91);
      v97 = sub_100012018(v93, v95, v554);

      *(v92 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v86, v517, "|—| Reason: %{public}s", v92, 0xCu);
      sub_100004C6C(v527);

      v85 = v532;
    }

    else
    {

      v96 = *(v90 + 8);
      (v96)(v89, v91);
    }

    v545 = v96;
    *(v2 + 2064) = v96;
    v251 = *(v2 + 1864);
    v252 = *(v2 + 1856);
    v253 = *(v2 + 1848);
    v85(v251, *(v2 + 1880), v253);
    v254 = (*(v252 + 88))(v251, v253);
    if (v254 == enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:))
    {

      v255 = sub_1004B8094();
      v256 = sub_1004BC9A4();
      if (os_log_type_enabled(v255, v256))
      {
        v257 = swift_slowAlloc();
        *v257 = 0;
        _os_log_impl(&_mh_execute_header, v255, v256, "|—| Presenting Explicit Restriction alert", v257, 2u);
      }

      v258 = *(v2 + 1456);

      sub_100114418(0, v2 + 1192);
      v259 = sub_1000C88F4((v2 + 1192), 0, 1);
      v260 = v259;
      v261 = *(v2 + 1224);
      v262 = *(v258 + 80);
      if (v262)
      {
        v263 = *(v258 + 88);
        v264 = qword_1006000B8;

        if (v264 != -1)
        {
          swift_once();
        }

        sub_100007084(v520, qword_100607AD0);
        v265 = sub_1004B8094();
        v266 = sub_1004BC9A4();
        if (os_log_type_enabled(v265, v266))
        {
          v267 = swift_slowAlloc();
          *v267 = 0;
          _os_log_impl(&_mh_execute_header, v265, v266, "Deferring presentation…", v267, 2u);
        }

        v534 = *(v2 + 1880);
        v268 = *(v2 + 1848);
        v269 = *(v2 + 1456);

        v270 = objc_allocWithZone(MSVBlockGuard);
        *(v2 + 1344) = sub_10023620C;
        *(v2 + 1352) = 0;
        *(v2 + 1312) = _NSConcreteStackBlock;
        *(v2 + 1320) = 1107296256;
        *(v2 + 1328) = sub_10023720C;
        *(v2 + 1336) = &unk_1005B36B0;
        v271 = _Block_copy((v2 + 1312));
        v272 = [v270 initWithTimeout:v271 interruptionHandler:10.0];
        _Block_release(v271);

        sub_100047AC4(v269, v2 + 880);
        v273 = swift_allocObject();
        *(v273 + 16) = v272;
        sub_100048998(v2 + 880, v273 + 24);
        *(v273 + 120) = v260;
        *(v273 + 128) = v261;
        *(v273 + 129) = 1;
        *(v273 + 136) = 0;
        *(v273 + 144) = 0;
        v274 = v272;
        v275 = v260;
        v262(v269, v275, sub_10005BC70, v273);
        sub_10003CC4C(v262, v263);

        sub_100052310(v2 + 1192);
        v276 = v534;
        v277 = v268;
        goto LABEL_144;
      }

      v416 = *(v2 + 1880);
      v417 = *(v2 + 1848);
      sub_1002346EC(v259, *(v2 + 1224), 1, 0, 0);

      sub_100052310(v2 + 1192);
      v276 = v416;
LABEL_143:
      v277 = v417;
LABEL_144:
      (v545)(v276, v277);
LABEL_145:
      v458 = sub_1004B8094();
      v459 = sub_1004BC9A4();
      if (os_log_type_enabled(v458, v459))
      {
        v460 = swift_slowAlloc();
        *v460 = 0;
        _os_log_impl(&_mh_execute_header, v458, v459, "╰ ✅ Succeeded", v460, 2u);
      }

      v461 = *(v2 + 8);

      return v461();
    }

    if (v254 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
    {
      if (v254 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:))
      {

        v362 = sub_1004B8094();
        v363 = sub_1004BC9A4();
        if (os_log_type_enabled(v362, v363))
        {
          v364 = swift_slowAlloc();
          *v364 = 0;
          _os_log_impl(&_mh_execute_header, v362, v363, "|—| Presenting library import in progress alert", v364, 2u);
        }

        v365 = *(v2 + 1840);
        v366 = *(v2 + 1832);
        v367 = *(v2 + 1824);
        v368 = *(v2 + 1816);

        sub_1004BBDA4();
        v511 = *(v367 + 16);
        v511(v366, v365, v368);
        if (qword_1005FFD30 != -1)
        {
          swift_once();
        }

        v369 = *(v2 + 1840);
        v370 = *(v2 + 1832);
        v371 = *(v2 + 1824);
        v372 = *(v2 + 1816);
        v507 = *(v2 + 1800);
        v515 = *(v2 + 1792);
        v519 = *(v2 + 1784);
        v547 = *(v2 + 1456);
        v373 = qword_100617118;
        sub_1004B6DF4();
        v374 = v373;
        v375 = sub_1004BBED4();
        v531 = v376;
        v535 = v375;
        v377 = *(v371 + 8);
        v377(v369, v372);
        sub_1004BBDA4();
        v511(v370, v369, v372);
        sub_1004B6DF4();
        v378 = sub_1004BBED4();
        v498 = v379;
        v503 = v378;
        v377(v369, v372);
        sub_1004BBDA4();
        v511(v370, v369, v372);
        sub_1004B6DF4();
        v380 = sub_1004BBED4();
        v382 = v381;
        v377(v369, v372);
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v383 = sub_1004B6CE4();
        v385 = v384;
        (*(v515 + 8))(v507, v519);
        sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
        v386 = swift_allocObject();
        *(v386 + 16) = xmmword_1004C50A0;
        *(v386 + 32) = v383;
        *(v386 + 40) = v385;
        *(v386 + 48) = v380;
        *(v386 + 56) = v382;
        *(v386 + 64) = 2;
        *(v386 + 72) = 0;
        *(v386 + 80) = 0;
        LOBYTE(v554[0]) = 1;
        *(v2 + 976) = v535;
        *(v2 + 984) = v531;
        *(v2 + 992) = v503;
        *(v2 + 1000) = v498;
        *(v2 + 1008) = 0;
        *(v2 + 1016) = 0;
        *(v2 + 1024) = 1;
        *(v2 + 1032) = v386;
        *(v2 + 1040) = 0;

        v387 = sub_1000C88F4((v2 + 976), 0, 1);
        v388 = v387;
        v389 = *(v547 + 10);
        if (v389)
        {
          v390 = *(v547 + 11);
          v391 = qword_1006000B8;

          if (v391 != -1)
          {
            swift_once();
          }

          sub_100007084(v520, qword_100607AD0);
          v392 = sub_1004B8094();
          v393 = sub_1004BC9A4();
          if (os_log_type_enabled(v392, v393))
          {
            v394 = swift_slowAlloc();
            *v394 = 0;
            _os_log_impl(&_mh_execute_header, v392, v393, "Deferring presentation…", v394, 2u);
          }

          v395 = *(v2 + 1856);
          v536 = *(v2 + 1848);
          v548 = *(v2 + 1880);
          v396 = *(v2 + 1456);

          v397 = objc_allocWithZone(MSVBlockGuard);
          *(v2 + 1296) = sub_10023620C;
          *(v2 + 1304) = 0;
          *(v2 + 1264) = _NSConcreteStackBlock;
          *(v2 + 1272) = 1107296256;
          *(v2 + 1280) = sub_10023720C;
          *(v2 + 1288) = &unk_1005B3660;
          v398 = _Block_copy((v2 + 1264));
          v399 = [v397 initWithTimeout:v398 interruptionHandler:10.0];
          _Block_release(v398);

          sub_100047AC4(v396, v2 + 784);
          v400 = swift_allocObject();
          *(v400 + 16) = v399;
          sub_100048998(v2 + 784, v400 + 24);
          *(v400 + 120) = v388;
          *(v400 + 128) = 257;
          *(v400 + 136) = 0;
          *(v400 + 144) = 0;
          v401 = v399;
          v402 = v388;
          v389(v396, v402, sub_10005BB20, v400);
          sub_10003CC4C(v389, v390);

          sub_100052310(v2 + 976);

          (*(v395 + 8))(v548, v536);
        }

        else
        {
          v484 = *(v2 + 1880);
          v485 = *(v2 + 1856);
          v486 = *(v2 + 1848);
          sub_1002346EC(v387, 1, 1, 0, 0);

          sub_100052310(v2 + 976);

          (*(v485 + 8))(v484, v486);
        }

        goto LABEL_145;
      }

      if (v254 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
      {
        v478 = sub_1004B8094();
        v479 = sub_1004BC964();
        if (os_log_type_enabled(v478, v479))
        {
          v480 = swift_slowAlloc();
          *v480 = 0;
          _os_log_impl(&_mh_execute_header, v478, v479, "|—| Unaddable reason is not supported by the UI", v480, 2u);
        }

        v481 = *(v2 + 1880);
        v482 = *(v2 + 1864);
        v483 = *(v2 + 1848);

        sub_100189090();
        v183 = swift_allocError();
        swift_willThrow();
        (v545)(v481, v483);
        (v545)(v482, v483);
LABEL_54:
        *(v2 + 2232) = v183;
        *(v2 + 1408) = v183;
        swift_errorRetain();
        sub_100003ABC(&qword_100604C30, &qword_1004C8490);
        v184 = swift_dynamicCast();
        v185 = *(v2 + 2048);
        v186 = *(v2 + 1952);
        v187 = *(v2 + 1440);
        if (v184)
        {
          v188 = *(v2 + 1976);

          v185(v188, v187, v186);

          v189 = sub_1004B8094();
          v190 = sub_1004BC984();

          if (os_log_type_enabled(v189, v190))
          {
            v513 = *(v2 + 2048);
            v505 = *(v2 + 1992);
            v509 = *(v2 + 1976);
            v523 = *(v2 + 1960);
            v191 = *(v2 + 1944);
            v192 = *(v2 + 1928);
            v193 = *(v2 + 1920);
            v194 = *(v2 + 1912);
            v195 = *(v2 + 1896);
            v496 = *(v2 + 1888);
            v501 = *(v2 + 1952);
            v542 = v190;
            v196 = *(v2 + 1432);
            v197 = *(v2 + 1402);
            v529 = v189;
            v198 = swift_slowAlloc();
            v554[0] = swift_slowAlloc();
            *v198 = 136447234;
            v199 = MusicLibrary.ActionableState.description.getter(v196, v197);
            v201 = sub_100012018(v199, v200, v554);

            *(v198 + 4) = v201;
            *(v198 + 12) = 2082;
            sub_1004BB174();
            sub_100189D50(&qword_100604C70, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
            v202 = sub_1004BD934();
            v204 = v203;
            (*(v192 + 8))(v191, v193);
            v205 = sub_100012018(v202, v204, v554);

            *(v198 + 14) = v205;
            *(v198 + 22) = 2082;
            sub_1004BB124();
            sub_100189D50(&qword_100604C78, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
            v206 = sub_1004BD934();
            v208 = v207;
            (*(v195 + 8))(v194, v496);
            v209 = sub_100012018(v206, v208, v554);

            *(v198 + 24) = v209;
            *(v198 + 32) = 2082;
            v513(v505, v509, v501);
            v210 = sub_1004BBF04();
            v212 = v211;
            (*(v523 + 8))(v509, v501);
            v213 = sub_100012018(v210, v212, v554);

            *(v198 + 34) = v213;
            *(v198 + 42) = 2082;
            v214 = sub_1004BBF04();
            v216 = sub_100012018(v214, v215, v554);

            *(v198 + 44) = v216;
            _os_log_impl(&_mh_execute_header, v529, v542, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v198, 0x34u);
            swift_arrayDestroy();
          }

          else
          {
            v418 = *(v2 + 1976);
            v419 = *(v2 + 1960);
            v420 = *(v2 + 1952);

            (*(v419 + 8))(v418, v420);
          }

          *(v2 + 2240) = sub_100189090();
          v421 = swift_allocError();
          *(v2 + 2248) = v421;
          v422 = swift_task_alloc();
          *(v2 + 2256) = v422;
          *v422 = v2;
          v422[1] = sub_10017F2A4;
          v423 = *(v2 + 1456);
          v424 = *(v2 + 1448);
          v425 = *(v2 + 1432);
          v426 = *(v2 + 1402);
          v427 = v421;
        }

        else
        {
          v334 = *(v2 + 1968);

          v185(v334, v187, v186);

          swift_errorRetain();
          v335 = sub_1004B8094();
          v336 = sub_1004BC984();

          if (os_log_type_enabled(v335, v336))
          {
            v514 = *(v2 + 2048);
            v506 = *(v2 + 1992);
            v510 = *(v2 + 1968);
            v525 = *(v2 + 1960);
            v337 = *(v2 + 1944);
            v338 = *(v2 + 1928);
            v339 = *(v2 + 1920);
            v497 = *(v2 + 1896);
            v502 = *(v2 + 1952);
            v492 = *(v2 + 1912);
            v494 = *(v2 + 1888);
            v546 = v336;
            v340 = *(v2 + 1432);
            v341 = *(v2 + 1402);
            v530 = v335;
            v342 = swift_slowAlloc();
            v554[0] = swift_slowAlloc();
            *v342 = 136447234;
            v343 = MusicLibrary.ActionableState.description.getter(v340, v341);
            v345 = sub_100012018(v343, v344, v554);

            *(v342 + 4) = v345;
            *(v342 + 12) = 2082;
            sub_1004BB174();
            sub_100189D50(&qword_100604C70, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
            v346 = sub_1004BD934();
            v348 = v347;
            (*(v338 + 8))(v337, v339);
            v349 = sub_100012018(v346, v348, v554);

            *(v342 + 14) = v349;
            *(v342 + 22) = 2082;
            sub_1004BB124();
            sub_100189D50(&qword_100604C78, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
            v350 = sub_1004BD934();
            v352 = v351;
            (*(v497 + 8))(v492, v494);
            v353 = sub_100012018(v350, v352, v554);

            *(v342 + 24) = v353;
            *(v342 + 32) = 2082;
            v514(v506, v510, v502);
            v354 = sub_1004BBF04();
            v356 = v355;
            (*(v525 + 8))(v510, v502);
            v357 = sub_100012018(v354, v356, v554);

            *(v342 + 34) = v357;
            *(v342 + 42) = 2082;
            *(v2 + 1416) = v183;
            swift_errorRetain();
            v358 = sub_1004BBF04();
            v360 = sub_100012018(v358, v359, v554);

            *(v342 + 44) = v360;
            _os_log_impl(&_mh_execute_header, v530, v546, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v342, 0x34u);
            swift_arrayDestroy();
          }

          else
          {
            v428 = *(v2 + 1968);
            v429 = *(v2 + 1960);
            v430 = *(v2 + 1952);

            (*(v429 + 8))(v428, v430);
          }

          v431 = swift_task_alloc();
          *(v2 + 2264) = v431;
          *v431 = v2;
          v431[1] = sub_10017F734;
          v423 = *(v2 + 1456);
          v424 = *(v2 + 1448);
          v425 = *(v2 + 1432);
          v426 = *(v2 + 1402);
          v427 = v183;
        }

        return sub_10018275C(v427, v425, v426, v424, v423);
      }

      v454 = sub_1004B8094();
      v455 = sub_1004BC9A4();
      if (os_log_type_enabled(v454, v455))
      {
        v456 = swift_slowAlloc();
        *v456 = 0;
        _os_log_impl(&_mh_execute_header, v454, v455, "|—| Presenting upsell", v456, 2u);
      }

      v457 = *(v2 + 1880);
      v417 = *(v2 + 1848);

      *(v2 + 1392) = 0;
      *(v2 + 1360) = 0u;
      *(v2 + 1376) = 0u;
      *(v2 + 1400) = -1;
      _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v2 + 1360);
      sub_100052188(v2 + 1360);
      v276 = v457;
      goto LABEL_143;
    }

    v285 = sub_1004B8094();
    v286 = sub_1004BC9A4();
    if (os_log_type_enabled(v285, v286))
    {
      v287 = swift_slowAlloc();
      *v287 = 0;
      _os_log_impl(&_mh_execute_header, v285, v286, "|—| Presenting Cloud Library Requirement alert", v287, 2u);
    }

    *(v2 + 2072) = sub_1004BC464();
    v289 = sub_1004BC3E4();
    *(v2 + 2080) = v289;
    *(v2 + 2088) = v288;

    return _swift_task_switch(sub_10017D8F4, v289, v288);
  }

  else
  {
    v147 = sub_1004B8094();
    v148 = sub_1004BC9A4();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      *v149 = 0;
      _os_log_impl(&_mh_execute_header, v147, v148, "|—● Adding to library", v149, 2u);
    }

    v150 = *(v2 + 1464);

    if (v150)
    {
      v151 = *(v2 + 1472);
      ObjectType = swift_getObjectType();
      (*(v151 + 8))(0, ObjectType, v151);
    }

    v153 = *(v2 + 1952);
    v154 = *(v2 + 1776);
    v155 = *(v2 + 1760);
    v156 = *(v2 + 1728);
    v157 = *(v2 + 1720);
    v495 = *(v2 + 1752);
    v499 = *(v2 + 1712);
    v504 = *(v2 + 1704);
    v158 = *(v2 + 1480);
    swift_storeEnumTagMultiPayload();
    sub_100178D50(v154, 0);
    sub_10018A21C(v154, type metadata accessor for Notice.Variant);
    v159 = MusicItem.metricsTargetIdentifier.getter(v153);
    v490 = v160;
    v491 = v159;
    v161 = sub_1004B6B04();
    v488 = *(*(v161 - 8) + 56);
    v489 = v161;
    v488(v155, 1, 1);
    sub_100003ABC(&qword_100601E58, &qword_1004CA360);
    v162 = swift_allocObject();
    *(v162 + 16) = xmmword_1004C50C0;
    *(v162 + 32) = MusicItem.metricsContentType.getter(v153);
    *(v162 + 40) = v163;
    *(v162 + 48) = 0;
    *(v162 + 56) = 0;
    *(v162 + 64) = 0;
    *(v162 + 72) = 1;
    v512 = sub_100029080(v162);
    v522 = v164;
    v541 = v165;
    v518 = v166;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_10000F778(v155, v495, &qword_100600DE0, &unk_1004C66D0);
    v167 = type metadata accessor for Actions.MetricsReportingContext(0);
    v168 = *(v158 + v167[7]);
    v170 = *v158;
    v169 = v158[1];
    sub_10000F778(v158 + v167[5], v499, &qword_1006014F8, &unk_1004C8AA0);
    v508 = v167;
    v493 = *(v158 + v167[8]);
    *(v156 + v157[19]) = 0;
    v171 = (v156 + v157[20]);
    *v171 = 0;
    v171[1] = 0;
    *v156 = v491;
    *(v156 + 8) = v490;
    *(v156 + 16) = 773;
    sub_100025B04(v495, v156 + v157[7], &qword_100600DE0, &unk_1004C66D0);
    *(v156 + v157[8]) = v168;
    v172 = (v156 + v157[9]);
    *v172 = v170;
    v172[1] = v169;
    v173 = v156 + v157[10];
    *v173 = v512;
    *(v173 + 8) = v522;
    *(v173 + 16) = v541;
    *(v173 + 24) = v518;
    sub_10000F778(v499, v504, &qword_1006014F8, &unk_1004C8AA0);
    v174 = type metadata accessor for MetricsEvent.Page(0);
    v500 = *(*(v174 - 1) + 48);
    v175 = v500(v504, 1, v174);
    v176 = *(v2 + 1704);
    if (v175 == 1)
    {

      sub_100024AE0(v170, v169);

      v177 = v512;
      sub_100025A94(v512, v522, v541, v518, SBYTE1(v518));
      sub_100007214(v176, &qword_1006014F8, &unk_1004C8AA0);
      v178 = 0;
      v179 = 0;
    }

    else
    {
      v178 = *v176;
      v179 = v176[1];

      sub_100024AE0(v170, v169);

      v177 = v512;
      sub_100025A94(v512, v522, v541, v518, SBYTE1(v518));

      sub_10018A21C(v176, type metadata accessor for MetricsEvent.Page);
    }

    v278 = *(v2 + 1712);
    v279 = *(v2 + 1696);
    v280 = (*(v2 + 1728) + *(*(v2 + 1720) + 48));
    *v280 = v178;
    v280[1] = v179;
    sub_10000F778(v278, v279, &qword_1006014F8, &unk_1004C8AA0);
    v281 = v500(v279, 1, v174);
    v282 = *(v2 + 1696);
    if (v281 == 1)
    {
      sub_100007214(*(v2 + 1696), &qword_1006014F8, &unk_1004C8AA0);
      v283 = 0;
      v284 = 0;
    }

    else
    {
      v283 = *(v282 + 16);
      v284 = *(v282 + 24);

      sub_10018A21C(v282, type metadata accessor for MetricsEvent.Page);
    }

    v290 = *(v2 + 1712);
    v291 = *(v2 + 1688);
    v292 = (*(v2 + 1728) + *(*(v2 + 1720) + 52));
    *v292 = v283;
    v292[1] = v284;
    sub_10000F778(v290, v291, &qword_1006014F8, &unk_1004C8AA0);
    v293 = v500(v291, 1, v174);
    v294 = *(v2 + 1744);
    v295 = *(v2 + 1688);
    if (v293 == 1)
    {
      sub_100007214(*(v2 + 1688), &qword_1006014F8, &unk_1004C8AA0);
      (v488)(v294, 1, 1, v489);
    }

    else
    {
      sub_10000F778(v295 + v174[6], *(v2 + 1744), &qword_100600DE0, &unk_1004C66D0);
      sub_10018A21C(v295, type metadata accessor for MetricsEvent.Page);
    }

    v296 = *(v2 + 1712);
    v297 = *(v2 + 1680);
    sub_100025B04(*(v2 + 1744), *(v2 + 1728) + *(*(v2 + 1720) + 56), &qword_100600DE0, &unk_1004C66D0);
    sub_10000F778(v296, v297, &qword_1006014F8, &unk_1004C8AA0);
    v298 = v500(v297, 1, v174);
    v299 = *(v2 + 1680);
    if (v298 == 1)
    {
      sub_100007214(*(v2 + 1680), &qword_1006014F8, &unk_1004C8AA0);
      v300 = 0;
    }

    else
    {
      v300 = *(v299 + v174[7]);

      sub_10018A21C(v299, type metadata accessor for MetricsEvent.Page);
    }

    v301 = *(v2 + 1712);
    v302 = *(v2 + 1672);
    *(*(v2 + 1728) + *(*(v2 + 1720) + 60)) = v300;
    sub_10000F778(v301, v302, &qword_1006014F8, &unk_1004C8AA0);
    v303 = v500(v302, 1, v174);
    v304 = *(v2 + 1672);
    if (v303 == 1)
    {
      sub_100007214(v304, &qword_1006014F8, &unk_1004C8AA0);
      v305 = 1;
    }

    else
    {
      v305 = *(v304 + v174[9]);
      sub_10018A21C(v304, type metadata accessor for MetricsEvent.Page);
    }

    v306 = *(v2 + 1712);
    v307 = *(v2 + 1664);
    *(*(v2 + 1728) + *(*(v2 + 1720) + 64)) = v305;
    sub_10000F778(v306, v307, &qword_1006014F8, &unk_1004C8AA0);
    v308 = v500(v307, 1, v174);
    v309 = *(v2 + 1664);
    if (v308 == 1)
    {
      sub_100007214(*(v2 + 1664), &qword_1006014F8, &unk_1004C8AA0);
      v310 = 0;
      v311 = 0;
    }

    else
    {
      v312 = (v309 + v174[8]);
      v310 = *v312;
      v311 = v312[1];

      sub_10018A21C(v309, type metadata accessor for MetricsEvent.Page);
    }

    v313 = *(v2 + 1712);
    v314 = *(v2 + 1656);
    v315 = (*(v2 + 1728) + *(*(v2 + 1720) + 72));
    *v315 = v310;
    v315[1] = v311;
    sub_100025B04(v313, v314, &qword_1006014F8, &unk_1004C8AA0);
    v316 = v500(v314, 1, v174);
    v317 = *(v2 + 1656);
    if (v316 == 1)
    {
      sub_100007214(v317, &qword_1006014F8, &unk_1004C8AA0);
      v318 = 2;
    }

    else
    {
      v318 = *(v317 + v174[11]);
      sub_10018A21C(v317, type metadata accessor for MetricsEvent.Page);
    }

    v319 = *(v2 + 1736);
    v320 = *(v2 + 1728);
    v321 = *(v2 + 1720);
    *(v320 + *(v321 + 68)) = v318;
    *(v320 + *(v321 + 44)) = v493;
    sub_100025B6C(v320, v319);
    if (qword_1005FFE00 != -1)
    {
      swift_once();
    }

    v322 = *(v2 + 1952);
    v323 = *(v2 + 1760);
    v324 = *(v2 + 1736);
    v325 = *(v2 + 1480);
    v326 = *(v2 + 1440);
    MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v324, *(v325 + v508[6]), *(v325 + v508[6] + 8), *(v325 + v508[9]), *(v325 + v508[9] + 8), *(v325 + v508[9] + 16));
    sub_100052244(v177, v522, v541, v518, SBYTE1(v518));
    sub_10018A21C(v324, type metadata accessor for MetricsEvent.Click);
    sub_100007214(v323, &qword_100600DE0, &unk_1004C66D0);
    sub_100187F94(v322, v322);
    swift_allocObject();
    v327 = sub_1004BC2C4();
    *(v2 + 2120) = v327;
    (v526)(v328, v326, v322);
    v329 = sub_1004BC3B4();
    *(v2 + 1424) = v327;
    v330 = swift_task_alloc();
    *(v2 + 2128) = v330;
    WitnessTable = swift_getWitnessTable();
    *v330 = v2;
    v330[1] = sub_10017DF1C;
    v332 = *(v2 + 1952);
    v333 = *(v2 + 1488);

    return MusicLibrary.add<A, B>(_:)(v2 + 1424, v329, v332, WitnessTable, v333);
  }
}

uint64_t sub_10017D8F4(uint64_t a1)
{
  v2 = v1[182];
  v3 = sub_1004BC464();
  v1[262] = v3;
  v4 = swift_task_alloc();
  v1[263] = v4;
  *(v4 + 16) = 1;
  *(v4 + 24) = v2;
  *(v4 + 32) = 0;
  v5 = swift_task_alloc();
  v1[264] = v5;
  *v5 = v1;
  v5[1] = sub_10017DA08;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 1401, v3, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004FC910, sub_100052470, v4, &type metadata for Bool);
}

uint64_t sub_10017DA08()
{
  v1 = *v0;

  v2 = *(v1 + 2088);
  v3 = *(v1 + 2080);

  return _swift_task_switch(sub_10017DB68, v3, v2);
}

uint64_t sub_10017DB68()
{

  v1 = *(v0 + 2032);
  v2 = *(v0 + 2024);

  return _swift_task_switch(sub_10017DBD0, v2, v1);
}

uint64_t sub_10017DBD0()
{
  v1 = v0[258];
  v2 = v0[235];
  v3 = v0[231];

  v1(v2, v3);
  v4 = sub_1004B8094();
  v5 = sub_1004BC9A4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_10017DF1C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 2136) = v1;

  if (v1)
  {
    v4 = *(v3 + 2032);
    v5 = *(v3 + 2024);
    v6 = sub_10017FB80;
  }

  else
  {

    v4 = *(v3 + 2032);
    v5 = *(v3 + 2024);
    v6 = sub_10017E060;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10017E060()
{
  v1 = v0[183];

  if (v1)
  {
    v2 = v0[184];
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(0, ObjectType, v2);
  }

  (*(v0[241] + 8))(v0[242], v0[240]);
  v4 = sub_1004B8094();
  v5 = sub_1004BC9A4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_10017E3D8()
{
  v2 = *v1;
  v2[272] = v0;

  sub_100007214((v2 + 48), &qword_100601CB8, &qword_1004D0590);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = sub_10018043C;
  }

  else
  {
    v5 = sub_10017E52C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10017E52C()
{

  v1 = sub_1004B8094();
  v2 = sub_1004BC9A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ✅ Succeeded", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10017E874()
{
  v2 = *v1;
  *(*v1 + 2192) = v0;

  v3 = *(v2 + 2032);
  v4 = *(v2 + 2024);
  if (v0)
  {
    v5 = sub_100180CFC;
  }

  else
  {
    v5 = sub_10017E9B0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10017E9B0()
{

  v1 = sub_1004B8094();
  v2 = sub_1004BC9A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ✅ Succeeded", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10017ECD4()
{
  v2 = *v1;
  v2[276] = v0;

  sub_100007214((v2 + 34), &qword_100601CB0, &qword_1004C9960);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = sub_10018159C;
  }

  else
  {
    v5 = sub_10017EE28;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10017EE28()
{
  v1 = v0[200];
  v2 = v0[199];
  v3 = v0[198];

  (*(v2 + 8))(v1, v3);
  v4 = sub_1004B8094();
  v5 = sub_1004BC9A4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_10017F170()
{
  v2 = *v1;
  v2[278] = v0;

  sub_100007214((v2 + 2), &qword_100602058, &qword_1004CA388);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = sub_100181E58;
  }

  else
  {
    v5 = sub_10018C2BC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10017F2A4()
{
  v1 = *v0;

  v2 = *(v1 + 2032);
  v3 = *(v1 + 2024);

  return _swift_task_switch(sub_10017F3E8, v3, v2);
}

uint64_t sub_10017F3E8()
{

  v1 = sub_1004B8094();
  v2 = sub_1004BC9A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ❌ Failed", v3, 2u);
  }

  swift_allocError();
  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10017F734()
{
  v1 = *v0;

  v2 = *(v1 + 2032);
  v3 = *(v1 + 2024);

  return _swift_task_switch(sub_10017F854, v3, v2);
}

uint64_t sub_10017F854()
{

  v1 = sub_1004B8094();
  v2 = sub_1004BC9A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ❌ Failed", v3, 2u);
  }

  swift_willThrow();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10017FB80()
{
  v96 = v0;
  (*(*(v0 + 1928) + 8))(*(v0 + 1936), *(v0 + 1920));
  v1 = *(v0 + 2136);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_100003ABC(&qword_100604C30, &qword_1004C8490);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_1004B8094();
    v8 = sub_1004BC984();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_100012018(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_1004BB174();
      sub_100189D50(&qword_100604C70, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = sub_1004BD934();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_100012018(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_1004BB124();
      sub_100189D50(&qword_100604C78, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = sub_1004BD934();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_100012018(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_1004BBF04();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_100012018(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_1004BBF04();
      v34 = sub_100012018(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_100189090();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_10017F2A4;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_1004B8094();
    v37 = sub_1004BC984();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_100012018(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_1004BB174();
      sub_100189D50(&qword_100604C70, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = sub_1004BD934();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_100012018(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_1004BB124();
      sub_100189D50(&qword_100604C78, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = sub_1004BD934();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_100012018(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_1004BBF04();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_100012018(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_1004BBF04();
      v61 = sub_100012018(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_10017F734;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_10018275C(v71, v69, v70, v68, v67);
}

uint64_t sub_10018043C()
{
  v96 = v0;

  v1 = *(v0 + 2176);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_100003ABC(&qword_100604C30, &qword_1004C8490);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_1004B8094();
    v8 = sub_1004BC984();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_100012018(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_1004BB174();
      sub_100189D50(&qword_100604C70, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = sub_1004BD934();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_100012018(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_1004BB124();
      sub_100189D50(&qword_100604C78, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = sub_1004BD934();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_100012018(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_1004BBF04();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_100012018(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_1004BBF04();
      v34 = sub_100012018(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_100189090();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_10017F2A4;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_1004B8094();
    v37 = sub_1004BC984();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_100012018(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_1004BB174();
      sub_100189D50(&qword_100604C70, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = sub_1004BD934();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_100012018(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_1004BB124();
      sub_100189D50(&qword_100604C78, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = sub_1004BD934();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_100012018(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_1004BBF04();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_100012018(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_1004BBF04();
      v61 = sub_100012018(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_10017F734;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_10018275C(v71, v69, v70, v68, v67);
}

uint64_t sub_100180CFC()
{
  v96 = v0;
  v1 = *(v0 + 2192);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_100003ABC(&qword_100604C30, &qword_1004C8490);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_1004B8094();
    v8 = sub_1004BC984();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_100012018(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_1004BB174();
      sub_100189D50(&qword_100604C70, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = sub_1004BD934();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_100012018(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_1004BB124();
      sub_100189D50(&qword_100604C78, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = sub_1004BD934();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_100012018(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_1004BBF04();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_100012018(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_1004BBF04();
      v34 = sub_100012018(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_100189090();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_10017F2A4;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_1004B8094();
    v37 = sub_1004BC984();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_100012018(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_1004BB174();
      sub_100189D50(&qword_100604C70, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = sub_1004BD934();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_100012018(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_1004BB124();
      sub_100189D50(&qword_100604C78, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = sub_1004BD934();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_100012018(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_1004BBF04();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_100012018(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_1004BBF04();
      v61 = sub_100012018(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_10017F734;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_10018275C(v71, v69, v70, v68, v67);
}

uint64_t sub_10018159C()
{
  v96 = v0;
  (*(*(v0 + 1592) + 8))(*(v0 + 1600), *(v0 + 1584));
  v1 = *(v0 + 2208);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_100003ABC(&qword_100604C30, &qword_1004C8490);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_1004B8094();
    v8 = sub_1004BC984();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_100012018(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_1004BB174();
      sub_100189D50(&qword_100604C70, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = sub_1004BD934();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_100012018(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_1004BB124();
      sub_100189D50(&qword_100604C78, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = sub_1004BD934();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_100012018(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_1004BBF04();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_100012018(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_1004BBF04();
      v34 = sub_100012018(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_100189090();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_10017F2A4;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_1004B8094();
    v37 = sub_1004BC984();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_100012018(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_1004BB174();
      sub_100189D50(&qword_100604C70, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = sub_1004BD934();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_100012018(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_1004BB124();
      sub_100189D50(&qword_100604C78, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = sub_1004BD934();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_100012018(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_1004BBF04();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_100012018(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_1004BBF04();
      v61 = sub_100012018(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_10017F734;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_10018275C(v71, v69, v70, v68, v67);
}

uint64_t sub_100181E58()
{
  v96 = v0;
  v1 = *(v0 + 2224);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_100003ABC(&qword_100604C30, &qword_1004C8490);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_1004B8094();
    v8 = sub_1004BC984();

    if (os_log_type_enabled(v7, v8))
    {
      v87 = *(v0 + 2048);
      v83 = *(v0 + 1992);
      v85 = *(v0 + 1976);
      v89 = *(v0 + 1960);
      v9 = *(v0 + 1944);
      v10 = *(v0 + 1928);
      v11 = *(v0 + 1920);
      v12 = *(v0 + 1912);
      v13 = *(v0 + 1896);
      v79 = *(v0 + 1888);
      v81 = *(v0 + 1952);
      v93 = v8;
      v14 = *(v0 + 1432);
      v15 = *(v0 + 1402);
      log = v7;
      v16 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v16 = 136447234;
      v17 = MusicLibrary.ActionableState.description.getter(v14, v15);
      v19 = sub_100012018(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_1004BB174();
      sub_100189D50(&qword_100604C70, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = sub_1004BD934();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_100012018(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_1004BB124();
      sub_100189D50(&qword_100604C78, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = sub_1004BD934();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_100012018(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_1004BBF04();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_100012018(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_1004BBF04();
      v34 = sub_100012018(v32, v33, &v95);

      *(v16 + 44) = v34;
      _os_log_impl(&_mh_execute_header, log, v93, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v16, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 1976);
      v63 = *(v0 + 1960);
      v64 = *(v0 + 1952);

      (*(v63 + 8))(v62, v64);
    }

    *(v0 + 2240) = sub_100189090();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_10017F2A4;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v65;
  }

  else
  {
    v35 = *(v0 + 1968);

    v3(v35, v5, v4);

    swift_errorRetain();
    v36 = sub_1004B8094();
    v37 = sub_1004BC984();

    if (os_log_type_enabled(v36, v37))
    {
      v88 = *(v0 + 2048);
      v84 = *(v0 + 1992);
      v86 = *(v0 + 1968);
      v90 = *(v0 + 1960);
      v38 = *(v0 + 1944);
      v39 = *(v0 + 1928);
      v40 = *(v0 + 1920);
      v80 = *(v0 + 1896);
      v82 = *(v0 + 1952);
      v77 = *(v0 + 1912);
      v78 = *(v0 + 1888);
      v94 = v37;
      v41 = *(v0 + 1432);
      v42 = *(v0 + 1402);
      loga = v36;
      v43 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v43 = 136447234;
      v44 = MusicLibrary.ActionableState.description.getter(v41, v42);
      v46 = sub_100012018(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_1004BB174();
      sub_100189D50(&qword_100604C70, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = sub_1004BD934();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_100012018(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_1004BB124();
      sub_100189D50(&qword_100604C78, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = sub_1004BD934();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_100012018(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_1004BBF04();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_100012018(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_1004BBF04();
      v61 = sub_100012018(v59, v60, &v95);

      *(v43 + 44) = v61;
      _os_log_impl(&_mh_execute_header, loga, v94, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v43, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
      v72 = *(v0 + 1968);
      v73 = *(v0 + 1960);
      v74 = *(v0 + 1952);

      (*(v73 + 8))(v72, v74);
    }

    v75 = swift_task_alloc();
    *(v0 + 2264) = v75;
    *v75 = v0;
    v75[1] = sub_10017F734;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_10018275C(v71, v69, v70, v68, v67);
}

uint64_t Logger.libraryActionableState.unsafeMutableAddressor(uint64_t a1, uint64_t a2)
{
  if (qword_1005FFFC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B80B4();

  return sub_100007084(v2, static Logger.libraryActionableState);
}

uint64_t sub_10018275C(uint64_t a1, uint64_t a2, __int16 a3, void *a4, uint64_t a5)
{
  *(v5 + 272) = a4;
  *(v5 + 280) = a5;
  *(v5 + 384) = a3;
  *(v5 + 256) = a1;
  *(v5 + 264) = a2;
  *(v5 + 288) = *a4;
  v6 = sub_1004B6D14();
  *(v5 + 296) = v6;
  *(v5 + 304) = *(v6 - 8);
  *(v5 + 312) = swift_task_alloc();
  v7 = sub_1004B6B04();
  *(v5 + 320) = v7;
  v8 = *(v7 - 8);
  *(v5 + 328) = v8;
  *(v5 + 336) = *(v8 + 64);
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  sub_1004BC474();
  *(v5 + 376) = sub_1004BC464();
  v10 = sub_1004BC3E4();

  return _swift_task_switch(sub_100182934, v10, v9);
}

uint64_t sub_100182934()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 384);

  sub_1004BD404(91);
  v70._countAndFlagsBits = 0xD000000000000032;
  v70._object = 0x8000000100502690;
  sub_1004BC024(v70);
  *(v0 + 232) = v3;
  swift_errorRetain();
  sub_100003ABC(&qword_100604C30, &qword_1004C8490);
  v71._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v71);

  v72._object = 0x80000001005026D0;
  v72._countAndFlagsBits = 0xD000000000000014;
  sub_1004BC024(v72);
  v73._countAndFlagsBits = MusicLibrary.ActionableState.description.getter(v2, v4);
  sub_1004BC024(v73);

  v74._countAndFlagsBits = 0x53206D6574490A0ALL;
  v74._object = 0xEE00203A65746174;
  sub_1004BC024(v74);
  *(v0 + 240) = v1;
  sub_1004BB184();

  v75._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v75);

  v76._countAndFlagsBits = 10;
  v76._object = 0xE100000000000000;
  sub_1004BC024(v76);
  v5 = sub_10003D264(_swiftEmptyArrayStorage);
  if (qword_1006006D8 != -1)
  {
    v56 = v5;
    swift_once();
    v5 = v56;
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    v7 = *(v0 + 360);
    v6 = *(v0 + 368);
    v9 = *(v0 + 320);
    v8 = *(v0 + 328);
    sub_100144204(0xD00000000000001DLL, 0x8000000100502670, 0, 0xE000000000000000, _swiftEmptyArrayStorage, v5, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v6, 1u);

    sub_10000F778(v6, v7, &qword_100600DE0, &unk_1004C66D0);
    if ((*(v8 + 48))(v7, 1, v9) == 1)
    {
      v10 = *(v0 + 360);
      sub_100007214(*(v0 + 368), &qword_100600DE0, &unk_1004C66D0);
      sub_100007214(v10, &qword_100600DE0, &unk_1004C66D0);
    }

    else
    {
      v13 = *(*(v0 + 328) + 32);
      v13(*(v0 + 352), *(v0 + 360), *(v0 + 320));
      v14 = [objc_opt_self() sharedApplication];
      sub_1004B6A44(v15);
      v17 = v16;
      v18 = [v14 canOpenURL:v16];

      v19 = *(v0 + 368);
      v20 = *(v0 + 352);
      if (v18)
      {
        v64 = *(v0 + 368);
        v21 = *(v0 + 344);
        v67 = (v0 + 112);
        v23 = *(v0 + 320);
        v22 = *(v0 + 328);
        v24 = *(v0 + 304);
        v25 = *(v0 + 312);
        v63 = *(v0 + 296);
        (*(v22 + 16))(v21, v20, v23);
        v61 = v13;
        v26 = (*(v22 + 80) + 16) & ~*(v22 + 80);
        v66 = swift_allocObject();
        v61(v66 + v26, v21, v23);
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v60 = sub_1004B6CE4();
        v28 = v27;
        v62 = *(v24 + 8);
        v62(v25, v63);
        (*(v22 + 8))(v20, v23);
        sub_100007214(v64, &qword_100600DE0, &unk_1004C66D0);
        if (qword_1005FFFC0 != -1)
        {
          swift_once();
        }

        v65 = v28;
        v57 = sub_1004B80B4();
        sub_100007084(v57, static Logger.libraryActionableState);
        v29 = sub_1004B8094();
        v30 = sub_1004BC9A4();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "|—● Presenting Tap-To-Radar alert", v31, 2u);
        }

        v32 = *(v0 + 312);
        v33 = *(v0 + 296);
        v59 = *(v0 + 280);
        v34 = *(v0 + 256);

        *(v0 + 248) = v34;
        swift_errorRetain();
        v68 = sub_1004BBF04();
        v58 = v35;
        sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1004C50C0;
        *(v36 + 32) = v60;
        *(v36 + 40) = v65;
        strcpy((v36 + 48), "File a Radar");
        *(v36 + 61) = 0;
        *(v36 + 62) = -5120;
        *(v36 + 64) = 2;
        *(v36 + 72) = &unk_1004D0880;
        *(v36 + 80) = v66;

        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v37 = sub_1004B6CE4();
        v39 = v38;
        v62(v32, v33);
        *(v36 + 88) = v37;
        *(v36 + 96) = v39;
        *(v36 + 104) = 19279;
        *(v36 + 112) = 0xE200000000000000;
        *(v36 + 120) = 2;
        *(v36 + 128) = 0;
        *(v36 + 136) = 0;
        *(v0 + 112) = xmmword_1004C5190;
        *(v0 + 128) = v68;
        *(v0 + 136) = v58;
        *(v0 + 144) = 0;
        *(v0 + 152) = 0;
        *(v0 + 160) = 1;
        *(v0 + 168) = v36;
        *(v0 + 176) = 0;
        v40 = sub_1000C88F4(v67, 0, 1);
        v41 = v40;
        v42 = *(v59 + 80);
        if (v42)
        {
          v43 = *(v0 + 144);
          v44 = *(v59 + 88);
          v45 = qword_1006000B8;

          if (v45 != -1)
          {
            swift_once();
          }

          sub_100007084(v57, qword_100607AD0);
          v46 = sub_1004B8094();
          v47 = sub_1004BC9A4();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            *v48 = 0;
            _os_log_impl(&_mh_execute_header, v46, v47, "Deferring presentation…", v48, 2u);
          }

          v49 = *(v0 + 280);

          v50 = objc_allocWithZone(MSVBlockGuard);
          *(v0 + 216) = sub_10023620C;
          *(v0 + 224) = 0;
          *(v0 + 184) = _NSConcreteStackBlock;
          *(v0 + 192) = 1107296256;
          *(v0 + 200) = sub_10023720C;
          *(v0 + 208) = &unk_1005B3C58;
          v51 = _Block_copy((v0 + 184));
          v52 = [v50 initWithTimeout:v51 interruptionHandler:10.0];
          _Block_release(v51);

          sub_100047AC4(v49, v0 + 16);
          v53 = swift_allocObject();
          *(v53 + 16) = v52;
          sub_100048998(v0 + 16, v53 + 24);
          *(v53 + 120) = v41;
          *(v53 + 128) = v43;
          *(v53 + 129) = 1;
          *(v53 + 136) = 0;
          *(v53 + 144) = 0;
          v54 = v52;
          v55 = v41;
          v42(v49, v55, sub_10005BC70, v53);
          sub_10003CC4C(v42, v44);

          sub_100052310(v67);
        }

        else
        {
          sub_1002346EC(v40, *(v0 + 144), 1, 0, 0);

          sub_100052310(v67);
        }
      }

      else
      {
        (*(*(v0 + 328) + 8))(*(v0 + 352), *(v0 + 320));
        sub_100007214(v19, &qword_100600DE0, &unk_1004C66D0);
      }
    }
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

char *MusicLibrary.ActionableStateController.__allocating_init(item:library:actionsObserver:onStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  swift_allocObject();
  v14 = sub_10018919C(a1, a2, a3, a4, a5, a6);
  (*(*(*(v7 + 80) - 8) + 8))(a1);
  return v14;
}

char *MusicLibrary.ActionableStateController.init(item:library:actionsObserver:onStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *v6;
  v9 = sub_10018919C(a1, a2, a3, a4, a5, a6);
  (*(*(*(v8 + 80) - 8) + 8))(a1);
  return v9;
}

uint64_t sub_1001833B8(uint64_t a1, uint64_t a2)
{
  sub_100003ABC(&qword_100604D38, &qword_1004D07E8);
  __chkstk_darwin();
  v3 = &v9 - v2;
  sub_100003ABC(&qword_100604D40, &unk_1004D07F0);
  __chkstk_darwin();
  v5 = (&v9 - v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = sub_1004BB104();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = sub_1004BAF14();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    sub_100185154(v5, v3);

    sub_100007214(v3, &qword_100604D38, &qword_1004D07E8);
    return sub_100007214(v5, &qword_100604D40, &unk_1004D07F0);
  }

  return result;
}

uint64_t sub_100183570(uint64_t a1)
{
  v74 = a1;
  v2 = *v1;
  v85 = sub_1004BB434();
  v76 = *(v85 - 8);
  __chkstk_darwin();
  v84 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100604D38, &qword_1004D07E8);
  __chkstk_darwin();
  v80 = &v66 - v4;
  sub_100003ABC(&qword_100604D40, &unk_1004D07F0);
  __chkstk_darwin();
  v79 = &v66 - v5;
  sub_100003ABC(&qword_1006020A8, &qword_1004CA4B8);
  __chkstk_darwin();
  v70 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v78 = &v66 - v7;
  v88 = sub_100003ABC(&qword_100603CA0, &qword_1004D0800);
  v77 = *(v88 - 8);
  __chkstk_darwin();
  v69 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v66 - v9;
  sub_100003ABC(&qword_100603CB0, &qword_1004CB660);
  __chkstk_darwin();
  v73 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v66 - v11;
  v12 = sub_1004BBA84();
  __chkstk_darwin();
  v71 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v81 = &v66 - v14;
  v15 = *(v2 + 80);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v83 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v66 - v18;
  __chkstk_darwin();
  v20 = &v66 - v19;
  __chkstk_darwin();
  v22 = &v66 - v21;
  v23 = v2;
  v25 = v24;
  v26 = *(v23 + 128);
  swift_beginAccess();
  v27 = *(v16 + 16);
  v27(v22, &v1[v26], v15);
  sub_1004BB154();
  v87 = v1;
  v82 = v26;
  v28 = &v1[v26];
  v29 = v86;
  v90 = v27;
  v91 = v16 + 16;
  v27(v20, v28, v15);
  v89 = v15;
  v30 = swift_dynamicCast();
  v31 = *(v25 + 56);
  if ((v30 & 1) == 0)
  {
    v31(v29, 1, 1, v12);
    v35 = &qword_100603CB0;
    v36 = &qword_1004CB660;
    goto LABEL_5;
  }

  v31(v29, 0, 1, v12);
  v32 = *(v25 + 32);
  v33 = v81;
  v32(v81, v29, v12);
  v29 = v78;
  sub_1004BBA74();
  v34 = v77;
  v86 = *(v77 + 48);
  if ((v86)(v29, 1, v88) == 1)
  {
    (*(v25 + 8))(v33, v12);
    v35 = &qword_1006020A8;
    v36 = &qword_1004CA4B8;
LABEL_5:
    v37 = v29;
LABEL_6:
    sub_100007214(v37, v35, v36);
    v38 = v85;
    v39 = v87;
    goto LABEL_7;
  }

  v67 = v32;
  v68 = v25;
  v46 = *(v34 + 32);
  v47 = v75;
  v78 = (v34 + 32);
  v66 = v46;
  v46(v75, v29, v88);
  v90(v72, v74, v89);
  v48 = v73;
  v49 = v12;
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v34 + 8))(v47, v88);
    (*(v68 + 8))(v81, v12);
    v31(v48, 1, 1, v12);
    v35 = &qword_100603CB0;
    v36 = &qword_1004CB660;
    v37 = v48;
    goto LABEL_6;
  }

  v50 = v34;
  v31(v48, 0, 1, v12);
  v51 = v71;
  v67(v71, v48, v12);
  v52 = v70;
  sub_1004BBA74();
  v53 = v88;
  if ((v86)(v52, 1, v88) == 1)
  {
    v54 = *(v68 + 8);
    v54(v51, v49);
    (*(v50 + 8))(v75, v53);
    v54(v81, v49);
    v35 = &qword_1006020A8;
    v36 = &qword_1004CA4B8;
    v37 = v52;
    goto LABEL_6;
  }

  v55 = v49;
  v56 = v69;
  v66(v69, v52, v53);
  sub_1000206D4(&qword_100603CD0, &qword_100603CA0, &qword_1004D0800, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_1004BC724();
  sub_1004BC764();
  v57 = sub_1004BC754();
  v39 = v87;
  if (!v57 && (sub_1004BC724(), sub_1004BC764(), sub_1004BC754() > 0) || (sub_1004BC724(), sub_1004BC764(), sub_1004BC754() >= 1) && (sub_1004BC724(), sub_1004BC764(), !sub_1004BC754()))
  {
    v60 = sub_1004BB104();
    v61 = v79;
    (*(*(v60 - 8) + 56))(v79, 1, 1, v60);
    v62 = sub_1004BAF14();
    v63 = v80;
    (*(*(v62 - 8) + 56))(v80, 1, 1, v62);
    sub_100185154(v61, v63);
    sub_100007214(v63, &qword_100604D38, &qword_1004D07E8);
    sub_100007214(v61, &qword_100604D40, &unk_1004D07F0);
    v64 = *(v34 + 8);
    v64(v56, v53);
    v65 = *(v68 + 8);
    v65(v51, v55);
    v64(v75, v53);
    return (v65)(v81, v55);
  }

  v58 = *(v34 + 8);
  v58(v56, v53);
  v59 = *(v68 + 8);
  v59(v51, v55);
  v58(v75, v53);
  v59(v81, v55);
  v38 = v85;
LABEL_7:
  v90(v83, &v39[v82], v89);
  v40 = v84;
  result = swift_dynamicCast();
  if (result)
  {
    (*(v76 + 8))(v40, v38);
    v42 = sub_1004BB104();
    v43 = v79;
    (*(*(v42 - 8) + 56))(v79, 1, 1, v42);
    v44 = sub_1004BAF14();
    v45 = v80;
    (*(*(v44 - 8) + 56))(v80, 1, 1, v44);
    sub_100185154(v43, v45);
    sub_100007214(v45, &qword_100604D38, &qword_1004D07E8);
    return sub_100007214(v43, &qword_100604D40, &unk_1004D07F0);
  }

  return result;
}

uint64_t MusicLibrary.ActionableStateController.item.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t MusicLibrary.ActionableStateController.item.setter(uint64_t a1)
{
  v3 = *v1;
  sub_100189768(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*MusicLibrary.ActionableStateController.item.modify(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v5 = *(*v1 + 80);
  v3[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v3[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v3[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = *(*v1 + 128);
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_100184460;
}

void sub_100184460(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    sub_100189768(v4);
    v7 = *(v6 + 8);
    v7(v4, v5);
    v7(v3, v5);
  }

  else
  {
    sub_100189768(*(v2 + 56));
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t MusicLibrary.ActionableStateController.onStateUpdate.getter()
{
  v1 = (v0 + *(*v0 + 144));
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t MusicLibrary.ActionableStateController.onStateUpdate.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 144));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_100184678(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v42 - v8;
  v11 = v2 + *(v10 + 152);
  result = swift_beginAccess();
  v13 = *v11;
  v14 = *(v11 + 8);
  if (!(v14 >> 14))
  {
    if (a2 < 0x4000u)
    {
      if (*v11 == 5)
      {
        if (a1 == 5)
        {
          return result;
        }
      }

      else if (a1 != 5 && v13 == a1)
      {
        return result;
      }
    }

    goto LABEL_37;
  }

  if (v14 >> 14 != 1)
  {
    if (v13 | v14 ^ 0x8000)
    {
      if (*(v11 + 8) == 0x8000 && v13 == 1)
      {
        if ((a2 & 0xC000) != 0x8000 || a1 != 1)
        {
          goto LABEL_37;
        }
      }

      else if ((a2 & 0xC000) != 0x8000 || a1 != 2)
      {
        goto LABEL_37;
      }
    }

    else if ((a2 & 0xC000) != 0x8000 || *&a1 != 0.0)
    {
      goto LABEL_37;
    }

    if (a2 == 0x8000)
    {
      return result;
    }

    goto LABEL_37;
  }

  if ((a2 & 0xC000) == 0x4000)
  {
    if (v14)
    {
      if ((a2 & 1) != 0 && (((a2 ^ v14) >> 8) & 1) == 0)
      {
        return result;
      }
    }

    else if ((a2 & 1) == 0 && *v11 == *&a1 && (((a2 ^ v14) >> 8) & 1) == 0)
    {
      return result;
    }
  }

LABEL_37:
  if (qword_1005FFFC0 != -1)
  {
    swift_once();
  }

  v17 = sub_1004B80B4();
  sub_100007084(v17, static Logger.libraryActionableState);

  v18 = sub_1004B8094();
  v19 = sub_1004BC9A4();

  v20 = os_log_type_enabled(v18, v19);
  v44 = a2;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v45 = v6;
    v22 = v21;
    v23 = swift_slowAlloc();
    v43 = v7;
    v46[0] = v23;
    *v22 = 136446722;
    v24 = MusicLibrary.ActionableState.description.getter(a1, a2);
    v26 = sub_100012018(v24, v25, v46);
    v42 = a1;
    v27 = v26;

    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    v28 = MusicLibrary.ActionableState.description.getter(*v11, *(v11 + 8));
    v30 = sub_100012018(v28, v29, v46);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2082;
    v31 = *(*v3 + 128);
    swift_beginAccess();
    (*(v43 + 16))(v9, v3 + v31, v45);
    v32 = sub_1004BBF04();
    v34 = sub_100012018(v32, v33, v46);

    *(v22 + 24) = v34;
    v35 = v19;
    v36 = v42;
    _os_log_impl(&_mh_execute_header, v18, v35, "State updated from: %{public}s to: %{public}s for item: %{public}s)", v22, 0x20u);
    swift_arrayDestroy();
    v7 = v43;

    v6 = v45;
  }

  else
  {

    v36 = a1;
  }

  v37 = (v3 + *(*v3 + 144));
  swift_beginAccess();
  v38 = *v37;
  v39 = *(*v3 + 128);
  swift_beginAccess();
  (*(v7 + 16))(v9, v3 + v39, v6);
  v40 = *v11;
  v41 = *(v11 + 8);

  v38(v9, v36, v44, v40, v41);

  return (*(v7 + 8))(v9, v6);
}

uint64_t MusicLibrary.ActionableStateController.currentState.getter()
{
  v1 = v0 + *(*v0 + 152);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_100184B94(uint64_t a1, __int16 a2)
{
  v5 = v2 + *(*v2 + 152);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v7 = *(v5 + 8);
  *(v5 + 8) = a2;
  return sub_100184678(v6, v7);
}

uint64_t MusicLibrary.ActionableStateController.performAction(presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *v2;
  v3[11] = *v2;
  v5 = *(v4 + 80);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  sub_1004BC474();
  v3[15] = sub_1004BC464();
  v7 = sub_1004BC3E4();
  v3[16] = v7;
  v3[17] = v6;

  return _swift_task_switch(sub_100184D38, v7, v6);
}

uint64_t sub_100184D38()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[10];
  v5 = &v4[*(*v4 + 152)];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(*v4 + 128);
  v8 = *(v5 + 4);
  swift_beginAccess();
  (*(v2 + 16))(v1, &v4[v7], v3);
  v9 = *&v4[*(*v4 + 136)];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  v11 = *(v4 + 4);
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_100184EC0;
  v13 = v0[14];
  v14 = v0[8];
  v15 = v0[9];

  return MusicLibrary.performAction<A>(for:on:itemState:presentationSource:actionsObserver:metricsReportingContext:)(v6, v8, v13, v9, v14, Strong, v11, v15);
}

uint64_t sub_100184EC0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  swift_unknownObjectRelease();
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_1001850E8;
  }

  else
  {
    v8 = sub_10018507C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10018507C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001850E8()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100185154(void (*a1)(_BYTE *, uint64_t), uint64_t a2)
{
  v3 = v2;
  v228 = a2;
  v223 = a1;
  v4 = *v2;
  v5 = sub_1004BB0F4();
  v214 = *(v5 - 8);
  __chkstk_darwin();
  v209 = &v193[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v213 = &v193[-v7];
  __chkstk_darwin();
  v212 = &v193[-v8];
  __chkstk_darwin();
  v211 = &v193[-v9];
  __chkstk_darwin();
  v217 = &v193[-v10];
  sub_100003ABC(&qword_1006020A8, &qword_1004CA4B8);
  __chkstk_darwin();
  v205 = &v193[-v11];
  v210 = sub_1004BBA84();
  v201 = *(v210 - 1);
  __chkstk_darwin();
  v200 = &v193[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v202 = &v193[-v13];
  v207 = sub_1004BB434();
  v204 = *(v207 - 8);
  __chkstk_darwin();
  v203 = &v193[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v206 = &v193[-v15];
  v16 = *(v4 + 80);
  v17 = sub_1004BB104();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v208 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin();
  v222 = &v193[-v18];
  sub_100003ABC(&qword_100604D38, &qword_1004D07E8);
  __chkstk_darwin();
  v20 = &v193[-v19];
  v21 = sub_1004BAF14();
  v227 = *(v21 - 8);
  __chkstk_darwin();
  v198 = &v193[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v219 = &v193[-v23];
  __chkstk_darwin();
  v229 = &v193[-v24];
  sub_100003ABC(&qword_100604D40, &unk_1004D07F0);
  __chkstk_darwin();
  v26 = &v193[-v25];
  v230 = *(v17 - 8);
  __chkstk_darwin();
  v199 = &v193[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v29 = &v193[-v28];
  __chkstk_darwin();
  v232 = &v193[-v30];
  v224 = *(v16 - 8);
  __chkstk_darwin();
  v215 = &v193[-v31];
  v32 = v3 + *(v4 + 152);
  swift_beginAccess();
  v195 = *v32;
  v194 = *(v32 + 8);
  if (qword_1005FFFC0 != -1)
  {
    swift_once();
  }

  v33 = sub_1004B80B4();
  v34 = sub_100007084(v33, static Logger.libraryActionableState);

  v231 = v34;
  v35 = sub_1004B8094();
  v36 = sub_1004BC9A4();

  v37 = os_log_type_enabled(v35, v36);
  v225 = v21;
  v226 = v17;
  v216 = v5;
  v221 = v16;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v235 = v39;
    *v38 = 136446210;
    v40 = *(*v3 + 128);
    swift_beginAccess();
    (*(v224 + 16))(v215, v3 + v40, v16);
    v41 = sub_1004BBF04();
    v43 = sub_100012018(v41, v42, &v235);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v35, v36, "╭ Updating state for item: %{public}s", v38, 0xCu);
    sub_100004C6C(v39);
    v17 = v226;

    v21 = v225;
  }

  sub_10000F778(v223, v26, &qword_100604D40, &unk_1004D07F0);
  v44 = v230;
  v45 = *(v230 + 48);
  v46 = v45(v26, 1, v17);
  v47 = v227;
  if (v46 == 1)
  {
    sub_1004BB174();
    if (v45(v26, 1, v17) != 1)
    {
      sub_100007214(v26, &qword_100604D40, &unk_1004D07F0);
    }
  }

  else
  {
    (*(v44 + 32))(v232, v26, v17);
  }

  sub_10000F778(v228, v20, &qword_100604D38, &qword_1004D07E8);
  v48 = *(v47 + 48);
  v49 = v48(v20, 1, v21);
  v228 = v3;
  if (v49 == 1)
  {
    sub_1004BB124();
    if (v48(v20, 1, v21) != 1)
    {
      sub_100007214(v20, &qword_100604D38, &qword_1004D07E8);
    }
  }

  else
  {
    (*(v47 + 32))(v229, v20, v21);
  }

  v50 = v230;
  v218 = *(v230 + 16);
  v218(v29, v232, v17);
  v51 = sub_1004B8094();
  v52 = v17;
  v53 = sub_1004BC9A4();
  if (os_log_type_enabled(v51, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v235 = v55;
    *v54 = 136446210;
    sub_100189D50(&qword_100604C70, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
    v56 = sub_1004BD934();
    v58 = v57;
    v223 = *(v50 + 8);
    v223(v29, v52);
    v59 = sub_100012018(v56, v58, &v235);

    *(v54 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v51, v53, "| Add Status: %{public}s", v54, 0xCu);
    sub_100004C6C(v55);
    v21 = v225;

    v47 = v227;
  }

  else
  {

    v223 = *(v50 + 8);
    v223(v29, v52);
  }

  v60 = *(v47 + 16);
  v61 = v219;
  v197 = v47 + 16;
  v196 = v60;
  v60(v219, v229, v21);
  v62 = sub_1004B8094();
  v63 = sub_1004BC9A4();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = v47;
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v235 = v66;
    *v65 = 136446210;
    sub_100189D50(&qword_100604C78, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
    v67 = sub_1004BD934();
    v69 = v68;
    v219 = *(v64 + 8);
    (v219)(v61, v21);
    v70 = sub_100012018(v67, v69, &v235);

    *(v65 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v62, v63, "| Download Status: %{public}s", v65, 0xCu);
    sub_100004C6C(v66);
  }

  else
  {

    v219 = *(v47 + 8);
    (v219)(v61, v21);
  }

  v71 = v221;
  v72 = v224;
  v73 = v228;
  v74 = *(*v228 + 128);
  swift_beginAccess();
  v75 = *(TupleTypeMetadata2 + 48);
  v76 = *(v72 + 16);
  v77 = v222;
  v76(v222, v73 + v74, v71);
  v78 = v226;
  v218(&v77[v75], v232, v226);
  v79 = v230;
  v80 = (*(v230 + 88))(&v77[v75], v78);
  if (v80 == enum case for MusicLibrary.AddStatus.addable(_:))
  {
    v223(&v77[v75], v78);
    v81 = 0;
    v82 = 5;
    goto LABEL_73;
  }

  if (v80 != enum case for MusicLibrary.AddStatus.unaddable(_:))
  {
    if (v80 != enum case for MusicLibrary.AddStatus.added(_:))
    {

      v130 = sub_1004B8094();
      v131 = sub_1004BC984();

      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v224 = swift_slowAlloc();
        v234 = v224;
        *v132 = 136446466;
        v133 = v199;
        sub_1004BB174();
        sub_100189D50(&qword_100604C70, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
        v134 = v226;
        v135 = sub_1004BD934();
        v137 = v136;
        v223(v133, v134);
        v138 = sub_100012018(v135, v137, &v234);

        *(v132 + 4) = v138;
        *(v132 + 12) = 2082;
        v76(v215, v228 + v74, v221);
        v139 = sub_1004BBF04();
        v141 = sub_100012018(v139, v140, &v234);

        *(v132 + 14) = v141;
        _os_log_impl(&_mh_execute_header, v130, v131, "| Unhandled add status (%{public}s) for item: %{public}s", v132, 0x16u);
        swift_arrayDestroy();

        v77 = v222;
      }

      v82 = 0;
      v81 = 0x8000;
      v72 = v208;
      v71 = TupleTypeMetadata2;
      goto LABEL_73;
    }

    v101 = v206;
    v102 = v207;
    v103 = swift_dynamicCast();
    v104 = v227;
    v105 = v228;
    v106 = v210;
    if (v103)
    {
      v107 = v204;
      v108 = v101;
      v109 = v203;
      (*(v204 + 32))(v203, v108, v102);
      if (Album.childrenAddStatus(_:)(*(v105 + 16)) == 1)
      {
        v110 = sub_1004B8094();
        v111 = sub_1004BC9A4();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          *v112 = 0;
          _os_log_impl(&_mh_execute_header, v110, v111, "| Album is already added but has at least 1 addable track", v112, 2u);
        }

        (*(v204 + 8))(v203, v102);
        v81 = 0;
        v82 = 4;
        goto LABEL_73;
      }

      (*(v107 + 8))(v109, v102);
    }

    v145 = v202;
    if (swift_dynamicCast())
    {
      v146 = v201;
      v147 = v200;
      (*(v201 + 32))(v200, v145, v106);
      v148 = v205;
      sub_1004BBA74();
      v149 = sub_100003ABC(&qword_100603CA0, &qword_1004D0800);
      v150 = v148;
      v151 = v149;
      v152 = *(v149 - 8);
      if ((*(v152 + 48))(v150, 1, v149) == 1)
      {
        (*(v146 + 8))(v147, v106);
        sub_100007214(v205, &qword_1006020A8, &qword_1004CA4B8);
      }

      else
      {
        sub_1000206D4(&qword_100603CD0, &qword_100603CA0, &qword_1004D0800, &protocol conformance descriptor for MusicItemCollection<A>);
        v153 = v205;
        sub_1004BC724();
        sub_1004BC764();
        v155 = v233;
        v154 = v234;
        (*(v152 + 8))(v153, v151);
        if (v154 == v155)
        {
          v156 = sub_1004B8094();
          v157 = sub_1004BC9A4();
          v158 = os_log_type_enabled(v156, v157);
          v159 = v201;
          v160 = v200;
          if (v158)
          {
            v161 = swift_slowAlloc();
            *v161 = 0;
            _os_log_impl(&_mh_execute_header, v156, v157, "| Playlist is already added but does not have any tracks", v161, 2u);
          }

          (*(v159 + 8))(v160, v210);
          goto LABEL_72;
        }

        (*(v201 + 8))(v200, v210);
      }

      v104 = v227;
    }

    v162 = sub_1004B8094();
    v163 = sub_1004BC9A4();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      *v164 = 0;
      _os_log_impl(&_mh_execute_header, v162, v163, "|—● Item is added", v164, 2u);
    }

    result = [objc_opt_self() sharedCloudController];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v166 = result;
    v167 = [result canShowCloudDownloadButtons];

    if (v167)
    {
      v168 = v198;
      v169 = v225;
      v196(v198, v229, v225);
      v170 = (*(v104 + 88))(v168, v169);
      if (v170 == enum case for MusicLibrary.DownloadStatus.downloading(_:))
      {
        (*(v104 + 96))(v168, v169);
        v82 = *v168;
        v81 = 0x4000;
        goto LABEL_73;
      }

      if (v170 == enum case for MusicLibrary.DownloadStatus.paused(_:))
      {
        (*(v104 + 96))(v168, v169);
        if (((v194 & 0xC000) != 0x4000) | v194 & 1)
        {
          v82 = 0;
        }

        else
        {
          v82 = v195;
        }

        v81 = ((v194 & 0xC000) != 0x4000) | v194 & 1 | 0x4100;
        v181 = sub_1004BAF04();
        (*(*(v181 - 8) + 8))(v168, v181);
        goto LABEL_73;
      }

      if (v170 != enum case for MusicLibrary.DownloadStatus.notDownloadable(_:))
      {
        if (v170 == enum case for MusicLibrary.DownloadStatus.downloadable(_:))
        {
          v81 = 0x8000;
          v82 = 1;
        }

        else if (v170 == enum case for MusicLibrary.DownloadStatus.downloadWaiting(_:))
        {
          v82 = 0;
          v81 = 16385;
        }

        else if (v170 == enum case for MusicLibrary.DownloadStatus.downloaded(_:))
        {
          v81 = 0x8000;
          v82 = 2;
        }

        else
        {
          v182 = v71;
          v183 = enum case for MusicLibrary.DownloadStatus.cancelled(_:);
          v184 = v170;
          v185 = sub_1004B8094();
          v186 = sub_1004BC9A4();
          v187 = os_log_type_enabled(v185, v186);
          if (v184 == v183)
          {
            if (v187)
            {
              v188 = swift_slowAlloc();
              *v188 = 0;
            }

            v189 = sub_1004B8094();
            v190 = sub_1004BC9A4();
            v71 = v182;
            if (os_log_type_enabled(v189, v190))
            {
              v191 = swift_slowAlloc();
              *v191 = 0;
              _os_log_impl(&_mh_execute_header, v189, v190, "|—| 🌚 though we're not sure this is the right thing to do", v191, 2u);
            }

            v81 = 0x8000;
            v82 = 1;
            v72 = v224;
          }

          else
          {
            v71 = v182;
            if (v187)
            {
              v192 = swift_slowAlloc();
              *v192 = 0;
              _os_log_impl(&_mh_execute_header, v185, v186, "|—| Unhandled case", v192, 2u);
            }

            (v219)(v198, v225);
            v82 = 0;
            v81 = 0x8000;
            v72 = v224;
          }
        }

        goto LABEL_73;
      }
    }

    else
    {
      v171 = sub_1004B8094();
      v172 = sub_1004BC9A4();
      if (os_log_type_enabled(v171, v172))
      {
        v173 = swift_slowAlloc();
        *v173 = 0;
        _os_log_impl(&_mh_execute_header, v171, v172, "|—| MPCloudController -canShowCloudDownloadButton: NO", v173, 2u);
      }
    }

LABEL_72:
    v82 = 0;
    v81 = 0x8000;
    goto LABEL_73;
  }

  v83 = v214;
  (*(v79 + 96))(&v77[v75], v78);
  v84 = v83[4];
  v85 = &v77[v75];
  v86 = v217;
  v87 = v216;
  TupleTypeMetadata2 = (v83 + 4);
  v218 = v84;
  v84(v217, v85, v216);
  v88 = v83[2];
  v89 = v211;
  v88(v211, v86, v87);
  v90 = sub_1004B8094();
  v91 = sub_1004BC9A4();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = v89;
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v234 = v94;
    *v93 = 136446210;
    sub_100189D50(&qword_100601E38, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
    v95 = sub_1004BD934();
    v97 = v96;
    v98 = v92;
    v99 = v83[1];
    v99(v98, v216);
    v100 = sub_100012018(v95, v97, &v234);

    *(v93 + 4) = v100;
    v87 = v216;
    _os_log_impl(&_mh_execute_header, v90, v91, "|—● Item is unaddable: %{public}s", v93, 0xCu);
    sub_100004C6C(v94);
  }

  else
  {

    v99 = v83[1];
    v99(v89, v87);
  }

  v113 = v212;
  v88(v212, v217, v87);
  v114 = v83[11];
  v115 = v114(v113, v87);
  v116 = enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:);
  v117 = v213;
  if (v115 != enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:) && v115 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:) && v115 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:) && v115 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
  {
    v118 = sub_1004B8094();
    v119 = sub_1004BC9A4();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&_mh_execute_header, v118, v119, "|—| Reason is not actionable by the user", v120, 2u);
    }

    v121 = v216;
    v99(v217, v216);
    v99(v113, v121);
    v82 = 0;
    v81 = 0x8000;
    goto LABEL_46;
  }

  LODWORD(v215) = enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:);
  LODWORD(v212) = enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:);
  LODWORD(v211) = enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:);
  v88(v213, v217, v87);
  v122 = v117;
  v123 = sub_1004B8094();
  v124 = sub_1004BC9A4();
  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    v234 = v210;
    *v125 = 136315138;
    sub_100189D50(&qword_100601E38, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
    v126 = sub_1004BD934();
    v128 = v127;
    v99(v122, v216);
    v129 = sub_100012018(v126, v128, &v234);

    *(v125 + 4) = v129;
    v87 = v216;
    sub_100004C6C(v210);
  }

  else
  {

    v99(v122, v87);
  }

  v142 = v209;
  v218(v209, v217, v87);
  v143 = v114(v142, v87);
  if (v143 == v116)
  {
    v81 = 0;
    v82 = 1;
LABEL_46:
    v77 = v222;
    v71 = v221;
    v72 = v224;
    goto LABEL_73;
  }

  v144 = v99;
  v77 = v222;
  v71 = v221;
  v72 = v224;
  if (v143 == v215)
  {
    v82 = 0;
    v81 = 0;
  }

  else if (v143 == v212)
  {
    v81 = 0;
    v82 = 2;
  }

  else if (v143 == v211)
  {
    v81 = 0;
    v82 = 3;
  }

  else
  {
    v144(v142, v87);
    v81 = 0;
    v82 = 5;
  }

LABEL_73:
  (*(v72 + 8))(v77, v71);
  v174 = sub_1004B8094();
  v175 = sub_1004BC9A4();
  if (os_log_type_enabled(v174, v175))
  {
    v176 = swift_slowAlloc();
    v177 = swift_slowAlloc();
    v234 = v177;
    *v176 = 136446210;
    v178 = MusicLibrary.ActionableState.description.getter(v82, v81);
    v180 = sub_100012018(v178, v179, &v234);

    *(v176 + 4) = v180;
    _os_log_impl(&_mh_execute_header, v174, v175, "╰ Item state resolved to %{public}s", v176, 0xCu);
    sub_100004C6C(v177);
  }

  sub_100184B94(v82, v81);
  (v219)(v229, v225);
  return (v223)(v232, v226);
}