uint64_t sub_10009BA08(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 2912) = a1;

  v3 = *(v2 + 2792);
  v4 = *(v2 + 2784);

  return _swift_task_switch(sub_10009BB30, v4, v3);
}

uint64_t sub_10009BB30()
{
  v1 = *(v0 + 2816);
  v2 = *(v0 + 2456);
  sub_1000A3494(*(v0 + 2912));
  v3 = swift_task_alloc();
  *(v0 + 2920) = v3;
  *(v3 + 16) = &unk_1000FB6B0;
  *(v3 + 24) = v2;

  sub_100002D44(&qword_100146810, &qword_1000FB6C8);
  swift_asyncLet_begin();
  v4 = swift_allocObject();
  *(v0 + 2928) = v4;
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  *(v0 + 2936) = v5;
  *(v5 + 16) = &unk_1000FB6D8;
  *(v5 + 24) = v4;
  v6 = v1;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 656, v0 + 1688, sub_10009BC9C, v0 + 1296);
}

uint64_t sub_10009BC9C()
{
  v1 = *(v0 + 1704);
  *(v0 + 1624) = *(v0 + 1688);
  *(v0 + 1640) = v1;
  v2 = *(v0 + 1736);
  *(v0 + 1656) = *(v0 + 1720);
  *(v0 + 1672) = v2;
  sub_100007FDC(v0 + 1624, v0 + 1752, &qword_100146810, &qword_1000FB6C8);
  v3 = *(v0 + 2712);

  return _swift_asyncLet_get(v0 + 16, v3, sub_10009BD30, v0 + 2176);
}

uint64_t sub_10009BD4C()
{
  v1 = *(v0 + 2704);
  v2 = *(v0 + 2696);
  v3 = *(v0 + 2688);
  v4 = *(v0 + 2672);
  v5 = *(v0 + 2656);
  sub_100007FDC(*(v0 + 2712), v1, &qword_1001467F8, &unk_1000FB640);
  v6 = *(v2 + 48);
  v7 = *(v2 + 64);
  sub_10002F250(v1, v3, &qword_1001467F0, &qword_1000FB638);
  sub_10002F250(v1 + v6, v4, &qword_1001467E8, &qword_1000FB630);
  sub_10002F250(v1 + v7, v5, &qword_1001467E0, &qword_1000FB628);
  if (*(v0 + 1632) != 1)
  {
    v8 = (*(v0 + 2456) + 424);
    v9 = *(*(v0 + 2456) + 472);
    v11 = *v8;
    v10 = *(*(v0 + 2456) + 440);
    *(v0 + 1592) = *(*(v0 + 2456) + 456);
    *(v0 + 1608) = v9;
    *(v0 + 1560) = v11;
    *(v0 + 1576) = v10;
    v12 = *(v0 + 1624);
    v13 = *(v0 + 1640);
    v14 = *(v0 + 1672);
    v8[2] = *(v0 + 1656);
    v8[3] = v14;
    *v8 = v12;
    v8[1] = v13;
    sub_100007E14(v0 + 1560, &qword_100146810, &qword_1000FB6C8);
  }

  v15 = *(v0 + 2680);
  v16 = *(v0 + 2624);
  v17 = *(v0 + 2616);
  sub_100007FDC(*(v0 + 2688), v15, &qword_1001467F0, &qword_1000FB638);
  if ((*(v16 + 48))(v15, 1, v17) == 1)
  {
    v18 = &qword_1001467F0;
    v19 = &qword_1000FB638;
    v20 = *(v0 + 2680);
LABEL_10:
    sub_100007E14(v20, v18, v19);
    v34 = *(v0 + 2456);
    if (*(v34 + 192) == 1)
    {
      *(v34 + 192) = 1;
    }

    else
    {
      swift_getKeyPath();
      v35 = swift_task_alloc();
      *(v35 + 16) = v34;
      *(v35 + 24) = 1;
      *(v0 + 2416) = v34;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v36 = *(v0 + 1444);
    v37 = *(v0 + 2832);
    v38 = *(v0 + 2736);
    v39 = *(v0 + 2552);
    v138 = *(v0 + 2544);
    v40 = *(v0 + 2464);
    v41 = *(v0 + 2456);
    swift_getKeyPath();
    *(v0 + 2448) = v41;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v42 = *v37;
    sub_100007FDC(v38 + v36, v40, &qword_100144288, &qword_1000F7FB0);
    if ((*(v39 + 48))(v40, 1, v138) == 1)
    {
      v43 = *(v0 + 2520);
      sub_100007E14(*(v0 + 2464), &qword_100144288, &qword_1000F7FB0);
      v44 = type metadata accessor for URL();
      (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
    }

    else
    {
      v45 = *(v0 + 2464);
      v46 = (v45 + *(*(v0 + 2544) + 20));
      v47 = v46[3];
      v48 = v46[4];
      sub_10000DC80(v46, v47);
      (*(v48 + 40))(v47, v48);
      sub_1000A89D4(v45, type metadata accessor for AnySong);
    }

    v49 = *(v0 + 2688);
    v50 = *(v0 + 2672);
    v51 = *(v0 + 2656);
    v52 = *(v0 + 2520);
    sub_1000A6380(v42, v49, v52);
    sub_100007E14(v52, &unk_100144630, &qword_1000F5180);
    sub_100007E14(v51, &qword_1001467E0, &qword_1000FB628);
    sub_100007E14(v50, &qword_1001467E8, &qword_1000FB630);
    sub_100007E14(v49, &qword_1001467F0, &qword_1000FB638);
    v53 = *(v0 + 2712);

    return _swift_asyncLet_finish(v0 + 16, v53, sub_10009D38C, v0 + 2256);
  }

  v21 = *(v0 + 2672);
  v22 = *(v0 + 2664);
  v23 = *(v0 + 2600);
  v24 = *(v0 + 2592);
  (*(*(v0 + 2624) + 32))(*(v0 + 2640), *(v0 + 2680), *(v0 + 2616));
  sub_100007FDC(v21, v22, &qword_1001467E8, &qword_1000FB630);
  v25 = (*(v23 + 48))(v22, 1, v24);
  v26 = *(v0 + 2664);
  if (v25 == 1)
  {
    (*(*(v0 + 2624) + 8))(*(v0 + 2640), *(v0 + 2616));
    v18 = &qword_1001467E8;
    v19 = &qword_1000FB630;
LABEL_9:
    v20 = v26;
    goto LABEL_10;
  }

  v27 = *(v0 + 2656);
  v28 = *(v0 + 2648);
  v29 = *(v0 + 2576);
  v30 = *(v0 + 2568);
  (*(*(v0 + 2600) + 32))(*(v0 + 2608), *(v0 + 2664), *(v0 + 2592));
  sub_100007FDC(v27, v28, &qword_1001467E0, &qword_1000FB628);
  if ((*(v29 + 48))(v28, 1, v30) == 1)
  {
    v26 = *(v0 + 2648);
    v31 = *(v0 + 2640);
    v32 = *(v0 + 2624);
    v33 = *(v0 + 2616);
    (*(*(v0 + 2600) + 8))(*(v0 + 2608), *(v0 + 2592));
    (*(v32 + 8))(v31, v33);
    v18 = &qword_1001467E0;
    v19 = &qword_1000FB628;
    goto LABEL_9;
  }

  v54 = *(v0 + 2832);
  v55 = *(v0 + 2456);
  (*(*(v0 + 2576) + 32))(*(v0 + 2584), *(v0 + 2648), *(v0 + 2568));
  swift_getKeyPath();
  *(v0 + 2424) = v55;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*v54)
  {
    v56 = [objc_allocWithZone(LSApplicationWorkspace) init];
    v57 = objc_opt_self();
    v58 = String._bridgeToObjectiveC()();
    v59 = [v57 applicationWithBundleIdentifier:v58];

    v60 = String._bridgeToObjectiveC()();
    v61 = [v56 applicationIsInstalled:v60];

    v62 = *(v0 + 2824);
    if (v61)
    {
      v63 = *(v0 + 2632);
      v64 = *(v0 + 2456);
      (*(*(v0 + 2624) + 16))(v63, *(v0 + 2640), *(v0 + 2616));
      type metadata accessor for MusicKitMusicLibrary(0);
      swift_allocObject();
      v65 = sub_1000605FC(v63);
      type metadata accessor for AnyMusicLibrary();
      v66 = swift_allocObject();
      v67 = sub_1000A7F00(v65, v66);
      swift_getKeyPath();
      v68 = swift_task_alloc();
      *(v68 + 16) = v64;
      *(v68 + 24) = v67;
      *(v0 + 2440) = v64;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else
  {
    v62 = *(v0 + 2824);
  }

  *(v0 + 2944) = v62;
  v69 = *(v0 + 2640);
  v70 = *(v0 + 2624);
  v71 = *(v0 + 2616);
  *(v0 + 2160) = type metadata accessor for MusicKitSong(0);
  *(v0 + 2168) = &off_100139078;
  v72 = sub_100023284((v0 + 2136));
  (*(v70 + 16))(v72, v69, v71);
  sub_10009E380((v0 + 1816));
  v133 = (v0 + 1880);
  if (*(v0 + 1840) && *(v0 + 1824))
  {
    sub_100002D44(&qword_100145D70, &qword_1000FA980);
    type metadata accessor for URLQueryItem();
    v73 = v0 + 1816;
    v74 = swift_allocObject();
    *(v74 + 1) = xmmword_1000F7970;
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
  }

  else
  {
    v73 = v0 + 1816;
    v74 = _swiftEmptyArrayStorage;
  }

  v135 = (v0 + 1944);
  v75 = *(v0 + 2576);
  v128 = *(v0 + 2568);
  v130 = *(v0 + 2584);
  v76 = *(v0 + 2560);
  v77 = *(v0 + 2544);
  v78 = *(v0 + 2536);
  v79 = *(v0 + 2528);
  v127 = *(v0 + 2456);
  sub_100051A78(v73);
  v80 = type metadata accessor for URL();
  v137 = *(*(v80 - 8) + 56);
  v139 = v80;
  v137(v76, 1, 1);
  v81 = (v76 + *(v77 + 20));
  sub_100007DB0(v0 + 2136, v81);
  v83 = v81[3];
  v82 = v81[4];
  sub_10000DC80(v81, v83);
  (*(v82 + 48))(v83, v82);
  sub_10009A9D0(v79, v74, v78);

  sub_100007E14(v79, &unk_100144630, &qword_1000F5180);
  sub_100007E74((v0 + 2136));
  sub_1000A88FC(v78, v76);
  *(v0 + 2240) = type metadata accessor for MusicKitAlbum(0);
  *(v0 + 2248) = &off_100137630;
  v84 = sub_100023284((v0 + 2216));
  (*(v75 + 16))(v84, v130, v128);
  v85 = *(v127 + 424);
  v86 = *(v127 + 440);
  v87 = *(v127 + 472);
  *(v0 + 1912) = *(v127 + 456);
  *(v0 + 1928) = v87;
  *v133 = v85;
  *(v0 + 1896) = v86;
  v88 = _swiftEmptyArrayStorage;
  if (*(v0 + 1904) && *(v0 + 1888))
  {
    sub_100002D44(&qword_100145D70, &qword_1000FA980);
    type metadata accessor for URLQueryItem();
    v88 = swift_allocObject();
    *(v88 + 1) = xmmword_1000F7970;
    sub_100007FDC(v133, v0 + 2072, &qword_100146810, &qword_1000FB6C8);
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    sub_100007E14(v133, &qword_100146810, &qword_1000FB6C8);
  }

  v89 = *(v0 + 2600);
  v131 = *(v0 + 2592);
  v134 = *(v0 + 2608);
  v90 = *(v0 + 2536);
  v91 = *(v0 + 2528);
  v92 = *(v0 + 2512);
  v93 = *(v0 + 2496);
  (v137)(v92, 1, 1, v139);
  v94 = (v92 + *(v93 + 20));
  sub_100007DB0(v0 + 2216, v94);
  v95 = v94[3];
  v96 = v94[4];
  sub_10000DC80(v94, v95);
  (*(v96 + 48))(v95, v96);
  sub_10009A9D0(v91, v88, v90);

  sub_100007E14(v91, &unk_100144630, &qword_1000F5180);
  sub_100007E74((v0 + 2216));
  sub_1000A88FC(v90, v92);
  *(v0 + 2320) = type metadata accessor for MusicKitArtist(0);
  *(v0 + 2328) = &off_100135ED8;
  v97 = sub_100023284((v0 + 2296));
  (*(v89 + 16))(v97, v134, v131);
  v98 = *(v127 + 424);
  v99 = *(v127 + 440);
  v100 = *(v127 + 472);
  *(v0 + 1976) = *(v127 + 456);
  *(v0 + 1992) = v100;
  *v135 = v98;
  *(v0 + 1960) = v99;
  v101 = _swiftEmptyArrayStorage;
  if (*(v0 + 1968) && *(v0 + 1952))
  {
    sub_100002D44(&qword_100145D70, &qword_1000FA980);
    type metadata accessor for URLQueryItem();
    v101 = swift_allocObject();
    *(v101 + 1) = xmmword_1000F7970;
    sub_100007FDC(v135, v0 + 2008, &qword_100146810, &qword_1000FB6C8);
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    sub_100007E14(v135, &qword_100146810, &qword_1000FB6C8);
  }

  v132 = *(v0 + 2872);
  v126 = *(v0 + 2856);
  v129 = *(v0 + 2816);
  v136 = *(v0 + 2736);
  v102 = *(v0 + 2728);
  v103 = *(v0 + 2720);
  v120 = *(v0 + 2560);
  v121 = *(v0 + 2544);
  v122 = *(v0 + 2840);
  v104 = *(v0 + 2536);
  v105 = *(v0 + 2528);
  v123 = *(v0 + 2512);
  v106 = *(v0 + 2488);
  v107 = *(v0 + 2472);
  v124 = *(v0 + 2496);
  v125 = v107;
  (v137)(v106, 1, 1, v139);
  v108 = (v106 + *(v107 + 20));
  sub_100007DB0(v0 + 2296, v108);
  v109 = v108[3];
  v110 = v108[4];
  sub_10000DC80(v108, v109);
  (*(v110 + 32))(v109, v110);
  sub_10009A9D0(v105, v101, v104);

  sub_100007E14(v105, &unk_100144630, &qword_1000F5180);
  sub_100007E74((v0 + 2296));
  sub_1000A88FC(v104, v106);
  v111 = v103[6];
  sub_1000A896C(v120, v102 + v111, type metadata accessor for AnySong);
  v122(v102 + v111, 0, 1, v121);
  v112 = v103[8];
  sub_1000A896C(v123, v102 + v112, type metadata accessor for AnyAlbum);
  v126(v102 + v112, 0, 1, v124);
  v113 = v103[7];
  sub_1000A896C(v106, v102 + v113, type metadata accessor for AnyArtist);
  v132(v102 + v113, 0, 1, v125);
  v114 = v129;
  UUID.init()();
  sub_1000A89D4(v136, type metadata accessor for TrackPageMetadata);
  *(v102 + v103[5]) = v114;
  sub_1000A8B84(v102, v136, type metadata accessor for TrackPageMetadata);
  v115 = swift_task_alloc();
  *(v0 + 2952) = v115;
  *v115 = v0;
  v115[1] = sub_10009CDF0;
  v116 = *(v0 + 2560);
  v117 = *(v0 + 2512);
  v118 = *(v0 + 2488);

  return sub_1000A5174(v118, v116, v117);
}

uint64_t sub_10009CDF0()
{
  v1 = *v0;

  v2 = *(v1 + 2792);
  v3 = *(v1 + 2784);

  return _swift_task_switch(sub_10009CF10, v3, v2);
}

uint64_t sub_10009CF10()
{
  v1 = *(v0 + 2896);
  v2 = *(v0 + 2888);
  v3 = *(v0 + 2736);
  v37 = *(v0 + 2640);
  v4 = *(v0 + 2624);
  v36 = *(v0 + 2616);
  v35 = *(v0 + 2608);
  v5 = *(v0 + 2600);
  v34 = *(v0 + 2592);
  v33 = *(v0 + 2584);
  v6 = *(v0 + 2576);
  v7 = *(v0 + 2568);
  v8 = *(v0 + 2560);
  v9 = *(v0 + 2512);
  v10 = *(v0 + 2488);
  *(v0 + 1472) = *(v0 + 2720);
  *(v0 + 1480) = &off_1001392B0;
  *(v0 + 1488) = &off_1001391F8;
  *(v0 + 1496) = v2;
  *(v0 + 1504) = &off_100139218;
  *(v0 + 1512) = &off_100139260;
  *(v0 + 1520) = &off_1001392C0;
  *(v0 + 1528) = &off_1001392D8;
  *(v0 + 1536) = &off_100139270;
  *(v0 + 1544) = v1;
  v11 = sub_100023284((v0 + 1448));
  sub_1000A896C(v3, v11, type metadata accessor for TrackPageMetadata);
  *(v0 + 1552) = 0;
  sub_1000A20B8(v0 + 1448);
  sub_1000A89D4(v10, type metadata accessor for AnyArtist);
  sub_1000A89D4(v9, type metadata accessor for AnyAlbum);
  sub_1000A89D4(v8, type metadata accessor for AnySong);
  (*(v6 + 8))(v33, v7);
  (*(v5 + 8))(v35, v34);
  (*(v4 + 8))(v37, v36);
  v12 = *(v0 + 2456);
  if (*(v12 + 192) == 1)
  {
    *(v12 + 192) = 1;
  }

  else
  {
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = 1;
    *(v0 + 2416) = v12;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v14 = *(v0 + 1444);
  v15 = *(v0 + 2832);
  v16 = *(v0 + 2736);
  v17 = *(v0 + 2552);
  v38 = *(v0 + 2544);
  v18 = *(v0 + 2464);
  v19 = *(v0 + 2456);
  swift_getKeyPath();
  *(v0 + 2448) = v19;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *v15;
  sub_100007FDC(v16 + v14, v18, &qword_100144288, &qword_1000F7FB0);
  if ((*(v17 + 48))(v18, 1, v38) == 1)
  {
    v21 = *(v0 + 2520);
    sub_100007E14(*(v0 + 2464), &qword_100144288, &qword_1000F7FB0);
    v22 = type metadata accessor for URL();
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  }

  else
  {
    v23 = *(v0 + 2464);
    v24 = (v23 + *(*(v0 + 2544) + 20));
    v25 = v24[3];
    v26 = v24[4];
    sub_10000DC80(v24, v25);
    (*(v26 + 40))(v25, v26);
    sub_1000A89D4(v23, type metadata accessor for AnySong);
  }

  v27 = *(v0 + 2688);
  v28 = *(v0 + 2672);
  v29 = *(v0 + 2656);
  v30 = *(v0 + 2520);
  sub_1000A6380(v20, v27, v30);
  sub_100007E14(v30, &unk_100144630, &qword_1000F5180);
  sub_100007E14(v29, &qword_1001467E0, &qword_1000FB628);
  sub_100007E14(v28, &qword_1001467E8, &qword_1000FB630);
  sub_100007E14(v27, &qword_1001467F0, &qword_1000FB638);
  v31 = *(v0 + 2712);

  return _swift_asyncLet_finish(v0 + 16, v31, sub_10009D38C, v0 + 2256);
}

uint64_t sub_10009D3A8()
{

  return _swift_asyncLet_finish(v0 + 656, v0 + 1688, sub_10009D420, v0 + 2336);
}

uint64_t sub_10009D43C()
{
  v1 = v0[352];
  v2 = v0[342];

  sub_1000A89D4(v2, type metadata accessor for TrackPageMetadata);

  v3 = v0[1];

  return v3();
}

void sub_10009D628()
{
  v1 = v0;
  swift_getKeyPath();
  v11[0] = v0;
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v0 + 24) & 1) == 0)
  {
    if (qword_100141A70 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000BEC4(v2, qword_10014FEA0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Pausing playback for unsubscribed user", v5, 2u);
    }

    swift_getKeyPath();
    v8[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    sub_100007FDC(v1 + 280, v11, &qword_100144328, &qword_1000F8148);
    if (v11[3])
    {
      sub_100007DB0(v11, v8);
      sub_100007E14(v11, &qword_100144328, &qword_1000F8148);
      v6 = v9;
      v7 = v10;
      sub_10000DC80(v8, v9);
      (*(v7 + 24))(v6, v7);
      sub_100007E74(v8);
    }

    else
    {
      sub_100007E14(v11, &qword_100144328, &qword_1000F8148);
    }
  }
}

double sub_10009D86C()
{
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

double sub_10009D90C()
{
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 144);
}

double sub_10009D9AC()
{
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 152);
}

double sub_10009DA4C()
{
  static Animation.easeOut(duration:)();
  Animation.delay(_:)();

  withAnimation<A>(_:_:)();

  static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  Animation.delay(_:)();

  withAnimation<A>(_:_:)();

  return result;
}

uint64_t sub_10009DB70()
{
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 192))
  {
    return 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + 560);
  if (result)
  {
    result = [result appleMusicID];
    if (result)
    {

      return 1;
    }
  }

  return result;
}

uint64_t sub_10009DC80@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100007FDC(v1 + 280, a1, &qword_100144328, &qword_1000F8148);
}

uint64_t sub_10009DD50()
{
  v1 = sub_100002D44(&qword_100144658, &unk_1000F87E0);
  __chkstk_darwin(v1 - 8);
  v3 = v13 - v2;
  swift_getKeyPath();
  v14[0] = v0;
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 24) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  v13[0] = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100007FDC(v0 + 216, v14, &qword_1001467D0, &qword_1000FB510);
  v4 = v15;
  if (v15)
  {
    v5 = sub_10000DC80(v14, v15);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    sub_100007E14(v14, &qword_1001467D0, &qword_1000FB510);
    sub_100007FDC(v9, v3, &qword_100144658, &unk_1000F87E0);
    (*(v6 + 8))(v9, v4);
    v10 = type metadata accessor for StreamingService(0);
    v4 = (*(*(v10 - 8) + 48))(v3, 1, v10) != 1;
  }

  else
  {
    sub_100007E14(v14, &qword_1001467D0, &qword_1000FB510);
    v11 = type metadata accessor for StreamingService(0);
    (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  }

  sub_100007E14(v3, &qword_100144658, &unk_1000F87E0);
  return v4;
}

uint64_t sub_10009E068()
{
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 568);

  return v1;
}

void *sub_10009E11C()
{
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 272);
  v2 = v1;
  return v1;
}

uint64_t sub_10009E1C4()
{
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

void sub_10009E268(double a1)
{
  if (*(v1 + 160) == a1)
  {
    *(v1 + 160) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

__n128 sub_10009E380@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + 424);
  v4 = v3[1];
  v22 = *v3;
  v23 = v4;
  v5 = v3[3];
  v24 = v3[2];
  v25 = v5;
  v6 = v22.n128_u64[1];
  if (v22.n128_u64[1] == 1)
  {
    sub_100087544(0, 0, 0, 0, 0, 0, &v18);
    v7 = v3[1];
    v17[0] = *v3;
    v17[1] = v7;
    v8 = v3[3];
    v17[2] = v3[2];
    v17[3] = v8;
    v9 = v19;
    *v3 = v18;
    v3[1] = v9;
    v10 = v21;
    v3[2] = v20;
    v3[3] = v10;
    sub_100087A70(&v18, v16);
    sub_100007E14(v17, &qword_100146810, &qword_1000FB6C8);
    v14 = v20;
    v15 = v21;
    v13 = v19;
    v6 = *(&v18 + 1);
    v11 = v18;
  }

  else
  {
    v14 = v24;
    v15 = v25;
    v13 = v23;
    v11 = v22.n128_u64[0];
  }

  sub_100007FDC(&v22, v17, &qword_100146810, &qword_1000FB6C8);
  a1->n128_u64[0] = v11;
  a1->n128_u64[1] = v6;
  a1[1] = v13;
  a1[2] = v14;
  result = v15;
  a1[3] = v15;
  return result;
}

double sub_10009E490()
{
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 200);
}

void sub_10009E530(double a1)
{
  if (*(v1 + 168) == a1)
  {
    *(v1 + 168) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10009E648()
{
  v1 = v0;
  v2 = sub_100002D44(&qword_100142FE0, &unk_1000F8EC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v60 - v3;
  swift_getKeyPath();
  v62 = v0;
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100007FDC(v0 + 320, v63, &qword_1001442E8, &qword_1000F80E0);
  v5 = v64;
  if (v64)
  {
    v6 = v65;
    v7 = sub_10000DC80(v63, v64);
    v8 = *(v5 - 8);
    v9 = __chkstk_darwin(v7);
    v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    sub_100007E14(v63, &qword_1001442E8, &qword_1000F80E0);
    (*(v6 + 16))(v5, v6);
    v13 = v12;
    (*(v8 + 8))(v11, v5);
    if (v13)
    {
      goto LABEL_23;
    }
  }

  else
  {
    sub_100007E14(v63, &qword_1001442E8, &qword_1000F80E0);
  }

  swift_getKeyPath();
  v61 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100007FDC(v1 + 320, v63, &qword_1001442E8, &qword_1000F80E0);
  v14 = v64;
  if (v64)
  {
    v15 = v65;
    v16 = sub_10000DC80(v63, v64);
    v17 = *(v14 - 8);
    v18 = __chkstk_darwin(v16);
    v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, v18);
    sub_100007E14(v63, &qword_1001442E8, &qword_1000F80E0);
    (*(v15 + 40))(v14, v15);
    v22 = v21;
    (*(v17 + 8))(v20, v14);
    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
    sub_100007E14(v63, &qword_1001442E8, &qword_1000F80E0);
  }

  swift_getKeyPath();
  v61 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100007FDC(v1 + 320, v63, &qword_1001442E8, &qword_1000F80E0);
  v23 = v64;
  if (v64)
  {
    v24 = v65;
    v25 = sub_10000DC80(v63, v64);
    v26 = *(v23 - 8);
    v27 = __chkstk_darwin(v25);
    v29 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v29, v27);
    sub_100007E14(v63, &qword_1001442E8, &qword_1000F80E0);
    (*(v24 + 24))(v23, v24);
    (*(v26 + 8))(v29, v23);
    v30 = type metadata accessor for Date();
    if ((*(*(v30 - 8) + 48))(v4, 1, v30) != 1)
    {
      sub_100007E14(v4, &qword_100142FE0, &unk_1000F8EC0);
      return 1;
    }
  }

  else
  {
    sub_100007E14(v63, &qword_1001442E8, &qword_1000F80E0);
    v31 = type metadata accessor for Date();
    (*(*(v31 - 8) + 56))(v4, 1, 1, v31);
  }

  sub_100007E14(v4, &qword_100142FE0, &unk_1000F8EC0);
  swift_getKeyPath();
  v61 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100007FDC(v1 + 320, v63, &qword_1001442E8, &qword_1000F80E0);
  v32 = v64;
  if (v64)
  {
    v33 = v65;
    v34 = sub_10000DC80(v63, v64);
    v35 = *(v32 - 8);
    v36 = __chkstk_darwin(v34);
    v38 = &v60 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v38, v36);
    sub_100007E14(v63, &qword_1001442E8, &qword_1000F80E0);
    (*(v33 + 48))(v32, v33);
    v40 = v39;
    (*(v35 + 8))(v38, v32);
    if (v40)
    {
      goto LABEL_23;
    }
  }

  else
  {
    sub_100007E14(v63, &qword_1001442E8, &qword_1000F80E0);
  }

  swift_getKeyPath();
  v61 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100007FDC(v1 + 320, v63, &qword_1001442E8, &qword_1000F80E0);
  v41 = v64;
  if (!v64)
  {
    sub_100007E14(v63, &qword_1001442E8, &qword_1000F80E0);
    goto LABEL_21;
  }

  v42 = v65;
  v43 = sub_10000DC80(v63, v64);
  v44 = *(v41 - 8);
  v45 = __chkstk_darwin(v43);
  v47 = &v60 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v44 + 16))(v47, v45);
  sub_100007E14(v63, &qword_1001442E8, &qword_1000F80E0);
  (*(v42 + 56))(v41, v42);
  v49 = v48;
  (*(v44 + 8))(v47, v41);
  if (v49)
  {
LABEL_23:

    return 1;
  }

LABEL_21:
  swift_getKeyPath();
  v61 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100007FDC(v1 + 320, v63, &qword_1001442E8, &qword_1000F80E0);
  v50 = v64;
  if (v64)
  {
    v51 = v65;
    v52 = sub_10000DC80(v63, v64);
    v53 = *(v50 - 8);
    v54 = __chkstk_darwin(v52);
    v56 = &v60 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v53 + 16))(v56, v54);
    sub_100007E14(v63, &qword_1001442E8, &qword_1000F80E0);
    (*(v51 + 64))(v50, v51);
    v58 = v57;
    (*(v53 + 8))(v56, v50);
    if (v58)
    {
      goto LABEL_23;
    }
  }

  else
  {
    sub_100007E14(v63, &qword_1001442E8, &qword_1000F80E0);
  }

  return 0;
}

uint64_t sub_10009F074()
{
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 584);
}

double sub_10009F114()
{
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 160);
}

void sub_10009F1B4(double a1)
{
  if (a1 <= 0.0)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0.0;
  }

  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = v2 - *(v1 + 184);
  if (*(v1 + 200) == v3)
  {
    *(v1 + 200) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10009F310()
{
  v1 = v0;
  v2 = sub_100002D44(&qword_100144658, &unk_1000F87E0);
  __chkstk_darwin(v2 - 8);
  v107 = &v91 - v3;
  v4 = sub_100002D44(&qword_100144288, &qword_1000F7FB0);
  __chkstk_darwin(v4 - 8);
  v103 = &v91 - v5;
  v6 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v6 - 8);
  v108 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v91 - v9;
  __chkstk_darwin(v11);
  v13 = &v91 - v12;
  v14 = type metadata accessor for URL();
  v109 = *(v14 - 8);
  __chkstk_darwin(v14);
  v102 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v101 = &v91 - v17;
  __chkstk_darwin(v18);
  v20 = &v91 - v19;
  __chkstk_darwin(v21);
  v106 = &v91 - v22;
  __chkstk_darwin(v23);
  v105 = &v91 - v24;
  __chkstk_darwin(v25);
  v104 = &v91 - v26;
  __chkstk_darwin(v27);
  v29 = &v91 - v28;
  swift_getKeyPath();
  v30 = OBJC_IVAR____TtC16MusicRecognition18TrackPageViewModel___observationRegistrar;
  v113.n128_u64[0] = v0;
  v31 = sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = *(v0 + 264);
  if (!v32)
  {
    return 0;
  }

  v98 = v20;
  swift_getKeyPath();
  v111[0] = v0;

  v99 = v30;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100007FDC(v0 + 320, &v113, &qword_1001442E8, &qword_1000F80E0);
  v33 = v114;
  if (!v114)
  {

    sub_100007E14(&v113, &qword_1001442E8, &qword_1000F80E0);
    (*(v109 + 56))(v13, 1, 1, v14);
LABEL_9:
    v48 = v13;
LABEL_18:
    sub_100007E14(v48, &unk_100144630, &qword_1000F5180);
    return 0;
  }

  v94 = v31;
  v100 = v14;
  v34 = sub_10000DC80(&v113, v114);
  v96 = &v91;
  v35 = *(v33 - 8);
  v36 = __chkstk_darwin(v34);
  v38 = &v91 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v38, v36);
  sub_100007E14(&v113, &qword_1001442E8, &qword_1000F80E0);
  v39 = type metadata accessor for TrackPageMetadata(0);
  v40 = [*&v38[*(v39 + 20)] webURL];
  v95 = v29;
  v97 = v32;
  if (v40)
  {
    v41 = v40;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v43 = v109;
  v44 = v100;
  v93 = *(v109 + 56);
  v93(v10, v42, 1, v100);
  sub_10002F250(v10, v13, &unk_100144630, &qword_1000F5180);
  v45 = v33;
  v46 = v43;
  (*(v35 + 8))(v38, v45);
  v47 = *(v43 + 48);
  if (v47(v13, 1, v44) == 1)
  {

    goto LABEL_9;
  }

  v91 = v47;
  v49 = *(v46 + 32);
  v50 = v95;
  v96 = (v46 + 32);
  v92 = v49;
  v49(v95, v13, v44);
  swift_getKeyPath();
  v111[0] = v1;
  v51 = v46;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100007FDC(v1 + 320, &v113, &qword_1001442E8, &qword_1000F80E0);
  v52 = v114;
  if (!v114)
  {
    (*(v51 + 8))(v50, v44);

    sub_100007E14(&v113, &qword_1001442E8, &qword_1000F80E0);
    v60 = v108;
    v93(v108, 1, 1, v44);
LABEL_17:
    v48 = v60;
    goto LABEL_18;
  }

  v53 = sub_10000DC80(&v113, v114);
  v54 = *(v52 - 8);
  v55 = __chkstk_darwin(v53);
  v57 = &v91 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v54 + 16))(v57, v55);
  sub_100007E14(&v113, &qword_1001442E8, &qword_1000F80E0);
  v58 = v103;
  sub_100007FDC(&v57[*(v39 + 24)], v103, &qword_100144288, &qword_1000F7FB0);
  (*(v54 + 8))(v57, v52);
  v59 = type metadata accessor for AnySong(0);
  if ((*(*(v59 - 8) + 48))(v58, 1, v59) == 1)
  {
    sub_100007E14(v58, &qword_100144288, &qword_1000F7FB0);
    v60 = v108;
    v61 = v100;
    v93(v108, 1, 1, v100);
  }

  else
  {
    v60 = v108;
    sub_100007FDC(v58, v108, &unk_100144630, &qword_1000F5180);
    sub_1000A89D4(v58, type metadata accessor for AnySong);
    v61 = v100;
  }

  v62 = v109;
  v63 = v95;
  v64 = v98;
  if (v91(v60, 1, v61) == 1)
  {
    (*(v62 + 8))(v63, v61);

    goto LABEL_17;
  }

  v67 = v104;
  v92(v104, v60, v61);
  v68 = *(v62 + 16);
  v68(v105, v63, v61);
  sub_10009E380(&v113);
  sub_100087104(v106);
  sub_100051A78(&v113);
  v68(v64, v67, v61);
  swift_getKeyPath();
  v110[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100007FDC(v1 + 216, v111, &qword_1001467D0, &qword_1000FB510);
  v69 = v112;
  if (v112)
  {
    v70 = sub_10000DC80(v111, v112);
    v71 = *(v69 - 8);
    v72 = __chkstk_darwin(v70);
    v74 = &v91 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v71 + 16))(v74, v72);
    sub_100007E14(v111, &qword_1001467D0, &qword_1000FB510);
    v75 = v107;
    sub_100007FDC(v74, v107, &qword_100144658, &unk_1000F87E0);
    (*(v71 + 8))(v74, v69);
  }

  else
  {
    sub_100007E14(v111, &qword_1001467D0, &qword_1000FB510);
    v76 = type metadata accessor for StreamingService(0);
    v75 = v107;
    (*(*(v76 - 8) + 56))(v107, 1, 1, v76);
  }

  type metadata accessor for ContextMenuForSubscribedUserViewModel(0);
  v65 = swift_allocObject();
  *(v65 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__confirmationDialogPresented) = 0;
  *(v65 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__addToPlaylistSheetPresented) = 0;
  *(v65 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel__isSongInLibrary) = 0;
  *(v65 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel_songAddStatusCancellable) = 0;
  v77 = v65 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel_openInClassicalTitle;
  *v77 = LocalizedStringKey.init(stringLiteral:)();
  *(v77 + 8) = v78;
  *(v77 + 16) = v79 & 1;
  *(v77 + 24) = v80;
  ObservationRegistrar.init()();
  v81 = v98;
  v82 = v100;
  v68((v65 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel_songCampaignURL), v98, v100);
  *(v65 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel_musicLibraryController) = v97;
  sub_100007FDC(v75, v65 + OBJC_IVAR____TtC16MusicRecognition37ContextMenuForSubscribedUserViewModel_classicalProvider, &qword_100144658, &unk_1000F87E0);
  v83 = v68;
  v84 = v101;
  v85 = v106;
  v83(v101, v106, v82);
  v86 = v102;
  v87 = v105;
  v83(v102, v105, v82);
  *(v65 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel__shareSheetFromOverflow) = 0;

  ObservationRegistrar.init()();
  v88 = v84;
  v89 = v92;
  v92((v65 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_shazamAppStoreURL), v88, v82);
  v89(v65 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_shazamURL, v86, v82);
  *(v65 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_member) = 1;

  sub_1000CC90C();

  sub_100007E14(v107, &qword_100144658, &unk_1000F87E0);
  v90 = *(v109 + 8);
  v90(v81, v82);
  v90(v85, v82);
  v90(v87, v82);
  v90(v104, v82);
  v90(v95, v82);
  return v65;
}

uint64_t sub_1000A0194()
{
  v1 = v0;
  v2 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v2 - 8);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v54 - v6);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v60 = &v54 - v13;
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC16MusicRecognition18TrackPageViewModel___observationRegistrar;
  v63[0] = v1;
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  v61 = v17;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100007FDC(v1 + 216, &v65, &qword_1001467D0, &qword_1000FB510);
  v18 = v66;
  if (!v66)
  {
    v38 = &qword_1001467D0;
    v39 = &qword_1000FB510;
    v40 = &v65;
LABEL_11:
    sub_100007E14(v40, v38, v39);
    return 0;
  }

  v56 = v16;
  v57 = v11;
  v58 = v9;
  v59 = v8;
  v19 = sub_10000DC80(&v65, v66);
  v20 = *(v18 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v21);
  sub_100007E14(&v65, &qword_1001467D0, &qword_1000FB510);
  v55 = type metadata accessor for StreamingServicesProvider(0);
  v24 = *&v23[*(v55 + 20)];
  v25 = *(v20 + 8);

  v25(v23, v18);
  v26 = *(v24 + 16);

  if (!v26)
  {
    return 0;
  }

  swift_getKeyPath();
  v63[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100007FDC(v1 + 320, &v65, &qword_1001442E8, &qword_1000F80E0);
  v27 = v66;
  if (!v66)
  {
    sub_100007E14(&v65, &qword_1001442E8, &qword_1000F80E0);
    (*(v58 + 56))(v7, 1, 1, v59);
LABEL_10:
    v38 = &unk_100144630;
    v39 = &qword_1000F5180;
    v40 = v7;
    goto LABEL_11;
  }

  v28 = sub_10000DC80(&v65, v66);
  v54 = &v54;
  v29 = *(v27 - 8);
  v30 = __chkstk_darwin(v28);
  v32 = &v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v29 + 16))(v32, v30);
  sub_100007E14(&v65, &qword_1001442E8, &qword_1000F80E0);
  v33 = [*&v32[*(type metadata accessor for TrackPageMetadata(0) + 20)] webURL];
  v34 = v59;
  v35 = v58;
  if (v33)
  {
    v36 = v33;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  (*(v35 + 56))(v4, v37, 1, v34);
  sub_10002F250(v4, v7, &unk_100144630, &qword_1000F5180);
  (*(v29 + 8))(v32, v27);
  if ((*(v35 + 48))(v7, 1, v34) == 1)
  {
    goto LABEL_10;
  }

  v42 = v56;
  (*(v35 + 32))(v56, v7, v34);
  sub_10009E380(&v65);
  v43 = v60;
  sub_100087104(v60);
  sub_100051A78(&v65);
  v44 = v57;
  (*(v35 + 16))(v57, v42, v34);
  swift_getKeyPath();
  v62 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100007FDC(v1 + 216, v63, &qword_1001467D0, &qword_1000FB510);
  v45 = v64;
  if (v64)
  {
    v46 = sub_10000DC80(v63, v64);
    v47 = *(v45 - 8);
    v48 = __chkstk_darwin(v46);
    v50 = &v54 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v47 + 16))(v50, v48);
    sub_100007E14(v63, &qword_1001467D0, &qword_1000FB510);
    v51 = *&v50[*(v55 + 20)];
    v52 = *(v47 + 8);

    v52(v50, v45);
    v35 = v58;
    v34 = v59;
  }

  else
  {
    sub_100007E14(v63, &qword_1001467D0, &qword_1000FB510);
    v51 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for ContextMenuForUnsubscribedUserViewModel(0);
  swift_allocObject();
  v53 = sub_10000DCC8(v43, v44, v51);
  (*(v35 + 8))(v42, v34);
  return v53;
}

void sub_1000A09A8(double a1)
{
  if (*(v1 + 184) == a1)
  {
    *(v1 + 184) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000A0AC0(double a1)
{
  if (*(v1 + 176) == a1)
  {
    *(v1 + 176) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000A0BD8(uint64_t a1, double a2)
{
  v4 = type metadata accessor for UserInterfaceSizeClass();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, enum case for UserInterfaceSizeClass.compact(_:), v4, v6);
  v9 = static UserInterfaceSizeClass.== infix(_:_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v10 = a2 + -64.0;
  }

  else
  {
    v10 = a2 * 0.6;
  }

  if (*(v2 + 16) == v10)
  {
    *(v2 + 16) = v10;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12[-2] = v2;
    *&v12[-1] = v10;
    v12[1] = v2;
    sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_1000A0DE0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

void sub_1000A0EB0(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000A0FC8()
{
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 24);
}

void sub_1000A1068(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

void sub_1000A1138(char a1)
{
  if (*(v1 + 24) == (a1 & 1))
  {
    *(v1 + 24) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000A1248()
{
  v1 = v0;
  v2 = sub_100002D44(&qword_100144140, &unk_1000F7DD0);
  __chkstk_darwin(v2 - 8);
  v85 = &v79 - v3;
  v4 = sub_100002D44(&qword_100144148, &qword_1000FB8E0);
  __chkstk_darwin(v4 - 8);
  v86 = &v79 - v5;
  v6 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v6 - 8);
  v87 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v79 - v9;
  __chkstk_darwin(v11);
  v13 = &v79 - v12;
  __chkstk_darwin(v14);
  v16 = &v79 - v15;
  __chkstk_darwin(v17);
  v19 = &v79 - v18;
  __chkstk_darwin(v20);
  v22 = &v79 - v21;
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC16MusicRecognition18TrackPageViewModel___observationRegistrar;
  v94[0] = v1;
  v24 = sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  v88 = v23;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100050AB8(v1 + 32, &v91);
  if (v93)
  {
    sub_1000A8260(&v91);
    return;
  }

  v80 = v16;
  v81 = v10;
  v82 = v22;
  v83 = v19;
  v84 = v13;
  sub_100050B14(&v91, v94);
  sub_1000A8FDC(v94, &v91);
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *(&v79 - 2) = v1;
  *(&v79 - 1) = &v91;
  v90 = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100007E14(&v91, &qword_1001442E8, &qword_1000F80E0);
  swift_getKeyPath();
  *&v91 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v26 = *(v1 + 560);
  v27 = v1;
  if (!v26)
  {
    v32 = type metadata accessor for URL();
    (*(*(v32 - 8) + 56))(v83, 1, 1, v32);
    goto LABEL_9;
  }

  v28 = [v26 artworkURL];
  if (v28)
  {
    v29 = v80;
    v30 = v28;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = 0;
  }

  else
  {
    v31 = 1;
    v29 = v80;
  }

  v33 = type metadata accessor for URL();
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v35(v29, v31, 1, v33);
  v36 = v83;
  sub_10002F250(v29, v83, &unk_100144630, &qword_1000F5180);
  if ((*(v34 + 48))(v36, 1, v33) == 1)
  {
LABEL_9:
    swift_getKeyPath();
    v90 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    sub_100007FDC(v1 + 320, &v91, &qword_1001442E8, &qword_1000F80E0);
    v37 = v92;
    if (!v92)
    {
      sub_100007E14(&v91, &qword_1001442E8, &qword_1000F80E0);
      v47 = v81;
      v48 = v84;
      goto LABEL_14;
    }

    v38 = sub_10000DC80(&v91, v92);
    v39 = *(v37 - 8);
    v40 = __chkstk_darwin(v38);
    v42 = &v79 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v42, v40);
    sub_100007E14(&v91, &qword_1001442E8, &qword_1000F80E0);
    v43 = type metadata accessor for TrackPageMetadata(0);
    v44 = v86;
    sub_100007FDC(&v42[*(v43 + 28)], v86, &qword_100144148, &qword_1000FB8E0);
    (*(v39 + 8))(v42, v37);
    v45 = type metadata accessor for AnyArtist(0);
    v46 = (*(*(v45 - 8) + 48))(v44, 1, v45);
    v47 = v81;
    v48 = v84;
    if (v46 == 1)
    {
      sub_100007E14(v44, &qword_100144148, &qword_1000FB8E0);
LABEL_14:
      v51 = type metadata accessor for URL();
      v49 = v82;
      (*(*(v51 - 8) + 56))(v82, 1, 1, v51);
      v50 = v87;
      goto LABEL_22;
    }

    v80 = &v79;
    swift_getKeyPath();
    v89 = v27;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v52 = *(v27 + 16);
    if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v50 = v87;
      if (v52 > -9.22337204e18)
      {
        if (v52 < 9.22337204e18)
        {
          swift_getKeyPath();
          v89 = v27;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v53 = *(v27 + 16);
          if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v53 > -9.22337204e18)
            {
              if (v53 < 9.22337204e18)
              {
                v54 = v53;
                v55 = v86;
                v56 = (v86 + *(v45 + 20));
                v57 = v56[3];
                v58 = v56[4];
                sub_10000DC80(v56, v57);
                v59 = v54;
                v49 = v82;
                (*(v58 + 56))(v52, v59, v57, v58);
                sub_1000A89D4(v55, type metadata accessor for AnyArtist);
                v48 = v84;
LABEL_22:
                v60 = v83;
                v61 = type metadata accessor for URL();
                if ((*(*(v61 - 8) + 48))(v60, 1, v61) != 1)
                {
                  sub_100007E14(v60, &unk_100144630, &qword_1000F5180);
                }

                goto LABEL_24;
              }

LABEL_36:
              __break(1u);
              return;
            }

LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  v49 = v82;
  (*(v34 + 32))(v82, v36, v33);
  v35(v49, 0, 1, v33);
  v47 = v81;
  v48 = v84;
  v50 = v87;
LABEL_24:
  swift_getKeyPath();
  v89 = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100007FDC(v27 + 320, &v91, &qword_1001442E8, &qword_1000F80E0);
  v62 = v92;
  if (v92)
  {
    v86 = v24;
    v63 = sub_10000DC80(&v91, v92);
    v64 = *(v62 - 8);
    v65 = __chkstk_darwin(v63);
    v67 = &v79 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v64 + 16))(v67, v65);
    sub_100007E14(&v91, &qword_1001442E8, &qword_1000F80E0);
    v68 = type metadata accessor for TrackPageMetadata(0);
    v69 = v85;
    sub_100007FDC(&v67[*(v68 + 32)], v85, &qword_100144140, &unk_1000F7DD0);
    v70 = type metadata accessor for AnyAlbum(0);
    if ((*(*(v70 - 8) + 48))(v69, 1, v70) == 1)
    {
      (*(v64 + 8))(v67, v62);
      sub_100007E14(v69, &qword_100144140, &unk_1000F7DD0);
      v71 = type metadata accessor for URL();
      (*(*(v71 - 8) + 56))(v48, 1, 1, v71);
    }

    else
    {
      v73 = (v69 + *(v70 + 20));
      v83 = &v79;
      v74 = v69;
      v75 = v73[3];
      v76 = v73[4];
      sub_10000DC80(v73, v75);
      v77 = *(v76 + 8);
      v78 = v76;
      v48 = v84;
      v77(v75, v78);
      (*(v64 + 8))(v67, v62);
      sub_1000A89D4(v74, type metadata accessor for AnyAlbum);
    }

    v50 = v87;
    v49 = v82;
  }

  else
  {
    sub_100007E14(&v91, &qword_1001442E8, &qword_1000F80E0);
    v72 = type metadata accessor for URL();
    (*(*(v72 - 8) + 56))(v48, 1, 1, v72);
  }

  swift_getKeyPath();
  *&v91 = v27;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_100007FDC(v49, v47, &unk_100144630, &qword_1000F5180);

  sub_1000D88D8(v47);
  sub_100007FDC(v48, v47, &unk_100144630, &qword_1000F5180);
  sub_100007FDC(v47, v50, &unk_100144630, &qword_1000F5180);
  sub_1000D8B98(v50);

  sub_100007E14(v47, &unk_100144630, &qword_1000F5180);
  sub_100007E14(v48, &unk_100144630, &qword_1000F5180);
  sub_100007E14(v49, &unk_100144630, &qword_1000F5180);
  sub_100007E74(v94);
}

void *sub_1000A1F40()
{
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 560);
  v2 = v1;
  return v1;
}

uint64_t sub_1000A1FE8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100007FDC(v1 + 320, a1, &qword_1001442E8, &qword_1000F80E0);
}

uint64_t sub_1000A20B8(uint64_t a1)
{
  swift_beginAccess();
  sub_100050AB8(v1 + 32, v6);
  v3 = sub_1000A8060(v6, a1);
  sub_1000A8260(v6);
  if (v3)
  {
    sub_100050AB8(a1, v6);
    swift_beginAccess();
    sub_1000A8FA4(v6, v1 + 32);
    swift_endAccess();
    sub_1000A1248();
    sub_1000A8260(v6);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v6[0] = v1;
    sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return sub_1000A8260(a1);
}

uint64_t sub_1000A2238(uint64_t a1, uint64_t a2)
{
  sub_100050AB8(a2, v4);
  swift_beginAccess();
  sub_1000A8FA4(v4, a1 + 32);
  swift_endAccess();
  sub_1000A1248();
  return sub_1000A8260(v4);
}

void sub_1000A22AC(double a1)
{
  if (*(v1 + 144) == a1)
  {
    *(v1 + 144) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000A23C4(double a1)
{
  if (*(v1 + 152) == a1)
  {
    *(v1 + 152) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_1000A24E4()
{
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 168);
}

double sub_1000A258C()
{
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 176);
}

double sub_1000A2634()
{
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 184);
}

uint64_t sub_1000A26DC()
{
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 192);
}

void sub_1000A277C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 192);
}

void sub_1000A2824(char a1)
{
  if (*(v1 + 192) == (a1 & 1))
  {
    *(v1 + 192) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double sub_1000A2934@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 200);
  *a2 = result;
  return result;
}

void sub_1000A2A04(double a1)
{
  if (*(v1 + 200) == a1)
  {
    *(v1 + 200) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000A2B1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 208);
}

double sub_1000A2BF4(uint64_t a1)
{
  if (*(v1 + 208) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000A2D28@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100007FDC(v1 + 216, a1, &qword_1001467D0, &qword_1000FB510);
}

uint64_t sub_1000A2DF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100007FDC(v3 + 216, a2, &qword_1001467D0, &qword_1000FB510);
}

uint64_t sub_1000A2EC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1000A911C(a2, a1 + 216, &qword_1001467D0, &qword_1000FB510);
  return swift_endAccess();
}

uint64_t sub_1000A2F3C()
{
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1000A2FE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 264);
}

double sub_1000A308C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_1000A3158()
{
  swift_getKeyPath();
  v15[0] = v0;
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_100007FDC(v0 + 320, v15, &qword_1001442E8, &qword_1000F80E0);
  v1 = v16;
  if (v16)
  {
    v2 = v17;
    v3 = sub_10000DC80(v15, v16);
    v4 = *(v1 - 8);
    v5 = __chkstk_darwin(v3);
    v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v4 + 16))(v7, v5);
    sub_100007E14(v15, &qword_1001442E8, &qword_1000F80E0);
    v8 = (*(v2 + 72))(v1, v2);
    (*(v4 + 8))(v7, v1);
    if (v8)
    {
      [v8 coordinate];
      if (v9 == 0.0)
      {
        [v8 coordinate];
        v11 = v10 != 0.0;
      }

      else
      {
        v11 = 1;
      }

      [v8 coordinate];
      v13 = CLLocationCoordinate2DIsValid(v18);

      return v13 & v11;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100007E14(v15, &qword_1001442E8, &qword_1000F80E0);
    return 0;
  }
}

id sub_1000A33AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 272);
  *a2 = v4;

  return v4;
}

void sub_1000A3464(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000A3494(v1);
}

void sub_1000A3494(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 272);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000123E4(0, &qword_100146858, SHOffers_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 272);
LABEL_8:
  *(v2 + 272) = a1;
}

uint64_t sub_1000A3624@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100007FDC(v3 + 280, a2, &qword_100144328, &qword_1000F8148);
}

uint64_t sub_1000A3724(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  sub_100007FDC(a1, v11, a5, a6);
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100007E14(v11, a5, a6);
}

uint64_t sub_1000A3820(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1000A911C(a2, a1 + 280, &qword_100144328, &qword_1000F8148);
  return swift_endAccess();
}

uint64_t sub_1000A3894@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100007FDC(v3 + 320, a2, &qword_1001442E8, &qword_1000F80E0);
}

uint64_t sub_1000A3964(uint64_t a1, uint64_t *a2)
{
  sub_100007FDC(a1, v3, &qword_1001442E8, &qword_1000F80E0);
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100007E14(v3, &qword_1001442E8, &qword_1000F80E0);
}

uint64_t sub_1000A3A6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1000A911C(a2, a1 + 320, &qword_1001442E8, &qword_1000F80E0);
  return swift_endAccess();
}

id sub_1000A3AE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 560);
  *a2 = v4;

  return v4;
}

void sub_1000A3B98(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 560);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000123E4(0, &qword_100142FB0, SHMediaItem_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 560);
LABEL_8:
  *(v2 + 560) = a1;
}

uint64_t sub_1000A3D28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 576);
  *a2 = *(v3 + 568);
  a2[1] = v4;
}

uint64_t sub_1000A3DD8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000A3E18(v1, v2);
}

uint64_t sub_1000A3E18(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 576);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 568) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 568) = a1;
  *(v2 + 576) = a2;
}

void sub_1000A3F8C(char a1)
{
  if (*(v1 + 584) == (a1 & 1))
  {
    *(v1 + 584) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000A409C()
{
  v1[19] = v0;
  type metadata accessor for MainActor();
  v1[20] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[21] = v3;
  v1[22] = v2;

  return _swift_task_switch(sub_1000A4134, v3, v2);
}

uint64_t sub_1000A4134()
{
  v1 = v0[19];
  swift_getKeyPath();
  v0[10] = v1;
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 24))
  {

    v2 = v0[1];

    return v2(0);
  }

  else
  {
    v4 = *(v0[19] + 488);
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000A4308;
    v5 = swift_continuation_init();
    v0[17] = sub_100002D44(&qword_100144648, &qword_1000FB8B0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10005B2B8;
    v0[13] = &unk_1001389B0;
    v0[14] = v5;
    [v4 offerValuesWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1000A4308()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_1000A449C;
  }

  else
  {
    v5 = sub_1000A4438;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000A4438()
{

  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000A449C()
{

  swift_willThrow();
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BEC4(v1, qword_10014FEA0);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Error fetching Shazam offers: %@", v4, 0xCu);
    sub_100007E14(v5, &unk_100142880, &unk_1000F5950);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t sub_1000A4654(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return _swift_task_switch(sub_1000A4674, 0, 0);
}

uint64_t sub_1000A4674()
{
  *(v0 + 104) = type metadata accessor for MainActor();
  *(v0 + 112) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000A470C, v2, v1);
}

uint64_t sub_1000A470C()
{
  v1 = v0[12];

  swift_getKeyPath();
  v0[10] = v1;
  sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[15] = *(v1 + 568);
  v0[16] = *(v1 + 576);

  v0[17] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[18] = v3;
  v0[19] = v2;

  return _swift_task_switch(sub_1000A4834, v3, v2);
}

uint64_t sub_1000A4834()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = [objc_opt_self() sharedInstance];
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v3[1] = sub_1000A496C;
    v4 = v0[15];

    return sub_100087AA8((v0 + 2), v4, v1, v2);
  }

  else
  {

    v6 = v0[11];
    *v6 = xmmword_1000FB250;
    v6[1] = 0u;
    v6[2] = 0u;
    v6[3] = 0u;
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1000A496C()
{
  v1 = *v0;

  v2 = *(v1 + 32);
  *(v1 + 168) = *(v1 + 16);
  *(v1 + 184) = v2;
  v3 = *(v1 + 64);
  *(v1 + 200) = *(v1 + 48);
  *(v1 + 216) = v3;
  v4 = *(v1 + 152);
  v5 = *(v1 + 144);

  return _swift_task_switch(sub_1000A4AA8, v5, v4);
}

uint64_t sub_1000A4AA8()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 184);
  v3 = *(v0 + 200);
  v4 = *(v0 + 216);
  *v1 = *(v0 + 168);
  v1[1] = v2;
  v1[2] = v3;
  v1[3] = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000A4B24(uint64_t a1, int *a2)
{
  *(v2 + 80) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  *v3 = v2;
  v3[1] = sub_1000A4C18;

  return v5(v2 + 16);
}

uint64_t sub_1000A4C18()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v8 = *v0;

  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[4];
  v2[2] = v1[3];
  v2[3] = v5;
  *v2 = v3;
  v2[1] = v4;
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1000A4D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1000A4D58, 0, 0);
}

uint64_t sub_1000A4D58()
{
  v1 = [*(v0 + 40) appleMusicID];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v0 + 48) = v5;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1000A4E40;
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);

  return sub_1000EA090(v9, v7, v8, v3, v5);
}

uint64_t sub_1000A4E40()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000A4F50(uint64_t a1, int *a2)
{
  v5 = sub_100002D44(&qword_1001467F8, &unk_1000FB640);
  v6 = *(v5 + 48);
  v7 = *(v5 + 64);
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000A507C;

  return v10(a1, a1 + v6, a1 + v7);
}

uint64_t sub_1000A507C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000A5174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = type metadata accessor for URL();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  sub_100002D44(&unk_100144630, &qword_1000F5180);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  sub_100002D44(&qword_100144658, &unk_1000F87E0);
  v4[28] = swift_task_alloc();
  v4[29] = type metadata accessor for StreamingServicesProvider(0);
  v4[30] = swift_task_alloc();
  sub_100002D44(&qword_100144140, &unk_1000F7DD0);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[33] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[34] = v7;
  v4[35] = v6;

  return _swift_task_switch(sub_1000A535C, v7, v6);
}

uint64_t sub_1000A535C()
{
  v1 = *(v0 + 176);
  *(v0 + 288) = *(v1 + 488);
  swift_getKeyPath();
  *(v0 + 128) = v1;
  *(v0 + 296) = OBJC_IVAR____TtC16MusicRecognition18TrackPageViewModel___observationRegistrar;
  *(v0 + 304) = sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 24) == 1)
  {
    v2 = [objc_allocWithZone(LSApplicationWorkspace) init];
    v3 = objc_opt_self();
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 applicationWithBundleIdentifier:v4];

    v6 = String._bridgeToObjectiveC()();
    v7 = [v2 applicationIsInstalled:v6];
  }

  else
  {
    v7 = 0;
  }

  *(v0 + 384) = v7;
  v8 = *(v0 + 256);
  v9 = *(v0 + 232);
  v11 = *(v0 + 160);
  v10 = *(v0 + 168);
  v12 = *(v0 + 152);
  v13 = (v12 + *(type metadata accessor for AnyArtist(0) + 20));
  v14 = v13[3];
  v15 = v13[4];
  sub_10000DC80(v13, v14);
  *(v0 + 96) = (*(v15 + 16))(v14, v15);
  *(v0 + 104) = v16;
  *(v0 + 312) = v16;
  v17 = (v11 + *(type metadata accessor for AnySong(0) + 20));
  v18 = v17[3];
  v19 = v17[4];
  sub_10000DC80(v17, v18);
  *(v0 + 112) = (*(v19 + 16))(v18, v19);
  *(v0 + 120) = v20;
  *(v0 + 320) = v20;
  sub_1000A896C(v10, v8, type metadata accessor for AnyAlbum);
  v21 = type metadata accessor for AnyAlbum(0);
  *(v0 + 328) = v21;
  v22 = *(v21 - 8);
  *(v0 + 336) = v22;
  (*(v22 + 56))(v8, 0, 1, v21);
  *(v0 + 40) = v9;
  *(v0 + 48) = &off_100137150;
  *(v0 + 344) = sub_100023284((v0 + 16));

  return _swift_task_switch(sub_1000A5650, 0, 0);
}

uint64_t sub_1000A5650()
{
  if (*(v0 + 384) == 1)
  {

    v1 = *(v0 + 328);
    v2 = *(v0 + 336);
    v4 = *(v0 + 248);
    v3 = *(v0 + 256);
    *(*(v0 + 240) + *(*(v0 + 232) + 20)) = _swiftEmptyArrayStorage;
    sub_100007FDC(v3, v4, &qword_100144140, &unk_1000F7DD0);
    v5 = (*(v2 + 48))(v4, 1, v1);
    v6 = *(v0 + 248);
    if (v5 == 1)
    {
      v7 = *(v0 + 224);
      sub_100007E14(*(v0 + 256), &qword_100144140, &unk_1000F7DD0);
      sub_100007E14(v6, &qword_100144140, &unk_1000F7DD0);
      v8 = type metadata accessor for StreamingService(0);
      (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    }

    else
    {
      v17 = *(v0 + 208);
      v16 = *(v0 + 216);
      v18 = *(v0 + 184);
      v19 = *(v0 + 192);
      v20 = (v6 + *(*(v0 + 328) + 20));
      v21 = v20[3];
      v22 = v20[4];
      sub_10000DC80(v20, v21);
      (*(v22 + 56))(v21, v22);
      sub_1000A89D4(v6, type metadata accessor for AnyAlbum);
      sub_100007FDC(v16, v17, &unk_100144630, &qword_1000F5180);
      if ((*(v19 + 48))(v17, 1, v18) == 1)
      {
        v23 = *(v0 + 256);
        v24 = *(v0 + 224);
        sub_100007E14(*(v0 + 216), &unk_100144630, &qword_1000F5180);
        sub_100007E14(v23, &qword_100144140, &unk_1000F7DD0);
        v25 = type metadata accessor for StreamingService(0);
        (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
      }

      else
      {
        v30 = *(v0 + 224);
        v31 = *(v0 + 200);
        (*(*(v0 + 192) + 32))(v31, *(v0 + 208), *(v0 + 184));
        sub_10005B800(v31, v30);
        v32 = *(v0 + 256);
        v33 = *(v0 + 216);
        (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
        sub_100007E14(v33, &unk_100144630, &qword_1000F5180);
        sub_100007E14(v32, &qword_100144140, &unk_1000F7DD0);
      }
    }

    *(v0 + 376) = 0;
    v26 = *(v0 + 344);
    v27 = *(v0 + 240);
    sub_10002F250(*(v0 + 224), v27, &qword_100144658, &unk_1000F87E0);
    sub_1000A8B84(v27, v26, type metadata accessor for StreamingServicesProvider);
    v28 = *(v0 + 272);
    v29 = *(v0 + 280);

    return _swift_task_switch(sub_1000A6230, v28, v29);
  }

  else
  {
    v9 = *(v0 + 112);
    v10 = *(v0 + 96);
    v11 = swift_task_alloc();
    *(v0 + 352) = v11;
    *v11 = v0;
    v11[1] = sub_1000A5A60;
    v13 = *(v0 + 312);
    v12 = *(v0 + 320);
    v14 = *(v0 + 288);

    return sub_10005D4EC(v14, v9, v12, v10, v13);
  }
}

uint64_t sub_1000A5A60(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v5 = sub_1000A5F1C;
  }

  else
  {
    *(v4 + 368) = a1;
    v5 = sub_1000A5BC0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000A5BC0()
{
  v1 = v0[45];
  v2 = v0[41];
  v3 = v0[42];
  v5 = v0[31];
  v4 = v0[32];
  *(v0[30] + *(v0[29] + 20)) = v0[46];
  sub_100007FDC(v4, v5, &qword_100144140, &unk_1000F7DD0);
  v6 = (*(v3 + 48))(v5, 1, v2);
  v7 = v0[31];
  if (v6 == 1)
  {
    v8 = v0[28];
    sub_100007E14(v0[32], &qword_100144140, &unk_1000F7DD0);
    sub_100007E14(v7, &qword_100144140, &unk_1000F7DD0);
    v9 = type metadata accessor for StreamingService(0);
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
LABEL_5:
    v0[47] = v1;
    v20 = v0[43];
    v21 = v0[30];
    sub_10002F250(v0[28], v21, &qword_100144658, &unk_1000F87E0);
    sub_1000A8B84(v21, v20, type metadata accessor for StreamingServicesProvider);
    v22 = v0[34];
    v23 = v0[35];

    return _swift_task_switch(sub_1000A6230, v22, v23);
  }

  v11 = v0[26];
  v10 = v0[27];
  v12 = v0[23];
  v13 = v0[24];
  v14 = (v7 + *(v0[41] + 20));
  v15 = v14[3];
  v16 = v14[4];
  sub_10000DC80(v14, v15);
  (*(v16 + 56))(v15, v16);
  sub_1000A89D4(v7, type metadata accessor for AnyAlbum);
  sub_100007FDC(v10, v11, &unk_100144630, &qword_1000F5180);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v17 = v0[32];
    v18 = v0[28];
    sub_100007E14(v0[27], &unk_100144630, &qword_1000F5180);
    sub_100007E14(v17, &qword_100144140, &unk_1000F7DD0);
    v19 = type metadata accessor for StreamingService(0);
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    goto LABEL_5;
  }

  v24 = v0[28];
  v25 = v0[25];
  (*(v0[24] + 32))(v25, v0[26], v0[23]);
  sub_10005B800(v25, v24);
  if (!v1)
  {
    v29 = v0[32];
    v30 = v0[27];
    (*(v0[24] + 8))(v0[25], v0[23]);
    sub_100007E14(v30, &unk_100144630, &qword_1000F5180);
    sub_100007E14(v29, &qword_100144140, &unk_1000F7DD0);
    goto LABEL_5;
  }

  v26 = v0[25];
  v27 = v0[23];
  v28 = *(v0[24] + 8);

  return v28(v26, v27);
}

uint64_t sub_1000A5F1C()
{
  sub_100007E14(v0[32], &qword_100144140, &unk_1000F7DD0);
  v1 = v0[34];
  v2 = v0[35];

  return _swift_task_switch(sub_1000A5F90, v1, v2);
}

uint64_t sub_1000A5F90()
{

  sub_1000A8AD0((v0 + 16));
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BEC4(v1, qword_10014FEA0);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Error initializing Streaming providers controller %@", v4, 0xCu);
    sub_100007E14(v5, &unk_100142880, &unk_1000F5950);
  }

  v7 = *(v0 + 176);

  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  swift_getKeyPath();
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v0 + 56;
  *(v0 + 136) = v7;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100007E14(v0 + 56, &qword_1001467D0, &qword_1000FB510);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000A6230()
{
  v1 = v0[22];

  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 2;
  v0[18] = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100007E14((v0 + 2), &qword_1001467D0, &qword_1000FB510);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000A6380(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48 = a2;
  v49 = a3;
  v6 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v6 - 8);
  v8 = &v43 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002D44(&qword_1001467F0, &qword_1000FB638);
  __chkstk_darwin(v13 - 8);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Song();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v46 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v47 = &v43 - v20;
  if (a1)
  {
    v21 = [objc_allocWithZone(LSApplicationWorkspace) init];
    v22 = objc_opt_self();
    v43 = v17;
    v44 = v10;
    v23 = v12;
    v24 = v4;
    v25 = v22;
    v45 = v9;
    v26 = v16;
    v27 = String._bridgeToObjectiveC()();
    v28 = [v25 applicationWithBundleIdentifier:v27];

    v29 = String._bridgeToObjectiveC()();
    LODWORD(v27) = [v21 applicationIsInstalled:v29];

    v4 = v24;
    v12 = v23;
    v30 = v43;

    v10 = v44;
    v9 = v45;
    if (v27)
    {
      sub_100007FDC(v48, v15, &qword_1001467F0, &qword_1000FB638);
      if ((*(v30 + 48))(v15, 1, v26) != 1)
      {
        v37 = v47;
        (*(v30 + 32))(v47, v15, v26);
        v38 = v46;
        (*(v30 + 16))(v46, v37, v26);
        v39 = sub_100002D44(&qword_100146820, &qword_1000FB788);
        swift_allocObject();
        v40 = sub_1000A7074(v38);
        v52 = v39;
        v53 = &off_100139FC0;
        v51[0] = v40;
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v43 - 2) = v4;
        *(&v43 - 1) = v51;
        v50 = v4;
        sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        (*(v30 + 8))(v37, v26);
LABEL_11:
        v31 = &qword_100144328;
        v32 = &qword_1000F8148;
        v33 = v51;
        return sub_100007E14(v33, v31, v32);
      }

      sub_100007E14(v15, &qword_1001467F0, &qword_1000FB638);
    }
  }

  sub_100007FDC(v49, v8, &unk_100144630, &qword_1000F5180);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v12, v8, v9);
    if (qword_100141BD8 != -1)
    {
      swift_once();
    }

    v34 = qword_10014FF50;
    sub_1000831FC(v12);
    v52 = type metadata accessor for SongPreviewPlaybackController(0);
    v53 = &off_1001380B8;
    v51[0] = v34;
    v35 = swift_getKeyPath();
    __chkstk_darwin(v35);
    *(&v43 - 2) = v4;
    *(&v43 - 1) = v51;
    v50 = v4;
    sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
    v36 = v34;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    (*(v10 + 8))(v12, v9);
    goto LABEL_11;
  }

  v31 = &unk_100144630;
  v32 = &qword_1000F5180;
  v33 = v8;
  return sub_100007E14(v33, v31, v32);
}

double sub_1000A6A00(uint64_t a1)
{
  result = *(a1 + 152);
  if (result == 1.0)
  {
    *(a1 + 152) = 0x3FF0000000000000;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double sub_1000A6B24(uint64_t a1)
{
  result = *(a1 + 144);
  if (result == 1.0)
  {
    *(a1 + 144) = 0x3FF0000000000000;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000A857C(&qword_100144028, type metadata accessor for TrackPageViewModel, &unk_1000FB4E8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000A6C48()
{
  sub_1000A8260(v0 + 32);

  sub_100007E14(v0 + 216, &qword_1001467D0, &qword_1000FB510);

  sub_100007E14(v0 + 280, &qword_100144328, &qword_1000F8148);
  sub_100007E14(v0 + 320, &qword_1001442E8, &qword_1000F80E0);
  sub_1000A8290(*(v0 + 424), *(v0 + 432), *(v0 + 440), *(v0 + 448), *(v0 + 456), *(v0 + 464), *(v0 + 472), *(v0 + 480));

  sub_100007E74((v0 + 592));
  v1 = OBJC_IVAR____TtC16MusicRecognition18TrackPageViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1000A6D6C()
{
  sub_1000A6C48();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for TrackPageViewModel(uint64_t a1)
{
  result = qword_100146668;
  if (!qword_100146668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A6E18(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000A6F50(uint64_t a1)
{
  if ((*(a1 + 104) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 104) & 3;
  }
}

__n128 sub_1000A6F6C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1000A6F98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 105))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 104);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A6FD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 89) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 104) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000A7028(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 104) = a2;
  return result;
}

char *sub_1000A7074(uint64_t a1)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_100002D44(&qword_100142818, &qword_1000F5860);
  __chkstk_darwin(v3 - 8);
  v47 = &v40 - v4;
  v5 = type metadata accessor for Song();
  v40 = v5;
  v42 = *(v5 - 8);
  v6 = v42;
  v44 = *(v42 + 64);
  __chkstk_darwin(v5);
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D44(&qword_100142830, &qword_1000F58D8);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = sub_100002D44(&qword_100146828, &unk_1000FB790);
  v12 = *(v11 - 8);
  v45 = v11;
  v46 = v12;
  __chkstk_darwin(v11);
  v48 = &v40 - v13;
  v14 = sub_100002D44(qword_100145B30, &qword_1000FD820);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v40 - v16;
  v1[2] = 0;
  v18 = *(*v1 + 112);
  type metadata accessor for SystemMusicPlayer();
  *(v1 + v18) = static SystemMusicPlayer.shared.getter();
  v19 = *(*v1 + 120);
  type metadata accessor for SongPreviewStatusController(0);
  v20 = swift_allocObject();
  v51 = 0;
  Published.init(initialValue:)();
  LOBYTE(v51) = 0;
  Published.init(initialValue:)();
  v51 = v20;
  Published.init(initialValue:)();
  (*(v15 + 32))(v1 + v19, v17, v14);
  v21 = *(*v1 + 104);
  v41 = *(v6 + 16);
  v41(v1 + v21, v49, v5);
  MusicPlayer.state.getter();
  v22 = dispatch thunk of MusicPlayer.State.objectWillChange.getter();

  v51 = v22;
  v23 = [objc_opt_self() mainRunLoop];
  v50 = v23;
  v24 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
  sub_100002D44(&qword_100146830, &qword_1000FB7A0);
  sub_1000123E4(0, &qword_100142850, NSRunLoop_ptr);
  sub_100004610(&qword_100146838, &qword_100146830, &qword_1000FB7A0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10001242C();
  Publisher.receive<A>(on:options:)();
  sub_100007E14(v10, &qword_100142830, &qword_1000F58D8);

  v25 = swift_allocObject();
  swift_weakInit();
  v26 = v43;
  v27 = v49;
  v28 = v40;
  v41(v43, v49, v40);
  v29 = v42;
  v30 = (*(v42 + 80) + 24) & ~*(v42 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v25;
  (*(v29 + 32))(v31 + v30, v26, v28);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1000A8CB0;
  *(v32 + 24) = v31;
  sub_100004610(&qword_100146840, &qword_100146828, &unk_1000FB790, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v33 = v45;
  v34 = v48;
  v35 = Publisher<>.sink(receiveValue:)();

  (*(v46 + 8))(v34, v33);
  v2[2] = v35;

  v36 = type metadata accessor for TaskPriority();
  v37 = v47;
  (*(*(v36 - 8) + 56))(v47, 1, 1, v36);
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  sub_1000C8AF8(0, 0, v37, &unk_1000FB7A8, v38);

  (*(v29 + 8))(v27, v28);
  return v2;
}

void sub_1000A7738(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MusicPlayer.PlaybackStatus();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicPlayer.Queue.Entry();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002D44(&qword_100146848, &unk_1000FB7B0);
  __chkstk_darwin(v11 - 8);
  v13 = v39 - v12;
  v14 = sub_100002D44(&qword_100146850, &qword_1000FD7C0);
  __chkstk_darwin(v14 - 8);
  v16 = v39 - v15;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v39[0] = v4;
    v39[1] = a2;
    dispatch thunk of SystemMusicPlayer.queue.getter();
    dispatch thunk of MusicPlayer.Queue.currentEntry.getter();

    if ((*(v8 + 48))(v13, 1, v7))
    {
      v17 = &qword_100146848;
      v18 = &unk_1000FB7B0;
      v19 = v13;
LABEL_6:
      v22 = sub_100007E14(v19, v17, v18);
LABEL_7:
      __chkstk_darwin(v22);
      v23 = type metadata accessor for Song();
      v39[-2] = v23;
      v39[-1] = &protocol witness table for Song;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v39[-2] = v23;
      v39[-1] = &protocol witness table for Song;
      swift_getKeyPath();
LABEL_8:
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v40) = 0;
LABEL_9:
      static Published.subscript.setter();
LABEL_10:

      return;
    }

    (*(v8 + 16))(v10, v13, v7);
    sub_100007E14(v13, &qword_100146848, &unk_1000FB7B0);
    MusicPlayer.Queue.Entry.item.getter();
    (*(v8 + 8))(v10, v7);
    v20 = type metadata accessor for MusicPlayer.Queue.Entry.Item();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v16, 1, v20) == 1)
    {
      v17 = &qword_100146850;
      v18 = &qword_1000FD7C0;
      v19 = v16;
      goto LABEL_6;
    }

    v25 = MusicPlayer.Queue.Entry.Item.id.getter();
    v27 = v26;
    (*(v21 + 8))(v16, v20);
    v28 = type metadata accessor for Song();
    if (dispatch thunk of MusicItem.id.getter() == v25 && v29 == v27)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    MusicPlayer.state.getter();
    dispatch thunk of MusicPlayer.State.playbackStatus.getter();

    v31 = v39[0];
    v32 = (*(v39[0] + 88))(v6, v3);
    if (v32 == enum case for MusicPlayer.PlaybackStatus.stopped(_:))
    {
      __chkstk_darwin(v32);
      v39[-2] = v28;
      v39[-1] = &protocol witness table for Song;
      v33 = swift_getKeyPath();
      __chkstk_darwin(v33);
      v39[-2] = v28;
      v39[-1] = &protocol witness table for Song;
      swift_getKeyPath();
      goto LABEL_8;
    }

    if (v32 == enum case for MusicPlayer.PlaybackStatus.playing(_:))
    {
      __chkstk_darwin(v32);
      v39[-2] = v28;
      v39[-1] = &protocol witness table for Song;
      v34 = swift_getKeyPath();
      __chkstk_darwin(v34);
      v39[-2] = v28;
      v39[-1] = &protocol witness table for Song;
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      v35 = 1;
LABEL_26:
      LOBYTE(v40) = v35;
      goto LABEL_9;
    }

    if (v32 == enum case for MusicPlayer.PlaybackStatus.paused(_:) || v32 == enum case for MusicPlayer.PlaybackStatus.interrupted(_:))
    {
      __chkstk_darwin(v32);
      v39[-2] = v28;
      v39[-1] = &protocol witness table for Song;
      v38 = swift_getKeyPath();
      __chkstk_darwin(v38);
      v39[-2] = v28;
      v39[-1] = &protocol witness table for Song;
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      v35 = 2;
      goto LABEL_26;
    }

    if (v32 == enum case for MusicPlayer.PlaybackStatus.seekingForward(_:))
    {
      goto LABEL_10;
    }

    v36 = enum case for MusicPlayer.PlaybackStatus.seekingBackward(_:);
    v37 = v32;

    if (v37 != v36)
    {
      (*(v31 + 8))(v6, v3);
    }
  }
}

uint64_t sub_1000A7F00(uint64_t a1, uint64_t a2)
{
  v6[3] = type metadata accessor for MusicKitMusicLibrary(0);
  v6[4] = &off_100137238;
  v6[0] = a1;
  sub_100002D44(&qword_100144978, &qword_1000F8A70);
  swift_allocObject();
  *(a2 + 16) = CurrentValueSubject.init(_:)();
  *(a2 + 64) = 0;
  sub_100007DB0(v6, a2 + 24);
  swift_allocObject();
  swift_weakInit();
  sub_100004610(&qword_100146818, &qword_100144978, &qword_1000F8A70, &protocol conformance descriptor for CurrentValueSubject<A, B>);

  v4 = Publisher<>.sink(receiveValue:)();

  *(a2 + 64) = v4;

  sub_100007E74(v6);
  return a2;
}

uint64_t sub_1000A8060(uint64_t a1, uint64_t a2)
{
  sub_100050AB8(a1, v14);
  sub_100050AB8(a2, &v16);
  if (!v15)
  {
    sub_100050AB8(v14, v13);
    if (v23)
    {
      sub_100007E74(v13);
      goto LABEL_9;
    }

    sub_100050B14(v13, v12);
    sub_100050B14(&v16, v11);
    sub_10000DC80(v12, v12[3]);
    v5 = sub_1000B4D60();
    v7 = v6;
    sub_10000DC80(v11, v11[3]);
    v8 = sub_1000B4D60();
    if (v7)
    {
      if (v9)
      {
        if (v5 == v8 && v7 == v9)
        {

          v3 = 1;
        }

        else
        {
          v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      if (!v9)
      {
        v3 = 1;
        goto LABEL_21;
      }

      v3 = 0;
    }

LABEL_21:
    sub_100007E74(v11);
    sub_100007E74(v12);
    goto LABEL_22;
  }

  if (v15 == 1)
  {
    sub_100050AB8(v14, v13);
    if (v23 == 1)
    {
      v3 = LOBYTE(v13[0]) == v16;
LABEL_22:
      sub_1000A8260(v14);
      return v3 & 1;
    }
  }

  else if (v23 == 2)
  {
    v4 = vorrq_s8(vorrq_s8(vorrq_s8(v19, v21), vorrq_s8(v20, v22)), vorrq_s8(v17, v18));
    if (!(*&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | v16))
    {
      sub_1000A8260(v14);
      v3 = 1;
      return v3 & 1;
    }
  }

LABEL_9:
  sub_100007E14(v14, &qword_1001467C8, &qword_1000FB508);
  v3 = 0;
  return v3 & 1;
}

void sub_1000A8290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 != 1)
  {
  }
}

uint64_t getEnumTagSinglePayload for TrackPageViewModel.StateError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrackPageViewModel.StateError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000A844C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001467D8;
  if (!qword_1001467D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001467D8);
  }

  return result;
}

void sub_1000A8544(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000A3B98(v1);
}

uint64_t sub_1000A857C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000A85C4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100012EC8;

  return sub_1000A4654(a1, v1);
}

uint64_t sub_1000A8660(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000789C;

  return sub_1000A4B24(a1, v4);
}

uint64_t sub_1000A8718()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A8750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100012EC8;

  return sub_1000A4D34(a1, a2, a3, v8);
}

uint64_t sub_1000A8808(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100012EC8;

  return sub_1000A4F50(a1, v4);
}

uint64_t sub_1000A88FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A896C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A89D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000A8A54()
{
  *(*(v0 + 16) + 264) = *(v0 + 24);
}

uint64_t sub_1000A8A90()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_1000A8AD0(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t sub_1000A8B84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000A8BEC()
{
  v1 = type metadata accessor for Song();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000A8CB0()
{
  v1 = *(type metadata accessor for Song() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1000A7738(v2, v3);
}

uint64_t sub_1000A8D14()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A8D54()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A8D8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000789C;

  return sub_100083E1C();
}

__n128 sub_1000A8E4C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1000A8E64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000A3E18(v1, v2);
}

uint64_t sub_1000A8EA4()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 568) = v0[3];
  *(v1 + 576) = v2;
}

void sub_1000A8EEC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000A3494(v1);
}

void sub_1000A8F1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 272);
  *(v1 + 272) = v2;
  v4 = v2;
}

uint64_t sub_1000A8FDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 96);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *(a2 + 96) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_1000A90D0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

void sub_1000A90E0()
{
  *(*(v0 + 16) + 208) = *(v0 + 24);
}

uint64_t sub_1000A911C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002D44(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

void sub_1000A9184()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 560);
  *(v1 + 560) = v2;
  v4 = v2;
}

double sub_1000A91C4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 176) = result;
  return result;
}

double sub_1000A91DC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 184) = result;
  return result;
}

double sub_1000A9218()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 200) = result;
  return result;
}

double sub_1000A9248()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 168) = result;
  return result;
}

double sub_1000A9260()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 160) = result;
  return result;
}

double sub_1000A92B0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 144) = result;
  return result;
}

double sub_1000A92C8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 152) = result;
  return result;
}

void sub_1000A93DC(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v13 = sub_1000A97C0;
  v14 = v3;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000C1C84;
  v12 = &unk_100138A28;
  v4 = _Block_copy(&v9);
  v5 = a1;

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13 = sub_1000A97FC;
  v14 = v6;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000A956C;
  v12 = &unk_100138A78;
  v7 = _Block_copy(&v9);
  v8 = v5;

  [v2 animateWithDuration:v4 animations:v7 completion:0.3];
  _Block_release(v7);
  _Block_release(v4);
}

double sub_1000A956C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

id sub_1000A95C0()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:120.0 damping:16.0 initialVelocity:{0.0, 0.0}];
  qword_100146860 = result;
  return result;
}

id sub_1000A960C()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:120.0 damping:20.0 initialVelocity:{0.0, 0.0}];
  qword_100146868 = result;
  return result;
}

id sub_1000A9658()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:120.0 damping:20.0 initialVelocity:{0.0, 0.0}];
  qword_100146870 = result;
  return result;
}

id sub_1000A96A4()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:200.0 damping:27.0 initialVelocity:{0.0, 0.0}];
  qword_100146878 = result;
  return result;
}

void sub_1000A96F0()
{
  v0 = [objc_opt_self() blackColor];
  v1 = [v0 CGColor];

  qword_100146880 = v1;
}

uint64_t sub_1000A9788()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A97E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000A97FC()
{
  v1 = *(v0 + 16);
  sub_1000A9838(v1);

  sub_1000A9D90(v1);
}

void sub_1000A9838(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchView];
  v3 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_albumArtImageView;
  v4 = [*(v2 + OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_albumArtImageView) layer];
  if (qword_100141C68 != -1)
  {
    swift_once();
  }

  v5 = qword_100146880;
  [v4 setBackgroundColor:qword_100146880];

  v6 = [*(v2 + v3) layer];
  [v6 setOpacity:0.0];

  v7 = *(v2 + v3);
  [v7 transform];
  CGAffineTransformScale(&v27, &aBlock, 0.9, 0.9);
  aBlock = v27;
  [v7 setTransform:&aBlock];

  v8 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_placeholderArtworkView;
  v9 = [*(v2 + OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_placeholderArtworkView) layer];
  [v9 setBackgroundColor:v5];

  v10 = [*(v2 + v8) layer];
  [v10 setOpacity:0.0];

  v11 = *(v2 + v8);
  [v11 transform];
  CGAffineTransformScale(&v27, &aBlock, 0.9, 0.9);
  aBlock = v27;
  [v11 setTransform:&aBlock];

  v12 = sub_1000ECE38();
  [v12 setConstant:0.0];

  v13 = sub_1000ECE4C();
  [v13 setConstant:0.0];

  if (qword_100141C48 != -1)
  {
    swift_once();
  }

  v14 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_100146860 timingParameters:0.0];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *&aBlock.tx = sub_1000AA858;
  *&aBlock.ty = v15;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_1000C1C84;
  *&aBlock.d = &unk_100138CA8;
  v16 = _Block_copy(&aBlock);
  v17 = a1;

  [v14 addAnimations:v16];
  _Block_release(v16);
  if (qword_100141C50 != -1)
  {
    swift_once();
  }

  v18 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_100146868 timingParameters:0.0];
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *&aBlock.tx = sub_1000AA868;
  *&aBlock.ty = v19;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_1000C1C84;
  *&aBlock.d = &unk_100138CF8;
  v20 = _Block_copy(&aBlock);
  v21 = v17;

  [v18 addAnimations:v20];
  _Block_release(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = objc_allocWithZone(UIViewPropertyAnimator);
  *&aBlock.tx = sub_1000AA870;
  *&aBlock.ty = v22;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_1000C1C84;
  *&aBlock.d = &unk_100138D48;
  v24 = _Block_copy(&aBlock);
  v25 = v21;

  v26 = [v23 initWithDuration:3 curve:v24 animations:0.84];
  _Block_release(v24);
  [v14 startAnimation];
  [v18 startAnimationAfterDelay:0.16];
  [v26 startAnimation];
}

void sub_1000A9D90(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchView];
  v3 = *(v2 + OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_titleLabel);
  [v3 transform];
  CGAffineTransformTranslate(&v17, &aBlock, 0.0, 70.0);
  aBlock = v17;
  [v3 setTransform:&aBlock];

  v4 = *(v2 + OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_artistLabel);
  [v4 transform];
  CGAffineTransformTranslate(&v17, &aBlock, 0.0, 80.0);
  aBlock = v17;
  [v4 setTransform:&aBlock];

  if (qword_100141C58 != -1)
  {
    swift_once();
  }

  v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_100146870 timingParameters:0.0];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *&aBlock.tx = sub_1000AA528;
  *&aBlock.ty = v6;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_1000C1C84;
  *&aBlock.d = &unk_100138AC8;
  v7 = _Block_copy(&aBlock);
  v8 = a1;

  [v5 addAnimations:v7];
  _Block_release(v7);
  if (qword_100141C60 != -1)
  {
    swift_once();
  }

  v9 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_100146878 timingParameters:0.0];
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *&aBlock.tx = sub_1000AA534;
  *&aBlock.ty = v10;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_1000C1C84;
  *&aBlock.d = &unk_100138B18;
  v11 = _Block_copy(&aBlock);
  v12 = v8;

  [v9 addAnimations:v11];
  _Block_release(v11);
  [v5 startAnimationAfterDelay:0.3];
  [v9 startAnimationAfterDelay:0.4];
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *&aBlock.tx = sub_1000AA7F0;
  *&aBlock.ty = v14;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_1000C1C84;
  *&aBlock.d = &unk_100138B68;
  v15 = _Block_copy(&aBlock);
  v16 = v12;

  [v13 animateKeyframesWithDuration:0 delay:v15 options:0 animations:1.25 completion:0.25];

  _Block_release(v15);
}

id sub_1000AA1C0(uint64_t a1)
{
  v1 = *(*(a1 + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_noMatchView) + OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_titleLabel);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

void sub_1000AA21C(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v13 = sub_1000AA960;
  v14 = v3;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000C1C84;
  v12 = &unk_100138D98;
  v4 = _Block_copy(&v9);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.3];
  _Block_release(v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13 = sub_1000AA878;
  v14 = v6;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000C1C84;
  v12 = &unk_100138DE8;
  v7 = _Block_copy(&v9);
  v8 = v5;

  [v2 addKeyframeWithRelativeStartTime:v7 relativeDuration:0.3 animations:0.7];
  _Block_release(v7);
}

id sub_1000AA3D8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchView);
  v2 = *(v1 + OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_albumArtImageView);
  v5 = 0x3FF0000000000000;
  v6 = 0;
  v7 = 0;
  v8 = 0x3FF0000000000000;
  v9 = 0;
  v10 = 0;
  [v2 setTransform:&v5];
  v3 = *(v1 + OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_placeholderArtworkView);
  v5 = 0x3FF0000000000000;
  v6 = 0;
  v7 = 0;
  v8 = 0x3FF0000000000000;
  v9 = 0;
  v10 = 0;
  return [v3 setTransform:&v5];
}

void sub_1000AA46C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchView);
  v2 = [*(v1 + OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_albumArtImageView) layer];
  LODWORD(v3) = 1.0;
  [v2 setOpacity:v3];

  v5 = [*(v1 + OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_placeholderArtworkView) layer];
  LODWORD(v4) = 1.0;
  [v5 setOpacity:v4];
}

id sub_1000AA540(void *a1)
{
  v2 = *(*(*(v1 + 16) + OBJC_IVAR____TtC16MusicRecognition23AmbientMatchingFlowView_matchView) + *a1);
  v4[0] = 0x3FF0000000000000;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0x3FF0000000000000;
  v4[4] = 0;
  v4[5] = 0;
  return [v2 setTransform:v4];
}

void sub_1000AA598(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v16 = sub_1000AA7F8;
  v17 = v3;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1000C1C84;
  v15 = &unk_100138BB8;
  v4 = _Block_copy(&v12);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:1.0];
  _Block_release(v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v16 = sub_1000AA804;
  v17 = v6;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1000C1C84;
  v15 = &unk_100138C08;
  v7 = _Block_copy(&v12);
  v8 = v5;

  [v2 addKeyframeWithRelativeStartTime:v7 relativeDuration:0.05 animations:0.9];
  _Block_release(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v16 = sub_1000AA83C;
  v17 = v9;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1000C1C84;
  v15 = &unk_100138C58;
  v10 = _Block_copy(&v12);
  v11 = v8;

  [v2 addKeyframeWithRelativeStartTime:v10 relativeDuration:0.2 animations:0.8];
  _Block_release(v10);
}

id sub_1000AA894(void *a1, void *a2, void *a3)
{
  v5 = *(*(v3 + 16) + *a1);
  [*(v5 + *a2) setAlpha:1.0];
  v6 = *(v5 + *a3);

  return [v6 setAlpha:1.0];
}

uint64_t sub_1000AA994(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_100002D44(&qword_100142818, &qword_1000F5860);
  v2[4] = swift_task_alloc();
  v2[5] = type metadata accessor for MainActor();
  v2[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000AAA68, v4, v3);
}

uint64_t sub_1000AAA68()
{
  v1 = v0[2];

  v2 = [v1 artist];
  if (v2)
  {
    v3 = v0[2];
    v4 = v2;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = [v3 title];
    if (v8)
    {
      v9 = v0[3];
      v10 = v8;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = *(v9 + OBJC_IVAR____TtC16MusicRecognition9MatchView_stackView);
      v27 = v5;
      v15._countAndFlagsBits = 8236;
      v15._object = 0xE200000000000000;
      String.append(_:)(v15);
      v16._countAndFlagsBits = v11;
      v16._object = v13;
      String.append(_:)(v16);

      v17 = String._bridgeToObjectiveC()();

      [v14 setAccessibilityLabel:{v17, v27, v7}];
    }

    else
    {
    }
  }

  v18 = v0[4];
  v19 = v0[2];
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v22 = v19;
  v23 = static MainActor.shared.getter();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = &protocol witness table for MainActor;
  v24[4] = v21;
  v24[5] = v22;

  sub_1000C1D74(0, 0, v18, &unk_1000FBB58, v24);

  v25 = v0[1];

  return v25();
}

void sub_1000AACA8(char a1)
{
  [*(v1 + OBJC_IVAR____TtC16MusicRecognition9MatchView_appleMusicButton) setHidden:(a1 & 1) == 0];
  v3 = objc_opt_self();
  sub_100002D44(&qword_100142810, &qword_1000F65A0);
  v4 = swift_allocObject();
  v9[1] = 3;
  *(v4 + 16) = xmmword_1000F8490;
  *(v4 + 32) = sub_1000AAF10();
  sub_1000123E4(0, &qword_100143260, NSLayoutConstraint_ptr);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (a1)
  {
    v6 = &selRef_activateConstraints_;
  }

  else
  {
    v6 = &selRef_deactivateConstraints_;
  }

  if (a1)
  {
    v7 = &selRef_deactivateConstraints_;
  }

  else
  {
    v7 = &selRef_activateConstraints_;
  }

  [v3 *v6];

  v8 = swift_allocObject();
  *(v8 + 16) = *v9;
  *(v8 + 32) = sub_1000AB004();
  v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 *v7];
}

id sub_1000AAE1C()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.552941176 green:0.552941176 blue:0.576470588 alpha:1.0];
  qword_100146888 = result;
  return result;
}

id sub_1000AAE68()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.329411765 green:0.125490196 blue:0.129411765 alpha:1.0];
  qword_100146890 = result;
  return result;
}

id sub_1000AAEBC()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.996078431 green:0.376470588 blue:0.537254902 alpha:1.0];
  qword_100146898 = result;
  return result;
}

id sub_1000AAF10()
{
  v1 = OBJC_IVAR____TtC16MusicRecognition9MatchView____lazy_storage___stackViewTrailingAnchorWithAppleMusicButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicRecognition9MatchView____lazy_storage___stackViewTrailingAnchorWithAppleMusicButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicRecognition9MatchView____lazy_storage___stackViewTrailingAnchorWithAppleMusicButton);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC16MusicRecognition9MatchView_stackView) layoutMarginsGuide];
    v5 = [v4 trailingAnchor];

    v6 = [*(v0 + OBJC_IVAR____TtC16MusicRecognition9MatchView_appleMusicButton) leadingAnchor];
    v7 = [v5 constraintEqualToAnchor:v6 constant:-8.0];

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1000AB004()
{
  v1 = OBJC_IVAR____TtC16MusicRecognition9MatchView____lazy_storage___stackViewTrailingAnchorWithoutAppleMusicButton;
  v2 = *&v0[OBJC_IVAR____TtC16MusicRecognition9MatchView____lazy_storage___stackViewTrailingAnchorWithoutAppleMusicButton];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC16MusicRecognition9MatchView____lazy_storage___stackViewTrailingAnchorWithoutAppleMusicButton];
  }

  else
  {
    v4 = [*&v0[OBJC_IVAR____TtC16MusicRecognition9MatchView_stackView] layoutMarginsGuide];
    v5 = [v4 trailingAnchor];

    v6 = [v0 layoutMarginsGuide];
    v7 = [v6 trailingAnchor];

    v8 = [v5 constraintEqualToAnchor:v7 constant:-8.0];
    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void sub_1000AB104(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = [objc_opt_self() mainBundle];
  v11 = objc_allocWithZone(BSUICAPackageView);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithPackageName:v12 inBundle:v10];

  if (v13)
  {
    *&v4[OBJC_IVAR____TtC16MusicRecognition9MatchView_albumArtView] = v13;
    v14 = OBJC_IVAR____TtC16MusicRecognition9MatchView_titleLabel;
    *&v4[v14] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v15 = OBJC_IVAR____TtC16MusicRecognition9MatchView_artistLabel;
    *&v4[v15] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v16 = OBJC_IVAR____TtC16MusicRecognition9MatchView_stackView;
    *&v4[v16] = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v17 = OBJC_IVAR____TtC16MusicRecognition9MatchView_appleMusicButton;
    *&v4[v17] = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    *&v4[OBJC_IVAR____TtC16MusicRecognition9MatchView____lazy_storage___stackViewTrailingAnchorWithAppleMusicButton] = 0;
    *&v4[OBJC_IVAR____TtC16MusicRecognition9MatchView____lazy_storage___stackViewTrailingAnchorWithoutAppleMusicButton] = 0;
    v19.receiver = v4;
    v19.super_class = ObjectType;
    v18 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
    sub_1000AB300();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000AB300()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = *&v0[OBJC_IVAR____TtC16MusicRecognition9MatchView_stackView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v1];
  v2 = *&v0[OBJC_IVAR____TtC16MusicRecognition9MatchView_titleLabel];
  [v1 addArrangedSubview:v2];
  v3 = *&v0[OBJC_IVAR____TtC16MusicRecognition9MatchView_artistLabel];
  [v1 addArrangedSubview:v3];
  [v1 setAxis:1];
  [v1 setDistribution:0];
  [v1 setAlignment:0];
  v4 = [objc_opt_self() mainBundle];
  v55._object = 0xE000000000000000;
  v5._object = 0x80000001001024E0;
  v5._countAndFlagsBits = 0xD000000000000031;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v55._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v55);

  v7 = String._bridgeToObjectiveC()();

  [v1 setAccessibilityHint:v7];

  [v1 setIsAccessibilityElement:1];
  v8 = *&v0[OBJC_IVAR____TtC16MusicRecognition9MatchView_albumArtView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v8];
  v9 = String._bridgeToObjectiveC()();
  [v8 setAccessibilityIdentifier:v9];

  [v8 setIsAccessibilityElement:0];
  v10 = [v8 layer];
  [v10 setCompositingFilter:kCAFilterScreenBlendMode];

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = objc_opt_self();
  v12 = [v11 systemFontOfSize:16.0 weight:UIFontWeightSemibold];
  [v2 setFont:v12];

  v13 = [objc_opt_self() whiteColor];
  [v2 setTextColor:v13];

  [v2 setNumberOfLines:2];
  LODWORD(v14) = 1132068864;
  [v2 setContentCompressionResistancePriority:0 forAxis:v14];
  v15 = String._bridgeToObjectiveC()();
  [v2 setAccessibilityIdentifier:v15];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [v11 systemFontOfSize:16.0 weight:UIFontWeightMedium];
  [v3 setFont:v16];

  if (qword_100141C70 != -1)
  {
    swift_once();
  }

  [v3 setTextColor:qword_100146888];
  LODWORD(v17) = 1132068864;
  [v3 setContentCompressionResistancePriority:0 forAxis:v17];
  v18 = String._bridgeToObjectiveC()();
  [v3 setAccessibilityIdentifier:v18];

  sub_1000ABE04();
  sub_1000AC2D4();
  v19 = 0.0;
  if (sub_1000B9750())
  {
    v20 = -5.0;
  }

  else
  {
    v20 = 0.0;
  }

  if (sub_1000B9750())
  {
    v19 = -2.0;
  }

  if (sub_1000B9750())
  {
    v21 = -26.0;
  }

  else
  {
    v21 = -17.0;
  }

  v52 = objc_opt_self();
  sub_100002D44(&qword_100142810, &qword_1000F65A0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000FBB00;
  v23 = [v8 leadingAnchor];
  v24 = [v0 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v22 + 32) = v25;
  v26 = [v8 widthAnchor];
  v27 = [v0 heightAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:v20];

  *(v22 + 40) = v28;
  v29 = [v8 heightAnchor];
  v30 = [v0 heightAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:v20];

  *(v22 + 48) = v31;
  v32 = [v8 centerYAnchor];
  v33 = [v0 centerYAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v22 + 56) = v34;
  v35 = [v1 centerYAnchor];
  v36 = [v0 centerYAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:-1.0];

  *(v22 + 64) = v37;
  v38 = [v1 leadingAnchor];
  v39 = [v8 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:-3.0];

  *(v22 + 72) = v40;
  *(v22 + 80) = sub_1000AAF10();
  v41 = *&v0[OBJC_IVAR____TtC16MusicRecognition9MatchView_appleMusicButton];
  v42 = [v41 trailingAnchor];
  v43 = [v0 trailingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:v21];

  *(v22 + 88) = v44;
  v45 = [v41 centerYAnchor];
  v46 = [v0 centerYAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:v19];

  *(v22 + 96) = v47;
  v48 = [v41 widthAnchor];
  v49 = [v48 constraintEqualToConstant:80.0];

  *(v22 + 104) = v49;
  v50 = [v41 heightAnchor];
  v51 = [v50 constraintEqualToConstant:30.0];

  *(v22 + 112) = v51;
  sub_1000123E4(0, &qword_100143260, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v52 activateConstraints:isa];
}

void sub_1000ABBFC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [objc_opt_self() mainBundle];
  v5 = objc_allocWithZone(BSUICAPackageView);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithPackageName:v6 inBundle:v4];

  if (v7)
  {
    *&v1[OBJC_IVAR____TtC16MusicRecognition9MatchView_albumArtView] = v7;
    v8 = OBJC_IVAR____TtC16MusicRecognition9MatchView_titleLabel;
    *&v1[v8] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v9 = OBJC_IVAR____TtC16MusicRecognition9MatchView_artistLabel;
    *&v1[v9] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v10 = OBJC_IVAR____TtC16MusicRecognition9MatchView_stackView;
    *&v1[v10] = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v11 = OBJC_IVAR____TtC16MusicRecognition9MatchView_appleMusicButton;
    *&v1[v11] = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    *&v1[OBJC_IVAR____TtC16MusicRecognition9MatchView____lazy_storage___stackViewTrailingAnchorWithAppleMusicButton] = 0;
    *&v1[OBJC_IVAR____TtC16MusicRecognition9MatchView____lazy_storage___stackViewTrailingAnchorWithoutAppleMusicButton] = 0;
    v14.receiver = v1;
    v14.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v14, "initWithCoder:", a1);
    if (v12)
    {
      v13 = v12;
      sub_1000AB300();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000ABE04()
{
  v1 = sub_100002D44(&qword_100146198, &unk_1000FF020);
  __chkstk_darwin(v1 - 8);
  v3 = &v29 - v2;
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIButton.Configuration();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v0[OBJC_IVAR____TtC16MusicRecognition9MatchView_appleMusicButton];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:{0, v10}];
  [v0 addSubview:v13];
  static UIButton.Configuration.filled()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [objc_opt_self() imageNamed:v14];

  if (v15)
  {
    if (qword_100141C80 != -1)
    {
      swift_once();
    }

    v16 = [v15 imageWithTintColor:qword_100146898];
  }

  UIButton.Configuration.image.setter();
  if (qword_100141C78 != -1)
  {
    swift_once();
  }

  v17 = qword_100146890;
  UIButton.Configuration.baseBackgroundColor.setter();
  (*(v5 + 104))(v7, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v4);
  UIButton.Configuration.cornerStyle.setter();
  (*(v9 + 16))(v3, v12, v8);
  (*(v9 + 56))(v3, 0, 1, v8);
  UIButton.configuration.setter();
  v18 = String._bridgeToObjectiveC()();
  [v13 setAccessibilityIdentifier:v18];

  v19 = objc_opt_self();
  v20 = [v19 mainBundle];
  v30._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0xD00000000000001FLL;
  v21._object = 0x8000000100102540;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v30);

  v23 = String._bridgeToObjectiveC()();

  [v13 setAccessibilityLabel:v23];

  v24 = [v19 mainBundle];
  v31._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0xD000000000000031;
  v25._object = 0x8000000100102560;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v31);

  v27 = String._bridgeToObjectiveC()();

  [v13 setAccessibilityHint:v27];

  return (*(v9 + 8))(v12, v8);
}

id sub_1000AC2D4()
{
  v1 = objc_opt_self();
  sub_100002D44(&qword_100142810, &qword_1000F65A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000F8490;
  *(v2 + 32) = sub_1000AAF10();
  sub_1000123E4(0, &qword_100143260, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 deactivateConstraints:isa];

  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000F8490;
  *(v4 + 32) = sub_1000AB004();
  v5 = Array._bridgeToObjectiveC()().super.isa;

  [v1 activateConstraints:v5];

  return [v0 setNeedsLayout];
}

uint64_t sub_1000AC414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  sub_100002D44(&unk_100144630, &qword_1000F5180);
  v5[16] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[20] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[21] = v8;
  v5[22] = v7;

  return _swift_task_switch(sub_1000AC540, v8, v7);
}

uint64_t sub_1000AC540()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC16MusicRecognition9MatchView_albumArtView;
    v0[24] = OBJC_IVAR____TtC16MusicRecognition9MatchView_albumArtView;
    v3 = *(Strong + v2);
    v4 = String._bridgeToObjectiveC()();
    [v3 setState:v4];

    v5 = static Duration.seconds(_:)();
    v7 = v6;
    static Clock<>.continuous.getter();
    v8 = swift_task_alloc();
    v0[25] = v8;
    *v8 = v0;
    v8[1] = sub_1000AC6E8;

    return sub_100057934(v5, v7, 0, 0, 1);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1000AC6E8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  *(*v1 + 208) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 176);
  v7 = *(v2 + 168);
  if (v0)
  {
    v8 = sub_1000ACCC4;
  }

  else
  {
    v8 = sub_1000AC880;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1000AC880()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v2 + v1);
  v4 = String._bridgeToObjectiveC()();
  [v3 setState:v4];

  v5 = *(v2 + v1);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 publishedObjectWithName:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  *(v0 + 16) = v29;
  *(v0 + 32) = v30;
  if (*(v0 + 40))
  {
    sub_1000123E4(0, qword_100146900, CALayer_ptr);
    if (swift_dynamicCast())
    {
      v8 = *(v0 + 120);
      *(v0 + 216) = *(v0 + 104);
      v9 = [v8 artworkURL];
      if (v9)
      {
        v10 = *(v0 + 128);
        v11 = v9;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v12 = type metadata accessor for URL();
        (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
        sub_100007E14(v10, &unk_100144630, &qword_1000F5180);
        v13 = swift_task_alloc();
        *(v0 + 224) = v13;
        *v13 = v0;
        v13[1] = sub_1000ACD4C;

        return sub_1000E9C38();
      }

      v17 = *(v0 + 128);

      v18 = type metadata accessor for URL();
      (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
      sub_100007E14(v17, &unk_100144630, &qword_1000F5180);
      v19 = String._bridgeToObjectiveC()();
      v20 = [objc_opt_self() imageNamed:v19];

      if (v20)
      {
        v21 = [v20 CGImage];

        if (v21)
        {
          type metadata accessor for CGImage(0);
          *(v0 + 72) = v22;
          *(v0 + 48) = v21;
          sub_10000DC80((v0 + 48), v22);
          v20 = _bridgeAnythingToObjectiveC<A>(_:)();
          sub_100007E74((v0 + 48));
        }

        else
        {
          v20 = 0;
        }
      }

      v23 = *(v0 + 216);
      v25 = *(v0 + 184);
      v24 = *(v0 + 192);
      [v23 setContents:{v20, v29, v30}];
      swift_unknownObjectRelease();
      v26 = *&v25[v24];
      v27 = String._bridgeToObjectiveC()();
      [v26 setState:v27];
    }

    else
    {
      v16 = *(v0 + 184);
    }
  }

  else
  {
    v15 = *(v0 + 184);

    sub_100007E14(v0 + 16, &qword_100145B28, &qword_1000FA590);
  }

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1000ACCC4()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000ACD4C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 232) = a1;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);

  return _swift_task_switch(sub_1000ACE74, v4, v3);
}

uint64_t sub_1000ACE74()
{
  v1 = v0[29];

  if (v1)
  {
    v2 = v0[29];
    v1 = [v2 CGImage];

    if (v1)
    {
      type metadata accessor for CGImage(0);
      v0[9] = v3;
      v0[6] = v1;
      sub_10000DC80(v0 + 6, v3);
      v1 = _bridgeAnythingToObjectiveC<A>(_:)();
      sub_100007E74(v0 + 6);
    }
  }

  v4 = v0[27];
  v6 = v0[23];
  v5 = v0[24];
  [v4 setContents:v1];
  swift_unknownObjectRelease();
  v7 = *&v6[v5];
  v8 = String._bridgeToObjectiveC()();
  [v7 setState:v8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000AD084()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AD0BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000AD104(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000789C;

  return sub_1000AC414(a1, v4, v5, v7, v6);
}

void sub_1000AD1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HistoryViewModel(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    sub_100025234(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000AD268(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100002D44(&qword_100143280, &unk_1000F6A70);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1000AD338(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100002D44(&qword_100143280, &unk_1000F6A70);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000AD480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  v8 = __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000AD578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  v8 = __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000AD670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v36 = a3;
  v3 = *(a1 + 24);
  v4 = *(a1 + 16);
  type metadata accessor for LibraryListView(255, v4, v3, a2);
  v32 = type metadata accessor for _ConditionalContent();
  v5 = type metadata accessor for Group();
  v35 = *(v5 - 8);
  __chkstk_darwin(v5);
  v33 = &v29 - v6;
  sub_100004370(&qword_100143388, &unk_1000F6B70);
  v7 = type metadata accessor for ModifiedContent();
  v10 = sub_1000AE5B0(v7, v8, v9);
  WitnessTable = swift_getWitnessTable();
  v53 = v10;
  v54 = WitnessTable;
  v31 = swift_getWitnessTable();
  v52 = v31;
  v12 = swift_getWitnessTable();
  v13 = sub_100004610(&qword_100143380, &qword_100143388, &unk_1000F6B70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v50 = v12;
  v51 = v13;
  v30 = v12;
  v29 = v7;
  v14 = swift_getWitnessTable();
  v44 = v5;
  v45 = &type metadata for Solarium;
  v46 = v7;
  v47 = v12;
  v48 = &protocol witness table for Solarium;
  v49 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v29 - v20;
  v22 = v4;
  v41 = v4;
  v42 = v3;
  v23 = v34;
  v43 = v34;
  v24 = v33;
  Group<A>.init(content:)();
  Solarium.init()();
  v38 = v22;
  v39 = v3;
  v40 = v23;
  v25 = swift_checkMetadataState();
  View.staticIf<A, B>(_:then:)(v25, sub_1000AE610, v37, v5, &type metadata for Solarium, v25, v30, &protocol witness table for Solarium, v14);
  (*(v35 + 8))(v24, v5);
  v26 = *(v16 + 16);
  v26(v21, v18, OpaqueTypeMetadata2);
  v27 = *(v16 + 8);
  v27(v18, OpaqueTypeMetadata2);
  v26(v36, v21, OpaqueTypeMetadata2);
  return (v27)(v21, OpaqueTypeMetadata2);
}

uint64_t sub_1000ADA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v89 = a5;
  v8 = type metadata accessor for LibraryListView(0, a2, a3, a4);
  v83 = *(v8 - 8);
  __chkstk_darwin(v8);
  v84 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v85 = &v77 - v11;
  v13 = type metadata accessor for HistoryView(0, a2, a3, v12);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v82 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v77 - v17;
  v19 = type metadata accessor for _ConditionalContent();
  v87 = *(v19 - 8);
  v88 = v19;
  __chkstk_darwin(v19);
  v86 = &v77 - v20;
  v22 = sub_100071084(v21);
  if (v22 > 1u)
  {
    v82 = sub_1000714B0();
    (*(v14 + 16))(v18, a1, v13);
    v24 = v83;
    v25 = a2;
    v26 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v27 = swift_allocObject();
    v28 = a3;
    v29 = v27;
    *(v27 + 16) = v25;
    *(v27 + 24) = v28;
    (*(v14 + 32))(v27 + v26, v18, v13);

    v31 = v84;
    sub_10003178C(v30, sub_1000AF8A8, v29, v84);
    WitnessTable = swift_getWitnessTable();
    v33 = *(v24 + 16);
    v34 = v85;
    v33(v85, v31, v8);
    v35 = *(v24 + 8);
    v35(v31, v8);
    v36 = (v33)(v31, v34, v8);
    v39 = sub_1000AE5B0(v36, v37, v38);
    v40 = v86;
    sub_1000AD578(v31, &type metadata for LibraryEmptyView, v8, v39, WitnessTable);
    v35(v31, v8);
    v41 = (v35)(v34, v8);
  }

  else
  {
    v85 = v8;
    v23 = sub_10007118C(v22);
    v81 = a2;
    if (v23)
    {
      LODWORD(v84) = 1;
    }

    else
    {
      LODWORD(v84) = sub_1000711B0(v23);
    }

    v79 = *(v14 + 16);
    v80 = a1;
    v79(v18, a1, v13);
    v44 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v45 = swift_allocObject();
    v83 = v45;
    v46 = v81;
    *(v45 + 16) = v81;
    *(v45 + 24) = a3;
    v78 = a3;
    v47 = *(v14 + 32);
    v47(v45 + v44, v18, v13);
    v48 = v82;
    v79(v82, v80, v13);
    v49 = swift_allocObject();
    v50 = v78;
    *(v49 + 16) = v46;
    *(v49 + 24) = v50;
    v47(v49 + v44, v48, v13);
    v51 = LocalizedStringKey.init(stringLiteral:)();
    v53 = v52;
    v55 = v54;
    v57 = v56 & 1;
    v58 = LocalizedStringKey.init(stringLiteral:)();
    v60 = v59;
    v62 = v61;
    v64 = v63 & 1;
    v65 = LocalizedStringKey.init(stringLiteral:)();
    *&v90 = v51;
    *(&v90 + 1) = v53;
    LOBYTE(v91) = v57;
    *(&v91 + 1) = *v102;
    DWORD1(v91) = *&v102[3];
    *(&v91 + 1) = v55;
    *&v92 = v58;
    *(&v92 + 1) = v60;
    LOBYTE(v93) = v64;
    *(&v93 + 1) = *v101;
    DWORD1(v93) = *&v101[3];
    *(&v93 + 1) = v62;
    *&v94 = v65;
    *(&v94 + 1) = v66;
    LOBYTE(v95) = v67 & 1;
    DWORD1(v95) = *&v100[3];
    *(&v95 + 1) = *v100;
    *(&v95 + 1) = v68;
    LOBYTE(v96) = v84 & 1;
    *(&v96 + 1) = *v99;
    DWORD1(v96) = *&v99[3];
    *(&v96 + 1) = sub_1000AF8B8;
    *&v97 = v83;
    *(&v97 + 1) = sub_1000AFA5C;
    v98 = v49;
    v69 = sub_1000AE5B0(v65, v66, v67);
    v70 = v85;
    v71 = swift_getWitnessTable();
    v40 = v86;
    sub_1000AD480(&v90, &type metadata for LibraryEmptyView, v70, v69, v71);
    v103[5] = v95;
    v103[6] = v96;
    v103[7] = v97;
    v103[1] = v91;
    v103[2] = v92;
    v103[3] = v93;
    v103[4] = v94;
    v104 = v98;
    v103[0] = v90;
    v41 = sub_1000AFA6C(v103);
  }

  v72 = sub_1000AE5B0(v41, v42, v43);
  v73 = swift_getWitnessTable();
  v105 = v72;
  v106 = v73;
  v74 = v88;
  swift_getWitnessTable();
  v75 = v87;
  (*(v87 + 16))(v89, v40, v74);
  return (*(v75 + 8))(v40, v74);
}

uint64_t sub_1000AE164(uint64_t a1)
{
  result = sub_100071084(a1);
  if (!result)
  {

    return sub_100071538(0xFu, 0xBu);
  }

  return result;
}

uint64_t sub_1000AE1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v35[0] = a2;
  v35[4] = a1;
  v36 = a5;
  v7 = type metadata accessor for ColorScheme();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v35 - v12;
  v35[1] = type metadata accessor for LibraryListView(255, a3, a4, v14);
  v35[2] = type metadata accessor for _ConditionalContent();
  v15 = type metadata accessor for Group();
  sub_100004370(&qword_100143388, &unk_1000F6B70);
  v35[3] = v15;
  v16 = type metadata accessor for ModifiedContent();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v35 - v21;
  type metadata accessor for HistoryView(0, a3, a4, v23);
  sub_10004116C(v13);
  (*(v8 + 104))(v10, enum case for ColorScheme.dark(_:), v7);
  LOBYTE(a4) = static ColorScheme.== infix(_:_:)();
  v24 = *(v8 + 8);
  v24(v10, v7);
  v24(v13, v7);
  if (a4)
  {
    v25 = static Color.white.getter();
  }

  else
  {
    v25 = static Color.black.getter();
  }

  v42 = v25;
  v28 = sub_1000AE5B0(v25, v26, v27);
  WitnessTable = swift_getWitnessTable();
  v40 = v28;
  v41 = WitnessTable;
  v39 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  View.tint<A>(_:)();

  v31 = sub_100004610(&qword_100143380, &qword_100143388, &unk_1000F6B70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v37 = v30;
  v38 = v31;
  swift_getWitnessTable();
  v32 = *(v17 + 16);
  v32(v22, v19, v16);
  v33 = *(v17 + 8);
  v33(v19, v16);
  v32(v36, v22, v16);
  return (v33)(v22, v16);
}

unint64_t sub_1000AE5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100146988;
  if (!qword_100146988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100146988);
  }

  return result;
}

uint64_t sub_1000AE61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v47 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v3 = *(v47 - 8);
  __chkstk_darwin(v47);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&unk_100144630, &qword_1000F5180);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v46 - v10;
  v12 = sub_100002D44(&qword_1001469B0, &qword_1000FBCF0);
  __chkstk_darwin(v12);
  v14 = &v46 - v13;
  v15 = sub_100002D44(&qword_1001469E8, &qword_1000FBD20);
  v48 = *(v15 - 8);
  v49 = v15;
  __chkstk_darwin(v15);
  v46 = &v46 - v16;
  v50 = sub_100002D44(&qword_100146998, &qword_1000FBCE0);
  __chkstk_darwin(v50);
  v18 = &v46 - v17;
  *v14 = static HorizontalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v19 = sub_100002D44(&qword_1001469F0, &qword_1000FBD28);
  sub_1000AEC40(a1, &v14[*(v19 + 44)]);
  v20 = type metadata accessor for URL();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v21 = swift_allocObject();
  v22 = *(a1 + 112);
  *(v21 + 112) = *(a1 + 96);
  *(v21 + 128) = v22;
  *(v21 + 144) = *(a1 + 128);
  v23 = *(a1 + 48);
  *(v21 + 48) = *(a1 + 32);
  *(v21 + 64) = v23;
  v24 = *(a1 + 80);
  *(v21 + 80) = *(a1 + 64);
  *(v21 + 96) = v24;
  v25 = *(a1 + 16);
  *(v21 + 16) = *a1;
  *(v21 + 32) = v25;
  sub_100007FDC(v11, v8, &unk_100144630, &qword_1000F5180);
  v26 = &v14[*(v12 + 36)];
  sub_1000AFFD4(a1, &v52);
  sub_100089B20(v8, v26);
  v27 = type metadata accessor for ShazamUpsellOverlayModifier(0);
  v28 = v27[6];
  *&v26[v28] = swift_getKeyPath();
  sub_100002D44(&qword_1001420C8, &qword_1000F7A10);
  swift_storeEnumTagMultiPayload();
  v29 = v27[7];
  *&v26[v29] = swift_getKeyPath();
  sub_100002D44(&qword_1001420D8, &qword_1000F75E0);
  v30 = swift_storeEnumTagMultiPayload();
  v52 = 0x4051800000000000;
  sub_100080214(v30, v31, v32);
  ScaledMetric.init(wrappedValue:)();
  sub_100007E14(v11, &unk_100144630, &qword_1000F5180);
  v33 = &v26[v27[5]];
  *v33 = sub_1000AFFA4;
  v33[1] = v21;
  v34 = v46;
  v35 = v47;
  (*(v3 + 104))(v5, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v47);
  sub_1000AFE3C();
  View.navigationBarTitleDisplayMode(_:)();
  (*(v3 + 8))(v5, v35);
  sub_100007E14(v14, &qword_1001469B0, &qword_1000FBCF0);
  if (static Solarium.isEnabled.getter())
  {
    v36 = static Color.clear.getter();
  }

  else
  {
    v37 = [objc_opt_self() systemGroupedBackgroundColor];
    v36 = Color.init(uiColor:)();
  }

  v38 = v36;
  v39 = static Edge.Set.all.getter();
  (*(v48 + 32))(v18, v34, v49);
  v40 = &v18[*(v50 + 36)];
  *v40 = v38;
  v40[8] = v39;
  sub_100002D44(&qword_1001469A0, &qword_1000FBCE8);
  sub_1000AFD48();
  v41 = sub_100004370(&qword_1001469D0, &qword_1000FBD08);
  v42 = sub_100004370(&qword_1001469D8, &unk_1000FBD10);
  v43 = sub_100004610(&qword_1001469E0, &qword_1001469D8, &unk_1000FBD10, &protocol conformance descriptor for ToolbarItem<A, B>);
  v52 = v42;
  v53 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v41;
  v53 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  return sub_1000B001C(v18);
}

uint64_t sub_1000AEC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002D44(&qword_100146A18, &qword_1000FBDD8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - v6;
  v40 = sub_100002D44(&qword_100146A20, &qword_1000FBDE0);
  __chkstk_darwin(v40);
  v9 = &v38 - v8;
  v10 = sub_100002D44(&qword_100146A28, &qword_1000FBDE8);
  __chkstk_darwin(v10);
  v12 = &v38 - v11;
  v13 = sub_100002D44(&qword_100146A30, &qword_1000FBDF0);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  v39 = static Edge.Set.horizontal.getter();
  v19 = EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  LOBYTE(v41) = 0;
  if (*(a1 + 96))
  {
    v29 = *(a1 + 64);
    v28 = *(a1 + 72);
    v30 = *(a1 + 80);
    v31 = *(a1 + 88);

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *v12 = v29;
    *(v12 + 1) = v28;
    v12[16] = v30;
    *(v12 + 3) = v31;
    v32 = v46;
    *(v12 + 6) = v45;
    *(v12 + 7) = v32;
    *(v12 + 8) = v47;
    v33 = v42;
    *(v12 + 2) = v41;
    *(v12 + 3) = v33;
    v34 = v44;
    *(v12 + 4) = v43;
    *(v12 + 5) = v34;
    swift_storeEnumTagMultiPayload();
    sub_100002D44(&qword_100146A40, &qword_1000FBDF8);
    sub_1000B022C();
    sub_1000B02B8();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v38 = v10;
    __chkstk_darwin(v19);
    __chkstk_darwin(v35);
    ContentUnavailableView.init(label:description:actions:)();
    sub_100004610(&qword_100146A38, &qword_100146A18, &qword_1000FBDD8, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
    View.accessibilityIdentifier(_:)();
    (*(v5 + 8))(v7, v4);
    sub_100007FDC(v9, v12, &qword_100146A20, &qword_1000FBDE0);
    swift_storeEnumTagMultiPayload();
    sub_100002D44(&qword_100146A40, &qword_1000FBDF8);
    sub_1000B022C();
    sub_1000B02B8();
    _ConditionalContent<>.init(storage:)();
    sub_100007E14(v9, &qword_100146A20, &qword_1000FBDE0);
  }

  sub_100007FDC(v18, v15, &qword_100146A30, &qword_1000FBDF0);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v39;
  *(a2 + 24) = v21;
  *(a2 + 32) = v23;
  *(a2 + 40) = v25;
  *(a2 + 48) = v27;
  *(a2 + 56) = 0;
  v36 = sub_100002D44(&qword_100146A58, &qword_1000FBE00);
  sub_100007FDC(v15, a2 + *(v36 + 48), &qword_100146A30, &qword_1000FBDF0);
  sub_100007E14(v18, &qword_100146A30, &qword_1000FBDF0);
  return sub_100007E14(v15, &qword_100146A30, &qword_1000FBDF0);
}

uint64_t sub_1000AF1AC@<X0>(uint64_t a2@<X8>)
{

  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  static Font.headline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_10000BFBC(v3, v5, v7 & 1);

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_1000AF2C8@<X0>(uint64_t a2@<X8>)
{

  result = Text.init(_:tableName:bundle:comment:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1000AF35C@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100002D44(&qword_1001469D8, &unk_1000FBD10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - v4;
  v6 = sub_100002D44(&qword_1001469D0, &qword_1000FBD08);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v12 - v8;
  static ToolbarItemPlacement.topBarTrailing.getter();
  sub_100002D44(&qword_1001469F8, &qword_1000FBD98);
  sub_1000B0084();
  ToolbarItem<>.init(placement:content:)();
  v10 = sub_100004610(&qword_1001469E0, &qword_1001469D8, &unk_1000FBD10, &protocol conformance descriptor for ToolbarItem<A, B>);
  ToolbarContent.platterHidden(_:)();
  (*(v3 + 8))(v5, v2);
  v12[2] = v2;
  v12[3] = v10;
  swift_getOpaqueTypeConformance2();
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1000AF5EC@<X0>(uint64_t a1@<X8>)
{
  Image.init(systemName:)();
  static Font.body.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  swift_getKeyPath();
  sub_100002D44(&qword_100143AB0, &qword_1000F7470);
  sub_10003E3A8();
  View.accessibilityHidden(_:)();

  result = sub_100002D44(&qword_1001469F8, &qword_1000FBD98);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1000AF6E4()
{
  sub_100002D44(&qword_100146990, &qword_1000FBCD8);
  sub_100004370(&qword_100146998, &qword_1000FBCE0);
  sub_100004370(&qword_1001469A0, &qword_1000FBCE8);
  sub_1000AFD48();
  sub_100004370(&qword_1001469D0, &qword_1000FBD08);
  sub_100004370(&qword_1001469D8, &unk_1000FBD10);
  sub_100004610(&qword_1001469E0, &qword_1001469D8, &unk_1000FBD10, &protocol conformance descriptor for ToolbarItem<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

uint64_t sub_1000AF8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for HistoryView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1000AE164(v6);
}

uint64_t sub_1000AF93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for HistoryView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = *(*v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*v5 + 64);

  v9 = v5[11];
  sub_100002D44(&qword_1001420C8, &qword_1000F7A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ColorScheme();
    (*(*(v10 - 8) + 8))(v4 + v7 + v9, v10);
  }

  else
  {
  }

  return _swift_deallocObject(v4, v7 + v8, v6 | 7);
}

__n128 sub_1000AFA9C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1000AFAD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1000AFB18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000AFB88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LibraryListView(255, *a1, a1[1], a4);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  sub_100004370(&qword_100143388, &unk_1000F6B70);
  v4 = type metadata accessor for ModifiedContent();
  sub_1000AE5B0(v4, v5, v6);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100004610(&qword_100143380, &qword_100143388, &unk_1000F6B70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000AFD48()
{
  result = qword_1001469A8;
  if (!qword_1001469A8)
  {
    sub_100004370(&qword_100146998, &qword_1000FBCE0);
    sub_100004370(&qword_1001469B0, &qword_1000FBCF0);
    sub_1000AFE3C();
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_1001457F8, &qword_100145800, &unk_1000F9EE0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001469A8);
  }

  return result;
}

unint64_t sub_1000AFE3C()
{
  result = qword_1001469B8;
  if (!qword_1001469B8)
  {
    sub_100004370(&qword_1001469B0, &qword_1000FBCF0);
    sub_100004610(&qword_1001469C0, &qword_1001469C8, &unk_1000FBCF8, &protocol conformance descriptor for VStack<A>);
    sub_1000B01CC(&qword_100143A20, type metadata accessor for ShazamUpsellOverlayModifier, &unk_1000FE080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001469B8);
  }

  return result;
}

uint64_t sub_1000AFF24()
{

  if (*(v0 + 120))
  {
  }

  if (*(v0 + 136))
  {
  }

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_1000AFFA4()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1000B001C(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100146998, &qword_1000FBCE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000B0084()
{
  result = qword_100146A00;
  if (!qword_100146A00)
  {
    sub_100004370(&qword_1001469F8, &qword_1000FBD98);
    sub_1000B0110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100146A00);
  }

  return result;
}

unint64_t sub_1000B0110()
{
  result = qword_100146A08;
  if (!qword_100146A08)
  {
    sub_100004370(&qword_100146A10, &qword_1000FBDA0);
    sub_10003E3A8();
    sub_1000B01CC(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100146A08);
  }

  return result;
}

uint64_t sub_1000B01CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000B022C()
{
  result = qword_100146A48;
  if (!qword_100146A48)
  {
    v1 = sub_100004370(&qword_100146A40, &qword_1000FBDF8);
    sub_10002D0E0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100146A48);
  }

  return result;
}

unint64_t sub_1000B02B8()
{
  result = qword_100146A50;
  if (!qword_100146A50)
  {
    sub_100004370(&qword_100146A20, &qword_1000FBDE0);
    sub_100004610(&qword_100146A38, &qword_100146A18, &qword_1000FBDD8, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
    sub_1000B01CC(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100146A50);
  }

  return result;
}

unint64_t sub_1000B03F0(uint64_t a1)
{
  result = sub_10006A3FC();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000B0490(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = ((a1 + 9) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 16) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1000B061C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((a1 + 9) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 16) & ~v9);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *v19 = a2 & 0x7FFFFFFF;
    v19[1] = 0;
  }

  else
  {
    *v19 = a2 - 1;
  }
}

uint64_t sub_1000B0928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v4 = v3;
  v43 = a2;
  v5 = *(a1 + 24);
  v34 = *(a1 + 16);
  v6 = v5;
  v33 = v5;
  v35 = type metadata accessor for ObservableScrollView.OffsetPreferenceKey(255, v34, v5, a3);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for SizeModifier(255, v35, WitnessTable, v7);
  type metadata accessor for ModifiedContent();
  v53 = v6;
  v54 = swift_getWitnessTable();
  v42 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v32 = swift_getWitnessTable();
  v8 = type metadata accessor for ScrollView();
  v36 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  sub_100004370(&qword_100146AF0, &qword_1000FBE88);
  v11 = type metadata accessor for ModifiedContent();
  v41 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v37 = sub_1000506E4(v14, v15, v16);
  v39 = type metadata accessor for _PreferenceActionModifier();
  v17 = type metadata accessor for ModifiedContent();
  v40 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v32 - v21;
  v44 = v34;
  v45 = v33;
  v46 = v4;
  ScrollView.init(_:showsIndicators:content:)();
  v51 = 0x69566C6C6F726373;
  v52 = 0xEA00000000007765;
  v23 = swift_getWitnessTable();
  View.coordinateSpace<A>(name:)();

  (*(v36 + 8))(v10, v8);
  v25 = *(v4 + 8);
  v24 = *(v4 + 16);
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v24;
  v27 = sub_1000B11B8();
  v49 = v23;
  v50 = v27;

  v28 = swift_getWitnessTable();
  View.onPreferenceChange<A>(_:perform:)();

  (*(v41 + 8))(v13, v11);
  v29 = swift_getWitnessTable();
  v47 = v28;
  v48 = v29;
  swift_getWitnessTable();
  sub_1000B03E4();
  v30 = *(v40 + 8);
  v30(v19, v17);
  sub_1000B03E4();
  return (v30)(v22, v17);
}

uint64_t sub_1000B0E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a1;
  v29 = a4;
  v6 = type metadata accessor for CoordinateSpace();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ObservableScrollView.OffsetPreferenceKey(255, a2, a3, v10);
  WitnessTable = swift_getWitnessTable();
  v27 = type metadata accessor for SizeModifier(255, v11, WitnessTable, v12);
  v25 = a2;
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v24 - v18;
  type metadata accessor for ObservableScrollView(0, a2, a3, v20);
  v32 = 0x69566C6C6F726373;
  v33 = 0xEA00000000007765;
  AnyHashable.init<A>(_:)();
  (*(v7 + 104))(v9, enum case for CoordinateSpace.named(_:), v6);
  sub_1000D6C28(v11, v9, sub_1000B1124, 0, v25, v11, a3, WitnessTable, v16);
  (*(v7 + 8))(v9, v6);
  v21 = swift_getWitnessTable();
  v30 = a3;
  v31 = v21;
  swift_getWitnessTable();
  sub_1000B03E4();
  v22 = *(v14 + 8);
  v22(v16, v13);
  sub_1000B03E4();
  return (v22)(v19, v13);
}

uint64_t sub_1000B1154()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000B11B8()
{
  result = qword_100146AF8[0];
  if (!qword_100146AF8[0])
  {
    sub_100004370(&qword_100146AF0, &qword_1000FBE88);
    result = swift_getWitnessTable();
    atomic_store(result, qword_100146AF8);
  }

  return result;
}

uint64_t sub_1000B1224(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for ObservableScrollView.OffsetPreferenceKey(255, *a1, a1[1], a4);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for SizeModifier(255, v4, WitnessTable, v6);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  sub_100004370(&qword_100146AF0, &qword_1000FBE88);
  v7 = type metadata accessor for ModifiedContent();
  sub_1000506E4(v7, v8, v9);
  type metadata accessor for _PreferenceActionModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_1000B11B8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000B13D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

double sub_1000B1410(uint64_t a1)
{
  v6 = 0;
  v7 = 0.0;
  v4 = 0;
  v5 = 0;
  sub_100051D2C();

  v1 = UIColor.init(_:)();
  v2 = [v1 getRed:&v7 green:&v6 blue:&v5 alpha:&v4];

  result = 0.0;
  if (v2)
  {
    return v7;
  }

  return result;
}

double sub_1000B14C8(uint64_t a1)
{
  v2 = sub_1000B1410(a1);
  if (v2 >= 0.04045)
  {
    v3 = pow((v2 + 0.055) / 1.055, 2.4);
  }

  else
  {
    v3 = v2 / 12.92;
  }

  sub_1000B1410(a1);
  if (v4 >= 0.04045)
  {
    v5 = pow((v4 + 0.055) / 1.055, 2.4);
  }

  else
  {
    v5 = v4 / 12.92;
  }

  sub_1000B1410(a1);
  if (v6 >= 0.04045)
  {
    v7 = pow((v6 + 0.055) / 1.055, 2.4);
  }

  else
  {
    v7 = v6 / 12.92;
  }

  return v3 * 0.2126 + v5 * 0.7152 + v7 * 0.0722;
}

uint64_t sub_1000B160C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000B168C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MusicKitSong(uint64_t a1)
{
  result = qword_100146BD8;
  if (!qword_100146BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B1748(uint64_t a1)
{
  result = type metadata accessor for Song();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000B17B4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PreviewAsset();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Song.previewAssets.getter();
  if (v6)
  {
    if (*(v6 + 16))
    {
      (*(v3 + 16))(v5, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

      PreviewAsset.url.getter();
      return (*(v3 + 8))(v5, v2);
    }
  }

  v8 = type metadata accessor for URL();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, 1, 1, v8);
}

void sub_1000B194C()
{
  v1 = v0;
  v2 = objc_allocWithZone(AVURLAsset);
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v14 = [v2 initWithURL:v4 options:0];

  v6 = [objc_allocWithZone(AVPlayerItem) initWithAsset:v14];
  [v6 setPreferredForwardBufferDuration:0.0];
  v7 = [objc_allocWithZone(AVQueuePlayer) initWithPlayerItem:v6];
  [v7 setMuted:1];
  v8 = [objc_opt_self() playerLayerWithPlayer:v7];
  v9 = *&v1[OBJC_IVAR____TtC16MusicRecognitionP33_CD8D04CF73D338E472373D718D0990B827AnimatedArtworkPlayerUIView_playerLayer];
  *&v1[OBJC_IVAR____TtC16MusicRecognitionP33_CD8D04CF73D338E472373D718D0990B827AnimatedArtworkPlayerUIView_playerLayer] = v8;
  v10 = v8;

  if (v10)
  {
    v11 = [objc_opt_self() playerLooperWithPlayer:v7 templateItem:v6];
    v12 = *&v1[OBJC_IVAR____TtC16MusicRecognitionP33_CD8D04CF73D338E472373D718D0990B827AnimatedArtworkPlayerUIView_playbackLooper];
    *&v1[OBJC_IVAR____TtC16MusicRecognitionP33_CD8D04CF73D338E472373D718D0990B827AnimatedArtworkPlayerUIView_playbackLooper] = v11;

    [v7 play];
    v13 = [v1 layer];
    [v13 addSublayer:v10];

    v6 = v10;
    v7 = v13;
  }
}

id sub_1000B1D18()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = type metadata accessor for AnimatedArtworkPlayerUIView();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC16MusicRecognitionP33_CD8D04CF73D338E472373D718D0990B827AnimatedArtworkPlayerUIView_playerLayer] = 0;
  *&v7[OBJC_IVAR____TtC16MusicRecognitionP33_CD8D04CF73D338E472373D718D0990B827AnimatedArtworkPlayerUIView_playbackLooper] = 0;
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1000B194C();

  (*(v2 + 8))(v5, v1);
  return v8;
}

uint64_t sub_1000B1E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000B232C(&qword_100146D70, &unk_1000FC0B8);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000B1EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000B232C(&qword_100146D70, &unk_1000FC0B8);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000B1F5C(uint64_t a1)
{
  sub_1000B232C(&qword_100146D70, &unk_1000FC0B8);
  UIViewRepresentable.body.getter();
  __break(1u);
}

id sub_1000B1FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 16))(a2, v2, v5);
  v7 = *(v2 + *(a1 + 20));
  *(a2 + *(type metadata accessor for AnimatedArtworkPlayerViewRepresentable(0) + 20)) = v7;

  return v7;
}

uint64_t sub_1000B2074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000B2144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1000B21FC(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = sub_100051D2C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000B22E8(uint64_t a1)
{
  result = sub_1000B232C(&qword_100146D70, &unk_1000FC0B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B232C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnimatedArtworkPlayerViewRepresentable(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B237C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002D44(&qword_100146E70, &unk_1000FC200);
    v2 = static _DictionaryStorage.allocate(capacity:)();
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
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
        sub_1000B2D34();

        v19 = v18;
        swift_dynamicCast();
        sub_1000B2D80(&v25, v27);
        sub_1000B2D80(v27, v28);
        sub_1000B2D80(v28, &v26);
        result = sub_1000B8EA0(v17, v16);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_100007E74(v11);
          result = sub_1000B2D80(&v26, v11);
          v8 = v12;
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

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v17;
          v21[1] = v16;
          result = sub_1000B2D80(&v26, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1000B25D8()
{

  v1 = OBJC_IVAR____TtC16MusicRecognition19LocationModuleModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for LocationModuleModel(uint64_t a1)
{
  result = qword_100146DA8;
  if (!qword_100146DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B26F8(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1000B27B4(uint64_t a1, char *a2, uint64_t a3, double a4)
{
  v5 = v4;
  v37 = a2;
  v38 = type metadata accessor for Date();
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(NSDateFormatter) init];
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v12 + 8))(v14, v11);
  [v15 setLocale:isa];

  v17 = String._bridgeToObjectiveC()();
  [v15 setLocalizedDateFormatFromTemplate:v17];

  *(v5 + 64) = v15;
  v18 = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
  [v18 setUnitsStyle:0];
  *(v5 + 72) = v18;
  ObservationRegistrar.init()();
  *(v5 + 16) = a1;
  *(v5 + 40) = a3;
  v19 = *(v5 + 72);

  v20 = v19;
  v21 = v37;
  v22 = Date._bridgeToObjectiveC()().super.isa;
  static Date.now.getter();
  v23 = Date._bridgeToObjectiveC()().super.isa;
  v24 = *(v8 + 8);
  v25 = v38;
  v24(v10, v38);
  v26 = [v20 localizedStringForDate:v22 relativeToDate:v23];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  *(v5 + 24) = v27;
  *(v5 + 32) = v29;
  v30 = *(v5 + 64);
  v31 = Date._bridgeToObjectiveC()().super.isa;
  v32 = [v30 stringFromDate:v31];

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v24(v21, v25);
  *(v5 + 48) = v33;
  *(v5 + 56) = v35;
  return v5;
}

void sub_1000B2AEC(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v22 = MKCoordinateRegionMakeWithDistance(*&a1, 1000.0, 1000.0);
  latitude = v22.center.latitude;
  longitude = v22.center.longitude;
  latitudeDelta = v22.span.latitudeDelta;
  longitudeDelta = v22.span.longitudeDelta;
  sub_100002D44(&qword_100146E60, &qword_1000FC1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F7970;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v12;
  v13 = objc_opt_self();
  *(inited + 48) = [v13 valueWithMKCoordinate:{latitude, longitude}];
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v14;
  *(inited + 72) = [v13 valueWithMKCoordinateSpan:{latitudeDelta, longitudeDelta}];
  v15 = sub_1000D5A90(inited);
  swift_setDeallocating();
  sub_100002D44(&qword_100146E68, &qword_1000FC1F8);
  swift_arrayDestroy();
  v16 = [objc_allocWithZone(MKPlacemark) initWithCoordinate:0 addressDictionary:{a1, a2}];
  v17 = [objc_allocWithZone(MKMapItem) initWithPlacemark:v16];
  v18 = a4;
  v19 = v17;
  if (v18)
  {
    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  [v19 setName:v20];

  sub_1000B237C(v15);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v19 openInMapsWithLaunchOptions:isa];
}

unint64_t sub_1000B2D34()
{
  result = qword_100146E78[0];
  if (!qword_100146E78[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_100146E78);
  }

  return result;
}

_OWORD *sub_1000B2D80(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000B2D90(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000B2E24()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000B2EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000B2F24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000B2F6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1000B3000(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

double sub_1000B306C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000B30E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_previewController + 24);
  v2 = *(v0 + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_previewController + 32);
  sub_10000DC80((v0 + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_previewController), v1);
  (*(v2 + 8))(v1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = [objc_opt_self() mainBundle];
  v4 = "LAYBACK_TOOL_TIP";
  if (v9 == 1)
  {
    v4 = "SHAZAM_START_PLAYBACK";
  }

  v10._object = 0xE000000000000000;
  v5._object = (v4 | 0x8000000000000000);
  v5._countAndFlagsBits = 0xD000000000000015;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v3, v6, v10)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1000B3220(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_1000B32AC(_BYTE *a1, uint64_t a2)
{
  if (*a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t sub_1000B3388()
{
  v1 = OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel__previewProgress;
  v2 = sub_100002D44(&qword_1001453E0, &qword_1000F9980);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel__backgroundOpacity, v2);
  v4 = OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel__previewButtonWidth;
  v5 = sub_100002D44(&qword_100147098, &qword_1000FC3C0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  sub_100007E74((v0 + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_previewController));

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t type metadata accessor for SongPreviewPlaybackViewModel(uint64_t a1)
{
  result = qword_100146FD0;
  if (!qword_100146FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B3554(uint64_t a1)
{
  sub_100073950(319, &qword_100145348, &type metadata for Double);
  if (v1 <= 0x3F)
  {
    sub_100073950(319, &unk_100146FE0, &type metadata for CGFloat);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_1000B36A8@<D0>(double *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v6;
  *a4 = v6;
  return result;
}

uint64_t sub_1000B3738(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1000B37B0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a2;
  v40 = a3;
  v47 = a1;
  v5 = sub_100002D44(&qword_1001470A0, &qword_1000FC3C8);
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v44 = &v39 - v6;
  v7 = sub_100002D44(&qword_1001470A8, &unk_1000FC3D0);
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v41 = &v39 - v8;
  v9 = sub_100002D44(&qword_100147098, &qword_1000FC3C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v13 = sub_100002D44(&qword_1001453E0, &qword_1000F9980);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - v15;
  v17 = OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel__previewProgress;
  v48 = 0;
  Published.init(initialValue:)();
  v18 = *(v14 + 32);
  v18(v4 + v17, v16, v13);
  v19 = OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel__backgroundOpacity;
  v48 = 0x3FF0000000000000;
  Published.init(initialValue:)();
  v18(v4 + v19, v16, v13);
  v20 = OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel__previewButtonWidth;
  v48 = 0;
  Published.init(initialValue:)();
  (*(v10 + 32))(v4 + v20, v12, v9);
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10006CBF0(_swiftEmptyArrayStorage);
  }

  else
  {
    v21 = &_swiftEmptySetSingleton;
  }

  *(v4 + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_cancellables) = v21;
  v22 = (v4 + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_mediaPlaybackToolTipLabel);
  v23 = [objc_opt_self() mainBundle];
  v49._object = 0xE000000000000000;
  v24._object = 0x80000001001028C0;
  v24._countAndFlagsBits = 0xD000000000000020;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v23, v25, v49);

  *v22 = v26;
  v27 = v47;
  sub_100007DB0(v47, v4 + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_previewController);
  v28 = v40;
  *(v4 + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_buttonColor) = v39;
  *(v4 + OBJC_IVAR____TtC16MusicRecognition28SongPreviewPlaybackViewModel_backgroundColor) = v28;
  v29 = v27[3];
  v30 = v27[4];
  sub_10000DC80(v27, v29);
  v31 = *(v30 + 8);

  v31(v29, v30);
  swift_beginAccess();
  v32 = v41;
  Published.projectedValue.getter();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_1000B3EA4(&qword_1001470B0, &qword_1001470A8, &unk_1000FC3D0);

  v33 = v43;
  Publisher<>.sink(receiveValue:)();

  (*(v42 + 8))(v32, v33);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v34 = v27[3];
  v35 = v27[4];
  sub_10000DC80(v27, v34);
  (*(v35 + 8))(v34, v35);
  swift_beginAccess();
  sub_100002D44(&qword_1001453E8, &qword_1000F9988);
  v36 = v44;
  Published.projectedValue.getter();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();

  sub_1000B3EA4(&qword_1001470B8, &qword_1001470A0, &qword_1000FC3C8);
  v37 = v46;
  Publisher<>.sink(receiveValue:)();

  (*(v45 + 8))(v36, v37);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_100007E74(v27);
  return v4;
}

uint64_t sub_1000B3E5C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B3EA4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004370(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000B3FD0(uint64_t a1)
{
  result = static Color.white.getter();
  qword_1001470D0 = result;
  return result;
}

uint64_t sub_1000B3FF0(uint64_t a1)
{
  result = static Color.black.getter();
  qword_1001470D8 = result;
  return result;
}

uint64_t sub_1000B4010(uint64_t a1)
{
  v40 = a1;
  v2 = type metadata accessor for ColorScheme();
  v39 = *(v2 - 8);
  __chkstk_darwin(v2);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002D44(&qword_100144140, &unk_1000F7DD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  v10 = *(type metadata accessor for TrackPageMetadata(0) + 32);
  sub_100007FDC(v1 + v10, v9, &qword_100144140, &unk_1000F7DD0);
  v11 = type metadata accessor for AnyAlbum(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) == 1)
  {
    v13 = v9;
LABEL_6:
    sub_100007E14(v13, &qword_100144140, &unk_1000F7DD0);
    goto LABEL_7;
  }

  v37 = v2;
  v14 = &v9[*(v11 + 20)];
  v15 = *(v14 + 3);
  v16 = *(v14 + 4);
  sub_10000DC80(v14, v15);
  v17 = (*(v16 + 16))(v15, v16);
  sub_1000B5E80(v9, type metadata accessor for AnyAlbum);
  if (!v17)
  {
LABEL_7:
    if (qword_100141C88 != -1)
    {
      swift_once();
    }

    v18 = qword_1001470C0;

    return v18;
  }

  sub_100007FDC(v1 + v10, v6, &qword_100144140, &unk_1000F7DD0);
  if (v12(v6, 1, v11) == 1)
  {

    v13 = v6;
    goto LABEL_6;
  }

  v20 = &v6[*(v11 + 20)];
  v21 = *(v20 + 3);
  v22 = *(v20 + 4);
  sub_10000DC80(v20, v21);
  v23 = (*(v22 + 24))(v21, v22);
  sub_1000B5E80(v6, type metadata accessor for AnyAlbum);
  if (!v23)
  {

    goto LABEL_7;
  }

  v25 = v38;
  v24 = v39;
  v26 = v37;
  (*(v39 + 104))(v38, enum case for ColorScheme.light(_:), v37);
  v27 = static ColorScheme.== infix(_:_:)();
  (*(v24 + 8))(v25, v26);
  if (v27)
  {
    if (qword_100141C98 != -1)
    {
      swift_once();
    }

    v28 = &qword_1001470D0;
  }

  else
  {
    if (qword_100141CA0 != -1)
    {
      swift_once();
    }

    v28 = &qword_1001470D8;
  }

  v29 = *v28;

  v30 = sub_1000B14C8(v17);
  v31 = sub_1000B14C8(v29);

  if (v31 >= v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v31;
  }

  if (v30 > v31)
  {
    v33 = v30;
  }

  else
  {
    v33 = v31;
  }

  if ((v33 + 0.05) / (v32 + 0.05) >= 3.0)
  {
    v34 = sub_1000B14C8(v17);
    v35 = sub_1000B14C8(v23);
    if (v35 >= v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = v35;
    }

    if (v34 > v35)
    {
      v35 = v34;
    }

    if ((v35 + 0.05) / (v36 + 0.05) >= 4.5)
    {

      return v17;
    }

    else
    {
      if (qword_100141C88 != -1)
      {
        swift_once();
      }

      v18 = qword_1001470C0;
    }
  }

  else
  {

    return v23;
  }

  return v18;
}

uint64_t sub_1000B4514(uint64_t a1)
{
  v40 = a1;
  v2 = type metadata accessor for ColorScheme();
  v39 = *(v2 - 8);
  __chkstk_darwin(v2);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002D44(&qword_100144140, &unk_1000F7DD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  v10 = *(type metadata accessor for TrackPageMetadata(0) + 32);
  sub_100007FDC(v1 + v10, v9, &qword_100144140, &unk_1000F7DD0);
  v11 = type metadata accessor for AnyAlbum(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) == 1)
  {
    v13 = v9;
LABEL_6:
    sub_100007E14(v13, &qword_100144140, &unk_1000F7DD0);
    goto LABEL_7;
  }

  v37 = v2;
  v14 = &v9[*(v11 + 20)];
  v15 = *(v14 + 3);
  v16 = *(v14 + 4);
  sub_10000DC80(v14, v15);
  v17 = (*(v16 + 16))(v15, v16);
  sub_1000B5E80(v9, type metadata accessor for AnyAlbum);
  if (!v17)
  {
LABEL_7:
    if (qword_100141C90 != -1)
    {
      swift_once();
    }

    v18 = qword_1001470C8;

    return v18;
  }

  sub_100007FDC(v1 + v10, v6, &qword_100144140, &unk_1000F7DD0);
  if (v12(v6, 1, v11) == 1)
  {

    v13 = v6;
    goto LABEL_6;
  }

  v20 = &v6[*(v11 + 20)];
  v21 = *(v20 + 3);
  v22 = *(v20 + 4);
  sub_10000DC80(v20, v21);
  v23 = (*(v22 + 24))(v21, v22);
  sub_1000B5E80(v6, type metadata accessor for AnyAlbum);
  if (!v23)
  {

    goto LABEL_7;
  }

  v25 = v38;
  v24 = v39;
  v26 = v37;
  (*(v39 + 104))(v38, enum case for ColorScheme.light(_:), v37);
  v27 = static ColorScheme.== infix(_:_:)();
  (*(v24 + 8))(v25, v26);
  if (v27)
  {
    if (qword_100141C98 != -1)
    {
      swift_once();
    }

    v28 = &qword_1001470D0;
  }

  else
  {
    if (qword_100141CA0 != -1)
    {
      swift_once();
    }

    v28 = &qword_1001470D8;
  }

  v29 = *v28;

  v30 = sub_1000B14C8(v17);
  v31 = sub_1000B14C8(v29);

  if (v31 >= v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v31;
  }

  if (v30 > v31)
  {
    v33 = v30;
  }

  else
  {
    v33 = v31;
  }

  if ((v33 + 0.05) / (v32 + 0.05) >= 3.0)
  {
    v34 = sub_1000B14C8(v17);
    v35 = sub_1000B14C8(v23);
    if (v35 >= v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = v35;
    }

    if (v34 > v35)
    {
      v35 = v34;
    }

    if ((v35 + 0.05) / (v36 + 0.05) >= 4.5)
    {

      return v23;
    }

    else
    {
      if (qword_100141C90 != -1)
      {
        swift_once();
      }

      v18 = qword_1001470C8;
    }
  }

  else
  {

    return v17;
  }

  return v18;
}

uint64_t sub_1000B4A18()
{
  v1 = sub_100002D44(&qword_100144140, &unk_1000F7DD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for TrackPageMetadata(0);
  v5 = [*(v0 + *(v4 + 20)) albumName];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    sub_100007FDC(v0 + *(v4 + 32), v3, &qword_100144140, &unk_1000F7DD0);
    v8 = type metadata accessor for AnyAlbum(0);
    if ((*(*(v8 - 8) + 48))(v3, 1, v8) == 1)
    {
      sub_100007E14(v3, &qword_100144140, &unk_1000F7DD0);
      return 0;
    }

    else
    {
      v9 = &v3[*(v8 + 20)];
      v10 = *(v9 + 3);
      v11 = *(v9 + 4);
      sub_10000DC80(v9, v10);
      v7 = (*(v11 + 40))(v10, v11);
      sub_1000B5E80(v3, type metadata accessor for AnyAlbum);
    }
  }

  return v7;
}

uint64_t sub_1000B4BBC()
{
  v1 = sub_100002D44(&qword_100144288, &qword_1000F7FB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for TrackPageMetadata(0);
  v5 = [*(v0 + *(v4 + 20)) title];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    sub_100007FDC(v0 + *(v4 + 24), v3, &qword_100144288, &qword_1000F7FB0);
    v8 = type metadata accessor for AnySong(0);
    if ((*(*(v8 - 8) + 48))(v3, 1, v8) == 1)
    {
      sub_100007E14(v3, &qword_100144288, &qword_1000F7FB0);
      return 0;
    }

    else
    {
      v9 = &v3[*(v8 + 20)];
      v10 = *(v9 + 3);
      v11 = *(v9 + 4);
      sub_10000DC80(v9, v10);
      v7 = (*(v11 + 16))(v10, v11);
      sub_1000B5E80(v3, type metadata accessor for AnySong);
    }
  }

  return v7;
}

uint64_t sub_1000B4D60()
{
  v1 = sub_100002D44(&qword_100144288, &qword_1000F7FB0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for TrackPageMetadata(0);
  v5 = [*(v0 + *(v4 + 20)) appleMusicID];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    sub_100007FDC(v0 + *(v4 + 24), v3, &qword_100144288, &qword_1000F7FB0);
    v8 = type metadata accessor for AnySong(0);
    if ((*(*(v8 - 8) + 48))(v3, 1, v8) == 1)
    {
      sub_100007E14(v3, &qword_100144288, &qword_1000F7FB0);
      return 0;
    }

    else
    {
      v9 = &v3[*(v8 + 20)];
      v10 = *(v9 + 3);
      v11 = *(v9 + 4);
      sub_10000DC80(v9, v10);
      v7 = (*(v11 + 8))(v10, v11);
      sub_1000B5E80(v3, type metadata accessor for AnySong);
    }
  }

  return v7;
}

uint64_t type metadata accessor for TrackPageMetadata(uint64_t a1)
{
  result = qword_100147138;
  if (!qword_100147138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B4F64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_100002D44(&qword_100144288, &qword_1000F7FB0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_100002D44(&qword_100144148, &qword_1000FB8E0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_11;
  }

  v17 = sub_100002D44(&qword_100144140, &unk_1000F7DD0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_1000B5158(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_100002D44(&qword_100144288, &qword_1000F7FB0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100002D44(&qword_100144148, &qword_1000FB8E0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v17 = sub_100002D44(&qword_100144140, &unk_1000F7DD0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

void sub_1000B5338(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10003D954();
    if (v2 <= 0x3F)
    {
      sub_1000B5458(319, &qword_100147148, type metadata accessor for AnySong);
      if (v3 <= 0x3F)
      {
        sub_1000B5458(319, &qword_100147150, type metadata accessor for AnyArtist);
        if (v4 <= 0x3F)
        {
          sub_1000B5458(319, &unk_100147158, type metadata accessor for AnyAlbum);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000B5458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000B54F4()
{
  v1 = sub_100002D44(&qword_100144148, &qword_1000FB8E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for TrackPageMetadata(0);
  v5 = [*(v0 + *(v4 + 20)) artist];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    sub_100007FDC(v0 + *(v4 + 28), v3, &qword_100144148, &qword_1000FB8E0);
    v8 = type metadata accessor for AnyArtist(0);
    if ((*(*(v8 - 8) + 48))(v3, 1, v8) == 1)
    {
      sub_100007E14(v3, &qword_100144148, &qword_1000FB8E0);
      return 0;
    }

    else
    {
      v9 = &v3[*(v8 + 20)];
      v10 = *(v9 + 3);
      v11 = *(v9 + 4);
      sub_10000DC80(v9, v10);
      v7 = (*(v11 + 16))(v10, v11);
      sub_1000B5E80(v3, type metadata accessor for AnyArtist);
    }
  }

  return v7;
}

uint64_t sub_1000B56A4(uint64_t a1)
{
  v2 = [*(v1 + *(a1 + 20)) genres];
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v3 + 16))
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1000B5738@<X0>(uint64_t a1@<X0>, SEL *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = [*(v3 + *(a1 + 20)) *a2];
  if (v5)
  {
    v6 = v5;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 56);

  return v9(a3, v7, 1, v8);
}

uint64_t sub_1000B57DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002D44(&qword_100144140, &unk_1000F7DD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  sub_100007FDC(v2 + *(a1 + 32), &v11 - v6, &qword_100144140, &unk_1000F7DD0);
  v8 = type metadata accessor for AnyAlbum(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_100007E14(v7, &qword_100144140, &unk_1000F7DD0);
    v9 = type metadata accessor for URL();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }

  else
  {
    sub_100007FDC(v7, a2, &unk_100144630, &qword_1000F5180);
    return sub_1000B5E80(v7, type metadata accessor for AnyAlbum);
  }
}

uint64_t sub_1000B595C(uint64_t a1)
{
  v3 = sub_100002D44(&qword_100144140, &unk_1000F7DD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  sub_100007FDC(v1 + *(a1 + 32), &v12 - v4, &qword_100144140, &unk_1000F7DD0);
  v6 = type metadata accessor for AnyAlbum(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_100007E14(v5, &qword_100144140, &unk_1000F7DD0);
    return 0;
  }

  else
  {
    v8 = &v5[*(v6 + 20)];
    v9 = *(v8 + 3);
    v10 = *(v8 + 4);
    sub_10000DC80(v8, v9);
    v11 = (*(v10 + 32))(v9, v10);
    sub_1000B5E80(v5, type metadata accessor for AnyAlbum);
    return v11;
  }
}

uint64_t sub_1000B5AC8(uint64_t a1)
{
  v3 = sub_100002D44(&qword_100144288, &qword_1000F7FB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  sub_100007FDC(v1 + *(a1 + 24), &v12 - v4, &qword_100144288, &qword_1000F7FB0);
  v6 = type metadata accessor for AnySong(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_100007E14(v5, &qword_100144288, &qword_1000F7FB0);
    return 0;
  }

  else
  {
    v8 = &v5[*(v6 + 20)];
    v9 = *(v8 + 3);
    v10 = *(v8 + 4);
    sub_10000DC80(v8, v9);
    v11 = (*(v10 + 24))(v9, v10);
    sub_1000B5E80(v5, type metadata accessor for AnySong);
    return v11;
  }
}

uint64_t sub_1000B5C34(uint64_t a1)
{
  v3 = sub_100002D44(&qword_100144288, &qword_1000F7FB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  sub_100007FDC(v1 + *(a1 + 24), &v12 - v4, &qword_100144288, &qword_1000F7FB0);
  v6 = type metadata accessor for AnySong(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_100007E14(v5, &qword_100144288, &qword_1000F7FB0);
    return 0;
  }

  else
  {
    v8 = &v5[*(v6 + 20)];
    v9 = *(v8 + 3);
    v10 = *(v8 + 4);
    sub_10000DC80(v8, v9);
    v11 = (*(v10 + 32))(v9, v10);
    sub_1000B5E80(v5, type metadata accessor for AnySong);
    return v11;
  }
}

id sub_1000B5DA0(uint64_t a1)
{
  v2 = [*(v1 + *(a1 + 20)) matchLocation];

  return v2;
}

uint64_t sub_1000B5DE0(uint64_t a1)
{
  result = sub_1000B5E38(&qword_100147198, type metadata accessor for TrackPageMetadata, &unk_1000FC514);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B5E38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000B5E80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1000B5EE0(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v20._object = 0xE000000000000000;
  v5._object = 0x80000001001029A0;
  v5._countAndFlagsBits = 0xD00000000000001ELL;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v20);

  if (a1)
  {
    swift_errorRetain();
    sub_100002D44(&qword_100142F78, &unk_1000FACE0);
    sub_1000123E4(0, &qword_100144E98, NSError_ptr);
    if (swift_dynamicCast())
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      v10 = sub_10006CA70(&off_100134DC0);
      sub_1000CD1A0(v7, v9, v10);
      v12 = v11;

      if (v12)
      {

        v13 = [v3 mainBundle];
        v21._object = 0xE000000000000000;
        v14._countAndFlagsBits = 0xD000000000000023;
        v14._object = 0x80000001001029F0;
        v15._countAndFlagsBits = 0;
        v15._object = 0xE000000000000000;
        v21._countAndFlagsBits = 0;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v21);
      }
    }
  }

  v16 = *(v1 + OBJC_IVAR____TtC16MusicRecognition11NoMatchView_noMatchLabel);
  v17 = String._bridgeToObjectiveC()();

  [v16 setText:v17];

  return [v16 setNeedsDisplay];
}

id sub_1000B6110()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.262745098 green:0.533333333 blue:0.996078431 alpha:1.0];
  qword_1001471A0 = result;
  return result;
}

id sub_1000B6164()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.0588235294 green:0.129411765 blue:0.250980392 alpha:1.0];
  qword_1001471A8 = result;
  return result;
}

uint64_t sub_1000B61BC()
{
  v1 = v0;
  v2 = sub_100002D44(&qword_100146198, &unk_1000FF020);
  __chkstk_darwin(v2 - 8);
  v61 = &v57 - v3;
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v58 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UIButton.Configuration();
  v63 = *(v6 - 8);
  v64 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 setTranslatesAutoresizingMaskIntoConstraints:{0, v7}];
  [v0 setLayoutMargins:{0.0, 34.0, 0.0, 17.0}];
  v10 = *&v0[OBJC_IVAR____TtC16MusicRecognition11NoMatchView_noMatchLabel];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v10];
  v11 = [objc_opt_self() systemFontOfSize:16.0 weight:UIFontWeightSemibold];
  [v10 setFont:v11];

  v12 = [objc_opt_self() whiteColor];
  [v10 setTextColor:v12];

  v13 = String._bridgeToObjectiveC()();
  [v10 setAccessibilityIdentifier:v13];

  v14 = objc_opt_self();
  v15 = [v14 mainBundle];
  v66._object = 0xE000000000000000;
  v16._object = 0x80000001001029A0;
  v16._countAndFlagsBits = 0xD00000000000001ELL;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v66._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, v66);

  v65 = v18;
  v19._countAndFlagsBits = 8236;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  v20 = [v14 mainBundle];
  v67._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0xD000000000000021;
  v21._object = 0x80000001001029C0;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v67._countAndFlagsBits = 0;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v67);

  String.append(_:)(v23);

  v24 = String._bridgeToObjectiveC()();

  [v1 setAccessibilityLabel:v24];

  [v1 setIsAccessibilityElement:1];
  v25 = *&v1[OBJC_IVAR____TtC16MusicRecognition11NoMatchView_retryButton];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v25];
  v26 = [objc_opt_self() configurationWithPointSize:5 weight:21.0];
  static UIButton.Configuration.filled()();
  v27 = v26;
  v28 = String._bridgeToObjectiveC()();
  v29 = [objc_opt_self() systemImageNamed:v28 withConfiguration:v27];

  v62 = v27;
  UIButton.Configuration.image.setter();
  if (qword_100141CA8 != -1)
  {
    swift_once();
  }

  v30 = qword_1001471A0;
  UIButton.Configuration.baseForegroundColor.setter();
  if (qword_100141CB0 != -1)
  {
    swift_once();
  }

  v31 = qword_1001471A8;
  UIButton.Configuration.baseBackgroundColor.setter();
  (*(v59 + 104))(v58, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v60);
  UIButton.Configuration.cornerStyle.setter();
  v33 = v63;
  v32 = v64;
  v34 = v61;
  (*(v63 + 16))(v61, v9, v64);
  (*(v33 + 56))(v34, 0, 1, v32);
  UIButton.configuration.setter();
  [v25 setContentVerticalAlignment:3];
  [v25 setContentHorizontalAlignment:3];
  [v25 setUserInteractionEnabled:0];
  v35 = String._bridgeToObjectiveC()();
  [v25 setAccessibilityIdentifier:v35];

  v61 = objc_opt_self();
  sub_100002D44(&qword_100142810, &qword_1000F65A0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1000F57D0;
  v60 = v9;
  v37 = [v10 leadingAnchor];
  v38 = [v1 layoutMarginsGuide];
  v39 = [v38 leadingAnchor];

  v40 = [v37 constraintEqualToAnchor:v39];
  *(v36 + 32) = v40;
  v41 = [v10 trailingAnchor];
  v42 = [v25 leadingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];

  *(v36 + 40) = v43;
  v44 = [v25 trailingAnchor];
  v45 = [v1 layoutMarginsGuide];
  v46 = [v45 trailingAnchor];

  v47 = [v44 constraintEqualToAnchor:v46];
  *(v36 + 48) = v47;
  v48 = [v25 centerYAnchor];
  v49 = [v1 centerYAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v36 + 56) = v50;
  v51 = [v25 widthAnchor];
  v52 = [v51 constraintEqualToConstant:51.0];

  *(v36 + 64) = v52;
  v53 = [v25 heightAnchor];
  v54 = [v53 constraintEqualToConstant:51.0];

  *(v36 + 72) = v54;
  sub_1000123E4(0, &qword_100143260, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v61 activateConstraints:isa];

  return (*(v33 + 8))(v60, v64);
}

id sub_1000B6C10(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MusicRecognition11NoMatchView_noMatchLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC16MusicRecognition11NoMatchView_retryButton;
  *&v1[v5] = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC16MusicRecognition11NoMatchView_noMatchLabelVerticalAnchor] = 0;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_1000B61BC();
  }

  return v7;
}

void sub_1000B6D24()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  if (!*&v0[OBJC_IVAR____TtC16MusicRecognition11NoMatchView_noMatchLabelVerticalAnchor])
  {
    v1 = sub_1000B9750();
    v2 = *&v0[OBJC_IVAR____TtC16MusicRecognition11NoMatchView_noMatchLabel];
    if (v1)
    {
      v3 = [v2 _tightBoundingBoxLayoutGuide];
      v4 = [v3 topAnchor];

      v5 = [v0 SBUISA_systemApertureObstructedAreaLayoutGuide];
      v6 = [v5 bottomAnchor];
    }

    else
    {
      v4 = [v2 centerYAnchor];
      v6 = [v0 centerYAnchor];
    }

    v7 = [v4 constraintEqualToAnchor:v6];

    v8 = objc_opt_self();
    sub_100002D44(&qword_100142810, &qword_1000F65A0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000F8490;
    *(v9 + 32) = v7;
    sub_1000123E4(0, &qword_100143260, NSLayoutConstraint_ptr);
    v10 = v7;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 activateConstraints:isa];
  }
}

uint64_t static LocalizedStringResource.resource(fromStringLiteral:defaultValue:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {

    return LocalizedStringResource.init(stringLiteral:)();
  }

  else
  {
    v7 = type metadata accessor for LocalizedStringResource();
    v8 = *(*(v7 - 8) + 16);

    return v8(a4, a3, v7);
  }
}

uint64_t sub_1000B7070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100007990(a1, a2, a3);
  EnvironmentValues.subscript.getter();
  return v4;
}

void sub_1000B70AC(uint64_t a1, id a2)
{
  v3 = a1;
  v4 = [a2 userInfo];
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v28 = 0xD000000000000010;
  *(&v28 + 1) = 0x8000000100102AD0;
  AnyHashable.init<A>(_:)();
  if (!*(v6 + 16) || (v7 = sub_1000B8E08(&v26), (v8 & 1) == 0))
  {

    sub_1000B8E4C(&v26);
LABEL_12:
    v28 = 0u;
    v29 = 0u;
    goto LABEL_13;
  }

  sub_100012C48(*(v6 + 56) + 32 * v7, &v28);
  sub_1000B8E4C(&v26);

  if (!*(&v29 + 1))
  {
LABEL_13:
    sub_1000B8CD0(&v28);
    v10 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v9 = swift_dynamicCast();
  if (v9)
  {
    v10 = v26;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v27;
  }

  else
  {
    v11 = 0;
  }

LABEL_14:
  v12 = [a2 userInfo];
  if (!v12)
  {
LABEL_22:
    v28 = 0u;
    v29 = 0u;
    goto LABEL_23;
  }

  v13 = v12;
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v28 = 0xD000000000000013;
  *(&v28 + 1) = 0x8000000100102AB0;
  AnyHashable.init<A>(_:)();
  if (!*(v14 + 16) || (v15 = sub_1000B8E08(&v26), (v16 & 1) == 0))
  {

    sub_1000B8E4C(&v26);
    goto LABEL_22;
  }

  sub_100012C48(*(v14 + 56) + 32 * v15, &v28);
  sub_1000B8E4C(&v26);

  if (!*(&v29 + 1))
  {
LABEL_23:
    sub_1000B8CD0(&v28);
    v17 = 2;
    goto LABEL_24;
  }

  if (swift_dynamicCast())
  {
    v17 = v26;
  }

  else
  {
    v17 = 2;
  }

LABEL_24:
  v18 = [a2 userInfo];
  if (!v18)
  {
LABEL_31:
    v28 = 0u;
    v29 = 0u;
    goto LABEL_32;
  }

  v19 = v18;
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v20 + 16) || (v21 = sub_1000B8E08(&v26), (v22 & 1) == 0))
  {

    sub_1000B8E4C(&v26);
    goto LABEL_31;
  }

  sub_100012C48(*(v20 + 56) + 32 * v21, &v28);
  sub_1000B8E4C(&v26);

  if (!*(&v29 + 1))
  {
LABEL_32:
    sub_1000B8CD0(&v28);
    goto LABEL_33;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:
    v25 = 0;
    goto LABEL_34;
  }

  v23 = v26;
  v24 = v27;
  sub_1000123E4(0, &qword_1001472E0, NSKeyedUnarchiver_ptr);
  sub_1000123E4(0, &qword_100142FB0, SHMediaItem_ptr);
  v25 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  sub_10005B7AC(v23, v24);
LABEL_34:
  sub_1000B865C(v3, v25, v10, v11, v17);
}

uint64_t sub_1000B74A8()
{
  swift_getKeyPath();
  sub_1000B96D4(&qword_100142060, type metadata accessor for ViewConfiguration, &unk_1000FC7A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

void *sub_1000B7548()
{
  swift_getKeyPath();
  sub_1000B96D4(&qword_100142060, type metadata accessor for ViewConfiguration, &unk_1000FC7A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_1000B75F0()
{
  swift_getKeyPath();
  sub_1000B96D4(&qword_100142060, type metadata accessor for ViewConfiguration, &unk_1000FC7A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1000B76A0()
{
  swift_getKeyPath();
  sub_1000B96D4(&qword_100142060, type metadata accessor for ViewConfiguration, &unk_1000FC7A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 48);
}

uint64_t sub_1000B7740()
{
  swift_getKeyPath();
  sub_1000B96D4(&qword_100142060, type metadata accessor for ViewConfiguration, &unk_1000FC7A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 49);
}

uint64_t sub_1000B77E0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000022;
  v3 = *a1;
  v4 = 0x80000001000FF050;
  if (v3 == 1)
  {
    v5 = 0xD000000000000022;
  }

  else
  {
    v5 = 0xD000000000000024;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001000FF050;
  }

  else
  {
    v6 = 0x80000001000FF080;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7974706D65;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000024;
    v4 = 0x80000001000FF080;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x7974706D65;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000B78BC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000B7960(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000B79F0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000B7A90@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B9678(*a1);
  *a2 = result;
  return result;
}

void sub_1000B7AC0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xD000000000000022;
  v5 = 0x80000001000FF050;
  if (v2 != 1)
  {
    v4 = 0xD000000000000024;
    v5 = 0x80000001000FF080;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x7974706D65;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_1000B7B20(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000B96D4(&qword_100142060, type metadata accessor for ViewConfiguration, &unk_1000FC7A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

double sub_1000B7BF0(char a1)
{
  v3 = 0x80000001000FF050;
  v4 = 0xD000000000000024;
  if (*(v1 + 16) == 1)
  {
    v4 = 0xD000000000000022;
  }

  else
  {
    v3 = 0x80000001000FF080;
  }

  if (*(v1 + 16))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7974706D65;
  }

  if (*(v1 + 16))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 0xD000000000000022;
    }

    else
    {
      v7 = 0xD000000000000024;
    }

    if (a1 == 1)
    {
      v8 = 0x80000001000FF050;
    }

    else
    {
      v8 = 0x80000001000FF080;
    }

    if (v5 != v7)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v8 = 0xE500000000000000;
    if (v5 != 0x7974706D65)
    {
      goto LABEL_22;
    }
  }

  if (v6 == v8)
  {

LABEL_23:
    *(v1 + 16) = a1;
    return result;
  }

LABEL_22:
  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    goto LABEL_23;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000B96D4(&qword_100142060, type metadata accessor for ViewConfiguration, &unk_1000FC7A4);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

id sub_1000B7DC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000B96D4(&qword_100142060, type metadata accessor for ViewConfiguration, &unk_1000FC7A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_1000B7E80(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000B7EB0(v1);
}

void sub_1000B7EB0(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000B96D4(&qword_100142060, type metadata accessor for ViewConfiguration, &unk_1000FC7A4);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000123E4(0, &qword_100142FB0, SHMediaItem_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

uint64_t sub_1000B8040@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000B96D4(&qword_100142060, type metadata accessor for ViewConfiguration, &unk_1000FC7A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1000B80EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000B812C(v1, v2);
}

uint64_t sub_1000B812C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 32) == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000B96D4(&qword_100142060, type metadata accessor for ViewConfiguration, &unk_1000FC7A4);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void sub_1000B829C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000B96D4(&qword_100142060, type metadata accessor for ViewConfiguration, &unk_1000FC7A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 48);
}

void sub_1000B836C(char a1)
{
  if (*(v1 + 48) == (a1 & 1))
  {
    *(v1 + 48) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000B96D4(&qword_100142060, type metadata accessor for ViewConfiguration, &unk_1000FC7A4);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000B847C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000B96D4(&qword_100142060, type metadata accessor for ViewConfiguration, &unk_1000FC7A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 49);
}

void sub_1000B854C(char a1)
{
  if (*(v1 + 49) == (a1 & 1))
  {
    *(v1 + 49) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000B96D4(&qword_100142060, type metadata accessor for ViewConfiguration, &unk_1000FC7A4);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000B865C(char a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  if (a1 != 2)
  {
    goto LABEL_17;
  }

  swift_getKeyPath();
  v31[0] = v5;
  sub_1000B96D4(&qword_100142060, type metadata accessor for ViewConfiguration, &unk_1000FC7A4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v5 + 24);
  if (v11 && (v12 = [v11 shazamID]) != 0)
  {
    v13 = v12;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v28 = 0;
    v15 = 0;
  }

  if (a2 && (v16 = [a2 shazamID]) != 0)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (!v15)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (!v15)
    {
LABEL_9:
      if (!v20)
      {
        return;
      }

      goto LABEL_16;
    }
  }

  if (!v20)
  {
LABEL_16:

    goto LABEL_17;
  }

  if (v28 == v18 && v15 == v20)
  {

    return;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v27 & 1) == 0)
  {
LABEL_17:
    sub_1000B7BF0(a1);
    a2;
    sub_1000B7EB0(a2);

    sub_1000B812C(a3, a4);
    if (*(v6 + 48) == (a5 & 1))
    {
      *(v6 + 48) = a5 & 1;
      if (!a2)
      {
        goto LABEL_27;
      }
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v31[0] = v6;
      sub_1000B96D4(&qword_100142060, type metadata accessor for ViewConfiguration, &unk_1000FC7A4);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      if (!a2)
      {
        goto LABEL_27;
      }
    }

    v22 = SHMediaItem.properties.getter();
    if (*(v22 + 16) && (v23 = sub_1000B8FB4(SHMediaItemConfidence), (v24 & 1) != 0))
    {
      sub_100012C48(*(v22 + 56) + 32 * v23, v31);

      if (swift_dynamicCast())
      {
        v25 = v30 < 1.0;
        if ((v25 ^ *(v6 + 49)))
        {
LABEL_28:
          v26 = swift_getKeyPath();
          __chkstk_darwin(v26);
          v31[0] = v6;
          sub_1000B96D4(&qword_100142060, type metadata accessor for ViewConfiguration, &unk_1000FC7A4);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

          return;
        }

LABEL_25:
        *(v6 + 49) = v25;
        return;
      }
    }

    else
    {
    }

LABEL_27:
    LOBYTE(v25) = 0;
    if (*(v6 + 49))
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }
}

uint64_t sub_1000B8AAC()
{

  v1 = OBJC_IVAR____TtC16MusicRecognition17ViewConfiguration___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for ViewConfiguration(uint64_t a1)
{
  result = qword_100147228;
  if (!qword_100147228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B8BAC(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_1000B8C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1001472D8;
  if (!qword_1001472D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001472D8);
  }

  return result;
}

uint64_t sub_1000B8CD0(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100145B28, &qword_1000FA590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B8D38()
{
  type metadata accessor for ViewConfiguration(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = 0;
  result = ObservationRegistrar.init()();
  qword_1001471F0 = v0;
  return result;
}

uint64_t sub_1000B8D94@<X0>(void *a1@<X8>)
{
  if (qword_100141CB8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1001471F0;
}

unint64_t sub_1000B8E08(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000B9044(a1, v4);
}

unint64_t sub_1000B8EA0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000B92FC(a1, a2, v4);
}

unint64_t sub_1000B8F18(uint64_t a1)
{
  type metadata accessor for EditorialVideoArtworkFlavor();
  sub_1000B96D4(&qword_1001472E8, &type metadata accessor for EditorialVideoArtworkFlavor, &protocol conformance descriptor for EditorialVideoArtworkFlavor);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1000B93B4(a1, v2);
}

unint64_t sub_1000B8FB4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000B9574(a1, v2);
}

unint64_t sub_1000B9044(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000B910C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000B8E4C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_1000B91E4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1000B7EB0(v1);
}

uint64_t sub_1000B9218(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1000B812C(v1, v2);
}

uint64_t sub_1000B9258()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

void sub_1000B9298()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

unint64_t sub_1000B92FC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}