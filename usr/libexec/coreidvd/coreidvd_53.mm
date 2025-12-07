uint64_t sub_1005F4A00()
{
  *(*v1 + 4688) = v0;

  if (v0)
  {
    v2 = sub_1005F4DA0;
  }

  else
  {
    v2 = sub_1005F4B34;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005F4B34()
{
  v1 = *(v0 + 4656);
  v2 = *(v0 + 4296);
  v3 = *(v0 + 4280);
  v4 = *(v0 + 4272);

  v5 = *(v3 + 8);
  v5(v2, v4);
  v15 = *(v0 + 4192);
  v16 = *(v0 + 4184);
  v14 = *(v0 + 4208);
  v13 = *(v0 + 4200);
  v6 = *(v0 + 4360);
  v7 = *(v0 + 4344);
  v8 = *(v0 + 4336);
  v9 = *(v0 + 4320);
  v10 = *(v0 + 4272);
  sub_10000B90C(*(v0 + 4648), *(v0 + 4640));
  v5(v9, v10);
  (*(v7 + 8))(v6, v8);

  v11 = *(v0 + 8);

  return v11(v16, v15, v13, v14);
}

uint64_t sub_1005F4DA0()
{
  v1 = v0[582];
  v2 = v0[581];
  v3 = v0[580];
  v13 = v0[545];
  v4 = v0[543];
  v5 = v0[542];
  v6 = v0[540];
  v7 = v0[537];
  v8 = v0[535];
  v9 = v0[534];

  v10 = *(v8 + 8);
  v10(v7, v9);
  sub_10000B90C(v2, v3);
  v10(v6, v9);
  (*(v4 + 8))(v13, v5);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1005F4FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 2472) = v6;
  *(v7 + 2464) = a6;
  *(v7 + 201) = a5;
  *(v7 + 2456) = a4;
  *(v7 + 2448) = a3;
  *(v7 + 2440) = a2;
  *(v7 + 2432) = a1;
  v8 = type metadata accessor for DIPError.Code();
  *(v7 + 2480) = v8;
  *(v7 + 2488) = *(v8 - 8);
  *(v7 + 2496) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v7 + 2504) = v9;
  *(v7 + 2512) = *(v9 - 8);
  *(v7 + 2520) = swift_task_alloc();
  v10 = sub_100007224(&qword_100842078, &unk_1006E9660);
  *(v7 + 2528) = v10;
  *(v7 + 2536) = *(v10 - 8);
  *(v7 + 2544) = swift_task_alloc();
  *(v7 + 2552) = swift_task_alloc();
  v11 = sub_100007224(&qword_100841070, &unk_1006DDAB0);
  *(v7 + 2560) = v11;
  *(v7 + 2568) = *(v11 - 8);
  *(v7 + 2576) = swift_task_alloc();
  *(v7 + 2584) = swift_task_alloc();
  type metadata accessor for IdentityProofingRequestV2(0);
  *(v7 + 2592) = swift_task_alloc();
  v12 = sub_100007224(&qword_10083DC00, &qword_1006DB6E0);
  *(v7 + 2600) = v12;
  *(v7 + 2608) = *(v12 - 8);
  *(v7 + 2616) = swift_task_alloc();
  *(v7 + 2624) = swift_task_alloc();
  v13 = sub_100007224(&qword_10083DE08, qword_1006DBA50);
  *(v7 + 2632) = v13;
  *(v7 + 2640) = *(v13 - 8);
  *(v7 + 2648) = swift_task_alloc();
  *(v7 + 2656) = swift_task_alloc();
  v14 = sub_100007224(&qword_10083E4B8, &unk_1006DBF30);
  *(v7 + 2664) = v14;
  *(v7 + 2672) = *(v14 - 8);
  *(v7 + 2680) = swift_task_alloc();
  *(v7 + 2688) = swift_task_alloc();
  type metadata accessor for SharingRegistrationRequest(0);
  *(v7 + 2696) = swift_task_alloc();
  v15 = sub_100007224(&unk_10084A100, &qword_1006E9EA0);
  *(v7 + 2704) = v15;
  *(v7 + 2712) = *(v15 - 8);
  *(v7 + 2720) = swift_task_alloc();
  *(v7 + 2728) = swift_task_alloc();
  type metadata accessor for IdentityProofingRequest(0);
  *(v7 + 2736) = swift_task_alloc();
  v16 = sub_100007224(&qword_100849640, &qword_1006E9670);
  *(v7 + 2744) = v16;
  *(v7 + 2752) = *(v16 - 8);
  *(v7 + 2760) = swift_task_alloc();
  *(v7 + 2768) = swift_task_alloc();

  return _swift_task_switch(sub_1005F54D0, 0, 0);
}

uint64_t sub_1005F54D0()
{
  v106 = v0;
  v1 = (v0 + 2424);
  v2 = *(v0 + 201);
  *(v0 + 2424) = &_swiftEmptyDictionarySingleton;
  if ((v2 & 1) == 0)
  {
    if (qword_100832CC0 != -1)
    {
      swift_once();
    }

    v3 = qword_1008823E0;
    v4 = sub_100592810();
    if (v5 == 1)
    {
      sub_1005946FC();
    }

    else
    {
      sub_10003477C(v4, v5);
    }

    v6 = sub_100592810();
    v8 = v7;

    if (v8 >= 2)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10014BC18(v6, v8, v9, v10);
    }
  }

  v11 = *(v0 + 2456);
  if (v11)
  {

    v12 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105 = v12;
    sub_1005FBF5C(v11, sub_1005FB268, 0, isUniquelyReferenced_nonNull_native, &v105);

    *v1 = v105;
  }

  sub_10001F2EC(*(v0 + 2432), v0 + 2272);
  sub_100007224(&qword_100849648, &qword_1006E9678);
  sub_100007224(&qword_100849650, &qword_1006E9680);
  if (swift_dynamicCast())
  {
    sub_10001F2EC(*(v0 + 2432), v0 + 2368);
    swift_dynamicCast();
    v14 = *(v0 + 1992);
    v15 = *(v0 + 2000);
    sub_10000BA08((v0 + 1968), v14);
    v16 = (*(v15 + 24))(v14, v15);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    sub_10000BB78((v0 + 1968));
    sub_10000BB78((v0 + 2008));
    goto LABEL_18;
  }

  if (swift_dynamicCast())
  {
    v23 = *(v0 + 2768);
    v24 = *(v0 + 2760);
    v25 = *(v0 + 2752);
    v26 = *(v0 + 2744);
    v27 = *(v0 + 2736);
    sub_10001F2EC(*(v0 + 2432), v0 + 2336);
    swift_dynamicCast();
    JWSSignedJSON.payload.getter();
    v28 = *(v25 + 8);
    v28(v24, v26);
    v16 = *v27;
    v18 = v27[1];
    v20 = v27[2];
    v22 = v27[3];

    v29 = type metadata accessor for IdentityProofingRequest;
LABEL_17:
    sub_1005FEB84(v27, v29);
    v28(v23, v26);
    goto LABEL_18;
  }

  if (swift_dynamicCast())
  {
    v23 = *(v0 + 2728);
    v30 = *(v0 + 2720);
    v31 = *(v0 + 2712);
    v26 = *(v0 + 2704);
    v27 = *(v0 + 2696);
    sub_10001F2EC(*(v0 + 2432), v0 + 2304);
    swift_dynamicCast();
    JWSSignedJSON.payload.getter();
    v28 = *(v31 + 8);
    v28(v30, v26);
    v16 = *v27;
    v18 = v27[1];
    v20 = v27[2];
    v22 = v27[3];

    v29 = type metadata accessor for SharingRegistrationRequest;
    goto LABEL_17;
  }

  if (swift_dynamicCast())
  {
    v47 = *(v0 + 2688);
    v48 = *(v0 + 2680);
    v49 = *(v0 + 2672);
    v50 = *(v0 + 2664);
    sub_10001F2EC(*(v0 + 2432), v0 + 2240);
    swift_dynamicCast();
    JWSSignedJSON.payload.getter();
    v51 = *(v0 + 1152);
    *(v0 + 1280) = *(v0 + 1136);
    *(v0 + 1296) = v51;
    *(v0 + 1312) = *(v0 + 1168);
    v52 = *(v0 + 1088);
    *(v0 + 1216) = *(v0 + 1072);
    *(v0 + 1232) = v52;
    v53 = *(v0 + 1120);
    *(v0 + 1248) = *(v0 + 1104);
    *(v0 + 1264) = v53;
    v54 = *(v0 + 1056);
    *(v0 + 1184) = *(v0 + 1040);
    *(v0 + 1200) = v54;
    v55 = *(v49 + 8);
    v55(v48, v50);
    v16 = *(v0 + 1184);
    v18 = *(v0 + 1192);
    v20 = *(v0 + 1200);
    v22 = *(v0 + 1208);

    sub_1000AE518(v0 + 1184);
    v55(v47, v50);
  }

  else if (swift_dynamicCast())
  {
    v56 = *(v0 + 2656);
    v57 = *(v0 + 2648);
    v58 = *(v0 + 2640);
    v59 = *(v0 + 2632);
    sub_10001F2EC(*(v0 + 2432), v0 + 2176);
    swift_dynamicCast();
    JWSSignedJSON.payload.getter();
    v60 = *(v0 + 1440);
    *(v0 + 1560) = *(v0 + 1424);
    *(v0 + 1576) = v60;
    *(v0 + 1592) = *(v0 + 1456);
    v61 = *(v0 + 1376);
    *(v0 + 1496) = *(v0 + 1360);
    *(v0 + 1512) = v61;
    v62 = *(v0 + 1408);
    *(v0 + 1528) = *(v0 + 1392);
    *(v0 + 1544) = v62;
    v63 = *(v0 + 1344);
    *(v0 + 1464) = *(v0 + 1328);
    *(v0 + 1480) = v63;
    v64 = *(v58 + 8);
    v64(v57, v59);
    v16 = *(v0 + 1464);
    v18 = *(v0 + 1472);
    v20 = *(v0 + 1480);
    v22 = *(v0 + 1488);

    sub_1000AE6AC(v0 + 1464);
    v64(v56, v59);
  }

  else
  {
    if (swift_dynamicCast())
    {
      v23 = *(v0 + 2624);
      v65 = *(v0 + 2616);
      v66 = *(v0 + 2608);
      v26 = *(v0 + 2600);
      v27 = *(v0 + 2592);
      sub_10001F2EC(*(v0 + 2432), v0 + 2144);
      swift_dynamicCast();
      JWSSignedJSON.payload.getter();
      v28 = *(v66 + 8);
      v28(v65, v26);
      v16 = *v27;
      v18 = v27[1];
      v20 = v27[2];
      v22 = v27[3];

      v29 = type metadata accessor for IdentityProofingRequestV2;
      goto LABEL_17;
    }

    if (swift_dynamicCast())
    {
      v67 = *(v0 + 2584);
      v68 = *(v0 + 2576);
      v69 = *(v0 + 2568);
      v70 = *(v0 + 2560);
      sub_10001F2EC(*(v0 + 2432), v0 + 2080);
      swift_dynamicCast();
      JWSSignedJSON.payload.getter();
      v71 = *(v0 + 1680);
      *(v0 + 1768) = *(v0 + 1664);
      *(v0 + 1784) = v71;
      *(v0 + 1800) = *(v0 + 1696);
      v72 = *(v0 + 1616);
      *(v0 + 1704) = *(v0 + 1600);
      *(v0 + 1720) = v72;
      v73 = *(v0 + 1648);
      *(v0 + 1736) = *(v0 + 1632);
      *(v0 + 1752) = v73;
      v74 = *(v69 + 8);
      v74(v68, v70);
      v16 = *(v0 + 1704);
      v18 = *(v0 + 1712);
      v20 = *(v0 + 1720);
      v22 = *(v0 + 1728);

      sub_1000F978C(v0 + 1704);
      v74(v67, v70);
    }

    else if (swift_dynamicCast())
    {
      v75 = *(v0 + 2432);
      v76 = *(v0 + 672);
      *(v0 + 976) = *(v0 + 656);
      *(v0 + 992) = v76;
      v77 = *(v0 + 704);
      *(v0 + 1008) = *(v0 + 688);
      *(v0 + 1024) = v77;
      v78 = *(v0 + 608);
      *(v0 + 912) = *(v0 + 592);
      *(v0 + 928) = v78;
      v79 = *(v0 + 640);
      *(v0 + 944) = *(v0 + 624);
      *(v0 + 960) = v79;
      v80 = *(v0 + 576);
      *(v0 + 880) = *(v0 + 560);
      *(v0 + 896) = v80;
      sub_1000B16EC(v0 + 880);
      sub_10001F2EC(v75, v0 + 2048);
      swift_dynamicCast();
      v81 = *(v0 + 480);
      *(v0 + 784) = *(v0 + 464);
      *(v0 + 800) = v81;
      v82 = *(v0 + 448);
      *(v0 + 752) = *(v0 + 432);
      *(v0 + 768) = v82;
      v83 = *(v0 + 544);
      *(v0 + 848) = *(v0 + 528);
      *(v0 + 864) = v83;
      v84 = *(v0 + 512);
      *(v0 + 816) = *(v0 + 496);
      *(v0 + 832) = v84;
      v85 = *(v0 + 416);
      *(v0 + 720) = *(v0 + 400);
      *(v0 + 736) = v85;
      v16 = *(v0 + 720);
      v18 = *(v0 + 728);
      v20 = *(v0 + 736);
      v22 = *(v0 + 744);

      sub_1000B16EC(v0 + 720);
    }

    else if (swift_dynamicCast())
    {
      v86 = *(v0 + 2544);
      v87 = *(v0 + 2536);
      v88 = *(v0 + 2528);
      (*(v87 + 32))(v86, *(v0 + 2552), v88);
      JWSSignedJSON.payload.getter();
      (*(v87 + 8))(v86, v88);
      v89 = *(v0 + 320);
      *(v0 + 112) = *(v0 + 304);
      *(v0 + 128) = v89;
      v90 = *(v0 + 288);
      *(v0 + 80) = *(v0 + 272);
      *(v0 + 96) = v90;
      *(v0 + 185) = *(v0 + 377);
      v91 = *(v0 + 368);
      *(v0 + 160) = *(v0 + 352);
      *(v0 + 176) = v91;
      *(v0 + 144) = *(v0 + 336);
      v92 = *(v0 + 256);
      *(v0 + 48) = *(v0 + 240);
      *(v0 + 64) = v92;
      v93 = *(v0 + 224);
      *(v0 + 16) = *(v0 + 208);
      *(v0 + 32) = v93;
      v16 = *(v0 + 16);
      v18 = *(v0 + 24);
      v20 = *(v0 + 32);
      v22 = *(v0 + 40);

      sub_1000AE408(v0 + 16);
    }

    else if (swift_dynamicCast())
    {
      v94 = *(v0 + 2432);

      sub_10001F2EC(v94, v0 + 2112);
      swift_dynamicCast();
      v16 = *(v0 + 1888);
      v18 = *(v0 + 1896);
      v20 = *(v0 + 1904);
      v22 = *(v0 + 1912);
    }

    else
    {
      defaultLogger()();
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();
      v97 = os_log_type_enabled(v95, v96);
      v98 = *(v0 + 2520);
      v99 = *(v0 + 2512);
      v100 = *(v0 + 2504);
      if (v97)
      {
        v101 = swift_slowAlloc();
        *v101 = 0;
        _os_log_impl(&_mh_execute_header, v95, v96, "unknown topeka request, conversation/request id not added to http header", v101, 2u);
      }

      (*(v99 + 8))(v98, v100);
      v16 = 0;
      v18 = 0;
      v20 = 0;
      v22 = 0;
    }
  }

LABEL_18:
  v32 = *(v0 + 2432);
  sub_10000BB78((v0 + 2272));
  v104 = sub_1005FC224(v16, v18, v20, v22, *(v0 + 2424));
  *(v0 + 2776) = v104;

  sub_1000B00AC(v16, v18, v20, v22);
  v33 = v32[3];
  v34 = sub_10000BA08(v32, v33);
  *(v0 + 2232) = v33;
  v35 = sub_100032DBC((v0 + 2208));
  (*(*(v33 - 8) + 16))(v35, v34, v33);
  LOBYTE(v33) = sub_1005FD704(v0 + 2208);
  sub_10000BB78((v0 + 2208));
  v103 = v33;
  if (v33)
  {
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v36 = v37 ^ 1;
  }

  else
  {

    v36 = 0;
  }

  v38 = *(v0 + 2472);
  v39 = *(v0 + 2464);
  v40 = *(v0 + 201);
  v41 = *(v0 + 2448);
  v42 = *(v0 + 2440);
  v43 = *(v0 + 2432);
  v44 = swift_task_alloc();
  *(v0 + 2784) = v44;
  *(v44 + 16) = v42;
  *(v44 + 24) = v41;
  *(v44 + 32) = v38;
  *(v44 + 40) = v103;
  *(v44 + 48) = v39;
  *(v44 + 56) = v43;
  *(v44 + 64) = v104;
  *(v44 + 72) = v40;
  *(v44 + 73) = v36 & 1;
  v45 = swift_task_alloc();
  *(v0 + 2792) = v45;
  v46 = sub_100007224(&qword_100849658, &qword_1006E9698);
  *v45 = v0;
  v45[1] = sub_1005F6110;

  return DIPRetrier.retry<A>(operation:)(v0 + 2400, &unk_1006E9690, v44, v46);
}

uint64_t sub_1005F6110()
{
  *(*v1 + 2800) = v0;

  if (v0)
  {
    v2 = sub_1005F63C4;
  }

  else
  {

    v2 = sub_1005F6238;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005F6238()
{
  v5 = v0[300];
  v3 = v0[302];
  v4 = v0[301];

  v1 = v0[1];

  return v1(v5, v4, v3);
}

uint64_t sub_1005F63C4()
{
  v18 = v0[311];
  v19 = v0[312];
  v20 = v0[310];
  v17 = v0[306];
  v15 = v0[309];
  v16 = v0[305];

  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v1 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006BF740;
  v5 = v4 + v3;
  v6 = (v5 + *(v1 + 48));
  v7 = enum case for DIPError.PropertyKey.conversationID(_:);
  v8 = type metadata accessor for DIPError.PropertyKey();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v5, v7, v8);
  v10 = *(v15 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v11 = *(v15 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v6[3] = &type metadata for String;
  v6[4] = &protocol witness table for String;
  *v6 = v10;
  v6[1] = v11;
  v12 = (v5 + v2 + *(v1 + 48));
  v9();
  v12[3] = &type metadata for String;
  v12[4] = &protocol witness table for String;
  *v12 = v16;
  v12[1] = v17;
  swift_errorRetain();

  sub_10003C9C0(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v18 + 104))(v19, enum case for DIPError.Code.internalError(_:), v20);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_1005F6850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 377) = v14;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 136) = a4;
  *(v8 + 144) = a6;
  *(v8 + 376) = a5;
  *(v8 + 120) = a2;
  *(v8 + 128) = a3;
  *(v8 + 112) = a1;
  v9 = type metadata accessor for DIPError.Code();
  *(v8 + 168) = v9;
  *(v8 + 176) = *(v9 - 8);
  *(v8 + 184) = swift_task_alloc();
  v10 = type metadata accessor for URL();
  *(v8 + 192) = v10;
  *(v8 + 200) = *(v10 - 8);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v8 + 248) = v11;
  *(v8 + 256) = *(v11 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();

  return _swift_task_switch(sub_1005F6A84, 0, 0);
}

uint64_t sub_1005F6A84(uint64_t a1)
{
  v18 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 304);
  v6 = *(v1 + 248);
  v7 = *(v1 + 256);
  if (v4)
  {
    v9 = *(v1 + 120);
    v8 = *(v1 + 128);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v17);
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending topeka post request to %{public}s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  *(v1 + 312) = v12;
  v13 = swift_task_alloc();
  *(v1 + 320) = v13;
  *v13 = v1;
  v13[1] = sub_1005F6C38;
  v14 = *(v1 + 240);
  v15 = *(v1 + 376);

  return sub_1005F8A6C(v14, v15);
}

uint64_t sub_1005F6C38()
{

  return _swift_task_switch(sub_1005F6D34, 0, 0);
}

uint64_t sub_1005F6D34()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  sub_10000BBC4(*(v0 + 144), v1, &unk_100844540, &unk_1006BFBC0);
  v4 = *(v3 + 48);
  if (v4(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 224);
    v6 = *(v0 + 192);
    sub_10000BBC4(*(v0 + 240), *(v0 + 232), &unk_100844540, &unk_1006BFBC0);
    if (v4(v5, 1, v6) != 1)
    {
      sub_10000BE18(*(v0 + 224), &unk_100844540, &unk_1006BFBC0);
    }
  }

  else
  {
    v7 = *(v0 + 232);
    v8 = *(v0 + 192);
    v9 = *(v0 + 200);
    (*(v9 + 32))(v7, *(v0 + 224), v8);
    (*(v9 + 56))(v7, 0, 1, v8);
  }

  v10 = *(v0 + 232);
  v11 = *(v0 + 192);
  if (v4(v10, 1, v11) == 1)
  {
    sub_10000BE18(v10, &unk_100844540, &unk_1006BFBC0);

    v12 = *(v0 + 120);
    v13 = *(v0 + 128);
  }

  else
  {
    v15 = *(v0 + 208);
    v14 = *(v0 + 216);
    v16 = *(v0 + 200);
    (*(v16 + 32))(v14, v10, v11);
    URL.appendingPathComponent(_:)();
    v12 = URL.absoluteString.getter();
    v13 = v17;
    v18 = *(v16 + 8);
    v18(v15, v11);
    v18(v14, v11);
  }

  *(v0 + 328) = v13;
  v19 = *(v0 + 152);
  v20 = *(v0 + 160);
  v21 = v19[3];
  v22 = sub_10000BA08(v19, v21);
  *(v0 + 40) = v21;
  v23 = sub_100032DBC((v0 + 16));
  (*(*(v21 - 8) + 16))(v23, v22, v21);
  v24 = swift_task_alloc();
  *(v0 + 336) = v24;
  *v24 = v0;
  v24[1] = sub_1005F7008;
  v25 = *(v0 + 377);

  return sub_1005F2458(v0 + 16, v12, v13, v20, &off_1007FC2F8, v25);
}

uint64_t sub_1005F7008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[43] = a1;
  v5[44] = a2;
  v5[45] = a3;
  v5[46] = v3;

  if (v3)
  {
    v6 = sub_1005F7BF8;
  }

  else
  {
    sub_10000BB78(v5 + 2);
    v6 = sub_1005F7150;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005F7150()
{
  v87 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    v27 = *(v0 + 240);
    goto LABEL_25;
  }

  v2 = v1;
  v3 = *(v0 + 360);
  v4 = [v2 statusCode];
  if (v4 != 428)
  {
    if (v4 == 301)
    {

      defaultLogger()();
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Received 301 from server", v7, 2u);
      }

      v8 = *(v0 + 312);
      v9 = *(v0 + 296);
      v10 = *(v0 + 248);

      v8(v9, v10);
      v11 = String._bridgeToObjectiveC()();
      v12 = [v2 valueForHTTPHeaderField:v11];

      if (v12)
      {
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        *(v0 + 80) = v13;
        *(v0 + 88) = v15;
        sub_1000ACCA0();
        Collection.nilIfEmpty.getter();

        v16 = *(v0 + 104);
        if (v16)
        {
          v17 = *(v0 + 96);
          defaultLogger()();

          v18 = Logger.logObject.getter();
          v19 = static os_log_type_t.debug.getter();

          v20 = os_log_type_enabled(v18, v19);
          v21 = *(v0 + 312);
          v22 = *(v0 + 288);
          v23 = *(v0 + 248);
          if (v20)
          {
            v82 = *(v0 + 312);
            v24 = v17;
            v25 = swift_slowAlloc();
            v78 = v22;
            v26 = swift_slowAlloc();
            v86 = v26;
            *v25 = 136446210;
            *(v25 + 4) = sub_100141FE4(v24, v16, &v86);
            _os_log_impl(&_mh_execute_header, v18, v19, "Received 301 server response with location header %{public}s", v25, 0xCu);
            sub_10000BB78(v26);

            v17 = v24;

            v82(v78, v23);
          }

          else
          {

            v21(v22, v23);
          }

          sub_1005FDFA8(v17, v16, *(v0 + 378));
        }
      }

      v69 = *(v0 + 360);
      v70 = *(v0 + 344);
      v81 = *(v0 + 352);
      v85 = *(v0 + 240);
      v71 = *(v0 + 112);
      (*(*(v0 + 176) + 104))(*(v0 + 184), enum case for DIPError.Code.httpMovedPermanently(_:), *(v0 + 168));
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v72 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

      sub_10000B90C(v70, v81);
      sub_10000BE18(v85, &unk_100844540, &unk_1006BFBC0);
      *v71 = v72;
      *(v71 + 8) = 0;
      *(v71 + 16) = 1;
      v49 = &enum case for DIPRetrier.RetryResult.retry<A>(_:);
      goto LABEL_30;
    }

    v50 = String._bridgeToObjectiveC()();
    v51 = [v2 valueForHTTPHeaderField:v50];

    if (!v51)
    {
      v64 = *(v0 + 360);
      sub_10000BE18(*(v0 + 240), &unk_100844540, &unk_1006BFBC0);

LABEL_26:
      v67 = *(v0 + 360);
      v68 = *(v0 + 112);
      *v68 = *(v0 + 344);
      *(v68 + 16) = v67;
      v49 = &enum case for DIPRetrier.RetryResult.success<A>(_:);
      goto LABEL_30;
    }

    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    defaultLogger()();

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();

    v57 = os_log_type_enabled(v55, v56);
    v58 = *(v0 + 312);
    v59 = *(v0 + 264);
    v60 = *(v0 + 248);
    if (v57)
    {
      v84 = *(v0 + 312);
      v61 = v52;
      v62 = swift_slowAlloc();
      v80 = v59;
      v63 = swift_slowAlloc();
      v86 = v63;
      *v62 = 136446210;
      *(v62 + 4) = sub_100141FE4(v61, v54, &v86);
      _os_log_impl(&_mh_execute_header, v55, v56, "Content-Location header set to %{public}s", v62, 0xCu);
      sub_10000BB78(v63);

      v52 = v61;

      v84(v80, v60);
    }

    else
    {

      v58(v59, v60);
    }

    v65 = *(v0 + 360);
    v66 = *(v0 + 240);
    sub_1005FDFA8(v52, v54, *(v0 + 378));

    v27 = v66;
LABEL_25:
    sub_10000BE18(v27, &unk_100844540, &unk_1006BFBC0);
    goto LABEL_26;
  }

  defaultLogger()();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Received 428 from server", v30, 2u);
  }

  v31 = *(v0 + 312);
  v32 = *(v0 + 280);
  v33 = *(v0 + 248);

  v31(v32, v33);
  v34 = String._bridgeToObjectiveC()();
  v35 = [v2 valueForHTTPHeaderField:v34];

  if (v35)
  {
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    *(v0 + 48) = v36;
    *(v0 + 56) = v38;
    sub_1000ACCA0();
    Collection.nilIfEmpty.getter();

    if (*(v0 + 72))
    {

      defaultLogger()();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Server indiciated registration is required", v41, 2u);
      }

      v42 = *(v0 + 312);
      v43 = *(v0 + 272);
      v44 = *(v0 + 248);

      v42(v43, v44);
      type metadata accessor for DaemonAnalytics();
      static DaemonAnalytics.sendPasskitRegistrationEvent(success:preconditionFailed:)();
    }
  }

  v45 = *(v0 + 352);
  v46 = *(v0 + 360);
  v47 = *(v0 + 344);
  v79 = *(v0 + 240);
  v83 = *(v0 + 112);
  (*(*(v0 + 176) + 104))(*(v0 + 184), enum case for DIPError.Code.httpPreconditionRequired(_:), *(v0 + 168));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1005FEAD4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v48 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

  sub_10000B90C(v47, v45);
  sub_10000BE18(v79, &unk_100844540, &unk_1006BFBC0);
  *v83 = v48;
  v49 = &enum case for DIPRetrier.RetryResult.failure<A>(_:);
LABEL_30:
  v73 = *(v0 + 112);
  v74 = *v49;
  v75 = sub_100007224(&qword_100849660, &qword_1006E96A0);
  (*(*(v75 - 8) + 104))(v73, v74, v75);

  v76 = *(v0 + 8);

  return v76();
}

uint64_t sub_1005F7BF8()
{
  v1 = v0[46];
  v2 = v0[14];
  sub_10000BE18(v0[30], &unk_100844540, &unk_1006BFBC0);
  sub_10000BB78(v0 + 2);
  *v2 = v1;
  v3 = v0[14];
  v4 = enum case for DIPRetrier.RetryResult.failure<A>(_:);
  v5 = sub_100007224(&qword_100849660, &qword_1006E96A0);
  (*(*(v5 - 8) + 104))(v3, v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1005F7D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[12] = a7;
  v8[13] = v7;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  v9 = type metadata accessor for Logger();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();

  return _swift_task_switch(sub_1005F7EA4, 0, 0);
}

uint64_t sub_1005F7EA4()
{
  v1 = sub_10060A770(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), 1);
  *(v0 + 168) = v1;
  if (!v1)
  {
LABEL_4:

    v5 = *(v0 + 8);
    v6 = *(v0 + 168);

    return v5(v6);
  }

  v2 = *(v0 + 160);
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  v3 = type metadata accessor for DIPError.Code();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
LABEL_3:
    sub_10000BE18(*(v0 + 160), &qword_10083B020, &unk_1006D8ED0);
    goto LABEL_4;
  }

  v8 = *(v0 + 152);
  sub_10000BBC4(*(v0 + 160), v8, &qword_10083B020, &unk_1006D8ED0);
  v9 = (*(v4 + 88))(v8, v3);
  if (v9 == enum case for DIPError.Code.topekaSharedVerifiedClaimNeedsRefresh(_:) || v9 == enum case for DIPError.Code.topekaSharedVerifiedClaimExpired(_:))
  {
    goto LABEL_12;
  }

  if (v9 == enum case for DIPError.Code.topekaSelfHealDeleteCurrentClaim(_:))
  {
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Received self heal delete current claim response code from server", v30, 2u);
    }

    v31 = *(v0 + 144);
    v32 = *(v0 + 112);
    v33 = *(v0 + 120);
    v34 = *(v0 + 104);

    (*(v33 + 8))(v31, v32);
    v35 = v34 + OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_selfHealer;
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 176) = Strong;
    if (!Strong)
    {
      goto LABEL_3;
    }

    v37 = *(v35 + 8);
    ObjectType = swift_getObjectType();
    v53 = (*(v37 + 8) + **(v37 + 8));
    v39 = swift_task_alloc();
    *(v0 + 184) = v39;
    *v39 = v0;
    v39[1] = sub_1005F85DC;
    v23 = *(v0 + 96);
    v24 = *(v0 + 88);
    v25 = ObjectType;
    v26 = v37;
    v27 = v53;

    return v27(v24, v23, v25, v26);
  }

  if (v9 == enum case for DIPError.Code.topekaSelfHealDeleteAllClaimsForCurrentProvider(_:))
  {
LABEL_12:
    sub_10000BE18(*(v0 + 160), &qword_10083B020, &unk_1006D8ED0);
    defaultLogger()();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Received self heal delete all claims for current provider response code from server", v13, 2u);
    }

    v14 = *(v0 + 136);
    v15 = *(v0 + 112);
    v16 = *(v0 + 120);
    v17 = *(v0 + 104);

    (*(v16 + 8))(v14, v15);
    v18 = v17 + OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_selfHealer;
    v19 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 192) = v19;
    if (!v19)
    {
      goto LABEL_4;
    }

    v20 = *(v18 + 8);
    v21 = swift_getObjectType();
    v52 = (*(v20 + 16) + **(v20 + 16));
    v22 = swift_task_alloc();
    *(v0 + 200) = v22;
    *v22 = v0;
    v22[1] = sub_1005F879C;
    v23 = *(v0 + 96);
    v24 = *(v0 + 88);
    v25 = v21;
    v26 = v20;
    v27 = v52;

    return v27(v24, v23, v25, v26);
  }

  if (v9 != enum case for DIPError.Code.topekaSelfHealDeleteEverything(_:))
  {
    (*(v4 + 8))(*(v0 + 152), v3);
    goto LABEL_3;
  }

  defaultLogger()();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Received self heal delete everything response code from server", v42, 2u);
  }

  v44 = *(v0 + 120);
  v43 = *(v0 + 128);
  v46 = *(v0 + 104);
  v45 = *(v0 + 112);

  (*(v44 + 8))(v43, v45);
  v47 = v46 + OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_selfHealer;
  v48 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 208) = v48;
  if (!v48)
  {
    goto LABEL_3;
  }

  v49 = *(v47 + 8);
  v50 = swift_getObjectType();
  v54 = (*(v49 + 24) + **(v49 + 24));
  v51 = swift_task_alloc();
  *(v0 + 216) = v51;
  *v51 = v0;
  v51[1] = sub_1005F8958;

  return v54(v50, v49);
}

uint64_t sub_1005F85DC()
{
  v1 = *(*v0 + 176);

  return _swift_task_switch(sub_1005F86F0, 0, 0);
}

uint64_t sub_1005F86F0()
{
  sub_10000BE18(v0[20], &qword_10083B020, &unk_1006D8ED0);

  v1 = v0[1];
  v2 = v0[21];

  return v1(v2);
}

uint64_t sub_1005F879C()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v6 = *v0;

  v3 = *(v6 + 8);
  v4 = *(v1 + 168);

  return v3(v4);
}

uint64_t sub_1005F8958()
{
  v1 = *(*v0 + 208);

  return _swift_task_switch(sub_1005FEBE4, 0, 0);
}

uint64_t sub_1005F8A6C(uint64_t a1, char a2)
{
  *(v2 + 2873) = a2;
  *(v2 + 7896) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 7904) = v3;
  *(v2 + 7912) = *(v3 - 8);
  *(v2 + 7920) = swift_task_alloc();
  *(v2 + 7928) = swift_task_alloc();
  *(v2 + 7936) = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  *(v2 + 7944) = swift_task_alloc();
  v4 = type metadata accessor for URL();
  *(v2 + 7952) = v4;
  *(v2 + 7960) = *(v4 - 8);
  *(v2 + 7968) = swift_task_alloc();
  *(v2 + 7976) = swift_task_alloc();

  return _swift_task_switch(sub_1005F8BE8, 0, 0);
}

uint64_t sub_1005F8BE8()
{
  v65 = v0;
  if (*(v0 + 2873) > 1u || *(v0 + 2873))
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v3)
    {
      v1 = static DaemonDefaultsKeys.topekaBaseURL.getter();
    }

    else
    {
      v1 = static DaemonDefaultsKeys.topekaBaseURLV2.getter();
    }
  }

  else
  {

    v1 = static DaemonDefaultsKeys.topekaBaseURL.getter();
  }

  v4 = v1;
  v5 = v2;
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 stringForKey:v7];

  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = *(v0 + 7960);
  v10 = *(v0 + 7952);
  v11 = *(v0 + 7944);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  sub_1005A2220(v12, v14, v11);
  if ((*(v9 + 48))(v11, 1, v10) == 1)
  {
    sub_10000BE18(*(v0 + 7944), &unk_100844540, &unk_1006BFBC0);
    defaultLogger()();

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 7928);
    v19 = *(v0 + 7912);
    v20 = *(v0 + 7904);
    if (v17)
    {
      v62 = *(v0 + 7928);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v64[0] = v22;
      *v21 = 136446210;
      v23 = sub_100141FE4(v12, v14, v64);

      *(v21 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "Not using Topeka base url %{public}s from user defaults because it is not valid", v21, 0xCu);
      sub_10000BB78(v22);

      (*(v19 + 8))(v62, v20);
    }

    else
    {

      (*(v19 + 8))(v18, v20);
    }

LABEL_14:
    v42 = *(v0 + 2873);
    if (v42 <= 1)
    {
      if (*(v0 + 2873))
      {
        if (qword_100832B60 != -1)
        {
          swift_once();
        }

        v57 = *(qword_100881E78 + 16);
        os_unfair_lock_lock(v57 + 54);
        sub_100031B5C(&v57[4], v0 + 7296);
        os_unfair_lock_unlock(v57 + 54);

        sub_100020260(v0 + 7296, v0 + 7816);
        sub_100031918(v0 + 7296);
        *(v0 + 8008) = *sub_10000BA08((v0 + 7816), *(v0 + 7840));
        v58 = swift_task_alloc();
        *(v0 + 8016) = v58;
        *v58 = v0;
        v58[1] = sub_1005F9B28;
        v45 = v0 + 992;
      }

      else
      {
        if (qword_100832B60 != -1)
        {
          swift_once();
        }

        v46 = *(qword_100881E78 + 16);
        os_unfair_lock_lock(v46 + 54);
        sub_100031B5C(&v46[4], v0 + 7496);
        os_unfair_lock_unlock(v46 + 54);

        sub_100020260(v0 + 7496, v0 + 7856);
        sub_100031918(v0 + 7496);
        *(v0 + 7984) = *sub_10000BA08((v0 + 7856), *(v0 + 7880));
        v47 = swift_task_alloc();
        *(v0 + 7992) = v47;
        *v47 = v0;
        v47[1] = sub_1005F96B4;
        v45 = v0 + 504;
      }
    }

    else if (v42 == 2)
    {
      if (qword_100832B60 != -1)
      {
        swift_once();
      }

      v53 = *(qword_100881E78 + 16);
      os_unfair_lock_lock(v53 + 54);
      sub_100031B5C(&v53[4], v0 + 7096);
      os_unfair_lock_unlock(v53 + 54);

      sub_100020260(v0 + 7096, v0 + 7776);
      sub_100031918(v0 + 7096);
      *(v0 + 8032) = *sub_10000BA08((v0 + 7776), *(v0 + 7800));
      v54 = swift_task_alloc();
      *(v0 + 8040) = v54;
      *v54 = v0;
      v54[1] = sub_1005F9FC8;
      v45 = v0 + 1480;
    }

    else if (v42 == 3)
    {
      if (qword_100832B60 != -1)
      {
        swift_once();
      }

      v43 = *(qword_100881E78 + 16);
      os_unfair_lock_lock(v43 + 54);
      sub_100031B5C(&v43[4], v0 + 6896);
      os_unfair_lock_unlock(v43 + 54);

      sub_100020260(v0 + 6896, v0 + 7736);
      sub_100031918(v0 + 6896);
      *(v0 + 8056) = *sub_10000BA08((v0 + 7736), *(v0 + 7760));
      v44 = swift_task_alloc();
      *(v0 + 8064) = v44;
      *v44 = v0;
      v44[1] = sub_1005FA468;
      v45 = v0 + 1968;
    }

    else
    {
      if (qword_100832B60 != -1)
      {
        swift_once();
      }

      v55 = *(qword_100881E78 + 16);
      os_unfair_lock_lock(v55 + 54);
      sub_1000318FC(&v55[4], v0 + 6696);
      os_unfair_lock_unlock(v55 + 54);

      sub_100020260(v0 + 6696, v0 + 7696);
      sub_100031918(v0 + 6696);
      *(v0 + 8080) = *sub_10000BA08((v0 + 7696), *(v0 + 7720));
      v56 = swift_task_alloc();
      *(v0 + 8088) = v56;
      *v56 = v0;
      v56[1] = sub_1005FA90C;
      v45 = v0 + 16;
    }

    return sub_10050886C(v45);
  }

  v24 = *(v0 + 7976);
  v25 = *(v0 + 7968);
  v26 = *(v0 + 7960);
  v27 = *(v0 + 7952);
  v28 = *(v0 + 7944);

  v63 = *(v26 + 32);
  v63(v24, v28, v27);
  defaultLogger()();
  (*(v26 + 16))(v25, v24, v27);

  v29 = Logger.logObject.getter();
  LOBYTE(v24) = static os_log_type_t.debug.getter();

  v60 = v24;
  v30 = os_log_type_enabled(v29, v24);
  v31 = *(v0 + 7968);
  v32 = *(v0 + 7960);
  v33 = *(v0 + 7952);
  v34 = *(v0 + 7936);
  v35 = *(v0 + 7912);
  v61 = *(v0 + 7904);
  if (v30)
  {
    v59 = *(v0 + 7936);
    v36 = swift_slowAlloc();
    v64[0] = swift_slowAlloc();
    *v36 = 136315394;
    v37 = sub_100141FE4(v4, v5, v64);

    *(v36 + 4) = v37;
    *(v36 + 12) = 2082;
    v38 = URL.absoluteString.getter();
    v40 = v39;
    (*(v32 + 8))(v31, v33);
    v41 = sub_100141FE4(v38, v40, v64);

    *(v36 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v29, v60, "Using Topeka base url from defaults %s: %{public}s", v36, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v59, v61);
  }

  else
  {

    (*(v32 + 8))(v31, v33);
    (*(v35 + 8))(v34, v61);
  }

  v48 = *(v0 + 7960);
  v49 = *(v0 + 7952);
  v50 = *(v0 + 7896);
  v63(v50, *(v0 + 7976), v49);
  (*(v48 + 56))(v50, 0, 1, v49);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_1005F96B4()
{
  v2 = *v1;
  *(*v1 + 8000) = v0;

  if (v0)
  {
    v3 = *(v2 + 7984);
    v4 = sub_1005F99E4;
  }

  else
  {
    v4 = sub_1005F97D0;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005F97D0()
{
  v14 = v0;
  memcpy(v0 + 360, v0 + 67, 0x1A1uLL);
  sub_1000AA624((v0 + 360), (v0 + 784));
  sub_1000F2758((v0 + 63));
  v1 = v0[364];
  v2 = v0[365];

  sub_1000AA65C((v0 + 360));
  sub_10000BB78(v0 + 982);
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[990];
  v7 = v0[989];
  v8 = v0[988];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_100141FE4(v1, v2, &v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "Using Topeka base url from config: %{public}s", v9, 0xCu);
    sub_10000BB78(v10);
  }

  (*(v7 + 8))(v6, v8);
  URL.init(string:)();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1005F99E4()
{

  return _swift_task_switch(sub_1005F9A4C, 0, 0);
}

uint64_t sub_1005F9A4C()
{
  sub_10000BB78(v0 + 982);
  (*(v0[995] + 56))(v0[987], 1, 1, v0[994]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1005F9B28()
{
  v2 = *v1;
  *(*v1 + 8024) = v0;

  if (v0)
  {
    v3 = *(v2 + 8008);
    v4 = sub_1005F9E84;
  }

  else
  {
    v4 = sub_1005F9C44;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005F9C44()
{
  v14 = v0;
  memcpy(v0 + 413, v0 + 128, 0x1A1uLL);
  sub_1000AA624((v0 + 413), (v0 + 731));
  sub_1000F2758((v0 + 124));
  v1 = v0[419];
  v2 = v0[420];

  sub_1000AA65C((v0 + 413));
  sub_10000BB78(v0 + 977);
  if (v2)
  {
    defaultLogger()();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[990];
    v7 = v0[989];
    v8 = v0[988];
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_100141FE4(v1, v2, &v13);
      _os_log_impl(&_mh_execute_header, v3, v4, "Using Topeka base url from config: %{public}s", v9, 0xCu);
      sub_10000BB78(v10);
    }

    (*(v7 + 8))(v6, v8);
    URL.init(string:)();
  }

  else
  {
    (*(v0[995] + 56))(v0[987], 1, 1, v0[994]);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1005F9E84()
{

  return _swift_task_switch(sub_1005F9EEC, 0, 0);
}

uint64_t sub_1005F9EEC()
{
  sub_10000BB78(v0 + 977);
  (*(v0[995] + 56))(v0[987], 1, 1, v0[994]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1005F9FC8()
{
  v2 = *v1;
  *(*v1 + 8048) = v0;

  if (v0)
  {
    v3 = *(v2 + 8032);
    v4 = sub_1005FA324;
  }

  else
  {
    v4 = sub_1005FA0E4;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005FA0E4()
{
  v14 = v0;
  memcpy(v0 + 466, v0 + 189, 0x1A1uLL);
  sub_1000AA624((v0 + 466), (v0 + 678));
  sub_1000F2758((v0 + 185));
  v1 = v0[474];
  v2 = v0[475];

  sub_1000AA65C((v0 + 466));
  sub_10000BB78(v0 + 972);
  if (v2)
  {
    defaultLogger()();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[990];
    v7 = v0[989];
    v8 = v0[988];
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_100141FE4(v1, v2, &v13);
      _os_log_impl(&_mh_execute_header, v3, v4, "Using Topeka base url from config: %{public}s", v9, 0xCu);
      sub_10000BB78(v10);
    }

    (*(v7 + 8))(v6, v8);
    URL.init(string:)();
  }

  else
  {
    (*(v0[995] + 56))(v0[987], 1, 1, v0[994]);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1005FA324()
{

  return _swift_task_switch(sub_1005FA38C, 0, 0);
}

uint64_t sub_1005FA38C()
{
  sub_10000BB78(v0 + 972);
  (*(v0[995] + 56))(v0[987], 1, 1, v0[994]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1005FA468()
{
  v2 = *v1;
  *(*v1 + 8072) = v0;

  if (v0)
  {
    v3 = *(v2 + 8056);
    v4 = sub_1005FA7C8;
  }

  else
  {
    v4 = sub_1005FA584;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005FA584()
{
  v14 = v0;
  memcpy(v0 + 519, v0 + 250, 0x1A1uLL);
  sub_1000AA624((v0 + 519), (v0 + 625));
  sub_1000F2758((v0 + 246));
  v1 = v0[567];
  v2 = v0[568];

  sub_1000AA65C((v0 + 519));
  sub_10000BB78(v0 + 967);
  if (v2)
  {
    defaultLogger()();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[990];
    v7 = v0[989];
    v8 = v0[988];
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_100141FE4(v1, v2, &v13);
      _os_log_impl(&_mh_execute_header, v3, v4, "Using Topeka base url from config: %{public}s", v9, 0xCu);
      sub_10000BB78(v10);
    }

    (*(v7 + 8))(v6, v8);
    URL.init(string:)();
  }

  else
  {
    (*(v0[995] + 56))(v0[987], 1, 1, v0[994]);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1005FA7C8()
{

  return _swift_task_switch(sub_1005FA830, 0, 0);
}

uint64_t sub_1005FA830()
{
  sub_10000BB78(v0 + 967);
  (*(v0[995] + 56))(v0[987], 1, 1, v0[994]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1005FA90C()
{
  v2 = *v1;
  *(*v1 + 8096) = v0;

  if (v0)
  {
    v3 = *(v2 + 8080);
    v4 = sub_1005FAC68;
  }

  else
  {
    v4 = sub_1005FAA28;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005FAA28()
{
  v14 = v0;
  memcpy(v0 + 307, v0 + 6, 0x1A1uLL);
  sub_1000AA624((v0 + 307), (v0 + 572));
  sub_1000F2758((v0 + 2));
  v1 = v0[357];
  v2 = v0[358];

  sub_1000AA65C((v0 + 307));
  sub_10000BB78(v0 + 962);
  if (v2)
  {
    defaultLogger()();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = v0[990];
    v7 = v0[989];
    v8 = v0[988];
    if (v5)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_100141FE4(v1, v2, &v13);
      _os_log_impl(&_mh_execute_header, v3, v4, "Using Topeka base url from config: %{public}s", v9, 0xCu);
      sub_10000BB78(v10);
    }

    (*(v7 + 8))(v6, v8);
    URL.init(string:)();
  }

  else
  {
    (*(v0[995] + 56))(v0[987], 1, 1, v0[994]);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1005FAC68()
{

  return _swift_task_switch(sub_1005FACD0, 0, 0);
}

uint64_t sub_1005FACD0()
{
  sub_10000BB78(v0 + 962);
  (*(v0[995] + 56))(v0[987], 1, 1, v0[994]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1005FADAC()
{
  v1 = OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_redirectRetrier;
  v2 = type metadata accessor for DIPRetrier();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_authRetrier, v2);
  v3(v0 + OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_retrier, v2);
  v4 = v0 + OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_selfHealer;

  return sub_100485E80(v4);
}

id sub_1005FAE70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DIPTopekaWebService(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DIPTopekaWebService(uint64_t a1)
{
  result = qword_100849630;
  if (!qword_100849630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005FAFC4(uint64_t a1)
{
  result = type metadata accessor for DIPRetrier();
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

unint64_t *sub_1005FB060(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1002A8B20(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1002A8CFC(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1005FB1C0(uint64_t a1, unint64_t a2)
{
  sub_10000B8B8(a1, a2);
  sub_10034D244(a1, a2);
  v4 = static String._fromUTF8Repairing(_:)();

  return v4;
}

uint64_t sub_1005FB22C@<X0>(uint64_t *a3@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a3 = result;
  a3[1] = v5;
  return result;
}

double sub_1005FB268@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;

  return result;
}

uint64_t sub_1005FB2B0(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

uint64_t sub_1005FB45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[127] = a5;
  v5[126] = a4;
  v5[125] = a3;
  v5[124] = a2;
  v5[123] = a1;
  v6 = type metadata accessor for UUID();
  v5[128] = v6;
  v5[129] = *(v6 - 8);
  v5[130] = swift_task_alloc();
  v5[131] = type metadata accessor for DIPHTTPSession.Configuration(0);
  v5[132] = swift_task_alloc();
  v5[133] = swift_task_alloc();

  return _swift_task_switch(sub_1005FB568, 0, 0);
}

uint64_t sub_1005FB568()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = qword_100881E78;
  v2 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_100031B5C(&v2[4], (v0 + 63));
  os_unfair_lock_unlock(v2 + 54);
  v3 = v0[86];
  v4 = v0[87];
  sub_10001F640(v3, v4);
  v5 = sub_100031918((v0 + 63));
  if (v3)
  {
    v6 = v3(v5);
    sub_10001FE8C(v3, v4);

    v7 = v0[1];

    return v7(v6);
  }

  else
  {
    v9 = *(v1 + 16);
    os_unfair_lock_lock(v9 + 54);
    sub_100031B5C(&v9[4], (v0 + 88));
    os_unfair_lock_unlock(v9 + 54);
    sub_100020260((v0 + 88), (v0 + 113));
    sub_100031918((v0 + 88));
    v0[134] = *sub_10000BA08(v0 + 113, v0[116]);
    v10 = swift_task_alloc();
    v0[135] = v10;
    *v10 = v0;
    v10[1] = sub_1005FB768;

    return sub_10050886C((v0 + 2));
  }
}

uint64_t sub_1005FB768()
{
  v2 = *v1;
  *(*v1 + 1088) = v0;

  if (v0)
  {
    v3 = *(v2 + 1072);
    v4 = sub_1005FBAB8;
  }

  else
  {
    v4 = sub_1005FB884;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1005FB884()
{
  v1 = v0[133];
  v2 = v0[131];
  v3 = v0[127];
  v4 = v0[126];
  sub_10000BB78(v0 + 113);
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v2[6];
  sub_1000F2758((v0 + 2));
  *&v1[v8] = v7;
  v9 = enum case for DIPBackoffStrategy.exponential(_:);
  v10 = type metadata accessor for DIPBackoffStrategy();
  (*(*(v10 - 8) + 104))(&v1[v8], v9, v10);
  *v1 = v5;
  *(v1 + 1) = v6;
  v1[v2[7]] = 0;
  v1[v2[8]] = 1;
  v1[v2[9]] = 0;
  v11 = &v1[v2[10]];
  *v11 = v4;
  *(v11 + 1) = v3;
  v12 = v0[133];
  v13 = v0[132];
  v14 = v0[130];
  v15 = v0[129];
  v16 = v0[128];
  v17 = v0[125];
  v18 = v0[123];

  sub_100020260(v18, (v0 + 118));
  sub_1005FEB1C(v12, v13, type metadata accessor for DIPHTTPSession.Configuration);
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v15 + 8))(v14, v16);
  v22 = objc_allocWithZone(type metadata accessor for DIPTopekaWebService(0));
  v23 = sub_1005D7D88(v19, v21, v0 + 118, v13);
  sub_1005FEB84(v12, type metadata accessor for DIPHTTPSession.Configuration);
  *&v23[OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_selfHealer + 8] = v17;
  swift_unknownObjectWeakAssign();

  v24 = v0[1];

  return v24(v23);
}

uint64_t sub_1005FBAB8()
{

  return _swift_task_switch(sub_1005FBB20, 0, 0);
}

uint64_t sub_1005FBB20()
{
  sub_10000BB78(v0 + 113);
  if (qword_100832D08 != -1)
  {
    swift_once();
  }

  v1 = v0[133];
  v2 = sub_10003170C(v0[131], qword_100882448);
  sub_1005FEB1C(v2, v1, type metadata accessor for DIPHTTPSession.Configuration);
  v3 = v0[133];
  v4 = v0[132];
  v5 = v0[130];
  v6 = v0[129];
  v7 = v0[128];
  v8 = v0[125];
  sub_100020260(v0[123], (v0 + 118));
  sub_1005FEB1C(v3, v4, type metadata accessor for DIPHTTPSession.Configuration);
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v6 + 8))(v5, v7);
  v12 = objc_allocWithZone(type metadata accessor for DIPTopekaWebService(0));
  v13 = sub_1005D7D88(v9, v11, v0 + 118, v4);
  sub_1005FEB84(v3, type metadata accessor for DIPHTTPSession.Configuration);
  *&v13[OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_selfHealer + 8] = v8;
  swift_unknownObjectWeakAssign();

  v14 = v0[1];

  return v14(v13);
}

unint64_t sub_1005FBCE8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() standardUserDefaults];
  v5._countAndFlagsBits = static DaemonInternalDefaultsKeys.livenessTestHeader.getter();
  v6 = NSUserDefaults.internalString(forKey:)(v5);

  if (!v6.value._object)
  {
    return 0;
  }

  defaultLogger()();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(v6.value._countAndFlagsBits, v6.value._object, &v16);
    _os_log_impl(&_mh_execute_header, v7, v8, "Using Liveness-Config test header: %s", v9, 0xCu);
    sub_10000BB78(v10);
  }

  (*(v1 + 8))(v3, v0);
  sub_100007224(&qword_100838818, &unk_1006D0F90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = 0xD000000000000020;
  v12 = inited + 32;
  *(inited + 40) = 0x8000000100725150;
  *(inited + 48) = v6;
  v13 = sub_10003D21C(inited);
  swift_setDeallocating();
  sub_10000BE18(v12, &qword_100838820, &unk_1006DB6B0);
  return v13;
}

uint64_t sub_1005FBF5C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v47 = a5;
  v48 = v7;
  v46 = v11;
  while (v10)
  {
    v57 = a4;
    v18 = v12;
LABEL_14:
    v20 = (v18 << 10) | (16 * __clz(__rbit64(v10)));
    v21 = (*(a1 + 48) + v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = (*(a1 + 56) + v20);
    v25 = *v24;
    v26 = v24[1];
    v56[0] = v22;
    v56[1] = v23;
    v56[2] = v25;
    v56[3] = v26;

    (a2)(&v52, v56);

    v28 = v52;
    v27 = v53;
    v29 = v55;
    v51 = v54;
    v30 = *a5;
    v32 = sub_10003ADCC(v52, v53);
    v33 = *(v30 + 16);
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_25;
    }

    v36 = v31;
    if (*(v30 + 24) >= v35)
    {
      if ((v57 & 1) == 0)
      {
        sub_10016F53C();
      }
    }

    else
    {
      sub_100165FC0(v35, v57 & 1);
      v37 = sub_10003ADCC(v28, v27);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_27;
      }

      v32 = v37;
    }

    v10 &= v10 - 1;
    v39 = *a5;
    if (v36)
    {
      v13 = 16 * v32;
      v14 = (v39[7] + 16 * v32);
      v16 = *v14;
      v15 = v14[1];

      v17 = (v39[7] + v13);
      *v17 = v16;
      v17[1] = v15;
    }

    else
    {
      v39[(v32 >> 6) + 8] |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v28;
      v40[1] = v27;
      v41 = (v39[7] + 16 * v32);
      *v41 = v51;
      v41[1] = v29;
      v42 = v39[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_26;
      }

      v39[2] = v44;
    }

    a4 = 1;
    v12 = v18;
    a5 = v47;
    v7 = v48;
    v11 = v46;
  }

  v19 = v12;
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v11)
    {
      sub_10001FA6C(a1);
    }

    v10 = *(v7 + 8 * v18);
    ++v19;
    if (v10)
    {
      v57 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1005FC224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v204 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v201 = (&v193 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v14 = __chkstk_darwin(v13);
  v15 = __chkstk_darwin(v14);
  v16 = __chkstk_darwin(v15);
  v17 = __chkstk_darwin(v16);
  v18 = __chkstk_darwin(v17);
  v19 = __chkstk_darwin(v18);
  v20 = __chkstk_darwin(v19);
  v21 = __chkstk_darwin(v20);
  v31 = &v193 - v30;
  if (a5)
  {
    v32 = a5;
  }

  else
  {
    v32 = &_swiftEmptyDictionarySingleton;
  }

  if (!a2)
  {

    return v32;
  }

  v195 = v26;
  v196 = v25;
  v197 = v24;
  v193 = v23;
  v194 = v22;
  v198 = v29;
  v199 = v28;
  v200 = v27;
  v202 = v21;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;
  if (v32[2])
  {
    v36 = v33;

    v37 = v36;
    v38 = v32;
    sub_10003ADCC(v37, v35);
    v40 = v39;

    if (v40)
    {
      v41 = v38;
      goto LABEL_11;
    }
  }

  else
  {
    v38 = v32;
  }

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v208[0] = v38;
  sub_10016CAB8(a1, a2, v42, v44, isUniquelyReferenced_nonNull_native);

  v41 = v208[0];
LABEL_11:
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v41 + 16))
  {

    goto LABEL_15;
  }

  sub_10003ADCC(v46, v47);
  v49 = v48;

  if ((v49 & 1) == 0)
  {
LABEL_15:
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = swift_isUniquelyReferenced_nonNull_native();
    v208[0] = v41;
    sub_10016CAB8(a3, a4, v50, v52, v53);

    v41 = v208[0];
  }

  v54 = v204;
  p_align = &stru_10082BFE8.align;
  v203 = objc_opt_self();
  v56 = [v203 standardUserDefaults];
  v57._countAndFlagsBits = static DaemonInternalDefaultsKeys.idvServerShortcutResponse.getter();
  v58 = NSUserDefaults.internalString(forKey:)(v57);

  if (v58.value._object)
  {
    v59 = v41;
    defaultLogger()();

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v208[0] = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_100141FE4(v58.value._countAndFlagsBits, v58.value._object, v208);
      _os_log_impl(&_mh_execute_header, v60, v61, "Using shortcut response header: %s", v62, 0xCu);
      sub_10000BB78(v63);
      p_align = &stru_10082BFE8.align;
    }

    (*(v204 + 8))(v31, v202);
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v208[0] = v59;
    sub_10016CAB8(v58.value._countAndFlagsBits, v58.value._object, 0xD00000000000001DLL, 0x8000000100724B00, v64);
    v41 = v208[0];
    v54 = v204;
  }

  v65 = v203;
  v66 = [v203 standardUserDefaults];
  v67._countAndFlagsBits = static DaemonInternalDefaultsKeys.ivsTestHeader.getter();
  v68 = NSUserDefaults.internalString(forKey:)(v67);

  if (v68.value._object)
  {
    v69 = v195;
    defaultLogger()();

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v208[0] = v73;
      *v72 = 136315138;
      *(v72 + 4) = sub_100141FE4(v68.value._countAndFlagsBits, v68.value._object, v208);
      _os_log_impl(&_mh_execute_header, v70, v71, "Using IVS-Test header: %s", v72, 0xCu);
      sub_10000BB78(v73);
      p_align = (&stru_10082BFE8 + 24);
    }

    v74 = v202;
    (*(v54 + 8))(v69);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v208[0] = v41;
    sub_10016CAB8(v68.value._countAndFlagsBits, v68.value._object, 0xD000000000000014, 0x8000000100724AE0, v75);
    v41 = v208[0];
    v65 = v203;
    v76 = v74;
  }

  else
  {
    v76 = v202;
  }

  v77 = [v65 *(p_align + 416)];
  v78._countAndFlagsBits = static DaemonInternalDefaultsKeys.magentaTestHeader.getter();
  v79 = NSUserDefaults.internalString(forKey:)(v78);

  if (v79.value._object)
  {
    v80 = v54;
    v81 = v76;
    v82 = v196;
    defaultLogger()();

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v208[0] = v86;
      *v85 = 136315138;
      *(v85 + 4) = sub_100141FE4(v79.value._countAndFlagsBits, v79.value._object, v208);
      _os_log_impl(&_mh_execute_header, v83, v84, "Using Magenta-Test header: %s", v85, 0xCu);
      sub_10000BB78(v86);
      p_align = &stru_10082BFE8.align;
    }

    v76 = v81;
    (*(v80 + 8))(v82, v81);
    v87 = swift_isUniquelyReferenced_nonNull_native();
    v208[0] = v41;
    sub_10016CAB8(v79.value._countAndFlagsBits, v79.value._object, 0xD000000000000018, 0x8000000100724AC0, v87);
    v41 = v208[0];
    v54 = v80;
    v65 = v203;
  }

  v88 = [v65 *(p_align + 416)];
  v89._countAndFlagsBits = static DaemonInternalDefaultsKeys.mockPassportClaim.getter();
  v90 = NSUserDefaults.internalBool(forKey:)(v89);

  if (v90)
  {
    v91 = v197;
    defaultLogger()();
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&_mh_execute_header, v92, v93, "Mocking Digital ID claim", v94, 2u);
      v91 = v197;
    }

    (*(v54 + 8))(v91, v76);
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v208[0] = v41;
    sub_10016CAB8(1702195828, 0xE400000000000000, 0xD000000000000017, 0x8000000100724AA0, v95);
    v41 = v208[0];
  }

  v96 = [v65 *(p_align + 416)];
  v97._countAndFlagsBits = static DaemonInternalDefaultsKeys.mockLivenessVerification.getter();
  v98 = NSUserDefaults.internalString(forKey:)(v97);

  if (!v98.value._object)
  {
    goto LABEL_40;
  }

  v99 = (v98.value._object >> 56) & 0xF;
  if ((v98.value._object & 0x2000000000000000) == 0)
  {
    v99 = v98.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v99)
  {

LABEL_40:
    v106 = (&stru_10082BFE8 + 24);
    goto LABEL_43;
  }

  v100 = v193;
  defaultLogger()();

  v101 = Logger.logObject.getter();
  v102 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = v76;
    v105 = swift_slowAlloc();
    v208[0] = v105;
    *v103 = 136315138;
    *(v103 + 4) = sub_100141FE4(v98.value._countAndFlagsBits, v98.value._object, v208);
    _os_log_impl(&_mh_execute_header, v101, v102, "Mocking Digital ID liveness verification with value: %s", v103, 0xCu);
    sub_10000BB78(v105);
    v76 = v104;

    (*(v204 + 8))(v100, v104);
  }

  else
  {

    (*(v204 + 8))(v100, v76);
  }

  v106 = &stru_10082BFE8.align;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v208[0] = v41;
  sub_10016CAB8(v98.value._countAndFlagsBits, v98.value._object, 0xD000000000000022, 0x8000000100724A70, v107);
  v41 = v208[0];
  v54 = v204;
LABEL_43:
  v108 = [v65 *(v106 + 416)];
  v109._countAndFlagsBits = static DaemonInternalDefaultsKeys.mockSelfieMatchVerification.getter();
  v110 = NSUserDefaults.internalString(forKey:)(v109);

  if (!v110.value._object)
  {
LABEL_50:
    v118 = (&stru_10082BFE8 + 24);
    goto LABEL_53;
  }

  v111 = (v110.value._object >> 56) & 0xF;
  if ((v110.value._object & 0x2000000000000000) == 0)
  {
    v111 = v110.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v111)
  {

    goto LABEL_50;
  }

  v112 = v194;
  defaultLogger()();

  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = v76;
    v117 = swift_slowAlloc();
    v208[0] = v117;
    *v115 = 136315138;
    *(v115 + 4) = sub_100141FE4(v110.value._countAndFlagsBits, v110.value._object, v208);
    _os_log_impl(&_mh_execute_header, v113, v114, "Mocking Digital ID selfie match verification with value: %s", v115, 0xCu);
    sub_10000BB78(v117);
    v76 = v116;

    (*(v204 + 8))(v112, v116);
  }

  else
  {

    (*(v204 + 8))(v112, v76);
  }

  v118 = &stru_10082BFE8.align;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v208[0] = v41;
  sub_10016CAB8(v110.value._countAndFlagsBits, v110.value._object, 0xD000000000000020, 0x8000000100724A40, v119);
  v41 = v208[0];
  v54 = v204;
LABEL_53:
  v120 = [v65 *(v118 + 416)];
  v121._countAndFlagsBits = static DaemonInternalDefaultsKeys.skipPKDValidation.getter();
  v122 = NSUserDefaults.internalBool(forKey:)(v121);

  if (v122)
  {
    v123 = v198;
    defaultLogger()();
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&_mh_execute_header, v124, v125, "Skipping Digital ID PKD validation", v126, 2u);
      v123 = v198;
    }

    (*(v54 + 8))(v123, v76);
    v127 = swift_isUniquelyReferenced_nonNull_native();
    v208[0] = v41;
    sub_10016CAB8(1702195828, 0xE400000000000000, 0xD000000000000015, 0x8000000100724A20, v127);
    v41 = v208[0];
  }

  v128 = [v65 *(v118 + 416)];
  v129._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceServerDrivenNFC.getter();
  v130 = NSUserDefaults.internalBool(forKey:)(v129);

  if (v130)
  {
    v131 = v199;
    defaultLogger()();
    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      *v134 = 0;
      _os_log_impl(&_mh_execute_header, v132, v133, "Force server driven nfc", v134, 2u);
      v131 = v199;
    }

    (*(v54 + 8))(v131, v76);
    v135 = swift_isUniquelyReferenced_nonNull_native();
    v208[0] = v41;
    sub_10016CAB8(1702195828, 0xE400000000000000, 0xD000000000000018, 0x8000000100724A00, v135);
    v41 = v208[0];
  }

  v136 = [v65 *(v118 + 416)];
  v137._countAndFlagsBits = static DaemonInternalDefaultsKeys.skipAppleCredentialVerification.getter();
  v138 = NSUserDefaults.internalBool(forKey:)(v137);

  if (v138)
  {
    v139 = v200;
    defaultLogger()();
    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      *v142 = 0;
      _os_log_impl(&_mh_execute_header, v140, v141, "Skip Apple Credential Verification", v142, 2u);
      v139 = v200;
    }

    (*(v54 + 8))(v139, v76);
    v143 = swift_isUniquelyReferenced_nonNull_native();
    v208[0] = v41;
    sub_10016CAB8(1702195828, 0xE400000000000000, 0xD00000000000002FLL, 0x80000001007249D0, v143);
    v41 = v208[0];
  }

  v144 = [v65 *(v118 + 416)];
  v145._countAndFlagsBits = static DaemonInternalDefaultsKeys.debugHeaders.getter();
  v146 = NSUserDefaults.internalDictionary(forKey:)(v145);

  if (!v146)
  {
    return v41;
  }

  v147 = v201;
  defaultLogger()();

  v148 = Logger.logObject.getter();
  v149 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v148, v149))
  {
    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v208[0] = v151;
    *v150 = 134218242;
    *(v150 + 4) = *(v146 + 16);

    *(v150 + 12) = 2080;
    sub_100007224(&unk_100845ED0, &qword_1006DA1D0);
    v152 = Dictionary.description.getter();
    v154 = v76;
    v155 = sub_100141FE4(v152, v153, v208);

    *(v150 + 14) = v155;
    _os_log_impl(&_mh_execute_header, v148, v149, "DIPTopekaWebService Adding %ld headers: %s", v150, 0x16u);
    sub_10000BB78(v151);

    (*(v54 + 8))(v201, v154);
  }

  else
  {

    (*(v54 + 8))(v147, v76);
  }

  v156 = sub_1005FB060(v146);

  v157 = v156 + 8;
  v158 = 1 << *(v156 + 32);
  v159 = -1;
  if (v158 < 64)
  {
    v159 = ~(-1 << v158);
  }

  v160 = v159 & v156[8];
  v161 = (v158 + 63) >> 6;

  v162 = 0;
  v201 = v156;
  while (v160)
  {
    v204 = v41;
LABEL_81:
    v166 = __clz(__rbit64(v160)) | (v162 << 6);
    v167 = (v156[6] + 16 * v166);
    v169 = *v167;
    v168 = v167[1];
    sub_10000BBC4(v156[7] + 32 * v166, v209, &unk_100845ED0, &qword_1006DA1D0);
    v208[0] = v169;
    v208[1] = v168;
    sub_10000BBC4(v209, v207, &unk_100845ED0, &qword_1006DA1D0);
    if (v207[3])
    {

      if (swift_dynamicCast())
      {
        v202 = v205;
        v203 = v206;

        v170 = v204;
        v171 = swift_isUniquelyReferenced_nonNull_native();
        v207[0] = v170;
        v173 = sub_10003ADCC(v169, v168);
        v174 = *(v170 + 16);
        v175 = (v172 & 1) == 0;
        v176 = v174 + v175;
        if (__OFADD__(v174, v175))
        {
          goto LABEL_102;
        }

        v177 = v172;
        if (*(v170 + 24) >= v176)
        {
          if (v171)
          {
            v180 = v207[0];
            if ((v172 & 1) == 0)
            {
              goto LABEL_95;
            }
          }

          else
          {
            sub_10016F53C();
            v180 = v207[0];
            if ((v177 & 1) == 0)
            {
              goto LABEL_95;
            }
          }
        }

        else
        {
          sub_100165FC0(v176, v171);
          v178 = sub_10003ADCC(v169, v168);
          if ((v177 & 1) != (v179 & 1))
          {
            goto LABEL_104;
          }

          v173 = v178;
          v180 = v207[0];
          if ((v177 & 1) == 0)
          {
LABEL_95:
            v180[(v173 >> 6) + 8] |= 1 << v173;
            v186 = (v180[6] + 16 * v173);
            *v186 = v169;
            v186[1] = v168;
            v187 = (v180[7] + 16 * v173);
            v188 = v203;
            *v187 = v202;
            v187[1] = v188;
            v189 = v180[2];
            v190 = __OFADD__(v189, 1);
            v191 = v189 + 1;
            if (v190)
            {
              goto LABEL_103;
            }

            v41 = v180;
            v180[2] = v191;
            goto LABEL_73;
          }
        }

        v163 = (v180[7] + 16 * v173);
        v164 = v203;
        *v163 = v202;
        v163[1] = v164;

        v41 = v180;
LABEL_73:
        v156 = v201;
        goto LABEL_74;
      }
    }

    else
    {

      sub_10000BE18(v207, &unk_100845ED0, &qword_1006DA1D0);
    }

    v181 = v169;
    v41 = v204;
    v182 = sub_10003ADCC(v181, v168);
    v184 = v183;

    if (v184)
    {
      v185 = swift_isUniquelyReferenced_nonNull_native();
      v207[0] = v41;
      if (!v185)
      {
        sub_10016F53C();
        v41 = v207[0];
      }

      sub_10015000C(v182, v41);
    }

LABEL_74:
    v160 &= v160 - 1;
    sub_10000BE18(v208, &qword_10083F048, &qword_1006DC5B8);
  }

  while (1)
  {
    v165 = v162 + 1;
    if (__OFADD__(v162, 1))
    {
      break;
    }

    if (v165 >= v161)
    {

      return v41;
    }

    v160 = v157[v165];
    ++v162;
    if (v160)
    {
      v204 = v41;
      v162 = v165;
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1005FD704(uint64_t a1)
{
  v2 = sub_100007224(&qword_100849668, &qword_1006E96A8);
  __chkstk_darwin(v2 - 8);
  v41 = &v38 - v3;
  v4 = sub_100007224(&qword_10083E4B8, &unk_1006DBF30);
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v39 = &v38 - v5;
  v6 = sub_100007224(&qword_100849670, &qword_1006E96B0);
  __chkstk_darwin(v6 - 8);
  v44 = &v38 - v7;
  v8 = sub_100007224(&qword_10083DE08, qword_1006DBA50);
  v45 = *(v8 - 8);
  v46 = v8;
  __chkstk_darwin(v8);
  v40 = &v38 - v9;
  v10 = type metadata accessor for IdentityProofingRequestV2(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007224(&qword_100849678, &qword_1006E96B8);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  v16 = sub_100007224(&qword_10083DC00, &qword_1006DB6E0);
  v47 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  v19 = sub_100007224(&qword_100842078, &unk_1006E9660);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v38 - v21;
  v23 = a1;
  sub_10001F2EC(a1, &v61);
  if (swift_dynamicCast())
  {
    (*(v20 + 8))(v22, v19);
    return 1;
  }

  sub_10001F2EC(a1, &v61);
  v25 = swift_dynamicCast();
  v26 = v47;
  v27 = *(v47 + 56);
  if (v25)
  {
    v27(v15, 0, 1, v16);
    (*(v26 + 32))(v18, v15, v16);
    JWSSignedJSON.payload.getter();
    v28 = *(v12 + 10);
    v29 = *(v12 + 11);

    sub_1005FEB84(v12, type metadata accessor for IdentityProofingRequestV2);
    *&v61 = v28;
    *(&v61 + 1) = v29;
    *&v52 = 0xD000000000000018;
    *(&v52 + 1) = 0x8000000100705380;
    sub_1000348A0();
    sub_1000348F4();
    v30 = BidirectionalCollection<>.starts<A>(with:)();
    (*(v26 + 8))(v18, v16);
  }

  else
  {
    v27(v15, 1, 1, v16);
    sub_10000BE18(v15, &qword_100849678, &qword_1006E96B8);
    sub_10001F2EC(v23, v70);
    v31 = v44;
    v32 = v46;
    if (swift_dynamicCast())
    {
      v33 = v45;
      (*(v45 + 56))(v31, 0, 1, v32);
      v34 = v40;
      (*(v33 + 32))(v40, v31, v32);
      JWSSignedJSON.payload.getter();
      v67 = v58;
      v68 = v59;
      *&v69 = v60;
      v63 = v54;
      v64 = v55;
      v65 = v56;
      v66 = v57;
      v61 = v52;
      v62 = v53;
      v36 = *(&v58 + 1);
      v35 = v58;

      sub_1000AE6AC(&v61);
    }

    else
    {
      (*(v45 + 56))(v31, 1, 1, v32);
      sub_10000BE18(v31, &qword_100849670, &qword_1006E96B0);
      sub_10001F2EC(v23, v70);
      v37 = v41;
      v32 = v43;
      if (!swift_dynamicCast())
      {
        (*(v42 + 56))(v37, 1, 1, v32);
        sub_10000BE18(v37, &qword_100849668, &qword_1006E96A8);
        return 0;
      }

      v33 = v42;
      (*(v42 + 56))(v37, 0, 1, v32);
      v34 = v39;
      (*(v33 + 32))(v39, v37, v32);
      JWSSignedJSON.payload.getter();
      v67 = v58;
      v68 = v59;
      v69 = v60;
      v63 = v54;
      v64 = v55;
      v65 = v56;
      v66 = v57;
      v61 = v52;
      v62 = v53;
      v36 = *(&v58 + 1);
      v35 = v58;

      sub_1000AE518(&v61);
    }

    v50 = v35;
    v51 = v36;
    v48 = 0xD000000000000018;
    v49 = 0x8000000100705380;
    sub_1000348A0();
    sub_1000348F4();
    v30 = BidirectionalCollection<>.starts<A>(with:)();
    (*(v33 + 8))(v34, v32);
  }

  if (v30)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005FDEA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 56);
  v13 = *(v1 + 48);
  v8 = *(v1 + 64);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100041F04;

  return sub_1005F6850(a1, v4, v5, v6, v9, v13, v7, v8);
}

void sub_1005FDFA8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v51 - v11;
  __chkstk_darwin(v10);
  v56 = &v51 - v13;
  v14 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v14 - 8);
  v16 = &v51 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v51 - v22;
  if (a3)
  {
    v24 = static DaemonDefaultsKeys.topekaBaseURLV2.getter();
  }

  else
  {
    v24 = static DaemonDefaultsKeys.topekaBaseURL.getter();
  }

  v57 = v24;
  v26 = v25;
  if (a2)
  {
    sub_1005A2220(a1, a2, v16);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {

      sub_10000BE18(v16, &unk_100844540, &unk_1006BFBC0);
      defaultLogger()();

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v60 = v30;
        *v29 = 136446210;
        *(v29 + 4) = sub_100141FE4(a1, a2, &v60);
        _os_log_impl(&_mh_execute_header, v27, v28, "Not setting Topeka base URL to %{public}s because it is not a valid HTTPS url", v29, 0xCu);
        sub_10000BB78(v30);
      }

      (*(v58 + 8))(v12, v59);
    }

    else
    {
      v55 = v26;
      (*(v18 + 32))(v23, v16, v17);
      v36 = v56;
      defaultLogger()();
      v37 = *(v18 + 16);
      v54 = v23;
      v37(v21, v23, v17);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v60 = v53;
        *v40 = 136446210;
        v52 = URL.absoluteString.getter();
        v42 = v41;
        v43 = *(v18 + 8);
        v43(v21, v17);
        v44 = v43;
        v45 = sub_100141FE4(v52, v42, &v60);

        *(v40 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v38, v39, "Setting Topeka base URL to %{public}s", v40, 0xCu);
        sub_10000BB78(v53);

        v46 = v44;
      }

      else
      {

        v46 = *(v18 + 8);
        v46(v21, v17);
      }

      (*(v58 + 8))(v36, v59);
      v47 = [objc_opt_self() standardUserDefaults];
      v48 = v54;
      URL.absoluteString.getter();
      v49 = String._bridgeToObjectiveC()();

      v50 = String._bridgeToObjectiveC()();

      [v47 setObject:v49 forKey:v50];

      v46(v48, v17);
    }
  }

  else
  {
    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Clearing Topeka base URL", v33, 2u);
    }

    (*(v58 + 8))(v9, v59);
    v34 = [objc_opt_self() standardUserDefaults];
    v35 = String._bridgeToObjectiveC()();

    [v34 removeObjectForKey:v35];
  }
}

uint64_t sub_1005FE60C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RegisterTerminalResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005FE670()
{

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_1005FE6C0()
{
  result = qword_1008496C8;
  if (!qword_1008496C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008496C8);
  }

  return result;
}

uint64_t sub_1005FE714()
{

  return _swift_deallocObject(v0, 96, 7);
}

unint64_t sub_1005FE76C()
{
  result = qword_1008496D0;
  if (!qword_1008496D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008496D0);
  }

  return result;
}

unint64_t sub_1005FE7C0()
{
  result = qword_1008496D8;
  if (!qword_1008496D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008496D8);
  }

  return result;
}

uint64_t sub_1005FE814()
{

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 176, 7);
}

double sub_1005FE898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1005FE8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1005FE8C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100041F04;

  return sub_1005DD3D4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1005FE988()
{

  if (*(v0 + 80))
  {
  }

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1005FE9EC()
{

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 200, 7);
}

unint64_t sub_1005FEA80()
{
  result = qword_100849730;
  if (!qword_100849730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100849730);
  }

  return result;
}

uint64_t sub_1005FEAD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005FEB1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005FEB84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1005FEBE8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Date();
  v87 = *(v2 - 8);
  __chkstk_darwin(v2);
  v86 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v92 = v4;
  v93 = v5;
  v6 = __chkstk_darwin(v4);
  v88 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v91 = &v77 - v8;
  v9 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v77 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v89 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v77 - v17;
  __chkstk_darwin(v16);
  v94 = &v77 - v19;
  v20 = [objc_opt_self() standardUserDefaults];
  v21._countAndFlagsBits = static DaemonInternalDefaultsKeys.networkCacheOverride.getter();
  v22 = NSUserDefaults.internalDictionary(forKey:)(v21);

  if (!v22)
  {
    goto LABEL_20;
  }

  v90 = a1;
  URLRequest.url.getter();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    v23 = &unk_100844540;
    v24 = &unk_1006BFBC0;
    v25 = v11;
LABEL_4:
    sub_10000BE18(v25, v23, v24);
LABEL_20:
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v102.receiver = v96;
    v102.super_class = ObjectType;
    v57 = objc_msgSendSuper2(&v102, "cachedResponseForRequest:", isa);

    return v57;
  }

  v26 = v12;
  v82 = v2;
  v27 = v94;
  (*(v13 + 32))(v94, v11, v26);
  v28 = v91;
  defaultLogger()();
  v83 = *(v13 + 16);
  v84 = v13 + 16;
  v83(v18, v27, v26);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  v31 = os_log_type_enabled(v29, v30);
  v85 = v13;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v80 = v32;
    v81 = swift_slowAlloc();
    *&v101[0] = v81;
    *v32 = 136315138;
    URL.absoluteString.getter();
    v33 = String.lowercased()();
    countAndFlagsBits = v33._countAndFlagsBits;

    v34 = *(v13 + 8);
    v35 = v18;
    v36 = v26;
    v34(v35, v26);
    v37 = sub_100141FE4(countAndFlagsBits, v33._object, v101);

    v38 = v80;
    *(v80 + 1) = v37;
    _os_log_impl(&_mh_execute_header, v29, v30, "DIPURLCache checking overriden cache for %s", v38, 0xCu);
    sub_10000BB78(v81);

    v27 = v94;
  }

  else
  {

    v34 = *(v13 + 8);
    v39 = v18;
    v36 = v26;
    v34(v39, v26);
  }

  v40 = v92;
  v41 = *(v93 + 8);
  v41(v28, v92);
  URL.absoluteString.getter();
  v42 = String.lowercased()();

  if (!*(v22 + 16))
  {

    goto LABEL_18;
  }

  v43 = sub_10003ADCC(v42._countAndFlagsBits, v42._object);
  v45 = v44;

  if ((v45 & 1) == 0)
  {
LABEL_18:

    goto LABEL_19;
  }

  sub_10000BBC4(*(v22 + 56) + 32 * v43, &v99, &unk_100845ED0, &qword_1006DA1D0);

  v101[0] = v99;
  v101[1] = v100;
  if (!*(&v100 + 1))
  {
    v34(v27, v36);
    v23 = &unk_100845ED0;
    v24 = &qword_1006DA1D0;
    v25 = v101;
    goto LABEL_4;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v34(v27, v36);
    goto LABEL_20;
  }

  v46 = v98;
  ObjectType = v97;
  v47 = v88;
  defaultLogger()();
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  v50 = os_log_type_enabled(v48, v49);
  v96 = v46;
  if (v50)
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "DIPURLCache matched cache override via internal settings; returning overriden response", v51, 2u);
    v46 = v96;
  }

  v41(v47, v40);
  v52 = v89;
  result = (v83)(v89, v27, v36);
  v54 = v46 >> 62;
  if ((v46 >> 62) > 1)
  {
    if (v54 != 2)
    {
      v55 = 0;
      goto LABEL_30;
    }

    v59 = *(ObjectType + 2);
    v58 = *(ObjectType + 3);
    v55 = v58 - v59;
    if (!__OFSUB__(v58, v59))
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  else if (!v54)
  {
    v55 = BYTE6(v46);
LABEL_30:
    v60 = objc_allocWithZone(NSURLResponse);
    URL._bridgeToObjectiveC()(v61);
    v63 = v62;
    v64 = String._bridgeToObjectiveC()();
    v91 = [v60 initWithURL:v63 MIMEType:v64 expectedContentLength:v55 textEncodingName:0];

    v93 = v85 + 8;
    v78 = v36;
    v34(v52, v36);
    v92 = v34;
    v65 = v86;
    Date.init()();
    sub_100007224(&qword_10083C010, &qword_1006DA4E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006BF740;
    *&v101[0] = 0x74416465726F7473;
    *(&v101[0] + 1) = 0xE800000000000000;
    AnyHashable.init<A>(_:)();
    v67 = v82;
    *(inited + 96) = v82;
    v68 = sub_100032DBC((inited + 72));
    v69 = v87;
    (*(v87 + 16))(v68, v65, v67);
    *&v101[0] = 0x4173657269707865;
    *(&v101[0] + 1) = 0xE900000000000074;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = v67;
    sub_100032DBC((inited + 144));
    Date.addingTimeInterval(_:)();
    sub_10003DB20(inited);
    swift_setDeallocating();
    sub_100007224(&qword_100834720, &qword_1006DA4F0);
    swift_arrayDestroy();
    v70 = objc_allocWithZone(NSCachedURLResponse);
    v71 = ObjectType;
    v72 = v96;
    v73 = Data._bridgeToObjectiveC()().super.isa;
    v74 = Dictionary._bridgeToObjectiveC()().super.isa;

    v75 = v70;
    v76 = v91;
    v57 = [v75 initWithResponse:v91 data:v73 userInfo:v74 storagePolicy:0];

    sub_10000B90C(v71, v72);
    (*(v69 + 8))(v65, v67);
    v92(v94, v78);
    return v57;
  }

  if (!__OFSUB__(HIDWORD(ObjectType), ObjectType))
  {
    v55 = HIDWORD(ObjectType) - ObjectType;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

void sub_1005FF5A4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DIPURLCache();
  v3 = objc_allocWithZone(v2);
  v4 = objc_opt_self();
  v5 = [v4 sharedURLCache];
  v6 = [v5 memoryCapacity];

  v7 = [v4 sharedURLCache];
  v8 = [v7 diskCapacity];

  v9 = String._bridgeToObjectiveC()();
  v11.receiver = v3;
  v11.super_class = v2;
  v10 = objc_msgSendSuper2(&v11, "initWithMemoryCapacity:diskCapacity:diskPath:", v6, v8, v9);

  qword_100882498 = v10;
}

void *sub_1005FFB68@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1003C5388(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1003C5388((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1003C5388(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1003C5388(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1003C5388((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005FFF28(void *a1)
{
  v2 = sub_100007224(&qword_100834EA8, &qword_1006C06C8);
  __chkstk_darwin(v2 - 8);
  v4 = v32 - v3;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  __chkstk_darwin(v9 - 8);
  v11 = v32 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 userInfo];
  if (!v16)
  {
    goto LABEL_10;
  }

  v32[0] = v6;
  v17 = v16;
  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v32[1] = 0x74416465726F7473;
  v32[2] = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v18 + 16) || (v19 = sub_10003AECC(v33), (v20 & 1) == 0))
  {

    sub_1000279C8(v33);
LABEL_10:
    v34 = 0u;
    v35 = 0u;
    goto LABEL_11;
  }

  sub_10001F2EC(*(v18 + 56) + 32 * v19, &v34);
  sub_1000279C8(v33);

  if (!*(&v35 + 1))
  {
LABEL_11:
    sub_10000BE18(&v34, &unk_100845ED0, &qword_1006DA1D0);
    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_12;
  }

  v21 = swift_dynamicCast();
  (*(v13 + 56))(v11, v21 ^ 1u, 1, v12);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
LABEL_12:
    sub_10000BE18(v11, &unk_100849400, &unk_1006BFBB0);
    return 0;
  }

  (*(v13 + 32))(v15, v11, v12);
  v22 = [objc_allocWithZone(NSDateFormatter) init];
  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v32[0] + 8))(v8, v5);
  [v22 setLocale:isa];

  TimeZone.init(secondsFromGMT:)();
  v24 = type metadata accessor for TimeZone();
  v25 = *(v24 - 8);
  v26 = 0;
  if ((*(v25 + 48))(v4, 1, v24) != 1)
  {
    v26 = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(v25 + 8))(v4, v24);
  }

  [v22 setTimeZone:v26];

  v27 = String._bridgeToObjectiveC()();
  [v22 setDateFormat:v27];

  v28 = Date._bridgeToObjectiveC()().super.isa;
  v29 = [v22 stringFromDate:v28];

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v13 + 8))(v15, v12);
  return v30;
}

uint64_t sub_100600474(void *a1)
{
  v2 = 3;
  v3 = &off_1007F8938;
  do
  {
    v4 = *(v3 - 1);

    v5 = [a1 allHeaderFields];
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    AnyHashable.init<A>(_:)();
    if (*(v6 + 16) && (v7 = sub_10003AECC(v10), (v8 & 1) != 0))
    {
      sub_10001F2EC(*(v6 + 56) + 32 * v7, v11);
      sub_1000279C8(v10);

      if (swift_dynamicCast())
      {
        return v4;
      }
    }

    else
    {

      sub_1000279C8(v10);
    }

    v3 += 2;
    --v2;
  }

  while (v2);
  return 0;
}

void *sub_1006005C0(uint64_t a1, unint64_t a2)
{
  v25 = type metadata accessor for CharacterSet();
  v4 = *(v25 - 8);
  __chkstk_darwin(v25);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v30 = 44;
  *(&v30 + 1) = 0xE100000000000000;
  v27 = &v30;

  result = sub_1005FFB68(0x7FFFFFFFFFFFFFFFLL, 1, sub_10036024C, v26, a1, a2, v7);
  v9 = result;
  v24 = result[2];
  if (v24)
  {
    v10 = 0;
    v23 = (v4 + 8);
    v11 = result + 7;
    while (1)
    {
      if (v10 >= v9[2])
      {
        __break(1u);
        goto LABEL_12;
      }

      v12 = *(v11 - 1);
      v13 = *v11;
      v30 = *(v11 - 3);
      v31 = v12;
      v32 = v13;

      static CharacterSet.whitespacesAndNewlines.getter();
      sub_1000F2814();
      v14 = StringProtocol.trimmingCharacters(in:)();
      v16 = v15;
      (*v23)(v6, v25);

      *&v30 = 61;
      *(&v30 + 1) = 0xE100000000000000;
      __chkstk_darwin(v17);
      *(&v22 - 2) = &v30;
      v18 = sub_1005FFB68(0x7FFFFFFFFFFFFFFFLL, 1, sub_100360690, (&v22 - 4), v14, v16, &v22);
      if (v18[2] == 2)
      {
        v19 = v18[6];
        v20 = v18[7];
        v30 = *(v18 + 2);
        v31 = v19;
        v32 = v20;
        v28 = 0x6567612D78616DLL;
        v29 = 0xE700000000000000;
        v21 = v18;
        sub_10001F298();
        if (!StringProtocol.caseInsensitiveCompare<A>(_:)())
        {
          break;
        }
      }

      ++v10;

      v11 += 4;
      if (v24 == v10)
      {
        goto LABEL_9;
      }
    }

    if (v21[2] >= 2uLL)
    {

      return Double.init(_:)();
    }

LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_9:

    return 0;
  }

  return result;
}

void *sub_1006008BC(void *a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v41 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v39 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    if (a3)
    {
      v40 = v13;
      v17 = result;
      v18 = a1;
      v19 = sub_100600474(v17);
      if (v20 && (v39 = sub_1006005C0(v19, v20), v22 = v21, , (v22 & 1) == 0))
      {
        Date.init()();
        sub_100007224(&qword_100834440, &qword_1006BFEC8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1006BF740;
        *(inited + 32) = 0x74416465726F7473;
        *(inited + 40) = 0xE800000000000000;
        *(inited + 72) = v12;
        v33 = sub_100032DBC((inited + 48));
        v34 = v40;
        (*(v40 + 16))(v33, v15, v12);
        *(inited + 80) = 0x4173657269707865;
        *(inited + 88) = 0xE900000000000074;
        *(inited + 120) = v12;
        sub_100032DBC((inited + 96));
        Date.addingTimeInterval(_:)();
        v35 = sub_10003D8DC(inited);
        swift_setDeallocating();
        sub_100007224(&qword_100834450, &unk_1006BFED0);
        swift_arrayDestroy();

        (*(v34 + 8))(v15, v12);
        return v35;
      }

      else if (a2)
      {
        defaultLogger()();
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v23, v24, "DIPURLCache force cache flag received, returning user info with an immediate expiration date for caching.", v25, 2u);
        }

        (*(v41 + 8))(v11, v6);
        sub_100007224(&qword_100834440, &qword_1006BFEC8);
        v26 = swift_initStackObject();
        *(v26 + 16) = xmmword_1006BF740;
        *(v26 + 32) = 0x74416465726F7473;
        *(v26 + 40) = 0xE800000000000000;
        *(v26 + 72) = v12;
        sub_100032DBC((v26 + 48));
        static Date.now.getter();
        *(v26 + 80) = 0x4173657269707865;
        *(v26 + 88) = 0xE900000000000074;
        *(v26 + 120) = v12;
        sub_100032DBC((v26 + 96));
        static Date.now.getter();
        v27 = sub_10003D8DC(v26);
        swift_setDeallocating();
        sub_100007224(&qword_100834450, &unk_1006BFED0);
        swift_arrayDestroy();

        return v27;
      }

      else
      {
        defaultLogger()();
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&_mh_execute_header, v36, v37, "DIPURLCache no max age was specified in the cache-control header, so don't cache this", v38, 2u);
        }

        (*(v41 + 8))(v9, v6);
        return 0;
      }
    }

    else
    {
      v28 = a1;
      Date.init()();
      sub_100007224(&qword_100834440, &qword_1006BFEC8);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_1006BF740;
      *(v29 + 32) = 0x74416465726F7473;
      *(v29 + 40) = 0xE800000000000000;
      *(v29 + 72) = v12;
      v30 = sub_100032DBC((v29 + 48));
      (*(v13 + 16))(v30, v15, v12);
      *(v29 + 80) = 0x4173657269707865;
      *(v29 + 88) = 0xE900000000000074;
      *(v29 + 120) = v12;
      sub_100032DBC((v29 + 96));
      Date.addingTimeInterval(_:)();
      v31 = sub_10003D8DC(v29);
      swift_setDeallocating();
      sub_100007224(&qword_100834450, &unk_1006BFED0);
      swift_arrayDestroy();

      (*(v13 + 8))(v15, v12);
      return v31;
    }
  }

  return result;
}

id sub_100600EC4(void *a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v60 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v59 = &v56 - v10;
  v11 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v56 - v15;
  v17 = [objc_opt_self() standardUserDefaults];
  v18._countAndFlagsBits = static DaemonInternalDefaultsKeys.alwaysUseCache.getter();
  v19 = NSUserDefaults.internalBool(forKey:)(v18);

  if (v19)
  {
    v20 = a1;
    return a1;
  }

  else
  {
    v58 = v6;
    v22 = [a1 response];
    v23 = sub_1006008BC(v22, a2, a3 & 1);

    if (v23)
    {
      v56 = [a1 response];
      v24 = [a1 data];
      v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v57 = v23;
      sub_10054C46C(v23);
      v28 = [a1 storagePolicy];
      v29 = objc_allocWithZone(NSCachedURLResponse);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v31 = Dictionary._bridgeToObjectiveC()().super.isa;

      v32 = v56;
      v33 = [v29 initWithResponse:v56 data:isa userInfo:v31 storagePolicy:v28];

      sub_10000B90C(v25, v27);
      v34 = [a1 response];
      v35 = [v34 URL];

      if (v35)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v36 = type metadata accessor for URL();
        (*(*(v36 - 8) + 56))(v14, 0, 1, v36);
      }

      else
      {
        v36 = type metadata accessor for URL();
        (*(*(v36 - 8) + 56))(v14, 1, 1, v36);
      }

      v40 = v59;
      sub_10034CEB4(v14, v16);
      type metadata accessor for URL();
      v41 = *(v36 - 8);
      if ((*(v41 + 48))(v16, 1, v36) == 1)
      {
        sub_10000BE18(v16, &unk_100844540, &unk_1006BFBC0);
        v42 = 0xE300000000000000;
        v43 = 7104878;
      }

      else
      {
        v43 = URL.absoluteString.getter();
        v42 = v44;
        (*(v41 + 8))(v16, v36);
      }

      v45 = v57;
      if (v57[2] && (v46 = sub_10003ADCC(0x4173657269707865, 0xE900000000000074), (v47 & 1) != 0))
      {
        sub_10001F2EC(v45[7] + 32 * v46, v63);

        sub_10001F348(v63, &v64);
      }

      else
      {

        v65 = &type metadata for String;
        *&v64 = 7104878;
        *(&v64 + 1) = 0xE300000000000000;
      }

      defaultLogger()();
      sub_10001F2EC(&v64, v63);

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v50 = 136446466;
        v51 = sub_100141FE4(v43, v42, &v62);

        *(v50 + 4) = v51;
        *(v50 + 12) = 2082;
        sub_10001F2EC(v63, v61);
        v52 = String.init<A>(describing:)();
        v54 = v53;
        sub_10000BB78(v63);
        v55 = sub_100141FE4(v52, v54, &v62);

        *(v50 + 14) = v55;
        _os_log_impl(&_mh_execute_header, v48, v49, "Caching response from %{public}s until %{public}s", v50, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10000BB78(v63);
      }

      (*(v60 + 8))(v40, v58);
      sub_10000BB78(&v64);
      return v33;
    }

    else
    {
      defaultLogger()();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "No user info present in the header", v39, 2u);
      }

      (*(v60 + 8))(v9, v58);
      return 0;
    }
  }
}

uint64_t sub_1006015BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = v15;
  *(v8 + 256) = v16;
  *(v8 + 232) = a7;
  *(v8 + 240) = a8;
  *(v8 + 216) = a5;
  *(v8 + 224) = a6;
  *(v8 + 200) = a3;
  *(v8 + 208) = a4;
  *(v8 + 552) = a2;
  *(v8 + 192) = a1;
  v9 = type metadata accessor for Date();
  *(v8 + 264) = v9;
  *(v8 + 272) = *(v9 - 8);
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  sub_100007224(&unk_100849400, &unk_1006BFBB0);
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v10 = type metadata accessor for URLRequest();
  *(v8 + 360) = v10;
  *(v8 + 368) = *(v10 - 8);
  *(v8 + 376) = swift_task_alloc();
  v11 = type metadata accessor for URL();
  *(v8 + 384) = v11;
  *(v8 + 392) = *(v11 - 8);
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v8 + 456) = v12;
  *(v8 + 464) = *(v12 - 8);
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();

  return _swift_task_switch(sub_1006018C8, 0, 0);
}

uint64_t sub_1006018C8()
{
  v186 = v0;
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceRefreshCache.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v5 = *(v0 + 448);
    v6 = *(v0 + 384);
    v7 = *(v0 + 392);
    v8 = *(v0 + 192);
    defaultLogger()();
    (*(v7 + 16))(v5, v8, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 512);
    v14 = *(v0 + 456);
    v13 = *(v0 + 464);
    v15 = *(v0 + 448);
    v17 = *(v0 + 384);
    v16 = *(v0 + 392);
    if (v11)
    {
      v180 = *(v0 + 456);
      v18 = swift_slowAlloc();
      logb = v10;
      v19 = swift_slowAlloc();
      v185 = v19;
      *v18 = 136446210;
      sub_100607F5C();
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v176 = v12;
      v22 = v21;
      (*(v16 + 8))(v15, v17);
      v23 = sub_100141FE4(v20, v22, &v185);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v9, logb, "Refreshing cache for %{public}s due to user defaults setting", v18, 0xCu);
      sub_10000BB78(v19);

      (*(v13 + 8))(v176, v180);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
      (*(v13 + 8))(v12, v14);
    }

    v47 = swift_task_alloc();
    *(v0 + 520) = v47;
    *v47 = v0;
    v48 = sub_100609EDC;
    goto LABEL_10;
  }

  v24 = [v1 standardUserDefaults];
  v25._countAndFlagsBits = static DaemonInternalDefaultsKeys.neverUseCache.getter();
  v26 = NSUserDefaults.internalBool(forKey:)(v25);

  if (!v26)
  {
    v56 = *(v0 + 368);
    v55 = *(v0 + 376);
    v57 = *(v0 + 360);
    v58 = *(*(v0 + 392) + 16);
    v58(*(v0 + 432), *(v0 + 192), *(v0 + 384));
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    v59 = sub_1005FEBE8(v55);
    *(v0 + 528) = v59;
    (*(v56 + 8))(v55, v57);
    if (!v59)
    {
      v70 = *(v0 + 384);
      v71 = *(v0 + 192);
      if ((*(v0 + 552) & 1) == 0)
      {
        v113 = *(v0 + 400);
        defaultLogger()();
        v58(v113, v71, v70);
        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.debug.getter();
        v116 = os_log_type_enabled(v114, v115);
        v118 = *(v0 + 464);
        v117 = *(v0 + 472);
        v119 = *(v0 + 456);
        v121 = *(v0 + 392);
        v120 = *(v0 + 400);
        v122 = *(v0 + 384);
        if (v116)
        {
          v183 = *(v0 + 456);
          v123 = swift_slowAlloc();
          logc = v115;
          v124 = swift_slowAlloc();
          v185 = v124;
          *v123 = 136446210;
          sub_100607F5C();
          v125 = dispatch thunk of CustomStringConvertible.description.getter();
          v178 = v117;
          v127 = v126;
          (*(v121 + 8))(v120, v122);
          v128 = sub_100141FE4(v125, v127, &v185);

          *(v123 + 4) = v128;
          _os_log_impl(&_mh_execute_header, v114, logc, "Refreshing cache for %{public}s because no response exists in cache", v123, 0xCu);
          sub_10000BB78(v124);

          (*(v118 + 8))(v178, v183);
        }

        else
        {

          (*(v121 + 8))(v120, v122);
          (*(v118 + 8))(v117, v119);
        }

        v47 = swift_task_alloc();
        *(v0 + 544) = v47;
        *v47 = v0;
        v48 = sub_100609EE0;
        goto LABEL_10;
      }

      v72 = *(v0 + 408);
      defaultLogger()();
      v58(v72, v71, v70);
      v31 = Logger.logObject.getter();
      v73 = static os_log_type_t.debug.getter();
      v74 = os_log_type_enabled(v31, v73);
      v34 = *(v0 + 480);
      v36 = *(v0 + 456);
      v35 = *(v0 + 464);
      v37 = *(v0 + 408);
      v39 = *(v0 + 384);
      v38 = *(v0 + 392);
      if (v74)
      {
        v181 = *(v0 + 456);
        v40 = swift_slowAlloc();
        log = v73;
        v41 = swift_slowAlloc();
        v185 = v41;
        *v40 = 136446210;
        sub_100607F5C();
        v75 = dispatch thunk of CustomStringConvertible.description.getter();
        v177 = v34;
        v77 = v76;
        (*(v38 + 8))(v37, v39);
        v78 = sub_100141FE4(v75, v77, &v185);

        *(v40 + 4) = v78;
        v46 = "Not refreshing cache for %{public}s because nothing is currently in the cache";
        goto LABEL_7;
      }

LABEL_22:

      (*(v38 + 8))(v37, v39);
      (*(v35 + 8))(v34, v36);
      goto LABEL_23;
    }

    v60 = [v59 userInfo];
    v182 = v58;
    if (v60)
    {
      v61 = v60;
      v62 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *(v0 + 176) = 0x74416465726F7473;
      *(v0 + 184) = 0xE800000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v62 + 16))
      {
        v63 = sub_10003AECC(v0 + 56);
        if (v64)
        {
          sub_10001F2EC(*(v62 + 56) + 32 * v63, v0 + 96);
          sub_1000279C8(v0 + 56);

          if (*(v0 + 120))
          {
            v65 = *(v0 + 352);
            v66 = *(v0 + 264);
            v67 = *(v0 + 272);
            v68 = swift_dynamicCast();
            v69 = *(v67 + 56);
            v69(v65, v68 ^ 1u, 1, v66);
            goto LABEL_29;
          }

LABEL_28:
          v80 = *(v0 + 352);
          v81 = *(v0 + 264);
          v82 = *(v0 + 272);
          sub_10000BE18(v0 + 96, &unk_100845ED0, &qword_1006DA1D0);
          v69 = *(v82 + 56);
          v69(v80, 1, 1, v81);
LABEL_29:
          v83 = [v59 userInfo];
          if (v83)
          {
            v84 = v83;
            v85 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            *(v0 + 160) = 0x4173657269707865;
            *(v0 + 168) = 0xE900000000000074;
            AnyHashable.init<A>(_:)();
            if (*(v85 + 16))
            {
              v86 = sub_10003AECC(v0 + 16);
              if (v87)
              {
                sub_10001F2EC(*(v85 + 56) + 32 * v86, v0 + 128);
                sub_1000279C8(v0 + 16);

                if (*(v0 + 152))
                {
                  v88 = *(v0 + 344);
                  v89 = *(v0 + 264);
                  v90 = swift_dynamicCast() ^ 1;
                  v91 = v88;
                  goto LABEL_37;
                }

LABEL_36:
                v92 = *(v0 + 344);
                v89 = *(v0 + 264);
                sub_10000BE18(v0 + 128, &unk_100845ED0, &qword_1006DA1D0);
                v91 = v92;
                v90 = 1;
LABEL_37:
                v69(v91, v90, 1, v89);
                v93 = *(v0 + 336);
                v94 = *(v0 + 264);
                v95 = *(v0 + 272);
                sub_10000BBC4(*(v0 + 352), v93, &unk_100849400, &unk_1006BFBB0);
                v96 = *(v95 + 48);
                if (v96(v93, 1, v94) == 1)
                {
                  v97 = *(v0 + 336);
                }

                else
                {
                  v98 = *(v0 + 328);
                  v99 = *(v0 + 264);
                  v100 = *(v0 + 200);
                  v101 = *(*(v0 + 272) + 32);
                  v101(*(v0 + 304), *(v0 + 336), v99);
                  sub_10000BBC4(v100, v98, &unk_100849400, &unk_1006BFBB0);
                  v102 = v96(v98, 1, v99);
                  v103 = *(v0 + 328);
                  if (v102 != 1)
                  {
                    v101(*(v0 + 296), *(v0 + 328), *(v0 + 264));
                    if (static Date.> infix(_:_:)())
                    {
                      v129 = *(v0 + 424);
                      v130 = *(v0 + 384);
                      v131 = *(v0 + 192);
                      defaultLogger()();
                      v182(v129, v131, v130);
                      v132 = Logger.logObject.getter();
                      v171 = static os_log_type_t.debug.getter();
                      loga = v132;
                      v133 = os_log_type_enabled(v132, v171);
                      v134 = *(v0 + 496);
                      v135 = *(v0 + 464);
                      v179 = *(v0 + 456);
                      v136 = *(v0 + 424);
                      v137 = *(v0 + 384);
                      v138 = *(v0 + 392);
                      v139 = *(v0 + 304);
                      v184 = *(v0 + 296);
                      v140 = *(v0 + 264);
                      v141 = *(v0 + 272);
                      if (v133)
                      {
                        v170 = *(v0 + 304);
                        v142 = swift_slowAlloc();
                        v167 = swift_slowAlloc();
                        v185 = v167;
                        *v142 = 136446210;
                        sub_100607F5C();
                        v168 = v134;
                        v169 = v140;
                        v143 = dispatch thunk of CustomStringConvertible.description.getter();
                        v145 = v144;
                        (*(v138 + 8))(v136, v137);
                        v146 = sub_100141FE4(v143, v145, &v185);

                        *(v142 + 4) = v146;
                        v147 = "Not refreshing cache for %{public}s because cached response was stored recently";
LABEL_56:
                        _os_log_impl(&_mh_execute_header, loga, v171, v147, v142, 0xCu);
                        sub_10000BB78(v167);

                        (*(v135 + 8))(v168, v179);
                        v157 = *(v141 + 8);
                        v157(v184, v169);
                        v158 = v170;
                        v159 = v169;
LABEL_61:
                        v157(v158, v159);
                        v163 = *(v0 + 352);
                        sub_10000BE18(*(v0 + 344), &unk_100849400, &unk_1006BFBB0);
                        sub_10000BE18(v163, &unk_100849400, &unk_1006BFBB0);
                        goto LABEL_23;
                      }

LABEL_60:

                      (*(v138 + 8))(v136, v137);
                      (*(v135 + 8))(v134, v179);
                      v157 = *(v141 + 8);
                      v157(v184, v140);
                      v158 = v139;
                      v159 = v140;
                      goto LABEL_61;
                    }

                    v160 = *(v0 + 304);
                    v161 = *(v0 + 264);
                    v162 = *(*(v0 + 272) + 8);
                    v162(*(v0 + 296), v161);
                    v162(v160, v161);
LABEL_42:
                    v104 = *(v0 + 320);
                    v105 = *(v0 + 264);
                    sub_10000BBC4(*(v0 + 344), v104, &unk_100849400, &unk_1006BFBB0);
                    if (v96(v104, 1, v105) == 1)
                    {
                      v106 = *(v0 + 320);
LABEL_46:
                      sub_10000BE18(v106, &unk_100849400, &unk_1006BFBB0);
LABEL_47:
                      v47 = swift_task_alloc();
                      *(v0 + 536) = v47;
                      *v47 = v0;
                      v48 = sub_100602A68;
LABEL_10:
                      v47[1] = v48;
                      v49 = *(v0 + 248);
                      v50 = *(v0 + 256);
                      v51 = *(v0 + 232);
                      v52 = *(v0 + 240);
                      v53 = *(v0 + 224);

                      return sub_1005D21EC(v53, v51, v52, v49, v50);
                    }

                    v107 = *(v0 + 312);
                    v108 = *(v0 + 264);
                    v109 = *(v0 + 208);
                    v110 = *(*(v0 + 272) + 32);
                    v110(*(v0 + 288), *(v0 + 320), v108);
                    sub_10000BBC4(v109, v107, &unk_100849400, &unk_1006BFBB0);
                    v111 = v96(v107, 1, v108);
                    v112 = *(v0 + 312);
                    if (v111 == 1)
                    {
                      (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
                      v106 = v112;
                      goto LABEL_46;
                    }

                    v110(*(v0 + 280), *(v0 + 312), *(v0 + 264));
                    if ((static Date.> infix(_:_:)() & 1) == 0)
                    {
                      v164 = *(v0 + 288);
                      v165 = *(v0 + 264);
                      v166 = *(*(v0 + 272) + 8);
                      v166(*(v0 + 280), v165);
                      v166(v164, v165);
                      goto LABEL_47;
                    }

                    v148 = *(v0 + 416);
                    v149 = *(v0 + 384);
                    v150 = *(v0 + 192);
                    defaultLogger()();
                    v182(v148, v150, v149);
                    v151 = Logger.logObject.getter();
                    v171 = static os_log_type_t.debug.getter();
                    loga = v151;
                    v152 = os_log_type_enabled(v151, v171);
                    v134 = *(v0 + 488);
                    v135 = *(v0 + 464);
                    v179 = *(v0 + 456);
                    v136 = *(v0 + 416);
                    v137 = *(v0 + 384);
                    v138 = *(v0 + 392);
                    v139 = *(v0 + 288);
                    v184 = *(v0 + 280);
                    v140 = *(v0 + 264);
                    v141 = *(v0 + 272);
                    if (v152)
                    {
                      v170 = *(v0 + 288);
                      v142 = swift_slowAlloc();
                      v167 = swift_slowAlloc();
                      v185 = v167;
                      *v142 = 136446210;
                      sub_100607F5C();
                      v168 = v134;
                      v169 = v140;
                      v153 = dispatch thunk of CustomStringConvertible.description.getter();
                      v155 = v154;
                      (*(v138 + 8))(v136, v137);
                      v156 = sub_100141FE4(v153, v155, &v185);

                      *(v142 + 4) = v156;
                      v147 = "Not refreshing cache for %{public}s because current response won't expire soon";
                      goto LABEL_56;
                    }

                    goto LABEL_60;
                  }

                  (*(*(v0 + 272) + 8))(*(v0 + 304), *(v0 + 264));
                  v97 = v103;
                }

                sub_10000BE18(v97, &unk_100849400, &unk_1006BFBB0);
                goto LABEL_42;
              }
            }

            sub_1000279C8(v0 + 16);
          }

          *(v0 + 128) = 0u;
          *(v0 + 144) = 0u;
          goto LABEL_36;
        }
      }

      sub_1000279C8(v0 + 56);
    }

    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_28;
  }

  v27 = *(v0 + 440);
  v28 = *(v0 + 384);
  v29 = *(v0 + 392);
  v30 = *(v0 + 192);
  defaultLogger()();
  (*(v29 + 16))(v27, v30, v28);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 504);
  v36 = *(v0 + 456);
  v35 = *(v0 + 464);
  v37 = *(v0 + 440);
  v39 = *(v0 + 384);
  v38 = *(v0 + 392);
  if (!v33)
  {
    goto LABEL_22;
  }

  v181 = *(v0 + 456);
  v40 = swift_slowAlloc();
  log = v32;
  v41 = swift_slowAlloc();
  v185 = v41;
  *v40 = 136446210;
  sub_100607F5C();
  v42 = dispatch thunk of CustomStringConvertible.description.getter();
  v177 = v34;
  v44 = v43;
  (*(v38 + 8))(v37, v39);
  v45 = sub_100141FE4(v42, v44, &v185);

  *(v40 + 4) = v45;
  v46 = "Not refreshing cache for %{public}s because caching is disabled in user defaults";
LABEL_7:
  _os_log_impl(&_mh_execute_header, v31, log, v46, v40, 0xCu);
  sub_10000BB78(v41);

  (*(v35 + 8))(v177, v181);
LABEL_23:

  v79 = *(v0 + 8);

  return v79();
}

uint64_t sub_100602A68()
{

  return _swift_task_switch(sub_100609EEC, 0, 0);
}

uint64_t sub_100602B64(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = v15;
  *(v8 + 256) = v16;
  *(v8 + 232) = a7;
  *(v8 + 240) = a8;
  *(v8 + 216) = a5;
  *(v8 + 224) = a6;
  *(v8 + 200) = a3;
  *(v8 + 208) = a4;
  *(v8 + 552) = a2;
  *(v8 + 192) = a1;
  v9 = type metadata accessor for Date();
  *(v8 + 264) = v9;
  *(v8 + 272) = *(v9 - 8);
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  sub_100007224(&unk_100849400, &unk_1006BFBB0);
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = swift_task_alloc();
  v10 = type metadata accessor for URLRequest();
  *(v8 + 360) = v10;
  *(v8 + 368) = *(v10 - 8);
  *(v8 + 376) = swift_task_alloc();
  v11 = type metadata accessor for URL();
  *(v8 + 384) = v11;
  *(v8 + 392) = *(v11 - 8);
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v8 + 456) = v12;
  *(v8 + 464) = *(v12 - 8);
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();

  return _swift_task_switch(sub_100602E70, 0, 0);
}

uint64_t sub_100602E70()
{
  v186 = v0;
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceRefreshCache.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v5 = *(v0 + 448);
    v6 = *(v0 + 384);
    v7 = *(v0 + 392);
    v8 = *(v0 + 192);
    defaultLogger()();
    (*(v7 + 16))(v5, v8, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 512);
    v14 = *(v0 + 456);
    v13 = *(v0 + 464);
    v15 = *(v0 + 448);
    v17 = *(v0 + 384);
    v16 = *(v0 + 392);
    if (v11)
    {
      v180 = *(v0 + 456);
      v18 = swift_slowAlloc();
      logb = v10;
      v19 = swift_slowAlloc();
      v185 = v19;
      *v18 = 136446210;
      sub_100607F5C();
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v176 = v12;
      v22 = v21;
      (*(v16 + 8))(v15, v17);
      v23 = sub_100141FE4(v20, v22, &v185);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v9, logb, "Refreshing cache for %{public}s due to user defaults setting", v18, 0xCu);
      sub_10000BB78(v19);

      (*(v13 + 8))(v176, v180);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
      (*(v13 + 8))(v12, v14);
    }

    v47 = swift_task_alloc();
    *(v0 + 520) = v47;
    *v47 = v0;
    v48 = sub_100604010;
    goto LABEL_10;
  }

  v24 = [v1 standardUserDefaults];
  v25._countAndFlagsBits = static DaemonInternalDefaultsKeys.neverUseCache.getter();
  v26 = NSUserDefaults.internalBool(forKey:)(v25);

  if (!v26)
  {
    v56 = *(v0 + 368);
    v55 = *(v0 + 376);
    v57 = *(v0 + 360);
    v58 = *(*(v0 + 392) + 16);
    v58(*(v0 + 432), *(v0 + 192), *(v0 + 384));
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    v59 = sub_1005FEBE8(v55);
    *(v0 + 528) = v59;
    (*(v56 + 8))(v55, v57);
    if (!v59)
    {
      v70 = *(v0 + 384);
      v71 = *(v0 + 192);
      if ((*(v0 + 552) & 1) == 0)
      {
        v113 = *(v0 + 400);
        defaultLogger()();
        v58(v113, v71, v70);
        v114 = Logger.logObject.getter();
        v115 = static os_log_type_t.debug.getter();
        v116 = os_log_type_enabled(v114, v115);
        v118 = *(v0 + 464);
        v117 = *(v0 + 472);
        v119 = *(v0 + 456);
        v121 = *(v0 + 392);
        v120 = *(v0 + 400);
        v122 = *(v0 + 384);
        if (v116)
        {
          v183 = *(v0 + 456);
          v123 = swift_slowAlloc();
          logc = v115;
          v124 = swift_slowAlloc();
          v185 = v124;
          *v123 = 136446210;
          sub_100607F5C();
          v125 = dispatch thunk of CustomStringConvertible.description.getter();
          v178 = v117;
          v127 = v126;
          (*(v121 + 8))(v120, v122);
          v128 = sub_100141FE4(v125, v127, &v185);

          *(v123 + 4) = v128;
          _os_log_impl(&_mh_execute_header, v114, logc, "Refreshing cache for %{public}s because no response exists in cache", v123, 0xCu);
          sub_10000BB78(v124);

          (*(v118 + 8))(v178, v183);
        }

        else
        {

          (*(v121 + 8))(v120, v122);
          (*(v118 + 8))(v117, v119);
        }

        v47 = swift_task_alloc();
        *(v0 + 544) = v47;
        *v47 = v0;
        v48 = sub_1006046B8;
        goto LABEL_10;
      }

      v72 = *(v0 + 408);
      defaultLogger()();
      v58(v72, v71, v70);
      v31 = Logger.logObject.getter();
      v73 = static os_log_type_t.debug.getter();
      v74 = os_log_type_enabled(v31, v73);
      v34 = *(v0 + 480);
      v36 = *(v0 + 456);
      v35 = *(v0 + 464);
      v37 = *(v0 + 408);
      v39 = *(v0 + 384);
      v38 = *(v0 + 392);
      if (v74)
      {
        v181 = *(v0 + 456);
        v40 = swift_slowAlloc();
        log = v73;
        v41 = swift_slowAlloc();
        v185 = v41;
        *v40 = 136446210;
        sub_100607F5C();
        v75 = dispatch thunk of CustomStringConvertible.description.getter();
        v177 = v34;
        v77 = v76;
        (*(v38 + 8))(v37, v39);
        v78 = sub_100141FE4(v75, v77, &v185);

        *(v40 + 4) = v78;
        v46 = "Not refreshing cache for %{public}s because nothing is currently in the cache";
        goto LABEL_7;
      }

LABEL_22:

      (*(v38 + 8))(v37, v39);
      (*(v35 + 8))(v34, v36);
      goto LABEL_23;
    }

    v60 = [v59 userInfo];
    v182 = v58;
    if (v60)
    {
      v61 = v60;
      v62 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *(v0 + 176) = 0x74416465726F7473;
      *(v0 + 184) = 0xE800000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v62 + 16))
      {
        v63 = sub_10003AECC(v0 + 56);
        if (v64)
        {
          sub_10001F2EC(*(v62 + 56) + 32 * v63, v0 + 96);
          sub_1000279C8(v0 + 56);

          if (*(v0 + 120))
          {
            v65 = *(v0 + 352);
            v66 = *(v0 + 264);
            v67 = *(v0 + 272);
            v68 = swift_dynamicCast();
            v69 = *(v67 + 56);
            v69(v65, v68 ^ 1u, 1, v66);
            goto LABEL_29;
          }

LABEL_28:
          v80 = *(v0 + 352);
          v81 = *(v0 + 264);
          v82 = *(v0 + 272);
          sub_10000BE18(v0 + 96, &unk_100845ED0, &qword_1006DA1D0);
          v69 = *(v82 + 56);
          v69(v80, 1, 1, v81);
LABEL_29:
          v83 = [v59 userInfo];
          if (v83)
          {
            v84 = v83;
            v85 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            *(v0 + 160) = 0x4173657269707865;
            *(v0 + 168) = 0xE900000000000074;
            AnyHashable.init<A>(_:)();
            if (*(v85 + 16))
            {
              v86 = sub_10003AECC(v0 + 16);
              if (v87)
              {
                sub_10001F2EC(*(v85 + 56) + 32 * v86, v0 + 128);
                sub_1000279C8(v0 + 16);

                if (*(v0 + 152))
                {
                  v88 = *(v0 + 344);
                  v89 = *(v0 + 264);
                  v90 = swift_dynamicCast() ^ 1;
                  v91 = v88;
                  goto LABEL_37;
                }

LABEL_36:
                v92 = *(v0 + 344);
                v89 = *(v0 + 264);
                sub_10000BE18(v0 + 128, &unk_100845ED0, &qword_1006DA1D0);
                v91 = v92;
                v90 = 1;
LABEL_37:
                v69(v91, v90, 1, v89);
                v93 = *(v0 + 336);
                v94 = *(v0 + 264);
                v95 = *(v0 + 272);
                sub_10000BBC4(*(v0 + 352), v93, &unk_100849400, &unk_1006BFBB0);
                v96 = *(v95 + 48);
                if (v96(v93, 1, v94) == 1)
                {
                  v97 = *(v0 + 336);
                }

                else
                {
                  v98 = *(v0 + 328);
                  v99 = *(v0 + 264);
                  v100 = *(v0 + 200);
                  v101 = *(*(v0 + 272) + 32);
                  v101(*(v0 + 304), *(v0 + 336), v99);
                  sub_10000BBC4(v100, v98, &unk_100849400, &unk_1006BFBB0);
                  v102 = v96(v98, 1, v99);
                  v103 = *(v0 + 328);
                  if (v102 != 1)
                  {
                    v101(*(v0 + 296), *(v0 + 328), *(v0 + 264));
                    if (static Date.> infix(_:_:)())
                    {
                      v129 = *(v0 + 424);
                      v130 = *(v0 + 384);
                      v131 = *(v0 + 192);
                      defaultLogger()();
                      v182(v129, v131, v130);
                      v132 = Logger.logObject.getter();
                      v171 = static os_log_type_t.debug.getter();
                      loga = v132;
                      v133 = os_log_type_enabled(v132, v171);
                      v134 = *(v0 + 496);
                      v135 = *(v0 + 464);
                      v179 = *(v0 + 456);
                      v136 = *(v0 + 424);
                      v137 = *(v0 + 384);
                      v138 = *(v0 + 392);
                      v139 = *(v0 + 304);
                      v184 = *(v0 + 296);
                      v140 = *(v0 + 264);
                      v141 = *(v0 + 272);
                      if (v133)
                      {
                        v170 = *(v0 + 304);
                        v142 = swift_slowAlloc();
                        v167 = swift_slowAlloc();
                        v185 = v167;
                        *v142 = 136446210;
                        sub_100607F5C();
                        v168 = v134;
                        v169 = v140;
                        v143 = dispatch thunk of CustomStringConvertible.description.getter();
                        v145 = v144;
                        (*(v138 + 8))(v136, v137);
                        v146 = sub_100141FE4(v143, v145, &v185);

                        *(v142 + 4) = v146;
                        v147 = "Not refreshing cache for %{public}s because cached response was stored recently";
LABEL_56:
                        _os_log_impl(&_mh_execute_header, loga, v171, v147, v142, 0xCu);
                        sub_10000BB78(v167);

                        (*(v135 + 8))(v168, v179);
                        v157 = *(v141 + 8);
                        v157(v184, v169);
                        v158 = v170;
                        v159 = v169;
LABEL_61:
                        v157(v158, v159);
                        v163 = *(v0 + 352);
                        sub_10000BE18(*(v0 + 344), &unk_100849400, &unk_1006BFBB0);
                        sub_10000BE18(v163, &unk_100849400, &unk_1006BFBB0);
                        goto LABEL_23;
                      }

LABEL_60:

                      (*(v138 + 8))(v136, v137);
                      (*(v135 + 8))(v134, v179);
                      v157 = *(v141 + 8);
                      v157(v184, v140);
                      v158 = v139;
                      v159 = v140;
                      goto LABEL_61;
                    }

                    v160 = *(v0 + 304);
                    v161 = *(v0 + 264);
                    v162 = *(*(v0 + 272) + 8);
                    v162(*(v0 + 296), v161);
                    v162(v160, v161);
LABEL_42:
                    v104 = *(v0 + 320);
                    v105 = *(v0 + 264);
                    sub_10000BBC4(*(v0 + 344), v104, &unk_100849400, &unk_1006BFBB0);
                    if (v96(v104, 1, v105) == 1)
                    {
                      v106 = *(v0 + 320);
LABEL_46:
                      sub_10000BE18(v106, &unk_100849400, &unk_1006BFBB0);
LABEL_47:
                      v47 = swift_task_alloc();
                      *(v0 + 536) = v47;
                      *v47 = v0;
                      v48 = sub_1006043FC;
LABEL_10:
                      v47[1] = v48;
                      v49 = *(v0 + 248);
                      v50 = *(v0 + 256);
                      v51 = *(v0 + 232);
                      v52 = *(v0 + 240);
                      v53 = *(v0 + 224);

                      return sub_1005D2BCC(v53, v51, v52, v49, v50);
                    }

                    v107 = *(v0 + 312);
                    v108 = *(v0 + 264);
                    v109 = *(v0 + 208);
                    v110 = *(*(v0 + 272) + 32);
                    v110(*(v0 + 288), *(v0 + 320), v108);
                    sub_10000BBC4(v109, v107, &unk_100849400, &unk_1006BFBB0);
                    v111 = v96(v107, 1, v108);
                    v112 = *(v0 + 312);
                    if (v111 == 1)
                    {
                      (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
                      v106 = v112;
                      goto LABEL_46;
                    }

                    v110(*(v0 + 280), *(v0 + 312), *(v0 + 264));
                    if ((static Date.> infix(_:_:)() & 1) == 0)
                    {
                      v164 = *(v0 + 288);
                      v165 = *(v0 + 264);
                      v166 = *(*(v0 + 272) + 8);
                      v166(*(v0 + 280), v165);
                      v166(v164, v165);
                      goto LABEL_47;
                    }

                    v148 = *(v0 + 416);
                    v149 = *(v0 + 384);
                    v150 = *(v0 + 192);
                    defaultLogger()();
                    v182(v148, v150, v149);
                    v151 = Logger.logObject.getter();
                    v171 = static os_log_type_t.debug.getter();
                    loga = v151;
                    v152 = os_log_type_enabled(v151, v171);
                    v134 = *(v0 + 488);
                    v135 = *(v0 + 464);
                    v179 = *(v0 + 456);
                    v136 = *(v0 + 416);
                    v137 = *(v0 + 384);
                    v138 = *(v0 + 392);
                    v139 = *(v0 + 288);
                    v184 = *(v0 + 280);
                    v140 = *(v0 + 264);
                    v141 = *(v0 + 272);
                    if (v152)
                    {
                      v170 = *(v0 + 288);
                      v142 = swift_slowAlloc();
                      v167 = swift_slowAlloc();
                      v185 = v167;
                      *v142 = 136446210;
                      sub_100607F5C();
                      v168 = v134;
                      v169 = v140;
                      v153 = dispatch thunk of CustomStringConvertible.description.getter();
                      v155 = v154;
                      (*(v138 + 8))(v136, v137);
                      v156 = sub_100141FE4(v153, v155, &v185);

                      *(v142 + 4) = v156;
                      v147 = "Not refreshing cache for %{public}s because current response won't expire soon";
                      goto LABEL_56;
                    }

                    goto LABEL_60;
                  }

                  (*(*(v0 + 272) + 8))(*(v0 + 304), *(v0 + 264));
                  v97 = v103;
                }

                sub_10000BE18(v97, &unk_100849400, &unk_1006BFBB0);
                goto LABEL_42;
              }
            }

            sub_1000279C8(v0 + 16);
          }

          *(v0 + 128) = 0u;
          *(v0 + 144) = 0u;
          goto LABEL_36;
        }
      }

      sub_1000279C8(v0 + 56);
    }

    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_28;
  }

  v27 = *(v0 + 440);
  v28 = *(v0 + 384);
  v29 = *(v0 + 392);
  v30 = *(v0 + 192);
  defaultLogger()();
  (*(v29 + 16))(v27, v30, v28);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 504);
  v36 = *(v0 + 456);
  v35 = *(v0 + 464);
  v37 = *(v0 + 440);
  v39 = *(v0 + 384);
  v38 = *(v0 + 392);
  if (!v33)
  {
    goto LABEL_22;
  }

  v181 = *(v0 + 456);
  v40 = swift_slowAlloc();
  log = v32;
  v41 = swift_slowAlloc();
  v185 = v41;
  *v40 = 136446210;
  sub_100607F5C();
  v42 = dispatch thunk of CustomStringConvertible.description.getter();
  v177 = v34;
  v44 = v43;
  (*(v38 + 8))(v37, v39);
  v45 = sub_100141FE4(v42, v44, &v185);

  *(v40 + 4) = v45;
  v46 = "Not refreshing cache for %{public}s because caching is disabled in user defaults";
LABEL_7:
  _os_log_impl(&_mh_execute_header, v31, log, v46, v40, 0xCu);
  sub_10000BB78(v41);

  (*(v35 + 8))(v177, v181);
LABEL_23:

  v79 = *(v0 + 8);

  return v79();
}

uint64_t sub_100604010()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1006043FC()
{

  return _swift_task_switch(sub_1006044F8, 0, 0);
}

uint64_t sub_1006044F8()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);

  sub_10000BE18(v1, &unk_100849400, &unk_1006BFBB0);
  sub_10000BE18(v2, &unk_100849400, &unk_1006BFBB0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1006046B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100604AA4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 224) = a6;
  *(v7 + 232) = a7;
  *(v7 + 208) = a4;
  *(v7 + 216) = a5;
  *(v7 + 528) = a2;
  *(v7 + 192) = a1;
  *(v7 + 200) = a3;
  v8 = type metadata accessor for Date();
  *(v7 + 240) = v8;
  *(v7 + 248) = *(v8 - 8);
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = swift_task_alloc();
  *(v7 + 280) = swift_task_alloc();
  sub_100007224(&unk_100849400, &unk_1006BFBB0);
  *(v7 + 288) = swift_task_alloc();
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = swift_task_alloc();
  *(v7 + 312) = swift_task_alloc();
  *(v7 + 320) = swift_task_alloc();
  *(v7 + 328) = swift_task_alloc();
  v9 = type metadata accessor for URLRequest();
  *(v7 + 336) = v9;
  *(v7 + 344) = *(v9 - 8);
  *(v7 + 352) = swift_task_alloc();
  v10 = type metadata accessor for URL();
  *(v7 + 360) = v10;
  *(v7 + 368) = *(v10 - 8);
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();
  *(v7 + 408) = swift_task_alloc();
  *(v7 + 416) = swift_task_alloc();
  *(v7 + 424) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v7 + 432) = v11;
  *(v7 + 440) = *(v11 - 8);
  *(v7 + 448) = swift_task_alloc();
  *(v7 + 456) = swift_task_alloc();
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();
  *(v7 + 488) = swift_task_alloc();

  return _swift_task_switch(sub_100604DA0, 0, 0);
}

uint64_t sub_100604DA0()
{
  v183 = v0;
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceRefreshCache.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v5 = *(v0 + 424);
    v6 = *(v0 + 360);
    v7 = *(v0 + 368);
    v8 = *(v0 + 192);
    defaultLogger()();
    (*(v7 + 16))(v5, v8, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 488);
    v14 = *(v0 + 432);
    v13 = *(v0 + 440);
    v15 = *(v0 + 424);
    v17 = *(v0 + 360);
    v16 = *(v0 + 368);
    if (v11)
    {
      v177 = *(v0 + 432);
      v18 = swift_slowAlloc();
      logb = v10;
      v19 = swift_slowAlloc();
      v182 = v19;
      *v18 = 136446210;
      sub_100607F5C();
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v173 = v12;
      v22 = v21;
      (*(v16 + 8))(v15, v17);
      v23 = sub_100141FE4(v20, v22, &v182);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v9, logb, "Refreshing cache for %{public}s due to user defaults setting", v18, 0xCu);
      sub_10000BB78(v19);

      (*(v13 + 8))(v173, v177);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
      (*(v13 + 8))(v12, v14);
    }

    v47 = swift_task_alloc();
    *(v0 + 496) = v47;
    *v47 = v0;
    v48 = sub_100605F38;
    goto LABEL_10;
  }

  v24 = [v1 standardUserDefaults];
  v25._countAndFlagsBits = static DaemonInternalDefaultsKeys.neverUseCache.getter();
  v26 = NSUserDefaults.internalBool(forKey:)(v25);

  if (!v26)
  {
    v53 = *(v0 + 344);
    v52 = *(v0 + 352);
    v54 = *(v0 + 336);
    v55 = *(*(v0 + 368) + 16);
    v55(*(v0 + 408), *(v0 + 192), *(v0 + 360));
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    v56 = sub_1005FEBE8(v52);
    *(v0 + 504) = v56;
    (*(v53 + 8))(v52, v54);
    if (!v56)
    {
      v67 = *(v0 + 360);
      v68 = *(v0 + 192);
      if ((*(v0 + 528) & 1) == 0)
      {
        v110 = *(v0 + 376);
        defaultLogger()();
        v55(v110, v68, v67);
        v111 = Logger.logObject.getter();
        v112 = static os_log_type_t.debug.getter();
        v113 = os_log_type_enabled(v111, v112);
        v115 = *(v0 + 440);
        v114 = *(v0 + 448);
        v116 = *(v0 + 432);
        v118 = *(v0 + 368);
        v117 = *(v0 + 376);
        v119 = *(v0 + 360);
        if (v113)
        {
          v180 = *(v0 + 432);
          v120 = swift_slowAlloc();
          logc = v112;
          v121 = swift_slowAlloc();
          v182 = v121;
          *v120 = 136446210;
          sub_100607F5C();
          v122 = dispatch thunk of CustomStringConvertible.description.getter();
          v175 = v114;
          v124 = v123;
          (*(v118 + 8))(v117, v119);
          v125 = sub_100141FE4(v122, v124, &v182);

          *(v120 + 4) = v125;
          _os_log_impl(&_mh_execute_header, v111, logc, "Refreshing cache for %{public}s because no response exists in cache", v120, 0xCu);
          sub_10000BB78(v121);

          (*(v115 + 8))(v175, v180);
        }

        else
        {

          (*(v118 + 8))(v117, v119);
          (*(v115 + 8))(v114, v116);
        }

        v47 = swift_task_alloc();
        *(v0 + 520) = v47;
        *v47 = v0;
        v48 = sub_1006065E0;
        goto LABEL_10;
      }

      v69 = *(v0 + 384);
      defaultLogger()();
      v55(v69, v68, v67);
      v31 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();
      v71 = os_log_type_enabled(v31, v70);
      v34 = *(v0 + 456);
      v36 = *(v0 + 432);
      v35 = *(v0 + 440);
      v37 = *(v0 + 384);
      v39 = *(v0 + 360);
      v38 = *(v0 + 368);
      if (v71)
      {
        v178 = *(v0 + 432);
        v40 = swift_slowAlloc();
        log = v70;
        v41 = swift_slowAlloc();
        v182 = v41;
        *v40 = 136446210;
        sub_100607F5C();
        v72 = dispatch thunk of CustomStringConvertible.description.getter();
        v174 = v34;
        v74 = v73;
        (*(v38 + 8))(v37, v39);
        v75 = sub_100141FE4(v72, v74, &v182);

        *(v40 + 4) = v75;
        v46 = "Not refreshing cache for %{public}s because nothing is currently in the cache";
        goto LABEL_7;
      }

LABEL_22:

      (*(v38 + 8))(v37, v39);
      (*(v35 + 8))(v34, v36);
      goto LABEL_23;
    }

    v57 = [v56 userInfo];
    v179 = v55;
    if (v57)
    {
      v58 = v57;
      v59 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *(v0 + 176) = 0x74416465726F7473;
      *(v0 + 184) = 0xE800000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v59 + 16))
      {
        v60 = sub_10003AECC(v0 + 56);
        if (v61)
        {
          sub_10001F2EC(*(v59 + 56) + 32 * v60, v0 + 96);
          sub_1000279C8(v0 + 56);

          if (*(v0 + 120))
          {
            v62 = *(v0 + 328);
            v63 = *(v0 + 240);
            v64 = *(v0 + 248);
            v65 = swift_dynamicCast();
            v66 = *(v64 + 56);
            v66(v62, v65 ^ 1u, 1, v63);
            goto LABEL_29;
          }

LABEL_28:
          v77 = *(v0 + 328);
          v78 = *(v0 + 240);
          v79 = *(v0 + 248);
          sub_10000BE18(v0 + 96, &unk_100845ED0, &qword_1006DA1D0);
          v66 = *(v79 + 56);
          v66(v77, 1, 1, v78);
LABEL_29:
          v80 = [v56 userInfo];
          if (v80)
          {
            v81 = v80;
            v82 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            *(v0 + 160) = 0x4173657269707865;
            *(v0 + 168) = 0xE900000000000074;
            AnyHashable.init<A>(_:)();
            if (*(v82 + 16))
            {
              v83 = sub_10003AECC(v0 + 16);
              if (v84)
              {
                sub_10001F2EC(*(v82 + 56) + 32 * v83, v0 + 128);
                sub_1000279C8(v0 + 16);

                if (*(v0 + 152))
                {
                  v85 = *(v0 + 320);
                  v86 = *(v0 + 240);
                  v87 = swift_dynamicCast() ^ 1;
                  v88 = v85;
                  goto LABEL_37;
                }

LABEL_36:
                v89 = *(v0 + 320);
                v86 = *(v0 + 240);
                sub_10000BE18(v0 + 128, &unk_100845ED0, &qword_1006DA1D0);
                v88 = v89;
                v87 = 1;
LABEL_37:
                v66(v88, v87, 1, v86);
                v90 = *(v0 + 312);
                v91 = *(v0 + 240);
                v92 = *(v0 + 248);
                sub_10000BBC4(*(v0 + 328), v90, &unk_100849400, &unk_1006BFBB0);
                v93 = *(v92 + 48);
                if (v93(v90, 1, v91) == 1)
                {
                  v94 = *(v0 + 312);
                }

                else
                {
                  v95 = *(v0 + 304);
                  v96 = *(v0 + 240);
                  v97 = *(v0 + 200);
                  v98 = *(*(v0 + 248) + 32);
                  v98(*(v0 + 280), *(v0 + 312), v96);
                  sub_10000BBC4(v97, v95, &unk_100849400, &unk_1006BFBB0);
                  v99 = v93(v95, 1, v96);
                  v100 = *(v0 + 304);
                  if (v99 != 1)
                  {
                    v98(*(v0 + 272), *(v0 + 304), *(v0 + 240));
                    if (static Date.> infix(_:_:)())
                    {
                      v126 = *(v0 + 400);
                      v127 = *(v0 + 360);
                      v128 = *(v0 + 192);
                      defaultLogger()();
                      v179(v126, v128, v127);
                      v129 = Logger.logObject.getter();
                      v168 = static os_log_type_t.debug.getter();
                      loga = v129;
                      v130 = os_log_type_enabled(v129, v168);
                      v131 = *(v0 + 472);
                      v132 = *(v0 + 440);
                      v176 = *(v0 + 432);
                      v133 = *(v0 + 400);
                      v134 = *(v0 + 360);
                      v135 = *(v0 + 368);
                      v136 = *(v0 + 280);
                      v181 = *(v0 + 272);
                      v137 = *(v0 + 240);
                      v138 = *(v0 + 248);
                      if (v130)
                      {
                        v167 = *(v0 + 280);
                        v139 = swift_slowAlloc();
                        v164 = swift_slowAlloc();
                        v182 = v164;
                        *v139 = 136446210;
                        sub_100607F5C();
                        v165 = v131;
                        v166 = v137;
                        v140 = dispatch thunk of CustomStringConvertible.description.getter();
                        v142 = v141;
                        (*(v135 + 8))(v133, v134);
                        v143 = sub_100141FE4(v140, v142, &v182);

                        *(v139 + 4) = v143;
                        v144 = "Not refreshing cache for %{public}s because cached response was stored recently";
LABEL_56:
                        _os_log_impl(&_mh_execute_header, loga, v168, v144, v139, 0xCu);
                        sub_10000BB78(v164);

                        (*(v132 + 8))(v165, v176);
                        v154 = *(v138 + 8);
                        v154(v181, v166);
                        v155 = v167;
                        v156 = v166;
LABEL_61:
                        v154(v155, v156);
                        v160 = *(v0 + 328);
                        sub_10000BE18(*(v0 + 320), &unk_100849400, &unk_1006BFBB0);
                        sub_10000BE18(v160, &unk_100849400, &unk_1006BFBB0);
                        goto LABEL_23;
                      }

LABEL_60:

                      (*(v135 + 8))(v133, v134);
                      (*(v132 + 8))(v131, v176);
                      v154 = *(v138 + 8);
                      v154(v181, v137);
                      v155 = v136;
                      v156 = v137;
                      goto LABEL_61;
                    }

                    v157 = *(v0 + 280);
                    v158 = *(v0 + 240);
                    v159 = *(*(v0 + 248) + 8);
                    v159(*(v0 + 272), v158);
                    v159(v157, v158);
LABEL_42:
                    v101 = *(v0 + 296);
                    v102 = *(v0 + 240);
                    sub_10000BBC4(*(v0 + 320), v101, &unk_100849400, &unk_1006BFBB0);
                    if (v93(v101, 1, v102) == 1)
                    {
                      v103 = *(v0 + 296);
LABEL_46:
                      sub_10000BE18(v103, &unk_100849400, &unk_1006BFBB0);
LABEL_47:
                      v47 = swift_task_alloc();
                      *(v0 + 512) = v47;
                      *v47 = v0;
                      v48 = sub_100606324;
LABEL_10:
                      v47[1] = v48;
                      v50 = *(v0 + 224);
                      v49 = *(v0 + 232);

                      return sub_1005AE88C(v50, v49);
                    }

                    v104 = *(v0 + 288);
                    v105 = *(v0 + 240);
                    v106 = *(v0 + 208);
                    v107 = *(*(v0 + 248) + 32);
                    v107(*(v0 + 264), *(v0 + 296), v105);
                    sub_10000BBC4(v106, v104, &unk_100849400, &unk_1006BFBB0);
                    v108 = v93(v104, 1, v105);
                    v109 = *(v0 + 288);
                    if (v108 == 1)
                    {
                      (*(*(v0 + 248) + 8))(*(v0 + 264), *(v0 + 240));
                      v103 = v109;
                      goto LABEL_46;
                    }

                    v107(*(v0 + 256), *(v0 + 288), *(v0 + 240));
                    if ((static Date.> infix(_:_:)() & 1) == 0)
                    {
                      v161 = *(v0 + 264);
                      v162 = *(v0 + 240);
                      v163 = *(*(v0 + 248) + 8);
                      v163(*(v0 + 256), v162);
                      v163(v161, v162);
                      goto LABEL_47;
                    }

                    v145 = *(v0 + 392);
                    v146 = *(v0 + 360);
                    v147 = *(v0 + 192);
                    defaultLogger()();
                    v179(v145, v147, v146);
                    v148 = Logger.logObject.getter();
                    v168 = static os_log_type_t.debug.getter();
                    loga = v148;
                    v149 = os_log_type_enabled(v148, v168);
                    v131 = *(v0 + 464);
                    v132 = *(v0 + 440);
                    v176 = *(v0 + 432);
                    v133 = *(v0 + 392);
                    v134 = *(v0 + 360);
                    v135 = *(v0 + 368);
                    v136 = *(v0 + 264);
                    v181 = *(v0 + 256);
                    v137 = *(v0 + 240);
                    v138 = *(v0 + 248);
                    if (v149)
                    {
                      v167 = *(v0 + 264);
                      v139 = swift_slowAlloc();
                      v164 = swift_slowAlloc();
                      v182 = v164;
                      *v139 = 136446210;
                      sub_100607F5C();
                      v165 = v131;
                      v166 = v137;
                      v150 = dispatch thunk of CustomStringConvertible.description.getter();
                      v152 = v151;
                      (*(v135 + 8))(v133, v134);
                      v153 = sub_100141FE4(v150, v152, &v182);

                      *(v139 + 4) = v153;
                      v144 = "Not refreshing cache for %{public}s because current response won't expire soon";
                      goto LABEL_56;
                    }

                    goto LABEL_60;
                  }

                  (*(*(v0 + 248) + 8))(*(v0 + 280), *(v0 + 240));
                  v94 = v100;
                }

                sub_10000BE18(v94, &unk_100849400, &unk_1006BFBB0);
                goto LABEL_42;
              }
            }

            sub_1000279C8(v0 + 16);
          }

          *(v0 + 128) = 0u;
          *(v0 + 144) = 0u;
          goto LABEL_36;
        }
      }

      sub_1000279C8(v0 + 56);
    }

    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_28;
  }

  v27 = *(v0 + 416);
  v28 = *(v0 + 360);
  v29 = *(v0 + 368);
  v30 = *(v0 + 192);
  defaultLogger()();
  (*(v29 + 16))(v27, v30, v28);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 480);
  v36 = *(v0 + 432);
  v35 = *(v0 + 440);
  v37 = *(v0 + 416);
  v39 = *(v0 + 360);
  v38 = *(v0 + 368);
  if (!v33)
  {
    goto LABEL_22;
  }

  v178 = *(v0 + 432);
  v40 = swift_slowAlloc();
  log = v32;
  v41 = swift_slowAlloc();
  v182 = v41;
  *v40 = 136446210;
  sub_100607F5C();
  v42 = dispatch thunk of CustomStringConvertible.description.getter();
  v174 = v34;
  v44 = v43;
  (*(v38 + 8))(v37, v39);
  v45 = sub_100141FE4(v42, v44, &v182);

  *(v40 + 4) = v45;
  v46 = "Not refreshing cache for %{public}s because caching is disabled in user defaults";
LABEL_7:
  _os_log_impl(&_mh_execute_header, v31, log, v46, v40, 0xCu);
  sub_10000BB78(v41);

  (*(v35 + 8))(v174, v178);
LABEL_23:

  v76 = *(v0 + 8);

  return v76();
}

uint64_t sub_100605F38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100606324()
{

  return _swift_task_switch(sub_100606420, 0, 0);
}

uint64_t sub_100606420()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  sub_10000BE18(v1, &unk_100849400, &unk_1006BFBB0);
  sub_10000BE18(v2, &unk_100849400, &unk_1006BFBB0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1006065E0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1006069CC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 216) = a5;
  *(v6 + 224) = a6;
  *(v6 + 200) = a3;
  *(v6 + 208) = a4;
  *(v6 + 520) = a2;
  *(v6 + 192) = a1;
  v7 = type metadata accessor for Date();
  *(v6 + 232) = v7;
  *(v6 + 240) = *(v7 - 8);
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  sub_100007224(&unk_100849400, &unk_1006BFBB0);
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  v8 = type metadata accessor for URLRequest();
  *(v6 + 328) = v8;
  *(v6 + 336) = *(v8 - 8);
  *(v6 + 344) = swift_task_alloc();
  v9 = type metadata accessor for URL();
  *(v6 + 352) = v9;
  *(v6 + 360) = *(v9 - 8);
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v6 + 424) = v10;
  *(v6 + 432) = *(v10 - 8);
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();

  return _swift_task_switch(sub_100606CC8, 0, 0);
}

uint64_t sub_100606CC8()
{
  v182 = v0;
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceRefreshCache.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v5 = *(v0 + 416);
    v6 = *(v0 + 352);
    v7 = *(v0 + 360);
    v8 = *(v0 + 192);
    defaultLogger()();
    (*(v7 + 16))(v5, v8, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 480);
    v14 = *(v0 + 424);
    v13 = *(v0 + 432);
    v15 = *(v0 + 416);
    v17 = *(v0 + 352);
    v16 = *(v0 + 360);
    if (v11)
    {
      v176 = *(v0 + 424);
      v18 = swift_slowAlloc();
      logb = v10;
      v19 = swift_slowAlloc();
      v181 = v19;
      *v18 = 136446210;
      sub_100607F5C();
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v172 = v12;
      v22 = v21;
      (*(v16 + 8))(v15, v17);
      v23 = sub_100141FE4(v20, v22, &v181);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v9, logb, "Refreshing cache for %{public}s due to user defaults setting", v18, 0xCu);
      sub_10000BB78(v19);

      (*(v13 + 8))(v172, v176);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
      (*(v13 + 8))(v12, v14);
    }

    v47 = swift_task_alloc();
    *(v0 + 488) = v47;
    *v47 = v0;
    v48 = sub_100609EE4;
    goto LABEL_10;
  }

  v24 = [v1 standardUserDefaults];
  v25._countAndFlagsBits = static DaemonInternalDefaultsKeys.neverUseCache.getter();
  v26 = NSUserDefaults.internalBool(forKey:)(v25);

  if (!v26)
  {
    v52 = *(v0 + 336);
    v51 = *(v0 + 344);
    v53 = *(v0 + 328);
    v54 = *(*(v0 + 360) + 16);
    v54(*(v0 + 400), *(v0 + 192), *(v0 + 352));
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    v55 = sub_1005FEBE8(v51);
    *(v0 + 496) = v55;
    (*(v52 + 8))(v51, v53);
    if (!v55)
    {
      v66 = *(v0 + 352);
      v67 = *(v0 + 192);
      if ((*(v0 + 520) & 1) == 0)
      {
        v109 = *(v0 + 368);
        defaultLogger()();
        v54(v109, v67, v66);
        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.debug.getter();
        v112 = os_log_type_enabled(v110, v111);
        v114 = *(v0 + 432);
        v113 = *(v0 + 440);
        v115 = *(v0 + 424);
        v117 = *(v0 + 360);
        v116 = *(v0 + 368);
        v118 = *(v0 + 352);
        if (v112)
        {
          v179 = *(v0 + 424);
          v119 = swift_slowAlloc();
          logc = v111;
          v120 = swift_slowAlloc();
          v181 = v120;
          *v119 = 136446210;
          sub_100607F5C();
          v121 = dispatch thunk of CustomStringConvertible.description.getter();
          v174 = v113;
          v123 = v122;
          (*(v117 + 8))(v116, v118);
          v124 = sub_100141FE4(v121, v123, &v181);

          *(v119 + 4) = v124;
          _os_log_impl(&_mh_execute_header, v110, logc, "Refreshing cache for %{public}s because no response exists in cache", v119, 0xCu);
          sub_10000BB78(v120);

          (*(v114 + 8))(v174, v179);
        }

        else
        {

          (*(v117 + 8))(v116, v118);
          (*(v114 + 8))(v113, v115);
        }

        v47 = swift_task_alloc();
        *(v0 + 512) = v47;
        *v47 = v0;
        v48 = sub_100609EE8;
        goto LABEL_10;
      }

      v68 = *(v0 + 376);
      defaultLogger()();
      v54(v68, v67, v66);
      v31 = Logger.logObject.getter();
      v69 = static os_log_type_t.debug.getter();
      v70 = os_log_type_enabled(v31, v69);
      v34 = *(v0 + 448);
      v36 = *(v0 + 424);
      v35 = *(v0 + 432);
      v37 = *(v0 + 376);
      v39 = *(v0 + 352);
      v38 = *(v0 + 360);
      if (v70)
      {
        v177 = *(v0 + 424);
        v40 = swift_slowAlloc();
        log = v69;
        v41 = swift_slowAlloc();
        v181 = v41;
        *v40 = 136446210;
        sub_100607F5C();
        v71 = dispatch thunk of CustomStringConvertible.description.getter();
        v173 = v34;
        v73 = v72;
        (*(v38 + 8))(v37, v39);
        v74 = sub_100141FE4(v71, v73, &v181);

        *(v40 + 4) = v74;
        v46 = "Not refreshing cache for %{public}s because nothing is currently in the cache";
        goto LABEL_7;
      }

LABEL_22:

      (*(v38 + 8))(v37, v39);
      (*(v35 + 8))(v34, v36);
      goto LABEL_23;
    }

    v56 = [v55 userInfo];
    v178 = v54;
    if (v56)
    {
      v57 = v56;
      v58 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *(v0 + 176) = 0x74416465726F7473;
      *(v0 + 184) = 0xE800000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v58 + 16))
      {
        v59 = sub_10003AECC(v0 + 56);
        if (v60)
        {
          sub_10001F2EC(*(v58 + 56) + 32 * v59, v0 + 96);
          sub_1000279C8(v0 + 56);

          if (*(v0 + 120))
          {
            v61 = *(v0 + 320);
            v62 = *(v0 + 232);
            v63 = *(v0 + 240);
            v64 = swift_dynamicCast();
            v65 = *(v63 + 56);
            v65(v61, v64 ^ 1u, 1, v62);
            goto LABEL_29;
          }

LABEL_28:
          v76 = *(v0 + 320);
          v77 = *(v0 + 232);
          v78 = *(v0 + 240);
          sub_10000BE18(v0 + 96, &unk_100845ED0, &qword_1006DA1D0);
          v65 = *(v78 + 56);
          v65(v76, 1, 1, v77);
LABEL_29:
          v79 = [v55 userInfo];
          if (v79)
          {
            v80 = v79;
            v81 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            *(v0 + 160) = 0x4173657269707865;
            *(v0 + 168) = 0xE900000000000074;
            AnyHashable.init<A>(_:)();
            if (*(v81 + 16))
            {
              v82 = sub_10003AECC(v0 + 16);
              if (v83)
              {
                sub_10001F2EC(*(v81 + 56) + 32 * v82, v0 + 128);
                sub_1000279C8(v0 + 16);

                if (*(v0 + 152))
                {
                  v84 = *(v0 + 312);
                  v85 = *(v0 + 232);
                  v86 = swift_dynamicCast() ^ 1;
                  v87 = v84;
                  goto LABEL_37;
                }

LABEL_36:
                v88 = *(v0 + 312);
                v85 = *(v0 + 232);
                sub_10000BE18(v0 + 128, &unk_100845ED0, &qword_1006DA1D0);
                v87 = v88;
                v86 = 1;
LABEL_37:
                v65(v87, v86, 1, v85);
                v89 = *(v0 + 304);
                v90 = *(v0 + 232);
                v91 = *(v0 + 240);
                sub_10000BBC4(*(v0 + 320), v89, &unk_100849400, &unk_1006BFBB0);
                v92 = *(v91 + 48);
                if (v92(v89, 1, v90) == 1)
                {
                  v93 = *(v0 + 304);
                }

                else
                {
                  v94 = *(v0 + 296);
                  v95 = *(v0 + 232);
                  v96 = *(v0 + 200);
                  v97 = *(*(v0 + 240) + 32);
                  v97(*(v0 + 272), *(v0 + 304), v95);
                  sub_10000BBC4(v96, v94, &unk_100849400, &unk_1006BFBB0);
                  v98 = v92(v94, 1, v95);
                  v99 = *(v0 + 296);
                  if (v98 != 1)
                  {
                    v97(*(v0 + 264), *(v0 + 296), *(v0 + 232));
                    if (static Date.> infix(_:_:)())
                    {
                      v125 = *(v0 + 392);
                      v126 = *(v0 + 352);
                      v127 = *(v0 + 192);
                      defaultLogger()();
                      v178(v125, v127, v126);
                      v128 = Logger.logObject.getter();
                      v167 = static os_log_type_t.debug.getter();
                      loga = v128;
                      v129 = os_log_type_enabled(v128, v167);
                      v130 = *(v0 + 464);
                      v131 = *(v0 + 432);
                      v175 = *(v0 + 424);
                      v132 = *(v0 + 392);
                      v133 = *(v0 + 352);
                      v134 = *(v0 + 360);
                      v135 = *(v0 + 272);
                      v180 = *(v0 + 264);
                      v136 = *(v0 + 232);
                      v137 = *(v0 + 240);
                      if (v129)
                      {
                        v166 = *(v0 + 272);
                        v138 = swift_slowAlloc();
                        v163 = swift_slowAlloc();
                        v181 = v163;
                        *v138 = 136446210;
                        sub_100607F5C();
                        v164 = v130;
                        v165 = v136;
                        v139 = dispatch thunk of CustomStringConvertible.description.getter();
                        v141 = v140;
                        (*(v134 + 8))(v132, v133);
                        v142 = sub_100141FE4(v139, v141, &v181);

                        *(v138 + 4) = v142;
                        v143 = "Not refreshing cache for %{public}s because cached response was stored recently";
LABEL_56:
                        _os_log_impl(&_mh_execute_header, loga, v167, v143, v138, 0xCu);
                        sub_10000BB78(v163);

                        (*(v131 + 8))(v164, v175);
                        v153 = *(v137 + 8);
                        v153(v180, v165);
                        v154 = v166;
                        v155 = v165;
LABEL_61:
                        v153(v154, v155);
                        v159 = *(v0 + 320);
                        sub_10000BE18(*(v0 + 312), &unk_100849400, &unk_1006BFBB0);
                        sub_10000BE18(v159, &unk_100849400, &unk_1006BFBB0);
                        goto LABEL_23;
                      }

LABEL_60:

                      (*(v134 + 8))(v132, v133);
                      (*(v131 + 8))(v130, v175);
                      v153 = *(v137 + 8);
                      v153(v180, v136);
                      v154 = v135;
                      v155 = v136;
                      goto LABEL_61;
                    }

                    v156 = *(v0 + 272);
                    v157 = *(v0 + 232);
                    v158 = *(*(v0 + 240) + 8);
                    v158(*(v0 + 264), v157);
                    v158(v156, v157);
LABEL_42:
                    v100 = *(v0 + 288);
                    v101 = *(v0 + 232);
                    sub_10000BBC4(*(v0 + 312), v100, &unk_100849400, &unk_1006BFBB0);
                    if (v92(v100, 1, v101) == 1)
                    {
                      v102 = *(v0 + 288);
LABEL_46:
                      sub_10000BE18(v102, &unk_100849400, &unk_1006BFBB0);
LABEL_47:
                      v47 = swift_task_alloc();
                      *(v0 + 504) = v47;
                      *v47 = v0;
                      v48 = sub_100607E60;
LABEL_10:
                      v47[1] = v48;
                      v49 = *(v0 + 224);

                      return sub_1005AEFEC(v49);
                    }

                    v103 = *(v0 + 280);
                    v104 = *(v0 + 232);
                    v105 = *(v0 + 208);
                    v106 = *(*(v0 + 240) + 32);
                    v106(*(v0 + 256), *(v0 + 288), v104);
                    sub_10000BBC4(v105, v103, &unk_100849400, &unk_1006BFBB0);
                    v107 = v92(v103, 1, v104);
                    v108 = *(v0 + 280);
                    if (v107 == 1)
                    {
                      (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));
                      v102 = v108;
                      goto LABEL_46;
                    }

                    v106(*(v0 + 248), *(v0 + 280), *(v0 + 232));
                    if ((static Date.> infix(_:_:)() & 1) == 0)
                    {
                      v160 = *(v0 + 256);
                      v161 = *(v0 + 232);
                      v162 = *(*(v0 + 240) + 8);
                      v162(*(v0 + 248), v161);
                      v162(v160, v161);
                      goto LABEL_47;
                    }

                    v144 = *(v0 + 384);
                    v145 = *(v0 + 352);
                    v146 = *(v0 + 192);
                    defaultLogger()();
                    v178(v144, v146, v145);
                    v147 = Logger.logObject.getter();
                    v167 = static os_log_type_t.debug.getter();
                    loga = v147;
                    v148 = os_log_type_enabled(v147, v167);
                    v130 = *(v0 + 456);
                    v131 = *(v0 + 432);
                    v175 = *(v0 + 424);
                    v132 = *(v0 + 384);
                    v133 = *(v0 + 352);
                    v134 = *(v0 + 360);
                    v135 = *(v0 + 256);
                    v180 = *(v0 + 248);
                    v136 = *(v0 + 232);
                    v137 = *(v0 + 240);
                    if (v148)
                    {
                      v166 = *(v0 + 256);
                      v138 = swift_slowAlloc();
                      v163 = swift_slowAlloc();
                      v181 = v163;
                      *v138 = 136446210;
                      sub_100607F5C();
                      v164 = v130;
                      v165 = v136;
                      v149 = dispatch thunk of CustomStringConvertible.description.getter();
                      v151 = v150;
                      (*(v134 + 8))(v132, v133);
                      v152 = sub_100141FE4(v149, v151, &v181);

                      *(v138 + 4) = v152;
                      v143 = "Not refreshing cache for %{public}s because current response won't expire soon";
                      goto LABEL_56;
                    }

                    goto LABEL_60;
                  }

                  (*(*(v0 + 240) + 8))(*(v0 + 272), *(v0 + 232));
                  v93 = v99;
                }

                sub_10000BE18(v93, &unk_100849400, &unk_1006BFBB0);
                goto LABEL_42;
              }
            }

            sub_1000279C8(v0 + 16);
          }

          *(v0 + 128) = 0u;
          *(v0 + 144) = 0u;
          goto LABEL_36;
        }
      }

      sub_1000279C8(v0 + 56);
    }

    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_28;
  }

  v27 = *(v0 + 408);
  v28 = *(v0 + 352);
  v29 = *(v0 + 360);
  v30 = *(v0 + 192);
  defaultLogger()();
  (*(v29 + 16))(v27, v30, v28);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 472);
  v36 = *(v0 + 424);
  v35 = *(v0 + 432);
  v37 = *(v0 + 408);
  v39 = *(v0 + 352);
  v38 = *(v0 + 360);
  if (!v33)
  {
    goto LABEL_22;
  }

  v177 = *(v0 + 424);
  v40 = swift_slowAlloc();
  log = v32;
  v41 = swift_slowAlloc();
  v181 = v41;
  *v40 = 136446210;
  sub_100607F5C();
  v42 = dispatch thunk of CustomStringConvertible.description.getter();
  v173 = v34;
  v44 = v43;
  (*(v38 + 8))(v37, v39);
  v45 = sub_100141FE4(v42, v44, &v181);

  *(v40 + 4) = v45;
  v46 = "Not refreshing cache for %{public}s because caching is disabled in user defaults";
LABEL_7:
  _os_log_impl(&_mh_execute_header, v31, log, v46, v40, 0xCu);
  sub_10000BB78(v41);

  (*(v35 + 8))(v173, v177);
LABEL_23:

  v75 = *(v0 + 8);

  return v75();
}

uint64_t sub_100607E60()
{

  return _swift_task_switch(sub_100609EF0, 0, 0);
}

unint64_t sub_100607F5C()
{
  result = qword_1008418B0;
  if (!qword_1008418B0)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008418B0);
  }

  return result;
}

uint64_t sub_100607FB4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 216) = a5;
  *(v6 + 224) = a6;
  *(v6 + 200) = a3;
  *(v6 + 208) = a4;
  *(v6 + 520) = a2;
  *(v6 + 192) = a1;
  v7 = type metadata accessor for Date();
  *(v6 + 232) = v7;
  *(v6 + 240) = *(v7 - 8);
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  sub_100007224(&unk_100849400, &unk_1006BFBB0);
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  v8 = type metadata accessor for URLRequest();
  *(v6 + 328) = v8;
  *(v6 + 336) = *(v8 - 8);
  *(v6 + 344) = swift_task_alloc();
  v9 = type metadata accessor for URL();
  *(v6 + 352) = v9;
  *(v6 + 360) = *(v9 - 8);
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v6 + 424) = v10;
  *(v6 + 432) = *(v10 - 8);
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();

  return _swift_task_switch(sub_1006082B0, 0, 0);
}

uint64_t sub_1006082B0()
{
  v182 = v0;
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceRefreshCache.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v5 = *(v0 + 416);
    v6 = *(v0 + 352);
    v7 = *(v0 + 360);
    v8 = *(v0 + 192);
    defaultLogger()();
    (*(v7 + 16))(v5, v8, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 480);
    v14 = *(v0 + 424);
    v13 = *(v0 + 432);
    v15 = *(v0 + 416);
    v17 = *(v0 + 352);
    v16 = *(v0 + 360);
    if (v11)
    {
      v176 = *(v0 + 424);
      v18 = swift_slowAlloc();
      logb = v10;
      v19 = swift_slowAlloc();
      v181 = v19;
      *v18 = 136446210;
      sub_100607F5C();
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v172 = v12;
      v22 = v21;
      (*(v16 + 8))(v15, v17);
      v23 = sub_100141FE4(v20, v22, &v181);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v9, logb, "Refreshing cache for %{public}s due to user defaults setting", v18, 0xCu);
      sub_10000BB78(v19);

      (*(v13 + 8))(v172, v176);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
      (*(v13 + 8))(v12, v14);
    }

    v47 = swift_task_alloc();
    *(v0 + 488) = v47;
    *v47 = v0;
    v48 = sub_100609448;
    goto LABEL_10;
  }

  v24 = [v1 standardUserDefaults];
  v25._countAndFlagsBits = static DaemonInternalDefaultsKeys.neverUseCache.getter();
  v26 = NSUserDefaults.internalBool(forKey:)(v25);

  if (!v26)
  {
    v52 = *(v0 + 336);
    v51 = *(v0 + 344);
    v53 = *(v0 + 328);
    v54 = *(*(v0 + 360) + 16);
    v54(*(v0 + 400), *(v0 + 192), *(v0 + 352));
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    v55 = sub_1005FEBE8(v51);
    *(v0 + 496) = v55;
    (*(v52 + 8))(v51, v53);
    if (!v55)
    {
      v66 = *(v0 + 352);
      v67 = *(v0 + 192);
      if ((*(v0 + 520) & 1) == 0)
      {
        v109 = *(v0 + 368);
        defaultLogger()();
        v54(v109, v67, v66);
        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.debug.getter();
        v112 = os_log_type_enabled(v110, v111);
        v114 = *(v0 + 432);
        v113 = *(v0 + 440);
        v115 = *(v0 + 424);
        v117 = *(v0 + 360);
        v116 = *(v0 + 368);
        v118 = *(v0 + 352);
        if (v112)
        {
          v179 = *(v0 + 424);
          v119 = swift_slowAlloc();
          logc = v111;
          v120 = swift_slowAlloc();
          v181 = v120;
          *v119 = 136446210;
          sub_100607F5C();
          v121 = dispatch thunk of CustomStringConvertible.description.getter();
          v174 = v113;
          v123 = v122;
          (*(v117 + 8))(v116, v118);
          v124 = sub_100141FE4(v121, v123, &v181);

          *(v119 + 4) = v124;
          _os_log_impl(&_mh_execute_header, v110, logc, "Refreshing cache for %{public}s because no response exists in cache", v119, 0xCu);
          sub_10000BB78(v120);

          (*(v114 + 8))(v174, v179);
        }

        else
        {

          (*(v117 + 8))(v116, v118);
          (*(v114 + 8))(v113, v115);
        }

        v47 = swift_task_alloc();
        *(v0 + 512) = v47;
        *v47 = v0;
        v48 = sub_100609AF0;
        goto LABEL_10;
      }

      v68 = *(v0 + 376);
      defaultLogger()();
      v54(v68, v67, v66);
      v31 = Logger.logObject.getter();
      v69 = static os_log_type_t.debug.getter();
      v70 = os_log_type_enabled(v31, v69);
      v34 = *(v0 + 448);
      v36 = *(v0 + 424);
      v35 = *(v0 + 432);
      v37 = *(v0 + 376);
      v39 = *(v0 + 352);
      v38 = *(v0 + 360);
      if (v70)
      {
        v177 = *(v0 + 424);
        v40 = swift_slowAlloc();
        log = v69;
        v41 = swift_slowAlloc();
        v181 = v41;
        *v40 = 136446210;
        sub_100607F5C();
        v71 = dispatch thunk of CustomStringConvertible.description.getter();
        v173 = v34;
        v73 = v72;
        (*(v38 + 8))(v37, v39);
        v74 = sub_100141FE4(v71, v73, &v181);

        *(v40 + 4) = v74;
        v46 = "Not refreshing cache for %{public}s because nothing is currently in the cache";
        goto LABEL_7;
      }

LABEL_22:

      (*(v38 + 8))(v37, v39);
      (*(v35 + 8))(v34, v36);
      goto LABEL_23;
    }

    v56 = [v55 userInfo];
    v178 = v54;
    if (v56)
    {
      v57 = v56;
      v58 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *(v0 + 176) = 0x74416465726F7473;
      *(v0 + 184) = 0xE800000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v58 + 16))
      {
        v59 = sub_10003AECC(v0 + 56);
        if (v60)
        {
          sub_10001F2EC(*(v58 + 56) + 32 * v59, v0 + 96);
          sub_1000279C8(v0 + 56);

          if (*(v0 + 120))
          {
            v61 = *(v0 + 320);
            v62 = *(v0 + 232);
            v63 = *(v0 + 240);
            v64 = swift_dynamicCast();
            v65 = *(v63 + 56);
            v65(v61, v64 ^ 1u, 1, v62);
            goto LABEL_29;
          }

LABEL_28:
          v76 = *(v0 + 320);
          v77 = *(v0 + 232);
          v78 = *(v0 + 240);
          sub_10000BE18(v0 + 96, &unk_100845ED0, &qword_1006DA1D0);
          v65 = *(v78 + 56);
          v65(v76, 1, 1, v77);
LABEL_29:
          v79 = [v55 userInfo];
          if (v79)
          {
            v80 = v79;
            v81 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            *(v0 + 160) = 0x4173657269707865;
            *(v0 + 168) = 0xE900000000000074;
            AnyHashable.init<A>(_:)();
            if (*(v81 + 16))
            {
              v82 = sub_10003AECC(v0 + 16);
              if (v83)
              {
                sub_10001F2EC(*(v81 + 56) + 32 * v82, v0 + 128);
                sub_1000279C8(v0 + 16);

                if (*(v0 + 152))
                {
                  v84 = *(v0 + 312);
                  v85 = *(v0 + 232);
                  v86 = swift_dynamicCast() ^ 1;
                  v87 = v84;
                  goto LABEL_37;
                }

LABEL_36:
                v88 = *(v0 + 312);
                v85 = *(v0 + 232);
                sub_10000BE18(v0 + 128, &unk_100845ED0, &qword_1006DA1D0);
                v87 = v88;
                v86 = 1;
LABEL_37:
                v65(v87, v86, 1, v85);
                v89 = *(v0 + 304);
                v90 = *(v0 + 232);
                v91 = *(v0 + 240);
                sub_10000BBC4(*(v0 + 320), v89, &unk_100849400, &unk_1006BFBB0);
                v92 = *(v91 + 48);
                if (v92(v89, 1, v90) == 1)
                {
                  v93 = *(v0 + 304);
                }

                else
                {
                  v94 = *(v0 + 296);
                  v95 = *(v0 + 232);
                  v96 = *(v0 + 200);
                  v97 = *(*(v0 + 240) + 32);
                  v97(*(v0 + 272), *(v0 + 304), v95);
                  sub_10000BBC4(v96, v94, &unk_100849400, &unk_1006BFBB0);
                  v98 = v92(v94, 1, v95);
                  v99 = *(v0 + 296);
                  if (v98 != 1)
                  {
                    v97(*(v0 + 264), *(v0 + 296), *(v0 + 232));
                    if (static Date.> infix(_:_:)())
                    {
                      v125 = *(v0 + 392);
                      v126 = *(v0 + 352);
                      v127 = *(v0 + 192);
                      defaultLogger()();
                      v178(v125, v127, v126);
                      v128 = Logger.logObject.getter();
                      v167 = static os_log_type_t.debug.getter();
                      loga = v128;
                      v129 = os_log_type_enabled(v128, v167);
                      v130 = *(v0 + 464);
                      v131 = *(v0 + 432);
                      v175 = *(v0 + 424);
                      v132 = *(v0 + 392);
                      v133 = *(v0 + 352);
                      v134 = *(v0 + 360);
                      v135 = *(v0 + 272);
                      v180 = *(v0 + 264);
                      v136 = *(v0 + 232);
                      v137 = *(v0 + 240);
                      if (v129)
                      {
                        v166 = *(v0 + 272);
                        v138 = swift_slowAlloc();
                        v163 = swift_slowAlloc();
                        v181 = v163;
                        *v138 = 136446210;
                        sub_100607F5C();
                        v164 = v130;
                        v165 = v136;
                        v139 = dispatch thunk of CustomStringConvertible.description.getter();
                        v141 = v140;
                        (*(v134 + 8))(v132, v133);
                        v142 = sub_100141FE4(v139, v141, &v181);

                        *(v138 + 4) = v142;
                        v143 = "Not refreshing cache for %{public}s because cached response was stored recently";
LABEL_56:
                        _os_log_impl(&_mh_execute_header, loga, v167, v143, v138, 0xCu);
                        sub_10000BB78(v163);

                        (*(v131 + 8))(v164, v175);
                        v153 = *(v137 + 8);
                        v153(v180, v165);
                        v154 = v166;
                        v155 = v165;
LABEL_61:
                        v153(v154, v155);
                        v159 = *(v0 + 320);
                        sub_10000BE18(*(v0 + 312), &unk_100849400, &unk_1006BFBB0);
                        sub_10000BE18(v159, &unk_100849400, &unk_1006BFBB0);
                        goto LABEL_23;
                      }

LABEL_60:

                      (*(v134 + 8))(v132, v133);
                      (*(v131 + 8))(v130, v175);
                      v153 = *(v137 + 8);
                      v153(v180, v136);
                      v154 = v135;
                      v155 = v136;
                      goto LABEL_61;
                    }

                    v156 = *(v0 + 272);
                    v157 = *(v0 + 232);
                    v158 = *(*(v0 + 240) + 8);
                    v158(*(v0 + 264), v157);
                    v158(v156, v157);
LABEL_42:
                    v100 = *(v0 + 288);
                    v101 = *(v0 + 232);
                    sub_10000BBC4(*(v0 + 312), v100, &unk_100849400, &unk_1006BFBB0);
                    if (v92(v100, 1, v101) == 1)
                    {
                      v102 = *(v0 + 288);
LABEL_46:
                      sub_10000BE18(v102, &unk_100849400, &unk_1006BFBB0);
LABEL_47:
                      v47 = swift_task_alloc();
                      *(v0 + 504) = v47;
                      *v47 = v0;
                      v48 = sub_100609834;
LABEL_10:
                      v47[1] = v48;
                      v49 = *(v0 + 224);

                      return sub_1005BCC9C(v49);
                    }

                    v103 = *(v0 + 280);
                    v104 = *(v0 + 232);
                    v105 = *(v0 + 208);
                    v106 = *(*(v0 + 240) + 32);
                    v106(*(v0 + 256), *(v0 + 288), v104);
                    sub_10000BBC4(v105, v103, &unk_100849400, &unk_1006BFBB0);
                    v107 = v92(v103, 1, v104);
                    v108 = *(v0 + 280);
                    if (v107 == 1)
                    {
                      (*(*(v0 + 240) + 8))(*(v0 + 256), *(v0 + 232));
                      v102 = v108;
                      goto LABEL_46;
                    }

                    v106(*(v0 + 248), *(v0 + 280), *(v0 + 232));
                    if ((static Date.> infix(_:_:)() & 1) == 0)
                    {
                      v160 = *(v0 + 256);
                      v161 = *(v0 + 232);
                      v162 = *(*(v0 + 240) + 8);
                      v162(*(v0 + 248), v161);
                      v162(v160, v161);
                      goto LABEL_47;
                    }

                    v144 = *(v0 + 384);
                    v145 = *(v0 + 352);
                    v146 = *(v0 + 192);
                    defaultLogger()();
                    v178(v144, v146, v145);
                    v147 = Logger.logObject.getter();
                    v167 = static os_log_type_t.debug.getter();
                    loga = v147;
                    v148 = os_log_type_enabled(v147, v167);
                    v130 = *(v0 + 456);
                    v131 = *(v0 + 432);
                    v175 = *(v0 + 424);
                    v132 = *(v0 + 384);
                    v133 = *(v0 + 352);
                    v134 = *(v0 + 360);
                    v135 = *(v0 + 256);
                    v180 = *(v0 + 248);
                    v136 = *(v0 + 232);
                    v137 = *(v0 + 240);
                    if (v148)
                    {
                      v166 = *(v0 + 256);
                      v138 = swift_slowAlloc();
                      v163 = swift_slowAlloc();
                      v181 = v163;
                      *v138 = 136446210;
                      sub_100607F5C();
                      v164 = v130;
                      v165 = v136;
                      v149 = dispatch thunk of CustomStringConvertible.description.getter();
                      v151 = v150;
                      (*(v134 + 8))(v132, v133);
                      v152 = sub_100141FE4(v149, v151, &v181);

                      *(v138 + 4) = v152;
                      v143 = "Not refreshing cache for %{public}s because current response won't expire soon";
                      goto LABEL_56;
                    }

                    goto LABEL_60;
                  }

                  (*(*(v0 + 240) + 8))(*(v0 + 272), *(v0 + 232));
                  v93 = v99;
                }

                sub_10000BE18(v93, &unk_100849400, &unk_1006BFBB0);
                goto LABEL_42;
              }
            }

            sub_1000279C8(v0 + 16);
          }

          *(v0 + 128) = 0u;
          *(v0 + 144) = 0u;
          goto LABEL_36;
        }
      }

      sub_1000279C8(v0 + 56);
    }

    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_28;
  }

  v27 = *(v0 + 408);
  v28 = *(v0 + 352);
  v29 = *(v0 + 360);
  v30 = *(v0 + 192);
  defaultLogger()();
  (*(v29 + 16))(v27, v30, v28);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 472);
  v36 = *(v0 + 424);
  v35 = *(v0 + 432);
  v37 = *(v0 + 408);
  v39 = *(v0 + 352);
  v38 = *(v0 + 360);
  if (!v33)
  {
    goto LABEL_22;
  }

  v177 = *(v0 + 424);
  v40 = swift_slowAlloc();
  log = v32;
  v41 = swift_slowAlloc();
  v181 = v41;
  *v40 = 136446210;
  sub_100607F5C();
  v42 = dispatch thunk of CustomStringConvertible.description.getter();
  v173 = v34;
  v44 = v43;
  (*(v38 + 8))(v37, v39);
  v45 = sub_100141FE4(v42, v44, &v181);

  *(v40 + 4) = v45;
  v46 = "Not refreshing cache for %{public}s because caching is disabled in user defaults";
LABEL_7:
  _os_log_impl(&_mh_execute_header, v31, log, v46, v40, 0xCu);
  sub_10000BB78(v41);

  (*(v35 + 8))(v173, v177);
LABEL_23:

  v75 = *(v0 + 8);

  return v75();
}

uint64_t sub_100609448()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100609834()
{

  return _swift_task_switch(sub_100609930, 0, 0);
}

uint64_t sub_100609930()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  sub_10000BE18(v1, &unk_100849400, &unk_1006BFBB0);
  sub_10000BE18(v2, &unk_100849400, &unk_1006BFBB0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100609AF0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100609EF4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 41) = a3;
  *(v4 + 48) = a1;
  v5 = type metadata accessor for URL();
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();
  v6 = type metadata accessor for URLRequest();
  *(v4 + 96) = v6;
  *(v4 + 104) = *(v6 - 8);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_10060A030, 0, 0);
}

uint64_t sub_10060A030()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 41);
  v6 = *(*(v0 + 64) + OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession);
  (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 56), *(v0 + 72));
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  sub_1005C3550(v2, 0);
  URLRequest.cachePolicy.setter();
  URLRequest.httpMethod.setter();
  v7 = *(v4 + 16);
  v7(v1, v2, v3);
  v8 = sub_1005BEE18(v1);
  v10 = v8;
  *(v0 + 136) = v8;
  if ((v5 & 1) == 0 && (v9 & 1) != 0 && v8)
  {
    v11 = *(v0 + 120);
    v12 = *(v0 + 96);
    v13 = *(v0 + 104);
    v14 = [v8 data];
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = [v10 response];
    (*(v13 + 8))(v11, v12);
    v19 = *(v0 + 48);
    (*(v13 + 32))(v19, *(v0 + 128), *(v0 + 96));
    v20 = type metadata accessor for DIPWebResponse(0);
    v21 = (v19 + v20[5]);
    *v21 = v15;
    v21[1] = v17;
    *(v19 + v20[6]) = v18;
    *(v19 + v20[7]) = 1;

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v24 = [objc_opt_self() standardUserDefaults];
    v25._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableIfModifiedSinceHeader.getter();
    v26 = NSUserDefaults.internalBool(forKey:)(v25);

    if (!v26 && v10)
    {
      v27 = qword_100832D20;
      v28 = v10;
      if (v27 != -1)
      {
        swift_once();
      }

      v29 = sub_1005FFF28(v28);
      if (v30)
      {
        v31._object = 0x8000000100723320;
        v31._countAndFlagsBits = 0xD000000000000011;
        URLRequest.addValue(_:forHTTPHeaderField:)(*&v29, v31);
      }
    }

    v32 = *(v0 + 112);
    v33 = *(v0 + 96);
    v34 = *(v0 + 104);
    v7(v32, *(v0 + 120), v33);
    type metadata accessor for DIPHTTPSession.RequestContainer(0);
    v35 = swift_allocObject();
    *(v0 + 144) = v35;
    swift_defaultActor_initialize();
    v36 = OBJC_IVAR____TtCFC8coreidvd14DIPHTTPSession14performRequestFzZTV10Foundation10URLRequest21acceptableStatusCodesGSaSi_11ignoreCacheSb11isAnonymousSb17overridingAltDSIDGSqSS__TVS1_4DataCSo13NSURLResponseSb_L_16RequestContainer_request;
    v37 = *(v34 + 32);
    *(v0 + 152) = v37;
    v37(v35 + v36, v32, v33);
    v38 = swift_task_alloc();
    *(v0 + 160) = v38;
    *(v38 + 16) = v35;
    *(v38 + 24) = v6;
    *(v38 + 32) = 0;
    *(v38 + 40) = _swiftEmptyArrayStorage;
    *(v38 + 48) = v10;
    v39 = swift_task_alloc();
    *(v0 + 168) = v39;
    v40 = sub_100007224(&qword_100848F80, &qword_1006E91B0);
    *v39 = v0;
    v39[1] = sub_10060A444;

    return DIPRetrier.retry<A>(operation:)(v0 + 16, &unk_1006E96C0, v38, v40);
  }
}

uint64_t sub_10060A444()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10060A698;
  }

  else
  {
    v2 = sub_10060A574;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10060A574()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  (*(v0 + 152))(v9, *(v0 + 128), *(v0 + 96));
  v10 = type metadata accessor for DIPWebResponse(0);
  v11 = (v9 + v10[5]);
  *v11 = v5;
  v11[1] = v6;
  *(v9 + v10[6]) = v7;
  *(v9 + v10[7]) = v8;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10060A698()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[12];

  v6 = *(v4 + 8);
  v6(v2, v5);
  v6(v3, v5);

  v7 = v0[1];

  return v7();
}

unint64_t sub_10060A770(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t *a5, int a6)
{
  v114 = a6;
  v117 = a5;
  v127 = a3;
  v128 = a4;
  v126 = a2;
  v115 = type metadata accessor for DIPError.Code();
  v120 = *(v115 - 8);
  v7 = __chkstk_darwin(v115);
  v108 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v123 = &v106 - v9;
  v122 = type metadata accessor for Logger();
  v121 = *(v122 - 8);
  v10 = __chkstk_darwin(v122);
  v106 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v119 = &v106 - v12;
  v13 = type metadata accessor for DIPError.PropertyKey();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v112 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v16 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v17 = *(*(v16 - 8) + 72);
  v18 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  v125 = 2 * v17;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1006BFF90;
  v20 = v19 + v18;
  v21 = (v19 + v18 + *(v16 + 48));
  v113 = v14;
  v22 = *(v14 + 104);
  (v22)(v20, enum case for DIPError.PropertyKey.conversationID(_:), v13);
  v21[3] = &type metadata for String;
  v21[4] = &protocol witness table for String;
  v116 = a1;
  *v21 = a1;
  v21[1] = v126;
  v23 = (v20 + v17 + *(v16 + 48));
  v22();
  v23[3] = &type metadata for String;
  v23[4] = &protocol witness table for String;
  v24 = v128;
  *v23 = v127;
  v23[1] = v24;
  v25 = (v20 + v125 + *(v16 + 48));
  v110 = v13;
  v111 = v22;
  v22();
  v26 = v117;
  v28 = v117[6];
  v27 = v117[7];
  v25[3] = &type metadata for String;
  v25[4] = &protocol witness table for String;
  v118 = v28;
  *v25 = v28;
  v25[1] = v27;
  v124 = v27;
  swift_bridgeObjectRetain_n();

  v125 = sub_10003C9C0(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v29 = v26[8];
  v30 = v26[9];
  v107 = v29;
  v109 = v30;
  if (v30)
  {
    v31 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      v32 = v112;
      v33 = v110;
      (v111)(v112, enum case for DIPError.PropertyKey.serverSubStatusCode(_:), v110);
      v132 = &type metadata for String;
      v133 = &protocol witness table for String;
      *&v131 = v29;
      *(&v131 + 1) = v30;
      sub_10001F358(&v131, v130);

      v34 = v125;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129 = v34;
      v36 = sub_10001F370(v130, v130[3]);
      __chkstk_darwin(v36);
      v38 = (&v106 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v39 + 16))(v38);
      sub_100658FF4(*v38, v38[1], v32, isUniquelyReferenced_nonNull_native, &v129);
      (*(v113 + 8))(v32, v33);
      sub_10000BB78(v130);
      v125 = v129;
    }
  }

  v40 = v120;
  v41 = v119;
  defaultLogger()();
  sub_1000B1478(v26, &v131);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  sub_1000ACC70(v26);
  v44 = os_log_type_enabled(v42, v43);
  v45 = v118;
  if (v44)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&v131 = v47;
    *v46 = 136446210;
    *(v46 + 4) = sub_100141FE4(v45, v124, &v131);
    _os_log_impl(&_mh_execute_header, v42, v43, "Server returned status %{public}s", v46, 0xCu);
    sub_10000BB78(v47);
  }

  v48 = *(v121 + 8);
  result = v48(v41, v122);
  v50 = v26[1];
  if (v50)
  {
    v51 = *v26;
    if (*v26 != v116 || v50 != v126)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {

        *&v131 = 0;
        *(&v131 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(48);

        *&v131 = 0xD00000000000001BLL;
        *(&v131 + 1) = 0x80000001007259E0;
        v68._countAndFlagsBits = v51;
        v68._object = v50;
        String.append(_:)(v68);
        v69._countAndFlagsBits = 0xD000000000000013;
        v69._object = 0x8000000100725930;
        String.append(_:)(v69);
        (*(v40 + 104))(v123, enum case for DIPError.Code.serverResponseInconsistent(_:), v115);
        type metadata accessor for DIPError();
        sub_100037214();
        v67 = swift_allocError();
        goto LABEL_90;
      }
    }
  }

  v53 = v26[2];
  v52 = v26[3];
  object = v124;
  if (v53 != v127 || v52 != v128)
  {
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((result & 1) == 0)
    {

      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      *&v131 = 0xD000000000000016;
      *(&v131 + 1) = 0x8000000100725910;
      v65._countAndFlagsBits = v53;
      v65._object = v52;
      String.append(_:)(v65);
      v66._countAndFlagsBits = 0xD000000000000013;
      v66._object = 0x8000000100725930;
      String.append(_:)(v66);
      (*(v40 + 104))(v123, enum case for DIPError.Code.serverResponseInconsistent(_:), v115);
      type metadata accessor for DIPError();
      sub_100037214();
      v67 = swift_allocError();
      goto LABEL_90;
    }
  }

  if ((v114 & 1) == 0)
  {
    goto LABEL_26;
  }

  v55 = [objc_opt_self() standardUserDefaults];
  v56._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceIDVServerStatus.getter();
  v57 = NSUserDefaults.internalString(forKey:)(v56);
  countAndFlagsBits = v57.value._countAndFlagsBits;

  if (!v57.value._object)
  {
    goto LABEL_26;
  }

  v59 = (v57.value._object >> 56) & 0xF;
  if ((v57.value._object & 0x2000000000000000) == 0)
  {
    v59 = v57.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v59)
  {

LABEL_26:
    countAndFlagsBits = v45;
    goto LABEL_27;
  }

  v60 = v106;
  defaultLogger()();

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *&v131 = v64;
    *v63 = 136446210;
    *(v63 + 4) = sub_100141FE4(v57.value._countAndFlagsBits, v57.value._object, &v131);
    _os_log_impl(&_mh_execute_header, v61, v62, "Forcing response header status code to %{public}s due to user setting", v63, 0xCu);
    sub_10000BB78(v64);
  }

  result = v48(v60, v122);
  object = v57.value._object;
LABEL_27:
  v70 = HIBYTE(object) & 0xF;
  v71 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((object & 0x2000000000000000) != 0)
  {
    v72 = HIBYTE(object) & 0xF;
  }

  else
  {
    v72 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v72)
  {
    goto LABEL_89;
  }

  if ((object & 0x1000000000000000) != 0)
  {

    v74 = sub_1000FFDD8(countAndFlagsBits, object, 10);
    v93 = v92;

    if (v93)
    {
      goto LABEL_89;
    }

LABEL_93:
    v94 = *(v40 + 104);
    v95 = v123;
    v96 = object;
    v97 = v115;
    v94(v123, enum case for DIPError.Code.topekaOK(_:), v115);
    v98 = DIPError.Code.rawValue.getter();
    v99 = *(v40 + 8);
    v99(v95, v97);
    if (v74 == v98)
    {
LABEL_97:

      if (!v109)
      {
        goto LABEL_102;
      }

      v105 = HIBYTE(v109) & 0xF;
      if ((v109 & 0x2000000000000000) == 0)
      {
        v105 = v107 & 0xFFFFFFFFFFFFLL;
      }

      if (!v105)
      {
LABEL_102:

        return 0;
      }

      sub_10060B7E4(v107, v109, v123);
      type metadata accessor for DIPError();
      sub_100037214();
      v67 = swift_allocError();
LABEL_90:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return v67;
    }

    v100 = v123;
    v101 = v115;
    v94(v123, enum case for DIPError.Code.topekaOKToContinueWithErrorMin(_:), v115);
    v102 = DIPError.Code.rawValue.getter();
    v99(v100, v101);
    v103 = v108;
    v94(v108, enum case for DIPError.Code.topekaOKToContinueWithErrorMax(_:), v101);
    v104 = DIPError.Code.rawValue.getter();
    result = (v99)(v103, v101);
    if (v104 >= v102)
    {
      object = v96;
      if (v74 < v102 || v104 < v74)
      {
        goto LABEL_89;
      }

      goto LABEL_97;
    }

    __break(1u);
    goto LABEL_105;
  }

  if ((object & 0x2000000000000000) == 0)
  {
    if ((countAndFlagsBits & 0x1000000000000000) != 0)
    {
      result = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v73 = *result;
    if (v73 == 43)
    {
      if (v71 < 1)
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v70 = v71 - 1;
      if (v71 == 1)
      {
        goto LABEL_87;
      }

      v74 = 0;
      if (result)
      {
        v81 = (result + 1);
        while (1)
        {
          v82 = *v81 - 48;
          if (v82 > 9)
          {
            goto LABEL_87;
          }

          v83 = 10 * v74;
          if ((v74 * 10) >> 64 != (10 * v74) >> 63)
          {
            goto LABEL_87;
          }

          v74 = v83 + v82;
          if (__OFADD__(v83, v82))
          {
            goto LABEL_87;
          }

          ++v81;
          if (!--v70)
          {
            goto LABEL_88;
          }
        }
      }
    }

    else if (v73 == 45)
    {
      if (v71 < 1)
      {
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      v70 = v71 - 1;
      if (v71 == 1)
      {
        goto LABEL_87;
      }

      v74 = 0;
      if (result)
      {
        v75 = (result + 1);
        while (1)
        {
          v76 = *v75 - 48;
          if (v76 > 9)
          {
            goto LABEL_87;
          }

          v77 = 10 * v74;
          if ((v74 * 10) >> 64 != (10 * v74) >> 63)
          {
            goto LABEL_87;
          }

          v74 = v77 - v76;
          if (__OFSUB__(v77, v76))
          {
            goto LABEL_87;
          }

          ++v75;
          if (!--v70)
          {
            goto LABEL_88;
          }
        }
      }
    }

    else
    {
      if (!v71)
      {
LABEL_87:
        v74 = 0;
        LOBYTE(v70) = 1;
LABEL_88:
        LOBYTE(v130[0]) = v70;
        if (v70)
        {
LABEL_89:
          sub_10060B7E4(countAndFlagsBits, object, v123);

          type metadata accessor for DIPError();
          sub_100037214();
          v67 = swift_allocError();
          goto LABEL_90;
        }

        goto LABEL_93;
      }

      v74 = 0;
      if (result)
      {
        do
        {
          v87 = *result - 48;
          if (v87 > 9)
          {
            goto LABEL_87;
          }

          v88 = 10 * v74;
          if ((v74 * 10) >> 64 != (10 * v74) >> 63)
          {
            goto LABEL_87;
          }

          v74 = v88 + v87;
          if (__OFADD__(v88, v87))
          {
            goto LABEL_87;
          }

          ++result;
        }

        while (--v71);
      }
    }

    LOBYTE(v70) = 0;
    goto LABEL_88;
  }

  *&v131 = countAndFlagsBits;
  *(&v131 + 1) = object & 0xFFFFFFFFFFFFFFLL;
  if (countAndFlagsBits != 43)
  {
    if (countAndFlagsBits == 45)
    {
      if (!v70)
      {
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      if (--v70)
      {
        v74 = 0;
        v78 = &v131 + 1;
        while (1)
        {
          v79 = *v78 - 48;
          if (v79 > 9)
          {
            break;
          }

          v80 = 10 * v74;
          if ((v74 * 10) >> 64 != (10 * v74) >> 63)
          {
            break;
          }

          v74 = v80 - v79;
          if (__OFSUB__(v80, v79))
          {
            break;
          }

          ++v78;
          if (!--v70)
          {
            goto LABEL_88;
          }
        }
      }
    }

    else if (v70)
    {
      v74 = 0;
      v89 = &v131;
      while (1)
      {
        v90 = *v89 - 48;
        if (v90 > 9)
        {
          break;
        }

        v91 = 10 * v74;
        if ((v74 * 10) >> 64 != (10 * v74) >> 63)
        {
          break;
        }

        v74 = v91 + v90;
        if (__OFADD__(v91, v90))
        {
          break;
        }

        v89 = (v89 + 1);
        if (!--v70)
        {
          goto LABEL_88;
        }
      }
    }

    goto LABEL_87;
  }

  if (v70)
  {
    if (--v70)
    {
      v74 = 0;
      v84 = &v131 + 1;
      while (1)
      {
        v85 = *v84 - 48;
        if (v85 > 9)
        {
          break;
        }

        v86 = 10 * v74;
        if ((v74 * 10) >> 64 != (10 * v74) >> 63)
        {
          break;
        }

        v74 = v86 + v85;
        if (__OFADD__(v86, v85))
        {
          break;
        }

        ++v84;
        if (!--v70)
        {
          goto LABEL_88;
        }
      }
    }

    goto LABEL_87;
  }

LABEL_108:
  __break(1u);
  return result;
}

unint64_t sub_10060B7E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v42[-1] - v7;
  v9 = type metadata accessor for DIPError.Code();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 104);
  result = v13(a3, enum case for DIPError.Code.internalError(_:), v9);
  v15 = HIBYTE(a2) & 0xF;
  v16 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    sub_1000FFDD8(a1, a2, 10);
    v40 = v39;

    if (v40)
    {
      return result;
    }

    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v42[0] = a1;
    v42[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (!v15)
      {
LABEL_75:
        __break(1u);
        return result;
      }

      if (--v15)
      {
        result = 0;
        v30 = v42 + 1;
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            break;
          }

          v32 = 10 * result;
          if ((result * 10) >> 64 != (10 * result) >> 63)
          {
            break;
          }

          result = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            break;
          }

          ++v30;
          if (!--v15)
          {
            goto LABEL_62;
          }
        }
      }
    }

    else if (a1 == 45)
    {
      if (!v15)
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      if (--v15)
      {
        result = 0;
        v23 = v42 + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * result;
          if ((result * 10) >> 64 != (10 * result) >> 63)
          {
            break;
          }

          result = v25 - v24;
          if (__OFSUB__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v15)
          {
            goto LABEL_62;
          }
        }
      }
    }

    else if (v15)
    {
      result = 0;
      v35 = v42;
      while (1)
      {
        v36 = *v35 - 48;
        if (v36 > 9)
        {
          break;
        }

        v37 = 10 * result;
        if ((result * 10) >> 64 != (10 * result) >> 63)
        {
          break;
        }

        result = v37 + v36;
        if (__OFADD__(v37, v36))
        {
          break;
        }

        ++v35;
        if (!--v15)
        {
          goto LABEL_62;
        }
      }
    }
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v15 = result;
    }

    v18 = *v15;
    if (v18 == 43)
    {
      if (v16 >= 1)
      {
        v26 = v16 - 1;
        if (v16 != 1)
        {
          result = 0;
          if (!v15)
          {
            goto LABEL_62;
          }

          v27 = (v15 + 1);
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * result;
            if ((result * 10) >> 64 != (10 * result) >> 63)
            {
              break;
            }

            result = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v26)
            {
LABEL_53:
              LOBYTE(v15) = 0;
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

      goto LABEL_74;
    }

    if (v18 == 45)
    {
      if (v16 >= 1)
      {
        v19 = v16 - 1;
        if (v16 != 1)
        {
          result = 0;
          if (!v15)
          {
            goto LABEL_62;
          }

          v20 = (v15 + 1);
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            v22 = 10 * result;
            if ((result * 10) >> 64 != (10 * result) >> 63)
            {
              break;
            }

            result = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              break;
            }

            ++v20;
            if (!--v19)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_73;
    }

    if (v16)
    {
      result = 0;
      if (!v15)
      {
        goto LABEL_62;
      }

      while (1)
      {
        v33 = *v15 - 48;
        if (v33 > 9)
        {
          break;
        }

        v34 = 10 * result;
        if ((result * 10) >> 64 != (10 * result) >> 63)
        {
          break;
        }

        result = v34 + v33;
        if (__OFADD__(v34, v33))
        {
          break;
        }

        ++v15;
        if (!--v16)
        {
          goto LABEL_53;
        }
      }
    }
  }

LABEL_61:
  result = 0;
  LOBYTE(v15) = 1;
LABEL_62:
  v43 = v15;
  if (v15)
  {
    return result;
  }

LABEL_63:
  DIPError.Code.init(rawValue:)();
  (*(v10 + 8))(a3, v9);
  v38 = *(v10 + 48);
  if (v38(v8, 1, v9) == 1)
  {
    v13(v12, enum case for DIPError.Code.serverUnavailable(_:), v9);
    if (v38(v8, 1, v9) != 1)
    {
      sub_1000451E8(v8);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  return (*(v10 + 32))(a3, v12, v9);
}

id sub_10060BCBC()
{
  v1 = *&v0[OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession];
  v2 = *(v1 + 16);

  [v2 invalidateAndCancel];
  [*(v1 + 24) invalidateAndCancel];

  v4.receiver = v0;
  v4.super_class = type metadata accessor for DIPWebService();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10060BE78(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100027B9C;

  return sub_100609EF4(a1, a2, a3);
}

uint64_t type metadata accessor for DIPWebResponse(uint64_t a1)
{
  result = qword_1008497F0;
  if (!qword_1008497F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10060BF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URLRequest();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10060C05C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URLRequest();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10060C114(uint64_t a1)
{
  result = type metadata accessor for URLRequest();
  if (v2 <= 0x3F)
  {
    result = sub_10060C1A8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10060C1A8()
{
  result = qword_100849800;
  if (!qword_100849800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100849800);
  }

  return result;
}

uint64_t sub_10060C218()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v0 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v0 + 54);
  sub_1000318FC(&v0[4], v6);
  os_unfair_lock_unlock(v0 + 54);
  v1 = v7;
  v2 = v8;
  sub_10001F640(v7, v8);
  v3 = sub_100031918(v6);
  if (v1)
  {
    v4 = v1(v3);
    sub_10001FE8C(v1, v2);
    return v4;
  }

  else
  {
    type metadata accessor for TermsAndConditionsFetcher();
    return swift_allocObject();
  }
}

uint64_t sub_10060C2EC(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = type metadata accessor for DIPError.Code();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  sub_100007224(&unk_10084A260, &qword_1006EA050);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for DIPSignpost.Config();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for DIPSignpost();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[21] = v7;
  v2[22] = *(v7 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return _swift_task_switch(sub_10060C560, 0, 0);
}

uint64_t sub_10060C560(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Will attempt to get Identity Proofing Static asset meta data", v4, 2u);
  }

  v5 = v1[24];
  v6 = v1[21];
  v7 = v1[22];
  v9 = v1[19];
  v8 = v1[20];
  v10 = v1[18];

  v11 = *(v7 + 8);
  v1[25] = v11;
  v11(v5, v6);
  UUID.init()();
  UUID.uuidString.getter();
  v1[26] = v12;
  (*(v9 + 8))(v8, v10);
  v13 = swift_task_alloc();
  v1[27] = v13;
  *v13 = v1;
  v13[1] = sub_10060C6EC;

  return sub_1005D7070(1);
}

uint64_t sub_10060C6EC(uint64_t a1)
{
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_10060C80C, 0, 0);
}

uint64_t sub_10060C80C()
{
  if (v0[28])
  {
    v1 = v0[13];
    v3 = v0[11];
    v2 = v0[12];
    static DaemonSignposts.fetchIdentityStaticTCTotal.getter();
    DIPSignpost.init(_:)();

    static DaemonSignposts.fetchIdentityStaticTCRequest.getter();
    (*(v1 + 56))(v3, 0, 1, v2);
    v4 = swift_task_alloc();
    v0[29] = v4;
    *v4 = v0;
    v4[1] = sub_10060CA90;
    v5 = v0[11];
    v6 = v0[6];
    v7 = v0[7];

    return sub_1005D5A90(0xD000000000000024, 0x80000001007089E0, v6, v7, v5);
  }

  else
  {
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.staticWebServiceUnavailable(_:), v0[8]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10060CA90(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v6 = v4[11];
  v5[30] = v2;

  sub_1005A4980(v6);

  if (v2)
  {
    v7 = sub_10060CD98;
  }

  else
  {
    v7 = sub_10060CBEC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10060CBEC(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "TC downloaded successfully", v4, 2u);
  }

  v13 = v1[4];
  v14 = v1[3];
  v5 = v1[25];
  v6 = v1[23];
  v7 = v1[21];
  v8 = v1[16];
  v9 = v1[17];
  v10 = v1[15];

  v5(v6, v7);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);

  (*(v8 + 8))(v9, v10);

  v11 = v1[1];

  return v11(v14, v13);
}

uint64_t sub_10060CD98()
{
  v1 = v0[16];
  v4 = v0[15];
  v5 = v0[17];
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.invalidStaticTC(_:), v0[8]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v1 + 8))(v5, v4);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10060CF68()
{
  v0 = type metadata accessor for DIPHTTPSession.Configuration(0);
  sub_100031898(v0, qword_1008498D8);
  v1 = sub_10003170C(v0, qword_1008498D8);
  v2 = v0[6];
  *&v1[v2] = 0x3FF0000000000000;
  v3 = enum case for DIPBackoffStrategy.exponential(_:);
  v4 = type metadata accessor for DIPBackoffStrategy();
  result = (*(*(v4 - 8) + 104))(&v1[v2], v3, v4);
  *v1 = 0x4024000000000000;
  *(v1 + 1) = 3;
  v1[v0[7]] = 0;
  v1[v0[8]] = 0;
  v1[v0[9]] = 1;
  v6 = &v1[v0[10]];
  *v6 = 0;
  *(v6 + 1) = 0;
  return result;
}

uint64_t sub_10060D040(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = sub_100007224(&qword_100834B60, &qword_1006C0310);
  v2[9] = swift_task_alloc();
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v3 = type metadata accessor for Milestone();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v5 = type metadata accessor for COSE_Sign1();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[22] = v6;
  v2[23] = *(v6 - 8);
  v2[24] = swift_task_alloc();
  v7 = type metadata accessor for URLRequest();
  v2[25] = v7;
  v2[26] = *(v7 - 8);
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_10060D2FC, 0, 0);
}

uint64_t sub_10060D2FC()
{
  if (qword_100832D20 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  (*(v0[23] + 16))(v0[24], v0[7] + OBJC_IVAR____TtC8coreidvd15VICALWebService_url, v0[22]);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v4 = sub_1005FEBE8(v1);
  v0[28] = v4;
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = [v4 data];
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    sub_10000B8B8(v6, v8);
    COSE_Sign1.init(fromHexData:)();
    v33 = v0[7];
    sub_10000B90C(v6, v8);
    v34 = *(v33 + OBJC_IVAR____TtC8coreidvd15VICALWebService_validator + 24);
    v35 = *(v33 + OBJC_IVAR____TtC8coreidvd15VICALWebService_validator + 32);
    sub_10000BA08((v33 + OBJC_IVAR____TtC8coreidvd15VICALWebService_validator), v34);
    v57 = (*(v35 + 24) + **(v35 + 24));
    v36 = swift_task_alloc();
    v0[29] = v36;
    v37 = type metadata accessor for VICALDocument();
    v38 = sub_100611C90(&qword_1008418A8, &type metadata accessor for VICALDocument, &protocol conformance descriptor for VICALDocument);
    v39 = sub_100611C90(&qword_100849930, &type metadata accessor for VICALDocument, &protocol conformance descriptor for VICALDocument);
    *v36 = v0;
    v36[1] = sub_10060DE90;
    v40 = v0[21];
    v41 = v0[6];

    return v57(v41, v40, v37, v38, v39, v34, v35);
  }

  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[15];
  v12 = v0[16];
  v13 = v0[13];
  v14 = v0[14];
  static VICALMilestone.missingDocument.getter();
  Milestone.log()();
  (*(v14 + 8))(v11, v13);
  (*(v10 + 104))(v9, enum case for DIPError.Code.vicalMissing(_:), v12);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100611C90(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v15 = v0[17];
  v16 = v0[11];
  v50 = v0[12];
  v52 = v0[16];
  v17 = v0[9];
  v54 = v0[8];
  swift_getErrorValue();
  v18 = v0[2];
  v19 = v0[3];
  v20 = *(v19 - 8);
  v21 = swift_task_alloc();
  v22 = v18;
  v23 = v17;
  (*(v20 + 16))(v21, v22, v19);
  swift_errorRetain();
  Error.dipErrorCode.getter();
  (*(v20 + 8))(v21, v19);
  v56 = *(v15 + 104);
  v56(v16, enum case for DIPError.Code.coseCannotParseResponse(_:), v52);
  (*(v15 + 56))(v16, 0, 1, v52);
  v24 = *(v54 + 48);
  sub_100044D38(v50, v17);
  sub_100044D38(v16, v17 + v24);
  v25 = *(v15 + 48);
  v26 = v25(v17, 1, v52);
  v27 = v0[16];
  if (v26 == 1)
  {
    v28 = v0[12];
    sub_10000BE18(v0[11], &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v28, &qword_10083B020, &unk_1006D8ED0);
    if (v25(v23 + v24, 1, v27) == 1)
    {
      sub_10000BE18(v0[9], &qword_10083B020, &unk_1006D8ED0);

LABEL_15:
      v56(v0[18], enum case for DIPError.Code.vicalCannotParseDocument(_:), v0[16]);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100611C90(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

      goto LABEL_16;
    }

    goto LABEL_10;
  }

  sub_100044D38(v0[9], v0[10]);
  if (v25(v17 + v24, 1, v27) == 1)
  {
    v29 = v0[16];
    v30 = v0[17];
    v31 = v0[12];
    v32 = v0[10];
    sub_10000BE18(v0[11], &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v31, &qword_10083B020, &unk_1006D8ED0);
    (*(v30 + 8))(v32, v29);
LABEL_10:
    sub_10000BE18(v0[9], &qword_100834B60, &qword_1006C0310);

    goto LABEL_16;
  }

  v43 = v0[17];
  v44 = v0[18];
  v45 = v0[16];
  v51 = v0[11];
  v53 = v0[12];
  v46 = v0[10];
  v55 = v0[9];
  (*(v43 + 32))(v44, v17 + v24, v45);
  sub_100611C90(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  v48 = *(v43 + 8);
  v48(v44, v45);
  sub_10000BE18(v51, &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v53, &qword_10083B020, &unk_1006D8ED0);
  v48(v46, v45);
  sub_10000BE18(v55, &qword_10083B020, &unk_1006D8ED0);

  if (v47)
  {
    goto LABEL_15;
  }

LABEL_16:
  v56(v0[18], enum case for DIPError.Code.vicalMissing(_:), v0[16]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100611C90(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v49 = v0[1];

  return v49();
}

uint64_t sub_10060DE90()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_10060E0A4;
  }

  else
  {
    v2 = sub_10060DFA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10060DFA4()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10060E0A4()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 136);
  v5 = *(v0 + 88);
  v31 = *(v0 + 96);
  v32 = *(v0 + 128);
  v6 = *(v0 + 72);
  v34 = *(v0 + 64);
  swift_getErrorValue();
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v8 - 8);
  v10 = swift_task_alloc();
  v11 = v7;
  v12 = v6;
  (*(v9 + 16))(v10, v11, v8);
  swift_errorRetain();
  Error.dipErrorCode.getter();
  (*(v9 + 8))(v10, v8);
  v36 = *(v4 + 104);
  v36(v5, enum case for DIPError.Code.coseCannotParseResponse(_:), v32);
  (*(v4 + 56))(v5, 0, 1, v32);
  v13 = *(v34 + 48);
  sub_100044D38(v31, v6);
  sub_100044D38(v5, v6 + v13);
  v14 = *(v4 + 48);
  v15 = v14(v6, 1, v32);
  v16 = *(v0 + 128);
  if (v15 != 1)
  {
    sub_100044D38(*(v0 + 72), *(v0 + 80));
    if (v14(v6 + v13, 1, v16) != 1)
    {
      v22 = *(v0 + 136);
      v23 = *(v0 + 144);
      v24 = *(v0 + 128);
      v25 = *(v0 + 88);
      v26 = *(v0 + 80);
      v33 = *(v0 + 96);
      v35 = *(v0 + 72);
      (*(v22 + 32))(v23, v12 + v13, v24);
      sub_100611C90(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v22 + 8);
      v28(v23, v24);
      sub_10000BE18(v25, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v33, &qword_10083B020, &unk_1006D8ED0);
      v28(v26, v24);
      sub_10000BE18(v35, &qword_10083B020, &unk_1006D8ED0);

      if ((v27 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v18 = *(v0 + 128);
    v19 = *(v0 + 136);
    v20 = *(v0 + 96);
    v21 = *(v0 + 80);
    sub_10000BE18(*(v0 + 88), &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v20, &qword_10083B020, &unk_1006D8ED0);
    (*(v19 + 8))(v21, v18);
LABEL_6:
    sub_10000BE18(*(v0 + 72), &qword_100834B60, &qword_1006C0310);

    goto LABEL_9;
  }

  v17 = *(v0 + 96);
  sub_10000BE18(*(v0 + 88), &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v17, &qword_10083B020, &unk_1006D8ED0);
  if (v14(v12 + v13, 1, v16) != 1)
  {
    goto LABEL_6;
  }

  sub_10000BE18(*(v0 + 72), &qword_10083B020, &unk_1006D8ED0);

LABEL_8:
  v36(*(v0 + 144), enum case for DIPError.Code.vicalCannotParseDocument(_:), *(v0 + 128));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100611C90(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

LABEL_9:
  v36(*(v0 + 144), enum case for DIPError.Code.vicalMissing(_:), *(v0 + 128));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100611C90(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10060E758()
{
  v1[14] = v0;
  v1[15] = sub_100007224(&qword_100834B60, &qword_1006C0310);
  v1[16] = swift_task_alloc();
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v2 = type metadata accessor for VICALDocument();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v3 = type metadata accessor for COSE_Sign1();
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v1[26] = v4;
  v1[27] = *(v4 - 8);
  v1[28] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[29] = v5;
  v1[30] = *(v5 - 8);
  v1[31] = swift_task_alloc();
  v6 = type metadata accessor for URLRequest();
  v1[32] = v6;
  v1[33] = *(v6 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v1[37] = swift_task_alloc();
  v7 = type metadata accessor for DIPSignpost();
  v1[38] = v7;
  v1[39] = *(v7 - 8);
  v1[40] = swift_task_alloc();
  v8 = type metadata accessor for Milestone();
  v1[41] = v8;
  v1[42] = *(v8 - 8);
  v1[43] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v1[44] = v9;
  v1[45] = *(v9 - 8);
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();

  return _swift_task_switch(sub_10060EB84, 0, 0);
}

uint64_t sub_10060EB84(uint64_t a1)
{
  v77 = v1;
  v2 = *(v1 + 112);
  defaultLogger()();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 384);
  v8 = *(v1 + 352);
  v9 = *(v1 + 360);
  if (v6)
  {
    v73 = *(v1 + 384);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v76[0] = v11;
    *v10 = 136315138;
    sub_100611C90(&qword_1008418B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = sub_100141FE4(v12, v13, v76);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "VICALWebService loadVICALDocument at URL %s", v10, 0xCu);
    sub_10000BB78(v11);

    v15 = *(v9 + 8);
    v15(v73, v8);
  }

  else
  {

    v15 = *(v9 + 8);
    v15(v7, v8);
  }

  *(v1 + 392) = v15;
  v17 = *(v1 + 336);
  v16 = *(v1 + 344);
  v18 = *(v1 + 328);
  v19 = *(v1 + 288);
  v71 = *(v1 + 264);
  v72 = *(v1 + 280);
  v74 = *(v1 + 256);
  v21 = *(v1 + 240);
  v20 = *(v1 + 248);
  v70 = *(v1 + 232);
  v22 = *(v1 + 112);
  static VICALMilestone.loadDocument.getter();
  Milestone.log()();
  v23 = *(v17 + 8);
  *(v1 + 400) = v23;
  *(v1 + 408) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23(v16, v18);
  static DaemonSignposts.VICAL.loadDocument.getter();
  DIPSignpost.init(_:)();
  v24 = OBJC_IVAR____TtC8coreidvd15VICALWebService_url;
  *(v1 + 416) = OBJC_IVAR____TtC8coreidvd15VICALWebService_url;
  (*(v21 + 16))(v20, v22 + v24, v70);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.cachePolicy.setter();
  URLRequest.httpMethod.setter();
  v25 = *(v22 + OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession);
  v26 = *(v71 + 16);
  v26(v72, v19, v74);
  v27 = sub_1005BEE18(v72);
  v28 = v27;
  *(v1 + 424) = v27;
  if ((v29 & 1) != 0 && v27)
  {
    v30 = *(v1 + 280);
    v31 = *(v1 + 256);
    v32 = *(v1 + 264);
    v33 = [v27 data];
    v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = [v28 response];
    v38 = *(v32 + 8);
    v38(v30, v31);
    v39 = sub_100611CD8(v34, v36);
    v41 = v40;
    static VICALMilestone.cacheReturnedDocument.getter();
    *(v1 + 496) = v36;
    *(v1 + 504) = v34;
    *(v1 + 41) = 1;
    *(v1 + 480) = v39;
    *(v1 + 488) = v37;
    *(v1 + 464) = v38;
    *(v1 + 472) = v41;
    v42 = *(v1 + 400);
    v43 = *(v1 + 344);
    v44 = *(v1 + 328);
    Milestone.log()();
    v42(v43, v44);
    sub_10000B8B8(v39, v41);
    COSE_Sign1.init(fromHexData:)();
    v60 = (*(v1 + 112) + OBJC_IVAR____TtC8coreidvd15VICALWebService_validator);
    v61 = v60[3];
    v62 = v60[4];
    sub_10000BA08(v60, v61);
    v75 = (*(v62 + 24) + **(v62 + 24));
    v63 = swift_task_alloc();
    *(v1 + 512) = v63;
    v64 = sub_100611C90(&qword_1008418A8, &type metadata accessor for VICALDocument, &protocol conformance descriptor for VICALDocument);
    v65 = sub_100611C90(&qword_100849930, &type metadata accessor for VICALDocument, &protocol conformance descriptor for VICALDocument);
    *v63 = v1;
    v63[1] = sub_100610984;
    v66 = *(v1 + 200);
    v67 = *(v1 + 176);
    v68 = *(v1 + 160);

    return v75(v67, v66, v68, v64, v65, v61, v62);
  }

  else
  {
    v45 = [objc_opt_self() standardUserDefaults];
    v46._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableIfModifiedSinceHeader.getter();
    v47 = NSUserDefaults.internalBool(forKey:)(v46);

    if (!v47 && v28)
    {
      v48 = qword_100832D20;
      v49 = v28;
      if (v48 != -1)
      {
        swift_once();
      }

      v50 = sub_1005FFF28(v49);
      if (v51)
      {
        v52._countAndFlagsBits = 0xD000000000000011;
        v52._object = 0x8000000100723320;
        URLRequest.addValue(_:forHTTPHeaderField:)(*&v50, v52);
      }
    }

    v53 = *(v1 + 272);
    v54 = *(v1 + 256);
    v55 = *(v1 + 264);
    v26(v53, *(v1 + 280), v54);
    type metadata accessor for DIPHTTPSession.RequestContainer(0);
    v56 = swift_allocObject();
    *(v1 + 432) = v56;
    swift_defaultActor_initialize();
    (*(v55 + 32))(v56 + OBJC_IVAR____TtCFC8coreidvd14DIPHTTPSession14performRequestFzZTV10Foundation10URLRequest21acceptableStatusCodesGSaSi_11ignoreCacheSb11isAnonymousSb17overridingAltDSIDGSqSS__TVS1_4DataCSo13NSURLResponseSb_L_16RequestContainer_request, v53, v54);
    v57 = swift_task_alloc();
    *(v1 + 440) = v57;
    *(v57 + 16) = v56;
    *(v57 + 24) = v25;
    *(v57 + 32) = 0;
    *(v57 + 40) = _swiftEmptyArrayStorage;
    *(v57 + 48) = v28;
    v58 = swift_task_alloc();
    *(v1 + 448) = v58;
    v59 = sub_100007224(&qword_100848F80, &qword_1006E91B0);
    *v58 = v1;
    v58[1] = sub_10060FA18;

    return DIPRetrier.retry<A>(operation:)(v1 + 16, &unk_1006E96C0, v57, v59);
  }
}

uint64_t sub_10060FA18()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_10060FB4C;
  }

  else
  {
    v2 = sub_10060FF8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10060FB4C()
{
  v1 = v0[53];
  v2 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v15 = v0[28];
  v5 = v0[27];
  v16 = v0[26];

  v17 = *(v3 + 8);
  v17(v2, v4);
  _StringGuts.grow(_:)(31);

  sub_100611C90(&qword_1008418B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v14 = *(v5 + 104);
  v14(v15, enum case for DIPError.Code.internalError(_:), v16);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100611C90(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(fromCache:)(0);
  v8 = v0[39];
  v7 = v0[40];
  v9 = v0[38];
  v10 = v0[28];
  v11 = v0[26];
  v17(v0[36], v0[32]);
  (*(v8 + 8))(v7, v9);
  v14(v10, enum case for DIPError.Code.vicalCouldNotFetch(_:), v11);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_10060FF8C()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);

  v5 = *(v4 + 8);
  v5(v2, v3);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = sub_100611CD8(v7, v6);
  v12 = v11;
  if (v9 == 1)
  {
    v13 = *(v0 + 456);
    static VICALMilestone.cacheReturnedDocument.getter();
  }

  else
  {
    static VICALMilestone.cdnReturnedDocument.getter();
    v13 = *(v0 + 456);
  }

  *(v0 + 496) = v6;
  *(v0 + 504) = v7;
  *(v0 + 41) = v9;
  *(v0 + 480) = v10;
  *(v0 + 488) = v8;
  *(v0 + 464) = v5;
  *(v0 + 472) = v12;
  v14 = *(v0 + 400);
  v15 = *(v0 + 344);
  v16 = *(v0 + 328);
  Milestone.log()();
  v14(v15, v16);
  sub_10000B8B8(v10, v12);
  COSE_Sign1.init(fromHexData:)();
  if (v13)
  {
    v67 = enum case for DIPError.Code.vicalCannotParseDocument(_:);
    (*(*(v0 + 216) + 104))(*(v0 + 224));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100611C90(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v10, v12);

    if (*(v0 + 41))
    {
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v17 = qword_100882498;
      isa = URLRequest._bridgeToObjectiveC()().super.isa;
      [v17 removeCachedResponseForRequest:{isa, 0xD000000000000019, 0x8000000100725BD0, 185}];
    }

    v19 = *(v0 + 208);
    v20 = *(v0 + 216);
    v22 = *(v0 + 144);
    v21 = *(v0 + 152);
    v24 = *(v0 + 120);
    v23 = *(v0 + 128);
    swift_getErrorValue();
    Error.dipErrorCode.getter();
    v68 = *(v20 + 104);
    v68(v22, enum case for DIPError.Code.coseCannotParseResponse(_:), v19);
    (*(v20 + 56))(v22, 0, 1, v19);
    v25 = *(v24 + 48);
    sub_100044D38(v21, v23);
    sub_100044D38(v22, v23 + v25);
    v26 = *(v20 + 48);
    v27 = v26(v23, 1, v19);
    v28 = *(v0 + 208);
    if (v27 == 1)
    {
      v29 = *(v0 + 152);
      sub_10000BE18(*(v0 + 144), &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v29, &qword_10083B020, &unk_1006D8ED0);
      if (v26(v23 + v25, 1, v28) == 1)
      {
        sub_10000BE18(*(v0 + 128), &qword_10083B020, &unk_1006D8ED0);
LABEL_20:
        v65 = *(v0 + 496);
        v66 = *(v0 + 504);
        v56 = *(v0 + 488);
        v57 = *(v0 + 41);
        v68(*(v0 + 224), v67, *(v0 + 208));
        swift_errorRetain();
        sub_1000402AC(_swiftEmptyArrayStorage);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        DIPSignpost.end(fromCache:)(v57);

        sub_10000B90C(v66, v65);
        goto LABEL_21;
      }
    }

    else
    {
      sub_100044D38(*(v0 + 128), *(v0 + 136));
      if (v26(v23 + v25, 1, v28) != 1)
      {
        v48 = *(v0 + 216);
        v49 = *(v0 + 224);
        v50 = *(v0 + 208);
        v52 = *(v0 + 144);
        v51 = *(v0 + 152);
        v53 = *(v0 + 136);
        v64 = *(v0 + 128);
        (*(v48 + 32))(v49, v23 + v25, v50);
        sub_100611C90(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
        v54 = dispatch thunk of static Equatable.== infix(_:_:)();
        v55 = *(v48 + 8);
        v55(v49, v50);
        sub_10000BE18(v52, &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v51, &qword_10083B020, &unk_1006D8ED0);
        v55(v53, v50);
        sub_10000BE18(v64, &qword_10083B020, &unk_1006D8ED0);
        if (v54)
        {
          goto LABEL_20;
        }

LABEL_18:
        v44 = *(v0 + 496);
        v45 = *(v0 + 504);
        v46 = *(v0 + 488);
        v47 = *(v0 + 41);
        swift_willThrow();
        DIPSignpost.end(fromCache:)(v47);

        sub_10000B90C(v45, v44);
LABEL_21:
        v59 = *(v0 + 312);
        v58 = *(v0 + 320);
        v60 = *(v0 + 304);
        v61 = *(v0 + 224);
        v62 = *(v0 + 208);
        (*(v0 + 464))(*(v0 + 288), *(v0 + 256));
        (*(v59 + 8))(v58, v60);
        v68(v61, enum case for DIPError.Code.vicalCouldNotFetch(_:), v62);
        swift_errorRetain();
        sub_1000402AC(_swiftEmptyArrayStorage);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        v63 = *(v0 + 8);

        return v63();
      }

      v40 = *(v0 + 208);
      v41 = *(v0 + 216);
      v42 = *(v0 + 152);
      v43 = *(v0 + 136);
      sub_10000BE18(*(v0 + 144), &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v42, &qword_10083B020, &unk_1006D8ED0);
      (*(v41 + 8))(v43, v40);
    }

    sub_10000BE18(*(v0 + 128), &qword_100834B60, &qword_1006C0310);
    goto LABEL_18;
  }

  v30 = (*(v0 + 112) + OBJC_IVAR____TtC8coreidvd15VICALWebService_validator);
  v31 = v30[3];
  v32 = v30[4];
  sub_10000BA08(v30, v31);
  v69 = (*(v32 + 24) + **(v32 + 24));
  v33 = swift_task_alloc();
  *(v0 + 512) = v33;
  v34 = sub_100611C90(&qword_1008418A8, &type metadata accessor for VICALDocument, &protocol conformance descriptor for VICALDocument);
  v35 = sub_100611C90(&qword_100849930, &type metadata accessor for VICALDocument, &protocol conformance descriptor for VICALDocument);
  *v33 = v0;
  v33[1] = sub_100610984;
  v36 = *(v0 + 200);
  v37 = *(v0 + 176);
  v38 = *(v0 + 160);

  return v69(v37, v36, v38, v34, v35, v31, v32);
}

uint64_t sub_100610984()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = sub_100611068;
  }

  else
  {
    (*(v2[21] + 8))(v2[22], v2[20]);
    v3 = sub_100610AB0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100610AB0(uint64_t a1)
{
  if (*(v1 + 41))
  {
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v1 + 472);
    v5 = *(v1 + 480);
    v7 = *(v1 + 392);
    v8 = *(v1 + 368);
    v9 = *(v1 + 352);
    if (v4)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "VICALWebService found VICAL response in cache", v10, 2u);
    }

    sub_10000B90C(v5, v6);
    v7(v8, v9);
  }

  else
  {
    v11 = *(v1 + 400);
    v12 = *(v1 + 344);
    v13 = *(v1 + 328);
    static VICALMilestone.storeDocument.getter();
    Milestone.log()();
    v11(v12, v13);
    v14 = [objc_opt_self() standardUserDefaults];
    v15._countAndFlagsBits = static DaemonInternalDefaultsKeys.VICAL.overrideCacheControl.getter();
    v16 = NSUserDefaults.internalString(forKey:)(v15);

    if (v16.value._object && (v17 = sub_10059B698(0xD000000000000019, 0x80000001006F8AF0, v16.value._countAndFlagsBits, v16.value._object), , v17))
    {
      defaultLogger()();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "VICALWebService cache control override found, overriding and caching.", v20, 2u);
      }

      v21 = *(v1 + 392);
      v22 = *(v1 + 376);
      v23 = *(v1 + 352);

      v21(v22, v23);
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v24 = qword_100882498;
      v25 = objc_allocWithZone(NSCachedURLResponse);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v27 = [v25 initWithResponse:v17 data:isa];

      v28 = sub_100600EC4(v27, 1, 1);
      if (v28)
      {
        v29 = v28;
        v31 = *(v1 + 472);
        v30 = *(v1 + 480);
        v32 = URLRequest._bridgeToObjectiveC()().super.isa;
        v33 = type metadata accessor for DIPURLCache();
        *(v1 + 88) = v24;
        *(v1 + 96) = v33;
        objc_msgSendSuper2((v1 + 88), "storeCachedResponse:forRequest:", v29, v32);

        sub_10000B90C(v30, v31);
        goto LABEL_20;
      }

      sub_10000B90C(*(v1 + 480), *(v1 + 472));
    }

    else
    {
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v34 = *(v1 + 488);
      v35 = qword_100882498;
      v36 = objc_allocWithZone(NSCachedURLResponse);
      v37 = Data._bridgeToObjectiveC()().super.isa;
      v17 = [v36 initWithResponse:v34 data:v37];

      v38 = sub_100600EC4(v17, 1, 1);
      if (v38)
      {
        v39 = v38;
        v41 = *(v1 + 472);
        v40 = *(v1 + 480);
        v42 = URLRequest._bridgeToObjectiveC()().super.isa;
        v43 = type metadata accessor for DIPURLCache();
        *(v1 + 72) = v35;
        *(v1 + 80) = v43;
        objc_msgSendSuper2((v1 + 72), "storeCachedResponse:forRequest:", v39, v42);

        sub_10000B90C(v40, v41);
        goto LABEL_20;
      }

      sub_10000B90C(*(v1 + 480), *(v1 + 472));
    }
  }

LABEL_20:
  v45 = *(v1 + 496);
  v44 = *(v1 + 504);
  v46 = *(v1 + 488);
  v47 = *(v1 + 41);
  v55 = *(v1 + 464);
  v49 = *(v1 + 312);
  v48 = *(v1 + 320);
  v54 = *(v1 + 304);
  v50 = *(v1 + 288);
  v51 = *(v1 + 256);
  (*(*(v1 + 192) + 8))();
  DIPSignpost.end(fromCache:)(v47);

  sub_10000B90C(v44, v45);
  v55(v50, v51);
  (*(v49 + 8))(v48, v54);

  v52 = *(v1 + 8);

  return v52(v47);
}

uint64_t sub_100611068()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  sub_10000B90C(*(v0 + 480), *(v0 + 472));
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 41))
  {
    if (qword_100832D20 != -1)
    {
      swift_once();
    }

    v4 = qword_100882498;
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    [v4 removeCachedResponseForRequest:isa];
  }

  v6 = *(v0 + 208);
  v7 = *(v0 + 216);
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v11 = *(v0 + 120);
  v10 = *(v0 + 128);
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  v45 = *(v7 + 104);
  v45(v9, enum case for DIPError.Code.coseCannotParseResponse(_:), v6);
  (*(v7 + 56))(v9, 0, 1, v6);
  v12 = *(v11 + 48);
  sub_100044D38(v8, v10);
  sub_100044D38(v9, v10 + v12);
  v13 = *(v7 + 48);
  v14 = v13(v10, 1, v6);
  v15 = *(v0 + 208);
  if (v14 != 1)
  {
    sub_100044D38(*(v0 + 128), *(v0 + 136));
    if (v13(v10 + v12, 1, v15) != 1)
    {
      v26 = *(v0 + 216);
      v25 = *(v0 + 224);
      v27 = *(v0 + 208);
      v29 = *(v0 + 144);
      v28 = *(v0 + 152);
      v30 = *(v0 + 136);
      v44 = *(v0 + 128);
      (*(v26 + 32))(v25, v10 + v12, v27);
      sub_100611C90(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v32 = *(v26 + 8);
      v32(v25, v27);
      sub_10000BE18(v29, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v28, &qword_10083B020, &unk_1006D8ED0);
      v32(v30, v27);
      sub_10000BE18(v44, &qword_10083B020, &unk_1006D8ED0);
      if (v31)
      {
        goto LABEL_13;
      }

LABEL_11:
      v22 = *(v0 + 496);
      v21 = *(v0 + 504);
      v23 = *(v0 + 488);
      v24 = *(v0 + 41);
      swift_willThrow();
      DIPSignpost.end(fromCache:)(v24);

      sub_10000B90C(v21, v22);
      goto LABEL_14;
    }

    v17 = *(v0 + 208);
    v18 = *(v0 + 216);
    v19 = *(v0 + 152);
    v20 = *(v0 + 136);
    sub_10000BE18(*(v0 + 144), &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v19, &qword_10083B020, &unk_1006D8ED0);
    (*(v18 + 8))(v20, v17);
LABEL_10:
    sub_10000BE18(*(v0 + 128), &qword_100834B60, &qword_1006C0310);
    goto LABEL_11;
  }

  v16 = *(v0 + 152);
  sub_10000BE18(*(v0 + 144), &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v16, &qword_10083B020, &unk_1006D8ED0);
  if (v13(v10 + v12, 1, v15) != 1)
  {
    goto LABEL_10;
  }

  sub_10000BE18(*(v0 + 128), &qword_10083B020, &unk_1006D8ED0);
LABEL_13:
  v42 = *(v0 + 496);
  v43 = *(v0 + 504);
  v33 = *(v0 + 488);
  v34 = *(v0 + 41);
  v45(*(v0 + 224), enum case for DIPError.Code.vicalCannotParseDocument(_:), *(v0 + 208));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100611C90(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(fromCache:)(v34);

  sub_10000B90C(v43, v42);
LABEL_14:
  v36 = *(v0 + 312);
  v35 = *(v0 + 320);
  v37 = *(v0 + 304);
  v38 = *(v0 + 224);
  v39 = *(v0 + 208);
  (*(v0 + 464))(*(v0 + 288), *(v0 + 256));
  (*(v36 + 8))(v35, v37);
  v45(v38, enum case for DIPError.Code.vicalCouldNotFetch(_:), v39);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100611C90(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v40 = *(v0 + 8);

  return v40();
}