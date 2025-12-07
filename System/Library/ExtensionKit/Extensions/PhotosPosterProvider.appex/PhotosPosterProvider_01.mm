id sub_10001C1CC(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_10002F3D4();

  v4 = [v2 initWithImageName:v3];

  return v4;
}

uint64_t sub_10001C240(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_10002AE84();
  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10001C270()
{
  v1 = sub_1000292C8(*(v0 + 24), &selRef_identifier);
  *(v0 + 40) = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    if (qword_100049690 != -1)
    {
      sub_10002AC8C(&qword_100049690);
    }

    v5 = *(v0 + 32);
    v6 = *(v0 + 16);
    v7 = swift_task_alloc();
    *(v0 + 48) = v7;
    v7[2] = v5;
    v7[3] = v6;
    v7[4] = v3;
    v7[5] = v4;
    v8 = sub_10002B40C();
    *(v0 + 56) = v8;
    *v8 = v0;
    v8[1] = sub_10001C5B0;

    return v24("updateConfiguration", 19, 2, sub_100029E5C, v7);
  }

  else
  {
    v10 = PPPosterOverrideConfigurationFromSessionInfo(*(v0 + 24));
    *(v0 + 64) = v10;
    if (v10)
    {
      v11 = swift_task_alloc();
      *(v0 + 72) = v11;
      *v11 = v0;
      sub_10002B1D4(v11);

      return sub_10001DD38();
    }

    else if (PPPosterLegacyConfigurationTypeFromSessionInfo(*(v0 + 24)) == 2)
    {
      v12 = swift_task_alloc();
      *(v0 + 88) = v12;
      *v12 = v0;
      sub_10002B1D4(v12);

      return sub_10001F070();
    }

    else
    {
      sub_10002F5D4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      v13 = sub_10002AD68();
      if (os_log_type_enabled(v13, v14))
      {
        sub_10002AB74();
        swift_slowAlloc();
        sub_10002ABE0();
        v15 = swift_slowAlloc();
        sub_10002ACE8(v15, 5.7779e-34);
        sub_10002AAD4();
        _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
        sub_100010800(v15, &qword_100049CC0, &qword_1000355C0);
        sub_10002AA18();

        sub_10002AB08();
      }

      sub_100010C84();
      v25 = v21;
      v23 = v22;

      return v25(v23);
    }
  }
}

uint64_t sub_10001C5B0()
{
  sub_100010C44();
  v3 = v2;
  sub_10002AC5C();
  v5 = v4;
  sub_10002ABD4();
  *v6 = v5;
  v7 = *v1;
  sub_100010AE8();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {

    v10 = *(v7 + 8);

    return v10(v3);
  }
}

uint64_t sub_10001C6E4()
{
  sub_100010F34();
  sub_10002AC5C();
  sub_10002ABD4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 80) = v3;

  sub_10002AE84();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10001C7D4()
{
  sub_100010F34();
  swift_unknownObjectRelease();
  sub_10002AC68();

  return v0();
}

uint64_t sub_10001C834()
{
  sub_100010F34();
  v2 = v1;
  sub_10002AC5C();
  v3 = *v0;
  sub_100010AE8();
  *v4 = v3;

  sub_10002AC68();

  return v5(v2);
}

uint64_t sub_10001C940(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  sub_10002AC74();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = a1;
  v13 = a3;
  v14 = a4;
  v15 = a1;

  return sub_10001179C(a7, v12);
}

uint64_t sub_10001C9C8(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10001CAA0;

  return sub_10001C240(v8, v9);
}

uint64_t sub_10001CAA0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;
  sub_100010AE8();
  *v10 = v9;

  v11 = *(v5 + 40);
  if (v3)
  {
    sub_10002F0E4();
    sub_100010B50();

    (v11)[2](v11, 0, a1);

    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 40), a1, 0);
    _Block_release(v11);
  }

  v12 = *(v9 + 8);

  return v12();
}

void sub_10001CC6C()
{
  sub_100010CCC();
  v194 = v2;
  v195 = v3;
  v199 = v4;
  sub_10002B208(__stack_chk_guard);
  v200 = sub_10002F1B4();
  sub_100004368();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100010B68();
  v185 = (v8 - v9);
  sub_10002ABF8();
  __chkstk_darwin(v10);
  sub_10002AF24();
  __chkstk_darwin(v11);
  sub_10002AC50();
  v189 = v12;
  sub_10002ABF8();
  __chkstk_darwin(v13);
  sub_10002AC50();
  v198 = v14;
  sub_10002ABF8();
  __chkstk_darwin(v15);
  sub_10002AC50();
  v196 = v16;
  sub_10002ABF8();
  __chkstk_darwin(v17);
  sub_10002AC50();
  v193 = v18;
  sub_10002ABF8();
  __chkstk_darwin(v19);
  sub_10002AC50();
  v197 = v20;
  sub_10002ABF8();
  __chkstk_darwin(v21);
  sub_10002B260();
  __chkstk_darwin(v22);
  v24 = &v183 - v23;
  sub_10002F5E4();
  if (qword_100049688 != -1)
  {
    sub_10002AA04();
    swift_once();
  }

  v25 = qword_10004B590;
  v26 = sub_10002AD68();
  if (os_log_type_enabled(v26, v27))
  {
    sub_10002AB80();
    v28 = swift_slowAlloc();
    sub_10002ABE0();
    v29 = swift_slowAlloc();
    sub_10002AB68();
    v30 = swift_slowAlloc();
    v203[0] = v30;
    *v28 = 138412546;
    v31 = v199;
    *(v28 + 4) = v199;
    *v29 = v31;
    sub_10002AE6C();
    v33 = v32;
    *(v28 + 14) = sub_100022BB4(v194, v195, v203);
    sub_10002AAD4();
    _os_log_impl(v34, v35, v36, v37, v38, 0x16u);
    sub_100010800(v29, &qword_100049CC0, &qword_1000355C0);
    sub_10002AAC4();

    sub_100004168(v30);
    sub_10002AB08();

    sub_10002AB08();
  }

  v39 = [v199 assetDirectory];
  sub_10002F164();

  v40 = objc_opt_self();
  sub_10002F134(v41);
  v43 = v42;
  v203[0] = 0;
  v44 = &off_100047000;
  v45 = [v40 loadFromURL:v42 error:v203];

  if (!v45)
  {
    v58 = v203[0];
    sub_10002AE28();
    v59 = sub_10002F0F4();

    swift_willThrow();
    v203[0] = v59;
    sub_100004120(&qword_10004A630, &unk_100035270);
    sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
    sub_10002AEA8();
    swift_dynamicCast();
    v60 = v201;
    v61 = sub_10002F5D4();
    (*(v6 + 16))(v1, v24, v200);
    if (os_log_type_enabled(v25, v61))
    {
      sub_10002AB80();
      v62 = swift_slowAlloc();
      v190 = v24;
      v63 = v62;
      sub_10002ABC8();
      v202 = swift_slowAlloc();
      *v63 = 136315394;
      sub_100029E04();
      v64 = v200;
      v65 = sub_10002F824();
      v67 = v66;
      v195 = v25;
      v68 = *(v6 + 8);
      v68(v1, v64);
      sub_100022BB4(v65, v67, &v202);
      sub_10002AE28();

      sub_10002AF64();
      v69 = [v60 localizedDescription];
      sub_10002F404();
      sub_10002B040();

      v70 = sub_10002AFD4();
      sub_100022BB4(v70, v71, v72);
      sub_10002AD80();

      *(v63 + 14) = v69;
      _os_log_impl(&_mh_execute_header, v195, v61, "Failed to load current configuration model from url '%s': %s", v63, 0x16u);
      swift_arrayDestroy();
      sub_10002AA28();

      sub_10002AA18();

      v73 = sub_10002AFC8();
      (v68)(v73);
    }

    else
    {

      v159 = *(v6 + 8);
      v160 = v200;
      v159(v1, v200);
      v159(v24, v160);
    }

    v173 = v199;
    sub_100010D64();

LABEL_29:
    sub_100010CE4();
    return;
  }

  v46 = v203[0];
  v192 = v45;
  v47 = sub_10002F5B4();
  v48 = sub_10002AFE0();
  v186 = v50;
  v187 = v49;
  v50(v48);
  v51 = os_log_type_enabled(v25, v47);
  v190 = v24;
  v188 = v6;
  if (v51)
  {
    sub_10002AB74();
    v52 = swift_slowAlloc();
    v53 = v200;
    v54 = v52;
    sub_10002AB68();
    v55 = swift_slowAlloc();
    v203[0] = v55;
    *v54 = 136315138;
    sub_100029E04();
    sub_10002F824();
    sub_10002B334();
    v191 = *(v6 + 8);
    v191(v0, v53);
    v56 = sub_10002ADC4();
    sub_100022BB4(v56, v24, v57);
    sub_10002AEB4();

    *(v54 + 4) = v0;
    _os_log_impl(&_mh_execute_header, v25, v47, "Successfully loaded current configuration model from url '%s'", v54, 0xCu);
    sub_100004168(v55);
    sub_10002AAC4();

    v44 = &off_100047000;
    sub_10002AB08();
  }

  else
  {
    v191 = *(v6 + 8);
    v191(v0, v200);
  }

  v74 = v192;
  v75 = v193;
  v76 = v198;
  v77 = [v192 identifier];

  v78 = sub_10002F404();
  v198 = v79;

  sub_10002F5E4();
  sub_10002AD74();
  if (os_log_type_enabled(v25, v80))
  {
    sub_10002AB74();
    v81 = swift_slowAlloc();
    sub_10002AB68();
    v82 = swift_slowAlloc();
    v203[0] = v82;
    *v81 = 136315138;
    *(v81 + 4) = sub_10002B088();
    _os_log_impl(&_mh_execute_header, v25, v77, "Starting to update configuration '%s'", v81, 0xCu);
    sub_100004168(v82);
    sub_10002AA18();

    sub_10002AA78();
  }

  sub_10002F124();
  sub_10002F154();
  sub_10002F134(v83);
  v85 = v84;
  v203[0] = 0;
  v86 = [v40 v44[268]];

  if (v86)
  {
    v87 = v203[0];
    v88 = v86;
    sub_10002F5B4();
    v89 = sub_10002AF34();
    v91 = os_log_type_enabled(v89, v90);
    v194 = v78;
    v185 = v88;
    if (v91)
    {
      sub_10002AB80();
      v92 = swift_slowAlloc();
      sub_10002ABE0();
      v93 = swift_slowAlloc();
      sub_10002AB68();
      v94 = swift_slowAlloc();
      v203[0] = v94;
      *v92 = 136315394;
      *(v92 + 4) = sub_100022BB4(v194, v198, v203);
      *(v92 + 12) = 2112;
      *(v92 + 14) = v88;
      *v93 = v86;
      sub_10002B0A4(&_mh_execute_header, v25, v85, "Successfully loaded updated configuration model '%s': %@");
      sub_100010800(v93, &qword_100049CC0, &qword_1000355C0);
      sub_10002AA18();

      sub_100004168(v94);
      sub_10002AB08();

      sub_10002AB08();
    }

    else
    {
    }

    sub_10002F5E4();
    sub_10002AD74();
    if (os_log_type_enabled(v25, v116))
    {
      sub_10002AB74();
      v117 = swift_slowAlloc();
      sub_10002AB68();
      v118 = swift_slowAlloc();
      v203[0] = v118;
      *v117 = 136315138;
      *(v117 + 4) = sub_10002B088();
      sub_10002AAD4();
      _os_log_impl(v119, v120, v121, v122, v123, 0xCu);
      sub_100004168(v118);
      sub_10002AA78();

      sub_10002AB08();
    }

    v184 = [objc_opt_self() mutableConfiguration];
    v124 = [v184 assetDirectory];
    sub_10002F164();

    v125 = sub_10002F5E4();
    v126 = v76;
    v127 = v76;
    v128 = v75;
    v129 = v75;
    v130 = v186;
    (v186)(v126, v129, v200);
    v131 = v189;
    v132 = sub_10002B388();
    v130(v132);
    if (os_log_type_enabled(v25, v125))
    {
      sub_10002AB68();
      v133 = swift_slowAlloc();
      v195 = v25;
      v134 = v133;
      v203[0] = swift_slowAlloc();
      *v134 = 136315650;
      *(v134 + 4) = sub_10002B088();
      v135 = v200;
      *(v134 + 12) = 2080;
      v136 = v127;
      v137 = v131;
      v138 = v136;
      sub_10002F184();
      sub_10002B340();
      v139 = v136;
      v140 = v191;
      v191(v139, v135);
      v141 = sub_10002AC38();
      sub_100022BB4(v141, v142, v143);
      sub_10002B010();

      *(v134 + 14) = v138;
      *(v134 + 22) = 2080;
      v144 = v137;
      sub_10002F184();
      sub_10002B340();
      v145 = sub_10002B34C();
      v140(v145);
      v146 = sub_10002AC38();
      sub_100022BB4(v146, v147, v148);
      sub_10002B010();
      v149 = v193;

      *(v134 + 24) = v137;
      v25 = v195;
      _os_log_impl(&_mh_execute_header, v195, v125, "Copying resources for configuration '%s' from '%s' to '%s'", v134, 0x20u);
      swift_arrayDestroy();
      sub_10002AA18();

      sub_10002AA78();
    }

    else
    {
      v156 = v131;
      v157 = v200;
      v144 = v191;
      v191(v156, v200);
      (v144)(v127, v157);
      v149 = v128;
    }

    sub_100018ABC(v149, v196, v150, v151, v152, v153, v154, v155, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, SHIDWORD(v192), v193, v194);
    v158 = v184;
    v162 = v161;
    sub_10002F5B4();
    sub_10002AD74();
    if (os_log_type_enabled(v25, v163))
    {
      sub_10002AB80();
      v165 = swift_slowAlloc();
      sub_10002AB68();
      v166 = swift_slowAlloc();
      v203[0] = v166;
      *v165 = 134218242;
      *(v165 + 4) = v162;
      sub_10002AE6C();
      v167 = sub_100022BB4(v194, v198, v203);

      *(v165 + 14) = v167;
      sub_10002AAD4();
      _os_log_impl(v168, v169, v170, v171, v172, 0x16u);
      sub_100004168(v166);
      sub_10002AA18();

      sub_10002AB08();
    }

    else
    {
    }

    sub_10002AF54();
    v144();
    v180 = sub_10002AEC0();
    (v144)(v180);
    v181 = sub_10002B248();
    (v144)(v181);
    v182 = sub_10002AFC8();
    (v144)(v182);
    goto LABEL_29;
  }

  v95 = v203[0];
  sub_10002F0F4();

  swift_willThrow();
  v96 = sub_10002F5D4();
  v97 = v185;
  (v186)(v185, v75, v200);
  if (os_log_type_enabled(v25, v96))
  {
    sub_10002AB68();
    v98 = swift_slowAlloc();
    sub_10002ABE0();
    v99 = swift_slowAlloc();
    v100 = v200;
    v101 = v78;
    v102 = v99;
    sub_10002ABC8();
    v196 = swift_slowAlloc();
    v203[0] = v196;
    *v98 = 136315650;
    v103 = sub_10002ADC4();
    sub_100022BB4(v103, v198, v104);
    sub_10002AE28();

    *(v98 + 4) = v101;
    sub_10002AE6C();
    sub_100029E04();
    v105 = sub_10002F824();
    v107 = v106;
    v195 = v25;
    v108 = v97;
    v109 = v191;
    v191(v108, v100);
    v110 = sub_10002ADC4();
    sub_100022BB4(v110, v107, v111);
    sub_10002AE28();

    *(v98 + 14) = v105;
    *(v98 + 22) = 2112;
    swift_errorRetain();
    v112 = _swift_stdlib_bridgeErrorToNSError();
    *(v98 + 24) = v112;
    *v102 = v112;
    _os_log_impl(&_mh_execute_header, v195, v96, "Failed to load updated configuration model '%s' from url '%s': %@", v98, 0x20u);
    sub_100010800(v102, &qword_100049CC0, &qword_1000355C0);
    sub_10002AA28();

    swift_arrayDestroy();
    sub_10002AA38();

    sub_10002AB08();

    v113 = sub_10002AEC0();
    v109(v113);
    v114 = sub_10002B248();
    v109(v114);
    v115 = sub_10002AFC8();
    v109(v115);
  }

  else
  {

    sub_10002AF54();
    (v95)();
    v174 = sub_10002AEC0();
    (v95)(v174);
    v175 = sub_10002B248();
    (v95)(v175);
    v176 = sub_10002AFC8();
    (v95)(v176);
  }

  sub_100010CE4();

  v179 = v177;
}

uint64_t sub_10001DD38()
{
  sub_100010F34();
  v0[31] = v1;
  v0[32] = v2;
  v3 = sub_100004120(&unk_10004A5E0, &qword_100035720);
  sub_10002AE90(v3);
  v0[33] = swift_task_alloc();
  v4 = sub_10002F1B4();
  v0[34] = v4;
  sub_10002AEE4(v4);
  v0[35] = v5;
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  sub_10002AE84();

  return _swift_task_switch(v6, v7, v8);
}

void sub_10001DE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10002B3B8();
  v16 = [objc_opt_self() mutableConfiguration];
  *(v15 + 312) = v16;
  v17 = objc_opt_self();
  *(v15 + 176) = 0;
  v18 = [v17 openPhotoLibraryWithWellKnownIdentifier:1 error:v15 + 176];
  *(v15 + 320) = v18;
  v19 = *(v15 + 176);
  if (v18)
  {
    v20 = v18;
    v21 = *(v15 + 248);
    v22 = v19;
    v23 = [v21 assetDirectory];
    sub_10002F164();

    objc_opt_self();
    sub_10002F134(v24);
    v26 = v25;
    *(v15 + 200) = 0;
    v27 = sub_10002B358();
    v29 = [v27 v28];

    v30 = *(v15 + 200);
    if (v29)
    {
      v31 = v29;
      v32 = v30;
    }

    else
    {
      v54 = v30;
      sub_100010CB8();
      sub_10002F0F4();

      swift_willThrow();

      v55 = [objc_allocWithZone(PFPosterConfiguration) initWithConfigurationType:0];
      if (!v55)
      {
        __break(1u);
_swift_continuation_await:
        _swift_continuation_await(v55);
        return;
      }

      v31 = v55;
    }

    *(v15 + 328) = v31;
    v56 = *(v15 + 264);
    v57 = *(v15 + 272);
    v58 = *(v15 + 256);
    v59 = v31;
    [v59 setOptions:{objc_msgSend(v59, "options") | 8}];

    v60 = [v16 assetDirectory];
    sub_10002F164();

    sub_1000103AC(v56, 0, 1, v57);
    objc_allocWithZone(PUWallpaperConfigurationUpdater);
    v61 = v20;
    swift_unknownObjectRetain();
    v62 = sub_100021FE4(v61, v59, v56, v58);
    *(v15 + 336) = v62;
    *(v15 + 16) = v15;
    *(v15 + 56) = v15 + 144;
    *(v15 + 24) = sub_10001E36C;
    v63 = swift_continuation_init();
    *(v15 + 136) = sub_100004120(&unk_10004A8E0, &qword_100035728);
    *(v15 + 80) = _NSConcreteStackBlock;
    *(v15 + 88) = 1107296256;
    *(v15 + 96) = sub_10001EEEC;
    *(v15 + 104) = &unk_100041300;
    *(v15 + 112) = v63;
    [v62 attemptUpdateWithCompletionBlock:v15 + 80];
    sub_10002ACB8();

    goto _swift_continuation_await;
  }

  v33 = v19;
  sub_10002AE40();
  v34 = sub_10002F0F4();

  swift_willThrow();
  *(v15 + 184) = v34;
  sub_100004120(&qword_10004A630, &unk_100035270);
  sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
  sub_10002ABEC();
  if (swift_dynamicCast())
  {
    v35 = *(v15 + 192);
    sub_10002F5D4();
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    v36 = sub_10002AD68();
    if (os_log_type_enabled(v36, v37))
    {
      sub_10002AB74();
      swift_slowAlloc();
      sub_10002ABE0();
      v38 = swift_slowAlloc();
      sub_10002ACE8(v38, 5.7779e-34);
      sub_10002AAD4();
      _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
      sub_100010800(v38, &qword_100049CC0, &qword_1000355C0);
      sub_10002AA18();

      sub_10002AB08();
    }

    v44 = *(v15 + 248);

    v45 = v44;

    sub_10002B198();

    sub_10002AC68();
    sub_10002ACB8();

    v48(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_10002ACB8();
  }
}

uint64_t sub_10001E36C()
{
  sub_100010F34();
  sub_10002ABD4();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 344) = v4;
  if (v4)
  {
  }

  sub_10002AE84();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10001E4A4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 168);
  v111 = *(v0 + 160);
  v4 = [*(v0 + 312) assetDirectory];
  sub_10002F164();

  sub_10002F134(v5);
  v7 = v6;
  *(v0 + 208) = 0;
  v8 = (v0 + 208);
  v9 = (v0 + 312);
  v10 = sub_10002B04C();
  LODWORD(v4) = [v10 v11];

  v12 = *(v0 + 208);
  if (!v4)
  {
    v110 = v1;
    v42 = *v9;
    v43 = v12;

    v44 = sub_10002F0F4();
    goto LABEL_11;
  }

  v13 = v12;
  v14 = sub_100029328(v1);
  if (!v14)
  {
    v79 = v2;
    v81 = *(v0 + 328);
    v80 = *(v0 + 336);
    v82 = *(v0 + 320);
    v103 = *(v0 + 296);
    v106 = *(v0 + 304);
    v83 = *(v0 + 272);
    v84 = *(v0 + 280);

    swift_unknownObjectRelease();
    v85 = *(v84 + 8);
    v85(v103, v83);
    v85(v106, v83);
    goto LABEL_26;
  }

  v15 = v14;
  if (!sub_1000126D0(v14))
  {
    v86 = v2;
    v87 = v1;
    v89 = *(v0 + 328);
    v88 = *(v0 + 336);
    v100 = *(v0 + 320);
    v104 = *(v0 + 296);
    v107 = *(v0 + 304);
    v91 = *(v0 + 272);
    v90 = *(v0 + 280);

    swift_unknownObjectRelease();

    v92 = *(v90 + 8);
    v92(v104, v91);
    v92(v107, v91);
    goto LABEL_26;
  }

  v108 = v2;
  v110 = v1;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = sub_10002F734();
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_33;
    }

    v16 = *(v15 + 32);
  }

  v17 = v16;
  v18 = *(v0 + 288);
  v19 = *(v0 + 280);
  v105 = *(v0 + 272);

  v20 = [v17 subpath];

  sub_10002F404();
  v96 = objc_opt_self();
  swift_unknownObjectRetain();
  v21 = v108;
  v22 = v111;
  sub_10002B064();
  sub_10002F154();

  sub_10002F134(v23);
  v25 = v24;
  v101 = *(v19 + 8);
  v101(v18, v105);
  *(v0 + 232) = 0;
  v26 = [v96 saveSegmentationItem:v3 compoundLayerStack:v21 style:v22 toWallpaperURL:v25 error:v0 + 232];

  v97 = v22;
  swift_unknownObjectRelease();
  v27 = *(v0 + 232);
  v28 = *(v0 + 312);
  if (!v26)
  {
    v95 = v27;

    v44 = sub_10002F0F4();
    v2 = v108;
    goto LABEL_11;
  }

  v29 = v27;
  sub_10002F134(v30);
  v32 = v31;
  *(v0 + 240) = 0;
  v33 = sub_10002B358();
  v35 = [v33 v34];

  v36 = *(v0 + 240);
  if (!v35)
  {
    v44 = sub_10002F0F4();

    v2 = v108;
LABEL_11:
    swift_willThrow();
    *(v0 + 216) = v44;
    swift_errorRetain();
    sub_100004120(&qword_10004A630, &unk_100035270);
    sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
    if (swift_dynamicCast())
    {

      v45 = *(v0 + 224);
      v46 = sub_10002F5D4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      v109 = v2;
      v47 = qword_10004B590;
      if (sub_10002B104())
      {
        sub_10002AB74();
        v48 = swift_slowAlloc();
        sub_10002ABE0();
        v49 = swift_slowAlloc();
        *v48 = 138412290;
        *(v48 + 4) = v45;
        *v49 = v45;
        v50 = v45;
        _os_log_impl(&_mh_execute_header, v47, v46, "Failed to run segmentation with override configuration: %@", v48, 0xCu);
        sub_100010800(v49, &qword_100049CC0, &qword_1000355C0);
        sub_10002AA28();

        sub_10002AAB4();
      }

      v9 = (v0 + 248);
      v52 = *(v0 + 328);
      v51 = *(v0 + 336);
      v54 = *(v0 + 312);
      v53 = *(v0 + 320);
      v98 = *(v0 + 304);
      v102 = *(v0 + 248);
      v55 = v45;
      v56 = *(v0 + 272);
      v57 = *(v0 + 280);

      swift_unknownObjectRelease();
      v58 = *(v57 + 8);
      v59 = sub_10002AC80();
      v58(v59);
      (v58)(v98, v56);
      v60 = v102;
LABEL_22:

      goto LABEL_26;
    }

    v61 = v2;
    v62 = *(v0 + 336);
    v63 = *(v0 + 320);
    v99 = *(v0 + 304);
    v65 = *(v0 + 272);
    v64 = *(v0 + 280);

    swift_unknownObjectRelease();
    v66 = *(v64 + 8);
    v67 = sub_10002AFD4();
    v66(v67);
    (v66)(v99, v65);

    *(v0 + 184) = v44;
    sub_100004120(&qword_10004A630, &unk_100035270);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v8 = *(v0 + 192);
    sub_10002F5D4();
    if (qword_100049688 == -1)
    {
LABEL_19:
      v69 = sub_10002AD68();
      if (os_log_type_enabled(v69, v70))
      {
        sub_10002AB74();
        swift_slowAlloc();
        sub_10002ABE0();
        v71 = swift_slowAlloc();
        sub_10002ACE8(v71, 5.7779e-34);
        sub_10002AAD4();
        _os_log_impl(v72, v73, v74, v75, v76, 0xCu);
        sub_100010800(v71, &qword_100049CC0, &qword_1000355C0);
        sub_10002AA18();

        sub_10002AB08();
      }

      v9 = (v0 + 248);
      v77 = *(v0 + 248);

      v78 = v77;
      goto LABEL_22;
    }

LABEL_33:
    sub_10002AA04();
    swift_once();
    goto LABEL_19;
  }

  v37 = *(v0 + 336);
  v38 = *(v0 + 320);
  v39 = *(v0 + 296);
  v40 = *(v0 + 272);

  swift_unknownObjectRelease();
  v101(v39, v40);
  v41 = sub_10002B37C();
  (v101)(v41);
LABEL_26:
  v93 = *v9;
  sub_10002B198();

  sub_10002AC68();

  return v94(v93);
}

void sub_10001ECB4(uint64_t a1)
{
  v2 = *(v1 + 336);
  v4 = *(v1 + 320);
  v3 = *(v1 + 328);
  swift_willThrow();

  v5 = sub_10002B064();
  v6(v5);
  *(v1 + 184) = *(v1 + 344);
  sub_100004120(&qword_10004A630, &unk_100035270);
  sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
  sub_10002ABEC();
  if (swift_dynamicCast())
  {
    v7 = *(v1 + 192);
    sub_10002F5D4();
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    v8 = sub_10002AD68();
    if (os_log_type_enabled(v8, v9))
    {
      sub_10002AB74();
      swift_slowAlloc();
      sub_10002ABE0();
      v10 = swift_slowAlloc();
      sub_10002ACE8(v10, 5.7779e-34);
      sub_10002AAD4();
      _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
      sub_100010800(v10, &qword_100049CC0, &qword_1000355C0);
      sub_10002AA18();

      sub_10002AB08();
    }

    v16 = *(v1 + 248);

    v17 = v16;

    sub_10002B198();

    sub_10002AC68();
    sub_10002B4A4();

    __asm { BRAA            X2, X16 }
  }

  sub_10002B4A4();
}

uint64_t *sub_10001EEEC(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  result = sub_100010414((a1 + 32), *(a1 + 56));
  v12 = *result;
  if (a6)
  {
    return sub_10001EFC0(v12, a6);
  }

  if (!a3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (!a4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!a5)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v13 = a2;
  v14 = a3;
  v15 = a4;
  swift_unknownObjectRetain();

  return sub_10001F02C(v12, v13, v14, v15, a5);
}

uint64_t sub_10001EFC0(uint64_t a1, uint64_t a2)
{
  sub_100004120(&qword_10004A630, &unk_100035270);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_10001F02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a1 + 64) + 40);
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  return _swift_continuation_throwingResume();
}

uint64_t sub_10001F050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return _swift_continuation_throwingResume();
}

uint64_t sub_10001F070()
{
  sub_100010F34();
  v0[24] = v1;
  v0[25] = v2;
  v3 = sub_10002F1B4();
  v0[26] = v3;
  sub_10002AEE4(v3);
  v0[27] = v4;
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  sub_10002AE84();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10001F164()
{
  v1 = v0[28];
  v11 = v0[25];
  v2 = v0[24];
  v3 = [objc_opt_self() mutableConfiguration];
  v0[31] = v3;
  v4 = [v3 assetDirectory];
  sub_10002F164();

  v5 = [v2 assetDirectory];
  sub_10002F164();

  v0[32] = [objc_allocWithZone(PFPosterConfiguration) initWithConfigurationType:0];
  sub_1000042B4(0, &qword_10004A858, PUWallpaperPosterMigrator_ptr);
  v6 = sub_10002AC38();
  v7(v6);
  v8 = sub_10001FF48(v1, v11);
  v0[33] = v8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10001F3B8;
  v9 = swift_continuation_init();
  v0[17] = sub_100004120(&unk_10004A8C0, &unk_100035710);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10001FFEC;
  v0[13] = &unk_1000412D8;
  v0[14] = v9;
  [v8 attemptMigrationWithCompletionBlock:?];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001F3B8()
{
  sub_100010F34();
  sub_10002ABD4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = *(v3 + 48);
  sub_10002AE84();

  return _swift_task_switch(v4, v5, v6);
}

void sub_10001F4E8()
{
  v1 = *(v0 + 144);
  v98 = *(v0 + 152);
  v2 = [objc_allocWithZone(PFPosterEditConfiguration) init];
  v3 = [v1 portraitLayerStack];
  v4 = &off_100047000;
  if (v3)
  {
    v5 = v3;
    v6 = [v5 layout];
    [v6 normalizedVisibleFrame];
    sub_100010F14();

    sub_100010F00();
    PXRectFlippedVertically();
    sub_100010F14();
  }

  else
  {
    sub_10002B294();
  }

  v7 = sub_100010F00();
  [v8 v9];
  v10 = [v1 landscapeLayerStack];
  if (v10)
  {
    v11 = v10;
    v12 = [v11 layout];
    [v12 normalizedVisibleFrame];
    sub_100010F14();

    sub_100010F00();
    PXRectFlippedVertically();
    sub_100010F14();
  }

  else
  {
    sub_10002B294();
  }

  v13 = sub_100010F00();
  [v14 v15];
  v99 = v1;
  v16 = [v1 portraitLayerStack];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_10;
  }

  v18 = v16;
  v19 = [v18 layout];
  [v19 normalizedAdaptiveVisibleFrame];
  sub_100010F14();

  v101.origin.x = sub_100010F00();
  if (CGRectIsNull(v101))
  {

LABEL_10:
    sub_10002B294();

    goto LABEL_12;
  }

  v20 = [v18 layout];
  [v20 normalizedAdaptiveVisibleFrame];
  sub_100010F14();

  sub_100010F00();
  PXRectFlippedVertically();
  sub_100010F14();

LABEL_12:
  v21 = sub_100010F00();
  [v22 v23];
  v24 = [v1 landscapeLayerStack];
  v25 = v24;
  if (!v24)
  {
LABEL_15:
    sub_10002B294();

    goto LABEL_17;
  }

  v26 = v24;
  v27 = [v26 layout];
  [v27 normalizedAdaptiveVisibleFrame];
  sub_100010F14();

  v102.origin.x = sub_100010F00();
  if (CGRectIsNull(v102))
  {

    goto LABEL_15;
  }

  v28 = [v26 layout];
  [v28 normalizedAdaptiveVisibleFrame];
  sub_100010F14();

  sub_100010F00();
  PXRectFlippedVertically();
  sub_100010F14();

LABEL_17:
  v29 = *(v0 + 256);
  v30 = sub_100010F00();
  [v31 v32];
  [v29 setEditConfiguration:v2];
  sub_100004120(&qword_10004A650, qword_1000355D8);
  sub_10002ADD0();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000352A0;
  v34 = PFPosterMedia_ptr;
  v35 = objc_allocWithZone(PFPosterMedia);
  *(v33 + 32) = sub_100021CA8(0, 0);
  v36 = sub_10002B034();
  sub_1000291D8(v36, v37, v38, PFPosterMedia_ptr, v39);
  v40 = sub_100029328(v29);
  if (!v40)
  {
    v70 = *(v0 + 256);
    v69 = *(v0 + 264);
    v71 = *(v0 + 232);
    v72 = *(v0 + 208);
    v73 = *(v0 + 216);

    swift_unknownObjectRelease();
    v74 = *(v73 + 8);
    v74(v71, v72);
    v75 = sub_10002B370();
    (v74)(v75);
    goto LABEL_32;
  }

  v41 = v40;
  if (!sub_1000126D0(v40))
  {
    v88 = *(v0 + 256);
    v89 = *(v0 + 264);
    v90 = *(v0 + 240);
    v92 = *(v0 + 208);
    v91 = *(v0 + 216);

    swift_unknownObjectRelease();

    v93 = *(v91 + 8);
    v94 = sub_10002AD30();
    v93(v94);
    (v93)(v90, v92);
    goto LABEL_32;
  }

  v97 = v2;
  if ((v41 & 0xC000000000000001) != 0)
  {
    v42 = sub_10002F734();
  }

  else
  {
    if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_38;
    }

    v42 = *(v41 + 32);
  }

  v43 = v42;
  v44 = *(v0 + 216);
  v33 = *(v0 + 224);
  v34 = *(v0 + 208);

  v45 = [v43 subpath];

  sub_10002F404();
  v46 = objc_opt_self();
  swift_unknownObjectRetain();
  v47 = v99;
  sub_10002F154();

  sub_10002F134(v48);
  v50 = v49;
  v52 = *(v44 + 8);
  v4 = (v44 + 8);
  v51 = v52;
  v53 = sub_10002AD30();
  (v52)(v53);
  *(v0 + 176) = 0;
  v54 = [v46 saveSegmentationItem:v98 compoundLayerStack:v47 style:0 toWallpaperURL:v50 error:v0 + 176];

  swift_unknownObjectRelease();
  v55 = *(v0 + 176);
  if (v54)
  {
    v56 = v55;
    sub_10002F134(v57);
    v59 = v58;
    *(v0 + 184) = 0;
    v60 = sub_10002B04C();
    v62 = [v60 v61];

    v55 = *(v0 + 184);
    if (v62)
    {
      v64 = *(v0 + 256);
      v63 = *(v0 + 264);
      v65 = *(v0 + 248);
      v100 = *(v0 + 240);
      v66 = *(v0 + 232);
      v67 = *(v0 + 208);
      v68 = v55;

      swift_unknownObjectRelease();
      v51(v66, v67);
      v51(v100, v67);
      goto LABEL_32;
    }
  }

  v76 = v55;
  v77 = sub_10002F0F4();

  swift_willThrow();
  swift_unknownObjectRelease();

  *(v0 + 160) = v77;
  sub_100004120(&qword_10004A630, &unk_100035270);
  sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
  sub_10002AEA8();
  if (swift_dynamicCast())
  {
    v29 = *(v0 + 168);
    sub_10002F5D4();
    if (qword_100049688 == -1)
    {
LABEL_28:
      v78 = sub_10002AD68();
      if (os_log_type_enabled(v78, v79))
      {
        sub_10002AB74();
        swift_slowAlloc();
        sub_10002ABE0();
        v4 = swift_slowAlloc();
        sub_10002ACE8(v4, 5.7779e-34);
        sub_10002AAD4();
        _os_log_impl(v80, v81, v82, v83, v84, 0xCu);
        sub_100010800(v4, &qword_100049CC0, &qword_1000355C0);
        sub_10002AA18();

        sub_10002AB08();
      }

      sub_10002B44C();

      v85 = v34[1];
      v86 = sub_10002AC80();
      v85(v86);
      v87 = sub_10002AECC();
      v85(v87);

LABEL_32:

      sub_10002AC68();
      sub_10002B51C();

      __asm { BRAA            X2, X16 }
    }

LABEL_38:
    sub_10002AA04();
    swift_once();
    goto LABEL_28;
  }

  sub_10002B51C();
}

void sub_10001FD24(uint64_t a1)
{
  swift_willThrow();
  v1[20] = v1[34];
  sub_100004120(&qword_10004A630, &unk_100035270);
  sub_1000042B4(0, &unk_10004A8D0, NSError_ptr);
  sub_10002ABEC();
  if (swift_dynamicCast())
  {
    v5 = v1[21];
    sub_10002F5D4();
    if (qword_100049688 != -1)
    {
      sub_10002AA04();
      swift_once();
    }

    v6 = sub_10002AD68();
    if (os_log_type_enabled(v6, v7))
    {
      sub_10002AB74();
      swift_slowAlloc();
      sub_10002ABE0();
      v2 = swift_slowAlloc();
      sub_10002ACE8(v2, 5.7779e-34);
      sub_10002AAD4();
      _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
      sub_100010800(v2, &qword_100049CC0, &qword_1000355C0);
      sub_10002AA18();

      sub_10002AB08();
    }

    sub_10002B44C();

    v13 = *(v4 + 8);
    v14 = sub_10002AC80();
    v13(v14);
    v15 = sub_10002AECC();
    v13(v15);

    sub_10002AC68();
    sub_10002B4A4();

    __asm { BRAA            X2, X16 }
  }

  sub_10002B4A4();
}

id sub_10001FF48(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10002F134(v5);
  v7 = v6;
  v8 = [v4 initWithAssetDirectory:v6 configurationType:a2];

  v9 = sub_10002F1B4();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

uint64_t *sub_10001FFEC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  result = sub_100010414((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a4)
  {
    return sub_10001EFC0(v8, a4);
  }

  if (!a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!a3)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v9 = a2;
  swift_unknownObjectRetain();

  return sub_10001F050(v8, v9, a3);
}

uint64_t sub_10002008C()
{
  sub_100010F34();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_10002F1B4();
  v1[6] = v4;
  sub_10002AEE4(v4);
  v1[7] = v5;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_10002AE84();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100020178(uint64_t a1)
{
  v100 = v2;
  v3 = sub_10002F5B4();
  if (qword_100049688 != -1)
  {
    sub_10002AA04();
    swift_once();
  }

  v4 = qword_10004B590;
  if (os_log_type_enabled(qword_10004B590, v3))
  {
    v5 = *(v2 + 32);
    sub_10002AB80();
    v6 = swift_slowAlloc();
    sub_10002ABE0();
    v7 = swift_slowAlloc();
    sub_10002AB68();
    v1 = swift_slowAlloc();
    v99 = v1;
    *v6 = 138412546;
    *(v6 + 4) = v5;
    *v7 = v5;
    *(v6 + 12) = 2080;
    sub_1000042B4(0, &qword_10004A808, PRPosterDescriptor_ptr);
    v8 = v5;
    v9 = sub_10002F4D4();
    v11 = sub_100022BB4(v9, v10, &v99);

    *(v6 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v3, "Configuration: %@; Current Suggestions %s", v6, 0x16u);
    sub_100010800(v7, &qword_100049CC0, &qword_1000355C0);
    sub_10002AA18();

    sub_100004168(v1);
    sub_10002AB08();

    sub_10002AAB4();
  }

  v12 = [*(v2 + 32) assetDirectory];
  sub_10002F164();

  objc_opt_self();
  sub_10002F134(v13);
  v15 = v14;
  *(v2 + 16) = 0;
  v16 = sub_10002B04C();
  v18 = [v16 v17];

  v19 = *(v2 + 16);
  if (v18)
  {
    v20 = v19;
    v21 = sub_100029328(v18);
    if (v21)
    {
      v22 = v21;
      v23 = sub_1000126D0(v21);
      v98 = v2;
      oslog = v4;
      v90 = v18;
      if (v23)
      {
        v24 = v23;
        if (v23 < 1)
        {
          __break(1u);
        }

        v25 = 0;
        v26 = 0;
        v27 = 0xE000000000000000;
        while (1)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v28 = sub_10002F734();
          }

          else
          {
            v28 = *(v22 + 8 * v26 + 32);
          }

          v29 = v28;
          objc_opt_self();
          v30 = swift_dynamicCastObjCClass();
          if (v30)
          {
            v31 = v30;

            v32 = [v31 suggestionUUID];
          }

          else
          {
            if ([v29 mediaType] != 1 || (v34 = objc_msgSend(v29, "assetUUID")) == 0)
            {

              goto LABEL_20;
            }

            v32 = v34;
          }

          v25 = sub_10002F404();
          v27 = v33;

LABEL_20:
          if (v24 == ++v26)
          {
            goto LABEL_25;
          }
        }
      }

      v25 = 0;
      v27 = 0xE000000000000000;
LABEL_25:
      v43 = v98[7];

      sub_1000042B4(0, &qword_10004A830, PRMutablePosterDescriptor_ptr);
      v44 = objc_opt_self();
      v45 = 0;
      v97 = PRPosterRoleLockScreen;
      v93 = (v43 + 8);
      v95 = xmmword_1000352B0;
      v91 = xmmword_1000352A0;
      v92 = v27;
      do
      {
        v46 = *(&off_100040F68 + v45 + 32);
        sub_100004120(&qword_10004A838, qword_1000356F8);
        sub_10002AC74();
        v47 = swift_allocObject();
        *(v47 + 16) = v95;
        *(v47 + 32) = v25;
        *(v47 + 40) = v27;

        isa = sub_10002F4A4().super.isa;

        v49 = [v44 descriptorIdentifierForDescriptorType:v46 uuids:isa];

        v50 = sub_10002F404();
        v52 = v51;

        v53 = sub_1000189FC(v50, v52, v97);
        v54 = v53;
        if ((v46 - 201) >= 3)
        {
        }

        else
        {
          v55 = off_100041548[v46 - 201];
          v56 = v98[8];
          v94 = v98[9];
          sub_100004120(&qword_10004A650, qword_1000355D8);
          sub_10002ADD0();
          v57 = swift_allocObject();
          *(v57 + 16) = v91;
          v58 = [objc_opt_self() *v55];
          v59 = [objc_allocWithZone(PRPosterColor) initWithColor:v58 preferredStyle:2];

          *(v57 + 32) = v59;
          sub_1000042B4(0, &unk_10004A840, PRPosterColor_ptr);
          v60 = sub_10002F4A4().super.isa;

          [v54 setPreferredTitleColors:v60];

          v61 = [objc_opt_self() defaultLookupInfo];
          v62 = [objc_opt_self() galleryOptionsWithAssetLookupInfo:v61 galleryPresentationStyle:0 galleryDisplayStyle:0];

          [v54 setPreferredGalleryOptions:v62];
          v63 = v54;
          v64 = [v63 assetDirectory];
          sub_10002F164();

          sub_100018ABC(v94, v56, v65, v66, v67, v68, v69, v70, oslog, v90, v91, *(&v91 + 1), v92, v93, _swiftEmptyArrayStorage, v94, v95, SDWORD2(v95), SHIDWORD(v95), v96, v97);
          sub_10002F494();
          sub_10002AF84();
          if (v72)
          {
            sub_10002ABBC(v71);
            sub_10002F4E4();
          }

          v73 = v98[8];
          v74 = v98[6];
          sub_10002F504();

          (*v93)(v73, v74);
          v27 = v92;
        }

        v45 += 8;
      }

      while (v45 != 24);

      v75 = sub_10002F5B4();
      if (os_log_type_enabled(oslog, v75))
      {
        sub_10002AB74();
        v76 = swift_slowAlloc();
        sub_10002AB68();
        v77 = swift_slowAlloc();
        v99 = v77;
        *v76 = 136315138;
        sub_1000042B4(0, &qword_10004A808, PRPosterDescriptor_ptr);
        v42 = _swiftEmptyArrayStorage;

        sub_10002F4D4();
        sub_10002B31C();

        v78 = sub_10002AD30();
        v81 = sub_100022BB4(v78, v79, v80);

        *(v76 + 4) = v81;
        _os_log_impl(&_mh_execute_header, oslog, v75, "Created %s new suggestions", v76, 0xCu);
        sub_100004168(v77);
        sub_10002AA28();

        sub_10002AA18();

        v82 = sub_10002B064();
        v83(v82);
      }

      else
      {

        v86 = sub_10002B064();
        v87(v86);
        v42 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v39 = sub_10002F5D4();
      sub_10002F2D4(v39, &_mh_execute_header, v4, "No media found on configuration", 31, 2, _swiftEmptyArrayStorage);

      v40 = sub_10002B064();
      v41(v40);

      v42 = *(v2 + 24);
    }

    sub_10002AC68();

    return v88(v42);
  }

  else
  {
    v35 = *(v2 + 72);
    v36 = *(v2 + 48);
    v37 = *(v2 + 56);
    v38 = v19;
    sub_100010CB8();
    sub_10002F0F4();

    swift_willThrow();
    (*(v37 + 8))(v35, v36);

    sub_100010C84();

    return v84();
  }
}

uint64_t sub_100020BC0(uint64_t a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a2;
  v5[5] = _Block_copy(aBlock);
  v5[6] = sub_1000042B4(0, &qword_10004A808, PRPosterDescriptor_ptr);
  v5[7] = sub_10002F4C4();
  v9 = a2;
  v10 = a3;
  a5;
  v11 = swift_task_alloc();
  v5[8] = v11;
  *v11 = v5;
  v11[1] = sub_100020CD0;

  return sub_10002008C();
}

uint64_t sub_100020CD0(objc_class *a1)
{
  v3 = v1;
  sub_10002AC5C();
  v6 = v5;
  sub_10002ABD4();
  *v7 = v6;
  v9 = v8[4];
  v10 = v8[3];
  v11 = v8[2];
  v12 = *v2;
  sub_100010AE8();
  *v13 = v12;

  if (v3)
  {
    sub_10002F0E4();
    sub_10002AE40();

    v14 = a1;
  }

  else
  {
    isa = sub_10002F4A4().super.isa;

    v14 = isa;
  }

  v16 = *(v6 + 40);
  v17 = sub_10002AECC();
  v18(v17);

  _Block_release(v16);
  sub_100010C84();

  return v19();
}

void sub_100020E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100010CCC();
  a19 = v20;
  a20 = v21;
  sub_10002B208(__stack_chk_guard);
  v146 = sub_10002F1B4();
  sub_100004368();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_10002AC04();
  v27 = (v26 - v25);

  v151 = sub_1000294B8(v28, sub_1000295B4);
  sub_100023A00(&v151);
  v29 = v151;
  v151 = _swiftEmptyArrayStorage;
  v149 = _swiftEmptyArrayStorage;
  v150 = _swiftEmptyArrayStorage;
  v147 = _swiftEmptyArrayStorage;
  v148 = _swiftEmptyArrayStorage;
  v30 = sub_1000126D0(v29);
  if (!v30)
  {

    v128 = _swiftEmptyArrayStorage;
    v125 = _swiftEmptyArrayStorage;
    v127 = _swiftEmptyArrayStorage;
    v126 = _swiftEmptyArrayStorage;
    v124 = _swiftEmptyArrayStorage;
    goto LABEL_72;
  }

  v31 = v30;
  v145 = objc_opt_self();
  if (v31 < 1)
  {
    __break(1u);
  }

  v33 = 0;
  v144 = v29 & 0xC000000000000001;
  v143 = (v23 + 8);
  v135 = PFParallaxStyleCategoryTrueColors;
  v130 = PFParallaxStyleCategoryBlackWhite;
  *&v32 = 136315394;
  v136 = v32;
  *&v32 = 136315138;
  v132 = v32;
  v131 = _swiftEmptyArrayStorage;
  v133 = _swiftEmptyArrayStorage;
  v134 = _swiftEmptyArrayStorage;
  v141 = _swiftEmptyArrayStorage;
  v140 = _swiftEmptyArrayStorage;
  v138 = v29;
  v139 = v31;
  v137 = v27;
  do
  {
    if (v144)
    {
      v34 = sub_10002F734();
    }

    else
    {
      v34 = *(v29 + 8 * v33 + 32);
    }

    v35 = v34;
    v36 = [v34 assetDirectory];
    sub_10002F164();

    sub_10002F134(v37);
    v39 = v38;
    (*v143)(v27, v146);
    v155[0] = 0;
    v40 = [v145 loadFromURL:v39 error:v155];

    if (v40)
    {
      v41 = v155[0];
      v42 = [v40 descriptorType];
      if (v42 != 1)
      {
        if (v42 == 3)
        {
          v43 = v35;
          sub_10002F494();
          sub_10002AB34();
          if (v45)
          {
            sub_10002AA48(v44);
            sub_10002F4E4();
          }

          sub_10002AD14();
          sub_10002F504();

          v46 = v151;
          v47 = &a13;
          goto LABEL_64;
        }

        v99 = v35;
        sub_10002F494();
        sub_10002AB34();
        if (v45)
        {
          sub_10002AA48(v100);
          sub_10002F4E4();
        }

        sub_10002AD14();
        sub_10002F504();

LABEL_48:
        v46 = v147;
        v47 = &a14;
LABEL_64:
        *(v47 - 32) = v46;
        goto LABEL_65;
      }

      v61 = [v40 styleCategory];
      if (v61)
      {
        v62 = v61;
        v142 = v35;
        v63 = sub_10002F404();
        v65 = v64;
        v66 = sub_10002F404();
        if (v63 == v66 && v65 == v67)
        {
        }

        else
        {
          v69 = sub_10002B134(v66);

          if ((v69 & 1) == 0)
          {
            v70 = sub_10002F404();
            v72 = v71;
            if (v70 != sub_10002F404() || v72 != v73)
            {
              sub_10002AD14();
              v75 = sub_10002F854();

              if (v75)
              {
                goto LABEL_61;
              }

              v76 = sub_10002F404();
              v78 = v77;
              if (v76 != sub_10002F404() || v78 != v79)
              {
                sub_10002AD14();
                v81 = sub_10002F854();

                if ((v81 & 1) == 0)
                {
                  v82 = sub_10002F404();
                  v84 = v83;
                  v85 = sub_10002F404();
                  if (v82 == v85 && v84 == v86)
                  {
                  }

                  else
                  {
                    v88 = sub_10002B134(v85);

                    if ((v88 & 1) == 0)
                    {
                      v89 = sub_10002F5D4();
                      if (qword_100049688 != -1)
                      {
                        sub_10002AA04();
                        swift_once();
                      }

                      v90 = qword_10004B590;
                      if (os_log_type_enabled(qword_10004B590, v89))
                      {
                        sub_10002AB74();
                        v91 = swift_slowAlloc();
                        sub_10002AB68();
                        v141 = swift_slowAlloc();
                        sub_10002B1E8(v141);
                        v92 = sub_10002F404();
                        v94 = sub_100022BB4(v92, v93, v155);

                        *(v91 + 4) = v94;
                        v31 = v139;
                        sub_10002B11C(&_mh_execute_header, v90, v89, "Unknown style category: %s", v130);
                        v95 = sub_10002AFBC(&a14);
                        sub_100004168(v95);
                        sub_10002AAB4();

                        sub_10002AA28();
                      }

                      sub_10002AE78();
                      v97 = v96;
                      sub_10002F494();
                      sub_10002AB34();
                      if (v45)
                      {
                        sub_10002AA48(v98);
                        sub_10002F4E4();
                      }

                      sub_10002AD14();
                      sub_10002F504();

                      goto LABEL_48;
                    }
                  }

                  sub_10002AE78();
                  v122 = v121;
                  sub_10002F494();
                  sub_10002AB34();
                  if (v45)
                  {
                    sub_10002AA48(v123);
                    sub_10002F4E4();
                  }

                  sub_10002AD14();
                  sub_10002F504();

                  v46 = v148;
                  v47 = &v152;
                  goto LABEL_64;
                }

LABEL_61:
                sub_10002AE78();
                v119 = v118;
                sub_10002F494();
                sub_10002AB34();
                if (v45)
                {
                  sub_10002AA48(v120);
                  sub_10002F4E4();
                }

                sub_10002AD14();
                sub_10002F504();

                v46 = v149;
                v47 = &v153;
                goto LABEL_64;
              }
            }

            goto LABEL_61;
          }
        }

        sub_10002AE78();
        v116 = v115;
        sub_10002F494();
        sub_10002AB34();
        if (v45)
        {
          sub_10002AA48(v117);
          sub_10002F4E4();
        }

        sub_10002AD14();
        sub_10002F504();

        v46 = v150;
        v47 = &v154;
        goto LABEL_64;
      }

      v101 = sub_10002F5D4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      v102 = qword_10004B590;
      v103 = sub_10002AE9C();
      if (os_log_type_enabled(v103, v104))
      {
        sub_10002AB74();
        v105 = swift_slowAlloc();
        v142 = v35;
        v106 = v105;
        sub_10002AB68();
        v107 = swift_slowAlloc();
        v108 = [v35 identifier];
        v109 = sub_10002F404();
        v110 = v101;
        v112 = v111;

        v113 = sub_100022BB4(v109, v112, v155);

        *(v106 + 4) = v113;
        v29 = v138;
        sub_10002B11C(&_mh_execute_header, v102, v110, "Featured photo descriptor '%s' is missing a style category", v130);
        sub_100004168(v107);
        v31 = v139;
        sub_10002AB08();

        sub_10002AA28();

        sub_10002AE78();
      }

      else
      {
      }
    }

    else
    {
      v48 = v155[0];
      sub_100010B50();
      sub_10002F0F4();

      swift_willThrow();
      v49 = sub_10002F5D4();
      if (qword_100049688 != -1)
      {
        sub_10002AA04();
        swift_once();
      }

      v50 = qword_10004B590;
      if (os_log_type_enabled(qword_10004B590, v49))
      {
        sub_10002AB80();
        v51 = swift_slowAlloc();
        sub_10002ABC8();
        v52 = swift_slowAlloc();
        v142 = v35;
        v155[0] = v52;
        *v51 = v136;
        v53 = [v35 identifier];
        v54 = sub_10002F404();
        v56 = v55;

        v57 = v54;
        v29 = v138;
        sub_100022BB4(v57, v56, v155);
        sub_10002B004();

        *(v51 + 4) = v53;
        *(v51 + 12) = 2080;
        swift_getErrorValue();
        v58 = sub_10002F884();
        sub_100022BB4(v58, v59, v155);
        sub_10002B254();

        *(v51 + 14) = v56;
        sub_10002B3A0();
        _os_log_impl(&_mh_execute_header, v50, v49, "Failed to load descriptor model '%s': %s", v51, 0x16u);
        swift_arrayDestroy();
        sub_10002AA28();

        v31 = v139;
        sub_10002AB08();

        sub_10002AE78();
      }

      else
      {
      }
    }

LABEL_65:
    ++v33;
  }

  while (v31 != v33);

  v124 = v140;
  v125 = v131;
  v126 = v134;
  v127 = v133;
  v128 = v141;
LABEL_72:
  sub_100004120(&qword_10004A7F8, &qword_1000356C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000351F0;
  *(inited + 32) = v124;
  *(inited + 40) = v126;
  *(inited + 48) = v127;
  *(inited + 56) = v125;
  sub_10002190C(inited);
  sub_100010D64();
  swift_setDeallocating();
  sub_1000228D4();
  v155[0] = v124;
  sub_1000133C0(v128);
  sub_100010CE4();
}

void *sub_10002190C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1000233E8(0, v2, 0);
    v3 = (a1 + 32);
    v4 = v2;
    do
    {
      if (*v3 >> 62)
      {
        v5 = sub_10002F7D4();
      }

      else
      {
        v5 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        sub_1000233E8((v6 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      _swiftEmptyArrayStorage[v7 + 4] = v5;
      ++v3;
      --v4;
    }

    while (v4);
  }

  v8 = sub_100021B74(_swiftEmptyArrayStorage);
  v10 = v9;

  if (v10)
  {
    return _swiftEmptyArrayStorage;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    if (v8)
    {
      v12 = 0;
      v13 = (a1 + 32);
      do
      {
        for (i = v12; ; ++i)
        {
          if (i >= v8)
          {
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v12 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_37;
          }

          if (v2)
          {
            break;
          }

          if (v12 == v8)
          {
            return _swiftEmptyArrayStorage;
          }
        }

        v18 = v13;
        v15 = v2;
        do
        {
          v16 = *v13;
          if (*v13 >> 62)
          {
            result = sub_10002F7D4();
          }

          else
          {
            result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (i < result)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {

              sub_10002F734();
            }

            else
            {
              if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_38;
              }

              v17 = *(v16 + 8 * i + 32);
            }

            sub_10002F494();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_10002F4E4();
            }

            result = sub_10002F504();
          }

          ++v13;
          --v15;
        }

        while (v15);
        v13 = v18;
      }

      while (v12 != v8);
    }

    return _swiftEmptyArrayStorage;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_100021B74(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

id sub_100021BB8(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20PhotosPosterProvider13PosterUpdater____lazy_storage___photoLibrary] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PosterUpdater();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_100021C1C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PosterUpdater();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100021CA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10002F3D4();
    sub_10002AE40();
  }

  else
  {
    v2 = 0;
  }

  v4 = [v3 initWithAssetUUID:v2];

  return v4;
}

id sub_100021D08(uint64_t a1)
{
  v2 = v1;
  sub_10002F134(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initWithContentsOfURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = sub_10002F1B4();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    sub_10002F0F4();

    swift_willThrow();
    v12 = sub_10002F1B4();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

id sub_100021E54(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v5 = sub_10002F3D4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithKey:v5 ascending:a3 & 1];

  return v6;
}

void sub_100021EC0()
{
  sub_100010CCC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11.super.isa = sub_10002F4A4().super.isa;

  if (v8)
  {
    v12 = sub_10002F3D4();

    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13.super.isa = 0;
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v12 = 0;
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13.super.isa = sub_10002F574().super.isa;

  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v14 = sub_10002F3D4();

LABEL_8:
  [v0 initWithObjects:v11.super.isa photoLibrary:v10 fetchType:v12 fetchPropertySets:v13.super.isa identifier:v14 registerIfNeeded:v2 & 1];

  sub_100010CE4();
}

id sub_100021FE4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_10002F1B4();
  v12 = 0;
  if (sub_1000103D4(a3, 1, v10) != 1)
  {
    sub_10002F134(v11);
    v12 = v13;
    (*(*(v10 - 8) + 8))(a3, v10);
  }

  v14 = [v5 initWithPhotoLibrary:a1 sourceConfiguration:a2 targetAssetDirectory:v12 overrideConfiguration:a4];

  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_1000220CC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10002A9F0;

  return v6();
}

uint64_t sub_1000221B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10002229C;

  return v7();
}

uint64_t sub_10002229C()
{
  sub_100010F34();
  sub_10002AC5C();
  v1 = *v0;
  sub_100010AE8();
  *v2 = v1;

  sub_100010C84();

  return v3();
}

uint64_t sub_10002237C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100004120(&unk_10004A9F0, &qword_1000357C0);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_10002A47C(a3, v22 - v10, &unk_10004A9F0, &qword_1000357C0);
  v12 = sub_10002F564();
  if (sub_1000103D4(v11, 1, v12) == 1)
  {
    sub_100010800(v11, &unk_10004A9F0, &qword_1000357C0);
  }

  else
  {
    sub_10002F554();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_10002F514();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_10002F434() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_100010800(a3, &unk_10004A9F0, &qword_1000357C0);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100010800(a3, &unk_10004A9F0, &qword_1000357C0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_100022658(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100022750;

  return v6(a1);
}

uint64_t sub_100022750()
{
  sub_100010F34();
  sub_10002AC5C();
  v1 = *v0;
  sub_100010AE8();
  *v2 = v1;

  sub_100010C84();

  return v3();
}

uint64_t sub_100022834(uint64_t result, unint64_t *a2, void *a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      sub_1000042B4(0, a2, a3);
      sub_100010C70();
      result = sub_10002F4F4();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v3;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t sub_10002288C()
{
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000228D4()
{
  sub_100004120(&qword_10004A810, &qword_1000356D8);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

char *sub_100022934(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004120(&qword_10004A828, &qword_1000356F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_100022A34(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100004120(&qword_10004A968, &qword_100035768);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

void *sub_100022AB8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100004120(&qword_10004A650, qword_1000355D8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_100022B38(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100004120(&qword_10004A838, qword_1000356F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

uint64_t sub_100022BB4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_10002AE84();
  v9 = sub_100022C74(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_100029554(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_100004168(v14);
  return v10;
}

unint64_t sub_100022C74(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100022D74(a5, a6);
    *a1 = v9;
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
    result = sub_10002F754();
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

void *sub_100022D74(uint64_t a1, unint64_t a2)
{
  v3 = sub_100022DC0(a1, a2);
  sub_100022ED8(&off_100040ED8);
  return v3;
}

void *sub_100022DC0(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_10002F474())
  {
    result = sub_100022FBC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_10002F704();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_10002F754();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100022ED8(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_10002302C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100022FBC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100004120(&qword_10004A800, &qword_1000356D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_10002302C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004120(&qword_10004A800, &qword_1000356D0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_100023130(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_100023154(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002F6A4(*(v2 + 40));

  return sub_100023210(a1, v4);
}

unint64_t sub_100023198(uint64_t a1, uint64_t a2)
{
  sub_10002F8D4();
  sub_10002F444();
  v4 = sub_10002F8F4();

  return sub_1000232D4(a1, a2, v4);
}

unint64_t sub_100023210(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_10002A054(*(v2 + 48) + 40 * i, v7);
    v5 = sub_10002F6B4();
    sub_10001072C(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000232D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_10002F854() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

char *sub_100023388(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100023408(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000233A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100023514(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000233C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002377C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000233E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100023884(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100023408(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004120(&qword_10004A948, &qword_100035750);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100023514(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004120(&qword_10004A958, &qword_100035758);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004120(&qword_10004A960, &qword_100035760);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100023644(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004120(&qword_10004A968, &qword_100035768);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004120(&qword_10004A970, &unk_100035770);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10002377C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004120(&qword_10004A838, qword_1000356F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100023884(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004120(&qword_10004A820, &unk_1000356E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_100023984(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100029DD8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100023CC0(v6);
  return sub_10002F774();
}

uint64_t sub_100023A00(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100029DD8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100023DB0(v6);
  return sub_10002F774();
}

uint64_t sub_100023A7C(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

void *sub_100023B00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_100022A34(*(a1 + 16), 0);
  v4 = sub_1000299A0(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_100029F34(v5);
  if (v4 != v1)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

Swift::Int sub_100023BBC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_10002F814(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100004120(&qword_10004A970, &unk_100035770);
        v6 = sub_10002F4F4();
        v6[2] = v5;
      }

      v7[0] = v6 + 4;
      v7[1] = v5;
      sub_100024504(v7, v8, a1, v4);
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
    return sub_100023F94(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_100023CC0(uint64_t *a1)
{
  v3 = a1[1];
  result = sub_10002F814(v3);
  if (result < v3)
  {
    v5 = result;
    v6 = sub_100022834(v3 / 2, &qword_10004A930, PHAsset_ptr);
    v8[0] = v7;
    v8[1] = v3 / 2;
    result = sub_100024E04(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    return sub_10002416C(0, v3, 1, a1);
  }

  return result;
}

void sub_100023DB0(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_10002F814(v3);
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_100022834(v3 / 2, &qword_10004A808, PRPosterDescriptor_ptr);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1000255C0(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1000242C4(0, v3, 1, a1);
  }
}

Swift::Int sub_100023EA0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10002F814(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = sub_10002F4F4();
        v6[2] = v5;
      }

      v7[0] = v6 + 4;
      v7[1] = v5;
      sub_100025D88(v7, v8, a1, v4);
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
    return sub_10002443C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100023F94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return result;
  }

  v32 = *a4;
  v4 = (*a4 + 24 * a3);
  v5 = result - a3;
  while (2)
  {
    v25 = v4;
    v26 = a3;
    v6 = (v32 + 24 * a3);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v24 = v5;
    do
    {
      v10 = *(v4 - 3);
      v11 = *(v4 - 2);
      v12 = *(v4 - 1);
      if (v9 >> 62)
      {
        v19 = v7;
        v20 = *(v4 - 3);
        v30 = *(v4 - 2);
        v21 = sub_10002F7D4();
        v11 = v30;
        v10 = v20;
        v7 = v19;
        v13 = v21;
      }

      else
      {
        v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = v12 >> 62;
      if (v12 >> 62)
      {
        v22 = v7;
        v28 = v10;
        v31 = v11;
        result = sub_10002F7D4();
        v10 = v28;
        v11 = v31;
        v7 = v22;
      }

      else
      {
        result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v13 >= result)
      {
        goto LABEL_20;
      }

      v27 = v10;
      v29 = v11;
      if (v9 >> 62)
      {
        v15 = v7;
        v16 = sub_10002F7D4();
        if (!v14)
        {
LABEL_13:
          result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_14;
        }
      }

      else
      {
        v15 = v7;
        v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v14)
        {
          goto LABEL_13;
        }
      }

      result = sub_10002F7D4();
LABEL_14:
      if (v16 != result)
      {
        break;
      }

      if (v15 != v27 || v8 != v29)
      {
        result = sub_10002F854();
        if (result)
        {
          break;
        }
      }

LABEL_20:
      if (!v32)
      {
        __break(1u);
        return result;
      }

      v7 = *v4;
      v8 = v4[1];
      v9 = v4[2];
      *v4 = *(v4 - 3);
      v4[2] = *(v4 - 1);
      *(v4 - 2) = v8;
      *(v4 - 1) = v9;
      *(v4 - 3) = v7;
      v4 -= 3;
    }

    while (!__CFADD__(v5++, 1));
    a3 = v26 + 1;
    v4 = v25 + 3;
    v5 = v24 - 1;
    if (v26 + 1 != a2)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_10002416C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v22 = a3;
      v7 = *(v4 + 8 * a3);
      v20 = v6;
      v21 = v5;
      while (1)
      {
        v8 = *v5;
        v9 = v7;
        v10 = v8;
        result = sub_1000292C8(v9, &selRef_uuid);
        if (!v11)
        {
          goto LABEL_19;
        }

        v12 = result;
        v13 = v11;
        result = sub_1000292C8(v10, &selRef_uuid);
        if (!v14)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          return result;
        }

        if (v12 == result && v13 == v14)
        {
          break;
        }

        v16 = sub_10002F854();

        if ((v16 & 1) == 0)
        {
          goto LABEL_16;
        }

        if (!v4)
        {
          goto LABEL_20;
        }

        v17 = *v5;
        v7 = *(v5 + 8);
        *v5 = v7;
        *(v5 + 8) = v17;
        v5 -= 8;
        if (__CFADD__(v6++, 1))
        {
          goto LABEL_16;
        }
      }

LABEL_16:
      a3 = v22 + 1;
      v5 = v21 + 8;
      v6 = v20 - 1;
      if (v22 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1000242C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    while (2)
    {
      v24 = v4;
      v25 = a3;
      v6 = *(v26 + 8 * a3);
      v23 = v5;
      while (1)
      {
        v7 = *v4;
        v8 = v6;
        v9 = v7;
        v10 = [v8 identifier];
        v11 = sub_10002F404();
        v13 = v12;

        v14 = [v9 identifier];
        v15 = sub_10002F404();
        v17 = v16;

        if (v11 == v15 && v13 == v17)
        {
          break;
        }

        v19 = sub_10002F854();

        if (v19)
        {
          if (!v26)
          {
            __break(1u);
            return result;
          }

          v20 = *v4;
          v6 = *(v4 + 8);
          *v4 = v6;
          *(v4 + 8) = v20;
          v4 -= 8;
          if (!__CFADD__(v5++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

LABEL_14:
      a3 = v25 + 1;
      v4 = v24 + 8;
      v5 = v23 - 1;
      if (v25 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_10002443C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_10002F854();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_100024504(uint64_t result, uint64_t a2, char **a3, uint64_t a4)
{
  v123 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_140:
    v147 = *v123;
    if (!*v123)
    {
      goto LABEL_181;
    }

    v4 = v7;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_175;
    }

    goto LABEL_142;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (2)
  {
    v8 = v6;
    v9 = v6 + 1;
    v124 = v6;
    if (v6 + 1 >= v5)
    {
      goto LABEL_54;
    }

    v126 = v5;
    v4 = *a3;
    v10 = v6 + 1;
    v11 = &(*a3)[24 * v9];
    v12 = *v11;
    v147 = *(v11 + 1);
    v13 = *(v11 + 2);
    v14 = &(*a3)[24 * v8];
    v16 = *v14;
    v15 = *(v14 + 1);
    v17 = *(v14 + 2);
    v18 = sub_1000126D0(v13);
    result = sub_1000126D0(v17);
    v121 = v7;
    if (v18 >= result)
    {
      LODWORD(v147) = 1;
    }

    else
    {
      v19 = sub_1000126D0(v13);
      result = sub_1000126D0(v17);
      if (v19 == result)
      {
        v20 = v12 == v16 && v147 == v15;
        v21 = v10;
        if (v20)
        {
          v22 = 1;
        }

        else
        {
          result = sub_10002F854();
          v22 = result ^ 1;
        }

        LODWORD(v147) = v22;
        goto LABEL_16;
      }

      LODWORD(v147) = 0;
    }

    v21 = v10;
LABEL_16:
    v23 = v126;
    v24 = 0;
    v25 = 24 * v124;
    v26 = (v4 + 24 * v124 + 32);
    while (1)
    {
      v27 = (v21 + 1);
      if (v21 + 1 >= v23)
      {
        break;
      }

      v133 = v21;
      v28 = v26[3];
      v29 = v26[4];
      v30 = *(v26 - 1);
      v31 = *v26;
      v33 = v26[1];
      v32 = v26[2];
      if (v29 >> 62)
      {
        v38 = v26[3];
        v142 = *(v26 - 1);
        v39 = *v26;
        v137 = v26[2];
        v40 = sub_10002F7D4();
        v32 = v137;
        v31 = v39;
        v30 = v142;
        v28 = v38;
        v23 = v126;
        v34 = v40;
      }

      else
      {
        v34 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v4 = v33 >> 62;
      if (v33 >> 62)
      {
        v118 = v28;
        v143 = v30;
        v129 = v31;
        v138 = v32;
        result = sub_10002F7D4();
        v32 = v138;
        v23 = v126;
        v31 = v129;
        v30 = v143;
        v28 = v118;
      }

      else
      {
        result = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v34 >= result)
      {
        v21 = v133;
        goto LABEL_27;
      }

      v141 = v30;
      v128 = v31;
      v136 = v32;
      if (v29 >> 62)
      {
        v35 = v28;
        v36 = sub_10002F7D4();
        if (!v4)
        {
LABEL_30:
          result = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_31;
        }
      }

      else
      {
        v35 = v28;
        v36 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          goto LABEL_30;
        }
      }

      result = sub_10002F7D4();
LABEL_31:
      v23 = v126;
      v20 = v36 == result;
      v21 = v133;
      if (!v20)
      {
        if (v147)
        {
          goto LABEL_44;
        }

        goto LABEL_40;
      }

      if (v136 != v141 || v35 != v128)
      {
        result = sub_10002F854();
        v23 = v126;
        if (((v147 ^ result) & 1) == 0)
        {
          break;
        }

        goto LABEL_40;
      }

LABEL_27:
      if ((v147 & 1) == 0)
      {
        v9 = v21 + 1;
        goto LABEL_53;
      }

LABEL_40:
      v26 += 3;
      ++v21;
      ++v24;
      v25 += 24;
    }

    if (v147)
    {
LABEL_44:
      v8 = v124;
      if (v21 + 1 >= v124)
      {
        if (v124 <= v21)
        {
          v41 = 0;
          v42 = 24 * v124;
          do
          {
            if (v124 + v41 != v124 + v24 + 1)
            {
              v43 = *a3;
              if (!*a3)
              {
                goto LABEL_179;
              }

              v44 = v43 + v42;
              v45 = v43 + v25;
              v46 = *v44;
              v47 = *(v44 + 8);
              v48 = *(v45 + 24);
              *(v44 + 16) = *(v45 + 40);
              *v44 = v48;
              *(v45 + 24) = v46;
              *(v45 + 32) = v47;
            }

            --v24;
            ++v41;
            v25 -= 24;
            v42 += 24;
          }

          while (v41 + v124 < v124 + v24 + 2);
        }

        v9 = v21 + 1;
        v7 = v121;
        goto LABEL_54;
      }

LABEL_174:
      __break(1u);
LABEL_175:
      result = sub_10002703C(v4);
      v4 = result;
LABEL_142:
      v112 = (v4 + 16);
      for (i = *(v4 + 16); i >= 2; *v112 = i)
      {
        if (!*a3)
        {
          goto LABEL_178;
        }

        v113 = (v4 + 16 * i);
        v114 = *v113;
        v115 = &v112[2 * i];
        v116 = v115[1];
        sub_1000263BC(&(*a3)[24 * *v113], &(*a3)[24 * *v115], &(*a3)[24 * v116], v147);
        if (v132)
        {
          break;
        }

        if (v116 < v114)
        {
          goto LABEL_166;
        }

        if (i - 2 >= *v112)
        {
          goto LABEL_167;
        }

        *v113 = v114;
        v113[1] = v116;
        v117 = *v112 - i;
        if (*v112 < i)
        {
          goto LABEL_168;
        }

        v132 = 0;
        i = *v112 - 1;
        result = memmove(v115, v115 + 2, 16 * v117);
      }
    }

    v9 = v27;
LABEL_53:
    v7 = v121;
    v8 = v124;
LABEL_54:
    v49 = a3[1];
    if (v9 >= v49)
    {
      goto LABEL_88;
    }

    if (__OFSUB__(v9, v8))
    {
      goto LABEL_171;
    }

    if (v9 - v8 >= a4)
    {
LABEL_88:
      if (v9 < v8)
      {
        goto LABEL_170;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v135 = v9;
      if ((result & 1) == 0)
      {
        result = sub_100022934(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v70 = *(v7 + 2);
      v69 = *(v7 + 3);
      v71 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        result = sub_100022934((v69 > 1), v70 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v71;
      v72 = v7 + 32;
      v73 = &v7[16 * v70 + 32];
      *v73 = v124;
      *(v73 + 1) = v9;
      v147 = *v123;
      if (!*v123)
      {
        goto LABEL_180;
      }

      if (!v70)
      {
LABEL_137:
        v5 = a3[1];
        v6 = v135;
        if (v135 >= v5)
        {
          goto LABEL_140;
        }

        continue;
      }

      while (1)
      {
        v74 = v71 - 1;
        v75 = &v72[2 * v71 - 2];
        v76 = &v7[16 * v71];
        if (v71 >= 4)
        {
          break;
        }

        if (v71 == 3)
        {
          v77 = *(v7 + 4);
          v78 = *(v7 + 5);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_108:
          if (v80)
          {
            goto LABEL_157;
          }

          v92 = *v76;
          v91 = *(v76 + 1);
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_160;
          }

          v96 = v75[1];
          v97 = v96 - *v75;
          if (__OFSUB__(v96, *v75))
          {
            goto LABEL_163;
          }

          if (__OFADD__(v94, v97))
          {
            goto LABEL_165;
          }

          if (v94 + v97 >= v79)
          {
            if (v79 < v97)
            {
              v74 = v71 - 2;
            }

            goto LABEL_130;
          }

          goto LABEL_123;
        }

        if (v71 < 2)
        {
          goto LABEL_159;
        }

        v99 = *v76;
        v98 = *(v76 + 1);
        v87 = __OFSUB__(v98, v99);
        v94 = v98 - v99;
        v95 = v87;
LABEL_123:
        if (v95)
        {
          goto LABEL_162;
        }

        v101 = *v75;
        v100 = v75[1];
        v87 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v87)
        {
          goto LABEL_164;
        }

        if (v102 < v94)
        {
          goto LABEL_137;
        }

LABEL_130:
        if (v74 - 1 >= v71)
        {
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        if (!*a3)
        {
          goto LABEL_177;
        }

        v4 = v7;
        v106 = &v72[2 * v74 - 2];
        v107 = *v106;
        v108 = &v72[2 * v74];
        v109 = v108[1];
        sub_1000263BC(&(*a3)[24 * *v106], &(*a3)[24 * *v108], &(*a3)[24 * v109], v147);
        if (v132)
        {
        }

        if (v109 < v107)
        {
          goto LABEL_152;
        }

        v110 = *(v4 + 16);
        if (v74 > v110)
        {
          goto LABEL_153;
        }

        *v106 = v107;
        v106[1] = v109;
        if (v74 >= v110)
        {
          goto LABEL_154;
        }

        v132 = 0;
        v71 = v110 - 1;
        result = memmove(&v72[2 * v74], v108 + 2, 16 * (v110 - 1 - v74));
        v7 = v4;
        *(v4 + 16) = v110 - 1;
        if (v110 <= 2)
        {
          goto LABEL_137;
        }
      }

      v81 = &v72[2 * v71];
      v82 = *(v81 - 8);
      v83 = *(v81 - 7);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_155;
      }

      v86 = *(v81 - 6);
      v85 = *(v81 - 5);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_156;
      }

      v88 = *(v76 + 1);
      v89 = v88 - *v76;
      if (__OFSUB__(v88, *v76))
      {
        goto LABEL_158;
      }

      v87 = __OFADD__(v79, v89);
      v90 = v79 + v89;
      if (v87)
      {
        goto LABEL_161;
      }

      if (v90 >= v84)
      {
        v104 = *v75;
        v103 = v75[1];
        v87 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v87)
        {
          goto LABEL_169;
        }

        if (v79 < v105)
        {
          v74 = v71 - 2;
        }

        goto LABEL_130;
      }

      goto LABEL_108;
    }

    break;
  }

  v50 = (v8 + a4);
  if (__OFADD__(v8, a4))
  {
    goto LABEL_172;
  }

  if (v50 >= v49)
  {
    v50 = a3[1];
  }

  if (v50 < v8)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  if (v9 == v50)
  {
    goto LABEL_88;
  }

  v122 = v7;
  v147 = *a3;
  v51 = &(*a3)[24 * v9];
  v52 = v8 - v9;
  v125 = v50;
  while (2)
  {
    v134 = v9;
    v53 = &v147[24 * v9];
    v54 = *v53;
    v55 = *(v53 + 1);
    v56 = *(v53 + 2);
    v127 = v52;
    v130 = v51;
LABEL_64:
    v57 = *(v51 - 3);
    v58 = *(v51 - 2);
    v4 = (v51 - 24);
    v59 = *(v51 - 1);
    if (v56 >> 62)
    {
      v66 = v54;
      v67 = *(v51 - 3);
      v145 = *(v51 - 2);
      v68 = sub_10002F7D4();
      v58 = v145;
      v57 = v67;
      v54 = v66;
      v60 = v68;
    }

    else
    {
      v60 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v61 = v59 >> 62;
    if (v59 >> 62)
    {
      v119 = v54;
      v140 = v57;
      v146 = v58;
      result = sub_10002F7D4();
      v58 = v146;
      v57 = v140;
      v54 = v119;
    }

    else
    {
      result = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v60 < result)
    {
      v139 = v57;
      v144 = v58;
      if (v56 >> 62)
      {
        v62 = v54;
        v63 = sub_10002F7D4();
        if (!v61)
        {
          goto LABEL_73;
        }

LABEL_71:
        result = sub_10002F7D4();
      }

      else
      {
        v62 = v54;
        v63 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v61)
        {
          goto LABEL_71;
        }

LABEL_73:
        result = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v63 != result || (v62 == v139 ? (v64 = v55 == v144) : (v64 = 0), !v64 && (result = sub_10002F854(), (result & 1) != 0)))
      {
LABEL_86:
        v9 = v134 + 1;
        v51 = v130 + 24;
        v52 = v127 - 1;
        if ((v134 + 1) == v125)
        {
          v9 = v125;
          v7 = v122;
          v8 = v124;
          goto LABEL_88;
        }

        continue;
      }
    }

    break;
  }

  if (v147)
  {
    v54 = *v51;
    v55 = *(v51 + 1);
    v56 = *(v51 + 2);
    *v51 = *v4;
    *(v51 + 2) = *(v51 - 1);
    *(v51 - 2) = v55;
    *(v51 - 1) = v56;
    *(v51 - 3) = v54;
    v51 -= 24;
    if (__CFADD__(v52++, 1))
    {
      goto LABEL_86;
    }

    goto LABEL_64;
  }

  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
  return result;
}

uint64_t sub_100024E04(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v106 = result;
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    while (1)
    {
      v10 = v8++;
      if (v8 < v7)
      {
        v111 = v7;
        v102 = v6;
        v11 = *a3;
        v12 = *(*a3 + 8 * v10);
        v13 = *(*a3 + 8 * v8);
        v6 = v12;
        result = sub_1000292C8(v13, &selRef_uuid);
        if (!v14)
        {
          goto LABEL_158;
        }

        v15 = result;
        v16 = v14;
        result = sub_1000292C8(v6, &selRef_uuid);
        if (!v17)
        {
          goto LABEL_159;
        }

        v18 = v15 == result && v16 == v17;
        v115 = v9;
        if (v18)
        {
          v109 = 0;
        }

        else
        {
          v109 = sub_10002F854();
        }

        v4 = v111;

        v104 = v10;
        v9 = v11 + 8 * v10 + 16;
        v107 = 8 * v10;
        for (i = 8 * v10 + 8; ; i += 8)
        {
          v20 = v8++;
          if (v8 >= v4)
          {
            break;
          }

          v21 = *(v9 - 8);
          v22 = *v9;
          v23 = v21;
          result = sub_1000292C8(v22, &selRef_uuid);
          if (!v24)
          {
            goto LABEL_153;
          }

          v25 = result;
          v6 = v24;
          result = sub_1000292C8(v23, &selRef_uuid);
          if (!v26)
          {
            goto LABEL_152;
          }

          if (v25 == result && v6 == v26)
          {

            v4 = v111;
            if (v109)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v28 = sub_10002F854();

            v29 = v109 ^ v28;
            v4 = v111;
            if (v29)
            {
              break;
            }
          }

          v9 += 8;
        }

        if ((v109 & 1) == 0)
        {
          v6 = v102;
          v10 = v104;
LABEL_35:
          v9 = v115;
          goto LABEL_36;
        }

LABEL_25:
        v30 = v20;
        v8 = v20 + 1;
        v10 = v104;
        if (v8 < v104)
        {
          goto LABEL_145;
        }

        if (v104 >= v8)
        {
          v6 = v102;
          goto LABEL_35;
        }

        v31 = v104;
        v6 = v102;
        v9 = v115;
        v32 = v107;
        do
        {
          if (v31 != v30)
          {
            v33 = *a3;
            if (!*a3)
            {
              goto LABEL_156;
            }

            v34 = *(v33 + v32);
            *(v33 + v32) = *(v33 + i);
            *(v33 + i) = v34;
          }

          ++v31;
          i -= 8;
          v32 += 8;
          v35 = v31 < v30--;
        }

        while (v35);
      }

LABEL_36:
      v36 = a3[1];
      if (v8 < v36)
      {
        if (__OFSUB__(v8, v10))
        {
          goto LABEL_144;
        }

        if (v8 - v10 < a4)
        {
          v37 = v10 + a4;
          if (__OFADD__(v10, a4))
          {
            goto LABEL_146;
          }

          if (v37 >= v36)
          {
            v37 = a3[1];
          }

          if (v37 >= v10)
          {
            if (v8 == v37)
            {
              goto LABEL_60;
            }

            v116 = v9;
            v103 = v6;
            v105 = v10;
            v38 = *a3;
            v39 = *a3 + 8 * v8 - 8;
            v40 = v10 - v8;
            v108 = v37;
LABEL_45:
            v110 = v39;
            v112 = v8;
            v41 = *(v38 + 8 * v8);
            v42 = v40;
            while (1)
            {
              v43 = *v39;
              v44 = v41;
              v45 = v43;
              result = sub_1000292C8(v44, &selRef_uuid);
              if (!v46)
              {
                goto LABEL_150;
              }

              v4 = result;
              v47 = v46;
              result = sub_1000292C8(v45, &selRef_uuid);
              if (!v48)
              {
                break;
              }

              if (v4 == result && v47 == v48)
              {

LABEL_58:
                v8 = (v112 + 1);
                v39 = v110 + 8;
                --v40;
                if (v112 + 1 == v108)
                {
                  v8 = v108;
                  v6 = v103;
                  v10 = v105;
                  v9 = v116;
                  goto LABEL_60;
                }

                goto LABEL_45;
              }

              v4 = sub_10002F854();

              if ((v4 & 1) == 0)
              {
                goto LABEL_58;
              }

              if (!v38)
              {
                goto LABEL_151;
              }

              v50 = *v39;
              v41 = *(v39 + 8);
              *v39 = v41;
              *(v39 + 8) = v50;
              v39 -= 8;
              if (__CFADD__(v42++, 1))
              {
                goto LABEL_58;
              }
            }

            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
            goto LABEL_160;
          }

LABEL_147:
          __break(1u);
LABEL_148:
          result = sub_10002703C(v9);
          v9 = result;
          goto LABEL_115;
        }
      }

LABEL_60:
      if (v8 < v10)
      {
        goto LABEL_143;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100022934(0, *(v9 + 16) + 1, 1, v9);
        v9 = result;
      }

      v53 = *(v9 + 16);
      v52 = *(v9 + 24);
      v54 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        result = sub_100022934((v52 > 1), v53 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 16) = v54;
      v55 = v9 + 32;
      v56 = (v9 + 32 + 16 * v53);
      *v56 = v10;
      v56[1] = v8;
      v113 = *v106;
      if (!*v106)
      {
        goto LABEL_157;
      }

      if (v53)
      {
        v117 = v9;
        while (1)
        {
          v57 = v54 - 1;
          v58 = (v55 + 16 * (v54 - 1));
          v59 = (v9 + 16 * v54);
          if (v54 >= 4)
          {
            break;
          }

          if (v54 == 3)
          {
            v60 = *(v9 + 32);
            v61 = *(v9 + 40);
            v70 = __OFSUB__(v61, v60);
            v62 = v61 - v60;
            v63 = v70;
LABEL_81:
            if (v63)
            {
              goto LABEL_130;
            }

            v75 = *v59;
            v74 = v59[1];
            v76 = __OFSUB__(v74, v75);
            v77 = v74 - v75;
            v78 = v76;
            if (v76)
            {
              goto LABEL_133;
            }

            v79 = v58[1];
            v80 = v79 - *v58;
            if (__OFSUB__(v79, *v58))
            {
              goto LABEL_136;
            }

            if (__OFADD__(v77, v80))
            {
              goto LABEL_138;
            }

            if (v77 + v80 >= v62)
            {
              if (v62 < v80)
              {
                v57 = v54 - 2;
              }

              goto LABEL_103;
            }

            goto LABEL_96;
          }

          if (v54 < 2)
          {
            goto LABEL_132;
          }

          v82 = *v59;
          v81 = v59[1];
          v70 = __OFSUB__(v81, v82);
          v77 = v81 - v82;
          v78 = v70;
LABEL_96:
          if (v78)
          {
            goto LABEL_135;
          }

          v84 = *v58;
          v83 = v58[1];
          v70 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v70)
          {
            goto LABEL_137;
          }

          if (v85 < v77)
          {
            goto LABEL_110;
          }

LABEL_103:
          if (v57 - 1 >= v54)
          {
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
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
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
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

          if (!*a3)
          {
            goto LABEL_154;
          }

          v89 = v8;
          v90 = (v55 + 16 * (v57 - 1));
          v91 = *v90;
          v4 = v55;
          v92 = v57;
          v93 = (v55 + 16 * v57);
          v9 = v93[1];
          sub_1000267F4((*a3 + 8 * *v90), (*a3 + 8 * *v93), (*a3 + 8 * v9), v113);
          if (v6)
          {
          }

          if (v9 < v91)
          {
            goto LABEL_125;
          }

          v6 = *(v117 + 16);
          if (v92 > v6)
          {
            goto LABEL_126;
          }

          *v90 = v91;
          v90[1] = v9;
          if (v92 >= v6)
          {
            goto LABEL_127;
          }

          v94 = v92;
          v54 = (v6 - 1);
          result = memmove(v93, v93 + 2, 16 * &v6[-v94 - 1]);
          v9 = v117;
          *(v117 + 16) = v6 - 1;
          v35 = v6 > 2;
          v6 = 0;
          v8 = v89;
          v55 = v4;
          if (!v35)
          {
            goto LABEL_110;
          }
        }

        v64 = v55 + 16 * v54;
        v65 = *(v64 - 64);
        v66 = *(v64 - 56);
        v70 = __OFSUB__(v66, v65);
        v67 = v66 - v65;
        if (v70)
        {
          goto LABEL_128;
        }

        v69 = *(v64 - 48);
        v68 = *(v64 - 40);
        v70 = __OFSUB__(v68, v69);
        v62 = v68 - v69;
        v63 = v70;
        if (v70)
        {
          goto LABEL_129;
        }

        v71 = v59[1];
        v72 = v71 - *v59;
        if (__OFSUB__(v71, *v59))
        {
          goto LABEL_131;
        }

        v70 = __OFADD__(v62, v72);
        v73 = v62 + v72;
        if (v70)
        {
          goto LABEL_134;
        }

        if (v73 >= v67)
        {
          v87 = *v58;
          v86 = v58[1];
          v70 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v70)
          {
            goto LABEL_142;
          }

          if (v62 < v88)
          {
            v57 = v54 - 2;
          }

          goto LABEL_103;
        }

        goto LABEL_81;
      }

LABEL_110:
      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_113;
      }
    }
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_113:
  v4 = *v106;
  if (!*v106)
  {
LABEL_160:
    __break(1u);
    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_148;
  }

LABEL_115:
  v95 = (v9 + 16);
  v96 = *(v9 + 16);
  for (j = v9; v96 >= 2; v9 = j)
  {
    if (!*a3)
    {
      goto LABEL_155;
    }

    v9 += 16 * v96;
    v97 = *v9;
    v98 = &v95[2 * v96];
    v99 = v98[1];
    sub_1000267F4((*a3 + 8 * *v9), (*a3 + 8 * *v98), (*a3 + 8 * v99), v4);
    if (v6)
    {
      break;
    }

    if (v99 < v97)
    {
      goto LABEL_139;
    }

    if (v96 - 2 >= *v95)
    {
      goto LABEL_140;
    }

    *v9 = v97;
    *(v9 + 8) = v99;
    v100 = *v95 - v96;
    if (*v95 < v96)
    {
      goto LABEL_141;
    }

    v96 = *v95 - 1;
    result = memmove(v98, v98 + 2, 16 * v100);
    *v95 = v96;
  }
}

void sub_1000255C0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_106:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v122 = v6;
      v102 = *(v6 + 2);
      v6 += 16;
      for (i = v102; i >= 2; *v6 = i)
      {
        if (!*a3)
        {
          goto LABEL_144;
        }

        v103 = &v122[16 * i];
        v104 = *v103;
        v105 = &v6[16 * i];
        v106 = *(v105 + 1);
        sub_100026B50((*a3 + 8 * *v103), (*a3 + 8 * *v105), (*a3 + 8 * v106), v7);
        if (v118)
        {
          break;
        }

        if (v106 < v104)
        {
          goto LABEL_132;
        }

        if (i - 2 >= *v6)
        {
          goto LABEL_133;
        }

        *v103 = v104;
        *(v103 + 1) = v106;
        v107 = *v6 - i;
        if (*v6 < i)
        {
          goto LABEL_134;
        }

        v118 = 0;
        i = *v6 - 1;
        memmove(v105, v105 + 16, 16 * v107);
      }

LABEL_116:

      return;
    }

LABEL_141:
    v6 = sub_10002703C(v6);
    goto LABEL_108;
  }

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 < v4)
    {
      v113 = v4;
      v119 = v6;
      v9 = *a3;
      v110 = v5;
      v10 = *(*a3 + 8 * v5);
      v11 = *(*a3 + 8 * v8);
      v12 = v10;
      v13 = [v11 identifier];
      v14 = sub_10002F404();
      v16 = v15;

      v17 = [v12 identifier];
      v18 = sub_10002F404();
      v7 = v19;

      if (v14 == v18 && v16 == v7)
      {
        v115 = 0;
      }

      else
      {
        v115 = sub_10002F854();
      }

      v21 = (v9 + 8 * v110 + 16);
      v22 = 8 * v110 + 8;
      do
      {
        v23 = v8;
        v6 = v22;
        if (++v8 >= v113)
        {
          break;
        }

        v123 = v8;
        v24 = *(v21 - 1);
        v25 = *v21;
        v26 = v24;
        v126 = v25;
        v27 = [v25 identifier];
        v28 = sub_10002F404();
        v30 = v29;

        v31 = [v26 identifier];
        sub_10002F404();
        sub_10002B340();

        v32 = v28 == v27 && v30 == v14;
        v7 = v32 ? 0 : sub_10002F854();

        ++v21;
        v22 = (v6 + 8);
        v8 = v123;
      }

      while (((v115 ^ v7) & 1) == 0);
      if (v115)
      {
        v33 = v110;
        if (v8 < v110)
        {
          goto LABEL_138;
        }

        if (v110 >= v8)
        {
          v6 = v119;
          v7 = v110;
          goto LABEL_29;
        }

        v34 = 8 * v110;
        do
        {
          if (v33 != v23)
          {
            v35 = *a3;
            if (!*a3)
            {
              goto LABEL_145;
            }

            v36 = *(v35 + v34);
            *(v35 + v34) = *&v6[v35];
            *&v6[v35] = v36;
          }

          v33 = (v33 + 1);
          v6 -= 8;
          v34 += 8;
        }

        while (v33 < v23--);
      }

      v6 = v119;
      v7 = v110;
    }

LABEL_29:
    v38 = a3[1];
    if (v8 < v38)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_137;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v8 < v7)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100022934(0, *(v6 + 2) + 1, 1, v6);
    }

    v59 = v6;
    v60 = *(v6 + 2);
    v121 = v59;
    v61 = *(v59 + 3);
    v62 = v60 + 1;
    if (v60 >= v61 >> 1)
    {
      v121 = sub_100022934((v61 > 1), v60 + 1, 1, v121);
    }

    *(v121 + 2) = v62;
    v63 = v121 + 32;
    v64 = &v121[16 * v60 + 32];
    *v64 = v7;
    v64[1] = v8;
    v65 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v125 = v8;
    if (v60)
    {
      v6 = v121;
      while (1)
      {
        v66 = v62 - 1;
        v67 = &v63[16 * v62 - 16];
        v68 = &v6[16 * v62];
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v69 = *(v6 + 4);
          v70 = *(v6 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_72:
          if (v72)
          {
            goto LABEL_123;
          }

          v84 = *v68;
          v83 = *(v68 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_126;
          }

          v88 = *(v67 + 1);
          v89 = v88 - *v67;
          if (__OFSUB__(v88, *v67))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v86, v89))
          {
            goto LABEL_131;
          }

          if (v86 + v89 >= v71)
          {
            if (v71 < v89)
            {
              v66 = v62 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v62 < 2)
        {
          goto LABEL_125;
        }

        v91 = *v68;
        v90 = *(v68 + 1);
        v79 = __OFSUB__(v90, v91);
        v86 = v90 - v91;
        v87 = v79;
LABEL_87:
        if (v87)
        {
          goto LABEL_128;
        }

        v93 = *v67;
        v92 = *(v67 + 1);
        v79 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v79)
        {
          goto LABEL_130;
        }

        if (v94 < v86)
        {
          goto LABEL_103;
        }

LABEL_94:
        if (v66 - 1 >= v62)
        {
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v6 = &v63[16 * v66 - 16];
        v7 = *v6;
        v98 = &v63[16 * v66];
        v99 = *(v98 + 1);
        sub_100026B50((*a3 + 8 * *v6), (*a3 + 8 * *v98), (*a3 + 8 * v99), v65);
        if (v118)
        {
          goto LABEL_116;
        }

        if (v99 < v7)
        {
          goto LABEL_118;
        }

        v100 = *(v121 + 2);
        if (v66 > v100)
        {
          goto LABEL_119;
        }

        *v6 = v7;
        *(v6 + 1) = v99;
        if (v66 >= v100)
        {
          goto LABEL_120;
        }

        v118 = 0;
        v62 = v100 - 1;
        memmove(&v63[16 * v66], v98 + 16, 16 * (v100 - 1 - v66));
        v6 = v121;
        *(v121 + 2) = v100 - 1;
        if (v100 <= 2)
        {
          goto LABEL_103;
        }
      }

      v73 = &v63[16 * v62];
      v74 = *(v73 - 8);
      v75 = *(v73 - 7);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_121;
      }

      v78 = *(v73 - 6);
      v77 = *(v73 - 5);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_122;
      }

      v80 = *(v68 + 1);
      v81 = v80 - *v68;
      if (__OFSUB__(v80, *v68))
      {
        goto LABEL_124;
      }

      v79 = __OFADD__(v71, v81);
      v82 = v71 + v81;
      if (v79)
      {
        goto LABEL_127;
      }

      if (v82 >= v76)
      {
        v96 = *v67;
        v95 = *(v67 + 1);
        v79 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v79)
        {
          goto LABEL_135;
        }

        if (v71 < v97)
        {
          v66 = v62 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

    v6 = v121;
LABEL_103:
    v4 = a3[1];
    v5 = v125;
    if (v125 >= v4)
    {
      goto LABEL_106;
    }
  }

  v39 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_139;
  }

  if (v39 >= v38)
  {
    v39 = a3[1];
  }

  if (v39 < v7)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v8 == v39)
  {
    goto LABEL_51;
  }

  v120 = v6;
  v127 = *a3;
  v40 = *a3 + 8 * v8 - 8;
  v111 = v7;
  v112 = v39;
  v41 = v7 - v8;
LABEL_38:
  v124 = v8;
  v42 = *(v127 + 8 * v8);
  v114 = v41;
  v116 = v40;
  v43 = v40;
  while (1)
  {
    v44 = *v43;
    v45 = v42;
    v46 = v44;
    v47 = [v45 identifier];
    v48 = sub_10002F404();
    v50 = v49;

    v51 = [v46 identifier];
    v52 = sub_10002F404();
    v54 = v53;

    if (v48 == v52 && v50 == v54)
    {

LABEL_49:
      v8 = v124 + 1;
      v40 = v116 + 8;
      v41 = v114 - 1;
      if (v124 + 1 == v112)
      {
        v8 = v112;
        v6 = v120;
        v7 = v111;
        goto LABEL_51;
      }

      goto LABEL_38;
    }

    v56 = sub_10002F854();

    if ((v56 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (!v127)
    {
      break;
    }

    v57 = *v43;
    v42 = *(v43 + 8);
    *v43 = v42;
    *(v43 + 8) = v57;
    v43 -= 8;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_100025D88(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v83 = result;
  v89 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        result = *v11;
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          result = sub_10002F854();
          v14 = result;
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          result = *(v16 - 1);
          if (result == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else
          {
            result = sub_10002F854();
            if ((v14 ^ result))
            {
              break;
            }
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return result;
          }

          if (v10 != v27)
          {
            v84 = v5;
            v86 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              result = *v32;
              v33 = v32[1];
              v34 = v30;
              v35 = v29;
              do
              {
                if (result == *(v35 - 2) && v33 == *(v35 - 1))
                {
                  break;
                }

                result = sub_10002F854();
                if ((result & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                result = *v35;
                v33 = v35[1];
                *v35 = *(v35 - 1);
                *(v35 - 1) = v33;
                *(v35 - 2) = result;
                v35 -= 2;
              }

              while (!__CFADD__(v34++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v84;
            v9 = v86;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v85 = v10;
      if ((result & 1) == 0)
      {
        result = sub_100022934(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v39 = *(v8 + 2);
      v38 = *(v8 + 3);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        result = sub_100022934((v38 > 1), v39 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v40;
      v41 = v8 + 32;
      v42 = &v8[16 * v39 + 32];
      *v42 = v9;
      v42[1] = v85;
      v87 = *v83;
      if (!*v83)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[16 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = *(v8 + 4);
            v47 = *(v8 + 5);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = *(v45 + 1);
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = *(v45 + 1);
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          result = sub_100026E78((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v87);
          if (v5)
          {
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = *(v8 + 2);
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          result = memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          *(v79 + 2) = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = *(v45 + 1);
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v85;
      if (v85 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*v83)
  {
    goto LABEL_128;
  }

  sub_100026290(&v89, *v83, a3);
}

uint64_t sub_100026290(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_10002703C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_100026E78((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1000263BC(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 24;
  v9 = (a3 - __dst) / 24;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[24 * v8] <= a4)
    {
      memmove(a4, __src, 24 * v8);
    }

    v11 = &v4[24 * v8];
    v76 = v11;
    for (i = v5; ; v5 = i)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v38 = v7;
        goto LABEL_71;
      }

      v80 = v7;
      v13 = *v6;
      v14 = *(v6 + 1);
      v15 = *(v6 + 2);
      v17 = *v4;
      v16 = *(v4 + 1);
      v82 = v4;
      v18 = *(v4 + 2);
      if (v15 >> 62)
      {
        v32 = *v6;
        v33 = *(v6 + 1);
        v34 = sub_10002F7D4();
        v14 = v33;
        v13 = v32;
        v19 = v34;
      }

      else
      {
        v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = v18 >> 62;
      if (v18 >> 62)
      {
        v74 = v13;
        v35 = v17;
        v36 = v14;
        v21 = sub_10002F7D4();
        v14 = v36;
        v17 = v35;
        v13 = v74;
      }

      else
      {
        v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19 >= v21)
      {
        goto LABEL_29;
      }

      v22 = v17;
      v23 = v14;
      if (v15 >> 62)
      {
        v24 = v13;
        v25 = sub_10002F7D4();
        if (!v20)
        {
LABEL_21:
          v26 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_22;
        }
      }

      else
      {
        v24 = v13;
        v25 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          goto LABEL_21;
        }
      }

      v26 = sub_10002F7D4();
LABEL_22:
      if (v25 != v26 || (v24 == v22 ? (v27 = v23 == v16) : (v27 = 0), !v27 && (sub_10002F854() & 1) != 0))
      {
        v28 = v82;
        v4 = v82 + 24;
        v29 = v80;
        v30 = v80 == v82;
        goto LABEL_30;
      }

LABEL_29:
      v28 = v6;
      v29 = v80;
      v30 = v80 == v6;
      v6 += 24;
      v4 = v82;
LABEL_30:
      v11 = v76;
      if (!v30)
      {
        v31 = *v28;
        *(v29 + 2) = *(v28 + 2);
        *v29 = v31;
      }

      v7 = v29 + 24;
    }
  }

  if (a4 != __dst || &__dst[24 * v9] <= a4)
  {
    memmove(a4, __dst, 24 * v9);
  }

  v11 = &v4[24 * v9];
  v83 = v4;
  v81 = v7;
LABEL_41:
  v38 = v6;
  v6 -= 24;
  v39 = v5 - 24;
  v73 = v6;
  v75 = v38;
  while (v11 > v4 && v38 > v7)
  {
    v77 = v11;
    v79 = v39;
    v41 = *(v11 - 3);
    v42 = *(v11 - 2);
    v43 = v11 - 24;
    v44 = *(v11 - 1);
    v46 = *(v38 - 3);
    v45 = *(v38 - 2);
    v47 = *(v38 - 1);
    if (v44 >> 62)
    {
      v61 = *(v11 - 3);
      v62 = *(v11 - 2);
      v71 = *(v38 - 2);
      v63 = sub_10002F7D4();
      v45 = v71;
      v42 = v62;
      v41 = v61;
      v48 = v63;
    }

    else
    {
      v48 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = v47 >> 62;
    if (v47 >> 62)
    {
      v72 = v41;
      v64 = v46;
      v65 = v42;
      v66 = v45;
      v50 = sub_10002F7D4();
      v45 = v66;
      v42 = v65;
      v46 = v64;
      v6 = v73;
      v38 = v75;
      v41 = v72;
    }

    else
    {
      v50 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v48 >= v50)
    {
LABEL_68:
      v5 = v79;
      v7 = v81;
      v4 = v83;
      v11 = v77;
      if ((v79 + 24) != v38)
      {
        v67 = *v6;
        *(v79 + 16) = *(v6 + 2);
        *v79 = v67;
      }

      goto LABEL_41;
    }

    v51 = v46;
    v52 = v45;
    v53 = v42;
    if (v44 >> 62)
    {
      v54 = v41;
      v55 = sub_10002F7D4();
      if (!v49)
      {
LABEL_56:
        v56 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_57;
      }
    }

    else
    {
      v54 = v41;
      v55 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v49)
      {
        goto LABEL_56;
      }
    }

    v56 = sub_10002F7D4();
LABEL_57:
    v57 = v52;
    v58 = v51;
    v6 = v73;
    v38 = v75;
    if (v55 == v56)
    {
      v59 = v54 == v58 && v53 == v57;
      if (v59 || (sub_10002F854() & 1) == 0)
      {
        goto LABEL_68;
      }
    }

    v4 = v83;
    if (v77 != (v79 + 24))
    {
      v60 = *v43;
      *(v79 + 16) = *(v43 + 2);
      *v79 = v60;
    }

    v39 = v79 - 24;
    v11 = v43;
    v7 = v81;
  }

LABEL_71:
  v68 = (v11 - v4) / 24;
  if (v38 != v4 || v38 >= &v4[24 * v68])
  {
    memmove(v38, v4, 24 * v68);
  }

  return 1;
}

uint64_t sub_1000267F4(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = a3 - __dst;
  if (v7 < v8)
  {
    if (a4 != __src || &__src[v7] <= a4)
    {
      memmove(a4, __src, 8 * v7);
    }

    v11 = &v4[v7];
    v12 = &selRef_uuid;
    v13 = __dst;
    v53 = v11;
    v50 = v5;
    while (1)
    {
      if (v4 >= v11 || v13 >= v5)
      {
        v29 = v6;
        goto LABEL_52;
      }

      v15 = v13;
      v16 = *v4;
      v17 = *v13;
      v18 = v16;
      result = sub_1000292C8(v17, v12);
      if (!v20)
      {
        __break(1u);
        goto LABEL_60;
      }

      v21 = result;
      v22 = v12;
      v23 = v20;
      v24 = v22;
      result = sub_1000292C8(v18, v22);
      if (!v25)
      {
        goto LABEL_61;
      }

      v26 = v21 == result && v23 == v25;
      if (v26)
      {
        break;
      }

      v27 = sub_10002F854();

      if ((v27 & 1) == 0)
      {
        goto LABEL_22;
      }

      v28 = v15;
      v13 = v15 + 1;
      v12 = v24;
      if (v6 != v15)
      {
        goto LABEL_23;
      }

LABEL_24:
      ++v6;
      v5 = v50;
      v11 = v53;
    }

LABEL_22:
    v28 = v4;
    v26 = v6 == v4++;
    v12 = v24;
    v13 = v15;
    if (v26)
    {
      goto LABEL_24;
    }

LABEL_23:
    *v6 = *v28;
    goto LABEL_24;
  }

  v29 = __dst;
  if (a4 != __dst || &__dst[v8] <= a4)
  {
    memmove(a4, __dst, 8 * v8);
  }

  v11 = &v4[v8];
  v51 = v6;
  v52 = v4;
LABEL_31:
  v31 = v29 - 1;
  v32 = v5 - 1;
  v54 = v29;
  while (v11 > v4 && v29 > v6)
  {
    v34 = v32;
    v35 = v11;
    v36 = v11 - 1;
    v37 = v31;
    v38 = *v31;
    v39 = *(v11 - 1);
    v40 = v38;
    result = sub_1000292C8(v39, &selRef_uuid);
    if (!v41)
    {
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      return result;
    }

    v42 = result;
    v43 = v41;
    result = sub_1000292C8(v40, &selRef_uuid);
    if (!v44)
    {
      goto LABEL_62;
    }

    if (v42 == result && v43 == v44)
    {
    }

    else
    {
      v46 = sub_10002F854();

      if (v46)
      {
        v5 = v34;
        v26 = v34 + 1 == v54;
        v47 = v37;
        v29 = v37;
        v6 = v51;
        v4 = v52;
        v11 = v35;
        if (!v26)
        {
          *v5 = *v47;
          v29 = v47;
        }

        goto LABEL_31;
      }
    }

    v31 = v37;
    if (v35 != v34 + 1)
    {
      *v34 = *v36;
    }

    v32 = v34 - 1;
    v11 = v36;
    v29 = v54;
    v6 = v51;
    v4 = v52;
  }

LABEL_52:
  v48 = v11 - v4;
  if (v29 != v4 || v29 >= &v4[v48])
  {
    memmove(v29, v4, 8 * v48);
  }

  return 1;
}

uint64_t sub_100026B50(void **a1, id *__src, void **a3, void **__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = __src;
  v7 = a1;
  v8 = __src - a1;
  v9 = a3 - __src;
  if (v8 < v9)
  {
    if (__dst != a1 || &a1[v8] <= __dst)
    {
      v11 = sub_10002AC38();
      memmove(v11, v12, v13);
    }

    v14 = &v4[v8];
    v58 = v14;
    v60 = v5;
    while (1)
    {
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_48;
      }

      v62 = v7;
      v16 = *v4;
      v17 = *v6;
      v18 = v16;
      v19 = [v17 identifier];
      v20 = sub_10002F404();
      v22 = v21;

      v23 = [v18 identifier];
      v24 = sub_10002F404();
      v26 = v25;

      if (v20 == v24 && v22 == v26)
      {

        v29 = v62;
      }

      else
      {
        v28 = sub_10002B174();

        v29 = v62;
        if (v28)
        {
          v30 = v6;
          v31 = v62 == v6++;
          goto LABEL_20;
        }
      }

      v30 = v4;
      v31 = v29 == v4++;
LABEL_20:
      v14 = v58;
      v5 = v60;
      if (!v31)
      {
        *v29 = *v30;
      }

      v7 = v29 + 1;
    }
  }

  if (__dst != __src || &__src[v9] <= __dst)
  {
    memmove(__dst, __src, 8 * v9);
  }

  v14 = &v4[v9];
  v56 = v4;
  v63 = v7;
LABEL_29:
  v33 = v6 - 1;
  v34 = v5 - 1;
  for (i = v6; v14 > v4 && v6 > v7; v6 = i)
  {
    v59 = v14;
    v61 = v34;
    v36 = v14 - 1;
    v37 = v33;
    v38 = *v33;
    v39 = *(v14 - 1);
    v40 = v38;
    v41 = [v39 identifier];
    v42 = sub_10002F404();
    v44 = v43;

    v45 = [v40 identifier];
    v46 = sub_10002F404();
    v48 = v47;

    if (v42 == v46 && v44 == v48)
    {
      v50 = 0;
    }

    else
    {
      v50 = sub_10002B174();
    }

    v7 = v63;
    v14 = v59;
    v33 = v37;
    if (v50)
    {
      v5 = v61;
      v4 = v56;
      v6 = v33;
      if (v61 + 1 != i)
      {
        *v61 = *v33;
        v6 = v33;
      }

      goto LABEL_29;
    }

    v4 = v56;
    if (v59 != v61 + 1)
    {
      *v61 = *v36;
    }

    v34 = v61 - 1;
    v14 = v36;
  }

LABEL_48:
  if (v6 != v4 || v6 >= &v4[v14 - v4])
  {
    v52 = sub_10002AFF8();
    memmove(v52, v53, v54);
  }

  return 1;
}

uint64_t sub_100026E78(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_10002F854() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_10002F854() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

uint64_t sub_100027050(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_10002F7D4();
LABEL_9:
  result = sub_10002F744();
  *v2 = result;
  return result;
}

uint64_t sub_1000270F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_10002F854() & 1;
  }
}

BOOL sub_100027134(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_1000271E4(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_10002F8D4();
  sub_10002F444();
  v8 = sub_10002F8F4();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_10002F854() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_100028CEC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_100027330(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_10002840C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_10002745C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;

    v15 = 0;
    v49 = v12;
    v50 = v7;
    v51 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        sub_10002F8D4();

        sub_10002F444();
        v20 = sub_10002F8F4();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & v13[v4]) == 0)
          {
            break;
          }

          v22 = (v5[6] + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (sub_10002F854() & 1) != 0)
          {
            v53 = v47;
            v54 = v16;
            v55 = v11;
            v3 = v50;
            v12 = v51;
            v52[0] = v51;
            v52[1] = v50;

            v25 = *(v5 + 32);
            v44 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v44;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v45 = &v43;
              __chkstk_darwin(v24);
              v7 = &v43 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, v5 + 7, v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = v5[2];
              v48 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v49;
              while (1)
              {
                v46 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                sub_10002F8D4();

                sub_10002F444();
                v34 = sub_10002F8F4();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & v13[v7]) == 0)
                  {

                    v3 = v50;
                    v12 = v51;
                    v29 = v49;
                    goto LABEL_24;
                  }

                  v36 = (v5[6] + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = sub_10002F854();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v48[v7];
                v48[v7] = v39 & ~v8;
                v3 = v50;
                v12 = v51;
                v29 = v49;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  __break(1u);
                }

                if (v46 == 1)
                {

                  v5 = &_swiftEmptySetSingleton;
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = sub_1000281F0(v48, v44, v46, v5);
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v41 = swift_slowAlloc();
            v42 = sub_100028720(v41, v44, v5 + 7, v44, v5, v7, v52);

            v12 = v52[0];
            v47 = v53;
            v5 = v42;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v50;
        v14 = v51;
        v12 = v49;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    sub_100029F34(v14);
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}

uint64_t sub_100027934(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004120(&qword_10004A9D0, &qword_1000357A0);
  result = sub_10002F6E4();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_100027DE8(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_10002F8D4();
    sub_10002F444();
    result = sub_10002F8F4();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t *sub_100027B90(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v8 = (&v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_100027DE8(0, v6, v8);
    v9 = sub_100027E4C(v8, v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_100027D58(v11, v6, a2, a1);
  }

  return v9;
}

unint64_t *sub_100027D58(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_100027E4C(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100027DE8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100035610;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unint64_t *sub_100027E4C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      sub_10002F8D4();

      sub_10002F444();
      v40 = sub_10002F8F4();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = sub_10002F854();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(v52 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        return sub_1000281F0(v52, a2, v53, v5);
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_10002F8D4();

      sub_10002F444();
      v18 = sub_10002F8F4();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = sub_10002F854();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      v52[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1000281F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100004120(&qword_10004A9D0, &qword_1000357A0);
  result = sub_10002F6F4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_10002F8D4();

    sub_10002F444();
    result = sub_10002F8F4();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10002840C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_10002F8D4();
  sub_10002F444();
  v6 = sub_10002F8F4();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_10002F854() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000287A8();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_100028B34(v8);
  *v2 = v15;
  return v13;
}

unint64_t *sub_100028534(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_10002F8D4();

    sub_10002F444();
    v16 = sub_10002F8F4();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_10002F854();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_1000281F0(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_100028720(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_100028534(a1, a2, a5, a6, a7);

  return v12;
}

void *sub_1000287A8()
{
  v1 = v0;
  sub_100004120(&qword_10004A9D0, &qword_1000357A0);
  v2 = *v0;
  v3 = sub_10002F6D4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_100028900(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004120(&qword_10004A9D0, &qword_1000357A0);
  result = sub_10002F6E4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_10002F8D4();

        sub_10002F444();
        result = sub_10002F8F4();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_100028B34(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_10002F694();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_10002F8D4();

        sub_10002F444();
        v10 = sub_10002F8F4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_100028CEC(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_100027934(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_100028900(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_10002F8D4();
      sub_10002F444();
      result = sub_10002F8F4();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_10002F854() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1000287A8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_10002F864();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

_OWORD *sub_100028E54(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100023198(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_100004120(&qword_10004A998, &qword_100035780);
  if (!sub_10002F7B4(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_100023198(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = sub_10002F874();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = (v20[7] + 32 * v16);
    sub_100004168(v21);

    return sub_1000107F0(a1, v21);
  }

  else
  {
    sub_100028F9C(v16, a2, a3, a1, v20);
  }
}

_OWORD *sub_100028F9C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000107F0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id sub_10002903C(uint64_t a1, uint64_t a2, void *a3)
{
  isa = sub_10002F394().super.isa;

  v6 = [a3 storeUserInfo:isa error:a2];

  return v6;
}

void sub_1000290BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10002F3D4();
  [a3 setDisplayNameLocalizationKey:v4];
}

uint64_t sub_100029114(void *a1)
{
  v1 = [a1 personLocalIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10002F584();

  return v3;
}

void sub_100029174(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10002F3D4();

  [a3 setDisplayNameLocalizationKey:v4];
}

void sub_1000291D8(uint64_t a1, void *a2, unint64_t *a3, void *a4, SEL *a5)
{
  sub_1000042B4(0, a3, a4);
  isa = sub_10002F4A4().super.isa;

  [a2 *a5];
}

uint64_t sub_10002925C(void *a1)
{
  v1 = [a1 context];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10002F3A4();

  return v3;
}

uint64_t sub_1000292C8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_10002F404();

  return v4;
}

uint64_t sub_100029328(void *a1)
{
  v1 = [a1 media];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1000042B4(0, &qword_10004A850, PFPosterMedia_ptr);
  v3 = sub_10002F4C4();

  return v3;
}

void (*sub_100029398(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_100023120(a3);
  sub_100023130(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = sub_10002F734();
  }

  *a1 = v7;
  return sub_100029424;
}

void (*sub_10002942C(void *a1, unint64_t a2, uint64_t a3))(id *)
{
  v6 = sub_100023120(a3);
  sub_100023130(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = sub_10002F734();
  }

  *a1 = v7;
  return sub_10002A9F4;
}

void *sub_1000294B8(unint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t))
{
  if (a1 >> 62)
  {
    v6 = sub_10002F7D4();
    if (v6)
    {
      v7 = v6;
      v3 = sub_100022AB8(v6, 0);
      a2(v3 + 4, v7, a1);
      v9 = v8;

      if (v9 == v7)
      {
        return v3;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_100029554(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000295B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_10002F7D4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1000126D0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1000042B4(0, &qword_10004A808, PRPosterDescriptor_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_10002A0B0(&qword_10004A818, &qword_10004A810, &qword_1000356D8);
        for (i = 0; i != v7; ++i)
        {
          sub_100004120(&qword_10004A810, &qword_1000356D8);
          v9 = sub_100029398(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002974C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_10002F7D4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1000126D0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1000042B4(0, &qword_10004A930, PHAsset_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_10002A0B0(&qword_10004A940, &qword_10004A938, &qword_100035748);
        for (i = 0; i != v7; ++i)
        {
          sub_100004120(&qword_10004A938, &qword_100035748);
          v9 = sub_10002942C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100029924(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1000299A0(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v21 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9)) | (v16 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v15 == v10)
      {
        break;
      }

      v11 += 3;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v21;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_100029B20()
{
  sub_100010CCC();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 64;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 64);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    sub_100010CE4();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(v3 + 56) + ((v15 << 9) | (8 * v16)));
      *v11 = v17;
      if (v14 == v10)
      {
        v19 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      v18 = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}