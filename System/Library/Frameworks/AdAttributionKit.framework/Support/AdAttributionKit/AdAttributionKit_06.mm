uint64_t sub_10008D74C(char a1)
{
  v4 = *v2;
  *(*v2 + 1312) = v1;

  if (v1)
  {
    v5 = sub_10008FA18;
  }

  else
  {
    *(v4 + 1437) = a1 & 1;
    v5 = sub_10008D878;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10008D878()
{
  v99 = v0;
  if (*(v0 + 1437))
  {
    v1 = *(v0 + 1288);
    v2 = *(v0 + 1280);
    v3 = *(v0 + 1272);
    v93 = *(v0 + 1264);
    v4 = *(v0 + 1256);
    v5 = *(v0 + 1248);
    v6 = *(v0 + 1216);
    v7 = *(v0 + 888);
    v8 = *(v0 + 896);
    sub_10000DA7C((v0 + 864), v7);
    v95 = (*(v8 + 16))(v7, v8);
    Date.init(timeIntervalSinceNow:)();
    v9 = (v6 + *(v1 + 24));
    v11 = *v9;
    v10 = v9[1];
    v12 = v9[2];
    (*(v4 + 16))(v3, v2, v5);
    v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v14 = swift_allocObject();
    *(v0 + 1320) = v14;
    (*(v4 + 32))(v14 + v13, v3, v5);
    *(v14 + ((v93 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v95;
    *(v0 + 1048) = &type metadata for TokenDatabaseStore;
    *(v0 + 1056) = sub_1000997C8();
    *(v0 + 1024) = v11;
    *(v0 + 1032) = v10;
    *(v0 + 1040) = v12;

    v15 = v12;
    v16 = swift_task_alloc();
    *(v0 + 1328) = v16;
    v16[2] = v15;
    v16[3] = v0 + 1024;
    v16[4] = sub_10009A294;
    v16[5] = v14;
    v17 = swift_task_alloc();
    *(v0 + 1336) = v17;
    *v17 = v0;
    v17[1] = sub_10008E4D0;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 1208, 0, 0, 0xD000000000000015, 0x80000001001CC040, sub_10009981C, v16, &type metadata for Int);
  }

  else
  {
    sub_10000DB58((v0 + 864));
    v18 = [*sub_10000DA7C((v0 + 824) *(v0 + 848))];
    if (v18)
    {
      v19 = v18;
      *(v0 + 928) = sub_10006DF54();
      *(v0 + 936) = &off_10021F840;
      *(v0 + 904) = v19;
      sub_10000DA64((v0 + 904), v0 + 864);
      sub_10000CE28(v0 + 864, v0 + 1144);
      sub_10000CE28(v0 + 864, v0 + 1104);
      sub_10000CE28(v0 + 864, v0 + 1064);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v98[0] = swift_slowAlloc();
        *v22 = 136315650;
        sub_10000DA7C((v0 + 1144), *(v0 + 1168));
        v23 = sub_1000FF2FC();
        if (v24)
        {
          v25 = v23;
        }

        else
        {
          v25 = 1701736302;
        }

        if (v24)
        {
          v26 = v24;
        }

        else
        {
          v26 = 0xE400000000000000;
        }

        sub_10000DB58((v0 + 1144));
        v27 = sub_10017AD04(v25, v26, v98);

        *(v22 + 4) = v27;
        *(v22 + 12) = 2048;
        sub_10000DA7C((v0 + 1104), *(v0 + 1128));
        v28 = sub_1000FF2AC();
        sub_10000DB58((v0 + 1104));
        *(v22 + 14) = v28;
        *(v22 + 22) = 2080;
        sub_10000DA7C((v0 + 1064), *(v0 + 1088));
        v29 = sub_1000FF364();
        if (v30)
        {
          v31 = v29;
        }

        else
        {
          v31 = 1701736302;
        }

        if (v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = 0xE400000000000000;
        }

        sub_10000DB58((v0 + 1064));
        v33 = sub_10017AD04(v31, v32, v98);

        *(v22 + 24) = v33;
        _os_log_impl(&_mh_execute_header, v20, v21, "Got app with bundle id: %s, item id: %llu, distributor id: %s", v22, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10000DB58((v0 + 1104));

        sub_10000DB58((v0 + 1144));
        sub_10000DB58((v0 + 1064));
      }

      v38 = *(v0 + 888);
      v39 = *(v0 + 896);
      sub_10000DA7C((v0 + 864), v38);
      v40 = (*(v39 + 16))(v38, v39);
      v41 = swift_task_alloc();
      *(v0 + 1304) = v41;
      *v41 = v0;
      v41[1] = sub_10008D74C;

      return sub_100091A48(v40, 1);
    }

    else if (*(v0 + 760))
    {
      sub_10000CE28(v0 + 736, v0 + 984);
      sub_10000DA64((v0 + 984), v0 + 944);
      sub_10000DA64((v0 + 944), v0 + 784);
      sub_10000DAF8(v0 + 736, &qword_10023BCD8, &qword_1001BA6D8);
      sub_10000DB58((v0 + 824));
      v34 = *(v0 + 808);
      v35 = *(v0 + 816);
      sub_10000DA7C((v0 + 784), v34);
      v36 = (*(v35 + 16))(v34, v35);
      v37 = swift_task_alloc();
      *(v0 + 1360) = v37;
      *v37 = v0;
      v37[1] = sub_10008F718;

      return sub_100092994(v36, 1, 1);
    }

    else
    {
      sub_10005C97C();
      v42 = swift_allocError();
      *v43 = xmmword_1001BA600;
      *(v43 + 16) = 2;
      swift_willThrow();
      *(v0 + 1368) = v42;
      sub_10000DAF8(v0 + 736, &qword_10023BCD8, &qword_1001BA6D8);
      sub_10000DB58((v0 + 824));
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
        _os_log_impl(&_mh_execute_header, v44, v45, "Scheduled re-engagement token fetch has failed with error: %@", v46, 0xCu);
        sub_10000DAF8(v47, &qword_100239F10, &qword_1001B4FD0);
      }

      v92 = (v0 + 1409);
      v94 = (v0 + 1425);
      v49 = *(v0 + 1272);
      v87 = (v0 + 1430);
      v88 = (v0 + 1401);
      v89 = (v0 + 1414);
      v90 = (v0 + 1393);
      v50 = *(v0 + 1256);
      v91 = (v0 + 1385);
      v51 = *(v0 + 1248);
      v52 = *(v0 + 1240);
      v53 = *(v0 + 1232);
      v54 = *(v0 + 1224);
      v96 = *(v0 + 1216);
      v97 = *(v0 + 1288);

      swift_errorRetain();
      v55 = sub_1000C7C10(v42);
      v85 = v56;
      v86 = v55;
      v83 = v58;
      v84 = v57;
      static Date.now.getter();
      (*(v53 + 104))(v52, enum case for Calendar.Component.hour(_:), v54);
      v59 = sub_100025808(v49, v52);
      v61 = v60;
      (*(v53 + 8))(v52, v54);
      (*(v50 + 8))(v49, v51);
      if (v61)
      {
        v62 = 0;
      }

      else
      {
        v62 = v59;
      }

      v63 = [objc_opt_self() buildVersion];
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;

      *(v0 + 1408) = 1;
      *(v0 + 1400) = 1;
      *(v0 + 1424) = 1;
      *(v0 + 1384) = 1;
      *(v0 + 1392) = 1;
      *(v0 + 464) = 1287;
      *(v0 + 466) = *v87;
      *(v0 + 470) = *(v0 + 1434);
      *(v0 + 472) = v86;
      *(v0 + 480) = v85;
      *(v0 + 488) = v84;
      *(v0 + 496) = v83;
      *(v0 + 504) = 0u;
      *(v0 + 520) = v62;
      *(v0 + 528) = v64;
      *(v0 + 536) = v66;
      *(v0 + 544) = 0;
      *(v0 + 549) = 2;
      *(v0 + 545) = 33686018;
      *(v0 + 552) = 0;
      v67 = *(v0 + 1408);
      *(v0 + 560) = v67;
      *(v0 + 561) = *v88;
      *(v0 + 564) = *(v0 + 1404);
      *(v0 + 568) = 0;
      v68 = *(v0 + 1400);
      *(v0 + 576) = v68;
      *(v0 + 577) = 1;
      *(v0 + 578) = *v89;
      *(v0 + 582) = *(v0 + 1418);
      *(v0 + 584) = 0;
      v69 = *(v0 + 1424);
      *(v0 + 592) = v69;
      *(v0 + 596) = *(v0 + 1396);
      *(v0 + 593) = *v90;
      *(v0 + 600) = 0;
      v70 = *(v0 + 1384);
      *(v0 + 608) = v70;
      *(v0 + 609) = 769;
      *(v0 + 615) = *(v0 + 1413);
      *(v0 + 611) = *v92;
      *(v0 + 616) = 0;
      v71 = *(v0 + 1392);
      *(v0 + 624) = v71;
      LODWORD(v63) = *v91;
      *(v0 + 628) = *(v0 + 1388);
      *(v0 + 625) = v63;
      *(v0 + 632) = 0u;
      *(v0 + 648) = 514;
      *(v0 + 650) = 2;
      v72 = *v94;
      *(v0 + 655) = *(v0 + 1429);
      *(v0 + 651) = v72;
      *(v0 + 656) = 0u;
      *(v0 + 672) = 0u;
      *(v0 + 16) = 1287;
      v73 = *v87;
      *(v0 + 22) = *(v0 + 1434);
      *(v0 + 18) = v73;
      *(v0 + 24) = v86;
      *(v0 + 32) = v85;
      *(v0 + 40) = v84;
      *(v0 + 48) = v83;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v62;
      *(v0 + 80) = v64;
      *(v0 + 88) = v66;
      *(v0 + 96) = 0;
      *(v0 + 101) = 2;
      *(v0 + 97) = 33686018;
      *(v0 + 104) = 0;
      *(v0 + 112) = v67;
      v74 = *v88;
      *(v0 + 116) = *(v0 + 1404);
      *(v0 + 113) = v74;
      *(v0 + 120) = 0;
      *(v0 + 128) = v68;
      *(v0 + 129) = 1;
      v75 = *v89;
      *(v0 + 134) = *(v0 + 1418);
      *(v0 + 130) = v75;
      *(v0 + 136) = 0;
      *(v0 + 144) = v69;
      v76 = *v90;
      *(v0 + 148) = *(v0 + 1396);
      *(v0 + 145) = v76;
      *(v0 + 152) = 0;
      *(v0 + 160) = v70;
      *(v0 + 161) = 769;
      v77 = *v92;
      *(v0 + 167) = *(v0 + 1413);
      *(v0 + 163) = v77;
      *(v0 + 168) = 0;
      *(v0 + 176) = v71;
      v78 = *v91;
      *(v0 + 180) = *(v0 + 1388);
      *(v0 + 177) = v78;
      *(v0 + 184) = 0;
      *(v0 + 192) = 0;
      *(v0 + 200) = 514;
      *(v0 + 202) = 2;
      v79 = *v94;
      *(v0 + 207) = *(v0 + 1429);
      *(v0 + 203) = v79;
      *(v0 + 208) = 0u;
      *(v0 + 224) = 0u;
      sub_100010568(v0 + 464, v0 + 240);
      sub_10003AE8C(v0 + 16);
      sub_10000DA7C((v96 + *(v97 + 68)), *(v96 + *(v97 + 68) + 24));
      v80 = type metadata accessor for SnoutManager(0);
      v81 = swift_task_alloc();
      *(v0 + 1376) = v81;
      *v81 = v0;
      v81[1] = sub_10008F894;

      return (sub_10016E27C)(v0 + 464, 0, 0, 2, v80, &off_100223858);
    }
  }
}

uint64_t sub_10008E4D0()
{
  v2 = *v1;
  *(*v1 + 1344) = v0;

  if (v0)
  {
    v3 = sub_10008F0E0;
  }

  else
  {

    v2[169] = v2[151];
    sub_10000DB58(v2 + 128);
    v3 = sub_10008E608;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10008E608()
{
  v82 = v0;
  v1 = *(v0 + 1352);
  (*(*(v0 + 1256) + 8))(*(v0 + 1280), *(v0 + 1248));
  if (!v1)
  {
    sub_10000DAF8(v0 + 736, &qword_10023BCD8, &qword_1001BA6D8);
    sub_10000CE28(v0 + 864, v0 + 736);
    *(v0 + 776) = 0;
    sub_10000DB58((v0 + 864));
    goto LABEL_21;
  }

  v2 = *(v0 + 1352);
  if (*(v0 + 760))
  {
    if (v2 >= *(v0 + 776))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v2 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_4:
    sub_10000DAF8(v0 + 736, &qword_10023BCD8, &qword_1001BA6D8);
    sub_10000CE28(v0 + 864, v0 + 736);
    *(v0 + 776) = v2;
  }

LABEL_5:
  sub_10000DB58((v0 + 864));
  v3 = [*sub_10000DA7C((v0 + 824) *(v0 + 848))];
  if (v3)
  {
    v4 = v3;
    *(v0 + 928) = sub_10006DF54();
    *(v0 + 936) = &off_10021F840;
    *(v0 + 904) = v4;
    sub_10000DA64((v0 + 904), v0 + 864);
    sub_10000CE28(v0 + 864, v0 + 1144);
    sub_10000CE28(v0 + 864, v0 + 1104);
    sub_10000CE28(v0 + 864, v0 + 1064);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v81[0] = swift_slowAlloc();
      *v7 = 136315650;
      sub_10000DA7C((v0 + 1144), *(v0 + 1168));
      v8 = sub_1000FF2FC();
      if (v9)
      {
        v10 = v8;
      }

      else
      {
        v10 = 1701736302;
      }

      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xE400000000000000;
      }

      sub_10000DB58((v0 + 1144));
      v12 = sub_10017AD04(v10, v11, v81);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2048;
      sub_10000DA7C((v0 + 1104), *(v0 + 1128));
      v13 = sub_1000FF2AC();
      sub_10000DB58((v0 + 1104));
      *(v7 + 14) = v13;
      *(v7 + 22) = 2080;
      sub_10000DA7C((v0 + 1064), *(v0 + 1088));
      v14 = sub_1000FF364();
      if (v15)
      {
        v16 = v14;
      }

      else
      {
        v16 = 1701736302;
      }

      if (v15)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0xE400000000000000;
      }

      sub_10000DB58((v0 + 1064));
      v18 = sub_10017AD04(v16, v17, v81);

      *(v7 + 24) = v18;
      _os_log_impl(&_mh_execute_header, v5, v6, "Got app with bundle id: %s, item id: %llu, distributor id: %s", v7, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10000DB58((v0 + 1104));

      sub_10000DB58((v0 + 1144));
      sub_10000DB58((v0 + 1064));
    }

    v64 = *(v0 + 888);
    v65 = *(v0 + 896);
    sub_10000DA7C((v0 + 864), v64);
    v66 = (*(v65 + 16))(v64, v65);
    v67 = swift_task_alloc();
    *(v0 + 1304) = v67;
    *v67 = v0;
    v67[1] = sub_10008D74C;

    return sub_100091A48(v66, 1);
  }

LABEL_21:
  if (*(v0 + 760))
  {
    sub_10000CE28(v0 + 736, v0 + 984);
    sub_10000DA64((v0 + 984), v0 + 944);
    sub_10000DA64((v0 + 944), v0 + 784);
    sub_10000DAF8(v0 + 736, &qword_10023BCD8, &qword_1001BA6D8);
    sub_10000DB58((v0 + 824));
    v19 = *(v0 + 808);
    v20 = *(v0 + 816);
    sub_10000DA7C((v0 + 784), v19);
    v21 = (*(v20 + 16))(v19, v20);
    v22 = swift_task_alloc();
    *(v0 + 1360) = v22;
    *v22 = v0;
    v22[1] = sub_10008F718;

    return sub_100092994(v21, 1, 1);
  }

  else
  {
    sub_10005C97C();
    v24 = swift_allocError();
    *v25 = xmmword_1001BA600;
    *(v25 + 16) = 2;
    swift_willThrow();
    *(v0 + 1368) = v24;
    sub_10000DAF8(v0 + 736, &qword_10023BCD8, &qword_1001BA6D8);
    sub_10000DB58((v0 + 824));
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "Scheduled re-engagement token fetch has failed with error: %@", v28, 0xCu);
      sub_10000DAF8(v29, &qword_100239F10, &qword_1001B4FD0);
    }

    v77 = (v0 + 1409);
    v78 = (v0 + 1425);
    v31 = *(v0 + 1272);
    v72 = (v0 + 1430);
    v73 = (v0 + 1401);
    v74 = (v0 + 1414);
    v75 = (v0 + 1393);
    v32 = *(v0 + 1256);
    v76 = (v0 + 1385);
    v33 = *(v0 + 1248);
    v34 = *(v0 + 1240);
    v35 = *(v0 + 1232);
    v36 = *(v0 + 1224);
    v79 = *(v0 + 1216);
    v80 = *(v0 + 1288);

    swift_errorRetain();
    v37 = sub_1000C7C10(v24);
    v70 = v38;
    v71 = v37;
    v68 = v40;
    v69 = v39;
    static Date.now.getter();
    (*(v35 + 104))(v34, enum case for Calendar.Component.hour(_:), v36);
    v41 = sub_100025808(v31, v34);
    v43 = v42;
    (*(v35 + 8))(v34, v36);
    (*(v32 + 8))(v31, v33);
    if (v43)
    {
      v44 = 0;
    }

    else
    {
      v44 = v41;
    }

    v45 = [objc_opt_self() buildVersion];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    *(v0 + 1408) = 1;
    *(v0 + 1400) = 1;
    *(v0 + 1424) = 1;
    *(v0 + 1384) = 1;
    *(v0 + 1392) = 1;
    *(v0 + 464) = 1287;
    *(v0 + 466) = *v72;
    *(v0 + 470) = *(v0 + 1434);
    *(v0 + 472) = v71;
    *(v0 + 480) = v70;
    *(v0 + 488) = v69;
    *(v0 + 496) = v68;
    *(v0 + 504) = 0u;
    *(v0 + 520) = v44;
    *(v0 + 528) = v46;
    *(v0 + 536) = v48;
    *(v0 + 544) = 0;
    *(v0 + 549) = 2;
    *(v0 + 545) = 33686018;
    *(v0 + 552) = 0;
    v49 = *(v0 + 1408);
    *(v0 + 560) = v49;
    *(v0 + 561) = *v73;
    *(v0 + 564) = *(v0 + 1404);
    *(v0 + 568) = 0;
    v50 = *(v0 + 1400);
    *(v0 + 576) = v50;
    *(v0 + 577) = 1;
    *(v0 + 578) = *v74;
    *(v0 + 582) = *(v0 + 1418);
    *(v0 + 584) = 0;
    v51 = *(v0 + 1424);
    *(v0 + 592) = v51;
    *(v0 + 596) = *(v0 + 1396);
    *(v0 + 593) = *v75;
    *(v0 + 600) = 0;
    v52 = *(v0 + 1384);
    *(v0 + 608) = v52;
    *(v0 + 609) = 769;
    *(v0 + 615) = *(v0 + 1413);
    *(v0 + 611) = *v77;
    *(v0 + 616) = 0;
    v53 = *(v0 + 1392);
    *(v0 + 624) = v53;
    LODWORD(v45) = *v76;
    *(v0 + 628) = *(v0 + 1388);
    *(v0 + 625) = v45;
    *(v0 + 632) = 0u;
    *(v0 + 648) = 514;
    *(v0 + 650) = 2;
    v54 = *v78;
    *(v0 + 655) = *(v0 + 1429);
    *(v0 + 651) = v54;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    *(v0 + 16) = 1287;
    v55 = *v72;
    *(v0 + 22) = *(v0 + 1434);
    *(v0 + 18) = v55;
    *(v0 + 24) = v71;
    *(v0 + 32) = v70;
    *(v0 + 40) = v69;
    *(v0 + 48) = v68;
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = v44;
    *(v0 + 80) = v46;
    *(v0 + 88) = v48;
    *(v0 + 96) = 0;
    *(v0 + 101) = 2;
    *(v0 + 97) = 33686018;
    *(v0 + 104) = 0;
    *(v0 + 112) = v49;
    v56 = *v73;
    *(v0 + 116) = *(v0 + 1404);
    *(v0 + 113) = v56;
    *(v0 + 120) = 0;
    *(v0 + 128) = v50;
    *(v0 + 129) = 1;
    v57 = *v74;
    *(v0 + 134) = *(v0 + 1418);
    *(v0 + 130) = v57;
    *(v0 + 136) = 0;
    *(v0 + 144) = v51;
    v58 = *v75;
    *(v0 + 148) = *(v0 + 1396);
    *(v0 + 145) = v58;
    *(v0 + 152) = 0;
    *(v0 + 160) = v52;
    *(v0 + 161) = 769;
    v59 = *v77;
    *(v0 + 167) = *(v0 + 1413);
    *(v0 + 163) = v59;
    *(v0 + 168) = 0;
    *(v0 + 176) = v53;
    v60 = *v76;
    *(v0 + 180) = *(v0 + 1388);
    *(v0 + 177) = v60;
    *(v0 + 184) = 0;
    *(v0 + 192) = 0;
    *(v0 + 200) = 514;
    *(v0 + 202) = 2;
    v61 = *v78;
    *(v0 + 207) = *(v0 + 1429);
    *(v0 + 203) = v61;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    sub_100010568(v0 + 464, v0 + 240);
    sub_10003AE8C(v0 + 16);
    sub_10000DA7C((v79 + *(v80 + 68)), *(v79 + *(v80 + 68) + 24));
    v62 = type metadata accessor for SnoutManager(0);
    v63 = swift_task_alloc();
    *(v0 + 1376) = v63;
    *v63 = v0;
    v63[1] = sub_10008F894;

    return (sub_10016E27C)(v0 + 464, 0, 0, 2, v62, &off_100223858);
  }
}

uint64_t sub_10008F0E0()
{
  v1 = *(v0 + 1280);
  v2 = *(v0 + 1256);
  v3 = *(v0 + 1248);

  sub_10000DB58((v0 + 1024));
  (*(v2 + 8))(v1, v3);
  sub_10000DB58((v0 + 864));
  v4 = *(v0 + 1344);
  *(v0 + 1368) = v4;
  sub_10000DAF8(v0 + 736, &qword_10023BCD8, &qword_1001BA6D8);
  sub_10000DB58((v0 + 824));
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
    _os_log_impl(&_mh_execute_header, v5, v6, "Scheduled re-engagement token fetch has failed with error: %@", v7, 0xCu);
    sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
  }

  v53 = (v0 + 1409);
  v54 = (v0 + 1425);
  v48 = (v0 + 1430);
  v50 = (v0 + 1414);
  v56 = *(v0 + 1288);
  v10 = *(v0 + 1272);
  v49 = (v0 + 1401);
  v11 = *(v0 + 1256);
  v51 = (v0 + 1393);
  v52 = (v0 + 1385);
  v12 = *(v0 + 1248);
  v13 = *(v0 + 1240);
  v14 = *(v0 + 1232);
  v15 = *(v0 + 1224);
  v55 = *(v0 + 1216);

  swift_errorRetain();
  v16 = sub_1000C7C10(v4);
  v46 = v17;
  v47 = v16;
  v44 = v19;
  v45 = v18;
  static Date.now.getter();
  (*(v14 + 104))(v13, enum case for Calendar.Component.hour(_:), v15);
  v20 = sub_100025808(v10, v13);
  v22 = v21;
  (*(v14 + 8))(v13, v15);
  (*(v11 + 8))(v10, v12);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v20;
  }

  v24 = [objc_opt_self() buildVersion];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  *(v0 + 1408) = 1;
  *(v0 + 1400) = 1;
  *(v0 + 1424) = 1;
  *(v0 + 1384) = 1;
  *(v0 + 1392) = 1;
  *(v0 + 464) = 1287;
  *(v0 + 466) = *v48;
  *(v0 + 470) = *(v0 + 1434);
  *(v0 + 472) = v47;
  *(v0 + 480) = v46;
  *(v0 + 488) = v45;
  *(v0 + 496) = v44;
  *(v0 + 504) = 0u;
  *(v0 + 520) = v23;
  *(v0 + 528) = v25;
  *(v0 + 536) = v27;
  *(v0 + 544) = 0;
  *(v0 + 549) = 2;
  *(v0 + 545) = 33686018;
  *(v0 + 552) = 0;
  v28 = *(v0 + 1408);
  *(v0 + 560) = v28;
  *(v0 + 561) = *v49;
  *(v0 + 564) = *(v0 + 1404);
  *(v0 + 568) = 0;
  v29 = *(v0 + 1400);
  *(v0 + 576) = v29;
  *(v0 + 577) = 1;
  *(v0 + 578) = *v50;
  *(v0 + 582) = *(v0 + 1418);
  *(v0 + 584) = 0;
  v30 = *(v0 + 1424);
  *(v0 + 592) = v30;
  *(v0 + 596) = *(v0 + 1396);
  *(v0 + 593) = *v51;
  *(v0 + 600) = 0;
  v31 = *(v0 + 1384);
  *(v0 + 608) = v31;
  *(v0 + 609) = 769;
  *(v0 + 615) = *(v0 + 1413);
  *(v0 + 611) = *v53;
  *(v0 + 616) = 0;
  v32 = *(v0 + 1392);
  *(v0 + 624) = v32;
  LODWORD(v24) = *v52;
  *(v0 + 628) = *(v0 + 1388);
  *(v0 + 625) = v24;
  *(v0 + 632) = 0u;
  *(v0 + 648) = 514;
  *(v0 + 650) = 2;
  v33 = *v54;
  *(v0 + 655) = *(v0 + 1429);
  *(v0 + 651) = v33;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  *(v0 + 16) = 1287;
  v34 = *v48;
  *(v0 + 22) = *(v0 + 1434);
  *(v0 + 18) = v34;
  *(v0 + 24) = v47;
  *(v0 + 32) = v46;
  *(v0 + 40) = v45;
  *(v0 + 48) = v44;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = v23;
  *(v0 + 80) = v25;
  *(v0 + 88) = v27;
  *(v0 + 96) = 0;
  *(v0 + 101) = 2;
  *(v0 + 97) = 33686018;
  *(v0 + 104) = 0;
  *(v0 + 112) = v28;
  v35 = *v49;
  *(v0 + 116) = *(v0 + 1404);
  *(v0 + 113) = v35;
  *(v0 + 120) = 0;
  *(v0 + 128) = v29;
  *(v0 + 129) = 1;
  v36 = *v50;
  *(v0 + 134) = *(v0 + 1418);
  *(v0 + 130) = v36;
  *(v0 + 136) = 0;
  *(v0 + 144) = v30;
  v37 = *v51;
  *(v0 + 148) = *(v0 + 1396);
  *(v0 + 145) = v37;
  *(v0 + 152) = 0;
  *(v0 + 160) = v31;
  *(v0 + 161) = 769;
  v38 = *v53;
  *(v0 + 167) = *(v0 + 1413);
  *(v0 + 163) = v38;
  *(v0 + 168) = 0;
  *(v0 + 176) = v32;
  v39 = *v52;
  *(v0 + 180) = *(v0 + 1388);
  *(v0 + 177) = v39;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 514;
  *(v0 + 202) = 2;
  v40 = *v54;
  *(v0 + 207) = *(v0 + 1429);
  *(v0 + 203) = v40;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  sub_100010568(v0 + 464, v0 + 240);
  sub_10003AE8C(v0 + 16);
  sub_10000DA7C((v55 + *(v56 + 68)), *(v55 + *(v56 + 68) + 24));
  v41 = type metadata accessor for SnoutManager(0);
  v42 = swift_task_alloc();
  *(v0 + 1376) = v42;
  *v42 = v0;
  v42[1] = sub_10008F894;

  return (sub_10016E27C)(v0 + 464, 0, 0, 2, v41, &off_100223858);
}

uint64_t sub_10008F718()
{

  return _swift_task_switch(sub_10008F814, 0, 0);
}

uint64_t sub_10008F814()
{
  sub_10000DB58((v0 + 784));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008F894()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 464);

  return _swift_task_switch(sub_10008F998, 0, 0);
}

uint64_t sub_10008F998()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10008FA18()
{
  sub_10000DB58((v0 + 864));
  v1 = *(v0 + 1312);
  *(v0 + 1368) = v1;
  sub_10000DAF8(v0 + 736, &qword_10023BCD8, &qword_1001BA6D8);
  sub_10000DB58((v0 + 824));
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Scheduled re-engagement token fetch has failed with error: %@", v4, 0xCu);
    sub_10000DAF8(v5, &qword_100239F10, &qword_1001B4FD0);
  }

  v50 = (v0 + 1409);
  v51 = (v0 + 1425);
  v45 = (v0 + 1430);
  v47 = (v0 + 1414);
  v53 = *(v0 + 1288);
  v7 = *(v0 + 1272);
  v46 = (v0 + 1401);
  v8 = *(v0 + 1256);
  v48 = (v0 + 1393);
  v49 = (v0 + 1385);
  v9 = *(v0 + 1248);
  v10 = *(v0 + 1240);
  v11 = *(v0 + 1232);
  v12 = *(v0 + 1224);
  v52 = *(v0 + 1216);

  swift_errorRetain();
  v13 = sub_1000C7C10(v1);
  v43 = v14;
  v44 = v13;
  v41 = v16;
  v42 = v15;
  static Date.now.getter();
  (*(v11 + 104))(v10, enum case for Calendar.Component.hour(_:), v12);
  v17 = sub_100025808(v7, v10);
  v19 = v18;
  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v7, v9);
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17;
  }

  v21 = [objc_opt_self() buildVersion];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  *(v0 + 1408) = 1;
  *(v0 + 1400) = 1;
  *(v0 + 1424) = 1;
  *(v0 + 1384) = 1;
  *(v0 + 1392) = 1;
  *(v0 + 464) = 1287;
  *(v0 + 466) = *v45;
  *(v0 + 470) = *(v0 + 1434);
  *(v0 + 472) = v44;
  *(v0 + 480) = v43;
  *(v0 + 488) = v42;
  *(v0 + 496) = v41;
  *(v0 + 504) = 0u;
  *(v0 + 520) = v20;
  *(v0 + 528) = v22;
  *(v0 + 536) = v24;
  *(v0 + 544) = 0;
  *(v0 + 549) = 2;
  *(v0 + 545) = 33686018;
  *(v0 + 552) = 0;
  v25 = *(v0 + 1408);
  *(v0 + 560) = v25;
  *(v0 + 561) = *v46;
  *(v0 + 564) = *(v0 + 1404);
  *(v0 + 568) = 0;
  v26 = *(v0 + 1400);
  *(v0 + 576) = v26;
  *(v0 + 577) = 1;
  *(v0 + 578) = *v47;
  *(v0 + 582) = *(v0 + 1418);
  *(v0 + 584) = 0;
  v27 = *(v0 + 1424);
  *(v0 + 592) = v27;
  *(v0 + 596) = *(v0 + 1396);
  *(v0 + 593) = *v48;
  *(v0 + 600) = 0;
  v28 = *(v0 + 1384);
  *(v0 + 608) = v28;
  *(v0 + 609) = 769;
  *(v0 + 615) = *(v0 + 1413);
  *(v0 + 611) = *v50;
  *(v0 + 616) = 0;
  v29 = *(v0 + 1392);
  *(v0 + 624) = v29;
  LODWORD(v21) = *v49;
  *(v0 + 628) = *(v0 + 1388);
  *(v0 + 625) = v21;
  *(v0 + 632) = 0u;
  *(v0 + 648) = 514;
  *(v0 + 650) = 2;
  v30 = *v51;
  *(v0 + 655) = *(v0 + 1429);
  *(v0 + 651) = v30;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  *(v0 + 16) = 1287;
  v31 = *v45;
  *(v0 + 22) = *(v0 + 1434);
  *(v0 + 18) = v31;
  *(v0 + 24) = v44;
  *(v0 + 32) = v43;
  *(v0 + 40) = v42;
  *(v0 + 48) = v41;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = v20;
  *(v0 + 80) = v22;
  *(v0 + 88) = v24;
  *(v0 + 96) = 0;
  *(v0 + 101) = 2;
  *(v0 + 97) = 33686018;
  *(v0 + 104) = 0;
  *(v0 + 112) = v25;
  v32 = *v46;
  *(v0 + 116) = *(v0 + 1404);
  *(v0 + 113) = v32;
  *(v0 + 120) = 0;
  *(v0 + 128) = v26;
  *(v0 + 129) = 1;
  v33 = *v47;
  *(v0 + 134) = *(v0 + 1418);
  *(v0 + 130) = v33;
  *(v0 + 136) = 0;
  *(v0 + 144) = v27;
  v34 = *v48;
  *(v0 + 148) = *(v0 + 1396);
  *(v0 + 145) = v34;
  *(v0 + 152) = 0;
  *(v0 + 160) = v28;
  *(v0 + 161) = 769;
  v35 = *v50;
  *(v0 + 167) = *(v0 + 1413);
  *(v0 + 163) = v35;
  *(v0 + 168) = 0;
  *(v0 + 176) = v29;
  v36 = *v49;
  *(v0 + 180) = *(v0 + 1388);
  *(v0 + 177) = v36;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 514;
  *(v0 + 202) = 2;
  v37 = *v51;
  *(v0 + 207) = *(v0 + 1429);
  *(v0 + 203) = v37;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  sub_100010568(v0 + 464, v0 + 240);
  sub_10003AE8C(v0 + 16);
  sub_10000DA7C((v52 + *(v53 + 68)), *(v52 + *(v53 + 68) + 24));
  v38 = type metadata accessor for SnoutManager(0);
  v39 = swift_task_alloc();
  *(v0 + 1376) = v39;
  *v39 = v0;
  v39[1] = sub_10008F894;

  return (sub_10016E27C)(v0 + 464, 0, 0, 2, v38, &off_100223858);
}

BOOL sub_100090010@<W0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
  result = sub_1000C18C4(a1 + *(v5 + 68));
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100090078(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v6 + 513) = a5;
  *(v6 + 384) = a4;
  *(v6 + 392) = v5;
  *(v6 + 512) = a3;
  *(v6 + 368) = a1;
  *(v6 + 376) = a2;
  v7 = type metadata accessor for Date();
  *(v6 + 400) = v7;
  *(v6 + 408) = *(v7 - 8);
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();

  return _swift_task_switch(sub_10009015C, 0, 0);
}

uint64_t sub_10009015C(uint64_t a1)
{
  v2 = v1[49];
  v3 = v1[46];
  static Date.now.getter();
  v4 = (v2 + *(type metadata accessor for ReengagementConversionTask(0) + 32));
  v5 = *v4;
  v1[55] = *v4;
  v6 = v4[1];
  v1[56] = v6;
  v7 = v4[2];
  v1[57] = v7;
  v8 = swift_allocObject();
  v1[58] = v8;
  *(v8 + 16) = v3;
  v9 = swift_task_alloc();
  v1[59] = v9;
  *v9 = v1;
  v9[1] = sub_100090290;

  return sub_10010FF18((v1 + 2), sub_10009894C, v8, v5, v6, v7);
}

uint64_t sub_100090290()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_100090940;
  }

  else
  {
    v2 = sub_1000903B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000903B4()
{
  v1 = *(v0 + 64);
  *(v0 + 136) = *(v0 + 48);
  *(v0 + 152) = v1;
  *(v0 + 168) = *(v0 + 80);
  *(v0 + 184) = *(v0 + 96);
  v2 = *(v0 + 32);
  *(v0 + 104) = *(v0 + 16);
  *(v0 + 120) = v2;
  if (*(v0 + 152) && (v3 = *(v0 + 512), sub_10000DAF8(v0 + 104, &qword_10023B690, &qword_1001B9260), (v3 & 1) == 0))
  {
    v5 = *(v0 + 424);
    v7 = *(v0 + 408);
    v6 = *(v0 + 416);
    v8 = *(v0 + 400);
    Date.init(timeIntervalSince1970:)();
    Date.addingTimeInterval(_:)();
    sub_100099DEC(&qword_10023B530, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v9 = dispatch thunk of static Comparable.< infix(_:_:)();
    v10 = *(v7 + 8);
    v10(v6, v8);
    v10(v5, v8);
    v4 = v9 ^ 1;
  }

  else
  {
    v4 = 1;
  }

  *(v0 + 514) = v4 & 1;
  v11 = *(v0 + 368);
  v12 = swift_allocObject();
  *(v0 + 488) = v12;
  *(v12 + 16) = v11;
  v13 = swift_task_alloc();
  *(v0 + 496) = v13;
  *v13 = v0;
  v13[1] = sub_1000905F0;
  v14 = *(v0 + 448);
  v15 = *(v0 + 456);
  v16 = *(v0 + 440);

  return sub_10010FF18(v0 + 192, sub_100098968, v12, v16, v14, v15);
}

uint64_t sub_1000905F0()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_1000909DC;
  }

  else
  {
    v2 = sub_100090714;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100090714()
{
  v1 = *(v0 + 240);
  *(v0 + 312) = *(v0 + 224);
  *(v0 + 328) = v1;
  *(v0 + 344) = *(v0 + 256);
  *(v0 + 360) = *(v0 + 272);
  v2 = *(v0 + 208);
  *(v0 + 280) = *(v0 + 192);
  *(v0 + 296) = v2;
  if (*(v0 + 328))
  {
    v3 = *(v0 + 432);
    if (*(v0 + 513))
    {
      (*(*(v0 + 408) + 8))(*(v0 + 432), *(v0 + 400));
      sub_10000DAF8(v0 + 280, &qword_10023B690, &qword_1001B9260);
      v4 = 1;
    }

    else
    {
      v6 = *(v0 + 416);
      v5 = *(v0 + 424);
      v7 = *(v0 + 400);
      v8 = *(v0 + 408);
      sub_10000DAF8(v0 + 280, &qword_10023B690, &qword_1001B9260);
      Date.init(timeIntervalSince1970:)();
      Date.addingTimeInterval(_:)();
      sub_100099DEC(&qword_10023B530, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v9 = dispatch thunk of static Comparable.< infix(_:_:)();
      v10 = *(v8 + 8);
      v10(v6, v7);
      v10(v5, v7);
      v10(v3, v7);
      v4 = v9 ^ 1;
    }
  }

  else
  {
    (*(*(v0 + 408) + 8))(*(v0 + 432), *(v0 + 400));
    v4 = 1;
  }

  v11 = *(v0 + 514) & v4;

  v12 = *(v0 + 8);

  return v12(v11 & 1);
}

uint64_t sub_100090940()
{
  (*(v0[51] + 8))(v0[54], v0[50]);

  v1 = v0[1];

  return v1(0);
}

uint64_t sub_1000909DC()
{
  (*(v0[51] + 8))(v0[54], v0[50]);

  v1 = v0[1];

  return v1(0);
}

uint64_t sub_100090A78(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 424) = a2;
  *(v4 + 432) = v3;
  *(v4 + 115) = a3;
  *(v4 + 416) = a1;
  v7 = type metadata accessor for Date();
  *(v4 + 440) = v7;
  v8 = *(v7 - 8);
  *(v4 + 448) = v8;
  *(v4 + 456) = *(v8 + 64);
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = swift_task_alloc();
  v9 = swift_task_alloc();
  *(v4 + 480) = v9;
  *v9 = v4;
  v9[1] = sub_100090B98;

  return sub_100091A48(a2, a3 & 1);
}

uint64_t sub_100090B98(char a1)
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
    *(v4 + 219) = a1 & 1;

    return _swift_task_switch(sub_100090CF8, 0, 0);
  }
}

uint64_t sub_100090CF8()
{
  if (*(v0 + 219) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 488) = v1;
    *v1 = v0;
    v1[1] = sub_100090E30;

    return sub_100158594(15);
  }

  else
  {
    sub_10005C97C();
    swift_allocError();
    *v3 = xmmword_1001BA610;
    *(v3 + 16) = 2;
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100090E30(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 496) = a1;
  *(v3 + 220) = a2;

  return _swift_task_switch(sub_100090F34, 0, 0);
}

uint64_t sub_100090F34()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 472);
  v3 = *(v0 + 448);
  v4 = *(v0 + 432);
  v5 = *(v0 + 440);
  v19 = *(v0 + 424);
  v18 = *(v0 + 115) & 1;
  Date.init(timeIntervalSinceNow:)();
  v6 = type metadata accessor for ReengagementConversionTask(0);
  *(v0 + 504) = v6;
  v7 = (v4 + *(v6 + 24));
  v8 = *v7;
  *(v0 + 512) = *v7;
  v9 = v7[1];
  *(v0 + 520) = v9;
  v10 = v7[2];
  *(v0 + 528) = v10;
  v11 = *(v3 + 16);
  *(v0 + 536) = v11;
  *(v0 + 544) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v1, v2, v5);
  v12 = *(v3 + 80);
  *(v0 + 116) = v12;
  v13 = (v12 + 25) & ~v12;
  v14 = swift_allocObject();
  *(v0 + 552) = v14;
  *(v14 + 16) = v19;
  *(v14 + 24) = v18;
  v15 = *(v3 + 32);
  *(v0 + 560) = v15;
  *(v0 + 568) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v15(v14 + v13, v1, v5);
  v16 = swift_task_alloc();
  *(v0 + 576) = v16;
  *v16 = v0;
  v16[1] = sub_100091130;

  return sub_10010FC40(v0 + 16, sub_10009A27C, v14, v8, v9, v10);
}

uint64_t sub_100091130()
{
  *(*v1 + 584) = v0;

  if (v0)
  {
    v2 = sub_100091940;
  }

  else
  {
    v2 = sub_100091254;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100091254(uint64_t a1)
{
  *(v1 + 368) = *(v1 + 16);
  v2 = *(v1 + 40);
  *(v1 + 384) = *(v1 + 32);
  v3 = *(v1 + 96);
  *(v1 + 256) = *(v1 + 80);
  *(v1 + 272) = v3;
  *(v1 + 287) = *(v1 + 111);
  v4 = *(v1 + 64);
  *(v1 + 224) = *(v1 + 48);
  *(v1 + 240) = v4;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  if (v2)
  {
    if (v7)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Cached non-allocated token found", v8, 2u);
    }

    v9 = *(v1 + 472);
    v10 = *(v1 + 440);
    v11 = *(v1 + 448);

    (*(v11 + 8))(v9, v10);
    v12 = *(v1 + 272);
    *(v1 + 328) = *(v1 + 256);
    *(v1 + 344) = v12;
    *(v1 + 359) = *(v1 + 287);
    v13 = *(v1 + 240);
    *(v1 + 296) = *(v1 + 224);
    *(v1 + 312) = v13;
    v14 = *(v1 + 416);
    v15 = *(v1 + 384);
    *v14 = *(v1 + 368);
    *(v14 + 16) = v15;
    *(v14 + 24) = v2;
    *(v14 + 32) = *(v1 + 296);
    v16 = *(v1 + 312);
    v17 = *(v1 + 328);
    v18 = *(v1 + 344);
    *(v14 + 95) = *(v1 + 359);
    *(v14 + 64) = v17;
    *(v14 + 80) = v18;
    *(v14 + 48) = v16;

    v19 = *(v1 + 8);

    return v19();
  }

  else
  {
    if (v7)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Fetching for re-engagement tokens...", v21, 2u);
    }

    v22 = *(v1 + 115);

    v23 = swift_task_alloc();
    *(v1 + 592) = v23;
    *v23 = v1;
    v23[1] = sub_1000914C8;
    v24 = *(v1 + 424);

    return sub_100092994(v24, v22 & 1, 0);
  }
}

uint64_t sub_1000914C8()
{

  return _swift_task_switch(sub_1000915C4, 0, 0);
}

uint64_t sub_1000915C4()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 464);
  v3 = *(v0 + 440);
  v4 = *(v0 + 424);
  v5 = (*(v0 + 116) + 25) & ~*(v0 + 116);
  v6 = *(v0 + 115) & 1;
  (*(v0 + 536))(v2, *(v0 + 472), v3);
  v7 = swift_allocObject();
  *(v0 + 600) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  v1(v7 + v5, v2, v3);
  v8 = swift_task_alloc();
  *(v0 + 608) = v8;
  *v8 = v0;
  v8[1] = sub_100091724;
  v9 = *(v0 + 528);
  v10 = *(v0 + 520);
  v11 = *(v0 + 512);

  return sub_10010FC40(v0 + 120, sub_100098B78, v7, v11, v10, v9);
}

uint64_t sub_100091724()
{
  *(*v1 + 616) = v0;

  if (v0)
  {
    v2 = sub_1000919C4;
  }

  else
  {
    v2 = sub_100091858;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100091858()
{
  (*(*(v0 + 448) + 8))(*(v0 + 472), *(v0 + 440));
  v1 = *(v0 + 120);
  *(v0 + 392) = v1;
  v2 = *(v0 + 144);
  *(v0 + 408) = *(v0 + 136);
  v3 = *(v0 + 168);
  v4 = *(v0 + 200);
  *(v0 + 328) = *(v0 + 184);
  *(v0 + 344) = v4;
  *(v0 + 359) = *(v0 + 215);
  *(v0 + 296) = *(v0 + 152);
  *(v0 + 312) = v3;
  v6 = *(v0 + 408);
  v5 = *(v0 + 416);
  *v5 = v1;
  *(v5 + 16) = v6;
  *(v5 + 24) = v2;
  *(v5 + 32) = *(v0 + 296);
  v7 = *(v0 + 312);
  v8 = *(v0 + 328);
  v9 = *(v0 + 344);
  *(v5 + 95) = *(v0 + 359);
  *(v5 + 64) = v8;
  *(v5 + 80) = v9;
  *(v5 + 48) = v7;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100091940()
{
  (*(v0[56] + 8))(v0[59], v0[55]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000919C4()
{
  (*(v0[56] + 8))(v0[59], v0[55]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100091A48(uint64_t a1, char a2)
{
  *(v3 + 1480) = v2;
  *(v3 + 1828) = a2;
  *(v3 + 1432) = a1;
  v4 = type metadata accessor for Date();
  *(v3 + 1528) = v4;
  v5 = *(v4 - 8);
  *(v3 + 1576) = v5;
  *(v3 + 1624) = *(v5 + 64);
  *(v3 + 1672) = swift_task_alloc();
  *(v3 + 1680) = swift_task_alloc();
  v6 = type metadata accessor for ReengagementConversionTask(0);
  *(v3 + 1688) = v6;
  v7 = *(v6 - 8);
  *(v3 + 1696) = v7;
  *(v3 + 1704) = *(v7 + 64);
  *(v3 + 1712) = swift_task_alloc();
  *(v3 + 1720) = swift_task_alloc();

  return _swift_task_switch(sub_100091B94, 0, 0);
}

uint64_t sub_100091B94()
{
  v21 = v0;
  if (*(v0 + 1828))
  {
    v1 = 0x69746375646F7270;
  }

  else
  {
    v1 = 0x6D706F6C65766564;
  }

  if (*(v0 + 1828))
  {
    v2 = 0xEA00000000006E6FLL;
  }

  else
  {
    v2 = 0xEB00000000746E65;
  }

  if (*(v0 + 1828))
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      v4 = *(v0 + 1720);
      v5 = *(v0 + 1704);
      v6 = *(v0 + 1696);
      v7 = *(v0 + 1480);
      v18 = *(v0 + 1432);
      v19 = *(v0 + 1712);
      sub_100098D08(v7, v4, type metadata accessor for ReengagementConversionTask);
      v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
      v9 = swift_allocObject();
      *(v0 + 1728) = v9;
      sub_100099038(v4, v9 + v8, type metadata accessor for ReengagementConversionTask);
      *(v9 + ((v8 + v5 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
      swift_asyncLet_begin();
      sub_100098D08(v7, v19, type metadata accessor for ReengagementConversionTask);
      v10 = swift_allocObject();
      *(v0 + 1736) = v10;
      sub_100099038(v19, v10 + v8, type metadata accessor for ReengagementConversionTask);
      swift_asyncLet_begin();

      return _swift_asyncLet_get_throwing(v0 + 16, v0 + 1336, sub_100091F10, v0 + 1296);
    }
  }

  else
  {
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    v15 = sub_10017AD04(v1, v2, &v20);

    *(v13 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v11, v12, "Skipping rate limit check for environment: %s", v13, 0xCu);
    sub_10000DB58(v14);
  }

  v16 = *(v0 + 8);

  return v16(1);
}

uint64_t sub_100091F10()
{
  v1[218] = v0;
  if (v0)
  {
    return _swift_asyncLet_finish(v1 + 82, v1 + 173, sub_100092888, v1 + 168);
  }

  v1[219] = v1[167];
  return _swift_asyncLet_get(v1 + 82, v1 + 173, sub_100091F60, v1 + 180);
}

uint64_t sub_100091F7C(uint64_t a1)
{
  v2 = *(v1 + 1688);
  v3 = *(v1 + 1384);
  *(v1 + 1760) = v3;
  *(v1 + 1824) = *(v2 + 64);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 1752);
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = v6;
    *(v7 + 12) = 2048;
    *(v7 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Current re-engagement token count: %ld, max token count: %ld", v7, 0x16u);
  }

  v8 = *(v1 + 1688);
  v9 = *(v1 + 1680);
  v10 = *(v1 + 1672);
  v11 = *(v1 + 1576);
  v12 = *(v1 + 1528);
  v13 = *(v1 + 1480);

  Date.init(timeIntervalSinceNow:)();
  v14 = (v13 + *(v8 + 24));
  v16 = *v14;
  v15 = v14[1];
  v17 = v14[2];
  (*(v11 + 16))(v10, v9, v12);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v1 + 1768) = v19;
  (*(v11 + 32))(v19 + v18, v10, v12);
  v20 = swift_task_alloc();
  *(v1 + 1776) = v20;
  *v20 = v1;
  v20[1] = sub_1000921A8;

  return sub_1001101F0(sub_1000995CC, v19, v16, v15, v17);
}

uint64_t sub_1000921A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1784) = a1;
  *(v3 + 1792) = v1;

  if (v1)
  {
    v4 = sub_1000925D0;
  }

  else
  {
    v4 = sub_1000922E0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000922E0()
{
  (*(v0[197] + 8))(v0[210], v0[191]);
  v1 = swift_task_alloc();
  v0[225] = v1;
  *v1 = v0;
  v1[1] = sub_1000923A0;

  return sub_1001581F0(14);
}

uint64_t sub_1000923A0(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 1808) = a1;
  *(v3 + 1829) = a2;

  return _swift_task_switch(sub_1000924A4, 0, 0);
}

uint64_t sub_1000924A4(uint64_t a1)
{
  v2 = *(v1 + 1829);
  if (*(v1 + 1808) >= 720)
  {
    v3 = 720;
  }

  else
  {
    v3 = *(v1 + 1808);
  }

  *(v1 + 1816) = v3;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    if (v2)
    {
      v3 = 720;
    }

    v6 = *(v1 + 1784);
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = v6;
    *(v7 + 12) = 2048;
    *(v7 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Current re-engagement device token count: %ld, max token count: %ld", v7, 0x16u);
  }

  return _swift_asyncLet_finish(v1 + 656, v1 + 1384, sub_10009275C, v1 + 1584);
}

uint64_t sub_1000925D0()
{
  (*(v0[197] + 8))(v0[210], v0[191]);

  return _swift_asyncLet_finish(v0 + 82, v0 + 173, sub_100092650, v0 + 186);
}

uint64_t sub_1000926A8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1000927B4()
{

  v1 = *(v0 + 1816);
  if (*(v0 + 1829))
  {
    v1 = 720;
  }

  v3 = *(v0 + 1752) < *(v0 + 1760) && *(v0 + 1784) < v1;

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1000928E0()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100092994(uint64_t a1, char a2, char a3)
{
  *(v4 + 3136) = v3;
  *(v4 + 3657) = a3;
  *(v4 + 3655) = a2;
  *(v4 + 3128) = a1;
  v5 = type metadata accessor for Calendar.Component();
  *(v4 + 3144) = v5;
  *(v4 + 3152) = *(v5 - 8);
  *(v4 + 3160) = swift_task_alloc();
  v6 = type metadata accessor for Date();
  *(v4 + 3168) = v6;
  *(v4 + 3176) = *(v6 - 8);
  *(v4 + 3184) = swift_task_alloc();
  v7 = type metadata accessor for SKANUTClient();
  *(v4 + 3192) = v7;
  *(v4 + 3200) = *(v7 - 8);
  *(v4 + 3208) = swift_task_alloc();

  return _swift_task_switch(sub_100092B18, 0, 0);
}

uint64_t sub_100092B18()
{
  v1 = type metadata accessor for ReengagementConversionTask(0);
  *(v0 + 3216) = v1;
  *(v0 + 3580) = *(v1 + 64);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 3128);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching re-engagement tokens for app %llu", v5, 0xCu);
  }

  v6 = *(v0 + 3655);

  if (v6)
  {

    v7 = 3;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = 3;
    if ((v8 & 1) == 0)
    {
      v7 = 1;
    }
  }

  v9 = 0;
  *(v0 + 3224) = v7;
  *(v0 + 3232) = kSecRandomDefault;
  v10 = _swiftEmptyArrayStorage;
  v11 = &_swiftEmptyDictionarySingleton;
  v146 = enum case for Calendar.Component.hour(_:);
  *(v0 + 3596) = enum case for Calendar.Component.hour(_:);
  while (1)
  {
    *(v0 + 3264) = v11;
    *(v0 + 3256) = v10;
    v155 = v11;
    v158 = v9;
    *(v0 + 3248) = v9;
    *(v0 + 3240) = v11;
    v12 = *(v0 + 3232);
    v13 = *(v0 + 3208);
    v14 = *(v0 + 3200);
    v15 = *(v0 + 3192);
    v16 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v16 + 16) = 32;
    *(v16 + 48) = 0u;
    *(v16 + 32) = 0u;
    v17 = (v16 + 32);
    SecRandomCopyBytes(v12, 0x20uLL, (v16 + 32));
    v18 = sub_100098A3C(v17, 0x20uLL);
    v20 = v19;

    sub_1000438D8(v18, v20);
    v161 = v18;
    v164 = v20;
    SKANUTClient.init(privateInput:)();
    *(v0 + 3072) = v15;
    *(v0 + 3080) = &off_100217540;
    v21 = sub_10005CA24((v0 + 3048));
    (*(v14 + 16))(v21, v13, v15);
    type metadata accessor for PersistentTokenHandler();
    v22 = swift_allocObject();
    v23 = *(v0 + 3072);
    v24 = sub_100054C30(v0 + 3048, v23);
    v25 = *(v23 - 8);
    v26 = swift_task_alloc();
    (*(v25 + 16))(v26, v24, v23);
    *(v0 + 3112) = v15;
    *(v0 + 3120) = &off_100217540;
    v27 = sub_10005CA24((v0 + 3088));
    (*(v14 + 32))(v27, v26, v15);
    v22[7] = 0;
    sub_10000DA64((v0 + 3088), (v22 + 2));
    sub_10000DB58((v0 + 3048));

    sub_10000DA7C(v22 + 2, v22[5]);
    v28 = SKANUTClient.blindedElement()();
    v30 = v29;
    v31 = Data.base64EncodedString(options:)(0);
    sub_10001BABC(v28, v30);
    sub_10000DA7C(v22 + 2, v22[5]);
    v32 = SKANUTClient.input.getter();
    v33 = v10;
    v35 = v34;
    v36 = Data.base64EncodedString(options:)(0);
    sub_10001BABC(v32, v35);
    v37 = sub_1000EBFFC();
    if (v38)
    {
      break;
    }

    v39 = v37;
    v22[7] = v37;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = sub_100088998(0, *(v33 + 2) + 1, 1, v33);
    }

    v43 = *(v41 + 2);
    v42 = *(v41 + 3);
    v44 = v41;
    if (v43 >= v42 >> 1)
    {
      v44 = sub_100088998((v42 > 1), v43 + 1, 1, v41);
    }

    v45 = *(v0 + 3200);
    v147 = *(v0 + 3192);
    v150 = *(v0 + 3208);
    v46 = *(v0 + 3128);
    v47 = *(v0 + 3655) & 1;
    v48 = v44;
    *(v44 + 2) = v43 + 1;
    v49 = &v44[48 * v43];
    *(v49 + 4) = v158;
    *(v49 + 40) = v31;
    *(v49 + 7) = v39;
    *(v49 + 8) = v46;
    v49[72] = v47;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v10 = v48;
    *(v0 + 2952) = v31;
    *(v0 + 2968) = v36;
    *(v0 + 2984) = v39;
    *(v0 + 2992) = v22;
    sub_1000981D0((v0 + 2952), v158, v50);
    sub_10001BABC(v161, v164);
    v11 = v155;
    (*(v45 + 8))(v150, v147);
    *(v0 + 3472) = v155;
    v9 = *(v0 + 3248) + 1;
    if (v9 == *(v0 + 3224))
    {
      v160 = (v0 + 3601);
      v163 = (v0 + 3633);
      v98 = (v0 + 3574);
      v99 = *(v0 + 3184);
      v166 = v10;
      v100 = *(v0 + 3176);
      v154 = (v0 + 3606);
      v157 = (v0 + 3537);
      v101 = *(v0 + 3168);
      v149 = (v0 + 3513);
      v152 = (v0 + 3497);
      v102 = *(v0 + 3160);
      v103 = *(v0 + 3152);
      v104 = *(v0 + 3144);
      static Date.now.getter();
      *(v0 + 3612) = v146;
      v105 = *(v103 + 104);
      *(v0 + 3280) = v105;
      *(v0 + 3288) = (v103 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v105(v102);
      v106 = sub_100025808(v99, v102);
      v108 = v107;
      v109 = *(v103 + 8);
      *(v0 + 3296) = v109;
      *(v0 + 3304) = (v103 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v109(v102, v104);
      v110 = *(v100 + 8);
      *(v0 + 3312) = v110;
      *(v0 + 3320) = (v100 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v110(v99, v101);
      if (v108)
      {
        v111 = 0;
      }

      else
      {
        v111 = v106;
      }

      v112 = objc_opt_self();
      *(v0 + 3328) = v112;
      v113 = [v112 buildVersion];
      v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v116 = v115;

      *(v0 + 3632) = 1;
      *(v0 + 3600) = 1;
      *(v0 + 3584) = 1;
      *(v0 + 3568) = 1;
      *(v0 + 3552) = 1;
      *(v0 + 1584) = 1287;
      *(v0 + 1586) = *v98;
      *(v0 + 1590) = *(v0 + 3578);
      *(v0 + 1592) = 0u;
      *(v0 + 1608) = 0u;
      *(v0 + 1624) = 0u;
      *(v0 + 1640) = v111;
      *(v0 + 1648) = v114;
      *(v0 + 1656) = v116;
      *(v0 + 1664) = 0;
      *(v0 + 1665) = 33686018;
      *(v0 + 1669) = 2;
      *(v0 + 1672) = 0;
      v117 = *(v0 + 3632);
      *(v0 + 1680) = v117;
      *(v0 + 1681) = *v149;
      *(v0 + 1684) = *(v0 + 3516);
      *(v0 + 1688) = 0;
      v118 = *(v0 + 3600);
      *(v0 + 1696) = v118;
      *(v0 + 1697) = 1;
      *(v0 + 1698) = *v154;
      *(v0 + 1702) = *(v0 + 3610);
      *(v0 + 1704) = 0;
      v119 = *(v0 + 3584);
      *(v0 + 1712) = v119;
      *(v0 + 1716) = *(v0 + 3500);
      *(v0 + 1713) = *v152;
      *(v0 + 1720) = 0;
      v120 = *(v0 + 3568);
      *(v0 + 1728) = v120;
      *(v0 + 1729) = 769;
      *(v0 + 1735) = *(v0 + 3605);
      *(v0 + 1731) = *v160;
      *(v0 + 1736) = 0;
      v121 = *(v0 + 3552);
      *(v0 + 1744) = v121;
      *(v0 + 1748) = *(v0 + 3540);
      *(v0 + 1745) = *v157;
      *(v0 + 1752) = 0u;
      *(v0 + 1768) = 514;
      *(v0 + 1770) = 2;
      v122 = *v163;
      *(v0 + 1775) = *(v0 + 3637);
      *(v0 + 1771) = v122;
      *(v0 + 1792) = 0u;
      *(v0 + 1776) = 0u;
      *(v0 + 1808) = 1287;
      v123 = *v98;
      *(v0 + 1814) = *(v0 + 3578);
      *(v0 + 1810) = v123;
      *(v0 + 1832) = 0u;
      *(v0 + 1848) = 0u;
      *(v0 + 1816) = 0u;
      *(v0 + 1864) = v111;
      *(v0 + 1872) = v114;
      *(v0 + 1880) = v116;
      *(v0 + 1888) = 0;
      *(v0 + 1893) = 2;
      *(v0 + 1889) = 33686018;
      *(v0 + 1896) = 0;
      *(v0 + 1904) = v117;
      v124 = *v149;
      *(v0 + 1908) = *(v0 + 3516);
      *(v0 + 1905) = v124;
      *(v0 + 1912) = 0;
      *(v0 + 1920) = v118;
      *(v0 + 1921) = 1;
      v125 = *v154;
      *(v0 + 1926) = *(v0 + 3610);
      *(v0 + 1922) = v125;
      *(v0 + 1928) = 0;
      *(v0 + 1936) = v119;
      v126 = *v152;
      *(v0 + 1940) = *(v0 + 3500);
      *(v0 + 1937) = v126;
      *(v0 + 1944) = 0;
      *(v0 + 1952) = v120;
      *(v0 + 1953) = 769;
      v127 = *v160;
      *(v0 + 1959) = *(v0 + 3605);
      *(v0 + 1955) = v127;
      *(v0 + 1960) = 0;
      *(v0 + 1968) = v121;
      v128 = *v157;
      *(v0 + 1972) = *(v0 + 3540);
      *(v0 + 1969) = v128;
      *(v0 + 1976) = 0u;
      *(v0 + 1992) = 514;
      *(v0 + 1994) = 2;
      v129 = *v163;
      *(v0 + 1999) = *(v0 + 3637);
      *(v0 + 1995) = v129;
      *(v0 + 2016) = 0u;
      *(v0 + 2000) = 0u;
      sub_100010568(v0 + 1584, v0 + 1360);
      sub_10003AE8C(v0 + 1808);
      v130 = *(v0 + 1600);
      *(v0 + 3336) = *(v0 + 1584);
      *(v0 + 3352) = v130;
      v131 = *(v0 + 1768);
      *(v0 + 2608) = *(v0 + 1752);
      *(v0 + 2624) = v131;
      *(v0 + 2640) = *(v0 + 1784);
      v132 = *(v0 + 1704);
      *(v0 + 2544) = *(v0 + 1688);
      *(v0 + 2560) = v132;
      v133 = *(v0 + 1736);
      *(v0 + 2576) = *(v0 + 1720);
      *(v0 + 2592) = v133;
      v134 = *(v0 + 1640);
      *(v0 + 2480) = *(v0 + 1624);
      *(v0 + 2496) = v134;
      v135 = *(v0 + 1672);
      *(v0 + 2512) = *(v0 + 1656);
      *(v0 + 3368) = *(v0 + 1616);
      *(v0 + 2656) = *(v0 + 1800);
      *(v0 + 2528) = v135;
      *(v0 + 3032) = &type metadata for AMSDogBag;
      *(v0 + 3040) = &off_100222F48;
      *(v0 + 3000) = v166;
      v136 = swift_task_alloc();
      *(v0 + 3376) = v136;
      *v136 = v0;
      v136[1] = sub_100093B10;

      return sub_100040F24();
    }
  }

  v51 = *(v0 + 3208);
  v52 = *(v0 + 3200);
  v53 = *(v0 + 3192);

  sub_10005CA88();
  v54 = swift_allocError();
  *(v0 + 3272) = v54;
  *v55 = 1;
  swift_willThrow();

  sub_10001BABC(v161, v164);
  (*(v52 + 8))(v51, v53);
  swift_errorRetain();
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v58 = 138412290;
    swift_errorRetain();
    v60 = _swift_stdlib_bridgeErrorToNSError();
    *(v58 + 4) = v60;
    *v59 = v60;
    _os_log_impl(&_mh_execute_header, v56, v57, "Failed to create blinded data: %@", v58, 0xCu);
    sub_10000DAF8(v59, &qword_100239F10, &qword_1001B4FD0);
  }

  v61 = *(v0 + 3596);
  v151 = (v0 + 3650);
  v153 = (v0 + 3569);
  v144 = (v0 + 3622);
  v165 = *(v0 + 3216);
  v142 = (v0 + 3590);
  v143 = (v0 + 3561);
  v62 = *(v0 + 3184);
  v148 = (v0 + 3553);
  v145 = (v0 + 3521);
  v63 = *(v0 + 3176);
  v137 = *(v0 + 3168);
  v64 = *(v0 + 3160);
  v65 = *(v0 + 3152);
  v66 = *(v0 + 3144);
  v156 = *(v0 + 3136);
  v162 = *(v0 + 3657);
  v159 = *(v0 + 3128);

  swift_errorRetain();
  v67 = sub_1000C7C10(v54);
  v140 = v68;
  v141 = v67;
  v138 = v70;
  v139 = v69;
  static Date.now.getter();
  (*(v65 + 104))(v64, v61, v66);
  v71 = sub_100025808(v62, v64);
  v73 = v72;
  (*(v65 + 8))(v64, v66);
  (*(v63 + 8))(v62, v137);
  if (v73)
  {
    v74 = 0;
  }

  else
  {
    v74 = v71;
  }

  v75 = [objc_opt_self() buildVersion];
  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v77;

  *(v0 + 3520) = 1;
  *(v0 + 3656) = 1;
  *(v0 + 3536) = 1;
  *(v0 + 3496) = 1;
  *(v0 + 3616) = 1;
  *(v0 + 2032) = 1287;
  *(v0 + 2034) = *v142;
  *(v0 + 2038) = *(v0 + 3594);
  *(v0 + 2040) = v141;
  *(v0 + 2048) = v140;
  *(v0 + 2056) = v139;
  *(v0 + 2064) = v138;
  *(v0 + 2072) = 0u;
  *(v0 + 2088) = v74;
  *(v0 + 2096) = v76;
  *(v0 + 2104) = v78;
  *(v0 + 2112) = 0;
  *(v0 + 2117) = 2;
  *(v0 + 2113) = 33686018;
  *(v0 + 2120) = 0;
  v79 = *(v0 + 3520);
  *(v0 + 2128) = v79;
  *(v0 + 2129) = *v143;
  *(v0 + 2132) = *(v0 + 3564);
  *(v0 + 2136) = 0;
  v80 = *(v0 + 3656);
  *(v0 + 2144) = v80;
  *(v0 + 2145) = 1;
  *(v0 + 2146) = *v144;
  *(v0 + 2150) = *(v0 + 3626);
  *(v0 + 2152) = 0;
  v81 = *(v0 + 3536);
  *(v0 + 2160) = v81;
  *(v0 + 2164) = *(v0 + 3524);
  *(v0 + 2161) = *v145;
  *(v0 + 2168) = 0;
  v82 = *(v0 + 3496);
  *(v0 + 2176) = v82;
  *(v0 + 2177) = 769;
  *(v0 + 2183) = *(v0 + 3654);
  *(v0 + 2179) = *v151;
  *(v0 + 2184) = 0;
  v83 = *(v0 + 3616);
  *(v0 + 2192) = v83;
  v84 = *v148;
  *(v0 + 2196) = *(v0 + 3556);
  *(v0 + 2193) = v84;
  *(v0 + 2200) = 0u;
  *(v0 + 2216) = 514;
  *(v0 + 2218) = 2;
  v85 = *v153;
  *(v0 + 2223) = *(v0 + 3573);
  *(v0 + 2219) = v85;
  *(v0 + 2240) = 0u;
  *(v0 + 2224) = 0u;
  *(v0 + 16) = 1287;
  v86 = *v142;
  *(v0 + 22) = *(v0 + 3594);
  *(v0 + 18) = v86;
  *(v0 + 24) = v141;
  *(v0 + 32) = v140;
  *(v0 + 40) = v139;
  *(v0 + 48) = v138;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = v74;
  *(v0 + 80) = v76;
  *(v0 + 88) = v78;
  *(v0 + 96) = 0;
  *(v0 + 101) = 2;
  *(v0 + 97) = 33686018;
  *(v0 + 104) = 0;
  *(v0 + 112) = v79;
  v87 = *v143;
  *(v0 + 116) = *(v0 + 3564);
  *(v0 + 113) = v87;
  *(v0 + 120) = 0;
  *(v0 + 128) = v80;
  *(v0 + 129) = 1;
  v88 = *v144;
  *(v0 + 134) = *(v0 + 3626);
  *(v0 + 130) = v88;
  *(v0 + 136) = 0;
  *(v0 + 144) = v81;
  v89 = *v145;
  *(v0 + 148) = *(v0 + 3524);
  *(v0 + 145) = v89;
  *(v0 + 152) = 0;
  *(v0 + 160) = v82;
  *(v0 + 161) = 769;
  v90 = *v151;
  *(v0 + 167) = *(v0 + 3654);
  *(v0 + 163) = v90;
  *(v0 + 168) = 0;
  *(v0 + 176) = v83;
  v91 = *v148;
  *(v0 + 180) = *(v0 + 3556);
  *(v0 + 177) = v91;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 200) = 514;
  *(v0 + 202) = 2;
  v92 = *v153;
  *(v0 + 207) = *(v0 + 3573);
  *(v0 + 203) = v92;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  sub_100010568(v0 + 2032, v0 + 2256);
  sub_10003AE8C(v0 + 16);
  sub_10000DA7C((v156 + *(v165 + 68)), *(v156 + *(v165 + 68) + 24));
  v93 = type metadata accessor for SnoutManager(0);
  v94 = swift_task_alloc();
  *(v0 + 3464) = v94;
  *v94 = v0;
  v94[1] = sub_10009473C;
  if (v162)
  {
    v95 = 0;
  }

  else
  {
    v95 = v159;
  }

  if (v162)
  {
    v96 = 2;
  }

  else
  {
    v96 = 0;
  }

  return (sub_10016E27C)(v0 + 2032, v95, 0, v96, v93, &off_100223858);
}

uint64_t sub_100093B10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 3384) = a1;
  *(v3 + 3392) = v1;

  if (v1)
  {

    v4 = sub_1000940B8;
  }

  else
  {
    v4 = sub_100093C30;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100093C30()
{
  v1 = *(v0 + 3368);
  v2 = *(v0 + 3136);
  v3 = *(v0 + 3657);
  v4 = *(v0 + 3128);
  v5 = *(*(v0 + 3216) + 68);
  *(v0 + 3628) = v5;
  v16 = *(v0 + 3352);
  v17 = *(v0 + 3336);
  sub_10000DA7C((v2 + v5), *(v2 + v5 + 24));
  *(v0 + 464) = v17;
  *(v0 + 480) = v16;
  *(v0 + 496) = v1;
  v6 = *(v0 + 2624);
  *(v0 + 632) = *(v0 + 2608);
  *(v0 + 648) = v6;
  *(v0 + 664) = *(v0 + 2640);
  *(v0 + 680) = *(v0 + 2656);
  v7 = *(v0 + 2560);
  *(v0 + 568) = *(v0 + 2544);
  *(v0 + 584) = v7;
  v8 = *(v0 + 2592);
  *(v0 + 600) = *(v0 + 2576);
  *(v0 + 616) = v8;
  v9 = *(v0 + 2496);
  *(v0 + 504) = *(v0 + 2480);
  *(v0 + 520) = v9;
  v10 = *(v0 + 2528);
  *(v0 + 536) = *(v0 + 2512);
  *(v0 + 552) = v10;
  *(v0 + 3400) = &unk_1001C3B20;
  *(v0 + 3408) = &off_100223860 & 0xFFFFFFFFFFFFLL | 0x823E000000000000;
  v11 = type metadata accessor for SnoutManager(0);
  *(v0 + 3416) = v11;
  v12 = swift_task_alloc();
  *(v0 + 3424) = v12;
  *v12 = v0;
  v12[1] = sub_100093E2C;
  if (v3)
  {
    v13 = 0;
  }

  else
  {
    v13 = v4;
  }

  if (v3)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  return (sub_10016E27C)(v0 + 464, v13, 0, v14, v11, &off_100223858);
}

uint64_t sub_100093E2C()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 464);

  return _swift_task_switch(sub_100093F30, 0, 0);
}

uint64_t sub_100093F30()
{
  v1 = *(v0 + 3384);
  sub_100098C4C(v0 + 3000);
  v2 = *(v1 + 16);
  *(v0 + 3432) = v2;
  if (v2)
  {
    v3 = *(v0 + 3384);
    *(v0 + 3440) = 0;
    v4 = *(v0 + 3655);
    v6 = *(v3 + 64);
    v5 = *(v3 + 80);
    v7 = *(v3 + 48);
    *(v0 + 2728) = *(v3 + 96);
    *(v0 + 2696) = v6;
    *(v0 + 2712) = v5;
    *(v0 + 2680) = v7;
    *(v0 + 2664) = *(v3 + 32);
    sub_100044BF8(v0 + 2664, v0 + 2880);
    v8 = swift_task_alloc();
    *(v0 + 3448) = v8;
    *v8 = v0;
    v8[1] = sub_1000943E4;
    v9 = *(v0 + 3472);
    v10 = *(v0 + 3128);

    return sub_100096A48(v10, v0 + 2664, v9, v4 & 1);
  }

  else
  {
    v12 = *(v0 + 3657);
    v13 = *(v0 + 3128);

    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    if (v12)
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    sub_100098CA0(v14, 0, v15);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1000940B8()
{
  sub_100098C4C(v0 + 3000);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 3128);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 134218242;
    *(v4 + 4) = v3;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetch for re-engagement tokens for app %llu failed with error: %@", v4, 0x16u);
    sub_10000DAF8(v5, &qword_100239F10, &qword_1001B4FD0);
  }

  v7 = *(v0 + 3392);
  v29 = *(v0 + 3336);
  v8 = *(v0 + 3216);
  v9 = *(v0 + 3136);
  v28 = *(v0 + 3657);
  v27 = *(v0 + 3128);

  v10 = sub_1000C7C10(v7);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_10000DA7C((v9 + *(v8 + 68)), *(v9 + *(v8 + 68) + 24));
  *(v0 + 240) = v29;
  *(v0 + 248) = v10;
  *(v0 + 256) = v12;
  *(v0 + 264) = v14;
  *(v0 + 272) = v16;
  v17 = *(v0 + 2624);
  *(v0 + 408) = *(v0 + 2608);
  *(v0 + 424) = v17;
  *(v0 + 440) = *(v0 + 2640);
  *(v0 + 456) = *(v0 + 2656);
  v18 = *(v0 + 2560);
  *(v0 + 344) = *(v0 + 2544);
  *(v0 + 360) = v18;
  v19 = *(v0 + 2592);
  *(v0 + 376) = *(v0 + 2576);
  *(v0 + 392) = v19;
  v20 = *(v0 + 2496);
  *(v0 + 280) = *(v0 + 2480);
  *(v0 + 296) = v20;
  v21 = *(v0 + 2528);
  *(v0 + 312) = *(v0 + 2512);
  *(v0 + 328) = v21;
  v22 = type metadata accessor for SnoutManager(0);
  v23 = swift_task_alloc();
  *(v0 + 3480) = v23;
  *v23 = v0;
  v23[1] = sub_100095720;
  if (v28)
  {
    v24 = 0;
  }

  else
  {
    v24 = v27;
  }

  if (v28)
  {
    v25 = 2;
  }

  else
  {
    v25 = 0;
  }

  return (sub_10016E27C)(v0 + 240, v24, 0, v25, v22, &off_100223858);
}

uint64_t sub_1000943E4()
{
  *(*v1 + 3456) = v0;

  if (v0)
  {
    v2 = sub_1000958DC;
  }

  else
  {
    v2 = sub_1000944F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000944F8()
{
  v1 = (v0 + 2664);
  sub_100044BF8(v0 + 2664, v0 + 2736);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    sub_100044C30(v0 + 2664);
    *(v4 + 4) = *v1;
    sub_100044C30(v0 + 2664);
    _os_log_impl(&_mh_execute_header, v2, v3, "Finalized reengagement token for id: %ld", v4, 0xCu);
  }

  else
  {
    sub_100044C30(v0 + 2664);
    sub_100044C30(v0 + 2664);
  }

  v5 = *(v0 + 3440) + 1;
  if (v5 == *(v0 + 3432))
  {
    v6 = *(v0 + 3657);
    v7 = *(v0 + 3128);

    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    if (v6)
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    sub_100098CA0(v8, 0, v9);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    *(v0 + 3440) = v5;
    v12 = *(v0 + 3655);
    v13 = *(v0 + 3384) + 72 * v5;
    *v1 = *(v13 + 32);
    v15 = *(v13 + 64);
    v14 = *(v13 + 80);
    v16 = *(v13 + 48);
    *(v0 + 2728) = *(v13 + 96);
    *(v0 + 2696) = v15;
    *(v0 + 2712) = v14;
    *(v0 + 2680) = v16;
    sub_100044BF8(v0 + 2664, v0 + 2880);
    v17 = swift_task_alloc();
    *(v0 + 3448) = v17;
    *v17 = v0;
    v17[1] = sub_1000943E4;
    v18 = *(v0 + 3472);
    v19 = *(v0 + 3128);

    return sub_100096A48(v19, v1, v18, v12 & 1);
  }
}

uint64_t sub_10009473C()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 2032);

  return _swift_task_switch(sub_100094840, 0, 0);
}

uint64_t sub_100094840()
{

  v1 = *(v0 + 3264);
  v2 = *(v0 + 3256);
  v3 = *(v0 + 3240);
  *(v0 + 3472) = v1;
  v4 = *(v0 + 3248) + 1;
  if (v4 == *(v0 + 3224))
  {
LABEL_2:
    v151 = (v0 + 3633);
    v154 = v2;
    v5 = (v0 + 3574);
    v6 = *(v0 + 3184);
    v7 = *(v0 + 3176);
    v145 = (v0 + 3537);
    v148 = (v0 + 3601);
    v140 = (v0 + 3513);
    v8 = *(v0 + 3168);
    v142 = (v0 + 3497);
    v144 = (v0 + 3606);
    v9 = *(v0 + 3160);
    v10 = *(v0 + 3152);
    v11 = *(v0 + 3144);
    static Date.now.getter();
    *(v0 + 3612) = enum case for Calendar.Component.hour(_:);
    v12 = *(v10 + 104);
    *(v0 + 3280) = v12;
    *(v0 + 3288) = (v10 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v12(v9);
    v13 = sub_100025808(v6, v9);
    v15 = v14;
    v16 = *(v10 + 8);
    *(v0 + 3296) = v16;
    *(v0 + 3304) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v9, v11);
    v17 = *(v7 + 8);
    *(v0 + 3312) = v17;
    *(v0 + 3320) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v6, v8);
    if (v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = v13;
    }

    v19 = objc_opt_self();
    *(v0 + 3328) = v19;
    v20 = [v19 buildVersion];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    *(v0 + 3632) = 1;
    *(v0 + 3600) = 1;
    *(v0 + 3584) = 1;
    *(v0 + 3568) = 1;
    *(v0 + 3552) = 1;
    *(v0 + 1584) = 1287;
    *(v0 + 1586) = *v5;
    *(v0 + 1590) = *(v0 + 3578);
    *(v0 + 1592) = 0u;
    *(v0 + 1608) = 0u;
    *(v0 + 1624) = 0u;
    *(v0 + 1640) = v18;
    *(v0 + 1648) = v21;
    *(v0 + 1656) = v23;
    *(v0 + 1664) = 0;
    *(v0 + 1665) = 33686018;
    *(v0 + 1669) = 2;
    *(v0 + 1672) = 0;
    v24 = *(v0 + 3632);
    *(v0 + 1680) = v24;
    *(v0 + 1681) = *v140;
    *(v0 + 1684) = *(v0 + 3516);
    *(v0 + 1688) = 0;
    v25 = *(v0 + 3600);
    *(v0 + 1696) = v25;
    *(v0 + 1697) = 1;
    *(v0 + 1698) = *v144;
    *(v0 + 1702) = *(v0 + 3610);
    *(v0 + 1704) = 0;
    v26 = *(v0 + 3584);
    *(v0 + 1712) = v26;
    *(v0 + 1716) = *(v0 + 3500);
    *(v0 + 1713) = *v142;
    *(v0 + 1720) = 0;
    v27 = *(v0 + 3568);
    *(v0 + 1728) = v27;
    *(v0 + 1729) = 769;
    *(v0 + 1735) = *(v0 + 3605);
    *(v0 + 1731) = *v148;
    *(v0 + 1736) = 0;
    v28 = *(v0 + 3552);
    *(v0 + 1744) = v28;
    *(v0 + 1748) = *(v0 + 3540);
    *(v0 + 1745) = *v145;
    *(v0 + 1752) = 0u;
    *(v0 + 1768) = 514;
    *(v0 + 1770) = 2;
    v29 = *v151;
    *(v0 + 1775) = *(v0 + 3637);
    *(v0 + 1771) = v29;
    *(v0 + 1792) = 0u;
    *(v0 + 1776) = 0u;
    *(v0 + 1808) = 1287;
    v30 = *v5;
    *(v0 + 1814) = *(v0 + 3578);
    *(v0 + 1810) = v30;
    *(v0 + 1832) = 0u;
    *(v0 + 1848) = 0u;
    *(v0 + 1816) = 0u;
    *(v0 + 1864) = v18;
    *(v0 + 1872) = v21;
    *(v0 + 1880) = v23;
    *(v0 + 1888) = 0;
    *(v0 + 1893) = 2;
    *(v0 + 1889) = 33686018;
    *(v0 + 1896) = 0;
    *(v0 + 1904) = v24;
    v31 = *v140;
    *(v0 + 1908) = *(v0 + 3516);
    *(v0 + 1905) = v31;
    *(v0 + 1912) = 0;
    *(v0 + 1920) = v25;
    *(v0 + 1921) = 1;
    v32 = *v144;
    *(v0 + 1926) = *(v0 + 3610);
    *(v0 + 1922) = v32;
    *(v0 + 1928) = 0;
    *(v0 + 1936) = v26;
    v33 = *v142;
    *(v0 + 1940) = *(v0 + 3500);
    *(v0 + 1937) = v33;
    *(v0 + 1944) = 0;
    *(v0 + 1952) = v27;
    *(v0 + 1953) = 769;
    v34 = *v148;
    *(v0 + 1959) = *(v0 + 3605);
    *(v0 + 1955) = v34;
    *(v0 + 1960) = 0;
    *(v0 + 1968) = v28;
    v35 = *v145;
    *(v0 + 1972) = *(v0 + 3540);
    *(v0 + 1969) = v35;
    *(v0 + 1976) = 0u;
    *(v0 + 1992) = 514;
    *(v0 + 1994) = 2;
    v36 = *v151;
    *(v0 + 1999) = *(v0 + 3637);
    *(v0 + 1995) = v36;
    *(v0 + 2016) = 0u;
    *(v0 + 2000) = 0u;
    sub_100010568(v0 + 1584, v0 + 1360);
    sub_10003AE8C(v0 + 1808);
    v37 = *(v0 + 1600);
    *(v0 + 3336) = *(v0 + 1584);
    *(v0 + 3352) = v37;
    v38 = *(v0 + 1768);
    *(v0 + 2608) = *(v0 + 1752);
    *(v0 + 2624) = v38;
    *(v0 + 2640) = *(v0 + 1784);
    v39 = *(v0 + 1704);
    *(v0 + 2544) = *(v0 + 1688);
    *(v0 + 2560) = v39;
    v40 = *(v0 + 1736);
    *(v0 + 2576) = *(v0 + 1720);
    *(v0 + 2592) = v40;
    v41 = *(v0 + 1640);
    *(v0 + 2480) = *(v0 + 1624);
    *(v0 + 2496) = v41;
    v42 = *(v0 + 1672);
    *(v0 + 2512) = *(v0 + 1656);
    *(v0 + 3368) = *(v0 + 1616);
    *(v0 + 2656) = *(v0 + 1800);
    *(v0 + 2528) = v42;
    *(v0 + 3032) = &type metadata for AMSDogBag;
    *(v0 + 3040) = &off_100222F48;
    *(v0 + 3000) = v154;
    v43 = swift_task_alloc();
    *(v0 + 3376) = v43;
    *v43 = v0;
    v43[1] = sub_100093B10;

    return sub_100040F24();
  }

  else
  {
    v137 = (v0 + 3521);
    v138 = (v0 + 3553);
    v133 = (v0 + 3590);
    v134 = (v0 + 3561);
    v139 = (v0 + 3569);
    v135 = (v0 + 3622);
    v136 = (v0 + 3650);
    while (1)
    {
      *(v0 + 3264) = v1;
      *(v0 + 3256) = v2;
      v146 = v3;
      v149 = v4;
      *(v0 + 3248) = v4;
      *(v0 + 3240) = v3;
      v45 = *(v0 + 3232);
      v46 = *(v0 + 3208);
      v47 = *(v0 + 3200);
      v48 = *(v0 + 3192);
      v49 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v49 + 16) = 32;
      *(v49 + 48) = 0u;
      *(v49 + 32) = 0u;
      v50 = (v49 + 32);
      SecRandomCopyBytes(v45, 0x20uLL, (v49 + 32));
      v51 = sub_100098A3C(v50, 0x20uLL);
      v53 = v52;

      sub_1000438D8(v51, v53);
      v152 = v51;
      v155 = v53;
      SKANUTClient.init(privateInput:)();
      *(v0 + 3072) = v48;
      *(v0 + 3080) = &off_100217540;
      v54 = sub_10005CA24((v0 + 3048));
      (*(v47 + 16))(v54, v46, v48);
      type metadata accessor for PersistentTokenHandler();
      v55 = swift_allocObject();
      v56 = *(v0 + 3072);
      v57 = sub_100054C30(v0 + 3048, v56);
      v58 = *(v56 - 8);
      v59 = swift_task_alloc();
      (*(v58 + 16))(v59, v57, v56);
      *(v0 + 3112) = v48;
      *(v0 + 3120) = &off_100217540;
      v60 = sub_10005CA24((v0 + 3088));
      (*(v47 + 32))(v60, v59, v48);
      v55[7] = 0;
      sub_10000DA64((v0 + 3088), (v55 + 2));
      sub_10000DB58((v0 + 3048));

      sub_10000DA7C(v55 + 2, v55[5]);
      v61 = SKANUTClient.blindedElement()();
      v63 = v62;
      v64 = Data.base64EncodedString(options:)(0);
      sub_10001BABC(v61, v63);
      sub_10000DA7C(v55 + 2, v55[5]);
      v65 = SKANUTClient.input.getter();
      v67 = v66;
      v68 = Data.base64EncodedString(options:)(0);
      sub_10001BABC(v65, v67);
      v69 = sub_1000EBFFC();
      if (v70)
      {
        break;
      }

      v71 = v69;
      v55[7] = v69;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_100088998(0, *(v2 + 2) + 1, 1, v2);
      }

      v72 = v2;
      v73 = *(v2 + 2);
      v74 = v72;
      v75 = *(v72 + 3);
      if (v73 >= v75 >> 1)
      {
        v74 = sub_100088998((v75 > 1), v73 + 1, 1, v74);
      }

      v76 = *(v0 + 3200);
      v141 = *(v0 + 3192);
      v143 = *(v0 + 3208);
      v77 = *(v0 + 3128);
      v78 = *(v0 + 3655) & 1;
      v79 = v74;
      *(v74 + 2) = v73 + 1;
      v80 = &v74[48 * v73];
      *(v80 + 4) = v149;
      *(v80 + 40) = v64;
      *(v80 + 7) = v71;
      *(v80 + 8) = v77;
      v80[72] = v78;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2 = v79;
      *(v0 + 2952) = v64;
      *(v0 + 2968) = v68;
      *(v0 + 2984) = v71;
      *(v0 + 2992) = v55;
      sub_1000981D0((v0 + 2952), v149, isUniquelyReferenced_nonNull_native);
      sub_10001BABC(v152, v155);
      v1 = v146;
      (*(v76 + 8))(v143, v141);
      *(v0 + 3472) = v146;
      v4 = *(v0 + 3248) + 1;
      v3 = v146;
      if (v4 == *(v0 + 3224))
      {
        goto LABEL_2;
      }
    }

    v82 = *(v0 + 3208);
    v83 = *(v0 + 3200);
    v84 = *(v0 + 3192);

    sub_10005CA88();
    v85 = swift_allocError();
    *(v0 + 3272) = v85;
    *v86 = 1;
    swift_willThrow();

    sub_10001BABC(v152, v155);
    (*(v83 + 8))(v82, v84);
    swift_errorRetain();
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v89 = 138412290;
      swift_errorRetain();
      v91 = _swift_stdlib_bridgeErrorToNSError();
      *(v89 + 4) = v91;
      *v90 = v91;
      _os_log_impl(&_mh_execute_header, v87, v88, "Failed to create blinded data: %@", v89, 0xCu);
      sub_10000DAF8(v90, &qword_100239F10, &qword_1001B4FD0);
    }

    v92 = *(v0 + 3596);
    v156 = *(v0 + 3216);
    v93 = *(v0 + 3184);
    v94 = *(v0 + 3176);
    v128 = *(v0 + 3168);
    v95 = *(v0 + 3160);
    v96 = *(v0 + 3152);
    v97 = *(v0 + 3144);
    v147 = *(v0 + 3136);
    v153 = *(v0 + 3657);
    v150 = *(v0 + 3128);

    swift_errorRetain();
    v98 = sub_1000C7C10(v85);
    v131 = v99;
    v132 = v98;
    v129 = v101;
    v130 = v100;
    static Date.now.getter();
    (*(v96 + 104))(v95, v92, v97);
    v102 = sub_100025808(v93, v95);
    v104 = v103;
    (*(v96 + 8))(v95, v97);
    (*(v94 + 8))(v93, v128);
    if (v104)
    {
      v105 = 0;
    }

    else
    {
      v105 = v102;
    }

    v106 = [objc_opt_self() buildVersion];
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v109 = v108;

    *(v0 + 3520) = 1;
    *(v0 + 3656) = 1;
    *(v0 + 3536) = 1;
    *(v0 + 3496) = 1;
    *(v0 + 3616) = 1;
    *(v0 + 2032) = 1287;
    *(v0 + 2034) = *v133;
    *(v0 + 2038) = *(v0 + 3594);
    *(v0 + 2040) = v132;
    *(v0 + 2048) = v131;
    *(v0 + 2056) = v130;
    *(v0 + 2064) = v129;
    *(v0 + 2072) = 0u;
    *(v0 + 2088) = v105;
    *(v0 + 2096) = v107;
    *(v0 + 2104) = v109;
    *(v0 + 2112) = 0;
    *(v0 + 2117) = 2;
    *(v0 + 2113) = 33686018;
    *(v0 + 2120) = 0;
    v110 = *(v0 + 3520);
    *(v0 + 2128) = v110;
    *(v0 + 2129) = *v134;
    *(v0 + 2132) = *(v0 + 3564);
    *(v0 + 2136) = 0;
    v111 = *(v0 + 3656);
    *(v0 + 2144) = v111;
    *(v0 + 2145) = 1;
    *(v0 + 2146) = *v135;
    *(v0 + 2150) = *(v0 + 3626);
    *(v0 + 2152) = 0;
    v112 = *(v0 + 3536);
    *(v0 + 2160) = v112;
    *(v0 + 2164) = *(v0 + 3524);
    *(v0 + 2161) = *v137;
    *(v0 + 2168) = 0;
    v113 = *(v0 + 3496);
    *(v0 + 2176) = v113;
    *(v0 + 2177) = 769;
    *(v0 + 2183) = *(v0 + 3654);
    *(v0 + 2179) = *v136;
    *(v0 + 2184) = 0;
    v114 = *(v0 + 3616);
    *(v0 + 2192) = v114;
    v115 = *v138;
    *(v0 + 2196) = *(v0 + 3556);
    *(v0 + 2193) = v115;
    *(v0 + 2200) = 0u;
    *(v0 + 2216) = 514;
    *(v0 + 2218) = 2;
    v116 = *v139;
    *(v0 + 2223) = *(v0 + 3573);
    *(v0 + 2219) = v116;
    *(v0 + 2240) = 0u;
    *(v0 + 2224) = 0u;
    *(v0 + 16) = 1287;
    v117 = *v133;
    *(v0 + 22) = *(v0 + 3594);
    *(v0 + 18) = v117;
    *(v0 + 24) = v132;
    *(v0 + 32) = v131;
    *(v0 + 40) = v130;
    *(v0 + 48) = v129;
    *(v0 + 56) = 0;
    *(v0 + 64) = 0;
    *(v0 + 72) = v105;
    *(v0 + 80) = v107;
    *(v0 + 88) = v109;
    *(v0 + 96) = 0;
    *(v0 + 101) = 2;
    *(v0 + 97) = 33686018;
    *(v0 + 104) = 0;
    *(v0 + 112) = v110;
    v118 = *v134;
    *(v0 + 116) = *(v0 + 3564);
    *(v0 + 113) = v118;
    *(v0 + 120) = 0;
    *(v0 + 128) = v111;
    *(v0 + 129) = 1;
    v119 = *v135;
    *(v0 + 134) = *(v0 + 3626);
    *(v0 + 130) = v119;
    *(v0 + 136) = 0;
    *(v0 + 144) = v112;
    v120 = *v137;
    *(v0 + 148) = *(v0 + 3524);
    *(v0 + 145) = v120;
    *(v0 + 152) = 0;
    *(v0 + 160) = v113;
    *(v0 + 161) = 769;
    v121 = *v136;
    *(v0 + 167) = *(v0 + 3654);
    *(v0 + 163) = v121;
    *(v0 + 168) = 0;
    *(v0 + 176) = v114;
    v122 = *v138;
    *(v0 + 180) = *(v0 + 3556);
    *(v0 + 177) = v122;
    *(v0 + 184) = 0;
    *(v0 + 192) = 0;
    *(v0 + 200) = 514;
    *(v0 + 202) = 2;
    v123 = *v139;
    *(v0 + 207) = *(v0 + 3573);
    *(v0 + 203) = v123;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    sub_100010568(v0 + 2032, v0 + 2256);
    sub_10003AE8C(v0 + 16);
    sub_10000DA7C((v147 + *(v156 + 68)), *(v147 + *(v156 + 68) + 24));
    v124 = type metadata accessor for SnoutManager(0);
    v125 = swift_task_alloc();
    *(v0 + 3464) = v125;
    *v125 = v0;
    v125[1] = sub_10009473C;
    if (v153)
    {
      v126 = 0;
    }

    else
    {
      v126 = v150;
    }

    if (v153)
    {
      v127 = 2;
    }

    else
    {
      v127 = 0;
    }

    return (sub_10016E27C)(v0 + 2032, v126, 0, v127, v124, &off_100223858);
  }
}

uint64_t sub_100095720()
{
  v1 = *v0;
  v2 = *(*v0 + 3657);
  v3 = *(*v0 + 3128);

  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  if (v2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  sub_100098CA0(v4, 0, v5);
  sub_10003AE8C(v1 + 240);

  return _swift_task_switch(sub_10009585C, 0, 0);
}

uint64_t sub_10009585C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000958DC()
{
  sub_100044BF8(v0 + 2664, v0 + 2808);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 3128);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 134218498;
    *(v4 + 4) = v3;
    *(v4 + 12) = 2048;
    sub_100044C30(v0 + 2664);
    *(v4 + 14) = *(v0 + 2664);
    sub_100044C30(v0 + 2664);
    *(v4 + 22) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 24) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to create non allocated token for app %llu with id %ld, error: %@", v4, 0x20u);
    sub_10000DAF8(v5, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
    sub_100044C30(v0 + 2664);
    sub_100044C30(v0 + 2664);
  }

  v7 = v1;
  v8 = *(v0 + 3456);
  v45 = (v0 + 3617);
  v46 = (v0 + 3585);
  v42 = (v0 + 3638);
  v43 = (v0 + 3545);
  v44 = (v0 + 3529);
  v52 = *(v0 + 3400);
  v41 = (v0 + 3505);
  v9 = *(v0 + 3628);
  v40 = *(v0 + 3328);
  v39 = *(v0 + 3312);
  v38 = *(v0 + 3296);
  v10 = *(v0 + 3280);
  v11 = *(v0 + 3612);
  v12 = *(v0 + 3184);
  v37 = *(v0 + 3168);
  v13 = *(v0 + 3160);
  v14 = *(v0 + 3144);
  v15 = *(v0 + 3136);
  v54 = *(v0 + 3657);
  v53 = *(v0 + 3128);

  v16 = (v15 + v9);
  swift_errorRetain();
  v47 = sub_1000C7C10(v8);
  v48 = v17;
  v49 = v18;
  v50 = v19;
  static Date.now.getter();
  v10(v13, v11, v14);
  v20 = sub_100025808(v12, v13);
  LOBYTE(v10) = v21;
  v38(v13, v14);
  v39(v12, v37);
  if (v10)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  v23 = [v40 buildVersion];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  *(v0 + 690) = *(v0 + 3644);
  *(v0 + 785) = *v41;
  *(v0 + 802) = *v42;
  *(v0 + 820) = *(v0 + 3548);
  *(v0 + 817) = *v43;
  *(v0 + 835) = *v45;
  *(v0 + 852) = *(v0 + 3532);
  *(v0 + 849) = *v44;
  *(v0 + 875) = *v46;
  *(v0 + 1138) = *(v0 + 3644);
  *(v0 + 3504) = 1;
  *(v0 + 3512) = 1;
  *(v0 + 3528) = 1;
  *(v0 + 3544) = 1;
  *(v0 + 3560) = 1;
  *(v0 + 769) = 33686018;
  *(v0 + 1217) = 33686018;
  *(v0 + 1236) = *(v0 + 3508);
  *(v0 + 1233) = *v41;
  *(v0 + 1250) = *v42;
  *(v0 + 1268) = *(v0 + 3548);
  *(v0 + 1265) = *v43;
  *(v0 + 833) = 769;
  *(v0 + 1281) = 769;
  *(v0 + 1283) = *v45;
  *(v0 + 1300) = *(v0 + 3532);
  *(v0 + 1297) = *v44;
  *(v0 + 1323) = *v46;
  *(v0 + 694) = *(v0 + 3648);
  *(v0 + 728) = 0u;
  *(v0 + 788) = *(v0 + 3508);
  *(v0 + 806) = *(v0 + 3642);
  *(v0 + 839) = *(v0 + 3621);
  *(v0 + 856) = 0u;
  *(v0 + 879) = *(v0 + 3589);
  *(v0 + 688) = 5;
  *(v0 + 1136) = 5;
  *(v0 + 1142) = *(v0 + 3648);
  *(v0 + 696) = v47;
  *(v0 + 1144) = v47;
  *(v0 + 704) = v48;
  *(v0 + 1152) = v48;
  *(v0 + 712) = v49;
  *(v0 + 1160) = v49;
  *(v0 + 720) = v50;
  *(v0 + 1168) = v50;
  *(v0 + 1176) = 0u;
  *(v0 + 744) = v22;
  *(v0 + 1192) = v22;
  *(v0 + 752) = v24;
  *(v0 + 1200) = v24;
  *(v0 + 760) = v26;
  *(v0 + 1208) = v26;
  v27 = *(v0 + 3504);
  *(v0 + 784) = v27;
  *(v0 + 1232) = v27;
  v28 = *(v0 + 3512);
  *(v0 + 800) = v28;
  *(v0 + 1248) = v28;
  *(v0 + 801) = 3;
  *(v0 + 1249) = 3;
  *(v0 + 1254) = *(v0 + 3642);
  v29 = *(v0 + 3528);
  *(v0 + 816) = v29;
  *(v0 + 1264) = v29;
  v30 = *(v0 + 3544);
  *(v0 + 832) = v30;
  *(v0 + 1280) = v30;
  *(v0 + 1287) = *(v0 + 3621);
  v31 = *(v0 + 3560);
  *(v0 + 848) = v31;
  *(v0 + 1296) = v31;
  *(v0 + 768) = 0;
  *(v0 + 773) = 0;
  *(v0 + 776) = 0;
  *(v0 + 792) = 0;
  *(v0 + 808) = 0;
  *(v0 + 824) = 0;
  *(v0 + 840) = 0;
  *(v0 + 1304) = 0u;
  *(v0 + 872) = 514;
  *(v0 + 1320) = 514;
  *(v0 + 1327) = *(v0 + 3589);
  *(v0 + 874) = 2;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0u;
  *(v0 + 1216) = 0;
  *(v0 + 1221) = 0;
  *(v0 + 1224) = 0;
  *(v0 + 1240) = 0;
  *(v0 + 1256) = 0;
  *(v0 + 1272) = 0;
  *(v0 + 1288) = 0;
  *(v0 + 1322) = 2;
  *(v0 + 1344) = 0u;
  *(v0 + 1328) = 0u;
  sub_100010568(v0 + 688, v0 + 912);
  sub_10003AE8C(v0 + 1136);
  sub_10000DA7C(v16, v16[3]);
  v51 = (v52 + *v52);
  v32 = swift_task_alloc();
  *(v0 + 3488) = v32;
  *v32 = v0;
  v32[1] = sub_100095FA8;
  if (v54)
  {
    v33 = 0;
  }

  else
  {
    v33 = v53;
  }

  v34 = *(v0 + 3416);
  if (v54)
  {
    v35 = 2;
  }

  else
  {
    v35 = 0;
  }

  return (v51)(v0 + 688, v33, 0, v35, v34, &off_100223858);
}

uint64_t sub_100095FA8()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 688);

  return _swift_task_switch(sub_1000960AC, 0, 0);
}

uint64_t sub_1000960AC()
{

  v1 = *(v0 + 3440) + 1;
  if (v1 == *(v0 + 3432))
  {
    v2 = *(v0 + 3657);
    v3 = *(v0 + 3128);

    if (v2)
    {
      v4 = 0;
    }

    else
    {
      v4 = v3;
    }

    if (v2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    sub_100098CA0(v4, 0, v5);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    *(v0 + 3440) = v1;
    v8 = *(v0 + 3655);
    v9 = *(v0 + 3384) + 72 * v1;
    *(v0 + 2664) = *(v9 + 32);
    v11 = *(v9 + 64);
    v10 = *(v9 + 80);
    v12 = *(v9 + 48);
    *(v0 + 2728) = *(v9 + 96);
    *(v0 + 2696) = v11;
    *(v0 + 2712) = v10;
    *(v0 + 2680) = v12;
    sub_100044BF8(v0 + 2664, v0 + 2880);
    v13 = swift_task_alloc();
    *(v0 + 3448) = v13;
    *v13 = v0;
    v13[1] = sub_1000943E4;
    v14 = *(v0 + 3472);
    v15 = *(v0 + 3128);

    return sub_100096A48(v15, v0 + 2664, v14, v8 & 1);
  }
}

double sub_100096240@<D0>(uint64_t a2@<X8>)
{
  v4 = static ConversionType.downloadCases.getter();
  sub_1000E217C(v4, v8);

  if (!v2)
  {
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v9;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v7;
  }

  return result;
}

double sub_1000962E0@<D0>(uint64_t a2@<X8>)
{
  v4 = sub_10003FCC4(&off_100216658);
  sub_1000E217C(v4, v8);

  if (!v2)
  {
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v9;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v7;
  }

  return result;
}

uint64_t sub_100096388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Date();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100096460, 0, 0);
}

uint64_t sub_100096460()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];
  Date.init(timeIntervalSinceNow:)();
  v8 = (v7 + *(type metadata accessor for ReengagementConversionTask(0) + 24));
  v9 = v8[1];
  v15 = *v8;
  v10 = v8[2];
  (*(v3 + 16))(v2, v1, v5);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v0[10] = v12;
  (*(v3 + 32))(v12 + v11, v2, v5);
  *(v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v13 = swift_task_alloc();
  v0[11] = v13;
  *v13 = v0;
  v13[1] = sub_1000965F4;

  return sub_1001101F0(sub_100099654, v12, v15, v9, v10);
}

uint64_t sub_1000965F4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_1000967DC;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_100096740;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100096740()
{
  v1 = v0[13];
  v2 = v0[2];
  (*(v0[6] + 8))(v0[9], v0[5]);
  *v2 = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000967DC()
{
  (*(v0[6] + 8))(v0[9], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100096864(uint64_t a1)
{
  *(v1 + 40) = a1;
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = sub_10009690C;

  return sub_1001581F0(13);
}

uint64_t sub_10009690C(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 32) = a2;
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  *(v3 + 56) = a2;

  return _swift_task_switch(sub_100096A14, 0, 0);
}

uint64_t sub_100096A14()
{
  v1 = 24;
  if ((*(v0 + 56) & 1) == 0)
  {
    v1 = *(v0 + 24);
  }

  **(v0 + 40) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_100096A48(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 224) = a4;
  *(v5 + 80) = a3;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  v6 = type metadata accessor for UUID();
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  v7 = type metadata accessor for String.Encoding();
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_100096B6C, 0, 0);
}

uint64_t sub_100096B6C()
{
  if (!*(*(v0 + 80) + 16) || (v1 = sub_1000C3CA8(**(v0 + 72)), (v2 & 1) == 0))
  {
    sub_10005C97C();
    swift_allocError();
    *v11 = xmmword_1001BA630;
    *(v11 + 16) = 2;
    swift_willThrow();
    goto LABEL_6;
  }

  v3 = *(v0 + 72);
  v4 = (*(*(v0 + 80) + 56) + 48 * v1);
  *(v0 + 144) = v4[1];
  v5 = v4[2];
  v6 = v4[3];
  *(v0 + 152) = v6;
  v7 = v4[4];
  *(v0 + 160) = v4[5];
  v8 = *(v3 + 64);
  if (v8)
  {
    v9 = *(v3 + 56);
    sub_10005C97C();
    swift_allocError();
    *v10 = v9;
    *(v10 + 8) = v8;
    *(v10 + 16) = 0;
    swift_willThrow();

LABEL_6:

    v12 = *(v0 + 8);

    return v12();
  }

  *(v0 + 16) = *(v3 + 40);
  if (!*(v0 + 24) || !*(v3 + 16) || !*(v3 + 32))
  {

    v29 = sub_1000D474C(v3);
    v31 = v30;
    v33 = v32;
    sub_10005C97C();
    swift_allocError();
    *v34 = v29;
    *(v34 + 8) = v31;
    *(v34 + 16) = v33;
    goto LABEL_21;
  }

  v49 = *(v3 + 32);
  v50 = *(v3 + 16);
  v51 = *(v0 + 24);
  v46 = v5;
  v52 = *(v0 + 16);
  v47 = *(v3 + 8);
  v48 = *(v3 + 24);
  v54 = *(v0 + 136);
  v55 = *(v0 + 128);
  v56 = *(v0 + 120);
  v53 = *(v0 + 224);
  *(v0 + 48) = *(v0 + 64);
  v14 = v7;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  sub_100014B50(v0 + 16, v0 + 32, &qword_10023AEA8, &unk_1001B7AD0);
  dispatch thunk of CustomStringConvertible.description.getter();

  v15._countAndFlagsBits = 10715618;
  v15._object = 0xA300000000000000;
  String.append(_:)(v15);

  *(v0 + 56) = v14;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 10715618;
  v20._object = 0xA300000000000000;
  String.append(_:)(v20);

  if (v53)
  {
    v21 = 1146049104;
  }

  else
  {
    v21 = 5653828;
  }

  if (v53)
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE300000000000000;
  }

  v23 = v22;
  String.append(_:)(*&v21);

  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  String.append(_:)(v24);

  static String.Encoding.utf8.getter();
  v25 = String.data(using:allowLossyConversion:)();
  v27 = v26;

  *(v0 + 168) = v25;
  *(v0 + 176) = v27;
  (*(v55 + 8))(v54, v56);
  if (v27 >> 60 == 15)
  {
    sub_10000DAF8(v0 + 16, &qword_10023AEA8, &unk_1001B7AD0);

    sub_10005C97C();
    swift_allocError();
    *v28 = xmmword_1001BA620;
    *(v28 + 16) = 2;
LABEL_21:
    swift_willThrow();

    goto LABEL_6;
  }

  *(v0 + 184) = sub_1000EBBA4(v25, v27, v52, v51, v47, v50, v48, v49);
  *(v0 + 192) = v35;
  v37 = *(v0 + 104);
  v36 = *(v0 + 112);
  v38 = *(v0 + 96);
  v39 = *(v0 + 224);
  v57 = *(v0 + 64);

  v40 = Data.base64EncodedString(options:)(0);
  UUID.init()();
  v41 = UUID.uuidString.getter();
  v43 = v42;
  (*(v37 + 8))(v36, v38);

  type metadata accessor for ReengagementConversionTask(0);
  v44 = swift_allocObject();
  *(v0 + 200) = v44;
  *(v44 + 16) = 0;
  *(v44 + 24) = 1;
  *(v44 + 32) = v41;
  *(v44 + 40) = v43;
  *(v44 + 48) = v57;
  *(v44 + 56) = v46;
  *(v44 + 64) = v6;
  *(v44 + 72) = v40;
  *(v44 + 88) = v14;
  *(v44 + 96) = v52;
  *(v44 + 104) = v51;
  *(v44 + 112) = 2;
  *(v44 + 113) = v39 & 1;
  *(v44 + 114) = 0;
  v45 = swift_task_alloc();
  *(v0 + 208) = v45;
  *v45 = v0;
  v45[1] = sub_1000971F4;

  return (sub_10010EB50)();
}

uint64_t sub_1000971F4()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1000973F4;
  }

  else
  {
    v2 = sub_100097328;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100097328()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];

  sub_10001BABC(v1, v2);

  sub_10005CB30(v4, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000973F4()
{
  v1 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v3 = v0[22];

  sub_10001BABC(v1, v2);

  sub_10005CB30(v4, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000974B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_100089B80();
}

uint64_t sub_100097544()
{
  v1 = (sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[19];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for AppImpressionPayload(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100097684(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009777C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000CDE0(&qword_10023BCD0, &unk_1001BA6A8);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 48 * v20);
      v23 = v22[1];
      v24 = v22[3];
      v38 = v22[2];
      v39 = *v22;
      v25 = v22[5];
      v37 = v22[4];
      if ((v36 & 1) == 0)
      {
      }

      result = static Hasher._hash(seed:_:)();
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 48 * v15);
      *v16 = v39;
      v16[1] = v23;
      v16[2] = v38;
      v16[3] = v24;
      v16[4] = v37;
      v16[5] = v25;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
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

uint64_t sub_100097A3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000CDE0(&qword_10023BCF0, &qword_1001BA6E8);
  v47 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v45 = v3;
    v46 = v5;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 224 * v20;
      if (v47)
      {
        v51 = *v22;
        v52 = *(v22 + 16);
        v53 = *(v22 + 32);
        v23 = *(v22 + 48);
        v56 = *(v22 + 56);
        v24 = *(v22 + 64);
        v54 = *(v22 + 72);
        v55 = *(v22 + 88);
        v57 = *(v22 + 104);
        v58 = *(v22 + 120);
        v59 = *(v22 + 128);
        v25 = *(v22 + 136);
        v60 = *(v22 + 144);
        v61 = *(v22 + 176);
        v62 = *(v22 + 160);
        v63 = *(v22 + 192);
        v48 = *(v22 + 168);
        v49 = *(v22 + 200);
        v64 = *(v22 + 201);
        v65 = *(v22 + 208);
        v50 = *(v22 + 216);
      }

      else
      {
        v26 = *(v22 + 16);
        v67 = *v22;
        v68 = v26;
        v27 = *(v22 + 80);
        v29 = *(v22 + 32);
        v28 = *(v22 + 48);
        *v71 = *(v22 + 64);
        *&v71[16] = v27;
        v69 = v29;
        v70 = v28;
        v30 = *(v22 + 144);
        v32 = *(v22 + 96);
        v31 = *(v22 + 112);
        v72 = *(v22 + 128);
        v73 = v30;
        *&v71[32] = v32;
        *&v71[48] = v31;
        v34 = *(v22 + 176);
        v33 = *(v22 + 192);
        v36 = *(v22 + 160);
        *&v76[9] = *(v22 + 201);
        v35 = *&v76[9];
        v75 = v34;
        *v76 = v33;
        v74 = v36;
        v65 = v35 >> 56;
        v64 = BYTE9(v33);
        v49 = BYTE8(v33);
        v50 = HIBYTE(v35);
        v62 = v36;
        v63 = v33;
        v48 = BYTE8(v36);
        v60 = v73;
        v61 = v34;
        v25 = BYTE8(v72);
        v58 = *&v71[56];
        v59 = v72;
        v57 = *&v71[40];
        v54 = *&v71[8];
        v55 = *&v71[24];
        v56 = *(&v70 + 1);
        v24 = v71[0];
        v23 = v70;
        v53 = v69;
        v51 = v67;
        v52 = v68;
        sub_10000E870(&v67, v66);
      }

      result = static Hasher._hash(seed:_:)();
      v37 = -1 << *(v7 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v14 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v14 + 8 * v39);
          if (v43 != -1)
          {
            v15 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v38) & ~*(v14 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v67) = v23;
      v66[0] = v24;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 224 * v15;
      *v16 = v51;
      *(v16 + 16) = v52;
      *(v16 + 32) = v53;
      *(v16 + 48) = v23;
      *(v16 + 56) = v56;
      *(v16 + 64) = v24;
      *(v16 + 72) = v54;
      *(v16 + 88) = v55;
      *(v16 + 104) = v57;
      *(v16 + 120) = v58;
      *(v16 + 128) = v59;
      *(v16 + 136) = v25;
      *(v16 + 144) = v60;
      *(v16 + 160) = v62;
      *(v16 + 168) = v48;
      *(v16 + 176) = v61;
      *(v16 + 192) = v63;
      *(v16 + 200) = v49;
      *(v16 + 201) = v64;
      *(v16 + 208) = v65;
      *(v16 + 216) = v50;
      ++*(v7 + 16);
      v5 = v46;
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

    if ((v47 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_34;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v9, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100097EC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000CDE0(&qword_10023BCE8, &qword_1001BA6E0);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + (v20 << 6);
      if (v39)
      {
        v24 = *v22;
        v23 = *(v22 + 8);
        v41 = *(v22 + 16);
        v40 = *(v22 + 24);
        v42 = *(v22 + 40);
        v25 = *(v22 + 56);
      }

      else
      {
        v26 = *v22;
        v27 = *(v22 + 16);
        v28 = *(v22 + 32);
        *&v45[25] = *(v22 + 41);
        *v45 = v27;
        *&v45[16] = v28;
        v44 = v26;
        v25 = v45[40];
        v42 = __PAIR128__(*&v45[32], *(&v28 + 1));
        v40 = *&v45[8];
        v41 = v27;
        v23 = *(&v26 + 1);
        v24 = v26;
        sub_10000E7C0(&v44, v43);
      }

      result = static Hasher._hash(seed:_:)();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v44) = v25;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + (v15 << 6);
      *v16 = v24;
      *(v16 + 8) = v23;
      *(v16 + 16) = v41;
      *(v16 + 24) = v40;
      *(v16 + 40) = v42;
      *(v16 + 56) = v25;
      ++*(v7 + 16);
      v5 = v38;
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

    if (v39)
    {
      v36 = 1 << *(v5 + 32);
      if (v36 >= 64)
      {
        bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v36;
      }

      *(v5 + 16) = 0;
    }

    v3 = v37;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_1000981D0(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = a1[1];
  v26 = *a1;
  v9 = a1[2];
  v8 = a1[3];
  v11 = a1[4];
  v10 = a1[5];
  v12 = *v3;
  v13 = sub_1000C3CA8(a2);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      v21 = v13;
      sub_1000983A4();
      v13 = v21;
      goto LABEL_8;
    }

    sub_10009777C(v18, a3 & 1);
    v13 = sub_1000C3CA8(a2);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v4;
  if (v19)
  {
    v24 = (v23[7] + 48 * v13);
    *v24 = v26;
    v24[1] = v7;
    v24[2] = v9;
    v24[3] = v8;
    v24[4] = v11;
    v24[5] = v10;
  }

  else
  {
    *&v27 = v26;
    *(&v27 + 1) = v7;
    v28 = v9;
    v29 = v8;
    v30 = v11;
    v31 = v10;
    return sub_10009834C(v13, a2, &v27, v23);
  }
}

unint64_t sub_10009834C(unint64_t result, uint64_t a2, __int128 *a3, void *a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *(a3 + 4);
  v7 = *(a3 + 5);
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v8 = a4[7] + 48 * result;
  *v8 = v4;
  *(v8 + 16) = v5;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

void *sub_1000983A4()
{
  v1 = v0;
  sub_10000CDE0(&qword_10023BCD0, &unk_1001BA6A8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = (*(v2 + 56) + 48 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = v18[4];
        v24 = v18[5];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v25 = (*(v4 + 56) + 48 * v17);
        *v25 = v20;
        v25[1] = v19;
        v25[2] = v21;
        v25[3] = v22;
        v25[4] = v23;
        v25[5] = v24;
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

void *sub_100098538()
{
  v1 = v0;
  sub_10000CDE0(&qword_10023BCF0, &qword_1001BA6E8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_10000E870(&v41, &v40))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 8 * v16);
      v18 = (*(v2 + 56) + 224 * v16);
      v19 = v18[2];
      v20 = v18[3];
      v21 = v18[5];
      v45 = v18[4];
      v46 = v21;
      v44 = v20;
      v22 = v18[9];
      v24 = v18[6];
      v23 = v18[7];
      v49 = v18[8];
      v50 = v22;
      v47 = v24;
      v48 = v23;
      v26 = v18[11];
      v25 = v18[12];
      v27 = v18[10];
      *(v53 + 9) = *(v18 + 201);
      v52 = v26;
      v53[0] = v25;
      v51 = v27;
      v28 = v18[1];
      v41 = *v18;
      v42 = v28;
      v43 = v19;
      *(*(v4 + 48) + 8 * v16) = v17;
      v29 = (*(v4 + 56) + 224 * v16);
      v30 = v42;
      *v29 = v41;
      v29[1] = v30;
      v31 = v43;
      v32 = v44;
      v33 = v46;
      v29[4] = v45;
      v29[5] = v33;
      v29[2] = v31;
      v29[3] = v32;
      v34 = v47;
      v35 = v48;
      v36 = v50;
      v29[8] = v49;
      v29[9] = v36;
      v29[6] = v34;
      v29[7] = v35;
      v37 = v51;
      v38 = v52;
      v39 = v53[0];
      *(v29 + 201) = *(v53 + 9);
      v29[11] = v38;
      v29[12] = v39;
      v29[10] = v37;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_10009873C()
{
  v1 = v0;
  sub_10000CDE0(&qword_10023BCE8, &qword_1001BA6E0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + (v17 << 6));
        v21 = v19[1];
        v20 = v19[2];
        v22 = *v19;
        *&v30[9] = *(v19 + 41);
        v29 = v21;
        *v30 = v20;
        v28 = v22;
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = (*(v4 + 56) + (v17 << 6));
        v24 = v28;
        v25 = v29;
        v26 = *v30;
        *(v23 + 41) = *&v30[9];
        v23[1] = v25;
        v23[2] = v26;
        *v23 = v24;
        result = sub_10000E7C0(&v28, &v27);
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

uint64_t sub_1000988DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100098984(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_100098A3C(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_100098984(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_100098AF0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

__n128 sub_100098B90@<Q0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for Date() - 8);
  sub_10005E514(*(v1 + 16), *(v1 + 24), v1 + ((*(v4 + 80) + 25) & ~*(v4 + 80)), v8);
  if (!v2)
  {
    v6 = *v9;
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v6;
    *(a1 + 95) = *&v9[15];
    v7 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v7;
    result = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_100098CA0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_100098CB8()
{

  return _swift_deallocObject(v0, 115, 7);
}

uint64_t sub_100098D08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100098D70()
{
  v1 = type metadata accessor for ReengagementConversionTask(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for ReengagementConversionTask.RegisterConversionParcel(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = v5 + *(v6 + 20);

    v8 = v7 + *(sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840) + 68);
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 8))(v8, v9);
    type metadata accessor for AppImpressionPayload(0);
  }

  v10 = v5 + v1[5];

  v11 = v5 + v1[6];

  v12 = v5 + v1[7];

  v13 = v5 + v1[8];

  v14 = v5 + v1[9];

  sub_10000DB58((v5 + v1[10]));
  sub_10000DB58((v5 + v1[11]));
  sub_10000DB58((v5 + v1[12]));
  sub_10000DB58((v5 + v1[13]));
  sub_10000DB58((v5 + v1[14]));
  sub_10000DB58((v5 + v1[15]));
  v15 = v1[16];
  v16 = type metadata accessor for Logger();
  (*(*(v16 - 8) + 8))(v5 + v15, v16);
  sub_10000DB58((v5 + v1[17]));

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100099038(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000990A0(uint64_t a1)
{
  v4 = *(type metadata accessor for ReengagementConversionTask(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BD30;

  return sub_100096388(a1, v1 + v5, v6);
}

uint64_t sub_1000991AC()
{
  v1 = type metadata accessor for ReengagementConversionTask(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for ReengagementConversionTask.RegisterConversionParcel(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = v5 + *(v6 + 20);

    v8 = v7 + *(sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840) + 68);
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 8))(v8, v9);
    type metadata accessor for AppImpressionPayload(0);
  }

  v10 = v5 + v1[5];

  v11 = v5 + v1[6];

  v12 = v5 + v1[7];

  v13 = v5 + v1[8];

  v14 = v5 + v1[9];

  sub_10000DB58((v5 + v1[10]));
  sub_10000DB58((v5 + v1[11]));
  sub_10000DB58((v5 + v1[12]));
  sub_10000DB58((v5 + v1[13]));
  sub_10000DB58((v5 + v1[14]));
  sub_10000DB58((v5 + v1[15]));
  v15 = v1[16];
  v16 = type metadata accessor for Logger();
  (*(*(v16 - 8) + 8))(v5 + v15, v16);
  sub_10000DB58((v5 + v1[17]));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100099468(uint64_t a1)
{
  type metadata accessor for ReengagementConversionTask(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000152E0;

  return sub_100096864(a1);
}

uint64_t sub_100099544()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000995CC(void *a1@<X8>)
{
  v4 = *(type metadata accessor for Date() - 8);
  sub_10005ECD8(v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), 2);
  if (!v2)
  {
    *a1 = v5;
  }
}

uint64_t sub_10009966C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100099684()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100099718(void *a1@<X8>)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  sub_10005E974(v1 + v5, 2, *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)));
  if (!v2)
  {
    *a1 = v6;
  }
}

unint64_t sub_1000997C8()
{
  result = qword_10023BCE0;
  if (!qword_10023BCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BCE0);
  }

  return result;
}

BOOL sub_100099828(void *a1)
{
  v1 = a1;
  v2 = [v1 iTunesMetadata];
  v3 = [v2 storeItemIdentifier];

  v4 = [v1 iTunesMetadata];
  v5 = [v4 distributorInfo];

  v6 = [v5 distributorID];
  result = 0;
  if (v6)
  {

    if (v3)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100099904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReengagementConversionTask.RegisterConversionParcel(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100099984(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for ReengagementConversionTask.RegisterConversionParcel(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100099A04(uint64_t a1)
{
  v1 = type metadata accessor for ReengagementConversionTask.RegisterConversionParcel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_100099A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100099B54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100099C20(uint64_t a1)
{
  sub_100099CF4(319);
  if (v1 <= 0x3F)
  {
    sub_100079458(319, &qword_10023A198, &type metadata for UInt64);
    if (v2 <= 0x3F)
    {
      sub_100079458(319, &unk_10023BE08, &type metadata for AttributionCooldown);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100099CF4(uint64_t a1)
{
  if (!qword_10023BE00)
  {
    v4[0] = &type metadata for AppImpressionHeader;
    v4[1] = type metadata accessor for AppImpressionPayload(255);
    v4[2] = sub_10003AFB8();
    v4[3] = sub_10003B00C();
    v4[4] = sub_100099DEC(&qword_10023A808, type metadata accessor for AppImpressionPayload, &protocol conformance descriptor for AppImpressionPayload);
    v4[5] = sub_100099DEC(&qword_10023A810, type metadata accessor for AppImpressionPayload, &protocol conformance descriptor for AppImpressionPayload);
    v2 = type metadata accessor for JWS(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_10023BE00);
    }
  }
}

uint64_t sub_100099DEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100099E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ReengagementConversionTask.Operation(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Logger();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 64);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100099F84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ReengagementConversionTask.Operation(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Logger();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 64);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10009A0AC(uint64_t a1)
{
  result = type metadata accessor for ReengagementConversionTask.Operation(319);
  if (v2 <= 0x3F)
  {
    result = sub_100054FCC(319, &qword_10023AE00, &protocol descriptor for PostbackAttributionManager);
    if (v3 <= 0x3F)
    {
      result = sub_100054FCC(319, &qword_10023AE08, &protocol descriptor for TokenClientFactory);
      if (v4 <= 0x3F)
      {
        result = sub_100054FCC(319, &qword_10023AE10, &protocol descriptor for TaskRunner);
        if (v5 <= 0x3F)
        {
          result = sub_100054FCC(319, &qword_10023AE18, &protocol descriptor for RecordFactory);
          if (v6 <= 0x3F)
          {
            result = sub_100054FCC(319, &qword_10023BEB0, &protocol descriptor for DogBag);
            if (v7 <= 0x3F)
            {
              result = sub_100054FCC(319, &unk_10023BEB8, &protocol descriptor for Casino);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for Logger();
                if (v9 <= 0x3F)
                {
                  result = sub_100054FCC(319, &unk_10023AE20, &protocol descriptor for SnoutLogger);
                  if (v10 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10009A2B8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = v37 - v9;
  __chkstk_darwin(v8);
  v12 = v37 - v11;
  v13 = sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  __chkstk_darwin(v13 - 8);
  v15 = v37 - v14;
  v16 = v1[1];
  if (v16)
  {
    sub_1000BFD48(*v1, v16);
    if (v18)
    {
      v37[0] = 0x2F2F3A7370747468;
      v37[1] = 0xE800000000000000;
      String.append(_:)(*&v17);

      v19._object = 0x80000001001CC060;
      v19._countAndFlagsBits = 0xD00000000000002FLL;
      String.append(_:)(v19);

      URL.init(string:)();

      v20 = type metadata accessor for URL();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v15, 1, v20) != 1)
      {
        (*(v21 + 32))(a1, v15, v20);
        return (*(v21 + 56))(a1, 0, 1, v20);
      }

      sub_10001B884(v15);
      v22 = Logger.general.unsafeMutableAddressor();
      (*(v4 + 16))(v12, v22, v3);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      v25 = 2;
      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_14;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to create URL from developer copy URL string", v26, 2u);
    }

    else
    {
      v33 = Logger.general.unsafeMutableAddressor();
      (*(v4 + 16))(v10, v33, v3);
      v23 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v23, v34))
      {
        v25 = 1;
        v12 = v10;
        goto LABEL_14;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v23, v34, "Could not extract eTLD from developer copy URL", v35, 2u);
      v25 = 1;
      v12 = v10;
    }

LABEL_14:

    (*(v4 + 8))(v12, v3);
    sub_1000401C4();
    swift_allocError();
    v36[1] = 0;
    v36[2] = 0;
    *v36 = v25;
    return swift_willThrow();
  }

  v27 = Logger.general.unsafeMutableAddressor();
  (*(v4 + 16))(v7, v27, v3);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Developer copy URL absent", v30, 2u);
  }

  (*(v4 + 8))(v7, v3);
  v31 = type metadata accessor for URL();
  return (*(*(v31 - 8) + 56))(a1, 1, 1, v31);
}

Swift::Int sub_10009A7B4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10009A86C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10009A910(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10009A9C4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10009AD0C(*a1);
  *a2 = result;
  return result;
}

void sub_10009A9F4(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000017;
  v3 = "skan_impression_data";
  v4 = "agementPostbackCopies";
  v5 = 0xD000000000000031;
  if (*v1 != 2)
  {
    v5 = 0xD00000000000001ELL;
    v4 = "appingConversions";
  }

  if (*v1)
  {
    v2 = 0xD000000000000035;
    v3 = "AttributionCopyEndpoint";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_10009AA6C()
{
  v1 = 0xD000000000000017;
  v2 = 0xD000000000000031;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000035;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10009AAE0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10009AD0C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10009AB08(uint64_t a1)
{
  v2 = sub_10009B0A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009AB44(uint64_t a1)
{
  v2 = sub_10009B0A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10009AB80@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10009AD58(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_10009ABCC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009ABF0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10009AC14(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009AC38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10009AC94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10009AD0C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215F38, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10009AD58@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023BF30, &qword_1001BA870);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_10009B0A0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  LOBYTE(v31[0]) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v12 = v9;
  LOBYTE(v31[0]) = 1;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v31[0]) = 2;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v46 = 3;
  sub_10009B0F4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v24 = v41;
  v13 = *(&v42 + 1);
  v23 = v42;
  v22 = *(&v43 + 1);
  v14 = v43;
  v20 = *(&v44 + 1);
  v21 = v44;
  *&v26 = v12;
  *(&v26 + 1) = v11;
  v15 = v45;
  LOBYTE(v27) = v45;
  v16 = v25;
  BYTE1(v27) = v25;
  *(&v27 + 1) = v41;
  v28 = v42;
  v29 = v43;
  v30 = v44;
  sub_10009B148(&v26, v31);
  sub_10000DB58(a1);
  v31[0] = v12;
  v31[1] = v11;
  v32 = v15;
  v33 = v16;
  v34 = v24;
  v35 = v23;
  v36 = v13;
  v37 = v14;
  v38 = v22;
  v39 = v21;
  v40 = v20;
  result = sub_10009B180(v31);
  v18 = v29;
  a2[2] = v28;
  a2[3] = v18;
  a2[4] = v30;
  v19 = v27;
  *a2 = v26;
  a2[1] = v19;
  return result;
}

unint64_t sub_10009B0A0()
{
  result = qword_10023BF38;
  if (!qword_10023BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BF38);
  }

  return result;
}

unint64_t sub_10009B0F4()
{
  result = qword_10023BF40;
  if (!qword_10023BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BF40);
  }

  return result;
}

unint64_t sub_10009B1C4()
{
  result = qword_10023BF48;
  if (!qword_10023BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BF48);
  }

  return result;
}

unint64_t sub_10009B21C()
{
  result = qword_10023BF50;
  if (!qword_10023BF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BF50);
  }

  return result;
}

unint64_t sub_10009B274()
{
  result = qword_10023BF58;
  if (!qword_10023BF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BF58);
  }

  return result;
}

id sub_10009B468(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GhostbackEntity();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10009B4C4()
{
  result = qword_10023BF88;
  if (!qword_10023BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023BF88);
  }

  return result;
}

uint64_t sub_10009B518(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v25 = *(a1 + 16);
  sub_100146DA4(0, v1, 0);
  v3 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v5 = v25;
  v6 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v8 = result >> 6;
    v9 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_26;
    }

    if (*(*(a1 + 48) + result))
    {
      if (*(*(a1 + 48) + result) == 1)
      {
        v10 = 0xEA00000000006461;
        v11 = 0x6F6C6E776F646572;
      }

      else
      {
        v11 = 0x6761676E652D6572;
        v10 = 0xED0000746E656D65;
      }
    }

    else
    {
      v10 = 0xE800000000000000;
      v11 = 0x64616F6C6E776F64;
    }

    v12 = *(a1 + 36);
    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_100146DA4((v13 > 1), v14 + 1, 1);
      v5 = v25;
      v12 = v23;
      result = v24;
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = &_swiftEmptyArrayStorage[2 * v14];
    v15[4] = v11;
    v15[5] = v10;
    v7 = 1 << *(a1 + 32);
    if (result >= v7)
    {
      goto LABEL_27;
    }

    v3 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v8);
    if ((v16 & v9) == 0)
    {
      goto LABEL_28;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_29;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v7 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v8 << 6;
      v19 = v8 + 1;
      v20 = (a1 + 64 + 8 * v8);
      while (v19 < (v7 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_10009C048(result, v12, 0);
          v5 = v25;
          v7 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_10009C048(result, v12, 0);
      v5 = v25;
    }

LABEL_4:
    ++v6;
    result = v7;
    if (v6 == v5)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_10009B79C(uint64_t a1, uint64_t a2)
{
  v3 = [v2 connection];
  v4 = String._bridgeToObjectiveC()();

  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = [objc_opt_self() predicateWithProperty:v4 equalToValue:v5];
  swift_unknownObjectRelease();

  v7 = sub_100085FF0(v3, v6, _swiftEmptyArrayStorage, 0, 0);
  if (([v7 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_10009B914(uint64_t a1, char a2)
{
  sub_10000CDE0(&qword_10023AFD0, &qword_1001B7F18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B75D0;
  v3 = String._bridgeToObjectiveC()();
  v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v5 = objc_opt_self();
  v6 = [v5 predicateWithProperty:v3 equalToValue:v4];
  swift_unknownObjectRelease();

  *(inited + 32) = v6;
  Date.timeIntervalSince1970.getter();
  v8 = v7 * 1000.0;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v8 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v8 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v9 = String._bridgeToObjectiveC()();
  v10 = [v5 predicateWithProperty:v9 value:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() comparisonType:4];
  swift_unknownObjectRelease();

  *(inited + 40) = v10;
  v11 = String._bridgeToObjectiveC()();

  v12 = [v5 predicateWithProperty:v11 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 48) = v12;
  v13 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023C000, &qword_1001B7F20);
  swift_arrayDestroy();
  v14 = [v17 connection];
  v15 = v13;
  v16 = sub_100085FF0(v14, v13, _swiftEmptyArrayStorage, 0, 0);
  if (([v16 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_10009BCC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10009B518(a2);
  sub_10000CDE0(&unk_10023BFE0, qword_1001BAA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  Date.timeIntervalSince1970.getter();
  v6 = v5 * 1000.0;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v9 = [objc_opt_self() predicateWithProperty:v7 value:v8 comparisonType:4];
  swift_unknownObjectRelease();

  *(inited + 32) = v9;
  v10 = String._bridgeToObjectiveC()();
  sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
  v11 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v12 = [objc_opt_self() containsPredicateWithProperty:v10 values:v11];
  swift_unknownObjectRelease();

  *(inited + 40) = v12;
  v13 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023BFF0, &qword_1001B7F10);
  swift_arrayDestroy();
  v14 = [v3 connection];
  v15 = v13;
  v16 = sub_100086388(v14, v13, _swiftEmptyArrayStorage, 0, 0);
  if (([v16 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

uint64_t sub_10009C048(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10009C1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1000152E0;

  return sub_1000FCBD0(a3, a4);
}

uint64_t sub_10009C464(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10009C4F8;

  return sub_1000FD8D0();
}

uint64_t sub_10009C4F8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return _swift_task_switch(sub_10009C5F8, 0, 0);
}

uint64_t sub_10009C8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1000152E0;

  return sub_1000FDE20(a3, a4);
}

uint64_t sub_10009CB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1000152E0;

  return sub_1000FE3BC(a3, a4);
}

uint64_t sub_10009CE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_10000BD30;

  return sub_1000FE914(a3, a4);
}

uint64_t sub_10009D13C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009D174()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009D1AC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000BD30;

  return sub_10009CE3C(a1, a2, v7, v6);
}

uint64_t sub_10009D25C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10009D2F0;

  return sub_1000FC8B4();
}

uint64_t sub_10009D2F0()
{

  return _swift_task_switch(sub_100084968, 0, 0);
}

uint64_t sub_10009D3EC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10009D480;

  return sub_1000FDC0C();
}

uint64_t sub_10009D480()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_10009DAA0, 0, 0);
  }
}

uint64_t sub_10009D5B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_10009D480;

  return v9(a2, a3);
}

uint64_t sub_10009D6B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009D6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000152E0;

  return sub_10009D5B0(a1, a2, a3, v8);
}

uint64_t sub_10009D7BC(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009D828(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000152E0;

  return sub_10009CB90(a1, a2, v7, v6);
}

uint64_t sub_10009D8D8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000152E0;

  return sub_10009C8E4(a1, a2, v7, v6);
}

uint64_t sub_10009D988()
{
  sub_10001BABC(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009D9C0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000152E0;

  return sub_10009C1B8(a1, a2, v7, v6);
}

unint64_t sub_10009DAA4(uint64_t a1)
{
  result = sub_100080044();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009DACC(uint64_t a1)
{
  result = sub_10009DAF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10009DAF4()
{
  result = qword_10023C040;
  if (!qword_10023C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C040);
  }

  return result;
}

uint64_t sub_10009DB48(uint64_t a1)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v6 = String.init<A>(describing:)();
  (*(v3 + 16))(v5, v1, a1);
  String.init<A>(describing:)();
  return v6;
}

uint64_t sub_10009DD18(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10009E494(2u);
  if (v8)
  {
    v9 = objc_opt_self();
    v10 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_];
    [a1 setRemoteObjectInterface:v10];

    v11 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon28DeveloperModeServiceProtocol_];
    [a1 setExportedInterface:v11];

    [a1 setExportedObject:*(v2 + OBJC_IVAR____TtC20AttributionKitDaemon36DeveloperModeServiceListenerDelegate_serviceBridge)];
    [a1 resume];
    v12 = [a1 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000CDE0(&unk_10023B880, &unk_1001B95F0);
    if (swift_dynamicCast())
    {
      swift_getObjectType();
      XPCClientProtocol.handleMessage(_:)(0, 0);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v13 = Logger.xpc.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v13, v4);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Missing entitlement for DeveloperModeService", v16, 2u);
    }

    (*(v5 + 8))(v7, v4);
  }

  return v8 & 1;
}

unint64_t sub_10009DFE4()
{
  result = qword_10023C080;
  if (!qword_10023C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C080);
  }

  return result;
}

void sub_10009E048(_BYTE *result, uint64_t a2)
{
  if ((*result & 1) == 0)
  {
    sub_10009E274(a2);
  }
}

unint64_t sub_10009E080(void *a1)
{
  a1[1] = sub_10009E0B8();
  a1[2] = sub_10009E10C();
  result = sub_10009E160();
  a1[3] = result;
  return result;
}

unint64_t sub_10009E0B8()
{
  result = qword_10023C0C8;
  if (!qword_10023C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C0C8);
  }

  return result;
}

unint64_t sub_10009E10C()
{
  result = qword_10023C0D0;
  if (!qword_10023C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C0D0);
  }

  return result;
}

unint64_t sub_10009E160()
{
  result = qword_10023C0D8;
  if (!qword_10023C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C0D8);
  }

  return result;
}

unint64_t sub_10009E1B8()
{
  result = qword_10023C0E0;
  if (!qword_10023C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C0E0);
  }

  return result;
}

unint64_t sub_10009E210()
{
  result = qword_10023C0E8;
  if (!qword_10023C0E8)
  {
    sub_10000CCC0(&qword_10023C0F0, &qword_1001BAD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C0E8);
  }

  return result;
}

void sub_10009E274(uint64_t a1)
{
  _StringGuts.grow(_:)(107);
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v2._object = 0x80000001001CB510;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x6F635F7972746572;
  v3._object = 0xEB00000000746E75;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 665632;
  v4._object = 0xE300000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x696669746E656469;
  v5._object = 0xEA00000000007265;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0xA2C5458455420;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  v7._object = 0xEA0000000000656DLL;
  v7._countAndFlagsBits = 0x616E5F70756F7267;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xA2C5458455420;
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6F635F7972746572;
  v9._object = 0xEB00000000746E75;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x52454745544E4920;
  v10._object = 0xEA00000000000A2CLL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0xD000000000000016;
  v11._object = 0x80000001001CA100;
  String.append(_:)(v11);
  v12._object = 0x80000001001CB530;
  v12._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x696669746E656469;
  v13._object = 0xEA00000000007265;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000018;
  v14._object = 0x80000001001CB550;
  String.append(_:)(v14);
  v15 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v15);
}

uint64_t sub_10009E494(unsigned __int8 a1)
{
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 valueForEntitlement:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_10009E5CC(v8);
  }

  return 0;
}

uint64_t sub_10009E5CC(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023BB90, &qword_1001BA370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009E634()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForEntitlement:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_10009E5CC(v7);
  }

  return 0;
}

unint64_t sub_10009E8EC()
{
  result = qword_10023C120;
  if (!qword_10023C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C120);
  }

  return result;
}

uint64_t sub_10009E948(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 504))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009E990(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 504) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 504) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10009EA60@<X0>(void *a1@<X8>)
{
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v2 = qword_10023FC50;
  sub_1000B44B4(a1 + 18);
  a1[26] = &type metadata for LaunchServicesRecordFactory;
  a1[27] = &off_10021CBA8;
  a1[31] = &type metadata for DogTokenClientFactory;
  a1[32] = &off_100219C38;
  if (qword_100239C90 != -1)
  {
    swift_once();
  }

  v3 = qword_10023FC28;
  v9 = type metadata accessor for TaskGreyhound(0);
  a1[36] = v9;
  a1[37] = &off_1002169F0;
  a1[33] = v3;
  a1[41] = &type metadata for AMSDogBag;
  a1[42] = &off_100222F48;
  a1[46] = &type metadata for CasinoDog;
  a1[47] = &off_1002179A0;
  v4 = qword_100239D30;
  swift_retain_n();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_10023FD90;
  v6 = type metadata accessor for SnoutManager(0);
  a1[51] = v6;
  a1[52] = &off_100223858;
  a1[48] = v5;
  *a1 = 0x74735F6E656B6F74;
  a1[1] = 0xEB0000000065726FLL;
  a1[2] = v2;
  a1[3] = 0xD000000000000010;
  a1[4] = 0x80000001001CB320;
  a1[5] = v2;
  a1[6] = 0xD000000000000012;
  a1[7] = 0x80000001001CB340;
  a1[8] = v2;
  a1[9] = 0xD000000000000014;
  a1[10] = 0x80000001001CB360;
  a1[11] = v2;
  a1[12] = 0xD000000000000018;
  a1[13] = 0x80000001001CB380;
  a1[14] = v2;
  a1[15] = 0x63616274736F6867;
  a1[16] = 0xEF65726F74735F6BLL;
  a1[17] = v2;
  a1[56] = &type metadata for AggregatedReportingManager;
  a1[57] = &off_10021E0D0;
  v7 = swift_allocObject();
  a1[53] = v7;
  v7[11] = &type metadata for BiomeEventStreamDog;
  v7[12] = &off_10021F658;
  v7[16] = &type metadata for AMSDogBag;
  v7[17] = &off_100222F48;
  v7[21] = v9;
  v7[22] = &off_1002169F0;
  v7[18] = v3;
  v7[26] = &type metadata for LaunchServicesRecordFactory;
  v7[27] = &off_10021CBA8;
  v7[31] = v6;
  v7[32] = &off_100223858;
  v7[28] = v5;
  v7[2] = 0xD00000000000001ALL;
  v7[3] = 0x80000001001CB760;
  v7[4] = v2;
  v7[5] = 0xD000000000000018;
  v7[6] = 0x80000001001CB380;
  v7[7] = v2;
  a1[61] = v6;
  a1[62] = &off_100223858;
  a1[58] = v5;
  return swift_retain_n();
}

uint64_t sub_10009ED94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[91] = v5;
  v6[90] = a5;
  v6[89] = a4;
  v6[88] = a3;
  v6[87] = a2;
  v6[86] = a1;
  v7 = type metadata accessor for Calendar.Component();
  v6[92] = v7;
  v6[93] = *(v7 - 8);
  v6[94] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v6[95] = v8;
  v6[96] = *(v8 - 8);
  v6[97] = swift_task_alloc();

  return _swift_task_switch(sub_10009EEC4, 0, 0);
}

uint64_t sub_10009EEC4()
{
  v20 = v0;
  if (qword_100239CE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FCD0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 688);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "[TokenHandoffService] Token handoff from: %llu", v5, 0xCu);
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000A0C7C();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  *(v0 + 784) = 0;

  v6 = *(v0 + 855);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    *(v0 + 857) = v6;
    sub_10000CDE0(&unk_10023C150, qword_1001BAF38);
    v11 = Optional.debugDescription.getter();
    v13 = sub_10017AD04(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received skan environment: %s", v9, 0xCu);
    sub_10000DB58(v10);
  }

  v14 = swift_task_alloc();
  *(v0 + 792) = v14;
  *v14 = v0;
  v14[1] = sub_10009F700;
  v15 = *(v0 + 704);
  v16 = *(v0 + 696);
  v17 = *(v0 + 688);

  return sub_1000D300C(v16, v15, v17, v6);
}

uint64_t sub_10009F700()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10009F830()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_10009F934, 0, 0);
}

uint64_t sub_10009F934(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10009F9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10009F9DC, 0, 0);
}

uint64_t sub_10009F9DC()
{
  if (qword_100239CE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FCD0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "[TokenHandoffService] Handoff UT metrics from: %llu", v5, 0xCu);
  }

  v6 = v0[5];

  sub_10000DA7C((v6 + 464), *(v6 + 488));
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_10009FB54;
  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];

  return sub_10016C6F0(v9, v8, v10);
}

uint64_t sub_10009FB54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10009FC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10009FC6C, 0, 0);
}

uint64_t sub_10009FC6C()
{
  if (qword_100239CE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FCD0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "[TokenHandoffService] POD Token handoff from: %llu", v5, 0xCu);
  }

  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_10009FDD0;
  v7 = v0[4];
  v8 = v0[2];
  v9 = v0[3];

  return sub_1000D35B4(v9, v7, v8);
}

uint64_t sub_10009FDD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10009FEC8(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  return _swift_task_switch(sub_10009FEE8, 0, 0);
}

uint64_t sub_10009FEE8()
{
  if (qword_100239CE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FCD0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[24];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "[TokenHandoffService] Is eligible for purchase processing for app: %llu", v5, 0xCu);
  }

  v7 = v0[24];
  v6 = v0[25];

  v8 = sub_10000DA7C((v6 + 424), *(v6 + 448));
  v10 = v8[3];
  v9 = v8[4];
  v11 = v8[5];
  v12 = swift_allocObject();
  v0[26] = v12;
  *(v12 + 16) = v7;
  v13 = swift_task_alloc();
  v0[27] = v13;
  *v13 = v0;
  v13[1] = sub_1000A00C0;

  return sub_10010FF18((v0 + 2), sub_1000A0C60, v12, v10, v9, v11);
}

uint64_t sub_1000A00C0()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1000A0290;
  }

  else
  {
    v2 = sub_1000A01E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A01E4()
{
  v1 = *(v0 + 48);
  *(v0 + 152) = *(v0 + 64);
  *(v0 + 136) = v1;
  *(v0 + 168) = *(v0 + 80);
  v2 = *(v0 + 32);
  *(v0 + 104) = *(v0 + 16);
  *(v0 + 184) = *(v0 + 96);
  *(v0 + 120) = v2;
  v3 = *(v0 + 152) != 0;
  sub_10000DAF8(v0 + 104, &qword_10023B690, &qword_1001B9260);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1000A02AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for InAppPurchaseDetails(0);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000A0350, 0, 0);
}

uint64_t sub_1000A0350()
{
  if (qword_100239CE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = sub_10000DAC0(v1, qword_10023FCD0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "[TokenHandoffService] Process In-App Purchase for app: %llu", v5, 0xCu);
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1000A0B38();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v0[10] = 0;

  v6 = v0[5];
  sub_1000A0BEC(v0[7], v0[8]);
  sub_10000DA7C((v6 + 424), *(v6 + 448));
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1000A0680;
  v8 = v0[8];
  v9 = v0[2];

  return sub_1000DA5C0(v8, v9);
}

uint64_t sub_1000A0680()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1000A0804;
  }

  else
  {
    v2 = sub_1000A0794;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A0794()
{
  sub_1000A0B90(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A0804()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to get purchase intake request: %@", v3, 0xCu);
    sub_10000DAF8(v4, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  if (!v0[10])
  {
    sub_1000A0B90(v0[8]);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000A0980(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000A09A0, 0, 0);
}

uint64_t sub_1000A09A0()
{
  if (qword_100239CE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FCD0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 134218242;
    *(v5 + 4) = v4;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "[TokenHandoffService] Reporting purchase intake failure for app %llu, error: %@", v5, 0x16u);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  v8 = *(v0 + 8);

  return v8();
}

unint64_t sub_1000A0B38()
{
  result = qword_10023C140;
  if (!qword_10023C140)
  {
    type metadata accessor for InAppPurchaseDetails(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C140);
  }

  return result;
}

uint64_t sub_1000A0B90(uint64_t a1)
{
  v2 = type metadata accessor for InAppPurchaseDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A0BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InAppPurchaseDetails(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A0C7C()
{
  result = qword_10023C148;
  if (!qword_10023C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C148);
  }

  return result;
}

uint64_t sub_1000A0CD0()
{

  sub_10000DB58((v0 + 64));
  sub_10000DB58((v0 + 104));
  sub_10000DB58((v0 + 144));
  sub_10000DB58((v0 + 184));
  sub_10000DB58((v0 + 224));

  return _swift_deallocObject(v0, 264, 7);
}

uint64_t sub_1000A0ED8(int a1, void *a2, void *aBlock)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = _Block_copy(aBlock);
  v5 = a2;

  return _swift_task_switch(sub_1000A0F54, 0, 0);
}

void sub_1000A0F54()
{
  v1 = [*(v0 + 16) protectionSpace];
  v2 = [v1 serverTrust];

  if (v2)
  {
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);
    v5 = [objc_allocWithZone(NSURLCredential) initWithTrust:v2];

    (v3)[2](v3, 0, v5);
    _Block_release(v3);

    v6 = *(v0 + 8);

    v6();
  }

  else
  {
    __break(1u);
  }
}

id sub_1000A1084(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SecureTaskDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000A10DC()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A112C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000BD30;

  return sub_1000A0ED8(v2, v3, v4);
}

Swift::Int sub_1000A11EC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000A1260(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000A12B4@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100216398, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1000A1344@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100216680, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000A139C(uint64_t a1)
{
  v2 = sub_1000A62D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A13D8(uint64_t a1)
{
  v2 = sub_1000A62D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A1414(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023C270, &qword_1001BB140);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000DA7C(a1, a1[3]);
  sub_1000A62D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int sub_1000A154C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000CDE0(&qword_10023A780, &qword_1001B54D8);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
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

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 7);

  v9 = 0;
  while (v5)
  {
LABEL_15:

    sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *&v7[8 * v15];
        if (v19 != -1)
        {
          v10 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v14) & ~*&v7[8 * (v14 >> 6)])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v5 &= v5 - 1;
    v11 = v2[6] + 40 * v10;
    *(v11 + 32) = v22;
    *v11 = v20;
    *(v11 + 16) = v21;
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

    v5 = *(a1 + 56 + 8 * v12);
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

Swift::Int sub_1000A1794(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000CDE0(&qword_10023A780, &qword_1001B54D8);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
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

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 7);

  v9 = 0;
  while (v5)
  {
LABEL_15:

    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *&v7[8 * v15];
        if (v19 != -1)
        {
          v10 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v14) & ~*&v7[8 * (v14 >> 6)])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v5 &= v5 - 1;
    v11 = v2[6] + 40 * v10;
    *(v11 + 32) = v22;
    *v11 = v20;
    *(v11 + 16) = v21;
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

    v5 = *(a1 + 56 + 8 * v12);
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

uint64_t sub_1000A19C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000A1A70;

  return sub_1000A4DF8(a1);
}

uint64_t sub_1000A1A70(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1000A1B80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a5;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1000A6450;

  return sub_1000A45EC(a1, a2, a3, a4 & 1, v10, a6, a7);
}

uint64_t sub_1000A1C74(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000A1D28;

  return sub_1000A5718(a1, a2);
}

uint64_t sub_1000A1D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *v4;

  v11 = *(v13 + 8);
  if (!v3)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
  }

  return v11(v8, v9, v10);
}

uint64_t sub_1000A1E40()
{
  v0 = type metadata accessor for Logger();
  sub_100026610(v0, qword_10023C160);
  v1 = sub_10000DAC0(v0, qword_10023C160);
  v2 = Logger.general.unsafeMutableAddressor();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000A1ECC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000152E0;

  return v6();
}

uint64_t sub_1000A1FB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000152E0;

  return sub_1000A1ECC(v2, v3, v4);
}

uint64_t sub_1000A2078(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10000BD30;

  return v7();
}

uint64_t sub_1000A2160()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000A21A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000152E0;

  return sub_1000A2078(a1, v4, v5, v6);
}

uint64_t sub_1000A226C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000A2558(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000DAF8(v11, &qword_100239EE0, &qword_1001B3640);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_10000DAF8(a3, &qword_100239EE0, &qword_1001B3640);

    return v21;
  }

LABEL_8:
  sub_10000DAF8(a3, &qword_100239EE0, &qword_1001B3640);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1000A2558(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A25C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A2600(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000152E0;

  return sub_1000147B8(a1, v4);
}

uint64_t sub_1000A26B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BD30;

  return sub_1000147B8(a1, v4);
}

unint64_t sub_1000A2780()
{
  v0 = 0x4E574F4E4B4E55;
  v1 = MobileGestalt_get_current_device();
  if (v1 && (v2 = MobileGestalt_copy_marketingProductName_obj()) != 0)
  {
    v3 = v2;
    v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  _StringGuts.grow(_:)(23);

  v6._countAndFlagsBits = v0;
  v6._object = v5;
  String.append(_:)(v6);

  return 0xD000000000000015;
}

id sub_1000A2858()
{
  v0 = type metadata accessor for Logger();
  __chkstk_darwin(v0);
  v1 = [objc_opt_self() ephemeralSessionConfiguration];
  [v1 setHTTPShouldSetCookies:0];
  [v1 setHTTPCookieAcceptPolicy:1];
  [v1 setRequestCachePolicy:1];
  v2 = [objc_allocWithZone(type metadata accessor for SecureTaskDelegate()) init];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1000A618C();
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v5 = v4;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10001BABC(v3, v5);
  [v1 set_atsContext:isa];

  v7 = [objc_opt_self() sessionWithConfiguration:v1 delegate:v2 delegateQueue:0];
  return v7;
}

uint64_t sub_1000A2B84(uint64_t a1, uint64_t a2)
{
  v2[46] = a1;
  v2[47] = a2;
  sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v3 = type metadata accessor for URLRequest();
  v2[50] = v3;
  v2[51] = *(v3 - 8);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();

  return _swift_task_switch(sub_1000A2C94, 0, 0);
}

uint64_t sub_1000A2C94()
{
  v32 = v0;
  if (qword_100239CB0 != -1)
  {
    swift_once();
  }

  v1 = v0[53];
  v2 = v0[50];
  v3 = v0[51];
  v4 = v0[46];
  v5 = type metadata accessor for Logger();
  v0[54] = sub_10000DAC0(v5, qword_10023C160);
  v6 = *(v3 + 16);
  v0[55] = v6;
  v0[56] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[53];
  v11 = v0[50];
  v12 = v0[51];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v13 = 136315138;
    sub_1000A6144(&qword_10023C260, &type metadata accessor for URLRequest, &protocol conformance descriptor for URLRequest);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_10017AD04(v14, v16, &v31);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Sending request: %s", v13, 0xCu);
    sub_10000DB58(v30);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[57] = v17;
  v19 = v0[49];
  URLRequest.url.getter();
  v20 = type metadata accessor for URL();
  v0[58] = v20;
  v21 = *(v20 - 8);
  v0[59] = v21;
  v22 = *(v21 + 48);
  v0[60] = v22;
  v0[61] = (v21 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v23 = v22(v19, 1, v20);
  sub_10000DAF8(v19, &qword_10023C230, &qword_1001B4FB0);
  if (v23 == 1)
  {
    sub_1000A60F0();
    swift_allocError();
    *v24 = 2;
    *(v24 + 8) = 1;
    swift_willThrow();

    v25 = v0[1];

    return v25();
  }

  else
  {
    v27 = [objc_allocWithZone(type metadata accessor for SecureTaskDelegate()) init];
    v0[62] = v27;
    v28 = swift_task_alloc();
    v0[63] = v28;
    *v28 = v0;
    v28[1] = sub_1000A306C;
    v29 = v0[46];

    return NSURLSession.data(for:delegate:)(v29, v27);
  }
}

uint64_t sub_1000A306C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  *(v5 + 512) = a1;
  *(v5 + 520) = a2;
  *(v5 + 528) = a3;
  *(v5 + 536) = v3;

  if (v3)
  {
    v6 = sub_1000A3920;
  }

  else
  {

    v6 = sub_1000A3194;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_1000A3194()
{
  v68 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    v44 = *(v0 + 528);
    v45 = *(v0 + 520);
    v46 = *(v0 + 512);
    sub_1000A60F0();
    swift_allocError();
    *v47 = 0;
    *(v47 + 8) = 1;
    swift_willThrow();

    sub_10001BABC(v46, v45);

    v48 = *(v0 + 8);

    v48();
    return;
  }

  v2 = v1;
  if (!sub_1000125BC())
  {
LABEL_47:

    v49 = *(v0 + 8);
    v50 = *(v0 + 520);
    v51 = *(v0 + 512);

    v49(v51, v50, v2);
    return;
  }

  v3 = *(v0 + 472);
  v4 = sub_10003FBA0(&off_1002130D8);
  swift_arrayDestroy();
  v58 = v2;
  v5 = [v2 allHeaderFields];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = 0;
  v8 = v6 + 64;
  v65 = v6;
  v9 = -1 << *(v6 + 32);
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v6 + 64);
  v12 = (63 - v9) >> 6;
  v66 = v4 + 56;
  v52 = (v3 + 8);
  while (v11)
  {
    v13 = v7;
LABEL_19:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v13 << 6);
    sub_100025CC4(*(v65 + 48) + 40 * v17, v0 + 160);
    sub_10002036C(*(v65 + 56) + 32 * v17, v0 + 240);
    v18 = *(v0 + 176);
    *(v0 + 88) = *(v0 + 160);
    *(v0 + 104) = v18;
    *(v0 + 120) = *(v0 + 192);
    sub_100025CA4((v0 + 240), (v0 + 128));
LABEL_20:
    *(v0 + 80) = *(v0 + 152);
    v19 = *(v0 + 136);
    *(v0 + 48) = *(v0 + 120);
    *(v0 + 64) = v19;
    v20 = *(v0 + 104);
    *(v0 + 16) = *(v0 + 88);
    *(v0 + 32) = v20;
    if (!*(v0 + 40))
    {

      v2 = v58;
      goto LABEL_47;
    }

    sub_100025CA4((v0 + 56), (v0 + 272));
    v21 = *(v0 + 32);
    *(v0 + 200) = *(v0 + 16);
    *(v0 + 216) = v21;
    *(v0 + 232) = *(v0 + 48);
    if (swift_dynamicCast())
    {
      v22 = *(v0 + 344);
      v61 = *(v0 + 336);
      v23 = String.lowercased()();
      if (!*(v4 + 16))
      {

        goto LABEL_8;
      }

      buf = v22;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();
      v25 = v4;
      v26 = -1 << *(v4 + 32);
      v27 = v24 & ~v26;
      if (((*(v66 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {
LABEL_31:

LABEL_32:
        sub_10000DB58((v0 + 272));
        goto LABEL_39;
      }

      v28 = ~v26;
      while (1)
      {
        v29 = *(v25 + 48) + 16 * v27;
        v30 = *v29 == v23._countAndFlagsBits && *(v29 + 8) == v23._object;
        if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v27 = (v27 + 1) & v28;
        if (((*(v66 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      sub_10002036C(v0 + 272, v0 + 304);
      if (swift_dynamicCast())
      {
        v31 = *(v0 + 360);
        v59 = *(v0 + 352);
        (*(v0 + 440))(*(v0 + 416), *(v0 + 368), *(v0 + 400));

        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v32, v33))
        {
          v62 = *(v0 + 456);
          v60 = *(v0 + 416);
          v39 = *(v0 + 400);

          v62(v60, v39);
          goto LABEL_32;
        }

        v56 = v33;
        v57 = v32;
        v55 = *(v0 + 480);
        v54 = *(v0 + 464);
        v53 = *(v0 + 384);
        v34 = swift_slowAlloc();
        v67[0] = swift_slowAlloc();
        *v34 = 136315650;
        v35 = sub_10017AD04(v59, v31, v67);

        *(v34 + 4) = v35;
        *(v34 + 12) = 2080;
        v36 = sub_10017AD04(v61, buf, v67);

        *(v34 + 14) = v36;
        bufa = v34;
        *(v34 + 22) = 2080;
        URLRequest.url.getter();
        if (v55(v53, 1, v54) == 1)
        {
          sub_10000DAF8(*(v0 + 384), &qword_10023C230, &qword_1001B4FB0);
          v37 = 0xE100000000000000;
          v38 = 45;
        }

        else
        {
          v40 = *(v0 + 464);
          v41 = *(v0 + 384);
          v38 = URL.absoluteString.getter();
          v37 = v42;
          (*v52)(v41, v40);
        }

        v4 = v25;
        (*(v0 + 456))(*(v0 + 416), *(v0 + 400));
        v43 = sub_10017AD04(v38, v37, v67);

        *(bufa + 3) = v43;
        _os_log_impl(&_mh_execute_header, v57, v56, "Received '%s' for header '%s' for request %s", bufa, 0x20u);
        swift_arrayDestroy();

        sub_10000DB58((v0 + 272));
      }

      else
      {
        sub_10000DB58((v0 + 272));

LABEL_39:
        v4 = v25;
      }
    }

    else
    {
LABEL_8:
      sub_10000DB58((v0 + 272));
    }
  }

  if (v12 <= v7 + 1)
  {
    v14 = v7 + 1;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14 - 1;
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v12)
    {
      v11 = 0;
      *(v0 + 152) = 0;
      *(v0 + 136) = 0u;
      *(v0 + 120) = 0u;
      *(v0 + 104) = 0u;
      v7 = v15;
      *(v0 + 88) = 0u;
      goto LABEL_20;
    }

    v11 = *(v8 + 8 * v13);
    ++v7;
    if (v11)
    {
      v7 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t sub_1000A3920()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1000A39B0()
{
  v1 = sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  __chkstk_darwin(v1 - 8);
  v3 = v27 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000DAF8(v3, &qword_10023C230, &qword_1001B4FB0);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v8 = URL.host.getter();
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      v12 = URL.port.getter();
      if ((v13 & 1) == 0)
      {
        v27[0] = v12;
        sub_10000CDE0(&qword_10023C238, &qword_1001BB080);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1001BAF80;
        v27[1] = v0;
        v29 = kSCPropNetProxiesHTTPEnable;
        type metadata accessor for CFString(0);
        sub_1000A6144(&qword_10023C240, type metadata accessor for CFString, &unk_1001B3C1C);
        v28 = v10;
        v17 = kSCPropNetProxiesHTTPEnable;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for Bool;
        *(inited + 72) = 1;
        v29 = kSCPropNetProxiesHTTPProxy;
        v18 = kSCPropNetProxiesHTTPProxy;
        AnyHashable.init<A>(_:)();
        *(inited + 168) = &type metadata for String;
        *(inited + 144) = v28;
        *(inited + 152) = v11;
        v29 = kSCPropNetProxiesHTTPPort;

        v19 = kSCPropNetProxiesHTTPPort;
        AnyHashable.init<A>(_:)();
        *(inited + 240) = &type metadata for Int;
        v20 = v27[0];
        *(inited + 216) = v27[0];
        v29 = kSCPropNetProxiesHTTPSEnable;
        v21 = kSCPropNetProxiesHTTPSEnable;
        AnyHashable.init<A>(_:)();
        *(inited + 312) = &type metadata for Bool;
        *(inited + 288) = 1;
        v29 = kSCPropNetProxiesHTTPSProxy;
        v22 = kSCPropNetProxiesHTTPSProxy;
        AnyHashable.init<A>(_:)();
        *(inited + 384) = &type metadata for String;
        *(inited + 360) = v28;
        *(inited + 368) = v11;
        v29 = kSCPropNetProxiesHTTPSPort;
        v23 = kSCPropNetProxiesHTTPSPort;
        AnyHashable.init<A>(_:)();
        *(inited + 456) = &type metadata for Int;
        *(inited + 432) = v20;
        sub_1000C44D8(inited);
        swift_setDeallocating();
        sub_10000CDE0(&qword_10023C248, &qword_1001BCA90);
        swift_arrayDestroy();
        v24 = [objc_opt_self() ephemeralSessionConfiguration];
        [v24 set_preventsSystemHTTPProxyAuthentication:1];
        [v24 set_requiresSecureHTTPSProxyConnection:1];
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v24 setConnectionProxyDictionary:isa];

        v26 = [objc_opt_self() sessionWithConfiguration:v24];
        (*(v5 + 8))(v7, v4);
        return v26;
      }

      (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }

  sub_1000A60F0();
  swift_allocError();
  *v14 = 3;
  *(v14 + 8) = 1;
  return swift_willThrow();
}

id sub_1000A3ED4()
{
  v0 = [objc_opt_self() ephemeralSessionConfiguration];
  v1 = String._bridgeToObjectiveC()();
  [v0 set_sourceApplicationSecondaryIdentifier:v1];

  v2 = sub_100028038(&off_100213148);
  sub_10000DAF8(&off_100213168, &unk_10023C250, &qword_1001B58B0);
  sub_1000A154C(v2);

  isa = Set._bridgeToObjectiveC()().super.isa;

  [v0 set_suppressedAutoAddedHTTPHeaders:isa];

  v4 = [objc_opt_self() sessionWithConfiguration:v0];
  return v4;
}

uint64_t sub_1000A4000(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 80) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_1000A4024, 0, 0);
}

uint64_t sub_1000A4024()
{
  if (*(v0 + 80))
  {
    if (*(v0 + 80) == 1)
    {
      v1 = sub_1000A3ED4();
    }

    else
    {
      v1 = sub_1000A2858();
    }
  }

  else
  {
    v1 = sub_1000A39B0();
  }

  v2 = v1;
  *(v0 + 32) = v1;
  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      v25 = v1;
      v26 = v0;
      sub_100146DA4(0, v4, 0);
      v5 = (v3 + 32);
      do
      {
        v7 = *v5++;
        v6 = v7;
        v8 = 0xD000000000000015;
        if (v7 == 5)
        {
          v8 = 0x4C2D747065636341;
          v9 = 0xEF65676175676E61;
        }

        else
        {
          v9 = 0x80000001001CA360;
        }

        if (v6 == 3)
        {
          v10 = 0x65676E6152;
        }

        else
        {
          v10 = 0xD000000000000013;
        }

        if (v6 == 3)
        {
          v11 = 0xE500000000000000;
        }

        else
        {
          v11 = 0x80000001001CA330;
        }

        if (v6 <= 4)
        {
          v8 = v10;
          v9 = v11;
        }

        if (v6 == 1)
        {
          v12 = 0x2D746E65746E6F43;
        }

        else
        {
          v12 = 0x6567412D72657355;
        }

        if (v6 == 1)
        {
          v13 = 0xEC00000065707954;
        }

        else
        {
          v13 = 0xEA0000000000746ELL;
        }

        if (!v6)
        {
          v12 = 0x7A69726F68747541;
          v13 = 0xED00006E6F697461;
        }

        if (v6 <= 2)
        {
          v14 = v12;
        }

        else
        {
          v14 = v8;
        }

        if (v6 <= 2)
        {
          v15 = v13;
        }

        else
        {
          v15 = v9;
        }

        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v17 >= v16 >> 1)
        {
          sub_100146DA4((v16 > 1), v17 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v17 + 1;
        v18 = &_swiftEmptyArrayStorage[2 * v17];
        v18[4] = v14;
        v18[5] = v15;
        --v4;
      }

      while (v4);
      v2 = v25;
      v0 = v26;
    }

    v19 = [v2 configuration];
    v20 = sub_10003FBA0(_swiftEmptyArrayStorage);

    sub_1000A1794(v20);

    isa = Set._bridgeToObjectiveC()().super.isa;

    [v19 set_suppressedAutoAddedHTTPHeaders:isa];
  }

  v22 = swift_task_alloc();
  *(v0 + 40) = v22;
  *v22 = v0;
  v22[1] = sub_1000A43E0;
  v23 = *(v0 + 16);

  return sub_1000A2B84(v23, v2);
}

uint64_t sub_1000A43E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 48) = v3;

  if (v3)
  {
    v9 = sub_1000A4588;
  }

  else
  {
    v8[7] = a3;
    v8[8] = a2;
    v8[9] = a1;
    v9 = sub_1000A451C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000A451C()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);

  return v1(v2, v3, v4);
}

uint64_t sub_1000A4588()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000A45EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 161) = a5;
  *(v7 + 160) = a4;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 16) = a1;
  v8 = type metadata accessor for URL();
  *(v7 + 56) = v8;
  *(v7 + 64) = *(v8 - 8);
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 80) = swift_task_alloc();
  v9 = type metadata accessor for URLRequest();
  *(v7 + 88) = v9;
  *(v7 + 96) = *(v9 - 8);
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_1000A4730, 0, 0);
}

uint64_t sub_1000A4730()
{
  v1 = *(v0 + 104);
  v46 = *(v0 + 96);
  v47 = *(v0 + 88);
  v48 = *(v0 + 112);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v45 = *(v0 + 160);
  v6 = *(v0 + 32);
  v49 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = *(v4 + 16);
  v8(v2, *(v0 + 16), v5);
  v8(v3, v2, v5);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  sub_1000438D8(v7, v6);
  URLRequest.httpBody.setter();
  if (v45)
  {
    v9 = 0xD000000000000010;
  }

  else
  {
    v9 = 0xD000000000000021;
  }

  if (v45)
  {
    v10 = "ngagement/token/evaluate";
  }

  else
  {
    v10 = "AdAttributionKit/1.0 ";
  }

  v11 = v10 | 0x8000000000000000;
  v12._countAndFlagsBits = 0x2D746E65746E6F43;
  v12._object = 0xEC00000065707954;
  URLRequest.setValue(_:forHTTPHeaderField:)(*&v9, v12);

  (*(v4 + 8))(v2, v5);
  (*(v46 + 32))(v48, v1, v47);
  v13.value._countAndFlagsBits = sub_1000A2780();
  v14._countAndFlagsBits = 0x6567412D72657355;
  v14._object = 0xEA0000000000746ELL;
  URLRequest.setValue(_:forHTTPHeaderField:)(v13, v14);

  if (v49)
  {
    v15 = *(v0 + 40);
    v18 = *(v15 + 64);
    v17 = v15 + 64;
    v16 = v18;
    v19 = -1;
    v20 = -1 << *(*(v0 + 40) + 32);
    if (-v20 < 64)
    {
      v19 = ~(-1 << -v20);
    }

    v21 = v19 & v16;
    v22 = (63 - v20) >> 6;
    v50 = *(v0 + 40);

    for (i = 0; v21; i = v25)
    {
      v25 = i;
LABEL_15:
      v26 = __clz(__rbit64(v21)) | (v25 << 6);
      v27 = *(*(v50 + 48) + v26);
      v21 &= v21 - 1;
      v28 = (*(v50 + 56) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = 0xD000000000000015;
      if (v27 == 5)
      {
        v31 = 0x4C2D747065636341;
      }

      v32 = 0x80000001001CA360;
      if (v27 == 5)
      {
        v32 = 0xEF65676175676E61;
      }

      v33 = 0xD000000000000013;
      if (v27 == 3)
      {
        v33 = 0x65676E6152;
      }

      v34 = 0x80000001001CA330;
      if (v27 == 3)
      {
        v34 = 0xE500000000000000;
      }

      if (v27 <= 4)
      {
        v31 = v33;
        v32 = v34;
      }

      v35 = 0x6567412D72657355;
      if (v27 == 1)
      {
        v35 = 0x2D746E65746E6F43;
      }

      v36 = 0xEC00000065707954;
      if (v27 != 1)
      {
        v36 = 0xEA0000000000746ELL;
      }

      if (!v27)
      {
        v35 = 0x7A69726F68747541;
        v36 = 0xED00006E6F697461;
      }

      if (v27 <= 2)
      {
        v37 = v35;
      }

      else
      {
        v37 = v31;
      }

      if (v27 <= 2)
      {
        v38 = v36;
      }

      else
      {
        v38 = v32;
      }

      v39.value._countAndFlagsBits = v29;
      v39.value._object = v30;
      v40._countAndFlagsBits = v37;
      v40._object = v38;
      URLRequest.setValue(_:forHTTPHeaderField:)(v39, v40);
    }

    while (1)
    {
      v25 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v25 >= v22)
      {

        goto LABEL_40;
      }

      v21 = *(v17 + 8 * v25);
      ++i;
      if (v21)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_40:
    URLRequest.timeoutInterval.setter();
    URLRequest.cachePolicy.setter();
    v41 = swift_task_alloc();
    *(v0 + 120) = v41;
    *v41 = v0;
    v41[1] = sub_1000A4B6C;
    v42 = *(v0 + 112);
    v43 = *(v0 + 48);
    v44 = *(v0 + 161);

    return sub_1000A4000(v42, v44, v43);
  }

  return result;
}

uint64_t sub_1000A4B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 128) = v3;

  if (v3)
  {
    v9 = sub_1000A4D54;
  }

  else
  {
    v8[17] = a3;
    v8[18] = a2;
    v8[19] = a1;
    v9 = sub_1000A4CA8;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000A4CA8()
{
  (*(v0[12] + 8))(v0[14], v0[11]);

  v1 = v0[1];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];

  return v1(v2, v3, v4);
}

uint64_t sub_1000A4D54()
{
  (*(v0[12] + 8))(v0[14], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000A4DF8(uint64_t a1)
{
  v1[8] = a1;
  v2 = type metadata accessor for String.Encoding();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000A4F14, 0, 0);
}

uint64_t sub_1000A4F14()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  _StringGuts.grow(_:)(22);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v4._object = 0x80000001001CC6D0;
  v4._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v4);
  v5._countAndFlagsBits = URL.absoluteString.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 59;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  (*(v2 + 8))(v1, v3);
  Double.write<A>(to:)();
  v7 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v7;
  sub_10003E5C8();
  StringProtocol.removingPercentEncoding.getter();
  v9 = v8;

  if (!v9 || (v11 = *(v0 + 80), v10 = *(v0 + 88), v12 = *(v0 + 72), static String.Encoding.utf8.getter(), v13 = String.data(using:allowLossyConversion:)(), v15 = v14, , *(v0 + 120) = v13, *(v0 + 128) = v15, v16 = *(v11 + 8), *(v0 + 136) = v16, *(v0 + 144) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000, v16(v10, v12), v15 >> 60 == 15))
  {
    sub_1000A60F0();
    swift_allocError();
    *v17 = 4;
    *(v17 + 8) = 1;
    swift_willThrow();
LABEL_4:

    v18 = *(v0 + 8);

    return v18();
  }

  v20 = Data.base64EncodedString(options:)(0);
  *(v0 + 152) = v20;
  v21 = (v20._object >> 56) & 0xF;
  if ((v20._object & 0x2000000000000000) == 0)
  {
    v21 = v20._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    sub_1000A60F0();
    swift_allocError();
    *v27 = 4;
    *(v27 + 8) = 1;
    swift_willThrow();
    sub_10005CB30(v13, v15);
    goto LABEL_4;
  }

  v22 = String._bridgeToObjectiveC()();
  v23 = String._bridgeToObjectiveC()();
  v24 = [objc_opt_self() bagForProfile:v22 profileVersion:v23];
  *(v0 + 168) = v24;

  v25 = swift_task_alloc();
  *(v0 + 176) = v25;
  v25[2] = v13;
  v25[3] = v15;
  v25[4] = v24;
  v26 = swift_task_alloc();
  *(v0 + 184) = v26;
  *v26 = v0;
  v26[1] = sub_1000A52F8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 48, 0, 0, 0xD000000000000022, 0x80000001001CC6F0, sub_1000A61E0, v25, &type metadata for Data);
}

uint64_t sub_1000A52F8()
{
  *(*v1 + 192) = v0;

  if (v0)
  {

    v2 = sub_1000A5690;
  }

  else
  {

    v2 = sub_1000A5440;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A5440()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);

  v4 = *(v0 + 56);
  v17 = *(v0 + 48);
  v5 = Data.base64EncodedString(options:)(0);
  v6._countAndFlagsBits = 58;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  String.append(_:)(v5);

  static String.Encoding.utf8.getter();
  v7 = String.data(using:allowLossyConversion:)();
  v9 = v8;

  v1(v2, v3);
  v11 = *(v0 + 120);
  v10 = *(v0 + 128);
  if (v9 >> 60 == 15)
  {
    sub_1000A60F0();
    swift_allocError();
    *v12 = 4;
    *(v12 + 8) = 1;
    swift_willThrow();
    sub_10001BABC(v17, v4);
    sub_10005CB30(v11, v10);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v15 = Data.base64EncodedString(options:)(0);
    String.append(_:)(v15);

    sub_10005CB30(v7, v9);
    sub_10001BABC(v17, v4);
    sub_10005CB30(v11, v10);

    v16 = *(v0 + 8);

    return v16(0x206369736142, 0xE600000000000000);
  }
}

uint64_t sub_1000A5690()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  sub_10005CB30(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000A5718(uint64_t a1, uint64_t a2)
{
  *(v2 + 376) = a1;
  *(v2 + 384) = a2;
  return _swift_task_switch(sub_1000A5738, 0, 0);
}

uint64_t sub_1000A5738()
{
  v1 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:v0[48]];
  v0[49] = v1;
  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v3 = [v1 requestByEncodingRequest:isa parameters:0];
  v0[50] = v3;

  v0[2] = v0;
  v0[7] = v0 + 45;
  v0[3] = sub_1000A58B4;
  v4 = swift_continuation_init();
  v0[34] = sub_10000CDE0(&qword_10023C208, &qword_1001BB050);
  v0[27] = _NSConcreteStackBlock;
  v0[28] = 1107296256;
  v0[29] = sub_100021DA0;
  v0[30] = &unk_10021B9C0;
  v0[31] = v4;
  [v3 resultWithCompletion:v0 + 27];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000A58B4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 408) = v1;
  if (v1)
  {
    v2 = sub_1000A5FC4;
  }

  else
  {
    v2 = sub_1000A59C4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A59C4()
{
  v1 = v0[50];
  v2 = v0[45];
  v0[52] = v2;

  sub_1000A2780();
  v3 = String._bridgeToObjectiveC()();

  [v2 setValue:v3 forHTTPHeaderField:AMSHTTPHeaderUserAgent];

  [v2 setValue:0 forHTTPHeaderField:AMSHTTPHeaderAcceptLanguage];
  [v2 setValue:0 forHTTPHeaderField:AMSHTTPHeaderStoreFront];
  [v2 setValue:0 forHTTPHeaderField:AMSHTTPHeaderCookie];
  [v2 setValue:0 forHTTPHeaderField:AMSHTTPHeaderTimezoneOffset];
  v4 = [objc_opt_self() ephemeralSessionConfiguration];
  v0[53] = v4;
  [v4 setHTTPShouldSetCookies:0];
  [v4 setHTTPCookieAcceptPolicy:1];
  sub_10000CDE0(&unk_10023C210, &qword_1001BB058);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B93B0;
  v0[43] = 0x4C2D747065636341;
  v0[44] = 0xEF65676175676E61;
  AnyHashable.init<A>(_:)();
  sub_10003FC38(inited);
  swift_setDeallocating();
  sub_100025D20(inited + 32);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v4 set_suppressedAutoAddedHTTPHeaders:isa];

  v7 = [objc_allocWithZone(AMSURLSession) initWithConfiguration:v4];
  v0[54] = v7;
  v8 = [v7 dataTaskPromiseWithRequest:v2];
  v0[55] = v8;
  v0[10] = v0;
  v0[15] = v0 + 46;
  v0[11] = sub_1000A5CF8;
  v9 = swift_continuation_init();
  v0[42] = sub_10000CDE0(&qword_10023AA18, &unk_1001B60D0);
  v0[35] = _NSConcreteStackBlock;
  v0[36] = 1107296256;
  v0[37] = sub_100021DA0;
  v0[38] = &unk_10021B9E8;
  v0[39] = v9;
  [v8 resultWithCompletion:v0 + 35];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_1000A5CF8()
{
  v1 = *(*v0 + 112);
  *(*v0 + 448) = v1;
  if (v1)
  {
    v2 = sub_1000A603C;
  }

  else
  {
    v2 = sub_1000A5E08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A5E08()
{
  v1 = *(v0 + 368);

  v2 = [v1 response];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = v4;
      v7 = *(v0 + 424);
      v6 = *(v0 + 432);
      v8 = *(v0 + 416);
      v9 = *(v0 + 392);
      v10 = [v1 data];
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = *(v0 + 8);

      return v14(v11, v13, v5);
    }
  }

  v17 = *(v0 + 424);
  v16 = *(v0 + 432);
  v18 = *(v0 + 416);
  v19 = *(v0 + 392);
  sub_1000A60F0();
  swift_allocError();
  *v20 = 0;
  *(v20 + 8) = 1;
  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1000A5FC4(uint64_t a1)
{
  v2 = v1[50];
  v3 = v1[49];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_1000A603C(uint64_t a1)
{
  v2 = v1[55];
  v4 = v1[53];
  v3 = v1[54];
  v5 = v1[52];
  v6 = v1[49];
  swift_willThrow();

  v7 = v1[1];

  return v7();
}

unint64_t sub_1000A60F0()
{
  result = qword_10023C220;
  if (!qword_10023C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C220);
  }

  return result;
}

uint64_t sub_1000A6144(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000A618C()
{
  result = qword_10023C268;
  if (!qword_10023C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C268);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTTP.ATSContext(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1000A62AC(uint64_t a1)
{
  result = sub_1000A60F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000A62D4()
{
  result = qword_10023C278;
  if (!qword_10023C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C278);
  }

  return result;
}

unint64_t sub_1000A633C()
{
  result = qword_10023C280;
  if (!qword_10023C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C280);
  }

  return result;
}

unint64_t sub_1000A6394()
{
  result = qword_10023C288;
  if (!qword_10023C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C288);
  }

  return result;
}

unint64_t sub_1000A63EC()
{
  result = qword_10023C290;
  if (!qword_10023C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C290);
  }

  return result;
}

uint64_t sub_1000A6454(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 120) = a3;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  v6 = type metadata accessor for AccountIdentity();
  *(v4 + 64) = v6;
  v7 = *(v6 - 8);
  *(v4 + 72) = v7;
  *(v4 + 80) = *(v7 + 64);
  *(v4 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_1000A6580, 0, 0);
}

uint64_t sub_1000A6580()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  (*(v3 + 16))(v1, *(v0 + 24), v2);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v0 + 96) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  (*(v3 + 32))(v7 + v6, v1, v2);
  v8 = v4;
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_1000A66C0;
  v10 = *(v0 + 120);

  return sub_1000A75F0(v10, sub_1000A6AC4, v7);
}

uint64_t sub_1000A66C0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_1000A6840, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_1000A6840()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = Logger.general.unsafeMutableAddressor();
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
    _os_log_impl(&_mh_execute_header, v5, v6, "Value fetch failed %@", v7, 0xCu);
    sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  v10 = v0[1];

  return v10(0, 0);
}

uint64_t sub_1000A6A00()
{
  v1 = type metadata accessor for AccountIdentity();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A6B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v9 = type metadata accessor for ContinuousClock.Instant();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v8[14] = *(v10 + 64);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return _swift_task_switch(sub_1000A6C10, 0, 0);
}