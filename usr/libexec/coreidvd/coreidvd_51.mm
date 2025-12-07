uint64_t sub_1005B2958(uint64_t a1)
{
  v4[3] = &type metadata for BootstrapURLManager;
  v4[4] = &off_100818018;
  type metadata accessor for DIPConfigWebService();
  v1 = swift_allocObject();
  sub_10001F370(v4, &type metadata for BootstrapURLManager);
  v2 = sub_1005BDE58(v1);
  result = sub_10000BB78(v4);
  qword_100882440 = v2;
  return result;
}

uint64_t sub_1005B29CC(uint64_t *a1, _OWORD *a2)
{
  sub_1005BE410(*a1, a1[1], a1[2], a1[3], a1[4], a1[5]);
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 1) = v4;
  *(a1 + 2) = a2[2];
  return sub_10000BBC4(a2, &v6, &qword_1008490A0, &qword_1006E92D8);
}

uint64_t sub_1005B2A48(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 7408) = v8;
  *(v9 + 8210) = a8;
  *(v9 + 7400) = a7;
  *(v9 + 7392) = a6;
  *(v9 + 8209) = a5;
  *(v9 + 8201) = a4;
  *(v9 + 7384) = a3;
  *(v9 + 7376) = a2;
  *(v9 + 7368) = a1;
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  *(v9 + 7416) = swift_task_alloc();
  *(v9 + 7424) = swift_task_alloc();
  *(v9 + 7432) = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  *(v9 + 7440) = v10;
  *(v9 + 7448) = *(v10 - 8);
  *(v9 + 7456) = swift_task_alloc();
  v11 = type metadata accessor for URL();
  *(v9 + 7464) = v11;
  *(v9 + 7472) = *(v11 - 8);
  *(v9 + 7480) = swift_task_alloc();
  *(v9 + 7488) = swift_task_alloc();
  *(v9 + 7496) = swift_task_alloc();
  *(v9 + 7504) = swift_task_alloc();
  v12 = type metadata accessor for Locale.Language();
  *(v9 + 7512) = v12;
  *(v9 + 7520) = *(v12 - 8);
  *(v9 + 7528) = swift_task_alloc();
  sub_100007224(&qword_10083DC48, &unk_1006DB7B0);
  *(v9 + 7536) = swift_task_alloc();
  v13 = type metadata accessor for Locale();
  *(v9 + 7544) = v13;
  *(v9 + 7552) = *(v13 - 8);
  *(v9 + 7560) = swift_task_alloc();
  *(v9 + 7568) = swift_task_alloc();
  sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  *(v9 + 7576) = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  *(v9 + 7584) = v14;
  *(v9 + 7592) = *(v14 - 8);
  *(v9 + 7600) = swift_task_alloc();
  *(v9 + 7608) = swift_task_alloc();
  *(v9 + 7616) = swift_task_alloc();
  *(v9 + 7624) = swift_task_alloc();
  *(v9 + 7632) = swift_task_alloc();
  *(v9 + 7640) = swift_task_alloc();
  *(v9 + 7648) = swift_task_alloc();
  *(v9 + 7656) = swift_task_alloc();
  *(v9 + 7664) = swift_task_alloc();
  *(v9 + 7672) = swift_task_alloc();

  return _swift_task_switch(sub_1005B2DF8, 0, 0);
}

void sub_1005B2DF8(uint64_t a1)
{
  v441 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 8210);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "updateActiveConfig: shouldSkipFetchingDefaultConfig is set to %{BOOL}d", v5, 8u);
  }

  v6 = v1[959];
  v7 = v1[949];
  v8 = v1[948];
  v9 = v1[947];
  v10 = v1[946];
  v11 = v1[944];
  v12 = v1[943];

  v13 = *(v7 + 8);
  v1[960] = v13;
  v1[961] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v426 = v13;
  v13(v6, v8);
  static Locale.current.getter();
  Locale.region.getter();
  v14 = *(v11 + 8);
  v1[962] = v14;
  v1[963] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v10, v12);
  v15 = type metadata accessor for Locale.Region();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    v17 = v1[932];
    v18 = v1[931];
    v19 = v1[930];
    sub_10000BE18(v1[947], &unk_100849BA0, &qword_1006D95F0);
    v427 = *(v18 + 104);
    v427(v17, enum case for DIPError.Code.unexpectedDeviceState(_:), v19);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_10:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
LABEL_11:
    swift_willThrow();
LABEL_12:
    v60 = v1[932];
    v61 = v1[930];
    v62 = v1[926];
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v63 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v64 = (*(*v63 + 80) + 32) & ~*(*v63 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1006BF520;
    v66 = v65 + v64;
    v67 = (v66 + v63[14]);
    v68 = enum case for DIPError.PropertyKey.conversationID(_:);
    v69 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v69 - 8) + 104))(v66, v68, v69);
    v70 = *(v62 + 24);
    v71 = *(v62 + 32);
    v67[3] = &type metadata for String;
    v67[4] = &protocol witness table for String;
    *v67 = v70;
    v67[1] = v71;
    swift_errorRetain();

    sub_10003C9C0(v65);
    swift_setDeallocating();
    sub_10000BE18(v66, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    v427(v60, enum case for DIPError.Code.internalError(_:), v61);
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v72 = v1[1];
LABEL_13:

    v72();
    return;
  }

  v421 = v14;
  v20 = v1[926];
  v21 = v1[947];
  v22 = Locale.Region.identifier.getter();
  v24 = v23;
  v424 = v22;
  v1[964] = v22;
  v1[965] = v23;
  (*(v16 + 8))(v21, v15);
  v25 = *(v20 + 48);
  os_unfair_lock_lock((v25 + 64));
  v26 = *(v25 + 16);
  v27 = *(v25 + 24);
  v28 = *(v25 + 32);
  v29 = *(v25 + 40);
  sub_1005BE210(v26, v27, v28, v29, *(v25 + 48), *(v25 + 56));
  os_unfair_lock_unlock((v25 + 64));
  if (!v26)
  {
    v57 = v1[932];
    v58 = v1[931];
    v59 = v1[930];

    v427 = *(v58 + 104);
    v427(v57, enum case for DIPError.Code.unexpectedDaemonState(_:), v59);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_10;
  }

  if (!*(v26 + 16))
  {
    goto LABEL_27;
  }

  v30 = sub_10003ADCC(v424, v24);
  if (v31)
  {
    v390 = v27;
    v423 = v24;
    v32 = v1 + 686;
    v33 = (*(v26 + 56) + 424 * v30);
    memcpy(v1 + 633, v33, 0x1A1uLL);
    memmove(v1 + 686, v33, 0x1A1uLL);
    nullsub_7();
    sub_1000AA624((v1 + 633), (v1 + 368));
    v388 = 738;
    v386 = 737;
    v384 = 736;
    v382 = 735;
    v380 = 734;
    v351 = 5865;
    v378 = 733;
    v376 = 732;
    v347 = 5849;
    v374 = 731;
    v372 = 730;
    v345 = 5834;
    v370 = 5833;
    v368 = 729;
    v349 = 728;
    v353 = 5817;
    v343 = 727;
    v341 = 726;
    v339 = 725;
    v359 = 724;
    v356 = 723;
    v362 = 722;
    v337 = 721;
    v365 = 720;
    v336 = 719;
    v335 = 718;
    v334 = 5737;
    v333 = 717;
    v332 = 716;
    v331 = 5721;
    v330 = 715;
    v329 = 714;
    v326 = 5705;
    v328 = 713;
    v327 = 712;
    v404 = 5689;
    v325 = 711;
    v393 = 710;
    v34 = 5673;
    v399 = 709;
    v395 = 708;
    v324 = 707;
    v35 = 706;
    v36 = 5641;
    v37 = 705;
    v38 = 704;
    v39 = 5625;
    v40 = 703;
    v41 = 702;
    v42 = 701;
    v43 = 700;
    v44 = 699;
    v45 = 698;
    v46 = 697;
    v47 = 696;
    v48 = 695;
    v49 = 694;
    v50 = 693;
    v51 = 692;
    v52 = 691;
    v53 = 690;
    v54 = 689;
    v55 = 688;
    v56 = 687;
LABEL_26:
    v79 = *v32;
    v80 = v1[v56];
    v81 = v1[v54];
    *(v1 + 3361) = *(v1 + v39);
    v82 = *(v1 + v39 + 3);
    *(v1 + 841) = v82;
    *(v1 + 877) = v82;
    v413 = v1[v53];
    v416 = v1[v55];
    v412 = v1[v52];
    v402 = v1[v51];
    v403 = v1[v49];
    v407 = v1[v48];
    v408 = v1[v50];
    v418 = v1[v47];
    v391 = v1[v46];
    v422 = v1[v45];
    v419 = v1[v44];
    v83 = v1[v43];
    *(v1 + 3505) = *(v1 + 3361);
    __dst = v1[v42];
    v410 = v1[v41];
    v411 = v83;
    v406 = v1[v40];
    v84 = v1[v38];
    LODWORD(v83) = *(v1 + v36 + 3);
    v409 = v1[v37];
    *(v1 + 7177) = *(v1 + v36);
    *(v1 + 1795) = v83;
    *(v1 + 3521) = *(v1 + 7177);
    v85 = v1[v35];
    v86 = v1[v324];
    v396 = v1[v395];
    v87 = *(v1 + v34);
    v400 = v1[v399];
    *(v1 + 1689) = *(v1 + v34 + 3);
    *(v1 + 6753) = v87;
    *(v1 + 3553) = v87;
    v394 = v1[v393];
    v88 = *(v1 + v404 + 3);
    v89 = *(v1 + v404);
    v405 = v1[v325];
    *(v1 + 6329) = v89;
    *(v1 + 1583) = v88;
    *(v1 + 893) = v88;
    *(v1 + 3569) = *(v1 + 6329);
    *(v1 + 947) = *(v1 + v326 + 3);
    *(v1 + 3785) = *(v1 + v326);
    *(v1 + 3585) = *(v1 + 3785);
    v90 = v1[v327];
    v91 = v1[v328];
    v92 = v1[v329];
    v93 = *(v1 + v331);
    v94 = v1[v330];
    *(v1 + 1265) = *(v1 + v331 + 3);
    *(v1 + 5057) = v93;
    *(v1 + 3601) = v93;
    v95 = v1[v332];
    v96 = v1[v333];
    v97 = *(v1 + v334);
    *(v1 + 1477) = *(v1 + v334 + 3);
    *(v1 + 5905) = v97;
    *(v1 + 905) = *(v1 + 1477);
    *(v1 + 3617) = v97;
    v98 = v1[v335];
    v99 = v1[v336];
    v366 = v1[v365];
    v338 = v1[v337];
    v363 = v1[v362];
    v357 = v1[v356];
    v360 = v1[v359];
    v100 = v1[v339];
    v101 = v1[v341];
    v102 = *(v1 + v353);
    v103 = *(v1 + v353 + 3);
    v354 = v1[v343];
    *(v1 + 1371) = v103;
    *(v1 + 5481) = v102;
    *(v1 + 925) = *(v1 + 1371);
    *(v1 + 3697) = v102;
    *(v1 + 8202) = *(v1 + v345);
    *(v1 + 3714) = *(v1 + 8202);
    *(v1 + 1159) = *(v1 + v347 + 3);
    *(v1 + 4633) = *(v1 + v347);
    *(v1 + 3729) = *(v1 + 4633);
    *(v1 + 1053) = *(v1 + v351 + 3);
    v104 = v84;
    *(v1 + 4209) = *(v1 + v351);
    *(v1 + 937) = *(v1 + 1053);
    *(v1 + 3745) = *(v1 + 4209);
    v105 = v86;
    v106 = v85;
    LOWORD(v103) = *(v1 + v345 + 4);
    *(v1 + 4103) = v103;
    *(v1 + 881) = *(v1 + 1795);
    v107 = v99;
    *(v1 + 889) = *(v1 + 1689);
    v108 = v98;
    *(v1 + 897) = *(v1 + 947);
    *(v1 + 901) = *(v1 + 1265);
    *(v1 + 1859) = v103;
    *(v1 + 933) = *(v1 + 1159);
    v109 = v1[v349];
    v110 = *(v1 + v370);
    LOBYTE(v85) = v1[v368];
    v111 = v1[v372];
    LOBYTE(v89) = v1[v374];
    v112 = v1[v376];
    LOBYTE(v88) = v1[v378];
    v113 = v1[v380];
    v114 = v1[v382];
    v115 = v1[v384];
    v116 = v1[v386];
    v117 = v1[v388];
    v1[421] = v79;
    v1[422] = v80;
    v1[423] = v416;
    v1[424] = v81;
    v1[425] = v413;
    v1[426] = v412;
    v1[427] = v402;
    v1[428] = v408;
    v1[429] = v403;
    v1[430] = v407;
    v1[431] = v418;
    v118 = v391;
    v1[432] = v391;
    v1[433] = v422;
    v1[434] = v419;
    v1[435] = v411;
    v1[436] = __dst;
    v1[437] = v410;
    *(v1 + 3504) = v406;
    v375 = v106;
    v377 = v104;
    v1[439] = v104;
    *(v1 + 3520) = v409;
    v1[441] = v106;
    v371 = v90;
    v373 = v105;
    v1[442] = v105;
    v1[443] = v396;
    *(v1 + 3552) = v400;
    v1[445] = v394;
    *(v1 + 3568) = v405;
    v1[447] = v90;
    v383 = v91;
    *(v1 + 3584) = v91;
    v369 = v92;
    v1[449] = v92;
    v387 = v94;
    *(v1 + 3600) = v94;
    LOBYTE(v92) = v88;
    v119 = v110;
    v120 = v95;
    v1[451] = v95;
    v389 = v96;
    *(v1 + 3616) = v96;
    v121 = v338;
    v122 = v357;
    v123 = v360;
    v125 = v363;
    v124 = v366;
    v126 = v85;
    v385 = v108;
    v1[453] = v108;
    v127 = v107;
    v1[454] = v107;
    v1[455] = v366;
    v1[456] = v338;
    v1[457] = v363;
    v1[458] = v357;
    v1[459] = v360;
    v128 = v100;
    v1[460] = v100;
    v379 = v113;
    v381 = v101;
    v1[461] = v101;
    v129 = v115;
    v130 = v354;
    *(v1 + 3696) = v354;
    v1[463] = v109;
    *(v1 + 3712) = v85;
    *(v1 + 3713) = v119;
    v1[465] = v111;
    v131 = v89;
    *(v1 + 3728) = v89;
    v132 = v114;
    v1[467] = v112;
    v133 = v92;
    *(v1 + 3744) = v92;
    v1[469] = v113;
    v1[470] = v114;
    v1[471] = v129;
    v1[472] = v116;
    *(v1 + 3784) = v117;
    goto LABEL_31;
  }

  v73 = v29 ? v29 : 0xE700000000000000;
  if (*(v26 + 16))
  {
    if (v29)
    {
      v74 = v28;
    }

    else
    {
      v74 = 0x746C7561666564;
    }

    v75 = sub_10003ADCC(v74, v73);
    v77 = v76;

    if (v77)
    {
      v390 = v27;
      v423 = v24;
      v32 = v1 + 845;
      v78 = (*(v26 + 56) + 424 * v75);
      memcpy(v1 + 792, v78, 0x1A1uLL);
      memmove(v1 + 845, v78, 0x1A1uLL);
      nullsub_7();
      sub_1000AA624((v1 + 792), (v1 + 739));
      v388 = 897;
      v386 = 896;
      v384 = 895;
      v382 = 894;
      v380 = 893;
      v351 = 7137;
      v378 = 892;
      v376 = 891;
      v347 = 7121;
      v374 = 890;
      v372 = 889;
      v345 = 7106;
      v370 = 7105;
      v368 = 888;
      v349 = 887;
      v353 = 7089;
      v343 = 886;
      v341 = 885;
      v339 = 884;
      v359 = 883;
      v356 = 882;
      v362 = 881;
      v337 = 880;
      v365 = 879;
      v336 = 878;
      v335 = 877;
      v334 = 7009;
      v333 = 876;
      v332 = 875;
      v331 = 6993;
      v330 = 874;
      v329 = 873;
      v326 = 6977;
      v328 = 872;
      v327 = 871;
      v404 = 6961;
      v325 = 870;
      v393 = 869;
      v34 = 6945;
      v399 = 868;
      v395 = 867;
      v324 = 866;
      v35 = 865;
      v36 = 6913;
      v37 = 864;
      v38 = 863;
      v39 = 6897;
      v40 = 862;
      v41 = 861;
      v42 = 860;
      v43 = 859;
      v44 = 858;
      v45 = 857;
      v46 = 856;
      v47 = 855;
      v48 = 854;
      v49 = 853;
      v50 = 852;
      v51 = 851;
      v52 = 850;
      v53 = 849;
      v54 = 848;
      v55 = 847;
      v56 = 846;
      goto LABEL_26;
    }
  }

  else
  {
LABEL_27:
  }

  if (!*(v26 + 16) || (v134 = sub_10003ADCC(21333, 0xE200000000000000), (v135 & 1) == 0))
  {
    v147 = v1[932];
    v148 = v1[931];
    v149 = v1[930];

    _StringGuts.grow(_:)(30);

    strcpy(v440, "device region ");
    HIBYTE(v440[1]) = -18;
    v150._countAndFlagsBits = v424;
    v150._object = v24;
    String.append(_:)(v150);
    v151._countAndFlagsBits = 0x70757320746F6E20;
    v151._object = 0xEE00646574726F70;
    String.append(_:)(v151);
    v427 = *(v148 + 104);
    v427(v147, enum case for DIPError.Code.regionNotSupported(_:), v149);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v152 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v153 = (*(*v152 + 80) + 32) & ~*(*v152 + 80);
    v154 = swift_allocObject();
    *(v154 + 16) = xmmword_1006BF520;
    v155 = v154 + v153;
    v156 = (v155 + v152[14]);
    v157 = enum case for DIPError.PropertyKey.deviceRegion(_:);
    v158 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v158 - 8) + 104))(v155, v157, v158);
    v156[3] = &type metadata for String;
    v156[4] = &protocol witness table for String;
    *v156 = v424;
    v156[1] = v24;
    sub_10003C9C0(v154);
    swift_setDeallocating();
    sub_10000BE18(v155, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    goto LABEL_11;
  }

  v390 = v27;
  v423 = v24;
  v136 = (*(v26 + 56) + 424 * v134);
  memcpy(v1 + 527, v136, 0x1A1uLL);
  memmove(v1 + 474, v136, 0x1A1uLL);
  nullsub_7();
  v352 = *(v1 + 4632);
  v350 = v1[577];
  v137 = v1[578];
  v138 = v1[576];
  v139 = v1[573];
  v348 = *(v1 + 4592);
  v392 = v1[571];
  v346 = *(v1 + 4576);
  v140 = *(v1 + 4561);
  v141 = v1[569];
  v344 = *(v1 + 4560);
  v379 = v1[575];
  v381 = v1[567];
  v355 = *(v1 + 4544);
  v128 = v1[566];
  v361 = v1[565];
  v364 = v1[563];
  v358 = v1[564];
  v142 = v1[562];
  v385 = v1[559];
  v340 = v1[557];
  v342 = v1[560];
  v389 = *(v1 + 4464);
  v367 = v1[561];
  v369 = v1[555];
  v387 = *(v1 + 4448);
  v383 = *(v1 + 4432);
  v405 = *(v1 + 4416);
  v394 = v1[551];
  v396 = v1[549];
  v81 = v1[530];
  v80 = v1[528];
  v79 = v1[527];
  v400 = *(v1 + 4400);
  v371 = v1[553];
  v373 = v1[548];
  v375 = v1[547];
  v377 = v1[545];
  v409 = *(v1 + 4368);
  v406 = *(v1 + 4352);
  v410 = v1[543];
  v411 = v1[541];
  __dst = v1[542];
  v422 = v1[539];
  v418 = v1[537];
  v419 = v1[540];
  v143 = v1[538];
  v402 = v1[533];
  v403 = v1[535];
  v407 = v1[536];
  v408 = v1[534];
  v412 = v1[532];
  v413 = v1[531];
  v416 = v1[529];
  sub_1000AA624((v1 + 527), (v1 + 580));
  memcpy(v1 + 421, v1 + 474, 0x1A1uLL);
  v116 = v137;
  v132 = v138;
  v119 = v140;
  v109 = v141;
  v117 = v352;
  v112 = v139;
  v129 = v350;
  v121 = v142;
  v123 = v361;
  v125 = v364;
  v124 = v367;
  v131 = v346;
  v133 = v348;
  v120 = v340;
  v127 = v342;
  v130 = v355;
  v126 = v344;
  v118 = v143;
  v122 = v358;
  v111 = v392;
LABEL_31:
  *(v1 + 8217) = v117;
  v1[1006] = v116;
  v1[1005] = v129;
  v1[1004] = v132;
  v1[1003] = v379;
  v1[1002] = v112;
  v1[1001] = v111;
  *(v1 + 8211) = v119;
  v1[1000] = v109;
  v1[999] = v381;
  v1[998] = v128;
  v1[997] = v123;
  v1[996] = v122;
  v1[995] = v125;
  v1[994] = v121;
  v1[993] = v124;
  v1[992] = v127;
  v1[991] = v385;
  v1[990] = v120;
  v1[989] = v369;
  v1[988] = v371;
  v1[987] = v394;
  v1[986] = v396;
  v1[985] = v373;
  v1[984] = v375;
  v1[983] = v377;
  v1[982] = v410;
  v1[981] = __dst;
  v1[980] = v411;
  v1[979] = v419;
  v1[978] = v422;
  v1[977] = v118;
  v1[976] = v418;
  v1[975] = v407;
  v1[974] = v403;
  v1[973] = v408;
  v1[972] = v402;
  v1[971] = v412;
  v1[970] = v413;
  v1[969] = v81;
  v1[968] = v416;
  v1[967] = v80;
  v1[966] = v79;
  *(v1 + 8272) = v406 & 1;
  *(v1 + 8264) = v409 & 1;
  *(v1 + 8256) = v400 & 1;
  *(v1 + 8248) = v405 & 1;
  *(v1 + 8240) = v383 & 1;
  *(v1 + 8280) = v387 & 1;
  *(v1 + 8232) = v389 & 1;
  *(v1 + 8224) = v130 & 1;
  *(v1 + 8216) = v126 & 1;
  v144 = v1[923];
  *(v1 + 8200) = v131 & 1;
  *(v1 + 8208) = v133 & 1;
  if (v144)
  {
    v145 = v1[922];
    v146 = v423;
  }

  else
  {
    v159 = [objc_opt_self() _deviceLanguage];
    v146 = v423;
    if (v159)
    {
      v160 = v159;
      v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v144 = v161;
    }

    else
    {
      v145 = 0;
      v144 = 0xE000000000000000;
    }
  }

  v1[918] = v145;
  v162 = v1[942];
  v163 = v1[941];
  v164 = v1[940];
  v165 = v1[939];
  v1[919] = v144;

  Locale.init(identifier:)();
  Locale.language.getter();
  Locale.Language.languageCode.getter();
  (*(v164 + 8))(v163, v165);
  v166 = type metadata accessor for Locale.LanguageCode();
  v167 = *(v166 - 8);
  v168 = (*(v167 + 48))(v162, 1, v166);
  v169 = v1[942];
  if (v168 == 1)
  {
    v170 = v1[945];
    v171 = v1[943];
    v172 = v1[932];
    v173 = v1[931];
    v174 = v1[930];

    sub_10000BE18((v1 + 421), &qword_10083AAA0, &unk_1006D8E00);

    sub_10000BE18(v169, &qword_10083DC48, &unk_1006DB7B0);
    v427 = *(v173 + 104);
    v427(v172, enum case for DIPError.Code.unexpectedDeviceState(_:), v174);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v421(v170, v171);

    goto LABEL_12;
  }

  v417 = v144;
  v175 = Locale.LanguageCode.identifier.getter();
  v177 = v176;
  (*(v167 + 8))(v169, v166);
  v440[0] = v175;
  v440[1] = v177;

  v178._countAndFlagsBits = 45;
  v178._object = 0xE100000000000000;
  String.append(_:)(v178);

  v179._countAndFlagsBits = v424;
  v179._object = v146;
  String.append(_:)(v179);

  v180 = v175;
  defaultLogger()();
  v181 = Logger.logObject.getter();
  v182 = static os_log_type_t.default.getter();
  v183 = os_log_type_enabled(v181, v182);
  v184 = v1[958];
  v185 = v1[948];
  v414 = v145;
  if (v183)
  {
    v186 = swift_slowAlloc();
    v425 = v180;
    v187 = swift_slowAlloc();
    v440[0] = v187;
    *v186 = 136446210;

    v188 = sub_100141FE4(v145, v417, v440);

    *(v186 + 4) = v188;
    _os_log_impl(&_mh_execute_header, v181, v182, "deviceLanguage = %{public}s", v186, 0xCu);
    sub_10000BB78(v187);
    v180 = v425;
  }

  v426(v184, v185);
  defaultLogger()();

  v189 = Logger.logObject.getter();
  v190 = static os_log_type_t.default.getter();

  v191 = os_log_type_enabled(v189, v190);
  v192 = v1[957];
  v193 = v1[948];
  if (v191)
  {
    v194 = swift_slowAlloc();
    v195 = swift_slowAlloc();
    v440[0] = v195;
    *v194 = 136446210;
    v196 = sub_100141FE4(v180, v177, v440);

    *(v194 + 4) = v196;
    _os_log_impl(&_mh_execute_header, v189, v190, "languageRegion = %{public}s", v194, 0xCu);
    sub_10000BB78(v195);
  }

  else
  {
  }

  v426(v192, v193);
  v197 = v1 + 544;
  v198 = objc_opt_self();
  v199 = [v198 standardUserDefaults];
  v200._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceFailAttributeConfigFetch.getter();
  v201 = NSUserDefaults.internalBool(forKey:)(v200);

  if (v201)
  {
    defaultLogger()();
    v202 = Logger.logObject.getter();
    v203 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v202, v203))
    {
      v204 = swift_slowAlloc();
      *v204 = 0;
      _os_log_impl(&_mh_execute_header, v202, v203, "Internal setting for forceFailAttributeConfigFetch has been enabled. Setting the device language to XX", v204, 2u);
    }

    v205 = v1[956];
    v206 = v1[948];

    v426(v205, v206);
    swift_beginAccess();
    v207 = 22616;
    v1[918] = 22616;
    v1[919] = 0xE200000000000000;

    v208 = 0xE200000000000000;
  }

  else
  {
    v207 = v414;
    v208 = v417;
  }

  v1[1008] = v208;
  v1[1007] = v207;
  v415 = v207;
  v1[916] = v207;
  v1[917] = v208;
  v209 = swift_task_alloc();
  *(v209 + 16) = v1 + 916;

  v210 = sub_10035C8E4(sub_1000F713C, v209, v390);

  if ((v210 & 1) == 0)
  {
    if (*(v1 + 8210) == 1)
    {
      v226 = v1[945];
      v227 = v1[943];
      v228 = v1[932];
      v229 = v1[931];
      v230 = v1[930];

      sub_10000BE18((v1 + 421), &qword_10083AAA0, &unk_1006D8E00);
      v427 = *(v229 + 104);
      v427(v228, enum case for DIPError.Code.attributeConfigUnavailable(_:), v230);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
    }

    else
    {
      defaultLogger()();
      v242 = Logger.logObject.getter();
      v243 = static os_log_type_t.default.getter();
      v244 = os_log_type_enabled(v242, v243);
      v245 = v1[954];
      v246 = v1[948];
      if (v244)
      {
        v247 = swift_slowAlloc();
        v248 = swift_slowAlloc();
        v440[0] = v248;
        *v247 = 136446210;

        v249 = sub_100141FE4(v415, v208, v440);

        *(v247 + 4) = v249;
        v197 = v1 + 544;
        _os_log_impl(&_mh_execute_header, v242, v243, "Doesn't contain deviceLanguage = %{public}s fetching default attribute config", v247, 0xCu);
        sub_10000BB78(v248);
      }

      v426(v245, v246);
      v250 = v1[934];
      v251 = v1[933];
      v252 = v1[928];
      URL.init(string:)();
      v236 = *(v250 + 48);
      if (v236(v252, 1, v251) != 1)
      {
        v257 = v1 + 928;
        v258 = 936;
        goto LABEL_66;
      }

      v226 = v1[945];
      v227 = v1[943];
      v253 = v1[932];
      v254 = v1[931];
      v255 = v1[930];
      v256 = v1[928];

      sub_10000BE18((v1 + 421), &qword_10083AAA0, &unk_1006D8E00);
      sub_10000BE18(v256, &unk_100844540, &unk_1006BFBC0);
      v427 = *(v254 + 104);
      v427(v253, enum case for DIPError.Code.serverResponseInconsistent(_:), v255);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
    }

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v224 = v226;
    v225 = v227;
LABEL_63:
    v421(v224, v225);

    goto LABEL_12;
  }

  v211 = [v198 standardUserDefaults];
  v212._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceFailAttributeConfigFetchWithNetworkFailure.getter();
  v213 = NSUserDefaults.internalBool(forKey:)(v212);

  if (v213)
  {
    sub_10000BE18((v1 + 421), &qword_10083AAA0, &unk_1006D8E00);

    defaultLogger()();
    v214 = Logger.logObject.getter();
    v215 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v214, v215))
    {
      v216 = swift_slowAlloc();
      *v216 = 0;
      _os_log_impl(&_mh_execute_header, v214, v215, "Internal setting for forceFailAttributeConfigFetchWithNetworkFailure has been enabled. Will fail attribute config fetch.", v216, 2u);
    }

    v217 = v1[955];
    v218 = v1[948];
    v219 = v1[945];
    v220 = v1[943];
    v221 = v1[932];
    v222 = v1[931];
    v223 = v1[930];

    v426(v217, v218);
    v427 = *(v222 + 104);
    v427(v221, enum case for DIPError.Code.attributeConfigUnavailable(_:), v223);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v224 = v219;
    v225 = v220;
    goto LABEL_63;
  }

  v231 = v1[934];
  v232 = v1[933];
  v233 = v1[929];
  v234 = v1[925];
  v235 = v1[924];

  sub_1005BA660(v415, v208, v235, v234, v233);

  v236 = *(v231 + 48);
  if (v236(v233, 1, v232) == 1)
  {
    v420 = v1[945];
    v237 = v1[943];
    v238 = v1[932];
    v239 = v1[931];
    v240 = v1[930];
    v241 = v1[929];

    sub_10000BE18((v1 + 421), &qword_10083AAA0, &unk_1006D8E00);
    sub_10000BE18(v241, &unk_100844540, &unk_1006BFBC0);
    v427 = *(v239 + 104);
    v427(v238, enum case for DIPError.Code.serverResponseInconsistent(_:), v240);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v421(v420, v237);

    goto LABEL_12;
  }

  v257 = v1 + 929;
  v258 = 937;
LABEL_66:
  v259 = v1[v258];
  v260 = v1[938];
  v261 = v1[933];
  v262 = *(v1[934] + 32);
  v262(v259, *v257, v261);
  v262(v260, v259, v261);
  v1[1010] = v236;
  v1[1009] = v262;
  if (v197[3857] != 1)
  {
    *(v1 + 1649) = *v428;
    *(v1 + 1665) = *v429;
    *(v1 + 425) = *&v430[3];
    *(v1 + 1697) = *v430;
    *(v1 + 429) = *&v431[3];
    *(v1 + 1713) = *v431;
    *(v1 + 433) = *&v432[3];
    *(v1 + 1729) = *v432;
    *(v1 + 437) = *&v433[3];
    *(v1 + 1745) = *v433;
    *(v1 + 441) = *&v434[3];
    *(v1 + 1761) = *v434;
    *(v1 + 461) = *&v435[3];
    *(v1 + 1841) = *v435;
    *(v1 + 1858) = v436;
    *(v1 + 469) = *&v438[3];
    *(v1 + 1873) = *v438;
    *(v1 + 473) = *&v439[3];
    *(v1 + 1889) = *v439;
    *(v1 + 2137) = *v428;
    *(v1 + 2153) = *v429;
    *(v1 + 547) = *&v430[3];
    *(v1 + 2185) = *v430;
    *(v1 + 551) = *&v431[3];
    *(v1 + 2201) = *v431;
    *(v1 + 555) = *&v432[3];
    *(v1 + 2217) = *v432;
    *(v1 + 559) = *&v433[3];
    *(v1 + 2233) = *v433;
    *(v1 + 563) = *&v434[3];
    *(v1 + 2249) = *v434;
    *(v1 + 583) = *&v435[3];
    *(v1 + 2329) = *v435;
    *(v1 + 2346) = v436;
    *(v1 + 591) = *&v438[3];
    *(v1 + 2361) = *v438;
    *(v1 + 595) = *&v439[3];
    *(v1 + 2377) = *v439;
    *(v1 + 605) = *(v440 + 3);
    *(v1 + 2417) = v440[0];
    *(v1 + 413) = *&v428[3];
    *(v1 + 417) = *&v429[3];
    *(v1 + 931) = v437;
    v266 = v1[964];
    v1[185] = v266;
    v1[246] = v266;
    v267 = v1[965];
    v1[186] = v267;
    v1[247] = v267;
    v268 = v1[1007];
    v1[187] = v268;
    v1[248] = v268;
    v269 = v1[968];
    v1[191] = v269;
    v1[252] = v269;
    v270 = v1[970];
    v1[193] = v270;
    v1[254] = v270;
    v271 = v1[971];
    v1[194] = v271;
    v1[255] = v271;
    v272 = v1[972];
    v1[195] = v272;
    v1[256] = v272;
    v273 = v1[973];
    v1[196] = v273;
    v1[257] = v273;
    v274 = v1[974];
    v1[197] = v274;
    v1[258] = v274;
    v275 = v1[975];
    v1[198] = v275;
    v1[259] = v275;
    v276 = v1[976];
    v1[199] = v276;
    v1[260] = v276;
    v277 = v1[977];
    v1[200] = v277;
    v1[261] = v277;
    v278 = v1[978];
    v1[201] = v278;
    v1[262] = v278;
    v279 = v1[979];
    v1[202] = v279;
    v1[263] = v279;
    v280 = v1[980];
    v1[203] = v280;
    v1[264] = v280;
    v281 = v1[981];
    v1[204] = v281;
    v1[265] = v281;
    v282 = v1[982];
    v1[205] = v282;
    v1[266] = v282;
    LOBYTE(v282) = v197[3920];
    *(v1 + 1648) = v282;
    *(v1 + 2136) = v282;
    *(v1 + 535) = *&v428[3];
    v283 = v1[983];
    v1[207] = v283;
    v1[268] = v283;
    LOBYTE(v283) = v197[3912];
    *(v1 + 1664) = v283;
    *(v1 + 2152) = v283;
    *(v1 + 539) = *&v429[3];
    v284 = v1[984];
    v1[209] = v284;
    v1[270] = v284;
    v285 = v1[985];
    v1[210] = v285;
    v1[271] = v285;
    v286 = v1[986];
    v1[211] = v286;
    v1[272] = v286;
    LOBYTE(v286) = v197[3904];
    *(v1 + 1696) = v286;
    *(v1 + 2184) = v286;
    v287 = v1[987];
    v1[213] = v287;
    v1[274] = v287;
    LOBYTE(v287) = v197[3896];
    *(v1 + 1712) = v287;
    *(v1 + 2200) = v287;
    v288 = v1[988];
    v1[215] = v288;
    v1[276] = v288;
    LOBYTE(v288) = v197[3888];
    *(v1 + 1728) = v288;
    *(v1 + 2216) = v288;
    v289 = v1[989];
    v1[217] = v289;
    v1[278] = v289;
    LOBYTE(v289) = v197[3928];
    *(v1 + 1744) = v289;
    *(v1 + 2232) = v289;
    v290 = v1[990];
    v1[219] = v290;
    v1[280] = v290;
    LOBYTE(v290) = v197[3880];
    *(v1 + 1760) = v290;
    *(v1 + 2248) = v290;
    v291 = v1[991];
    v1[221] = v291;
    v1[282] = v291;
    v292 = v1[992];
    v1[222] = v292;
    v1[283] = v292;
    v293 = v1[993];
    v1[223] = v293;
    v1[284] = v293;
    v294 = v1[994];
    v1[224] = v294;
    v1[285] = v294;
    v295 = v1[995];
    v1[225] = v295;
    v1[286] = v295;
    v296 = v1[996];
    v1[226] = v296;
    v1[287] = v296;
    v297 = v1[997];
    v1[227] = v297;
    v1[288] = v297;
    v298 = v1[998];
    v1[228] = v298;
    v1[289] = v298;
    v299 = v1[999];
    v1[229] = v299;
    v1[290] = v299;
    LOBYTE(v299) = v197[3872];
    *(v1 + 1840) = v299;
    *(v1 + 2328) = v299;
    v300 = v1[1000];
    v1[231] = v300;
    v1[292] = v300;
    LOBYTE(v300) = v197[3864];
    *(v1 + 1856) = v300;
    *(v1 + 2344) = v300;
    LOBYTE(v300) = v197[3859];
    *(v1 + 1857) = v300;
    *(v1 + 2345) = v300;
    *(v1 + 1175) = v437;
    v301 = v1[1001];
    v1[233] = v301;
    v1[294] = v301;
    LOBYTE(v301) = v197[3848];
    *(v1 + 1872) = v301;
    *(v1 + 2360) = v301;
    v302 = v1[1002];
    v1[235] = v302;
    v1[296] = v302;
    LOBYTE(v302) = v197[3856];
    *(v1 + 1888) = v302;
    *(v1 + 2376) = v302;
    v303 = v1[1003];
    v1[237] = v303;
    v1[298] = v303;
    v304 = v1[1004];
    v1[238] = v304;
    v1[299] = v304;
    v305 = v1[1005];
    v1[239] = v305;
    v1[300] = v305;
    v306 = v1[1006];
    v1[240] = v306;
    v1[301] = v306;
    v307 = v1[1008];
    LOBYTE(v306) = v197[3865];
    v308 = v1[969];
    v309 = v1[967];
    v310 = v1[966];
    *(v1 + 1928) = v306;
    *(v1 + 2416) = v306;
    *(v1 + 303) = 0u;
    *(v1 + 305) = 0u;
    v311 = v1[926];
    v1[188] = v307;
    v1[189] = v310;
    v1[190] = v309;
    v1[192] = v308;
    *(v1 + 122) = 0u;
    *(v1 + 121) = 0u;
    v1[249] = v307;
    v1[250] = v310;
    v1[251] = v309;
    v1[253] = v308;

    sub_1000F26FC((v1 + 185), (v1 + 124));
    sub_1000F2758((v1 + 246));
    memcpy(v1 + 307, v1 + 185, 0x1E8uLL);
    nullsub_7();
    memcpy(v1 + 2, v1 + 307, 0x1E8uLL);
    v312 = *(v311 + 56);
    *(swift_task_alloc() + 16) = v1 + 2;
    sub_1000F26FC((v1 + 185), (v1 + 63));
    os_unfair_lock_lock(v312 + 126);
    sub_1005BE508(&v312[4]);
    os_unfair_lock_unlock(v312 + 126);
    sub_1000F2758((v1 + 185));

    defaultLogger()();
    v313 = Logger.logObject.getter();
    v314 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v313, v314))
    {
      v315 = swift_slowAlloc();
      *v315 = 0;
      _os_log_impl(&_mh_execute_header, v313, v314, "active config file fetch successful", v315, 2u);
    }

    v401 = v1[962];
    v316 = v1[960];
    v317 = v1[953];
    v318 = v1[948];
    v319 = v1[945];
    v320 = v1[943];
    v321 = v1[938];
    v322 = v1[934];
    v323 = v1[933];
    __dsta = v1[921];

    v316(v317, v318);
    (*(v322 + 8))(v321, v323);
    v401(v319, v320);
    sub_1005BE274(0, 0, 0, 0);

    memcpy(__dsta, v1 + 185, 0x1E8uLL);

    v72 = v1[1];
    goto LABEL_13;
  }

  v263 = swift_task_alloc();
  v1[1011] = v263;
  *v263 = v1;
  v263[1] = sub_1005B5F0C;
  v264 = v1[938];
  v265 = v197[3849];

  sub_1005BA8AC(v264, v265);
}

uint64_t sub_1005B5F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[898] = v5;
  v6[899] = a1;
  v6[900] = a2;
  v6[901] = a3;
  v6[902] = a4;
  v6[903] = v4;
  v6[1012] = v4;

  if (v4)
  {
    v7 = sub_1005B6700;
  }

  else
  {
    v7 = sub_1005B6038;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_1005B6038()
{
  v1 = v0[1012];
  v2 = v0[899];
  v3 = v0[900];
  v4 = v0[901];
  v5 = v0[902];

  if (v2)
  {

    v6 = v4;
    v7 = v3;
    v8 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  *(v0 + 2417) = *v74;
  v9 = v0[964];
  v0[185] = v9;
  v0[246] = v9;
  v10 = v0[965];
  v0[186] = v10;
  v0[247] = v10;
  v11 = v0[1007];
  v0[187] = v11;
  v0[248] = v11;
  v12 = v0[968];
  v0[191] = v12;
  v0[252] = v12;
  v13 = v0[970];
  v0[193] = v13;
  v0[254] = v13;
  v14 = v0[971];
  v0[194] = v14;
  v0[255] = v14;
  v15 = v0[972];
  v0[195] = v15;
  v0[256] = v15;
  v16 = v0[973];
  v0[196] = v16;
  v0[257] = v16;
  v17 = v0[974];
  v0[197] = v17;
  v0[258] = v17;
  v18 = v0[975];
  v0[198] = v18;
  v0[259] = v18;
  v19 = v0[976];
  v0[199] = v19;
  v0[260] = v19;
  v20 = v0[977];
  v0[200] = v20;
  v0[261] = v20;
  v21 = v0[978];
  v0[201] = v21;
  v0[262] = v21;
  v22 = v0[979];
  v0[202] = v22;
  v0[263] = v22;
  v23 = v0[980];
  v0[203] = v23;
  v0[264] = v23;
  v24 = v0[981];
  v0[204] = v24;
  v0[265] = v24;
  v25 = v0[982];
  v0[205] = v25;
  v0[266] = v25;
  LOBYTE(v25) = *(v0 + 8272);
  *(v0 + 1648) = v25;
  *(v0 + 2136) = v25;
  v26 = v0[983];
  v0[207] = v26;
  v0[268] = v26;
  LOBYTE(v26) = *(v0 + 8264);
  *(v0 + 1664) = v26;
  *(v0 + 2152) = v26;
  v27 = v0[984];
  v0[209] = v27;
  v0[270] = v27;
  v28 = v0[985];
  v0[210] = v28;
  v0[271] = v28;
  v29 = v0[986];
  v0[211] = v29;
  v0[272] = v29;
  LOBYTE(v29) = *(v0 + 8256);
  *(v0 + 1696) = v29;
  *(v0 + 2184) = v29;
  v30 = v0[987];
  v0[213] = v30;
  v0[274] = v30;
  LOBYTE(v30) = *(v0 + 8248);
  *(v0 + 1712) = v30;
  *(v0 + 2200) = v30;
  v31 = v0[988];
  v0[215] = v31;
  v0[276] = v31;
  LOBYTE(v31) = *(v0 + 8240);
  *(v0 + 1728) = v31;
  *(v0 + 2216) = v31;
  v32 = v0[989];
  v0[217] = v32;
  v0[278] = v32;
  LOBYTE(v32) = *(v0 + 8280);
  *(v0 + 1744) = v32;
  *(v0 + 2232) = v32;
  v33 = v0[990];
  v0[219] = v33;
  v0[280] = v33;
  LOBYTE(v33) = *(v0 + 8232);
  *(v0 + 1760) = v33;
  *(v0 + 2248) = v33;
  v34 = v0[991];
  v0[221] = v34;
  v0[282] = v34;
  v35 = v0[992];
  v0[222] = v35;
  v0[283] = v35;
  v36 = v0[993];
  v0[223] = v36;
  v0[284] = v36;
  v37 = v0[994];
  v0[224] = v37;
  v0[285] = v37;
  v38 = v0[995];
  v0[225] = v38;
  v0[286] = v38;
  v39 = v0[996];
  v0[226] = v39;
  v0[287] = v39;
  v40 = v0[997];
  v0[227] = v40;
  v0[288] = v40;
  v41 = v0[998];
  v0[228] = v41;
  v0[289] = v41;
  v42 = v0[999];
  v0[229] = v42;
  v0[290] = v42;
  LOBYTE(v42) = *(v0 + 8224);
  *(v0 + 1840) = v42;
  *(v0 + 2328) = v42;
  v43 = v0[1000];
  v0[231] = v43;
  v0[292] = v43;
  LOBYTE(v43) = *(v0 + 8216);
  *(v0 + 1856) = v43;
  *(v0 + 2344) = v43;
  LOBYTE(v43) = *(v0 + 8211);
  *(v0 + 1857) = v43;
  *(v0 + 2345) = v43;
  v44 = v0[1001];
  v0[233] = v44;
  v0[294] = v44;
  LOBYTE(v44) = *(v0 + 8200);
  *(v0 + 1872) = v44;
  *(v0 + 2360) = v44;
  v45 = v0[1002];
  v0[235] = v45;
  v0[296] = v45;
  LOBYTE(v45) = *(v0 + 8208);
  *(v0 + 1888) = v45;
  *(v0 + 2376) = v45;
  v46 = v0[1003];
  v0[237] = v46;
  v0[298] = v46;
  v47 = v0[1004];
  v0[238] = v47;
  v0[299] = v47;
  v48 = v0[1005];
  v0[239] = v48;
  v0[300] = v48;
  v49 = v0[1006];
  v0[240] = v49;
  v0[301] = v49;
  LOBYTE(v49) = *(v0 + 8217);
  *(v0 + 1928) = v49;
  *(v0 + 2416) = v49;
  *(v0 + 605) = *&v74[3];
  v0[243] = v7;
  v0[304] = v7;
  v0[244] = v6;
  v0[305] = v6;
  v50 = v0[1008];
  v51 = v0[969];
  v52 = v0[967];
  v53 = v0[966];
  v0[245] = v8;
  v0[306] = v8;
  v54 = v0[926];
  v0[188] = v50;
  v0[189] = v53;
  v0[190] = v52;
  v0[192] = v51;
  v0[242] = v2;
  v0[249] = v50;
  v0[250] = v53;
  v0[251] = v52;
  v0[253] = v51;
  v0[303] = v2;

  sub_1000F26FC((v0 + 185), (v0 + 124));
  sub_1000F2758((v0 + 246));
  memcpy(v0 + 307, v0 + 185, 0x1E8uLL);
  nullsub_7();
  memcpy(v0 + 2, v0 + 307, 0x1E8uLL);
  v55 = *(v54 + 56);
  *(swift_task_alloc() + 16) = v0 + 2;
  sub_1000F26FC((v0 + 185), (v0 + 63));
  os_unfair_lock_lock(v55 + 126);
  sub_1005BE508(&v55[4]);
  os_unfair_lock_unlock(v55 + 126);
  if (!v1)
  {
    v70 = v2;
    v71 = v5;
    v72 = v4;
    v73 = v3;
    sub_1000F2758((v0 + 185));

    defaultLogger()();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "active config file fetch successful", v58, 2u);
    }

    v69 = v0[962];
    v59 = v0[960];
    v60 = v0[953];
    v61 = v0[948];
    v62 = v0[945];
    v63 = v0[943];
    v64 = v0[938];
    v65 = v0[934];
    v66 = v0[933];
    __dst = v0[921];

    v59(v60, v61);
    (*(v65 + 8))(v64, v66);
    v69(v62, v63);
    sub_1005BE274(v70, v73, v72, v71);

    memcpy(__dst, v0 + 185, 0x1E8uLL);

    v67 = v0[1];

    v67();
  }
}

uint64_t sub_1005B6700(uint64_t a1)
{
  v87 = v1;
  v2 = v1 + 0x2000;
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v83 = *(v1 + 7680);
    v82 = *(v1 + 7616);
    v5 = *(v1 + 7584);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v86[0] = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100141FE4(v8, v9, v86);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "The error received is %s", v6, 0xCu);
    sub_10000BB78(v7);

    v2 = v1 + 0x2000;

    v83(v82, v5);
  }

  else
  {
    v11 = *(v1 + 7680);
    v12 = *(v1 + 7616);
    v13 = *(v1 + 7584);

    v11(v12, v13);
  }

  if (*(v2 + 18) == 1)
  {
    v79 = *(v1 + 7696);
    v77 = *(v1 + 7544);
    v78 = *(v1 + 7560);
    v14 = *(v1 + 7504);
    v15 = *(v1 + 7472);
    v16 = *(v1 + 7464);
    v17 = *(v1 + 7456);
    v18 = *(v1 + 7448);
    v19 = *(v1 + 7440);

    sub_10000BE18(v1 + 3368, &qword_10083AAA0, &unk_1006D8E00);
    v84 = *(v18 + 104);
    v84(v17, enum case for DIPError.Code.identityProofingAttributeConfigFetchFailed(_:), v19);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_8:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v15 + 8))(v14, v16);
LABEL_9:
    v79(v78, v77);

    v27 = *(v1 + 7456);
    v28 = *(v1 + 7440);
    v29 = *(v1 + 7408);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v30 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v31 = (*(*v30 + 80) + 32) & ~*(*v30 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1006BF520;
    v33 = v32 + v31;
    v34 = (v33 + v30[14]);
    v35 = enum case for DIPError.PropertyKey.conversationID(_:);
    v36 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v36 - 8) + 104))(v33, v35, v36);
    v37 = *(v29 + 24);
    v38 = *(v29 + 32);
    v34[3] = &type metadata for String;
    v34[4] = &protocol witness table for String;
    *v34 = v37;
    v34[1] = v38;
    swift_errorRetain();

    sub_10003C9C0(v32);
    swift_setDeallocating();
    sub_10000BE18(v33, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    v84(v27, enum case for DIPError.Code.internalError(_:), v28);
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v39 = *(v1 + 8);

    return v39();
  }

  v20 = *(v1 + 8080);
  v21 = *(v1 + 7464);
  v22 = *(v1 + 7416);
  URL.init(string:)();
  if (v20(v22, 1, v21) == 1)
  {
    v79 = *(v1 + 7696);
    v77 = *(v1 + 7544);
    v78 = *(v1 + 7560);
    v14 = *(v1 + 7504);
    v15 = *(v1 + 7472);
    v16 = *(v1 + 7464);
    v23 = *(v1 + 7456);
    v24 = *(v1 + 7448);
    v25 = *(v1 + 7440);
    v26 = *(v1 + 7416);

    sub_10000BE18(v1 + 3368, &qword_10083AAA0, &unk_1006D8E00);
    sub_10000BE18(v26, &unk_100844540, &unk_1006BFBC0);
    v84 = *(v24 + 104);
    v84(v23, enum case for DIPError.Code.serverResponseInconsistent(_:), v25);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_8;
  }

  (*(v1 + 8072))(*(v1 + 7480), *(v1 + 7416), *(v1 + 7464));
  sub_1005BE2D4(&qword_10083EF80, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v79 = *(v1 + 7696);
    v77 = *(v1 + 7544);
    v78 = *(v1 + 7560);
    v76 = *(v1 + 7504);
    v41 = *(v1 + 7464);
    v42 = *(v1 + 7456);
    v43 = *(v1 + 7448);
    v44 = *(v1 + 7440);
    v45 = *(*(v1 + 7472) + 8);
    v45(*(v1 + 7480), v41);

    sub_10000BE18(v1 + 3368, &qword_10083AAA0, &unk_1006D8E00);
    v84 = *(v43 + 104);
    v84(v42, enum case for DIPError.Code.unexpectedDaemonState(_:), v44);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v45(v76, v41);
    goto LABEL_9;
  }

  v81 = *(v1 + 7680);
  v46 = *(v1 + 7608);
  v85 = v2;
  v80 = *(v1 + 7584);
  v47 = *(v1 + 7504);
  v48 = *(v1 + 7472);
  v49 = *(v1 + 7464);
  v50 = *(v1 + 7456);
  v51 = *(v1 + 7448);
  v52 = *(v1 + 7440);
  v53 = enum case for DIPError.Code.switchedToDefaultAttributeConfig(_:);
  v54 = *(v51 + 104);
  *(v1 + 8104) = v54;
  *(v1 + 8112) = (v51 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v54(v50, v53, v52);
  *(v1 + 8120) = sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v55 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  *(v1 + 8128) = v55;
  v56 = *(v55 - 8);
  *(v1 + 8136) = *(v56 + 72);
  v57 = *(v56 + 80);
  *(v1 + 8212) = v57;
  v58 = (v57 + 32) & ~v57;
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_1006BF520;
  v60 = v59 + v58;
  v61 = (v59 + v58 + *(v55 + 48));
  v62 = enum case for DIPError.PropertyKey.serverURL(_:);
  *(v1 + 8220) = enum case for DIPError.PropertyKey.serverURL(_:);
  v63 = type metadata accessor for DIPError.PropertyKey();
  *(v1 + 8144) = v63;
  v64 = *(v63 - 8);
  v65 = *(v64 + 104);
  *(v1 + 8152) = v65;
  *(v1 + 8160) = (v64 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v65(v60, v62, v63);
  v61[3] = v49;
  v61[4] = sub_1005BE2D4(&qword_1008418B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v66 = sub_100032DBC(v61);
  (*(v48 + 16))(v66, v47, v49);
  sub_10003C9C0(v59);
  swift_setDeallocating();
  sub_10000BE18(v60, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  *(v1 + 8168) = type metadata accessor for DIPError();
  *(v1 + 8176) = sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v81(v46, v80);

  defaultLogger()();
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&_mh_execute_header, v67, v68, "Retrying default urls", v69, 2u);
  }

  v70 = *(v1 + 7680);
  v71 = *(v1 + 7600);
  v72 = *(v1 + 7584);

  v70(v71, v72);
  v73 = swift_task_alloc();
  *(v1 + 8184) = v73;
  *v73 = v1;
  v73[1] = sub_1005B765C;
  v74 = *(v1 + 7480);
  v75 = *(v85 + 9);

  return sub_1005BA8AC(v74, v75);
}

uint64_t sub_1005B765C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[904] = v5;
  v6[905] = a1;
  v6[906] = a2;
  v6[907] = a3;
  v6[908] = a4;
  v6[909] = v4;
  v6[1024] = v4;

  if (v4)
  {

    v7 = sub_1005B7E84;
  }

  else
  {
    v7 = sub_1005B7790;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_1005B7790()
{
  v1 = v0[935];
  v2 = v0[934];
  v3 = v0[933];

  (*(v2 + 8))(v1, v3);
  v4 = v0[1024];
  v5 = v0[905];
  v6 = v0[906];
  v7 = v0[907];
  v8 = v0[908];

  if (v5)
  {

    v9 = v7;
    v10 = v6;
    v11 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  *(v0 + 2417) = *v77;
  v12 = v0[964];
  v0[185] = v12;
  v0[246] = v12;
  v13 = v0[965];
  v0[186] = v13;
  v0[247] = v13;
  v14 = v0[1007];
  v0[187] = v14;
  v0[248] = v14;
  v15 = v0[968];
  v0[191] = v15;
  v0[252] = v15;
  v16 = v0[970];
  v0[193] = v16;
  v0[254] = v16;
  v17 = v0[971];
  v0[194] = v17;
  v0[255] = v17;
  v18 = v0[972];
  v0[195] = v18;
  v0[256] = v18;
  v19 = v0[973];
  v0[196] = v19;
  v0[257] = v19;
  v20 = v0[974];
  v0[197] = v20;
  v0[258] = v20;
  v21 = v0[975];
  v0[198] = v21;
  v0[259] = v21;
  v22 = v0[976];
  v0[199] = v22;
  v0[260] = v22;
  v23 = v0[977];
  v0[200] = v23;
  v0[261] = v23;
  v24 = v0[978];
  v0[201] = v24;
  v0[262] = v24;
  v25 = v0[979];
  v0[202] = v25;
  v0[263] = v25;
  v26 = v0[980];
  v0[203] = v26;
  v0[264] = v26;
  v27 = v0[981];
  v0[204] = v27;
  v0[265] = v27;
  v28 = v0[982];
  v0[205] = v28;
  v0[266] = v28;
  LOBYTE(v28) = *(v0 + 8272);
  *(v0 + 1648) = v28;
  *(v0 + 2136) = v28;
  v29 = v0[983];
  v0[207] = v29;
  v0[268] = v29;
  LOBYTE(v29) = *(v0 + 8264);
  *(v0 + 1664) = v29;
  *(v0 + 2152) = v29;
  v30 = v0[984];
  v0[209] = v30;
  v0[270] = v30;
  v31 = v0[985];
  v0[210] = v31;
  v0[271] = v31;
  v32 = v0[986];
  v0[211] = v32;
  v0[272] = v32;
  LOBYTE(v32) = *(v0 + 8256);
  *(v0 + 1696) = v32;
  *(v0 + 2184) = v32;
  v33 = v0[987];
  v0[213] = v33;
  v0[274] = v33;
  LOBYTE(v33) = *(v0 + 8248);
  *(v0 + 1712) = v33;
  *(v0 + 2200) = v33;
  v34 = v0[988];
  v0[215] = v34;
  v0[276] = v34;
  LOBYTE(v34) = *(v0 + 8240);
  *(v0 + 1728) = v34;
  *(v0 + 2216) = v34;
  v35 = v0[989];
  v0[217] = v35;
  v0[278] = v35;
  LOBYTE(v35) = *(v0 + 8280);
  *(v0 + 1744) = v35;
  *(v0 + 2232) = v35;
  v36 = v0[990];
  v0[219] = v36;
  v0[280] = v36;
  LOBYTE(v36) = *(v0 + 8232);
  *(v0 + 1760) = v36;
  *(v0 + 2248) = v36;
  v37 = v0[991];
  v0[221] = v37;
  v0[282] = v37;
  v38 = v0[992];
  v0[222] = v38;
  v0[283] = v38;
  v39 = v0[993];
  v0[223] = v39;
  v0[284] = v39;
  v40 = v0[994];
  v0[224] = v40;
  v0[285] = v40;
  v41 = v0[995];
  v0[225] = v41;
  v0[286] = v41;
  v42 = v0[996];
  v0[226] = v42;
  v0[287] = v42;
  v43 = v0[997];
  v0[227] = v43;
  v0[288] = v43;
  v44 = v0[998];
  v0[228] = v44;
  v0[289] = v44;
  v45 = v0[999];
  v0[229] = v45;
  v0[290] = v45;
  LOBYTE(v45) = *(v0 + 8224);
  *(v0 + 1840) = v45;
  *(v0 + 2328) = v45;
  v46 = v0[1000];
  v0[231] = v46;
  v0[292] = v46;
  LOBYTE(v46) = *(v0 + 8216);
  *(v0 + 1856) = v46;
  *(v0 + 2344) = v46;
  LOBYTE(v46) = *(v0 + 8211);
  *(v0 + 1857) = v46;
  *(v0 + 2345) = v46;
  v47 = v0[1001];
  v0[233] = v47;
  v0[294] = v47;
  LOBYTE(v47) = *(v0 + 8200);
  *(v0 + 1872) = v47;
  *(v0 + 2360) = v47;
  v48 = v0[1002];
  v0[235] = v48;
  v0[296] = v48;
  LOBYTE(v48) = *(v0 + 8208);
  *(v0 + 1888) = v48;
  *(v0 + 2376) = v48;
  v49 = v0[1003];
  v0[237] = v49;
  v0[298] = v49;
  v50 = v0[1004];
  v0[238] = v50;
  v0[299] = v50;
  v51 = v0[1005];
  v0[239] = v51;
  v0[300] = v51;
  v52 = v0[1006];
  v0[240] = v52;
  v0[301] = v52;
  LOBYTE(v52) = *(v0 + 8217);
  *(v0 + 1928) = v52;
  *(v0 + 2416) = v52;
  *(v0 + 605) = *&v77[3];
  v0[243] = v10;
  v0[304] = v10;
  v0[244] = v9;
  v0[305] = v9;
  v53 = v0[1008];
  v54 = v0[969];
  v55 = v0[967];
  v56 = v0[966];
  v0[245] = v11;
  v0[306] = v11;
  v57 = v0[926];
  v0[188] = v53;
  v0[189] = v56;
  v0[190] = v55;
  v0[192] = v54;
  v0[242] = v5;
  v0[249] = v53;
  v0[250] = v56;
  v0[251] = v55;
  v0[253] = v54;
  v0[303] = v5;

  sub_1000F26FC((v0 + 185), (v0 + 124));
  sub_1000F2758((v0 + 246));
  memcpy(v0 + 307, v0 + 185, 0x1E8uLL);
  nullsub_7();
  memcpy(v0 + 2, v0 + 307, 0x1E8uLL);
  v58 = *(v57 + 56);
  *(swift_task_alloc() + 16) = v0 + 2;
  sub_1000F26FC((v0 + 185), (v0 + 63));
  os_unfair_lock_lock(v58 + 126);
  sub_1005BE508(&v58[4]);
  os_unfair_lock_unlock(v58 + 126);
  if (!v4)
  {
    v73 = v5;
    v74 = v8;
    v75 = v7;
    v76 = v6;
    sub_1000F2758((v0 + 185));

    defaultLogger()();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "active config file fetch successful", v61, 2u);
    }

    v72 = v0[962];
    v62 = v0[960];
    v63 = v0[953];
    v64 = v0[948];
    v65 = v0[945];
    v66 = v0[943];
    v67 = v0[938];
    v68 = v0[934];
    v69 = v0[933];
    __dst = v0[921];

    v62(v63, v64);
    (*(v68 + 8))(v67, v69);
    v72(v65, v66);
    sub_1005BE274(v73, v76, v75, v74);

    memcpy(__dst, v0 + 185, 0x1E8uLL);

    v70 = v0[1];

    v70();
  }
}

uint64_t sub_1005B7E84()
{
  v30 = *(v0 + 8152);
  v24 = *(v0 + 8220);
  v1 = *(v0 + 8128);
  v25 = *(v0 + 8144);
  v26 = *(v0 + 8104);
  v2 = *(v0 + 7832);
  v23 = *(v0 + 7824);
  v37 = *(v0 + 7696);
  v27 = *(v0 + 7608);
  v28 = *(v0 + 7584);
  v29 = *(v0 + 7680);
  v35 = *(v0 + 7544);
  v36 = *(v0 + 7560);
  v34 = *(v0 + 7504);
  v3 = (*(v0 + 8212) + 32) & ~*(v0 + 8212);
  v31 = *(v0 + 7472);
  v32 = *(v0 + 7464);
  v33 = *(v0 + 7480);
  v4 = *(v0 + 7456);
  (v26)(v4, enum case for DIPError.Code.defaultAttributeConfigFailed(_:));
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006BF520;
  v6 = (v5 + v3 + *(v1 + 48));
  v30(v5 + v3, v24, v25);
  v6[3] = &type metadata for String;
  v6[4] = &protocol witness table for String;
  *v6 = v23;
  v6[1] = v2;

  sub_10000BE18(v0 + 3368, &qword_10083AAA0, &unk_1006D8E00);
  sub_10003C9C0(v5);
  swift_setDeallocating();
  sub_10000BE18(v5 + v3, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  v29(v27, v28);

  LODWORD(v25) = enum case for DIPError.Code.internalError(_:);
  v26(v4);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7 = *(v31 + 8);
  v7(v33, v32);
  v7(v34, v32);
  v37(v36, v35);

  v22 = *(v0 + 8104);
  v8 = *(v0 + 7456);
  v9 = *(v0 + 7440);
  v10 = *(v0 + 7408);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v11 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1006BF520;
  v14 = v13 + v12;
  v15 = (v14 + v11[14]);
  v16 = enum case for DIPError.PropertyKey.conversationID(_:);
  v17 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v17 - 8) + 104))(v14, v16, v17);
  v18 = *(v10 + 24);
  v19 = *(v10 + 32);
  v15[3] = &type metadata for String;
  v15[4] = &protocol witness table for String;
  *v15 = v18;
  v15[1] = v19;
  swift_errorRetain();

  sub_10003C9C0(v13);
  swift_setDeallocating();
  sub_10000BE18(v14, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  v22(v8, v25, v9);
  type metadata accessor for DIPError();
  sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1005B85F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 336) = a6;
  *(v7 + 344) = a7;
  *(v7 + 249) = a5;
  *(v7 + 320) = a3;
  *(v7 + 328) = a4;
  *(v7 + 304) = a1;
  *(v7 + 312) = a2;
  v8 = type metadata accessor for DIPError();
  *(v7 + 352) = v8;
  *(v7 + 360) = *(v8 - 8);
  *(v7 + 368) = swift_task_alloc();
  v9 = sub_100007224(&qword_1008490A8, &unk_1006E92E0);
  *(v7 + 376) = v9;
  *(v7 + 384) = *(v9 - 8);
  *(v7 + 392) = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  *(v7 + 400) = v10;
  *(v7 + 408) = *(v10 - 8);
  *(v7 + 416) = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  *(v7 + 424) = v11;
  *(v7 + 432) = *(v11 - 8);
  *(v7 + 440) = swift_task_alloc();
  v12 = type metadata accessor for URLRequest();
  *(v7 + 448) = v12;
  *(v7 + 456) = *(v12 - 8);
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();
  v13 = type metadata accessor for URL();
  *(v7 + 488) = v13;
  *(v7 + 496) = *(v13 - 8);
  *(v7 + 504) = swift_task_alloc();
  *(v7 + 512) = swift_task_alloc();

  return _swift_task_switch(sub_1005B88BC, 0, 0);
}

uint64_t sub_1005B88BC()
{
  v97 = v0;
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v4 = *(v0 + 488);
  v3 = *(v0 + 496);
  v6 = *(v0 + 472);
  v5 = *(v0 + 480);
  v7 = *(v0 + 456);
  v89 = *(v0 + 448);
  v94 = *(v0 + 249);
  v8 = *(v0 + 328);
  v9 = *(*(v0 + 312) + 16);
  *(v0 + 520) = v9;
  os_unfair_lock_lock(v9 + 14);
  sub_100020260(&v9[4], v0 + 64);
  os_unfair_lock_unlock(v9 + 14);
  sub_10000BA08((v0 + 64), *(v0 + 88));
  sub_1005A4C70(v1);
  sub_10000BB78((v0 + 64));
  v10 = *(v3 + 16);
  *(v0 + 528) = v10;
  *(v0 + 536) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v2, v1, v4);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.cachePolicy.setter();
  URLRequest.httpMethod.setter();
  sub_100007224(&qword_100841E88, &qword_1006DECF0);
  inited = swift_initStackObject();
  *(v0 + 544) = inited;
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = v8;
  v12 = *(v7 + 16);
  v12(v6, v5, v89);
  v13 = sub_1005BEE18(v6);
  v15 = v13;
  *(v0 + 552) = v13;
  if ((v94 & 1) == 0 && (v14 & 1) != 0 && v13)
  {
    v16 = *(v0 + 472);
    v17 = *(v0 + 448);
    v18 = *(v0 + 456);

    v19 = [v15 data];
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = [v15 response];
    v24 = *(v18 + 8);
    v24(v16, v17);
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25 && (v26 = v25, v27 = *(v0 + 328), [v25 statusCode] == v27))
    {
      v90 = v24;
      v92 = v20;
      v28 = String._bridgeToObjectiveC()();
      v29 = [v26 valueForHTTPHeaderField:v28];

      v95 = v22;
      if (v29)
      {
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        *(v0 + 272) = v30;
        *(v0 + 280) = v32;
        sub_1000ACCA0();
        Collection.nilIfEmpty.getter();

        v33 = *(v0 + 296);
        if (v33)
        {
          v83 = (v0 + 184);
          v86 = *(v0 + 288);
          defaultLogger()();

          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.info.getter();

          v36 = os_log_type_enabled(v34, v35);
          v37 = *(v0 + 432);
          v38 = *(v0 + 440);
          v39 = *(v0 + 424);
          if (v36)
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v96[0] = v41;
            *v40 = 136446210;
            *(v40 + 4) = sub_100141FE4(v86, v33, v96);
            _os_log_impl(&_mh_execute_header, v34, v35, "Bootstrap URL redirected to %{public}s", v40, 0xCu);
            sub_10000BB78(v41);
          }

          (*(v37 + 8))(v38, v39);
          v42 = *(v0 + 520);
          os_unfair_lock_lock((v42 + 56));
          sub_100020260(v42 + 16, v0 + 144);
          os_unfair_lock_unlock((v42 + 56));
          v43 = *(v0 + 168);
          v44 = *(v0 + 176);
          sub_10001F370(v0 + 144, v43);
          (*(v44 + 24))(v86, v33, v43, v44);
          sub_10001F370(v0 + 144, *(v0 + 168));
          *(v0 + 208) = &type metadata for BootstrapURLManager;
          *(v0 + 216) = &off_100818018;
          *(swift_task_alloc() + 16) = v83;
          os_unfair_lock_lock((v42 + 56));
          sub_1005BE4C4((v42 + 16));
          os_unfair_lock_unlock((v42 + 56));

          sub_10000BB78(v83);
          sub_10000BB78((v0 + 144));
        }
      }

      v88 = *(v0 + 512);
      v72 = *(v0 + 496);
      v82 = *(v0 + 480);
      v85 = *(v0 + 488);
      v80 = *(v0 + 448);
      v73 = *(v0 + 304);
      (*(*(v0 + 408) + 104))(*(v0 + 416), enum case for DIPError.Code.httpMovedPermanently(_:), *(v0 + 400));
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v74 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

      sub_10000B90C(v92, v95);
      v90(v82, v80);
      (*(v72 + 8))(v88, v85);
      *v73 = v74;
      *(v73 + 8) = 0;
      *(v73 + 16) = 1;
      v71 = &enum case for DIPRetrier.RetryResult.retry<A>(_:);
    }

    else
    {
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_1005BE470(&qword_1008490B8, &qword_1008490A8, &unk_1006E92E0);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v62 = *(v0 + 384);
      v61 = *(v0 + 392);
      v63 = *(v0 + 376);

      JWSSignedJSON.payload.getter();
      (*(v62 + 8))(v61, v63);
      v91 = *(v0 + 32);
      v93 = *(v0 + 48);
      v87 = *(v0 + 16);
      v64 = *(v0 + 496);
      v81 = *(v0 + 488);
      v84 = *(v0 + 512);
      v65 = *(v0 + 480);
      v66 = *(v0 + 448);
      v67 = v24;
      v68 = *(v0 + 304);
      v69._countAndFlagsBits = 0x3032386462623231;
      v70._object = 0x8000000100723B40;
      v69._object = 0xE800000000000000;
      v70._countAndFlagsBits = 0xD000000000000022;
      logMilestone(tag:description:)(v69, v70);
      sub_10000B90C(v20, v22);

      v67(v65, v66);
      (*(v64 + 8))(v84, v81);
      *v68 = v87;
      *(v68 + 16) = v91;
      *(v68 + 32) = v93;
      *(v68 + 48) = 1;
      v71 = &enum case for DIPRetrier.RetryResult.success<A>(_:);
    }

    v75 = *(v0 + 304);
    v76 = *v71;
    v77 = sub_100007224(&qword_1008490B0, &qword_1006E92F8);
    (*(*(v77 - 8) + 104))(v75, v76, v77);

    v78 = *(v0 + 8);

    return v78();
  }

  else
  {
    v45 = [objc_opt_self() standardUserDefaults];
    v46._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableIfModifiedSinceHeader.getter();
    v47 = NSUserDefaults.internalBool(forKey:)(v46);

    if (!v47 && v15)
    {
      v48 = qword_100832D20;
      v49 = v15;
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

    v53 = *(v0 + 464);
    v54 = *(v0 + 448);
    v55 = *(v0 + 456);
    v56 = *(v0 + 320);
    v12(v53, *(v0 + 472), v54);
    type metadata accessor for DIPHTTPSession.RequestContainer(0);
    v57 = swift_allocObject();
    *(v0 + 560) = v57;
    swift_defaultActor_initialize();
    (*(v55 + 32))(v57 + OBJC_IVAR____TtCFC8coreidvd14DIPHTTPSession14performRequestFzZTV10Foundation10URLRequest21acceptableStatusCodesGSaSi_11ignoreCacheSb11isAnonymousSb17overridingAltDSIDGSqSS__TVS1_4DataCSo13NSURLResponseSb_L_16RequestContainer_request, v53, v54);
    v58 = swift_task_alloc();
    *(v0 + 568) = v58;
    *(v58 + 16) = v57;
    *(v58 + 24) = v56;
    *(v58 + 32) = 0;
    *(v58 + 40) = inited;
    *(v58 + 48) = v15;
    v59 = swift_task_alloc();
    *(v0 + 576) = v59;
    v60 = sub_100007224(&qword_100848F80, &qword_1006E91B0);
    *v59 = v0;
    v59[1] = sub_1005B9730;

    return DIPRetrier.retry<A>(operation:)(v0 + 224, &unk_1006E92F0, v58, v60);
  }
}

uint64_t sub_1005B9730()
{
  *(*v1 + 584) = v0;

  if (v0)
  {
    swift_setDeallocating();

    v2 = sub_1005BA4B0;
  }

  else
  {

    v2 = sub_1005B988C;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1005B988C()
{
  v112 = v0;
  v1 = *(v0 + 552);
  v2 = *(v0 + 472);
  v3 = *(v0 + 448);
  v4 = *(v0 + 456);

  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = *(v0 + 224);
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  v9 = *(v0 + 248);
  v10 = *(v0 + 584);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  v110 = v6;
  if (!v11 || (v12 = v11, v13 = *(v0 + 328), [v11 statusCode] != v13))
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1005BE470(&qword_1008490B8, &qword_1008490A8, &unk_1006E92E0);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v109 = v8;
    if (!v10)
    {
      v47 = *(v0 + 384);
      v46 = *(v0 + 392);
      v48 = *(v0 + 376);

      JWSSignedJSON.payload.getter();
      (*(v47 + 8))(v46, v48);
      v97 = *(v0 + 48);
      v104 = *(v0 + 16);
      v101 = *(v0 + 32);
      v107 = v9;
      if (v9)
      {
        v49 = v5;
        v50 = v7;
        v51 = " config from network";
        v52 = 0x3032386462623231;
        v53 = 0xD000000000000022;
      }

      else
      {
        if (qword_100832D20 != -1)
        {
          swift_once();
        }

        v54 = qword_100882498;
        v55 = objc_allocWithZone(NSCachedURLResponse);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v57 = [v55 initWithResponse:v8 data:isa];

        v58 = sub_100600EC4(v57, 0, 1);
        if (v58)
        {
          v59 = v58;
          v60 = URLRequest._bridgeToObjectiveC()().super.isa;
          v61 = type metadata accessor for DIPURLCache();
          *(v0 + 256) = v54;
          *(v0 + 264) = v61;
          objc_msgSendSuper2((v0 + 256), "storeCachedResponse:forRequest:", v59, v60);

          v57 = v60;
        }

        v49 = v5;
        v50 = v7;

        v51 = " when parsing JSON basic config";
        v53 = 0xD000000000000024;
        v52 = 0x3834303663393031;
      }

      v62 = *(v0 + 512);
      v63 = *(v0 + 488);
      v64 = *(v0 + 496);
      v65 = *(v0 + 480);
      v66 = *(v0 + 448);
      v67 = *(v0 + 304);
      v68 = v51 | 0x8000000000000000;
      v69 = 0xE800000000000000;
      logMilestone(tag:description:)(*&v52, *&v53);
      sub_10000B90C(v110, v50);

      v49(v65, v66);
      (*(v64 + 8))(v62, v63);
      *v67 = v104;
      *(v67 + 16) = v101;
      *(v67 + 32) = v97;
      *(v67 + 48) = v107;
      v70 = &enum case for DIPRetrier.RetryResult.success<A>(_:);
      goto LABEL_24;
    }

    v106 = v7;

    if (qword_100832D20 != -1)
    {
      swift_once();
    }

    v83 = *(v0 + 528);
    v100 = *(v0 + 496);
    v81 = *(v0 + 488);
    v82 = *(v0 + 512);
    v90 = *(v0 + 480);
    v91 = *(v0 + 456);
    v84 = *(v0 + 408);
    v85 = *(v0 + 416);
    v86 = *(v0 + 400);
    v87 = *(v0 + 368);
    v89 = *(v0 + 360);
    v31 = *(v0 + 344);
    v88 = *(v0 + 352);
    v80 = *(v0 + 336);
    v93 = *(v0 + 448);
    v96 = *(v0 + 304);
    v32 = qword_100882498;
    v33 = URLRequest._bridgeToObjectiveC()().super.isa;
    [v32 removeCachedResponseForRequest:v33];

    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v79 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v34 = *(*(v79 - 8) + 72);
    v35 = (*(*(v79 - 8) + 80) + 32) & ~*(*(v79 - 8) + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1006BF740;
    v37 = v36 + v35;
    v38 = (v36 + v35 + *(v79 + 48));
    v39 = enum case for DIPError.PropertyKey.conversationID(_:);
    v40 = type metadata accessor for DIPError.PropertyKey();
    v41 = *(*(v40 - 8) + 104);
    (v41)(v37, v39, v40);
    v38[3] = &type metadata for String;
    v38[4] = &protocol witness table for String;
    *v38 = v80;
    v38[1] = v31;
    v42 = (v37 + v34 + *(v79 + 48));
    v41();
    v42[3] = v81;
    v42[4] = sub_1005BE2D4(&qword_1008418B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v43 = sub_100032DBC(v42);
    v83(v43, v82, v81);

    sub_10003C9C0(v36);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v84 + 104))(v85, enum case for DIPError.Code.serverResponseInconsistent(_:), v86);
    swift_errorRetain();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v44 = swift_allocError();
    (*(v89 + 32))(v45, v87, v88);
    sub_10000B90C(v6, v106);

    (*(v91 + 8))(v90, v93);
    (*(v100 + 8))(v82, v81);
    *v96 = v44;
    *(v96 + 8) = 0;
    *(v96 + 16) = 1;
LABEL_23:
    v70 = &enum case for DIPRetrier.RetryResult.retry<A>(_:);
LABEL_24:
    v75 = *(v0 + 304);
    v76 = *v70;
    v77 = sub_100007224(&qword_1008490B0, &qword_1006E92F8);
    (*(*(v77 - 8) + 104))(v75, v76, v77);

    v78 = *(v0 + 8);

    v78();
    return;
  }

  v103 = v5;
  v105 = v7;
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 valueForHTTPHeaderField:v14];

  if (!v15 || (v16 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v18 = v17, v15, *(v0 + 272) = v16, *(v0 + 280) = v18, sub_1000ACCA0(), Collection.nilIfEmpty.getter(), , (v19 = *(v0 + 296)) == 0))
  {
LABEL_22:
    v102 = *(v0 + 512);
    v71 = *(v0 + 496);
    v94 = *(v0 + 480);
    v98 = *(v0 + 488);
    v92 = *(v0 + 448);
    v72 = v8;
    v73 = *(v0 + 304);
    (*(*(v0 + 408) + 104))(*(v0 + 416), enum case for DIPError.Code.httpMovedPermanently(_:), *(v0 + 400));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v74 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

    sub_10000B90C(v110, v105);
    v103(v94, v92);
    (*(v71 + 8))(v102, v98);
    *v73 = v74;
    *(v73 + 8) = 0;
    *(v73 + 16) = 1;
    goto LABEL_23;
  }

  v95 = (v0 + 184);
  v99 = *(v0 + 288);
  defaultLogger()();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 432);
  v24 = *(v0 + 440);
  v25 = *(v0 + 424);
  if (v22)
  {
    v108 = v8;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v111[0] = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_100141FE4(v99, v19, v111);
    _os_log_impl(&_mh_execute_header, v20, v21, "Bootstrap URL redirected to %{public}s", v26, 0xCu);
    sub_10000BB78(v27);

    v8 = v108;
  }

  (*(v23 + 8))(v24, v25);
  v28 = *(v0 + 520);
  os_unfair_lock_lock((v28 + 56));
  sub_100020260(v28 + 16, v0 + 144);
  os_unfair_lock_unlock((v28 + 56));
  v29 = *(v0 + 168);
  v30 = *(v0 + 176);
  sub_10001F370(v0 + 144, v29);
  (*(v30 + 24))(v99, v19, v29, v30);
  sub_10001F370(v0 + 144, *(v0 + 168));
  *(v0 + 208) = &type metadata for BootstrapURLManager;
  *(v0 + 216) = &off_100818018;
  *(swift_task_alloc() + 16) = v95;
  os_unfair_lock_lock((v28 + 56));
  sub_1005BE4C4((v28 + 16));
  os_unfair_lock_unlock((v28 + 56));
  if (!v10)
  {

    sub_10000BB78(v95);
    sub_10000BB78((v0 + 144));
    goto LABEL_22;
  }
}

uint64_t sub_1005BA4B0()
{
  v16 = v0[73];
  v1 = v0[69];
  v2 = v0[64];
  v3 = v0[61];
  v4 = v0[62];
  v6 = v0[59];
  v5 = v0[60];
  v7 = v0[56];
  v8 = v0[57];
  v9 = v0[38];

  v10 = *(v8 + 8);
  v10(v6, v7);
  v10(v5, v7);
  (*(v4 + 8))(v2, v3);
  *v9 = v16;
  v11 = v0[38];
  v12 = enum case for DIPRetrier.RetryResult.failure<A>(_:);
  v13 = sub_100007224(&qword_1008490B0, &qword_1006E92F8);
  (*(*(v13 - 8) + 104))(v11, v12, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1005BA660@<X0>(uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v23 = a3;
  v10 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000BE18(v12, &unk_100844540, &unk_1006BFBC0);
    v17 = 1;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    if (a5)
    {
      v24 = a4;
      v25 = a5;

      v18._countAndFlagsBits = 47;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
    }

    else
    {
      v24 = 47;
      v25 = 0xE100000000000000;
    }

    v19._countAndFlagsBits = a2;
    v19._object = v23;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0x6E6F736A2ELL;
    v20._object = 0xE500000000000000;
    String.append(_:)(v20);
    URL.appendingPathComponent(_:)();

    (*(v14 + 8))(v16, v13);
    v17 = 0;
  }

  return (*(v14 + 56))(a6, v17, 1, v13);
}

uint64_t sub_1005BA8AC(uint64_t a1, char a2)
{
  *(v3 + 73) = a2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v2;
  v4 = type metadata accessor for Logger();
  *(v3 + 144) = v4;
  *(v3 + 152) = *(v4 - 8);
  *(v3 + 160) = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  *(v3 + 168) = v5;
  *(v3 + 176) = *(v5 - 8);
  *(v3 + 184) = swift_task_alloc();
  v6 = sub_100007224(&qword_100849088, &qword_1006E92B0);
  *(v3 + 192) = v6;
  *(v3 + 200) = *(v6 - 8);
  *(v3 + 208) = swift_task_alloc();
  v7 = type metadata accessor for URL();
  *(v3 + 216) = v7;
  *(v3 + 224) = *(v7 - 8);
  *(v3 + 232) = swift_task_alloc();
  v8 = type metadata accessor for URLRequest();
  *(v3 + 240) = v8;
  *(v3 + 248) = *(v8 - 8);
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  *(v3 + 280) = swift_task_alloc();
  v9 = type metadata accessor for DIPSignpost();
  *(v3 + 288) = v9;
  *(v3 + 296) = *(v9 - 8);
  *(v3 + 304) = swift_task_alloc();
  *(v3 + 312) = swift_task_alloc();

  return _swift_task_switch(sub_1005BAB98, 0, 0);
}

uint64_t sub_1005BAB98()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  v56 = *(v0 + 264);
  v57 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 216);
  v58 = *(v0 + 73);
  v6 = *(v0 + 128);
  v55 = *(v0 + 136);
  static DaemonSignposts.configureLoadAttributeConfig.getter();
  DIPSignpost.init(_:)();
  static DaemonSignposts.attributeConfigRequest.getter();
  DIPSignpost.init(_:)();
  (*(v3 + 16))(v4, v6, v5);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.cachePolicy.setter();
  URLRequest.httpMethod.setter();
  v7 = *(v55 + 40);
  v8 = *(v2 + 16);
  v8(v56, v1, v57);
  v9 = sub_1005BEE18(v56);
  v11 = v9;
  *(v0 + 320) = v9;
  if ((v58 & 1) == 0 && (v10 & 1) != 0 && v9)
  {
    v12 = *(v0 + 264);
    v13 = *(v0 + 240);
    v14 = *(v0 + 248);
    v15 = [v9 data];
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = [v11 response];
    v20 = *(v14 + 8);
    v20(v12, v13);
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1005BE470(&qword_100849090, &qword_100849088, &qword_1006E92B0);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v59 = v19;
    v37 = *(v0 + 200);
    v36 = *(v0 + 208);
    v38 = *(v0 + 192);

    JWSSignedJSON.payload.getter();
    (*(v37 + 8))(v36, v38);
    v53 = *(v0 + 24);
    v54 = *(v0 + 16);
    v51 = *(v0 + 40);
    v52 = *(v0 + 32);
    v39._countAndFlagsBits = 0x3765386431393336;
    v40._object = 0x8000000100723A40;
    v39._object = 0xE800000000000000;
    v40._countAndFlagsBits = 0xD000000000000022;
    logMilestone(tag:description:)(v39, v40);
    v41 = *(v0 + 312);
    v42 = v20;
    v43 = *(v0 + 288);
    v44 = *(v0 + 296);
    v45 = *(v0 + 272);
    v50 = *(v0 + 304);
    v46 = *(v0 + 240);

    sub_10000B90C(v16, v18);
    v42(v45, v46);
    v47 = *(v44 + 8);
    v47(v50, v43);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v47(v41, v43);

    v48 = *(v0 + 8);

    return v48(v54, v53, v52, v51);
  }

  else
  {
    v21 = [objc_opt_self() standardUserDefaults];
    v22._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableIfModifiedSinceHeader.getter();
    v23 = NSUserDefaults.internalBool(forKey:)(v22);

    if (!v23 && v11)
    {
      v24 = qword_100832D20;
      v25 = v11;
      if (v24 != -1)
      {
        swift_once();
      }

      v26 = sub_1005FFF28(v25);
      if (v27)
      {
        v28._countAndFlagsBits = 0xD000000000000011;
        v28._object = 0x8000000100723320;
        URLRequest.addValue(_:forHTTPHeaderField:)(*&v26, v28);
      }
    }

    v29 = *(v0 + 256);
    v30 = *(v0 + 240);
    v31 = *(v0 + 248);
    v8(v29, *(v0 + 264), v30);
    type metadata accessor for DIPHTTPSession.RequestContainer(0);
    v32 = swift_allocObject();
    *(v0 + 328) = v32;
    swift_defaultActor_initialize();
    (*(v31 + 32))(v32 + OBJC_IVAR____TtCFC8coreidvd14DIPHTTPSession14performRequestFzZTV10Foundation10URLRequest21acceptableStatusCodesGSaSi_11ignoreCacheSb11isAnonymousSb17overridingAltDSIDGSqSS__TVS1_4DataCSo13NSURLResponseSb_L_16RequestContainer_request, v29, v30);
    v33 = swift_task_alloc();
    *(v0 + 336) = v33;
    *(v33 + 16) = v32;
    *(v33 + 24) = v7;
    *(v33 + 32) = 0;
    *(v33 + 40) = _swiftEmptyArrayStorage;
    *(v33 + 48) = v11;
    v34 = swift_task_alloc();
    *(v0 + 344) = v34;
    v35 = sub_100007224(&qword_100848F80, &qword_1006E91B0);
    *v34 = v0;
    v34[1] = sub_1005BB760;

    return DIPRetrier.retry<A>(operation:)(v0 + 48, &unk_1006E96C0, v33, v35);
  }
}

uint64_t sub_1005BB760()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1005BC270;
  }

  else
  {
    v2 = sub_1005BB894;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005BB894()
{
  v80 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);

  v77 = *(v4 + 8);
  v77(v2, v3);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v78 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 352);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005BE470(&qword_100849090, &qword_100849088, &qword_1006E92B0);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v8)
  {

    defaultLogger()();
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 152);
    v12 = *(v0 + 160);
    v14 = *(v0 + 144);
    v76 = v5;
    v75 = v6;
    if (v11)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v79 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = Error.localizedDescription.getter();
      v19 = sub_100141FE4(v17, v18, &v79);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "^^^^^ %s", v15, 0xCu);
      sub_10000BB78(v16);

      (*(v13 + 8))(v12, v14);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    if (qword_100832D20 != -1)
    {
      swift_once();
    }

    v70 = *(v0 + 304);
    v27 = *(v0 + 296);
    v28 = *(v0 + 272);
    v68 = *(v0 + 240);
    v69 = *(v0 + 288);
    v30 = *(v0 + 176);
    v29 = *(v0 + 184);
    v31 = *(v0 + 168);
    v32 = qword_100882498;
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    [v32 removeCachedResponseForRequest:isa];

    (*(v30 + 104))(v29, enum case for DIPError.Code.serverResponseInconsistent(_:), v31);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v76, v75);

    v77(v28, v68);
    v34 = *(v27 + 8);
    v34(v70, v69);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v36 = *(v0 + 176);
    v35 = *(v0 + 184);
    v67 = *(v0 + 168);
    v37 = *(v0 + 136);
    v34(*(v0 + 312), *(v0 + 288));
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v38 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v39 = (*(*v38 + 80) + 32) & ~*(*v38 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1006BF520;
    v41 = v40 + v39;
    v42 = (v41 + v38[14]);
    v43 = enum case for DIPError.PropertyKey.conversationID(_:);
    v44 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v44 - 8) + 104))(v41, v43, v44);
    v45 = *(v37 + 24);
    v46 = *(v37 + 32);
    v42[3] = &type metadata for String;
    v42[4] = &protocol witness table for String;
    *v42 = v45;
    v42[1] = v46;
    swift_errorRetain();

    sub_10003C9C0(v40);
    swift_setDeallocating();
    sub_10000BE18(v41, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    (*(v36 + 104))(v35, enum case for DIPError.Code.internalError(_:), v67);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v47 = *(v0 + 8);

    return v47();
  }

  else
  {
    v21 = *(v0 + 200);
    v20 = *(v0 + 208);
    v22 = *(v0 + 192);

    JWSSignedJSON.payload.getter();
    (*(v21 + 8))(v20, v22);
    v73 = *(v0 + 24);
    v74 = *(v0 + 16);
    v71 = *(v0 + 40);
    v72 = *(v0 + 32);
    if (v7)
    {
      v23 = v6;
      v24 = v5;
      v25._countAndFlagsBits = 0x3765386431393336;
      v26._object = 0x8000000100723A40;
      v25._object = 0xE800000000000000;
      v26._countAndFlagsBits = 0xD000000000000022;
      logMilestone(tag:description:)(v25, v26);
    }

    else
    {
      v49._countAndFlagsBits = 0x3963393462323332;
      v50._countAndFlagsBits = 0xD000000000000024;
      v50._object = 0x8000000100723A10;
      v49._object = 0xE800000000000000;
      logMilestone(tag:description:)(v49, v50);
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v51 = qword_100882498;
      v52 = objc_allocWithZone(NSCachedURLResponse);
      v53 = Data._bridgeToObjectiveC()().super.isa;
      v54 = [v52 initWithResponse:v78 data:v53];

      v55 = sub_100600EC4(v54, 0, 1);
      if (v55)
      {
        v56 = v55;
        v57 = URLRequest._bridgeToObjectiveC()().super.isa;
        v58 = type metadata accessor for DIPURLCache();
        *(v0 + 104) = v51;
        *(v0 + 112) = v58;
        objc_msgSendSuper2((v0 + 104), "storeCachedResponse:forRequest:", v56, v57);

        v54 = v57;
      }

      v23 = v6;
      v24 = v5;

      DIPSignpost.end(workflowID:isBackground:)(0, 2);
    }

    v60 = *(v0 + 304);
    v59 = *(v0 + 312);
    v61 = *(v0 + 288);
    v62 = *(v0 + 296);
    v63 = *(v0 + 272);
    v64 = *(v0 + 240);

    sub_10000B90C(v24, v23);
    v77(v63, v64);
    v65 = *(v62 + 8);
    v65(v60, v61);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v65(v59, v61);

    v66 = *(v0 + 8);

    return v66(v74, v73, v72, v71);
  }
}

uint64_t sub_1005BC270()
{
  v1 = v0[40];
  v2 = v0[38];
  v3 = v0[36];
  v4 = v0[37];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[30];
  v8 = v0[31];

  v9 = *(v8 + 8);
  v9(v6, v7);
  v9(v5, v7);
  v10 = *(v4 + 8);
  (v10)(v2, v3);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v12 = v0[22];
  v11 = v0[23];
  v25 = v0[21];
  v13 = v0[17];
  v10();
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v14 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1006BF520;
  v17 = v16 + v15;
  v18 = (v17 + v14[14]);
  v19 = enum case for DIPError.PropertyKey.conversationID(_:);
  v20 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v20 - 8) + 104))(v17, v19, v20);
  v21 = *(v13 + 24);
  v22 = *(v13 + 32);
  v18[3] = &type metadata for String;
  v18[4] = &protocol witness table for String;
  *v18 = v21;
  v18[1] = v22;
  swift_errorRetain();

  sub_10003C9C0(v16);
  swift_setDeallocating();
  sub_10000BE18(v17, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  (*(v12 + 104))(v11, enum case for DIPError.Code.internalError(_:), v25);
  type metadata accessor for DIPError();
  sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v23 = v0[1];

  return v23();
}

uint64_t sub_1005BC660()
{
  v1[7] = v0;
  sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_1005BC7D8, 0, 0);
}

uint64_t sub_1005BC7D8(uint64_t a1)
{
  v2 = v1[16];
  v4 = v1[14];
  v3 = v1[15];
  v5 = v1[12];
  v6 = v1[13];
  v7 = v1[7];
  Date.init()();
  static Date.- infix(_:_:)();
  v8 = *(v4 + 8);
  v1[18] = v8;
  v1[19] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v2, v6);
  Date.init()();
  static Date.+ infix(_:_:)();
  v8(v3, v6);
  v9 = *(v7 + 16);
  os_unfair_lock_lock(v9 + 14);
  sub_100020260(&v9[4], (v1 + 2));
  os_unfair_lock_unlock(v9 + 14);
  sub_10000BA08(v1 + 2, v1[5]);
  sub_1005A4C70(v5);
  sub_10000BB78(v1 + 2);
  if (qword_100832D20 != -1)
  {
    swift_once();
  }

  v10 = v1[16];
  v11 = v1[13];
  v12 = v1[14];
  v14 = v1[8];
  v13 = v1[9];
  v23 = qword_100882498;
  v15 = *(v12 + 16);
  v15(v13, v1[17], v11);
  v16 = *(v12 + 56);
  v16(v13, 0, 1, v11);
  v15(v14, v10, v11);
  v16(v14, 0, 1, v11);

  v17 = swift_task_alloc();
  v1[20] = v17;
  *v17 = v1;
  v17[1] = sub_1005BCA38;
  v18 = v1[12];
  v20 = v1[8];
  v19 = v1[9];
  v21 = v1[7];

  return sub_100607FB4(v18, 1, v19, v20, v23, v21);
}

uint64_t sub_1005BCA38()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);

  sub_10000BE18(v2, &unk_100849400, &unk_1006BFBB0);
  sub_10000BE18(v1, &unk_100849400, &unk_1006BFBB0);

  return _swift_task_switch(sub_1005BCBB0, 0, 0);
}

uint64_t sub_1005BCBB0()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[13];
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1(v2, v4);
  v1(v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1005BCC9C(uint64_t a1)
{
  v1[136] = a1;
  v2 = type metadata accessor for DIPError.Code();
  v1[137] = v2;
  v1[138] = *(v2 - 8);
  v1[139] = swift_task_alloc();
  v3 = type metadata accessor for DIPError();
  v1[140] = v3;
  v1[141] = *(v3 - 8);
  v1[142] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[143] = v4;
  v1[144] = *(v4 - 8);
  v1[145] = swift_task_alloc();
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();

  return _swift_task_switch(sub_1005BCE2C, 0, 0);
}

uint64_t sub_1005BCE2C(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Refreshing configuration cache", v4, 2u);
  }

  v5 = v1[147];
  v6 = v1[144];
  v7 = v1[143];

  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v1[148] = v8;
  *v8 = v1;
  v8[1] = sub_1005BCF6C;

  return sub_1005B16AC((v1 + 2), 1);
}

uint64_t sub_1005BCF6C()
{
  v2 = *v1;
  v3 = *v1;
  v3[149] = v0;
  v60 = v2[2];
  v58 = v2[3];
  v54 = v2[4];
  v52 = v2[5];
  v4 = v3[6];
  v5 = v3[7];
  v47 = v2[8];
  v6 = v3[9];
  v43 = v2[10];
  v41 = v2[11];
  v56 = *(v3 + 7);
  v57 = *(v3 + 6);
  v32 = v2[16];
  v59 = v2[17];
  v55 = v2[18];
  v53 = v2[19];
  v51 = v2[20];
  v50 = v2[21];
  v49 = v2[22];
  v48 = *(v3 + 184);
  v46 = v2[24];
  v45 = *(v3 + 200);
  v44 = v2[26];
  v42 = v2[27];
  v40 = v2[28];
  v39 = *(v3 + 232);
  v38 = v2[30];
  v37 = *(v3 + 248);
  v36 = v2[32];
  v33 = *(v3 + 264);
  v31 = v2[34];
  v28 = *(v3 + 280);
  v27 = v2[36];
  v29 = *(v3 + 20);
  v30 = *(v3 + 19);
  v34 = *(v3 + 22);
  v35 = *(v3 + 21);
  v7 = *(v3 + 296);
  v26 = v2[46];
  v25 = *(v3 + 376);
  v24 = v2[48];
  v23 = *(v3 + 392);
  v8 = *(v3 + 393);
  v9 = v2[50];
  v10 = *(v3 + 408);
  v11 = v2[52];
  v21 = *(v3 + 59);
  v22 = *(v3 + 61);
  v19 = *(v3 + 67);
  v20 = *(v3 + 63);
  v16 = *(v3 + 28);
  v17 = *(v3 + 27);
  v18 = *(v3 + 65);
  v12 = *(v3 + 424);
  v13 = *(v3 + 464);

  if (v0)
  {
    v14 = sub_1005BD674;
  }

  else
  {
    v3[69] = v60;
    v3[70] = v58;
    v3[71] = v54;
    v3[72] = v52;
    v3[75] = v47;
    v3[77] = v43;
    v3[78] = v41;
    v3[83] = v32;
    *(v3 + 79) = v57;
    *(v3 + 81) = v56;
    v3[73] = v4;
    v3[74] = v5;
    v3[76] = v6;
    v3[84] = v59;
    v3[85] = v55;
    v3[86] = v53;
    v3[87] = v51;
    v3[88] = v50;
    v3[89] = v49;
    *(v3 + 720) = v48;
    v3[91] = v46;
    *(v3 + 736) = v45;
    v3[93] = v44;
    v3[94] = v42;
    v3[95] = v40;
    *(v3 + 768) = v39;
    v3[97] = v38;
    *(v3 + 784) = v37;
    v3[99] = v36;
    *(v3 + 800) = v33;
    v3[101] = v31;
    *(v3 + 816) = v28;
    v3[103] = v27;
    *(v3 + 832) = v7;
    *(v3 + 105) = v30;
    *(v3 + 107) = v29;
    *(v3 + 109) = v35;
    *(v3 + 111) = v34;
    v3[113] = v26;
    *(v3 + 912) = v25;
    v3[115] = v24;
    *(v3 + 928) = v23;
    *(v3 + 929) = v8;
    v3[117] = v9;
    *(v3 + 944) = v10;
    v3[119] = v11;
    *(v3 + 960) = v12;
    *(v3 + 121) = v17;
    *(v3 + 123) = v16;
    *(v3 + 1000) = v13;
    *(v3 + 63) = v21;
    *(v3 + 64) = v22;
    *(v3 + 65) = v20;
    *(v3 + 66) = v18;
    *(v3 + 67) = v19;
    sub_10000BE18((v3 + 69), &qword_100842B48, &unk_1006DFD30);
    v14 = sub_1005BD540;
  }

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_1005BD540(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Done refreshing configuration cache", v4, 2u);
  }

  v5 = v1[146];
  v6 = v1[144];
  v7 = v1[143];

  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8();
}

uint64_t sub_1005BD674()
{
  v1 = v0[145];
  v2 = v0[144];
  v9 = v0[143];
  v3 = v0[142];
  v4 = v0[141];
  v5 = v0[140];
  (*(v0[138] + 104))(v0[139], enum case for DIPError.Code.internalError(_:), v0[137]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_1005BE2D4(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v4 + 16))(v6, v3, v5);
  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v2 + 8))(v1, v9);
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005BD8C4(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "resetting attributeConfigs", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);
  v10 = *(v2 + 56);
  os_unfair_lock_lock(v10 + 126);
  memcpy(v33, &v10[4], sizeof(v33));
  sub_10000BBC4(v33, v40, &qword_100839998, &qword_1006DCAA0);
  os_unfair_lock_unlock(v10 + 126);
  memcpy(v32, v33, sizeof(v32));
  v30 = *&v33[464];
  v11 = *&v33[456];
  v31 = *&v33[480];
  memcpy(v34, v33, sizeof(v34));
  v36 = *&v33[464];
  v37 = *&v33[480];
  v35 = *&v33[456];
  if (sub_1000A257C(v34) == 1)
  {
    v12 = memcpy(v40, v32, sizeof(v40));
    v41 = v11;
    v42 = v30;
    v43 = v31;
    __chkstk_darwin(v12);
    *(&v20 - 2) = v40;
    os_unfair_lock_lock(v10 + 126);
    sub_1005BE508(&v10[4]);
    os_unfair_lock_unlock(v10 + 126);
    memcpy(v38, v32, 0x1C8uLL);
    *v39 = v30;
    v38[57] = v11;
    *&v39[16] = v31;
    v13 = v38;
  }

  else
  {

    v14 = memcpy(v40, v32, sizeof(v40));
    v41 = 0;
    v42 = v30;
    v43 = v31;
    __chkstk_darwin(v14);
    *(&v20 - 2) = v40;
    os_unfair_lock_lock(v10 + 126);
    sub_1005BE160(&v10[4]);
    os_unfair_lock_unlock(v10 + 126);
    v13 = v40;
  }

  sub_10000BE18(v13, &qword_100839998, &qword_1006DCAA0);
  os_unfair_lock_lock(v10 + 126);
  memcpy(v26, &v10[4], sizeof(v26));
  sub_10000BBC4(v26, v38, &qword_100839998, &qword_1006DCAA0);
  os_unfair_lock_unlock(v10 + 126);
  memcpy(v25, v26, sizeof(v25));
  v15 = v26[58];
  v24 = *&v26[59];
  memcpy(v27, v26, sizeof(v27));
  v29 = *&v26[59];
  v28 = v26[58];
  if (sub_1000A257C(v27) == 1)
  {
    v16 = memcpy(v38, v25, sizeof(v38));
    *v39 = v15;
    *&v39[8] = v24;
    __chkstk_darwin(v16);
    *(&v20 - 2) = v38;
    os_unfair_lock_lock(v10 + 126);
    sub_1005BE508(&v10[4]);
    os_unfair_lock_unlock(v10 + 126);
    memcpy(v21, v25, sizeof(v21));
    v22 = v15;
    v23 = v24;
    v17 = v21;
  }

  else
  {

    v18 = memcpy(v38, v25, sizeof(v38));
    *v39 = 0;
    *&v39[8] = v24;
    __chkstk_darwin(v18);
    *(&v20 - 2) = v38;
    os_unfair_lock_lock(v10 + 126);
    sub_1005BE508(&v10[4]);
    os_unfair_lock_unlock(v10 + 126);
    v17 = v38;
  }

  return sub_10000BE18(v17, &qword_100839998, &qword_1006DCAA0);
}

uint64_t sub_1005BDDDC()
{

  return swift_deallocClassInstance();
}

void *sub_1005BDE58(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DIPHTTPSession.Configuration(0);
  v7 = (v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = v25 - v11;
  v26[3] = &type metadata for BootstrapURLManager;
  v26[4] = &off_100818018;
  sub_100007224(&qword_100849070, &qword_1006E9278);
  v13 = swift_allocObject();
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0;
  a1[6] = v13;
  sub_1002C7378(v27);
  sub_100007224(&qword_100849078, &qword_1006E9280);
  v14 = swift_allocObject();
  *(v14 + 504) = 0;
  memcpy((v14 + 16), v27, 0x1E8uLL);
  a1[7] = v14;
  v15 = v7[8];
  *&v12[v15] = 0x3FF0000000000000;
  v16 = enum case for DIPBackoffStrategy.exponential(_:);
  v17 = type metadata accessor for DIPBackoffStrategy();
  (*(*(v17 - 8) + 104))(&v12[v15], v16, v17);
  *v12 = 0x403E000000000000;
  *(v12 + 1) = 3;
  v12[v7[9]] = 0;
  v12[v7[10]] = 0;
  v12[v7[11]] = 1;
  v18 = &v12[v7[12]];
  *v18 = 0;
  *(v18 + 1) = 0;
  sub_100007224(&qword_100849080, &unk_1006E9288);
  v19 = swift_allocObject();
  *(v19 + 56) = 0;
  sub_100020260(v26, v19 + 16);
  a1[2] = v19;
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v3 + 8))(v5, v2);
  a1[3] = v20;
  a1[4] = v22;
  sub_1002BEB48(v12, v10);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  type metadata accessor for DIPHTTPSession(0);
  swift_allocObject();
  v23 = sub_1005BE690(v25, v10);
  sub_10034CFA8(v12);
  sub_10000BB78(v26);
  a1[5] = v23;
  return a1;
}

uint64_t sub_1005BE178(void *__src)
{
  v3 = *(v1 + 16);
  memcpy(__dst, __src, sizeof(__dst));
  sub_10000BE18(__dst, &qword_100839998, &qword_1006DCAA0);
  memcpy(__src, v3, 0x1E8uLL);
  return sub_10000BBC4(v3, &v5, &qword_100839998, &qword_1006DCAA0);
}

double sub_1005BE210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1005BE274(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1005BE2D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005BE31C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100041F04;

  return sub_1005B85F4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1005BE410(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1005BE470(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005BE4C4(void *a1)
{
  v3 = *(v1 + 16);
  sub_10000BB78(a1);
  return sub_100020260(v3, a1);
}

uint64_t sub_1005BE520()
{
  v0 = type metadata accessor for Logger();
  sub_100031898(v0, qword_1008490C0);
  sub_10003170C(v0, qword_1008490C0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1005BE5B0(uint64_t a1, uint64_t *a2, char a3)
{
  v5 = type metadata accessor for DIPHTTPSession.Configuration(0);
  sub_100031898(v5, a2);
  v6 = sub_10003170C(v5, a2);
  v7 = v5[6];
  *&v6[v7] = 0x3FE0000000000000;
  v8 = enum case for DIPBackoffStrategy.exponential(_:);
  v9 = type metadata accessor for DIPBackoffStrategy();
  result = (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  *v6 = 0x404E000000000000;
  *(v6 + 1) = 3;
  v6[v5[7]] = a3;
  v6[v5[8]] = 1;
  v6[v5[9]] = 0;
  v11 = &v6[v5[10]];
  *v11 = 0;
  *(v11 + 1) = 0;
  return result;
}

uint64_t sub_1005BE690(void *a1, double *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v41 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPBackoffStrategy();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DIPRetrier();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  sub_100020260(a1, v3 + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager);
  sub_1002BEB48(a2, v3 + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_configuration);
  v16 = type metadata accessor for DIPHTTPSession.Configuration(0);
  (*(v9 + 16))(v11, a2 + v16[6], v8);
  DIPRetrier.init(maxRetries:backoffStrategy:)();
  (*(v13 + 32))(v3 + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_retrier, v15, v12);
  v17 = objc_opt_self();
  v18 = [v17 defaultSessionConfiguration];
  v19 = [v17 defaultSessionConfiguration];
  v20 = *a2;
  [v18 setTimeoutIntervalForRequest:*a2];
  [v19 setTimeoutIntervalForRequest:v20];
  [v18 setURLCache:0];
  [v19 setURLCache:0];
  [v18 setRequestCachePolicy:1];
  [v19 setRequestCachePolicy:1];
  v21 = (a2 + v16[10]);
  v22 = v21[1];
  if (v22)
  {
    v37 = v3;
    v23 = *v21;
    defaultLogger()();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42 = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_100141FE4(v23, v22, &v42);
      _os_log_impl(&_mh_execute_header, v24, v25, "DIPHTTPSession using source bundle identifier %{public}s", v26, 0xCu);
      sub_10000BB78(v27);
    }

    (*(v38 + 8))(v41, v39);
    v28 = String._bridgeToObjectiveC()();
    [v18 set_sourceApplicationBundleIdentifier:v28];

    v29 = String._bridgeToObjectiveC()();
    [v19 set_sourceApplicationBundleIdentifier:v29];

    v3 = v37;
  }

  if (*(a2 + v16[8]) == 1)
  {
    v30 = [objc_opt_self() mainBundle];
    v31 = [v30 bundleIdentifier];

    v32 = [objc_allocWithZone(AKAppleIDSession) initWithIdentifier:v31];
    [v18 set_appleIDContext:v32];
  }

  v33 = [objc_allocWithZone(type metadata accessor for DIPHTTPSessionTaskDelegate()) init];
  v34 = objc_opt_self();
  *(v3 + 16) = [v34 sessionWithConfiguration:v18 delegate:v33 delegateQueue:0];
  v35 = [v34 sessionWithConfiguration:v19 delegate:v33 delegateQueue:0];

  sub_10000BB78(v40);
  sub_10034CFA8(a2);
  *(v3 + 24) = v35;
  return v3;
}

uint64_t sub_1005BEC04()
{
  [*(v0 + 16) invalidateAndCancel];
  [*(v0 + 24) invalidateAndCancel];

  sub_10034CFA8(v0 + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_configuration);
  v1 = OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_retrier;
  v2 = type metadata accessor for DIPRetrier();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000BB78((v0 + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager));

  return swift_deallocClassInstance();
}

uint64_t sub_1005BED14(uint64_t a1)
{
  result = type metadata accessor for DIPHTTPSession.Configuration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DIPRetrier();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_1005BEE18(void *a1)
{
  v146 = a1;
  v2 = type metadata accessor for URLRequest();
  v144 = *(v2 - 1);
  v145 = v2;
  __chkstk_darwin(v2);
  v4 = &v130 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  __chkstk_darwin(v5 - 8);
  v141 = &v130 - v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v142 = v7;
  v143 = v8;
  v9 = __chkstk_darwin(v7);
  v136 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v137 = &v130 - v11;
  v12 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v138 = &v130 - v17;
  v18 = __chkstk_darwin(v16);
  v139 = &v130 - v19;
  v20 = __chkstk_darwin(v18);
  v133 = &v130 - v21;
  v22 = __chkstk_darwin(v20);
  v134 = &v130 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v130 - v25;
  __chkstk_darwin(v24);
  v28 = &v130 - v27;
  v29 = type metadata accessor for Logger();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = &v130 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v31);
  v140 = &v130 - v35;
  v36 = __chkstk_darwin(v34);
  v135 = &v130 - v37;
  __chkstk_darwin(v36);
  v39 = &v130 - v38;
  v40 = v1 + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_configuration;
  if (*(v40 + *(type metadata accessor for DIPHTTPSession.Configuration(0) + 36)) != 1)
  {
    return 0;
  }

  v131 = v29;
  v132 = v30;
  v41 = objc_opt_self();
  v42 = [v41 standardUserDefaults];
  v43._countAndFlagsBits = static DaemonInternalDefaultsKeys.neverUseCache.getter();
  v44 = NSUserDefaults.internalBool(forKey:)(v43);

  if (v44)
  {
    return 0;
  }

  v46 = URLRequest.httpMethod.getter();
  if (!v47)
  {
    return 0;
  }

  if (v46 == 5522759 && v47 == 0xE300000000000000)
  {
  }

  else
  {
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v48 & 1) == 0)
    {
      return 0;
    }
  }

  if (qword_100832D20 != -1)
  {
    swift_once();
  }

  v49 = v146;
  v50 = sub_1005FEBE8(v146);
  v51 = v132;
  if (!v50)
  {
    defaultLogger()();
    v64 = v144;
    v63 = v145;
    (*(v144 + 16))(v4, v49, v145);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v149[0] = v146;
      *v67 = 136315138;
      URLRequest.url.getter();
      v68 = type metadata accessor for URL();
      v69 = *(v68 - 8);
      if ((*(v69 + 48))(v15, 1, v68) == 1)
      {
        sub_10000BE18(v15, &unk_100844540, &unk_1006BFBC0);
        v70 = 0;
        v71 = 0xE000000000000000;
      }

      else
      {
        v70 = URL.absoluteString.getter();
        v71 = v108;
        (*(v69 + 8))(v15, v68);
      }

      (*(v144 + 8))(v4, v145);
      v109 = sub_100141FE4(v70, v71, v149);

      *(v67 + 4) = v109;
      _os_log_impl(&_mh_execute_header, v65, v66, "Nothing is in the cache for %s", v67, 0xCu);
      sub_10000BB78(v146);

      (*(v132 + 8))(v33, v131);
    }

    else
    {

      (*(v64 + 8))(v4, v63);
      (*(v51 + 8))(v33, v131);
    }

    return 0;
  }

  v146 = v50;
  v52 = [v41 standardUserDefaults];
  v53._countAndFlagsBits = static DaemonInternalDefaultsKeys.alwaysUseCache.getter();
  v54 = NSUserDefaults.internalBool(forKey:)(v53);

  if (v54)
  {
    defaultLogger()();
    v55 = v146;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v149[0] = v59;
      *v58 = 136315138;
      v60 = [v55 response];
      v61 = [v60 URL];

      if (v61)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v62 = 0;
      }

      else
      {
        v62 = 1;
      }

      v110 = type metadata accessor for URL();
      v111 = *(v110 - 8);
      (*(v111 + 56))(v26, v62, 1, v110);
      sub_1000B1FC8(v26, v28, &unk_100844540, &unk_1006BFBC0);
      if ((*(v111 + 48))(v28, 1, v110) == 1)
      {
        v112 = 0x3E6C696E3CLL;
        sub_10000BE18(v28, &unk_100844540, &unk_1006BFBC0);
        v113 = 0xE500000000000000;
      }

      else
      {
        v112 = URL.absoluteString.getter();
        v113 = v114;
        (*(v111 + 8))(v28, v110);
      }

      v115 = sub_100141FE4(v112, v113, v149);

      *(v58 + 4) = v115;
      _os_log_impl(&_mh_execute_header, v56, v57, "Using cached response for %s due to user defaults setting", v58, 0xCu);
      sub_10000BB78(v59);

      (*(v132 + 8))(v39, v131);
    }

    else
    {

      (*(v51 + 8))(v39, v131);
    }

    return v146;
  }

  v72 = [v146 userInfo];
  if (!v72)
  {
    v150 = 0u;
    v151 = 0u;
    v76 = v142;
    v75 = v143;
    goto LABEL_33;
  }

  v73 = v72;
  v74 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v147 = 0x4173657269707865;
  v148 = 0xE900000000000074;
  AnyHashable.init<A>(_:)();
  v76 = v142;
  v75 = v143;
  if (!*(v74 + 16) || (v77 = sub_10003AECC(v149), (v78 & 1) == 0))
  {

    sub_1000279C8(v149);
    v150 = 0u;
    v151 = 0u;
LABEL_33:
    v79 = v141;
    goto LABEL_34;
  }

  sub_10001F2EC(*(v74 + 56) + 32 * v77, &v150);
  sub_1000279C8(v149);

  v79 = v141;
  if (!*(&v151 + 1))
  {
LABEL_34:
    sub_10000BE18(&v150, &unk_100845ED0, &qword_1006DA1D0);
    (*(v75 + 56))(v79, 1, 1, v76);
    goto LABEL_35;
  }

  v80 = swift_dynamicCast();
  (*(v75 + 56))(v79, v80 ^ 1u, 1, v76);
  if ((*(v75 + 48))(v79, 1, v76) == 1)
  {
LABEL_35:
    sub_10000BE18(v79, &unk_100849400, &unk_1006BFBB0);
    goto LABEL_36;
  }

  v81 = v137;
  (*(v75 + 32))(v137, v79, v76);
  v82 = v136;
  Date.init()();
  v83 = static Date.> infix(_:_:)();
  v86 = *(v75 + 8);
  v84 = v75 + 8;
  v85 = v86;
  v86(v82, v76);
  if (v83)
  {
    v87 = v135;
    defaultLogger()();
    v88 = v146;
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v149[0] = v145;
      *v91 = 136446210;
      v92 = [v88 response];
      v93 = [v92 URL];

      if (v93)
      {
        v94 = v133;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v95 = 0;
      }

      else
      {
        v95 = 1;
        v94 = v133;
      }

      v143 = v84;
      v122 = type metadata accessor for URL();
      v123 = *(v122 - 8);
      (*(v123 + 56))(v94, v95, 1, v122);
      v124 = v134;
      sub_1000B1FC8(v94, v134, &unk_100844540, &unk_1006BFBC0);
      if ((*(v123 + 48))(v124, 1, v122) == 1)
      {
        v125 = 0x3E6C696E3CLL;
        sub_10000BE18(v124, &unk_100844540, &unk_1006BFBC0);
        v126 = 0xE500000000000000;
      }

      else
      {
        v125 = URL.absoluteString.getter();
        v127 = v124;
        v126 = v128;
        (*(v123 + 8))(v127, v122);
      }

      v129 = sub_100141FE4(v125, v126, v149);

      *(v91 + 4) = v129;
      _os_log_impl(&_mh_execute_header, v89, v90, "Found cached response for %{public}s", v91, 0xCu);
      sub_10000BB78(v145);

      (*(v132 + 8))(v135, v131);
      v85(v137, v76);
    }

    else
    {

      (*(v51 + 8))(v87, v131);
      v85(v81, v76);
    }

    return v146;
  }

  v85(v81, v76);
LABEL_36:
  v96 = v140;
  defaultLogger()();
  v97 = v146;
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.info.getter();

  v100 = os_log_type_enabled(v98, v99);
  v101 = v138;
  v102 = v139;
  if (v100)
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v149[0] = v104;
    *v103 = 136446210;
    v105 = [v97 response];
    v106 = [v105 URL];

    if (v106)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v107 = 0;
    }

    else
    {
      v107 = 1;
    }

    v116 = type metadata accessor for URL();
    v117 = *(v116 - 8);
    (*(v117 + 56))(v101, v107, 1, v116);
    sub_1000B1FC8(v101, v102, &unk_100844540, &unk_1006BFBC0);
    if ((*(v117 + 48))(v102, 1, v116) == 1)
    {
      v118 = 0x3E6C696E3CLL;
      sub_10000BE18(v102, &unk_100844540, &unk_1006BFBC0);
      v119 = 0xE500000000000000;
    }

    else
    {
      v118 = URL.absoluteString.getter();
      v119 = v120;
      (*(v117 + 8))(v102, v116);
    }

    v121 = sub_100141FE4(v118, v119, v149);

    *(v103 + 4) = v121;
    _os_log_impl(&_mh_execute_header, v98, v99, "Cached response is expired, fetching new response for %{public}s", v103, 0xCu);
    sub_10000BB78(v104);

    (*(v132 + 8))(v96, v131);
  }

  else
  {

    (*(v51 + 8))(v96, v131);
  }

  return v146;
}

uint64_t sub_1005BFF98(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 168) = a5;
  *(v6 + 176) = a6;
  *(v6 + 492) = a4;
  *(v6 + 152) = a2;
  *(v6 + 160) = a3;
  *(v6 + 144) = a1;
  v8 = type metadata accessor for Logger();
  *(v6 + 184) = v8;
  *(v6 + 192) = *(v8 - 8);
  *(v6 + 200) = swift_task_alloc();
  sub_100007224(&unk_1008493D0, &unk_1006E93F0);
  *(v6 + 208) = swift_task_alloc();
  v9 = type metadata accessor for URLError();
  *(v6 + 216) = v9;
  *(v6 + 224) = *(v9 - 8);
  *(v6 + 232) = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  *(v6 + 240) = v10;
  *(v6 + 248) = *(v10 - 8);
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  v11 = type metadata accessor for URLError.Code();
  *(v6 + 272) = v11;
  *(v6 + 280) = *(v11 - 8);
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  *(v6 + 304) = swift_task_alloc();
  v12 = type metadata accessor for DIPError();
  *(v6 + 312) = v12;
  *(v6 + 320) = *(v12 - 8);
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();
  v13 = type metadata accessor for URLRequest();
  *(v6 + 344) = v13;
  *(v6 + 352) = *(v13 - 8);
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();

  return _swift_task_switch(sub_1005C02D4, a2, 0);
}

uint64_t sub_1005C02D4()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v4 = *(v0 + 152);
  v5 = OBJC_IVAR____TtCFC8coreidvd14DIPHTTPSession14performRequestFzZTV10Foundation10URLRequest21acceptableStatusCodesGSaSi_11ignoreCacheSb11isAnonymousSb17overridingAltDSIDGSqSS__TVS1_4DataCSo13NSURLResponseSb_L_16RequestContainer_request;
  *(v0 + 376) = OBJC_IVAR____TtCFC8coreidvd14DIPHTTPSession14performRequestFzZTV10Foundation10URLRequest21acceptableStatusCodesGSaSi_11ignoreCacheSb11isAnonymousSb17overridingAltDSIDGSqSS__TVS1_4DataCSo13NSURLResponseSb_L_16RequestContainer_request;
  swift_beginAccess();
  v6 = *(v3 + 16);
  *(v0 + 384) = v6;
  *(v0 + 392) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  v7 = swift_task_alloc();
  *(v0 + 400) = v7;
  *v7 = v0;
  v7[1] = sub_1005C03D4;
  v8 = *(v0 + 368);
  v9 = *(v0 + 492);

  return sub_1005C1F00(v8, v9);
}

uint64_t sub_1005C03D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[51] = a1;
  v5[52] = a2;
  v5[53] = a3;
  v5[54] = v3;

  if (v3)
  {
    v6 = sub_1005C1124;
  }

  else
  {
    v6 = sub_1005C04EC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005C04EC()
{
  v1 = *(v0 + 432);
  sub_1005C4570(*(v0 + 424), *(v0 + 168));
  *(v0 + 440) = v1;
  v2 = *(v0 + 424);
  if (!v1)
  {
    v16 = *(v0 + 408);
    v15 = *(v0 + 416);
    v17 = *(v0 + 144);
    (*(*(v0 + 352) + 8))(*(v0 + 368), *(v0 + 344));

    *v17 = v16;
    *(v17 + 8) = v15;
    *(v17 + 16) = v2;
    *(v17 + 24) = 0;
LABEL_15:
    v49 = &enum case for DIPRetrier.RetryResult.success<A>(_:);
LABEL_34:
    v89 = *v49;
    v90 = sub_100007224(&qword_1008493E0, &unk_1006E9410);
    (*(*(v90 - 8) + 104))(v17, v89, v90);
    goto LABEL_35;
  }

  v3 = *(v0 + 304);

  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v4 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006BF520;
  v7 = v6 + v5;
  v8 = (v6 + v5 + v4[14]);
  v9 = enum case for DIPError.PropertyKey.serverURL(_:);
  v10 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v10 - 8) + 104))(v6 + v5, v9, v10);
  URLRequest.url.getter();
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v3, 1, v11);
  v14 = *(v0 + 304);
  if (v13 == 1)
  {
    sub_10000BE18(*(v0 + 304), &unk_100844540, &unk_1006BFBC0);
    v8[3] = &type metadata for String;
    v8[4] = &protocol witness table for String;
    *v8 = 0;
    v8[1] = 0xE000000000000000;
  }

  else
  {
    *(v0 + 40) = v11;
    *(v0 + 48) = sub_1005C5020(&qword_1008418B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v18 = sub_100032DBC((v0 + 16));
    (*(v12 + 32))(v18, v14, v11);
    sub_10001F358((v0 + 16), v8);
  }

  v19 = *(v0 + 256);
  v20 = *(v0 + 264);
  v22 = *(v0 + 240);
  v21 = *(v0 + 248);
  sub_10003C9C0(v6);
  swift_setDeallocating();
  sub_10000BE18(v7, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  v23 = enum case for DIPError.Code.internalError(_:);
  *(v0 + 488) = enum case for DIPError.Code.internalError(_:);
  v24 = *(v21 + 104);
  *(v0 + 448) = v24;
  *(v0 + 456) = (v21 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v105 = v23;
  v103 = v24;
  v24(v20);
  swift_errorRetain();
  v94 = 0x8000000100723DD0;
  v95 = 301;
  v93 = 0xD000000000000052;
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  DIPError.code.getter();
  v25 = (*(v21 + 88))(v19, v22);
  if (v25 == enum case for DIPError.Code.httpNotModified(_:))
  {
    v26 = *(v0 + 176);
    if (v26)
    {
      v27 = v26;
      defaultLogger()();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Server indicated cached response has not been modified; reusing cached response", v30, 2u);
      }

      v31 = *(v0 + 192);
      v32 = *(v0 + 200);
      v33 = *(v0 + 184);

      (*(v31 + 8))(v32, v33);
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v34 = qword_100882498;
      v35 = v27;
      v36 = sub_100600EC4(v27, 0, 1);
      if (v36)
      {
        v37 = v36;
        isa = URLRequest._bridgeToObjectiveC()().super.isa;
        v39 = type metadata accessor for DIPURLCache();
        *(v0 + 104) = v34;
        *(v0 + 112) = v39;
        objc_msgSendSuper2((v0 + 104), "storeCachedResponse:forRequest:", v37, isa, 0xD000000000000052, 0x8000000100723DD0, 301);
      }

      v40 = *(v0 + 424);
      v104 = *(v0 + 416);
      v41 = *(v0 + 408);
      v42 = *(v0 + 352);
      v110 = *(v0 + 344);
      v113 = *(v0 + 368);
      v43 = *(v0 + 320);
      v106 = *(v0 + 312);
      v108 = *(v0 + 336);
      v17 = *(v0 + 144);
      v44 = [v35 data];
      v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v48 = [v35 response];
      sub_10000B90C(v41, v104);

      (*(v43 + 8))(v108, v106);
      (*(v42 + 8))(v113, v110);
      *v17 = v45;
      *(v17 + 8) = v47;
      *(v17 + 16) = v48;
      *(v17 + 24) = 1;
      goto LABEL_15;
    }

    v101 = *(v0 + 416);
    v99 = *(v0 + 424);
    v100 = *(v0 + 408);
    v116 = *(v0 + 368);
    v81 = *(v0 + 352);
    v102 = *(v0 + 344);
    v82 = *(v0 + 336);
    v97 = *(v0 + 328);
    v98 = v82;
    v84 = *(v0 + 312);
    v83 = *(v0 + 320);
    v85 = *(v0 + 264);
    v96 = *(v0 + 240);
    v17 = *(v0 + 144);
    sub_1005C5020(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    (*(v83 + 16))(v86, v82, v84);
    v103(v85, v105, v96);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v87 = swift_allocError();
    (*(v83 + 32))(v88, v97, v84);

    sub_10000B90C(v100, v101);

    (*(v83 + 8))(v98, v84);
    (*(v81 + 8))(v116, v102);
    *v17 = v87;
LABEL_33:
    *(v17 + 8) = 0;
    *(v17 + 16) = 1;
    v49 = &enum case for DIPRetrier.RetryResult.retry<A>(_:);
    goto LABEL_34;
  }

  if (v25 != enum case for DIPError.Code.httpUnauthorized(_:) && v25 != enum case for DIPError.Code.httpAuthKitReprovision(_:) && v25 != enum case for DIPError.Code.httpAuthKitResync(_:))
  {
    v50 = *(v0 + 416);
    v51 = *(v0 + 424);
    v52 = *(v0 + 408);
    v53 = *(v0 + 352);
    v111 = *(v0 + 344);
    v114 = *(v0 + 368);
    v54 = *(v0 + 336);
    v56 = *(v0 + 312);
    v55 = *(v0 + 320);
    v109 = *(v0 + 144);
    v107 = enum case for DIPError.Code.httpInternalServerError(_:);
    v57 = v25;
    sub_1005C5020(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v58 = swift_allocError();
    (*(v55 + 32))(v59, v54, v56);

    sub_10000B90C(v52, v50);

    (*(v53 + 8))(v114, v111);
    *v109 = v58;
    if (v57 != v107 && v57 != enum case for DIPError.Code.httpNotImplemented(_:) && v57 != enum case for DIPError.Code.httpBadGateway(_:) && v57 != enum case for DIPError.Code.httpServiceUnavailable(_:) && v57 != enum case for DIPError.Code.httpGatewayTimeout(_:))
    {
      v61 = *(v0 + 248);
      v60 = *(v0 + 256);
      v62 = *(v0 + 240);
      v63 = *(v0 + 144);
      v64 = enum case for DIPRetrier.RetryResult.failure<A>(_:);
      v65 = sub_100007224(&qword_1008493E0, &unk_1006E9410);
      (*(*(v65 - 8) + 104))(v63, v64, v65);
      (*(v61 + 8))(v60, v62);
LABEL_35:

      v91 = *(v0 + 8);

      return v91();
    }

    v17 = *(v0 + 144);
    goto LABEL_33;
  }

  if ((*(v0 + 492) & 1) != 0 || (v66 = *(v0 + 160), v67 = v66 + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_configuration, *(v67 + *(type metadata accessor for DIPHTTPSession.Configuration(0) + 28)) != 1))
  {
    v72 = *(v0 + 416);
    v73 = *(v0 + 424);
    v74 = *(v0 + 408);
    v75 = *(v0 + 352);
    v112 = *(v0 + 344);
    v115 = *(v0 + 368);
    v76 = *(v0 + 336);
    v78 = *(v0 + 312);
    v77 = *(v0 + 320);
    v17 = *(v0 + 144);
    sub_1005C5020(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v79 = swift_allocError();
    (*(v77 + 32))(v80, v76, v78);

    sub_10000B90C(v74, v72);

    (*(v75 + 8))(v115, v112);
    *v17 = v79;
    v49 = &enum case for DIPRetrier.RetryResult.failure<A>(_:);
    goto LABEL_34;
  }

  v68 = OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager;
  *(v0 + 464) = OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager;
  v69 = *(v66 + v68 + 24);
  v70 = *(v66 + v68 + 32);
  sub_10000BA08((v66 + v68), v69);
  v71 = swift_task_alloc();
  *(v0 + 472) = v71;
  *v71 = v0;
  v71[1] = sub_1005C174C;

  return dispatch thunk of DIPAccountManagerProtocol.renewGrandslamToken(_:)(0, 0, v69, v70);
}

uint64_t sub_1005C1124()
{
  v0[15] = v0[54];
  v1 = v0[28];
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v5 = v0[36];
    v4 = v0[37];
    v6 = v0[34];
    v7 = v0[35];
    v9 = v0[28];
    v8 = v0[29];
    v11 = v0[26];
    v10 = v0[27];
    v3(v11, 0, 1, v10);
    (*(v9 + 32))(v8, v11, v10);
    sub_1005C5020(&qword_1008493E8, &type metadata accessor for URLError, &protocol conformance descriptor for URLError);
    _BridgedStoredNSError.code.getter();
    static URLError.Code.networkConnectionLost.getter();
    sub_1005C5020(&unk_1008493F0, &type metadata accessor for URLError.Code, &protocol conformance descriptor for URLError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v12 = *(v7 + 8);
    v12(v5, v6);
    v12(v4, v6);
    if (v0[16] == v0[17])
    {
      v13 = URLRequest.httpMethod.getter();
      if (v14)
      {
        if (v13 == 5522759 && v14 == 0xE300000000000000)
        {

LABEL_9:
          v17 = v0[44];
          v34 = v0[43];
          v36 = v0[46];
          v18 = v0[40];
          v30 = v0[41];
          v31 = v0[39];
          v19 = v0[28];
          v32 = v0[27];
          v33 = v0[29];
          v20 = v0[18];
          (*(v0[31] + 104))(v0[33], enum case for DIPError.Code.networkTimeOut(_:), v0[30]);
          swift_errorRetain();
          sub_1000402AC(_swiftEmptyArrayStorage);
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          sub_1005C5020(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          v21 = swift_allocError();
          (*(v18 + 32))(v22, v30, v31);

          (*(v19 + 8))(v33, v32);
          (*(v17 + 8))(v36, v34);
          *v20 = v21;
          v23 = &enum case for DIPRetrier.RetryResult.failure<A>(_:);
          goto LABEL_12;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_9;
        }
      }
    }

    (*(v0[28] + 8))(v0[29], v0[27]);
  }

  else
  {
    v15 = v0[26];
    v3(v15, 1, 1, v0[27]);
    sub_10000BE18(v15, &unk_1008493D0, &unk_1006E93F0);
  }

  v24 = v0[44];
  v35 = v0[43];
  v37 = v0[46];
  v20 = v0[18];
  (*(v0[31] + 104))(v0[33], enum case for DIPError.Code.networkTimeOut(_:), v0[30]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_1005C5020(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v25 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

  (*(v24 + 8))(v37, v35);
  *v20 = v25;
  *(v20 + 8) = 0;
  *(v20 + 16) = 1;
  v23 = &enum case for DIPRetrier.RetryResult.retry<A>(_:);
LABEL_12:
  v26 = *v23;
  v27 = sub_100007224(&qword_1008493E0, &unk_1006E9410);
  (*(*(v27 - 8) + 104))(v20, v26, v27);

  v28 = v0[1];

  return v28();
}

uint64_t sub_1005C174C()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_1005C1C2C;
  }

  else
  {
    v2 = sub_1005C1860;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005C1860()
{
  v1 = *(v0 + 152);
  v2 = (*(v0 + 160) + *(v0 + 464));
  (*(v0 + 384))(*(v0 + 360), *(v0 + 368), *(v0 + 344));
  sub_10000BA08(v2, v2[3]);
  v3.value._countAndFlagsBits = dispatch thunk of DIPAccountManagerProtocol.appleAuthHeader(_:)();
  v4._countAndFlagsBits = 0x7A69726F68747541;
  v4._object = 0xED00006E6F697461;
  URLRequest.setValue(_:forHTTPHeaderField:)(v3, v4);

  return _swift_task_switch(sub_1005C194C, v1, 0);
}

uint64_t sub_1005C194C()
{
  v1 = v0[47];
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[43];
  v5 = v0[19];
  swift_beginAccess();
  (*(v3 + 24))(v5 + v1, v2, v4);
  swift_endAccess();

  return _swift_task_switch(sub_1005C1A04, 0, 0);
}

uint64_t sub_1005C1A04()
{
  v1 = v0[53];
  v16 = v0[52];
  v2 = v0[51];
  v17 = v0[45];
  v18 = v0[46];
  v3 = v0[43];
  v4 = v0[44];
  v5 = v0[42];
  v7 = v0[39];
  v6 = v0[40];
  v8 = v0[18];
  sub_1005C5020(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v9 = swift_allocError();
  (*(v6 + 32))(v10, v5, v7);

  sub_10000B90C(v2, v16);

  v11 = *(v4 + 8);
  v11(v17, v3);
  v11(v18, v3);
  *v8 = v9;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v12 = enum case for DIPRetrier.RetryResult.retry<A>(_:);
  v13 = sub_100007224(&qword_1008493E0, &unk_1006E9410);
  (*(*(v13 - 8) + 104))(v8, v12, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1005C1C2C()
{
  v11 = *(v0 + 416);
  v9 = *(v0 + 424);
  v10 = *(v0 + 408);
  v15 = *(v0 + 368);
  v1 = *(v0 + 352);
  v14 = *(v0 + 344);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  v12 = *(v0 + 144);
  v13 = *(v0 + 336);
  (*(v0 + 448))(*(v0 + 264), *(v0 + 488), *(v0 + 240));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_1005C5020(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  v4 = swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

  sub_10000B90C(v10, v11);

  (*(v3 + 8))(v13, v2);
  (*(v1 + 8))(v15, v14);
  *v12 = v4;
  v5 = enum case for DIPRetrier.RetryResult.failure<A>(_:);
  v6 = sub_100007224(&qword_1008493E0, &unk_1006E9410);
  (*(*(v6 - 8) + 104))(v12, v5, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1005C1F00(uint64_t a1, char a2)
{
  *(v3 + 136) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for DIPError.Code();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  *(v3 + 56) = swift_task_alloc();
  v5 = type metadata accessor for DIPSignpost();
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  *(v3 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_1005C204C, 0, 0);
}

uint64_t sub_1005C204C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 24);
  sub_1005C3B08(*(v0 + 16));
  v3 = 16;
  if (v1)
  {
    v3 = 24;
  }

  v4 = *(v2 + v3);
  *(v0 + 88) = v4;
  v4;
  static DaemonSignposts.webRequest.getter();
  DIPSignpost.init(_:)();
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_1005C213C;
  v6 = *(v0 + 16);

  return NSURLSession.data(for:delegate:)(v6, 0);
}

uint64_t sub_1005C213C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[13] = a1;
  v5[14] = a2;
  v5[15] = a3;
  v5[16] = v3;

  if (v3)
  {
    v6 = sub_1005C2524;
  }

  else
  {
    v6 = sub_1005C2254;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005C2254()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v4 = v0[13];
    v3 = v0[14];
    v5 = v0[10];
    v6 = v0[11];
    v7 = v0[8];
    v8 = v0[9];
    sub_10000B8B8(v4, v3);
    sub_1005C4094(v2, v4, v3);
    sub_10000B90C(v4, v3);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);

    (*(v8 + 8))(v5, v7);

    v9 = v0[1];
    v10 = v0[13];
    v11 = v0[14];

    return v9(v10, v11, v2);
  }

  else
  {
    v13 = v0[14];
    v14 = v0[15];
    v15 = v0[13];
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.serverResponseInconsistent(_:), v0[4]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1005C5020(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v15, v13);
    v16 = v0[10];
    v17 = v0[11];
    v18 = v0[8];
    v19 = v0[9];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);

    (*(v19 + 8))(v16, v18);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1005C2524()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);

  (*(v4 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

id sub_1005C25EC()
{
  result = sub_1005C2610();
  *&xmmword_100882478 = result;
  *(&xmmword_100882478 + 1) = v1;
  return result;
}

id sub_1005C2610()
{
  v0 = type metadata accessor for DeviceInformationProvider();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DeviceInformationProvider.init()();
  v58 = DeviceInformationProvider.productType.getter();
  v5 = v4;
  v6 = DeviceInformationProvider.productName.getter();
  v54 = v7;
  v55 = v6;
  v56 = DeviceInformationProvider.productVersion.getter();
  v9 = v8;
  v57._countAndFlagsBits = DeviceInformationProvider.buildVersion.getter();
  v57._object = v10;
  sub_1005C5068();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = objc_opt_self();
  result = [v12 bundleForClass:ObjCClassFromMetadata];
  if (!kCFBundleVersionKey)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = [result objectForInfoDictionaryKey:kCFBundleVersionKey];
  v47 = v9;
  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0;
    v62 = 0u;
  }

  v63 = v61;
  v64 = v62;
  v52 = v1;
  if (*(&v62 + 1))
  {
    if (swift_dynamicCast())
    {
      v16 = v59;
      v17 = v60;
      goto LABEL_10;
    }
  }

  else
  {
    sub_10000BE18(&v63, &unk_100845ED0, &qword_1006DA1D0);
  }

  v17 = 0xE300000000000000;
  v16 = 7104878;
LABEL_10:
  v49 = v16;
  v50 = v5;
  v53 = v0;
  v18 = [v14 bundleIdentifier];
  v51 = v14;
  if (v18)
  {
    v19 = v18;
    v48._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48._object = v20;
  }

  else
  {
    v48._object = 0xE300000000000000;
    v48._countAndFlagsBits = 7104878;
  }

  v21 = [v12 mainBundle];
  if ([v21 objectForInfoDictionaryKey:kCFBundleVersionKey])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0;
    v62 = 0u;
  }

  v63 = v61;
  v64 = v62;
  if (!*(&v62 + 1))
  {
    sub_10000BE18(&v63, &unk_100845ED0, &qword_1006DA1D0);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v24 = v47;
    v23 = 0xE300000000000000;
    v22 = 7104878;
    goto LABEL_21;
  }

  v22 = v59;
  v23 = v60;
  v24 = v47;
LABEL_21:
  v25 = [v21 bundleIdentifier];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v29 = 0xE300000000000000;
    v27 = 7104878;
  }

  v63._countAndFlagsBits = v55;
  v63._object = v54;
  v30._countAndFlagsBits = 59;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = v56;
  v31._object = v24;
  String.append(_:)(v31);

  v32._countAndFlagsBits = 59;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  String.append(_:)(v57);

  v33 = v63;
  v63 = v48;
  v34._countAndFlagsBits = 47;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);
  v35._countAndFlagsBits = v49;
  v35._object = v17;
  String.append(_:)(v35);

  v36._countAndFlagsBits = 10272;
  v36._object = 0xE200000000000000;
  String.append(_:)(v36);
  v37._countAndFlagsBits = v27;
  v37._object = v29;
  String.append(_:)(v37);

  v38._countAndFlagsBits = 47;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = v22;
  v39._object = v23;
  String.append(_:)(v39);

  v40._countAndFlagsBits = 41;
  v40._object = 0xE100000000000000;
  String.append(_:)(v40);
  v41 = v63;
  v63._countAndFlagsBits = 60;
  v63._object = 0xE100000000000000;
  v42._countAndFlagsBits = v58;
  v42._object = v50;
  String.append(_:)(v42);

  v43._countAndFlagsBits = 3940414;
  v43._object = 0xE300000000000000;
  String.append(_:)(v43);
  String.append(_:)(v33);

  v44._countAndFlagsBits = 3940414;
  v44._object = 0xE300000000000000;
  String.append(_:)(v44);
  String.append(_:)(v41);

  v45._countAndFlagsBits = 62;
  v45._object = 0xE100000000000000;
  String.append(_:)(v45);

  countAndFlagsBits = v63._countAndFlagsBits;
  (*(v52 + 8))(v3, v53);
  return countAndFlagsBits;
}

void sub_1005C2AE8(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_100007224(&qword_100849420, &qword_1006DA510);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v13 = v8;
LABEL_13:
    v14 = __clz(__rbit64(v6)) | (v13 << 6);
    sub_100040520(*(v1 + 48) + 40 * v14, v28);
    sub_10001F2EC(*(v1 + 56) + 32 * v14, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_100040520(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_10000BE18(v25, &qword_100848A48, &unk_1006E9420);

LABEL_22:

      return;
    }

    sub_10001F2EC(v26 + 8, v24);
    sub_10000BE18(v25, &qword_100848A48, &unk_1006E9420);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_22;
    }

    v6 &= v6 - 1;
    v15 = sub_10003ADCC(v22, v23);
    if (v16)
    {
      v9 = v1;
      v10 = 16 * v15;
      v11 = (v2[6] + 16 * v15);
      *v11 = v22;
      v11[1] = v23;

      v12 = (v2[7] + v10);
      v1 = v9;
      *v12 = v22;
      v12[1] = v23;

      v8 = v13;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_24;
      }

      *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      v17 = (v2[6] + 16 * v15);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * v15);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_25;
      }

      v2[2] = v21;
      v8 = v13;
    }
  }

  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v7)
    {
      goto LABEL_22;
    }

    v6 = *(v3 + 8 * v13);
    ++v8;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_1005C31B4()
{
  v1 = OBJC_IVAR____TtCFC8coreidvd14DIPHTTPSession14performRequestFzZTV10Foundation10URLRequest21acceptableStatusCodesGSaSi_11ignoreCacheSb11isAnonymousSb17overridingAltDSIDGSqSS__TVS1_4DataCSo13NSURLResponseSb_L_16RequestContainer_request;
  v2 = type metadata accessor for URLRequest();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1005C3254(uint64_t a1)
{
  result = type metadata accessor for URLRequest();
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

uint64_t sub_1005C3304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DIPBackoffStrategy();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 40) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1005C33E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DIPBackoffStrategy();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = a2;
  }

  return result;
}

void sub_1005C34A8(uint64_t a1)
{
  type metadata accessor for DIPBackoffStrategy();
  if (v1 <= 0x3F)
  {
    sub_1000BD2F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1005C3550(uint64_t a1, char a2)
{
  v4 = type metadata accessor for DeviceInformationProvider();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v8 = v2 + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_configuration;
    if (*(v8 + *(type metadata accessor for DIPHTTPSession.Configuration(0) + 28)) == 1)
    {
      sub_10000BA08((v2 + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager), *(v2 + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager + 24));
      v9.value._countAndFlagsBits = dispatch thunk of DIPAccountManagerProtocol.appleAuthHeader(_:)();
      v10._countAndFlagsBits = 0x7A69726F68747541;
      v10._object = 0xED00006E6F697461;
      URLRequest.setValue(_:forHTTPHeaderField:)(v9, v10);
    }
  }

  v11 = [objc_opt_self() _deviceLanguage];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16._countAndFlagsBits = 0x4C2D747065636341;
  v16._object = 0xEF65676175676E61;
  v17.value._countAndFlagsBits = v13;
  v17.value._object = v15;
  URLRequest.setValue(_:forHTTPHeaderField:)(v17, v16);

  v63.value._countAndFlagsBits = 0;
  v63.value._object = 0xE000000000000000;
  v18 = URLRequest.httpBody.getter();
  v20 = 0;
  if (v19 >> 60 == 15)
  {
    goto LABEL_8;
  }

  v47 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v47 != 2)
    {
      sub_10000BD94(v18, v19);
      v20 = 0;
      goto LABEL_8;
    }

    v59 = *(v18 + 16);
    v58 = *(v18 + 24);
    v18 = sub_10000BD94(v18, v19);
    v20 = v58 - v59;
    if (!__OFSUB__(v58, v59))
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  else if (!v47)
  {
    v48 = BYTE6(v19);
    sub_10000BD94(v18, v19);
    v20 = v48;
    goto LABEL_8;
  }

  v60 = HIDWORD(v18);
  v61 = v18;
  sub_10000BD94(v18, v19);
  LODWORD(v20) = v60 - v61;
  if (__OFSUB__(v60, v61))
  {
    __break(1u);
    return;
  }

  v20 = v20;
LABEL_8:
  v62[0] = v20;
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0x2D746E65746E6F43;
  v22._object = 0xEE006874676E654CLL;
  URLRequest.setValue(_:forHTTPHeaderField:)(v63, v22);

  if (qword_100832D18 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v23._object = 0x8000000100723FE0;
    v23._countAndFlagsBits = 0xD000000000000013;
    URLRequest.setValue(_:forHTTPHeaderField:)(xmmword_100882478, v23);
    DeviceInformationProvider.init()();
    v24 = DeviceInformationProvider.hardwarePlatform.getter();
    v26 = v25;
    (*(v5 + 8))(v7, v4);
    v27._countAndFlagsBits = 0xD000000000000010;
    v27._object = 0x8000000100724000;
    v28.value._countAndFlagsBits = v24;
    v28.value._object = v26;
    URLRequest.setValue(_:forHTTPHeaderField:)(v28, v27);

    v29 = [objc_opt_self() ak_clientInfoHeader];
    if (!v29)
    {
      break;
    }

    v30 = v29;
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1005C2AE8(v7);
    v4 = v31;

    if (!v4)
    {
      break;
    }

    v5 = v4 + 64;
    v32 = 1 << *(v4 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v4 + 64);
    v35 = (v32 + 63) >> 6;

    v36 = 0;
    while (v34)
    {
      v37 = v36;
LABEL_19:
      v38 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v39 = (v37 << 10) | (16 * v38);
      v40 = (*(v4 + 48) + v39);
      v41 = *v40;
      v7 = v40[1];
      v42 = (*(v4 + 56) + v39);
      v43 = *v42;
      v44 = v42[1];

      v45.value._countAndFlagsBits = v43;
      v45.value._object = v44;
      v46._countAndFlagsBits = v41;
      v46._object = v7;
      URLRequest.setValue(_:forHTTPHeaderField:)(v45, v46);
    }

    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v35)
      {

        goto LABEL_25;
      }

      v34 = *(v5 + 8 * v37);
      ++v36;
      if (v34)
      {
        v36 = v37;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

LABEL_25:
  v49 = [objc_opt_self() standardUserDefaults];
  static DaemonDefaultsKeys.environmentName.getter();
  v50 = String._bridgeToObjectiveC()();

  v51 = [v49 stringForKey:v50];

  if (!v51 || (v52 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v54 = v53, v51, v63.value._countAndFlagsBits = v52, v63.value._object = v54, v62[0] = 1685025392, v62[1] = 0xE400000000000000, sub_10001F298(), v55 = StringProtocol.caseInsensitiveCompare<A>(_:)(), , v55))
  {
    v56._object = 0x8000000100724020;
    v57.value._countAndFlagsBits = 1702195828;
    v57.value._object = 0xE400000000000000;
    v56._countAndFlagsBits = 0xD000000000000013;
    URLRequest.setValue(_:forHTTPHeaderField:)(v57, v56);
  }
}

void sub_1005C3B08(uint64_t a1)
{
  v2 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v2 - 8);
  v50 = &v46 - v3;
  v4 = type metadata accessor for URLRequest();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v46 - v9;
  v11 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v11 - 8);
  v12 = URLRequest.httpBody.getter();
  if (v13 >> 60 == 15)
  {
LABEL_6:
    v51 = 0;
    v18 = 0xE000000000000000;
    if (URLRequest.allHTTPHeaderFields.getter())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v14 = v12;
  v15 = v13;
  static String.Encoding.utf8.getter();
  v16 = String.init(data:encoding:)();
  if (!v17)
  {
    sub_10000BD94(v14, v15);
    goto LABEL_6;
  }

  v18 = v17;
  v51 = v16;
  sub_10000BD94(v14, v15);
  if (URLRequest.allHTTPHeaderFields.getter())
  {
    goto LABEL_8;
  }

LABEL_7:
  sub_10003D21C(_swiftEmptyArrayStorage);
LABEL_8:
  v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (qword_100832D00 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10003170C(v20, qword_1008490C0);
  v21 = *(v5 + 16);
  v21(v10, a1, v4);
  v21(v8, a1, v4);
  v22 = v19.super.isa;

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v47 = v24;
    v48 = v22;
    v25 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v55 = v46;
    *v25 = 136315906;
    v26 = URLRequest.httpMethod.getter();
    if (v27)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0;
    }

    v29 = v8;
    if (v27)
    {
      v30 = v27;
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    v31 = *(v5 + 8);
    v31(v10, v4);
    v32 = sub_100141FE4(v28, v30, &v55);

    *(v25 + 4) = v32;
    *(v25 + 12) = 2080;
    v33 = v50;
    v49 = v29;
    URLRequest.url.getter();
    v34 = type metadata accessor for URL();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v33, 1, v34) == 1)
    {
      sub_10000BE18(v33, &unk_100844540, &unk_1006BFBC0);
      v36 = 0;
      v37 = 0xE000000000000000;
    }

    else
    {
      v39 = URL.absoluteString.getter();
      v40 = v33;
      v36 = v39;
      v37 = v41;
      (*(v35 + 8))(v40, v34);
    }

    v31(v49, v4);
    v42 = sub_100141FE4(v36, v37, &v55);

    *(v25 + 14) = v42;
    *(v25 + 22) = 2080;
    v53 = 0;
    v54 = 0xE000000000000000;
    v43 = v48;
    v52 = v48;
    _print_unlocked<A, B>(_:_:)();
    v44 = sub_100141FE4(v53, v54, &v55);

    *(v25 + 24) = v44;
    *(v25 + 32) = 2080;
    v45 = sub_100141FE4(v51, v18, &v55);

    *(v25 + 34) = v45;
    _os_log_impl(&_mh_execute_header, v23, v47, "Performing request:\n%s %s\n%s\n%s\n", v25, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v38 = *(v5 + 8);
    v38(v8, v4);
    v38(v10, v4);
  }
}

void sub_1005C4094(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  v12 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v12 - 8);
  if (a3 >> 60 != 15)
  {
    sub_10000B8B8(a2, a3);
    static String.Encoding.utf8.getter();
    v13 = String.init(data:encoding:)();
    if (v14)
    {
      v15 = v13;
      v16 = v14;
      sub_10000BD94(a2, a3);
      goto LABEL_6;
    }

    sub_10000BD94(a2, a3);
  }

  v15 = 0;
  v16 = 0xE000000000000000;
LABEL_6:
  v17 = [a1 allHeaderFields];
  if (v17)
  {
    v18 = v17;
    if (qword_100832D00 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10003170C(v19, qword_1008490C0);
    v20 = a1;
    v21 = v18;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v40 = v23;
      v24 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v45 = v39;
      *v24 = 136315906;
      v25 = [v20 URL];
      v41 = v15;
      if (v25)
      {
        v26 = v25;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v27 = 0;
      }

      else
      {
        v27 = 1;
      }

      v28 = type metadata accessor for URL();
      v29 = *(v28 - 8);
      (*(v29 + 56))(v9, v27, 1, v28);
      sub_1000B1FC8(v9, v11, &unk_100844540, &unk_1006BFBC0);
      if ((*(v29 + 48))(v11, 1, v28) == 1)
      {
        sub_10000BE18(v11, &unk_100844540, &unk_1006BFBC0);
        v30 = 0;
        v31 = 0xE000000000000000;
      }

      else
      {
        v32 = URL.absoluteString.getter();
        v31 = v33;
        (*(v29 + 8))(v11, v28);
        v30 = v32;
      }

      v34 = sub_100141FE4(v30, v31, &v45);

      *(v24 + 4) = v34;
      *(v24 + 12) = 2048;
      v35 = [v20 statusCode];

      *(v24 + 14) = v35;
      *(v24 + 22) = 2080;
      v43 = 0;
      v44 = 0xE000000000000000;
      v42 = v21;
      _print_unlocked<A, B>(_:_:)();
      v36 = sub_100141FE4(v43, v44, &v45);

      *(v24 + 24) = v36;
      *(v24 + 32) = 2080;
      v37 = sub_100141FE4(v41, v16, &v45);

      *(v24 + 34) = v37;
      _os_log_impl(&_mh_execute_header, v22, v40, "Response:\n%s %ld\n%s\n%s\n", v24, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005C4570(void *a1, uint64_t a2)
{
  v62 = a1;
  v61 = type metadata accessor for DIPError.Code();
  v63 = *(v61 - 8);
  v3 = __chkstk_darwin(v61);
  v60 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v58 - v5;
  v7 = type metadata accessor for Logger();
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() standardUserDefaults];
  v11._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceHTTPStatus.getter();
  v12 = NSUserDefaults.internalString(forKey:)(v11);

  if (!v12.value._object)
  {
    goto LABEL_65;
  }

  v13 = (v12.value._object >> 56) & 0xF;
  v14 = v12.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if ((v12.value._object & 0x2000000000000000) != 0)
  {
    v15 = (v12.value._object >> 56) & 0xF;
  }

  else
  {
    v15 = v12.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

LABEL_65:
    v18 = [v62 statusCode];
    goto LABEL_66;
  }

  if ((v12.value._object & 0x1000000000000000) != 0)
  {
    v18 = sub_1000FFDD8(v12.value._countAndFlagsBits, v12.value._object, 10);
    v54 = v53;

    if (v54)
    {
      goto LABEL_65;
    }

    goto LABEL_89;
  }

  if ((v12.value._object & 0x2000000000000000) != 0)
  {
    v64[0] = v12.value._countAndFlagsBits;
    v64[1] = v12.value._object & 0xFFFFFFFFFFFFFFLL;
    if (LOBYTE(v12.value._countAndFlagsBits) == 43)
    {
      if (v13)
      {
        if (--v13)
        {
          v18 = 0;
          v28 = v64 + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            v30 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              break;
            }

            ++v28;
            if (!--v13)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_96:
      __break(1u);
      JUMPOUT(0x1005C4E7CLL);
    }

    if (LOBYTE(v12.value._countAndFlagsBits) != 45)
    {
      if (v13)
      {
        v18 = 0;
        v33 = v64;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v35 + v34;
          if (__OFADD__(v35, v34))
          {
            break;
          }

          v33 = (v33 + 1);
          if (!--v13)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v13)
    {
      if (--v13)
      {
        v18 = 0;
        v22 = v64 + 1;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v24 - v23;
          if (__OFSUB__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v13)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_94;
  }

  if ((v12.value._countAndFlagsBits & 0x1000000000000000) != 0)
  {
    v16 = ((v12.value._object & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v16 = _StringObject.sharedUTF8.getter();
  }

  v17 = *v16;
  if (v17 == 43)
  {
    if (v14 >= 1)
    {
      v13 = v14 - 1;
      if (v14 != 1)
      {
        v18 = 0;
        if (v16)
        {
          v25 = v16 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              goto LABEL_63;
            }

            v27 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_63;
            }

            v18 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              goto LABEL_63;
            }

            ++v25;
            if (!--v13)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_55;
      }

      goto LABEL_63;
    }

    goto LABEL_95;
  }

  if (v17 == 45)
  {
    if (v14 >= 1)
    {
      v13 = v14 - 1;
      if (v14 != 1)
      {
        v18 = 0;
        if (v16)
        {
          v19 = v16 + 1;
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              goto LABEL_63;
            }

            v21 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_63;
            }

            v18 = v21 - v20;
            if (__OFSUB__(v21, v20))
            {
              goto LABEL_63;
            }

            ++v19;
            if (!--v13)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v13) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v14)
  {
    v18 = 0;
    if (v16)
    {
      while (1)
      {
        v31 = *v16 - 48;
        if (v31 > 9)
        {
          goto LABEL_63;
        }

        v32 = 10 * v18;
        if ((v18 * 10) >> 64 != (10 * v18) >> 63)
        {
          goto LABEL_63;
        }

        v18 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          goto LABEL_63;
        }

        ++v16;
        if (!--v14)
        {
          goto LABEL_55;
        }
      }
    }

    goto LABEL_55;
  }

LABEL_63:
  v18 = 0;
  LOBYTE(v13) = 1;
LABEL_64:
  v65 = v13;
  v36 = v13;

  if (v36)
  {
    goto LABEL_65;
  }

LABEL_89:
  defaultLogger()();
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 134349056;
    *(v57 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v55, v56, "Forcing HTTP status code to %{public}ld due to user setting", v57, 0xCu);
  }

  (*(v58 + 8))(v9, v59);
LABEL_66:
  v64[0] = a2;

  sub_10031D34C(&off_1007FC2A0);
  v37 = sub_100697A28(v64[0]);

  v38 = sub_100693DEC(v18, v37);

  if (!v38)
  {
    v40 = *(v63 + 104);
    v62 = v18;
    switch(v18)
    {
      case 400:
        v41 = &enum case for DIPError.Code.httpBadRequest(_:);
        break;
      case 401:
        v41 = &enum case for DIPError.Code.httpUnauthorized(_:);
        break;
      case 402:
      case 405:
      case 406:
      case 407:
      case 408:
      case 409:
      case 410:
      case 411:
      case 412:
      case 413:
      case 414:
      case 415:
      case 416:
      case 417:
      case 418:
      case 419:
      case 420:
      case 421:
      case 422:
      case 423:
      case 424:
      case 425:
      case 426:
      case 427:
      case 430:
      case 431:
      case 432:
      case 435:
      case 436:
      case 437:
      case 438:
      case 439:
      case 440:
      case 441:
      case 442:
      case 443:
      case 444:
      case 445:
      case 446:
      case 447:
      case 448:
      case 449:
      case 450:
      case 451:
      case 452:
      case 453:
      case 454:
      case 455:
      case 456:
      case 457:
      case 458:
      case 459:
      case 460:
      case 461:
      case 462:
      case 463:
      case 464:
      case 465:
      case 466:
      case 467:
      case 468:
      case 469:
      case 470:
      case 471:
      case 472:
      case 473:
      case 474:
      case 475:
      case 476:
      case 477:
      case 478:
      case 479:
      case 480:
      case 481:
      case 482:
      case 483:
      case 484:
      case 485:
      case 486:
      case 487:
      case 488:
      case 489:
      case 490:
      case 491:
      case 492:
      case 493:
      case 494:
      case 495:
      case 496:
      case 497:
      case 498:
      case 499:
        goto LABEL_72;
      case 403:
        v41 = &enum case for DIPError.Code.httpForbidden(_:);
        break;
      case 404:
        v41 = &enum case for DIPError.Code.httpNotFound(_:);
        break;
      case 428:
        v41 = &enum case for DIPError.Code.httpPreconditionRequired(_:);
        break;
      case 429:
        v41 = &enum case for DIPError.Code.httpTooManyRequests(_:);
        break;
      case 433:
        v41 = &enum case for DIPError.Code.httpAuthKitReprovision(_:);
        break;
      case 434:
        v41 = &enum case for DIPError.Code.httpAuthKitResync(_:);
        break;
      case 500:
        v41 = &enum case for DIPError.Code.httpInternalServerError(_:);
        break;
      case 501:
        v41 = &enum case for DIPError.Code.httpNotImplemented(_:);
        break;
      case 502:
        v41 = &enum case for DIPError.Code.httpBadGateway(_:);
        break;
      case 503:
        v41 = &enum case for DIPError.Code.httpServiceUnavailable(_:);
        break;
      case 504:
        v41 = &enum case for DIPError.Code.httpGatewayTimeout(_:);
        break;
      default:
        if (v18 == 301)
        {
          v41 = &enum case for DIPError.Code.httpMovedPermanently(_:);
        }

        else if (v18 == 304)
        {
          v41 = &enum case for DIPError.Code.httpNotModified(_:);
        }

        else
        {
LABEL_72:
          v41 = &enum case for DIPError.Code.httpUnknownStatus(_:);
        }

        break;
    }

    v42 = v6;
    v43 = v6;
    v44 = v61;
    v40(v43, *v41, v61);
    v59 = "ut no data cached";
    v45 = v63;
    (*(v63 + 16))(v60, v42, v44);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v46 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v47 = (*(*v46 + 80) + 32) & ~*(*v46 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1006BF520;
    v49 = v48 + v47;
    v50 = (v49 + v46[14]);
    v51 = enum case for DIPError.PropertyKey.serverStatusCode(_:);
    v52 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v52 - 8) + 104))(v49, v51, v52);
    v50[3] = &type metadata for Int;
    v50[4] = &protocol witness table for Int;
    *v50 = v62;
    sub_10003C9C0(v48);
    swift_setDeallocating();
    sub_10000BE18(v49, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_1005C5020(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    return (*(v45 + 8))(v42, v44);
  }

  return result;
}

uint64_t sub_1005C5020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1005C5068()
{
  result = qword_100849410;
  if (!qword_100849410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100849410);
  }

  return result;
}

BOOL sub_1005C50B4(__SecTrust *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() standardUserDefaults];
  v7._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableSSLPinning.getter();
  v8 = NSUserDefaults.internalBool(forKey:)(v7);

  if (v8)
  {
    defaultLogger()();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Skipping SSL/TLS verification due to user defaults setting", v11, 2u);
    }

    (*(v3 + 8))(v5, v2);
    return 1;
  }

  else
  {
    error = 0;
    v13 = SecTrustEvaluateWithError(a1, &error);
    if (error)
    {
      v14 = error;
      v15 = CFErrorCopyDescription(v14);
      if (v15)
      {
        v16 = v15;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      if (qword_100832D00 != -1)
      {
        swift_once();
      }

      sub_10003170C(v2, qword_1008490C0);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v27 = v23;
        *v22 = 136315138;
        if (v19)
        {
          v24 = v17;
        }

        else
        {
          v24 = 7104878;
        }

        if (!v19)
        {
          v19 = 0xE300000000000000;
        }

        v25 = sub_100141FE4(v24, v19, &v27);

        *(v22 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v20, v21, "Invalid server certificate, error: %s", v22, 0xCu);
        sub_10000BB78(v23);
      }

      else
      {
      }
    }

    return v13;
  }
}

void sub_1005C5404(void *a1)
{
  v2 = sub_100007224(&qword_100849428, &qword_1006E9430);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v31 - v6;
  v8 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  if (qword_100832D00 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10003170C(v11, qword_1008490C0);
  v12 = a1;
  v31 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v31, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136315138;
    v16 = [v12 currentRequest];
    if (v16)
    {
      v17 = v16;
      static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = type metadata accessor for URLRequest();
      (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
    }

    else
    {
      v18 = type metadata accessor for URLRequest();
      (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
    }

    sub_1000B1FC8(v5, v7, &qword_100849428, &qword_1006E9430);
    type metadata accessor for URLRequest();
    v20 = *(v18 - 8);
    if ((*(v20 + 48))(v7, 1, v18) == 1)
    {
      v21 = &qword_100849428;
      v22 = &qword_1006E9430;
      v23 = v7;
    }

    else
    {
      URLRequest.url.getter();
      (*(v20 + 8))(v7, v18);
      v24 = type metadata accessor for URL();
      v25 = *(v24 - 8);
      if ((*(v25 + 48))(v10, 1, v24) != 1)
      {
        v28 = URL.absoluteString.getter();
        v27 = v29;
        (*(v25 + 8))(v10, v24);
        v26 = v28;
        goto LABEL_16;
      }

      v21 = &unk_100844540;
      v22 = &unk_1006BFBC0;
      v23 = v10;
    }

    sub_10000BE18(v23, v21, v22);
    v26 = 0;
    v27 = 0xE000000000000000;
LABEL_16:
    v30 = sub_100141FE4(v26, v27, &v32);

    *(v14 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v31, v13, "Task for URL %s is waiting for connectivity", v14, 0xCu);
    sub_10000BB78(v15);

    return;
  }

  v19 = v31;
}

void sub_1005C5844(uint64_t a1)
{
  if (!a1)
  {
    if (qword_100832D00 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10003170C(v6, qword_1008490C0);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "URL session did become invalid", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_100832D00 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003170C(v1, qword_1008490C0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "URL session became invalid with error %@", v3, 0xCu);
    sub_10000BE18(v4, &unk_100833B50, &unk_1006D8FB0);

LABEL_10:

    return;
  }
}

void sub_1005C5A8C(void *a1, uint64_t a2)
{
  v13 = [a1 protectionSpace];
  v3 = [v13 authenticationMethod];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v4 && v7 == v6)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      (*(a2 + 16))(a2, 1, 0);
      goto LABEL_13;
    }
  }

  v10 = [v13 serverTrust];
  if (v10)
  {
    v11 = v10;
    if (sub_1005C50B4(v10))
    {
      v12 = [objc_allocWithZone(NSURLCredential) initWithTrust:v11];
      (*(a2 + 16))(a2, 0, v12);

      v13 = v12;
      goto LABEL_13;
    }
  }

  (*(a2 + 16))(a2, 2, 0);
LABEL_13:
}

uint64_t sub_1005C5C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100849428, &qword_1006E9430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1005C5C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DIPHTTPSession.Configuration(0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  v13 = &v3[OBJC_IVAR____TtC8coreidvd15DIPSPWebService_IDENTITY_SHARE_ENDPOINT];
  *v13 = 0xD000000000000012;
  *(v13 + 1) = 0x8000000100724080;
  sub_1002BEB48(a3, &v18 - v11);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v14 = &v3[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation];
  *v14 = a1;
  *(v14 + 1) = a2;
  sub_100020260(v20, v19);
  sub_1002BEB48(v12, v10);
  type metadata accessor for DIPHTTPSession(0);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession] = sub_1005BE690(v19, v10);
  v15 = type metadata accessor for DIPWebService();
  v18.receiver = v3;
  v18.super_class = v15;
  v16 = objc_msgSendSuper2(&v18, "init");
  sub_1005CABD4(a3, type metadata accessor for DIPHTTPSession.Configuration);
  sub_10000BB78(v20);
  sub_1005CABD4(v12, type metadata accessor for DIPHTTPSession.Configuration);
  return v16;
}

uint64_t sub_1005C5E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[23] = a6;
  v7[24] = v6;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v7[27] = v8;
  v7[28] = *(v8 - 8);
  v7[29] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v7[30] = swift_task_alloc();
  v9 = type metadata accessor for DIPSignpost();
  v7[31] = v9;
  v7[32] = *(v9 - 8);
  v7[33] = swift_task_alloc();

  return _swift_task_switch(sub_1005C5FC8, 0, 0);
}

uint64_t sub_1005C5FC8()
{
  v1 = v0[21];
  v2 = v0[22];
  static DaemonSignposts.inputValidationRequest.getter();
  DIPSignpost.init(_:)();
  v3 = v1[3];
  v4 = sub_10000BA08(v1, v3);
  v0[13] = v3;
  v5 = sub_100032DBC(v0 + 10);
  (*(*(v3 - 8) + 16))(v5, v4, v3);
  v6 = swift_task_alloc();
  v0[34] = v6;
  *v6 = v0;
  v6[1] = sub_1005C60F0;
  v7 = v0[19];
  v8 = v0[20];

  return sub_1005C9474((v0 + 10), v7, v8, v2, &off_1007FC2D0);
}

uint64_t sub_1005C60F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[35] = a1;
  v5[36] = a2;
  v5[37] = a3;
  v5[38] = v3;

  if (v3)
  {
    v6 = sub_1005C69AC;
  }

  else
  {
    sub_10000BB78(v5 + 10);
    v6 = sub_1005C6210;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1005C6210()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1 || [v1 statusCode] != 403)
  {
    v16 = *(v0 + 288);
    v17 = *(v0 + 296);
    v18 = *(v0 + 280);
    v20 = *(v0 + 256);
    v19 = *(v0 + 264);
    v21 = *(v0 + 248);
    v22._countAndFlagsBits = 0x3032373065323933;
    v23._countAndFlagsBits = 0xD000000000000021;
    v23._object = 0x8000000100724300;
    v22._object = 0xE800000000000000;
    logMilestone(tag:description:)(v22, v23);
    v24.value._countAndFlagsBits = sub_1000CB118();
    DIPSignpost.end(workflowID:isBackground:)(v24, 2);
    sub_10000B90C(v18, v16);

    (*(v20 + 8))(v19, v21);
    v25 = xmmword_1006D1BF0;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
LABEL_8:
    v29 = *(v0 + 144);
    *v29 = v26;
    v29[1] = v25;
    v29[2] = v27;
    v29[3] = v28;

    v30 = *(v0 + 8);
    goto LABEL_9;
  }

  v2 = *(v0 + 304);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005CAC98();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v3 = v2;
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v6 = *(v0 + 280);
  if (!v3)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));

    sub_10000B90C(v6, v5);
    v26 = *(v0 + 16);
    v25 = *(v0 + 32);
    v27 = *(v0 + 48);
    v28 = *(v0 + 64);
    goto LABEL_8;
  }

  v51 = *(v0 + 288);
  v8 = *(v0 + 224);
  v7 = *(v0 + 232);
  v9 = *(v0 + 216);

  (*(v8 + 104))(v7, enum case for DIPError.Code.serverResponseInconsistent(_:), v9);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  sub_10000B90C(v6, v51);
  v11 = *(v0 + 216);
  v10 = *(v0 + 224);
  v12 = *(v0 + 208);
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  if ((*(v10 + 48))(v12, 1, v11) == 1)
  {
LABEL_14:
    swift_willThrow();
    goto LABEL_15;
  }

  v14 = *(v0 + 216);
  v13 = *(v0 + 224);
  v15 = *(v0 + 200);
  sub_100044D38(*(v0 + 208), v15);
  if ((*(v13 + 88))(v15, v14) != enum case for DIPError.Code.httpTooManyRequests(_:))
  {
    (*(*(v0 + 224) + 8))(*(v0 + 200), *(v0 + 216));
    goto LABEL_14;
  }

  (*(*(v0 + 224) + 104))(*(v0 + 232), enum case for DIPError.Code.topekaDownstreamServiceProviderUnavailable(_:), *(v0 + 216));
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

LABEL_15:
  v48 = *(v0 + 256);
  v49 = *(v0 + 248);
  v45 = *(v0 + 224);
  v46 = *(v0 + 232);
  v47 = *(v0 + 216);
  v50 = *(v0 + 264);
  v44 = *(v0 + 192);
  sub_10000BE18(*(v0 + 208), &qword_10083B020, &unk_1006D8ED0);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v32 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v33 = *(*(v32 - 8) + 72);
  v34 = (*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1006BF740;
  v36 = v35 + v34;
  v37 = (v35 + v34 + *(v32 + 48));
  v38 = enum case for DIPError.PropertyKey.serverURL(_:);
  v39 = type metadata accessor for DIPError.PropertyKey();
  v40 = *(*(v39 - 8) + 104);
  v40(v36, v38, v39);
  v37[3] = &type metadata for String;
  v37[4] = &protocol witness table for String;
  *v37 = 0xD000000000000013;
  v37[1] = 0x80000001007242C0;
  v41 = (v36 + v33 + *(v32 + 48));
  v40(v36 + v33, enum case for DIPError.PropertyKey.conversationID(_:), v39);
  v42 = *(v44 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v43 = *(v44 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v41[3] = &type metadata for String;
  v41[4] = &protocol witness table for String;
  *v41 = v42;
  v41[1] = v43;
  swift_errorRetain();
  swift_errorRetain();

  sub_10003C9C0(v35);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v45 + 104))(v46, enum case for DIPError.Code.internalError(_:), v47);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v48 + 8))(v50, v49);

  v30 = *(v0 + 8);
LABEL_9:

  return v30();
}

uint64_t sub_1005C69AC()
{
  sub_10000BB78(v0 + 10);
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v5 = v0[27];
    v4 = v0[28];
    v6 = v0[25];
    sub_100044D38(v0[26], v6);
    if ((*(v4 + 88))(v6, v5) == enum case for DIPError.Code.httpTooManyRequests(_:))
    {
      (*(v0[28] + 104))(v0[29], enum case for DIPError.Code.topekaDownstreamServiceProviderUnavailable(_:), v0[27]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      goto LABEL_6;
    }

    (*(v0[28] + 8))(v0[25], v0[27]);
  }

  swift_willThrow();
LABEL_6:
  v25 = v0[32];
  v26 = v0[31];
  v27 = v0[33];
  v22 = v0[28];
  v23 = v0[29];
  v24 = v0[27];
  v21 = v0[24];
  sub_10000BE18(v0[26], &qword_10083B020, &unk_1006D8ED0);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v7 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1006BF740;
  v11 = v10 + v9;
  v12 = (v10 + v9 + *(v7 + 48));
  v13 = enum case for DIPError.PropertyKey.serverURL(_:);
  v14 = type metadata accessor for DIPError.PropertyKey();
  v15 = *(*(v14 - 8) + 104);
  v15(v11, v13, v14);
  v12[3] = &type metadata for String;
  v12[4] = &protocol witness table for String;
  *v12 = 0xD000000000000013;
  v12[1] = 0x80000001007242C0;
  v16 = (v11 + v8 + *(v7 + 48));
  v15(v11 + v8, enum case for DIPError.PropertyKey.conversationID(_:), v14);
  v17 = *(v21 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v18 = *(v21 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v16[3] = &type metadata for String;
  v16[4] = &protocol witness table for String;
  *v16 = v17;
  v16[1] = v18;
  swift_errorRetain();
  swift_errorRetain();

  sub_10003C9C0(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v22 + 104))(v23, enum case for DIPError.Code.internalError(_:), v24);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v25 + 8))(v27, v26);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1005C6EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[57] = a6;
  v7[58] = v6;
  v7[55] = a4;
  v7[56] = a5;
  v7[53] = a2;
  v7[54] = a3;
  v7[52] = a1;
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v7[61] = v8;
  v7[62] = *(v8 - 8);
  v7[63] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v7[64] = v9;
  v7[65] = *(v9 - 8);
  v7[66] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v7[67] = swift_task_alloc();
  v10 = type metadata accessor for DIPSignpost();
  v7[68] = v10;
  v7[69] = *(v10 - 8);
  v7[70] = swift_task_alloc();

  return _swift_task_switch(sub_1005C70E8, 0, 0);
}

uint64_t sub_1005C70E8()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v5 = v0[55];
  v4 = v0[56];
  static DaemonSignposts.spNonceRequest.getter();
  DIPSignpost.init(_:)();
  UUID.init()();
  v6 = UUID.uuidString.getter();
  v8 = v7;
  v0[71] = v6;
  v0[72] = v7;
  (*(v2 + 8))(v1, v3);
  v0[47] = &type metadata for NonceRequest;
  v9 = swift_allocObject();
  v0[44] = v9;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0xE000000000000000;
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;
  *(v9 + 48) = v5;
  *(v9 + 56) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = 0u;

  v10 = swift_task_alloc();
  v0[73] = v10;
  *v10 = v0;
  v10[1] = sub_1005C7260;
  v11 = v0[53];
  v12 = v0[54];

  return sub_1005C9474((v0 + 44), v11, v12, v4, _swiftEmptyArrayStorage);
}

uint64_t sub_1005C7260(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v6[74] = a1;
  v6[75] = a2;
  v6[76] = v3;

  if (v3)
  {

    v7 = sub_1005C7B48;
  }

  else
  {
    sub_10000BB78(v6 + 44);

    v7 = sub_1005C739C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005C739C()
{
  v1 = *(v0 + 608);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000A780C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v2 = *(v0 + 576);
  if (v1)
  {
    v3 = *(v0 + 496);

    v4 = enum case for DIPError.Code.internalError(_:);
    v5 = *(v3 + 104);
LABEL_5:
    v18 = *(v0 + 600);
    v19 = *(v0 + 592);
    v5(*(v0 + 504), v4, *(v0 + 488));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v19, v18);
    v54 = *(v0 + 552);
    v55 = *(v0 + 544);
    v56 = *(v0 + 560);
    v51 = *(v0 + 496);
    v52 = *(v0 + 504);
    v53 = *(v0 + 488);
    v50 = *(v0 + 464);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v20 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v21 = *(*(v20 - 8) + 72);
    v22 = (*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1006BF740;
    v24 = v23 + v22;
    v25 = (v23 + v22 + *(v20 + 48));
    v26 = enum case for DIPError.PropertyKey.conversationID(_:);
    v27 = type metadata accessor for DIPError.PropertyKey();
    v28 = *(*(v27 - 8) + 104);
    v28(v24, v26, v27);
    v29 = *(v50 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v30 = *(v50 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v25[3] = &type metadata for String;
    v25[4] = &protocol witness table for String;
    *v25 = v29;
    v25[1] = v30;
    v31 = v24 + v21;
    v32 = (v24 + v21 + *(v20 + 48));
    v28(v31, enum case for DIPError.PropertyKey.serverURL(_:), v27);
    v32[3] = &type metadata for String;
    v32[4] = &protocol witness table for String;
    *v32 = 0x69726168732D7073;
    v32[1] = 0xEA0000000000676ELL;
    swift_errorRetain();
    swift_errorRetain();

    sub_10003C9C0(v23);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v51 + 104))(v52, enum case for DIPError.Code.internalError(_:), v53);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v54 + 8))(v56, v55);

    v33 = *(v0 + 8);
    goto LABEL_6;
  }

  v6 = *(v0 + 568);

  v7 = *(v0 + 80);
  v8 = *(v0 + 96);
  *(v0 + 200) = v7;
  *(v0 + 216) = v8;
  *(v0 + 232) = *(v0 + 112);
  *(v0 + 248) = *(v0 + 128);
  v9 = *(v0 + 16);
  v10 = *(v0 + 32);
  *(v0 + 136) = v9;
  *(v0 + 152) = v10;
  v11 = *(v0 + 48);
  v12 = *(v0 + 64);
  *(v0 + 168) = v11;
  *(v0 + 184) = v12;
  *(v0 + 256) = v9;
  *(v0 + 272) = v10;
  *(v0 + 288) = v11;
  *(v0 + 304) = v12;
  *(v0 + 320) = v7;
  *(v0 + 336) = v8;
  v13 = sub_10060A770(0, 0xE000000000000000, v6, v2, (v0 + 256), 0);

  if (v13)
  {
    v15 = *(v0 + 496);
    v14 = *(v0 + 504);
    v16 = *(v0 + 488);
    sub_1000AD0A8(v0 + 136);
    v17 = enum case for DIPError.Code.internalError(_:);
    v5 = *(v15 + 104);
    v5(v14, enum case for DIPError.Code.internalError(_:), v16);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v4 = v17;
    goto LABEL_5;
  }

  v35 = *(v0 + 600);
  v36 = *(v0 + 592);
  v37 = *(v0 + 560);
  v38 = *(v0 + 552);
  v39 = *(v0 + 544);
  v40._countAndFlagsBits = 0xD000000000000019;
  v41 = *(v0 + 416);
  v42._countAndFlagsBits = 0x3361656436313837;
  v40._object = 0x8000000100724280;
  v42._object = 0xE800000000000000;
  logMilestone(tag:description:)(v42, v40);
  v43.value._countAndFlagsBits = sub_1000CB118();
  DIPSignpost.end(workflowID:isBackground:)(v43, 2);

  sub_10000B90C(v36, v35);
  (*(v38 + 8))(v37, v39);
  v44 = *(v0 + 136);
  v45 = *(v0 + 152);
  v46 = *(v0 + 184);
  *(v41 + 32) = *(v0 + 168);
  *(v41 + 48) = v46;
  *v41 = v44;
  *(v41 + 16) = v45;
  v47 = *(v0 + 200);
  v48 = *(v0 + 216);
  v49 = *(v0 + 232);
  *(v41 + 112) = *(v0 + 248);
  *(v41 + 80) = v48;
  *(v41 + 96) = v49;
  *(v41 + 64) = v47;

  v33 = *(v0 + 8);
LABEL_6:

  return v33();
}

uint64_t sub_1005C7B48()
{
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[60];
  sub_10000BB78(v0 + 44);
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v4 = v0[61];
    v5 = v0[62];
    v6 = v0[59];
    sub_100044D38(v0[60], v6);
    if ((*(v5 + 88))(v6, v4) == enum case for DIPError.Code.httpTooManyRequests(_:))
    {
      v7 = v0[60];
      (*(v0[62] + 104))(v0[63], enum case for DIPError.Code.topekaDownstreamServiceProviderUnavailable(_:), v0[61]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      sub_10000BE18(v7, &qword_10083B020, &unk_1006D8ED0);
      goto LABEL_6;
    }

    (*(v0[62] + 8))(v0[59], v0[61]);
  }

  v8 = v0[60];
  swift_willThrow();
  sub_10000BE18(v8, &qword_10083B020, &unk_1006D8ED0);
LABEL_6:
  v28 = v0[68];
  v29 = v0[70];
  v24 = v0[62];
  v25 = v0[63];
  v26 = v0[61];
  v27 = v0[69];
  v23 = v0[58];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v9 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1006BF740;
  v13 = v12 + v11;
  v14 = (v12 + v11 + *(v9 + 48));
  v15 = enum case for DIPError.PropertyKey.conversationID(_:);
  v16 = type metadata accessor for DIPError.PropertyKey();
  v17 = *(*(v16 - 8) + 104);
  v17(v13, v15, v16);
  v18 = *(v23 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v19 = *(v23 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v14[3] = &type metadata for String;
  v14[4] = &protocol witness table for String;
  *v14 = v18;
  v14[1] = v19;
  v20 = (v13 + v10 + *(v9 + 48));
  v17(v13 + v10, enum case for DIPError.PropertyKey.serverURL(_:), v16);
  v20[3] = &type metadata for String;
  v20[4] = &protocol witness table for String;
  *v20 = 0x69726168732D7073;
  v20[1] = 0xEA0000000000676ELL;
  swift_errorRetain();
  swift_errorRetain();

  sub_10003C9C0(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v24 + 104))(v25, enum case for DIPError.Code.internalError(_:), v26);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v27 + 8))(v29, v28);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1005C80E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[80] = v6;
  v7[79] = a6;
  v7[78] = a5;
  v7[77] = a4;
  v7[76] = a3;
  v7[75] = a2;
  v7[74] = a1;
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v7[81] = swift_task_alloc();
  v7[82] = swift_task_alloc();
  v8 = type metadata accessor for DIPError.Code();
  v7[83] = v8;
  v7[84] = *(v8 - 8);
  v7[85] = swift_task_alloc();
  type metadata accessor for IdentitySharingRequest(0);
  v7[86] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v7[87] = swift_task_alloc();
  v9 = type metadata accessor for DIPSignpost();
  v7[88] = v9;
  v7[89] = *(v9 - 8);
  v7[90] = swift_task_alloc();

  return _swift_task_switch(sub_1005C82B0, 0, 0);
}

uint64_t sub_1005C82B0()
{
  v1 = v0[78];
  v2 = v0[75];
  static DaemonSignposts.identitySharingRequest.getter();
  DIPSignpost.init(_:)();
  v3 = sub_100007224(&qword_1008494C0, &qword_1006E9470);
  v0[91] = v3;
  v0[69] = v3;
  v4 = sub_100032DBC(v0 + 66);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  v5 = swift_task_alloc();
  v0[92] = v5;
  *v5 = v0;
  v5[1] = sub_1005C83E8;
  v6 = v0[77];
  v7 = v0[76];

  return sub_1005C9474((v0 + 66), v7, v6, v1, _swiftEmptyArrayStorage);
}

uint64_t sub_1005C83E8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v6[93] = a1;
  v6[94] = a2;
  v6[95] = v3;

  if (v3)
  {
    v7 = sub_1005C8E20;
  }

  else
  {
    sub_10000BB78(v6 + 66);

    v7 = sub_1005C8520;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005C8520()
{
  v1 = *(v0 + 760);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v2 = sub_100007224(&qword_1008494D0, &unk_1006E9DE0);
  sub_1000BA30C(&qword_1008494D8, &qword_1008494D0, &unk_1006E9DE0, &protocol conformance descriptor for JWSSignedJSON<A>);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    v3 = *(v0 + 672);

    v4 = enum case for DIPError.Code.internalError(_:);
    v5 = *(v3 + 104);
LABEL_5:
    v24 = *(v0 + 752);
    v25 = *(v0 + 744);
    (v5)(*(v0 + 680), v4, *(v0 + 664));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v25, v24);
    v55 = *(v0 + 712);
    v56 = *(v0 + 704);
    v57 = *(v0 + 720);
    v59 = *(v0 + 688);
    v52 = *(v0 + 672);
    v53 = *(v0 + 680);
    v54 = *(v0 + 664);
    v50 = *(v0 + 640);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v26 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v27 = *(*(v26 - 8) + 72);
    v28 = (*(*(v26 - 8) + 80) + 32) & ~*(*(v26 - 8) + 80);
    v51 = 2 * v27;
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1006BFF90;
    v30 = (v29 + v28 + *(v26 + 48));
    v31 = enum case for DIPError.PropertyKey.conversationID(_:);
    v32 = type metadata accessor for DIPError.PropertyKey();
    v33 = *(*(v32 - 8) + 104);
    v33(v29 + v28, v31, v32);
    v34 = *(v50 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
    v35 = *(v50 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
    v30[3] = &type metadata for String;
    v30[4] = &protocol witness table for String;
    *v30 = v34;
    v30[1] = v35;
    v36 = (v29 + v28 + v27 + *(v26 + 48));
    v33(v29 + v28 + v27, enum case for DIPError.PropertyKey.requestID(_:), v32);
    swift_errorRetain();
    swift_errorRetain();

    JWSSignedJSON.payload.getter();
    v38 = *(v59 + 16);
    v37 = *(v59 + 24);

    sub_1005CABD4(v59, type metadata accessor for IdentitySharingRequest);
    v36[3] = &type metadata for String;
    v36[4] = &protocol witness table for String;
    *v36 = v38;
    v36[1] = v37;
    v39 = (v29 + v28 + v51 + *(v26 + 48));
    v33(v29 + v28 + v51, enum case for DIPError.PropertyKey.serverURL(_:), v32);
    v39[3] = &type metadata for String;
    v39[4] = &protocol witness table for String;
    *v39 = 0x69726168732D7073;
    v39[1] = 0xEA0000000000676ELL;
    sub_10003C9C0(v29);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v52 + 104))(v53, enum case for DIPError.Code.internalError(_:), v54);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v55 + 8))(v57, v56);

    v40 = *(v0 + 8);
    goto LABEL_6;
  }

  v6 = *(v0 + 688);

  JWSSignedJSON.payload.getter();
  v8 = *v6;
  v7 = v6[1];
  v10 = v6[2];
  v9 = v6[3];

  sub_1005CABD4(v6, type metadata accessor for IdentitySharingRequest);
  JWSSignedJSON.payload.getter();
  v11 = *(v0 + 288);
  v12 = *(v0 + 304);
  v13 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 272);
  *(v0 + 128) = v11;
  v14 = *(v0 + 320);
  *(v0 + 144) = v12;
  *(v0 + 160) = v14;
  v16 = *(v0 + 208);
  v15 = *(v0 + 224);
  v17 = *(v0 + 192);
  *(v0 + 48) = v16;
  *(v0 + 64) = v15;
  v18 = *(v0 + 224);
  v20 = *(v0 + 240);
  v19 = *(v0 + 256);
  *(v0 + 80) = v20;
  *(v0 + 96) = v19;
  v21 = *(v0 + 192);
  v22 = *(v0 + 176);
  *(v0 + 16) = v22;
  *(v0 + 32) = v21;
  *(v0 + 368) = v16;
  *(v0 + 384) = v18;
  *(v0 + 400) = v20;
  *(v0 + 416) = v13;
  *(v0 + 336) = v22;
  *(v0 + 352) = v17;
  sub_1000B1478(v0 + 16, v0 + 432);
  sub_1000B28AC(v0 + 16);
  v23 = sub_10060A770(v8, v7, v10, v9, (v0 + 336), 0);

  sub_1000ACC70(v0 + 16);
  if (v23)
  {
    v60 = *(v0 + 592);
    v58 = enum case for DIPError.Code.internalError(_:);
    v5 = *(*(v0 + 672) + 104);
    v5(*(v0 + 680));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(*(v2 - 8) + 8))(v60, v2);
    v4 = v58;
    goto LABEL_5;
  }

  v42 = *(v0 + 752);
  v43 = *(v0 + 744);
  v44 = *(v0 + 720);
  v45 = *(v0 + 712);
  v46 = *(v0 + 704);
  v47._countAndFlagsBits = 0x6561373163616336;
  v48._countAndFlagsBits = 0xD00000000000001BLL;
  v48._object = 0x80000001007241E0;
  v47._object = 0xE800000000000000;
  logMilestone(tag:description:)(v47, v48);
  v49.value._countAndFlagsBits = sub_1000CB118();
  DIPSignpost.end(workflowID:isBackground:)(v49, 2);

  sub_10000B90C(v43, v42);
  (*(v45 + 8))(v44, v46);

  v40 = *(v0 + 8);
LABEL_6:

  return v40();
}

uint64_t sub_1005C8E20()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  sub_10000BB78(v0 + 66);
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  if ((*(v1 + 48))(v3, 1, v2) != 1)
  {
    v4 = v0[84];
    v5 = v0[83];
    v6 = v0[81];
    sub_100044D38(v0[82], v6);
    if ((*(v4 + 88))(v6, v5) == enum case for DIPError.Code.httpTooManyRequests(_:))
    {
      v7 = v0[82];
      (*(v0[84] + 104))(v0[85], enum case for DIPError.Code.topekaDownstreamServiceProviderUnavailable(_:), v0[83]);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      sub_10000BE18(v7, &qword_10083B020, &unk_1006D8ED0);
      goto LABEL_6;
    }

    (*(v0[84] + 8))(v0[81], v0[83]);
  }

  v8 = v0[82];
  swift_willThrow();
  sub_10000BE18(v8, &qword_10083B020, &unk_1006D8ED0);
LABEL_6:
  v31 = v0[89];
  v32 = v0[88];
  v33 = v0[90];
  v34 = v0[86];
  v28 = v0[84];
  v29 = v0[85];
  v30 = v0[83];
  v26 = v0[80];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v9 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v27 = 2 * v10;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1006BFF90;
  v13 = v12 + v11;
  v14 = (v12 + v11 + *(v9 + 48));
  v15 = enum case for DIPError.PropertyKey.conversationID(_:);
  v16 = type metadata accessor for DIPError.PropertyKey();
  v17 = *(*(v16 - 8) + 104);
  v17(v13, v15, v16);
  v18 = *(v26 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  v19 = *(v26 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v14[3] = &type metadata for String;
  v14[4] = &protocol witness table for String;
  *v14 = v18;
  v14[1] = v19;
  v20 = (v13 + v10 + *(v9 + 48));
  v17(v13 + v10, enum case for DIPError.PropertyKey.requestID(_:), v16);
  swift_errorRetain();
  swift_errorRetain();

  JWSSignedJSON.payload.getter();
  v22 = *(v34 + 16);
  v21 = *(v34 + 24);

  sub_1005CABD4(v34, type metadata accessor for IdentitySharingRequest);
  v20[3] = &type metadata for String;
  v20[4] = &protocol witness table for String;
  *v20 = v22;
  v20[1] = v21;
  v23 = (v13 + v27 + *(v9 + 48));
  v17(v13 + v27, enum case for DIPError.PropertyKey.serverURL(_:), v16);
  v23[3] = &type metadata for String;
  v23[4] = &protocol witness table for String;
  *v23 = 0x69726168732D7073;
  v23[1] = 0xEA0000000000676ELL;
  sub_10003C9C0(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v28 + 104))(v29, enum case for DIPError.Code.internalError(_:), v30);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v31 + 8))(v33, v32);

  v24 = v0[1];

  return v24();
}

uint64_t sub_1005C9474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[120] = v5;
  v6[119] = a5;
  v6[118] = a4;
  v6[117] = a3;
  v6[116] = a2;
  v6[115] = a1;
  v7 = type metadata accessor for URLRequest();
  v6[121] = v7;
  v6[122] = *(v7 - 8);
  v6[123] = swift_task_alloc();
  v6[124] = swift_task_alloc();
  v6[125] = swift_task_alloc();
  v6[126] = swift_task_alloc();
  v6[127] = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v6[128] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v6[129] = v8;
  v6[130] = *(v8 - 8);
  v6[131] = swift_task_alloc();
  v6[132] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v6[133] = v9;
  v6[134] = *(v9 - 8);
  v6[135] = swift_task_alloc();
  v10 = sub_100007224(&qword_1008494C0, &qword_1006E9470);
  v6[136] = v10;
  v6[137] = *(v10 - 8);
  v6[138] = swift_task_alloc();
  v6[139] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v6[140] = v11;
  v6[141] = *(v11 - 8);
  v6[142] = swift_task_alloc();

  return _swift_task_switch(sub_1005C9744, 0, 0);
}

uint64_t sub_1005C9744(uint64_t a1)
{
  v130 = v1;
  v2 = *(v1 + 920);
  defaultLogger()();
  sub_10001F2EC(v2, v1 + 720);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v1 + 1136);
    v6 = *(v1 + 1128);
    v7 = *(v1 + 1120);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v128 = v9;
    *v8 = 136446210;
    sub_10000BA08((v1 + 720), *(v1 + 744));
    *(v1 + 912) = swift_getDynamicType();
    sub_100007224(&qword_100848F90, &qword_1006E96D0);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    sub_10000BB78((v1 + 720));
    v13 = sub_100141FE4(v10, v12, &v128);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "coreidvd: sendPostRequest of type %{public}s", v8, 0xCu);
    sub_10000BB78(v9);

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v14 = *(v1 + 1136);
    v15 = *(v1 + 1128);
    v16 = *(v1 + 1120);

    sub_10000BB78((v1 + 720));
    (*(v15 + 8))(v14, v16);
  }

  sub_10001F2EC(*(v1 + 920), v1 + 752);
  if (swift_dynamicCast())
  {
    v17 = *(v1 + 920);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_10001F2EC(v17, v1 + 848);
    swift_dynamicCast();
    sub_1000BA30C(&qword_10084A270, &qword_1008494C0, &qword_1006E9470, &protocol conformance descriptor for JWSSignedJSON<A>);
    v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v20 = v19;
    v21 = 0;
    v22 = *(v1 + 1112);
    v23 = *(v1 + 1104);
    v24 = *(v1 + 1096);
    v25 = *(v1 + 1088);

    v26 = *(v24 + 8);
    v26(v23, v25);
    v26(v22, v25);
  }

  else
  {
    sub_100007224(&qword_1008494C8, &qword_1006E9478);
    if (swift_dynamicCast())
    {
      sub_10001F2EC(*(v1 + 920), v1 + 816);
      swift_dynamicCast();
      v27 = *(v1 + 704);
      v28 = *(v1 + 712);
      sub_10000BA08((v1 + 680), v27);
      v18 = (*(v28 + 24))(v27, v28);
      v20 = v29;
      v21 = 0;
      sub_10000BB78((v1 + 680));
      sub_10000BB78((v1 + 640));
    }

    else
    {
      if (!swift_dynamicCast())
      {
        v37 = *(v1 + 1080);
        v38 = *(v1 + 1072);
        v39 = *(v1 + 1064);
        v40 = *(v1 + 920);
        v128 = 0;
        v129 = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        v128 = 0xD000000000000015;
        v129 = 0x80000001007240A0;
        sub_10000BA08(v40, v40[3]);
        swift_getDynamicType();
        v41._countAndFlagsBits = _typeName(_:qualified:)();
        String.append(_:)(v41);

        (*(v38 + 104))(v37, enum case for DIPError.Code.badLogic(_:), v39);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100037214();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        v42 = *(v1 + 1080);
        v43 = *(v1 + 1072);
        v44 = *(v1 + 1064);
        sub_10000BB78((v1 + 752));
        (*(v43 + 104))(v42, enum case for DIPError.Code.internalError(_:), v44);
        swift_errorRetain();
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100037214();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

LABEL_11:

        v45 = *(v1 + 8);

        return v45();
      }

      v30 = *(v1 + 48);
      *(v1 + 168) = *(v1 + 64);
      v31 = *(v1 + 96);
      *(v1 + 184) = *(v1 + 80);
      *(v1 + 200) = v31;
      v32 = *(v1 + 32);
      *(v1 + 120) = *(v1 + 16);
      *(v1 + 136) = v32;
      v33 = *(v1 + 920);
      *(v1 + 216) = *(v1 + 112);
      *(v1 + 152) = v30;
      sub_1000B2178(v1 + 120);
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      sub_10001F2EC(v33, v1 + 784);
      swift_dynamicCast();
      v34 = *(v1 + 304);
      *(v1 + 392) = *(v1 + 288);
      *(v1 + 408) = v34;
      *(v1 + 424) = *(v1 + 320);
      v35 = *(v1 + 240);
      *(v1 + 328) = *(v1 + 224);
      *(v1 + 344) = v35;
      v36 = *(v1 + 272);
      *(v1 + 360) = *(v1 + 256);
      *(v1 + 376) = v36;
      sub_1000A7934();
      v21 = 0;
      v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v20 = v47;
      v48 = *(v1 + 408);
      *(v1 + 600) = *(v1 + 392);
      *(v1 + 616) = v48;
      *(v1 + 632) = *(v1 + 424);
      v49 = *(v1 + 344);
      *(v1 + 536) = *(v1 + 328);
      *(v1 + 552) = v49;
      v50 = *(v1 + 376);
      *(v1 + 568) = *(v1 + 360);
      *(v1 + 584) = v50;
      sub_1000B2178(v1 + 536);
    }
  }

  v51 = *(v1 + 1040);
  v52 = *(v1 + 1032);
  v53 = *(v1 + 1024);
  *(v1 + 1144) = v20;
  *(v1 + 1152) = v18;
  sub_10000BB78((v1 + 752));
  URL.init(string:)();
  if ((*(v51 + 48))(v53, 1, v52) == 1)
  {
    v54 = *(v1 + 1080);
    v55 = *(v1 + 1072);
    v56 = *(v1 + 1064);
    sub_10000BE18(*(v1 + 1024), &unk_100844540, &unk_1006BFBC0);
    (*(v55 + 104))(v54, enum case for DIPError.Code.badLogic(_:), v56);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v18, v20);
    goto LABEL_11;
  }

  v120 = v20;
  v121 = v18;
  v57 = *(v1 + 1056);
  v58 = *(v1 + 1048);
  v59 = *(v1 + 1040);
  v60 = *(v1 + 1032);
  v61 = *(v1 + 1000);
  v62 = *(v1 + 960);
  v63 = *(v1 + 944);
  (*(v59 + 32))(v57, *(v1 + 1024), v60);
  v64 = *(v62 + OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession);
  (*(v59 + 16))(v58, v57, v60);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v122 = v64;
  sub_1005C3550(v61, 0);
  URLRequest.cachePolicy.setter();
  if (v63)
  {
    v65 = *(v1 + 944);
    v68 = *(v65 + 64);
    v67 = v65 + 64;
    v66 = v68;
    v69 = -1;
    v70 = -1 << *(*(v1 + 944) + 32);
    if (-v70 < 64)
    {
      v69 = ~(-1 << -v70);
    }

    v71 = v69 & v66;
    v72 = ((63 - v70) >> 6);
    v124 = *(v1 + 944);

    for (i = 0; v71; v21 = v126)
    {
      v126 = v21;
      v74 = i;
LABEL_25:
      v75 = __clz(__rbit64(v71));
      v71 &= v71 - 1;
      v76 = (v74 << 10) | (16 * v75);
      v77 = (*(v124 + 48) + v76);
      v78 = *v77;
      v61 = v77[1];
      v79 = (*(v124 + 56) + v76);
      v81 = *v79;
      v80 = v79[1];

      v82.value._countAndFlagsBits = v81;
      v82.value._object = v80;
      v83._countAndFlagsBits = v78;
      v83._object = v61;
      URLRequest.setValue(_:forHTTPHeaderField:)(v82, v83);
    }

    while (1)
    {
      v74 = (i + 1);
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v74 >= v72)
      {

        goto LABEL_28;
      }

      v71 = *(v67 + 8 * v74);
      ++i;
      if (v71)
      {
        v126 = v21;
        i = v74;
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_28:
  v84 = *(v1 + 1016);
  v85 = *(v1 + 1008);
  v86 = *(v1 + 992);
  v87 = *(v1 + 976);
  v88 = *(v1 + 968);
  v61 = *(v87 + 32);
  (v61)(v85, *(v1 + 1000), v88);
  URLRequest.httpMethod.setter();
  v89.value._countAndFlagsBits = 0xD000000000000010;
  v90._countAndFlagsBits = 0x2D746E65746E6F43;
  v90._object = 0xEC00000065707954;
  v89.value._object = 0x80000001006FA390;
  URLRequest.setValue(_:forHTTPHeaderField:)(v89, v90);
  sub_10000B8B8(v121, v120);
  URLRequest.httpBody.setter();
  (v61)(v84, v85, v88);
  v72 = *(v87 + 16);
  v72(v86, v84, v88);
  v91 = sub_1005BEE18(v86);
  i = v91;
  *(v1 + 1160) = v91;
  if ((v92 & 1) != 0 && v91)
  {
    v93 = *(v1 + 992);
    v94 = *(v1 + 976);
    v95 = *(v1 + 968);
    v96 = [v91 data];
    v97 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v125 = v98;
    v127 = v97;

    v123 = [i response];
    v99 = *(v94 + 8);
    v99(v93, v95);
    v100 = *(v1 + 1056);
    v101 = *(v1 + 1040);
    v102 = *(v1 + 1032);
    v103 = *(v1 + 1016);
    v104 = *(v1 + 968);
    sub_10000B90C(*(v1 + 1152), *(v1 + 1144));
    v99(v103, v104);
    (*(v101 + 8))(v100, v102);

    v105 = *(v1 + 8);

    return v105(v127, v125, v123, 1);
  }

  v106 = [objc_opt_self() standardUserDefaults];
  v107._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableIfModifiedSinceHeader.getter();
  v108 = NSUserDefaults.internalBool(forKey:)(v107);

  if (!v108 && i)
  {
    v109 = qword_100832D20;
    v71 = i;
    if (v109 == -1)
    {
LABEL_36:
      v110 = sub_1005FFF28(v71);
      if (v111)
      {
        v112._countAndFlagsBits = 0xD000000000000011;
        v112._object = 0x8000000100723320;
        URLRequest.addValue(_:forHTTPHeaderField:)(*&v110, v112);
      }

      goto LABEL_39;
    }

LABEL_43:
    swift_once();
    goto LABEL_36;
  }

LABEL_39:
  v113 = *(v1 + 984);
  v114 = *(v1 + 968);
  v115 = *(v1 + 952);
  v72(v113, *(v1 + 992), v114);
  type metadata accessor for DIPHTTPSession.RequestContainer(0);
  v116 = swift_allocObject();
  *(v1 + 1168) = v116;
  swift_defaultActor_initialize();
  (v61)(v116 + OBJC_IVAR____TtCFC8coreidvd14DIPHTTPSession14performRequestFzZTV10Foundation10URLRequest21acceptableStatusCodesGSaSi_11ignoreCacheSb11isAnonymousSb17overridingAltDSIDGSqSS__TVS1_4DataCSo13NSURLResponseSb_L_16RequestContainer_request, v113, v114);
  v117 = swift_task_alloc();
  *(v1 + 1176) = v117;
  *(v117 + 16) = v116;
  *(v117 + 24) = v122;
  *(v117 + 32) = 0;
  *(v117 + 40) = v115;
  *(v117 + 48) = i;
  v118 = swift_task_alloc();
  *(v1 + 1184) = v118;
  v119 = sub_100007224(&qword_100848F80, &qword_1006E91B0);
  *v118 = v1;
  v118[1] = sub_1005CA6C4;

  return DIPRetrier.retry<A>(operation:)(v1 + 880, &unk_1006E96C0, v117, v119);
}

uint64_t sub_1005CA6C4()
{
  *(*v1 + 1192) = v0;

  if (v0)
  {
    v2 = sub_1005CA9B4;
  }

  else
  {
    v2 = sub_1005CA7F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005CA7F8()
{
  v1 = *(v0 + 1160);
  v2 = *(v0 + 992);
  v3 = *(v0 + 976);
  v4 = *(v0 + 968);

  v5 = *(v3 + 8);
  v5(v2, v4);
  v16 = *(v0 + 880);
  v14 = *(v0 + 896);
  v15 = *(v0 + 888);
  v13 = *(v0 + 904);
  v6 = *(v0 + 1056);
  v7 = *(v0 + 1040);
  v8 = *(v0 + 1032);
  v9 = *(v0 + 1016);
  v10 = *(v0 + 968);
  sub_10000B90C(*(v0 + 1152), *(v0 + 1144));
  v5(v9, v10);
  (*(v7 + 8))(v6, v8);

  v11 = *(v0 + 8);

  return v11(v16, v15, v14, v13);
}

uint64_t sub_1005CA9B4()
{
  v1 = v0[145];
  v2 = v0[144];
  v3 = v0[143];
  v13 = v0[132];
  v4 = v0[130];
  v5 = v0[129];
  v6 = v0[127];
  v7 = v0[124];
  v8 = v0[122];
  v9 = v0[121];

  v10 = *(v8 + 8);
  v10(v7, v9);
  sub_10000B90C(v2, v3);
  v10(v6, v9);
  (*(v4 + 8))(v13, v5);

  v11 = v0[1];

  return v11();
}

id sub_1005CAB68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DIPSPWebService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005CABD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005CAC34()
{

  if (*(v0 + 80))
  {
  }

  return _swift_deallocObject(v0, 120, 7);
}

unint64_t sub_1005CAC98()
{
  result = qword_1008494E0;
  if (!qword_1008494E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008494E0);
  }

  return result;
}

uint64_t sub_1005CACEC(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for URLRequest();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1005CAE7C, 0, 0);
}

uint64_t sub_1005CAE7C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[7];
  v6 = OBJC_IVAR____TtC8coreidvd25DIPTopekaStaticWebService_httpSession;
  (*(v0[12] + 16))(v0[13], v0[6], v0[11]);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.cachePolicy.setter();
  URLRequest.httpMethod.setter();
  v7 = *(v5 + v6);
  v8 = *(v4 + 16);
  v8(v2, v1, v3);
  v9 = sub_1005BEE18(v2);
  v0[19] = v9;
  v10 = [objc_opt_self() standardUserDefaults];
  v11._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableIfModifiedSinceHeader.getter();
  LOBYTE(v5) = NSUserDefaults.internalBool(forKey:)(v11);

  if ((v5 & 1) == 0 && v9)
  {
    v12 = qword_100832D20;
    v13 = v9;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_1005FFF28(v13);
    if (v15)
    {
      v16._object = 0x8000000100723320;
      v16._countAndFlagsBits = 0xD000000000000011;
      URLRequest.addValue(_:forHTTPHeaderField:)(*&v14, v16);
    }
  }

  v17 = v0[16];
  v18 = v0[14];
  v19 = v0[15];
  v8(v17, v0[17], v18);
  type metadata accessor for DIPHTTPSession.RequestContainer(0);
  v20 = swift_allocObject();
  v0[20] = v20;
  swift_defaultActor_initialize();
  (*(v19 + 32))(v20 + OBJC_IVAR____TtCFC8coreidvd14DIPHTTPSession14performRequestFzZTV10Foundation10URLRequest21acceptableStatusCodesGSaSi_11ignoreCacheSb11isAnonymousSb17overridingAltDSIDGSqSS__TVS1_4DataCSo13NSURLResponseSb_L_16RequestContainer_request, v17, v18);
  v21 = swift_task_alloc();
  v0[21] = v21;
  *(v21 + 16) = v20;
  *(v21 + 24) = v7;
  *(v21 + 32) = 0;
  *(v21 + 40) = _swiftEmptyArrayStorage;
  *(v21 + 48) = v9;
  v22 = swift_task_alloc();
  v0[22] = v22;
  v23 = sub_100007224(&qword_100848F80, &qword_1006E91B0);
  *v22 = v0;
  v22[1] = sub_1005CB13C;

  return DIPRetrier.retry<A>(operation:)(v0 + 2, &unk_1006E94E8, v21, v23);
}

uint64_t sub_1005CB13C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1005CB270;
  }

  else
  {
    v2 = sub_1005CB518;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005CB270()
{
  v1 = v0[19];
  v2 = v0[17];
  v12 = v0[18];
  v3 = v0[15];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[9];
  v11 = v0[8];

  v7 = *(v3 + 8);
  v7(v2, v4);
  _StringGuts.grow(_:)(30);

  sub_1002A7708(&qword_1008418B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  (*(v6 + 104))(v5, enum case for DIPError.Code.internalError(_:), v11);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v7(v12, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1005CB518()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 112);

  v6 = *(v4 + 8);
  v6(v2, v5);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  v6(v3, v5);

  v9 = *(v0 + 8);

  return v9(v7, v8);
}

uint64_t sub_1005CB61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = type metadata accessor for DIPError();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v5[18] = v9;
  v5[19] = *(v9 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v5[22] = v10;
  v5[23] = *(v10 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_1005CB8BC, 0, 0);
}

void sub_1005CB8BC(uint64_t a1)
{
  v2 = v1[25];
  v3 = v1[23];
  v4 = v1[22];
  v18 = v1[20];
  v5 = v1[6];
  v19 = v1[5];
  v7 = v1[3];
  v6 = v1[4];
  v8 = v1[2];
  Date.init()();
  static Date.- infix(_:_:)();
  v9 = *(v3 + 8);
  v1[27] = v9;
  v1[28] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v4);
  Date.init()();
  static Date.+ infix(_:_:)();
  v9(v2, v4);
  sub_1005CEE7C(v5 + OBJC_IVAR____TtC8coreidvd25DIPTopekaStaticWebService_baseURL, v8, v7, v6, v19, v18);
  (*(v1[19] + 32))(v1[21], v1[20], v1[18]);
  if (qword_100832D20 != -1)
  {
    swift_once();
  }

  v11 = v1[23];
  v10 = v1[24];
  v12 = v1[22];
  v14 = v1[16];
  v13 = v1[17];
  v15 = *(v11 + 16);
  v15(v13, v1[26], v12);
  v16 = *(v11 + 56);
  v16(v13, 0, 1, v12);
  v15(v14, v10, v12);
  v16(v14, 0, 1, v12);

  v17 = swift_task_alloc();
  v1[29] = v17;
  *v17 = v1;
  v17[1] = sub_1005CBF30;

  JUMPOUT(0x100602B64);
}

uint64_t sub_1005CBF30()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);

  sub_10000BE18(v2, &unk_100849400, &unk_1006BFBB0);
  sub_10000BE18(v1, &unk_100849400, &unk_1006BFBB0);

  return _swift_task_switch(sub_1005CC0E8, 0, 0);
}

uint64_t sub_1005CC0E8()
{
  v1 = v0[27];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[22];
  (*(v0[19] + 8))(v0[21], v0[18]);
  v1(v3, v4);
  v1(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1005CC204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 128) = a6;
  *(v7 + 136) = v6;
  *(v7 + 41) = a5;
  *(v7 + 112) = a3;
  *(v7 + 120) = a4;
  *(v7 + 96) = a1;
  *(v7 + 104) = a2;
  v8 = type metadata accessor for Logger();
  *(v7 + 144) = v8;
  *(v7 + 152) = *(v8 - 8);
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  v9 = sub_100007224(&qword_1008495D0, &qword_1006E9530);
  *(v7 + 176) = v9;
  *(v7 + 184) = *(v9 - 8);
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  v10 = type metadata accessor for DIPError.Code();
  *(v7 + 208) = v10;
  *(v7 + 216) = *(v10 - 8);
  *(v7 + 224) = swift_task_alloc();
  sub_100007224(&unk_10084A260, &qword_1006EA050);
  *(v7 + 232) = swift_task_alloc();
  sub_100007224(&qword_10083B038, &unk_1006D9160);
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = swift_task_alloc();
  v11 = type metadata accessor for URLRequest();
  *(v7 + 256) = v11;
  *(v7 + 264) = *(v11 - 8);
  *(v7 + 272) = swift_task_alloc();
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();
  v12 = type metadata accessor for URL();
  *(v7 + 296) = v12;
  *(v7 + 304) = *(v12 - 8);
  *(v7 + 312) = swift_task_alloc();
  *(v7 + 320) = swift_task_alloc();
  v13 = type metadata accessor for DIPSignpost.Config();
  *(v7 + 328) = v13;
  *(v7 + 336) = *(v13 - 8);
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = swift_task_alloc();
  v14 = type metadata accessor for DIPSignpost();
  *(v7 + 360) = v14;
  *(v7 + 368) = *(v14 - 8);
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = swift_task_alloc();

  return _swift_task_switch(sub_1005CC5D4, 0, 0);
}

uint64_t sub_1005CC5D4()
{
  v1 = *(v0 + 136);
  v90 = *(v0 + 320);
  v93 = *(v0 + 120);
  v89 = *(v0 + 112);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  static DaemonSignposts.getStaticAssetRequest.getter();
  DIPSignpost.init(_:)();
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v4 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006BF520;
  v7 = v6 + v5;
  v8 = (v7 + v4[14]);
  v9 = enum case for DIPError.PropertyKey.spProviderID(_:);
  v10 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v10 - 8) + 104))(v7, v9, v10);
  v8[3] = &type metadata for String;
  v8[4] = &protocol witness table for String;
  *v8 = 0x61746E6567616DLL;
  v8[1] = 0xE700000000000000;
  *(v0 + 392) = sub_10003C9C0(v6);
  swift_setDeallocating();
  sub_10000BE18(v7, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  sub_1005CEE7C(v1 + OBJC_IVAR____TtC8coreidvd25DIPTopekaStaticWebService_baseURL, v3, v2, v89, v93, v90);
  v11 = *(v0 + 360);
  v12 = *(v0 + 368);
  v13 = *(v0 + 336);
  v91 = *(v0 + 328);
  v14 = *(v0 + 248);
  v15 = *(v0 + 232);
  v16 = *(v0 + 128);
  v94 = *(v0 + 41);
  (*(*(v0 + 304) + 16))(*(v0 + 312), *(v0 + 320), *(v0 + 296));
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.cachePolicy.setter();
  URLRequest.httpMethod.setter();
  v17 = *(v12 + 56);
  v17(v14, 1, 1, v11);
  sub_1005D7000(v16, v15);
  if ((*(v13 + 48))(v15, 1, v91) == 1)
  {
    sub_10000BE18(*(v0 + 232), &unk_10084A260, &qword_1006EA050);
  }

  else
  {
    v18 = *(v0 + 352);
    v19 = *(v0 + 360);
    v21 = *(v0 + 336);
    v20 = *(v0 + 344);
    v22 = *(v0 + 328);
    v24 = *(v0 + 240);
    v23 = *(v0 + 248);
    (*(v21 + 32))(v20, *(v0 + 232), v22);
    (*(v21 + 16))(v18, v20, v22);
    DIPSignpost.init(_:)();
    (*(v21 + 8))(v20, v22);
    v17(v24, 0, 1, v19);
    sub_1005D7AFC(v24, v23);
  }

  v25 = *(v0 + 280);
  v26 = *(*(v0 + 136) + OBJC_IVAR____TtC8coreidvd25DIPTopekaStaticWebService_httpSession);
  v27 = *(*(v0 + 264) + 16);
  v27(v25, *(v0 + 288), *(v0 + 256));
  v28 = sub_1005BEE18(v25);
  v30 = v28;
  *(v0 + 400) = v28;
  if ((v94 & 1) == 0 && (v29 & 1) != 0 && v28)
  {
    v31 = *(v0 + 280);
    v32 = *(v0 + 256);
    v33 = *(v0 + 264);
    v34 = [v28 data];
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v87 = [v30 response];
    v88 = *(v33 + 8);
    v88(v31, v32);
    v38 = *(v0 + 360);
    v39 = *(v0 + 368);
    v40 = *(v0 + 248);
    if (!(*(v39 + 48))(v40, 1, v38))
    {
      v41 = *(v0 + 376);
      (*(v39 + 16))(v41, v40, v38);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      (*(v39 + 8))(v41, v38);
    }

    if ((*(v0 + 41) & 1) == 0)
    {
      type metadata accessor for DaemonAnalytics();
      static DaemonAnalytics.sendStaticAssetFetchedEvent(wasLoadedFromCache:)();
    }

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1005BE470(&qword_1008495D8, &qword_1008495D0, &qword_1006E9530);
    v92 = v37;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v57 = *(v0 + 192);
    v58 = *(v0 + 200);
    v59 = *(v0 + 176);
    v60 = *(v0 + 184);
    defaultLogger()();
    (*(v60 + 16))(v57, v58, v59);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v64 = swift_slowAlloc();
      *v64 = 134217984;
      JWSSignedJSON.payload.getter();

      v65 = *(v0 + 72);
      if (v65)
      {
        v66 = *(v65 + 16);
      }

      else
      {
        v66 = 0;
      }

      v86 = *(*(v0 + 184) + 8);
      v86(*(v0 + 192), *(v0 + 176));
      *(v64 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v61, v62, "Image assets count -> %ld", v64, 0xCu);
    }

    else
    {
      v86 = *(*(v0 + 184) + 8);
      v86(*(v0 + 192), *(v0 + 176));
    }

    v67 = v61;
    v85 = *(v0 + 384);
    v68 = *(v0 + 368);
    v84 = *(v0 + 360);
    v69 = *(v0 + 304);
    v81 = *(v0 + 296);
    v82 = *(v0 + 320);
    v79 = *(v0 + 256);
    v80 = *(v0 + 288);
    v83 = *(v0 + 248);
    v70 = *(v0 + 200);
    v71 = *(v0 + 176);
    v73 = *(v0 + 152);
    v72 = *(v0 + 160);
    v74 = *(v0 + 144);

    (*(v73 + 8))(v72, v74);
    JWSSignedJSON.payload.getter();

    sub_10000B90C(v35, v92);
    v86(v70, v71);
    v88(v80, v79);
    (*(v69 + 8))(v82, v81);
    (*(v68 + 8))(v85, v84);
    v75 = *(v0 + 48);
    v76 = *(v0 + 56);
    sub_10000BE18(v83, &qword_10083B038, &unk_1006D9160);

    v77 = *(v0 + 8);

    return v77(v75, v76);
  }

  else
  {
    v42 = [objc_opt_self() standardUserDefaults];
    v43._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableIfModifiedSinceHeader.getter();
    v44 = NSUserDefaults.internalBool(forKey:)(v43);

    if (!v44 && v30)
    {
      v45 = qword_100832D20;
      v46 = v30;
      if (v45 != -1)
      {
        swift_once();
      }

      v47 = sub_1005FFF28(v46);
      if (v48)
      {
        v49._object = 0x8000000100723320;
        v49._countAndFlagsBits = 0xD000000000000011;
        URLRequest.addValue(_:forHTTPHeaderField:)(*&v47, v49);
      }
    }

    v50 = *(v0 + 272);
    v51 = *(v0 + 256);
    v52 = *(v0 + 264);
    v27(v50, *(v0 + 280), v51);
    type metadata accessor for DIPHTTPSession.RequestContainer(0);
    v53 = swift_allocObject();
    *(v0 + 408) = v53;
    swift_defaultActor_initialize();
    (*(v52 + 32))(v53 + OBJC_IVAR____TtCFC8coreidvd14DIPHTTPSession14performRequestFzZTV10Foundation10URLRequest21acceptableStatusCodesGSaSi_11ignoreCacheSb11isAnonymousSb17overridingAltDSIDGSqSS__TVS1_4DataCSo13NSURLResponseSb_L_16RequestContainer_request, v50, v51);
    v54 = swift_task_alloc();
    *(v0 + 416) = v54;
    *(v54 + 16) = v53;
    *(v54 + 24) = v26;
    *(v54 + 32) = 0;
    *(v54 + 40) = _swiftEmptyArrayStorage;
    *(v54 + 48) = v30;
    v55 = swift_task_alloc();
    *(v0 + 424) = v55;
    v56 = sub_100007224(&qword_100848F80, &qword_1006E91B0);
    *v55 = v0;
    v55[1] = sub_1005CD354;

    return DIPRetrier.retry<A>(operation:)(v0 + 16, &unk_1006E9538, v54, v56);
  }
}

uint64_t sub_1005CD354()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_1005CDDC8;
  }

  else
  {
    v2 = sub_1005CD488;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005CD488()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);

  v69 = *(v4 + 8);
  v69(v2, v3);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v70 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 432);
  v9 = *(v0 + 360);
  v10 = *(v0 + 368);
  v11 = *(v0 + 248);
  if ((*(v10 + 48))(v11, 1, v9))
  {
    if (*(v0 + 41))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v18 = *(v0 + 376);
  (*(v10 + 16))(v18, v11, v9);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v10 + 8))(v18, v9);
  if ((*(v0 + 41) & 1) == 0)
  {
LABEL_3:
    type metadata accessor for DaemonAnalytics();
    static DaemonAnalytics.sendStaticAssetFetchedEvent(wasLoadedFromCache:)();
  }

LABEL_4:
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005BE470(&qword_1008495D8, &qword_1008495D0, &qword_1006E9530);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v68 = v5;
  if (v8)
  {

    if (v7)
    {
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v12 = qword_100882498;
      isa = URLRequest._bridgeToObjectiveC()().super.isa;
      [v12 removeCachedResponseForRequest:isa];
    }

    v14 = *(v0 + 368);
    v65 = *(v0 + 360);
    v66 = *(v0 + 384);
    v15 = *(v0 + 304);
    v62 = *(v0 + 296);
    v63 = *(v0 + 320);
    v60 = *(v0 + 256);
    v61 = *(v0 + 288);
    v64 = *(v0 + 248);
    (*(*(v0 + 216) + 104))(*(v0 + 224), enum case for DIPError.Code.internalError(_:), *(v0 + 208));
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    swift_errorRetain();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000B90C(v6, v5);

    v69(v61, v60);
    (*(v15 + 8))(v63, v62);
    (*(v14 + 8))(v66, v65);
    sub_10000BE18(v64, &qword_10083B038, &unk_1006D9160);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {

    if ((v7 & 1) == 0)
    {
      if (qword_100832D20 != -1)
      {
        swift_once();
      }

      v19 = qword_100882498;
      v20 = objc_allocWithZone(NSCachedURLResponse);
      v21 = Data._bridgeToObjectiveC()().super.isa;
      v22 = [v20 initWithResponse:v70 data:v21];

      v23 = sub_100600EC4(v22, 0, 1);
      if (v23)
      {
        v24 = v23;
        v25 = URLRequest._bridgeToObjectiveC()().super.isa;
        v26 = type metadata accessor for DIPURLCache();
        *(v0 + 80) = v19;
        *(v0 + 88) = v26;
        objc_msgSendSuper2((v0 + 80), "storeCachedResponse:forRequest:", v24, v25);

        v22 = v25;
      }

      defaultLogger()();
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Identity Proofing Static asset response stored in the cache", v29, 2u);
      }

      v30 = *(v0 + 168);
      v31 = *(v0 + 144);
      v32 = *(v0 + 152);

      (*(v32 + 8))(v30, v31);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
    }

    v33 = *(v0 + 192);
    v34 = *(v0 + 200);
    v35 = *(v0 + 176);
    v36 = *(v0 + 184);
    defaultLogger()();
    (*(v36 + 16))(v33, v34, v35);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    v67 = v37;
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      JWSSignedJSON.payload.getter();

      v40 = *(v0 + 72);
      if (v40)
      {
        v41 = *(v40 + 16);
      }

      else
      {
        v41 = 0;
      }

      v59 = *(*(v0 + 184) + 8);
      v59(*(v0 + 192), *(v0 + 176));
      *(v39 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v67, v38, "Image assets count -> %ld", v39, 0xCu);
    }

    else
    {
      v59 = *(*(v0 + 184) + 8);
      v59(*(v0 + 192), *(v0 + 176));
    }

    v58 = *(v0 + 384);
    v42 = *(v0 + 368);
    v57 = *(v0 + 360);
    v43 = *(v0 + 304);
    v54 = *(v0 + 296);
    v55 = *(v0 + 320);
    v52 = *(v0 + 256);
    v53 = *(v0 + 288);
    v56 = *(v0 + 248);
    v44 = *(v0 + 200);
    v45 = *(v0 + 176);
    v47 = *(v0 + 152);
    v46 = *(v0 + 160);
    v48 = *(v0 + 144);

    (*(v47 + 8))(v46, v48);
    JWSSignedJSON.payload.getter();

    sub_10000B90C(v6, v68);
    v59(v44, v45);
    v69(v53, v52);
    (*(v43 + 8))(v55, v54);
    (*(v42 + 8))(v58, v57);
    v49 = *(v0 + 48);
    v50 = *(v0 + 56);
    sub_10000BE18(v56, &qword_10083B038, &unk_1006D9160);

    v51 = *(v0 + 8);

    return v51(v49, v50);
  }
}

uint64_t sub_1005CDDC8()
{
  v1 = v0[50];
  v18 = v0[48];
  v12 = v0[46];
  v17 = v0[45];
  v2 = v0[38];
  v14 = v0[37];
  v15 = v0[40];
  v3 = v0[35];
  v13 = v0[36];
  v4 = v0[32];
  v5 = v0[33];
  v16 = v0[31];
  v6 = v0[27];
  v7 = v0[28];
  v8 = v0[26];

  v9 = *(v5 + 8);
  v9(v3, v4);
  (*(v6 + 104))(v7, enum case for DIPError.Code.internalError(_:), v8);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9(v13, v4);
  (*(v2 + 8))(v15, v14);
  (*(v12 + 8))(v18, v17);
  sub_10000BE18(v16, &qword_10083B038, &unk_1006D9160);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005CE0D4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1005CE288, 0, 0);
}

uint64_t sub_1005CE288(uint64_t a1)
{
  v23 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[13];
  v5 = v1[14];
  v7 = v1[12];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v22);
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to download for url %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v6 + 8))(v5, v7);
  v12 = v1[9];
  v13 = v1[10];
  v14 = v1[8];
  URL.init(string:)();
  if ((*(v13 + 48))(v14, 1, v12) == 1)
  {
    v15 = v1[7];
    v16 = v1[5];
    v17 = v1[6];
    sub_10000BE18(v1[8], &unk_100844540, &unk_1006BFBC0);
    (*(v17 + 104))(v15, enum case for DIPError.Code.invalidImageAssetDownloadURL(_:), v16);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v18 = v1[1];

    return v18();
  }

  else
  {
    (*(v1[10] + 32))(v1[11], v1[8], v1[9]);
    v20 = swift_task_alloc();
    v1[15] = v20;
    *v20 = v1;
    v20[1] = sub_1005CE608;
    v21 = v1[11];

    return sub_1005D4B54(v21);
  }
}

uint64_t sub_1005CE608(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v7 = sub_1005CE7E8;
  }

  else
  {
    *(v6 + 136) = a2;
    *(v6 + 144) = a1;
    v7 = sub_1005CE73C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005CE73C()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];
  v3 = v0[17];
  v2 = v0[18];

  return v1(v2, v3);
}

uint64_t sub_1005CE7E8()
{
  v1 = v0[10];
  v5 = v0[11];
  v2 = v0[9];
  (*(v0[6] + 104))(v0[7], enum case for DIPError.Code.internalError(_:), v0[5]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v1 + 8))(v5, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1005CE9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v34._countAndFlagsBits = a4;
  v34._object = a5;
  v37 = a1;
  v8 = type metadata accessor for DIPError.Code();
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8);
  v33 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v10 - 8);
  v30 = &v29 - v11;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100007224(&qword_100848FA0, &qword_1006E94D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v29 - v17;
  v19 = type metadata accessor for URLComponents();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a2;
  v36 = a3;

  v23._countAndFlagsBits = 47;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  String.append(_:)(v34);
  URL.appendingPathComponent(_:)();

  URLComponents.init(url:resolvingAgainstBaseURL:)();
  (*(v13 + 8))(v15, v12);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v24 = &qword_100848FA0;
    v25 = &qword_1006E94D0;
    v26 = v18;
LABEL_5:
    sub_10000BE18(v26, v24, v25);
    (*(v31 + 104))(v33, enum case for DIPError.Code.invalidStaticWorkflowBaseURL(_:), v32);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  (*(v20 + 32))(v22, v18, v19);
  v27 = v30;
  URLComponents.url.getter();
  (*(v20 + 8))(v22, v19);
  if ((*(v13 + 48))(v27, 1, v12) == 1)
  {
    v24 = &unk_100844540;
    v25 = &unk_1006BFBC0;
    v26 = v27;
    goto LABEL_5;
  }

  return (*(v13 + 32))(v29, v27, v12);
}

uint64_t sub_1005CEE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v34._countAndFlagsBits = a4;
  v34._object = a5;
  v37 = a1;
  v8 = type metadata accessor for DIPError.Code();
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8);
  v33 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v10 - 8);
  v30 = &v29 - v11;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100007224(&qword_100848FA0, &qword_1006E94D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v29 - v17;
  v19 = type metadata accessor for URLComponents();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a2;
  v36 = a3;

  v23._countAndFlagsBits = 47;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  String.append(_:)(v34);
  URL.appendingPathComponent(_:)();

  URLComponents.init(url:resolvingAgainstBaseURL:)();
  (*(v13 + 8))(v15, v12);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v24 = &qword_100848FA0;
    v25 = &qword_1006E94D0;
    v26 = v18;
LABEL_5:
    sub_10000BE18(v26, v24, v25);
    (*(v31 + 104))(v33, enum case for DIPError.Code.invalidStaticAssetsBaseURL(_:), v32);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  (*(v20 + 32))(v22, v18, v19);
  v27 = v30;
  URLComponents.url.getter();
  (*(v20 + 8))(v22, v19);
  if ((*(v13 + 48))(v27, 1, v12) == 1)
  {
    v24 = &unk_100844540;
    v25 = &unk_1006BFBC0;
    v26 = v27;
    goto LABEL_5;
  }

  return (*(v13 + 32))(v29, v27, v12);
}

uint64_t sub_1005CF338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v34._countAndFlagsBits = a4;
  v34._object = a5;
  v37 = a1;
  v8 = type metadata accessor for DIPError.Code();
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8);
  v33 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  __chkstk_darwin(v10 - 8);
  v30 = &v29 - v11;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100007224(&qword_100848FA0, &qword_1006E94D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v29 - v17;
  v19 = type metadata accessor for URLComponents();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a2;
  v36 = a3;

  v23._countAndFlagsBits = 47;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  String.append(_:)(v34);
  URL.appendingPathComponent(_:)();

  URLComponents.init(url:resolvingAgainstBaseURL:)();
  (*(v13 + 8))(v15, v12);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v24 = &qword_100848FA0;
    v25 = &qword_1006E94D0;
    v26 = v18;
LABEL_5:
    sub_10000BE18(v26, v24, v25);
    (*(v31 + 104))(v33, enum case for DIPError.Code.invalidStaticAssetsBaseURL(_:), v32);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }

  (*(v20 + 32))(v22, v18, v19);
  v27 = v30;
  URLComponents.url.getter();
  (*(v20 + 8))(v22, v19);
  if ((*(v13 + 48))(v27, 1, v12) == 1)
  {
    v24 = &unk_100844540;
    v25 = &unk_1006BFBC0;
    v26 = v27;
    goto LABEL_5;
  }

  return (*(v13 + 32))(v29, v27, v12);
}

uint64_t sub_1005CF7F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22 = a2;
  v5 = type metadata accessor for DIPHTTPSession.Configuration(0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC8coreidvd25DIPTopekaStaticWebService_baseURL;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v3 + v12, a1, v13);
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v9 + 8))(v11, v8);
  v18 = (v3 + OBJC_IVAR____TtC8coreidvd25DIPTopekaStaticWebService_conversation);
  *v18 = v15;
  v18[1] = v17;
  v19 = v22;
  sub_1002BEB48(v22, v7);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  type metadata accessor for DIPHTTPSession(0);
  swift_allocObject();
  v20 = sub_1005BE690(v23, v7);
  sub_1005D7B6C(v19, type metadata accessor for DIPHTTPSession.Configuration);
  (*(v14 + 8))(a1, v13);
  *(v3 + OBJC_IVAR____TtC8coreidvd25DIPTopekaStaticWebService_httpSession) = v20;
  return v3;
}

uint64_t sub_1005CFA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 104) = a7;
  *(v8 + 112) = v7;
  *(v8 + 41) = a6;
  *(v8 + 88) = a4;
  *(v8 + 96) = a5;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;
  *(v8 + 64) = a1;
  v9 = type metadata accessor for DIPError.Code();
  *(v8 + 120) = v9;
  *(v8 + 128) = *(v9 - 8);
  *(v8 + 136) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 144) = v10;
  *(v8 + 152) = *(v10 - 8);
  *(v8 + 160) = swift_task_alloc();
  v11 = sub_100007224(&qword_1008495C0, &unk_1006E94C0);
  *(v8 + 168) = v11;
  *(v8 + 176) = *(v11 - 8);
  *(v8 + 184) = swift_task_alloc();
  sub_100007224(&unk_10084A260, &qword_1006EA050);
  *(v8 + 192) = swift_task_alloc();
  sub_100007224(&qword_10083B038, &unk_1006D9160);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  v12 = type metadata accessor for URLRequest();
  *(v8 + 216) = v12;
  *(v8 + 224) = *(v12 - 8);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v13 = type metadata accessor for URL();
  *(v8 + 256) = v13;
  *(v8 + 264) = *(v13 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  v14 = type metadata accessor for DIPSignpost.Config();
  *(v8 + 288) = v14;
  *(v8 + 296) = *(v14 - 8);
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  v15 = type metadata accessor for DIPSignpost();
  *(v8 + 320) = v15;
  *(v8 + 328) = *(v15 - 8);
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();

  return _swift_task_switch(sub_1005CFDE4, 0, 0);
}

uint64_t sub_1005CFDE4()
{
  v1 = *(v0 + 112);
  v74 = *(v0 + 280);
  v77 = *(v0 + 96);
  v73 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  static DaemonSignposts.getStaticWorkflowRequest.getter();
  DIPSignpost.init(_:)();
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v4 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006BF520;
  v7 = v6 + v5;
  v8 = (v7 + v4[14]);
  v9 = enum case for DIPError.PropertyKey.spProviderID(_:);
  v10 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v10 - 8) + 104))(v7, v9, v10);
  v8[3] = &type metadata for String;
  v8[4] = &protocol witness table for String;
  *v8 = 0x61746E6567616DLL;
  v8[1] = 0xE700000000000000;
  *(v0 + 352) = sub_10003C9C0(v6);
  swift_setDeallocating();
  sub_10000BE18(v7, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  sub_1005CE9C0(v1 + OBJC_IVAR____TtC8coreidvd25DIPTopekaStaticWebService_baseURL, v3, v2, v73, v77, v74);
  v12 = *(v0 + 320);
  v13 = *(v0 + 328);
  v14 = *(v0 + 296);
  v75 = *(v0 + 288);
  v15 = *(v0 + 208);
  v16 = *(v0 + 192);
  v17 = *(v0 + 104);
  v78 = *(v0 + 41);
  (*(*(v0 + 264) + 16))(*(v0 + 272), *(v0 + 280), *(v0 + 256));
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.cachePolicy.setter();
  URLRequest.httpMethod.setter();
  v18 = *(v13 + 56);
  v18(v15, 1, 1, v12);
  sub_1005D7000(v17, v16);
  v19 = (*(v14 + 48))(v16, 1, v75);
  if (v19 == 1)
  {
    sub_10000BE18(*(v0 + 192), &unk_10084A260, &qword_1006EA050);
  }

  else
  {
    v20 = *(v0 + 312);
    v21 = *(v0 + 320);
    v23 = *(v0 + 296);
    v22 = *(v0 + 304);
    v24 = *(v0 + 288);
    v26 = *(v0 + 200);
    v25 = *(v0 + 208);
    (*(v23 + 32))(v22, *(v0 + 192), v24);
    (*(v23 + 16))(v20, v22, v24);
    DIPSignpost.init(_:)();
    (*(v23 + 8))(v22, v24);
    v18(v26, 0, 1, v21);
    sub_1005D7AFC(v26, v25);
  }

  v27 = *(v0 + 240);
  v28 = *(*(v0 + 112) + OBJC_IVAR____TtC8coreidvd25DIPTopekaStaticWebService_httpSession);
  v29 = *(*(v0 + 224) + 16);
  v29(v27, *(v0 + 248), *(v0 + 216));
  v30 = sub_1005BEE18(v27);
  v32 = v30;
  *(v0 + 360) = v30;
  if ((v78 & 1) == 0 && (v31 & 1) != 0 && v30)
  {
    v33 = *(v0 + 240);
    v35 = *(v0 + 216);
    v34 = *(v0 + 224);
    v36 = [v30 data];
    v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v79 = [v32 response];
    v76 = *(v34 + 8);
    v76(v33, v35);
    v41 = *(v0 + 320);
    v40 = *(v0 + 328);
    v42 = *(v0 + 208);
    if (!(*(v40 + 48))(v42, 1, v41))
    {
      v43 = *(v0 + 336);
      (*(v40 + 16))(v43, v42, v41);
      DIPSignpost.end(workflowID:isBackground:)(0, 2);
      (*(v40 + 8))(v43, v41);
    }

    if ((*(v0 + 41) & 1) == 0)
    {
      type metadata accessor for DaemonAnalytics();
      static DaemonAnalytics.sendStaticWorkflowFetchedEvent(workflowID:wasLoadedFromCache:)();
    }

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1005BE470(&qword_1008495C8, &qword_1008495C0, &unk_1006E94C0);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v72 = *(v0 + 344);
    v59 = *(v0 + 328);
    v71 = *(v0 + 320);
    v60 = *(v0 + 264);
    v68 = *(v0 + 256);
    v69 = *(v0 + 280);
    v67 = *(v0 + 248);
    v61 = *(v0 + 216);
    v70 = *(v0 + 208);
    v63 = *(v0 + 176);
    v62 = *(v0 + 184);
    v64 = v39;
    v65 = *(v0 + 168);
    JWSSignedJSON.payload.getter();

    sub_10000B90C(v37, v64);
    (*(v63 + 8))(v62, v65);
    v76(v67, v61);
    (*(v60 + 8))(v69, v68);
    (*(v59 + 8))(v72, v71);
    sub_10000BE18(v70, &qword_10083B038, &unk_1006D9160);

    v66 = *(v0 + 8);

    return v66();
  }

  else
  {
    v44 = [objc_opt_self() standardUserDefaults];
    v45._countAndFlagsBits = static DaemonInternalDefaultsKeys.disableIfModifiedSinceHeader.getter();
    v46 = NSUserDefaults.internalBool(forKey:)(v45);

    if (!v46 && v32)
    {
      v47 = qword_100832D20;
      v48 = v32;
      if (v47 != -1)
      {
        swift_once();
      }

      v49 = sub_1005FFF28(v48);
      if (v50)
      {
        v51._countAndFlagsBits = 0xD000000000000011;
        v51._object = 0x8000000100723320;
        URLRequest.addValue(_:forHTTPHeaderField:)(*&v49, v51);
      }
    }

    v52 = *(v0 + 232);
    v53 = *(v0 + 216);
    v54 = *(v0 + 224);
    v29(v52, *(v0 + 240), v53);
    type metadata accessor for DIPHTTPSession.RequestContainer(0);
    v55 = swift_allocObject();
    *(v0 + 368) = v55;
    swift_defaultActor_initialize();
    (*(v54 + 32))(v55 + OBJC_IVAR____TtCFC8coreidvd14DIPHTTPSession14performRequestFzZTV10Foundation10URLRequest21acceptableStatusCodesGSaSi_11ignoreCacheSb11isAnonymousSb17overridingAltDSIDGSqSS__TVS1_4DataCSo13NSURLResponseSb_L_16RequestContainer_request, v52, v53);
    v56 = swift_task_alloc();
    *(v0 + 376) = v56;
    *(v56 + 16) = v55;
    *(v56 + 24) = v28;
    *(v56 + 32) = 0;
    *(v56 + 40) = _swiftEmptyArrayStorage;
    *(v56 + 48) = v32;
    v57 = swift_task_alloc();
    *(v0 + 384) = v57;
    v58 = sub_100007224(&qword_100848F80, &qword_1006E91B0);
    *v57 = v0;
    v57[1] = sub_1005D0A98;

    return DIPRetrier.retry<A>(operation:)(v0 + 16, &unk_1006E96C0, v56, v58);
  }
}