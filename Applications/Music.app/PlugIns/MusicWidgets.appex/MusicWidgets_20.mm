uint64_t sub_10021CBD8(char a1)
{
  *(v2 + 1848) = v1;
  *(v2 + 1987) = a1;
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  *(v2 + 1856) = swift_task_alloc();
  sub_100009DCC(&qword_1006E62F0, &qword_1005857D0);
  *(v2 + 1864) = swift_task_alloc();
  v3 = sub_10056DF88();
  *(v2 + 1872) = v3;
  *(v2 + 1880) = *(v3 - 8);
  *(v2 + 1888) = swift_task_alloc();
  *(v2 + 1896) = swift_task_alloc();
  *(v2 + 1904) = swift_task_alloc();
  *(v2 + 1912) = swift_task_alloc();
  *(v2 + 1920) = swift_task_alloc();

  return _swift_task_switch(sub_10021CD3C, 0, 0);
}

uint64_t sub_10021CD3C()
{
  v79 = v0;
  v1 = *(*(v0 + 1848) + 192);
  if (((1 << v1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v1) & 0x700000000180) != 0)
  {
    v54 = sub_1000CAB70();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v54) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 1986) = 2;
    v55 = sub_1000CAB1C();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v55) & 1) == 0)
    {
LABEL_21:
      if (qword_1006E5608 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1006E4C70 != -1)
        {
          swift_once();
        }

        v56 = *(v0 + 1920);
        v57 = *(v0 + 1880);
        v58 = *(v0 + 1872);
        v59 = *(v0 + 1848);
        v60 = sub_10000C49C(v58, qword_1006E62D8);
        (*(v57 + 16))(v56, v60, v58);
        sub_10000CC8C(v59, v0 + 1552, &qword_1006E6F88, &qword_1005876D8);
        v61 = sub_10056DF68();
        v62 = sub_100573428();
        v63 = os_log_type_enabled(v61, v62);
        v64 = *(v0 + 1920);
        v65 = *(v0 + 1880);
        v66 = *(v0 + 1872);
        if (v63)
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v78[0] = v68;
          *v67 = 136446210;
          v69 = *(v0 + 1744);
          sub_10001036C(v0 + 1552, &qword_1006E6F88, &qword_1005876D8);
          v70 = ActionType.rawValue.getter(v69);
          v72 = sub_1000C9784(v70, v71, v78);

          *(v67 + 4) = v72;
          _os_log_impl(&_mh_execute_header, v61, v62, "%{public}s: attempted to execute but identifier is hidden", v67, 0xCu);
          sub_100010474(v68);
        }

        else
        {
          sub_10001036C(v0 + 1552, &qword_1006E6F88, &qword_1005876D8);
        }

        (*(v65 + 8))(v64, v66);
      }

      v34 = 0x80000001005AC9B0;
      v33 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 1987) != 1 || (v2 = (*(*(v0 + 1848) + 200))(), v3 == 1))
  {
    if (qword_1006E4C70 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 1904);
    v5 = *(v0 + 1880);
    v6 = *(v0 + 1872);
    v7 = *(v0 + 1848);
    v8 = sub_10000C49C(v6, qword_1006E62D8);
    *(v0 + 1928) = v8;
    v9 = *(v5 + 16);
    *(v0 + 1936) = v9;
    *(v0 + 1944) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v4, v8, v6);
    sub_10000CC8C(v7, v0 + 16, &qword_1006E6F88, &qword_1005876D8);
    v10 = sub_10056DF68();
    v11 = sub_100573448();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 1904);
    v14 = *(v0 + 1880);
    v15 = *(v0 + 1872);
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v78[0] = v17;
      *v16 = 136446210;
      v18 = *(v0 + 208);
      sub_10001036C(v0 + 16, &qword_1006E6F88, &qword_1005876D8);
      v19 = ActionType.rawValue.getter(v18);
      v21 = sub_1000C9784(v19, v20, v78);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s: performing…", v16, 0xCu);
      sub_100010474(v17);
    }

    else
    {
      sub_10001036C(v0 + 16, &qword_1006E6F88, &qword_1005876D8);
    }

    v22 = *(v14 + 8);
    v22(v13, v15);
    *(v0 + 1952) = v22;
    v23 = *(v0 + 1864);
    v24 = *(v0 + 1848);
    sub_1000D3B98(0, &qword_1006E62F8, NSTimer_ptr);
    v25 = [objc_opt_self() mainRunLoop];
    v26 = sub_100573BA8();
    (*(*(v26 - 8) + 56))(v23, 1, 1, v26);
    v27 = sub_1005739F8();

    sub_10001036C(v23, &qword_1006E62F0, &qword_1005857D0);
    *(v0 + 1824) = v27;
    sub_1005739E8();
    sub_100240384(&qword_1006E6300, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v28 = sub_10056E418();

    *(v0 + 1832) = v28;
    sub_10000CC8C(v24, v0 + 272, &qword_1006E6F88, &qword_1005876D8);
    v29 = swift_allocObject();
    sub_100019B40(v0 + 272, v29 + 16, &qword_1006E6F88, &qword_1005876D8);
    sub_100009DCC(&qword_1006E6308, &qword_1005857D8);
    sub_100010BC0(&qword_1006E6310, &qword_1006E6308, &qword_1005857D8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 1960) = sub_10056E518();

    v76 = (*(v24 + 224) + **(v24 + 224));
    v30 = swift_task_alloc();
    *(v0 + 1968) = v30;
    *v30 = v0;
    v30[1] = sub_10021D7DC;
    v31 = *(v0 + 1848);

    return v76(v0 + 1984, v31);
  }

  v33 = v2;
  v34 = v3;
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v35 = *(v0 + 1912);
  v36 = *(v0 + 1880);
  v37 = *(v0 + 1872);
  v38 = *(v0 + 1848);
  v39 = sub_10000C49C(v37, qword_1006E62D8);
  (*(v36 + 16))(v35, v39, v37);
  sub_10000CC8C(v38, v0 + 1296, &qword_1006E6F88, &qword_1005876D8);

  v40 = sub_10056DF68();
  v41 = sub_100573428();
  sub_1000CA864(v33, v34);
  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v0 + 1912);
  v44 = *(v0 + 1880);
  v45 = *(v0 + 1872);
  if (v42)
  {
    v77 = *(v0 + 1872);
    v46 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    *v46 = 136446466;
    v47 = *(v0 + 1488);
    sub_10001036C(v0 + 1296, &qword_1006E6F88, &qword_1005876D8);
    v48 = ActionType.rawValue.getter(v47);
    v75 = v43;
    v50 = sub_1000C9784(v48, v49, v78);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2082;
    *(v0 + 1808) = v33;
    *(v0 + 1816) = v34;

    sub_100009DCC(&unk_1006EB090, &qword_100587FB0);
    v51 = sub_100572978();
    v53 = sub_1000C9784(v51, v52, v78);

    *(v46 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v40, v41, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v46, 0x16u);
    swift_arrayDestroy();

    (*(v44 + 8))(v75, v77);
  }

  else
  {
    sub_10001036C(v0 + 1296, &qword_1006E6F88, &qword_1005876D8);

    (*(v44 + 8))(v43, v45);
  }

LABEL_31:
  sub_1000D7C4C();
  swift_allocError();
  *v73 = v33;
  v73[1] = v34;
  swift_willThrow();

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_10021D7DC()
{
  *(*v1 + 1976) = v0;

  if (v0)
  {
    v2 = sub_10021DD14;
  }

  else
  {
    v2 = sub_10021D8F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10021D8F0()
{
  v29 = v0;
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1928);
  v3 = *(v0 + 1896);
  v4 = *(v0 + 1872);
  v5 = *(v0 + 1848);
  sub_10056E3B8();
  v1(v3, v2, v4);
  sub_10000CC8C(v5, v0 + 784, &qword_1006E6F88, &qword_1005876D8);
  v26 = *(v0 + 1984);
  v6 = sub_10056DF68();
  v7 = sub_100573448();
  if (os_log_type_enabled(v6, v7))
  {
    v25 = *(v0 + 1952);
    v8 = *(v0 + 1896);
    v9 = *(v0 + 1872);
    v10 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v10 = 136446466;
    v11 = *(v0 + 976);
    sub_10001036C(v0 + 784, &qword_1006E6F88, &qword_1005876D8);
    v12 = ActionType.rawValue.getter(v11);
    v14 = sub_1000C9784(v12, v13, &v27);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v28[0] = 0;
    v28[1] = 0xE000000000000000;
    sub_100573ED8(16);

    strcpy(v28, " with result: ");
    HIBYTE(v28[1]) = -18;
    *(v0 + 1985) = v26;
    v31._countAndFlagsBits = sub_100572978();
    sub_100572A98(v31);

    v15 = sub_1000C9784(v28[0], v28[1], &v27);

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
    sub_10001036C(v0 + 784, &qword_1006E6F88, &qword_1005876D8);

    v16(v17, v18);
  }

  v19 = *(v0 + 1856);
  v20 = *(v0 + 1848);
  v21 = sub_100572F48();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  sub_10000CC8C(v20, v0 + 1040, &qword_1006E6F88, &qword_1005876D8);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_100019B40(v0 + 1040, v22 + 32, &qword_1006E6F88, &qword_1005876D8);
  *(v22 + 288) = v26;
  sub_1000D6938(0, 0, v19, &unk_10058DBC0, v22);

  sub_10001036C(v19, &qword_1006E6420, &qword_100586E50);

  v23 = *(v0 + 8);

  return v23(v26);
}

uint64_t sub_10021DD14()
{
  v26 = v0;
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1928);
  v3 = *(v0 + 1888);
  v4 = *(v0 + 1872);
  v5 = *(v0 + 1848);

  v1(v3, v2, v4);
  sub_10000CC8C(v5, v0 + 528, &qword_1006E6F88, &qword_1005876D8);
  swift_errorRetain();
  v6 = sub_10056DF68();
  v7 = sub_100573428();

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
    sub_10001036C(v0 + 528, &qword_1006E6F88, &qword_1005876D8);
    v12 = ActionType.rawValue.getter(v11);
    v14 = sub_1000C9784(v12, v13, v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 1840) = v8;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v15 = sub_100572978();
    v17 = sub_1000C9784(v15, v16, v25);

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
    sub_10001036C(v0 + 528, &qword_1006E6F88, &qword_1005876D8);

    v18(v19, v20);
  }

  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10021E008(uint64_t a1, char a2)
{
  *(v3 + 56) = v2;
  *(v3 + 261) = a2;
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  *(v3 + 64) = swift_task_alloc();
  sub_100009DCC(&qword_1006E62F0, &qword_1005857D0);
  *(v3 + 72) = swift_task_alloc();
  v4 = sub_100009DCC(&qword_1006E6D10, &unk_10058DB60);
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
  v6 = sub_10056DF88();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_10021E218, 0, 0);
}

uint64_t sub_10021E218()
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
    v64 = sub_1000CAB70();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v64) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 260) = 2;
    v65 = sub_1000CAB1C();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v65) & 1) == 0)
    {
LABEL_21:
      if (qword_1006E5608 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1006E4C70 != -1)
        {
          swift_once();
        }

        v66 = *(v0 + 200);
        v67 = *(v0 + 152);
        v68 = *(v0 + 160);
        v69 = *(v0 + 144);
        v70 = *(v0 + 56);
        v71 = sub_10000C49C(v67, qword_1006E62D8);
        (*(v68 + 16))(v66, v71, v67);
        sub_10000CC8C(v70, v69, &qword_1006E6D10, &unk_10058DB60);
        v72 = sub_10056DF68();
        v73 = sub_100573428();
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
          sub_10001036C(v78, &qword_1006E6D10, &unk_10058DB60);
          v82 = ActionType.rawValue.getter(v81);
          v84 = sub_1000C9784(v82, v83, v89);

          *(v79 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v72, v73, "%{public}s: attempted to execute but identifier is hidden", v79, 0xCu);
          sub_100010474(v80);
        }

        else
        {
          sub_10001036C(*(v0 + 144), &qword_1006E6D10, &unk_10058DB60);
        }

        (*(v77 + 8))(v75, v76);
      }

      v40 = 0x80000001005AC9B0;
      v39 = 0xD000000000000014;
      goto LABEL_31;
    }
  }

LABEL_2:
  if (*(v0 + 261) != 1 || (v3 = (*(*(v0 + 56) + *(*(v0 + 80) + 40)))(), v4 == 1))
  {
    if (qword_1006E4C70 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 184);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 128);
    v9 = *(v0 + 56);
    v10 = sub_10000C49C(v6, qword_1006E62D8);
    *(v0 + 208) = v10;
    v11 = *(v7 + 16);
    *(v0 + 216) = v11;
    *(v0 + 224) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v5, v10, v6);
    sub_10000CC8C(v9, v8, &qword_1006E6D10, &unk_10058DB60);
    v12 = sub_10056DF68();
    v13 = sub_100573448();
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
      sub_10001036C(v18, &qword_1006E6D10, &unk_10058DB60);
      v22 = ActionType.rawValue.getter(v21);
      v24 = sub_1000C9784(v22, v23, v89);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: performing…", v19, 0xCu);
      sub_100010474(v20);
    }

    else
    {
      sub_10001036C(*(v0 + 128), &qword_1006E6D10, &unk_10058DB60);
    }

    (*(v17 + 8))(v15, v16);
    v25 = *(v0 + 120);
    v26 = *(v0 + 88);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    sub_1000D3B98(0, &qword_1006E62F8, NSTimer_ptr);
    v30 = [objc_opt_self() mainRunLoop];
    v31 = sub_100573BA8();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    v32 = sub_1005739F8();

    sub_10001036C(v27, &qword_1006E62F0, &qword_1005857D0);
    *(v0 + 32) = v32;
    sub_1005739E8();
    sub_100240384(&qword_1006E6300, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
    v33 = sub_10056E418();

    *(v0 + 40) = v33;
    sub_10000CC8C(v29, v25, &qword_1006E6D10, &unk_10058DB60);
    v34 = *(v26 + 80);
    *(v0 + 256) = v34;
    v35 = (v34 + 16) & ~v34;
    v36 = swift_allocObject();
    sub_100019B40(v25, v36 + v35, &qword_1006E6D10, &unk_10058DB60);
    sub_100009DCC(&qword_1006E6308, &qword_1005857D8);
    sub_100010BC0(&qword_1006E6310, &qword_1006E6308, &qword_1005857D8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 232) = sub_10056E518();

    v87 = (*(v29 + *(v28 + 48)) + **(v29 + *(v28 + 48)));
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    *v37 = v0;
    v37[1] = sub_10021ED30;

    return v87();
  }

  v39 = v3;
  v40 = v4;
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 192);
  v42 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v45 = *(v0 + 56);
  v46 = sub_10000C49C(v42, qword_1006E62D8);
  (*(v43 + 16))(v41, v46, v42);
  sub_10000CC8C(v45, v44, &qword_1006E6D10, &unk_10058DB60);

  v47 = sub_10056DF68();
  v48 = sub_100573428();
  sub_1000CA864(v39, v40);
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
    sub_10001036C(v53, &qword_1006E6D10, &unk_10058DB60);
    v58 = ActionType.rawValue.getter(v57);
    v60 = sub_1000C9784(v58, v59, v89);

    *(v54 + 4) = v60;
    *(v54 + 12) = 2082;
    *(v0 + 16) = v39;
    *(v0 + 24) = v40;

    sub_100009DCC(&unk_1006EB090, &qword_100587FB0);
    v61 = sub_100572978();
    v63 = sub_1000C9784(v61, v62, v89);

    *(v54 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v54, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v56, v88);
  }

  else
  {
    sub_10001036C(*(v0 + 136), &qword_1006E6D10, &unk_10058DB60);

    (*(v51 + 8))(v50, v52);
  }

LABEL_31:
  sub_1000D7C4C();
  swift_allocError();
  *v85 = v39;
  v85[1] = v40;
  swift_willThrow();

  v86 = *(v0 + 8);

  return v86();
}

uint64_t sub_10021ED30()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_10021F1FC;
  }

  else
  {
    v2 = sub_10021EE44;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10021EE44()
{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);
  sub_10056E3B8();
  v2(v3, v1, v4);
  sub_10000CC8C(v6, v5, &qword_1006E6D10, &unk_10058DB60);
  v7 = sub_10056DF68();
  v8 = sub_100573448();
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
    sub_10001036C(v13, &qword_1006E6D10, &unk_10058DB60);
    v16 = ActionType.rawValue.getter(v14);
    v18 = sub_1000C9784(v16, v17, &v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_1000C9784(0, 0xE000000000000000, &v27);
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: perform success%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10001036C(*(v0 + 112), &qword_1006E6D10, &unk_10058DB60);
  }

  (*(v12 + 8))(v10, v11);
  v19 = *(v0 + 256);
  v20 = *(v0 + 120);
  v21 = *(v0 + 64);
  v22 = *(v0 + 56);
  v23 = sub_100572F48();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_10000CC8C(v22, v20, &qword_1006E6D10, &unk_10058DB60);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_100019B40(v20, v24 + ((v19 + 32) & ~v19), &qword_1006E6D10, &unk_10058DB60);
  sub_1000D6938(0, 0, v21, &unk_10058DB78, v24);

  sub_10001036C(v21, &qword_1006E6420, &qword_100586E50);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_10021F1FC()
{
  v28 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[7];

  v2(v3, v1, v4);
  sub_10000CC8C(v6, v5, &qword_1006E6D10, &unk_10058DB60);
  swift_errorRetain();
  v7 = sub_10056DF68();
  v8 = sub_100573428();

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
    sub_10001036C(v12, &qword_1006E6D10, &unk_10058DB60);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_1000C9784(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[6] = v9;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v18 = sub_100572978();
    v20 = sub_1000C9784(v18, v19, v27);

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
    sub_10001036C(v0[13], &qword_1006E6D10, &unk_10058DB60);

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_10021F528(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const char *a5)
{
  v9 = sub_100009DCC(a3, a4);
  __chkstk_darwin();
  v11 = &v28 - v10;
  v12 = sub_10056DF88();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v16 = sub_10000C49C(v12, qword_1006E62D8);
  (*(v13 + 16))(v15, v16, v12);
  sub_10000CC8C(a2, v11, a3, a4);
  v17 = sub_10056DF68();
  v18 = sub_100573448();
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
    sub_10001036C(v11, a3, a4);
    v24 = ActionType.rawValue.getter(v23);
    v26 = sub_1000C9784(v24, v25, &v31);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, v29, v20, 0xCu);
    sub_100010474(v22);

    return (*(v13 + 8))(v15, v30);
  }

  else
  {
    sub_10001036C(v11, a3, a4);

    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_10021F7CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const char *a5)
{
  v9 = sub_10056DF88();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v13 = sub_10000C49C(v9, qword_1006E62D8);
  (*(v10 + 16))(v12, v13, v9);
  sub_10000CC8C(a2, v28, a3, a4);
  v14 = sub_10056DF68();
  v15 = sub_100573448();
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
    sub_10001036C(a2, v26, v21);
    v24 = sub_1000C9784(v20, v23, v28);

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, v27, v17, 0xCu);
    sub_100010474(v18);
  }

  else
  {
    sub_10001036C(a2, a3, a4);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10021FA1C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  sub_100009DCC(&qword_1006E62F0, &qword_1005857D0);
  *(v4 + 1264) = swift_task_alloc();
  v6 = sub_10056DF88();
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

  return _swift_task_switch(sub_10021FB70, 0, 0);
}

uint64_t sub_10021FB70()
{
  v43 = v0;
  v1 = (v0 + 152);
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 1304);
  v3 = *(v0 + 1280);
  v4 = *(v0 + 1272);
  v5 = sub_10000C49C(v4, qword_1006E62D8);
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
  sub_10000CC8C(v0 + 16, v0 + 288, &qword_1006E6B88, &qword_10058DE10);
  v11 = sub_10056DF68();
  v12 = sub_100573448();
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
    sub_10001036C(v0 + 16, &qword_1006E6B88, &qword_10058DE10);
    v22 = sub_1000C9784(v19, v21, &v42);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s: finishing…", v17, 0xCu);
    sub_100010474(v18);

    (*(v15 + 8))(v40, v16);
  }

  else
  {
    sub_10001036C(v0 + 16, &qword_1006E6B88, &qword_10058DE10);

    (*(v15 + 8))(v14, v16);
  }

  v23 = *(v0 + 1264);
  sub_1000D3B98(0, &qword_1006E62F8, NSTimer_ptr);
  v24 = [objc_opt_self() mainRunLoop];
  v25 = sub_100573BA8();
  (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
  v26 = sub_1005739F8();

  sub_10001036C(v23, &qword_1006E62F0, &qword_1005857D0);
  *(v0 + 1240) = v26;
  sub_1005739E8();
  sub_100240384(&qword_1006E6300, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v27 = sub_10056E418();

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
  sub_10000CC8C(v0 + 424, v0 + 560, &qword_1006E6B88, &qword_10058DE10);
  sub_100009DCC(&qword_1006E6308, &qword_1005857D8);
  sub_100010BC0(&qword_1006E6310, &qword_1006E6308, &qword_1005857D8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1336) = sub_10056E518();

  v41 = (v32 + *v32);
  v38 = swift_task_alloc();
  *(v0 + 1344) = v38;
  *v38 = v0;
  v38[1] = sub_1002200C8;

  return v41(v1);
}

uint64_t sub_1002200C8()
{
  *(*v1 + 1352) = v0;

  if (v0)
  {
    v2 = sub_10022045C;
  }

  else
  {
    v2 = sub_1002201DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002201DC()
{
  v26 = v0;
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 1296);
  v4 = *(v0 + 1272);
  sub_10056E3B8();
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
  sub_10000CC8C(v0 + 968, v0 + 1104, &qword_1006E6B88, &qword_10058DE10);
  v9 = sub_10056DF68();
  v10 = sub_100573448();
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
    sub_10001036C(v0 + 968, &qword_1006E6B88, &qword_10058DE10);
    v20 = sub_1000C9784(v17, v19, &v25);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finish success", v15, 0xCu);
    sub_100010474(v16);

    (*(v13 + 8))(v23, v24);
  }

  else
  {

    sub_10001036C(v0 + 968, &qword_1006E6B88, &qword_10058DE10);

    (*(v13 + 8))(v12, v14);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10022045C()
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
  sub_10000CC8C(v0 + 696, v0 + 832, &qword_1006E6B88, &qword_10058DE10);
  swift_errorRetain();
  v9 = sub_10056DF68();
  v10 = sub_100573428();

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
    sub_10001036C(v0 + 696, &qword_1006E6B88, &qword_10058DE10);
    v17 = sub_1000C9784(v14, v16, &v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1256) = v11;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v18 = sub_100572978();
    v20 = sub_1000C9784(v18, v19, &v28);

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

    sub_10001036C(v0 + 696, &qword_1006E6B88, &qword_10058DE10);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100220764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_100009DCC(&qword_1006E62F0, &qword_1005857D0);
  v4[6] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E6B90, &qword_10058DDC0);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_10056DF88();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_100220908, 0, 0);
}

uint64_t sub_100220908()
{
  v37 = v0;
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[5];
  v6 = sub_10000C49C(v2, qword_1006E62D8);
  v0[19] = v6;
  v7 = *(v3 + 16);
  v0[20] = v7;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  sub_10000CC8C(v5, v4, &qword_1006E6B90, &qword_10058DDC0);
  v8 = sub_10056DF68();
  v9 = sub_100573448();
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
    sub_10001036C(v14, &qword_1006E6B90, &qword_10058DDC0);
    v18 = ActionType.rawValue.getter(v15);
    v20 = sub_1000C9784(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finishing…", v16, 0xCu);
    sub_100010474(v17);
  }

  else
  {
    sub_10001036C(v0[13], &qword_1006E6B90, &qword_10058DDC0);
  }

  (*(v13 + 8))(v11, v12);
  v21 = v0[12];
  v22 = v0[8];
  v23 = v0[6];
  v24 = v0[7];
  v25 = v0[5];
  sub_1000D3B98(0, &qword_1006E62F8, NSTimer_ptr);
  v26 = [objc_opt_self() mainRunLoop];
  v27 = sub_100573BA8();
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  v28 = sub_1005739F8();

  sub_10001036C(v23, &qword_1006E62F0, &qword_1005857D0);
  v0[2] = v28;
  sub_1005739E8();
  sub_100240384(&qword_1006E6300, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v29 = sub_10056E418();

  v0[3] = v29;
  sub_10000CC8C(v25, v21, &qword_1006E6B90, &qword_10058DDC0);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = swift_allocObject();
  sub_100019B40(v21, v31 + v30, &qword_1006E6B90, &qword_10058DDC0);
  sub_100009DCC(&qword_1006E6308, &qword_1005857D8);
  sub_100010BC0(&qword_1006E6310, &qword_1006E6308, &qword_1005857D8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  v0[22] = sub_10056E518();

  v35 = (*(v25 + *(v24 + 52)) + **(v25 + *(v24 + 52)));
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = sub_100220E0C;
  v33 = v0[5];

  return v35(v33);
}

uint64_t sub_100220E0C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100221180;
  }

  else
  {
    v2 = sub_100220F20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100220F20()
{
  v24 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[5];
  sub_10056E3B8();
  v2(v3, v1, v4);
  sub_10000CC8C(v6, v5, &qword_1006E6B90, &qword_10058DDC0);
  v7 = sub_10056DF68();
  v8 = sub_100573448();
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
    sub_10001036C(v13, &qword_1006E6B90, &qword_10058DDC0);
    v17 = ActionType.rawValue.getter(v14);
    v19 = sub_1000C9784(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish success", v15, 0xCu);
    sub_100010474(v16);

    (*(v11 + 8))(v22, v12);
  }

  else
  {
    sub_10001036C(v0[11], &qword_1006E6B90, &qword_10058DDC0);

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_100221180()
{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[5];

  v2(v3, v1, v4);
  sub_10000CC8C(v6, v5, &qword_1006E6B90, &qword_10058DDC0);
  swift_errorRetain();
  v7 = sub_10056DF68();
  v8 = sub_100573428();

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
    sub_10001036C(v12, &qword_1006E6B90, &qword_10058DDC0);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_1000C9784(v15, v16, &v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[4] = v9;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v18 = sub_100572978();
    v20 = sub_1000C9784(v18, v19, &v27);

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
    sub_10001036C(v0[10], &qword_1006E6B90, &qword_10058DDC0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_100221474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_100009DCC(&qword_1006E62F0, &qword_1005857D0);
  v4[6] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E6B98, &qword_100586BF0);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_10056DF88();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_100221618, 0, 0);
}

uint64_t sub_100221618()
{
  v37 = v0;
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[5];
  v6 = sub_10000C49C(v2, qword_1006E62D8);
  v0[19] = v6;
  v7 = *(v3 + 16);
  v0[20] = v7;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  sub_10000CC8C(v5, v4, &qword_1006E6B98, &qword_100586BF0);
  v8 = sub_10056DF68();
  v9 = sub_100573448();
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
    sub_10001036C(v14, &qword_1006E6B98, &qword_100586BF0);
    v18 = ActionType.rawValue.getter(v15);
    v20 = sub_1000C9784(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finishing…", v16, 0xCu);
    sub_100010474(v17);
  }

  else
  {
    sub_10001036C(v0[13], &qword_1006E6B98, &qword_100586BF0);
  }

  (*(v13 + 8))(v11, v12);
  v21 = v0[12];
  v22 = v0[8];
  v23 = v0[6];
  v24 = v0[7];
  v25 = v0[5];
  sub_1000D3B98(0, &qword_1006E62F8, NSTimer_ptr);
  v26 = [objc_opt_self() mainRunLoop];
  v27 = sub_100573BA8();
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  v28 = sub_1005739F8();

  sub_10001036C(v23, &qword_1006E62F0, &qword_1005857D0);
  v0[2] = v28;
  sub_1005739E8();
  sub_100240384(&qword_1006E6300, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v29 = sub_10056E418();

  v0[3] = v29;
  sub_10000CC8C(v25, v21, &qword_1006E6B98, &qword_100586BF0);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = swift_allocObject();
  sub_100019B40(v21, v31 + v30, &qword_1006E6B98, &qword_100586BF0);
  sub_100009DCC(&qword_1006E6308, &qword_1005857D8);
  sub_100010BC0(&qword_1006E6310, &qword_1006E6308, &qword_1005857D8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  v0[22] = sub_10056E518();

  v35 = (*(v25 + *(v24 + 52)) + **(v25 + *(v24 + 52)));
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = sub_100221B1C;
  v33 = v0[5];

  return v35(v33);
}

uint64_t sub_100221B1C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100221E90;
  }

  else
  {
    v2 = sub_100221C30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100221C30()
{
  v24 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[5];
  sub_10056E3B8();
  v2(v3, v1, v4);
  sub_10000CC8C(v6, v5, &qword_1006E6B98, &qword_100586BF0);
  v7 = sub_10056DF68();
  v8 = sub_100573448();
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
    sub_10001036C(v13, &qword_1006E6B98, &qword_100586BF0);
    v17 = ActionType.rawValue.getter(v14);
    v19 = sub_1000C9784(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish success", v15, 0xCu);
    sub_100010474(v16);

    (*(v11 + 8))(v22, v12);
  }

  else
  {
    sub_10001036C(v0[11], &qword_1006E6B98, &qword_100586BF0);

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_100221E90()
{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[5];

  v2(v3, v1, v4);
  sub_10000CC8C(v6, v5, &qword_1006E6B98, &qword_100586BF0);
  swift_errorRetain();
  v7 = sub_10056DF68();
  v8 = sub_100573428();

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
    sub_10001036C(v12, &qword_1006E6B98, &qword_100586BF0);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_1000C9784(v15, v16, &v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[4] = v9;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v18 = sub_100572978();
    v20 = sub_1000C9784(v18, v19, &v27);

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
    sub_10001036C(v0[10], &qword_1006E6B98, &qword_100586BF0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_100222184(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100009DCC(&qword_1006E62F0, &qword_1005857D0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_10056DF88();
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

  return _swift_task_switch(sub_1002222B4, 0, 0);
}

uint64_t sub_1002222B4()
{
  v39 = v0;
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_10000C49C(v3, qword_1006E62D8);
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
  sub_10000CC8C(v0 + 16, v0 + 240, &qword_1006E6BC8, &qword_10058DD70);
  v9 = sub_10056DF68();
  v10 = sub_100573448();
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
    sub_10001036C(v0 + 16, &qword_1006E6BC8, &qword_10058DD70);
    v20 = sub_1000C9784(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100010474(v16);
  }

  else
  {
    sub_10001036C(v0 + 16, &qword_1006E6BC8, &qword_10058DD70);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_1000D3B98(0, &qword_1006E62F8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_100573BA8();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1005739F8();

  sub_10001036C(v21, &qword_1006E62F0, &qword_1005857D0);
  *(v0 + 1024) = v24;
  sub_1005739E8();
  sub_100240384(&qword_1006E6300, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_10056E418();

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
  sub_10000CC8C(v0 + 352, v0 + 464, &qword_1006E6BC8, &qword_10058DD70);
  sub_100009DCC(&qword_1006E6308, &qword_1005857D8);
  sub_100010BC0(&qword_1006E6310, &qword_1006E6308, &qword_1005857D8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_10056E518();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_1002227DC;

  return v37(v0 + 128);
}

uint64_t sub_1002227DC()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_100222B4C;
  }

  else
  {
    v2 = sub_1002228F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002228F0()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_10056E3B8();
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
  sub_10000CC8C(v0 + 800, v0 + 912, &qword_1006E6BC8, &qword_10058DD70);
  v8 = sub_10056DF68();
  v9 = sub_100573448();
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
    sub_10001036C(v0 + 800, &qword_1006E6BC8, &qword_10058DD70);
    v19 = sub_1000C9784(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100010474(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001036C(v0 + 800, &qword_1006E6BC8, &qword_10058DD70);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100222B4C()
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
  sub_10000CC8C(v0 + 576, v0 + 688, &qword_1006E6BC8, &qword_10058DD70);
  swift_errorRetain();
  v8 = sub_10056DF68();
  v9 = sub_100573428();

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
    sub_10001036C(v0 + 576, &qword_1006E6BC8, &qword_10058DD70);
    v17 = sub_1000C9784(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v18 = sub_100572978();
    v20 = sub_1000C9784(v18, v19, &v27);

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

    sub_10001036C(v0 + 576, &qword_1006E6BC8, &qword_10058DD70);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100222E38(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100009DCC(&qword_1006E62F0, &qword_1005857D0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_10056DF88();
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

  return _swift_task_switch(sub_100222F68, 0, 0);
}

uint64_t sub_100222F68()
{
  v39 = v0;
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_10000C49C(v3, qword_1006E62D8);
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
  sub_10000CC8C(v0 + 16, v0 + 240, &qword_1006E6BD0, &qword_100586C80);
  v9 = sub_10056DF68();
  v10 = sub_100573448();
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
    sub_10001036C(v0 + 16, &qword_1006E6BD0, &qword_100586C80);
    v20 = sub_1000C9784(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100010474(v16);
  }

  else
  {
    sub_10001036C(v0 + 16, &qword_1006E6BD0, &qword_100586C80);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_1000D3B98(0, &qword_1006E62F8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_100573BA8();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1005739F8();

  sub_10001036C(v21, &qword_1006E62F0, &qword_1005857D0);
  *(v0 + 1024) = v24;
  sub_1005739E8();
  sub_100240384(&qword_1006E6300, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_10056E418();

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
  sub_10000CC8C(v0 + 352, v0 + 464, &qword_1006E6BD0, &qword_100586C80);
  sub_100009DCC(&qword_1006E6308, &qword_1005857D8);
  sub_100010BC0(&qword_1006E6310, &qword_1006E6308, &qword_1005857D8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_10056E518();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_100223490;

  return v37(v0 + 128);
}

uint64_t sub_100223490()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_100223800;
  }

  else
  {
    v2 = sub_1002235A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002235A4()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_10056E3B8();
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
  sub_10000CC8C(v0 + 800, v0 + 912, &qword_1006E6BD0, &qword_100586C80);
  v8 = sub_10056DF68();
  v9 = sub_100573448();
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
    sub_10001036C(v0 + 800, &qword_1006E6BD0, &qword_100586C80);
    v19 = sub_1000C9784(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100010474(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001036C(v0 + 800, &qword_1006E6BD0, &qword_100586C80);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100223800()
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
  sub_10000CC8C(v0 + 576, v0 + 688, &qword_1006E6BD0, &qword_100586C80);
  swift_errorRetain();
  v8 = sub_10056DF68();
  v9 = sub_100573428();

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
    sub_10001036C(v0 + 576, &qword_1006E6BD0, &qword_100586C80);
    v17 = sub_1000C9784(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v18 = sub_100572978();
    v20 = sub_1000C9784(v18, v19, &v27);

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

    sub_10001036C(v0 + 576, &qword_1006E6BD0, &qword_100586C80);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100223AEC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100009DCC(&qword_1006E62F0, &qword_1005857D0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_10056DF88();
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

  return _swift_task_switch(sub_100223C1C, 0, 0);
}

uint64_t sub_100223C1C()
{
  v39 = v0;
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_10000C49C(v3, qword_1006E62D8);
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
  sub_10000CC8C(v0 + 16, v0 + 240, &qword_1006E6BE8, &qword_10058D8E0);
  v9 = sub_10056DF68();
  v10 = sub_100573448();
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
    sub_10001036C(v0 + 16, &qword_1006E6BE8, &qword_10058D8E0);
    v20 = sub_1000C9784(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100010474(v16);
  }

  else
  {
    sub_10001036C(v0 + 16, &qword_1006E6BE8, &qword_10058D8E0);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_1000D3B98(0, &qword_1006E62F8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_100573BA8();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1005739F8();

  sub_10001036C(v21, &qword_1006E62F0, &qword_1005857D0);
  *(v0 + 1024) = v24;
  sub_1005739E8();
  sub_100240384(&qword_1006E6300, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_10056E418();

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
  sub_10000CC8C(v0 + 352, v0 + 464, &qword_1006E6BE8, &qword_10058D8E0);
  sub_100009DCC(&qword_1006E6308, &qword_1005857D8);
  sub_100010BC0(&qword_1006E6310, &qword_1006E6308, &qword_1005857D8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_10056E518();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_100224144;

  return v37(v0 + 128);
}

uint64_t sub_100224144()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1002244B4;
  }

  else
  {
    v2 = sub_100224258;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100224258()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_10056E3B8();
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
  sub_10000CC8C(v0 + 800, v0 + 912, &qword_1006E6BE8, &qword_10058D8E0);
  v8 = sub_10056DF68();
  v9 = sub_100573448();
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
    sub_10001036C(v0 + 800, &qword_1006E6BE8, &qword_10058D8E0);
    v19 = sub_1000C9784(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100010474(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001036C(v0 + 800, &qword_1006E6BE8, &qword_10058D8E0);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1002244B4()
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
  sub_10000CC8C(v0 + 576, v0 + 688, &qword_1006E6BE8, &qword_10058D8E0);
  swift_errorRetain();
  v8 = sub_10056DF68();
  v9 = sub_100573428();

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
    sub_10001036C(v0 + 576, &qword_1006E6BE8, &qword_10058D8E0);
    v17 = sub_1000C9784(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v18 = sub_100572978();
    v20 = sub_1000C9784(v18, v19, &v27);

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

    sub_10001036C(v0 + 576, &qword_1006E6BE8, &qword_10058D8E0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1002247A0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100009DCC(&qword_1006E62F0, &qword_1005857D0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_10056DF88();
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

  return _swift_task_switch(sub_1002248D0, 0, 0);
}

uint64_t sub_1002248D0()
{
  v39 = v0;
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_10000C49C(v3, qword_1006E62D8);
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
  sub_10000CC8C(v0 + 16, v0 + 240, &qword_1006E6BE0, &qword_100586CB0);
  v9 = sub_10056DF68();
  v10 = sub_100573448();
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
    sub_10001036C(v0 + 16, &qword_1006E6BE0, &qword_100586CB0);
    v20 = sub_1000C9784(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100010474(v16);
  }

  else
  {
    sub_10001036C(v0 + 16, &qword_1006E6BE0, &qword_100586CB0);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_1000D3B98(0, &qword_1006E62F8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_100573BA8();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1005739F8();

  sub_10001036C(v21, &qword_1006E62F0, &qword_1005857D0);
  *(v0 + 1024) = v24;
  sub_1005739E8();
  sub_100240384(&qword_1006E6300, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_10056E418();

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
  sub_10000CC8C(v0 + 352, v0 + 464, &qword_1006E6BE0, &qword_100586CB0);
  sub_100009DCC(&qword_1006E6308, &qword_1005857D8);
  sub_100010BC0(&qword_1006E6310, &qword_1006E6308, &qword_1005857D8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_10056E518();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_100224DF8;

  return v37(v0 + 128);
}

uint64_t sub_100224DF8()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_100225168;
  }

  else
  {
    v2 = sub_100224F0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100224F0C()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_10056E3B8();
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
  sub_10000CC8C(v0 + 800, v0 + 912, &qword_1006E6BE0, &qword_100586CB0);
  v8 = sub_10056DF68();
  v9 = sub_100573448();
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
    sub_10001036C(v0 + 800, &qword_1006E6BE0, &qword_100586CB0);
    v19 = sub_1000C9784(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100010474(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001036C(v0 + 800, &qword_1006E6BE0, &qword_100586CB0);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100225168()
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
  sub_10000CC8C(v0 + 576, v0 + 688, &qword_1006E6BE0, &qword_100586CB0);
  swift_errorRetain();
  v8 = sub_10056DF68();
  v9 = sub_100573428();

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
    sub_10001036C(v0 + 576, &qword_1006E6BE0, &qword_100586CB0);
    v17 = sub_1000C9784(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v18 = sub_100572978();
    v20 = sub_1000C9784(v18, v19, &v27);

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

    sub_10001036C(v0 + 576, &qword_1006E6BE0, &qword_100586CB0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100225454(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100009DCC(&qword_1006E62F0, &qword_1005857D0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_10056DF88();
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

  return _swift_task_switch(sub_100225584, 0, 0);
}

uint64_t sub_100225584()
{
  v39 = v0;
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_10000C49C(v3, qword_1006E62D8);
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
  sub_10000CC8C(v0 + 16, v0 + 240, &qword_1006E6BD8, &qword_10058DD20);
  v9 = sub_10056DF68();
  v10 = sub_100573448();
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
    sub_10001036C(v0 + 16, &qword_1006E6BD8, &qword_10058DD20);
    v20 = sub_1000C9784(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100010474(v16);
  }

  else
  {
    sub_10001036C(v0 + 16, &qword_1006E6BD8, &qword_10058DD20);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_1000D3B98(0, &qword_1006E62F8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_100573BA8();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1005739F8();

  sub_10001036C(v21, &qword_1006E62F0, &qword_1005857D0);
  *(v0 + 1024) = v24;
  sub_1005739E8();
  sub_100240384(&qword_1006E6300, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_10056E418();

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
  sub_10000CC8C(v0 + 352, v0 + 464, &qword_1006E6BD8, &qword_10058DD20);
  sub_100009DCC(&qword_1006E6308, &qword_1005857D8);
  sub_100010BC0(&qword_1006E6310, &qword_1006E6308, &qword_1005857D8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_10056E518();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_100225AAC;

  return v37(v0 + 128);
}

uint64_t sub_100225AAC()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_100225E1C;
  }

  else
  {
    v2 = sub_100225BC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100225BC0()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_10056E3B8();
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
  sub_10000CC8C(v0 + 800, v0 + 912, &qword_1006E6BD8, &qword_10058DD20);
  v8 = sub_10056DF68();
  v9 = sub_100573448();
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
    sub_10001036C(v0 + 800, &qword_1006E6BD8, &qword_10058DD20);
    v19 = sub_1000C9784(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100010474(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001036C(v0 + 800, &qword_1006E6BD8, &qword_10058DD20);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100225E1C()
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
  sub_10000CC8C(v0 + 576, v0 + 688, &qword_1006E6BD8, &qword_10058DD20);
  swift_errorRetain();
  v8 = sub_10056DF68();
  v9 = sub_100573428();

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
    sub_10001036C(v0 + 576, &qword_1006E6BD8, &qword_10058DD20);
    v17 = sub_1000C9784(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v18 = sub_100572978();
    v20 = sub_1000C9784(v18, v19, &v27);

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

    sub_10001036C(v0 + 576, &qword_1006E6BD8, &qword_10058DD20);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100226108(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100009DCC(&qword_1006E62F0, &qword_1005857D0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_10056DF88();
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

  return _swift_task_switch(sub_100226238, 0, 0);
}

uint64_t sub_100226238()
{
  v39 = v0;
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_10000C49C(v3, qword_1006E62D8);
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
  sub_10000CC8C(v0 + 16, v0 + 240, &qword_1006E6BA8, &qword_100586C38);
  v9 = sub_10056DF68();
  v10 = sub_100573448();
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
    sub_10001036C(v0 + 16, &qword_1006E6BA8, &qword_100586C38);
    v20 = sub_1000C9784(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100010474(v16);
  }

  else
  {
    sub_10001036C(v0 + 16, &qword_1006E6BA8, &qword_100586C38);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_1000D3B98(0, &qword_1006E62F8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_100573BA8();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1005739F8();

  sub_10001036C(v21, &qword_1006E62F0, &qword_1005857D0);
  *(v0 + 1024) = v24;
  sub_1005739E8();
  sub_100240384(&qword_1006E6300, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_10056E418();

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
  sub_10000CC8C(v0 + 352, v0 + 464, &qword_1006E6BA8, &qword_100586C38);
  sub_100009DCC(&qword_1006E6308, &qword_1005857D8);
  sub_100010BC0(&qword_1006E6310, &qword_1006E6308, &qword_1005857D8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_10056E518();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_100226760;

  return v37(v0 + 128);
}

uint64_t sub_100226760()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_100226AD0;
  }

  else
  {
    v2 = sub_100226874;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100226874()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_10056E3B8();
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
  sub_10000CC8C(v0 + 800, v0 + 912, &qword_1006E6BA8, &qword_100586C38);
  v8 = sub_10056DF68();
  v9 = sub_100573448();
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
    sub_10001036C(v0 + 800, &qword_1006E6BA8, &qword_100586C38);
    v19 = sub_1000C9784(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100010474(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001036C(v0 + 800, &qword_1006E6BA8, &qword_100586C38);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100226AD0()
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
  sub_10000CC8C(v0 + 576, v0 + 688, &qword_1006E6BA8, &qword_100586C38);
  swift_errorRetain();
  v8 = sub_10056DF68();
  v9 = sub_100573428();

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
    sub_10001036C(v0 + 576, &qword_1006E6BA8, &qword_100586C38);
    v17 = sub_1000C9784(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v18 = sub_100572978();
    v20 = sub_1000C9784(v18, v19, &v27);

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

    sub_10001036C(v0 + 576, &qword_1006E6BA8, &qword_100586C38);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100226DBC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100009DCC(&qword_1006E62F0, &qword_1005857D0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_10056DF88();
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

  return _swift_task_switch(sub_100226EEC, 0, 0);
}

uint64_t sub_100226EEC()
{
  v39 = v0;
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_10000C49C(v3, qword_1006E62D8);
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
  sub_10000CC8C(v0 + 16, v0 + 240, &qword_1006E6C08, &qword_100586D38);
  v9 = sub_10056DF68();
  v10 = sub_100573448();
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
    sub_10001036C(v0 + 16, &qword_1006E6C08, &qword_100586D38);
    v20 = sub_1000C9784(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100010474(v16);
  }

  else
  {
    sub_10001036C(v0 + 16, &qword_1006E6C08, &qword_100586D38);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_1000D3B98(0, &qword_1006E62F8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_100573BA8();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1005739F8();

  sub_10001036C(v21, &qword_1006E62F0, &qword_1005857D0);
  *(v0 + 1024) = v24;
  sub_1005739E8();
  sub_100240384(&qword_1006E6300, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_10056E418();

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
  sub_10000CC8C(v0 + 352, v0 + 464, &qword_1006E6C08, &qword_100586D38);
  sub_100009DCC(&qword_1006E6308, &qword_1005857D8);
  sub_100010BC0(&qword_1006E6310, &qword_1006E6308, &qword_1005857D8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_10056E518();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_100227414;

  return v37(v0 + 128);
}

uint64_t sub_100227414()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_100227784;
  }

  else
  {
    v2 = sub_100227528;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100227528()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_10056E3B8();
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
  sub_10000CC8C(v0 + 800, v0 + 912, &qword_1006E6C08, &qword_100586D38);
  v8 = sub_10056DF68();
  v9 = sub_100573448();
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
    sub_10001036C(v0 + 800, &qword_1006E6C08, &qword_100586D38);
    v19 = sub_1000C9784(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100010474(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001036C(v0 + 800, &qword_1006E6C08, &qword_100586D38);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100227784()
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
  sub_10000CC8C(v0 + 576, v0 + 688, &qword_1006E6C08, &qword_100586D38);
  swift_errorRetain();
  v8 = sub_10056DF68();
  v9 = sub_100573428();

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
    sub_10001036C(v0 + 576, &qword_1006E6C08, &qword_100586D38);
    v17 = sub_1000C9784(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v18 = sub_100572978();
    v20 = sub_1000C9784(v18, v19, &v27);

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

    sub_10001036C(v0 + 576, &qword_1006E6C08, &qword_100586D38);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100227A70(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100009DCC(&qword_1006E62F0, &qword_1005857D0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_10056DF88();
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

  return _swift_task_switch(sub_100227BA0, 0, 0);
}

uint64_t sub_100227BA0()
{
  v39 = v0;
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_10000C49C(v3, qword_1006E62D8);
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
  sub_10000CC8C(v0 + 16, v0 + 240, &qword_1006E6C00, &qword_100586D30);
  v9 = sub_10056DF68();
  v10 = sub_100573448();
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
    sub_10001036C(v0 + 16, &qword_1006E6C00, &qword_100586D30);
    v20 = sub_1000C9784(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100010474(v16);
  }

  else
  {
    sub_10001036C(v0 + 16, &qword_1006E6C00, &qword_100586D30);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_1000D3B98(0, &qword_1006E62F8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_100573BA8();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1005739F8();

  sub_10001036C(v21, &qword_1006E62F0, &qword_1005857D0);
  *(v0 + 1024) = v24;
  sub_1005739E8();
  sub_100240384(&qword_1006E6300, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_10056E418();

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
  sub_10000CC8C(v0 + 352, v0 + 464, &qword_1006E6C00, &qword_100586D30);
  sub_100009DCC(&qword_1006E6308, &qword_1005857D8);
  sub_100010BC0(&qword_1006E6310, &qword_1006E6308, &qword_1005857D8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_10056E518();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_1002280C8;

  return v37(v0 + 128);
}

uint64_t sub_1002280C8()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_100228438;
  }

  else
  {
    v2 = sub_1002281DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002281DC()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_10056E3B8();
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
  sub_10000CC8C(v0 + 800, v0 + 912, &qword_1006E6C00, &qword_100586D30);
  v8 = sub_10056DF68();
  v9 = sub_100573448();
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
    sub_10001036C(v0 + 800, &qword_1006E6C00, &qword_100586D30);
    v19 = sub_1000C9784(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100010474(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001036C(v0 + 800, &qword_1006E6C00, &qword_100586D30);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100228438()
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
  sub_10000CC8C(v0 + 576, v0 + 688, &qword_1006E6C00, &qword_100586D30);
  swift_errorRetain();
  v8 = sub_10056DF68();
  v9 = sub_100573428();

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
    sub_10001036C(v0 + 576, &qword_1006E6C00, &qword_100586D30);
    v17 = sub_1000C9784(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v18 = sub_100572978();
    v20 = sub_1000C9784(v18, v19, &v27);

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

    sub_10001036C(v0 + 576, &qword_1006E6C00, &qword_100586D30);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100228724(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100009DCC(&qword_1006E62F0, &qword_1005857D0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_10056DF88();
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

  return _swift_task_switch(sub_100228854, 0, 0);
}

uint64_t sub_100228854()
{
  v39 = v0;
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_10000C49C(v3, qword_1006E62D8);
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
  sub_10000CC8C(v0 + 16, v0 + 240, &qword_1006E6BF8, &qword_100586CF0);
  v9 = sub_10056DF68();
  v10 = sub_100573448();
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
    sub_10001036C(v0 + 16, &qword_1006E6BF8, &qword_100586CF0);
    v20 = sub_1000C9784(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100010474(v16);
  }

  else
  {
    sub_10001036C(v0 + 16, &qword_1006E6BF8, &qword_100586CF0);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_1000D3B98(0, &qword_1006E62F8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_100573BA8();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1005739F8();

  sub_10001036C(v21, &qword_1006E62F0, &qword_1005857D0);
  *(v0 + 1024) = v24;
  sub_1005739E8();
  sub_100240384(&qword_1006E6300, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_10056E418();

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
  sub_10000CC8C(v0 + 352, v0 + 464, &qword_1006E6BF8, &qword_100586CF0);
  sub_100009DCC(&qword_1006E6308, &qword_1005857D8);
  sub_100010BC0(&qword_1006E6310, &qword_1006E6308, &qword_1005857D8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_10056E518();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_100228D7C;

  return v37(v0 + 128);
}

uint64_t sub_100228D7C()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_1002290EC;
  }

  else
  {
    v2 = sub_100228E90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100228E90()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_10056E3B8();
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
  sub_10000CC8C(v0 + 800, v0 + 912, &qword_1006E6BF8, &qword_100586CF0);
  v8 = sub_10056DF68();
  v9 = sub_100573448();
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
    sub_10001036C(v0 + 800, &qword_1006E6BF8, &qword_100586CF0);
    v19 = sub_1000C9784(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100010474(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001036C(v0 + 800, &qword_1006E6BF8, &qword_100586CF0);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1002290EC()
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
  sub_10000CC8C(v0 + 576, v0 + 688, &qword_1006E6BF8, &qword_100586CF0);
  swift_errorRetain();
  v8 = sub_10056DF68();
  v9 = sub_100573428();

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
    sub_10001036C(v0 + 576, &qword_1006E6BF8, &qword_100586CF0);
    v17 = sub_1000C9784(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v18 = sub_100572978();
    v20 = sub_1000C9784(v18, v19, &v27);

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

    sub_10001036C(v0 + 576, &qword_1006E6BF8, &qword_100586CF0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1002293D8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100009DCC(&qword_1006E62F0, &qword_1005857D0);
  *(v4 + 904) = swift_task_alloc();
  v6 = sub_10056DF88();
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

  return _swift_task_switch(sub_100229500, 0, 0);
}

uint64_t sub_100229500()
{
  v38 = v0;
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 944);
  v2 = *(v0 + 920);
  v3 = *(v0 + 912);
  v4 = sub_10000C49C(v3, qword_1006E62D8);
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
  sub_10000CC8C(v0 + 16, v0 + 208, &qword_1006E6C50, &qword_100586DD0);
  v9 = sub_10056DF68();
  v10 = sub_100573448();
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
    sub_10001036C(v0 + 16, &qword_1006E6C50, &qword_100586DD0);
    v20 = sub_1000C9784(v17, v19, &v37);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100010474(v16);
  }

  else
  {
    sub_10001036C(v0 + 16, &qword_1006E6C50, &qword_100586DD0);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 904);
  sub_1000D3B98(0, &qword_1006E62F8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_100573BA8();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1005739F8();

  sub_10001036C(v21, &qword_1006E62F0, &qword_1005857D0);
  *(v0 + 880) = v24;
  sub_1005739E8();
  sub_100240384(&qword_1006E6300, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_10056E418();

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
  sub_10000CC8C(v0 + 304, v0 + 400, &qword_1006E6C50, &qword_100586DD0);
  sub_100009DCC(&qword_1006E6308, &qword_1005857D8);
  sub_100010BC0(&qword_1006E6310, &qword_1006E6308, &qword_1005857D8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 976) = sub_10056E518();

  v36 = (v29 + *v29);
  v34 = swift_task_alloc();
  *(v0 + 984) = v34;
  *v34 = v0;
  v34[1] = sub_100229A10;

  return v36(v0 + 112);
}

uint64_t sub_100229A10()
{
  *(*v1 + 992) = v0;

  if (v0)
  {
    v2 = sub_100229D78;
  }

  else
  {
    v2 = sub_100229B24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100229B24()
{
  v24 = v0;
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 936);
  v4 = *(v0 + 912);
  sub_10056E3B8();
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
  sub_10000CC8C(v0 + 688, v0 + 784, &qword_1006E6C50, &qword_100586DD0);
  v8 = sub_10056DF68();
  v9 = sub_100573448();
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
    sub_10001036C(v0 + 688, &qword_1006E6C50, &qword_100586DD0);
    v19 = sub_1000C9784(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100010474(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001036C(v0 + 688, &qword_1006E6C50, &qword_100586DD0);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100229D78()
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
  sub_10000CC8C(v0 + 496, v0 + 592, &qword_1006E6C50, &qword_100586DD0);
  swift_errorRetain();
  v8 = sub_10056DF68();
  v9 = sub_100573428();

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
    sub_10001036C(v0 + 496, &qword_1006E6C50, &qword_100586DD0);
    v17 = sub_1000C9784(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 896) = v10;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v18 = sub_100572978();
    v20 = sub_1000C9784(v18, v19, &v27);

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

    sub_10001036C(v0 + 496, &qword_1006E6C50, &qword_100586DD0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10022A05C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100009DCC(&qword_1006E62F0, &qword_1005857D0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_10056DF88();
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

  return _swift_task_switch(sub_10022A18C, 0, 0);
}

uint64_t sub_10022A18C()
{
  v39 = v0;
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_10000C49C(v3, qword_1006E62D8);
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
  sub_10000CC8C(v0 + 16, v0 + 240, &qword_1006E6C30, &qword_100586DA0);
  v9 = sub_10056DF68();
  v10 = sub_100573448();
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
    sub_10001036C(v0 + 16, &qword_1006E6C30, &qword_100586DA0);
    v20 = sub_1000C9784(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100010474(v16);
  }

  else
  {
    sub_10001036C(v0 + 16, &qword_1006E6C30, &qword_100586DA0);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_1000D3B98(0, &qword_1006E62F8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_100573BA8();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1005739F8();

  sub_10001036C(v21, &qword_1006E62F0, &qword_1005857D0);
  *(v0 + 1024) = v24;
  sub_1005739E8();
  sub_100240384(&qword_1006E6300, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_10056E418();

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
  sub_10000CC8C(v0 + 352, v0 + 464, &qword_1006E6C30, &qword_100586DA0);
  sub_100009DCC(&qword_1006E6308, &qword_1005857D8);
  sub_100010BC0(&qword_1006E6310, &qword_1006E6308, &qword_1005857D8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_10056E518();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_10022A6B4;

  return v37(v0 + 128);
}

uint64_t sub_10022A6B4()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_10022AA24;
  }

  else
  {
    v2 = sub_10022A7C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022A7C8()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_10056E3B8();
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
  sub_10000CC8C(v0 + 800, v0 + 912, &qword_1006E6C30, &qword_100586DA0);
  v8 = sub_10056DF68();
  v9 = sub_100573448();
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
    sub_10001036C(v0 + 800, &qword_1006E6C30, &qword_100586DA0);
    v19 = sub_1000C9784(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100010474(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001036C(v0 + 800, &qword_1006E6C30, &qword_100586DA0);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10022AA24()
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
  sub_10000CC8C(v0 + 576, v0 + 688, &qword_1006E6C30, &qword_100586DA0);
  swift_errorRetain();
  v8 = sub_10056DF68();
  v9 = sub_100573428();

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
    sub_10001036C(v0 + 576, &qword_1006E6C30, &qword_100586DA0);
    v17 = sub_1000C9784(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v18 = sub_100572978();
    v20 = sub_1000C9784(v18, v19, &v27);

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

    sub_10001036C(v0 + 576, &qword_1006E6C30, &qword_100586DA0);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10022AD10(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100009DCC(&qword_1006E62F0, &qword_1005857D0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_10056DF88();
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

  return _swift_task_switch(sub_10022AE40, 0, 0);
}

uint64_t sub_10022AE40()
{
  v39 = v0;
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_10000C49C(v3, qword_1006E62D8);
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
  sub_10000CC8C(v0 + 16, v0 + 240, &qword_1006E6C28, &qword_10058DC30);
  v9 = sub_10056DF68();
  v10 = sub_100573448();
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
    sub_10001036C(v0 + 16, &qword_1006E6C28, &qword_10058DC30);
    v20 = sub_1000C9784(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100010474(v16);
  }

  else
  {
    sub_10001036C(v0 + 16, &qword_1006E6C28, &qword_10058DC30);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_1000D3B98(0, &qword_1006E62F8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_100573BA8();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1005739F8();

  sub_10001036C(v21, &qword_1006E62F0, &qword_1005857D0);
  *(v0 + 1024) = v24;
  sub_1005739E8();
  sub_100240384(&qword_1006E6300, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_10056E418();

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
  sub_10000CC8C(v0 + 352, v0 + 464, &qword_1006E6C28, &qword_10058DC30);
  sub_100009DCC(&qword_1006E6308, &qword_1005857D8);
  sub_100010BC0(&qword_1006E6310, &qword_1006E6308, &qword_1005857D8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_10056E518();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_10022B368;

  return v37(v0 + 128);
}

uint64_t sub_10022B368()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_10022B6D8;
  }

  else
  {
    v2 = sub_10022B47C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022B47C()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_10056E3B8();
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
  sub_10000CC8C(v0 + 800, v0 + 912, &qword_1006E6C28, &qword_10058DC30);
  v8 = sub_10056DF68();
  v9 = sub_100573448();
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
    sub_10001036C(v0 + 800, &qword_1006E6C28, &qword_10058DC30);
    v19 = sub_1000C9784(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100010474(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001036C(v0 + 800, &qword_1006E6C28, &qword_10058DC30);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10022B6D8()
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
  sub_10000CC8C(v0 + 576, v0 + 688, &qword_1006E6C28, &qword_10058DC30);
  swift_errorRetain();
  v8 = sub_10056DF68();
  v9 = sub_100573428();

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
    sub_10001036C(v0 + 576, &qword_1006E6C28, &qword_10058DC30);
    v17 = sub_1000C9784(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v18 = sub_100572978();
    v20 = sub_1000C9784(v18, v19, &v27);

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

    sub_10001036C(v0 + 576, &qword_1006E6C28, &qword_10058DC30);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10022B9C4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100009DCC(&qword_1006E62F0, &qword_1005857D0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_10056DF88();
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

  return _swift_task_switch(sub_10022BAF4, 0, 0);
}

uint64_t sub_10022BAF4()
{
  v39 = v0;
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_10000C49C(v3, qword_1006E62D8);
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
  sub_10000CC8C(v0 + 16, v0 + 240, &qword_1006E6C20, &unk_100586D80);
  v9 = sub_10056DF68();
  v10 = sub_100573448();
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
    sub_10001036C(v0 + 16, &qword_1006E6C20, &unk_100586D80);
    v20 = sub_1000C9784(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100010474(v16);
  }

  else
  {
    sub_10001036C(v0 + 16, &qword_1006E6C20, &unk_100586D80);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_1000D3B98(0, &qword_1006E62F8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_100573BA8();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1005739F8();

  sub_10001036C(v21, &qword_1006E62F0, &qword_1005857D0);
  *(v0 + 1024) = v24;
  sub_1005739E8();
  sub_100240384(&qword_1006E6300, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_10056E418();

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
  sub_10000CC8C(v0 + 352, v0 + 464, &qword_1006E6C20, &unk_100586D80);
  sub_100009DCC(&qword_1006E6308, &qword_1005857D8);
  sub_100010BC0(&qword_1006E6310, &qword_1006E6308, &qword_1005857D8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_10056E518();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_10022C01C;

  return v37(v0 + 128);
}

uint64_t sub_10022C01C()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_10022C38C;
  }

  else
  {
    v2 = sub_10022C130;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022C130()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_10056E3B8();
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
  sub_10000CC8C(v0 + 800, v0 + 912, &qword_1006E6C20, &unk_100586D80);
  v8 = sub_10056DF68();
  v9 = sub_100573448();
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
    sub_10001036C(v0 + 800, &qword_1006E6C20, &unk_100586D80);
    v19 = sub_1000C9784(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100010474(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001036C(v0 + 800, &qword_1006E6C20, &unk_100586D80);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10022C38C()
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
  sub_10000CC8C(v0 + 576, v0 + 688, &qword_1006E6C20, &unk_100586D80);
  swift_errorRetain();
  v8 = sub_10056DF68();
  v9 = sub_100573428();

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
    sub_10001036C(v0 + 576, &qword_1006E6C20, &unk_100586D80);
    v17 = sub_1000C9784(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v18 = sub_100572978();
    v20 = sub_1000C9784(v18, v19, &v27);

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

    sub_10001036C(v0 + 576, &qword_1006E6C20, &unk_100586D80);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10022C678(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_100009DCC(&qword_1006E62F0, &qword_1005857D0);
  *(v4 + 1048) = swift_task_alloc();
  v6 = sub_10056DF88();
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

  return _swift_task_switch(sub_10022C7A8, 0, 0);
}

uint64_t sub_10022C7A8()
{
  v39 = v0;
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1088);
  v2 = *(v0 + 1064);
  v3 = *(v0 + 1056);
  v4 = sub_10000C49C(v3, qword_1006E62D8);
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
  sub_10000CC8C(v0 + 16, v0 + 240, &qword_1006E6C18, &qword_10058DC80);
  v9 = sub_10056DF68();
  v10 = sub_100573448();
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
    sub_10001036C(v0 + 16, &qword_1006E6C18, &qword_10058DC80);
    v20 = sub_1000C9784(v17, v19, &v38);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: finishing…", v15, 0xCu);
    sub_100010474(v16);
  }

  else
  {
    sub_10001036C(v0 + 16, &qword_1006E6C18, &qword_10058DC80);
  }

  (*(v13 + 8))(v12, v14);
  v21 = *(v0 + 1048);
  sub_1000D3B98(0, &qword_1006E62F8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_100573BA8();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = sub_1005739F8();

  sub_10001036C(v21, &qword_1006E62F0, &qword_1005857D0);
  *(v0 + 1024) = v24;
  sub_1005739E8();
  sub_100240384(&qword_1006E6300, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_10056E418();

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
  sub_10000CC8C(v0 + 352, v0 + 464, &qword_1006E6C18, &qword_10058DC80);
  sub_100009DCC(&qword_1006E6308, &qword_1005857D8);
  sub_100010BC0(&qword_1006E6310, &qword_1006E6308, &qword_1005857D8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1120) = sub_10056E518();

  v37 = (v30 + *v30);
  v35 = swift_task_alloc();
  *(v0 + 1128) = v35;
  *v35 = v0;
  v35[1] = sub_10022CCD0;

  return v37(v0 + 128);
}

uint64_t sub_10022CCD0()
{
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v2 = sub_10022D040;
  }

  else
  {
    v2 = sub_10022CDE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022CDE4()
{
  v24 = v0;
  v1 = *(v0 + 1104);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1056);
  sub_10056E3B8();
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
  sub_10000CC8C(v0 + 800, v0 + 912, &qword_1006E6C18, &qword_10058DC80);
  v8 = sub_10056DF68();
  v9 = sub_100573448();
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
    sub_10001036C(v0 + 800, &qword_1006E6C18, &qword_10058DC80);
    v19 = sub_1000C9784(v16, v18, &v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v14, 0xCu);
    sub_100010474(v15);

    (*(v12 + 8))(v22, v13);
  }

  else
  {

    sub_10001036C(v0 + 800, &qword_1006E6C18, &qword_10058DC80);

    (*(v12 + 8))(v11, v13);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10022D040()
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
  sub_10000CC8C(v0 + 576, v0 + 688, &qword_1006E6C18, &qword_10058DC80);
  swift_errorRetain();
  v8 = sub_10056DF68();
  v9 = sub_100573428();

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
    sub_10001036C(v0 + 576, &qword_1006E6C18, &qword_10058DC80);
    v17 = sub_1000C9784(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v0 + 1040) = v10;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v18 = sub_100572978();
    v20 = sub_1000C9784(v18, v19, &v27);

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

    sub_10001036C(v0 + 576, &qword_1006E6C18, &qword_10058DC80);

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10022D32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 1064) = a4;
  sub_100009DCC(&qword_1006E62F0, &qword_1005857D0);
  *(v5 + 1072) = swift_task_alloc();
  v7 = sub_10056DF88();
  *(v5 + 1080) = v7;
  *(v5 + 1088) = *(v7 - 8);
  *(v5 + 1096) = swift_task_alloc();
  *(v5 + 1104) = swift_task_alloc();
  *(v5 + 1112) = swift_task_alloc();
  *(v5 + 1176) = a5;

  return _swift_task_switch(sub_10022D444, 0, 0);
}

uint64_t sub_10022D444()
{
  v32 = v0;
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1112);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1064);
  v5 = sub_10000C49C(v3, qword_1006E62D8);
  *(v0 + 1120) = v5;
  v6 = *(v2 + 16);
  *(v0 + 1128) = v6;
  *(v0 + 1136) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v3);
  sub_10000CC8C(v4, v0 + 16, &qword_1006E6F88, &qword_1005876D8);
  v7 = sub_10056DF68();
  v8 = sub_100573448();
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
    sub_10001036C(v0 + 16, &qword_1006E6F88, &qword_1005876D8);
    v16 = ActionType.rawValue.getter(v15);
    v18 = sub_1000C9784(v16, v17, &v31);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finishing…", v13, 0xCu);
    sub_100010474(v14);
  }

  else
  {
    sub_10001036C(v0 + 16, &qword_1006E6F88, &qword_1005876D8);
  }

  v19 = *(v11 + 8);
  v19(v10, v12);
  *(v0 + 1144) = v19;
  v20 = *(v0 + 1072);
  v21 = *(v0 + 1064);
  sub_1000D3B98(0, &qword_1006E62F8, NSTimer_ptr);
  v22 = [objc_opt_self() mainRunLoop];
  v23 = sub_100573BA8();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = sub_1005739F8();

  sub_10001036C(v20, &qword_1006E62F0, &qword_1005857D0);
  *(v0 + 1040) = v24;
  sub_1005739E8();
  sub_100240384(&qword_1006E6300, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v25 = sub_10056E418();

  *(v0 + 1048) = v25;
  sub_10000CC8C(v21, v0 + 272, &qword_1006E6F88, &qword_1005876D8);
  v26 = swift_allocObject();
  sub_100019B40(v0 + 272, v26 + 16, &qword_1006E6F88, &qword_1005876D8);
  sub_100009DCC(&qword_1006E6308, &qword_1005857D8);
  sub_100010BC0(&qword_1006E6310, &qword_1006E6308, &qword_1005857D8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 1152) = sub_10056E518();

  v30 = (*(v21 + 240) + **(v21 + 240));
  v27 = swift_task_alloc();
  *(v0 + 1160) = v27;
  *v27 = v0;
  v27[1] = sub_10022D92C;
  v28 = *(v0 + 1064);

  return v30(v28, v0 + 1176);
}

uint64_t sub_10022D92C()
{
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v2 = sub_10022DC90;
  }

  else
  {
    v2 = sub_10022DA40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022DA40()
{
  v23 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1104);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1064);
  sub_10056E3B8();
  v1(v3, v2, v4);
  sub_10000CC8C(v5, v0 + 784, &qword_1006E6F88, &qword_1005876D8);
  v6 = sub_10056DF68();
  v7 = sub_100573448();
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
    sub_10001036C(v0 + 784, &qword_1006E6F88, &qword_1005876D8);
    v15 = ActionType.rawValue.getter(v14);
    v17 = sub_1000C9784(v15, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: finish success", v12, 0xCu);
    sub_100010474(v13);

    v21(v20, v11);
  }

  else
  {
    sub_10001036C(v0 + 784, &qword_1006E6F88, &qword_1005876D8);

    v9(v10, v11);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10022DC90()
{
  v26 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1064);

  v1(v3, v2, v4);
  sub_10000CC8C(v5, v0 + 528, &qword_1006E6F88, &qword_1005876D8);
  swift_errorRetain();
  v6 = sub_10056DF68();
  v7 = sub_100573428();

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
    sub_10001036C(v0 + 528, &qword_1006E6F88, &qword_1005876D8);
    v12 = ActionType.rawValue.getter(v11);
    v14 = sub_1000C9784(v12, v13, &v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 1056) = v8;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v15 = sub_100572978();
    v17 = sub_1000C9784(v15, v16, &v25);

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
    sub_10001036C(v0 + 528, &qword_1006E6F88, &qword_1005876D8);

    v18(v19, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10022DF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_100009DCC(&qword_1006E62F0, &qword_1005857D0);
  v4[6] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E6D10, &unk_10058DB60);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v7 = sub_10056DF88();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_10022E108, 0, 0);
}

uint64_t sub_10022E108()
{
  v37 = v0;
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[5];
  v6 = sub_10000C49C(v2, qword_1006E62D8);
  v0[19] = v6;
  v7 = *(v3 + 16);
  v0[20] = v7;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v2);
  sub_10000CC8C(v5, v4, &qword_1006E6D10, &unk_10058DB60);
  v8 = sub_10056DF68();
  v9 = sub_100573448();
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
    sub_10001036C(v14, &qword_1006E6D10, &unk_10058DB60);
    v18 = ActionType.rawValue.getter(v15);
    v20 = sub_1000C9784(v18, v19, &v36);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finishing…", v16, 0xCu);
    sub_100010474(v17);
  }

  else
  {
    sub_10001036C(v0[13], &qword_1006E6D10, &unk_10058DB60);
  }

  (*(v13 + 8))(v11, v12);
  v21 = v0[12];
  v22 = v0[8];
  v23 = v0[6];
  v24 = v0[7];
  v25 = v0[5];
  sub_1000D3B98(0, &qword_1006E62F8, NSTimer_ptr);
  v26 = [objc_opt_self() mainRunLoop];
  v27 = sub_100573BA8();
  (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
  v28 = sub_1005739F8();

  sub_10001036C(v23, &qword_1006E62F0, &qword_1005857D0);
  v0[2] = v28;
  sub_1005739E8();
  sub_100240384(&qword_1006E6300, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v29 = sub_10056E418();

  v0[3] = v29;
  sub_10000CC8C(v25, v21, &qword_1006E6D10, &unk_10058DB60);
  v30 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v31 = swift_allocObject();
  sub_100019B40(v21, v31 + v30, &qword_1006E6D10, &unk_10058DB60);
  sub_100009DCC(&qword_1006E6308, &qword_1005857D8);
  sub_100010BC0(&qword_1006E6310, &qword_1006E6308, &qword_1005857D8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  v0[22] = sub_10056E518();

  v35 = (*(v25 + *(v24 + 52)) + **(v25 + *(v24 + 52)));
  v32 = swift_task_alloc();
  v0[23] = v32;
  *v32 = v0;
  v32[1] = sub_10022E60C;
  v33 = v0[5];

  return v35(v33);
}

uint64_t sub_10022E60C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_10022E980;
  }

  else
  {
    v2 = sub_10022E720;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022E720()
{
  v24 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[5];
  sub_10056E3B8();
  v2(v3, v1, v4);
  sub_10000CC8C(v6, v5, &qword_1006E6D10, &unk_10058DB60);
  v7 = sub_10056DF68();
  v8 = sub_100573448();
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
    sub_10001036C(v13, &qword_1006E6D10, &unk_10058DB60);
    v17 = ActionType.rawValue.getter(v14);
    v19 = sub_1000C9784(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: finish success", v15, 0xCu);
    sub_100010474(v16);

    (*(v11 + 8))(v22, v12);
  }

  else
  {
    sub_10001036C(v0[11], &qword_1006E6D10, &unk_10058DB60);

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_10022E980()
{
  v28 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[5];

  v2(v3, v1, v4);
  sub_10000CC8C(v6, v5, &qword_1006E6D10, &unk_10058DB60);
  swift_errorRetain();
  v7 = sub_10056DF68();
  v8 = sub_100573428();

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
    sub_10001036C(v12, &qword_1006E6D10, &unk_10058DB60);
    v15 = ActionType.rawValue.getter(v13);
    v17 = sub_1000C9784(v15, v16, &v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v0[4] = v9;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    v18 = sub_100572978();
    v20 = sub_1000C9784(v18, v19, &v27);

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
    sub_10001036C(v0[10], &qword_1006E6D10, &unk_10058DB60);

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_10022EC74(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_10056DF88();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v9 = sub_10000C49C(v5, qword_1006E62D8);
  (*(v6 + 16))(v8, v9, v5);
  sub_10000CC8C(a2, v21, &qword_1006E6B88, &qword_10058DE10);
  v10 = sub_10056DF68();
  v11 = sub_100573448();
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
    sub_10001036C(a2, &qword_1006E6B88, &qword_10058DE10);
    v18 = sub_1000C9784(v15, v17, v21);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, v20, v13, 0xCu);
    sub_100010474(v14);
  }

  else
  {
    sub_10001036C(a2, &qword_1006E6B88, &qword_10058DE10);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10022EED0(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_10056DF88();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v9 = sub_10000C49C(v5, qword_1006E62D8);
  (*(v6 + 16))(v8, v9, v5);
  sub_10000CC8C(a2, v22, &qword_1006E6C50, &qword_100586DD0);
  v10 = sub_10056DF68();
  v11 = sub_100573448();
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
    sub_10001036C(a2, &qword_1006E6C50, &qword_100586DD0);
    v18 = sub_1000C9784(v15, v17, v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, v21, v13, 0xCu);
    sub_100010474(v14);
  }

  else
  {
    sub_10001036C(a2, &qword_1006E6C50, &qword_100586DD0);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10022F12C(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = sub_10056DF88();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006E4C70 != -1)
  {
    swift_once();
  }

  v9 = sub_10000C49C(v5, qword_1006E62D8);
  (*(v6 + 16))(v8, v9, v5);
  sub_10000CC8C(a2, v23, &qword_1006E6F88, &qword_1005876D8);
  v10 = sub_10056DF68();
  v11 = sub_100573448();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    v15 = v23[192];
    sub_10001036C(v23, &qword_1006E6F88, &qword_1005876D8);
    v16 = ActionType.rawValue.getter(v15);
    v18 = sub_1000C9784(v16, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, v21, v13, 0xCu);
    sub_100010474(v14);
  }

  else
  {
    sub_10001036C(v23, &qword_1006E6F88, &qword_1005876D8);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10022F384(uint64_t a1, char a2)
{
  type metadata accessor for Notice(0);
  __chkstk_darwin();
  v5 = (&v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_100240850(v5, type metadata accessor for Notice);
  }

  v7 = Strong;
  sub_1002EECF0(v12);

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    sub_10000C8CC(v12, v13);
    (*(v9 + 8))(v5, a2 & 1, v8, v9);
    sub_100240850(v5, type metadata accessor for Notice);
    return sub_100010474(v12);
  }

  else
  {
    sub_100240850(v5, type metadata accessor for Notice);
    return sub_10001036C(v12, &qword_1006E6C10, &qword_100586D40);
  }
}

Swift::Int NSFileManager.Failure.hashValue.getter()
{
  sub_100574678();
  sub_100574688(0);
  return sub_1005746C8();
}

Swift::Int sub_10022F554(uint64_t a1)
{
  sub_100574678();
  sub_100574688(0);
  return sub_1005746C8();
}

uint64_t MusicLibrary.ActionableState.description.getter(uint64_t a1, unsigned __int16 a2)
{
  sub_10056CC38();
  __chkstk_darwin();
  v4 = *(sub_100009DCC(&qword_1006E9B80, &unk_10058D870) - 8);
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
      sub_100572A98(v11);

      return v20;
    }

    v14 = 0xD000000000000016;
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_100573ED8(29);

    v20 = 0xD00000000000001BLL;
    v21 = 0x80000001005B28B0;
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
        sub_100009DCC(&unk_1006EB090, &qword_100587FB0);
        v23._countAndFlagsBits = sub_100572978();
        sub_100572A98(v23);

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
    sub_100573ED8(24);

    v20 = 0x1000000000000014;
    v21 = 0x80000001005B2830;
    v18[1] = a1;
    sub_10056CB68();
    sub_10022FA10();
    sub_10056C778();
    sub_100010BC0(&qword_1006E9B90, &qword_1006E9B80, &unk_10058D870, &protocol conformance descriptor for FloatingPointFormatStyle<A>.Percent);
    sub_100572678();
    (*(v4 + 8))(v7, v16);
    sub_100572A98(v19);

    v22._countAndFlagsBits = 8233;
    v22._object = 0xE200000000000000;
    sub_100572A98(v22);
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

unint64_t sub_10022FA10()
{
  result = qword_1006E9B88;
  if (!qword_1006E9B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E9B88);
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
  v11 = sub_100572128();
  *(v9 + 1512) = v11;
  *(v9 + 1520) = *(v11 - 8);
  *(v9 + 1528) = swift_task_alloc();
  *(v9 + 1536) = sub_100009DCC(&qword_1006E7368, &qword_100587F98);
  *(v9 + 1544) = swift_task_alloc();
  sub_100009DCC(&qword_1006E7238, &unk_10058D890);
  *(v9 + 1552) = swift_task_alloc();
  *(v9 + 1560) = swift_task_alloc();
  *(v9 + 1568) = swift_task_alloc();
  sub_100009DCC(&qword_1006E8BE0, &qword_1005889B0);
  *(v9 + 1576) = swift_task_alloc();
  v12 = sub_1005722D8();
  *(v9 + 1584) = v12;
  *(v9 + 1592) = *(v12 - 8);
  *(v9 + 1600) = swift_task_alloc();
  v13 = sub_1005715C8();
  *(v9 + 1608) = v13;
  *(v9 + 1616) = *(v13 - 8);
  *(v9 + 1624) = swift_task_alloc();
  *(v9 + 1632) = swift_task_alloc();
  *(v9 + 1640) = swift_task_alloc();
  sub_100009DCC(&qword_1006E6B80, &unk_100586B90);
  *(v9 + 1648) = swift_task_alloc();
  sub_100009DCC(&qword_1006E6428, &unk_100585DF0);
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
  sub_100009DCC(&qword_1006E5D10, &unk_100583A20);
  *(v9 + 1744) = swift_task_alloc();
  *(v9 + 1752) = swift_task_alloc();
  *(v9 + 1760) = swift_task_alloc();
  *(v9 + 1768) = type metadata accessor for Notice.Variant(0);
  *(v9 + 1776) = swift_task_alloc();
  v14 = sub_10056CAE8();
  *(v9 + 1784) = v14;
  *(v9 + 1792) = *(v14 - 8);
  *(v9 + 1800) = swift_task_alloc();
  sub_10056CC38();
  *(v9 + 1808) = swift_task_alloc();
  v15 = sub_100572888();
  *(v9 + 1816) = v15;
  *(v9 + 1824) = *(v15 - 8);
  *(v9 + 1832) = swift_task_alloc();
  *(v9 + 1840) = swift_task_alloc();
  v16 = sub_1005717B8();
  *(v9 + 1848) = v16;
  *(v9 + 1856) = *(v16 - 8);
  *(v9 + 1864) = swift_task_alloc();
  *(v9 + 1872) = swift_task_alloc();
  *(v9 + 1880) = swift_task_alloc();
  v17 = sub_1005715D8();
  *(v9 + 1888) = v17;
  *(v9 + 1896) = *(v17 - 8);
  *(v9 + 1904) = swift_task_alloc();
  *(v9 + 1912) = swift_task_alloc();
  v18 = sub_1005717C8();
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
  *(v9 + 2008) = sub_100572F08();
  *(v9 + 2016) = sub_100572EF8();
  v21 = sub_100572E78();
  *(v9 + 2024) = v21;
  *(v9 + 2032) = v20;

  return _swift_task_switch(sub_1002301C4, v21, v20);
}

uint64_t sub_1002301C4()
{
  v553 = v0;
  if (qword_1006E4EF0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2000);
  v2 = *(v0 + 1960);
  v3 = *(v0 + 1952);
  v4 = *(v0 + 1440);
  v518 = sub_10056DF88();
  *(v0 + 2040) = sub_10000C49C(v518, static Logger.libraryActionableState);
  v5 = *(v2 + 16);
  *(v0 + 2048) = v5;
  *(v0 + 2056) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  (v5)(v1, v4, v3);
  v6 = sub_10056DF68();
  v7 = sub_100573448();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 2000);
  v524 = v5;
  if (v8)
  {
    v10 = *(v0 + 1992);
    v11 = *(v0 + 1960);
    v12 = *(v0 + 1952);
    v13 = swift_slowAlloc();
    v514 = v0;
    v14 = swift_slowAlloc();
    v552[0] = v14;
    *v13 = 136446210;
    (v5)(v10, v9, v12);
    v15 = sub_100572978();
    v17 = v16;
    (*(v11 + 8))(v9, v12);
    v18 = sub_1000C9784(v15, v17, v552);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "╭ Performing action for item: %{public}s", v13, 0xCu);
    sub_100010474(v14);
    v0 = v514;
  }

  else
  {
    v19 = *(v0 + 1960);
    v20 = *(v0 + 1952);

    (*(v19 + 8))(v9, v20);
  }

  v21 = sub_10056DF68();
  v22 = sub_100573448();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 1432);
    v24 = *(v0 + 1402);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v552[0] = v26;
    *v25 = 136446210;
    v27 = MusicLibrary.ActionableState.description.getter(v23, v24);
    v29 = sub_1000C9784(v27, v28, v552);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "| Actionable state: %{public}s", v25, 0xCu);
    sub_100010474(v26);
  }

  v30 = sub_10056DF68();
  v31 = sub_100573448();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v0 + 1944);
    v33 = *(v0 + 1928);
    v34 = *(v0 + 1920);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v552[0] = v36;
    *v35 = 136446210;
    sub_100571838();
    sub_100240384(&qword_1006E9BA0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
    v37 = sub_100574408();
    v39 = v38;
    (*(v33 + 8))(v32, v34);
    v40 = sub_1000C9784(v37, v39, v552);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v30, v31, "| Add status: %{public}s", v35, 0xCu);
    sub_100010474(v36);
  }

  v41 = sub_10056DF68();
  v42 = sub_100573448();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = *(v0 + 1912);
    v44 = *(v0 + 1896);
    v45 = *(v0 + 1888);
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v552[0] = v47;
    *v46 = 136446210;
    sub_1005717E8();
    sub_100240384(&qword_1006E9BA8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
    v48 = sub_100574408();
    v50 = v49;
    (*(v44 + 8))(v43, v45);
    v51 = sub_1000C9784(v48, v50, v552);

    *(v46 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v41, v42, "| Download status: %{public}s", v46, 0xCu);
    sub_100010474(v47);
  }

  v52 = sub_10056DF68();
  v53 = sub_100573448();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v552[0] = swift_slowAlloc();
    *v54 = 136446466;
    v55 = sub_100571718();
    v57 = sub_1000C9784(v55, v56, v552);

    *(v54 + 4) = v57;
    *(v54 + 12) = 2082;
    v58 = sub_1005716E8();
    v60 = sub_1000C9784(v58, v59, v552);

    *(v54 + 14) = v60;
    _os_log_impl(&_mh_execute_header, v52, v53, "| Library: %{public}s (%{public}s)", v54, 0x16u);
    swift_arrayDestroy();
  }

  v61 = *(v0 + 1402);
  if (v61 >> 14)
  {
    if (v61 >> 14 == 1)
    {
      if ((v61 & 0x100) == 0)
      {
        v62 = sub_10056DF68();
        v63 = sub_100573448();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&_mh_execute_header, v62, v63, "|—● Cancelling download", v64, 2u);
        }

        v65 = swift_task_alloc();
        *(v0 + 2184) = v65;
        *v65 = v0;
        v65[1] = sub_100234EA8;
        v66 = *(v0 + 1952);
        v67 = *(v0 + 1488);
        v68 = *(v0 + 1440);

        return MusicLibrary.cancelDownload<A>(_:)(v68, v66, v67);
      }

      v113 = sub_10056DF68();
      v114 = sub_100573448();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&_mh_execute_header, v113, v114, "|—● Download is paused: Checking for reasons…", v115, 2u);
      }

      v116 = *(v0 + 1904);
      v117 = *(v0 + 1896);
      v118 = *(v0 + 1888);

      sub_1005717E8();
      v119 = (*(v117 + 88))(v116, v118);
      v120 = *(v0 + 1904);
      v121 = *(v0 + 1896);
      v122 = *(v0 + 1888);
      if (v119 == enum case for MusicLibrary.DownloadStatus.paused(_:))
      {
        v123 = *(v0 + 1640);
        v124 = *(v0 + 1616);
        v125 = *(v0 + 1608);
        (*(v121 + 96))(*(v0 + 1904), v122);
        (*(v124 + 32))(v123, v120, v125);
        MusicLibrary.DownloadStatus.DownloadPauseReasons.alert.getter((v0 + 1120));
        v126 = *(v0 + 1176);
        v127 = *(v0 + 1640);
        v128 = *(v0 + 1616);
        v129 = *(v0 + 1608);
        if (v126)
        {
          v130 = *(v0 + 1632);
          v131 = *(v0 + 1184);
          v132 = *(v0 + 1136);
          *(v0 + 1048) = *(v0 + 1120);
          *(v0 + 1064) = v132;
          *(v0 + 1080) = *(v0 + 1152);
          *(v0 + 1096) = *(v0 + 1168);
          *(v0 + 1104) = v126;
          *(v0 + 1112) = v131;
          (*(v128 + 16))(v130, v127, v129);
          v133 = sub_10056DF68();
          v134 = sub_100573448();
          v135 = os_log_type_enabled(v133, v134);
          v136 = *(v0 + 1632);
          v137 = *(v0 + 1616);
          v138 = *(v0 + 1608);
          if (v135)
          {
            v531 = swift_slowAlloc();
            v538 = swift_slowAlloc();
            v552[0] = v538;
            *v531 = 136446210;
            sub_100240384(&qword_1006E9BB0, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons, &protocol conformance descriptor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
            v526 = v134;
            v139 = sub_100574408();
            v141 = v140;
            v519 = v133;
            v142 = *(v137 + 8);
            v142(v136, v138);
            v143 = v142;
            v144 = sub_1000C9784(v139, v141, v552);

            *(v531 + 4) = v144;
            _os_log_impl(&_mh_execute_header, v519, v526, "|—| Showing alert for reason: %{public}s", v531, 0xCu);
            sub_100010474(v538);
          }

          else
          {

            v448 = *(v137 + 8);
            v448(v136, v138);
            v143 = v448;
          }

          v449 = *(v0 + 1640);
          v450 = *(v0 + 1608);
          v451 = sub_10017F500((v0 + 1048), 0, 1);
          PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v451, *(v0 + 1080), 1, 0, 0);

          sub_10001036C(v0 + 1120, &qword_1006E7A90, &qword_10058D8D0);
          v143(v449, v450);
        }

        else
        {
          (*(v128 + 16))(*(v0 + 1624), v127, v129);
          v401 = sub_10056DF68();
          v402 = sub_100573428();
          v403 = os_log_type_enabled(v401, v402);
          v404 = *(v0 + 1640);
          v405 = *(v0 + 1624);
          v406 = *(v0 + 1616);
          v407 = *(v0 + 1608);
          if (v403)
          {
            v547 = *(v0 + 1640);
            v408 = swift_slowAlloc();
            v535 = swift_slowAlloc();
            v552[0] = v535;
            *v408 = 136446210;
            sub_100240384(&qword_1006E9BB0, &type metadata accessor for MusicLibrary.DownloadStatus.DownloadPauseReasons, &protocol conformance descriptor for MusicLibrary.DownloadStatus.DownloadPauseReasons);
            v409 = sub_100574408();
            v411 = v410;
            v412 = *(v406 + 8);
            v412(v405, v407);
            v413 = sub_1000C9784(v409, v411, v552);

            *(v408 + 4) = v413;
            _os_log_impl(&_mh_execute_header, v401, v402, "|—| Unhandled alert for reason: %{public}s", v408, 0xCu);
            sub_100010474(v535);

            v412(v547, v407);
          }

          else
          {

            v460 = *(v406 + 8);
            v460(v405, v407);
            v460(v404, v407);
          }
        }
      }

      else
      {
        v239 = *(v121 + 8);
        v239(*(v0 + 1904), v122);

        v240 = sub_10056DF68();
        v241 = sub_100573448();

        if (os_log_type_enabled(v240, v241))
        {
          v242 = *(v0 + 1912);
          v243 = *(v0 + 1888);
          v244 = swift_slowAlloc();
          v542 = swift_slowAlloc();
          v552[0] = v542;
          *v244 = 136446210;
          sub_1005717E8();
          sub_100240384(&qword_1006E9BA8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
          v245 = sub_100574408();
          v247 = v246;
          v239(v242, v243);
          v248 = sub_1000C9784(v245, v247, v552);

          *(v244 + 4) = v248;
          _os_log_impl(&_mh_execute_header, v240, v241, "|—| No reasons found, download status does not match UI state %{public}s", v244, 0xCu);
          sub_100010474(v542);
        }
      }

      goto LABEL_145;
    }

    v96 = *(v0 + 1432);
    if (v96 | v61 ^ 0x8000)
    {
      if (*(v0 + 1402) == 0x8000 && v96 == 1)
      {
        v98 = sub_10056DF68();
        v99 = sub_100573448();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          *v100 = 0;
          _os_log_impl(&_mh_execute_header, v98, v99, "|—● Triggering download", v100, 2u);
        }

        v101 = *(v0 + 1992);
        v102 = *(v0 + 1952);
        v103 = *(v0 + 1648);
        v104 = *(v0 + 1504);
        v105 = *(v0 + 1496);
        v536 = *(v0 + 1488);
        v106 = *(v0 + 1480);
        v107 = *(v0 + 1456);
        v108 = *(v0 + 1440);

        (v524)(v101, v108, v102);
        sub_1000FEAFC(v107, v0 + 688);
        sub_10023F718(v106, v103);
        v109 = type metadata accessor for Actions.MetricsReportingContext(0);
        (*(*(v109 - 8) + 56))(v103, 0, 1, v109);
        v110 = *(v104 + class metadata base offset for MusicLibrary.ItemState + 8);

        Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v101, v105, v0 + 688, v103, v102, v536, v110, &v549);
        *(v0 + 2144) = *(&v549 + 1);
        *(v0 + 2152) = *(&v550 + 1);
        *(v0 + 2160) = *(&v551 + 1);
        v111 = v550;
        *(v0 + 384) = v549;
        *(v0 + 400) = v111;
        *(v0 + 416) = v551;
        *(v0 + 432) = 1;
        *(v0 + 440) = sub_1001024FC;
        *(v0 + 448) = 0;
        *(v0 + 456) = 0x4014000000000000;
        *(v0 + 464) = &unk_100587748;
        v537 = sub_10020D1BC;
        *(v0 + 472) = 0;
        *(v0 + 480) = &unk_100587750;
        *(v0 + 488) = 0;

        v112 = swift_task_alloc();
        *(v0 + 2168) = v112;
        *v112 = v0;
        v112[1] = sub_100234A0C;
        goto LABEL_36;
      }

      v215 = sub_10056DF68();
      v216 = sub_100573448();
      if (os_log_type_enabled(v215, v216))
      {
        v218 = swift_slowAlloc();
        *v218 = 0;
        _os_log_impl(&_mh_execute_header, v215, v216, "|—● Is Downloaded: Prompting for delete/remove alert", v218, 2u);
      }

      v219 = *(v0 + 1984);
      v220 = *(v0 + 1952);
      v221 = *(v0 + 1592);
      v222 = *(v0 + 1440);

      (v524)(v219, v222, v220);
      v223 = swift_dynamicCast();
      v224 = *(v221 + 56);
      if ((v223 & 1) == 0)
      {
        v359 = *(v0 + 1576);
        v224(v359, 1, 1, *(v0 + 1584));
        sub_10001036C(v359, &qword_1006E8BE0, &qword_1005889B0);
        v238 = v524;
LABEL_134:
        v437 = *(v0 + 1992);
        v438 = *(v0 + 1952);
        v439 = *(v0 + 1648);
        v440 = *(v0 + 1504);
        v441 = *(v0 + 1488);
        v442 = *(v0 + 1480);
        v443 = *(v0 + 1456);
        (v238)(v437, *(v0 + 1440), v438);
        sub_1000FEAFC(v443, v0 + 496);
        sub_10023F718(v442, v439);
        v444 = type metadata accessor for Actions.MetricsReportingContext(0);
        (*(*(v444 - 8) + 56))(v439, 0, 1, v444);
        sub_100571898();
        v445 = sub_100571888();
        Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v437, v445, v0 + 496, v439, v438, v441, *(v440 + class metadata base offset for MusicLibrary.ItemState + 8), (v0 + 16));
        v446 = swift_allocObject();
        *(v446 + 16) = &unk_1005873F0;
        *(v446 + 24) = 0;
        *(v0 + 208) = 51;
        *(v0 + 224) = 0;
        *(v0 + 232) = 0x403E000000000000;
        *(v0 + 216) = sub_1001185CC;
        *(v0 + 240) = &unk_100587408;
        *(v0 + 248) = v446;
        *(v0 + 256) = &unk_1005873F8;
        *(v0 + 264) = 0;
        v447 = swift_task_alloc();
        *(v0 + 2216) = v447;
        *v447 = v0;
        v447[1] = sub_1002357A4;

        return sub_10021CBD8(0);
      }

      v225 = *(v0 + 1600);
      v226 = *(v0 + 1592);
      v227 = *(v0 + 1584);
      v228 = *(v0 + 1576);
      v522 = *(v0 + 1568);
      v229 = *(v0 + 1560);
      v230 = *(v0 + 1544);
      v541 = *(v0 + 1536);
      v231 = *(v0 + 1520);
      v232 = *(v0 + 1512);
      v224(v228, 0, 1, v227);
      (*(v226 + 32))(v225, v228, v227);
      v233 = v230;
      sub_100572148();
      (*(v231 + 104))(v229, enum case for Playlist.Variant.favoriteSongs(_:), v232);
      (*(v231 + 56))(v229, 0, 1, v232);
      v234 = *(v541 + 12);
      sub_10000CC8C(v522, v230, &qword_1006E7238, &unk_10058D890);
      sub_10000CC8C(v229, v230 + v234, &qword_1006E7238, &unk_10058D890);
      v235 = *(v231 + 48);
      if (v235(v233, 1, v232) == 1)
      {
        v236 = *(v0 + 1568);
        v237 = *(v0 + 1512);
        sub_10001036C(*(v0 + 1560), &qword_1006E7238, &unk_10058D890);
        sub_10001036C(v236, &qword_1006E7238, &unk_10058D890);
        if (v235(v233 + v234, 1, v237) == 1)
        {
          sub_10001036C(*(v0 + 1544), &qword_1006E7238, &unk_10058D890);
          v238 = v524;
LABEL_152:
          v466 = *(v0 + 1992);
          v467 = *(v0 + 1952);
          v468 = *(v0 + 1648);
          v469 = *(v0 + 1504);
          v470 = *(v0 + 1488);
          v471 = *(v0 + 1480);
          v472 = *(v0 + 1456);
          (v238)(v466, *(v0 + 1440), v467);
          sub_1000FEAFC(v472, v0 + 592);
          sub_10023F718(v471, v468);
          v473 = type metadata accessor for Actions.MetricsReportingContext(0);
          (*(*(v473 - 8) + 56))(v468, 0, 1, v473);
          sub_100571898();
          v474 = sub_100571888();
          Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(v466, v474, 1, v0 + 592, v468, v467, v470, *(v469 + class metadata base offset for MusicLibrary.ItemState + 8), (v0 + 272));
          *(v0 + 320) = 48;
          *(v0 + 328) = sub_1001024FC;
          *(v0 + 336) = 0;
          *(v0 + 344) = 0x4014000000000000;
          *(v0 + 352) = &unk_100587AB0;
          v537 = sub_10020E69C;
          *(v0 + 360) = 0;
          *(v0 + 368) = &unk_100587AB8;
          *(v0 + 376) = 0;
          v475 = swift_task_alloc();
          *(v0 + 2200) = v475;
          *v475 = v0;
          v475[1] = sub_100235308;
LABEL_36:

          return v537();
        }
      }

      else
      {
        v430 = *(v0 + 1512);
        sub_10000CC8C(*(v0 + 1544), *(v0 + 1552), &qword_1006E7238, &unk_10058D890);
        v431 = v235(v233 + v234, 1, v430);
        v432 = *(v0 + 1568);
        v433 = *(v0 + 1560);
        v434 = *(v0 + 1552);
        if (v431 != 1)
        {
          v548 = *(v0 + 1544);
          v461 = *(v0 + 1528);
          v462 = *(v0 + 1520);
          v463 = *(v0 + 1512);
          (*(v462 + 32))(v461, v233 + v234, v463);
          sub_100240384(&qword_1006E8480, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
          v464 = sub_1005727E8();
          v465 = *(v462 + 8);
          v465(v461, v463);
          sub_10001036C(v433, &qword_1006E7238, &unk_10058D890);
          sub_10001036C(v432, &qword_1006E7238, &unk_10058D890);
          v465(v434, v463);
          sub_10001036C(v548, &qword_1006E7238, &unk_10058D890);
          v238 = v524;
          if (v464)
          {
            goto LABEL_152;
          }

          goto LABEL_133;
        }

        v435 = *(v0 + 1520);
        v436 = *(v0 + 1512);
        sub_10001036C(*(v0 + 1560), &qword_1006E7238, &unk_10058D890);
        sub_10001036C(v432, &qword_1006E7238, &unk_10058D890);
        (*(v435 + 8))(v434, v436);
      }

      sub_10001036C(*(v0 + 1544), &qword_1006E7368, &qword_100587F98);
      v238 = v524;
LABEL_133:
      (*(*(v0 + 1592) + 8))(*(v0 + 1600), *(v0 + 1584));
      goto LABEL_134;
    }

    v178 = sub_10056DF68();
    v179 = sub_100573448();
    if (os_log_type_enabled(v178, v179))
    {
      v180 = swift_slowAlloc();
      *v180 = 0;
      _os_log_impl(&_mh_execute_header, v178, v179, "|—● Nothing to Perform: Actionable State is unknown", v180, 2u);
    }

    sub_10023F6C4();
    v181 = swift_allocError();
    swift_willThrow();
    goto LABEL_54;
  }

  v69 = *(v0 + 1936);
  v70 = *(v0 + 1928);
  v71 = *(v0 + 1920);
  sub_100571838();
  if ((*(v70 + 88))(v69, v71) == enum case for MusicLibrary.AddStatus.unaddable(_:))
  {
    v72 = *(v0 + 1936);
    v73 = *(v0 + 1880);
    v74 = *(v0 + 1856);
    v75 = *(v0 + 1848);
    (*(*(v0 + 1928) + 96))(v72, *(v0 + 1920));
    (*(v74 + 32))(v73, v72, v75);
    v76 = sub_10056DF68();
    v77 = sub_100573448();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "|—● Unaddable", v78, 2u);
    }

    v79 = *(v0 + 1880);
    v80 = *(v0 + 1872);
    v81 = *(v0 + 1856);
    v82 = *(v0 + 1848);

    v83 = *(v81 + 16);
    v83(v80, v79, v82);
    v84 = sub_10056DF68();
    v85 = sub_100573448();
    v86 = os_log_type_enabled(v84, v85);
    v87 = *(v0 + 1872);
    v88 = *(v0 + 1856);
    v89 = *(v0 + 1848);
    if (v86)
    {
      v530 = v83;
      v90 = swift_slowAlloc();
      v525 = swift_slowAlloc();
      v552[0] = v525;
      *v90 = 136446210;
      sub_100240384(&qword_1006E6D68, &type metadata accessor for MusicLibrary.AddStatus.UnaddableReason, &protocol conformance descriptor for MusicLibrary.AddStatus.UnaddableReason);
      v515 = v85;
      v91 = sub_100574408();
      v93 = v92;
      v94 = *(v88 + 8);
      (v94)(v87, v89);
      v95 = sub_1000C9784(v91, v93, v552);

      *(v90 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v84, v515, "|—| Reason: %{public}s", v90, 0xCu);
      sub_100010474(v525);

      v83 = v530;
    }

    else
    {

      v94 = *(v88 + 8);
      (v94)(v87, v89);
    }

    v543 = v94;
    *(v0 + 2064) = v94;
    v249 = *(v0 + 1864);
    v250 = *(v0 + 1856);
    v251 = *(v0 + 1848);
    v83(v249, *(v0 + 1880), v251);
    v252 = (*(v250 + 88))(v249, v251);
    if (v252 == enum case for MusicLibrary.AddStatus.UnaddableReason.allExplicitContentRestricted(_:))
    {

      v253 = sub_10056DF68();
      v254 = sub_100573448();
      if (os_log_type_enabled(v253, v254))
      {
        v255 = swift_slowAlloc();
        *v255 = 0;
        _os_log_impl(&_mh_execute_header, v253, v254, "|—| Presenting Explicit Restriction alert", v255, 2u);
      }

      v256 = *(v0 + 1456);

      sub_1001CAB6C(0, v0 + 1192);
      v257 = sub_10017F500((v0 + 1192), 0, 1);
      v258 = v257;
      v259 = *(v0 + 1224);
      v260 = *(v256 + 80);
      if (v260)
      {
        v261 = *(v256 + 88);
        v262 = qword_1006E4FE8;

        if (v262 != -1)
        {
          swift_once();
        }

        sub_10000C49C(v518, qword_1006ECA00);
        v263 = sub_10056DF68();
        v264 = sub_100573448();
        if (os_log_type_enabled(v263, v264))
        {
          v265 = swift_slowAlloc();
          *v265 = 0;
          _os_log_impl(&_mh_execute_header, v263, v264, "Deferring presentation…", v265, 2u);
        }

        v532 = *(v0 + 1880);
        v266 = *(v0 + 1848);
        v267 = *(v0 + 1456);

        v268 = objc_allocWithZone(MSVBlockGuard);
        *(v0 + 1344) = sub_1002EC584;
        *(v0 + 1352) = 0;
        *(v0 + 1312) = _NSConcreteStackBlock;
        *(v0 + 1320) = 1107296256;
        *(v0 + 1328) = sub_1002ED584;
        *(v0 + 1336) = &unk_100692A28;
        v269 = _Block_copy((v0 + 1312));
        v270 = [v268 initWithTimeout:v269 interruptionHandler:10.0];
        _Block_release(v269);

        sub_1000FEAFC(v267, v0 + 880);
        v271 = swift_allocObject();
        *(v271 + 16) = v270;
        sub_1000FF9D0(v0 + 880, v271 + 24);
        *(v271 + 120) = v258;
        *(v271 + 128) = v259;
        *(v271 + 129) = 1;
        *(v271 + 136) = 0;
        *(v271 + 144) = 0;
        v272 = v270;
        v273 = v258;
        v260(v267, v273, sub_100112BB0, v271);
        sub_1000F3E14(v260, v261);

        sub_100109250(v0 + 1192);
        v274 = v532;
        v275 = v266;
        goto LABEL_144;
      }

      v414 = *(v0 + 1880);
      v415 = *(v0 + 1848);
      sub_1002EAA64(v257, *(v0 + 1224), 1, 0, 0);

      sub_100109250(v0 + 1192);
      v274 = v414;
LABEL_143:
      v275 = v415;
LABEL_144:
      (v543)(v274, v275);
LABEL_145:
      v456 = sub_10056DF68();
      v457 = sub_100573448();
      if (os_log_type_enabled(v456, v457))
      {
        v458 = swift_slowAlloc();
        *v458 = 0;
        _os_log_impl(&_mh_execute_header, v456, v457, "╰ ✅ Succeeded", v458, 2u);
      }

      v459 = *(v0 + 8);

      return v459();
    }

    if (v252 != enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryRequired(_:))
    {
      if (v252 == enum case for MusicLibrary.AddStatus.UnaddableReason.cloudLibraryInitialImport(_:))
      {

        v360 = sub_10056DF68();
        v361 = sub_100573448();
        if (os_log_type_enabled(v360, v361))
        {
          v362 = swift_slowAlloc();
          *v362 = 0;
          _os_log_impl(&_mh_execute_header, v360, v361, "|—| Presenting library import in progress alert", v362, 2u);
        }

        v363 = *(v0 + 1840);
        v364 = *(v0 + 1832);
        v365 = *(v0 + 1824);
        v366 = *(v0 + 1816);

        sub_100572818();
        v509 = *(v365 + 16);
        v509(v364, v363, v366);
        if (qword_1006E4C60 != -1)
        {
          swift_once();
        }

        v367 = *(v0 + 1840);
        v368 = *(v0 + 1832);
        v369 = *(v0 + 1824);
        v370 = *(v0 + 1816);
        v505 = *(v0 + 1800);
        v513 = *(v0 + 1792);
        v517 = *(v0 + 1784);
        v545 = *(v0 + 1456);
        v371 = qword_1006FC3B8;
        sub_10056CBC8();
        v372 = v371;
        v373 = sub_100572948();
        v529 = v374;
        v533 = v373;
        v375 = *(v369 + 8);
        v375(v367, v370);
        sub_100572818();
        v509(v368, v367, v370);
        sub_10056CBC8();
        v376 = sub_100572948();
        v496 = v377;
        v501 = v376;
        v375(v367, v370);
        sub_100572818();
        v509(v368, v367, v370);
        sub_10056CBC8();
        v378 = sub_100572948();
        v380 = v379;
        v375(v367, v370);
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v381 = sub_10056CAB8();
        v383 = v382;
        (*(v513 + 8))(v505, v517);
        sub_100009DCC(&qword_1006E6120, &qword_1005854B0);
        v384 = swift_allocObject();
        *(v384 + 16) = xmmword_10057B510;
        *(v384 + 32) = v381;
        *(v384 + 40) = v383;
        *(v384 + 48) = v378;
        *(v384 + 56) = v380;
        *(v384 + 64) = 2;
        *(v384 + 72) = 0;
        *(v384 + 80) = 0;
        LOBYTE(v552[0]) = 1;
        *(v0 + 976) = v533;
        *(v0 + 984) = v529;
        *(v0 + 992) = v501;
        *(v0 + 1000) = v496;
        *(v0 + 1008) = 0;
        *(v0 + 1016) = 0;
        *(v0 + 1024) = 1;
        *(v0 + 1032) = v384;
        *(v0 + 1040) = 0;

        v385 = sub_10017F500((v0 + 976), 0, 1);
        v386 = v385;
        v387 = *(v545 + 10);
        if (v387)
        {
          v388 = *(v545 + 11);
          v389 = qword_1006E4FE8;

          if (v389 != -1)
          {
            swift_once();
          }

          sub_10000C49C(v518, qword_1006ECA00);
          v390 = sub_10056DF68();
          v391 = sub_100573448();
          if (os_log_type_enabled(v390, v391))
          {
            v392 = swift_slowAlloc();
            *v392 = 0;
            _os_log_impl(&_mh_execute_header, v390, v391, "Deferring presentation…", v392, 2u);
          }

          v393 = *(v0 + 1856);
          v534 = *(v0 + 1848);
          v546 = *(v0 + 1880);
          v394 = *(v0 + 1456);

          v395 = objc_allocWithZone(MSVBlockGuard);
          *(v0 + 1296) = sub_1002EC584;
          *(v0 + 1304) = 0;
          *(v0 + 1264) = _NSConcreteStackBlock;
          *(v0 + 1272) = 1107296256;
          *(v0 + 1280) = sub_1002ED584;
          *(v0 + 1288) = &unk_1006929D8;
          v396 = _Block_copy((v0 + 1264));
          v397 = [v395 initWithTimeout:v396 interruptionHandler:10.0];
          _Block_release(v396);

          sub_1000FEAFC(v394, v0 + 784);
          v398 = swift_allocObject();
          *(v398 + 16) = v397;
          sub_1000FF9D0(v0 + 784, v398 + 24);
          *(v398 + 120) = v386;
          *(v398 + 128) = 257;
          *(v398 + 136) = 0;
          *(v398 + 144) = 0;
          v399 = v397;
          v400 = v386;
          v387(v394, v400, sub_100112A60, v398);
          sub_1000F3E14(v387, v388);

          sub_100109250(v0 + 976);

          (*(v393 + 8))(v546, v534);
        }

        else
        {
          v482 = *(v0 + 1880);
          v483 = *(v0 + 1856);
          v484 = *(v0 + 1848);
          sub_1002EAA64(v385, 1, 1, 0, 0);

          sub_100109250(v0 + 976);

          (*(v483 + 8))(v482, v484);
        }

        goto LABEL_145;
      }

      if (v252 != enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
      {
        v476 = sub_10056DF68();
        v477 = sub_100573408();
        if (os_log_type_enabled(v476, v477))
        {
          v478 = swift_slowAlloc();
          *v478 = 0;
          _os_log_impl(&_mh_execute_header, v476, v477, "|—| Unaddable reason is not supported by the UI", v478, 2u);
        }

        v479 = *(v0 + 1880);
        v480 = *(v0 + 1864);
        v481 = *(v0 + 1848);

        sub_10023F6C4();
        v181 = swift_allocError();
        swift_willThrow();
        (v543)(v479, v481);
        (v543)(v480, v481);
LABEL_54:
        *(v0 + 2232) = v181;
        *(v0 + 1408) = v181;
        swift_errorRetain();
        sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
        v182 = swift_dynamicCast();
        v183 = *(v0 + 2048);
        v184 = *(v0 + 1952);
        v185 = *(v0 + 1440);
        if (v182)
        {
          v186 = *(v0 + 1976);

          v183(v186, v185, v184);

          v187 = sub_10056DF68();
          v188 = sub_100573428();

          if (os_log_type_enabled(v187, v188))
          {
            v511 = *(v0 + 2048);
            v503 = *(v0 + 1992);
            v507 = *(v0 + 1976);
            v521 = *(v0 + 1960);
            v189 = *(v0 + 1944);
            v190 = *(v0 + 1928);
            v191 = *(v0 + 1920);
            v192 = *(v0 + 1912);
            v193 = *(v0 + 1896);
            v494 = *(v0 + 1888);
            v499 = *(v0 + 1952);
            v540 = v188;
            v194 = *(v0 + 1432);
            v195 = *(v0 + 1402);
            v527 = v187;
            v196 = swift_slowAlloc();
            v552[0] = swift_slowAlloc();
            *v196 = 136447234;
            v197 = MusicLibrary.ActionableState.description.getter(v194, v195);
            v199 = sub_1000C9784(v197, v198, v552);

            *(v196 + 4) = v199;
            *(v196 + 12) = 2082;
            sub_100571838();
            sub_100240384(&qword_1006E9BA0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
            v200 = sub_100574408();
            v202 = v201;
            (*(v190 + 8))(v189, v191);
            v203 = sub_1000C9784(v200, v202, v552);

            *(v196 + 14) = v203;
            *(v196 + 22) = 2082;
            sub_1005717E8();
            sub_100240384(&qword_1006E9BA8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
            v204 = sub_100574408();
            v206 = v205;
            (*(v193 + 8))(v192, v494);
            v207 = sub_1000C9784(v204, v206, v552);

            *(v196 + 24) = v207;
            *(v196 + 32) = 2082;
            v511(v503, v507, v499);
            v208 = sub_100572978();
            v210 = v209;
            (*(v521 + 8))(v507, v499);
            v211 = sub_1000C9784(v208, v210, v552);

            *(v196 + 34) = v211;
            *(v196 + 42) = 2082;
            v212 = sub_100572978();
            v214 = sub_1000C9784(v212, v213, v552);

            *(v196 + 44) = v214;
            _os_log_impl(&_mh_execute_header, v527, v540, "Attempted to perform unsupported action for state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v196, 0x34u);
            swift_arrayDestroy();
          }

          else
          {
            v416 = *(v0 + 1976);
            v417 = *(v0 + 1960);
            v418 = *(v0 + 1952);

            (*(v417 + 8))(v416, v418);
          }

          *(v0 + 2240) = sub_10023F6C4();
          v419 = swift_allocError();
          *(v0 + 2248) = v419;
          v420 = swift_task_alloc();
          *(v0 + 2256) = v420;
          *v420 = v0;
          v420[1] = sub_1002358D8;
          v421 = *(v0 + 1456);
          v422 = *(v0 + 1448);
          v423 = *(v0 + 1432);
          v424 = *(v0 + 1402);
          v425 = v419;
        }

        else
        {
          v332 = *(v0 + 1968);

          v183(v332, v185, v184);

          swift_errorRetain();
          v333 = sub_10056DF68();
          v334 = sub_100573428();

          if (os_log_type_enabled(v333, v334))
          {
            v512 = *(v0 + 2048);
            v504 = *(v0 + 1992);
            v508 = *(v0 + 1968);
            v523 = *(v0 + 1960);
            v335 = *(v0 + 1944);
            v336 = *(v0 + 1928);
            v337 = *(v0 + 1920);
            v495 = *(v0 + 1896);
            v500 = *(v0 + 1952);
            v490 = *(v0 + 1912);
            v492 = *(v0 + 1888);
            v544 = v334;
            v338 = *(v0 + 1432);
            v339 = *(v0 + 1402);
            v528 = v333;
            v340 = swift_slowAlloc();
            v552[0] = swift_slowAlloc();
            *v340 = 136447234;
            v341 = MusicLibrary.ActionableState.description.getter(v338, v339);
            v343 = sub_1000C9784(v341, v342, v552);

            *(v340 + 4) = v343;
            *(v340 + 12) = 2082;
            sub_100571838();
            sub_100240384(&qword_1006E9BA0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
            v344 = sub_100574408();
            v346 = v345;
            (*(v336 + 8))(v335, v337);
            v347 = sub_1000C9784(v344, v346, v552);

            *(v340 + 14) = v347;
            *(v340 + 22) = 2082;
            sub_1005717E8();
            sub_100240384(&qword_1006E9BA8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
            v348 = sub_100574408();
            v350 = v349;
            (*(v495 + 8))(v490, v492);
            v351 = sub_1000C9784(v348, v350, v552);

            *(v340 + 24) = v351;
            *(v340 + 32) = 2082;
            v512(v504, v508, v500);
            v352 = sub_100572978();
            v354 = v353;
            (*(v523 + 8))(v508, v500);
            v355 = sub_1000C9784(v352, v354, v552);

            *(v340 + 34) = v355;
            *(v340 + 42) = 2082;
            *(v0 + 1416) = v181;
            swift_errorRetain();
            v356 = sub_100572978();
            v358 = sub_1000C9784(v356, v357, v552);

            *(v340 + 44) = v358;
            _os_log_impl(&_mh_execute_header, v528, v544, "Action failed for button state: %{public}s,\n\nbased on addStatus: %{public}s,\n\ndownloadStatus: %{public}s,\n\nand item: %{public}s;\n\nError: %{public}s", v340, 0x34u);
            swift_arrayDestroy();
          }

          else
          {
            v426 = *(v0 + 1968);
            v427 = *(v0 + 1960);
            v428 = *(v0 + 1952);

            (*(v427 + 8))(v426, v428);
          }

          v429 = swift_task_alloc();
          *(v0 + 2264) = v429;
          *v429 = v0;
          v429[1] = sub_100235D68;
          v421 = *(v0 + 1456);
          v422 = *(v0 + 1448);
          v423 = *(v0 + 1432);
          v424 = *(v0 + 1402);
          v425 = v181;
        }

        return sub_100238D90(v425, v423, v424, v422, v421);
      }

      v452 = sub_10056DF68();
      v453 = sub_100573448();
      if (os_log_type_enabled(v452, v453))
      {
        v454 = swift_slowAlloc();
        *v454 = 0;
        _os_log_impl(&_mh_execute_header, v452, v453, "|—| Presenting upsell", v454, 2u);
      }

      v455 = *(v0 + 1880);
      v415 = *(v0 + 1848);

      *(v0 + 1392) = 0;
      *(v0 + 1360) = 0u;
      *(v0 + 1376) = 0u;
      *(v0 + 1400) = -1;
      _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 1360);
      sub_1001090C8(v0 + 1360);
      v274 = v455;
      goto LABEL_143;
    }

    v283 = sub_10056DF68();
    v284 = sub_100573448();
    if (os_log_type_enabled(v283, v284))
    {
      v285 = swift_slowAlloc();
      *v285 = 0;
      _os_log_impl(&_mh_execute_header, v283, v284, "|—| Presenting Cloud Library Requirement alert", v285, 2u);
    }

    *(v0 + 2072) = sub_100572EF8();
    v287 = sub_100572E78();
    *(v0 + 2080) = v287;
    *(v0 + 2088) = v286;

    return _swift_task_switch(sub_100233F28, v287, v286);
  }

  else
  {
    v145 = sub_10056DF68();
    v146 = sub_100573448();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      *v147 = 0;
      _os_log_impl(&_mh_execute_header, v145, v146, "|—● Adding to library", v147, 2u);
    }

    v148 = *(v0 + 1464);

    if (v148)
    {
      v149 = *(v0 + 1472);
      ObjectType = swift_getObjectType();
      (*(v149 + 8))(0, ObjectType, v149);
    }

    v151 = *(v0 + 1952);
    v152 = *(v0 + 1776);
    v153 = *(v0 + 1760);
    v154 = *(v0 + 1728);
    v155 = *(v0 + 1720);
    v493 = *(v0 + 1752);
    v497 = *(v0 + 1712);
    v502 = *(v0 + 1704);
    v156 = *(v0 + 1480);
    swift_storeEnumTagMultiPayload();
    sub_10022F384(v152, 0);
    sub_100240850(v152, type metadata accessor for Notice.Variant);
    v157 = MusicItem.metricsTargetIdentifier.getter(v151);
    v488 = v158;
    v489 = v157;
    v159 = sub_10056C8A8();
    v486 = *(*(v159 - 8) + 56);
    v487 = v159;
    v486(v153, 1, 1);
    sub_100009DCC(&qword_1006E6D88, &qword_1005876B0);
    v160 = swift_allocObject();
    *(v160 + 16) = xmmword_10057B500;
    *(v160 + 32) = MusicItem.metricsContentType.getter(v151);
    *(v160 + 40) = v161;
    *(v160 + 48) = 0;
    *(v160 + 56) = 0;
    *(v160 + 64) = 0;
    *(v160 + 72) = 1;
    v510 = sub_1000E0568(v160);
    v520 = v162;
    v539 = v163;
    v516 = v164;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_10000CC8C(v153, v493, &qword_1006E5D10, &unk_100583A20);
    v165 = type metadata accessor for Actions.MetricsReportingContext(0);
    v166 = *(v156 + v165[7]);
    v168 = *v156;
    v167 = v156[1];
    sub_10000CC8C(v156 + v165[5], v497, &qword_1006E6428, &unk_100585DF0);
    v506 = v165;
    v491 = *(v156 + v165[8]);
    *(v154 + v155[19]) = 0;
    v169 = (v154 + v155[20]);
    *v169 = 0;
    v169[1] = 0;
    *v154 = v489;
    *(v154 + 8) = v488;
    *(v154 + 16) = 773;
    sub_100019B40(v493, v154 + v155[7], &qword_1006E5D10, &unk_100583A20);
    *(v154 + v155[8]) = v166;
    v170 = (v154 + v155[9]);
    *v170 = v168;
    v170[1] = v167;
    v171 = v154 + v155[10];
    *v171 = v510;
    *(v171 + 8) = v520;
    *(v171 + 16) = v539;
    *(v171 + 24) = v516;
    sub_10000CC8C(v497, v502, &qword_1006E6428, &unk_100585DF0);
    v172 = type metadata accessor for MetricsEvent.Page(0);
    v498 = *(*(v172 - 1) + 48);
    v173 = v498(v502, 1, v172);
    v174 = *(v0 + 1704);
    if (v173 == 1)
    {

      sub_1000DC030(v168, v167);

      v175 = v510;
      sub_1000DCFE4(v510, v520, v539, v516, SBYTE1(v516));
      sub_10001036C(v174, &qword_1006E6428, &unk_100585DF0);
      v176 = 0;
      v177 = 0;
    }

    else
    {
      v176 = *v174;
      v177 = v174[1];

      sub_1000DC030(v168, v167);

      v175 = v510;
      sub_1000DCFE4(v510, v520, v539, v516, SBYTE1(v516));

      sub_100240850(v174, type metadata accessor for MetricsEvent.Page);
    }

    v276 = *(v0 + 1712);
    v277 = *(v0 + 1696);
    v278 = (*(v0 + 1728) + *(*(v0 + 1720) + 48));
    *v278 = v176;
    v278[1] = v177;
    sub_10000CC8C(v276, v277, &qword_1006E6428, &unk_100585DF0);
    v279 = v498(v277, 1, v172);
    v280 = *(v0 + 1696);
    if (v279 == 1)
    {
      sub_10001036C(*(v0 + 1696), &qword_1006E6428, &unk_100585DF0);
      v281 = 0;
      v282 = 0;
    }

    else
    {
      v281 = *(v280 + 16);
      v282 = *(v280 + 24);

      sub_100240850(v280, type metadata accessor for MetricsEvent.Page);
    }

    v288 = *(v0 + 1712);
    v289 = *(v0 + 1688);
    v290 = (*(v0 + 1728) + *(*(v0 + 1720) + 52));
    *v290 = v281;
    v290[1] = v282;
    sub_10000CC8C(v288, v289, &qword_1006E6428, &unk_100585DF0);
    v291 = v498(v289, 1, v172);
    v292 = *(v0 + 1744);
    v293 = *(v0 + 1688);
    if (v291 == 1)
    {
      sub_10001036C(*(v0 + 1688), &qword_1006E6428, &unk_100585DF0);
      (v486)(v292, 1, 1, v487);
    }

    else
    {
      sub_10000CC8C(v293 + v172[6], *(v0 + 1744), &qword_1006E5D10, &unk_100583A20);
      sub_100240850(v293, type metadata accessor for MetricsEvent.Page);
    }

    v294 = *(v0 + 1712);
    v295 = *(v0 + 1680);
    sub_100019B40(*(v0 + 1744), *(v0 + 1728) + *(*(v0 + 1720) + 56), &qword_1006E5D10, &unk_100583A20);
    sub_10000CC8C(v294, v295, &qword_1006E6428, &unk_100585DF0);
    v296 = v498(v295, 1, v172);
    v297 = *(v0 + 1680);
    if (v296 == 1)
    {
      sub_10001036C(*(v0 + 1680), &qword_1006E6428, &unk_100585DF0);
      v298 = 0;
    }

    else
    {
      v298 = *(v297 + v172[7]);

      sub_100240850(v297, type metadata accessor for MetricsEvent.Page);
    }

    v299 = *(v0 + 1712);
    v300 = *(v0 + 1672);
    *(*(v0 + 1728) + *(*(v0 + 1720) + 60)) = v298;
    sub_10000CC8C(v299, v300, &qword_1006E6428, &unk_100585DF0);
    v301 = v498(v300, 1, v172);
    v302 = *(v0 + 1672);
    if (v301 == 1)
    {
      sub_10001036C(v302, &qword_1006E6428, &unk_100585DF0);
      v303 = 1;
    }

    else
    {
      v303 = *(v302 + v172[9]);
      sub_100240850(v302, type metadata accessor for MetricsEvent.Page);
    }

    v304 = *(v0 + 1712);
    v305 = *(v0 + 1664);
    *(*(v0 + 1728) + *(*(v0 + 1720) + 64)) = v303;
    sub_10000CC8C(v304, v305, &qword_1006E6428, &unk_100585DF0);
    v306 = v498(v305, 1, v172);
    v307 = *(v0 + 1664);
    if (v306 == 1)
    {
      sub_10001036C(*(v0 + 1664), &qword_1006E6428, &unk_100585DF0);
      v308 = 0;
      v309 = 0;
    }

    else
    {
      v310 = (v307 + v172[8]);
      v308 = *v310;
      v309 = v310[1];

      sub_100240850(v307, type metadata accessor for MetricsEvent.Page);
    }

    v311 = *(v0 + 1712);
    v312 = *(v0 + 1656);
    v313 = (*(v0 + 1728) + *(*(v0 + 1720) + 72));
    *v313 = v308;
    v313[1] = v309;
    sub_100019B40(v311, v312, &qword_1006E6428, &unk_100585DF0);
    v314 = v498(v312, 1, v172);
    v315 = *(v0 + 1656);
    if (v314 == 1)
    {
      sub_10001036C(v315, &qword_1006E6428, &unk_100585DF0);
      v316 = 2;
    }

    else
    {
      v316 = *(v315 + v172[11]);
      sub_100240850(v315, type metadata accessor for MetricsEvent.Page);
    }

    v317 = *(v0 + 1736);
    v318 = *(v0 + 1728);
    v319 = *(v0 + 1720);
    *(v318 + *(v319 + 68)) = v316;
    *(v318 + *(v319 + 44)) = v491;
    sub_1000DD054(v318, v317);
    if (qword_1006E4D30 != -1)
    {
      swift_once();
    }

    v320 = *(v0 + 1952);
    v321 = *(v0 + 1760);
    v322 = *(v0 + 1736);
    v323 = *(v0 + 1480);
    v324 = *(v0 + 1440);
    MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v322, *(v323 + v506[6]), *(v323 + v506[6] + 8), *(v323 + v506[9]), *(v323 + v506[9] + 8), *(v323 + v506[9] + 16));
    sub_100109184(v175, v520, v539, v516, SBYTE1(v516));
    sub_100240850(v322, type metadata accessor for MetricsEvent.Click);
    sub_10001036C(v321, &qword_1006E5D10, &unk_100583A20);
    sub_10023E5C8(v320, v320);
    swift_allocObject();
    v325 = sub_100572D48();
    *(v0 + 2120) = v325;
    (v524)(v326, v324, v320);
    v327 = sub_100572E38();
    *(v0 + 1424) = v325;
    v328 = swift_task_alloc();
    *(v0 + 2128) = v328;
    WitnessTable = swift_getWitnessTable();
    *v328 = v0;
    v328[1] = sub_100234550;
    v330 = *(v0 + 1952);
    v331 = *(v0 + 1488);

    return MusicLibrary.add<A, B>(_:)(v0 + 1424, v327, v330, WitnessTable, v331);
  }
}

uint64_t sub_100233F28(uint64_t a1)
{
  v2 = v1[182];
  v3 = sub_100572EF8();
  v1[262] = v3;
  v4 = swift_task_alloc();
  v1[263] = v4;
  *(v4 + 16) = 1;
  *(v4 + 24) = v2;
  *(v4 + 32) = 0;
  v5 = swift_task_alloc();
  v1[264] = v5;
  *v5 = v1;
  v5[1] = sub_10023403C;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 1401, v3, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001005ACD10, sub_1001093B0, v4, &type metadata for Bool);
}

uint64_t sub_10023403C()
{
  v1 = *v0;

  v2 = *(v1 + 2088);
  v3 = *(v1 + 2080);

  return _swift_task_switch(sub_10023419C, v3, v2);
}

uint64_t sub_10023419C()
{

  v1 = *(v0 + 2032);
  v2 = *(v0 + 2024);

  return _swift_task_switch(sub_100234204, v2, v1);
}

uint64_t sub_100234204()
{
  v1 = v0[258];
  v2 = v0[235];
  v3 = v0[231];

  v1(v2, v3);
  v4 = sub_10056DF68();
  v5 = sub_100573448();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100234550(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 2136) = v1;

  if (v1)
  {
    v4 = *(v3 + 2032);
    v5 = *(v3 + 2024);
    v6 = sub_1002361B4;
  }

  else
  {

    v4 = *(v3 + 2032);
    v5 = *(v3 + 2024);
    v6 = sub_100234694;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100234694()
{
  v1 = v0[183];

  if (v1)
  {
    v2 = v0[184];
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(0, ObjectType, v2);
  }

  (*(v0[241] + 8))(v0[242], v0[240]);
  v4 = sub_10056DF68();
  v5 = sub_100573448();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100234A0C()
{
  v2 = *v1;
  v2[272] = v0;

  sub_10001036C((v2 + 48), &qword_1006E6BE8, &qword_10058D8E0);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = sub_100236A70;
  }

  else
  {
    v5 = sub_100234B60;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100234B60()
{

  v1 = sub_10056DF68();
  v2 = sub_100573448();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ✅ Succeeded", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100234EA8()
{
  v2 = *v1;
  *(*v1 + 2192) = v0;

  v3 = *(v2 + 2032);
  v4 = *(v2 + 2024);
  if (v0)
  {
    v5 = sub_100237330;
  }

  else
  {
    v5 = sub_100234FE4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100234FE4()
{

  v1 = sub_10056DF68();
  v2 = sub_100573448();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "╰ ✅ Succeeded", v3, 2u);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100235308()
{
  v2 = *v1;
  v2[276] = v0;

  sub_10001036C((v2 + 34), &qword_1006E6BE0, &qword_100586CB0);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = sub_100237BD0;
  }

  else
  {
    v5 = sub_10023545C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10023545C()
{
  v1 = v0[200];
  v2 = v0[199];
  v3 = v0[198];

  (*(v2 + 8))(v1, v3);
  v4 = sub_10056DF68();
  v5 = sub_100573448();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "╰ ✅ Succeeded", v6, 2u);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002357A4()
{
  v2 = *v1;
  v2[278] = v0;

  sub_10001036C((v2 + 2), &qword_1006E6F88, &qword_1005876D8);
  v3 = v2[254];
  v4 = v2[253];
  if (v0)
  {
    v5 = sub_10023848C;
  }

  else
  {
    v5 = sub_1002428F0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1002358D8()
{
  v1 = *v0;

  v2 = *(v1 + 2032);
  v3 = *(v1 + 2024);

  return _swift_task_switch(sub_100235A1C, v3, v2);
}

uint64_t sub_100235A1C()
{

  v1 = sub_10056DF68();
  v2 = sub_100573448();
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

uint64_t sub_100235D68()
{
  v1 = *v0;

  v2 = *(v1 + 2032);
  v3 = *(v1 + 2024);

  return _swift_task_switch(sub_100235E88, v3, v2);
}

uint64_t sub_100235E88()
{

  v1 = sub_10056DF68();
  v2 = sub_100573448();
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

uint64_t sub_1002361B4()
{
  v96 = v0;
  (*(*(v0 + 1928) + 8))(*(v0 + 1936), *(v0 + 1920));
  v1 = *(v0 + 2136);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_10056DF68();
    v8 = sub_100573428();

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
      v19 = sub_1000C9784(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_100571838();
      sub_100240384(&qword_1006E9BA0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = sub_100574408();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_1000C9784(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_1005717E8();
      sub_100240384(&qword_1006E9BA8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = sub_100574408();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_1000C9784(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_100572978();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_1000C9784(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_100572978();
      v34 = sub_1000C9784(v32, v33, &v95);

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

    *(v0 + 2240) = sub_10023F6C4();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_1002358D8;
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
    v36 = sub_10056DF68();
    v37 = sub_100573428();

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
      v46 = sub_1000C9784(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_100571838();
      sub_100240384(&qword_1006E9BA0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = sub_100574408();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_1000C9784(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_1005717E8();
      sub_100240384(&qword_1006E9BA8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = sub_100574408();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_1000C9784(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_100572978();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_1000C9784(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_100572978();
      v61 = sub_1000C9784(v59, v60, &v95);

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
    v75[1] = sub_100235D68;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_100238D90(v71, v69, v70, v68, v67);
}

uint64_t sub_100236A70()
{
  v96 = v0;

  v1 = *(v0 + 2176);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_10056DF68();
    v8 = sub_100573428();

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
      v19 = sub_1000C9784(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_100571838();
      sub_100240384(&qword_1006E9BA0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = sub_100574408();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_1000C9784(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_1005717E8();
      sub_100240384(&qword_1006E9BA8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = sub_100574408();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_1000C9784(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_100572978();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_1000C9784(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_100572978();
      v34 = sub_1000C9784(v32, v33, &v95);

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

    *(v0 + 2240) = sub_10023F6C4();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_1002358D8;
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
    v36 = sub_10056DF68();
    v37 = sub_100573428();

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
      v46 = sub_1000C9784(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_100571838();
      sub_100240384(&qword_1006E9BA0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = sub_100574408();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_1000C9784(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_1005717E8();
      sub_100240384(&qword_1006E9BA8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = sub_100574408();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_1000C9784(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_100572978();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_1000C9784(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_100572978();
      v61 = sub_1000C9784(v59, v60, &v95);

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
    v75[1] = sub_100235D68;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_100238D90(v71, v69, v70, v68, v67);
}

uint64_t sub_100237330()
{
  v96 = v0;
  v1 = *(v0 + 2192);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_10056DF68();
    v8 = sub_100573428();

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
      v19 = sub_1000C9784(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_100571838();
      sub_100240384(&qword_1006E9BA0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = sub_100574408();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_1000C9784(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_1005717E8();
      sub_100240384(&qword_1006E9BA8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = sub_100574408();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_1000C9784(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_100572978();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_1000C9784(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_100572978();
      v34 = sub_1000C9784(v32, v33, &v95);

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

    *(v0 + 2240) = sub_10023F6C4();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_1002358D8;
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
    v36 = sub_10056DF68();
    v37 = sub_100573428();

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
      v46 = sub_1000C9784(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_100571838();
      sub_100240384(&qword_1006E9BA0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = sub_100574408();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_1000C9784(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_1005717E8();
      sub_100240384(&qword_1006E9BA8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = sub_100574408();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_1000C9784(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_100572978();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_1000C9784(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_100572978();
      v61 = sub_1000C9784(v59, v60, &v95);

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
    v75[1] = sub_100235D68;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_100238D90(v71, v69, v70, v68, v67);
}

uint64_t sub_100237BD0()
{
  v96 = v0;
  (*(*(v0 + 1592) + 8))(*(v0 + 1600), *(v0 + 1584));
  v1 = *(v0 + 2208);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_10056DF68();
    v8 = sub_100573428();

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
      v19 = sub_1000C9784(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_100571838();
      sub_100240384(&qword_1006E9BA0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = sub_100574408();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_1000C9784(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_1005717E8();
      sub_100240384(&qword_1006E9BA8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = sub_100574408();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_1000C9784(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_100572978();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_1000C9784(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_100572978();
      v34 = sub_1000C9784(v32, v33, &v95);

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

    *(v0 + 2240) = sub_10023F6C4();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_1002358D8;
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
    v36 = sub_10056DF68();
    v37 = sub_100573428();

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
      v46 = sub_1000C9784(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_100571838();
      sub_100240384(&qword_1006E9BA0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = sub_100574408();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_1000C9784(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_1005717E8();
      sub_100240384(&qword_1006E9BA8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = sub_100574408();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_1000C9784(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_100572978();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_1000C9784(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_100572978();
      v61 = sub_1000C9784(v59, v60, &v95);

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
    v75[1] = sub_100235D68;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_100238D90(v71, v69, v70, v68, v67);
}

uint64_t sub_10023848C()
{
  v96 = v0;
  v1 = *(v0 + 2224);
  *(v0 + 2232) = v1;
  *(v0 + 1408) = v1;
  swift_errorRetain();
  sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 2048);
  v4 = *(v0 + 1952);
  v5 = *(v0 + 1440);
  if (v2)
  {
    v6 = *(v0 + 1976);

    v3(v6, v5, v4);

    v7 = sub_10056DF68();
    v8 = sub_100573428();

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
      v19 = sub_1000C9784(v17, v18, &v95);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      sub_100571838();
      sub_100240384(&qword_1006E9BA0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v20 = sub_100574408();
      v22 = v21;
      (*(v10 + 8))(v9, v11);
      v23 = sub_1000C9784(v20, v22, &v95);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2082;
      sub_1005717E8();
      sub_100240384(&qword_1006E9BA8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v24 = sub_100574408();
      v26 = v25;
      (*(v13 + 8))(v12, v79);
      v27 = sub_1000C9784(v24, v26, &v95);

      *(v16 + 24) = v27;
      *(v16 + 32) = 2082;
      v87(v83, v85, v81);
      v28 = sub_100572978();
      v30 = v29;
      (*(v89 + 8))(v85, v81);
      v31 = sub_1000C9784(v28, v30, &v95);

      *(v16 + 34) = v31;
      *(v16 + 42) = 2082;
      v32 = sub_100572978();
      v34 = sub_1000C9784(v32, v33, &v95);

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

    *(v0 + 2240) = sub_10023F6C4();
    v65 = swift_allocError();
    *(v0 + 2248) = v65;
    v66 = swift_task_alloc();
    *(v0 + 2256) = v66;
    *v66 = v0;
    v66[1] = sub_1002358D8;
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
    v36 = sub_10056DF68();
    v37 = sub_100573428();

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
      v46 = sub_1000C9784(v44, v45, &v95);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2082;
      sub_100571838();
      sub_100240384(&qword_1006E9BA0, &type metadata accessor for MusicLibrary.AddStatus, &protocol conformance descriptor for MusicLibrary.AddStatus);
      v47 = sub_100574408();
      v49 = v48;
      (*(v39 + 8))(v38, v40);
      v50 = sub_1000C9784(v47, v49, &v95);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2082;
      sub_1005717E8();
      sub_100240384(&qword_1006E9BA8, &type metadata accessor for MusicLibrary.DownloadStatus, &protocol conformance descriptor for MusicLibrary.DownloadStatus);
      v51 = sub_100574408();
      v53 = v52;
      (*(v80 + 8))(v77, v78);
      v54 = sub_1000C9784(v51, v53, &v95);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2082;
      v88(v84, v86, v82);
      v55 = sub_100572978();
      v57 = v56;
      (*(v90 + 8))(v86, v82);
      v58 = sub_1000C9784(v55, v57, &v95);

      *(v43 + 34) = v58;
      *(v43 + 42) = 2082;
      *(v0 + 1416) = v1;
      swift_errorRetain();
      v59 = sub_100572978();
      v61 = sub_1000C9784(v59, v60, &v95);

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
    v75[1] = sub_100235D68;
    v67 = *(v0 + 1456);
    v68 = *(v0 + 1448);
    v69 = *(v0 + 1432);
    v70 = *(v0 + 1402);
    v71 = v1;
  }

  return sub_100238D90(v71, v69, v70, v68, v67);
}

uint64_t Logger.libraryActionableState.unsafeMutableAddressor()
{
  if (qword_1006E4EF0 != -1)
  {
    swift_once();
  }

  v0 = sub_10056DF88();

  return sub_10000C49C(v0, static Logger.libraryActionableState);
}

uint64_t sub_100238D90(uint64_t a1, uint64_t a2, __int16 a3, void *a4, uint64_t a5)
{
  *(v5 + 272) = a4;
  *(v5 + 280) = a5;
  *(v5 + 384) = a3;
  *(v5 + 256) = a1;
  *(v5 + 264) = a2;
  *(v5 + 288) = *a4;
  v6 = sub_10056CAE8();
  *(v5 + 296) = v6;
  *(v5 + 304) = *(v6 - 8);
  *(v5 + 312) = swift_task_alloc();
  v7 = sub_10056C8A8();
  *(v5 + 320) = v7;
  v8 = *(v7 - 8);
  *(v5 + 328) = v8;
  *(v5 + 336) = *(v8 + 64);
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  sub_100009DCC(&qword_1006E5D10, &unk_100583A20);
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  sub_100572F08();
  *(v5 + 376) = sub_100572EF8();
  v10 = sub_100572E78();

  return _swift_task_switch(sub_100238F68, v10, v9);
}

uint64_t sub_100238F68()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 384);

  sub_100573ED8(91);
  v70._countAndFlagsBits = 0xD000000000000032;
  v70._object = 0x80000001005B2A80;
  sub_100572A98(v70);
  *(v0 + 232) = v3;
  swift_errorRetain();
  sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
  v71._countAndFlagsBits = sub_100572978();
  sub_100572A98(v71);

  v72._object = 0x80000001005B2AC0;
  v72._countAndFlagsBits = 0xD000000000000014;
  sub_100572A98(v72);
  v73._countAndFlagsBits = MusicLibrary.ActionableState.description.getter(v2, v4);
  sub_100572A98(v73);

  v74._countAndFlagsBits = 0x53206D6574490A0ALL;
  v74._object = 0xEE00203A65746174;
  sub_100572A98(v74);
  *(v0 + 240) = v1;
  sub_100571848();

  v75._countAndFlagsBits = sub_100572978();
  sub_100572A98(v75);

  v76._countAndFlagsBits = 10;
  v76._object = 0xE100000000000000;
  sub_100572A98(v76);
  v5 = sub_1000F4304(_swiftEmptyArrayStorage);
  if (qword_1006E5608 != -1)
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
    sub_1001FA980(0xD00000000000001DLL, 0x80000001005B2A60, 0, 0xE000000000000000, _swiftEmptyArrayStorage, v5, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v6, 1u);

    sub_10000CC8C(v6, v7, &qword_1006E5D10, &unk_100583A20);
    if ((*(v8 + 48))(v7, 1, v9) == 1)
    {
      v10 = *(v0 + 360);
      sub_10001036C(*(v0 + 368), &qword_1006E5D10, &unk_100583A20);
      sub_10001036C(v10, &qword_1006E5D10, &unk_100583A20);
    }

    else
    {
      v13 = *(*(v0 + 328) + 32);
      v13(*(v0 + 352), *(v0 + 360), *(v0 + 320));
      v14 = [objc_opt_self() sharedApplication];
      sub_10056C7E8(v15);
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
        v60 = sub_10056CAB8();
        v28 = v27;
        v62 = *(v24 + 8);
        v62(v25, v63);
        (*(v22 + 8))(v20, v23);
        sub_10001036C(v64, &qword_1006E5D10, &unk_100583A20);
        if (qword_1006E4EF0 != -1)
        {
          swift_once();
        }

        v65 = v28;
        v57 = sub_10056DF88();
        sub_10000C49C(v57, static Logger.libraryActionableState);
        v29 = sub_10056DF68();
        v30 = sub_100573448();
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
        v68 = sub_100572978();
        v58 = v35;
        sub_100009DCC(&qword_1006E6120, &qword_1005854B0);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_10057B500;
        *(v36 + 32) = v60;
        *(v36 + 40) = v65;
        strcpy((v36 + 48), "File a Radar");
        *(v36 + 61) = 0;
        *(v36 + 62) = -5120;
        *(v36 + 64) = 2;
        *(v36 + 72) = &unk_10058DBD0;
        *(v36 + 80) = v66;

        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v37 = sub_10056CAB8();
        v39 = v38;
        v62(v32, v33);
        *(v36 + 88) = v37;
        *(v36 + 96) = v39;
        *(v36 + 104) = 19279;
        *(v36 + 112) = 0xE200000000000000;
        *(v36 + 120) = 2;
        *(v36 + 128) = 0;
        *(v36 + 136) = 0;
        *(v0 + 112) = xmmword_1005824F0;
        *(v0 + 128) = v68;
        *(v0 + 136) = v58;
        *(v0 + 144) = 0;
        *(v0 + 152) = 0;
        *(v0 + 160) = 1;
        *(v0 + 168) = v36;
        *(v0 + 176) = 0;
        v40 = sub_10017F500(v67, 0, 1);
        v41 = v40;
        v42 = *(v59 + 80);
        if (v42)
        {
          v43 = *(v0 + 144);
          v44 = *(v59 + 88);
          v45 = qword_1006E4FE8;

          if (v45 != -1)
          {
            swift_once();
          }

          sub_10000C49C(v57, qword_1006ECA00);
          v46 = sub_10056DF68();
          v47 = sub_100573448();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            *v48 = 0;
            _os_log_impl(&_mh_execute_header, v46, v47, "Deferring presentation…", v48, 2u);
          }

          v49 = *(v0 + 280);

          v50 = objc_allocWithZone(MSVBlockGuard);
          *(v0 + 216) = sub_1002EC584;
          *(v0 + 224) = 0;
          *(v0 + 184) = _NSConcreteStackBlock;
          *(v0 + 192) = 1107296256;
          *(v0 + 200) = sub_1002ED584;
          *(v0 + 208) = &unk_100692FD0;
          v51 = _Block_copy((v0 + 184));
          v52 = [v50 initWithTimeout:v51 interruptionHandler:10.0];
          _Block_release(v51);

          sub_1000FEAFC(v49, v0 + 16);
          v53 = swift_allocObject();
          *(v53 + 16) = v52;
          sub_1000FF9D0(v0 + 16, v53 + 24);
          *(v53 + 120) = v41;
          *(v53 + 128) = v43;
          *(v53 + 129) = 1;
          *(v53 + 136) = 0;
          *(v53 + 144) = 0;
          v54 = v52;
          v55 = v41;
          v42(v49, v55, sub_100112BB0, v53);
          sub_1000F3E14(v42, v44);

          sub_100109250(v67);
        }

        else
        {
          sub_1002EAA64(v40, *(v0 + 144), 1, 0, 0);

          sub_100109250(v67);
        }
      }

      else
      {
        (*(*(v0 + 328) + 8))(*(v0 + 352), *(v0 + 320));
        sub_10001036C(v19, &qword_1006E5D10, &unk_100583A20);
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
  v14 = sub_10023F7D0(a1, a2, a3, a4, a5, a6);
  (*(*(*(v7 + 80) - 8) + 8))(a1);
  return v14;
}

char *MusicLibrary.ActionableStateController.init(item:library:actionsObserver:onStateUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *v6;
  v9 = sub_10023F7D0(a1, a2, a3, a4, a5, a6);
  (*(*(*(v8 + 80) - 8) + 8))(a1);
  return v9;
}

uint64_t sub_1002399EC(uint64_t a1, uint64_t a2)
{
  sub_100009DCC(&qword_1006E9C68, &qword_10058DB38);
  __chkstk_darwin();
  v3 = &v9 - v2;
  sub_100009DCC(&qword_1006E9C70, &unk_10058DB40);
  __chkstk_darwin();
  v5 = (&v9 - v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = sub_1005717C8();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = sub_1005715D8();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    sub_10023B788(v5, v3);

    sub_10001036C(v3, &qword_1006E9C68, &qword_10058DB38);
    return sub_10001036C(v5, &qword_1006E9C70, &unk_10058DB40);
  }

  return result;
}

uint64_t sub_100239BA4(uint64_t a1)
{
  v74 = a1;
  v2 = *v1;
  v85 = sub_100571B78();
  v76 = *(v85 - 8);
  __chkstk_darwin();
  v84 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E9C68, &qword_10058DB38);
  __chkstk_darwin();
  v80 = &v66 - v4;
  sub_100009DCC(&qword_1006E9C70, &unk_10058DB40);
  __chkstk_darwin();
  v79 = &v66 - v5;
  sub_100009DCC(&qword_1006E6FD8, &qword_100587808);
  __chkstk_darwin();
  v70 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v78 = &v66 - v7;
  v88 = sub_100009DCC(&qword_1006E8BD0, &qword_10058DB50);
  v77 = *(v88 - 8);
  __chkstk_darwin();
  v69 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v66 - v9;
  sub_100009DCC(&qword_1006E8BE0, &qword_1005889B0);
  __chkstk_darwin();
  v73 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v66 - v11;
  v12 = sub_1005722D8();
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
  sub_100571818();
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
    v35 = &qword_1006E8BE0;
    v36 = &qword_1005889B0;
    goto LABEL_5;
  }

  v31(v29, 0, 1, v12);
  v32 = *(v25 + 32);
  v33 = v81;
  v32(v81, v29, v12);
  v29 = v78;
  sub_1005722C8();
  v34 = v77;
  v86 = *(v77 + 48);
  if ((v86)(v29, 1, v88) == 1)
  {
    (*(v25 + 8))(v33, v12);
    v35 = &qword_1006E6FD8;
    v36 = &qword_100587808;
LABEL_5:
    v37 = v29;
LABEL_6:
    sub_10001036C(v37, v35, v36);
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
    v35 = &qword_1006E8BE0;
    v36 = &qword_1005889B0;
    v37 = v48;
    goto LABEL_6;
  }

  v50 = v34;
  v31(v48, 0, 1, v12);
  v51 = v71;
  v67(v71, v48, v12);
  v52 = v70;
  sub_1005722C8();
  v53 = v88;
  if ((v86)(v52, 1, v88) == 1)
  {
    v54 = *(v68 + 8);
    v54(v51, v49);
    (*(v50 + 8))(v75, v53);
    v54(v81, v49);
    v35 = &qword_1006E6FD8;
    v36 = &qword_100587808;
    v37 = v52;
    goto LABEL_6;
  }

  v55 = v49;
  v56 = v69;
  v66(v69, v52, v53);
  sub_100010BC0(&qword_1006E8C00, &qword_1006E8BD0, &qword_10058DB50, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_1005731B8();
  sub_100573208();
  v57 = sub_1005731F8();
  v39 = v87;
  if (!v57 && (sub_1005731B8(), sub_100573208(), sub_1005731F8() > 0) || (sub_1005731B8(), sub_100573208(), sub_1005731F8() >= 1) && (sub_1005731B8(), sub_100573208(), !sub_1005731F8()))
  {
    v60 = sub_1005717C8();
    v61 = v79;
    (*(*(v60 - 8) + 56))(v79, 1, 1, v60);
    v62 = sub_1005715D8();
    v63 = v80;
    (*(*(v62 - 8) + 56))(v80, 1, 1, v62);
    sub_10023B788(v61, v63);
    sub_10001036C(v63, &qword_1006E9C68, &qword_10058DB38);
    sub_10001036C(v61, &qword_1006E9C70, &unk_10058DB40);
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
    v42 = sub_1005717C8();
    v43 = v79;
    (*(*(v42 - 8) + 56))(v79, 1, 1, v42);
    v44 = sub_1005715D8();
    v45 = v80;
    (*(*(v44 - 8) + 56))(v80, 1, 1, v44);
    sub_10023B788(v43, v45);
    sub_10001036C(v45, &qword_1006E9C68, &qword_10058DB38);
    return sub_10001036C(v43, &qword_1006E9C70, &unk_10058DB40);
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
  sub_10023FD9C(a1);
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
  return sub_10023AA94;
}

void sub_10023AA94(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), *(v2 + 32));
    sub_10023FD9C(v4);
    v7 = *(v6 + 8);
    v7(v4, v5);
    v7(v3, v5);
  }

  else
  {
    sub_10023FD9C(*(v2 + 56));
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

uint64_t sub_10023ACAC(uint64_t a1, unsigned int a2)
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
  if (qword_1006E4EF0 != -1)
  {
    swift_once();
  }

  v17 = sub_10056DF88();
  sub_10000C49C(v17, static Logger.libraryActionableState);

  v18 = sub_10056DF68();
  v19 = sub_100573448();

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
    v26 = sub_1000C9784(v24, v25, v46);
    v42 = a1;
    v27 = v26;

    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    v28 = MusicLibrary.ActionableState.description.getter(*v11, *(v11 + 8));
    v30 = sub_1000C9784(v28, v29, v46);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2082;
    v31 = *(*v3 + 128);
    swift_beginAccess();
    (*(v43 + 16))(v9, v3 + v31, v45);
    v32 = sub_100572978();
    v34 = sub_1000C9784(v32, v33, v46);

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