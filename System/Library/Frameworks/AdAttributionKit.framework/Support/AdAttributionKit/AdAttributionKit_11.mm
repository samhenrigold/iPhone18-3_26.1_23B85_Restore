uint64_t sub_10010A630()
{
  v1 = *v0;

  sub_10003C04C(v1 + 608);

  return _swift_task_switch(sub_10010A734, 0, 0);
}

uint64_t sub_10010A734()
{
  v1 = *(v0 + 1752) + 1;
  if (v1 == *(v0 + 1736))
  {
LABEL_2:

    v2 = *(v0 + 8);

    return v2();
  }

  v71 = (v0 + 1568);
  v83 = (v0 + 1600);
  v74 = (v0 + 305);
  v66 = (v0 + 601);
  v70 = (v0 + 1587);
  v72 = (v0 + 1616);
  v73 = (v0 + 1657);
  v67 = (v0 + 897);
  v68 = (v0 + 1594);
  v69 = (v0 + 1778);
  while (1)
  {
    *(v0 + 1752) = v1;
    memcpy((v0 + 904), (*(v0 + 1728) + 264 * v1 + 32), 0x108uLL);
    v4 = *(v0 + 920);
    v5 = *(v0 + 928);
    v6 = *(v0 + 904);
    v7 = *(v0 + 912);
    v8 = *(v0 + 1088);
    v9 = *(v0 + 1096);
    v10 = *(v0 + 1064);
    v11 = *(v0 + 1056);
    v81 = *(v0 + 1032);
    v82 = *(v0 + 1048);
    v12 = *(v0 + 1040);
    v80 = *(v0 + 1016);
    v13 = *(v0 + 1024);
    *(v0 + 1816) = 1;
    *(v0 + 1808) = 1;
    *(v0 + 1800) = 1;
    *(v0 + 1784) = 1;
    *(v0 + 1792) = 1;
    *(v0 + 1776) = v11;
    sub_1000BB8B8(v0 + 904, v0 + 1168);

    sub_1000C4880(v83, v0 + 1632);
    sub_10014A860(v0 + 1000, v0 + 1432);

    v14._countAndFlagsBits = v6;
    v14._object = v7;
    v15 = _findStringSwitchCase(cases:string:)(&off_100213B78, v14);
    if (v15)
    {
      if (v15 != 1)
      {
        v26 = 0;
        goto LABEL_17;
      }

      v79 = v10;
      v16 = 1;
    }

    else
    {
      v79 = v10;
      v16 = 0;
    }

    v17 = _findStringSwitchCase(cases:string:)(&off_100213BC8, *(v0 + 936));
    if (v17 > 2)
    {
      v26 = 1;
      goto LABEL_17;
    }

    v75 = v17;
    v76 = v16;
    v18 = v8;
    v77 = v4;
    v19 = v5;
    v20 = *(v0 + 952);
    v21 = *(v0 + 1104);
    v22 = *(v0 + 1112);
    v23 = *(v0 + 960);

    v24._countAndFlagsBits = v21;
    v24._object = v22;
    v25 = _findStringSwitchCase(cases:string:)(&off_100213C30, v24);
    if (v25 <= 2)
    {
      break;
    }

    v26 = 2;
LABEL_17:
    v27 = *(v0 + 1696);
    v28 = *(v0 + 1688);
    v29 = *(v0 + 1680);
    sub_10014A8BC(v83);

    sub_1000BB864(v0 + 1000);
    sub_1000B3D30();
    swift_allocError();
    *v30 = v26;
    swift_willThrow();
    sub_1000BB914(v0 + 904);

    v31 = Logger.postback.unsafeMutableAddressor();
    (*(v28 + 16))(v27, v31, v29);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v36;
      *v35 = v36;
      _os_log_impl(&_mh_execute_header, v32, v33, "Adding postback failed: %@", v34, 0xCu);
      sub_10000DAF8(v35, &qword_100239F10, &qword_1001B4FD0);
    }

    else
    {
    }

    (*(*(v0 + 1688) + 8))(*(v0 + 1696), *(v0 + 1680));
    v1 = *(v0 + 1752) + 1;
    if (v1 == *(v0 + 1736))
    {
      goto LABEL_2;
    }
  }

  v37 = v25;
  v38 = *(v0 + 1720);
  v64 = v20;
  v65 = *(v0 + 1712);
  v78 = *(v0 + 1704);
  v39 = *(v0 + 1160);
  v62 = *(v0 + 1128);
  v63 = *(v0 + 1152);
  v61 = *(v0 + 1120);
  v59 = *(v0 + 1072);
  v60 = *(v0 + 1080);

  sub_1000BB864(v0 + 1000);

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v41 = v40;
  sub_1000BB914(v0 + 904);
  result = (*(v65 + 8))(v38, v78);
  v42 = v41 * 1000.0;
  if (COERCE__INT64(fabs(v41 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v42 <= -1.0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v42 >= 1.84467441e19)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v43 = *v83;
  *(v0 + 1623) = *(v0 + 1648);
  *(v0 + 617) = *v66;
  *(v0 + 665) = *v67;
  *(v0 + 714) = *v68;
  *(v0 + 738) = *v69;
  *(v0 + 820) = *(v0 + 1590);
  *(v0 + 817) = *v70;
  *(v0 + 868) = *(v0 + 1660);
  *(v0 + 865) = *v73;
  *(v0 + 884) = *(v0 + 308);
  *(v0 + 881) = *v74;
  *(v0 + 324) = *(v0 + 604);
  *(v0 + 321) = *v66;
  *(v0 + 372) = *(v0 + 900);
  *(v0 + 369) = *v67;
  *(v0 + 1571) = v43;
  *(v0 + 1631) = *(v0 + 1656);
  *(v0 + 796) = *(v0 + 1583);
  *(v0 + 781) = *v71;
  *(v0 + 801) = *v72;
  *(v0 + 1824) = *(v0 + 1777);
  v44 = *(v0 + 1744);
  *(v0 + 620) = *(v0 + 604);
  *(v0 + 668) = *(v0 + 900);
  *(v0 + 718) = *(v0 + 1598);
  *(v0 + 742) = *(v0 + 1782);
  v45 = *(v0 + 1816);
  *(v0 + 616) = v45;
  *(v0 + 320) = v45;
  *(v0 + 624) = v80;
  *(v0 + 328) = v80;
  *(v0 + 336) = v13;
  *(v0 + 632) = v13;
  *(v0 + 640) = v81;
  *(v0 + 344) = v81;
  *(v0 + 352) = v12;
  *(v0 + 648) = v12;
  *(v0 + 656) = v82;
  *(v0 + 360) = v82;
  v46 = *(v0 + 1776);
  *(v0 + 664) = v46;
  *(v0 + 368) = v46;
  *(v0 + 672) = v79;
  *(v0 + 376) = v79;
  v47 = v42;
  *(v0 + 608) = 0;
  *(v0 + 680) = v59;
  *(v0 + 688) = v60;
  *(v0 + 696) = v18;
  *(v0 + 704) = v9;
  *(v0 + 712) = v37;
  *(v0 + 713) = v61;
  *(v0 + 720) = v62;
  *(v0 + 728) = 0;
  *(v0 + 384) = v59;
  *(v0 + 392) = v60;
  v48 = *(v0 + 1808);
  *(v0 + 736) = v48;
  *(v0 + 737) = 3;
  *(v0 + 744) = v63;
  *(v0 + 752) = v39;
  *(v0 + 760) = v77;
  *(v0 + 768) = v19;
  *(v0 + 776) = v76;
  *(v0 + 777) = v75;
  *(v0 + 778) = 0;
  *(v0 + 780) = 0;
  *(v0 + 400) = v18;
  *(v0 + 408) = v9;
  v49 = *(v0 + 1824);
  *(v0 + 800) = v49;
  *(v0 + 824) = v64;
  *(v0 + 832) = v23;
  *(v0 + 840) = v44;
  *(v0 + 848) = v42;
  *(v0 + 856) = 0;
  v50 = *(v0 + 1800);
  *(v0 + 864) = v50;
  *(v0 + 872) = 0;
  *(v0 + 416) = v37;
  v51 = *(v0 + 1784);
  *(v0 + 880) = v51;
  *(v0 + 888) = 0;
  *(v0 + 417) = v61;
  *(v0 + 422) = *(v0 + 1598);
  v52 = *(v0 + 1792);
  *(v0 + 896) = v52;
  *(v0 + 312) = 0;
  *(v0 + 418) = *v68;
  *(v0 + 424) = v62;
  *(v0 + 432) = 0;
  *(v0 + 440) = v48;
  *(v0 + 441) = 3;
  v53 = *v69;
  *(v0 + 446) = *(v0 + 1782);
  *(v0 + 442) = v53;
  *(v0 + 448) = v63;
  *(v0 + 456) = v39;
  *(v0 + 464) = v77;
  *(v0 + 472) = v19;
  *(v0 + 480) = v76;
  *(v0 + 481) = v75;
  *(v0 + 482) = 0;
  *(v0 + 484) = 0;
  v54 = *v71;
  *(v0 + 500) = *(v0 + 1583);
  *(v0 + 485) = v54;
  *(v0 + 504) = v49;
  *(v0 + 505) = *v72;
  v55 = *v70;
  *(v0 + 524) = *(v0 + 1590);
  *(v0 + 521) = v55;
  *(v0 + 528) = v64;
  *(v0 + 536) = v23;
  *(v0 + 544) = v44;
  *(v0 + 552) = v47;
  *(v0 + 560) = 0;
  *(v0 + 568) = v50;
  v56 = *v73;
  *(v0 + 572) = *(v0 + 1660);
  *(v0 + 569) = v56;
  *(v0 + 576) = 0;
  *(v0 + 584) = v51;
  v57 = *v74;
  *(v0 + 588) = *(v0 + 308);
  *(v0 + 585) = v57;
  *(v0 + 592) = 0;
  *(v0 + 600) = v52;
  sub_1000B3B24(v0 + 608, v0 + 16);
  sub_10003C04C(v0 + 312);
  v58 = swift_task_alloc();
  *(v0 + 1760) = v58;
  *v58 = v0;
  v58[1] = sub_100109BC4;

  return sub_100124D0C(v0 + 608);
}

uint64_t sub_10010B00C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10010B0E4, 0, 0);
}

uint64_t sub_10010B0E4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v2;

  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_10010B1F4;

  return sub_100110084(sub_10014A210, v6, v3, v4, v5);
}

uint64_t sub_10010B1F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_10010B808;
  }

  else
  {
    v4 = sub_10010B328;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10010B328(uint64_t a1)
{
  v2 = v1[8];
  v3 = v1[4];
  v4 = v1[5];
  v5 = Logger.postback.unsafeMutableAddressor();
  v1[13] = v5;
  v6 = *(v4 + 16);
  v1[14] = v6;
  v1[15] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[11];
  v11 = v1[8];
  v12 = v1[4];
  v13 = v1[5];
  if (v9)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 134218242;
    *(v14 + 4) = *(v10 + 16);

    *(v14 + 12) = 2080;
    sub_10014A2E0();
    v16 = Set.description.getter();
    v18 = sub_10017AD04(v16, v17, &v26);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Found %ld postbacks eligible for transmission for environments: %s", v14, 0x16u);
    sub_10000DB58(v15);
  }

  else
  {
  }

  v19 = *(v13 + 8);
  v19(v11, v12);
  v1[16] = v19;
  v20 = v1[11];
  v21 = v1[3];
  v22 = swift_task_alloc();
  v1[17] = v22;
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;
  v23 = swift_task_alloc();
  v1[18] = v23;
  *v23 = v1;
  v23[1] = sub_10010B5B0;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10010B5B0()
{

  return _swift_task_switch(sub_10010B6E4, 0, 0);
}

uint64_t sub_10010B6E4()
{
  (*(v0 + 112))(*(v0 + 56), *(v0 + 104), *(v0 + 32));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Postback transmission completed", v3, 2u);
  }

  (*(v0 + 128))(*(v0 + 56), *(v0 + 32));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10010B808(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[4];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Transmit eligible postbacks failure: %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v1[5] + 8))(v1[6], v1[4]);

  v11 = v1[1];

  return v11();
}

uint64_t sub_10010B9C4()
{
  v1[22] = v0;
  v2 = type metadata accessor for Logger();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_10010BA90, 0, 0);
}

uint64_t sub_10010BA90()
{
  v1 = v0[22];
  v2 = v1[3];
  v0[27] = v2;
  v3 = v1[4];
  v0[28] = v3;
  v4 = v1[5];
  v0[29] = v4;
  v5 = swift_task_alloc();
  v0[30] = v5;
  *v5 = v0;
  v5[1] = sub_10010BB78;

  return sub_10010F818(sub_1001260A4, 0, v2, v3, v4);
}

uint64_t sub_10010BB78(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v4 = sub_10010DF94;
  }

  else
  {
    v4 = sub_10010BC8C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10010BC8C()
{
  v1 = v0[31];
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100146DA4(0, v2, 0);
    v3 = _swiftEmptyArrayStorage[2];
    v4 = 2 * v3;
    v5 = (v1 + 96);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = _swiftEmptyArrayStorage[3];

      if (v3 >= v8 >> 1)
      {
        sub_100146DA4((v8 > 1), v3 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v3 + 1;
      v9 = &_swiftEmptyArrayStorage[v4];
      v9[4] = v7;
      v9[5] = v6;
      v4 += 2;
      v5 += 18;
      ++v3;
      --v2;
    }

    while (v2);
  }

  v0[33] = _swiftEmptyArrayStorage;
  v10 = _swiftEmptyArrayStorage[2];
  v0[34] = v10;
  if (v10)
  {
    v0[35] = 0;
    v11 = v0[28];
    v12 = v0[29];
    v13 = v0[27];
    v14 = _swiftEmptyArrayStorage[4];
    v0[36] = v14;
    v15 = _swiftEmptyArrayStorage[5];
    v0[37] = v15;
    v16 = swift_allocObject();
    v0[38] = v16;
    *(v16 + 16) = v14;
    *(v16 + 24) = v15;
    swift_bridgeObjectRetain_n();
    v0[5] = &type metadata for GhostbackDatabaseStore;
    v0[6] = sub_100146E28();
    v0[2] = v13;
    v0[3] = v11;
    v0[4] = v12;

    v17 = v12;
    v18 = swift_task_alloc();
    v0[39] = v18;
    v18[2] = v17;
    v18[3] = v0 + 2;
    v18[4] = sub_100146DFC;
    v18[5] = v16;
    v19 = swift_task_alloc();
    v0[40] = v19;
    *v19 = v0;
    v19[1] = sub_10010BFAC;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v19, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_100146E7C, v18, &type metadata for () + 8);
  }

  else
  {

    v20 = v0[22];
    v22 = *v20;
    v21 = v20[1];
    v23 = v20[2];
    v24 = swift_task_alloc();
    v0[54] = v24;
    *v24 = v0;
    v24[1] = sub_10010DC64;

    return sub_10010EF70(sub_10010EF70, sub_1001280C4, 0, v22, v21, v23);
  }
}

uint64_t sub_10010BFAC()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_10010C378;
  }

  else
  {

    sub_10000DB58((v2 + 16));

    v3 = sub_10010C0D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10010C0D8()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[22];
  v5 = v3[6];
  v4 = v3[7];
  v6 = v3[8];
  v7 = swift_allocObject();
  v0[42] = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;

  v0[10] = &type metadata for ImpressionDatabaseStore;
  v0[11] = sub_100146EB4();
  v0[7] = v5;
  v0[8] = v4;
  v0[9] = v6;

  v8 = v6;
  v9 = swift_task_alloc();
  v0[43] = v9;
  v9[2] = v8;
  v9[3] = v0 + 7;
  v9[4] = sub_100146E88;
  v9[5] = v7;
  v10 = swift_task_alloc();
  v0[44] = v10;
  *v10 = v0;
  v10[1] = sub_10010C24C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_100146F08, v9, &type metadata for () + 8);
}

uint64_t sub_10010C24C()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_10010CA64;
  }

  else
  {

    sub_10000DB58((v2 + 56));

    v3 = sub_10010C7C4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10010C378()
{
  v40 = v0;
  v1 = v0 + 2;

  sub_10000DB58(v0 + 2);

  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[37];
  if (v8)
  {
    v10 = v0[36];
    v11 = v0[24];
    v37 = v0[23];
    v38 = v0[26];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v14 = v39;
    *v12 = 136315394;
    v15 = sub_10017AD04(v10, v9, &v39);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to clear pre conversion state for development conversion %s: %@", v12, 0x16u);
    sub_10000DAF8(v13, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v14);
    v1 = v0 + 2;

    (*(v11 + 8))(v38, v37);
  }

  else
  {
    v17 = v0[26];
    v19 = v0[23];
    v18 = v0[24];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[35] + 1;
  if (v20 == v0[34])
  {

    v21 = v0[22];
    v23 = *v21;
    v22 = v21[1];
    v24 = v21[2];
    v25 = swift_task_alloc();
    v0[54] = v25;
    *v25 = v0;
    v25[1] = sub_10010DC64;

    return sub_10010EF70(sub_10010EF70, sub_1001280C4, 0, v23, v22, v24);
  }

  else
  {
    v0[35] = v20;
    v28 = v0[28];
    v27 = v0[29];
    v29 = v0[27];
    v30 = v0[33] + 16 * v20;
    v31 = *(v30 + 32);
    v0[36] = v31;
    v32 = *(v30 + 40);
    v0[37] = v32;
    v33 = swift_allocObject();
    v0[38] = v33;
    *(v33 + 16) = v31;
    *(v33 + 24) = v32;
    swift_bridgeObjectRetain_n();
    v0[5] = &type metadata for GhostbackDatabaseStore;
    v0[6] = sub_100146E28();
    v0[2] = v29;
    v0[3] = v28;
    v0[4] = v27;

    v34 = v27;
    v35 = swift_task_alloc();
    v0[39] = v35;
    v35[2] = v34;
    v35[3] = v1;
    v35[4] = sub_100146DFC;
    v35[5] = v33;
    v36 = swift_task_alloc();
    v0[40] = v36;
    *v36 = v0;
    v36[1] = sub_10010BFAC;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v36, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_100146E7C, v35, &type metadata for () + 8);
  }
}

uint64_t sub_10010C7C4()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[22];
  v5 = v3[9];
  v4 = v3[10];
  v6 = v3[11];
  v7 = swift_allocObject();
  v0[46] = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;

  v0[15] = &type metadata for TokenDatabaseStore;
  v0[16] = sub_1000997C8();
  v0[12] = v5;
  v0[13] = v4;
  v0[14] = v6;

  v8 = v6;
  v9 = swift_task_alloc();
  v0[47] = v9;
  v9[2] = v8;
  v9[3] = v0 + 12;
  v9[4] = sub_100146F14;
  v9[5] = v7;
  v10 = swift_task_alloc();
  v0[48] = v10;
  *v10 = v0;
  v10[1] = sub_10010C938;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_100146F40, v9, &type metadata for () + 8);
}

uint64_t sub_10010C938()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_10010D158;
  }

  else
  {

    sub_10000DB58((v2 + 96));

    v3 = sub_10010CEB8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10010CA64()
{
  v39 = v0;

  sub_10000DB58(v0 + 7);

  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v1, v4, v2);

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[37];
  if (v7)
  {
    v9 = v0[36];
    v10 = v0[24];
    v36 = v0[23];
    v37 = v0[26];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v38 = v13;
    *v11 = 136315394;
    v14 = sub_10017AD04(v9, v8, &v38);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to clear pre conversion state for development conversion %s: %@", v11, 0x16u);
    sub_10000DAF8(v12, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v13);

    (*(v10 + 8))(v37, v36);
  }

  else
  {
    v16 = v0[26];
    v17 = v0[23];
    v18 = v0[24];

    (*(v18 + 8))(v16, v17);
  }

  v19 = v0[35] + 1;
  if (v19 == v0[34])
  {

    v20 = v0[22];
    v22 = *v20;
    v21 = v20[1];
    v23 = v20[2];
    v24 = swift_task_alloc();
    v0[54] = v24;
    *v24 = v0;
    v24[1] = sub_10010DC64;

    return sub_10010EF70(sub_10010EF70, sub_1001280C4, 0, v22, v21, v23);
  }

  else
  {
    v0[35] = v19;
    v26 = v0[28];
    v27 = v0[29];
    v28 = v0[27];
    v29 = v0[33] + 16 * v19;
    v30 = *(v29 + 32);
    v0[36] = v30;
    v31 = *(v29 + 40);
    v0[37] = v31;
    v32 = swift_allocObject();
    v0[38] = v32;
    *(v32 + 16) = v30;
    *(v32 + 24) = v31;
    swift_bridgeObjectRetain_n();
    v0[5] = &type metadata for GhostbackDatabaseStore;
    v0[6] = sub_100146E28();
    v0[2] = v28;
    v0[3] = v26;
    v0[4] = v27;

    v33 = v27;
    v34 = swift_task_alloc();
    v0[39] = v34;
    v34[2] = v33;
    v34[3] = v0 + 2;
    v34[4] = sub_100146DFC;
    v34[5] = v32;
    v35 = swift_task_alloc();
    v0[40] = v35;
    *v35 = v0;
    v35[1] = sub_10010BFAC;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v35, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_100146E7C, v34, &type metadata for () + 8);
  }
}

uint64_t sub_10010CEB8()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[22];
  v5 = v3[26];
  v4 = v3[27];
  v6 = v3[28];
  v7 = swift_allocObject();
  v0[50] = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v1;

  v0[20] = &type metadata for RetryCountDatabaseStore;
  v0[21] = sub_100146F68();
  v0[17] = v5;
  v0[18] = v4;
  v0[19] = v6;

  v8 = v6;
  v9 = swift_task_alloc();
  v0[51] = v9;
  v9[2] = v8;
  v9[3] = v0 + 17;
  v9[4] = sub_100146F4C;
  v9[5] = v7;
  v10 = swift_task_alloc();
  v0[52] = v10;
  *v10 = v0;
  v10[1] = sub_10010D02C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_100146FBC, v9, &type metadata for () + 8);
}

uint64_t sub_10010D02C()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = sub_10010D810;
  }

  else
  {

    sub_10000DB58((v2 + 136));

    v3 = sub_10010D5AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10010D158()
{
  v39 = v0;

  sub_10000DB58(v0 + 12);

  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v1, v4, v2);

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[37];
  if (v7)
  {
    v9 = v0[36];
    v10 = v0[24];
    v36 = v0[23];
    v37 = v0[26];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v38 = v13;
    *v11 = 136315394;
    v14 = sub_10017AD04(v9, v8, &v38);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to clear pre conversion state for development conversion %s: %@", v11, 0x16u);
    sub_10000DAF8(v12, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v13);

    (*(v10 + 8))(v37, v36);
  }

  else
  {
    v16 = v0[26];
    v17 = v0[23];
    v18 = v0[24];

    (*(v18 + 8))(v16, v17);
  }

  v19 = v0[35] + 1;
  if (v19 == v0[34])
  {

    v20 = v0[22];
    v22 = *v20;
    v21 = v20[1];
    v23 = v20[2];
    v24 = swift_task_alloc();
    v0[54] = v24;
    *v24 = v0;
    v24[1] = sub_10010DC64;

    return sub_10010EF70(sub_10010EF70, sub_1001280C4, 0, v22, v21, v23);
  }

  else
  {
    v0[35] = v19;
    v26 = v0[28];
    v27 = v0[29];
    v28 = v0[27];
    v29 = v0[33] + 16 * v19;
    v30 = *(v29 + 32);
    v0[36] = v30;
    v31 = *(v29 + 40);
    v0[37] = v31;
    v32 = swift_allocObject();
    v0[38] = v32;
    *(v32 + 16) = v30;
    *(v32 + 24) = v31;
    swift_bridgeObjectRetain_n();
    v0[5] = &type metadata for GhostbackDatabaseStore;
    v0[6] = sub_100146E28();
    v0[2] = v28;
    v0[3] = v26;
    v0[4] = v27;

    v33 = v27;
    v34 = swift_task_alloc();
    v0[39] = v34;
    v34[2] = v33;
    v34[3] = v0 + 2;
    v34[4] = sub_100146DFC;
    v34[5] = v32;
    v35 = swift_task_alloc();
    v0[40] = v35;
    *v35 = v0;
    v35[1] = sub_10010BFAC;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v35, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_100146E7C, v34, &type metadata for () + 8);
  }
}

uint64_t sub_10010D5AC()
{

  v1 = v0[35] + 1;
  if (v1 == v0[34])
  {

    v2 = swift_task_alloc();
    v0[54] = v2;
    *v2 = v0;
    v2[1] = sub_10010DC64;

    return (sub_10010EF70)();
  }

  else
  {
    v0[35] = v1;
    v4 = v0[28];
    v5 = v0[29];
    v6 = v0[27];
    v7 = v0[33] + 16 * v1;
    v8 = *(v7 + 32);
    v0[36] = v8;
    v9 = *(v7 + 40);
    v0[37] = v9;
    v10 = swift_allocObject();
    v0[38] = v10;
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    swift_bridgeObjectRetain_n();
    v0[5] = &type metadata for GhostbackDatabaseStore;
    v0[6] = sub_100146E28();
    v0[2] = v6;
    v0[3] = v4;
    v0[4] = v5;

    v11 = v5;
    v12 = swift_task_alloc();
    v0[39] = v12;
    v12[2] = v11;
    v12[3] = v0 + 2;
    v12[4] = sub_100146DFC;
    v12[5] = v10;
    v13 = swift_task_alloc();
    v0[40] = v13;
    *v13 = v0;
    v13[1] = sub_10010BFAC;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v13, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_100146E7C, v12, &type metadata for () + 8);
  }
}

uint64_t sub_10010D810()
{
  v39 = v0;

  sub_10000DB58(v0 + 17);

  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v1, v4, v2);

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[37];
  if (v7)
  {
    v9 = v0[36];
    v10 = v0[24];
    v36 = v0[23];
    v37 = v0[26];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v38 = v13;
    *v11 = 136315394;
    v14 = sub_10017AD04(v9, v8, &v38);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to clear pre conversion state for development conversion %s: %@", v11, 0x16u);
    sub_10000DAF8(v12, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v13);

    (*(v10 + 8))(v37, v36);
  }

  else
  {
    v16 = v0[26];
    v17 = v0[23];
    v18 = v0[24];

    (*(v18 + 8))(v16, v17);
  }

  v19 = v0[35] + 1;
  if (v19 == v0[34])
  {

    v20 = v0[22];
    v22 = *v20;
    v21 = v20[1];
    v23 = v20[2];
    v24 = swift_task_alloc();
    v0[54] = v24;
    *v24 = v0;
    v24[1] = sub_10010DC64;

    return sub_10010EF70(sub_10010EF70, sub_1001280C4, 0, v22, v21, v23);
  }

  else
  {
    v0[35] = v19;
    v26 = v0[28];
    v27 = v0[29];
    v28 = v0[27];
    v29 = v0[33] + 16 * v19;
    v30 = *(v29 + 32);
    v0[36] = v30;
    v31 = *(v29 + 40);
    v0[37] = v31;
    v32 = swift_allocObject();
    v0[38] = v32;
    *(v32 + 16) = v30;
    *(v32 + 24) = v31;
    swift_bridgeObjectRetain_n();
    v0[5] = &type metadata for GhostbackDatabaseStore;
    v0[6] = sub_100146E28();
    v0[2] = v28;
    v0[3] = v26;
    v0[4] = v27;

    v33 = v27;
    v34 = swift_task_alloc();
    v0[39] = v34;
    v34[2] = v33;
    v34[3] = v0 + 2;
    v34[4] = sub_100146DFC;
    v34[5] = v32;
    v35 = swift_task_alloc();
    v0[40] = v35;
    *v35 = v0;
    v35[1] = sub_10010BFAC;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v35, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_100146E7C, v34, &type metadata for () + 8);
  }
}

uint64_t sub_10010DC64()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_10010E13C;
  }

  else
  {
    v2 = sub_10010DD78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10010DD78()
{
  if (v0[34])
  {
    v1 = swift_task_alloc();
    v0[56] = v1;
    *v1 = v0;
    v1[1] = sub_10010DE50;

    return sub_100128208();
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_10010DE50()
{
  v2 = *v1;
  *(v2 + 456) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10010E2E4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10010DF94(uint64_t a1)
{
  v3 = v1[24];
  v2 = v1[25];
  v4 = v1[23];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Remove development postbacks failed: %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v1[24] + 8))(v1[25], v1[23]);

  v11 = v1[1];

  return v11();
}

uint64_t sub_10010E13C(uint64_t a1)
{
  v3 = v1[24];
  v2 = v1[25];
  v4 = v1[23];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Remove development postbacks failed: %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v1[24] + 8))(v1[25], v1[23]);

  v11 = v1[1];

  return v11();
}

uint64_t sub_10010E2E4(uint64_t a1)
{
  v3 = v1[24];
  v2 = v1[25];
  v4 = v1[23];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Remove development postbacks failed: %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v1[24] + 8))(v1[25], v1[23]);

  v11 = v1[1];

  return v11();
}

uint64_t sub_10010E48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010E4B4, 0, 0);
}

uint64_t sub_10010E4B4()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for AppMetadataDatabaseStore;
  v4 = sub_10014B970();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_10010E5EC;
  v9 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014BA78, v6, &type metadata for () + 8);
}

uint64_t sub_10010E5EC()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10014D294, 0, 0);
  }

  else
  {

    sub_10000DB58(v2 + 2);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_10010E730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010E758, 0, 0);
}

uint64_t sub_10010E758(uint64_t a1)
{
  v3 = *(v1 + 88);
  v2 = *(v1 + 96);
  v4 = *(v1 + 80);
  *(v1 + 40) = &type metadata for ImpressionDatabaseStore;
  v5 = sub_100146EB4();
  *(v1 + 16) = v4;
  *(v1 + 48) = v5;
  *(v1 + 24) = v3;
  *(v1 + 32) = v2;

  v6 = v2;
  v7 = swift_task_alloc();
  *(v1 + 104) = v7;
  v8 = *(v1 + 64);
  *(v7 + 16) = v6;
  *(v7 + 24) = v1 + 16;
  *(v7 + 32) = v8;
  v9 = swift_task_alloc();
  *(v1 + 112) = v9;
  *v9 = v1;
  v9[1] = sub_10010E5EC;
  v10 = *(v1 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014D280, v7, &type metadata for () + 8);
}

uint64_t sub_10010E890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010E8B8, 0, 0);
}

uint64_t sub_10010E8B8(uint64_t a1)
{
  v3 = *(v1 + 88);
  v2 = *(v1 + 96);
  v4 = *(v1 + 80);
  *(v1 + 40) = &type metadata for RetryCountDatabaseStore;
  v5 = sub_100146F68();
  *(v1 + 16) = v4;
  *(v1 + 48) = v5;
  *(v1 + 24) = v3;
  *(v1 + 32) = v2;

  v6 = v2;
  v7 = swift_task_alloc();
  *(v1 + 104) = v7;
  v8 = *(v1 + 64);
  *(v7 + 16) = v6;
  *(v7 + 24) = v1 + 16;
  *(v7 + 32) = v8;
  v9 = swift_task_alloc();
  *(v1 + 112) = v9;
  *v9 = v1;
  v9[1] = sub_10010E5EC;
  v10 = *(v1 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014D278, v7, &type metadata for () + 8);
}

uint64_t sub_10010E9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010EA18, 0, 0);
}

uint64_t sub_10010EA18(uint64_t a1)
{
  v3 = *(v1 + 88);
  v2 = *(v1 + 96);
  v4 = *(v1 + 80);
  *(v1 + 40) = &type metadata for GhostbackDatabaseStore;
  v5 = sub_100146E28();
  *(v1 + 16) = v4;
  *(v1 + 48) = v5;
  *(v1 + 24) = v3;
  *(v1 + 32) = v2;

  v6 = v2;
  v7 = swift_task_alloc();
  *(v1 + 104) = v7;
  v8 = *(v1 + 64);
  *(v7 + 16) = v6;
  *(v7 + 24) = v1 + 16;
  *(v7 + 32) = v8;
  v9 = swift_task_alloc();
  *(v1 + 112) = v9;
  *v9 = v1;
  v9[1] = sub_10010E5EC;
  v10 = *(v1 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014D284, v7, &type metadata for () + 8);
}

uint64_t sub_10010EB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010EB78, 0, 0);
}

uint64_t sub_10010EB78()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for TokenDatabaseStore;
  v4 = sub_1000997C8();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_10010E5EC;
  v9 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014D27C, v6, &type metadata for () + 8);
}

uint64_t sub_10010ECB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010ECD8, 0, 0);
}

uint64_t sub_10010ECD8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for ConversionTagDatabaseStore;
  v4 = sub_10014AD70();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_10010E5EC;
  v9 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014B93C, v6, &type metadata for () + 8);
}

uint64_t sub_10010EE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010EE38, 0, 0);
}

uint64_t sub_10010EE38()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for ConversionHistoryDatabaseStore;
  v4 = sub_10014ACC4();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_10010E5EC;
  v9 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014B908, v6, &type metadata for () + 8);
}

uint64_t sub_10010EF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010EF98, 0, 0);
}

uint64_t sub_10010EF98(uint64_t a1)
{
  v3 = *(v1 + 88);
  v2 = *(v1 + 96);
  v4 = *(v1 + 80);
  *(v1 + 40) = &type metadata for PostbackDatabaseStore;
  v5 = sub_1001494B0();
  *(v1 + 16) = v4;
  *(v1 + 48) = v5;
  *(v1 + 24) = v3;
  *(v1 + 32) = v2;

  v6 = v2;
  v7 = swift_task_alloc();
  *(v1 + 104) = v7;
  v8 = *(v1 + 64);
  *(v7 + 16) = v6;
  *(v7 + 24) = v1 + 16;
  *(v7 + 32) = v8;
  v9 = swift_task_alloc();
  *(v1 + 112) = v9;
  *v9 = v1;
  v9[1] = sub_10010E5EC;
  v10 = *(v1 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_100149504, v7, &type metadata for () + 8);
}

uint64_t sub_10010F0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010F0F8, 0, 0);
}

uint64_t sub_10010F0F8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for AppLaunchDatabaseStore;
  v4 = sub_10014AE44();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_10010E5EC;
  v9 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014B060, v6, &type metadata for () + 8);
}

uint64_t sub_10010F230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010F258, 0, 0);
}

uint64_t sub_10010F258()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for AggregatedReportingDatabaseStore;
  v4 = sub_10014B71C();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_10010E5EC;
  v9 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014B770, v6, &type metadata for () + 8);
}

uint64_t sub_10010F390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010F3B8, 0, 0);
}

uint64_t sub_10010F3B8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for SnoutDatabaseStore;
  v4 = sub_10014AB1C();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_10010E5EC;
  v9 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014AC48, v6, &type metadata for () + 8);
}

uint64_t sub_10010F4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return _swift_task_switch(sub_10010F518, 0, 0);
}

uint64_t sub_10010F518(uint64_t a1)
{
  v3 = *(v1 + 88);
  v2 = *(v1 + 96);
  v4 = *(v1 + 80);
  *(v1 + 40) = &type metadata for ImpressionDatabaseStore;
  v5 = sub_100146EB4();
  *(v1 + 16) = v4;
  *(v1 + 48) = v5;
  *(v1 + 24) = v3;
  *(v1 + 32) = v2;

  v6 = v2;
  v7 = swift_task_alloc();
  *(v1 + 104) = v7;
  v8 = *(v1 + 64);
  *(v7 + 16) = v6;
  *(v7 + 24) = v1 + 16;
  *(v7 + 32) = v8;
  v9 = swift_task_alloc();
  *(v1 + 112) = v9;
  v10 = sub_10000CDE0(&qword_10023D7E8, &qword_1001C1910);
  *v9 = v1;
  v9[1] = sub_10010F65C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 56, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014BF60, v7, v10);
}

uint64_t sub_10010F65C()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10010F7AC, 0, 0);
  }

  else
  {

    v3 = v2[7];
    sub_10000DB58(v2 + 2);
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_10010F7AC()
{

  sub_10000DB58((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10010F818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return _swift_task_switch(sub_10010F840, 0, 0);
}

uint64_t sub_10010F840(uint64_t a1)
{
  v3 = *(v1 + 88);
  v2 = *(v1 + 96);
  v4 = *(v1 + 80);
  *(v1 + 40) = &type metadata for GhostbackDatabaseStore;
  v5 = sub_100146E28();
  *(v1 + 16) = v4;
  *(v1 + 48) = v5;
  *(v1 + 24) = v3;
  *(v1 + 32) = v2;

  v6 = v2;
  v7 = swift_task_alloc();
  *(v1 + 104) = v7;
  v8 = *(v1 + 64);
  *(v7 + 16) = v6;
  *(v7 + 24) = v1 + 16;
  *(v7 + 32) = v8;
  v9 = swift_task_alloc();
  *(v1 + 112) = v9;
  v10 = sub_10000CDE0(&qword_10023D648, &qword_1001C1620);
  *v9 = v1;
  v9[1] = sub_10010F984;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 56, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014A0AC, v7, v10);
}

uint64_t sub_10010F984()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10014D294, 0, 0);
  }

  else
  {

    v3 = v2[7];
    sub_10000DB58(v2 + 2);
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_10010FAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010FAFC, 0, 0);
}

uint64_t sub_10010FAFC(uint64_t a1)
{
  v3 = *(v1 + 88);
  v2 = *(v1 + 96);
  v4 = *(v1 + 80);
  *(v1 + 40) = &type metadata for GhostbackDatabaseStore;
  v5 = sub_100146E28();
  *(v1 + 16) = v4;
  *(v1 + 48) = v5;
  *(v1 + 24) = v3;
  *(v1 + 32) = v2;

  v6 = v2;
  v7 = swift_task_alloc();
  *(v1 + 104) = v7;
  v8 = *(v1 + 64);
  *(v7 + 16) = v6;
  *(v7 + 24) = v1 + 16;
  *(v7 + 32) = v8;
  v9 = swift_task_alloc();
  *(v1 + 112) = v9;
  v10 = sub_10000CDE0(&qword_10023CBD8, &qword_1001C1840);
  *v9 = v1;
  v9[1] = sub_10010E5EC;
  v11 = *(v1 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014B6A8, v7, v10);
}

uint64_t sub_10010FC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010FC68, 0, 0);
}

uint64_t sub_10010FC68()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for TokenDatabaseStore;
  v4 = sub_1000997C8();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  v9 = sub_10000CDE0(&qword_10023AFD8, qword_1001B7F28);
  *v8 = v0;
  v8[1] = sub_10010E5EC;
  v10 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014BFE8, v6, v9);
}

uint64_t sub_10010FDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return _swift_task_switch(sub_10010FDD4, 0, 0);
}

uint64_t sub_10010FDD4(uint64_t a1)
{
  v3 = *(v1 + 88);
  v2 = *(v1 + 96);
  v4 = *(v1 + 80);
  *(v1 + 40) = &type metadata for ImpressionDatabaseStore;
  v5 = sub_100146EB4();
  *(v1 + 16) = v4;
  *(v1 + 48) = v5;
  *(v1 + 24) = v3;
  *(v1 + 32) = v2;

  v6 = v2;
  v7 = swift_task_alloc();
  *(v1 + 104) = v7;
  v8 = *(v1 + 64);
  *(v7 + 16) = v6;
  *(v7 + 24) = v1 + 16;
  *(v7 + 32) = v8;
  v9 = swift_task_alloc();
  *(v1 + 112) = v9;
  v10 = sub_10000CDE0(&qword_10023D938, &qword_1001C1DB8);
  *v9 = v1;
  v9[1] = sub_10010F984;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 56, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014D030, v7, v10);
}

uint64_t sub_10010FF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_10010FF40, 0, 0);
}

uint64_t sub_10010FF40()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for ConversionHistoryDatabaseStore;
  v4 = sub_10014ACC4();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  v9 = sub_10000CDE0(&qword_10023B690, &qword_1001B9260);
  *v8 = v0;
  v8[1] = sub_10010E5EC;
  v10 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014AD18, v6, v9);
}

uint64_t sub_100110084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return _swift_task_switch(sub_1001100AC, 0, 0);
}

uint64_t sub_1001100AC(uint64_t a1)
{
  v3 = *(v1 + 88);
  v2 = *(v1 + 96);
  v4 = *(v1 + 80);
  *(v1 + 40) = &type metadata for PostbackDatabaseStore;
  v5 = sub_1001494B0();
  *(v1 + 16) = v4;
  *(v1 + 48) = v5;
  *(v1 + 24) = v3;
  *(v1 + 32) = v2;

  v6 = v2;
  v7 = swift_task_alloc();
  *(v1 + 104) = v7;
  v8 = *(v1 + 64);
  *(v7 + 16) = v6;
  *(v7 + 24) = v1 + 16;
  *(v7 + 32) = v8;
  v9 = swift_task_alloc();
  *(v1 + 112) = v9;
  v10 = sub_10000CDE0(&qword_10023D678, &qword_1001C16E0);
  *v9 = v1;
  v9[1] = sub_10010F984;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 56, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014A818, v7, v10);
}

uint64_t sub_1001101F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return _swift_task_switch(sub_100110218, 0, 0);
}

uint64_t sub_100110218()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for TokenDatabaseStore;
  v4 = sub_1000997C8();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_10010F984;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 56, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10009981C, v6, &type metadata for Int);
}

uint64_t sub_10011034C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  return _swift_task_switch(sub_100110374, 0, 0);
}

uint64_t sub_100110374(uint64_t a1)
{
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  v4 = *(v1 + 72);
  *(v1 + 40) = &type metadata for ImpressionDatabaseStore;
  v5 = sub_100146EB4();
  *(v1 + 16) = v4;
  *(v1 + 48) = v5;
  *(v1 + 24) = v3;
  *(v1 + 32) = v2;

  v6 = v2;
  v7 = swift_task_alloc();
  *(v1 + 96) = v7;
  v8 = *(v1 + 56);
  *(v7 + 16) = v6;
  *(v7 + 24) = v1 + 16;
  *(v7 + 32) = v8;
  v9 = swift_task_alloc();
  *(v1 + 104) = v9;
  *v9 = v1;
  v9[1] = sub_1001104A8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 120, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014C0E0, v7, &type metadata for Bool);
}

uint64_t sub_1001104A8()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001105F8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 120);
    sub_10000DB58((v2 + 16));
    v4 = *(v2 + 8);

    return v4(v3);
  }
}

uint64_t sub_1001105F8()
{

  sub_10000DB58((v0 + 16));
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100110668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_100110690, 0, 0);
}

uint64_t sub_100110690(uint64_t a1)
{
  v3 = *(v1 + 88);
  v2 = *(v1 + 96);
  v4 = *(v1 + 80);
  *(v1 + 40) = &type metadata for ImpressionDatabaseStore;
  v5 = sub_100146EB4();
  *(v1 + 16) = v4;
  *(v1 + 48) = v5;
  *(v1 + 24) = v3;
  *(v1 + 32) = v2;

  v6 = v2;
  v7 = swift_task_alloc();
  *(v1 + 104) = v7;
  v8 = *(v1 + 64);
  *(v7 + 16) = v6;
  *(v7 + 24) = v1 + 16;
  *(v7 + 32) = v8;
  v9 = swift_task_alloc();
  *(v1 + 112) = v9;
  v10 = sub_10000CDE0(&qword_10023A7C8, &qword_1001C17F0);
  *v9 = v1;
  v9[1] = sub_10010E5EC;
  v11 = *(v1 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014AF68, v7, v10);
}

uint64_t sub_1001107D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  return _swift_task_switch(sub_1001107FC, 0, 0);
}

uint64_t sub_1001107FC()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  *(v0 + 104) = &type metadata for AppLaunchDatabaseStore;
  v4 = sub_10014AE44();
  *(v0 + 80) = v3;
  *(v0 + 112) = v4;
  *(v0 + 88) = v2;
  *(v0 + 96) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 168) = v6;
  v7 = *(v0 + 128);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 80;
  *(v6 + 32) = v7;
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  v9 = sub_10000CDE0(&qword_10023B218, qword_1001B83B0);
  *v8 = v0;
  v8[1] = sub_100110940;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014AE98, v6, v9);
}

uint64_t sub_100110940()
{
  v2 = *v1;
  *(v2 + 184) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100110ABC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 120);
    v6 = *(v2 + 16);
    v7 = *(v2 + 32);
    v8 = *(v2 + 48);
    v9 = *(v2 + 64);
    sub_10000DB58((v2 + 80));
    *v3 = v6;
    v3[1] = v7;
    v3[2] = v8;
    v3[3] = v9;

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_100110ABC()
{

  sub_10000DB58((v0 + 80));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100110B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  return _swift_task_switch(sub_100110B50, 0, 0);
}

uint64_t sub_100110B50()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  *(v0 + 88) = &type metadata for ConversionTagDatabaseStore;
  v4 = sub_10014AD70();
  *(v0 + 64) = v3;
  *(v0 + 96) = v4;
  *(v0 + 72) = v2;
  *(v0 + 80) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  v7 = *(v0 + 112);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 64;
  *(v6 + 32) = v7;
  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  v9 = sub_10000CDE0(&qword_10023D6F8, &qword_1001C17A8);
  *v8 = v0;
  v8[1] = sub_100110C94;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014ADC4, v6, v9);
}

uint64_t sub_100110C94()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100110E18, 0, 0);
  }

  else
  {
    v3 = *(v2 + 104);

    v4 = *(v2 + 48);
    v5 = *(v2 + 56);
    v8 = *(v2 + 32);
    v9 = *(v2 + 16);
    sub_10000DB58((v2 + 64));
    *v3 = v9;
    *(v3 + 16) = v8;
    *(v3 + 32) = v4;
    *(v3 + 40) = v5;
    v6 = *(v2 + 8);

    return v6();
  }
}

uint64_t sub_100110E18()
{

  sub_10000DB58((v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100110E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return _swift_task_switch(sub_100110EAC, 0, 0);
}

uint64_t sub_100110EAC()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for SnoutDatabaseStore;
  v4 = sub_10014AB1C();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  v9 = sub_10000CDE0(&qword_10023D690, &qword_1001C1718);
  *v8 = v0;
  v8[1] = sub_10010F984;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 56, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014AB70, v6, v9);
}

uint64_t sub_100110FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_100111018, 0, 0);
}

uint64_t sub_100111018()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for AggregatedReportingDatabaseStore;
  v4 = sub_10014B71C();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  v9 = sub_10000CDE0(&qword_10023D768, &qword_1001C1880);
  *v8 = v0;
  v8[1] = sub_10010E5EC;
  v10 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014B7A4, v6, v9);
}

uint64_t sub_10011115C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_100111184, 0, 0);
}

uint64_t sub_100111184()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for SnoutDatabaseStore;
  v4 = sub_10014AB1C();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  v9 = sub_10000CDE0(&qword_10023C6F0, &unk_1001BC7B0);
  *v8 = v0;
  v8[1] = sub_10010E5EC;
  v10 = *(v0 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014ABB8, v6, v9);
}

uint64_t sub_1001112C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return _swift_task_switch(sub_1001112F0, 0, 0);
}

uint64_t sub_1001112F0()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  *(v0 + 40) = &type metadata for AppMetadataDatabaseStore;
  v4 = sub_10014B970();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  v7 = *(v0 + 72);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  v9 = sub_10000CDE0(&qword_10023D788, &qword_1001C18B8);
  *v8 = v0;
  v8[1] = sub_100111434;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 56, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014B9C4, v6, v9);
}

uint64_t sub_100111434()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100111598, 0, 0);
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    sub_10000DB58((v2 + 16));
    v5 = *(v2 + 8);

    return v5(v3, v4);
  }
}

uint64_t sub_100111598()
{

  sub_10000DB58((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100111604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return _swift_task_switch(sub_10011162C, 0, 0);
}

uint64_t sub_10011162C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v0 + 40) = &type metadata for SnoutDatabaseStore;
  v4 = sub_10014AB1C();
  *(v0 + 16) = v3;
  *(v0 + 48) = v4;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;

  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v0 + 64);
  *(v6 + 16) = v5;
  *(v6 + 24) = v0 + 16;
  *(v6 + 32) = v7;
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  v9 = sub_10000CDE0(&qword_10023D6C8, &qword_1001C1770);
  *v8 = v0;
  v8[1] = sub_10010F984;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 56, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014AC7C, v6, v9);
}

uint64_t sub_100111770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  return _swift_task_switch(sub_100111798, 0, 0);
}

uint64_t sub_100111798(uint64_t a1)
{
  v3 = *(v1 + 144);
  v2 = *(v1 + 152);
  v4 = *(v1 + 136);
  *(v1 + 96) = &type metadata for RetryCountDatabaseStore;
  v5 = sub_100146F68();
  *(v1 + 72) = v4;
  *(v1 + 104) = v5;
  *(v1 + 80) = v3;
  *(v1 + 88) = v2;

  v6 = v2;
  v7 = swift_task_alloc();
  *(v1 + 160) = v7;
  v8 = *(v1 + 120);
  *(v7 + 16) = v6;
  *(v7 + 24) = v1 + 72;
  *(v7 + 32) = v8;
  v9 = swift_task_alloc();
  *(v1 + 168) = v9;
  v10 = sub_10000CDE0(&qword_10023CEF0, &unk_1001BF6E8);
  *v9 = v1;
  v9[1] = sub_1001118DC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 16, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014A7A4, v7, v10);
}

uint64_t sub_1001118DC()
{
  v2 = *v1;
  *(v2 + 176) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100111A5C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 112);

    v4 = *(v2 + 64);
    v8 = *(v2 + 16);
    v9 = *(v2 + 48);
    v7 = *(v2 + 32);
    sub_10000DB58((v2 + 72));
    *v3 = v8;
    *(v3 + 16) = v7;
    *(v3 + 32) = v9;
    *(v3 + 48) = v4;
    v5 = *(v2 + 8);

    return v5();
  }
}

uint64_t sub_100111A5C()
{

  sub_10000DB58((v0 + 72));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100111AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return _swift_task_switch(sub_100111AF0, 0, 0);
}

uint64_t sub_100111AF0(uint64_t a1)
{
  v3 = *(v1 + 88);
  v2 = *(v1 + 96);
  v4 = *(v1 + 80);
  *(v1 + 40) = &type metadata for ImpressionDatabaseStore;
  v5 = sub_100146EB4();
  *(v1 + 16) = v4;
  *(v1 + 48) = v5;
  *(v1 + 24) = v3;
  *(v1 + 32) = v2;

  v6 = v2;
  v7 = swift_task_alloc();
  *(v1 + 104) = v7;
  v8 = *(v1 + 64);
  *(v7 + 16) = v6;
  *(v7 + 24) = v1 + 16;
  *(v7 + 32) = v8;
  v9 = swift_task_alloc();
  *(v1 + 112) = v9;
  v10 = sub_10000CDE0(&qword_10023C6E8, &unk_1001BC790);
  *v9 = v1;
  v9[1] = sub_100111C34;
  v11 = *(v1 + 56);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10014CAB8, v7, v10);
}

uint64_t sub_100111C34()
{
  v2 = *v1;
  v2[15] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10010F7AC, 0, 0);
  }

  else
  {

    sub_10000DB58(v2 + 2);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_100111D78()
{
  v1[140] = v0;
  v2 = type metadata accessor for Calendar.Component();
  v1[141] = v2;
  v1[142] = *(v2 - 8);
  v1[143] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[144] = v3;
  v1[145] = *(v3 - 8);
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v1[148] = v4;
  v1[149] = *(v4 - 8);
  v1[150] = swift_task_alloc();

  return _swift_task_switch(sub_100111EFC, 0, 0);
}

uint64_t sub_100111EFC(uint64_t a1)
{
  v2 = v1[150];
  v3 = v1[149];
  v4 = v1[148];
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v6 = v5;
  v7 = *(v3 + 8);
  v1[151] = v7;
  v1[152] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v7(v2, v4);
  v9 = v6 * 1000.0;
  if (COERCE__INT64(fabs(v6 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v10 = v1[140];
  v11 = v9;
  v13 = v10[3];
  v12 = v10[4];
  v14 = v10[5];
  v15 = swift_allocObject();
  v1[153] = v15;
  *(v15 + 16) = v11;
  v16 = swift_task_alloc();
  v1[154] = v16;
  *v16 = v1;
  v16[1] = sub_100112098;

  return sub_10010F818(sub_10014C180, v15, v13, v12, v14);
}

uint64_t sub_100112098(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1240) = a1;
  *(v3 + 1248) = v1;

  if (v1)
  {
    v4 = sub_100112980;
  }

  else
  {
    v4 = sub_1001121D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001121D0()
{
  v1 = v0[155];
  v2 = v0[140];
  v3 = swift_task_alloc();
  v0[157] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[158] = v4;
  *v4 = v0;
  v4[1] = sub_1001122C0;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_1001122C0()
{

  return _swift_task_switch(sub_1001123D8, 0, 0);
}

uint64_t sub_1001123D8()
{
  v1 = *(v0 + 1240);
  v2 = *(v1 + 16);
  *(v0 + 1272) = v2;
  if (v2)
  {
    *(v0 + 1380) = enum case for Calendar.Component.hour(_:);
    *(v0 + 1280) = 0;
    *(v0 + 688) = *(v1 + 32);
    v3 = *(v1 + 48);
    v4 = *(v1 + 64);
    v5 = *(v1 + 96);
    *(v0 + 736) = *(v1 + 80);
    *(v0 + 752) = v5;
    *(v0 + 704) = v3;
    *(v0 + 720) = v4;
    v6 = *(v1 + 112);
    v7 = *(v1 + 128);
    v8 = *(v1 + 160);
    *(v0 + 800) = *(v1 + 144);
    *(v0 + 816) = v8;
    *(v0 + 768) = v6;
    *(v0 + 784) = v7;
    v9 = *(v0 + 744);
    *(v0 + 1288) = v9;
    v10 = *(v0 + 752);
    *(v0 + 1296) = v10;
    sub_100070EEC(v0 + 688, v0 + 832);

    v11 = swift_task_alloc();
    *(v0 + 1304) = v11;
    *v11 = v0;
    v11[1] = sub_100112560;

    return sub_1001260DC(v9, v10, 0);
  }

  else
  {

    v13 = swift_task_alloc();
    *(v0 + 1320) = v13;
    *v13 = v0;
    v13[1] = sub_100112814;

    return sub_100128208();
  }
}

uint64_t sub_100112560()
{
  v2 = *v1;
  *(*v1 + 1312) = v0;

  if (v0)
  {
    v3 = sub_100112B4C;
  }

  else
  {
    sub_10003BC20(v2 + 688);

    v3 = sub_100112688;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100112688()
{
  v1 = *(v0 + 1280) + 1;
  if (v1 == *(v0 + 1272))
  {

    v2 = swift_task_alloc();
    *(v0 + 1320) = v2;
    *v2 = v0;
    v2[1] = sub_100112814;

    return sub_100128208();
  }

  else
  {
    *(v0 + 1280) = v1;
    v4 = (*(v0 + 1240) + 144 * v1);
    v5 = v4[3];
    v6 = v4[4];
    v7 = v4[6];
    *(v0 + 736) = v4[5];
    *(v0 + 752) = v7;
    v8 = v4[7];
    v9 = v4[8];
    v10 = v4[10];
    *(v0 + 800) = v4[9];
    *(v0 + 816) = v10;
    *(v0 + 768) = v8;
    *(v0 + 784) = v9;
    v11 = v4[2];
    *(v0 + 704) = v5;
    *(v0 + 720) = v6;
    *(v0 + 688) = v11;
    v12 = *(v0 + 744);
    *(v0 + 1288) = v12;
    v13 = *(v0 + 752);
    *(v0 + 1296) = v13;
    sub_100070EEC(v0 + 688, v0 + 832);

    v14 = swift_task_alloc();
    *(v0 + 1304) = v14;
    *v14 = v0;
    v14[1] = sub_100112560;

    return sub_1001260DC(v12, v13, 0);
  }
}

uint64_t sub_100112814()
{
  v2 = *v1;
  *(v2 + 1328) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100113434, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100112980(uint64_t a1)
{
  v2 = v1[147];
  v3 = v1[145];
  v4 = v1[144];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetching postbacks encountered failure %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v1[145] + 8))(v1[147], v1[144]);

  v11 = v1[1];

  return v11();
}

uint64_t sub_100112B4C()
{
  v1 = *(v0 + 1168);
  v2 = *(v0 + 1160);
  v3 = *(v0 + 1152);

  v4 = Logger.postback.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  sub_100070EEC(v0 + 688, v0 + 976);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v0 + 704);
    sub_10003BC20(v0 + 688);
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to delete pre-conversion state for advertised app: %llu", v7, 0xCu);
  }

  else
  {
    sub_10003BC20(v0 + 688);
  }

  v49 = (v0 + 1385);
  v8 = *(v0 + 1312);
  v44 = (v0 + 1369);
  v42 = (v0 + 1390);
  v51 = *(v0 + 1296);
  v48 = (v0 + 1374);
  v45 = (v0 + 1361);
  v38 = *(v0 + 1380);
  v43 = (v0 + 1353);
  v41 = (v0 + 1345);
  v40 = *(v0 + 1208);
  v9 = *(v0 + 1200);
  v39 = *(v0 + 1184);
  v10 = *(v0 + 1168);
  v11 = *(v0 + 1160);
  v12 = *(v0 + 1152);
  v13 = *(v0 + 1144);
  v14 = *(v0 + 1136);
  v15 = *(v0 + 1128);
  v52 = *(v0 + 1120);

  v16 = *(v0 + 760);
  (*(v11 + 8))(v10, v12);
  v50 = v16 > 1;
  swift_errorRetain();
  v17 = sub_1000C7C10(v8);
  v19 = v18;
  v46 = v20;
  v47 = v21;
  static Date.now.getter();
  (*(v14 + 104))(v13, v38, v15);
  v22 = sub_100025808(v9, v13);
  LOBYTE(v16) = v23;
  (*(v14 + 8))(v13, v15);
  v40(v9, v39);
  if (v16)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  v25 = [objc_opt_self() buildVersion];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  *(v0 + 340) = *(v0 + 1348);
  *(v0 + 337) = *v41;
  *(v0 + 354) = *v42;
  *(v0 + 372) = *(v0 + 1356);
  *(v0 + 369) = *v43;
  *(v0 + 387) = *v44;
  *(v0 + 404) = *(v0 + 1364);
  *(v0 + 401) = *v45;
  *(v0 + 427) = *v49;
  *(v0 + 1344) = 1;
  *(v0 + 1352) = 1;
  *(v0 + 1360) = 1;
  *(v0 + 1368) = 1;
  *(v0 + 1384) = 1;
  *(v0 + 18) = *v48;
  *(v0 + 22) = *(v0 + 1378);
  *(v0 + 321) = 33686018;
  *(v0 + 97) = 33686018;
  *(v0 + 113) = *v41;
  *(v0 + 116) = *(v0 + 1348);
  *(v0 + 130) = *v42;
  *(v0 + 134) = *(v0 + 1394);
  *(v0 + 148) = *(v0 + 1356);
  *(v0 + 145) = *v43;
  *(v0 + 167) = *(v0 + 1373);
  *(v0 + 163) = *v44;
  *(v0 + 177) = *v45;
  *(v0 + 180) = *(v0 + 1364);
  *(v0 + 207) = *(v0 + 1389);
  *(v0 + 16) = 5;
  *(v0 + 203) = *v49;
  *(v0 + 240) = 5;
  *(v0 + 246) = *(v0 + 1378);
  *(v0 + 242) = *v48;
  *(v0 + 248) = v17;
  *(v0 + 256) = v19;
  *(v0 + 24) = v17;
  *(v0 + 32) = v19;
  *(v0 + 264) = v46;
  *(v0 + 272) = v47;
  *(v0 + 40) = v46;
  *(v0 + 48) = v47;
  *(v0 + 296) = v24;
  *(v0 + 304) = v26;
  *(v0 + 72) = v24;
  *(v0 + 80) = v26;
  *(v0 + 88) = v28;
  *(v0 + 312) = v28;
  *(v0 + 101) = 1;
  *(v0 + 325) = 1;
  v29 = *(v0 + 1344);
  *(v0 + 112) = v29;
  *(v0 + 336) = v29;
  v30 = *(v0 + 1352);
  *(v0 + 128) = v30;
  *(v0 + 352) = v30;
  *(v0 + 358) = *(v0 + 1394);
  v31 = *(v0 + 1360);
  *(v0 + 144) = v31;
  *(v0 + 368) = v31;
  v32 = *(v0 + 1368);
  *(v0 + 160) = v32;
  *(v0 + 384) = v32;
  *(v0 + 161) = v50;
  *(v0 + 385) = v50;
  *(v0 + 129) = 3;
  *(v0 + 162) = 3;
  *(v0 + 353) = 3;
  *(v0 + 386) = 3;
  *(v0 + 391) = *(v0 + 1373);
  v33 = *(v0 + 1384);
  *(v0 + 176) = v33;
  *(v0 + 400) = v33;
  *(v0 + 200) = 514;
  *(v0 + 424) = 514;
  *(v0 + 202) = 2;
  *(v0 + 426) = 2;
  *(v0 + 431) = *(v0 + 1389);
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 120) = 0;
  *(v0 + 136) = 0;
  *(v0 + 152) = 0;
  *(v0 + 168) = 0;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 280) = 0;
  *(v0 + 288) = 0;
  *(v0 + 320) = 0;
  *(v0 + 328) = 0;
  *(v0 + 344) = 0;
  *(v0 + 360) = 0;
  *(v0 + 376) = 0;
  *(v0 + 392) = 0;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  sub_100010568(v0 + 16, v0 + 464);
  sub_10003AE8C(v0 + 240);
  sub_10000DA7C((v52 + 560), *(v52 + 584));
  v34 = type metadata accessor for SnoutManager(0);

  v35 = swift_task_alloc();
  *(v0 + 1336) = v35;
  *v35 = v0;
  v35[1] = sub_100113178;
  v36 = *(v0 + 1288);

  return (sub_10016E27C)(v0 + 16, v36, v51, 1, v34, &off_100223858);
}

uint64_t sub_100113178()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 16);

  sub_10003BC20(v1 + 688);

  return _swift_task_switch(sub_1001132A0, 0, 0);
}

uint64_t sub_1001132A0()
{

  v1 = *(v0 + 1280) + 1;
  if (v1 == *(v0 + 1272))
  {

    v2 = swift_task_alloc();
    *(v0 + 1320) = v2;
    *v2 = v0;
    v2[1] = sub_100112814;

    return sub_100128208();
  }

  else
  {
    *(v0 + 1280) = v1;
    v4 = (*(v0 + 1240) + 144 * v1);
    v5 = v4[3];
    v6 = v4[4];
    v7 = v4[6];
    *(v0 + 736) = v4[5];
    *(v0 + 752) = v7;
    v8 = v4[7];
    v9 = v4[8];
    v10 = v4[10];
    *(v0 + 800) = v4[9];
    *(v0 + 816) = v10;
    *(v0 + 768) = v8;
    *(v0 + 784) = v9;
    v11 = v4[2];
    *(v0 + 704) = v5;
    *(v0 + 720) = v6;
    *(v0 + 688) = v11;
    v12 = *(v0 + 744);
    *(v0 + 1288) = v12;
    v13 = *(v0 + 752);
    *(v0 + 1296) = v13;
    sub_100070EEC(v0 + 688, v0 + 832);

    v14 = swift_task_alloc();
    *(v0 + 1304) = v14;
    *v14 = v0;
    v14[1] = sub_100112560;

    return sub_1001260DC(v12, v13, 0);
  }
}

uint64_t sub_100113434(uint64_t a1)
{
  v2 = v1[147];
  v3 = v1[145];
  v4 = v1[144];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetching postbacks encountered failure %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v1[145] + 8))(v1[147], v1[144]);

  v11 = v1[1];

  return v11();
}

id sub_100113600(void *a1, id a2)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000EF094(a1);

  if (!v2)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      type metadata accessor for PostbackEntity();
      v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      a2 = [v5 initWithPropertyValues:isa onConnection:a2];

      if (([a2 existsInDatabase] & 1) == 0)
      {
        type metadata accessor for AKSQLError(0);
        sub_10008976C(_swiftEmptyArrayStorage);
        sub_10014CA00(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
        _BridgedStoredNSError.init(_:userInfo:)();
        swift_willThrow();
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_10014CA00(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_100113838(__int128 *a1, id a2)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000EFCC8(a1);

  if (!v2)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      type metadata accessor for GhostbackEntity();
      v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      a2 = [v5 initWithPropertyValues:isa onConnection:a2];

      if (([a2 existsInDatabase] & 1) == 0)
      {
        type metadata accessor for AKSQLError(0);
        sub_10008976C(_swiftEmptyArrayStorage);
        sub_10014CA00(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
        _BridgedStoredNSError.init(_:userInfo:)();
        swift_willThrow();
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_10014CA00(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_100113A70(unsigned __int8 a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    sub_100146DA4(0, v3, 0);
    v4 = (a2 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v7 = v6 == 1;
      if (v6 == 1)
      {
        v8 = 0x6F6C6E776F646572;
      }

      else
      {
        v8 = 0x6761676E652D6572;
      }

      if (v7)
      {
        v9 = 0xEA00000000006461;
      }

      else
      {
        v9 = 0xED0000746E656D65;
      }

      if (v5)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0x64616F6C6E776F64;
      }

      if (v5)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xE800000000000000;
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_100146DA4((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v10;
      v14[5] = v11;
      --v3;
    }

    while (v3);
  }

  v15 = String._bridgeToObjectiveC()();

  sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
  v16 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v17 = [objc_opt_self() containsPredicateWithProperty:v15 values:v16];

  swift_unknownObjectRelease();

  return v17;
}

id sub_100113DBC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a1);
  v4 = *(a2 + 16);
  if (v4)
  {
    sub_100146DA4(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = (a2 + 32);
    v7 = _swiftEmptyArrayStorage[2];
    v8 = 2 * v7;
    v9 = 0x69746375646F7270;
    do
    {
      if (*v6)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0x6D706F6C65766564;
      }

      if (*v6)
      {
        v11 = 0xEA00000000006E6FLL;
      }

      else
      {
        v11 = 0xEB00000000746E65;
      }

      v20 = v5;
      v12 = v5[3];
      v13 = v7 + 1;
      if (v7 >= v12 >> 1)
      {
        v15 = v9;
        sub_100146DA4((v12 > 1), v7 + 1, 1);
        v9 = v15;
        v5 = v20;
      }

      v5[2] = v13;
      v14 = &v5[v8];
      v14[4] = v10;
      v14[5] = v11;
      v8 += 2;
      ++v6;
      v7 = v13;
      --v4;
    }

    while (v4);
  }

  v16 = String._bridgeToObjectiveC()();

  sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
  v17 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v18 = [objc_opt_self() containsPredicateWithProperty:v16 values:v17];

  swift_unknownObjectRelease();

  return v18;
}

uint64_t sub_100113F8C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D7F0, &qword_1001C1918);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014BF80;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100221BB8;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_100114338(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D650, &qword_1001C1628);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014A0CC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_1002205B0;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_1001146E4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D750, &qword_1001C1858);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014B6C8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100221348;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_100114A90(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D7F8, &qword_1001C1930);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014C008;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100221C80;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_100114E3C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D940, &qword_1001C1DC0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014D050;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_1002223D0;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_1001151E8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D6E0, &qword_1001C1790);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014AD38;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100220EC0;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_100115594(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D680, &qword_1001C16E8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014A838;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100220998;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_100115940(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D808, &qword_1001C1948);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014C054;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100221D48;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_100115CEC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D810, &qword_1001C1958);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014C100;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100221E10;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_100116098(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D730, &qword_1001C17F8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014AF88;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100221118;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_100116444(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D720, &qword_1001C17D8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014AEB8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100221050;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_1001167F0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D700, &qword_1001C17B0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014ADE4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100220F88;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_100116B9C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D698, &qword_1001C1720);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014AB90;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100220BA0;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_100116F48(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D770, &qword_1001C1888);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014B7C4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_1002214D8;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_1001172F4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D6A0, &qword_1001C1738);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014ABD8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100220C68;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_1001176A0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D790, &qword_1001C18C0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014B9E4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100221938;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_100117A4C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D6D0, &qword_1001C1778);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014AC9C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100220DF8;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_100117DF8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D668, &qword_1001C16D0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014A7C4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_1002208A8;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_1001181A4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D860, &qword_1001C19F0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014CAD8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100222040;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

void sub_100118550(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(type metadata accessor for ImpressionDatabaseSession()) initWithConnection:*(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection)];
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = sub_10011F680(a2, v7, sub_10014BFA8, v8);

  sub_10000CDE0(&qword_10023D7F0, &qword_1001C1918);
  CheckedContinuation.resume(returning:)();
}

void sub_100118674(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(type metadata accessor for GhostbackDatabaseSession()) initWithConnection:*(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection)];
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = sub_10011F894(a2, v7, sub_10014D2B0, v8);

  sub_10000CDE0(&qword_10023D650, &qword_1001C1628);
  CheckedContinuation.resume(returning:)();
}

void sub_100118798(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for GhostbackDatabaseSession());
  v9 = *(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v10 = [v8 initWithConnection:v9];
  v29[2] = a3;
  v29[3] = a4;
  sub_10006158C(a2, 0);
  v11 = @"AKSQLErrorDomain";
  v12 = String._bridgeToObjectiveC()();
  v13 = AKErrorWithDescription(v11, 7, v12);

  *&v61 = v13;
  sub_10014B6F0(&v61);
  v14 = swift_allocObject();
  v14[2] = sub_100149424;
  v14[3] = v29;
  v14[4] = v10;
  v14[5] = &v61;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10014B6FC;
  *(v15 + 24) = v14;
  *&v53 = sub_10014D564;
  *(&v53 + 1) = v15;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v52 = sub_100121018;
  *(&v52 + 1) = &unk_1002213C0;
  v16 = _Block_copy(&aBlock);
  v17 = v10;

  sub_1000064FC(v9, v16);
  _Block_release(v16);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v77 = v67;
    v78 = v68;
    v79 = v69;
    v73 = v63;
    v74 = v64;
    v75 = v65;
    v76 = v66;
    v71 = v61;
    v72 = v62;
    v81[6] = v67;
    v81[7] = v68;
    v81[8] = v69;
    v81[2] = v63;
    v81[3] = v64;
    v81[4] = v65;
    v81[5] = v66;
    v80 = v70;
    v82 = v70;
    v81[0] = v61;
    v81[1] = v62;
    if (sub_10014B70C(v81) == 1)
    {
      MeasurementWindowConfiguration.sourceIDDigits.getter();
      v37 = v77;
      v38 = v78;
      v39 = v79;
      v40 = v80;
      v33 = v73;
      v34 = v74;
      v35 = v75;
      v36 = v76;
      v31 = v71;
      v32 = v72;
      MeasurementWindowConfiguration.sourceIDDigits.getter();
      v19 = *v18;
      swift_willThrow();
      v47 = v67;
      v48 = v68;
      v49 = v69;
      v50 = v70;
      v43 = v63;
      v44 = v64;
      v45 = v65;
      v46 = v66;
      v41 = v61;
      v42 = v62;
      v57 = v77;
      v58 = v78;
      v59 = v79;
      v60 = v80;
      v53 = v73;
      v54 = v74;
      v55 = v75;
      v56 = v76;
      aBlock = v71;
      v52 = v72;
      MeasurementWindowConfiguration.sourceIDDigits.getter();
      swift_errorRetain();
      sub_10000DAF8(&v41, &qword_10023D758, &qword_1001C1860);

      *&v81[0] = v19;
      swift_errorRetain();
      sub_10000CDE0(&qword_10023D750, &qword_1001C1858);
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      MeasurementWindowConfiguration.sourceIDDigits.getter();
      v37 = v77;
      v38 = v78;
      v39 = v79;
      v40 = v80;
      v33 = v73;
      v34 = v74;
      v35 = v75;
      v36 = v76;
      v31 = v71;
      v32 = v72;
      MeasurementWindowConfiguration.sourceIDDigits.getter();
      v21 = v20;
      v47 = v67;
      v48 = v68;
      v49 = v69;
      v50 = v70;
      v43 = v63;
      v44 = v64;
      v45 = v65;
      v46 = v66;
      v41 = v61;
      v42 = v62;
      v57 = v77;
      v58 = v78;
      v59 = v79;
      v60 = v80;
      v53 = v73;
      v54 = v74;
      v55 = v75;
      v56 = v76;
      aBlock = v71;
      v52 = v72;
      MeasurementWindowConfiguration.sourceIDDigits.getter();
      sub_100014B50(v22, v30, &qword_10023CBD8, &qword_1001C1840);
      sub_10000DAF8(&v41, &qword_10023D758, &qword_1001C1860);

      v30[0] = *v21;
      v23 = v21[1];
      v24 = v21[2];
      v25 = v21[4];
      v30[3] = v21[3];
      v30[4] = v25;
      v30[1] = v23;
      v30[2] = v24;
      v26 = v21[5];
      v27 = v21[6];
      v28 = v21[8];
      v30[7] = v21[7];
      v30[8] = v28;
      v30[5] = v26;
      v30[6] = v27;
      sub_10000CDE0(&qword_10023D750, &qword_1001C1858);
      CheckedContinuation.resume(returning:)();
    }
  }
}

void sub_100118C98(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for TokenDatabaseSession());
  v9 = *(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v10 = [v8 initWithConnection:v9];
  v19[2] = a3;
  v19[3] = a4;
  sub_10006158C(a2, 0);
  v11 = @"AKSQLErrorDomain";
  v12 = String._bridgeToObjectiveC()();
  v13 = AKErrorWithDescription(v11, 7, v12);

  *v34 = v13;
  v34[99] = 1;
  v14 = swift_allocObject();
  v14[2] = sub_100149424;
  v14[3] = v19;
  v14[4] = v10;
  v14[5] = v34;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10014C030;
  *(v15 + 24) = v14;
  *&aBlock[32] = sub_10014D564;
  *&aBlock[40] = v15;
  *aBlock = _NSConcreteStackBlock;
  *&aBlock[8] = 1107296256;
  *&aBlock[16] = sub_100121018;
  *&aBlock[24] = &unk_100221CF8;
  v16 = _Block_copy(aBlock);
  v17 = v10;

  sub_1000064FC(v9, v16);
  _Block_release(v16);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v18 = *v34;
    if (v34[99])
    {
      swift_willThrow();
      *&aBlock[64] = *&v34[64];
      *&aBlock[80] = *&v34[80];
      *&aBlock[96] = *&v34[96];
      *aBlock = *v34;
      *&aBlock[16] = *&v34[16];
      *&aBlock[32] = *&v34[32];
      *&aBlock[48] = *&v34[48];
      swift_errorRetain();
      sub_10000DAF8(aBlock, &qword_10023D800, &qword_1001C1938);

      *v34 = v18;
      swift_errorRetain();
      sub_10000CDE0(&qword_10023D7F8, &qword_1001C1930);
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      v28 = *&v34[40];
      v29 = *&v34[56];
      v30[0] = *&v34[72];
      *(v30 + 11) = *&v34[83];
      v26 = *&v34[8];
      v27 = *&v34[24];
      v31[4] = *&v34[64];
      v31[5] = *&v34[80];
      v32 = *&v34[96];
      v31[0] = *v34;
      v31[1] = *&v34[16];
      v31[2] = *&v34[32];
      v31[3] = *&v34[48];
      *aBlock = *v34;
      *&aBlock[24] = *&v34[24];
      *&aBlock[8] = *&v34[8];
      *&aBlock[83] = *&v34[83];
      *&aBlock[72] = *&v34[72];
      *&aBlock[56] = *&v34[56];
      *&aBlock[40] = *&v34[40];
      aBlock[99] = v34[99];
      sub_100014B50(aBlock, &v20, &qword_10023AFD8, qword_1001B7F28);
      sub_10000DAF8(v31, &qword_10023D800, &qword_1001C1938);

      v20 = v18;
      v23 = v28;
      v24 = v29;
      v25[0] = v30[0];
      *(v25 + 11) = *(v30 + 11);
      v21 = v26;
      v22 = v27;
      sub_10000CDE0(&qword_10023D7F8, &qword_1001C1930);
      CheckedContinuation.resume(returning:)();
    }
  }
}

void sub_100119078(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(type metadata accessor for ImpressionDatabaseSession()) initWithConnection:*(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection)];
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = sub_10011FAA8(a2, v7, sub_10014D2B0, v8);

  sub_10000CDE0(&qword_10023D940, &qword_1001C1DC0);
  CheckedContinuation.resume(returning:)();
}

void sub_10011919C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for ConversionHistoryDatabaseSession());
  v9 = *(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v10 = [v8 initWithConnection:v9];
  v19[2] = a3;
  v19[3] = a4;
  sub_10006158C(a2, 0);
  v11 = @"AKSQLErrorDomain";
  v12 = String._bridgeToObjectiveC()();
  v13 = AKErrorWithDescription(v11, 7, v12);

  *v34 = v13;
  v34[88] = 1;
  v14 = swift_allocObject();
  v14[2] = sub_100149424;
  v14[3] = v19;
  v14[4] = v10;
  v14[5] = v34;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10014AD60;
  *(v15 + 24) = v14;
  *&aBlock[32] = sub_10014D564;
  *&aBlock[40] = v15;
  *aBlock = _NSConcreteStackBlock;
  *&aBlock[8] = 1107296256;
  *&aBlock[16] = sub_100121018;
  *&aBlock[24] = &unk_100220F38;
  v16 = _Block_copy(aBlock);
  v17 = v10;

  sub_1000064FC(v9, v16);
  _Block_release(v16);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v18 = *v34;
    if (v34[88])
    {
      swift_willThrow();
      *&aBlock[32] = *&v34[32];
      *&aBlock[48] = *&v34[48];
      *&aBlock[64] = *&v34[64];
      *&aBlock[73] = *&v34[73];
      *aBlock = *v34;
      *&aBlock[16] = *&v34[16];
      swift_errorRetain();
      sub_10000DAF8(aBlock, &qword_10023D6E8, &qword_1001C1798);

      *v34 = v18;
      swift_errorRetain();
      sub_10000CDE0(&qword_10023D6E0, &qword_1001C1790);
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      v28 = *&v34[40];
      v29 = *&v34[56];
      v26 = *&v34[8];
      v27 = *&v34[24];
      v31[2] = *&v34[32];
      v31[3] = *&v34[48];
      v32[0] = *&v34[64];
      *(v32 + 9) = *&v34[73];
      v30 = *&v34[72];
      v31[0] = *v34;
      v31[1] = *&v34[16];
      *aBlock = *v34;
      *&aBlock[72] = *&v34[72];
      *&aBlock[24] = *&v34[24];
      *&aBlock[40] = *&v34[40];
      *&aBlock[8] = *&v34[8];
      *&aBlock[56] = *&v34[56];
      aBlock[88] = v34[88];
      sub_100014B50(aBlock, &v20, &qword_10023B690, &qword_1001B9260);
      sub_10000DAF8(v31, &qword_10023D6E8, &qword_1001C1798);

      v20 = v18;
      v22 = v27;
      v23 = v28;
      v24 = v29;
      v25 = v30;
      v21 = v26;
      sub_10000CDE0(&qword_10023D6E0, &qword_1001C1790);
      CheckedContinuation.resume(returning:)();
    }
  }
}

void sub_100119560(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(type metadata accessor for PostbackDatabaseSession()) initWithConnection:*(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection)];
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = sub_10011FCBC(a2, v7, sub_10014D2B0, v8);

  sub_10000CDE0(&qword_10023D680, &qword_1001C16E8);
  CheckedContinuation.resume(returning:)();
}

void sub_100119684(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(type metadata accessor for TokenDatabaseSession()) initWithConnection:*(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection)];
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = sub_10011FED0(a2, v7, sub_10014C07C, v8);
  sub_10000CDE0(&qword_10023D808, &qword_1001C1948);
  CheckedContinuation.resume(returning:)();
}

void sub_100119798(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(type metadata accessor for ImpressionDatabaseSession()) initWithConnection:*(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection)];
  v8[2] = a3;
  v8[3] = a4;
  LOBYTE(v9) = sub_1001200E4(a2, v7, sub_10014C128, v8) & 1;
  sub_10000CDE0(&qword_10023D810, &qword_1001C1958);
  CheckedContinuation.resume(returning:)();
}

uint64_t sub_1001198B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = sub_10000CDE0(&qword_10023D738, &qword_1001C1800);
  v10 = __chkstk_darwin(v40);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v39 = (&v35 - v13);
  v14 = sub_10000CDE0(&qword_10023A7C8, &qword_1001C17F0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v35 - v18;
  v20 = objc_allocWithZone(type metadata accessor for ImpressionDatabaseSession());
  v21 = *(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v22 = [v20 initWithConnection:v21];
  v42 = a3;
  v43 = a4;
  sub_10006158C(a2, 0);
  v36 = v19;
  v37 = v12;
  v35 = v17;
  v38 = a5;
  v23 = @"AKSQLErrorDomain";
  v24 = String._bridgeToObjectiveC()();
  v25 = AKErrorWithDescription(v23, 7, v24);

  v26 = v39;
  *v39 = v25;
  swift_storeEnumTagMultiPayload();
  v27 = swift_allocObject();
  v27[2] = sub_100149424;
  v27[3] = &v41;
  v27[4] = v22;
  v27[5] = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_10014AFB0;
  *(v28 + 24) = v27;
  aBlock[4] = sub_10014D564;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100121018;
  aBlock[3] = &unk_100221190;
  v29 = _Block_copy(aBlock);
  v30 = v22;

  sub_1000064FC(v21, v29);
  _Block_release(v29);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }

  else
  {
    v32 = v37;
    sub_100014B50(v26, v37, &qword_10023D738, &qword_1001C1800);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = *v32;
      swift_willThrow();
      sub_10000DAF8(v26, &qword_10023D738, &qword_1001C1800);

      aBlock[0] = v33;
      swift_errorRetain();
      sub_10000CDE0(&qword_10023D730, &qword_1001C17F8);
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      v34 = v36;
      sub_10014AFF8(v32, v36, &qword_10023A7C8, &qword_1001C17F0);
      sub_10000DAF8(v26, &qword_10023D738, &qword_1001C1800);

      sub_100014B50(v34, v35, &qword_10023A7C8, &qword_1001C17F0);
      sub_10000CDE0(&qword_10023D730, &qword_1001C17F8);
      CheckedContinuation.resume(returning:)();

      return sub_10000DAF8(v34, &qword_10023A7C8, &qword_1001C17F0);
    }
  }

  return result;
}

uint64_t sub_100119D20(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(type metadata accessor for AppLaunchDatabaseSession()) initWithConnection:*(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection)];
  v9[2] = a3;
  v9[3] = a4;
  sub_1001202F8(a2, v7, sub_10014AEE0, v9, v15);
  v11 = v15[0];
  v12 = v15[1];
  v13 = v15[2];
  v14 = v15[3];
  sub_100014B50(v15, v10, &qword_10023B218, qword_1001B83B0);
  sub_10000CDE0(&qword_10023D720, &qword_1001C17D8);
  CheckedContinuation.resume(returning:)();

  return sub_10000DAF8(v15, &qword_10023B218, qword_1001B83B0);
}

void sub_100119E80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(type metadata accessor for ConversionTagDatabaseSession()) initWithConnection:*(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection)];
  v8[2] = a3;
  v8[3] = a4;
  sub_100120550(a2, v7, sub_10014AE0C, v8, &v11);
  v9 = v11;
  v10[0] = v12[0];
  *(v10 + 9) = *(v12 + 9);
  sub_10000CDE0(&qword_10023D700, &qword_1001C17B0);
  CheckedContinuation.resume(returning:)();
}

void sub_100119FA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(type metadata accessor for SnoutDatabaseSession()) initWithConnection:*(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection)];
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = sub_100120794(a2, v7, sub_10014D2B0, v8);

  sub_10000CDE0(&qword_10023D698, &qword_1001C1720);
  CheckedContinuation.resume(returning:)();
}

void sub_10011A0C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for AggregatedReportingDatabaseSession());
  v9 = *(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v10 = [v8 initWithConnection:v9];
  v19[2] = a3;
  v19[3] = a4;
  sub_10006158C(a2, 0);
  v11 = @"AKSQLErrorDomain";
  v12 = String._bridgeToObjectiveC()();
  v13 = AKErrorWithDescription(v11, 7, v12);

  *v33 = v13;
  v34 = 1;
  v14 = swift_allocObject();
  v14[2] = sub_100149424;
  v14[3] = v19;
  v14[4] = v10;
  v14[5] = v33;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10014B7EC;
  *(v15 + 24) = v14;
  *&aBlock[32] = sub_10014D564;
  *&aBlock[40] = v15;
  *aBlock = _NSConcreteStackBlock;
  *&aBlock[8] = 1107296256;
  *&aBlock[16] = sub_100121018;
  *&aBlock[24] = &unk_100221550;
  v16 = _Block_copy(aBlock);
  v17 = v10;

  sub_1000064FC(v9, v16);
  _Block_release(v16);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v18 = *v33;
    if (v34)
    {
      swift_willThrow();
      *&aBlock[32] = *&v33[32];
      *&aBlock[48] = *&v33[48];
      v32 = v34;
      *aBlock = *v33;
      *&aBlock[16] = *&v33[16];
      swift_errorRetain();
      sub_10000DAF8(aBlock, &qword_10023D778, &qword_1001C1890);

      *v33 = v18;
      swift_errorRetain();
      sub_10000CDE0(&qword_10023D770, &qword_1001C1888);
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      v28 = *&v33[56];
      v30 = v34;
      v25 = *&v33[8];
      v26 = *&v33[24];
      v27 = *&v33[40];
      v29[2] = *&v33[32];
      v29[3] = *&v33[48];
      v29[0] = *v33;
      v29[1] = *&v33[16];
      *aBlock = *v33;
      *&aBlock[56] = *&v33[56];
      *&aBlock[8] = *&v33[8];
      *&aBlock[24] = *&v33[24];
      *&aBlock[40] = *&v33[40];
      v32 = v34;
      sub_100014B50(aBlock, &v20, &qword_10023D768, &qword_1001C1880);
      sub_10000DAF8(v29, &qword_10023D778, &qword_1001C1890);

      v20 = v18;
      v21 = v25;
      v22 = v26;
      v23 = v27;
      v24 = v28;
      sub_10000CDE0(&qword_10023D770, &qword_1001C1888);
      CheckedContinuation.resume(returning:)();
    }
  }
}

uint64_t sub_10011A474(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = sub_10000CDE0(&qword_10023D6A8, &qword_1001C1740);
  v10 = __chkstk_darwin(v40);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v39 = (&v35 - v13);
  v14 = sub_10000CDE0(&qword_10023C6F0, &unk_1001BC7B0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v35 - v18;
  v20 = objc_allocWithZone(type metadata accessor for SnoutDatabaseSession());
  v21 = *(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v22 = [v20 initWithConnection:v21];
  v42 = a3;
  v43 = a4;
  sub_10006158C(a2, 0);
  v36 = v19;
  v37 = v12;
  v35 = v17;
  v38 = a5;
  v23 = @"AKSQLErrorDomain";
  v24 = String._bridgeToObjectiveC()();
  v25 = AKErrorWithDescription(v23, 7, v24);

  v26 = v39;
  *v39 = v25;
  swift_storeEnumTagMultiPayload();
  v27 = swift_allocObject();
  v27[2] = sub_10014D298;
  v27[3] = &v41;
  v27[4] = v22;
  v27[5] = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_10014AC00;
  *(v28 + 24) = v27;
  aBlock[4] = sub_10014D564;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100121018;
  aBlock[3] = &unk_100220CE0;
  v29 = _Block_copy(aBlock);
  v30 = v22;

  sub_1000064FC(v21, v29);
  _Block_release(v29);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }

  else
  {
    v32 = v37;
    sub_100014B50(v26, v37, &qword_10023D6A8, &qword_1001C1740);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = *v32;
      swift_willThrow();
      sub_10000DAF8(v26, &qword_10023D6A8, &qword_1001C1740);

      aBlock[0] = v33;
      swift_errorRetain();
      sub_10000CDE0(&qword_10023D6A0, &qword_1001C1738);
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      v34 = v36;
      sub_10014AFF8(v32, v36, &qword_10023C6F0, &unk_1001BC7B0);
      sub_10000DAF8(v26, &qword_10023D6A8, &qword_1001C1740);

      sub_100014B50(v34, v35, &qword_10023C6F0, &unk_1001BC7B0);
      sub_10000CDE0(&qword_10023D6A0, &qword_1001C1738);
      CheckedContinuation.resume(returning:)();

      return sub_10000DAF8(v34, &qword_10023C6F0, &unk_1001BC7B0);
    }
  }

  return result;
}

void sub_10011A8E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(type metadata accessor for AppMetadataDatabaseSession()) initWithConnection:*(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection)];
  v9[2] = a3;
  v9[3] = a4;
  v9[5] = sub_1001209A8(a2, v7, sub_10014BA0C, v9);
  v10 = v8 & 1;
  sub_10000CDE0(&qword_10023D790, &qword_1001C18C0);
  CheckedContinuation.resume(returning:)();
}

void sub_10011AA00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(type metadata accessor for SnoutDatabaseSession()) initWithConnection:*(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection)];
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = sub_100120BC4(a2, v7, sub_10014D2B0, v8);

  sub_10000CDE0(&qword_10023D6D0, &qword_1001C1778);
  CheckedContinuation.resume(returning:)();
}

uint64_t sub_10011AB24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(type metadata accessor for RetryCountDatabaseSession()) initWithConnection:*(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection)];
  v9[2] = a3;
  v9[3] = a4;
  sub_100120DD8(a2, v7, sub_10014A7EC, v9, v15);
  v11 = v15[0];
  v12 = v15[1];
  v13 = v15[2];
  v14 = v16;
  sub_100014B50(v15, v10, &qword_10023CEF0, &unk_1001BF6E8);
  sub_10000CDE0(&qword_10023D668, &qword_1001C16D0);
  CheckedContinuation.resume(returning:)();

  return sub_10000DAF8(v15, &qword_10023CEF0, &unk_1001BF6E8);
}

void sub_10011AC90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for ImpressionDatabaseSession());
  v9 = *(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v10 = [v8 initWithConnection:v9];
  v19[2] = a3;
  v19[3] = a4;
  sub_10006158C(a2, 0);
  v11 = @"AKSQLErrorDomain";
  v12 = String._bridgeToObjectiveC()();
  v13 = AKErrorWithDescription(v11, 7, v12);

  *v32 = v13;
  v32[72] = 1;
  v14 = swift_allocObject();
  v14[2] = sub_100149424;
  v14[3] = v19;
  v14[4] = v10;
  v14[5] = v32;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10014CB00;
  *(v15 + 24) = v14;
  *&aBlock[32] = sub_10014D564;
  *&aBlock[40] = v15;
  *aBlock = _NSConcreteStackBlock;
  *&aBlock[8] = 1107296256;
  *&aBlock[16] = sub_100121018;
  *&aBlock[24] = &unk_1002220B8;
  v16 = _Block_copy(aBlock);
  v17 = v10;

  sub_1000064FC(v9, v16);
  _Block_release(v16);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    v18 = *v32;
    if (v32[72])
    {
      swift_willThrow();
      *&aBlock[32] = *&v32[32];
      *&aBlock[48] = *&v32[48];
      *&aBlock[57] = *&v32[57];
      *aBlock = *v32;
      *&aBlock[16] = *&v32[16];
      swift_errorRetain();
      sub_10000DAF8(aBlock, &qword_10023D868, &qword_1001C19F8);

      *v32 = v18;
      swift_errorRetain();
      sub_10000CDE0(&qword_10023D860, &qword_1001C19F0);
      CheckedContinuation.resume(throwing:)();
    }

    else
    {
      v25 = *&v32[8];
      v26 = *&v32[24];
      v27 = *&v32[40];
      v28 = *&v32[56];
      v29[2] = *&v32[32];
      v30[0] = *&v32[48];
      *(v30 + 9) = *&v32[57];
      v29[0] = *v32;
      v29[1] = *&v32[16];
      *aBlock = *v32;
      *&aBlock[56] = *&v32[56];
      *&aBlock[8] = *&v32[8];
      *&aBlock[24] = *&v32[24];
      *&aBlock[40] = *&v32[40];
      aBlock[72] = v32[72];
      sub_100014B50(aBlock, &v20, &qword_10023C6E8, &unk_1001BC790);
      sub_10000DAF8(v29, &qword_10023D868, &qword_1001C19F8);

      v20 = v18;
      v21 = v25;
      v22 = v26;
      v23 = v27;
      v24 = v28;
      sub_10000CDE0(&qword_10023D860, &qword_1001C19F0);
      CheckedContinuation.resume(returning:)();
    }
  }
}

uint64_t sub_10011B034(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014BA84;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100221A00;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_10011B3E0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_1001493FC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100220330;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_10011B78C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_100146FDC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_1002201A0;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_10011BB38(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_100149358;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100220268;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_10011BEE4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014A084;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_1002204E8;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_10011C290(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014B914;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_1002217A8;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_10011C63C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014B948;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100221870;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_10011C9E8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_100149510;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100220420;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_10011CD94(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014B06C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_1002211E0;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_10011D140(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014B77C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100221410;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_10011D4EC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a1;
  v24 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v26 = *(v11 - 8);
  v27 = v11;
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v25 = *&a2[OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_transactionQueue];
  sub_10000CE28(a3, v31);
  (*(v15 + 16))(v17, v23, v14);
  v18 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a2;
  sub_10000DA64(v31, (v19 + 24));
  *(v19 + 8) = v24;
  *(v19 + 9) = a5;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = sub_10014AC54;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100220D30;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10014CA00(&qword_10023A340, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

void sub_10011D898(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for AppMetadataDatabaseTransaction());
  v9 = *(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v10 = [v8 initWithConnection:v9];
  v19[2] = a3;
  v19[3] = a4;
  sub_10006158C(a2, 0);
  v11 = @"AKSQLErrorDomain";
  v12 = String._bridgeToObjectiveC()();
  v13 = AKErrorWithDescription(v11, 7, v12);

  v21 = v13;
  v22 = 1;
  v14 = swift_allocObject();
  v14[2] = sub_10014D298;
  v14[3] = v19;
  v14[4] = v10;
  v14[5] = &v21;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10014D3D8;
  *(v15 + 24) = v14;
  aBlock[4] = sub_10014D564;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100121018;
  aBlock[3] = &unk_100221A78;
  v16 = _Block_copy(aBlock);
  v17 = v10;

  sub_1000064FC(v9, v16);
  _Block_release(v16);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else if (v22)
  {
    v18 = v21;
    swift_willThrow();

    aBlock[0] = v18;
    swift_errorRetain();
    sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_10011DB50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for ImpressionDatabaseTransaction());
  v9 = *(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v10 = [v8 initWithConnection:v9];
  v19[2] = a3;
  v19[3] = a4;
  sub_10006158C(a2, 0);
  v11 = @"AKSQLErrorDomain";
  v12 = String._bridgeToObjectiveC()();
  v13 = AKErrorWithDescription(v11, 7, v12);

  v21 = v13;
  v22 = 1;
  v14 = swift_allocObject();
  v14[2] = sub_100149424;
  v14[3] = v19;
  v14[4] = v10;
  v14[5] = &v21;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100149450;
  *(v15 + 24) = v14;
  aBlock[4] = sub_10014D564;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100121018;
  aBlock[3] = &unk_1002203A8;
  v16 = _Block_copy(aBlock);
  v17 = v10;

  sub_1000064FC(v9, v16);
  _Block_release(v16);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else if (v22)
  {
    v18 = v21;
    swift_willThrow();

    aBlock[0] = v18;
    swift_errorRetain();
    sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_10011DE08(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for RetryCountDatabaseTransaction());
  v9 = *(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v10 = [v8 initWithConnection:v9];
  v19[2] = a3;
  v19[3] = a4;
  sub_10006158C(a2, 0);
  v11 = @"AKSQLErrorDomain";
  v12 = String._bridgeToObjectiveC()();
  v13 = AKErrorWithDescription(v11, 7, v12);

  v21 = v13;
  v22 = 1;
  v14 = swift_allocObject();
  v14[2] = sub_10014D298;
  v14[3] = v19;
  v14[4] = v10;
  v14[5] = &v21;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10014D3D8;
  *(v15 + 24) = v14;
  aBlock[4] = sub_10014925C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100121018;
  aBlock[3] = &unk_100220218;
  v16 = _Block_copy(aBlock);
  v17 = v10;

  sub_1000064FC(v9, v16);
  _Block_release(v16);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else if (v22)
  {
    v18 = v21;
    swift_willThrow();

    aBlock[0] = v18;
    swift_errorRetain();
    sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_10011E0C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for TokenDatabaseTransaction());
  v9 = *(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v10 = [v8 initWithConnection:v9];
  v19[2] = a3;
  v19[3] = a4;
  sub_10006158C(a2, 0);
  v11 = @"AKSQLErrorDomain";
  v12 = String._bridgeToObjectiveC()();
  v13 = AKErrorWithDescription(v11, 7, v12);

  v21 = v13;
  v22 = 1;
  v14 = swift_allocObject();
  v14[2] = sub_10014D298;
  v14[3] = v19;
  v14[4] = v10;
  v14[5] = &v21;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10014D3D8;
  *(v15 + 24) = v14;
  aBlock[4] = sub_10014D564;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100121018;
  aBlock[3] = &unk_1002202E0;
  v16 = _Block_copy(aBlock);
  v17 = v10;

  sub_1000064FC(v9, v16);
  _Block_release(v16);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else if (v22)
  {
    v18 = v21;
    swift_willThrow();

    aBlock[0] = v18;
    swift_errorRetain();
    sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_10011E378(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for GhostbackDatabaseTransaction());
  v9 = *(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v10 = [v8 initWithConnection:v9];
  v19[2] = a3;
  v19[3] = a4;
  sub_10006158C(a2, 0);
  v11 = @"AKSQLErrorDomain";
  v12 = String._bridgeToObjectiveC()();
  v13 = AKErrorWithDescription(v11, 7, v12);

  v21 = v13;
  v22 = 1;
  v14 = swift_allocObject();
  v14[2] = sub_10014D298;
  v14[3] = v19;
  v14[4] = v10;
  v14[5] = &v21;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10014D3D8;
  *(v15 + 24) = v14;
  aBlock[4] = sub_10014D564;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100121018;
  aBlock[3] = &unk_100220560;
  v16 = _Block_copy(aBlock);
  v17 = v10;

  sub_1000064FC(v9, v16);
  _Block_release(v16);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else if (v22)
  {
    v18 = v21;
    swift_willThrow();

    aBlock[0] = v18;
    swift_errorRetain();
    sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_10011E630(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for ConversionHistoryDatabaseTransaction());
  v9 = *(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v10 = [v8 initWithConnection:v9];
  v19[2] = a3;
  v19[3] = a4;
  sub_10006158C(a2, 0);
  v11 = @"AKSQLErrorDomain";
  v12 = String._bridgeToObjectiveC()();
  v13 = AKErrorWithDescription(v11, 7, v12);

  v21 = v13;
  v22 = 1;
  v14 = swift_allocObject();
  v14[2] = sub_10014D298;
  v14[3] = v19;
  v14[4] = v10;
  v14[5] = &v21;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10014D3D8;
  *(v15 + 24) = v14;
  aBlock[4] = sub_10014D564;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100121018;
  aBlock[3] = &unk_100221820;
  v16 = _Block_copy(aBlock);
  v17 = v10;

  sub_1000064FC(v9, v16);
  _Block_release(v16);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else if (v22)
  {
    v18 = v21;
    swift_willThrow();

    aBlock[0] = v18;
    swift_errorRetain();
    sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_10011E8E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for ConversionTagDatabaseTransaction());
  v9 = *(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v10 = [v8 initWithConnection:v9];
  v19[2] = a3;
  v19[3] = a4;
  sub_10006158C(a2, 0);
  v11 = @"AKSQLErrorDomain";
  v12 = String._bridgeToObjectiveC()();
  v13 = AKErrorWithDescription(v11, 7, v12);

  v21 = v13;
  v22 = 1;
  v14 = swift_allocObject();
  v14[2] = sub_10014D298;
  v14[3] = v19;
  v14[4] = v10;
  v14[5] = &v21;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10014D3D8;
  *(v15 + 24) = v14;
  aBlock[4] = sub_10014D564;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100121018;
  aBlock[3] = &unk_1002218E8;
  v16 = _Block_copy(aBlock);
  v17 = v10;

  sub_1000064FC(v9, v16);
  _Block_release(v16);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else if (v22)
  {
    v18 = v21;
    swift_willThrow();

    aBlock[0] = v18;
    swift_errorRetain();
    sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_10011EBA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for PostbackDatabaseTransaction());
  v9 = *(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v10 = [v8 initWithConnection:v9];
  v19[2] = a3;
  v19[3] = a4;
  sub_10006158C(a2, 0);
  v11 = @"AKSQLErrorDomain";
  v12 = String._bridgeToObjectiveC()();
  v13 = AKErrorWithDescription(v11, 7, v12);

  v21 = v13;
  v22 = 1;
  v14 = swift_allocObject();
  v14[2] = sub_10014D298;
  v14[3] = v19;
  v14[4] = v10;
  v14[5] = &v21;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10014D3D8;
  *(v15 + 24) = v14;
  aBlock[4] = sub_10014D564;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100121018;
  aBlock[3] = &unk_100220498;
  v16 = _Block_copy(aBlock);
  v17 = v10;

  sub_1000064FC(v9, v16);
  _Block_release(v16);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else if (v22)
  {
    v18 = v21;
    swift_willThrow();

    aBlock[0] = v18;
    swift_errorRetain();
    sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_10011EE58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for AppLaunchDatabaseTransaction());
  v9 = *(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v10 = [v8 initWithConnection:v9];
  v19[2] = a3;
  v19[3] = a4;
  sub_10006158C(a2, 0);
  v11 = @"AKSQLErrorDomain";
  v12 = String._bridgeToObjectiveC()();
  v13 = AKErrorWithDescription(v11, 7, v12);

  v21 = v13;
  v22 = 1;
  v14 = swift_allocObject();
  v14[2] = sub_10014D298;
  v14[3] = v19;
  v14[4] = v10;
  v14[5] = &v21;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10014D3D8;
  *(v15 + 24) = v14;
  aBlock[4] = sub_10014D564;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100121018;
  aBlock[3] = &unk_100221258;
  v16 = _Block_copy(aBlock);
  v17 = v10;

  sub_1000064FC(v9, v16);
  _Block_release(v16);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else if (v22)
  {
    v18 = v21;
    swift_willThrow();

    aBlock[0] = v18;
    swift_errorRetain();
    sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_10011F110(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for AggregatedReportingDatabaseTransaction());
  v9 = *(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v10 = [v8 initWithConnection:v9];
  v19[2] = a3;
  v19[3] = a4;
  sub_10006158C(a2, 0);
  v11 = @"AKSQLErrorDomain";
  v12 = String._bridgeToObjectiveC()();
  v13 = AKErrorWithDescription(v11, 7, v12);

  v21 = v13;
  v22 = 1;
  v14 = swift_allocObject();
  v14[2] = sub_10014D298;
  v14[3] = v19;
  v14[4] = v10;
  v14[5] = &v21;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10014D3D8;
  *(v15 + 24) = v14;
  aBlock[4] = sub_10014D564;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100121018;
  aBlock[3] = &unk_100221488;
  v16 = _Block_copy(aBlock);
  v17 = v10;

  sub_1000064FC(v9, v16);
  _Block_release(v16);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else if (v22)
  {
    v18 = v21;
    swift_willThrow();

    aBlock[0] = v18;
    swift_errorRetain();
    sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_10011F3C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for SnoutDatabaseTransaction());
  v9 = *(a1 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v10 = [v8 initWithConnection:v9];
  v19[2] = a3;
  v19[3] = a4;
  sub_10006158C(a2, 0);
  v11 = @"AKSQLErrorDomain";
  v12 = String._bridgeToObjectiveC()();
  v13 = AKErrorWithDescription(v11, 7, v12);

  v21 = v13;
  v22 = 1;
  v14 = swift_allocObject();
  v14[2] = sub_10014D298;
  v14[3] = v19;
  v14[4] = v10;
  v14[5] = &v21;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10014D3D8;
  *(v15 + 24) = v14;
  aBlock[4] = sub_10014D564;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100121018;
  aBlock[3] = &unk_100220DA8;
  v16 = _Block_copy(aBlock);
  v17 = v10;

  sub_1000064FC(v9, v16);
  _Block_release(v16);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else if (v22)
  {
    v18 = v21;
    swift_willThrow();

    aBlock[0] = v18;
    swift_errorRetain();
    sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_10000CDE0(&qword_10023D318, &unk_1001C0430);
    CheckedContinuation.resume(returning:)();
  }
}

void *sub_10011F680(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_10006158C(a1, 0);
  if (v5)
  {
    return a2;
  }

  v9 = @"AKSQLErrorDomain";
  v10 = String._bridgeToObjectiveC()();
  v11 = AKErrorWithDescription(v9, 7, v10);

  v20 = v11;
  v21 = 1;
  v12 = *(v4 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a2;
  v13[5] = &v20;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10014BFC0;
  *(v14 + 24) = v13;
  v19[4] = sub_10014D564;
  v19[5] = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100121018;
  v19[3] = &unk_100221C30;
  v15 = _Block_copy(v19);
  v16 = a2;

  sub_1000064FC(v12, v15);
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    a2 = v20;
    if (v21)
    {
      swift_willThrow();
    }

    return a2;
  }

  __break(1u);
  return result;
}

void *sub_10011F894(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_10006158C(a1, 0);
  if (v5)
  {
    return a2;
  }

  v9 = @"AKSQLErrorDomain";
  v10 = String._bridgeToObjectiveC()();
  v11 = AKErrorWithDescription(v9, 7, v10);

  v20 = v11;
  v21 = 1;
  v12 = *(v4 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a2;
  v13[5] = &v20;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10014D3DC;
  *(v14 + 24) = v13;
  v19[4] = sub_10014D564;
  v19[5] = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100121018;
  v19[3] = &unk_100220628;
  v15 = _Block_copy(v19);
  v16 = a2;

  sub_1000064FC(v12, v15);
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    a2 = v20;
    if (v21)
    {
      swift_willThrow();
    }

    return a2;
  }

  __break(1u);
  return result;
}

void *sub_10011FAA8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_10006158C(a1, 0);
  if (v5)
  {
    return a2;
  }

  v9 = @"AKSQLErrorDomain";
  v10 = String._bridgeToObjectiveC()();
  v11 = AKErrorWithDescription(v9, 7, v10);

  v20 = v11;
  v21 = 1;
  v12 = *(v4 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a2;
  v13[5] = &v20;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10014D3DC;
  *(v14 + 24) = v13;
  v19[4] = sub_10014D564;
  v19[5] = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100121018;
  v19[3] = &unk_100222448;
  v15 = _Block_copy(v19);
  v16 = a2;

  sub_1000064FC(v12, v15);
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    a2 = v20;
    if (v21)
    {
      swift_willThrow();
    }

    return a2;
  }

  __break(1u);
  return result;
}

void *sub_10011FCBC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_10006158C(a1, 0);
  if (v5)
  {
    return a2;
  }

  v9 = @"AKSQLErrorDomain";
  v10 = String._bridgeToObjectiveC()();
  v11 = AKErrorWithDescription(v9, 7, v10);

  v20 = v11;
  v21 = 1;
  v12 = *(v4 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a2;
  v13[5] = &v20;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10014D3DC;
  *(v14 + 24) = v13;
  v19[4] = sub_10014D564;
  v19[5] = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100121018;
  v19[3] = &unk_100220A10;
  v15 = _Block_copy(v19);
  v16 = a2;

  sub_1000064FC(v12, v15);
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    a2 = v20;
    if (v21)
    {
      swift_willThrow();
    }

    return a2;
  }

  __break(1u);
  return result;
}

void *sub_10011FED0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_10006158C(a1, 0);
  if (v5)
  {
    return a2;
  }

  v9 = @"AKSQLErrorDomain";
  v10 = String._bridgeToObjectiveC()();
  v11 = AKErrorWithDescription(v9, 7, v10);

  v20 = v11;
  v21 = 1;
  v12 = *(v4 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a2;
  v13[5] = &v20;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10014C0C4;
  *(v14 + 24) = v13;
  v19[4] = sub_10014D564;
  v19[5] = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100121018;
  v19[3] = &unk_100221DC0;
  v15 = _Block_copy(v19);
  v16 = a2;

  sub_1000064FC(v12, v15);
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    a2 = v20;
    if (v21)
    {
      swift_willThrow();
    }

    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001200E4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_10006158C(a1, 0);
  if (v5)
  {
    return a2 & 1;
  }

  v9 = @"AKSQLErrorDomain";
  v10 = String._bridgeToObjectiveC()();
  v11 = AKErrorWithDescription(v9, 7, v10);

  v20 = v11;
  v21 = 1;
  v12 = *(v4 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a2;
  v13[5] = &v20;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10014C170;
  *(v14 + 24) = v13;
  v19[4] = sub_10014D564;
  v19[5] = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100121018;
  v19[3] = &unk_100221E88;
  v15 = _Block_copy(v19);
  v16 = a2;

  sub_1000064FC(v12, v15);
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    LOBYTE(a2) = v20;
    if (v21)
    {
      swift_willThrow();
    }

    return a2 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001202F8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_10006158C(a1, 0);
  if (!v6)
  {
    v12 = @"AKSQLErrorDomain";
    v13 = String._bridgeToObjectiveC()();
    v14 = AKErrorWithDescription(v12, 7, v13);

    v24 = v14;
    v29 = 1;
    v15 = *(v5 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
    v16 = swift_allocObject();
    v16[2] = a3;
    v16[3] = a4;
    v16[4] = a2;
    v16[5] = &v24;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_10014AF30;
    *(v17 + 24) = v16;
    aBlock[4] = sub_10014D564;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100121018;
    aBlock[3] = &unk_1002210C8;
    v18 = _Block_copy(aBlock);
    v19 = a2;

    sub_1000064FC(v15, v18);
    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v21 = v24;
      v30 = v25;
      v31 = v26;
      v32 = v27;
      v33 = v28;
      if (v29)
      {
        swift_willThrow();
      }

      else
      {

        *a5 = v21;
        *(a5 + 8) = v30;
        v22 = v32;
        *(a5 + 24) = v31;
        *(a5 + 40) = v22;
        *(a5 + 56) = v33;
      }
    }
  }

  return result;
}

uint64_t sub_100120550@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_10006158C(a1, 0);
  if (!v6)
  {
    v12 = @"AKSQLErrorDomain";
    v13 = String._bridgeToObjectiveC()();
    v14 = AKErrorWithDescription(v12, 7, v13);

    v26 = v14;
    v30 = 1;
    v15 = *(v5 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
    v16 = swift_allocObject();
    v16[2] = a3;
    v16[3] = a4;
    v16[4] = a2;
    v16[5] = &v26;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_10014AE28;
    *(v17 + 24) = v16;
    aBlock[4] = sub_10014D564;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100121018;
    aBlock[3] = &unk_100221000;
    v18 = _Block_copy(aBlock);
    v19 = a2;

    sub_1000064FC(v15, v18);
    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v21 = v26;
      if (v30)
      {
        swift_willThrow();
      }

      else
      {
        v22 = v29;
        v23 = v28;
        v24 = v27;

        *a5 = v21;
        *(a5 + 24) = v23;
        *(a5 + 8) = v24;
        *(a5 + 40) = v22 & 1;
      }
    }
  }

  return result;
}

void *sub_100120794(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_10006158C(a1, 0);
  if (v5)
  {
    return a2;
  }

  v9 = @"AKSQLErrorDomain";
  v10 = String._bridgeToObjectiveC()();
  v11 = AKErrorWithDescription(v9, 7, v10);

  v20 = v11;
  v21 = 1;
  v12 = *(v4 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a2;
  v13[5] = &v20;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10014D3DC;
  *(v14 + 24) = v13;
  v19[4] = sub_10014D564;
  v19[5] = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100121018;
  v19[3] = &unk_100220C18;
  v15 = _Block_copy(v19);
  v16 = a2;

  sub_1000064FC(v12, v15);
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    a2 = v20;
    if (v21)
    {
      swift_willThrow();
    }

    return a2;
  }

  __break(1u);
  return result;
}

void *sub_1001209A8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_10006158C(a1, 0);
  if (v5)
  {
    return a2;
  }

  v9 = @"AKSQLErrorDomain";
  v10 = String._bridgeToObjectiveC()();
  v11 = AKErrorWithDescription(v9, 7, v10);

  v20 = v11;
  v21 = 1;
  v12 = *(v4 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a2;
  v13[5] = &v20;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10014BA5C;
  *(v14 + 24) = v13;
  v19[4] = sub_10014D564;
  v19[5] = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100121018;
  v19[3] = &unk_1002219B0;
  v15 = _Block_copy(v19);
  v16 = a2;

  sub_1000064FC(v12, v15);
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    a2 = v20;
    if (v21)
    {
      swift_willThrow();
    }

    return a2;
  }

  __break(1u);
  return result;
}

void *sub_100120BC4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_10006158C(a1, 0);
  if (v5)
  {
    return a2;
  }

  v9 = @"AKSQLErrorDomain";
  v10 = String._bridgeToObjectiveC()();
  v11 = AKErrorWithDescription(v9, 7, v10);

  v20 = v11;
  v21 = 1;
  v12 = *(v4 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a2;
  v13[5] = &v20;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10014D3DC;
  *(v14 + 24) = v13;
  v19[4] = sub_10014D564;
  v19[5] = v14;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100121018;
  v19[3] = &unk_100220E70;
  v15 = _Block_copy(v19);
  v16 = a2;

  sub_1000064FC(v12, v15);
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    a2 = v20;
    if (v21)
    {
      swift_willThrow();
    }

    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_100120DD8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_10006158C(a1, 0);
  if (!v6)
  {
    v12 = @"AKSQLErrorDomain";
    v13 = String._bridgeToObjectiveC()();
    v14 = AKErrorWithDescription(v12, 7, v13);

    v27 = v14;
    v32 = 1;
    v15 = *(v5 + OBJC_IVAR____TtC20AttributionKitDaemon14SQLiteDatabase_connection);
    v16 = swift_allocObject();
    v16[2] = a3;
    v16[3] = a4;
    v16[4] = a2;
    v16[5] = &v27;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_10014A808;
    *(v17 + 24) = v16;
    aBlock[4] = sub_10014D564;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100121018;
    aBlock[3] = &unk_100220920;
    v18 = _Block_copy(aBlock);
    v19 = a2;

    sub_1000064FC(v15, v18);
    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v21 = v27;
      if (v32)
      {
        swift_willThrow();
      }

      else
      {
        v23 = v30;
        v22 = v31;
        v24 = v29;
        v25 = v28;

        *a5 = v21;
        *(a5 + 24) = v24;
        *(a5 + 8) = v25;
        *(a5 + 40) = v23;
        *(a5 + 48) = v22;
      }
    }
  }

  return result;
}

uint64_t sub_100121044(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  v3 = type metadata accessor for Logger();
  v2[40] = v3;
  v2[41] = *(v3 - 8);
  v2[42] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[43] = v4;
  v5 = *(v4 - 8);
  v2[44] = v5;
  v2[45] = *(v5 + 64);
  v2[46] = swift_task_alloc();

  return _swift_task_switch(sub_100121168, 0, 0);
}

uint64_t sub_100121168()
{
  v1 = v0[46];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[39];
  v6 = v4[3];
  v5 = v4[4];
  v7 = v4[5];
  (*(v3 + 16))(v1, v0[38], v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[47] = v9;
  (*(v3 + 32))(v9 + v8, v1, v2);
  v10 = swift_task_alloc();
  v0[48] = v10;
  *v10 = v0;
  v10[1] = sub_1001212BC;

  return sub_10010F818(sub_10014D10C, v9, v6, v5, v7);
}

uint64_t sub_1001212BC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v4 = sub_1001217F8;
  }

  else
  {
    v4 = sub_1001213F0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001213F0()
{
  result = *(v0 + 392);
  v2 = *(result + 16);
  *(v0 + 408) = v2;
  if (v2)
  {
    *(v0 + 416) = 0;
    if (*(result + 16))
    {
      v3 = *(result + 48);
      v4 = *(result + 64);
      v5 = *(result + 80);
      *(v0 + 80) = *(result + 96);
      v6 = *(result + 112);
      v7 = *(result + 128);
      v8 = *(result + 160);
      *(v0 + 128) = *(result + 144);
      *(v0 + 144) = v8;
      *(v0 + 96) = v6;
      *(v0 + 112) = v7;
      *(v0 + 64) = v5;
      v9 = *(result + 32);
      *(v0 + 32) = v3;
      *(v0 + 48) = v4;
      *(v0 + 16) = v9;
      v10 = *(v0 + 72);
      v11 = *(v0 + 80);
      *(v0 + 424) = v11;
      sub_100070EEC(v0 + 16, v0 + 160);

      v12 = swift_task_alloc();
      *(v0 + 432) = v12;
      *v12 = v0;
      v12[1] = sub_10012154C;

      return sub_1001260DC(v10, v11, 0);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v13 = *(v0 + 8);

    return v13();
  }

  return result;
}

uint64_t sub_10012154C()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {

    v3 = sub_1001219A4;
  }

  else
  {
    sub_10003BC20(v2 + 16);

    v3 = sub_100121688;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100121688()
{
  v1 = *(v0 + 416) + 1;
  if (v1 == *(v0 + 408))
  {

    v2 = *(v0 + 8);

    v2();
  }

  else
  {
    *(v0 + 416) = v1;
    v3 = *(v0 + 392);
    if (v1 >= *(v3 + 16))
    {
      __break(1u);
    }

    else
    {
      v4 = (v3 + 144 * v1);
      v5 = v4[3];
      v6 = v4[4];
      v7 = v4[5];
      *(v0 + 80) = v4[6];
      v8 = v4[7];
      v9 = v4[8];
      v10 = v4[10];
      *(v0 + 128) = v4[9];
      *(v0 + 144) = v10;
      *(v0 + 96) = v8;
      *(v0 + 112) = v9;
      *(v0 + 64) = v7;
      v11 = v4[2];
      *(v0 + 32) = v5;
      *(v0 + 48) = v6;
      *(v0 + 16) = v11;
      v12 = *(v0 + 72);
      v13 = *(v0 + 80);
      *(v0 + 424) = v13;
      sub_100070EEC(v0 + 16, v0 + 160);

      v14 = swift_task_alloc();
      *(v0 + 432) = v14;
      *v14 = v0;
      v14[1] = sub_10012154C;

      sub_1001260DC(v12, v13, 0);
    }
  }
}

uint64_t sub_1001217F8(uint64_t a1)
{
  v3 = v1[41];
  v2 = v1[42];
  v4 = v1[40];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to clean up inactive pre-conversion state: %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v1[41] + 8))(v1[42], v1[40]);

  v11 = v1[1];

  return v11();
}

uint64_t sub_1001219A4()
{
  sub_10003BC20((v0 + 2));
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v4 = Logger.postback.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to clean up inactive pre-conversion state: %@", v7, 0xCu);
    sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v0[41] + 8))(v0[42], v0[40]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100121B58(uint64_t a1, uint64_t a2)
{
  v3[134] = v2;
  v3[133] = a2;
  v3[132] = a1;
  return _swift_task_switch(sub_100121B80, 0, 0);
}

uint64_t sub_100121B80()
{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[132];
  v4 = v1[12];
  v5 = v1[13];
  v6 = v1[14];
  v7 = swift_allocObject();
  v0[135] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;

  v8 = swift_task_alloc();
  v0[136] = v8;
  *v8 = v0;
  v8[1] = sub_100121C98;

  return sub_1001112C8(sub_10014B824, v7, v4, v5, v6);
}

uint64_t sub_100121C98(uint64_t a1, char a2)
{
  v5 = *v3;
  v6 = *v3;
  *(*v3 + 1096) = a1;

  if (v2)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v5 + 305) = a2;

    return _swift_task_switch(sub_100121E10, 0, 0);
  }
}

uint64_t sub_100121E10()
{
  if (*(v0 + 305))
  {
    sub_1000401C4();
    swift_allocError();
    v1[1] = 0;
    v1[2] = 0;
    *v1 = 7;
    swift_willThrow();
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 1096);
    v5 = *(v0 + 1072);
    v6 = v5[3];
    *(v0 + 1104) = v6;
    v7 = v5[4];
    *(v0 + 1112) = v7;
    v8 = v5[5];
    *(v0 + 1120) = v8;
    v9 = swift_allocObject();
    *(v0 + 1128) = v9;
    *(v9 + 16) = v4;
    v10 = swift_task_alloc();
    *(v0 + 1136) = v10;
    *v10 = v0;
    v10[1] = sub_100121F98;

    return sub_10010F818(sub_10014D4E4, v9, v6, v7, v8);
  }
}

uint64_t sub_100121F98(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100124A74;
  }

  else
  {

    *(v4 + 1144) = a1;
    v5 = sub_1001220EC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001220EC()
{
  v0[144] = v0[143];
  v1 = v0[137];
  v2 = v0[134];
  v3 = *v2;
  v0[145] = *v2;
  v4 = v2[1];
  v0[146] = v4;
  v5 = v2[2];
  v0[147] = v5;
  v6 = swift_allocObject();
  v0[148] = v6;
  *(v6 + 16) = v1;
  v7 = swift_task_alloc();
  v0[149] = v7;
  *v7 = v0;
  v7[1] = sub_100122208;

  return sub_100110084(sub_10014D4FC, v6, v3, v4, v5);
}

uint64_t sub_100122208(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100124B8C;
  }

  else
  {

    *(v4 + 1200) = a1;
    v5 = sub_10012235C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10012235C()
{
  v0[151] = v0[150];
  v1 = v0[137];
  v2 = swift_allocObject();
  v0[152] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[153] = v3;
  *v3 = v0;
  v3[1] = sub_100122450;

  return (sub_10010E9F0)();
}

uint64_t sub_100122450()
{
  *(*v1 + 1232) = v0;

  if (v0)
  {

    v2 = sub_100124C7C;
  }

  else
  {
    v2 = sub_1001225A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001225A0()
{
  v1 = v0[137];
  v2 = v0[134];
  v4 = v2[6];
  v3 = v2[7];
  v5 = v2[8];
  v6 = swift_allocObject();
  v0[155] = v6;
  *(v6 + 16) = v1;
  v7 = swift_task_alloc();
  v0[156] = v7;
  *v7 = v0;
  v7[1] = sub_1001226A4;

  return sub_10010E730(sub_10010E730, sub_10014D52C, v6, v4, v3, v5);
}

uint64_t sub_1001226A4()
{
  *(*v1 + 1256) = v0;

  if (v0)
  {

    v2 = sub_100124C94;
  }

  else
  {
    v2 = sub_1001227F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001227F4()
{
  v1 = v0[137];
  v2 = v0[134];
  v4 = v2[9];
  v3 = v2[10];
  v5 = v2[11];
  v6 = swift_allocObject();
  v0[158] = v6;
  *(v6 + 16) = v1;
  v7 = swift_task_alloc();
  v0[159] = v7;
  *v7 = v0;
  v7[1] = sub_1001228F8;

  return sub_10010EB50(sub_10010EB50, sub_10014D544, v6, v4, v3, v5);
}

uint64_t sub_1001228F8()
{
  *(*v1 + 1280) = v0;

  if (v0)
  {

    v2 = sub_100124CAC;
  }

  else
  {
    v2 = sub_100122A48;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100122A48()
{
  v1 = v0[137];
  v2 = swift_allocObject();
  v0[161] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[162] = v3;
  *v3 = v0;
  v3[1] = sub_100122B34;

  return (sub_10010EF70)();
}

uint64_t sub_100122B34()
{
  *(*v1 + 1304) = v0;

  if (v0)
  {

    v2 = sub_100124CC4;
  }

  else
  {
    v2 = sub_100122C84;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100122C84()
{
  v1 = v0[137];
  v2 = v0[134];
  v4 = v2[15];
  v3 = v2[16];
  v5 = v2[17];
  v6 = swift_allocObject();
  v0[164] = v6;
  *(v6 + 16) = v1;
  v7 = swift_task_alloc();
  v0[165] = v7;
  *v7 = v0;
  v7[1] = sub_100122D88;

  return sub_10010ECB0(sub_10010ECB0, sub_10014B894, v6, v4, v3, v5);
}

uint64_t sub_100122D88()
{
  *(*v1 + 1328) = v0;

  if (v0)
  {

    v2 = sub_100124CDC;
  }

  else
  {
    v2 = sub_100122ED8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100122ED8()
{
  v1 = v0[137];
  v2 = v0[134];
  v4 = v2[18];
  v3 = v2[19];
  v5 = v2[20];
  v6 = swift_allocObject();
  v0[167] = v6;
  *(v6 + 16) = v1;
  v7 = swift_task_alloc();
  v0[168] = v7;
  *v7 = v0;
  v7[1] = sub_100122FDC;

  return sub_10010EE10(sub_10010EE10, sub_10014B8C0, v6, v4, v3, v5);
}

uint64_t sub_100122FDC()
{
  *(*v1 + 1352) = v0;

  if (v0)
  {

    v2 = sub_100124CF4;
  }

  else
  {
    v2 = sub_10012312C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012312C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), void *a7, char *a8)
{
  v9 = *(v8 + 1152);
  if (v9)
  {
    v10 = *(v9 + 16);
    *(v8 + 1360) = v10;
    if (v10)
    {
      v11 = *(v8 + 1072);
      *(v8 + 1368) = 0;
      if (*(v9 + 16))
      {
        v12 = *(v9 + 48);
        v13 = *(v9 + 64);
        v14 = *(v9 + 96);
        *(v8 + 656) = *(v9 + 80);
        *(v8 + 672) = v14;
        v15 = *(v9 + 112);
        v16 = *(v9 + 128);
        v17 = *(v9 + 160);
        *(v8 + 720) = *(v9 + 144);
        *(v8 + 736) = v17;
        *(v8 + 688) = v15;
        *(v8 + 704) = v16;
        v18 = *(v9 + 32);
        *(v8 + 624) = v12;
        *(v8 + 640) = v13;
        *(v8 + 608) = v18;
        v19 = *(v8 + 664);
        *(v8 + 1376) = v19;
        v20 = *(v8 + 672);
        *(v8 + 1384) = v20;
        v22 = v11[26];
        v21 = v11[27];
        v23 = v11[28];
        sub_100070EEC(v8 + 608, v8 + 752);
        v24 = swift_allocObject();
        *(v8 + 1392) = v24;
        *(v24 + 16) = v19;
        *(v24 + 24) = v20;

        *(v8 + 1000) = &type metadata for RetryCountDatabaseStore;
        *(v8 + 1008) = sub_100146F68();
        *(v8 + 976) = v22;
        *(v8 + 984) = v21;
        *(v8 + 992) = v23;

        v25 = v23;
        v26 = swift_task_alloc();
        *(v8 + 1400) = v26;
        v26[2] = v25;
        v26[3] = v8 + 976;
        v26[4] = sub_10014D680;
        v26[5] = v24;
        v9 = swift_task_alloc();
        *(v8 + 1408) = v9;
        *v9 = v8;
        *(v9 + 8) = sub_10012349C;
        goto LABEL_10;
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  v27 = *(v8 + 1208);
  if (v27)
  {
    v28 = *(v27 + 16);
    *(v8 + 1488) = v28;
    if (v28)
    {
      v29 = *(v8 + 1072);
      *(v8 + 1496) = 0;
      if (*(v27 + 16))
      {
        memcpy((v8 + 16), (v27 + 32), 0x121uLL);
        v31 = *(v8 + 48);
        v30 = *(v8 + 56);
        v33 = v29[26];
        v32 = v29[27];
        v34 = v29[28];
        sub_1000B3B24(v8 + 16, v8 + 312);
        v35 = swift_allocObject();
        *(v8 + 1504) = v35;
        *(v35 + 16) = v31;
        *(v35 + 24) = v30;

        *(v8 + 920) = &type metadata for RetryCountDatabaseStore;
        *(v8 + 928) = sub_100146F68();
        *(v8 + 896) = v33;
        *(v8 + 904) = v32;
        *(v8 + 912) = v34;

        v36 = v34;
        v26 = swift_task_alloc();
        *(v8 + 1512) = v26;
        v26[2] = v36;
        v26[3] = v8 + 896;
        v26[4] = sub_10014D680;
        v26[5] = v35;
        v9 = swift_task_alloc();
        *(v8 + 1520) = v9;
        *v9 = v8;
        *(v9 + 8) = sub_100124048;
LABEL_10:
        a6 = sub_10014D278;
        a5 = 0x80000001001CD620;
        a8 = &type metadata for () + 8;
        a2 = 0;
        a3 = 0;
        a4 = 0xD00000000000001BLL;
        a7 = v26;

        return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, a2, a3, a4, a5, a6, a7, a8);
      }

LABEL_18:
      __break(1u);
      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  v37 = *(v8 + 8);

  return v37();
}

uint64_t sub_10012349C()
{
  v2 = *v1;
  *(*v1 + 1416) = v0;

  if (v0)
  {

    v3 = sub_100123FD4;
  }

  else
  {

    sub_10000DB58((v2 + 976));
    v3 = sub_1001235F4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001235F4()
{
  v1 = sub_10000DA7C((*(v0 + 1072) + 560), *(*(v0 + 1072) + 584));
  v2 = *v1;
  *(v0 + 1424) = *v1;

  return _swift_task_switch(sub_100123668, v2, 0);
}

uint64_t sub_100123668()
{
  v1 = v0[178];
  v2 = v0[173];
  v3 = v0[172];
  v0[179] = v1[14];
  v0[180] = v1[15];
  v0[181] = v1[16];
  v4 = swift_allocObject();
  v0[182] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  return _swift_task_switch(sub_100123714, 0, 0);
}

uint64_t sub_100123714()
{
  v1 = v0[182];
  v2 = v0[181];
  v3 = v0[180];
  v4 = v0[179];
  v0[130] = &type metadata for SnoutDatabaseStore;
  v0[131] = sub_10014AB1C();
  v0[127] = v4;
  v0[128] = v3;
  v0[129] = v2;

  v5 = v2;
  v6 = swift_task_alloc();
  v0[183] = v6;
  v6[2] = v5;
  v6[3] = v0 + 127;
  v6[4] = sub_10014D6E0;
  v6[5] = v1;
  v7 = swift_task_alloc();
  v0[184] = v7;
  *v7 = v0;
  v7[1] = sub_100123864;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014D28C, v6, &type metadata for () + 8);
}

uint64_t sub_100123864()
{
  v2 = *v1;
  *(*v1 + 1480) = v0;

  if (v0)
  {
    v3 = sub_100123A10;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 1424);

    sub_10000DB58((v2 + 1016));

    v3 = sub_1001239A8;
    v4 = v5;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_1001239A8()
{
  sub_10003BC20(v0 + 608);

  return _swift_task_switch(sub_100123C44, 0, 0);
}

uint64_t sub_100123A10()
{
  v1 = *(v0 + 1424);

  sub_10000DB58((v0 + 1016));

  return _swift_task_switch(sub_100123A90, v1, 0);
}

uint64_t sub_100123A90()
{
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FD18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to delete story for conversion id: %@", v4, 0xCu);
    sub_10000DAF8(v5, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  sub_10003BC20(v0 + 608);

  return _swift_task_switch(sub_100123C44, 0, 0);
}

uint64_t sub_100123C44(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), void *a7, char *a8)
{
  v9 = *(v8 + 1368) + 1;
  if (v9 != *(v8 + 1360))
  {
    *(v8 + 1368) = v9;
    v21 = *(v8 + 1152);
    if (v9 < *(v21 + 16))
    {
      v22 = *(v8 + 1072);
      v23 = (v21 + 144 * v9);
      v24 = v23[3];
      v25 = v23[4];
      v26 = v23[6];
      *(v8 + 656) = v23[5];
      *(v8 + 672) = v26;
      v27 = v23[7];
      v28 = v23[8];
      v29 = v23[10];
      *(v8 + 720) = v23[9];
      *(v8 + 736) = v29;
      *(v8 + 688) = v27;
      *(v8 + 704) = v28;
      v30 = v23[2];
      *(v8 + 624) = v24;
      *(v8 + 640) = v25;
      *(v8 + 608) = v30;
      v31 = *(v8 + 664);
      *(v8 + 1376) = v31;
      v32 = *(v8 + 672);
      *(v8 + 1384) = v32;
      v34 = v22[26];
      v33 = v22[27];
      v35 = v22[28];
      sub_100070EEC(v8 + 608, v8 + 752);
      v36 = swift_allocObject();
      *(v8 + 1392) = v36;
      *(v36 + 16) = v31;
      *(v36 + 24) = v32;

      *(v8 + 1000) = &type metadata for RetryCountDatabaseStore;
      *(v8 + 1008) = sub_100146F68();
      *(v8 + 976) = v34;
      *(v8 + 984) = v33;
      *(v8 + 992) = v35;

      v37 = v35;
      v20 = swift_task_alloc();
      *(v8 + 1400) = v20;
      v20[2] = v37;
      v20[3] = v8 + 976;
      v20[4] = sub_10014D680;
      v20[5] = v36;
      a1 = swift_task_alloc();
      *(v8 + 1408) = a1;
      *a1 = v8;
      a1[1] = sub_10012349C;
      a6 = sub_10014D278;
      a5 = 0x80000001001CD620;
      a8 = &type metadata for () + 8;
LABEL_8:
      a2 = 0;
      a3 = 0;
      a4 = 0xD00000000000001BLL;
      a7 = v20;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return withCheckedThrowingContinuation<A>(isolation:function:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = *(v8 + 1208);
  if (v10)
  {
    v11 = *(v10 + 16);
    *(v8 + 1488) = v11;
    if (v11)
    {
      v12 = *(v8 + 1072);
      *(v8 + 1496) = 0;
      if (*(v10 + 16))
      {
        memcpy((v8 + 16), (v10 + 32), 0x121uLL);
        v14 = *(v8 + 48);
        v13 = *(v8 + 56);
        v16 = v12[26];
        v15 = v12[27];
        v17 = v12[28];
        sub_1000B3B24(v8 + 16, v8 + 312);
        v18 = swift_allocObject();
        *(v8 + 1504) = v18;
        *(v18 + 16) = v14;
        *(v18 + 24) = v13;

        *(v8 + 920) = &type metadata for RetryCountDatabaseStore;
        *(v8 + 928) = sub_100146F68();
        *(v8 + 896) = v16;
        *(v8 + 904) = v15;
        *(v8 + 912) = v17;

        v19 = v17;
        v20 = swift_task_alloc();
        *(v8 + 1512) = v20;
        v20[2] = v19;
        v20[3] = v8 + 896;
        v20[4] = sub_10014D680;
        v20[5] = v18;
        a1 = swift_task_alloc();
        *(v8 + 1520) = a1;
        *a1 = v8;
        a1[1] = sub_100124048;
        a6 = sub_10014D278;
        a5 = 0x80000001001CD620;
        a8 = &type metadata for () + 8;
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  v38 = *(v8 + 8);

  return v38();
}

uint64_t sub_100123FD4()
{

  sub_10000DB58((v0 + 976));
  sub_10003BC20(v0 + 608);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100124048()
{
  v2 = *v1;
  *(*v1 + 1528) = v0;

  if (v0)
  {

    v3 = sub_100124A00;
  }

  else
  {

    v4 = v2[25];
    v2[192] = v2[24];
    v2[193] = v4;

    sub_10000DB58(v2 + 112);
    v3 = sub_100124198;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100124198()
{
  v1 = sub_10000DA7C((*(v0 + 1072) + 560), *(*(v0 + 1072) + 584));
  v2 = *v1;
  *(v0 + 1552) = *v1;

  return _swift_task_switch(sub_10012420C, v2, 0);
}

uint64_t sub_10012420C()
{
  v1 = v0[194];
  v2 = v0[193];
  v3 = v0[192];
  v0[195] = v1[14];
  v0[196] = v1[15];
  v0[197] = v1[16];
  v4 = swift_allocObject();
  v0[198] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  return _swift_task_switch(sub_1001242B8, 0, 0);
}

uint64_t sub_1001242B8()
{
  v1 = v0[198];
  v2 = v0[197];
  v3 = v0[196];
  v4 = v0[195];
  v0[120] = &type metadata for SnoutDatabaseStore;
  v0[121] = sub_10014AB1C();
  v0[117] = v4;
  v0[118] = v3;
  v0[119] = v2;

  v5 = v2;
  v6 = swift_task_alloc();
  v0[199] = v6;
  v6[2] = v5;
  v6[3] = v0 + 117;
  v6[4] = sub_10014B8EC;
  v6[5] = v1;
  v7 = swift_task_alloc();
  v0[200] = v7;
  *v7 = v0;
  v7[1] = sub_100124408;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD00000000000001BLL, 0x80000001001CD620, sub_10014D28C, v6, &type metadata for () + 8);
}

uint64_t sub_100124408()
{
  v2 = *v1;
  *(*v1 + 1608) = v0;

  if (v0)
  {
    v3 = sub_1001245B4;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 1552);

    sub_10000DB58((v2 + 936));

    v3 = sub_10012454C;
    v4 = v5;
  }

  return _swift_task_switch(v3, v4, 0);
}

uint64_t sub_10012454C()
{
  sub_10003C04C(v0 + 16);

  return _swift_task_switch(sub_1001247E8, 0, 0);
}

uint64_t sub_1001245B4()
{
  v1 = *(v0 + 1552);

  sub_10000DB58((v0 + 936));

  return _swift_task_switch(sub_100124634, v1, 0);
}

uint64_t sub_100124634()
{
  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FD18);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to delete story for conversion id: %@", v4, 0xCu);
    sub_10000DAF8(v5, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  sub_10003C04C(v0 + 16);

  return _swift_task_switch(sub_1001247E8, 0, 0);
}

uint64_t sub_1001247E8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), void *a7, char *a8)
{
  v9 = v8[187] + 1;
  if (v9 == v8[186])
  {

    v10 = v8[1];

    return v10();
  }

  else
  {
    v8[187] = v9;
    v12 = v8[151];
    if (v9 >= *(v12 + 16))
    {
      __break(1u);
    }

    else
    {
      v13 = v8[134];
      memcpy(v8 + 2, (v12 + 296 * v9 + 32), 0x121uLL);
      v15 = v8[6];
      v14 = v8[7];
      v17 = v13[26];
      v16 = v13[27];
      v18 = v13[28];
      sub_1000B3B24((v8 + 2), (v8 + 39));
      v19 = swift_allocObject();
      v8[188] = v19;
      *(v19 + 16) = v15;
      *(v19 + 24) = v14;

      v8[115] = &type metadata for RetryCountDatabaseStore;
      v8[116] = sub_100146F68();
      v8[112] = v17;
      v8[113] = v16;
      v8[114] = v18;

      v20 = v18;
      v21 = swift_task_alloc();
      v8[189] = v21;
      v21[2] = v20;
      v21[3] = v8 + 112;
      v21[4] = sub_10014D680;
      v21[5] = v19;
      a1 = swift_task_alloc();
      v8[190] = a1;
      *a1 = v8;
      a1[1] = sub_100124048;
      a6 = sub_10014D278;
      a5 = 0x80000001001CD620;
      a8 = &type metadata for () + 8;
      a2 = 0;
      a3 = 0;
      a4 = 0xD00000000000001BLL;
      a7 = v21;
    }

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_100124A00()
{

  sub_10000DB58((v0 + 896));
  sub_10003C04C(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100124A74()
{
  v0[144] = 0;
  v1 = v0[137];
  v2 = v0[134];
  v3 = *v2;
  v0[145] = *v2;
  v4 = v2[1];
  v0[146] = v4;
  v5 = v2[2];
  v0[147] = v5;
  v6 = swift_allocObject();
  v0[148] = v6;
  *(v6 + 16) = v1;
  v7 = swift_task_alloc();
  v0[149] = v7;
  *v7 = v0;
  v7[1] = sub_100122208;

  return sub_100110084(sub_10014D4FC, v6, v3, v4, v5);
}

uint64_t sub_100124B8C()
{
  v0[151] = 0;
  v1 = v0[137];
  v2 = swift_allocObject();
  v0[152] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[153] = v3;
  *v3 = v0;
  v3[1] = sub_100122450;

  return (sub_10010E9F0)();
}

uint64_t sub_100124D0C(uint64_t a1)
{
  v2[39] = a1;
  v2[40] = v1;
  v3 = type metadata accessor for Logger();
  v2[41] = v3;
  v2[42] = *(v3 - 8);
  v2[43] = swift_task_alloc();

  return _swift_task_switch(sub_100124DCC, 0, 0);
}

uint64_t sub_100124DCC()
{
  v2 = v0[39];
  v1 = v0[40];
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = swift_allocObject();
  v0[44] = v6;
  memcpy((v6 + 16), v2, 0x121uLL);
  sub_1000B3B24(v2, (v0 + 2));
  v7 = swift_task_alloc();
  v0[45] = v7;
  *v7 = v0;
  v7[1] = sub_100124EE4;

  return sub_10010EF70(sub_10010EF70, sub_10014A910, v6, v4, v3, v5);
}

uint64_t sub_100124EE4()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_100125074;
  }

  else
  {
    v2 = sub_100125014;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100125014()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100125074(uint64_t a1)
{
  v3 = v1[42];
  v2 = v1[43];
  v4 = v1[41];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Adding postback failed: %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v1[42] + 8))(v1[43], v1[41]);

  v11 = v1[1];

  return v11();
}

uint64_t sub_100125218(uint64_t a1)
{
  v2[210] = v1;
  v2[209] = a1;
  v3 = type metadata accessor for Logger();
  v2[211] = v3;
  v2[212] = *(v3 - 8);
  v2[213] = swift_task_alloc();
  v2[214] = swift_task_alloc();
  v2[215] = swift_task_alloc();
  sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  v2[216] = swift_task_alloc();
  v2[217] = swift_task_alloc();
  v4 = type metadata accessor for URL.DirectoryHint();
  v2[218] = v4;
  v2[219] = *(v4 - 8);
  v2[220] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[221] = v5;
  v2[222] = *(v5 - 8);
  v2[223] = swift_task_alloc();
  v2[224] = swift_task_alloc();
  v2[225] = swift_task_alloc();

  return _swift_task_switch(sub_100125434, 0, 0);
}

uint64_t sub_100125434()
{
  v1 = *(*(v0 + 1672) + 64);
  v2 = objc_allocWithZone(LSApplicationRecord);
  *(v0 + 1664) = 0;
  v3 = [v2 initWithStoreItemIdentifier:v1 error:v0 + 1664];
  v4 = *(v0 + 1664);
  if (!v3)
  {
    v17 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v18 = *(v0 + 1704);
    v19 = *(v0 + 1696);
    v20 = *(v0 + 1688);
    v21 = Logger.postback.unsafeMutableAddressor();
    (*(v19 + 16))(v18, v21, v20);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "Adding developer postback failed %@", v24, 0xCu);
      sub_10000DAF8(v25, &qword_100239F10, &qword_1001B4FD0);
    }

    else
    {
    }

    (*(*(v0 + 1696) + 8))(*(v0 + 1704), *(v0 + 1688));
    goto LABEL_7;
  }

  v5 = v3;
  v86 = v1;
  v6 = *(v0 + 1792);
  v7 = *(v0 + 1776);
  v87 = *(v0 + 1768);
  v8 = *(v0 + 1760);
  v9 = *(v0 + 1752);
  v10 = *(v0 + 1744);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v11 = v4;
  PropertyListDecoder.init()();
  v12 = [v5 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  *(v0 + 1648) = 0x696C702E6F666E49;
  *(v0 + 1656) = 0xEA00000000007473;
  (*(v9 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v10);
  sub_10003E5C8();
  URL.appending<A>(path:directoryHint:)();
  (*(v9 + 8))(v8, v10);
  v13 = *(v7 + 8);
  *(v0 + 1808) = v13;
  *(v0 + 1816) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v6, v87);
  v14 = Data.init(contentsOf:options:)();
  v16 = v15;
  v13(*(v0 + 1800), *(v0 + 1768));
  sub_1000BB9AC();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v29 = *(v0 + 1672);

  sub_10001BABC(v14, v16);

  v30 = *(v0 + 1616);
  *(v0 + 1520) = *(v0 + 1600);
  *(v0 + 1536) = v30;
  v31 = *(v0 + 1584);
  *(v0 + 1488) = *(v0 + 1568);
  *(v0 + 1504) = v31;
  *(v0 + 1472) = *(v0 + 1552);
  if (*(v29 + 104) >= 2u)
  {
    v32 = *(v0 + 1488);
    if (v32 == 2 || (v32 & 1) == 0)
    {
      v33 = *(v0 + 1712);
      v34 = *(v0 + 1696);
      v35 = *(v0 + 1688);
      sub_10009B180(v0 + 1472);
      v36 = Logger.postback.unsafeMutableAddressor();
      (*(v34 + 16))(v33, v36, v35);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 1712);
      v41 = *(v0 + 1696);
      v42 = *(v0 + 1688);
      if (v39)
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Advertised app has not opted in for copy of postback", v43, 2u);
      }

      (*(v41 + 8))(v40, v42);
      goto LABEL_7;
    }
  }

  sub_10009A2B8(*(v0 + 1736));
  v44 = *(v0 + 1776);
  v45 = *(v0 + 1768);
  v46 = *(v0 + 1736);
  v47 = *(v0 + 1728);
  sub_10009B180(v0 + 1472);
  sub_100014B50(v46, v47, &qword_10023C230, &qword_1001B4FB0);
  if ((*(v44 + 48))(v47, 1, v45) == 1)
  {
    v48 = *(v0 + 1720);
    v49 = *(v0 + 1696);
    v50 = *(v0 + 1688);
    v51 = *(v0 + 1672);
    sub_10000DAF8(*(v0 + 1728), &qword_10023C230, &qword_1001B4FB0);
    v52 = Logger.postback.unsafeMutableAddressor();
    (*(v49 + 16))(v48, v52, v50);
    sub_1000B3B24(v51, v0 + 312);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 1672);
    if (v55)
    {
      v57 = swift_slowAlloc();
      *v57 = 134217984;
      *(v57 + 4) = v86;
      sub_10003C04C(v56);
      _os_log_impl(&_mh_execute_header, v53, v54, "No developer postback copy URL found for app %llu", v57, 0xCu);
    }

    else
    {

      sub_10003C04C(v56);
    }

    v85 = *(v0 + 1736);
    (*(*(v0 + 1696) + 8))(*(v0 + 1720), *(v0 + 1688));
    sub_10000DAF8(v85, &qword_10023C230, &qword_1001B4FB0);
LABEL_7:

    v27 = *(v0 + 8);

    return v27();
  }

  v58 = *(v0 + 1672);
  (*(*(v0 + 1776) + 32))(*(v0 + 1784), *(v0 + 1728), *(v0 + 1768));
  *(v0 + 1632) = *(v58 + 152);
  v60 = *(v58 + 112);
  v59 = *(v58 + 128);
  v61 = *(v58 + 96);
  *(v0 + 1344) = *(v58 + 144);
  *(v0 + 1296) = v61;
  *(v0 + 1328) = v59;
  *(v0 + 1312) = v60;
  v63 = *(v58 + 32);
  v62 = *(v58 + 48);
  v64 = *(v58 + 64);
  *(v0 + 1280) = *(v58 + 80);
  *(v0 + 1232) = v63;
  *(v0 + 1264) = v64;
  *(v0 + 1248) = v62;
  v65 = *v58;
  *(v0 + 1216) = *(v58 + 16);
  *(v0 + 1200) = v65;
  v66 = *(v58 + 168);
  *(v0 + 308) = v66;
  v67 = *(v58 + 237);
  v68 = *(v58 + 253);
  v69 = *(v58 + 269);
  *(v0 + 1464) = *(v58 + 285);
  *(v0 + 1432) = v68;
  *(v0 + 1448) = v69;
  *(v0 + 1416) = v67;
  v70 = *(v58 + 173);
  v71 = *(v58 + 189);
  v72 = *(v58 + 221);
  *(v0 + 1384) = *(v58 + 205);
  *(v0 + 1400) = v72;
  *(v0 + 1352) = v70;
  *(v0 + 1368) = v71;
  sub_1000B3B24(v58, v0 + 904);
  v73 = URL.absoluteString.getter();
  v75 = v74;
  *(v0 + 1824) = v73;
  *(v0 + 1832) = v74;
  sub_10014A8BC(v0 + 1632);
  v76 = *(v0 + 1312);
  *(v0 + 112) = *(v0 + 1296);
  *(v0 + 128) = v76;
  *(v0 + 144) = *(v0 + 1328);
  v77 = *(v0 + 1248);
  *(v0 + 48) = *(v0 + 1232);
  *(v0 + 64) = v77;
  v78 = *(v0 + 1280);
  *(v0 + 80) = *(v0 + 1264);
  *(v0 + 96) = v78;
  v79 = *(v0 + 1216);
  *(v0 + 16) = *(v0 + 1200);
  *(v0 + 32) = v79;
  v80 = *(v0 + 1432);
  *(v0 + 253) = *(v0 + 1416);
  v81 = *(v0 + 1448);
  *(v0 + 269) = v80;
  *(v0 + 285) = v81;
  v82 = *(v0 + 1368);
  *(v0 + 189) = *(v0 + 1352);
  *(v0 + 205) = v82;
  v83 = *(v0 + 1400);
  *(v0 + 221) = *(v0 + 1384);
  *(v0 + 160) = *(v0 + 1344);
  *(v0 + 168) = v73;
  *(v0 + 176) = v75;
  *(v0 + 184) = v66;
  *(v0 + 188) = 1;
  *(v0 + 301) = *(v0 + 1464);
  *(v0 + 237) = v83;
  v84 = swift_task_alloc();
  *(v0 + 1840) = v84;
  *v84 = v0;
  v84[1] = sub_100125D3C;

  return sub_100124D0C(v0 + 16);
}

uint64_t sub_100125D3C()
{

  return _swift_task_switch(sub_100125E64, 0, 0);
}

uint64_t sub_100125E64()
{
  v1 = *(v0 + 1832);
  v2 = *(v0 + 1824);
  v3 = *(v0 + 308);
  v4 = *(v0 + 1736);
  (*(v0 + 1808))(*(v0 + 1784), *(v0 + 1768));
  sub_10000DAF8(v4, &qword_10023C230, &qword_1001B4FB0);
  v5 = *(v0 + 1312);
  *(v0 + 704) = *(v0 + 1296);
  *(v0 + 720) = v5;
  *(v0 + 736) = *(v0 + 1328);
  *(v0 + 752) = *(v0 + 1344);
  v6 = *(v0 + 1248);
  *(v0 + 640) = *(v0 + 1232);
  *(v0 + 656) = v6;
  v7 = *(v0 + 1280);
  *(v0 + 672) = *(v0 + 1264);
  *(v0 + 688) = v7;
  v8 = *(v0 + 1216);
  *(v0 + 608) = *(v0 + 1200);
  *(v0 + 624) = v8;
  *(v0 + 760) = v2;
  *(v0 + 768) = v1;
  *(v0 + 776) = v3;
  *(v0 + 780) = 1;
  v9 = *(v0 + 1432);
  *(v0 + 845) = *(v0 + 1416);
  *(v0 + 861) = v9;
  *(v0 + 877) = *(v0 + 1448);
  *(v0 + 893) = *(v0 + 1464);
  v10 = *(v0 + 1368);
  *(v0 + 781) = *(v0 + 1352);
  *(v0 + 797) = v10;
  v11 = *(v0 + 1400);
  *(v0 + 813) = *(v0 + 1384);
  *(v0 + 829) = v11;
  sub_10003C04C(v0 + 608);

  v12 = *(v0 + 8);

  return v12();
}

void sub_100126038(void *a1, void *a2)
{
  v4 = [a1 connection];
  v5 = sub_100113600(a2, v4);

  if (!v2)
  {
  }
}

void *sub_1001260A4@<X0>(void *a1@<X8>)
{
  result = sub_1000E4850(&off_100216860);
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001260DC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 352) = a2;
  *(v4 + 360) = v3;
  *(v4 + 664) = a3;
  *(v4 + 344) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 368) = v5;
  *(v4 + 376) = *(v5 - 8);
  *(v4 + 384) = swift_task_alloc();

  return _swift_task_switch(sub_1001261A4, 0, 0);
}

uint64_t sub_1001261A4()
{
  v1 = *(v0 + 360);
  if (*(v0 + 664))
  {
    v2 = *(v0 + 344);
    v3 = v1[3];
    *(v0 + 488) = v3;
    v4 = v1[4];
    *(v0 + 496) = v4;
    v5 = v1[5];
    *(v0 + 504) = v5;
    v6 = swift_allocObject();
    *(v0 + 512) = v6;
    *(v6 + 16) = v2;
    v7 = swift_task_alloc();
    *(v0 + 520) = v7;
    *v7 = v0;
    v7[1] = sub_100126C00;

    return sub_10010F818(sub_10014D4E4, v6, v3, v4, v5);
  }

  else
  {
    v10 = *(v0 + 344);
    v9 = *(v0 + 352);
    v11 = swift_allocObject();
    *(v0 + 392) = v11;
    *(v11 + 16) = v10;
    *(v11 + 24) = v9;

    v12 = swift_task_alloc();
    *(v0 + 400) = v12;
    *v12 = v0;
    v12[1] = sub_1001263A0;

    return (sub_10010E9F0)();
  }
}

uint64_t sub_1001263A0()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_100127C34;
  }

  else
  {
    v2 = sub_1001264D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001264D0()
{
  v1 = v0[44];
  v2 = v0[43];
  v3 = swift_allocObject();
  v0[52] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[53] = v4;
  *v4 = v0;
  v4[1] = sub_1001265E4;

  return (sub_10010E730)();
}

uint64_t sub_1001265E4()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_100127C98;
  }

  else
  {
    v2 = sub_100126714;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100126714()
{
  v1 = v0[44];
  v2 = v0[43];
  v3 = swift_allocObject();
  v0[55] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[56] = v4;
  *v4 = v0;
  v4[1] = sub_100126828;

  return (sub_10010EB50)();
}

uint64_t sub_100126828()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_100127CFC;
  }

  else
  {
    v2 = sub_100126958;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100126958()
{
  v1 = v0[44];
  v2 = v0[43];
  v3 = swift_allocObject();
  v0[58] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[59] = v4;
  *v4 = v0;
  v4[1] = sub_100126A6C;

  return (sub_10010E890)();
}

uint64_t sub_100126A6C()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_100126B9C;
  }

  else
  {
    v2 = sub_10014D55C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100126B9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100126C00(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 528) = a1;
  *(v3 + 536) = v1;

  if (v1)
  {
    v4 = sub_100127D60;
  }

  else
  {
    v4 = sub_100126D38;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100126D38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), void *a7, char *a8)
{
  v9 = *(v8 + 528);
  v10 = *(v9 + 16);
  *(v8 + 544) = v10;
  if (v10)
  {
    v11 = *(v8 + 360);
    *(v8 + 552) = 0;
    if (*(v9 + 16))
    {
      v12 = *(v9 + 48);
      v13 = *(v9 + 64);
      v14 = *(v9 + 80);
      *(v8 + 80) = *(v9 + 96);
      v15 = *(v9 + 112);
      v16 = *(v9 + 128);
      v17 = *(v9 + 160);
      *(v8 + 128) = *(v9 + 144);
      *(v8 + 144) = v17;
      *(v8 + 96) = v15;
      *(v8 + 112) = v16;
      *(v8 + 64) = v14;
      v18 = *(v9 + 32);
      *(v8 + 32) = v12;
      *(v8 + 48) = v13;
      *(v8 + 16) = v18;
      v20 = *(v8 + 72);
      v19 = *(v8 + 80);
      v22 = v11[26];
      v21 = v11[27];
      v23 = v11[28];
      sub_100070EEC(v8 + 16, v8 + 160);
      v24 = swift_allocObject();
      *(v8 + 560) = v24;
      *(v24 + 16) = v20;
      *(v24 + 24) = v19;

      *(v8 + 328) = &type metadata for RetryCountDatabaseStore;
      *(v8 + 336) = sub_100146F68();
      *(v8 + 304) = v22;
      *(v8 + 312) = v21;
      *(v8 + 320) = v23;

      v25 = v23;
      v26 = swift_task_alloc();
      *(v8 + 568) = v26;
      v26[2] = v25;
      v26[3] = v8 + 304;
      v26[4] = sub_10014D680;
      v26[5] = v24;
      v9 = swift_task_alloc();
      *(v8 + 576) = v9;
      *v9 = v8;
      *(v9 + 8) = sub_100126FE0;
      a6 = sub_10014D278;
      a5 = 0x80000001001CD620;
      a8 = &type metadata for () + 8;
      a2 = 0;
      a3 = 0;
      a4 = 0xD00000000000001BLL;
      a7 = v26;
    }

    else
    {
      __break(1u);
    }

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v9, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {

    v27 = *(v8 + 344);
    v28 = swift_allocObject();
    *(v8 + 592) = v28;
    *(v28 + 16) = v27;
    v29 = swift_task_alloc();
    *(v8 + 600) = v29;
    *v29 = v8;
    v29[1] = sub_100127638;

    return (sub_10010E9F0)();
  }
}

uint64_t sub_100126FE0()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {

    v3 = sub_1001273E8;
  }

  else
  {

    sub_10000DB58((v2 + 304));
    v3 = sub_100127124;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100127124()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 552) + 1;
  v3 = sub_10003BC20(v0 + 16);
  if (v2 == v1)
  {

    v11 = *(v0 + 344);
    v12 = swift_allocObject();
    *(v0 + 592) = v12;
    *(v12 + 16) = v11;
    v13 = swift_task_alloc();
    *(v0 + 600) = v13;
    *v13 = v0;
    v13[1] = sub_100127638;
    v14 = *(v0 + 496);
    v15 = *(v0 + 504);
    v16 = *(v0 + 488);

    return sub_10010E9F0(sub_10010E9F0, sub_10014A14C, v12, v16, v14, v15);
  }

  else
  {
    v18 = *(v0 + 552) + 1;
    *(v0 + 552) = v18;
    v19 = *(v0 + 528);
    if (v18 >= *(v19 + 16))
    {
      __break(1u);
    }

    else
    {
      v20 = *(v0 + 360);
      v21 = (v19 + 144 * v18);
      v22 = v21[3];
      v23 = v21[4];
      v24 = v21[5];
      *(v0 + 80) = v21[6];
      v25 = v21[7];
      v26 = v21[8];
      v27 = v21[10];
      *(v0 + 128) = v21[9];
      *(v0 + 144) = v27;
      *(v0 + 96) = v25;
      *(v0 + 112) = v26;
      *(v0 + 48) = v23;
      *(v0 + 64) = v24;
      *(v0 + 16) = v21[2];
      *(v0 + 32) = v22;
      v29 = *(v0 + 72);
      v28 = *(v0 + 80);
      v31 = v20[26];
      v30 = v20[27];
      v32 = v20[28];
      sub_100070EEC(v0 + 16, v0 + 160);
      v33 = swift_allocObject();
      *(v0 + 560) = v33;
      *(v33 + 16) = v29;
      *(v33 + 24) = v28;

      *(v0 + 328) = &type metadata for RetryCountDatabaseStore;
      *(v0 + 336) = sub_100146F68();
      *(v0 + 304) = v31;
      *(v0 + 312) = v30;
      *(v0 + 320) = v32;

      v34 = v32;
      v35 = swift_task_alloc();
      *(v0 + 568) = v35;
      v35[2] = v34;
      v35[3] = v0 + 304;
      v35[4] = sub_10014D680;
      v35[5] = v33;
      v3 = swift_task_alloc();
      *(v0 + 576) = v3;
      *v3 = v0;
      v3[1] = sub_100126FE0;
      v8 = sub_10014D278;
      v7 = 0x80000001001CD620;
      v10 = &type metadata for () + 8;
      v4 = 0;
      v5 = 0;
      v6 = 0xD00000000000001BLL;
      v9 = v35;
    }

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v4, v5, v6, v7, v8, v9, v10);
  }
}

uint64_t sub_1001273E8()
{

  sub_10000DB58(v0 + 38);
  sub_10003BC20((v0 + 2));
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  v4 = Logger.postback.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[43];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to delete retry counts for app %llu with error: %@", v8, 0x16u);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v0[47] + 8))(v0[48], v0[46]);
  v11 = v0[43];
  v12 = swift_allocObject();
  v0[74] = v12;
  *(v12 + 16) = v11;
  v13 = swift_task_alloc();
  v0[75] = v13;
  *v13 = v0;
  v13[1] = sub_100127638;

  return (sub_10010E9F0)();
}

uint64_t sub_100127638()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_100127F98;
  }

  else
  {
    v2 = sub_100127768;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100127768()
{
  v1 = v0[45];
  v2 = v0[43];
  v4 = v1[6];
  v3 = v1[7];
  v5 = v1[8];
  v6 = swift_allocObject();
  v0[77] = v6;
  *(v6 + 16) = v2;
  v7 = swift_task_alloc();
  v0[78] = v7;
  *v7 = v0;
  v7[1] = sub_10012786C;

  return sub_10010E730(sub_10010E730, sub_10014A17C, v6, v4, v3, v5);
}

uint64_t sub_10012786C()
{
  *(*v1 + 632) = v0;

  if (v0)
  {
    v2 = sub_100127FFC;
  }

  else
  {
    v2 = sub_10012799C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012799C()
{
  v1 = v0[45];
  v2 = v0[43];
  v4 = v1[9];
  v3 = v1[10];
  v5 = v1[11];
  v6 = swift_allocObject();
  v0[80] = v6;
  *(v6 + 16) = v2;
  v7 = swift_task_alloc();
  v0[81] = v7;
  *v7 = v0;
  v7[1] = sub_100127AA0;

  return sub_10010EB50(sub_10010EB50, sub_10014A1A8, v6, v4, v3, v5);
}

uint64_t sub_100127AA0()
{
  *(*v1 + 656) = v0;

  if (v0)
  {
    v2 = sub_100128060;
  }

  else
  {
    v2 = sub_100127BD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100127BD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100127C34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100127C98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100127CFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100127D60(uint64_t a1)
{
  v3 = v1[47];
  v2 = v1[48];
  v4 = v1[46];
  v5 = Logger.postback.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[43];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 134218242;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to delete retry counts for app %llu with error: %@", v9, 0x16u);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v1[47] + 8))(v1[48], v1[46]);
  v12 = v1[43];
  v13 = swift_allocObject();
  v1[74] = v13;
  *(v13 + 16) = v12;
  v14 = swift_task_alloc();
  v1[75] = v14;
  *v14 = v1;
  v14[1] = sub_100127638;

  return (sub_10010E9F0)();
}

uint64_t sub_100127F98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100127FFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100128060()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001280C4(void *a1)
{
  v1 = [a1 connection];
  v2 = sub_100113DBC(23, &off_100216888, sub_1000AF1D0);
  v3 = sub_100085B0C(v1, v2, _swiftEmptyArrayStorage, 0, 0);
  if (![v3 deleteAllEntities])
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10014CA00(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

uint64_t sub_100128208()
{
  v1[43] = v0;
  v2 = type metadata accessor for Logger();
  v1[44] = v2;
  v1[45] = *(v2 - 8);
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = type metadata accessor for BarktivityType(0);
  v1[50] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[51] = v3;
  v1[52] = *(v3 - 8);
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();

  return _swift_task_switch(sub_100128384, 0, 0);
}

uint64_t sub_100128384()
{
  v1 = *(v0 + 344);
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[5];
  v5 = swift_task_alloc();
  *(v0 + 448) = v5;
  *v5 = v0;
  v5[1] = sub_10012845C;

  return sub_10010F818(sub_100146740, 0, v3, v2, v4);
}

uint64_t sub_10012845C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 456) = a1;
  *(v3 + 464) = v1;

  if (v1)
  {
    v4 = sub_100128CA8;
  }

  else
  {
    v4 = sub_100128570;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100128570()
{
  v80 = v0;
  v1 = *(v0 + 456);
  if (!*(v1 + 16))
  {
    v17 = *(v0 + 376);
    v18 = *(v0 + 352);
    v19 = *(v0 + 360);

    v20 = Logger.postback.unsafeMutableAddressor();
    (*(v19 + 16))(v17, v20, v18);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 376);
    v25 = *(v0 + 352);
    v26 = *(v0 + 360);
    if (v23)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No ghostbacks found to schedule for.", v27, 2u);
    }

    (*(v26 + 8))(v24, v25);
    goto LABEL_21;
  }

  v2 = *(v0 + 432);
  v3 = *(v0 + 408);
  v4 = *(v0 + 416);
  *(v0 + 16) = *(v1 + 32);
  v5 = *(v1 + 96);
  v7 = *(v1 + 48);
  v6 = *(v1 + 64);
  *(v0 + 64) = *(v1 + 80);
  *(v0 + 80) = v5;
  *(v0 + 32) = v7;
  *(v0 + 48) = v6;
  v8 = *(v1 + 160);
  v10 = *(v1 + 112);
  v9 = *(v1 + 128);
  *(v0 + 128) = *(v1 + 144);
  *(v0 + 144) = v8;
  *(v0 + 96) = v10;
  *(v0 + 112) = v9;
  sub_100070EEC(v0 + 16, v0 + 160);

  v11 = *(v0 + 152);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v13 = v12;
  v14 = *(v4 + 8);
  result = v14(v2, v3);
  v16 = v13 * 1000.0;
  if (COERCE__INT64(fabs(v13 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v16 <= -1.0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v16 >= 1.84467441e19)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v78 = v14;
  if (v11 <= v16)
  {
    static Date.now.getter();
  }

  else
  {
    Date.init(timeIntervalSince1970:)();
  }

  v28 = *(v0 + 464);
  v29 = *(v0 + 440);
  v30 = *(v0 + 408);
  v31 = *(v0 + 416);
  v32 = *(v0 + 400);
  v33 = *(v0 + 344);
  v34 = *(v0 + 89);
  sub_10003BC20(v0 + 16);
  if (v34)
  {
    v35 = 7200.0;
  }

  else
  {
    v35 = 60.0;
  }

  sub_10000DA7C((v33 + 168), *(v33 + 192));
  *(v0 + 328) = &type metadata for DelayedWoof;
  *(v0 + 336) = &off_1002195E0;
  v36 = swift_allocObject();
  *(v0 + 304) = v36;
  *(v36 + 16) = 0xD000000000000028;
  *(v36 + 24) = 0x80000001001CCA90;
  *(v36 + 32) = 2;
  *(v36 + 40) = 1;
  *(v36 + 42) = 1;
  *(v36 + 48) = v35;
  *(v36 + 56) = 0;
  v37 = *(v31 + 16);
  v37(v32, v29, v30);
  swift_storeEnumTagMultiPayload();
  sub_1000BD4C4((v0 + 304), v32);
  v38 = *(v0 + 440);
  if (v28)
  {
    v39 = *(v0 + 408);
    sub_1000BBB08(*(v0 + 400));
    v78(v38, v39);
    sub_10000DB58((v0 + 304));
    v41 = *(v0 + 360);
    v40 = *(v0 + 368);
    v42 = *(v0 + 352);
    v43 = Logger.postback.unsafeMutableAddressor();
    (*(v41 + 16))(v40, v43, v42);
    swift_errorRetain();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      swift_errorRetain();
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v48;
      *v47 = v48;
      _os_log_impl(&_mh_execute_header, v44, v45, "Encountered error while scheduling follow up postback fetch %@", v46, 0xCu);
      sub_10000DAF8(v47, &qword_100239F10, &qword_1001B4FD0);
    }

    v49 = v44;
    v51 = *(v0 + 360);
    v50 = *(v0 + 368);
    v52 = *(v0 + 352);

    (*(v51 + 8))(v50, v52);
    swift_willThrow();

    v53 = *(v0 + 8);
    goto LABEL_22;
  }

  v54 = *(v0 + 424);
  v55 = *(v0 + 408);
  v56 = *(v0 + 384);
  v57 = *(v0 + 352);
  v58 = *(v0 + 360);
  sub_1000BBB08(*(v0 + 400));
  sub_10000DB58((v0 + 304));
  v59 = Logger.postback.unsafeMutableAddressor();
  (*(v58 + 16))(v56, v59, v57);
  v37(v54, v38, v55);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  v62 = os_log_type_enabled(v60, v61);
  v63 = *(v0 + 440);
  v64 = *(v0 + 424);
  v65 = *(v0 + 408);
  v66 = *(v0 + 384);
  v68 = *(v0 + 352);
  v67 = *(v0 + 360);
  if (v62)
  {
    v77 = *(v0 + 352);
    v69 = swift_slowAlloc();
    v76 = v66;
    v70 = swift_slowAlloc();
    v79 = v70;
    *v69 = 136446210;
    sub_10014CA00(&qword_10023A7F0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    v75 = v63;
    v73 = v72;
    v78(v64, v65);
    v74 = sub_10017AD04(v71, v73, &v79);

    *(v69 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v60, v61, "Scheduling boot follow up for %{public}s", v69, 0xCu);
    sub_10000DB58(v70);

    (*(v67 + 8))(v76, v77);
    v78(v75, v65);
  }

  else
  {

    v78(v64, v65);
    (*(v67 + 8))(v66, v68);
    v78(v63, v65);
  }

LABEL_21:

  v53 = *(v0 + 8);
LABEL_22:

  return v53();
}