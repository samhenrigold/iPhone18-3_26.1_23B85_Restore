uint64_t sub_1002D5EB8(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v9 = sub_1002D6090;
  }

  else
  {
    *(v8 + 96) = a3;
    *(v8 + 80) = a2;
    *(v8 + 88) = a1;
    v9 = sub_1002D5FF4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1002D5FF4()
{
  v1 = *(v0 + 96);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

  v2 = *(v0 + 8);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  return v2(v3, v4, v1 & 1);
}

uint64_t sub_1002D6090()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

id static LyricsLoader.requiredProperties()()
{
  sub_100003ABC(&qword_10060F580, &qword_1004E2FE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C50B0;
  *(v0 + 32) = sub_1004BBE64();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1004BBE64();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1004BBE64();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1004BBE64();
  *(v0 + 88) = v4;
  sub_100003ABC(&qword_10060ACC0, &qword_1004DCB68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C5070;
  *(inited + 32) = sub_1004BBE64();
  *(inited + 40) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004C50A0;
  *(v7 + 32) = sub_1004BBE64();
  *(v7 + 40) = v8;
  isa = sub_1004BC284().super.isa;

  v10 = objc_opt_self();
  v11 = [v10 propertySetWithProperties:isa];

  *(inited + 48) = v11;
  *(inited + 56) = sub_1004BBE64();
  *(inited + 64) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004C50B0;
  *(v13 + 32) = sub_1004BBE64();
  *(v13 + 40) = v14;
  *(v13 + 48) = sub_1004BBE64();
  *(v13 + 56) = v15;
  *(v13 + 64) = sub_1004BBE64();
  *(v13 + 72) = v16;
  *(v13 + 80) = sub_1004BBE64();
  *(v13 + 88) = v17;
  v18 = sub_1004BC284().super.isa;

  v19 = [v10 propertySetWithProperties:v18];

  *(inited + 72) = v19;
  *(inited + 80) = sub_1004BBE64();
  *(inited + 88) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004C50A0;
  *(v21 + 32) = sub_1004BBE64();
  *(v21 + 40) = v22;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1004C50A0;
  *(v23 + 32) = sub_1004BBE64();
  *(v23 + 40) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1004C50A0;
  *(v25 + 32) = sub_1004BBE64();
  *(v25 + 40) = v26;
  v27 = sub_1004BC284().super.isa;

  v28 = [v10 propertySetWithProperties:v27];

  *(v23 + 48) = v28;
  sub_1002CFC70(v23);
  swift_setDeallocating();
  sub_100007214(v23 + 32, &qword_10060ACC8, &qword_1004DCB70);
  v29 = objc_allocWithZone(MPPropertySet);
  v30 = sub_1004BC284().super.isa;

  sub_1002DCCDC(0, v31);
  v32 = sub_1004BBC24().super.isa;

  v33 = [v29 initWithProperties:v30 relationships:v32];

  *(inited + 96) = v33;
  sub_1002CFC70(inited);
  swift_setDeallocating();
  sub_100003ABC(&qword_10060ACC8, &qword_1004DCB70);
  swift_arrayDestroy();
  v34 = objc_allocWithZone(MPPropertySet);
  v35 = sub_1004BC284().super.isa;

  v36 = sub_1004BBC24().super.isa;

  v37 = [v34 initWithProperties:v35 relationships:v36];

  return v37;
}

uint64_t sub_1002D65EC(uint64_t a1)
{
  v2[79] = v1;
  v2[78] = a1;
  v3 = sub_1004BBEB4();
  v2[80] = v3;
  v2[81] = *(v3 - 8);
  v2[82] = swift_task_alloc();
  v4 = sub_1004BB384();
  v2[83] = v4;
  v2[84] = *(v4 - 8);
  v2[85] = swift_task_alloc();
  v5 = sub_1004B80B4();
  v2[86] = v5;
  v2[87] = *(v5 - 8);
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v6 = sub_1004BAA84();
  v2[96] = v6;
  v2[97] = *(v6 - 8);
  v2[98] = swift_task_alloc();
  v7 = sub_1004BAA64();
  v2[99] = v7;
  v2[100] = *(v7 - 8);
  v2[101] = swift_task_alloc();
  v8 = sub_1004B64E4();
  v2[102] = v8;
  v2[103] = *(v8 - 8);
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v9 = sub_1004B6634();
  v2[106] = v9;
  v2[107] = *(v9 - 8);
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v2[110] = swift_task_alloc();
  sub_100003ABC(&qword_10060AD18, &qword_1004DCCD0);
  v2[111] = swift_task_alloc();
  sub_100003ABC(&qword_10060AD20, &qword_1004DCCD8);
  v2[112] = swift_task_alloc();
  v10 = sub_1004B6E44();
  v2[113] = v10;
  v2[114] = *(v10 - 8);
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  sub_100003ABC(&qword_10060AD28, &qword_1004DCCE0);
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v11 = sub_1004B6E64();
  v2[123] = v11;
  v2[124] = *(v11 - 8);
  v2[125] = swift_task_alloc();
  v2[126] = swift_task_alloc();
  sub_100003ABC(&qword_10060AD30, &qword_1004DCCE8);
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  sub_100003ABC(&qword_10060A210, &qword_1004DB5A0);
  v2[130] = swift_task_alloc();
  v12 = sub_1004B6B04();
  v2[131] = v12;
  v2[132] = *(v12 - 8);
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();

  return _swift_task_switch(sub_1002D6C20, 0, 0);
}

uint64_t sub_1002D6C20(uint64_t a1)
{
  v260 = v1;
  v2 = v1;
  v3 = sub_1004BB2B4();
  v257 = v1;
  if (!v4)
  {
    v50 = v1[90];
    v51 = v1[87];
    v52 = v1[86];
    v53 = Logger.lyrics.unsafeMutableAddressor(v3, 0);
    (*(v51 + 16))(v50, v53, v52);
    v54 = sub_1004B8094();
    v55 = sub_1004BC984();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "fetchStoreLyrics: song has no storeID", v56, 2u);
    }

    v57 = v2[90];
    v58 = v2[87];
    v59 = v2[86];

    (*(v58 + 8))(v57, v59);
    sub_1002DB940();
    swift_allocError();
    v61 = 2;
    goto LABEL_21;
  }

  BagProvider.shared.unsafeMutableAddressor();

  v5 = BagProvider.bag.getter();
  v1[135] = v5;

  if (!v5)
  {
    v62 = v1[91];
    v63 = v1[87];
    v64 = v1[86];

    v67 = Logger.lyrics.unsafeMutableAddressor(v65, v66);
    (*(v63 + 16))(v62, v67, v64);
    v68 = sub_1004B8094();
    v69 = sub_1004BC984();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "fetchStoreLyrics: Bag is nil", v70, 2u);
    }

    v71 = v2[91];
    v72 = v2[87];
    v73 = v2[86];

    (*(v72 + 8))(v71, v73);
    sub_1002DB940();
    swift_allocError();
    v61 = 3;
LABEL_21:
    *v60 = v61;
    swift_willThrow();
LABEL_27:

    v87 = v257[1];

    return v87();
  }

  v6 = LyricsOptionsManager.shared.unsafeMutableAddressor();
  v7 = *(**v6 + 120);

  v8 = v5;
  v7(v5);

  v9 = [v8 stringForBagKey:ICURLBagKeyCountryCode];
  if (!v9)
  {
LABEL_23:

LABEL_24:
    v76 = v2[92];
    v77 = v2[87];
    v78 = v2[86];
    v79 = Logger.lyrics.unsafeMutableAddressor(v74, v75);
    (*(v77 + 16))(v76, v79, v78);
    v80 = sub_1004B8094();
    v81 = sub_1004BC984();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "fetchStoreLyrics: Unable to get the domain from the bag", v82, 2u);
    }

    v83 = v2[92];
    v84 = v2[87];
    v85 = v2[86];

    (*(v84 + 8))(v83, v85);
    sub_1002DB940();
    swift_allocError();
    *v86 = 3;
    swift_willThrow();

    goto LABEL_27;
  }

  v10 = v9;
  v11 = sub_1004BBE64();
  v13 = v12;

  v14 = [v8 dictionaryForBagKey:ICURLBagKeyMusicCommon];
  if (!v14 || (v15 = v14, v16 = sub_1004BBC44(), v15, sub_10035089C(v16), v18 = v17, , !v18))
  {
LABEL_22:

    goto LABEL_23;
  }

  v19 = sub_1004BBE64();
  if (!*(v18 + 16))
  {

    goto LABEL_31;
  }

  v21 = sub_1003740CC(v19, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_31:

    v2 = v257;
    goto LABEL_24;
  }

  v2 = v257;
  v24 = v257 + 75;
  sub_10003D034(*(v18 + 56) + 40 * v21, (v257 + 23));

  sub_100003ABC(&qword_10060AD38, &qword_1004DCCF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v25 = *v24;
  if (!*(*v24 + 16) || (v26 = sub_1003740CC(0x746C7561666564, 0xE700000000000000), (v27 & 1) == 0))
  {

    goto LABEL_23;
  }

  sub_10003D034(*(v25 + 56) + 40 * v26, (v257 + 18));

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v252 = v257[132];
  v254 = v257[131];
  v250 = v257[130];
  v28 = v257[62];
  v29 = v257[63];
  sub_1004BD404(49);

  v258 = 0x2F2F3A7370747468;
  v259 = 0xE800000000000000;
  v262._countAndFlagsBits = v28;
  v262._object = v29;
  sub_1004BC024(v262);

  v263._countAndFlagsBits = 0x617461632F31762FLL;
  v263._object = 0xEC0000002F676F6CLL;
  sub_1004BC024(v263);
  v264._countAndFlagsBits = v11;
  v264._object = v13;
  sub_1004BC024(v264);
  v265._countAndFlagsBits = 0x2F73676E6F732FLL;
  v265._object = 0xE700000000000000;
  sub_1004BC024(v265);
  v30 = sub_1004BAD14();
  v32 = v31;

  v266._countAndFlagsBits = v30;
  v266._object = v32;
  sub_1004BC024(v266);

  v267._object = 0x8000000100507EC0;
  v267._countAndFlagsBits = 0xD000000000000010;
  sub_1004BC024(v267);
  sub_1004B6AC4();
  if ((*(v252 + 48))(v250, 1, v254) == 1)
  {
    v33 = v257[130];
    v34 = v257[93];
    v35 = v257[87];
    v36 = v257[86];

    v37 = sub_100007214(v33, &qword_10060A210, &qword_1004DB5A0);
    v39 = Logger.lyrics.unsafeMutableAddressor(v37, v38);
    (*(v35 + 16))(v34, v39, v36);

    v40 = sub_1004B8094();
    v41 = sub_1004BC984();

    v42 = os_log_type_enabled(v40, v41);
    v43 = v257[93];
    v44 = v257[87];
    v45 = v257[86];
    if (v42)
    {
      v46 = v257[93];
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v258 = v48;
      *v47 = 136446210;
      v49 = sub_1002C4260(0x2F2F3A7370747468, 0xE800000000000000, &v258);

      *(v47 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v40, v41, "fetchStoreLyrics: Couldn't build URL: %{public}s", v47, 0xCu);
      sub_100004C6C(v48);

      (*(v44 + 8))(v46, v45);
    }

    else
    {

      (*(v44 + 8))(v43, v45);
    }

    sub_1002DB940();
    swift_allocError();
    *v180 = 3;
    swift_willThrow();

    goto LABEL_27;
  }

  v89 = v257[134];
  v90 = v257[132];
  v91 = v257[131];
  v92 = v257[130];
  v93 = v257[129];
  v94 = v257[124];
  v255 = v257[123];

  (*(v90 + 32))(v89, v92, v91);
  v241 = *(v94 + 56);
  v241(v93, 1, 1, v255);
  v95 = sub_1004B6D74();
  v96 = v95;
  v97 = *(v95 + 16);
  if (!v97)
  {
    v235 = 0;
    v236 = _swiftEmptyArrayStorage;
    v249 = _swiftEmptyArrayStorage;
    goto LABEL_84;
  }

  v235 = 0;
  v98 = 0;
  v99 = v257[124];
  v245 = (v99 + 48);
  v240 = (v99 + 16);
  v100 = (v257[114] + 8);
  v101 = (v99 + 8);
  v102 = v95 + 40;
  v243 = -v97;
  v244 = v101;
  v236 = _swiftEmptyArrayStorage;
  v249 = _swiftEmptyArrayStorage;
  v246 = v95;
  v234 = v95 + 40;
  do
  {
    v103 = v102 + 16 * v98;
    v104 = v98 + 1;
    while (1)
    {
      v256 = v104;
      if ((v104 - 1) >= *(v96 + 16))
      {
        __break(1u);
      }

      v107 = v100;
      v108 = v2[129];
      v109 = v2[128];
      v110 = v2[123];
      v253 = v103;

      sub_1004B6D24();
      sub_1002DCFFC(v108, v109);
      if ((*v245)(v109, 1, v110) == 1)
      {
        v111 = v2[129];
        v112 = v2[128];
        v113 = v2[126];
        v114 = v2[123];
        sub_100007214(v111, &qword_10060AD30, &qword_1004DCCE8);
        sub_100007214(v112, &qword_10060AD30, &qword_1004DCCE8);
        (*v240)(v111, v113, v114);
        v241(v111, 0, 1, v114);
      }

      else
      {
        sub_100007214(v2[128], &qword_10060AD30, &qword_1004DCCE8);
      }

      v115 = v2[122];
      v116 = v2[119];
      v117 = v2[113];
      sub_1004B6E54();
      sub_1004B6E14();
      v251 = *v100;
      (*v100)(v116, v117);
      v118 = sub_1004B6D64();
      v119 = *(v118 - 8);
      v248 = *(v119 + 48);
      v247 = v119;
      if (v248(v115, 1, v118) == 1)
      {
        sub_100007214(v2[122], &qword_10060AD28, &qword_1004DCCE0);
      }

      else
      {
        v120 = v2[122];
        v121 = sub_1004B6D44();
        v122 = v119;
        v123 = v121;
        v125 = v124;
        (*(v122 + 8))(v120, v118);
        v2[64] = sub_1004B6D34();
        v2[65] = v126;
        v2[56] = 45;
        v2[57] = 0xE100000000000000;
        sub_1002C4D1C();
        LOBYTE(v120) = sub_1004BD264();

        if (v120)
        {

          v127 = sub_1004B6D34();
          v129 = v128;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v249 = sub_1003BEC84(0, *(v249 + 2) + 1, 1, v249);
          }

          v131 = *(v249 + 2);
          v130 = *(v249 + 3);
          if (v131 >= v130 >> 1)
          {
            v249 = sub_1003BEC84((v130 > 1), v131 + 1, 1, v249);
          }

          *(v249 + 2) = v131 + 1;
          v132 = &v249[16 * v131];
          *(v132 + 4) = v127;
          *(v132 + 5) = v129;
        }

        else
        {
          v133 = v2[112];
          v258 = v123;
          v259 = v125;
          v268._countAndFlagsBits = 45;
          v268._object = 0xE100000000000000;
          sub_1004BC024(v268);
          sub_1004B6DE4();
          v134 = sub_1004B6DB4();
          v135 = v2;
          v136 = *(v134 - 8);
          v137 = (*(v136 + 48))(v133, 1, v134);
          v138 = v135[112];
          if (v137 == 1)
          {
            sub_100007214(v138, &qword_10060AD20, &qword_1004DCCD8);
            v139._countAndFlagsBits = sub_1004BBF44();
            object = v139._object;
          }

          else
          {
            v141 = sub_1004B6DA4();
            object = v142;
            (*(v136 + 8))(v138, v134);
            v139._countAndFlagsBits = v141;
          }

          v139._object = object;
          sub_1004BC024(v139);

          v143 = v258;
          v144 = v259;
          v2 = v257;
          v100 = v107;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v249 = sub_1003BEC84(0, *(v249 + 2) + 1, 1, v249);
          }

          v146 = *(v249 + 2);
          v145 = *(v249 + 3);
          if (v146 >= v145 >> 1)
          {
            v249 = sub_1003BEC84((v145 > 1), v146 + 1, 1, v249);
          }

          *(v249 + 2) = v146 + 1;
          v147 = &v249[16 * v146];
          *(v147 + 4) = v143;
          *(v147 + 5) = v144;
        }
      }

      *(v2 + 1194) = 6;
      v148 = sub_1002DD06C();
      if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v148) & 1) == 0)
      {
        (*v244)(v2[126], v2[123]);
LABEL_63:
        v96 = v246;
LABEL_64:
        v106 = v256;
        goto LABEL_37;
      }

      v242 = v118;
      v149 = v2[118];
      v150 = v2[113];
      v151 = v2[111];
      sub_1004B6E54();
      sub_1004B6E34();
      v251(v149, v150);
      v152 = sub_1004B6DD4();
      v153 = v100;
      v154 = *(v152 - 8);
      if ((*(v154 + 48))(v151, 1, v152) != 1)
      {
        break;
      }

      v105 = v2[111];
      (*v244)(v2[126], v2[123]);
      sub_100007214(v105, &qword_10060AD18, &qword_1004DCCD0);
      v96 = v246;
      v106 = v256;
      v100 = v153;
LABEL_37:
      v103 = v253 + 16;
      v104 = v106 + 1;
      if (v243 + v104 == 1)
      {
        goto LABEL_84;
      }
    }

    v155 = v2[121];
    v156 = v2;
    v157 = v2[117];
    v238 = v156[113];
    v158 = v156[111];
    v237 = sub_1004B6DC4();
    v239 = v159;
    (*(v154 + 8))(v158, v152);
    sub_1004B6E54();
    sub_1004B6E14();
    v251(v157, v238);
    v100 = v153;
    if (v248(v155, 1, v242) == 1)
    {
      v160 = v156[121];
      (*v244)(v156[126], v156[123]);

      sub_100007214(v160, &qword_10060AD28, &qword_1004DCCE0);
      v2 = v156;
      goto LABEL_63;
    }

    v161 = v156[121];
    v162 = sub_1004B6D44();
    v164 = v163;
    (*(v247 + 8))(v161, v242);
    v165 = Lyrics.scriptMap.unsafeMutableAddressor();
    v166 = *v165;
    v2 = v156;
    if (*(*v165 + 16))
    {

      v167 = v239;
      v168 = sub_1003740CC(v237, v239);
      if (v169)
      {
        v170 = (*(v166 + 56) + 16 * v168);
        v171 = v170[1];
        v237 = *v170;

        v167 = v171;
      }
    }

    else
    {
      v167 = v239;
    }

    v258 = v162;
    v259 = v164;
    v269._countAndFlagsBits = 45;
    v269._object = 0xE100000000000000;
    sub_1004BC024(v269);
    v270._countAndFlagsBits = v237;
    v270._object = v167;
    sub_1004BC024(v270);
    v172 = v164;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v236 = sub_1003BEC84(0, *(v236 + 2) + 1, 1, v236);
    }

    v174 = *(v236 + 2);
    v173 = *(v236 + 3);
    if (v174 >= v173 >> 1)
    {
      v236 = sub_1003BEC84((v173 > 1), v174 + 1, 1, v236);
    }

    *(v236 + 2) = v174 + 1;
    v175 = &v236[16 * v174];
    *(v175 + 4) = v162;
    *(v175 + 5) = v172;
    v176 = Lyrics.defaultScript.unsafeMutableAddressor();
    v177 = v2[126];
    v178 = v2[123];
    if (v237 != *v176 || v167 != *(v176 + 1))
    {
      v179 = sub_1004BD9C4();

      (*v244)(v177, v178);
      v96 = v246;
      if (v179)
      {
        goto LABEL_79;
      }

      goto LABEL_64;
    }

    (*v244)(v177, v178);
    v96 = v246;
LABEL_79:
    v235 = 1;
    v98 = v256;
    v102 = v234;
  }

  while (v243 + v256);
LABEL_84:
  v181 = v2[129];
  v182 = v2[127];
  v183 = v2[124];
  v184 = v2[123];

  sub_1002DCFFC(v181, v182);
  if ((*(v183 + 48))(v182, 1, v184) == 1)
  {
    sub_100007214(v2[127], &qword_10060AD30, &qword_1004DCCE8);
  }

  else
  {
    (*(v2[124] + 32))(v2[125], v2[127], v2[123]);
    if ((v235 & 1) != 0 || (v185 = v2[116], v186 = v2[114], v187 = v2[113], v188 = *v6, , sub_1004B6E54(), v189 = (*(*v188 + 256))(v185), , v190 = *(v186 + 8), v190(v185, v187), (v189 & 1) == 0))
    {
      (*(v2[124] + 8))(v2[125], v2[123]);
    }

    else
    {
      v191 = v2[120];
      v192 = v2[115];
      v193 = v2[113];
      sub_1004B6E54();
      sub_1004B6E14();
      v190(v192, v193);
      v194 = sub_1004B6D64();
      v195 = *(v194 - 8);
      if ((*(v195 + 48))(v191, 1, v194) == 1)
      {
        v196 = v2[120];
        (*(v2[124] + 8))(v2[125], v2[123]);
        sub_100007214(v196, &qword_10060AD28, &qword_1004DCCE0);
      }

      else
      {
        v222 = v2[120];
        v223 = sub_1004B6D44();
        v225 = v224;
        (*(v195 + 8))(v222, v194);
        v258 = v223;
        v259 = v225;
        v271._countAndFlagsBits = 45;
        v271._object = 0xE100000000000000;
        sub_1004BC024(v271);
        v226 = Lyrics.defaultScript.unsafeMutableAddressor();
        v228 = *v226;
        v227 = v226[1];

        v272._countAndFlagsBits = v228;
        v272._object = v227;
        sub_1004BC024(v272);

        v230 = v258;
        v229 = v225;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v236 = sub_1003BEC84(0, *(v236 + 2) + 1, 1, v236);
        }

        v232 = *(v236 + 2);
        v231 = *(v236 + 3);
        if (v232 >= v231 >> 1)
        {
          v236 = sub_1003BEC84((v231 > 1), v232 + 1, 1, v236);
        }

        v2 = v257;
        (*(v257[124] + 8))(v257[125], v257[123]);
        *(v236 + 2) = v232 + 1;
        v233 = &v236[16 * v232];
        *(v233 + 4) = v230;
        *(v233 + 5) = v229;
      }
    }
  }

  v2[72] = v249;
  sub_100003ABC(&qword_10060AD48, &qword_1004DCCF8);
  sub_1002DD0C0();
  sub_1004BBD34();

  sub_1004B6604();

  v197 = sub_1003BED90(0, 1, 1, _swiftEmptyArrayStorage);
  v199 = *(v197 + 2);
  v198 = *(v197 + 3);
  if (v199 >= v198 >> 1)
  {
    v197 = sub_1003BED90((v198 > 1), v199 + 1, 1, v197);
  }

  v200 = v2[110];
  v201 = v2[107];
  v202 = v2[106];
  *(v197 + 2) = v199 + 1;
  v204 = *(v201 + 32);
  v201 += 32;
  v203 = v204;
  v205 = (*(v201 + 48) + 32) & ~*(v201 + 48);
  v206 = *(v201 + 40);
  v204(&v197[v205 + v206 * v199], v200, v202);
  *(v2 + 1193) = 6;
  v207 = sub_1002DD06C();
  v2[136] = v207;
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v207))
  {
    v2[76] = v236;
    sub_1004BBD34();

    sub_1004B6604();

    v209 = *(v197 + 2);
    v208 = *(v197 + 3);
    if (v209 >= v208 >> 1)
    {
      v197 = sub_1003BED90((v208 > 1), v209 + 1, 1, v197);
    }

    v210 = v2[109];
    v211 = v2[106];
    *(v197 + 2) = v209 + 1;
    v203(&v197[v205 + v209 * v206], v210, v211);
    sub_1004B6604();
    v213 = *(v197 + 2);
    v212 = *(v197 + 3);
    if (v213 >= v212 >> 1)
    {
      v197 = sub_1003BED90((v212 > 1), v213 + 1, 1, v197);
    }

    v214 = v2[108];
    v215 = v2[106];
    *(v197 + 2) = v213 + 1;
    v203(&v197[v205 + v213 * v206], v214, v215);
  }

  else
  {
  }

  v216 = v2[105];
  v217 = v2[104];
  v218 = v2[103];
  v219 = v2[102];
  sub_1004B6AE4();

  sub_1004B64C4();
  (*(v218 + 16))(v217, v216, v219);
  sub_1004BAA44();
  v220 = swift_task_alloc();
  v2[137] = v220;
  *v220 = v2;
  v220[1] = sub_1002D8750;
  v221 = v2[98];

  return MusicDataRequest.response()(v221);
}

uint64_t sub_1002D8750()
{
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v2 = sub_1002D9C40;
  }

  else
  {
    v2 = sub_1002D8890;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D8890()
{
  v125 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 696);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 664);
  v6 = *(v0 + 632);
  v7 = *(v0 + 624);
  v123 = 0x3C726564616F4CLL;
  v124 = 0xE700000000000000;
  *(v0 + 560) = v6;
  v127._countAndFlagsBits = sub_1004BBF04();
  sub_1004BC024(v127);

  v128._countAndFlagsBits = 62;
  v128._object = 0xE100000000000000;
  sub_1004BC024(v128);
  v8 = v124;
  v111 = v123;
  v11 = Logger.lyrics.unsafeMutableAddressor(v9, v10);
  *(v0 + 1112) = v11;
  v12 = *(v2 + 16);
  *(v0 + 1120) = v12;
  *(v0 + 1128) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v116 = v11;
  v114 = v12;
  v12(v1);
  (*(v4 + 16))(v3, v7, v5);

  v13 = sub_1004B8094();
  v14 = sub_1004BC9A4();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 760);
  v17 = *(v0 + 696);
  v119 = *(v0 + 688);
  v18 = *(v0 + 680);
  v19 = *(v0 + 672);
  v20 = *(v0 + 664);
  if (v15)
  {
    v109 = *(v0 + 760);
    v21 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *v21 = 136446466;
    v22 = sub_1002C4260(v111, v8, &v123);

    *(v21 + 4) = v22;
    *(v21 + 12) = 2082;
    v23 = sub_1002D2C8C();
    v25 = v24;
    (*(v19 + 8))(v18, v20);
    v26 = sub_1002C4260(v23, v25, &v123);

    *(v21 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s loadLyrics(for:completion:) completed for %{public}s", v21, 0x16u);
    swift_arrayDestroy();

    v27 = *(v17 + 8);
    v27(v109, v119);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
    v27 = *(v17 + 8);
    v27(v16, v119);
  }

  *(v0 + 1136) = v27;
  v28 = *(v0 + 1088);
  *(v0 + 1192) = 6;
  v29 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v28);
  if (v29)
  {
    v30 = 0xD000000000000011;
  }

  else
  {
    v30 = 1819112564;
  }

  if (v29)
  {
    v31 = 0x8000000100507EE0;
  }

  else
  {
    v31 = 0xE400000000000000;
  }

  v32 = objc_opt_self();
  v33 = sub_1004BAA74();
  v35 = v34;
  isa = sub_1004B6B64().super.isa;
  sub_100004D90(v33, v35);
  *(v0 + 536) = 0;
  v37 = [v32 JSONObjectWithData:isa options:0 error:v0 + 536];

  v38 = *(v0 + 536);
  if (!v37)
  {
    v57 = *(v0 + 784);
    v58 = *(v0 + 776);
    v59 = *(v0 + 768);
    v60 = v38;

    sub_1004B69B4();

    swift_willThrow();
    v61 = (*(v58 + 8))(v57, v59);
LABEL_37:
    v77 = *(v0 + 712);
    v78 = *(v0 + 696);
    v79 = *(v0 + 688);
    v80 = Logger.lyrics.unsafeMutableAddressor(v61, v62);
    (*(v78 + 16))(v77, v80, v79);
    swift_errorRetain();
    v81 = sub_1004B8094();
    v82 = sub_1004BC984();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v83 = 138543362;
      swift_errorRetain();
      v85 = _swift_stdlib_bridgeErrorToNSError();
      *(v83 + 4) = v85;
      *v84 = v85;
      _os_log_impl(&_mh_execute_header, v81, v82, "Data request error: %{public}@", v83, 0xCu);
      sub_100007214(v84, &qword_10060A750, &qword_1004DBB10);
    }

    v110 = *(v0 + 1080);
    v86 = *(v0 + 1056);
    v118 = *(v0 + 1048);
    v122 = *(v0 + 1072);
    v115 = *(v0 + 840);
    v117 = *(v0 + 1032);
    v87 = *(v0 + 824);
    v113 = *(v0 + 816);
    v88 = *(v0 + 808);
    v89 = *(v0 + 800);
    v90 = *(v0 + 792);
    v91 = v81;
    v92 = *(v0 + 712);
    v93 = *(v0 + 696);
    v94 = *(v0 + 688);

    (*(v93 + 8))(v92, v94);
    swift_willThrow();

    (*(v89 + 8))(v88, v90);
    (*(v87 + 8))(v115, v113);
    sub_100007214(v117, &qword_10060AD30, &qword_1004DCCE8);
    (*(v86 + 8))(v122, v118);

    v95 = *(v0 + 8);

    return v95();
  }

  v39 = v38;
  sub_1004BD284();
  swift_unknownObjectRelease();
  sub_100003ABC(&qword_10060AD58, &qword_1004DCD00);
  if (swift_dynamicCast())
  {
    v40 = *(v0 + 528);
  }

  else
  {
    v40 = 0;
  }

  if (!v40 || !*(v40 + 16))
  {
    goto LABEL_32;
  }

  v41 = sub_1003740CC(1635017060, 0xE400000000000000);
  if ((v42 & 1) == 0)
  {
    goto LABEL_31;
  }

  v43 = v0 + 616;
  sub_100004DE4(*(v40 + 56) + 32 * v41, v0 + 384);

  sub_100003ABC(&qword_10060AD68, &qword_1004DCD10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  if (!*(*v43 + 16))
  {
LABEL_31:

LABEL_32:

    goto LABEL_33;
  }

  sub_100004DE4(*v43 + 32, v0 + 224);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v44 = *(v0 + 552);
  if (!*(v44 + 16))
  {
    goto LABEL_44;
  }

  v45 = sub_1003740CC(0x7475626972747461, 0xEA00000000007365);
  if ((v46 & 1) == 0)
  {
    goto LABEL_44;
  }

  v47 = (v0 + 568);
  sub_100004DE4(*(v44 + 56) + 32 * v45, v0 + 352);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v48 = *v47;
  if (!*(*v47 + 16))
  {
LABEL_44:

    goto LABEL_32;
  }

  v49 = sub_1003740CC(v30, v31);
  v51 = v50;

  if ((v51 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_100004DE4(*(v48 + 56) + 32 * v49, v0 + 320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v120 = v27;
  v52 = *(v0 + 656);
  v53 = *(v0 + 648);
  v112 = *(v0 + 640);
  sub_1004BBEA4();
  v54 = sub_1004BBE74();
  v56 = v55;

  *(v0 + 1144) = v54;
  *(v0 + 1152) = v56;
  (*(v53 + 8))(v52, v112);
  if (v56 >> 60 == 15)
  {
LABEL_27:

LABEL_28:
    v27 = v120;
LABEL_33:
    v114(*(v0 + 752), v116, *(v0 + 688));

    v63 = sub_1004B8094();
    v64 = sub_1004BC984();

    v65 = os_log_type_enabled(v63, v64);
    v66 = *(v0 + 752);
    v67 = *(v0 + 688);
    if (v65)
    {
      v68 = swift_slowAlloc();
      v121 = v27;
      v69 = swift_slowAlloc();
      v123 = v69;
      *v68 = 136446210;
      *(v0 + 544) = v40;
      sub_100003ABC(&qword_10060AD60, &qword_1004DCD08);
      v70 = sub_1004BBF04();
      v72 = sub_1002C4260(v70, v71, &v123);

      *(v68 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v63, v64, "Invalid response: %{public}s", v68, 0xCu);
      sub_100004C6C(v69);

      v121(v66, v67);
    }

    else
    {

      v27(v66, v67);
    }

    v73 = *(v0 + 784);
    v74 = *(v0 + 776);
    v75 = *(v0 + 768);
    sub_1002DB940();
    swift_allocError();
    *v76 = 1;
    swift_willThrow();
    v61 = (*(v74 + 8))(v73, v75);
    goto LABEL_37;
  }

  v27 = v120;
  if (!*(v48 + 16) || (v97 = sub_1003740CC(0x6172615079616C70, 0xEA0000000000736DLL), (v98 & 1) == 0))
  {
    sub_100004D7C(v54, v56);
    goto LABEL_32;
  }

  v99 = v56;
  v100 = (v0 + 584);
  sub_100004DE4(*(v48 + 56) + 32 * v97, v0 + 288);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_56;
  }

  v101 = *v100;
  if (!*(*v100 + 16) || (v102 = sub_1003740CC(25705, 0xE200000000000000), (v103 & 1) == 0))
  {
    sub_100004D7C(v54, v99);
    goto LABEL_27;
  }

  sub_100004DE4(*(v101 + 56) + 32 * v102, v0 + 256);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_56:
    sub_100004D7C(v54, v99);
    goto LABEL_28;
  }

  v104 = *(v0 + 488);
  *(v0 + 1160) = *(v0 + 480);
  *(v0 + 1168) = v104;
  v105 = objc_allocWithZone(MSVLyricsTTMLParser);
  sub_10003E428(v54, v99);
  v106 = sub_1004B6B64().super.isa;
  v107 = [v105 initWithTTMLData:v106];
  *(v0 + 1176) = v107;

  sub_100004D7C(v54, v99);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 592;
  *(v0 + 24) = sub_1002D973C;
  v108 = swift_continuation_init();
  *(v0 + 136) = sub_100003ABC(&qword_10060ACB0, &qword_1004DCB50);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1002D5808;
  *(v0 + 104) = &unk_1005C06C8;
  *(v0 + 112) = v108;
  [v107 parseWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1002D973C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1184) = v1;
  if (v1)
  {

    v2 = sub_1002DA08C;
  }

  else
  {
    v2 = sub_1002D9880;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D9880()
{
  v14 = v0[146];
  v1 = v0[145];
  v18 = v0[147];
  v19 = v0[144];
  v17 = v0[143];
  v23 = v0[134];
  v2 = v0[132];
  v22 = v0[131];
  v20 = v0[135];
  v21 = v0[129];
  v16 = v0[105];
  v3 = v0[103];
  v15 = v0[102];
  v13 = v0[101];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[74];
  type metadata accessor for Lyrics(0);
  swift_allocObject();
  v10 = Lyrics.init(identifier:songInfo:)(v1, v14, v9);

  sub_100004D7C(v17, v19);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v13, v5);
  (*(v3 + 8))(v16, v15);
  sub_100007214(v21, &qword_10060AD30, &qword_1004DCCE8);
  (*(v2 + 8))(v23, v22);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_1002D9C40(uint64_t a1, uint64_t a2)
{
  v3 = v2[89];
  v4 = v2[87];
  v5 = v2[86];
  v6 = Logger.lyrics.unsafeMutableAddressor(a1, a2);
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v7 = sub_1004B8094();
  v8 = sub_1004BC984();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Data request error: %{public}@", v9, 0xCu);
    sub_100007214(v10, &qword_10060A750, &qword_1004DBB10);
  }

  v12 = v2[135];
  v13 = v2[132];
  v27 = v2[131];
  v28 = v2[134];
  v25 = v2[105];
  v26 = v2[129];
  v14 = v7;
  v15 = v2[103];
  v24 = v2[102];
  v16 = v2[101];
  v17 = v2[100];
  v18 = v2[99];
  v19 = v2[89];
  v20 = v2[87];
  v21 = v2[86];

  (*(v20 + 8))(v19, v21);
  swift_willThrow();

  (*(v17 + 8))(v16, v18);
  (*(v15 + 8))(v25, v24);
  sub_100007214(v26, &qword_10060AD30, &qword_1004DCCE8);
  (*(v13 + 8))(v28, v27);

  v22 = v2[1];

  return v22();
}

uint64_t sub_1002DA08C(uint64_t a1)
{
  v2 = v1[140];
  v3 = v1[139];
  v4 = v1[88];
  v5 = v1[86];
  swift_willThrow();
  v2(v4, v3, v5);
  swift_errorRetain();
  v6 = sub_1004B8094();
  v7 = sub_1004BC984();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Parsing error: %{public}@", v8, 0xCu);
    sub_100007214(v9, &qword_10060A750, &qword_1004DBB10);
  }

  v11 = v1[147];
  v12 = v1[144];
  v13 = v1[143];
  v14 = v1[142];
  v15 = v1[97];
  v45 = v1[96];
  v47 = v1[98];
  v16 = v1[88];
  v17 = v1[86];

  v14(v16, v17);
  swift_willThrow();

  sub_100004D7C(v13, v12);
  v18 = (*(v15 + 8))(v47, v45);
  v19 = v1[89];
  v20 = v1[87];
  v21 = v1[86];
  v23 = Logger.lyrics.unsafeMutableAddressor(v18, v22);
  (*(v20 + 16))(v19, v23, v21);
  swift_errorRetain();
  v24 = sub_1004B8094();
  v25 = sub_1004BC984();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138543362;
    swift_errorRetain();
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v28;
    *v27 = v28;
    _os_log_impl(&_mh_execute_header, v24, v25, "Data request error: %{public}@", v26, 0xCu);
    sub_100007214(v27, &qword_10060A750, &qword_1004DBB10);
  }

  v29 = v1[135];
  v30 = v1[132];
  v44 = v1[131];
  v46 = v1[134];
  v42 = v1[105];
  v43 = v1[129];
  v31 = v24;
  v32 = v1[103];
  v41 = v1[102];
  v33 = v1[101];
  v34 = v1[100];
  v35 = v1[99];
  v36 = v1[89];
  v37 = v1[87];
  v38 = v1[86];

  (*(v37 + 8))(v36, v38);
  swift_willThrow();

  (*(v34 + 8))(v33, v35);
  (*(v32 + 8))(v42, v41);
  sub_100007214(v43, &qword_10060AD30, &qword_1004DCCE8);
  (*(v30 + 8))(v46, v44);

  v39 = v1[1];

  return v39();
}

id LyricsLoader.init()()
{
  v1 = OBJC_IVAR___MusicLyricsLoader_operationQueue;
  v2 = [objc_allocWithZone(NSOperationQueue) init];
  v3 = [v2 setMaxConcurrentOperationCount:1];
  *&v0[v1] = v2;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for LyricsLoader(v3, v4);
  return objc_msgSendSuper2(&v6, "init");
}

id LyricsLoader.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LyricsLoader(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t _s11MusicCoreUI12LyricsLoaderC08supportsD03forSb0A3Kit4SongV_tFZ_0(uint64_t a1)
{
  v2 = sub_1004BB384();
  v3 = *(v2 - 8);
  v190 = v2;
  v191 = v3;
  __chkstk_darwin();
  v5 = &v179 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v188 = &v179 - v6;
  __chkstk_darwin();
  v187 = (&v179 - v7);
  __chkstk_darwin();
  v186 = (&v179 - v8);
  __chkstk_darwin();
  v181 = &v179 - v9;
  __chkstk_darwin();
  v180 = &v179 - v10;
  __chkstk_darwin();
  v12 = &v179 - v11;
  __chkstk_darwin();
  v14 = &v179 - v13;
  __chkstk_darwin();
  v183 = (&v179 - v15);
  __chkstk_darwin();
  v182 = &v179 - v16;
  __chkstk_darwin();
  v185 = &v179 - v17;
  __chkstk_darwin();
  v19 = &v179 - v18;
  v20 = sub_1004B80B4();
  v21 = *(v20 - 8);
  v193 = v20;
  v194 = v21;
  __chkstk_darwin();
  v23 = &v179 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v189 = &v179 - v24;
  __chkstk_darwin();
  v184 = &v179 - v25;
  __chkstk_darwin();
  v27 = &v179 - v26;
  __chkstk_darwin();
  v29 = &v179 - v28;
  __chkstk_darwin();
  v31 = &v179 - v30;
  if ((sub_1004BB374() & 1) == 0)
  {
    v32 = sub_1004BB284();
    if ((v32 & 1) == 0)
    {
      v63 = Logger.lyrics.unsafeMutableAddressor(v32, v33);
      v64 = v193;
      v65 = v194;
      (*(v194 + 16))(v23, v63, v193);
      v66 = v190;
      v67 = v191;
      (v191[2])(v5, a1, v190);
      v68 = sub_1004B8094();
      v69 = sub_1004BC9A4();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *&v198[0] = v71;
        *v70 = 136446210;
        v72 = sub_1002D2C8C();
        v73 = v66;
        v75 = v74;
        (v67[1])(v5, v73);
        v76 = sub_1002C4260(v72, v75, v198);

        *(v70 + 4) = v76;
        _os_log_impl(&_mh_execute_header, v68, v69, "Loader supportsLyrics=false [hasLyrics and hasCustomLyrics were false] %{public}s", v70, 0xCu);
        sub_100004C6C(v71);

        (*(v194 + 8))(v23, v193);
      }

      else
      {

        (v67[1])(v5, v66);
        (*(v65 + 8))(v23, v64);
      }

      v153 = 0;
      return v153 & 1;
    }
  }

  v192 = a1;
  BagProvider.shared.unsafeMutableAddressor();

  v34 = BagProvider.bag.getter();

  if (v34)
  {
    if (([objc_opt_self() supportsLyricsForURLBag:v34] & 1) == 0)
    {
      v77 = [v34 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
      v79 = v192;
      v80 = v190;
      if (v77)
      {

        v83 = Logger.lyrics.unsafeMutableAddressor(v81, v82);
        (*(v194 + 16))(v31, v83, v193);
        v84 = v191;
        v85 = v191[2];
        v85(v19, v79, v80);
        v86 = v185;
        v85(v185, v79, v80);
        v87 = sub_1004B8094();
        v88 = sub_1004BC9A4();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v189 = v34;
          v90 = v89;
          v188 = swift_slowAlloc();
          *&v198[0] = v188;
          *v90 = 136446466;
          v187 = v87;
          v91 = sub_1004BB284();
          if (v91)
          {
            v92 = 1702195828;
          }

          else
          {
            v92 = 0x65736C6166;
          }

          LODWORD(v186) = v88;
          v93 = v80;
          if (v91)
          {
            v94 = 0xE400000000000000;
          }

          else
          {
            v94 = 0xE500000000000000;
          }

          v95 = v84[1];
          v95(v19, v93);
          v96 = sub_1002C4260(v92, v94, v198);

          *(v90 + 4) = v96;
          *(v90 + 12) = 2082;
          v97 = sub_1002D2C8C();
          v99 = v98;
          v95(v86, v93);
          v100 = sub_1002C4260(v97, v99, v198);

          *(v90 + 14) = v100;
          v101 = v187;
          _os_log_impl(&_mh_execute_header, v187, v186, "Loader supportsLyrics=%{public}s [no lyrics keys in bag] %{public}s", v90, 0x16u);
          swift_arrayDestroy();

          v34 = v189;
        }

        else
        {

          v174 = v84[1];
          v174(v86, v80);
          v174(v19, v80);
        }

        (*(v194 + 8))(v31, v193);
      }

      else
      {
        v154 = Logger.lyrics.unsafeMutableAddressor(0, v78);
        (*(v194 + 16))(v29, v154, v193);
        v155 = v191;
        v156 = v191[2];
        v157 = v182;
        v156(v182, v79, v80);
        v158 = v183;
        v156(v183, v79, v80);
        v159 = sub_1004B8094();
        v160 = sub_1004BC9A4();
        if (os_log_type_enabled(v159, v160))
        {
          v161 = swift_slowAlloc();
          v189 = v34;
          v162 = v161;
          v187 = swift_slowAlloc();
          *&v198[0] = v187;
          *v162 = 136446466;
          v186 = v159;
          v163 = sub_1004BB284();
          if (v163)
          {
            v164 = 1702195828;
          }

          else
          {
            v164 = 0x65736C6166;
          }

          v188 = v29;
          v165 = v158;
          if (v163)
          {
            v166 = 0xE400000000000000;
          }

          else
          {
            v166 = 0xE500000000000000;
          }

          LODWORD(v185) = v160;
          v167 = v155[1];
          v167(v157, v80);
          v168 = sub_1002C4260(v164, v166, v198);

          *(v162 + 4) = v168;
          *(v162 + 12) = 2082;
          v169 = sub_1002D2C8C();
          v171 = v170;
          v167(v165, v80);
          v172 = sub_1002C4260(v169, v171, v198);

          *(v162 + 14) = v172;
          v173 = v186;
          _os_log_impl(&_mh_execute_header, v186, v185, "Loader supportsLyrics=%{public}s [no musicSubscription key in bag] %{public}s", v162, 0x16u);
          swift_arrayDestroy();

          v34 = v189;

          (*(v194 + 8))(v188, v193);
        }

        else
        {

          v175 = v155[1];
          v175(v158, v80);
          v175(v157, v80);
          (*(v194 + 8))(v29, v193);
        }
      }

      v176 = sub_1004BB284();

      v153 = v176;
      return v153 & 1;
    }

    v37 = v193;
    v38 = v194;
    v40 = v190;
    v39 = v191;
    v41 = v186;
  }

  else
  {
    v42 = Logger.lyrics.unsafeMutableAddressor(v35, v36);
    v43 = v193;
    (*(v194 + 16))(v27, v42, v193);
    v39 = v191;
    v44 = v192;
    v45 = v191[2];
    v46 = v190;
    v45(v14, v192, v190);
    v45(v12, v44, v46);
    v47 = sub_1004B8094();
    v48 = sub_1004BC9A4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v185 = swift_slowAlloc();
      *&v198[0] = v185;
      *v49 = 136446466;
      v183 = v47;
      v50 = sub_1004BB284();
      if (v50)
      {
        v51 = 1702195828;
      }

      else
      {
        v51 = 0x65736C6166;
      }

      if (v50)
      {
        v52 = 0xE400000000000000;
      }

      else
      {
        v52 = 0xE500000000000000;
      }

      v53 = v190;
      LODWORD(v182) = v48;
      v54 = v191[1];
      v54(v14, v190);
      v55 = sub_1002C4260(v51, v52, v198);
      v39 = v191;

      *(v49 + 4) = v55;
      *(v49 + 12) = 2082;
      v56 = sub_1002D2C8C();
      v58 = v57;
      v54(v12, v53);
      v59 = v193;
      v38 = v194;
      v60 = sub_1002C4260(v56, v58, v198);

      *(v49 + 14) = v60;
      v61 = v183;
      _os_log_impl(&_mh_execute_header, v183, v182, "Loader supportsLyrics=%{public}s [bag is nil] %{public}s", v49, 0x16u);
      swift_arrayDestroy();

      v62 = v27;
      v37 = v59;
      (*(v38 + 8))(v62, v59);
      v40 = v53;
      v41 = v186;
    }

    else
    {

      v102 = v39[1];
      v103 = v12;
      v40 = v190;
      v102(v103, v190);
      v102(v14, v40);
      v104 = v194;
      (*(v194 + 8))(v27, v43);
      v41 = v186;
      v37 = v43;
      v38 = v104;
    }
  }

  v105 = sub_1004BB374();
  v107 = v189;
  v108 = v187;
  if (v105 & 1) != 0 && (static ApplicationCapabilities.shared.getter(v196), v109 = v197, , sub_100051DEC(v196), v110 = sub_1000FE42C(2u, v109), v105 = , (v110))
  {
    static ApplicationCapabilities.shared.getter(v198);
    v111 = sub_100051DEC(v198);
    if (BYTE10(v198[0]))
    {
      v153 = 1;
      return v153 & 1;
    }

    v113 = Logger.lyrics.unsafeMutableAddressor(v111, v112);
    v114 = v184;
    (*(v38 + 16))(v184, v113, v37);
    v115 = v39[2];
    v116 = v180;
    v117 = v192;
    v115(v180, v192, v40);
    v118 = v39;
    v119 = v37;
    v120 = v181;
    v115(v181, v117, v40);
    v121 = sub_1004B8094();
    v122 = sub_1004BC9A4();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      v195 = v191;
      *v123 = 67240450;
      v124 = sub_1004BB284() & 1;
      v125 = v118[1];
      v125(v116, v40);
      *(v123 + 4) = v124;
      *(v123 + 8) = 2082;
      v126 = sub_1002D2C8C();
      v127 = v120;
      v128 = v194;
      v130 = v129;
      v125(v127, v40);
      v131 = sub_1002C4260(v126, v130, &v195);

      *(v123 + 10) = v131;
      _os_log_impl(&_mh_execute_header, v121, v122, "Loader supportsLyrics=%{BOOL,public}d [not supported by subscription] subscriptionCapabilities.contains(.catalogLyricsViewing)=false %{public}s", v123, 0x12u);
      sub_100004C6C(v191);

      (*(v128 + 8))(v184, v193);
    }

    else
    {
      v178 = v118[1];
      v178(v116, v40);

      v178(v120, v40);
      (*(v194 + 8))(v114, v119);
    }
  }

  else
  {
    v132 = Logger.lyrics.unsafeMutableAddressor(v105, v106);
    (*(v38 + 16))(v107, v132, v37);
    v133 = v39[2];
    v134 = v192;
    v133(v41, v192, v40);
    v135 = v108;
    v133(v108, v134, v40);
    v136 = v188;
    v133(v188, v134, v40);
    v137 = sub_1004B8094();
    v138 = sub_1004BC9A4();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      v195 = v191;
      *v139 = 67240962;
      LODWORD(v186) = v138;
      v140 = sub_1004BB284() & 1;
      v141 = v39[1];
      v141(v41, v40);
      *(v139 + 4) = v140;
      v142 = v135;
      v143 = v194;
      *(v139 + 8) = 1026;
      v144 = sub_1004BB374() & 1;
      v141(v142, v40);
      *(v139 + 10) = v144;
      *(v139 + 14) = 1026;
      static ApplicationCapabilities.shared.getter(v198);
      v145 = v199;

      sub_100051DEC(v198);
      v146 = sub_1000FE42C(2u, v145);

      *(v139 + 16) = v146 & 1;
      *(v139 + 20) = 2082;
      v147 = v188;
      v148 = sub_1002D2C8C();
      v150 = v149;
      v141(v147, v40);
      v151 = sub_1002C4260(v148, v150, &v195);

      *(v139 + 22) = v151;
      _os_log_impl(&_mh_execute_header, v137, v186, "Loader supportsLyrics=%{BOOL,public}d [can't support store lyrics] song.hasLyrics=%{BOOL,public}d allowsSubscriptionContent=%{BOOL,public}d %{public}s", v139, 0x1Eu);
      sub_100004C6C(v191);

      (*(v143 + 8))(v189, v193);
    }

    else
    {
      v152 = v39[1];
      v152(v135, v40);
      v152(v41, v40);

      v152(v136, v40);
      (*(v194 + 8))(v107, v193);
    }
  }

  v153 = sub_1004BB284();
  return v153 & 1;
}

unint64_t sub_1002DB940()
{
  result = qword_10060AC90;
  if (!qword_10060AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060AC90);
  }

  return result;
}

unint64_t sub_1002DB994()
{
  result = qword_10060ACA0;
  if (!qword_10060ACA0)
  {
    sub_1004BB384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060ACA0);
  }

  return result;
}

uint64_t _s11MusicCoreUI12LyricsLoaderC08supportsD03forSbSo11MPModelSongC_tFZ_0(void *a1, uint64_t a2)
{
  v202 = sub_1004B80B4();
  v3 = *(v202 - 8);
  __chkstk_darwin();
  v5 = &v193 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v193 - v6;
  __chkstk_darwin();
  v9 = &v193 - v8;
  __chkstk_darwin();
  v11 = &v193 - v10;
  __chkstk_darwin();
  v13 = &v193 - v12;
  __chkstk_darwin();
  v15 = &v193 - v14;
  *&v16 = __chkstk_darwin().n128_u64[0];
  v18 = &v193 - v17;
  v19 = [a1 lyrics];
  v201 = v19;
  if (v19)
  {
    if ([a1 hasVideo])
    {

      goto LABEL_4;
    }

    v199 = v9;
    v200 = v3;
    v33 = v201;
    v34 = [v201 hasLibraryLyrics];
    v35 = [v33 hasStoreLyrics];
    if ((v35 & 1) == 0 && !v34)
    {
      v37 = Logger.lyrics.unsafeMutableAddressor(v35, v36);
      v38 = v200;
      v39 = v202;
      (*(v200 + 16))(v7, v37, v202);
      v40 = a1;
      v41 = v201;
      v42 = sub_1004B8094();
      v43 = sub_1004BC9A4();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v201 = swift_slowAlloc();
        *&v206[0] = v201;
        *v44 = 67240962;
        *(v44 + 4) = [v41 hasLibraryLyrics];
        *(v44 + 8) = 1026;
        *(v44 + 10) = [v41 hasStoreLyrics];

        *(v44 + 14) = 2082;
        v45 = [v40 title];
        if (v45)
        {
          v46 = v45;
          v47 = sub_1004BBE64();
          v49 = v48;
        }

        else
        {
          v47 = 0;
          v49 = 0;
        }

        *&v208[0] = v47;
        *(&v208[0] + 1) = v49;
        sub_100003ABC(&qword_100610D60, &qword_1004E4540);
        v96 = sub_1004BBF04();
        v98 = sub_1002C4260(v96, v97, v206);

        *(v44 + 16) = v98;
        *(v44 + 24) = 2082;
        v99 = [v40 identifiers];
        v100 = [v99 description];
        v101 = sub_1004BBE64();
        v103 = v102;

        v104 = sub_1002C4260(v101, v103, v206);

        *(v44 + 26) = v104;
        _os_log_impl(&_mh_execute_header, v42, v43, "Loader supportsLyrics=false [no lyrics found] lyrics.hasLibraryLyrics=%{BOOL,public}d lyrics.hasStoreLyrics=%{BOOL,public}d song.title=%{public}s song.identifiers=%{public}s", v44, 0x22u);
        swift_arrayDestroy();

        (*(v200 + 8))(v7, v202);
      }

      else
      {

        (*(v38 + 8))(v7, v39);
      }

      return 0;
    }

    v198 = v34;
    BagProvider.shared.unsafeMutableAddressor();

    v50 = BagProvider.bag.getter();

    if (v50)
    {
      v53 = [objc_opt_self() supportsLyricsForURLBag:v50];
      v54 = v200;
      if ((v53 & 1) == 0)
      {
        v199 = v50;
        v80 = [v50 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
        if (v80)
        {

          v84 = Logger.lyrics.unsafeMutableAddressor(v82, v83);
          v85 = v202;
          (*(v54 + 16))(v18, v84, v202);
          v86 = v54;
          v87 = a1;
          v88 = sub_1004B8094();
          v89 = sub_1004BC9A4();

          if (os_log_type_enabled(v88, v89))
          {
            v90 = swift_slowAlloc();
            v197 = swift_slowAlloc();
            *&v206[0] = v197;
            *v90 = 67240706;
            *(v90 + 4) = v198;
            *(v90 + 8) = 2082;
            v91 = [v87 title];
            if (v91)
            {
              v92 = v91;
              v93 = sub_1004BBE64();
              v95 = v94;
            }

            else
            {
              v93 = 0;
              v95 = 0;
            }

            *&v208[0] = v93;
            *(&v208[0] + 1) = v95;
            sub_100003ABC(&qword_100610D60, &qword_1004E4540);
            v166 = sub_1004BBF04();
            v168 = sub_1002C4260(v166, v167, v206);

            *(v90 + 10) = v168;
            *(v90 + 18) = 2082;
            v169 = [v87 identifiers];
            v170 = [v169 description];
            v171 = sub_1004BBE64();
            v173 = v172;

            v174 = sub_1002C4260(v171, v173, v206);

            *(v90 + 20) = v174;
            _os_log_impl(&_mh_execute_header, v88, v89, "Loader supportsLyrics=%{BOOL,public}d [no lyrics keys in bag] song.title=%{public}s song.identifiers=%{public}s", v90, 0x1Cu);
            swift_arrayDestroy();

            (*(v200 + 8))(v18, v202);
            return v198;
          }

          (*(v86 + 8))(v18, v85);
        }

        else
        {
          v105 = Logger.lyrics.unsafeMutableAddressor(0, v81);
          v106 = v202;
          (*(v54 + 16))(v15, v105, v202);
          v107 = v54;
          v108 = a1;
          v109 = sub_1004B8094();
          v110 = sub_1004BC9A4();

          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            v197 = swift_slowAlloc();
            *&v206[0] = v197;
            *v111 = 67240706;
            *(v111 + 4) = v198;
            *(v111 + 8) = 2082;
            v112 = [v108 title];
            if (v112)
            {
              v113 = v112;
              v114 = sub_1004BBE64();
              v116 = v115;
            }

            else
            {
              v114 = 0;
              v116 = 0;
            }

            *&v208[0] = v114;
            *(&v208[0] + 1) = v116;
            sub_100003ABC(&qword_100610D60, &qword_1004E4540);
            v175 = sub_1004BBF04();
            v177 = sub_1002C4260(v175, v176, v206);

            *(v111 + 10) = v177;
            *(v111 + 18) = 2082;
            v178 = [v108 identifiers];
            v179 = [v178 description];
            v180 = sub_1004BBE64();
            v182 = v181;

            v183 = sub_1002C4260(v180, v182, v206);

            *(v111 + 20) = v183;
            _os_log_impl(&_mh_execute_header, v109, v110, "Loader supportsLyrics=%{BOOL,public}d [no musicSubscription key in bag] song.title=%{public}s song.identifiers=%{public}s", v111, 0x1Cu);
            swift_arrayDestroy();

            (*(v200 + 8))(v15, v202);
            return v198;
          }

          (*(v107 + 8))(v15, v106);
        }

        return v198;
      }

      v55 = v11;

      v56 = v202;
    }

    else
    {
      v67 = Logger.lyrics.unsafeMutableAddressor(v51, v52);
      v54 = v200;
      v56 = v202;
      (*(v200 + 16))(v13, v67, v202);
      v68 = a1;
      v69 = sub_1004B8094();
      v70 = sub_1004BC9A4();

      v55 = v11;
      if (os_log_type_enabled(v69, v70))
      {
        v195 = v70;
        v196 = v11;
        v197 = v69;
        v71 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        *&v206[0] = v194;
        *v71 = 67240706;
        *(v71 + 4) = v198;
        v72 = v71;
        *(v71 + 8) = 2082;
        v73 = v68;
        v74 = [v68 title];
        v75 = &off_1005F2000;
        if (v74)
        {
          v76 = v74;
          v77 = sub_1004BBE64();
          v79 = v78;
        }

        else
        {
          v77 = 0;
          v79 = 0;
        }

        *&v208[0] = v77;
        *(&v208[0] + 1) = v79;
        sub_100003ABC(&qword_100610D60, &qword_1004E4540);
        v117 = sub_1004BBF04();
        v119 = sub_1002C4260(v117, v118, v206);

        *(v72 + 10) = v119;
        *(v72 + 18) = 2082;
        v120 = [v73 identifiers];
        v121 = [v120 description];
        v122 = sub_1004BBE64();
        v124 = v123;

        v125 = sub_1002C4260(v122, v124, v206);

        *(v72 + 20) = v125;
        v126 = v197;
        _os_log_impl(&_mh_execute_header, v197, v195, "Loader supportsLyrics=%{BOOL,public}d [bag is nil] song.title=%{public}s song.identifiers=%{public}s", v72, 0x1Cu);
        swift_arrayDestroy();

        v56 = v202;
        (*(v54 + 8))(v13, v202);
        v55 = v196;
LABEL_38:
        v127 = [v201 v75[489]];
        if (v127 && (static ApplicationCapabilities.shared.getter(v206), v129 = v207, , sub_100051DEC(v206), v130 = sub_1000FE42C(2u, v129), v127 = , (v130 & 1) != 0))
        {
          static ApplicationCapabilities.shared.getter(v208);
          v131 = sub_100051DEC(v208);
          if (BYTE10(v208[0]))
          {

            return 1;
          }

          v133 = Logger.lyrics.unsafeMutableAddressor(v131, v132);
          (*(v54 + 16))(v55, v133, v56);
          v134 = a1;
          v135 = sub_1004B8094();
          v136 = sub_1004BC9A4();

          if (os_log_type_enabled(v135, v136))
          {
            v137 = swift_slowAlloc();
            v199 = swift_slowAlloc();
            v205 = v199;
            *v137 = 67240706;
            *(v137 + 4) = v198;
            *(v137 + 8) = 2082;
            v138 = [v134 title];
            if (v138)
            {
              v139 = v138;
              v140 = sub_1004BBE64();
              v142 = v141;
            }

            else
            {
              v140 = 0;
              v142 = 0;
            }

            v203 = v140;
            v204 = v142;
            sub_100003ABC(&qword_100610D60, &qword_1004E4540);
            v184 = sub_1004BBF04();
            v186 = sub_1002C4260(v184, v185, &v205);

            *(v137 + 10) = v186;
            *(v137 + 18) = 2082;
            v187 = [v134 identifiers];
            v188 = [v187 description];
            v189 = sub_1004BBE64();
            v191 = v190;

            v192 = sub_1002C4260(v189, v191, &v205);

            *(v137 + 20) = v192;
            _os_log_impl(&_mh_execute_header, v135, v136, "Loader supportsLyrics=%{BOOL,public}d [not supported by subscription] subscriptionCapabilities.contains(.catalogLyricsViewing)=false song.title=%{public}s song.identifiers=%{public}s", v137, 0x1Cu);
            swift_arrayDestroy();

            (*(v200 + 8))(v55, v202);
            return v198;
          }

          (*(v54 + 8))(v55, v56);
        }

        else
        {
          v143 = Logger.lyrics.unsafeMutableAddressor(v127, v128);
          v144 = v199;
          (*(v54 + 16))(v199, v143, v56);
          v145 = a1;
          v146 = v201;
          v147 = sub_1004B8094();
          v148 = sub_1004BC9A4();

          if (os_log_type_enabled(v147, v148))
          {
            v149 = swift_slowAlloc();
            v201 = swift_slowAlloc();
            v205 = v201;
            *v149 = 67241218;
            *(v149 + 4) = v198;
            *(v149 + 8) = 1026;
            *(v149 + 10) = [v146 v75[489]];

            *(v149 + 14) = 1026;
            static ApplicationCapabilities.shared.getter(v208);
            v150 = v209;

            sub_100051DEC(v208);
            v151 = sub_1000FE42C(2u, v150);

            *(v149 + 16) = v151 & 1;
            *(v149 + 20) = 2082;
            v152 = [v145 title];
            if (v152)
            {
              v153 = v152;
              v154 = sub_1004BBE64();
              v156 = v155;
            }

            else
            {
              v154 = 0;
              v156 = 0;
            }

            v203 = v154;
            v204 = v156;
            sub_100003ABC(&qword_100610D60, &qword_1004E4540);
            v157 = sub_1004BBF04();
            v159 = sub_1002C4260(v157, v158, &v205);

            *(v149 + 22) = v159;
            *(v149 + 30) = 2082;
            v160 = [v145 identifiers];
            v161 = [v160 description];
            v162 = sub_1004BBE64();
            v164 = v163;

            v165 = sub_1002C4260(v162, v164, &v205);

            *(v149 + 32) = v165;
            _os_log_impl(&_mh_execute_header, v147, v148, "Loader supportsLyrics=%{BOOL,public}d [can't support store lyrics] lyrics.hasStoreLyrics=%{BOOL,public}d allowsSubscriptionContent=%{BOOL,public}d song.title=%{public}s song.identifiers=%{public}s", v149, 0x28u);
            swift_arrayDestroy();

            (*(v200 + 8))(v199, v202);
            return v198;
          }

          (*(v54 + 8))(v144, v56);
        }

        return v198;
      }

      (*(v54 + 8))(v13, v56);
    }

    v75 = &off_1005F2000;
    goto LABEL_38;
  }

LABEL_4:
  v21 = Logger.lyrics.unsafeMutableAddressor(v19, v20);
  v22 = v202;
  (*(v3 + 16))(v5, v21, v202);
  v23 = v3;
  v24 = a1;
  v25 = sub_1004B8094();
  v26 = sub_1004BC9A4();

  if (os_log_type_enabled(v25, v26))
  {
    v200 = v23;
    v27 = swift_slowAlloc();
    *&v206[0] = swift_slowAlloc();
    *v27 = 136446466;
    v28 = [v24 title];
    if (v28)
    {
      v29 = v28;
      v30 = sub_1004BBE64();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    *&v208[0] = v30;
    *(&v208[0] + 1) = v32;
    sub_100003ABC(&qword_100610D60, &qword_1004E4540);
    v57 = sub_1004BBF04();
    v59 = sub_1002C4260(v57, v58, v206);

    *(v27 + 4) = v59;
    *(v27 + 12) = 2082;
    v60 = [v24 identifiers];
    v61 = [v60 description];
    v62 = sub_1004BBE64();
    v64 = v63;

    v65 = sub_1002C4260(v62, v64, v206);

    *(v27 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v25, v26, "Loader supportsLyrics=false [MPModelLyrics was nil] song.title=%{public}s song.identifiers=%{public}s", v27, 0x16u);
    swift_arrayDestroy();

    (*(v200 + 8))(v5, v202);
  }

  else
  {

    (*(v23 + 8))(v5, v22);
  }

  return 0;
}

unint64_t sub_1002DCCDC(uint64_t a1, uint64_t a2)
{
  result = qword_10060ACD0;
  if (!qword_10060ACD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10060ACD0);
  }

  return result;
}

unint64_t sub_1002DCD50()
{
  result = qword_10060ACE0;
  if (!qword_10060ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060ACE0);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Corner(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1002DCDC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002DCE0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002DCE7C()
{
  v1 = sub_100003ABC(&qword_10060AD10, &qword_1004DCCC8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_1002DCF28(void *a1, uint64_t a2)
{
  v5 = *(sub_100003ABC(&qword_10060AD10, &qword_1004DCCC8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_1002D5B04(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1002DCFE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002DCFFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060AD30, &qword_1004DCCE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002DD06C()
{
  result = qword_10060AD40;
  if (!qword_10060AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060AD40);
  }

  return result;
}

unint64_t sub_1002DD0C0()
{
  result = qword_10060AD50;
  if (!qword_10060AD50)
  {
    sub_100003B68(&qword_10060AD48, &qword_1004DCCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060AD50);
  }

  return result;
}

uint64_t Lyrics.StateManager.__allocating_init()()
{
  v0 = swift_allocObject();
  Lyrics.StateManager.init()();
  return v0;
}

uint64_t Lyrics.StateManager.init()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for Lyrics.StateManager.State(0);
  v4 = v2 + *(v3 + 20);
  v5 = enum case for ScenePhase.inactive(_:);
  v6 = sub_1004B8724();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v4 + *(v7 + 20)) = 0;
  *(v4 + *(v7 + 24)) = 0;
  v8 = *(v3 + 24);
  v9 = sub_1004B6CD4();
  (*(*(v9 - 8) + 56))(v2 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist) = 0;
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v11 = sub_1004BB384();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__showTranslationButton) = 0;
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__needsLyricsReset) = 0;
  v12 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation;
  v13 = type metadata accessor for Lyrics.Translation(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  v15 = type metadata accessor for Lyrics.Transliteration(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__metricsPage;
  v17 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader) = [objc_allocWithZone(type metadata accessor for LyricsLoader(0 v18))];
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask) = 0;
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__optionsObserver) = 0;
  v19 = [objc_allocWithZone(MPCLyricsReportingController) init];
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) = v19;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  v20 = *LyricsOptionsManager.shared.unsafeMutableAddressor();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = *(*v20 + 224);

  v22(sub_1002DE400, v21);

  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B70F4();

  return v1;
}

uint64_t sub_1002DD5B4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t Lyrics.StateManager.state.setter(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v10 - v5;
  v7 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_1002EAA00(v1 + v7, v6, type metadata accessor for Lyrics.StateManager.State);
  v8 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(v6, a1);
  sub_1002EAA68(v6, type metadata accessor for Lyrics.StateManager.State);
  if (v8)
  {
    sub_1002EAA00(a1, v6, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA00(v1 + v7, v4, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1002EB154(v6, v1 + v7, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002DE560(v4);
    sub_1002EAA68(v4, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA68(v6, type metadata accessor for Lyrics.StateManager.State);
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_1004B70F4();
  }

  return sub_1002EAA68(a1, type metadata accessor for Lyrics.StateManager.State);
}

void sub_1002DD8A0(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 & 1;
  v6 = *a2;
  swift_beginAccess();
  if (*(v4 + v6) == v5)
  {
    *(v4 + v6) = v5;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_1004B70F4();
  }
}

void sub_1002DD9BC(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader;
  v6 = *(v2 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
  type metadata accessor for LyricsLoader(0, a2);
  v7 = v6;
  v8 = sub_1004BCFA4();

  if (v8)
  {
    v9 = *(v3 + v5);
    *(v3 + v5) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_1004B70F4();
  }
}

void sub_1002DDB20(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController;
  v5 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController);
  sub_100009130(0, &qword_10060B3C0, MPCLyricsReportingController_ptr);
  v6 = v5;
  v7 = sub_1004BCFA4();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_1004B70F4();
  }
}

void sub_1002DDC94(uint64_t a1, uint64_t a2)
{
  sub_100003ABC(&qword_10060AE00, &qword_1004DCE70);
  __chkstk_darwin();
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v44 - v5;
  __chkstk_darwin();
  v8 = &v44 - v7;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_getKeyPath();
    v15 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
    v57 = v14;
    v16 = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    v53 = v15;
    v54 = v16;
    sub_1004B7104();

    v17 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_1002EAA00(v14 + v17, v12, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA00(v12, v10, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA68(v12, type metadata accessor for Lyrics.StateManager.State);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      sub_1002EAA68(v10, type metadata accessor for Lyrics.StateManager.State.Loading);
      return;
    }

    v51 = v4;
    v52 = a1;
    v18 = *v10;
    v19 = *(v10 + 1);
    v21 = *(v10 + 2);
    v20 = *(v10 + 3);
    v22 = v10[32];
    v23 = *(sub_100003ABC(&qword_10060ADE8, &qword_1004DCDC0) + 48);
    v24 = sub_1004BB384();
    v25 = (*(*(v24 - 8) + 8))(&v10[v23], v24);
    if (v22 != 1)
    {

      return;
    }

    v26 = v19;
    v49 = v21;
    v50 = v20;
    v27 = (*v18 + 312);
    v28 = *v27;
    v29 = v27;
    (*v27)(v25);
    v30 = type metadata accessor for Lyrics.Transliteration(0);
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    v47 = v30;
    if ((v32)(v8, 1) == 1)
    {

      sub_1002EBD88(v18, v26, v49, v50, 1);
      v33 = v8;
    }

    else
    {
      v46 = v31;
      v44 = v29;
      v45 = v28;
      v48 = v18;
      sub_100007214(v8, &qword_10060AE00, &qword_1004DCE70);
      v34 = sub_1003A829C(3, v52);
      v35 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

      LODWORD(v35) = v35(3) & 1;

      if (v34 == v35)
      {
        sub_1002EBD88(v48, v26, v49, v50, 1);

        return;
      }

      v52 = v26;
      (*(*v48 + 440))(v36);
      swift_getKeyPath();
      v56 = v14;
      sub_1004B7104();

      v37 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
      swift_beginAccess();
      sub_10000F778(v14 + v37, v6, &qword_10060AE00, &qword_1004DCE70);
      v38 = v47;
      v39 = v32(v6, 1, v47);
      sub_100007214(v6, &qword_10060AE00, &qword_1004DCE70);
      v40 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__needsLyricsReset;
      v41 = swift_beginAccess();
      if (*(v14 + v40) == 1)
      {
        *(v14 + v40) = 1;
      }

      else
      {
        swift_getKeyPath();
        __chkstk_darwin();
        *(&v44 - 2) = v14;
        *(&v44 - 8) = 1;
        v55 = v14;
        sub_1004B70F4();
      }

      v42 = v51;
      if (v39 == 1)
      {
        (*(v46 + 56))(v51, 1, 1, v38);
        v43 = v48;
      }

      else
      {
        v43 = v48;
        v45(v41);
      }

      swift_getKeyPath();
      __chkstk_darwin();
      *(&v44 - 2) = v14;
      *(&v44 - 1) = v42;
      v55 = v14;
      sub_1004B70F4();
      sub_1002EBD88(v43, v52, v49, v50, 1);

      v33 = v42;
    }

    sub_100007214(v33, &qword_10060AE00, &qword_1004DCE70);
  }
}

uint64_t Lyrics.StateManager.State.lyrics.getter()
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002EAA00(v0, v2, type metadata accessor for Lyrics.StateManager.State.Loading);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1002EAA68(v2, type metadata accessor for Lyrics.StateManager.State.Loading);
    return 0;
  }

  v3 = *v2;
  v4 = v2[32];
  v5 = *(sub_100003ABC(&qword_10060ADE8, &qword_1004DCDC0) + 48);
  v6 = sub_1004BB384();
  (*(*(v6 - 8) + 8))(&v2[v5], v6);
  if ((v4 & 1) == 0)
  {

    return 0;
  }

  return v3;
}

double sub_1002DE560(uint64_t a1)
{
  v2 = v1;
  sub_100003ABC(&qword_10060B3F0, &qword_1004DD248);
  __chkstk_darwin();
  v5 = &v74[-v4];
  v6 = sub_1004B8724();
  v87 = *(v6 - 8);
  __chkstk_darwin();
  v86 = &v74[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  __chkstk_darwin();
  v88 = &v74[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100003ABC(&qword_10060AE00, &qword_1004DCE70);
  __chkstk_darwin();
  v83 = &v74[-v9];
  sub_100003ABC(&qword_10060ADF8, &qword_1004DCE40);
  __chkstk_darwin();
  v82 = &v74[-v10];
  v95 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v85 = &v74[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v13 = &v74[-v12];
  v14 = sub_1004B80B4();
  v91 = *(v14 - 8);
  v92 = v14;
  __chkstk_darwin();
  v16 = &v74[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v81 = &v74[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v19 = &v74[-v18];
  __chkstk_darwin();
  v21 = &v74[-v20];
  swift_getKeyPath();
  v22 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v97[3] = v2;
  v23 = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  v84 = v22;
  v89 = v23;
  sub_1004B7104();

  v24 = v2 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  v93 = v24;
  sub_1002EAA00(v24, v21, type metadata accessor for Lyrics.StateManager.State);
  v90 = a1;
  LOBYTE(v24) = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(v21, a1);
  v25 = sub_1002EAA68(v21, type metadata accessor for Lyrics.StateManager.State);
  if ((v24 & 1) == 0)
  {
    v78 = v6;
    v79 = v5;
    v28 = Logger.lyrics.unsafeMutableAddressor(v25, v26);
    (*(v91 + 16))(v16, v28, v92);
    sub_1002EAA00(v90, v19, type metadata accessor for Lyrics.StateManager.State);

    v29 = sub_1004B8094();
    v30 = sub_1004BC9A4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v97[0] = v77;
      *v31 = 136446466;
      sub_1002EAA00(v19, v21, type metadata accessor for Lyrics.StateManager.State);
      v32 = sub_1004BBF04();
      v76 = v29;
      v33 = v32;
      v75 = v30;
      v35 = v34;
      sub_1002EAA68(v19, type metadata accessor for Lyrics.StateManager.State);
      v36 = sub_1002C4260(v33, v35, v97);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2082;
      swift_getKeyPath();
      v96 = v2;
      sub_1004B7104();

      v37 = v93;
      sub_1002EAA00(v93, v21, type metadata accessor for Lyrics.StateManager.State);
      v38 = sub_1004BBF04();
      v40 = sub_1002C4260(v38, v39, v97);

      *(v31 + 14) = v40;
      v41 = v76;
      _os_log_impl(&_mh_execute_header, v76, v75, "[State] changed from %{public}s to %{public}s", v31, 0x16u);
      swift_arrayDestroy();

      (*(v91 + 8))(v16, v92);
    }

    else
    {

      sub_1002EAA68(v19, type metadata accessor for Lyrics.StateManager.State);
      (*(v91 + 8))(v16, v92);
      v37 = v93;
    }

    swift_getKeyPath();
    v97[0] = v2;
    sub_1004B7104();

    v42 = v81;
    sub_1002EAA00(v37, v81, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA00(v42, v13, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA68(v42, type metadata accessor for Lyrics.StateManager.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = *v13;
      v44 = v13[32];
      v45 = *(sub_100003ABC(&qword_10060ADE8, &qword_1004DCDC0) + 48);
      v46 = sub_1004BB384();
      (*(*(v46 - 8) + 8))(&v13[v45], v46);
      if (v44)
      {
        v47 = v85;
        v48 = v83;
        if (v43)
        {
          v49 = *(*v43 + 288);

          v51 = v82;
          v49(v50);

          v52 = type metadata accessor for Lyrics.Translation(0);
          v53 = 1;
          v54 = (*(*(v52 - 8) + 48))(v51, 1, v52);
          sub_100007214(v51, &qword_10060ADF8, &qword_1004DCE40);
          if (v54 != 1)
          {
            goto LABEL_17;
          }

          v55 = *(*v43 + 312);

          v55(v56);

          v57 = type metadata accessor for Lyrics.Transliteration(0);
          v53 = 1;
          if ((*(*(v57 - 8) + 48))(v48, 1, v57) != 1)
          {
LABEL_16:
            sub_100007214(v48, &qword_10060AE00, &qword_1004DCE70);
LABEL_17:
            v61 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__showTranslationButton;
            swift_beginAccess();
            if (v53 == *(v2 + v61))
            {
              *(v2 + v61) = v53;
            }

            else
            {
              swift_getKeyPath();
              __chkstk_darwin();
              *&v74[-16] = v2;
              v74[-8] = v53;
              v96 = v2;
              sub_1004B70F4();
            }

            v62 = v79;
            swift_getKeyPath();
            v96 = v2;
            sub_1004B7104();

            v63 = v93;
            sub_1002EAA00(v93, v47, type metadata accessor for Lyrics.StateManager.State.Loading);
            swift_getKeyPath();
            v96 = v2;
            sub_1004B7104();

            v64 = v63 + *(v94 + 20);
            v65 = v88;
            sub_1002EAA00(v64, v88, type metadata accessor for Lyrics.StateManager.State.Display);
            v67 = v86;
            v66 = v87;
            v68 = v78;
            (*(v87 + 104))(v86, enum case for ScenePhase.active(_:), v78);
            v69 = sub_1004B8714();
            (*(v66 + 8))(v67, v68);
            if ((v69 & 1) != 0 && v65[*(v80 + 20)] == 1)
            {
              v70 = v65[*(v80 + 24)];
            }

            else
            {
              v70 = 0;
            }

            sub_1002EAA68(v65, type metadata accessor for Lyrics.StateManager.State.Display);
            sub_1002EC360(v47, v62);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload)
            {
              if (EnumCaseMultiPayload == 1)
              {
                sub_1002EBD88(*v62, *(v62 + 8), *(v62 + 16), *(v62 + 24), *(v62 + 32));
                v72 = *(sub_100003ABC(&qword_10060ADE8, &qword_1004DCDC0) + 48);
                v73 = sub_1004BB384();
                (*(*(v73 - 8) + 8))(v62 + v72, v73);
                if (v70)
                {
                  goto LABEL_30;
                }
              }
            }

            else
            {
              sub_1002EAA68(v62, type metadata accessor for Lyrics.StateManager.State.Loading);
            }

            sub_1002E8368(v90);
LABEL_30:
            sub_1002E7A44();

            return result;
          }

LABEL_15:
          v53 = 0;
          goto LABEL_16;
        }

LABEL_14:
        v58 = type metadata accessor for Lyrics.Translation(0);
        v59 = v82;
        (*(*(v58 - 8) + 56))(v82, 1, 1, v58);
        sub_100007214(v59, &qword_10060ADF8, &qword_1004DCE40);
        v60 = type metadata accessor for Lyrics.Transliteration(0);
        (*(*(v60 - 8) + 56))(v48, 1, 1, v60);
        goto LABEL_15;
      }

      v47 = v85;
    }

    else
    {
      sub_1002EAA68(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
      v47 = v85;
    }

    v48 = v83;
    goto LABEL_14;
  }

  return result;
}

void (*sub_1002DF26C(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(type metadata accessor for Lyrics.StateManager.State(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_1002EAA00(v1 + v8, v7, type metadata accessor for Lyrics.StateManager.State);
  return sub_1002DF394;
}

void sub_1002DF394(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_1002EAA00(*(*a1 + 12), v6, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA00(v7 + v4, v5, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1002EB154(v6, v7 + v4, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002DE560(v5);
    sub_1002EAA68(v5, type metadata accessor for Lyrics.StateManager.State);
  }

  else
  {
    sub_1002EAA00(v7 + v4, v6, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1002EB154(v3, v7 + v4, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002DE560(v6);
  }

  sub_1002EAA68(v6, type metadata accessor for Lyrics.StateManager.State);
  sub_1002EAA68(v3, type metadata accessor for Lyrics.StateManager.State);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t Lyrics.StateManager.state.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B7104();

  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  return sub_1002EAA00(v5 + v3, a1, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t sub_1002DF5E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B7104();

  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  return sub_1002EAA00(v3 + v4, a2, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t sub_1002DF6BC(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002EAA00(a1, v3, type metadata accessor for Lyrics.StateManager.State);
  return Lyrics.StateManager.state.setter(v3);
}

uint64_t sub_1002DF75C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v10[-v6];
  sub_1002EAA00(a2, &v10[-v6], type metadata accessor for Lyrics.StateManager.State);
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_1002EAA00(a1 + v8, v5, type metadata accessor for Lyrics.StateManager.State);
  swift_beginAccess();
  sub_1002EB154(v7, a1 + v8, type metadata accessor for Lyrics.StateManager.State);
  swift_endAccess();
  sub_1002DE560(v5);
  sub_1002EAA68(v5, type metadata accessor for Lyrics.StateManager.State);
  return sub_1002EAA68(v7, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t (*Lyrics.StateManager.state.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B7104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004B7124();

  v4[7] = sub_1002DF26C(v4);
  return sub_1002DF9D8;
}

void sub_1002DF9E4()
{
  v1 = v0;
  sub_100003ABC(&qword_10060AE00, &qword_1004DCE70);
  __chkstk_darwin();
  v3 = v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = v46 - v4;
  __chkstk_darwin();
  v6 = v46 - v5;
  __chkstk_darwin();
  v8 = v46 - v7;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v56 = v1;
  v52 = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  v53 = v13;
  sub_1004B7104();

  v14 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v15 = *(v1 + v14);
  if (v15)
  {
    v16 = [v15 vocalsControlCommand];
    if (v16)
    {
      v17 = [v16 isActive];
      swift_unknownObjectRelease();
      if (v17)
      {
        swift_getKeyPath();
        v55 = v1;
        sub_1004B7104();

        v18 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
        swift_beginAccess();
        sub_1002EAA00(v1 + v18, v12, type metadata accessor for Lyrics.StateManager.State);
        sub_1002EAA00(v12, v10, type metadata accessor for Lyrics.StateManager.State.Loading);
        sub_1002EAA68(v12, type metadata accessor for Lyrics.StateManager.State);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v19 = *v10;
          v20 = *(v10 + 1);
          v21 = *(v10 + 3);
          v49 = *(v10 + 2);
          v50 = v21;
          v22 = v10[32];
          v23 = *(sub_100003ABC(&qword_10060ADE8, &qword_1004DCDC0) + 48);
          v24 = sub_1004BB384();
          v25 = (*(*(v24 - 8) + 8))(&v10[v23], v24);
          if (v22 == 1)
          {
            v48 = v20;
            v26 = (*v19 + 312);
            v47 = *v26;
            v46[1] = v26;
            v47(v25);
            v27 = type metadata accessor for Lyrics.Transliteration(0);
            v28 = *(*(v27 - 8) + 48);
            if (v28(v8, 1, v27) == 1)
            {
              sub_1002EBD88(v19, v48, v49, v50, 1);
              sub_100007214(v8, &qword_10060AE00, &qword_1004DCE70);
            }

            else
            {
              v46[0] = v19;
              sub_100007214(v8, &qword_10060AE00, &qword_1004DCE70);
              swift_getKeyPath();
              v55 = v1;
              sub_1004B7104();

              v38 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
              swift_beginAccess();
              sub_10000F778(v1 + v38, v6, &qword_10060AE00, &qword_1004DCE70);
              v39 = v28(v6, 1, v27);
              v40 = v48;
              if (v39 == 1)
              {
                sub_100007214(v6, &qword_10060AE00, &qword_1004DCE70);
                v41 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

                LOBYTE(v41) = v41(2);

                v44 = v49;
                v43 = v50;
                if ((v41 & 1) == 0)
                {
                  v37 = v51;
                  v45 = v46[0];
                  v47(v42);
                  swift_getKeyPath();
                  __chkstk_darwin();
                  v46[-2] = v1;
                  v46[-1] = v37;
                  v55 = v1;
                  sub_1004B70F4();
                  sub_1002EBD88(v45, v40, v44, v43, 1);
                  goto LABEL_16;
                }

                sub_1002EBD88(v46[0], v40, v49, v50, 1);
              }

              else
              {
                sub_1002EBD88(v46[0], v48, v49, v50, 1);
                sub_100007214(v6, &qword_10060AE00, &qword_1004DCE70);
              }
            }
          }

          else
          {
          }
        }

        else
        {
          sub_1002EAA68(v10, type metadata accessor for Lyrics.StateManager.State.Loading);
        }
      }
    }
  }

  swift_getKeyPath();
  v55 = v1;
  sub_1004B7104();

  v29 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  swift_beginAccess();
  sub_10000F778(v1 + v29, v3, &qword_10060AE00, &qword_1004DCE70);
  v30 = type metadata accessor for Lyrics.Transliteration(0);
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v3, 1, v30);
  sub_100007214(v3, &qword_10060AE00, &qword_1004DCE70);
  if (v32 != 1)
  {
    v33 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

    LOBYTE(v33) = v33(1);

    if ((v33 & 1) == 0)
    {
      swift_getKeyPath();
      v54 = v1;
      sub_1004B7104();

      v34 = *(v1 + v14);
      if (!v34 || (v35 = [v34 vocalsControlCommand]) == 0 || (v36 = objc_msgSend(v35, "isActive"), swift_unknownObjectRelease(), (v36 & 1) == 0))
      {
        v37 = v51;
        (*(v31 + 56))(v51, 1, 1, v30);
        swift_getKeyPath();
        __chkstk_darwin();
        v46[-2] = v1;
        v46[-1] = v37;
        v54 = v1;
        sub_1004B70F4();
LABEL_16:

        sub_100007214(v37, &qword_10060AE00, &qword_1004DCE70);
      }
    }
  }
}

void (*sub_1002E02C0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1002E0324;
}

void sub_1002E0324(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1002DF9E4();
  }
}

void *Lyrics.StateManager.tracklist.getter()
{
  swift_getKeyPath();
  v5 = v0;
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B7104();

  v1 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

id sub_1002E041C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B7104();

  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void Lyrics.StateManager.tracklist.setter(void *a1)
{
  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_1004B70F4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100009130(0, &qword_10060ADF0, MPCPlayerResponseTracklist_ptr);
  v5 = v4;
  v6 = a1;
  v7 = sub_1004BCFA4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v9 = v6;

  sub_1002DF9E4();
}

void sub_1002E06A0(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;

  sub_1002DF9E4();
}

uint64_t (*Lyrics.StateManager.tracklist.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B7104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004B7124();

  v4[7] = sub_1002E02C0(v4);
  return sub_1002E0850;
}

double sub_1002E085C(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  sub_100003ABC(&qword_10060F8D0, &qword_1004E2380);
  __chkstk_darwin();
  v4 = &v30 - v3;
  sub_100003ABC(&qword_10060ACB8, &qword_1004DCB60);
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v30 - v7;
  v9 = sub_1004BB384();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v30 - v12;
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v36 = v2;
  v15 = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  v33 = v14;
  v34 = v15;
  sub_1004B7104();

  v16 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_10000F778(&v2[v16], v8, &qword_10060ACB8, &qword_1004DCB60);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    sub_100007214(v8, &qword_10060ACB8, &qword_1004DCB60);
  }

  else
  {
    v30 = v4;
    v18 = *(v10 + 32);
    v18(v13, v8, v9);
    sub_10000F778(v32, v6, &qword_10060ACB8, &qword_1004DCB60);
    if (v17(v6, 1, v9) == 1)
    {
      (*(v10 + 8))(v13, v9);
      sub_100007214(v6, &qword_10060ACB8, &qword_1004DCB60);
    }

    else
    {
      v19 = v31;
      v18(v31, v6, v9);
      sub_1002EBF88(&qword_10060B3D0, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      if (sub_1004BAC64())
      {
        v20 = _s11MusicCoreUI12LyricsLoaderC08supportsD03forSb0A3Kit4SongV_tFZ_0(v13);
        v21 = _s11MusicCoreUI12LyricsLoaderC08supportsD03forSb0A3Kit4SongV_tFZ_0(v19);
        v22 = *(v10 + 8);
        v22(v19, v9);
        v22(v13, v9);
        v4 = v30;
        if (((v20 ^ v21) & 1) == 0)
        {
          return result;
        }

        goto LABEL_10;
      }

      v24 = *(v10 + 8);
      v24(v19, v9);
      v24(v13, v9);
    }

    v4 = v30;
  }

LABEL_10:
  swift_getKeyPath();
  v35 = v2;
  sub_1004B7104();

  v25 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask;
  if (*&v2[OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask])
  {

    sub_1004BC524();
    if (*&v2[v25])
    {
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v30 - 2) = v2;
      *(&v30 - 1) = 0;
      v35 = v2;
      sub_1004B70F4();
    }
  }

  v26 = sub_1004BC4B4();
  (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
  sub_1004BC474();

  v27 = sub_1004BC464();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = &protocol witness table for MainActor;
  v28[4] = v2;
  sub_1002E0EEC(0, 0, v4, &unk_1004DD238, v28);

  sub_1002E42B0(v29);

  return result;
}

uint64_t sub_1002E0E40()
{
  v0[2] = sub_1004BC474();
  v0[3] = sub_1004BC464();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002681F4;

  return sub_1002E46E8();
}

uint64_t sub_1002E0EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100003ABC(&qword_10060F8D0, &qword_1004E2380);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10000F778(a3, v24 - v9, &qword_10060F8D0, &qword_1004E2380);
  v11 = sub_1004BC4B4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007214(v10, &qword_10060F8D0, &qword_1004E2380);
  }

  else
  {
    sub_1004BC4A4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004BC3E4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1004BBF54() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_100007214(a3, &qword_10060F8D0, &qword_1004E2380);

      return v22;
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

  sub_100007214(a3, &qword_10060F8D0, &qword_1004E2380);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1002E11EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100003ABC(&qword_10060F8D0, &qword_1004E2380);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10000F778(a3, v24 - v9, &qword_10060F8D0, &qword_1004E2380);
  v11 = sub_1004BC4B4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007214(v10, &qword_10060F8D0, &qword_1004E2380);
  }

  else
  {
    sub_1004BC4A4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004BC3E4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1004BBF54() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_100003ABC(&qword_10060B3D8, &qword_1004DD200);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_100007214(a3, &qword_10060F8D0, &qword_1004E2380);

      return v21;
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

  sub_100007214(a3, &qword_10060F8D0, &qword_1004E2380);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_100003ABC(&qword_10060B3D8, &qword_1004DD200);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1002E1500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100003ABC(&qword_10060F8D0, &qword_1004E2380);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10000F778(a3, v24 - v9, &qword_10060F8D0, &qword_1004E2380);
  v11 = sub_1004BC4B4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007214(v10, &qword_10060F8D0, &qword_1004E2380);
  }

  else
  {
    sub_1004BC4A4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004BC3E4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1004BBF54() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_100003ABC(&unk_10060DB30, &qword_1004DD160);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_100007214(a3, &qword_10060F8D0, &qword_1004E2380);

      return v21;
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

  sub_100007214(a3, &qword_10060F8D0, &qword_1004E2380);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_100003ABC(&unk_10060DB30, &qword_1004DD160);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void (*sub_1002E1814(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_100003ABC(&qword_10060ACB8, &qword_1004DCB60) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_10000F778(v1 + v8, v7, &qword_10060ACB8, &qword_1004DCB60);
  return sub_1002E1944;
}

void sub_1002E1944(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_10000F778(*(*a1 + 12), v6, &qword_10060ACB8, &qword_1004DCB60);
    sub_10000F778(v7 + v4, v5, &qword_10060ACB8, &qword_1004DCB60);
    swift_beginAccess();
    sub_10003F42C(v6, v7 + v4, &qword_10060ACB8, &qword_1004DCB60);
    swift_endAccess();
    sub_1002E085C(v5);
    sub_100007214(v5, &qword_10060ACB8, &qword_1004DCB60);
  }

  else
  {
    sub_10000F778(v7 + v4, v6, &qword_10060ACB8, &qword_1004DCB60);
    swift_beginAccess();
    sub_10003F42C(v3, v7 + v4, &qword_10060ACB8, &qword_1004DCB60);
    swift_endAccess();
    sub_1002E085C(v6);
  }

  sub_100007214(v6, &qword_10060ACB8, &qword_1004DCB60);
  sub_100007214(v3, &qword_10060ACB8, &qword_1004DCB60);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_1002E1ADC(uint64_t a1)
{
  sub_100003ABC(&qword_10060ACB8, &qword_1004DCB60);
  __chkstk_darwin();
  v3 = &v5 - v2;
  sub_10000F778(a1, &v5 - v2, &qword_10060ACB8, &qword_1004DCB60);
  return Lyrics.StateManager.song.setter(v3);
}

uint64_t Lyrics.StateManager.song.setter(uint64_t a1)
{
  sub_100003ABC(&qword_10060ACB8, &qword_1004DCB60);
  __chkstk_darwin();
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v10 - v5;
  v7 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_10000F778(v1 + v7, v6, &qword_10060ACB8, &qword_1004DCB60);
  v8 = sub_1002EAB54(v6, a1);
  sub_100007214(v6, &qword_10060ACB8, &qword_1004DCB60);
  if (v8)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_1004B70F4();
  }

  else
  {
    sub_10000F778(a1, v6, &qword_10060ACB8, &qword_1004DCB60);
    sub_10000F778(v1 + v7, v4, &qword_10060ACB8, &qword_1004DCB60);
    swift_beginAccess();
    sub_10003F42C(v6, v1 + v7, &qword_10060ACB8, &qword_1004DCB60);
    swift_endAccess();
    sub_1002E085C(v4);
    sub_100007214(v4, &qword_10060ACB8, &qword_1004DCB60);
    sub_100007214(v6, &qword_10060ACB8, &qword_1004DCB60);
  }

  return sub_100007214(a1, &qword_10060ACB8, &qword_1004DCB60);
}

uint64_t sub_1002E1DF0(uint64_t a1, uint64_t a2)
{
  sub_100003ABC(&qword_10060ACB8, &qword_1004DCB60);
  __chkstk_darwin();
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v10[-v6];
  sub_10000F778(a2, &v10[-v6], &qword_10060ACB8, &qword_1004DCB60);
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_10000F778(a1 + v8, v5, &qword_10060ACB8, &qword_1004DCB60);
  swift_beginAccess();
  sub_10003F42C(v7, a1 + v8, &qword_10060ACB8, &qword_1004DCB60);
  swift_endAccess();
  sub_1002E085C(v5);
  sub_100007214(v5, &qword_10060ACB8, &qword_1004DCB60);
  return sub_100007214(v7, &qword_10060ACB8, &qword_1004DCB60);
}

uint64_t (*Lyrics.StateManager.song.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B7104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004B7124();

  v4[7] = sub_1002E1814(v4);
  return sub_1002E2088;
}

uint64_t (*Lyrics.StateManager.showTranslationButton.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B7104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004B7124();

  v4[7] = sub_1002E2094(v4);
  return sub_1002E2240;
}

uint64_t sub_1002E22C0(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B7104();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1002E2374@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B7104();

  v7 = *a3;
  result = swift_beginAccess();
  *a4 = *(v6 + v7);
  return result;
}

uint64_t (*Lyrics.StateManager.needsLyricsReset.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B7104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004B7124();

  v4[7] = sub_1002E224C(v4);
  return sub_1002E2574;
}

uint64_t (*Lyrics.StateManager.currentTranslation.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B7104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004B7124();

  v4[7] = sub_1002E2580(v4);
  return sub_1002E276C;
}

uint64_t sub_1002E27FC@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B7104();

  v10 = *a2;
  swift_beginAccess();
  return sub_10000F778(v12 + v10, a5, a3, a4);
}

uint64_t sub_1002E28DC@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B7104();

  v11 = *a3;
  swift_beginAccess();
  return sub_10000F778(v10 + v11, a6, a4, a5);
}

uint64_t sub_1002E29F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_10003F42C(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

uint64_t (*Lyrics.StateManager.currentTransliteration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B7104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004B7124();

  v4[7] = sub_1002E2778(v4);
  return sub_1002E2BA8;
}

uint64_t sub_1002E2C38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  sub_100003ABC(a5, a6);
  __chkstk_darwin();
  v13 = &v16[-v12];
  sub_10000F778(a1, &v16[-v12], a5, a6);
  v14 = *a2;
  swift_getKeyPath();
  v17 = v14;
  v18 = v13;
  v19 = v14;
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B70F4();

  return sub_100007214(v13, a5, a6);
}

uint64_t sub_1002E2DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B70F4();

  return sub_100007214(a1, a4, a5);
}

uint64_t (*Lyrics.StateManager.metricsPage.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B7104();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004B7124();

  v4[7] = sub_1002E2BB4(v4);
  return sub_1002E2FC4;
}

void sub_1002E2FD0(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_1004B7114();

  free(v3);
}

Swift::Void __swiftcall Lyrics.StateManager.retryLoadingLyrics()()
{
  v1 = v0;
  sub_100003ABC(&qword_10060F8D0, &qword_1004E2380);
  __chkstk_darwin();
  v3 = &v7 - v2;
  v4 = sub_1004BC4B4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_1004BC474();

  v5 = sub_1004BC464();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v1;
  sub_1002E0EEC(0, 0, v3, &unk_1004DCEB0, v6);
}

uint64_t sub_1002E3188()
{
  v0[2] = sub_1004BC474();
  v0[3] = sub_1004BC464();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100268008;

  return sub_1002E46E8();
}

uint64_t sub_1002E3234()
{
  v1 = sub_1004B8724();
  v27 = *(v1 - 8);
  v28 = v1;
  __chkstk_darwin();
  v26 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060DEF0, &qword_1004E1420);
  __chkstk_darwin();
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v23 - v6;
  v25 = type metadata accessor for Lyrics.StateManager.State(0);
  v8 = *(v25 + 24);
  sub_10000F778(v0 + v8, v7, &qword_10060DEF0, &qword_1004E1420);
  v9 = sub_1004B6CD4();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = v7;
  v13 = v0;
  sub_100007214(v12, &qword_10060DEF0, &qword_1004E1420);
  if (v11 == 1)
  {
    sub_1002EAA00(v0, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1002EBD88(*v4, *(v4 + 1), *(v4 + 2), *(v4 + 3), v4[32]);
      v14 = *(sub_100003ABC(&qword_10060ADE8, &qword_1004DCDC0) + 48);
      v15 = sub_1004BB384();
      (*(*(v15 - 8) + 8))(&v4[v14], v15);
      v16 = v26;
      v17 = v0 + *(v25 + 20);
      v19 = v27;
      v18 = v28;
      (*(v27 + 104))(v26, enum case for ScenePhase.active(_:), v28);
      LOBYTE(v14) = sub_1004B8714();
      (*(v19 + 8))(v16, v18);
      if (v14)
      {
        v20 = type metadata accessor for Lyrics.StateManager.State.Display(0);
        if (*(v17 + *(v20 + 20)) == 1 && *(v17 + *(v20 + 24)) == 1)
        {
          v21 = v24;
          sub_1004B6CA4();
          (*(v10 + 56))(v21, 0, 1, v9);
          return sub_1002EC13C(v21, v13 + v8);
        }
      }
    }

    else
    {
      sub_1002EAA68(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    }
  }

  sub_100007214(v13 + v8, &qword_10060DEF0, &qword_1004E1420);
  return (*(v10 + 56))(v13 + v8, 1, 1, v9);
}

uint64_t Lyrics.StateManager.State.loading.setter(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v9 - v5;
  sub_1002EAA00(v1, &v9 - v5, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1002EB154(a1, v1, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1002EAA00(v1, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  v7 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v4, v6);
  sub_1002EAA68(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  if ((v7 & 1) == 0)
  {
    sub_1002E3234();
  }

  sub_1002EAA68(a1, type metadata accessor for Lyrics.StateManager.State.Loading);
  return sub_1002EAA68(v6, type metadata accessor for Lyrics.StateManager.State.Loading);
}

void (*Lyrics.StateManager.State.loading.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(type metadata accessor for Lyrics.StateManager.State.Loading(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v4[3] = malloc(v5);
    v4[4] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[5] = v6;
  sub_1002EAA00(v1, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  return sub_1002E38A4;
}

void sub_1002E38A4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v4 = v2[3];
    v7 = *v2;
    v6 = v2[1];
    sub_1002EAA00((*a1)[5], v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA00(v7, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EB154(v5, v7, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA00(v7, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    v8 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v4, v6);
    sub_1002EAA68(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((v8 & 1) == 0)
    {
      sub_1002E3234();
    }

    v10 = v2[4];
    v9 = v2[5];
    v12 = v2[2];
    v11 = v2[3];
    v13 = v2[1];
    sub_1002EAA68(v12, type metadata accessor for Lyrics.StateManager.State.Loading);
    v14 = v13;
    v15 = v9;
  }

  else
  {
    v17 = v2[3];
    v16 = v2[4];
    v18 = *v2;
    sub_1002EAA00(*v2, v16, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EB154(v3, v18, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA00(v18, v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    v19 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v17, v16);
    sub_1002EAA68(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((v19 & 1) == 0)
    {
      sub_1002E3234();
    }

    v9 = v2[4];
    v14 = v2[5];
    v12 = v2[2];
    v11 = v2[3];
    v13 = v2[1];
    v15 = v14;
    v10 = v9;
  }

  sub_1002EAA68(v14, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1002EAA68(v9, type metadata accessor for Lyrics.StateManager.State.Loading);
  free(v15);
  free(v10);
  free(v11);
  free(v12);
  free(v13);

  free(v2);
}

uint64_t Lyrics.StateManager.State.display.setter(uint64_t a1)
{
  v3 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = *(type metadata accessor for Lyrics.StateManager.State(0) + 20);
  sub_1002EAA00(v1 + v8, v7, type metadata accessor for Lyrics.StateManager.State.Display);
  sub_1002EB154(a1, v1 + v8, type metadata accessor for Lyrics.StateManager.State.Display);
  sub_1002EAA00(v1 + v8, v5, type metadata accessor for Lyrics.StateManager.State.Display);
  if ((sub_1004B8714() & 1) != 0 && v5[*(v3 + 20)] == v7[*(v3 + 20)])
  {
    v10 = v5[*(v3 + 24)];
    sub_1002EAA68(v5, type metadata accessor for Lyrics.StateManager.State.Display);
    if (v10 == v7[*(v3 + 24)])
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_1002EAA68(v5, type metadata accessor for Lyrics.StateManager.State.Display);
  }

  sub_1002E3234();
LABEL_5:
  sub_1002EAA68(a1, type metadata accessor for Lyrics.StateManager.State.Display);
  return sub_1002EAA68(v7, type metadata accessor for Lyrics.StateManager.State.Display);
}

void (*Lyrics.StateManager.State.display.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for Lyrics.StateManager.State.Display(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  a1[2] = v4;
  v6 = type metadata accessor for Lyrics.StateManager.State(0);
  sub_1002EAA00(v1 + *(v6 + 20), v5, type metadata accessor for Lyrics.StateManager.State.Display);
  return sub_1002E3D48;
}

void sub_1002E3D48(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1002EAA00(*(a1 + 16), v2, type metadata accessor for Lyrics.StateManager.State.Display);
    Lyrics.StateManager.State.display.setter(v2);
    sub_1002EAA68(v3, type metadata accessor for Lyrics.StateManager.State.Display);
  }

  else
  {
    Lyrics.StateManager.State.display.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t Lyrics.StateManager.State.Loading.lyricsType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002EAA00(v2, v5, type metadata accessor for Lyrics.StateManager.State.Loading);
  result = swift_getEnumCaseMultiPayload();
  v7 = 0uLL;
  if (!result)
  {
    result = sub_1002EAA68(v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    v7 = 0uLL;
    goto LABEL_5;
  }

  if (result != 1)
  {
LABEL_5:
    v9 = -1;
    v12 = 0uLL;
    goto LABEL_6;
  }

  v8 = *v5;
  v13 = *(v5 + 1);
  v14 = v8;
  v9 = v5[32];
  v10 = *(sub_100003ABC(&qword_10060ADE8, &qword_1004DCDC0) + 48);
  v11 = sub_1004BB384();
  result = (*(*(v11 - 8) + 8))(&v5[v10], v11);
  v12 = v13;
  v7 = v14;
LABEL_6:
  *a1 = v7;
  *(a1 + 16) = v12;
  *(a1 + 32) = v9;
  return result;
}

uint64_t Lyrics.StateManager.State.Display.scenePhase.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004B8724();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Lyrics.StateManager.State.Display.scenePhase.setter(uint64_t a1)
{
  v3 = sub_1004B8724();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Lyrics.StateManager.State.Display.sceneIsVisible.setter(char a1)
{
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t Lyrics.StateManager.State.Display.hasAppeared.setter(char a1)
{
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t static Lyrics.StateManager.State.Display.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1004B8714() & 1) != 0 && (v4 = type metadata accessor for Lyrics.StateManager.State.Display(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1002E41BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1004B8714() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1002E423C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(v5, v7) & 1;
}

double sub_1002E42B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask;
  if (!*(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_1004B70F4();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_1004BC504();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1002E4454(uint64_t a1)
{
  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B7104();
}

uint64_t sub_1002E44F8@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B7104();

  *a4 = *(v6 + *a3);
}

double sub_1002E45D8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B70F4();

  return result;
}

uint64_t sub_1002E46E8()
{
  v1[74] = v0;
  sub_100003ABC(&qword_10060AE00, &qword_1004DCE70);
  v1[75] = swift_task_alloc();
  sub_100003ABC(&qword_10060ADF8, &qword_1004DCE40);
  v1[76] = swift_task_alloc();
  v2 = sub_1004B80B4();
  v1[77] = v2;
  v1[78] = *(v2 - 8);
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  type metadata accessor for Lyrics.StateManager.State(0);
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  sub_100003ABC(&qword_10060ACB8, &qword_1004DCB60);
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v3 = sub_1004BB384();
  v1[111] = v3;
  v1[112] = *(v3 - 8);
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();
  sub_1004BC474();
  v1[119] = sub_1004BC464();
  v5 = sub_1004BC3E4();
  v1[120] = v5;
  v1[121] = v4;

  return _swift_task_switch(sub_1002E4AC0, v5, v4);
}

uint64_t sub_1002E4AC0()
{
  v71 = v0;
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[74];
  swift_getKeyPath();
  v0[122] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v0[41] = v4;
  v0[123] = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B7104();

  v5 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v0[124] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_10000F778(v4 + v5, v3, &qword_10060ACB8, &qword_1004DCB60);
  v6 = *(v1 + 48);
  v0[125] = v6;
  v0[126] = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v3, 1, v2) == 1)
  {
    v7 = v0[110];
    v8 = v0[98];
    v69 = v0[97];
    v9 = v0[85];
    v10 = v0[74];

    sub_100007214(v7, &qword_10060ACB8, &qword_1004DCB60);
    *v8 = 0;
    *(v8 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v0[73] = v10;
    sub_1004B7104();

    v0[69] = v10;
    swift_getKeyPath();
    sub_1004B7124();

    v11 = v10 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_1002EAA00(v11, v9, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA00(v9, v69, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EB154(v8, v9, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v9, v69) & 1) == 0)
    {
      sub_1002E3234();
    }

    v12 = v0[98];
    v13 = v0[90];
    v14 = v0[85];
    v15 = v0[74];
    sub_1002EAA68(v0[97], type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA68(v12, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA00(v11, v13, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1002EB154(v14, v11, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002DE560(v13);
    sub_1002EAA68(v13, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA68(v14, type metadata accessor for Lyrics.StateManager.State);
    v0[63] = v15;
    swift_getKeyPath();
    sub_1004B7114();

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[118];
    v19 = v0[112];
    v20 = v0[111];
    v21 = v0[110];
    v22 = v0[108];
    v66 = v0[107];
    v23 = v0[91];
    v24 = v0[74];
    v25 = *(v19 + 32);
    v0[127] = v25;
    v0[128] = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v25(v18, v21, v20);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v0[58] = v24;
    sub_1004B7104();

    v0[55] = v24;
    swift_getKeyPath();
    sub_1004B7124();

    v26 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    v0[129] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_1002EAA00(v24 + v26, v23, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA00(v23, v66, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EB154(v22, v23, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v23, v66) & 1) == 0)
    {
      sub_1002E3234();
    }

    v64 = v0[117];
    v67 = v0[118];
    v27 = v0[112];
    v28 = v0[108];
    v29 = v0[91];
    v30 = v0[90];
    v59 = v0[82];
    v31 = v0[78];
    v60 = v0[77];
    v62 = v0[111];
    v32 = v0[74];
    sub_1002EAA68(v0[107], type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA68(v28, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA00(v24 + v26, v30, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1002EB154(v29, v24 + v26, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002DE560(v30);
    sub_1002EAA68(v30, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA68(v29, type metadata accessor for Lyrics.StateManager.State);
    v0[52] = v32;
    swift_getKeyPath();
    sub_1004B7114();

    v35 = Logger.lyrics.unsafeMutableAddressor(v33, v34);
    v0[130] = v35;
    v36 = *(v31 + 16);
    v0[131] = v36;
    v0[132] = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v36(v59, v35, v60);
    v37 = *(v27 + 16);
    v0[133] = v37;
    v0[134] = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v37(v64, v67, v62);
    v38 = sub_1004B8094();
    v39 = sub_1004BC9A4();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v0[117];
    v42 = v0[112];
    v43 = v0[111];
    v44 = v0[82];
    v45 = v0[78];
    v46 = v0[77];
    if (v40)
    {
      v47 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v70 = v68;
      *v47 = 136446210;
      sub_1002EBF88(&qword_10060B3C8, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v63 = v46;
      v65 = v44;
      v48 = sub_1004BD934();
      v50 = v49;
      v61 = v39;
      v51 = *(v42 + 8);
      v51(v41, v43);
      v52 = sub_1002C4260(v48, v50, &v70);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v38, v61, "[State] Loading lyrics song %{public}s", v47, 0xCu);
      sub_100004C6C(v68);

      v53 = *(v45 + 8);
      v53(v65, v63);
    }

    else
    {

      v51 = *(v42 + 8);
      v51(v41, v43);
      v53 = *(v45 + 8);
      v53(v44, v46);
    }

    v0[136] = v51;
    v0[135] = v53;
    v54 = v0[74];
    swift_getKeyPath();
    v0[50] = v54;
    sub_1004B7104();

    v55 = *(v54 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
    v0[137] = v55;
    v55;
    v56 = swift_task_alloc();
    v0[138] = v56;
    *v56 = v0;
    v56[1] = sub_1002E5588;
    v58 = v0[118];

    return LyricsLoader.loadLyrics(for:)(v58, v57);
  }
}

uint64_t sub_1002E5588(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 1112) = a1;
  *(v5 + 1120) = a2;
  *(v5 + 323) = a3;
  *(v5 + 1128) = v3;

  if (v3)
  {
    v6 = *(v5 + 968);
    v7 = *(v5 + 960);
    v8 = sub_1002E6CC4;
  }

  else
  {

    v6 = *(v5 + 968);
    v7 = *(v5 + 960);
    v8 = sub_1002E56B8;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1002E56B8()
{
  v163 = v0;

  if (sub_1004BC534())
  {
    v1 = *(v0 + 1120);
    v2 = *(v0 + 1112);
    v3 = *(v0 + 323);
    (*(v0 + 1088))(*(v0 + 944), *(v0 + 888));
    sub_10002FA24(v2, v1, v3 & 1);
    goto LABEL_36;
  }

  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v0 + 888);
  v7 = *(v0 + 872);
  v8 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 424) = v8;
  sub_1004B7104();

  sub_10000F778(v8 + v5, v7, &qword_10060ACB8, &qword_1004DCB60);
  if (v4(v7, 1, v6) == 1)
  {
    v9 = *(v0 + 1120);
    v10 = *(v0 + 1112);
    v11 = *(v0 + 872);
    v12 = *(v0 + 323);
    (*(v0 + 1088))(*(v0 + 944), *(v0 + 888));
    sub_10002FA24(v10, v9, v12 & 1);
    sub_100007214(v11, &qword_10060ACB8, &qword_1004DCB60);
    goto LABEL_36;
  }

  (*(v0 + 1016))(*(v0 + 928), *(v0 + 872), *(v0 + 888));
  sub_1002EBF88(&qword_10060B3D0, &type metadata accessor for Song, &protocol conformance descriptor for Song);
  v13 = sub_1004BAC64();
  v14 = *(v0 + 323);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1112);
  if ((v13 & 1) == 0)
  {
    v53 = *(v0 + 1088);
    v54 = *(v0 + 944);
    v55 = *(v0 + 928);
    v56 = *(v0 + 888);
    sub_10002FA24(*(v0 + 1112), *(v0 + 1120), v14 & 1);
    v53(v55, v56);
    v53(v54, v56);
    goto LABEL_36;
  }

  v17 = *(v0 + 1064);
  v18 = *(v0 + 944);
  v19 = *(v0 + 920);
  v20 = *(v0 + 888);
  (*(v0 + 1048))(*(v0 + 648), *(v0 + 1040), *(v0 + 616));
  v17(v19, v18, v20);
  sub_10002FA14(v16, v15, v14 & 1);
  v21 = sub_1004B8094();
  v22 = sub_1004BC9A4();
  sub_10002FA24(v16, v15, v14 & 1);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 1112);
    v24 = *(v0 + 920);
    v130 = *(v0 + 1088);
    v25 = *(v0 + 888);
    v149 = *(v0 + 648);
    v156 = *(v0 + 1080);
    v134 = *(v0 + 1120);
    v143 = *(v0 + 616);
    v132 = *(v0 + 323);
    v26 = swift_slowAlloc();
    v162[0] = swift_slowAlloc();
    *v26 = 136446466;
    sub_1002EBF88(&qword_10060B3C8, &type metadata accessor for Song, &protocol conformance descriptor for Song);
    v27 = sub_1004BD934();
    v29 = v28;
    v130(v24, v25);
    v30 = sub_1002C4260(v27, v29, v162);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    *(v0 + 304) = v23;
    *(v0 + 312) = v134;
    *(v0 + 320) = v132 & 1;
    sub_10002FA14(v23, v134, v132 & 1);
    v31 = sub_1004BBF04();
    v33 = sub_1002C4260(v31, v32, v162);

    *(v26 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v21, v22, "[State] Successfully loaded lyrics for song %{public}s with result %{public}s", v26, 0x16u);
    swift_arrayDestroy();

    v156(v149, v143);
    if ((*(v0 + 323) & 1) == 0)
    {
LABEL_8:
      v34 = *(v0 + 1120);
      v35 = *(v0 + 1112);
      v36 = *(v0 + 1064);
      v150 = *(v0 + 1032);
      v37 = *(v0 + 944);
      v38 = *(v0 + 888);
      v39 = *(v0 + 848);
      v157 = *(v0 + 840);
      v40 = *(v0 + 712);
      v41 = *(v0 + 592);
      v42 = *(sub_100003ABC(&qword_10060ADE8, &qword_1004DCDC0) + 48);
      *v39 = v35;
      *(v39 + 8) = v34;
      *(v39 + 16) = _swiftEmptyArrayStorage;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0;
      v36(v39 + v42, v37, v38);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      *(v0 + 568) = v41;

      sub_1004B7104();

      *(v0 + 576) = v41;
      swift_getKeyPath();
      sub_1004B7124();

      sub_1002EAA00(v41 + v150, v40, type metadata accessor for Lyrics.StateManager.State);
      sub_1002EAA00(v40, v157, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1002EB154(v39, v40, type metadata accessor for Lyrics.StateManager.State.Loading);
      if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v40, v157) & 1) == 0)
      {
        sub_1002E3234();
      }

      v43 = *(v0 + 1088);
      v44 = *(v0 + 1032);
      v151 = *(v0 + 1120);
      v158 = *(v0 + 944);
      v138 = *(v0 + 1112);
      v144 = *(v0 + 928);
      v45 = *(v0 + 888);
      v46 = *(v0 + 848);
      v47 = *(v0 + 720);
      v48 = *(v0 + 712);
      v49 = *(v0 + 592);
      sub_1002EAA68(*(v0 + 840), type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1002EAA68(v46, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1002EAA00(v49 + v44, v47, type metadata accessor for Lyrics.StateManager.State);
      swift_beginAccess();
      sub_1002EB154(v48, v49 + v44, type metadata accessor for Lyrics.StateManager.State);
      swift_endAccess();
      sub_1002DE560(v47);
      sub_1002EAA68(v47, type metadata accessor for Lyrics.StateManager.State);
      sub_1002EAA68(v48, type metadata accessor for Lyrics.StateManager.State);
      *(v0 + 336) = v49;
      swift_getKeyPath();
      sub_1004B7114();

      v50 = v138;
      v51 = v151;
      v52 = 0;
LABEL_31:
      sub_10002FA24(v50, v51, v52);
      v43(v144, v45);
      v43(v158, v45);
      goto LABEL_36;
    }
  }

  else
  {
    v57 = *(v0 + 1088);
    v58 = *(v0 + 1080);
    v59 = *(v0 + 920);
    v60 = *(v0 + 888);
    v61 = *(v0 + 648);
    v62 = *(v0 + 616);

    v57(v59, v60);
    v58(v61, v62);
    if ((*(v0 + 323) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v63 = *(v0 + 1112);
  v64 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 432) = v64;
  sub_1004B7104();

  v65 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v66 = *(v64 + v65);
  if (v66)
  {
    v67 = v66;
    if ((MPCPlayerResponseTracklist.playingItemSupportsTimeSyncedLyrics.getter() & 1) == 0)
    {
      v110 = *(v0 + 1112);
      v133 = *(v0 + 1120);
      v129 = *(v0 + 1064);
      v147 = *(v0 + 1032);
      v111 = *(v0 + 944);
      v112 = *(v0 + 888);
      v113 = *(v0 + 832);
      v154 = *(v0 + 824);
      v161 = v67;
      v114 = *(v0 + 704);
      v115 = *(v0 + 592);
      v116 = *(sub_100003ABC(&qword_10060ADE8, &qword_1004DCDC0) + 48);
      v117 = (*(*v63 + 384))();
      v118 = *&v63[OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters];
      *v113 = v117;
      *(v113 + 8) = v119;
      *(v113 + 16) = v118;
      *(v113 + 24) = v110;
      *(v113 + 32) = 0;
      v129(v113 + v116, v111, v112);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      *(v0 + 536) = v115;
      sub_10002FA14(v110, v133, 1);

      sub_1004B7104();

      *(v0 + 544) = v115;
      swift_getKeyPath();
      sub_1004B7124();

      sub_1002EAA00(v115 + v147, v114, type metadata accessor for Lyrics.StateManager.State);
      sub_1002EAA00(v114, v154, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1002EB154(v113, v114, type metadata accessor for Lyrics.StateManager.State.Loading);
      if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v114, v154) & 1) == 0)
      {
        sub_1002E3234();
      }

      v120 = *(v0 + 1088);
      v121 = *(v0 + 1032);
      v148 = *(v0 + 1120);
      v155 = *(v0 + 944);
      v137 = *(v0 + 1112);
      v142 = *(v0 + 928);
      v122 = *(v0 + 888);
      v123 = *(v0 + 832);
      v124 = *(v0 + 720);
      v125 = *(v0 + 704);
      v126 = *(v0 + 592);
      sub_1002EAA68(*(v0 + 824), type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1002EAA68(v123, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_1002EAA00(v126 + v121, v124, type metadata accessor for Lyrics.StateManager.State);
      swift_beginAccess();
      sub_1002EB154(v125, v126 + v121, type metadata accessor for Lyrics.StateManager.State);
      swift_endAccess();
      sub_1002DE560(v124);
      sub_1002EAA68(v124, type metadata accessor for Lyrics.StateManager.State);
      sub_1002EAA68(v125, type metadata accessor for Lyrics.StateManager.State);
      *(v0 + 560) = v126;
      swift_getKeyPath();
      sub_1004B7114();

      sub_10002FA24(v137, v148, 1);
      v120(v142, v122);
      v120(v155, v122);
      goto LABEL_36;
    }
  }

  v68 = v63;
  if (v63[56] - 1 > 1)
  {
    v95 = *(v0 + 1112);
    v136 = *(v0 + 1120);
    v131 = *(v0 + 1064);
    v152 = *(v0 + 1032);
    v96 = *(v0 + 944);
    v97 = *(v0 + 888);
    v98 = *(v0 + 800);
    v160 = *(v0 + 792);
    v99 = *(v0 + 688);
    v100 = *(v0 + 592);
    v101 = *(sub_100003ABC(&qword_10060ADE8, &qword_1004DCDC0) + 48);
    v102 = (*(*v68 + 384))();
    v103 = *&v68[OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters];
    *v98 = v102;
    *(v98 + 8) = v104;
    *(v98 + 16) = v103;
    *(v98 + 24) = v95;
    *(v98 + 32) = 0;
    v131(v98 + v101, v96, v97);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 448) = v100;
    sub_10002FA14(v95, v136, 1);

    sub_1004B7104();

    *(v0 + 456) = v100;
    swift_getKeyPath();
    sub_1004B7124();

    sub_1002EAA00(v100 + v152, v99, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA00(v99, v160, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EB154(v98, v99, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v99, v160) & 1) == 0)
    {
      sub_1002E3234();
    }

    v43 = *(v0 + 1088);
    v105 = *(v0 + 1032);
    v153 = *(v0 + 1120);
    v158 = *(v0 + 944);
    v141 = *(v0 + 1112);
    v144 = *(v0 + 928);
    v45 = *(v0 + 888);
    v106 = *(v0 + 800);
    v107 = *(v0 + 720);
    v108 = *(v0 + 688);
    v109 = *(v0 + 592);
    sub_1002EAA68(*(v0 + 792), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA68(v106, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA00(v109 + v105, v107, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1002EB154(v108, v109 + v105, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002DE560(v107);
    sub_1002EAA68(v107, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA68(v108, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 472) = v109;
    swift_getKeyPath();
    sub_1004B7114();

    v50 = v141;
    v51 = v153;
    v52 = 1;
    goto LABEL_31;
  }

  v69 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

  if (v69(0))
  {
    v70 = *(v0 + 608);
    v71 = *(v0 + 592);
    (*(*v63 + 288))();
    swift_getKeyPath();
    v72 = swift_task_alloc();
    *(v72 + 16) = v71;
    *(v72 + 24) = v70;
    *(v0 + 528) = v71;
    sub_1004B70F4();

    sub_100007214(v70, &qword_10060ADF8, &qword_1004DCE40);
  }

  v73 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 480) = v73;
  sub_1004B7104();

  v74 = *(v64 + v65);
  if (v74 && (v75 = [v74 vocalsControlCommand]) != 0 && (v76 = objc_msgSend(v75, "isActive"), swift_unknownObjectRelease(), v76) && (v69(2) & 1) == 0 || (v69(1) & 1) != 0)
  {
    v77 = *(v0 + 600);
    v78 = *(v0 + 592);
    (*(*v63 + 312))();
    swift_getKeyPath();
    v79 = swift_task_alloc();
    *(v79 + 16) = v78;
    *(v79 + 24) = v77;
    *(v0 + 520) = v78;
    sub_1004B70F4();

    sub_100007214(v77, &qword_10060AE00, &qword_1004DCE70);
  }

  v80 = *(v0 + 1112);
  v81 = *(v0 + 1064);
  v139 = *(v0 + 1032);
  v82 = *(v0 + 944);
  v83 = *(v0 + 888);
  v84 = *(v0 + 816);
  v145 = *(v0 + 808);
  v85 = *(v0 + 696);
  v86 = *(v0 + 592);
  v87 = *(sub_100003ABC(&qword_10060ADE8, &qword_1004DCDC0) + 48);
  *v84 = v80;
  *(v84 + 8) = 0;
  *(v84 + 16) = 0;
  *(v84 + 24) = 0;
  *(v84 + 32) = 1;
  v81(v84 + v87, v82, v83);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  *(v0 + 488) = v86;

  sub_1004B7104();

  *(v0 + 496) = v86;
  swift_getKeyPath();
  sub_1004B7124();

  sub_1002EAA00(v86 + v139, v85, type metadata accessor for Lyrics.StateManager.State);
  sub_1002EAA00(v85, v145, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1002EB154(v84, v85, type metadata accessor for Lyrics.StateManager.State.Loading);
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v85, v145) & 1) == 0)
  {
    sub_1002E3234();
  }

  v88 = *(v0 + 1088);
  v89 = *(v0 + 1032);
  v159 = *(v0 + 944);
  v140 = *(v0 + 928);
  v146 = *(v0 + 1120);
  v135 = *(v0 + 1112);
  v90 = *(v0 + 888);
  v91 = *(v0 + 816);
  v92 = *(v0 + 720);
  v93 = *(v0 + 696);
  v94 = *(v0 + 592);
  sub_1002EAA68(*(v0 + 808), type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1002EAA68(v91, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1002EAA00(v94 + v89, v92, type metadata accessor for Lyrics.StateManager.State);
  swift_beginAccess();
  sub_1002EB154(v93, v94 + v89, type metadata accessor for Lyrics.StateManager.State);
  swift_endAccess();
  sub_1002DE560(v92);
  sub_1002EAA68(v92, type metadata accessor for Lyrics.StateManager.State);
  sub_1002EAA68(v93, type metadata accessor for Lyrics.StateManager.State);
  *(v0 + 512) = v94;
  swift_getKeyPath();
  sub_1004B7114();

  sub_10002FA24(v135, v146, 1);
  v88(v140, v90);
  v88(v159, v90);
LABEL_36:

  v127 = *(v0 + 8);

  return v127();
}

uint64_t sub_1002E6CC4()
{
  v87 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1096);

  *(v0 + 360) = v1;
  swift_errorRetain();
  sub_100003ABC(&qword_10060F8C0, &qword_1004E23A0);
  v3 = swift_dynamicCast();
  v77 = *(v0 + 1064);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);
  v6 = *(v0 + 944);
  v7 = *(v0 + 888);
  v8 = *(v0 + 616);
  if (v3)
  {
    v9 = *(v0 + 912);
    v10 = *(v0 + 640);

    v74 = *(v0 + 321);
    v4(v10, v5, v8);
    v77(v9, v6, v7);
    v11 = sub_1004B8094();
    v12 = sub_1004BC9A4();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 1088);
    v15 = *(v0 + 1080);
    v16 = *(v0 + 912);
    v17 = *(v0 + 888);
    v18 = *(v0 + 640);
    v19 = *(v0 + 616);
    if (v13)
    {
      v78 = *(v0 + 640);
      v20 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v20 = 136446466;
      sub_1002EBF88(&qword_10060B3C8, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v69 = v19;
      v71 = v15;
      v21 = sub_1004BD934();
      v23 = v22;
      v14(v16, v17);
      v24 = sub_1002C4260(v21, v23, v86);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v0 + 322) = v74;
      v25 = sub_1004BBF04();
      v27 = sub_1002C4260(v25, v26, v86);

      *(v20 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v11, v12, "[State] Failed to load lyrics for song %{public}s — Error = %{public}s", v20, 0x16u);
      swift_arrayDestroy();

      v71(v78, v69);
    }

    else
    {

      v14(v16, v17);
      v15(v18, v19);
    }

    v82 = *(v0 + 1032);
    v42 = *(v0 + 768);
    v43 = *(v0 + 760);
    v44 = *(v0 + 672);
    v45 = *(v0 + 592);
    *v42 = v74;
    *(v42 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 384) = v45;
    sub_1004B7104();

    *(v0 + 392) = v45;
    swift_getKeyPath();
    sub_1004B7124();

    sub_1002EAA00(v45 + v82, v44, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA00(v44, v43, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EB154(v42, v44, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v44, v43) & 1) == 0)
    {
      sub_1002E3234();
    }

    v46 = *(v0 + 1032);
    v80 = *(v0 + 944);
    v83 = *(v0 + 1088);
    v75 = *(v0 + 888);
    v47 = *(v0 + 768);
    v48 = *(v0 + 720);
    v49 = *(v0 + 672);
    v50 = *(v0 + 592);
    sub_1002EAA68(*(v0 + 760), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA68(v47, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA00(v50 + v46, v48, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1002EB154(v49, v50 + v46, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002DE560(v48);
    sub_1002EAA68(v48, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA68(v49, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 408) = v50;
    swift_getKeyPath();
    sub_1004B7114();

    v83(v80, v75);
  }

  else
  {
    v28 = *(v0 + 904);
    v29 = *(v0 + 632);

    v4(v29, v5, v8);
    v77(v28, v6, v7);
    swift_errorRetain();
    v30 = sub_1004B8094();
    v31 = sub_1004BC9A4();

    if (os_log_type_enabled(v30, v31))
    {
      v68 = *(v0 + 1088);
      v70 = *(v0 + 1128);
      v32 = *(v0 + 904);
      v33 = *(v0 + 888);
      v79 = *(v0 + 632);
      v81 = *(v0 + 1080);
      v72 = *(v0 + 616);
      v34 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v34 = 136446466;
      sub_1002EBF88(&qword_10060B3C8, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v35 = sub_1004BD934();
      v37 = v36;
      v68(v32, v33);
      v38 = sub_1002C4260(v35, v37, v86);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      *(v0 + 376) = v70;
      swift_errorRetain();
      v39 = sub_1004BBF04();
      v41 = sub_1002C4260(v39, v40, v86);

      *(v34 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "[State] Failed to load lyrics for song %{public}s — Error = %{public}s", v34, 0x16u);
      swift_arrayDestroy();

      v81(v79, v72);
    }

    else
    {
      v51 = *(v0 + 1088);
      v52 = *(v0 + 1080);
      v53 = *(v0 + 904);
      v54 = *(v0 + 888);
      v55 = *(v0 + 632);
      v56 = *(v0 + 616);

      v51(v53, v54);
      v52(v55, v56);
    }

    v84 = *(v0 + 1032);
    v57 = *(v0 + 752);
    v58 = *(v0 + 744);
    v59 = *(v0 + 664);
    v60 = *(v0 + 592);
    *v57 = 1;
    *(v57 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 344) = v60;
    sub_1004B7104();

    *(v0 + 352) = v60;
    swift_getKeyPath();
    sub_1004B7124();

    sub_1002EAA00(v60 + v84, v59, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA00(v59, v58, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EB154(v57, v59, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v59, v58) & 1) == 0)
    {
      sub_1002E3234();
    }

    v85 = *(v0 + 1088);
    v61 = *(v0 + 1032);
    v73 = *(v0 + 888);
    v76 = *(v0 + 944);
    v62 = *(v0 + 752);
    v63 = *(v0 + 720);
    v64 = *(v0 + 664);
    v65 = *(v0 + 592);
    sub_1002EAA68(*(v0 + 744), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA68(v62, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_1002EAA00(v65 + v61, v63, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_1002EB154(v64, v65 + v61, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002DE560(v63);
    sub_1002EAA68(v63, type metadata accessor for Lyrics.StateManager.State);
    sub_1002EAA68(v64, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 368) = v65;
    swift_getKeyPath();
    sub_1004B7114();

    v85(v76, v73);
  }

  v66 = *(v0 + 8);

  return v66();
}

id sub_1002E78D0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B7104();

  v4 = *(v2 + *a2);

  return v4;
}

id sub_1002E7980@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B7104();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

uint64_t sub_1002E7A44()
{
  v1 = v0;
  sub_100003ABC(&qword_10060A210, &qword_1004DB5A0);
  __chkstk_darwin();
  v48 = &v42[-v2];
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v4 = &v42[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100003ABC(&qword_10060AE08, &qword_1004DCEA0);
  __chkstk_darwin();
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v42[-v7];
  v9 = type metadata accessor for MetricsEvent.Page(0);
  v49 = *(*(v9 - 8) + 56);
  v49(v8, 1, 1, v9);
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *&v52 = v1;
  sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  v50 = v10;
  sub_1004B7104();

  v11 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_1002EAA00(v1 + v11, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *(v4 + 1);
      v14 = *(v4 + 2);
      v15 = *(v4 + 3);
      if (v4[32] != 1)
      {
        sub_1002EBD88(*v4, v13, v14, v15, 0);
        sub_100007214(v8, &qword_10060AE08, &qword_1004DCEA0);
        v19 = sub_1004B6B04();
        v20 = *(*(v19 - 8) + 56);
        goto LABEL_24;
      }

      v44 = *v4;
      v45 = v13;
      v46 = v14;
      v47 = v15;
      swift_getKeyPath();
      *&v52 = v1;
      sub_1004B7104();

      v16 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
      swift_beginAccess();
      v17 = *(v1 + v16);
      if (v17 && (v18 = [v17 vocalsControlCommand]) != 0)
      {
        v43 = [v18 isDisabled];
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 1;
      }

      swift_getKeyPath();
      *&v52 = v1;
      sub_1004B7104();

      v21 = *(v1 + v16);
      if (v21)
      {
        v22 = [v21 playingItem];
        if (v22)
        {
          v23 = v22;
          v24 = [v22 metadataObject];

          if (v24)
          {
            v25 = [v24 innermostModelObject];

            objc_opt_self();
            v26 = swift_dynamicCastObjCClass();
            if (v26)
            {
              v27 = [v26 lyrics];

              if (v27)
              {
                v28 = [v27 hasStoreLyrics];

                v29 = v28 ^ 1;
LABEL_20:
                static ApplicationCapabilities.shared.getter(&v52);
                sub_100051DEC(&v52);
                if (*(v44 + 56))
                {
                  v30 = (v53 == 1) & ~(v43 | v29);
                  if (*(v44 + 56) == 1)
                  {
                    sub_1002EBD88(v44, v45, v46, v47, 1);
                    sub_100007214(v8, &qword_10060AE08, &qword_1004DCEA0);
                    v31 = sub_1004B6B04();
                    v32 = v48;
                    (*(*(v31 - 8) + 56))(v48, 1, 1, v31);
                    v33 = 0x8000000100508060;
                    v41 = v30;
                    v34 = v6;
                    v35 = 0xD000000000000010;
                  }

                  else
                  {
                    sub_1002EBD88(v44, v45, v46, v47, 1);
                    sub_100007214(v8, &qword_10060AE08, &qword_1004DCEA0);
                    v37 = sub_1004B6B04();
                    v32 = v48;
                    (*(*(v37 - 8) + 56))(v48, 1, 1, v37);
                    v41 = v30;
                    v35 = 0x795373636972794CLL;
                    v33 = 0xEE00656C62616C6CLL;
                    v34 = v6;
                  }

                  MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v35, v33, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v32, 0, 0, 0, v34, 1, 0, 0, v41);
                  goto LABEL_27;
                }

                sub_1002EBD88(v44, v45, v46, v47, 1);
                sub_100007214(v8, &qword_10060AE08, &qword_1004DCEA0);
                v19 = sub_1004B6B04();
                v20 = *(*(v19 - 8) + 56);
LABEL_24:
                v36 = v48;
                v20(v48, 1, 1, v19);
                MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(0x745373636972794CLL, 0xEC00000063697461, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v36, 0, 0, 0, v6, 1, 0, 0, 2);
LABEL_27:
                v49(v6, 0, 1, v9);
                sub_1002EBE84(v6, v8);
                v38 = *(sub_100003ABC(&qword_10060ADE8, &qword_1004DCDC0) + 48);
                v39 = sub_1004BB384();
                (*(*(v39 - 8) + 8))(&v4[v38], v39);
                goto LABEL_28;
              }
            }

            else
            {
            }
          }
        }
      }

      v29 = 1;
      goto LABEL_20;
    }

    sub_100007214(v8, &qword_10060AE08, &qword_1004DCEA0);
  }

  else
  {
    sub_100007214(v8, &qword_10060AE08, &qword_1004DCEA0);
    sub_1002EAA68(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  }

  v49(v8, 1, 1, v9);
LABEL_28:
  sub_10000F778(v8, v6, &qword_10060AE08, &qword_1004DCEA0);
  swift_getKeyPath();
  __chkstk_darwin();
  v51 = v1;
  sub_1004B70F4();

  sub_100007214(v8, &qword_10060AE08, &qword_1004DCEA0);
  return sub_100007214(v6, &qword_10060AE08, &qword_1004DCEA0);
}

uint64_t sub_1002E8368(uint64_t a1)
{
  sub_100003ABC(&qword_10060B3B8, &qword_1004DD170);
  __chkstk_darwin();
  v162 = &v154 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v163 = &v154 - v3;
  sub_100003ABC(&qword_10060AD28, &qword_1004DCCE0);
  __chkstk_darwin();
  v5 = &v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v154 - v6;
  sub_100003ABC(&qword_10060AE00, &qword_1004DCE70);
  __chkstk_darwin();
  v169 = &v154 - v8;
  sub_100003ABC(&qword_10060ADF8, &qword_1004DCE40);
  __chkstk_darwin();
  v168 = &v154 - v9;
  sub_100003ABC(&qword_10060ACB8, &qword_1004DCB60);
  __chkstk_darwin();
  v167 = &v154 - v10;
  v180 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v181 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v179 = &v154 - v12;
  __chkstk_darwin();
  v165 = &v154 - v13;
  v184 = sub_1004B80B4();
  v182 = *(v184 - 8);
  __chkstk_darwin();
  v183 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v171 = &v154 - v15;
  __chkstk_darwin();
  v166 = &v154 - v16;
  sub_100003ABC(&qword_10060DEF0, &qword_1004E1420);
  __chkstk_darwin();
  v172 = &v154 - v17;
  v176 = sub_1004B6CD4();
  v175 = *(v176 - 8);
  __chkstk_darwin();
  v174 = &v154 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_1004B8724();
  v177 = *(v178 - 8);
  __chkstk_darwin();
  v20 = &v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v22 = &v154 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1004BB384();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  sub_1002EAA00(a1, v22, type metadata accessor for Lyrics.StateManager.State.Loading);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v43 = sub_1002EAA68(v22, type metadata accessor for Lyrics.StateManager.State.Loading);
LABEL_11:
    v45 = v184;
    v42 = v182;
LABEL_12:
    v47 = Logger.lyrics.unsafeMutableAddressor(v43, v44);
    v48 = v183;
    (*(v42 + 16))(v183, v47, v45);
    v49 = v181;
    sub_1002EAA00(v27, v181, type metadata accessor for Lyrics.StateManager.State);
    v50 = sub_1004B8094();
    v51 = sub_1004BC9A4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = v42;
      v54 = swift_slowAlloc();
      v188 = v54;
      *v52 = 136446210;
      sub_1002EAA00(v49, v179, type metadata accessor for Lyrics.StateManager.State);
      v55 = sub_1004BBF04();
      v57 = v56;
      sub_1002EAA68(v49, type metadata accessor for Lyrics.StateManager.State);
      v58 = sub_1002C4260(v55, v57, &v188);

      *(v52 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v50, v51, "Skipping Reporting lyrics for state=%{public}s", v52, 0xCu);
      sub_100004C6C(v54);

      return (*(v53 + 8))(v183, v184);
    }

    else
    {

      sub_1002EAA68(v49, type metadata accessor for Lyrics.StateManager.State);
      return (*(v42 + 8))(v48, v45);
    }
  }

  v155 = v7;
  v154 = v5;
  v28 = *(v22 + 1);
  v170 = *v22;
  v164 = v28;
  v29 = *(v22 + 2);
  v30 = *(v22 + 3);
  v31 = v22[32];
  v32 = sub_100003ABC(&qword_10060ADE8, &qword_1004DCDC0);
  (*(v24 + 32))(v26, &v22[*(v32 + 48)], v23);
  if ((sub_1004BB374() & 1) == 0)
  {
    (*(v24 + 8))(v26, v23);
    sub_1002EBD88(v170, v164, v29, v30, v31);
    goto LABEL_11;
  }

  v156 = v29;
  v157 = v30;
  v159 = v31;
  v160 = v26;
  v158 = v24;
  v161 = v23;
  v33 = v27 + *(v180 + 20);
  v34 = v177;
  v35 = v178;
  (v177[13])(v20, enum case for ScenePhase.active(_:), v178);
  v36 = sub_1004B8714();
  v34[1](v20, v35);
  if ((v36 & 1) == 0 || (v37 = type metadata accessor for Lyrics.StateManager.State.Display(0), *(v33 + *(v37 + 20)) != 1) || *(v33 + *(v37 + 24)) != 1)
  {
    v46 = sub_1002EBD88(v170, v164, v156, v157, v159);
    v43 = (*(v158 + 8))(v160, v161, v46);
    goto LABEL_11;
  }

  v38 = v172;
  sub_10000F778(v27 + *(v180 + 24), v172, &qword_10060DEF0, &qword_1004E1420);
  v39 = v175;
  v40 = v176;
  v41 = (*(v175 + 48))(v38, 1, v176);
  v42 = v182;
  if (v41 == 1)
  {
    (*(v158 + 8))(v160, v161);
    sub_1002EBD88(v170, v164, v156, v157, v159);
    v43 = sub_100007214(v38, &qword_10060DEF0, &qword_1004E1420);
    v45 = v184;
    goto LABEL_12;
  }

  v60 = (*(v39 + 32))(v174, v38, v40);
  v62 = Logger.lyrics.unsafeMutableAddressor(v60, v61);
  v63 = *(v42 + 16);
  v64 = v166;
  v178 = v62;
  v65 = v184;
  v177 = v63;
  v172 = v42 + 16;
  (v63)(v166);
  v66 = v165;
  sub_1002EAA00(v27, v165, type metadata accessor for Lyrics.StateManager.State);
  v67 = sub_1004B8094();
  v68 = sub_1004BC9A4();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v188 = v70;
    *v69 = 136446210;
    sub_1002EAA00(v66, v179, type metadata accessor for Lyrics.StateManager.State);
    v71 = sub_1004BBF04();
    v73 = v72;
    v65 = v184;
    sub_1002EAA68(v66, type metadata accessor for Lyrics.StateManager.State);
    v74 = v71;
    v42 = v182;
    v75 = sub_1002C4260(v74, v73, &v188);

    *(v69 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v67, v68, "Reporting lyrics for state=%{public}s", v69, 0xCu);
    sub_100004C6C(v70);
  }

  else
  {

    sub_1002EAA68(v66, type metadata accessor for Lyrics.StateManager.State);
  }

  v180 = *(v42 + 8);
  (v180)(v64, v65);
  v76 = v157;
  sub_1004B6C74();
  v78 = -v77;
  v79 = [objc_allocWithZone(MPCReportingLyricsViewEvent) init];
  v80 = v158;
  v81 = v167;
  v82 = v161;
  (*(v158 + 16))(v167, v160, v161);
  (*(v80 + 56))(v81, 0, 1, v82);
  sub_1004BCD54();
  swift_getKeyPath();
  v83 = v173;
  v188 = v173;
  v181 = sub_1002EBF88(&qword_10060ADE0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004B7104();

  v84 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v85 = *(v83 + v84);
  if (v85)
  {
    v86 = v85;
    v87 = MPCPlayerResponseTracklist.currentPlayEvent.getter();
  }

  else
  {
    v87 = 0;
  }

  [v79 setModelPlayEvent:v87];

  [v79 setVisibleDuration:v78];
  swift_getKeyPath();
  v183 = v79;
  v88 = v173;
  v187[4] = v173;
  sub_1004B7104();

  v89 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation;
  swift_beginAccess();
  v90 = v168;
  sub_10000F778(v88 + v89, v168, &qword_10060ADF8, &qword_1004DCE40);
  v91 = type metadata accessor for Lyrics.Translation(0);
  v92 = (*(*(v91 - 8) + 48))(v90, 1, v91) != 1;
  sub_100007214(v90, &qword_10060ADF8, &qword_1004DCE40);
  [v183 setDisplayTranslationEnabled:v92];
  swift_getKeyPath();
  v187[1] = v88;
  sub_1004B7104();

  v93 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  swift_beginAccess();
  v94 = v88 + v93;
  v95 = v169;
  sub_10000F778(v94, v169, &qword_10060AE00, &qword_1004DCE70);
  v96 = type metadata accessor for Lyrics.Transliteration(0);
  v97 = (*(*(v96 - 8) + 48))(v95, 1, v96) != 1;
  v98 = v183;
  sub_100007214(v95, &qword_10060AE00, &qword_1004DCE70);
  [v98 setDisplayTransliterationEnabled:v97];
  if (v159)
  {
    v99 = v170;
    v100 = v184;
    if (*(v170 + 24))
    {
      sub_1002EBE28(v170, v164, v156, v76, 1);

      v101 = sub_1004BBE24();
    }

    else
    {

      v101 = 0;
    }

    v110 = v163;
    [v183 setLyricsID:v101];

    (*(*v99 + 232))();
    v111 = sub_1004B6E44();
    v112 = *(v111 - 8);
    if ((*(v112 + 48))(v110, 1, v111) == 1)
    {
      sub_100007214(v110, &qword_10060B3B8, &qword_1004DD170);
      v113 = 0;
      v114 = v156;
      v115 = v164;
    }

    else
    {
      v116 = v155;
      sub_1004B6E14();
      (*(v112 + 8))(v110, v111);
      v117 = sub_1004B6D64();
      v118 = *(v117 - 8);
      if ((*(v118 + 48))(v116, 1, v117) == 1)
      {
        sub_100007214(v116, &qword_10060AD28, &qword_1004DCCE0);
        v113 = 0;
      }

      else
      {
        sub_1004B6D44();
        (*(v118 + 8))(v116, v117);
        v113 = sub_1004BBE24();
      }

      v76 = v157;
      v114 = v156;
      v115 = v164;
      v100 = v184;
    }

    v98 = v183;
    [v183 setLanguage:v113];

    v122 = v170;
    [v98 setDisplayType:*(v170 + 56)];
    sub_1002EBD88(v122, v115, v114, v76, 1);
    v102 = v171;
  }

  else
  {
    v102 = v171;
    v100 = v184;
    if (v76 && v76[3])
    {

      v103 = sub_1004BBE24();
    }

    else
    {

      v103 = 0;
    }

    [v98 setLyricsID:v103];

    if (v76)
    {
      v104 = *(*v76 + 232);

      v106 = v162;
      v104(v105);

      v107 = sub_1004B6E44();
      v108 = *(v107 - 8);
      if ((*(v108 + 48))(v106, 1, v107) == 1)
      {
        sub_100007214(v106, &qword_10060B3B8, &qword_1004DD170);
        v109 = 0;
        v102 = v171;
        v100 = v184;
      }

      else
      {
        v119 = v154;
        sub_1004B6E14();
        (*(v108 + 8))(v106, v107);
        v120 = sub_1004B6D64();
        v121 = *(v120 - 8);
        if ((*(v121 + 48))(v119, 1, v120) == 1)
        {
          sub_100007214(v119, &qword_10060AD28, &qword_1004DCCE0);
          v109 = 0;
        }

        else
        {
          sub_1004B6D44();
          (*(v121 + 8))(v119, v120);
          v109 = sub_1004BBE24();
        }

        v102 = v171;
        v76 = v157;
        v98 = v183;
        v100 = v184;
      }
    }

    else
    {
      v109 = 0;
    }

    [v98 setLanguage:v109];

    [v98 setDisplayType:0];
  }

  v123 = sub_1004BBE24();
  [v98 setFeatureName:v123];

  [v98 setUserPreferenceSyllable:2];
  swift_getKeyPath();
  v124 = v173;
  v185 = v173;
  sub_1004B7104();

  [*(v124 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) recordLyricsViewEvent:v98];
  (v177)(v102, v178, v100);
  v125 = v98;
  v126 = sub_1004B8094();
  v127 = sub_1004BC9A4();

  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    v187[0] = swift_slowAlloc();
    *v128 = 136446978;
    v185 = [v125 displayType];
    type metadata accessor for MPCReportingLyricsViewEventDisplayType(0);
    v129 = sub_1004BBF04();
    v131 = sub_1002C4260(v129, v130, v187);

    *(v128 + 4) = v131;
    *(v128 + 12) = 2082;
    v132 = [v125 lyricsID];
    if (v132)
    {
      v133 = v132;
      v134 = sub_1004BBE64();
      v136 = v135;
    }

    else
    {
      v134 = 0;
      v136 = 0;
    }

    v185 = v134;
    v186 = v136;
    sub_100003ABC(&qword_100610D60, &qword_1004E4540);
    v139 = sub_1004BBF04();
    v141 = sub_1002C4260(v139, v140, v187);

    *(v128 + 14) = v141;
    *(v128 + 22) = 2082;
    [v125 visibleDuration];
    v142 = sub_1004BC5C4();
    v144 = sub_1002C4260(v142, v143, v187);

    *(v128 + 24) = v144;
    *(v128 + 32) = 2082;
    v145 = [v125 modelSong];
    if (v145)
    {
      v146 = v145;
      v147 = [v145 humanDescription];

      v148 = sub_1004BBE64();
      v150 = v149;
    }

    else
    {
      v148 = 0;
      v150 = 0;
    }

    v185 = v148;
    v186 = v150;
    v151 = sub_1004BBF04();
    v153 = sub_1002C4260(v151, v152, v187);

    *(v128 + 34) = v153;
    _os_log_impl(&_mh_execute_header, v126, v127, "Recorded PAF Event of type=%{public}s; id=%{public}s; duration=%{public}ss; song=%{public}s", v128, 0x2Au);
    swift_arrayDestroy();

    sub_1002EBD88(v170, v164, v156, v157, v159);
    v137 = v171;
    v138 = v184;
  }

  else
  {

    sub_1002EBD88(v170, v164, v156, v76, v159);
    v137 = v102;
    v138 = v100;
  }

  (v180)(v137, v138);
  (*(v175 + 8))(v174, v176);
  return (*(v158 + 8))(v160, v161);
}

uint64_t Lyrics.StateManager.deinit()
{
  sub_1002EAA68(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state, type metadata accessor for Lyrics.StateManager.State);

  sub_100007214(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song, &qword_10060ACB8, &qword_1004DCB60);
  sub_100007214(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation, &qword_10060ADF8, &qword_1004DCE40);
  sub_100007214(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration, &qword_10060AE00, &qword_1004DCE70);
  sub_100007214(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__metricsPage, &qword_10060AE08, &qword_1004DCEA0);

  v1 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v2 = sub_1004B7144();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Lyrics.StateManager.__deallocating_deinit()
{
  Lyrics.StateManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1002E9DF0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1002EC4C0;

  return v6(a1);
}

uint64_t _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[4])
  {
    if (*(a2 + 32))
    {
      return *a2 == v3;
    }

    return 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = v3 == *a2 && a1[1] == *(a2 + 8);
  if (!v9 && (sub_1004BD9C4() & 1) == 0 || (sub_1003296E8(v5, v7) & 1) == 0)
  {
    return 0;
  }

  if (v8)
  {
    v10 = v6 == v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v6)
  {
    return v11;
  }

  else
  {
    return v8 == 0;
  }
}

BOOL _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO5ErrorO21__derived_enum_equalsySbAL_ALtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        sub_100009130(0, &unk_1006111F0, NSObject_ptr);
        return sub_1004BCFA4() & 1;
      }

      return 0;
    }

    if (a1)
    {
      return a4 == 2 && a3 == 1;
    }

    return a4 == 2 && !a3;
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    return a3 == a1;
  }
}

uint64_t _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004BB384();
  v37 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v36 - v7;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v36 - v10;
  sub_100003ABC(&qword_10060B3E0, &qword_1004DD210);
  __chkstk_darwin();
  v13 = &v36 - v12;
  v15 = &v36 + *(v14 + 56) - v12;
  sub_1002EAA00(a1, &v36 - v12, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_1002EAA00(a2, v15, type metadata accessor for Lyrics.StateManager.State.Loading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1002EAA00(v13, v11, type metadata accessor for Lyrics.StateManager.State.Loading);
    v26 = *v11;
    v27 = v11[8];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1002EC1DC(v26, v27);
      goto LABEL_11;
    }

    v28 = *v15;
    v29 = v15[8];
    if (v27)
    {
      if (v27 == 1)
      {
        if (v29 == 1)
        {
          v30 = *v15;
          sub_100009130(0, &unk_1006111F0, NSObject_ptr);
          v31 = sub_1004BCFA4();
          sub_1002EC1DC(v30, 1);
          sub_1002EC1DC(v26, 1);
          if ((v31 & 1) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_9;
        }

        sub_1002EC1DC(v28, v29);
        v28 = v26;
        LOBYTE(v29) = 1;
      }

      else if (v26)
      {
        if (v29 == 2 && v28 == 1)
        {
          goto LABEL_9;
        }
      }

      else if (v29 == 2 && v28 == 0)
      {
        goto LABEL_9;
      }
    }

    else if (!v15[8])
    {
      if (v28 != v26)
      {
        goto LABEL_33;
      }

LABEL_9:
      sub_1002EAA68(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
      v24 = 1;
      return v24 & 1;
    }

    sub_1002EC1DC(v28, v29);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_100007214(v13, &qword_10060B3E0, &qword_1004DD210);
LABEL_34:
    v24 = 0;
    return v24 & 1;
  }

  sub_1002EAA00(v13, v9, type metadata accessor for Lyrics.StateManager.State.Loading);
  v17 = *(v9 + 1);
  v38[0] = *v9;
  v38[1] = v17;
  v39 = v9[32];
  v18 = *(sub_100003ABC(&qword_10060ADE8, &qword_1004DCDC0) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v37 + 8))(&v9[v18], v4);
    sub_1002EC1AC(v38);
    goto LABEL_11;
  }

  v19 = *(v15 + 1);
  v40[0] = *v15;
  v40[1] = v19;
  v41 = v15[32];
  v20 = v37;
  v21 = *(v37 + 32);
  v22 = &v9[v18];
  v23 = v36;
  v21(v36, v22, v4);
  v21(v6, &v15[v18], v4);
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(v38, v40) & 1) == 0)
  {
    sub_1002EC1AC(v40);
    sub_1002EC1AC(v38);
    v32 = *(v20 + 8);
    v32(v6, v4);
    v32(v23, v4);
LABEL_33:
    sub_1002EAA68(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
    goto LABEL_34;
  }

  v24 = sub_1004BB314();
  sub_1002EC1AC(v40);
  sub_1002EC1AC(v38);
  v25 = *(v20 + 8);
  v25(v6, v4);
  v25(v23, v4);
  sub_1002EAA68(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
  return v24 & 1;
}

BOOL _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004B6CD4();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060DEF0, &qword_1004E1420);
  __chkstk_darwin();
  v9 = &v25 - v8;
  v10 = sub_100003ABC(&qword_10060E520, &qword_1004E1BC0);
  __chkstk_darwin();
  v12 = &v25 - v11;
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v26 = v5;
  v13 = type metadata accessor for Lyrics.StateManager.State(0);
  v14 = *(v13 + 20);
  v15 = a1 + v14;
  v16 = a2 + v14;
  if ((sub_1004B8714() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  if (*(v15 + *(v17 + 20)) != *(v16 + *(v17 + 20)) || *(v15 + *(v17 + 24)) != *(v16 + *(v17 + 24)))
  {
    return 0;
  }

  v18 = *(v13 + 24);
  v19 = *(v10 + 48);
  sub_10000F778(a1 + v18, v12, &qword_10060DEF0, &qword_1004E1420);
  sub_10000F778(a2 + v18, &v12[v19], &qword_10060DEF0, &qword_1004E1420);
  v20 = v26;
  v21 = *(v26 + 48);
  if (v21(v12, 1, v4) == 1)
  {
    if (v21(&v12[v19], 1, v4) == 1)
    {
      sub_100007214(v12, &qword_10060DEF0, &qword_1004E1420);
      return 1;
    }

    goto LABEL_10;
  }

  sub_10000F778(v12, v9, &qword_10060DEF0, &qword_1004E1420);
  if (v21(&v12[v19], 1, v4) == 1)
  {
    (*(v20 + 8))(v9, v4);
LABEL_10:
    sub_100007214(v12, &qword_10060E520, &qword_1004E1BC0);
    return 0;
  }

  (*(v20 + 32))(v7, &v12[v19], v4);
  sub_1002EBF88(&qword_10060E550, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v23 = sub_1004BBD84();
  v24 = *(v20 + 8);
  v24(v7, v4);
  v24(v9, v4);
  sub_100007214(v12, &qword_10060DEF0, &qword_1004E1420);
  return (v23 & 1) != 0;
}

uint64_t sub_1002EAA00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002EAA68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1002EAACC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  Lyrics.StateManager.tracklist.setter(v1);
}

uint64_t sub_1002EAB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004BB384();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060ACB8, &qword_1004DCB60);
  __chkstk_darwin();
  v9 = &v19 - v8;
  sub_100003ABC(&qword_10060B3E8, &qword_1004DD240);
  __chkstk_darwin();
  v11 = &v19 - v10;
  v13 = *(v12 + 56);
  sub_10000F778(a1, &v19 - v10, &qword_10060ACB8, &qword_1004DCB60);
  sub_10000F778(a2, &v11[v13], &qword_10060ACB8, &qword_1004DCB60);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) != 1)
  {
    sub_10000F778(v11, v9, &qword_10060ACB8, &qword_1004DCB60);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v11[v13], v4);
      sub_1002EBF88(&qword_10060B3D0, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v16 = sub_1004BBD84();
      v17 = *(v5 + 8);
      v17(v7, v4);
      v17(v9, v4);
      sub_100007214(v11, &qword_10060ACB8, &qword_1004DCB60);
      v15 = v16 ^ 1;
      return v15 & 1;
    }

    (*(v5 + 8))(v9, v4);
    goto LABEL_6;
  }

  if (v14(&v11[v13], 1, v4) != 1)
  {
LABEL_6:
    sub_100007214(v11, &qword_10060B3E8, &qword_1004DD240);
    v15 = 1;
    return v15 & 1;
  }

  sub_100007214(v11, &qword_10060ACB8, &qword_1004DCB60);
  v15 = 0;
  return v15 & 1;
}

uint64_t sub_1002EB0A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000136EC;

  return sub_1002E3188();
}

uint64_t sub_1002EB154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_1002EB1C4(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State(319);
  if (v1 <= 0x3F)
  {
    sub_1002EB798(319, &qword_10060AE48, &type metadata accessor for Song);
    if (v2 <= 0x3F)
    {
      sub_1002EB798(319, &qword_10060AE50, type metadata accessor for Lyrics.Translation);
      if (v3 <= 0x3F)
      {
        sub_1002EB798(319, &qword_10060AE58, type metadata accessor for Lyrics.Transliteration);
        if (v4 <= 0x3F)
        {
          sub_1002EB798(319, &unk_10060AE60, type metadata accessor for MetricsEvent.Page);
          if (v5 <= 0x3F)
          {
            sub_1004B7144();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1002EB428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100003ABC(&qword_10060DEF0, &qword_1004E1420);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1002EB588(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100003ABC(&qword_10060DEF0, &qword_1004E1420);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_1002EB6E0(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State.Loading(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Lyrics.StateManager.State.Display(319);
    if (v2 <= 0x3F)
    {
      sub_1002EB798(319, &unk_10060B238, &type metadata accessor for Date);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002EB798(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004BD174();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1002EB7EC(uint64_t a1)
{
  sub_1002EB858(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1002EB858(uint64_t a1)
{
  if (!qword_10060B2F0)
  {
    sub_1004BB384();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10060B2F0);
    }
  }
}

uint64_t sub_1002EB8C0(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1002EB900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004B8724();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1002EB9E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004B8724();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1002EBA98(uint64_t a1)
{
  result = sub_1004B8724();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 initializeWithCopy for HitMyRectButton.HitRectAdjustment(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HitMyRectButton.HitRectAdjustment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HitMyRectButton.HitRectAdjustment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002EBBE0()
{

  return swift_deallocObject();
}

uint64_t sub_1002EBC18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001384C;

  return sub_100109480(a1, v4);
}

uint64_t sub_1002EBCD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000136EC;

  return sub_100109480(a1, v4);
}

double sub_1002EBD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }

  return result;
}

double sub_1002EBE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_1002EBE84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060AE08, &qword_1004DCEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1002EBEF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) = v2;
  v4 = v2;
}

uint64_t sub_1002EBF88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1002EC044()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader) = v2;
  v4 = v2;
}

uint64_t sub_1002EC084(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001384C;

  return sub_10010961C(a1, v4);
}

uint64_t sub_1002EC13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060DEF0, &qword_1004E1420);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1002EC1DC(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

uint64_t sub_1002EC1F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001384C;

  return sub_1002E9DF0(a1, v4);
}

uint64_t sub_1002EC2AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001384C;

  return sub_1002E0E40();
}

uint64_t sub_1002EC360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1002EC3C4(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_1002EC408(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

char *VocalsAttenuationSlider.init(frame:)(double a1, double a2, double a3, double a4)
{
  v33.receiver = v4;
  v33.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  v10 = static AccessibilityIdentifier.named(_:)(0xD000000000000017, 0x8000000100508080);
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v10, v11, v14, v12, v13);
  if (qword_100609A20 != -1)
  {
    swift_once();
  }

  v15 = qword_100618C60;
  LOBYTE(v53[0]) = 1;
  *&v36 = 0x6F68706F7263694DLL;
  *(&v36 + 1) = 0xEA0000000000656ELL;
  *&v37 = qword_100618C60;
  *(&v37 + 1) = 0x3FF0000000000000;
  v38 = 0;
  v39 = 0;
  v40 = 0x3FF0000000000000;
  v41 = 0;
  *&v42 = 0;
  *(&v42 + 1) = _swiftEmptyArrayStorage;
  v43 = 0;
  v44 = 0;
  v45 = 1;
  v46 = v36;
  v47 = v37;
  v52 = 1;
  v50 = v42;
  v51 = 0u;
  v16 = &v9[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  v48 = 0u;
  v49 = 0x3FF0000000000000uLL;
  swift_beginAccess();
  v17 = *v16;
  v18 = *(v16 + 2);
  v34[1] = *(v16 + 1);
  v34[2] = v18;
  v34[0] = v17;
  v19 = *(v16 + 3);
  v20 = *(v16 + 4);
  v21 = *(v16 + 5);
  v35 = v16[96];
  v34[4] = v20;
  v34[5] = v21;
  v34[3] = v19;
  v23 = *(v16 + 4);
  v22 = *(v16 + 5);
  v24 = *(v16 + 3);
  v54 = v16[96];
  v53[4] = v23;
  v53[5] = v22;
  v53[3] = v24;
  v25 = *v16;
  v26 = *(v16 + 2);
  v53[1] = *(v16 + 1);
  v53[2] = v26;
  v53[0] = v25;
  v27 = v51;
  *(v16 + 4) = v50;
  *(v16 + 5) = v27;
  v16[96] = v52;
  v28 = v47;
  *v16 = v46;
  *(v16 + 1) = v28;
  v29 = v49;
  *(v16 + 2) = v48;
  *(v16 + 3) = v29;
  v30 = v15;
  sub_1002EC870(v34, v32);
  sub_1002BA0E0(&v36, v32);
  sub_1002EC8E0(v53);
  sub_1003C6790(v34);
  sub_1002EC8E0(v34);
  sub_1002BB46C(&v36);

  return v9;
}

void VocalsAttenuationSlider.accessibilitySliderCurrentPercentageValue.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

uint64_t sub_1002EC870(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_10060B3F8, &qword_1004DD250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EC8E0(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060B3F8, &qword_1004DD250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002EC96C()
{
  sub_1002EE088();
  result = sub_1004B8A04();
  static AnyTransition.glowTextReveal = result;
  return result;
}

uint64_t *AnyTransition.glowTextReveal.unsafeMutableAddressor()
{
  if (qword_100609B88 != -1)
  {
    swift_once();
  }

  return &static AnyTransition.glowTextReveal;
}

uint64_t static AnyTransition.glowTextReveal.getter()
{
  if (qword_100609B88 != -1)
  {
    swift_once();
  }
}

uint64_t GlowTextRevealTransition.body(content:phase:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if (sub_1004B8DC4())
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = sub_100003ABC(&qword_10060B428, &qword_1004DD290);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  result = sub_100003ABC(&qword_10060B430, &qword_1004DD298);
  *(a3 + *(result + 36)) = v5;
  return result;
}

double (*GlowTextRevealEffectRenderer.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_1002EE0DC;
}

void GlowTextRevealEffectRenderer.draw(layout:in:)(uint64_t a1, uint64_t *a2, double a3)
{
  v59 = a2;
  v58 = sub_1004B8CE4();
  v52 = *(v58 - 8);
  __chkstk_darwin();
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100003ABC(&qword_10060B438, &qword_1004DD2A0);
  v60 = *(v65 - 8);
  __chkstk_darwin();
  v63 = &v45 - v6;
  v67 = sub_1004B9D04();
  v51 = *(v67 - 8);
  __chkstk_darwin();
  v56 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v45 - v8;
  sub_100003ABC(&qword_10060B440, &qword_1004DD2A8);
  __chkstk_darwin();
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = (&v45 - v11);
  v13 = sub_1004B9D14();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060B448, &qword_1004DD2B0);
  __chkstk_darwin();
  v18 = &v45 - v17;
  v19 = sub_100003ABC(&qword_10060B450, &qword_1004DD2B8) - 8;
  v20 = __chkstk_darwin();
  v22 = &v45 - v21;
  v20.n128_f64[0] = a3;
  v64 = sub_1002ED33C(a1, v20);
  (*(v14 + 16))(v18, a1, v13);
  v23 = v18;
  v24 = v22;
  v25.n128_f64[0] = (*(v14 + 32))(v16, v23, v13);
  sub_1002ED74C(&qword_10060B458, &protocol conformance descriptor for Text.Layout, v25);
  sub_1004BC124();
  v46 = *(v19 + 44);
  *&v22[v46] = 0;
  v26 = *(sub_100003ABC(&qword_10060B460, &qword_1004DD2C0) + 36);
  v28 = sub_1002ED74C(&qword_10060B468, &protocol conformance descriptor for Text.Layout, v27);
  v62 = 0;
  v47 = (v51 + 16);
  v66 = (v51 + 32);
  v29 = v60;
  v60 += 6;
  v61 = (v29 + 7);
  v50 = (v52 + 8);
  v49 = (v51 + 8);
  v52 = v26;
  v51 = v28;
  v55 = v12;
  v54 = v13;
  v53 = v10;
  while (1)
  {
    sub_1004BC764();
    if (*(v24 + v26) == v69[0])
    {
      v30 = 1;
      v31 = v65;
      goto LABEL_6;
    }

    v32 = sub_1004BC844();
    v33 = v48;
    v34 = v67;
    (*v47)(v48);
    v32(v69, 0);
    sub_1004BC774();
    v31 = v65;
    v35 = v66;
    v36 = *(v65 + 48);
    v38 = v62;
    v37 = v63;
    *v63 = v62;
    (*v35)(&v37[v36], v33, v34);
    if (__OFADD__(v38, 1))
    {
      break;
    }

    v62 = v38 + 1;
    *(v24 + v46) = v38 + 1;
    sub_100025B04(v63, v10, &qword_10060B438, &qword_1004DD2A0);
    v30 = 0;
LABEL_6:
    (*v61)(v10, v30, 1, v31);
    sub_100025B04(v10, v12, &qword_10060B440, &qword_1004DD2A8);
    if ((*v60)(v12, 1, v31) == 1)
    {
      sub_1002ED790(v24);

      return;
    }

    v39 = *v12;
    v40 = v12 + *(v31 + 48);
    v41 = v56;
    (*v66)(v56, v40, v67);
    v69[0] = *v59;
    __chkstk_darwin();
    *(&v45 - 4) = a3;
    v42 = v64;
    *(&v45 - 3) = v41;
    *(&v45 - 2) = v42;
    *(&v45 - 1) = v39;

    sub_1004B8CA4();
    v68 = v69[0];
    __chkstk_darwin();
    *(&v45 - 4) = a3;
    *(&v45 - 3) = v41;
    *(&v45 - 2) = v42;
    *(&v45 - 1) = v39;
    v10 = v53;

    sub_1004B8CA4();
    v43 = v57;
    sub_1004B8CD4();
    sub_1004B8D14();
    (*v50)(v43, v58);
    sub_1004B8CB4();
    sub_1004B8CB4();

    v44 = v41;
    v12 = v55;
    (*v49)(v44, v67);
    v26 = v52;
  }

  __break(1u);
}

char *sub_1002ED33C(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v34 = sub_1004B9D04();
  v4 = *(v34 - 8);
  __chkstk_darwin();
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B9D14();
  sub_1002ED74C(&qword_10060B468, &protocol conformance descriptor for Text.Layout, v7);
  v8 = sub_1004BC734();
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v10 = v8;
    v35 = _swiftEmptyArrayStorage;
    sub_1003BF7E8(0, v8 & ~(v8 >> 63), 0);
    v9 = v35;
    sub_1004BC724();
    if (v10 < 0)
    {
      goto LABEL_24;
    }

    v33 = (v4 + 16);
    do
    {
      v11 = sub_1004BC844();
      v12 = v34;
      (*v33)(v6);
      v11(v41, 0);
      sub_1004B9CF4();
      v42.origin.x = v36;
      v42.size.width = v38;
      v42.origin.y = v37 - v39;
      v42.size.height = v39 + v40;
      Width = CGRectGetWidth(v42);
      (*(v4 + 8))(v6, v12);
      v35 = v9;
      v14 = a1;
      v16 = v9[2];
      v15 = v9[3];
      if (v16 >= v15 >> 1)
      {
        sub_1003BF7E8((v15 > 1), v16 + 1, 1);
        v9 = v35;
      }

      v9[2] = v16 + 1;
      *&v9[v16 + 4] = Width;
      sub_1004BC774();
      --v10;
      a1 = v14;
    }

    while (v10);
  }

  v17 = v9[2];
  if (!v17)
  {
    v19 = 0.0;
    goto LABEL_16;
  }

  if (v17 <= 3)
  {
    v18 = 0;
    v19 = 0.0;
LABEL_14:
    v22 = v17 - v18;
    v23 = &v9[v18 + 4];
    do
    {
      v24 = *v23++;
      v19 = v19 + v24;
      --v22;
    }

    while (v22);
    goto LABEL_16;
  }

  v18 = v17 & 0x7FFFFFFFFFFFFFFCLL;
  v20 = (v9 + 6);
  v19 = 0.0;
  v21 = v17 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v19 = v19 + *(v20 - 2) + *(v20 - 1) + *v20 + v20[1];
    v20 += 4;
    v21 -= 4;
  }

  while (v21);
  if (v17 != v18)
  {
    goto LABEL_14;
  }

LABEL_16:
  sub_100003ABC(&qword_10060B4A8, &unk_1004DDD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50A0;
  *(inited + 32) = 0;
  if (v17)
  {
    v26 = 0;
    while (v26 < v9[2])
    {
      v27 = *&v9[v26 + 4];
      v28 = v26 + 1;
      v29 = *(inited + 8 * v26 + 32);
      v30 = *(inited + 24);
      if (v26 + 1 >= v30 >> 1)
      {
        inited = sub_1003BEDB8((v30 > 1), v26 + 2, 1, inited);
      }

      *(inited + 16) = v26 + 2;
      *(inited + 8 * v26++ + 40) = v27 / v19 + v29;
      if (v17 == v28)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

LABEL_22:

  v41[0] = inited;
  v31 = sub_1002ED924(0, v17, v41, v2);

  return v31;
}

uint64_t sub_1002ED74C(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    sub_1004B9D14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002ED790(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_10060B450, &qword_1004DD2B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002ED850(uint64_t result, uint64_t (*a2)(void, uint64_t, double))
{
  v3 = v2[5];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v2[4];
    if (*(v4 + 16) > v3)
    {
      return a2(v2[3], result, *(v4 + 8 * v3 + 32));
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1002ED8D0()
{
  result = qword_10060B470;
  if (!qword_10060B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B470);
  }

  return result;
}

char *sub_1002ED924(char *result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_18;
  }

  v5 = result;
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    result = sub_1003BF7C8(0, v4 & ~(v4 >> 63), 0);
    if (a2 < v5 || v4 < 0)
    {
      goto LABEL_19;
    }

    result = _swiftEmptyArrayStorage;
    v9 = v5;
    while (a2 != v9)
    {
      if (v5 < 0)
      {
        goto LABEL_15;
      }

      v10 = *(*a3 + 16);
      if (v9 >= v10)
      {
        goto LABEL_16;
      }

      v11 = v9 + 1;
      if (v9 + 1 >= v10)
      {
        goto LABEL_17;
      }

      v12 = *a3 + 8 * v9;
      v13 = *(v12 + 32);
      v14 = *(v12 + 40);
      v17 = result;
      v16 = *(result + 2);
      v15 = *(result + 3);
      if (v16 >= v15 >> 1)
      {
        sub_1003BF7C8((v15 > 1), v16 + 1, 1);
        result = v17;
      }

      *(result + 2) = v16 + 1;
      *&result[8 * v16 + 32] = (a4 - v13) / (v14 - v13);
      v9 = v11;
      if (a2 == v11)
      {
        return result;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

double sub_1002EDAB8(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_1002EDAC4(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_1002EDAF0;
}

double sub_1002EDAF0(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

unint64_t sub_1002EDB28()
{
  result = qword_10060B478;
  if (!qword_10060B478)
  {
    sub_100003B68(&qword_10060B430, &qword_1004DD298);
    sub_1000206D4(&qword_10060B480, &qword_10060B428, &qword_1004DD290, &protocol conformance descriptor for PlaceholderContentView<A>);
    sub_1000206D4(&qword_10060B488, &qword_10060B490, &qword_1004DD410, &protocol conformance descriptor for _TextRendererViewModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B478);
  }

  return result;
}

uint64_t sub_1002EDC0C(double a1, uint64_t a2, uint64_t *a3)
{
  v3 = sub_1004B8D04();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060B4A0, &unk_1004DD420);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004C50C0;
  *(v7 + 32) = sub_1004BA2B4();
  *(v7 + 40) = sub_1004BA294();
  sub_1004BA6F4();
  sub_1004B9CF4();
  sub_1004B9CF4();
  sub_1004B9CF4();
  *&v13.origin.x = v9[13];
  *&v13.size.width = v9[15];
  v13.origin.y = *&v9[14] - v10;
  v13.size.height = v10 + v11;
  CGRectInset(v13, -14.0, 0.0);
  sub_1004B9C54();
  sub_1004B8CF4();

  sub_1004B8CC4();
  sub_1002EE034(v12);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1002EDDE8(double a1, uint64_t a2, uint64_t *a3)
{
  v3 = sub_1004B8D04();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060B498, &qword_1004DD418);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004C50B0;
  sub_1004BA294();
  *(v7 + 32) = sub_1004BA6D4();
  *(v7 + 40) = v8;
  sub_1004BA2B4();
  *(v7 + 48) = sub_1004BA6D4();
  *(v7 + 56) = v9;
  sub_1004BA2B4();
  *(v7 + 64) = sub_1004BA6D4();
  *(v7 + 72) = v10;
  sub_1004BA294();
  *(v7 + 80) = sub_1004BA6D4();
  *(v7 + 88) = v11;
  sub_1004BA6E4();
  sub_1004B9CF4();
  sub_1004B9CF4();
  sub_1004B9CF4();
  *&v17.origin.x = v13[13];
  *&v17.size.width = v13[15];
  v17.origin.y = *&v13[14] - v14;
  v17.size.height = v14 + v15;
  CGRectInset(v17, -57.5, 0.0);
  sub_1004B9C54();
  sub_1004B8CF4();

  sub_1004B8CC4();
  sub_1002EE034(v16);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1002EE088()
{
  result = qword_10060B4B0;
  if (!qword_10060B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B4B0);
  }

  return result;
}

double Corner.radius(in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    return *&a1;
  }

  Width = CGRectGetWidth(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  Height = CGRectGetHeight(v14);
  if (Height >= Width)
  {
    Height = Width;
  }

  return Height * 0.5;
}

void Corner.hash(into:)(uint64_t a1, Swift::UInt64 a2, Swift::UInt a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      sub_1004BBF84();
      if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = 0;
      }

      sub_1004BDBE4(v5);
    }

    else
    {

      sub_1004BBF84();
    }
  }

  else
  {
    sub_1004BBF84();
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    sub_1004BDBE4(v7);
    sub_1004BDBB4(a3);
  }
}

BOOL static Corner.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return *&a1 == *&a4;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  return *&a1 == *&a4 && a2 == a5;
}

Swift::Int Corner.hashValue.getter(Swift::UInt64 a1, Swift::UInt a2, char a3)
{
  sub_1004BDBA4();
  Corner.hash(into:)(v7, a1, a2, a3);
  return sub_1004BDBF4();
}

Swift::Int sub_1002EE310()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1004BDBA4();
  Corner.hash(into:)(v5, v1, v2, v3);
  return sub_1004BDBF4();
}

Swift::Int sub_1002EE378()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1004BDBA4();
  Corner.hash(into:)(v5, v1, v2, v3);
  return sub_1004BDBF4();
}

uint64_t sub_1002EE3D0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    v5 = *a1 == v2;
    if (v4 != 1)
    {
      v5 = 0;
    }

    v6 = v3 | *&v2;
    v8 = v4 == 2 && v6 == 0;
    if (*(a1 + 16) == 1)
    {
      return v5;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a1 + 8) == v3;
    }

    v11 = v10;
    if (*a1 == *a2)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t static Border.__derived_struct_equals(_:_:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4, double a5, double a6)
{
  v7 = a2;
  v8 = sub_1004BA254() & (a5 == a6);
  if (v7 == a4)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void Border.hash(into:)(double a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  sub_1004BA274();
  v6 = 0.0;
  if (a1 != 0.0)
  {
    v6 = a1;
  }

  sub_1004BDBE4(*&v6);
  sub_1004BDBB4(a4);
}

Swift::Int Border.hashValue.getter(uint64_t a1, unsigned __int8 a2, double a3)
{
  sub_1004BDBA4();
  sub_1004BA274();
  v5 = 0.0;
  if (a3 != 0.0)
  {
    v5 = a3;
  }

  sub_1004BDBE4(*&v5);
  sub_1004BDBB4(a2);
  return sub_1004BDBF4();
}

void sub_1002EE570(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_1004BA274();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  sub_1004BDBE4(*&v4);
  sub_1004BDBB4(v3);
}

Swift::Int sub_1002EE5D0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1004BDBA4();
  sub_1004BA274();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  sub_1004BDBE4(*&v3);
  sub_1004BDBB4(v2);
  return sub_1004BDBF4();
}

BOOL sub_1002EE650(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = sub_1004BA254();
  result = 0;
  if ((v6 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t UIView.Shadow.init(color:opacity:radius:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

void Shadow.hash(into:)(uint64_t a1)
{
  sub_1004BA274();
  v2 = v1[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_1004BDBE4(*&v2);
  v3 = v1[2];
  v4 = v1[3];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_1004BDBE4(*&v3);
  if (v4 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  sub_1004BDBE4(*&v5);
  v6 = v1[4];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  sub_1004BDBE4(*&v6);
}

Swift::Int Shadow.hashValue.getter()
{
  sub_1004BDBA4();
  Shadow.hash(into:)(v1);
  return sub_1004BDBF4();
}

Swift::Int sub_1002EE808()
{
  sub_1004BDBA4();
  Shadow.hash(into:)(v1);
  return sub_1004BDBF4();
}

BOOL sub_1002EE844(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  v10 = sub_1004BA254();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7 && v5 == v9)
  {
    return v4 == v8;
  }

  return result;
}

uint64_t sub_1002EE8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v8 = sub_100003ABC(&qword_10060B4F8, &qword_1004DD868);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = sub_100003ABC(&qword_10060B500, &qword_1004DD870);
  v10 = a2 + *(result + 36);
  *v10 = v5;
  *(v10 + 8) = v6;
  *(v10 + 16) = v7;
  *(v10 + 24) = 0;
  *(v10 + 32) = 256;
  return result;
}

uint64_t sub_1002EE9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (!*(v2 + 16))
  {
    v6 = 0.5;
    goto LABEL_5;
  }

  v5 = 0.0;
  if (*(v2 + 16) == 1)
  {
    v6 = -0.5;
LABEL_5:
    v5 = *(v2 + 1) * v6;
  }

  v8 = v2[3];
  v7 = v2[4];
  v9 = *(v2 + 40);
  sub_1004B8854();

  v10 = sub_1004BA754();
  v12 = v11;
  v13 = sub_1004BA754();
  v15 = v14;
  *&v27 = v8;
  *(&v27 + 1) = v7;
  LOBYTE(v28) = v9;
  *(&v28 + 1) = v5;
  v29 = v24;
  v30 = v25;
  *&v31 = v26;
  *(&v31 + 1) = v4;
  LOWORD(v32) = 256;
  *(&v32 + 1) = v10;
  *&v33 = v12;
  *(&v33 + 1) = v13;
  v34 = v14;
  v16 = sub_100003ABC(&qword_10060B508, &qword_1004DD878);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  v17 = a2 + *(sub_100003ABC(&qword_10060B510, &qword_1004DD880) + 36);
  v18 = v32;
  *(v17 + 64) = v31;
  *(v17 + 80) = v18;
  *(v17 + 96) = v33;
  *(v17 + 112) = v34;
  v19 = v28;
  *v17 = v27;
  *(v17 + 16) = v19;
  v20 = v30;
  *(v17 + 32) = v29;
  *(v17 + 48) = v20;
  v35[0] = v8;
  v35[1] = v7;
  v36 = v9;
  v37 = v5;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = v4;
  v42 = 256;
  v43 = v10;
  v44 = v12;
  v45 = v13;
  v46 = v15;
  sub_10000F778(&v27, &v23, &qword_10060B518, &qword_1004DD888);
  return sub_100007214(v35, &qword_10060B518, &qword_1004DD888);
}

uint64_t View.shadow(_:corner:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *v7 = *a1;
  *&v7[8] = *(a1 + 8);
  *&v7[24] = *(a1 + 24);
  *&v7[40] = a2;
  *&v7[48] = a3;
  v7[56] = a4;

  sub_1004BA124();
  v8[0] = *v7;
  v8[1] = *&v7[16];
  v9[0] = *&v7[32];
  *(v9 + 9) = *&v7[41];
  return sub_1002F0794(v8);
}

uint64_t sub_1002EECD0@<X0>(double *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_100003ABC(&qword_10060B540, &qword_1004DD8B0) - 8;
  __chkstk_darwin();
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v34[-v7];
  v9 = *(a1 + 6);
  v37 = *(a1 + 5);
  v35 = *(a1 + 56);
  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v13 = *(a1 + 3);
  sub_1002F0E80(a1, v47);
  v14 = sub_1004B9964();
  sub_1004B86C4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  LOBYTE(v47[0]) = 0;
  v23 = *(v4 + 44);
  v24 = enum case for BlendMode.destinationOut(_:);
  v25 = sub_1004BA7E4();
  (*(*(v25 - 8) + 104))(&v8[v23], v24, v25);
  v26 = v37;
  *v8 = v37;
  *(v8 + 1) = v9;
  v27 = v9;
  v36 = v9;
  LOBYTE(v9) = v35;
  v8[16] = v35;
  *(v8 + 3) = 0;
  sub_10000F778(v8, v6, &qword_10060B540, &qword_1004DD8B0);
  *&v40 = v26;
  *(&v40 + 1) = v27;
  LOBYTE(v41) = v9;
  *(&v41 + 1) = *v39;
  HIDWORD(v41) = *&v39[3];
  v42 = 0;
  *&v43 = v10;
  *(&v43 + 1) = v11;
  *&v44 = v12;
  *(&v44 + 1) = v13;
  LOBYTE(v45) = v14;
  *(&v45 + 1) = *v38;
  DWORD1(v45) = *&v38[3];
  *(&v45 + 1) = v16;
  *&v46[0] = v18;
  *(&v46[0] + 1) = v20;
  *&v46[1] = v22;
  BYTE8(v46[1]) = 0;
  v28 = v41;
  *a2 = v40;
  a2[1] = v28;
  v29 = v43;
  v30 = v44;
  *(a2 + 89) = *(v46 + 9);
  v31 = v46[0];
  a2[4] = v45;
  a2[5] = v31;
  a2[2] = v29;
  a2[3] = v30;
  v32 = sub_100003ABC(&qword_10060B548, &qword_1004DD8B8);
  sub_10000F778(v6, a2 + *(v32 + 48), &qword_10060B540, &qword_1004DD8B0);
  sub_10000F778(&v40, v47, &qword_10060B550, &qword_1004DD8C0);
  sub_100007214(v8, &qword_10060B540, &qword_1004DD8B0);
  sub_100007214(v6, &qword_10060B540, &qword_1004DD8B0);
  v47[0] = v37;
  v47[1] = v36;
  v48 = v9;
  *v49 = *v39;
  *&v49[3] = *&v39[3];
  v50 = 0;
  v51 = v10;
  v52 = v11;
  v53 = v12;
  v54 = v13;
  v55 = v14;
  *v56 = *v38;
  *&v56[3] = *&v38[3];
  v57 = v16;
  v58 = v18;
  v59 = v20;
  v60 = v22;
  v61 = 0;
  return sub_100007214(v47, &qword_10060B550, &qword_1004DD8C0);
}

uint64_t sub_1002EF090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v16[0] = *v2;
  v16[1] = v5;
  v17[0] = v2[2];
  *(v17 + 9) = *(v2 + 41);
  v6 = sub_1004BA754();
  v8 = v7;
  v9 = (a2 + *(sub_100003ABC(&qword_10060B520, &qword_1004DD890) + 36));
  *v9 = sub_1004BA754();
  v9[1] = v10;
  v11 = sub_100003ABC(&qword_10060B528, &qword_1004DD898);
  sub_1002EECD0(v16, (v9 + *(v11 + 44)));
  v12 = (v9 + *(sub_100003ABC(&qword_10060B530, &qword_1004DD8A0) + 36));
  *v12 = v6;
  v12[1] = v8;
  v13 = sub_100003ABC(&qword_10060B538, &qword_1004DD8A8);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2, a1, v13);
}

uint64_t sub_1002EF220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = a1;
  v17[1] = a2;
  v3 = sub_1004B9534();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_10060B558, &qword_1004DD8C8);
  __chkstk_darwin();
  v8 = v17 - v7;
  v9 = *v2;
  v10 = v2[1];
  v11 = *(v2 + 16);
  v12 = *(v2 + 3);
  v14 = v17 + *(v13 + 36) - v7;
  sub_100003ABC(&qword_10060B560, &qword_1004DD8D0);
  sub_1004B8EC4();
  *v14 = v9;
  *(v14 + 1) = v10;
  v14[16] = v11;
  *(v14 + 3) = -v12;
  v14[32] = 0;
  v15 = sub_100003ABC(&qword_10060B568, &qword_1004DD8D8);
  (*(*(v15 - 8) + 16))(v8, v17[0], v15);
  sub_1004B8EE4();
  sub_1002F0EB8();
  sub_1002F0F9C();
  sub_1004B9E54();
  (*(v4 + 8))(v6, v3);
  return sub_100007214(v8, &qword_10060B558, &qword_1004DD8C8);
}

void sub_1002EF438(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>, CGFloat a9@<D4>)
{
  LODWORD(v46) = a3;
  v44 = a2;
  *&v45 = a1;
  v47 = a4;
  sub_100003ABC(&qword_10060B620, qword_1004DDA50);
  __chkstk_darwin();
  v15 = &v41 - v14;
  v16 = sub_1004B9A14();
  v41 = *(v16 - 8);
  __chkstk_darwin();
  v17 = sub_1004B9324();
  v42 = *(v17 - 8);
  v43 = v17;
  __chkstk_darwin();
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004B92C4();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004BA624();
  __chkstk_darwin();
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1004B8E64();
  v27 = __chkstk_darwin();
  v29 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v46)
  {
    v31 = v44;
    if (v44 == -1)
    {
      v38 = sub_1004B8E74();
      (*(v21 + 104))(&v29[*(v38 + 20)], enum case for RoundedCornerStyle.continuous(_:), v20);
      v39 = v45;
      *v29 = v45;
      *(v29 + 1) = v39;
      *&v29[*(v26 + 20)] = a9;
      sub_1004B8E54();
      v45 = v48;
      v46 = v49;
      v30 = v50;
      sub_1002F1614(v29, &type metadata accessor for RoundedRectangle._Inset);
    }

    else
    {
      v32 = *&v45;
      v52.origin.x = a5;
      v52.origin.y = a6;
      v52.size.width = a7;
      v52.size.height = a8;
      v53 = CGRectInset(v52, a9, a9);
      v33 = [objc_opt_self() bezierPathWithRoundedRect:v31 byRoundingCorners:v53.origin.x cornerRadii:{v53.origin.y, v53.size.width, v53.size.height, v32, v32}];
      v34 = [v33 CGPath];
      sub_1004B9C64();
      v45 = v48;
      v46 = v49;
      v30 = v50;
    }

    goto LABEL_8;
  }

  if (v46 == 1)
  {
    sub_1004B9A04();
    (*(v41 + 56))(v15, 0, 1, v16);
    sub_1004B99F4();
    sub_100007214(v15, &qword_10060B620, qword_1004DDA50);
    sub_1004B9314();
    v51.origin.x = a5;
    v51.origin.y = a6;
    v51.size.width = a7;
    v51.size.height = a8;
    CGRectInset(v51, a9, a9);
    sub_1004B9304();
    v45 = v48;
    v46 = v49;
    v30 = v50;
    (*(v42 + 8))(v19, v43);
LABEL_8:
    v37 = v45;
    v36 = v46;
    goto LABEL_9;
  }

  v35 = *(v21 + 104);
  v35(v25, enum case for RoundedCornerStyle.continuous(_:), v20, v27);
  (v35)(v23, enum case for RoundedCornerStyle.circular(_:), v20);
  sub_1004B92B4();
  (*(v21 + 8))(v23, v20);
  sub_1002F1614(v25, &type metadata accessor for Capsule);
  sub_1004BA614();
  v37 = v48;
  v36 = v49;
  v30 = v50;
LABEL_9:
  v40 = v47;
  *v47 = v37;
  v40[1] = v36;
  *(v40 + 32) = v30;
}

double sub_1002EF9B8@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  result = *(v2 + 24) + a2;
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = result;
  return result;
}

double sub_1002EF9D8@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1002EF438(*v5, *(v5 + 8), *(v5 + 16), v9, a2, a3, a4, a5, *(v5 + 24));
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_1002EFA28(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1004B8654();
  return sub_1002B1470;
}

uint64_t sub_1002EFAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002F1568();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1002EFB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002F1568();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1002EFB78(uint64_t a1)
{
  v2 = sub_1002F1568();

  return Shape.body.getter(a1, v2);
}

void sub_1002EFBC4(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  byte_10060B4B8 = v3 == 6;
}

uint64_t sub_1002EFC28()
{
  if (qword_100609B90 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4008000000000000;
  if (byte_10060B4B8)
  {
    v0 = 0x4018000000000000;
  }

  static Corner.extraSmall = v0;
  unk_100618FE0 = -1;
  byte_100618FE8 = 0;
  return result;
}

uint64_t *Corner.extraSmall.unsafeMutableAddressor()
{
  if (qword_100609B98 != -1)
  {
    swift_once();
  }

  return &static Corner.extraSmall;
}

uint64_t static Corner.extraSmall.getter()
{
  if (qword_100609B98 != -1)
  {
    swift_once();
  }

  return static Corner.extraSmall;
}

uint64_t sub_1002EFD44()
{
  if (qword_100609B90 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4014000000000000;
  if (byte_10060B4B8)
  {
    v0 = 0x4020000000000000;
  }

  static Corner.small = v0;
  *algn_100618FF8 = -1;
  byte_100619000 = 0;
  return result;
}

uint64_t *Corner.small.unsafeMutableAddressor()
{
  if (qword_100609BA0 != -1)
  {
    swift_once();
  }

  return &static Corner.small;
}

uint64_t static Corner.small.getter()
{
  if (qword_100609BA0 != -1)
  {
    swift_once();
  }

  return static Corner.small;
}

uint64_t sub_1002EFE60()
{
  if (qword_100609B90 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4020000000000000;
  if (byte_10060B4B8)
  {
    v0 = 0x4024000000000000;
  }

  static Corner.medium = v0;
  unk_100619010 = -1;
  byte_100619018 = 0;
  return result;
}

uint64_t *Corner.medium.unsafeMutableAddressor()
{
  if (qword_100609BA8 != -1)
  {
    swift_once();
  }

  return &static Corner.medium;
}

uint64_t static Corner.medium.getter()
{
  if (qword_100609BA8 != -1)
  {
    swift_once();
  }

  return static Corner.medium;
}

uint64_t sub_1002EFF7C()
{
  if (qword_100609B90 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4024000000000000;
  if (byte_10060B4B8)
  {
    v0 = 0x4030000000000000;
  }

  static Corner.large = v0;
  *algn_100619028 = -1;
  byte_100619030 = 0;
  return result;
}

uint64_t *Corner.large.unsafeMutableAddressor()
{
  if (qword_100609BB0 != -1)
  {
    swift_once();
  }

  return &static Corner.large;
}

uint64_t static Corner.large.getter()
{
  if (qword_100609BB0 != -1)
  {
    swift_once();
  }

  return static Corner.large;
}

uint64_t sub_1002F0098()
{
  if (qword_100609B90 != -1)
  {
    result = swift_once();
  }

  v0 = 0x402C000000000000;
  if (byte_10060B4B8)
  {
    v0 = 0x4038000000000000;
  }

  static Corner.extraLarge = v0;
  unk_100619040 = -1;
  byte_100619048 = 0;
  return result;
}

uint64_t *Corner.extraLarge.unsafeMutableAddressor()
{
  if (qword_100609BB8 != -1)
  {
    swift_once();
  }

  return &static Corner.extraLarge;
}

uint64_t static Corner.extraLarge.getter()
{
  if (qword_100609BB8 != -1)
  {
    swift_once();
  }

  return static Corner.extraLarge;
}

uint64_t sub_1002F01B4()
{
  v0 = objc_allocWithZone(UIColor);
  v3[4] = sub_1002F0290;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100399BF8;
  v3[3] = &unk_1005C0DF8;
  v1 = _Block_copy(v3);
  [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  result = sub_1004BA224();
  static Border.artwork = result;
  qword_100619058 = 0x3FE0000000000000;
  byte_100619060 = 0;
  return result;
}

id sub_1002F0290(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = dbl_1004D9B90[v1 == 1];
  v4 = &selRef_blackColor;
  if (v1 != 1)
  {
    v4 = &selRef_whiteColor;
  }

  v5 = [v2 *v4];
  v6 = [v5 colorWithAlphaComponent:v3];

  return v6;
}

uint64_t *Border.artwork.unsafeMutableAddressor()
{
  if (qword_100609BC0 != -1)
  {
    swift_once();
  }

  return &static Border.artwork;
}

double static Border.artwork.getter()
{
  if (qword_100609BC0 != -1)
  {
    swift_once();
  }

  v0 = *&qword_100619058;

  return v0;
}

double sub_1002F03F4()
{
  sub_1004BA284();
  v0 = sub_1004BA2C4();

  static Shadow.shallow = v0;
  unk_100619070 = xmmword_1004D9BA0;
  result = 2.0;
  unk_100619080 = xmmword_1004D9BB0;
  return result;
}

uint64_t *Shadow.shallow.unsafeMutableAddressor()
{
  if (qword_100609BC8 != -1)
  {
    swift_once();
  }

  return &static Shadow.shallow;
}

uint64_t static Shadow.shallow.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609BC8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.shallow;
  *(a1 + 8) = unk_100619070;
  *(a1 + 24) = unk_100619080;
}

double sub_1002F0528()
{
  sub_1004BA284();
  v0 = sub_1004BA2C4();

  static Shadow.intermediate = v0;
  unk_100619098 = xmmword_1004D9BC0;
  result = 15.0;
  unk_1006190A8 = xmmword_1004D9BD0;
  return result;
}

uint64_t *Shadow.intermediate.unsafeMutableAddressor()
{
  if (qword_100609BD0 != -1)
  {
    swift_once();
  }

  return &static Shadow.intermediate;
}

uint64_t static Shadow.intermediate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609BD0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.intermediate;
  *(a1 + 8) = unk_100619098;
  *(a1 + 24) = unk_1006190A8;
}

double sub_1002F0660()
{
  sub_1004BA284();
  v0 = sub_1004BA2C4();

  static Shadow.deep = v0;
  unk_1006190C0 = xmmword_1004D9BE0;
  result = 25.0;
  unk_1006190D0 = xmmword_1004D9BF0;
  return result;
}

uint64_t *Shadow.deep.unsafeMutableAddressor()
{
  if (qword_100609BD8 != -1)
  {
    swift_once();
  }

  return &static Shadow.deep;
}

uint64_t static Shadow.deep.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100609BD8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.deep;
  *(a1 + 8) = unk_1006190C0;
  *(a1 + 24) = unk_1006190D0;
}

unint64_t sub_1002F07C8()
{
  result = qword_10060B4C0;
  if (!qword_10060B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B4C0);
  }

  return result;
}

unint64_t sub_1002F0820()
{
  result = qword_10060B4C8;
  if (!qword_10060B4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B4C8);
  }

  return result;
}

unint64_t sub_1002F0878()
{
  result = qword_10060B4D0;
  if (!qword_10060B4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B4D0);
  }

  return result;
}

unint64_t sub_1002F08D0()
{
  result = qword_10060B4D8;
  if (!qword_10060B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B4D8);
  }

  return result;
}

uint64_t sub_1002F0924(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 sub_1002F096C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_1002F09B0()
{
  result = qword_10060B4E0;
  if (!qword_10060B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B4E0);
  }

  return result;
}

unint64_t sub_1002F0A24()
{
  result = qword_10060E010;
  if (!qword_10060E010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060E010);
  }

  return result;
}

unint64_t sub_1002F0A98()
{
  result = qword_10060B4E8;
  if (!qword_10060B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B4E8);
  }

  return result;
}

uint64_t sub_1002F0B0C(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_1004B8D64();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_1002F0B7C()
{
  result = qword_10060B4F0;
  if (!qword_10060B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B4F0);
  }

  return result;
}

__n128 sub_1002F0BD0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1002F0BE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002F0C38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1002F0C98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002F0CE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1002F0D40(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1002F0D54(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002F0D9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1002F0EB8()
{
  result = qword_10060B570;
  if (!qword_10060B570)
  {
    sub_100003B68(&qword_10060B558, &qword_1004DD8C8);
    sub_1000206D4(&qword_10060B578, &qword_10060B568, &qword_1004DD8D8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1000206D4(&qword_10060B580, &qword_10060B560, &qword_1004DD8D0, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B570);
  }

  return result;
}

unint64_t sub_1002F0F9C()
{
  result = qword_10060B588;
  if (!qword_10060B588)
  {
    sub_1004B9534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B588);
  }

  return result;
}

uint64_t sub_1002F0FF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002F100C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 32))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002F1054(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1002F10AC()
{
  result = qword_10060B590;
  if (!qword_10060B590)
  {
    sub_100003B68(&qword_10060B500, &qword_1004DD870);
    sub_1002F1164();
    sub_1000206D4(&qword_10060B5B0, &qword_10060B5B8, &qword_1004DD910, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B590);
  }

  return result;
}

unint64_t sub_1002F1164()
{
  result = qword_10060B598;
  if (!qword_10060B598)
  {
    sub_100003B68(&qword_10060B5A0, &qword_1004DD908);
    sub_1000206D4(&qword_10060B5A8, &qword_10060B4F8, &qword_1004DD868, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B598);
  }

  return result;
}

unint64_t sub_1002F1220()
{
  result = qword_10060B5C0;
  if (!qword_10060B5C0)
  {
    sub_100003B68(&qword_10060B510, &qword_1004DD880);
    sub_1000206D4(&qword_10060B5C8, &qword_10060B508, &qword_1004DD878, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1000206D4(&qword_10060B5D0, &qword_10060B518, &qword_1004DD888, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B5C0);
  }

  return result;
}

unint64_t sub_1002F1308()
{
  result = qword_10060B5D8;
  if (!qword_10060B5D8)
  {
    sub_100003B68(&qword_10060B520, &qword_1004DD890);
    sub_1000206D4(&qword_10060B5E0, &qword_10060B538, &qword_1004DD8A8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1000206D4(&qword_10060B5E8, &qword_10060B530, &qword_1004DD8A0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B5D8);
  }

  return result;
}

uint64_t sub_1002F13EC()
{
  sub_100003B68(&qword_10060B558, &qword_1004DD8C8);
  sub_1004B9534();
  sub_1002F0EB8();
  sub_1002F0F9C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1002F14B8()
{
  result = qword_10060B600;
  if (!qword_10060B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B600);
  }

  return result;
}

unint64_t sub_1002F1510()
{
  result = qword_10060B608;
  if (!qword_10060B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10060B608);
  }

  return result;
}