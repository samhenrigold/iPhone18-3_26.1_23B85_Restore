uint64_t sub_306D4(uint64_t a1)
{
  v2 = *(*v1 + 272);
  *(*v1 + 592) = a1;

  return _swift_task_switch(sub_307EC, v2, 0);
}

uint64_t sub_307EC()
{
  v1 = v0[64];
  [objc_opt_self() updateUsedBootstrapFallback:1];

  v2 = sub_83CBC();
  sub_83D0C();
  v3 = sub_8486C();
  if (sub_848CC())
  {
    v4 = v0[41];
    v5 = v0[38];
    v6 = v0[39];

    sub_83D3C();

    if ((*(v6 + 88))(v4, v5) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v7 = 0;
      v8 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[39] + 8))(v0[41], v0[38]);
      v8 = "qos: 0x%x";
      v7 = 1;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    *(v9 + 1) = v7;
    *(v9 + 2) = 1024;
    *(v9 + 4) = qos_class_self();
    v10 = sub_83C8C();
    _os_signpost_emit_with_name_impl(&dword_0, v2, v3, v10, "Package Provision", v8, v9, 8u);
  }

  v19 = v0[74];

  v11 = v0[62];
  v12 = v0[60];
  v13 = v0[61];
  v14 = v0[59];
  v15 = v0[52];
  v16 = *(v0[53] + 8);
  v16(v0[55], v15);

  v16(v14, v15);
  (*(v13 + 8))(v11, v12);

  v17 = v0[1];

  return v17(v19);
}

uint64_t sub_30AC0@<X0>(void (*a1)(_BYTE *, _BYTE *, uint64_t)@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  LODWORD(v175) = a2;
  v177 = a1;
  v179 = a3;
  v5 = sub_2805C(&unk_CAE60, &qword_A1800);
  __chkstk_darwin(v5 - 8);
  v167 = &v162[-v6];
  v7 = sub_839CC();
  v173 = *(v7 - 8);
  v174 = v7;
  v8 = __chkstk_darwin(v7);
  v165 = &v162[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v164 = &v162[-v11];
  v12 = __chkstk_darwin(v10);
  v170 = &v162[-v13];
  v14 = __chkstk_darwin(v12);
  v172 = &v162[-v15];
  v16 = __chkstk_darwin(v14);
  v169 = &v162[-v17];
  v18 = __chkstk_darwin(v16);
  v171 = &v162[-v19];
  __chkstk_darwin(v18);
  v176 = &v162[-v20];
  v21 = sub_2805C(&qword_CA740, &qword_A0F60);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v162[-v23];
  v25 = sub_2805C(&qword_CA718, &qword_A0F00);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v162[-v27];
  v183 = sub_8402C();
  v29 = *(v183 - 8);
  v30 = __chkstk_darwin(v183);
  v32 = &v162[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = __chkstk_darwin(v30);
  v166 = &v162[-v34];
  v35 = __chkstk_darwin(v33);
  v37 = &v162[-v36];
  v38 = __chkstk_darwin(v35);
  v168 = &v162[-v39];
  __chkstk_darwin(v38);
  v182 = &v162[-v40];
  v184 = v4;
  v178 = v4[OBJC_IVAR___JSAPackageProvisioner_isLaunching];
  v180 = v37;
  if (v178 != 1)
  {
    goto LABEL_5;
  }

  if (qword_CA420 != -1)
  {
    swift_once();
  }

  v41 = sub_2C284(v25, qword_CACD0);
  (*(v26 + 16))(v28, v41, v25);
  sub_83BAC();
  (*(v26 + 8))(v28, v25);
  if (v185 != 1)
  {
    v42 = &enum case for JetPackAssetRequestSourcePolicy.standard(_:);
  }

  else
  {
LABEL_5:
    v42 = &enum case for JetPackAssetRequestSourcePolicy.remoteOnly(_:);
  }

  v43 = *v42;
  v181 = v29;
  v44 = *(v29 + 13);
  v45 = v182;
  v46 = v183;
  (v44)(v182, v43, v183);
  if ((sub_83BDC() & 1) == 0)
  {
    goto LABEL_29;
  }

  if (qword_CA410 != -1)
  {
    swift_once();
  }

  v47 = sub_2C284(v21, qword_CACA0);
  (*(v22 + 16))(v24, v47, v21);
  sub_83BAC();
  (*(v22 + 8))(v24, v21);
  if (!v186)
  {
    goto LABEL_29;
  }

  if (sub_481FC(0x6C61636F6CLL, 0xE500000000000000, v185, v186))
  {
    v167 = v44;

    v48 = v173;
    if (qword_CA3D0 != -1)
    {
      swift_once();
    }

    v49 = v174;
    v50 = sub_2C284(v174, qword_CA688);
    v51 = *(v48 + 16);
    v52 = v176;
    v51(v176, v50, v49);
    v53 = v171;
    v177 = v51;
    v170 = (v48 + 16);
    v51(v171, v52, v49);
    v54 = sub_83D4C();
    v55 = sub_847CC();
    if (os_log_type_enabled(v54, v55))
    {
      LODWORD(v166) = v55;
      v56 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      v57 = v175;
      *v56 = 136315394;
      v58 = 0xE600000000000000;
      v59 = 0x622D68636E75616CLL;
      v60 = 0xEE0064656C646E75;
      if (v57 != 2)
      {
        v59 = 0x756F72676B636162;
        v60 = 0xEA0000000000646ELL;
      }

      v61 = 0x6E2D68636E75616CLL;
      if (v57)
      {
        v58 = 0xED00006761622D6FLL;
      }

      else
      {
        v61 = 0x68636E75616CLL;
      }

      if (v57 <= 1)
      {
        v62 = v61;
      }

      else
      {
        v62 = v59;
      }

      if (v57 <= 1)
      {
        v63 = v58;
      }

      else
      {
        v63 = v60;
      }

      v64 = sub_3A93C(v62, v63, &v185);

      *(v56 + 4) = v64;
      *(v56 + 12) = 2082;
      sub_38448(&qword_CA790, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v65 = v171;
      v49 = v174;
      v66 = sub_84BBC();
      v68 = v67;
      v69 = *(v48 + 8);
      v175 = (v48 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v184 = v69;
      v69(v65, v49);
      v70 = sub_3A93C(v66, v68, &v185);

      *(v56 + 14) = v70;
      _os_log_impl(&dword_0, v54, v166, "JSAPackageProvisioner [%s] Step 1: Found user-specified boot url: local, i.e. %{public}s, loading with sourcePolicy .remoteOnly", v56, 0x16u);
      swift_arrayDestroy();

      v46 = v183;
    }

    else
    {

      v106 = *(v48 + 8);
      v175 = (v48 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v184 = v106;
      v106(v53, v49);
    }

    v107 = v169;
    v177(v169, v176, v49);
    v187._countAndFlagsBits = 0x656A2E7865646E69;
    v187._object = 0xED00006B63617074;
    sub_8395C(v187);
    v108 = v168;
    (v167)(v168, enum case for JetPackAssetRequestSourcePolicy.remoteOnly(_:), v46);
    v109 = v178;
    if (v178)
    {
      v110 = 0x402E000000000000;
    }

    else
    {
      v110 = 0;
    }

    v111 = swift_allocObject();
    *(v111 + 16) = v110;
    *(v111 + 24) = v109 ^ 1;
    v112 = sub_83ECC();
    v113 = v179;
    *(v179 + 24) = v112;
    v113[4] = sub_38448(&qword_CA788, &type metadata accessor for ValidatedJetPackAssetLocations.URLLocation, &protocol conformance descriptor for ValidatedJetPackAssetLocations.URLLocation);
    sub_382A8(v113);
    v177(v172, v107, v49);
    v114 = v181;
    (*(v181 + 2))(v180, v108, v46);
    sub_83EDC();
    v115 = *(v114 + 1);
    v115(v108, v46);
    v116 = v184;
    v184(v107, v49);
    v116(v176, v49);
    return (v115)(v45, v46);
  }

  v71 = v167;
  sub_8399C();

  v72 = v173;
  v73 = v174;
  if ((*(v173 + 48))(v71, 1, v174) == 1)
  {
    sub_38328(v71, &unk_CAE60, &qword_A1800);
LABEL_29:
    v74 = v181;
    v76 = v181 + 16;
    v75 = *(v181 + 2);
    v75(v32, v45, v46);
    v77 = sub_83D4C();
    v78 = sub_847CC();
    v79 = os_log_type_enabled(v77, v78);
    v176 = v76;
    if (v79)
    {
      v80 = v75;
      v81 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v185 = v174;
      v82 = v175;
      *v81 = 136315394;
      v83 = 0xE600000000000000;
      v84 = 0x622D68636E75616CLL;
      v85 = 0xEE0064656C646E75;
      if (v82 != 2)
      {
        v84 = 0x756F72676B636162;
        v85 = 0xEA0000000000646ELL;
      }

      v86 = 0x6E2D68636E75616CLL;
      if (v82)
      {
        v83 = 0xED00006761622D6FLL;
      }

      else
      {
        v86 = 0x68636E75616CLL;
      }

      if (v82 <= 1)
      {
        v87 = v86;
      }

      else
      {
        v87 = v84;
      }

      if (v82 <= 1)
      {
        v88 = v83;
      }

      else
      {
        v88 = v85;
      }

      v89 = sub_3A93C(v87, v88, &v185);

      *(v81 + 4) = v89;
      *(v81 + 12) = 2080;
      v90 = v180;
      v46 = v183;
      v75 = v80;
      v80(v180, v32, v183);
      v91 = sub_843FC();
      v92 = v32;
      v93 = v91;
      v95 = v94;
      v96 = *(v181 + 1);
      v96(v92, v46);
      v97 = sub_3A93C(v93, v95, &v185);

      *(v81 + 14) = v97;
      _os_log_impl(&dword_0, v77, v78, "JSAPackageProvisioner [%s] Step 1: Loading JetPack using Bag Key with sourcePolicy %s", v81, 0x16u);
      swift_arrayDestroy();

      v45 = v182;
    }

    else
    {

      v96 = *(v74 + 1);
      v96(v32, v46);
      v90 = v180;
    }

    v98 = [objc_opt_self() jsAppUrlKey];
    v99 = v178;
    if (v178)
    {
      v100 = 0x402E000000000000;
    }

    else
    {
      v100 = 0;
    }

    v101 = swift_allocObject();
    *(v101 + 16) = v100;
    *(v101 + 24) = v99 ^ 1;
    v102 = sub_83EFC();
    v103 = v179;
    *(v179 + 24) = v102;
    v103[4] = sub_38448(&qword_CA7A0, &type metadata accessor for ValidatedJetPackAssetLocations.BagKeyLocation, &protocol conformance descriptor for ValidatedJetPackAssetLocations.BagKeyLocation);
    sub_382A8(v103);
    v75(v90, v45, v46);

    v104 = v177;
    sub_83F0C();
    return (v96)(v45, v46);
  }

  v117 = v170;
  (*(v72 + 32))(v170, v71, v73);
  v118 = *(v72 + 16);
  v119 = v164;
  v176 = (v72 + 16);
  v171 = v118;
  (v118)(v164, v117, v73);
  v120 = v72;
  v121 = v181;
  v122 = v181 + 16;
  v123 = v166;
  v177 = *(v181 + 2);
  v177(v166, v45, v46);
  v124 = sub_83D4C();
  v125 = sub_847CC();
  v126 = os_log_type_enabled(v124, v125);
  v168 = v122;
  if (v126)
  {
    v163 = v125;
    v167 = v124;
    v127 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    v128 = v175;
    *v127 = 136315650;
    v129 = 0xE600000000000000;
    v130 = 0x622D68636E75616CLL;
    v131 = 0xEE0064656C646E75;
    if (v128 != 2)
    {
      v130 = 0x756F72676B636162;
      v131 = 0xEA0000000000646ELL;
    }

    v132 = 0x6E2D68636E75616CLL;
    if (v128)
    {
      v129 = 0xED00006761622D6FLL;
    }

    else
    {
      v132 = 0x68636E75616CLL;
    }

    if (v128 <= 1)
    {
      v133 = v132;
    }

    else
    {
      v133 = v130;
    }

    if (v128 <= 1)
    {
      v134 = v129;
    }

    else
    {
      v134 = v131;
    }

    v135 = v180;
    v136 = sub_3A93C(v133, v134, &v185);

    *(v127 + 4) = v136;
    *(v127 + 12) = 2082;
    sub_38448(&qword_CA790, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v137 = v174;
    v138 = sub_84BBC();
    v140 = v139;
    v141 = *(v173 + 8);
    v175 = (v173 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v184 = v141;
    v141(v119, v137);
    v142 = sub_3A93C(v138, v140, &v185);

    *(v127 + 14) = v142;
    *(v127 + 22) = 2080;
    v143 = v166;
    v144 = v183;
    v177(v135, v166, v183);
    v145 = sub_843FC();
    v147 = v146;
    v148 = *(v181 + 1);
    v169 = ((v181 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v181 = v148;
    (v148)(v143, v144);
    v149 = sub_3A93C(v145, v147, &v185);
    v46 = v144;

    *(v127 + 24) = v149;
    v150 = v167;
    _os_log_impl(&dword_0, v167, v163, "JSAPackageProvisioner [%s] Step 1: Found user-specified boot url: %{public}s, loading with sourcePolicy %s", v127, 0x20u);
    swift_arrayDestroy();

    v73 = v137;

    v45 = v182;
  }

  else
  {

    v151 = *(v121 + 1);
    v169 = ((v121 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v181 = v151;
    (v151)(v123, v46);
    v152 = *(v120 + 8);
    v175 = (v120 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v184 = v152;
    v152(v119, v73);
  }

  v153 = v165;
  v154 = v170;
  v155 = v171;
  (v171)(v165, v170, v73);
  v188._countAndFlagsBits = 0x656A2E7865646E69;
  v188._object = 0xED00006B63617074;
  sub_8395C(v188);
  v156 = v178;
  if (v178)
  {
    v157 = 0x402E000000000000;
  }

  else
  {
    v157 = 0;
  }

  v158 = swift_allocObject();
  *(v158 + 16) = v157;
  *(v158 + 24) = v156 ^ 1;
  v159 = sub_83ECC();
  v160 = v179;
  *(v179 + 24) = v159;
  v160[4] = sub_38448(&qword_CA788, &type metadata accessor for ValidatedJetPackAssetLocations.URLLocation, &protocol conformance descriptor for ValidatedJetPackAssetLocations.URLLocation);
  sub_382A8(v160);
  v155(v172, v153, v73);
  v177(v180, v45, v46);
  sub_83EDC();
  v161 = v184;
  v184(v153, v73);
  v161(v154, v73);
  return (v181)(v45, v46);
}

uint64_t sub_31E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v6[2] = a1;
  v6[3] = a4;
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_31EC0;

  return sub_31FF8(a5, v7);
}

uint64_t sub_31EC0(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_31FD8, v2, 0);
}

uint64_t sub_31FF8(uint64_t a1, char a2)
{
  *(v3 + 368) = a2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v2;
  v4 = sub_2805C(&qword_CA740, &qword_A0F60);
  *(v3 + 144) = v4;
  *(v3 + 152) = *(v4 - 8);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = type metadata accessor for BooksJetPackResourceBundle(0);
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  v5 = sub_83EAC();
  *(v3 + 192) = v5;
  *(v3 + 200) = *(v5 - 8);
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  v6 = sub_839CC();
  *(v3 + 224) = v6;
  *(v3 + 232) = *(v6 - 8);
  *(v3 + 240) = swift_task_alloc();
  sub_2805C(&qword_CA750, &qword_A0F70);
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  v7 = sub_2805C(&qword_CA758, &qword_A0F78);
  *(v3 + 272) = v7;
  *(v3 + 280) = *(v7 - 8);
  *(v3 + 288) = swift_task_alloc();
  sub_83F6C();
  *(v3 + 296) = swift_task_alloc();
  v8 = sub_83F4C();
  *(v3 + 304) = v8;
  *(v3 + 312) = *(v8 - 8);
  *(v3 + 320) = swift_task_alloc();

  return _swift_task_switch(sub_32308, v2, 0);
}

uint64_t sub_32308(uint64_t a1)
{
  v25 = v1;
  *(v1 + 328) = OBJC_IVAR___JSAPackageProvisioner_logger;
  v2 = sub_83D4C();
  v3 = sub_847CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 368);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24[0] = v6;
    *v5 = 136315138;
    v7 = 0xE600000000000000;
    v8 = 0x622D68636E75616CLL;
    v9 = 0xEE0064656C646E75;
    if (v4 != 2)
    {
      v8 = 0x756F72676B636162;
      v9 = 0xEA0000000000646ELL;
    }

    v10 = 0x6E2D68636E75616CLL;
    if (v4)
    {
      v7 = 0xED00006761622D6FLL;
    }

    else
    {
      v10 = 0x68636E75616CLL;
    }

    if (v4 <= 1)
    {
      v11 = v10;
    }

    else
    {
      v11 = v8;
    }

    if (v4 <= 1)
    {
      v12 = v7;
    }

    else
    {
      v12 = v9;
    }

    v13 = sub_3A93C(v11, v12, v24);

    *(v5 + 4) = v13;
    _os_log_impl(&dword_0, v2, v3, "JSAPackageProvisioner [%s] Step 2: Computing bootURL from defaults or bag", v5, 0xCu);
    sub_371A8(v6);
  }

  v14 = [objc_opt_self() defaultBag];
  *(v1 + 336) = v14;
  v15 = sub_83FBC();
  v16 = sub_83FAC();
  *(v1 + 344) = v16;
  v17 = *(v1 + 128);
  v24[3] = v15;
  v24[4] = &protocol witness table for JetPackAssetDiskCache;
  v24[0] = v16;

  sub_83F5C();
  sub_83F8C();
  swift_allocObject();
  sub_83F7C();
  sub_370FC(v17, v1 + 16);
  v18 = v14;
  sub_83F3C();
  v19 = swift_task_alloc();
  *(v1 + 352) = v19;
  *v19 = v1;
  v19[1] = sub_3289C;
  v20 = *(v1 + 288);
  v21 = *(v1 + 192);
  v22 = *(v1 + 136);

  return ValidatedJetPackLoadingCoordinator.getJetPackAsset<A>(unpackAsset:)(v20, &unk_A0F90, v22, v21, &protocol witness table for InMemoryJetPackResourceBundle);
}

uint64_t sub_3289C()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_33834;
  }

  else
  {
    v4 = sub_329C8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_329C8()
{
  v133 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  sub_370FC(*(v0 + 128), v0 + 56);
  sub_2805C(&qword_CA730, &qword_A0F28);
  v3 = sub_83ECC();
  v4 = swift_dynamicCast();
  v5 = *(v3 - 8);
  (*(v5 + 56))(v2, v4 ^ 1u, 1, v3);
  sub_37660(v2, v1, &qword_CA750, &qword_A0F70);
  v6 = sub_83D4C();
  v7 = sub_847CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 368);
    v9 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = 0xE600000000000000;
    v11 = 0x622D68636E75616CLL;
    v12 = 0xEE0064656C646E75;
    if (v8 != 2)
    {
      v11 = 0x756F72676B636162;
      v12 = 0xEA0000000000646ELL;
    }

    v13 = 0x6E2D68636E75616CLL;
    if (v8)
    {
      v10 = 0xED00006761622D6FLL;
    }

    else
    {
      v13 = 0x68636E75616CLL;
    }

    if (v8 <= 1)
    {
      v14 = v13;
    }

    else
    {
      v14 = v11;
    }

    if (v8 <= 1)
    {
      v15 = v10;
    }

    else
    {
      v15 = v12;
    }

    v17 = *(v0 + 248);
    v16 = *(v0 + 256);
    v18 = sub_3A93C(v14, v15, &v132);

    *(v9 + 4) = v18;
    *(v9 + 12) = 2082;
    sub_37660(v16, v17, &qword_CA750, &qword_A0F70);
    v19 = (*(v5 + 48))(v17, 1, v3);
    v20 = *(v0 + 248);
    if (v19 == 1)
    {
      sub_38328(*(v0 + 248), &qword_CA750, &qword_A0F70);
      v21 = 0xE300000000000000;
      v22 = 6775138;
    }

    else
    {
      v25 = *(v0 + 232);
      v24 = *(v0 + 240);
      v26 = *(v0 + 224);
      sub_83EBC();
      (*(v5 + 8))(v20, v3);
      v22 = sub_838FC();
      v21 = v27;
      (*(v25 + 8))(v24, v26);
    }

    sub_38328(*(v0 + 256), &qword_CA750, &qword_A0F70);
    v28 = sub_3A93C(v22, v21, &v132);

    *(v9 + 14) = v28;
    _os_log_impl(&dword_0, v6, v7, "JSAPackageProvisioner [%s] Step 3: Decrypting and verifying JetPack from %{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = *(v0 + 256);

    sub_38328(v23, &qword_CA750, &qword_A0F70);
  }

  v30 = *(v0 + 208);
  v29 = *(v0 + 216);
  v32 = *(v0 + 192);
  v31 = *(v0 + 200);
  v33 = *(v0 + 368);
  v129 = sub_378EC(*(v0 + 288), *(v0 + 264));
  v35 = v34;
  sub_83F2C();
  (*(v31 + 16))(v30, v29, v32);
  v36 = 0xE600000000000000;
  v37 = 0x622D68636E75616CLL;
  v38 = 0xEE0064656C646E75;
  if (v33 != 2)
  {
    v37 = 0x756F72676B636162;
    v38 = 0xEA0000000000646ELL;
  }

  v39 = 0x6E2D68636E75616CLL;
  if (v33)
  {
    v36 = 0xED00006761622D6FLL;
  }

  else
  {
    v39 = 0x68636E75616CLL;
  }

  if (v33 <= 1)
  {
    v40 = v39;
  }

  else
  {
    v40 = v37;
  }

  if (v33 <= 1)
  {
    v41 = v36;
  }

  else
  {
    v41 = v38;
  }

  v43 = *(v0 + 176);
  v42 = *(v0 + 184);
  v44 = *(v0 + 368);
  BooksJetPackResourceBundle.init(memoryJetPack:provisionMode:)(*(v0 + 208), v40, v41, v42);
  sub_38138(v42, v43);
  v45 = type metadata accessor for Package(0);
  v46 = objc_allocWithZone(v45);
  sub_38138(v43, &v46[OBJC_IVAR___JSAPackage_jetPack]);
  v47 = &v46[OBJC_IVAR___JSAPackage_nameForJSContext];
  *v47 = v129;
  v47[1] = v35;
  v46[OBJC_IVAR___JSAPackage_isBundled] = 0;
  *(v0 + 96) = v46;
  *(v0 + 104) = v45;

  v48 = objc_msgSendSuper2((v0 + 96), "init");
  sub_3819C(v43);
  if (v44 > 1)
  {
    if (v44 == 2 && (Package.isSupported.getter() & 1) == 0)
    {

      v49 = v35;
      v50 = v48;
      v51 = sub_83D4C();
      v52 = sub_847BC();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        *v53 = 136315906;
        *(v53 + 4) = sub_3A93C(0x622D68636E75616CLL, 0xEE0064656C646E75, &v132);
        *(v53 + 12) = 2082;
        sub_38448(&qword_CA768, type metadata accessor for BooksJetPackResourceBundle, &protocol conformance descriptor for BooksJetPackResourceBundle);
        v54 = sub_83FCC();
        if (v55)
        {
          v56 = v55;
        }

        else
        {
          v54 = 0x302E302E30;
          v56 = 0xE500000000000000;
        }

        v57 = sub_3A93C(v54, v56, &v132);

        *(v53 + 14) = v57;
        *(v53 + 22) = 2082;
        *(v53 + 24) = sub_3A93C(v129, v49, &v132);
        *(v53 + 32) = 2080;
        *(v53 + 34) = sub_3A93C(14454, 0xE200000000000000, &v132);
        _os_log_impl(&dword_0, v51, v52, "JSAPackageProvisioner [%s] Error: Bundled JetPack is outdated and needs update, version=%{public}s, name=%{public}s, supportedVersion=%s", v53, 0x2Au);
        swift_arrayDestroy();
      }

      v35 = v49;
    }

    goto LABEL_41;
  }

  if (!v44)
  {
    sub_59ED4();
LABEL_41:

    v58 = v48;
    v59 = sub_83D4C();
    v60 = sub_847CC();
    v127 = v58;

    if (os_log_type_enabled(v59, v60))
    {
      log = v59;
      v124 = v35;
      v61 = *(v0 + 368);
      v62 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *v62 = 136315650;
      v63 = 0xE600000000000000;
      v64 = 0x622D68636E75616CLL;
      v65 = 0xEE0064656C646E75;
      if (v61 != 2)
      {
        v64 = 0x756F72676B636162;
        v65 = 0xEA0000000000646ELL;
      }

      v66 = 0x6E2D68636E75616CLL;
      if (v61)
      {
        v63 = 0xED00006761622D6FLL;
      }

      else
      {
        v66 = 0x68636E75616CLL;
      }

      if (v61 <= 1)
      {
        v67 = v66;
      }

      else
      {
        v67 = v64;
      }

      if (v61 <= 1)
      {
        v68 = v63;
      }

      else
      {
        v68 = v65;
      }

      v108 = *(v0 + 336);
      v116 = *(v0 + 304);
      v118 = *(v0 + 320);
      v69 = *(v0 + 280);
      v112 = *(v0 + 288);
      v114 = *(v0 + 312);
      v110 = *(v0 + 216);
      v111 = *(v0 + 272);
      v70 = *(v0 + 200);
      v109 = *(v0 + 192);
      v107 = *(v0 + 184);
      v71 = sub_3A93C(v67, v68, &v132);

      *(v62 + 4) = v71;
      *(v62 + 12) = 2082;
      sub_38448(&qword_CA768, type metadata accessor for BooksJetPackResourceBundle, &protocol conformance descriptor for BooksJetPackResourceBundle);
      v72 = sub_83FCC();
      if (v73)
      {
        v74 = v73;
      }

      else
      {
        v72 = 0x302E302E30;
        v74 = 0xE500000000000000;
      }

      v75 = sub_3A93C(v72, v74, &v132);

      *(v62 + 14) = v75;
      *(v62 + 22) = 2082;
      v76 = sub_3A93C(v129, v124, &v132);

      *(v62 + 24) = v76;
      _os_log_impl(&dword_0, log, v60, "JSAPackageProvisioner [%s] Done: Provision succeeded with version=%{public}s, name=%{public}s", v62, 0x20u);
      swift_arrayDestroy();

      sub_3819C(v107);
      (*(v70 + 8))(v110, v109);
      (*(v69 + 8))(v112, v111);
      (*(v114 + 8))(v118, v116);
    }

    else
    {
      v77 = *(v0 + 336);
      v78 = *(v0 + 312);
      v130 = *(v0 + 320);
      v79 = *(v0 + 280);
      loga = *(v0 + 288);
      v125 = *(v0 + 304);
      v119 = *(v0 + 272);
      v80 = *(v0 + 216);
      v81 = *(v0 + 192);
      v82 = *(v0 + 200);
      v83 = v59;
      v84 = *(v0 + 184);

      sub_3819C(v84);
      (*(v82 + 8))(v80, v81);
      (*(v79 + 8))(loga, v119);
      (*(v78 + 8))(v130, v125);
    }

    v85 = *(v0 + 264);
    goto LABEL_59;
  }

  if (Package.isSupported.getter())
  {
    goto LABEL_41;
  }

  v88 = v48;
  v89 = sub_83D4C();
  v90 = sub_847CC();

  v128 = v88;
  if (os_log_type_enabled(v89, v90))
  {
    v91 = v35;
    v92 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    *v92 = 136315906;
    *(v92 + 4) = sub_3A93C(0x6E2D68636E75616CLL, 0xED00006761622D6FLL, &v132);
    *(v92 + 12) = 2082;
    sub_38448(&qword_CA768, type metadata accessor for BooksJetPackResourceBundle, &protocol conformance descriptor for BooksJetPackResourceBundle);
    v93 = sub_83FCC();
    if (v94)
    {
      v95 = v94;
    }

    else
    {
      v93 = 0x302E302E30;
      v95 = 0xE500000000000000;
    }

    v96 = sub_3A93C(v93, v95, &v132);

    *(v92 + 14) = v96;
    *(v92 + 22) = 2082;
    v97 = sub_3A93C(v129, v91, &v132);

    *(v92 + 24) = v97;
    *(v92 + 32) = 2080;
    *(v92 + 34) = sub_3A93C(14454, 0xE200000000000000, &v132);
    _os_log_impl(&dword_0, v89, v90, "JSAPackageProvisioner [%s] Done: Rejected unsupported fallback JetPack with version=%{public}s, name=%{public}s, supportedVersion=%s", v92, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (qword_CA418 != -1)
  {
    swift_once();
  }

  v98 = *(v0 + 336);
  v99 = *(v0 + 312);
  v131 = *(v0 + 320);
  v100 = *(v0 + 280);
  v117 = *(v0 + 272);
  v120 = *(v0 + 288);
  logb = *(v0 + 264);
  v126 = *(v0 + 304);
  v101 = *(v0 + 200);
  v113 = *(v0 + 192);
  v115 = *(v0 + 216);
  v102 = *(v0 + 184);
  v104 = *(v0 + 152);
  v103 = *(v0 + 160);
  v105 = *(v0 + 144);
  v106 = sub_2C284(v105, qword_CACB8);
  (*(v104 + 16))(v103, v106, v105);
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  sub_83BBC();

  (*(v104 + 8))(v103, v105);
  sub_3819C(v102);
  (*(v101 + 8))(v115, v113);
  (*(v100 + 8))(v120, v117);
  (*(v99 + 8))(v131, v126);
  v85 = logb;
  v127 = 0;
LABEL_59:
  sub_38328(v85, &qword_CA750, &qword_A0F70);

  v86 = *(v0 + 8);

  return v86(v127);
}

uint64_t sub_33834()
{
  v21 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);

  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = sub_83D4C();
  v5 = sub_847AC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 368);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    v10 = 0xE600000000000000;
    *v7 = 136315394;
    v11 = 0x68636E75616CLL;
    v12 = 0xEE0064656C646E75;
    v13 = 0x622D68636E75616CLL;
    if (v6 != 2)
    {
      v13 = 0x756F72676B636162;
      v12 = 0xEA0000000000646ELL;
    }

    if (v6)
    {
      v11 = 0x6E2D68636E75616CLL;
      v10 = 0xED00006761622D6FLL;
    }

    if (v6 <= 1)
    {
      v14 = v11;
    }

    else
    {
      v14 = v13;
    }

    if (v6 <= 1)
    {
      v15 = v10;
    }

    else
    {
      v15 = v12;
    }

    v16 = sub_3A93C(v14, v15, &v20);

    *(v7 + 4) = v16;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v17;
    *v8 = v17;
    _os_log_impl(&dword_0, v4, v5, "JSAPackageProvisioner [%s] Error: Provision failed due to error=%@", v7, 0x16u);
    sub_38328(v8, &qword_CA760, &qword_A0F80);

    sub_371A8(v9);
  }

  else
  {
  }

  v18 = *(v0 + 8);

  return v18(0);
}

uint64_t sub_33B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_33BDC;

  return static Task<>.sleep(nanoseconds:)(15000000000);
}

uint64_t sub_33BDC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_33D0C, 0, 0);
  }
}

uint64_t sub_33D0C()
{
  sub_2805C(&qword_CA728, &qword_A0F20);
  sub_8469C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_33D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2805C(&qword_CA5E8, &qword_A0850);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_37660(a3, v22 - v9, &qword_CA5E8, &qword_A0850);
  v11 = sub_8468C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_38328(v10, &qword_CA5E8, &qword_A0850);
  }

  else
  {
    sub_8467C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_8460C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_8442C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_38328(a3, &qword_CA5E8, &qword_A0850);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_38328(a3, &qword_CA5E8, &qword_A0850);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_34048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 192) = a6;
  *(v6 + 88) = a4;
  *(v6 + 96) = a5;
  v7 = sub_2805C(&qword_CA740, &qword_A0F60);
  *(v6 + 104) = v7;
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  v8 = sub_839CC();
  *(v6 + 128) = v8;
  *(v6 + 136) = *(v8 - 8);
  *(v6 + 144) = swift_task_alloc();
  sub_2805C(&qword_CA748, &qword_A0F68);
  *(v6 + 152) = swift_task_alloc();
  v9 = sub_83EFC();
  *(v6 + 160) = v9;
  *(v6 + 168) = *(v9 - 8);
  *(v6 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_34208, 0, 0);
}

uint64_t sub_34208()
{
  v1 = v0[21];
  sub_370FC(v0[11], (v0 + 2));
  sub_2805C(&qword_CA730, &qword_A0F28);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v5 = v0[21];
    v4 = v0[22];
    v7 = v0[19];
    v6 = v0[20];
    v3(v7, 0, 1, v6);
    (*(v5 + 32))(v4, v7, v6);
    v8 = swift_task_alloc();
    v0[23] = v8;
    *v8 = v0;
    v8[1] = sub_343D0;
    v9 = v0[18];

    return ValidatedJetPackAssetLocations.BagKeyLocation.url()(v9);
  }

  else
  {
    v10 = v0[19];
    v3(v10, 1, 1, v0[20]);
    sub_38328(v10, &qword_CA748, &qword_A0F68);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_343D0()
{

  if (v0)
  {

    v1 = sub_34908;
  }

  else
  {
    v1 = sub_344E8;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_344E8()
{
  v38 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = sub_8391C();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  if (qword_CA418 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 112);
  v7 = *(v0 + 120);
  v9 = *(v0 + 104);
  v10 = sub_2C284(v9, qword_CACB8);
  v11 = *(v8 + 16);
  v11(v7, v10, v9);
  sub_83BAC();
  v12 = *(v8 + 8);
  v12(v7, v9);
  v13 = *(v0 + 64);
  if (v13)
  {
    if (*(v0 + 56) == v4 && v13 == v6 || (v14 = sub_84BEC(), , , (v14 & 1) != 0))
    {

      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      goto LABEL_23;
    }
  }

  else
  {
  }

  v15 = *(v0 + 120);
  v16 = *(v0 + 104);
  v11(v15, v10, v16);
  *(v0 + 72) = v4;
  *(v0 + 80) = v6;
  sub_83BBC();
  v12(v15, v16);

  v17 = sub_83D4C();
  v18 = sub_847CC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 192);
    v20 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v21 = 0xE600000000000000;
    *v20 = 136315394;
    v22 = 0x68636E75616CLL;
    v23 = 0xEE0064656C646E75;
    v24 = 0x622D68636E75616CLL;
    if (v19 != 2)
    {
      v24 = 0x756F72676B636162;
      v23 = 0xEA0000000000646ELL;
    }

    if (v19)
    {
      v22 = 0x6E2D68636E75616CLL;
      v21 = 0xED00006761622D6FLL;
    }

    if (v19 <= 1)
    {
      v25 = v22;
    }

    else
    {
      v25 = v24;
    }

    if (v19 <= 1)
    {
      v26 = v21;
    }

    else
    {
      v26 = v23;
    }

    v27 = *(v0 + 168);
    v36 = *(v0 + 176);
    v35 = *(v0 + 160);
    v28 = sub_3A93C(v25, v26, &v37);

    *(v20 + 4) = v28;
    *(v20 + 12) = 2082;
    v29 = sub_3A93C(v4, v6, &v37);

    *(v20 + 14) = v29;
    _os_log_impl(&dword_0, v17, v18, "JSAPackageProvisioner [%s] Persisting LastCachedBootURL='%{public}s", v20, 0x16u);
    swift_arrayDestroy();

    (*(v27 + 8))(v36, v35);
  }

  else
  {
    v31 = *(v0 + 168);
    v30 = *(v0 + 176);
    v32 = *(v0 + 160);

    (*(v31 + 8))(v30, v32);
  }

LABEL_23:

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_34908()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_349A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_8402C();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = __chkstk_darwin(v3);
  v53 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v45 - v6;
  v7 = sub_2805C(&qword_CA740, &qword_A0F60);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v45 - v9;
  v11 = sub_2805C(&unk_CAE60, &qword_A1800);
  __chkstk_darwin(v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_839CC();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v49 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v45 - v19;
  __chkstk_darwin(v18);
  v22 = &v45 - v21;
  if (qword_CA418 != -1)
  {
    swift_once();
  }

  v23 = sub_2C284(v7, qword_CACB8);
  (*(v8 + 16))(v10, v23, v7);
  sub_83BAC();
  (*(v8 + 8))(v10, v7);
  sub_8399C();

  v24 = *(v15 + 48);
  if (v24(v13, 1, v14) == 1)
  {
    if (qword_CA460 != -1)
    {
      swift_once();
    }

    v25 = sub_2C284(v14, qword_CEEC8);
    v26 = *(v15 + 16);
    v27 = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26(v22, v25, v14);
    if (v24(v13, 1, v14) != 1)
    {
      sub_38328(v13, &unk_CAE60, &qword_A1800);
    }
  }

  else
  {
    (*(v15 + 32))(v22, v13, v14);
    v26 = *(v15 + 16);
    v27 = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  v50 = v22;
  v47 = v27;
  v48 = v26;
  v26(v20, v22, v14);
  v51 = v2;
  v28 = sub_83D4C();
  v29 = sub_847CC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v30 = 136315394;
    *(v30 + 4) = sub_3A93C(0x6E2D68636E75616CLL, 0xED00006761622D6FLL, &v57);
    *(v30 + 12) = 2082;
    sub_38448(&qword_CA790, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v31 = sub_84BBC();
    v33 = v32;
    v46 = *(v15 + 8);
    v46(v20, v14);
    v34 = sub_3A93C(v31, v33, &v57);

    *(v30 + 14) = v34;
    _os_log_impl(&dword_0, v28, v29, "JSAPackageProvisioner [%s] Obtained fallbackURL='%{public}s", v30, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v46 = *(v15 + 8);
    v46(v20, v14);
  }

  v36 = v54;
  v35 = v55;
  v37 = v56;
  (*(v55 + 104))(v54, enum case for JetPackAssetRequestSourcePolicy.localOnly(_:), v56);
  v38 = *(v51 + OBJC_IVAR___JSAPackageProvisioner_isLaunching);
  if (v38)
  {
    v39 = 0x402E000000000000;
  }

  else
  {
    v39 = 0;
  }

  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = v38 ^ 1;
  v41 = sub_83ECC();
  v42 = v52;
  *(v52 + 24) = v41;
  v42[4] = sub_38448(&qword_CA788, &type metadata accessor for ValidatedJetPackAssetLocations.URLLocation, &protocol conformance descriptor for ValidatedJetPackAssetLocations.URLLocation);
  sub_382A8(v42);
  v43 = v50;
  v48(v49, v50, v14);
  (*(v35 + 16))(v53, v36, v37);
  sub_83EDC();
  (*(v35 + 8))(v36, v37);
  return (v46)(v43, v14);
}

uint64_t sub_350D8(char a1)
{
  *(v2 + 160) = v1;
  *(v2 + 426) = a1;
  *(v2 + 168) = swift_getObjectType();
  type metadata accessor for BooksJetPackResourceBundle(0);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v3 = sub_83E6C();
  *(v2 + 192) = v3;
  *(v2 + 200) = *(v3 - 8);
  *(v2 + 208) = swift_task_alloc();
  v4 = sub_83EAC();
  *(v2 + 216) = v4;
  *(v2 + 224) = *(v4 - 8);
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  v5 = sub_83FEC();
  *(v2 + 264) = v5;
  *(v2 + 272) = *(v5 - 8);
  *(v2 + 280) = swift_task_alloc();
  v6 = sub_2805C(&qword_CA718, &qword_A0F00);
  *(v2 + 288) = v6;
  *(v2 + 296) = *(v6 - 8);
  *(v2 + 304) = swift_task_alloc();
  v7 = sub_839CC();
  *(v2 + 312) = v7;
  *(v2 + 320) = *(v7 - 8);
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 344) = swift_task_alloc();

  return _swift_task_switch(sub_35398, v1, 0);
}

uint64_t sub_35398()
{
  v58 = v0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = sub_8437C();
  v4 = sub_8437C();
  v5 = [v2 URLForResource:v3 withExtension:v4];

  if (!v5)
  {
    return sub_84AFC();
  }

  sub_8396C();

  if (qword_CA430 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 296);
  v6 = *(v0 + 304);
  v8 = *(v0 + 288);
  v9 = sub_2C284(v8, qword_CAD00);
  v10 = *(v7 + 16);
  *(v0 + 352) = v10;
  *(v0 + 360) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v6, v9, v8);
  sub_83BAC();
  v11 = *(v7 + 8);
  *(v0 + 368) = v11;
  *(v0 + 376) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v6, v8);
  if (*(v0 + 424) == 1)
  {
    if (qword_CA3D0 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 336);
    v13 = *(v0 + 312);
    v14 = *(v0 + 320);
    v15 = sub_2C284(v13, qword_CA688);
    v16 = *(v14 + 16);
    v16(v12, v15, v13);
    v60._countAndFlagsBits = 0x656A2E7865646E69;
    v60._object = 0xED00006B63617074;
    sub_8395C(v60);
  }

  else
  {
    v16 = *(*(v0 + 320) + 16);
    v16(*(v0 + 336), *(v0 + 344), *(v0 + 312));
  }

  v18 = *(v0 + 328);
  v19 = *(v0 + 336);
  v20 = *(v0 + 312);
  *(v0 + 384) = OBJC_IVAR___JSAPackageProvisioner_logger;
  v16(v18, v19, v20);
  v21 = sub_83D4C();
  v22 = sub_847CC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 426);
    v24 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v25 = 0xE600000000000000;
    *v24 = 136315394;
    v26 = 0x68636E75616CLL;
    v27 = 0xEE0064656C646E75;
    v28 = 0x622D68636E75616CLL;
    if (v23 != 2)
    {
      v28 = 0x756F72676B636162;
      v27 = 0xEA0000000000646ELL;
    }

    if (v23)
    {
      v26 = 0x6E2D68636E75616CLL;
      v25 = 0xED00006761622D6FLL;
    }

    if (v23 <= 1)
    {
      v29 = v26;
    }

    else
    {
      v29 = v28;
    }

    if (v23 <= 1)
    {
      v30 = v25;
    }

    else
    {
      v30 = v27;
    }

    v31 = *(v0 + 320);
    v32 = *(v0 + 328);
    v33 = *(v0 + 312);
    v34 = sub_3A93C(v29, v30, &v57);

    *(v24 + 4) = v34;
    *(v24 + 12) = 2082;
    v35 = sub_8398C();
    v37 = v36;
    v38 = *(v31 + 8);
    v38(v32, v33);
    v39 = sub_3A93C(v35, v37, &v57);

    *(v24 + 14) = v39;
    _os_log_impl(&dword_0, v21, v22, "JSAPackageProvisioner [%s] Step 4: Loading bundled JetPack at %{public}s", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v41 = *(v0 + 320);
    v40 = *(v0 + 328);
    v42 = *(v0 + 312);

    v38 = *(v41 + 8);
    v38(v40, v42);
  }

  *(v0 + 392) = v38;
  v44 = *(v0 + 272);
  v43 = *(v0 + 280);
  v45 = *(v0 + 264);
  v47 = *(v0 + 200);
  v46 = *(v0 + 208);
  v48 = *(v0 + 192);
  v49 = *(v0 + 160);
  sub_8398C();
  sub_83FDC();
  sub_2DC18();
  *(v0 + 40) = v45;
  *(v0 + 48) = &protocol witness table for JetPackFileStreamSource;
  v50 = sub_382A8((v0 + 16));
  (*(v44 + 16))(v50, v43, v45);
  v51 = *(v49 + OBJC_IVAR___JSAPackageProvisioner_unpackQueue);
  *(v0 + 80) = sub_280A4();
  *(v0 + 88) = &protocol witness table for OS_dispatch_queue;
  *(v0 + 56) = v51;
  v52 = v51;
  *(v0 + 400) = sub_83E5C();
  (*(v47 + 8))(v46, v48);
  sub_371A8((v0 + 56));
  sub_371A8((v0 + 16));
  v53 = sub_2805C(&qword_CA778, &unk_A0FA0);
  v54 = sub_38254(&qword_CA780, &qword_CA778, &unk_A0FA0);
  v55 = swift_task_alloc();
  *(v0 + 408) = v55;
  *v55 = v0;
  v55[1] = sub_359D0;
  v56 = *(v0 + 256);

  return dispatch thunk of Future.then()(v56, v53, v54);
}

uint64_t sub_359D0()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_36234;
  }

  else
  {
    v4 = sub_35B18;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_35B18()
{
  v63 = v0;
  v1 = *(*(v0 + 224) + 16);
  v1(*(v0 + 248), *(v0 + 256), *(v0 + 216));
  v2 = sub_83D4C();
  v3 = sub_847CC();
  if (os_log_type_enabled(v2, v3))
  {
    v57 = v3;
    v4 = *(v0 + 426);
    v5 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = 0xE600000000000000;
    v7 = 0x622D68636E75616CLL;
    v8 = 0xEE0064656C646E75;
    if (v4 != 2)
    {
      v7 = 0x756F72676B636162;
      v8 = 0xEA0000000000646ELL;
    }

    v9 = 0x6E2D68636E75616CLL;
    if (v4)
    {
      v6 = 0xED00006761622D6FLL;
    }

    else
    {
      v9 = 0x68636E75616CLL;
    }

    if (v4 <= 1)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (v4 <= 1)
    {
      v11 = v6;
    }

    else
    {
      v11 = v8;
    }

    v13 = *(v0 + 240);
    v12 = *(v0 + 248);
    v14 = *(v0 + 216);
    v15 = *(v0 + 224);
    v16 = sub_3A93C(v10, v11, &v61);

    *(v5 + 4) = v16;
    *(v5 + 12) = 2080;
    v1(v13, v12, v14);
    v17 = sub_843FC();
    v19 = v18;
    v60 = *(v15 + 8);
    v60(v12, v14);
    v20 = sub_3A93C(v17, v19, &v61);

    *(v5 + 14) = v20;
    _os_log_impl(&dword_0, v2, v57, "JSAPackageProvisioner [%s] bundle provision succeeded with bundle %s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v21 = *(v0 + 248);
    v22 = *(v0 + 216);
    v23 = *(v0 + 224);

    v60 = *(v23 + 8);
    v60(v21, v22);
  }

  if (qword_CA470 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_CB321)
  {
    goto LABEL_24;
  }

  if (qword_CA468 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_CB320)
  {
    goto LABEL_24;
  }

  if (qword_CA458 != -1)
  {
    swift_once();
  }

  if (*(qword_CB010 + OBJC_IVAR___JSAProcessEnvironment__variant) == 1)
  {
LABEL_24:
    if (qword_CA400 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 368);
    v25 = *(v0 + 352);
    v26 = *(v0 + 304);
    v27 = *(v0 + 288);
    v28 = sub_2C284(v27, qword_CAC70);
    v25(v26, v28, v27);
    sub_83BAC();
    v24(v26, v27);
    v29 = *(v0 + 425);
  }

  else
  {
    v29 = 1;
  }

  sub_83FCC();
  if (v30)
  {

    v61 = 0;
    v62 = 0xE000000000000000;
    v31._countAndFlagsBits = sub_83FCC();
    if (!v31._object)
    {
      __break(1u);
      return v31._countAndFlagsBits;
    }

    sub_844AC(v31);

    v65._countAndFlagsBits = 0x64656C646E75622DLL;
    v65._object = 0xE800000000000000;
    sub_844AC(v65);
    v55 = v61;
    v56 = v62;
  }

  else
  {
    v55 = 0x64656C646E7562;
    v56 = 0xE700000000000000;
  }

  v58 = v29;
  v32 = *(v0 + 426);
  v1(*(v0 + 232), *(v0 + 256), *(v0 + 216));
  v33 = 0xE600000000000000;
  v34 = 0x622D68636E75616CLL;
  v35 = 0xEE0064656C646E75;
  if (v32 != 2)
  {
    v34 = 0x756F72676B636162;
    v35 = 0xEA0000000000646ELL;
  }

  v36 = 0x6E2D68636E75616CLL;
  if (v32)
  {
    v33 = 0xED00006761622D6FLL;
  }

  else
  {
    v36 = 0x68636E75616CLL;
  }

  if (v32 <= 1)
  {
    v37 = v36;
  }

  else
  {
    v37 = v34;
  }

  if (v32 <= 1)
  {
    v38 = v33;
  }

  else
  {
    v38 = v35;
  }

  v39 = *(v0 + 392);
  v40 = *(v0 + 336);
  v41 = *(v0 + 344);
  v42 = *(v0 + 312);
  v43 = *(v0 + 272);
  v54 = *(v0 + 280);
  v52 = *(v0 + 256);
  v53 = *(v0 + 264);
  v51 = *(v0 + 216);
  v45 = *(v0 + 176);
  v44 = *(v0 + 184);
  BooksJetPackResourceBundle.init(memoryJetPack:provisionMode:)(*(v0 + 232), v37, v38, v44);
  sub_38138(v44, v45);
  v46 = type metadata accessor for Package(0);
  v47 = objc_allocWithZone(v46);
  sub_38138(v45, &v47[OBJC_IVAR___JSAPackage_jetPack]);
  v48 = &v47[OBJC_IVAR___JSAPackage_nameForJSContext];
  *v48 = v55;
  v48[1] = v56;
  v47[OBJC_IVAR___JSAPackage_isBundled] = v58;
  *(v0 + 144) = v47;
  *(v0 + 152) = v46;
  v59 = objc_msgSendSuper2((v0 + 144), "init");
  sub_3819C(v45);
  sub_3819C(v44);
  v60(v52, v51);
  (*(v43 + 8))(v54, v53);
  v39(v40, v42);
  v39(v41, v42);

  v49 = *(v0 + 8);

  v31._countAndFlagsBits = v49(v59);
  return v31._countAndFlagsBits;
}

uint64_t sub_36234()
{
  swift_errorRetain();
  v0 = sub_83D4C();
  v1 = sub_847AC();

  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138412290;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v4;
    *v3 = v4;
    _os_log_impl(&dword_0, v0, v1, "JSAPackageProvisioner bundle provision failed due to error=%@", v2, 0xCu);
    sub_38328(v3, &qword_CA760, &qword_A0F80);
  }

  return sub_84AFC();
}

uint64_t sub_363AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v5 = sub_83E6C();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_36474, a3, 0);
}

uint64_t sub_36474()
{
  sub_2DC18();

  return _swift_task_switch(sub_364E0, 0, 0);
}

uint64_t sub_364E0()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  sub_8407C();
  v5 = *(v4 + OBJC_IVAR___JSAPackageProvisioner_unpackQueue);
  v0[10] = sub_280A4();
  v0[11] = &protocol witness table for OS_dispatch_queue;
  v0[7] = v5;
  v6 = v5;
  v0[18] = sub_83E5C();
  sub_371A8(v0 + 2);
  (*(v2 + 8))(v1, v3);
  sub_371A8(v0 + 7);
  v7 = sub_2805C(&qword_CA778, &unk_A0FA0);
  v8 = sub_38254(&qword_CA780, &qword_CA778, &unk_A0FA0);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_36648;
  v10 = v0[12];

  return dispatch thunk of Future.then()(v10, v7, v8);
}

uint64_t sub_36648()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_3677C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_839CC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5._countAndFlagsBits = 0x656A2E7865646E69;
  v5._object = 0xED00006B63617074;
  sub_8395C(v5);
}

id sub_36800(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_2805C(&qword_CA798, &qword_A0FB0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = objc_opt_self();
  v11 = objc_opt_self();
  v12 = [v11 currentProcess];
  v13 = [v10 ams_configurationWithProcessInfo:v12 bag:a1];

  if ((a4 & 1) == 0)
  {
    [v13 setTimeoutIntervalForRequest:*&a3];
  }

  swift_unknownObjectRetain();
  sub_8420C();
  v14 = sub_8421C();
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  v15 = [v11 currentProcess];
  sub_8401C();

  sub_38328(v9, &qword_CA798, &qword_A0FB0);
  return v13;
}

void PackageProvisioner.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void PackageProvisioner.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t PackageProvisioner.deinit()
{
  v1 = OBJC_IVAR___JSAPackageProvisioner_logger;
  v2 = sub_83D6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PackageProvisioner.__deallocating_deinit()
{
  v1 = OBJC_IVAR___JSAPackageProvisioner_logger;
  v2 = sub_83D6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_36B90()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_36BD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_38510;

  return sub_2E748(a1, v4, v5, v6, v7);
}

unint64_t sub_36CA4()
{
  result = qword_CA6D8;
  if (!qword_CA6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA6D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HotReloadState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HotReloadState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for PackageProvisioner(uint64_t a1)
{
  result = qword_CA708;
  if (!qword_CA708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_36EBC(uint64_t a1)
{
  result = sub_83D6C();
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

uint64_t sub_36FC0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3700C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_37044(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_38510;

  return sub_3DF8C(a1, v4);
}

uint64_t sub_370FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_37160()
{
  swift_unknownObjectRelease();

  sub_371A8((v0 + 40));

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_371A8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_371F4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_3720C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2C958;

  return sub_31E10(a1, v4, v5, v6, v1 + 40, v7);
}

uint64_t sub_372D4()
{
  v1 = sub_83D6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64) + v4;
  swift_unknownObjectRelease();
  sub_371A8((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_373A4(uint64_t a1)
{
  v4 = *(sub_83D6C() - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 72) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_38510;

  return sub_34048(a1, v5, v6, v1 + 32, v7, v8);
}

uint64_t sub_374C0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_37500(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2C958;

  return sub_33B38(a1, v4, v5, v6);
}

uint64_t sub_375B4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_38510;

  return sub_363AC(a1, a2, v2);
}

uint64_t sub_37660(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2805C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_376C8(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_377BC;

  return v5(v2 + 16);
}

uint64_t sub_377BC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_378EC(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v3 = sub_83EAC();
  v65 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_83AEC();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v58 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2805C(&qword_CA770, &qword_A0F98);
  __chkstk_darwin(v8 - 8);
  v62 = &v56 - v9;
  v10 = sub_83A4C();
  v63 = *(v10 - 8);
  v64 = v10;
  __chkstk_darwin(v10);
  v61 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2805C(&qword_CA750, &qword_A0F70);
  __chkstk_darwin(v12 - 8);
  v14 = &v56 - v13;
  v15 = sub_839CC();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v56 - v20;
  sub_37660(a2, v14, &qword_CA750, &qword_A0F70);
  v22 = sub_83ECC();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v14, 1, v22) == 1)
  {
    v24 = &qword_CA750;
    v25 = &qword_A0F70;
    v26 = v14;
  }

  else
  {
    sub_83EBC();
    (*(v23 + 8))(v14, v22);
    (*(v16 + 32))(v21, v19, v15);
    v27 = v15;
    if ((sub_838EC() & 1) == 0)
    {
      (*(v16 + 8))(v21, v15);
      goto LABEL_14;
    }

    v28 = [objc_opt_self() defaultManager];
    sub_8391C();
    v29 = sub_8437C();

    v67 = 0;
    v30 = [v28 attributesOfItemAtPath:v29 error:&v67];

    v31 = v67;
    if (v30)
    {
      v32 = v16;
      v57 = v27;
      type metadata accessor for FileAttributeKey(0);
      sub_38448(&qword_CA650, type metadata accessor for FileAttributeKey, &unk_A0CB0);
      v33 = sub_8434C();
      v34 = v31;

      v35 = v64;
      if (*(v33 + 16) && (v36 = sub_58860(), (v37 & 1) != 0))
      {
        sub_381F8(*(v33 + 56) + 32 * v36, v68);

        v38 = v62;
        v39 = swift_dynamicCast();
        v40 = v63;
        (*(v63 + 56))(v38, v39 ^ 1u, 1, v35);
        if ((*(v40 + 48))(v38, 1, v35) != 1)
        {
          v46 = v61;
          (*(v40 + 32))(v61, v38, v35);
          v47 = [objc_allocWithZone(NSISO8601DateFormatter) init];
          v48 = v58;
          sub_83ADC();
          v49 = v40;
          isa = sub_83ACC().super.isa;
          (*(v59 + 8))(v48, v60);
          [v47 setTimeZone:isa];

          [v47 setFormatOptions:544];
          v68[0] = 0x5B746F6F72;
          v68[1] = 0xE500000000000000;
          v51 = sub_83A3C().super.isa;
          v52 = [v47 stringFromDate:v51];

          v53 = sub_843AC();
          v55 = v54;

          v69._countAndFlagsBits = v53;
          v69._object = v55;
          sub_844AC(v69);

          v70._countAndFlagsBits = 93;
          v70._object = 0xE100000000000000;
          sub_844AC(v70);

          v42 = v68[0];
          (*(v49 + 8))(v46, v35);
          (*(v32 + 8))(v21, v57);
          return v42;
        }

        (*(v16 + 8))(v21, v57);
      }

      else
      {

        (*(v16 + 8))(v21, v57);
        v38 = v62;
        (*(v63 + 56))(v62, 1, 1, v35);
      }
    }

    else
    {
      v41 = v67;
      sub_838DC();

      swift_willThrow();

      (*(v16 + 8))(v21, v15);
      v38 = v62;
      (*(v63 + 56))(v62, 1, 1, v64);
    }

    v24 = &qword_CA770;
    v25 = &qword_A0F98;
    v26 = v38;
  }

  sub_38328(v26, v24, v25);
LABEL_14:
  sub_2805C(&qword_CA758, &qword_A0F78);
  sub_83F2C();
  v42 = sub_83FCC();
  v44 = v43;
  (*(v65 + 8))(v5, v3);
  if (!v44)
  {
    return 0x72616C75676572;
  }

  return v42;
}

uint64_t sub_38138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BooksJetPackResourceBundle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3819C(uint64_t a1)
{
  v2 = type metadata accessor for BooksJetPackResourceBundle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_381F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_38254(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_280F0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_382A8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_38328(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2805C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_38388(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_38510;

  return sub_376C8(a1, v4);
}

uint64_t sub_38448(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_38490(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t BooksJetPackResourceBundle.init(memoryJetPack:provisionMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v42 = a3;
  v36 = a2;
  v39 = a4;
  v5 = sub_83EAC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_8390C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_839CC();
  v12 = *(v38 - 8);
  __chkstk_darwin(v38);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2805C(&qword_CA7A8, &qword_A0FE0);
  __chkstk_darwin(v15 - 8);
  v17 = &v36 - v16;
  v18 = *(v6 + 16);
  v41 = a1;
  v37 = v18;
  v18(v17, a1, v5);
  v43 = v6;
  (*(v6 + 56))(v17, 0, 1, v5);
  sub_2805C(&qword_CA7B0, &qword_A0FE8);
  v19 = swift_allocObject();
  *(v19 + ((*(*v19 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_3A82C(v17, v19 + *(*v19 + class metadata base offset for ManagedBuffer + 16));
  *v39 = v19;
  sub_8393C();
  v44[0] = 0x556B63615074654ALL;
  v44[1] = 0xEF64656B6361706ELL;
  (*(v9 + 104))(v11, enum case for URL.DirectoryHint.inferFromPath(_:), v8);
  type metadata accessor for BooksJetPackResourceBundle(0);
  sub_3A8E8();
  sub_839BC();
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v38);
  if (qword_CA4A0 != -1)
  {
    swift_once();
  }

  v20 = sub_83D6C();
  sub_2C284(v20, qword_CB3F8);
  v22 = v40;
  v21 = v41;
  v37(v40, v41, v5);
  v23 = v42;

  v24 = sub_83D4C();
  v25 = sub_847CC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v26 = 136315394;
    v27 = sub_3A93C(v36, v23, v44);

    *(v26 + 4) = v27;
    *(v26 + 12) = 2082;
    v28 = sub_83FCC();
    if (v29)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0x302E302E30;
    }

    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = 0xE500000000000000;
    }

    v32 = *(v43 + 8);
    v32(v22, v5);
    v33 = sub_3A93C(v30, v31, v44);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_0, v24, v25, "Created in-memory JetPack for provisionMode=%s: %{public}s", v26, 0x16u);
    swift_arrayDestroy();

    return (v32)(v21, v5);
  }

  else
  {

    v35 = *(v43 + 8);
    v35(v21, v5);
    return (v35)(v22, v5);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BooksJetPackResourceBundle.evict()()
{
  v2 = sub_8405C();
  v97 = *(v2 - 8);
  v98 = v2;
  __chkstk_darwin(v2);
  v96 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for BooksJetPackResourceBundle(0);
  v4 = __chkstk_darwin(v102);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v90 - v7;
  v9 = sub_2805C(&qword_CA7A8, &qword_A0FE0);
  __chkstk_darwin(v9);
  v11 = &v90 - v10;
  v12 = sub_83EAC();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v99 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v95 = &v90 - v17;
  __chkstk_darwin(v16);
  v19 = &v90 - v18;
  v103 = v0;
  v20 = *v0;
  sub_83CEC();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_3AE70(v11);
  }

  else
  {
    v94 = v1;
    v21 = *(v13 + 32);
    v100 = v19;
    v21(v19, v11, v12);
    if (qword_CA4A0 != -1)
    {
      swift_once();
    }

    v93 = v12;
    v22 = sub_83D6C();
    v23 = sub_2C284(v22, qword_CB3F8);
    sub_38138(v103, v8);
    v92 = v23;
    v24 = sub_83D4C();
    v25 = sub_847CC();
    v26 = os_log_type_enabled(v24, v25);
    v101 = v13;
    v91 = v6;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v104 = v28;
      *v27 = 136446210;
      sub_839CC();
      sub_3AED8();
      v29 = sub_84BBC();
      v31 = v30;
      sub_3819C(v8);
      v32 = sub_3A93C(v29, v31, &v104);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_0, v24, v25, "Purging previous on-disk JetPack files at %{public}s", v27, 0xCu);
      sub_371A8(v28);
    }

    else
    {

      sub_3819C(v8);
    }

    v33 = objc_opt_self();
    v34 = [v33 defaultManager];
    sub_8394C(v35);
    v37 = v36;
    v104 = 0;
    v38 = [v34 removeItemAtURL:v36 error:&v104];

    if (v38)
    {
      v39 = v104;
    }

    else
    {
      v40 = v104;
      sub_838DC();

      swift_willThrow();

      v94 = 0;
    }

    v41 = v93;
    v42 = [v33 defaultManager];
    sub_8394C(v43);
    v45 = v44;
    v104 = 0;
    v46 = [v42 createDirectoryAtURL:v44 withIntermediateDirectories:1 attributes:0 error:&v104];

    v47 = v104;
    if (v46)
    {
      v48 = v101;
      v49 = v95;
      v93 = *(v101 + 16);
      v93(v95, v100, v41);
      v50 = v47;
      v51 = sub_83D4C();
      v52 = sub_847CC();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v104 = v90;
        *v53 = 136446210;
        v54 = sub_83FCC();
        v56 = v20;
        if (v55)
        {
          v57 = v54;
        }

        else
        {
          v57 = 0x302E302E30;
        }

        if (v55)
        {
          v58 = v55;
        }

        else
        {
          v58 = 0xE500000000000000;
        }

        v95 = *(v101 + 8);
        (v95)(v49, v41);
        v59 = v57;
        v20 = v56;
        v60 = sub_3A93C(v59, v58, &v104);
        v48 = v101;

        *(v53 + 4) = v60;
        _os_log_impl(&dword_0, v51, v52, "Persisting JetPack: %{public}s", v53, 0xCu);
        sub_371A8(v90);
      }

      else
      {

        v95 = *(v48 + 8);
        (v95)(v49, v41);
      }

      v62 = v99;
      v63 = v96;
      sub_8403C();
      v64 = v100;
      v65 = v94;
      v66 = sub_83E7C();
      if (v65)
      {
        (*(v97 + 8))(v63, v98);
        (v95)(v64, v41);
      }

      else
      {
        v67 = v66;
        (*(v97 + 8))(v63, v98);
        sub_395F0(v67, v64, v103);

        v93(v62, v64, v41);
        v68 = sub_83D4C();
        v69 = sub_847CC();
        v70 = os_log_type_enabled(v68, v69);
        v94 = 0;
        if (v70)
        {
          v71 = swift_slowAlloc();
          v72 = v62;
          v73 = swift_slowAlloc();
          v104 = v73;
          *v71 = 136446210;
          v74 = sub_83FCC();
          if (v75)
          {
            v76 = v74;
          }

          else
          {
            v76 = 0x302E302E30;
          }

          if (v75)
          {
            v77 = v75;
          }

          else
          {
            v77 = 0xE500000000000000;
          }

          (v95)(v72, v41);
          v78 = sub_3A93C(v76, v77, &v104);
          v48 = v101;

          *(v71 + 4) = v78;
          _os_log_impl(&dword_0, v68, v69, "Done persisting JetPack: %{public}s", v71, 0xCu);
          sub_371A8(v73);
        }

        else
        {

          (v95)(v62, v41);
        }

        v79 = *(*v20 + class metadata base offset for ManagedBuffer + 16);
        v80 = (*(*v20 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((v20 + v80));
        sub_3AE70(v20 + v79);
        (*(v48 + 56))(v20 + v79, 1, 1, v41);
        os_unfair_lock_unlock((v20 + v80));
        v81 = v91;
        sub_38138(v103, v91);
        v82 = sub_83D4C();
        v83 = sub_847CC();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v104 = v85;
          *v84 = 136446210;
          sub_839CC();
          sub_3AED8();
          v86 = sub_84BBC();
          v88 = v87;
          sub_3819C(v81);
          v89 = sub_3A93C(v86, v88, &v104);

          *(v84 + 4) = v89;
          _os_log_impl(&dword_0, v82, v83, "Using on-disk JetPack at %{public}s", v84, 0xCu);
          sub_371A8(v85);
        }

        else
        {

          sub_3819C(v81);
        }

        (v95)(v100, v41);
      }
    }

    else
    {
      v61 = v104;
      sub_838DC();

      swift_willThrow();
      (*(v101 + 8))(v100, v41);
    }
  }
}

uint64_t sub_395F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = a2;
  v56 = sub_8390C();
  v6 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_839CC();
  v8 = *(v55 - 8);
  v9 = __chkstk_darwin(v55);
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v47 = &v44 - v11;
  v12 = sub_8405C();
  v13 = *(v12 - 8);
  result = __chkstk_darwin(v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  if (v17)
  {
    v19 = *(v13 + 16);
    v18 = v13 + 16;
    v60 = v19;
    v50 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v48 = (v6 + 8);
    v49 = (v6 + 104);
    v51 = (v8 + 8);
    v52 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = (v18 - 8);
    v62 = a3;
    v20 = a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v59 = *(v18 + 56);
    v53 = v12;
    v46 = v18;
    v19(v16, v20, v12);
    while (1)
    {
      v21 = sub_83E7C();
      if (v3)
      {
        return (*v61)(v16, v12);
      }

      v22 = v21;
      v63 = v17;
      v64 = v21;
      sub_2805C(&qword_CA8B0, &qword_A10A8);
      sub_3BAFC();
      if (sub_8476C())
      {
        v57 = [objc_opt_self() defaultManager];
        type metadata accessor for BooksJetPackResourceBundle(0);
        v64 = sub_8404C();
        v65 = v23;
        v24 = v54;
        v25 = v56;
        (*v49)(v54, v50, v56);
        sub_3A8E8();
        v26 = v62;
        v27 = v47;
        sub_839AC();
        (*v48)(v24, v25);

        sub_8394C(v28);
        v30 = v29;
        (*v51)(v27, v55);
        v64 = 0;
        v31 = v57;
        v32 = [v57 createDirectoryAtURL:v30 withIntermediateDirectories:0 attributes:0 error:&v64];

        if (!v32)
        {
          v43 = v64;

          sub_838DC();

          swift_willThrow();
          return (*v61)(v52, v53);
        }

        v33 = v64;
        sub_395F0(v22, v58, v26);
        v16 = v52;
        v12 = v53;
        (*v61)(v52, v53);
      }

      else
      {

        v34 = sub_83E9C();
        v36 = v35;
        if (v35 >> 60 == 15)
        {
          result = (*v61)(v16, v12);
        }

        else
        {
          v37 = v34;
          type metadata accessor for BooksJetPackResourceBundle(0);
          v38 = sub_8404C();
          v57 = v39;
          v64 = v38;
          v65 = v39;
          v40 = v54;
          v41 = v56;
          (*v49)(v54, v50, v56);
          sub_3A8E8();
          v42 = v45;
          sub_839AC();
          (*v48)(v40, v41);

          sub_83A1C();
          sub_3BB60(v37, v36);
          (*v51)(v42, v55);
          v16 = v52;
          v12 = v53;
          result = (*v61)(v52, v53);
        }
      }

      v20 += v59;
      v17 = v63 - 1;
      if (v63 == 1)
      {
        return result;
      }

      v60(v16, v20, v12);
    }
  }

  return result;
}

uint64_t BooksJetPackResourceBundle.fileData(atPath:)(uint64_t a1)
{
  v29 = a1;
  v1 = sub_8390C();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_839CC();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2805C(&qword_CA7A8, &qword_A0FE0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_83EAC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_83CEC();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_3AE70(v9);
    type metadata accessor for BooksJetPackResourceBundle(0);
    v30 = sub_8404C();
    v31 = v14;
    v16 = v25;
    v15 = v26;
    (*(v25 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v26);
    sub_3A8E8();
    sub_839AC();
    (*(v16 + 8))(v3, v15);

    v17 = v32;
    v18 = sub_839DC();
    if (v17)
    {
      return (*(v27 + 8))(v6, v28);
    }

    else
    {
      v22 = v18;
      (*(v27 + 8))(v6, v28);
      return v22;
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v20 = v32;
    v21 = sub_83E9C();
    if (v20)
    {
      return (*(v11 + 8))(v13, v10);
    }

    else
    {
      v23 = v21;
      (*(v11 + 8))(v13, v10);
      return v23;
    }
  }
}

uint64_t BooksJetPackResourceBundle.data(withName:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_2805C(&qword_CA7A8, &qword_A0FE0);
  __chkstk_darwin(v3);
  v5 = v13 - v4;
  v6 = sub_83EAC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_83CEC();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_3AE70(v5);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v11 = sub_83E8C();
    if (v2)
    {
      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      v12 = v11;
      (*(v7 + 8))(v9, v6);
      return v12;
    }
  }
}

void *BooksJetPackResourceBundle.contentsOfDirectory(atPath:)(uint64_t a1)
{
  v49 = a1;
  v1 = sub_8405C();
  v2 = *(v1 - 8);
  v50 = v1;
  v51 = v2;
  __chkstk_darwin(v1);
  v44 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_8390C();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v6 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_839CC();
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2805C(&qword_CA7A8, &qword_A0FE0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v14 = sub_83EAC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_83CEC();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_3AE70(v13);
    v18 = [objc_opt_self() defaultManager];
    type metadata accessor for BooksJetPackResourceBundle(0);
    v54[0] = sub_8404C();
    v54[1] = v19;
    v20 = v47;
    v21 = v48;
    (*(v47 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v48);
    sub_3A8E8();
    sub_839AC();
    (*(v20 + 8))(v6, v21);

    sub_8394C(v22);
    v24 = v23;
    v25 = v53;
    v48 = *(v53 + 8);
    v49 = v53 + 8;
    v48(v10, v52);
    v54[0] = 0;
    v26 = [v18 contentsOfDirectoryAtURL:v24 includingPropertiesForKeys:0 options:16 error:v54];

    v27 = v54[0];
    if (v26)
    {
      v28 = sub_845AC();
      v29 = v27;

      v30 = *(v28 + 16);
      if (v30)
      {
        v54[0] = _swiftEmptyArrayStorage;
        sub_3AF50(0, v30, 0);
        v6 = v54[0];
        v32 = *(v25 + 16);
        v31 = v25 + 16;
        v33 = *(v31 + 64);
        v43 = v28;
        v34 = v28 + ((v33 + 32) & ~v33);
        v53 = v31;
        v46 = *(v31 + 56);
        v47 = v32;
        v35 = v44;
        do
        {
          v36 = v52;
          (v47)(v10, v34, v52);
          sub_8391C();
          sub_8406C();
          v48(v10, v36);
          v54[0] = v6;
          v38 = v6[2];
          v37 = v6[3];
          if (v38 >= v37 >> 1)
          {
            sub_3AF50((v37 > 1), v38 + 1, 1);
            v35 = v44;
            v6 = v54[0];
          }

          v6[2] = v38 + 1;
          (*(v51 + 32))(v6 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v38, v35, v50);
          v34 += v46;
          --v30;
        }

        while (v30);
      }

      else
      {

        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v41 = v54[0];
      sub_838DC();

      swift_willThrow();
    }
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v39 = v45;
    v40 = sub_83E7C();
    if (!v39)
    {
      v6 = v40;
    }

    (*(v15 + 8))(v17, v14);
  }

  return v6;
}

uint64_t sub_3A82C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2805C(&qword_CA7A8, &qword_A0FE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for BooksJetPackResourceBundle(uint64_t a1)
{
  result = qword_CA818;
  if (!qword_CA818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_3A8E8()
{
  result = qword_CA7B8;
  if (!qword_CA7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA7B8);
  }

  return result;
}

unint64_t sub_3A93C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_3AA08(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_381F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_371A8(v11);
  return v7;
}

unint64_t sub_3AA08(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_3AB14(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_84A8C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_3AB14(uint64_t a1, unint64_t a2)
{
  v3 = sub_3AB60(a1, a2);
  sub_3AC90(&off_B36E0);
  return v3;
}

void *sub_3AB60(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_5CA04(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_84A8C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_844CC();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_5CA04(v10, 0);
        result = sub_84A3C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_3AC90(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_3AD7C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_3AD7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2805C(&qword_CA8C0, &unk_A10B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_3AE70(uint64_t a1)
{
  v2 = sub_2805C(&qword_CA7A8, &qword_A0FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_3AED8()
{
  result = qword_CA790;
  if (!qword_CA790)
  {
    sub_839CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA790);
  }

  return result;
}

void *sub_3AF30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_3B294(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_3AF50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_3B920(a1, a2, a3, *v3, &qword_CA8A8, &qword_A10A0, &type metadata accessor for JetPackPath);
  *v3 = result;
  return result;
}

uint64_t sub_3AFA8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_839CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_3B068(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_839CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_3B10C(uint64_t a1)
{
  sub_3B190(319);
  if (v1 <= 0x3F)
  {
    sub_839CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_3B190(uint64_t a1)
{
  if (!qword_CA828)
  {
    sub_280F0(&qword_CA7A8, &qword_A0FE0);
    v1 = sub_83CFC();
    if (!v2)
    {
      atomic_store(v1, &qword_CA828);
    }
  }
}

void *sub_3B1F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_3B414(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_3B214(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_3B570(a1, a2, a3, *v3, &qword_CA858, &qword_A1050, &qword_CA860, &qword_A1058);
  *v3 = result;
  return result;
}

char *sub_3B254(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_3B6B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_3B274(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_3B7C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_3B294(void *result, int64_t a2, char a3, void *a4)
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
    sub_2805C(&qword_CA8C8, qword_A10C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
    {
      sub_2805C(&qword_CA5E0, &qword_A0848);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      sub_2805C(&qword_CA5E0, &qword_A0848);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    sub_2805C(&qword_CA5E0, &qword_A0848);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_3B414(void *result, int64_t a2, char a3, void *a4)
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
    sub_2805C(&qword_CA878, &qword_A1070);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2805C(&qword_CA880, &qword_A1078);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_3B570(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_2805C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2805C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_3B6B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2805C(&qword_CA8A0, &qword_A1CA0);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_3B7C4(void *result, int64_t a2, char a3, void *a4)
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
    sub_2805C(&qword_CA888, &qword_A1080);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2805C(&qword_CA890, &qword_A1088);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_3B920(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_2805C(a5, a6);
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

unint64_t sub_3BAFC()
{
  result = qword_CA8B8;
  if (!qword_CA8B8)
  {
    sub_280F0(&qword_CA8B0, &qword_A10A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA8B8);
  }

  return result;
}

uint64_t sub_3BB60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_3BB74(a1, a2);
  }

  return a1;
}

uint64_t sub_3BB74(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_3BBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2805C(&qword_CA5E8, &qword_A0850);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_3EDCC(a3, v25 - v10);
  v12 = sub_8468C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_38328(v11, &qword_CA5E8, &qword_A0850);
  }

  else
  {
    sub_8467C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_8460C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_8442C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

Swift::Int sub_3BEA8()
{
  v1 = *v0;
  sub_84CCC();
  sub_84CDC(v1);
  return sub_84D0C();
}

Swift::Int sub_3BF1C(uint64_t a1)
{
  v2 = *v1;
  sub_84CCC();
  sub_84CDC(v2);
  return sub_84D0C();
}

unint64_t sub_3BF60@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_3E17C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_3BFA0()
{
  result = [objc_allocWithZone(type metadata accessor for URLParser()) init];
  qword_CA8D0 = result;
  return result;
}

uint64_t sub_3BFF0()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_3C0E0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x726F662865707974, 0xEA0000000000293ALL, sub_3E18C, v2, &type metadata for URLParser.ParserURLType);
}

uint64_t sub_3C0E0()
{

  return _swift_task_switch(sub_3C1F8, 0, 0);
}

void sub_3C210(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = sub_839CC();
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v25);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2805C(&qword_CA908, &unk_A1230);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = [objc_opt_self() defaultBag];
  v11 = [objc_allocWithZone(AMSURLParser) initWithBag:v10];

  sub_8394C(v12);
  v14 = v13;
  v22 = [v11 typeForURL:v13];

  (*(v6 + 16))(v9, v24, v5);
  v15 = v23;
  v16 = v25;
  (*(v3 + 16))(v23, a2, v25);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = (v7 + *(v3 + 80) + v17) & ~*(v3 + 80);
  v19 = swift_allocObject();
  (*(v6 + 32))(v19 + v17, v9, v5);
  (*(v3 + 32))(v19 + v18, v15, v16);
  aBlock[4] = sub_3F080;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_65258;
  aBlock[3] = &unk_B56E8;
  v20 = _Block_copy(aBlock);

  v21 = v22;
  [v22 addFinishBlock:v20];
  _Block_release(v20);
}

uint64_t sub_3C51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_839CC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_CA4E0 != -1)
    {
      swift_once();
    }

    v12 = sub_83D6C();
    sub_2C284(v12, qword_CB4B8);
    swift_errorRetain();
    v13 = sub_83D4C();
    v14 = sub_847AC();

    if (!os_log_type_enabled(v13, v14))
    {

      if (!a1)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v15 = swift_slowAlloc();
    v33[1] = a3;
    v34 = v8;
    v16 = v15;
    v17 = swift_slowAlloc();
    v33[0] = v9;
    v18 = v17;
    v35 = a2;
    v36 = v17;
    *v16 = 136446210;
    swift_errorRetain();
    sub_2805C(&qword_CA738, &qword_A1870);
    v19 = sub_843FC();
    v21 = sub_3A93C(v19, v20, &v36);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_0, v13, v14, "Parsing commerce UI URL encountered error: %{public}s", v16, 0xCu);
    sub_371A8(v18);
    v9 = v33[0];

    v8 = v34;
  }

  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_9:
  v36 = 0;
  v37 = 1;
  sub_8475C();
  if ((v37 & 1) == 0)
  {
    v23 = v36;
    if (v36 == (&dword_0 + 2))
    {
      v36 = (&dword_0 + 3);
      goto LABEL_11;
    }

    if (v36 == (&dword_0 + 1))
    {
      v36 = (&dword_0 + 2);
      goto LABEL_11;
    }

    if (!v36)
    {
      v36 = (&dword_0 + 1);
      goto LABEL_11;
    }

    if (qword_CA4E0 != -1)
    {
      swift_once();
    }

    v24 = sub_83D6C();
    sub_2C284(v24, qword_CB4B8);
    (*(v9 + 16))(v11, a4, v8);
    v25 = sub_83D4C();
    v26 = sub_847BC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v23;
      *(v27 + 12) = 2080;
      sub_3AED8();
      v29 = sub_84BBC();
      v31 = v30;
      (*(v9 + 8))(v11, v8);
      v32 = sub_3A93C(v29, v31, &v36);

      *(v27 + 14) = v32;
      _os_log_impl(&dword_0, v25, v26, "AMSURLParser returned an unknown type value %ld for %s", v27, 0x16u);
      sub_371A8(v28);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }
  }

LABEL_10:
  v36 = 0;
LABEL_11:
  sub_2805C(&qword_CA908, &unk_A1230);
  return sub_8462C();
}

uint64_t sub_3CB08(uint64_t a1, const void *a2)
{
  v4 = sub_839CC();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v2[6] = _Block_copy(a2);
  sub_8396C();

  return _swift_task_switch(sub_3CBF0, 0, 0);
}

uint64_t sub_3CBF0()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_3CCE0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x726F662865707974, 0xEA0000000000293ALL, sub_3F194, v2, &type metadata for URLParser.ParserURLType);
}

uint64_t sub_3CCE0()
{

  return _swift_task_switch(sub_3CDF8, 0, 0);
}

uint64_t sub_3CDF8()
{
  v1 = v0[6];
  v2 = v0[2];
  (*(v0[4] + 8))(v0[5], v0[3]);
  v1[2](v1, v2);
  _Block_release(v1);

  v3 = v0[1];

  return v3();
}

id URLParser.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id URLParser.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_3CF54()
{
  if (qword_CA3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_CA8D0;

  return v1;
}

id sub_3CFB4()
{
  if (qword_CA3D8 != -1)
  {
    swift_once();
  }

  v1 = qword_CA8D0;

  return v1;
}

Swift::Void __swiftcall URLParser.isCommerceUIURLWithCallback(_:_:)(Swift::String a1, JSValue a2)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v6 = sub_2805C(&qword_CA5E8, &qword_A0850);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_8468C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2].super.isa = 0;
  v10[3].super.isa = 0;
  v10[4].super.isa = v2;
  v10[5].super.isa = countAndFlagsBits;
  v10[6].super.isa = object;
  v10[7].super.isa = a2.super.isa;
  v11 = v2;

  v12 = a2.super.isa;
  sub_3BBC8(0, 0, v8, &unk_A1100, v10);

  sub_38328(v8, &qword_CA5E8, &qword_A0850);
}

uint64_t sub_3D158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a7;
  v10 = swift_task_alloc();
  *(v7 + 24) = v10;
  *v10 = v7;
  v10[1] = sub_3D210;

  return sub_3E26C(a5, a6);
}

uint64_t sub_3D210(char a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_3D310, 0, 0);
}

uint64_t sub_3D310()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = [objc_opt_self() sharedInstance];
  sub_2805C(&unk_CADB0, &unk_A16E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_A10E0;
  *(v4 + 56) = &type metadata for Bool;
  *(v4 + 32) = v1;
  isa = sub_8458C().super.isa;
  v6 = sub_8437C();
  [v3 enqueueValueCall:v2 arguments:isa file:v6 line:147];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_3D5C4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2805C(&qword_CA5E8, &qword_A0850);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_8468C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a2;
  v13 = a2;
  v14 = a1;

  sub_3BBC8(0, 0, v10, &unk_A1210, v12);

  return sub_38328(v10, &qword_CA5E8, &qword_A0850);
}

uint64_t sub_3D710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_2805C(&unk_CAE60, &qword_A1800);
  v7[6] = swift_task_alloc();
  v7[7] = swift_task_alloc();
  v8 = sub_839CC();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_3D824, 0, 0);
}

uint64_t sub_3D824()
{
  v1 = v0[2];
  if (!v1)
  {
LABEL_10:

    v26 = v0[1];

    return v26();
  }

  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];
  v5 = objc_opt_self();
  v6 = v1;
  v7 = [v5 defaultBag];
  v8 = objc_allocWithZone(sub_83C6C());
  v0[12] = sub_83C5C();
  sub_8399C();
  v9 = *(v3 + 48);
  v0[13] = v9;
  v0[14] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v9(v4, 1, v2) == 1)
  {
    v10 = v0[5];
    sub_38328(v0[7], &unk_CAE60, &qword_A1800);
    v11 = v0[12];
    if (v10)
    {
      v12 = v0[5];
      v13 = v0[2];
      v14 = objc_opt_self();
      v15 = v12;
      v16 = [v14 sharedInstance];
      v17 = sub_8437C();
      [v16 enqueueValueCall:v15 arguments:0 file:v17 line:158];
    }

    else
    {
      v15 = v0[2];
    }

    goto LABEL_10;
  }

  v18 = v0[11];
  v19 = v0[8];
  v20 = v0[9];
  v21 = v0[7];
  v22 = *(v20 + 32);
  v0[15] = v22;
  v0[16] = (v20 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v22(v18, v21, v19);
  v23 = swift_task_alloc();
  v0[17] = v23;
  *v23 = v0;
  v23[1] = sub_3DACC;
  v24 = v0[11];
  v25 = v0[6];

  return CampaignAttributor.processURL(_:ignoreMarketing:)(v25, v24, 0);
}

uint64_t sub_3DACC()
{

  return _swift_task_switch(sub_3DBC8, 0, 0);
}

uint64_t sub_3DBC8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  if ((*(v0 + 104))(v2, 1, v1) == 1)
  {
    (*(*(v0 + 72) + 8))(*(v0 + 88), v1);
    v3 = *(v0 + 40);
    sub_38328(*(v0 + 48), &unk_CAE60, &qword_A1800);
    v4 = *(v0 + 96);
    if (v3)
    {
      v5 = *(v0 + 40);
      v6 = *(v0 + 16);
      v7 = objc_opt_self();
      v8 = v5;
      v9 = [v7 sharedInstance];
      v10 = sub_8437C();
      [v9 enqueueValueCall:v8 arguments:0 file:v10 line:158];
    }

    else
    {
      v8 = *(v0 + 16);
    }
  }

  else
  {
    v11 = *(v0 + 96);
    v24 = *(v0 + 88);
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = *(v0 + 16);
    (*(v0 + 120))(v12, v2, v1);
    v15 = [objc_opt_self() sharedInstance];
    sub_2805C(&unk_CADB0, &unk_A16E0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_A10E0;
    v17 = sub_8391C();
    *(v16 + 56) = &type metadata for String;
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    isa = sub_8458C().super.isa;
    v20 = sub_8437C();
    [v15 enqueueValueCall:v14 arguments:isa file:v20 line:162];

    v21 = *(v13 + 8);
    v21(v12, v1);
    v21(v24, v1);
  }

  v22 = *(v0 + 8);

  return v22();
}

void sub_3DE90(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_3DF8C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_3E084;

  return v6(a1);
}

uint64_t sub_3E084()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_3E17C(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_3E198(uint64_t a1)
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
  v10[1] = sub_38510;

  return sub_3D158(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_3E26C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_2805C(&unk_CAE60, &qword_A1800);
  v2[5] = swift_task_alloc();
  v3 = sub_839CC();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_3E364, 0, 0);
}

uint64_t sub_3E364()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_8399C();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_38328(v0[5], &unk_CAE60, &qword_A1800);

    v4 = v0[1];

    return v4(0);
  }

  else
  {
    v6 = v0[8];
    (*(v0[7] + 32))(v6, v0[5], v0[6]);
    v7 = swift_task_alloc();
    v0[9] = v7;
    *(v7 + 16) = v6;
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_3E510;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x726F662865707974, 0xEA0000000000293ALL, sub_3F194, v7, &type metadata for URLParser.ParserURLType);
  }
}

uint64_t sub_3E510()
{

  return _swift_task_switch(sub_3E628, 0, 0);
}

uint64_t sub_3E628()
{
  v1 = v0[2];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];

  return v2(v1 != 0);
}

void _s5JSApp9URLParserC28processCampaignAttributedURLySo7JSValueCSSF_0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 environment];

  v6 = [v5 context];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v10[4] = sub_3EC88;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_3DE90;
  v10[3] = &unk_B5620;
  v8 = _Block_copy(v10);

  v9 = [objc_opt_self() valueWithNewPromiseInContext:v6 fromExecutor:v8];
  _Block_release(v8);

  if (!v9)
  {
    __break(1u);
  }
}

unint64_t sub_3E828()
{
  result = qword_CA8D8;
  if (!qword_CA8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA8D8);
  }

  return result;
}

uint64_t sub_3E8B0(uint64_t a1)
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
  v10[1] = sub_2C958;

  return sub_3D158(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_3E984()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_3E9CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_38510;

  return sub_3CB08(v2, v3);
}

uint64_t sub_3EA84()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_38510;

  return sub_55394(v2, v3, v4);
}

uint64_t sub_3EB44()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3EB84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_38510;

  return sub_5547C(a1, v4, v5, v6);
}

uint64_t sub_3EC50()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3EC90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3ECA8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_3ECF8(uint64_t a1)
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
  v10[1] = sub_38510;

  return sub_3D710(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_3EDCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2805C(&qword_CA5E8, &qword_A0850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3EE3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3EE74(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2C958;

  return sub_3DF8C(a1, v4);
}

uint64_t sub_3EF2C()
{
  v1 = sub_2805C(&qword_CA908, &unk_A1230);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_839CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_3F080(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_2805C(&qword_CA908, &unk_A1230) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_839CC() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_3C51C(a1, a2, v2 + v6, v9);
}

id sub_3F2B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v43 = _swiftEmptyArrayStorage;
    sub_3B1F4(0, v2, 0);
    v4 = a1;
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    v31 = a1;
    v32 = a1 + 32;
    v30 = v2;
    while (v5 < *(v4 + 16))
    {
      v34 = v6;
      v35 = v5;
      v7 = *(v32 + 8 * v5);
      v8 = *(v7 + 16);
      if (v8)
      {
        sub_2805C(&qword_CA868, &unk_A1060);
        v9 = swift_allocObject();
        v10 = j__malloc_size(v9);
        v9[2] = v8;
        v9[3] = 2 * ((v10 - 32) / 24);
        v33 = sub_6FCE0(&v41, v9 + 4, v8, v7);
        v11 = v41;
        swift_bridgeObjectRetain_n();
        sub_40AE0(v11);
        if (v33 != v8)
        {
          goto LABEL_22;
        }
      }

      else
      {

        v9 = _swiftEmptyArrayStorage;
      }

      v41 = v9;
      sub_3FE78(&v41);
      v12 = v41;
      v13 = v41[2];
      if (v13)
      {
        v40 = _swiftEmptyArrayStorage;
        sub_3B214(0, v13, 0);
        v14 = _swiftEmptyArrayStorage;
        v15 = (v12 + 48);
        do
        {
          v16 = *(v15 - 1);
          v17 = *v15;
          v37 = *(v15 - 2);
          v38 = v16;
          v39 = v17;

          swift_unknownObjectRetain();
          sub_2805C(&qword_CA870, &qword_A1280);
          sub_2805C(&qword_CA860, &qword_A1058);
          swift_dynamicCast();
          v18 = v41;
          v19 = v42;
          v40 = v14;
          v21 = v14[2];
          v20 = v14[3];
          if (v21 >= v20 >> 1)
          {
            v28 = v42;
            sub_3B214((v20 > 1), v21 + 1, 1);
            v19 = v28;
            v14 = v40;
          }

          v14[2] = v21 + 1;
          v22 = &v14[3 * v21];
          v22[4] = v18;
          *(v22 + 5) = v19;
          v15 += 3;
          --v13;
        }

        while (v13);
      }

      else
      {

        v14 = _swiftEmptyArrayStorage;
      }

      v6 = v34;
      v43 = v34;
      v24 = v34[2];
      v23 = v34[3];
      if (v24 >= v23 >> 1)
      {
        sub_3B1F4((v23 > 1), v24 + 1, 1);
        v6 = v43;
      }

      v5 = v35 + 1;
      v6[2] = v24 + 1;
      v6[v24 + 4] = v14;
      v4 = v31;
      if (v35 + 1 == v30)
      {
        v25 = v6;

        v26 = v25;
        v1 = v29;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);

    __break(1u);
  }

  else
  {

    v26 = _swiftEmptyArrayStorage;
LABEL_20:
    *&v1[OBJC_IVAR____TtC5JSApp30FigaroEventFieldViewController_data] = v26;
    v36.receiver = v1;
    v36.super_class = type metadata accessor for FigaroEventFieldViewController();
    return objc_msgSendSuper2(&v36, "initWithStyle:", 2);
  }

  return result;
}

char *sub_3F790(void *a1)
{
  v4 = sub_8437C();
  isa = sub_83AFC().super.isa;
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:isa];

  v7 = *(v1 + OBJC_IVAR____TtC5JSApp30FigaroEventFieldViewController_data);
  v8 = sub_83B2C();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v8 >= *(v7 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = *(v7 + 8 * v8 + 32);

  v10 = sub_83B1C();
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v10 >= *(v9 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  swift_unknownObjectRetain();

  v11 = [v6 textLabel];
  if (v11)
  {
    v12 = v11;
    v13 = sub_8437C();

    [v12 setText:v13];
  }

  else
  {
  }

  swift_unknownObjectRetain();
  sub_2805C(&qword_CA970, &qword_A1290);
  if (swift_dynamicCast())
  {
    v14 = [v6 detailTextLabel];
    if (v14)
    {
      v15 = v14;
      sub_40AFC();
      sub_8436C();

      v16 = sub_8437C();

      [v15 setText:v16];

LABEL_34:
      swift_unknownObjectRelease();
      return v6;
    }

LABEL_24:

    goto LABEL_34;
  }

  swift_unknownObjectRetain();
  sub_2805C(&qword_CA978, &qword_A1298);
  if (!swift_dynamicCast())
  {
    v28 = [v6 detailTextLabel];
    if (v28)
    {
      v29 = v28;
      sub_84AEC();
      v30 = sub_8437C();

      [v29 setText:v30];
    }

    goto LABEL_34;
  }

  v2 = v38;
  v17 = [v6 detailTextLabel];
  if (!v17)
  {
    goto LABEL_24;
  }

  v37 = v17;
  if (!(v38 >> 62))
  {
    v18 = *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8));
    if (v18)
    {
      goto LABEL_15;
    }

LABEL_32:

LABEL_33:
    sub_40AFC();
    v31 = sub_8436C();
    v33 = v32;

    v40._countAndFlagsBits = v31;
    v40._object = v33;
    sub_844AC(v40);

    v34 = sub_8437C();

    [v37 setText:v34];

    goto LABEL_34;
  }

LABEL_31:
  v18 = sub_84B0C();
  if (!v18)
  {
    goto LABEL_32;
  }

LABEL_15:
  v36 = v6;
  result = sub_3B254(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v21 = _swiftEmptyArrayStorage;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        sub_84A6C();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v22 = sub_843FC();
      v39 = v21;
      v25 = v21[2];
      v24 = v21[3];
      if (v25 >= v24 >> 1)
      {
        v35 = v22;
        v27 = v23;
        sub_3B254((v24 > 1), v25 + 1, 1);
        v23 = v27;
        v22 = v35;
        v21 = v39;
      }

      ++v20;
      v21[2] = v25 + 1;
      v26 = &v21[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
    }

    while (v18 != v20);

    v6 = v36;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

id sub_3FE0C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

Swift::Int sub_3FE78(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_40AE8(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_3FEE4(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_3FEE4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_84BAC(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_2805C(&qword_CA870, &qword_A1280);
        v5 = sub_845DC();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_400D0(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_3FFEC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_3FFEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_84BEC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 32);
      v15 = *(v12 + 16);
      result = *(v12 + 24);
      *(v12 + 24) = *v12;
      *(v12 + 40) = v15;
      *v12 = result;
      *(v12 + 8) = v14;
      v10 = v14;
      v12 -= 24;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_400D0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_105:
    v101 = *v101;
    if (!v101)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_409C8(v8);
      v8 = result;
    }

    v92 = v8 + 16;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v95 = &v8[16 * v93];
        v5 = *v95;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_406DC((v94 + 24 * *v95), (v94 + 24 * *v96), v94 + 24 * v97, v101);
        if (v4)
        {
        }

        if (v97 < v5)
        {
          goto LABEL_129;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_130;
        }

        *v95 = v5;
        *(v95 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_131;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        v5 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 24 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 24 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = sub_84BEC();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 24 * v9 + 32);
        v17 = v16;
        do
        {
          result = v16[2];
          v19 = v17[3];
          v17 += 3;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_84BEC();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 0;
          v22 = 24 * v7;
          v23 = 24 * v9;
          v24 = v9;
          do
          {
            if (v24 != v7 + v21 - 1)
            {
              v30 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = v30 + v23;
              v26 = v30 + v22;
              v27 = *v25;
              v28 = *(v25 + 8);
              v29 = *(v26 - 24);
              *(v25 + 16) = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v24;
            --v21;
            v22 -= 24;
            v23 += 24;
          }

          while (v24 < v7 + v21);
        }
      }
    }

    v31 = v5[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v31)
        {
          v32 = v5[1];
        }

        else
        {
          v32 = v9 + a4;
        }

        if (v32 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v32)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_409DC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_409DC((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v47;
    v48 = &v8[16 * v46];
    *(v48 + 4) = v9;
    *(v48 + 5) = v7;
    v49 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_74:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v8[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v8[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v77 = &v8[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_88:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v8[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_95:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v50 + 40];
        sub_406DC((*v5 + 24 * v89), (*v5 + 24 * *&v8[16 * v50 + 32]), *v5 + 24 * v90, v49);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_409C8(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = sub_4093C(v50);
        v47 = *(v8 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v8[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v33 = *v5;
  v34 = *v5 + 24 * v7 - 24;
  v99 = v9;
  v35 = v9 - v7;
LABEL_43:
  v36 = (v33 + 24 * v7);
  v37 = *v36;
  v38 = v36[1];
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = v37 == *v40 && v38 == *(v40 + 8);
    if (v41 || (result = sub_84BEC(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v34 += 24;
      --v35;
      if (v7 != v32)
      {
        goto LABEL_43;
      }

      v7 = v32;
      v5 = a3;
      v9 = v99;
      goto LABEL_54;
    }

    if (!v33)
    {
      break;
    }

    v42 = *(v40 + 32);
    v43 = *(v40 + 16);
    v37 = *(v40 + 24);
    *(v40 + 24) = *v40;
    *(v40 + 40) = v43;
    *v40 = v37;
    *(v40 + 8) = v42;
    v38 = v42;
    v40 -= 24;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_406DC(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v15 && (sub_84BEC() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = *(v17 - 24);
      v19 = *(v17 - 16);
      v17 -= 24;
      v20 = v18 == *(v6 - 3) && v19 == *(v6 - 2);
      if (!v20 && (sub_84BEC() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v22 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v12)
      {
        v21 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v21;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v23 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_4093C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_409C8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_409DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2805C(&qword_CA968, &qword_A1288);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_40AFC()
{
  result = qword_CA980;
  if (!qword_CA980)
  {
    sub_280F0(&qword_CA970, &qword_A1290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CA980);
  }

  return result;
}

uint64_t static BooksLocalizer.load(using:asPartOf:)(uint64_t a1)
{
  v2[7] = v1;
  v2[8] = sub_841BC();
  v4 = swift_task_alloc();
  v2[9] = v4;
  *v4 = v2;
  v4[1] = sub_40C20;

  return static AppleServicesLocalizer.load(using:)(a1);
}

uint64_t sub_40C20(uint64_t a1)
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
    *(v4 + 80) = a1;

    return _swift_task_switch(sub_40D6C, 0, 0);
  }
}

uint64_t sub_40D6C()
{
  v1 = *(v0 + 80);
  *(v0 + 40) = *(v0 + 64);
  *(v0 + 48) = &protocol witness table for AppleServicesLocalizer;
  *(v0 + 16) = v1;
  v2 = swift_allocObject();
  *(v2 + 56) = 1;
  sub_371F4((v0 + 16), v2 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t static BooksLocalizer.create(basedOn:asPartOf:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = sub_40E4C(a1, v1);

  return sub_4251C(v3, v1, v2);
}

void *sub_40E4C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t BooksLocalizer.string(forKey:with:defaultValue:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_40E4C((v5 + 16), *(v5 + 40));
  if (sub_8432C())
  {
    sub_40E4C((v5 + 16), *(v5 + 40));
    return sub_842BC();
  }

  v7 = sub_8414C();
  if (!a3)
  {
    return v7;
  }

  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;

  v20 = a3;

  for (i = 0; v11; result = )
  {
    v15 = i;
LABEL_12:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = (*(v20 + 48) + ((v15 << 10) | (16 * v16)));
    v19 = *v17;
    v18 = v17[1];

    v21._countAndFlagsBits = v19;
    v21._object = v18;
    sub_844AC(v21);
    v22._countAndFlagsBits = 16448;
    v22._object = 0xE200000000000000;
    sub_844AC(v22);
    sub_3A8E8();
    v7 = sub_8492C();
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      return v7;
    }

    v11 = *(v8 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_41360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = a1 + 64;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;

    v17 = a1;

    for (i = 0; v7; result = )
    {
      v12 = i;
LABEL_10:
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v14 = (*(v17 + 48) + ((v12 << 10) | (16 * v13)));
      v16 = *v14;
      v15 = v14[1];

      v18._countAndFlagsBits = v16;
      v18._object = v15;
      sub_844AC(v18);
      v19._countAndFlagsBits = 16448;
      v19._object = 0xE200000000000000;
      sub_844AC(v19);
      sub_3A8E8();
      a2 = sub_8492C();
    }

    while (1)
    {
      v12 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v12 >= v8)
      {

        return a2;
      }

      v7 = *(v4 + 8 * v12);
      ++i;
      if (v7)
      {
        i = v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

    return a2;
  }

  return result;
}

uint64_t sub_4156C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, void, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v15 = v7[5];
  v16 = v7[6];
  sub_40E4C(v7 + 2, v15);
  return a7(a1, a2, a3 & 1, a4, a5 & 1, a6, v15, v16);
}

uint64_t BooksLocalizer.string(withCount:forKey:with:defaultValue:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_40E4C((v6 + 16), *(v6 + 40));
  if (sub_8432C())
  {
    sub_40E4C((v6 + 16), *(v6 + 40));
    return sub_842DC();
  }

  else
  {
    v33 = a4;
    v8 = sub_8414C();
    sub_2805C(&qword_CA988, &qword_A12B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_A10E0;
    *(inited + 32) = 0x746E756F63;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = sub_84BBC();
    *(inited + 56) = v10;
    v11 = sub_42650(inited);
    swift_setDeallocating();
    sub_42764(inited + 32);
    v12 = 1 << *(v11 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v11 + 64);
    v15 = (v12 + 63) >> 6;

    v17 = 0;
    if (v14)
    {
      while (1)
      {
        v18 = v17;
LABEL_11:
        v19 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v20 = (*(v11 + 48) + ((v18 << 10) | (16 * v19)));
        v22 = *v20;
        v21 = v20[1];

        v34._countAndFlagsBits = v22;
        v34._object = v21;
        sub_844AC(v34);
        v35._countAndFlagsBits = 16448;
        v35._object = 0xE200000000000000;
        sub_844AC(v35);
        sub_3A8E8();
        v8 = sub_8492C();

        if (!v14)
        {
          goto LABEL_7;
        }
      }
    }

    while (1)
    {
LABEL_7:
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v18 >= v15)
      {
        break;
      }

      v14 = *(v11 + 64 + 8 * v18);
      ++v17;
      if (v14)
      {
        v17 = v18;
        goto LABEL_11;
      }
    }

    if (!v33)
    {
      return v8;
    }

    v23 = 1 << *(v33 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v33 + 64);
    v26 = (v23 + 63) >> 6;

    for (i = 0; v25; result = )
    {
      v28 = i;
LABEL_22:
      v29 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v30 = (*(v33 + 48) + ((v28 << 10) | (16 * v29)));
      v32 = *v30;
      v31 = v30[1];

      v36._countAndFlagsBits = v32;
      v36._object = v31;
      sub_844AC(v36);
      v37._countAndFlagsBits = 16448;
      v37._object = 0xE200000000000000;
      sub_844AC(v37);
      sub_3A8E8();
      v8 = sub_8492C();
    }

    while (1)
    {
      v28 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v28 >= v26)
      {

        return v8;
      }

      v25 = *(v33 + 64 + 8 * v28);
      ++i;
      if (v25)
      {
        i = v28;
        goto LABEL_22;
      }
    }

LABEL_27:
    __break(1u);
  }

  return result;
}

Swift::String __swiftcall BooksLocalizer.formattedCount(_:)(Swift::Int a1)
{
  sub_40E4C((v1 + 16), *(v1 + 40));
  v2 = sub_8428C();
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall BooksLocalizer.fileSize(forBytes:)(Swift::Double forBytes)
{
  sub_40E4C((v1 + 16), *(v1 + 40));
  v2 = sub_8430C();
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t BooksLocalizer.__deallocating_deinit()
{
  sub_371A8((v0 + 16));

  return _swift_deallocClassInstance(v0, 57, 7);
}

uint64_t sub_41F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  sub_40E4C((*v5 + 16), *(*v5 + 40));
  if (sub_8432C())
  {
    sub_40E4C((v7 + 16), *(v7 + 40));
    return sub_842BC();
  }

  else
  {
    v9 = sub_8414C();
    v11 = sub_41360(a3, v9, v10);

    return v11;
  }
}

uint64_t sub_420EC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, void, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v16 = *(*v9 + 40);
  v17 = *(*v9 + 48);
  sub_40E4C((*v9 + 16), v16);
  return a9(a1, a2, a3 & 1, a4, a5 & 1, a6, v16, v17);
}

uint64_t sub_42488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v10 = a3;
  v5 = sub_382A8(&v8);
  (*(*(a2 - 8) + 32))(v5, a1, a2);
  type metadata accessor for BooksLocalizer();
  v6 = swift_allocObject();
  *(v6 + 56) = 1;
  sub_371F4(&v8, v6 + 16);
  return v6;
}

uint64_t sub_4251C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  v11 = *(v5 + 16);
  v11(&v14 - v9);
  (v11)(v8, v10, a2);
  v12 = sub_42488(v8, a2, a3);
  (*(v5 + 8))(v10, a2);
  return v12;
}

unint64_t sub_42650(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2805C(&qword_CAA88, &qword_A13F0);
    v3 = sub_84B3C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_55854(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_42764(uint64_t a1)
{
  v2 = sub_2805C(&qword_CA990, &unk_A12B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_42808(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2805C(&qword_CAA60, &unk_A1E00);
    v3 = sub_84B3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_37660(v4, &v13, &qword_CAA68, &qword_A13D0);
      v5 = v13;
      v6 = v14;
      result = sub_55854(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_42FB4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_42938(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2805C(&qword_CAA78, &qword_A13E0);
    v3 = sub_84B3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_37660(v4, &v11, &qword_CAA80, &qword_A13E8);
      v5 = v11;
      result = sub_58860();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_42FB4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_42A60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2805C(&qword_CAA90, &qword_A13F8);
    v3 = sub_84B3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_37660(v4, v13, &qword_CAA98, &unk_A1400);
      result = sub_5595C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_42FB4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_42B9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2805C(&qword_CAA70, &qword_A13D8);
    v3 = sub_84B3C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_55854(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_42CA0(uint64_t a1)
{
  v2 = sub_2805C(&qword_CAA50, &qword_A13C0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_2805C(&qword_CAA58, &qword_A13C8);
    v7 = sub_84B3C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_37660(v9, v5, &qword_CAA50, &qword_A13C0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_55854(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_8384C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_42E8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2805C(&qword_CAA40, &qword_A13B0);
    v3 = sub_84B3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_37660(v4, &v11, &qword_CAA48, &qword_A13B8);
      v5 = v11;
      result = sub_58860();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_42FB4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

_OWORD *sub_42FB4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_42FC4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_8498C();
    sub_43834(0, &qword_CAB50, UIScene_ptr);
    sub_4387C(&qword_CAB58, &qword_CAB50, UIScene_ptr);
    sub_8474C();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_849BC() || (sub_43834(0, &qword_CAB50, UIScene_ptr), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_40AE0(v1);
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_8457C();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_845CC();
      }

      sub_845EC();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_43248(void *a1)
{
  swift_beginAccess();
  objc_setAssociatedObject(a1, &off_CAAA0, 0, &stru_2E8.segname[9]);
  return swift_endAccess();
}

void *sub_432DC()
{
  v0 = sub_83E0C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_43834(0, &qword_CA518, OS_dispatch_queue_ptr);
  *v3 = sub_8482C();
  (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v4 = sub_83E2C();
  result = (*(v1 + 8))(v3, v0);
  if ((v4 & 1) == 0)
  {
    goto LABEL_31;
  }

  result = _sSo13UIApplicationC5JSAppE20sharedIfNotExtensionABSgvgZ_0();
  if (result)
  {
    v6 = result;
    v7 = [result connectedScenes];
    sub_43834(0, &qword_CAB50, UIScene_ptr);
    sub_4387C(&qword_CAB58, &qword_CAB50, UIScene_ptr);
    v8 = sub_8472C();

    sub_42FC4(v8);
    v10 = v9;

    v11 = sub_750FC(v10);

    v33 = v11;
    if ((v11 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_8498C();
      sub_43834(0, &qword_CAB60, UIWindowScene_ptr);
      sub_4387C(&qword_CAB68, &qword_CAB60, UIWindowScene_ptr);
      result = sub_8474C();
      v11 = v39;
      v12 = v40;
      v13 = v41;
      v14 = v42;
      v15 = v43;
    }

    else
    {
      v16 = -1 << *(v11 + 32);
      v12 = v11 + 56;
      v13 = ~v16;
      v17 = -v16;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v15 = v18 & *(v11 + 56);

      v14 = 0;
    }

    v32 = v13;
    v19 = (v13 + 64) >> 6;
    v35 = xmmword_A1410;
    v34 = xmmword_A1420;
    while (1)
    {
      if (v11 < 0)
      {
        v30 = sub_849BC();
        if (!v30 || (*&v36 = v30, sub_43834(0, &qword_CAB60, UIWindowScene_ptr), swift_dynamicCast(), v29 = *&v38[0], v27 = v14, v28 = v15, !*&v38[0]))
        {
LABEL_28:
          sub_40AE0(v11);
        }
      }

      else
      {
        v25 = v14;
        v26 = v15;
        v27 = v14;
        if (!v15)
        {
          while (1)
          {
            v27 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v27 >= v19)
            {
              goto LABEL_28;
            }

            v26 = *(v12 + 8 * v27);
            ++v25;
            if (v26)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
LABEL_31:
          __break(1u);
          return result;
        }

LABEL_18:
        v28 = (v26 - 1) & v26;
        v29 = *(*(v11 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));
        if (!v29)
        {
          goto LABEL_28;
        }
      }

      swift_beginAccess();
      v31 = objc_getAssociatedObject(v29, &off_CAAA0);
      swift_endAccess();
      if (v31)
      {
        sub_8495C();
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0u;
        v37 = 0u;
      }

      v38[0] = v36;
      v38[1] = v37;
      if (!*(&v37 + 1))
      {
        break;
      }

      type metadata accessor for HotReloadStatusHUD();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_12:
      v23 = swift_allocObject();
      *(v23 + 16) = v29;
      v24 = v29;
      sub_5E014(sub_4396C, v23);

      v14 = v27;
      v15 = v28;
    }

    sub_438CC(v38);
LABEL_11:
    type metadata accessor for HotReloadStatusHUD();
    v20 = swift_allocObject();
    v21 = v34;
    *(v20 + 24) = v35;
    *(v20 + 40) = v21;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0x3FB999999999999ALL;
    *(v20 + 72) = 0;
    *(v20 + 74) = 0;
    *(v20 + 80) = _swiftEmptyArrayStorage;
    v22 = objc_allocWithZone(type metadata accessor for HotReloadStatusHUDWindow());
    *(v20 + 16) = [v22 initWithWindowScene:{v29, v32, v33}];
    swift_beginAccess();

    objc_setAssociatedObject(v29, &off_CAAA0, v20, &stru_2E8.segname[9]);
    swift_endAccess();

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_43834(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_4387C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_43834(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_438CC(uint64_t a1)
{
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_43934()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_43974(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v36 = a2;
  v2 = sub_83E0C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_43834(0, &qword_CA518, OS_dispatch_queue_ptr);
  *v5 = sub_8482C();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = sub_83E2C();
  result = (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    goto LABEL_31;
  }

  result = _sSo13UIApplicationC5JSAppE20sharedIfNotExtensionABSgvgZ_0();
  if (result)
  {
    v8 = result;
    v9 = [result connectedScenes];
    sub_43834(0, &qword_CAB50, UIScene_ptr);
    sub_4387C(&qword_CAB58, &qword_CAB50, UIScene_ptr);
    v10 = sub_8472C();

    sub_42FC4(v10);
    v12 = v11;

    v13 = sub_750FC(v12);

    v32 = v13;
    if ((v13 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_8498C();
      sub_43834(0, &qword_CAB60, UIWindowScene_ptr);
      sub_4387C(&qword_CAB68, &qword_CAB60, UIWindowScene_ptr);
      result = sub_8474C();
      v13 = v40;
      v14 = v41;
      v15 = v42;
      v16 = v43;
      v17 = v44;
    }

    else
    {
      v18 = -1 << *(v13 + 32);
      v14 = v13 + 56;
      v15 = ~v18;
      v19 = -v18;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v17 = v20 & *(v13 + 56);

      v16 = 0;
    }

    v31 = v15;
    v21 = (v15 + 64) >> 6;
    v34 = xmmword_A1410;
    v33 = xmmword_A1420;
    while (1)
    {
      if (v13 < 0)
      {
        v29 = sub_849BC();
        if (!v29 || (*&v37 = v29, sub_43834(0, &qword_CAB60, UIWindowScene_ptr), swift_dynamicCast(), v28 = *&v39[0], v26 = v16, v27 = v17, !*&v39[0]))
        {
LABEL_28:
          sub_40AE0(v13);
        }
      }

      else
      {
        v24 = v16;
        v25 = v17;
        v26 = v16;
        if (!v17)
        {
          while (1)
          {
            v26 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            if (v26 >= v21)
            {
              goto LABEL_28;
            }

            v25 = *(v14 + 8 * v26);
            ++v24;
            if (v25)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
LABEL_31:
          __break(1u);
          return result;
        }

LABEL_18:
        v27 = (v25 - 1) & v25;
        v28 = *(*(v13 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
        if (!v28)
        {
          goto LABEL_28;
        }
      }

      swift_beginAccess();
      v30 = objc_getAssociatedObject(v28, &off_CAAA0);
      swift_endAccess();
      if (v30)
      {
        sub_8495C();
        swift_unknownObjectRelease();
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
      }

      v39[0] = v37;
      v39[1] = v38;
      if (!*(&v38 + 1))
      {
        break;
      }

      type metadata accessor for HotReloadStatusHUD();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_12:
      sub_5DC28(v35, v36);

      v16 = v26;
      v17 = v27;
    }

    sub_438CC(v39);
LABEL_11:
    type metadata accessor for HotReloadStatusHUD();
    v22 = swift_allocObject();
    *(v22 + 24) = v34;
    *(v22 + 40) = v33;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0x3FB999999999999ALL;
    *(v22 + 72) = 0;
    *(v22 + 74) = 0;
    *(v22 + 80) = _swiftEmptyArrayStorage;
    v23 = objc_allocWithZone(type metadata accessor for HotReloadStatusHUDWindow());
    *(v22 + 16) = [v23 initWithWindowScene:{v28, v31, v32}];
    swift_beginAccess();

    objc_setAssociatedObject(v28, &off_CAAA0, v22, &stru_2E8.segname[9]);
    swift_endAccess();

    goto LABEL_12;
  }

  return result;
}

void sub_43E9C()
{
  v0 = sub_83E0C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_43834(0, &qword_CA518, OS_dispatch_queue_ptr);
  *v3 = sub_8482C();
  (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v4 = sub_83E2C();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    v5 = _sSo13UIApplicationC5JSAppE20sharedIfNotExtensionABSgvgZ_0();
    if (!v5)
    {
      v16 = 0;
LABEL_32:

      return;
    }

    v6 = v5;
    v7 = [v5 connectedScenes];
    sub_43834(0, &qword_CAB50, UIScene_ptr);
    sub_4387C(&qword_CAB58, &qword_CAB50, UIScene_ptr);
    v8 = sub_8472C();

    sub_42FC4(v8);
    v10 = v9;

    v11 = sub_750FC(v10);

    v32 = v11;
    if ((v11 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_8498C();
      sub_43834(0, &qword_CAB60, UIWindowScene_ptr);
      sub_4387C(&qword_CAB68, &qword_CAB60, UIWindowScene_ptr);
      sub_8474C();
      v11 = v39;
      v12 = v40;
      v13 = v41;
      v14 = v42;
      v15 = v43;
    }

    else
    {
      v17 = -1 << *(v11 + 32);
      v12 = v11 + 56;
      v13 = ~v17;
      v18 = -v17;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v15 = v19 & *(v11 + 56);

      v14 = 0;
    }

    v31 = v13;
    v20 = (v13 + 64) >> 6;
    v34 = xmmword_A1410;
    v33 = xmmword_A1420;
    if (v11 < 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v21 = v14;
    v22 = v15;
    v23 = v14;
    if (!v15)
    {
      while (1)
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v23 >= v20)
        {
LABEL_30:
          v16 = 0;
          goto LABEL_31;
        }

        v22 = *(v12 + 8 * v23);
        ++v21;
        if (v22)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_15:
    v24 = (v22 - 1) & v22;
    v16 = *(*(v11 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v16)
    {
LABEL_31:
      sub_40AE0(v11);

      goto LABEL_32;
    }

    while (1)
    {
      swift_beginAccess();
      v26 = objc_getAssociatedObject(v16, &off_CAAA0);
      swift_endAccess();
      if (v26)
      {
        sub_8495C();
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0u;
        v37 = 0u;
      }

      v38[0] = v36;
      v38[1] = v37;
      if (*(&v37 + 1))
      {
        type metadata accessor for HotReloadStatusHUD();
        if (swift_dynamicCast())
        {
          v27 = v35;
          goto LABEL_27;
        }
      }

      else
      {
        sub_438CC(v38);
      }

      type metadata accessor for HotReloadStatusHUD();
      v27 = swift_allocObject();
      v28 = v33;
      *(v27 + 24) = v34;
      *(v27 + 40) = v28;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0x3FB999999999999ALL;
      *(v27 + 72) = 0;
      *(v27 + 74) = 0;
      *(v27 + 80) = _swiftEmptyArrayStorage;
      v29 = objc_allocWithZone(type metadata accessor for HotReloadStatusHUDWindow());
      *(v27 + 16) = [v29 initWithWindowScene:{v16, v31, v32}];
      swift_beginAccess();

      objc_setAssociatedObject(v16, &off_CAAA0, v27, &stru_2E8.segname[9]);
      swift_endAccess();

LABEL_27:
      v30 = *(v27 + 73);

      if (v30 == 1)
      {
        goto LABEL_31;
      }

      v14 = v23;
      v15 = v24;
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_17:
      v25 = sub_849BC();
      if (!v25)
      {
        goto LABEL_30;
      }

      *&v36 = v25;
      sub_43834(0, &qword_CAB60, UIWindowScene_ptr);
      swift_dynamicCast();
      v16 = *&v38[0];
      v23 = v14;
      v24 = v15;
      if (!*&v38[0])
      {
        goto LABEL_31;
      }
    }
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_443D8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "failedInputStream";
  }

  else
  {
    v2 = "";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "failedInputStream";
  }

  else
  {
    v4 = "";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_84BEC();
  }

  return v5 & 1;
}

Swift::Int sub_4447C()
{
  sub_84CCC();
  sub_8446C();

  return sub_84D0C();
}

uint64_t sub_444F4(uint64_t a1)
{
  sub_8446C();
}

Swift::Int sub_44558(uint64_t a1)
{
  sub_84CCC();
  sub_8446C();

  return sub_84D0C();
}

uint64_t sub_445CC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_B3708;
  v8._object = v3;
  v5 = sub_84B5C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_4462C(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "failedInputStream";
  }

  else
  {
    v2 = "";
  }

  *a1 = 0xD000000000000011;
  a1[1] = v2 | 0x8000000000000000;
}

unint64_t sub_4466C()
{
  v1 = *v0;
  sub_2805C(&qword_CABE8, &qword_A15B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_A10E0;
  *(inited + 32) = sub_843AC();
  v4 = "";
  if (v1)
  {
    v4 = "failedInputStream";
  }

  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v3;
  *(inited + 48) = 0xD000000000000011;
  *(inited + 56) = v4 | 0x8000000000000000;
  v5 = sub_42808(inited);
  swift_setDeallocating();
  sub_38328(inited + 32, &qword_CAA68, &qword_A13D0);
  return v5;
}

uint64_t sub_44750(uint64_t a1)
{
  v2 = sub_4710C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_4478C(uint64_t a1)
{
  v2 = sub_4710C();

  return Error<>._code.getter(a1, v2);
}

id sub_447D0()
{
  v0 = sub_8390C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_839CC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v15[-v9];
  v11 = [objc_opt_self() books];
  v12 = [v11 containerURL];

  sub_8396C();
  strcpy(v15, "JSAFileStorage");
  v15[15] = -18;
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.isDirectory(_:), v0);
  sub_3A8E8();
  sub_839BC();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v8, v4);
  v13 = objc_allocWithZone(type metadata accessor for JSAFileStorage(0));
  result = sub_44AE8(v10);
  qword_CAB78 = result;
  return result;
}

id static JSAFileStorage.shared.getter()
{
  if (qword_CA3E0 != -1)
  {
    swift_once();
  }

  v1 = qword_CAB78;

  return v1;
}

id sub_44AE8(uint64_t a1)
{
  v2 = v1;
  v18 = a1;
  v3 = sub_847FC();
  __chkstk_darwin(v3);
  v4 = sub_83DDC();
  __chkstk_darwin(v4 - 8);
  v5 = sub_8481C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC5JSApp14JSAFileStorage_queue;
  sub_43834(0, &qword_CA518, OS_dispatch_queue_ptr);
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  sub_83DAC();
  v20 = _swiftEmptyArrayStorage;
  sub_46E98();
  sub_2805C(&qword_CA520, &unk_A1670);
  sub_46EF0();
  sub_8496C();
  *&v1[v9] = sub_8485C();
  v10 = OBJC_IVAR____TtC5JSApp14JSAFileStorage_containerURL;
  v11 = sub_839CC();
  v12 = *(v11 - 8);
  v13 = &v2[v10];
  v14 = v18;
  (*(v12 + 16))(v13, v18, v11);
  v15 = type metadata accessor for JSAFileStorage(0);
  v19.receiver = v2;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, "init");
  (*(v12 + 8))(v14, v11);
  return v16;
}

uint64_t sub_44DA8@<X0>(_OWORD *a1@<X8>)
{
  result = sub_8488C();
  if (v3)
  {
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      __chkstk_darwin(result);
      sub_8483C();
    }
  }

  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_450B8(uint64_t a1, void *a2)
{
  result = sub_8488C();
  if (v4)
  {
    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = [a2 isUndefined];
      if ((v6 & 1) != 0 || (v6 = [a2 isNull], v6))
      {
        v9 = 0u;
        v10 = 0u;
      }

      else
      {
        v6 = [a2 toObject];
        if (v6)
        {
          sub_8495C();
          v6 = swift_unknownObjectRelease();
        }

        else
        {
          v7 = 0u;
          v8 = 0u;
        }

        v9 = v7;
        v10 = v8;
      }

      __chkstk_darwin(v6);
      sub_8483C();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_45374()
{
  result = sub_8488C();
  if (v1)
  {
    v2 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v2 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v2)
    {
      __chkstk_darwin(result);
      sub_8483C();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_45580@<X0>(char *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v51 = a2;
  v49 = a3;
  v50 = a1;
  v4 = sub_8390C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_839CC();
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_83E0C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v3 + OBJC_IVAR____TtC5JSApp14JSAFileStorage_queue);
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = sub_83E2C();
  v18 = *(v12 + 8);
  v17 = (v12 + 8);
  v18(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v20 = v50;
  v19 = v51;
  v54[0] = v50;
  v54[1] = v51;
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.notDirectory(_:), v4);
  sub_3A8E8();
  sub_839BC();
  (*(v5 + 8))(v7, v4);
  v21 = [objc_opt_self() defaultManager];
  sub_8397C(0);
  v22 = sub_8437C();

  v23 = [v21 fileExistsAtPath:v22];

  v5 = v19;
  v17 = v10;
  if (!v23)
  {
    result = (*(v52 + 8))(v10, v53);
    v33 = v49;
    *v49 = 0u;
    v33[1] = 0u;
    return result;
  }

  v10 = v20;
  v24 = objc_allocWithZone(NSInputStream);
  sub_8394C(v25);
  v27 = v26;
  v28 = [v24 initWithURL:v26];

  if (!v28)
  {
    if (qword_CA490 == -1)
    {
LABEL_8:
      v34 = sub_83D6C();
      sub_2C284(v34, qword_CB3C8);

      v35 = sub_83D4C();
      v36 = sub_847AC();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v54[0] = v38;
        *v37 = 136446210;
        *(v37 + 4) = sub_3A93C(v10, v5, v54);
        _os_log_impl(&dword_0, v35, v36, "[JSAFileStorage] Failed to create input stream for file %{public}s", v37, 0xCu);
        sub_371A8(v38);
      }

      sub_46E44();
      swift_allocError();
      *v39 = 0;
      swift_willThrow();
      return (*(v52 + 8))(v17, v53);
    }

LABEL_18:
    swift_once();
    goto LABEL_8;
  }

  [v28 open];
  v29 = objc_opt_self();
  v54[0] = 0;
  v30 = [v29 JSONObjectWithStream:v28 options:4 error:v54];
  v31 = v54[0];
  if (v30)
  {
    sub_8495C();
    swift_unknownObjectRelease();
    [v28 close];
  }

  else
  {
    v40 = v17;
    v41 = v31;
    sub_838DC();

    swift_willThrow();
    if (qword_CA490 != -1)
    {
      swift_once();
    }

    v42 = sub_83D6C();
    sub_2C284(v42, qword_CB3C8);
    swift_errorRetain();
    v43 = sub_83D4C();
    v44 = sub_847AC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138543362;
      v47 = sub_838CC();
      *(v45 + 4) = v47;
      *v46 = v47;
      _os_log_impl(&dword_0, v43, v44, "[JSAFileStorage] Failed to unarchive data with error=%{public}@", v45, 0xCu);
      sub_38328(v46, &qword_CA760, &qword_A0F80);
    }

    swift_willThrow();
    [v28 close];

    v17 = v40;
  }

  return (*(v52 + 8))(v17, v53);
}

uint64_t sub_45C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v47 = a1;
  *(&v47 + 1) = a2;
  v6 = sub_8390C();
  v43 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_839CC();
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin(v9);
  v44 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_83E0C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v3 + OBJC_IVAR____TtC5JSApp14JSAFileStorage_queue);
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = sub_83E2C();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_46DD4(a3, &v48);
  if (!v49)
  {
    return sub_462F4(v47, *(&v47 + 1));
  }

  sub_42FB4(&v48, &v50);
  v17 = objc_opt_self();
  sub_2805C(&unk_CADB0, &unk_A16E0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_A10E0;
  sub_381F8(&v50, v18 + 32);
  isa = sub_8458C().super.isa;

  v20 = [v17 isValidJSONObject:isa];

  if (!v20)
  {
    if (qword_CA490 == -1)
    {
LABEL_9:
      v30 = sub_83D6C();
      sub_2C284(v30, qword_CB3C8);
      v31 = sub_83D4C();
      v32 = sub_847AC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_0, v31, v32, "[JSAFileStorage] Invalid JSON object", v33, 2u);
      }

      sub_46E44();
      swift_allocError();
      *v34 = 1;
      swift_willThrow();
      return sub_371A8(&v50);
    }

LABEL_19:
    swift_once();
    goto LABEL_9;
  }

  sub_46808();
  if (!v4)
  {
    v48 = v47;
    v21 = v43;
    (*(v43 + 104))(v8, enum case for URL.DirectoryHint.notDirectory(_:), v6);
    sub_3A8E8();
    v22 = v44;
    sub_839BC();
    (*(v21 + 8))(v8, v6);
    sub_40E4C(&v50, v51);
    v23 = sub_84BDC();
    *&v48 = 0;
    v24 = [v17 dataWithJSONObject:v23 options:6 error:&v48];
    swift_unknownObjectRelease();
    v25 = v48;
    if (v24)
    {
      v26 = sub_83A0C();
      v28 = v27;

      sub_83A1C();
      (*(v45 + 8))(v22, v46);
      sub_3BB74(v26, v28);
    }

    else
    {
      v35 = v25;
      sub_838DC();

      swift_willThrow();
      if (qword_CA490 != -1)
      {
        swift_once();
      }

      v36 = sub_83D6C();
      sub_2C284(v36, qword_CB3C8);
      swift_errorRetain();
      v37 = sub_83D4C();
      v38 = sub_847AC();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138543362;
        v41 = sub_838CC();
        *(v39 + 4) = v41;
        *v40 = v41;
        _os_log_impl(&dword_0, v37, v38, "[JSAFileStorage] Failed to archive data with error=%{public}@", v39, 0xCu);
        sub_38328(v40, &qword_CA760, &qword_A0F80);
      }

      swift_willThrow();
      (*(v45 + 8))(v22, v46);
    }
  }

  return sub_371A8(&v50);
}

uint64_t sub_462F4(void *a1, void *a2)
{
  v36 = a1;
  v37 = a2;
  v3 = sub_8390C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_839CC();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_83E0C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + OBJC_IVAR____TtC5JSApp14JSAFileStorage_queue);
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = sub_83E2C();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  v40[0] = v36;
  v40[1] = v37;
  (*(v4 + 104))(v6, enum case for URL.DirectoryHint.notDirectory(_:), v3);
  sub_3A8E8();
  sub_839BC();
  (*(v4 + 8))(v6, v3);
  v16 = objc_opt_self();
  v17 = [v16 defaultManager];
  sub_8397C(0);
  v18 = sub_8437C();

  v19 = [v17 fileExistsAtPath:v18];

  if (!v19)
  {
    return (*(v38 + 8))(v9, v39);
  }

  v20 = [v16 defaultManager];
  sub_8394C(v21);
  v23 = v22;
  v40[0] = 0;
  v24 = [v20 removeItemAtURL:v22 error:v40];

  if (v24)
  {
    v25 = *(v38 + 8);
    v26 = v40[0];
    return v25(v9, v39);
  }

  v28 = v40[0];
  sub_838DC();

  swift_willThrow();
  if (qword_CA490 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  v29 = sub_83D6C();
  sub_2C284(v29, qword_CB3C8);
  swift_errorRetain();
  v30 = sub_83D4C();
  v31 = sub_847AC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138543362;
    v34 = sub_838CC();
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&dword_0, v30, v31, "[JSAFileStorage] Failed to delete file with error=%{public}@", v32, 0xCu);
    sub_38328(v33, &qword_CA760, &qword_A0F80);
  }

  swift_willThrow();
  return (*(v38 + 8))(v9, v39);
}

id sub_46808()
{
  sub_8397C(0);
  v20 = 0;
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  v2 = sub_8437C();
  v3 = [v1 fileExistsAtPath:v2 isDirectory:&v20];

  if (!v3)
  {
    goto LABEL_5;
  }

  if (v20)
  {
  }

  v5 = [v0 defaultManager];
  v6 = sub_8437C();
  v19 = 0;
  v7 = [v5 removeItemAtPath:v6 error:&v19];

  v8 = v19;
  if (!v7)
  {
    v12 = v8;
  }

  else
  {
LABEL_5:
    v9 = [v0 defaultManager];
    v10 = sub_8437C();

    v19 = 0;
    v11 = [v9 createDirectoryAtPath:v10 withIntermediateDirectories:0 attributes:0 error:&v19];

    result = v19;
    if (v11)
    {
      return result;
    }

    v12 = result;
  }

  sub_838DC();

  swift_willThrow();
  if (qword_CA490 != -1)
  {
    swift_once();
  }

  v13 = sub_83D6C();
  sub_2C284(v13, qword_CB3C8);
  swift_errorRetain();
  v14 = sub_83D4C();
  v15 = sub_847AC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138543362;
    v18 = sub_838CC();
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&dword_0, v14, v15, "[JSAFileStorage] Failed to create enclosing directory with error=%{public}@", v16, 0xCu);
    sub_38328(v17, &qword_CA760, &qword_A0F80);
  }

  return swift_willThrow();
}

id JSAFileStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSAFileStorage(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSAFileStorage(uint64_t a1)
{
  result = qword_CABC0;
  if (!qword_CABC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_46C84(uint64_t a1)
{
  result = sub_839CC();
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

uint64_t sub_46DD4(uint64_t a1, uint64_t a2)
{
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_46E44()
{
  result = qword_CABD0;
  if (!qword_CABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CABD0);
  }

  return result;
}

unint64_t sub_46E98()
{
  result = qword_CAD90;
  if (!qword_CAD90)
  {
    sub_847FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CAD90);
  }

  return result;
}

unint64_t sub_46EF0()
{
  result = qword_CADA0;
  if (!qword_CADA0)
  {
    sub_280F0(&qword_CA520, &unk_A1670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CADA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSAFileStorage.StorageError(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JSAFileStorage.StorageError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_470B8()
{
  result = qword_CABD8;
  if (!qword_CABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CABD8);
  }

  return result;
}

unint64_t sub_4710C()
{
  result = qword_CABE0;
  if (!qword_CABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_CABE0);
  }

  return result;
}

id RequestEncoder.__allocating_init(tokenService:bag:cookiesToSuppress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___JSARequestEncoder_cookiesToSuppress] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  v8 = objc_msgSendSuper2(&v10, "initWithTokenService:bag:", a1, a2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8;
}

id RequestEncoder.init(tokenService:bag:cookiesToSuppress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___JSARequestEncoder_cookiesToSuppress] = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for RequestEncoder();
  v6 = objc_msgSendSuper2(&v8, "initWithTokenService:bag:", a1, a2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v6;
}

void sub_472F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = *&v2[OBJC_IVAR___JSARequestEncoder_cookiesToSuppress];
  v7 = sub_8376C();
  sub_46DD4(a2, aBlock);
  v8 = v20;
  if (v20)
  {
    v9 = sub_40E4C(aBlock, v20);
    v10 = *(v8 - 1);
    __chkstk_darwin(v9);
    v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_84BDC();
    (*(v10 + 8))(v12, v8);
    sub_371A8(aBlock);
  }

  else
  {
    v13 = 0;
  }

  v14 = type metadata accessor for RequestEncoder();
  v23.receiver = v3;
  v23.super_class = v14;
  v15 = objc_msgSendSuper2(&v23, "requestByEncodingRequest:parameters:", v7, v13);

  swift_unknownObjectRelease();
  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  *(v16 + 24) = ObjectType;
  v21 = sub_47A34;
  v22 = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_47C88;
  v20 = &unk_B57F0;
  v17 = _Block_copy(aBlock);

  v18 = [v15 jsa_mapWithBlock:v17];
  _Block_release(v17);

  if (!v18)
  {
    __break(1u);
  }
}

uint64_t sub_4754C(id a1, void *a2)
{
  v44 = sub_837FC();
  v4 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2;
  v47 = a2;
  v7 = sub_2805C(&qword_CA970, &qword_A1290);
  v8 = sub_47F78(&qword_CAC20, &protocol conformance descriptor for [A]);
  if ((sub_8476C() & 1) == 0 || !a1 || (v9 = sub_8437C(), v10 = [a1 valueForHTTPHeaderField:v9], v9, !v10))
  {
LABEL_27:
    v39 = a1;
    return a1;
  }

  v40[1] = v8;
  v40[2] = v7;
  v41 = a1;
  v11 = sub_843AC();
  v13 = v12;

  v47 = v11;
  v48 = v13;
  v45 = (&stru_20 + 27);
  v46 = 0xE100000000000000;
  v43 = sub_3A8E8();
  v14 = sub_848FC();

  v15 = *(v14 + 16);
  if (v15)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_3B254(0, v15, 0);
    v16 = v45;
    v17 = (v4 + 8);
    v40[0] = v14;
    v18 = (v14 + 40);
    do
    {
      v19 = *v18;
      v47 = *(v18 - 1);
      v48 = v19;

      sub_837DC();
      v20 = sub_8491C();
      v22 = v21;
      (*v17)(v6, v44);

      v45 = v16;
      v24 = v16[2];
      v23 = v16[3];
      if (v24 >= v23 >> 1)
      {
        sub_3B254((v23 > 1), v24 + 1, 1);
        v16 = v45;
      }

      v16[2] = v24 + 1;
      v25 = &v16[2 * v24];
      v25[4] = v20;
      v25[5] = v22;
      v18 += 2;
      --v15;
    }

    while (v15);
  }

  else
  {

    v16 = _swiftEmptyArrayStorage;
  }

  v27 = v16[2];
  v28 = v42;
  if (!v27)
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_23:

    v47 = v31;
    if (sub_8476C())
    {
      v47 = v31;
      sub_47F78(&qword_CA980, &protocol conformance descriptor for [A]);
      sub_8436C();

      v37 = sub_8437C();

      v38 = sub_8437C();
      a1 = v41;
      [v41 setValue:v37 forHTTPHeaderField:v38];
    }

    else
    {

      v38 = sub_8437C();
      a1 = v41;
      [v41 setValue:0 forHTTPHeaderField:v38];
    }

    goto LABEL_27;
  }

  v29 = 0;
  v30 = v16 + 5;
  v31 = _swiftEmptyArrayStorage;
  v44 = v16[2];
  while (v29 < v16[2])
  {
    v33 = *(v30 - 1);
    v32 = *v30;
    v47 = v33;
    v48 = v32;

    if (sub_47A3C(&v47, v28))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v45 = v31;
      if ((result & 1) == 0)
      {
        result = sub_3B254(0, v31[2] + 1, 1);
        v28 = v42;
        v31 = v45;
      }

      v35 = v31[2];
      v34 = v31[3];
      if (v35 >= v34 >> 1)
      {
        result = sub_3B254((v34 > 1), v35 + 1, 1);
        v28 = v42;
        v31 = v45;
      }

      v31[2] = v35 + 1;
      v36 = &v31[2 * v35];
      v36[4] = v33;
      v36[5] = v32;
      v27 = v44;
    }

    else
    {
    }

    ++v29;
    v30 += 2;
    if (v27 == v29)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_479FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

BOOL sub_47A3C(uint64_t *a1, uint64_t a2)
{
  v2 = a2 + 40;
  v3 = *(a2 + 16) + 1;
  while (--v3)
  {
    v4 = v2 + 16;
    v16 = *(v2 - 8);
    swift_bridgeObjectRetain_n();
    v18._countAndFlagsBits = 61;
    v18._object = 0xE100000000000000;
    sub_844AC(v18);
    v5 = sub_8451C(v16);

    v2 = v4;
    if (v5)
    {
      if (qword_CA4D0 != -1)
      {
        swift_once();
      }

      v6 = sub_83D6C();
      sub_2C284(v6, qword_CB488);

      v7 = sub_83D4C();
      v8 = sub_8478C();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v17 = v10;
        *v9 = 136315138;
        sub_3A8E8();
        v11 = sub_848FC();
        if (v11[2])
        {
          v13 = v11[4];
          v12 = v11[5];
        }

        else
        {
          v12 = 0xE900000000000029;
          v13 = 0x6E776F6E6B6E7528;
        }

        v14 = sub_3A93C(v13, v12, &v17);

        *(v9 + 4) = v14;
        _os_log_impl(&dword_0, v7, v8, "Suppressing cookie %s", v9, 0xCu);
        sub_371A8(v10);
      }

      return v3 == 0;
    }
  }

  return v3 == 0;
}