uint64_t sub_1000254BC()
{
  v2 = *v1;
  *(*v1 + 2768) = v0;

  if (v0)
  {

    v3 = *(v2 + 2680);
    v4 = *(v2 + 2672);
    v5 = sub_10002ACDC;
  }

  else
  {
    v3 = *(v2 + 2680);
    v4 = *(v2 + 2672);
    v5 = sub_1000255E0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000255E0()
{
  v159 = v0;
  sub_100014E78((v0[176] + 40), *(v0[176] + 64));
  if (sub_10004D480())
  {
    v1 = v0[270];
    sub_100030B8C(v0[342], v0[343], v1);
    v2 = sub_1000026D8(&qword_100061418, &unk_100050D40);
    v3 = *(v2 - 8);
    if ((*(v3 + 48))(v1, 1, v2) != 1)
    {
      v45 = v0[293];
      v46 = v0[291];
      v47 = v0[290];
      v48 = v0[289];
      v49 = v0[288];
      v50 = v0[287];
      v136 = v0[275];
      v141 = v0[295];
      v147 = v0[175];
      v153 = v0[270];

      (*(v49 + 8))(v48, v50);
      (*(v46 + 8))(v45, v47);
      sub_100007BC0(v141, &qword_1000614D0, &unk_10004F670);
      sub_100014FD4(v136);
      (*(v3 + 32))(v147, v153, v2);
      goto LABEL_13;
    }

    v4 = v0[176];
    sub_100007BC0(v0[270], &qword_1000614A8, &unk_100050D80);
    sub_100014E78((v4 + 40), *(v4 + 64));
    if (sub_10004D490())
    {
      v5 = v0[337];
      v6 = v0[316];
      v7 = v0[314];
      v8 = v0[283];
      v9 = v0[280];
      v10 = v0[279];
      v11 = v0[278];
      sub_10004CA80();
      sub_10004CEE0();
      v5(v6, v7);
      sub_10004DEE0();
      sub_100007BC0(v8, &qword_1000614C0, &unk_10004F660);
      v12 = sub_10004D710();
      (*(v10 + 8))(v9, v11);
      if (v12 && (v13 = v0[269], v14 = v0[268], v15 = v0[267], sub_10004D560(), v16 = sub_10004D550(), (*(v14 + 8))(v13, v15), (v16 & 1) == 0))
      {

        sub_10004DC50();
        v86 = sub_10004DC70();
        v87 = sub_10004DEB0();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&_mh_execute_header, v86, v87, "Siri\\remote_montara is currently disabled and hence remote Montara requests are not available.", v88, 2u);
        }

        v89 = v0[340];
        v90 = v0[306];
        v91 = v0[299];
        v150 = v0[293];
        v157 = v0[295];
        v139 = v0[291];
        v144 = v0[290];
        v124 = v0[288];
        v129 = v0[287];
        v133 = v0[289];
        v103 = v0[271];
        v105 = v0[275];
        v92 = v0[266];
        v93 = v0[263];
        v94 = v0[262];
        v107 = v0[261];
        v110 = v0[272];
        v116 = v0[256];
        v120 = v0[255];
        v113 = v0[259];

        v89(v90, v91);
        sub_10004D8D0();
        v101 = enum case for CatId.featureUnsupportedForRemoteClients(_:);
        v99 = *(v93 + 104);
        v99(v92);
        sub_100007C20(&_swiftEmptyArrayStorage);
        v95 = sub_10004D8B0();
        v97 = v96;

        v98 = *(v93 + 8);
        v98(v92, v94);
        v0[172] = v95;
        v0[173] = v97;
        sub_10004CC30();
        sub_100014EBC(v105, v107);
        (*(v110 + 56))(v107, 0, 1, v103);
        sub_10004D8A0();
        (v99)(v92, v101, v94);
        sub_10004D880();
        v98(v92, v94);
        sub_100014F20();
        sub_10004CBD0();
        (*(v116 + 8))(v113, v120);
        sub_100007BC0(v107, &qword_1000614A0, &unk_10004F640);
        (*(v124 + 8))(v133, v129);
        (*(v139 + 8))(v150, v144);
        sub_100007BC0(v157, &qword_1000614D0, &unk_10004F670);
        v44 = v105;
      }

      else
      {
        v17 = v0[176];
        sub_10004DC50();
        sub_10002E288(v17, (v0 + 50));
        v18 = sub_10004DC70();
        v19 = sub_10004DEA0();
        v20 = os_log_type_enabled(v18, v19);
        v21 = v0[340];
        if (v20)
        {
          v125 = v0[337];
          v22 = v0[316];
          v23 = v0[314];
          v145 = v0[299];
          v151 = v0[305];
          v134 = v0[340];
          v24 = swift_slowAlloc();
          v158[0] = swift_slowAlloc();
          *v24 = 136315650;
          *(v24 + 4) = sub_10001E340(0xD00000000000001FLL, 0x8000000100050710, v158);
          *(v24 + 12) = 2080;
          *(v24 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v158);
          *(v24 + 22) = 2080;
          sub_10004CA80();
          sub_10004CEE0();
          v125(v22, v23);
          v25 = sub_10004DD70();
          v27 = v26;
          sub_10002E2C0((v0 + 50));
          v28 = sub_10001E340(v25, v27, v158);

          *(v24 + 24) = v28;
          _os_log_impl(&_mh_execute_header, v18, v19, "%s.%s The invoking interace idiom is %s", v24, 0x20u);
          swift_arrayDestroy();

          v134(v151, v145);
        }

        else
        {
          v71 = v0[305];
          v72 = v0[299];

          sub_10002E2C0((v0 + 50));
          v21(v71, v72);
        }

        v73 = v0[254];
        sub_10004DAC0();
        sub_10004DAB0();
        sub_10004DAA0();

        v74 = sub_1000026D8(&unk_1000614F0, &qword_10004F680);
        if ((*(*(v74 - 8) + 48))(v73, 1, v74) == 1)
        {
          v75 = v0[176];
          sub_100007BC0(v0[254], &unk_100061DA0, &qword_10004F638);
          v155 = (*(v75 + 80) + **(v75 + 80));
          v76 = swift_task_alloc();
          v0[347] = v76;
          *v76 = v0;
          v76[1] = sub_100026D90;
          v77 = v0[253];

          return v155(v77);
        }

        v143 = v0[293];
        v149 = v0[295];
        v132 = v0[291];
        v138 = v0[290];
        v123 = v0[287];
        v128 = v0[289];
        v156 = v0[275];
        v78 = v0[272];
        v109 = v0[274];
        v112 = v0[271];
        v79 = v0[261];
        v119 = v0[288];
        v80 = v0[258];
        v81 = v0[256];
        v82 = v0[255];
        v83 = v0[254];

        v85 = *v83;
        v84 = *(v83 + 1);
        (*(v81 + 32))(v80, &v83[*(v74 + 48)], v82);
        sub_1000157A0(v109);
        v0[170] = v85;
        v0[171] = v84;
        sub_10004CC30();
        sub_100014EBC(v109, v79);
        (*(v78 + 56))(v79, 0, 1, v112);
        sub_100014F20();
        sub_10004CBD0();
        sub_100007BC0(v79, &qword_1000614A0, &unk_10004F640);
        (*(v81 + 8))(v80, v82);
        (*(v119 + 8))(v128, v123);
        (*(v132 + 8))(v143, v138);
        sub_100007BC0(v149, &qword_1000614D0, &unk_10004F670);
        sub_100014FD4(v109);
        v44 = v156;
      }
    }

    else
    {

      sub_10004DC50();
      v56 = sub_10004DC70();
      v57 = sub_10004DEA0();
      v58 = os_log_type_enabled(v56, v57);
      v59 = v0[340];
      v60 = v0[303];
      v61 = v0[299];
      if (v58)
      {
        v62 = swift_slowAlloc();
        v158[0] = swift_slowAlloc();
        *v62 = 136315394;
        *(v62 + 4) = sub_10001E340(0xD00000000000001FLL, 0x8000000100050710, v158);
        *(v62 + 12) = 2080;
        *(v62 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v158);
        _os_log_impl(&_mh_execute_header, v56, v57, "%s.%s request is not available", v62, 0x16u);
        swift_arrayDestroy();
      }

      v59(v60, v61);
      v148 = v0[293];
      v154 = v0[295];
      v137 = v0[291];
      v142 = v0[290];
      v127 = v0[287];
      v131 = v0[289];
      v63 = v0[272];
      v100 = v0[271];
      v102 = v0[275];
      v64 = v0[266];
      v65 = v0[263];
      v66 = v0[262];
      v104 = v0[261];
      v115 = v0[256];
      v118 = v0[255];
      v122 = v0[288];
      v111 = v0[259];
      sub_10004D8D0();
      v108 = enum case for CatId.disabledResponse(_:);
      v106 = *(v65 + 104);
      v106(v64);
      sub_100007C20(&_swiftEmptyArrayStorage);
      v67 = sub_10004D8B0();
      v69 = v68;

      v70 = *(v65 + 8);
      v70(v64, v66);
      v0[156] = v67;
      v0[157] = v69;
      sub_10004CC30();
      sub_100014EBC(v102, v104);
      (*(v63 + 56))(v104, 0, 1, v100);
      sub_10004D8A0();
      (v106)(v64, v108, v66);
      sub_10004D880();
      v70(v64, v66);
      sub_100014F20();
      sub_10004CBD0();
      (*(v115 + 8))(v111, v118);
      sub_100007BC0(v104, &qword_1000614A0, &unk_10004F640);
      (*(v122 + 8))(v131, v127);
      (*(v137 + 8))(v148, v142);
      sub_100007BC0(v154, &qword_1000614D0, &unk_10004F670);
      v44 = v102;
    }
  }

  else
  {

    sub_10004DC50();
    v29 = sub_10004DC70();
    v30 = sub_10004DEA0();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[340];
    v33 = v0[302];
    v34 = v0[299];
    if (v31)
    {
      v35 = swift_slowAlloc();
      v158[0] = swift_slowAlloc();
      *v35 = 136315394;
      *(v35 + 4) = sub_10001E340(0xD00000000000001FLL, 0x8000000100050710, v158);
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v158);
      _os_log_impl(&_mh_execute_header, v29, v30, "%s.%s request was restricted by MDM or parental controls.", v35, 0x16u);
      swift_arrayDestroy();
    }

    v32(v33, v34);
    v146 = v0[293];
    v152 = v0[295];
    v135 = v0[291];
    v140 = v0[290];
    v121 = v0[287];
    v126 = v0[289];
    v130 = v0[275];
    v36 = v0[272];
    v37 = v0[271];
    v38 = v0[266];
    v39 = v0[263];
    v40 = v0[262];
    v41 = v0[261];
    v42 = v0[259];
    v43 = v0[256];
    v114 = v0[255];
    v117 = v0[288];
    sub_100014EBC(v130, v41);
    (*(v36 + 56))(v41, 0, 1, v37);
    sub_10004D8A0();
    (*(v39 + 104))(v38, enum case for CatId.genericRestrictionResponse(_:), v40);
    sub_10004D880();

    (*(v39 + 8))(v38, v40);
    sub_100014F20();
    sub_10004CBD0();
    (*(v43 + 8))(v42, v114);
    sub_100007BC0(v41, &qword_1000614A0, &unk_10004F640);
    (*(v117 + 8))(v126, v121);
    (*(v135 + 8))(v146, v140);
    sub_100007BC0(v152, &qword_1000614D0, &unk_10004F670);
    v44 = v130;
  }

  sub_100014FD4(v44);
LABEL_13:
  v51 = v0[332];
  v52 = v0[331];
  v53 = v0[330];
  sub_10002C27C(v0[341]);
  swift_unknownObjectRelease();
  (*(v52 + 8))(v51, v53);

  v54 = v0[1];

  return v54();
}

uint64_t sub_100026D90()
{
  v1 = *v0;

  v2 = *(v1 + 2680);
  v3 = *(v1 + 2672);

  return _swift_task_switch(sub_100026EB0, v3, v2);
}

uint64_t sub_100026EB0()
{
  v1 = *(v0 + 2744);
  v2 = *(v0 + 2736);
  v3 = *(v0 + 1408);
  sub_10002E288(v3, v0 + 528);
  v4 = swift_allocObject();
  *(v0 + 2784) = v4;
  v5 = *(v0 + 608);
  v4[5] = *(v0 + 592);
  v4[6] = v5;
  v6 = *(v0 + 640);
  v4[7] = *(v0 + 624);
  v4[8] = v6;
  v7 = *(v0 + 544);
  v4[1] = *(v0 + 528);
  v4[2] = v7;
  v8 = *(v0 + 576);
  v4[3] = *(v0 + 560);
  v4[4] = v8;
  sub_10002E288(v3, v0 + 656);
  v9 = swift_allocObject();
  *(v0 + 2792) = v9;
  v10 = *(v0 + 736);
  v9[5] = *(v0 + 720);
  v9[6] = v10;
  v11 = *(v0 + 768);
  v9[7] = *(v0 + 752);
  v9[8] = v11;
  v12 = *(v0 + 672);
  v9[1] = *(v0 + 656);
  v9[2] = v12;
  v13 = *(v0 + 704);
  v9[3] = *(v0 + 688);
  v9[4] = v13;
  sub_10004D5E0();
  sub_10002E288(v3, v0 + 784);
  v14 = swift_allocObject();
  v15 = *(v0 + 864);
  *(v14 + 80) = *(v0 + 848);
  *(v14 + 96) = v15;
  v16 = *(v0 + 896);
  *(v14 + 112) = *(v0 + 880);
  *(v14 + 128) = v16;
  v17 = *(v0 + 800);
  *(v14 + 16) = *(v0 + 784);
  *(v14 + 32) = v17;
  v18 = *(v0 + 832);
  *(v14 + 48) = *(v0 + 816);
  *(v14 + 64) = v18;
  *(v14 + 144) = v2;
  *(v14 + 152) = v1;
  sub_10002E288(v3, v0 + 912);
  v19 = swift_allocObject();
  v20 = *(v0 + 992);
  v19[5] = *(v0 + 976);
  v19[6] = v20;
  v21 = *(v0 + 1024);
  v19[7] = *(v0 + 1008);
  v19[8] = v21;
  v22 = *(v0 + 928);
  v19[1] = *(v0 + 912);
  v19[2] = v22;
  v23 = *(v0 + 960);
  v19[3] = *(v0 + 944);
  v19[4] = v23;
  sub_10002E288(v3, v0 + 1040);
  v24 = swift_allocObject();
  v25 = *(v0 + 1120);
  v24[5] = *(v0 + 1104);
  v24[6] = v25;
  v26 = *(v0 + 1152);
  v24[7] = *(v0 + 1136);
  v24[8] = v26;
  v27 = *(v0 + 1056);
  v24[1] = *(v0 + 1040);
  v24[2] = v27;
  v28 = *(v0 + 1088);
  v24[3] = *(v0 + 1072);
  v24[4] = v28;
  swift_bridgeObjectRetain_n();

  sub_10004D9C0();
  sub_10004D9D0();
  *(v0 + 2800) = *(v3 + 112);
  sub_10004CCC0();
  v29 = *(v0 + 1264);
  v30 = *(v0 + 1272);
  *(v0 + 2808) = v30;
  v31 = swift_task_alloc();
  *(v0 + 2816) = v31;
  *v31 = v0;
  v31[1] = sub_1000271D0;
  v32 = *(v0 + 2312);
  v33 = *(v0 + 2000);
  v34 = *(v0 + 1976);

  return GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:)(v34, v29, v30, v32, v33);
}

uint64_t sub_1000271D0()
{
  v2 = *v1;
  *(*v1 + 2824) = v0;

  if (v0)
  {

    v3 = *(v2 + 2680);
    v4 = *(v2 + 2672);
    v5 = sub_10002B34C;
  }

  else
  {
    v3 = *(v2 + 2680);
    v4 = *(v2 + 2672);
    v5 = sub_10002731C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10002731C()
{
  v1 = sub_10004DB30();
  if (v1 == 2 || (v1 & 1) == 0)
  {
    sub_10004D750();
  }

  else
  {
    sub_10004D9A0();
  }

  *(v0 + 2832) = sub_10004D7D0();

  v2 = sub_10004D810();
  *(v0 + 2840) = v2;
  v3 = *(v2 + 16);
  *(v0 + 2848) = v3;
  if (v3)
  {
    v4 = *(v0 + 1944);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 3152) = v6;
    *(v0 + 2856) = *(v4 + 56);
    *(v0 + 2864) = v5;
    *(v0 + 2880) = &_swiftEmptyArrayStorage;
    *(v0 + 2872) = 0;
    v5(*(v0 + 1952), v2 + ((v6 + 32) & ~v6), *(v0 + 1936));
    v7 = swift_task_alloc();
    *(v0 + 2888) = v7;
    *v7 = v0;
    v7[1] = sub_1000275FC;
    v8 = *(v0 + 1928);

    return sub_100004E18(v8);
  }

  else
  {

    *(v0 + 2896) = &_swiftEmptyArrayStorage;
    v10 = *(v0 + 1880);
    v11 = *(v0 + 1872);
    v12 = *(v0 + 1864);
    v13 = *(v0 + 1856);
    v14 = sub_10004D7C0();
    sub_10004D850();
    *(v0 + 3156) = enum case for GeneratedResponse.Outcome.rateLimited(_:);
    v15 = *(v12 + 104);
    *(v0 + 2904) = v15;
    *(v0 + 2912) = (v12 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v15(v11);
    sub_100015604(&unk_100061DD0, &type metadata accessor for GeneratedResponse.Outcome, &protocol conformance descriptor for GeneratedResponse.Outcome);
    v16 = sub_10004DCC0();
    v17 = *(v12 + 8);
    *(v0 + 2920) = v17;
    *(v0 + 2928) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v11, v13);
    v17(v10, v13);
    v18 = swift_task_alloc();
    *(v0 + 2936) = v18;
    *v18 = v0;
    v18[1] = sub_100027AF8;
    v19 = *(v0 + 2744);
    v20 = *(v0 + 2736);
    v21 = *(v0 + 1896);

    return static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:)(v21, v14 & 1, v20, v19, (v16 & 1) == 0);
  }
}

uint64_t sub_1000275FC()
{
  v1 = *v0;
  v2 = *(*v0 + 1952);
  v3 = *(*v0 + 1944);
  v4 = *(*v0 + 1936);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 2680);
  v6 = *(v1 + 2672);

  return _swift_task_switch(sub_100027780, v6, v5);
}

uint64_t sub_100027780()
{
  (*(*(v0 + 1912) + 16))(*(v0 + 1920), *(v0 + 1928), *(v0 + 1904));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 2880);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100048484(0, v2[2] + 1, 1, *(v0 + 2880));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100048484((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 2848);
  v6 = *(v0 + 1920);
  v7 = *(v0 + 1912);
  v8 = *(v0 + 1904);
  v9 = *(v0 + 2872) + 1;
  (*(v7 + 8))(*(v0 + 1928), v8);
  v2[2] = v4 + 1;
  (*(v7 + 32))(v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4, v6, v8);
  if (v9 == v5)
  {

    *(v0 + 2896) = v2;
    v10 = *(v0 + 1880);
    v11 = *(v0 + 1872);
    v12 = *(v0 + 1864);
    v13 = *(v0 + 1856);
    v14 = sub_10004D7C0();
    sub_10004D850();
    *(v0 + 3156) = enum case for GeneratedResponse.Outcome.rateLimited(_:);
    v15 = *(v12 + 104);
    *(v0 + 2904) = v15;
    *(v0 + 2912) = (v12 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v15(v11);
    sub_100015604(&unk_100061DD0, &type metadata accessor for GeneratedResponse.Outcome, &protocol conformance descriptor for GeneratedResponse.Outcome);
    v16 = sub_10004DCC0();
    v17 = *(v12 + 8);
    *(v0 + 2920) = v17;
    *(v0 + 2928) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v11, v13);
    v17(v10, v13);
    v18 = swift_task_alloc();
    *(v0 + 2936) = v18;
    *v18 = v0;
    v18[1] = sub_100027AF8;
    v19 = *(v0 + 2744);
    v20 = *(v0 + 2736);
    v21 = *(v0 + 1896);

    return static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:)(v21, v14 & 1, v20, v19, (v16 & 1) == 0);
  }

  else
  {
    v22 = *(v0 + 2872) + 1;
    *(v0 + 2880) = v2;
    *(v0 + 2872) = v22;
    (*(v0 + 2864))(*(v0 + 1952), *(v0 + 2840) + ((*(v0 + 3152) + 32) & ~*(v0 + 3152)) + *(v0 + 2856) * v22, *(v0 + 1936));
    v23 = swift_task_alloc();
    *(v0 + 2888) = v23;
    *v23 = v0;
    v23[1] = sub_1000275FC;
    v24 = *(v0 + 1928);

    return sub_100004E18(v24);
  }
}

uint64_t sub_100027AF8()
{
  v1 = *v0;

  v2 = *(v1 + 2680);
  v3 = *(v1 + 2672);

  return _swift_task_switch(sub_100027C3C, v3, v2);
}

uint64_t sub_100027C3C()
{
  v1 = *(v0 + 2920);
  v53 = *(v0 + 2904);
  v2 = *(v0 + 1880);
  v3 = *(v0 + 1872);
  v4 = *(v0 + 1856);
  v5 = *(v0 + 1848);
  v6 = *(v0 + 1840);
  v7 = *(v0 + 1424);
  v8 = *(v0 + 1416);
  v9 = *(v7 + 56);
  *(v0 + 2944) = v9;
  *(v0 + 2952) = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v5, 1, 1, v8);
  v52 = v9;
  v9(v6, 1, 1, v8);
  sub_10004D850();
  v53(v3, enum case for GeneratedResponse.Outcome.success(_:), v4);
  v10 = sub_10004D830();
  v1(v3, v4);
  v1(v2, v4);
  if (v10)
  {
    *(v0 + 2960) = sub_10004D730();
    *(v0 + 2968) = v11;
    *(v0 + 2976) = sub_10004D600();
    *(v0 + 2984) = v12;
    *(v0 + 2992) = sub_10004D770();
    *(v0 + 3000) = v13;
    sub_10004D740();
    *(v0 + 3008) = sub_10004D780();
    *(v0 + 3016) = sub_10004D7A0();
    *(v0 + 3024) = v14;

    return _swift_task_switch(sub_100028408, 0, 0);
  }

  v15 = *(v0 + 2920);
  v16 = *(v0 + 2904);
  v17 = *(v0 + 1880);
  v18 = *(v0 + 1872);
  v19 = *(v0 + 1856);

  sub_10004D850();
  v16(v18, enum case for GeneratedResponse.Outcome.signInRequired(_:), v19);
  v20 = sub_10004D830();
  v15(v18, v19);
  v15(v17, v19);
  if ((v20 & 1) == 0)
  {
    goto LABEL_8;
  }

  v21 = *(v0 + 1752);
  v22 = *(v0 + 1576);
  v23 = *(v0 + 1568);
  sub_10004D670();
  if ((*(v22 + 48))(v21, 1, v23) == 1)
  {
    sub_100007BC0(*(v0 + 1752), &qword_100061480, &qword_10004F2F0);
LABEL_8:
    v24 = *(v0 + 2920);
    v25 = *(v0 + 2904);
    v26 = *(v0 + 3156);
    v27 = *(v0 + 1880);
    v28 = *(v0 + 1872);
    v29 = *(v0 + 1856);
    sub_10004D850();
    v25(v28, v26, v29);
    v30 = sub_10004D830();
    v24(v28, v29);
    v24(v27, v29);
    if (v30)
    {
      v31 = *(v0 + 1888);
      v54 = *(v0 + 1808);
      v55 = *(v0 + 1848);
      v32 = *(v0 + 1696);
      v33 = *(v0 + 1688);
      v50 = *(v0 + 1896);
      v51 = *(v0 + 1680);
      v34 = *(v0 + 1488);
      v35 = *(v0 + 1480);
      v36 = *(v0 + 1472);
      v56 = *(v0 + 1416);
      sub_10004D7F0();
      sub_10004CCC0();
      sub_10001564C(v50, v31, &unk_100061490, &qword_10004F630);
      sub_10004D370();
      (*(v35 + 16))(v32, v34, v36);
      (*(v33 + 104))(v32, enum case for GenerativeResultModels.GenerativeRateLimitedSnippet(_:), v51);
      sub_100015604(&unk_100061DE0, &type metadata accessor for GenerativeResultModels, &protocol conformance descriptor for GenerativeResultModels);
      sub_10004D2C0();
      (*(v33 + 8))(v32, v51);
      sub_10004D340();
      sub_10004CE50();
      sub_10004CFA0();
      (*(v35 + 8))(v34, v36);
      sub_100007BC0(v55, &qword_100061488, &unk_100050D70);
      v52(v54, 0, 1, v56);
      sub_100015594(v54, v55);
    }

    *(v0 + 1280) = sub_10004D7F0();
    *(v0 + 1288) = v37;
    sub_10004CC30();
    *(v0 + 1296) = sub_10004D860();
    *(v0 + 1304) = v38;
    sub_10004CC30();
    v39 = swift_task_alloc();
    *(v0 + 3144) = v39;
    *v39 = v0;
    v39[1] = sub_10002933C;
    v40 = *(v0 + 2896);

    return sub_100015B24(v40);
  }

  v41 = *(v0 + 2128);
  v42 = *(v0 + 2104);
  v43 = *(v0 + 2096);
  (*(*(v0 + 1576) + 32))(*(v0 + 1584), *(v0 + 1752), *(v0 + 1568));
  sub_10004DA50();
  sub_10004D8A0();
  (*(v42 + 104))(v41, enum case for CatId.signInRequired(_:), v43);
  sub_10004D5F0();
  sub_10004D880();

  (*(v42 + 8))(v41, v43);
  *(v0 + 1392) = &_swiftEmptyArrayStorage;
  sub_100015604(&unk_100061510, &type metadata accessor for ConfirmationConditions, &protocol conformance descriptor for ConfirmationConditions);
  sub_1000026D8(&unk_100061DF0, &unk_100050DF0);
  sub_100002FC8(&unk_100061520, &unk_100061DF0, &unk_100050DF0, &protocol conformance descriptor for [A]);
  sub_10004DF00();
  v44 = swift_task_alloc();
  *(v0 + 3128) = v44;
  *v44 = v0;
  v44[1] = sub_100028E1C;
  v45 = *(v0 + 2688);
  v46 = *(v0 + 2056);
  v47 = *(v0 + 1560);
  v48 = *(v0 + 1536);

  return AppIntent.requestConfirmation(conditions:actionName:dialog:)(v48, v47, v46, &type metadata for GenerateKnowledgeResponseIntent, v45);
}

uint64_t sub_100028408()
{
  v1 = v0[354];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[203];
    v4 = v0[200];
    sub_100045A98(0, v2, 0);
    v6 = *(v4 + 16);
    v5 = v4 + 16;
    v7 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v29 = *(v5 + 56);
    v30 = v6;
    do
    {
      v8 = v0[201];
      v9 = v0[199];
      v30(v8, v7, v9);
      sub_10004D680();
      sub_10004D690();
      sub_10004D3E0();
      (*(v5 - 8))(v8, v9);
      v11 = *(&_swiftEmptyArrayStorage + 2);
      v10 = *(&_swiftEmptyArrayStorage + 3);
      if (v11 >= v10 >> 1)
      {
        sub_100045A98((v10 > 1), v11 + 1, 1);
      }

      v12 = v0[205];
      v13 = v0[202];
      *(&_swiftEmptyArrayStorage + 2) = v11 + 1;
      (*(v3 + 32))(&_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v12, v13);
      v7 += v29;
      --v2;
    }

    while (v2);
  }

  v32 = v0[378];
  v14 = v0[377];
  v15 = v0[237];
  v16 = v0[236];
  v31 = v0[222];
  v26 = v0[218];
  v27 = v0[217];
  v28 = v0[216];
  v17 = v0[215];
  v18 = v0[211];
  v19 = v0[210];
  sub_10001564C(v31, v0[221], &qword_100061480, &qword_10004F2F0);
  sub_10001564C(v15, v16, &unk_100061490, &qword_10004F630);

  sub_1000156B4(v14, v32);
  sub_10004D390();
  (*(v27 + 16))(v17, v26, v28);
  v20 = enum case for GenerativeResultModels.GenerativeRichTextResultSnippet(_:);
  v21 = *(v18 + 104);
  v0[379] = v21;
  v0[380] = (v18 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v21(v17, v20, v19);
  v0[381] = sub_100015604(&unk_100061DE0, &type metadata accessor for GenerativeResultModels, &protocol conformance descriptor for GenerativeResultModels);
  sub_10004D2C0();
  v22 = *(v18 + 8);
  v0[382] = v22;
  v0[383] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v17, v19);
  sub_10004D340();
  sub_10004CE50();
  sub_10004CFA0();
  sub_1000156C8(v14, v32);
  (*(v27 + 8))(v26, v28);
  sub_100007BC0(v31, &qword_100061480, &qword_10004F2F0);
  v23 = v0[335];
  v24 = v0[334];

  return _swift_task_switch(sub_10002885C, v24, v23);
}

uint64_t sub_10002885C()
{
  v1 = v0[368];
  v2 = v0[231];
  v3 = v0[229];
  v4 = v0[177];
  sub_100007BC0(v2, &qword_100061488, &unk_100050D70);
  v1(v3, 0, 1, v4);
  sub_100015594(v3, v2);
  v0[384] = sub_10004D730();
  v0[385] = v5;
  v0[386] = sub_10004D600();
  v0[387] = v6;
  v0[388] = sub_10004D770();
  v0[389] = v7;
  v0[390] = sub_10004D750();
  sub_10004D740();

  return _swift_task_switch(sub_10002896C, 0, 0);
}

uint64_t sub_10002896C()
{
  v1 = v0[390];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[203];
    v4 = v0[200];
    sub_100045A98(0, v2, 0);
    v6 = *(v4 + 16);
    v5 = v4 + 16;
    v7 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v24 = *(v5 + 56);
    v25 = v6;
    do
    {
      v8 = v0[201];
      v9 = v0[199];
      v25(v8, v7, v9);
      sub_10004D680();
      sub_10004D690();
      sub_10004D3E0();
      (*(v5 - 8))(v8, v9);
      v11 = *(&_swiftEmptyArrayStorage + 2);
      v10 = *(&_swiftEmptyArrayStorage + 3);
      if (v11 >= v10 >> 1)
      {
        sub_100045A98((v10 > 1), v11 + 1, 1);
      }

      v12 = v0[204];
      v13 = v0[202];
      *(&_swiftEmptyArrayStorage + 2) = v11 + 1;
      (*(v3 + 32))(&_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v12, v13);
      v7 += v24;
      --v2;
    }

    while (v2);
  }

  v23 = v0[382];
  v22 = v0[379];
  v26 = v0[220];
  v14 = v0[214];
  v15 = v0[210];
  v16 = v0[208];
  v17 = v0[207];
  v18 = v0[206];
  sub_10001564C(v26, v0[221], &qword_100061480, &qword_10004F2F0);
  sub_10004D3C0();
  (*(v17 + 16))(v14, v16, v18);
  v22(v14, enum case for GenerativeResultModels.GenerativeAttributionSnippet(_:), v15);
  sub_10004D2C0();
  v23(v14, v15);
  sub_10004D340();
  sub_10004CE50();
  sub_10004CFA0();
  (*(v17 + 8))(v16, v18);
  sub_100007BC0(v26, &qword_100061480, &qword_10004F2F0);
  v19 = v0[335];
  v20 = v0[334];

  return _swift_task_switch(sub_100028CDC, v20, v19);
}

uint64_t sub_100028CDC()
{
  v1 = v0[368];
  v2 = v0[230];
  v3 = v0[228];
  v4 = v0[177];
  sub_100007BC0(v2, &qword_100061488, &unk_100050D70);
  v1(v3, 0, 1, v4);
  sub_100015594(v3, v2);
  v0[160] = sub_10004D7F0();
  v0[161] = v5;
  sub_10004CC30();
  v0[162] = sub_10004D860();
  v0[163] = v6;
  sub_10004CC30();
  v7 = swift_task_alloc();
  v0[393] = v7;
  *v7 = v0;
  v7[1] = sub_10002933C;
  v8 = v0[362];

  return sub_100015B24(v8);
}

uint64_t sub_100028E1C()
{
  v2 = *v1;
  *(*v1 + 3136) = v0;

  if (v0)
  {
    v3 = v2[257];
    v4 = v2[256];
    v5 = v2[255];
    v6 = v2[195];
    v7 = v2[194];
    v8 = v2[193];
    (*(v2[191] + 8))(v2[192], v2[190]);
    (*(v4 + 8))(v3, v5);
    (*(v7 + 8))(v6, v8);

    v9 = v2[335];
    v10 = v2[334];
    v11 = sub_10002BA94;
  }

  else
  {
    v12 = v2[257];
    v13 = v2[256];
    v14 = v2[255];
    v15 = v2[195];
    v16 = v2[194];
    v17 = v2[193];
    (*(v2[191] + 8))(v2[192], v2[190]);
    (*(v13 + 8))(v12, v14);
    (*(v16 + 8))(v15, v17);
    v9 = v2[335];
    v10 = v2[334];
    v11 = sub_100029024;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_100029024(uint64_t a1)
{
  v17 = v1[368];
  v2 = v1[213];
  v3 = v1[211];
  v12 = v1[210];
  v13 = v1[227];
  v15 = v1[231];
  v16 = v1[198];
  v18 = v1[197];
  v19 = v1[196];
  v4 = v1[189];
  v5 = v1[188];
  v6 = v1[187];
  v14 = v1[177];
  sub_10004DBB0();
  sub_10004CA70();
  sub_10004CB80();
  (*(v5 + 8))(v4, v6);
  sub_10004DB80();

  sub_10004D360();
  (*(v3 + 104))(v2, enum case for GenerativeResultModels.GenerativeDismissalSnippet(_:), v12);
  sub_100015604(&unk_100061DE0, &type metadata accessor for GenerativeResultModels, &protocol conformance descriptor for GenerativeResultModels);
  sub_10004D2C0();
  (*(v3 + 8))(v2, v12);
  sub_10004D340();
  sub_10004CE50();
  sub_10004CFA0();
  sub_100007BC0(v15, &qword_100061488, &unk_100050D70);
  v17(v13, 0, 1, v14);
  sub_100015594(v13, v15);
  sub_100014154();
  (*(v18 + 8))(v16, v19);
  v1[160] = sub_10004D7F0();
  v1[161] = v7;
  sub_10004CC30();
  v1[162] = sub_10004D860();
  v1[163] = v8;
  sub_10004CC30();
  v9 = swift_task_alloc();
  v1[393] = v9;
  *v9 = v1;
  v9[1] = sub_10002933C;
  v10 = v1[362];

  return sub_100015B24(v10);
}

uint64_t sub_10002933C()
{
  v1 = *v0;

  v2 = *(v1 + 2680);
  v3 = *(v1 + 2672);

  return _swift_task_switch(sub_100029480, v3, v2);
}

uint64_t sub_100029480()
{
  v141 = v0;
  v1 = v0[275];
  v2 = v0[273];

  sub_100017588();
  sub_10004DC50();
  sub_100014EBC(v1, v2);
  v3 = sub_10004DC70();
  v4 = sub_10004DEA0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[304];
  v7 = v0[300];
  v8 = v0[299];
  v9 = v0[273];
  if (v5)
  {
    v138 = v0[304];
    v10 = swift_slowAlloc();
    v140[0] = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_10001E340(0xD00000000000001FLL, 0x8000000100050710, v140);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v140);
    *(v10 + 22) = 2080;
    v11 = sub_100017684();
    v13 = v12;
    sub_100014FD4(v9);
    v14 = sub_10001E340(v11, v13, v140);

    *(v10 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s %s", v10, 0x20u);
    swift_arrayDestroy();

    (*(v7 + 8))(v138, v8);
  }

  else
  {

    sub_100014FD4(v9);
    (*(v7 + 8))(v6, v8);
  }

  v15 = v0[264];
  v16 = v0[263];
  v17 = v0[262];
  sub_10004D800();
  (*(v16 + 104))(v15, enum case for CatId.empty(_:), v17);
  sub_100015604(&unk_100061500, &type metadata accessor for CatId, &protocol conformance descriptor for CatId);
  sub_10004DDF0();
  sub_10004DDF0();
  v18 = v0[265];
  v19 = v0[264];
  v20 = v0[263];
  v21 = v0[262];
  if (v0[164] == v0[166] && v0[165] == v0[167])
  {
    v22 = *(v20 + 8);
    v22(v0[264], v0[262]);
    v22(v18, v21);
  }

  else
  {
    v23 = sub_10004DFA0();
    v24 = *(v20 + 8);
    v24(v19, v21);
    v24(v18, v21);

    if ((v23 & 1) == 0)
    {
      v47 = v0[225];
      v48 = v0[178];
      v49 = v0[177];
      sub_10001564C(v0[231], v47, &qword_100061488, &unk_100050D70);
      LODWORD(v49) = (*(v48 + 48))(v47, 1, v49);
      sub_100007BC0(v47, &qword_100061488, &unk_100050D70);
      if (v49 == 1)
      {
        v133 = sub_10004D7F0();
        v135 = v50;
      }

      else
      {
        v133 = 0;
        v135 = 0xE000000000000000;
      }

      goto LABEL_14;
    }
  }

  v25 = sub_10004D820();
  if (v25[2] != 1)
  {
    v26 = v0[252];
    v134 = v0[251];
    v136 = v0[253];
    v27 = v0[249];
    v127 = v0[248];
    v130 = v0[250];
    v28 = v0[246];
    v121 = v0[245];
    v124 = v0[247];
    v118 = v0[237];
    v115 = v0[231];
    v29 = v0[230];
    v30 = v0[183];
    v31 = v0[182];
    v32 = v0[181];

    *v30 = 0xD00000000000002ELL;
    v30[1] = 0x80000001000519B0;
    (*(v31 + 104))(v30, enum case for GATError.notImplemented(_:), v32);
    sub_10004D5C0();
    (*(v31 + 8))(v30, v32);
    swift_willThrow();

    sub_100007BC0(v29, &qword_100061488, &unk_100050D70);
    sub_100007BC0(v115, &qword_100061488, &unk_100050D70);
    sub_100007BC0(v118, &unk_100061490, &qword_10004F630);
    (*(v28 + 8))(v124, v121);
    (*(v27 + 8))(v130, v127);
    (*(v26 + 8))(v136, v134);
    v137 = v0[293];
    v33 = v0[291];
    v34 = v0[290];
    v35 = v0[289];
    v36 = v0[288];
    v37 = v0[287];
    v38 = [objc_allocWithZone(SDRDiagnosticReporter) init];
    type metadata accessor for AutoBugCaptureHelper();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = 0;
    v40 = sub_10004D0F0();
    sub_10004AAE4(2, v40);

    swift_willThrow();
    (*(v36 + 8))(v35, v37);
    (*(v33 + 8))(v137, v34);
    v41 = v0[341];
    v42 = v0[332];
    v43 = v0[331];
    v44 = v0[330];
    v45 = v0[275];
    sub_100007BC0(v0[295], &qword_1000614D0, &unk_10004F670);
    sub_100014FD4(v45);
    sub_10002C27C(v41);
    swift_unknownObjectRelease();
    (*(v43 + 8))(v42, v44);

    v46 = v0[1];
    goto LABEL_21;
  }

  v133 = v25[4];
  v135 = v25[5];

LABEL_14:
  v51 = v0[224];
  v52 = v0[178];
  v53 = v0[177];
  sub_10001564C(v0[231], v51, &qword_100061488, &unk_100050D70);
  v54 = *(v52 + 48);
  if (v54(v51, 1, v53) == 1)
  {
    v139 = v0[295];
    v128 = v0[290];
    v131 = v0[293];
    v122 = v0[289];
    v125 = v0[291];
    v116 = v0[288];
    v119 = v0[287];
    v55 = v0[275];
    v56 = v0[272];
    v57 = v0[271];
    v58 = v0[261];
    v59 = v0[259];
    v60 = v0[256];
    v91 = v0[255];
    v111 = v0[251];
    v113 = v0[253];
    v107 = v0[250];
    v109 = v0[252];
    v103 = v0[249];
    v105 = v0[248];
    v61 = v0[246];
    v99 = v0[245];
    v101 = v0[247];
    v97 = v0[237];
    v93 = v0[231];
    v89 = v0[230];
    sub_100007BC0(v0[224], &qword_100061488, &unk_100050D70);
    sub_100014EBC(v55, v58);
    (*(v56 + 56))(v58, 0, 1, v57);
    v62 = v55;
    sub_10002D678(v133, v135, v55, v59);

    sub_100014F20();
    sub_10004CBD0();

    (*(v60 + 8))(v59, v91);
    sub_100007BC0(v58, &qword_1000614A0, &unk_10004F640);
    sub_100007BC0(v89, &qword_100061488, &unk_100050D70);
    sub_100007BC0(v93, &qword_100061488, &unk_100050D70);
    sub_100007BC0(v97, &unk_100061490, &qword_10004F630);
    (*(v61 + 8))(v101, v99);
    (*(v103 + 8))(v107, v105);
    (*(v109 + 8))(v113, v111);
    (*(v116 + 8))(v122, v119);
    (*(v125 + 8))(v131, v128);
  }

  else
  {
    v63 = v0[272];
    v64 = v0[256];
    v65 = v0[230];
    v66 = v0[223];
    v67 = v0[178];
    v68 = v0[177];
    v86 = *(v67 + 32);
    v86(v0[180], v0[224], v68);
    sub_10001564C(v65, v66, &qword_100061488, &unk_100050D70);
    v69 = v54(v66, 1, v68);
    v70 = (v63 + 56);
    v92 = (v64 + 8);
    v96 = (v67 + 8);
    v139 = v0[295];
    v129 = v0[293];
    v132 = v0[291];
    v123 = v0[288];
    v126 = v0[290];
    v117 = v0[287];
    v120 = v0[289];
    v71 = v0[275];
    v72 = v0[271];
    v73 = v0[261];
    v74 = v0[259];
    v87 = v0[255];
    v112 = v0[253];
    v114 = v0[252];
    v108 = v0[249];
    v110 = v0[251];
    v104 = v0[248];
    v106 = v0[250];
    v100 = v0[247];
    v102 = v0[246];
    v98 = v0[245];
    v95 = v0[237];
    v94 = v0[231];
    v90 = v0[230];
    v75 = v0[223];
    v88 = v0[180];
    if (v69 == 1)
    {
      v76 = v0[177];
      sub_100007BC0(v75, &qword_100061488, &unk_100050D70);
      sub_100014EBC(v71, v73);
      v77 = v72;
      v62 = v71;
      (*v70)(v73, 0, 1, v77);
      sub_10002D678(v133, v135, v71, v74);

      sub_100014F20();
      sub_10004CBF0();

      (*v92)(v74, v87);
      sub_100007BC0(v73, &qword_1000614A0, &unk_10004F640);
      (*v96)(v88, v76);
    }

    else
    {
      v78 = v0[179];
      v79 = v0[177];
      v86(v78, v75, v79);
      sub_100014EBC(v71, v73);
      v80 = v72;
      v62 = v71;
      (*v70)(v73, 0, 1, v80);
      sub_10002D678(v133, v135, v71, v74);

      sub_100014F20();
      sub_10004CBE0();

      (*v92)(v74, v87);
      sub_100007BC0(v73, &qword_1000614A0, &unk_10004F640);
      v81 = *v96;
      (*v96)(v78, v79);
      v81(v88, v79);
    }

    sub_100007BC0(v90, &qword_100061488, &unk_100050D70);
    sub_100007BC0(v94, &qword_100061488, &unk_100050D70);
    sub_100007BC0(v95, &unk_100061490, &qword_10004F630);
    (*(v102 + 8))(v100, v98);
    (*(v108 + 8))(v106, v104);
    (*(v114 + 8))(v112, v110);
    (*(v123 + 8))(v120, v117);
    (*(v132 + 8))(v129, v126);
  }

  sub_100007BC0(v139, &qword_1000614D0, &unk_10004F670);
  sub_100014FD4(v62);
  v82 = v0[332];
  v83 = v0[331];
  v84 = v0[330];
  sub_10002C27C(v0[341]);
  swift_unknownObjectRelease();
  (*(v83 + 8))(v82, v84);

  v46 = v0[1];
LABEL_21:

  return v46();
}

uint64_t sub_10002ACDC()
{
  v1 = v0[293];
  v2 = v0[291];
  v3 = v0[290];
  v4 = v0[289];
  v5 = v0[288];
  v6 = v0[287];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[341];
  v8 = v0[332];
  v9 = v0[331];
  v10 = v0[330];
  v11 = v0[275];
  sub_100007BC0(v0[295], &qword_1000614D0, &unk_10004F670);
  sub_100014FD4(v11);
  sub_10002C27C(v7);
  swift_unknownObjectRelease();
  (*(v9 + 8))(v8, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10002B34C()
{
  v1 = v0[253];
  v2 = v0[252];
  v3 = v0[251];
  v4 = v0[250];
  v5 = v0[249];
  v6 = v0[248];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v22 = v0[293];
  v7 = v0[291];
  v8 = v0[290];
  v9 = v0[289];
  v10 = v0[288];
  v11 = v0[287];
  v12 = [objc_allocWithZone(SDRDiagnosticReporter) init];
  type metadata accessor for AutoBugCaptureHelper();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = 0;
  v14 = sub_10004D0F0();
  sub_10004AAE4(2, v14);

  swift_willThrow();
  (*(v10 + 8))(v9, v11);
  (*(v7 + 8))(v22, v8);
  v15 = v0[341];
  v16 = v0[332];
  v17 = v0[331];
  v18 = v0[330];
  v19 = v0[275];
  sub_100007BC0(v0[295], &qword_1000614D0, &unk_10004F670);
  sub_100014FD4(v19);
  sub_10002C27C(v15);
  swift_unknownObjectRelease();
  (*(v17 + 8))(v16, v18);

  v20 = v0[1];

  return v20();
}

uint64_t sub_10002BA94()
{
  v1 = v0[252];
  v29 = v0[251];
  v31 = v0[253];
  v2 = v0[249];
  v27 = v0[248];
  v28 = v0[250];
  v3 = v0[246];
  v25 = v0[245];
  v26 = v0[247];
  v23 = v0[231];
  v24 = v0[237];
  v4 = v0[230];
  v5 = v0[198];
  v6 = v0[197];
  v7 = v0[196];

  (*(v6 + 8))(v5, v7);
  sub_100007BC0(v4, &qword_100061488, &unk_100050D70);
  sub_100007BC0(v23, &qword_100061488, &unk_100050D70);
  sub_100007BC0(v24, &unk_100061490, &qword_10004F630);
  (*(v3 + 8))(v26, v25);
  (*(v2 + 8))(v28, v27);
  (*(v1 + 8))(v31, v29);
  v30 = v0[293];
  v8 = v0[291];
  v9 = v0[290];
  v10 = v0[289];
  v11 = v0[288];
  v12 = v0[287];
  v13 = [objc_allocWithZone(SDRDiagnosticReporter) init];
  type metadata accessor for AutoBugCaptureHelper();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = 0;
  v15 = sub_10004D0F0();
  sub_10004AAE4(2, v15);

  swift_willThrow();
  (*(v11 + 8))(v10, v12);
  (*(v8 + 8))(v30, v9);
  v16 = v0[341];
  v17 = v0[332];
  v18 = v0[331];
  v19 = v0[330];
  v20 = v0[275];
  sub_100007BC0(v0[295], &qword_1000614D0, &unk_10004F670);
  sub_100014FD4(v20);
  sub_10002C27C(v16);
  swift_unknownObjectRelease();
  (*(v18 + 8))(v17, v19);

  v21 = v0[1];

  return v21();
}

uint64_t sub_10002C27C(uint64_t a1)
{
  v2 = sub_10004DC80();
  v16 = *(v2 - 8);
  v17 = v2;
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000026D8(&unk_100061550, &unk_1000501C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  sub_10004D700();
  sub_10004D6F0();
  sub_10004DB00();
  v8 = sub_10004DC00();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_10004D6C0();

  sub_100007BC0(v7, &unk_100061550, &unk_1000501C0);
  sub_10004D6F0();
  sub_10004D6E0();

  sub_10004DBC0();
  sub_10004DBB0();
  sub_10004DB90();

  sub_10004DC60();
  swift_unknownObjectRetain();
  v9 = sub_10004DC70();
  v10 = sub_10004DEA0();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, &v19);
    *(v11 + 12) = 2080;
    v18 = a1;
    swift_unknownObjectRetain();
    sub_1000026D8(&unk_100061EB0, &qword_1000507D0);
    v12 = sub_10004DD70();
    v14 = sub_10001E340(v12, v13, &v19);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "(Self.self).%s disposing %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v16 + 8))(v4, v17);
}

uint64_t sub_10002C5B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 112) = a3;
  *(v4 + 16) = a1;
  v5 = sub_10004CB90();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  sub_10004DE50();
  *(v4 + 64) = sub_10004DE40();
  v7 = sub_10004DE20();
  *(v4 + 72) = v7;
  *(v4 + 80) = v6;

  return _swift_task_switch(sub_10002C6AC, v7, v6);
}

uint64_t sub_10002C6AC()
{
  v1 = *(v0 + 16);
  v3 = v1[3];
  v2 = v1[4];
  v4 = sub_100014E78(v1, v3);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  v6 = sub_1000214BC();
  *(v0 + 96) = v6;
  *v5 = v0;
  v5[1] = sub_10002C78C;
  v7 = *(v0 + 112);
  v8 = *(v0 + 24);

  return AppIntent.requestConfirmation<A>(result:confirmationActionName:showPrompt:)(v4, v8, v7, &type metadata for GenerateKnowledgeResponseIntent, v3, v6, v2);
}

uint64_t sub_10002C78C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_10002C9CC;
  }

  else
  {
    v5 = sub_10002C8C8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10002C8C8()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  sub_10004DBC0();
  sub_10004DBB0();
  sub_10004CA70();
  sub_10004CB80();
  (*(v3 + 8))(v1, v2);
  sub_10004DB80();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002C9CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002CA38(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10004CB90();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_10004DE50();
  v1[6] = sub_10004DE40();
  v4 = sub_10004DE20();
  v1[7] = v4;
  v1[8] = v3;

  return _swift_task_switch(sub_10002CB2C, v4, v3);
}

uint64_t sub_10002CB2C()
{
  sub_10004DB10();
  v1 = sub_10004DD00();

  sub_10004CCC0();
  v2 = [objc_opt_self() montaraEnablementWithBundleIdentifier:v1 source:1 isExplicitRequest:*(v0 + 104) & 1];
  *(v0 + 72) = v2;

  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v4 = sub_1000214BC();
  *(v0 + 88) = v4;
  *v3 = v0;
  v3[1] = sub_10002CC48;

  return AppIntent.requestConfirmation(systemStyle:)(v2, &type metadata for GenerateKnowledgeResponseIntent, v4);
}

uint64_t sub_10002CC48()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_100013840;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_10002CD64;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10002CD64()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  sub_10004DBC0();
  sub_10004DBB0();
  sub_10004CA70();
  sub_10004CB80();
  (*(v3 + 8))(v1, v2);
  sub_10004DB80();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002CE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = sub_10004CB90();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v7 = sub_10004DA90();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  sub_1000026D8(&unk_100061B20, &qword_100050D50);
  v5[25] = swift_task_alloc();
  sub_10004DE50();
  v5[26] = sub_10004DE40();
  v9 = sub_10004DE20();
  v5[27] = v9;
  v5[28] = v8;

  return _swift_task_switch(sub_10002CFF8, v9, v8);
}

uint64_t sub_10002CFF8()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v0[29] = sub_10004CCE0();
  sub_10004D8E0();
  sub_10004D8D0();
  (*(v4 + 104))(v2, enum case for CatId.acmeAsks(_:), v3);
  sub_1000026D8(&unk_100061540, &unk_1000507C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004F380;
  *(inited + 32) = 0x6E6F697473657571;
  *(inited + 40) = 0xE800000000000000;
  v6 = sub_10004DD90();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  sub_100045F74(inited);
  swift_setDeallocating();
  sub_100007BC0(inited + 32, &unk_100061E40, qword_10004F6E0);
  sub_10004D8B0();

  (*(v4 + 8))(v2, v3);
  sub_10004CBA0();
  v8 = sub_10004CBB0();
  (*(*(v8 - 8) + 56))(v1, 0, 1, v8);
  v9 = swift_task_alloc();
  v0[30] = v9;
  *v9 = v0;
  v9[1] = sub_10002D240;
  v10 = v0[25];

  return IntentParameter.requestValue(_:)(v0 + 12, v10);
}

uint64_t sub_10002D240()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  *(*v1 + 248) = v0;

  sub_100007BC0(v3, &unk_100061B20, &qword_100050D50);

  v4 = *(v2 + 224);
  v5 = *(v2 + 216);
  if (v0)
  {
    v6 = sub_100013F50;
  }

  else
  {
    v6 = sub_10002D3CC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10002D3CC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  v4 = v0[13];
  v7 = v0[12];
  sub_10004DBC0();
  sub_10004DBB0();
  sub_1000214BC();
  sub_10004CA70();
  sub_10004CB80();
  (*(v2 + 8))(v1, v3);
  sub_10004DB80();

  v5 = v0[1];

  return v5(v7, v4);
}

void sub_10002D500()
{
  sub_10002E5DC();
  v0 = sub_10004CFD0();
  v1 = sub_10004D650();
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    [v0 setTotalUnitCount:v1 - 1];

    v2 = sub_10004CFD0();
    [v2 setTotalUnitCount:sub_10004D650()];
  }
}

void sub_10002D5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10002E5DC();
  v4 = sub_10004CFD0();
  v5 = sub_10004DD00();
  [v4 setLocalizedDescription:v5];

  v6 = sub_10004CFD0();
  [v6 setCompletedUnitCount:a1];
}

uint64_t sub_10002D678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v29 = a4;
  v31 = a1;
  v32 = a2;
  v30 = sub_10004DA90();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004D240();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004CEF0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000026D8(&qword_1000614D8, &unk_100050DA0);
  __chkstk_darwin(v14 - 8);
  v16 = &v25 - v15;
  sub_1000214BC();
  sub_10004CA80();
  sub_10004CED0();
  (*(v11 + 8))(v13, v10);
  v17 = sub_10004CEC0();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_100007BC0(v16, &qword_1000614D8, &unk_100050DA0);
LABEL_5:
    sub_10004D230();
    v26 = sub_10004D220();
    (*(v7 + 8))(v9, v6);

    goto LABEL_6;
  }

  v19 = sub_10004CE90();
  v21 = v20;
  (*(v18 + 8))(v16, v17);
  if (!v21)
  {
    goto LABEL_5;
  }

  v26 = v19;
LABEL_6:
  v25 = sub_10004D8A0();
  v22 = v27;
  v23 = v30;
  (*(v4 + 104))(v27, enum case for CatId.generateKnowledgeResponse(_:), v30);
  type metadata accessor for GenerativeResponseEntity(0);
  sub_10004CC20();
  sub_10004CC20();
  sub_10004CC20();
  sub_10004D890();

  return (*(v4 + 8))(v22, v23);
}

unint64_t sub_10002DAF8()
{
  result = qword_100061AF0;
  if (!qword_100061AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061AF0);
  }

  return result;
}

unint64_t sub_10002DB50()
{
  result = qword_100061AF8;
  if (!qword_100061AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061AF8);
  }

  return result;
}

uint64_t sub_10002DBF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100061028 != -1)
  {
    swift_once();
  }

  v2 = sub_10004D130();
  v3 = sub_100003774(v2, qword_1000624D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10002DC9C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000026D8(&unk_100061B60, &qword_1000507D8);
  __chkstk_darwin(v2 - 8);
  sub_10004CF90();
  return sub_10004CF80();
}

uint64_t sub_10002DD74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000026D8(&unk_100061B30, "zS");
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10004D130();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  sub_10004D110();
  sub_10004D110();
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_10004CE40();
  v7 = sub_10004CE30();
  return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
}

uint64_t sub_10002DF24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002414;

  return sub_100022568(a1);
}

uint64_t sub_10002DFC0(uint64_t a1)
{
  v2 = sub_10002E234();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10002E00C(uint64_t a1)
{
  v2 = sub_1000214BC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_10002E048(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_10002E06C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002E0B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10002E234()
{
  result = qword_100061B10;
  if (!qword_100061B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061B10);
  }

  return result;
}

uint64_t sub_10002E2F4(uint64_t a1, uint64_t a2, char a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_100002414;

  return sub_10002C5B0(a1, a2, a3, v3 + 16);
}

uint64_t sub_10002E3A4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001578C;

  return sub_10002CA38(v0 + 16);
}

uint64_t sub_10002E438()
{
  sub_100007B00((v0 + 16));
  sub_100007B00((v0 + 56));

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_10002E4A8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 144);
  v7 = *(v2 + 152);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100015400;

  return sub_10002CE68(a1, a2, v2 + 16, v6, v7);
}

uint64_t sub_10002E56C()
{
  sub_100007B00((v0 + 16));
  sub_100007B00((v0 + 56));

  return _swift_deallocObject(v0, 144, 7);
}

unint64_t sub_10002E5DC()
{
  result = qword_100061B58;
  if (!qword_100061B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061B58);
  }

  return result;
}

uint64_t sub_10002E63C(void *a1)
{
  v2 = v1;
  v4 = sub_10004DC80();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v32 - v10;
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  *(v2 + 16) = 0;
  sub_10004DC10();
  v14 = sub_10004DC70();
  v15 = sub_10004DEA0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Acquiring RBS assertion.", v16, 2u);
  }

  v17 = *(v5 + 8);
  v17(v13, v4);
  v35 = 0;
  if ([a1 acquireWithError:&v35])
  {
    v18 = v35;
  }

  else
  {
    v19 = v35;
    sub_10004D100();

    swift_willThrow();
    sub_10004DC10();
    swift_errorRetain();
    v20 = sub_10004DC70();
    v21 = sub_10004DEB0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v33 = v4;
      v23 = v22;
      v24 = swift_slowAlloc();
      v34 = a1;
      v25 = v24;
      *v23 = 138412290;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed acquiring RBS assertion: %@", v23, 0xCu);
      sub_10002EED4(v25);
      a1 = v34;

      v4 = v33;
    }

    else
    {
    }

    v17(v8, v4);
  }

  sub_10004DC10();
  v27 = sub_10004DC70();
  v28 = sub_10004DE90();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "RBS assertion acquired.", v29, 2u);
  }

  v17(v11, v4);
  v30 = *(v2 + 16);
  *(v2 + 16) = a1;

  return v2;
}

uint64_t sub_10002E9F4()
{
  sub_10002EA54();

  return swift_deallocClassInstance();
}

void sub_10002EA54()
{
  v1 = v0;
  v2 = sub_10004DC80();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = v6;
    sub_10004DC10();
    v8 = sub_10004DC70();
    v9 = sub_10004DE90();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Invalidating RBS assertion.", v10, 2u);
    }

    (*(v3 + 8))(v5, v2);
    [v7 invalidate];

    v11 = *(v1 + 16);
    *(v1 + 16) = 0;
  }
}

uint64_t sub_10002EBC4()
{
  v0 = sub_10004DC80();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004DC10();
  v4 = sub_10004DC70();
  v5 = sub_10004DEA0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Creating RBS assertion.", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  v7 = [objc_opt_self() currentProcess];
  v8 = sub_10004DD00();
  v9 = sub_10004DD00();
  v10 = [objc_opt_self() attributeWithDomain:v8 name:v9];

  sub_1000026D8(&qword_100061C30, &qword_100050838);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000507E0;
  *(v11 + 32) = v10;
  v12 = objc_allocWithZone(RBSAssertion);
  v13 = v7;
  v14 = v10;
  v15 = sub_10004DD00();
  sub_10002EE88();
  isa = sub_10004DE00().super.isa;

  v17 = [v12 initWithExplanation:v15 target:v13 attributes:isa];

  type metadata accessor for RunningBoardAssertion();
  v18 = swift_allocObject();
  sub_10002E63C(v17);

  return v18;
}

unint64_t sub_10002EE88()
{
  result = qword_100061C38;
  if (!qword_100061C38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100061C38);
  }

  return result;
}

uint64_t sub_10002EED4(uint64_t a1)
{
  v2 = sub_1000026D8(&qword_100061DC0, &unk_100050840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for GeneratedContent(uint64_t a1)
{
  result = qword_100061CE0;
  if (!qword_100061CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002EFEC()
{
  v0 = sub_1000026D8(&qword_100061C58, &qword_1000508E8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - v2;
  type metadata accessor for GeneratedContent(0);
  v4 = sub_10002F6D8();
  sub_10004D050();
  sub_10002F72C();
  sub_10004D050();
  sub_10002F628(&qword_100061C40, type metadata accessor for GeneratedContent, &unk_100050850);
  sub_10004D070();
  v6[0] = v4;
  v6[1] = &type metadata for GeneratedContent.GeneratedTextResolver;
  sub_10004D060();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10002F198(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10002F1B8, 0, 0);
}

uint64_t sub_10002F1B8()
{
  v1 = v0[2];
  sub_10002FABC(v0[3], v1, type metadata accessor for GeneratedText);
  v2 = type metadata accessor for GeneratedContent(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_10002F2F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10002F314, 0, 0);
}

uint64_t sub_10002F314()
{
  v1 = v0[2];
  sub_10002FABC(v0[3], v1, type metadata accessor for GeneratedImage);
  v2 = type metadata accessor for GeneratedContent(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_10002F3E4()
{
  sub_1000026D8(&qword_100061C50, &qword_1000508E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10004EFA0;
  v1 = type metadata accessor for GeneratedText(0);
  v2 = sub_10002F628(&qword_100061C48, type metadata accessor for GeneratedText, &unk_1000515D8);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for GeneratedImage(0);
  v4 = sub_10002F628(&qword_1000610B8, type metadata accessor for GeneratedImage, &unk_10004E8D0);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  return v0;
}

uint64_t sub_10002F4BC@<X0>(uint64_t *a2@<X8>)
{
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002FABC(v4, v6, type metadata accessor for GeneratedContent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a2[3] = type metadata accessor for GeneratedImage(0);
    v7 = sub_10002F628(&qword_1000610B8, type metadata accessor for GeneratedImage, &unk_10004E8D0);
    v8 = type metadata accessor for GeneratedImage;
  }

  else
  {
    a2[3] = type metadata accessor for GeneratedText(0);
    v7 = sub_10002F628(&qword_100061C48, type metadata accessor for GeneratedText, &unk_1000515D8);
    v8 = type metadata accessor for GeneratedText;
  }

  v9 = v8;
  a2[4] = v7;
  v10 = sub_100014CF4(a2);
  return sub_10002F670(v6, v10, v9);
}

uint64_t sub_10002F628(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002F670(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10002F6D8()
{
  result = qword_100061C60;
  if (!qword_100061C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061C60);
  }

  return result;
}

unint64_t sub_10002F72C()
{
  result = qword_100061C68;
  if (!qword_100061C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061C68);
  }

  return result;
}

uint64_t sub_10002F7F0(uint64_t a1)
{
  result = type metadata accessor for GeneratedText(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for GeneratedImage(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10002F868()
{
  result = qword_100061D18;
  if (!qword_100061D18)
  {
    sub_100002AEC(&qword_100061D20, &qword_100050968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061D18);
  }

  return result;
}

unint64_t sub_10002F8D0()
{
  result = qword_100061D28;
  if (!qword_100061D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061D28);
  }

  return result;
}

unint64_t sub_10002F928()
{
  result = qword_100061D30;
  if (!qword_100061D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061D30);
  }

  return result;
}

unint64_t sub_10002F980()
{
  result = qword_100061D38;
  if (!qword_100061D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061D38);
  }

  return result;
}

unint64_t sub_10002FA20()
{
  result = qword_100061D40;
  if (!qword_100061D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061D40);
  }

  return result;
}

uint64_t sub_10002FABC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10002FB38()
{
  result = qword_100061D58;
  if (!qword_100061D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061D58);
  }

  return result;
}

uint64_t sub_10002FB8C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a2;
  v98 = a3;
  v111 = a4;
  v5 = sub_10004D130();
  __chkstk_darwin(v5 - 8);
  v83 = &v79[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10004CE60();
  __chkstk_darwin(v7 - 8);
  v91 = &v79[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = sub_10004D350();
  v87 = *(v84 - 8);
  __chkstk_darwin(v84);
  v86 = &v79[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v90 = sub_10004CFB0();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v79[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v103 = sub_1000026D8(&qword_1000614A0, &unk_10004F640);
  v11 = __chkstk_darwin(v103);
  v85 = &v79[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v93 = &v79[-v13];
  v14 = sub_10004CBB0();
  v15 = *(v14 - 8);
  v104 = v14;
  v105 = v15;
  v16 = __chkstk_darwin(v14);
  v82 = &v79[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v99 = &v79[-v18];
  v19 = sub_10004D5D0();
  v95 = *(v19 - 8);
  v96 = v19;
  __chkstk_darwin(v19);
  v94 = &v79[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_10004DA90();
  v108 = *(v21 - 8);
  v109 = v21;
  __chkstk_darwin(v21);
  v100 = &v79[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = type metadata accessor for GenerativeResponseEntity(0);
  v101 = *(v23 - 8);
  v102 = v23;
  __chkstk_darwin(v23);
  v25 = &v79[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_10004DC80();
  v110 = *(v26 - 8);
  v27 = __chkstk_darwin(v26);
  v81 = &v79[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = __chkstk_darwin(v27);
  v31 = &v79[-v30];
  __chkstk_darwin(v29);
  v33 = &v79[-v32];
  sub_100014E78((v4 + 40), *(v4 + 64));
  v34 = sub_10004D4C0();
  v35 = *(v4 + 64);
  v106 = v4;
  sub_100014E78((v4 + 40), v35);
  v36 = sub_10004D4B0();
  v107 = v34;
  if (v34 & 1) != 0 || (v36)
  {
    v80 = v36;
    v92 = v25;
    sub_10004DC50();
    v42 = sub_10004DC70();
    v43 = sub_10004DEA0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v112[0] = swift_slowAlloc();
      *v44 = 136315650;
      *(v44 + 4) = sub_10001E340(0xD000000000000019, 0x80000001000540C0, v112);
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_10001E340(0xD00000000000002DLL, 0x8000000100053F90, v112);
      *(v44 + 22) = 2082;
      if (v107)
      {
        v45 = 0x616C696176616E75;
      }

      else
      {
        v45 = 0x7463697274736572;
      }

      if (v107)
      {
        v46 = 0xEB00000000656C62;
      }

      else
      {
        v46 = 0xEA00000000006465;
      }

      v47 = sub_10001E340(v45, v46, v112);

      *(v44 + 24) = v47;
      _os_log_impl(&_mh_execute_header, v42, v43, "%s.%s partner is %{public}s in this region", v44, 0x20u);
      swift_arrayDestroy();
    }

    v48 = *(v110 + 8);
    v48(v33, v26);
    v49 = v100;
    v50 = v92;
    sub_1000157A0(v92);
    v51 = sub_100014708();
    if (v51 == 2 || (v51 & 1) != 0 || (v107 & 1) == 0 && (sub_10004DBF0(), (sub_10004DBD0() & 1) == 0))
    {
      v52 = sub_100014708();
      v53 = &enum case for CatId.explicitRegionUnavailableResponse(_:);
      if ((v52 & v80 & 1) == 0)
      {
        v53 = &enum case for CatId.implicitRegionUnavailableResponse(_:);
      }

      (*(v108 + 104))(v49, *v53, v109);
      sub_10004DC50();
      v54 = sub_10004DC70();
      v55 = sub_10004DEA0();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v112[0] = swift_slowAlloc();
        *v56 = 136315394;
        *(v56 + 4) = sub_10001E340(0xD000000000000019, 0x80000001000540C0, v112);
        *(v56 + 12) = 2080;
        *(v56 + 14) = sub_10001E340(0xD00000000000002DLL, 0x8000000100053F90, v112);
        _os_log_impl(&_mh_execute_header, v54, v55, "%s.%s returning region unavailability dialog", v56, 0x16u);
        swift_arrayDestroy();
      }

      v48(v31, v26);
      sub_10004DBF0();
      sub_10004DBE0();
      v57 = v94;
      v58 = v95;
      v59 = v96;
      (*(v95 + 104))(v94, enum case for GATError.regionUnavailable(_:), v96);
      sub_10004D5C0();

      (*(v58 + 8))(v57, v59);
      sub_10004D8A0();
      v60 = v99;
      sub_10004D880();
      v61 = (v101 + 56);
      if ((v107 & 1) == 0)
      {
        v64 = v85;
        sub_100014EBC(v50, v85);
        (*v61)(v64, 0, 1, v102);
        sub_1000080DC();

        v65 = v86;
        sub_10004D3B0();
        v66 = v87;
        v67 = v84;
        (*(v87 + 104))(v65, enum case for GenerativeResultModels.GenerativeSearchWebButtonSnippet(_:), v84);
        sub_100046A14(&unk_100061DE0, &type metadata accessor for GenerativeResultModels, &protocol conformance descriptor for GenerativeResultModels);
        sub_10004D2C0();
        (*(v66 + 8))(v65, v67);
        sub_10004D340();
        sub_10004CE50();
        v68 = v88;
        sub_10004CFA0();

        sub_100014F20();
        v63 = v111;
        sub_10004CBF0();
        (*(v89 + 8))(v68, v90);
        sub_100007BC0(v64, &qword_1000614A0, &unk_10004F640);
        (*(v105 + 8))(v60, v104);
        (*(v108 + 8))(v49, v109);
        v69 = v92;
LABEL_29:
        sub_100014FD4(v69);
        v78 = sub_1000026D8(&qword_100061418, &unk_100050D40);
        return (*(*(v78 - 8) + 56))(v63, 0, 1, v78);
      }

      v62 = v93;
      sub_100014EBC(v50, v93);
      (*v61)(v62, 0, 1, v102);
      sub_100014F20();
      v63 = v111;
      sub_10004CBD0();
      sub_100007BC0(v62, &qword_1000614A0, &unk_10004F640);
      (*(v105 + 8))(v60, v104);
      (*(v108 + 8))(v49, v109);
    }

    else
    {
      v70 = v81;
      sub_10004DC50();
      v71 = sub_10004DC70();
      v72 = sub_10004DEA0();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v112[0] = swift_slowAlloc();
        *v73 = 136315394;
        *(v73 + 4) = sub_10001E340(0xD000000000000019, 0x80000001000540C0, v112);
        *(v73 + 12) = 2080;
        *(v73 + 14) = sub_10001E340(0xD00000000000002DLL, 0x8000000100053F90, v112);
        _os_log_impl(&_mh_execute_header, v71, v72, "%s.%s implicit request and region unavailability dialog already shown or partner unavailable, falling back to SiriX", v73, 0x16u);
        swift_arrayDestroy();
      }

      v48(v70, v26);
      v74 = v102;
      LOBYTE(v112[0]) = 1;
      sub_10004CC30();
      v112[0] = sub_1000080DC();
      v112[1] = v75;
      sub_10004CC30();
      v76 = v93;
      sub_100014EBC(v50, v93);
      (*(v101 + 56))(v76, 0, 1, v74);
      sub_10004D110();
      v77 = v82;
      sub_10004CBC0();
      sub_100014F20();
      v63 = v111;
      sub_10004CBD0();
      (*(v105 + 8))(v77, v104);
      sub_100007BC0(v76, &qword_1000614A0, &unk_10004F640);
    }

    v69 = v50;
    goto LABEL_29;
  }

  sub_10004DBF0();
  sub_10004DBE0();
  v37 = sub_1000026D8(&qword_100061418, &unk_100050D40);
  v38 = *(*(v37 - 8) + 56);
  v39 = v37;
  v40 = v111;

  return v38(v40, 1, 1, v39);
}

uint64_t sub_100030B8C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a2;
  v98 = a3;
  v111 = a4;
  v5 = sub_10004D130();
  __chkstk_darwin(v5 - 8);
  v83 = &v79[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10004CE60();
  __chkstk_darwin(v7 - 8);
  v91 = &v79[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = sub_10004D350();
  v87 = *(v84 - 8);
  __chkstk_darwin(v84);
  v86 = &v79[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v90 = sub_10004CFB0();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v79[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v103 = sub_1000026D8(&qword_1000614A0, &unk_10004F640);
  v11 = __chkstk_darwin(v103);
  v85 = &v79[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v93 = &v79[-v13];
  v14 = sub_10004CBB0();
  v15 = *(v14 - 8);
  v104 = v14;
  v105 = v15;
  v16 = __chkstk_darwin(v14);
  v82 = &v79[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v99 = &v79[-v18];
  v19 = sub_10004D5D0();
  v95 = *(v19 - 8);
  v96 = v19;
  __chkstk_darwin(v19);
  v94 = &v79[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_10004DA90();
  v108 = *(v21 - 8);
  v109 = v21;
  __chkstk_darwin(v21);
  v100 = &v79[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = type metadata accessor for GenerativeResponseEntity(0);
  v101 = *(v23 - 8);
  v102 = v23;
  __chkstk_darwin(v23);
  v25 = &v79[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_10004DC80();
  v110 = *(v26 - 8);
  v27 = __chkstk_darwin(v26);
  v81 = &v79[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = __chkstk_darwin(v27);
  v31 = &v79[-v30];
  __chkstk_darwin(v29);
  v33 = &v79[-v32];
  sub_100014E78((v4 + 40), *(v4 + 64));
  v34 = sub_10004D4C0();
  v35 = *(v4 + 64);
  v106 = v4;
  sub_100014E78((v4 + 40), v35);
  v36 = sub_10004D4B0();
  v107 = v34;
  if (v34 & 1) != 0 || (v36)
  {
    v80 = v36;
    v92 = v25;
    sub_10004DC50();
    v42 = sub_10004DC70();
    v43 = sub_10004DEA0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v112[0] = swift_slowAlloc();
      *v44 = 136315650;
      *(v44 + 4) = sub_10001E340(0xD00000000000001FLL, 0x80000001000540A0, v112);
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_10001E340(0xD00000000000002DLL, 0x8000000100053F90, v112);
      *(v44 + 22) = 2082;
      if (v107)
      {
        v45 = 0x616C696176616E75;
      }

      else
      {
        v45 = 0x7463697274736572;
      }

      if (v107)
      {
        v46 = 0xEB00000000656C62;
      }

      else
      {
        v46 = 0xEA00000000006465;
      }

      v47 = sub_10001E340(v45, v46, v112);

      *(v44 + 24) = v47;
      _os_log_impl(&_mh_execute_header, v42, v43, "%s.%s partner is %{public}s in this region", v44, 0x20u);
      swift_arrayDestroy();
    }

    v48 = *(v110 + 8);
    v48(v33, v26);
    v49 = v100;
    v50 = v92;
    sub_1000157A0(v92);
    v51 = sub_10002DAC0();
    if (v51 == 2 || (v51 & 1) != 0 || (v107 & 1) == 0 && (sub_10004DBF0(), (sub_10004DBD0() & 1) == 0))
    {
      v52 = sub_10002DAC0();
      v53 = &enum case for CatId.explicitRegionUnavailableResponse(_:);
      if ((v52 & v80 & 1) == 0)
      {
        v53 = &enum case for CatId.implicitRegionUnavailableResponse(_:);
      }

      (*(v108 + 104))(v49, *v53, v109);
      sub_10004DC50();
      v54 = sub_10004DC70();
      v55 = sub_10004DEA0();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v112[0] = swift_slowAlloc();
        *v56 = 136315394;
        *(v56 + 4) = sub_10001E340(0xD00000000000001FLL, 0x80000001000540A0, v112);
        *(v56 + 12) = 2080;
        *(v56 + 14) = sub_10001E340(0xD00000000000002DLL, 0x8000000100053F90, v112);
        _os_log_impl(&_mh_execute_header, v54, v55, "%s.%s returning region unavailability dialog", v56, 0x16u);
        swift_arrayDestroy();
      }

      v48(v31, v26);
      sub_10004DBF0();
      sub_10004DBE0();
      v57 = v94;
      v58 = v95;
      v59 = v96;
      (*(v95 + 104))(v94, enum case for GATError.regionUnavailable(_:), v96);
      sub_10004D5C0();

      (*(v58 + 8))(v57, v59);
      sub_10004D8A0();
      v60 = v99;
      sub_10004D880();
      v61 = (v101 + 56);
      if ((v107 & 1) == 0)
      {
        v64 = v85;
        sub_100014EBC(v50, v85);
        (*v61)(v64, 0, 1, v102);
        sub_100022388();

        v65 = v86;
        sub_10004D3B0();
        v66 = v87;
        v67 = v84;
        (*(v87 + 104))(v65, enum case for GenerativeResultModels.GenerativeSearchWebButtonSnippet(_:), v84);
        sub_100046A14(&unk_100061DE0, &type metadata accessor for GenerativeResultModels, &protocol conformance descriptor for GenerativeResultModels);
        sub_10004D2C0();
        (*(v66 + 8))(v65, v67);
        sub_10004D340();
        sub_10004CE50();
        v68 = v88;
        sub_10004CFA0();

        sub_100014F20();
        v63 = v111;
        sub_10004CBF0();
        (*(v89 + 8))(v68, v90);
        sub_100007BC0(v64, &qword_1000614A0, &unk_10004F640);
        (*(v105 + 8))(v60, v104);
        (*(v108 + 8))(v49, v109);
        v69 = v92;
LABEL_29:
        sub_100014FD4(v69);
        v78 = sub_1000026D8(&qword_100061418, &unk_100050D40);
        return (*(*(v78 - 8) + 56))(v63, 0, 1, v78);
      }

      v62 = v93;
      sub_100014EBC(v50, v93);
      (*v61)(v62, 0, 1, v102);
      sub_100014F20();
      v63 = v111;
      sub_10004CBD0();
      sub_100007BC0(v62, &qword_1000614A0, &unk_10004F640);
      (*(v105 + 8))(v60, v104);
      (*(v108 + 8))(v49, v109);
    }

    else
    {
      v70 = v81;
      sub_10004DC50();
      v71 = sub_10004DC70();
      v72 = sub_10004DEA0();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v112[0] = swift_slowAlloc();
        *v73 = 136315394;
        *(v73 + 4) = sub_10001E340(0xD00000000000001FLL, 0x80000001000540A0, v112);
        *(v73 + 12) = 2080;
        *(v73 + 14) = sub_10001E340(0xD00000000000002DLL, 0x8000000100053F90, v112);
        _os_log_impl(&_mh_execute_header, v71, v72, "%s.%s implicit request and region unavailability dialog already shown or partner unavailable, falling back to SiriX", v73, 0x16u);
        swift_arrayDestroy();
      }

      v48(v70, v26);
      v74 = v102;
      LOBYTE(v112[0]) = 1;
      sub_10004CC30();
      v112[0] = sub_100022388();
      v112[1] = v75;
      sub_10004CC30();
      v76 = v93;
      sub_100014EBC(v50, v93);
      (*(v101 + 56))(v76, 0, 1, v74);
      sub_10004D110();
      v77 = v82;
      sub_10004CBC0();
      sub_100014F20();
      v63 = v111;
      sub_10004CBD0();
      (*(v105 + 8))(v77, v104);
      sub_100007BC0(v76, &qword_1000614A0, &unk_10004F640);
    }

    v69 = v50;
    goto LABEL_29;
  }

  sub_10004DBF0();
  sub_10004DBE0();
  v37 = sub_1000026D8(&qword_100061418, &unk_100050D40);
  v38 = *(*(v37 - 8) + 56);
  v39 = v37;
  v40 = v111;

  return v38(v40, 1, 1, v39);
}

uint64_t sub_100031B8C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v96 = a2;
  v97 = a3;
  v110 = a4;
  v5 = sub_10004D130();
  __chkstk_darwin(v5 - 8);
  v82 = &v78[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10004CE60();
  __chkstk_darwin(v7 - 8);
  v90 = &v78[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v83 = sub_10004D350();
  v86 = *(v83 - 8);
  __chkstk_darwin(v83);
  v85 = &v78[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = sub_10004CFB0();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v78[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v102 = sub_1000026D8(&qword_1000614A0, &unk_10004F640);
  v11 = __chkstk_darwin(v102);
  v84 = &v78[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v92 = &v78[-v13];
  v14 = sub_10004CBB0();
  v15 = *(v14 - 8);
  v103 = v14;
  v104 = v15;
  v16 = __chkstk_darwin(v14);
  v81 = &v78[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v98 = &v78[-v18];
  v19 = sub_10004D5D0();
  v94 = *(v19 - 8);
  v95 = v19;
  __chkstk_darwin(v19);
  v93 = &v78[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_10004DA90();
  v107 = *(v21 - 8);
  v108 = v21;
  __chkstk_darwin(v21);
  v99 = &v78[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = type metadata accessor for GenerativeResponseEntity(0);
  v100 = *(v23 - 8);
  v101 = v23;
  __chkstk_darwin(v23);
  v25 = &v78[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_10004DC80();
  v109 = *(v26 - 8);
  v27 = __chkstk_darwin(v26);
  v80 = &v78[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = __chkstk_darwin(v27);
  v31 = &v78[-v30];
  __chkstk_darwin(v29);
  v33 = &v78[-v32];
  sub_100014E78((v4 + 40), *(v4 + 64));
  v34 = sub_10004D4C0();
  v35 = *(v4 + 64);
  v105 = v4;
  sub_100014E78((v4 + 40), v35);
  v36 = sub_10004D4B0();
  v106 = v34;
  if (v34 & 1) != 0 || (v36)
  {
    v79 = v36;
    v91 = v25;
    sub_10004DC50();
    v42 = sub_10004DC70();
    v43 = sub_10004DEA0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v44 = 136315650;
      *(v44 + 4) = sub_10001E340(0xD000000000000022, 0x8000000100050CF0, &v111);
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_10001E340(0xD00000000000002DLL, 0x8000000100053F90, &v111);
      *(v44 + 22) = 2082;
      if (v106)
      {
        v45 = 0x616C696176616E75;
      }

      else
      {
        v45 = 0x7463697274736572;
      }

      if (v106)
      {
        v46 = 0xEB00000000656C62;
      }

      else
      {
        v46 = 0xEA00000000006465;
      }

      v47 = sub_10001E340(v45, v46, &v111);

      *(v44 + 24) = v47;
      _os_log_impl(&_mh_execute_header, v42, v43, "%s.%s partner is %{public}s in this region", v44, 0x20u);
      swift_arrayDestroy();
    }

    v48 = *(v109 + 8);
    v48(v33, v26);
    v49 = v99;
    v50 = v31;
    v51 = v91;
    sub_1000157A0(v91);
    sub_10004CCC0();
    if (v111 == 2 || (v111 & 1) != 0 || (v106 & 1) == 0 && (sub_10004DBF0(), (sub_10004DBD0() & 1) == 0))
    {
      sub_10004CCC0();
      if (v111 & v79)
      {
        v52 = &enum case for CatId.explicitRegionUnavailableResponse(_:);
      }

      else
      {
        v52 = &enum case for CatId.implicitRegionUnavailableResponse(_:);
      }

      (*(v107 + 104))(v49, *v52, v108);
      sub_10004DC50();
      v53 = sub_10004DC70();
      v54 = sub_10004DEA0();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *v55 = 136315394;
        *(v55 + 4) = sub_10001E340(0xD000000000000022, 0x8000000100050CF0, &v111);
        *(v55 + 12) = 2080;
        *(v55 + 14) = sub_10001E340(0xD00000000000002DLL, 0x8000000100053F90, &v111);
        _os_log_impl(&_mh_execute_header, v53, v54, "%s.%s returning region unavailability dialog", v55, 0x16u);
        swift_arrayDestroy();
      }

      v48(v50, v26);
      sub_10004DBF0();
      sub_10004DBE0();
      v56 = v93;
      v57 = v94;
      v58 = v95;
      (*(v94 + 104))(v93, enum case for GATError.regionUnavailable(_:), v95);
      sub_10004D5C0();

      (*(v57 + 8))(v56, v58);
      sub_10004D8A0();
      v59 = v98;
      sub_10004D880();
      v60 = (v100 + 56);
      if ((v106 & 1) == 0)
      {
        v63 = v51;
        v64 = v84;
        sub_100014EBC(v63, v84);
        (*v60)(v64, 0, 1, v101);
        sub_10004CCC0();

        v65 = v85;
        sub_10004D3B0();
        v66 = v86;
        v67 = v83;
        (*(v86 + 104))(v65, enum case for GenerativeResultModels.GenerativeSearchWebButtonSnippet(_:), v83);
        sub_100046A14(&unk_100061DE0, &type metadata accessor for GenerativeResultModels, &protocol conformance descriptor for GenerativeResultModels);
        sub_10004D2C0();
        (*(v66 + 8))(v65, v67);
        sub_10004D340();
        sub_10004CE50();
        v68 = v87;
        sub_10004CFA0();

        sub_100014F20();
        v62 = v110;
        sub_10004CBF0();
        (*(v88 + 8))(v68, v89);
        sub_100007BC0(v64, &qword_1000614A0, &unk_10004F640);
        (*(v104 + 8))(v59, v103);
        (*(v107 + 8))(v49, v108);
        v69 = v91;
LABEL_30:
        sub_100014FD4(v69);
        v77 = sub_1000026D8(&qword_100061418, &unk_100050D40);
        return (*(*(v77 - 8) + 56))(v62, 0, 1, v77);
      }

      v61 = v92;
      sub_100014EBC(v51, v92);
      (*v60)(v61, 0, 1, v101);
      sub_100014F20();
      v62 = v110;
      sub_10004CBD0();
      sub_100007BC0(v61, &qword_1000614A0, &unk_10004F640);
      (*(v104 + 8))(v59, v103);
      (*(v107 + 8))(v49, v108);
    }

    else
    {
      v70 = v80;
      sub_10004DC50();
      v71 = sub_10004DC70();
      v72 = sub_10004DEA0();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *v73 = 136315394;
        *(v73 + 4) = sub_10001E340(0xD000000000000022, 0x8000000100050CF0, &v111);
        *(v73 + 12) = 2080;
        *(v73 + 14) = sub_10001E340(0xD00000000000002DLL, 0x8000000100053F90, &v111);
        _os_log_impl(&_mh_execute_header, v71, v72, "%s.%s implicit request and region unavailability dialog already shown or partner unavailable, falling back to SiriX", v73, 0x16u);
        swift_arrayDestroy();
      }

      v48(v70, v26);
      v74 = v101;
      LOBYTE(v111) = 1;
      sub_10004CC30();
      sub_10004CCC0();
      sub_10004CC30();
      v75 = v92;
      sub_100014EBC(v51, v92);
      (*(v100 + 56))(v75, 0, 1, v74);
      sub_10004D110();
      v76 = v81;
      sub_10004CBC0();
      sub_100014F20();
      v62 = v110;
      sub_10004CBD0();
      (*(v104 + 8))(v76, v103);
      sub_100007BC0(v75, &qword_1000614A0, &unk_10004F640);
    }

    v69 = v51;
    goto LABEL_30;
  }

  sub_10004DBF0();
  sub_10004DBE0();
  v37 = sub_1000026D8(&qword_100061418, &unk_100050D40);
  v38 = *(*(v37 - 8) + 56);
  v39 = v37;
  v40 = v110;

  return v38(v40, 1, 1, v39);
}

unint64_t sub_100032B1C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000026D8(&qword_100061E10, &unk_10004F310);
    v2 = sub_10004DF50();
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
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_100007DE8(&v22, v24);
        sub_100007DE8(v24, v25);
        sub_100007DE8(v25, &v23);
        result = sub_1000079D0(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          sub_100007B00(v11);
          result = sub_100007DE8(&v23, v11);
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
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_100007DE8(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
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

uint64_t sub_100032D64(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000026D8(&qword_100061ED8, &qword_100050E28);
    v1 = sub_10004DF50();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = (v1 + 8);

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v12 = __clz(__rbit64(v4)) | (v8 << 6);
    v13 = *(*(a1 + 48) + 8 * v12);
    v14 = (*(a1 + 56) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    type metadata accessor for CFString(0);
    v17 = v13;

    swift_dynamicCast();
    *&v34[0] = v15;
    *(&v34[0] + 1) = v16;
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_100007DE8(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_100007DE8(v33, v34);
    result = sub_10004DF10(v1[5]);
    v18 = -1 << *(v1 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*&v6[8 * (v19 >> 6)]) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *&v6[8 * v20];
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*&v6[8 * (v19 >> 6)])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v4 &= v4 - 1;
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v10 = v1[6] + 40 * v9;
    *v10 = v26;
    *(v10 + 16) = v27;
    *(v10 + 32) = v28;
    result = sub_100007DE8(v34, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v4)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100033034@<X0>(uint64_t *a1@<X8>)
{
  v72 = a1;
  v1 = sub_1000026D8(&unk_100061430, &unk_10004F5E0);
  __chkstk_darwin(v1 - 8);
  v58 = &v54 - v2;
  v78 = sub_10004CFC0();
  v80 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000026D8(&unk_100061B20, &qword_100050D50);
  v5 = __chkstk_darwin(v4 - 8);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v62 = &v54 - v7;
  v8 = sub_1000026D8(&unk_100061440, &unk_10004F5F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v11 = sub_1000026D8(&unk_100061B30, "zS");
  __chkstk_darwin(v11 - 8);
  v13 = &v54 - v12;
  v76 = sub_10004D120();
  v14 = *(v76 - 8);
  __chkstk_darwin(v76);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v16;
  v17 = sub_10004D270();
  __chkstk_darwin(v17 - 8);
  v73 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10004DCF0();
  __chkstk_darwin(v19 - 8);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10004D130();
  v65 = v22;
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v60 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1000026D8(&unk_100061450, &qword_10004F608);
  v61 = v21;
  sub_10004DCE0();
  sub_10004D260();
  v69 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v25 = *(v14 + 104);
  v70 = v14 + 104;
  v71 = v25;
  (v25)(v16);
  sub_10004D140();
  v26 = *(v23 + 56);
  v79 = v23 + 56;
  v68 = v26;
  v27 = v13;
  v26(v13, 1, 1, v22);
  LOBYTE(v81) = 2;
  v28 = sub_10004DE10();
  (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
  v29 = sub_10004CBB0();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v32 = v30 + 56;
  v31(v62, 1, 1, v29);
  v75 = enum case for InputConnectionBehavior.default(_:);
  v63 = *(v80 + 104);
  v80 += 104;
  v33 = v78;
  v63(v77);
  v34 = sub_10004CD10();
  v35 = v72;
  v72[16] = v34;
  v57 = sub_1000026D8(&unk_100061B40, &qword_10004F610);
  sub_10004DCE0();
  sub_10004D260();
  v71(v74, v69, v76);
  sub_10004D140();
  v36 = v65;
  v68(v27, 1, 1, v65);
  LOBYTE(v81) = 2;
  v37 = v62;
  v66 = v29;
  v67 = v32;
  v64 = v31;
  v31(v62, 1, 1, v29);
  v31(v59, 1, 1, v29);
  (v63)(v77, v75, v33);
  sub_100004A98();
  v35[17] = sub_10004CCF0();
  v57 = sub_1000026D8(&qword_100061D90, &qword_100050D58);
  sub_10004DCE0();
  sub_10004D260();
  v38 = v69;
  v39 = v71;
  v71(v74, v69, v76);
  sub_10004D140();
  v55 = v27;
  v40 = v36;
  v41 = v68;
  v68(v27, 1, 1, v40);
  LOBYTE(v81) = 1;
  v42 = v66;
  v43 = v64;
  v64(v37, 1, 1, v66);
  v43(v59, 1, 1, v42);
  v44 = v63;
  (v63)(v77, v75, v78);
  sub_1000454A0();
  v72[18] = sub_10004CCF0();
  v59 = sub_1000026D8(&qword_100061470, &qword_10004F620);
  sub_10004DCE0();
  sub_10004D260();
  v39(v74, v38, v76);
  sub_10004D140();
  v45 = v55;
  v41(v55, 1, 1, v65);
  v46 = sub_10004DCD0();
  v81 = 0;
  v82 = 0;
  v47 = *(v46 - 8);
  v56 = *(v47 + 56);
  v57 = v47 + 56;
  v48 = v58;
  v56(v58, 1, 1, v46);
  v49 = v62;
  v64(v62, 1, 1, v66);
  v50 = v77;
  (v44)(v77, v75, v78);
  v51 = sub_10004CD00();
  v52 = v72;
  v72[19] = v51;
  v59 = sub_1000026D8(&qword_100061B50, &qword_10004F618);
  sub_10004DCE0();
  sub_10004D260();
  v71(v74, v69, v76);
  sub_10004D140();
  v68(v45, 1, 1, v65);
  v81 = 0;
  v82 = 0;
  v56(v48, 1, 1, v46);
  v64(v49, 1, 1, v66);
  (v63)(v50, v75, v78);
  v52[20] = sub_10004CD00();
  v52[3] = sub_10004D500();
  v52[4] = &protocol witness table for GenerativeAssistantFeatureFlagManager;
  sub_100014CF4(v52);
  sub_10004D4F0();
  v52[8] = sub_10004D520();
  v52[9] = &protocol witness table for GenerativeAssistantRestrictionManager;
  sub_100014CF4(v52 + 5);
  sub_10004D510();
  sub_10004DAC0();
  result = sub_10004DAB0();
  v52[10] = result;
  v52[14] = &type metadata for MediaControllerProvider;
  v52[15] = &off_10005E0E0;
  return result;
}

uint64_t sub_100033CAC()
{
  v0 = sub_10004D130();
  sub_1000037AC(v0, qword_1000624F0);
  sub_100003774(v0, qword_1000624F0);
  return sub_10004D110();
}

uint64_t sub_100033D10@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000026D8(&unk_100061B30, "zS");
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10004D130();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  sub_10004D110();
  sub_10004D110();
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_1000026D8(&qword_100061560, &qword_10004F700);
  *(swift_allocObject() + 16) = xmmword_100050AF0;
  sub_10004D110();
  sub_10004D110();
  sub_10004D110();
  sub_10004D110();
  sub_10004D110();
  sub_10004D110();
  sub_10004D110();
  sub_10004CE40();
  v7 = sub_10004CE30();
  return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
}

uint64_t sub_100033FD8(uint64_t a1)
{
  v2[259] = v1;
  v2[258] = a1;
  v3 = sub_10004D910();
  v2[260] = v3;
  v2[261] = *(v3 - 8);
  v2[262] = swift_task_alloc();
  v2[263] = swift_task_alloc();
  v2[264] = swift_task_alloc();
  v2[265] = swift_task_alloc();
  v4 = sub_10004CFB0();
  v2[266] = v4;
  v2[267] = *(v4 - 8);
  v2[268] = swift_task_alloc();
  v2[269] = swift_task_alloc();
  v5 = sub_10004D5D0();
  v2[270] = v5;
  v2[271] = *(v5 - 8);
  v2[272] = swift_task_alloc();
  v6 = sub_10004D6A0();
  v2[273] = v6;
  v2[274] = *(v6 - 8);
  v2[275] = swift_task_alloc();
  v7 = sub_10004D3F0();
  v2[276] = v7;
  v2[277] = *(v7 - 8);
  v2[278] = swift_task_alloc();
  v8 = sub_10004D3D0();
  v2[279] = v8;
  v2[280] = *(v8 - 8);
  v2[281] = swift_task_alloc();
  v9 = sub_10004D3A0();
  v2[282] = v9;
  v2[283] = *(v9 - 8);
  v2[284] = swift_task_alloc();
  v10 = sub_10004D380();
  v2[285] = v10;
  v2[286] = *(v10 - 8);
  v2[287] = swift_task_alloc();
  sub_10004CE60();
  v2[288] = swift_task_alloc();
  v11 = sub_10004D350();
  v2[289] = v11;
  v2[290] = *(v11 - 8);
  v2[291] = swift_task_alloc();
  v2[292] = swift_task_alloc();
  v2[293] = swift_task_alloc();
  v2[294] = swift_task_alloc();
  v12 = sub_10004CB90();
  v2[295] = v12;
  v2[296] = *(v12 - 8);
  v2[297] = swift_task_alloc();
  v13 = sub_10004CF50();
  v2[298] = v13;
  v2[299] = *(v13 - 8);
  v2[300] = swift_task_alloc();
  v14 = sub_10004DA90();
  v2[301] = v14;
  v2[302] = *(v14 - 8);
  v2[303] = swift_task_alloc();
  v2[304] = swift_task_alloc();
  v2[305] = swift_task_alloc();
  v15 = sub_10004CF40();
  v2[306] = v15;
  v2[307] = *(v15 - 8);
  v2[308] = swift_task_alloc();
  sub_1000026D8(&qword_100061480, &qword_10004F2F0);
  v2[309] = swift_task_alloc();
  v2[310] = swift_task_alloc();
  v2[311] = swift_task_alloc();
  v2[312] = swift_task_alloc();
  v16 = sub_10004D1B0();
  v2[313] = v16;
  v2[314] = *(v16 - 8);
  v2[315] = swift_task_alloc();
  sub_1000026D8(&qword_100061488, &unk_100050D70);
  v2[316] = swift_task_alloc();
  v2[317] = swift_task_alloc();
  v2[318] = swift_task_alloc();
  v2[319] = swift_task_alloc();
  v2[320] = swift_task_alloc();
  v2[321] = swift_task_alloc();
  v2[322] = swift_task_alloc();
  v2[323] = swift_task_alloc();
  v2[324] = swift_task_alloc();
  v17 = sub_10004D840();
  v2[325] = v17;
  v2[326] = *(v17 - 8);
  v2[327] = swift_task_alloc();
  v2[328] = swift_task_alloc();
  sub_1000026D8(&unk_100061490, &qword_10004F630);
  v2[329] = swift_task_alloc();
  v2[330] = swift_task_alloc();
  v18 = sub_10004D410();
  v2[331] = v18;
  v2[332] = *(v18 - 8);
  v2[333] = swift_task_alloc();
  v2[334] = swift_task_alloc();
  v19 = sub_10004D760();
  v2[335] = v19;
  v2[336] = *(v19 - 8);
  v2[337] = swift_task_alloc();
  v20 = sub_10004D660();
  v2[338] = v20;
  v2[339] = *(v20 - 8);
  v2[340] = swift_task_alloc();
  v21 = sub_10004DA20();
  v2[341] = v21;
  v2[342] = *(v21 - 8);
  v2[343] = swift_task_alloc();
  v22 = sub_10004DA80();
  v2[344] = v22;
  v2[345] = *(v22 - 8);
  v2[346] = swift_task_alloc();
  v23 = sub_10004D870();
  v2[347] = v23;
  v2[348] = *(v23 - 8);
  v2[349] = swift_task_alloc();
  v2[350] = swift_task_alloc();
  v2[351] = swift_task_alloc();
  v24 = sub_10004D9F0();
  v2[352] = v24;
  v2[353] = *(v24 - 8);
  v2[354] = swift_task_alloc();
  v2[355] = sub_1000026D8(&qword_1000614A0, &unk_10004F640);
  v2[356] = swift_task_alloc();
  v2[357] = swift_task_alloc();
  sub_1000026D8(&unk_100061DA0, &qword_10004F638);
  v2[358] = swift_task_alloc();
  v25 = sub_10004CBB0();
  v2[359] = v25;
  v2[360] = *(v25 - 8);
  v2[361] = swift_task_alloc();
  v2[362] = swift_task_alloc();
  v2[363] = swift_task_alloc();
  v2[364] = swift_task_alloc();
  sub_1000026D8(&qword_1000614A8, &unk_100050D80);
  v2[365] = swift_task_alloc();
  sub_1000026D8(&unk_100061DB0, &qword_10004F658);
  v2[366] = swift_task_alloc();
  sub_10004D8F0();
  v2[367] = swift_task_alloc();
  sub_1000026D8(&qword_1000614C8, &unk_100050D90);
  v2[368] = swift_task_alloc();
  v26 = sub_10004D620();
  v2[369] = v26;
  v2[370] = *(v26 - 8);
  v2[371] = swift_task_alloc();
  v27 = sub_10004D720();
  v2[372] = v27;
  v2[373] = *(v27 - 8);
  v2[374] = swift_task_alloc();
  v2[375] = swift_task_alloc();
  v2[376] = sub_1000026D8(&qword_1000614C0, &unk_10004F660);
  v2[377] = swift_task_alloc();
  v28 = type metadata accessor for GenerativeResponseEntity(0);
  v2[378] = v28;
  v2[379] = *(v28 - 8);
  v2[380] = swift_task_alloc();
  v2[381] = swift_task_alloc();
  v29 = sub_10004D540();
  v2[382] = v29;
  v2[383] = *(v29 - 8);
  v2[384] = swift_task_alloc();
  v2[385] = swift_task_alloc();
  sub_1000026D8(&unk_1000614B0, &qword_10004F650);
  v2[386] = swift_task_alloc();
  v2[387] = swift_task_alloc();
  sub_1000026D8(&qword_1000614D0, &unk_10004F670);
  v2[388] = swift_task_alloc();
  v2[389] = swift_task_alloc();
  v30 = sub_10004DC80();
  v2[390] = v30;
  v2[391] = *(v30 - 8);
  v2[392] = swift_task_alloc();
  v2[393] = swift_task_alloc();
  v2[394] = swift_task_alloc();
  v2[395] = swift_task_alloc();
  v2[396] = swift_task_alloc();
  v2[397] = swift_task_alloc();
  v2[398] = swift_task_alloc();
  v2[399] = swift_task_alloc();
  v2[400] = swift_task_alloc();
  v2[401] = swift_task_alloc();
  v2[402] = swift_task_alloc();
  v2[403] = swift_task_alloc();
  v2[404] = swift_task_alloc();
  v2[405] = swift_task_alloc();
  v2[406] = swift_task_alloc();
  v2[407] = swift_task_alloc();
  v2[408] = swift_task_alloc();
  v31 = sub_10004CEF0();
  v2[409] = v31;
  v2[410] = *(v31 - 8);
  v2[411] = swift_task_alloc();
  v2[412] = swift_task_alloc();
  v2[413] = swift_task_alloc();
  v2[414] = swift_task_alloc();
  v2[415] = swift_task_alloc();
  v2[416] = swift_task_alloc();
  v2[417] = swift_task_alloc();
  v2[418] = swift_task_alloc();
  v2[419] = swift_task_alloc();
  sub_1000026D8(&qword_1000614D8, &unk_100050DA0);
  v2[420] = swift_task_alloc();
  v2[421] = swift_task_alloc();
  v2[422] = swift_task_alloc();
  v2[423] = swift_task_alloc();
  v2[424] = swift_task_alloc();
  v2[425] = swift_task_alloc();
  v2[426] = swift_task_alloc();
  v2[427] = swift_task_alloc();
  v32 = sub_10004D210();
  v2[428] = v32;
  v33 = *(v32 - 8);
  v2[429] = v33;
  v2[430] = *(v33 + 64);
  v2[431] = swift_task_alloc();
  v2[432] = swift_task_alloc();
  sub_10004DE50();
  v2[433] = sub_10004DE40();
  v35 = sub_10004DE20();
  v2[434] = v35;
  v2[435] = v34;

  return _swift_task_switch(sub_100035160, v35, v34);
}

uint64_t sub_100035160()
{
  v245 = v0;
  v1 = *(v0 + 3416);
  v2 = *(v0 + 3352);
  v3 = *(v0 + 3280);
  v4 = *(v0 + 3272);
  sub_10004D700();
  sub_10004D6F0();
  sub_10004DAF0();
  sub_10004D6D0();

  sub_10004D200();
  *(v0 + 3488) = sub_100021468();
  sub_10004CA80();
  sub_10004CED0();
  v241 = *(v3 + 8);
  v241(v2, v4);
  v5 = sub_10004CEC0();
  v6 = *(v5 - 8);
  v236 = *(v6 + 48);
  v7 = v236(v1, 1, v5);
  v8 = *(v0 + 3416);
  v225 = v6;
  v228 = v5;
  if (v7 == 1)
  {
    sub_100007BC0(v8, &qword_1000614D8, &unk_100050DA0);
    v9 = 0;
  }

  else
  {
    sub_10004CE90();
    v9 = v10;
    (*(v6 + 8))(v8, v5);
  }

  *(v0 + 3496) = v9;
  *(v0 + 3504) = sub_10004DBC0();
  sub_10004DBB0();
  sub_10004DB70();

  sub_10004DBB0();
  sub_10004DBA0();

  sub_10004DC60();
  v11 = sub_10004DC70();
  v12 = sub_10004DEA0();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 3264);
  v15 = *(v0 + 3128);
  v16 = *(v0 + 3120);
  if (v13)
  {
    v17 = swift_slowAlloc();
    v244[0] = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_10001E340(0xD000000000000022, 0x8000000100050CF0, v244);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v244);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s.%s creating transaction", v17, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(v15 + 8);
  v18(v14, v16);
  *(v0 + 3512) = v18;
  v19 = *(v0 + 2072);
  *(v0 + 3520) = os_transaction_create();
  sub_10004DC60();
  sub_1000454F4(v19, v0 + 16);
  v20 = sub_10004DC70();
  v21 = sub_10004DE90();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 3256);
  v24 = *(v0 + 3120);
  v233 = v18;
  if (v22)
  {
    v221 = *(v0 + 3256);
    v25 = swift_slowAlloc();
    v244[0] = swift_slowAlloc();
    *v25 = 136315650;
    *(v25 + 4) = sub_10001E340(0xD000000000000022, 0x8000000100050CF0, v244);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v244);
    *(v25 + 22) = 2080;
    sub_100014E78((v0 + 16), *(v0 + 40));
    v26 = sub_10004D530();
    v28 = v27;
    sub_10004552C(v0 + 16);
    v29 = sub_10001E340(v26, v28, v244);

    *(v25 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s.%s feature flags: %s", v25, 0x20u);
    swift_arrayDestroy();

    v18(v221, v24);
  }

  else
  {

    v18(v23, v24);
    sub_10004552C(v0 + 16);
  }

  v30 = *(v0 + 2072);
  sub_10004DC60();
  sub_1000454F4(v30, v0 + 1192);
  v31 = sub_10004DC70();
  v32 = sub_10004DE90();
  if (!os_log_type_enabled(v31, v32))
  {
    v39 = *(v0 + 3248);
    v40 = *(v0 + 3120);

    sub_10004552C(v0 + 1192);
    v18(v39, v40);
    goto LABEL_17;
  }

  v33 = *(v0 + 3408);
  v34 = *(v0 + 3344);
  v35 = *(v0 + 3272);
  v36 = swift_slowAlloc();
  v244[0] = swift_slowAlloc();
  *v36 = 136315650;
  *(v36 + 4) = sub_10001E340(0xD000000000000022, 0x8000000100050CF0, v244);
  *(v36 + 12) = 2080;
  *(v36 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v244);
  *(v36 + 22) = 2080;
  sub_10004CA80();
  sub_10004CED0();
  v241(v34, v35);
  v37 = v236(v33, 1, v228);
  v38 = *(v0 + 3408);
  if (v37 == 1)
  {
    sub_100007BC0(*(v0 + 3408), &qword_1000614D8, &unk_100050DA0);
LABEL_15:
    sub_10004552C(v0 + 1192);

    v43 = 0xE700000000000000;
    v44 = 0x6E776F6E6B6E75;
    goto LABEL_16;
  }

  v41 = sub_10004CEB0();
  v43 = v42;
  (*(v225 + 8))(v38, v228);
  if (!v43)
  {
    goto LABEL_15;
  }

  sub_10004552C(v0 + 1192);
  v44 = v41;
LABEL_16:
  v45 = *(v0 + 3248);
  v46 = *(v0 + 3120);
  v47 = sub_10001E340(v44, v43, v244);

  *(v36 + 24) = v47;
  _os_log_impl(&_mh_execute_header, v31, v32, "%s.%s Setting DialogEngineClient locale to %s", v36, 0x20u);
  swift_arrayDestroy();

  v233(v45, v46);
LABEL_17:
  v48 = *(v0 + 3400);
  v49 = *(v0 + 3336);
  v50 = *(v0 + 3272);
  *(v0 + 3528) = sub_10004D8E0();
  sub_10004D8D0();
  sub_10004CA80();
  sub_10004CED0();
  v241(v49, v50);
  v51 = v236(v48, 1, v228);
  v52 = *(v0 + 3400);
  if (v51 == 1)
  {
    sub_100007BC0(*(v0 + 3400), &qword_1000614D8, &unk_100050DA0);
  }

  else
  {
    sub_10004CEB0();
    (*(v225 + 8))(v52, v228);
  }

  v53 = *(v0 + 3392);
  v54 = *(v0 + 3328);
  v55 = *(v0 + 3272);
  v56 = *(v0 + 3112);
  sub_10004D8C0();

  v57 = sub_10004D580();
  v215 = *(v57 - 8);
  v218 = v57;
  (*(v215 + 56))(v56, 1, 1);
  sub_10004CA80();
  sub_10004CED0();
  v241(v54, v55);
  v58 = v236(v53, 1, v228);
  v59 = *(v0 + 3392);
  if (v58 == 1)
  {
    sub_100007BC0(*(v0 + 3392), &qword_1000614D8, &unk_100050DA0);
    v60 = 0;
  }

  else
  {
    sub_10004CEA0();
    v60 = v61;
    (*(v225 + 8))(v59, v228);
  }

  v222 = v60;
  *(v0 + 3536) = v60;
  v62 = *(v0 + 3384);
  v63 = *(v0 + 3320);
  v64 = *(v0 + 3272);
  sub_10004CA80();
  sub_10004CED0();
  v241(v63, v64);
  v65 = v236(v62, 1, v228);
  v66 = *(v0 + 3384);
  if (v65 == 1)
  {
    sub_100007BC0(*(v0 + 3384), &qword_1000614D8, &unk_100050DA0);
  }

  else
  {
    sub_10004CEA0();
    (*(v225 + 8))(v66, v228);
  }

  sub_10004CCC0();
  v67 = *(v0 + 3096);
  if (*(v0 + 3928))
  {
    v68 = sub_10004D5B0();
    (*(*(v68 - 8) + 56))(v67, 1, 1, v68);
  }

  else
  {
    v69 = enum case for DirectInvocationClientID.visualIntelligence(_:);
    v70 = sub_10004D5B0();
    v71 = *(v70 - 8);
    (*(v71 + 104))(v67, v69, v70);
    (*(v71 + 56))(v67, 0, 1, v70);
  }

  v72 = *(v0 + 3096);
  v73 = sub_10004DA40();

  sub_100007BC0(v72, &unk_1000614B0, &qword_10004F650);
  if (v73 & 1) != 0 || (sub_10004D590() & 1) == 0 && (sub_10004DA30())
  {
    v74 = sub_10004D590();
    v75 = &enum case for GenerativeAssistantUseCase.visualIntelligenceCamera(_:);
    if ((v74 & 1) == 0 && v222)
    {

      sub_10004D5A0();

      v75 = &enum case for GenerativeAssistantUseCase.visualIntelligenceCamera(_:);
    }
  }

  else
  {
    v75 = &enum case for GenerativeAssistantUseCase.mediaQA(_:);
  }

  v76 = *(v0 + 2072);
  (*(*(v0 + 3064) + 104))(*(v0 + 3080), *v75, *(v0 + 3056));
  sub_10004DC50();
  sub_1000454F4(v76, v0 + 352);
  v77 = sub_10004DC70();
  v78 = sub_10004DE90();
  v79 = os_log_type_enabled(v77, v78);
  v80 = *(v0 + 3240);
  v81 = *(v0 + 3120);
  if (v79)
  {
    v82 = swift_slowAlloc();
    v244[0] = swift_slowAlloc();
    *v82 = 136315650;
    *(v82 + 4) = sub_10001E340(0xD000000000000022, 0x8000000100050CF0, v244);
    *(v82 + 12) = 2080;
    *(v82 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v244);
    *(v82 + 22) = 2080;
    sub_10004CCC0();
    if (*(v0 + 3932))
    {
      v83 = 1701736302;
    }

    else
    {
      v83 = 0xD000000000000012;
    }

    if (*(v0 + 3932))
    {
      v84 = 0xE400000000000000;
    }

    else
    {
      v84 = 0x8000000100051710;
    }

    sub_10004552C(v0 + 352);
    v85 = sub_10001E340(v83, v84, v244);

    *(v82 + 24) = v85;
    _os_log_impl(&_mh_execute_header, v77, v78, "%s.%s DirectInvocationClient: %s", v82, 0x20u);
    swift_arrayDestroy();

    v86 = v233;
    v233(v80, v81);
  }

  else
  {

    v86 = v233;
    v233(v80, v81);
    sub_10004552C(v0 + 352);
  }

  v87 = *(v0 + 2072);
  sub_1000157A0(*(v0 + 3048));
  sub_10004DC50();
  sub_1000454F4(v87, v0 + 520);
  v88 = sub_10004DC70();
  v89 = sub_10004DEA0();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = *(v0 + 3312);
    v91 = *(v0 + 3272);
    v206 = *(v0 + 3120);
    v209 = *(v0 + 3232);
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v244[0] = v93;
    *v92 = 136315138;
    sub_10004CA80();
    sub_10004CEE0();
    v241(v90, v91);
    v94 = sub_10004DD70();
    v96 = v95;
    sub_10004552C(v0 + 520);
    v97 = sub_10001E340(v94, v96, v244);

    *(v92 + 4) = v97;
    _os_log_impl(&_mh_execute_header, v88, v89, "The invoking interace idiom is %s", v92, 0xCu);
    sub_100007B00(v93);
    v86 = v233;

    v233(v209, v206);
  }

  else
  {
    v98 = *(v0 + 3232);
    v99 = *(v0 + 3120);

    sub_10004552C(v0 + 520);
    v86(v98, v99);
  }

  v100 = *(v0 + 3312);
  v101 = *(v0 + 3272);
  v102 = *(v0 + 3016);
  sub_10004CA80();
  sub_10004CEE0();
  v241(v100, v101);
  sub_10004DEE0();
  sub_100007BC0(v102, &qword_1000614C0, &unk_10004F660);
  if (sub_10004D710())
  {

    sub_10004DC50();
    v103 = sub_10004DC70();
    v104 = sub_10004DEB0();
    v105 = os_log_type_enabled(v103, v104);
    v106 = *(v0 + 3152);
    v107 = *(v0 + 3120);
    if (v105)
    {
      v108 = swift_slowAlloc();
      v244[0] = swift_slowAlloc();
      *v108 = 136315394;
      *(v108 + 4) = sub_10001E340(0xD000000000000022, 0x8000000100050CF0, v244);
      *(v108 + 12) = 2080;
      *(v108 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v244);
      _os_log_impl(&_mh_execute_header, v103, v104, "%s.%s MediaQA is not available for remote requests", v108, 0x16u);
      swift_arrayDestroy();
    }

    v86(v106, v107);
    v242 = *(v0 + 3080);
    v243 = *(v0 + 3112);
    v237 = *(v0 + 3064);
    v239 = *(v0 + 3056);
    v109 = *(v0 + 3032);
    v205 = *(v0 + 3024);
    v207 = *(v0 + 3048);
    v231 = *(v0 + 2976);
    v234 = *(v0 + 3000);
    v226 = *(v0 + 2872);
    v229 = *(v0 + 2984);
    v210 = *(v0 + 2856);
    v223 = *(v0 + 2880);
    v110 = *(v0 + 2440);
    v111 = *(v0 + 2416);
    v112 = *(v0 + 2408);
    v216 = *(v0 + 2896);
    sub_10004D8D0();
    v213 = enum case for CatId.featureUnsupportedForRemoteClients(_:);
    v212 = *(v111 + 104);
    v212(v110);
    sub_100007C20(&_swiftEmptyArrayStorage);
    v113 = sub_10004D8B0();
    v115 = v114;

    v116 = *(v111 + 8);
    v116(v110, v112);
    *(v0 + 2032) = v113;
    v117 = v207;
    *(v0 + 2040) = v115;
    sub_10004CC30();
    sub_100014EBC(v207, v210);
    (*(v109 + 56))(v210, 0, 1, v205);
    sub_10004D8A0();
    (v212)(v110, v213, v112);
    sub_10004D880();
    v116(v110, v112);
    sub_100014F20();
    sub_10004CBD0();
    (*(v223 + 8))(v216, v226);
    sub_100007BC0(v210, &qword_1000614A0, &unk_10004F640);
    (*(v229 + 8))(v234, v231);
    (*(v237 + 8))(v242, v239);
LABEL_91:
    sub_100007BC0(v243, &qword_1000614D0, &unk_10004F670);
    sub_100014FD4(v117);
    v199 = *(v0 + 3456);
    v200 = *(v0 + 3432);
    v201 = *(v0 + 3424);
    sub_1000434C0(*(v0 + 3520));
    swift_unknownObjectRelease();
    (*(v200 + 8))(v199, v201);

    v202 = *(v0 + 8);

    return v202();
  }

  v118 = *(v0 + 3376);
  v119 = *(v0 + 3304);
  v120 = *(v0 + 3272);
  sub_100014E14(*(v0 + 2072), v0 + 1776);
  sub_10004CCC0();
  sub_10004CA80();
  sub_10004CED0();
  v241(v119, v120);
  v121 = v236(v118, 1, v228);
  v122 = *(v0 + 3376);
  v123 = *(v0 + 2944);
  if (v121 == 1)
  {
    sub_100007BC0(*(v0 + 3376), &qword_1000614D8, &unk_100050DA0);
    v124 = sub_10004CE70();
    (*(*(v124 - 8) + 56))(v123, 1, 1, v124);
  }

  else
  {
    sub_10004CE80();
    (*(v225 + 8))(v122, v228);
  }

  v125 = *(v0 + 3368);
  v126 = *(v0 + 3296);
  v208 = *(v0 + 3080);
  v211 = *(v0 + 3272);
  v127 = *(v0 + 3064);
  v128 = *(v0 + 3056);
  v129 = *(v0 + 3000);
  v130 = *(v0 + 2992);
  v131 = *(v0 + 2984);
  v132 = *(v0 + 2976);
  v133 = *(v0 + 2944);
  v204 = *(v0 + 3072);
  sub_10004DED0();
  sub_100007BC0(v133, &qword_1000614C8, &unk_100050D90);
  (*(v131 + 16))(v130, v129, v132);
  (*(v127 + 16))(v204, v208, v128);
  sub_10004CA80();
  sub_10004CED0();
  v241(v126, v211);
  v134 = v236(v125, 1, v228);
  v135 = *(v0 + 3368);
  if (v134 == 1)
  {
    sub_100007BC0(*(v0 + 3368), &qword_1000614D8, &unk_100050DA0);
  }

  else
  {
    sub_10004CEA0();
    (*(v225 + 8))(v135, v228);
  }

  v136 = *(v0 + 3360);
  v137 = *(v0 + 3288);
  v138 = *(v0 + 3272);
  sub_10004CA80();
  sub_10004CED0();
  v241(v137, v138);
  v139 = v236(v136, 1, v228);
  v140 = *(v0 + 3360);
  if (v139 == 1)
  {
    sub_100007BC0(*(v0 + 3360), &qword_1000614D8, &unk_100050DA0);
  }

  else
  {
    sub_10004CEB0();
    v142 = v141;
    (*(v225 + 8))(v140, v228);
    if (v142)
    {
      goto LABEL_62;
    }
  }

LABEL_62:
  v143 = *(v0 + 3112);
  v144 = *(v0 + 3104);
  v145 = *(v0 + 2928);
  sub_10004D250();
  v146 = sub_10004D270();
  (*(*(v146 - 8) + 56))(v145, 0, 1, v146);
  sub_10001564C(v143, v144, &qword_1000614D0, &unk_10004F670);
  v147 = (*(v215 + 48))(v144, 1, v218);
  v148 = *(v0 + 3104);
  if (v147 == 1)
  {
    sub_100007BC0(*(v0 + 3104), &qword_1000614D0, &unk_10004F670);
    *(v0 + 1736) = 0u;
    *(v0 + 1752) = 0u;
    *(v0 + 1768) = 0;
  }

  else
  {
    *(v0 + 1760) = v218;
    *(v0 + 1768) = &protocol witness table for UserRequestPartnerInfo;
    v149 = sub_100014CF4((v0 + 1736));
    (*(v215 + 32))(v149, v148, v218);
  }

  sub_10004CCC0();
  v150 = *(v0 + 3088);
  if (*(v0 + 3930))
  {
    v151 = sub_10004D5B0();
    (*(*(v151 - 8) + 56))(v150, 1, 1, v151);
  }

  else
  {
    v152 = enum case for DirectInvocationClientID.visualIntelligence(_:);
    v153 = sub_10004D5B0();
    v154 = *(v153 - 8);
    (*(v154 + 104))(v150, v152, v153);
    (*(v154 + 56))(v150, 0, 1, v153);
  }

  v155 = *(v0 + 2072);
  sub_10004D610();
  v156 = sub_10004D5F0();
  v158 = v157;
  v240 = v156;
  *(v0 + 3544) = v156;
  *(v0 + 3552) = v157;
  sub_10004DC50();
  sub_1000454F4(v155, v0 + 688);
  v159 = sub_10004DC70();
  v160 = sub_10004DEA0();
  v161 = os_log_type_enabled(v159, v160);
  v162 = *(v0 + 3224);
  v163 = *(v0 + 3120);
  if (v161)
  {
    v164 = swift_slowAlloc();
    v244[0] = swift_slowAlloc();
    *v164 = 136315650;
    *(v164 + 4) = sub_10001E340(0xD000000000000022, 0x8000000100050CF0, v244);
    *(v164 + 12) = 2080;
    *(v164 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v244);
    *(v164 + 22) = 2080;
    sub_10004CCC0();
    v165 = *(v0 + 3931);
    v166 = 0x54504774616863;
    if (v165)
    {
      v166 = 0x726568746FLL;
    }

    v167 = 0xE700000000000000;
    if (v165)
    {
      v167 = 0xE500000000000000;
    }

    if (v165 == 2)
    {
      v168 = 0;
    }

    else
    {
      v168 = v166;
    }

    if (v165 == 2)
    {
      v169 = 0xE000000000000000;
    }

    else
    {
      v169 = v167;
    }

    sub_10004552C(v0 + 688);
    v170 = sub_10001E340(v168, v169, v244);

    *(v164 + 24) = v170;
    _os_log_impl(&_mh_execute_header, v159, v160, "%s.%s partner requested: %s", v164, 0x20u);
    swift_arrayDestroy();

    v171 = v163;
    v172 = v233;
    v233(v162, v171);
  }

  else
  {

    v173 = v163;
    v172 = v233;
    v233(v162, v173);
    sub_10004552C(v0 + 688);
  }

  sub_10004DC50();

  v174 = sub_10004DC70();
  v175 = sub_10004DEA0();

  v176 = os_log_type_enabled(v174, v175);
  v177 = *(v0 + 3216);
  v178 = *(v0 + 3120);
  if (v176)
  {
    v179 = swift_slowAlloc();
    v244[0] = swift_slowAlloc();
    *v179 = 136315650;
    *(v179 + 4) = sub_10001E340(0xD000000000000022, 0x8000000100050CF0, v244);
    *(v179 + 12) = 2080;
    *(v179 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v244);
    *(v179 + 22) = 2080;
    *(v179 + 24) = sub_10001E340(v240, v158, v244);
    _os_log_impl(&_mh_execute_header, v174, v175, "%s.%s partner to use: %s", v179, 0x20u);
    swift_arrayDestroy();

    v233(v177, v178);
  }

  else
  {

    v172(v177, v178);
  }

  v180 = *(v0 + 2072);
  sub_100014E78(v180 + 5, v180[8]);
  if ((sub_10004D4D0() & 1) == 0)
  {

    sub_10004DC50();
    v184 = sub_10004DC70();
    v185 = sub_10004DEA0();
    v186 = os_log_type_enabled(v184, v185);
    v187 = *(v0 + 3160);
    v188 = *(v0 + 3120);
    if (v186)
    {
      v189 = swift_slowAlloc();
      v244[0] = swift_slowAlloc();
      *v189 = 136315394;
      *(v189 + 4) = sub_10001E340(0xD000000000000022, 0x8000000100050CF0, v244);
      *(v189 + 12) = 2080;
      *(v189 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v244);
      _os_log_impl(&_mh_execute_header, v184, v185, "%s.%s request is still downloading and unavailable", v189, 0x16u);
      swift_arrayDestroy();
    }

    v233(v187, v188);
    v243 = *(v0 + 3112);
    v235 = *(v0 + 3056);
    v238 = *(v0 + 3080);
    v190 = *(v0 + 3048);
    v191 = *(v0 + 3032);
    v192 = *(v0 + 3024);
    v230 = *(v0 + 3000);
    v232 = *(v0 + 3064);
    v224 = *(v0 + 2984);
    v227 = *(v0 + 2976);
    v219 = *(v0 + 2952);
    v220 = *(v0 + 2968);
    v193 = *(v0 + 2896);
    v194 = *(v0 + 2880);
    v214 = *(v0 + 2872);
    v217 = *(v0 + 2960);
    v195 = *(v0 + 2856);
    v196 = *(v0 + 2440);
    v197 = *(v0 + 2416);
    v198 = *(v0 + 2408);
    sub_100014EBC(v190, v195);
    (*(v191 + 56))(v195, 0, 1, v192);
    sub_10004D8A0();
    (*(v197 + 104))(v196, enum case for CatId.modelDownloadingErrorResponse(_:), v198);
    sub_10004D880();
    v117 = v190;

    (*(v197 + 8))(v196, v198);
    sub_100014F20();
    sub_10004CBD0();
    (*(v194 + 8))(v193, v214);
    sub_100007BC0(v195, &qword_1000614A0, &unk_10004F640);
    (*(v217 + 8))(v220, v219);
    (*(v224 + 8))(v230, v227);
    (*(v232 + 8))(v238, v235);
    goto LABEL_91;
  }

  v181 = v180[8];
  v182 = v180[9];
  sub_100014E78(v180 + 5, v181);
  v183 = swift_task_alloc();
  *(v0 + 3560) = v183;
  *v183 = v0;
  v183[1] = sub_1000378B8;

  return dispatch thunk of GenerativeAssistantRestrictions.signOutIfRestricted()(v181, v182);
}

uint64_t sub_1000378B8()
{
  v2 = *v1;
  *(*v1 + 3568) = v0;

  if (v0)
  {

    v3 = *(v2 + 3480);
    v4 = *(v2 + 3472);
    v5 = sub_10003E358;
  }

  else
  {
    v3 = *(v2 + 3480);
    v4 = *(v2 + 3472);
    v5 = sub_1000379FC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000379FC()
{
  v188 = v0;
  sub_100014E78((*(v0 + 2072) + 40), *(*(v0 + 2072) + 64));
  if (sub_10004D480())
  {
    v1 = *(v0 + 3552);
    v2 = *(v0 + 3544);
    v3 = *(v0 + 2920);
    sub_10004DBB0();
    sub_10004DB60();

    sub_100031B8C(v2, v1, v3);
    v4 = sub_1000026D8(&qword_100061418, &unk_100050D40);
    v5 = *(v4 - 8);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      v80 = *(v0 + 3064);
      v164 = *(v0 + 3056);
      v168 = *(v0 + 3080);
      v185 = *(v0 + 3048);
      v159 = *(v0 + 3000);
      v81 = *(v0 + 2984);
      v155 = *(v0 + 2976);
      v82 = *(v0 + 2968);
      v83 = *(v0 + 2960);
      v84 = *(v0 + 2952);
      v176 = *(v0 + 3112);
      v180 = *(v0 + 2920);
      v172 = *(v0 + 2064);

      (*(v83 + 8))(v82, v84);
      (*(v81 + 8))(v159, v155);
      (*(v80 + 8))(v168, v164);
      sub_100007BC0(v176, &qword_1000614D0, &unk_10004F670);
      sub_100014FD4(v185);
      (*(v5 + 32))(v172, v180, v4);
      goto LABEL_16;
    }

    v6 = *(v0 + 2072);
    sub_100007BC0(*(v0 + 2920), &qword_1000614A8, &unk_100050D80);
    sub_100014E78((v6 + 40), *(v6 + 64));
    if (sub_10004D490())
    {
      v7 = *(v0 + 2864);
      sub_10004DAA0();
      v8 = sub_1000026D8(&unk_1000614F0, &qword_10004F680);
      v9 = (*(*(v8 - 8) + 48))(v7, 1, v8);
      v183 = *(v0 + 3552);
      if (v9 == 1)
      {
        v10 = *(v0 + 3544);
        v153 = *(v0 + 3456);
        v149 = *(v0 + 3448);
        v162 = *(v0 + 3440);
        v11 = *(v0 + 3432);
        v12 = *(v0 + 3424);
        v13 = *(v0 + 2072);
        sub_100007BC0(*(v0 + 2864), &unk_100061DA0, &qword_10004F638);
        sub_10004D5E0();
        sub_1000454F4(v13, v0 + 856);
        v14 = swift_allocObject();
        v15 = *(v0 + 1000);
        *(v14 + 144) = *(v0 + 984);
        *(v14 + 160) = v15;
        v16 = *(v0 + 1016);
        v17 = *(v0 + 936);
        *(v14 + 80) = *(v0 + 920);
        *(v14 + 96) = v17;
        v18 = *(v0 + 968);
        *(v14 + 112) = *(v0 + 952);
        *(v14 + 128) = v18;
        v19 = *(v0 + 872);
        *(v14 + 16) = *(v0 + 856);
        *(v14 + 32) = v19;
        v20 = *(v0 + 904);
        *(v14 + 48) = *(v0 + 888);
        *(v14 + 64) = v20;
        *(v14 + 176) = v16;
        *(v14 + 184) = v10;
        *(v14 + 192) = v183;
        (*(v11 + 16))(v149, v153, v12);
        sub_1000454F4(v13, v0 + 1024);
        v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
        v22 = (v162 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
        v23 = swift_allocObject();
        v24 = v23 + v21;
        v25 = v23;
        (*(v11 + 32))(v24, v149, v12);
        v26 = v25 + v22;
        v27 = *(v0 + 1168);
        *(v26 + 128) = *(v0 + 1152);
        *(v26 + 144) = v27;
        *(v26 + 160) = *(v0 + 1184);
        v28 = *(v0 + 1104);
        *(v26 + 64) = *(v0 + 1088);
        *(v26 + 80) = v28;
        v29 = *(v0 + 1136);
        *(v26 + 96) = *(v0 + 1120);
        *(v26 + 112) = v29;
        v30 = *(v0 + 1040);
        *v26 = *(v0 + 1024);
        *(v26 + 16) = v30;
        v31 = *(v0 + 1072);
        *(v26 + 32) = *(v0 + 1056);
        *(v26 + 48) = v31;
        sub_1000454F4(v13, v0 + 184);
        v32 = swift_allocObject();
        v33 = *(v0 + 328);
        *(v32 + 144) = *(v0 + 312);
        *(v32 + 160) = v33;
        *(v32 + 176) = *(v0 + 344);
        v34 = *(v0 + 264);
        *(v32 + 80) = *(v0 + 248);
        *(v32 + 96) = v34;
        v35 = *(v0 + 296);
        *(v32 + 112) = *(v0 + 280);
        *(v32 + 128) = v35;
        v36 = *(v0 + 200);
        *(v32 + 16) = *(v0 + 184);
        *(v32 + 32) = v36;
        v37 = *(v0 + 232);
        *(v32 + 48) = *(v0 + 216);
        *(v32 + 64) = v37;
        sub_1000454F4(v13, v0 + 1528);
        v38 = swift_allocObject();
        v39 = *(v0 + 1672);
        *(v38 + 144) = *(v0 + 1656);
        *(v38 + 160) = v39;
        *(v38 + 176) = *(v0 + 1688);
        v40 = *(v0 + 1608);
        *(v38 + 80) = *(v0 + 1592);
        *(v38 + 96) = v40;
        v41 = *(v0 + 1640);
        *(v38 + 112) = *(v0 + 1624);
        *(v38 + 128) = v41;
        v42 = *(v0 + 1544);
        *(v38 + 16) = *(v0 + 1528);
        *(v38 + 32) = v42;
        v43 = *(v0 + 1576);
        *(v38 + 48) = *(v0 + 1560);
        *(v38 + 64) = v43;
        sub_1000454F4(v13, v0 + 1360);
        v44 = swift_allocObject();
        v45 = *(v0 + 1504);
        *(v44 + 144) = *(v0 + 1488);
        *(v44 + 160) = v45;
        *(v44 + 176) = *(v0 + 1520);
        v46 = *(v0 + 1440);
        *(v44 + 80) = *(v0 + 1424);
        *(v44 + 96) = v46;
        v47 = *(v0 + 1472);
        *(v44 + 112) = *(v0 + 1456);
        *(v44 + 128) = v47;
        v48 = *(v0 + 1376);
        *(v44 + 16) = *(v0 + 1360);
        *(v44 + 32) = v48;
        v49 = *(v0 + 1408);
        *(v44 + 48) = *(v0 + 1392);
        *(v44 + 64) = v49;
        swift_bridgeObjectRetain_n();
        sub_10004D9C0();
        if (sub_10004D5E0())
        {
          sub_10004DC50();
          v50 = sub_10004DC70();
          v51 = sub_10004DEA0();
          v52 = os_log_type_enabled(v50, v51);
          v53 = *(v0 + 3512);
          v54 = *(v0 + 3208);
          v55 = *(v0 + 3120);
          if (v52)
          {
            v56 = swift_slowAlloc();
            v187[0] = swift_slowAlloc();
            *v56 = 136315394;
            *(v56 + 4) = sub_10001E340(0xD000000000000022, 0x8000000100050CF0, v187);
            *(v56 + 12) = 2080;
            *(v56 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v187);
            _os_log_impl(&_mh_execute_header, v50, v51, "%s.%s using media controller", v56, 0x16u);
            swift_arrayDestroy();
          }

          v53(v54, v55);
          v57 = *(v0 + 2072);
          *(v0 + 1840) = sub_10004D500();
          *(v0 + 1848) = &protocol witness table for GenerativeAssistantFeatureFlagManager;
          sub_100014CF4((v0 + 1816));
          sub_10004D4F0();
          sub_10004DA60();
          *(v0 + 3576) = *(v57 + 160);
          sub_10004CCC0();
          v58 = *(v0 + 2000);
          v59 = *(v0 + 2008);
          *(v0 + 3584) = v59;
          v60 = swift_task_alloc();
          *(v0 + 3592) = v60;
          *v60 = v0;
          v60[1] = sub_100039498;
          v61 = *(v0 + 2968);
          v62 = *(v0 + 2832);
          v63 = *(v0 + 2800);

          return GenerateTextFromMediaController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:)(v63, v58, v59, v61, v62);
        }

        else
        {
          sub_10004DC50();
          v112 = sub_10004DC70();
          v113 = sub_10004DEA0();
          v114 = os_log_type_enabled(v112, v113);
          v115 = *(v0 + 3512);
          v116 = *(v0 + 3200);
          v117 = *(v0 + 3120);
          if (v114)
          {
            v118 = swift_slowAlloc();
            v187[0] = swift_slowAlloc();
            *v118 = 136315394;
            *(v118 + 4) = sub_10001E340(0xD000000000000022, 0x8000000100050CF0, v187);
            *(v118 + 12) = 2080;
            *(v118 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v187);
            _os_log_impl(&_mh_execute_header, v112, v113, "%s.%s Avoiding media controller", v118, 0x16u);
            swift_arrayDestroy();
          }

          v115(v116, v117);
          v119 = *(v0 + 2072);
          sub_100014E14(v119, v0 + 1696);
          sub_10004DA00();
          *(v0 + 3608) = *(v119 + 160);
          sub_10004CCC0();
          v120 = *(v0 + 1888);
          v121 = *(v0 + 1896);
          *(v0 + 3616) = v121;
          v122 = swift_task_alloc();
          *(v0 + 3624) = v122;
          *v122 = v0;
          v122[1] = sub_100039970;
          v123 = *(v0 + 2968);
          v124 = *(v0 + 2832);
          v125 = *(v0 + 2792);

          return GenerateTextController.generateRichContent(userQuery:requestMetadata:intentCallbackManager:)(v125, v120, v121, v123, v124);
        }
      }

      v178 = *(v0 + 3080);
      v182 = *(v0 + 3112);
      v170 = *(v0 + 3064);
      v174 = *(v0 + 3056);
      v104 = *(v0 + 3032);
      v137 = *(v0 + 3024);
      v140 = *(v0 + 3048);
      v161 = *(v0 + 2976);
      v166 = *(v0 + 3000);
      v152 = *(v0 + 2968);
      v157 = *(v0 + 2984);
      v145 = *(v0 + 2960);
      v148 = *(v0 + 2952);
      v105 = *(v0 + 2912);
      v106 = *(v0 + 2880);
      v107 = *(v0 + 2872);
      v108 = *(v0 + 2864);
      v109 = *(v0 + 2856);

      v110 = *v108;
      v111 = *(v108 + 1);
      (*(v106 + 32))(v105, &v108[*(v8 + 48)], v107);
      *(v0 + 2016) = v110;
      *(v0 + 2024) = v111;
      sub_10004CC30();
      sub_100014EBC(v140, v109);
      (*(v104 + 56))(v109, 0, 1, v137);
      sub_100014F20();
      sub_10004CBD0();
      sub_100007BC0(v109, &qword_1000614A0, &unk_10004F640);
      (*(v106 + 8))(v105, v107);
      (*(v145 + 8))(v152, v148);
      (*(v157 + 8))(v166, v161);
      (*(v170 + 8))(v178, v174);
      sub_100007BC0(v182, &qword_1000614D0, &unk_10004F670);
      v79 = v140;
    }

    else
    {

      sub_10004DC50();
      v89 = sub_10004DC70();
      v90 = sub_10004DEA0();
      v91 = os_log_type_enabled(v89, v90);
      v92 = *(v0 + 3512);
      v93 = *(v0 + 3176);
      v94 = *(v0 + 3120);
      if (v91)
      {
        v95 = swift_slowAlloc();
        v187[0] = swift_slowAlloc();
        *v95 = 136315394;
        *(v95 + 4) = sub_10001E340(0xD000000000000022, 0x8000000100050CF0, v187);
        *(v95 + 12) = 2080;
        *(v95 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v187);
        _os_log_impl(&_mh_execute_header, v89, v90, "%s.%s request is not available", v95, 0x16u);
        swift_arrayDestroy();
      }

      v92(v93, v94);
      v181 = *(v0 + 3080);
      v186 = *(v0 + 3112);
      v173 = *(v0 + 3064);
      v177 = *(v0 + 3056);
      v132 = *(v0 + 3048);
      v96 = *(v0 + 3024);
      v165 = *(v0 + 2976);
      v169 = *(v0 + 3000);
      v156 = *(v0 + 2968);
      v160 = *(v0 + 2984);
      v147 = *(v0 + 2960);
      v151 = *(v0 + 2952);
      v136 = *(v0 + 3032);
      v139 = *(v0 + 2896);
      v142 = *(v0 + 2880);
      v144 = *(v0 + 2872);
      v130 = *(v0 + 2856);
      v97 = *(v0 + 2440);
      v98 = *(v0 + 2416);
      v99 = *(v0 + 2408);
      sub_10004D8D0();
      v134 = enum case for CatId.disabledResponse(_:);
      v133 = *(v98 + 104);
      v133(v97);
      sub_100007C20(&_swiftEmptyArrayStorage);
      v100 = sub_10004D8B0();
      v102 = v101;

      v103 = *(v98 + 8);
      v103(v97, v99);
      *(v0 + 1856) = v100;
      *(v0 + 1864) = v102;
      sub_10004CC30();
      sub_100014EBC(v132, v130);
      (*(v136 + 56))(v130, 0, 1, v96);
      sub_10004D8A0();
      (v133)(v97, v134, v99);
      sub_10004D880();
      v103(v97, v99);
      sub_100014F20();
      sub_10004CBD0();
      (*(v142 + 8))(v139, v144);
      sub_100007BC0(v130, &qword_1000614A0, &unk_10004F640);
      (*(v147 + 8))(v156, v151);
      (*(v160 + 8))(v169, v165);
      (*(v173 + 8))(v181, v177);
      sub_100007BC0(v186, &qword_1000614D0, &unk_10004F670);
      v79 = v132;
    }
  }

  else
  {

    sub_10004DC50();
    v64 = sub_10004DC70();
    v65 = sub_10004DEA0();
    v66 = os_log_type_enabled(v64, v65);
    v67 = *(v0 + 3512);
    v68 = *(v0 + 3168);
    v69 = *(v0 + 3120);
    if (v66)
    {
      v70 = swift_slowAlloc();
      v187[0] = swift_slowAlloc();
      *v70 = 136315394;
      *(v70 + 4) = sub_10001E340(0xD000000000000022, 0x8000000100050CF0, v187);
      *(v70 + 12) = 2080;
      *(v70 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v187);
      _os_log_impl(&_mh_execute_header, v64, v65, "%s.%s request was restricted by MDM or parental controls.", v70, 0x16u);
      swift_arrayDestroy();
    }

    v67(v68, v69);
    v179 = *(v0 + 3080);
    v184 = *(v0 + 3112);
    v171 = *(v0 + 3064);
    v175 = *(v0 + 3056);
    v128 = *(v0 + 3048);
    v71 = *(v0 + 3024);
    v163 = *(v0 + 2976);
    v167 = *(v0 + 3000);
    v154 = *(v0 + 2968);
    v158 = *(v0 + 2984);
    v146 = *(v0 + 2960);
    v150 = *(v0 + 2952);
    v135 = *(v0 + 3032);
    v138 = *(v0 + 2896);
    v141 = *(v0 + 2880);
    v143 = *(v0 + 2872);
    v127 = *(v0 + 2856);
    v72 = *(v0 + 2440);
    v73 = *(v0 + 2416);
    v74 = *(v0 + 2408);
    sub_10004D8D0();
    v131 = enum case for CatId.genericRestrictionResponse(_:);
    v129 = *(v73 + 104);
    v129(v72);
    sub_100007C20(&_swiftEmptyArrayStorage);
    v75 = sub_10004D8B0();
    v77 = v76;

    v78 = *(v73 + 8);
    v78(v72, v74);
    *(v0 + 1872) = v75;
    *(v0 + 1880) = v77;
    sub_10004CC30();
    sub_100014EBC(v128, v127);
    (*(v135 + 56))(v127, 0, 1, v71);
    sub_10004D8A0();
    (v129)(v72, v131, v74);
    sub_10004D880();

    v78(v72, v74);
    sub_100014F20();
    sub_10004CBD0();
    (*(v141 + 8))(v138, v143);
    sub_100007BC0(v127, &qword_1000614A0, &unk_10004F640);
    (*(v146 + 8))(v154, v150);
    (*(v158 + 8))(v167, v163);
    (*(v171 + 8))(v179, v175);
    sub_100007BC0(v184, &qword_1000614D0, &unk_10004F670);
    v79 = v128;
  }

  sub_100014FD4(v79);
LABEL_16:
  v85 = *(v0 + 3456);
  v86 = *(v0 + 3432);
  v87 = *(v0 + 3424);
  sub_1000434C0(*(v0 + 3520));
  swift_unknownObjectRelease();
  (*(v86 + 8))(v85, v87);

  v88 = *(v0 + 8);

  return v88();
}

uint64_t sub_100039498()
{
  v2 = *v1;
  *(*v1 + 3600) = v0;

  (*(v2[345] + 8))(v2[346], v2[344]);

  v3 = v2[435];
  v4 = v2[434];
  if (v0)
  {
    v5 = sub_10003EAD8;
  }

  else
  {
    v5 = sub_10003963C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10003963C()
{
  v1 = *(v0 + 2800);
  *(v0 + 3640) = *(v0 + 3576);
  v2 = *(v0 + 2720);
  v3 = *(v0 + 2712);
  v4 = *(v0 + 2704);
  (*(*(v0 + 2784) + 32))(*(v0 + 2808), v1, *(v0 + 2776));
  *v2 = sub_10004D9E0();
  v2[1] = v5;
  (*(v3 + 104))(v2, enum case for GenerativeAssistantProgressLevel.executionFinished(_:), v4);
  sub_10004D9B0();
  (*(v3 + 8))(v2, v4);
  v6 = sub_10004D810();
  *(v0 + 3648) = v6;
  v7 = *(v6 + 16);
  *(v0 + 3656) = v7;
  if (v7)
  {
    v8 = *(v0 + 2688);
    v9 = *(v8 + 16);
    v8 += 16;
    v10 = *(v8 + 64);
    *(v0 + 3920) = v10;
    *(v0 + 3664) = *(v8 + 56);
    *(v0 + 3672) = v9;
    *(v0 + 3688) = &_swiftEmptyArrayStorage;
    *(v0 + 3680) = 0;
    v9(*(v0 + 2696), v6 + ((v10 + 32) & ~v10), *(v0 + 2680));
    v11 = swift_task_alloc();
    *(v0 + 3696) = v11;
    *v11 = v0;
    v11[1] = sub_100039E14;
    v12 = *(v0 + 2672);

    return sub_100004E18(v12);
  }

  else
  {

    *(v0 + 3704) = &_swiftEmptyArrayStorage;
    v14 = *(v0 + 2624);
    v15 = *(v0 + 2616);
    v16 = *(v0 + 2608);
    v17 = *(v0 + 2600);
    v18 = sub_10004D7C0();
    sub_10004D850();
    *(v0 + 3924) = enum case for GeneratedResponse.Outcome.rateLimited(_:);
    v19 = *(v16 + 104);
    *(v0 + 3712) = v19;
    *(v0 + 3720) = (v16 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v19(v15);
    sub_100046A14(&unk_100061DD0, &type metadata accessor for GeneratedResponse.Outcome, &protocol conformance descriptor for GeneratedResponse.Outcome);
    v20 = sub_10004DCC0();
    v21 = *(v16 + 8);
    *(v0 + 3728) = v21;
    *(v0 + 3736) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v15, v17);
    v21(v14, v17);
    v22 = swift_task_alloc();
    *(v0 + 3744) = v22;
    *v22 = v0;
    v22[1] = sub_10003A310;
    v23 = *(v0 + 3552);
    v24 = *(v0 + 3544);
    v25 = *(v0 + 2640);

    return static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:)(v25, v18 & 1, v24, v23, (v20 & 1) == 0);
  }
}

uint64_t sub_100039970()
{
  v2 = *v1;
  *(*v1 + 3632) = v0;

  v3 = *(v2 + 3480);
  v4 = *(v2 + 3472);
  if (v0)
  {
    v5 = sub_100040344;
  }

  else
  {
    v5 = sub_100039AC4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100039AC4()
{
  (*(*(v0 + 2736) + 8))(*(v0 + 2744), *(v0 + 2728));
  v1 = *(v0 + 2792);
  *(v0 + 3640) = *(v0 + 3608);
  v2 = *(v0 + 2720);
  v3 = *(v0 + 2712);
  v4 = *(v0 + 2704);
  (*(*(v0 + 2784) + 32))(*(v0 + 2808), v1, *(v0 + 2776));
  *v2 = sub_10004D9E0();
  v2[1] = v5;
  (*(v3 + 104))(v2, enum case for GenerativeAssistantProgressLevel.executionFinished(_:), v4);
  sub_10004D9B0();
  (*(v3 + 8))(v2, v4);
  v6 = sub_10004D810();
  *(v0 + 3648) = v6;
  v7 = *(v6 + 16);
  *(v0 + 3656) = v7;
  if (v7)
  {
    v8 = *(v0 + 2688);
    v9 = *(v8 + 16);
    v8 += 16;
    v10 = *(v8 + 64);
    *(v0 + 3920) = v10;
    *(v0 + 3664) = *(v8 + 56);
    *(v0 + 3672) = v9;
    *(v0 + 3688) = &_swiftEmptyArrayStorage;
    *(v0 + 3680) = 0;
    v9(*(v0 + 2696), v6 + ((v10 + 32) & ~v10), *(v0 + 2680));
    v11 = swift_task_alloc();
    *(v0 + 3696) = v11;
    *v11 = v0;
    v11[1] = sub_100039E14;
    v12 = *(v0 + 2672);

    return sub_100004E18(v12);
  }

  else
  {

    *(v0 + 3704) = &_swiftEmptyArrayStorage;
    v14 = *(v0 + 2624);
    v15 = *(v0 + 2616);
    v16 = *(v0 + 2608);
    v17 = *(v0 + 2600);
    v18 = sub_10004D7C0();
    sub_10004D850();
    *(v0 + 3924) = enum case for GeneratedResponse.Outcome.rateLimited(_:);
    v19 = *(v16 + 104);
    *(v0 + 3712) = v19;
    *(v0 + 3720) = (v16 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v19(v15);
    sub_100046A14(&unk_100061DD0, &type metadata accessor for GeneratedResponse.Outcome, &protocol conformance descriptor for GeneratedResponse.Outcome);
    v20 = sub_10004DCC0();
    v21 = *(v16 + 8);
    *(v0 + 3728) = v21;
    *(v0 + 3736) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v15, v17);
    v21(v14, v17);
    v22 = swift_task_alloc();
    *(v0 + 3744) = v22;
    *v22 = v0;
    v22[1] = sub_10003A310;
    v23 = *(v0 + 3552);
    v24 = *(v0 + 3544);
    v25 = *(v0 + 2640);

    return static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:)(v25, v18 & 1, v24, v23, (v20 & 1) == 0);
  }
}

uint64_t sub_100039E14()
{
  v1 = *v0;
  v2 = *(*v0 + 2696);
  v3 = *(*v0 + 2688);
  v4 = *(*v0 + 2680);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 3480);
  v6 = *(v1 + 3472);

  return _swift_task_switch(sub_100039F98, v6, v5);
}

uint64_t sub_100039F98()
{
  (*(*(v0 + 2656) + 16))(*(v0 + 2664), *(v0 + 2672), *(v0 + 2648));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 3688);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100048484(0, v2[2] + 1, 1, *(v0 + 3688));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100048484((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 3656);
  v6 = *(v0 + 2664);
  v7 = *(v0 + 2656);
  v8 = *(v0 + 2648);
  v9 = *(v0 + 3680) + 1;
  (*(v7 + 8))(*(v0 + 2672), v8);
  v2[2] = v4 + 1;
  (*(v7 + 32))(v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4, v6, v8);
  if (v9 == v5)
  {

    *(v0 + 3704) = v2;
    v10 = *(v0 + 2624);
    v11 = *(v0 + 2616);
    v12 = *(v0 + 2608);
    v13 = *(v0 + 2600);
    v14 = sub_10004D7C0();
    sub_10004D850();
    *(v0 + 3924) = enum case for GeneratedResponse.Outcome.rateLimited(_:);
    v15 = *(v12 + 104);
    *(v0 + 3712) = v15;
    *(v0 + 3720) = (v12 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v15(v11);
    sub_100046A14(&unk_100061DD0, &type metadata accessor for GeneratedResponse.Outcome, &protocol conformance descriptor for GeneratedResponse.Outcome);
    v16 = sub_10004DCC0();
    v17 = *(v12 + 8);
    *(v0 + 3728) = v17;
    *(v0 + 3736) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v11, v13);
    v17(v10, v13);
    v18 = swift_task_alloc();
    *(v0 + 3744) = v18;
    *v18 = v0;
    v18[1] = sub_10003A310;
    v19 = *(v0 + 3552);
    v20 = *(v0 + 3544);
    v21 = *(v0 + 2640);

    return static ModelDisclaimer.rateLimitDisclaimer(hasExceededRateLimit:partnerName:shouldIncludeMessage:)(v21, v14 & 1, v20, v19, (v16 & 1) == 0);
  }

  else
  {
    v22 = *(v0 + 3680) + 1;
    *(v0 + 3688) = v2;
    *(v0 + 3680) = v22;
    (*(v0 + 3672))(*(v0 + 2696), *(v0 + 3648) + ((*(v0 + 3920) + 32) & ~*(v0 + 3920)) + *(v0 + 3664) * v22, *(v0 + 2680));
    v23 = swift_task_alloc();
    *(v0 + 3696) = v23;
    *v23 = v0;
    v23[1] = sub_100039E14;
    v24 = *(v0 + 2672);

    return sub_100004E18(v24);
  }
}

uint64_t sub_10003A310()
{
  v1 = *v0;

  v2 = *(v1 + 3480);
  v3 = *(v1 + 3472);

  return _swift_task_switch(sub_10003A430, v3, v2);
}

uint64_t sub_10003A430()
{
  v1 = *(v0 + 3728);
  v2 = *(v0 + 3712);
  v3 = *(v0 + 2624);
  v4 = *(v0 + 2616);
  v5 = *(v0 + 2600);
  v6 = *(v0 + 2592);
  v7 = *(v0 + 2136);
  v8 = *(v0 + 2128);
  v9 = *(v7 + 56);
  *(v0 + 3752) = v9;
  *(v0 + 3760) = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v70 = v9;
  v9(v6, 1, 1, v8);
  sub_10004D850();
  v2(v4, enum case for GeneratedResponse.Outcome.signInRequired(_:), v5);
  v10 = sub_10004D830();
  v1(v4, v5);
  v1(v3, v5);
  if (v10)
  {
    v11 = *(v0 + 2512);
    v12 = *(v0 + 2504);
    v13 = *(v0 + 2496);
    sub_10004D670();
    if ((*(v11 + 48))(v13, 1, v12) != 1)
    {
      v38 = *(v0 + 2440);
      v39 = *(v0 + 2416);
      v40 = *(v0 + 2408);
      (*(*(v0 + 2512) + 32))(*(v0 + 2520), *(v0 + 2496), *(v0 + 2504));
      sub_10004DA50();
      sub_10004D8A0();
      (*(v39 + 104))(v38, enum case for CatId.signInRequired(_:), v40);
      sub_10004D5F0();
      sub_10004D880();

      (*(v39 + 8))(v38, v40);
      *(v0 + 2056) = &_swiftEmptyArrayStorage;
      sub_100046A14(&unk_100061510, &type metadata accessor for ConfirmationConditions, &protocol conformance descriptor for ConfirmationConditions);
      sub_1000026D8(&unk_100061DF0, &unk_100050DF0);
      sub_100002FC8(&unk_100061520, &unk_100061DF0, &unk_100050DF0, &protocol conformance descriptor for [A]);
      sub_10004DF00();
      v41 = swift_task_alloc();
      *(v0 + 3768) = v41;
      *v41 = v0;
      v41[1] = sub_10003AD08;
      v42 = *(v0 + 3488);
      v43 = *(v0 + 2904);
      v44 = *(v0 + 2464);
      v45 = *(v0 + 2400);

      return AppIntent.requestConfirmation(conditions:actionName:dialog:)(v45, v44, v43, &type metadata for GenerateRichContentFromMediaIntent, v42);
    }

    sub_100007BC0(*(v0 + 2496), &qword_100061480, &qword_10004F2F0);
  }

  v14 = *(v0 + 3728);
  v15 = *(v0 + 3712);
  v16 = *(v0 + 3924);
  v17 = *(v0 + 2624);
  v18 = *(v0 + 2616);
  v19 = *(v0 + 2600);
  sub_10004D850();
  v15(v18, v16, v19);
  v20 = sub_10004D830();
  v14(v18, v19);
  v14(v17, v19);
  if (v20)
  {
    v21 = *(v0 + 2632);
    v67 = *(v0 + 2576);
    v68 = *(v0 + 2592);
    v22 = *(v0 + 2344);
    v23 = *(v0 + 2320);
    v66 = *(v0 + 2312);
    v24 = *(v0 + 2296);
    v25 = *(v0 + 2288);
    v64 = *(v0 + 2640);
    v65 = *(v0 + 2280);
    v69 = *(v0 + 2128);
    sub_10004D7F0();
    sub_10004CCC0();
    sub_10001564C(v64, v21, &unk_100061490, &qword_10004F630);
    sub_10004D370();
    (*(v25 + 16))(v22, v24, v65);
    (*(v23 + 104))(v22, enum case for GenerativeResultModels.GenerativeRateLimitedSnippet(_:), v66);
    sub_100046A14(&unk_100061DE0, &type metadata accessor for GenerativeResultModels, &protocol conformance descriptor for GenerativeResultModels);
    sub_10004D2C0();
    (*(v23 + 8))(v22, v66);
    sub_10004D340();
    sub_10004CE50();
    sub_10004CFA0();
    (*(v25 + 8))(v24, v65);
    sub_100007BC0(v68, &qword_100061488, &unk_100050D70);
    v70(v67, 0, 1, v69);
    sub_100015594(v67, v68);
    v26 = enum case for GeneratedResponse.Outcome.success(_:);
  }

  else
  {
    v27 = *(v0 + 3728);
    v28 = *(v0 + 3712);
    v29 = *(v0 + 2624);
    v30 = *(v0 + 2616);
    v31 = *(v0 + 2600);
    sub_10004D850();
    v26 = enum case for GeneratedResponse.Outcome.success(_:);
    v28(v30, enum case for GeneratedResponse.Outcome.success(_:), v31);
    v32 = sub_10004D830();
    v27(v30, v31);
    v27(v29, v31);
    if (v32)
    {
      *(v0 + 3784) = sub_10004D730();
      *(v0 + 3792) = v33;
      *(v0 + 3800) = sub_10004D600();
      *(v0 + 3808) = v34;
      *(v0 + 3816) = sub_10004D770();
      *(v0 + 3824) = v35;
      sub_10004D740();
      *(v0 + 3832) = sub_10004D780();
      *(v0 + 3840) = sub_10004D7A0();
      *(v0 + 3848) = v36;
      v37 = sub_10003B340;
LABEL_14:

      return _swift_task_switch(v37, 0, 0);
    }

    v46 = *(v0 + 3752);
    v47 = *(v0 + 2592);
    v48 = *(v0 + 2568);
    v49 = *(v0 + 2128);
    sub_100007BC0(v47, &qword_100061488, &unk_100050D70);
    v46(v48, 1, 1, v49);
    sub_100015594(v48, v47);
  }

  v50 = *(v0 + 3728);
  v51 = *(v0 + 3712);
  v52 = *(v0 + 2624);
  v53 = *(v0 + 2616);
  v54 = *(v0 + 2600);
  (*(v0 + 3752))(*(v0 + 2560), 1, 1, *(v0 + 2128));
  sub_10004D850();
  v51(v53, v26, v54);
  v55 = sub_10004D830();
  v50(v53, v54);
  v50(v52, v54);
  if (v55)
  {
    *(v0 + 3856) = sub_10004D730();
    *(v0 + 3864) = v56;
    *(v0 + 3872) = sub_10004D600();
    *(v0 + 3880) = v57;
    *(v0 + 3888) = sub_10004D770();
    *(v0 + 3896) = v58;
    *(v0 + 3904) = sub_10004D750();
    sub_10004D740();
    v37 = sub_10003B850;
    goto LABEL_14;
  }

  *(v0 + 1920) = sub_10004D7F0();
  *(v0 + 1928) = v59;
  sub_10004CC30();
  *(v0 + 1936) = sub_10004D860();
  *(v0 + 1944) = v60;
  sub_10004CC30();
  v61 = swift_task_alloc();
  *(v0 + 3912) = v61;
  *v61 = v0;
  v61[1] = sub_10003BD38;
  v62 = *(v0 + 3704);

  return sub_100015B24(v62);
}

uint64_t sub_10003AD08()
{
  v2 = *v1;
  *(*v1 + 3776) = v0;

  if (v0)
  {
    v3 = v2[363];
    v4 = v2[360];
    v5 = v2[359];
    v6 = v2[308];
    v7 = v2[307];
    v8 = v2[306];
    (*(v2[299] + 8))(v2[300], v2[298]);
    (*(v4 + 8))(v3, v5);
    (*(v7 + 8))(v6, v8);

    v9 = v2[435];
    v10 = v2[434];
    v11 = sub_100041BD4;
  }

  else
  {
    v12 = v2[363];
    v13 = v2[360];
    v14 = v2[359];
    v15 = v2[308];
    v16 = v2[307];
    v17 = v2[306];
    (*(v2[299] + 8))(v2[300], v2[298]);
    (*(v13 + 8))(v12, v14);
    (*(v16 + 8))(v15, v17);
    v9 = v2[435];
    v10 = v2[434];
    v11 = sub_10003AF10;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_10003AF10(uint64_t a1)
{
  v25 = v1[469];
  v26 = v1[315];
  v27 = v1[314];
  v28 = v1[313];
  v2 = v1[297];
  v3 = v1[296];
  v21 = v1[295];
  v4 = v1[294];
  v5 = v1[290];
  v6 = v1[289];
  v22 = v1[323];
  v23 = v1[266];
  v24 = v1[324];
  sub_10004DBB0();
  sub_10004CA70();
  sub_10004CB80();
  (*(v3 + 8))(v2, v21);
  sub_10004DB80();

  sub_10004D360();
  (*(v5 + 104))(v4, enum case for GenerativeResultModels.GenerativeDismissalSnippet(_:), v6);
  sub_100046A14(&unk_100061DE0, &type metadata accessor for GenerativeResultModels, &protocol conformance descriptor for GenerativeResultModels);
  sub_10004D2C0();
  (*(v5 + 8))(v4, v6);
  sub_10004D340();
  sub_10004CE50();
  sub_10004CFA0();
  sub_100007BC0(v24, &qword_100061488, &unk_100050D70);
  v25(v22, 0, 1, v23);
  sub_100015594(v22, v24);
  sub_100014154();
  (*(v27 + 8))(v26, v28);
  v7 = v1[466];
  v8 = v1[464];
  v9 = v1[328];
  v10 = v1[327];
  v11 = v1[325];
  (v1[469])(v1[320], 1, 1, v1[266]);
  sub_10004D850();
  v8(v10, enum case for GeneratedResponse.Outcome.success(_:), v11);
  v12 = sub_10004D830();
  v7(v10, v11);
  v7(v9, v11);
  if (v12)
  {
    v1[482] = sub_10004D730();
    v1[483] = v13;
    v1[484] = sub_10004D600();
    v1[485] = v14;
    v1[486] = sub_10004D770();
    v1[487] = v15;
    v1[488] = sub_10004D750();
    sub_10004D740();

    return _swift_task_switch(sub_10003B850, 0, 0);
  }

  else
  {
    v1[240] = sub_10004D7F0();
    v1[241] = v16;
    sub_10004CC30();
    v1[242] = sub_10004D860();
    v1[243] = v17;
    sub_10004CC30();
    v18 = swift_task_alloc();
    v1[489] = v18;
    *v18 = v1;
    v18[1] = sub_10003BD38;
    v19 = v1[463];

    return sub_100015B24(v19);
  }
}

uint64_t sub_10003B340()
{
  v14 = v0[481];
  v1 = v0[480];
  v2 = v0[330];
  v3 = v0[329];
  v13 = v0[311];
  v4 = v0[292];
  v5 = v0[290];
  v6 = v0[289];
  v11 = v0[284];
  v7 = v0[283];
  v12 = v0[282];
  sub_10001564C(v13, v0[310], &qword_100061480, &qword_10004F2F0);
  sub_10001564C(v2, v3, &unk_100061490, &qword_10004F630);

  sub_1000156B4(v1, v14);
  sub_10004D390();
  (*(v7 + 16))(v4, v11, v12);
  (*(v5 + 104))(v4, enum case for GenerativeResultModels.GenerativeRichTextResultSnippet(_:), v6);
  sub_100046A14(&unk_100061DE0, &type metadata accessor for GenerativeResultModels, &protocol conformance descriptor for GenerativeResultModels);
  sub_10004D2C0();
  (*(v5 + 8))(v4, v6);
  sub_10004D340();
  sub_10004CE50();
  sub_10004CFA0();
  sub_1000156C8(v1, v14);
  (*(v7 + 8))(v11, v12);
  sub_100007BC0(v13, &qword_100061480, &qword_10004F2F0);
  v8 = v0[435];
  v9 = v0[434];

  return _swift_task_switch(sub_10003B5F0, v9, v8);
}

uint64_t sub_10003B5F0()
{
  v1 = v0[469];
  v2 = v0[324];
  v3 = v0[321];
  v4 = v0[266];
  sub_100007BC0(v2, &qword_100061488, &unk_100050D70);
  v1(v3, 0, 1, v4);
  sub_100015594(v3, v2);
  v5 = v0[466];
  v6 = v0[464];
  v7 = v0[328];
  v8 = v0[327];
  v9 = v0[325];
  (v0[469])(v0[320], 1, 1, v0[266]);
  sub_10004D850();
  v6(v8, enum case for GeneratedResponse.Outcome.success(_:), v9);
  LOBYTE(v2) = sub_10004D830();
  v5(v8, v9);
  v5(v7, v9);
  if (v2)
  {
    v0[482] = sub_10004D730();
    v0[483] = v10;
    v0[484] = sub_10004D600();
    v0[485] = v11;
    v0[486] = sub_10004D770();
    v0[487] = v12;
    v0[488] = sub_10004D750();
    sub_10004D740();

    return _swift_task_switch(sub_10003B850, 0, 0);
  }

  else
  {
    v0[240] = sub_10004D7F0();
    v0[241] = v13;
    sub_10004CC30();
    v0[242] = sub_10004D860();
    v0[243] = v14;
    sub_10004CC30();
    v15 = swift_task_alloc();
    v0[489] = v15;
    *v15 = v0;
    v15[1] = sub_10003BD38;
    v16 = v0[463];

    return sub_100015B24(v16);
  }
}

uint64_t sub_10003B850()
{
  v1 = v0[488];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[277];
    v4 = v0[274];
    sub_100045A98(0, v2, 0);
    v6 = *(v4 + 16);
    v5 = v4 + 16;
    v7 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v23 = *(v5 + 56);
    v24 = v6;
    do
    {
      v8 = v0[275];
      v9 = v0[273];
      v24(v8, v7, v9);
      sub_10004D680();
      sub_10004D690();
      sub_10004D3E0();
      (*(v5 - 8))(v8, v9);
      v11 = *(&_swiftEmptyArrayStorage + 2);
      v10 = *(&_swiftEmptyArrayStorage + 3);
      if (v11 >= v10 >> 1)
      {
        sub_100045A98((v10 > 1), v11 + 1, 1);
      }

      v12 = v0[278];
      v13 = v0[276];
      *(&_swiftEmptyArrayStorage + 2) = v11 + 1;
      (*(v3 + 32))(&_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v12, v13);
      v7 += v23;
      --v2;
    }

    while (v2);
  }

  v25 = v0[309];
  v14 = v0[291];
  v15 = v0[290];
  v16 = v0[289];
  v17 = v0[281];
  v18 = v0[280];
  v22 = v0[279];
  sub_10001564C(v25, v0[310], &qword_100061480, &qword_10004F2F0);
  sub_10004D3C0();
  (*(v18 + 16))(v14, v17, v22);
  (*(v15 + 104))(v14, enum case for GenerativeResultModels.GenerativeAttributionSnippet(_:), v16);
  sub_100046A14(&unk_100061DE0, &type metadata accessor for GenerativeResultModels, &protocol conformance descriptor for GenerativeResultModels);
  sub_10004D2C0();
  (*(v15 + 8))(v14, v16);
  sub_10004D340();
  sub_10004CE50();
  sub_10004CFA0();
  (*(v18 + 8))(v17, v22);
  sub_100007BC0(v25, &qword_100061480, &qword_10004F2F0);
  v19 = v0[435];
  v20 = v0[434];

  return _swift_task_switch(sub_10003BBF8, v20, v19);
}

uint64_t sub_10003BBF8()
{
  v1 = v0[469];
  v2 = v0[320];
  v3 = v0[319];
  v4 = v0[266];
  sub_100007BC0(v2, &qword_100061488, &unk_100050D70);
  v1(v3, 0, 1, v4);
  sub_100015594(v3, v2);
  v0[240] = sub_10004D7F0();
  v0[241] = v5;
  sub_10004CC30();
  v0[242] = sub_10004D860();
  v0[243] = v6;
  sub_10004CC30();
  v7 = swift_task_alloc();
  v0[489] = v7;
  *v7 = v0;
  v7[1] = sub_10003BD38;
  v8 = v0[463];

  return sub_100015B24(v8);
}

uint64_t sub_10003BD38()
{
  v1 = *v0;

  v2 = *(v1 + 3480);
  v3 = *(v1 + 3472);

  return _swift_task_switch(sub_10003BE7C, v3, v2);
}

void sub_10003BE7C()
{
  v236 = v0;
  v1 = v0[381];
  v2 = v0[380];
  sub_100017588();
  sub_10004DC50();
  sub_100014EBC(v1, v2);
  v3 = sub_10004DC70();
  v4 = sub_10004DEA0();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[439];
  v7 = v0[399];
  v8 = v0[390];
  v9 = v0[380];
  if (v5)
  {
    v232 = v0[439];
    v10 = swift_slowAlloc();
    v235[0] = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_10001E340(0xD000000000000022, 0x8000000100050CF0, v235);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, v235);
    *(v10 + 22) = 2080;
    v11 = sub_100017684();
    v13 = v12;
    sub_100014FD4(v9);
    v14 = sub_10001E340(v11, v13, v235);

    *(v10 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s %s", v10, 0x20u);
    swift_arrayDestroy();

    v232(v7, v8);
  }

  else
  {

    sub_100014FD4(v9);
    v6(v7, v8);
  }

  v15 = v0[303];
  v16 = v0[302];
  v17 = v0[301];
  sub_10004D800();
  v18 = enum case for CatId.empty(_:);
  v226 = *(v16 + 104);
  v226(v15, enum case for CatId.empty(_:), v17);
  sub_100046A14(&unk_100061500, &type metadata accessor for CatId, &protocol conformance descriptor for CatId);
  sub_10004DDF0();
  sub_10004DDF0();
  if (v0[244] == v0[246] && v0[245] == v0[247])
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_10004DFA0();
  }

  v20 = v0[304];
  v21 = v0[301];
  v22 = *(v0[302] + 8);
  v22(v0[303], v21);
  v221 = v22;
  v22(v20, v21);

  v233 = v18;
  if ((v19 & 1) == 0)
  {
    v25 = v0[324];
    v26 = v0[318];
    v27 = v0[267];
    v28 = v0[266];

    sub_10001564C(v25, v26, &qword_100061488, &unk_100050D70);
    v29 = (*(v27 + 48))(v26, 1, v28);
    sub_100007BC0(v26, &qword_100061488, &unk_100050D70);
    if (v29 == 1)
    {
      v205 = sub_10004D7F0();
      v209 = v30;
    }

    else
    {
      v205 = 0;
      v209 = 0xE000000000000000;
    }

LABEL_19:
    v62 = v0[317];
    v63 = v0[267];
    v64 = v0[266];
    sub_10001564C(v0[324], v62, &qword_100061488, &unk_100050D70);
    v65 = *(v63 + 48);
    if (v65(v62, 1, v64) == 1)
    {
      v218 = v0[389];
      v191 = v0[383];
      v195 = v0[382];
      v200 = v0[385];
      v66 = v0[381];
      v67 = v0[379];
      v148 = v0[378];
      v183 = v0[372];
      v187 = v0[375];
      v177 = v0[371];
      v180 = v0[373];
      v172 = v0[370];
      v174 = v0[369];
      v68 = v0[362];
      v69 = v0[360];
      v152 = v0[359];
      v70 = v0[357];
      v168 = v0[352];
      v170 = v0[354];
      v164 = v0[351];
      v166 = v0[353];
      v160 = v0[348];
      v162 = v0[347];
      v158 = v0[330];
      v156 = v0[324];
      v154 = v0[320];
      v71 = v0[305];
      v72 = v0[301];
      sub_100007BC0(v0[317], &qword_100061488, &unk_100050D70);
      sub_100014EBC(v66, v70);
      (*(v67 + 56))(v70, 0, 1, v148);
      v73 = v66;
      v226(v71, v233, v72);
      sub_1000448AC(v205, v209, v71, v66, v68);

      v221(v71, v72);
      sub_100014F20();
      sub_10004CBD0();
      (*(v69 + 8))(v68, v152);
      sub_100007BC0(v70, &qword_1000614A0, &unk_10004F640);
      sub_100007BC0(v154, &qword_100061488, &unk_100050D70);
      sub_100007BC0(v156, &qword_100061488, &unk_100050D70);
      sub_100007BC0(v158, &unk_100061490, &qword_10004F630);
      (*(v160 + 8))(v164, v162);
      (*(v166 + 8))(v170, v168);
      (*(v172 + 8))(v177, v174);
      (*(v180 + 8))(v187, v183);
      (*(v191 + 8))(v200, v195);
    }

    else
    {
      v74 = v0[379];
      v75 = v0[360];
      v76 = v0[320];
      v77 = v0[316];
      v78 = v0[267];
      v79 = v0[266];
      v145 = *(v78 + 32);
      (v145)(v0[269], v0[317], v79);
      sub_10001564C(v76, v77, &qword_100061488, &unk_100050D70);
      v80 = v65(v77, 1, v79);
      v218 = v0[389];
      v81 = (v74 + 56);
      v153 = (v75 + 8);
      v196 = v0[385];
      v159 = (v78 + 8);
      v201 = v0[383];
      v192 = v0[382];
      v82 = v0[381];
      v147 = v0[378];
      v184 = v0[375];
      v188 = v0[373];
      v178 = v0[370];
      v181 = v0[372];
      v173 = v0[369];
      v175 = v0[371];
      v83 = v0[362];
      v149 = v0[359];
      v84 = v0[357];
      v169 = v0[354];
      v171 = v0[353];
      v167 = v0[352];
      v163 = v0[351];
      v165 = v0[348];
      v161 = v0[347];
      v157 = v0[330];
      v155 = v0[324];
      v151 = v0[320];
      v85 = v0[316];
      v86 = v0[305];
      v87 = v0[301];
      v150 = v0[269];
      if (v80 == 1)
      {
        v146 = v0[266];
        sub_100007BC0(v85, &qword_100061488, &unk_100050D70);
        v73 = v82;
        sub_100014EBC(v82, v84);
        (*v81)(v84, 0, 1, v147);
        v226(v86, v233, v87);
        sub_1000448AC(v205, v209, v86, v82, v83);

        v221(v86, v87);
        sub_100014F20();
        sub_10004CBF0();
        (*v153)(v83, v149);
        sub_100007BC0(v84, &qword_1000614A0, &unk_10004F640);
        (*v159)(v150, v146);
      }

      else
      {
        v88 = v0[268];
        v144 = v0[266];
        v145(v88, v85);
        v73 = v82;
        sub_100014EBC(v82, v84);
        (*v81)(v84, 0, 1, v147);
        v226(v86, v233, v87);
        sub_1000448AC(v205, v209, v86, v82, v83);

        v221(v86, v87);
        sub_100014F20();
        sub_10004CBE0();
        (*v153)(v83, v149);
        sub_100007BC0(v84, &qword_1000614A0, &unk_10004F640);
        v89 = *v159;
        (*v159)(v88, v144);
        v89(v150, v144);
      }

      sub_100007BC0(v151, &qword_100061488, &unk_100050D70);
      sub_100007BC0(v155, &qword_100061488, &unk_100050D70);
      sub_100007BC0(v157, &unk_100061490, &qword_10004F630);
      (*(v165 + 8))(v163, v161);
      (*(v171 + 8))(v169, v167);
      (*(v178 + 8))(v175, v173);
      (*(v188 + 8))(v184, v181);
      (*(v201 + 8))(v196, v192);
    }

    goto LABEL_25;
  }

  v23 = sub_10004D820();
  if (*(v23 + 16) == 1)
  {
    v24 = v23;

    if (v24[2])
    {
      v205 = v24[4];
      v209 = v24[5];

      goto LABEL_19;
    }

    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  v31 = v0[353];
  v222 = v0[352];
  v227 = v0[354];
  v32 = v0[348];
  v213 = v0[347];
  v217 = v0[351];
  v33 = v0[330];
  v34 = v0[324];
  v35 = v0[320];
  v36 = v0[272];
  v37 = v0[271];
  v38 = v0[270];

  *v36 = 0xD00000000000002ELL;
  v36[1] = 0x80000001000519B0;
  (*(v37 + 104))(v36, enum case for GATError.notImplemented(_:), v38);
  v39 = sub_10004D5C0();
  (*(v37 + 8))(v36, v38);
  swift_willThrow();
  sub_100007BC0(v35, &qword_100061488, &unk_100050D70);
  sub_100007BC0(v34, &qword_100061488, &unk_100050D70);
  sub_100007BC0(v33, &unk_100061490, &qword_10004F630);
  (*(v32 + 8))(v217, v213);
  (*(v31 + 8))(v227, v222);
  v0[256] = v39;
  swift_errorRetain();
  sub_1000026D8(&qword_100061990, &unk_100050DE0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_10004DC60();
    swift_errorRetain();
    v94 = sub_10004DC70();
    v95 = sub_10004DEB0();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v96 = 138412290;
      swift_errorRetain();
      v98 = _swift_stdlib_bridgeErrorToNSError();
      *(v96 + 4) = v98;
      *v97 = v98;
      _os_log_impl(&_mh_execute_header, v94, v95, "#GenPhotoReq | OnScreenContentRequest | error = %@", v96, 0xCu);
      sub_100007BC0(v97, &qword_100061DC0, &unk_100050840);
    }

    v99 = v0[439];
    v100 = v0[392];
    v101 = v0[390];
    v219 = v0[385];
    v224 = v0[389];
    v102 = v0[383];
    v229 = v0[381];
    v210 = v0[375];
    v214 = v0[382];
    v103 = v0[373];
    v202 = v0[371];
    v206 = v0[372];
    v104 = v0[370];
    v197 = v0[369];

    v99(v100, v101);
    v105 = [objc_allocWithZone(SDRDiagnosticReporter) init];
    type metadata accessor for AutoBugCaptureHelper();
    v106 = swift_allocObject();
    *(v106 + 16) = v105;
    *(v106 + 24) = 0;
    v107 = sub_10004D0F0();
    sub_10004AAE4(0, v107);

    swift_willThrow();
    (*(v104 + 8))(v202, v197);
    (*(v103 + 8))(v210, v206);
    (*(v102 + 8))(v219, v214);
    sub_100007BC0(v224, &qword_1000614D0, &unk_10004F670);
    sub_100014FD4(v229);
    goto LABEL_39;
  }

  v40 = v0[264];
  v41 = v0[263];
  v42 = v0[261];
  v43 = v0[260];

  (*(v42 + 32))(v41, v40, v43);
  v44 = sub_10004D900();
  LOBYTE(v41) = sub_100044DE4(v41, v44);

  if ((v41 & 1) == 0)
  {
    v108 = v0[263];
    v109 = v0[262];
    v110 = v0[261];
    v111 = v0[260];

    sub_10004DC60();
    v234 = *(v110 + 16);
    v234(v109, v108, v111);
    v112 = sub_10004DC70();
    v113 = sub_10004DEB0();
    v114 = os_log_type_enabled(v112, v113);
    v115 = v0[262];
    v116 = v0[261];
    v117 = v0[260];
    if (v114)
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *v118 = 138412290;
      sub_100046A14(&qword_100061DC8, &type metadata accessor for ContentRequestErrors, &protocol conformance descriptor for ContentRequestErrors);
      swift_allocError();
      v234(v120, v115, v117);
      v121 = _swift_stdlib_bridgeErrorToNSError();
      v230 = *(v116 + 8);
      v230(v115, v117);
      *(v118 + 4) = v121;
      *v119 = v121;
      _os_log_impl(&_mh_execute_header, v112, v113, "#GenPhotoReq | OnScreenContentRequest | error = %@", v118, 0xCu);
      sub_100007BC0(v119, &qword_100061DC0, &unk_100050840);
    }

    else
    {

      v230 = *(v116 + 8);
      v230(v115, v117);
    }

    v212 = v0[385];
    v216 = v0[389];
    v204 = v0[383];
    v208 = v0[382];
    v220 = v0[381];
    v190 = v0[373];
    v194 = v0[372];
    v199 = v0[375];
    v133 = v0[370];
    v182 = v0[369];
    v186 = v0[371];
    v134 = v0[263];
    v135 = v0[260];
    (v0[439])(v0[393], v0[390]);
    v136 = [objc_allocWithZone(SDRDiagnosticReporter) init];
    type metadata accessor for AutoBugCaptureHelper();
    v137 = swift_allocObject();
    *(v137 + 16) = v136;
    *(v137 + 24) = 0;
    sub_100046A14(&qword_100061DC8, &type metadata accessor for ContentRequestErrors, &protocol conformance descriptor for ContentRequestErrors);
    swift_allocError();
    v234(v138, v134, v135);
    v139 = sub_10004D0F0();
    sub_10004AAE4(0, v139);

    swift_allocError();
    v234(v140, v134, v135);
    swift_willThrow();
    v230(v134, v135);
    (*(v133 + 8))(v186, v182);
    (*(v190 + 8))(v199, v194);
    (*(v204 + 8))(v212, v208);
    sub_100007BC0(v216, &qword_1000614D0, &unk_10004F670);
    sub_100014FD4(v220);

LABEL_39:
    v141 = v0[432];
    v142 = v0[429];
    v143 = v0[428];
    sub_1000434C0(v0[440]);
    swift_unknownObjectRelease();
    (*(v142 + 8))(v141, v143);

    v93 = v0[1];
    goto LABEL_26;
  }

  v45 = v0[265];
  v46 = v0[263];
  v47 = v0[261];
  v48 = v0[260];
  sub_10004DC60();
  v49 = *(v47 + 16);
  v49(v45, v46, v48);
  v50 = sub_10004DC70();
  v51 = sub_10004DEB0();
  v52 = os_log_type_enabled(v50, v51);
  v53 = v0[265];
  v54 = v0[263];
  v55 = v0[261];
  v56 = v0[260];
  if (v52)
  {
    v223 = v49;
    v57 = swift_slowAlloc();
    v228 = v54;
    v58 = swift_slowAlloc();
    *v57 = 138412290;
    sub_100046A14(&qword_100061DC8, &type metadata accessor for ContentRequestErrors, &protocol conformance descriptor for ContentRequestErrors);
    swift_allocError();
    v223(v59, v53, v56);
    v60 = _swift_stdlib_bridgeErrorToNSError();
    v61 = *(v55 + 8);
    v61(v53, v56);
    *(v57 + 4) = v60;
    *v58 = v60;
    _os_log_impl(&_mh_execute_header, v50, v51, "#GenPhotoReq | OnScreenContentRequest | not a functional error = %@", v57, 0xCu);
    sub_100007BC0(v58, &qword_100061DC0, &unk_100050840);

    v61(v228, v56);
  }

  else
  {

    v122 = *(v55 + 8);
    v122(v54, v56);
    v122(v53, v56);
  }

  v123 = v0[381];
  v124 = v0[379];
  v125 = v0[378];
  v126 = v0[356];
  (v0[439])(v0[398], v0[390]);

  sub_100014EBC(v123, v126);
  (*(v124 + 56))(v126, 0, 1, v125);
  sub_10004CC20();
  v127 = v0[239];
  if (!v127)
  {
    goto LABEL_41;
  }

  v176 = v0[238];
  v215 = v0[383];
  v218 = v0[389];
  v225 = v0[382];
  v231 = v0[385];
  v73 = v0[381];
  v207 = v0[372];
  v211 = v0[375];
  v198 = v0[371];
  v203 = v0[373];
  v189 = v0[370];
  v193 = v0[369];
  v128 = v0[361];
  v129 = v0[360];
  v179 = v0[356];
  v185 = v0[359];
  v130 = v0[305];
  v131 = v0[302];
  v132 = v0[301];

  (*(v131 + 104))(v130, v233, v132);
  sub_1000448AC(v176, v127, v130, v73, v128);

  (*(v131 + 8))(v130, v132);
  sub_100014F20();
  sub_10004CBD0();
  (*(v129 + 8))(v128, v185);
  sub_100007BC0(v179, &qword_1000614A0, &unk_10004F640);
  (*(v189 + 8))(v198, v193);
  (*(v203 + 8))(v211, v207);
  (*(v215 + 8))(v231, v225);
LABEL_25:
  sub_100007BC0(v218, &qword_1000614D0, &unk_10004F670);
  sub_100014FD4(v73);
  v90 = v0[432];
  v91 = v0[429];
  v92 = v0[428];
  sub_1000434C0(v0[440]);
  swift_unknownObjectRelease();
  (*(v91 + 8))(v90, v92);

  v93 = v0[1];
LABEL_26:

  v93();
}

uint64_t sub_10003E358()
{
  v1 = v0[385];
  v2 = v0[383];
  v3 = v0[382];
  v15 = v0[389];
  v16 = v0[381];
  v4 = v0[375];
  v5 = v0[373];
  v6 = v0[372];
  v7 = v0[371];
  v8 = v0[370];
  v9 = v0[369];

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  sub_100007BC0(v15, &qword_1000614D0, &unk_10004F670);
  sub_100014FD4(v16);
  v10 = v0[432];
  v11 = v0[429];
  v12 = v0[428];
  sub_1000434C0(v0[440]);
  swift_unknownObjectRelease();
  (*(v11 + 8))(v10, v12);

  v13 = v0[1];

  return v13();
}

void *sub_10003EAD8()
{
  (*(v0[353] + 8))(v0[354], v0[352]);
  v0[256] = v0[450];
  swift_errorRetain();
  sub_1000026D8(&qword_100061990, &unk_100050DE0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_10004DC60();
    swift_errorRetain();
    v23 = sub_10004DC70();
    v24 = sub_10004DEB0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "#GenPhotoReq | OnScreenContentRequest | error = %@", v25, 0xCu);
      sub_100007BC0(v26, &qword_100061DC0, &unk_100050840);
    }

    v28 = v0[439];
    v29 = v0[392];
    v30 = v0[390];
    v102 = v0[385];
    v105 = v0[389];
    v31 = v0[383];
    v108 = v0[381];
    v96 = v0[375];
    v99 = v0[382];
    v32 = v0[373];
    v90 = v0[371];
    v93 = v0[372];
    v33 = v0[370];
    v87 = v0[369];

    v28(v29, v30);
    v34 = [objc_allocWithZone(SDRDiagnosticReporter) init];
    type metadata accessor for AutoBugCaptureHelper();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = 0;
    v36 = sub_10004D0F0();
    sub_10004AAE4(0, v36);

    swift_willThrow();
    (*(v33 + 8))(v90, v87);
    (*(v32 + 8))(v96, v93);
    (*(v31 + 8))(v102, v99);
    sub_100007BC0(v105, &qword_1000614D0, &unk_10004F670);
    sub_100014FD4(v108);
    goto LABEL_15;
  }

  v1 = v0[264];
  v2 = v0[263];
  v3 = v0[261];
  v4 = v0[260];

  (*(v3 + 32))(v2, v1, v4);
  v5 = sub_10004D900();
  LOBYTE(v2) = sub_100044DE4(v2, v5);

  if ((v2 & 1) == 0)
  {
    v37 = v0[263];
    v38 = v0[262];
    v39 = v0[261];
    v40 = v0[260];

    sub_10004DC60();
    v112 = *(v39 + 16);
    v112(v38, v37, v40);
    v41 = sub_10004DC70();
    v42 = sub_10004DEB0();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v0[262];
    v45 = v0[261];
    v46 = v0[260];
    if (v43)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      sub_100046A14(&qword_100061DC8, &type metadata accessor for ContentRequestErrors, &protocol conformance descriptor for ContentRequestErrors);
      swift_allocError();
      v112(v49, v44, v46);
      v50 = _swift_stdlib_bridgeErrorToNSError();
      v109 = *(v45 + 8);
      v109(v44, v46);
      *(v47 + 4) = v50;
      *v48 = v50;
      _os_log_impl(&_mh_execute_header, v41, v42, "#GenPhotoReq | OnScreenContentRequest | error = %@", v47, 0xCu);
      sub_100007BC0(v48, &qword_100061DC0, &unk_100050840);
    }

    else
    {

      v109 = *(v45 + 8);
      v109(v44, v46);
    }

    v98 = v0[385];
    v101 = v0[389];
    v92 = v0[383];
    v95 = v0[382];
    v104 = v0[381];
    v84 = v0[373];
    v86 = v0[372];
    v89 = v0[375];
    v68 = v0[370];
    v81 = v0[369];
    v82 = v0[371];
    v69 = v0[263];
    v70 = v0[260];
    (v0[439])(v0[393], v0[390]);
    v71 = [objc_allocWithZone(SDRDiagnosticReporter) init];
    type metadata accessor for AutoBugCaptureHelper();
    v72 = swift_allocObject();
    *(v72 + 16) = v71;
    *(v72 + 24) = 0;
    sub_100046A14(&qword_100061DC8, &type metadata accessor for ContentRequestErrors, &protocol conformance descriptor for ContentRequestErrors);
    swift_allocError();
    v112(v73, v69, v70);
    v74 = sub_10004D0F0();
    sub_10004AAE4(0, v74);

    swift_allocError();
    v112(v75, v69, v70);
    swift_willThrow();
    v109(v69, v70);
    (*(v68 + 8))(v82, v81);
    (*(v84 + 8))(v89, v86);
    (*(v92 + 8))(v98, v95);
    sub_100007BC0(v101, &qword_1000614D0, &unk_10004F670);
    sub_100014FD4(v104);

LABEL_15:
    v76 = v0[432];
    v77 = v0[429];
    v78 = v0[428];
    sub_1000434C0(v0[440]);
    swift_unknownObjectRelease();
    (*(v77 + 8))(v76, v78);

    v67 = v0[1];
    goto LABEL_16;
  }

  v6 = v0[265];
  v7 = v0[263];
  v8 = v0[261];
  v9 = v0[260];
  sub_10004DC60();
  v10 = *(v8 + 16);
  v10(v6, v7, v9);
  v11 = sub_10004DC70();
  v12 = sub_10004DEB0();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[265];
  v15 = v0[263];
  v16 = v0[261];
  v17 = v0[260];
  if (v13)
  {
    v107 = v10;
    v18 = swift_slowAlloc();
    v111 = v15;
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    sub_100046A14(&qword_100061DC8, &type metadata accessor for ContentRequestErrors, &protocol conformance descriptor for ContentRequestErrors);
    swift_allocError();
    v107(v20, v14, v17);
    v21 = _swift_stdlib_bridgeErrorToNSError();
    v22 = *(v16 + 8);
    v22(v14, v17);
    *(v18 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "#GenPhotoReq | OnScreenContentRequest | not a functional error = %@", v18, 0xCu);
    sub_100007BC0(v19, &qword_100061DC0, &unk_100050840);

    v22(v111, v17);
  }

  else
  {

    v51 = *(v16 + 8);
    v51(v15, v17);
    v51(v14, v17);
  }

  v52 = v0[381];
  v53 = v0[379];
  v54 = v0[378];
  v55 = v0[356];
  (v0[439])(v0[398], v0[390]);

  sub_100014EBC(v52, v55);
  (*(v53 + 56))(v55, 0, 1, v54);
  result = sub_10004CC20();
  v57 = v0[239];
  if (!v57)
  {
    __break(1u);
    return result;
  }

  v79 = v0[238];
  v110 = v0[385];
  v113 = v0[389];
  v103 = v0[383];
  v106 = v0[382];
  v58 = v0[381];
  v97 = v0[372];
  v100 = v0[375];
  v91 = v0[371];
  v94 = v0[373];
  v85 = v0[370];
  v88 = v0[369];
  v59 = v0[361];
  v60 = v0[360];
  v80 = v0[356];
  v83 = v0[359];
  v61 = v0[305];
  v62 = v0[302];
  v63 = v0[301];

  (*(v62 + 104))(v61, enum case for CatId.empty(_:), v63);
  sub_1000448AC(v79, v57, v61, v58, v59);

  (*(v62 + 8))(v61, v63);
  sub_100014F20();
  sub_10004CBD0();
  (*(v60 + 8))(v59, v83);
  sub_100007BC0(v80, &qword_1000614A0, &unk_10004F640);
  (*(v85 + 8))(v91, v88);
  (*(v94 + 8))(v100, v97);
  (*(v103 + 8))(v110, v106);
  sub_100007BC0(v113, &qword_1000614D0, &unk_10004F670);
  sub_100014FD4(v58);
  v64 = v0[432];
  v65 = v0[429];
  v66 = v0[428];
  sub_1000434C0(v0[440]);
  swift_unknownObjectRelease();
  (*(v65 + 8))(v64, v66);

  v67 = v0[1];
LABEL_16:

  return v67();
}

void *sub_100040344()
{
  v1 = v0[354];
  v2 = v0[353];
  v3 = v0[352];
  (*(v0[342] + 8))(v0[343], v0[341]);
  (*(v2 + 8))(v1, v3);
  v0[256] = v0[454];
  swift_errorRetain();
  sub_1000026D8(&qword_100061990, &unk_100050DE0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_10004DC60();
    swift_errorRetain();
    v26 = sub_10004DC70();
    v27 = sub_10004DEB0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v30;
      *v29 = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "#GenPhotoReq | OnScreenContentRequest | error = %@", v28, 0xCu);
      sub_100007BC0(v29, &qword_100061DC0, &unk_100050840);
    }

    v31 = v0[439];
    v32 = v0[392];
    v33 = v0[390];
    v105 = v0[385];
    v108 = v0[389];
    v34 = v0[383];
    v111 = v0[381];
    v99 = v0[375];
    v102 = v0[382];
    v35 = v0[373];
    v93 = v0[371];
    v96 = v0[372];
    v36 = v0[370];
    v90 = v0[369];

    v31(v32, v33);
    v37 = [objc_allocWithZone(SDRDiagnosticReporter) init];
    type metadata accessor for AutoBugCaptureHelper();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = 0;
    v39 = sub_10004D0F0();
    sub_10004AAE4(0, v39);

    swift_willThrow();
    (*(v36 + 8))(v93, v90);
    (*(v35 + 8))(v99, v96);
    (*(v34 + 8))(v105, v102);
    sub_100007BC0(v108, &qword_1000614D0, &unk_10004F670);
    sub_100014FD4(v111);
    goto LABEL_15;
  }

  v4 = v0[264];
  v5 = v0[263];
  v6 = v0[261];
  v7 = v0[260];

  (*(v6 + 32))(v5, v4, v7);
  v8 = sub_10004D900();
  LOBYTE(v5) = sub_100044DE4(v5, v8);

  if ((v5 & 1) == 0)
  {
    v40 = v0[263];
    v41 = v0[262];
    v42 = v0[261];
    v43 = v0[260];

    sub_10004DC60();
    v115 = *(v42 + 16);
    v115(v41, v40, v43);
    v44 = sub_10004DC70();
    v45 = sub_10004DEB0();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v0[262];
    v48 = v0[261];
    v49 = v0[260];
    if (v46)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      sub_100046A14(&qword_100061DC8, &type metadata accessor for ContentRequestErrors, &protocol conformance descriptor for ContentRequestErrors);
      swift_allocError();
      v115(v52, v47, v49);
      v53 = _swift_stdlib_bridgeErrorToNSError();
      v112 = *(v48 + 8);
      v112(v47, v49);
      *(v50 + 4) = v53;
      *v51 = v53;
      _os_log_impl(&_mh_execute_header, v44, v45, "#GenPhotoReq | OnScreenContentRequest | error = %@", v50, 0xCu);
      sub_100007BC0(v51, &qword_100061DC0, &unk_100050840);
    }

    else
    {

      v112 = *(v48 + 8);
      v112(v47, v49);
    }

    v101 = v0[385];
    v104 = v0[389];
    v95 = v0[383];
    v98 = v0[382];
    v107 = v0[381];
    v87 = v0[373];
    v89 = v0[372];
    v92 = v0[375];
    v71 = v0[370];
    v84 = v0[369];
    v85 = v0[371];
    v72 = v0[263];
    v73 = v0[260];
    (v0[439])(v0[393], v0[390]);
    v74 = [objc_allocWithZone(SDRDiagnosticReporter) init];
    type metadata accessor for AutoBugCaptureHelper();
    v75 = swift_allocObject();
    *(v75 + 16) = v74;
    *(v75 + 24) = 0;
    sub_100046A14(&qword_100061DC8, &type metadata accessor for ContentRequestErrors, &protocol conformance descriptor for ContentRequestErrors);
    swift_allocError();
    v115(v76, v72, v73);
    v77 = sub_10004D0F0();
    sub_10004AAE4(0, v77);

    swift_allocError();
    v115(v78, v72, v73);
    swift_willThrow();
    v112(v72, v73);
    (*(v71 + 8))(v85, v84);
    (*(v87 + 8))(v92, v89);
    (*(v95 + 8))(v101, v98);
    sub_100007BC0(v104, &qword_1000614D0, &unk_10004F670);
    sub_100014FD4(v107);

LABEL_15:
    v79 = v0[432];
    v80 = v0[429];
    v81 = v0[428];
    sub_1000434C0(v0[440]);
    swift_unknownObjectRelease();
    (*(v80 + 8))(v79, v81);

    v70 = v0[1];
    goto LABEL_16;
  }

  v9 = v0[265];
  v10 = v0[263];
  v11 = v0[261];
  v12 = v0[260];
  sub_10004DC60();
  v13 = *(v11 + 16);
  v13(v9, v10, v12);
  v14 = sub_10004DC70();
  v15 = sub_10004DEB0();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[265];
  v18 = v0[263];
  v19 = v0[261];
  v20 = v0[260];
  if (v16)
  {
    v110 = v13;
    v21 = swift_slowAlloc();
    v114 = v18;
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    sub_100046A14(&qword_100061DC8, &type metadata accessor for ContentRequestErrors, &protocol conformance descriptor for ContentRequestErrors);
    swift_allocError();
    v110(v23, v17, v20);
    v24 = _swift_stdlib_bridgeErrorToNSError();
    v25 = *(v19 + 8);
    v25(v17, v20);
    *(v21 + 4) = v24;
    *v22 = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "#GenPhotoReq | OnScreenContentRequest | not a functional error = %@", v21, 0xCu);
    sub_100007BC0(v22, &qword_100061DC0, &unk_100050840);

    v25(v114, v20);
  }

  else
  {

    v54 = *(v19 + 8);
    v54(v18, v20);
    v54(v17, v20);
  }

  v55 = v0[381];
  v56 = v0[379];
  v57 = v0[378];
  v58 = v0[356];
  (v0[439])(v0[398], v0[390]);

  sub_100014EBC(v55, v58);
  (*(v56 + 56))(v58, 0, 1, v57);
  result = sub_10004CC20();
  v60 = v0[239];
  if (!v60)
  {
    __break(1u);
    return result;
  }

  v82 = v0[238];
  v113 = v0[385];
  v116 = v0[389];
  v106 = v0[383];
  v109 = v0[382];
  v61 = v0[381];
  v100 = v0[372];
  v103 = v0[375];
  v94 = v0[371];
  v97 = v0[373];
  v88 = v0[370];
  v91 = v0[369];
  v62 = v0[361];
  v63 = v0[360];
  v83 = v0[356];
  v86 = v0[359];
  v64 = v0[305];
  v65 = v0[302];
  v66 = v0[301];

  (*(v65 + 104))(v64, enum case for CatId.empty(_:), v66);
  sub_1000448AC(v82, v60, v64, v61, v62);

  (*(v65 + 8))(v64, v66);
  sub_100014F20();
  sub_10004CBD0();
  (*(v63 + 8))(v62, v86);
  sub_100007BC0(v83, &qword_1000614A0, &unk_10004F640);
  (*(v88 + 8))(v94, v91);
  (*(v97 + 8))(v103, v100);
  (*(v106 + 8))(v113, v109);
  sub_100007BC0(v116, &qword_1000614D0, &unk_10004F670);
  sub_100014FD4(v61);
  v67 = v0[432];
  v68 = v0[429];
  v69 = v0[428];
  sub_1000434C0(v0[440]);
  swift_unknownObjectRelease();
  (*(v68 + 8))(v67, v69);

  v70 = v0[1];
LABEL_16:

  return v70();
}

void *sub_100041BD4()
{
  v1 = v0[354];
  v2 = v0[353];
  v3 = v0[352];
  v4 = v0[351];
  v5 = v0[348];
  v6 = v0[347];
  v7 = v0[330];
  v8 = v0[324];
  (*(v0[314] + 8))(v0[315], v0[313]);
  sub_100007BC0(v8, &qword_100061488, &unk_100050D70);
  sub_100007BC0(v7, &unk_100061490, &qword_10004F630);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v0[256] = v0[472];
  swift_errorRetain();
  sub_1000026D8(&qword_100061990, &unk_100050DE0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_10004DC60();
    swift_errorRetain();
    v31 = sub_10004DC70();
    v32 = sub_10004DEB0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v31, v32, "#GenPhotoReq | OnScreenContentRequest | error = %@", v33, 0xCu);
      sub_100007BC0(v34, &qword_100061DC0, &unk_100050840);
    }

    v36 = v0[439];
    v37 = v0[392];
    v38 = v0[390];
    v110 = v0[385];
    v113 = v0[389];
    v39 = v0[383];
    v116 = v0[381];
    v104 = v0[375];
    v107 = v0[382];
    v40 = v0[373];
    v98 = v0[371];
    v101 = v0[372];
    v41 = v0[370];
    v95 = v0[369];

    v36(v37, v38);
    v42 = [objc_allocWithZone(SDRDiagnosticReporter) init];
    type metadata accessor for AutoBugCaptureHelper();
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    *(v43 + 24) = 0;
    v44 = sub_10004D0F0();
    sub_10004AAE4(0, v44);

    swift_willThrow();
    (*(v41 + 8))(v98, v95);
    (*(v40 + 8))(v104, v101);
    (*(v39 + 8))(v110, v107);
    sub_100007BC0(v113, &qword_1000614D0, &unk_10004F670);
    sub_100014FD4(v116);
    goto LABEL_15;
  }

  v9 = v0[264];
  v10 = v0[263];
  v11 = v0[261];
  v12 = v0[260];

  (*(v11 + 32))(v10, v9, v12);
  v13 = sub_10004D900();
  LOBYTE(v10) = sub_100044DE4(v10, v13);

  if ((v10 & 1) == 0)
  {
    v45 = v0[263];
    v46 = v0[262];
    v47 = v0[261];
    v48 = v0[260];

    sub_10004DC60();
    v120 = *(v47 + 16);
    v120(v46, v45, v48);
    v49 = sub_10004DC70();
    v50 = sub_10004DEB0();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v0[262];
    v53 = v0[261];
    v54 = v0[260];
    if (v51)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      sub_100046A14(&qword_100061DC8, &type metadata accessor for ContentRequestErrors, &protocol conformance descriptor for ContentRequestErrors);
      swift_allocError();
      v120(v57, v52, v54);
      v58 = _swift_stdlib_bridgeErrorToNSError();
      v117 = *(v53 + 8);
      v117(v52, v54);
      *(v55 + 4) = v58;
      *v56 = v58;
      _os_log_impl(&_mh_execute_header, v49, v50, "#GenPhotoReq | OnScreenContentRequest | error = %@", v55, 0xCu);
      sub_100007BC0(v56, &qword_100061DC0, &unk_100050840);
    }

    else
    {

      v117 = *(v53 + 8);
      v117(v52, v54);
    }

    v106 = v0[385];
    v109 = v0[389];
    v100 = v0[383];
    v103 = v0[382];
    v112 = v0[381];
    v92 = v0[373];
    v94 = v0[372];
    v97 = v0[375];
    v76 = v0[370];
    v89 = v0[369];
    v90 = v0[371];
    v77 = v0[263];
    v78 = v0[260];
    (v0[439])(v0[393], v0[390]);
    v79 = [objc_allocWithZone(SDRDiagnosticReporter) init];
    type metadata accessor for AutoBugCaptureHelper();
    v80 = swift_allocObject();
    *(v80 + 16) = v79;
    *(v80 + 24) = 0;
    sub_100046A14(&qword_100061DC8, &type metadata accessor for ContentRequestErrors, &protocol conformance descriptor for ContentRequestErrors);
    swift_allocError();
    v120(v81, v77, v78);
    v82 = sub_10004D0F0();
    sub_10004AAE4(0, v82);

    swift_allocError();
    v120(v83, v77, v78);
    swift_willThrow();
    v117(v77, v78);
    (*(v76 + 8))(v90, v89);
    (*(v92 + 8))(v97, v94);
    (*(v100 + 8))(v106, v103);
    sub_100007BC0(v109, &qword_1000614D0, &unk_10004F670);
    sub_100014FD4(v112);

LABEL_15:
    v84 = v0[432];
    v85 = v0[429];
    v86 = v0[428];
    sub_1000434C0(v0[440]);
    swift_unknownObjectRelease();
    (*(v85 + 8))(v84, v86);

    v75 = v0[1];
    goto LABEL_16;
  }

  v14 = v0[265];
  v15 = v0[263];
  v16 = v0[261];
  v17 = v0[260];
  sub_10004DC60();
  v18 = *(v16 + 16);
  v18(v14, v15, v17);
  v19 = sub_10004DC70();
  v20 = sub_10004DEB0();
  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[265];
  v23 = v0[263];
  v24 = v0[261];
  v25 = v0[260];
  if (v21)
  {
    v115 = v18;
    v26 = swift_slowAlloc();
    v119 = v23;
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    sub_100046A14(&qword_100061DC8, &type metadata accessor for ContentRequestErrors, &protocol conformance descriptor for ContentRequestErrors);
    swift_allocError();
    v115(v28, v22, v25);
    v29 = _swift_stdlib_bridgeErrorToNSError();
    v30 = *(v24 + 8);
    v30(v22, v25);
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&_mh_execute_header, v19, v20, "#GenPhotoReq | OnScreenContentRequest | not a functional error = %@", v26, 0xCu);
    sub_100007BC0(v27, &qword_100061DC0, &unk_100050840);

    v30(v119, v25);
  }

  else
  {

    v59 = *(v24 + 8);
    v59(v23, v25);
    v59(v22, v25);
  }

  v60 = v0[381];
  v61 = v0[379];
  v62 = v0[378];
  v63 = v0[356];
  (v0[439])(v0[398], v0[390]);

  sub_100014EBC(v60, v63);
  (*(v61 + 56))(v63, 0, 1, v62);
  result = sub_10004CC20();
  v65 = v0[239];
  if (!v65)
  {
    __break(1u);
    return result;
  }

  v87 = v0[238];
  v118 = v0[385];
  v121 = v0[389];
  v111 = v0[383];
  v114 = v0[382];
  v66 = v0[381];
  v105 = v0[372];
  v108 = v0[375];
  v99 = v0[371];
  v102 = v0[373];
  v93 = v0[370];
  v96 = v0[369];
  v67 = v0[361];
  v68 = v0[360];
  v88 = v0[356];
  v91 = v0[359];
  v69 = v0[305];
  v70 = v0[302];
  v71 = v0[301];

  (*(v70 + 104))(v69, enum case for CatId.empty(_:), v71);
  sub_1000448AC(v87, v65, v69, v66, v67);

  (*(v70 + 8))(v69, v71);
  sub_100014F20();
  sub_10004CBD0();
  (*(v68 + 8))(v67, v91);
  sub_100007BC0(v88, &qword_1000614A0, &unk_10004F640);
  (*(v93 + 8))(v99, v96);
  (*(v102 + 8))(v108, v105);
  (*(v111 + 8))(v118, v114);
  sub_100007BC0(v121, &qword_1000614D0, &unk_10004F670);
  sub_100014FD4(v66);
  v72 = v0[432];
  v73 = v0[429];
  v74 = v0[428];
  sub_1000434C0(v0[440]);
  swift_unknownObjectRelease();
  (*(v73 + 8))(v72, v74);

  v75 = v0[1];
LABEL_16:

  return v75();
}

uint64_t sub_1000434C0(uint64_t a1)
{
  v2 = sub_10004DC80();
  v16 = *(v2 - 8);
  v17 = v2;
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000026D8(&unk_100061550, &unk_1000501C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  sub_10004D700();
  sub_10004D6F0();
  sub_10004DAF0();
  v8 = sub_10004DC00();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_10004D6C0();

  sub_100007BC0(v7, &unk_100061550, &unk_1000501C0);
  sub_10004D6F0();
  sub_10004D6E0();

  sub_10004DBC0();
  sub_10004DBB0();
  sub_10004DB90();

  sub_10004DC60();
  swift_unknownObjectRetain();
  v9 = sub_10004DC70();
  v10 = sub_10004DEA0();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_10001E340(0x286D726F66726570, 0xE900000000000029, &v19);
    *(v11 + 12) = 2080;
    v18 = a1;
    swift_unknownObjectRetain();
    sub_1000026D8(&unk_100061EB0, &qword_1000507D0);
    v12 = sub_10004DD70();
    v14 = sub_10001E340(v12, v13, &v19);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "(Self.self).%s disposing %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v16 + 8))(v4, v17);
}

uint64_t sub_1000437F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  v6 = sub_10004CB90();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v7 = sub_10004DA90();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  sub_1000026D8(&unk_100061B20, &qword_100050D50);
  v5[25] = swift_task_alloc();
  sub_10004DE50();
  v5[26] = sub_10004DE40();
  v9 = sub_10004DE20();
  v5[27] = v9;
  v5[28] = v8;

  return _swift_task_switch(sub_100043984, v9, v8);
}

uint64_t sub_100043984()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v0[29] = sub_10004CCE0();
  sub_10004D8E0();
  sub_10004D8D0();
  (*(v4 + 104))(v2, enum case for CatId.acmeAsks(_:), v3);
  sub_1000026D8(&unk_100061540, &unk_1000507C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10004F380;
  *(inited + 32) = 0x6E6F697473657571;
  *(inited + 40) = 0xE800000000000000;
  v6 = sub_10004DD90();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  sub_100045F74(inited);
  swift_setDeallocating();
  sub_100007BC0(inited + 32, &unk_100061E40, qword_10004F6E0);
  sub_10004D8B0();

  (*(v4 + 8))(v2, v3);
  sub_10004CBA0();
  v8 = sub_10004CBB0();
  (*(*(v8 - 8) + 56))(v1, 0, 1, v8);
  v9 = swift_task_alloc();
  v0[30] = v9;
  *v9 = v0;
  v9[1] = sub_100043BCC;
  v10 = v0[25];

  return IntentParameter.requestValue(_:)(v0 + 12, v10);
}

uint64_t sub_100043BCC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  *(*v1 + 248) = v0;

  sub_100007BC0(v3, &unk_100061B20, &qword_100050D50);

  v4 = *(v2 + 224);
  v5 = *(v2 + 216);
  if (v0)
  {
    v6 = sub_100013F50;
  }

  else
  {
    v6 = sub_100043D58;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100043D58()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];

  v4 = v0[13];
  v7 = v0[12];
  sub_10004DBC0();
  sub_10004DBB0();
  sub_100021468();
  sub_10004CA70();
  sub_10004CB80();
  (*(v2 + 8))(v1, v3);
  sub_10004DB80();

  v5 = v0[1];

  return v5(v7, v4);
}

uint64_t sub_100043E8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 120) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_10004CB90();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  sub_10004DE50();
  *(v5 + 72) = sub_10004DE40();
  v8 = sub_10004DE20();
  *(v5 + 80) = v8;
  *(v5 + 88) = v7;

  return _swift_task_switch(sub_100043F88, v8, v7);
}

uint64_t sub_100043F88()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = [objc_allocWithZone(SDRDiagnosticReporter) init];
  type metadata accessor for AutoBugCaptureHelper();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  sub_10004B450(0, v1);

  v6 = v2[3];
  v5 = v2[4];
  v7 = sub_100014E78(v2, v6);
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  v9 = sub_100021468();
  *(v0 + 104) = v9;
  *v8 = v0;
  v8[1] = sub_1000440C4;
  v10 = *(v0 + 120);
  v11 = *(v0 + 24);

  return AppIntent.requestConfirmation<A>(result:confirmationActionName:showPrompt:)(v7, v11, v10, &type metadata for GenerateRichContentFromMediaIntent, v6, v9, v5);
}

uint64_t sub_1000440C4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_1000133A4;
  }

  else
  {
    v5 = sub_100044200;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100044200()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  sub_10004DBC0();
  sub_10004DBB0();
  sub_10004CA70();
  sub_10004CB80();
  (*(v3 + 8))(v1, v2);
  sub_10004DB80();

  v4 = v0[1];

  return v4();
}

void sub_100044304()
{
  sub_1000469C0();
  v0 = sub_10004CFD0();
  v1 = sub_10004D650();
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    [v0 setTotalUnitCount:v1 - 1];

    v2 = sub_10004CFD0();
    [v2 setTotalUnitCount:sub_10004D650()];
  }
}

void sub_1000443B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000469C0();
  v4 = sub_10004CFD0();
  v5 = sub_10004DD00();
  [v4 setLocalizedDescription:v5];

  v6 = sub_10004CFD0();
  [v6 setCompletedUnitCount:a1];
}

uint64_t sub_10004447C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10004CB90();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_10004DE50();
  v1[6] = sub_10004DE40();
  v4 = sub_10004DE20();
  v1[7] = v4;
  v1[8] = v3;

  return _swift_task_switch(sub_100044570, v4, v3);
}

uint64_t sub_100044570()
{
  sub_10004DB10();
  v1 = sub_10004DD00();

  sub_10004CCC0();
  v2 = [objc_opt_self() montaraEnablementWithBundleIdentifier:v1 source:0 isExplicitRequest:*(v0 + 104) & 1];
  *(v0 + 72) = v2;

  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v4 = sub_100021468();
  *(v0 + 88) = v4;
  *v3 = v0;
  v3[1] = sub_10004468C;

  return AppIntent.requestConfirmation(systemStyle:)(v2, &type metadata for GenerateRichContentFromMediaIntent, v4);
}

uint64_t sub_10004468C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_100013840;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1000447A8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000447A8()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  sub_10004DBC0();
  sub_10004DBB0();
  sub_10004CA70();
  sub_10004CB80();
  (*(v3 + 8))(v1, v2);
  sub_10004DB80();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000448AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a4;
  v42 = a2;
  v43 = a3;
  v40 = a5;
  v41 = a1;
  v5 = sub_10004DA90();
  v37 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v39 = &v34 - v9;
  v10 = sub_10004D240();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004CEF0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000026D8(&qword_1000614D8, &unk_100050DA0);
  __chkstk_darwin(v18 - 8);
  v20 = &v34 - v19;
  sub_100021468();
  sub_10004CA80();
  sub_10004CED0();
  (*(v15 + 8))(v17, v14);
  v21 = sub_10004CEC0();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_100007BC0(v20, &qword_1000614D8, &unk_100050DA0);
LABEL_5:
    sub_10004D230();
    v35 = sub_10004D220();
    v36 = v26;
    (*(v11 + 8))(v13, v10);

    goto LABEL_6;
  }

  v23 = sub_10004CE90();
  v25 = v24;
  (*(v22 + 8))(v20, v21);
  if (!v25)
  {
    goto LABEL_5;
  }

  v35 = v23;
  v36 = v25;
LABEL_6:
  v27 = v37;
  v28 = *(v37 + 104);
  v28(v8, enum case for CatId.empty(_:), v5);
  sub_100046A14(&unk_100061500, &type metadata accessor for CatId, &protocol conformance descriptor for CatId);
  sub_10004DDF0();
  sub_10004DDF0();
  if (v46 == v44 && v47 == v45)
  {
    v29 = 1;
  }

  else
  {
    v29 = sub_10004DFA0();
  }

  v30 = *(v27 + 8);
  v30(v8, v5);

  v34 = v5;
  if (v29)
  {
    v31 = v39;
    v28(v39, enum case for CatId.generateRichContentFromMediaResponse(_:), v5);
  }

  else
  {
    v32 = *(v27 + 16);
    v31 = v39;
    v32(v39, v43, v5);
  }

  sub_10004D8A0();
  type metadata accessor for GenerativeResponseEntity(0);
  sub_10004CC20();
  sub_10004CC20();
  sub_10004CC20();
  sub_10004D890();

  return (v30)(v31, v34);
}

BOOL sub_100044DE4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_10004D910();
    ++v2;
    sub_100046A14(&qword_100061E28, &type metadata accessor for ContentRequestErrors, &protocol conformance descriptor for ContentRequestErrors);
  }

  while ((sub_10004DCC0() & 1) == 0);
  return v3 != v4;
}

unint64_t sub_100044F68()
{
  result = qword_100061D60;
  if (!qword_100061D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061D60);
  }

  return result;
}

unint64_t sub_100044FC0()
{
  result = qword_100061D68;
  if (!qword_100061D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061D68);
  }

  return result;
}

uint64_t sub_100045064@<X0>(uint64_t a1@<X8>)
{
  if (qword_100061030 != -1)
  {
    swift_once();
  }

  v2 = sub_10004D130();
  v3 = sub_100003774(v2, qword_1000624F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10004510C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000026D8(&qword_100061EC0, &qword_100050E10);
  __chkstk_darwin(v2 - 8);
  sub_10004CF90();
  return sub_10004CF80();
}

uint64_t sub_1000451E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002414;

  return sub_100033FD8(a1);
}

uint64_t sub_100045284(uint64_t a1)
{
  v2 = sub_10004544C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000452D0(uint64_t a1)
{
  v2 = sub_100021468();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_10004530C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_100045348(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100045390(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004544C()
{
  result = qword_100061D80;
  if (!qword_100061D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061D80);
  }

  return result;
}

unint64_t sub_1000454A0()
{
  result = qword_100061D98;
  if (!qword_100061D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061D98);
  }

  return result;
}

unint64_t sub_10004555C(char a1)
{
  sub_10004DFC0();
  sub_10004DDB0();

  v2 = sub_10004DFD0();

  return sub_100045744(a1 & 1, v2);
}

unint64_t sub_100045600(uint64_t a1)
{
  sub_10004DD30();
  sub_10004DFC0();
  sub_10004DDB0();
  v2 = sub_10004DFD0();

  return sub_100045888(a1, v2);
}

unint64_t sub_100045690(uint64_t a1)
{
  sub_10004DFC0();
  type metadata accessor for CFString(0);
  sub_100046A14(&qword_100061EE8, type metadata accessor for CFString, &unk_10004EF2C);
  sub_10004D2E0();
  v2 = sub_10004DFD0();

  return sub_10004598C(a1, v2);
}

unint64_t sub_100045744(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x726568746FLL;
    }

    else
    {
      v6 = 0x54504774616863;
    }

    if (a1)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x726568746FLL : 0x54504774616863;
      v9 = *(*(v2 + 48) + v4) ? 0xE500000000000000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_10004DFA0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_100045888(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_10004DD30();
      v8 = v7;
      if (v6 == sub_10004DD30() && v8 == v9)
      {
        break;
      }

      v11 = sub_10004DFA0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_10004598C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100046A14(&qword_100061EE8, type metadata accessor for CFString, &unk_10004EF2C);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10004D2D0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_100045A98(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100045AB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100045AB8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000026D8(&qword_100061E20, &qword_100050E08);
  v10 = *(sub_10004D3F0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10004D3F0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_100045C90(uint64_t a1)
{
  v2 = sub_1000026D8(&qword_100061F10, &qword_10004F290);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000026D8(&qword_100061F18, qword_100050E50);
    v7 = sub_10004DF50();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10001564C(v9, v5, &qword_100061F10, &qword_10004F290);
      v11 = *v5;
      result = sub_10004555C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10004CF30();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100045E78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000026D8(&qword_100061E18, &qword_100050E00);
    v3 = sub_10004DF50();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000079D0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100045F74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000026D8(&qword_100061E10, &unk_10004F310);
    v3 = sub_10004DF50();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001564C(v4, &v13, &unk_100061E40, qword_10004F6E0);
      v5 = v13;
      v6 = v14;
      result = sub_1000079D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100007DE8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000460EC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_1000026D8(a2, a3);
    v9 = sub_10004DF50();
    v10 = a1 + 32;

    while (1)
    {
      sub_10001564C(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_100045600(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_100007DE8(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100046204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000026D8(&qword_100061EE0, &qword_100050E30);
    v3 = sub_10004DF50();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_100045690(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100046330()
{
  sub_10004DFC0();
  sub_10004DDB0();
  v0 = sub_10004DFD0();

  return sub_100046304(v0);
}

unint64_t sub_10004639C(uint64_t a1)
{
  v2 = sub_1000026D8(&qword_100061F00, &unk_1000512C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000026D8(&qword_100061F08, &unk_100050E40);
    v7 = sub_10004DF50();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_10001564C(v8, v5, &qword_100061F00, &unk_1000512C0);
      result = sub_100046330();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = sub_10004CF30();
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100046568()
{
  sub_100007B00(v0 + 2);
  sub_100007B00(v0 + 7);

  sub_100007B00(v0 + 13);

  return _swift_deallocObject(v0, 200, 7);
}

uint64_t sub_1000465E8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 184);
  v7 = *(v2 + 192);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100015400;

  return sub_1000437F4(a1, a2, v2 + 16, v6, v7);
}

uint64_t sub_1000466A4()
{
  v1 = sub_10004D210();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_100007B00((v0 + v5));
  sub_100007B00((v0 + v5 + 40));

  sub_100007B00((v0 + v5 + 88));

  return _swift_deallocObject(v0, v5 + 168, v3 | 7);
}

uint64_t sub_100046784(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *(sub_10004D210() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_100002414;

  return sub_100043E8C(a1, a2, a3, v3 + v9, v3 + v10);
}

uint64_t sub_1000468AC()
{
  sub_100007B00(v0 + 2);
  sub_100007B00(v0 + 7);

  sub_100007B00(v0 + 13);

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_10004692C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001578C;

  return sub_10004447C(v0 + 16);
}

unint64_t sub_1000469C0()
{
  result = qword_100061E30;
  if (!qword_100061E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061E30);
  }

  return result;
}

uint64_t sub_100046A14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100046A88(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1000026D8(&qword_100062120, &qword_100050F98);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_100046B24, 0, 0);
}

uint64_t sub_100046B24()
{
  if (sub_10004D970())
  {
    v1 = v0[2];
    v2 = type metadata accessor for GenerativeResponseEntity(0);
    (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v7 = (&async function pointer to dispatch thunk of PartnerStreamWrapper.getStreamedResponse() + async function pointer to dispatch thunk of PartnerStreamWrapper.getStreamedResponse());
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_100046C64;
    v6 = v0[4];

    return v7(v6);
  }
}

uint64_t sub_100046C64()
{

  return _swift_task_switch(sub_100046D60, 0, 0);
}

uint64_t sub_100046D60()
{
  v1 = v0[4];
  v2 = sub_10004D870();
  v0[6] = v2;
  v3 = *(v2 - 8);
  v0[7] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100007BC0(v1, &qword_100062120, &qword_100050F98);
    v4 = v0[2];
    v5 = type metadata accessor for GenerativeResponseEntity(0);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_100046F08;
    v9 = v0[2];

    return sub_100047108(v9);
  }
}

uint64_t sub_100046F08()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 32);

  (*(v1 + 8))(v3, v2);

  return _swift_task_switch(sub_100047060, 0, 0);
}

uint64_t sub_100047060()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for GenerativeResponseEntity(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100047108(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_10004D410();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = sub_10004D760();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100047230, 0, 0);
}

uint64_t sub_100047230()
{
  sub_1000157A0(*(v0 + 48));
  v1 = sub_10004D7F0();
  v3 = v2;
  type metadata accessor for GenerativeResponseEntity(0);
  *(v0 + 16) = v1;
  *(v0 + 24) = v3;
  sub_10004CC30();
  *(v0 + 32) = sub_10004D860();
  *(v0 + 40) = v4;
  sub_10004CC30();
  v5 = sub_10004D810();
  *(v0 + 120) = v5;
  v6 = *(v5 + 16);
  *(v0 + 128) = v6;
  if (v6)
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);
    v9 = *(v8 + 16);
    v8 += 16;
    v10 = *(v8 + 64);
    *(v0 + 192) = v10;
    *(v0 + 136) = *(v8 + 56);
    *(v0 + 144) = v9;
    *(v0 + 152) = 0;
    *(v0 + 160) = &_swiftEmptyArrayStorage;
    v9(*(v0 + 112), v5 + ((v10 + 32) & ~v10), v7);
    v11 = swift_task_alloc();
    *(v0 + 168) = v11;
    *v11 = v0;
    v11[1] = sub_10004741C;
    v12 = *(v0 + 88);

    return sub_100004E18(v12);
  }

  else
  {

    *(v0 + 176) = &_swiftEmptyArrayStorage;
    v14 = swift_task_alloc();
    *(v0 + 184) = v14;
    *v14 = v0;
    v14[1] = sub_100047810;

    return sub_100015B24(&_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10004741C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100047574, 0, 0);
}

uint64_t sub_100047574()
{
  (*(*(v0 + 72) + 16))(*(v0 + 80), *(v0 + 88), *(v0 + 64));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 160);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000484AC(0, v2[2] + 1, 1, *(v0 + 160), &qword_100062140, &unk_100050FC0, &type metadata accessor for RichContentResultSegment);
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1000484AC((v3 > 1), v4 + 1, 1, v2, &qword_100062140, &unk_100050FC0, &type metadata accessor for RichContentResultSegment);
  }

  v5 = *(v0 + 128);
  v6 = *(v0 + 80);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 152) + 1;
  (*(v8 + 8))(*(v0 + 88), v7);
  v2[2] = v4 + 1;
  (*(v8 + 32))(v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v4, v6, v7);
  if (v9 == v5)
  {

    *(v0 + 176) = v2;
    v10 = swift_task_alloc();
    *(v0 + 184) = v10;
    *v10 = v0;
    v10[1] = sub_100047810;

    return sub_100015B24(v2);
  }

  else
  {
    v12 = *(v0 + 144);
    v13 = *(v0 + 152) + 1;
    *(v0 + 152) = v13;
    *(v0 + 160) = v2;
    v12(*(v0 + 112), *(v0 + 120) + ((*(v0 + 192) + 32) & ~*(v0 + 192)) + *(v0 + 136) * v13, *(v0 + 96));
    v14 = swift_task_alloc();
    *(v0 + 168) = v14;
    *v14 = v0;
    v14[1] = sub_10004741C;
    v15 = *(v0 + 88);

    return sub_100004E18(v15);
  }
}

uint64_t sub_100047810()
{

  return _swift_task_switch(sub_100047928, 0, 0);
}

uint64_t sub_100047928()
{
  sub_100017588();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000479B0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100047A0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100047AA8;

  return sub_100046A88(a1);
}

uint64_t sub_100047AA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100047BA0(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_10004DE20();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return _swift_task_switch(sub_100047C30, v6, v8);
}

uint64_t sub_100047C30()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100047CCC;
  v2 = *(v0 + 16);

  return sub_100046A88(v2);
}

uint64_t sub_100047CCC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100047DC4()
{
  sub_100007BC0(v0 + OBJC_IVAR____TtC28GenerativeAssistantExtension31EmptyGenerativeResponseIterator_responseEntity, &qword_1000614A0, &unk_10004F640);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EmptyGenerativeResponseIterator(uint64_t a1)
{
  result = qword_100062090;
  if (!qword_100062090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100047E8C(uint64_t a1)
{
  sub_100047F1C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100047F1C(uint64_t a1)
{
  if (!qword_1000620A0)
  {
    type metadata accessor for GenerativeResponseEntity(255);
    v1 = sub_10004DEF0();
    if (!v2)
    {
      atomic_store(v1, &qword_1000620A0);
    }
  }
}

uint64_t sub_100047F80(uint64_t a1)
{
  v2[8] = a1;
  sub_1000026D8(&qword_1000614A0, &unk_10004F640);
  v2[9] = swift_task_alloc();
  v2[10] = *v1;

  return _swift_task_switch(sub_100048024, 0, 0);
}

uint64_t sub_100048024()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = OBJC_IVAR____TtC28GenerativeAssistantExtension31EmptyGenerativeResponseIterator_responseEntity;
  swift_beginAccess();
  sub_100048688(v2 + v4, v3);
  v5 = type metadata accessor for GenerativeResponseEntity(0);
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  swift_beginAccess();
  sub_1000486F8(v1, v2 + v4);
  swift_endAccess();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100048128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a1;
  v4[9] = v3;
  sub_1000026D8(&qword_1000614A0, &unk_10004F640);
  v4[10] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_10004DE20();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return _swift_task_switch(sub_1000481FC, v6, v8);
}

uint64_t sub_100048224()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = OBJC_IVAR____TtC28GenerativeAssistantExtension31EmptyGenerativeResponseIterator_responseEntity;
  swift_beginAccess();
  sub_100048688(v2 + v4, v3);
  v5 = type metadata accessor for GenerativeResponseEntity(0);
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  swift_beginAccess();
  sub_1000486F8(v1, v2 + v4);
  swift_endAccess();

  v6 = v0[1];

  return v6();
}

char *sub_100048328(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000026D8(&qword_100062130, &qword_100050FB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000484AC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000026D8(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100048688(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026D8(&qword_1000614A0, &unk_10004F640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000486F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026D8(&qword_1000614A0, &unk_10004F640);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_100048768(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000026D8(&qword_100062148, &unk_100050FD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000026D8(&qword_100061A00, &qword_100050178);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t DirectInvocationClient.clientId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for DirectInvocationClientID.visualIntelligence(_:);
  v3 = sub_10004D5B0();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1000489A4()
{
  v0 = sub_1000026D8(&unk_100061B30, "zS");
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10004D130();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10004D020();
  sub_1000037AC(v5, static DirectInvocationClient.typeDisplayRepresentation);
  sub_100003774(v5, static DirectInvocationClient.typeDisplayRepresentation);
  sub_10004D110();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10004D010();
}

uint64_t DirectInvocationClient.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_100061038 != -1)
  {
    swift_once();
  }

  v0 = sub_10004D020();

  return sub_100003774(v0, static DirectInvocationClient.typeDisplayRepresentation);
}

uint64_t static DirectInvocationClient.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100061038 != -1)
  {
    swift_once();
  }

  v2 = sub_10004D020();
  v3 = sub_100003774(v2, static DirectInvocationClient.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static DirectInvocationClient.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_100061038 != -1)
  {
    swift_once();
  }

  v2 = sub_10004D020();
  v3 = sub_100003774(v2, static DirectInvocationClient.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static DirectInvocationClient.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_100061038 != -1)
  {
    swift_once();
  }

  v1 = sub_10004D020();
  sub_100003774(v1, static DirectInvocationClient.typeDisplayRepresentation);
  swift_beginAccess();
  return j__swift_endAccess;
}

BOOL DirectInvocationClient.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10005DD40;
  v6._object = a2;
  v4 = sub_10004DF70(v3, v6);

  return v4 != 0;
}

Swift::Int sub_100048E18()
{
  sub_10004DFC0();
  sub_10004DDB0();
  return sub_10004DFD0();
}

Swift::Int sub_100048E8C()
{
  sub_10004DFC0();
  sub_10004DDB0();
  return sub_10004DFD0();
}

void sub_100048EE0(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v6._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10005DDA0;
  v6._object = v3;
  v5 = sub_10004DF70(v4, v6);

  *a2 = v5 != 0;
}

uint64_t sub_100048F54(uint64_t a1)
{
  v2 = sub_1000454A0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100048FA0(uint64_t a1)
{
  v2 = sub_10004950C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t _s28GenerativeAssistantExtension22DirectInvocationClientO26caseDisplayRepresentationsSDyAC10AppIntents0H14RepresentationVGvgZ_0()
{
  v0 = sub_1000026D8(&qword_100061308, "zS");
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_1000026D8(&unk_100061B30, "zS");
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_10004D130();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  sub_1000026D8(&qword_1000621B8, &qword_1000512B8);
  v8 = *(sub_1000026D8(&qword_100061F00, &unk_1000512C0) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10004F380;
  sub_10004D110();
  (*(v7 + 56))(v5, 1, 1, v6);
  v11 = sub_10004CF10();
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  sub_10004CF20();
  v12 = sub_10004639C(v10);
  swift_setDeallocating();
  sub_100049800(v10 + v9);
  swift_deallocClassInstance();
  return v12;
}

unint64_t sub_1000492A4()
{
  result = qword_100062150;
  if (!qword_100062150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062150);
  }

  return result;
}

unint64_t sub_1000492FC()
{
  result = qword_100062158;
  if (!qword_100062158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062158);
  }

  return result;
}

unint64_t sub_100049354()
{
  result = qword_100062160;
  if (!qword_100062160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062160);
  }

  return result;
}

unint64_t sub_1000493AC()
{
  result = qword_100062168;
  if (!qword_100062168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062168);
  }

  return result;
}

unint64_t sub_100049404()
{
  result = qword_100062170;
  if (!qword_100062170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062170);
  }

  return result;
}

unint64_t sub_10004945C()
{
  result = qword_100062178;
  if (!qword_100062178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062178);
  }

  return result;
}

unint64_t sub_1000494B4()
{
  result = qword_100062180;
  if (!qword_100062180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062180);
  }

  return result;
}

unint64_t sub_10004950C()
{
  result = qword_100062188;
  if (!qword_100062188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062188);
  }

  return result;
}

unint64_t sub_1000495B4()
{
  result = qword_100062190;
  if (!qword_100062190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062190);
  }

  return result;
}

unint64_t sub_10004960C()
{
  result = qword_100062198;
  if (!qword_100062198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100062198);
  }

  return result;
}

unint64_t sub_100049664()
{
  result = qword_1000621A0;
  if (!qword_1000621A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000621A0);
  }

  return result;
}

unint64_t sub_1000496BC()
{
  result = qword_1000621A8;
  if (!qword_1000621A8)
  {
    sub_100002AEC(&qword_1000621B0, &qword_100051238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000621A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DirectInvocationClient(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DirectInvocationClient(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_100049800(uint64_t a1)
{
  v2 = sub_1000026D8(&qword_100061F00, &unk_1000512C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100049870(uint64_t a1)
{
  v2 = sub_100049B38();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

uint64_t sub_1000498BC()
{
  v0 = sub_10004D520();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000026D8(&qword_1000621D0, &qword_100051388);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10004F380;
  v5 = sub_10004DB20();
  *(v4 + 56) = v5;
  v6 = sub_100014CF4((v4 + 32));
  (*(*(v5 - 8) + 104))(v6, enum case for DummyEnum.dummy(_:), v5);
  sub_10004DFB0();

  sub_10004D510();
  sub_10004D4E0();
  return (*(v1 + 8))(v3, v0);
}