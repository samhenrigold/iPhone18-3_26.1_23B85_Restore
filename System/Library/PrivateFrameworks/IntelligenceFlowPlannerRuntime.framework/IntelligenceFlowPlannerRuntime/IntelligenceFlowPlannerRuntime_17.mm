uint64_t sub_22C4ED364(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  sub_22C591324();
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 24) >> 1;
  v9 = v7 + 1;
  if (v8 <= v7)
  {
    sub_22C591324();
    v6 = v21;
    v8 = *(v21 + 24) >> 1;
  }

  *(v6 + 16) = v9;
  *(v6 + 8 * v7 + 32) = v4;
  v10 = v7 + 2;
  if (v8 < (v7 + 2))
  {
    sub_22C591324();
    v6 = v22;
  }

  *(v6 + 16) = v10;
  *(v6 + 8 * v9 + 32) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = 2112800;
  *(v11 + 24) = 0xE300000000000000;
  v12 = *(v6 + 24);
  v13 = v7 + 3;

  if ((v7 + 3) > (v12 >> 1))
  {
    sub_22C591324();
    v6 = v23;
  }

  *(v6 + 16) = v13;
  *(v6 + 8 * v10 + 32) = v11;
  v14 = v7 + 4;
  if ((v7 + 4) > *(v6 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v24;
  }

  *(v6 + 16) = v14;
  *(v6 + 8 * v13 + 32) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0xE000000000000000;
  v16 = *(v6 + 24);

  if ((v7 + 5) > (v16 >> 1))
  {
    sub_22C591324();
    v6 = v25;
  }

  *(v6 + 16) = v7 + 5;
  *(v6 + 8 * v14 + 32) = v15;
  v17 = sub_22C3DB9B0(v6);

  v18 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = v19;
  return v18 | 0x6000000000000000;
}

uint64_t sub_22C4ED600(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C4ED690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptTreeIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C4ED704()
{
  v0 = sub_22C90654C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C90704C();
  if (v4 != 2 && (v4 & 1) != 0)
  {
    return 2;
  }

  v6 = sub_22C9070CC();
  if (v6 == 2)
  {
    sub_22C90702C();
    v7 = sub_22C441C04();
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v7 = v6;
  }

  return (v7 & 1) == 0;
}

uint64_t sub_22C4ED860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a2;
  v72 = a3;
  sub_22C9063DC();
  sub_22C369824();
  v76 = v5;
  v77 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22C3698E4();
  v73 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v68 - v8;
  sub_22C906C3C();
  sub_22C369824();
  v68 = v11;
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v14 = v13 - v12;
  sub_22C906B9C();
  sub_22C369824();
  v74 = v16;
  v75 = v15;
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v19 = v18 - v17;
  v20 = sub_22C906B6C();
  sub_22C369824();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v26 = v25 - v24;
  v27 = sub_22C906C4C();
  sub_22C369824();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  v33 = v32 - v31;
  (*(v29 + 16))(v32 - v31, a1, v27);
  v34 = (*(v29 + 88))(v33, v27);
  if (v34 == *MEMORY[0x277D1DDC8])
  {
    sub_22C903F7C();
    v35 = sub_22C9063CC();
    v36 = sub_22C90AAFC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = sub_22C36D240();
      *v37 = 0;
      _os_log_impl(&dword_22C366000, v35, v36, "[RequestParser_v1_0] Got stop request", v37, 2u);
      sub_22C3699EC();
    }

    (*(v76 + 8))(v9, v77);
  }

  else
  {
    if (v34 == *MEMORY[0x277D1DDD0])
    {
      v39 = sub_22C4F0858();
      v40(v39);
      (*(v22 + 32))(v26, v33, v20);
      sub_22C906B5C();
      v41 = sub_22C90A2BC();
      v43 = v42;

      sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_22C90F800;
      sub_22C36A83C();
      v44 = swift_allocObject();
      *(v44 + 16) = v41;
      *(v44 + 24) = v43;
      sub_22C36D2A8();
      v45 = swift_allocObject();
      sub_22C37F780(v45);
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v46 = swift_allocObject();
      sub_22C377464(v46);
      (*(v22 + 8))(v26, v20);
      return v38;
    }

    if (v34 == *MEMORY[0x277D1DDD8])
    {
      v47 = sub_22C4F0858();
      v48(v47);
      v50 = v74;
      v49 = v75;
      (*(v74 + 32))(v19, v33, v75);
      sub_22C906B5C();
      v51 = sub_22C90A2BC();
      v53 = v52;

      sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_22C90F800;
      sub_22C36A83C();
      v54 = swift_allocObject();
      *(v54 + 16) = v51;
      *(v54 + 24) = v53;
      sub_22C36D2A8();
      v55 = swift_allocObject();
      sub_22C37F780(v55);
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v56 = swift_allocObject();
      sub_22C377464(v56);
      (*(v50 + 8))(v19, v49);
      return v38;
    }

    if (v34 == *MEMORY[0x277D1DD78])
    {
      v57 = sub_22C4F0858();
      v58(v57);
      v60 = v68;
      v59 = v69;
      (*(v68 + 32))(v14, v33, v69);
      v61 = v70[3];
      v62 = v70[4];
      sub_22C374168(v70, v61);
      v38 = (*(v62 + 8))(v14, v71, v72, v61, v62);
      (*(v60 + 8))(v14, v59);
      return v38;
    }

    v64 = v73;
    sub_22C903F7C();
    v65 = sub_22C9063CC();
    v66 = sub_22C90AADC();
    if (sub_22C369E90(v66))
    {
      v67 = sub_22C36D240();
      *v67 = 0;
      _os_log_impl(&dword_22C366000, v65, v64, "[RequestParser_v1_0] Unsupported RequestContent type", v67, 2u);
      sub_22C3699EC();
    }

    (*(v76 + 8))(v64, v77);
  }

  (*(v29 + 8))(v33, v27);
  return MEMORY[0x277D84F90];
}

uint64_t sub_22C4EDEA8(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v318 = a2;
  v308 = sub_22C906C3C();
  sub_22C369824();
  v311 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v5);
  sub_22C36BA64();
  sub_22C3698F8(v6);
  v313 = sub_22C9063DC();
  sub_22C369824();
  v314 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v10);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v11);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v12);
  sub_22C36BA64();
  sub_22C3698F8(v13);
  v307 = sub_22C90759C();
  sub_22C369824();
  v306 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA64();
  sub_22C3698F8(v17);
  v317 = sub_22C90069C();
  sub_22C369824();
  v316 = v18;
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v315 = v21 - v20;
  v22 = sub_22C3A5908(&qword_27D9BD7C8, &unk_22C922F50);
  MEMORY[0x28223BE20](v22 - 8);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v23);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v24);
  sub_22C36BA64();
  sub_22C3698F8(v25);
  v323 = sub_22C902B3C();
  sub_22C369824();
  v319 = v26;
  MEMORY[0x28223BE20](v27);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v28);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v29);
  sub_22C36BA64();
  sub_22C3698F8(v30);
  v322 = sub_22C901FAC();
  sub_22C369824();
  v320 = v31;
  MEMORY[0x28223BE20](v32);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v33);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v34);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v35);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v36);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v37);
  sub_22C36BA64();
  sub_22C3698F8(v38);
  v327 = sub_22C906BEC();
  sub_22C369824();
  v326 = v39;
  MEMORY[0x28223BE20](v40);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v41);
  sub_22C36BA64();
  sub_22C3698F8(v42);
  v43 = sub_22C906B6C();
  sub_22C369824();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  sub_22C369838();
  v49 = v48 - v47;
  v50 = sub_22C906B9C();
  sub_22C369824();
  v52 = v51;
  MEMORY[0x28223BE20](v53);
  sub_22C369838();
  v56 = v55 - v54;
  sub_22C906BCC();
  sub_22C369824();
  v58 = v57;
  MEMORY[0x28223BE20](v59);
  sub_22C369838();
  v62 = v61 - v60;
  v324 = a1;
  sub_22C906C2C();
  v63 = sub_22C36FCCC();
  v65 = v64(v63);
  if (v65 == *MEMORY[0x277D1DD80])
  {
    v66 = v58 + 96;
    v67 = sub_22C36FCCC();
    v68(v67);
    (*(v45 + 32))(v49, v62, v43);
    sub_22C906B5C();
    v70 = v69;
    v71 = sub_22C90A2BC();
    v73 = v72;

    sub_22C36A83C();
    v74 = swift_allocObject();
    *(v74 + 16) = v71;
    *(v74 + 24) = v73;
    sub_22C36D2A8();
    v75 = swift_allocObject();
    sub_22C3701C8(v75);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v76 = swift_allocObject();
    *(v76 + 16) = v74;
    *(v70 + 32) = v76;
    v77 = sub_22C374C14();
    sub_22C591F6C(v77, v78, v79, v80);
    v82 = v81;
    v56 = *(v81 + 16);
    v83 = *(v81 + 24);
    if (v56 >= v83 >> 1)
    {
      sub_22C4F0810(v83);
      v82 = v281;
    }

    v84 = v325;
    (*(v45 + 8))(v49, v43);
    *(v82 + 16) = v56 + 1;
    v85 = v82 + 16 * v56;
    *(v85 + 32) = 4;
    *(v85 + 40) = v70 | 0xA000000000000002;
    sub_22C3804B4();
  }

  else
  {
    if (v65 == *MEMORY[0x277D1DD88])
    {
      v86 = sub_22C36FCCC();
      v87(v86);
      (*(v52 + 32))(v56, v62, v50);
      sub_22C906B5C();
      v89 = v88;
      v90 = sub_22C90A2BC();
      v92 = v91;

      sub_22C36A83C();
      v93 = swift_allocObject();
      *(v93 + 16) = v90;
      *(v93 + 24) = v92;
      sub_22C36D2A8();
      v94 = swift_allocObject();
      sub_22C3701C8(v94);
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v95 = swift_allocObject();
      *(v95 + 16) = v93;
      *(v89 + 32) = v95;
      v96 = sub_22C374C14();
      sub_22C591F6C(v96, v97, v98, v99);
      v66 = *(v100 + 16);
      v101 = *(v100 + 24);
      v82 = v100;
      v49 = v327;
      if (v66 >= v101 >> 1)
      {
        sub_22C4F0810(v101);
        v82 = v282;
      }

      v43 = v326;
      (*(v52 + 8))(v56, v50);
      *(v82 + 16) = v66 + 1;
      v102 = v82 + 16 * v66;
      *(v102 + 32) = 4;
      *(v102 + 40) = v89 | 0xA000000000000002;
    }

    else
    {
      v66 = v58 + 8;
      v103 = sub_22C36FCCC();
      v104(v103);
      v82 = MEMORY[0x277D84F90];
      sub_22C3804B4();
    }

    v84 = v325;
  }

  sub_22C906BFC();
  v105 = sub_22C36D7F0();
  v107 = v106(v105);
  if (v107 == *MEMORY[0x277D1DD98])
  {
    v108 = sub_22C36D7F0();
    v109(v108);
    v110 = *v328;
    sub_22C37BA44();
    sub_22C906C1C();
    sub_22C37205C();
    sub_22C4EFABC(v56, v111);
    sub_22C36FB04();
    v112(v56, v317);
    v113 = v323;
    if (sub_22C370B74(v66, 1, v323) == 1)
    {
LABEL_13:

      sub_22C3770B0(v66, &qword_27D9BD7C8, &unk_22C922F50);
      sub_22C37205C();
      sub_22C903F7C();
      v114 = sub_22C9063CC();
      v115 = sub_22C90AADC();
      if (sub_22C369E90(v115))
      {
        *sub_22C36D240() = 0;
        sub_22C3706C8();
        _os_log_impl(v116, v117, v118, v119, v120, 2u);
        sub_22C372FB0();
      }

      sub_22C38B9FC();
      sub_22C379910();
      v121();
      return MEMORY[0x277D84F90];
    }

    v327 = v82;
    sub_22C3766B4();
    v139(v312, v66, v323);
    sub_22C37205C();
    sub_22C902AEC();
    sub_22C37BA44();
    sub_22C902AFC();
    sub_22C38616C();
    if (!v110)
    {
      v113 = v66;
    }

    v140 = sub_22C4F0868();
    v142 = *(v141 - 256);
    v143(v140);
    v144 = sub_22C90758C();
    v146 = v145;
    (*(v84 + 8))(v312, v142);
    v147 = *(v320 + 16);
    v147(v321, v113, v322);
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90FB40;
    sub_22C36A83C();
    v149 = swift_allocObject();
    *(v149 + 16) = 0;
    *(v149 + 24) = 0xE000000000000000;
    sub_22C374C14();
    sub_22C591324();
    sub_22C381688();
    if (v150)
    {
      sub_22C37F204();
      v113 = v283;
    }

    *(v113 + 16) = v142;
    *(v113 + 8 * v82 + 32) = v149;
    sub_22C36A83C();
    v151 = swift_allocObject();
    v151[2] = v144;
    v151[3] = v146;
    v152 = *(v113 + 24);

    if (v82 + 2 > (v152 >> 1))
    {
      sub_22C36BDEC();
      v113 = v284;
    }

    sub_22C37A054();
    *(v153 + 32) = v151;

    sub_22C36A83C();
    v154 = swift_allocObject();
    *(v154 + 16) = 40;
    *(v154 + 24) = 0xE100000000000000;
    if (*(v113 + 16) >= *(v113 + 24) >> 1)
    {
      sub_22C36BDEC();
      v113 = v285;
    }

    sub_22C37A054();
    *(v155 + 32) = v154;
    sub_22C3DB9B0(v113);

    sub_22C369AEC();
    v156 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v157 = swift_allocObject();
    sub_22C375924(v157);
    swift_allocBox();
    v158 = sub_22C4F0834();
    v147(v159, v321, v152);
    *v151 = v158;
    v160 = *MEMORY[0x277D1D798];
    sub_22C902D0C();
    sub_22C369A9C();
    (*(v161 + 104))(v151, v160);
    swift_storeEnumTagMultiPayload();
    *(inited + 40) = v156 | 0x2000000000000000;
    sub_22C36A83C();
    v162 = swift_allocObject();
    v330 = 41;
    v331 = 0xE100000000000000;
    *(v162 + 16) = sub_22C90A49C();
    *(v162 + 24) = v163;
    *(inited + 48) = v162;
    v164 = sub_22C3DB9B0(inited);
    swift_setDeallocating();
    sub_22C58FFB0();
    sub_22C369AEC();
    v165 = swift_allocObject();
    sub_22C369AEC();
    v166 = swift_allocObject();
    *(v166 + 16) = v164;
    *(v165 + 16) = v166;
    v82 = v327;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C37285C();
      v82 = v286;
    }

    sub_22C388FB0();
    if (v150)
    {
      sub_22C4F0810(v167);
      v82 = v287;
    }

    sub_22C3706B4();
    v169 = *(*(v168 - 256) + 8);
    v169(v321, v322);
    v169(v310, v322);
    v169(v309, v322);
    sub_22C36FB04();
    v171 = &v330;
LABEL_33:
    v170(*(v171 - 32), v323);
    sub_22C381A2C();
    return v82;
  }

  v122 = v311;
  if (v107 == *MEMORY[0x277D1DDB0])
  {
    goto LABEL_18;
  }

  if (v107 == *MEMORY[0x277D1DDA0])
  {
    v172 = sub_22C36D7F0();
    v173(v172);
    sub_22C37BA44();
    sub_22C906C1C();
    sub_22C37205C();
    sub_22C4EFABC(v56, v174);
    sub_22C36FB04();
    v175(v56, v317);
    if (sub_22C370B74(v66, 1, v323) == 1)
    {
      goto LABEL_13;
    }

    v185 = v82;
    sub_22C3766B4();
    v186(v303, v66, v323);
    sub_22C902AFC();
    v187 = sub_22C4F0868();
    v189 = *(v188 - 256);
    v190(v187);
    v191 = sub_22C90758C();
    v193 = v192;
    v194 = v306 + 8;
    (*(v306 + 8))(v303, v189);
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    v195 = swift_initStackObject();
    *(v195 + 16) = xmmword_22C90FB40;
    sub_22C36A83C();
    v196 = swift_allocObject();
    *(v196 + 16) = 0;
    *(v196 + 24) = 0xE000000000000000;
    sub_22C374C14();
    sub_22C591324();
    sub_22C381688();
    if (v150)
    {
      sub_22C37F204();
      v189 = v290;
    }

    *(v189 + 16) = v194;
    *(v189 + 8 * v82 + 32) = v196;
    sub_22C36A83C();
    v197 = swift_allocObject();
    v197[2] = v191;
    v197[3] = v193;
    v198 = *(v189 + 24);

    if (v82 + 2 > (v198 >> 1))
    {
      sub_22C36BDEC();
      v189 = v291;
    }

    sub_22C37A054();
    *(v199 + 32) = v197;

    sub_22C36A83C();
    v200 = swift_allocObject();
    sub_22C38A928(v200);
    if (v150)
    {
      sub_22C36BDEC();
      v189 = v292;
    }

    sub_22C37A054();
    *(v201 + 32) = v200;
    sub_22C3DB9B0(v189);

    sub_22C369AEC();
    v202 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v203 = swift_allocObject();
    sub_22C375924(v203);
    swift_allocBox();
    v204 = sub_22C4F0834();
    v206 = sub_22C372220(v204, v205);
    v207(v206, v304, v49);
    *v197 = v82;
    v208 = *MEMORY[0x277D1D798];
    sub_22C902D0C();
    sub_22C369A9C();
    (*(v209 + 104))(v197, v208);
    swift_storeEnumTagMultiPayload();
    *(v195 + 40) = v202 | 0x2000000000000000;
    sub_22C36A83C();
    v210 = swift_allocObject();
    v330 = 41;
    v331 = v198;
    *(v210 + 16) = sub_22C90A49C();
    *(v210 + 24) = v211;
    *(v195 + 48) = v210;
    v212 = sub_22C3DB9B0(v195);
    swift_setDeallocating();
    sub_22C58FFB0();
    sub_22C369AEC();
    v213 = swift_allocObject();
    sub_22C369AEC();
    v214 = swift_allocObject();
    *(v214 + 16) = v212;
    *(v213 + 16) = v214;
    v82 = v185;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C37285C();
      v82 = v293;
    }

    sub_22C388FB0();
    if (v150)
    {
      sub_22C4F0810(v215);
      v82 = v294;
    }

    sub_22C3706B4();
    sub_22C36FB04();
    v216(v304, v322);
    sub_22C36FB04();
    v171 = &v329;
    goto LABEL_33;
  }

  if (v107 == *MEMORY[0x277D1DDB8])
  {
    v178 = sub_22C36D7F0();
    v179(v178);
    v180 = *v328;
    sub_22C37BA44();
    sub_22C906C0C();
    v181 = sub_22C45CA3C(v56, v180, 0);
    sub_22C36FB04();
    v182(v56, v322);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C37285C();
      v82 = v288;
    }

    sub_22C388FB0();
    if (v150)
    {
      sub_22C4F0810(v183);
      v82 = v289;
    }

    *(v82 + 16) = v324;
    v184 = v82 + 16 * v56;
    *(v184 + 32) = 1;
    *(v184 + 40) = v181 | 2;
  }

  else
  {
    if (v107 == *MEMORY[0x277D1DDA8])
    {
LABEL_18:
      v327 = v82;
      v123 = *(v43 + 8);
      v124 = sub_22C36D7F0();
      v123(v124);
      sub_22C903F7C();
      v125 = v305;
      (*(v311 + 16))(v305, v324, v308);
      v126 = sub_22C9063CC();
      v127 = sub_22C90AACC();
      if (os_log_type_enabled(v126, v127))
      {
        v326 = v123;
        v128 = swift_slowAlloc();
        v328 = swift_slowAlloc();
        v330 = v328;
        *v128 = 136315394;
        *(v128 + 4) = sub_22C37B618("handle(systemPromptResolution:transcript:parsingState:)");
        *(v128 + 12) = 2080;
        sub_22C37BDF4();
        v129 = sub_22C906BDC();
        v130 = v125;
        v132 = v131;
        (v326)(v49, v49);
        (*(v122 + 8))(v130, v308);
        v133 = sub_22C36F9F4(v129, v132, &v330);

        *(v128 + 14) = v133;
        sub_22C3706C8();
        _os_log_impl(v134, v135, v136, v137, v138, 0x16u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C372FB0();

        sub_22C38B9FC();
      }

      else
      {

        (*(v311 + 8))(v305, v308);
        sub_22C38B9FC();
      }

      sub_22C379910();
      v176();
      return v327;
    }

    if (v107 != *MEMORY[0x277D1DD90])
    {
      v327 = v82;
      sub_22C903F7C();
      v229 = v308;
      (*(v311 + 16))(v84, v324, v308);
      v230 = v311;
      v231 = sub_22C9063CC();
      v232 = sub_22C90AADC();
      if (os_log_type_enabled(v231, v232))
      {
        LODWORD(v325) = v232;
        v233 = swift_slowAlloc();
        v326 = swift_slowAlloc();
        v330 = v326;
        *v233 = 136315394;
        *(v233 + 4) = sub_22C37B618("handle(systemPromptResolution:transcript:parsingState:)");
        *(v233 + 12) = 2080;
        sub_22C37BDF4();
        v234 = sub_22C906BDC();
        v235 = v84;
        v237 = v236;
        v324 = *(v43 + 8);
        v324(v49, v49);
        (*(v230 + 8))(v235, v229);
        v238 = sub_22C36F9F4(v234, v237, &v330);

        *(v233 + 14) = v238;
        sub_22C3706C8();
        _os_log_impl(v239, v240, v241, v242, v243, 0x16u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C372FB0();

        sub_22C38B9FC();
        sub_22C379910();
        v244();
      }

      else
      {

        (*(v311 + 8))(v84, v308);
        sub_22C38B9FC();
        sub_22C379910();
        v278();
      }

      v279 = sub_22C36D7F0();
      v280(v279);
      return v327;
    }

    sub_22C906C1C();
    sub_22C37BA44();
    sub_22C4EFABC(v315, v217);
    sub_22C36FB04();
    v218(v315, v317);
    if (sub_22C370B74(v56, 1, v323) == 1)
    {

      sub_22C3770B0(v56, &qword_27D9BD7C8, &unk_22C922F50);
      sub_22C37205C();
      sub_22C903F7C();
      v219 = sub_22C9063CC();
      v220 = sub_22C90AADC();
      if (sub_22C369E90(v220))
      {
        *sub_22C36D240() = 0;
        sub_22C3706C8();
        _os_log_impl(v221, v222, v223, v224, v225, 2u);
        sub_22C372FB0();
      }

      sub_22C38B9FC();
      sub_22C379910();
      v226();
      v227 = sub_22C36D7F0();
      v228(v227);
      return MEMORY[0x277D84F90];
    }

    sub_22C3766B4();
    v245(v301, v56, v323);
    sub_22C902AEC();
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    v246 = swift_initStackObject();
    *(v246 + 16) = xmmword_22C90FB40;
    sub_22C36A83C();
    v247 = swift_allocObject();
    *(v247 + 16) = 0;
    *(v247 + 24) = 0xE000000000000000;
    sub_22C374C14();
    sub_22C591324();
    v249 = v248;
    v250 = v82;
    if (*(v248 + 16) >= *(v248 + 24) >> 1)
    {
      sub_22C36BDEC();
      v249 = v295;
    }

    sub_22C37A054();
    *(v251 + 32) = v247;
    sub_22C38616C();
    v252();
    v253 = sub_22C90758C();
    v255 = v254;
    (*(v84 + 8))(v300, v307);
    sub_22C36A83C();
    v256 = swift_allocObject();
    *(v256 + 16) = v253;
    *(v256 + 24) = v255;
    v257 = *(v249 + 16);
    v258 = *(v249 + 24);

    if (v257 >= v258 >> 1)
    {
      sub_22C37F204();
      v249 = v296;
    }

    *(v249 + 16) = v257 + 1;
    *(v249 + 8 * v257 + 32) = v256;

    sub_22C36A83C();
    v259 = swift_allocObject();
    sub_22C38A928(v259);
    if (v150)
    {
      sub_22C36BDEC();
      v249 = v297;
    }

    sub_22C37A054();
    *(v260 + 32) = v259;
    v261 = sub_22C3DB9B0(v249);

    sub_22C369AEC();
    v262 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v263 = swift_allocObject();
    *(v263 + 16) = v261;
    *(v262 + 16) = v263;
    *(v246 + 32) = v262 | 0x6000000000000000;
    type metadata accessor for PromptTreeIdentifier.Label(0);
    swift_allocBox();
    v264 = sub_22C4F0834();
    v266 = sub_22C372220(v264, v265);
    v267(v266, v302, v49);
    *v257 = v258;
    v268 = *MEMORY[0x277D1D798];
    sub_22C902D0C();
    sub_22C369A9C();
    (*(v269 + 104))(v257, v268);
    swift_storeEnumTagMultiPayload();
    *(v246 + 40) = v262 | 0x2000000000000000;
    sub_22C36A83C();
    v270 = swift_allocObject();
    v330 = 41;
    v331 = v43;
    *(v270 + 16) = sub_22C90A49C();
    *(v270 + 24) = v271;
    *(v246 + 48) = v270;
    v272 = sub_22C3DB9B0(v246);
    swift_setDeallocating();
    sub_22C58FFB0();
    sub_22C369AEC();
    v273 = swift_allocObject();
    sub_22C369AEC();
    v274 = swift_allocObject();
    *(v274 + 16) = v272;
    *(v273 + 16) = v274;
    v82 = v250;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C37285C();
      v82 = v298;
    }

    sub_22C388FB0();
    if (v150)
    {
      sub_22C4F0810(v275);
      v82 = v299;
    }

    sub_22C3706B4();
    sub_22C36FB04();
    v276(v302, v322);
    sub_22C36FB04();
    v277(v301, v323);
    sub_22C381A2C();
    (*(v326 + 8))(v328, v327);
  }

  return v82;
}

uint64_t sub_22C4EFABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a1;
  v73 = a2;
  v83 = sub_22C9026BC();
  v71 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_22C902B3C();
  v84 = *(v77 - 8);
  v3 = MEMORY[0x28223BE20](v77);
  v72 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v76 = &v68 - v5;
  v81 = sub_22C9089DC();
  v6 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C90069C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v68 - v15);
  MEMORY[0x28223BE20](v14);
  v18 = &v68 - v17;
  v19 = sub_22C3A5908(&qword_27D9BD7D0, &qword_22C919290);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v74 = (&v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v20);
  v70 = &v68 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v79 = (&v68 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v68 - v27;
  MEMORY[0x28223BE20](v26);
  v78 = &v68 - v29;
  v30 = sub_22C9087DC();
  v32 = *(v10 + 16);
  v31 = v10 + 16;
  v75 = v18;
  v33 = v18;
  v34 = v87;
  v32(v33, v87, v9);
  v85 = v16;
  v86 = v9;
  v32(v16, v34, v9);
  v35 = 0;
  v87 = v30;
  v36 = *(v30 + 16);
  v37 = (v31 - 8);
  v38 = (v6 + 88);
  v80 = *MEMORY[0x277D1E820];
  v69 = v6;
  v39 = (v6 + 8);
  while (1)
  {
    if (v36 == v35)
    {
      v35 = v36;
      goto LABEL_9;
    }

    sub_22C908A0C();
    sub_22C9087FC();
    v31 = sub_22C90067C();
    (*v37)(v13, v86);
    if (v31)
    {
      break;
    }

LABEL_6:
    v41 = sub_22C9025AC();
    sub_22C36C640(v28, 1, 1, v41);
    sub_22C3770B0(v28, &qword_27D9BD7D0, &qword_22C919290);
    ++v35;
  }

  sub_22C9089EC();
  v31 = v81;
  v40 = (*v38)(v8, v81);
  if (v40 != v80)
  {
    (*v39)(v8, v31);
    goto LABEL_6;
  }

  (*(v69 + 96))(v8, v31);
  v31 = sub_22C9025AC();
  (*(*(v31 - 8) + 32))(v28, v8, v31);
  sub_22C36C640(v28, 0, 1, v31);
  sub_22C3770B0(v28, &qword_27D9BD7D0, &qword_22C919290);
LABEL_9:
  v42 = *(v87 + 16);
  v43 = v76;
  v44 = v78;
  v45 = v79;
  if (v35 == v42)
  {
    v31 = *v37;
    v35 = v86;
    (*v37)(v75, v86);
    v46 = sub_22C9025AC();
    sub_22C36C640(v44, 1, 1, v46);
LABEL_14:

    (v31)(v85, v35);
    v49 = v74;
    sub_22C4F07A0(v44, v74);
    sub_22C9025AC();
    if (sub_22C370B74(v49, 1, v46) == 1)
    {
      sub_22C3770B0(v44, &qword_27D9BD7D0, &qword_22C919290);
      sub_22C3770B0(v49, &qword_27D9BD7D0, &qword_22C919290);
      v50 = v73;
      v51 = v77;
      return sub_22C36C640(v50, 1, 1, v51);
    }

    else
    {
      v31 = sub_22C90259C();
      (*(*(v46 - 8) + 8))(v49, v46);
      v52 = 0;
      v53 = *(v31 + 16);
      v86 = v84 + 16;
      v87 = v53;
      v85 = (v71 + 88);
      LODWORD(v81) = *MEMORY[0x277D1CBA8];
      v80 = *MEMORY[0x277D1CBD0];
      v54 = (v71 + 8);
      v79 = (v84 + 8);
      v74 = (v84 + 32);
      v75 = MEMORY[0x277D84F90];
      v51 = v77;
      while (v87 != v52)
      {
        if (v52 >= *(v31 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        v55 = (*(v84 + 80) + 32) & ~*(v84 + 80);
        v56 = v31;
        v35 = *(v84 + 72);
        (*(v84 + 16))(v43, v31 + v55 + v35 * v52, v51);
        v57 = v82;
        sub_22C902B2C();
        v58 = v43;
        v59 = v83;
        v60 = (*v85)(v57, v83);
        (*v54)(v57, v59);
        if (v60 == v81 || v60 == v80)
        {
          v76 = *v74;
          (v76)(v72, v58, v51);
          v62 = v75;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v88 = v62;
          v43 = v58;
          if (isUniquelyReferenced_nonNull_native)
          {
            v64 = v62;
          }

          else
          {
            sub_22C3B6A1C(0, *(v62 + 16) + 1, 1);
            v51 = v77;
            v64 = v88;
          }

          v31 = v56;
          v66 = *(v64 + 16);
          v65 = *(v64 + 24);
          if (v66 >= v65 >> 1)
          {
            sub_22C3B6A1C(v65 > 1, v66 + 1, 1);
            v51 = v77;
            v64 = v88;
          }

          ++v52;
          *(v64 + 16) = v66 + 1;
          v75 = v64;
          (v76)(v64 + v55 + v66 * v35, v72, v51);
        }

        else
        {
          (*v79)(v58, v51);
          ++v52;
          v43 = v58;
          v31 = v56;
        }
      }

      if (*(v75 + 2) > 1uLL)
      {
        sub_22C3770B0(v78, &qword_27D9BD7D0, &qword_22C919290);

        v50 = v73;
        return sub_22C36C640(v50, 1, 1, v51);
      }

      sub_22C58B0B0(v75, v73);

      return sub_22C3770B0(v78, &qword_27D9BD7D0, &qword_22C919290);
    }
  }

  else
  {
    if (v35 >= v42)
    {
LABEL_35:
      __break(1u);
    }

    else
    {
      sub_22C908A0C();
      v47 = v75;
      sub_22C4F0554(v45);
      v31 = *v37;
      v35 = v86;
      (*v37)(v47, v86);
      v48 = v70;
      sub_22C4F07A0(v45, v70);
      v46 = sub_22C9025AC();
      if (sub_22C370B74(v48, 1, v46) != 1)
      {
        (*(*(v46 - 8) + 32))(v44, v48, v46);
        sub_22C3770B0(v45, &qword_27D9BD7D0, &qword_22C919290);
        sub_22C36C640(v44, 0, 1, v46);
        goto LABEL_14;
      }
    }

    result = (v31)(v85, v35);
    __break(1u);
  }

  return result;
}

uint64_t sub_22C4F0554@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22C9089DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C90069C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C9087FC();
  v11 = sub_22C90067C();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_22C9089EC();
  if ((*(v4 + 88))(v6, v3) != *MEMORY[0x277D1E820])
  {
    (*(v4 + 8))(v6, v3);
LABEL_5:
    v15 = sub_22C9025AC();
    v13 = a2;
    v14 = 1;
    return sub_22C36C640(v13, v14, 1, v15);
  }

  (*(v4 + 96))(v6, v3);
  v12 = sub_22C9025AC();
  (*(*(v12 - 8) + 32))(a2, v6, v12);
  v13 = a2;
  v14 = 0;
  v15 = v12;
  return sub_22C36C640(v13, v14, 1, v15);
}

uint64_t sub_22C4F07A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD7D0, &qword_22C919290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22C4F0810(unint64_t a1@<X8>)
{

  sub_22C591F6C(a1 > 1, v1, 1, v2);
}

uint64_t sub_22C4F0834()
{

  return swift_allocBox();
}

uint64_t type metadata accessor for StatementResultParser_v1_0(uint64_t a1)
{
  result = qword_281431CB8;
  if (!qword_281431CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C4F08F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 232) = a4;
  *(v5 + 240) = v4;
  *(v5 + 672) = a2;
  *(v5 + 216) = a1;
  *(v5 + 224) = a3;
  v6 = sub_22C906ECC();
  *(v5 + 248) = v6;
  sub_22C3699B8(v6);
  *(v5 + 256) = v7;
  *(v5 + 264) = sub_22C36D0D4();
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  v8 = sub_22C9028FC();
  *(v5 + 288) = v8;
  sub_22C3699B8(v8);
  *(v5 + 296) = v9;
  *(v5 + 304) = sub_22C3699D4();
  v10 = sub_22C90281C();
  *(v5 + 312) = v10;
  sub_22C3699B8(v10);
  *(v5 + 320) = v11;
  *(v5 + 328) = sub_22C3699D4();
  v12 = sub_22C902A4C();
  *(v5 + 336) = v12;
  sub_22C3699B8(v12);
  *(v5 + 344) = v13;
  *(v5 + 352) = sub_22C3699D4();
  v14 = sub_22C90286C();
  *(v5 + 360) = v14;
  sub_22C3699B8(v14);
  *(v5 + 368) = v15;
  *(v5 + 376) = sub_22C3699D4();
  v16 = sub_22C9029AC();
  *(v5 + 384) = v16;
  sub_22C3699B8(v16);
  *(v5 + 392) = v17;
  *(v5 + 400) = sub_22C3699D4();
  v18 = sub_22C902D0C();
  *(v5 + 408) = v18;
  sub_22C3699B8(v18);
  *(v5 + 416) = v19;
  *(v5 + 424) = sub_22C3699D4();
  v20 = type metadata accessor for DirectionalTypedValue(0);
  *(v5 + 432) = v20;
  sub_22C369914(v20);
  *(v5 + 440) = sub_22C3699D4();
  v21 = type metadata accessor for PromptTreeIdentifier(0);
  *(v5 + 448) = v21;
  sub_22C369914(v21);
  *(v5 + 456) = sub_22C36D0D4();
  *(v5 + 464) = swift_task_alloc();
  *(v5 + 472) = swift_task_alloc();
  *(v5 + 480) = swift_task_alloc();
  *(v5 + 488) = swift_task_alloc();
  v22 = sub_22C9020CC();
  *(v5 + 496) = v22;
  sub_22C3699B8(v22);
  *(v5 + 504) = v23;
  *(v5 + 512) = sub_22C3699D4();
  v24 = sub_22C9063DC();
  *(v5 + 520) = v24;
  sub_22C3699B8(v24);
  *(v5 + 528) = v25;
  *(v5 + 536) = sub_22C36D0D4();
  *(v5 + 544) = swift_task_alloc();
  *(v5 + 552) = swift_task_alloc();
  *(v5 + 560) = swift_task_alloc();
  v26 = sub_22C9026BC();
  *(v5 + 568) = v26;
  sub_22C3699B8(v26);
  *(v5 + 576) = v27;
  *(v5 + 584) = sub_22C36D0D4();
  *(v5 + 592) = swift_task_alloc();
  v28 = sub_22C907DEC();
  *(v5 + 600) = v28;
  sub_22C3699B8(v28);
  *(v5 + 608) = v29;
  *(v5 + 616) = sub_22C36D0D4();
  *(v5 + 624) = swift_task_alloc();
  v30 = sub_22C901FAC();
  *(v5 + 632) = v30;
  sub_22C3699B8(v30);
  *(v5 + 640) = v31;
  *(v5 + 648) = sub_22C36D0D4();
  *(v5 + 656) = swift_task_alloc();
  *(v5 + 664) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C4F0DD4, 0, 0);
}

uint64_t sub_22C4F0DD4(uint64_t a1)
{
  v361 = v1;
  v2 = *(v1 + 624);
  v3 = *(v1 + 608);
  v4 = *(v1 + 600);
  v5 = *(v1 + 592);
  v6 = *(v1 + 576);
  v7 = *(v1 + 568);
  sub_22C906DFC();
  sub_22C906EBC();
  sub_22C907DAC();
  v8 = *(v3 + 8);
  v343 = v3 + 8;
  v8(v2, v4);
  v9 = v6 + 88;
  v10 = *(v6 + 88);
  v11 = v10(v5, v7);
  v12 = *MEMORY[0x277D1CBF0];
  v13 = *(v6 + 8);
  v13(v5, v7);
  v350 = v12;
  v248 = v11 == v12;
  v14 = v1;
  if (v248)
  {
    sub_22C4F290C(*(v1 + 224), *(v1 + 240));
    if ((v15 & 1) == 0)
    {
      v50 = *(v1 + 664);
      v51 = *(v1 + 656);
      v52 = *(v1 + 640);
      v53 = v14[79];
      sub_22C903F7C();
      (*(v52 + 16))(v51, v50, v53);
      v54 = sub_22C9063CC();
      v55 = sub_22C90AADC();
      v56 = os_log_type_enabled(v54, v55);
      v57 = v14[70];
      v58 = v14[66];
      v59 = v14[65];
      if (v56)
      {
        v351 = v14[65];
        v60 = swift_slowAlloc();
        v339 = swift_slowAlloc();
        v359[0] = v339;
        *v60 = 136315138;
        sub_22C4E9D34(&qword_27D9BAA48, MEMORY[0x277D1C368]);
        v357 = v14;
        v61 = sub_22C90B47C();
        v344 = v57;
        v63 = v62;
        v64 = sub_22C4F6018();
        v55(v64);
        v65 = v61;
        v14 = v357;
        v66 = sub_22C36F9F4(v65, v63, v359);

        *(v60 + 4) = v66;
        _os_log_impl(&dword_22C366000, v54, v55, "Skipping rendering statement result pertaining to statement ID %s", v60, 0xCu);
        sub_22C36FF94(v339);
        sub_22C3699EC();
        sub_22C3699EC();

        (*(v58 + 8))(v344, v351);
      }

      else
      {

        v120 = sub_22C4F6018();
        v55(v120);
        (*(v58 + 8))(v57, v59);
      }

      (v55)(v14[83], v14[79]);
      goto LABEL_23;
    }
  }

  v327 = v13;
  v338 = v10;
  v16 = *(v1 + 616);
  v17 = *(v1 + 584);
  v333 = *(v1 + 568);
  v18 = *(v1 + 416);
  v330 = *(v1 + 600);
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v19 = swift_allocBox();
  v356 = v1;
  v21 = v20;
  v22 = swift_allocBox();
  sub_22C906DFC();
  *v21 = v22;
  v24 = *(v18 + 104);
  v23 = v18 + 104;
  v329 = v24;
  v24(v21);
  swift_storeEnumTagMultiPayload();
  v25 = v19 | 0x2000000000000000;
  sub_22C906EBC();
  v26 = v16;
  sub_22C907DAC();
  v8(v16, v330);
  v27 = v338(v17, v333);
  if (v27 != v350)
  {
    if (v27 == *MEMORY[0x277D1CB98])
    {
      v14 = v1;
LABEL_11:
      v45 = v14[83];
      v46 = v14[80];
      v47 = v14[79];
      v48 = v14[73];
      v49 = v14[71];

      (*(v46 + 8))(v45, v47);
      v327(v48, v49);
LABEL_23:
      v352 = MEMORY[0x277D84F90];
      goto LABEL_24;
    }

    v14 = v1;
    if (v27 == *MEMORY[0x277D1CBA8])
    {
      v67 = *(v1 + 472);
      v68 = *(v1 + 408);
      sub_22C37F224();
      sub_22C38C380(v69, v70, v71, v68);
      swift_storeEnumTagMultiPayload();
      swift_allocBox();
      sub_22C37991C();
      sub_22C906E1C();
      v72 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
      v73 = sub_22C37BE14(*(v72 + 20));
      v329(v73);
      swift_storeEnumTagMultiPayload();
      v74 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v75 = swift_allocBox();
      v77 = v76;
      sub_22C45769C(v67, v76);
      swift_allocBox();
      sub_22C37991C();
      sub_22C486784();
      v78 = sub_22C37F798();
      v80 = sub_22C4F40CC(v78, v79);
      if (v67)
      {
        goto LABEL_6;
      }

      v81 = v80;
      v82 = *(v1 + 664);
      v83 = *(v1 + 640);
      v84 = *(v356 + 632);
      v345 = *(v356 + 584);
      v85 = *(v356 + 568);
      v86 = *(v74 + 48);
      sub_22C36AAE0();
      sub_22C4F5EE4(v87, v88);

      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v89 = swift_allocObject();
      *(v89 + 16) = v81;
      *(v77 + v86) = v89;
      sub_22C4F60C8();
      v91 = v75 | v90;
      sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
      v92 = swift_allocObject();
      v93 = sub_22C37B63C(v92, xmmword_22C90F800);
      v93[2].n128_u64[0] = v94;
      v93[2].n128_u64[1] = v91;
      v352 = v93;

      (*(v83 + 8))(v82, v84);
      v14 = v356;
      v327(v345, v85);
LABEL_24:

      v121 = v14[1];

      return v121(v352);
    }

    if (v27 == *MEMORY[0x277D1CBB0])
    {
      sub_22C372238();
      v123 = *(v1 + 320);
      v122 = *(v356 + 328);
      v124 = *(v356 + 312);
      v354 = *(v356 + 232);
      (*(v125 + 96))(v16);
      (*(v123 + 32))(v122, v16, v124);
      sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F870;
      *(inited + 32) = v25;
      sub_22C36A83C();
      v127 = swift_allocObject();
      *(v356 + 184) = 1886413102;
      *(v356 + 192) = 0xE400000000000000;

      *(v127 + 16) = sub_22C90A49C();
      *(v127 + 24) = v128;
      *(inited + 40) = v127;
      v129 = sub_22C3DB9B0(inited);
      swift_setDeallocating();
      sub_22C58FFB0();
      sub_22C369AEC();
      v130 = swift_allocObject();
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      sub_22C369AEC();
      v131 = swift_allocObject();
      *(v131 + 16) = v129;
      v347 = v130;
      *(v130 + 16) = v131;
      MEMORY[0x2318AFCE0]();
      *(swift_task_alloc() + 16) = vextq_s8(v354, v354, 8uLL);
      sub_22C4F6030();
      sub_22C3B2D98(v132, v133, v134);
      sub_22C4F60A8();

      v135 = *(v122 + 16);
      if (v135)
      {
        v359[0] = MEMORY[0x277D84F90];
        sub_22C3B63D4(0, v135, 0);
        v136 = v359[0];
        v137 = (v122 + 40);
        do
        {
          v138 = *(v137 - 1);
          v139 = *v137;
          sub_22C36A83C();
          v140 = swift_allocObject();
          *(v140 + 16) = v138;
          *(v140 + 24) = v139;
          v359[0] = v136;
          v142 = *(v136 + 16);
          v141 = *(v136 + 24);

          if (v142 >= v141 >> 1)
          {
            sub_22C3B63D4(v141 > 1, v142 + 1, 1);
            v136 = v359[0];
          }

          *(v136 + 16) = v142 + 1;
          *(v136 + 8 * v142 + 32) = v140;
          v137 += 2;
          --v135;
        }

        while (v135);

        v14 = v356;
      }

      else
      {

        v136 = MEMORY[0x277D84F90];
      }

      v214 = v14[83];
      v215 = v14[81];
      v216 = v14[80];
      v217 = v14[79];
      v218 = v14[40];
      v219 = v14[41];
      v220 = v14[39];
      sub_22C906E1C();
      v352 = sub_22C4F4A10(v347 | 0x6000000000000000, v136, v215);

      v221 = *(v216 + 8);
      v222 = sub_22C36CA88();
      v221(v222);
      (*(v218 + 8))(v219, v220);
      v223 = v214;
      v224 = v217;
      goto LABEL_53;
    }

    if (v27 == *MEMORY[0x277D1CBB8])
    {
      sub_22C4F5FB4();
      v182 = *(v181 + 376);
      v183 = *(v1 + 368);
      v184 = *(v1 + 360);
      v185 = sub_22C4F6060();
      v186(v185);
      v187 = sub_22C3826E0();
      v188(v187, v1, v184);
      sub_22C37F224();
      sub_22C38C380(v189, v190, v191, v23);
      swift_storeEnumTagMultiPayload();
      v14 = swift_allocBox();
      sub_22C906E1C();
      v192 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
      v193 = sub_22C383030(v192);
      v194(v193);
      swift_storeEnumTagMultiPayload();
      v195 = swift_task_alloc();
      *(v195 + 16) = v182;
      *(v195 + 24) = v25;
LABEL_50:
      sub_22C4F6030();
      sub_22C529BDC(v208, v209);
      sub_22C4F60A8();

      sub_22C36AAE0();
      sub_22C4F5EE4(v19, v210);
      sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
      v211 = swift_allocObject();
      v212 = sub_22C37B63C(v211, xmmword_22C90F800);
      v212[2].n128_u64[0] = v213;
      v212[2].n128_u64[1] = v9 | 2;
      v352 = v212;

      (*(v338 + 1))(v343, v333);
      (*(v183 + 8))(v182, v184);
      goto LABEL_24;
    }

    if (v27 == *MEMORY[0x277D1CBD0])
    {
      sub_22C4F5FB4();
      v182 = *(v196 + 400);
      v183 = *(v1 + 392);
      v184 = *(v1 + 384);
      v197 = sub_22C4F6060();
      v198(v197);
      v199 = sub_22C3826E0();
      v200(v199, v1, v184);
      sub_22C37F224();
      sub_22C38C380(v201, v202, v203, v23);
      swift_storeEnumTagMultiPayload();
      v14 = swift_allocBox();
      sub_22C906E1C();
      v204 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
      v205 = sub_22C383030(v204);
      v206(v205);
      swift_storeEnumTagMultiPayload();
      v207 = swift_task_alloc();
      *(v207 + 16) = v182;
      *(v207 + 24) = v25;
      goto LABEL_50;
    }

    if (v27 == *MEMORY[0x277D1CBD8])
    {
      v225 = *(v1 + 648);
      v226 = *(v1 + 640);
      sub_22C372238();
      v227 = *(v356 + 344);
      v228 = *(v356 + 352);
      v229 = *(v356 + 336);
      v336 = v229;
      v341 = v230;
      v348 = v231;
      v332 = *(v356 + 232);
      (*(v232 + 96))(v26);
      v233 = sub_22C3826E0();
      v234(v233, v26, v229);
      sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      v235 = swift_initStackObject();
      *(v235 + 16) = xmmword_22C90FB40;
      *(v235 + 32) = v25;
      sub_22C36A83C();
      v236 = swift_allocObject();
      *(v356 + 200) = 46;
      *(v356 + 208) = 0xE100000000000000;

      *(v236 + 16) = sub_22C90A49C();
      *(v236 + 24) = v237;
      *(v235 + 40) = v236;
      sub_22C36A83C();
      v238 = swift_allocObject();
      sub_22C902A0C();
      v239 = sub_22C90A2CC();
      v241 = v240;

      *(v238 + 16) = v239;
      *(v238 + 24) = v241;
      *(v235 + 48) = v238;
      v242 = sub_22C3DB9B0(v235);
      swift_setDeallocating();
      sub_22C58FFB0();
      sub_22C369AEC();
      v243 = swift_allocObject();
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      sub_22C369AEC();
      v244 = swift_allocObject();
      *(v244 + 16) = v242;
      *(v243 + 16) = v244;
      sub_22C902A3C();
      *(swift_task_alloc() + 16) = vextq_s8(v332, v332, 8uLL);
      sub_22C37A060();
      sub_22C3B2D6C(v245, v246, v247);
      sub_22C4F60A8();

      sub_22C906E1C();
      v352 = sub_22C4F4A10(v243 | 0x6000000000000000, 0, v225);
      v14 = v356;

      v221 = *(v226 + 8);
      (v221)(v225, v341);
      (*(v227 + 8))(v228, v336);
      v223 = v348;
      v224 = v341;
LABEL_53:
      (v221)(v223, v224);
      goto LABEL_24;
    }

    v248 = v27 == *MEMORY[0x277D1CBC0] || v27 == *MEMORY[0x277D1CBE0];
    if (!v248)
    {
      if (v27 == *MEMORY[0x277D1CBA0])
      {
        v262 = *(v1 + 280);
        v263 = *(v1 + 248);
        v264 = *(v1 + 256);
        v265 = *(v1 + 216);
        sub_22C903F7C();
        v266 = *(v264 + 16);
        v266(v262, v265, v263);
        v267 = sub_22C9063CC();
        v268 = sub_22C90AACC();
        v269 = os_log_type_enabled(v267, v268);
        v270 = *(v1 + 544);
        v271 = *(v1 + 528);
        v355 = *(v356 + 520);
        v272 = *(v356 + 280);
        if (!v269)
        {
          v306 = *(v356 + 248);
          v305 = *(v356 + 256);

          (*(v305 + 8))(v272, v306);
          v280 = *(v271 + 8);
          v281 = v270;
          goto LABEL_71;
        }

        v273 = *(v356 + 272);
        sub_22C4F603C();
        v359[0] = sub_22C37EBE8();
        *v270 = 136315395;
        *(v270 + 4) = sub_22C3804C8("handle(statementResult:detailLevel:transcript:parsingState:)");
        *(v270 + 12) = 2085;
        v266(v273, v272, v356);
        sub_22C90A1AC();
        v14 = v356;
        (*(v262 + 8))(v272, v356);
        v274 = sub_22C4F6088();
        v277 = sub_22C36F9F4(v274, v275, v276);

        *(v270 + 14) = v277;
        v278 = "[%s] Unsupported StatementOutcome - (safely) skipping: %{sensitive}s";
        v279 = v268;
LABEL_66:
        _os_log_impl(&dword_22C366000, v267, v279, v278, v270, 0x16u);
        swift_arrayDestroy();
        sub_22C3699EC();
        sub_22C3699EC();

        v280 = *(v271 + 8);
        v281 = v343;
LABEL_71:
        v280(v281, v355);
        goto LABEL_11;
      }

      if (v27 == *MEMORY[0x277D1CBC8])
      {
        v349 = *(v1 + 664);
        v282 = *(v1 + 648);
        v283 = *(v1 + 640);
        v284 = *(v356 + 632);
        sub_22C372238();
        v285 = *(v356 + 296);
        v286 = *(v356 + 304);
        v287 = *(v356 + 288);
        v342 = *(v356 + 232);
        (*(v288 + 96))(v26);
        (*(v285 + 32))(v286, v26, v287);
        sub_22C9028EC();
        *(swift_task_alloc() + 16) = vextq_s8(v342, v342, 8uLL);
        sub_22C4F6030();
        sub_22C3B2D6C(v289, v290, v291);
        sub_22C4F60A8();

        v14 = v356;

        sub_22C906E1C();
        v352 = sub_22C4F4A10(v19 | 0x2000000000000000, v9, v282);

        v221 = *(v283 + 8);
        (v221)(v282, v284);
        (*(v285 + 8))(v286, v287);
        v223 = v349;
        v224 = v284;
        goto LABEL_53;
      }

      if (v27 != *MEMORY[0x277D1CBE8])
      {
        v308 = *(v1 + 256);
        v307 = *(v1 + 264);
        v309 = *(v1 + 248);
        v310 = *(v1 + 216);
        sub_22C903F7C();
        v311 = *(v308 + 16);
        v311(v307, v310, v309);
        v267 = sub_22C9063CC();
        v312 = sub_22C90AADC();
        v313 = os_log_type_enabled(v267, v312);
        v270 = *(v1 + 536);
        v271 = *(v1 + 528);
        v314 = *(v356 + 520);
        if (!v313)
        {
          v321 = *(v356 + 256);
          v322 = *(v356 + 264);
          v323 = *(v356 + 248);

          (*(v321 + 8))(v322, v323);
          (*(v271 + 8))(v270, v314);
          goto LABEL_11;
        }

        v355 = *(v356 + 520);
        v315 = *(v356 + 264);
        v316 = *(v356 + 272);
        v337 = v312;
        sub_22C4F603C();
        v359[0] = sub_22C37EBE8();
        *v270 = 136315395;
        *(v270 + 4) = sub_22C3804C8("handle(statementResult:detailLevel:transcript:parsingState:)");
        *(v270 + 12) = 2085;
        v311(v316, v315, v356);
        v317 = sub_22C90A1AC();
        v319 = v318;
        v14 = v356;
        (*(v307 + 8))(v315, v356);
        v320 = sub_22C36F9F4(v317, v319, v359);

        *(v270 + 14) = v320;
        v278 = "[%s] ❗️ Unsupported StatementOutcome. Please file a radar on Full Planner Runtime: %{sensitive}s";
        v279 = v337;
        goto LABEL_66;
      }
    }

    v249 = *(v1 + 456);
    v67 = *(v1 + 408);
    v327(*(v1 + 584), *(v1 + 568));
    sub_22C37F224();
    sub_22C38C380(v250, v251, v252, v67);
    swift_storeEnumTagMultiPayload();
    v253 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
    sub_22C48A0B0((v249 + *(v253 + 20)));
    swift_storeEnumTagMultiPayload();
    v254 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
    v255 = swift_allocBox();
    v77 = v256;
    sub_22C45769C(v249, v256);
    swift_allocBox();
    sub_22C37991C();
    sub_22C486784();
    v257 = sub_22C37F798();
    v261 = sub_22C4F59C4(v257, v258, v259, v260, 41, 0xE100000000000000);
    if (v67)
    {
      goto LABEL_6;
    }

    v292 = v261;
    v293 = *(v1 + 664);
    v294 = *(v1 + 640);
    v295 = *(v356 + 632);
    v296 = *(v254 + 48);
    sub_22C36AAE0();
    sub_22C4F5EE4(v297, v298);

    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v299 = swift_allocObject();
    *(v299 + 16) = v292;
    *(v77 + v296) = v299;
    sub_22C4F60C8();
    v301 = v255 | v300;
    sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
    v302 = swift_allocObject();
    v303 = sub_22C37B63C(v302, xmmword_22C90F800);
    v303[2].n128_u64[0] = v304;
    v303[2].n128_u64[1] = v301;
    v352 = v303;

    (*(v294 + 8))(v293, v295);
    goto LABEL_24;
  }

  v28 = *(v1 + 584);
  v30 = *(v1 + 504);
  v29 = *(v356 + 512);
  v31 = *(v356 + 488);
  v32 = *(v356 + 496);
  v33 = *(v356 + 448);
  v34 = *(v356 + 408);
  (*(*(v356 + 576) + 96))(*(v356 + 584), *(v356 + 568));
  (*(v30 + 32))(v29, v28, v32);
  sub_22C37F224();
  sub_22C38C380(v35, v36, v37, v34);
  swift_storeEnumTagMultiPayload();
  v38 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  sub_22C48A0B0((v31 + *(v38 + 20)));
  swift_storeEnumTagMultiPayload();
  v39 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v40 = swift_allocBox();
  v42 = v41;
  sub_22C45769C(v31, v41);
  swift_allocBox();
  sub_22C37991C();
  sub_22C486784();
  v95 = sub_22C4F59C4(v33 | 0x2000000000000000, v25, 0x6563637573203D20, 0xEB00000000287373, 41, 0xE100000000000000);
  v324 = v38;
  v346 = v40;
  v96 = *(v356 + 440);
  v97 = *(v356 + 416);
  v98 = *(v356 + 424);
  v99 = *(v356 + 408);
  v100 = *(v356 + 240);
  v334 = *(v356 + 232);
  v353 = *(v356 + 672);
  v325 = v39;
  v101 = *(v39 + 48);
  sub_22C36AAE0();
  sub_22C4F5EE4(v102, v103);

  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v104 = swift_allocObject();
  *(v104 + 16) = v95;
  *(v42 + v101) = v104;
  v105 = *(v100 + *(type metadata accessor for StatementResultParser_v1_0(0) + 20) + 168);
  ObjectType = swift_getObjectType();
  sub_22C90207C();
  swift_storeEnumTagMultiPayload();
  v107 = *(v334 + 32);
  (v329)(v98, *MEMORY[0x277D1D7F8], v99);
  (*(v105 + 8))(v359, v96, v353 & 1, v107, v98, ObjectType, v105);
  (*(v97 + 8))(v98, v99);
  sub_22C3706D4();
  sub_22C4F5EE4(v96, v108);
  v109 = v359[0];
  v335 = v359[2];
  v340 = v359[1];
  v331 = v359[3];
  v328 = v359[4];
  v326 = v360;
  if (v360)
  {
    v14 = v356;
    sub_22C903F7C();
    v110 = sub_22C9063CC();
    v111 = sub_22C90AACC();
    v112 = os_log_type_enabled(v110, v111);
    v113 = *(v356 + 552);
    v114 = *(v356 + 528);
    v115 = *(v356 + 520);
    if (v112)
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_22C366000, v110, v111, "[StatementResult] Unable to find a prompt reference for success.returnValue", v116, 2u);
      sub_22C3699EC();
    }

    (*(v114 + 8))(v113, v115);
    v117 = 0;
    v118 = 0x1000000000000007;
    sub_22C4F60C8();
LABEL_36:
    v158 = v346 | v119;
    sub_22C3A5908(&qword_27D9BD7F0, &qword_22C919308);
    v159 = swift_initStackObject();
    v160 = sub_22C37B63C(v159, xmmword_22C90F870);
    v160[2].n128_u64[0] = v161;
    v160[2].n128_u64[1] = v158;
    v162 = &v160[2].n128_i8[8];
    v160[3].n128_u64[0] = v117;
    v160[3].n128_u64[1] = v118;

    v358 = v117;
    sub_22C4F5F3C(v117, v118);
    v163 = 0;
    v352 = MEMORY[0x277D84F90];
LABEL_37:
    v164 = &v162[16 * v163];
    while (++v163 != 3)
    {
      v165 = v164 + 2;
      v166 = *v164;
      v164 += 2;
      if ((~v166 & 0x1000000000000007) != 0)
      {
        v167 = *(v165 - 3);
        sub_22C45C81C(v167, v166);
        v168 = v109;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C591F6C(0, v352[1].n128_u64[0] + 1, 1, v352);
          v352 = v172;
        }

        v170 = v352[1].n128_u64[0];
        v169 = v352[1].n128_u64[1];
        if (v170 >= v169 >> 1)
        {
          sub_22C591F6C(v169 > 1, v170 + 1, 1, v352);
          v352 = v173;
        }

        v352[1].n128_u64[0] = v170 + 1;
        v171 = &v352[v170];
        v171[2].n128_u64[0] = v167;
        v171[2].n128_u64[1] = v166;
        v109 = v168;
        goto LABEL_37;
      }
    }

    v174 = v14[83];
    v175 = v14[80];
    v176 = v14[79];
    v177 = v109;
    v179 = v14[63];
    v178 = v14[64];
    v180 = v14[62];
    swift_setDeallocating();
    sub_22C590068();
    sub_22C4F5F54(v358, v118);

    sub_22C456CE4(v177, v340, v335, v331, v328, v326);

    (*(v179 + 8))(v178, v180);
    (*(v175 + 8))(v174, v176);
    goto LABEL_24;
  }

  v14 = v356;
  v67 = *(v356 + 480);
  v143 = *(v356 + 408);
  sub_22C37F224();
  sub_22C36C640(v144, v145, v146, v143);
  swift_storeEnumTagMultiPayload();
  swift_allocBox();

  sub_22C906E1C();
  v147 = sub_22C37BE14(*(v324 + 20));
  v329(v147);
  swift_storeEnumTagMultiPayload();
  v148 = swift_allocBox();
  v77 = v149;
  sub_22C45769C(v67, v149);
  swift_allocBox();
  sub_22C37991C();
  sub_22C486784();
  v150 = sub_22C37F798();
  v152 = sub_22C375948(v150, v151);
  if (!v67)
  {
    v153 = v152;
    v154 = *(v325 + 48);
    sub_22C36AAE0();
    sub_22C4F5EE4(v155, v156);

    sub_22C369AEC();
    v157 = swift_allocObject();
    *(v157 + 16) = v153;
    *(v77 + v154) = v157;
    sub_22C4F60C8();
    v118 = v148 | v119;
    v117 = 5;
    goto LABEL_36;
  }

LABEL_6:

  sub_22C36AAE0();
  sub_22C4F5EE4(v77, v43);

  return swift_deallocBox();
}

void sub_22C4F290C(uint64_t a1, void *a2)
{
  v3 = v2;
  v284 = a2;
  v248 = sub_22C3A5908(&qword_27D9BD7D8, &qword_22C9192E8);
  sub_22C36985C();
  MEMORY[0x28223BE20](v5);
  v250 = v240 - v6;
  v7 = sub_22C3A5908(&qword_27D9BD7E0, &qword_22C9192F0);
  v8 = sub_22C369914(v7);
  MEMORY[0x28223BE20](v8);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  sub_22C3698F8(v10);
  v11 = sub_22C9094EC();
  v12 = sub_22C36A7A4(v11, v300);
  v280 = v13;
  MEMORY[0x28223BE20](v12);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA64();
  v267 = v17;
  v18 = sub_22C3A5908(&qword_27D9BD7E8, &qword_22C923170);
  v19 = sub_22C369914(v18);
  MEMORY[0x28223BE20](v19);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v20);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v21);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v22);
  sub_22C36BA64();
  sub_22C3698F8(v23);
  v24 = sub_22C907D6C();
  v25 = sub_22C36A7A4(v24, &v301);
  v268 = v26;
  MEMORY[0x28223BE20](v25);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v27);
  sub_22C36BA64();
  sub_22C3698F8(v28);
  v29 = sub_22C901FAC();
  v30 = sub_22C36A7A4(v29, &v302);
  v259 = v31;
  MEMORY[0x28223BE20](v30);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v33);
  v35 = v240 - v34;
  v36 = sub_22C3A5908(&qword_27D9BC030, &unk_22C911CC0);
  v37 = sub_22C369914(v36);
  MEMORY[0x28223BE20](v37);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v38);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v39);
  sub_22C36BA64();
  sub_22C3698F8(v40);
  v41 = sub_22C908AEC();
  v42 = sub_22C36A7A4(v41, &v287);
  v253 = v43;
  MEMORY[0x28223BE20](v42);
  sub_22C369838();
  sub_22C3698F8(v45 - v44);
  v46 = sub_22C90880C();
  v47 = sub_22C36A7A4(v46, &v285);
  v251 = v48;
  MEMORY[0x28223BE20](v47);
  sub_22C369838();
  sub_22C3698F8(v50 - v49);
  v51 = sub_22C9088CC();
  v52 = sub_22C36A7A4(v51, &v290);
  v256 = v53;
  MEMORY[0x28223BE20](v52);
  sub_22C369838();
  sub_22C3698F8(v55 - v54);
  v56 = sub_22C908A0C();
  sub_22C369824();
  v285 = v57;
  MEMORY[0x28223BE20](v58);
  sub_22C369838();
  v61 = v60 - v59;
  v62 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v63 = sub_22C369914(v62);
  MEMORY[0x28223BE20](v63);
  sub_22C369ABC();
  v66 = v64 - v65;
  MEMORY[0x28223BE20](v67);
  v69 = v240 - v68;
  v70 = sub_22C3A5908(&qword_27D9BBAB0, &qword_22C910D10);
  v71 = sub_22C369914(v70);
  MEMORY[0x28223BE20](v71);
  sub_22C369ABC();
  v74 = v72 - v73;
  MEMORY[0x28223BE20](v75);
  v77 = v240 - v76;
  v283 = a1;
  sub_22C9087DC();
  v249 = v3;
  v291 = v3;
  sub_22C4F6030();
  sub_22C6B089C(v78, v79, v80);

  sub_22C3E8FB4(v69, v66, &qword_27D9BA808, &qword_22C90C6E0);
  v81 = 1;
  sub_22C36D0A8(v66, 1, v56);
  if (!v118)
  {
    v82 = v285;
    (*(v285 + 32))(v61, v66, v56);
    sub_22C9089EC();
    (*(v82 + 8))(v61, v56);
    v81 = 0;
  }

  sub_22C36DD28(v69, &qword_27D9BA808, &qword_22C90C6E0);
  v83 = sub_22C9089DC();
  sub_22C36C640(v77, v81, 1, v83);
  sub_22C3E8FB4(v77, v74, &qword_27D9BBAB0, &qword_22C910D10);
  sub_22C36D0A8(v74, 1, v83);
  if (v118)
  {
    sub_22C37A060();
    sub_22C36DD28(v84, v85, v86);
    sub_22C37A060();
    goto LABEL_6;
  }

  v90 = sub_22C4F6088();
  v92 = v91(v90);
  if (v92 != *MEMORY[0x277D1E6F8])
  {
    sub_22C36DD28(v77, &qword_27D9BBAB0, &qword_22C910D10);
    v139 = sub_22C4F6088();
    v140(v139);
    return;
  }

  v240[0] = v77;
  v93 = sub_22C4F6088();
  v94(v93);
  (*(v256 + 32))(v255, v74, v257);
  v95 = sub_22C90887C();
  (*(v251 + 16))(v289, v283, v252);
  (*(v253 + 16))(v290, v284, v254);
  v275 = v95;
  v272 = *(v95 + 16);
  v96 = 0;
  v279 = v268 + 32;
  v264 = (v280 + 4);
  v263 = v280 + 11;
  v262 = *MEMORY[0x277D72CB8];
  v261 = *MEMORY[0x277D72C70];
  v260 = *MEMORY[0x277D72CA8];
  v243 = *MEMORY[0x277D72D00];
  v242 = *MEMORY[0x277D72CD8];
  v240[1] = (v280 + 1);
  v280 = (v268 + 8);
  v283 = v259 + 8;
  v241 = *MEMORY[0x277D72C98];
  v97 = v286;
  v98 = v269;
  v99 = v278;
  v268 = v35;
  while (1)
  {
    if (v272 == v96)
    {
      v106 = v272;
LABEL_39:
      v141 = v282;
      goto LABEL_46;
    }

    v100 = sub_22C9070DC();
    sub_22C3699B8(v100);
    v285 = v96;
    sub_22C9068FC();
    sub_22C3A9BB4(v35, v98);
    if (v3)
    {

      v3 = 0;
      v141 = v282;
LABEL_41:
      v106 = v285;
      goto LABEL_45;
    }

    v101 = v277;
    sub_22C3E8FB4(v98, v277, &qword_27D9BD7E8, &qword_22C923170);
    sub_22C36D0A8(v101, 1, v97);
    if (v118)
    {
      sub_22C36DD28(v101, &qword_27D9BD7E8, &qword_22C923170);
      sub_22C4F60D4(0xD000000000000097, 0x800000022C931AF0);
      sub_22C36DD28(v98, &qword_27D9BD7E8, &qword_22C923170);
      v299 = v292;
      sub_22C4F5DF8(&v299);
      v298 = v293;
      sub_22C4F5DF8(&v298);
      v141 = v282;
      v106 = v285;
      goto LABEL_45;
    }

    v284 = 0;
    v3 = v98;
    sub_22C36DD28(v98, &qword_27D9BD7E8, &qword_22C923170);
    sub_22C36BA4C();
    v102(v99, v101, v97);
    sub_22C70F1D0();
    v104 = v103;
    sub_22C70F408();
    v106 = v105;
    sub_22C70F644();
    v108 = v107;
    v109 = v276;
    sub_22C710384();
    v110 = v282;
    sub_22C36D0A8(v109, 1, v282);
    if (v118)
    {
      sub_22C36DD28(v109, &qword_27D9BD7E0, &qword_22C9192F0);
      v111 = v104 | v106 | v108;
      v97 = v286;
      v98 = v3;
      if (v111)
      {
        goto LABEL_43;
      }

LABEL_35:
      sub_22C36BA4C();
      v135 = sub_22C4F6094();
      v136(v135);
      sub_22C4F5FA4();
      v35 = v268;
      v137 = sub_22C385620();
      v138(v137);
      sub_22C4F6074();
      goto LABEL_36;
    }

    v265 = v104;
    v3 = v264;
    v112 = *v264;
    v113 = v267;
    (*v264)(v267, v109, v110);
    sub_22C710DF4();
    v115 = v114;
    v116 = v273;
    v112(v273, v113, v110);
    sub_22C36BA4C();
    v117(v116, v110);
    sub_22C369908();
    v120 = v118 || v119 == v261;
    if (!v120 && v119 != v260)
    {
      break;
    }

    sub_22C4F6008();
    v123 = v122 | v108;
    v97 = v286;
    v98 = v269;
    if (v123)
    {
      goto LABEL_43;
    }

    sub_22C36BA4C();
    v124 = sub_22C4F6094();
    v125(v124);
    sub_22C4F5FA4();
    v35 = v268;
    v126 = sub_22C385620();
    v127(v126);
    sub_22C4F6074();
    if (v115)
    {
      goto LABEL_39;
    }

LABEL_36:
    v96 = v106 + 1;
  }

  sub_22C369908();
  if (v128)
  {
    v130 = 1;
  }

  else
  {
    v130 = v129 == v242;
  }

  v131 = v130 || v129 == v241;
  v97 = v286;
  if (!v131)
  {
    sub_22C36BA4C();
    v132(v273, v282);
    sub_22C4F6008();
    v134 = v133 | v108;
    v98 = v269;
    if (v134)
    {
LABEL_43:
      v142 = *v280;
      v141 = v282;
      goto LABEL_44;
    }

    goto LABEL_35;
  }

  sub_22C4F6008();
  v237 = v236 | v108;
  v142 = *v280;
  v141 = v282;
  if ((v237 & 1) == 0)
  {
    v142(v278, v97);
    v3 = v284;
    goto LABEL_41;
  }

LABEL_44:
  v3 = v284;
  v106 = v285;
  v142(v278, v97);
LABEL_45:
  sub_22C4F5FA4();
  v143 = sub_22C385620();
  v144(v143);
LABEL_46:
  v145 = *(v275 + 16);
  v146 = v274;
  if (v106 == v145)
  {
    v147 = 1;
    v148 = v287;
    v149 = v247;
LABEL_84:
    sub_22C36C640(v149, v147, 1, v148);
    v197 = v246;
    (*(v259 + 16))(v246, v249, v148);
    sub_22C36C640(v197, 0, 1, v148);
    v198 = *(v248 + 48);
    v199 = v250;
    sub_22C3E8FB4(v149, v250, &qword_27D9BC030, &unk_22C911CC0);
    sub_22C3E8FB4(v197, v199 + v198, &qword_27D9BC030, &unk_22C911CC0);
    sub_22C36D0A8(v199, 1, v148);
    if (!v118)
    {
      v212 = v245;
      sub_22C3E8FB4(v199, v245, &qword_27D9BC030, &unk_22C911CC0);
      sub_22C36D0A8(v199 + v198, 1, v148);
      if (!v213)
      {
        v227 = v259 + 32;
        v228 = v244;
        (*(v259 + 32))(v244, v199 + v198, v148);
        sub_22C4E9D34(&qword_27D9BAA28, MEMORY[0x277D1C358]);
        sub_22C90A0BC();

        v229 = sub_22C3886C0();
        v230(v229);
        v231 = sub_22C372880();
        v232(v231);
        v233 = *(v227 - 24);
        v233(v228, v148);
        sub_22C36DD28(v197, &qword_27D9BC030, &unk_22C911CC0);
        sub_22C36DD28(v149, &qword_27D9BC030, &unk_22C911CC0);
        v234 = sub_22C4F5F84();
        v235(v234);
        sub_22C36DD28(v240[0], &qword_27D9BBAB0, &qword_22C910D10);
        v233(v212, v148);
        sub_22C36DD28(v199, &qword_27D9BC030, &unk_22C911CC0);
        return;
      }

      v214 = sub_22C3886C0();
      v215(v214);
      v216 = sub_22C372880();
      v217(v216);
      sub_22C37A060();
      sub_22C36DD28(v218, v219, v220);
      sub_22C37A060();
      sub_22C36DD28(v221, v222, v223);
      v224 = sub_22C4F5F84();
      v225(v224);
      sub_22C36DD28(v240[0], &qword_27D9BBAB0, &qword_22C910D10);
      sub_22C4F5FA4();
      v226(v212, v148);
      goto LABEL_92;
    }

    v200 = sub_22C3886C0();
    v201(v200);
    v202 = sub_22C372880();
    v203(v202);
    sub_22C37A060();
    sub_22C36DD28(v204, v205, v206);
    sub_22C37A060();
    sub_22C36DD28(v207, v208, v209);
    v210 = sub_22C4F5F84();
    v211(v210);
    sub_22C36DD28(v240[0], &qword_27D9BBAB0, &qword_22C910D10);
    sub_22C36D0A8(v199 + v198, 1, v148);
    if (!v118)
    {
LABEL_92:
      sub_22C36DD28(v199, &qword_27D9BD7D8, &qword_22C9192E8);
      return;
    }

    v88 = &qword_27D9BC030;
    v89 = &unk_22C911CC0;
    v87 = v199;
LABEL_6:
    sub_22C36DD28(v87, v88, v89);
    return;
  }

  if (!v145)
  {
    goto LABEL_98;
  }

  v150 = sub_22C9070DC();
  sub_22C369914(v150);
  v284 = v151;
  v282 = v275 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
  v152 = v145 - 1;
  v277 = v145;
  while (2)
  {
    if (v152 < v145)
    {
      v153 = v284[9];
      v285 = v152;
      v154 = v288;
      v278 = v282 + v153 * v152;
      sub_22C9068FC();
      sub_22C3A9BB4(v154, v146);
      if (v3)
      {

LABEL_80:
        v192 = v288;
        v193 = v287;
LABEL_82:
        sub_22C4F5FA4();
        v196(v192, v193);
LABEL_83:
        v149 = v247;
        sub_22C9068FC();
        v147 = 0;
        v148 = v287;
        goto LABEL_84;
      }

      v155 = v141;
      v156 = v271;
      sub_22C3E8FB4(v146, v271, &qword_27D9BD7E8, &qword_22C923170);
      sub_22C36D0A8(v156, 1, v97);
      if (v118)
      {
        sub_22C36DD28(v156, &qword_27D9BD7E8, &qword_22C923170);
        sub_22C4F60D4(0xD000000000000097, 0x800000022C931AF0);
        sub_22C36DD28(v146, &qword_27D9BD7E8, &qword_22C923170);
        v297 = v294;
        sub_22C4F5DF8(&v297);
        v296 = v295;
        sub_22C4F5DF8(&v296);
        goto LABEL_80;
      }

      sub_22C36DD28(v146, &qword_27D9BD7E8, &qword_22C923170);
      sub_22C36BA4C();
      v157(v281, v156, v97);
      v145 = v288;
      sub_22C70F1D0();
      v159 = v158;
      sub_22C36CA88();
      sub_22C70F408();
      v161 = v160;
      sub_22C36CA88();
      sub_22C70F644();
      v163 = v162;
      v97 = v270;
      sub_22C36CA88();
      sub_22C710384();
      sub_22C36D0A8(v97, 1, v141);
      if (!v118)
      {
        LODWORD(v272) = v163;
        LODWORD(v273) = v161;
        LODWORD(v276) = v159;
        v165 = v97;
        v97 = *v264;
        v166 = v258;
        (*v264)(v258, v165, v141);
        sub_22C36CA88();
        sub_22C710DF4();
        v168 = v167;
        v169 = v266;
        v97(v266, v166, v155);
        sub_22C36BA4C();
        v170(v169, v155);
        sub_22C369908();
        if (v171)
        {
          v173 = 1;
        }

        else
        {
          v173 = v172 == v261;
        }

        v174 = v173 || v172 == v260;
        v141 = v155;
        if (v174)
        {
          v146 = v274;
          sub_22C3766C4();
          if (v175)
          {
            goto LABEL_81;
          }

          v176 = sub_22C37FDB4();
          v177(v176);
          sub_22C4F5FA4();
          v178 = sub_22C4F60B4();
          v179(v178);
          if (v168)
          {
            goto LABEL_83;
          }
        }

        else
        {
          sub_22C369908();
          if (v180)
          {
            v182 = 1;
          }

          else
          {
            v182 = v181 == v242;
          }

          v183 = v182 || v181 == v241;
          v97 = v286;
          v145 = v277;
          v184 = v276;
          v185 = v273;
          v186 = v272;
          if (v183)
          {
            if ((v276 | v273 | v272))
            {
LABEL_81:
              v193 = v287;
              v192 = v288;
              v194 = sub_22C37FDB4();
              v195(v194);
            }

            else
            {
              v238 = sub_22C37FDB4();
              v239(v238);
              v193 = v287;
              v192 = v288;
            }

            goto LABEL_82;
          }

          sub_22C36BA4C();
          v187(v266, v141);
          v164 = v184 | v185 | v186;
LABEL_75:
          v146 = v274;
          if (v164)
          {
            goto LABEL_81;
          }

          v188 = sub_22C37FDB4();
          v189(v188);
          sub_22C4F5FA4();
          v190 = sub_22C4F60B4();
          v191(v190);
        }

        v152 = v285 - 1;
        continue;
      }

      sub_22C36DD28(v97, &qword_27D9BD7E0, &qword_22C9192F0);
      sub_22C3766C4();
      goto LABEL_75;
    }

    break;
  }

  __break(1u);
LABEL_98:
  __break(1u);
}

uint64_t sub_22C4F40CC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  sub_22C591324();
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 24) >> 1;
  v9 = v7 + 1;
  if (v8 <= v7)
  {
    sub_22C591324();
    v6 = v21;
    v8 = *(v21 + 24) >> 1;
  }

  *(v6 + 16) = v9;
  *(v6 + 8 * v7 + 32) = v4;
  v10 = v7 + 2;
  if (v8 < (v7 + 2))
  {
    sub_22C591324();
    v6 = v22;
  }

  *(v6 + 16) = v10;
  *(v6 + 8 * v9 + 32) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xD000000000000016;
  *(v11 + 24) = 0x800000022C931C10;
  v12 = *(v6 + 24);
  v13 = v7 + 3;

  if ((v7 + 3) > (v12 >> 1))
  {
    sub_22C591324();
    v6 = v23;
  }

  *(v6 + 16) = v13;
  *(v6 + 8 * v10 + 32) = v11;
  v14 = v7 + 4;
  if ((v7 + 4) > *(v6 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v24;
  }

  *(v6 + 16) = v14;
  *(v6 + 8 * v13 + 32) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = 41;
  *(v15 + 24) = 0xE100000000000000;
  v16 = *(v6 + 24);

  if ((v7 + 5) > (v16 >> 1))
  {
    sub_22C591324();
    v6 = v25;
  }

  *(v6 + 16) = v7 + 5;
  *(v6 + 8 * v14 + 32) = v15;
  v17 = sub_22C3DB9B0(v6);

  v18 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = v19;
  return v18 | 0x6000000000000000;
}

uint64_t sub_22C4F4340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C90283C();
  v5 = sub_22C90A2CC();
  v7 = v6;

  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0xE000000000000000;
  sub_22C591324();
  v10 = v9;
  v11 = *(v9 + 16);
  v12 = *(v9 + 24) >> 1;
  v13 = v11 + 1;
  if (v12 <= v11)
  {
    sub_22C591324();
    v10 = v30;
    v12 = *(v30 + 24) >> 1;
  }

  *(v10 + 16) = v13;
  *(v10 + 8 * v11 + 32) = v8;
  v14 = v11 + 2;
  if (v12 < (v11 + 2))
  {
    sub_22C591324();
    v10 = v31;
  }

  *(v10 + 16) = v14;
  *(v10 + 8 * v13 + 32) = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = 0xD000000000000016;
  *(v15 + 24) = 0x800000022C931C10;
  v16 = *(v10 + 24);
  v17 = v11 + 3;

  if ((v11 + 3) > (v16 >> 1))
  {
    sub_22C591324();
    v10 = v32;
  }

  *(v10 + 16) = v17;
  *(v10 + 8 * v14 + 32) = v15;
  v18 = v11 + 4;
  if ((v11 + 4) > *(v10 + 24) >> 1)
  {
    sub_22C591324();
    v10 = v33;
  }

  *(v10 + 16) = v18;
  *(v10 + 8 * v17 + 32) = a3;
  v19 = swift_allocObject();
  *(v19 + 16) = 46;
  *(v19 + 24) = 0xE100000000000000;
  v20 = *(v10 + 24);
  v21 = v11 + 5;

  if ((v11 + 5) > (v20 >> 1))
  {
    sub_22C591324();
    v10 = v34;
  }

  *(v10 + 16) = v21;
  *(v10 + 8 * v18 + 32) = v19;
  v22 = swift_allocObject();
  *(v22 + 16) = v5;
  *(v22 + 24) = v7;
  v23 = *(v10 + 24);

  if ((v11 + 6) > (v23 >> 1))
  {
    sub_22C591324();
    v10 = v35;
  }

  *(v10 + 16) = v11 + 6;
  *(v10 + 8 * v21 + 32) = v22;

  v24 = swift_allocObject();
  *(v24 + 16) = 41;
  *(v24 + 24) = 0xE100000000000000;
  v25 = *(v10 + 16);
  if (v25 >= *(v10 + 24) >> 1)
  {
    sub_22C591324();
    v10 = v36;
  }

  *(v10 + 16) = v25 + 1;
  *(v10 + 8 * v25 + 32) = v24;
  v26 = sub_22C3DB9B0(v10);

  v27 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v27 + 16) = v28;
  return v27 | 0x6000000000000000;
}

uint64_t sub_22C4F46A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C90283C();
  v5 = sub_22C90A2CC();
  v7 = v6;

  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0xE000000000000000;
  sub_22C591324();
  v10 = v9;
  v11 = *(v9 + 16);
  v12 = *(v9 + 24) >> 1;
  v13 = v11 + 1;
  if (v12 <= v11)
  {
    sub_22C591324();
    v10 = v30;
    v12 = *(v30 + 24) >> 1;
  }

  *(v10 + 16) = v13;
  *(v10 + 8 * v11 + 32) = v8;
  v14 = v11 + 2;
  if (v12 < (v11 + 2))
  {
    sub_22C591324();
    v10 = v31;
  }

  *(v10 + 16) = v14;
  *(v10 + 8 * v13 + 32) = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = 0x736465656E203D20;
  *(v15 + 24) = 0xEF2865756C61765FLL;
  v16 = *(v10 + 24);
  v17 = v11 + 3;

  if ((v11 + 3) > (v16 >> 1))
  {
    sub_22C591324();
    v10 = v32;
  }

  *(v10 + 16) = v17;
  *(v10 + 8 * v14 + 32) = v15;
  v18 = v11 + 4;
  if ((v11 + 4) > *(v10 + 24) >> 1)
  {
    sub_22C591324();
    v10 = v33;
  }

  *(v10 + 16) = v18;
  *(v10 + 8 * v17 + 32) = a3;
  v19 = swift_allocObject();
  *(v19 + 16) = 46;
  *(v19 + 24) = 0xE100000000000000;
  v20 = *(v10 + 24);
  v21 = v11 + 5;

  if ((v11 + 5) > (v20 >> 1))
  {
    sub_22C591324();
    v10 = v34;
  }

  *(v10 + 16) = v21;
  *(v10 + 8 * v18 + 32) = v19;
  v22 = swift_allocObject();
  *(v22 + 16) = v5;
  *(v22 + 24) = v7;
  v23 = *(v10 + 24);

  if ((v11 + 6) > (v23 >> 1))
  {
    sub_22C591324();
    v10 = v35;
  }

  *(v10 + 16) = v11 + 6;
  *(v10 + 8 * v21 + 32) = v22;

  v24 = swift_allocObject();
  *(v24 + 16) = 41;
  *(v24 + 24) = 0xE100000000000000;
  v25 = *(v10 + 16);
  if (v25 >= *(v10 + 24) >> 1)
  {
    sub_22C591324();
    v10 = v36;
  }

  *(v10 + 16) = v25 + 1;
  *(v10 + 8 * v25 + 32) = v24;
  v26 = sub_22C3DB9B0(v10);

  v27 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v27 + 16) = v28;
  return v27 | 0x6000000000000000;
}

__n128 *sub_22C4F4A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PromptTreeIdentifier(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v78 - v12;
  sub_22C902D0C();
  sub_22C37F224();
  v80 = v14;
  v78[2] = sub_22C38C380(v15, v16, v17, v14);
  swift_storeEnumTagMultiPayload();
  v79 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  sub_22C48A0B0(&v13[*(v79 + 20)]);
  swift_storeEnumTagMultiPayload();
  v18 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v82 = swift_allocBox();
  v20 = v19;
  sub_22C45769C(v13, v19);
  v78[3] = type metadata accessor for PromptTreeIdentifier.Label(0);
  v21 = swift_allocBox();
  sub_22C486784();
  v22 = a1;
  v23 = 0;
  v24 = sub_22C4F5448(v21 | 0x2000000000000000, v22);
  v81 = v18;
  v25 = *(v18 + 48);
  sub_22C36AAE0();
  sub_22C4F5EE4(v13, v26);

  v83 = sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  *(v20 + v25) = v27;
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90FB40;
  sub_22C36A83C();
  v29 = swift_allocObject();
  v84 = 2683;
  v85 = 0xE200000000000000;
  *(v29 + 16) = sub_22C90A49C();
  *(v29 + 24) = v30;
  *(inited + 32) = v29;
  v31 = *(a2 + 16);
  v32 = MEMORY[0x277D84F90];
  if (v31)
  {
    v78[0] = 0;
    v78[1] = v6;
    v33 = v10;
    v84 = MEMORY[0x277D84F90];
    sub_22C3B63D4(0, v31, 0);
    v34 = 0;
    v32 = v84;
    v35 = a2 + 32;
    do
    {
      v36 = *(v35 + 8 * v34);

      v37 = sub_22C4F56BC(v34, v36, a3);

      v84 = v32;
      v39 = *(v32 + 16);
      v38 = *(v32 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_22C3B63D4(v38 > 1, v39 + 1, 1);
        v32 = v84;
      }

      ++v34;
      *(v32 + 16) = v39 + 1;
      *(v32 + 8 * v39 + 32) = v37;
    }

    while (v31 != v34);
    v10 = v33;
    v23 = v78[0];
  }

  v40 = sub_22C3DB9B0(v32);

  sub_22C36D2A8();
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_22C9192A0;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  *(v41 + 32) = v42;
  v43 = v41 | 0x8000000000000000;
  sub_22C369AEC();
  v44 = swift_allocObject();
  sub_22C369AEC();
  v45 = swift_allocObject();
  *(v45 + 16) = v43;
  *(v44 + 16) = v45;
  v46 = v44 | 0x6000000000000000;
  sub_22C36D2A8();
  v47 = swift_allocObject();
  *(v47 + 16) = 1;
  *(v47 + 24) = 1;
  sub_22C369AEC();
  v48 = swift_allocObject();
  *(v48 + 16) = v46;
  *(v47 + 32) = v48;
  *(inited + 40) = v47 | 0xA000000000000000;
  sub_22C36A83C();
  v49 = swift_allocObject();
  v84 = 32010;
  v85 = 0xE200000000000000;
  *(v49 + 16) = sub_22C90A49C();
  *(v49 + 24) = v50;
  *(inited + 48) = v49;
  v51 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  sub_22C369AEC();
  v52 = swift_allocObject();
  sub_22C369AEC();
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  *(v52 + 16) = v53;
  sub_22C37F224();
  v54 = v80;
  sub_22C36C640(v55, v56, v57, v80);
  swift_storeEnumTagMultiPayload();
  v58 = sub_22C901FAC();
  v59 = swift_allocBox();
  (*(*(v58 - 8) + 16))(v60, a3, v58);
  v61 = *(v79 + 20);
  *(v10 + v61) = v59;
  (*(*(v54 - 8) + 104))(v10 + v61, *MEMORY[0x277D1D798], v54);
  swift_storeEnumTagMultiPayload();
  v62 = v81;
  v63 = swift_allocBox();
  v65 = v64;
  sub_22C45769C(v10, v64);
  v66 = swift_allocBox();
  sub_22C486784();
  v67 = sub_22C375948(v66 | 0x2000000000000000, v52 | 0x6000000000000000);
  if (v23)
  {

    sub_22C36AAE0();
    sub_22C4F5EE4(v65, v77);
    result = swift_deallocBox();
    __break(1u);
  }

  else
  {
    v68 = v67;
    v69 = v82 | 0x4000000000000002;
    v70 = *(v62 + 48);
    sub_22C36AAE0();
    sub_22C4F5EE4(v10, v71);

    sub_22C369AEC();
    v72 = swift_allocObject();
    *(v72 + 16) = v68;
    *(v65 + v70) = v72;
    sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
    v73 = swift_allocObject();
    v74 = sub_22C37B63C(v73, xmmword_22C90F870);
    v74[2].n128_u64[0] = v75;
    v74[2].n128_u64[1] = v69;
    v74[3].n128_u64[0] = v75;
    v74[3].n128_u64[1] = v63 | 0x4000000000000002;

    return v73;
  }

  return result;
}

uint64_t sub_22C4F5020@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>, uint64_t a3@<X2>)
{
  v6 = sub_22C90977C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for StatementResultParser_v1_0(0);
  sub_22C374168((a1 + *(v10 + 20)), *(a1 + *(v10 + 20) + 24));
  v11 = *(a3 + 32);
  sub_22C47FCDC();
  v12 = sub_22C9096FC();
  v20 = v9;
  sub_22C4FB170(v12, v13, sub_22C436434, v19, v11);

  (*(v7 + 8))(v9, v6);
  v21 = 0xD000000000000012;
  v22 = 0x800000022C931C30;
  v14 = sub_22C90A2AC();
  v16 = v15;

  MEMORY[0x2318B7850](v14, v16);

  result = MEMORY[0x2318B7850](41, 0xE100000000000000);
  v18 = v22;
  *a2 = v21;
  a2[1] = v18;
  return result;
}

void sub_22C4F51E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = sub_22C902D0C();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  type metadata accessor for DirectionalTypedValue(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v16 = v15 - v14;
  v17 = *(a2 + *(type metadata accessor for StatementResultParser_v1_0(0) + 20) + 168);
  ObjectType = swift_getObjectType();
  sub_22C9093BC();
  sub_22C36985C();
  (*(v19 + 16))(v16, a1);
  swift_storeEnumTagMultiPayload();
  v20 = *(a3 + 32);
  (*(v8 + 104))(v12, *MEMORY[0x277D1D7F8], v6);
  (*(v17 + 8))(&v30, v16, 0, v20, v12, ObjectType, v17);
  (*(v8 + 8))(v12, v6);
  sub_22C3706D4();
  sub_22C4F5EE4(v16, v21);
  if (v35)
  {
    sub_22C36A83C();
    v22 = swift_allocObject();
    v30 = 0;
    v31 = 0xE000000000000000;
    *(v22 + 16) = sub_22C90A49C();
    *(v22 + 24) = v23;
  }

  else
  {
    v24 = v33;
    v25 = v34;
    v27 = v31;
    v26 = v32;
    v22 = v30;

    sub_22C456CE4(v22, v27, v26, v24, v25, 0);
  }

  *a4 = v22;
}

uint64_t sub_22C4F5448(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  sub_22C591324();
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 24) >> 1;
  v9 = v7 + 1;
  if (v8 <= v7)
  {
    sub_22C591324();
    v6 = v21;
    v8 = *(v21 + 24) >> 1;
  }

  *(v6 + 16) = v9;
  *(v6 + 8 * v7 + 32) = v4;
  v10 = v7 + 2;
  if (v8 < (v7 + 2))
  {
    sub_22C591324();
    v6 = v22;
  }

  *(v6 + 16) = v10;
  *(v6 + 8 * v9 + 32) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = 0xD000000000000010;
  *(v11 + 24) = 0x800000022C931C50;
  v12 = *(v6 + 24);
  v13 = v7 + 3;

  if ((v7 + 3) > (v12 >> 1))
  {
    sub_22C591324();
    v6 = v23;
  }

  *(v6 + 16) = v13;
  *(v6 + 8 * v10 + 32) = v11;
  v14 = v7 + 4;
  if ((v7 + 4) > *(v6 + 24) >> 1)
  {
    sub_22C591324();
    v6 = v24;
  }

  *(v6 + 16) = v14;
  *(v6 + 8 * v13 + 32) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = 41;
  *(v15 + 24) = 0xE100000000000000;
  v16 = *(v6 + 24);

  if ((v7 + 5) > (v16 >> 1))
  {
    sub_22C591324();
    v6 = v25;
  }

  *(v6 + 16) = v7 + 5;
  *(v6 + 8 * v14 + 32) = v15;
  v17 = sub_22C3DB9B0(v6);

  v18 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v18 + 16) = v19;
  return v18 | 0x6000000000000000;
}

uint64_t sub_22C4F56BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v5 = type metadata accessor for PromptTreeIdentifier(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  swift_storeEnumTagMultiPayload();
  v8 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
  v9 = swift_allocBox();
  v11 = v10;
  v12 = *(v8 + 48);
  v13 = sub_22C901FAC();
  v14 = swift_allocBox();
  (*(*(v13 - 8) + 16))(v15, a3, v13);
  *v11 = v14;
  v16 = *MEMORY[0x277D1D798];
  v17 = sub_22C902D0C();
  v18 = *(*(v17 - 8) + 104);
  v18(v11, v16, v17);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = 0;
  *(v19 + 32) = 1;
  *(v11 + v12) = v19;
  v18((v11 + v12), *MEMORY[0x277D1D7E8], v17);
  v20 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
  *&v7[v20] = v9;
  v18(&v7[v20], *MEMORY[0x277D1D7D0], v17);
  swift_storeEnumTagMultiPayload();
  v21 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v22 = swift_allocBox();
  v24 = v23;
  sub_22C45769C(v7, v23);
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v25 = swift_allocBox();
  sub_22C486784();
  v26 = sub_22C4F59C4(v25 | 0x2000000000000000, v30, 8250, 0xE200000000000000, 0, 0xE000000000000000);
  v27 = *(v21 + 48);
  sub_22C4F5EE4(v7, type metadata accessor for PromptTreeIdentifier);

  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v24 + v27) = v28;
  return v22 | 0x4000000000000000;
}

uint64_t sub_22C4F59C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_22C36A83C();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0xE000000000000000;
  sub_22C591324();
  v12 = v11;
  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  v15 = v13 >> 1;
  v16 = v14 + 1;
  if (v13 >> 1 <= v14)
  {
    sub_22C386180(v13 > 1, v14 + 1);
    v12 = v29;
    v13 = *(v29 + 24);
    v15 = v13 >> 1;
  }

  *(v12 + 16) = v16;
  *(v12 + 8 * v14 + 32) = v10;
  v17 = v14 + 2;
  if (v15 < (v14 + 2))
  {
    sub_22C386180(v13 > 1, v14 + 2);
    v12 = v30;
  }

  *(v12 + 16) = v17;
  *(v12 + 8 * v16 + 32) = a1;
  sub_22C36A83C();
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  v19 = *(v12 + 24);
  v20 = v14 + 3;

  if ((v14 + 3) > (v19 >> 1))
  {
    sub_22C386180(v19 > 1, v14 + 3);
    v12 = v31;
  }

  *(v12 + 16) = v20;
  *(v12 + 8 * v17 + 32) = v18;
  v21 = *(v12 + 24);
  v22 = v14 + 4;
  if ((v14 + 4) > (v21 >> 1))
  {
    sub_22C386180(v21 > 1, v14 + 4);
    v12 = v32;
  }

  *(v12 + 16) = v22;
  *(v12 + 8 * v20 + 32) = a2;
  sub_22C36A83C();
  v23 = swift_allocObject();
  *(v23 + 16) = a5;
  *(v23 + 24) = a6;
  v24 = *(v12 + 24);

  if ((v14 + 5) > (v24 >> 1))
  {
    sub_22C386180(v24 > 1, v14 + 5);
    v12 = v33;
  }

  *(v12 + 16) = v14 + 5;
  *(v12 + 8 * v22 + 32) = v23;
  v25 = sub_22C3DB9B0(v12);

  sub_22C369AEC();
  v26 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v26 + 16) = v27;
  return v26 | 0x6000000000000000;
}

uint64_t sub_22C4F5BF8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22C3B0268;

  return sub_22C4F08F4(a1, a2 & 1, a3, a4);
}

BOOL sub_22C4F5CB4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C9089DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C9089EC();
  v7 = sub_22C9089AC();
  (*(v4 + 8))(v6, v3);
  v11 = a2;
  v8 = sub_22C5EC13C(sub_22C4F5E4C, v10, v7);

  return v8;
}

uint64_t sub_22C4F5EE4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C4F5F3C(uint64_t result, unint64_t a2)
{
  if ((~a2 & 0x1000000000000007) != 0)
  {
    return sub_22C45C81C(result, a2);
  }

  return result;
}

uint64_t sub_22C4F5F54(uint64_t result, unint64_t a2)
{
  if ((~a2 & 0x1000000000000007) != 0)
  {
    return sub_22C45C7CC(result, a2);
  }

  return result;
}

uint64_t sub_22C4F603C()
{

  return swift_slowAlloc();
}

uint64_t sub_22C4F60D4(uint64_t a1, uint64_t a2)
{

  return sub_22C90735C();
}

uint64_t sub_22C4F60F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = sub_22C3A5908(&qword_27D9BB100, &qword_22C90D9A0);
  v7 = MEMORY[0x28223BE20](v28);
  v26 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v25 = (v21 - v9);
  v27 = sub_22C3A5908(&qword_27D9BD910, &unk_22C91A410);
  MEMORY[0x28223BE20](v27);
  v11 = (v21 - v10);
  v12 = *(a3 + 16);
  v30 = MEMORY[0x277D84F90];
  sub_22C3B63D4(0, v12, 0);
  v13 = v30;
  v24 = v12;
  if (!v12)
  {
    return v13;
  }

  v22 = a2 + 32;
  v14 = 0;
  v15 = *(sub_22C3A5908(&qword_27D9BB0F0, &qword_22C90D990) - 8);
  v21[0] = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v21[1] = v15;
  v23 = *(a2 + 16);
  while (v23 != v14)
  {
    *v25 = *(v22 + 8 * v14);
    sub_22C3A7214();
    v16 = v26;
    sub_22C407C2C();
    *v11 = *v16;
    sub_22C407C2C();

    sub_22C50045C(v11, &v29);
    if (v4)
    {
      goto LABEL_10;
    }

    v4 = 0;
    sub_22C36DD28(v11, &qword_27D9BD910, &unk_22C91A410);
    v17 = v29;
    v30 = v13;
    v19 = *(v13 + 16);
    v18 = *(v13 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_22C3B63D4(v18 > 1, v19 + 1, 1);
      v13 = v30;
    }

    ++v14;
    *(v13 + 16) = v19 + 1;
    *(v13 + 8 * v19 + 32) = v17;
    if (v24 == v14)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_10:

  result = sub_22C36DD28(v11, &qword_27D9BD910, &unk_22C91A410);
  __break(1u);
  return result;
}

void sub_22C4F6400()
{
  sub_22C36BA7C();
  v3 = sub_22C3A5908(&qword_27D9BD8B8, &qword_22C919AB0);
  sub_22C369914(v3);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v4);
  v38 = &v35 - v5;
  sub_22C36BA0C();
  v40 = sub_22C90077C();
  sub_22C369824();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  sub_22C50B438();
  v39 = sub_22C908A8C();
  sub_22C369824();
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v10 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  sub_22C369914(v10);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C36D0FC();
  v12 = sub_22C90947C();
  sub_22C369824();
  v36 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22C369ABC();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v19 = sub_22C908B2C();
  MEMORY[0x2318B6010](v19);
  v37 = v0;
  sub_22C908B1C();
  (*(v7 + 8))(v1, v40);
  v20 = sub_22C50B554();
  v21(v20);
  sub_22C36C640(v2, 0, 1, v12);
  v22 = v36;
  v23 = *(v36 + 32);
  v24 = sub_22C36FC08();
  v23(v24);
  v25 = sub_22C371530();
  v23(v25);
  v26 = (*(v22 + 88))(v17, v12);
  LODWORD(v7) = *MEMORY[0x277D72B48];
  (*(v22 + 8))(v17, v12);
  if (v26 != v7)
  {
    sub_22C908A4C();
    v27 = v42;
    v28 = v43;
    sub_22C374168(v41, v42);
    v29 = v38;
    sub_22C57D7C4(v27, v28, v38);
    sub_22C909A7C();
    sub_22C369A54(v29);
    if (v30)
    {
      sub_22C36DD28(v29, &qword_27D9BD8B8, &qword_22C919AB0);
    }

    else
    {
      v31 = sub_22C377B94();
      v32(v31);
      v33 = sub_22C377B94();
      v34(v33);
    }

    sub_22C36FF94(v41);
  }

  sub_22C36CC48();
}

uint64_t sub_22C4F6864(uint64_t a1, uint64_t a2)
{
  sub_22C50870C();
  if (v3)
  {
    return 0;
  }

  if (sub_22C5085D8(a2))
  {
    return 1;
  }

  sub_22C5089A0();
  if (v5)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void sub_22C4F68C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  v103 = v25;
  v104 = v26;
  sub_22C9099FC();
  sub_22C369824();
  v97 = v28;
  v99 = v27;
  MEMORY[0x28223BE20](v27);
  sub_22C369838();
  sub_22C36D0FC();
  v105 = sub_22C9037DC();
  sub_22C369824();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  sub_22C3698E4();
  v96 = v32;
  sub_22C369930();
  MEMORY[0x28223BE20](v33);
  sub_22C387B64();
  v106 = sub_22C908EAC();
  sub_22C369824();
  v102 = v34;
  MEMORY[0x28223BE20](v35);
  sub_22C3698E4();
  v95 = v36;
  sub_22C369930();
  MEMORY[0x28223BE20](v37);
  sub_22C50B40C();
  type metadata accessor for RenderableTool(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v38);
  sub_22C369838();
  v41 = v40 - v39;
  sub_22C50B358();
  sub_22C50A6A4();
  sub_22C50B478();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C50B340();
    sub_22C50A6FC();
LABEL_3:
    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    v42 = sub_22C909F0C();
    sub_22C50B450(v42);
LABEL_18:
    sub_22C36FB20();
    return;
  }

  v94 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
  sub_22C9036EC();
  sub_22C3699C8();
  v43 = sub_22C36D7F0();
  v45 = v44(v43);
  if (v45 == *MEMORY[0x277D1ECE0])
  {
    v46 = sub_22C36D7F0();
    v47(v46);
    v48 = sub_22C36FBFC();
    v49(v48);
    v98 = v20[3];
    v100 = v20[4];
    sub_22C374168(v20, v98);
    sub_22C50B518();
    sub_22C50B328();
    sub_22C50B0D4(v50, v51);
    v52 = sub_22C38644C();
    sub_22C3A5908(v52, v53);
    sub_22C388F5C();
    sub_22C50B118(v54, &qword_27D9BB828, &unk_22C912AE0);
    sub_22C90AE4C();
    sub_22C481D88(v22, v103, v107, v104, v23, v98, v100);
    if (!v21)
    {
      v68 = *(v30 + 8);
      v69 = sub_22C3726C4();
      v68(v69);
      (*(v102 + 8))(v22, v106);
      v70 = sub_22C50B508();
      v68(v70);
      goto LABEL_18;
    }

    v55 = *(v30 + 8);
    v56 = sub_22C3726C4();
    v55(v56);
    (*(v102 + 8))(v22, v106);
    goto LABEL_10;
  }

  if (v45 == *MEMORY[0x277D1ECE8])
  {
    v57 = sub_22C36D7F0();
    v58(v57);
    (*(v97 + 32))(v24, v41, v99);
    v59 = v20[8];
    v60 = v20[9];
    sub_22C374168(v20 + 5, v59);
    (*(v60 + 8))(v24, v103, v104, v59, v60);
    if (!v21)
    {
      v80 = sub_22C50B61C();
      v81(v80, v99);
      v82 = sub_22C50B4F8();
      v83(v82, v105);
      goto LABEL_18;
    }

    v61 = sub_22C50B61C();
    v62(v61, v99);
    v55 = *(v30 + 8);
    goto LABEL_10;
  }

  if (v45 == *MEMORY[0x277D1ECD8])
  {
    v64 = sub_22C36D7F0();
    v65(v64);
    v66 = sub_22C50B4F8();
    v67(v66, v105);
    goto LABEL_3;
  }

  if (v45 == *MEMORY[0x277D1ECD0])
  {
    v71 = sub_22C36D7F0();
    v72(v71);
    (*(v102 + 32))(v95, v41, v106);
    v73 = v20[4];
    v101 = v20[3];
    sub_22C374168(v20, v101);
    sub_22C50B518();
    sub_22C50B328();
    sub_22C50B0D4(v74, v75);
    v76 = sub_22C36EC8C();
    sub_22C3A5908(v76, v77);
    sub_22C388F5C();
    sub_22C50B118(v78, &qword_27D9BB828, &unk_22C912AE0);
    sub_22C90AE4C();
    (*(v73 + 16))(v95, v103, 1, v107, v104, v96, v101, v73, v94);
    if (!v21)
    {
      v89 = *(v30 + 8);
      v90 = sub_22C3726C4();
      v89(v90);
      v91 = sub_22C50B554();
      v92(v91);
      v93 = sub_22C50B508();
      v89(v93);
      goto LABEL_18;
    }

    v55 = *(v30 + 8);
    v79 = sub_22C3726C4();
    v55(v79);
    (*(v102 + 8))(v95, v106);
LABEL_10:
    v63 = sub_22C50B508();
    v55(v63);
    goto LABEL_18;
  }

  if (v45 == *MEMORY[0x277D1ECF8])
  {
    v84 = sub_22C36D7F0();
    v85(v84);
    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    v86 = sub_22C909F0C();
    sub_22C50B450(v86);
    v87 = sub_22C50B4F8();
    v88(v87, v105);
    goto LABEL_18;
  }

  sub_22C90B4EC();
  __break(1u);
}

void sub_22C4F7064()
{
  sub_22C370030();
  v68 = v3;
  v69 = v0;
  v72 = v4;
  sub_22C90384C();
  sub_22C369824();
  v64 = v6;
  v65 = v5;
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  v63 = v7;
  sub_22C36BA0C();
  v8 = sub_22C9099FC();
  sub_22C369824();
  v66 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22C377D60();
  v67 = sub_22C908EAC();
  sub_22C369824();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  sub_22C36CAC0();
  type metadata accessor for RenderableTool(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v21 = v20 - v19;
  sub_22C50B358();
  sub_22C50A6A4();
  sub_22C441720();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C50B340();
    sub_22C50A6FC();
LABEL_3:
    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    v22 = MEMORY[0x277D84F90];
    v23 = sub_22C909F0C();
    *v72 = 0u;
    *(v72 + 16) = 0u;
    *(v72 + 32) = 0;
    *(v72 + 40) = 1;
    *(v72 + 48) = v23;
    *(v72 + 56) = v22;
LABEL_10:
    sub_22C36FB20();
    return;
  }

  v62 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
  sub_22C9036EC();
  sub_22C3699C8();
  v24 = sub_22C36EC6C();
  v26 = v25(v24);
  if (v26 == *MEMORY[0x277D1ECE0])
  {
    v27 = sub_22C36EC6C();
    v28(v27);
    v29 = sub_22C36D384();
    v30(v29);
    v31 = v69[3];
    v32 = v69[4];
    sub_22C374168(v69, v31);
    (*(v32 + 32))(v1, v68, v31, v32);
    (*(v12 + 8))(v1, v67);
    goto LABEL_9;
  }

  if (v26 == *MEMORY[0x277D1ECE8])
  {
    v33 = sub_22C36EC6C();
    v34(v33);
    (*(v66 + 32))(v2, v21, v8);
    v35 = v69[8];
    v36 = v69[9];
    sub_22C374168(v69 + 5, v35);
    (*(v36 + 24))(v2, v35, v36);
    v37 = sub_22C36BE34();
    v38(v37);
LABEL_9:
    sub_22C9037DC();
    sub_22C36985C();
    (*(v39 + 8))(v21 + v62);
    goto LABEL_10;
  }

  if (v26 == *MEMORY[0x277D1ECD8])
  {
    v40 = sub_22C36EC6C();
    v41(v40);
    sub_22C9037DC();
    sub_22C36985C();
    (*(v42 + 8))(v21 + v62);
    goto LABEL_3;
  }

  if (v26 == *MEMORY[0x277D1ECD0])
  {
    v43 = sub_22C36EC6C();
    v44(v43);
    (*(v12 + 32))(v16, v21, v67);
    v45 = v69[3];
    v46 = v69[4];
    sub_22C374168(v69, v45);
    (*(v46 + 40))(v16, 1, v68, v45, v46);
    (*(v12 + 8))(v16, v67);
    goto LABEL_9;
  }

  if (v26 == *MEMORY[0x277D1ECF8])
  {
    v47 = sub_22C36EC6C();
    v48(v47);
    (*(v64 + 32))(v63, v21, v65);
    v49 = sub_22C374168(v69 + 15, v69[18]);
    v50 = v49[3];
    v51 = v49[4];
    sub_22C374168(v49, v50);
    (*(v51 + 24))(v70, v63, v68, v50, v51);
    v52 = v70[1];
    v53 = v71;
    if (v71)
    {

      v54 = 2;
    }

    else
    {
      v55 = v70[0];
      sub_22C36A83C();
      v54 = swift_allocObject();
      *(v54 + 16) = v55;
      *(v54 + 24) = v52;
    }

    type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
    v56 = MEMORY[0x277D84F90];
    v57 = sub_22C909F0C();
    v58 = sub_22C50B61C();
    v59(v58, v65);
    *v72 = v54;
    sub_22C386CA8(v72);
    *(v60 + 40) = v53;
    *(v60 + 48) = v57;
    *(v60 + 56) = v56;
    sub_22C9037DC();
    sub_22C36985C();
    (*(v61 + 8))(v21 + v62);
    goto LABEL_10;
  }

  sub_22C90B4EC();
  __break(1u);
}

__n128 sub_22C4F7738@<Q0>(uint64_t a2@<X8>)
{
  v5 = v2;
  sub_22C36A83C();
  v7 = swift_allocObject();
  sub_22C9099DC();
  sub_22C90A2CC();
  sub_22C50B42C();

  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  v8 = MEMORY[0x277D84F90];
  sub_22C379FC8();
  sub_22C909F0C();
  v9 = sub_22C36D7FC();
  sub_22C456C30(v9, v10, v11, v12, v13, v14);
  v15 = sub_22C36D7FC();
  sub_22C456CE4(v15, v16, v17, v18, v19, v20);

  v43 = v7;
  v44 = 0u;
  v45 = 0u;
  v21 = sub_22C36D7FC();
  sub_22C456C30(v21, v22, v23, v24, v25, v26);
  sub_22C4F7934(&v43, v5, v41);
  v27 = v42;
  v39 = v41[1];
  v40 = v41[0];
  v28 = v45;

  v29 = sub_22C36FBFC();
  sub_22C456D48(v29, v30, v28);
  v31 = sub_22C36D7FC();
  sub_22C456CE4(v31, v32, v33, v34, v35, v36);
  sub_22C379FC8();
  v37 = sub_22C909F0C();
  result = v40;
  *a2 = v40;
  *(a2 + 16) = v39;
  *(a2 + 32) = v27;
  *(a2 + 40) = 0;
  *(a2 + 48) = v37;
  *(a2 + 56) = v8;
  return result;
}

void sub_22C4F7894(uint64_t a1@<X8>)
{
  sub_22C36A83C();
  v4 = swift_allocObject();
  sub_22C9099DC();
  sub_22C90A2CC();
  sub_22C388CA0();

  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  v5 = MEMORY[0x277D84F90];
  sub_22C909F0C();
  *a1 = v4;
  sub_22C37274C();
  *(a1 + 40) = 0;
  *(a1 + 48) = v6;
  *(a1 + 56) = v5;
}

uint64_t sub_22C4F7934@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v61 = *a1;
  sub_22C374168((a2 + 40), *(a2 + 64));
  sub_22C4FA220();
  v59 = v5;
  v7 = v6;
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90FB40;
  v9 = swift_allocObject();
  v63[0] = 0x6F636F746F727040;
  v63[1] = 0xE90000000000006CLL;
  *(v9 + 16) = sub_22C90A49C();
  *(v9 + 24) = v10;
  *(inited + 32) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = 543581540;
  *(v11 + 24) = 0xE400000000000000;
  sub_22C591324();
  v13 = v12;
  v14 = *(v12 + 16);
  v15 = *(v12 + 24) >> 1;
  v16 = v14 + 1;
  if (v15 <= v14)
  {
    sub_22C591324();
    v13 = v53;
    v15 = *(v53 + 24) >> 1;
  }

  *(v13 + 16) = v16;
  *(v13 + 8 * v14 + 32) = v11;
  v17 = v14 + 2;
  if (v15 < (v14 + 2))
  {
    sub_22C591324();
    v13 = v54;
  }

  *(v13 + 16) = v17;
  *(v13 + 8 * v16 + 32) = v61;
  v18 = swift_allocObject();
  *(v18 + 16) = 0x6F4E203E2D202928;
  *(v18 + 24) = 0xEB000000003A656ELL;
  v19 = *(v13 + 24);

  if ((v14 + 3) > (v19 >> 1))
  {
    sub_22C591324();
    v13 = v55;
  }

  *(v13 + 16) = v14 + 3;
  *(v13 + 8 * v17 + 32) = v18;
  v20 = sub_22C3DB9B0(v13);

  v21 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v21 + 16) = v22;
  *(inited + 40) = v21 | 0x6000000000000000;
  v23 = swift_allocObject();
  *(v23 + 16) = 2236962;
  *(v23 + 24) = 0xE300000000000000;
  sub_22C591324();
  v25 = v24;
  v26 = *(v24 + 16);
  v27 = v26 + 1;
  v28 = a2;
  if (v26 >= *(v24 + 24) >> 1)
  {
    sub_22C591324();
    v25 = v56;
  }

  *(v25 + 16) = v27;
  *(v25 + 8 * v26 + 32) = v23;
  v29 = swift_allocObject();
  *(v29 + 16) = v59;
  *(v29 + 24) = v7;
  v30 = *(v25 + 24);
  v31 = v26 + 2;

  if (v31 > (v30 >> 1))
  {
    sub_22C591324();
    v25 = v57;
  }

  v32 = v28;
  *(v25 + 16) = v31;
  *(v25 + 8 * v27 + 32) = v29;

  v33 = swift_allocObject();
  *(v33 + 16) = 2236962;
  *(v33 + 24) = 0xE300000000000000;
  v34 = *(v25 + 16);
  if (v34 >= *(v25 + 24) >> 1)
  {
    sub_22C591324();
    v25 = v58;
  }

  *(v25 + 16) = v34 + 1;
  *(v25 + 8 * v34 + 32) = v33;
  v35 = sub_22C3DB9B0(v25);

  v36 = swift_allocObject();
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  *(v36 + 16) = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v39 = swift_allocObject();
  *(v39 + 16) = v36 | 0x6000000000000000;
  *(v38 + 32) = v39;
  *(inited + 48) = v38 | 0xA000000000000000;
  v40 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  v41 = sub_22C529D00(10, 0xE100000000000000, v40);

  v42 = swift_allocObject();
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  *(v42 + 16) = v43;
  v44 = type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0(0);
  v45 = sub_22C49FB90(v61, v32 + *(v44 + 24));
  v47 = v46;

  sub_22C3A7214();
  if (v64)
  {
    sub_22C374168(v63, v64);
    sub_22C534758(v45, v47, v62);

    v48 = v62[0];
    v49 = v62[1];
    v50 = v62[2];
    v51 = v62[3];
    result = sub_22C36FF94(v63);
  }

  else
  {

    result = sub_22C36DD28(v63, &qword_27D9BD908, &unk_22C919AF8);
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
  }

  *a4 = v42 | 0x6000000000000000;
  a4[1] = v48;
  a4[2] = v49;
  a4[3] = v50;
  a4[4] = v51;
  return result;
}

void sub_22C4F7F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v23;
  a20 = v24;
  v235 = v20;
  v216 = v25;
  v230 = v26;
  v28 = v27;
  HIDWORD(v215) = v29;
  v233 = v30;
  v32 = v31;
  v227 = v33;
  v34 = sub_22C90963C();
  v35 = sub_22C36A7A4(v34, &v253);
  v228 = v36;
  MEMORY[0x28223BE20](v35);
  sub_22C3698A8();
  sub_22C3698F8(v37);
  v38 = sub_22C90941C();
  v39 = sub_22C36A7A4(v38, v252);
  v224 = v40;
  MEMORY[0x28223BE20](v39);
  sub_22C3698A8();
  sub_22C3698F8(v41);
  v242 = sub_22C9097AC();
  sub_22C369824();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  sub_22C3698E4();
  v241 = v45;
  sub_22C369930();
  MEMORY[0x28223BE20](v46);
  sub_22C36BA64();
  v240 = v47;
  v48 = sub_22C36BA0C();
  v49 = type metadata accessor for PromptToolsHelper.RenderableParameter(v48);
  v50 = sub_22C36A7A4(v49, &a16);
  MEMORY[0x28223BE20](v50);
  sub_22C3698E4();
  sub_22C3698D4();
  v52 = MEMORY[0x28223BE20](v51);
  MEMORY[0x28223BE20](v52);
  sub_22C50B40C();
  v53 = *(v28 + 8);
  v217 = *v28;
  v218 = v53;
  v54 = *(v28 + 24);
  v219 = *(v28 + 16);
  v220 = v54;
  v221 = *(v28 + 32);
  LODWORD(v231) = *(v28 + 40);
  v55 = sub_22C908DCC();
  v232 = v32;
  v244[2] = v32;
  v56 = sub_22C47B690(sub_22C50AF00, v244, v55);
  v57 = v21;
  v58 = *(v56 + 16);
  if (v58)
  {
    v236 = v21;
    v222 = v43;
    v247 = MEMORY[0x277D84F90];
    sub_22C3B6F58(0, v58, 0);
    v59 = v247;
    v239 = sub_22C90981C();
    sub_22C36985C();
    v61 = *(v60 + 16);
    v60 += 16;
    v243 = v61;
    v62 = (*(v60 + 64) + 32) & ~*(v60 + 64);
    v214 = v56;
    v63 = v56 + v62;
    v238 = *(v60 + 56);
    v64 = v237;
    do
    {
      v65 = sub_22C371530();
      v243(v65);
      v66 = (v22 + *(v64 + 20));
      *v66 = 0;
      v66[1] = 0;
      v247 = v59;
      v68 = *(v59 + 16);
      v67 = *(v59 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_22C369AB0(v67);
        sub_22C375CCC();
        sub_22C3B6F58(v69, v70, v71);
        v64 = v237;
        v59 = v247;
      }

      *(v59 + 16) = v68 + 1;
      sub_22C50B654();
      sub_22C3706EC();
      sub_22C50B07C();
      v63 += v238;
      --v58;
    }

    while (v58);

    v43 = v222;
    v57 = v236;
  }

  else
  {

    v59 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v72);
  v212 = v235;
  v247 = v59;

  sub_22C563F04(sub_22C50AF20, &v210);
  v73 = &v248;
  v222 = v57;
  if (v57)
  {
LABEL_35:

    __break(1u);
    return;
  }

  v74 = v247;
  v75 = 0;
  v243 = v247[2];
  v238 = v43 + 8;
  v236 = MEMORY[0x277D84F90];
  v239 = v247;
  while (v243 != v75)
  {
    v73 = *(v74 + 16);
    if (v75 >= v73)
    {
      __break(1u);
      goto LABEL_35;
    }

    sub_22C50B654();
    v237 = v76;
    sub_22C50A6A4();
    sub_22C9097FC();
    sub_22C908FAC();
    sub_22C50B0D4(&qword_27D9BD8C8, MEMORY[0x277D73128]);
    v77 = sub_22C90AE0C();
    v78 = *v238;
    v79 = sub_22C50B578();
    v78(v79);
    v80 = sub_22C3726C4();
    v78(v80);
    if (v77)
    {
      sub_22C50A6FC();
      v75 = (v75 + 1);
    }

    else
    {
      sub_22C3706EC();
      sub_22C50B07C();
      v81 = v236;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v81;
      v247 = v81;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v84 = sub_22C373310();
        sub_22C3B6F58(v84, v85, v86);
        v83 = v247;
      }

      v88 = *(v83 + 16);
      v87 = *(v83 + 24);
      if (v88 >= v87 >> 1)
      {
        v89 = sub_22C369AB0(v87);
        sub_22C3B6F58(v89, v88 + 1, 1);
        v83 = v247;
      }

      v75 = (v75 + 1);
      *(v83 + 16) = v88 + 1;
      v236 = v83;
      sub_22C3706EC();
      sub_22C50B07C();
    }

    v74 = v239;
  }

  v90 = v235;
  v91 = *(v235 + 24);
  v92 = *(v235 + 32);
  v93 = sub_22C379ED8();
  v95 = sub_22C374168(v93, v94);
  v247 = v236;
  v96 = sub_22C36ECB4();
  v98 = sub_22C3A5908(v96, v97);
  sub_22C388F5C();
  v100 = sub_22C50B118(v99, &qword_27D9BD8D0, &unk_22C919AC0);
  v101 = v230;
  v234 = sub_22C577748(&v247, v95, v233, v230, v98, v91, v100, v92);
  v240 = v103;
  v241 = v102;

  v104 = v231;
  if (v231 == 255)
  {
    sub_22C4F92C4(v232, BYTE4(v215) & 1, v101, &v247);
    v114 = v247;
    v112 = v248;
    v110 = v249;
    v108 = v250;
    v106 = v251;
    v116 = v252[0];
    v117 = sub_22C50B648();
    sub_22C456C30(v117, v118, v110, v108, v106, v116);
    sub_22C3E022C(&v247);
    v104 = v231;
    v105 = v221;
    v107 = v220;
    v109 = v219;
    v111 = v218;
    v113 = v217;
    if (v116)
    {
      goto LABEL_22;
    }

LABEL_24:
    v247 = v114;
    v248 = v112;
    v249 = v110;
    v250 = v108;
    v251 = v106;
    sub_22C50AF40(v113, v111, v109, v107, v105, v104);
    v254 = v114;
    v236 = v112;
    v242 = v110;
    v243 = v108;
    v237 = v106;
    sub_22C50B46C();
    sub_22C456C30(v119, v120, v121, v122, v123, v124);
    sub_22C4F940C(&v247, v90, v241, v240, v245);
    v221 = v245[0];
    v220 = v245[1];
    v239 = v245[2];
    v238 = v246;
    v125 = v250;

    v126 = sub_22C36BA00();
    sub_22C456D48(v126, v127, v125);
    v115 = 0;
    goto LABEL_25;
  }

  v105 = v221;
  v106 = v221;
  v107 = v220;
  v108 = v220;
  v109 = v219;
  v110 = v219;
  v111 = v218;
  v112 = v218;
  v113 = v217;
  v114 = v217;
  if ((v231 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  v236 = v112;
  v242 = v110;
  v243 = v108;
  v237 = v106;
  v254 = v114;
  v221 = v114;
  sub_22C50AF40(v113, v111, v109, v107, v105, v104);
  v220 = 0;
  v239 = 0;
  v238 = 0;
  v115 = 1;
LABEL_25:
  v128 = v229;
  v129 = v90[3];
  v130 = v90[4];
  v131 = sub_22C379ED8();
  sub_22C374168(v131, v132);
  (*(v130 + 8))(v245, v129, v130);
  sub_22C374168(v245, v246);
  v133 = v223;
  MEMORY[0x2318B6290]();
  v134 = v228;
  v135 = v225;
  (*(v228 + 104))(v225, *MEMORY[0x277D72E10], v128);
  sub_22C50B648();
  sub_22C4FCF6C();
  (*(v134 + 8))(v135, v128);
  sub_22C36FB04();
  v136(v133, v226);
  v137 = v247;
  v138 = v248;
  v140 = v249;
  v139 = v250;
  v141 = v251;
  LODWORD(v134) = v252[0];
  v142 = sub_22C36FF94(v245);
  LODWORD(v226) = v134;
  v233 = v138;
  v230 = v140;
  LODWORD(v225) = v115 | v134;
  LODWORD(v219) = v115;
  v231 = v137;
  v229 = v139;
  v228 = v141;
  if ((v115 | v134))
  {
    v143 = v254;
    if (!v115)
    {
      v143 = v137;
    }

    v144 = v143;
    v145 = v222;
    v146 = v234;
  }

  else
  {
    v218 = v90[3];
    v223 = v90[4];
    v224 = sub_22C374168(v90, v218);
    v217 = sub_22C374168(v90 + 15, v90[18]);
    v147 = v236;
    v148 = v242;
    sub_22C456C30(v254, v236, v242, v243, v237, 0);
    v149 = sub_22C50B478();
    sub_22C456C30(v149, v150, v140, v139, v141, 0);

    sub_22C456C94(v147, v148, v243);

    v151 = sub_22C36BE34();
    sub_22C456C94(v151, v152, v139);
    sub_22C4F9DCC();
    v153 = v137;
    v155 = v154;
    sub_22C36FC2C();
    v156 = sub_22C909F0C();
    sub_22C90981C();
    sub_22C36FC2C();
    v157 = sub_22C909F0C();
    v158 = v218;
    v159 = v223;
    v160 = _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
    sub_22C36FBFC();
    v161 = sub_22C55DE44();
    v211 = v158;
    v212 = v159;
    v210 = v161;
    BYTE1(v209) = 1;
    v162 = v160 & 1;
    v90 = v235;
    LOBYTE(v209) = v162;
    v208 = v216;
    v207 = v224;
    v163 = sub_22C36FC08();
    v146 = v234;
    sub_22C5777F4(v163, v164, v155, v234, v241, v240, v156, v157, v207, v153, v208, v209, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, SBYTE1(v221), v222, v223, v224);
    v232 = v165;

    v166 = v230;

    v167 = v236;
    v168 = v243;
    sub_22C456D48(v236, v242, v243);

    v169 = v229;
    sub_22C456D48(v233, v166, v229);

    sub_22C456D48(v167, v242, v168);
    v144 = v232;

    sub_22C456D48(v233, v166, v169);
    v145 = v222;
  }

  v170 = v239;
  v171 = v238;
  MEMORY[0x28223BE20](v142);
  v212 = v90;
  sub_22C6047A0(MEMORY[0x277D84F98], sub_22C50AF58, &v210, v146, v172, v173, v174, v175, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225);
  v232 = v176;
  v235 = v145;
  v177 = v225;
  v238 = v171;
  v239 = v170;
  if (v225)
  {
    v178 = 0;
    v179 = 0;
    v180 = 0;
    v181 = v144;
    v182 = v221;
    v183 = v220;
  }

  else
  {
    sub_22C50AF90(v144, 0);
    v180 = v221;
    v183 = v220;
    sub_22C50B4D8();
    sub_22C50AFA0(v184, v185, v186, v187, 0);
    sub_22C50B4D8();
    sub_22C50AFA0(v188, v189, v190, v191, 0);
    sub_22C50AF90(v144, 0);

    sub_22C50B4D8();
    sub_22C456D48(v192, v193, v194);
    v178 = v171;
    v179 = v183;
    v182 = v180;
    v181 = v144;
  }

  v195 = v177 & 1;
  v196 = sub_22C36EC8C();
  v198 = v197;
  sub_22C456C30(v196, v199, v179, v197, v178, v195);

  sub_22C50AF74(v144, v195);
  v200 = sub_22C37EFC0();
  sub_22C456CE4(v200, v233, v230, v229, v228, v201);
  v202 = v182;
  v203 = v219;
  sub_22C50AF84(v202, v183, v239, v238, v219);
  sub_22C456CE4(v254, v236, v242, v243, v237, v203);
  v204 = sub_22C36EC8C();
  sub_22C456CE4(v204, v205, v179, v198, v178, v195);
  v206 = v227;
  *v227 = v181;
  v206[1] = v180;
  v206[2] = v179;
  v206[3] = v198;
  v206[4] = v178;
  *(v206 + 40) = v195;
  v206[6] = v232;
  v206[7] = MEMORY[0x277D84F90];
  sub_22C36FB20();
}

uint64_t sub_22C4F8F04()
{
  v0 = sub_22C9063DC();
  v18 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v16[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_22C908D6C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22C908DEC();
  (*(v4 + 104))(v6, *MEMORY[0x277D72170], v3);
  v17 = v6;
  v8 = sub_22C5EC62C(sub_22C50AFAC, v16, v7);

  (*(v4 + 8))(v6, v3);
  if (!v8)
  {
    return 1;
  }

  if (sub_22C9097DC() == 7368801 && v9 == 0xE300000000000000)
  {
  }

  else
  {
    v11 = sub_22C90B4FC();

    if ((v11 & 1) == 0)
    {
      return 1;
    }
  }

  sub_22C903F7C();
  v13 = sub_22C9063CC();
  v14 = sub_22C90AAFC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22C366000, v13, v14, "Skipping app parameter for system framework intent", v15, 2u);
    MEMORY[0x2318B9880](v15, -1, -1);
  }

  (*(v18 + 8))(v2, v0);
  return 0;
}

uint64_t sub_22C4F91C0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[3];
  v7 = a3[4];
  sub_22C374168(a3, v6);
  v8 = (*(v7 + 32))(a1, v6, v7);
  v10 = v9;
  v11 = a3[3];
  v12 = a3[4];
  sub_22C374168(a3, v11);
  if (v8 == (*(v12 + 32))(a2, v11, v12) && v10 == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_22C90B4FC();
  }

  return v15 & 1;
}

void sub_22C4F92C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = v4[8];
  v10 = v4[9];
  sub_22C3766E0(v4 + 5, v9);
  (*(v10 + 8))(v21, a1, a2, a3, v9, v10);
  v11 = v21[0];
  v12 = v21[1];
  v13 = v21[2];
  v14 = v21[3];
  v15 = v22;
  sub_22C36A83C();
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = v12;
  type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  v17 = MEMORY[0x277D84F90];
  if (v15 == 1)
  {

    v18 = sub_22C909F0C();
    v19 = sub_22C37335C();
    sub_22C43627C(v19, v20, v13, v14, 1);
  }

  else
  {
    v18 = sub_22C909F0C();
  }

  *a4 = v16;
  sub_22C37274C();
  *(a4 + 40) = 0;
  *(a4 + 48) = v18;
  *(a4 + 56) = v17;
}

void sub_22C4F940C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v89 = sub_22C3A5908(&qword_27D9BD8E0, &qword_22C91B410);
  v10 = MEMORY[0x28223BE20](v89);
  v88 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v87 = &v69 - v12;
  v90 = sub_22C3A5908(&qword_27D9BD8E8, &unk_22C919AD0);
  v13 = MEMORY[0x28223BE20](v90);
  v86 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v85 = &v69 - v16;
  MEMORY[0x28223BE20](v15);
  v99 = &v69 - v17;
  v18 = *a1;
  v76 = a2;
  sub_22C3A7214();
  if (!v106)
  {
    sub_22C36DD28(&v104, &qword_27D9BD658, &qword_22C9186E0);
    v57 = 0;
    v58 = 0;
    v59 = 0;
    goto LABEL_15;
  }

  v73 = sub_22C374168(&v104, v106);
  v72 = sub_22C908E7C();
  v74 = v19;
  v84 = *(a4 + 16);
  v75 = a5;
  if (!v84)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_17:
    v60 = type metadata accessor for ToolDefinitionRenderer_v1_0(0);
    v61 = *v73;
    v62 = sub_22C49FB90(v18, v76 + *(v60 + 32));
    v64 = v63;

    sub_22C532604(v62, v64, v23, v61, &v100);

    v59 = v100;
    v65 = v101;
    v58 = v102;
    v57 = v103;
    sub_22C36FF94(&v104);
    if (v65)
    {
      v100 = v59;
      v101 = v65;
      v102 = v58;
      v103 = v57;
      sub_22C474C14(&v104);

      v66 = v105;
      v67 = v106;
      v68 = v75;
      *v75 = v104;
      v68[2] = v66;
      v68[3] = v67;
      return;
    }

    a5 = v75;
LABEL_15:
    *a5 = v59;
    a5[1] = 0;
    a5[2] = v58;
    a5[3] = v57;
    return;
  }

  v70 = v18;
  v82 = (v99 + *(v90 + 48));
  v81 = sub_22C90981C();
  v20 = *(v81 - 8);
  v79 = a3 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v83 = *(a3 + 16);
  v78 = v20 + 16;
  v80 = v20;
  v77 = v20 + 32;

  v21 = 0;
  v71 = a4;
  v22 = (a4 + 64);
  v23 = MEMORY[0x277D84F90];
  while (v83 != v21)
  {
    v98 = v23;
    v24 = v89;
    v25 = &v87[*(v89 + 48)];
    v26 = v80;
    v27 = *(v80 + 72);
    v97 = v21;
    v28 = v81;
    (*(v80 + 16))(v87, v79 + v27 * v21, v81);
    v30 = *(v22 - 4);
    v29 = *(v22 - 3);
    v32 = *(v22 - 1);
    v94 = *(v22 - 2);
    v31 = v94;
    v95 = v29;
    v93 = v32;
    v96 = v22;
    v33 = *v22;
    v91 = v30;
    v92 = v33;
    *v25 = v30;
    *(v25 + 1) = v29;
    *(v25 + 2) = v31;
    *(v25 + 3) = v32;
    *(v25 + 4) = v33;
    v34 = v88;
    sub_22C407C2C();
    v35 = &v34[*(v24 + 48)];
    v36 = *(v26 + 32);
    v36(v99, v34, v28);
    v37 = *(v35 + 4);
    v38 = *(v35 + 1);
    v39 = v82;
    *v82 = *v35;
    v39[1] = v38;
    *(v39 + 4) = v37;
    v40 = v85;
    sub_22C3A7214();
    v41 = *(v90 + 48);
    v43 = *&v40[v41];
    v42 = *&v40[v41 + 8];
    v44 = *&v40[v41 + 16];
    v45 = *&v40[v41 + 32];
    v46 = v86;
    v47 = &v86[v41];
    v48 = v40;
    v49 = *&v40[v41 + 24];
    v36(v86, v48, v28);
    *v47 = v43;
    *(v47 + 1) = v42;
    *(v47 + 2) = v44;
    *(v47 + 3) = v49;
    *(v47 + 4) = v45;

    sub_22C456C94(v95, v94, v93);
    sub_22C456C94(v42, v44, v49);
    sub_22C36DD28(v46, &qword_27D9BD8E8, &unk_22C919AD0);
    sub_22C36DD28(v99, &qword_27D9BD8E8, &unk_22C919AD0);
    if (v44)
    {
      v23 = v98;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C591018(0, *(v23 + 16) + 1, 1, v23);
        v23 = v55;
      }

      v51 = v96;
      v50 = v97;
      v53 = *(v23 + 16);
      v52 = *(v23 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_22C591018(v52 > 1, v53 + 1, 1, v23);
        v23 = v56;
      }

      *(v23 + 16) = v53 + 1;
      v54 = (v23 + 32 * v53);
      v54[4] = v42;
      v54[5] = v44;
      v54[6] = v49;
      v54[7] = v45;
    }

    else
    {
      v50 = v97;
      v23 = v98;
      v51 = v96;
    }

    v21 = v50 + 1;
    v22 = v51 + 5;
    if (v84 == v21)
    {

      v18 = v70;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_22C4F9AC8(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = a1;
  v4 = sub_22C3A5908(&qword_27D9BD8F0, &unk_22C919AE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_22C3A5908(&qword_27D9BD8E8, &unk_22C919AD0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = sub_22C90981C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C3A7214();
  v15 = &v10[*(v8 + 56)];
  v17 = *v15;
  v16 = *(v15 + 1);
  v18 = *(v15 + 3);
  v24 = *(v15 + 2);
  v25 = v16;
  v23 = *(v15 + 4);
  (*(v12 + 32))(v14, v10, v11);
  v20 = a3[3];
  v19 = a3[4];
  sub_22C374168(a3, v20);
  (*(v19 + 32))(v14, v20, v19);
  (*(v12 + 16))(v6, v14, v11);
  v21 = type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  *&v6[*(v21 + 20)] = v17;
  sub_22C36C640(v6, 0, 1, v21);

  sub_22C6036EC();

  sub_22C456D48(v25, v24, v18);
  return (*(v12 + 8))(v14, v11);
}

void sub_22C4F9DCC()
{
  sub_22C36BA7C();
  sub_22C908EAC();
  sub_22C369824();
  v47 = v2;
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  sub_22C36BE24();
  sub_22C9063DC();
  sub_22C369824();
  v48 = v5;
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - v7;
  v9 = sub_22C36FC08();
  v11 = sub_22C3A5908(v9, v10);
  sub_22C369914(v11);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C50B438();
  v13 = sub_22C3A5908(&qword_27D9BD8C0, &qword_22C919AB8);
  sub_22C369914(v13);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  sub_22C50B41C();
  sub_22C379FC8();
  sub_22C3A7214();
  LOBYTE(v15) = sub_22C906A5C();
  v16 = sub_22C369A54(v0);
  if (v23)
  {
    v17 = &qword_27D9BB730;
    v18 = &unk_22C90FE30;
    v19 = v0;
  }

  else
  {
    v20 = MEMORY[0x2318B3F20](v16);
    sub_22C36BBA8();
    v21 = sub_22C379ED8();
    v22(v21);
    sub_22C908E7C();
    sub_22C6055E8(v20, v1);

    v15 = sub_22C90810C();
    sub_22C369A54(v1);
    if (!v23)
    {
      sub_22C9080FC();
      sub_22C50B4BC();
      sub_22C36BBA8();
      (*(v30 + 8))(v1, v15);
      sub_22C903F7C();
      v31 = sub_22C36ECB4();
      v32(v31);
      v33 = sub_22C9063CC();
      v34 = sub_22C90AACC();
      if (os_log_type_enabled(v33, v34))
      {
        v36 = sub_22C36FB44();
        v46 = sub_22C370060();
        v50 = v46;
        *v36 = 136315138;
        v37 = sub_22C908E7C();
        v39 = v38;
        v40 = sub_22C36EBF0();
        v41(v40);
        v42 = sub_22C36F9F4(v37, v39, &v50);

        *(v36 + 4) = v42;
        _os_log_impl(&dword_22C366000, v33, v34, "Using an overriden description for %s", v36, 0xCu);
        sub_22C36FF94(v46);
        sub_22C3699EC();
        sub_22C370510();
      }

      else
      {

        v43 = sub_22C36EBF0();
        v44(v43);
      }

      (*(v48 + 8))(v8, v49);
      goto LABEL_16;
    }

    v17 = &qword_27D9BD8C0;
    v18 = &qword_22C919AB8;
    v19 = v1;
  }

  sub_22C36DD28(v19, v17, v18);
  sub_22C908E2C();
  if (v24)
  {
    sub_22C50B4BC();
  }

  else
  {
    sub_22C903F7C();
    v25 = sub_22C9063CC();
    v26 = sub_22C90AACC();
    if (sub_22C37B204(v26))
    {
      v27 = sub_22C36D240();
      *v27 = 0;
      sub_22C3699EC();
    }

    v28 = sub_22C50B584();
    v29(v28);
  }

LABEL_16:
  sub_22C3726C4();
  sub_22C36CC48();
}

void sub_22C4FA220()
{
  sub_22C36BA7C();
  v4 = v3;
  sub_22C9099FC();
  sub_22C369824();
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  sub_22C3804A4();
  MEMORY[0x28223BE20](v6);
  sub_22C382E94();
  sub_22C9063DC();
  sub_22C369824();
  v49 = v8;
  v50 = v7;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C50B530();
  v9 = sub_22C36FC08();
  v11 = sub_22C3A5908(v9, v10);
  sub_22C369914(v11);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  sub_22C50B438();
  v13 = sub_22C3A5908(&qword_27D9BD8C0, &qword_22C919AB8);
  sub_22C369914(v13);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  sub_22C50B41C();
  sub_22C379FC8();
  sub_22C3A7214();
  sub_22C906A5C();
  v15 = sub_22C369A54(v1);
  if (v23)
  {
    v16 = &qword_27D9BB730;
    v17 = &unk_22C90FE30;
    v18 = v1;
LABEL_7:
    sub_22C36DD28(v18, v16, v17);
    sub_22C9099DC();
    sub_22C90A2CC();
    sub_22C385D88();

    v51[0] = v4;
    v51[1] = v0;
    v24 = sub_22C50B5B8();
    sub_22C37162C(v24, v25, v26, v27, v28, v29, MEMORY[0x277D837D0]);
    sub_22C50B4BC();

    goto LABEL_12;
  }

  v19 = MEMORY[0x2318B3F20](v15);
  sub_22C36BBA8();
  v20 = sub_22C379ED8();
  v21(v20);
  sub_22C9099DC();
  sub_22C6055E8(v19, v2);

  v22 = sub_22C90810C();
  sub_22C369A54(v2);
  if (v23)
  {
    v16 = &qword_27D9BD8C0;
    v17 = &qword_22C919AB8;
    v18 = v2;
    goto LABEL_7;
  }

  sub_22C9080FC();
  sub_22C50B4BC();
  sub_22C36BBA8();
  (*(v30 + 8))(v2, v22);
  sub_22C903F7C();
  v31 = sub_22C50B478();
  v48 = v32;
  v32(v31);
  v33 = sub_22C9063CC();
  v34 = sub_22C90AACC();
  if (sub_22C370048(v34))
  {
    v47 = v34;
    v36 = sub_22C36FB44();
    v46 = sub_22C370060();
    v51[0] = v46;
    *v36 = 136315138;
    v37 = sub_22C3806B8();
    v48(v37);
    sub_22C36D384();
    v38 = sub_22C90A1AC();
    v40 = v39;
    v41 = sub_22C36EBF0();
    v42(v41);
    v43 = sub_22C36F9F4(v38, v40, v51);

    *(v36 + 4) = v43;
    _os_log_impl(&dword_22C366000, v33, v47, "Using an overriden description for %s", v36, 0xCu);
    sub_22C36FF94(v46);
    sub_22C3699EC();
    sub_22C370510();
  }

  else
  {

    v44 = sub_22C36EBF0();
    v45(v44);
  }

  (*(v49 + 8))(v0, v50);
LABEL_12:
  sub_22C3726C4();
  sub_22C36CC48();
}

void sub_22C4FA634()
{
  sub_22C36BA7C();
  v2 = v1;
  sub_22C908DAC();
  sub_22C369824();
  v88 = v4;
  v89 = v3;
  MEMORY[0x28223BE20](v3);
  sub_22C3698E4();
  v92 = v5;
  sub_22C369930();
  MEMORY[0x28223BE20](v6);
  sub_22C9063DC();
  sub_22C369824();
  v90 = v8;
  v91 = v7;
  MEMORY[0x28223BE20](v7);
  sub_22C3698E4();
  v93 = v9;
  sub_22C369930();
  MEMORY[0x28223BE20](v10);
  sub_22C36BA64();
  v87 = v11;
  sub_22C36BA0C();
  v12 = sub_22C9099FC();
  sub_22C369824();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22C3698E4();
  v94 = v16;
  sub_22C369930();
  MEMORY[0x28223BE20](v17);
  v19 = v86 - v18;
  v20 = sub_22C36ECB4();
  v22 = sub_22C3A5908(v20, v21);
  sub_22C369914(v22);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v23);
  sub_22C50B530();
  v24 = sub_22C3A5908(&qword_27D9BD8C0, &qword_22C919AB8);
  sub_22C369914(v24);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v25);
  v27 = v86 - v26;
  sub_22C37170C();
  sub_22C3A7214();
  v28 = sub_22C906A5C();
  v29 = sub_22C36D0A8(v0, 1, v28);
  v86[1] = v14;
  if (v38)
  {
    v30 = v2;
    v31 = &qword_27D9BB730;
    v32 = &unk_22C90FE30;
    v33 = v0;
  }

  else
  {
    v34 = MEMORY[0x2318B3F20](v29);
    sub_22C36BBA8();
    (*(v35 + 8))(v0, v28);
    sub_22C908D7C();
    sub_22C9099DC();
    sub_22C385D88();
    (*(v14 + 8))(v19, v12);
    sub_22C37170C();
    sub_22C6055E8(v34, v36);

    v37 = sub_22C90810C();
    sub_22C36D0A8(v27, 1, v37);
    if (!v38)
    {
      sub_22C9080FC();
      sub_22C50B5FC();
      sub_22C36BBA8();
      v53 = sub_22C36FBFC();
      v54(v53);
      v55 = v87;
      sub_22C903F7C();
      v56 = sub_22C37BD80();
      v57(v56);
      v58 = sub_22C9063CC();
      v59 = sub_22C90AACC();
      if (os_log_type_enabled(v58, v59))
      {
        v61 = sub_22C36FB44();
        v92 = v61;
        v93 = sub_22C370060();
        v95[0] = v93;
        *v61 = 136315138;
        sub_22C908D7C();
        sub_22C90A1AC();
        v62 = sub_22C37BD80();
        v63(v62);
        v64 = sub_22C372164();
        v67 = sub_22C36F9F4(v64, v65, v66);

        v68 = v92;
        *(v92 + 1) = v67;
        _os_log_impl(&dword_22C366000, v58, v59, "Using an overriden description for %s", v68, 0xCu);
        sub_22C36FF94(v93);
        sub_22C3699EC();
        sub_22C37E124();

        sub_22C3701E0();
        v70 = v87;
      }

      else
      {

        v84 = sub_22C37BD80();
        v85(v84);
        sub_22C3701E0();
        v70 = v55;
      }

      v69(v70, v91);
      goto LABEL_17;
    }

    v30 = v2;
    v31 = &qword_27D9BD8C0;
    v32 = &qword_22C919AB8;
    v33 = v27;
  }

  sub_22C36DD28(v33, v31, v32);
  sub_22C908D9C();
  v39 = v93;
  v40 = v92;
  if (v41)
  {
    sub_22C50B5FC();
  }

  else
  {
    sub_22C903F7C();
    (*(v88 + 16))(v40, v30, v89);
    v42 = sub_22C9063CC();
    v43 = sub_22C90AACC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = sub_22C36FB44();
      v87 = sub_22C370060();
      v95[0] = v87;
      *v44 = 136315138;
      sub_22C908D7C();
      sub_22C50B478();
      v45 = sub_22C90A1AC();
      v47 = v46;
      v48 = sub_22C36EC8C();
      v49(v48);
      v50 = sub_22C36F9F4(v45, v47, v95);

      *(v44 + 4) = v50;
      sub_22C36FF94(v87);
      sub_22C37E124();
      sub_22C3699EC();

      sub_22C3701E0();
      v52 = v93;
    }

    else
    {

      v71 = sub_22C3726C4();
      v72(v71);
      sub_22C3701E0();
      v52 = v39;
    }

    v51(v52, v91);
    sub_22C908D7C();
    sub_22C9099DC();
    v73 = sub_22C50B478();
    v74(v73);
    sub_22C36BA00();
    v75 = sub_22C90A2CC();
    v77 = v76;

    v95[0] = v75;
    v95[1] = v77;
    v78 = sub_22C50B5B8();
    sub_22C37162C(v78, v79, v80, v81, v82, v83, MEMORY[0x277D837D0]);
    sub_22C50B5FC();
  }

LABEL_17:
  sub_22C36BAFC();
  sub_22C36CC48();
}

void sub_22C4FACE8()
{
  sub_22C36BA7C();
  v4 = v3;
  v6 = v5;
  sub_22C3727F4();
  v7 = sub_22C90977C();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C377D60();
  sub_22C374168(v1, v1[3]);
  sub_22C47FCDC();
  v11 = sub_22C9096FC();
  v38 = v2;
  v13 = sub_22C4FB170(v11, v12, sub_22C5099C8, &v37, v4);
  v15 = v14;

  (*(v9 + 8))(v2, v7);
  if (v6)
  {
    goto LABEL_6;
  }

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
LABEL_6:

    sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_22C90F800;
    *(v17 + 32) = sub_22C908E8C();
    *(v17 + 40) = v24;
    v23 = 1;
  }

  else
  {
    sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_22C90F870;
    *(v17 + 32) = v13;
    *(v17 + 40) = v15;
    *(v17 + 48) = sub_22C908E8C();
    *(v17 + 56) = v18;
    v23 = 2;
  }

  v39 = MEMORY[0x277D84F90];
  sub_22C3B5E2C(0, v23, 0, v19, v20, v21, v22);
  v25 = v39;
  v26 = v17 + 40;
  do
  {

    sub_22C379FC8();
    sub_22C90A2CC();
    sub_22C50B42C();

    v39 = v25;
    v28 = *(v25 + 16);
    v27 = *(v25 + 24);
    if (v28 >= v27 >> 1)
    {
      v30 = sub_22C369AB0(v27);
      sub_22C3B5E2C(v30, v28 + 1, 1, v31, v32, v33, v34);
      v25 = v39;
    }

    *(v25 + 16) = v28 + 1;
    v29 = v25 + 16 * v28;
    *(v29 + 32) = v13;
    *(v29 + 40) = v2;
    v26 += 16;
    --v23;
  }

  while (v23);

  v39 = v25;
  v35 = sub_22C37B9B0();
  sub_22C3A5908(v35, v36);
  sub_22C50B388(&qword_28142F9F0);
  sub_22C90A04C();
  sub_22C385630();

  *v0 = &v39;
  *(v0 + 8) = &unk_22C9112A0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  sub_22C36CC48();
}

void sub_22C4FAF9C(uint64_t a1)
{
  sub_22C9099DC();
  sub_22C90A2CC();
  sub_22C370704();
  sub_22C374C24();
}

void sub_22C4FAFDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C374168(v2, v2[3]);
  v12 = sub_22C90381C();
  v13 = v5;
  v14 = a2;
  v15 = v4;
  sub_22C4FB170(v12, v5, sub_22C5099BC, &v11, a2);
  sub_22C385630();

  v16 = v4;
  v17 = a2;

  MEMORY[0x2318B7850](32, 0xE100000000000000);

  v7 = v16;
  v6 = v17;
  v8 = sub_22C90382C();
  v10 = v9;
  v16 = v7;
  v17 = v6;

  MEMORY[0x2318B7850](v8, v10);

  sub_22C90A2CC();
  sub_22C370704();
  sub_22C374C24();
}

double sub_22C4FB0E8@<D0>(uint64_t a1@<X8>)
{
  sub_22C4FACE8();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void *sub_22C4FB318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22C57FE4C(a1, a2);
  v5 = v4;
  if (v4)
  {
    [v4 developerType];
  }

  swift_beginAccess();
  if (v5)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a3 + 32);
    sub_22C62DE00();
    *(a3 + 32) = v12;
  }

  else
  {
    sub_22C62B990();
  }

  swift_endAccess();
  if (v5)
  {
    sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22C90F800;
    *(v6 + 32) = sub_22C9006BC();
    *(v6 + 40) = v7;
    v8 = v5;
    v9 = sub_22C90A5DC();

    v10 = [v8 localizedNameWithPreferredLocalizations_];

    v5 = sub_22C90A11C();
  }

  return v5;
}

double sub_22C4FB4A4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 1;
  return result;
}

void sub_22C4FB4BC()
{
  sub_22C36BA7C();
  v45 = v3;
  v46 = v4;
  v6 = v5;
  v7 = sub_22C90963C();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C377D60();
  sub_22C90941C();
  sub_22C369824();
  v47 = v12;
  v48 = v11;
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  sub_22C50B438();
  v50 = sub_22C9097DC();
  v51 = v13;
  v49[2] = &v50;
  v14 = sub_22C5EC08C(sub_22C3AC11C, v49, &unk_283FAEBB0);

  if (v14)
  {
    *v6 = 1;
    *(v6 + 8) = 0u;
    *(v6 + 24) = 0u;
    *(v6 + 40) = 1;
  }

  else
  {
    v15 = sub_22C374168(v0, v0[3]);
    MEMORY[0x2318B6CE0](v15);
    (*(v9 + 104))(v1, *MEMORY[0x277D72E10], v7);
    sub_22C4FCF6C();
    v16 = sub_22C36BE34();
    v17(v16);
    v18 = (*(v47 + 8))(v2, v48);
    v20 = v50;
    v19 = v51;
    v21 = v52;
    v22 = v53;
    v23 = v54;
    v24 = v55;
    if ((v55 & 1) == 0)
    {
      v25 = sub_22C372248();
      sub_22C456C30(v25, v26, v27, v28, v29, v30);
      sub_22C456C94(v19, v21, v22);
      v31 = sub_22C4FB780(v20, v45, v46);
      v32 = sub_22C372248();
      sub_22C456CE4(v32, v33, v34, v35, v36, v37);
      v38 = sub_22C372248();
      sub_22C456CE4(v38, v39, v40, v41, v42, v43);
      v20 = v31;
    }

    v50 = v20;
    v51 = v19;
    v52 = v21;
    v53 = v22;
    v54 = v23;
    v55 = v24;
    MEMORY[0x28223BE20](v18);
    sub_22C54DBA0(sub_22C50B068, v44);
    sub_22C36DD28(&v50, &qword_27D9BAB08, &qword_22C91A110);
  }

  sub_22C36CC48();
}

uint64_t sub_22C4FB780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  sub_22C591324();
  v8 = v7;
  v9 = *(v7 + 16);
  v10 = v9 + 1;
  if (v9 >= *(v7 + 24) >> 1)
  {
    sub_22C591324();
    v8 = v23;
  }

  *(v8 + 16) = v10;
  *(v8 + 8 * v9 + 32) = v6;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *(v8 + 24);
  v13 = v9 + 2;

  if ((v9 + 2) > (v12 >> 1))
  {
    sub_22C591324();
    v8 = v24;
  }

  *(v8 + 16) = v13;
  *(v8 + 8 * v10 + 32) = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0xE000000000000000;
  v15 = v9 + 3;
  if ((v9 + 3) > *(v8 + 24) >> 1)
  {
    sub_22C591324();
    v8 = v25;
  }

  *(v8 + 16) = v15;
  *(v8 + 8 * v13 + 32) = v14;
  v16 = v9 + 4;
  if ((v9 + 4) > *(v8 + 24) >> 1)
  {
    sub_22C591324();
    v8 = v26;
  }

  *(v8 + 16) = v16;
  *(v8 + 8 * v15 + 32) = a1;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0xE000000000000000;
  v18 = *(v8 + 24);

  if ((v9 + 5) > (v18 >> 1))
  {
    sub_22C591324();
    v8 = v27;
  }

  *(v8 + 16) = v9 + 5;
  *(v8 + 8 * v16 + 32) = v17;
  v19 = sub_22C3DB9B0(v8);

  v20 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v20 + 16) = v21;
  return v20 | 0x6000000000000000;
}

void sub_22C4FB9F4(uint64_t *a1@<X0>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  sub_22C456C94(v6, v8, v7);
  v10 = sub_22C4FBAFC(v5);
  if (v8)
  {
    v13[0] = v6;
    v13[1] = v8;
    v13[2] = v7;
    v13[3] = v9;

    sub_22C4FBDE0(v13, v14);

    sub_22C456D48(v6, v8, v7);
    v11 = v14[1];
    v12 = v14[0];
  }

  else
  {
    sub_22C456D48(v6, 0, v7);
    v12 = v6;
    *&v11 = v7;
    *(&v11 + 1) = v9;
  }

  *a4 = v10;
  *(a4 + 8) = v12;
  *(a4 + 24) = v11;
}

uint64_t sub_22C4FBAFC(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0xE000000000000000;
  sub_22C591324();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5 >= *(v3 + 24) >> 1)
  {
    sub_22C591324();
    v4 = v24;
  }

  *(v4 + 16) = v5 + 1;
  *(v4 + 8 * v5 + 32) = v2;
  sub_22C9097DC();
  v6 = sub_22C90A2CC();
  v8 = v7;

  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);

  if (v11 >= v10 >> 1)
  {
    sub_22C591324();
    v4 = v25;
  }

  *(v4 + 16) = v11 + 1;
  *(v4 + 8 * v11 + 32) = v9;

  v12 = swift_allocObject();
  *(v12 + 16) = 8250;
  *(v12 + 24) = 0xE200000000000000;
  v13 = *(v4 + 16);
  v14 = *(v4 + 24) >> 1;
  v15 = v13 + 1;
  if (v14 <= v13)
  {
    sub_22C591324();
    v4 = v26;
    v14 = *(v26 + 24) >> 1;
  }

  *(v4 + 16) = v15;
  *(v4 + 8 * v13 + 32) = v12;
  v16 = v13 + 2;
  if (v14 < (v13 + 2))
  {
    sub_22C591324();
    v4 = v27;
  }

  *(v4 + 16) = v16;
  *(v4 + 8 * v15 + 32) = a1;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0xE000000000000000;
  v18 = *(v4 + 24);
  v19 = v13 + 3;

  if (v19 > (v18 >> 1))
  {
    sub_22C591324();
    v4 = v28;
  }

  *(v4 + 16) = v19;
  *(v4 + 8 * v16 + 32) = v17;
  v20 = sub_22C3DB9B0(v4);

  v21 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v21 + 16) = v22;
  return v21 | 0x6000000000000000;
}

uint64_t sub_22C4FBD9C(uint64_t a1)
{
  sub_22C9097DC();
  sub_22C90A2CC();
  sub_22C385D88();

  return sub_22C37170C();
}

uint64_t sub_22C4FBDE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22[-1] - v6;
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  sub_22C3A7214();
  if (v25)
  {
    sub_22C374168(v24, v25);
    sub_22C9097DC();
    v21 = sub_22C90A2CC();
    v26 = v2;
    v13 = v12;

    v22[0] = v8;
    v22[1] = v9;
    v22[2] = v10;
    v22[3] = v11;
    MEMORY[0x2318B6CE0](v14);
    v15 = sub_22C90941C();
    sub_22C36C640(v7, 0, 1, v15);
    sub_22C532128(v21, v13, v22, v7, v23);

    sub_22C36DD28(v7, &qword_27D9BC028, &unk_22C9134B0);
    v16 = v23[0];
    v17 = v23[1];
    v18 = v23[2];
    v19 = v23[3];
    result = sub_22C36FF94(v24);
  }

  else
  {
    result = sub_22C36DD28(v24, &qword_27D9BD900, &qword_22C919AF0);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  *a2 = v16;
  a2[1] = v17;
  a2[2] = v18;
  a2[3] = v19;
  return result;
}

uint64_t sub_22C4FBF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    a3 = a1;
    sub_22C9097BC();
    if (!v6)
    {
      return 0xF000000000000007;
    }

    sub_22C385D88();
  }

  sub_22C36A83C();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  return v7;
}

void sub_22C4FC044()
{
  sub_22C36BA7C();
  v35 = v2;
  v36 = v3;
  v5 = v4;
  v6 = sub_22C90941C();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  sub_22C3804A4();
  MEMORY[0x28223BE20](v10);
  sub_22C36BA64();
  v34 = v11;
  sub_22C36BA0C();
  v12 = sub_22C90952C();
  sub_22C369824();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v18 = v17 - v16;
  v19 = *(v8 + 16);
  v19(v1, v5, v6);
  v20 = sub_22C3806B8();
  v22 = v21(v20);
  if (v22 == *MEMORY[0x277D72AD0])
  {
    goto LABEL_2;
  }

  if (v22 == *MEMORY[0x277D72AB0] || v22 == *MEMORY[0x277D72AE8])
  {
LABEL_8:
    v31 = sub_22C3806B8();
    v32(v31);
    v33 = swift_projectBox();
    v19(v34, v33, v6);

    sub_22C4FC044();
    (*(v8 + 8))(v34, v6);
    goto LABEL_9;
  }

  if (v22 != *MEMORY[0x277D72AB8])
  {
    if (v22 != *MEMORY[0x277D72AE0])
    {
      sub_22C50B300();
      (*(v8 + 8))(v1, v6);
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_2:
  v23 = sub_22C3806B8();
  v24(v23);
  v25 = swift_projectBox();
  (*(v14 + 16))(v18, v25, v12);

  v26 = *(v0 + 24);
  v27 = *(v0 + 32);
  v28 = sub_22C372164();
  sub_22C3766E0(v28, v29);
  (*(v27 + 8))(v18, v35, v36, v26, v27);
  (*(v14 + 8))(v18, v12);
LABEL_9:
  sub_22C36CC48();
}

void sub_22C4FC314()
{
  sub_22C36BA7C();
  v80 = v3;
  v82 = v4;
  v6 = v5;
  v83 = v7;
  sub_22C9063DC();
  sub_22C369824();
  v77 = v9;
  v78 = v8;
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  v79 = v10;
  sub_22C36BA0C();
  sub_22C90952C();
  sub_22C369824();
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  sub_22C50B3FC();
  v12 = sub_22C90941C();
  sub_22C369824();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22C3698E4();
  v76 = v16;
  sub_22C369930();
  MEMORY[0x28223BE20](v17);
  sub_22C36BA58();
  v75 = v18;
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  sub_22C36BA58();
  sub_22C369930();
  MEMORY[0x28223BE20](v20);
  sub_22C36CAC0();
  v21 = *(v14 + 16);
  v21(v2, v6, v12);
  v22 = sub_22C372FCC();
  v24 = v23(v22);
  if (v24 == *MEMORY[0x277D72AD0])
  {
    v25 = sub_22C372FCC();
    v26(v25);
    swift_projectBox();
    v27 = sub_22C383BD4();
    v28(v27);
    v29 = v0[3];
    v30 = v0[4];
    v31 = sub_22C37170C();
    sub_22C3766E0(v31, v32);
    sub_22C50B688();
    v34 = v82;
    v35 = v1;
    v36 = v80;
LABEL_3:
    v33(v35, v36, v34, v29, v30);
    v37 = sub_22C37B988();
    v38(v37);
LABEL_9:

    goto LABEL_10;
  }

  if (v24 == *MEMORY[0x277D72AB0])
  {
    v39 = sub_22C372FCC();
    v40(v39);
    swift_projectBox();
    v41 = sub_22C50B628();
    (v21)(v41);
    sub_22C4FC314();
    MEMORY[0x28223BE20](v42);
    sub_22C54DBA0(sub_22C50AED8, v83);
    sub_22C36DD28(v84, &qword_27D9BAB08, &qword_22C91A110);
LABEL_8:
    v46 = sub_22C372FCC();
    v47(v46);
    goto LABEL_9;
  }

  if (v24 == *MEMORY[0x277D72AE8])
  {
    goto LABEL_7;
  }

  if (v24 == *MEMORY[0x277D72AD8])
  {
    v48 = sub_22C372FCC();
    v49(v48);
    sub_22C36A83C();
    v50 = swift_allocObject();
    v84[0] = 1701736270;
    v84[1] = 0xE400000000000000;
    *(v50 + 16) = sub_22C90A49C();
    *(v50 + 24) = v51;
    *v83 = v50;
    sub_22C386CA8(v83);
    *(v52 + 40) = 0;
    goto LABEL_10;
  }

  if (v24 == *MEMORY[0x277D72AB8])
  {
    v53 = sub_22C372FCC();
    v54(v53);
    swift_projectBox();
    v55 = sub_22C383BD4();
    v56(v55);
    v29 = v0[3];
    v30 = v0[4];
    sub_22C3766E0(v0, v29);
    sub_22C50B688();
    v35 = v1;
    v36 = v80;
    v34 = v82;
    goto LABEL_3;
  }

  if (v24 == *MEMORY[0x277D72AE0])
  {
LABEL_7:
    v43 = sub_22C372FCC();
    v44(v43);
    swift_projectBox();
    v45 = sub_22C50B628();
    (v21)(v45);
    sub_22C4FC314();
    goto LABEL_8;
  }

  sub_22C903F7C();
  v21(v75, v6, v12);
  v21(v76, v6, v12);
  v57 = sub_22C9063CC();
  v58 = sub_22C90AACC();
  if (sub_22C370048(v58))
  {
    v59 = sub_22C383050();
    v84[0] = swift_slowAlloc();
    *v59 = 136315394;
    v81 = v57;
    v60 = sub_22C37B9B0();
    (v21)(v60);
    sub_22C37170C();
    sub_22C90A1AC();
    v61 = *(v14 + 8);
    v61(v75, v12);
    v62 = sub_22C36EC8C();
    v65 = sub_22C36F9F4(v62, v63, v64);

    *(v59 + 4) = v65;
    *(v59 + 12) = 2080;
    sub_22C9093EC();
    v66 = sub_22C36BC58();
    (v61)(v66);
    v67 = sub_22C372164();
    v70 = sub_22C36F9F4(v67, v68, v69);

    *(v59 + 14) = v70;
    _os_log_impl(&dword_22C366000, v81, v58, "%s: Unsupported type in action: %s", v59, 0x16u);
    swift_arrayDestroy();
    sub_22C37E124();
    sub_22C370510();

    (*(v77 + 8))(v79, v78);
  }

  else
  {

    v61 = *(v14 + 8);
    v61(v76, v12);
    v71 = sub_22C36BC58();
    (v61)(v71);
    v72 = sub_22C50B584();
    v73(v72, v78);
  }

  v74 = sub_22C372FCC();
  (v61)(v74);
  sub_22C37D980();
LABEL_10:
  sub_22C36CC48();
}

void sub_22C4FC9DC(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  sub_22C456C94(v3, v6, v5);
  v8 = sub_22C4FCB48(v4);
  if (v6)
  {
    sub_22C3A7214();
    v13 = v8;
    if (v17)
    {
      sub_22C374168(v16, v17);
      v14[0] = v3;
      v14[1] = v6;
      v14[2] = v5;
      v14[3] = v7;

      sub_22C533804(v14, v15);
      v10 = v15[0];
      v9 = v15[1];
      v12 = v15[2];
      v11 = v15[3];
      sub_22C36FF94(v16);
    }

    else
    {

      sub_22C36DD28(v16, &qword_27D9BD8A8, &qword_22C919AA0);
      v10 = 0;
      v9 = 0;
      v12 = 0;
      v11 = 0;
    }

    sub_22C456D48(v3, v6, v5);
    v3 = v10;
    v5 = v12;
    v7 = v11;
    v8 = v13;
  }

  else
  {
    sub_22C456D48(v3, 0, v5);
    v9 = 0;
  }

  *a2 = v8;
  a2[1] = v3;
  a2[2] = v9;
  a2[3] = v5;
  a2[4] = v7;
}

uint64_t sub_22C4FCB48(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0x5B7473696CLL;
  *(v2 + 24) = 0xE500000000000000;
  sub_22C591324();
  v4 = v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24) >> 1;
  v7 = v5 + 1;
  if (v6 <= v5)
  {
    sub_22C591324();
    v4 = v16;
    v6 = *(v16 + 24) >> 1;
  }

  *(v4 + 16) = v7;
  *(v4 + 8 * v5 + 32) = v2;
  v8 = v5 + 2;
  if (v6 < (v5 + 2))
  {
    sub_22C591324();
    v4 = v17;
  }

  *(v4 + 16) = v8;
  *(v4 + 8 * v7 + 32) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = 93;
  *(v9 + 24) = 0xE100000000000000;
  v10 = *(v4 + 24);
  v11 = v5 + 3;

  if (v11 > (v10 >> 1))
  {
    sub_22C591324();
    v4 = v18;
  }

  *(v4 + 16) = v11;
  *(v4 + 8 * v8 + 32) = v9;
  v12 = sub_22C3DB9B0(v4);

  v13 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = v14;
  return v13 | 0x6000000000000000;
}

void sub_22C4FCD10()
{
  sub_22C36BA7C();
  sub_22C37E140();
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C377D60();
  v4 = sub_22C3A5908(&qword_27D9BD8B0, &qword_22C919AA8);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C50B41C();
  v6 = type metadata accessor for DynamicEnumeration(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C50B438();
  sub_22C50870C();
  if (v8)
  {
    goto LABEL_7;
  }

  if ((sub_22C5085D8(v1) & 1) == 0)
  {
    sub_22C5089A0();
    goto LABEL_7;
  }

  sub_22C36EC8C();
  sub_22C4BB014(v9, v10);
  sub_22C369A54(v2);
  if (v11)
  {
    sub_22C36DD28(v2, &qword_27D9BD8B0, &qword_22C919AA8);
LABEL_7:
    v12 = (v0 + *(type metadata accessor for TypeInstanceRenderer_v1_0(0) + 20));
    sub_22C374168(v12, v12[3]);
    sub_22C50B590();
    sub_22C37B9B0();
    sub_22C50B608();
    v13();
    goto LABEL_8;
  }

  sub_22C37BD80();
  sub_22C50B07C();
  sub_22C903F7C();
  v14 = sub_22C9063CC();
  v15 = sub_22C90AACC();
  if (sub_22C37B204(v15))
  {
    *sub_22C36D240() = 0;
    sub_22C3699EC();
  }

  v18 = sub_22C50B584();
  v19(v18);
  v20 = (v0 + *(type metadata accessor for TypeInstanceRenderer_v1_0(0) + 24));
  sub_22C3766E0(v20, v20[3]);
  sub_22C50B590();
  v21 = sub_22C50B560();
  v22(v21);
  sub_22C3886E0();
  sub_22C50A6FC();
LABEL_8:
  sub_22C36CC48();
}

void sub_22C4FCF6C()
{
  sub_22C36BA7C();
  sub_22C37E140();
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C377D60();
  v4 = sub_22C3A5908(&qword_27D9BD8B0, &qword_22C919AA8);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  sub_22C50B41C();
  v6 = type metadata accessor for DynamicEnumeration(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C50B438();
  sub_22C50870C();
  if (v8)
  {
    goto LABEL_7;
  }

  if ((sub_22C5085D8(v1) & 1) == 0)
  {
    sub_22C5089A0();
    goto LABEL_7;
  }

  sub_22C36EC8C();
  sub_22C4BB014(v9, v10);
  sub_22C369A54(v2);
  if (v11)
  {
    sub_22C36DD28(v2, &qword_27D9BD8B0, &qword_22C919AA8);
LABEL_7:
    v12 = (v0 + *(type metadata accessor for TypeInstanceRenderer_v1_0(0) + 20));
    sub_22C374168(v12, v12[3]);
    sub_22C50B688();
    sub_22C37B9B0();
    sub_22C50B608();
    v13();
    goto LABEL_8;
  }

  sub_22C37BD80();
  sub_22C50B07C();
  sub_22C903F7C();
  v14 = sub_22C9063CC();
  v15 = sub_22C90AACC();
  if (sub_22C37B204(v15))
  {
    *sub_22C36D240() = 0;
    sub_22C3699EC();
  }

  v18 = sub_22C50B584();
  v19(v18);
  v20 = (v0 + *(type metadata accessor for TypeInstanceRenderer_v1_0(0) + 24));
  sub_22C3766E0(v20, v20[3]);
  v21 = sub_22C50B560();
  v22(v21);
  sub_22C3886E0();
  sub_22C50A6FC();
LABEL_8:
  sub_22C36CC48();
}

void sub_22C4FD1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v23;
  a20 = v24;
  v128 = v25;
  v142 = v27;
  v143 = v26;
  v28 = type metadata accessor for TypeIdentifierRenderer_v1_0(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v29);
  sub_22C3698E4();
  v135 = v30;
  sub_22C369930();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA64();
  v126[4] = v33;
  sub_22C36BA0C();
  sub_22C9063DC();
  sub_22C369824();
  v129 = v35;
  v130 = v34;
  MEMORY[0x28223BE20](v34);
  sub_22C3698E4();
  v139 = v36;
  sub_22C369930();
  MEMORY[0x28223BE20](v37);
  sub_22C36BA64();
  v127 = v38;
  sub_22C36BA0C();
  sub_22C90952C();
  sub_22C369824();
  v137 = v40;
  v138 = v39;
  MEMORY[0x28223BE20](v39);
  sub_22C3698A8();
  v136 = v41;
  sub_22C36BA0C();
  v42 = sub_22C90998C();
  v43 = sub_22C36A7A4(v42, &a18);
  v132 = v44;
  MEMORY[0x28223BE20](v43);
  sub_22C3698A8();
  v131 = v45;
  sub_22C36BA0C();
  v141 = sub_22C90077C();
  sub_22C369824();
  v47 = v46;
  MEMORY[0x28223BE20](v48);
  sub_22C369838();
  sub_22C37FDDC();
  v140 = sub_22C908A8C();
  sub_22C369824();
  v50 = v49;
  MEMORY[0x28223BE20](v51);
  sub_22C369838();
  v52 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  sub_22C369914(v52);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v53);
  sub_22C38B184();
  v54 = sub_22C90947C();
  sub_22C369824();
  v133 = v55;
  MEMORY[0x28223BE20](v56);
  sub_22C369ABC();
  sub_22C50B4C8();
  MEMORY[0x28223BE20](v57);
  sub_22C50B40C();
  v126[2] = v28;
  v58 = sub_22C908B2C();
  MEMORY[0x2318B6010](v58);
  v134 = v21;
  sub_22C908B1C();
  (*(v47 + 8))(v22, v141);
  v59 = v50 + 8;
  v60 = sub_22C50B554();
  v61(v60);
  sub_22C36C640(v20, 0, 1, v54);
  v62 = sub_22C371530();
  v63(v62);
  v64 = sub_22C50B4E8();
  v65(v64);
  v66 = sub_22C3726C4();
  if (v67(v66) == *MEMORY[0x277D72B48])
  {
    v68 = sub_22C3726C4();
    v69(v68);
    sub_22C379FC8();
    sub_22C50B63C();
    v70();
    sub_22C3766E0(v134, v134[3]);
    v71 = sub_22C37E858();
    v72(v71);
    v73 = sub_22C37186C();
    v74(v73);
    v75 = sub_22C441720();
    v76(v75);
    goto LABEL_13;
  }

  v77 = *(v133 + 8);
  v78 = sub_22C441720();
  v77(v78);
  v79 = sub_22C3726C4();
  v77(v79);
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v136);
  v80 = sub_22C37BD80();
  v82 = v81(v80);
  if (v82 == *MEMORY[0x277D72D50])
  {
    v83 = sub_22C3728B8();
    v84(v83);
LABEL_12:
    sub_22C50B300();
    goto LABEL_13;
  }

  if (v82 == *MEMORY[0x277D72D30])
  {
    v85 = sub_22C3728B8();
    v86(v85);
    v87 = v127;
    sub_22C903F7C();
    sub_22C3728A0();
    sub_22C50A6A4();
    v88 = sub_22C9063CC();
    v89 = sub_22C90AACC();
    if (sub_22C50B484(v89))
    {
      v90 = sub_22C36FB44();
      v144 = sub_22C370060();
      sub_22C38BA0C(4.8149e-34);
      sub_22C50A6A4();
      sub_22C90A1AC();
      sub_22C50B42C();
      sub_22C50A6FC();
      v91 = sub_22C36CA88();
      sub_22C36F9F4(v91, v92, v93);
      sub_22C50B6EC();
      *(v90 + 4) = v59;
      sub_22C37441C(&dword_22C366000, v94, v95, "%s .builtin: Unsupported type in action");
      sub_22C38652C();
      sub_22C37E124();
    }

    else
    {

      sub_22C36BE0C();
      sub_22C50A6FC();
    }

    (*(v129 + 8))(v87, v130);
    goto LABEL_12;
  }

  if (v82 == *MEMORY[0x277D72D28])
  {
    v96 = sub_22C37BD80();
    v97(v96);
    v98 = *(*v136 + 16);
    v99 = *(*v136 + 24);
    v100 = sub_22C374168(v134 + 10, v134[13]);
    v101 = MEMORY[0x28223BE20](v100);
    v126[-4] = v98;
    v126[-3] = v99;
    v126[-2] = v128;
    v126[-1] = v101;
    v102 = sub_22C372164();
    sub_22C4FB170(v102, v103, v104, v105, v106);
    v107 = sub_22C90A28C();
    v109 = v108;

    v144 = v107;
    v145 = v109;

    v110 = sub_22C37335C();
    MEMORY[0x2318B7850](v110);

    v111 = v144;
    v112 = v145;
    sub_22C36A83C();
    v113 = swift_allocObject();
    *(v113 + 16) = v111;
    *(v113 + 24) = v112;

    v114 = v142;
    *v142 = v113;
    sub_22C386CA8(v114);
    *(v115 + 40) = 0;
  }

  else
  {
    sub_22C903F7C();
    sub_22C3728A0();
    sub_22C50A6A4();
    v116 = sub_22C9063CC();
    v117 = sub_22C90AACC();
    if (sub_22C50B484(v117))
    {
      v118 = sub_22C36FB44();
      v143 = sub_22C370060();
      v144 = v143;
      sub_22C38BA0C(4.8149e-34);
      sub_22C50A6A4();
      sub_22C90A1AC();
      sub_22C50B42C();
      sub_22C36FBFC();
      sub_22C50A6FC();
      v119 = sub_22C36CA88();
      sub_22C36F9F4(v119, v120, v121);
      sub_22C50B6EC();
      *(v118 + 4) = v59;
      sub_22C37441C(&dword_22C366000, v122, v123, "%s unknown: Unsupported type in action");
      sub_22C36FF94(v143);
      sub_22C3699EC();
      sub_22C37E124();
    }

    else
    {

      sub_22C36BE0C();
      sub_22C50A6FC();
    }

    (*(v129 + 8))(v139, v130);
    sub_22C50B300();
    v124 = sub_22C3728B8();
    v125(v124);
  }

LABEL_13:
  sub_22C36CC48();
}

void sub_22C4FDAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v23;
  a20 = v24;
  v152 = v25;
  v166 = v27;
  v167 = v26;
  v28 = type metadata accessor for TypeIdentifierRenderer_v1_0(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v29);
  sub_22C3698E4();
  v163 = v30;
  sub_22C369930();
  MEMORY[0x28223BE20](v31);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v32);
  sub_22C36BA64();
  sub_22C3698F8(v33);
  sub_22C9063DC();
  sub_22C369824();
  v150 = v35;
  v151 = v34;
  MEMORY[0x28223BE20](v34);
  sub_22C3698E4();
  v164 = v36;
  sub_22C369930();
  MEMORY[0x28223BE20](v37);
  sub_22C36BA64();
  sub_22C3698F8(v38);
  sub_22C9094EC();
  sub_22C369824();
  v154 = v40;
  v155 = v39;
  MEMORY[0x28223BE20](v39);
  sub_22C3698A8();
  v153 = v41;
  sub_22C36BA0C();
  sub_22C90952C();
  sub_22C369824();
  v159 = v42;
  v160 = v43;
  MEMORY[0x28223BE20](v42);
  sub_22C3698A8();
  v161 = v44;
  sub_22C36BA0C();
  v45 = sub_22C90998C();
  v46 = sub_22C36A7A4(v45, &a18);
  v149[6] = v47;
  MEMORY[0x28223BE20](v46);
  sub_22C3698A8();
  sub_22C3698F8(v48);
  v49 = sub_22C90947C();
  sub_22C369824();
  v158 = v50;
  MEMORY[0x28223BE20](v51);
  sub_22C3698E4();
  v156 = v52;
  sub_22C369930();
  MEMORY[0x28223BE20](v53);
  sub_22C36BA64();
  v157 = v54;
  sub_22C36BA0C();
  v162 = sub_22C90077C();
  sub_22C369824();
  v56 = v55;
  MEMORY[0x28223BE20](v57);
  sub_22C369838();
  sub_22C50B3FC();
  sub_22C908A8C();
  sub_22C369824();
  v59 = v58;
  MEMORY[0x28223BE20](v60);
  sub_22C377D60();
  v61 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  v62 = sub_22C369914(v61);
  MEMORY[0x28223BE20](v62);
  sub_22C369ABC();
  sub_22C3804A4();
  MEMORY[0x28223BE20](v63);
  v65 = v149 - v64;
  v149[2] = v28;
  v66 = sub_22C908B2C();
  MEMORY[0x2318B6010](v66);
  v165 = v20;
  v67 = v65;
  sub_22C908B1C();
  (*(v56 + 8))(v21, v162);
  v68 = v59 + 8;
  v69 = sub_22C36BE34();
  v70(v69);
  sub_22C36C640(v65, 0, 1, v49);
  sub_22C36FC74();
  sub_22C3A7214();
  sub_22C36D0A8(v22, 1, v49);
  if (v71)
  {
    sub_22C36DD28(v22, &qword_27D9BC3B0, &unk_22C912AF0);
    v72 = v164;
  }

  else
  {
    v74 = v157;
    v73 = v158;
    v75 = sub_22C36D29C();
    v76(v75);
    v77 = sub_22C36BC58();
    v78(v77);
    v79 = sub_22C36EC6C();
    v81 = v80(v79);
    v82 = v163;
    v72 = v164;
    if (v81 == *MEMORY[0x277D72B48])
    {
      v83 = sub_22C36EC6C();
      v84(v83);
      sub_22C38169C();
      v85 = sub_22C50B3B4();
      v86 = v149[7];
      v87(v85);
      sub_22C374168(v165, v165[3]);
      v88 = sub_22C37E858();
      v89(v88);
      (*(v68 + 8))(v82, v86);
      v90 = sub_22C37BD80();
      v91(v90);
      sub_22C36DD28(v67, &qword_27D9BC3B0, &unk_22C912AF0);
      goto LABEL_20;
    }

    v92 = *(v73 + 8);
    v92(v74, v49);
    v93 = sub_22C36EC6C();
    (v92)(v93);
  }

  v94 = v161;
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v161);
  v96 = v159;
  v95 = v160;
  v97 = sub_22C383CCC();
  v99 = v98(v97);
  if (v99 == *MEMORY[0x277D72D50])
  {
    v100 = sub_22C383CCC();
    v101(v100);
    v102 = sub_22C50B6D4();
    v103 = v153;
    (*(v154 + 16))(v153, v102, v155);
    v104 = v165[8];
    v105 = v165[9];
    sub_22C3766E0(v165 + 5, v104);
    (*(v105 + 8))(v103, v104, v105);
    v106 = sub_22C37186C();
    v107(v106);
    sub_22C36DD28(v67, &qword_27D9BC3B0, &unk_22C912AF0);
  }

  else if (v99 == *MEMORY[0x277D72D30])
  {
    v108 = sub_22C383CCC();
    v109(v108);
    sub_22C37443C();
    sub_22C903F7C();
    sub_22C3728A0();
    sub_22C50A6A4();
    v110 = sub_22C9063CC();
    v111 = sub_22C90AACC();
    if (sub_22C50B484(v111))
    {
      v112 = sub_22C36FB44();
      v168 = sub_22C370060();
      sub_22C38BA0C(4.8149e-34);
      sub_22C50A6A4();
      sub_22C90A1AC();
      sub_22C50B42C();
      sub_22C50A6FC();
      v113 = sub_22C36CA88();
      sub_22C36F9F4(v113, v114, v115);
      sub_22C50B6EC();
      *(v112 + 4) = v68;
      sub_22C37441C(&dword_22C366000, v116, v117, "%s .builtin: Unsupported type in action");
      sub_22C38652C();
      sub_22C37E124();
    }

    else
    {

      sub_22C36BE0C();
      sub_22C50A6FC();
    }

    (*(v150 + 8))(v96, v151);
    sub_22C36DD28(v67, &qword_27D9BC3B0, &unk_22C912AF0);
    sub_22C50B300();
  }

  else if (v99 == *MEMORY[0x277D72D28])
  {
    v118 = sub_22C383CCC();
    v119(v118);
    v120 = *v94;
    v121 = *(v120 + 16);
    v122 = *(v120 + 24);
    v123 = sub_22C374168(v165 + 10, v165[13]);
    v124 = MEMORY[0x28223BE20](v123);
    v149[-4] = v121;
    v149[-3] = v122;
    v149[-2] = v152;
    v149[-1] = v124;
    v125 = sub_22C37170C();
    sub_22C4FB170(v125, v126, v127, v128, v129);
    v130 = sub_22C90A28C();
    v132 = v131;

    sub_22C36FBFC();
    sub_22C90A28C();
    sub_22C388CA0();
    v168 = v130;
    v169 = v132;

    v133 = sub_22C36FBFC();
    MEMORY[0x2318B7850](v133);

    v134 = v168;
    v135 = v169;
    sub_22C36DD28(v67, &qword_27D9BC3B0, &unk_22C912AF0);
    sub_22C36A83C();
    v136 = swift_allocObject();
    *(v136 + 16) = v134;
    *(v136 + 24) = v135;

    v137 = v166;
    *v166 = v136;
    sub_22C386CA8(v137);
    *(v138 + 40) = 0;
  }

  else
  {
    sub_22C903F7C();
    sub_22C3728A0();
    sub_22C50A6A4();
    v139 = sub_22C9063CC();
    v140 = sub_22C90AACC();
    if (sub_22C50B484(v140))
    {
      v141 = sub_22C36FB44();
      v168 = sub_22C370060();
      sub_22C38BA0C(4.8149e-34);
      sub_22C50A6A4();
      v142 = sub_22C90A1AC();
      v144 = v143;
      sub_22C50A6FC();
      v145 = v142;
      v95 = v160;
      sub_22C36F9F4(v145, v144, &v168);
      sub_22C50B6EC();
      *(v141 + 4) = v68;
      sub_22C37441C(&dword_22C366000, v146, v147, "%s unknown: Unsupported type in action");
      sub_22C38652C();
      sub_22C37E124();
    }

    else
    {

      sub_22C36BE0C();
      sub_22C50A6FC();
    }

    (*(v150 + 8))(v72, v151);
    sub_22C36DD28(v67, &qword_27D9BC3B0, &unk_22C912AF0);
    v148 = sub_22C50B300();
    (*(v95 + 8))(v161, v96, v148);
  }

LABEL_20:
  sub_22C36CC48();
}

void sub_22C4FE564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v27 = v26;
  v109 = v28;
  v113 = sub_22C909A3C();
  sub_22C369824();
  v115 = v29;
  MEMORY[0x28223BE20](v30);
  sub_22C3698A8();
  v112 = v31;
  sub_22C36BA0C();
  v32 = sub_22C909A5C();
  v33 = sub_22C36A7A4(v32, &a9);
  MEMORY[0x28223BE20](v33);
  sub_22C3698A8();
  sub_22C3698F8(v34);
  v35 = sub_22C90998C();
  sub_22C369824();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  sub_22C3698A8();
  sub_22C3698F8(v39);
  v40 = sub_22C9063DC();
  v41 = sub_22C36A7A4(v40, &a16);
  MEMORY[0x28223BE20](v41);
  sub_22C3698A8();
  v111 = v42;
  v43 = sub_22C3A5908(&qword_27D9BC558, &qword_22C9139B8);
  v44 = sub_22C369914(v43);
  MEMORY[0x28223BE20](v44);
  sub_22C369ABC();
  sub_22C50B4C8();
  MEMORY[0x28223BE20](v45);
  sub_22C50B40C();
  sub_22C374168((v25 + 40), *(v25 + 64));
  v46 = sub_22C36BA00();
  v102 = v47(v46);
  v107 = v48;
  sub_22C4FEDA0(v27, v21);
  type metadata accessor for EnumerationDefinitionPromptRenderer_v1_0(0);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C901EDC();
  v108 = v21;
  sub_22C36EC6C();
  sub_22C3A7214();
  v49 = sub_22C36D0A8(v22, 1, v35);
  if (v50)
  {
    v53 = v37;
    v51 = sub_22C36DD28(v22, &qword_27D9BC558, &qword_22C9139B8);
    v52 = MEMORY[0x2318B6E50](v51);
  }

  else
  {
    v52 = MEMORY[0x2318B6E50](v49);
    v53 = v37;
    (*(v37 + 8))(v22, v35);
  }

  v54 = sub_22C812574(*&v116[0], v52);
  v114 = v55;
  v57 = v56;
  v59 = v58;
  v60 = *(MEMORY[0x2318B6E50]() + 16);

  v61 = v59 >> 1;
  v110 = v59;
  if (*&v116[0] < v60)
  {
    sub_22C903F7C();
    v62 = v53;
    (*(v53 + 16))(v105, v27, v35);
    swift_unknownObjectRetain_n();
    v63 = sub_22C9063CC();
    v64 = sub_22C90AACC();
    if (os_log_type_enabled(v63, v64))
    {
      v99 = v63;
      v65 = sub_22C383050();
      v98 = sub_22C370060();
      *&v116[0] = v98;
      *v65 = 136315394;
      sub_22C90996C();
      v100 = sub_22C909A4C();
      v67 = v66;
      sub_22C36FB04();
      v68();
      v69 = sub_22C38644C();
      v70(v69);
      v71 = sub_22C36F9F4(v100, v67, v116);

      *(v65 + 4) = v71;
      *(v65 + 12) = 2048;
      swift_unknownObjectRelease();
      if (__OFSUB__(v61, v57))
      {
LABEL_26:
        __break(1u);
        return;
      }

      *(v65 + 14) = v61 - v57;
      swift_unknownObjectRelease();
      _os_log_impl(&dword_22C366000, v99, v64, "Enum cases for %s truncated to first %ld cases", v65, 0x16u);
      sub_22C36FF94(v98);
      sub_22C3699EC();
      sub_22C3699EC();

      sub_22C36FB04();
      v73 = v111;
    }

    else
    {

      swift_unknownObjectRelease_n();
      (*(v62 + 8))(v105, v35);
      sub_22C36FB04();
      v73 = v111;
    }

    v72(v73);
    v59 = v110;
  }

  sub_22C378AB0(v25, v120);
  v74 = v61 - v57;
  if (__OFSUB__(v61, v57))
  {
    goto LABEL_24;
  }

  v75 = MEMORY[0x277D84F90];
  if (v74)
  {
    v119 = MEMORY[0x277D84F90];
    sub_22C50B694();
    if (v74 < 0)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v106 = v54;
    v75 = v119;
    v104 = v57;
    while (v57 < v61)
    {
      (*(v115 + 16))(v112, v114 + *(v115 + 72) * v57, v113);
      v76 = v121;
      v77 = v122;
      sub_22C3766E0(v120, v121);
      (*(v77 + 16))(v116, v112, v76, v77);
      (*(v115 + 8))(v112, v113);
      v78 = v116[0];
      v79 = v116[1];
      v80 = v117;
      v81 = v118;
      v119 = v75;
      v83 = *(v75 + 16);
      v82 = *(v75 + 24);
      if (v83 >= v82 >> 1)
      {
        v85 = sub_22C369AB0(v82);
        v103 = v86;
        v101 = v87;
        sub_22C3B68D4(v85, v83 + 1, 1);
        v79 = v101;
        v78 = v103;
        v75 = v119;
      }

      *(v75 + 16) = v83 + 1;
      v84 = v75 + 48 * v83;
      *(v84 + 32) = v78;
      *(v84 + 48) = v79;
      *(v84 + 64) = v80;
      *(v84 + 72) = v81;
      if (v61 == ++v57)
      {
        v54 = v106;
        v59 = v110;
        v57 = v104;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
  sub_22C36FF94(v120);
  v88 = sub_22C47F410(v75);
  v90 = v89;

  if (v90)
  {
    sub_22C36DD28(v108, &qword_27D9BC558, &qword_22C9139B8);
    swift_unknownObjectRelease();

    v91 = v88;
  }

  else
  {
    v120[0] = v88;
    v92 = sub_22C50B444();
    sub_22C50B070(v92, v93);
    sub_22C4FF6CC(v120, v54, v114, v57, v59, v116);
    v94 = sub_22C50B444();
    sub_22C396BF8(v94, v95);
    v96 = sub_22C50B444();
    sub_22C396BF8(v96, v97);

    sub_22C500184(v116, v102, v107, v120);

    v91 = v120[0];

    swift_unknownObjectRelease();

    sub_22C36DD28(v108, &qword_27D9BC558, &qword_22C9139B8);
  }

  *v109 = v91;
  *(v109 + 8) = 0;
  *(v109 + 24) = 0;
  *(v109 + 32) = 0;
  *(v109 + 16) = 0;
  *(v109 + 40) = v90 & 1;
  sub_22C36CC48();
}

uint64_t sub_22C4FEDA0@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v61 = a1;
  v69 = a2;
  v2 = sub_22C9063DC();
  v67 = *(v2 - 8);
  v68 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v66 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v55 = &v51 - v5;
  v62 = sub_22C908A8C();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v57 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C90952C();
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  v56 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9BC3B0, &unk_22C912AF0);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = &v51 - v10;
  v70 = sub_22C90998C();
  v54 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C3A5908(&qword_27D9BD820, &unk_22C9195C0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v51 - v13;
  v15 = sub_22C90077C();
  v63 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v64 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C3A5908(&qword_27D9BD818, &qword_22C9195B8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v51 - v18;
  v20 = sub_22C908AEC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EnumerationDefinitionPromptRenderer_v1_0(0);
  sub_22C3A7214();
  if (sub_22C370B74(v19, 1, v20) == 1)
  {
    v24 = &qword_27D9BD818;
    v25 = &qword_22C9195B8;
    v26 = v19;
LABEL_6:
    sub_22C36DD28(v26, v24, v25);
LABEL_7:
    v34 = v70;
    v35 = v66;
    sub_22C903F7C();
    v36 = sub_22C9063CC();
    v37 = sub_22C90AADC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22C366000, v36, v37, "No localized enum definition", v38, 2u);
      MEMORY[0x2318B9880](v38, -1, -1);
    }

    (*(v67 + 8))(v35, v68);
    v39 = 1;
    v40 = v69;
    return sub_22C36C640(v40, v39, 1, v34);
  }

  (*(v21 + 32))(v23, v19, v20);
  sub_22C3A7214();
  v27 = v23;
  if (sub_22C370B74(v14, 1, v15) == 1)
  {
    (*(v21 + 8))(v23, v20);
    v24 = &qword_27D9BD820;
    v25 = &unk_22C9195C0;
    v26 = v14;
    goto LABEL_6;
  }

  v52 = v21;
  v28 = v63;
  v29 = v15;
  (*(v63 + 32))(v64, v14, v15);
  v30 = v56;
  sub_22C90994C();
  v31 = v60;
  v32 = v57;
  v33 = v62;
  (*(v60 + 104))(v57, *MEMORY[0x277D1E8C0], v62);
  v61 = v27;
  sub_22C908B1C();
  (*(v31 + 8))(v32, v33);
  (*(v58 + 8))(v30, v59);
  v42 = sub_22C90947C();
  v43 = v65;
  sub_22C36C640(v65, 0, 1, v42);
  v44 = *(v42 - 8);
  if ((*(v44 + 88))(v43, v42) != *MEMORY[0x277D72B48])
  {
    (*(v28 + 8))(v64, v29);
    (*(v52 + 8))(v61, v20);
    (*(v44 + 8))(v43, v42);
    goto LABEL_7;
  }

  v66 = v29;
  (*(v44 + 96))(v43, v42);
  v45 = v53;
  v46 = *(v54 + 32);
  v46(v53, v43, v70);
  v47 = v55;
  sub_22C903F7C();
  v48 = sub_22C9063CC();
  v49 = sub_22C90AACC();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_22C366000, v48, v49, "Returning localized enum definition", v50, 2u);
    MEMORY[0x2318B9880](v50, -1, -1);
  }

  (*(v67 + 8))(v47, v68);
  (*(v63 + 8))(v64, v66);
  (*(v52 + 8))(v61, v20);
  v40 = v69;
  v34 = v70;
  v46(v69, v45, v70);
  v39 = 0;
  return sub_22C36C640(v40, v39, 1, v34);
}

uint64_t sub_22C4FF6CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v60 = a3;
  v53 = a6;
  v10 = sub_22C3A5908(&qword_27D9BD918, &unk_22C919B08);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (v52 - v11);
  v66 = sub_22C3A5908(&qword_27D9BB6D0, &qword_22C90FAE0);
  v52[2] = *(v66 - 8);
  v13 = MEMORY[0x28223BE20](v66);
  v52[3] = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v52[1] = v52 - v15;
  v68 = sub_22C909A3C();
  v16 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_22C3A5908(&qword_27D9BD920, &qword_22C919B18);
  MEMORY[0x28223BE20](v59);
  v65 = v52 - v19;
  v20 = *a1;
  v21 = *a1 + 64;
  v22 = a5 >> 1;
  v67 = v16 + 16;
  v61 = v16;
  v58 = (v16 + 32);
  v52[4] = a2;
  swift_unknownObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v23 = 0;
  v24 = 40;
  v54 = MEMORY[0x277D84F90];
  v56 = v20;
  v57 = v18;
  v52[0] = v21;
  v55 = a5 >> 1;
LABEL_2:
  v25 = (v21 + 40 * v23);
  while (1)
  {
    if (v22 == a4)
    {

      swift_unknownObjectRelease();
LABEL_16:

      swift_unknownObjectRelease();
      sub_22C8D5674();

      v69 = 0;
      *&v70 = MEMORY[0x277D84F90];
      *(&v70 + 1) = MEMORY[0x277D84F90];

      sub_22C50A750(v48, sub_22C52DE20, 0, &v69);

      v50 = v70;
      v51 = v53;
      *v53 = v69;
      *(v51 + 1) = v50;
      return result;
    }

    if (a4 >= v22)
    {
      break;
    }

    v26 = *(v61 + 16);
    v26(v18, v60 + *(v61 + 72) * a4, v68);
    v27 = *(v20 + 16);
    if (v23 == v27)
    {

      swift_unknownObjectRelease();
      (*(v61 + 8))(v18, v68);
      goto LABEL_16;
    }

    if (v23 >= v27)
    {
      goto LABEL_18;
    }

    v63 = v23;
    v64 = a4;
    v29 = *(v25 - 1);
    v62 = *v25;
    v28 = v62;
    v30 = *(v25 - 3);
    v31 = *(v25 - 2);
    v24 = *(v25 - 4);
    v32 = &v65[*(v59 + 48)];
    v33 = v68;
    (*v58)();
    *v32 = v24;
    v32[1] = v30;
    v32[2] = v31;
    v32[3] = v29;
    v32[4] = v28;
    v34 = v12 + *(v66 + 48);
    *v12 = v24;
    v35 = v12;
    v36 = &v34[*(sub_22C3A5908(&qword_27D9BB0F0, &qword_22C90D990) + 48)];
    v37 = v34;
    v38 = v65;
    v26(v37, v65, v33);
    *v36 = v30;
    v36[1] = v31;
    v39 = v62;
    v36[2] = v29;
    v36[3] = v39;
    v12 = v35;
    v40 = v35;
    v41 = v66;
    sub_22C36C640(v40, 0, 1, v66);

    sub_22C456C94(v30, v31, v29);

    sub_22C456C94(v30, v31, v29);
    sub_22C36DD28(v38, &qword_27D9BD920, &qword_22C919B18);
    if (sub_22C370B74(v12, 1, v41) != 1)
    {
      sub_22C407C2C();
      sub_22C407C2C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v64;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C59322C();
        v54 = v46;
      }

      v20 = v56;
      v18 = v57;
      v44 = *(v54 + 16);
      v45 = v63;
      v24 = 40;
      if (v44 >= *(v54 + 24) >> 1)
      {
        sub_22C59322C();
        v54 = v47;
      }

      v23 = v45 + 1;
      a4 = v43 + 1;
      *(v54 + 16) = v44 + 1;
      sub_22C407C2C();
      v21 = v52[0];
      v22 = v55;
      goto LABEL_2;
    }

    sub_22C36DD28(v12, &qword_27D9BD918, &unk_22C919B08);
    v25 += 5;
    v23 = v63 + 1;
    a4 = v64 + 1;
    v20 = v56;
    v18 = v57;
    v22 = v55;
  }

  __break(1u);
LABEL_18:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22C4FFD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v56 = sub_22C3A5908(&qword_27D9BB0F0, &qword_22C90D990);
  v3 = MEMORY[0x28223BE20](v56);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v47 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v47 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  v14 = sub_22C9063DC();
  v58 = *(v14 - 8);
  v59 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C903F7C();
  v60 = a1;
  sub_22C3A7214();
  sub_22C3A7214();
  v57 = v16;
  v17 = sub_22C9063CC();
  v18 = sub_22C90AADC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v54 = v18;
    v20 = v19;
    v52 = v19;
    v55 = swift_slowAlloc();
    v62 = v55;
    *v20 = 136315394;
    sub_22C3A7214();
    v53 = v17;
    v21 = v56;
    v22 = *(v56 + 48);
    v23 = &v8[v22];
    v24 = &v5[v22];
    v25 = sub_22C909A3C();
    v26 = *(v25 - 8);
    v27 = *(v26 + 32);
    v49 = v11;
    v50 = v27;
    v51 = v26 + 32;
    v28 = *v23;
    v47 = *(v23 + 1);
    v48 = v28;
    v27(v5, v8, v25);
    v29 = v47;
    *v24 = v48;
    *(v24 + 1) = v29;
    v30 = sub_22C90A1AC();
    v32 = v31;
    sub_22C36DD28(v13, &qword_27D9BB0F0, &qword_22C90D990);
    v33 = sub_22C36F9F4(v30, v32, &v62);

    v34 = v52;
    *(v52 + 4) = v33;
    *(v34 + 12) = 2080;
    v35 = v49;
    sub_22C3A7214();
    v36 = *(v21 + 48);
    v37 = &v5[v36];
    v38 = *&v8[v36];
    v47 = *&v8[v36 + 16];
    v48 = v38;
    v50(v5, v8, v25);
    v39 = v47;
    *v37 = v48;
    *(v37 + 1) = v39;
    v40 = sub_22C90A1AC();
    v42 = v41;
    sub_22C36DD28(v35, &qword_27D9BB0F0, &qword_22C90D990);
    v43 = sub_22C36F9F4(v40, v42, &v62);

    *(v34 + 14) = v43;
    v44 = v53;
    _os_log_impl(&dword_22C366000, v53, v54, "❗️ Folding enum cases, but identifier has already been seen.\nTaking old value: %s\nover new value: %s", v34, 0x16u);
    v45 = v55;
    swift_arrayDestroy();
    MEMORY[0x2318B9880](v45, -1, -1);
    MEMORY[0x2318B9880](v34, -1, -1);
  }

  else
  {

    sub_22C36DD28(v11, &qword_27D9BB0F0, &qword_22C90D990);
    sub_22C36DD28(v13, &qword_27D9BB0F0, &qword_22C90D990);
  }

  (*(v58 + 8))(v57, v59);
  return sub_22C3A7214();
}

uint64_t sub_22C500184@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_22C4F60F4(*a1, a1[1], a1[2]);
  v8 = sub_22C47D738(10, 0xE100000000000000, v7);

  v9 = swift_allocObject();
  *(v9 + 16) = 0x207373616C63;
  *(v9 + 24) = 0xE600000000000000;
  sub_22C591324();
  v11 = v10;
  v12 = *(v10 + 16);
  v13 = v12 + 1;
  if (v12 >= *(v10 + 24) >> 1)
  {
    sub_22C591324();
    v11 = v25;
  }

  *(v11 + 16) = v13;
  *(v11 + 8 * v12 + 32) = v9;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = *(v11 + 24);
  v16 = v12 + 2;

  if ((v12 + 2) > (v15 >> 1))
  {
    sub_22C591324();
    v11 = v26;
  }

  *(v11 + 16) = v16;
  *(v11 + 8 * v13 + 32) = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = 0xA3A296D756E4528;
  *(v17 + 24) = 0xE800000000000000;
  v18 = v12 + 3;
  if ((v12 + 3) > *(v11 + 24) >> 1)
  {
    sub_22C591324();
    v11 = v27;
  }

  *(v11 + 16) = v18;
  *(v11 + 8 * v16 + 32) = v17;
  v19 = v12 + 4;
  if ((v12 + 4) > *(v11 + 24) >> 1)
  {
    sub_22C591324();
    v11 = v28;
  }

  *(v11 + 16) = v19;
  *(v11 + 8 * v18 + 32) = v8;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0xE000000000000000;
  v21 = *(v11 + 24);

  if ((v12 + 5) > (v21 >> 1))
  {
    sub_22C591324();
    v11 = v29;
  }

  *(v11 + 16) = v12 + 5;
  *(v11 + 8 * v19 + 32) = v20;
  v22 = sub_22C3DB9B0(v11);

  v23 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  result = swift_allocObject();
  *(result + 16) = v22;
  *(v23 + 16) = result;
  *a4 = v23 | 0x6000000000000000;
  return result;
}

uint64_t sub_22C50045C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22C3A5908(&qword_27D9BD910, &unk_22C91A410);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 538976288;
  *(v7 + 24) = 0xE400000000000000;
  sub_22C591324();
  v9 = v8;
  v10 = *(v8 + 16);
  v11 = *(v8 + 24) >> 1;
  v12 = v10 + 1;
  if (v11 <= v10)
  {
    sub_22C591324();
    v9 = v32;
    v11 = *(v32 + 24) >> 1;
  }

  *(v9 + 16) = v12;
  *(v9 + 8 * v10 + 32) = v7;
  v13 = *a1;
  v14 = v10 + 2;
  if (v11 < (v10 + 2))
  {
    sub_22C591324();
    v9 = v33;
  }

  *(v9 + 16) = v14;
  *(v9 + 8 * v12 + 32) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = 2112800;
  *(v15 + 24) = 0xE300000000000000;
  v16 = *(v9 + 24);
  v17 = v10 + 3;

  if (v17 > (v16 >> 1))
  {
    sub_22C591324();
    v9 = v34;
  }

  *(v9 + 16) = v17;
  *(v9 + 8 * v14 + 32) = v15;
  sub_22C3A7214();

  v18 = &v6[*(v4 + 48)];
  v19 = sub_22C3A5908(&qword_27D9BB0F0, &qword_22C90D990);
  sub_22C456D48(*&v18[*(v19 + 48)], *&v18[*(v19 + 48) + 8], *&v18[*(v19 + 48) + 16]);
  sub_22C909A0C();
  v20 = sub_22C909A3C();
  (*(*(v20 - 8) + 8))(v18, v20);
  v21 = sub_22C90A2AC();
  v23 = v22;

  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v23;
  v25 = *(v9 + 16);
  v26 = *(v9 + 24);

  if (v25 >= v26 >> 1)
  {
    sub_22C591324();
    v9 = v35;
  }

  *(v9 + 16) = v25 + 1;
  *(v9 + 8 * v25 + 32) = v24;

  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0xE000000000000000;
  v28 = *(v9 + 16);
  if (v28 >= *(v9 + 24) >> 1)
  {
    sub_22C591324();
    v9 = v36;
  }

  *(v9 + 16) = v28 + 1;
  *(v9 + 8 * v28 + 32) = v27;
  v29 = sub_22C3DB9B0(v9);

  v30 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  result = swift_allocObject();
  *(result + 16) = v29;
  *(v30 + 16) = result;
  *a2 = v30 | 0x6000000000000000;
  return result;
}

void sub_22C500808(uint64_t a1@<X8>)
{
  sub_22C3766E0((v1 + 40), *(v1 + 64));
  v3 = sub_22C36EBF0();
  v5 = v4(v3);
  v7 = v6;
  v8 = sub_22C36EBF0();
  sub_22C4FE564(v8, v9, v10, v11, v12, v13, v14, v15, v26, v27, v28, v29, v30, v31, v32, v34, v36, v38, v40, v42);
  v16 = v33;
  if (v43)
  {
  }

  else
  {
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F870;
    sub_22C36A83C();
    v18 = swift_allocObject();
    *(v18 + 16) = v5;
    *(v18 + 24) = v7;
    *(inited + 32) = v18;
    sub_22C36D2A8();
    v19 = swift_allocObject();
    sub_22C37B2A4(v19, 5);
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    sub_22C369AEC();
    v20 = swift_allocObject();
    *(v20 + 16) = v33;
    *(v19 + 32) = v20;
    *(inited + 40) = v19 | 0xA000000000000000;
    v21 = sub_22C37335C();
    sub_22C456C94(v21, v22, v39);

    v23 = sub_22C3DB9B0(inited);
    swift_setDeallocating();
    sub_22C58FFB0();
    sub_22C369AEC();
    v24 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    sub_22C369AEC();
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v24 + 16) = v25;
    sub_22C456CE4(v33, v35, v37, v39, v41, 0);
    v16 = v24 | 0x6000000000000000;
  }

  *a1 = v16;
  *(a1 + 8) = v35;
  *(a1 + 16) = v37;
  *(a1 + 24) = v39;
  *(a1 + 32) = v41;
  *(a1 + 40) = v43;
}

void *sub_22C5009F4(uint64_t a1, uint64_t a2)
{
  sub_22C3704C4();
  sub_22C90952C();
  sub_22C369824();
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v6 = sub_22C374168(v3, v3[3]);
  sub_22C90994C();
  sub_22C9094BC();
  v7 = sub_22C36EBF0();
  v8(v7);
  v9 = sub_22C38644C();
  sub_22C4FB170(v9, v10, v11, v12, a2);
  sub_22C385D88();

  sub_22C37170C();
  sub_22C90A28C();
  sub_22C385630();

  sub_22C500B78(v2);
  v13 = sub_22C90A28C();
  v15 = v14;

  MEMORY[0x2318B7850](v13, v15);

  return v6;
}

uint64_t sub_22C500B78(uint64_t a1)
{
  v2 = sub_22C9063DC();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C9094AC();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C909A5C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C90952C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90994C();
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == *MEMORY[0x277D72D50] || v16 == *MEMORY[0x277D72D30])
  {
    (*(v13 + 8))(v15, v12);
    sub_22C90996C();
    v18 = sub_22C909A4C();
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v25 = a1;
    if (v16 == *MEMORY[0x277D72D28])
    {
      (*(v13 + 96))(v15, v12);
      v18 = *(*v15 + 32);

LABEL_11:

      return v18;
    }

    if (v16 == *MEMORY[0x277D72D18])
    {
      (*(v13 + 96))(v15, v12);
      v19 = swift_projectBox();
      v20 = v26;
      (*(v26 + 16))(v7, v19, v5);
      v18 = sub_22C90949C();
      (*(v20 + 8))(v7, v5);
      goto LABEL_11;
    }

    sub_22C903F7C();
    v21 = sub_22C9063CC();
    v22 = sub_22C90AADC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22C366000, v21, v22, "Unsupported EnumerationDefinition.identifier type found", v23, 2u);
      MEMORY[0x2318B9880](v23, -1, -1);
    }

    (*(v27 + 8))(v4, v28);
    sub_22C90996C();
    v18 = sub_22C909A4C();
    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v15, v12);
  }

  return v18;
}

double sub_22C500FEC()
{
  v2 = sub_22C3727F4();
  v3 = type metadata accessor for PromptTreeIdentifier(v2);
  sub_22C36985C();
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C50B530();
  sub_22C909A2C();
  sub_22C90A28C();
  sub_22C50B42C();

  sub_22C36CA88();
  sub_22C501204();
  v6 = v5;
  v8 = v7;

  sub_22C36A83C();
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  *v1 = v9;
  v10 = *MEMORY[0x277D1D7C8];
  v11 = sub_22C902D0C();
  sub_22C36985C();
  v13 = *(v12 + 104);
  v14 = v12 + 104;
  v13(v1, v10, v11);
  sub_22C36C640(v1, 0, 3, v11);
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  swift_storeEnumTagMultiPayload();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_22C909A2C();
  *(v15 + 24) = v16;
  *(v15 + 32) = 6;
  v17 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
  *(v1 + v17) = v15;
  v13((v1 + v17), *MEMORY[0x277D1D7E8], v11);
  sub_22C37335C();
  swift_storeEnumTagMultiPayload();
  sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  swift_allocBox();
  sub_22C381A40();
  sub_22C50A6A4();
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v18 = swift_allocBox();
  sub_22C486784();
  sub_22C36D29C();
  sub_22C50A6FC();
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v19 = swift_allocObject();
  *(v19 + 16) = v18 | 0x2000000000000000;
  *(v11 + v14) = v19;
  *v0 = v3 | 0x4000000000000000;
  *(v0 + 40) = 0;
  return sub_22C37274C();
}

void sub_22C501204()
{
  sub_22C36BA7C();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
  sub_22C369824();
  v7 = v6;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  sub_22C37FDDC();
  v9 = sub_22C3A5908(&qword_27D9BC160, &unk_22C912170);
  sub_22C369914(v9);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  v12 = v14 - v11;

  sub_22C8124CC(1, v4, v2);
  sub_22C50B4BC();
  sub_22C90306C();
  sub_22C374C34();
  sub_22C437C60();

  (*(v7 + 8))(v0, v5);
  v13 = sub_22C3A5908(&qword_27D9BC178, &unk_22C914830);
  LODWORD(v5) = sub_22C370B74(v12, 1, v13);
  sub_22C36DD28(v12, &qword_27D9BC160, &unk_22C912170);
  if (v5 == 1)
  {
  }

  else
  {
    v14[0] = 95;
    v14[1] = 0xE100000000000000;
    MEMORY[0x2318B7850](v4, v2);
  }

  sub_22C36CC48();
}

void sub_22C5013EC()
{
  sub_22C36BA7C();
  v4 = v0;
  v88 = v5;
  v7 = v6;
  v8 = type metadata accessor for DynamicEnumeration.Case(0);
  MEMORY[0x28223BE20](v8 - 8);
  sub_22C369838();
  v9 = sub_22C36BE24();
  v10 = type metadata accessor for DynamicEnumeration(v9);
  sub_22C36985C();
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  sub_22C50B438();
  v86 = sub_22C9063DC();
  sub_22C369824();
  v84 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  sub_22C50B530();
  type metadata accessor for DynamicEnumerationRenderer_v1_0(0);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C901EDC();
  v14 = v92;
  v82 = v10;
  v15 = *(v7 + *(v10 + 20));

  v16 = sub_22C36BA00();
  v90 = sub_22C8125A0(v16, v17);
  v91 = v18;
  v20 = v19;
  v83 = v21;
  v22 = v21 >> 1;
  v85 = v19;
  if (v92 >= *(v15 + 16))
  {
LABEL_7:
    sub_22C3766E0((v4 + 40), *(v4 + 64));
    v29 = sub_22C36CA88();
    v30(v29);
    v81 = *(&v92 + 1);
    v31 = v93;
    v32 = v94;
    sub_22C378AB0(v4, v97);
    v33 = v22 - v20;
    if (__OFSUB__(v22, v20))
    {
      goto LABEL_26;
    }

    v89 = v95;
    v34 = MEMORY[0x277D84F90];
    v87 = v92;
    if (v33)
    {
      v96 = MEMORY[0x277D84F90];
      sub_22C50B694();
      if (v33 < 0)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v80 = v94;
      v34 = v96;
      while (v20 < v22)
      {
        sub_22C50A6A4();
        v36 = v98;
        v35 = v99;
        sub_22C3766E0(v97, v98);
        (*(v35 + 8))(&v92, v2, v36, v35);
        sub_22C50A6FC();
        v37 = v92;
        v38 = v93;
        v39 = v94;
        v40 = v95;
        v96 = v34;
        v42 = *(v34 + 16);
        v41 = *(v34 + 24);
        if (v42 >= v41 >> 1)
        {
          v44 = sub_22C369AB0(v41);
          v79 = v45;
          v78 = v46;
          sub_22C3B68D4(v44, v42 + 1, 1);
          v38 = v78;
          v37 = v79;
          v34 = v96;
        }

        *(v34 + 16) = v42 + 1;
        v43 = v34 + 48 * v42;
        *(v43 + 32) = v37;
        *(v43 + 48) = v38;
        *(v43 + 64) = v39;
        *(v43 + 72) = v40;
        if (v22 == ++v20)
        {
          v47 = v88;
          v48 = v90;
          v32 = v80;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v47 = v88;
    v48 = v90;
LABEL_17:
    sub_22C36FF94(v97);
    v49 = sub_22C47F410(v34);
    v51 = v50;

    if (v51)
    {
      v49 = v49;
      if ((v89 & 1) == 0)
      {
        sub_22C456CE4(v87, v81, v31, *(&v31 + 1), v32, 0);
        swift_unknownObjectRelease();
LABEL_22:
        *v47 = v49;
        *(v47 + 8) = 0u;
        *(v47 + 24) = 0u;
        *(v47 + 40) = 1;
LABEL_24:
        sub_22C36CC48();
        return;
      }
    }

    else
    {
      *&v92 = v49;
      v52 = sub_22C50B444();
      sub_22C50B070(v52, v53);
      sub_22C501A48(&v92, v48, v91, v85, v83, v97);
      v54 = sub_22C50B444();
      sub_22C396BF8(v54, v55);
      v56 = sub_22C50B444();
      sub_22C396BF8(v56, v57);
      v49 = v97[0];
      if (!v89)
      {
        *&v92 = v87;
        *(&v92 + 1) = v81;
        v93 = v31;
        v94 = v32;
        v95 = v97[0];
        v58 = sub_22C50B4A0();
        sub_22C456C30(v58, v59, v60, v61, v62, v63);

        v64 = sub_22C36FC74();
        sub_22C456C94(v64, v65, *(&v31 + 1));

        v66 = sub_22C5024E4(&v92, v49);
        v67 = sub_22C50B4A0();
        sub_22C456CE4(v67, v68, v69, v70, v71, v72);

        v73 = sub_22C36FC74();
        sub_22C456D48(v73, v74, *(&v31 + 1));
        swift_unknownObjectRelease();

        v75 = *(&v93 + 1);

        v76 = sub_22C37170C();
        sub_22C456D48(v76, v77, v75);

        *v47 = v66;
        *(v47 + 8) = 0u;
        *(v47 + 24) = 0u;
        *(v47 + 40) = 0;
        goto LABEL_24;
      }
    }

    sub_22C396BF8(v49, v51 & 1);
    swift_unknownObjectRelease();
    v49 = v87;
    goto LABEL_22;
  }

  sub_22C903F7C();
  sub_22C374C34();
  sub_22C50A6A4();
  swift_unknownObjectRetain();
  v23 = sub_22C9063CC();
  v24 = sub_22C90AACC();
  v25 = v3;
  if (!sub_22C37B204(v24))
  {
    sub_22C3886E0();
    sub_22C50A6FC();

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v26 = sub_22C383050();
  *v26 = 134218240;
  if (!__OFSUB__(v22, v20))
  {
    v27 = v26;
    *(v26 + 4) = v22 - v20;
    swift_unknownObjectRelease();
    *(v27 + 12) = 2048;
    v28 = *(*(v25 + *(v82 + 20)) + 16);
    sub_22C3886E0();
    sub_22C50A6FC();
    *(v27 + 14) = v28;
    _os_log_impl(&dword_22C366000, v23, v14, "Enum cases for dynamic enumeration truncated to first %ld out of %ld cases", v27, 0x16u);
    sub_22C3699EC();

    v20 = v85;
LABEL_6:
    (*(v84 + 8))(v1, v86);
    goto LABEL_7;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_22C501A48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v98 = a4;
  v95 = a3;
  v78 = a2;
  v77 = a6;
  v8 = sub_22C3A5908(&qword_27D9BC170, &unk_22C912180);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v102 = &v76 - v13;
  v14 = sub_22C3A5908(&qword_27D9BC160, &unk_22C912170);
  MEMORY[0x28223BE20](v14 - 8);
  v86 = &v76 - v15;
  v85 = sub_22C3A5908(&qword_27D9BB110, &qword_22C90D9B0);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v87 = (&v76 - v16);
  v101 = 0;
  v83 = type metadata accessor for DynamicEnumeration.Case(0);
  v94 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_22C3A5908(&qword_27D9BD938, &qword_22C919B38);
  v19 = MEMORY[0x28223BE20](v105);
  v81 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v104 = &v76 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v93 = &v76 - v24;
  MEMORY[0x28223BE20](v23);
  v92 = &v76 - v25;
  v91 = sub_22C3A5908(&qword_27D9BD940, &qword_22C919B40);
  v26 = MEMORY[0x28223BE20](v91);
  v90 = (&v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v103 = (&v76 - v28);
  v29 = *a1;
  v30 = *(*a1 + 16);
  v31 = MEMORY[0x277D84F90];
  v89 = v8;
  if (v30)
  {
    v106 = a5;
    v107 = MEMORY[0x277D84F90];
    sub_22C3B63D4(0, v30, 0);
    v32 = v107;
    v33 = (v29 + 32);
    v34 = *(v107 + 16);
    do
    {
      v36 = *v33;
      v33 += 5;
      v35 = v36;
      v107 = v32;
      v37 = *(v32 + 24);

      if (v34 >= v37 >> 1)
      {
        sub_22C3B63D4(v37 > 1, v34 + 1, 1);
        v32 = v107;
      }

      *(v32 + 16) = v34 + 1;
      *(v32 + 8 * v34++ + 32) = v35;
      --v30;
    }

    while (v30);
    v38 = v32;
    a5 = v106;
    v31 = MEMORY[0x277D84F90];
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
  }

  v109 = v31;
  swift_unknownObjectRetain();
  sub_22C3B735C(0, 0, 0);
  v39 = v109;
  v96 = a5 >> 1;
  v79 = (v9 + 8);
  swift_unknownObjectRetain();

  v41 = 0;
  v97 = v98 - (a5 >> 1);
  v82 = v18;
  v80 = v38;
  v88 = v12;
  while (1)
  {
    if (!(v97 + v41))
    {

      swift_unknownObjectRelease();
LABEL_25:

      result = swift_unknownObjectRelease();
      *v77 = v39;
      return result;
    }

    if ((v98 + v41) >= v96)
    {
      break;
    }

    result = sub_22C50A6A4();
    v42 = *(v38 + 16);
    if (v41 == v42)
    {

      swift_unknownObjectRelease();
      sub_22C50A6FC();
      goto LABEL_25;
    }

    if (v41 >= v42)
    {
      goto LABEL_27;
    }

    v43 = *(v38 + 8 * v41 + 32);
    v44 = v105;
    v45 = *(v105 + 48);
    v46 = v93;
    sub_22C50B07C();
    *&v46[v45] = v43;
    sub_22C407C2C();
    v47 = v91;
    v100 = v41;
    *v90 = v41;
    sub_22C407C2C();
    v48 = v103;
    sub_22C407C2C();
    v49 = *v48;
    v50 = *(v48 + *(v47 + 48) + *(v44 + 48));
    v51 = v104;
    result = sub_22C50A6A4();
    *&v51[*(v44 + 48)] = v50;
    if (__OFADD__(v49, 1))
    {
      goto LABEL_28;
    }

    v99 = v39;
    v107 = v49 + 1;

    v52 = sub_22C90B47C();
    v54 = v53;

    v55 = sub_22C8124CC(1, v52, v54);
    v56 = v88;
    v57 = v89;
    v58 = v55;
    v60 = v59;
    sub_22C90306C();
    sub_22C50B118(&qword_27D9BC2F8, &qword_27D9BC170, &unk_22C912180);
    result = sub_22C90305C();
    if (v60 >> 14 < v58 >> 14)
    {
      goto LABEL_29;
    }

    v106 = v52;
    sub_22C90ACCC();
    v61 = v86;
    v62 = v101;
    sub_22C90309C();
    v63 = v79;
    if (v62)
    {

      v64 = *v63;
      v64(v56, v57);
      v65 = sub_22C3A5908(&qword_27D9BC178, &unk_22C914830);
      sub_22C36C640(v61, 1, 1, v65);
      v101 = 0;
    }

    else
    {
      v101 = 0;
      v64 = *v79;
      (*v79)(v56, v57);
    }

    v64(v102, v57);
    v66 = sub_22C3A5908(&qword_27D9BC178, &unk_22C914830);
    v67 = sub_22C370B74(v61, 1, v66);
    sub_22C36DD28(v61, &qword_27D9BC160, &unk_22C912170);
    if (v67 != 1)
    {
      v107 = 95;
      v108 = 0xE100000000000000;
      MEMORY[0x2318B7850](v106, v54);

      v54 = v108;
      v106 = v107;
    }

    v68 = v87;
    v69 = *(v85 + 64);
    v70 = v81;
    sub_22C3A7214();
    v71 = *&v70[*(v105 + 48)];
    sub_22C50A6FC();
    sub_22C407C2C();

    v72 = *(v83 + 20);
    v73 = sub_22C901FAC();
    (*(*(v73 - 8) + 16))(v68 + v69, &v70[v72], v73);
    sub_22C50A6FC();
    *v68 = v106;
    v68[1] = v54;
    v68[2] = v71;
    sub_22C36DD28(v103, &qword_27D9BD940, &qword_22C919B40);
    v39 = v99;
    v109 = v99;
    v75 = *(v99 + 16);
    v74 = *(v99 + 24);
    if (v75 >= v74 >> 1)
    {
      sub_22C3B735C((v74 > 1), v75 + 1, 1);
      v39 = v109;
    }

    *(v39 + 16) = v75 + 1;
    result = sub_22C407C2C();
    v41 = v100 + 1;
    v38 = v80;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_22C5024E4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB110, &qword_22C90D9B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v62 - v6);
  v8 = *a1;
  v9 = *(a2 + 16);
  if (v9)
  {
    v62 = *a1;
    v69 = MEMORY[0x277D84F90];
    sub_22C3B63D4(0, v9, 0);
    v8 = 0;
    v65 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = v69;
    v11 = *(v5 + 72);
    v63 = v9;
    v64 = v11;
    v67 = v7;
    while (1)
    {
      v66 = v10;
      sub_22C3A7214();
      v12 = swift_allocObject();
      *(v12 + 16) = 538976288;
      *(v12 + 24) = 0xE400000000000000;
      sub_22C591324();
      v14 = v13;
      v15 = *(v13 + 16);
      v16 = v15 + 1;
      if (v15 >= *(v13 + 24) >> 1)
      {
        sub_22C591324();
        v14 = v38;
      }

      *(v14 + 16) = v16;
      *(v14 + 8 * v15 + 32) = v12;
      v18 = *v7;
      v17 = v7[1];
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = v17;
      v20 = *(v14 + 24);
      v21 = v15 + 2;

      if ((v15 + 2) > (v20 >> 1))
      {
        sub_22C591324();
        v14 = v39;
      }

      *(v14 + 16) = v21;
      *(v14 + 8 * v16 + 32) = v19;
      v22 = swift_allocObject();
      *(v22 + 16) = 2112800;
      *(v22 + 24) = 0xE300000000000000;
      v23 = v15 + 3;
      v24 = v67;
      if ((v15 + 3) > *(v14 + 24) >> 1)
      {
        sub_22C591324();
        v14 = v40;
      }

      *(v14 + 16) = v23;
      *(v14 + 8 * v21 + 32) = v22;
      v25 = *(v24 + 16);
      v26 = v15 + 4;
      if ((v15 + 4) > *(v14 + 24) >> 1)
      {
        sub_22C591324();
        v14 = v41;
      }

      *(v14 + 16) = v26;
      *(v14 + 8 * v23 + 32) = v25;
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      *(v27 + 24) = 0xE000000000000000;
      v28 = *(v14 + 24);
      v29 = v15 + 5;

      if ((v15 + 5) > (v28 >> 1))
      {
        sub_22C591324();
        v14 = v42;
      }

      *(v14 + 16) = v29;
      *(v14 + 8 * v26 + 32) = v27;
      v68 = MEMORY[0x277D84F90];
      sub_22C90B01C();
      if (v29 < 1)
      {
        break;
      }

      v30 = 32;
      do
      {
        v31 = *(v14 + v30);
        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        *(swift_allocObject() + 16) = v31;

        sub_22C90AFEC();
        sub_22C90B02C();
        sub_22C90B03C();
        sub_22C90AFFC();
        v30 += 8;
        --v29;
      }

      while (v29);
      v32 = v68;
      v33 = swift_allocObject();
      *(v33 + 16) = v32;

      v34 = swift_allocObject();
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      v35 = swift_allocObject();
      *(v35 + 16) = v33;
      *(v34 + 16) = v35;
      v7 = v67;
      sub_22C36DD28(v67, &qword_27D9BB110, &qword_22C90D9B0);
      v10 = v66;
      v69 = v66;
      v37 = *(v66 + 16);
      v36 = *(v66 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_22C3B63D4(v36 > 1, v37 + 1, 1);
        v10 = v69;
      }

      ++v8;
      *(v10 + 16) = v37 + 1;
      *(v10 + 8 * v37 + 32) = v34 | 0x6000000000000000;
      if (v8 == v63)
      {
        v8 = v62;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_32:
    sub_22C591324();
    v44 = v57;
    v45 = *(v57 + 24) >> 1;
    goto LABEL_22;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_21:
  v15 = sub_22C47D738(10, 0xE100000000000000, v10);

  v14 = swift_allocObject();
  *(v14 + 16) = 0x207373616C63;
  *(v14 + 24) = 0xE600000000000000;
  sub_22C591324();
  v44 = v43;
  v29 = *(v43 + 16);
  v45 = *(v43 + 24) >> 1;
  v25 = v29 + 1;
  if (v45 <= v29)
  {
    goto LABEL_32;
  }

LABEL_22:
  *(v44 + 16) = v25;
  *(v44 + 8 * v29 + 32) = v14;
  v46 = v29 + 2;
  if (v45 < v29 + 2)
  {
    sub_22C591324();
    v44 = v58;
  }

  *(v44 + 16) = v46;
  *(v44 + 8 * v25 + 32) = v8;
  v47 = swift_allocObject();
  *(v47 + 16) = 0xA3A296D756E4528;
  *(v47 + 24) = 0xE800000000000000;
  v48 = *(v44 + 24);
  v49 = v29 + 3;

  if (v29 + 3 > (v48 >> 1))
  {
    sub_22C591324();
    v44 = v59;
  }

  *(v44 + 16) = v49;
  *(v44 + 8 * v46 + 32) = v47;
  v50 = v29 + 4;
  if (v29 + 4 > *(v44 + 24) >> 1)
  {
    sub_22C591324();
    v44 = v60;
  }

  *(v44 + 16) = v50;
  *(v44 + 8 * v49 + 32) = v15;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0xE000000000000000;
  v52 = *(v44 + 24);

  if (v29 + 5 > (v52 >> 1))
  {
    sub_22C591324();
    v44 = v61;
  }

  *(v44 + 16) = v29 + 5;
  *(v44 + 8 * v50 + 32) = v51;
  v53 = sub_22C3DB9B0(v44);

  v54 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  *(v54 + 16) = v55;
  return v54 | 0x6000000000000000;
}

void sub_22C502BF8(uint64_t a1@<X8>)
{
  sub_22C3766E0((v1 + 40), *(v1 + 64));
  sub_22C50B688();
  v3 = sub_22C37B988();
  v4(v3);
  sub_22C37B988();
  sub_22C5013EC();
  if (__dst[5])
  {
    sub_22C456CE4(__dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5]);
    *a1 = LOBYTE(__dst[0]);
    sub_22C37274C();
    *(a1 + 40) = 1;
  }

  else
  {
    __src[0] = __dst[0];
    __src[1] = __dst[1];
    __src[2] = __dst[2];
    __src[3] = __dst[3];
    __src[4] = __dst[4];
    __src[5] = __dst[0];
    __src[6] = __dst[1];
    __src[7] = __dst[2];
    __src[8] = __dst[3];
    __src[9] = __dst[4];
    sub_22C502D5C(__src, &__src[5], a1);
    memcpy(__dst, __src, 0x50uLL);
    sub_22C36DD28(__dst, &qword_27D9BD8F8, &qword_22C91A3B0);
    *(a1 + 40) = 0;
  }
}

uint64_t sub_22C502D5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F870;
  *(inited + 32) = v4;
  v11 = swift_allocObject();
  *(v11 + 16) = 5;
  *(v11 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v11 + 32) = v12;
  *(inited + 40) = v11 | 0xA000000000000000;

  sub_22C456C94(v5, v7, v8);

  v13 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  v14 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  result = swift_allocObject();
  *(result + 16) = v13;
  *(v14 + 16) = result;
  *a3 = v14 | 0x6000000000000000;
  a3[1] = v5;
  a3[2] = v7;
  a3[3] = v8;
  a3[4] = v9;
  return result;
}

void sub_22C502ED4()
{
  sub_22C36BA7C();
  v4 = v3;
  v5 = sub_22C3727F4();
  v6 = type metadata accessor for PromptTreeIdentifier(v5);
  sub_22C36985C();
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C50B530();
  v8 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  sub_22C369914(v8);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C37FDDC();
  sub_22C90915C();
  v10 = sub_22C90993C();
  sub_22C36D0A8(v2, 1, v10);
  if (v11)
  {
    sub_22C36DD28(v2, &qword_27D9BC390, &qword_22C912AC0);
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  else
  {
    v12 = sub_22C9098BC();
    v14 = v13;
    sub_22C36BBA8();
    v15 = sub_22C374C34();
    v16(v15);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  *(v17 + 24) = v14;
  *(v17 + 32) = 3;
  *v1 = v17;
  v18 = *MEMORY[0x277D1D7E8];
  v19 = sub_22C902D0C();
  sub_22C36985C();
  v21 = *(v20 + 104);
  v21(v1, v18, v19);
  sub_22C36C640(v1, 0, 3, v19);
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  swift_storeEnumTagMultiPayload();
  v22 = sub_22C901FAC();
  v23 = swift_allocBox();
  v25 = v24;
  v26 = type metadata accessor for DynamicEnumeration.Case(0);
  (*(*(v22 - 8) + 16))(v25, v4 + *(v26 + 20), v22);
  v27 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
  *(v1 + v27) = v23;
  v21((v1 + v27), *MEMORY[0x277D1D798], v19);
  sub_22C37335C();
  swift_storeEnumTagMultiPayload();
  sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  swift_allocBox();
  sub_22C381A40();
  sub_22C50A6A4();
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v28 = swift_allocBox();
  sub_22C486784();
  sub_22C36D29C();
  sub_22C50A6FC();
  sub_22C36D2A8();
  v29 = swift_allocObject();
  sub_22C37B2A4(v29, 3);
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  sub_22C369AEC();
  v30 = swift_allocObject();
  *(v30 + 16) = v28 | 0x2000000000000000;
  *(v29 + 32) = v30;
  sub_22C369AEC();
  v31 = swift_allocObject();
  *(v31 + 16) = v29 | 0xA000000000000000;
  *(v4 + v25) = v31;
  *v0 = v6 | 0x4000000000000000;
  *(v0 + 40) = 0;
  sub_22C37274C();
  sub_22C36CC48();
}

void sub_22C5031F8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22C503328();
  v4 = v20[0];
  v5 = v20[1];
  v6 = v20[2];
  v17 = v21;
  v18 = v22;
  v7 = v23;
  sub_22C3A7214();
  if (!v21)
  {
    sub_22C36DD28(v20, &qword_27D9BD890, &unk_22C919A80);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:

    v15 = sub_22C36D29C();
    sub_22C456CE4(v15, v16, v6, v17, v18, 0);
    goto LABEL_6;
  }

  v8 = sub_22C374168(v20, v21);
  sub_22C533C80(a1, *v8, v19);
  v9 = v19[0];
  v10 = v19[1];
  v11 = v19[2];
  v12 = v19[3];
  sub_22C36FF94(v20);
  if ((v7 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_22C36FC2C();
  sub_22C456D48(v13, v14, v11);
  v9 = v5;
  v10 = v6;
  v11 = v17;
  v12 = v18;
LABEL_6:
  *a2 = v4;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v7;
}

void sub_22C503328()
{
  sub_22C36BA7C();
  sub_22C3727F4();
  sub_22C9063DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  sub_22C50B3FC();
  sub_22C9094EC();
  sub_22C369824();
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C37FDDC();
  v5 = sub_22C36CA88();
  v6(v5);
  v7 = sub_22C3806B8();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D72C50])
  {
    v10 = sub_22C3806B8();
    v11(v10);
    v12 = *v2;
    sub_22C36A83C();
    v13 = swift_allocObject();
    v14 = v13;
    if (v12 == 22)
    {
      v56 = 0x6D6572757361654DLL;
      v57 = 0xEB00000000746E65;
      *(v13 + 16) = sub_22C90A49C();
      *(v14 + 24) = v15;
      *v0 = v14;
    }

    else
    {
      *(v13 + 16) = 0x6D6572757361654DLL;
      *(v13 + 24) = 0xEF74696E55746E65;
      sub_22C591324();
      v18 = v17;
      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_22C369AB0(v19);
        sub_22C591324();
        v18 = v47;
      }

      *(v18 + 16) = v20 + 1;
      *(v18 + 8 * v20 + 32) = v14;
      LOBYTE(v56) = v12;
      v21 = sub_22C90A1AC();
      v23 = v22;
      sub_22C36A83C();
      v24 = swift_allocObject();
      *(v24 + 16) = v21;
      *(v24 + 24) = v23;
      v25 = *(v18 + 16);
      v26 = *(v18 + 24);

      if (v25 >= v26 >> 1)
      {
        sub_22C375CCC();
        sub_22C591324();
        v18 = v48;
      }

      *(v18 + 16) = v25 + 1;
      *(v18 + 8 * v25 + 32) = v24;

      sub_22C36A83C();
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      *(v27 + 24) = 0xE000000000000000;
      v29 = *(v18 + 16);
      v28 = *(v18 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_22C369AB0(v28);
        sub_22C591324();
        v18 = v49;
      }

      *(v18 + 16) = v29 + 1;
      *(v18 + 8 * v29 + 32) = v27;
      v30 = sub_22C3DB9B0(v18);

      sub_22C369AEC();
      v31 = swift_allocObject();
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      sub_22C369AEC();
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      *(v31 + 16) = v32;
      *v0 = v31 | 0x6000000000000000;
    }

    goto LABEL_17;
  }

  if (v9 == *MEMORY[0x277D72CC8])
  {
    sub_22C36A83C();
    v1 = swift_allocObject();
    v16 = 1701736270;
LABEL_15:
    v33 = 0xE400000000000000;
LABEL_16:
    v56 = v16;
    v57 = v33;
    *(v1 + 16) = sub_22C90A49C();
    *(v1 + 24) = v34;
    *v0 = v1;
LABEL_17:
    sub_22C37274C();
    *(v0 + 40) = 0;
    goto LABEL_18;
  }

  if (v9 == *MEMORY[0x277D72CB0])
  {
    sub_22C36A83C();
    v1 = swift_allocObject();
    v16 = 1819242338;
    goto LABEL_15;
  }

  if (v9 == *MEMORY[0x277D72CA0])
  {
    sub_22C36A83C();
    v1 = swift_allocObject();
    v16 = 7630441;
LABEL_29:
    v33 = 0xE300000000000000;
    goto LABEL_16;
  }

  if (v9 == *MEMORY[0x277D72CD0] || v9 == *MEMORY[0x277D72CE8])
  {
    sub_22C36A83C();
    v1 = swift_allocObject();
    v16 = 0x74616F6C66;
    v33 = 0xE500000000000000;
    goto LABEL_16;
  }

  if (v9 == *MEMORY[0x277D72CE0])
  {
LABEL_28:
    sub_22C36A83C();
    v1 = swift_allocObject();
    v16 = 7500915;
    goto LABEL_29;
  }

  if (v9 == *MEMORY[0x277D72CB8])
  {
    sub_22C36A83C();
    v1 = swift_allocObject();
    v16 = 1702125892;
    goto LABEL_15;
  }

  if (v9 == *MEMORY[0x277D72C70])
  {
    sub_22C36A83C();
    v1 = swift_allocObject();
    v16 = 0x706D6F4365746144;
    v33 = 0xEE0073746E656E6FLL;
    goto LABEL_16;
  }

  if (v9 == *MEMORY[0x277D72CA8])
  {
    sub_22C36A83C();
    v1 = swift_allocObject();
    v16 = 5001813;
    goto LABEL_29;
  }

  if (v9 != *MEMORY[0x277D72C40])
  {
    if (v9 == *MEMORY[0x277D72C88] || v9 == *MEMORY[0x277D72C68])
    {
      goto LABEL_28;
    }

    if (v9 == *MEMORY[0x277D72C60])
    {
      sub_22C36A83C();
      v1 = swift_allocObject();
      v16 = 0x4D746E656D796150;
      v33 = 0xED0000646F687465;
      goto LABEL_16;
    }

    if (v9 == *MEMORY[0x277D72D00])
    {
      sub_22C36A83C();
      v1 = swift_allocObject();
      v16 = 0x6D6563616C504C43;
      v33 = 0xEB000000006B7261;
      goto LABEL_16;
    }

    if (v9 == *MEMORY[0x277D72CD8])
    {
      sub_22C36A83C();
      swift_allocObject();
      sub_22C50B674();
      v16 = v50 & 0xFFFFFFFFFFFFLL | 0x6550000000000000;
      v33 = 0xEC0000006E6F7372;
      goto LABEL_16;
    }

    if (v9 != *MEMORY[0x277D72CC0])
    {
      if (v9 == *MEMORY[0x277D72C98])
      {
        sub_22C36A83C();
        v52 = swift_allocObject();
        *(v52 + 16) = 0xD000000000000011;
        *(v52 + 24) = 0x800000022C931D20;
        *v0 = v52;
        goto LABEL_17;
      }

      if (v9 == *MEMORY[0x277D72C80])
      {
        goto LABEL_37;
      }

      if (v9 != *MEMORY[0x277D72C48])
      {
        v53 = sub_22C3806B8();
        v54(v53);
        goto LABEL_37;
      }
    }

    sub_22C36A83C();
    swift_allocObject();
    sub_22C50B674();
    v16 = v51 & 0xFFFFFFFFFFFFLL | 0x6946000000000000;
    v33 = 0xEA0000000000656CLL;
    goto LABEL_16;
  }

LABEL_37:
  sub_22C903F7C();
  sub_22C4BECC0(v1, &v56);
  v36 = sub_22C9063CC();
  v37 = sub_22C90AACC();
  if (sub_22C370048(v37))
  {
    v38 = sub_22C36FB44();
    v39 = sub_22C370060();
    v55[5] = v39;
    *v38 = 136315138;
    sub_22C4BECC0(&v56, v55);
    sub_22C90A1AC();
    sub_22C50B4BC();
    sub_22C4BF394(&v56);
    v40 = sub_22C3726C4();
    v43 = sub_22C36F9F4(v40, v41, v42);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_22C366000, v36, v37, "%s unknown: Unsupported type in action", v38, 0xCu);
    sub_22C36FF94(v39);
    sub_22C370510();
    sub_22C3699EC();
  }

  else
  {

    sub_22C4BF394(&v56);
  }

  v45 = sub_22C36BC58();
  v46(v45);
  sub_22C37D980();
LABEL_18:
  sub_22C36CC48();
}

void sub_22C503B44()
{
  sub_22C36BA7C();
  v1 = sub_22C90952C();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C377D60();
  v5 = sub_22C379FC8();
  sub_22C374168(v5, v6);
  sub_22C9090AC();
  v7 = sub_22C381274();
  v8(v7);
  (*(v3 + 8))(v0, v1);
  sub_22C38649C();
  sub_22C50B6B4();
  sub_22C36DD28(&v9, &qword_27D9BAB08, &qword_22C91A110);
  sub_22C36CC48();
}

uint64_t sub_22C503C58(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  sub_22C90915C();
  v5 = sub_22C90993C();
  if (sub_22C370B74(v4, 1, v5) == 1)
  {
    sub_22C36DD28(v4, &qword_27D9BC390, &qword_22C912AC0);
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0xE000000000000000;
    v7 = v6;
  }

  else
  {
    v8 = sub_22C9098BC();
    v10 = v9;
    (*(*(v5 - 8) + 8))(v4, v5);
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = 2;
    *(v12 + 24) = 1;
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v12 + 32) = v13;
    v14 = swift_allocObject();
    *(v14 + 16) = 3;
    *(v14 + 24) = 1;
    v15 = swift_allocObject();
    *(v15 + 16) = v12 | 0xA000000000000000;
    *(v14 + 32) = v15;
    v16 = swift_allocObject();
    *(v16 + 16) = 4;
    *(v16 + 24) = 1;
    v17 = swift_allocObject();
    *(v17 + 16) = v14 | 0xA000000000000000;
    *(v16 + 32) = v17;
    v7 = v16 | 0xA000000000000000;
  }

  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90D070;
  *(inited + 32) = a1;
  v19 = swift_allocObject();
  v27 = 40;
  v28 = 0xE100000000000000;

  *(v19 + 16) = sub_22C90A49C();
  *(v19 + 24) = v20;
  *(inited + 40) = v19;
  *(inited + 48) = v7;
  v21 = swift_allocObject();
  v27 = 41;
  v28 = 0xE100000000000000;
  *(v21 + 16) = sub_22C90A49C();
  *(v21 + 24) = v22;
  *(inited + 56) = v21;
  v23 = sub_22C3DB9B0(inited);

  swift_setDeallocating();
  sub_22C58FFB0();
  v24 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v24 + 16) = v25;
  return v24 | 0x6000000000000000;
}

void sub_22C503FD4()
{
  sub_22C36BA7C();
  v1 = sub_22C90952C();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C377D60();
  v5 = sub_22C379FC8();
  sub_22C374168(v5, v6);
  sub_22C9090AC();
  v7 = sub_22C381274();
  v8(v7);
  (*(v3 + 8))(v0, v1);
  sub_22C38649C();
  sub_22C50B6B4();
  sub_22C36DD28(&v9, &qword_27D9BAB08, &qword_22C91A110);
  sub_22C36CC48();
}

uint64_t sub_22C504100(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BC390, &qword_22C912AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  sub_22C9090DC();
  v5 = sub_22C90993C();
  if (sub_22C370B74(v4, 1, v5) == 1)
  {
    sub_22C36DD28(v4, &qword_27D9BC390, &qword_22C912AC0);
    v6 = swift_allocObject();
    *(v6 + 16) = 10536;
    *(v6 + 24) = 0xE200000000000000;
    v7 = sub_22C47D60C(a1, v6);
  }

  else
  {
    sub_22C9098BC();
    (*(*(v5 - 8) + 8))(v4, v5);
    v8 = sub_22C90A2AC();
    v10 = v9;

    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = 3;
    *(v12 + 24) = 1;
    sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v12 + 32) = v13;
    sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90D070;
    *(inited + 32) = a1;
    v15 = swift_allocObject();
    v23 = 40;
    v24 = 0xE100000000000000;

    *(v15 + 16) = sub_22C90A49C();
    *(v15 + 24) = v16;
    *(inited + 40) = v15;
    *(inited + 48) = v12 | 0xA000000000000000;
    v17 = swift_allocObject();
    v23 = 41;
    v24 = 0xE100000000000000;

    *(v17 + 16) = sub_22C90A49C();
    *(v17 + 24) = v18;
    *(inited + 56) = v17;
    v19 = sub_22C3DB9B0(inited);

    swift_setDeallocating();
    sub_22C58FFB0();
    v20 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v20 + 16) = v21;
    return v20 | 0x6000000000000000;
  }

  return v7;
}

void sub_22C50443C()
{
  sub_22C36BA7C();
  v219 = v1;
  v218 = v3;
  v216 = v4;
  v214 = v5;
  v217 = v6;
  v8 = v7;
  v220 = v9;
  v10 = sub_22C9063DC();
  v11 = sub_22C36A7A4(v10, &v222[4]);
  v206 = v12;
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v13);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v14);
  sub_22C36BA64();
  sub_22C3698F8(v15);
  v16 = sub_22C9091CC();
  v17 = sub_22C36A7A4(v16, &v222[1] + 8);
  v202 = v18;
  MEMORY[0x28223BE20](v17);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v19);
  sub_22C36BA64();
  sub_22C3698F8(v20);
  v21 = sub_22C90906C();
  v22 = sub_22C36A7A4(v21, &v224);
  v209 = v23;
  MEMORY[0x28223BE20](v22);
  sub_22C3698A8();
  sub_22C3698F8(v24);
  v25 = sub_22C90952C();
  v26 = sub_22C36A7A4(v25, v225);
  v212 = v27;
  MEMORY[0x28223BE20](v26);
  sub_22C3698A8();
  sub_22C3698F8(v28);
  v29 = sub_22C90931C();
  sub_22C369824();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v33);
  sub_22C387B64();
  v34 = sub_22C9093BC();
  sub_22C369824();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  sub_22C369838();
  sub_22C38B184();
  v38 = sub_22C9090BC();
  sub_22C369824();
  v40 = v39;
  MEMORY[0x28223BE20](v41);
  sub_22C369838();
  v44 = v43 - v42;
  v45 = *(v36 + 16);
  v200[2] = v8;
  v45(v0, v8, v34);
  v46 = sub_22C36BAFC();
  v48 = v47(v46);
  if (v48 == *MEMORY[0x277D72A58])
  {
    v49 = sub_22C36BAFC();
    v50(v49);
    v209 = *v0;
    v51 = swift_projectBox();
    v208 = *(v31 + 16);
    v208(v2, v51, v29);
    v52 = v219[8];
    v53 = v219[9];
    sub_22C3766E0(v219 + 5, v52);
    v54 = v216;
    (*(v53 + 8))(v222, v2, v217 & 1, v216, v218, v52, v53);
    v210 = *(&v222[0] + 1);
    v218 = *&v222[0];
    v56 = *(&v222[1] + 1);
    v55 = *&v222[1];
    v57 = *&v222[2];
    v217 = BYTE8(v222[2]);
    v58 = v215;
    v59 = sub_22C36FC2C();
    (v208)(v59);
    v60 = sub_22C50B578();
    v62 = v61(v60);
    v63 = v219;
    if (v62 == *MEMORY[0x277D72988] || v62 == *MEMORY[0x277D72978] || v62 == *MEMORY[0x277D729A8] || v62 == *MEMORY[0x277D729C0])
    {
      goto LABEL_6;
    }

    v118 = v62 == *MEMORY[0x277D729B8];
    v208 = v55;
    if (v118)
    {
      v97 = *(v31 + 8);
      v98 = sub_22C3726C4();
      v97(v98);
      v99 = sub_22C50B578();
      v97(v99);
      if (v217)
      {
        sub_22C38012C();

        v100 = v220;
        v101 = v210;
        *v220 = v218;
        *(v100 + 8) = v101;
        *(v100 + 16) = v208;
        *(v100 + 24) = v56;
        *(v100 + 32) = v57;
LABEL_46:
        *(v100 + 40) = 1;
        goto LABEL_47;
      }

      sub_22C36D2A8();
      v145 = swift_allocObject();
      sub_22C37B2A4(v145, 2);
      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      sub_22C369AEC();
      v146 = swift_allocObject();
      *(v146 + 16) = v218;
      *(v145 + 32) = v146;
      v147 = v210;
      v148 = v208;
      sub_22C456C94(v210, v208, v56);

      sub_22C50B478();
      sub_22C50B46C();
      sub_22C456CE4(v149, v150, v151, v152, v153, v154);
      v155 = v220;
      *v220 = v145 | 0xA000000000000000;
      *(v155 + 8) = v147;
      *(v155 + 16) = v148;
      *(v155 + 24) = v56;
      *(v155 + 32) = v57;
      *(v155 + 40) = 0;
    }

    else
    {
      v118 = v62 == *MEMORY[0x277D72990] || v62 == *MEMORY[0x277D72958];
      if (!v118 && v62 != *MEMORY[0x277D72980])
      {
        if (v62 == *MEMORY[0x277D72968])
        {
LABEL_49:
          v159 = *(v31 + 8);
          v160 = sub_22C3726C4();
          v159(v160);
          v161 = sub_22C50B578();
          v159(v161);
          v55 = v208;
          goto LABEL_7;
        }

        if (v62 != *MEMORY[0x277D72940])
        {
          if (v62 == *MEMORY[0x277D72950])
          {
            goto LABEL_49;
          }

          v162 = v62 == *MEMORY[0x277D72948] || v62 == *MEMORY[0x277D729D0];
          v163 = v162 || v62 == *MEMORY[0x277D729B0];
          v164 = v163 || v62 == *MEMORY[0x277D72998];
          if (!v164 && v62 != *MEMORY[0x277D72970])
          {
            if (v62 == *MEMORY[0x277D72960])
            {
LABEL_66:
              v166 = *(v31 + 8);
              v167 = sub_22C3726C4();
              v166(v167);
              v168 = sub_22C37EFC0();
              sub_22C456CE4(v168, v210, v55, v56, v57, v217);
              v169 = sub_22C50B578();
              v166(v169);
              sub_22C38012C();
LABEL_44:

              goto LABEL_45;
            }

            if (v62 != *MEMORY[0x277D72938])
            {
              if (v62 == *MEMORY[0x277D729A0])
              {
LABEL_6:
                v64 = sub_22C3726C4();
                v65(v64);
LABEL_7:
                sub_22C38012C();

                v66 = v220;
                v67 = v210;
                *v220 = v218;
                *(v66 + 8) = v67;
                *(v66 + 16) = v55;
                *(v66 + 24) = v56;
                *(v66 + 32) = v57;
                *(v66 + 40) = v217;
                goto LABEL_47;
              }

              goto LABEL_66;
            }
          }
        }
      }

      v207 = v2;
      v120 = *(v31 + 8);
      v215 = v29;
      v205 = v120;
      v120(v58, v29);
      v121 = v218;
      if ((v217 & 1) == 0)
      {
        *&v222[0] = MEMORY[0x277D84F90];
        v2 = v218;
        sub_22C50B46C();
        sub_22C456C30(v122, v123, v124, v125, v126, v127);
        v128 = sub_22C441720();
        sub_22C456C94(v128, v129, v56);
        sub_22C496A94();
        v131 = v130;

        if (v131)
        {

          sub_22C50B4E8();
          sub_22C50B46C();
          sub_22C456CE4(v132, v133, v134, v135, v136, v137);
          v121 = v218;
        }

        else
        {
          sub_22C36D2A8();
          v170 = swift_allocObject();
          sub_22C37B2A4(v170, 2);
          sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
          sub_22C369AEC();
          v171 = swift_allocObject();
          *(v171 + 16) = v218;
          *(v170 + 32) = v171;

          sub_22C50B4E8();
          sub_22C50B46C();
          sub_22C456CE4(v172, v173, v174, v175, v176, v177);
          v121 = v170 | 0xA000000000000000;
        }
      }

      v206 = v57;
      v178 = v56;
      v179 = v63[3];
      v180 = v63[4];
      sub_22C374168(v63, v179);
      sub_22C37443C();
      sub_22C90935C();
      (*(v180 + 24))(&v223, v2, v214, v54, v179, v180);
      sub_22C36FB04();
      v181(v2, v213);
      v182 = v223;
      if (v225[8])
      {
        sub_22C50B5DC();
LABEL_72:
        v187 = sub_22C37EFC0();
        sub_22C456CE4(v187, v2, v208, v178, v206, v217);
        v188 = sub_22C383CCC();
        sub_22C456CE4(v188, v189, v208, v178, v206, v217);
        v190 = sub_22C50B53C();
        v191(v190);
        sub_22C38012C();

        v100 = v220;
        *v220 = v182;
        *(v100 + 8) = 0u;
        *(v100 + 24) = 0u;
        goto LABEL_46;
      }

      sub_22C50B5DC();
      if (v217)
      {
        sub_22C456CE4(v182, v183, v184, v185, v186, 0);
        v217 = 1;
        LOBYTE(v182) = v121;
        goto LABEL_72;
      }

      *&v221[0] = v182;
      *(&v221[0] + 1) = v183;
      *&v221[1] = v184;
      *(&v221[1] + 1) = v185;
      *&v221[2] = v186;
      *(&v221[2] + 1) = v121;
      *&v221[3] = v2;
      *(&v221[3] + 1) = v208;
      *&v221[4] = v178;
      *(&v221[4] + 1) = v206;
      sub_22C5056B8(v221, &v221[2] + 1, v220);
      sub_22C37EFC0();
      sub_22C50B46C();
      sub_22C456CE4(v192, v193, v194, v195, v196, v197);
      memcpy(v222, v221, sizeof(v222));
      sub_22C36DD28(v222, &qword_27D9BD8F8, &qword_22C91A3B0);
      v198 = sub_22C50B53C();
      v199(v198);
      *(v220 + 40) = 0;
    }

    sub_22C38012C();
LABEL_14:

    goto LABEL_47;
  }

  v68 = v217;
  v69 = v218;
  v70 = v219;
  if (v48 == *MEMORY[0x277D729E8])
  {
    v71 = sub_22C36BAFC();
    v72(v71);
    v73 = sub_22C50B6D4();
    (*(v40 + 16))(v44, v73, v38);

    v74 = v219[3];
    v75 = v219[4];
    sub_22C374168(v219, v74);
    sub_22C9090AC();
    (*(v75 + 24))(v221, v211, v214, v216, v74, v75);
    sub_22C36FB04();
    v77 = v76(v211, v213);
    v222[0] = v221[0];
    v222[1] = v221[1];
    *(&v222[1] + 9) = *(&v221[1] + 9);
    MEMORY[0x28223BE20](v77);
    v200[-2] = v44;
    sub_22C54DBA0(sub_22C50B008, v220);
    sub_22C36DD28(v222, &qword_27D9BAB08, &qword_22C91A110);
    v78 = sub_22C50B648();
    v79(v78);
    goto LABEL_47;
  }

  if (v48 == *MEMORY[0x277D72A38])
  {
LABEL_11:
    v80 = sub_22C36BAFC();
    v81(v80);
LABEL_45:
    v100 = v220;
    *(v220 + 32) = 0;
    *v100 = 0u;
    *(v100 + 16) = 0u;
    goto LABEL_46;
  }

  if (v48 == *MEMORY[0x277D729E0])
  {
    v82 = sub_22C36BAFC();
    v83(v82);
    v84 = sub_22C50B6D4();
    v85 = v209;
    v86 = v208;
    v87 = v210;
    (*(v209 + 16))(v208, v84, v210);
    v88 = sub_22C90905C();
    MEMORY[0x28223BE20](v88);
    v200[-6] = v70;
    LOBYTE(v200[-5]) = v68 & 1;
    v89 = v216;
    v200[-4] = v214;
    v200[-3] = v89;
    v200[-2] = v69;
    v90 = sub_22C3B2C0C(sub_22C50AFCC, &v200[-8], v88);

    sub_22C47F330(v90, v220);

    (*(v85 + 8))(v86, v87);
    goto LABEL_14;
  }

  if (v48 == *MEMORY[0x277D72A30])
  {
    goto LABEL_16;
  }

  if (v48 == *MEMORY[0x277D72A40])
  {
    v102 = sub_22C36BAFC();
    v103(v102);
    v104 = sub_22C50B6D4();
    v105 = v202;
    v106 = *(v202 + 16);
    v107 = v203;
    v106(v204, v104, v203);
    sub_22C903F7C();
    v108 = v201;
    v106(v201, v204, v203);
    v109 = sub_22C9063CC();
    v110 = sub_22C90AADC();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = sub_22C383050();
      *&v222[0] = swift_slowAlloc();
      *v111 = 136315394;
      *(v111 + 4) = sub_22C50B3C4("reference(_:detailLevel:direction:renderingState:identifierResolvedAST:)");
      *(v111 + 12) = 2080;
      sub_22C9091AC();
      v112 = *(v105 + 8);
      v112(v108, v107);
      v113 = sub_22C379FC8();
      v116 = sub_22C36F9F4(v113, v114, v115);

      *(v111 + 14) = v116;
      _os_log_impl(&dword_22C366000, v109, v110, "[%s] ❗️Could not render deferred value: %s. Skipping.", v111, 0x16u);
      swift_arrayDestroy();
      sub_22C370510();
      sub_22C3699EC();

      sub_22C36FB04();
      sub_22C50B668();
      v117();
      v112(v204, v107);
    }

    else
    {

      v156 = *(v202 + 8);
      v157 = sub_22C3726C4();
      v156(v157);
      sub_22C36FB04();
      sub_22C50B668();
      v158();
      (v156)(v204, v203);
    }

    goto LABEL_44;
  }

  if (v48 == *MEMORY[0x277D729F8])
  {
    goto LABEL_11;
  }

  if (v48 == *MEMORY[0x277D72A60])
  {
LABEL_16:
    v91 = sub_22C36BAFC();
    v92(v91);
    sub_22C903F7C();
    v93 = sub_22C9063CC();
    v94 = sub_22C90AACC();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = sub_22C36FB44();
      *&v222[0] = sub_22C370060();
      *v95 = 136315138;
      *(v95 + 4) = sub_22C50B3C4("reference(_:detailLevel:direction:renderingState:identifierResolvedAST:)");
      _os_log_impl(&dword_22C366000, v93, v94, "[%s] Unsupported type: skipping event", v95, 0xCu);
      sub_22C38652C();
      sub_22C3699EC();
    }

    sub_22C36FB04();
    sub_22C50B668();
    v96();
    goto LABEL_45;
  }

  sub_22C37443C();
  sub_22C903F7C();
  v138 = sub_22C9063CC();
  v139 = sub_22C90AACC();
  if (sub_22C370048(v139))
  {
    v140 = sub_22C36FB44();
    v141 = sub_22C370060();
    *&v222[0] = v141;
    *v140 = 136315138;
    *(v140 + 4) = sub_22C50B3C4("reference(_:detailLevel:direction:renderingState:identifierResolvedAST:)");
    _os_log_impl(&dword_22C366000, v138, v139, "[%s] Unsupported type: skipping event", v140, 0xCu);
    sub_22C36FF94(v141);
    sub_22C3699EC();
    sub_22C370510();
  }

  sub_22C36FB04();
  sub_22C50B668();
  v142();
  sub_22C50B300();
  v143 = sub_22C36BAFC();
  v144(v143);
LABEL_47:
  sub_22C36CC48();
}