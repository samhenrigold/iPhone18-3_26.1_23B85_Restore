uint64_t sub_10037FA98()
{
  *(*v1 + 3216) = v0;

  if (v0)
  {
    v2 = sub_100381814;
  }

  else
  {
    v2 = sub_10037FBAC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10037FBAC()
{
  sub_10000BA08((v0[337] + 16), *(v0[337] + 40));
  v1 = swift_task_alloc();
  v0[403] = v1;
  *v1 = v0;
  v1[1] = sub_10037FC58;
  v2 = v0[364];
  v3 = v0[360];

  return sub_1005F08FC(v3, v2);
}

uint64_t sub_10037FC58()
{
  *(*v1 + 3232) = v0;

  if (v0)
  {
    v2 = sub_1003809F0;
  }

  else
  {
    v2 = sub_10037FD6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10037FD6C()
{
  v1 = (v0 + 585);
  v110 = (v0 + 393);
  v2 = *(v0 + 2888);
  sub_100381F00(*(v0 + 2880), v2, type metadata accessor for RegisterTerminalResponse);
  if (!*(v2 + 112))
  {
    v106 = *(v0 + 3200);
    v108 = v0 + 1744;
    v67 = *(v0 + 3192);
    v102 = *(v0 + 3176);
    v104 = *(v0 + 3184);
    v100 = *(v0 + 3168);
    v98 = *(v0 + 3160);
    v94 = *(v0 + 3152);
    v92 = *(v0 + 3144);
    v90 = *(v0 + 3136);
    v86 = *(v0 + 3128);
    v96 = *(v0 + 586);
    v88 = *(v0 + 3120);
    v83 = *(v0 + 3104);
    v85 = *(v0 + 3112);
    v81 = *(v0 + 3096);
    v75 = *(v0 + 3080);
    v65 = *(v0 + 3064);
    v61 = *(v0 + 2992);
    v63 = *(v0 + 3016);
    v59 = *(v0 + 2912);
    v34 = *(v0 + 2904);
    v35 = *(v0 + 2896);
    v77 = *(v0 + 2888);
    v78 = *(v0 + 3088);
    v36 = *v1;
    v71 = *(v0 + 2656);
    v73 = *(v0 + 2672);
    v69 = *(v0 + 2632);
    v70 = *(v0 + 2640);
    (*(*(v0 + 2776) + 104))(*(v0 + 2792), enum case for DIPError.Code.serverResponseInconsistent(_:), *(v0 + 2768));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100381EB8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v9 = v36;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v34 + 8))(v59, v35);
    v65(v63, v61);
    v10 = 1928;
    v11 = 1920;
    *(v0 + 1744) = v67;
    v12 = 1912;
    v13 = 1904;
    v14 = 1896;
    v15 = 1889;
    v16 = 1888;
    v17 = 1880;
    v18 = 1872;
    v19 = 1864;
    v20 = 1856;
    v21 = 1848;
    v22 = 1840;
    v23 = 1832;
    v24 = 1824;
    v25 = 1816;
    v26 = 1808;
    v27 = 1800;
    v28 = 1792;
    v29 = 1784;
    v30 = 1776;
    v31 = 1768;
    v32 = 1760;
    v33 = 1752;
    goto LABEL_5;
  }

  v3 = *(v0 + 3232);
  v4 = decodeCertificateChain(fromBase64DER:)();
  if (v3)
  {
    v106 = *(v0 + 3200);
    v108 = v0 + 1936;
    v5 = *(v0 + 3192);
    v102 = *(v0 + 3176);
    v104 = *(v0 + 3184);
    v100 = *(v0 + 3168);
    v98 = *(v0 + 3160);
    v94 = *(v0 + 3152);
    v92 = *(v0 + 3144);
    v90 = *(v0 + 3136);
    v86 = *(v0 + 3128);
    v96 = *(v0 + 586);
    v88 = *(v0 + 3120);
    v83 = *(v0 + 3104);
    v85 = *(v0 + 3112);
    v81 = *(v0 + 3096);
    v75 = *(v0 + 3080);
    v6 = *(v0 + 3064);
    v7 = *(v0 + 3016);
    v8 = *(v0 + 2992);
    v77 = *(v0 + 2888);
    v78 = *(v0 + 3088);
    v9 = *v1;
    v71 = *(v0 + 2656);
    v73 = *(v0 + 2672);
    v69 = *(v0 + 2632);
    v70 = *(v0 + 2640);
    (*(*(v0 + 2904) + 8))(*(v0 + 2912), *(v0 + 2896));
    v6(v7, v8);
    v10 = 2120;
    v11 = 2112;
    *(v0 + 1936) = v5;
    v12 = 2104;
    v13 = 2096;
    v14 = 2088;
    v15 = 2081;
    v16 = 2080;
    v17 = 2072;
    v18 = 2064;
    v19 = 2056;
    v20 = 2048;
    v21 = 2040;
    v22 = 2032;
    v23 = 2024;
    v24 = 2016;
    v25 = 2008;
    v26 = 2000;
    v27 = 1992;
    v28 = 1984;
    v29 = 1976;
    v30 = 1968;
    v31 = 1960;
    v32 = 1952;
    v33 = 1944;
LABEL_5:
    *(v0 + v33) = v106;
    *(v0 + v32) = v86;
    *(v0 + v31) = v90;
    *(v0 + v30) = v92;
    *(v0 + v29) = v94;
    *(v0 + v28) = v98;
    *(v0 + v27) = v100;
    *(v0 + v26) = v102;
    *(v0 + v25) = v104;
    *(v0 + v24) = v75;
    *(v0 + v23) = v78;
    *(v0 + v22) = v81;
    *(v0 + v21) = v83;
    *(v0 + v20) = v85;
    *(v0 + v19) = v88;
    v37 = (v0 + v15);
    *(v0 + v18) = v69;
    *(v0 + v17) = v70;
    *(v0 + v16) = v9;
    v38 = *v110;
    *(v37 + 3) = *(v0 + 396);
    *v37 = v38;
    *(v0 + v14) = v71;
    *(v0 + v13) = *(&v71 + 1);
    *(v0 + v12) = v73;
    *(v0 + v11) = *(&v73 + 1);
    *(v0 + v10) = v96;
    sub_1000AE408(v108);
    sub_100381F68(v77, type metadata accessor for RegisterTerminalResponse);

    v39 = *(v0 + 8);
    goto LABEL_6;
  }

  if (v4 >> 62)
  {
    v51 = v4;
    v52 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v51;
    if (v52)
    {
      goto LABEL_11;
    }

LABEL_13:
    v106 = *(v0 + 3200);
    v108 = v0 + 2320;
    v68 = *(v0 + 3192);
    v102 = *(v0 + 3176);
    v104 = *(v0 + 3184);
    v100 = *(v0 + 3168);
    v98 = *(v0 + 3160);
    v94 = *(v0 + 3152);
    v92 = *(v0 + 3144);
    v90 = *(v0 + 3136);
    v86 = *(v0 + 3128);
    v96 = *(v0 + 586);
    v88 = *(v0 + 3120);
    v83 = *(v0 + 3104);
    v85 = *(v0 + 3112);
    v81 = *(v0 + 3096);
    v75 = *(v0 + 3080);
    v66 = *(v0 + 3064);
    v62 = *(v0 + 2992);
    v64 = *(v0 + 3016);
    v60 = *(v0 + 2912);
    v53 = *(v0 + 2904);
    v54 = *(v0 + 2896);
    v77 = *(v0 + 2888);
    v78 = *(v0 + 3088);
    v55 = *(v0 + 2792);
    v56 = *(v0 + 2776);
    v57 = *(v0 + 2768);
    v58 = *v1;
    v71 = *(v0 + 2656);
    v73 = *(v0 + 2672);
    v69 = *(v0 + 2632);
    v70 = *(v0 + 2640);

    (*(v56 + 104))(v55, enum case for DIPError.Code.documentReaderMissingReaderAuthCertificate(_:), v57);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100381EB8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v9 = v58;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v53 + 8))(v60, v54);
    v66(v64, v62);
    v10 = 2504;
    v11 = 2496;
    *(v0 + 2320) = v68;
    v12 = 2488;
    v13 = 2480;
    v14 = 2472;
    v15 = 2465;
    v16 = 2464;
    v17 = 2456;
    v18 = 2448;
    v19 = 2440;
    v20 = 2432;
    v21 = 2424;
    v22 = 2416;
    v23 = 2408;
    v24 = 2400;
    v25 = 2392;
    v26 = 2384;
    v27 = 2376;
    v28 = 2368;
    v29 = 2360;
    v30 = 2352;
    v31 = 2344;
    v32 = 2336;
    v33 = 2328;
    goto LABEL_5;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_11:
  v105 = *(v0 + 3176);
  v99 = *(v0 + 3160);
  v101 = *(v0 + 3192);
  v95 = *(v0 + 3144);
  v91 = *(v0 + 3128);
  v107 = *(v0 + 586);
  v93 = *(v0 + 3112);
  v87 = *(v0 + 3080);
  v89 = *(v0 + 3096);
  v80 = *(v0 + 3064);
  v74 = *(v0 + 3016);
  v41 = *(v0 + 2992);
  v42 = *(v0 + 2912);
  v43 = *(v0 + 2904);
  v44 = *(v0 + 2896);
  v109 = *(v0 + 2888);
  v97 = *(v0 + 2872);
  v45 = *(v0 + 2816);
  v46 = *(v0 + 2808);
  v47 = *(v0 + 2800);
  v84 = *v1;
  v72 = *(v0 + 2632);
  v48 = *(v0 + 2624);
  v79 = *(v0 + 2640);
  v82 = *(v0 + 2656);
  v76 = *(v0 + 2672);
  v103 = v4;
  static MobileDocumentReaderMilestone.prepareCertificateFetched.getter();
  Milestone.log()();
  (*(v46 + 8))(v45, v47);
  (*(v43 + 8))(v42, v44);
  v80(v74, v41);
  *(v0 + 2128) = v101;
  *(v0 + 2144) = v91;
  *(v0 + 2160) = v95;
  *(v0 + 2176) = v99;
  *(v0 + 2192) = v105;
  *(v0 + 2208) = v87;
  *(v0 + 2224) = v89;
  *(v0 + 2240) = v93;
  *(v0 + 2256) = v72;
  *(v0 + 2264) = v79;
  *(v0 + 2272) = v84;
  *(v0 + 2273) = *v110;
  *(v0 + 2276) = *(v0 + 396);
  *(v0 + 2280) = v82;
  *(v0 + 2296) = v76;
  *(v0 + 2312) = v107;
  sub_1000AE408(v0 + 2128);
  v49 = *(v97 + 28);
  v50 = type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetchResult(0);
  sub_10000BBC4(v109 + v49, v48 + *(v50 + 20), &qword_100835D88, &qword_1006DE890);
  *v48 = v103;
  sub_100381F68(v109, type metadata accessor for RegisterTerminalResponse);

  v39 = *(v0 + 8);
LABEL_6:

  return v39();
}

uint64_t sub_1003809F0()
{
  v1 = (v0 + 585);
  v113 = (v0 + 393);
  *(v0 + 2592) = *(v0 + 3232);
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 2792);
    v3 = *(v0 + 2784);
    v4 = *(v0 + 2776);
    v5 = *(v0 + 2768);
    (*(*(v0 + 2832) + 32))(*(v0 + 2856), *(v0 + 2864), *(v0 + 2824));
    DIPError.code.getter();
    (*(v4 + 104))(v3, enum case for DIPError.Code.topekaMobileDocumentReaderTermsAndConditionsAcceptanceRequired(_:), v5);
    sub_100381EB8(&qword_10083B4D0, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v6 = *(v4 + 8);
    v6(v3, v5);
    v6(v2, v5);
    if (*(v0 + 2608) == *(v0 + 2616))
    {
      v107 = *(v0 + 3192);
      v109 = *(v0 + 3176);
      v103 = *(v0 + 3144);
      v105 = *(v0 + 3160);
      v111 = *(v0 + 586);
      v99 = *(v0 + 3128);
      v101 = *(v0 + 3112);
      v95 = *(v0 + 3080);
      v97 = *(v0 + 3096);
      v79 = *(v0 + 3016);
      v7 = *(v0 + 2992);
      v8 = *(v0 + 2912);
      v9 = *(v0 + 2904);
      v10 = *(v0 + 2896);
      v11 = *(v0 + 2856);
      v12 = *(v0 + 2832);
      v13 = *(v0 + 2824);
      v91 = *v1;
      v85 = *(v0 + 2640);
      v81 = *(v0 + 2632);
      v83 = *(v0 + 3064);
      v93 = *(v0 + 2656);
      v88 = *(v0 + 2672);

      sub_100381EB8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      (*(v12 + 16))(v14, v11, v13);
      swift_willThrow();
      (*(v12 + 8))(v11, v13);
      (*(v9 + 8))(v8, v10);
      v83(v79, v7);
      *(v0 + 1552) = v107;
      *(v0 + 1568) = v99;
      *(v0 + 1584) = v103;
      *(v0 + 1600) = v105;
      *(v0 + 1616) = v109;
      *(v0 + 1632) = v95;
      *(v0 + 1648) = v97;
      *(v0 + 1664) = v101;
      *(v0 + 1680) = v81;
      *(v0 + 1688) = v85;
      *(v0 + 1696) = v91;
      *(v0 + 1697) = *v113;
      *(v0 + 1700) = *(v0 + 396);
      *(v0 + 1704) = v93;
      *(v0 + 1720) = v88;
      *(v0 + 1736) = v111;
      sub_1000AE408(v0 + 1552);

      goto LABEL_14;
    }

    (*(*(v0 + 2832) + 8))(*(v0 + 2856), *(v0 + 2824));
  }

  v15 = *(v0 + 3232);
  v16 = *(v0 + 2832);
  v17 = *(v0 + 2824);
  v18 = *(v0 + 2712);
  v19 = *(v0 + 2704);

  *(v0 + 2600) = v15;
  swift_errorRetain();
  v20 = swift_dynamicCast();
  v21 = 1;
  (*(v16 + 56))(v18, v20 ^ 1u, 1, v17);
  sub_10000BBC4(v18, v19, &qword_100833A88, qword_1006BF8E0);
  if ((*(v16 + 48))(v19, 1, v17) != 1)
  {
    v22 = *(v0 + 2848);
    v23 = *(v0 + 2840);
    v24 = *(v0 + 2832);
    v25 = *(v0 + 2824);
    v26 = *(v0 + 2720);
    (*(v24 + 32))(v22, *(v0 + 2704), v25);
    (*(v24 + 16))(v23, v22, v25);
    sub_1003C94CC(v23, v26);
    (*(v24 + 8))(v22, v25);
    v21 = 0;
  }

  v27 = *(v0 + 2720);
  v28 = *(v0 + 2712);
  v29 = type metadata accessor for MobileDocumentReaderSession.Error();
  v30 = *(v29 - 8);
  (*(v30 + 56))(v27, v21, 1, v29);
  sub_10000BE18(v28, &qword_100833A88, qword_1006BF8E0);
  v31 = (*(v30 + 48))(v27, 1, v29);
  v32 = *(v0 + 2760);
  if (v31 == 1)
  {
    v33 = *(v0 + 2736);
    v34 = *(v0 + 2728);
    sub_10000BE18(*(v0 + 2720), &qword_100842070, &unk_1006DEF50);
    v35 = enum case for MobileDocumentReaderSession.Error.Code.unknown(_:);
    v36 = *(v33 + 104);
    v36(v32, enum case for MobileDocumentReaderSession.Error.Code.unknown(_:), v34);
  }

  else
  {
    v37 = *(v0 + 2752);
    v38 = *(v0 + 2736);
    v39 = *(v0 + 2728);
    v40 = *(v0 + 2720);
    MobileDocumentReaderSession.Error.code.getter();
    (*(v30 + 8))(v40, v29);
    (*(v38 + 32))(v32, v37, v39);
    v35 = enum case for MobileDocumentReaderSession.Error.Code.unknown(_:);
    v36 = *(v38 + 104);
  }

  v41 = *(v0 + 2744);
  v42 = *(v0 + 2736);
  v43 = *(v0 + 2728);
  v36(v41, v35, v43);
  v44 = static MobileDocumentReaderSession.Error.Code.== infix(_:_:)();
  v80 = *(v42 + 8);
  v80(v41, v43);
  v89 = *(v0 + 3200);
  v86 = *(v0 + 3192);
  v108 = *(v0 + 3184);
  v104 = *(v0 + 3176);
  v100 = *(v0 + 3168);
  v96 = *(v0 + 3160);
  v92 = *(v0 + 3152);
  v87 = *(v0 + 3144);
  v82 = *(v0 + 3128);
  v84 = *(v0 + 3136);
  v112 = *(v0 + 586);
  v110 = *(v0 + 3120);
  v106 = *(v0 + 3112);
  v102 = *(v0 + 3104);
  v98 = *(v0 + 3096);
  v94 = *(v0 + 3088);
  v90 = *(v0 + 3080);
  v78 = *(v0 + 3064);
  if (v44)
  {
    v45 = *(v0 + 3040);
    v46 = *(v0 + 3032);
    v47 = *(v0 + 3024);
    v72 = *(v0 + 2992);
    v74 = *(v0 + 3016);
    v60 = *(v0 + 2896);
    v62 = *(v0 + 2912);
    v48 = *(v0 + 2792);
    v49 = *(v0 + 2776);
    v50 = *(v0 + 2768);
    v58 = *(v0 + 2760);
    v55 = *(v0 + 2904);
    v56 = *(v0 + 2728);
    v76 = *(v0 + 585);
    v70 = *(v0 + 2640);
    v66 = *(v0 + 2632);
    v68 = *(v0 + 2672);
    v64 = *(v0 + 2656);
    defaultLogger()();
    DIPRecordError(_:message:log:)();
    (*(v46 + 8))(v45, v47);
    (*(v49 + 104))(v48, enum case for DIPError.Code.unexpectedServerResponse(_:), v50);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100381EB8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v80(v58, v56);
    (*(v55 + 8))(v62, v60);
    v78(v74, v72);
    *(v0 + 1360) = v86;
    *(v0 + 1368) = v89;
    *(v0 + 1376) = v82;
    *(v0 + 1384) = v84;
    *(v0 + 1392) = v87;
    *(v0 + 1400) = v92;
    *(v0 + 1408) = v96;
    *(v0 + 1416) = v100;
    *(v0 + 1424) = v104;
    *(v0 + 1432) = v108;
    *(v0 + 1440) = v90;
    *(v0 + 1448) = v94;
    *(v0 + 1456) = v98;
    *(v0 + 1464) = v102;
    *(v0 + 1472) = v106;
    *(v0 + 1480) = v110;
    *(v0 + 1488) = v66;
    *(v0 + 1496) = v70;
    *(v0 + 1504) = v76;
    *(v0 + 1505) = *v113;
    *(v0 + 1508) = *(v0 + 396);
    *(v0 + 1512) = v64;
    *(v0 + 1528) = v68;
    *(v0 + 1544) = v112;
    v51 = v0 + 1360;
  }

  else
  {
    v71 = *(v0 + 3016);
    v69 = *(v0 + 2992);
    v52 = *(v0 + 2904);
    v61 = *(v0 + 2896);
    v63 = *(v0 + 2912);
    v57 = *(v0 + 2728);
    v59 = *(v0 + 2760);
    v77 = *v1;
    v73 = *(v0 + 2632);
    v75 = *(v0 + 2640);
    v67 = *(v0 + 2672);
    v65 = *(v0 + 2656);
    (*(*(v0 + 2776) + 104))(*(v0 + 2792), enum case for DIPError.Code.internalError(_:), *(v0 + 2768));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100381EB8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v80(v59, v57);
    (*(v52 + 8))(v63, v61);
    v78(v71, v69);
    *(v0 + 1168) = v86;
    *(v0 + 1176) = v89;
    *(v0 + 1184) = v82;
    *(v0 + 1192) = v84;
    *(v0 + 1200) = v87;
    *(v0 + 1208) = v92;
    *(v0 + 1216) = v96;
    *(v0 + 1224) = v100;
    *(v0 + 1232) = v104;
    *(v0 + 1240) = v108;
    *(v0 + 1248) = v90;
    *(v0 + 1256) = v94;
    *(v0 + 1264) = v98;
    *(v0 + 1272) = v102;
    *(v0 + 1280) = v106;
    *(v0 + 1288) = v110;
    *(v0 + 1296) = v73;
    *(v0 + 1304) = v75;
    *(v0 + 1312) = v77;
    *(v0 + 1313) = *v113;
    *(v0 + 1316) = *(v0 + 396);
    *(v0 + 1320) = v65;
    *(v0 + 1336) = v67;
    *(v0 + 1352) = v112;
    v51 = v0 + 1168;
  }

  sub_1000AE408(v51);
LABEL_14:

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_100381814()
{
  v17 = *(v0 + 3192);
  v18 = *(v0 + 3176);
  v15 = *(v0 + 3144);
  v16 = *(v0 + 3160);
  v13 = *(v0 + 3128);
  v19 = *(v0 + 586);
  v14 = *(v0 + 3112);
  v11 = *(v0 + 3080);
  v12 = *(v0 + 3096);
  v1 = *(v0 + 3064);
  v2 = *(v0 + 3016);
  v3 = *(v0 + 2992);
  v4 = *(v0 + 585);
  v5 = *(v0 + 2640);
  v6 = *(v0 + 2632);
  v9 = *(v0 + 2672);
  v10 = *(v0 + 2656);
  (*(*(v0 + 2904) + 8))(*(v0 + 2912), *(v0 + 2896));
  v1(v2, v3);
  *(v0 + 976) = v17;
  *(v0 + 992) = v13;
  *(v0 + 1008) = v15;
  *(v0 + 1024) = v16;
  *(v0 + 1040) = v18;
  *(v0 + 1056) = v11;
  *(v0 + 1072) = v12;
  *(v0 + 1088) = v14;
  *(v0 + 1104) = v6;
  *(v0 + 1112) = v5;
  *(v0 + 1120) = v4;
  *(v0 + 1121) = *(v0 + 393);
  *(v0 + 1124) = *(v0 + 396);
  *(v0 + 1128) = v10;
  *(v0 + 1144) = v9;
  *(v0 + 1160) = v19;
  sub_1000AE408(v0 + 976);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100381B08()
{
  sub_10000BB78((v0 + 16));
  sub_10000BB78((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetchResult(uint64_t a1)
{
  result = qword_1008420D8;
  if (!qword_1008420D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100381BC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100835D88, &qword_1006DE890);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100381C30(char a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (isInternalBuild()())
  {
    v6 = static DaemonInternalDefaultsKeys.MobileDocumentReader.requireTermsAndConditionsAcceptanceDuringPrepare.getter();
    v8 = v7;
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = v6;
    v11 = v8;
    if (a1)
    {
      v12 = String._bridgeToObjectiveC()();

      [v9 removeObjectForKey:v12];
    }

    else
    {
      v13 = NSUserDefaults.internalBool(forKey:)(*&v10);

      if (v13)
      {
        (*(v3 + 104))(v5, enum case for DIPError.Code.topekaMobileDocumentReaderTermsAndConditionsAcceptanceRequired(_:), v2);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100381EB8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }
    }
  }
}

double sub_100381E78(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000B8B8(a1, a2);
  }

  return result;
}

uint64_t sub_100381EB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100381F00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100381F68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100381FDC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100007224(&qword_100835D88, &qword_1006DE890);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1003820AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&qword_100835D88, &qword_1006DE890);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10038215C(uint64_t a1)
{
  sub_1003821E0(319);
  if (v1 <= 0x3F)
  {
    sub_100382238(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003821E0(uint64_t a1)
{
  if (!qword_1008420E8)
  {
    type metadata accessor for SecCertificate(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1008420E8);
    }
  }
}

void sub_100382238(uint64_t a1)
{
  if (!qword_100835DF8)
  {
    sub_10000B870(&unk_100835E00, &qword_1006C46A0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100835DF8);
    }
  }
}

uint64_t sub_10038229C()
{
  v1 = type metadata accessor for DIPError.Code();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = type metadata accessor for SHA256();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = type metadata accessor for SHA256Digest();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v0[10] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_10038243C;

  return sub_100382A70();
}

uint64_t sub_10038243C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1003828C4;
  }

  else
  {
    v4 = sub_100382550;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100382550()
{
  v1 = v0[13];
  v2 = sub_100355C34();
  if (v1)
  {

    (*(v0[3] + 104))(v0[4], enum case for DIPError.Code.internalError(_:), v0[2]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[10];
    v17 = v0[9];
    v7 = v0[7];
    v16 = v0[8];
    v8 = v0[5];
    v9 = v0[6];
    v10 = v2;
    v11 = v3;
    sub_10039361C(&qword_1008336E0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    dispatch thunk of HashFunction.init()();
    sub_10000B8B8(v10, v11);
    sub_10037939C(v10, v11, v7);
    sub_10000B90C(v10, v11);
    dispatch thunk of HashFunction.finalize()();
    (*(v9 + 8))(v7, v8);
    sub_10039361C(&qword_1008336E8, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v12 = Digest.base64Str.getter();
    v14 = v13;

    sub_10000B90C(v10, v11);
    (*(v17 + 8))(v6, v16);

    v15 = v0[1];

    return v15(v12, v14);
  }
}

uint64_t sub_1003828C4()
{
  (*(v0[3] + 104))(v0[4], enum case for DIPError.Code.internalError(_:), v0[2]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100382A70()
{
  v1[7] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration(0);
  v1[23] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v1[24] = swift_task_alloc();
  v5 = type metadata accessor for DIPSignpost();
  v1[25] = v5;
  v1[26] = *(v5 - 8);
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_100382CDC, 0, 0);
}

uint64_t sub_100382CDC()
{
  v40 = v0;
  sub_10000BBC4(v0[7] + 208, (v0 + 2), &qword_100842208, &qword_1006DF0C0);
  v1 = v0[5];
  if (v1)
  {
    sub_10000BA08(v0 + 2, v1);
    v2 = swift_task_alloc();
    v0[28] = v2;
    *v2 = v0;
    v2[1] = sub_1003832C4;

    return sub_1003C8C70();
  }

  else
  {
    sub_10000BE18((v0 + 2), &qword_100842208, &qword_1006DF0C0);
    v4 = v0[23];
    static DaemonSignposts.MobileDocumentReader.identityKeyStatus.getter();
    DIPSignpost.init(_:)();
    v5 = sub_100387E44(v4);
    v7 = v0[22];
    v6 = v0[23];
    v9 = v0[20];
    v8 = v0[21];
    v11 = v0[18];
    v10 = v0[19];
    v12 = *(v6 + 32);
    v0[30] = v12;
    v13 = *(v6 + 40);
    v0[31] = v13;
    v14 = *(v10 + 16);
    v14(v8, v6 + *(v7 + 28), v11, v5);
    defaultLogger()();
    (v14)(v9, v8, v11);
    v15 = v13;

    v16 = Logger.logObject.getter();
    LOBYTE(v8) = static os_log_type_t.debug.getter();

    v38 = v8;
    v17 = os_log_type_enabled(v16, v8);
    v19 = v0[19];
    v18 = v0[20];
    v21 = v0[17];
    v20 = v0[18];
    v22 = v0[11];
    v23 = v0[12];
    if (v17)
    {
      v36 = v0[11];
      v24 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v24 = 136315394;
      *(v24 + 4) = sub_100141FE4(v12, v15, v39);
      *(v24 + 12) = 2080;
      sub_10039361C(&qword_100845DE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      log = v16;
      v35 = v21;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v15;
      v27 = v26;
      v28 = v12;
      v29 = *(v19 + 8);
      v29(v18, v20);
      v30 = sub_100141FE4(v25, v27, v39);
      v15 = v37;

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, log, v38, "MobileDocumentReaderAuthenticationManager attempting to look up existing identity key for %s and %s", v24, 0x16u);
      swift_arrayDestroy();

      v31 = *(v23 + 8);
      v31(v35, v36);
    }

    else
    {

      v28 = v12;
      v29 = *(v19 + 8);
      v29(v18, v20);
      v31 = *(v23 + 8);
      v31(v21, v22);
    }

    v0[32] = v29;
    v0[33] = v31;
    sub_10000BA08((v0[7] + 88), *(v0[7] + 112));
    v32 = swift_task_alloc();
    v0[34] = v32;
    *v32 = v0;
    v32[1] = sub_100383B1C;
    v33 = v0[21];

    return sub_10034DCAC(v28, v15, v33);
  }
}

uint64_t sub_1003832C4()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_100383908;
  }

  else
  {
    v2 = sub_1003833D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003833D8()
{
  v40 = v0;
  sub_10000BB78(v0 + 2);
  v1 = v0[29];
  v2 = v0[23];
  static DaemonSignposts.MobileDocumentReader.identityKeyStatus.getter();
  DIPSignpost.init(_:)();
  v3 = sub_100387E44(v2);
  if (v1)
  {
    (*(v0[26] + 8))(v0[27], v0[25], v3);
    (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[22];
    v6 = v0[23];
    v9 = v0[20];
    v8 = v0[21];
    v11 = v0[18];
    v10 = v0[19];
    v12 = *(v6 + 32);
    v0[30] = v12;
    v13 = *(v6 + 40);
    v0[31] = v13;
    v14 = *(v10 + 16);
    v14(v8, v6 + *(v7 + 28), v11, v3);
    defaultLogger()();
    (v14)(v9, v8, v11);
    v15 = v13;

    v16 = Logger.logObject.getter();
    LOBYTE(v8) = static os_log_type_t.debug.getter();

    v38 = v8;
    v17 = os_log_type_enabled(v16, v8);
    v19 = v0[19];
    v18 = v0[20];
    v21 = v0[17];
    v20 = v0[18];
    v22 = v0[11];
    v23 = v0[12];
    if (v17)
    {
      v36 = v0[11];
      v24 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v24 = 136315394;
      *(v24 + 4) = sub_100141FE4(v12, v15, v39);
      *(v24 + 12) = 2080;
      sub_10039361C(&qword_100845DE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      log = v16;
      v35 = v21;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v15;
      v27 = v26;
      v28 = v12;
      v29 = *(v19 + 8);
      v29(v18, v20);
      v30 = sub_100141FE4(v25, v27, v39);
      v15 = v37;

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, log, v38, "MobileDocumentReaderAuthenticationManager attempting to look up existing identity key for %s and %s", v24, 0x16u);
      swift_arrayDestroy();

      v31 = *(v23 + 8);
      v31(v35, v36);
    }

    else
    {

      v28 = v12;
      v29 = *(v19 + 8);
      v29(v18, v20);
      v31 = *(v23 + 8);
      v31(v21, v22);
    }

    v0[32] = v29;
    v0[33] = v31;
    sub_10000BA08((v0[7] + 88), *(v0[7] + 112));
    v32 = swift_task_alloc();
    v0[34] = v32;
    *v32 = v0;
    v32[1] = sub_100383B1C;
    v33 = v0[21];

    return sub_10034DCAC(v28, v15, v33);
  }
}

uint64_t sub_100383908()
{
  sub_10000BB78(v0 + 2);
  (*(v0[9] + 104))(v0[10], enum case for DIPError.Code.internalError(_:), v0[8]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_100383B1C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = v1;

  if (v1)
  {
    v4 = sub_100383F74;
  }

  else
  {
    v4 = sub_100383C30;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100383C30()
{
  if (sub_100356114())
  {
    defaultLogger()();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "MobileDocumentReaderAuthenticationManager found identity key", v3, 2u);
    }

    v4 = *(v0 + 264);
    v5 = *(v0 + 128);
    v6 = *(v0 + 88);

    v4(v5, v6);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v24 = *(v0 + 280);
    v7 = *(v0 + 208);
    v8 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = *(v0 + 184);
    (*(v0 + 256))(*(v0 + 168), *(v0 + 144));
    (*(v7 + 8))(v8, v9);
    sub_1003935BC(v10, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);

    v11 = *(v0 + 8);

    return v11(v24);
  }

  else
  {
    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "MobileDocumentReaderAuthenticationManager found identity key but it is not valid. Deleting and generating new one...", v15, 2u);
    }

    v16 = *(v0 + 264);
    v17 = *(v0 + 120);
    v18 = *(v0 + 88);
    v19 = *(v0 + 56);

    v16(v17, v18);
    sub_10000BA08((v19 + 88), *(v19 + 112));
    v20 = swift_task_alloc();
    *(v0 + 296) = v20;
    *v20 = v0;
    v20[1] = sub_1003841A0;
    v22 = *(v0 + 240);
    v21 = *(v0 + 248);
    v23 = *(v0 + 168);

    return sub_10035053C(v22, v21, v23);
  }
}

uint64_t sub_100383F74()
{
  v16 = v0[33];
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[13];
  v4 = v0[11];
  _StringGuts.grow(_:)(100);
  v5._countAndFlagsBits = 0xD000000000000044;
  v5._object = 0x8000000100711DC0;
  String.append(_:)(v5);
  v6._countAndFlagsBits = v2;
  v6._object = v1;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x20646E6120;
  v7._object = 0xE500000000000000;
  String.append(_:)(v7);
  sub_10039361C(&qword_100845DE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._object = 0x8000000100711E10;
  v9._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v9);
  defaultLogger()();
  DIPLogError(_:message:log:)();

  v16(v3, v4);
  v10 = v0[7];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_10000BA08((v10 + 88), *(v10 + 112));
  v11 = swift_task_alloc();
  v0[39] = v11;
  *v11 = v0;
  v11[1] = sub_1003845B0;
  v13 = v0[30];
  v12 = v0[31];
  v14 = v0[21];

  return sub_10034ED04(v13, v12, v14);
}

uint64_t sub_1003841A0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_10038437C;
  }

  else
  {
    v2 = sub_1003842B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003842B4()
{

  v1 = v0[7];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_10000BA08((v1 + 88), *(v1 + 112));
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_1003845B0;
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[21];

  return sub_10034ED04(v4, v3, v5);
}

uint64_t sub_10038437C()
{

  v16 = v0[33];
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[13];
  v4 = v0[11];
  _StringGuts.grow(_:)(100);
  v5._countAndFlagsBits = 0xD000000000000044;
  v5._object = 0x8000000100711DC0;
  String.append(_:)(v5);
  v6._countAndFlagsBits = v2;
  v6._object = v1;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x20646E6120;
  v7._object = 0xE500000000000000;
  String.append(_:)(v7);
  sub_10039361C(&qword_100845DE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._object = 0x8000000100711E10;
  v9._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v9);
  defaultLogger()();
  DIPLogError(_:message:log:)();

  v16(v3, v4);
  v10 = v0[7];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  sub_10000BA08((v10 + 88), *(v10 + 112));
  v11 = swift_task_alloc();
  v0[39] = v11;
  *v11 = v0;
  v11[1] = sub_1003845B0;
  v13 = v0[30];
  v12 = v0[31];
  v14 = v0[21];

  return sub_10034ED04(v13, v12, v14);
}

uint64_t sub_1003845B0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {
    v4 = sub_1003848B8;
  }

  else
  {
    v4 = sub_1003846C4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003846C4(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderAuthenticationManager generated new identity key. Returning.", v4, 2u);
  }

  v5 = *(v1 + 264);
  v6 = *(v1 + 112);
  v7 = *(v1 + 88);

  v5(v6, v7);
  v14 = *(v1 + 320);
  v8 = *(v1 + 208);
  v9 = *(v1 + 216);
  v10 = *(v1 + 200);
  v11 = *(v1 + 184);
  (*(v1 + 256))(*(v1 + 168), *(v1 + 144));
  (*(v8 + 8))(v9, v10);
  sub_1003935BC(v11, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);

  v12 = *(v1 + 8);

  return v12(v14);
}

uint64_t sub_1003848B8()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 184);
  (*(v0 + 256))(*(v0 + 168), *(v0 + 144));
  (*(v2 + 8))(v1, v3);
  sub_1003935BC(v4, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
  (*(*(v0 + 72) + 104))(*(v0 + 80), enum case for DIPError.Code.internalError(_:), *(v0 + 64));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100384B20(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v3[9] = sub_100007224(&qword_100834B60, &qword_1006C0310);
  v3[10] = swift_task_alloc();
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v3[14] = swift_task_alloc();
  v4 = type metadata accessor for DIPSignpost();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  sub_100007224(&qword_1008419D8, &qword_1006DEAB0);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentReaderAuthenticationSession(0);
  v3[31] = v7;
  v3[32] = *(v7 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration(0);
  v3[36] = swift_task_alloc();

  return _swift_task_switch(sub_100384E6C, 0, 0);
}

uint64_t sub_100384E6C(uint64_t a1)
{
  sub_100387E44(*(v1 + 288));
  v2 = *(v1 + 288);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = MobileDocumentReaderConfiguration.merchantServerAccessToken.getter();
  v7 = sub_100391B94(v5, v6, v3, v4);
  v9 = v8;
  *(v1 + 296) = v7;
  *(v1 + 304) = v8;

  v10 = swift_task_alloc();
  *(v1 + 312) = v10;
  *v10 = v1;
  v10[1] = sub_1003851A0;
  v11 = *(v1 + 240);

  return sub_100389664(v11, v7, v9);
}

uint64_t sub_1003851A0()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_100387330;
  }

  else
  {
    v2 = sub_1003852B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003852B4()
{
  v26 = v0;
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  v4 = *(v2 + 48);
  v0[41] = v4;
  v0[42] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_10000BE18(v3, &qword_1008419D8, &qword_1006DEAB0);
    sub_10000BA08((v0[8] + 88), *(v0[8] + 112));
    v5 = swift_task_alloc();
    v0[50] = v5;
    *v5 = v0;
    v5[1] = sub_100386960;
    v7 = v0[37];
    v6 = v0[38];

    return sub_100352FB4(v7, v6);
  }

  else
  {
    sub_100355438(v3, v0[34]);
    defaultLogger()();

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = v0[37];
      v11 = v0[38];
      v13 = v0[28];
      v14 = v0[21];
      v15 = v0[22];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_100141FE4(v12, v11, &v25);
      _os_log_impl(&_mh_execute_header, v9, v10, "MobileDocumentReaderAuthenticationManager found existing session for sessionIdentifier %s. Returning.", v16, 0xCu);
      sub_10000BB78(v17);

      v18 = *(v15 + 8);
      v18(v13, v14);
    }

    else
    {
      v19 = v0[28];
      v20 = v0[21];
      v21 = v0[22];

      v18 = *(v21 + 8);
      v18(v19, v20);
    }

    v0[43] = v18;
    v22 = swift_task_alloc();
    v0[44] = v22;
    *v22 = v0;
    v22[1] = sub_100385580;
    v23 = v0[34];
    v24 = v0[29];

    return sub_10038AEFC(v24, v23);
  }
}

uint64_t sub_100385580()
{

  return _swift_task_switch(sub_10038567C, 0, 0);
}

uint64_t sub_10038567C()
{
  v1 = *(v0 + 232);
  if ((*(v0 + 328))(v1, 1, *(v0 + 248)) != 1)
  {
    v18 = *(v0 + 288);
    v19 = *(v0 + 272);
    v20 = *(v0 + 48);

    sub_1003935BC(v18, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
    sub_100355438(v1, v20);
    sub_1003935BC(v19, type metadata accessor for MobileDocumentReaderAuthenticationSession);
LABEL_16:

    v22 = *(v0 + 8);
LABEL_17:

    return v22();
  }

  sub_10000BE18(v1, &qword_1008419D8, &qword_1006DEAB0);
  MobileDocumentReaderConfiguration.merchantServerAccessToken.getter();
  if (!v2 || (v3 = *(v0 + 272), v4 = *(v0 + 248), , *(v3 + *(v4 + 40) + 8) >> 60 != 15))
  {
    v21 = *(v0 + 288);

    sub_1003935BC(v21, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
    sub_100355438(*(v0 + 272), *(v0 + 48));
    goto LABEL_16;
  }

  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "MobileDocumentReaderAuthenticationManager existing session with token has missing merchantLogo, refetching", v7, 2u);
  }

  v8 = *(v0 + 344);
  v9 = *(v0 + 272);
  v10 = *(v0 + 248);
  v11 = *(v0 + 216);
  v12 = *(v0 + 168);

  v8(v11, v12);
  v13 = *(v9 + *(v10 + 28));
  if (v13 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_8;
    }

LABEL_21:
    v23 = *(v0 + 272);
    (*(*(v0 + 152) + 104))(*(v0 + 160), enum case for DIPError.Code.documentReaderMissingReaderAuthCertificate(_:), *(v0 + 144));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1003935BC(v23, type metadata accessor for MobileDocumentReaderAuthenticationSession);
    v25 = *(v0 + 144);
    v24 = *(v0 + 152);
    v27 = *(v0 + 96);
    v26 = *(v0 + 104);
    v28 = *(v0 + 80);
    v70 = *(v0 + 72);
    swift_getErrorValue();
    swift_errorRetain();
    Error.dipErrorCode.getter();
    v69 = enum case for DIPError.Code.documentReaderSessionExpired(_:);
    v68 = *(v24 + 104);
    v68(v27);
    (*(v24 + 56))(v27, 0, 1, v25);
    v29 = *(v70 + 48);
    sub_10000BBC4(v26, v28, &qword_10083B020, &unk_1006D8ED0);
    sub_10000BBC4(v27, v28 + v29, &qword_10083B020, &unk_1006D8ED0);
    v30 = *(v24 + 48);
    v31 = v30(v28, 1, v25);
    v32 = *(v0 + 144);
    if (v31 == 1)
    {
      v33 = *(v0 + 104);
      sub_10000BE18(*(v0 + 96), &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v33, &qword_10083B020, &unk_1006D8ED0);
      if (v30(v28 + v29, 1, v32) == 1)
      {
        sub_10000BE18(*(v0 + 80), &qword_10083B020, &unk_1006D8ED0);

LABEL_32:
        MobileDocumentReaderConfiguration.merchantServerAccessToken.getter();
        if (v51)
        {

          defaultLogger()();
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&_mh_execute_header, v52, v53, "MobileDocumentReaderAuthenticationManager found stored session for token that is expired. A new token must be created.", v54, 2u);
          }

          v72 = *(v0 + 288);
          v55 = *(v0 + 200);
          v57 = *(v0 + 168);
          v56 = *(v0 + 176);
          v58 = *(v0 + 160);
          v59 = *(v0 + 144);

          (*(v56 + 8))(v55, v57);
          (v68)(v58, v69, v59);
          sub_1000402AC(_swiftEmptyArrayStorage);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          sub_1003935BC(v72, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
          (*(*(v0 + 152) + 104))(*(v0 + 160), enum case for DIPError.Code.internalError(_:), *(v0 + 144));
          swift_errorRetain();
          sub_1000402AC(_swiftEmptyArrayStorage);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          v22 = *(v0 + 8);
          goto LABEL_17;
        }

        defaultLogger()();
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.error.getter();
        v62 = os_log_type_enabled(v60, v61);
        v63 = *(v0 + 192);
        v65 = *(v0 + 168);
        v64 = *(v0 + 176);
        if (v62)
        {
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&_mh_execute_header, v60, v61, "MobileDocumentReaderAuthenticationManager found stored session for tokenless that is expired. Creating new one.", v66, 2u);
        }

        else
        {
        }

        (*(v64 + 8))(v63, v65);
LABEL_28:
        sub_10000BA08((*(v0 + 64) + 88), *(*(v0 + 64) + 112));
        v41 = swift_task_alloc();
        *(v0 + 400) = v41;
        *v41 = v0;
        v41[1] = sub_100386960;
        v43 = *(v0 + 296);
        v42 = *(v0 + 304);

        return sub_100352FB4(v43, v42);
      }
    }

    else
    {
      sub_10000BBC4(*(v0 + 80), *(v0 + 88), &qword_10083B020, &unk_1006D8ED0);
      if (v30(v28 + v29, 1, v32) != 1)
      {
        v45 = *(v0 + 152);
        v44 = *(v0 + 160);
        v46 = *(v0 + 144);
        v47 = *(v0 + 96);
        v67 = *(v0 + 104);
        v48 = *(v0 + 88);
        v71 = *(v0 + 80);
        (*(v45 + 32))(v44, v28 + v29, v46);
        sub_10039361C(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
        v49 = dispatch thunk of static Equatable.== infix(_:_:)();
        v50 = *(v45 + 8);
        v50(v44, v46);
        sub_10000BE18(v47, &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v67, &qword_10083B020, &unk_1006D8ED0);
        v50(v48, v46);
        sub_10000BE18(v71, &qword_10083B020, &unk_1006D8ED0);

        if (v49)
        {
          goto LABEL_32;
        }

LABEL_27:
        v38 = *(v0 + 176);
        v39 = *(v0 + 184);
        v40 = *(v0 + 168);
        defaultLogger()();
        DIPLogError(_:message:log:)();

        (*(v38 + 8))(v39, v40);
        goto LABEL_28;
      }

      v35 = *(v0 + 144);
      v34 = *(v0 + 152);
      v36 = *(v0 + 104);
      v37 = *(v0 + 88);
      sub_10000BE18(*(v0 + 96), &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v36, &qword_10083B020, &unk_1006D8ED0);
      (*(v34 + 8))(v37, v35);
    }

    sub_10000BE18(*(v0 + 80), &qword_100834B60, &qword_1006C0310);

    goto LABEL_27;
  }

  result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_8:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v13 + 32);
  }

  v16 = v15;
  *(v0 + 360) = v15;
  v17 = swift_task_alloc();
  *(v0 + 368) = v17;
  *v17 = v0;
  v17[1] = sub_100386338;

  return sub_100391EBC(v16);
}

uint64_t sub_100386338(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = a2;

  return _swift_task_switch(sub_100386438, 0, 0);
}

uint64_t sub_100386438()
{
  if (*(v0 + 384) >> 60 == 15)
  {
    v1 = *(v0 + 288);

    sub_1003935BC(v1, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
    sub_100355438(*(v0 + 272), *(v0 + 48));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_10000BA08((*(v0 + 64) + 88), *(*(v0 + 64) + 112));
    v4 = swift_task_alloc();
    *(v0 + 392) = v4;
    *v4 = v0;
    v4[1] = sub_100386660;
    v6 = *(v0 + 376);
    v5 = *(v0 + 384);
    v7 = *(v0 + 296);
    v8 = *(v0 + 304);

    return sub_100354B5C(v6, v5, v7, v8);
  }
}

uint64_t sub_100386660(char a1)
{
  *(*v1 + 440) = a1;

  return _swift_task_switch(sub_100386780, 0, 0);
}

uint64_t sub_100386780()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 288);

  sub_1003935BC(v2, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
  v3 = *(v0 + 376);
  v4 = *(v0 + 384);
  if (v1 == 1)
  {
    v5 = *(v0 + 272);
    v6 = *(v0 + 248);
    v7 = *(v0 + 48);
    sub_100355110(v5, v7);
    v8 = v7 + *(v6 + 40);
    sub_10000BD94(*v8, *(v8 + 8));
    *v8 = v3;
    *(v8 + 8) = v4;
    sub_1003935BC(v5, type metadata accessor for MobileDocumentReaderAuthenticationSession);
  }

  else
  {
    sub_10000BD94(*(v0 + 376), *(v0 + 384));
    sub_100355438(*(v0 + 272), *(v0 + 48));
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100386960()
{

  return _swift_task_switch(sub_100386A78, 0, 0);
}

uint64_t sub_100386A78(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderAuthenticationManager successfully cleaned up existing certificate.", v4, 2u);
  }

  v5 = v1[26];
  v6 = v1[21];
  v7 = v1[22];

  (*(v7 + 8))(v5, v6);
  v8 = swift_task_alloc();
  v1[51] = v8;
  *v8 = v1;
  v8[1] = sub_100386BB0;
  v9 = v1[33];
  v10 = v1[7];

  return sub_10038C984(v9, v10);
}

uint64_t sub_100386BB0()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_100387BCC;
  }

  else
  {
    v2 = sub_100386CC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100386CC4()
{
  v1 = v0[8];
  static DaemonSignposts.MobileDocumentReader.storeSession.getter();
  DIPSignpost.init(_:)();
  sub_10000BA08((v1 + 88), *(v1 + 112));
  v2 = swift_task_alloc();
  v0[53] = v2;
  *v2 = v0;
  v2[1] = sub_100386D90;
  v3 = v0[33];

  return sub_1003520AC(v3);
}

uint64_t sub_100386D90()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_100387064;
  }

  else
  {
    v2 = sub_100386EA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100386EA4()
{
  v1 = v0[36];
  v2 = v0[33];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  sub_100355110(v2, v0[6]);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v3, v5);
  sub_1003935BC(v2, type metadata accessor for MobileDocumentReaderAuthenticationSession);
  sub_1003935BC(v1, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100387064()
{
  v1 = v0[36];
  v2 = v0[33];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v4 + 8))(v3, v5);
  sub_1003935BC(v2, type metadata accessor for MobileDocumentReaderAuthenticationSession);
  sub_1003935BC(v1, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
  (*(v0[19] + 104))(v0[20], enum case for DIPError.Code.internalError(_:), v0[18]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100387330()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v49 = v0[9];
  swift_getErrorValue();
  swift_errorRetain();
  Error.dipErrorCode.getter();
  v48 = enum case for DIPError.Code.documentReaderSessionExpired(_:);
  v47 = *(v2 + 104);
  v47(v4);
  (*(v2 + 56))(v4, 0, 1, v1);
  v6 = *(v49 + 48);
  sub_10000BBC4(v3, v5, &qword_10083B020, &unk_1006D8ED0);
  sub_10000BBC4(v4, v5 + v6, &qword_10083B020, &unk_1006D8ED0);
  v7 = *(v2 + 48);
  v8 = v7(v5, 1, v1);
  v9 = v0[18];
  if (v8 != 1)
  {
    sub_10000BBC4(v0[10], v0[11], &qword_10083B020, &unk_1006D8ED0);
    if (v7(v5 + v6, 1, v9) != 1)
    {
      v23 = v0[19];
      v22 = v0[20];
      v24 = v0[18];
      v25 = v0[12];
      v46 = v0[13];
      v26 = v0[11];
      v50 = v0[10];
      (*(v23 + 32))(v22, v5 + v6, v24);
      sub_10039361C(&qword_100834B68, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v23 + 8);
      v28(v22, v24);
      sub_10000BE18(v25, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v46, &qword_10083B020, &unk_1006D8ED0);
      v28(v26, v24);
      sub_10000BE18(v50, &qword_10083B020, &unk_1006D8ED0);

      if (v27)
      {
        goto LABEL_12;
      }

LABEL_7:
      v15 = v0[22];
      v16 = v0[23];
      v17 = v0[21];
      defaultLogger()();
      DIPLogError(_:message:log:)();

      (*(v15 + 8))(v16, v17);
      goto LABEL_8;
    }

    v12 = v0[18];
    v11 = v0[19];
    v13 = v0[13];
    v14 = v0[11];
    sub_10000BE18(v0[12], &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v13, &qword_10083B020, &unk_1006D8ED0);
    (*(v11 + 8))(v14, v12);
LABEL_6:
    sub_10000BE18(v0[10], &qword_100834B60, &qword_1006C0310);

    goto LABEL_7;
  }

  v10 = v0[13];
  sub_10000BE18(v0[12], &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v10, &qword_10083B020, &unk_1006D8ED0);
  if (v7(v5 + v6, 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_10000BE18(v0[10], &qword_10083B020, &unk_1006D8ED0);

LABEL_12:
  MobileDocumentReaderConfiguration.merchantServerAccessToken.getter();
  if (v29)
  {

    defaultLogger()();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "MobileDocumentReaderAuthenticationManager found stored session for token that is expired. A new token must be created.", v32, 2u);
    }

    v51 = v0[36];
    v33 = v0[25];
    v35 = v0[21];
    v34 = v0[22];
    v36 = v0[20];
    v37 = v0[18];

    (*(v34 + 8))(v33, v35);
    (v47)(v36, v48, v37);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_1003935BC(v51, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
    (*(v0[19] + 104))(v0[20], enum case for DIPError.Code.internalError(_:), v0[18]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v38 = v0[1];

    return v38();
  }

  defaultLogger()();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v0[24];
  v44 = v0[21];
  v43 = v0[22];
  if (v41)
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "MobileDocumentReaderAuthenticationManager found stored session for tokenless that is expired. Creating new one.", v45, 2u);
  }

  else
  {
  }

  (*(v43 + 8))(v42, v44);
LABEL_8:
  sub_10000BA08((v0[8] + 88), *(v0[8] + 112));
  v18 = swift_task_alloc();
  v0[50] = v18;
  *v18 = v0;
  v18[1] = sub_100386960;
  v20 = v0[37];
  v19 = v0[38];

  return sub_100352FB4(v20, v19);
}

uint64_t sub_100387BCC()
{
  sub_1003935BC(v0[36], type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
  (*(v0[19] + 104))(v0[20], enum case for DIPError.Code.internalError(_:), v0[18]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

double sub_100387E44@<D0>(Swift::String_optional *a1@<X8>)
{
  v138 = a1;
  v140 = type metadata accessor for Logger();
  v139 = *(v140 - 8);
  v2 = __chkstk_darwin(v140);
  v135 = &v129 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v137 = &v129 - v5;
  __chkstk_darwin(v4);
  v136 = &v129 - v6;
  v7 = sub_100007224(&unk_100849F90, &qword_1006DEAA0);
  __chkstk_darwin(v7 - 8);
  v144 = &v129 - v8;
  v9 = type metadata accessor for UUID();
  v145 = *(v9 - 8);
  v146 = v9;
  __chkstk_darwin(v9);
  v143 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for DIPError.Code();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154);
  v159 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007224(&qword_10083ACF8, &qword_1006D8FC0);
  __chkstk_darwin(v12 - 8);
  v148 = &v129 - v13;
  v14 = type metadata accessor for BundleRecord.RecordType();
  v149 = *(v14 - 8);
  v150 = v14;
  v15 = __chkstk_darwin(v14);
  v142 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v141 = &v129 - v18;
  __chkstk_darwin(v17);
  v20 = &v129 - v19;
  v21 = type metadata accessor for BundleRecord();
  v151 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v24 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v129 - v26;
  __chkstk_darwin(v25);
  v29 = &v129 - v28;
  sub_10000BA08((v1 + 48), *(v1 + 72));
  v30 = v153;
  dispatch thunk of BundleRecordFetching.record(withAuditToken:)();
  if (v30)
  {
    v31 = *(v152 + 104);
    v32 = v159;
LABEL_3:
    v33 = v154;
LABEL_4:
    v31(v32, enum case for DIPError.Code.internalError(_:), v33);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return result;
  }

  v35 = v148;
  v133 = v24;
  v153 = 0;
  v132 = (v1 + 16);
  v134 = v27;
  v147 = v21;
  BundleRecord.recordType.getter();
  v37 = v149;
  v36 = v150;
  v38 = (*(v149 + 88))(v20, v150);
  v39 = enum case for BundleRecord.RecordType.application(_:);
  if (v38 == enum case for BundleRecord.RecordType.application(_:) || v38 == enum case for BundleRecord.RecordType.appClip(_:))
  {
    v43 = v151;
    v44 = v134;
    (*(v151 + 16))(v134, v29, v147);
    v32 = v159;
  }

  else
  {
    v40 = v20;
    v41 = v147;
    v32 = v159;
    if (v38 != enum case for BundleRecord.RecordType.applicationExtension(_:))
    {
      v131 = v29;
      v57 = v152;
      if (v38 != enum case for BundleRecord.RecordType.unknown(_:))
      {
        (*(v37 + 8))(v40, v36);
      }

      v31 = *(v57 + 104);
      v58 = v154;
      v31(v32, enum case for DIPError.Code.documentReaderUnsupportedBundleType(_:), v154);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v151 + 8))(v131, v147);
      v33 = v58;
      goto LABEL_4;
    }

    BundleRecord.containingBundleRecord.getter();
    v42 = v151;
    if ((*(v151 + 48))(v35, 1, v41) == 1)
    {
      sub_10000BE18(v35, &qword_10083ACF8, &qword_1006D8FC0);
      v31 = *(v152 + 104);
      v31(v32, enum case for DIPError.Code.documentReaderUnsupportedBundleType(_:), v154);
      v153 = sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v42 + 8))(v29, v147);
      goto LABEL_3;
    }

    v131 = v29;
    v66 = *(v42 + 32);
    v148 = (v42 + 32);
    v130 = v66;
    v66(v133, v35, v41);
    v67 = v141;
    BundleRecord.recordType.getter();
    v68 = v142;
    (*(v37 + 104))(v142, v39, v36);
    v69 = static BundleRecord.RecordType.== infix(_:_:)();
    v70 = *(v37 + 8);
    v70(v68, v36);
    v70(v67, v36);
    if ((v69 & 1) == 0)
    {
      v31 = *(v152 + 104);
      v31(v32, enum case for DIPError.Code.unexpectedDeviceState(_:), v154);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v153 = *(v151 + 8);
      v88 = v147;
      v153(v133, v147);
      v153(v131, v88);
      goto LABEL_3;
    }

    v44 = v134;
    v130(v134, v133, v41);
    v43 = v151;
    v29 = v131;
  }

  v45 = BundleRecord.applicationIdentifier.getter();
  if (!v46)
  {
    v31 = *(v152 + 104);
    v31(v32, enum case for DIPError.Code.documentReaderIdentifiersMissing(_:), v154);
    v153 = 0x8000000100711950;
    sub_1000402AC(_swiftEmptyArrayStorage);
    v59 = v29;
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v60 = *(v43 + 8);
    v61 = v147;
    v60(v134, v147);
    v62 = v59;
    v32 = v159;
    v63 = v61;
LABEL_20:
    v60(v62, v63);
    goto LABEL_3;
  }

  v47 = v46;
  v48 = v45;
  v49 = BundleRecord.bundleIdentifier.getter();
  if (!v50)
  {

    v31 = *(v152 + 104);
    v31(v159, enum case for DIPError.Code.documentReaderIdentifiersMissing(_:), v154);
    v153 = 0x80000001007115C0;
    sub_1000402AC(_swiftEmptyArrayStorage);
    v64 = v29;
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v32 = v159;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v60 = *(v43 + 8);
    v65 = v147;
    v60(v134, v147);
    v62 = v64;
    v63 = v65;
    goto LABEL_20;
  }

  v149 = v50;
  v150 = v47;
  v148 = v49;
  v51 = v144;
  BundleRecord.deviceIdentifierForVendor.getter();
  v52 = v145;
  v53 = v146;
  if ((*(v145 + 48))(v51, 1, v146) == 1)
  {

    sub_10000BE18(v51, &unk_100849F90, &qword_1006DEAA0);
    v153 = *(v152 + 104);
    (v153)(v159, enum case for DIPError.Code.documentReaderIdentifiersMissing(_:), v154);
    sub_1000402AC(_swiftEmptyArrayStorage);
    v54 = v29;
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v32 = v159;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v55 = *(v43 + 8);
    v56 = v147;
    v55(v134, v147);
    v55(v54, v56);
    v31 = v153;
    goto LABEL_3;
  }

  v131 = v29;
  v71 = v143;
  v159 = *(v52 + 32);
  (v159)(v143, v51, v53);
  v72 = BundleRecord.teamIdentifier.getter();
  v144 = v73;
  if (!v73)
  {

    v159 = "exist, cannot continue.";
    v31 = *(v152 + 104);
    v31(v32, enum case for DIPError.Code.documentReaderIdentifiersMissing(_:), v154);
    v153 = sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v52 + 8))(v71, v53);
    v89 = *(v151 + 8);
    v90 = v147;
    v89(v134, v147);
    v89(v131, v90);
    v33 = v154;
    goto LABEL_4;
  }

  v152 = v72;
  v154 = v48;
  v74 = objc_opt_self();
  v75 = [v74 standardUserDefaults];
  v76._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.overrideApplicationIdentifier.getter();
  v77 = NSUserDefaults.internalString(forKey:)(v76);

  v142 = (v52 + 32);
  if (v77.value._object)
  {
    v157 = v77;
    sub_1000ACCA0();
    Collection.nilIfEmpty.getter();

    v78 = v156;
    if (v156)
    {
      v79 = v74;
      v80 = v155;

      v81 = v136;
      defaultLogger()();

      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.debug.getter();

      v84 = os_log_type_enabled(v82, v83);
      v85 = v139;
      v154 = v80;
      if (v84)
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v157.value._countAndFlagsBits = v87;
        *v86 = 136315138;
        *(v86 + 4) = sub_100141FE4(v80, v78, &v157.value._countAndFlagsBits);
        _os_log_impl(&_mh_execute_header, v82, v83, "MobileDocumentReaderAuthenticationManager using override applicationIdentifier %s for storing and fetching terminal authentication certificates.", v86, 0xCu);
        sub_10000BB78(v87);
        v44 = v134;

        (*(v85 + 8))(v136, v140);
      }

      else
      {

        (*(v85 + 8))(v81, v140);
      }

      v150 = v78;
      v74 = v79;
    }
  }

  v91 = [v74 standardUserDefaults];
  v92._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.overrideBundleIdentifier.getter();
  v93 = NSUserDefaults.internalString(forKey:)(v92);

  if (v93.value._object)
  {
    v157 = v93;
    sub_1000ACCA0();
    Collection.nilIfEmpty.getter();

    v94 = v156;
    if (v156)
    {
      v95 = v155;

      v96 = v137;
      defaultLogger()();

      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.debug.getter();

      v99 = os_log_type_enabled(v97, v98);
      v148 = v95;
      if (v99)
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v157.value._countAndFlagsBits = v101;
        *v100 = 136315138;
        *(v100 + 4) = sub_100141FE4(v95, v94, &v157.value._countAndFlagsBits);
        _os_log_impl(&_mh_execute_header, v97, v98, "MobileDocumentReaderAuthenticationManager using override bundleIdentifier %s for fetching terminal authentication certificates.", v100, 0xCu);
        sub_10000BB78(v101);
        v44 = v134;

        (*(v139 + 8))(v137, v140);
      }

      else
      {

        (*(v139 + 8))(v96, v140);
      }

      v149 = v94;
    }
  }

  v102 = [v74 standardUserDefaults];
  v103._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.overrideTeamIdentifier.getter();
  v104 = NSUserDefaults.internalString(forKey:)(v103);

  if (v104.value._object && (v157 = v104, sub_1000ACCA0(), Collection.nilIfEmpty.getter(), , (v105 = v156) != 0))
  {
    v106 = v155;

    v107 = v135;
    defaultLogger()();

    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.debug.getter();

    v110 = os_log_type_enabled(v108, v109);
    v111 = v147;
    v152 = v106;
    if (v110)
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v157.value._countAndFlagsBits = v113;
      *v112 = 136315138;
      *(v112 + 4) = sub_100141FE4(v106, v105, &v157.value._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v108, v109, "MobileDocumentReaderAuthenticationManager using override teamIdentifier %s for fetching terminal authentication certificates.", v112, 0xCu);
      sub_10000BB78(v113);
    }

    (*(v139 + 8))(v107, v140);
    v114 = *(v151 + 8);
    v114(v134, v111);
    v114(v131, v111);
    v115 = v105;
    v116 = v143;
    v117 = v138;
    v118 = v132;
    v119 = v154;
  }

  else
  {
    v120 = *(v151 + 8);
    v121 = v147;
    v120(v44, v147);
    v120(v131, v121);
    v116 = v143;
    v115 = v144;
    v117 = v138;
    v118 = v132;
    v119 = v154;
  }

  v122 = v159;
  v123 = v118[1];
  v157 = *v118;
  v158 = v123;
  v124 = type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration(0);
  (v122)(v117 + *(v124 + 28), v116, v146);
  result = *&v157.value._countAndFlagsBits;
  v125 = v158;
  *v117 = v157;
  v117[1] = v125;
  v126 = v150;
  v117[2].value._countAndFlagsBits = v119;
  v117[2].value._object = v126;
  v127 = v149;
  v117[3].value._countAndFlagsBits = v148;
  v117[3].value._object = v127;
  v128 = (&v117->value._countAndFlagsBits + *(v124 + 32));
  *v128 = v152;
  v128[1] = v115;
  return result;
}

uint64_t sub_100389664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration(0);
  v4[14] = swift_task_alloc();
  v7 = type metadata accessor for Milestone();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  sub_100007224(&qword_1008419D8, &qword_1006DEAB0);
  v4[22] = swift_task_alloc();
  v9 = type metadata accessor for MobileDocumentReaderAuthenticationSession(0);
  v4[23] = v9;
  v4[24] = *(v9 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v4[29] = swift_task_alloc();
  v10 = type metadata accessor for DIPSignpost();
  v4[30] = v10;
  v4[31] = *(v10 - 8);
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_1003899C4, 0, 0);
}

uint64_t sub_1003899C4()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.useHardcodedSession.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    sub_10038FE14(*(v0 + 16));
    (*(*(v0 + 192) + 56))(*(v0 + 16), 0, 1, *(v0 + 184));

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v4 = *(v0 + 40);
    static DaemonSignposts.MobileDocumentReader.sessionStatus.getter();
    DIPSignpost.init(_:)();
    sub_10000BA08((v4 + 88), *(v4 + 112));
    v5 = swift_task_alloc();
    *(v0 + 264) = v5;
    *v5 = v0;
    v5[1] = sub_100389DE4;
    v6 = *(v0 + 176);
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);

    return sub_100351150(v6, v7, v8);
  }
}

uint64_t sub_100389DE4()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_10038AC84;
  }

  else
  {
    v2 = sub_100389EF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100389EF8()
{
  v106 = v0;
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v10 = v0[27];
    v9 = v0[28];
    sub_100355438(v3, v9);
    defaultLogger()();
    sub_100355110(v9, v10);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[27];
    if (v13)
    {
      v15 = v0[19];
      v99 = v0[18];
      v102 = v0[21];
      v17 = v0[3];
      v16 = v0[4];
      v18 = swift_slowAlloc();
      v105[0] = swift_slowAlloc();
      *v18 = 136315394;
      *(v18 + 4) = sub_100141FE4(v17, v16, v105);
      *(v18 + 12) = 2080;
      type metadata accessor for SecCertificate(0);
      Array<A>.base64EncodedStrings.getter();
      v19 = Array.description.getter();
      v21 = v20;

      sub_1003935BC(v14, type metadata accessor for MobileDocumentReaderAuthenticationSession);
      v22 = sub_100141FE4(v19, v21, v105);

      *(v18 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "MobileDocumentReaderAuthenticationManager found certificate for sessionIdentifier %s. Certificate Chain: %s", v18, 0x16u);
      swift_arrayDestroy();

      v23 = *(v15 + 8);
      v23(v102, v99);
    }

    else
    {
      v24 = v0[21];
      v25 = v0[18];
      v26 = v0[19];

      v23 = *(v26 + 8);
      v23(v24, v25);
      sub_1003935BC(v14, type metadata accessor for MobileDocumentReaderAuthenticationSession);
    }

    v27 = v0[34];
    v29 = v0[16];
    v28 = v0[17];
    v31 = v0[14];
    v30 = v0[15];
    static MobileDocumentReaderMilestone.prepareCertificateFound.getter();
    Milestone.log()();
    (*(v29 + 8))(v28, v30);
    v32 = sub_100387E44(v31);
    v33 = v0[28];
    if (!v27)
    {
      v34 = v0[14];
      v35 = *(v34 + 32);
      v36 = *(v34 + 40);
      v37 = *(v0[10] + 16);
      (v37)(v0[12], v34 + *(v0[13] + 28), v0[9], v32);
      if (*(v33 + 16) == v35 && *(v33 + 24) == v36 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static UUID.== infix(_:_:)())
      {
        v38 = *(v0[28] + *(v0[23] + 28));
        if (v38 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          if (result)
          {
            goto LABEL_14;
          }
        }

        else
        {
          result = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
LABEL_14:
            if ((v38 & 0xC000000000000001) != 0)
            {
              v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                return result;
              }

              v40 = *(v38 + 32);
            }

            v41 = v40;
            v42 = v0[14];
            v43 = v0[12];
            v45 = v0[9];
            v44 = v0[10];
            sub_10039107C(v40);
            (*(v44 + 8))(v43, v45);

            sub_1003935BC(v42, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
            v87 = v0[31];
            v86 = v0[32];
            v88 = v0[30];
            v89 = v0[23];
            v90 = v0[24];
            v91 = v0[2];
            sub_100355438(v0[28], v91);
            (*(v90 + 56))(v91, 0, 1, v89);
            DIPSignpost.end(workflowID:isBackground:)(0, 2);
            (*(v87 + 8))(v86, v88);
            goto LABEL_3;
          }
        }

        v33 = v0[28];
        v104 = v0[14];
        v92 = v0[12];
        v93 = v0[9];
        v94 = v0[10];
        (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.documentReaderMissingReaderAuthCertificate(_:), v0[6]);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        (*(v94 + 8))(v92, v93);
        v82 = v104;
      }

      else
      {
        v98 = v35;
        v46 = v0[28];
        v47 = v0[26];
        v100 = v0[25];
        v103 = v23;
        v48 = v36;
        v50 = v0[11];
        v49 = v0[12];
        v51 = v0[9];
        defaultLogger()();
        v37(v50, v49, v51);
        sub_100355110(v46, v47);
        sub_100355110(v46, v100);

        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.debug.getter();

        v54 = os_log_type_enabled(v52, v53);
        v56 = v0[25];
        v55 = v0[26];
        if (v54)
        {
          v96 = v0[18];
          v97 = v0[20];
          v95 = v53;
          v58 = v0[10];
          v57 = v0[11];
          v59 = v0[9];
          v60 = swift_slowAlloc();
          v105[0] = swift_slowAlloc();
          *v60 = 136315906;
          *(v60 + 4) = sub_100141FE4(v98, v48, v105);
          *(v60 + 12) = 2080;
          v61 = UUID.uuidString.getter();
          v63 = v62;
          v101 = *(v58 + 8);
          v101(v57, v59);
          v64 = sub_100141FE4(v61, v63, v105);

          *(v60 + 14) = v64;
          *(v60 + 22) = 2080;
          v65 = *(v55 + 16);
          v66 = *(v55 + 24);

          sub_1003935BC(v55, type metadata accessor for MobileDocumentReaderAuthenticationSession);
          v67 = sub_100141FE4(v65, v66, v105);

          *(v60 + 24) = v67;
          *(v60 + 32) = 2080;
          sub_10039361C(&qword_100845DE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v68 = dispatch thunk of CustomStringConvertible.description.getter();
          v70 = v69;
          sub_1003935BC(v56, type metadata accessor for MobileDocumentReaderAuthenticationSession);
          v71 = sub_100141FE4(v68, v70, v105);

          *(v60 + 34) = v71;
          _os_log_impl(&_mh_execute_header, v52, v95, "MobileDocumentReaderAuthenticationManager found mismatch between calling app identifiers %s, %s and stored session app identifiers %s, %s", v60, 0x2Au);
          swift_arrayDestroy();

          v72 = v96;
          v73 = v97;
        }

        else
        {
          v74 = v0[20];
          v75 = v0[18];
          v77 = v0[10];
          v76 = v0[11];
          v78 = v0[9];

          sub_1003935BC(v56, type metadata accessor for MobileDocumentReaderAuthenticationSession);
          sub_1003935BC(v55, type metadata accessor for MobileDocumentReaderAuthenticationSession);
          v101 = *(v77 + 8);
          v101(v76, v78);
          v73 = v74;
          v72 = v75;
        }

        v103(v73, v72);
        v33 = v0[28];
        v79 = v0[14];
        v80 = v0[12];
        v81 = v0[9];
        (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.documentReaderSessionAppMismatch(_:), v0[6]);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        v101(v80, v81);
        v82 = v79;
      }

      sub_1003935BC(v82, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
    }

    sub_1003935BC(v33, type metadata accessor for MobileDocumentReaderAuthenticationSession);
    v83 = v0[31];
    v84 = v0[32];
    v85 = v0[30];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v83 + 8))(v84, v85);
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v8 = v0[1];
    goto LABEL_24;
  }

  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[30];
  v7 = v0[2];
  sub_10000BE18(v3, &qword_1008419D8, &qword_1006DEAB0);
  (*(v2 + 56))(v7, 1, 1, v1);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v5 + 8))(v4, v6);
LABEL_3:

  v8 = v0[1];
LABEL_24:

  return v8();
}

uint64_t sub_10038AC84()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10038AEFC(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for MobileDocumentReaderConfiguration();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for MobileDocumentReaderAuthenticationSession(0);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[20] = v6;
  v3[21] = *(v6 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v3[29] = v7;
  v3[30] = *(v7 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return _swift_task_switch(sub_10038B170, 0, 0);
}

uint64_t sub_10038B170(uint64_t a1)
{
  v90 = v1;
  v2 = v1[12];
  v3 = v1[7];
  if (*(v3 + *(v2 + 44) + 8) || *(v3 + *(v2 + 40) + 8) >> 60 != 15)
  {
    v29 = v1[15];
    defaultLogger()();
    sub_100355110(v3, v29);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v1[23];
    v34 = v1[20];
    v35 = v1[21];
    v36 = v1[15];
    if (v32)
    {
      v86 = v1[23];
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v89 = v38;
      *v37 = 136315138;
      v39 = *v36;
      v40 = v36[1];

      sub_1003935BC(v36, type metadata accessor for MobileDocumentReaderAuthenticationSession);
      v41 = sub_100141FE4(v39, v40, &v89);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "MobileDocumentReaderAuthenticationManager can only refresh tokenless sessions, returning existing session for sessionIdentifier %s", v37, 0xCu);
      sub_10000BB78(v38);

      (*(v35 + 8))(v86, v34);
    }

    else
    {

      sub_1003935BC(v36, type metadata accessor for MobileDocumentReaderAuthenticationSession);
      (*(v35 + 8))(v33, v34);
    }

    (*(v1[13] + 56))(v1[6], 1, 1, v1[12]);
  }

  else
  {
    v4 = v1[33];
    v5 = v1[30];
    v81 = v1[29];
    v84 = v1[32];
    v7 = v1[18];
    v6 = v1[19];
    sub_10000BA08((v1[8] + 248), *(v1[8] + 272));
    dispatch thunk of DateProviding.now.getter();
    sub_100393D4C();
    v9 = v8;
    defaultLogger()();
    sub_100355110(v3, v6);
    sub_100355110(v3, v7);
    (*(v5 + 16))(v84, v4, v81);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v1[32];
    v15 = v1[29];
    v14 = v1[30];
    v16 = v1[20];
    v17 = v1[21];
    v18 = v1[19];
    v82 = v1[28];
    v85 = v1[18];
    if (v12)
    {
      v77 = v1[32];
      v19 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v89 = v79;
      *v19 = 134218498;
      *(v19 + 4) = v9;
      *(v19 + 12) = 2080;
      v78 = v11;
      sub_10039361C(&qword_10083ACE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      sub_1003935BC(v18, type metadata accessor for MobileDocumentReaderAuthenticationSession);
      v23 = sub_100141FE4(v20, v22, &v89);

      *(v19 + 14) = v23;
      *(v19 + 22) = 2048;
      Date.timeIntervalSince(_:)();
      v25 = v24;
      v26 = v15;
      v27 = *(v14 + 8);
      v27(v77, v26);
      sub_1003935BC(v85, type metadata accessor for MobileDocumentReaderAuthenticationSession);
      *(v19 + 24) = v25;
      _os_log_impl(&_mh_execute_header, v10, v78, "MobileDocumentReaderAuthenticationManager got certificate refresh threshold = %f; session expiration is %s (%f seconds from now)", v19, 0x20u);
      sub_10000BB78(v79);

      v28 = *(v17 + 8);
      v28(v82, v16);
    }

    else
    {

      v44 = v15;
      v27 = *(v14 + 8);
      v27(v13, v44);
      sub_1003935BC(v85, type metadata accessor for MobileDocumentReaderAuthenticationSession);
      sub_1003935BC(v18, type metadata accessor for MobileDocumentReaderAuthenticationSession);
      v28 = *(v17 + 8);
      v28(v82, v16);
    }

    v1[34] = v27;
    v1[35] = v28;
    if (v9 <= 0.0)
    {
      v87 = v28;
      defaultLogger()();
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "MobileDocumentReaderAuthenticationManager got certificate refresh threshold <= 0, disabling optimistic refresh", v60, 2u);
      }

      v61 = v1[33];
      v62 = v1[29];
      v63 = v1[24];
      v64 = v1[20];
      v65 = v1[13];
      v80 = v1[12];
      v66 = v1[6];

      v87(v63, v64);
      v27(v61, v62);
      (*(v65 + 56))(v66, 1, 1, v80);
    }

    else
    {
      v46 = v1[30];
      v45 = v1[31];
      v47 = v1[29];
      Date.addingTimeInterval(_:)();
      v48 = static Date.< infix(_:_:)();
      v1[36] = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v27(v45, v47);
      if (v48)
      {
        defaultLogger()();
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 134217984;
          *(v51 + 4) = v9;
          _os_log_impl(&_mh_execute_header, v49, v50, "MobileDocumentReaderAuthenticationManager got session that will expire in less than  %f seconds from now; optimistically refreshing", v51, 0xCu);
        }

        v52 = v1[27];
        v53 = v1[20];
        v54 = v1[21];

        v1[37] = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v28(v52, v53);
        MobileDocumentReaderConfiguration.init(merchantServerAccessToken:userAcceptedTermsAndConditions:)();
        v55 = swift_task_alloc();
        v1[38] = v55;
        *v55 = v1;
        v55[1] = sub_10038BAA4;
        v56 = v1[17];
        v57 = v1[11];

        return sub_10038C984(v56, v57);
      }

      v88 = v28;
      defaultLogger()();
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "MobileDocumentReaderAuthenticationManager got certificate that is not nearing expiry, will not optimistically refresh", v69, 2u);
      }

      v70 = v1[33];
      v71 = v1[29];
      v72 = v1[25];
      v73 = v1[20];
      v74 = v67;
      v75 = v1[13];
      v83 = v1[12];
      v76 = v1[6];

      v88(v72, v73);
      v27(v70, v71);
      (*(v75 + 56))(v76, 1, 1, v83);
    }
  }

  v42 = v1[1];

  return v42();
}

uint64_t sub_10038BAA4()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_10038C5F8;
  }

  else
  {
    v2 = sub_10038BBB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038BBB8()
{
  v1 = v0[7];
  sub_10000BA08((v0[8] + 88), *(v0[8] + 112));
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  v0[40] = v4;
  *v4 = v0;
  v4[1] = sub_10038BC6C;

  return sub_100352FB4(v3, v2);
}

uint64_t sub_10038BC6C()
{

  return _swift_task_switch(sub_10038BD68, 0, 0);
}

uint64_t sub_10038BD68()
{
  sub_10000BA08((v0[8] + 88), *(v0[8] + 112));
  v1 = swift_task_alloc();
  v0[41] = v1;
  *v1 = v0;
  v1[1] = sub_10038BE10;
  v2 = v0[17];

  return sub_1003520AC(v2);
}

uint64_t sub_10038BE10()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_10038C250;
  }

  else
  {
    v2 = sub_10038BF24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038BF24(uint64_t a1)
{
  v31 = v1;
  v3 = v1[16];
  v2 = v1[17];
  defaultLogger()();
  sub_100355110(v2, v3);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[34];
  v29 = v1[35];
  v8 = v1[33];
  v9 = v1[29];
  v10 = v1[20];
  v11 = v1[16];
  v12 = v1[10];
  v28 = v1[11];
  v26 = v1[26];
  v27 = v1[9];
  if (v6)
  {
    v25 = v1[29];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 136315138;
    v23 = v8;
    v24 = v7;
    v15 = *v11;
    v16 = v11[1];

    sub_1003935BC(v11, type metadata accessor for MobileDocumentReaderAuthenticationSession);
    v17 = sub_100141FE4(v15, v16, &v30);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "MobileDocumentReaderAuthenticationManager returning refreshed session for sessionIdentifier %s", v13, 0xCu);
    sub_10000BB78(v14);

    v29(v26, v10);
    (*(v12 + 8))(v28, v27);
    v24(v23, v25);
  }

  else
  {

    sub_1003935BC(v11, type metadata accessor for MobileDocumentReaderAuthenticationSession);
    v29(v26, v10);
    (*(v12 + 8))(v28, v27);
    v7(v8, v9);
  }

  v18 = v1[12];
  v19 = v1[13];
  v20 = v1[6];
  sub_100355438(v1[17], v20);
  (*(v19 + 56))(v20, 0, 1, v18);

  v21 = v1[1];

  return v21();
}

uint64_t sub_10038C250()
{
  v30 = v0;
  sub_1003935BC(v0[17], type metadata accessor for MobileDocumentReaderAuthenticationSession);
  v1 = v0[14];
  v2 = v0[7];
  (*(v0[10] + 8))(v0[11], v0[9]);
  defaultLogger()();
  sub_100355110(v2, v1);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v28 = v0[34];
    v27 = v0[33];
    v25 = v0[35];
    v26 = v0[29];
    v24 = v0[22];
    v5 = v0[20];
    v6 = v0[14];
    v7 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = *v6;
    v9 = v6[1];

    sub_1003935BC(v6, type metadata accessor for MobileDocumentReaderAuthenticationSession);
    v10 = sub_100141FE4(v8, v9, &v29);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = sub_100141FE4(v11, v12, &v29);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "MobileDocumentReaderAuthenticationManager optimistic refresh failed for sessionIdentifier %s: %s", v7, 0x16u);
    swift_arrayDestroy();

    v25(v24, v5);
    v15 = v26;
    v14 = v27;
  }

  else
  {
    v16 = v0[35];
    v28 = v0[34];
    v17 = v0[33];
    v18 = v0[29];
    v19 = v0[22];
    v20 = v0[20];
    v21 = v0[14];

    sub_1003935BC(v21, type metadata accessor for MobileDocumentReaderAuthenticationSession);
    v16(v19, v20);
    v14 = v17;
    v15 = v18;
  }

  v28(v14, v15);
  (*(v0[13] + 56))(v0[6], 1, 1, v0[12]);

  v22 = v0[1];

  return v22();
}

uint64_t sub_10038C5F8()
{
  v30 = v0;
  v1 = v0[14];
  v2 = v0[7];
  (*(v0[10] + 8))(v0[11], v0[9]);
  defaultLogger()();
  sub_100355110(v2, v1);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v28 = v0[34];
    v27 = v0[33];
    v25 = v0[35];
    v26 = v0[29];
    v24 = v0[22];
    v5 = v0[20];
    v6 = v0[14];
    v7 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = *v6;
    v9 = v6[1];

    sub_1003935BC(v6, type metadata accessor for MobileDocumentReaderAuthenticationSession);
    v10 = sub_100141FE4(v8, v9, &v29);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = sub_100141FE4(v11, v12, &v29);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "MobileDocumentReaderAuthenticationManager optimistic refresh failed for sessionIdentifier %s: %s", v7, 0x16u);
    swift_arrayDestroy();

    v25(v24, v5);
    v15 = v26;
    v14 = v27;
  }

  else
  {
    v16 = v0[35];
    v28 = v0[34];
    v17 = v0[33];
    v18 = v0[29];
    v19 = v0[22];
    v20 = v0[20];
    v21 = v0[14];

    sub_1003935BC(v21, type metadata accessor for MobileDocumentReaderAuthenticationSession);
    v16(v19, v20);
    v14 = v17;
    v15 = v18;
  }

  v28(v14, v15);
  (*(v0[13] + 56))(v0[6], 1, 1, v0[12]);

  v22 = v0[1];

  return v22();
}

uint64_t sub_10038C984(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  sub_100007224(&qword_100841B98, &unk_1006DF0D0);
  v3[10] = swift_task_alloc();
  sub_100007224(&qword_100841BB0, &unk_1006DF080);
  v3[11] = swift_task_alloc();
  sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v3[12] = swift_task_alloc();
  sub_100007224(&qword_100835D88, &qword_1006DE890);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetchResult(0);
  v3[15] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v3[23] = swift_task_alloc();
  v6 = type metadata accessor for DIPSignpost();
  v3[24] = v6;
  v3[25] = *(v6 - 8);
  v3[26] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[27] = v7;
  v3[28] = *(v7 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v3[34] = v8;
  v3[35] = *(v8 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration(0);
  v3[40] = swift_task_alloc();

  return _swift_task_switch(sub_10038CD80, 0, 0);
}

uint64_t sub_10038CD80()
{
  v1 = sub_100387E44(*(v0 + 320));
  v2 = *(v0 + 320);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 272);
  v6 = *(v0 + 280);
  v7 = *(v2 + 32);
  *(v0 + 328) = v7;
  v8 = *(v2 + 40);
  *(v0 + 336) = v8;
  v9 = *(v3 + 28);
  v10 = *(v6 + 16);
  *(v0 + 344) = v10;
  *(v0 + 352) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v4, v2 + v9, v5, v1);
  v11 = MobileDocumentReaderConfiguration.merchantServerAccessToken.getter();
  *(v0 + 360) = sub_100391B94(v11, v12, v7, v8);
  *(v0 + 368) = v13;

  MobileDocumentReaderConfiguration.merchantServerAccessToken.getter();
  if (v14)
  {

    static DaemonSignposts.MobileDocumentReader.sessionIdentityKeyStatus.getter();
    DIPSignpost.init(_:)();
    defaultLogger()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "MobileDocumentReaderAuthenticationManager token exists, so there must be an identity key stored. Looking up now...", v17, 2u);
    }

    v18 = *(v0 + 256);
    v19 = *(v0 + 216);
    v20 = *(v0 + 224);
    v21 = *(v0 + 72);

    v22 = *(v20 + 8);
    *(v0 + 400) = v22;
    v22(v18, v19);
    sub_10000BA08((v21 + 88), *(v21 + 112));
    v23 = swift_task_alloc();
    *(v0 + 408) = v23;
    *v23 = v0;
    v23[1] = sub_10038D3CC;
    v24 = *(v0 + 304);

    return sub_10034DCAC(v7, v8, v24);
  }

  else
  {
    defaultLogger()();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "MobileDocumentReaderAuthenticationManager token does not exist, will create a new identity key if needed.", v28, 2u);
    }

    v29 = *(v0 + 264);
    v30 = *(v0 + 216);
    v31 = *(v0 + 224);

    (*(v31 + 8))(v29, v30);
    v32 = swift_task_alloc();
    *(v0 + 376) = v32;
    *v32 = v0;
    v32[1] = sub_10038D1CC;

    return sub_100382A70();
  }
}

uint64_t sub_10038D1CC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 384) = v1;

  if (v1)
  {

    v5 = sub_10038FC74;
  }

  else
  {
    *(v4 + 392) = a1;
    v5 = sub_10038D2FC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10038D2FC()
{
  v0[54] = v0[49];
  v1 = v0[9];
  sub_10000BA08(v1 + 41, v1[44]);
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = swift_task_alloc();
  v0[55] = v6;
  *v6 = v0;
  v6[1] = sub_10038DBB8;

  return sub_10059C7F0(v2, v3, v4, v5);
}

uint64_t sub_10038D3CC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 416) = a1;
  *(v3 + 424) = v1;

  if (v1)
  {

    v4 = sub_10038D9F8;
  }

  else
  {
    v4 = sub_10038D4E8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10038D4E8()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  sub_10000BA08((v0[52] + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_dateProvider), *(v0[52] + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_dateProvider + 24));

  dispatch thunk of DateProviding.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  (*(v3 + 8))(v1, v2);
  IsValid = SecCertificateIsValid();

  if (IsValid)
  {
    v6 = v0[25];
    v5 = v0[26];
    v7 = v0[24];
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v6 + 8))(v5, v7);
    v0[54] = v0[52];
    v8 = v0[9];
    sub_10000BA08(v8 + 41, v8[44]);
    v9 = v8[2];
    v10 = v8[3];
    v11 = v8[4];
    v12 = v8[5];
    v13 = swift_task_alloc();
    v0[55] = v13;
    *v13 = v0;
    v13[1] = sub_10038DBB8;

    return sub_10059C7F0(v9, v10, v11, v12);
  }

  else
  {

    defaultLogger()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "MobileDocumentReaderAuthenticationManager stored identity key has an expired attestation certificate. There is no way that the provided token will have the valid readerIdentifier.", v17, 2u);
    }

    v18 = v0[50];
    v31 = v0[40];
    v29 = v0[34];
    v30 = v0[38];
    v19 = v0[31];
    v20 = v0[27];
    v21 = v0[26];
    v26 = v0[25];
    v27 = v0[24];
    v28 = v0[35];
    v22 = v0[17];
    v23 = v0[18];
    v24 = v0[16];

    v18(v19, v20);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v22 + 104))(v23, enum case for DIPError.Code.documentReaderExpiredAttestationCertificate(_:), v24);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v26 + 8))(v21, v27);
    (*(v28 + 8))(v30, v29);
    sub_1003935BC(v31, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_10038D9F8()
{
  v1 = v0[40];
  v2 = v0[38];
  v3 = v0[34];
  v4 = v0[35];
  (*(v0[25] + 8))(v0[26], v0[24]);
  (*(v4 + 8))(v2, v3);
  sub_1003935BC(v1, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10038DBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[56] = a1;
  v5[57] = a2;
  v5[58] = a3;
  v5[59] = a4;

  return _swift_task_switch(sub_10038DCBC, 0, 0);
}

uint64_t sub_10038DCBC()
{
  v1 = v0[54];
  sub_10000BA08((v0[9] + 128), *(v0[9] + 152));
  v2 = MobileDocumentReaderConfiguration.merchantServerAccessToken.getter();
  v4 = v3;
  v0[60] = v3;
  v0[5] = type metadata accessor for MobileDocumentReaderIdentityKey(0);
  v0[6] = sub_10039361C(&qword_100842200, type metadata accessor for MobileDocumentReaderIdentityKey, &unk_1006DE970);
  v0[2] = v1;

  MobileDocumentReaderConfiguration.userAcceptedTermsAndConditions.getter();
  v5 = swift_task_alloc();
  v0[61] = v5;
  *v5 = v0;
  v5[1] = sub_10038DE0C;
  v6 = v0[58];
  v7 = v0[59];
  v8 = v0[56];
  v9 = v0[57];
  v10 = v0[40];
  v11 = v0[15];

  return sub_10037D944(v11, v2, v4, v10, v8, v9, v6, v7);
}

uint64_t sub_10038DE0C()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {

    v3 = sub_10038EE28;
  }

  else
  {
    sub_10000BB78((v2 + 16));
    v3 = sub_10038DF44;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10038DF44()
{
  v137 = v0;
  v1 = *v0[15];
  v0[63] = v1;
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_33:
    v121 = v0[57];
    v125 = v0[58];
    v117 = v0[56];
    v130 = v0[59];
    v92 = v0[40];
    v93 = v0[35];
    v133 = v0[34];
    v135 = v0[38];
    v94 = v0[17];
    v95 = v0[18];
    v96 = v0[15];
    v97 = v0[16];

    (*(v94 + 104))(v95, enum case for DIPError.Code.documentReaderMissingReaderAuthCertificate(_:), v97);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v10 = v92;
    swift_allocError();
    v11 = v96;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1000AE33C(v117, v121, v125, v130);

    (*(v93 + 8))(v135, v133);
    goto LABEL_34;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_33;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v0[64] = v3;
  v5 = v0[62];
  sub_10039107C(v3);
  v0[65] = v5;
  if (v5)
  {
    v7 = v0[58];
    v6 = v0[59];
    v9 = v0[56];
    v8 = v0[57];
    v10 = v0[40];
    v11 = v0[15];
    (*(v0[35] + 8))(v0[38], v0[34]);

    sub_1000AE33C(v9, v8, v7, v6);

LABEL_34:
    sub_1003935BC(v11, type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetchResult);
    sub_1003935BC(v10, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);

    v89 = v0[1];
LABEL_35:

    return v89();
  }

  MobileDocumentReaderConfiguration.merchantServerAccessToken.getter();
  if (!v12)
  {
    defaultLogger()();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[30];
    v18 = v0[27];
    v19 = v0[28];
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "MobileDocumentReaderAuthenticationManager merchantServerAccessToken is nil, return nil merchantLogo", v20, 2u);
    }

    (*(v19 + 8))(v17, v18);
    v21 = v0[54];
    v22 = v0[43];
    v23 = v0[37];
    v24 = v0[38];
    v25 = v0[34];
    v27 = v0[13];
    v26 = v0[14];
    v28 = v0[63] & 0xC000000000000001;
    v29 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
    (*(*(v29 - 8) + 56))(v26, 1, 1, v29);
    v22(v23, v24, v25);
    v31 = *(v21 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob);
    v30 = *(v21 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob + 8);
    sub_10000BBC4(v26, v27, &qword_100835D88, &qword_1006DE890);
    if (v28)
    {

      sub_10000B8B8(v31, v30);
      sub_1000363B4(0, 0xF000000000000000);
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v33 = *(v0[63] + 32);

      sub_10000B8B8(v31, v30);
      sub_1000363B4(0, 0xF000000000000000);
      v32 = v33;
    }

    v34 = v32;
    v35 = v0[19];
    v36 = v0[20];
    v37 = v0[12];
    SecCertificateRef.expirationDate.getter();
    v131 = v31;
    v134 = v30;
    if ((*(v36 + 48))(v37, 1, v35) == 1)
    {
      v106 = v0[58];
      v108 = v0[59];
      v102 = v0[56];
      v104 = v0[57];
      v114 = v0[64];
      v126 = v0[37];
      v128 = v0[38];
      v98 = v0[35];
      v100 = v0[40];
      v39 = v0[17];
      v38 = v0[18];
      v40 = v0[15];
      v41 = v0[16];
      v118 = v0[14];
      v122 = v0[34];
      v111 = v0[13];
      v42 = v0[12];
      sub_10000BD94(0, 0xF000000000000000);

      sub_10000BE18(v42, &unk_100849400, &unk_1006BFBB0);
      (*(v39 + 104))(v38, enum case for DIPError.Code.documentReaderCertificateValidationFailed(_:), v41);
      v11 = v40;
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v10 = v100;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_1000AE33C(v102, v104, v106, v108);
      sub_10000BD94(0, 0xF000000000000000);
      sub_10000B90C(v131, v30);

      sub_10000BE18(v111, &qword_100835D88, &qword_1006DE890);
      v43 = *(v98 + 8);
      v43(v126, v122);
      sub_10000BE18(v118, &qword_100835D88, &qword_1006DE890);
      v43(v128, v122);
      goto LABEL_34;
    }

    v44 = v0[65];
    v123 = *(v0[20] + 32);
    v123(v0[21], v0[12], v0[19]);
    v45 = SecCertificateRef.pseudonym.getter();
    v47 = v46;
    SecCertificateRef.logotype.getter();
    v48 = v0[11];
    if (v44)
    {

      v49 = type metadata accessor for Logotype();
      (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
      sub_10000BE18(v48, &qword_100841BB0, &unk_1006DF080);
      v50 = 0;
    }

    else
    {
      v90 = type metadata accessor for Logotype();
      v91 = (*(*(v90 - 8) + 48))(v48, 1, v90);
      sub_10000BE18(v48, &qword_100841BB0, &unk_1006DF080);
      v50 = 0;
      if (v91 != 1 && v47)
      {
        SecCertificateRef.localizedRelyingPartyNames.getter();
        v51 = v45;
        v50 = 1;
        goto LABEL_22;
      }
    }

    v51 = v45;
    v52 = v0[10];
    v53 = type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNames();
    (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
LABEL_22:
    v54 = v0[37];
    v56 = v0[34];
    v55 = v0[35];
    (v0[43])(v0[36], v54, v56);
    v57 = SecCertificateRef.uid()();

    v58 = *(v55 + 8);
    v58(v54, v56);
    v129 = v58;
    if (v50)
    {
      v109 = v51;
      v112 = v47;
    }

    else
    {
      sub_10000BD94(0, 0xF000000000000000);

      v109 = 0;
      v112 = 0;
    }

    v60 = v0[45];
    v59 = v0[46];
    v61 = v0[41];
    v62 = v0[35];
    v103 = v0[36];
    v105 = v0[63];
    v99 = v0[42];
    v101 = v0[34];
    v63 = v0[21];
    v64 = v0[19];
    v107 = v0[13];
    v65 = v0[10];
    v66 = v0[7];
    v67 = type metadata accessor for MobileDocumentReaderAuthenticationSession(0);
    sub_1000B1FC8(v65, &v66[v67[12]], &qword_100841B98, &unk_1006DF0D0);
    v123(&v66[v67[13]], v63, v64);
    *v66 = v60;
    *(v66 + 1) = v59;
    *(v66 + 2) = v61;
    *(v66 + 3) = v99;
    (*(v62 + 32))(&v66[v67[6]], v103, v101);
    *&v66[v67[7]] = v105;
    v68 = &v66[v67[8]];
    *v68 = v131;
    v68[1] = v134;
    *&v66[v67[9]] = v57;
    *&v66[v67[10]] = xmmword_1006BF650;
    v69 = &v66[v67[11]];
    *v69 = v109;
    v69[1] = v112;
    sub_1000B1FC8(v107, &v66[v67[14]], &qword_100835D88, &qword_1006DE890);

    defaultLogger()();

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();

    v72 = os_log_type_enabled(v70, v71);
    v132 = v0[64];
    v124 = v0[58];
    v127 = v0[59];
    v73 = v0[56];
    v74 = v0[57];
    v75 = v0[46];
    if (v72)
    {
      v76 = v0[45];
      v116 = v0[34];
      v119 = v0[38];
      v77 = v0[28];
      v110 = v0[27];
      v113 = v0[29];
      v115 = v0[14];
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v136 = v79;
      *v78 = 136315138;
      v80 = sub_100141FE4(v76, v75, &v136);

      *(v78 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v70, v71, "MobileDocumentReaderAuthenticationManager createSession returning sessionIdentifier %s", v78, 0xCu);
      sub_10000BB78(v79);

      sub_1000AE33C(v73, v74, v124, v127);

      sub_10000BD94(0, 0xF000000000000000);

      (*(v77 + 8))(v113, v110);
      sub_10000BE18(v115, &qword_100835D88, &qword_1006DE890);
      v82 = v116;
      v81 = v119;
    }

    else
    {
      v120 = v0[38];
      v83 = v0[34];
      v85 = v0[28];
      v84 = v0[29];
      v86 = v0[27];
      v87 = v0[14];

      sub_1000AE33C(v73, v74, v124, v127);

      sub_10000BD94(0, 0xF000000000000000);

      (*(v85 + 8))(v84, v86);
      sub_10000BE18(v87, &qword_100835D88, &qword_1006DE890);
      v81 = v120;
      v82 = v83;
    }

    v129(v81, v82);
    v88 = v0[40];
    sub_1003935BC(v0[15], type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetchResult);
    sub_1003935BC(v88, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);

    v89 = v0[1];
    goto LABEL_35;
  }

  v13 = swift_task_alloc();
  v0[66] = v13;
  *v13 = v0;
  v13[1] = sub_10038EFF0;

  return sub_100391EBC(v4);
}

uint64_t sub_10038EE28()
{
  v1 = v0[40];
  v2 = v0[38];
  v3 = v0[34];
  v4 = v0[35];
  sub_1000AE33C(v0[56], v0[57], v0[58], v0[59]);

  (*(v4 + 8))(v2, v3);
  sub_1003935BC(v1, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);
  sub_10000BB78(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10038EFF0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 536) = a1;
  *(v3 + 544) = a2;

  return _swift_task_switch(sub_10038F0F4, 0, 0);
}

uint64_t sub_10038F0F4()
{
  v113 = v0;
  v110 = v0[67];
  v111 = v0[68];
  v1 = v0[54];
  v2 = v0[43];
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[34];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[63] & 0xC000000000000001;
  v9 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v2(v3, v4, v5);
  v10 = v1 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob;
  v12 = *(v1 + OBJC_IVAR____TtC8coreidvd31MobileDocumentReaderIdentityKey_keyBlob);
  v11 = *(v10 + 8);
  sub_10000BBC4(v6, v7, &qword_100835D88, &qword_1006DE890);
  v109 = v11;
  if (v8)
  {

    sub_10000B8B8(v12, v11);
    v14 = v110;
    v13 = v111;
    sub_1000363B4(v110, v111);
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v16 = *(v0[63] + 32);

    sub_10000B8B8(v12, v11);
    v14 = v110;
    v13 = v111;
    sub_1000363B4(v110, v111);
    v15 = v16;
  }

  v17 = v15;
  v18 = v0[19];
  v19 = v0[20];
  v20 = v0[12];
  SecCertificateRef.expirationDate.getter();
  v107 = v12;
  if ((*(v19 + 48))(v20, 1, v18) != 1)
  {
    v28 = v0[65];
    v101 = *(v0[20] + 32);
    v101(v0[21], v0[12], v0[19]);
    v29 = SecCertificateRef.pseudonym.getter();
    v31 = v30;
    SecCertificateRef.logotype.getter();
    v32 = v0[11];
    if (v28)
    {

      v33 = type metadata accessor for Logotype();
      (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
      sub_10000BE18(v32, &qword_100841BB0, &unk_1006DF080);
      v34 = 0;
    }

    else
    {
      v74 = type metadata accessor for Logotype();
      v75 = (*(*(v74 - 8) + 48))(v32, 1, v74);
      sub_10000BE18(v32, &qword_100841BB0, &unk_1006DF080);
      v34 = 0;
      if (v75 != 1 && v31)
      {
        SecCertificateRef.localizedRelyingPartyNames.getter();
        v35 = v29;
        v34 = 1;
        goto LABEL_9;
      }
    }

    v35 = v29;
    v36 = v0[10];
    v37 = type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNames();
    (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
LABEL_9:
    v38 = v0[37];
    v40 = v0[34];
    v39 = v0[35];
    (v0[43])(v0[36], v38, v40);
    v41 = SecCertificateRef.uid()();

    v105 = *(v39 + 8);
    v105(v38, v40);
    if (v34)
    {
      v86 = v13;
      v88 = v14;
      v90 = v35;
      v93 = v31;
    }

    else
    {
      sub_10000BD94(v14, v13);

      v90 = 0;
      v93 = 0;
      v86 = 0xF000000000000000;
      v88 = 0;
    }

    v42 = v0[45];
    v43 = v0[46];
    v44 = v0[41];
    v45 = v0[35];
    v79 = v0[36];
    v81 = v0[63];
    v76 = v0[42];
    v77 = v0[34];
    v46 = v0[21];
    v47 = v0[19];
    v83 = v0[13];
    v48 = v0[10];
    v49 = v0[7];
    v50 = type metadata accessor for MobileDocumentReaderAuthenticationSession(0);
    sub_1000B1FC8(v48, &v49[v50[12]], &qword_100841B98, &unk_1006DF0D0);
    v101(&v49[v50[13]], v46, v47);
    *v49 = v42;
    *(v49 + 1) = v43;
    *(v49 + 2) = v44;
    *(v49 + 3) = v76;
    (*(v45 + 32))(&v49[v50[6]], v79, v77);
    *&v49[v50[7]] = v81;
    v51 = &v49[v50[8]];
    *v51 = v107;
    v51[1] = v109;
    *&v49[v50[9]] = v41;
    v52 = &v49[v50[10]];
    *v52 = v88;
    v52[1] = v86;
    v53 = &v49[v50[11]];
    *v53 = v90;
    v53[1] = v93;
    sub_1000B1FC8(v83, &v49[v50[14]], &qword_100835D88, &qword_1006DE890);

    defaultLogger()();

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();

    v56 = os_log_type_enabled(v54, v55);
    v108 = v0[64];
    v102 = v0[58];
    v104 = v0[59];
    v57 = v0[56];
    v58 = v0[57];
    v59 = v0[46];
    if (v56)
    {
      v60 = v0[45];
      v96 = v0[34];
      v98 = v0[38];
      v61 = v0[28];
      v89 = v0[27];
      v91 = v0[29];
      v94 = v0[14];
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v112[0] = v63;
      *v62 = 136315138;
      v64 = sub_100141FE4(v60, v59, v112);

      *(v62 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v54, v55, "MobileDocumentReaderAuthenticationManager createSession returning sessionIdentifier %s", v62, 0xCu);
      sub_10000BB78(v63);

      sub_1000AE33C(v57, v58, v102, v104);

      sub_10000BD94(v110, v111);

      (*(v61 + 8))(v91, v89);
      sub_10000BE18(v94, &qword_100835D88, &qword_1006DE890);
      v66 = v96;
      v65 = v98;
    }

    else
    {
      v99 = v0[38];
      v67 = v0[34];
      v69 = v0[28];
      v68 = v0[29];
      v70 = v0[27];
      v71 = v0[14];

      sub_1000AE33C(v57, v58, v102, v104);

      sub_10000BD94(v110, v111);

      (*(v69 + 8))(v68, v70);
      sub_10000BE18(v71, &qword_100835D88, &qword_1006DE890);
      v65 = v99;
      v66 = v67;
    }

    v105(v65, v66);
    v72 = v0[40];
    sub_1003935BC(v0[15], type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetchResult);
    sub_1003935BC(v72, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);

    v27 = v0[1];
    goto LABEL_16;
  }

  v82 = v0[58];
  v84 = v0[59];
  v78 = v0[56];
  v80 = v0[57];
  v87 = v0[64];
  v106 = v0[40];
  v97 = v0[37];
  v100 = v0[38];
  v21 = v0[35];
  v23 = v0[17];
  v22 = v0[18];
  v24 = v0[16];
  v103 = v0[15];
  v92 = v0[14];
  v95 = v0[34];
  v85 = v0[13];
  v25 = v0[12];
  sub_10000BD94(v14, v13);

  sub_10000BE18(v25, &unk_100849400, &unk_1006BFBB0);
  (*(v23 + 104))(v22, enum case for DIPError.Code.documentReaderCertificateValidationFailed(_:), v24);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  sub_1000AE33C(v78, v80, v82, v84);
  sub_10000BD94(v110, v111);
  sub_10000B90C(v107, v109);

  sub_10000BE18(v85, &qword_100835D88, &qword_1006DE890);
  v26 = *(v21 + 8);
  v26(v97, v95);
  sub_10000BE18(v92, &qword_100835D88, &qword_1006DE890);
  v26(v100, v95);
  sub_1003935BC(v103, type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetchResult);
  sub_1003935BC(v106, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);

  v27 = v0[1];
LABEL_16:

  return v27();
}

uint64_t sub_10038FC74()
{
  v1 = v0[40];
  (*(v0[35] + 8))(v0[38], v0[34]);
  sub_1003935BC(v1, type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration);

  v2 = v0[1];

  return v2();
}

void sub_10038FE14(char *a1@<X8>)
{
  v109 = a1;
  v1 = sub_100007224(&qword_100841B98, &unk_1006DF0D0);
  __chkstk_darwin(v1 - 8);
  v118 = &v100 - v2;
  v3 = type metadata accessor for DIPError.Code();
  v128 = *(v3 - 8);
  v129 = v3;
  __chkstk_darwin(v3);
  v127 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&qword_100841BB0, &unk_1006DF080);
  __chkstk_darwin(v5 - 8);
  v108 = &v100 - v6;
  v7 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  __chkstk_darwin(v7 - 8);
  object = &v100 - v8;
  v119 = type metadata accessor for Date();
  v121 = *(v119 - 8);
  __chkstk_darwin(v119);
  v116 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for UUID();
  v120 = *(v117 - 8);
  v10 = __chkstk_darwin(v117);
  v115 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v110 = &v100 - v12;
  v13 = type metadata accessor for Logger();
  v112 = *(v13 - 8);
  v113 = v13;
  __chkstk_darwin(v13);
  v111 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007224(&qword_100835D88, &qword_1006DE890);
  v16 = __chkstk_darwin(v15 - 8);
  v122 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v124 = &v100 - v18;
  v19 = sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v20 = __chkstk_darwin(v19 - 8);
  countAndFlagsBits = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v125 = &v100 - v22;
  v23 = type metadata accessor for URL();
  v126 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SecKeyRef.KeyClass();
  v130 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SecCertificate(0);
  v29 = sub_10034CE68();
  v30 = static NSBundle.internalSettings.getter();
  v31 = v131;
  v32 = static SecCertificateRef.make(with:in:)();
  if (v31)
  {

    return;
  }

  v106 = v29;
  v104 = 0xD000000000000015;
  v33 = v28;
  v34 = v130;
  v131 = v32;
  v105 = v25;
  v107 = v23;

  v35 = Data.init(base64Encoded:options:)();
  if (v36 >> 60 == 15)
  {
    (*(v128 + 104))(v127, enum case for DIPError.Code.documentReaderMissingReaderAuthKey(_:), v129);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_12:

    return;
  }

  v37 = v35;
  v38 = v36;
  type metadata accessor for SecKey(0);
  (*(v34 + 104))(v33, enum case for SecKeyRef.KeyClass.private(_:), v26);
  v39 = static SecKeyRef.makeECKey(from:keyClass:)();
  v102 = v37;
  v103 = v38;
  (*(v34 + 8))(v33, v26);
  v40 = static NSBundle.internalSettings.getter();
  if (!v40)
  {
    v51 = v125;
    (*(v126 + 56))(v125, 1, 1, v107);
    v45 = v128;
    v50 = v129;
LABEL_11:
    sub_10000BE18(v51, &unk_100844540, &unk_1006BFBC0);
    (*(v45 + 104))(v127, enum case for DIPError.Code.unexpectedDaemonState(_:), v50);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    sub_10000BD94(v102, v103);
    goto LABEL_12;
  }

  v41 = v40;
  v42 = String._bridgeToObjectiveC()();
  v43 = String._bridgeToObjectiveC()();
  v44 = [v41 URLForResource:v42 withExtension:v43];

  v45 = v128;
  if (v44)
  {
    v46 = countAndFlagsBits;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = 0;
    v48 = v107;
    v49 = v105;
    v50 = v129;
  }

  else
  {
    v47 = 1;
    v48 = v107;
    v49 = v105;
    v50 = v129;
    v46 = countAndFlagsBits;
  }

  v52 = v126;
  (*(v126 + 56))(v46, v47, 1, v48);
  v53 = v46;
  v51 = v125;
  sub_1000B1FC8(v53, v125, &unk_100844540, &unk_1006BFBC0);
  v54 = (*(v52 + 48))(v51, 1, v48);
  v55 = v124;
  if (v54 == 1)
  {
    goto LABEL_11;
  }

  (*(v52 + 32))(v49, v51, v48);
  v125 = Data.init(contentsOf:options:)();
  v130 = v56;
  v57 = sub_100007224(&unk_100835E00, &qword_1006C46A0);
  (*(*(v57 - 8) + 56))(v55, 1, 1, v57);
  v58 = v111;
  defaultLogger()();
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "MobileDocumentReaderAuthenticationManager using hardcoded reader authentication session.", v61, 2u);
  }

  (*(v112 + 8))(v58, v113);
  v62 = v110;
  UUID.init()();
  sub_100007224(&unk_100845FD0, &qword_1006DB190);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1006DAE90;
  v64 = v131;
  *(v63 + 32) = v131;
  sub_10000BBC4(v55, v122, &qword_100835D88, &qword_1006DE890);
  v65 = v64;
  v66 = v127;
  v67 = object;
  v101 = v39;
  v131 = v65;
  if ((v63 & 0xC000000000000001) != 0)
  {
    v99 = v39;
    v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v68 = v65;
    v69 = v39;
  }

  SecCertificateRef.expirationDate.getter();
  v70 = v67;
  v71 = v121;
  v72 = v119;
  if ((*(v121 + 48))(v70, 1, v119) == 1)
  {

    v73 = v101;

    sub_10000BE18(v70, &unk_100849400, &unk_1006BFBB0);
    (*(v128 + 104))(v66, enum case for DIPError.Code.documentReaderCertificateValidationFailed(_:), v129);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v125, v130);

    sub_10000BD94(v102, v103);
    sub_10000BE18(v122, &qword_100835D88, &qword_1006DE890);
    (*(v120 + 8))(v62, v117);
    sub_10000BE18(v124, &qword_100835D88, &qword_1006DE890);
    (*(v126 + 8))(v105, v107);
  }

  else
  {
    v128 = 0x8000000100711810;
    v129 = 0x8000000100711830;
    v127 = *(v71 + 32);
    (v127)(v116, v70, v72);
    v113 = SecCertificateRef.pseudonym.getter();
    v75 = v74;
    v76 = v108;
    SecCertificateRef.logotype.getter();
    v121 = v71 + 32;
    v95 = type metadata accessor for Logotype();
    v96 = (*(*(v95 - 8) + 48))(v76, 1, v95);
    sub_10000BE18(v76, &qword_100841BB0, &unk_1006DF080);
    v97 = 0;
    v98 = v115;
    if (v96 == 1 || !v75)
    {
      v77 = v75;
      v78 = type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNames();
      (*(*(v78 - 8) + 56))(v118, 1, 1, v78);
    }

    else
    {
      SecCertificateRef.localizedRelyingPartyNames.getter();
      v77 = v75;
      v97 = 1;
    }

    v79 = v120;
    v80 = v117;
    (*(v120 + 16))(v98, v62, v117);
    v81 = SecCertificateRef.uid()();
    countAndFlagsBits = v81.value._countAndFlagsBits;
    object = v81.value._object;
    sub_10000BD94(v102, v103);

    (*(v79 + 8))(v62, v80);
    sub_10000BE18(v124, &qword_100835D88, &qword_1006DE890);
    (*(v126 + 8))(v105, v107);
    if (v97)
    {
      v82 = v109;
      v83 = v130;
      v84 = v125;
      v85 = v113;
    }

    else
    {
      sub_10000B90C(v125, v130);

      v85 = 0;
      v77 = 0;
      v84 = 0;
      v83 = 0xF000000000000000;
      v82 = v109;
    }

    v86 = type metadata accessor for MobileDocumentReaderAuthenticationSession(0);
    sub_1000B1FC8(v118, &v82[v86[12]], &qword_100841B98, &unk_1006DF0D0);
    (v127)(&v82[v86[13]], v116, v119);
    v87 = v128;
    *v82 = 0xD00000000000001ALL;
    *(v82 + 1) = v87;
    v88 = v129;
    *(v82 + 2) = 0xD00000000000001ELL;
    *(v82 + 3) = v88;
    (*(v120 + 32))(&v82[v86[6]], v115, v80);
    *&v82[v86[7]] = v63;
    v89 = &v82[v86[8]];
    *v89 = v101;
    *(v89 + 1) = 0x2000000000000000;
    v90 = &v82[v86[9]];
    v91 = v122;
    v92 = object;
    *v90 = countAndFlagsBits;
    *(v90 + 1) = v92;
    v93 = &v82[v86[10]];
    *v93 = v84;
    v93[1] = v83;
    v94 = &v82[v86[11]];
    *v94 = v85;
    v94[1] = v77;
    sub_1000B1FC8(v91, &v82[v86[14]], &qword_100835D88, &qword_1006DE890);
  }
}

uint64_t sub_10039107C(uint64_t a1)
{
  v35 = a1;
  v31 = type metadata accessor for DIPError.Code();
  v36 = *(v31 - 8);
  __chkstk_darwin(v31);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderSessionStatus();
  v3 = *(v30 - 8);
  __chkstk_darwin(v30);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = __chkstk_darwin(v6);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BA08((v1 + 248), *(v1 + 272));
  dispatch thunk of DateProviding.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  (*(v12 + 8))(v14, v11);
  if (SecCertificateIsValid())
  {
    defaultLogger()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "MobileDocumentReaderAuthenticationManager successfully validated reader authentication certificate", v17, 2u);
    }

    return (*(v33 + 8))(v10, v34);
  }

  else
  {
    type metadata accessor for DaemonAnalytics();
    v19 = enum case for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason.certificateExpired(_:);
    v20 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason();
    (*(*(v20 - 8) + 104))(v5, v19, v20);
    v21 = v30;
    (*(v3 + 104))(v5, enum case for DaemonAnalytics.MobileDocumentReaderSessionStatus.invalid(_:), v30);
    static DaemonAnalytics.sendReadDocumentSessionStatus(status:)();
    (*(v3 + 8))(v5, v21);
    v22 = *(v36 + 104);
    v36 += 104;
    v22(v32, enum case for DIPError.Code.documentReaderSessionExpired(_:), v31);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v23 = objc_opt_self();
    swift_errorRetain();
    v24 = [v23 standardUserDefaults];
    v25._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableSessionValidityCheck.getter();
    v26 = NSUserDefaults.internalBool(forKey:)(v25);

    if (v26)
    {
      v27 = v29;
      defaultLogger()();
      DIPLogError(_:message:log:)();

      (*(v33 + 8))(v27, v34);
    }

    else
    {
      v22(v32, enum case for DIPError.Code.internalError(_:), v31);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_1003916E8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1003917AC, 0, 0);
}

uint64_t sub_1003917AC()
{
  sub_10000BA08((v0[4] + 88), *(v0[4] + 112));
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100391854;
  v3 = v0[2];
  v2 = v0[3];

  return sub_100352FB4(v3, v2);
}

uint64_t sub_100391854()
{

  return _swift_task_switch(sub_100391950, 0, 0);
}

uint64_t sub_100391950(uint64_t a1)
{
  v17 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v1[6];
    v4 = v1[7];
    v6 = v1[5];
    v8 = v1[2];
    v7 = v1[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100141FE4(v8, v7, &v16);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderAuthenticationManager successfully cleaned up session for identifier %s", v9, 0xCu);
    sub_10000BB78(v10);

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v12 = v1[6];
    v11 = v1[7];
    v13 = v1[5];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v1[1];

  return v14();
}

uint64_t sub_100391AF0()
{
  sub_10000BB78(v0 + 6);
  sub_10000BB78(v0 + 11);
  sub_10000BB78(v0 + 16);
  sub_10000BB78(v0 + 21);
  sub_10000BE18((v0 + 26), &qword_100842208, &qword_1006DF0C0);
  sub_10000BB78(v0 + 31);
  sub_10000BB78(v0 + 36);
  sub_10000BB78(v0 + 41);

  return swift_deallocClassInstance();
}

uint64_t sub_100391B94(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for SHA256();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = type metadata accessor for SHA256Digest();
  v12 = *(v25[0] - 8);
  __chkstk_darwin(v25[0]);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v26 = a1;
    v27 = a2;

    v15._countAndFlagsBits = 32;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = a3;
    v16._object = a4;
    String.append(_:)(v16);
  }

  else
  {
    v26 = a3;
    v27 = a4;
  }

  v17._countAndFlagsBits = 32;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  type metadata accessor for UUID();
  sub_10039361C(&qword_100845DE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19 = sub_100343B88(v26, v27);
  v21 = v20;
  sub_10039361C(&qword_1008336E0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_10000B8B8(v19, v21);
  sub_10037939C(v19, v21, v11);
  sub_10000B90C(v19, v21);
  dispatch thunk of HashFunction.finalize()();
  (*(v9 + 8))(v11, v8);
  sub_10039361C(&qword_1008336E8, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v22 = v25[0];
  v23 = Digest.hexStr.getter();
  sub_10000B90C(v19, v21);
  (*(v12 + 8))(v14, v22);
  return v23;
}

uint64_t sub_100391EBC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = sub_100007224(&qword_1008421F8, &qword_1006DF0B0);
  v1[7] = swift_task_alloc();
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = sub_100007224(&qword_100841BA0, &qword_1006DEA88);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = sub_100007224(&qword_100841BA8, &unk_1006DEA90);
  v1[16] = swift_task_alloc();
  v5 = type metadata accessor for HashDigest();
  v1[17] = v5;
  v1[18] = *(v5 - 8);
  v1[19] = swift_task_alloc();
  sub_100007224(&qword_100841BB0, &unk_1006DF080);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v1[22] = swift_task_alloc();
  v6 = type metadata accessor for DIPSignpost();
  v1[23] = v6;
  v1[24] = *(v6 - 8);
  v1[25] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v1[26] = v7;
  v1[27] = *(v7 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_10039228C, 0, 0);
}

uint64_t sub_10039228C()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableLogoFetch.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = v0 + 30;
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "MobileDocumentReaderAuthenticationManager fetchLogo disabled by UserDefaults. Returning nil image data", v7, 2u);
    }

    v8 = 26;
    v9 = 27;
    goto LABEL_13;
  }

  v4 = v0 + 25;
  static DaemonSignposts.MobileDocumentReader.sessionFetchLogo.getter();
  DIPSignpost.init(_:)();
  SecCertificateRef.logotype.getter();
  v10 = v0[20];
  sub_10000BBC4(v0[21], v10, &qword_100841BB0, &unk_1006DF080);
  v11 = type metadata accessor for Logotype();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);
  v14 = v0[20];
  if (v13 == 1)
  {
    sub_10000BE18(v0[20], &qword_100841BB0, &unk_1006DF080);
LABEL_11:
    v33 = v0[7];
    v35 = v0[4];
    v34 = v0[5];
    v36 = v0[3];
    type metadata accessor for DaemonAnalytics();
    v37 = enum case for DaemonAnalytics.MobileDocumentReaderFetchLogoError.documentReaderCertificateLogotypeMissing(_:);
    LogoError = type metadata accessor for DaemonAnalytics.MobileDocumentReaderFetchLogoError();
    (*(*(LogoError - 8) + 104))(v33, v37, LogoError);
    swift_storeEnumTagMultiPayload();
    static DaemonAnalytics.sendMobileDocumentReaderFetchLogoResult(result:logoURLString:)();
    sub_10000BE18(v33, &qword_1008421F8, &qword_1006DF0B0);
    (*(v35 + 104))(v34, enum case for DIPError.Code.documentReaderCertificateLogotypeMissing(_:), v36);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_12;
  }

  v15 = Logotype.logotypeTuples.getter();
  (*(v12 + 8))(v14, v11);
  if (!*(v15 + 16))
  {

    goto LABEL_11;
  }

  v16 = v0[18];
  v17 = v0[16];
  v19 = v0[14];
  v18 = v0[15];
  v20 = v0[12];
  v49 = v0[19];
  v51 = v0[10];
  v53 = v0[9];
  v46 = v0[17];
  v47 = v0[8];
  v21 = *(v0[13] + 80);
  sub_10000BBC4(v15 + ((v21 + 32) & ~v21), v19, &qword_100841BA0, &qword_1006DEA88);

  v22 = (v19 + *(v20 + 48));
  v23 = *v22;
  v24 = v22[1];
  v25 = (v17 + *(v18 + 48));
  v26 = *(v16 + 32);
  v26(v17, v19, v46);
  *v25 = v23;
  v25[1] = v24;
  v27 = (v17 + *(v18 + 48));
  v0[31] = *v27;
  v0[32] = v27[1];
  v26(v49, v17, v46);
  URL.init(string:encodingInvalidCharacters:)();
  if ((*(v51 + 48))(v47, 1, v53) == 1)
  {
    v52 = v0[17];
    v54 = v0[19];
    v28 = v0[7];
    v29 = v0[5];
    v30 = v0[4];
    v48 = v0[3];
    v50 = v0[18];
    sub_10000BE18(v0[8], &unk_100844540, &unk_1006BFBC0);
    type metadata accessor for DaemonAnalytics();
    v31 = enum case for DaemonAnalytics.MobileDocumentReaderFetchLogoError.documentReaderCertificateInvalidLogoURL(_:);
    v32 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderFetchLogoError();
    (*(*(v32 - 8) + 104))(v28, v31, v32);
    swift_storeEnumTagMultiPayload();
    static DaemonAnalytics.sendMobileDocumentReaderFetchLogoResult(result:logoURLString:)();

    sub_10000BE18(v28, &qword_1008421F8, &qword_1006DF0B0);
    (*(v30 + 104))(v29, enum case for DIPError.Code.documentReaderCertificateInvalidLogoURL(_:), v48);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v50 + 8))(v54, v52);
LABEL_12:
    sub_10000BE18(v0[21], &qword_100841BB0, &unk_1006DF080);
    v40 = v0[27];
    v39 = v0[28];
    v41 = v0[26];
    defaultLogger()();
    DIPLogError(_:message:log:)();

    (*(v40 + 8))(v39, v41);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v8 = 23;
    v9 = 24;
LABEL_13:
    (*(v0[v9] + 8))(*v4, v0[v8]);

    v42 = v0[1];

    return v42(0, 0xF000000000000000);
  }

  (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
  v44 = swift_task_alloc();
  v0[33] = v44;
  *v44 = v0;
  v44[1] = sub_100392B30;
  v45 = v0[11];

  return sub_1003A1518(v45);
}

uint64_t sub_100392B30(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[34] = a1;
  v4[35] = a2;
  v4[36] = v2;

  if (v2)
  {
    v5 = sub_1003931F4;
  }

  else
  {
    v5 = sub_100392C48;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100392C48()
{
  v1 = v0[36];
  v2 = HashDigest.equalsHash(of:)();
  if (v1)
  {
    v4 = v0[18];
    v3 = v0[19];
    v5 = v0[17];
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];
    sub_10000B90C(v0[34], v0[35]);

    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v3, v5);
LABEL_8:
    sub_10000BE18(v0[21], &qword_100841BB0, &unk_1006DF080);
    v25 = v0[27];
    v24 = v0[28];
    v26 = v0[26];
    defaultLogger()();
    DIPLogError(_:message:log:)();

    (*(v25 + 8))(v24, v26);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    v40 = 0;
    v42 = 0xF000000000000000;
    goto LABEL_9;
  }

  if ((v2 & 1) == 0)
  {
    v36 = v0[35];
    v38 = v0[18];
    v41 = v0[17];
    v43 = v0[19];
    v32 = v0[34];
    v34 = v0[11];
    v29 = v0[10];
    v30 = v0[9];
    v18 = v0[7];
    v19 = v0[4];
    v20 = v0[5];
    v21 = v0[3];
    type metadata accessor for DaemonAnalytics();
    v22 = enum case for DaemonAnalytics.MobileDocumentReaderFetchLogoError.documentReaderCertificateDataHashMismatch(_:);
    LogoError = type metadata accessor for DaemonAnalytics.MobileDocumentReaderFetchLogoError();
    (*(*(LogoError - 8) + 104))(v18, v22, LogoError);
    swift_storeEnumTagMultiPayload();
    static DaemonAnalytics.sendMobileDocumentReaderFetchLogoResult(result:logoURLString:)();

    sub_10000BE18(v18, &qword_1008421F8, &qword_1006DF0B0);
    (*(v19 + 104))(v20, enum case for DIPError.Code.documentReaderCertificateDataHashMismatch(_:), v21);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v32, v36);
    (*(v29 + 8))(v34, v30);
    (*(v38 + 8))(v43, v41);
    goto LABEL_8;
  }

  defaultLogger()();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "MobileDocumentReaderAuthenticationManager fetchLogo successfully verified logo hashes. fetchLogo was a success.", v11, 2u);
  }

  v12 = v0[29];
  v14 = v0[26];
  v13 = v0[27];
  v39 = v0[21];
  v15 = v0[18];
  v35 = v0[17];
  v37 = v0[19];
  v16 = v0[10];
  v33 = v0[11];
  v31 = v0[9];
  v17 = v0[7];

  (*(v13 + 8))(v12, v14);
  type metadata accessor for DaemonAnalytics();
  swift_storeEnumTagMultiPayload();
  static DaemonAnalytics.sendMobileDocumentReaderFetchLogoResult(result:logoURLString:)();

  sub_10000BE18(v17, &qword_1008421F8, &qword_1006DF0B0);
  (*(v16 + 8))(v33, v31);
  (*(v15 + 8))(v37, v35);
  sub_10000BE18(v39, &qword_100841BB0, &unk_1006DF080);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  v40 = v0[34];
  v42 = v0[35];
LABEL_9:
  (*(v0[24] + 8))(v0[25], v0[23]);

  v27 = v0[1];

  return v27(v40, v42);
}

uint64_t sub_1003931F4()
{
  v16 = v0[17];
  v17 = v0[19];
  v1 = v0[10];
  v14 = v0[11];
  v15 = v0[18];
  v13 = v0[9];
  v2 = v0[7];
  v3 = v0[4];
  v11 = v0[5];
  v12 = v0[3];
  type metadata accessor for DaemonAnalytics();
  v4 = enum case for DaemonAnalytics.MobileDocumentReaderFetchLogoError.documentReaderCertificateLogoFetchFailed(_:);
  LogoError = type metadata accessor for DaemonAnalytics.MobileDocumentReaderFetchLogoError();
  (*(*(LogoError - 8) + 104))(v2, v4, LogoError);
  swift_storeEnumTagMultiPayload();
  static DaemonAnalytics.sendMobileDocumentReaderFetchLogoResult(result:logoURLString:)();

  sub_10000BE18(v2, &qword_1008421F8, &qword_1006DF0B0);
  (*(v3 + 104))(v11, enum case for DIPError.Code.internalError(_:), v12);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10039361C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v1 + 8))(v14, v13);
  (*(v15 + 8))(v17, v16);
  sub_10000BE18(v0[21], &qword_100841BB0, &unk_1006DF080);
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  defaultLogger()();
  DIPLogError(_:message:log:)();

  (*(v7 + 8))(v6, v8);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v0[24] + 8))(v0[25], v0[23]);

  v9 = v0[1];

  return v9(0, 0xF000000000000000);
}

uint64_t sub_1003935BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10039361C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100393678(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_100007224(&qword_100841B98, &unk_1006DF0D0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_11;
  }

  v13 = type metadata accessor for Date();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[13];
    goto LABEL_11;
  }

  v15 = sub_100007224(&qword_100835D88, &qword_1006DE890);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[14];

  return v16(v17, a2, v15);
}

uint64_t sub_100393858(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100007224(&qword_100841B98, &unk_1006DF0D0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_9;
  }

  v13 = type metadata accessor for Date();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[13];
    goto LABEL_9;
  }

  v15 = sub_100007224(&qword_100835D88, &qword_1006DE890);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[14];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for MobileDocumentReaderAuthenticationSession(uint64_t a1)
{
  result = qword_100842268;
  if (!qword_100842268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100393A70(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100393C08(319, &qword_1008420E8, type metadata accessor for SecCertificate, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_100133F18(319, &qword_100835140, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_100133F18(319, &qword_10083AA40, &type metadata for Data);
        if (v4 <= 0x3F)
        {
          sub_100393C08(319, &unk_100842278, &type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNames, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Date();
            if (v6 <= 0x3F)
            {
              sub_100382238(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100393C08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100393C78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 16))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100393CCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

uint64_t sub_100393D4C()
{
  v0 = type metadata accessor for Logger();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = __chkstk_darwin(v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v30 - v4;
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  refreshed = static DaemonInternalDefaultsKeys.MobileDocumentReader.tokenlessCertificateMinimumRefreshThreshold.getter();
  v12 = v11;
  v13 = [objc_opt_self() standardUserDefaults];
  v14._countAndFlagsBits = refreshed;
  v14._object = v12;
  v15 = NSUserDefaults.internalString(forKey:)(v14);

  if (v15.value._object)
  {
    v35[0] = v15;
    static CharacterSet.whitespaces.getter();
    sub_10001F298();
    v16 = StringProtocol.trimmingCharacters(in:)();
    v18 = v17;
    (*(v7 + 8))(v9, v6);

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      *&v35[0] = 0;
      v20 = sub_1006594FC(v16, v18, v35);

      if (v20)
      {
        v21 = *&v35[0];
        defaultLogger()();
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 134217984;
          *(v24 + 4) = v21;
          _os_log_impl(&_mh_execute_header, v22, v23, "MobileDocumentReaderAuthenticationSessionRefreshThresholdProvider found override value for tokenlessCertificateMinimumRefreshThreshold: %f", v24, 0xCu);
        }

        return (*(v31 + 8))(v5, v32);
      }

      defaultLogger()();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "MobileDocumentReaderAuthenticationSessionRefreshThresholdProvider unable to parse tokenlessCertificateMinimumRefreshThreshold override in settings; using configured value from server", v28, 2u);
      }

      (*(v31 + 8))(v3, v32);
    }

    else
    {
    }
  }

  if (qword_100832CF8 != -1)
  {
    swift_once();
  }

  v29 = *(qword_100882440 + 56);
  os_unfair_lock_lock(v29 + 126);
  memcpy(v34, &v29[4], sizeof(v34));
  sub_100394180(v34, &v33);
  os_unfair_lock_unlock(v29 + 126);
  memcpy(v35, v34, 0x1E8uLL);
  result = sub_1000A257C(v35);
  if (result != 1)
  {
    return sub_1003941F0(v34);
  }

  return result;
}

uint64_t sub_100394180(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100839998, &qword_1006DCAA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003941F0(uint64_t a1)
{
  v2 = sub_100007224(&qword_100839998, &qword_1006DCAA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100394268()
{
  v1 = type metadata accessor for Date();
  v0[32] = v1;
  v0[33] = *(v1 - 8);
  v0[34] = swift_task_alloc();

  return _swift_task_switch(sub_100394324, 0, 0);
}

uint64_t sub_100394324()
{
  type metadata accessor for SESKeystore();
  swift_allocObject();
  v1 = SESKeystore.init()();
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v2 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v2 + 54);
  sub_1000318FC(&v2[4], v0 + 16);
  os_unfair_lock_unlock(v2 + 54);
  v3 = *(v0 + 80);

  sub_100031918(v0 + 16);
  *(v0 + 240) = type metadata accessor for MobileDocumentReaderDataContainer();
  *(v0 + 248) = sub_10039469C();
  *(v0 + 216) = v3;
  type metadata accessor for MobileDocumentReaderAuthenticationStorage();
  v4 = swift_allocObject();
  *(v0 + 280) = v4;
  *(v4 + 16) = v1;
  sub_10001F358((v0 + 216), v4 + 24);
  static Date.now.getter();
  v5 = swift_task_alloc();
  *(v0 + 288) = v5;
  *v5 = v0;
  v5[1] = sub_1003944DC;
  v6 = *(v0 + 272);

  return sub_100353530(v6);
}

uint64_t sub_1003944DC()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 256);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100394634, 0, 0);
}

uint64_t sub_100394634()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10039469C()
{
  result = qword_100841BD0;
  if (!qword_100841BD0)
  {
    type metadata accessor for MobileDocumentReaderDataContainer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100841BD0);
  }

  return result;
}

uint64_t sub_100394708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1003947C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration(uint64_t a1)
{
  result = qword_100842328;
  if (!qword_100842328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003948B8(uint64_t a1)
{
  type metadata accessor for audit_token_t(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10039494C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100842398, &qword_1006DF3A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_1003954F0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  type metadata accessor for audit_token_t(0);
  sub_100395604(&qword_1008423A0, type metadata accessor for audit_token_t, &protocol conformance descriptor for audit_token_t);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration(0);
    LOBYTE(v12) = 3;
    type metadata accessor for UUID();
    sub_100395604(&qword_1008423A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100394C04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for UUID();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_100842378, &qword_1006DF3A0);
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration(0);
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v31 = a1;
  sub_10000BA08(a1, v12);
  sub_1003954F0();
  v13 = v8;
  v14 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return sub_10000BB78(v31);
  }

  v30 = v5;
  v15 = v28;
  type metadata accessor for audit_token_t(0);
  v35 = 0;
  sub_100395604(&qword_100842388, type metadata accessor for audit_token_t, &protocol conformance descriptor for audit_token_t);
  v16 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v33;
  *v11 = v32;
  *(v11 + 1) = v17;
  v34 = 1;
  *(v11 + 4) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v11 + 5) = v18;
  v34 = 2;
  *(v11 + 6) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v11 + 7) = v19;
  v34 = 3;
  sub_100395604(&qword_100842390, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v27 + 32))(&v11[*(v9 + 28)], v30, v3);
  v34 = 4;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v21;
  v22 = v20;
  (*(v15 + 8))(v13, v16);
  v23 = &v11[*(v9 + 32)];
  v24 = v30;
  *v23 = v22;
  *(v23 + 1) = v24;
  sub_100395544(v11, v26);
  sub_10000BB78(v31);
  return sub_1003955A8(v11);
}

unint64_t sub_100395098()
{
  v1 = *v0;
  v2 = 0x6B6F547469647561;
  v3 = 0xD000000000000016;
  if (v1 != 3)
  {
    v3 = 0x6E6564496D616574;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10039514C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100395864(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100395174(uint64_t a1)
{
  v2 = sub_1003954F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003951B0(uint64_t a1)
{
  v2 = sub_1003954F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10039521C(uint64_t a1)
{
  Hasher.init(_seed:)();
  audit_token_t.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for UUID();
  sub_100395604(&qword_1008423B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003952F8(uint64_t a1, uint64_t a2)
{
  audit_token_t.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for UUID();
  sub_100395604(&qword_1008423B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1003953CC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  audit_token_t.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for UUID();
  sub_100395604(&qword_1008423B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1003954F0()
{
  result = qword_100842380;
  if (!qword_100842380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842380);
  }

  return result;
}

uint64_t sub_100395544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003955A8(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100395604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10039564C(void *a1, void *a2)
{
  if ((static audit_token_t.== infix(_:_:)() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MobileDocumentReaderCallingApplicationConfiguration(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 32);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v6 == *v8 && v7 == v8[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_100395760()
{
  result = qword_1008423B8;
  if (!qword_1008423B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008423B8);
  }

  return result;
}

unint64_t sub_1003957B8()
{
  result = qword_1008423C0;
  if (!qword_1008423C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008423C0);
  }

  return result;
}

unint64_t sub_100395810()
{
  result = qword_1008423C8;
  if (!qword_1008423C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008423C8);
  }

  return result;
}

uint64_t sub_100395864(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B6F547469647561 && a2 == 0xEA00000000006E65;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FDC70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006FDC90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010070FBD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6564496D616574 && a2 == 0xEE00726569666974)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100395A34()
{
  v0 = sub_100007224(&qword_10083AB90, &unk_1006DE370);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for COSESignatureValidator();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = type metadata accessor for DateProvider();
  v12 = v4;
  v13 = &protocol witness table for DateProvider;
  sub_100032DBC(&v11);
  DateProvider.init()();
  v15 = type metadata accessor for ISO18013DocumentValidator();
  v16 = &protocol witness table for ISO18013DocumentValidator;
  sub_100032DBC(&v14);
  ISO18013DocumentValidator.init(signatureValidator:dateProvider:)();
  v9 = v4;
  v10 = &protocol witness table for DateProvider;
  sub_100032DBC(&v8);
  DateProvider.init()();
  v12 = type metadata accessor for DIPOIDVerifier();
  v13 = &protocol witness table for DIPOIDVerifier;
  sub_100032DBC(&v11);
  DIPOIDVerifier.init(dateProvider:)();
  v9 = v4;
  v10 = &protocol witness table for DateProvider;
  sub_100032DBC(&v8);
  DateProvider.init()();
  type metadata accessor for ISO18013IssuerAuthenticator();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 232) = &_swiftEmptySetSingleton;
  sub_10001F358(&v14, v5 + 112);
  sub_10001F358(&v11, v5 + 152);
  sub_10001F358(&v8, v5 + 192);
  return v5;
}

uint64_t sub_100395BE8@<X0>(uint64_t *a1@<X8>)
{
  v69 = a1;
  v1 = type metadata accessor for COSESignatureValidator();
  v77 = *(v1 - 8);
  __chkstk_darwin(v1);
  v61 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DIPError.Code();
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = __chkstk_darwin(v3);
  v60 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v71 = &v60 - v7;
  v8 = __chkstk_darwin(v6);
  v67 = &v60 - v9;
  __chkstk_darwin(v8);
  v63 = &v60 - v10;
  v11 = type metadata accessor for COSEMACValidator();
  v76 = *(v11 - 8);
  v12 = v76;
  __chkstk_darwin(v11);
  v64 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for ISO18013PresentmentType();
  v14 = *(v62 - 8);
  __chkstk_darwin(v62);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ISO18013DeviceAuthenticator(0);
  __chkstk_darwin(v17);
  v19 = (&v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_100007224(&qword_10083AB90, &unk_1006DE370);
  v21 = __chkstk_darwin(v20 - 8);
  v68 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v60 - v23;
  v25 = sub_100007224(&qword_100842550, &qword_1006DF5E0);
  v26 = __chkstk_darwin(v25 - 8);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = (&v60 - v29);
  (*(v12 + 56))(&v60 - v29, 1, 1, v11);
  v31 = *(v77 + 56);
  v70 = v24;
  v75 = v1;
  v31(v24, 1, 1, v1);
  v78[3] = type metadata accessor for FeatureFlagProvider();
  v78[4] = &protocol witness table for FeatureFlagProvider;
  sub_100032DBC(v78);
  FeatureFlagProvider.init()();
  v72 = v17;
  v32 = v69;
  v69[3] = v17;
  v32[4] = &off_10080E308;
  v65 = sub_100032DBC(v32);
  type metadata accessor for CBOREncoder();
  swift_allocObject();
  v33 = CBOREncoder.init()();
  v66 = v19;
  *v19 = v33;
  (*(v14 + 104))(v16, enum case for ISO18013PresentmentType.physical(_:), v62);

  CBOREncoder.presentmentType.setter();

  sub_100020260(v78, (v19 + 1));
  v69 = v30;
  sub_10000BBC4(v30, v28, &qword_100842550, &qword_1006DF5E0);
  v34 = *(v76 + 48);
  v35 = v28;
  v36 = v11;
  if (v34(v28, 1, v11) == 1)
  {
    v37 = v74;
    v38 = *(v73 + 104);
    v39 = v63;
    v38(v63, enum case for DIPError.Code.documentReaderInvalidDeviceMAC(_:), v74);
    v40 = v67;
    v38(v67, enum case for DIPError.Code.documentReaderInvalidDeviceAuthPublicKey(_:), v37);
    v41 = v71;
    v38(v71, enum case for DIPError.Code.documentReaderUnknownDeviceAuthAlgorithm(_:), v37);
    v42 = v64;
    COSEMACValidator.init(errorCodeInvalidMAC:errorCodeInvalidPublicKey:errorCodeUnknownAlgorithm:)();
    v43 = v34(v35, 1, v36);
    v44 = v39;
    v45 = v40;
    v46 = v76;
    v47 = v42;
    if (v43 != 1)
    {
      sub_10000BE18(v35, &qword_100842550, &qword_1006DF5E0);
      v47 = v42;
    }
  }

  else
  {
    v46 = v76;
    v48 = v64;
    (*(v76 + 32))(v64, v35, v11);
    v41 = v71;
    v45 = v67;
    v44 = v63;
    v47 = v48;
  }

  v49 = v72;
  v50 = v66;
  (*(v46 + 32))(v66 + *(v72 + 24), v47, v36);
  v51 = v70;
  v52 = v68;
  sub_10000BBC4(v70, v68, &qword_10083AB90, &unk_1006DE370);
  v53 = v77;
  v54 = v75;
  if ((*(v77 + 48))(v52, 1, v75) == 1)
  {
    sub_10000BE18(v52, &qword_10083AB90, &unk_1006DE370);
    v55 = v74;
    v56 = *(v73 + 104);
    v56(v44, enum case for DIPError.Code.documentReaderUnknownDeviceAuthAlgorithm(_:), v74);
    v56(v45, enum case for DIPError.Code.documentReaderInvalidDeviceAuthPublicKey(_:), v55);
    v56(v41, enum case for DIPError.Code.documentReaderMisformattedDeviceAuthSignature(_:), v55);
    v56(v60, enum case for DIPError.Code.documentReaderInvalidDeviceAuthSignature(_:), v55);
    COSESignatureValidator.init(errorCodeUnknownAlgorithm:errorCodeInvalidPublicKey:errorCodeMisformattedSignature:errorCodeInvalidSignature:)();
    sub_10000BE18(v51, &qword_10083AB90, &unk_1006DE370);
    sub_10000BE18(v69, &qword_100842550, &qword_1006DF5E0);
    sub_10000BB78(v78);
  }

  else
  {
    sub_10000BE18(v51, &qword_10083AB90, &unk_1006DE370);
    sub_10000BE18(v69, &qword_100842550, &qword_1006DF5E0);
    sub_10000BB78(v78);
    v57 = *(v53 + 32);
    v58 = v61;
    v57(v61, v52, v54);
    v57((v50 + *(v49 + 28)), v58, v54);
  }

  return sub_1003A103C(v50, v65, type metadata accessor for ISO18013DeviceAuthenticator);
}

uint64_t sub_100396430(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for Milestone();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MobileDocumentReaderSession.State();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == enum case for MobileDocumentReaderSession.State.finished(_:))
  {
    goto LABEL_2;
  }

  if (v12 == enum case for MobileDocumentReaderSession.State.ready(_:))
  {
    static MobileDocumentReaderMilestone.readDocumentReaderReady.getter();
LABEL_9:
    Milestone.log()();
    (*(v5 + 8))(v7, v4);
    return a2(a1);
  }

  if (v12 == enum case for MobileDocumentReaderSession.State.connecting(_:))
  {
    static MobileDocumentReaderMilestone.readDocumentReaderConnecting.getter();
    goto LABEL_9;
  }

  if (v12 == enum case for MobileDocumentReaderSession.State.awaitingApproval(_:))
  {
    static MobileDocumentReaderMilestone.readDocumentReaderAwaitingApproval.getter();
    goto LABEL_9;
  }

LABEL_2:
  (*(v9 + 8))(v11, v8);
  return a2(a1);
}

void *sub_100396660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v170 = *(v10 - 8);
  v171 = v10;
  __chkstk_darwin(v10);
  v169 = v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v5[17] = a4;
  v5[18] = 0;
  v174 = a1;
  v175 = a2;
  v5[14] = a1;
  v5[15] = a2;
  v176 = a3;
  v177 = a4;
  v5[16] = a3;
  v12 = type metadata accessor for UserDefaultsConfiguration();
  v215 = 0u;
  v216 = 0u;
  v217 = 0;
  v13 = static UserDefaultsConfiguration.standard.getter();
  v14 = type metadata accessor for MobileDocumentReaderIssuerRootStorage();
  swift_allocObject();
  v15 = sub_100348254(&v215, v13);
  v172 = v14;
  v5[49] = v14;
  v5[50] = &off_10080DF10;
  v5[46] = v15;
  v228 = 0;
  v226 = 0u;
  v227 = 0u;
  v168 = type metadata accessor for BundleRecordFetcher();
  v224 = v168;
  v225 = &protocol witness table for BundleRecordFetcher;
  sub_100032DBC(v223);
  BundleRecordFetcher.init()();
  type metadata accessor for SESKeystore();
  swift_allocObject();
  v16 = SESKeystore.init()();
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v162 = v5;
  v173 = v12;
  v17 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v17 + 54);
  sub_1000318FC(&v17[4], &v215);
  os_unfair_lock_unlock(v17 + 54);
  v18 = v219;

  sub_100031918(&v215);
  *(&v221 + 1) = type metadata accessor for MobileDocumentReaderDataContainer();
  v222 = sub_1003A1158(&qword_100841BD0, 255, type metadata accessor for MobileDocumentReaderDataContainer, &unk_1006E86B0);
  *&v220 = v18;
  v19 = type metadata accessor for MobileDocumentReaderAuthenticationStorage();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  sub_10001F358(&v220, v20 + 24);
  v222 = 0;
  v220 = 0u;
  v221 = 0u;
  v21 = type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  if (qword_100832CC0 != -1)
  {
    swift_once();
  }

  v22 = qword_1008823E0;
  v218 = qword_1008823E0;
  v213 = &type metadata for FairPlayProvisioner;
  v214 = &off_100817E20;
  v212[0] = swift_allocObject();
  sub_1003A06EC(&v215, v212[0] + 16);
  v23 = type metadata accessor for MobileDocumentReaderAuthenticationCertificateFetcher();
  v160 = v23;
  v24 = swift_allocObject();
  v25 = sub_10001F370(v212, &type metadata for FairPlayProvisioner);
  __chkstk_darwin(v25);
  v27 = (v154 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = v22;
  v30 = sub_1003A0B44(&v220, v27, v24);
  sub_1003A0EB8(&v215);
  sub_10000BB78(v212);
  v31 = type metadata accessor for MobileDocumentReaderLogoFetcher();
  v32 = swift_allocObject();
  *(&v221 + 1) = type metadata accessor for DateProvider();
  v222 = &protocol witness table for DateProvider;
  sub_100032DBC(&v220);
  DateProvider.init()();
  v167 = v21;
  static DIPAccountManager.sharedInstance.getter();
  v161 = qword_1008823E0;
  v218 = qword_1008823E0;
  v214 = &off_10080E120;
  v213 = v19;
  v212[0] = v20;
  v211 = &off_10080E458;
  v210 = v23;
  v159 = v30;
  v209[0] = v30;
  v208 = &off_10080E728;
  v207 = v31;
  v206[0] = v32;
  v204 = &type metadata for MobileDocumentReaderAuthenticationSessionRefreshThresholdProvider;
  v205 = &off_10080E570;
  v201 = &type metadata for FairPlayProvisioner;
  v202 = &off_100817E20;
  v200[0] = swift_allocObject();
  sub_1003A06EC(&v215, v200[0] + 16);
  v178 = type metadata accessor for MobileDocumentReaderAuthenticationManager();
  v33 = swift_allocObject();
  v34 = sub_10001F370(v212, v19);
  v166 = v154;
  __chkstk_darwin(v34);
  v36 = (v154 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = *(v37 + 16);
  v157 = v35;
  v158 = (v37 + 16);
  v155 = ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v38;
  (v38)(v36);
  v39 = sub_10001F370(v209, v210);
  v165 = v154;
  __chkstk_darwin(v39);
  v41 = (v154 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  v43 = sub_10001F370(v206, v207);
  v164 = v154;
  __chkstk_darwin(v43);
  v45 = (v154 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v46 + 16))(v45);
  sub_10001F370(v203, v204);
  v47 = sub_10001F370(v200, v201);
  v163 = v154;
  __chkstk_darwin(v47);
  v49 = (v154 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49);
  v51 = *v36;
  v52 = *v41;
  v53 = *v45;
  v199 = &off_10080E120;
  v198 = v19;
  v197[0] = v51;
  v195 = v160;
  v196 = &off_10080E458;
  v194[0] = v52;
  v192 = v31;
  v193 = &off_10080E728;
  *&v191 = v53;
  v189 = &type metadata for MobileDocumentReaderAuthenticationSessionRefreshThresholdProvider;
  v190 = &off_10080E570;
  v186 = &type metadata for FairPlayProvisioner;
  v187 = &off_100817E20;
  v54 = swift_allocObject();
  *&v185 = v54;
  v55 = v49[1];
  v54[1] = *v49;
  v54[2] = v55;
  v54[3] = v49[2];
  v56 = v175;
  v33[2] = v174;
  v33[3] = v56;
  v57 = v177;
  v33[4] = v176;
  v33[5] = v57;
  sub_100020260(v223, (v33 + 6));
  sub_100020260(v197, (v33 + 11));
  sub_100020260(v194, (v33 + 16));
  sub_100020260(&v191, (v33 + 21));
  sub_10000BBC4(&v226, &v180, &qword_100842208, &qword_1006DF0C0);
  v58 = v181;
  v59 = v161;
  if (v58)
  {
    sub_1003A0EB8(&v215);
    sub_10000BE18(&v226, &qword_100842208, &qword_1006DF0C0);
    sub_10000BB78(v223);
    sub_10000BB78(&v191);
    sub_10000BB78(v194);
    sub_10000BB78(v197);
    sub_10001F358(&v180, &v183);
    sub_10001F358(&v183, (v33 + 26));
  }

  else
  {

    sub_10000BE18(&v180, &qword_100842208, &qword_1006DF0C0);
    sub_100020260(v197, &v183);
    v60 = type metadata accessor for SEPairingManager();
    swift_allocObject();
    v61 = SEPairingManager.init()();
    v181 = v60;
    v182 = &protocol witness table for SEPairingManager;
    *&v180 = v61;
    v62 = sub_10001F370(&v183, v184);
    __chkstk_darwin(v62);
    v64 = (v154 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v65 + 16))(v64);
    v66 = *v64;
    v179[3] = v19;
    v179[4] = &off_10080E120;
    v179[0] = v66;
    v67 = type metadata accessor for MobileDocumentReaderSecureElementManager();
    v68 = swift_allocObject();
    v69 = sub_10001F370(v179, v19);
    __chkstk_darwin(v69);
    v70 = (v154 - v155);
    (v156)(v154 - v155);
    v71 = *v70;
    v68[5] = v19;
    v68[6] = &off_10080E120;
    v68[2] = v71;
    sub_10001F358(&v180, (v68 + 7));
    sub_10000BB78(v179);
    sub_10000BB78(&v183);
    v33[29] = v67;
    v33[30] = &off_10080E890;
    v33[26] = v68;

    sub_1003A0EB8(&v215);
    sub_10000BE18(&v226, &qword_100842208, &qword_1006DF0C0);
    sub_10000BB78(v223);
    sub_10000BB78(&v191);
    sub_10000BB78(v194);
    sub_10000BB78(v197);
  }

  v72 = v162;
  sub_10001F358(&v220, (v33 + 31));
  sub_10001F358(&v188, (v33 + 36));
  sub_10001F358(&v185, (v33 + 41));
  sub_10000BB78(v200);
  sub_10000BB78(v203);
  sub_10000BB78(v206);
  sub_10000BB78(v209);
  sub_10000BB78(v212);
  v72[21] = v33;
  v72[24] = v178;
  v72[25] = &off_10080E498;
  v166 = objc_opt_self();
  v73 = [v166 standardUserDefaults];
  static DaemonDefaultsKeys.mobileDocumentReaderTestMode.getter();
  v74 = String._bridgeToObjectiveC()();

  v75 = [v73 stringForKey:v74];

  if (!v75)
  {
    static DaemonDefaultsKeys.mobileDocumentReaderTestModeIdentityTestKey.getter();
    goto LABEL_14;
  }

  v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v77;

  v79 = static DaemonDefaultsKeys.mobileDocumentReaderTestModeIdentityTestKey.getter();
  if (!v78)
  {
LABEL_14:

    goto LABEL_15;
  }

  if (v79 != v76 || v78 != v80)
  {
    v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v134)
    {
      goto LABEL_17;
    }

LABEL_15:
    sub_100020260((v72 + 21), &v226);
    sub_100020260((v72 + 46), v223);
    v81 = type metadata accessor for BluetoothManager();
    v161 = swift_allocObject();
    v82 = type metadata accessor for MobileDocumentReaderNFCManager();
    v160 = v82;
    v83 = swift_allocObject();
    swift_defaultActor_initialize();
    type metadata accessor for SecureTransactionServiceManager();
    v84 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v84 + 112) = 0;
    *(v84 + 120) = 0;
    v164 = v84;
    sub_100007224(&qword_100842540, &qword_1006DF5C8);
    v85 = swift_allocObject();
    *(v85 + 32) = 0;
    *(v85 + 16) = nullsub_7;
    *(v85 + 24) = 0;
    *(v84 + 128) = v85;
    *(&v216 + 1) = type metadata accessor for FeatureFlagProvider();
    v217 = &protocol witness table for FeatureFlagProvider;
    sub_100032DBC(&v215);
    FeatureFlagProvider.init()();
    v218 = static UserDefaultsConfiguration.standard.getter();
    sub_100397F50(&v220);
    v86 = sub_10001F370(&v220, *(&v221 + 1));
    v165 = v154;
    __chkstk_darwin(v86);
    v88 = (v154 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v89 + 16))(v88);
    v90 = sub_10001F370(&v226, *(&v227 + 1));
    v163 = v154;
    __chkstk_darwin(v90);
    v92 = (v154 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v93 + 16))(v92);
    v94 = sub_10001F370(v223, v224);
    v162 = v154;
    __chkstk_darwin(v94);
    v96 = (v154 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v97 + 16))(v96);
    v98 = *v88;
    v99 = *v92;
    v100 = *v96;
    v214 = &off_1008157E8;
    v213 = v81;
    v212[0] = v161;
    v211 = &off_10080E768;
    v210 = v82;
    v209[0] = v83;
    v207 = &type metadata for ISO18013RequestBuilder;
    v208 = &off_10080E3B0;
    v206[0] = swift_allocObject();
    sub_1003A0F4C(&v215, v206[0] + 16);
    v159 = type metadata accessor for ISO18013ResponseValidator();
    v205 = &off_10080E3C8;
    v204 = v159;
    v203[0] = v98;
    v201 = &type metadata for MobileDocumentReaderResponseProcessor;
    v202 = &off_10080E880;
    v199 = &off_10080E498;
    v198 = v178;
    v197[0] = v99;
    v195 = v172;
    v196 = &off_10080DF10;
    v194[0] = v100;
    type metadata accessor for MobileDocumentReaderManager();
    v101 = swift_allocObject();
    v102 = sub_10001F370(v212, v81);
    v161 = v154;
    v156 = v81;
    __chkstk_darwin(v102);
    v104 = (v154 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v105 + 16))(v104);
    v106 = sub_10001F370(v209, v210);
    v158 = v154;
    __chkstk_darwin(v106);
    v108 = (v154 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v109 + 16))(v108);
    v110 = sub_10001F370(v206, v207);
    v157 = v154;
    __chkstk_darwin(v110);
    v112 = (v154 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v113 + 16))(v112);
    v114 = sub_10001F370(v203, v204);
    v155 = v154;
    __chkstk_darwin(v114);
    v116 = (v154 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v117 + 16))(v116);
    sub_10001F370(v200, v201);
    v118 = sub_10001F370(v197, v198);
    v154[1] = v154;
    __chkstk_darwin(v118);
    v120 = (v154 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v121 + 16))(v120);
    v122 = sub_10001F370(v194, v195);
    v154[0] = v154;
    __chkstk_darwin(v122);
    v124 = (v154 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v125 + 16))(v124);
    v126 = *v104;
    v127 = *v108;
    v128 = *v116;
    v129 = *v120;
    v130 = *v124;
    v192 = v156;
    v193 = &off_1008157E8;
    *&v191 = v126;
    v189 = v160;
    v190 = &off_10080E768;
    *&v188 = v127;
    v186 = &type metadata for ISO18013RequestBuilder;
    v187 = &off_10080E3B0;
    v131 = swift_allocObject();
    *&v185 = v131;
    v132 = v112[1];
    v131[1] = *v112;
    v131[2] = v132;
    v131[3] = v112[2];
    v101[23] = v159;
    v101[24] = &off_10080E3C8;
    v101[20] = v128;
    v101[28] = &type metadata for MobileDocumentReaderResponseProcessor;
    v101[29] = &off_10080E880;
    v101[33] = v178;
    v101[34] = &off_10080E498;
    v101[30] = v129;
    v101[38] = v172;
    v101[39] = &off_10080DF10;
    v101[35] = v130;
    sub_10001F358(&v191, (v101 + 2));
    sub_10001F358(&v188, (v101 + 7));
    v101[12] = v164;
    v101[13] = &off_100815CB8;
    v101[14] = &off_100815CC8;
    sub_10001F358(&v185, (v101 + 15));
    sub_10000BB78(v194);
    sub_10000BB78(v197);
    sub_10000BB78(v200);
    sub_10000BB78(v203);
    sub_10000BB78(v206);
    sub_10000BB78(v209);
    sub_10000BB78(v212);
    sub_10000BB78(v223);
    sub_10000BB78(&v226);
    sub_10000BB78(&v220);
    sub_1003A0FA8(&v215);
    v133 = &off_10080E738;
    goto LABEL_18;
  }

LABEL_17:
  type metadata accessor for SimulatedMobileDocumentReaderManager();
  v101 = swift_allocObject();
  sub_100007224(&qword_100842540, &qword_1006DF5C8);
  v135 = swift_allocObject();
  *(v135 + 32) = 0;
  *(v135 + 16) = nullsub_7;
  *(v135 + 24) = 0;
  v101[2] = v135;
  v133 = &off_10080EAC8;
LABEL_18:
  v72[19] = v101;
  v72[20] = v133;
  v136 = type metadata accessor for BiometricsHelper();
  swift_allocObject();
  v137 = BiometricsHelper.init()();
  v72[29] = v136;
  v72[30] = &protocol witness table for BiometricsHelper;
  v72[26] = v137;
  *(&v216 + 1) = &type metadata for MobileDocumentReaderRequestValidator;
  v217 = &off_10080E800;
  v138 = swift_allocObject();
  *&v215 = v138;
  v138[9] = v168;
  v138[10] = &protocol witness table for BundleRecordFetcher;
  sub_100032DBC(v138 + 6);
  BundleRecordFetcher.init()();
  v139 = [v166 standardUserDefaults];
  v140 = v175;
  v138[2] = v174;
  v138[3] = v140;
  v141 = v177;
  v138[4] = v176;
  v138[5] = v141;
  v138[11] = v139;
  sub_10001F358(&v215, (v72 + 31));
  v142 = type metadata accessor for MobileDocumentReaderTermsAndConditionsFetcher();
  v143 = swift_allocObject();
  *(&v216 + 1) = &type metadata for BootstrapURLManager;
  v217 = &off_100818018;
  type metadata accessor for DIPConfigWebService();
  v144 = swift_allocObject();
  sub_10001F370(&v215, &type metadata for BootstrapURLManager);
  v145 = sub_1005BDE58(v144);
  sub_10000BB78(&v215);
  *(v143 + 16) = v145;
  v72[39] = v142;
  v72[40] = &off_10080E8A0;
  v72[36] = v143;
  static DIPAccountManager.sharedInstance.getter();
  sub_10001F358(&v215, (v72 + 41));
  v72[51] = static UserDefaultsConfiguration.standard.getter();
  v146 = v169;
  defaultLogger()();

  v147 = Logger.logObject.getter();
  v148 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v147, v148))
  {
    v149 = swift_slowAlloc();
    *&v215 = swift_slowAlloc();
    *v149 = 136315394;
    *&v226 = v72;
    v150 = String.init<A>(describing:)();
    v152 = sub_100141FE4(v150, v151, &v215);

    *(v149 + 4) = v152;
    *(v149 + 12) = 2080;
    *(v149 + 14) = sub_100141FE4(0xD000000000000011, 0x8000000100711F60, &v215);
    _os_log_impl(&_mh_execute_header, v147, v148, "MobileDocumentReaderFlow %s %s", v149, 0x16u);
    swift_arrayDestroy();
  }

  (*(v170 + 8))(v146, v171);
  return v72;
}

uint64_t sub_100397F50@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for DateProvider();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v32[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v32[-1] - v7;
  v31 = sub_100395A34();
  sub_100395BE8(v36);
  type metadata accessor for KRLTrustValidator();
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  swift_allocObject();
  v9 = sub_10010F338();

  DateProvider.init()();
  (*(v3 + 16))(v6, v8, v2);
  v10 = sub_1003A0748(&v33, v9, v6);

  (*(v3 + 8))(v8, v2);
  v11 = sub_10001F370(v36, v36[3]);
  __chkstk_darwin(v11);
  v13 = &v32[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = type metadata accessor for ISO18013DeviceAuthenticator(0);
  *(&v34 + 1) = v15;
  v35 = &off_10080E308;
  v16 = sub_100032DBC(&v33);
  sub_1003A103C(v13, v16, type metadata accessor for ISO18013DeviceAuthenticator);
  v17 = type metadata accessor for PresentmentKeyRevocationValidator();
  v32[3] = v17;
  v32[4] = &off_100809510;
  v32[0] = v10;
  v18 = type metadata accessor for ISO18013ResponseValidator();
  v19 = swift_allocObject();
  v20 = sub_10001F370(&v33, *(&v34 + 1));
  __chkstk_darwin(v20);
  v22 = &v32[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  v24 = sub_10001F370(v32, v17);
  __chkstk_darwin(v24);
  v26 = (&v32[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v26;
  v19[7] = v15;
  v19[8] = &off_10080E308;
  v29 = sub_100032DBC(v19 + 4);
  sub_1003A103C(v22, v29, type metadata accessor for ISO18013DeviceAuthenticator);
  v19[12] = v17;
  v19[13] = &off_100809510;
  v19[9] = v28;
  v19[2] = v31;
  v19[3] = &off_10080E318;
  sub_10000BB78(v32);
  sub_10000BB78(&v33);
  result = sub_10000BB78(v36);
  a1[3] = v18;
  a1[4] = &off_10080E3C8;
  *a1 = v19;
  return result;
}

void *sub_10039836C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v1;
    v15 = v9;
    *v8 = 136315394;
    v10 = String.init<A>(describing:)();
    v12 = sub_100141FE4(v10, v11, &v15);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_100141FE4(0x74696E696564, 0xE600000000000000, &v15);
    _os_log_impl(&_mh_execute_header, v6, v7, "MobileDocumentReaderFlow %s %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  (*(v3 + 8))(v5, v2);

  swift_unknownObjectRelease();
  sub_10000BB78(v1 + 21);
  sub_10000BB78(v1 + 26);
  sub_10000BB78(v1 + 31);
  sub_10000BB78(v1 + 36);
  sub_10000BB78(v1 + 41);
  sub_10000BB78(v1 + 46);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1003985B0()
{
  sub_10039836C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100398600()
{
  v1[3] = v0;
  v2 = type metadata accessor for Milestone();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_100398728, v0, 0);
}

uint64_t sub_100398728(uint64_t a1)
{
  v22 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[10];
    v5 = v1[7];
    v6 = v1[8];
    v7 = v1[3];
    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v8 = 136315394;
    v1[2] = v7;
    v9 = String.init<A>(describing:)();
    v11 = sub_100141FE4(v9, v10, &v21);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_100141FE4(0xD00000000000001ALL, 0x8000000100711E70, &v21);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderFlow %s %s", v8, 0x16u);
    swift_arrayDestroy();

    v12 = *(v6 + 8);
    v12(v4, v5);
  }

  else
  {
    v13 = v1[10];
    v14 = v1[7];
    v15 = v1[8];

    v12 = *(v15 + 8);
    v12(v13, v14);
  }

  v1[11] = 0x8000000100711E70;
  v1[12] = v12;
  v17 = v1[5];
  v16 = v1[6];
  v18 = v1[4];
  static MobileDocumentReaderMilestone.readerIdentifierCalled.getter();
  Milestone.log()();
  (*(v17 + 8))(v16, v18);
  v19 = swift_task_alloc();
  v1[13] = v19;
  *v19 = v1;
  v19[1] = sub_1003989A4;

  return sub_10039C498(0xD00000000000001ALL, 0x8000000100711E70, 151);
}

uint64_t sub_1003989A4()
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
    v6 = *(v2 + 24);

    return _swift_task_switch(sub_100398AFC, v6, 0);
  }
}

uint64_t sub_100398AFC()
{
  sub_10000BA08((*(v0 + 24) + 168), *(*(v0 + 24) + 192));
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_100398B9C;

  return sub_10038229C();
}

uint64_t sub_100398B9C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[15] = a1;
  v4[16] = a2;

  if (v2)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {
    v7 = v4[3];

    return _swift_task_switch(sub_100398CF8, v7, 0);
  }
}

uint64_t sub_100398CF8(uint64_t a1)
{
  v19 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v1[15];
    v4 = v1[16];
    v6 = v1[11];
    v16 = v1[9];
    v17 = v1[12];
    v7 = v1[7];
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_100141FE4(0xD00000000000001ALL, v6, &v18);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_100141FE4(v5, v4, &v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderFlow %s returning %s", v8, 0x16u);
    swift_arrayDestroy();

    v17(v16, v7);
  }

  else
  {
    v9 = v1[12];
    v10 = v1[9];
    v11 = v1[7];

    v9(v10, v11);
  }

  v12 = v1[1];
  v13 = v1[15];
  v14 = v1[16];

  return v12(v13, v14);
}

uint64_t sub_100398EF0(uint64_t a1, uint64_t a2)
{
  v3[105] = v2;
  v3[99] = a2;
  v3[93] = a1;
  v4 = type metadata accessor for Date();
  v3[106] = v4;
  v3[107] = *(v4 - 8);
  v3[108] = swift_task_alloc();
  v3[109] = type metadata accessor for MobileDocumentReaderAuthenticationSession(0);
  v3[110] = swift_task_alloc();
  v5 = type metadata accessor for Milestone();
  v3[111] = v5;
  v3[112] = *(v5 - 8);
  v3[113] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentReaderConfiguration();
  v3[114] = v6;
  v3[115] = *(v6 - 8);
  v3[116] = swift_task_alloc();
  v3[117] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[118] = v7;
  v3[119] = *(v7 - 8);
  v3[120] = swift_task_alloc();

  return _swift_task_switch(sub_100399108, v2, 0);
}

uint64_t sub_100399108(uint64_t a1)
{
  v38 = v1;
  v2 = v1[117];
  v3 = v1[115];
  v4 = v1[114];
  v5 = v1[99];
  defaultLogger()();
  v6 = *(v3 + 16);
  v6(v2, v5, v4);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v34 = v1[119];
    v35 = v1[118];
    v36 = v1[120];
    v32 = v1[117];
    v9 = v1[116];
    v10 = v1[115];
    v33 = v8;
    v11 = v1[114];
    v12 = v1[105];
    v13 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v13 = 136315650;
    v1[87] = v12;
    v14 = String.init<A>(describing:)();
    v16 = sub_100141FE4(v14, v15, &v37);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100141FE4(0x2865726170657270, 0xEE00293A68746977, &v37);
    *(v13 + 22) = 2080;
    v6(v9, v32, v11);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    (*(v10 + 8))(v32, v11);
    v20 = sub_100141FE4(v17, v19, &v37);

    *(v13 + 24) = v20;
    _os_log_impl(&_mh_execute_header, v7, v33, "MobileDocumentReaderFlow %s %s Configuration: %s", v13, 0x20u);
    swift_arrayDestroy();

    (*(v34 + 8))(v36, v35);
  }

  else
  {
    v21 = v1[120];
    v22 = v1[119];
    v23 = v1[118];
    v24 = v1[117];
    v25 = v1[115];
    v26 = v1[114];

    (*(v25 + 8))(v24, v26);
    (*(v22 + 8))(v21, v23);
  }

  v27 = v1[113];
  v28 = v1[112];
  v29 = v1[111];
  static MobileDocumentReaderMilestone.prepareCalled.getter();
  Milestone.log()();
  (*(v28 + 8))(v27, v29);
  v30 = swift_task_alloc();
  v1[121] = v30;
  *v30 = v1;
  v30[1] = sub_100399480;

  return sub_10039C498(0x2865726170657270, 0xEE00293A68746977, 166);
}

uint64_t sub_100399480()
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
    v6 = *(v2 + 840);

    return _swift_task_switch(sub_10039960C, v6, 0);
  }
}

uint64_t sub_10039960C()
{

  swift_asyncLet_begin();
  v1 = swift_task_alloc();
  v0[122] = v1;
  *v1 = v0;
  v1[1] = sub_1003996E4;
  v2 = v0[110];
  v3 = v0[99];

  return sub_10039D198(v2, v3);
}

uint64_t sub_1003996E4()
{
  v2 = *v1;
  *(*v1 + 984) = v0;

  if (v0)
  {
    v3 = *(v2 + 840);

    return _swift_task_switch(sub_100399A0C, v3, 0);
  }

  else
  {

    return _swift_asyncLet_get_throwing(v2 + 16);
  }
}

uint64_t sub_100399820()
{
  *(v1 + 992) = v0;
  if (v0)
  {
    v2 = sub_100399AFC;
  }

  else
  {
    v2 = sub_100399854;
  }

  return _swift_task_switch(v2, *(v1 + 840), 0);
}

uint64_t sub_100399854()
{
  v1 = v0[110];
  (*(v0[107] + 16))(v0[108], v1 + *(v0[109] + 52), v0[106]);

  MobileDocumentReaderConfigurationResponse.init(sessionIdentifier:sessionExpirationDate:)();
  sub_1003A10A4(v1, type metadata accessor for MobileDocumentReaderAuthenticationSession);

  return _swift_asyncLet_finish(v0 + 2);
}

uint64_t sub_100399950()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100399A44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100399AFC()
{
  sub_1003A10A4(*(v0 + 880), type metadata accessor for MobileDocumentReaderAuthenticationSession);

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_100399B94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100399C6C()
{
  sub_10000BA08((*(v0 + 16) + 368), *(*(v0 + 16) + 392));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100399D0C;

  return sub_10034979C();
}

uint64_t sub_100399D0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100399E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderSessionStatus();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  sub_100007224(&qword_100841B98, &unk_1006DF0D0);
  v4[13] = swift_task_alloc();
  sub_100007224(&qword_100842570, &qword_1006DF610);
  v4[14] = swift_task_alloc();
  sub_100007224(&qword_1008419D8, &qword_1006DEAB0);
  v4[15] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentReaderAuthenticationSession(0);
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  v8 = type metadata accessor for Milestone();
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_10039A0DC, v3, 0);
}

uint64_t sub_10039A0DC(uint64_t a1)
{
  v21 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[23];
    v19 = v1[24];
    v5 = v1[22];
    v6 = v1[6];
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136315394;
    v1[2] = v6;
    v8 = String.init<A>(describing:)();
    v10 = sub_100141FE4(v8, v9, &v20);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100141FE4(0x746E61686372656DLL, 0xEE00293A726F6628, &v20);
    _os_log_impl(&_mh_execute_header, v2, v3, "MobileDocumentReaderFlow %s %s", v7, 0x16u);
    swift_arrayDestroy();

    (*(v4 + 8))(v19, v5);
  }

  else
  {
    v12 = v1[23];
    v11 = v1[24];
    v13 = v1[22];

    (*(v12 + 8))(v11, v13);
  }

  v15 = v1[20];
  v14 = v1[21];
  v16 = v1[19];
  static MobileDocumentReaderMilestone.merchantCalled.getter();
  Milestone.log()();
  (*(v15 + 8))(v14, v16);
  v17 = swift_task_alloc();
  v1[25] = v17;
  *v17 = v1;
  v17[1] = sub_10039A36C;

  return sub_10039C498(0x746E61686372656DLL, 0xEE00293A726F6628, 192);
}

uint64_t sub_10039A36C()
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
    v6 = *(v2 + 48);

    return _swift_task_switch(sub_10039A514, v6, 0);
  }
}

uint64_t sub_10039A514()
{
  sub_10000BA08((v0[6] + 168), *(v0[6] + 192));
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_10039A5C0;
  v2 = v0[15];
  v3 = v0[4];
  v4 = v0[5];

  return sub_100389664(v2, v3, v4);
}

uint64_t sub_10039A5C0()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_10039ACD4;
  }

  else
  {
    v4 = sub_10039A6EC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10039A6EC()
{
  v1 = v0[16];
  v2 = v0[15];
  if ((*(v0[17] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[11];
    v4 = v0[12];
    v5 = v0[9];
    v6 = v0[10];
    v7 = v0[8];
    v33 = v0[7];
    v9 = v0[4];
    v8 = v0[5];
    sub_10000BE18(v2, &qword_1008419D8, &qword_1006DEAB0);
    type metadata accessor for DaemonAnalytics();
    v10 = enum case for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason.sessionMissing(_:);
    v11 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason();
    (*(*(v11 - 8) + 104))(v4, v10, v11);
    (*(v3 + 104))(v4, enum case for DaemonAnalytics.MobileDocumentReaderSessionStatus.invalid(_:), v6);
    static DaemonAnalytics.sendReadDocumentSessionStatus(status:)();
    (*(v3 + 8))(v4, v6);
    _StringGuts.grow(_:)(37);

    v12._countAndFlagsBits = v9;
    v12._object = v8;
    String.append(_:)(v12);
    (*(v7 + 104))(v5, enum case for DIPError.Code.documentReaderMissingSession(_:), v33);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v13 = v0[1];
    goto LABEL_13;
  }

  v14 = v0[18];
  v15 = v0[13];
  sub_1003A103C(v2, v14, type metadata accessor for MobileDocumentReaderAuthenticationSession);
  sub_10000BBC4(v14 + *(v1 + 48), v15, &qword_100841B98, &unk_1006DF0D0);
  v16 = type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNames();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v18 = v0[13];
    v19 = &qword_100841B98;
    v20 = &unk_1006DF0D0;
  }

  else
  {
    v21 = v0[13];
    v22 = v0[14];
    static Locale.preferredLanguages.getter();
    ReaderAuthenticationLocalizedRelyingPartyNames.preferredLocalization(preferredLanguages:)();

    (*(v17 + 8))(v21, v16);
    v23 = type metadata accessor for ReaderAuthenticationLocalizedRelyingPartyNamePair();
    v24 = *(v23 - 8);
    v25 = (*(v24 + 48))(v22, 1, v23);
    v26 = v0[14];
    if (v25 != 1)
    {
      ReaderAuthenticationLocalizedRelyingPartyNamePair.localizedName.getter();
      (*(v24 + 8))(v26, v23);
      v27 = v0[18];
      v28 = v0[16];
      goto LABEL_11;
    }

    v19 = &qword_100842570;
    v20 = &qword_1006DF610;
    v18 = v0[14];
  }

  sub_10000BE18(v18, v19, v20);
  v27 = v0[18];
  v28 = v0[16];
  if (*(v27 + *(v28 + 44) + 8))
  {

LABEL_11:
    sub_1000363B4(*(v27 + *(v28 + 40)), *(v27 + *(v28 + 40) + 8));

    MobileDocumentReaderMerchant.init(name:logoData:identifier:)();
    v29 = 0;
    goto LABEL_12;
  }

  v29 = 1;
LABEL_12:
  sub_1003A10A4(v27, type metadata accessor for MobileDocumentReaderAuthenticationSession);
  v30 = v0[3];
  v31 = type metadata accessor for MobileDocumentReaderMerchant();
  (*(*(v31 - 8) + 56))(v30, v29, 1, v31);

  v13 = v0[1];
LABEL_13:

  return v13();
}

uint64_t sub_10039ACD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10039AD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentReaderDeviceEngagementType();
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v4[11] = *(v7 + 64);
  v4[12] = swift_task_alloc();
  v8 = type metadata accessor for MobileDocumentReaderRequest();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v4[15] = *(v9 + 64);
  v4[16] = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  v4[17] = swift_task_alloc();
  v10 = type metadata accessor for Milestone();
  v4[18] = v10;
  v4[19] = *(v10 - 8);
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_10039AFBC, v3, 0);
}

uint64_t sub_10039AFBC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[5];
  static MobileDocumentReaderMilestone.readDocumentCalled.getter();
  Milestone.log()();
  v5 = *(v2 + 8);
  v5(v1, v3);
  if (*(v4 + 144))
  {
    v6 = v0[20];
    v7 = v0[18];
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    static MobileDocumentReaderMilestone.readDocumentInProgress.getter();
    Milestone.log()();
    v5(v6, v7);
    (*(v9 + 104))(v8, enum case for DIPError.Code.documentReadingAlreadyInProgress(_:), v10);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[16];
    v14 = v0[17];
    v15 = v0[14];
    v16 = v0[12];
    v17 = v0[13];
    v35 = v13;
    v36 = v16;
    v18 = v0[10];
    v37 = v0[15];
    v19 = v0[9];
    v38 = v0[5];
    v39 = v14;
    v34 = v0[4];
    v20 = v0[3];
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
    v22 = v13;
    v23 = v17;
    (*(v15 + 16))(v22, v20, v17);
    (*(v18 + 16))(v16, v34, v19);
    v25 = sub_1003A1158(&qword_100842568, v24, type metadata accessor for MobileDocumentReaderFlow, &unk_1006DF5A0);
    v26 = (*(v15 + 80) + 40) & ~*(v15 + 80);
    v27 = (v37 + *(v18 + 80) + v26) & ~*(v18 + 80);
    v28 = swift_allocObject();
    *(v28 + 2) = v38;
    *(v28 + 3) = v25;
    *(v28 + 4) = v38;
    (*(v15 + 32))(&v28[v26], v35, v23);
    (*(v18 + 32))(&v28[v27], v36, v19);
    swift_retain_n();
    v29 = sub_100130660(0, 0, v39, &unk_1006DF600, v28);
    v0[21] = v29;
    *(v4 + 144) = v29;

    v30 = swift_task_alloc();
    v0[22] = v30;
    v31 = type metadata accessor for MobileDocumentReaderResponse();
    v32 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
    *v30 = v0;
    v30[1] = sub_10039B448;
    v33 = v0[2];

    return Task.value.getter(v33, v29, v31, v32, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_10039B448()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_10039B62C;
  }

  else
  {
    v4 = sub_10039B574;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10039B574()
{
  v1 = *(v0 + 40);

  *(v1 + 144) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10039B62C()
{
  v1 = v0[5];
  (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.internalError(_:), v0[6]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  *(v1 + 144) = 0;

  v2 = v0[1];

  return v2();
}

uint64_t sub_10039B800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = type metadata accessor for Milestone();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[9] = v8;
  *v8 = v6;
  v8[1] = sub_10039B910;

  return sub_10039C498(0xD000000000000022, 0x80000001007120E0, 248);
}

uint64_t sub_10039B910()
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
    v6 = swift_task_alloc();
    *(v2 + 80) = v6;
    *v6 = v3;
    v6[1] = sub_10039BA8C;
    v7 = *(v2 + 32);

    return sub_10039DEC4(v7);
  }
}

uint64_t sub_10039BA8C()
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
    v6 = *(v2 + 24);

    return _swift_task_switch(sub_10039BBD8, v6, 0);
  }
}

uint64_t sub_10039BBD8()
{
  v1 = *(v0[3] + 160);
  ObjectType = swift_getObjectType();
  v8 = (*(v1 + 40) + **(v1 + 40));
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_10039BD08;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];

  return v8(v6, v4, v5, ObjectType, v1);
}

uint64_t sub_10039BD08()
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
    v6 = *(v2 + 24);

    return _swift_task_switch(sub_10039BE54, v6, 0);
  }
}

uint64_t sub_10039BE54()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  static MobileDocumentReaderMilestone.readDocumentReturningResponse.getter();
  Milestone.log()();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10039BEEC()
{
  v1[2] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for Milestone();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10039C008, v0, 0);
}

uint64_t sub_10039C008()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  static MobileDocumentReaderMilestone.cancelReadCalled.getter();
  Milestone.log()();
  v4 = *(v2 + 8);
  v0[9] = v4;
  v0[10] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v3);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_10039C0FC;

  return sub_10039C498(0x65526C65636E6163, 0xEC00000029286461, 271);
}

uint64_t sub_10039C0FC()
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
    v6 = *(v2 + 16);

    return _swift_task_switch(sub_10039C254, v6, 0);
  }
}

uint64_t sub_10039C254()
{
  v1 = v0[2];
  if (*(v1 + 144))
  {
    type metadata accessor for MobileDocumentReaderResponse();

    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    Task.cancel()();

    *(v1 + 144) = 0;
  }

  else
  {
    v3 = v0[9];
    v4 = v0[8];
    v5 = v0[5];
    v6 = v0[6];
    v7 = v0[3];
    v8 = v0[4];
    static MobileDocumentReaderMilestone.noReadInProgressToCancel.getter();
    Milestone.log()();
    v3(v4, v6);
    (*(v8 + 104))(v5, enum case for DIPError.Code.unexpectedDaemonState(_:), v7);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_10039C498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[100] = v3;
  v4[99] = a3;
  v4[98] = a2;
  v4[97] = a1;
  v5 = type metadata accessor for Logger();
  v4[101] = v5;
  v4[102] = *(v5 - 8);
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v4[105] = v6;
  v4[106] = *(v6 - 8);
  v4[107] = swift_task_alloc();
  sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v4[108] = swift_task_alloc();
  v7 = type metadata accessor for Locale();
  v4[109] = v7;
  v4[110] = *(v7 - 8);
  v4[111] = swift_task_alloc();

  return _swift_task_switch(sub_10039C660, v3, 0);
}

uint64_t sub_10039C660(uint64_t a1)
{
  v21 = v1;
  v2 = UserDefaultsConfiguration.userDefaults.getter();
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableRegionCheck.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    defaultLogger()();

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v1[104];
    v9 = v1[102];
    v10 = v1[101];
    if (v7)
    {
      v11 = v1[98];
      v12 = v1[97];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_100141FE4(v12, v11, &v20);
      _os_log_impl(&_mh_execute_header, v5, v6, "MobileDocumentReaderFlow %s region check disabled.", v13, 0xCu);
      sub_10000BB78(v14);
    }

    (*(v9 + 8))(v8, v10);

    v15 = v1[1];

    return v15();
  }

  else
  {
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v17 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v17 + 54);
    sub_100031B5C(&v17[4], (v1 + 63));
    os_unfair_lock_unlock(v17 + 54);
    sub_100020260((v1 + 63), (v1 + 88));
    sub_100031918((v1 + 63));
    v18 = sub_10000BA08(v1 + 88, v1[91]);
    static Locale.current.getter();
    v1[112] = *v18;
    v19 = swift_task_alloc();
    v1[113] = v19;
    *v19 = v1;
    v19[1] = sub_10039C978;

    return sub_10050886C((v1 + 2));
  }
}

uint64_t sub_10039C978()
{
  v2 = *v1;
  *(*v1 + 912) = v0;

  if (v0)
  {
    v3 = v2[100];
    (*(v2[110] + 8))(v2[111], v2[109]);
    v4 = sub_10039CD9C;
  }

  else
  {
    v3 = v2[112];
    sub_1000F2758((v2 + 2));
    v4 = sub_10039CAB8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10039CAB8()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);
  v4 = *(v0 + 800);
  sub_10000BA08((*(v0 + 896) + 112), *(*(v0 + 896) + 136));
  *(v0 + 920) = dispatch thunk of MobileDocumentReaderSupportChecking.isLocaleSupported(_:)() & 1;
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10039CB88, v4, 0);
}

uint64_t sub_10039CB88()
{
  v1 = *(v0 + 920);
  sub_10000BB78((v0 + 704));
  if ((v1 & 1) == 0)
  {
    (*(*(v0 + 848) + 104))(*(v0 + 856), enum case for DIPError.Code.regionNotSupported(_:), *(v0 + 840));

    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10039CD9C()
{
  v1 = v0[108];
  v2 = v0[106];
  v3 = v0[105];
  sub_10000BB78(v0 + 88);
  swift_getErrorValue();
  Error.dipErrorCode.getter();
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = v0[108];
  if (v4 == 1)
  {
    sub_10000BE18(v0[108], &qword_10083B020, &unk_1006D8ED0);
  }

  else
  {
    v6 = v0[106];
    v7 = v0[105];
    v8 = (*(v6 + 88))(v0[108], v7);
    v9 = enum case for DIPError.Code.networkTimeOut(_:);
    (*(v6 + 8))(v5, v7);
    if (v8 == v9)
    {
      (*(v0[106] + 104))(v0[107], enum case for DIPError.Code.internalError(_:), v0[105]);

      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_6;
    }
  }

  v10 = v0[107];
  v11 = v0[106];
  v12 = v0[105];
  v13 = v0[103];
  v14 = v0[102];
  v15 = v0[101];
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v14 + 8))(v13, v15);
  (*(v11 + 104))(v10, enum case for DIPError.Code.documentReaderUnableToCheckRegionSupport(_:), v12);

  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
LABEL_6:
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_10039D198(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for Logger();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v6 = type metadata accessor for DIPError();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_10039D32C, v2, 0);
}

uint64_t sub_10039D32C()
{
  sub_10000BA08((v0[7] + 168), *(v0[7] + 192));
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_10039D3D4;
  v2 = v0[5];
  v3 = v0[6];

  return sub_100384B20(v2, v3);
}

uint64_t sub_10039D3D4()
{
  v2 = *v1;
  v2[20] = v0;

  if (v0)
  {
    v3 = v2[7];

    return _swift_task_switch(sub_10039D548, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_10039D548()
{
  v0[2] = v0[20];
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast())
  {
    v2 = v0[13];
    v1 = v0[14];
    v3 = v0[11];
    v4 = v0[12];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    DIPError.code.getter();
    v5 = enum case for DIPError.Code.topekaMobileDocumentReaderTermsAndConditionsAcceptanceRequired(_:);
    v6 = *(v4 + 104);
    v0[21] = v6;
    v0[22] = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v6(v2, v5, v3);
    sub_1003A1158(&qword_10083B4D0, 255, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v7 = *(v4 + 8);
    v7(v2, v3);
    v7(v1, v3);
    if (v0[3] == v0[4])
    {

      defaultLogger()();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "MobileDocumentReaderFlow terms and conditions acceptance required", v10, 2u);
      }

      v12 = v0[9];
      v11 = v0[10];
      v14 = v0[7];
      v13 = v0[8];

      (*(v12 + 8))(v11, v13);
      sub_10000BA08((v14 + 288), *(v14 + 312));
      v15 = swift_task_alloc();
      v0[23] = v15;
      *v15 = v0;
      v15[1] = sub_10039D994;

      return sub_1003CB138();
    }

    (*(v0[16] + 8))(v0[17], v0[15]);
  }

  v17 = v0[14];
  v18 = v0[11];
  v19 = v0[12];

  (*(v19 + 104))(v17, enum case for DIPError.Code.internalError(_:), v18);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_10039D994(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[24] = v2;

  v7 = v6[7];
  if (v2)
  {
    v8 = sub_10039DAD4;
  }

  else
  {
    v6[25] = a2;
    v6[26] = a1;
    v8 = sub_10039DB90;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10039DAD4()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10039DB90()
{
  v17 = v0[25];
  v18 = v0[26];
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[17];
  v19 = v3;
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[11];
  sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  (*(v2 + 16))(v7, v3, v4);
  v1(v5, enum case for DIPError.Code.documentReaderTermsAndConditionsAcceptanceRequired(_:), v6);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v8 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1006BF520;
  v11 = v10 + v9;
  v12 = (v11 + v8[14]);
  v13 = enum case for DIPError.PropertyKey.termsAndConditions(_:);
  v14 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v14 - 8) + 104))(v11, v13, v14);
  v12[3] = &type metadata for MobileDocumentReaderTermsAndConditions;
  v12[4] = sub_1003A1104();
  *v12 = v18;
  v12[1] = v17;
  sub_10003C9C0(v10);
  swift_setDeallocating();
  sub_10000BE18(v11, &qword_1008341D0, &unk_1006BF8D0);
  swift_deallocClassInstance();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  (*(v2 + 8))(v19, v4);

  v15 = v0[1];

  return v15();
}

uint64_t sub_10039DEC4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderSessionStatus();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  sub_100007224(&qword_1008419D8, &qword_1006DEAB0);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for MobileDocumentReaderAuthenticationSession(0);
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentReaderRequest();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[24] = v7;
  v2[25] = *(v7 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  type metadata accessor for DIPSignpost.Config();
  v2[28] = swift_task_alloc();
  v8 = type metadata accessor for DIPSignpost();
  v2[29] = v8;
  v2[30] = *(v8 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_10039E1CC, v1, 0);
}

uint64_t sub_10039E1CC()
{
  v50 = v0;
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[8];
  static DaemonSignposts.MobileDocumentReader.canReadDocument.getter();
  DIPSignpost.init(_:)();
  defaultLogger()();
  v5 = *(v3 + 16);
  v5(v1, v4, v2);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v45 = v0[25];
    v46 = v0[24];
    v47 = v0[27];
    v8 = v0[22];
    v43 = v5;
    v44 = v0[23];
    v10 = v0[20];
    v9 = v0[21];
    v11 = v0[9];
    v12 = swift_slowAlloc();
    v49[0] = swift_slowAlloc();
    *v12 = 136315650;
    v0[7] = v11;
    v13 = String.init<A>(describing:)();
    v15 = sub_100141FE4(v13, v14, v49);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100141FE4(0xD000000000000017, 0x8000000100711FD0, v49);
    *(v12 + 22) = 2080;
    v43(v8, v44, v10);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    (*(v9 + 8))(v44, v10);
    v19 = sub_100141FE4(v16, v18, v49);

    *(v12 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "MobileDocumentReaderFlow %s %s Request: %s", v12, 0x20u);
    swift_arrayDestroy();

    v20 = *(v45 + 8);
    v20(v47, v46);
  }

  else
  {
    v21 = v0[27];
    v22 = v0[24];
    v23 = v0[25];
    v24 = v0[23];
    v25 = v0[20];
    v26 = v0[21];

    (*(v26 + 8))(v24, v25);
    v20 = *(v23 + 8);
    v20(v21, v22);
  }

  sub_10000BA08((v0[9] + 208), *(v0[9] + 232));
  if (dispatch thunk of LocalAuthenticationManaging.isPasscodeSet.getter())
  {
LABEL_9:
    sub_10039FC28();
    v39 = *(v0[9] + 160);
    ObjectType = swift_getObjectType();
    v48 = (*(v39 + 32) + **(v39 + 32));
    v41 = swift_task_alloc();
    v0[32] = v41;
    *v41 = v0;
    v41[1] = sub_10039E970;

    return v48(ObjectType, v39);
  }

  v27 = UserDefaultsConfiguration.userDefaults.getter();
  v28._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disablePasscodeCheck.getter();
  v29 = NSUserDefaults.internalBool(forKey:)(v28);

  if (v29)
  {
    defaultLogger()();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "MobileDocumentReaderFlow passcode is not set. Bypassing this check due to internal setting.", v32, 2u);
    }

    v33 = v0[26];
    v34 = v0[24];

    v20(v33, v34);
    goto LABEL_9;
  }

  (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.documentReaderPasscodeNotSet(_:), v0[17]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v36 = v0[30];
  v35 = v0[31];
  v42 = v0[29];
  (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.internalError(_:), v0[17]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v36 + 8))(v35, v42);

  v37 = v0[1];

  return v37();
}

uint64_t sub_10039E970()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_10039F9F4;
  }

  else
  {
    v4 = sub_10039EA9C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10039EA9C()
{
  sub_10000BA08((v0[9] + 168), *(v0[9] + 192));
  v1 = MobileDocumentReaderRequest.sessionIdentifier.getter();
  v3 = v2;
  v0[34] = v2;
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_10039EB68;
  v5 = v0[13];

  return sub_100389664(v5, v1, v3);
}

uint64_t sub_10039EB68()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 72);

  if (v0)
  {
    v4 = sub_10039F2EC;
  }

  else
  {
    v4 = sub_10039ECB0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10039ECB0()
{
  v1 = v0[14];
  v2 = v0[13];
  if ((*(v0[15] + 48))(v2, 1, v1) == 1)
  {
    sub_10000BE18(v2, &qword_1008419D8, &qword_1006DEAB0);
LABEL_18:
    v18 = v0[18];
    v17 = v0[19];
    v19 = v0[17];
    v21 = v0[11];
    v20 = v0[12];
    v22 = v0[10];
    type metadata accessor for DaemonAnalytics();
    v23 = enum case for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason.sessionMissing(_:);
    v24 = type metadata accessor for DaemonAnalytics.MobileDocumentReaderInvalidSessionReason();
    (*(*(v24 - 8) + 104))(v20, v23, v24);
    (*(v21 + 104))(v20, enum case for DaemonAnalytics.MobileDocumentReaderSessionStatus.invalid(_:), v22);
    static DaemonAnalytics.sendReadDocumentSessionStatus(status:)();
    (*(v21 + 8))(v20, v22);
    (*(v18 + 104))(v17, enum case for DIPError.Code.documentReaderMissingSession(_:), v19);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_19;
  }

  v3 = v0[16];
  sub_1003A103C(v2, v3, type metadata accessor for MobileDocumentReaderAuthenticationSession);
  v4 = *(v3 + *(v1 + 28));
  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_17:
    sub_1003A10A4(v0[16], type metadata accessor for MobileDocumentReaderAuthenticationSession);
    goto LABEL_18;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {

    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 + 32);
  }

  v0[37] = v6;
  v7 = v0[16];
  v8 = v0[14];
  sub_10000BA08((v0[9] + 248), *(v0[9] + 272));
  type metadata accessor for SecCertificate(0);
  v0[5] = v9;
  v0[6] = &protocol witness table for SecCertificateRef;
  v0[2] = v6;
  if (*(v7 + *(v8 + 44) + 8))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v0[16] + *(v0[14] + 40) + 8) >> 60 == 15;
  }

  v11 = v0[36];
  v12 = v0[8];
  v13 = v6;
  sub_1003AB08C(v12, v0 + 2, v10);
  if (v11)
  {
    sub_1003A10A4(v0[16], type metadata accessor for MobileDocumentReaderAuthenticationSession);

    sub_10000BB78(v0 + 2);
LABEL_19:
    v26 = v0[30];
    v25 = v0[31];
    v28 = v0[29];
    (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.internalError(_:), v0[17]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    DIPSignpost.end(workflowID:isBackground:)(0, 2);
    (*(v26 + 8))(v25, v28);

    v27 = v0[1];

    return v27();
  }

  v14 = v0[9];
  sub_10000BB78(v0 + 2);
  sub_10000BA08((v14 + 368), *(v14 + 392));
  v15 = swift_task_alloc();
  v0[38] = v15;
  *v15 = v0;
  v15[1] = sub_10039F520;
  v16 = v0[8];

  return sub_1003484CC(v16);
}

uint64_t sub_10039F2EC()
{
  v2 = v0[30];
  v1 = v0[31];
  v5 = v0[29];
  (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.internalError(_:), v0[17]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v5);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10039F520(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 312) = v1;

  v4 = *(v3 + 72);
  if (v1)
  {
    v5 = sub_10039F798;
  }

  else
  {

    v5 = sub_10039F65C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10039F65C()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 128);

  sub_1003A10A4(v4, type metadata accessor for MobileDocumentReaderAuthenticationSession);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10039F798()
{
  v1 = *(v0 + 128);

  sub_1003A10A4(v1, type metadata accessor for MobileDocumentReaderAuthenticationSession);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v6 = *(v0 + 232);
  (*(*(v0 + 144) + 104))(*(v0 + 152), enum case for DIPError.Code.internalError(_:), *(v0 + 136));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v3 + 8))(v2, v6);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10039F9F4()
{
  v2 = v0[30];
  v1 = v0[31];
  v5 = v0[29];
  (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.internalError(_:), v0[17]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  (*(v2 + 8))(v1, v5);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10039FC28()
{
  v2 = v1;
  v3 = v0;
  v51 = type metadata accessor for DIPError.Code();
  v48 = *(v51 - 8);
  v4 = __chkstk_darwin(v51);
  v47 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v49 = &v44 - v6;
  v56 = type metadata accessor for DIPError();
  v53 = *(v56 - 8);
  v7 = __chkstk_darwin(v56);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v44 - v10;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v50 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v46 = &v44 - v16;
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  defaultLogger()();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  v57 = v3;

  v21 = os_log_type_enabled(v19, v20);
  v54 = v12;
  v55 = v11;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v22 = 136315394;
    v59 = v57;
    v23 = String.init<A>(describing:)();
    v25 = sub_100141FE4(v23, v24, &v60);

    *(v22 + 4) = v25;
    v2 = v1;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_100141FE4(0x4153486B63656863, 0xEB00000000292832, &v60);
    _os_log_impl(&_mh_execute_header, v19, v20, "MobileDocumentReaderFlow %s %s)", v22, 0x16u);
    swift_arrayDestroy();

    v26 = *(v54 + 8);
    v26(v18, v55);
  }

  else
  {

    v26 = *(v12 + 8);
    v26(v18, v11);
  }

  sub_10000BA08(v57 + 41, *(v57 + 44));
  result = dispatch thunk of DIPAccountManagerProtocol.verifyAccountStatus(requireHSA2:)();
  if (!v2)
  {
    return result;
  }

  v60 = v2;
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  v28 = v52;
  if (swift_dynamicCast())
  {
    v45 = v26;
    (*(v53 + 32))(v9, v28, v56);
    v29 = v49;
    DIPError.code.getter();
    v30 = v48;
    v57 = v9;
    v31 = *(v48 + 104);
    v32 = v47;
    v33 = v51;
    v31(v47, enum case for DIPError.Code.hsa2NotEnabled(_:), v51);
    sub_1003A1158(&qword_10083B4D0, 255, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v34 = *(v30 + 8);
    v34(v32, v33);
    v34(v29, v33);
    if (v59 == v58)
    {

      v35 = v46;
      defaultLogger()();
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "MobileDocumentReaderFlow account is signed in, but HSA2 is disabled", v38, 2u);
      }

      v45(v35, v55);
      v31(v49, enum case for DIPError.Code.documentReaderHSA2NotEnabled(_:), v51);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_1003A1158(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v39 = v56;
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v53 + 8))(v57, v39);
    }

    (*(v53 + 8))(v57, v56);
    v26 = v45;
  }

  v40 = v50;
  defaultLogger()();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "MobileDocumentReaderFlow ignoring account not signed in", v43, 2u);
  }

  return (v26)(v40, v55);
}

void *sub_1003A040C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for MobileDocumentReaderFlow();
  v10 = swift_allocObject();
  result = sub_100396660(a1, a2, a3, a4);
  *a5 = v10;
  return result;
}

uint64_t sub_1003A047C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  return _swift_task_switch(sub_1003A04A0, v4, 0);
}

uint64_t sub_1003A04A0()
{
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(v0[4] + 160);
  ObjectType = swift_getObjectType();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = *(v3 + 16);

  v6(sub_1003A06A4, v5, ObjectType, v3);
  v7 = v0[1];

  return v7();
}

uint64_t sub_1003A0584()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_1003A05A4, v2, 0);
}

uint64_t sub_1003A05A4()
{
  v1 = *(v0 + 16);
  if (*(v1 + 144))
  {
    type metadata accessor for MobileDocumentReaderResponse();

    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    Task.cancel()();
  }

  *(v1 + 144) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003A066C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003A06AC()
{
  sub_10000BB78((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1003A0748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v5 = type metadata accessor for DIPHTTPSession.Configuration(0);
  v6 = __chkstk_darwin(v5);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for KRLTrustValidator();
  v48 = &off_1008094F0;
  *&v46 = a2;
  v15 = type metadata accessor for DateProvider();
  v44 = v15;
  v45 = &protocol witness table for DateProvider;
  v16 = sub_100032DBC(&v43);
  (*(*(v15 - 8) + 32))(v16, a3, v15);
  v42[3] = &type metadata for KRLConfigurationProvider;
  v42[4] = &off_1008094C8;
  type metadata accessor for PresentmentKeyRevocationValidator();
  v17 = swift_allocObject();
  sub_10001F370(v42, &type metadata for KRLConfigurationProvider);
  v40 = &type metadata for KRLConfigurationProvider;
  v41 = &off_1008094C8;
  v18 = v31;
  swift_defaultActor_initialize();
  sub_10000BBC4(v18, &v34, &qword_100842548, &unk_1006DF5D0);
  if (v35)
  {
    sub_10000BE18(v18, &qword_100842548, &unk_1006DF5D0);
    sub_10001F358(&v34, &v36);
  }

  else
  {
    v30 = v8;
    UUID.init()();
    v19 = UUID.uuidString.getter();
    v21 = v20;
    (*(v12 + 8))(v14, v11);
    if (qword_100832C10 != -1)
    {
      swift_once();
    }

    v22 = sub_10003170C(v5, qword_10083ABA0);
    v23 = v10;
    sub_1002BEB48(v22, v10);
    type metadata accessor for DIPAccountManager();
    static DIPAccountManager.sharedInstance.getter();
    v24 = type metadata accessor for DIPWebService();
    v25 = objc_allocWithZone(v24);
    v26 = &v25[OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation];
    *v26 = v19;
    v26[1] = v21;
    sub_100020260(&v36, v33);
    v27 = v30;
    sub_1002BEB48(v23, v30);
    type metadata accessor for DIPHTTPSession(0);
    swift_allocObject();
    *&v25[OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession] = sub_1005BE690(v33, v27);
    v32.receiver = v25;
    v32.super_class = v24;
    v28 = objc_msgSendSuper2(&v32, "init");
    sub_10000BB78(&v36);
    sub_1003A10A4(v23, type metadata accessor for DIPHTTPSession.Configuration);
    v37 = v24;
    v38 = &off_1008181D8;
    *&v36 = v28;
    sub_10000BE18(v18, &qword_100842548, &unk_1006DF5D0);
    if (v35)
    {
      sub_10000BE18(&v34, &qword_100842548, &unk_1006DF5D0);
    }
  }

  sub_10001F358(&v36, v17 + 112);
  sub_10001F358(&v39, v17 + 152);
  sub_10001F358(&v46, v17 + 192);
  sub_10001F358(&v43, v17 + 232);
  sub_10000BB78(v42);
  return v17;
}

uint64_t sub_1003A0B44(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPHTTPSession.Configuration(0);
  __chkstk_darwin(v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = &type metadata for FairPlayProvisioner;
  v41 = &off_100817E20;
  v13 = swift_allocObject();
  *&v39 = v13;
  v14 = a2[1];
  v13[1] = *a2;
  v13[2] = v14;
  v13[3] = a2[2];
  sub_10000BBC4(a1, &v34, &qword_100842558, &unk_1006DF5E8);
  if (v35)
  {
    sub_10000BE18(a1, &qword_100842558, &unk_1006DF5E8);
    sub_10001F358(&v34, &v36);
    *(a3 + 96) = 0;
  }

  else
  {
    sub_10000BE18(&v34, &qword_100842558, &unk_1006DF5E8);
    type metadata accessor for IdentityProofingDatabaseProvider();
    v15 = swift_allocObject();
    v16 = type metadata accessor for IdentitySelfHealer();
    v17 = objc_allocWithZone(v16);
    v18 = &v17[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_proofingSessionID];
    *v18 = 0;
    *(v18 + 1) = 0;
    *&v17[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_databaseProvider] = v15;
    v33.receiver = v17;
    v33.super_class = v16;
    *(a3 + 96) = objc_msgSendSuper2(&v33, "init");
    v19 = v10[6];
    v20 = enum case for DIPBackoffStrategy.noBackoff(_:);
    v21 = type metadata accessor for DIPBackoffStrategy();
    (*(*(v21 - 8) + 104))(&v12[v19], v20, v21);
    *v12 = 0x403E000000000000;
    *(v12 + 1) = 0;
    v12[v10[7]] = 0;
    v12[v10[8]] = 1;
    v12[v10[9]] = 0;
    v22 = &v12[v10[10]];
    *v22 = 0;
    *(v22 + 1) = 0;
    UUID.init()();
    v23 = UUID.uuidString.getter();
    v25 = v24;
    (*(v7 + 8))(v9, v6);
    type metadata accessor for DIPAccountManager();
    static DIPAccountManager.sharedInstance.getter();
    v26 = type metadata accessor for DIPTopekaWebService(0);
    v27 = objc_allocWithZone(v26);
    v28 = sub_1005D7D88(v23, v25, &v36, v12);
    v29 = v28;
    v30 = &off_10080DB50;
    if (!*(a3 + 96))
    {
      v30 = 0;
    }

    *&v28[OBJC_IVAR____TtC8coreidvd19DIPTopekaWebService_selfHealer + 8] = v30;
    swift_unknownObjectWeakAssign();
    v37 = v26;
    v38 = &off_10080E468;
    *&v36 = v29;
    sub_10000BE18(a1, &qword_100842558, &unk_1006DF5E8);
  }

  sub_10001F358(&v36, a3 + 16);
  sub_10001F358(&v39, a3 + 56);
  return a3;
}

uint64_t sub_1003A0F0C()
{
  sub_10000BB78((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1003A0FFC()
{
  sub_10000BB78((v0 + 48));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1003A103C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003A10A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1003A1104()
{
  result = qword_100842560;
  if (!qword_100842560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100842560);
  }

  return result;
}

uint64_t sub_1003A1158(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003A11A0()
{
  v1 = type metadata accessor for MobileDocumentReaderRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for MobileDocumentReaderDeviceEngagementType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1003A12F8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MobileDocumentReaderRequest() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for MobileDocumentReaderDeviceEngagementType() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100027B9C;

  return sub_10039B800(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1003A1458(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100041F04;

  return sub_100399C4C(a1, v1);
}

uint64_t sub_1003A1518(uint64_t a1)
{
  v1[97] = a1;
  v2 = type metadata accessor for DIPError.Code();
  v1[98] = v2;
  v1[99] = *(v2 - 8);
  v1[100] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[101] = v3;
  v1[102] = *(v3 - 8);
  v1[103] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[104] = v4;
  v1[105] = *(v4 - 8);
  v1[106] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v1[107] = v5;
  v1[108] = *(v5 - 8);
  v1[109] = swift_task_alloc();

  return _swift_task_switch(sub_1003A16EC, 0, 0);
}

uint64_t sub_1003A16EC()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_1000318FC(&v1[4], (v0 + 63));
  os_unfair_lock_unlock(v1 + 54);
  sub_100020260((v0 + 63), (v0 + 88));
  sub_100031918((v0 + 63));
  sub_10000BA08(v0 + 88, v0[91]);
  v2 = swift_task_alloc();
  v0[110] = v2;
  *v2 = v0;
  v2[1] = sub_1003A1820;

  return sub_10050886C((v0 + 2));
}

uint64_t sub_1003A1820()
{
  v2 = *v1;
  *(*v1 + 888) = v0;

  if (v0)
  {
    v3 = sub_1003A1F4C;
  }

  else
  {
    sub_1000F2758(v2 + 16);
    v3 = sub_1003A193C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003A193C()
{
  v1 = v0[109];
  v2 = v0[108];
  v3 = v0[107];
  sub_10000BB78(v0 + 88);
  UUID.init()();
  UUID.uuidString.getter();
  v0[112] = v4;
  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  v0[113] = v5;
  *v5 = v0;
  v5[1] = sub_1003A1A24;

  return sub_1005D7070(1);
}

uint64_t sub_1003A1A24(uint64_t a1)
{
  *(*v1 + 912) = a1;

  return _swift_task_switch(sub_1003A1B44, 0, 0);
}

uint64_t sub_1003A1B44()
{
  if (v0[114])
  {
    v1 = swift_task_alloc();
    v0[115] = v1;
    *v1 = v0;
    v1[1] = sub_1003A1E28;
    v2 = v0[97];

    return sub_1005CACEC(v2);
  }

  else
  {
    (*(v0[99] + 104))(v0[100], enum case for DIPError.Code.unexpectedDaemonState(_:), v0[98]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v0[99] + 104))(v0[100], enum case for DIPError.Code.internalError(_:), v0[98]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1003A1E28(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[93] = v3;
  v4[94] = a1;
  v4[95] = a2;
  v4[96] = v2;
  v4[116] = v2;

  if (v2)
  {
    v5 = sub_1003A23A0;
  }

  else
  {
    v5 = sub_1003A2114;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003A1F4C()
{
  sub_10000BB78(v0 + 88);
  (*(v0[99] + 104))(v0[100], enum case for DIPError.Code.internalError(_:), v0[98]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003A2114(uint64_t a1)
{
  v29 = v1;
  v2 = v1[103];
  v3 = v1[102];
  v4 = v1[101];
  v5 = v1[97];
  defaultLogger()();
  (*(v3 + 16))(v2, v5, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[106];
  v10 = v1[105];
  v11 = v1[104];
  v12 = v1[103];
  v13 = v1[102];
  v14 = v1[101];
  if (v8)
  {
    v15 = swift_slowAlloc();
    v25 = v7;
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136315138;
    sub_1002A7708(&qword_1008418B0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v26 = v11;
    v27 = v9;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = sub_100141FE4(v17, v19, &v28);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v25, "MobileDocumentReaderLogoFetcher received logo from URL %s", v15, 0xCu);
    sub_10000BB78(v16);

    (*(v10 + 8))(v27, v26);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
  }

  v21 = v1[94];
  v22 = v1[95];

  v23 = v1[1];

  return v23(v21, v22);
}

uint64_t sub_1003A23A0()
{

  (*(v0[99] + 104))(v0[100], enum case for DIPError.Code.internalError(_:), v0[98]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1002A7708(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003A2568()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for DIPError.Code();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[10] = v4;
  *v4 = v1;
  v4[1] = sub_1003A26D0;

  return sub_100504E08();
}

uint64_t sub_1003A26D0(char a1)
{
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_1003A27D0, 0, 0);
}

uint64_t sub_1003A27D0()
{
  if (*(v0 + 96))
  {
LABEL_6:
    sub_10000BA08((*(v0 + 16) + 56), *(*(v0 + 16) + 80));
    v10 = swift_task_alloc();
    *(v0 + 88) = v10;
    *v10 = v0;
    v10[1] = sub_1003A2B90;

    return sub_1003A8A80();
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.MobileDocumentReader.disableRadioChecks.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Bluetooth is not enabled. Bypassing this check due to internal setting.", v6, 2u);
    }

    v7 = *(v0 + 48);
    v8 = *(v0 + 24);
    v9 = *(v0 + 32);

    (*(v9 + 8))(v7, v8);
    goto LABEL_6;
  }

  v12 = *(v0 + 72);
  v15 = *(v0 + 56);
  v13 = *(*(v0 + 64) + 104);
  v13(v12, enum case for DIPError.Code.documentReaderRequiresBluetooth(_:));
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_1003A8A1C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  (v13)(v12, enum case for DIPError.Code.internalError(_:), v15);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v14 = *(v0 + 8);

  return v14();
}